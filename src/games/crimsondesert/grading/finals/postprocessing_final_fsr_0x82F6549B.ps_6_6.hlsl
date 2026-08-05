// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports "../../common.hlsl" for the common RenoDX color and shader-injection declarations used below.
#include "../../common.hlsl"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

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
  float _200;
  float _283;
  float _284;
  float _285;
  float _47;
  float _48;
  float _50;
  float _51;
  float _53;
  float _66;
  float _68;
  float _76;
  float _87;
  float _88;
  float _98;
  float _108;
  float _118;
  float _123;
  float _145;
  float _148;
  float _151;
  float _153;
  float _154;
  float _155;
  float _167;
  float _177;
  float _187;
  float _201;
  float _203;
  float _209;
  float _221;
  float _233;
  float _245;
  _13 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _36 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
    _37 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
  } else {
    _36 = _13.z;
    _37 = _13.x;
  }
  // RenoDX: >>> [Patch: FinalChromaticAberration] [Version: 1.16.00]
  // Description: Scales only the native red/blue chromatic-aberration offsets between the unchanged center sample and native shifted samples. The effective scalar is 1 when RenoDX is Off, preserving the native offsets.
  _37 = lerp(_13.x, _37, CUSTOM_CHROMATIC_ABERRATION);
  _36 = lerp(_13.z, _36, CUSTOM_CHROMATIC_ABERRATION);
  // RenoDX: <<< [Patch: FinalChromaticAberration]
  // RenoDX: >>> [Patch: CustomFilmGrainGate] [Version: 1.16.00]
  // Description: Keeps the native film-grain branch enabled only when its native strength is positive and RenoDX custom film grain is not selected. RenoDX Off clears the custom type flag, restoring the native condition.
  bool vanilla_film_grain = (_slopeParams.w > 0.0f) && CUSTOM_FILM_GRAIN_TYPE == 0;
  if (vanilla_film_grain) {
  // RenoDX: <<< [Patch: CustomFilmGrainGate]
    _47 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _48 = _47 * 0.7692308f;
    _50 = frac(abs(_48));
    _51 = _47 * 0.08130081f;
    _53 = frac(abs(_51));
    _66 = ((select((_51 >= (-0.0f - _51)), _53, (-0.0f - _53)) * 1230.0f) + 10.0f) * ((select((_48 >= (-0.0f - _48)), _50, (-0.0f - _50)) * 13.0f) + 1.0f);
    _68 = frac(abs(_66));
    _76 = ((0.0075000525f - (select((_66 >= (-0.0f - _66)), _68, (-0.0f - _68)) * 0.15f)) * _slopeParams.w) + 1.0f;
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
  _87 = 1.0f - abs(_etcParams.w);
  _88 = saturate(_etcParams.w);  // [sem: expr_sat]
  // RenoDX: >>> [Patch: RemoveFinalSrgbDecodeHDR] [Version: 1.16.00]
  // Description: The paired HDR tonemap writer stores raw PQ, so the final pass must blend those three channels directly instead of applying vanilla's sRGB decode and corrupting the coordinated intermediate.
  _98 = (_87 * _83) + _88;
  _108 = (_87 * _82) + _88;
  _118 = (_87 * _81) + _88;
  // RenoDX: <<< [Patch: RemoveFinalSrgbDecodeHDR]
  if (_colorGradingParams.w > 0.0f) {
    _123 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _140 = (((max(0.0f, (1.0f - _118)) - _118) * _123) + _118);
    _141 = (((max(0.0f, (1.0f - _108)) - _108) * _123) + _108);
    _142 = (((max(0.0f, (1.0f - _98)) - _98) * _123) + _98);
  } else {
    _140 = _118;
    _141 = _108;
    _142 = _98;
  }
  _145 = (pow(_142, 0.012683313f));
  _148 = (pow(_141, 0.012683313f));
  _151 = (pow(_140, 0.012683313f));
  _153 = (TEXCOORD.x * 2.0f) + -1.0f;
  _154 = TEXCOORD.y * 2.0f;
  _155 = 1.0f - _154;
  _167 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _155, ((_projToPrevProj[3].x) * _153)));
  _177 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _155, ((_projToPrevProj[0].x) * _153))) + (_projToPrevProj[0].w)) / _167) - _153;
  _187 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _155, ((_projToPrevProj[1].x) * _153))) + (_projToPrevProj[1].w)) / _167) - _155;
  if (_localToneMappingParams.w > 0.0f) {
    _200 = saturate(1.0f - (sqrt((_187 * _187) + (_177 * _177)) * 2.0f));  // [sem: expr_sat]
  } else {
    _200 = 1.0f;  // [sem: expr_sat]
  }
  _201 = abs(_153);
  _203 = abs(_154 + -1.0f);
  // RenoDX: >>> [Patch: FinalVignetteStrength] [Version: 1.16.00]
  // Description: The native final pass derives its vignette attenuation from _postProcessParams.x and the squared screen-space radius. This block multiplies only that native coefficient by CUSTOM_VIGNETTE so the control scales the existing vignette without changing its center, falloff equation, saturation, or output routing. CUSTOM_VIGNETTE resolves to 1 when RenoDX is Off, restoring the native expression.
  _209 = saturate(1.0f - ((_200 * _postProcessParams.x * CUSTOM_VIGNETTE) * dot(float2(_201, _203), float2(_201, _203))));  // [sem: expr_sat]
  // RenoDX: <<< [Patch: FinalVignetteStrength]
  _221 = exp2(log2(exp2(log2(max(0.0f, (_145 + -0.8359375f)) / (18.851562f - (_145 * 18.6875f))) * 6.277395f) * _209) * 0.15930176f);
  _233 = exp2(log2(exp2(log2(max(0.0f, (_148 + -0.8359375f)) / (18.851562f - (_148 * 18.6875f))) * 6.277395f) * _209) * 0.15930176f);
  _245 = exp2(log2(exp2(log2(max(0.0f, (_151 + -0.8359375f)) / (18.851562f - (_151 * 18.6875f))) * 6.277395f) * _209) * 0.15930176f);
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _283 = exp2(log2((1.0f / ((_221 * 18.6875f) + 1.0f)) * ((_221 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _284 = exp2(log2((1.0f / ((_233 * 18.6875f) + 1.0f)) * ((_233 * 18.851562f) + 0.8359375f)) * 78.84375f);
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
