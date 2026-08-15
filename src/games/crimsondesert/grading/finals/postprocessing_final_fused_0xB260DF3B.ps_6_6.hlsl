Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

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
  column_major float4x4 _viewProj : packoffset(c010.x);
  column_major float4x4 _viewProjNoJitter : packoffset(c014.x);
  column_major float4x4 _viewProjRelative : packoffset(c018.x);
  column_major float4x4 _viewProjRelativeNoJitter : packoffset(c022.x);
  column_major float4x4 _invViewProj : packoffset(c026.x);
  column_major float4x4 _invViewProjRelative : packoffset(c030.x);
  column_major float4x4 _invViewProjRelativeNoJitter : packoffset(c034.x);
  column_major float4x4 _viewProjRelativeOrtho : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  column_major float4x4 _view : packoffset(c062.x);
  column_major float4x4 _viewRelative : packoffset(c066.x);
  column_major float4x4 _viewRelativePrev : packoffset(c070.x);
  column_major float4x4 _proj : packoffset(c074.x);
  column_major float4x4 _projNoJitter : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  column_major float4x4 _viewProjNoJitterPrev : packoffset(c083.x);
  column_major float4x4 _viewProjRelativePrev : packoffset(c087.x);
  column_major float4x4 _viewProjRelativeNoJitterPrev : packoffset(c091.x);
  column_major float4x4 _invViewProjPrev : packoffset(c095.x);
  column_major float4x4 _invViewProjRelativePrev : packoffset(c099.x);
  column_major float4x4 _projToPrevProj : packoffset(c103.x);
  column_major float4x4 _projToPrevProjNoTranslation : packoffset(c107.x);
  column_major float4x4 _viewProjectionTexScale : packoffset(c111.x);
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

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by the fused final grading path, and begins suppressing the duplicate native exposure declaration.
#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of the native ExposureConstantBuffer so any intervening unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing native GlobalPushConstants because tonemap.hlsli provides the ABI-compatible live declaration consumed by the fused final grading path.
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of native GlobalPushConstants so the following unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointBlackBorder : register(s11, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _16;
  float _39;
  float _40;
  float _84;
  float _85;
  float _86;
  float _305;
  float _448;
  float _449;
  float _450;
  float _483;
  float _484;
  float _485;
  float _567;
  float _625;
  float _626;
  float _627;
  float _50;
  float _51;
  float _55;
  float _60;
  float _64;
  float _69;
  float _73;
  float _79;
  float _92;
  float _122;
  float _124;
  float _126;
  float _140;
  float _141;
  float _142;
  float _144;
  float _151;
  float _152;
  float _153;
  float _156;
  float _157;
  float _158;
  float _192;
  float _193;
  float _194;
  float _195;
  float _208;
  float _212;
  float _214;
  float _215;
  float _216;
  float _250;
  float _251;
  float _252;
  float _253;
  float _266;
  float _267;
  float _268;
  float _269;
  float _271;
  float _278;
  float _279;
  float _280;
  float _282;
  float _294;
  float _296;
  float _306;
  float _307;
  float _308;
  float _342;
  float _343;
  float _344;
  float _345;
  float _355;
  float _356;
  float _357;
  float _359;
  float _367;
  float _382;
  float _383;
  float _384;
  float _385;
  float _390;
  float _398;
  float _405;
  float _408;
  float _409;
  float _410;
  float _430;
  float _431;
  float _432;
  float _437;
  float _438;
  float _439;
  float _440;
  float _454;
  float _458;
  float _459;
  float _460;
  float _461;
  float _466;
  float _492;
  float _493;
  float _494;
  float _520;
  float _521;
  float _522;
  float _550;
  float _553;
  float _554;
  float _570;
  float _571;
  float _575;
  float _585;
  float _586;
  float _587;
  _16 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _39 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
    _40 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
  } else {
    _39 = _16.x;
    _40 = _16.z;
  }
  // RenoDX: >>> [Patch: FinalChromaticAberration] [Version: 1.16.00]
  // Description: Scales only the native red/blue chromatic-aberration offsets between the unchanged center sample and native shifted samples. The effective scalar is 1 when RenoDX is Off, preserving the native offsets.
  _39 = lerp(_16.x, _39, CUSTOM_CHROMATIC_ABERRATION);
  _40 = lerp(_16.z, _40, CUSTOM_CHROMATIC_ABERRATION);
  // RenoDX: <<< [Patch: FinalChromaticAberration]

  // RenoDX: >>> [Patch: CustomFilmGrainGate] [Version: 1.16.00]
  // Description: Keeps the native film-grain branch enabled only when its native strength is positive and RenoDX custom film grain is not selected. RenoDX Off clears the custom type flag, restoring the native condition.
  bool vanilla_film_grain = (_slopeParams.w > 0.0f) && CUSTOM_FILM_GRAIN_TYPE == 0;
  if (vanilla_film_grain) {
  // RenoDX: <<< [Patch: CustomFilmGrainGate]
    _50 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _51 = _50 * 0.7692308f;
    _55 = frac(abs(_51));
    _60 = _50 * 0.08130081f;
    _64 = frac(abs(_60));
    _69 = ((select((_60 >= (-0.0f - _60)), _64, (-0.0f - _64)) * 1230.0f) + 10.0f) * ((select((_51 >= (-0.0f - _51)), _55, (-0.0f - _55)) * 13.0f) + 1.0f);
    _73 = frac(abs(_69));
    _79 = ((0.0075000525f - (select((_69 >= (-0.0f - _69)), _73, (-0.0f - _73)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _84 = (_79 * _39);
    _85 = (_79 * _16.y);
    _86 = (_79 * _40);
  } else {
    _84 = _39;
    _85 = _16.y;
    _86 = _40;
  }
  _92 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
  _122 = _92 * _slopeParams.x;
  _124 = _92 * _slopeParams.y;
  _126 = _92 * _slopeParams.z;
  // RenoDX: >>> [Patch: FusedFinalTonemapReplace] [Version: 1.13.00]
  // Description: This standalone-final permutation inlines the vanilla tonemap pipeline directly in the final pass and runs it unconditionally on the raw scene color, so an unreplaced permutation renders the whole screen with the vanilla look whenever the game selects it. This block replaces everything from the color-matrix grade through the per-permutation tone curve and output transform with the shared TonemapReplacer. The vanilla screen fade that was fused with the curve output is re-emitted below so the untouched downstream suite - wash, user brightness and contrast, user gamma, color-blind matrix where present, vignette, letterbox, and the alpha passthrough - keeps running unchanged on the replaced color.
  float3 _rndx_tonemapped_color = TonemapReplacer(float3(_84, _85, _86));
  // RenoDX: <<< [Patch: FusedFinalTonemapReplace]
  // RenoDX: >>> [Patch: FusedFinalSharpening] [Version: 1.13.00]
  // Description: The standalone final pass is where RenoDX RCAS sharpening runs, but this fused permutation tonemaps inside the final pass itself, so no completed final-color texture exists to sample neighbor pixels from. Reconstruct the four RCAS neighbor taps by sampling the raw scene color one texel away in each direction and pass each tap through the same TonemapReplacer applied to the center pixel, then run the shared RCAS resolve. The fused vanilla sharpener, where this permutation carried one, was removed together with the replaced tonemap segment above.
  if (CUSTOM_SHARPENING_TYPE == 1 && CUSTOM_SHARPENING > 0.f) {
    uint _rndx_scene_w, _rndx_scene_h;
    __3__36__0__0__g_sceneColor.GetDimensions(_rndx_scene_w, _rndx_scene_h);
    float2 _rndx_texel = 1.0f / float2(_rndx_scene_w, _rndx_scene_h);
    float3 _rndx_tap_b = TonemapReplacer(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(0.0f, -_rndx_texel.y), 0).rgb);
    float3 _rndx_tap_d = TonemapReplacer(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(-_rndx_texel.x, 0.0f), 0).rgb);
    float3 _rndx_tap_f = TonemapReplacer(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(_rndx_texel.x, 0.0f), 0).rgb);
    float3 _rndx_tap_h = TonemapReplacer(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(0.0f, _rndx_texel.y), 0).rgb);
    _rndx_tonemapped_color = ApplyRCASTaps(_rndx_tonemapped_color, _rndx_tap_b, _rndx_tap_d, _rndx_tap_f, _rndx_tap_h);
  }
  // RenoDX: <<< [Patch: FusedFinalSharpening]
  // RenoDX: >>> [Patch: FusedFinalFilmGrain] [Version: 1.13.00]
  // Description: The standalone final pass is where RenoDX custom film grain runs. This fused permutation is the visible final output whenever it draws, so apply the custom film grain to the tonemapped color here, in the same pipeline position the slim standalone finals apply it. The vanilla film grain earlier in this shader stays under the CustomFilmGrainGate patch and only runs when custom grain is off.
  if (CUSTOM_FILM_GRAIN_TYPE != 0) {
    _rndx_tonemapped_color = renodx::effects::ApplyFilmGrain(_rndx_tonemapped_color, TEXCOORD, CUSTOM_RANDOM, CUSTOM_FILM_GRAIN_STRENGTH * 0.03f);
  }
  // RenoDX: <<< [Patch: FusedFinalFilmGrain]
  // RenoDX: >>> [Patch: FusedFinalFadeRestore] [Version: 1.13.00]
  // Description: Re-emits the vanilla screen-fade lines that were fused with the replaced tone curve so the downstream final-output suite consumes the replaced color through the original variables.
  _454 = 1.0f - abs(_etcParams.w);
  _458 = saturate(_etcParams.w);
  _459 = (_454 * saturate(_rndx_tonemapped_color.x)) + _458;
  _460 = (_454 * saturate(_rndx_tonemapped_color.y)) + _458;
  _461 = (_454 * saturate(_rndx_tonemapped_color.z)) + _458;
  // RenoDX: <<< [Patch: FusedFinalFadeRestore]
  if (_colorGradingParams.w > 0.0f) {
    _466 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _483 = (((max(0.0f, (1.0f - _459)) - _459) * _466) + _459);
    _484 = (((max(0.0f, (1.0f - _460)) - _460) * _466) + _460);
    _485 = (((max(0.0f, (1.0f - _461)) - _461) * _466) + _461);
  } else {
    _483 = _459;
    _484 = _460;
    _485 = _461;
  }
  _492 = (pow(_483, 0.012683313f));
  _493 = (pow(_484, 0.012683313f));
  _494 = (pow(_485, 0.012683313f));
  _520 = (TEXCOORD.x * 2.0f) + -1.0f;
  _521 = TEXCOORD.y * 2.0f;
  _522 = 1.0f - _521;
  _550 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _522, ((_projToPrevProj[3].x) * _520))) + (_projToPrevProj[3].w);
  _553 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _522, ((_projToPrevProj[0].x) * _520))) + (_projToPrevProj[0].w)) / _550) - _520;
  _554 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _522, ((_projToPrevProj[1].x) * _520))) + (_projToPrevProj[1].w)) / _550) - _522;
  if (_localToneMappingParams.w > 0.0f) {
    _567 = saturate(1.0f - (sqrt((_554 * _554) + (_553 * _553)) * 2.0f));  // [sem: expr_sat]
  } else {
    _567 = 1.0f;  // [sem: expr_sat]
  }
  _570 = abs(_520);
  _571 = abs(_521 + -1.0f);
  // RenoDX: >>> [Patch: FinalVignetteStrength] [Version: 1.16.00]
  // Description: The native final pass derives its vignette attenuation from _postProcessParams.x and the squared screen-space radius. This block multiplies only that native coefficient by CUSTOM_VIGNETTE so the control scales the existing vignette without changing its center, falloff equation, saturation, or output routing. CUSTOM_VIGNETTE resolves to 1 when RenoDX is Off, restoring the native expression.
  _575 = saturate(1.0f - ((_567 * _postProcessParams.x * CUSTOM_VIGNETTE) * dot(float2(_570, _571), float2(_570, _571))));  // [sem: expr_sat]
  // RenoDX: <<< [Patch: FinalVignetteStrength]
  _585 = exp2(log2(_575 * exp2(log2(max(0.0f, (_492 + -0.8359375f)) / (18.851562f - (_492 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _586 = exp2(log2(_575 * exp2(log2(max(0.0f, (_493 + -0.8359375f)) / (18.851562f - (_493 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _587 = exp2(log2(_575 * exp2(log2(max(0.0f, (_494 + -0.8359375f)) / (18.851562f - (_494 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _625 = exp2(log2((1.0f / ((_585 * 18.6875f) + 1.0f)) * ((_585 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _626 = exp2(log2((1.0f / ((_586 * 18.6875f) + 1.0f)) * ((_586 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _627 = exp2(log2((1.0f / ((_587 * 18.6875f) + 1.0f)) * ((_587 * 18.851562f) + 0.8359375f)) * 78.84375f);
    } else {
      _625 = 0.0f;
      _626 = 0.0f;
      _627 = 0.0f;
    }
  } else {
    _625 = 0.0f;
    _626 = 0.0f;
    _627 = 0.0f;
  }
  SV_Target.x = _625;
  SV_Target.y = _626;
  SV_Target.z = _627;
  SV_Target.w = _16.w;

  // RenoDX: >>> [Patch: FinalizePostProcessHDR] [Version: 1.13.00]
  // Description: Runs the shared HDR finalizer after the native output has been assembled so enabled RenoDX display adjustments are applied once. Its effective controls are neutral when RenoDX is Off.
  SV_Target.xyz = FinalizeHDR(SV_Target.xyz, _sunDirection.y, _moonDirection.y);
  // RenoDX: <<< [Patch: FinalizePostProcessHDR]
  return SV_Target;
}
