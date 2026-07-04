struct PostProcessOutlineStruct {
  float _outlineColorR;
  float _outlineColorG;
  float _outlineColorB;
};


Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t45, space36);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b16, space35) {
  float4 _time : packoffset(c000.x);
  float4 _timeNoScale : packoffset(c001.x);
  uint4 _frameNumber : packoffset(c002.x);
  float4 _screenSizeAndInvSize : packoffset(c003.x);
  float4 _bufferSizeAndInvSize : packoffset(c004.x);
  float4 _hiZUVScaleAndInvScale : packoffset(c005.x);
  float4 _resolutionScale : packoffset(c006.x);
  float4 _temporalReprojectionParams : packoffset(c007.x);
  float4 _viewPos : packoffset(c008.x);
  float4 _viewDir : packoffset(c009.x);
  float4 _viewProj[4] : packoffset(c010.x);
  float4 _viewProjNoJitter[4] : packoffset(c014.x);
  float4 _viewProjRelative[4] : packoffset(c018.x);
  float4 _viewProjRelativeNoJitter[4] : packoffset(c022.x);
  float4 _invViewProj[4] : packoffset(c026.x);
  float4 _invViewProjRelative[4] : packoffset(c030.x);
  float4 _invViewProjRelativeNoJitter[4] : packoffset(c034.x);
  float4 _viewProjRelativeOrtho[4] : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  float4 _view[4] : packoffset(c062.x);
  float4 _viewRelative[4] : packoffset(c066.x);
  float4 _viewRelativePrev[4] : packoffset(c070.x);
  float4 _proj[4] : packoffset(c074.x);
  float4 _projNoJitter[4] : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  float4 _viewProjNoJitterPrev[4] : packoffset(c083.x);
  float4 _viewProjRelativePrev[4] : packoffset(c087.x);
  float4 _viewProjRelativeNoJitterPrev[4] : packoffset(c091.x);
  float4 _invViewProjPrev[4] : packoffset(c095.x);
  float4 _invViewProjRelativePrev[4] : packoffset(c099.x);
  float4 _projToPrevProj[4] : packoffset(c103.x);
  float4 _projToPrevProjNoTranslation[4] : packoffset(c107.x);
  float4 _viewProjectionTexScale[4] : packoffset(c111.x);
  float4 _temporalAAJitter : packoffset(c115.x);
  float4 _temporalAAJitterParams : packoffset(c116.x);
  float4 _frustumPlanes[6] : packoffset(c117.x);
  float4 _frustumPlanesPrev[6] : packoffset(c123.x);
  float4 _frustumCornerDirs[4] : packoffset(c129.x);
  float4 _screenPercentage : packoffset(c133.x);
  float4 _nearFarProj : packoffset(c134.x);
  float4 _renderingOriginPos : packoffset(c135.x);
  float4 _renderingOriginPosPrev : packoffset(c136.x);
  float4 _lodMaskRenderRate : packoffset(c137.x);
  float4 _terrainNormalParams : packoffset(c138.x);
  int4 _hiZMapInfo : packoffset(c139.x);
  int4 _hiZMapInfoCurrent : packoffset(c140.x);
  float4 _treeParams : packoffset(c141.x);
  uint4 _clusterSize : packoffset(c142.x);
  uint4 _globalLightParams : packoffset(c143.x);
  float4 _bevelParams : packoffset(c144.x);
  float4 _variableRateShadingParams : packoffset(c145.x);
  float4 _cavityParams : packoffset(c146.x);
  float4 _customRenderPassSizeInvSize : packoffset(c147.x);
  uint4 _impostorParams : packoffset(c148.x);
  float4 _clusterDecalSizeAndInvSize : packoffset(c149.x);
  uint4 _globalWindParams : packoffset(c150.x);
  float4 _windFluidVolumeParams : packoffset(c151.x);
  float4 _windFluidTextureParams : packoffset(c152.x);
  float4 _raytracingAccelerationStructureOrigin : packoffset(c153.x);
  float4 _debugBaseColor : packoffset(c154.x);
  float4 _debugNormal : packoffset(c155.x);
  float4 _debugMaterial : packoffset(c156.x);
  float4 _debugMultiplier : packoffset(c157.x);
  uint2 _debugBaseColor16 : packoffset(c158.x);
  uint2 _debugNormal16 : packoffset(c158.z);
  uint2 _debugMaterial16 : packoffset(c159.x);
  uint2 _debugMultiplier16 : packoffset(c159.z);
  float4 _debugCursorWorldPos : packoffset(c160.x);
  uint4 _debugRenderToggle01 : packoffset(c161.x);
  uint4 _debugTreeShapeVariation : packoffset(c162.x);
  float4 _positionBasedDynamicsParameter : packoffset(c163.x);
  float _effectiveMetallicForVelvet : packoffset(c164.x);
  float _debugCharacterSnowRate : packoffset(c164.y);
  uint _systemRandomSeed : packoffset(c164.z);
  uint _skinnedMeshDebugFlag : packoffset(c164.w);
  float4 _viewPosShifted : packoffset(c165.x);
  float4 _viewPosShiftedPrev : packoffset(c166.x);
  float4 _viewTileRelativePos : packoffset(c167.x);
  float4 _viewTileRelativePosPrev : packoffset(c168.x);
  int2 _viewTileIndex : packoffset(c169.x);
  int2 _viewTileIndexPrev : packoffset(c169.z);
  float4 _worldVolume : packoffset(c170.x);
  float3 _diffViewPosAccurate : packoffset(c171.x);
  uint _isPhotosensitiveMode_isAllolwBlood : packoffset(c171.w);
  float _earthRadius : packoffset(c172.x);
  float3 _sceneConstantDummy : packoffset(c172.y);
};

