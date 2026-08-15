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

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by the fused final grading path, and begins suppressing the duplicate native exposure declaration.
#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of the native ExposureConstantBuffer so any intervening unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing native GlobalPushConstants because tonemap.hlsli provides the ABI-compatible live declaration consumed by the fused final grading path.
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of native GlobalPushConstants so the following unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing the native ColorBlindConstantBuffer because tonemap.hlsli provides the ABI-compatible live declaration used by the fused final grading path.
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of the native ColorBlindConstantBuffer so all following native declarations compile normally.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

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
  // RenoDX: >>> [Patch: FinalChromaticAberration] [Version: 1.16.00]
  // Description: Scales only the native red/blue chromatic-aberration offsets between the unchanged center sample and native shifted samples. The effective scalar is 1 when RenoDX is Off, preserving the native offsets.
  _41 = lerp(_18.x, _41, CUSTOM_CHROMATIC_ABERRATION);
  _42 = lerp(_18.z, _42, CUSTOM_CHROMATIC_ABERRATION);
  // RenoDX: <<< [Patch: FinalChromaticAberration]

  // RenoDX: >>> [Patch: CustomFilmGrainGate] [Version: 1.16.00]
  // Description: Keeps the native film-grain branch enabled only when its native strength is positive and RenoDX custom film grain is not selected. RenoDX Off clears the custom type flag, restoring the native condition.
  bool vanilla_film_grain = (_slopeParams.w > 0.0f) && CUSTOM_FILM_GRAIN_TYPE == 0;
  if (vanilla_film_grain) {
  // RenoDX: <<< [Patch: CustomFilmGrainGate]
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
  // RenoDX: >>> [Patch: FusedFinalTonemapReplace] [Version: 1.13.00]
  // Description: This standalone-final permutation inlines the vanilla tonemap pipeline directly in the final pass and runs it unconditionally on the raw scene color, so an unreplaced permutation renders the whole screen with the vanilla look whenever the game selects it. This block replaces everything from the color-matrix grade through the per-permutation tone curve and output transform with the shared TonemapReplacer. The vanilla screen fade that was fused with the curve output is re-emitted below so the untouched downstream suite - wash, user brightness and contrast, user gamma, color-blind matrix where present, vignette, letterbox, and the alpha passthrough - keeps running unchanged on the replaced color.
  float3 _rndx_tonemapped_color = TonemapReplacer(float3(_86, _87, _88));
  // RenoDX: <<< [Patch: FusedFinalTonemapReplace]
  // RenoDX: >>> [Patch: FusedFinalSharpening] [Version: 1.13.00]
  // Description: The standalone final pass is where RenoDX RCAS sharpening runs, but this fused permutation tonemaps inside the final pass itself, so no completed final-color texture exists to sample neighbor pixels from. Reconstruct the four RCAS neighbor taps by sampling the raw scene color one texel away in each direction and pass each tap through the same TonemapReplacer applied to the center pixel, then run the shared RCAS resolve. The fused vanilla sharpener, where this permutation carried one, was removed together with the replaced tonemap segment above.
  if (CUSTOM_SHARPENING_TYPE == 1 && CUSTOM_SHARPENING > 0.f) {
    uint _rndx_scene_w, _rndx_scene_h;
    __3__36__0__0__g_sceneColor.GetDimensions(_rndx_scene_w, _rndx_scene_h);
    float2 _rndx_texel = 1.0f / float2(_rndx_scene_w, _rndx_scene_h);
    float3 _rndx_tap_b = TonemapReplacer(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(0.0f, -_rndx_texel.y), 0).rgb);
    float3 _rndx_tap_d = TonemapReplacer(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(-_rndx_texel.x, 0.0f), 0).rgb);
    float3 _rndx_tap_f = TonemapReplacer(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(_rndx_texel.x, 0.0f), 0).rgb);
    float3 _rndx_tap_h = TonemapReplacer(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(0.0f, _rndx_texel.y), 0).rgb);
    _rndx_tonemapped_color = ApplyRCASTaps(_rndx_tonemapped_color, _rndx_tap_b, _rndx_tap_d, _rndx_tap_f, _rndx_tap_h);
  }
  // RenoDX: <<< [Patch: FusedFinalSharpening]
  // RenoDX: >>> [Patch: FusedFinalFilmGrain] [Version: 1.13.00]
  // Description: The standalone final pass is where RenoDX custom film grain runs. This fused permutation is the visible final output whenever it draws, so apply the custom film grain to the tonemapped color here, in the same pipeline position the slim standalone finals apply it. The vanilla film grain earlier in this shader stays under the CustomFilmGrainGate patch and only runs when custom grain is off.
  if (CUSTOM_FILM_GRAIN_TYPE != 0) {
    _rndx_tonemapped_color = renodx::effects::ApplyFilmGrain(_rndx_tonemapped_color, TEXCOORD, CUSTOM_RANDOM, CUSTOM_FILM_GRAIN_STRENGTH * 0.03f);
  }
  // RenoDX: <<< [Patch: FusedFinalFilmGrain]
  // RenoDX: >>> [Patch: FusedFinalFadeRestore] [Version: 1.13.00]
  // Description: Re-emits the vanilla screen-fade lines that were fused with the replaced tone curve so the downstream final-output suite consumes the replaced color through the original variables.
  _2699 = 1.0f - abs(_etcParams.w);
  _2703 = saturate(_etcParams.w);
  _2704 = (_2699 * saturate(_rndx_tonemapped_color.x)) + _2703;
  _2705 = (_2699 * saturate(_rndx_tonemapped_color.y)) + _2703;
  _2706 = (_2699 * saturate(_rndx_tonemapped_color.z)) + _2703;
  // RenoDX: <<< [Patch: FusedFinalFadeRestore]
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
  // RenoDX: >>> [Patch: FinalVignetteStrength] [Version: 1.16.00]
  // Description: The native final pass derives its vignette attenuation from _postProcessParams.x and the squared screen-space radius. This block multiplies only that native coefficient by CUSTOM_VIGNETTE so the control scales the existing vignette without changing its center, falloff equation, saturation, or output routing. CUSTOM_VIGNETTE resolves to 1 when RenoDX is Off, restoring the native expression.
  _2839 = saturate(1.0f - ((_2831 * _postProcessParams.x * CUSTOM_VIGNETTE) * dot(float2(_2834, _2835), float2(_2834, _2835))));  // [sem: expr_sat]
  // RenoDX: <<< [Patch: FinalVignetteStrength]
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

  // RenoDX: >>> [Patch: FinalizePostProcessSDR] [Version: 1.13.00]
  // Description: Runs the shared SDR finalizer after the native output has been assembled so enabled RenoDX display adjustments are applied once. Its effective controls are neutral when RenoDX is Off.
  SV_Target.xyz = FinalizeSDR(SV_Target.xyz, _sunDirection.y, _moonDirection.y);
  // RenoDX: <<< [Patch: FinalizePostProcessSDR]
  return SV_Target;
}
