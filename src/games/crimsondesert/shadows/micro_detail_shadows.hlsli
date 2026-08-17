// -------------------------Depth Bias Micro Detail Shadows --------------------
//
// Bend Studio style SSS
//
// Uses a continuous depth bias instead of binary hit/miss like in base shader
//
//   - Depth deltas within a configurable thickness window produce
//     graduated shadows
//
//   - Deltas outside the window are ignored
//
//   - Perspective correction depth comparison is done in
//     linearised space so thickness is consistent regardless of distance
//
// v2: 32 steps, extended range (120 units), perspective corrected depth
// -----------------------------------------------------------------------------
// Contact Micro Shadows: shared helper used by shadow remaps only through the
// quality gate below, so Off keeps the native shader path.

#ifndef CRIMSONDESERT_MICRO_DETAIL_SHADOWS_HLSLI
#define CRIMSONDESERT_MICRO_DETAIL_SHADOWS_HLSLI

// shared implementation of the "Contact Micro Shadows" feature: a 32-step screen-space depth
// re-march along the light direction (Bend Studio-style SSS) that produces the fine sub-pixel
// contact darkening which the SceneShadowTiled replacements composite into their contact-shadow
// term. Compared to the game's own binary hit/miss contact test it uses a perspective-corrected
// continuous thickness window with graduated occlusion, self-shadow rejection, stencil-id
// exclusion (sky/VFX/cloth/velvet, table below), foliage thickness/occlusion boosts, and a
// distance fade. Consumers: included only by the seven SceneShadowTiled replacement shaders
// (SceneShadowTiled_0x09B7D915, _0x2A3098C2, _0x41FB10C2, _0x5419027B, _0x5F9DC9F3,
// _0x75CAD623 and SceneShadowTiledNight_0x004AE734); each call site passes its own tuning
// constants from shared.h. Gate: internally gated at the top of ApplyContactMicroDetailShadow -
// when MICRO_SHADOW_QUALITY <= MICRO_SHADOW_QUALITY_OFF or detailStrength <= 0 the helper
// returns the incoming contact shadow unchanged, so setting the "Contact Micro Shadows" UI
// option to Off preserves the native shader result (parity axis: vanilla-when-Off). The shipped
// default is MICRO_SHADOW_QUALITY_BALANCED (addon.cpp ContactShadowQuality .default_value), so
// the march IS active out of the box.
// The end marker for this block sits at the bottom of the file: everything in between is
// injected code attributed to this patch family.

// Stencil IDs that must NOT receive micro detail contact shadows
//
//  2        = Sky/background geometry
//  3        = Unknown (vanilla always zeroes contact shadow for this)
//  6        = Waterfalls / minor VFX (translucent, ray march hits geometry behind)
//  7        = SSS/VFX (vanilla reduces 6-7 to 1% shadow via _2888 & -2 == 6)
//  10       = Sky
//  21, 22   = Special effect materials (vanilla zeroes cross-stencil contact for these)
//  33, 54   = Cloth / velvet (vanilla reduces to 1% shadow)
//
// Material id caution: the game renumbered this table in 1.16.00. Ids at and above the old 38
// shifted DOWN by one, so cloth/velvet moved 55 -> 54 and the neighbouring class moved 54 -> 53.
// Ids at or below 33 were NOT affected, and 66 / 106 / 107 / 18 / 26 and the 11..19 foliage band
// were likewise unchanged. Vanilla's own cross-stencil cloth test is the reference:
//   1.15  ((_a == 33) && (_b == 33)) || (!(_a == 33) && ((_a == 55) && (_b == 55)))
//   1.16  ((_a == 33) && (_b == 33)) || (!(_a == 33) && ((_a == 54) && (_b == 54)))
// Re-check these constants against that expression on any future game update; a stale id here
// silently excludes the wrong material class instead of failing.

static const int CONTACT_MICRO_STEPS = 32;