#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"



#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
#endif

#if 0 // Provided by tonemap.hlsli
cbuffer __3__1__0__0__GlobalPushConstants : register(b0, space1) {
  float4 _postProcessParams : packoffset(c000.x);
  float4 _postProcessParams1 : packoffset(c001.x);
  float4 _toneMapParams0 : packoffset(c002.x);
  float4 _toneMapParams1 : packoffset(c003.x);
  float4 _colorGradingParams : packoffset(c004.x);
  float4 _colorCorrectionParams : packoffset(c005.x);
  float4 _localToneMappingParams : packoffset(c006.x);
  float4 _etcParams : packoffset(c007.x);
  float4 _userImageAdjust : packoffset(c008.x);
  float4 _slopeParams : packoffset(c009.x);
  float4 _offsetParams : packoffset(c010.x);
  float4 _powerParams : packoffset(c011.x);
  int _nightToneParm : packoffset(c012.x);
  int3 _padding : packoffset(c012.y);
};
#endif

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
#endif

struct BindlessParameters_PostProcessOutline {
  PostProcessOutlineStruct BindlessParameters_PostProcessOutline;
};

typedef BindlessParameters_PostProcessOutline BindlessParameters_PostProcessOutline_t;
ConstantBuffer<BindlessParameters_PostProcessOutline_t> BindlessParameters_PostProcessOutline[] : register(b0, space100);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  uint2 _29;
  float _77;
  float _78;
  float _79;
  float _93;
  float _298;
  float _299;
  float _300;
  float _393;
  float _394;
  float _395;
  float _449;
  float _450;
  float _451;
  float _470;
  float _471;
  float _472;
  float _502;
  float _503;
  float _504;
  float _518;
  float _519;
  float _520;
  int _49;
  float _57;
  int _58;
  float _66;
  int _67;
  float _75;
  uint _80;
  bool _96;
  float _102;
  float _151;
  float _152;
  float _153;
  float _155;
  float _162;
  float _163;
  float _164;
  float _183;
  float _184;
  float _185;
  float _186;
  float _187;
  float _188;
  float _189;
  float _190;
  float _191;
  float _237;
  float _238;
  float _239;
  float _240;
  float _241;
  float _242;
  float _243;
  float _260;
  float _261;
  float _262;
  float _263;
  float _269;
  float _272;
  float _279;
  float _280;
  float _281;
  float _310;
  float _335;
  float _336;
  float _337;
  float _356;
  float _357;
  float _358;
  float _364;
  float _368;
  float _369;
  float _370;
  float _371;
  float _376;
  float _401;
  float _405;
  float _406;
  float _407;
  float _408;
  float _438;
  float _460;
  float _461;
  float _465;
  float _509;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_29.x, _29.y);
  if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_29.x)))))) + 0.5f) * float((int)(int(_bufferSizeAndInvSize.x * TEXCOORD.x)))), int((float((int)(int(float((int)((int)(_29.y)))))) + 0.5f) * float((int)(int(_bufferSizeAndInvSize.y * TEXCOORD.y)))), 0)))).x) & 255) == 30) {
    _49 = WaveReadLaneFirst(_materialIndex);
    _57 = WaveReadLaneFirst(BindlessParameters_PostProcessOutline[((int)((uint)(select(((uint)_49 < (uint)170000), _49, 0)) + 0u))].BindlessParameters_PostProcessOutline._outlineColorR);
    _58 = WaveReadLaneFirst(_materialIndex);
    _66 = WaveReadLaneFirst(BindlessParameters_PostProcessOutline[((int)((uint)(select(((uint)_58 < (uint)170000), _58, 0)) + 0u))].BindlessParameters_PostProcessOutline._outlineColorB);
    _67 = WaveReadLaneFirst(_materialIndex);
    _75 = WaveReadLaneFirst(BindlessParameters_PostProcessOutline[((int)((uint)(select(((uint)_67 < (uint)170000), _67, 0)) + 0u))].BindlessParameters_PostProcessOutline._outlineColorG);
    _77 = _57;
    _78 = _66;
    _79 = _75;
  } else {
    _77 = 0.0f;
    _78 = 0.0f;
    _79 = 0.0f;
  }
  _80 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _93 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _80, 0)))).x) & 127)))) + 0.5f);
  } else {
    _93 = 1.0f;
  }
  _96 = (_localToneMappingParams.w > 0.0f);
  if (_96) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_77, _78, _79));
    _356 = _rndx_tonemapped_color.x;
    _357 = _rndx_tonemapped_color.y;
    _358 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _364 = 1.0f - abs(_etcParams.w);
      _368 = saturate(_etcParams.w);  // [sem: expr_sat]
      _369 = (_364 * _356) + _368;
      _370 = (_364 * _357) + _368;
      _371 = (_364 * _358) + _368;
      if (_colorGradingParams.w > 0.0f) {
        _376 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _393 = (((max(0.0f, (1.0f - _369)) - _369) * _376) + _369);
        _394 = (((max(0.0f, (1.0f - _370)) - _370) * _376) + _370);
        _395 = (((max(0.0f, (1.0f - _371)) - _371) * _376) + _371);
      } else {
        _393 = _369;
        _394 = _370;
        _395 = _371;
      }
      _401 = _userImageAdjust.y + 1.0f;
      _405 = _userImageAdjust.x + 0.5f;
      _406 = ((_393 + -0.5f) * _401) + _405;
      _407 = ((_394 + -0.5f) * _401) + _405;
      _408 = ((_395 + -0.5f) * _401) + _405;
      _438 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _449 = exp2(log2(saturate(mad(_colorBlind0.z, _408, mad(_colorBlind0.y, _407, (_colorBlind0.x * _406))))) * _438);
      _450 = exp2(log2(saturate(mad(_colorBlind1.z, _408, mad(_colorBlind1.y, _407, (_colorBlind1.x * _406))))) * _438);
      _451 = exp2(log2(saturate(mad(_colorBlind2.z, _408, mad(_colorBlind2.y, _407, (_colorBlind2.x * _406))))) * _438);
    } else {
      _449 = _356;
      _450 = _357;
      _451 = _358;
    }
  } else {
    _449 = _77;
    _450 = _78;
    _451 = _79;
  }
  if (_etcParams.y > 1.0f) {
    _460 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _461 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _465 = saturate(1.0f - (dot(float2(_460, _461), float2(_460, _461)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _470 = (_465 * _449);
    _471 = (_465 * _450);
    _472 = (_465 * _451);
  } else {
    _470 = _449;
    _471 = _450;
    _472 = _451;
  }
  if (_96 && (_etcParams.z > 0.0f)) {
    _502 = select((_470 <= 0.0031308000907301903f), (_470 * 12.920000076293945f), (((pow(_470, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _503 = select((_471 <= 0.0031308000907301903f), (_471 * 12.920000076293945f), (((pow(_471, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _504 = select((_472 <= 0.0031308000907301903f), (_472 * 12.920000076293945f), (((pow(_472, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _502 = _470;
    _503 = _471;
    _504 = _472;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _509 = (float)((uint)_80);
    if (!(_509 < _viewDir.w)) {
      if (!(_509 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _518 = _502;
        _519 = _503;
        _520 = _504;
      } else {
        _518 = 0.0f;
        _519 = 0.0f;
        _520 = 0.0f;
      }
    } else {
      _518 = 0.0f;
      _519 = 0.0f;
      _520 = 0.0f;
    }
  } else {
    _518 = _502;
    _519 = _503;
    _520 = _504;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_518, _519, _520), _sunDirection.y, _moonDirection.y);
    _518 = _rndx_final_color.x;
    _519 = _rndx_final_color.y;
    _520 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _518;
  SV_Target.y = _519;
  SV_Target.z = _520;
  SV_Target.w = _93;
  return SV_Target;
}
