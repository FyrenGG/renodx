Texture3D<float4> __3__36__0__0__g_displayRenderingTransformLUT : register(t155, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b16, space35) {
  float4 _time;
  float4 _timeNoScale;
  uint4 _frameNumber;
  float4 _screenSizeAndInvSize;
  float4 _bufferSizeAndInvSize;
  float4 _hiZUVScaleAndInvScale;
  float4 _resolutionScale;
  float4 _temporalReprojectionParams;
  float4 _viewPos;
  float4 _viewDir;
  column_major float4x4 _viewProj;
  column_major float4x4 _viewProjNoJitter;
  column_major float4x4 _viewProjRelative;
  column_major float4x4 _viewProjRelativeNoJitter;
  column_major float4x4 _invViewProj;
  column_major float4x4 _invViewProjRelative;
  column_major float4x4 _invViewProjRelativeNoJitter;
  column_major float4x4 _viewProjRelativeOrtho;
  float4 _sunDirection;
  float4 _moonDirection;
  float4 _moonRight;
  float4 _moonUp;
  float4 _ssaoRandomDirection[16];
  column_major float4x4 _view;
  column_major float4x4 _viewRelative;
  column_major float4x4 _viewRelativePrev;
  column_major float4x4 _proj;
  column_major float4x4 _projNoJitter;
  float4 _viewPosPrev;
  column_major float4x4 _viewProjNoJitterPrev;
  column_major float4x4 _viewProjRelativePrev;
  column_major float4x4 _viewProjRelativeNoJitterPrev;
  column_major float4x4 _invViewProjPrev;
  column_major float4x4 _invViewProjRelativePrev;
  column_major float4x4 _projToPrevProj;
  column_major float4x4 _projToPrevProjNoTranslation;
  column_major float4x4 _viewProjectionTexScale;
  float4 _temporalAAJitter;
  float4 _temporalAAJitterParams;
  float4 _frustumPlanes[6];
  float4 _frustumPlanesPrev[6];
  float4 _frustumCornerDirs[4];
  float4 _screenPercentage;
  float4 _nearFarProj;
  float4 _renderingOriginPos;
  float4 _renderingOriginPosPrev;
  float4 _lodMaskRenderRate;
  float4 _terrainNormalParams;
  int4 _hiZMapInfo;
  int4 _hiZMapInfoCurrent;
  float4 _treeParams;
  uint4 _clusterSize;
  uint4 _globalLightParams;
  float4 _bevelParams;
  float4 _variableRateShadingParams;
  float4 _cavityParams;
  float4 _customRenderPassSizeInvSize;
  uint4 _impostorParams;
  float4 _clusterDecalSizeAndInvSize;
  uint4 _globalWindParams;
  float4 _windFluidVolumeParams;
  float4 _windFluidTextureParams;
  float4 _raytracingAccelerationStructureOrigin;
  float4 _debugBaseColor;
  float4 _debugNormal;
  float4 _debugMaterial;
  float4 _debugMultiplier;
  half4 _debugBaseColor16;
  half4 _debugNormal16;
  half4 _debugMaterial16;
  half4 _debugMultiplier16;
  float4 _debugCursorWorldPos;
  uint4 _debugRenderToggle01;
  uint4 _debugTreeShapeVariation;
  float4 _positionBasedDynamicsParameter;
  float _effectiveMetallicForVelvet;
  float _debugCharacterSnowRate;
  uint _systemRandomSeed;
  uint _skinnedMeshDebugFlag;
  float4 _viewPosShifted;
  float4 _viewPosShiftedPrev;
  float4 _viewTileRelativePos;
  float4 _viewTileRelativePosPrev;
  int2 _viewTileIndex;
  int2 _viewTileIndexPrev;
  float4 _worldVolume;
  float3 _diffViewPosAccurate;
  uint _isPhotosensitiveMode_isAllolwBlood;
  float _earthRadius;
  float3 _sceneConstantDummy;
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
  float _436;
  float _564;
  float _565;
  float _566;
  float _648;
  float _706;
  float _707;
  float _708;
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
  float _163;
  float _164;
  float _165;
  float4 _195;
  float _201;
  float _202;
  float _203;
  float _237;
  float _238;
  float _239;
  float _240;
  float _259;
  float _260;
  float _261;
  float4 _289;
  float _296;
  float _300;
  float _302;
  float _303;
  float _304;
  float _338;
  float _339;
  float _340;
  float _341;
  float _360;
  float _361;
  float _362;
  float4 _390;
  float _397;
  float _398;
  float _399;
  float _400;
  float _402;
  float _409;
  float _410;
  float _411;
  float _413;
  float _425;
  float _427;
  float _437;
  float _438;
  float _439;
  float _473;
  float _474;
  float _475;
  float _476;
  float _495;
  float _496;
  float _497;
  float4 _525;
  float _535;
  float _539;
  float _540;
  float _541;
  float _542;
  float _547;
  float _573;
  float _574;
  float _575;
  float _601;
  float _602;
  float _603;
  float _631;
  float _634;
  float _635;
  float _651;
  float _652;
  float _656;
  float _666;
  float _667;
  float _668;
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
  _535 = 1.0f - abs(_etcParams.w);
  _539 = saturate(_etcParams.w);
  _540 = (_535 * saturate(_rndx_tonemapped_color.x)) + _539;
  _541 = (_535 * saturate(_rndx_tonemapped_color.y)) + _539;
  _542 = (_535 * saturate(_rndx_tonemapped_color.z)) + _539;
  // RenoDX: <<< [Patch: FusedFinalFadeRestore]
  if (_colorGradingParams.w > 0.0f) {
    _547 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _564 = (((max(0.0f, (1.0f - _540)) - _540) * _547) + _540);
    _565 = (((max(0.0f, (1.0f - _541)) - _541) * _547) + _541);
    _566 = (((max(0.0f, (1.0f - _542)) - _542) * _547) + _542);
  } else {
    _564 = _540;
    _565 = _541;
    _566 = _542;
  }
  _573 = (pow(_564, 0.012683313f));
  _574 = (pow(_565, 0.012683313f));
  _575 = (pow(_566, 0.012683313f));
  _601 = (TEXCOORD.x * 2.0f) + -1.0f;
  _602 = TEXCOORD.y * 2.0f;
  _603 = 1.0f - _602;
  _631 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _603, ((_projToPrevProj[3].x) * _601))) + (_projToPrevProj[3].w);
  _634 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _603, ((_projToPrevProj[0].x) * _601))) + (_projToPrevProj[0].w)) / _631) - _601;
  _635 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _603, ((_projToPrevProj[1].x) * _601))) + (_projToPrevProj[1].w)) / _631) - _603;
  if (_localToneMappingParams.w > 0.0f) {
    _648 = saturate(1.0f - (sqrt((_635 * _635) + (_634 * _634)) * 2.0f));  // [sem: expr_sat]
  } else {
    _648 = 1.0f;  // [sem: expr_sat]
  }
  _651 = abs(_601);
  _652 = abs(_602 + -1.0f);
  // RenoDX: >>> [Patch: FinalVignetteStrength] [Version: 1.16.00]
  // Description: The native final pass derives its vignette attenuation from _postProcessParams.x and the squared screen-space radius. This block multiplies only that native coefficient by CUSTOM_VIGNETTE so the control scales the existing vignette without changing its center, falloff equation, saturation, or output routing. CUSTOM_VIGNETTE resolves to 1 when RenoDX is Off, restoring the native expression.
  _656 = saturate(1.0f - ((_648 * _postProcessParams.x * CUSTOM_VIGNETTE) * dot(float2(_651, _652), float2(_651, _652))));  // [sem: expr_sat]
  // RenoDX: <<< [Patch: FinalVignetteStrength]
  _666 = exp2(log2(_656 * exp2(log2(max(0.0f, (_573 + -0.8359375f)) / (18.851562f - (_573 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _667 = exp2(log2(_656 * exp2(log2(max(0.0f, (_574 + -0.8359375f)) / (18.851562f - (_574 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _668 = exp2(log2(_656 * exp2(log2(max(0.0f, (_575 + -0.8359375f)) / (18.851562f - (_575 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _706 = exp2(log2((1.0f / ((_666 * 18.6875f) + 1.0f)) * ((_666 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _707 = exp2(log2((1.0f / ((_667 * 18.6875f) + 1.0f)) * ((_667 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _708 = exp2(log2((1.0f / ((_668 * 18.6875f) + 1.0f)) * ((_668 * 18.851562f) + 0.8359375f)) * 78.84375f);
    } else {
      _706 = 0.0f;
      _707 = 0.0f;
      _708 = 0.0f;
    }
  } else {
    _706 = 0.0f;
    _707 = 0.0f;
    _708 = 0.0f;
  }
  SV_Target.x = _706;
  SV_Target.y = _707;
  SV_Target.z = _708;
  SV_Target.w = _16.w;

  // RenoDX: >>> [Patch: FinalizePostProcessHDR] [Version: 1.13.00]
  // Description: Runs the shared HDR finalizer after the native output has been assembled so enabled RenoDX display adjustments are applied once. Its effective controls are neutral when RenoDX is Off.
  SV_Target.xyz = FinalizeHDR(SV_Target.xyz, _sunDirection.y, _moonDirection.y);
  // RenoDX: <<< [Patch: FinalizePostProcessHDR]
  return SV_Target;
}
