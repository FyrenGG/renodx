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
  float _289;
  float _290;
  float _291;
  float _529;
  float _530;
  float _531;
  float _776;
  float _777;
  float _778;
  float _879;
  float _1057;
  float _1058;
  float _1059;
  float _1286;
  float _1287;
  float _1288;
  float _1396;
  float _1397;
  float _1398;
  float _1497;
  float _1498;
  float _1499;
  float _1598;
  float _1599;
  float _1600;
  float _1690;
  float _1691;
  float _1692;
  float _1728;
  float _1729;
  float _1730;
  float _1831;
  float _1853;
  float _1854;
  float _1855;
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
  float _153;
  float _154;
  float _155;
  float _174;
  float _175;
  float _176;
  float _177;
  float _178;
  float _179;
  float _180;
  float _181;
  float _182;
  float _228;
  float _229;
  float _230;
  float _231;
  float _232;
  float _233;
  float _234;
  bool _239;
  float _251;
  float _252;
  float _253;
  float _254;
  float _260;
  float _263;
  float _270;
  float _271;
  float _272;
  float _301;
  float _326;
  float _327;
  float _328;
  float _347;
  float _348;
  float _349;
  float _352;
  float _353;
  float _354;
  float _388;
  float _389;
  float _390;
  float _391;
  float _398;
  float _399;
  float _400;
  float _419;
  float _420;
  float _421;
  float _422;
  float _423;
  float _424;
  float _425;
  float _426;
  float _427;
  float _473;
  float _474;
  float _475;
  float _476;
  float _477;
  float _478;
  float _479;
  float _491;
  float _492;
  float _493;
  float _494;
  float _500;
  float _503;
  float _510;
  float _511;
  float _512;
  float _541;
  float _566;
  float _567;
  float _568;
  float _593;
  float _597;
  float _599;
  float _600;
  float _601;
  float _635;
  float _636;
  float _637;
  float _638;
  float _645;
  float _646;
  float _647;
  float _666;
  float _667;
  float _668;
  float _669;
  float _670;
  float _671;
  float _672;
  float _673;
  float _674;
  float _720;
  float _721;
  float _722;
  float _723;
  float _724;
  float _725;
  float _726;
  float _738;
  float _739;
  float _740;
  float _741;
  float _747;
  float _750;
  float _757;
  float _758;
  float _759;
  float _788;
  float _813;
  float _814;
  float _815;
  float _840;
  float _841;
  float _842;
  float _843;
  float _845;
  float _852;
  float _853;
  float _854;
  float _856;
  float _868;
  float _870;
  float _880;
  float _881;
  float _882;
  float _916;
  float _917;
  float _918;
  float _919;
  float _926;
  float _927;
  float _928;
  float _947;
  float _948;
  float _949;
  float _950;
  float _951;
  float _952;
  float _953;
  float _954;
  float _955;
  float _1001;
  float _1002;
  float _1003;
  float _1004;
  float _1005;
  float _1006;
  float _1007;
  float _1019;
  float _1020;
  float _1021;
  float _1022;
  float _1028;
  float _1031;
  float _1038;
  float _1039;
  float _1040;
  float _1069;
  float _1094;
  float _1095;
  float _1096;
  float _1118;
  float _1119;
  float _1120;
  float _1122;
  float _1130;
  float _1145;
  float _1146;
  float _1147;
  float _1148;
  float _1155;
  float _1156;
  float _1157;
  float _1176;
  float _1177;
  float _1178;
  float _1179;
  float _1180;
  float _1181;
  float _1182;
  float _1183;
  float _1184;
  float _1230;
  float _1231;
  float _1232;
  float _1233;
  float _1234;
  float _1235;
  float _1236;
  float _1248;
  float _1249;
  float _1250;
  float _1251;
  float _1257;
  float _1260;
  float _1267;
  float _1268;
  float _1269;
  float _1295;
  float _1296;
  float _1297;
  float _1298;
  float _1323;
  float _1324;
  float _1325;
  float _1345;
  float _1358;
  float _1359;
  float _1360;
  float _1361;
  float _1367;
  float _1370;
  float _1377;
  float _1378;
  float _1379;
  float _1399;
  float _1424;
  float _1425;
  float _1426;
  float _1446;
  float _1459;
  float _1460;
  float _1461;
  float _1462;
  float _1468;
  float _1471;
  float _1478;
  float _1479;
  float _1480;
  float _1500;
  float _1525;
  float _1526;
  float _1527;
  float _1547;
  float _1560;
  float _1561;
  float _1562;
  float _1563;
  float _1569;
  float _1572;
  float _1579;
  float _1580;
  float _1581;
  float _1601;
  float _1626;
  float _1627;
  float _1628;
  float _1648;
  float _1657;
  float _1664;
  float _1667;
  float _1699;
  float _1703;
  float _1704;
  float _1705;
  float _1706;
  float _1711;
  float _1736;
  float _1740;
  float _1741;
  float _1742;
  float _1743;
  float _1773;
  float _1784;
  float _1785;
  float _1786;
  float _1814;
  float _1817;
  float _1818;
  float _1834;
  float _1835;
  float _1839;
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
  _153 = ((_142 - _146) * _powerParams.w) + _146;
  _154 = ((_143 - _146) * _powerParams.w) + _146;
  _155 = ((_144 - _146) * _powerParams.w) + _146;
  _174 = min(max(log2(mad(_155, 0.079223745f, mad(_154, 0.0784336f, (_153 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _175 = min(max(log2(mad(_155, 0.07916613f, mad(_154, 0.87846863f, (_153 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _176 = min(max(log2(mad(_155, 0.879143f, mad(_154, 0.0784336f, (_153 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _177 = _174 * 0.060606062f;
  _178 = _175 * 0.060606062f;
  _179 = _176 * 0.060606062f;
  _180 = _177 * _177;
  _181 = _178 * _178;
  _182 = _179 * _179;
  _228 = min(0.0f, (-0.0f - (((_174 * 0.0072181816f) + ((_180 * 0.4298f) + (((_180 * _180) * ((31.96f - (_174 * 2.4327273f)) + (_180 * 15.5f))) - ((_174 * 0.41624245f) * _180)))) + -0.00232f)));
  _229 = min(0.0f, (-0.0f - (((_175 * 0.0072181816f) + ((_181 * 0.4298f) + (((_181 * _181) * ((31.96f - (_175 * 2.4327273f)) + (_181 * 15.5f))) - ((_175 * 0.41624245f) * _181)))) + -0.00232f)));
  _230 = min(0.0f, (-0.0f - (((_176 * 0.0072181816f) + ((_182 * 0.4298f) + (((_182 * _182) * ((31.96f - (_176 * 2.4327273f)) + (_182 * 15.5f))) - ((_176 * 0.41624245f) * _182)))) + -0.00232f)));
  _231 = -0.0f - _228;
  _232 = -0.0f - _229;
  _233 = -0.0f - _230;
  _234 = dot(float3(_231, _232, _233), float3(0.2126f, 0.7152f, 0.0722f));
  _239 = (_nightToneParm == 1);
  if (_239) {
    _251 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _252 = -0.79999995f / _251;
    _253 = -1.2f / _251;
    _254 = 0.20000005f / _251;
    _260 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _263 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _270 = (_252 + 1.4f) + (_263 * (-0.39999998f - _252));
    _271 = (_253 + 1.6f) + (_263 * (-0.6f - _253));
    _272 = (_254 + 0.9f) + (_263 * (0.5f - _254));
    _289 = (lerp(_271, 1.2f, _260));  // [sem: blended]
    _290 = (lerp(_270, 1.0f, _260));  // [sem: blended]
    _291 = (lerp(_272, 1.4f, _260));  // [sem: blended]
  } else {
    _289 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    _290 = 1.0f;  // [sem: blended]
    _291 = 1.4f;  // [sem: blended]
  }
  _301 = 1.0f - _289;
  _326 = ((exp2(log2(((saturate((_228 * _228) * _231) * _301) + _289) * _231) * _290) - _234) * _291) + _234;
  _327 = ((exp2(log2(((saturate((_229 * _229) * _232) * _301) + _289) * _232) * _290) - _234) * _291) + _234;
  _328 = ((exp2(log2(((saturate((_230 * _230) * _233) * _301) + _289) * _233) * _290) - _234) * _291) + _234;
  _347 = saturate(exp2(log2(mad(_328, -0.09902974f, mad(_327, -0.09802088f, (_326 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
  _348 = saturate(exp2(log2(mad(_328, -0.098961174f, mad(_327, 1.1519032f, (_326 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
  _349 = saturate(exp2(log2(mad(_328, 1.1510737f, mad(_327, -0.09804345f, (_326 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
  _352 = _localToneMappingParams.x * _86;
  _353 = _localToneMappingParams.x * _87;
  _354 = _localToneMappingParams.x * _88;
  _388 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_352 * 1.70505f) - (_353 * 0.62179f)) - (_354 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _389 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_353 * 1.1408f) - (_352 * 0.13026f)) - (_354 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _390 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_352 * -0.024f) - (_353 * 0.12897f)) + (_354 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _391 = dot(float3(_388, _389, _390), float3(0.212671f, 0.71516f, 0.072169f));
  _398 = ((_388 - _391) * _powerParams.w) + _391;
  _399 = ((_389 - _391) * _powerParams.w) + _391;
  _400 = ((_390 - _391) * _powerParams.w) + _391;
  _419 = min(max(log2(mad(_400, 0.079223745f, mad(_399, 0.0784336f, (_398 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _420 = min(max(log2(mad(_400, 0.07916613f, mad(_399, 0.87846863f, (_398 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _421 = min(max(log2(mad(_400, 0.879143f, mad(_399, 0.0784336f, (_398 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _422 = _419 * 0.060606062f;
  _423 = _420 * 0.060606062f;
  _424 = _421 * 0.060606062f;
  _425 = _422 * _422;
  _426 = _423 * _423;
  _427 = _424 * _424;
  _473 = min(0.0f, (-0.0f - (((_419 * 0.0072181816f) + ((_425 * 0.4298f) + (((_425 * _425) * ((31.96f - (_419 * 2.4327273f)) + (_425 * 15.5f))) - ((_419 * 0.41624245f) * _425)))) + -0.00232f)));
  _474 = min(0.0f, (-0.0f - (((_420 * 0.0072181816f) + ((_426 * 0.4298f) + (((_426 * _426) * ((31.96f - (_420 * 2.4327273f)) + (_426 * 15.5f))) - ((_420 * 0.41624245f) * _426)))) + -0.00232f)));
  _475 = min(0.0f, (-0.0f - (((_421 * 0.0072181816f) + ((_427 * 0.4298f) + (((_427 * _427) * ((31.96f - (_421 * 2.4327273f)) + (_427 * 15.5f))) - ((_421 * 0.41624245f) * _427)))) + -0.00232f)));
  _476 = -0.0f - _473;
  _477 = -0.0f - _474;
  _478 = -0.0f - _475;
  _479 = dot(float3(_476, _477, _478), float3(0.2126f, 0.7152f, 0.0722f));
  if (_239) {
    _491 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _492 = -0.79999995f / _491;
    _493 = -1.2f / _491;
    _494 = 0.20000005f / _491;
    _500 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _503 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _510 = (_492 + 1.4f) + (_503 * (-0.39999998f - _492));
    _511 = (_493 + 1.6f) + (_503 * (-0.6f - _493));
    _512 = (_494 + 0.9f) + (_503 * (0.5f - _494));
    _529 = (lerp(_511, 1.2f, _500));  // [sem: blended]
    _530 = (lerp(_510, 1.0f, _500));  // [sem: blended]
    _531 = (lerp(_512, 1.4f, _500));  // [sem: blended]
  } else {
    _529 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    _530 = 1.0f;  // [sem: blended]
    _531 = 1.4f;  // [sem: blended]
  }
  _541 = 1.0f - _529;
  _566 = ((exp2(log2(((saturate((_473 * _473) * _476) * _541) + _529) * _476) * _530) - _479) * _531) + _479;
  _567 = ((exp2(log2(((saturate((_474 * _474) * _477) * _541) + _529) * _477) * _530) - _479) * _531) + _479;
  _568 = ((exp2(log2(((saturate((_475 * _475) * _478) * _541) + _529) * _478) * _530) - _479) * _531) + _479;
  _593 = dot(float3(saturate(saturate(exp2(log2(mad(_568, -0.09902974f, mad(_567, -0.09802088f, (_566 * 1.196879f)))) * 2.2f))), saturate(saturate(exp2(log2(mad(_568, -0.098961174f, mad(_567, 1.1519032f, (_566 * -0.052896854f)))) * 2.2f))), saturate(saturate(exp2(log2(mad(_568, 1.1510737f, mad(_567, -0.09804345f, (_566 * -0.052971635f)))) * 2.2f)))), float3(0.1f, 0.7f, 0.2f));
  _597 = dot(float3(saturate(_347), saturate(_348), saturate(_349)), float3(0.1f, 0.7f, 0.2f));
  _599 = _localToneMappingParams.y * _86;
  _600 = _localToneMappingParams.y * _87;
  _601 = _localToneMappingParams.y * _88;
  _635 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_599 * 1.70505f) - (_600 * 0.62179f)) - (_601 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _636 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_600 * 1.1408f) - (_599 * 0.13026f)) - (_601 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _637 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_599 * -0.024f) - (_600 * 0.12897f)) + (_601 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _638 = dot(float3(_635, _636, _637), float3(0.212671f, 0.71516f, 0.072169f));
  _645 = ((_635 - _638) * _powerParams.w) + _638;
  _646 = ((_636 - _638) * _powerParams.w) + _638;
  _647 = ((_637 - _638) * _powerParams.w) + _638;
  _666 = min(max(log2(mad(_647, 0.079223745f, mad(_646, 0.0784336f, (_645 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _667 = min(max(log2(mad(_647, 0.07916613f, mad(_646, 0.87846863f, (_645 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _668 = min(max(log2(mad(_647, 0.879143f, mad(_646, 0.0784336f, (_645 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _669 = _666 * 0.060606062f;
  _670 = _667 * 0.060606062f;
  _671 = _668 * 0.060606062f;
  _672 = _669 * _669;
  _673 = _670 * _670;
  _674 = _671 * _671;
  _720 = min(0.0f, (-0.0f - (((_666 * 0.0072181816f) + ((_672 * 0.4298f) + (((_672 * _672) * ((31.96f - (_666 * 2.4327273f)) + (_672 * 15.5f))) - ((_666 * 0.41624245f) * _672)))) + -0.00232f)));
  _721 = min(0.0f, (-0.0f - (((_667 * 0.0072181816f) + ((_673 * 0.4298f) + (((_673 * _673) * ((31.96f - (_667 * 2.4327273f)) + (_673 * 15.5f))) - ((_667 * 0.41624245f) * _673)))) + -0.00232f)));
  _722 = min(0.0f, (-0.0f - (((_668 * 0.0072181816f) + ((_674 * 0.4298f) + (((_674 * _674) * ((31.96f - (_668 * 2.4327273f)) + (_674 * 15.5f))) - ((_668 * 0.41624245f) * _674)))) + -0.00232f)));
  _723 = -0.0f - _720;
  _724 = -0.0f - _721;
  _725 = -0.0f - _722;
  _726 = dot(float3(_723, _724, _725), float3(0.2126f, 0.7152f, 0.0722f));
  if (_239) {
    _738 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _739 = -0.79999995f / _738;
    _740 = -1.2f / _738;
    _741 = 0.20000005f / _738;
    _747 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _750 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _757 = (_739 + 1.4f) + (_750 * (-0.39999998f - _739));
    _758 = (_740 + 1.6f) + (_750 * (-0.6f - _740));
    _759 = (_741 + 0.9f) + (_750 * (0.5f - _741));
    _776 = (lerp(_758, 1.2f, _747));  // [sem: blended]
    _777 = (lerp(_757, 1.0f, _747));  // [sem: blended]
    _778 = (lerp(_759, 1.4f, _747));  // [sem: blended]
  } else {
    _776 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    _777 = 1.0f;  // [sem: blended]
    _778 = 1.4f;  // [sem: blended]
  }
  _788 = 1.0f - _776;
  _813 = ((exp2(log2(((saturate((_720 * _720) * _723) * _788) + _776) * _723) * _777) - _726) * _778) + _726;
  _814 = ((exp2(log2(((saturate((_721 * _721) * _724) * _788) + _776) * _724) * _777) - _726) * _778) + _726;
  _815 = ((exp2(log2(((saturate((_722 * _722) * _725) * _788) + _776) * _725) * _777) - _726) * _778) + _726;
  _840 = dot(float3(saturate(saturate(exp2(log2(mad(_815, -0.09902974f, mad(_814, -0.09802088f, (_813 * 1.196879f)))) * 2.2f))), saturate(saturate(exp2(log2(mad(_815, -0.098961174f, mad(_814, 1.1519032f, (_813 * -0.052896854f)))) * 2.2f))), saturate(saturate(exp2(log2(mad(_815, 1.1510737f, mad(_814, -0.09804345f, (_813 * -0.052971635f)))) * 2.2f)))), float3(0.1f, 0.7f, 0.2f));
  _841 = _593 + -0.5f;
  _842 = _597 + -0.5f;
  _843 = _840 + -0.5f;
  _845 = _localToneMappingParams.z * -0.7213475f;
  _852 = exp2((_841 * _841) * _845);
  _853 = exp2((_842 * _842) * _845);
  _854 = exp2((_843 * _843) * _845);
  _856 = dot(float3(_852, _853, _854), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _868 = dot(float3(max(_347, 0.0f), max(_348, 0.0f), max(_349, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _870 = max(dot(float3(((_852 / _856) * _593), ((_853 / _856) * _597), ((_854 / _856) * _840)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _868;
  if (!(_868 > 0.007f)) {
    _879 = ((((_868 * _868) * 20408.16f) * (_870 + -1.0f)) + 1.0f);
  } else {
    _879 = _870;
  }
  _880 = _879 * _86;
  _881 = _879 * _87;
  _882 = _879 * _88;
  _916 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_880 * 1.70505f) - (_881 * 0.62179f)) - (_882 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _917 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_881 * 1.1408f) - (_880 * 0.13026f)) - (_882 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _918 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_880 * -0.024f) - (_881 * 0.12897f)) + (_882 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _919 = dot(float3(_916, _917, _918), float3(0.212671f, 0.71516f, 0.072169f));
  _926 = ((_916 - _919) * _powerParams.w) + _919;
  _927 = ((_917 - _919) * _powerParams.w) + _919;
  _928 = ((_918 - _919) * _powerParams.w) + _919;
  _947 = min(max(log2(mad(_928, 0.079223745f, mad(_927, 0.0784336f, (_926 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _948 = min(max(log2(mad(_928, 0.07916613f, mad(_927, 0.87846863f, (_926 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _949 = min(max(log2(mad(_928, 0.879143f, mad(_927, 0.0784336f, (_926 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _950 = _947 * 0.060606062f;
  _951 = _948 * 0.060606062f;
  _952 = _949 * 0.060606062f;
  _953 = _950 * _950;
  _954 = _951 * _951;
  _955 = _952 * _952;
  _1001 = min(0.0f, (-0.0f - (((_947 * 0.0072181816f) + ((_953 * 0.4298f) + (((_953 * _953) * ((31.96f - (_947 * 2.4327273f)) + (_953 * 15.5f))) - ((_947 * 0.41624245f) * _953)))) + -0.00232f)));
  _1002 = min(0.0f, (-0.0f - (((_948 * 0.0072181816f) + ((_954 * 0.4298f) + (((_954 * _954) * ((31.96f - (_948 * 2.4327273f)) + (_954 * 15.5f))) - ((_948 * 0.41624245f) * _954)))) + -0.00232f)));
  _1003 = min(0.0f, (-0.0f - (((_949 * 0.0072181816f) + ((_955 * 0.4298f) + (((_955 * _955) * ((31.96f - (_949 * 2.4327273f)) + (_955 * 15.5f))) - ((_949 * 0.41624245f) * _955)))) + -0.00232f)));
  _1004 = -0.0f - _1001;
  _1005 = -0.0f - _1002;
  _1006 = -0.0f - _1003;
  _1007 = dot(float3(_1004, _1005, _1006), float3(0.2126f, 0.7152f, 0.0722f));
  if (_239) {
    _1019 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _1020 = -0.79999995f / _1019;
    _1021 = -1.2f / _1019;
    _1022 = 0.20000005f / _1019;
    _1028 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _1031 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _1038 = (_1020 + 1.4f) + (_1031 * (-0.39999998f - _1020));
    _1039 = (_1021 + 1.6f) + (_1031 * (-0.6f - _1021));
    _1040 = (_1022 + 0.9f) + (_1031 * (0.5f - _1022));
    _1057 = (lerp(_1039, 1.2f, _1028));  // [sem: blended]
    _1058 = (lerp(_1038, 1.0f, _1028));  // [sem: blended]
    _1059 = (lerp(_1040, 1.4f, _1028));  // [sem: blended]
  } else {
    _1057 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    _1058 = 1.0f;  // [sem: blended]
    _1059 = 1.4f;  // [sem: blended]
  }
  _1069 = 1.0f - _1057;
  _1094 = ((exp2(log2(((saturate((_1001 * _1001) * _1004) * _1069) + _1057) * _1004) * _1058) - _1007) * _1059) + _1007;
  _1095 = ((exp2(log2(((saturate((_1002 * _1002) * _1005) * _1069) + _1057) * _1005) * _1058) - _1007) * _1059) + _1007;
  _1096 = ((exp2(log2(((saturate((_1003 * _1003) * _1006) * _1069) + _1057) * _1006) * _1058) - _1007) * _1059) + _1007;
  _1118 = max(saturate(exp2(log2(mad(_1096, -0.09902974f, mad(_1095, -0.09802088f, (_1094 * 1.196879f)))) * 2.2f)), 0.0f);
  _1119 = max(saturate(exp2(log2(mad(_1096, -0.098961174f, mad(_1095, 1.1519032f, (_1094 * -0.052896854f)))) * 2.2f)), 0.0f);
  _1120 = max(saturate(exp2(log2(mad(_1096, 1.1510737f, mad(_1095, -0.09804345f, (_1094 * -0.052971635f)))) * 2.2f)), 0.0f);
  _1122 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_1122.x < 1e-07f) || (_1122.x == 1.0f))) {
    _1130 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _1145 = exp2(log2(max(0.0f, _offsetParams.x)) * _powerParams.x);
    _1146 = exp2(log2(max(0.0f, _offsetParams.y)) * _powerParams.y);
    _1147 = exp2(log2(max(0.0f, _offsetParams.z)) * _powerParams.z);
    _1148 = dot(float3(_1145, _1146, _1147), float3(0.212671f, 0.71516f, 0.072169f));
    _1155 = ((_1145 - _1148) * _powerParams.w) + _1148;
    _1156 = ((_1146 - _1148) * _powerParams.w) + _1148;
    _1157 = ((_1147 - _1148) * _powerParams.w) + _1148;
    _1176 = min(max(log2(mad(_1157, 0.079223745f, mad(_1156, 0.0784336f, (_1155 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1177 = min(max(log2(mad(_1157, 0.07916613f, mad(_1156, 0.87846863f, (_1155 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1178 = min(max(log2(mad(_1157, 0.879143f, mad(_1156, 0.0784336f, (_1155 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1179 = _1176 * 0.060606062f;
    _1180 = _1177 * 0.060606062f;
    _1181 = _1178 * 0.060606062f;
    _1182 = _1179 * _1179;
    _1183 = _1180 * _1180;
    _1184 = _1181 * _1181;
    _1230 = min(0.0f, (-0.0f - (((_1176 * 0.0072181816f) + ((_1182 * 0.4298f) + (((_1182 * _1182) * ((31.96f - (_1176 * 2.4327273f)) + (_1182 * 15.5f))) - ((_1176 * 0.41624245f) * _1182)))) + -0.00232f)));
    _1231 = min(0.0f, (-0.0f - (((_1177 * 0.0072181816f) + ((_1183 * 0.4298f) + (((_1183 * _1183) * ((31.96f - (_1177 * 2.4327273f)) + (_1183 * 15.5f))) - ((_1177 * 0.41624245f) * _1183)))) + -0.00232f)));
    _1232 = min(0.0f, (-0.0f - (((_1178 * 0.0072181816f) + ((_1184 * 0.4298f) + (((_1184 * _1184) * ((31.96f - (_1178 * 2.4327273f)) + (_1184 * 15.5f))) - ((_1178 * 0.41624245f) * _1184)))) + -0.00232f)));
    _1233 = -0.0f - _1230;
    _1234 = -0.0f - _1231;
    _1235 = -0.0f - _1232;
    _1236 = dot(float3(_1233, _1234, _1235), float3(0.2126f, 0.7152f, 0.0722f));
    if (_239) {
      _1248 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1249 = -0.79999995f / _1248;
      _1250 = -1.2f / _1248;
      _1251 = 0.20000005f / _1248;
      _1257 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1260 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1267 = (_1249 + 1.4f) + (_1260 * (-0.39999998f - _1249));
      _1268 = (_1250 + 1.6f) + (_1260 * (-0.6f - _1250));
      _1269 = (_1251 + 0.9f) + (_1260 * (0.5f - _1251));
      _1286 = (lerp(_1268, 1.2f, _1257));  // [sem: blended]
      _1287 = (lerp(_1267, 1.0f, _1257));  // [sem: blended]
      _1288 = (lerp(_1269, 1.4f, _1257));  // [sem: blended]
    } else {
      _1286 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _1287 = 1.0f;  // [sem: blended]
      _1288 = 1.4f;  // [sem: blended]
    }
    _1295 = saturate((_1230 * _1230) * _1233);  // [sem: expr_sat]
    _1296 = saturate((_1231 * _1231) * _1234);  // [sem: expr_sat]
    _1297 = saturate((_1232 * _1232) * _1235);  // [sem: expr_sat]
    _1298 = 1.0f - _1286;
    _1323 = ((exp2(log2(((_1295 * _1298) + _1286) * _1233) * _1287) - _1236) * _1288) + _1236;
    _1324 = ((exp2(log2(((_1296 * _1298) + _1286) * _1234) * _1287) - _1236) * _1288) + _1236;
    _1325 = ((exp2(log2(((_1297 * _1298) + _1286) * _1235) * _1287) - _1236) * _1288) + _1236;
    _1345 = saturate(exp2(log2(mad(_1325, -0.098961174f, mad(_1324, 1.1519032f, (_1323 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    if (_239) {
      _1358 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1359 = -0.79999995f / _1358;
      _1360 = -1.2f / _1358;
      _1361 = 0.20000005f / _1358;
      _1367 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1370 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1377 = (_1359 + 1.4f) + (_1370 * (-0.39999998f - _1359));
      _1378 = (_1360 + 1.6f) + (_1370 * (-0.6f - _1360));
      _1379 = (_1361 + 0.9f) + (_1370 * (0.5f - _1361));
      _1396 = (lerp(_1378, 1.2f, _1367));  // [sem: blended]
      _1397 = (lerp(_1377, 1.0f, _1367));  // [sem: blended]
      _1398 = (lerp(_1379, 1.4f, _1367));  // [sem: blended]
    } else {
      _1396 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _1397 = 1.0f;  // [sem: blended]
      _1398 = 1.4f;  // [sem: blended]
    }
    _1399 = 1.0f - _1396;
    _1424 = ((exp2(log2(((_1399 * _1295) + _1396) * _1233) * _1397) - _1236) * _1398) + _1236;
    _1425 = ((exp2(log2(((_1399 * _1296) + _1396) * _1234) * _1397) - _1236) * _1398) + _1236;
    _1426 = ((exp2(log2(((_1399 * _1297) + _1396) * _1235) * _1397) - _1236) * _1398) + _1236;
    _1446 = saturate(exp2(log2(mad(_1426, -0.098961174f, mad(_1425, 1.1519032f, (_1424 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    if (_239) {
      _1459 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1460 = -0.79999995f / _1459;
      _1461 = -1.2f / _1459;
      _1462 = 0.20000005f / _1459;
      _1468 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1471 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1478 = (_1460 + 1.4f) + (_1471 * (-0.39999998f - _1460));
      _1479 = (_1461 + 1.6f) + (_1471 * (-0.6f - _1461));
      _1480 = (_1462 + 0.9f) + (_1471 * (0.5f - _1462));
      _1497 = (lerp(_1480, 1.4f, _1468));  // [sem: blended]
      _1498 = (lerp(_1478, 1.0f, _1468));  // [sem: blended]
      _1499 = (lerp(_1479, 1.2f, _1468));  // [sem: blended]
    } else {
      _1497 = 1.4f;  // [sem: blended]
      _1498 = 1.0f;  // [sem: blended]
      _1499 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _1500 = 1.0f - _1499;
    _1525 = ((exp2(log2(((_1500 * _1295) + _1499) * _1233) * _1498) - _1236) * _1497) + _1236;
    _1526 = ((exp2(log2(((_1500 * _1296) + _1499) * _1234) * _1498) - _1236) * _1497) + _1236;
    _1527 = ((exp2(log2(((_1500 * _1297) + _1499) * _1235) * _1498) - _1236) * _1497) + _1236;
    _1547 = saturate(exp2(log2(mad(_1527, -0.098961174f, mad(_1526, 1.1519032f, (_1525 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    if (_239) {
      _1560 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1561 = -0.79999995f / _1560;
      _1562 = -1.2f / _1560;
      _1563 = 0.20000005f / _1560;
      _1569 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1572 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1579 = (_1561 + 1.4f) + (_1572 * (-0.39999998f - _1561));
      _1580 = (_1562 + 1.6f) + (_1572 * (-0.6f - _1562));
      _1581 = (_1563 + 0.9f) + (_1572 * (0.5f - _1563));
      _1598 = (lerp(_1580, 1.2f, _1569));  // [sem: blended]
      _1599 = (lerp(_1579, 1.0f, _1569));  // [sem: blended]
      _1600 = (lerp(_1581, 1.4f, _1569));  // [sem: blended]
    } else {
      _1598 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _1599 = 1.0f;  // [sem: blended]
      _1600 = 1.4f;  // [sem: blended]
    }
    _1601 = 1.0f - _1598;
    _1626 = ((exp2(log2(((_1601 * _1295) + _1598) * _1233) * _1599) - _1236) * _1600) + _1236;
    _1627 = ((exp2(log2(((_1601 * _1296) + _1598) * _1234) * _1599) - _1236) * _1600) + _1236;
    _1628 = ((exp2(log2(((_1601 * _1297) + _1598) * _1235) * _1599) - _1236) * _1600) + _1236;
    _1648 = saturate(exp2(log2(mad(_1628, -0.098961174f, mad(_1627, 1.1519032f, (_1626 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1657 = max(max(_1119, _1345), max(max(_1446, _1547), _1648));
    _1664 = sqrt(saturate(min(min(min(_1119, _1345), min(min(_1446, _1547), _1648)), (1.0f - _1657)) * (1.0f / _1657))) * (-1.0f / (((1.0f - _1130) * 8.0f) + (_1130 * 5.0f)));
    _1667 = 1.0f / ((_1664 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _1690 = saturate(((_1664 * (((saturate(exp2(log2(mad(_1426, -0.09902974f, mad(_1425, -0.09802088f, (_1424 * 1.196879f)))) * 2.2f)) + saturate(exp2(log2(mad(_1325, -0.09902974f, mad(_1324, -0.09802088f, (_1323 * 1.196879f)))) * 2.2f))) + saturate(exp2(log2(mad(_1527, -0.09902974f, mad(_1526, -0.09802088f, (_1525 * 1.196879f)))) * 2.2f))) + saturate(exp2(log2(mad(_1628, -0.09902974f, mad(_1627, -0.09802088f, (_1626 * 1.196879f)))) * 2.2f)))) + _1118) * _1667);
    _1691 = saturate(((_1664 * (((_1446 + _1345) + _1547) + _1648)) + _1119) * _1667);  // [sem: expr_sat]
    // [sem: expr_sat]
    _1692 = saturate(((_1664 * (((saturate(exp2(log2(mad(_1426, 1.1510737f, mad(_1425, -0.09804345f, (_1424 * -0.052971635f)))) * 2.2f)) + saturate(exp2(log2(mad(_1325, 1.1510737f, mad(_1324, -0.09804345f, (_1323 * -0.052971635f)))) * 2.2f))) + saturate(exp2(log2(mad(_1527, 1.1510737f, mad(_1526, -0.09804345f, (_1525 * -0.052971635f)))) * 2.2f))) + saturate(exp2(log2(mad(_1628, 1.1510737f, mad(_1627, -0.09804345f, (_1626 * -0.052971635f)))) * 2.2f)))) + _1120) * _1667);
  } else {
    _1690 = _1118;  // [sem: expr_sat]
    _1691 = _1119;  // [sem: expr_sat]
    _1692 = _1120;  // [sem: expr_sat]
  }
  _1699 = 1.0f - abs(_etcParams.w);
  _1703 = saturate(_etcParams.w);  // [sem: expr_sat]
  _1704 = (_1699 * saturate(_1690)) + _1703;
  _1705 = (_1699 * saturate(_1691)) + _1703;
  _1706 = (_1699 * saturate(_1692)) + _1703;
  if (_colorGradingParams.w > 0.0f) {
    _1711 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _1728 = (((max(0.0f, (1.0f - _1704)) - _1704) * _1711) + _1704);
    _1729 = (((max(0.0f, (1.0f - _1705)) - _1705) * _1711) + _1705);
    _1730 = (((max(0.0f, (1.0f - _1706)) - _1706) * _1711) + _1706);
  } else {
    _1728 = _1704;
    _1729 = _1705;
    _1730 = _1706;
  }
  _1736 = _userImageAdjust.y + 1.0f;
  _1740 = _userImageAdjust.x + 0.5f;
  _1741 = ((_1728 + -0.5f) * _1736) + _1740;
  _1742 = ((_1729 + -0.5f) * _1736) + _1740;
  _1743 = ((_1730 + -0.5f) * _1736) + _1740;
  _1773 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _1784 = (TEXCOORD.x * 2.0f) + -1.0f;
  _1785 = TEXCOORD.y * 2.0f;
  _1786 = 1.0f - _1785;
  _1814 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _1786, ((_projToPrevProj[3].x) * _1784))) + (_projToPrevProj[3].w);
  _1817 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _1786, ((_projToPrevProj[0].x) * _1784))) + (_projToPrevProj[0].w)) / _1814) - _1784;
  _1818 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _1786, ((_projToPrevProj[1].x) * _1784))) + (_projToPrevProj[1].w)) / _1814) - _1786;
  if (_localToneMappingParams.w > 0.0f) {
    _1831 = saturate(1.0f - (sqrt((_1818 * _1818) + (_1817 * _1817)) * 2.0f));  // [sem: expr_sat]
  } else {
    _1831 = 1.0f;  // [sem: expr_sat]
  }
  _1834 = abs(_1784);
  _1835 = abs(_1785 + -1.0f);
  _1839 = saturate(1.0f - ((_1831 * _postProcessParams.x) * dot(float2(_1834, _1835), float2(_1834, _1835))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _1853 = (_1839 * exp2(log2(saturate(mad(_colorBlind0.z, _1743, mad(_colorBlind0.y, _1742, (_colorBlind0.x * _1741))))) * _1773));
      _1854 = (_1839 * exp2(log2(saturate(mad(_colorBlind1.z, _1743, mad(_colorBlind1.y, _1742, (_colorBlind1.x * _1741))))) * _1773));
      _1855 = (_1839 * exp2(log2(saturate(mad(_colorBlind2.z, _1743, mad(_colorBlind2.y, _1742, (_colorBlind2.x * _1741))))) * _1773));
    } else {
      _1853 = 0.0f;
      _1854 = 0.0f;
      _1855 = 0.0f;
    }
  } else {
    _1853 = 0.0f;
    _1854 = 0.0f;
    _1855 = 0.0f;
  }
  SV_Target.x = _1853;
  SV_Target.y = _1854;
  SV_Target.z = _1855;
  SV_Target.w = _18.w;
  return SV_Target;
}
