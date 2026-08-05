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
  float _316;
  float _454;
  float _455;
  float _456;
  float _492;
  float _493;
  float _494;
  float _563;
  float _620;
  float _621;
  float _622;
  float _52;
  float _53;
  float _55;
  float _56;
  float _58;
  float _71;
  float _73;
  float _81;
  float _94;
  float _96;
  float _98;
  float _100;
  float _116;
  float _130;
  float _144;
  float _145;
  float _150;
  float _154;
  float _158;
  float _161;
  float _162;
  float _163;
  float _175;
  float _187;
  float _199;
  float _200;
  float _216;
  float _220;
  float _222;
  float _223;
  float _224;
  float _236;
  float _248;
  float _260;
  float _261;
  float _277;
  float _278;
  float _279;
  float _280;
  float _282;
  float _285;
  float _288;
  float _291;
  float _293;
  float _298;
  float _307;
  float _317;
  float _318;
  float _319;
  float _331;
  float _343;
  float _355;
  float _356;
  float _361;
  float _366;
  float _371;
  float _374;
  float _383;
  float _391;
  float _397;
  float _403;
  float _404;
  float _409;
  float _413;
  float _430;
  float _432;
  float _460;
  float _461;
  float _464;
  float _467;
  float _470;
  float _475;
  float _497;
  float _499;
  float _502;
  float _505;
  float _508;
  float _514;
  float _516;
  float _517;
  float _518;
  float _530;
  float _540;
  float _550;
  float _564;
  float _566;
  float _573;
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
  _94 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
  _96 = _94 * _slopeParams.x;
  _98 = _94 * _slopeParams.y;
  _100 = _94 * _slopeParams.z;
  _116 = exp2(_powerParams.x * log2(max(0.0f, ((_96 * max(0.0f, (((_87 * -0.62179f) - (_86 * 0.08326f)) + (_88 * 1.70505f)))) + _offsetParams.x))));
  _130 = exp2(log2(max(0.0f, ((max(0.0f, (((_87 * 1.1408f) - (_86 * 0.01055f)) - (_88 * 0.13026f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _144 = exp2(log2(max(0.0f, ((max(0.0f, (((_86 * 1.15297f) - (_87 * 0.12897f)) - (_88 * 0.024f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _145 = dot(float3(_116, _130, _144), float3(0.212671f, 0.71516f, 0.072169f));
  _150 = saturate(lerp(_145, _116, _powerParams.w));  // [sem: expr_sat]
  _154 = saturate(lerp(_145, _130, _powerParams.w));  // [sem: expr_sat]
  _158 = saturate(lerp(_145, _144, _powerParams.w));  // [sem: expr_sat]
  _161 = _localToneMappingParams.x * _88;
  _162 = _localToneMappingParams.x * _87;
  _163 = _localToneMappingParams.x * _86;
  _175 = exp2(log2(max(0.0f, ((max(0.0f, (((_161 * 1.70505f) - (_162 * 0.62179f)) - (_163 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _187 = exp2(log2(max(0.0f, ((max(0.0f, (((_162 * 1.1408f) - (_161 * 0.13026f)) - (_163 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _199 = exp2(log2(max(0.0f, ((max(0.0f, (((_161 * -0.024f) - (_162 * 0.12897f)) + (_163 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _200 = dot(float3(_175, _187, _199), float3(0.212671f, 0.71516f, 0.072169f));
  _216 = dot(float3(saturate(saturate(lerp(_200, _175, _powerParams.w))), saturate(saturate(lerp(_200, _187, _powerParams.w))), saturate(saturate(lerp(_200, _199, _powerParams.w)))), float3(0.1f, 0.7f, 0.2f));
  _220 = dot(float3(saturate(_150), saturate(_154), saturate(_158)), float3(0.1f, 0.7f, 0.2f));
  _222 = _localToneMappingParams.y * _88;
  _223 = _localToneMappingParams.y * _87;
  _224 = _localToneMappingParams.y * _86;
  _236 = exp2(log2(max(0.0f, ((max(0.0f, (((_222 * 1.70505f) - (_223 * 0.62179f)) - (_224 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _248 = exp2(log2(max(0.0f, ((max(0.0f, (((_223 * 1.1408f) - (_222 * 0.13026f)) - (_224 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _260 = exp2(log2(max(0.0f, ((max(0.0f, (((_222 * -0.024f) - (_223 * 0.12897f)) + (_224 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _261 = dot(float3(_236, _248, _260), float3(0.212671f, 0.71516f, 0.072169f));
  _277 = dot(float3(saturate(saturate(lerp(_261, _236, _powerParams.w))), saturate(saturate(lerp(_261, _248, _powerParams.w))), saturate(saturate(lerp(_261, _260, _powerParams.w)))), float3(0.1f, 0.7f, 0.2f));
  _278 = _216 + -0.5f;
  _279 = _220 + -0.5f;
  _280 = _277 + -0.5f;
  _282 = _localToneMappingParams.z * -0.7213475f;
  _285 = exp2((_278 * _278) * _282);
  _288 = exp2((_279 * _279) * _282);
  _291 = exp2((_280 * _280) * _282);
  _293 = dot(float3(_285, _288, _291), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _298 = dot(float3(max(_150, 0.0f), max(_154, 0.0f), max(_158, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _307 = max(dot(float3(((_285 / _293) * _216), ((_288 / _293) * _220), ((_291 / _293) * _277)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _298;
  if (!(_298 > 0.007f)) {
    _316 = ((((_298 * _298) * 20408.16f) * (_307 + -1.0f)) + 1.0f);
  } else {
    _316 = _307;
  }
  _317 = _316 * _88;
  _318 = _316 * _87;
  _319 = _316 * _86;
  _331 = exp2(log2(max(0.0f, ((max(0.0f, (((_317 * 1.70505f) - (_318 * 0.62179f)) - (_319 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _343 = exp2(log2(max(0.0f, ((max(0.0f, (((_318 * 1.1408f) - (_317 * 0.13026f)) - (_319 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _355 = exp2(log2(max(0.0f, ((max(0.0f, (((_317 * -0.024f) - (_318 * 0.12897f)) + (_319 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _356 = dot(float3(_331, _343, _355), float3(0.212671f, 0.71516f, 0.072169f));
  _361 = max(saturate(lerp(_356, _331, _powerParams.w)), 0.0f);
  _366 = max(saturate(lerp(_356, _343, _powerParams.w)), 0.0f);
  _371 = max(saturate(lerp(_356, _355, _powerParams.w)), 0.0f);
  _374 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_374.x < 1e-07f) || (_374.x == 1.0f))) {
    _383 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _391 = exp2(_powerParams.x * log2(max(0.0f, _offsetParams.x)));
    _397 = exp2(log2(max(0.0f, _offsetParams.y)) * _powerParams.y);
    _403 = exp2(log2(max(0.0f, _offsetParams.z)) * _powerParams.z);
    _404 = dot(float3(_391, _397, _403), float3(0.212671f, 0.71516f, 0.072169f));
    _409 = saturate(lerp(_404, _397, _powerParams.w));  // [sem: expr_sat]
    _413 = max(max(_366, _409), max(max(_409, _409), _409));
    _430 = (sqrt(saturate((1.0f / _413) * min(min(min(_366, _409), min(min(_409, _409), _409)), (1.0f - _413)))) * 4.0f) * (-1.0f / (((1.0f - _383) * 8.0f) + (_383 * 5.0f)));
    _432 = 1.0f / (_430 + 1.0f);
    _454 = saturate(((saturate(lerp(_404, _403, _powerParams.w)) * _430) + _371) * _432);  // [sem: expr_sat]
    _455 = saturate(((_430 * _409) + _366) * _432);  // [sem: expr_sat]
    _456 = saturate(((_430 * saturate(lerp(_404, _391, _powerParams.w))) + _361) * _432);  // [sem: expr_sat]
  } else {
    _454 = _371;  // [sem: expr_sat]
    _455 = _366;  // [sem: expr_sat]
    _456 = _361;  // [sem: expr_sat]
  }
  _460 = 1.0f - abs(_etcParams.w);
  _461 = saturate(_etcParams.w);  // [sem: expr_sat]
  _464 = (saturate(_456) * _460) + _461;
  _467 = (saturate(_455) * _460) + _461;
  _470 = (saturate(_454) * _460) + _461;
  if (_colorGradingParams.w > 0.0f) {
    _475 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _492 = (((max(0.0f, (1.0f - _470)) - _470) * _475) + _470);
    _493 = (((max(0.0f, (1.0f - _467)) - _467) * _475) + _467);
    _494 = (((max(0.0f, (1.0f - _464)) - _464) * _475) + _464);
  } else {
    _492 = _470;
    _493 = _467;
    _494 = _464;
  }
  _497 = _userImageAdjust.y + 1.0f;
  _499 = _userImageAdjust.x + 0.5f;
  _502 = (_497 * (_494 + -0.5f)) + _499;
  _505 = (_497 * (_493 + -0.5f)) + _499;
  _508 = (_497 * (_492 + -0.5f)) + _499;
  _514 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _516 = (TEXCOORD.x * 2.0f) + -1.0f;
  _517 = TEXCOORD.y * 2.0f;
  _518 = 1.0f - _517;
  _530 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _518, ((_projToPrevProj[3].x) * _516)));
  _540 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _518, ((_projToPrevProj[0].x) * _516))) + (_projToPrevProj[0].w)) / _530) - _516;
  _550 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _518, ((_projToPrevProj[1].x) * _516))) + (_projToPrevProj[1].w)) / _530) - _518;
  if (_localToneMappingParams.w > 0.0f) {
    _563 = saturate(1.0f - (sqrt((_550 * _550) + (_540 * _540)) * 2.0f));  // [sem: expr_sat]
  } else {
    _563 = 1.0f;  // [sem: expr_sat]
  }
  _564 = abs(_516);
  _566 = abs(_517 + -1.0f);
  _573 = saturate(1.0f - ((_postProcessParams.x * _563) * dot(float2(_564, _566), float2(_564, _566))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _620 = (exp2(log2(saturate(mad(_colorBlind0.z, _508, mad(_colorBlind0.y, _505, (_colorBlind0.x * _502))))) * _514) * _573);
      _621 = (exp2(log2(saturate(mad(_colorBlind1.z, _508, mad(_colorBlind1.y, _505, (_colorBlind1.x * _502))))) * _514) * _573);
      _622 = (exp2(log2(saturate(mad(_colorBlind2.z, _508, mad(_colorBlind2.y, _505, (_colorBlind2.x * _502))))) * _514) * _573);
    } else {
      _620 = 0.0f;
      _621 = 0.0f;
      _622 = 0.0f;
    }
  } else {
    _620 = 0.0f;
    _621 = 0.0f;
    _622 = 0.0f;
  }
  SV_Target.x = _620;
  SV_Target.y = _621;
  SV_Target.z = _622;
  SV_Target.w = _18.w;
  return SV_Target;
}
