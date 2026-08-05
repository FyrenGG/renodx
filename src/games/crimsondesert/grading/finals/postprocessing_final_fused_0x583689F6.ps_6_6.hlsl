Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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
  float _283;
  float _319;
  float _330;
  float _661;
  float _697;
  float _708;
  float _1046;
  float _1082;
  float _1093;
  float _1288;
  float _1465;
  float _1501;
  float _1512;
  float _1838;
  float _1874;
  float _1885;
  float _2035;
  float _2071;
  float _2082;
  float _2231;
  float _2267;
  float _2278;
  float _2427;
  float _2463;
  float _2474;
  float _2701;
  float _2702;
  float _2703;
  float _2739;
  float _2740;
  float _2741;
  float _2810;
  float _2867;
  float _2868;
  float _2869;
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
  float _149;
  float _153;
  float _157;
  float _160;
  float _163;
  float _166;
  float _169;
  float _172;
  float _175;
  float _176;
  float _178;
  float _180;
  float _182;
  float _191;
  float _197;
  float _203;
  float _209;
  float _215;
  float _221;
  float _225;
  float _228;
  float _231;
  float _234;
  float _236;
  float _243;
  float _256;
  float _257;
  float _258;
  float _259;
  float _263;
  float _274;
  float _284;
  float _285;
  float _286;
  float _287;
  float _294;
  float _297;
  float _299;
  bool _300;
  bool _301;
  bool _302;
  bool _303;
  float _314;
  float _321;
  float _334;
  float _338;
  float _344;
  float _349;
  float _354;
  float _359;
  float _360;
  float _361;
  float _362;
  float _364;
  float _366;
  float _368;
  float _375;
  float _382;
  float _389;
  float _393;
  float _397;
  float _401;
  float _417;
  float _433;
  float _449;
  float _455;
  float _461;
  float _467;
  float _472;
  float _477;
  float _482;
  float _485;
  float _486;
  float _487;
  float _499;
  float _511;
  float _523;
  float _524;
  float _527;
  float _531;
  float _535;
  float _538;
  float _541;
  float _544;
  float _547;
  float _550;
  float _553;
  float _554;
  float _556;
  float _558;
  float _560;
  float _569;
  float _575;
  float _581;
  float _587;
  float _593;
  float _599;
  float _603;
  float _606;
  float _609;
  float _612;
  float _614;
  float _621;
  float _634;
  float _635;
  float _636;
  float _637;
  float _641;
  float _652;
  float _662;
  float _663;
  float _664;
  float _665;
  float _672;
  float _675;
  float _677;
  bool _678;
  bool _679;
  bool _680;
  bool _681;
  float _692;
  float _699;
  float _712;
  float _716;
  float _722;
  float _727;
  float _732;
  float _737;
  float _738;
  float _739;
  float _740;
  float _742;
  float _744;
  float _746;
  float _753;
  float _760;
  float _767;
  float _771;
  float _775;
  float _779;
  float _795;
  float _811;
  float _827;
  float _833;
  float _839;
  float _845;
  float _864;
  float _868;
  float _870;
  float _871;
  float _872;
  float _884;
  float _896;
  float _908;
  float _909;
  float _912;
  float _916;
  float _920;
  float _923;
  float _926;
  float _929;
  float _932;
  float _935;
  float _938;
  float _939;
  float _941;
  float _943;
  float _945;
  float _954;
  float _960;
  float _966;
  float _972;
  float _978;
  float _984;
  float _988;
  float _991;
  float _994;
  float _997;
  float _999;
  float _1006;
  float _1019;
  float _1020;
  float _1021;
  float _1022;
  float _1026;
  float _1037;
  float _1047;
  float _1048;
  float _1049;
  float _1050;
  float _1057;
  float _1060;
  float _1062;
  bool _1063;
  bool _1064;
  bool _1065;
  bool _1066;
  float _1077;
  float _1084;
  float _1097;
  float _1101;
  float _1107;
  float _1112;
  float _1117;
  float _1122;
  float _1123;
  float _1124;
  float _1125;
  float _1127;
  float _1129;
  float _1131;
  float _1138;
  float _1145;
  float _1152;
  float _1156;
  float _1160;
  float _1164;
  float _1180;
  float _1196;
  float _1212;
  float _1218;
  float _1224;
  float _1230;
  float _1249;
  float _1250;
  float _1251;
  float _1252;
  float _1254;
  float _1257;
  float _1260;
  float _1263;
  float _1265;
  float _1270;
  float _1279;
  float _1289;
  float _1290;
  float _1291;
  float _1303;
  float _1315;
  float _1327;
  float _1328;
  float _1331;
  float _1335;
  float _1339;
  float _1342;
  float _1345;
  float _1348;
  float _1351;
  float _1354;
  float _1357;
  float _1358;
  float _1360;
  float _1362;
  float _1364;
  float _1373;
  float _1379;
  float _1385;
  float _1391;
  float _1397;
  float _1403;
  float _1407;
  float _1410;
  float _1413;
  float _1416;
  float _1418;
  float _1425;
  float _1438;
  float _1439;
  float _1440;
  float _1441;
  float _1445;
  float _1456;
  float _1466;
  float _1467;
  float _1468;
  float _1469;
  float _1476;
  float _1479;
  float _1481;
  bool _1482;
  bool _1483;
  bool _1484;
  bool _1485;
  float _1496;
  float _1503;
  float _1516;
  float _1520;
  float _1526;
  float _1531;
  float _1536;
  float _1541;
  float _1542;
  float _1543;
  float _1544;
  float _1546;
  float _1548;
  float _1550;
  float _1557;
  float _1564;
  float _1571;
  float _1575;
  float _1579;
  float _1583;
  float _1599;
  float _1615;
  float _1631;
  float _1637;
  float _1643;
  float _1649;
  float _1655;
  float _1661;
  float _1667;
  float _1670;
  float _1679;
  float _1687;
  float _1693;
  float _1699;
  float _1700;
  float _1704;
  float _1708;
  float _1712;
  float _1715;
  float _1718;
  float _1721;
  float _1724;
  float _1727;
  float _1730;
  float _1731;
  float _1733;
  float _1735;
  float _1737;
  float _1746;
  float _1752;
  float _1758;
  float _1764;
  float _1770;
  float _1776;
  float _1780;
  float _1783;
  float _1786;
  float _1789;
  float _1791;
  float _1798;
  float _1811;
  float _1812;
  float _1813;
  float _1814;
  float _1818;
  float _1829;
  bool _1830;
  float _1839;
  float _1840;
  float _1841;
  float _1842;
  float _1849;
  float _1852;
  float _1854;
  bool _1855;
  bool _1856;
  bool _1857;
  bool _1858;
  float _1869;
  float _1876;
  float _1889;
  float _1893;
  float _1894;
  float _1899;
  float _1904;
  float _1909;
  float _1914;
  float _1915;
  float _1916;
  float _1917;
  float _1919;
  float _1921;
  float _1923;
  float _1930;
  float _1937;
  float _1944;
  float _1948;
  float _1952;
  float _1956;
  float _1972;
  float _1988;
  float _2004;
  float _2010;
  float _2016;
  float _2022;
  float _2027;
  float _2036;
  float _2037;
  float _2038;
  float _2039;
  float _2046;
  float _2049;
  float _2051;
  bool _2052;
  bool _2053;
  bool _2054;
  bool _2055;
  float _2066;
  float _2073;
  float _2086;
  float _2090;
  float _2095;
  float _2100;
  float _2105;
  float _2110;
  float _2111;
  float _2112;
  float _2113;
  float _2115;
  float _2117;
  float _2119;
  float _2126;
  float _2133;
  float _2140;
  float _2144;
  float _2148;
  float _2152;
  float _2168;
  float _2184;
  float _2200;
  float _2206;
  float _2212;
  float _2218;
  float _2223;
  float _2232;
  float _2233;
  float _2234;
  float _2235;
  float _2242;
  float _2245;
  float _2247;
  bool _2248;
  bool _2249;
  bool _2250;
  bool _2251;
  float _2262;
  float _2269;
  float _2282;
  float _2286;
  float _2291;
  float _2296;
  float _2301;
  float _2306;
  float _2307;
  float _2308;
  float _2309;
  float _2311;
  float _2313;
  float _2315;
  float _2322;
  float _2329;
  float _2336;
  float _2340;
  float _2344;
  float _2348;
  float _2364;
  float _2380;
  float _2396;
  float _2402;
  float _2408;
  float _2414;
  float _2419;
  float _2428;
  float _2429;
  float _2430;
  float _2431;
  float _2438;
  float _2441;
  float _2443;
  bool _2444;
  bool _2445;
  bool _2446;
  bool _2447;
  float _2458;
  float _2465;
  float _2478;
  float _2482;
  float _2487;
  float _2492;
  float _2497;
  float _2502;
  float _2503;
  float _2504;
  float _2505;
  float _2507;
  float _2509;
  float _2511;
  float _2518;
  float _2525;
  float _2532;
  float _2536;
  float _2540;
  float _2544;
  float _2560;
  float _2576;
  float _2592;
  float _2598;
  float _2604;
  float _2610;
  float _2615;
  float _2619;
  float _2635;
  float _2638;
  float _2707;
  float _2708;
  float _2711;
  float _2714;
  float _2717;
  float _2722;
  float _2744;
  float _2746;
  float _2749;
  float _2752;
  float _2755;
  float _2761;
  float _2763;
  float _2764;
  float _2765;
  float _2777;
  float _2787;
  float _2797;
  float _2811;
  float _2813;
  float _2820;
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
  _149 = ((_116 - _145) * _powerParams.w) + _145;
  _153 = (lerp(_145, _130, _powerParams.w)) * 3.0f;  // [sem: blended]
  _157 = (lerp(_145, _144, _powerParams.w)) * 3.0f;  // [sem: blended]
  _160 = mad(-1.7106533e-05f, _157, mad(0.00040110573f, _153, (_149 * 3.0009599f)));
  _163 = mad(-2.34209e-05f, _157, mad(0.9997657f, _153, (_149 * -6.0908147e-05f)));
  _166 = mad(1.0005832f, _157, mad(8.34018e-05f, _153, (_149 * 4.855916e-05f)));
  _169 = mad(0.04736635f, _166, mad(0.33951214f, _163, (_160 * 0.61319155f)));
  _172 = mad(0.013450007f, _166, mad(0.91633576f, _163, (_160 * 0.07020692f)));
  _175 = mad(0.8696068f, _166, mad(0.1095673f, _163, (_160 * 0.020618873f)));
  _176 = dot(float3(_169, _172, _175), float3(0.27222872f, 0.67408174f, 0.053689517f));
  _178 = (_169 / _176) + -1.0f;
  _180 = (_172 / _176) + -1.0f;
  _182 = (_175 / _176) + -1.0f;
  _191 = (1.0f - exp2(dot(float3(_178, _180, _182), float3(_178, _180, _182)) * -4.0f)) * (1.0f - exp2((_176 * _176) * -4.0f));
  _197 = ((mad(-0.06368284f, _175, mad(-0.3292913f, _172, (_169 * 1.3704128f))) - _169) * _191) + _169;
  _203 = ((mad(-0.010861567f, _175, mad(1.0970908f, _172, (_169 * -0.08343426f))) - _172) * _191) + _172;
  _209 = ((mad(1.2036945f, _175, mad(-0.098625645f, _172, (_169 * -0.02579326f))) - _175) * _191) + _175;
  _215 = ((mad(0.061360642f, _209, mad(-4.5401976e-09f, _203, (_197 * 0.9386394f))) - _197) * 0.6f) + _197;
  _221 = ((mad(0.1692059f, _209, mad(0.8307942f, _203, (_197 * 6.775372e-08f))) - _203) * 0.6f) + _203;
  _225 = (mad(-2.3283064e-10f, _203, (_197 * -9.313226e-10f)) * 0.6f) + _209;
  _228 = mad(0.16386905f, _225, mad(0.14067869f, _221, (_215 * 0.6954522f)));
  _231 = mad(0.095534325f, _225, mad(0.8596711f, _221, (_215 * 0.04479458f)));
  _234 = mad(1.0015007f, _225, mad(0.00402521f, _221, (_215 * -0.005525883f)));
  _236 = max(max(_228, _231), _234);
  _243 = (max(_236, 1e-10f) - max(min(min(_228, _231), _234), 1e-10f)) / max(_236, 0.01f);
  _256 = ((_231 + _228) + _234) + (sqrt((((_234 - _231) * _234) + ((_231 - _228) * _231)) + ((_228 - _234) * _228)) * 1.75f);
  _257 = _256 * 0.33333334f;
  _258 = _243 + -0.4f;
  _259 = _258 * 5.0f;
  _263 = max((1.0f - abs(_258 * 2.5f)), 0.0f);
  _274 = ((((float)((int)((int)((int)(uint)((int)(_259 > 0.0f))) - (int)((int)(uint)((int)(_259 < 0.0f)))))) * (1.0f - (_263 * _263))) + 1.0f) * 0.025f;
  if (!(_257 <= 0.053333335f)) {
    if (!(_257 >= 0.16f)) {
      _283 = (((0.24f / _256) + -0.5f) * _274);
    } else {
      _283 = 0.0f;
    }
  } else {
    _283 = _274;
  }
  _284 = _283 + 1.0f;
  _285 = _284 * _228;
  _286 = _284 * _231;
  _287 = _284 * _234;
  if (!((_285 == _286) && (_286 == _287))) {
    _294 = ((_285 * 2.0f) - _286) - _287;
    _297 = ((_231 - _234) * 1.7320508f) * _284;
    _299 = atan(_297 / _294);
    _300 = (_294 < 0.0f);
    _301 = (_294 == 0.0f);
    _302 = (_297 >= 0.0f);
    _303 = (_297 < 0.0f);
    _314 = select((_302 && _301), 90.0f, select((_303 && _301), -90.0f, (select((_303 && _300), (_299 + -3.1415927f), select((_302 && _300), (_299 + 3.1415927f), _299)) * 57.295776f)));
    if (_314 < 0.0f) {
      _319 = (_314 + 360.0f);
    } else {
      _319 = _314;
    }
  } else {
    _319 = 0.0f;
  }
  _321 = min(max(_319, 0.0f), 360.0f);
  if (_321 < -180.0f) {
    _330 = (_321 + 360.0f);
  } else {
    if (_321 > 180.0f) {
      _330 = (_321 + -360.0f);
    } else {
      _330 = _321;
    }
  }
  _334 = saturate(1.0f - abs(_330 * 0.014814815f));  // [sem: expr_sat]
  _338 = (_334 * _334) * (3.0f - (_334 * 2.0f));
  _344 = ((_338 * _338) * ((_243 * 0.18f) * (0.03f - _285))) + _285;
  _349 = log2(max(0.0f, mad(-0.21492857f, _287, mad(-0.23651075f, _286, (_344 * 1.4514393f)))));
  _354 = log2(max(0.0f, mad(-0.09967592f, _287, mad(1.1762297f, _286, (_344 * -0.07655378f)))));
  _359 = log2(max(0.0f, mad(0.9977163f, _287, mad(-0.0060324497f, _286, (_344 * 0.008316148f)))));
  _360 = _349 * 0.30103f;
  _361 = _354 * 0.30103f;
  _362 = _359 * 0.30103f;
  _364 = (_349 * 0.2739373f) + 0.7790625f;
  _366 = (_354 * 0.2739373f) + 0.7790625f;
  _368 = (_359 * 0.2739373f) + 0.7790625f;
  _375 = select((_360 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_349 * 1.43712f)) + 1.0f)), _364);
  _382 = select((_361 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_354 * 1.43712f)) + 1.0f)), _366);
  _389 = select((_362 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_359 * 1.43712f)) + 1.0f)), _368);
  _393 = 1.0f - saturate(-0.78987026f - (_349 * 0.9446112f));
  _397 = 1.0f - saturate(-0.78987026f - (_354 * 0.9446112f));
  _401 = 1.0f - saturate(-0.78987026f - (_359 * 0.9446112f));
  _417 = max(0.0f, ((((_393 * _393) * (3.0f - (_393 * 2.0f))) * (select((_360 > -0.57039833f), (1.04f - (1.56f / (exp2((_349 * 1.013354f) + 1.9201254f) + 1.0f))), _364) - _375)) + _375));
  _433 = max(0.0f, ((((_397 * _397) * (3.0f - (_397 * 2.0f))) * (select((_361 > -0.57039833f), (1.04f - (1.56f / (exp2((_354 * 1.013354f) + 1.9201254f) + 1.0f))), _366) - _382)) + _382));
  _449 = max(0.0f, ((((_401 * _401) * (3.0f - (_401 * 2.0f))) * (select((_362 > -0.57039833f), (1.04f - (1.56f / (exp2((_359 * 1.013354f) + 1.9201254f) + 1.0f))), _368) - _389)) + _389));
  _455 = ((mad(-0.06537104f, _449, mad(1.4518155e-06f, _433, (_417 * 1.0653747f))) - _417) * 0.6f) + _417;
  _461 = ((mad(-0.2036677f, _449, mad(1.2036635f, _433, (_417 * -2.5716145e-07f))) - _433) * 0.6f) + _433;
  _467 = ((mad(0.99999964f, _449, mad(2.0954758e-08f, _433, (_417 * 1.8626451e-08f))) - _449) * 0.6f) + _449;
  _472 = saturate(max(0.0f, mad(-0.08325848f, _467, mad(-0.6217906f, _461, (_455 * 1.7050515f)))));  // [sem: expr_sat]
  _477 = saturate(max(0.0f, mad(-0.010548528f, _467, mad(1.1408027f, _461, (_455 * -0.13025719f)))));  // [sem: expr_sat]
  _482 = saturate(max(0.0f, mad(1.1529719f, _467, mad(-0.12896876f, _461, (_455 * -0.024003278f)))));  // [sem: expr_sat]
  _485 = _localToneMappingParams.x * _88;
  _486 = _localToneMappingParams.x * _87;
  _487 = _localToneMappingParams.x * _86;
  _499 = exp2(log2(max(0.0f, ((max(0.0f, (((_485 * 1.70505f) - (_486 * 0.62179f)) - (_487 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _511 = exp2(log2(max(0.0f, ((max(0.0f, (((_486 * 1.1408f) - (_485 * 0.13026f)) - (_487 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _523 = exp2(log2(max(0.0f, ((max(0.0f, (((_485 * -0.024f) - (_486 * 0.12897f)) + (_487 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _524 = dot(float3(_499, _511, _523), float3(0.212671f, 0.71516f, 0.072169f));
  _527 = ((_499 - _524) * _powerParams.w) + _524;
  _531 = (lerp(_524, _511, _powerParams.w)) * 3.0f;  // [sem: blended]
  _535 = (lerp(_524, _523, _powerParams.w)) * 3.0f;  // [sem: blended]
  _538 = mad(-1.7106533e-05f, _535, mad(0.00040110573f, _531, (_527 * 3.0009599f)));
  _541 = mad(-2.34209e-05f, _535, mad(0.9997657f, _531, (_527 * -6.0908147e-05f)));
  _544 = mad(1.0005832f, _535, mad(8.34018e-05f, _531, (_527 * 4.855916e-05f)));
  _547 = mad(0.04736635f, _544, mad(0.33951214f, _541, (_538 * 0.61319155f)));
  _550 = mad(0.013450007f, _544, mad(0.91633576f, _541, (_538 * 0.07020692f)));
  _553 = mad(0.8696068f, _544, mad(0.1095673f, _541, (_538 * 0.020618873f)));
  _554 = dot(float3(_547, _550, _553), float3(0.27222872f, 0.67408174f, 0.053689517f));
  _556 = (_547 / _554) + -1.0f;
  _558 = (_550 / _554) + -1.0f;
  _560 = (_553 / _554) + -1.0f;
  _569 = (1.0f - exp2(dot(float3(_556, _558, _560), float3(_556, _558, _560)) * -4.0f)) * (1.0f - exp2((_554 * _554) * -4.0f));
  _575 = ((mad(-0.06368284f, _553, mad(-0.3292913f, _550, (_547 * 1.3704128f))) - _547) * _569) + _547;
  _581 = ((mad(-0.010861567f, _553, mad(1.0970908f, _550, (_547 * -0.08343426f))) - _550) * _569) + _550;
  _587 = ((mad(1.2036945f, _553, mad(-0.098625645f, _550, (_547 * -0.02579326f))) - _553) * _569) + _553;
  _593 = ((mad(0.061360642f, _587, mad(-4.5401976e-09f, _581, (_575 * 0.9386394f))) - _575) * 0.6f) + _575;
  _599 = ((mad(0.1692059f, _587, mad(0.8307942f, _581, (_575 * 6.775372e-08f))) - _581) * 0.6f) + _581;
  _603 = (mad(-2.3283064e-10f, _581, (_575 * -9.313226e-10f)) * 0.6f) + _587;
  _606 = mad(0.16386905f, _603, mad(0.14067869f, _599, (_593 * 0.6954522f)));
  _609 = mad(0.095534325f, _603, mad(0.8596711f, _599, (_593 * 0.04479458f)));
  _612 = mad(1.0015007f, _603, mad(0.00402521f, _599, (_593 * -0.005525883f)));
  _614 = max(max(_606, _609), _612);
  _621 = (max(_614, 1e-10f) - max(min(min(_606, _609), _612), 1e-10f)) / max(_614, 0.01f);
  _634 = ((_609 + _606) + _612) + (sqrt((((_612 - _609) * _612) + ((_609 - _606) * _609)) + ((_606 - _612) * _606)) * 1.75f);
  _635 = _634 * 0.33333334f;
  _636 = _621 + -0.4f;
  _637 = _636 * 5.0f;
  _641 = max((1.0f - abs(_636 * 2.5f)), 0.0f);
  _652 = ((((float)((int)((int)((int)(uint)((int)(_637 > 0.0f))) - (int)((int)(uint)((int)(_637 < 0.0f)))))) * (1.0f - (_641 * _641))) + 1.0f) * 0.025f;
  if (!(_635 <= 0.053333335f)) {
    if (!(_635 >= 0.16f)) {
      _661 = (((0.24f / _634) + -0.5f) * _652);
    } else {
      _661 = 0.0f;
    }
  } else {
    _661 = _652;
  }
  _662 = _661 + 1.0f;
  _663 = _662 * _606;
  _664 = _662 * _609;
  _665 = _662 * _612;
  if (!((_663 == _664) && (_664 == _665))) {
    _672 = ((_663 * 2.0f) - _664) - _665;
    _675 = ((_609 - _612) * 1.7320508f) * _662;
    _677 = atan(_675 / _672);
    _678 = (_672 < 0.0f);
    _679 = (_672 == 0.0f);
    _680 = (_675 >= 0.0f);
    _681 = (_675 < 0.0f);
    _692 = select((_680 && _679), 90.0f, select((_681 && _679), -90.0f, (select((_681 && _678), (_677 + -3.1415927f), select((_680 && _678), (_677 + 3.1415927f), _677)) * 57.295776f)));
    if (_692 < 0.0f) {
      _697 = (_692 + 360.0f);
    } else {
      _697 = _692;
    }
  } else {
    _697 = 0.0f;
  }
  _699 = min(max(_697, 0.0f), 360.0f);
  if (_699 < -180.0f) {
    _708 = (_699 + 360.0f);
  } else {
    if (_699 > 180.0f) {
      _708 = (_699 + -360.0f);
    } else {
      _708 = _699;
    }
  }
  _712 = saturate(1.0f - abs(_708 * 0.014814815f));  // [sem: expr_sat]
  _716 = (_712 * _712) * (3.0f - (_712 * 2.0f));
  _722 = ((_716 * _716) * ((_621 * 0.18f) * (0.03f - _663))) + _663;
  _727 = log2(max(0.0f, mad(-0.21492857f, _665, mad(-0.23651075f, _664, (_722 * 1.4514393f)))));
  _732 = log2(max(0.0f, mad(-0.09967592f, _665, mad(1.1762297f, _664, (_722 * -0.07655378f)))));
  _737 = log2(max(0.0f, mad(0.9977163f, _665, mad(-0.0060324497f, _664, (_722 * 0.008316148f)))));
  _738 = _727 * 0.30103f;
  _739 = _732 * 0.30103f;
  _740 = _737 * 0.30103f;
  _742 = (_727 * 0.2739373f) + 0.7790625f;
  _744 = (_732 * 0.2739373f) + 0.7790625f;
  _746 = (_737 * 0.2739373f) + 0.7790625f;
  _753 = select((_738 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_727 * 1.43712f)) + 1.0f)), _742);
  _760 = select((_739 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_732 * 1.43712f)) + 1.0f)), _744);
  _767 = select((_740 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_737 * 1.43712f)) + 1.0f)), _746);
  _771 = 1.0f - saturate(-0.78987026f - (_727 * 0.9446112f));
  _775 = 1.0f - saturate(-0.78987026f - (_732 * 0.9446112f));
  _779 = 1.0f - saturate(-0.78987026f - (_737 * 0.9446112f));
  _795 = max(0.0f, ((((_771 * _771) * (3.0f - (_771 * 2.0f))) * (select((_738 > -0.57039833f), (1.04f - (1.56f / (exp2((_727 * 1.013354f) + 1.9201254f) + 1.0f))), _742) - _753)) + _753));
  _811 = max(0.0f, ((((_775 * _775) * (3.0f - (_775 * 2.0f))) * (select((_739 > -0.57039833f), (1.04f - (1.56f / (exp2((_732 * 1.013354f) + 1.9201254f) + 1.0f))), _744) - _760)) + _760));
  _827 = max(0.0f, ((((_779 * _779) * (3.0f - (_779 * 2.0f))) * (select((_740 > -0.57039833f), (1.04f - (1.56f / (exp2((_737 * 1.013354f) + 1.9201254f) + 1.0f))), _746) - _767)) + _767));
  _833 = ((mad(-0.06537104f, _827, mad(1.4518155e-06f, _811, (_795 * 1.0653747f))) - _795) * 0.6f) + _795;
  _839 = ((mad(-0.2036677f, _827, mad(1.2036635f, _811, (_795 * -2.5716145e-07f))) - _811) * 0.6f) + _811;
  _845 = ((mad(0.99999964f, _827, mad(2.0954758e-08f, _811, (_795 * 1.8626451e-08f))) - _827) * 0.6f) + _827;
  _864 = dot(float3(saturate(saturate(max(0.0f, mad(-0.08325848f, _845, mad(-0.6217906f, _839, (_833 * 1.7050515f)))))), saturate(saturate(max(0.0f, mad(-0.010548528f, _845, mad(1.1408027f, _839, (_833 * -0.13025719f)))))), saturate(saturate(max(0.0f, mad(1.1529719f, _845, mad(-0.12896876f, _839, (_833 * -0.024003278f))))))), float3(0.1f, 0.7f, 0.2f));
  _868 = dot(float3(saturate(_472), saturate(_477), saturate(_482)), float3(0.1f, 0.7f, 0.2f));
  _870 = _localToneMappingParams.y * _88;
  _871 = _localToneMappingParams.y * _87;
  _872 = _localToneMappingParams.y * _86;
  _884 = exp2(log2(max(0.0f, ((max(0.0f, (((_870 * 1.70505f) - (_871 * 0.62179f)) - (_872 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _896 = exp2(log2(max(0.0f, ((max(0.0f, (((_871 * 1.1408f) - (_870 * 0.13026f)) - (_872 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _908 = exp2(log2(max(0.0f, ((max(0.0f, (((_870 * -0.024f) - (_871 * 0.12897f)) + (_872 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _909 = dot(float3(_884, _896, _908), float3(0.212671f, 0.71516f, 0.072169f));
  _912 = ((_884 - _909) * _powerParams.w) + _909;
  _916 = (lerp(_909, _896, _powerParams.w)) * 3.0f;  // [sem: blended]
  _920 = (lerp(_909, _908, _powerParams.w)) * 3.0f;  // [sem: blended]
  _923 = mad(-1.7106533e-05f, _920, mad(0.00040110573f, _916, (_912 * 3.0009599f)));
  _926 = mad(-2.34209e-05f, _920, mad(0.9997657f, _916, (_912 * -6.0908147e-05f)));
  _929 = mad(1.0005832f, _920, mad(8.34018e-05f, _916, (_912 * 4.855916e-05f)));
  _932 = mad(0.04736635f, _929, mad(0.33951214f, _926, (_923 * 0.61319155f)));
  _935 = mad(0.013450007f, _929, mad(0.91633576f, _926, (_923 * 0.07020692f)));
  _938 = mad(0.8696068f, _929, mad(0.1095673f, _926, (_923 * 0.020618873f)));
  _939 = dot(float3(_932, _935, _938), float3(0.27222872f, 0.67408174f, 0.053689517f));
  _941 = (_932 / _939) + -1.0f;
  _943 = (_935 / _939) + -1.0f;
  _945 = (_938 / _939) + -1.0f;
  _954 = (1.0f - exp2(dot(float3(_941, _943, _945), float3(_941, _943, _945)) * -4.0f)) * (1.0f - exp2((_939 * _939) * -4.0f));
  _960 = ((mad(-0.06368284f, _938, mad(-0.3292913f, _935, (_932 * 1.3704128f))) - _932) * _954) + _932;
  _966 = ((mad(-0.010861567f, _938, mad(1.0970908f, _935, (_932 * -0.08343426f))) - _935) * _954) + _935;
  _972 = ((mad(1.2036945f, _938, mad(-0.098625645f, _935, (_932 * -0.02579326f))) - _938) * _954) + _938;
  _978 = ((mad(0.061360642f, _972, mad(-4.5401976e-09f, _966, (_960 * 0.9386394f))) - _960) * 0.6f) + _960;
  _984 = ((mad(0.1692059f, _972, mad(0.8307942f, _966, (_960 * 6.775372e-08f))) - _966) * 0.6f) + _966;
  _988 = (mad(-2.3283064e-10f, _966, (_960 * -9.313226e-10f)) * 0.6f) + _972;
  _991 = mad(0.16386905f, _988, mad(0.14067869f, _984, (_978 * 0.6954522f)));
  _994 = mad(0.095534325f, _988, mad(0.8596711f, _984, (_978 * 0.04479458f)));
  _997 = mad(1.0015007f, _988, mad(0.00402521f, _984, (_978 * -0.005525883f)));
  _999 = max(max(_991, _994), _997);
  _1006 = (max(_999, 1e-10f) - max(min(min(_991, _994), _997), 1e-10f)) / max(_999, 0.01f);
  _1019 = ((_994 + _991) + _997) + (sqrt((((_997 - _994) * _997) + ((_994 - _991) * _994)) + ((_991 - _997) * _991)) * 1.75f);
  _1020 = _1019 * 0.33333334f;
  _1021 = _1006 + -0.4f;
  _1022 = _1021 * 5.0f;
  _1026 = max((1.0f - abs(_1021 * 2.5f)), 0.0f);
  _1037 = ((((float)((int)((int)((int)(uint)((int)(_1022 > 0.0f))) - (int)((int)(uint)((int)(_1022 < 0.0f)))))) * (1.0f - (_1026 * _1026))) + 1.0f) * 0.025f;
  if (!(_1020 <= 0.053333335f)) {
    if (!(_1020 >= 0.16f)) {
      _1046 = (((0.24f / _1019) + -0.5f) * _1037);
    } else {
      _1046 = 0.0f;
    }
  } else {
    _1046 = _1037;
  }
  _1047 = _1046 + 1.0f;
  _1048 = _1047 * _991;
  _1049 = _1047 * _994;
  _1050 = _1047 * _997;
  if (!((_1048 == _1049) && (_1049 == _1050))) {
    _1057 = ((_1048 * 2.0f) - _1049) - _1050;
    _1060 = ((_994 - _997) * 1.7320508f) * _1047;
    _1062 = atan(_1060 / _1057);
    _1063 = (_1057 < 0.0f);
    _1064 = (_1057 == 0.0f);
    _1065 = (_1060 >= 0.0f);
    _1066 = (_1060 < 0.0f);
    _1077 = select((_1065 && _1064), 90.0f, select((_1066 && _1064), -90.0f, (select((_1066 && _1063), (_1062 + -3.1415927f), select((_1065 && _1063), (_1062 + 3.1415927f), _1062)) * 57.295776f)));
    if (_1077 < 0.0f) {
      _1082 = (_1077 + 360.0f);
    } else {
      _1082 = _1077;
    }
  } else {
    _1082 = 0.0f;
  }
  _1084 = min(max(_1082, 0.0f), 360.0f);
  if (_1084 < -180.0f) {
    _1093 = (_1084 + 360.0f);
  } else {
    if (_1084 > 180.0f) {
      _1093 = (_1084 + -360.0f);
    } else {
      _1093 = _1084;
    }
  }
  _1097 = saturate(1.0f - abs(_1093 * 0.014814815f));  // [sem: expr_sat]
  _1101 = (_1097 * _1097) * (3.0f - (_1097 * 2.0f));
  _1107 = ((_1101 * _1101) * ((_1006 * 0.18f) * (0.03f - _1048))) + _1048;
  _1112 = log2(max(0.0f, mad(-0.21492857f, _1050, mad(-0.23651075f, _1049, (_1107 * 1.4514393f)))));
  _1117 = log2(max(0.0f, mad(-0.09967592f, _1050, mad(1.1762297f, _1049, (_1107 * -0.07655378f)))));
  _1122 = log2(max(0.0f, mad(0.9977163f, _1050, mad(-0.0060324497f, _1049, (_1107 * 0.008316148f)))));
  _1123 = _1112 * 0.30103f;
  _1124 = _1117 * 0.30103f;
  _1125 = _1122 * 0.30103f;
  _1127 = (_1112 * 0.2739373f) + 0.7790625f;
  _1129 = (_1117 * 0.2739373f) + 0.7790625f;
  _1131 = (_1122 * 0.2739373f) + 0.7790625f;
  _1138 = select((_1123 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1112 * 1.43712f)) + 1.0f)), _1127);
  _1145 = select((_1124 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1117 * 1.43712f)) + 1.0f)), _1129);
  _1152 = select((_1125 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1122 * 1.43712f)) + 1.0f)), _1131);
  _1156 = 1.0f - saturate(-0.78987026f - (_1112 * 0.9446112f));
  _1160 = 1.0f - saturate(-0.78987026f - (_1117 * 0.9446112f));
  _1164 = 1.0f - saturate(-0.78987026f - (_1122 * 0.9446112f));
  _1180 = max(0.0f, ((((_1156 * _1156) * (3.0f - (_1156 * 2.0f))) * (select((_1123 > -0.57039833f), (1.04f - (1.56f / (exp2((_1112 * 1.013354f) + 1.9201254f) + 1.0f))), _1127) - _1138)) + _1138));
  _1196 = max(0.0f, ((((_1160 * _1160) * (3.0f - (_1160 * 2.0f))) * (select((_1124 > -0.57039833f), (1.04f - (1.56f / (exp2((_1117 * 1.013354f) + 1.9201254f) + 1.0f))), _1129) - _1145)) + _1145));
  _1212 = max(0.0f, ((((_1164 * _1164) * (3.0f - (_1164 * 2.0f))) * (select((_1125 > -0.57039833f), (1.04f - (1.56f / (exp2((_1122 * 1.013354f) + 1.9201254f) + 1.0f))), _1131) - _1152)) + _1152));
  _1218 = ((mad(-0.06537104f, _1212, mad(1.4518155e-06f, _1196, (_1180 * 1.0653747f))) - _1180) * 0.6f) + _1180;
  _1224 = ((mad(-0.2036677f, _1212, mad(1.2036635f, _1196, (_1180 * -2.5716145e-07f))) - _1196) * 0.6f) + _1196;
  _1230 = ((mad(0.99999964f, _1212, mad(2.0954758e-08f, _1196, (_1180 * 1.8626451e-08f))) - _1212) * 0.6f) + _1212;
  _1249 = dot(float3(saturate(saturate(max(0.0f, mad(-0.08325848f, _1230, mad(-0.6217906f, _1224, (_1218 * 1.7050515f)))))), saturate(saturate(max(0.0f, mad(-0.010548528f, _1230, mad(1.1408027f, _1224, (_1218 * -0.13025719f)))))), saturate(saturate(max(0.0f, mad(1.1529719f, _1230, mad(-0.12896876f, _1224, (_1218 * -0.024003278f))))))), float3(0.1f, 0.7f, 0.2f));
  _1250 = _864 + -0.5f;
  _1251 = _868 + -0.5f;
  _1252 = _1249 + -0.5f;
  _1254 = _localToneMappingParams.z * -0.7213475f;
  _1257 = exp2((_1250 * _1250) * _1254);
  _1260 = exp2((_1251 * _1251) * _1254);
  _1263 = exp2((_1252 * _1252) * _1254);
  _1265 = dot(float3(_1257, _1260, _1263), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _1270 = dot(float3(max(_472, 0.0f), max(_477, 0.0f), max(_482, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _1279 = max(dot(float3(((_1257 / _1265) * _864), ((_1260 / _1265) * _868), ((_1263 / _1265) * _1249)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _1270;
  if (!(_1270 > 0.007f)) {
    _1288 = ((((_1270 * _1270) * 20408.16f) * (_1279 + -1.0f)) + 1.0f);
  } else {
    _1288 = _1279;
  }
  _1289 = _1288 * _88;
  _1290 = _1288 * _87;
  _1291 = _1288 * _86;
  _1303 = exp2(log2(max(0.0f, ((max(0.0f, (((_1289 * 1.70505f) - (_1290 * 0.62179f)) - (_1291 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _1315 = exp2(log2(max(0.0f, ((max(0.0f, (((_1290 * 1.1408f) - (_1289 * 0.13026f)) - (_1291 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _1327 = exp2(log2(max(0.0f, ((max(0.0f, (((_1289 * -0.024f) - (_1290 * 0.12897f)) + (_1291 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _1328 = dot(float3(_1303, _1315, _1327), float3(0.212671f, 0.71516f, 0.072169f));
  _1331 = ((_1303 - _1328) * _powerParams.w) + _1328;
  _1335 = (lerp(_1328, _1315, _powerParams.w)) * 3.0f;  // [sem: blended]
  _1339 = (lerp(_1328, _1327, _powerParams.w)) * 3.0f;  // [sem: blended]
  _1342 = mad(-1.7106533e-05f, _1339, mad(0.00040110573f, _1335, (_1331 * 3.0009599f)));
  _1345 = mad(-2.34209e-05f, _1339, mad(0.9997657f, _1335, (_1331 * -6.0908147e-05f)));
  _1348 = mad(1.0005832f, _1339, mad(8.34018e-05f, _1335, (_1331 * 4.855916e-05f)));
  _1351 = mad(0.04736635f, _1348, mad(0.33951214f, _1345, (_1342 * 0.61319155f)));
  _1354 = mad(0.013450007f, _1348, mad(0.91633576f, _1345, (_1342 * 0.07020692f)));
  _1357 = mad(0.8696068f, _1348, mad(0.1095673f, _1345, (_1342 * 0.020618873f)));
  _1358 = dot(float3(_1351, _1354, _1357), float3(0.27222872f, 0.67408174f, 0.053689517f));
  _1360 = (_1351 / _1358) + -1.0f;
  _1362 = (_1354 / _1358) + -1.0f;
  _1364 = (_1357 / _1358) + -1.0f;
  _1373 = (1.0f - exp2(dot(float3(_1360, _1362, _1364), float3(_1360, _1362, _1364)) * -4.0f)) * (1.0f - exp2((_1358 * _1358) * -4.0f));
  _1379 = ((mad(-0.06368284f, _1357, mad(-0.3292913f, _1354, (_1351 * 1.3704128f))) - _1351) * _1373) + _1351;
  _1385 = ((mad(-0.010861567f, _1357, mad(1.0970908f, _1354, (_1351 * -0.08343426f))) - _1354) * _1373) + _1354;
  _1391 = ((mad(1.2036945f, _1357, mad(-0.098625645f, _1354, (_1351 * -0.02579326f))) - _1357) * _1373) + _1357;
  _1397 = ((mad(0.061360642f, _1391, mad(-4.5401976e-09f, _1385, (_1379 * 0.9386394f))) - _1379) * 0.6f) + _1379;
  _1403 = ((mad(0.1692059f, _1391, mad(0.8307942f, _1385, (_1379 * 6.775372e-08f))) - _1385) * 0.6f) + _1385;
  _1407 = (mad(-2.3283064e-10f, _1385, (_1379 * -9.313226e-10f)) * 0.6f) + _1391;
  _1410 = mad(0.16386905f, _1407, mad(0.14067869f, _1403, (_1397 * 0.6954522f)));
  _1413 = mad(0.095534325f, _1407, mad(0.8596711f, _1403, (_1397 * 0.04479458f)));
  _1416 = mad(1.0015007f, _1407, mad(0.00402521f, _1403, (_1397 * -0.005525883f)));
  _1418 = max(max(_1410, _1413), _1416);
  _1425 = (max(_1418, 1e-10f) - max(min(min(_1410, _1413), _1416), 1e-10f)) / max(_1418, 0.01f);
  _1438 = ((_1413 + _1410) + _1416) + (sqrt((((_1416 - _1413) * _1416) + ((_1413 - _1410) * _1413)) + ((_1410 - _1416) * _1410)) * 1.75f);
  _1439 = _1438 * 0.33333334f;
  _1440 = _1425 + -0.4f;
  _1441 = _1440 * 5.0f;
  _1445 = max((1.0f - abs(_1440 * 2.5f)), 0.0f);
  _1456 = ((((float)((int)((int)((int)(uint)((int)(_1441 > 0.0f))) - (int)((int)(uint)((int)(_1441 < 0.0f)))))) * (1.0f - (_1445 * _1445))) + 1.0f) * 0.025f;
  if (!(_1439 <= 0.053333335f)) {
    if (!(_1439 >= 0.16f)) {
      _1465 = (((0.24f / _1438) + -0.5f) * _1456);
    } else {
      _1465 = 0.0f;
    }
  } else {
    _1465 = _1456;
  }
  _1466 = _1465 + 1.0f;
  _1467 = _1466 * _1410;
  _1468 = _1466 * _1413;
  _1469 = _1466 * _1416;
  if (!((_1467 == _1468) && (_1468 == _1469))) {
    _1476 = ((_1467 * 2.0f) - _1468) - _1469;
    _1479 = ((_1413 - _1416) * 1.7320508f) * _1466;
    _1481 = atan(_1479 / _1476);
    _1482 = (_1476 < 0.0f);
    _1483 = (_1476 == 0.0f);
    _1484 = (_1479 >= 0.0f);
    _1485 = (_1479 < 0.0f);
    _1496 = select((_1484 && _1483), 90.0f, select((_1485 && _1483), -90.0f, (select((_1485 && _1482), (_1481 + -3.1415927f), select((_1484 && _1482), (_1481 + 3.1415927f), _1481)) * 57.295776f)));
    if (_1496 < 0.0f) {
      _1501 = (_1496 + 360.0f);
    } else {
      _1501 = _1496;
    }
  } else {
    _1501 = 0.0f;
  }
  _1503 = min(max(_1501, 0.0f), 360.0f);
  if (_1503 < -180.0f) {
    _1512 = (_1503 + 360.0f);
  } else {
    if (_1503 > 180.0f) {
      _1512 = (_1503 + -360.0f);
    } else {
      _1512 = _1503;
    }
  }
  _1516 = saturate(1.0f - abs(_1512 * 0.014814815f));  // [sem: expr_sat]
  _1520 = (_1516 * _1516) * (3.0f - (_1516 * 2.0f));
  _1526 = ((_1520 * _1520) * ((_1425 * 0.18f) * (0.03f - _1467))) + _1467;
  _1531 = log2(max(0.0f, mad(-0.21492857f, _1469, mad(-0.23651075f, _1468, (_1526 * 1.4514393f)))));
  _1536 = log2(max(0.0f, mad(-0.09967592f, _1469, mad(1.1762297f, _1468, (_1526 * -0.07655378f)))));
  _1541 = log2(max(0.0f, mad(0.9977163f, _1469, mad(-0.0060324497f, _1468, (_1526 * 0.008316148f)))));
  _1542 = _1531 * 0.30103f;
  _1543 = _1536 * 0.30103f;
  _1544 = _1541 * 0.30103f;
  _1546 = (_1531 * 0.2739373f) + 0.7790625f;
  _1548 = (_1536 * 0.2739373f) + 0.7790625f;
  _1550 = (_1541 * 0.2739373f) + 0.7790625f;
  _1557 = select((_1542 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1531 * 1.43712f)) + 1.0f)), _1546);
  _1564 = select((_1543 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1536 * 1.43712f)) + 1.0f)), _1548);
  _1571 = select((_1544 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1541 * 1.43712f)) + 1.0f)), _1550);
  _1575 = 1.0f - saturate(-0.78987026f - (_1531 * 0.9446112f));
  _1579 = 1.0f - saturate(-0.78987026f - (_1536 * 0.9446112f));
  _1583 = 1.0f - saturate(-0.78987026f - (_1541 * 0.9446112f));
  _1599 = max(0.0f, ((((_1575 * _1575) * (3.0f - (_1575 * 2.0f))) * (select((_1542 > -0.57039833f), (1.04f - (1.56f / (exp2((_1531 * 1.013354f) + 1.9201254f) + 1.0f))), _1546) - _1557)) + _1557));
  _1615 = max(0.0f, ((((_1579 * _1579) * (3.0f - (_1579 * 2.0f))) * (select((_1543 > -0.57039833f), (1.04f - (1.56f / (exp2((_1536 * 1.013354f) + 1.9201254f) + 1.0f))), _1548) - _1564)) + _1564));
  _1631 = max(0.0f, ((((_1583 * _1583) * (3.0f - (_1583 * 2.0f))) * (select((_1544 > -0.57039833f), (1.04f - (1.56f / (exp2((_1541 * 1.013354f) + 1.9201254f) + 1.0f))), _1550) - _1571)) + _1571));
  _1637 = ((mad(-0.06537104f, _1631, mad(1.4518155e-06f, _1615, (_1599 * 1.0653747f))) - _1599) * 0.6f) + _1599;
  _1643 = ((mad(-0.2036677f, _1631, mad(1.2036635f, _1615, (_1599 * -2.5716145e-07f))) - _1615) * 0.6f) + _1615;
  _1649 = ((mad(0.99999964f, _1631, mad(2.0954758e-08f, _1615, (_1599 * 1.8626451e-08f))) - _1631) * 0.6f) + _1631;
  _1655 = max(saturate(max(0.0f, mad(-0.08325848f, _1649, mad(-0.6217906f, _1643, (_1637 * 1.7050515f))))), 0.0f);
  _1661 = max(saturate(max(0.0f, mad(-0.010548528f, _1649, mad(1.1408027f, _1643, (_1637 * -0.13025719f))))), 0.0f);
  _1667 = max(saturate(max(0.0f, mad(1.1529719f, _1649, mad(-0.12896876f, _1643, (_1637 * -0.024003278f))))), 0.0f);
  _1670 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_1670.x < 1e-07f) || (_1670.x == 1.0f))) {
    _1679 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _1687 = exp2(_powerParams.x * log2(max(0.0f, _offsetParams.x)));
    _1693 = exp2(log2(max(0.0f, _offsetParams.y)) * _powerParams.y);
    _1699 = exp2(log2(max(0.0f, _offsetParams.z)) * _powerParams.z);
    _1700 = dot(float3(_1687, _1693, _1699), float3(0.212671f, 0.71516f, 0.072169f));
    _1704 = ((_1687 - _1700) * _powerParams.w) + _1700;
    _1708 = (lerp(_1700, _1693, _powerParams.w)) * 3.0f;  // [sem: blended]
    _1712 = (lerp(_1700, _1699, _powerParams.w)) * 3.0f;  // [sem: blended]
    _1715 = mad(-1.7106533e-05f, _1712, mad(0.00040110573f, _1708, (_1704 * 3.0009599f)));
    _1718 = mad(-2.34209e-05f, _1712, mad(0.9997657f, _1708, (_1704 * -6.0908147e-05f)));
    _1721 = mad(1.0005832f, _1712, mad(8.34018e-05f, _1708, (_1704 * 4.855916e-05f)));
    _1724 = mad(0.04736635f, _1721, mad(0.33951214f, _1718, (_1715 * 0.61319155f)));
    _1727 = mad(0.013450007f, _1721, mad(0.91633576f, _1718, (_1715 * 0.07020692f)));
    _1730 = mad(0.8696068f, _1721, mad(0.1095673f, _1718, (_1715 * 0.020618873f)));
    _1731 = dot(float3(_1724, _1727, _1730), float3(0.27222872f, 0.67408174f, 0.053689517f));
    _1733 = (_1724 / _1731) + -1.0f;
    _1735 = (_1727 / _1731) + -1.0f;
    _1737 = (_1730 / _1731) + -1.0f;
    _1746 = (1.0f - exp2(dot(float3(_1733, _1735, _1737), float3(_1733, _1735, _1737)) * -4.0f)) * (1.0f - exp2((_1731 * _1731) * -4.0f));
    _1752 = ((mad(-0.06368284f, _1730, mad(-0.3292913f, _1727, (_1724 * 1.3704128f))) - _1724) * _1746) + _1724;
    _1758 = ((mad(-0.010861567f, _1730, mad(1.0970908f, _1727, (_1724 * -0.08343426f))) - _1727) * _1746) + _1727;
    _1764 = ((mad(1.2036945f, _1730, mad(-0.098625645f, _1727, (_1724 * -0.02579326f))) - _1730) * _1746) + _1730;
    _1770 = ((mad(0.061360642f, _1764, mad(-4.5401976e-09f, _1758, (_1752 * 0.9386394f))) - _1752) * 0.6f) + _1752;
    _1776 = ((mad(0.1692059f, _1764, mad(0.8307942f, _1758, (_1752 * 6.775372e-08f))) - _1758) * 0.6f) + _1758;
    _1780 = (mad(-2.3283064e-10f, _1758, (_1752 * -9.313226e-10f)) * 0.6f) + _1764;
    _1783 = mad(0.16386905f, _1780, mad(0.14067869f, _1776, (_1770 * 0.6954522f)));
    _1786 = mad(0.095534325f, _1780, mad(0.8596711f, _1776, (_1770 * 0.04479458f)));
    _1789 = mad(1.0015007f, _1780, mad(0.00402521f, _1776, (_1770 * -0.005525883f)));
    _1791 = max(max(_1783, _1786), _1789);
    _1798 = (max(_1791, 1e-10f) - max(min(min(_1783, _1786), _1789), 1e-10f)) / max(_1791, 0.01f);
    _1811 = ((_1786 + _1783) + _1789) + (sqrt((((_1789 - _1786) * _1789) + ((_1786 - _1783) * _1786)) + ((_1783 - _1789) * _1783)) * 1.75f);
    _1812 = _1811 * 0.33333334f;
    _1813 = _1798 + -0.4f;
    _1814 = _1813 * 5.0f;
    _1818 = max((1.0f - abs(_1813 * 2.5f)), 0.0f);
    _1829 = ((((float)((int)((int)((int)(uint)((int)(_1814 > 0.0f))) - (int)((int)(uint)((int)(_1814 < 0.0f)))))) * (1.0f - (_1818 * _1818))) + 1.0f) * 0.025f;
    _1830 = !(_1812 <= 0.053333335f);
    if (_1830) {
      if (!(_1812 >= 0.16f)) {
        _1838 = (((0.24f / _1811) + -0.5f) * _1829);
      } else {
        _1838 = 0.0f;
      }
    } else {
      _1838 = _1829;
    }
    _1839 = _1838 + 1.0f;
    _1840 = _1839 * _1783;
    _1841 = _1839 * _1786;
    _1842 = _1839 * _1789;
    if (!((_1840 == _1841) && (_1841 == _1842))) {
      _1849 = ((_1840 * 2.0f) - _1841) - _1842;
      _1852 = ((_1786 - _1789) * 1.7320508f) * _1839;
      _1854 = atan(_1852 / _1849);
      _1855 = (_1849 < 0.0f);
      _1856 = (_1849 == 0.0f);
      _1857 = (_1852 >= 0.0f);
      _1858 = (_1852 < 0.0f);
      _1869 = select((_1857 && _1856), 90.0f, select((_1858 && _1856), -90.0f, (select((_1858 && _1855), (_1854 + -3.1415927f), select((_1857 && _1855), (_1854 + 3.1415927f), _1854)) * 57.295776f)));
      if (_1869 < 0.0f) {
        _1874 = (_1869 + 360.0f);
      } else {
        _1874 = _1869;
      }
    } else {
      _1874 = 0.0f;
    }
    _1876 = min(max(_1874, 0.0f), 360.0f);
    if (_1876 < -180.0f) {
      _1885 = (_1876 + 360.0f);
    } else {
      if (_1876 > 180.0f) {
        _1885 = (_1876 + -360.0f);
      } else {
        _1885 = _1876;
      }
    }
    _1889 = saturate(1.0f - abs(_1885 * 0.014814815f));  // [sem: expr_sat]
    _1893 = (_1889 * _1889) * (3.0f - (_1889 * 2.0f));
    _1894 = _1798 * 0.18f;
    _1899 = ((_1893 * _1893) * ((0.03f - _1840) * _1894)) + _1840;
    _1904 = log2(max(0.0f, mad(-0.21492857f, _1842, mad(-0.23651075f, _1841, (_1899 * 1.4514393f)))));
    _1909 = log2(max(0.0f, mad(-0.09967592f, _1842, mad(1.1762297f, _1841, (_1899 * -0.07655378f)))));
    _1914 = log2(max(0.0f, mad(0.9977163f, _1842, mad(-0.0060324497f, _1841, (_1899 * 0.008316148f)))));
    _1915 = _1904 * 0.30103f;
    _1916 = _1909 * 0.30103f;
    _1917 = _1914 * 0.30103f;
    _1919 = (_1904 * 0.2739373f) + 0.7790625f;
    _1921 = (_1909 * 0.2739373f) + 0.7790625f;
    _1923 = (_1914 * 0.2739373f) + 0.7790625f;
    _1930 = select((_1915 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1904 * 1.43712f)) + 1.0f)), _1919);
    _1937 = select((_1916 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1909 * 1.43712f)) + 1.0f)), _1921);
    _1944 = select((_1917 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1914 * 1.43712f)) + 1.0f)), _1923);
    _1948 = 1.0f - saturate(-0.78987026f - (_1904 * 0.9446112f));
    _1952 = 1.0f - saturate(-0.78987026f - (_1909 * 0.9446112f));
    _1956 = 1.0f - saturate(-0.78987026f - (_1914 * 0.9446112f));
    _1972 = max(0.0f, ((((_1948 * _1948) * (3.0f - (_1948 * 2.0f))) * (select((_1915 > -0.57039833f), (1.04f - (1.56f / (exp2((_1904 * 1.013354f) + 1.9201254f) + 1.0f))), _1919) - _1930)) + _1930));
    _1988 = max(0.0f, ((((_1952 * _1952) * (3.0f - (_1952 * 2.0f))) * (select((_1916 > -0.57039833f), (1.04f - (1.56f / (exp2((_1909 * 1.013354f) + 1.9201254f) + 1.0f))), _1921) - _1937)) + _1937));
    _2004 = max(0.0f, ((((_1956 * _1956) * (3.0f - (_1956 * 2.0f))) * (select((_1917 > -0.57039833f), (1.04f - (1.56f / (exp2((_1914 * 1.013354f) + 1.9201254f) + 1.0f))), _1923) - _1944)) + _1944));
    _2010 = ((mad(-0.06537104f, _2004, mad(1.4518155e-06f, _1988, (_1972 * 1.0653747f))) - _1972) * 0.6f) + _1972;
    _2016 = ((mad(-0.2036677f, _2004, mad(1.2036635f, _1988, (_1972 * -2.5716145e-07f))) - _1988) * 0.6f) + _1988;
    _2022 = ((mad(0.99999964f, _2004, mad(2.0954758e-08f, _1988, (_1972 * 1.8626451e-08f))) - _2004) * 0.6f) + _2004;
    _2027 = saturate(max(0.0f, mad(-0.010548528f, _2022, mad(1.1408027f, _2016, (_2010 * -0.13025719f)))));  // [sem: expr_sat]
    if (_1830) {
      if (!(_1812 >= 0.16f)) {
        _2035 = (((0.24f / _1811) + -0.5f) * _1829);
      } else {
        _2035 = 0.0f;
      }
    } else {
      _2035 = _1829;
    }
    _2036 = _2035 + 1.0f;
    _2037 = _2036 * _1783;
    _2038 = _2036 * _1786;
    _2039 = _2036 * _1789;
    if (!((_2037 == _2038) && (_2038 == _2039))) {
      _2046 = ((_2037 * 2.0f) - _2038) - _2039;
      _2049 = ((_1786 - _1789) * 1.7320508f) * _2036;
      _2051 = atan(_2049 / _2046);
      _2052 = (_2046 < 0.0f);
      _2053 = (_2046 == 0.0f);
      _2054 = (_2049 >= 0.0f);
      _2055 = (_2049 < 0.0f);
      _2066 = select((_2054 && _2053), 90.0f, select((_2055 && _2053), -90.0f, (select((_2055 && _2052), (_2051 + -3.1415927f), select((_2054 && _2052), (_2051 + 3.1415927f), _2051)) * 57.295776f)));
      if (_2066 < 0.0f) {
        _2071 = (_2066 + 360.0f);
      } else {
        _2071 = _2066;
      }
    } else {
      _2071 = 0.0f;
    }
    _2073 = min(max(_2071, 0.0f), 360.0f);
    if (_2073 < -180.0f) {
      _2082 = (_2073 + 360.0f);
    } else {
      if (_2073 > 180.0f) {
        _2082 = (_2073 + -360.0f);
      } else {
        _2082 = _2073;
      }
    }
    _2086 = saturate(1.0f - abs(_2082 * 0.014814815f));  // [sem: expr_sat]
    _2090 = (_2086 * _2086) * (3.0f - (_2086 * 2.0f));
    _2095 = ((_2090 * _2090) * ((0.03f - _2037) * _1894)) + _2037;
    _2100 = log2(max(0.0f, mad(-0.21492857f, _2039, mad(-0.23651075f, _2038, (_2095 * 1.4514393f)))));
    _2105 = log2(max(0.0f, mad(-0.09967592f, _2039, mad(1.1762297f, _2038, (_2095 * -0.07655378f)))));
    _2110 = log2(max(0.0f, mad(0.9977163f, _2039, mad(-0.0060324497f, _2038, (_2095 * 0.008316148f)))));
    _2111 = _2100 * 0.30103f;
    _2112 = _2105 * 0.30103f;
    _2113 = _2110 * 0.30103f;
    _2115 = (_2100 * 0.2739373f) + 0.7790625f;
    _2117 = (_2105 * 0.2739373f) + 0.7790625f;
    _2119 = (_2110 * 0.2739373f) + 0.7790625f;
    _2126 = select((_2111 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_2100 * 1.43712f)) + 1.0f)), _2115);
    _2133 = select((_2112 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_2105 * 1.43712f)) + 1.0f)), _2117);
    _2140 = select((_2113 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_2110 * 1.43712f)) + 1.0f)), _2119);
    _2144 = 1.0f - saturate(-0.78987026f - (_2100 * 0.9446112f));
    _2148 = 1.0f - saturate(-0.78987026f - (_2105 * 0.9446112f));
    _2152 = 1.0f - saturate(-0.78987026f - (_2110 * 0.9446112f));
    _2168 = max(0.0f, ((((_2144 * _2144) * (3.0f - (_2144 * 2.0f))) * (select((_2111 > -0.57039833f), (1.04f - (1.56f / (exp2((_2100 * 1.013354f) + 1.9201254f) + 1.0f))), _2115) - _2126)) + _2126));
    _2184 = max(0.0f, ((((_2148 * _2148) * (3.0f - (_2148 * 2.0f))) * (select((_2112 > -0.57039833f), (1.04f - (1.56f / (exp2((_2105 * 1.013354f) + 1.9201254f) + 1.0f))), _2117) - _2133)) + _2133));
    _2200 = max(0.0f, ((((_2152 * _2152) * (3.0f - (_2152 * 2.0f))) * (select((_2113 > -0.57039833f), (1.04f - (1.56f / (exp2((_2110 * 1.013354f) + 1.9201254f) + 1.0f))), _2119) - _2140)) + _2140));
    _2206 = ((mad(-0.06537104f, _2200, mad(1.4518155e-06f, _2184, (_2168 * 1.0653747f))) - _2168) * 0.6f) + _2168;
    _2212 = ((mad(-0.2036677f, _2200, mad(1.2036635f, _2184, (_2168 * -2.5716145e-07f))) - _2184) * 0.6f) + _2184;
    _2218 = ((mad(0.99999964f, _2200, mad(2.0954758e-08f, _2184, (_2168 * 1.8626451e-08f))) - _2200) * 0.6f) + _2200;
    _2223 = saturate(max(0.0f, mad(-0.010548528f, _2218, mad(1.1408027f, _2212, (_2206 * -0.13025719f)))));  // [sem: expr_sat]
    if (_1830) {
      if (!(_1812 >= 0.16f)) {
        _2231 = (((0.24f / _1811) + -0.5f) * _1829);
      } else {
        _2231 = 0.0f;
      }
    } else {
      _2231 = _1829;
    }
    _2232 = _2231 + 1.0f;
    _2233 = _2232 * _1783;
    _2234 = _2232 * _1786;
    _2235 = _2232 * _1789;
    if (!((_2233 == _2234) && (_2234 == _2235))) {
      _2242 = ((_2233 * 2.0f) - _2234) - _2235;
      _2245 = ((_1786 - _1789) * 1.7320508f) * _2232;
      _2247 = atan(_2245 / _2242);
      _2248 = (_2242 < 0.0f);
      _2249 = (_2242 == 0.0f);
      _2250 = (_2245 >= 0.0f);
      _2251 = (_2245 < 0.0f);
      _2262 = select((_2250 && _2249), 90.0f, select((_2251 && _2249), -90.0f, (select((_2251 && _2248), (_2247 + -3.1415927f), select((_2250 && _2248), (_2247 + 3.1415927f), _2247)) * 57.295776f)));
      if (_2262 < 0.0f) {
        _2267 = (_2262 + 360.0f);
      } else {
        _2267 = _2262;
      }
    } else {
      _2267 = 0.0f;
    }
    _2269 = min(max(_2267, 0.0f), 360.0f);
    if (_2269 < -180.0f) {
      _2278 = (_2269 + 360.0f);
    } else {
      if (_2269 > 180.0f) {
        _2278 = (_2269 + -360.0f);
      } else {
        _2278 = _2269;
      }
    }
    _2282 = saturate(1.0f - abs(_2278 * 0.014814815f));  // [sem: expr_sat]
    _2286 = (_2282 * _2282) * (3.0f - (_2282 * 2.0f));
    _2291 = ((_2286 * _2286) * ((0.03f - _2233) * _1894)) + _2233;
    _2296 = log2(max(0.0f, mad(-0.21492857f, _2235, mad(-0.23651075f, _2234, (_2291 * 1.4514393f)))));
    _2301 = log2(max(0.0f, mad(-0.09967592f, _2235, mad(1.1762297f, _2234, (_2291 * -0.07655378f)))));
    _2306 = log2(max(0.0f, mad(0.9977163f, _2235, mad(-0.0060324497f, _2234, (_2291 * 0.008316148f)))));
    _2307 = _2296 * 0.30103f;
    _2308 = _2301 * 0.30103f;
    _2309 = _2306 * 0.30103f;
    _2311 = (_2296 * 0.2739373f) + 0.7790625f;
    _2313 = (_2301 * 0.2739373f) + 0.7790625f;
    _2315 = (_2306 * 0.2739373f) + 0.7790625f;
    _2322 = select((_2307 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_2296 * 1.43712f)) + 1.0f)), _2311);
    _2329 = select((_2308 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_2301 * 1.43712f)) + 1.0f)), _2313);
    _2336 = select((_2309 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_2306 * 1.43712f)) + 1.0f)), _2315);
    _2340 = 1.0f - saturate(-0.78987026f - (_2296 * 0.9446112f));
    _2344 = 1.0f - saturate(-0.78987026f - (_2301 * 0.9446112f));
    _2348 = 1.0f - saturate(-0.78987026f - (_2306 * 0.9446112f));
    _2364 = max(0.0f, ((((_2340 * _2340) * (3.0f - (_2340 * 2.0f))) * (select((_2307 > -0.57039833f), (1.04f - (1.56f / (exp2((_2296 * 1.013354f) + 1.9201254f) + 1.0f))), _2311) - _2322)) + _2322));
    _2380 = max(0.0f, ((((_2344 * _2344) * (3.0f - (_2344 * 2.0f))) * (select((_2308 > -0.57039833f), (1.04f - (1.56f / (exp2((_2301 * 1.013354f) + 1.9201254f) + 1.0f))), _2313) - _2329)) + _2329));
    _2396 = max(0.0f, ((((_2348 * _2348) * (3.0f - (_2348 * 2.0f))) * (select((_2309 > -0.57039833f), (1.04f - (1.56f / (exp2((_2306 * 1.013354f) + 1.9201254f) + 1.0f))), _2315) - _2336)) + _2336));
    _2402 = ((mad(-0.06537104f, _2396, mad(1.4518155e-06f, _2380, (_2364 * 1.0653747f))) - _2364) * 0.6f) + _2364;
    _2408 = ((mad(-0.2036677f, _2396, mad(1.2036635f, _2380, (_2364 * -2.5716145e-07f))) - _2380) * 0.6f) + _2380;
    _2414 = ((mad(0.99999964f, _2396, mad(2.0954758e-08f, _2380, (_2364 * 1.8626451e-08f))) - _2396) * 0.6f) + _2396;
    _2419 = saturate(max(0.0f, mad(-0.010548528f, _2414, mad(1.1408027f, _2408, (_2402 * -0.13025719f)))));  // [sem: expr_sat]
    if (_1830) {
      if (!(_1812 >= 0.16f)) {
        _2427 = (((0.24f / _1811) + -0.5f) * _1829);
      } else {
        _2427 = 0.0f;
      }
    } else {
      _2427 = _1829;
    }
    _2428 = _2427 + 1.0f;
    _2429 = _2428 * _1783;
    _2430 = _2428 * _1786;
    _2431 = _2428 * _1789;
    if (!((_2429 == _2430) && (_2430 == _2431))) {
      _2438 = ((_2429 * 2.0f) - _2430) - _2431;
      _2441 = ((_1786 - _1789) * 1.7320508f) * _2428;
      _2443 = atan(_2441 / _2438);
      _2444 = (_2438 < 0.0f);
      _2445 = (_2438 == 0.0f);
      _2446 = (_2441 >= 0.0f);
      _2447 = (_2441 < 0.0f);
      _2458 = select((_2446 && _2445), 90.0f, select((_2447 && _2445), -90.0f, (select((_2447 && _2444), (_2443 + -3.1415927f), select((_2446 && _2444), (_2443 + 3.1415927f), _2443)) * 57.295776f)));
      if (_2458 < 0.0f) {
        _2463 = (_2458 + 360.0f);
      } else {
        _2463 = _2458;
      }
    } else {
      _2463 = 0.0f;
    }
    _2465 = min(max(_2463, 0.0f), 360.0f);
    if (_2465 < -180.0f) {
      _2474 = (_2465 + 360.0f);
    } else {
      if (_2465 > 180.0f) {
        _2474 = (_2465 + -360.0f);
      } else {
        _2474 = _2465;
      }
    }
    _2478 = saturate(1.0f - abs(_2474 * 0.014814815f));  // [sem: expr_sat]
    _2482 = (_2478 * _2478) * (3.0f - (_2478 * 2.0f));
    _2487 = ((_2482 * _2482) * ((0.03f - _2429) * _1894)) + _2429;
    _2492 = log2(max(0.0f, mad(-0.21492857f, _2431, mad(-0.23651075f, _2430, (_2487 * 1.4514393f)))));
    _2497 = log2(max(0.0f, mad(-0.09967592f, _2431, mad(1.1762297f, _2430, (_2487 * -0.07655378f)))));
    _2502 = log2(max(0.0f, mad(0.9977163f, _2431, mad(-0.0060324497f, _2430, (_2487 * 0.008316148f)))));
    _2503 = _2492 * 0.30103f;
    _2504 = _2497 * 0.30103f;
    _2505 = _2502 * 0.30103f;
    _2507 = (_2492 * 0.2739373f) + 0.7790625f;
    _2509 = (_2497 * 0.2739373f) + 0.7790625f;
    _2511 = (_2502 * 0.2739373f) + 0.7790625f;
    _2518 = select((_2503 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_2492 * 1.43712f)) + 1.0f)), _2507);
    _2525 = select((_2504 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_2497 * 1.43712f)) + 1.0f)), _2509);
    _2532 = select((_2505 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_2502 * 1.43712f)) + 1.0f)), _2511);
    _2536 = 1.0f - saturate(-0.78987026f - (_2492 * 0.9446112f));
    _2540 = 1.0f - saturate(-0.78987026f - (_2497 * 0.9446112f));
    _2544 = 1.0f - saturate(-0.78987026f - (_2502 * 0.9446112f));
    _2560 = max(0.0f, ((((_2536 * _2536) * (3.0f - (_2536 * 2.0f))) * (select((_2503 > -0.57039833f), (1.04f - (1.56f / (exp2((_2492 * 1.013354f) + 1.9201254f) + 1.0f))), _2507) - _2518)) + _2518));
    _2576 = max(0.0f, ((((_2540 * _2540) * (3.0f - (_2540 * 2.0f))) * (select((_2504 > -0.57039833f), (1.04f - (1.56f / (exp2((_2497 * 1.013354f) + 1.9201254f) + 1.0f))), _2509) - _2525)) + _2525));
    _2592 = max(0.0f, ((((_2544 * _2544) * (3.0f - (_2544 * 2.0f))) * (select((_2505 > -0.57039833f), (1.04f - (1.56f / (exp2((_2502 * 1.013354f) + 1.9201254f) + 1.0f))), _2511) - _2532)) + _2532));
    _2598 = ((mad(-0.06537104f, _2592, mad(1.4518155e-06f, _2576, (_2560 * 1.0653747f))) - _2560) * 0.6f) + _2560;
    _2604 = ((mad(-0.2036677f, _2592, mad(1.2036635f, _2576, (_2560 * -2.5716145e-07f))) - _2576) * 0.6f) + _2576;
    _2610 = ((mad(0.99999964f, _2592, mad(2.0954758e-08f, _2576, (_2560 * 1.8626451e-08f))) - _2592) * 0.6f) + _2592;
    _2615 = saturate(max(0.0f, mad(-0.010548528f, _2610, mad(1.1408027f, _2604, (_2598 * -0.13025719f)))));  // [sem: expr_sat]
    _2619 = max(max(_1661, _2027), max(max(_2223, _2419), _2615));
    _2635 = (-1.0f / (((1.0f - _1679) * 8.0f) + (_1679 * 5.0f))) * sqrt(saturate((1.0f / _2619) * min(min(min(_1661, _2027), min(min(_2223, _2419), _2615)), (1.0f - _2619))));
    _2638 = 1.0f / ((_2635 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _2701 = saturate((((((saturate(max(0.0f, mad(1.1529719f, _2022, mad(-0.12896876f, _2016, (_2010 * -0.024003278f))))) + saturate(max(0.0f, mad(1.1529719f, _2218, mad(-0.12896876f, _2212, (_2206 * -0.024003278f)))))) + saturate(max(0.0f, mad(1.1529719f, _2414, mad(-0.12896876f, _2408, (_2402 * -0.024003278f)))))) + saturate(max(0.0f, mad(1.1529719f, _2610, mad(-0.12896876f, _2604, (_2598 * -0.024003278f)))))) * _2635) + _1667) * _2638);
    _2702 = saturate(((_2635 * (((_2223 + _2027) + _2419) + _2615)) + _1661) * _2638);  // [sem: expr_sat]
    // [sem: expr_sat]
    _2703 = saturate((((((saturate(max(0.0f, mad(-0.08325848f, _2022, mad(-0.6217906f, _2016, (_2010 * 1.7050515f))))) + saturate(max(0.0f, mad(-0.08325848f, _2218, mad(-0.6217906f, _2212, (_2206 * 1.7050515f)))))) + saturate(max(0.0f, mad(-0.08325848f, _2414, mad(-0.6217906f, _2408, (_2402 * 1.7050515f)))))) + saturate(max(0.0f, mad(-0.08325848f, _2610, mad(-0.6217906f, _2604, (_2598 * 1.7050515f)))))) * _2635) + _1655) * _2638);
  } else {
    _2701 = _1667;  // [sem: expr_sat]
    _2702 = _1661;  // [sem: expr_sat]
    _2703 = _1655;  // [sem: expr_sat]
  }
  _2707 = 1.0f - abs(_etcParams.w);
  _2708 = saturate(_etcParams.w);  // [sem: expr_sat]
  _2711 = (saturate(_2703) * _2707) + _2708;
  _2714 = (saturate(_2702) * _2707) + _2708;
  _2717 = (saturate(_2701) * _2707) + _2708;
  if (_colorGradingParams.w > 0.0f) {
    _2722 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _2739 = (((max(0.0f, (1.0f - _2717)) - _2717) * _2722) + _2717);
    _2740 = (((max(0.0f, (1.0f - _2714)) - _2714) * _2722) + _2714);
    _2741 = (((max(0.0f, (1.0f - _2711)) - _2711) * _2722) + _2711);
  } else {
    _2739 = _2717;
    _2740 = _2714;
    _2741 = _2711;
  }
  _2744 = _userImageAdjust.y + 1.0f;
  _2746 = _userImageAdjust.x + 0.5f;
  _2749 = (_2744 * (_2741 + -0.5f)) + _2746;
  _2752 = (_2744 * (_2740 + -0.5f)) + _2746;
  _2755 = (_2744 * (_2739 + -0.5f)) + _2746;
  _2761 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _2763 = (TEXCOORD.x * 2.0f) + -1.0f;
  _2764 = TEXCOORD.y * 2.0f;
  _2765 = 1.0f - _2764;
  _2777 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _2765, ((_projToPrevProj[3].x) * _2763)));
  _2787 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _2765, ((_projToPrevProj[0].x) * _2763))) + (_projToPrevProj[0].w)) / _2777) - _2763;
  _2797 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _2765, ((_projToPrevProj[1].x) * _2763))) + (_projToPrevProj[1].w)) / _2777) - _2765;
  if (_localToneMappingParams.w > 0.0f) {
    _2810 = saturate(1.0f - (sqrt((_2797 * _2797) + (_2787 * _2787)) * 2.0f));  // [sem: expr_sat]
  } else {
    _2810 = 1.0f;  // [sem: expr_sat]
  }
  _2811 = abs(_2763);
  _2813 = abs(_2764 + -1.0f);
  _2820 = saturate(1.0f - ((_postProcessParams.x * _2810) * dot(float2(_2811, _2813), float2(_2811, _2813))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _2867 = (exp2(log2(saturate(mad(_colorBlind0.z, _2755, mad(_colorBlind0.y, _2752, (_colorBlind0.x * _2749))))) * _2761) * _2820);
      _2868 = (exp2(log2(saturate(mad(_colorBlind1.z, _2755, mad(_colorBlind1.y, _2752, (_colorBlind1.x * _2749))))) * _2761) * _2820);
      _2869 = (exp2(log2(saturate(mad(_colorBlind2.z, _2755, mad(_colorBlind2.y, _2752, (_colorBlind2.x * _2749))))) * _2761) * _2820);
    } else {
      _2867 = 0.0f;
      _2868 = 0.0f;
      _2869 = 0.0f;
    }
  } else {
    _2867 = 0.0f;
    _2868 = 0.0f;
    _2869 = 0.0f;
  }
  SV_Target.x = _2867;
  SV_Target.y = _2868;
  SV_Target.z = _2869;
  SV_Target.w = _18.w;
  return SV_Target;
}
