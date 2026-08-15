Texture2D<float4> __3__36__0__0__g_terrainShadowDepth : register(t41, space36);

Texture2DArray<float4> __3__36__0__0__g_dynamicShadowDepthArray : register(t237, space36);

Texture2DArray<uint2> __3__36__0__0__g_dynamicShadowStencilArray : register(t238, space36);

Texture2DArray<half4> __3__36__0__0__g_dynamicShadowColorArray : register(t239, space36);

Texture2DArray<float4> __3__36__0__0__g_shadowDepthArray : register(t240, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t21, space36);

Texture2D<uint> __3__36__0__0__g_depthStencil : register(t52, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t24, space36);

Texture2D<float> __3__36__0__0__g_raytracedShadow : register(t129, space36);

RWTexture2D<half4> __3__38__0__1__g_shadowColorResultUAV : register(u40, space38);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b19, space35) {
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

cbuffer __3__35__0__0__ShadowConstantBuffer : register(b20, space35) {
  struct {
    float4 _shadowDepthRanges;
    float4 _massiveShadowSizeAndInvSize;
    uint4 _shadowParam;
    int4 _updateIndex;
    float4 _jitterOffset[8];
    float4 _shadowRelativePosition;
    float4 _dynmaicShadowSizeAndInvSize;
    column_major float4x4 _dynamicShadowProjTexScale[2];
    column_major float4x4 _dynamicShadowProjRelativeTexScale[2];
    float4 _dynamicShadowFrustumPlanes0[6];
    float4 _dynamicShadowFrustumPlanes1[6];
    column_major float4x4 _dynamicShadowViewProj[2];
    column_major float4x4 _dynamicShadowViewProjPrev[2];
    column_major float4x4 _invDynamicShadowViewProj[2];
    float4 _dynamicShadowPosition[2];
    float4 _shadowSizeAndInvSize;
    column_major float4x4 _shadowProjTexScale[2];
    column_major float4x4 _shadowProjRelativeTexScale[2];
    float4 _staticShadowPosition[2];
    column_major float4x4 _shadowViewProj[2];
    column_major float4x4 _shadowViewProjRelative[2];
    column_major float4x4 _invShadowViewProj[2];
    float4 _currShadowFrustumPlanes[6];
    column_major float4x4 _currShadowViewProjRelative;
    column_major float4x4 _currInvShadowViewProjRelative;
    float4 _currStaticShadowPosition;
    float4 _currTerrainShadowFrustumPlanes[6];
    column_major float4x4 _terrainShadowProjTexScale;
    column_major float4x4 _terrainShadowProjRelativeTexScale;
    column_major float4x4 _terrainShadowViewProj;
    column_major float4x4 _nearFieldShadowViewProj;
    float4 _nearFieldShadowFlag;
    float4 _nearFieldShadowFrustumPlanes[6];
  } __3__35__0__0__ShadowConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__ShadowConstantBuffer_raw[155] : packoffset(c0);
  uint4 __3__35__0__0__ShadowConstantBuffer_raw_uint[155] : packoffset(c0);
};

cbuffer __3__35__0__0__TileConstantBuffer : register(b49, space35) {
  struct {
    uint4 g_tileIndex[4096];
  } __3__35__0__0__TileConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__TileConstantBuffer_raw[4096] : packoffset(c0);
  uint4 __3__35__0__0__TileConstantBuffer_raw_uint[4096] : packoffset(c0);
};

cbuffer __3__1__0__0__GlobalPushConstants : register(b0, space1) {
  float4 _shadowAOParams : packoffset(c000.x);
  float4 _tiledRadianceCacheParams : packoffset(c001.x);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

SamplerComparisonState __3__40__0__0__g_samplerShadow : register(s0, space40);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

[numthreads(8, 8, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  int4 _32;
  int _42;
  int _46;
  uint _58;
  uint _59;
  float _60;
  float _61;
  float _69;
  float _72;
  uint _74;
  int _76;
  float _79;
  int _80;
  uint _82;
  float _98;
  float _99;
  float _100;
  float _102;
  float _103;
  float _104;
  float _105;
  bool _107;
  int _375;
  float _554;
  float _567;
  float _568;
  float _569;
  float _643;
  int _644;
  float _645;
  float _709;
  int _710;
  int _711;
  float _712;
  float _774;
  int _775;
  int _776;
  float _825;
  int _826;
  int _827;
  int _987;
  float _1227;
  float _1228;
  bool _1229;
  half _1230;
  half _1231;
  half _1232;
  float _1467;
  float _1468;
  bool _1469;
  half _1470;
  half _1471;
  half _1472;
  half _1481;
  half _1482;
  half _1483;
  float _1484;
  float _1485;
  float _1486;
  float _1715;
  float _1716;
  bool _1717;
  half _1718;
  half _1719;
  half _1720;
  half _1729;
  half _1730;
  half _1731;
  float _1732;
  float _1733;
  float _1734;
  float _1963;
  float _1964;
  bool _1965;
  half _1966;
  half _1967;
  half _1968;
  half _1977;
  half _1978;
  half _1979;
  float _1980;
  float _1981;
  float _1982;
  float _2211;
  float _2212;
  bool _2213;
  half _2214;
  half _2215;
  half _2216;
  half _2225;
  half _2226;
  half _2227;
  float _2228;
  float _2229;
  float _2230;
  float _2459;
  float _2460;
  bool _2461;
  half _2462;
  half _2463;
  half _2464;
  half _2473;
  half _2474;
  half _2475;
  float _2476;
  float _2477;
  float _2478;
  float _2707;
  float _2708;
  bool _2709;
  half _2710;
  half _2711;
  half _2712;
  half _2721;
  half _2722;
  half _2723;
  float _2724;
  float _2725;
  float _2726;
  float _2955;
  float _2956;
  bool _2957;
  half _2958;
  half _2959;
  half _2960;
  half _2969;
  half _2970;
  half _2971;
  float _2972;
  float _2973;
  float _2974;
  float _3203;
  float _3204;
  bool _3205;
  half _3206;
  half _3207;
  half _3208;
  half _3217;
  half _3218;
  half _3219;
  float _3220;
  float _3221;
  float _3222;
  float _3451;
  float _3452;
  bool _3453;
  half _3454;
  half _3455;
  half _3456;
  half _3465;
  half _3466;
  half _3467;
  float _3468;
  float _3469;
  float _3470;
  float _3699;
  float _3700;
  bool _3701;
  half _3702;
  half _3703;
  half _3704;
  half _3713;
  half _3714;
  half _3715;
  float _3716;
  float _3717;
  float _3718;
  float _3947;
  float _3948;
  bool _3949;
  half _3950;
  half _3951;
  half _3952;
  half _3961;
  half _3962;
  half _3963;
  float _3964;
  float _3965;
  float _3966;
  float _4195;
  float _4196;
  bool _4197;
  half _4198;
  half _4199;
  half _4200;
  half _4209;
  half _4210;
  half _4211;
  float _4212;
  float _4213;
  float _4214;
  float _4443;
  float _4444;
  bool _4445;
  half _4446;
  half _4447;
  half _4448;
  half _4457;
  half _4458;
  half _4459;
  float _4460;
  float _4461;
  float _4462;
  float _4691;
  float _4692;
  bool _4693;
  half _4694;
  half _4695;
  half _4696;
  half _4705;
  half _4706;
  half _4707;
  float _4708;
  float _4709;
  float _4710;
  float _4939;
  float _4940;
  bool _4941;
  half _4942;
  half _4943;
  half _4944;
  half _4953;
  half _4954;
  half _4955;
  float _4956;
  float _4957;
  float _4958;
  half _4996;
  half _4997;
  half _4998;
  int _5021;
  float _5124;
  float _5125;
  half _5126;
  half _5127;
  half _5128;
  float _5180;
  float _5181;
  float _5182;
  float _5280;
  float _5294;
  int _5331;
  float _5337;
  float _5349;
  float _5358;
  float _5359;
  float _5360;
  int _5507;
  float _5508;
  float _5509;
  float _5510;
  float _5511;
  float _5512;
  int _5513;
  float _5514;
  float _5515;
  bool _5580;
  int _5587;
  float _5610;
  int _5630;
  float _5631;
  float _5655;
  float _5656;
  float _5657;
  float _5658;
  float _5659;
  float _5663;
  int _5795;
  float _5796;
  float _5797;
  float _5798;
  float _5799;
  float _5800;
  int _5801;
  float _5802;
  float _5803;
  bool _5868;
  int _5875;
  float _5898;
  int _5918;
  float _5919;
  float _5943;
  float _5944;
  float _5945;
  float _5946;
  float _5947;
  float _5951;
  int _5961;
  float _5962;
  float _5963;
  float _5964;
  float _5965;
  float _5966;
  float _6027;
  float _6029;
  float _6053;
  float _6126;
  float _6129;
  float _6133;
  float _6148;
  float _6149;
  float _6150;
  float _6151;
  float _110;
  float _114;
  float _115;
  float _151;
  float _152;
  float _153;
  float _154;
  float _156;
  int _169;
  bool _170;
  float _190;
  float _194;
  float _198;
  float _209;
  float _220;
  float _221;
  float _226;
  uint _242;
  uint _250;
  uint _258;
  uint _266;
  uint _274;
  uint _282;
  uint _290;
  uint _298;
  uint _306;
  uint _314;
  uint _322;
  uint _330;
  uint _338;
  uint _346;
  uint _354;
  uint _362;
  uint _380;
  float _387;
  float _393;
  float _394;
  float _396;
  float _403;
  float _405;
  float _407;
  float _408;
  float _413;
  float4 _417;
  float _422;
  float _427;
  float _429;
  float _436;
  float _446;
  float _447;
  float _452;
  float4 _454;
  float _463;
  float _465;
  float _472;
  float _483;
  float _484;
  float _489;
  float4 _491;
  float _500;
  float _502;
  float _509;
  float _520;
  float _521;
  float _526;
  float4 _528;
  float _537;
  float _539;
  float _546;
  float _557;
  bool _558;
  float _577;
  float _597;
  float _601;
  float _605;
  float _606;
  float _607;
  float _632;
  float _633;
  float _665;
  float _669;
  float _673;
  float _698;
  float _699;
  bool _713;
  float _721;
  float _722;
  float _723;
  float _728;
  float _729;
  float _730;
  float _750;
  float _754;
  float _758;
  float _759;
  float _760;
  float _781;
  float _782;
  float _783;
  float _803;
  float _807;
  float _811;
  uint _843;
  uint _851;
  uint _859;
  uint _867;
  uint _875;
  uint _883;
  uint _891;
  uint _899;
  uint _907;
  uint _915;
  uint _923;
  uint _931;
  uint _939;
  uint _947;
  uint _955;
  uint _963;
  bool _965;
  float _970;
  float _971;
  float _972;
  float _974;
  float _988;
  float _989;
  float _990;
  float _997;
  float _999;
  float _1006;
  float _1007;
  float _1008;
  float _1011;
  float _1012;
  float _1013;
  float _1014;
  int _1017;
  int _1018;
  uint _1019;
  uint _1020;
  uint _1021;
  uint _1022;
  float4 _1028;
  float4 _1030;
  float4 _1032;
  float4 _1034;
  half4 _1037;
  float _1045;
  float _1047;
  float _1061;
  float _1063;
  float _1073;
  float _1074;
  int _1103;
  float4 _1105;
  float4 _1110;
  float4 _1115;
  float4 _1120;
  float _1125;
  float _1127;
  float _1129;
  float _1131;
  float _1133;
  float _1135;
  float _1136;
  float _1154;
  float _1156;
  float _1158;
  float _1176;
  float _1178;
  float _1180;
  float _1198;
  float _1200;
  float _1202;
  half _1233;
  half _1234;
  half _1235;
  float _1236;
  float _1237;
  float _1238;
  float _1249;
  float _1250;
  float _1253;
  float _1254;
  float _1255;
  float _1256;
  int _1259;
  int _1260;
  uint _1261;
  uint _1262;
  float4 _1268;
  float4 _1270;
  float4 _1272;
  float4 _1274;
  half4 _1277;
  float _1285;
  float _1287;
  float _1301;
  float _1303;
  float _1313;
  float _1314;
  int _1343;
  float4 _1345;
  float4 _1350;
  float4 _1355;
  float4 _1360;
  float _1365;
  float _1367;
  float _1369;
  float _1371;
  float _1373;
  float _1375;
  float _1376;
  float _1394;
  float _1396;
  float _1398;
  float _1416;
  float _1418;
  float _1420;
  float _1438;
  float _1440;
  float _1442;
  float _1497;
  float _1498;
  float _1501;
  float _1502;
  float _1503;
  float _1504;
  int _1507;
  int _1508;
  uint _1509;
  uint _1510;
  float4 _1516;
  float4 _1518;
  float4 _1520;
  float4 _1522;
  half4 _1525;
  float _1533;
  float _1535;
  float _1549;
  float _1551;
  float _1561;
  float _1562;
  int _1591;
  float4 _1593;
  float4 _1598;
  float4 _1603;
  float4 _1608;
  float _1613;
  float _1615;
  float _1617;
  float _1619;
  float _1621;
  float _1623;
  float _1624;
  float _1642;
  float _1644;
  float _1646;
  float _1664;
  float _1666;
  float _1668;
  float _1686;
  float _1688;
  float _1690;
  float _1745;
  float _1746;
  float _1749;
  float _1750;
  float _1751;
  float _1752;
  int _1755;
  int _1756;
  uint _1757;
  uint _1758;
  float4 _1764;
  float4 _1766;
  float4 _1768;
  float4 _1770;
  half4 _1773;
  float _1781;
  float _1783;
  float _1797;
  float _1799;
  float _1809;
  float _1810;
  int _1839;
  float4 _1841;
  float4 _1846;
  float4 _1851;
  float4 _1856;
  float _1861;
  float _1863;
  float _1865;
  float _1867;
  float _1869;
  float _1871;
  float _1872;
  float _1890;
  float _1892;
  float _1894;
  float _1912;
  float _1914;
  float _1916;
  float _1934;
  float _1936;
  float _1938;
  float _1993;
  float _1994;
  float _1997;
  float _1998;
  float _1999;
  float _2000;
  int _2003;
  int _2004;
  uint _2005;
  uint _2006;
  float4 _2012;
  float4 _2014;
  float4 _2016;
  float4 _2018;
  half4 _2021;
  float _2029;
  float _2031;
  float _2045;
  float _2047;
  float _2057;
  float _2058;
  int _2087;
  float4 _2089;
  float4 _2094;
  float4 _2099;
  float4 _2104;
  float _2109;
  float _2111;
  float _2113;
  float _2115;
  float _2117;
  float _2119;
  float _2120;
  float _2138;
  float _2140;
  float _2142;
  float _2160;
  float _2162;
  float _2164;
  float _2182;
  float _2184;
  float _2186;
  float _2241;
  float _2242;
  float _2245;
  float _2246;
  float _2247;
  float _2248;
  int _2251;
  int _2252;
  uint _2253;
  uint _2254;
  float4 _2260;
  float4 _2262;
  float4 _2264;
  float4 _2266;
  half4 _2269;
  float _2277;
  float _2279;
  float _2293;
  float _2295;
  float _2305;
  float _2306;
  int _2335;
  float4 _2337;
  float4 _2342;
  float4 _2347;
  float4 _2352;
  float _2357;
  float _2359;
  float _2361;
  float _2363;
  float _2365;
  float _2367;
  float _2368;
  float _2386;
  float _2388;
  float _2390;
  float _2408;
  float _2410;
  float _2412;
  float _2430;
  float _2432;
  float _2434;
  float _2489;
  float _2490;
  float _2493;
  float _2494;
  float _2495;
  float _2496;
  int _2499;
  int _2500;
  uint _2501;
  uint _2502;
  float4 _2508;
  float4 _2510;
  float4 _2512;
  float4 _2514;
  half4 _2517;
  float _2525;
  float _2527;
  float _2541;
  float _2543;
  float _2553;
  float _2554;
  int _2583;
  float4 _2585;
  float4 _2590;
  float4 _2595;
  float4 _2600;
  float _2605;
  float _2607;
  float _2609;
  float _2611;
  float _2613;
  float _2615;
  float _2616;
  float _2634;
  float _2636;
  float _2638;
  float _2656;
  float _2658;
  float _2660;
  float _2678;
  float _2680;
  float _2682;
  float _2737;
  float _2738;
  float _2741;
  float _2742;
  float _2743;
  float _2744;
  int _2747;
  int _2748;
  uint _2749;
  uint _2750;
  float4 _2756;
  float4 _2758;
  float4 _2760;
  float4 _2762;
  half4 _2765;
  float _2773;
  float _2775;
  float _2789;
  float _2791;
  float _2801;
  float _2802;
  int _2831;
  float4 _2833;
  float4 _2838;
  float4 _2843;
  float4 _2848;
  float _2853;
  float _2855;
  float _2857;
  float _2859;
  float _2861;
  float _2863;
  float _2864;
  float _2882;
  float _2884;
  float _2886;
  float _2904;
  float _2906;
  float _2908;
  float _2926;
  float _2928;
  float _2930;
  float _2985;
  float _2986;
  float _2989;
  float _2990;
  float _2991;
  float _2992;
  int _2995;
  int _2996;
  uint _2997;
  uint _2998;
  float4 _3004;
  float4 _3006;
  float4 _3008;
  float4 _3010;
  half4 _3013;
  float _3021;
  float _3023;
  float _3037;
  float _3039;
  float _3049;
  float _3050;
  int _3079;
  float4 _3081;
  float4 _3086;
  float4 _3091;
  float4 _3096;
  float _3101;
  float _3103;
  float _3105;
  float _3107;
  float _3109;
  float _3111;
  float _3112;
  float _3130;
  float _3132;
  float _3134;
  float _3152;
  float _3154;
  float _3156;
  float _3174;
  float _3176;
  float _3178;
  float _3233;
  float _3234;
  float _3237;
  float _3238;
  float _3239;
  float _3240;
  int _3243;
  int _3244;
  uint _3245;
  uint _3246;
  float4 _3252;
  float4 _3254;
  float4 _3256;
  float4 _3258;
  half4 _3261;
  float _3269;
  float _3271;
  float _3285;
  float _3287;
  float _3297;
  float _3298;
  int _3327;
  float4 _3329;
  float4 _3334;
  float4 _3339;
  float4 _3344;
  float _3349;
  float _3351;
  float _3353;
  float _3355;
  float _3357;
  float _3359;
  float _3360;
  float _3378;
  float _3380;
  float _3382;
  float _3400;
  float _3402;
  float _3404;
  float _3422;
  float _3424;
  float _3426;
  float _3481;
  float _3482;
  float _3485;
  float _3486;
  float _3487;
  float _3488;
  int _3491;
  int _3492;
  uint _3493;
  uint _3494;
  float4 _3500;
  float4 _3502;
  float4 _3504;
  float4 _3506;
  half4 _3509;
  float _3517;
  float _3519;
  float _3533;
  float _3535;
  float _3545;
  float _3546;
  int _3575;
  float4 _3577;
  float4 _3582;
  float4 _3587;
  float4 _3592;
  float _3597;
  float _3599;
  float _3601;
  float _3603;
  float _3605;
  float _3607;
  float _3608;
  float _3626;
  float _3628;
  float _3630;
  float _3648;
  float _3650;
  float _3652;
  float _3670;
  float _3672;
  float _3674;
  float _3729;
  float _3730;
  float _3733;
  float _3734;
  float _3735;
  float _3736;
  int _3739;
  int _3740;
  uint _3741;
  uint _3742;
  float4 _3748;
  float4 _3750;
  float4 _3752;
  float4 _3754;
  half4 _3757;
  float _3765;
  float _3767;
  float _3781;
  float _3783;
  float _3793;
  float _3794;
  int _3823;
  float4 _3825;
  float4 _3830;
  float4 _3835;
  float4 _3840;
  float _3845;
  float _3847;
  float _3849;
  float _3851;
  float _3853;
  float _3855;
  float _3856;
  float _3874;
  float _3876;
  float _3878;
  float _3896;
  float _3898;
  float _3900;
  float _3918;
  float _3920;
  float _3922;
  float _3977;
  float _3978;
  float _3981;
  float _3982;
  float _3983;
  float _3984;
  int _3987;
  int _3988;
  uint _3989;
  uint _3990;
  float4 _3996;
  float4 _3998;
  float4 _4000;
  float4 _4002;
  half4 _4005;
  float _4013;
  float _4015;
  float _4029;
  float _4031;
  float _4041;
  float _4042;
  int _4071;
  float4 _4073;
  float4 _4078;
  float4 _4083;
  float4 _4088;
  float _4093;
  float _4095;
  float _4097;
  float _4099;
  float _4101;
  float _4103;
  float _4104;
  float _4122;
  float _4124;
  float _4126;
  float _4144;
  float _4146;
  float _4148;
  float _4166;
  float _4168;
  float _4170;
  float _4225;
  float _4226;
  float _4229;
  float _4230;
  float _4231;
  float _4232;
  int _4235;
  int _4236;
  uint _4237;
  uint _4238;
  float4 _4244;
  float4 _4246;
  float4 _4248;
  float4 _4250;
  half4 _4253;
  float _4261;
  float _4263;
  float _4277;
  float _4279;
  float _4289;
  float _4290;
  int _4319;
  float4 _4321;
  float4 _4326;
  float4 _4331;
  float4 _4336;
  float _4341;
  float _4343;
  float _4345;
  float _4347;
  float _4349;
  float _4351;
  float _4352;
  float _4370;
  float _4372;
  float _4374;
  float _4392;
  float _4394;
  float _4396;
  float _4414;
  float _4416;
  float _4418;
  float _4473;
  float _4474;
  float _4477;
  float _4478;
  float _4479;
  float _4480;
  int _4483;
  int _4484;
  uint _4485;
  uint _4486;
  float4 _4492;
  float4 _4494;
  float4 _4496;
  float4 _4498;
  half4 _4501;
  float _4509;
  float _4511;
  float _4525;
  float _4527;
  float _4537;
  float _4538;
  int _4567;
  float4 _4569;
  float4 _4574;
  float4 _4579;
  float4 _4584;
  float _4589;
  float _4591;
  float _4593;
  float _4595;
  float _4597;
  float _4599;
  float _4600;
  float _4618;
  float _4620;
  float _4622;
  float _4640;
  float _4642;
  float _4644;
  float _4662;
  float _4664;
  float _4666;
  float _4721;
  float _4722;
  float _4725;
  float _4726;
  float _4727;
  float _4728;
  int _4731;
  int _4732;
  uint _4733;
  uint _4734;
  float4 _4740;
  float4 _4742;
  float4 _4744;
  float4 _4746;
  half4 _4749;
  float _4757;
  float _4759;
  float _4773;
  float _4775;
  float _4785;
  float _4786;
  int _4815;
  float4 _4817;
  float4 _4822;
  float4 _4827;
  float4 _4832;
  float _4837;
  float _4839;
  float _4841;
  float _4843;
  float _4845;
  float _4847;
  float _4848;
  float _4866;
  float _4868;
  float _4870;
  float _4888;
  float _4890;
  float _4892;
  float _4910;
  float _4912;
  float _4914;
  float _4960;
  float _4970;
  half _4974;
  half _4975;
  half _4976;
  float _4979;
  float _4980;
  float _4981;
  float _4982;
  float _5008;
  float _5009;
  float _5010;
  float _5022;
  float _5023;
  float _5030;
  float _5032;
  float _5036;
  float _5037;
  float _5038;
  float _5045;
  float _5061;
  float _5062;
  float _5083;
  float _5084;
  float _5105;
  float _5106;
  float _5117;
  float _5118;
  bool _5129;
  float _5131;
  float _5135;
  float _5150;
  int _5160;
  bool _5161;
  bool _5162;
  bool _5163;
  float _5164;
  int _5183;
  int _5187;
  uint _5193;
  int _5198;
  int _5203;
  float _5204;
  float _5215;
  float _5216;
  float _5221;
  float _5237;
  float _5241;
  float _5244;
  float _5247;
  float _5248;
  float _5250;
  float _5253;
  float _5254;
  float _5255;
  float _5256;
  float _5265;
  float _5269;
  float _5273;
  int _5274;
  float _5286;
  float _5300;
  bool _5307;
  float _5311;
  float _5353;
  float _5361;
  float _5362;
  float _5363;
  float _5376;
  float _5379;
  bool _5382;
  float _5386;
  float _5418;
  float _5422;
  float _5426;
  float _5427;
  float _5428;
  float _5444;
  float _5445;
  float _5446;
  float _5447;
  float _5451;
  float _5452;
  float _5455;
  float _5466;
  float _5467;
  float _5485;
  float _5486;
  float _5488;
  float _5490;
  float _5491;
  float _5498;
  float _5505;
  uint _5524;
  int _5526;
  float _5529;
  int _5530;
  bool _5531;
  float _5532;
  float _5536;
  float _5539;
  bool _5543;
  int _5544;
  float _5612;
  float _5615;
  int _5660;
  float _5673;
  float _5705;
  float _5709;
  float _5713;
  float _5714;
  float _5715;
  float _5731;
  float _5732;
  float _5733;
  float _5734;
  float _5738;
  float _5739;
  float _5742;
  float _5753;
  float _5754;
  float _5773;
  float _5774;
  float _5776;
  float _5778;
  float _5779;
  float _5786;
  float _5793;
  uint _5812;
  int _5814;
  float _5817;
  int _5818;
  bool _5819;
  float _5820;
  float _5824;
  float _5827;
  bool _5831;
  int _5832;
  float _5900;
  float _5903;
  int _5948;
  bool _5970;
  float _5984;
  float _5985;
  float _6001;
  bool _6020;
  float _6054;
  int _6055;
  uint4 _6081;
  float _6087;
  float _6090;
  float _6094;
  float _6095;
  float _6096;
  float _6097;
  float _6134;
  int __loop_jump_target = -1;
  int _18[4];
  float _26[2];
  float _27[2];
  float _28[2];
  _32 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _18[0] = _32.x;
  _18[1] = _32.y;
  _18[2] = _32.z;
  _18[3] = _32.w;
  _42 = _18[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _46 = select((((int)(SV_GroupID.x) & 16) == 0), _42, ((uint)((uint)(_42)) >> 16));
  _58 = (uint)((uint)((int)((int)(((int)((uint)((uint)(_46)) << 2)) & 1020) | (int)((int)(SV_GroupID.x) & 3)) << 3)) + (uint)(SV_GroupThreadID.x);
  _59 = (uint)((uint)((int)((int)(((uint)((uint)(_46)) >> 6) & 1020) | (int)(((uint)(SV_GroupID.x) >> 2) & 3)) << 3)) + (uint)(SV_GroupThreadID.y);
  _60 = (float)((uint)((uint)(_58)));
  _61 = (float)((uint)((uint)(_59)));
  _69 = ((_bufferSizeAndInvSize.z * 2.0f) * (_60 + 0.5f)) + -1.0f;
  _72 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (_61 + 0.5f));
  _74 = __3__36__0__0__g_depthStencil.Load(int3(_58, _59, 0));  // [sem: _3__36__0__0__g_depthStencil_load]
  _76 = (uint)((uint)(_74.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _79 = ((float)((uint)((uint)(_74.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _80 = _76 & 127;
  _82 = __3__36__0__0__g_sceneNormal.Load(int3(_58, _59, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
  _98 = min(1.0f, ((((float)((uint)((uint)(_82.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _99 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_82.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _100 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_82.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _102 = rsqrt(dot(float3(_98, _99, _100), float3(_98, _99, _100)));  // [sem: invLength]
  _103 = _102 * _98;
  _104 = _102 * _99;
  _105 = _102 * _100;
  _107 = (_79 == 1.0f);
  if ((_79 < 1e-07f) || _107) {
    _110 = select(_107, 0.0f, 1.0f);
    _6148 = _110;
    _6149 = _110;
    _6150 = _110;
    _6151 = _110;  // [sem: expr_sat]
  } else {
    _114 = max(1e-07f, _79);
    _115 = _nearFarProj.x / _114;
    _151 = mad((_invViewProjRelative[3].z), _114, mad((_invViewProjRelative[3].y), _72, ((_invViewProjRelative[3].x) * _69))) + (_invViewProjRelative[3].w);
    _152 = (mad((_invViewProjRelative[0].z), _114, mad((_invViewProjRelative[0].y), _72, ((_invViewProjRelative[0].x) * _69))) + (_invViewProjRelative[0].w)) / _151;
    _153 = (mad((_invViewProjRelative[1].z), _114, mad((_invViewProjRelative[1].y), _72, ((_invViewProjRelative[1].x) * _69))) + (_invViewProjRelative[1].w)) / _151;
    _154 = (mad((_invViewProjRelative[2].z), _114, mad((_invViewProjRelative[2].y), _72, ((_invViewProjRelative[2].x) * _69))) + (_invViewProjRelative[2].w)) / _151;
    _156 = rsqrt(dot(float3(_152, _153, _154), float3(_152, _153, _154)));  // [sem: invLength]
    _26[0] = 0.0f;
    _27[0] = 0.0f;
    _28[0] = 0.0f;
    _26[1] = 0.0f;
    _27[1] = 0.0f;
    _28[1] = 0.0f;
    _169 = (int)(_80) + (int)(-52);
    _170 = ((uint)_169 < (uint)16);
    _190 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z), _154, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y), _153, ((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x) * _152))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].w);
    _194 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _154, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _153, ((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x) * _152))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].w);
    _198 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _154, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _153, ((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x) * _152))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].w);
    if (saturate(_190) == _190) {
      if ((_198 >= 0.0001f) && ((_198 <= 1.0f) && (saturate(_194) == _194))) {
        _209 = (float)((uint)((uint)(_frameNumber.x)));
        _220 = (frac(((_209 * 92.0f) + _60) * 0.0078125f) * 128.0f) + -64.34062f;
        _221 = (frac(((_209 * 71.0f) + _61) * 0.0078125f) * 128.0f) + -72.46562f;
        _226 = frac(dot(float3((_220 * _220), (_221 * _221), (_221 * _220)), float3(20.390625f, 60.703125f, 2.4281209f)));
        _242 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_61 * _bufferSizeAndInvSize.x) + _60));
        _250 = (uint)((uint)((((int)((uint)((uint)((uint)(_242)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_242)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_242)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _258 = (uint)((uint)((((int)((uint)((uint)((uint)(_250)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_250)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_250)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_242));
        _266 = (uint)((uint)((((int)((uint)((uint)((uint)(_258)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_258)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_258)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_250));
        _274 = (uint)((uint)((((int)((uint)((uint)((uint)(_266)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_266)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_266)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_258));
        _282 = (uint)((uint)((((int)((uint)((uint)((uint)(_274)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_274)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_274)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_266));
        _290 = (uint)((uint)((((int)((uint)((uint)((uint)(_282)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_282)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_282)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_274));
        _298 = (uint)((uint)((((int)((uint)((uint)((uint)(_290)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_290)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_290)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_282));
        _306 = (uint)((uint)((((int)((uint)((uint)((uint)(_298)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_298)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_298)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_290));
        _314 = (uint)((uint)((((int)((uint)((uint)((uint)(_306)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_306)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_306)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_298));
        _322 = (uint)((uint)((((int)((uint)((uint)((uint)(_314)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_314)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_314)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_306));
        _330 = (uint)((uint)((((int)((uint)((uint)((uint)(_322)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_322)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_322)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_314));
        _338 = (uint)((uint)((((int)((uint)((uint)((uint)(_330)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_330)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_330)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_322));
        _346 = (uint)((uint)((((int)((uint)((uint)((uint)(_338)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_338)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_338)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_330));
        _354 = (uint)((uint)((((int)((uint)((uint)((uint)(_346)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_346)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_346)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_338));
        _362 = (uint)((uint)((((int)((uint)((uint)((uint)(_354)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_354)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_354)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_346));
        if ((_354 & 16777215) == 0) {
          _375 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_362)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_362)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_362)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_354))));
        } else {
          _375 = _354;
        }
        _380 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_375)) * (uint)(48271))) & 16777215)))) * 3.8146377e-06f);
        _387 = frac((((float)((uint)((uint)(_380)))) * 0.015625f) + (((float)((uint)((uint)(((int)((uint)(_226 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f));
        _393 = (_387 * 2.0f) + -1.0f;
        _394 = (((float)((uint)((uint)(reversebits(_380) ^ ((int)((uint)(_226 * 2.8747837e+08f))))))) * 4.656613e-10f) + -1.0f;
        _396 = rsqrt(dot(float2(_393, _394), float2(_393, _394)));  // [sem: invLength]
        _403 = ((_387 * 0.0009765625f) + -0.00048828125f) * _396;
        _405 = (_394 * _396) * 0.00048828125f;
        _407 = (_403 * (__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[0].x)) + _190;
        _408 = (_405 * (__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[0].y)) + _194;
        _413 = frac((_407 * 1024.0f) + -0.5f);
        _417 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_407, _408));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _422 = _198 + -0.005f;
        _427 = select((_417.w > _422), 1.0f, 0.0f);
        _429 = select((_417.x > _422), 1.0f, 0.0f);
        _436 = ((select((_417.z > _422), 1.0f, 0.0f) - _427) * _413) + _427;
        _446 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[1].x) * _403) + _190;
        _447 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[1].y) * _405) + _194;
        _452 = frac((_446 * 1024.0f) + -0.5f);
        _454 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_446, _447));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _463 = select((_454.w > _422), 1.0f, 0.0f);
        _465 = select((_454.x > _422), 1.0f, 0.0f);
        _472 = ((select((_454.z > _422), 1.0f, 0.0f) - _463) * _452) + _463;
        _483 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[2].x) * _403) + _190;
        _484 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[2].y) * _405) + _194;
        _489 = frac((_483 * 1024.0f) + -0.5f);
        _491 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_483, _484));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _500 = select((_491.w > _422), 1.0f, 0.0f);
        _502 = select((_491.x > _422), 1.0f, 0.0f);
        _509 = ((select((_491.z > _422), 1.0f, 0.0f) - _500) * _489) + _500;
        _520 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[3].x) * _403) + _190;
        _521 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[3].y) * _405) + _194;
        _526 = frac((_520 * 1024.0f) + -0.5f);
        _528 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_520, _521));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _537 = select((_528.w > _422), 1.0f, 0.0f);
        _539 = select((_528.x > _422), 1.0f, 0.0f);
        _546 = ((select((_528.z > _422), 1.0f, 0.0f) - _537) * _526) + _537;
        _554 = ((((saturate((((((select((_454.y > _422), 1.0f, 0.0f) - _465) * _452) + _465) - _472) * frac((_447 * 1024.0f) + -0.5f)) + _472) + saturate((((((select((_417.y > _422), 1.0f, 0.0f) - _429) * _413) + _429) - _436) * frac((_408 * 1024.0f) + -0.5f)) + _436)) + saturate((((((select((_491.y > _422), 1.0f, 0.0f) - _502) * _489) + _502) - _509) * frac((_484 * 1024.0f) + -0.5f)) + _509)) + saturate((((((select((_528.y > _422), 1.0f, 0.0f) - _539) * _526) + _539) - _546) * frac((_521 * 1024.0f) + -0.5f)) + _546)) * 0.25f);
      } else {
        _554 = 1.0f;
      }
    } else {
      _554 = 1.0f;
    }
    _557 = min(max((_115 * 0.002f), 0.005f), 0.5f);
    _558 = ((uint)_169 > (uint)15);
    if (_558) {
      _567 = ((_557 * _103) + _152);
      _568 = ((_557 * _104) + _153);
      _569 = ((_557 * _105) + _154);
    } else {
      _567 = _152;
      _568 = _153;
      _569 = _154;
    }
    _577 = sqrt(((_153 * _153) + (_152 * _152)) + (_154 * _154));
    _597 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z), _569, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y), _568, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _567))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].w);
    _601 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _569, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _568, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x) * _567))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].w);
    _605 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _569, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _568, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x) * _567))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].w);
    _606 = 4.0f / __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y;
    _607 = 1.0f - _606;
    if (!(((!(_597 <= _607)) || (!(_597 >= _606))) || (!(_601 <= _607)))) {
      if ((_577 < 128.0f) && ((_605 >= -1.0f) && ((_605 <= 1.0f) && (_601 >= _606)))) {
        _632 = max(0.0f, ((abs((_597 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
        _633 = max(0.0f, ((abs((_601 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
        _26[1] = _597;
        _27[1] = _601;
        _28[1] = _605;
        _643 = select((_terrainNormalParams.y > 0.0f), 2e-05f, 8e-05f);
        _644 = 1;
        _645 = sqrt((_633 * _633) + (_632 * _632));
      } else {
        _643 = 0.0f;
        _644 = 0;
        _645 = 0.0f;
      }
    } else {
      _643 = 0.0f;
      _644 = 0;
      _645 = 0.0f;
    }
    _665 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z), _569, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y), _568, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _567))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].w);
    _669 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _569, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _568, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x) * _567))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].w);
    _673 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _569, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _568, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x) * _567))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].w);
    if (!(((!(_665 >= _606)) || (!(_665 <= _607))) || (!(_669 <= _607)))) {
      if ((_577 < 128.0f) && ((_673 >= -1.0f) && ((_669 >= _606) && (_673 <= 1.0f)))) {
        _698 = max(0.0f, ((abs((_665 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
        _699 = max(0.0f, ((abs((_669 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
        _26[0] = _665;
        _27[0] = _669;
        _28[0] = _673;
        _709 = select((_terrainNormalParams.y > 0.0f), 5e-06f, 2e-05f);
        _710 = 1;
        _711 = 0;
        _712 = sqrt((_699 * _699) + (_698 * _698));
      } else {
        _709 = _643;
        _710 = _644;
        _711 = _644;
        _712 = _645;
      }
    } else {
      _709 = _643;
      _710 = _644;
      _711 = _644;
      _712 = _645;
    }
    _713 = (_710 == 0);
    [branch]
    if (_713) {
      _721 = _viewPos.x + _567;
      _722 = _viewPos.y + _568;
      _723 = _viewPos.z + _569;
      _728 = _721 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x);
      _729 = _722 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y);
      _730 = _723 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z);
      _750 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z), _730, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y), _729, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x) * _728))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].w);
      _754 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _730, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _729, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x) * _728))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].w);
      _758 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _730, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _729, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x) * _728))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].w);
      _759 = 2.0f / __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y;
      _760 = 1.0f - _759;
      if (!(((!(_750 <= _760)) || (!(_750 >= _759))) || (!(_754 <= _760)))) {
        if ((_758 >= 0.0001f) && ((_758 <= 1.0f) && (_754 >= _759))) {
          _26[1] = _750;
          _27[1] = _754;
          _28[1] = _758;
          _774 = 0.0002f;
          _775 = 1;
          _776 = 1;
        } else {
          _774 = _709;
          _775 = 0;
          _776 = _711;
        }
      } else {
        _774 = _709;
        _775 = 0;
        _776 = _711;
      }
      _781 = _721 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x);
      _782 = _722 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y);
      _783 = _723 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z);
      _803 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z), _783, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y), _782, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x) * _781))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].w);
      _807 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _783, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _782, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x) * _781))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].w);
      _811 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _783, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _782, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x) * _781))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].w);
      if (!(((!(_803 >= _759)) || (!(_803 <= _760))) || (!(_807 <= _760)))) {
        if ((_811 >= 0.0001f) && ((_807 >= _759) && (_811 <= 1.0f))) {
          _26[0] = _803;
          _27[0] = _807;
          _28[0] = _811;
          _825 = 0.0002f;
          _826 = 1;
          _827 = 0;
        } else {
          _825 = _774;
          _826 = _775;
          _827 = _776;
        }
      } else {
        _825 = _774;
        _826 = _775;
        _827 = _776;
      }
    } else {
      _825 = _709;
      _826 = 1;
      _827 = _711;
    }
    _843 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_61 * _bufferSizeAndInvSize.x) + _60));
    _851 = (uint)((uint)((((int)((uint)((uint)((uint)(_843)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_843)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_843)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
    _859 = (uint)((uint)((((int)((uint)((uint)((uint)(_851)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_851)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_851)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_843));
    _867 = (uint)((uint)((((int)((uint)((uint)((uint)(_859)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_859)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_859)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_851));
    _875 = (uint)((uint)((((int)((uint)((uint)((uint)(_867)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_867)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_867)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_859));
    _883 = (uint)((uint)((((int)((uint)((uint)((uint)(_875)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_875)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_875)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_867));
    _891 = (uint)((uint)((((int)((uint)((uint)((uint)(_883)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_883)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_883)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_875));
    _899 = (uint)((uint)((((int)((uint)((uint)((uint)(_891)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_891)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_891)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_883));
    _907 = (uint)((uint)((((int)((uint)((uint)((uint)(_899)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_899)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_899)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_891));
    _915 = (uint)((uint)((((int)((uint)((uint)((uint)(_907)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_907)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_907)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_899));
    _923 = (uint)((uint)((((int)((uint)((uint)((uint)(_915)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_915)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_915)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_907));
    _931 = (uint)((uint)((((int)((uint)((uint)((uint)(_923)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_923)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_923)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_915));
    _939 = (uint)((uint)((((int)((uint)((uint)((uint)(_931)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_931)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_931)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_923));
    _947 = (uint)((uint)((((int)((uint)((uint)((uint)(_939)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_939)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_939)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_931));
    _955 = (uint)((uint)((((int)((uint)((uint)((uint)(_947)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_947)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_947)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_939));
    _963 = (uint)((uint)((((int)((uint)((uint)((uint)(_955)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_955)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_955)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_947));
    _965 = ((_955 & 16777215) == 0);
    [branch]
    if (_713) {
      _5008 = _26[min((uint)(_827), 1u)];
      _5009 = _27[min((uint)(_827), 1u)];
      _5010 = _28[min((uint)(_827), 1u)];
      if (_965) {
        _5021 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_963)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_963)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_963)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_955))));
      } else {
        _5021 = _955;
      }
      _5022 = __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 2.0f;
      _5023 = __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f;
      _5030 = __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 2.3841858e-07f;
      _5032 = __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.3841858e-07f;
      _5036 = ((((float)((uint)((uint)(((int)((uint)((uint)(_5021)) * (uint)(48271))) & 16777215)))) * _5030) - _5022) + _5008;
      _5037 = ((((float)((uint)((uint)(((int)((uint)((uint)(_5021)) * (uint)(-1964877855))) & 16777215)))) * _5032) - _5023) + _5009;
      _5038 = (float)((uint)((uint)(_827)));
      _5045 = _5010 - _825;
      _5061 = ((((float)((uint)((uint)(((int)((uint)((uint)(_5021)) * (uint)(-856141137))) & 16777215)))) * _5030) - _5022) + _5008;
      _5062 = ((((float)((uint)((uint)(((int)((uint)((uint)(_5021)) * (uint)(-613502015))) & 16777215)))) * _5032) - _5023) + _5009;
      _5083 = ((((float)((uint)((uint)(((int)((uint)((uint)(_5021)) * (uint)(-556260145))) & 16777215)))) * _5030) - _5022) + _5008;
      _5084 = ((((float)((uint)((uint)(((int)((uint)((uint)(_5021)) * (uint)(902075297))) & 16777215)))) * _5032) - _5023) + _5009;
      _5105 = ((((float)((uint)((uint)(((int)((uint)((uint)(_5021)) * (uint)(1698214639))) & 16777215)))) * _5030) - _5022) + _5008;
      _5106 = ((((float)((uint)((uint)(((int)((uint)((uint)(_5021)) * (uint)(773027713))) & 16777215)))) * _5032) - _5023) + _5009;
      _5117 = (((saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_5061, _5062, _5038), _5045)).x)) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_5036, _5037, _5038), _5045)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_5083, _5084, _5038), _5045)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_5105, _5106, _5038), _5045)).x))) * 0.25f;
      _5118 = (((max(0.0f, (_5010 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5061, _5062, _5038), 0.0f))).x))) + max(0.0f, (_5010 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5036, _5037, _5038), 0.0f))).x)))) + max(0.0f, (_5010 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5083, _5084, _5038), 0.0f))).x)))) + max(0.0f, (_5010 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5105, _5106, _5038), 0.0f))).x)))) * 0.25f;
      _5124 = saturate(_5117 * _5117);  // [sem: expr_sat]
      _5125 = saturate(_5118 * _5118);  // [sem: expr_sat]
      _5126 = 1.0h;
      _5127 = 1.0h;
      _5128 = 1.0h;
    } else {
      _970 = _26[min((uint)(_827), 1u)];
      _971 = _27[min((uint)(_827), 1u)];
      _972 = _28[min((uint)(_827), 1u)];
      _974 = select((_827 == 0), 2.5f, 1.0f);
      if (_965) {
        _987 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_963)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_963)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_963)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_955))));
      } else {
        _987 = _955;
      }
      _988 = select(_170, (_974 * 0.75f), _974) * 0.66f;
      _989 = _988 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.z;
      _990 = _988 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.w;
      _997 = _989 * 1.1920929e-07f;
      _999 = _990 * 1.1920929e-07f;
      _1006 = min(100.0f, _shadowAOParams.y) * 0.85f;
      _1007 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(48271))) & 16777215)))) * _997) - _989) + _970;
      _1008 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-1964877855))) & 16777215)))) * _999) - _990) + _971;
      _1011 = (_1007 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _1012 = (_1008 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _1013 = frac(_1011);
      _1014 = frac(_1012);
      _1017 = (int)(floor(_1011));
      _1018 = (int)(floor(_1012));
      _1019 = (uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x);
      _1020 = (uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y);
      _1021 = (uint)((uint)(_1017)) + (uint)(1);
      _1022 = (uint)((uint)(_1018)) + (uint)(1);
      if (!(((uint)_1017 > (uint)_1019) || ((uint)_1018 > (uint)_1020))) {
        _1028 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1017, _1018, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1030 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1021, _1018, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1032 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1017, _1022, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1034 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1021, _1022, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _1037 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_1017, _1018, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _1045 = max(0.0f, (_972 - _1028.x));
        _1047 = max(0.0f, (_972 - _1032.x));
        _1061 = saturate(exp2((_1028.x - _972) * 432808.5f));  // [sem: expr_sat]
        _1063 = saturate(exp2((_1032.x - _972) * 432808.5f));  // [sem: expr_sat]
        _1073 = ((saturate(exp2((_1030.x - _972) * 432808.5f)) - _1061) * _1013) + _1061;
        _1074 = ((max(0.0f, (_972 - _1030.x)) - _1045) * _1013) + _1045;
        _1103 = (int)(_827) << 2;
        _1105 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1103) + (int)(58)))];
        _1110 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1103) + (int)(59)))];
        _1115 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1103) + (int)(60)))];
        _1120 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1103) + (int)(61)))];
        _1125 = mad(_1110.x, _1008, (_1105.x * _1007));
        _1127 = mad(_1115.x, _1028.x, _1125) + _1120.x;
        _1129 = mad(_1110.y, _1008, (_1105.y * _1007));
        _1131 = mad(_1115.y, _1028.x, _1129) + _1120.y;
        _1133 = mad(_1110.z, _1008, (_1105.z * _1007));
        _1135 = mad(_1115.z, _1028.x, _1133) + _1120.z;
        _1136 = -4.0f - _1006;
        _1154 = mad(_1115.x, _1030.x, _1125) + _1120.x;
        _1156 = mad(_1115.y, _1030.x, _1129) + _1120.y;
        _1158 = mad(_1115.z, _1030.x, _1133) + _1120.z;
        _1176 = mad(_1115.x, _1032.x, _1125) + _1120.x;
        _1178 = mad(_1115.y, _1032.x, _1129) + _1120.y;
        _1180 = mad(_1115.z, _1032.x, _1133) + _1120.z;
        _1198 = mad(_1115.x, _1034.x, _1125) + _1120.x;
        _1200 = mad(_1115.y, _1034.x, _1129) + _1120.y;
        _1202 = mad(_1115.z, _1034.x, _1133) + _1120.z;
        _1227 = ((max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1017, _1018, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_1127 + _1136), (_1136 - _1127)) * 0.25f), (max((_1131 + _1136), (_1136 - _1131)) * 0.25f)), (max((_1135 + _1136), (_1136 - _1135)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1021, _1018, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_1154 + _1136), (_1136 - _1154)) * 0.25f), (max((_1156 + _1136), (_1136 - _1156)) * 0.25f)), (max((_1158 + _1136), (_1136 - _1158)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1017, _1022, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_1176 + _1136), (_1136 - _1176)) * 0.25f), (max((_1178 + _1136), (_1136 - _1178)) * 0.25f)), (max((_1180 + _1136), (_1136 - _1180)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1021, _1022, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_1198 + _1136), (_1136 - _1198)) * 0.25f), (max((_1200 + _1136), (_1136 - _1200)) * 0.25f)), (max((_1202 + _1136), (_1136 - _1202)) * 0.25f)))))) * ((_1073 + -1.0f) + (((_1063 - _1073) + ((saturate(exp2((_1034.x - _972) * 432808.5f)) - _1063) * _1013)) * _1014))) + 1.0f);
        _1228 = ((((_1047 - _1074) + ((max(0.0f, (_972 - _1034.x)) - _1047) * _1013)) * _1014) + _1074);
        _1229 = false;
        _1230 = (half)(_1037.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1231 = (half)(_1037.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1232 = (half)(_1037.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      } else {
        _1227 = 1.0f;
        _1228 = 0.0f;
        _1229 = true;
        _1230 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1231 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1232 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      }
      _1233 = select(_1229, 0.0f, _1230);
      _1234 = select(_1229, 0.0f, _1231);
      _1235 = select(_1229, 0.0f, _1232);
      _1236 = select(_1229, 0.0f, _1227);
      _1237 = select(_1229, 0.0f, _1228);
      _1238 = select(_1229, 0.0f, 1.0f);
      _1249 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-856141137))) & 16777215)))) * _997) - _989) + _970;
      _1250 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-613502015))) & 16777215)))) * _999) - _990) + _971;
      _1253 = (_1249 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _1254 = (_1250 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _1255 = frac(_1253);
      _1256 = frac(_1254);
      _1259 = (int)(floor(_1253));
      _1260 = (int)(floor(_1254));
      _1261 = (uint)((uint)(_1259)) + (uint)(1);
      _1262 = (uint)((uint)(_1260)) + (uint)(1);
      if (!(((uint)_1259 > (uint)_1019) || ((uint)_1260 > (uint)_1020))) {
        _1268 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1259, _1260, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1270 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1261, _1260, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1272 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1259, _1262, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1274 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1261, _1262, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _1277 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_1259, _1260, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _1285 = max(0.0f, (_972 - _1268.x));
        _1287 = max(0.0f, (_972 - _1272.x));
        _1301 = saturate(exp2((_1268.x - _972) * 432808.5f));  // [sem: expr_sat]
        _1303 = saturate(exp2((_1272.x - _972) * 432808.5f));  // [sem: expr_sat]
        _1313 = ((saturate(exp2((_1270.x - _972) * 432808.5f)) - _1301) * _1255) + _1301;
        _1314 = ((max(0.0f, (_972 - _1270.x)) - _1285) * _1255) + _1285;
        _1343 = (int)(_827) << 2;
        _1345 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1343) + (int)(58)))];
        _1350 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1343) + (int)(59)))];
        _1355 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1343) + (int)(60)))];
        _1360 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1343) + (int)(61)))];
        _1365 = mad(_1350.x, _1250, (_1345.x * _1249));
        _1367 = mad(_1355.x, _1268.x, _1365) + _1360.x;
        _1369 = mad(_1350.y, _1250, (_1345.y * _1249));
        _1371 = mad(_1355.y, _1268.x, _1369) + _1360.y;
        _1373 = mad(_1350.z, _1250, (_1345.z * _1249));
        _1375 = mad(_1355.z, _1268.x, _1373) + _1360.z;
        _1376 = -4.0f - _1006;
        _1394 = mad(_1355.x, _1270.x, _1365) + _1360.x;
        _1396 = mad(_1355.y, _1270.x, _1369) + _1360.y;
        _1398 = mad(_1355.z, _1270.x, _1373) + _1360.z;
        _1416 = mad(_1355.x, _1272.x, _1365) + _1360.x;
        _1418 = mad(_1355.y, _1272.x, _1369) + _1360.y;
        _1420 = mad(_1355.z, _1272.x, _1373) + _1360.z;
        _1438 = mad(_1355.x, _1274.x, _1365) + _1360.x;
        _1440 = mad(_1355.y, _1274.x, _1369) + _1360.y;
        _1442 = mad(_1355.z, _1274.x, _1373) + _1360.z;
        _1467 = ((max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1259, _1260, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_1367 + _1376), (_1376 - _1367)) * 0.25f), (max((_1371 + _1376), (_1376 - _1371)) * 0.25f)), (max((_1375 + _1376), (_1376 - _1375)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1261, _1260, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_1394 + _1376), (_1376 - _1394)) * 0.25f), (max((_1396 + _1376), (_1376 - _1396)) * 0.25f)), (max((_1398 + _1376), (_1376 - _1398)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1259, _1262, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_1416 + _1376), (_1376 - _1416)) * 0.25f), (max((_1418 + _1376), (_1376 - _1418)) * 0.25f)), (max((_1420 + _1376), (_1376 - _1420)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1261, _1262, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_1438 + _1376), (_1376 - _1438)) * 0.25f), (max((_1440 + _1376), (_1376 - _1440)) * 0.25f)), (max((_1442 + _1376), (_1376 - _1442)) * 0.25f)))))) * ((_1313 + -1.0f) + (((_1303 - _1313) + ((saturate(exp2((_1274.x - _972) * 432808.5f)) - _1303) * _1255)) * _1256))) + 1.0f);
        _1468 = ((((_1287 - _1314) + ((max(0.0f, (_972 - _1274.x)) - _1287) * _1255)) * _1256) + _1314);
        _1469 = false;
        _1470 = (half)(_1277.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1471 = (half)(_1277.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1472 = (half)(_1277.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      } else {
        _1467 = 1.0f;
        _1468 = 0.0f;
        _1469 = true;
        _1470 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1471 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1472 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      }
      if (!_1469) {
        _1481 = ((half)(_1470 + _1233));
        _1482 = ((half)(_1471 + _1234));
        _1483 = ((half)(_1472 + _1235));
        _1484 = (_1467 + _1236);
        _1485 = (_1468 + _1237);
        _1486 = (_1238 + 1.0f);
      } else {
        _1481 = _1233;
        _1482 = _1234;
        _1483 = _1235;
        _1484 = _1236;
        _1485 = _1237;
        _1486 = _1238;
      }
      _1497 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-556260145))) & 16777215)))) * _997) - _989) + _970;
      _1498 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(902075297))) & 16777215)))) * _999) - _990) + _971;
      _1501 = (_1497 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _1502 = (_1498 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _1503 = frac(_1501);
      _1504 = frac(_1502);
      _1507 = (int)(floor(_1501));
      _1508 = (int)(floor(_1502));
      _1509 = (uint)((uint)(_1507)) + (uint)(1);
      _1510 = (uint)((uint)(_1508)) + (uint)(1);
      if (!(((uint)_1507 > (uint)_1019) || ((uint)_1508 > (uint)_1020))) {
        _1516 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1507, _1508, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1518 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1509, _1508, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1520 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1507, _1510, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1522 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1509, _1510, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _1525 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_1507, _1508, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _1533 = max(0.0f, (_972 - _1516.x));
        _1535 = max(0.0f, (_972 - _1520.x));
        _1549 = saturate(exp2((_1516.x - _972) * 432808.5f));  // [sem: expr_sat]
        _1551 = saturate(exp2((_1520.x - _972) * 432808.5f));  // [sem: expr_sat]
        _1561 = ((saturate(exp2((_1518.x - _972) * 432808.5f)) - _1549) * _1503) + _1549;
        _1562 = ((max(0.0f, (_972 - _1518.x)) - _1533) * _1503) + _1533;
        _1591 = (int)(_827) << 2;
        _1593 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1591) + (int)(58)))];
        _1598 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1591) + (int)(59)))];
        _1603 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1591) + (int)(60)))];
        _1608 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1591) + (int)(61)))];
        _1613 = mad(_1598.x, _1498, (_1593.x * _1497));
        _1615 = mad(_1603.x, _1516.x, _1613) + _1608.x;
        _1617 = mad(_1598.y, _1498, (_1593.y * _1497));
        _1619 = mad(_1603.y, _1516.x, _1617) + _1608.y;
        _1621 = mad(_1598.z, _1498, (_1593.z * _1497));
        _1623 = mad(_1603.z, _1516.x, _1621) + _1608.z;
        _1624 = -4.0f - _1006;
        _1642 = mad(_1603.x, _1518.x, _1613) + _1608.x;
        _1644 = mad(_1603.y, _1518.x, _1617) + _1608.y;
        _1646 = mad(_1603.z, _1518.x, _1621) + _1608.z;
        _1664 = mad(_1603.x, _1520.x, _1613) + _1608.x;
        _1666 = mad(_1603.y, _1520.x, _1617) + _1608.y;
        _1668 = mad(_1603.z, _1520.x, _1621) + _1608.z;
        _1686 = mad(_1603.x, _1522.x, _1613) + _1608.x;
        _1688 = mad(_1603.y, _1522.x, _1617) + _1608.y;
        _1690 = mad(_1603.z, _1522.x, _1621) + _1608.z;
        _1715 = ((max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1507, _1508, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_1615 + _1624), (_1624 - _1615)) * 0.25f), (max((_1619 + _1624), (_1624 - _1619)) * 0.25f)), (max((_1623 + _1624), (_1624 - _1623)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1509, _1508, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_1642 + _1624), (_1624 - _1642)) * 0.25f), (max((_1644 + _1624), (_1624 - _1644)) * 0.25f)), (max((_1646 + _1624), (_1624 - _1646)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1507, _1510, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_1664 + _1624), (_1624 - _1664)) * 0.25f), (max((_1666 + _1624), (_1624 - _1666)) * 0.25f)), (max((_1668 + _1624), (_1624 - _1668)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1509, _1510, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_1686 + _1624), (_1624 - _1686)) * 0.25f), (max((_1688 + _1624), (_1624 - _1688)) * 0.25f)), (max((_1690 + _1624), (_1624 - _1690)) * 0.25f)))))) * ((_1561 + -1.0f) + (((_1551 - _1561) + ((saturate(exp2((_1522.x - _972) * 432808.5f)) - _1551) * _1503)) * _1504))) + 1.0f);
        _1716 = ((((_1535 - _1562) + ((max(0.0f, (_972 - _1522.x)) - _1535) * _1503)) * _1504) + _1562);
        _1717 = false;
        _1718 = (half)(_1525.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1719 = (half)(_1525.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1720 = (half)(_1525.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      } else {
        _1715 = 1.0f;
        _1716 = 0.0f;
        _1717 = true;
        _1718 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1719 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1720 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      }
      if (!_1717) {
        _1729 = ((half)(_1718 + _1481));
        _1730 = ((half)(_1719 + _1482));
        _1731 = ((half)(_1720 + _1483));
        _1732 = (_1715 + _1484);
        _1733 = (_1716 + _1485);
        _1734 = (_1486 + 1.0f);
      } else {
        _1729 = _1481;
        _1730 = _1482;
        _1731 = _1483;
        _1732 = _1484;
        _1733 = _1485;
        _1734 = _1486;
      }
      _1745 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1698214639))) & 16777215)))) * _997) - _989) + _970;
      _1746 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(773027713))) & 16777215)))) * _999) - _990) + _971;
      _1749 = (_1745 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _1750 = (_1746 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _1751 = frac(_1749);
      _1752 = frac(_1750);
      _1755 = (int)(floor(_1749));
      _1756 = (int)(floor(_1750));
      _1757 = (uint)((uint)(_1755)) + (uint)(1);
      _1758 = (uint)((uint)(_1756)) + (uint)(1);
      if (!(((uint)_1755 > (uint)_1019) || ((uint)_1756 > (uint)_1020))) {
        _1764 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1755, _1756, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1766 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1757, _1756, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1768 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1755, _1758, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1770 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1757, _1758, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _1773 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_1755, _1756, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _1781 = max(0.0f, (_972 - _1764.x));
        _1783 = max(0.0f, (_972 - _1768.x));
        _1797 = saturate(exp2((_1764.x - _972) * 432808.5f));  // [sem: expr_sat]
        _1799 = saturate(exp2((_1768.x - _972) * 432808.5f));  // [sem: expr_sat]
        _1809 = ((saturate(exp2((_1766.x - _972) * 432808.5f)) - _1797) * _1751) + _1797;
        _1810 = ((max(0.0f, (_972 - _1766.x)) - _1781) * _1751) + _1781;
        _1839 = (int)(_827) << 2;
        _1841 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1839) + (int)(58)))];
        _1846 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1839) + (int)(59)))];
        _1851 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1839) + (int)(60)))];
        _1856 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1839) + (int)(61)))];
        _1861 = mad(_1846.x, _1746, (_1841.x * _1745));
        _1863 = mad(_1851.x, _1764.x, _1861) + _1856.x;
        _1865 = mad(_1846.y, _1746, (_1841.y * _1745));
        _1867 = mad(_1851.y, _1764.x, _1865) + _1856.y;
        _1869 = mad(_1846.z, _1746, (_1841.z * _1745));
        _1871 = mad(_1851.z, _1764.x, _1869) + _1856.z;
        _1872 = -4.0f - _1006;
        _1890 = mad(_1851.x, _1766.x, _1861) + _1856.x;
        _1892 = mad(_1851.y, _1766.x, _1865) + _1856.y;
        _1894 = mad(_1851.z, _1766.x, _1869) + _1856.z;
        _1912 = mad(_1851.x, _1768.x, _1861) + _1856.x;
        _1914 = mad(_1851.y, _1768.x, _1865) + _1856.y;
        _1916 = mad(_1851.z, _1768.x, _1869) + _1856.z;
        _1934 = mad(_1851.x, _1770.x, _1861) + _1856.x;
        _1936 = mad(_1851.y, _1770.x, _1865) + _1856.y;
        _1938 = mad(_1851.z, _1770.x, _1869) + _1856.z;
        _1963 = ((max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1755, _1756, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_1863 + _1872), (_1872 - _1863)) * 0.25f), (max((_1867 + _1872), (_1872 - _1867)) * 0.25f)), (max((_1871 + _1872), (_1872 - _1871)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1757, _1756, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_1890 + _1872), (_1872 - _1890)) * 0.25f), (max((_1892 + _1872), (_1872 - _1892)) * 0.25f)), (max((_1894 + _1872), (_1872 - _1894)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1755, _1758, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_1912 + _1872), (_1872 - _1912)) * 0.25f), (max((_1914 + _1872), (_1872 - _1914)) * 0.25f)), (max((_1916 + _1872), (_1872 - _1916)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1757, _1758, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_1934 + _1872), (_1872 - _1934)) * 0.25f), (max((_1936 + _1872), (_1872 - _1936)) * 0.25f)), (max((_1938 + _1872), (_1872 - _1938)) * 0.25f)))))) * ((_1809 + -1.0f) + (((_1799 - _1809) + ((saturate(exp2((_1770.x - _972) * 432808.5f)) - _1799) * _1751)) * _1752))) + 1.0f);
        _1964 = ((((_1783 - _1810) + ((max(0.0f, (_972 - _1770.x)) - _1783) * _1751)) * _1752) + _1810);
        _1965 = false;
        _1966 = (half)(_1773.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1967 = (half)(_1773.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1968 = (half)(_1773.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      } else {
        _1963 = 1.0f;
        _1964 = 0.0f;
        _1965 = true;
        _1966 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1967 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1968 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      }
      if (!_1965) {
        _1977 = ((half)(_1966 + _1729));
        _1978 = ((half)(_1967 + _1730));
        _1979 = ((half)(_1968 + _1731));
        _1980 = (_1963 + _1732);
        _1981 = (_1964 + _1733);
        _1982 = (_1734 + 1.0f);
      } else {
        _1977 = _1729;
        _1978 = _1730;
        _1979 = _1731;
        _1980 = _1732;
        _1981 = _1733;
        _1982 = _1734;
      }
      _1993 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(144866575))) & 16777215)))) * _997) - _989) + _970;
      _1994 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(647683937))) & 16777215)))) * _999) - _990) + _971;
      _1997 = (_1993 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _1998 = (_1994 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _1999 = frac(_1997);
      _2000 = frac(_1998);
      _2003 = (int)(floor(_1997));
      _2004 = (int)(floor(_1998));
      _2005 = (uint)((uint)(_2003)) + (uint)(1);
      _2006 = (uint)((uint)(_2004)) + (uint)(1);
      if (!(((uint)_2003 > (uint)_1019) || ((uint)_2004 > (uint)_1020))) {
        _2012 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2003, _2004, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2014 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2005, _2004, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2016 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2003, _2006, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2018 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2005, _2006, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _2021 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_2003, _2004, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _2029 = max(0.0f, (_972 - _2012.x));
        _2031 = max(0.0f, (_972 - _2016.x));
        _2045 = saturate(exp2((_2012.x - _972) * 432808.5f));  // [sem: expr_sat]
        _2047 = saturate(exp2((_2016.x - _972) * 432808.5f));  // [sem: expr_sat]
        _2057 = ((saturate(exp2((_2014.x - _972) * 432808.5f)) - _2045) * _1999) + _2045;
        _2058 = ((max(0.0f, (_972 - _2014.x)) - _2029) * _1999) + _2029;
        _2087 = (int)(_827) << 2;
        _2089 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2087) + (int)(58)))];
        _2094 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2087) + (int)(59)))];
        _2099 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2087) + (int)(60)))];
        _2104 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2087) + (int)(61)))];
        _2109 = mad(_2094.x, _1994, (_2089.x * _1993));
        _2111 = mad(_2099.x, _2012.x, _2109) + _2104.x;
        _2113 = mad(_2094.y, _1994, (_2089.y * _1993));
        _2115 = mad(_2099.y, _2012.x, _2113) + _2104.y;
        _2117 = mad(_2094.z, _1994, (_2089.z * _1993));
        _2119 = mad(_2099.z, _2012.x, _2117) + _2104.z;
        _2120 = -4.0f - _1006;
        _2138 = mad(_2099.x, _2014.x, _2109) + _2104.x;
        _2140 = mad(_2099.y, _2014.x, _2113) + _2104.y;
        _2142 = mad(_2099.z, _2014.x, _2117) + _2104.z;
        _2160 = mad(_2099.x, _2016.x, _2109) + _2104.x;
        _2162 = mad(_2099.y, _2016.x, _2113) + _2104.y;
        _2164 = mad(_2099.z, _2016.x, _2117) + _2104.z;
        _2182 = mad(_2099.x, _2018.x, _2109) + _2104.x;
        _2184 = mad(_2099.y, _2018.x, _2113) + _2104.y;
        _2186 = mad(_2099.z, _2018.x, _2117) + _2104.z;
        _2211 = ((max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2003, _2004, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_2111 + _2120), (_2120 - _2111)) * 0.25f), (max((_2115 + _2120), (_2120 - _2115)) * 0.25f)), (max((_2119 + _2120), (_2120 - _2119)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2005, _2004, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_2138 + _2120), (_2120 - _2138)) * 0.25f), (max((_2140 + _2120), (_2120 - _2140)) * 0.25f)), (max((_2142 + _2120), (_2120 - _2142)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2003, _2006, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_2160 + _2120), (_2120 - _2160)) * 0.25f), (max((_2162 + _2120), (_2120 - _2162)) * 0.25f)), (max((_2164 + _2120), (_2120 - _2164)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2005, _2006, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_2182 + _2120), (_2120 - _2182)) * 0.25f), (max((_2184 + _2120), (_2120 - _2184)) * 0.25f)), (max((_2186 + _2120), (_2120 - _2186)) * 0.25f)))))) * ((_2057 + -1.0f) + (((_2047 - _2057) + ((saturate(exp2((_2018.x - _972) * 432808.5f)) - _2047) * _1999)) * _2000))) + 1.0f);
        _2212 = ((((_2031 - _2058) + ((max(0.0f, (_972 - _2018.x)) - _2031) * _1999)) * _2000) + _2058);
        _2213 = false;
        _2214 = (half)(_2021.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2215 = (half)(_2021.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2216 = (half)(_2021.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      } else {
        _2211 = 1.0f;
        _2212 = 0.0f;
        _2213 = true;
        _2214 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2215 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2216 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      }
      if (!_2213) {
        _2225 = ((half)(_2214 + _1977));
        _2226 = ((half)(_2215 + _1978));
        _2227 = ((half)(_2216 + _1979));
        _2228 = (_2211 + _1980);
        _2229 = (_2212 + _1981);
        _2230 = (_1982 + 1.0f);
      } else {
        _2225 = _1977;
        _2226 = _1978;
        _2227 = _1979;
        _2228 = _1980;
        _2229 = _1981;
        _2230 = _1982;
      }
      _2241 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1284375343))) & 16777215)))) * _997) - _989) + _970;
      _2242 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(229264193))) & 16777215)))) * _999) - _990) + _971;
      _2245 = (_2241 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _2246 = (_2242 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _2247 = frac(_2245);
      _2248 = frac(_2246);
      _2251 = (int)(floor(_2245));
      _2252 = (int)(floor(_2246));
      _2253 = (uint)((uint)(_2251)) + (uint)(1);
      _2254 = (uint)((uint)(_2252)) + (uint)(1);
      if (!(((uint)_2251 > (uint)_1019) || ((uint)_2252 > (uint)_1020))) {
        _2260 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2251, _2252, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2262 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2253, _2252, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2264 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2251, _2254, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2266 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2253, _2254, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _2269 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_2251, _2252, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _2277 = max(0.0f, (_972 - _2260.x));
        _2279 = max(0.0f, (_972 - _2264.x));
        _2293 = saturate(exp2((_2260.x - _972) * 432808.5f));  // [sem: expr_sat]
        _2295 = saturate(exp2((_2264.x - _972) * 432808.5f));  // [sem: expr_sat]
        _2305 = ((saturate(exp2((_2262.x - _972) * 432808.5f)) - _2293) * _2247) + _2293;
        _2306 = ((max(0.0f, (_972 - _2262.x)) - _2277) * _2247) + _2277;
        _2335 = (int)(_827) << 2;
        _2337 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2335) + (int)(58)))];
        _2342 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2335) + (int)(59)))];
        _2347 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2335) + (int)(60)))];
        _2352 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2335) + (int)(61)))];
        _2357 = mad(_2342.x, _2242, (_2337.x * _2241));
        _2359 = mad(_2347.x, _2260.x, _2357) + _2352.x;
        _2361 = mad(_2342.y, _2242, (_2337.y * _2241));
        _2363 = mad(_2347.y, _2260.x, _2361) + _2352.y;
        _2365 = mad(_2342.z, _2242, (_2337.z * _2241));
        _2367 = mad(_2347.z, _2260.x, _2365) + _2352.z;
        _2368 = -4.0f - _1006;
        _2386 = mad(_2347.x, _2262.x, _2357) + _2352.x;
        _2388 = mad(_2347.y, _2262.x, _2361) + _2352.y;
        _2390 = mad(_2347.z, _2262.x, _2365) + _2352.z;
        _2408 = mad(_2347.x, _2264.x, _2357) + _2352.x;
        _2410 = mad(_2347.y, _2264.x, _2361) + _2352.y;
        _2412 = mad(_2347.z, _2264.x, _2365) + _2352.z;
        _2430 = mad(_2347.x, _2266.x, _2357) + _2352.x;
        _2432 = mad(_2347.y, _2266.x, _2361) + _2352.y;
        _2434 = mad(_2347.z, _2266.x, _2365) + _2352.z;
        _2459 = ((max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2251, _2252, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_2359 + _2368), (_2368 - _2359)) * 0.25f), (max((_2363 + _2368), (_2368 - _2363)) * 0.25f)), (max((_2367 + _2368), (_2368 - _2367)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2253, _2252, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_2386 + _2368), (_2368 - _2386)) * 0.25f), (max((_2388 + _2368), (_2368 - _2388)) * 0.25f)), (max((_2390 + _2368), (_2368 - _2390)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2251, _2254, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_2408 + _2368), (_2368 - _2408)) * 0.25f), (max((_2410 + _2368), (_2368 - _2410)) * 0.25f)), (max((_2412 + _2368), (_2368 - _2412)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2253, _2254, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_2430 + _2368), (_2368 - _2430)) * 0.25f), (max((_2432 + _2368), (_2368 - _2432)) * 0.25f)), (max((_2434 + _2368), (_2368 - _2434)) * 0.25f)))))) * ((_2305 + -1.0f) + (((_2295 - _2305) + ((saturate(exp2((_2266.x - _972) * 432808.5f)) - _2295) * _2247)) * _2248))) + 1.0f);
        _2460 = ((((_2279 - _2306) + ((max(0.0f, (_972 - _2266.x)) - _2279) * _2247)) * _2248) + _2306);
        _2461 = false;
        _2462 = (half)(_2269.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2463 = (half)(_2269.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2464 = (half)(_2269.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      } else {
        _2459 = 1.0f;
        _2460 = 0.0f;
        _2461 = true;
        _2462 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2463 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2464 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      }
      if (!_2461) {
        _2473 = ((half)(_2462 + _2225));
        _2474 = ((half)(_2463 + _2226));
        _2475 = ((half)(_2464 + _2227));
        _2476 = (_2459 + _2228);
        _2477 = (_2460 + _2229);
        _2478 = (_2230 + 1.0f);
      } else {
        _2473 = _2225;
        _2474 = _2226;
        _2475 = _2227;
        _2476 = _2228;
        _2477 = _2229;
        _2478 = _2230;
      }
      _2489 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-1318861489))) & 16777215)))) * _997) - _989) + _970;
      _2490 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1537293089))) & 16777215)))) * _999) - _990) + _971;
      _2493 = (_2489 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _2494 = (_2490 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _2495 = frac(_2493);
      _2496 = frac(_2494);
      _2499 = (int)(floor(_2493));
      _2500 = (int)(floor(_2494));
      _2501 = (uint)((uint)(_2499)) + (uint)(1);
      _2502 = (uint)((uint)(_2500)) + (uint)(1);
      if (!(((uint)_2499 > (uint)_1019) || ((uint)_2500 > (uint)_1020))) {
        _2508 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2499, _2500, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2510 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2501, _2500, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2512 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2499, _2502, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2514 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2501, _2502, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _2517 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_2499, _2500, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _2525 = max(0.0f, (_972 - _2508.x));
        _2527 = max(0.0f, (_972 - _2512.x));
        _2541 = saturate(exp2((_2508.x - _972) * 432808.5f));  // [sem: expr_sat]
        _2543 = saturate(exp2((_2512.x - _972) * 432808.5f));  // [sem: expr_sat]
        _2553 = ((saturate(exp2((_2510.x - _972) * 432808.5f)) - _2541) * _2495) + _2541;
        _2554 = ((max(0.0f, (_972 - _2510.x)) - _2525) * _2495) + _2525;
        _2583 = (int)(_827) << 2;
        _2585 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2583) + (int)(58)))];
        _2590 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2583) + (int)(59)))];
        _2595 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2583) + (int)(60)))];
        _2600 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2583) + (int)(61)))];
        _2605 = mad(_2590.x, _2490, (_2585.x * _2489));
        _2607 = mad(_2595.x, _2508.x, _2605) + _2600.x;
        _2609 = mad(_2590.y, _2490, (_2585.y * _2489));
        _2611 = mad(_2595.y, _2508.x, _2609) + _2600.y;
        _2613 = mad(_2590.z, _2490, (_2585.z * _2489));
        _2615 = mad(_2595.z, _2508.x, _2613) + _2600.z;
        _2616 = -4.0f - _1006;
        _2634 = mad(_2595.x, _2510.x, _2605) + _2600.x;
        _2636 = mad(_2595.y, _2510.x, _2609) + _2600.y;
        _2638 = mad(_2595.z, _2510.x, _2613) + _2600.z;
        _2656 = mad(_2595.x, _2512.x, _2605) + _2600.x;
        _2658 = mad(_2595.y, _2512.x, _2609) + _2600.y;
        _2660 = mad(_2595.z, _2512.x, _2613) + _2600.z;
        _2678 = mad(_2595.x, _2514.x, _2605) + _2600.x;
        _2680 = mad(_2595.y, _2514.x, _2609) + _2600.y;
        _2682 = mad(_2595.z, _2514.x, _2613) + _2600.z;
        _2707 = ((max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2499, _2500, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_2607 + _2616), (_2616 - _2607)) * 0.25f), (max((_2611 + _2616), (_2616 - _2611)) * 0.25f)), (max((_2615 + _2616), (_2616 - _2615)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2501, _2500, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_2634 + _2616), (_2616 - _2634)) * 0.25f), (max((_2636 + _2616), (_2616 - _2636)) * 0.25f)), (max((_2638 + _2616), (_2616 - _2638)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2499, _2502, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_2656 + _2616), (_2616 - _2656)) * 0.25f), (max((_2658 + _2616), (_2616 - _2658)) * 0.25f)), (max((_2660 + _2616), (_2616 - _2660)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2501, _2502, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_2678 + _2616), (_2616 - _2678)) * 0.25f), (max((_2680 + _2616), (_2616 - _2680)) * 0.25f)), (max((_2682 + _2616), (_2616 - _2682)) * 0.25f)))))) * ((_2553 + -1.0f) + (((_2543 - _2553) + ((saturate(exp2((_2514.x - _972) * 432808.5f)) - _2543) * _2495)) * _2496))) + 1.0f);
        _2708 = ((((_2527 - _2554) + ((max(0.0f, (_972 - _2514.x)) - _2527) * _2495)) * _2496) + _2554);
        _2709 = false;
        _2710 = (half)(_2517.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2711 = (half)(_2517.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2712 = (half)(_2517.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      } else {
        _2707 = 1.0f;
        _2708 = 0.0f;
        _2709 = true;
        _2710 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2711 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2712 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      }
      if (!_2709) {
        _2721 = ((half)(_2710 + _2473));
        _2722 = ((half)(_2711 + _2474));
        _2723 = ((half)(_2712 + _2475));
        _2724 = (_2707 + _2476);
        _2725 = (_2708 + _2477);
        _2726 = (_2478 + 1.0f);
      } else {
        _2721 = _2473;
        _2722 = _2474;
        _2723 = _2475;
        _2724 = _2476;
        _2725 = _2477;
        _2726 = _2478;
      }
      _2737 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-1770241169))) & 16777215)))) * _997) - _989) + _970;
      _2738 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1357852417))) & 16777215)))) * _999) - _990) + _971;
      _2741 = (_2737 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _2742 = (_2738 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _2743 = frac(_2741);
      _2744 = frac(_2742);
      _2747 = (int)(floor(_2741));
      _2748 = (int)(floor(_2742));
      _2749 = (uint)((uint)(_2747)) + (uint)(1);
      _2750 = (uint)((uint)(_2748)) + (uint)(1);
      if (!(((uint)_2747 > (uint)_1019) || ((uint)_2748 > (uint)_1020))) {
        _2756 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2747, _2748, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2758 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2749, _2748, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2760 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2747, _2750, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2762 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2749, _2750, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _2765 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_2747, _2748, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _2773 = max(0.0f, (_972 - _2756.x));
        _2775 = max(0.0f, (_972 - _2760.x));
        _2789 = saturate(exp2((_2756.x - _972) * 432808.5f));  // [sem: expr_sat]
        _2791 = saturate(exp2((_2760.x - _972) * 432808.5f));  // [sem: expr_sat]
        _2801 = ((saturate(exp2((_2758.x - _972) * 432808.5f)) - _2789) * _2743) + _2789;
        _2802 = ((max(0.0f, (_972 - _2758.x)) - _2773) * _2743) + _2773;
        _2831 = (int)(_827) << 2;
        _2833 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2831) + (int)(58)))];
        _2838 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2831) + (int)(59)))];
        _2843 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2831) + (int)(60)))];
        _2848 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2831) + (int)(61)))];
        _2853 = mad(_2838.x, _2738, (_2833.x * _2737));
        _2855 = mad(_2843.x, _2756.x, _2853) + _2848.x;
        _2857 = mad(_2838.y, _2738, (_2833.y * _2737));
        _2859 = mad(_2843.y, _2756.x, _2857) + _2848.y;
        _2861 = mad(_2838.z, _2738, (_2833.z * _2737));
        _2863 = mad(_2843.z, _2756.x, _2861) + _2848.z;
        _2864 = -4.0f - _1006;
        _2882 = mad(_2843.x, _2758.x, _2853) + _2848.x;
        _2884 = mad(_2843.y, _2758.x, _2857) + _2848.y;
        _2886 = mad(_2843.z, _2758.x, _2861) + _2848.z;
        _2904 = mad(_2843.x, _2760.x, _2853) + _2848.x;
        _2906 = mad(_2843.y, _2760.x, _2857) + _2848.y;
        _2908 = mad(_2843.z, _2760.x, _2861) + _2848.z;
        _2926 = mad(_2843.x, _2762.x, _2853) + _2848.x;
        _2928 = mad(_2843.y, _2762.x, _2857) + _2848.y;
        _2930 = mad(_2843.z, _2762.x, _2861) + _2848.z;
        _2955 = ((max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2747, _2748, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_2855 + _2864), (_2864 - _2855)) * 0.25f), (max((_2859 + _2864), (_2864 - _2859)) * 0.25f)), (max((_2863 + _2864), (_2864 - _2863)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2749, _2748, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_2882 + _2864), (_2864 - _2882)) * 0.25f), (max((_2884 + _2864), (_2864 - _2884)) * 0.25f)), (max((_2886 + _2864), (_2864 - _2886)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2747, _2750, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_2904 + _2864), (_2864 - _2904)) * 0.25f), (max((_2906 + _2864), (_2864 - _2906)) * 0.25f)), (max((_2908 + _2864), (_2864 - _2908)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2749, _2750, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_2926 + _2864), (_2864 - _2926)) * 0.25f), (max((_2928 + _2864), (_2864 - _2928)) * 0.25f)), (max((_2930 + _2864), (_2864 - _2930)) * 0.25f)))))) * ((_2801 + -1.0f) + (((_2791 - _2801) + ((saturate(exp2((_2762.x - _972) * 432808.5f)) - _2791) * _2743)) * _2744))) + 1.0f);
        _2956 = ((((_2775 - _2802) + ((max(0.0f, (_972 - _2762.x)) - _2775) * _2743)) * _2744) + _2802);
        _2957 = false;
        _2958 = (half)(_2765.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2959 = (half)(_2765.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2960 = (half)(_2765.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      } else {
        _2955 = 1.0f;
        _2956 = 0.0f;
        _2957 = true;
        _2958 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2959 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2960 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      }
      if (!_2957) {
        _2969 = ((half)(_2958 + _2721));
        _2970 = ((half)(_2959 + _2722));
        _2971 = ((half)(_2960 + _2723));
        _2972 = (_2955 + _2724);
        _2973 = (_2956 + _2725);
        _2974 = (_2726 + 1.0f);
      } else {
        _2969 = _2721;
        _2970 = _2722;
        _2971 = _2723;
        _2972 = _2724;
        _2973 = _2725;
        _2974 = _2726;
      }
      _2985 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-601883249))) & 16777215)))) * _997) - _989) + _970;
      _2986 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1947444961))) & 16777215)))) * _999) - _990) + _971;
      _2989 = (_2985 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _2990 = (_2986 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _2991 = frac(_2989);
      _2992 = frac(_2990);
      _2995 = (int)(floor(_2989));
      _2996 = (int)(floor(_2990));
      _2997 = (uint)((uint)(_2995)) + (uint)(1);
      _2998 = (uint)((uint)(_2996)) + (uint)(1);
      if (!(((uint)_2995 > (uint)_1019) || ((uint)_2996 > (uint)_1020))) {
        _3004 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2995, _2996, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3006 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2997, _2996, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3008 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2995, _2998, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3010 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2997, _2998, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _3013 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_2995, _2996, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _3021 = max(0.0f, (_972 - _3004.x));
        _3023 = max(0.0f, (_972 - _3008.x));
        _3037 = saturate(exp2((_3004.x - _972) * 432808.5f));  // [sem: expr_sat]
        _3039 = saturate(exp2((_3008.x - _972) * 432808.5f));  // [sem: expr_sat]
        _3049 = ((saturate(exp2((_3006.x - _972) * 432808.5f)) - _3037) * _2991) + _3037;
        _3050 = ((max(0.0f, (_972 - _3006.x)) - _3021) * _2991) + _3021;
        _3079 = (int)(_827) << 2;
        _3081 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3079) + (int)(58)))];
        _3086 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3079) + (int)(59)))];
        _3091 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3079) + (int)(60)))];
        _3096 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3079) + (int)(61)))];
        _3101 = mad(_3086.x, _2986, (_3081.x * _2985));
        _3103 = mad(_3091.x, _3004.x, _3101) + _3096.x;
        _3105 = mad(_3086.y, _2986, (_3081.y * _2985));
        _3107 = mad(_3091.y, _3004.x, _3105) + _3096.y;
        _3109 = mad(_3086.z, _2986, (_3081.z * _2985));
        _3111 = mad(_3091.z, _3004.x, _3109) + _3096.z;
        _3112 = -4.0f - _1006;
        _3130 = mad(_3091.x, _3006.x, _3101) + _3096.x;
        _3132 = mad(_3091.y, _3006.x, _3105) + _3096.y;
        _3134 = mad(_3091.z, _3006.x, _3109) + _3096.z;
        _3152 = mad(_3091.x, _3008.x, _3101) + _3096.x;
        _3154 = mad(_3091.y, _3008.x, _3105) + _3096.y;
        _3156 = mad(_3091.z, _3008.x, _3109) + _3096.z;
        _3174 = mad(_3091.x, _3010.x, _3101) + _3096.x;
        _3176 = mad(_3091.y, _3010.x, _3105) + _3096.y;
        _3178 = mad(_3091.z, _3010.x, _3109) + _3096.z;
        _3203 = ((max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2995, _2996, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_3103 + _3112), (_3112 - _3103)) * 0.25f), (max((_3107 + _3112), (_3112 - _3107)) * 0.25f)), (max((_3111 + _3112), (_3112 - _3111)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2997, _2996, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_3130 + _3112), (_3112 - _3130)) * 0.25f), (max((_3132 + _3112), (_3112 - _3132)) * 0.25f)), (max((_3134 + _3112), (_3112 - _3134)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2995, _2998, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_3152 + _3112), (_3112 - _3152)) * 0.25f), (max((_3154 + _3112), (_3112 - _3154)) * 0.25f)), (max((_3156 + _3112), (_3112 - _3156)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2997, _2998, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_3174 + _3112), (_3112 - _3174)) * 0.25f), (max((_3176 + _3112), (_3112 - _3176)) * 0.25f)), (max((_3178 + _3112), (_3112 - _3178)) * 0.25f)))))) * ((_3049 + -1.0f) + (((_3039 - _3049) + ((saturate(exp2((_3010.x - _972) * 432808.5f)) - _3039) * _2991)) * _2992))) + 1.0f);
        _3204 = ((((_3023 - _3050) + ((max(0.0f, (_972 - _3010.x)) - _3023) * _2991)) * _2992) + _3050);
        _3205 = false;
        _3206 = (half)(_3013.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _3207 = (half)(_3013.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _3208 = (half)(_3013.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      } else {
        _3203 = 1.0f;
        _3204 = 0.0f;
        _3205 = true;
        _3206 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _3207 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _3208 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      }
      if (!_3205) {
        _3217 = ((half)(_3206 + _2969));
        _3218 = ((half)(_3207 + _2970));
        _3219 = ((half)(_3208 + _2971));
        _3220 = (_3203 + _2972);
        _3221 = (_3204 + _2973);
        _3222 = (_2974 + 1.0f);
      } else {
        _3217 = _2969;
        _3218 = _2970;
        _3219 = _2971;
        _3220 = _2972;
        _3221 = _2973;
        _3222 = _2974;
      }
      _3233 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1166504879))) & 16777215)))) * _997) - _989) + _970;
      _3234 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1335763649))) & 16777215)))) * _999) - _990) + _971;
      _3237 = (_3233 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _3238 = (_3234 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _3239 = frac(_3237);
      _3240 = frac(_3238);
      _3243 = (int)(floor(_3237));
      _3244 = (int)(floor(_3238));
      _3245 = (uint)((uint)(_3243)) + (uint)(1);
      _3246 = (uint)((uint)(_3244)) + (uint)(1);
      if (!(((uint)_3243 > (uint)_1019) || ((uint)_3244 > (uint)_1020))) {
        _3252 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3243, _3244, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3254 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3245, _3244, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3256 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3243, _3246, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3258 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3245, _3246, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _3261 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_3243, _3244, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _3269 = max(0.0f, (_972 - _3252.x));
        _3271 = max(0.0f, (_972 - _3256.x));
        _3285 = saturate(exp2((_3252.x - _972) * 432808.5f));  // [sem: expr_sat]
        _3287 = saturate(exp2((_3256.x - _972) * 432808.5f));  // [sem: expr_sat]
        _3297 = ((saturate(exp2((_3254.x - _972) * 432808.5f)) - _3285) * _3239) + _3285;
        _3298 = ((max(0.0f, (_972 - _3254.x)) - _3269) * _3239) + _3269;
        _3327 = (int)(_827) << 2;
        _3329 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3327) + (int)(58)))];
        _3334 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3327) + (int)(59)))];
        _3339 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3327) + (int)(60)))];
        _3344 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3327) + (int)(61)))];
        _3349 = mad(_3334.x, _3234, (_3329.x * _3233));
        _3351 = mad(_3339.x, _3252.x, _3349) + _3344.x;
        _3353 = mad(_3334.y, _3234, (_3329.y * _3233));
        _3355 = mad(_3339.y, _3252.x, _3353) + _3344.y;
        _3357 = mad(_3334.z, _3234, (_3329.z * _3233));
        _3359 = mad(_3339.z, _3252.x, _3357) + _3344.z;
        _3360 = -4.0f - _1006;
        _3378 = mad(_3339.x, _3254.x, _3349) + _3344.x;
        _3380 = mad(_3339.y, _3254.x, _3353) + _3344.y;
        _3382 = mad(_3339.z, _3254.x, _3357) + _3344.z;
        _3400 = mad(_3339.x, _3256.x, _3349) + _3344.x;
        _3402 = mad(_3339.y, _3256.x, _3353) + _3344.y;
        _3404 = mad(_3339.z, _3256.x, _3357) + _3344.z;
        _3422 = mad(_3339.x, _3258.x, _3349) + _3344.x;
        _3424 = mad(_3339.y, _3258.x, _3353) + _3344.y;
        _3426 = mad(_3339.z, _3258.x, _3357) + _3344.z;
        _3451 = ((max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3243, _3244, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_3351 + _3360), (_3360 - _3351)) * 0.25f), (max((_3355 + _3360), (_3360 - _3355)) * 0.25f)), (max((_3359 + _3360), (_3360 - _3359)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3245, _3244, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_3378 + _3360), (_3360 - _3378)) * 0.25f), (max((_3380 + _3360), (_3360 - _3380)) * 0.25f)), (max((_3382 + _3360), (_3360 - _3382)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3243, _3246, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_3400 + _3360), (_3360 - _3400)) * 0.25f), (max((_3402 + _3360), (_3360 - _3402)) * 0.25f)), (max((_3404 + _3360), (_3360 - _3404)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3245, _3246, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_3422 + _3360), (_3360 - _3422)) * 0.25f), (max((_3424 + _3360), (_3360 - _3424)) * 0.25f)), (max((_3426 + _3360), (_3360 - _3426)) * 0.25f)))))) * ((_3297 + -1.0f) + (((_3287 - _3297) + ((saturate(exp2((_3258.x - _972) * 432808.5f)) - _3287) * _3239)) * _3240))) + 1.0f);
        _3452 = ((((_3271 - _3298) + ((max(0.0f, (_972 - _3258.x)) - _3271) * _3239)) * _3240) + _3298);
        _3453 = false;
        _3454 = (half)(_3261.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _3455 = (half)(_3261.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _3456 = (half)(_3261.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      } else {
        _3451 = 1.0f;
        _3452 = 0.0f;
        _3453 = true;
        _3454 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _3455 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _3456 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      }
      if (!_3453) {
        _3465 = ((half)(_3454 + _3217));
        _3466 = ((half)(_3455 + _3218));
        _3467 = ((half)(_3456 + _3219));
        _3468 = (_3451 + _3220);
        _3469 = (_3452 + _3221);
        _3470 = (_3222 + 1.0f);
      } else {
        _3465 = _3217;
        _3466 = _3218;
        _3467 = _3219;
        _3468 = _3220;
        _3469 = _3221;
        _3470 = _3222;
      }
      _3481 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-1696913969))) & 16777215)))) * _997) - _989) + _970;
      _3482 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1882071713))) & 16777215)))) * _999) - _990) + _971;
      _3485 = (_3481 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _3486 = (_3482 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _3487 = frac(_3485);
      _3488 = frac(_3486);
      _3491 = (int)(floor(_3485));
      _3492 = (int)(floor(_3486));
      _3493 = (uint)((uint)(_3491)) + (uint)(1);
      _3494 = (uint)((uint)(_3492)) + (uint)(1);
      if (!(((uint)_3491 > (uint)_1019) || ((uint)_3492 > (uint)_1020))) {
        _3500 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3491, _3492, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3502 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3493, _3492, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3504 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3491, _3494, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3506 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3493, _3494, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _3509 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_3491, _3492, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _3517 = max(0.0f, (_972 - _3500.x));
        _3519 = max(0.0f, (_972 - _3504.x));
        _3533 = saturate(exp2((_3500.x - _972) * 432808.5f));  // [sem: expr_sat]
        _3535 = saturate(exp2((_3504.x - _972) * 432808.5f));  // [sem: expr_sat]
        _3545 = ((saturate(exp2((_3502.x - _972) * 432808.5f)) - _3533) * _3487) + _3533;
        _3546 = ((max(0.0f, (_972 - _3502.x)) - _3517) * _3487) + _3517;
        _3575 = (int)(_827) << 2;
        _3577 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3575) + (int)(58)))];
        _3582 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3575) + (int)(59)))];
        _3587 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3575) + (int)(60)))];
        _3592 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3575) + (int)(61)))];
        _3597 = mad(_3582.x, _3482, (_3577.x * _3481));
        _3599 = mad(_3587.x, _3500.x, _3597) + _3592.x;
        _3601 = mad(_3582.y, _3482, (_3577.y * _3481));
        _3603 = mad(_3587.y, _3500.x, _3601) + _3592.y;
        _3605 = mad(_3582.z, _3482, (_3577.z * _3481));
        _3607 = mad(_3587.z, _3500.x, _3605) + _3592.z;
        _3608 = -4.0f - _1006;
        _3626 = mad(_3587.x, _3502.x, _3597) + _3592.x;
        _3628 = mad(_3587.y, _3502.x, _3601) + _3592.y;
        _3630 = mad(_3587.z, _3502.x, _3605) + _3592.z;
        _3648 = mad(_3587.x, _3504.x, _3597) + _3592.x;
        _3650 = mad(_3587.y, _3504.x, _3601) + _3592.y;
        _3652 = mad(_3587.z, _3504.x, _3605) + _3592.z;
        _3670 = mad(_3587.x, _3506.x, _3597) + _3592.x;
        _3672 = mad(_3587.y, _3506.x, _3601) + _3592.y;
        _3674 = mad(_3587.z, _3506.x, _3605) + _3592.z;
        _3699 = ((max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3491, _3492, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_3599 + _3608), (_3608 - _3599)) * 0.25f), (max((_3603 + _3608), (_3608 - _3603)) * 0.25f)), (max((_3607 + _3608), (_3608 - _3607)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3493, _3492, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_3626 + _3608), (_3608 - _3626)) * 0.25f), (max((_3628 + _3608), (_3608 - _3628)) * 0.25f)), (max((_3630 + _3608), (_3608 - _3630)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3491, _3494, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_3648 + _3608), (_3608 - _3648)) * 0.25f), (max((_3650 + _3608), (_3608 - _3650)) * 0.25f)), (max((_3652 + _3608), (_3608 - _3652)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3493, _3494, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_3670 + _3608), (_3608 - _3670)) * 0.25f), (max((_3672 + _3608), (_3608 - _3672)) * 0.25f)), (max((_3674 + _3608), (_3608 - _3674)) * 0.25f)))))) * ((_3545 + -1.0f) + (((_3535 - _3545) + ((saturate(exp2((_3506.x - _972) * 432808.5f)) - _3535) * _3487)) * _3488))) + 1.0f);
        _3700 = ((((_3519 - _3546) + ((max(0.0f, (_972 - _3506.x)) - _3519) * _3487)) * _3488) + _3546);
        _3701 = false;
        _3702 = (half)(_3509.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _3703 = (half)(_3509.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _3704 = (half)(_3509.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      } else {
        _3699 = 1.0f;
        _3700 = 0.0f;
        _3701 = true;
        _3702 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _3703 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _3704 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      }
      if (!_3701) {
        _3713 = ((half)(_3702 + _3465));
        _3714 = ((half)(_3703 + _3466));
        _3715 = ((half)(_3704 + _3467));
        _3716 = (_3699 + _3468);
        _3717 = (_3700 + _3469);
        _3718 = (_3470 + 1.0f);
      } else {
        _3713 = _3465;
        _3714 = _3466;
        _3715 = _3467;
        _3716 = _3468;
        _3717 = _3469;
        _3718 = _3470;
      }
      _3729 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-1959554065))) & 16777215)))) * _997) - _989) + _970;
      _3730 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-1569511807))) & 16777215)))) * _999) - _990) + _971;
      _3733 = (_3729 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _3734 = (_3730 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _3735 = frac(_3733);
      _3736 = frac(_3734);
      _3739 = (int)(floor(_3733));
      _3740 = (int)(floor(_3734));
      _3741 = (uint)((uint)(_3739)) + (uint)(1);
      _3742 = (uint)((uint)(_3740)) + (uint)(1);
      if (!(((uint)_3739 > (uint)_1019) || ((uint)_3740 > (uint)_1020))) {
        _3748 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3739, _3740, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3750 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3741, _3740, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3752 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3739, _3742, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3754 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3741, _3742, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _3757 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_3739, _3740, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _3765 = max(0.0f, (_972 - _3748.x));
        _3767 = max(0.0f, (_972 - _3752.x));
        _3781 = saturate(exp2((_3748.x - _972) * 432808.5f));  // [sem: expr_sat]
        _3783 = saturate(exp2((_3752.x - _972) * 432808.5f));  // [sem: expr_sat]
        _3793 = ((saturate(exp2((_3750.x - _972) * 432808.5f)) - _3781) * _3735) + _3781;
        _3794 = ((max(0.0f, (_972 - _3750.x)) - _3765) * _3735) + _3765;
        _3823 = (int)(_827) << 2;
        _3825 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3823) + (int)(58)))];
        _3830 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3823) + (int)(59)))];
        _3835 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3823) + (int)(60)))];
        _3840 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3823) + (int)(61)))];
        _3845 = mad(_3830.x, _3730, (_3825.x * _3729));
        _3847 = mad(_3835.x, _3748.x, _3845) + _3840.x;
        _3849 = mad(_3830.y, _3730, (_3825.y * _3729));
        _3851 = mad(_3835.y, _3748.x, _3849) + _3840.y;
        _3853 = mad(_3830.z, _3730, (_3825.z * _3729));
        _3855 = mad(_3835.z, _3748.x, _3853) + _3840.z;
        _3856 = -4.0f - _1006;
        _3874 = mad(_3835.x, _3750.x, _3845) + _3840.x;
        _3876 = mad(_3835.y, _3750.x, _3849) + _3840.y;
        _3878 = mad(_3835.z, _3750.x, _3853) + _3840.z;
        _3896 = mad(_3835.x, _3752.x, _3845) + _3840.x;
        _3898 = mad(_3835.y, _3752.x, _3849) + _3840.y;
        _3900 = mad(_3835.z, _3752.x, _3853) + _3840.z;
        _3918 = mad(_3835.x, _3754.x, _3845) + _3840.x;
        _3920 = mad(_3835.y, _3754.x, _3849) + _3840.y;
        _3922 = mad(_3835.z, _3754.x, _3853) + _3840.z;
        _3947 = ((max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3739, _3740, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_3847 + _3856), (_3856 - _3847)) * 0.25f), (max((_3851 + _3856), (_3856 - _3851)) * 0.25f)), (max((_3855 + _3856), (_3856 - _3855)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3741, _3740, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_3874 + _3856), (_3856 - _3874)) * 0.25f), (max((_3876 + _3856), (_3856 - _3876)) * 0.25f)), (max((_3878 + _3856), (_3856 - _3878)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3739, _3742, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_3896 + _3856), (_3856 - _3896)) * 0.25f), (max((_3898 + _3856), (_3856 - _3898)) * 0.25f)), (max((_3900 + _3856), (_3856 - _3900)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3741, _3742, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_3918 + _3856), (_3856 - _3918)) * 0.25f), (max((_3920 + _3856), (_3856 - _3920)) * 0.25f)), (max((_3922 + _3856), (_3856 - _3922)) * 0.25f)))))) * ((_3793 + -1.0f) + (((_3783 - _3793) + ((saturate(exp2((_3754.x - _972) * 432808.5f)) - _3783) * _3735)) * _3736))) + 1.0f);
        _3948 = ((((_3767 - _3794) + ((max(0.0f, (_972 - _3754.x)) - _3767) * _3735)) * _3736) + _3794);
        _3949 = false;
        _3950 = (half)(_3757.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _3951 = (half)(_3757.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _3952 = (half)(_3757.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      } else {
        _3947 = 1.0f;
        _3948 = 0.0f;
        _3949 = true;
        _3950 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _3951 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _3952 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      }
      if (!_3949) {
        _3961 = ((half)(_3950 + _3713));
        _3962 = ((half)(_3951 + _3714));
        _3963 = ((half)(_3952 + _3715));
        _3964 = (_3947 + _3716);
        _3965 = (_3948 + _3717);
        _3966 = (_3718 + 1.0f);
      } else {
        _3961 = _3713;
        _3962 = _3714;
        _3963 = _3715;
        _3964 = _3716;
        _3965 = _3717;
        _3966 = _3718;
      }
      _3977 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1318665743))) & 16777215)))) * _997) - _989) + _970;
      _3978 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1898753633))) & 16777215)))) * _999) - _990) + _971;
      _3981 = (_3977 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _3982 = (_3978 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _3983 = frac(_3981);
      _3984 = frac(_3982);
      _3987 = (int)(floor(_3981));
      _3988 = (int)(floor(_3982));
      _3989 = (uint)((uint)(_3987)) + (uint)(1);
      _3990 = (uint)((uint)(_3988)) + (uint)(1);
      if (!(((uint)_3987 > (uint)_1019) || ((uint)_3988 > (uint)_1020))) {
        _3996 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3987, _3988, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3998 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3989, _3988, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4000 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3987, _3990, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4002 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3989, _3990, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _4005 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_3987, _3988, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _4013 = max(0.0f, (_972 - _3996.x));
        _4015 = max(0.0f, (_972 - _4000.x));
        _4029 = saturate(exp2((_3996.x - _972) * 432808.5f));  // [sem: expr_sat]
        _4031 = saturate(exp2((_4000.x - _972) * 432808.5f));  // [sem: expr_sat]
        _4041 = ((saturate(exp2((_3998.x - _972) * 432808.5f)) - _4029) * _3983) + _4029;
        _4042 = ((max(0.0f, (_972 - _3998.x)) - _4013) * _3983) + _4013;
        _4071 = (int)(_827) << 2;
        _4073 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4071) + (int)(58)))];
        _4078 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4071) + (int)(59)))];
        _4083 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4071) + (int)(60)))];
        _4088 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4071) + (int)(61)))];
        _4093 = mad(_4078.x, _3978, (_4073.x * _3977));
        _4095 = mad(_4083.x, _3996.x, _4093) + _4088.x;
        _4097 = mad(_4078.y, _3978, (_4073.y * _3977));
        _4099 = mad(_4083.y, _3996.x, _4097) + _4088.y;
        _4101 = mad(_4078.z, _3978, (_4073.z * _3977));
        _4103 = mad(_4083.z, _3996.x, _4101) + _4088.z;
        _4104 = -4.0f - _1006;
        _4122 = mad(_4083.x, _3998.x, _4093) + _4088.x;
        _4124 = mad(_4083.y, _3998.x, _4097) + _4088.y;
        _4126 = mad(_4083.z, _3998.x, _4101) + _4088.z;
        _4144 = mad(_4083.x, _4000.x, _4093) + _4088.x;
        _4146 = mad(_4083.y, _4000.x, _4097) + _4088.y;
        _4148 = mad(_4083.z, _4000.x, _4101) + _4088.z;
        _4166 = mad(_4083.x, _4002.x, _4093) + _4088.x;
        _4168 = mad(_4083.y, _4002.x, _4097) + _4088.y;
        _4170 = mad(_4083.z, _4002.x, _4101) + _4088.z;
        _4195 = ((max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3987, _3988, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_4095 + _4104), (_4104 - _4095)) * 0.25f), (max((_4099 + _4104), (_4104 - _4099)) * 0.25f)), (max((_4103 + _4104), (_4104 - _4103)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3989, _3988, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_4122 + _4104), (_4104 - _4122)) * 0.25f), (max((_4124 + _4104), (_4104 - _4124)) * 0.25f)), (max((_4126 + _4104), (_4104 - _4126)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3987, _3990, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_4144 + _4104), (_4104 - _4144)) * 0.25f), (max((_4146 + _4104), (_4104 - _4146)) * 0.25f)), (max((_4148 + _4104), (_4104 - _4148)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3989, _3990, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_4166 + _4104), (_4104 - _4166)) * 0.25f), (max((_4168 + _4104), (_4104 - _4168)) * 0.25f)), (max((_4170 + _4104), (_4104 - _4170)) * 0.25f)))))) * ((_4041 + -1.0f) + (((_4031 - _4041) + ((saturate(exp2((_4002.x - _972) * 432808.5f)) - _4031) * _3983)) * _3984))) + 1.0f);
        _4196 = ((((_4015 - _4042) + ((max(0.0f, (_972 - _4002.x)) - _4015) * _3983)) * _3984) + _4042);
        _4197 = false;
        _4198 = (half)(_4005.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4199 = (half)(_4005.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4200 = (half)(_4005.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      } else {
        _4195 = 1.0f;
        _4196 = 0.0f;
        _4197 = true;
        _4198 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4199 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4200 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      }
      if (!_4197) {
        _4209 = ((half)(_4198 + _3961));
        _4210 = ((half)(_4199 + _3962));
        _4211 = ((half)(_4200 + _3963));
        _4212 = (_4195 + _3964);
        _4213 = (_4196 + _3965);
        _4214 = (_3966 + 1.0f);
      } else {
        _4209 = _3961;
        _4210 = _3962;
        _4211 = _3963;
        _4212 = _3964;
        _4213 = _3965;
        _4214 = _3966;
      }
      _4225 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(134521903))) & 16777215)))) * _997) - _989) + _970;
      _4226 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-483771839))) & 16777215)))) * _999) - _990) + _971;
      _4229 = (_4225 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _4230 = (_4226 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _4231 = frac(_4229);
      _4232 = frac(_4230);
      _4235 = (int)(floor(_4229));
      _4236 = (int)(floor(_4230));
      _4237 = (uint)((uint)(_4235)) + (uint)(1);
      _4238 = (uint)((uint)(_4236)) + (uint)(1);
      if (!(((uint)_4235 > (uint)_1019) || ((uint)_4236 > (uint)_1020))) {
        _4244 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4235, _4236, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4246 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4237, _4236, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4248 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4235, _4238, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4250 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4237, _4238, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _4253 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_4235, _4236, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _4261 = max(0.0f, (_972 - _4244.x));
        _4263 = max(0.0f, (_972 - _4248.x));
        _4277 = saturate(exp2((_4244.x - _972) * 432808.5f));  // [sem: expr_sat]
        _4279 = saturate(exp2((_4248.x - _972) * 432808.5f));  // [sem: expr_sat]
        _4289 = ((saturate(exp2((_4246.x - _972) * 432808.5f)) - _4277) * _4231) + _4277;
        _4290 = ((max(0.0f, (_972 - _4246.x)) - _4261) * _4231) + _4261;
        _4319 = (int)(_827) << 2;
        _4321 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4319) + (int)(58)))];
        _4326 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4319) + (int)(59)))];
        _4331 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4319) + (int)(60)))];
        _4336 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4319) + (int)(61)))];
        _4341 = mad(_4326.x, _4226, (_4321.x * _4225));
        _4343 = mad(_4331.x, _4244.x, _4341) + _4336.x;
        _4345 = mad(_4326.y, _4226, (_4321.y * _4225));
        _4347 = mad(_4331.y, _4244.x, _4345) + _4336.y;
        _4349 = mad(_4326.z, _4226, (_4321.z * _4225));
        _4351 = mad(_4331.z, _4244.x, _4349) + _4336.z;
        _4352 = -4.0f - _1006;
        _4370 = mad(_4331.x, _4246.x, _4341) + _4336.x;
        _4372 = mad(_4331.y, _4246.x, _4345) + _4336.y;
        _4374 = mad(_4331.z, _4246.x, _4349) + _4336.z;
        _4392 = mad(_4331.x, _4248.x, _4341) + _4336.x;
        _4394 = mad(_4331.y, _4248.x, _4345) + _4336.y;
        _4396 = mad(_4331.z, _4248.x, _4349) + _4336.z;
        _4414 = mad(_4331.x, _4250.x, _4341) + _4336.x;
        _4416 = mad(_4331.y, _4250.x, _4345) + _4336.y;
        _4418 = mad(_4331.z, _4250.x, _4349) + _4336.z;
        _4443 = ((max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4235, _4236, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_4343 + _4352), (_4352 - _4343)) * 0.25f), (max((_4347 + _4352), (_4352 - _4347)) * 0.25f)), (max((_4351 + _4352), (_4352 - _4351)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4237, _4236, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_4370 + _4352), (_4352 - _4370)) * 0.25f), (max((_4372 + _4352), (_4352 - _4372)) * 0.25f)), (max((_4374 + _4352), (_4352 - _4374)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4235, _4238, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_4392 + _4352), (_4352 - _4392)) * 0.25f), (max((_4394 + _4352), (_4352 - _4394)) * 0.25f)), (max((_4396 + _4352), (_4352 - _4396)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4237, _4238, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_4414 + _4352), (_4352 - _4414)) * 0.25f), (max((_4416 + _4352), (_4352 - _4416)) * 0.25f)), (max((_4418 + _4352), (_4352 - _4418)) * 0.25f)))))) * ((_4289 + -1.0f) + (((_4279 - _4289) + ((saturate(exp2((_4250.x - _972) * 432808.5f)) - _4279) * _4231)) * _4232))) + 1.0f);
        _4444 = ((((_4263 - _4290) + ((max(0.0f, (_972 - _4250.x)) - _4263) * _4231)) * _4232) + _4290);
        _4445 = false;
        _4446 = (half)(_4253.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4447 = (half)(_4253.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4448 = (half)(_4253.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      } else {
        _4443 = 1.0f;
        _4444 = 0.0f;
        _4445 = true;
        _4446 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4447 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4448 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      }
      if (!_4445) {
        _4457 = ((half)(_4446 + _4209));
        _4458 = ((half)(_4447 + _4210));
        _4459 = ((half)(_4448 + _4211));
        _4460 = (_4443 + _4212);
        _4461 = (_4444 + _4213);
        _4462 = (_4214 + 1.0f);
      } else {
        _4457 = _4209;
        _4458 = _4210;
        _4459 = _4211;
        _4460 = _4212;
        _4461 = _4213;
        _4462 = _4214;
      }
      _4473 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-413252017))) & 16777215)))) * _997) - _989) + _970;
      _4474 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(2034977313))) & 16777215)))) * _999) - _990) + _971;
      _4477 = (_4473 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _4478 = (_4474 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _4479 = frac(_4477);
      _4480 = frac(_4478);
      _4483 = (int)(floor(_4477));
      _4484 = (int)(floor(_4478));
      _4485 = (uint)((uint)(_4483)) + (uint)(1);
      _4486 = (uint)((uint)(_4484)) + (uint)(1);
      if (!(((uint)_4483 > (uint)_1019) || ((uint)_4484 > (uint)_1020))) {
        _4492 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4483, _4484, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4494 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4485, _4484, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4496 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4483, _4486, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4498 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4485, _4486, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _4501 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_4483, _4484, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _4509 = max(0.0f, (_972 - _4492.x));
        _4511 = max(0.0f, (_972 - _4496.x));
        _4525 = saturate(exp2((_4492.x - _972) * 432808.5f));  // [sem: expr_sat]
        _4527 = saturate(exp2((_4496.x - _972) * 432808.5f));  // [sem: expr_sat]
        _4537 = ((saturate(exp2((_4494.x - _972) * 432808.5f)) - _4525) * _4479) + _4525;
        _4538 = ((max(0.0f, (_972 - _4494.x)) - _4509) * _4479) + _4509;
        _4567 = (int)(_827) << 2;
        _4569 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4567) + (int)(58)))];
        _4574 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4567) + (int)(59)))];
        _4579 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4567) + (int)(60)))];
        _4584 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4567) + (int)(61)))];
        _4589 = mad(_4574.x, _4474, (_4569.x * _4473));
        _4591 = mad(_4579.x, _4492.x, _4589) + _4584.x;
        _4593 = mad(_4574.y, _4474, (_4569.y * _4473));
        _4595 = mad(_4579.y, _4492.x, _4593) + _4584.y;
        _4597 = mad(_4574.z, _4474, (_4569.z * _4473));
        _4599 = mad(_4579.z, _4492.x, _4597) + _4584.z;
        _4600 = -4.0f - _1006;
        _4618 = mad(_4579.x, _4494.x, _4589) + _4584.x;
        _4620 = mad(_4579.y, _4494.x, _4593) + _4584.y;
        _4622 = mad(_4579.z, _4494.x, _4597) + _4584.z;
        _4640 = mad(_4579.x, _4496.x, _4589) + _4584.x;
        _4642 = mad(_4579.y, _4496.x, _4593) + _4584.y;
        _4644 = mad(_4579.z, _4496.x, _4597) + _4584.z;
        _4662 = mad(_4579.x, _4498.x, _4589) + _4584.x;
        _4664 = mad(_4579.y, _4498.x, _4593) + _4584.y;
        _4666 = mad(_4579.z, _4498.x, _4597) + _4584.z;
        _4691 = ((max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4483, _4484, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_4591 + _4600), (_4600 - _4591)) * 0.25f), (max((_4595 + _4600), (_4600 - _4595)) * 0.25f)), (max((_4599 + _4600), (_4600 - _4599)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4485, _4484, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_4618 + _4600), (_4600 - _4618)) * 0.25f), (max((_4620 + _4600), (_4600 - _4620)) * 0.25f)), (max((_4622 + _4600), (_4600 - _4622)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4483, _4486, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_4640 + _4600), (_4600 - _4640)) * 0.25f), (max((_4642 + _4600), (_4600 - _4642)) * 0.25f)), (max((_4644 + _4600), (_4600 - _4644)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4485, _4486, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_4662 + _4600), (_4600 - _4662)) * 0.25f), (max((_4664 + _4600), (_4600 - _4664)) * 0.25f)), (max((_4666 + _4600), (_4600 - _4666)) * 0.25f)))))) * ((_4537 + -1.0f) + (((_4527 - _4537) + ((saturate(exp2((_4498.x - _972) * 432808.5f)) - _4527) * _4479)) * _4480))) + 1.0f);
        _4692 = ((((_4511 - _4538) + ((max(0.0f, (_972 - _4498.x)) - _4511) * _4479)) * _4480) + _4538);
        _4693 = false;
        _4694 = (half)(_4501.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4695 = (half)(_4501.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4696 = (half)(_4501.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      } else {
        _4691 = 1.0f;
        _4692 = 0.0f;
        _4693 = true;
        _4694 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4695 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4696 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      }
      if (!_4693) {
        _4705 = ((half)(_4694 + _4457));
        _4706 = ((half)(_4695 + _4458));
        _4707 = ((half)(_4696 + _4459));
        _4708 = (_4691 + _4460);
        _4709 = (_4692 + _4461);
        _4710 = (_4462 + 1.0f);
      } else {
        _4705 = _4457;
        _4706 = _4458;
        _4707 = _4459;
        _4708 = _4460;
        _4709 = _4461;
        _4710 = _4462;
      }
      _4721 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(192849007))) & 16777215)))) * _997) - _989) + _970;
      _4722 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1820286465))) & 16777215)))) * _999) - _990) + _971;
      _4725 = (_4721 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _4726 = (_4722 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _4727 = frac(_4725);
      _4728 = frac(_4726);
      _4731 = (int)(floor(_4725));
      _4732 = (int)(floor(_4726));
      _4733 = (uint)((uint)(_4731)) + (uint)(1);
      _4734 = (uint)((uint)(_4732)) + (uint)(1);
      if (!(((uint)_4731 > (uint)_1019) || ((uint)_4732 > (uint)_1020))) {
        _4740 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4731, _4732, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4742 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4733, _4732, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4744 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4731, _4734, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4746 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4733, _4734, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _4749 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_4731, _4732, _827, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _4757 = max(0.0f, (_972 - _4740.x));
        _4759 = max(0.0f, (_972 - _4744.x));
        _4773 = saturate(exp2((_4740.x - _972) * 432808.5f));  // [sem: expr_sat]
        _4775 = saturate(exp2((_4744.x - _972) * 432808.5f));  // [sem: expr_sat]
        _4785 = ((saturate(exp2((_4742.x - _972) * 432808.5f)) - _4773) * _4727) + _4773;
        _4786 = ((max(0.0f, (_972 - _4742.x)) - _4757) * _4727) + _4757;
        _4815 = (int)(_827) << 2;
        _4817 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4815) + (int)(58)))];
        _4822 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4815) + (int)(59)))];
        _4827 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4815) + (int)(60)))];
        _4832 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4815) + (int)(61)))];
        _4837 = mad(_4822.x, _4722, (_4817.x * _4721));
        _4839 = mad(_4827.x, _4740.x, _4837) + _4832.x;
        _4841 = mad(_4822.y, _4722, (_4817.y * _4721));
        _4843 = mad(_4827.y, _4740.x, _4841) + _4832.y;
        _4845 = mad(_4822.z, _4722, (_4817.z * _4721));
        _4847 = mad(_4827.z, _4740.x, _4845) + _4832.z;
        _4848 = -4.0f - _1006;
        _4866 = mad(_4827.x, _4742.x, _4837) + _4832.x;
        _4868 = mad(_4827.y, _4742.x, _4841) + _4832.y;
        _4870 = mad(_4827.z, _4742.x, _4845) + _4832.z;
        _4888 = mad(_4827.x, _4744.x, _4837) + _4832.x;
        _4890 = mad(_4827.y, _4744.x, _4841) + _4832.y;
        _4892 = mad(_4827.z, _4744.x, _4845) + _4832.z;
        _4910 = mad(_4827.x, _4746.x, _4837) + _4832.x;
        _4912 = mad(_4827.y, _4746.x, _4841) + _4832.y;
        _4914 = mad(_4827.z, _4746.x, _4845) + _4832.z;
        _4939 = ((max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4731, _4732, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_4839 + _4848), (_4848 - _4839)) * 0.25f), (max((_4843 + _4848), (_4848 - _4843)) * 0.25f)), (max((_4847 + _4848), (_4848 - _4847)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4733, _4732, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_4866 + _4848), (_4848 - _4866)) * 0.25f), (max((_4868 + _4848), (_4848 - _4868)) * 0.25f)), (max((_4870 + _4848), (_4848 - _4870)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4731, _4734, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_4888 + _4848), (_4848 - _4888)) * 0.25f), (max((_4890 + _4848), (_4848 - _4890)) * 0.25f)), (max((_4892 + _4848), (_4848 - _4892)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4733, _4734, _827, 0)))).x) & 1) != 0))), saturate(max(max((max((_4910 + _4848), (_4848 - _4910)) * 0.25f), (max((_4912 + _4848), (_4848 - _4912)) * 0.25f)), (max((_4914 + _4848), (_4848 - _4914)) * 0.25f)))))) * ((_4785 + -1.0f) + (((_4775 - _4785) + ((saturate(exp2((_4746.x - _972) * 432808.5f)) - _4775) * _4727)) * _4728))) + 1.0f);
        _4940 = ((((_4759 - _4786) + ((max(0.0f, (_972 - _4746.x)) - _4759) * _4727)) * _4728) + _4786);
        _4941 = false;
        _4942 = (half)(_4749.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4943 = (half)(_4749.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4944 = (half)(_4749.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      } else {
        _4939 = 1.0f;
        _4940 = 0.0f;
        _4941 = true;
        _4942 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4943 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4944 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
      }
      if (!_4941) {
        _4953 = ((half)(_4942 + _4705));
        _4954 = ((half)(_4943 + _4706));
        _4955 = ((half)(_4944 + _4707));
        _4956 = (_4939 + _4708);
        _4957 = (_4940 + _4709);
        _4958 = (_4710 + 1.0f);
      } else {
        _4953 = _4705;
        _4954 = _4706;
        _4955 = _4707;
        _4956 = _4708;
        _4957 = _4709;
        _4958 = _4710;
      }
      _4960 = 1.0f / max(_4958, 1.0f);
      _4970 = max((_4958 + 1.0f), 1.0f);
      _4974 = half(float(_4953 + _4942) / _4970);
      _4975 = half(float(_4954 + _4943) / _4970);
      _4976 = half(float(_4955 + _4944) / _4970);
      if (_827 == 1) {
        _4979 = float(_4974);
        _4980 = float(_4975);
        _4981 = float(_4976);
        _4982 = -0.0f - _712;
        _4996 = (half)(half((_4979 + _712) + (_4979 * _4982)));
        _4997 = (half)(half((_4980 + _712) + (_4980 * _4982)));
        _4998 = (half)(half((_4981 + _712) + (_4981 * _4982)));
      } else {
        _4996 = _4974;
        _4997 = _4975;
        _4998 = _4976;
      }
      _5124 = min(_554, min((_4960 * _4956), ((__3__36__0__0__g_raytracedShadow.Load(int3(_58, _59, 0))).x)));  // [sem: expr_sat]
      _5125 = (_4960 * _4957);  // [sem: expr_sat]
      _5126 = _4996;
      _5127 = _4997;
      _5128 = _4998;
    }
    _5129 = (_826 != 0);
    _5131 = min(_554, select(_5129, _5124, 1.0f));
    _5135 = select((_710 != 0), select(_5129, (_5125 * 400.0f), 4e+06f), 1.0f);
    _5150 = (_5131 - (_shadowAOParams.x * _5131)) + _shadowAOParams.x;
    [branch]
    if (_5150 > 0.0f) {
      _5160 = _76 & 126;
      _5161 = (_5160 == 64);
      _5162 = (_80 == 66);
      _5163 = _5161 || _5162;
      _5164 = select(_5163, 2.0f, 4.0f);
      if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
        _5180 = _sunDirection.x;
        _5181 = _sunDirection.y;
        _5182 = _sunDirection.z;
      } else {
        _5180 = _moonDirection.x;
        _5181 = _moonDirection.y;
        _5182 = _moonDirection.z;
      }
      _5183 = _58 & 3;
      _5187 = _59 & 3;
      _5193 = (uint)((uint)((uint)(_frameNumber.x)) * (uint)(1551)) + (uint)((uint)((int)(((int)((int)((int)(_5187) << 1) | (int)(_5187)) << 1) & 10) | (int)(((int)((int)(_5183) << 1) | (int)(_5183)) & 5)));
      _5198 = (int)(((int)((uint)((uint)(_5193)) << 2)) & -858993460) | (int)(((uint)((uint)(_5193)) >> 2) & 858993459);
      _5203 = (int)(((int)((uint)((uint)(_5198)) << 1)) & 10) | (int)(((uint)((uint)(_5198)) >> 1) & 21);
      _5204 = (float)((uint)((uint)(_frameNumber.x)));
      _5215 = (frac(((_5204 * 92.0f) + _60) * 0.0078125f) * 128.0f) + -64.34062f;
      _5216 = (frac(((_5204 * 71.0f) + _61) * 0.0078125f) * 128.0f) + -72.46562f;
      _5221 = frac(dot(float3((_5215 * _5215), (_5216 * _5216), (_5216 * _5215)), float3(20.390625f, 60.703125f, 2.4281209f)));
      _5237 = frac((((float)((uint)((uint)(((int)((uint)(_5221 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f) + (((float)((uint)((uint)(_5203)))) * 0.03125f)) * 6.2831855f;
      _5241 = (((1.0f - _shadowAOParams.z) * 2.3283064e-10f) * ((float)((uint)((uint)(reversebits(_5203) ^ ((int)((uint)(_5221 * 2.8747837e+08f)))))))) + _shadowAOParams.z;
      _5244 = sqrt(1.0f - (_5241 * _5241));
      _5247 = cos(_5237) * _5244;
      _5248 = sin(_5237) * _5244;
      _5250 = select((_5182 >= 0.0f), 1.0f, -1.0f);
      _5253 = -0.0f - (1.0f / (_5250 + _5182));
      _5254 = _5181 * _5253;
      _5255 = _5254 * _5180;
      _5256 = _5250 * _5180;
      _5265 = mad(_5241, _5180, mad(_5248, _5255, ((((_5256 * _5180) * _5253) + 1.0f) * _5247)));
      _5269 = mad(_5241, _5181, mad(_5248, (_5250 + (_5254 * _5181)), ((_5247 * _5250) * _5255)));
      _5273 = mad(_5241, _5182, mad(_5248, (-0.0f - _5181), (-0.0f - (_5256 * _5247))));
      _5274 = select(_5161, 10, 8);
      if (!_170) {
        _5280 = min(0.5f, ((_115 * 0.0025f) + 0.25f));
      } else {
        _5280 = 1.0f;
      }
      _5286 = ((abs(_5181) * (select(_5163, 12.0f, 2.0f) - _5164)) + _5164) * select(_170, 0.01f, 0.1f);
      if (!_170) {
        _5294 = max((_115 * select(((uint)((int)(_80) + (int)(-11)) < (uint)9), 0.008f, 0.03f)), _5286);
      } else {
        _5294 = _5286;
      }
      // [sem: expr_sat]
      _5300 = saturate(((_115 * 0.01f) * (1.0f - saturate(dot(float3(_103, _104, _105), float3((-0.0f - (_152 * _156)), (-0.0f - (_153 * _156)), (-0.0f - (_154 * _156))))))) + 0.01f);
      _5307 = (_terrainNormalParams.z > 0.0f);
      if (_5307) {
        _5311 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 255)));
        _5337 = frac(frac(dot(float2(((_5311 * 32.665f) + _60), ((_5311 * 11.815f) + _61)), float2(0.06711056f, 0.00583715f))) * 52.982918f);
      } else {
        if (_965) {
          _5331 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_963)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_963)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_963)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_955))));
        } else {
          _5331 = _955;
        }
        _5337 = (((float)((uint)((uint)(((int)((uint)((uint)(_5331)) * (uint)(48271))) & 16777215)))) * 5.9604645e-08f);
      }
      if ((_80 == 15) && (!(_5162 || ((_80 != 15) && ((uint)((int)(_80) + (int)(-12)) < (uint)7))))) {
        _5349 = ((10.0f - (saturate(_115 * 0.001f) * 9.0f)) * _5337);
      } else {
        _5349 = _5337;
      }
      if (!_5307) {
        _5353 = saturate(_115 * 0.0625f) * 0.05f;
        _5358 = (_5353 * _103);
        _5359 = (_5353 * _104);
        _5360 = (_5353 * _105);
      } else {
        _5358 = 0.0f;
        _5359 = 0.0f;
        _5360 = 0.0f;
      }
      _5361 = _5358 + _152;
      _5362 = _5359 + _153;
      _5363 = _5360 + _154;
      _5376 = mad((_viewRelative[2].z), _5363, mad((_viewRelative[2].y), _5362, ((_viewRelative[2].x) * _5361))) + (_viewRelative[2].w);
      _5379 = mad((_viewRelative[2].z), _5273, mad((_viewRelative[2].y), _5269, ((_viewRelative[2].x) * _5265)));
      _5382 = (((_5379 * _5294) + _5376) < _nearFarProj.x);
      if (_115 < 8.0f) {
        _5386 = select(_5382, ((_nearFarProj.x - _5376) / _5379), _5294);
        _5418 = mad((_viewProjRelative[2].z), _5363, mad((_viewProjRelative[2].y), _5362, ((_viewProjRelative[2].x) * _5361))) + (_viewProjRelative[2].w);
        _5422 = mad((_viewProjRelative[3].z), _5363, mad((_viewProjRelative[3].y), _5362, ((_viewProjRelative[3].x) * _5361))) + (_viewProjRelative[3].w);
        _5426 = (_5386 * _5265) + _5361;
        _5427 = (_5386 * _5269) + _5362;
        _5428 = (_5386 * _5273) + _5363;
        _5444 = mad((_viewProjRelative[3].z), _5428, mad((_viewProjRelative[3].y), _5427, ((_viewProjRelative[3].x) * _5426))) + (_viewProjRelative[3].w);
        _5445 = (mad((_viewProjRelative[0].z), _5363, mad((_viewProjRelative[0].y), _5362, ((_viewProjRelative[0].x) * _5361))) + (_viewProjRelative[0].w)) / _5422;
        _5446 = (mad((_viewProjRelative[1].z), _5363, mad((_viewProjRelative[1].y), _5362, ((_viewProjRelative[1].x) * _5361))) + (_viewProjRelative[1].w)) / _5422;
        _5447 = _5418 / _5422;
        _5451 = ((mad((_viewProjRelative[0].z), _5428, mad((_viewProjRelative[0].y), _5427, ((_viewProjRelative[0].x) * _5426))) + (_viewProjRelative[0].w)) / _5444) - _5445;
        _5452 = ((mad((_viewProjRelative[1].z), _5428, mad((_viewProjRelative[1].y), _5427, ((_viewProjRelative[1].x) * _5426))) + (_viewProjRelative[1].w)) / _5444) - _5446;
        _5455 = 1.0f / ((float)((uint)((uint)(_5274))));
        _5466 = max(_5455, (1.0f / min(1.0f, (max(((_bufferSizeAndInvSize.x * 0.5f) * abs(_5451)), ((_bufferSizeAndInvSize.y * 0.5f) * abs(_5452))) * _5455))));
        _5467 = _5466 * (((mad((_viewProjRelative[2].z), _5428, mad((_viewProjRelative[2].y), _5427, ((_viewProjRelative[2].x) * _5426))) + (_viewProjRelative[2].w)) / _5444) - _5447);
        _5485 = (max(abs(_5467), (_5447 - ((mad((_proj[2].z), _115, 0.0f) + _5418) / (mad((_proj[3].z), _115, 0.0f) + _5422)))) * _5280) * max(0.0625f, _5455);
        _5486 = _5466 * _5455;
        _5488 = (_5451 * 0.5f) * _5486;
        _5490 = (_5452 * -0.5f) * _5486;
        _5491 = _5467 * _5455;
        _5498 = max(_5349, (1.0f / max((abs(_5488) * _bufferSizeAndInvSize.x), (abs(_5490) * _bufferSizeAndInvSize.y))));
        _5505 = 0.5f / _bufferSizeAndInvSize.x;
        _5507 = 0;
        _5508 = (((_5445 * 0.5f) + 0.5f) + (_5498 * _5488));
        _5509 = ((0.5f - (_5446 * 0.5f)) + (_5498 * _5490));
        _5510 = ((_5498 * _5491) + _5447);
        _5511 = _5349;
        _5512 = _5300;
        _5513 = 0;
        _5514 = 0.0f;
        _5515 = 0.0f;
        while(true) {
          // [sem: _3__36__0__0__g_depthStencil_load]
          _5524 = __3__36__0__0__g_depthStencil.Load(int3(((int)(min(max(_5508, _5505), (1.0f - _5505)) * _bufferSizeAndInvSize.x)), ((int)(_5509 * _bufferSizeAndInvSize.y)), 0));
          _5526 = (uint)((uint)(_5524.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _5529 = ((float)((uint)((uint)(_5524.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _5530 = _5526 & 127;
          _5531 = (_5513 == 0);
          _5532 = select(_5531, 1.0f, _5512);
          _5536 = _nearFarProj.x / max(1e-07f, _5529);
          _5539 = _5536 - (_nearFarProj.x / max(1e-07f, _5510));
          _5543 = (abs((_5510 + _5485) - _5529) < _5485);
          _5544 = (int)(uint)(_5543);
          if (_5543) {
            if ((_5530 == 7) || ((_5530 == 53) || (((_5526 & 126) == 66) || (((uint)((int)(_5530) + (int)(-5)) < (uint)2) || ((_5530 == 107) || ((_5530 == 26) || (((uint)((int)(_5530) + (int)(-27)) < (uint)2) || ((_5530 == 106) || (((_5526 & 125) == 105) || ((_5530 == 18) || ((uint)((int)(_5530) + (int)(-19)) < (uint)2))))))))))) {
              _5580 = true;
              _5587 = ((int)(uint)((int)((_5539 < 0.0f) && (_5539 > select(_5580, -0.08f, -1.0f)))));
            } else {
              if ((_5530 != 67) && ((uint)((int)(_5530) + (int)(-52)) < (uint)16)) {
                _5580 = (_5536 < 32.0f);
                _5587 = ((int)(uint)((int)((_5539 < 0.0f) && (_5539 > select(_5580, -0.08f, -1.0f)))));
              } else {
                _5587 = _5544;
              }
            }
          } else {
            _5587 = _5544;
          }
          if (!(_5587 == 0)) {
            if ((uint)_5530 > (uint)11) {
              if (!((uint)_5530 < (uint)16)) {
                if (!(_5530 == 17)) {
                  if (!(_5530 == 16)) {
                    if (!((_5530 == 18) || ((_5530 == 107) || ((uint)((int)(_5530) + (int)(-19)) < (uint)2)))) {
                      if (!(_5530 == 66)) {
                        _5610 = 0.0f;
                      } else {
                        _5610 = 0.1f;
                      }
                    } else {
                      _5610 = 0.15f;
                    }
                  } else {
                    _5610 = 0.1f;
                  }
                } else {
                  _5610 = 0.7f;
                }
              } else {
                _5610 = 0.9f;
              }
            } else {
              if (!(_5530 == 11)) {
                _5610 = 0.0f;
              } else {
                _5610 = 0.1f;
              }
            }
            _5612 = saturate(_5536 * 0.015625f);  // [sem: expr_sat]
            _5615 = (1.0f - _5612) + (_5612 * _5610);
            _5630 = _5530;
            // [sem: expr_sat]
            _5631 = saturate(((saturate(1.0f - ((_5615 * _5615) * _5610)) * (1.0f - _5515)) * saturate((-0.0f - _5539) / (_5511 * 0.0046548597f))) + _5515);
          } else {
            _5630 = _5507;
            _5631 = _5515;  // [sem: expr_sat]
          }
          if ((_5530 != 0) && (_5631 > 0.95f)) {
            if (!_5531) {
              _5663 = (saturate((_5514 - _5529) / (_5514 - _5510)) - min(_5511, _5532));
            } else {
              _5663 = 0.0f;
            }
            _5961 = _5530;
            _5962 = _5631;
            _5963 = ((_5663 * _5488) + _5508);
            _5964 = ((_5663 * _5490) + _5509);
            _5965 = ((_5663 * _5491) + _5510);
            _5966 = _5529;
          } else {
            if ((uint)_5513 < (uint)((int)(_5274) + (int)(-1))) {
              _5655 = ((_5532 * _5488) + _5508);
              _5656 = ((_5532 * _5490) + _5509);
              _5657 = ((_5532 * _5491) + _5510);
              _5658 = (_5532 + _5511);
              _5659 = _5529;
            } else {
              _5655 = _5508;
              _5656 = _5509;
              _5657 = _5510;
              _5658 = _5511;
              _5659 = _5514;
            }
            _5660 = (int)(_5513) + (int)(1);
            if ((uint)_5660 < (uint)_5274) {
              _5507 = _5630;
              _5508 = _5655;
              _5509 = _5656;
              _5510 = _5657;
              _5511 = _5658;
              _5512 = _5532;
              _5513 = _5660;
              _5514 = _5659;
              _5515 = _5631;
              continue;
            } else {
              _5961 = _5630;
              _5962 = _5631;
              _5963 = _5508;
              _5964 = _5509;
              _5965 = _5510;
              _5966 = _5529;
            }
          }
          break;
        }
      } else {
        _5673 = select(_5382, ((_nearFarProj.x - _5376) / _5379), _5294);
        _5705 = mad((_viewProjRelative[2].z), _5363, mad((_viewProjRelative[2].y), _5362, ((_viewProjRelative[2].x) * _5361))) + (_viewProjRelative[2].w);
        _5709 = mad((_viewProjRelative[3].z), _5363, mad((_viewProjRelative[3].y), _5362, ((_viewProjRelative[3].x) * _5361))) + (_viewProjRelative[3].w);
        _5713 = (_5673 * _5265) + _5361;
        _5714 = (_5673 * _5269) + _5362;
        _5715 = (_5673 * _5273) + _5363;
        _5731 = mad((_viewProjRelative[3].z), _5715, mad((_viewProjRelative[3].y), _5714, ((_viewProjRelative[3].x) * _5713))) + (_viewProjRelative[3].w);
        _5732 = (mad((_viewProjRelative[0].z), _5363, mad((_viewProjRelative[0].y), _5362, ((_viewProjRelative[0].x) * _5361))) + (_viewProjRelative[0].w)) / _5709;
        _5733 = (mad((_viewProjRelative[1].z), _5363, mad((_viewProjRelative[1].y), _5362, ((_viewProjRelative[1].x) * _5361))) + (_viewProjRelative[1].w)) / _5709;
        _5734 = _5705 / _5709;
        _5738 = ((mad((_viewProjRelative[0].z), _5715, mad((_viewProjRelative[0].y), _5714, ((_viewProjRelative[0].x) * _5713))) + (_viewProjRelative[0].w)) / _5731) - _5732;
        _5739 = ((mad((_viewProjRelative[1].z), _5715, mad((_viewProjRelative[1].y), _5714, ((_viewProjRelative[1].x) * _5713))) + (_viewProjRelative[1].w)) / _5731) - _5733;
        _5742 = 1.0f / ((float)((uint)((uint)(_5274))));
        _5753 = max(_5742, (1.0f / min(1.0f, (max(((_bufferSizeAndInvSize.x * 0.5f) * abs(_5738)), ((_bufferSizeAndInvSize.y * 0.5f) * abs(_5739))) * _5742))));
        _5754 = _5753 * (((mad((_viewProjRelative[2].z), _5715, mad((_viewProjRelative[2].y), _5714, ((_viewProjRelative[2].x) * _5713))) + (_viewProjRelative[2].w)) / _5731) - _5734);
        _5773 = ((_5280 * 0.5f) * max(abs(_5754), (_5734 - ((mad((_proj[2].z), _115, 0.0f) + _5705) / (mad((_proj[3].z), _115, 0.0f) + _5709))))) * max(0.0625f, _5742);
        _5774 = _5753 * _5742;
        _5776 = (_5738 * 0.5f) * _5774;
        _5778 = (_5739 * -0.5f) * _5774;
        _5779 = _5754 * _5742;
        _5786 = max(_5349, (1.0f / max((abs(_5776) * _bufferSizeAndInvSize.x), (abs(_5778) * _bufferSizeAndInvSize.y))));
        _5793 = 0.5f / _bufferSizeAndInvSize.x;
        _5795 = 0;
        _5796 = _5300;
        _5797 = _5349;
        _5798 = (((_5732 * 0.5f) + 0.5f) + (_5786 * _5776));
        _5799 = ((0.5f - (_5733 * 0.5f)) + (_5786 * _5778));
        _5800 = ((_5786 * _5779) + _5734);
        _5801 = 0;
        _5802 = 0.0f;
        _5803 = 0.0f;
        while(true) {
          // [sem: _3__36__0__0__g_depthStencil_load]
          _5812 = __3__36__0__0__g_depthStencil.Load(int3(((int)(min(max(_5798, _5793), (1.0f - _5793)) * _bufferSizeAndInvSize.x)), ((int)(_5799 * _bufferSizeAndInvSize.y)), 0));
          _5814 = (uint)((uint)(_5812.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _5817 = ((float)((uint)((uint)(_5812.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _5818 = _5814 & 127;
          _5819 = (_5795 == 0);
          _5820 = select(_5819, 1.0f, _5796);
          _5824 = _nearFarProj.x / max(1e-07f, _5817);
          _5827 = _5824 - (_nearFarProj.x / max(1e-07f, _5800));
          _5831 = (abs((_5800 + _5773) - _5817) < _5773);
          _5832 = (int)(uint)(_5831);
          if (_5831) {
            if ((_5818 == 7) || ((_5818 == 53) || (((_5814 & 126) == 66) || (((uint)((int)(_5818) + (int)(-5)) < (uint)2) || ((_5818 == 107) || ((_5818 == 26) || (((uint)((int)(_5818) + (int)(-27)) < (uint)2) || ((_5818 == 106) || (((_5814 & 125) == 105) || ((_5818 == 18) || ((uint)((int)(_5818) + (int)(-19)) < (uint)2))))))))))) {
              _5868 = true;
              _5875 = ((int)(uint)((int)((_5827 < 0.0f) && (_5827 > select(_5868, -0.08f, -1.0f)))));
            } else {
              if ((_5818 != 67) && ((uint)((int)(_5818) + (int)(-52)) < (uint)16)) {
                _5868 = (_5824 < 32.0f);
                _5875 = ((int)(uint)((int)((_5827 < 0.0f) && (_5827 > select(_5868, -0.08f, -1.0f)))));
              } else {
                _5875 = _5832;
              }
            }
          } else {
            _5875 = _5832;
          }
          if (!(_5875 == 0)) {
            if ((uint)_5818 > (uint)11) {
              if (!((uint)_5818 < (uint)16)) {
                if (!(_5818 == 17)) {
                  if (!(_5818 == 16)) {
                    if (!((_5818 == 18) || ((_5818 == 107) || ((uint)((int)(_5818) + (int)(-19)) < (uint)2)))) {
                      if (!(_5818 == 66)) {
                        _5898 = 0.0f;
                      } else {
                        _5898 = 0.1f;
                      }
                    } else {
                      _5898 = 0.15f;
                    }
                  } else {
                    _5898 = 0.1f;
                  }
                } else {
                  _5898 = 0.7f;
                }
              } else {
                _5898 = 0.9f;
              }
            } else {
              if (!(_5818 == 11)) {
                _5898 = 0.0f;
              } else {
                _5898 = 0.1f;
              }
            }
            _5900 = saturate(_5824 * 0.015625f);  // [sem: expr_sat]
            _5903 = (1.0f - _5900) + (_5900 * _5898);
            _5918 = _5818;
            // [sem: expr_sat]
            _5919 = saturate(((saturate(1.0f - ((_5903 * _5903) * _5898)) * (1.0f - _5803)) * saturate((-0.0f - _5827) / (_5797 * 0.0046548597f))) + _5803);
          } else {
            _5918 = _5801;
            _5919 = _5803;  // [sem: expr_sat]
          }
          if ((_5818 != 0) && (_5919 > 0.95f)) {
            if (!_5819) {
              _5951 = (saturate((_5802 - _5817) / (_5802 - _5800)) - min(_5797, _5820));
            } else {
              _5951 = 0.0f;
            }
            _5961 = _5818;
            _5962 = _5919;
            _5963 = ((_5951 * _5776) + _5798);
            _5964 = ((_5951 * _5778) + _5799);
            _5965 = ((_5951 * _5779) + _5800);
            _5966 = _5817;
          } else {
            if ((uint)_5795 < (uint)((int)(_5274) + (int)(-1))) {
              _5943 = (_5797 + _5820);
              _5944 = (_5798 + (_5820 * _5776));
              _5945 = (_5799 + (_5820 * _5778));
              _5946 = (_5800 + (_5820 * _5779));
              _5947 = _5817;
            } else {
              _5943 = _5797;
              _5944 = _5798;
              _5945 = _5799;
              _5946 = _5800;
              _5947 = _5802;
            }
            _5948 = (int)(_5795) + (int)(1);
            if ((uint)_5948 < (uint)_5274) {
              _5795 = _5948;
              _5796 = _5820;
              _5797 = _5943;
              _5798 = _5944;
              _5799 = _5945;
              _5800 = _5946;
              _5801 = _5918;
              _5802 = _5947;
              _5803 = _5919;
              continue;
            } else {
              _5961 = _5918;
              _5962 = _5919;
              _5963 = 0.0f;
              _5964 = 0.0f;
              _5965 = -1.0f;
              _5966 = 0.0f;
            }
          }
          break;
        }
      }
      _5970 = (_5962 > 0.0f);
      if (_5965 > 0.0f) {
        if (_5970 || (((_5963 >= 0.0f) && (_5963 <= 1.0f)) && ((_5964 >= 0.0f) && (_5964 <= 1.0f)))) {
          _5984 = (_5963 * 2.0f) + -1.0f;
          _5985 = 1.0f - (_5964 * 2.0f);
          _6001 = mad((_invViewProjRelative[3].z), _5965, mad((_invViewProjRelative[3].y), _5985, (_5984 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
          if (!(_5961 == 2)) {
            if (_5961 == 3) {
              _6027 = 0.0f;
              _6029 = _6027;
            } else {
              if (_5961 == 21) {
                if (!(_80 == 21)) {
                  _6027 = 0.0f;
                  _6029 = _6027;
                } else {
                  _6029 = 20.0f;
                }
              } else {
                _6020 = (_5961 == 22);
                if (!((_80 == 22) && _6020)) {
                  _6027 = select(_6020, 0.0f, 1.0f);
                  _6029 = _6027;
                } else {
                  _6029 = 20.0f;
                }
              }
            }
          } else {
            if (!(_80 == 2)) {
              _6027 = 0.0f;
              _6029 = _6027;
            } else {
              _6029 = 20.0f;
            }
          }
          if (_558 && (_5962 == 1.0f)) {
            // [sem: expr_sat]
            _6053 = saturate(((((_5294 * 0.9375f) - max(0.0f, dot(float3(_5265, _5269, _5273), float3((((mad((_invViewProjRelative[0].z), _5965, mad((_invViewProjRelative[0].y), _5985, (_5984 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _6001) - _5361), (((mad((_invViewProjRelative[1].z), _5965, mad((_invViewProjRelative[1].y), _5985, (_5984 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _6001) - _5362), (((mad((_invViewProjRelative[2].z), _5965, mad((_invViewProjRelative[2].y), _5985, (_5984 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _6001) - _5363))))) * ((_115 * 0.015625f) + 1.5f)) / _5294) * 0.9375f);
          } else {
            _6053 = _5962;  // [sem: expr_sat]
          }
          _6054 = _6053 * saturate(exp2(min(0.0f, (((_115 * 0.019f) + 0.1f) + (_6029 * ((_nearFarProj.x / max(1e-07f, _5966)) - (_nearFarProj.x / max(1e-07f, _5965)))))) * 1.442695f));
          _6055 = _5961 & -2;
          if (!(_6055 == 6)) {
            if ((((_80 == 33) && (_5961 == 33)) || (!(_80 == 33) && ((_80 == 54) && (_5961 == 54))))) {
              _6129 = (_6054 * 0.01f);
            } else {
              if (!((_5961 == 53) || (_6055 == 66)) || (((_5961 == 53) || (_6055 == 66)) && (!((_5160 == 66) || (_80 == 53))))) {
                if (!_170) {
                  if ((uint)((int)((uint)((uint)(_5961)) + (uint)(-52))) < (uint)16) {
                    _6126 = saturate(_115 * 0.03125f);  // [sem: expr_sat]
                  } else {
                    _6126 = 1.0f;  // [sem: expr_sat]
                  }
                  _6129 = (_6126 * _6054);
                } else {
                  _6129 = _6054;
                }
              } else {
                // [sem: _3__36__0__0__g_baseColor_load]
                _6081 = __3__36__0__0__g_baseColor.Load(int3(((int)(_5963 * _bufferSizeAndInvSize.x)), ((int)(_5964 * _bufferSizeAndInvSize.y)), 0));
                _6087 = ((float)((uint)((uint)(((uint)((uint)(_6081.x)) >> 8) & 255)))) * 0.003921569f;
                _6090 = ((float)((uint)((uint)(_6081.x & 255)))) * 0.003921569f;
                _6094 = ((float)((uint)((uint)(((uint)((uint)(_6081.y)) >> 8) & 255)))) * 0.003921569f;
                _6095 = _6087 * _6087;
                _6096 = _6090 * _6090;
                _6097 = _6094 * _6094;
                _6129 = (saturate(1.0f - (dot(float3((((_6095 * 0.61312f) + (_6096 * 0.33951f)) + (_6097 * 0.04737f)), (((_6095 * 0.0702f) + (_6096 * 0.91636f)) + (_6097 * 0.01345f)), (((_6095 * 0.02062f) + (_6096 * 0.10958f)) + (_6097 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _6054);
              }
            }
          } else {
            _6129 = (_6054 * 0.01f);
          }
        } else {
          _6129 = 0.0f;
        }
      } else {
        if (_5970) {
          _5984 = (_5963 * 2.0f) + -1.0f;
          _5985 = 1.0f - (_5964 * 2.0f);
          _6001 = mad((_invViewProjRelative[3].z), _5965, mad((_invViewProjRelative[3].y), _5985, (_5984 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
          if (!(_5961 == 2)) {
            if (_5961 == 3) {
              _6027 = 0.0f;
              _6029 = _6027;
            } else {
              if (_5961 == 21) {
                if (!(_80 == 21)) {
                  _6027 = 0.0f;
                  _6029 = _6027;
                } else {
                  _6029 = 20.0f;
                }
              } else {
                _6020 = (_5961 == 22);
                if (!((_80 == 22) && _6020)) {
                  _6027 = select(_6020, 0.0f, 1.0f);
                  _6029 = _6027;
                } else {
                  _6029 = 20.0f;
                }
              }
            }
          } else {
            if (!(_80 == 2)) {
              _6027 = 0.0f;
              _6029 = _6027;
            } else {
              _6029 = 20.0f;
            }
          }
          if (_558 && (_5962 == 1.0f)) {
            // [sem: expr_sat]
            _6053 = saturate(((((_5294 * 0.9375f) - max(0.0f, dot(float3(_5265, _5269, _5273), float3((((mad((_invViewProjRelative[0].z), _5965, mad((_invViewProjRelative[0].y), _5985, (_5984 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _6001) - _5361), (((mad((_invViewProjRelative[1].z), _5965, mad((_invViewProjRelative[1].y), _5985, (_5984 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _6001) - _5362), (((mad((_invViewProjRelative[2].z), _5965, mad((_invViewProjRelative[2].y), _5985, (_5984 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _6001) - _5363))))) * ((_115 * 0.015625f) + 1.5f)) / _5294) * 0.9375f);
          } else {
            _6053 = _5962;  // [sem: expr_sat]
          }
          _6054 = _6053 * saturate(exp2(min(0.0f, (((_115 * 0.019f) + 0.1f) + (_6029 * ((_nearFarProj.x / max(1e-07f, _5966)) - (_nearFarProj.x / max(1e-07f, _5965)))))) * 1.442695f));
          _6055 = _5961 & -2;
          if (!(_6055 == 6)) {
            if ((((_80 == 33) && (_5961 == 33)) || (!(_80 == 33) && ((_80 == 54) && (_5961 == 54))))) {
              _6129 = (_6054 * 0.01f);
            } else {
              if (!((_5961 == 53) || (_6055 == 66)) || (((_5961 == 53) || (_6055 == 66)) && (!((_5160 == 66) || (_80 == 53))))) {
                if (!_170) {
                  if ((uint)((int)((uint)((uint)(_5961)) + (uint)(-52))) < (uint)16) {
                    _6126 = saturate(_115 * 0.03125f);  // [sem: expr_sat]
                  } else {
                    _6126 = 1.0f;  // [sem: expr_sat]
                  }
                  _6129 = (_6126 * _6054);
                } else {
                  _6129 = _6054;
                }
              } else {
                // [sem: _3__36__0__0__g_baseColor_load]
                _6081 = __3__36__0__0__g_baseColor.Load(int3(((int)(_5963 * _bufferSizeAndInvSize.x)), ((int)(_5964 * _bufferSizeAndInvSize.y)), 0));
                _6087 = ((float)((uint)((uint)(((uint)((uint)(_6081.x)) >> 8) & 255)))) * 0.003921569f;
                _6090 = ((float)((uint)((uint)(_6081.x & 255)))) * 0.003921569f;
                _6094 = ((float)((uint)((uint)(((uint)((uint)(_6081.y)) >> 8) & 255)))) * 0.003921569f;
                _6095 = _6087 * _6087;
                _6096 = _6090 * _6090;
                _6097 = _6094 * _6094;
                _6129 = (saturate(1.0f - (dot(float3((((_6095 * 0.61312f) + (_6096 * 0.33951f)) + (_6097 * 0.04737f)), (((_6095 * 0.0702f) + (_6096 * 0.91636f)) + (_6097 * 0.01345f)), (((_6095 * 0.02062f) + (_6096 * 0.10958f)) + (_6097 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _6054);
              }
            }
          } else {
            _6129 = (_6054 * 0.01f);
          }
        } else {
          _6129 = 0.0f;
        }
      }
      _6133 = saturate(1.0f - _6129);  // [sem: expr_sat]
    } else {
      _6133 = 1.0f;  // [sem: expr_sat]
    }
    _6134 = min(_5150, _6133);
    _6148 = float(half(_6134 * float(_5126)));
    _6149 = float(half(_6134 * float(_5127)));
    _6150 = float(half(_6134 * float(_5128)));
    _6151 = saturate((1.0f - _554) + (exp2(log2(saturate(select(_170, (_5135 + 0.98f), _5135))) * 0.45454544f) * _554));  // [sem: expr_sat]
  }
  __3__38__0__1__g_shadowColorResultUAV[int2(_58, _59)] = float4((half)(half(_6148)), (half)(half(_6149)), (half)(half(_6150)), (half)(half(_6151)));
}
