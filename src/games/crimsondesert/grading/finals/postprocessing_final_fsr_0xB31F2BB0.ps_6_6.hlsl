// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports "../../common.hlsl" for the common RenoDX color and shader-injection declarations used below.
#include "../../common.hlsl"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

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
  float4 _13;
  float _36;
  float _37;
  float _81;
  float _82;
  float _83;
  float _140;
  float _141;
  float _142;
  float _225;
  float _283;
  float _284;
  float _285;
  float _47;
  float _48;
  float _52;
  float _57;
  float _61;
  float _66;
  float _70;
  float _76;
  float _111;
  float _115;
  float _116;
  float _117;
  float _118;
  float _123;
  float _149;
  float _150;
  float _151;
  float _177;
  float _178;
  float _179;
  float _207;
  float _210;
  float _211;
  float _228;
  float _229;
  float _233;
  float _243;
  float _244;
  float _245;
  _13 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _36 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
    _37 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
  } else {
    _36 = _13.x;
    _37 = _13.z;
  }
  // RenoDX: >>> [Patch: FinalChromaticAberration] [Version: 1.16.00]
  // Description: Scales only the native red/blue chromatic-aberration offsets between the unchanged center sample and native shifted samples. The effective scalar is 1 when RenoDX is Off, preserving the native offsets.
  _36 = lerp(_13.x, _36, CUSTOM_CHROMATIC_ABERRATION);
  _37 = lerp(_13.z, _37, CUSTOM_CHROMATIC_ABERRATION);
  // RenoDX: <<< [Patch: FinalChromaticAberration]

  // RenoDX: >>> [Patch: CustomFilmGrainGate] [Version: 1.16.00]
  // Description: Keeps the native film-grain branch enabled only when its native strength is positive and RenoDX custom film grain is not selected. RenoDX Off clears the custom type flag, restoring the native condition.
  bool vanilla_film_grain = (_slopeParams.w > 0.0f) && CUSTOM_FILM_GRAIN_TYPE == 0;
  if (vanilla_film_grain) {
  // RenoDX: <<< [Patch: CustomFilmGrainGate]
    _47 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _48 = _47 * 0.7692308f;
    _52 = frac(abs(_48));
    _57 = _47 * 0.08130081f;
    _61 = frac(abs(_57));
    _66 = ((select((_57 >= (-0.0f - _57)), _61, (-0.0f - _61)) * 1230.0f) + 10.0f) * ((select((_48 >= (-0.0f - _48)), _52, (-0.0f - _52)) * 13.0f) + 1.0f);
    _70 = frac(abs(_66));
    _76 = ((0.0075000525f - (select((_66 >= (-0.0f - _66)), _70, (-0.0f - _70)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _81 = (_76 * _36);
    _82 = (_76 * _13.y);
    _83 = (_76 * _37);
  } else {
    _81 = _36;
    _82 = _13.y;
    _83 = _37;
  }
  // RenoDX: >>> [Patch: FinalCustomPostProcessingHDR] [Version: 1.13.00]
  // Description: When custom film grain or sharpening is selected, decodes the HDR intermediate with the matching native/custom luminance scale, applies the shared post-process once in BT.709, and restores the PQ intermediate. RenoDX Off clears both type flags, so this block does not execute.
  if (CUSTOM_FILM_GRAIN_TYPE != 0 || CUSTOM_SHARPENING_TYPE != 0) {
    float3 color_pq = float3(_81, _82, _83);

    float scaling = RENODX_TONE_MAP_TYPE == 0 ? 100.0f : RENODX_DIFFUSE_WHITE_NITS;
    float3 color_bt2020 = renodx::color::pq::DecodeSafe(color_pq, scaling);
    float3 color_bt709 = renodx::color::bt709::from::BT2020(color_bt2020);
    color_bt709 = CustomPostProcessing(color_bt709, TEXCOORD, __3__36__0__0__g_sceneColor, __0__4__0__0__g_staticBilinearClamp, 0, scaling);
    color_bt2020 = renodx::color::bt2020::from::BT709(color_bt709);
    color_pq = renodx::color::pq::EncodeSafe(color_bt2020, scaling);

    _81 = color_pq.x;
    _82 = color_pq.y;
    _83 = color_pq.z;
  }
  // RenoDX: <<< [Patch: FinalCustomPostProcessingHDR]

  _111 = 1.0f - abs(_etcParams.w);
  _115 = saturate(_etcParams.w);  // [sem: expr_sat]
  // RenoDX: >>> [Patch: RemoveFinalSrgbDecodeHDR] [Version: 1.16.00]
  // Description: The paired HDR tonemap writer stores raw PQ, so the final pass must blend those three channels directly instead of applying vanilla's sRGB decode and corrupting the coordinated intermediate.
  _116 = (_111 * _81) + _115;
  _117 = (_111 * _82) + _115;
  _118 = (_111 * _83) + _115;
  // RenoDX: <<< [Patch: RemoveFinalSrgbDecodeHDR]
  if (_colorGradingParams.w > 0.0f) {
    _123 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _140 = (((max(0.0f, (1.0f - _116)) - _116) * _123) + _116);
    _141 = (((max(0.0f, (1.0f - _117)) - _117) * _123) + _117);
    _142 = (((max(0.0f, (1.0f - _118)) - _118) * _123) + _118);
  } else {
    _140 = _116;
    _141 = _117;
    _142 = _118;
  }
  _149 = (pow(_140, 0.012683313f));
  _150 = (pow(_141, 0.012683313f));
  _151 = (pow(_142, 0.012683313f));
  _177 = (TEXCOORD.x * 2.0f) + -1.0f;
  _178 = TEXCOORD.y * 2.0f;
  _179 = 1.0f - _178;
  _207 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _179, ((_projToPrevProj[3].x) * _177))) + (_projToPrevProj[3].w);
  _210 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _179, ((_projToPrevProj[0].x) * _177))) + (_projToPrevProj[0].w)) / _207) - _177;
  _211 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _179, ((_projToPrevProj[1].x) * _177))) + (_projToPrevProj[1].w)) / _207) - _179;
  if (_localToneMappingParams.w > 0.0f) {
    _225 = saturate(1.0f - (sqrt((_211 * _211) + (_210 * _210)) * 2.0f));  // [sem: expr_sat]
  } else {
    _225 = 1.0f;  // [sem: expr_sat]
  }
  _228 = abs(_177);
  _229 = abs(_178 + -1.0f);
  // RenoDX: >>> [Patch: FinalVignetteStrength] [Version: 1.16.00]
  // Description: The native final pass derives its vignette attenuation from _postProcessParams.x and the squared screen-space radius. This block multiplies only that native coefficient by CUSTOM_VIGNETTE so the control scales the existing vignette without changing its center, falloff equation, saturation, or output routing. CUSTOM_VIGNETTE resolves to 1 when RenoDX is Off, restoring the native expression.
  _233 = saturate(1.0f - ((_225 * _postProcessParams.x * CUSTOM_VIGNETTE) * dot(float2(_228, _229), float2(_228, _229))));  // [sem: expr_sat]
  // RenoDX: <<< [Patch: FinalVignetteStrength]
  _243 = exp2(log2(_233 * exp2(log2(max(0.0f, (_149 + -0.8359375f)) / (18.851562f - (_149 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _244 = exp2(log2(_233 * exp2(log2(max(0.0f, (_150 + -0.8359375f)) / (18.851562f - (_150 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _245 = exp2(log2(_233 * exp2(log2(max(0.0f, (_151 + -0.8359375f)) / (18.851562f - (_151 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _283 = exp2(log2((1.0f / ((_243 * 18.6875f) + 1.0f)) * ((_243 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _284 = exp2(log2((1.0f / ((_244 * 18.6875f) + 1.0f)) * ((_244 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _285 = exp2(log2((1.0f / ((_245 * 18.6875f) + 1.0f)) * ((_245 * 18.851562f) + 0.8359375f)) * 78.84375f);
    } else {
      _283 = 0.0f;
      _284 = 0.0f;
      _285 = 0.0f;
    }
  } else {
    _283 = 0.0f;
    _284 = 0.0f;
    _285 = 0.0f;
  }
  SV_Target.x = _283;
  SV_Target.y = _284;
  SV_Target.z = _285;
  SV_Target.w = _13.w;

  // RenoDX: >>> [Patch: FinalizePostProcessHDR] [Version: 1.13.00]
  // Description: Runs the shared HDR finalizer after the native output has been assembled so enabled RenoDX display adjustments are applied once. Its effective controls are neutral when RenoDX is Off.
  SV_Target.xyz = FinalizeHDR(SV_Target.xyz, _sunDirection.y, _moonDirection.y);
  // RenoDX: <<< [Patch: FinalizePostProcessHDR]
  return SV_Target;
}
