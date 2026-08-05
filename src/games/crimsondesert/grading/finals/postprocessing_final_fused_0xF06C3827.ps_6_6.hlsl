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
  float _597;
  float _598;
  float _599;
  float _635;
  float _636;
  float _637;
  float _706;
  bool _726;
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
  float _155;
  float _158;
  float _161;
  float _178;
  float _188;
  float _198;
  float _201;
  float _210;
  float4 _213;
  float4 _218;
  float4 _223;
  float4 _228;
  float _247;
  float _261;
  float _275;
  float _276;
  float _280;
  float _283;
  float _286;
  float _303;
  float _315;
  float _327;
  float _339;
  float _340;
  float _343;
  float _346;
  float _349;
  float _359;
  float _371;
  float _383;
  float _395;
  float _396;
  float _399;
  float _402;
  float _405;
  float _415;
  float _427;
  float _439;
  float _451;
  float _452;
  float _455;
  float _458;
  float _461;
  float _471;
  float _475;
  float _491;
  float _494;
  float _603;
  float _604;
  float _607;
  float _610;
  float _613;
  float _618;
  float _640;
  float _642;
  float _645;
  float _648;
  float _651;
  float _657;
  float _659;
  float _660;
  float _661;
  float _673;
  float _683;
  float _693;
  float _707;
  float _709;
  float _716;
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
  _155 = ((_122 - _151) * _powerParams.w) + _151;
  _158 = ((_136 - _151) * _powerParams.w) + _151;
  _161 = ((_150 - _151) * _powerParams.w) + _151;
  // [sem: expr_sat]
  _178 = saturate(saturate((((_155 * _toneMapParams0.x) + _toneMapParams0.y) * _155) / ((((_155 * _toneMapParams0.z) + _toneMapParams0.w) * _155) + _toneMapParams1.x)));
  // [sem: expr_sat]
  _188 = saturate(saturate((((_158 * _toneMapParams0.x) + _toneMapParams0.y) * _158) / ((((_158 * _toneMapParams0.z) + _toneMapParams0.w) * _158) + _toneMapParams1.x)));
  // [sem: expr_sat]
  _198 = saturate(saturate((((_161 * _toneMapParams0.x) + _toneMapParams0.y) * _161) / ((((_161 * _toneMapParams0.z) + _toneMapParams0.w) * _161) + _toneMapParams1.x)));
  _201 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_201.x < 1e-07f) || (_201.x == 1.0f))) {
    _210 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _213 = __3__36__0__0__g_sceneColor.Load(int3(_92, ((int)((uint)((uint)(_95)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _218 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_92)) + (uint)(-1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _223 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_92)) + (uint)(1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _228 = __3__36__0__0__g_sceneColor.Load(int3(_92, ((int)((uint)((uint)(_95)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _247 = exp2(_powerParams.x * log2(max(0.0f, (_offsetParams.x + (max(0.0f, (((_213.x * 1.70505f) - (_213.y * 0.62179f)) - (_213.z * 0.08326f))) * _102)))));
    _261 = exp2(log2(max(0.0f, ((max(0.0f, (((_213.y * 1.1408f) - (_213.x * 0.13026f)) - (_213.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _275 = exp2(log2(max(0.0f, ((max(0.0f, (((_213.x * -0.024f) - (_213.y * 0.12897f)) + (_213.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _276 = dot(float3(_247, _261, _275), float3(0.212671f, 0.71516f, 0.072169f));
    _280 = ((_247 - _276) * _powerParams.w) + _276;
    _283 = ((_261 - _276) * _powerParams.w) + _276;
    _286 = ((_275 - _276) * _powerParams.w) + _276;
    // [sem: expr_sat]
    _303 = saturate(saturate((((_283 * _toneMapParams0.x) + _toneMapParams0.y) * _283) / ((((_283 * _toneMapParams0.z) + _toneMapParams0.w) * _283) + _toneMapParams1.x)));
    _315 = exp2(log2(max(0.0f, ((max(0.0f, (((_218.x * 1.70505f) - (_218.y * 0.62179f)) - (_218.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _327 = exp2(log2(max(0.0f, ((max(0.0f, (((_218.y * 1.1408f) - (_218.x * 0.13026f)) - (_218.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _339 = exp2(log2(max(0.0f, ((max(0.0f, (((_218.x * -0.024f) - (_218.y * 0.12897f)) + (_218.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _340 = dot(float3(_315, _327, _339), float3(0.212671f, 0.71516f, 0.072169f));
    _343 = ((_315 - _340) * _powerParams.w) + _340;
    _346 = ((_327 - _340) * _powerParams.w) + _340;
    _349 = ((_339 - _340) * _powerParams.w) + _340;
    // [sem: expr_sat]
    _359 = saturate(saturate((((_346 * _toneMapParams0.x) + _toneMapParams0.y) * _346) / ((((_346 * _toneMapParams0.z) + _toneMapParams0.w) * _346) + _toneMapParams1.x)));
    _371 = exp2(log2(max(0.0f, ((max(0.0f, (((_223.x * 1.70505f) - (_223.y * 0.62179f)) - (_223.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _383 = exp2(log2(max(0.0f, ((max(0.0f, (((_223.y * 1.1408f) - (_223.x * 0.13026f)) - (_223.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _395 = exp2(log2(max(0.0f, ((max(0.0f, (((_223.x * -0.024f) - (_223.y * 0.12897f)) + (_223.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _396 = dot(float3(_371, _383, _395), float3(0.212671f, 0.71516f, 0.072169f));
    _399 = ((_371 - _396) * _powerParams.w) + _396;
    _402 = ((_383 - _396) * _powerParams.w) + _396;
    _405 = ((_395 - _396) * _powerParams.w) + _396;
    // [sem: expr_sat]
    _415 = saturate(saturate((((_402 * _toneMapParams0.x) + _toneMapParams0.y) * _402) / ((((_402 * _toneMapParams0.z) + _toneMapParams0.w) * _402) + _toneMapParams1.x)));
    _427 = exp2(log2(max(0.0f, ((max(0.0f, (((_228.x * 1.70505f) - (_228.y * 0.62179f)) - (_228.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _439 = exp2(log2(max(0.0f, ((max(0.0f, (((_228.y * 1.1408f) - (_228.x * 0.13026f)) - (_228.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _451 = exp2(log2(max(0.0f, ((max(0.0f, (((_228.x * -0.024f) - (_228.y * 0.12897f)) + (_228.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _452 = dot(float3(_427, _439, _451), float3(0.212671f, 0.71516f, 0.072169f));
    _455 = ((_427 - _452) * _powerParams.w) + _452;
    _458 = ((_439 - _452) * _powerParams.w) + _452;
    _461 = ((_451 - _452) * _powerParams.w) + _452;
    // [sem: expr_sat]
    _471 = saturate(saturate((((_458 * _toneMapParams0.x) + _toneMapParams0.y) * _458) / ((((_458 * _toneMapParams0.z) + _toneMapParams0.w) * _458) + _toneMapParams1.x)));
    _475 = max(max(_188, _303), max(max(_359, _415), _471));
    _491 = (-1.0f / (((1.0f - _210) * 8.0f) + (_210 * 5.0f))) * sqrt(saturate((1.0f / _475) * min(min(min(_188, _303), min(min(_359, _415), _471)), (1.0f - _475))));
    _494 = 1.0f / ((_491 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _597 = saturate((((((saturate(saturate((((_286 * _toneMapParams0.x) + _toneMapParams0.y) * _286) / ((((_286 * _toneMapParams0.z) + _toneMapParams0.w) * _286) + _toneMapParams1.x))) + saturate(saturate((((_349 * _toneMapParams0.x) + _toneMapParams0.y) * _349) / ((((_349 * _toneMapParams0.z) + _toneMapParams0.w) * _349) + _toneMapParams1.x)))) + saturate(saturate((((_405 * _toneMapParams0.x) + _toneMapParams0.y) * _405) / ((((_405 * _toneMapParams0.z) + _toneMapParams0.w) * _405) + _toneMapParams1.x)))) + saturate(saturate((((_461 * _toneMapParams0.x) + _toneMapParams0.y) * _461) / ((((_461 * _toneMapParams0.z) + _toneMapParams0.w) * _461) + _toneMapParams1.x)))) * _491) + _198) * _494);
    _598 = saturate(((_491 * (((_359 + _303) + _415) + _471)) + _188) * _494);  // [sem: expr_sat]
    // [sem: expr_sat]
    _599 = saturate((((((saturate(saturate((((_280 * _toneMapParams0.x) + _toneMapParams0.y) * _280) / ((((_280 * _toneMapParams0.z) + _toneMapParams0.w) * _280) + _toneMapParams1.x))) + saturate(saturate((((_343 * _toneMapParams0.x) + _toneMapParams0.y) * _343) / ((((_343 * _toneMapParams0.z) + _toneMapParams0.w) * _343) + _toneMapParams1.x)))) + saturate(saturate((((_399 * _toneMapParams0.x) + _toneMapParams0.y) * _399) / ((((_399 * _toneMapParams0.z) + _toneMapParams0.w) * _399) + _toneMapParams1.x)))) + saturate(saturate((((_455 * _toneMapParams0.x) + _toneMapParams0.y) * _455) / ((((_455 * _toneMapParams0.z) + _toneMapParams0.w) * _455) + _toneMapParams1.x)))) * _491) + _178) * _494);
  } else {
    _597 = _198;  // [sem: expr_sat]
    _598 = _188;  // [sem: expr_sat]
    _599 = _178;  // [sem: expr_sat]
  }
  _603 = 1.0f - abs(_etcParams.w);
  _604 = saturate(_etcParams.w);  // [sem: expr_sat]
  _607 = (saturate(_599) * _603) + _604;
  _610 = (saturate(_598) * _603) + _604;
  _613 = (saturate(_597) * _603) + _604;
  if (_colorGradingParams.w > 0.0f) {
    _618 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _635 = (((max(0.0f, (1.0f - _607)) - _607) * _618) + _607);
    _636 = (((max(0.0f, (1.0f - _610)) - _610) * _618) + _610);
    _637 = (((max(0.0f, (1.0f - _613)) - _613) * _618) + _613);
  } else {
    _635 = _607;
    _636 = _610;
    _637 = _613;
  }
  _640 = _userImageAdjust.y + 1.0f;
  _642 = _userImageAdjust.x + 0.5f;
  _645 = (_640 * (_635 + -0.5f)) + _642;
  _648 = (_640 * (_636 + -0.5f)) + _642;
  _651 = (_640 * (_637 + -0.5f)) + _642;
  _657 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _659 = (TEXCOORD.x * 2.0f) + -1.0f;
  _660 = TEXCOORD.y * 2.0f;
  _661 = 1.0f - _660;
  _673 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _661, ((_projToPrevProj[3].x) * _659)));
  _683 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _661, ((_projToPrevProj[0].x) * _659))) + (_projToPrevProj[0].w)) / _673) - _659;
  _693 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _661, ((_projToPrevProj[1].x) * _659))) + (_projToPrevProj[1].w)) / _673) - _661;
  if (_localToneMappingParams.w > 0.0f) {
    _706 = saturate(1.0f - (sqrt((_693 * _693) + (_683 * _683)) * 2.0f));  // [sem: expr_sat]
  } else {
    _706 = 1.0f;  // [sem: expr_sat]
  }
  _707 = abs(_659);
  _709 = abs(_660 + -1.0f);
  _716 = saturate(1.0f - ((_postProcessParams.x * _706) * dot(float2(_707, _709), float2(_707, _709))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    _726 = (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  } else {
    _726 = false;
  }
  SV_Target.x = select(_726, (exp2(log2(saturate(mad(_colorBlind0.z, _651, mad(_colorBlind0.y, _648, (_colorBlind0.x * _645))))) * _657) * _716), 0.0f);
  SV_Target.y = select(_726, (exp2(log2(saturate(mad(_colorBlind1.z, _651, mad(_colorBlind1.y, _648, (_colorBlind1.x * _645))))) * _657) * _716), 0.0f);
  SV_Target.z = select(_726, (exp2(log2(saturate(mad(_colorBlind2.z, _651, mad(_colorBlind2.y, _648, (_colorBlind2.x * _645))))) * _657) * _716), 0.0f);
  SV_Target.w = _18.w;
  return SV_Target;
}
