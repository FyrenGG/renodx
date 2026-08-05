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
  float _456;
  float _457;
  float _458;
  float _491;
  float _492;
  float _493;
  float _551;
  float _635;
  float _636;
  float _637;
  float _50;
  float _51;
  float _53;
  float _54;
  float _56;
  float _69;
  float _71;
  float _79;
  float _92;
  float _94;
  float _96;
  float _98;
  float _114;
  float _128;
  float _142;
  float _143;
  float _147;
  float _150;
  float _153;
  float _156;
  float _157;
  float _158;
  float _170;
  float _182;
  float _194;
  float _195;
  float _208;
  float _212;
  float _214;
  float _215;
  float _216;
  float _228;
  float _240;
  float _252;
  float _253;
  float _266;
  float _267;
  float _268;
  float _269;
  float _271;
  float _274;
  float _277;
  float _280;
  float _282;
  float _287;
  float _296;
  float _306;
  float _307;
  float _308;
  float _320;
  float _332;
  float _344;
  float _345;
  float _349;
  float _353;
  float _357;
  float _360;
  float _369;
  float _377;
  float _383;
  float _389;
  float _390;
  float _394;
  float _398;
  float _414;
  float _415;
  float _417;
  float _418;
  float _421;
  float _427;
  float _432;
  float _440;
  float _445;
  float _446;
  float _447;
  float _448;
  float _462;
  float _463;
  float _465;
  float _467;
  float _469;
  float _474;
  float _496;
  float _499;
  float _502;
  float _504;
  float _505;
  float _506;
  float _518;
  float _528;
  float _538;
  float _552;
  float _554;
  float _561;
  float _573;
  float _585;
  float _597;
  _16 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _39 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
    _40 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
  } else {
    _39 = _16.z;
    _40 = _16.x;
  }
  if (_slopeParams.w > 0.0f) {
    _50 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _51 = _50 * 0.7692308f;
    _53 = frac(abs(_51));
    _54 = _50 * 0.08130081f;
    _56 = frac(abs(_54));
    _69 = ((select((_54 >= (-0.0f - _54)), _56, (-0.0f - _56)) * 1230.0f) + 10.0f) * ((select((_51 >= (-0.0f - _51)), _53, (-0.0f - _53)) * 13.0f) + 1.0f);
    _71 = frac(abs(_69));
    _79 = ((0.0075000525f - (select((_69 >= (-0.0f - _69)), _71, (-0.0f - _71)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _84 = (_79 * _39);
    _85 = (_79 * _16.y);
    _86 = (_79 * _40);
  } else {
    _84 = _39;
    _85 = _16.y;
    _86 = _40;
  }
  _92 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
  _94 = _92 * _slopeParams.x;
  _96 = _92 * _slopeParams.y;
  _98 = _92 * _slopeParams.z;
  _114 = exp2(_powerParams.x * log2(max(0.0f, ((_94 * max(0.0f, (((_85 * -0.62179f) - (_84 * 0.08326f)) + (_86 * 1.70505f)))) + _offsetParams.x))));
  _128 = exp2(log2(max(0.0f, ((max(0.0f, (((_85 * 1.1408f) - (_84 * 0.01055f)) - (_86 * 0.13026f))) * _96) + _offsetParams.y))) * _powerParams.y);
  _142 = exp2(log2(max(0.0f, ((max(0.0f, (((_84 * 1.15297f) - (_85 * 0.12897f)) - (_86 * 0.024f))) * _98) + _offsetParams.z))) * _powerParams.z);
  _143 = dot(float3(_114, _128, _142), float3(0.212671f, 0.71516f, 0.072169f));
  _147 = ((_114 - _143) * _powerParams.w) + _143;
  _150 = ((_128 - _143) * _powerParams.w) + _143;
  _153 = ((_142 - _143) * _powerParams.w) + _143;
  _156 = _localToneMappingParams.x * _86;
  _157 = _localToneMappingParams.x * _85;
  _158 = _localToneMappingParams.x * _84;
  _170 = exp2(log2(max(0.0f, ((max(0.0f, (((_156 * 1.70505f) - (_157 * 0.62179f)) - (_158 * 0.08326f))) * _94) + _offsetParams.x))) * _powerParams.x);
  _182 = exp2(log2(max(0.0f, ((max(0.0f, (((_157 * 1.1408f) - (_156 * 0.13026f)) - (_158 * 0.01055f))) * _96) + _offsetParams.y))) * _powerParams.y);
  _194 = exp2(log2(max(0.0f, ((max(0.0f, (((_156 * -0.024f) - (_157 * 0.12897f)) + (_158 * 1.15297f))) * _98) + _offsetParams.z))) * _powerParams.z);
  _195 = dot(float3(_170, _182, _194), float3(0.212671f, 0.71516f, 0.072169f));
  _208 = dot(float3(saturate(lerp(_195, _170, _powerParams.w)), saturate(lerp(_195, _182, _powerParams.w)), saturate(lerp(_195, _194, _powerParams.w))), float3(0.1f, 0.7f, 0.2f));
  _212 = dot(float3(saturate(_147), saturate(_150), saturate(_153)), float3(0.1f, 0.7f, 0.2f));
  _214 = _localToneMappingParams.y * _86;
  _215 = _localToneMappingParams.y * _85;
  _216 = _localToneMappingParams.y * _84;
  _228 = exp2(log2(max(0.0f, ((max(0.0f, (((_214 * 1.70505f) - (_215 * 0.62179f)) - (_216 * 0.08326f))) * _94) + _offsetParams.x))) * _powerParams.x);
  _240 = exp2(log2(max(0.0f, ((max(0.0f, (((_215 * 1.1408f) - (_214 * 0.13026f)) - (_216 * 0.01055f))) * _96) + _offsetParams.y))) * _powerParams.y);
  _252 = exp2(log2(max(0.0f, ((max(0.0f, (((_214 * -0.024f) - (_215 * 0.12897f)) + (_216 * 1.15297f))) * _98) + _offsetParams.z))) * _powerParams.z);
  _253 = dot(float3(_228, _240, _252), float3(0.212671f, 0.71516f, 0.072169f));
  _266 = dot(float3(saturate(lerp(_253, _228, _powerParams.w)), saturate(lerp(_253, _240, _powerParams.w)), saturate(lerp(_253, _252, _powerParams.w))), float3(0.1f, 0.7f, 0.2f));
  _267 = _208 + -0.5f;
  _268 = _212 + -0.5f;
  _269 = _266 + -0.5f;
  _271 = _localToneMappingParams.z * -0.7213475f;
  _274 = exp2((_267 * _267) * _271);
  _277 = exp2((_268 * _268) * _271);
  _280 = exp2((_269 * _269) * _271);
  _282 = dot(float3(_274, _277, _280), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _287 = dot(float3(max(_147, 0.0f), max(_150, 0.0f), max(_153, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _296 = max(dot(float3(((_274 / _282) * _208), ((_277 / _282) * _212), ((_280 / _282) * _266)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _287;
  if (!(_287 > 0.007f)) {
    _305 = ((((_287 * _287) * 20408.16f) * (_296 + -1.0f)) + 1.0f);
  } else {
    _305 = _296;
  }
  _306 = _305 * _86;
  _307 = _305 * _85;
  _308 = _305 * _84;
  _320 = exp2(log2(max(0.0f, ((max(0.0f, (((_306 * 1.70505f) - (_307 * 0.62179f)) - (_308 * 0.08326f))) * _94) + _offsetParams.x))) * _powerParams.x);
  _332 = exp2(log2(max(0.0f, ((max(0.0f, (((_307 * 1.1408f) - (_306 * 0.13026f)) - (_308 * 0.01055f))) * _96) + _offsetParams.y))) * _powerParams.y);
  _344 = exp2(log2(max(0.0f, ((max(0.0f, (((_306 * -0.024f) - (_307 * 0.12897f)) + (_308 * 1.15297f))) * _98) + _offsetParams.z))) * _powerParams.z);
  _345 = dot(float3(_320, _332, _344), float3(0.212671f, 0.71516f, 0.072169f));
  _349 = max((lerp(_345, _320, _powerParams.w)), 0.0f);
  _353 = max((lerp(_345, _332, _powerParams.w)), 0.0f);
  _357 = max((lerp(_345, _344, _powerParams.w)), 0.0f);
  _360 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_360.x < 1e-07f) || (_360.x == 1.0f))) {
    _369 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _377 = exp2(_powerParams.x * log2(max(0.0f, _offsetParams.x)));
    _383 = exp2(log2(max(0.0f, _offsetParams.y)) * _powerParams.y);
    _389 = exp2(log2(max(0.0f, _offsetParams.z)) * _powerParams.z);
    _390 = dot(float3(_377, _383, _389), float3(0.212671f, 0.71516f, 0.072169f));
    _394 = ((_383 - _390) * _powerParams.w) + _390;
    _398 = max(max(_353, _394), max(max(_394, _394), _394));
    _414 = (-1.0f / (((1.0f - _369) * 8.0f) + (_369 * 5.0f))) * sqrt(saturate((1.0f / _398) * min(min(min(_353, _394), min(min(_394, _394), _394)), (1.0f - _398))));
    _415 = _414 * 4.0f;
    _417 = 1.0f / (_415 + 1.0f);
    _418 = _powerParams.w * 4.0f;
    _421 = _390 * 4.0f;
    _427 = saturate(((_414 * (((_377 - _390) * _418) + _421)) + _349) * _417) - _349;
    _432 = saturate(((_415 * _394) + _353) * _417) - _353;
    _440 = saturate(((_414 * (((_389 - _390) * _418) + _421)) + _357) * _417) - _357;
    _445 = 1.0f - dot(float3(abs(_427), abs(_432), abs(_440)), float3(0.212671f, 0.71516f, 0.072169f));
    _446 = _445 * _445;
    _447 = _446 * _446;
    _448 = _447 * _447;
    _456 = ((_448 * _440) + _357);
    _457 = ((_448 * _432) + _353);
    _458 = ((_448 * _427) + _349);
  } else {
    _456 = _357;
    _457 = _353;
    _458 = _349;
  }
  _462 = 1.0f - abs(_etcParams.w);
  _463 = saturate(_etcParams.w);  // [sem: expr_sat]
  _465 = (_462 * _458) + _463;
  _467 = (_462 * _457) + _463;
  _469 = (_462 * _456) + _463;
  if (_colorGradingParams.w > 0.0f) {
    _474 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _491 = (((max(0.0f, (1.0f - _469)) - _469) * _474) + _469);
    _492 = (((max(0.0f, (1.0f - _467)) - _467) * _474) + _467);
    _493 = (((max(0.0f, (1.0f - _465)) - _465) * _474) + _465);
  } else {
    _491 = _469;
    _492 = _467;
    _493 = _465;
  }
  _496 = (pow(_493, 0.012683313f));
  _499 = (pow(_492, 0.012683313f));
  _502 = (pow(_491, 0.012683313f));
  _504 = (TEXCOORD.x * 2.0f) + -1.0f;
  _505 = TEXCOORD.y * 2.0f;
  _506 = 1.0f - _505;
  _518 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _506, ((_projToPrevProj[3].x) * _504)));
  _528 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _506, ((_projToPrevProj[0].x) * _504))) + (_projToPrevProj[0].w)) / _518) - _504;
  _538 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _506, ((_projToPrevProj[1].x) * _504))) + (_projToPrevProj[1].w)) / _518) - _506;
  if (_localToneMappingParams.w > 0.0f) {
    _551 = saturate(1.0f - (sqrt((_538 * _538) + (_528 * _528)) * 2.0f));  // [sem: expr_sat]
  } else {
    _551 = 1.0f;  // [sem: expr_sat]
  }
  _552 = abs(_504);
  _554 = abs(_505 + -1.0f);
  _561 = saturate(1.0f - ((_postProcessParams.x * _551) * dot(float2(_552, _554), float2(_552, _554))));  // [sem: expr_sat]
  _573 = exp2(log2(exp2(log2(max(0.0f, (_496 + -0.8359375f)) / (18.851562f - (_496 * 18.6875f))) * 6.277395f) * _561) * 0.15930176f);
  _585 = exp2(log2(exp2(log2(max(0.0f, (_499 + -0.8359375f)) / (18.851562f - (_499 * 18.6875f))) * 6.277395f) * _561) * 0.15930176f);
  _597 = exp2(log2(exp2(log2(max(0.0f, (_502 + -0.8359375f)) / (18.851562f - (_502 * 18.6875f))) * 6.277395f) * _561) * 0.15930176f);
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _635 = exp2(log2((1.0f / ((_573 * 18.6875f) + 1.0f)) * ((_573 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _636 = exp2(log2((1.0f / ((_585 * 18.6875f) + 1.0f)) * ((_585 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _637 = exp2(log2((1.0f / ((_597 * 18.6875f) + 1.0f)) * ((_597 * 18.851562f) + 0.8359375f)) * 78.84375f);
    } else {
      _635 = 0.0f;
      _636 = 0.0f;
      _637 = 0.0f;
    }
  } else {
    _635 = 0.0f;
    _636 = 0.0f;
    _637 = 0.0f;
  }
  SV_Target.x = _635;
  SV_Target.y = _636;
  SV_Target.z = _637;
  SV_Target.w = _16.w;
  return SV_Target;
}
