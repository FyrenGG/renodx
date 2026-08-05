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
  float _898;
  float _899;
  float _900;
  float _936;
  float _937;
  float _938;
  float _1007;
  float _1064;
  float _1065;
  float _1066;
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
  float _165;
  float _169;
  float _171;
  float _172;
  float _173;
  float _174;
  float _175;
  float _176;
  float _177;
  float _181;
  float _185;
  float _189;
  float _190;
  float _192;
  float _194;
  float _196;
  float _197;
  float _198;
  float _199;
  float _204;
  float _227;
  float _247;
  float _267;
  float _270;
  float _279;
  float4 _282;
  float4 _287;
  float4 _292;
  float4 _297;
  float _316;
  float _330;
  float _344;
  float _345;
  float _349;
  float _352;
  float _355;
  float _358;
  float _359;
  float _360;
  float _361;
  float _362;
  float _363;
  float _367;
  float _371;
  float _375;
  float _377;
  float _379;
  float _381;
  float _382;
  float _383;
  float _384;
  float _409;
  float _421;
  float _433;
  float _445;
  float _446;
  float _449;
  float _452;
  float _455;
  float _456;
  float _457;
  float _458;
  float _459;
  float _460;
  float _461;
  float _465;
  float _469;
  float _473;
  float _475;
  float _477;
  float _479;
  float _480;
  float _481;
  float _482;
  float _502;
  float _514;
  float _526;
  float _538;
  float _539;
  float _542;
  float _545;
  float _548;
  float _549;
  float _550;
  float _551;
  float _552;
  float _553;
  float _554;
  float _558;
  float _562;
  float _566;
  float _568;
  float _570;
  float _572;
  float _573;
  float _574;
  float _575;
  float _595;
  float _607;
  float _619;
  float _631;
  float _632;
  float _635;
  float _638;
  float _641;
  float _642;
  float _643;
  float _644;
  float _645;
  float _646;
  float _647;
  float _651;
  float _655;
  float _659;
  float _661;
  float _663;
  float _665;
  float _666;
  float _667;
  float _668;
  float _688;
  float _692;
  float _708;
  float _711;
  float _904;
  float _905;
  float _908;
  float _911;
  float _914;
  float _919;
  float _941;
  float _943;
  float _946;
  float _949;
  float _952;
  float _958;
  float _960;
  float _961;
  float _962;
  float _974;
  float _984;
  float _994;
  float _1008;
  float _1010;
  float _1017;
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
  _165 = _toneMapParams0.x - _toneMapParams0.z;
  _169 = (_165 * _toneMapParams0.w) / _toneMapParams0.y;
  _171 = _165 - (_toneMapParams0.y * _169);
  _172 = _155 / _toneMapParams0.z;
  _173 = _158 / _toneMapParams0.z;
  _174 = _161 / _toneMapParams0.z;
  _175 = saturate(_172);  // [sem: _172_sat]
  _176 = saturate(_173);  // [sem: _173_sat]
  _177 = saturate(_174);  // [sem: _174_sat]
  _181 = (_175 * _175) * (3.0f - (_175 * 2.0f));
  _185 = (_176 * _176) * (3.0f - (_176 * 2.0f));
  _189 = (_177 * _177) * (3.0f - (_177 * 2.0f));
  _190 = _toneMapParams0.z + _169;
  _192 = select((_155 < _190), 0.0f, 1.0f);
  _194 = select((_158 < _190), 0.0f, 1.0f);
  _196 = select((_161 < _190), 0.0f, 1.0f);
  _197 = _155 - _toneMapParams0.z;
  _198 = _158 - _toneMapParams0.z;
  _199 = _161 - _toneMapParams0.z;
  _204 = ((-0.0f - ((_toneMapParams0.y * _toneMapParams0.x) / _171)) / _toneMapParams0.x) * 1.442695f;
  // [sem: expr_sat]
  _227 = saturate((((((pow(_172, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _181)) + ((_181 - _192) * ((_197 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_204 * (_197 - _169)) * _171)) * _192));
  // [sem: expr_sat]
  _247 = saturate((((((pow(_173, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _185)) + ((_185 - _194) * ((_198 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_204 * (_198 - _169)) * _171)) * _194));
  // [sem: expr_sat]
  _267 = saturate((((((pow(_174, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _189)) + ((_189 - _196) * ((_199 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_204 * (_199 - _169)) * _171)) * _196));
  _270 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_270.x < 1e-07f) || (_270.x == 1.0f))) {
    _279 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _282 = __3__36__0__0__g_sceneColor.Load(int3(_92, ((int)((uint)((uint)(_95)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _287 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_92)) + (uint)(-1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _292 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_92)) + (uint)(1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _297 = __3__36__0__0__g_sceneColor.Load(int3(_92, ((int)((uint)((uint)(_95)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _316 = exp2(_powerParams.x * log2(max(0.0f, (_offsetParams.x + (max(0.0f, (((_282.x * 1.70505f) - (_282.y * 0.62179f)) - (_282.z * 0.08326f))) * _102)))));
    _330 = exp2(log2(max(0.0f, ((max(0.0f, (((_282.y * 1.1408f) - (_282.x * 0.13026f)) - (_282.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _344 = exp2(log2(max(0.0f, ((max(0.0f, (((_282.x * -0.024f) - (_282.y * 0.12897f)) + (_282.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _345 = dot(float3(_316, _330, _344), float3(0.212671f, 0.71516f, 0.072169f));
    _349 = ((_316 - _345) * _powerParams.w) + _345;
    _352 = ((_330 - _345) * _powerParams.w) + _345;
    _355 = ((_344 - _345) * _powerParams.w) + _345;
    _358 = _349 / _toneMapParams0.z;
    _359 = _352 / _toneMapParams0.z;
    _360 = _355 / _toneMapParams0.z;
    _361 = saturate(_358);  // [sem: _358_sat]
    _362 = saturate(_359);  // [sem: _359_sat]
    _363 = saturate(_360);  // [sem: _360_sat]
    _367 = (_361 * _361) * (3.0f - (_361 * 2.0f));
    _371 = (_362 * _362) * (3.0f - (_362 * 2.0f));
    _375 = (_363 * _363) * (3.0f - (_363 * 2.0f));
    _377 = select((_349 < _190), 0.0f, 1.0f);
    _379 = select((_352 < _190), 0.0f, 1.0f);
    _381 = select((_355 < _190), 0.0f, 1.0f);
    _382 = _349 - _toneMapParams0.z;
    _383 = _352 - _toneMapParams0.z;
    _384 = _355 - _toneMapParams0.z;
    // [sem: expr_sat]
    _409 = saturate((((((pow(_359, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _371)) + ((_371 - _379) * ((_383 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_383 - _169) * _204) * _171)) * _379));
    _421 = exp2(log2(max(0.0f, ((max(0.0f, (((_287.x * 1.70505f) - (_287.y * 0.62179f)) - (_287.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _433 = exp2(log2(max(0.0f, ((max(0.0f, (((_287.y * 1.1408f) - (_287.x * 0.13026f)) - (_287.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _445 = exp2(log2(max(0.0f, ((max(0.0f, (((_287.x * -0.024f) - (_287.y * 0.12897f)) + (_287.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _446 = dot(float3(_421, _433, _445), float3(0.212671f, 0.71516f, 0.072169f));
    _449 = ((_421 - _446) * _powerParams.w) + _446;
    _452 = ((_433 - _446) * _powerParams.w) + _446;
    _455 = ((_445 - _446) * _powerParams.w) + _446;
    _456 = _449 / _toneMapParams0.z;
    _457 = _452 / _toneMapParams0.z;
    _458 = _455 / _toneMapParams0.z;
    _459 = saturate(_456);  // [sem: _456_sat]
    _460 = saturate(_457);  // [sem: _457_sat]
    _461 = saturate(_458);  // [sem: _458_sat]
    _465 = (_459 * _459) * (3.0f - (_459 * 2.0f));
    _469 = (_460 * _460) * (3.0f - (_460 * 2.0f));
    _473 = (_461 * _461) * (3.0f - (_461 * 2.0f));
    _475 = select((_449 < _190), 0.0f, 1.0f);
    _477 = select((_452 < _190), 0.0f, 1.0f);
    _479 = select((_455 < _190), 0.0f, 1.0f);
    _480 = _449 - _toneMapParams0.z;
    _481 = _452 - _toneMapParams0.z;
    _482 = _455 - _toneMapParams0.z;
    // [sem: expr_sat]
    _502 = saturate((((((pow(_457, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _469)) + ((_469 - _477) * ((_481 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_481 - _169) * _204) * _171)) * _477));
    _514 = exp2(log2(max(0.0f, ((max(0.0f, (((_292.x * 1.70505f) - (_292.y * 0.62179f)) - (_292.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _526 = exp2(log2(max(0.0f, ((max(0.0f, (((_292.y * 1.1408f) - (_292.x * 0.13026f)) - (_292.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _538 = exp2(log2(max(0.0f, ((max(0.0f, (((_292.x * -0.024f) - (_292.y * 0.12897f)) + (_292.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _539 = dot(float3(_514, _526, _538), float3(0.212671f, 0.71516f, 0.072169f));
    _542 = ((_514 - _539) * _powerParams.w) + _539;
    _545 = ((_526 - _539) * _powerParams.w) + _539;
    _548 = ((_538 - _539) * _powerParams.w) + _539;
    _549 = _542 / _toneMapParams0.z;
    _550 = _545 / _toneMapParams0.z;
    _551 = _548 / _toneMapParams0.z;
    _552 = saturate(_549);  // [sem: _549_sat]
    _553 = saturate(_550);  // [sem: _550_sat]
    _554 = saturate(_551);  // [sem: _551_sat]
    _558 = (_552 * _552) * (3.0f - (_552 * 2.0f));
    _562 = (_553 * _553) * (3.0f - (_553 * 2.0f));
    _566 = (_554 * _554) * (3.0f - (_554 * 2.0f));
    _568 = select((_542 < _190), 0.0f, 1.0f);
    _570 = select((_545 < _190), 0.0f, 1.0f);
    _572 = select((_548 < _190), 0.0f, 1.0f);
    _573 = _542 - _toneMapParams0.z;
    _574 = _545 - _toneMapParams0.z;
    _575 = _548 - _toneMapParams0.z;
    // [sem: expr_sat]
    _595 = saturate((((((pow(_550, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _562)) + ((_562 - _570) * ((_574 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_574 - _169) * _204) * _171)) * _570));
    _607 = exp2(log2(max(0.0f, ((max(0.0f, (((_297.x * 1.70505f) - (_297.y * 0.62179f)) - (_297.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _619 = exp2(log2(max(0.0f, ((max(0.0f, (((_297.y * 1.1408f) - (_297.x * 0.13026f)) - (_297.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _631 = exp2(log2(max(0.0f, ((max(0.0f, (((_297.x * -0.024f) - (_297.y * 0.12897f)) + (_297.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _632 = dot(float3(_607, _619, _631), float3(0.212671f, 0.71516f, 0.072169f));
    _635 = ((_607 - _632) * _powerParams.w) + _632;
    _638 = ((_619 - _632) * _powerParams.w) + _632;
    _641 = ((_631 - _632) * _powerParams.w) + _632;
    _642 = _635 / _toneMapParams0.z;
    _643 = _638 / _toneMapParams0.z;
    _644 = _641 / _toneMapParams0.z;
    _645 = saturate(_642);  // [sem: _642_sat]
    _646 = saturate(_643);  // [sem: _643_sat]
    _647 = saturate(_644);  // [sem: _644_sat]
    _651 = (_645 * _645) * (3.0f - (_645 * 2.0f));
    _655 = (_646 * _646) * (3.0f - (_646 * 2.0f));
    _659 = (_647 * _647) * (3.0f - (_647 * 2.0f));
    _661 = select((_635 < _190), 0.0f, 1.0f);
    _663 = select((_638 < _190), 0.0f, 1.0f);
    _665 = select((_641 < _190), 0.0f, 1.0f);
    _666 = _635 - _toneMapParams0.z;
    _667 = _638 - _toneMapParams0.z;
    _668 = _641 - _toneMapParams0.z;
    // [sem: expr_sat]
    _688 = saturate((((((pow(_643, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _655)) + ((_655 - _663) * ((_667 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_667 - _169) * _204) * _171)) * _663));
    _692 = max(max(_247, _409), max(max(_502, _595), _688));
    _708 = (-1.0f / (((1.0f - _279) * 8.0f) + (_279 * 5.0f))) * sqrt(saturate((1.0f / _692) * min(min(min(_247, _409), min(min(_502, _595), _688)), (1.0f - _692))));
    _711 = 1.0f / ((_708 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _898 = saturate((((((saturate((((((pow(_360, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _375)) + ((_375 - _381) * ((_384 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_384 - _169) * _204) * _171)) * _381)) + saturate((((((pow(_458, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _473)) + ((_473 - _479) * ((_482 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_482 - _169) * _204) * _171)) * _479))) + saturate((((_toneMapParams0.z + (_575 * _toneMapParams0.y)) * (_566 - _572)) + ((((pow(_551, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _566))) + ((_toneMapParams0.x - (exp2((_575 - _169) * _204) * _171)) * _572))) + saturate((((((pow(_644, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _659)) + (((_toneMapParams0.y * _668) + _toneMapParams0.z) * (_659 - _665))) + ((_toneMapParams0.x - (exp2((_668 - _169) * _204) * _171)) * _665))) * _708) + _267) * _711);
    _899 = saturate(((_708 * (((_502 + _409) + _595) + _688)) + _247) * _711);  // [sem: expr_sat]
    // [sem: expr_sat]
    _900 = saturate((((((saturate((((((pow(_358, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _367)) + ((_367 - _377) * ((_382 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_382 - _169) * _204) * _171)) * _377)) + saturate((((((pow(_456, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _465)) + ((_465 - _475) * ((_480 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_480 - _169) * _204) * _171)) * _475))) + saturate((((((pow(_549, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _558)) + ((_558 - _568) * ((_573 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_573 - _169) * _204) * _171)) * _568))) + saturate((((((pow(_642, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _651)) + ((_651 - _661) * ((_666 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_666 - _169) * _204) * _171)) * _661))) * _708) + _227) * _711);
  } else {
    _898 = _267;  // [sem: expr_sat]
    _899 = _247;  // [sem: expr_sat]
    _900 = _227;  // [sem: expr_sat]
  }
  _904 = 1.0f - abs(_etcParams.w);
  _905 = saturate(_etcParams.w);  // [sem: expr_sat]
  _908 = (saturate(_900) * _904) + _905;
  _911 = (saturate(_899) * _904) + _905;
  _914 = (saturate(_898) * _904) + _905;
  if (_colorGradingParams.w > 0.0f) {
    _919 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _936 = (((max(0.0f, (1.0f - _914)) - _914) * _919) + _914);
    _937 = (((max(0.0f, (1.0f - _911)) - _911) * _919) + _911);
    _938 = (((max(0.0f, (1.0f - _908)) - _908) * _919) + _908);
  } else {
    _936 = _914;
    _937 = _911;
    _938 = _908;
  }
  _941 = _userImageAdjust.y + 1.0f;
  _943 = _userImageAdjust.x + 0.5f;
  _946 = (_941 * (_938 + -0.5f)) + _943;
  _949 = (_941 * (_937 + -0.5f)) + _943;
  _952 = (_941 * (_936 + -0.5f)) + _943;
  _958 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _960 = (TEXCOORD.x * 2.0f) + -1.0f;
  _961 = TEXCOORD.y * 2.0f;
  _962 = 1.0f - _961;
  _974 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _962, ((_projToPrevProj[3].x) * _960)));
  _984 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _962, ((_projToPrevProj[0].x) * _960))) + (_projToPrevProj[0].w)) / _974) - _960;
  _994 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _962, ((_projToPrevProj[1].x) * _960))) + (_projToPrevProj[1].w)) / _974) - _962;
  if (_localToneMappingParams.w > 0.0f) {
    _1007 = saturate(1.0f - (sqrt((_994 * _994) + (_984 * _984)) * 2.0f));  // [sem: expr_sat]
  } else {
    _1007 = 1.0f;  // [sem: expr_sat]
  }
  _1008 = abs(_960);
  _1010 = abs(_961 + -1.0f);
  _1017 = saturate(1.0f - ((_postProcessParams.x * _1007) * dot(float2(_1008, _1010), float2(_1008, _1010))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _1064 = (exp2(log2(saturate(mad(_colorBlind0.z, _952, mad(_colorBlind0.y, _949, (_colorBlind0.x * _946))))) * _958) * _1017);
      _1065 = (exp2(log2(saturate(mad(_colorBlind1.z, _952, mad(_colorBlind1.y, _949, (_colorBlind1.x * _946))))) * _958) * _1017);
      _1066 = (exp2(log2(saturate(mad(_colorBlind2.z, _952, mad(_colorBlind2.y, _949, (_colorBlind2.x * _946))))) * _958) * _1017);
    } else {
      _1064 = 0.0f;
      _1065 = 0.0f;
      _1066 = 0.0f;
    }
  } else {
    _1064 = 0.0f;
    _1065 = 0.0f;
    _1066 = 0.0f;
  }
  SV_Target.x = _1064;
  SV_Target.y = _1065;
  SV_Target.z = _1066;
  SV_Target.w = _18.w;
  return SV_Target;
}
