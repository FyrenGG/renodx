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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Tells tonemap.hlsli to reuse this shader's native SceneConstantBuffer instead of declaring a duplicate binding; Maps tonemap.hlsli's scene-time input to this shader's native `_time.w` carrier; Imports "../tonemap.hlsli" for the custom tonemap helpers and ABI-compatible exposure/global constant-buffer declarations used below; Begins suppression of native declarations whose ABI-compatible live definitions are supplied by tonemap.hlsli.
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
// Description: Ends the native-declaration suppression supplied by tonemap.hlsli so following declarations compile normally; Begins suppression of native declarations whose ABI-compatible live definitions are supplied by tonemap.hlsli.
#endif
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
// Description: Ends the native-declaration suppression supplied by tonemap.hlsli so following declarations compile normally; Begins suppression of native declarations whose ABI-compatible live definitions are supplied by tonemap.hlsli.
#endif
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Ends the native-declaration suppression supplied by tonemap.hlsli so following declarations compile normally.
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
  // RenoDX: >>> [Patch: FinalChromaticAberration] [Version: 1.16.00]
  // Description: Scales only the native red/blue chromatic-aberration offsets between the unchanged center sample and native shifted samples. The effective scalar is 1 when RenoDX is Off, preserving the native offsets.
  _42 = lerp(_18.x, _42, CUSTOM_CHROMATIC_ABERRATION);
  _41 = lerp(_18.z, _41, CUSTOM_CHROMATIC_ABERRATION);
  // RenoDX: <<< [Patch: FinalChromaticAberration]
  // RenoDX: >>> [Patch: CustomFilmGrainGate] [Version: 1.16.00]
  // Description: Keeps the native film-grain branch enabled only when its native strength is positive and RenoDX custom film grain is not selected. RenoDX Off clears the custom type flag, restoring the native condition.
  bool vanilla_film_grain = (_slopeParams.w > 0.0f) && CUSTOM_FILM_GRAIN_TYPE == 0;
  if (vanilla_film_grain) {
  // RenoDX: <<< [Patch: CustomFilmGrainGate]
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
  _2707 = 1.0f - abs(_etcParams.w);
  _2708 = saturate(_etcParams.w);
  _2717 = (_2707 * saturate(_rndx_tonemapped_color.x)) + _2708;
  _2714 = (_2707 * saturate(_rndx_tonemapped_color.y)) + _2708;
  _2711 = (_2707 * saturate(_rndx_tonemapped_color.z)) + _2708;
  // RenoDX: <<< [Patch: FusedFinalFadeRestore]
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
  // RenoDX: >>> [Patch: FinalVignetteStrength] [Version: 1.16.00]
  // Description: The native final pass derives its vignette attenuation from _postProcessParams.x and the squared screen-space radius. This block multiplies only that native coefficient by CUSTOM_VIGNETTE so the control scales the existing vignette without changing its center, falloff equation, saturation, or output routing. CUSTOM_VIGNETTE resolves to 1 when RenoDX is Off, restoring the native expression.
  _2820 = saturate(1.0f - ((_postProcessParams.x * CUSTOM_VIGNETTE * _2810) * dot(float2(_2811, _2813), float2(_2811, _2813))));  // [sem: expr_sat]
  // RenoDX: <<< [Patch: FinalVignetteStrength]
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
  // RenoDX: >>> [Patch: FinalizePostProcessSDR] [Version: 1.13.00]
  // Description: Runs the shared SDR finalizer after the native output has been assembled so enabled RenoDX display adjustments are applied once. Its effective controls are neutral when RenoDX is Off.
  SV_Target.xyz = FinalizeSDR(SV_Target.xyz, _sunDirection.y, _moonDirection.y);
  // RenoDX: <<< [Patch: FinalizePostProcessSDR]
  return SV_Target;
}
