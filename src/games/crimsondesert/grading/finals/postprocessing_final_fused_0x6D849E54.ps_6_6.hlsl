Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

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
  float _1832;
  float _1868;
  float _1879;
  float _2039;
  float _2075;
  float _2086;
  float _2245;
  float _2281;
  float _2292;
  float _2451;
  float _2487;
  float _2498;
  float _2690;
  float _2691;
  float _2692;
  float _2728;
  float _2729;
  float _2730;
  float _2831;
  float _2853;
  float _2854;
  float _2855;
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
  float _156;
  float _157;
  float _160;
  float _163;
  float _166;
  float _169;
  float _172;
  float _175;
  float _176;
  float _180;
  float _181;
  float _182;
  float _191;
  float _207;
  float _208;
  float _209;
  float _223;
  float _224;
  float _225;
  float _228;
  float _231;
  float _234;
  float _238;
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
  bool _302;
  bool _303;
  bool _304;
  bool _305;
  float _314;
  float _321;
  float _334;
  float _338;
  float _344;
  float _357;
  float _358;
  float _359;
  float _360;
  float _361;
  float _362;
  float _364;
  float _366;
  float _368;
  float _405;
  float _406;
  float _407;
  float _423;
  float _424;
  float _425;
  float _447;
  float _448;
  float _449;
  float _465;
  float _466;
  float _467;
  float _480;
  float _481;
  float _482;
  float _485;
  float _486;
  float _487;
  float _521;
  float _522;
  float _523;
  float _524;
  float _531;
  float _534;
  float _535;
  float _538;
  float _541;
  float _544;
  float _547;
  float _550;
  float _553;
  float _554;
  float _558;
  float _559;
  float _560;
  float _569;
  float _585;
  float _586;
  float _587;
  float _601;
  float _602;
  float _603;
  float _606;
  float _609;
  float _612;
  float _616;
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
  bool _680;
  bool _681;
  bool _682;
  bool _683;
  float _692;
  float _699;
  float _712;
  float _716;
  float _722;
  float _735;
  float _736;
  float _737;
  float _738;
  float _739;
  float _740;
  float _742;
  float _744;
  float _746;
  float _783;
  float _784;
  float _785;
  float _801;
  float _802;
  float _803;
  float _825;
  float _826;
  float _827;
  float _843;
  float _844;
  float _845;
  float _864;
  float _868;
  float _870;
  float _871;
  float _872;
  float _906;
  float _907;
  float _908;
  float _909;
  float _916;
  float _919;
  float _920;
  float _923;
  float _926;
  float _929;
  float _932;
  float _935;
  float _938;
  float _939;
  float _943;
  float _944;
  float _945;
  float _954;
  float _970;
  float _971;
  float _972;
  float _986;
  float _987;
  float _988;
  float _991;
  float _994;
  float _997;
  float _1001;
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
  bool _1065;
  bool _1066;
  bool _1067;
  bool _1068;
  float _1077;
  float _1084;
  float _1097;
  float _1101;
  float _1107;
  float _1120;
  float _1121;
  float _1122;
  float _1123;
  float _1124;
  float _1125;
  float _1127;
  float _1129;
  float _1131;
  float _1168;
  float _1169;
  float _1170;
  float _1186;
  float _1187;
  float _1188;
  float _1210;
  float _1211;
  float _1212;
  float _1228;
  float _1229;
  float _1230;
  float _1249;
  float _1250;
  float _1251;
  float _1252;
  float _1254;
  float _1261;
  float _1262;
  float _1263;
  float _1265;
  float _1277;
  float _1279;
  float _1289;
  float _1290;
  float _1291;
  float _1325;
  float _1326;
  float _1327;
  float _1328;
  float _1335;
  float _1338;
  float _1339;
  float _1342;
  float _1345;
  float _1348;
  float _1351;
  float _1354;
  float _1357;
  float _1358;
  float _1362;
  float _1363;
  float _1364;
  float _1373;
  float _1389;
  float _1390;
  float _1391;
  float _1405;
  float _1406;
  float _1407;
  float _1410;
  float _1413;
  float _1416;
  float _1420;
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
  bool _1484;
  bool _1485;
  bool _1486;
  bool _1487;
  float _1496;
  float _1503;
  float _1516;
  float _1520;
  float _1526;
  float _1539;
  float _1540;
  float _1541;
  float _1542;
  float _1543;
  float _1544;
  float _1546;
  float _1548;
  float _1550;
  float _1587;
  float _1588;
  float _1589;
  float _1605;
  float _1606;
  float _1607;
  float _1629;
  float _1630;
  float _1631;
  float _1647;
  float _1648;
  float _1649;
  float _1665;
  float _1666;
  float _1667;
  float _1669;
  float _1677;
  float _1692;
  float _1693;
  float _1694;
  float _1695;
  float _1702;
  float _1705;
  float _1706;
  float _1709;
  float _1712;
  float _1715;
  float _1718;
  float _1721;
  float _1724;
  float _1725;
  float _1729;
  float _1730;
  float _1731;
  float _1740;
  float _1756;
  float _1757;
  float _1758;
  float _1772;
  float _1773;
  float _1774;
  float _1777;
  float _1780;
  float _1783;
  float _1787;
  float _1792;
  float _1805;
  float _1806;
  float _1807;
  float _1808;
  float _1812;
  float _1823;
  bool _1824;
  float _1833;
  float _1834;
  float _1835;
  float _1836;
  float _1843;
  float _1846;
  float _1848;
  bool _1851;
  bool _1852;
  bool _1853;
  bool _1854;
  float _1863;
  float _1870;
  float _1883;
  float _1887;
  float _1889;
  float _1893;
  float _1906;
  float _1907;
  float _1908;
  float _1909;
  float _1910;
  float _1911;
  float _1913;
  float _1915;
  float _1917;
  float _1954;
  float _1955;
  float _1956;
  float _1972;
  float _1973;
  float _1974;
  float _1996;
  float _1997;
  float _1998;
  float _2014;
  float _2015;
  float _2016;
  float _2030;
  float _2040;
  float _2041;
  float _2042;
  float _2043;
  float _2050;
  float _2053;
  float _2055;
  bool _2058;
  bool _2059;
  bool _2060;
  bool _2061;
  float _2070;
  float _2077;
  float _2090;
  float _2094;
  float _2099;
  float _2112;
  float _2113;
  float _2114;
  float _2115;
  float _2116;
  float _2117;
  float _2119;
  float _2121;
  float _2123;
  float _2160;
  float _2161;
  float _2162;
  float _2178;
  float _2179;
  float _2180;
  float _2202;
  float _2203;
  float _2204;
  float _2220;
  float _2221;
  float _2222;
  float _2236;
  float _2246;
  float _2247;
  float _2248;
  float _2249;
  float _2256;
  float _2259;
  float _2261;
  bool _2264;
  bool _2265;
  bool _2266;
  bool _2267;
  float _2276;
  float _2283;
  float _2296;
  float _2300;
  float _2305;
  float _2318;
  float _2319;
  float _2320;
  float _2321;
  float _2322;
  float _2323;
  float _2325;
  float _2327;
  float _2329;
  float _2366;
  float _2367;
  float _2368;
  float _2384;
  float _2385;
  float _2386;
  float _2408;
  float _2409;
  float _2410;
  float _2426;
  float _2427;
  float _2428;
  float _2442;
  float _2452;
  float _2453;
  float _2454;
  float _2455;
  float _2462;
  float _2465;
  float _2467;
  bool _2470;
  bool _2471;
  bool _2472;
  bool _2473;
  float _2482;
  float _2489;
  float _2502;
  float _2506;
  float _2511;
  float _2524;
  float _2525;
  float _2526;
  float _2527;
  float _2528;
  float _2529;
  float _2531;
  float _2533;
  float _2535;
  float _2572;
  float _2573;
  float _2574;
  float _2590;
  float _2591;
  float _2592;
  float _2614;
  float _2615;
  float _2616;
  float _2632;
  float _2633;
  float _2634;
  float _2648;
  float _2657;
  float _2664;
  float _2667;
  float _2699;
  float _2703;
  float _2704;
  float _2705;
  float _2706;
  float _2711;
  float _2736;
  float _2740;
  float _2741;
  float _2742;
  float _2743;
  float _2773;
  float _2784;
  float _2785;
  float _2786;
  float _2814;
  float _2817;
  float _2818;
  float _2834;
  float _2835;
  float _2839;
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
  _156 = (lerp(_146, _143, _powerParams.w)) * 3.0f;  // [sem: blended]
  _157 = (lerp(_146, _144, _powerParams.w)) * 3.0f;  // [sem: blended]
  _160 = mad(-1.7106533e-05f, _157, mad(0.00040110573f, _156, (_153 * 3.0009599f)));
  _163 = mad(-2.34209e-05f, _157, mad(0.9997657f, _156, (_153 * -6.0908147e-05f)));
  _166 = mad(1.0005832f, _157, mad(8.34018e-05f, _156, (_153 * 4.855916e-05f)));
  _169 = mad(0.04736635f, _166, mad(0.33951214f, _163, (_160 * 0.61319155f)));
  _172 = mad(0.013450007f, _166, mad(0.91633576f, _163, (_160 * 0.07020692f)));
  _175 = mad(0.8696068f, _166, mad(0.1095673f, _163, (_160 * 0.020618873f)));
  _176 = dot(float3(_169, _172, _175), float3(0.27222872f, 0.67408174f, 0.053689517f));
  _180 = (_169 / _176) + -1.0f;
  _181 = (_172 / _176) + -1.0f;
  _182 = (_175 / _176) + -1.0f;
  _191 = (1.0f - exp2((_176 * _176) * -4.0f)) * (1.0f - exp2(dot(float3(_180, _181, _182), float3(_180, _181, _182)) * -4.0f));
  _207 = ((mad(-0.06368284f, _175, mad(-0.3292913f, _172, (_169 * 1.3704128f))) - _169) * _191) + _169;
  _208 = ((mad(-0.010861567f, _175, mad(1.0970908f, _172, (_169 * -0.08343426f))) - _172) * _191) + _172;
  _209 = ((mad(1.2036945f, _175, mad(-0.098625645f, _172, (_169 * -0.02579326f))) - _175) * _191) + _175;
  _223 = ((mad(0.061360642f, _209, mad(-4.5401976e-09f, _208, (_207 * 0.9386394f))) - _207) * 0.6f) + _207;
  _224 = ((mad(0.1692059f, _209, mad(0.8307942f, _208, (_207 * 6.775372e-08f))) - _208) * 0.6f) + _208;
  _225 = (mad(-2.3283064e-10f, _208, (_207 * -9.313226e-10f)) * 0.6f) + _209;
  _228 = mad(0.16386905f, _225, mad(0.14067869f, _224, (_223 * 0.6954522f)));
  _231 = mad(0.095534325f, _225, mad(0.8596711f, _224, (_223 * 0.04479458f)));
  _234 = mad(1.0015007f, _225, mad(0.00402521f, _224, (_223 * -0.005525883f)));
  _238 = max(max(_228, _231), _234);
  _243 = (max(_238, 1e-10f) - max(min(min(_228, _231), _234), 1e-10f)) / max(_238, 0.01f);
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
    _302 = (_294 < 0.0f);
    _303 = (_294 == 0.0f);
    _304 = (_297 >= 0.0f);
    _305 = (_297 < 0.0f);
    _314 = select((_304 && _303), 90.0f, select((_305 && _303), -90.0f, (select((_305 && _302), (_299 + -3.1415927f), select((_304 && _302), (_299 + 3.1415927f), _299)) * 57.295776f)));
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
  _357 = log2(max(0.0f, mad(-0.21492857f, _287, mad(-0.23651075f, _286, (_344 * 1.4514393f)))));
  _358 = log2(max(0.0f, mad(-0.09967592f, _287, mad(1.1762297f, _286, (_344 * -0.07655378f)))));
  _359 = log2(max(0.0f, mad(0.9977163f, _287, mad(-0.0060324497f, _286, (_344 * 0.008316148f)))));
  _360 = _357 * 0.30103f;
  _361 = _358 * 0.30103f;
  _362 = _359 * 0.30103f;
  _364 = (_357 * 0.2739373f) + 0.7790625f;
  _366 = (_358 * 0.2739373f) + 0.7790625f;
  _368 = (_359 * 0.2739373f) + 0.7790625f;
  _405 = select((_360 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_357 * 1.43712f)) + 1.0f)), _364);
  _406 = select((_361 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_358 * 1.43712f)) + 1.0f)), _366);
  _407 = select((_362 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_359 * 1.43712f)) + 1.0f)), _368);
  _423 = 1.0f - saturate(-0.78987026f - (_357 * 0.9446112f));
  _424 = 1.0f - saturate(-0.78987026f - (_358 * 0.9446112f));
  _425 = 1.0f - saturate(-0.78987026f - (_359 * 0.9446112f));
  _447 = max(0.0f, ((((_423 * _423) * (select((_360 > -0.57039833f), (1.04f - (1.56f / (exp2((_357 * 1.013354f) + 1.9201254f) + 1.0f))), _364) - _405)) * (3.0f - (_423 * 2.0f))) + _405));
  _448 = max(0.0f, ((((_424 * _424) * (select((_361 > -0.57039833f), (1.04f - (1.56f / (exp2((_358 * 1.013354f) + 1.9201254f) + 1.0f))), _366) - _406)) * (3.0f - (_424 * 2.0f))) + _406));
  _449 = max(0.0f, ((((_425 * _425) * (select((_362 > -0.57039833f), (1.04f - (1.56f / (exp2((_359 * 1.013354f) + 1.9201254f) + 1.0f))), _368) - _407)) * (3.0f - (_425 * 2.0f))) + _407));
  _465 = ((mad(-0.06537104f, _449, mad(1.4518155e-06f, _448, (_447 * 1.0653747f))) - _447) * 0.6f) + _447;
  _466 = ((mad(-0.2036677f, _449, mad(1.2036635f, _448, (_447 * -2.5716145e-07f))) - _448) * 0.6f) + _448;
  _467 = ((mad(0.99999964f, _449, mad(2.0954758e-08f, _448, (_447 * 1.8626451e-08f))) - _449) * 0.6f) + _449;
  _480 = saturate(max(0.0f, mad(-0.08325848f, _467, mad(-0.6217906f, _466, (_465 * 1.7050515f)))));  // [sem: expr_sat]
  _481 = saturate(max(0.0f, mad(-0.010548528f, _467, mad(1.1408027f, _466, (_465 * -0.13025719f)))));  // [sem: expr_sat]
  _482 = saturate(max(0.0f, mad(1.1529719f, _467, mad(-0.12896876f, _466, (_465 * -0.024003278f)))));  // [sem: expr_sat]
  _485 = _localToneMappingParams.x * _86;
  _486 = _localToneMappingParams.x * _87;
  _487 = _localToneMappingParams.x * _88;
  _521 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_485 * 1.70505f) - (_486 * 0.62179f)) - (_487 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _522 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_486 * 1.1408f) - (_485 * 0.13026f)) - (_487 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _523 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_485 * -0.024f) - (_486 * 0.12897f)) + (_487 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _524 = dot(float3(_521, _522, _523), float3(0.212671f, 0.71516f, 0.072169f));
  _531 = ((_521 - _524) * _powerParams.w) + _524;
  _534 = (lerp(_524, _522, _powerParams.w)) * 3.0f;  // [sem: blended]
  _535 = (lerp(_524, _523, _powerParams.w)) * 3.0f;  // [sem: blended]
  _538 = mad(-1.7106533e-05f, _535, mad(0.00040110573f, _534, (_531 * 3.0009599f)));
  _541 = mad(-2.34209e-05f, _535, mad(0.9997657f, _534, (_531 * -6.0908147e-05f)));
  _544 = mad(1.0005832f, _535, mad(8.34018e-05f, _534, (_531 * 4.855916e-05f)));
  _547 = mad(0.04736635f, _544, mad(0.33951214f, _541, (_538 * 0.61319155f)));
  _550 = mad(0.013450007f, _544, mad(0.91633576f, _541, (_538 * 0.07020692f)));
  _553 = mad(0.8696068f, _544, mad(0.1095673f, _541, (_538 * 0.020618873f)));
  _554 = dot(float3(_547, _550, _553), float3(0.27222872f, 0.67408174f, 0.053689517f));
  _558 = (_547 / _554) + -1.0f;
  _559 = (_550 / _554) + -1.0f;
  _560 = (_553 / _554) + -1.0f;
  _569 = (1.0f - exp2((_554 * _554) * -4.0f)) * (1.0f - exp2(dot(float3(_558, _559, _560), float3(_558, _559, _560)) * -4.0f));
  _585 = ((mad(-0.06368284f, _553, mad(-0.3292913f, _550, (_547 * 1.3704128f))) - _547) * _569) + _547;
  _586 = ((mad(-0.010861567f, _553, mad(1.0970908f, _550, (_547 * -0.08343426f))) - _550) * _569) + _550;
  _587 = ((mad(1.2036945f, _553, mad(-0.098625645f, _550, (_547 * -0.02579326f))) - _553) * _569) + _553;
  _601 = ((mad(0.061360642f, _587, mad(-4.5401976e-09f, _586, (_585 * 0.9386394f))) - _585) * 0.6f) + _585;
  _602 = ((mad(0.1692059f, _587, mad(0.8307942f, _586, (_585 * 6.775372e-08f))) - _586) * 0.6f) + _586;
  _603 = (mad(-2.3283064e-10f, _586, (_585 * -9.313226e-10f)) * 0.6f) + _587;
  _606 = mad(0.16386905f, _603, mad(0.14067869f, _602, (_601 * 0.6954522f)));
  _609 = mad(0.095534325f, _603, mad(0.8596711f, _602, (_601 * 0.04479458f)));
  _612 = mad(1.0015007f, _603, mad(0.00402521f, _602, (_601 * -0.005525883f)));
  _616 = max(max(_606, _609), _612);
  _621 = (max(_616, 1e-10f) - max(min(min(_606, _609), _612), 1e-10f)) / max(_616, 0.01f);
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
    _680 = (_672 < 0.0f);
    _681 = (_672 == 0.0f);
    _682 = (_675 >= 0.0f);
    _683 = (_675 < 0.0f);
    _692 = select((_682 && _681), 90.0f, select((_683 && _681), -90.0f, (select((_683 && _680), (_677 + -3.1415927f), select((_682 && _680), (_677 + 3.1415927f), _677)) * 57.295776f)));
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
  _735 = log2(max(0.0f, mad(-0.21492857f, _665, mad(-0.23651075f, _664, (_722 * 1.4514393f)))));
  _736 = log2(max(0.0f, mad(-0.09967592f, _665, mad(1.1762297f, _664, (_722 * -0.07655378f)))));
  _737 = log2(max(0.0f, mad(0.9977163f, _665, mad(-0.0060324497f, _664, (_722 * 0.008316148f)))));
  _738 = _735 * 0.30103f;
  _739 = _736 * 0.30103f;
  _740 = _737 * 0.30103f;
  _742 = (_735 * 0.2739373f) + 0.7790625f;
  _744 = (_736 * 0.2739373f) + 0.7790625f;
  _746 = (_737 * 0.2739373f) + 0.7790625f;
  _783 = select((_738 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_735 * 1.43712f)) + 1.0f)), _742);
  _784 = select((_739 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_736 * 1.43712f)) + 1.0f)), _744);
  _785 = select((_740 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_737 * 1.43712f)) + 1.0f)), _746);
  _801 = 1.0f - saturate(-0.78987026f - (_735 * 0.9446112f));
  _802 = 1.0f - saturate(-0.78987026f - (_736 * 0.9446112f));
  _803 = 1.0f - saturate(-0.78987026f - (_737 * 0.9446112f));
  _825 = max(0.0f, ((((_801 * _801) * (select((_738 > -0.57039833f), (1.04f - (1.56f / (exp2((_735 * 1.013354f) + 1.9201254f) + 1.0f))), _742) - _783)) * (3.0f - (_801 * 2.0f))) + _783));
  _826 = max(0.0f, ((((_802 * _802) * (select((_739 > -0.57039833f), (1.04f - (1.56f / (exp2((_736 * 1.013354f) + 1.9201254f) + 1.0f))), _744) - _784)) * (3.0f - (_802 * 2.0f))) + _784));
  _827 = max(0.0f, ((((_803 * _803) * (select((_740 > -0.57039833f), (1.04f - (1.56f / (exp2((_737 * 1.013354f) + 1.9201254f) + 1.0f))), _746) - _785)) * (3.0f - (_803 * 2.0f))) + _785));
  _843 = ((mad(-0.06537104f, _827, mad(1.4518155e-06f, _826, (_825 * 1.0653747f))) - _825) * 0.6f) + _825;
  _844 = ((mad(-0.2036677f, _827, mad(1.2036635f, _826, (_825 * -2.5716145e-07f))) - _826) * 0.6f) + _826;
  _845 = ((mad(0.99999964f, _827, mad(2.0954758e-08f, _826, (_825 * 1.8626451e-08f))) - _827) * 0.6f) + _827;
  _864 = dot(float3(saturate(saturate(max(0.0f, mad(-0.08325848f, _845, mad(-0.6217906f, _844, (_843 * 1.7050515f)))))), saturate(saturate(max(0.0f, mad(-0.010548528f, _845, mad(1.1408027f, _844, (_843 * -0.13025719f)))))), saturate(saturate(max(0.0f, mad(1.1529719f, _845, mad(-0.12896876f, _844, (_843 * -0.024003278f))))))), float3(0.1f, 0.7f, 0.2f));
  _868 = dot(float3(saturate(_480), saturate(_481), saturate(_482)), float3(0.1f, 0.7f, 0.2f));
  _870 = _localToneMappingParams.y * _86;
  _871 = _localToneMappingParams.y * _87;
  _872 = _localToneMappingParams.y * _88;
  _906 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_870 * 1.70505f) - (_871 * 0.62179f)) - (_872 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _907 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_871 * 1.1408f) - (_870 * 0.13026f)) - (_872 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _908 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_870 * -0.024f) - (_871 * 0.12897f)) + (_872 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _909 = dot(float3(_906, _907, _908), float3(0.212671f, 0.71516f, 0.072169f));
  _916 = ((_906 - _909) * _powerParams.w) + _909;
  _919 = (lerp(_909, _907, _powerParams.w)) * 3.0f;  // [sem: blended]
  _920 = (lerp(_909, _908, _powerParams.w)) * 3.0f;  // [sem: blended]
  _923 = mad(-1.7106533e-05f, _920, mad(0.00040110573f, _919, (_916 * 3.0009599f)));
  _926 = mad(-2.34209e-05f, _920, mad(0.9997657f, _919, (_916 * -6.0908147e-05f)));
  _929 = mad(1.0005832f, _920, mad(8.34018e-05f, _919, (_916 * 4.855916e-05f)));
  _932 = mad(0.04736635f, _929, mad(0.33951214f, _926, (_923 * 0.61319155f)));
  _935 = mad(0.013450007f, _929, mad(0.91633576f, _926, (_923 * 0.07020692f)));
  _938 = mad(0.8696068f, _929, mad(0.1095673f, _926, (_923 * 0.020618873f)));
  _939 = dot(float3(_932, _935, _938), float3(0.27222872f, 0.67408174f, 0.053689517f));
  _943 = (_932 / _939) + -1.0f;
  _944 = (_935 / _939) + -1.0f;
  _945 = (_938 / _939) + -1.0f;
  _954 = (1.0f - exp2((_939 * _939) * -4.0f)) * (1.0f - exp2(dot(float3(_943, _944, _945), float3(_943, _944, _945)) * -4.0f));
  _970 = ((mad(-0.06368284f, _938, mad(-0.3292913f, _935, (_932 * 1.3704128f))) - _932) * _954) + _932;
  _971 = ((mad(-0.010861567f, _938, mad(1.0970908f, _935, (_932 * -0.08343426f))) - _935) * _954) + _935;
  _972 = ((mad(1.2036945f, _938, mad(-0.098625645f, _935, (_932 * -0.02579326f))) - _938) * _954) + _938;
  _986 = ((mad(0.061360642f, _972, mad(-4.5401976e-09f, _971, (_970 * 0.9386394f))) - _970) * 0.6f) + _970;
  _987 = ((mad(0.1692059f, _972, mad(0.8307942f, _971, (_970 * 6.775372e-08f))) - _971) * 0.6f) + _971;
  _988 = (mad(-2.3283064e-10f, _971, (_970 * -9.313226e-10f)) * 0.6f) + _972;
  _991 = mad(0.16386905f, _988, mad(0.14067869f, _987, (_986 * 0.6954522f)));
  _994 = mad(0.095534325f, _988, mad(0.8596711f, _987, (_986 * 0.04479458f)));
  _997 = mad(1.0015007f, _988, mad(0.00402521f, _987, (_986 * -0.005525883f)));
  _1001 = max(max(_991, _994), _997);
  _1006 = (max(_1001, 1e-10f) - max(min(min(_991, _994), _997), 1e-10f)) / max(_1001, 0.01f);
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
    _1065 = (_1057 < 0.0f);
    _1066 = (_1057 == 0.0f);
    _1067 = (_1060 >= 0.0f);
    _1068 = (_1060 < 0.0f);
    _1077 = select((_1067 && _1066), 90.0f, select((_1068 && _1066), -90.0f, (select((_1068 && _1065), (_1062 + -3.1415927f), select((_1067 && _1065), (_1062 + 3.1415927f), _1062)) * 57.295776f)));
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
  _1120 = log2(max(0.0f, mad(-0.21492857f, _1050, mad(-0.23651075f, _1049, (_1107 * 1.4514393f)))));
  _1121 = log2(max(0.0f, mad(-0.09967592f, _1050, mad(1.1762297f, _1049, (_1107 * -0.07655378f)))));
  _1122 = log2(max(0.0f, mad(0.9977163f, _1050, mad(-0.0060324497f, _1049, (_1107 * 0.008316148f)))));
  _1123 = _1120 * 0.30103f;
  _1124 = _1121 * 0.30103f;
  _1125 = _1122 * 0.30103f;
  _1127 = (_1120 * 0.2739373f) + 0.7790625f;
  _1129 = (_1121 * 0.2739373f) + 0.7790625f;
  _1131 = (_1122 * 0.2739373f) + 0.7790625f;
  _1168 = select((_1123 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1120 * 1.43712f)) + 1.0f)), _1127);
  _1169 = select((_1124 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1121 * 1.43712f)) + 1.0f)), _1129);
  _1170 = select((_1125 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1122 * 1.43712f)) + 1.0f)), _1131);
  _1186 = 1.0f - saturate(-0.78987026f - (_1120 * 0.9446112f));
  _1187 = 1.0f - saturate(-0.78987026f - (_1121 * 0.9446112f));
  _1188 = 1.0f - saturate(-0.78987026f - (_1122 * 0.9446112f));
  _1210 = max(0.0f, ((((_1186 * _1186) * (select((_1123 > -0.57039833f), (1.04f - (1.56f / (exp2((_1120 * 1.013354f) + 1.9201254f) + 1.0f))), _1127) - _1168)) * (3.0f - (_1186 * 2.0f))) + _1168));
  _1211 = max(0.0f, ((((_1187 * _1187) * (select((_1124 > -0.57039833f), (1.04f - (1.56f / (exp2((_1121 * 1.013354f) + 1.9201254f) + 1.0f))), _1129) - _1169)) * (3.0f - (_1187 * 2.0f))) + _1169));
  _1212 = max(0.0f, ((((_1188 * _1188) * (select((_1125 > -0.57039833f), (1.04f - (1.56f / (exp2((_1122 * 1.013354f) + 1.9201254f) + 1.0f))), _1131) - _1170)) * (3.0f - (_1188 * 2.0f))) + _1170));
  _1228 = ((mad(-0.06537104f, _1212, mad(1.4518155e-06f, _1211, (_1210 * 1.0653747f))) - _1210) * 0.6f) + _1210;
  _1229 = ((mad(-0.2036677f, _1212, mad(1.2036635f, _1211, (_1210 * -2.5716145e-07f))) - _1211) * 0.6f) + _1211;
  _1230 = ((mad(0.99999964f, _1212, mad(2.0954758e-08f, _1211, (_1210 * 1.8626451e-08f))) - _1212) * 0.6f) + _1212;
  _1249 = dot(float3(saturate(saturate(max(0.0f, mad(-0.08325848f, _1230, mad(-0.6217906f, _1229, (_1228 * 1.7050515f)))))), saturate(saturate(max(0.0f, mad(-0.010548528f, _1230, mad(1.1408027f, _1229, (_1228 * -0.13025719f)))))), saturate(saturate(max(0.0f, mad(1.1529719f, _1230, mad(-0.12896876f, _1229, (_1228 * -0.024003278f))))))), float3(0.1f, 0.7f, 0.2f));
  _1250 = _864 + -0.5f;
  _1251 = _868 + -0.5f;
  _1252 = _1249 + -0.5f;
  _1254 = _localToneMappingParams.z * -0.7213475f;
  _1261 = exp2((_1250 * _1250) * _1254);
  _1262 = exp2((_1251 * _1251) * _1254);
  _1263 = exp2((_1252 * _1252) * _1254);
  _1265 = dot(float3(_1261, _1262, _1263), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _1277 = dot(float3(max(_480, 0.0f), max(_481, 0.0f), max(_482, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _1279 = max(dot(float3(((_1261 / _1265) * _864), ((_1262 / _1265) * _868), ((_1263 / _1265) * _1249)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _1277;
  if (!(_1277 > 0.007f)) {
    _1288 = ((((_1277 * _1277) * 20408.16f) * (_1279 + -1.0f)) + 1.0f);
  } else {
    _1288 = _1279;
  }
  _1289 = _1288 * _86;
  _1290 = _1288 * _87;
  _1291 = _1288 * _88;
  _1325 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_1289 * 1.70505f) - (_1290 * 0.62179f)) - (_1291 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _1326 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_1290 * 1.1408f) - (_1289 * 0.13026f)) - (_1291 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _1327 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_1289 * -0.024f) - (_1290 * 0.12897f)) + (_1291 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _1328 = dot(float3(_1325, _1326, _1327), float3(0.212671f, 0.71516f, 0.072169f));
  _1335 = ((_1325 - _1328) * _powerParams.w) + _1328;
  _1338 = (lerp(_1328, _1326, _powerParams.w)) * 3.0f;  // [sem: blended]
  _1339 = (lerp(_1328, _1327, _powerParams.w)) * 3.0f;  // [sem: blended]
  _1342 = mad(-1.7106533e-05f, _1339, mad(0.00040110573f, _1338, (_1335 * 3.0009599f)));
  _1345 = mad(-2.34209e-05f, _1339, mad(0.9997657f, _1338, (_1335 * -6.0908147e-05f)));
  _1348 = mad(1.0005832f, _1339, mad(8.34018e-05f, _1338, (_1335 * 4.855916e-05f)));
  _1351 = mad(0.04736635f, _1348, mad(0.33951214f, _1345, (_1342 * 0.61319155f)));
  _1354 = mad(0.013450007f, _1348, mad(0.91633576f, _1345, (_1342 * 0.07020692f)));
  _1357 = mad(0.8696068f, _1348, mad(0.1095673f, _1345, (_1342 * 0.020618873f)));
  _1358 = dot(float3(_1351, _1354, _1357), float3(0.27222872f, 0.67408174f, 0.053689517f));
  _1362 = (_1351 / _1358) + -1.0f;
  _1363 = (_1354 / _1358) + -1.0f;
  _1364 = (_1357 / _1358) + -1.0f;
  _1373 = (1.0f - exp2((_1358 * _1358) * -4.0f)) * (1.0f - exp2(dot(float3(_1362, _1363, _1364), float3(_1362, _1363, _1364)) * -4.0f));
  _1389 = ((mad(-0.06368284f, _1357, mad(-0.3292913f, _1354, (_1351 * 1.3704128f))) - _1351) * _1373) + _1351;
  _1390 = ((mad(-0.010861567f, _1357, mad(1.0970908f, _1354, (_1351 * -0.08343426f))) - _1354) * _1373) + _1354;
  _1391 = ((mad(1.2036945f, _1357, mad(-0.098625645f, _1354, (_1351 * -0.02579326f))) - _1357) * _1373) + _1357;
  _1405 = ((mad(0.061360642f, _1391, mad(-4.5401976e-09f, _1390, (_1389 * 0.9386394f))) - _1389) * 0.6f) + _1389;
  _1406 = ((mad(0.1692059f, _1391, mad(0.8307942f, _1390, (_1389 * 6.775372e-08f))) - _1390) * 0.6f) + _1390;
  _1407 = (mad(-2.3283064e-10f, _1390, (_1389 * -9.313226e-10f)) * 0.6f) + _1391;
  _1410 = mad(0.16386905f, _1407, mad(0.14067869f, _1406, (_1405 * 0.6954522f)));
  _1413 = mad(0.095534325f, _1407, mad(0.8596711f, _1406, (_1405 * 0.04479458f)));
  _1416 = mad(1.0015007f, _1407, mad(0.00402521f, _1406, (_1405 * -0.005525883f)));
  _1420 = max(max(_1410, _1413), _1416);
  _1425 = (max(_1420, 1e-10f) - max(min(min(_1410, _1413), _1416), 1e-10f)) / max(_1420, 0.01f);
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
    _1484 = (_1476 < 0.0f);
    _1485 = (_1476 == 0.0f);
    _1486 = (_1479 >= 0.0f);
    _1487 = (_1479 < 0.0f);
    _1496 = select((_1486 && _1485), 90.0f, select((_1487 && _1485), -90.0f, (select((_1487 && _1484), (_1481 + -3.1415927f), select((_1486 && _1484), (_1481 + 3.1415927f), _1481)) * 57.295776f)));
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
  _1539 = log2(max(0.0f, mad(-0.21492857f, _1469, mad(-0.23651075f, _1468, (_1526 * 1.4514393f)))));
  _1540 = log2(max(0.0f, mad(-0.09967592f, _1469, mad(1.1762297f, _1468, (_1526 * -0.07655378f)))));
  _1541 = log2(max(0.0f, mad(0.9977163f, _1469, mad(-0.0060324497f, _1468, (_1526 * 0.008316148f)))));
  _1542 = _1539 * 0.30103f;
  _1543 = _1540 * 0.30103f;
  _1544 = _1541 * 0.30103f;
  _1546 = (_1539 * 0.2739373f) + 0.7790625f;
  _1548 = (_1540 * 0.2739373f) + 0.7790625f;
  _1550 = (_1541 * 0.2739373f) + 0.7790625f;
  _1587 = select((_1542 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1539 * 1.43712f)) + 1.0f)), _1546);
  _1588 = select((_1543 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1540 * 1.43712f)) + 1.0f)), _1548);
  _1589 = select((_1544 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1541 * 1.43712f)) + 1.0f)), _1550);
  _1605 = 1.0f - saturate(-0.78987026f - (_1539 * 0.9446112f));
  _1606 = 1.0f - saturate(-0.78987026f - (_1540 * 0.9446112f));
  _1607 = 1.0f - saturate(-0.78987026f - (_1541 * 0.9446112f));
  _1629 = max(0.0f, ((((_1605 * _1605) * (select((_1542 > -0.57039833f), (1.04f - (1.56f / (exp2((_1539 * 1.013354f) + 1.9201254f) + 1.0f))), _1546) - _1587)) * (3.0f - (_1605 * 2.0f))) + _1587));
  _1630 = max(0.0f, ((((_1606 * _1606) * (select((_1543 > -0.57039833f), (1.04f - (1.56f / (exp2((_1540 * 1.013354f) + 1.9201254f) + 1.0f))), _1548) - _1588)) * (3.0f - (_1606 * 2.0f))) + _1588));
  _1631 = max(0.0f, ((((_1607 * _1607) * (select((_1544 > -0.57039833f), (1.04f - (1.56f / (exp2((_1541 * 1.013354f) + 1.9201254f) + 1.0f))), _1550) - _1589)) * (3.0f - (_1607 * 2.0f))) + _1589));
  _1647 = ((mad(-0.06537104f, _1631, mad(1.4518155e-06f, _1630, (_1629 * 1.0653747f))) - _1629) * 0.6f) + _1629;
  _1648 = ((mad(-0.2036677f, _1631, mad(1.2036635f, _1630, (_1629 * -2.5716145e-07f))) - _1630) * 0.6f) + _1630;
  _1649 = ((mad(0.99999964f, _1631, mad(2.0954758e-08f, _1630, (_1629 * 1.8626451e-08f))) - _1631) * 0.6f) + _1631;
  _1665 = max(saturate(max(0.0f, mad(-0.08325848f, _1649, mad(-0.6217906f, _1648, (_1647 * 1.7050515f))))), 0.0f);
  _1666 = max(saturate(max(0.0f, mad(-0.010548528f, _1649, mad(1.1408027f, _1648, (_1647 * -0.13025719f))))), 0.0f);
  _1667 = max(saturate(max(0.0f, mad(1.1529719f, _1649, mad(-0.12896876f, _1648, (_1647 * -0.024003278f))))), 0.0f);
  _1669 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_1669.x < 1e-07f) || (_1669.x == 1.0f))) {
    _1677 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _1692 = exp2(log2(max(0.0f, _offsetParams.x)) * _powerParams.x);
    _1693 = exp2(log2(max(0.0f, _offsetParams.y)) * _powerParams.y);
    _1694 = exp2(log2(max(0.0f, _offsetParams.z)) * _powerParams.z);
    _1695 = dot(float3(_1692, _1693, _1694), float3(0.212671f, 0.71516f, 0.072169f));
    _1702 = ((_1692 - _1695) * _powerParams.w) + _1695;
    _1705 = (lerp(_1695, _1693, _powerParams.w)) * 3.0f;  // [sem: blended]
    _1706 = (lerp(_1695, _1694, _powerParams.w)) * 3.0f;  // [sem: blended]
    _1709 = mad(-1.7106533e-05f, _1706, mad(0.00040110573f, _1705, (_1702 * 3.0009599f)));
    _1712 = mad(-2.34209e-05f, _1706, mad(0.9997657f, _1705, (_1702 * -6.0908147e-05f)));
    _1715 = mad(1.0005832f, _1706, mad(8.34018e-05f, _1705, (_1702 * 4.855916e-05f)));
    _1718 = mad(0.04736635f, _1715, mad(0.33951214f, _1712, (_1709 * 0.61319155f)));
    _1721 = mad(0.013450007f, _1715, mad(0.91633576f, _1712, (_1709 * 0.07020692f)));
    _1724 = mad(0.8696068f, _1715, mad(0.1095673f, _1712, (_1709 * 0.020618873f)));
    _1725 = dot(float3(_1718, _1721, _1724), float3(0.27222872f, 0.67408174f, 0.053689517f));
    _1729 = (_1718 / _1725) + -1.0f;
    _1730 = (_1721 / _1725) + -1.0f;
    _1731 = (_1724 / _1725) + -1.0f;
    _1740 = (1.0f - exp2((_1725 * _1725) * -4.0f)) * (1.0f - exp2(dot(float3(_1729, _1730, _1731), float3(_1729, _1730, _1731)) * -4.0f));
    _1756 = ((mad(-0.06368284f, _1724, mad(-0.3292913f, _1721, (_1718 * 1.3704128f))) - _1718) * _1740) + _1718;
    _1757 = ((mad(-0.010861567f, _1724, mad(1.0970908f, _1721, (_1718 * -0.08343426f))) - _1721) * _1740) + _1721;
    _1758 = ((mad(1.2036945f, _1724, mad(-0.098625645f, _1721, (_1718 * -0.02579326f))) - _1724) * _1740) + _1724;
    _1772 = ((mad(0.061360642f, _1758, mad(-4.5401976e-09f, _1757, (_1756 * 0.9386394f))) - _1756) * 0.6f) + _1756;
    _1773 = ((mad(0.1692059f, _1758, mad(0.8307942f, _1757, (_1756 * 6.775372e-08f))) - _1757) * 0.6f) + _1757;
    _1774 = (mad(-2.3283064e-10f, _1757, (_1756 * -9.313226e-10f)) * 0.6f) + _1758;
    _1777 = mad(0.16386905f, _1774, mad(0.14067869f, _1773, (_1772 * 0.6954522f)));
    _1780 = mad(0.095534325f, _1774, mad(0.8596711f, _1773, (_1772 * 0.04479458f)));
    _1783 = mad(1.0015007f, _1774, mad(0.00402521f, _1773, (_1772 * -0.005525883f)));
    _1787 = max(max(_1777, _1780), _1783);
    _1792 = (max(_1787, 1e-10f) - max(min(min(_1777, _1780), _1783), 1e-10f)) / max(_1787, 0.01f);
    _1805 = ((_1780 + _1777) + _1783) + (sqrt((((_1783 - _1780) * _1783) + ((_1780 - _1777) * _1780)) + ((_1777 - _1783) * _1777)) * 1.75f);
    _1806 = _1805 * 0.33333334f;
    _1807 = _1792 + -0.4f;
    _1808 = _1807 * 5.0f;
    _1812 = max((1.0f - abs(_1807 * 2.5f)), 0.0f);
    _1823 = ((((float)((int)((int)((int)(uint)((int)(_1808 > 0.0f))) - (int)((int)(uint)((int)(_1808 < 0.0f)))))) * (1.0f - (_1812 * _1812))) + 1.0f) * 0.025f;
    _1824 = !(_1806 <= 0.053333335f);
    if (_1824) {
      if (!(_1806 >= 0.16f)) {
        _1832 = (((0.24f / _1805) + -0.5f) * _1823);
      } else {
        _1832 = 0.0f;
      }
    } else {
      _1832 = _1823;
    }
    _1833 = _1832 + 1.0f;
    _1834 = _1833 * _1777;
    _1835 = _1833 * _1780;
    _1836 = _1833 * _1783;
    if (!((_1834 == _1835) && (_1835 == _1836))) {
      _1843 = ((_1834 * 2.0f) - _1835) - _1836;
      _1846 = ((_1780 - _1783) * 1.7320508f) * _1833;
      _1848 = atan(_1846 / _1843);
      _1851 = (_1843 < 0.0f);
      _1852 = (_1843 == 0.0f);
      _1853 = (_1846 >= 0.0f);
      _1854 = (_1846 < 0.0f);
      _1863 = select((_1853 && _1852), 90.0f, select((_1854 && _1852), -90.0f, (select((_1854 && _1851), (_1848 + -3.1415927f), select((_1853 && _1851), (_1848 + 3.1415927f), _1848)) * 57.295776f)));
      if (_1863 < 0.0f) {
        _1868 = (_1863 + 360.0f);
      } else {
        _1868 = _1863;
      }
    } else {
      _1868 = 0.0f;
    }
    _1870 = min(max(_1868, 0.0f), 360.0f);
    if (_1870 < -180.0f) {
      _1879 = (_1870 + 360.0f);
    } else {
      if (_1870 > 180.0f) {
        _1879 = (_1870 + -360.0f);
      } else {
        _1879 = _1870;
      }
    }
    _1883 = saturate(1.0f - abs(_1879 * 0.014814815f));  // [sem: expr_sat]
    _1887 = (_1883 * _1883) * (3.0f - (_1883 * 2.0f));
    _1889 = _1792 * 0.18f;
    _1893 = ((_1887 * _1887) * ((0.03f - _1834) * _1889)) + _1834;
    _1906 = log2(max(0.0f, mad(-0.21492857f, _1836, mad(-0.23651075f, _1835, (_1893 * 1.4514393f)))));
    _1907 = log2(max(0.0f, mad(-0.09967592f, _1836, mad(1.1762297f, _1835, (_1893 * -0.07655378f)))));
    _1908 = log2(max(0.0f, mad(0.9977163f, _1836, mad(-0.0060324497f, _1835, (_1893 * 0.008316148f)))));
    _1909 = _1906 * 0.30103f;
    _1910 = _1907 * 0.30103f;
    _1911 = _1908 * 0.30103f;
    _1913 = (_1906 * 0.2739373f) + 0.7790625f;
    _1915 = (_1907 * 0.2739373f) + 0.7790625f;
    _1917 = (_1908 * 0.2739373f) + 0.7790625f;
    _1954 = select((_1909 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1906 * 1.43712f)) + 1.0f)), _1913);
    _1955 = select((_1910 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1907 * 1.43712f)) + 1.0f)), _1915);
    _1956 = select((_1911 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1908 * 1.43712f)) + 1.0f)), _1917);
    _1972 = 1.0f - saturate(-0.78987026f - (_1906 * 0.9446112f));
    _1973 = 1.0f - saturate(-0.78987026f - (_1907 * 0.9446112f));
    _1974 = 1.0f - saturate(-0.78987026f - (_1908 * 0.9446112f));
    _1996 = max(0.0f, ((((_1972 * _1972) * (select((_1909 > -0.57039833f), (1.04f - (1.56f / (exp2((_1906 * 1.013354f) + 1.9201254f) + 1.0f))), _1913) - _1954)) * (3.0f - (_1972 * 2.0f))) + _1954));
    _1997 = max(0.0f, ((((_1973 * _1973) * (select((_1910 > -0.57039833f), (1.04f - (1.56f / (exp2((_1907 * 1.013354f) + 1.9201254f) + 1.0f))), _1915) - _1955)) * (3.0f - (_1973 * 2.0f))) + _1955));
    _1998 = max(0.0f, ((((_1974 * _1974) * (select((_1911 > -0.57039833f), (1.04f - (1.56f / (exp2((_1908 * 1.013354f) + 1.9201254f) + 1.0f))), _1917) - _1956)) * (3.0f - (_1974 * 2.0f))) + _1956));
    _2014 = ((mad(-0.06537104f, _1998, mad(1.4518155e-06f, _1997, (_1996 * 1.0653747f))) - _1996) * 0.6f) + _1996;
    _2015 = ((mad(-0.2036677f, _1998, mad(1.2036635f, _1997, (_1996 * -2.5716145e-07f))) - _1997) * 0.6f) + _1997;
    _2016 = ((mad(0.99999964f, _1998, mad(2.0954758e-08f, _1997, (_1996 * 1.8626451e-08f))) - _1998) * 0.6f) + _1998;
    _2030 = saturate(max(0.0f, mad(-0.010548528f, _2016, mad(1.1408027f, _2015, (_2014 * -0.13025719f)))));  // [sem: expr_sat]
    if (_1824) {
      if (!(_1806 >= 0.16f)) {
        _2039 = (((0.24f / _1805) + -0.5f) * _1823);
      } else {
        _2039 = 0.0f;
      }
    } else {
      _2039 = _1823;
    }
    _2040 = _2039 + 1.0f;
    _2041 = _2040 * _1777;
    _2042 = _2040 * _1780;
    _2043 = _2040 * _1783;
    if (!((_2041 == _2042) && (_2042 == _2043))) {
      _2050 = ((_2041 * 2.0f) - _2042) - _2043;
      _2053 = ((_1780 - _1783) * 1.7320508f) * _2040;
      _2055 = atan(_2053 / _2050);
      _2058 = (_2050 < 0.0f);
      _2059 = (_2050 == 0.0f);
      _2060 = (_2053 >= 0.0f);
      _2061 = (_2053 < 0.0f);
      _2070 = select((_2060 && _2059), 90.0f, select((_2061 && _2059), -90.0f, (select((_2061 && _2058), (_2055 + -3.1415927f), select((_2060 && _2058), (_2055 + 3.1415927f), _2055)) * 57.295776f)));
      if (_2070 < 0.0f) {
        _2075 = (_2070 + 360.0f);
      } else {
        _2075 = _2070;
      }
    } else {
      _2075 = 0.0f;
    }
    _2077 = min(max(_2075, 0.0f), 360.0f);
    if (_2077 < -180.0f) {
      _2086 = (_2077 + 360.0f);
    } else {
      if (_2077 > 180.0f) {
        _2086 = (_2077 + -360.0f);
      } else {
        _2086 = _2077;
      }
    }
    _2090 = saturate(1.0f - abs(_2086 * 0.014814815f));  // [sem: expr_sat]
    _2094 = (_2090 * _2090) * (3.0f - (_2090 * 2.0f));
    _2099 = ((_2094 * _2094) * ((0.03f - _2041) * _1889)) + _2041;
    _2112 = log2(max(0.0f, mad(-0.21492857f, _2043, mad(-0.23651075f, _2042, (_2099 * 1.4514393f)))));
    _2113 = log2(max(0.0f, mad(-0.09967592f, _2043, mad(1.1762297f, _2042, (_2099 * -0.07655378f)))));
    _2114 = log2(max(0.0f, mad(0.9977163f, _2043, mad(-0.0060324497f, _2042, (_2099 * 0.008316148f)))));
    _2115 = _2112 * 0.30103f;
    _2116 = _2113 * 0.30103f;
    _2117 = _2114 * 0.30103f;
    _2119 = (_2112 * 0.2739373f) + 0.7790625f;
    _2121 = (_2113 * 0.2739373f) + 0.7790625f;
    _2123 = (_2114 * 0.2739373f) + 0.7790625f;
    _2160 = select((_2115 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_2112 * 1.43712f)) + 1.0f)), _2119);
    _2161 = select((_2116 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_2113 * 1.43712f)) + 1.0f)), _2121);
    _2162 = select((_2117 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_2114 * 1.43712f)) + 1.0f)), _2123);
    _2178 = 1.0f - saturate(-0.78987026f - (_2112 * 0.9446112f));
    _2179 = 1.0f - saturate(-0.78987026f - (_2113 * 0.9446112f));
    _2180 = 1.0f - saturate(-0.78987026f - (_2114 * 0.9446112f));
    _2202 = max(0.0f, ((((_2178 * _2178) * (select((_2115 > -0.57039833f), (1.04f - (1.56f / (exp2((_2112 * 1.013354f) + 1.9201254f) + 1.0f))), _2119) - _2160)) * (3.0f - (_2178 * 2.0f))) + _2160));
    _2203 = max(0.0f, ((((_2179 * _2179) * (select((_2116 > -0.57039833f), (1.04f - (1.56f / (exp2((_2113 * 1.013354f) + 1.9201254f) + 1.0f))), _2121) - _2161)) * (3.0f - (_2179 * 2.0f))) + _2161));
    _2204 = max(0.0f, ((((_2180 * _2180) * (select((_2117 > -0.57039833f), (1.04f - (1.56f / (exp2((_2114 * 1.013354f) + 1.9201254f) + 1.0f))), _2123) - _2162)) * (3.0f - (_2180 * 2.0f))) + _2162));
    _2220 = ((mad(-0.06537104f, _2204, mad(1.4518155e-06f, _2203, (_2202 * 1.0653747f))) - _2202) * 0.6f) + _2202;
    _2221 = ((mad(-0.2036677f, _2204, mad(1.2036635f, _2203, (_2202 * -2.5716145e-07f))) - _2203) * 0.6f) + _2203;
    _2222 = ((mad(0.99999964f, _2204, mad(2.0954758e-08f, _2203, (_2202 * 1.8626451e-08f))) - _2204) * 0.6f) + _2204;
    _2236 = saturate(max(0.0f, mad(-0.010548528f, _2222, mad(1.1408027f, _2221, (_2220 * -0.13025719f)))));  // [sem: expr_sat]
    if (_1824) {
      if (!(_1806 >= 0.16f)) {
        _2245 = (((0.24f / _1805) + -0.5f) * _1823);
      } else {
        _2245 = 0.0f;
      }
    } else {
      _2245 = _1823;
    }
    _2246 = _2245 + 1.0f;
    _2247 = _2246 * _1777;
    _2248 = _2246 * _1780;
    _2249 = _2246 * _1783;
    if (!((_2247 == _2248) && (_2248 == _2249))) {
      _2256 = ((_2247 * 2.0f) - _2248) - _2249;
      _2259 = ((_1780 - _1783) * 1.7320508f) * _2246;
      _2261 = atan(_2259 / _2256);
      _2264 = (_2256 < 0.0f);
      _2265 = (_2256 == 0.0f);
      _2266 = (_2259 >= 0.0f);
      _2267 = (_2259 < 0.0f);
      _2276 = select((_2266 && _2265), 90.0f, select((_2267 && _2265), -90.0f, (select((_2267 && _2264), (_2261 + -3.1415927f), select((_2266 && _2264), (_2261 + 3.1415927f), _2261)) * 57.295776f)));
      if (_2276 < 0.0f) {
        _2281 = (_2276 + 360.0f);
      } else {
        _2281 = _2276;
      }
    } else {
      _2281 = 0.0f;
    }
    _2283 = min(max(_2281, 0.0f), 360.0f);
    if (_2283 < -180.0f) {
      _2292 = (_2283 + 360.0f);
    } else {
      if (_2283 > 180.0f) {
        _2292 = (_2283 + -360.0f);
      } else {
        _2292 = _2283;
      }
    }
    _2296 = saturate(1.0f - abs(_2292 * 0.014814815f));  // [sem: expr_sat]
    _2300 = (_2296 * _2296) * (3.0f - (_2296 * 2.0f));
    _2305 = ((_2300 * _2300) * ((0.03f - _2247) * _1889)) + _2247;
    _2318 = log2(max(0.0f, mad(-0.21492857f, _2249, mad(-0.23651075f, _2248, (_2305 * 1.4514393f)))));
    _2319 = log2(max(0.0f, mad(-0.09967592f, _2249, mad(1.1762297f, _2248, (_2305 * -0.07655378f)))));
    _2320 = log2(max(0.0f, mad(0.9977163f, _2249, mad(-0.0060324497f, _2248, (_2305 * 0.008316148f)))));
    _2321 = _2318 * 0.30103f;
    _2322 = _2319 * 0.30103f;
    _2323 = _2320 * 0.30103f;
    _2325 = (_2318 * 0.2739373f) + 0.7790625f;
    _2327 = (_2319 * 0.2739373f) + 0.7790625f;
    _2329 = (_2320 * 0.2739373f) + 0.7790625f;
    _2366 = select((_2321 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_2318 * 1.43712f)) + 1.0f)), _2325);
    _2367 = select((_2322 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_2319 * 1.43712f)) + 1.0f)), _2327);
    _2368 = select((_2323 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_2320 * 1.43712f)) + 1.0f)), _2329);
    _2384 = 1.0f - saturate(-0.78987026f - (_2318 * 0.9446112f));
    _2385 = 1.0f - saturate(-0.78987026f - (_2319 * 0.9446112f));
    _2386 = 1.0f - saturate(-0.78987026f - (_2320 * 0.9446112f));
    _2408 = max(0.0f, ((((_2384 * _2384) * (select((_2321 > -0.57039833f), (1.04f - (1.56f / (exp2((_2318 * 1.013354f) + 1.9201254f) + 1.0f))), _2325) - _2366)) * (3.0f - (_2384 * 2.0f))) + _2366));
    _2409 = max(0.0f, ((((_2385 * _2385) * (select((_2322 > -0.57039833f), (1.04f - (1.56f / (exp2((_2319 * 1.013354f) + 1.9201254f) + 1.0f))), _2327) - _2367)) * (3.0f - (_2385 * 2.0f))) + _2367));
    _2410 = max(0.0f, ((((_2386 * _2386) * (select((_2323 > -0.57039833f), (1.04f - (1.56f / (exp2((_2320 * 1.013354f) + 1.9201254f) + 1.0f))), _2329) - _2368)) * (3.0f - (_2386 * 2.0f))) + _2368));
    _2426 = ((mad(-0.06537104f, _2410, mad(1.4518155e-06f, _2409, (_2408 * 1.0653747f))) - _2408) * 0.6f) + _2408;
    _2427 = ((mad(-0.2036677f, _2410, mad(1.2036635f, _2409, (_2408 * -2.5716145e-07f))) - _2409) * 0.6f) + _2409;
    _2428 = ((mad(0.99999964f, _2410, mad(2.0954758e-08f, _2409, (_2408 * 1.8626451e-08f))) - _2410) * 0.6f) + _2410;
    _2442 = saturate(max(0.0f, mad(-0.010548528f, _2428, mad(1.1408027f, _2427, (_2426 * -0.13025719f)))));  // [sem: expr_sat]
    if (_1824) {
      if (!(_1806 >= 0.16f)) {
        _2451 = (((0.24f / _1805) + -0.5f) * _1823);
      } else {
        _2451 = 0.0f;
      }
    } else {
      _2451 = _1823;
    }
    _2452 = _2451 + 1.0f;
    _2453 = _2452 * _1777;
    _2454 = _2452 * _1780;
    _2455 = _2452 * _1783;
    if (!((_2453 == _2454) && (_2454 == _2455))) {
      _2462 = ((_2453 * 2.0f) - _2454) - _2455;
      _2465 = ((_1780 - _1783) * 1.7320508f) * _2452;
      _2467 = atan(_2465 / _2462);
      _2470 = (_2462 < 0.0f);
      _2471 = (_2462 == 0.0f);
      _2472 = (_2465 >= 0.0f);
      _2473 = (_2465 < 0.0f);
      _2482 = select((_2472 && _2471), 90.0f, select((_2473 && _2471), -90.0f, (select((_2473 && _2470), (_2467 + -3.1415927f), select((_2472 && _2470), (_2467 + 3.1415927f), _2467)) * 57.295776f)));
      if (_2482 < 0.0f) {
        _2487 = (_2482 + 360.0f);
      } else {
        _2487 = _2482;
      }
    } else {
      _2487 = 0.0f;
    }
    _2489 = min(max(_2487, 0.0f), 360.0f);
    if (_2489 < -180.0f) {
      _2498 = (_2489 + 360.0f);
    } else {
      if (_2489 > 180.0f) {
        _2498 = (_2489 + -360.0f);
      } else {
        _2498 = _2489;
      }
    }
    _2502 = saturate(1.0f - abs(_2498 * 0.014814815f));  // [sem: expr_sat]
    _2506 = (_2502 * _2502) * (3.0f - (_2502 * 2.0f));
    _2511 = ((_2506 * _2506) * ((0.03f - _2453) * _1889)) + _2453;
    _2524 = log2(max(0.0f, mad(-0.21492857f, _2455, mad(-0.23651075f, _2454, (_2511 * 1.4514393f)))));
    _2525 = log2(max(0.0f, mad(-0.09967592f, _2455, mad(1.1762297f, _2454, (_2511 * -0.07655378f)))));
    _2526 = log2(max(0.0f, mad(0.9977163f, _2455, mad(-0.0060324497f, _2454, (_2511 * 0.008316148f)))));
    _2527 = _2524 * 0.30103f;
    _2528 = _2525 * 0.30103f;
    _2529 = _2526 * 0.30103f;
    _2531 = (_2524 * 0.2739373f) + 0.7790625f;
    _2533 = (_2525 * 0.2739373f) + 0.7790625f;
    _2535 = (_2526 * 0.2739373f) + 0.7790625f;
    _2572 = select((_2527 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_2524 * 1.43712f)) + 1.0f)), _2531);
    _2573 = select((_2528 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_2525 * 1.43712f)) + 1.0f)), _2533);
    _2574 = select((_2529 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_2526 * 1.43712f)) + 1.0f)), _2535);
    _2590 = 1.0f - saturate(-0.78987026f - (_2524 * 0.9446112f));
    _2591 = 1.0f - saturate(-0.78987026f - (_2525 * 0.9446112f));
    _2592 = 1.0f - saturate(-0.78987026f - (_2526 * 0.9446112f));
    _2614 = max(0.0f, ((((_2590 * _2590) * (select((_2527 > -0.57039833f), (1.04f - (1.56f / (exp2((_2524 * 1.013354f) + 1.9201254f) + 1.0f))), _2531) - _2572)) * (3.0f - (_2590 * 2.0f))) + _2572));
    _2615 = max(0.0f, ((((_2591 * _2591) * (select((_2528 > -0.57039833f), (1.04f - (1.56f / (exp2((_2525 * 1.013354f) + 1.9201254f) + 1.0f))), _2533) - _2573)) * (3.0f - (_2591 * 2.0f))) + _2573));
    _2616 = max(0.0f, ((((_2592 * _2592) * (select((_2529 > -0.57039833f), (1.04f - (1.56f / (exp2((_2526 * 1.013354f) + 1.9201254f) + 1.0f))), _2535) - _2574)) * (3.0f - (_2592 * 2.0f))) + _2574));
    _2632 = ((mad(-0.06537104f, _2616, mad(1.4518155e-06f, _2615, (_2614 * 1.0653747f))) - _2614) * 0.6f) + _2614;
    _2633 = ((mad(-0.2036677f, _2616, mad(1.2036635f, _2615, (_2614 * -2.5716145e-07f))) - _2615) * 0.6f) + _2615;
    _2634 = ((mad(0.99999964f, _2616, mad(2.0954758e-08f, _2615, (_2614 * 1.8626451e-08f))) - _2616) * 0.6f) + _2616;
    _2648 = saturate(max(0.0f, mad(-0.010548528f, _2634, mad(1.1408027f, _2633, (_2632 * -0.13025719f)))));  // [sem: expr_sat]
    _2657 = max(max(_1666, _2030), max(max(_2236, _2442), _2648));
    _2664 = sqrt(saturate(min(min(min(_1666, _2030), min(min(_2236, _2442), _2648)), (1.0f - _2657)) * (1.0f / _2657))) * (-1.0f / (((1.0f - _1677) * 8.0f) + (_1677 * 5.0f)));
    _2667 = 1.0f / ((_2664 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _2690 = saturate(((_2664 * (((saturate(max(0.0f, mad(-0.08325848f, _2222, mad(-0.6217906f, _2221, (_2220 * 1.7050515f))))) + saturate(max(0.0f, mad(-0.08325848f, _2016, mad(-0.6217906f, _2015, (_2014 * 1.7050515f)))))) + saturate(max(0.0f, mad(-0.08325848f, _2428, mad(-0.6217906f, _2427, (_2426 * 1.7050515f)))))) + saturate(max(0.0f, mad(-0.08325848f, _2634, mad(-0.6217906f, _2633, (_2632 * 1.7050515f))))))) + _1665) * _2667);
    _2691 = saturate(((_2664 * (((_2236 + _2030) + _2442) + _2648)) + _1666) * _2667);  // [sem: expr_sat]
    // [sem: expr_sat]
    _2692 = saturate(((_2664 * (((saturate(max(0.0f, mad(1.1529719f, _2222, mad(-0.12896876f, _2221, (_2220 * -0.024003278f))))) + saturate(max(0.0f, mad(1.1529719f, _2016, mad(-0.12896876f, _2015, (_2014 * -0.024003278f)))))) + saturate(max(0.0f, mad(1.1529719f, _2428, mad(-0.12896876f, _2427, (_2426 * -0.024003278f)))))) + saturate(max(0.0f, mad(1.1529719f, _2634, mad(-0.12896876f, _2633, (_2632 * -0.024003278f))))))) + _1667) * _2667);
  } else {
    _2690 = _1665;  // [sem: expr_sat]
    _2691 = _1666;  // [sem: expr_sat]
    _2692 = _1667;  // [sem: expr_sat]
  }
  _2699 = 1.0f - abs(_etcParams.w);
  _2703 = saturate(_etcParams.w);  // [sem: expr_sat]
  _2704 = (_2699 * saturate(_2690)) + _2703;
  _2705 = (_2699 * saturate(_2691)) + _2703;
  _2706 = (_2699 * saturate(_2692)) + _2703;
  if (_colorGradingParams.w > 0.0f) {
    _2711 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _2728 = (((max(0.0f, (1.0f - _2704)) - _2704) * _2711) + _2704);
    _2729 = (((max(0.0f, (1.0f - _2705)) - _2705) * _2711) + _2705);
    _2730 = (((max(0.0f, (1.0f - _2706)) - _2706) * _2711) + _2706);
  } else {
    _2728 = _2704;
    _2729 = _2705;
    _2730 = _2706;
  }
  _2736 = _userImageAdjust.y + 1.0f;
  _2740 = _userImageAdjust.x + 0.5f;
  _2741 = ((_2728 + -0.5f) * _2736) + _2740;
  _2742 = ((_2729 + -0.5f) * _2736) + _2740;
  _2743 = ((_2730 + -0.5f) * _2736) + _2740;
  _2773 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _2784 = (TEXCOORD.x * 2.0f) + -1.0f;
  _2785 = TEXCOORD.y * 2.0f;
  _2786 = 1.0f - _2785;
  _2814 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _2786, ((_projToPrevProj[3].x) * _2784))) + (_projToPrevProj[3].w);
  _2817 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _2786, ((_projToPrevProj[0].x) * _2784))) + (_projToPrevProj[0].w)) / _2814) - _2784;
  _2818 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _2786, ((_projToPrevProj[1].x) * _2784))) + (_projToPrevProj[1].w)) / _2814) - _2786;
  if (_localToneMappingParams.w > 0.0f) {
    _2831 = saturate(1.0f - (sqrt((_2818 * _2818) + (_2817 * _2817)) * 2.0f));  // [sem: expr_sat]
  } else {
    _2831 = 1.0f;  // [sem: expr_sat]
  }
  _2834 = abs(_2784);
  _2835 = abs(_2785 + -1.0f);
  _2839 = saturate(1.0f - ((_2831 * _postProcessParams.x) * dot(float2(_2834, _2835), float2(_2834, _2835))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _2853 = (_2839 * exp2(log2(saturate(mad(_colorBlind0.z, _2743, mad(_colorBlind0.y, _2742, (_colorBlind0.x * _2741))))) * _2773));
      _2854 = (_2839 * exp2(log2(saturate(mad(_colorBlind1.z, _2743, mad(_colorBlind1.y, _2742, (_colorBlind1.x * _2741))))) * _2773));
      _2855 = (_2839 * exp2(log2(saturate(mad(_colorBlind2.z, _2743, mad(_colorBlind2.y, _2742, (_colorBlind2.x * _2741))))) * _2773));
    } else {
      _2853 = 0.0f;
      _2854 = 0.0f;
      _2855 = 0.0f;
    }
  } else {
    _2853 = 0.0f;
    _2854 = 0.0f;
    _2855 = 0.0f;
  }
  SV_Target.x = _2853;
  SV_Target.y = _2854;
  SV_Target.z = _2855;
  SV_Target.w = _18.w;
  return SV_Target;
}
