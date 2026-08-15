// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports "../../common.hlsl" for the common RenoDX color and shader-injection declarations used below.
#include "../../common.hlsl"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

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
  float4 _14;
  float _37;
  float _38;
  float _82;
  float _83;
  float _84;
  float _184;
  float _185;
  float _186;
  float _243;
  float _244;
  float _245;
  float _328;
  float _48;
  float _49;
  float _53;
  float _58;
  float _62;
  float _67;
  float _71;
  float _77;
  uint _90;
  uint _91;
  float _93;
  float _101;
  float4 _108;
  float4 _113;
  float4 _118;
  float4 _123;
  float _134;
  float _141;
  float _144;
  float _166;
  float _167;
  float _168;
  float _173;
  float _174;
  float _175;
  float _176;
  float _214;
  float _218;
  float _219;
  float _220;
  float _221;
  float _226;
  float _252;
  float _253;
  float _254;
  float _280;
  float _281;
  float _282;
  float _310;
  float _313;
  float _314;
  float _331;
  float _332;
  float _336;
  float _346;
  float _347;
  float _348;
  bool _381;
  _14 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _37 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
    _38 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
  } else {
    _37 = _14.x;
    _38 = _14.z;
  }
  // RenoDX: >>> [Patch: FinalChromaticAberration] [Version: 1.16.00]
  // Description: Scales only the native red/blue chromatic-aberration offsets between the unchanged center sample and native shifted samples. The effective scalar is 1 when RenoDX is Off, preserving the native offsets.
  _37 = lerp(_14.x, _37, CUSTOM_CHROMATIC_ABERRATION);
  _38 = lerp(_14.z, _38, CUSTOM_CHROMATIC_ABERRATION);
  // RenoDX: <<< [Patch: FinalChromaticAberration]

  // RenoDX: >>> [Patch: CustomFilmGrainGate] [Version: 1.16.00]
  // Description: Keeps the native film-grain branch enabled only when its native strength is positive and RenoDX custom film grain is not selected. RenoDX Off clears the custom type flag, restoring the native condition.
  bool vanilla_film_grain = (_slopeParams.w > 0.0f) && CUSTOM_FILM_GRAIN_TYPE == 0;
  if (vanilla_film_grain) {
  // RenoDX: <<< [Patch: CustomFilmGrainGate]
    _48 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _49 = _48 * 0.7692308f;
    _53 = frac(abs(_49));
    _58 = _48 * 0.08130081f;
    _62 = frac(abs(_58));
    _67 = ((select((_58 >= (-0.0f - _58)), _62, (-0.0f - _62)) * 1230.0f) + 10.0f) * ((select((_49 >= (-0.0f - _49)), _53, (-0.0f - _53)) * 13.0f) + 1.0f);
    _71 = frac(abs(_67));
    _77 = ((0.0075000525f - (select((_67 >= (-0.0f - _67)), _71, (-0.0f - _71)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _82 = (_77 * _37);
    _83 = (_77 * _14.y);
    _84 = (_77 * _38);
  } else {
    _82 = _37;
    _83 = _14.y;
    _84 = _38;
  }
  // RenoDX: >>> [Patch: FinalCustomPostProcessingHDR] [Version: 1.13.00]
  // Description: When custom film grain or sharpening is selected, decodes the HDR intermediate with the matching native/custom luminance scale, applies the shared post-process once in BT.709, and restores the PQ intermediate. RenoDX Off clears both type flags, so this block does not execute.
  if (CUSTOM_FILM_GRAIN_TYPE != 0 || CUSTOM_SHARPENING_TYPE != 0) {
    float3 color_pq = float3(_82, _83, _84);

    float scaling = RENODX_TONE_MAP_TYPE == 0 ? 100.0f : RENODX_DIFFUSE_WHITE_NITS;
    float3 color_bt2020 = renodx::color::pq::DecodeSafe(color_pq, scaling);
    float3 color_bt709 = renodx::color::bt709::from::BT2020(color_bt2020);
    color_bt709 = CustomPostProcessing(color_bt709, TEXCOORD, __3__36__0__0__g_sceneColor, __0__4__0__0__g_staticBilinearClamp, 0, scaling);
    color_bt2020 = renodx::color::bt2020::from::BT709(color_bt709);
    color_pq = renodx::color::pq::EncodeSafe(color_bt2020, scaling);

    _82 = color_pq.x;
    _83 = color_pq.y;
    _84 = color_pq.z;
  }
  // RenoDX: <<< [Patch: FinalCustomPostProcessingHDR]

  _90 = (uint)(_screenSizeAndInvSize.x * TEXCOORD.x);
  _91 = (uint)(_screenSizeAndInvSize.y * TEXCOORD.y);
  _93 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  // RenoDX: >>> [Patch: FinalVanillaSharpeningGate] [Version: 1.16.00]
  // Description: The native depth-qualified sharpener would otherwise run before the RenoDX custom sharpening pass and apply two sharpeners to the same pixel. This block adds CUSTOM_SHARPENING_TYPE == 0 to the unchanged native depth condition so the native path runs only when custom sharpening is not selected. CUSTOM_SHARPENING_TYPE resolves to 0 when RenoDX is Off, restoring the native condition.
  if (CUSTOM_SHARPENING_TYPE == 0 && !((_93.x < 1e-07f) || (_93.x == 1.0f))) {
  // RenoDX: <<< [Patch: FinalVanillaSharpeningGate]
    _101 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _108 = __3__36__0__0__g_sceneColor.Load(int3(_90, ((int)((uint)((uint)(_91)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _113 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_90)) + (uint)(-1))), _91, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _118 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_90)) + (uint)(1))), _91, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _123 = __3__36__0__0__g_sceneColor.Load(int3(_90, ((int)((uint)((uint)(_91)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _134 = max(max(_83, _108.y), max(max(_113.y, _118.y), _123.y));
    _141 = sqrt(saturate(min(min(min(_83, _108.y), min(min(_113.y, _118.y), _123.y)), (1.0f - _134)) * (1.0f / _134))) * (-1.0f / (((1.0f - _101) * 8.0f) + (_101 * 5.0f)));
    _144 = 1.0f / ((_141 * 4.0f) + 1.0f);
    _166 = saturate(((_141 * (((_113.x + _108.x) + _118.x) + _123.x)) + _82) * _144) - _82;
    _167 = saturate(((_141 * (((_113.y + _108.y) + _118.y) + _123.y)) + _83) * _144) - _83;
    _168 = saturate(((_141 * (((_113.z + _108.z) + _118.z) + _123.z)) + _84) * _144) - _84;
    _173 = 1.0f - dot(float3(abs(_166), abs(_167), abs(_168)), float3(0.212671f, 0.71516f, 0.072169f));
    _174 = _173 * _173;
    _175 = _174 * _174;
    _176 = _175 * _175;
    // RenoDX: >>> [Patch: FinalSharpeningStrength] [Version: 1.16.00]
    // Description: The native HDR final computes one sharpening delta per RGB channel and adds each delta back to its original center color. This block multiplies only those three native deltas by CUSTOM_SHARPENING while preserving the native center additions and channel order. CUSTOM_SHARPENING resolves to 1 when RenoDX is Off, restoring all three native equations.
    _184 = ((_176 * _166 * CUSTOM_SHARPENING) + _82);
    _185 = ((_176 * _167 * CUSTOM_SHARPENING) + _83);
    _186 = ((_176 * _168 * CUSTOM_SHARPENING) + _84);
    // RenoDX: <<< [Patch: FinalSharpeningStrength]
  } else {
    _184 = _82;
    _185 = _83;
    _186 = _84;
  }
  _214 = 1.0f - abs(_etcParams.w);
  _218 = saturate(_etcParams.w);  // [sem: expr_sat]
  // RenoDX: >>> [Patch: RemoveFinalSrgbDecodeHDR] [Version: 1.16.00]
  // Description: The paired HDR tonemap writer stores raw PQ, so the final pass must blend those three channels directly instead of applying vanilla's sRGB decode and corrupting the coordinated intermediate.
  _219 = (_214 * _184) + _218;
  _220 = (_214 * _185) + _218;
  _221 = (_214 * _186) + _218;
  // RenoDX: <<< [Patch: RemoveFinalSrgbDecodeHDR]
  if (_colorGradingParams.w > 0.0f) {
    _226 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _243 = (((max(0.0f, (1.0f - _219)) - _219) * _226) + _219);
    _244 = (((max(0.0f, (1.0f - _220)) - _220) * _226) + _220);
    _245 = (((max(0.0f, (1.0f - _221)) - _221) * _226) + _221);
  } else {
    _243 = _219;
    _244 = _220;
    _245 = _221;
  }
  _252 = (pow(_243, 0.012683313f));
  _253 = (pow(_244, 0.012683313f));
  _254 = (pow(_245, 0.012683313f));
  _280 = (TEXCOORD.x * 2.0f) + -1.0f;
  _281 = TEXCOORD.y * 2.0f;
  _282 = 1.0f - _281;
  _310 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _282, ((_projToPrevProj[3].x) * _280))) + (_projToPrevProj[3].w);
  _313 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _282, ((_projToPrevProj[0].x) * _280))) + (_projToPrevProj[0].w)) / _310) - _280;
  _314 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _282, ((_projToPrevProj[1].x) * _280))) + (_projToPrevProj[1].w)) / _310) - _282;
  if (_localToneMappingParams.w > 0.0f) {
    _328 = saturate(1.0f - (sqrt((_314 * _314) + (_313 * _313)) * 2.0f));  // [sem: expr_sat]
  } else {
    _328 = 1.0f;  // [sem: expr_sat]
  }
  _331 = abs(_280);
  _332 = abs(_281 + -1.0f);
  // RenoDX: >>> [Patch: FinalVignetteStrength] [Version: 1.16.00]
  // Description: The native final pass derives its vignette attenuation from _postProcessParams.x and the squared screen-space radius. This block multiplies only that native coefficient by CUSTOM_VIGNETTE so the control scales the existing vignette without changing its center, falloff equation, saturation, or output routing. CUSTOM_VIGNETTE resolves to 1 when RenoDX is Off, restoring the native expression.
  _336 = saturate(1.0f - ((_328 * _postProcessParams.x * CUSTOM_VIGNETTE) * dot(float2(_331, _332), float2(_331, _332))));  // [sem: expr_sat]
  // RenoDX: <<< [Patch: FinalVignetteStrength]
  _346 = exp2(log2(_336 * exp2(log2(max(0.0f, (_252 + -0.8359375f)) / (18.851562f - (_252 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _347 = exp2(log2(_336 * exp2(log2(max(0.0f, (_253 + -0.8359375f)) / (18.851562f - (_253 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _348 = exp2(log2(_336 * exp2(log2(max(0.0f, (_254 + -0.8359375f)) / (18.851562f - (_254 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _381 = (!(SV_Position.y < _viewDir.w)) && (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  SV_Target.x = select(_381, exp2(log2((1.0f / ((_346 * 18.6875f) + 1.0f)) * ((_346 * 18.851562f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.y = select(_381, exp2(log2((1.0f / ((_347 * 18.6875f) + 1.0f)) * ((_347 * 18.851562f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.z = select(_381, exp2(log2((1.0f / ((_348 * 18.6875f) + 1.0f)) * ((_348 * 18.851562f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.w = _14.w;

  // RenoDX: >>> [Patch: FinalizePostProcessHDR] [Version: 1.13.00]
  // Description: Runs the shared HDR finalizer after the native output has been assembled so enabled RenoDX display adjustments are applied once. Its effective controls are neutral when RenoDX is Off.
  SV_Target.xyz = FinalizeHDR(SV_Target.xyz, _sunDirection.y, _moonDirection.y);
  // RenoDX: <<< [Patch: FinalizePostProcessHDR]
  return SV_Target;
}