float ApplyContactMicroDetailShadow(
    float contactShadow,
    float2 pixel,
    float linearDepth,
    int stencil,
    float3 lightDir,
    float3 worldPos,
    float detailStrength,
    float fadeSlope,
    float fadeOffset,
    float rangeNear,
    float rangeFar,
    float thicknessMultiplier,
    float occlusionScale,
    float selfRejectPixels,
    float selfFadePixels,
    float foliageThicknessBoost,
    float foliageOcclusionBoost) {
  if (MICRO_SHADOW_QUALITY <= MICRO_SHADOW_QUALITY_OFF
      || detailStrength <= 0.f
      || stencil == 2
      || stencil == 3
      || stencil == 6
      || stencil == 7
      || stencil == 10
      || stencil == 21
      || stencil == 22
      || stencil == 33
      || stencil == 54) {
    return contactShadow;
  }

  float _microDistFade = saturate(mad(fadeSlope, linearDepth, fadeOffset));

  [branch]
  if (_microDistFade <= 0.01f) {
    return contactShadow;
  }

  float _microRange = lerp(rangeNear, rangeFar, saturate(linearDepth / 100.0f));
  float _microStep = _microRange / (float)CONTACT_MICRO_STEPS;

  // Perspective corrected thickness.
  float _microWorldThick = _microStep * thicknessMultiplier;
  _microWorldThick = max(_microWorldThick, lerp(0.005f, 0.04f, saturate(linearDepth / 80.0f)));

  // Keep the 1.08-style march deterministic under RR; temporal jitter can make
  // reconstructed shadows look camera-attached in 1.09.
  float _microJitter = 0.0f;

  // Slightly different push constants (_shadowAOParams.z) for both SceneShadow
  // shaders plus micro shadow ray marching itself caused square tile mismatch
  // at dawn/dusk; sampling from the current pixel center avoids that drift.
  float2 _microOriginUV = float2(
      (pixel.x + 0.5f) * _bufferSizeAndInvSize.z,
      (pixel.y + 0.5f) * _bufferSizeAndInvSize.w);

  float _microShadow = 1.0f;

  // Flicker-robust evidence weighting (gated by the Micro Shadow Flicker Fix setting; with it off
  // every quantity below is dead and the march is bit-identical to the ungated code).
  //
  // DLSS jitter shifts the rasterized depth field by a sub-pixel amount every frame, and a march
  // sample whose classification flips with that shift flips this pixel's whole shadow through the
  // min() accumulation. Two measured discriminators bound that amplitude without any tuned
  // threshold. First, each hit's contribution is weighted by its classification margin divided by
  // its jitter-uncertainty band - the measured along-ray depth gradient per screen pixel times one
  // texel of jitter envelope - so a sample is trusted exactly in proportion to how far its
  // classification sits from what a sub-pixel jitter step can overturn. The envelope is a constant
  // while the jitter sequence is live, never the instantaneous frame delta: the delta's magnitude
  // varies with the jitter schedule, and a weight built from it would oscillate on samples whose
  // classification is perfectly stable. On stable flat content the band is ~0 and the weight is
  // exactly 1; on a texel that swaps surfaces between frames the gradient is gap-scale and the
  // weight collapses in both frames. Second, a hit not corroborated by the previous step
  // contributes at half amplitude: a real occluder spans consecutive steps, isolated single-step
  // evidence is the signature of sub-pixel alternation.
  float _microPrevLinScene = 0.0f;
  float2 _microPrevUV = _microOriginUV;
  float _microPrevValid = 0.0f;
  float _microPrevHit = 0.0f;
  float _microJitterPx = (MICRO_SHADOW_FLICKER_FIX != 0.f
                          && length(_temporalAAJitter.xy - _temporalAAJitter.zw) > 0.0f)
                             ? 1.0f
                             : 0.0f;

  [loop]
  for (int _mi = 0; _mi < CONTACT_MICRO_STEPS; _mi++) {
    float _mt = mad((float)_mi + 0.5f, _microStep, _microJitter * _microStep);
    float3 _msp = mad(lightDir, _mt, worldPos);

    float _mcx = mad(_viewProjRelative[0].z, _msp.z,
                  mad(_viewProjRelative[0].y, _msp.y,
                      _viewProjRelative[0].x * _msp.x)) + _viewProjRelative[0].w;
    float _mcy = mad(_viewProjRelative[1].z, _msp.z,
                  mad(_viewProjRelative[1].y, _msp.y,
                      _viewProjRelative[1].x * _msp.x)) + _viewProjRelative[1].w;
    float _mcz = mad(_viewProjRelative[2].z, _msp.z,
                  mad(_viewProjRelative[2].y, _msp.y,
                      _viewProjRelative[2].x * _msp.x)) + _viewProjRelative[2].w;
    float _mcw = mad(_viewProjRelative[3].z, _msp.z,
                  mad(_viewProjRelative[3].y, _msp.y,
                      _viewProjRelative[3].x * _msp.x)) + _viewProjRelative[3].w;

    if (_mcw <= 0.0f) {
      _microPrevHit = 0.0f;
      _microPrevValid = 0.0f;
      continue;
    }

    float _rcpW = rcp(_mcw);
    float2 _muv = float2(mad(_mcx, _rcpW, 1.0f) * 0.5f,
                         mad(-_mcy, _rcpW, 1.0f) * 0.5f);
    if (any(_muv < 0.0f) || any(_muv > 1.0f)) {
      _microPrevHit = 0.0f;
      _microPrevValid = 0.0f;
      continue;
    }

    // Self shadow rejection.
    float2 _mPixelDist = abs(_muv - _microOriginUV) * _bufferSizeAndInvSize.xy;
    float _microSelfDist = max(_mPixelDist.x, _mPixelDist.y);
    float _microSelfFade = saturate((_microSelfDist - selfRejectPixels) / selfFadePixels);
    _microSelfFade = _microSelfFade * _microSelfFade * (3.0f - (2.0f * _microSelfFade));
    if (_microSelfFade <= 0.0f) {
      _microPrevHit = 0.0f;
      _microPrevValid = 0.0f;
      continue;
    }

    float _mRayDepth = _mcz * _rcpW;
    // The bounds test above rejects UVs above 1 but admits exactly 1, which scales to the pixel index
    // one past the last valid texel. A Load at that index returns zero rather than failing, and a zero
    // depth/stencil pair is indistinguishable here from a real sample, so an edge ray could register a
    // phantom occluder. Clamping to the last texel gives the same result a clamp-addressed sampler
    // would and leaves every in-range coordinate untouched.
    int2 _mpx = min(int2((int)(_muv.x * _bufferSizeAndInvSize.x),
                         (int)(_muv.y * _bufferSizeAndInvSize.y)),
                    int2((int)_bufferSizeAndInvSize.x - 1, (int)_bufferSizeAndInvSize.y - 1));
    uint _mdr = __3__36__0__0__g_depthStencil.Load(int3(_mpx, 0)).x;
    uint _mst = (_mdr >> 24) & 127u;
    if (_mst == 2u
        || _mst == 3u
        || _mst == 6u
        || _mst == 7u
        || _mst == 10u
        || _mst == 21u
        || _mst == 22u
        || _mst == 33u
        || _mst == 54u) {
      _microPrevHit = 0.0f;
      _microPrevValid = 0.0f;
      continue;
    }

    float _microFoliageSample = (((_mst >= 11u && _mst <= 19u) || _mst == 66u || _mst == 107u) ? 1.0f : 0.0f);
    float _microSampleThick = _microWorldThick * lerp(1.0f, foliageThicknessBoost, _microFoliageSample);
    float _microSampleOcclusionScale = occlusionScale * lerp(1.0f, foliageOcclusionBoost, _microFoliageSample);

    float _msd = float(_mdr & 0xFFFFFF) * 5.960465188081798e-08f;

    if (_msd < 1e-7f || _msd >= 1.0f) {
      _microPrevHit = 0.0f;
      _microPrevValid = 0.0f;
      continue;
    }

    // Perspective corrected depth comparison.
    float _mLinScene = _nearFarProj.x / max(1e-7f, _msd);
    float _mLinRay = _nearFarProj.x / max(1e-7f, _mRayDepth);
    float _mLinDelta = _mLinRay - _mLinScene;

    // Jitter-uncertainty band of this sample: the measured along-ray depth gradient per screen
    // pixel times one texel of jitter envelope while jitter is live. Zero with the fix off, with TAA
    // off, or at the first comparable sample of the ray.
    float _mSamplePixDist = length((_muv - _microPrevUV) * _bufferSizeAndInvSize.xy);
    float _mGradPx = (_microPrevValid > 0.0f)
                         ? abs(_mLinScene - _microPrevLinScene) / max(_mSamplePixDist, 1.0f)
                         : 0.0f;
    float _mBand = _mGradPx * _microJitterPx;

    // Scene must be closer than ray (positive delta = scene in front of ray)
    // and within the thickness window.
    if (_mLinDelta >= 0.0f && _mLinDelta <= _microSampleThick) {
      float _mocc = saturate(_mLinDelta / _microSampleThick * _microSampleOcclusionScale) * _microSelfFade;
      if (MICRO_SHADOW_FLICKER_FIX != 0.f) {
        // Trust the hit in proportion to how far its classification sits from what a sub-pixel
        // jitter step can overturn, and halve isolated single-step evidence. Both act only while
        // the jitter sequence is live; without jitter the alternation they bound cannot occur.
        float _mMargin = min(_mLinDelta, _microSampleThick - _mLinDelta);
        float _mW = (_mBand > 0.0f) ? saturate(_mMargin / _mBand) : 1.0f;
        _mocc *= _mW * lerp((_microJitterPx > 0.0f) ? 0.5f : 1.0f, 1.0f, _microPrevHit);
      }
      _microShadow = min(_microShadow, 1.0f - _mocc);
      _microPrevHit = 1.0f;
    } else {
      _microPrevHit = 0.0f;
    }

    _microPrevLinScene = _mLinScene;
    _microPrevUV = _muv;
    _microPrevValid = 1.0f;
  }

  float _microResult = lerp(1.0f, _microShadow, saturate(_microDistFade * detailStrength));
  return min(contactShadow, _microResult);
}

#endif
