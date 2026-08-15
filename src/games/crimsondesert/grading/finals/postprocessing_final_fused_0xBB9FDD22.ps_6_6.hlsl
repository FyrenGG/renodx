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
  float _438;
  float _634;
  float _635;
  float _636;
  float _672;
  float _673;
  float _674;
  float _775;
  float _797;
  float _798;
  float _799;
  float _52;
  float _53;
  float _57;
  float _62;
  float _66;
  float _71;
  float _75;
  float _81;
  float _94;
  float _124;
  float _126;
  float _128;
  float _142;
  float _143;
  float _144;
  float _146;
  float _166;
  float _167;
  float _170;
  float _174;
  float _177;
  float _178;
  float _179;
  float _180;
  float _181;
  float _182;
  float _183;
  float _184;
  float _212;
  float _213;
  float _214;
  float _217;
  float _218;
  float _219;
  float _253;
  float _254;
  float _255;
  float _256;
  float _266;
  float _267;
  float _268;
  float _269;
  float _270;
  float _271;
  float _305;
  float _309;
  float _311;
  float _312;
  float _313;
  float _347;
  float _348;
  float _349;
  float _350;
  float _360;
  float _361;
  float _362;
  float _363;
  float _364;
  float _365;
  float _399;
  float _400;
  float _401;
  float _402;
  float _404;
  float _411;
  float _412;
  float _413;
  float _415;
  float _427;
  float _429;
  float _439;
  float _440;
  float _441;
  float _475;
  float _476;
  float _477;
  float _478;
  float _488;
  float _489;
  float _490;
  float _491;
  float _492;
  float _493;
  float _524;
  float _525;
  float _526;
  float _528;
  float _536;
  float _551;
  float _552;
  float _553;
  float _554;
  float _564;
  float _565;
  float _566;
  float _567;
  float _568;
  float _569;
  float _598;
  float _607;
  float _614;
  float _617;
  float _643;
  float _647;
  float _648;
  float _649;
  float _650;
  float _655;
  float _680;
  float _684;
  float _685;
  float _686;
  float _687;
  float _717;
  float _728;
  float _729;
  float _730;
  float _758;
  float _761;
  float _762;
  float _778;
  float _779;
  float _783;
  _18 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
    _42 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
  } else {
    _41 = _18.x;
    _42 = _18.z;
  }
  if (_slopeParams.w > 0.0f) {
    _52 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _53 = _52 * 0.7692308f;
    _57 = frac(abs(_53));
    _62 = _52 * 0.08130081f;
    _66 = frac(abs(_62));
    _71 = ((select((_62 >= (-0.0f - _62)), _66, (-0.0f - _66)) * 1230.0f) + 10.0f) * ((select((_53 >= (-0.0f - _53)), _57, (-0.0f - _57)) * 13.0f) + 1.0f);
    _75 = frac(abs(_71));
    _81 = ((0.0075000525f - (select((_71 >= (-0.0f - _71)), _75, (-0.0f - _75)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _86 = (_81 * _41);
    _87 = (_81 * _18.y);
    _88 = (_81 * _42);
  } else {
    _86 = _41;
    _87 = _18.y;
    _88 = _42;
  }
  _94 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
  _124 = _94 * _slopeParams.x;
  _126 = _94 * _slopeParams.y;
  _128 = _94 * _slopeParams.z;
  _142 = exp2(log2(max(0.0f, (_offsetParams.x + (_124 * max(0.0f, (((_86 * 1.70505f) - (_87 * 0.62179f)) - (_88 * 0.08326f))))))) * _powerParams.x);
  _143 = exp2(log2(max(0.0f, (_offsetParams.y + (_126 * max(0.0f, (((_87 * 1.1408f) - (_86 * 0.13026f)) - (_88 * 0.01055f))))))) * _powerParams.y);
  _144 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_86 * -0.024f) - (_87 * 0.12897f)) + (_88 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _146 = dot(float3(_142, _143, _144), float3(0.212671f, 0.71516f, 0.072169f));
  _166 = _toneMapParams0.x * _toneMapParams1.z;
  _167 = _toneMapParams0.y * _toneMapParams0.z;
  _170 = _toneMapParams0.w * _toneMapParams1.x;
  _174 = _toneMapParams0.w * _toneMapParams1.y;
  _177 = _toneMapParams1.x / _toneMapParams1.y;
  _178 = ((((_166 + _167) * _toneMapParams1.z) + _170) / (((_166 + _toneMapParams0.y) * _toneMapParams1.z) + _174)) - _177;
  _179 = (lerp(_146, _142, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _180 = (lerp(_146, _143, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _181 = (lerp(_146, _144, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _182 = _179 * _toneMapParams0.x;
  _183 = _180 * _toneMapParams0.x;
  _184 = _181 * _toneMapParams0.x;
  _212 = saturate((((((_182 + _167) * _179) + _170) / (((_182 + _toneMapParams0.y) * _179) + _174)) - _177) / _178);  // [sem: expr_sat]
  _213 = saturate((((((_183 + _167) * _180) + _170) / (((_183 + _toneMapParams0.y) * _180) + _174)) - _177) / _178);  // [sem: expr_sat]
  _214 = saturate((((((_184 + _167) * _181) + _170) / (((_184 + _toneMapParams0.y) * _181) + _174)) - _177) / _178);  // [sem: expr_sat]
  _217 = _localToneMappingParams.x * _86;
  _218 = _localToneMappingParams.x * _87;
  _219 = _localToneMappingParams.x * _88;
  _253 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_217 * 1.70505f) - (_218 * 0.62179f)) - (_219 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _254 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_218 * 1.1408f) - (_217 * 0.13026f)) - (_219 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _255 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_217 * -0.024f) - (_218 * 0.12897f)) + (_219 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _256 = dot(float3(_253, _254, _255), float3(0.212671f, 0.71516f, 0.072169f));
  _266 = (lerp(_256, _253, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _267 = (lerp(_256, _254, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _268 = (lerp(_256, _255, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _269 = _266 * _toneMapParams0.x;
  _270 = _267 * _toneMapParams0.x;
  _271 = _268 * _toneMapParams0.x;
  _305 = dot(float3(saturate(saturate((((((_269 + _167) * _266) + _170) / (((_269 + _toneMapParams0.y) * _266) + _174)) - _177) / _178)), saturate(saturate((((((_270 + _167) * _267) + _170) / (((_270 + _toneMapParams0.y) * _267) + _174)) - _177) / _178)), saturate(saturate((((((_271 + _167) * _268) + _170) / (((_271 + _toneMapParams0.y) * _268) + _174)) - _177) / _178))), float3(0.1f, 0.7f, 0.2f));
  _309 = dot(float3(saturate(_212), saturate(_213), saturate(_214)), float3(0.1f, 0.7f, 0.2f));
  _311 = _localToneMappingParams.y * _86;
  _312 = _localToneMappingParams.y * _87;
  _313 = _localToneMappingParams.y * _88;
  _347 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_311 * 1.70505f) - (_312 * 0.62179f)) - (_313 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _348 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_312 * 1.1408f) - (_311 * 0.13026f)) - (_313 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _349 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_311 * -0.024f) - (_312 * 0.12897f)) + (_313 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _350 = dot(float3(_347, _348, _349), float3(0.212671f, 0.71516f, 0.072169f));
  _360 = (lerp(_350, _347, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _361 = (lerp(_350, _348, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _362 = (lerp(_350, _349, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _363 = _360 * _toneMapParams0.x;
  _364 = _361 * _toneMapParams0.x;
  _365 = _362 * _toneMapParams0.x;
  _399 = dot(float3(saturate(saturate((((((_363 + _167) * _360) + _170) / (((_363 + _toneMapParams0.y) * _360) + _174)) - _177) / _178)), saturate(saturate((((((_364 + _167) * _361) + _170) / (((_364 + _toneMapParams0.y) * _361) + _174)) - _177) / _178)), saturate(saturate((((((_365 + _167) * _362) + _170) / (((_365 + _toneMapParams0.y) * _362) + _174)) - _177) / _178))), float3(0.1f, 0.7f, 0.2f));
  _400 = _305 + -0.5f;
  _401 = _309 + -0.5f;
  _402 = _399 + -0.5f;
  _404 = _localToneMappingParams.z * -0.7213475f;
  _411 = exp2((_400 * _400) * _404);
  _412 = exp2((_401 * _401) * _404);
  _413 = exp2((_402 * _402) * _404);
  _415 = dot(float3(_411, _412, _413), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _427 = dot(float3(max(_212, 0.0f), max(_213, 0.0f), max(_214, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _429 = max(dot(float3(((_411 / _415) * _305), ((_412 / _415) * _309), ((_413 / _415) * _399)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _427;
  if (!(_427 > 0.007f)) {
    _438 = ((((_427 * _427) * 20408.16f) * (_429 + -1.0f)) + 1.0f);
  } else {
    _438 = _429;
  }
  _439 = _438 * _86;
  _440 = _438 * _87;
  _441 = _438 * _88;
  _475 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_439 * 1.70505f) - (_440 * 0.62179f)) - (_441 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _476 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_440 * 1.1408f) - (_439 * 0.13026f)) - (_441 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _477 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_439 * -0.024f) - (_440 * 0.12897f)) + (_441 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _478 = dot(float3(_475, _476, _477), float3(0.212671f, 0.71516f, 0.072169f));
  _488 = (lerp(_478, _475, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _489 = (lerp(_478, _476, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _490 = (lerp(_478, _477, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _491 = _488 * _toneMapParams0.x;
  _492 = _489 * _toneMapParams0.x;
  _493 = _490 * _toneMapParams0.x;
  _524 = max(saturate((((((_491 + _167) * _488) + _170) / (((_491 + _toneMapParams0.y) * _488) + _174)) - _177) / _178), 0.0f);
  _525 = max(saturate((((((_492 + _167) * _489) + _170) / (((_492 + _toneMapParams0.y) * _489) + _174)) - _177) / _178), 0.0f);
  _526 = max(saturate((((((_493 + _167) * _490) + _170) / (((_493 + _toneMapParams0.y) * _490) + _174)) - _177) / _178), 0.0f);
  _528 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_528.x < 1e-07f) || (_528.x == 1.0f))) {
    _536 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _551 = exp2(log2(max(0.0f, _offsetParams.x)) * _powerParams.x);
    _552 = exp2(log2(max(0.0f, _offsetParams.y)) * _powerParams.y);
    _553 = exp2(log2(max(0.0f, _offsetParams.z)) * _powerParams.z);
    _554 = dot(float3(_551, _552, _553), float3(0.212671f, 0.71516f, 0.072169f));
    _564 = (lerp(_554, _551, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _565 = (lerp(_554, _552, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _566 = (lerp(_554, _553, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _567 = _564 * _toneMapParams0.x;
    _568 = _565 * _toneMapParams0.x;
    _569 = _566 * _toneMapParams0.x;
    _598 = saturate((((((_568 + _167) * _565) + _170) / (((_568 + _toneMapParams0.y) * _565) + _174)) - _177) / _178);  // [sem: expr_sat]
    _607 = max(max(_525, _598), max(max(_598, _598), _598));
    _614 = sqrt(saturate(min(min(min(_525, _598), min(min(_598, _598), _598)), (1.0f - _607)) * (1.0f / _607))) * (-1.0f / (((1.0f - _536) * 8.0f) + (_536 * 5.0f)));
    _617 = 1.0f / ((_614 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _634 = saturate((((saturate((((((_567 + _167) * _564) + _170) / (((_567 + _toneMapParams0.y) * _564) + _174)) - _177) / _178) * 4.0f) * _614) + _524) * _617);
    _635 = saturate((((_598 * 4.0f) * _614) + _525) * _617);  // [sem: expr_sat]
    // [sem: expr_sat]
    _636 = saturate((((saturate((((((_569 + _167) * _566) + _170) / (((_569 + _toneMapParams0.y) * _566) + _174)) - _177) / _178) * 4.0f) * _614) + _526) * _617);
  } else {
    _634 = _524;  // [sem: expr_sat]
    _635 = _525;  // [sem: expr_sat]
    _636 = _526;  // [sem: expr_sat]
  }
  _643 = 1.0f - abs(_etcParams.w);
  _647 = saturate(_etcParams.w);  // [sem: expr_sat]
  _648 = (_643 * saturate(_634)) + _647;
  _649 = (_643 * saturate(_635)) + _647;
  _650 = (_643 * saturate(_636)) + _647;
  if (_colorGradingParams.w > 0.0f) {
    _655 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _672 = (((max(0.0f, (1.0f - _648)) - _648) * _655) + _648);
    _673 = (((max(0.0f, (1.0f - _649)) - _649) * _655) + _649);
    _674 = (((max(0.0f, (1.0f - _650)) - _650) * _655) + _650);
  } else {
    _672 = _648;
    _673 = _649;
    _674 = _650;
  }
  _680 = _userImageAdjust.y + 1.0f;
  _684 = _userImageAdjust.x + 0.5f;
  _685 = ((_672 + -0.5f) * _680) + _684;
  _686 = ((_673 + -0.5f) * _680) + _684;
  _687 = ((_674 + -0.5f) * _680) + _684;
  _717 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _728 = (TEXCOORD.x * 2.0f) + -1.0f;
  _729 = TEXCOORD.y * 2.0f;
  _730 = 1.0f - _729;
  _758 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _730, ((_projToPrevProj[3].x) * _728))) + (_projToPrevProj[3].w);
  _761 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _730, ((_projToPrevProj[0].x) * _728))) + (_projToPrevProj[0].w)) / _758) - _728;
  _762 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _730, ((_projToPrevProj[1].x) * _728))) + (_projToPrevProj[1].w)) / _758) - _730;
  if (_localToneMappingParams.w > 0.0f) {
    _775 = saturate(1.0f - (sqrt((_762 * _762) + (_761 * _761)) * 2.0f));  // [sem: expr_sat]
  } else {
    _775 = 1.0f;  // [sem: expr_sat]
  }
  _778 = abs(_728);
  _779 = abs(_729 + -1.0f);
  _783 = saturate(1.0f - ((_775 * _postProcessParams.x) * dot(float2(_778, _779), float2(_778, _779))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _797 = (_783 * exp2(log2(saturate(mad(_colorBlind0.z, _687, mad(_colorBlind0.y, _686, (_colorBlind0.x * _685))))) * _717));
      _798 = (_783 * exp2(log2(saturate(mad(_colorBlind1.z, _687, mad(_colorBlind1.y, _686, (_colorBlind1.x * _685))))) * _717));
      _799 = (_783 * exp2(log2(saturate(mad(_colorBlind2.z, _687, mad(_colorBlind2.y, _686, (_colorBlind2.x * _685))))) * _717));
    } else {
      _797 = 0.0f;
      _798 = 0.0f;
      _799 = 0.0f;
    }
  } else {
    _797 = 0.0f;
    _798 = 0.0f;
    _799 = 0.0f;
  }
  SV_Target.x = _797;
  SV_Target.y = _798;
  SV_Target.z = _799;
  SV_Target.w = _18.w;
  return SV_Target;
}
