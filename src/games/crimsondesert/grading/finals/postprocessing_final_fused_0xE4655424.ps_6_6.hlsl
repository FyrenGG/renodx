Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
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

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
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
  float4 _18;
  float _41;
  float _42;
  float _86;
  float _87;
  float _88;
  float _448;
  float _449;
  float _450;
  float _486;
  float _487;
  float _488;
  float _557;
  bool _577;
  float _52;
  float _53;
  float _55;
  float _56;
  float _58;
  float _71;
  float _73;
  float _81;
  uint _92;
  uint _95;
  float _100;
  float _102;
  float _104;
  float _106;
  float _122;
  float _136;
  float _150;
  float _151;
  float _156;
  float _160;
  float _164;
  float _167;
  float _176;
  float4 _179;
  float4 _184;
  float4 _189;
  float4 _194;
  float _213;
  float _227;
  float _241;
  float _242;
  float _247;
  float _259;
  float _271;
  float _283;
  float _284;
  float _288;
  float _300;
  float _312;
  float _324;
  float _325;
  float _329;
  float _341;
  float _353;
  float _365;
  float _366;
  float _370;
  float _374;
  float _390;
  float _393;
  float _454;
  float _455;
  float _458;
  float _461;
  float _464;
  float _469;
  float _491;
  float _493;
  float _496;
  float _499;
  float _502;
  float _508;
  float _510;
  float _511;
  float _512;
  float _524;
  float _534;
  float _544;
  float _558;
  float _560;
  float _567;
  _18 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
    _42 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
  } else {
    _41 = _18.z;
    _42 = _18.x;
  }
  if (_slopeParams.w > 0.0f) {
    _52 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _53 = _52 * 0.7692308f;
    _55 = frac(abs(_53));
    _56 = _52 * 0.08130081f;
    _58 = frac(abs(_56));
    _71 = ((select((_56 >= (-0.0f - _56)), _58, (-0.0f - _58)) * 1230.0f) + 10.0f) * ((select((_53 >= (-0.0f - _53)), _55, (-0.0f - _55)) * 13.0f) + 1.0f);
    _73 = frac(abs(_71));
    _81 = ((0.0075000525f - (select((_71 >= (-0.0f - _71)), _73, (-0.0f - _73)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _86 = (_81 * _41);
    _87 = (_81 * _18.y);
    _88 = (_81 * _42);
  } else {
    _86 = _41;
    _87 = _18.y;
    _88 = _42;
  }
  _92 = (uint)(_screenSizeAndInvSize.x * TEXCOORD.x);
  _95 = (uint)(_screenSizeAndInvSize.y * TEXCOORD.y);
  _100 = _exposure0.x * _userImageAdjust.z;
  _102 = _100 * _slopeParams.x;
  _104 = _100 * _slopeParams.y;
  _106 = _100 * _slopeParams.z;
  _122 = exp2(_powerParams.x * log2(max(0.0f, ((_102 * max(0.0f, (((_87 * -0.62179f) - (_86 * 0.08326f)) + (_88 * 1.70505f)))) + _offsetParams.x))));
  _136 = exp2(log2(max(0.0f, ((max(0.0f, (((_87 * 1.1408f) - (_86 * 0.01055f)) - (_88 * 0.13026f))) * _104) + _offsetParams.y))) * _powerParams.y);
  _150 = exp2(log2(max(0.0f, ((max(0.0f, (((_86 * 1.15297f) - (_87 * 0.12897f)) - (_88 * 0.024f))) * _106) + _offsetParams.z))) * _powerParams.z);
  _151 = dot(float3(_122, _136, _150), float3(0.212671f, 0.71516f, 0.072169f));
  _156 = saturate(lerp(_151, _122, _powerParams.w));  // [sem: expr_sat]
  _160 = saturate(lerp(_151, _136, _powerParams.w));  // [sem: expr_sat]
  _164 = saturate(lerp(_151, _150, _powerParams.w));  // [sem: expr_sat]
  _167 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_167.x < 1e-07f) || (_167.x == 1.0f))) {
    _176 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _179 = __3__36__0__0__g_sceneColor.Load(int3(_92, ((int)((uint)((uint)(_95)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _184 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_92)) + (uint)(-1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _189 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_92)) + (uint)(1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _194 = __3__36__0__0__g_sceneColor.Load(int3(_92, ((int)((uint)((uint)(_95)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _213 = exp2(_powerParams.x * log2(max(0.0f, (_offsetParams.x + (max(0.0f, (((_179.x * 1.70505f) - (_179.y * 0.62179f)) - (_179.z * 0.08326f))) * _102)))));
    _227 = exp2(log2(max(0.0f, ((max(0.0f, (((_179.y * 1.1408f) - (_179.x * 0.13026f)) - (_179.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _241 = exp2(log2(max(0.0f, ((max(0.0f, (((_179.x * -0.024f) - (_179.y * 0.12897f)) + (_179.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _242 = dot(float3(_213, _227, _241), float3(0.212671f, 0.71516f, 0.072169f));
    _247 = saturate(lerp(_242, _227, _powerParams.w));  // [sem: expr_sat]
    _259 = exp2(log2(max(0.0f, ((max(0.0f, (((_184.x * 1.70505f) - (_184.y * 0.62179f)) - (_184.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _271 = exp2(log2(max(0.0f, ((max(0.0f, (((_184.y * 1.1408f) - (_184.x * 0.13026f)) - (_184.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _283 = exp2(log2(max(0.0f, ((max(0.0f, (((_184.x * -0.024f) - (_184.y * 0.12897f)) + (_184.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _284 = dot(float3(_259, _271, _283), float3(0.212671f, 0.71516f, 0.072169f));
    _288 = saturate(lerp(_284, _271, _powerParams.w));  // [sem: expr_sat]
    _300 = exp2(log2(max(0.0f, ((max(0.0f, (((_189.x * 1.70505f) - (_189.y * 0.62179f)) - (_189.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _312 = exp2(log2(max(0.0f, ((max(0.0f, (((_189.y * 1.1408f) - (_189.x * 0.13026f)) - (_189.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _324 = exp2(log2(max(0.0f, ((max(0.0f, (((_189.x * -0.024f) - (_189.y * 0.12897f)) + (_189.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _325 = dot(float3(_300, _312, _324), float3(0.212671f, 0.71516f, 0.072169f));
    _329 = saturate(lerp(_325, _312, _powerParams.w));  // [sem: expr_sat]
    _341 = exp2(log2(max(0.0f, ((max(0.0f, (((_194.x * 1.70505f) - (_194.y * 0.62179f)) - (_194.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _353 = exp2(log2(max(0.0f, ((max(0.0f, (((_194.y * 1.1408f) - (_194.x * 0.13026f)) - (_194.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _365 = exp2(log2(max(0.0f, ((max(0.0f, (((_194.x * -0.024f) - (_194.y * 0.12897f)) + (_194.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _366 = dot(float3(_341, _353, _365), float3(0.212671f, 0.71516f, 0.072169f));
    _370 = saturate(lerp(_366, _353, _powerParams.w));  // [sem: expr_sat]
    _374 = max(max(_160, _247), max(max(_288, _329), _370));
    _390 = (-1.0f / (((1.0f - _176) * 8.0f) + (_176 * 5.0f))) * sqrt(saturate((1.0f / _374) * min(min(min(_160, _247), min(min(_288, _329), _370)), (1.0f - _374))));
    _393 = 1.0f / ((_390 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _448 = saturate((((((saturate(lerp(_242, _241, _powerParams.w)) + saturate(lerp(_284, _283, _powerParams.w))) + saturate(lerp(_325, _324, _powerParams.w))) + saturate(lerp(_366, _365, _powerParams.w))) * _390) + _164) * _393);
    _449 = saturate(((_390 * (((_288 + _247) + _329) + _370)) + _160) * _393);  // [sem: expr_sat]
    // [sem: expr_sat]
    _450 = saturate((((((saturate(lerp(_242, _213, _powerParams.w)) + saturate(lerp(_284, _259, _powerParams.w))) + saturate(lerp(_325, _300, _powerParams.w))) + saturate(lerp(_366, _341, _powerParams.w))) * _390) + _156) * _393);
  } else {
    _448 = _164;  // [sem: expr_sat]
    _449 = _160;  // [sem: expr_sat]
    _450 = _156;  // [sem: expr_sat]
  }
  _454 = 1.0f - abs(_etcParams.w);
  _455 = saturate(_etcParams.w);  // [sem: expr_sat]
  _458 = (saturate(_450) * _454) + _455;
  _461 = (saturate(_449) * _454) + _455;
  _464 = (saturate(_448) * _454) + _455;
  if (_colorGradingParams.w > 0.0f) {
    _469 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _486 = (((max(0.0f, (1.0f - _458)) - _458) * _469) + _458);
    _487 = (((max(0.0f, (1.0f - _461)) - _461) * _469) + _461);
    _488 = (((max(0.0f, (1.0f - _464)) - _464) * _469) + _464);
  } else {
    _486 = _458;
    _487 = _461;
    _488 = _464;
  }
  _491 = _userImageAdjust.y + 1.0f;
  _493 = _userImageAdjust.x + 0.5f;
  _496 = (_491 * (_486 + -0.5f)) + _493;
  _499 = (_491 * (_487 + -0.5f)) + _493;
  _502 = (_491 * (_488 + -0.5f)) + _493;
  _508 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _510 = (TEXCOORD.x * 2.0f) + -1.0f;
  _511 = TEXCOORD.y * 2.0f;
  _512 = 1.0f - _511;
  _524 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _512, ((_projToPrevProj[3].x) * _510)));
  _534 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _512, ((_projToPrevProj[0].x) * _510))) + (_projToPrevProj[0].w)) / _524) - _510;
  _544 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _512, ((_projToPrevProj[1].x) * _510))) + (_projToPrevProj[1].w)) / _524) - _512;
  if (_localToneMappingParams.w > 0.0f) {
    _557 = saturate(1.0f - (sqrt((_544 * _544) + (_534 * _534)) * 2.0f));  // [sem: expr_sat]
  } else {
    _557 = 1.0f;  // [sem: expr_sat]
  }
  _558 = abs(_510);
  _560 = abs(_511 + -1.0f);
  _567 = saturate(1.0f - ((_postProcessParams.x * _557) * dot(float2(_558, _560), float2(_558, _560))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    _577 = (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  } else {
    _577 = false;
  }
  SV_Target.x = select(_577, (exp2(log2(saturate(mad(_colorBlind0.z, _502, mad(_colorBlind0.y, _499, (_colorBlind0.x * _496))))) * _508) * _567), 0.0f);
  SV_Target.y = select(_577, (exp2(log2(saturate(mad(_colorBlind1.z, _502, mad(_colorBlind1.y, _499, (_colorBlind1.x * _496))))) * _508) * _567), 0.0f);
  SV_Target.z = select(_577, (exp2(log2(saturate(mad(_colorBlind2.z, _502, mad(_colorBlind2.y, _499, (_colorBlind2.x * _496))))) * _508) * _567), 0.0f);
  SV_Target.w = _18.w;
  return SV_Target;
}
