// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the shared RenoDX option macros required by Contact Micro Shadows; this declaration changes no native output by itself.
#include "../shared.h"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

Texture2D<float4> __3__36__0__0__g_terrainShadowDepth : register(t41, space36);

Texture2DArray<float4> __3__36__0__0__g_dynamicShadowDepthArray : register(t237, space36);

Texture2DArray<uint2> __3__36__0__0__g_dynamicShadowStencilArray : register(t238, space36);

Texture2DArray<half4> __3__36__0__0__g_dynamicShadowColorArray : register(t239, space36);

Texture2DArray<float4> __3__36__0__0__g_shadowDepthArray : register(t240, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t21, space36);

Texture2D<uint> __3__36__0__0__g_depthStencil : register(t52, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t24, space36);

Texture2D<float2> __3__36__0__0__g_raytracedShadow : register(t128, space36);

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

static const int _global_0[16] = { 1, -3, -1, 3, 5, 1, -3, -5, -5, 5, -7, -1, 3, 7, 7, -7 };

// RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
// Description: Pulls in the shared depth-bias micro detail shadow helper used by the contact
//              shadow region later in this shader. The include sits here rather than at the top
//              of the file because the helper references the shader-local resource and cbuffer
//              declarations above it. The helper returns its input unchanged when Contact Micro
//              Shadows is Off, so pulling it in adds no behavior on the vanilla path.
#include "micro_detail_shadows.hlsli"
// RenoDX: <<< [Patch: ContactMicroShadowsFamily]
[numthreads(8, 8, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
    // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
    // Description: Zero-initialized carrier variables for the contact-shadow ray direction and ray
    //              origin used by the micro detail shadow helper later in this shader. The native
    //              temporaries they copy are only assigned inside the shadow-evaluation gate that
    //              follows; reading those raw temporaries at the helper call site outside the gate
    //              compiles to undefined values on the gate's skip edge (phi-undef in DXIL). The
    //              helper call is gated on the same condition, so the zero fallbacks are never
    //              actually marched; they exist so every control path carries defined values. These
    //              are storage only and do not affect any native computation.
    float _rndxMicroDirX = 0.0f;
    float _rndxMicroDirY = 0.0f;
    float _rndxMicroDirZ = 0.0f;
    float _rndxMicroWorldPosX = 0.0f;
    float _rndxMicroWorldPosY = 0.0f;
    float _rndxMicroWorldPosZ = 0.0f;
    // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
  int4 _32;
  int _42;
  int _46;
  uint _58;
  uint _59;
  float _60;
  float _61;
  float _67;
  float _68;
  float _70;
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
  half _2020;
  half _2021;
  half _2022;
  float _2042;
  float _2043;
  int _2044;
  float _2145;
  int _2168;
  float _2271;
  float _2272;
  half _2273;
  half _2274;
  half _2275;
  float _2327;
  float _2328;
  float _2329;
  float _2429;
  float _2443;
  int _2615;
  float _2621;
  float _2633;
  float _2642;
  float _2643;
  float _2644;
  float _2792;
  float _2793;
  float _2794;
  float _2795;
  float _2796;
  int _2797;
  int _2798;
  float _2799;
  float _2800;
  bool _2865;
  int _2872;
  float _2895;
  int _2915;
  float _2916;
  float _2940;
  float _2941;
  float _2942;
  float _2943;
  float _2944;
  float _2948;
  float _2957;
  float _2958;
  float _2959;
  float _2960;
  int _2961;
  float _3040;
  float _3042;
  float _3066;
  float _3142;
  float _3145;
  float _3149;
  float _3164;
  float _3165;
  float _3166;
  float _3167;
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
  float _1984;
  float _1994;
  half _1998;
  half _1999;
  half _2000;
  float _2003;
  float _2004;
  float _2005;
  float _2006;
  float2 _2025;
  float _2030;
  float _2032;
  float _2033;
  float _2053;
  float _2054;
  float _2055;
  float _2056;
  float _2069;
  float _2070;
  float _2073;
  float _2110;
  float _2114;
  float _2115;
  float _2116;
  float _2122;
  float _2124;
  float _2125;
  float _2147;
  float _2148;
  int _2149;
  float _2155;
  float _2156;
  float _2157;
  float _2169;
  float _2170;
  float _2177;
  float _2179;
  float _2183;
  float _2184;
  float _2185;
  float _2192;
  float _2208;
  float _2209;
  float _2230;
  float _2231;
  float _2252;
  float _2253;
  float _2264;
  float _2265;
  bool _2276;
  float _2278;
  float _2282;
  float _2297;
  int _2307;
  bool _2308;
  bool _2309;
  bool _2310;
  float _2311;
  int _2330;
  int _2334;
  uint _2340;
  int _2345;
  int _2350;
  float _2353;
  float _2364;
  float _2365;
  float _2370;
  float _2386;
  float _2390;
  float _2393;
  float _2396;
  float _2397;
  float _2399;
  float _2402;
  float _2403;
  float _2404;
  float _2405;
  float _2414;
  float _2418;
  float _2422;
  int _2423;
  float _2435;
  bool _2456;
  float _2460;
  uint _2482;
  uint _2490;
  uint _2498;
  uint _2506;
  uint _2514;
  uint _2522;
  uint _2530;
  uint _2538;
  uint _2546;
  uint _2554;
  uint _2562;
  uint _2570;
  uint _2578;
  uint _2586;
  uint _2594;
  uint _2602;
  float _2637;
  float _2645;
  float _2646;
  float _2647;
  float _2659;
  float _2662;
  float _2670;
  float _2702;
  float _2706;
  float _2710;
  float _2711;
  float _2712;
  float _2728;
  float _2729;
  float _2730;
  float _2731;
  float _2735;
  float _2736;
  float _2739;
  float _2750;
  float _2751;
  float _2770;
  float _2771;
  float _2773;
  float _2775;
  float _2776;
  float _2783;
  float _2790;
  uint _2809;
  int _2811;
  float _2814;
  int _2815;
  bool _2816;
  float _2817;
  float _2821;
  float _2824;
  bool _2828;
  int _2829;
  float _2897;
  float _2900;
  int _2945;
  bool _2965;
  float _2979;
  float _2980;
  float _3016;
  bool _3033;
  float _3067;
  int _3068;
  uint4 _3097;
  float _3103;
  float _3106;
  float _3110;
  float _3111;
  float _3112;
  float _3113;
  float _3150;
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
  _67 = (_60 + 0.5f) * _bufferSizeAndInvSize.z;
  _68 = (_61 + 0.5f) * _bufferSizeAndInvSize.w;
  _70 = (_67 * 2.0f) + -1.0f;
  _72 = 1.0f - (_68 * 2.0f);
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
    _3164 = _110;
    _3165 = _110;
    _3166 = _110;
    _3167 = _110;  // [sem: expr_sat]
  } else {
    _114 = max(1e-07f, _79);
    _115 = _nearFarProj.x / _114;
    _151 = mad((_invViewProjRelative[3].z), _114, mad((_invViewProjRelative[3].y), _72, ((_invViewProjRelative[3].x) * _70))) + (_invViewProjRelative[3].w);
    _152 = (mad((_invViewProjRelative[0].z), _114, mad((_invViewProjRelative[0].y), _72, ((_invViewProjRelative[0].x) * _70))) + (_invViewProjRelative[0].w)) / _151;
    _153 = (mad((_invViewProjRelative[1].z), _114, mad((_invViewProjRelative[1].y), _72, ((_invViewProjRelative[1].x) * _70))) + (_invViewProjRelative[1].w)) / _151;
    _154 = (mad((_invViewProjRelative[2].z), _114, mad((_invViewProjRelative[2].y), _72, ((_invViewProjRelative[2].x) * _70))) + (_invViewProjRelative[2].w)) / _151;
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
      _2155 = _26[min((uint)(_827), 1u)];
      _2156 = _27[min((uint)(_827), 1u)];
      _2157 = _28[min((uint)(_827), 1u)];
      if (_965) {
        _2168 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_963)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_963)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_963)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_955))));
      } else {
        _2168 = _955;
      }
      _2169 = __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 2.0f;
      _2170 = __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f;
      _2177 = __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 2.3841858e-07f;
      _2179 = __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.3841858e-07f;
      _2183 = ((((float)((uint)((uint)(((int)((uint)((uint)(_2168)) * (uint)(48271))) & 16777215)))) * _2177) - _2169) + _2155;
      _2184 = ((((float)((uint)((uint)(((int)((uint)((uint)(_2168)) * (uint)(-1964877855))) & 16777215)))) * _2179) - _2170) + _2156;
      _2185 = (float)((uint)((uint)(_827)));
      _2192 = _2157 - _825;
      _2208 = ((((float)((uint)((uint)(((int)((uint)((uint)(_2168)) * (uint)(-856141137))) & 16777215)))) * _2177) - _2169) + _2155;
      _2209 = ((((float)((uint)((uint)(((int)((uint)((uint)(_2168)) * (uint)(-613502015))) & 16777215)))) * _2179) - _2170) + _2156;
      _2230 = ((((float)((uint)((uint)(((int)((uint)((uint)(_2168)) * (uint)(-556260145))) & 16777215)))) * _2177) - _2169) + _2155;
      _2231 = ((((float)((uint)((uint)(((int)((uint)((uint)(_2168)) * (uint)(902075297))) & 16777215)))) * _2179) - _2170) + _2156;
      _2252 = ((((float)((uint)((uint)(((int)((uint)((uint)(_2168)) * (uint)(1698214639))) & 16777215)))) * _2177) - _2169) + _2155;
      _2253 = ((((float)((uint)((uint)(((int)((uint)((uint)(_2168)) * (uint)(773027713))) & 16777215)))) * _2179) - _2170) + _2156;
      _2264 = (((saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_2208, _2209, _2185), _2192)).x)) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_2183, _2184, _2185), _2192)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_2230, _2231, _2185), _2192)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_2252, _2253, _2185), _2192)).x))) * 0.25f;
      _2265 = (((max(0.0f, (_2157 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2208, _2209, _2185), 0.0f))).x))) + max(0.0f, (_2157 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2183, _2184, _2185), 0.0f))).x)))) + max(0.0f, (_2157 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2230, _2231, _2185), 0.0f))).x)))) + max(0.0f, (_2157 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2252, _2253, _2185), 0.0f))).x)))) * 0.25f;
      _2271 = saturate(_2264 * _2264);  // [sem: expr_sat]
      _2272 = saturate(_2265 * _2265);  // [sem: expr_sat]
      _2273 = 1.0h;
      _2274 = 1.0h;
      _2275 = 1.0h;
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
      _1984 = 1.0f / max(_1982, 1.0f);
      _1994 = max((_1982 + 1.0f), 1.0f);
      _1998 = half(float(_1977 + _1966) / _1994);
      _1999 = half(float(_1978 + _1967) / _1994);
      _2000 = half(float(_1979 + _1968) / _1994);
      if (_827 == 1) {
        _2003 = float(_1998);
        _2004 = float(_1999);
        _2005 = float(_2000);
        _2006 = -0.0f - _712;
        _2020 = (half)(half((_2003 + _712) + (_2003 * _2006)));
        _2021 = (half)(half((_2004 + _712) + (_2004 * _2006)));
        _2022 = (half)(half((_2005 + _712) + (_2005 * _2006)));
      } else {
        _2020 = _1998;
        _2021 = _1999;
        _2022 = _2000;
      }
      _2025 = __3__36__0__0__g_raytracedShadow.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_67, _68), 0.0f);  // [sem: _3__36__0__0__g_raytracedShadow_sampleLod]
      _2030 = _115 * 0.05f;
      _2032 = 1.0f / _bufferSizeAndInvSize.x;
      _2033 = 1.0f / _bufferSizeAndInvSize.y;
      _2042 = _2025.x;
      _2043 = 1.0f;
      _2044 = 0;
      while(true) {
        _2053 = (float)((int)(_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_2044)) * (uint)(2))))), 15u)]));
        _2054 = (float)((int)(_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_2044)) * (uint)(2))))), 15u)]));
        _2055 = _2053 + _60;
        _2056 = _2054 + _61;
        _2069 = ((_2032 * 2.0f) * _2055) + -1.0f;
        _2070 = 1.0f - ((_2033 * 2.0f) * _2056);
        _2073 = max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthStencil.Load(int3(((int)(_2055)), ((int)(_2056)), 0)))).x) & 16777215)))) * 5.960465e-08f));
        _2110 = mad((_invViewProjRelative[3].z), _2073, mad((_invViewProjRelative[3].y), _2070, ((_invViewProjRelative[3].x) * _2069))) + (_invViewProjRelative[3].w);
        _2114 = ((mad((_invViewProjRelative[0].z), _2073, mad((_invViewProjRelative[0].y), _2070, ((_invViewProjRelative[0].x) * _2069))) + (_invViewProjRelative[0].w)) / _2110) - _152;
        _2115 = ((mad((_invViewProjRelative[1].z), _2073, mad((_invViewProjRelative[1].y), _2070, ((_invViewProjRelative[1].x) * _2069))) + (_invViewProjRelative[1].w)) / _2110) - _153;
        _2116 = ((mad((_invViewProjRelative[2].z), _2073, mad((_invViewProjRelative[2].y), _2070, ((_invViewProjRelative[2].x) * _2069))) + (_invViewProjRelative[2].w)) / _2110) - _154;
        _2122 = sqrt(((_2115 * _2115) + (_2114 * _2114)) + (_2116 * _2116));
        _2124 = abs((_nearFarProj.x / _2073) - _115);
        _2125 = _2124 * _2124;
        if (!(_2125 > (_2030 * _2030))) {
          _2145 = (exp2((-1.442695f / ((_115 * 0.02f) + 0.25f)) * ((_2125 * 20.0f) + ((_2122 * _2122) * 0.02f))) * max(0.02f, _2025.y));
        } else {
          _2145 = 0.0f;
        }
        _2147 = (_2145 * (((float2)(__3__36__0__0__g_raytracedShadow.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(((_2053 * _2032) + _67), ((_2054 * _2033) + _68)), 0.0f))).x)) + _2042;
        _2148 = _2145 + _2043;
        _2149 = (int)(_2044) + (int)(1);
        if (!(_2149 == 8)) {
          _2042 = _2147;
          _2043 = _2148;
          _2044 = _2149;
          continue;
        }
        while(true) {
          _2271 = min(_554, min((_1984 * _1980), ((1.0f / max(1e-06f, _2148)) * _2147)));  // [sem: expr_sat]
          _2272 = (_1984 * _1981);  // [sem: expr_sat]
          _2273 = _2020;
          _2274 = _2021;
          _2275 = _2022;
          break;
        }
        break;
      }
    }
    _2276 = (_826 != 0);
    _2278 = min(_554, select(_2276, _2271, 1.0f));
    _2282 = select((_710 != 0), select(_2276, (_2272 * 400.0f), 4e+06f), 1.0f);
    _2297 = (_2278 - (_shadowAOParams.x * _2278)) + _shadowAOParams.x;
    [branch]
    if (_2297 > 0.0f) {
      _2307 = _76 & 126;
      _2308 = (_2307 == 64);
      _2309 = (_80 == 66);
      _2310 = _2308 || _2309;
      _2311 = select(_2310, 2.0f, 4.0f);
      if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
        _2327 = _sunDirection.x;
        _2328 = _sunDirection.y;
        _2329 = _sunDirection.z;
      } else {
        _2327 = _moonDirection.x;
        _2328 = _moonDirection.y;
        _2329 = _moonDirection.z;
      }
      _2330 = _58 & 3;
      _2334 = _59 & 3;
      _2340 = (uint)((uint)((uint)(_frameNumber.x)) * (uint)(1551)) + (uint)((uint)((int)(((int)((int)((int)(_2334) << 1) | (int)(_2334)) << 1) & 10) | (int)(((int)((int)(_2330) << 1) | (int)(_2330)) & 5)));
      _2345 = (int)(((int)((uint)((uint)(_2340)) << 2)) & -858993460) | (int)(((uint)((uint)(_2340)) >> 2) & 858993459);
      _2350 = (int)(((int)((uint)((uint)(_2345)) << 1)) & 10) | (int)(((uint)((uint)(_2345)) >> 1) & 21);
      _2353 = (float)((uint)((uint)(_frameNumber.x)));
      _2364 = (frac(((_2353 * 92.0f) + _60) * 0.0078125f) * 128.0f) + -64.34062f;
      _2365 = (frac(((_2353 * 71.0f) + _61) * 0.0078125f) * 128.0f) + -72.46562f;
      _2370 = frac(dot(float3((_2364 * _2364), (_2365 * _2365), (_2365 * _2364)), float3(20.390625f, 60.703125f, 2.4281209f)));
      _2386 = frac((((float)((uint)((uint)(((int)((uint)(_2370 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f) + (((float)((uint)((uint)(_2350)))) * 0.03125f)) * 6.2831855f;
      _2390 = (((1.0f - _shadowAOParams.z) * 2.3283064e-10f) * ((float)((uint)((uint)(reversebits(_2350) ^ ((int)((uint)(_2370 * 2.8747837e+08f)))))))) + _shadowAOParams.z;
      _2393 = sqrt(1.0f - (_2390 * _2390));
      _2396 = cos(_2386) * _2393;
      _2397 = sin(_2386) * _2393;
      _2399 = select((_2329 >= 0.0f), 1.0f, -1.0f);
      _2402 = -0.0f - (1.0f / (_2399 + _2329));
      _2403 = _2328 * _2402;
      _2404 = _2403 * _2327;
      _2405 = _2399 * _2327;
      _2414 = mad(_2390, _2327, mad(_2397, _2404, ((((_2405 * _2327) * _2402) + 1.0f) * _2396)));
      _2418 = mad(_2390, _2328, mad(_2397, (_2399 + (_2403 * _2328)), ((_2396 * _2399) * _2404)));
      _2422 = mad(_2390, _2329, mad(_2397, (-0.0f - _2328), (-0.0f - (_2405 * _2396))));
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: The vanilla contact-shadow ray direction is the sun/moon direction rotated onto a
      //              randomly sampled cone that changes every frame, which the shadow denoiser is expected
      //              to resolve. Contact Micro Shadows adds extra sub-pixel occlusion on top of this march,
      //              and the per-frame cone wobble makes that added detail crawl and shimmer between frames.
      //              While any Contact Micro Shadows quality level is active this substitutes the unrotated
      //              light direction so the added detail is temporally stable; with the feature Off the
      //              vanilla jittered direction is left untouched.
      if (CONTACT_SHADOW_STABLE_DIRECTION == 1.f) {
        _2414 = _2327;
        _2418 = _2328;
        _2422 = _2329;
      }
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      _2423 = select(_2308, 10, 6);
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: The vanilla screen-space contact-shadow ray takes only 6 or 10 march steps depending
      //              on the material class, which undersamples thin and small occluders and leaves gaps in
      //              the contact darkening. While a Contact Micro Shadows quality level is active this
      //              raises the step count toward the quality-dependent ray-traced-lane target; at the Off
      //              value the tuning weight is 0 and the vanilla step count is used unchanged.
      if (CONTACT_SHADOW_RT_TUNING > 0.f) {
        _2423 = (int)(lerp(float(_2423), CONTACT_SHADOW_RT_MARCH_SAMPLES, CONTACT_SHADOW_RT_TUNING) + 0.5f);
      }
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      if (!_170) {
        _2429 = min(0.5f, ((_115 * 0.0025f) + 0.25f));
      } else {
        _2429 = 1.0f;
      }
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: Sets how far along the light direction the contact shadow is allowed to march.
      //              Vanilla caps this path at a 0.01 world-space reach, which is too short to pick up
      //              contact occlusion from anything larger than immediate sub-pixel detail. The lerp
      //              extends the reach toward the quality-dependent ray-traced-lane target; at the Off
      //              value the tuning weight is 0 and the lerp returns the vanilla 0.01 exactly.
      _2435 = ((abs(_2328) * (select(_2310, 12.0f, 2.0f) - _2311)) + _2311) * select(_170, lerp(0.01f, CONTACT_SHADOW_RT_REACH_TARGET, CONTACT_SHADOW_RT_TUNING), 0.1f);
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      if (!_170) {
        _2443 = max((_115 * select(((uint)((int)(_80) + (int)(-11)) < (uint)9), 0.008f, 0.03f)), _2435);
      } else {
        _2443 = _2435;
      }
      _2456 = (_terrainNormalParams.z > 0.0f);
      if (_2456) {
        _2460 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 255)));
        _2621 = frac(frac(dot(float2(((_2460 * 32.665f) + _60), ((_2460 * 11.815f) + _61)), float2(0.06711056f, 0.00583715f))) * 52.982918f);
      } else {
        _2482 = (uint)((uint)((_bufferSizeAndInvSize.x * _61) + _60)) + (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524))));
        _2490 = (uint)((uint)((((int)((uint)((uint)((uint)(_2482)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2482)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_2482)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _2498 = (uint)((uint)((((int)((uint)((uint)((uint)(_2490)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2490)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_2490)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2482));
        _2506 = (uint)((uint)((((int)((uint)((uint)((uint)(_2498)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2498)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_2498)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2490));
        _2514 = (uint)((uint)((((int)((uint)((uint)((uint)(_2506)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2506)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_2506)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2498));
        _2522 = (uint)((uint)((((int)((uint)((uint)((uint)(_2514)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2514)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_2514)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2506));
        _2530 = (uint)((uint)((((int)((uint)((uint)((uint)(_2522)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2522)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_2522)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2514));
        _2538 = (uint)((uint)((((int)((uint)((uint)((uint)(_2530)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2530)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_2530)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2522));
        _2546 = (uint)((uint)((((int)((uint)((uint)((uint)(_2538)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2538)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_2538)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2530));
        _2554 = (uint)((uint)((((int)((uint)((uint)((uint)(_2546)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2546)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_2546)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2538));
        _2562 = (uint)((uint)((((int)((uint)((uint)((uint)(_2554)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2554)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_2554)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2546));
        _2570 = (uint)((uint)((((int)((uint)((uint)((uint)(_2562)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2562)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_2562)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2554));
        _2578 = (uint)((uint)((((int)((uint)((uint)((uint)(_2570)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2570)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_2570)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2562));
        _2586 = (uint)((uint)((((int)((uint)((uint)((uint)(_2578)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2578)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_2578)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2570));
        _2594 = (uint)((uint)((((int)((uint)((uint)((uint)(_2586)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2586)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_2586)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2578));
        _2602 = (uint)((uint)((((int)((uint)((uint)((uint)(_2594)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2594)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_2594)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2586));
        if ((_2594 & 16777215) == 0) {
          _2615 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_2602)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2602)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_2602)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2594))));
        } else {
          _2615 = _2594;
        }
        _2621 = (((float)((uint)((uint)(((int)((uint)((uint)(_2615)) * (uint)(48271))) & 16777215)))) * 5.9604645e-08f);
      }
      if ((_80 == 15) && (!(_2309 || ((_80 != 15) && ((uint)((int)(_80) + (int)(-12)) < (uint)7))))) {
        // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
        // Description: The contact ray's first sample is offset by a per-pixel random value scaled by this
        //              factor, so neighbouring pixels start at different distances and the march dithers
        //              instead of banding. On this depth-faded material branch vanilla scales the random by
        //              up to 10 units, which pushes the first sample past small nearby occluders and loses
        //              their contact darkening entirely. The lerp pulls the start scale toward the
        //              quality-dependent ray-traced-lane target; at the Off value the tuning weight is 0 and
        //              the vanilla scale is returned exactly.
        _2633 = ((lerp((10.0f - (saturate(_115 * 0.001f) * 9.0f)), CONTACT_SHADOW_RT_START_TARGET, CONTACT_SHADOW_RT_TUNING)) * _2621);
        // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      } else {
        _2633 = _2621;
      }
      if (!_2456) {
        _2637 = saturate(_115 * 0.0625f) * 0.05f;
        _2642 = (_2637 * _103);
        _2643 = (_2637 * _104);
        _2644 = (_2637 * _105);
      } else {
        _2642 = 0.0f;
        _2643 = 0.0f;
        _2644 = 0.0f;
      }
      _2645 = _2642 + _152;
      _2646 = _2643 + _153;
      _2647 = _2644 + _154;
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: Seeds the contact-shadow ray carriers with the dominant light direction and the
      //              world-space march origin the native contact path just computed. Runs on the main
      //              path of the native shadow-evaluation gate, so the carriers hold the native values
      //              on every path that can reach the micro detail helper call (which is gated on the
      //              same condition). This block only copies values and changes no native result.
      _rndxMicroDirX = _2327;
      _rndxMicroDirY = _2328;
      _rndxMicroDirZ = _2329;
      _rndxMicroWorldPosX = _2645;
      _rndxMicroWorldPosY = _2646;
      _rndxMicroWorldPosZ = _2647;
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      _2659 = mad((_viewRelative[2].z), _2647, mad((_viewRelative[2].y), _2646, ((_viewRelative[2].x) * _2645))) + (_viewRelative[2].w);
      _2662 = mad((_viewRelative[2].z), _2422, mad((_viewRelative[2].y), _2418, ((_viewRelative[2].x) * _2414)));
      _2670 = select((((_2662 * _2443) + _2659) < _nearFarProj.x), ((_nearFarProj.x - _2659) / _2662), _2443);
      _2702 = mad((_viewProjRelative[2].z), _2647, mad((_viewProjRelative[2].y), _2646, ((_viewProjRelative[2].x) * _2645))) + (_viewProjRelative[2].w);
      _2706 = mad((_viewProjRelative[3].z), _2647, mad((_viewProjRelative[3].y), _2646, ((_viewProjRelative[3].x) * _2645))) + (_viewProjRelative[3].w);
      _2710 = (_2670 * _2414) + _2645;
      _2711 = (_2670 * _2418) + _2646;
      _2712 = (_2670 * _2422) + _2647;
      _2728 = mad((_viewProjRelative[3].z), _2712, mad((_viewProjRelative[3].y), _2711, ((_viewProjRelative[3].x) * _2710))) + (_viewProjRelative[3].w);
      _2729 = (mad((_viewProjRelative[0].z), _2647, mad((_viewProjRelative[0].y), _2646, ((_viewProjRelative[0].x) * _2645))) + (_viewProjRelative[0].w)) / _2706;
      _2730 = (mad((_viewProjRelative[1].z), _2647, mad((_viewProjRelative[1].y), _2646, ((_viewProjRelative[1].x) * _2645))) + (_viewProjRelative[1].w)) / _2706;
      _2731 = _2702 / _2706;
      _2735 = ((mad((_viewProjRelative[0].z), _2712, mad((_viewProjRelative[0].y), _2711, ((_viewProjRelative[0].x) * _2710))) + (_viewProjRelative[0].w)) / _2728) - _2729;
      _2736 = ((mad((_viewProjRelative[1].z), _2712, mad((_viewProjRelative[1].y), _2711, ((_viewProjRelative[1].x) * _2710))) + (_viewProjRelative[1].w)) / _2728) - _2730;
      _2739 = 1.0f / ((float)((uint)((uint)(_2423))));
      _2750 = max(_2739, (1.0f / min(1.0f, (max(((_bufferSizeAndInvSize.x * 0.5f) * abs(_2735)), ((_bufferSizeAndInvSize.y * 0.5f) * abs(_2736))) * _2739))));
      _2751 = _2750 * (((mad((_viewProjRelative[2].z), _2712, mad((_viewProjRelative[2].y), _2711, ((_viewProjRelative[2].x) * _2710))) + (_viewProjRelative[2].w)) / _2728) - _2731);
      _2770 = ((_2429 * 0.5f) * max(abs(_2751), (_2731 - ((mad((_proj[2].z), _115, 0.0f) + _2702) / (mad((_proj[3].z), _115, 0.0f) + _2706))))) * max(0.0625f, _2739);
      _2771 = _2750 * _2739;
      _2773 = (_2735 * 0.5f) * _2771;
      _2775 = (_2736 * -0.5f) * _2771;
      _2776 = _2751 * _2739;
      _2783 = max(_2633, (1.0f / max((abs(_2773) * _bufferSizeAndInvSize.x), (abs(_2775) * _bufferSizeAndInvSize.y))));
      _2790 = 0.5f / _bufferSizeAndInvSize.x;
      _2792 = (((_2729 * 0.5f) + 0.5f) + (_2783 * _2773));
      _2793 = ((0.5f - (_2730 * 0.5f)) + (_2783 * _2775));
      _2794 = ((_2783 * _2776) + _2731);
      _2795 = _2633;
      // [sem: expr_sat]
      _2796 = saturate(((_115 * 0.01f) * (1.0f - saturate(dot(float3(_103, _104, _105), float3((-0.0f - (_152 * _156)), (-0.0f - (_153 * _156)), (-0.0f - (_154 * _156))))))) + 0.01f);
      _2797 = 0;
      _2798 = 0;
      _2799 = 0.0f;
      _2800 = 0.0f;
      while(true) {
        // [sem: _3__36__0__0__g_depthStencil_load]
        _2809 = __3__36__0__0__g_depthStencil.Load(int3(((int)(min(max(_2792, _2790), (1.0f - _2790)) * _bufferSizeAndInvSize.x)), ((int)(_2793 * _bufferSizeAndInvSize.y)), 0));
        _2811 = (uint)((uint)(_2809.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _2814 = ((float)((uint)((uint)(_2809.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _2815 = _2811 & 127;
        _2816 = (_2797 == 0);
        _2817 = select(_2816, 1.0f, _2796);
        _2821 = _nearFarProj.x / max(1e-07f, _2814);
        _2824 = _2821 - (_nearFarProj.x / max(1e-07f, _2794));
        _2828 = (abs((_2794 + _2770) - _2814) < _2770);
        _2829 = (int)(uint)(_2828);
        if (_2828) {
          if ((_2815 == 7) || ((_2815 == 53) || (((_2811 & 126) == 66) || (((uint)((int)(_2815) + (int)(-5)) < (uint)2) || ((_2815 == 107) || ((_2815 == 26) || (((uint)((int)(_2815) + (int)(-27)) < (uint)2) || ((_2815 == 106) || (((_2811 & 125) == 105) || ((_2815 == 18) || ((uint)((int)(_2815) + (int)(-19)) < (uint)2))))))))))) {
            _2865 = true;
            _2872 = ((int)(uint)((int)((_2824 < 0.0f) && (_2824 > select(_2865, -0.08f, -1.0f)))));
          } else {
            if ((_2815 != 67) && ((uint)((int)(_2815) + (int)(-52)) < (uint)16)) {
              _2865 = (_2821 < 32.0f);
              _2872 = ((int)(uint)((int)((_2824 < 0.0f) && (_2824 > select(_2865, -0.08f, -1.0f)))));
            } else {
              _2872 = _2829;
            }
          }
        } else {
          _2872 = _2829;
        }
        if (!(_2872 == 0)) {
          if ((uint)_2815 > (uint)11) {
            if (!((uint)_2815 < (uint)16)) {
              if (!(_2815 == 17)) {
                if (!(_2815 == 16)) {
                  if (!((_2815 == 18) || ((_2815 == 107) || ((uint)((int)(_2815) + (int)(-19)) < (uint)2)))) {
                    if (!(_2815 == 66)) {
                      _2895 = 0.0f;
                    } else {
                      _2895 = 0.1f;
                    }
                  } else {
                    _2895 = 0.15f;
                  }
                } else {
                  _2895 = 0.1f;
                }
              } else {
                _2895 = 0.7f;
              }
            } else {
              _2895 = 0.9f;
            }
          } else {
            if (!(_2815 == 11)) {
              _2895 = 0.0f;
            } else {
              _2895 = 0.1f;
            }
          }
          _2897 = saturate(_2821 * 0.015625f);  // [sem: expr_sat]
          _2900 = (1.0f - _2897) + (_2897 * _2895);
          _2915 = _2815;
          // [sem: expr_sat]
          // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
          // Description: Rewrites the contact-shadow accumulation so the occlusion term can be scaled
          //              without disturbing the base shadow it is added to. The vanilla expression is
          //              saturate(((saturate(1 - d*d*s) * (1 - base)) * fade) + base): d*d*s is the
          //              accumulated ray occlusion, (1 - base) limits the contribution to the light that is
          //              still unshadowed, and fade is an occluder thickness/penetration confidence ramp
          //              that discards hits whose depth delta is too large to be a real contact. The whole
          //              product is hoisted into a named value and multiplied by a quality-dependent gain so
          //              the ray-traced lane can deepen its own coarse contact term to match the finer
          //              sub-pixel detail composited later. At the Off value the tuning weight is 0, the gain
          //              is exactly 1.0, and the expression reduces to the vanilla one bit for bit.
          float _rndxMicroFarAccum = (saturate(1.0f - ((_2900 * _2900) * _2895)) * (1.0f - _2800)) * saturate((-0.0f - _2824) / (_2795 * 0.0046548597f));
          _2916 = saturate((_rndxMicroFarAccum * lerp(1.0f, CONTACT_SHADOW_RT_ACCUM_STRENGTH, CONTACT_SHADOW_RT_TUNING)) + _2800);
          // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
        } else {
          _2915 = _2798;
          _2916 = _2800;  // [sem: expr_sat]
        }
        if ((_2815 != 0) && (_2916 > 0.95f)) {
          if (!_2816) {
            _2948 = (saturate((_2799 - _2814) / (_2799 - _2794)) - min(_2795, _2817));
          } else {
            _2948 = 0.0f;
          }
          _2957 = ((_2948 * _2773) + _2792);
          _2958 = ((_2948 * _2775) + _2793);
          _2959 = ((_2948 * _2776) + _2794);
          _2960 = _2814;
          _2961 = _2815;
        } else {
          if ((uint)_2797 < (uint)((int)(_2423) + (int)(-1))) {
            _2940 = ((_2817 * _2773) + _2792);
            _2941 = ((_2817 * _2775) + _2793);
            _2942 = ((_2817 * _2776) + _2794);
            _2943 = (_2817 + _2795);
            _2944 = _2814;
          } else {
            _2940 = _2792;
            _2941 = _2793;
            _2942 = _2794;
            _2943 = _2795;
            _2944 = _2799;
          }
          _2945 = (int)(_2797) + (int)(1);
          if ((uint)_2945 < (uint)_2423) {
            _2792 = _2940;
            _2793 = _2941;
            _2794 = _2942;
            _2795 = _2943;
            _2796 = _2817;  // [sem: expr_sat]
            _2797 = _2945;
            _2798 = _2915;
            _2799 = _2944;
            _2800 = _2916;
            continue;
          } else {
            _2957 = 0.0f;
            _2958 = 0.0f;
            _2959 = -1.0f;
            _2960 = 0.0f;
            _2961 = _2915;
          }
        }
        _2965 = (_2916 > 0.0f);
        if (_2959 > 0.0f) {
          if (_2965 || (((_2957 >= 0.0f) && (_2957 <= 1.0f)) && ((_2958 >= 0.0f) && (_2958 <= 1.0f)))) {
            _2979 = (_2957 * 2.0f) + -1.0f;
            _2980 = 1.0f - (_2958 * 2.0f);
            _3016 = mad((_invViewProjRelative[3].z), _2959, mad((_invViewProjRelative[3].y), _2980, ((_invViewProjRelative[3].x) * _2979))) + (_invViewProjRelative[3].w);
            if (!(_2961 == 2)) {
              if (_2961 == 3) {
                _3040 = 0.0f;
                _3042 = _3040;
              } else {
                if (_2961 == 21) {
                  if (!(_80 == 21)) {
                    _3040 = 0.0f;
                    _3042 = _3040;
                  } else {
                    _3042 = 20.0f;
                  }
                } else {
                  _3033 = (_2961 == 22);
                  if (!((_80 == 22) && _3033)) {
                    _3040 = select(_3033, 0.0f, 1.0f);
                    _3042 = _3040;
                  } else {
                    _3042 = 20.0f;
                  }
                }
              }
            } else {
              if (!(_80 == 2)) {
                _3040 = 0.0f;
                _3042 = _3040;
              } else {
                _3042 = 20.0f;
              }
            }
            if (_558 && (_2916 == 1.0f)) {
              // [sem: expr_sat]
              _3066 = saturate(((((_2443 * 0.9375f) - max(0.0f, dot(float3(_2414, _2418, _2422), float3((((mad((_invViewProjRelative[0].z), _2959, mad((_invViewProjRelative[0].y), _2980, ((_invViewProjRelative[0].x) * _2979))) + (_invViewProjRelative[0].w)) / _3016) - _2645), (((mad((_invViewProjRelative[1].z), _2959, mad((_invViewProjRelative[1].y), _2980, ((_invViewProjRelative[1].x) * _2979))) + (_invViewProjRelative[1].w)) / _3016) - _2646), (((mad((_invViewProjRelative[2].z), _2959, mad((_invViewProjRelative[2].y), _2980, ((_invViewProjRelative[2].x) * _2979))) + (_invViewProjRelative[2].w)) / _3016) - _2647))))) * ((_115 * 0.015625f) + 1.5f)) / _2443) * 0.9375f);
            } else {
              _3066 = _2916;  // [sem: expr_sat]
            }
            _3067 = _3066 * saturate(exp2(min(0.0f, (((_115 * 0.018666666f) + 0.13333334f) + (_3042 * ((_nearFarProj.x / max(1e-07f, _2960)) - (_nearFarProj.x / max(1e-07f, _2959)))))) * 1.442695f));
            _3068 = _2961 & -2;
            if (!(_3068 == 6)) {
              if ((((_80 == 33) && (_2961 == 33)) || (!(_80 == 33) && ((_80 == 54) && (_2961 == 54))))) {
                _3145 = (_3067 * 0.01f);
              } else {
                if (!((_2961 == 53) || (_3068 == 66)) || (((_2961 == 53) || (_3068 == 66)) && (!((_2307 == 66) || (_80 == 53))))) {
                  if (!_170) {
                    if ((uint)((int)((uint)((uint)(_2961)) + (uint)(-52))) < (uint)16) {
                      _3142 = saturate(_115 * 0.03125f);  // [sem: expr_sat]
                    } else {
                      _3142 = 1.0f;  // [sem: expr_sat]
                    }
                    _3145 = (_3142 * _3067);
                  } else {
                    _3145 = _3067;
                  }
                } else {
                  // [sem: _3__36__0__0__g_baseColor_load]
                  _3097 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _2957)), ((int)(_bufferSizeAndInvSize.y * _2958)), 0));
                  _3103 = ((float)((uint)((uint)(((uint)((uint)(_3097.x)) >> 8) & 255)))) * 0.003921569f;
                  _3106 = ((float)((uint)((uint)(_3097.x & 255)))) * 0.003921569f;
                  _3110 = ((float)((uint)((uint)(((uint)((uint)(_3097.y)) >> 8) & 255)))) * 0.003921569f;
                  _3111 = _3103 * _3103;
                  _3112 = _3106 * _3106;
                  _3113 = _3110 * _3110;
                  _3145 = (saturate(1.0f - (dot(float3((((_3111 * 0.61312f) + (_3112 * 0.33951f)) + (_3113 * 0.04737f)), (((_3111 * 0.0702f) + (_3112 * 0.91636f)) + (_3113 * 0.01345f)), (((_3111 * 0.02062f) + (_3112 * 0.10958f)) + (_3113 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _3067);
                }
              }
            } else {
              _3145 = (_3067 * 0.01f);
            }
          } else {
            _3145 = 0.0f;
          }
        } else {
          if (_2965) {
            _2979 = (_2957 * 2.0f) + -1.0f;
            _2980 = 1.0f - (_2958 * 2.0f);
            _3016 = mad((_invViewProjRelative[3].z), _2959, mad((_invViewProjRelative[3].y), _2980, ((_invViewProjRelative[3].x) * _2979))) + (_invViewProjRelative[3].w);
            if (!(_2961 == 2)) {
              if (_2961 == 3) {
                _3040 = 0.0f;
                _3042 = _3040;
              } else {
                if (_2961 == 21) {
                  if (!(_80 == 21)) {
                    _3040 = 0.0f;
                    _3042 = _3040;
                  } else {
                    _3042 = 20.0f;
                  }
                } else {
                  _3033 = (_2961 == 22);
                  if (!((_80 == 22) && _3033)) {
                    _3040 = select(_3033, 0.0f, 1.0f);
                    _3042 = _3040;
                  } else {
                    _3042 = 20.0f;
                  }
                }
              }
            } else {
              if (!(_80 == 2)) {
                _3040 = 0.0f;
                _3042 = _3040;
              } else {
                _3042 = 20.0f;
              }
            }
            if (_558 && (_2916 == 1.0f)) {
              // [sem: expr_sat]
              _3066 = saturate(((((_2443 * 0.9375f) - max(0.0f, dot(float3(_2414, _2418, _2422), float3((((mad((_invViewProjRelative[0].z), _2959, mad((_invViewProjRelative[0].y), _2980, ((_invViewProjRelative[0].x) * _2979))) + (_invViewProjRelative[0].w)) / _3016) - _2645), (((mad((_invViewProjRelative[1].z), _2959, mad((_invViewProjRelative[1].y), _2980, ((_invViewProjRelative[1].x) * _2979))) + (_invViewProjRelative[1].w)) / _3016) - _2646), (((mad((_invViewProjRelative[2].z), _2959, mad((_invViewProjRelative[2].y), _2980, ((_invViewProjRelative[2].x) * _2979))) + (_invViewProjRelative[2].w)) / _3016) - _2647))))) * ((_115 * 0.015625f) + 1.5f)) / _2443) * 0.9375f);
            } else {
              _3066 = _2916;  // [sem: expr_sat]
            }
            _3067 = _3066 * saturate(exp2(min(0.0f, (((_115 * 0.018666666f) + 0.13333334f) + (_3042 * ((_nearFarProj.x / max(1e-07f, _2960)) - (_nearFarProj.x / max(1e-07f, _2959)))))) * 1.442695f));
            _3068 = _2961 & -2;
            if (!(_3068 == 6)) {
              if ((((_80 == 33) && (_2961 == 33)) || (!(_80 == 33) && ((_80 == 54) && (_2961 == 54))))) {
                _3145 = (_3067 * 0.01f);
              } else {
                if (!((_2961 == 53) || (_3068 == 66)) || (((_2961 == 53) || (_3068 == 66)) && (!((_2307 == 66) || (_80 == 53))))) {
                  if (!_170) {
                    if ((uint)((int)((uint)((uint)(_2961)) + (uint)(-52))) < (uint)16) {
                      _3142 = saturate(_115 * 0.03125f);  // [sem: expr_sat]
                    } else {
                      _3142 = 1.0f;  // [sem: expr_sat]
                    }
                    _3145 = (_3142 * _3067);
                  } else {
                    _3145 = _3067;
                  }
                } else {
                  // [sem: _3__36__0__0__g_baseColor_load]
                  _3097 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _2957)), ((int)(_bufferSizeAndInvSize.y * _2958)), 0));
                  _3103 = ((float)((uint)((uint)(((uint)((uint)(_3097.x)) >> 8) & 255)))) * 0.003921569f;
                  _3106 = ((float)((uint)((uint)(_3097.x & 255)))) * 0.003921569f;
                  _3110 = ((float)((uint)((uint)(((uint)((uint)(_3097.y)) >> 8) & 255)))) * 0.003921569f;
                  _3111 = _3103 * _3103;
                  _3112 = _3106 * _3106;
                  _3113 = _3110 * _3110;
                  _3145 = (saturate(1.0f - (dot(float3((((_3111 * 0.61312f) + (_3112 * 0.33951f)) + (_3113 * 0.04737f)), (((_3111 * 0.0702f) + (_3112 * 0.91636f)) + (_3113 * 0.01345f)), (((_3111 * 0.02062f) + (_3112 * 0.10958f)) + (_3113 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _3067);
                }
              }
            } else {
              _3145 = (_3067 * 0.01f);
            }
          } else {
            _3145 = 0.0f;
          }
        }
        _3149 = saturate(1.0f - _3145);  // [sem: expr_sat]
        break;
      }
    } else {
      _3149 = 1.0f;  // [sem: expr_sat]
    }
    // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
    // Description: The native contact-shadow march is a short ray with very few steps, so it misses
    //              sub-pixel and small-scale occluders and leaves surface detail such as ground litter,
    //              pebbles, cloth folds and foliage sitting on the ground without any contact darkening.
    //              The pre-helper value is captured first so a later block can weigh the helper result
    //              against the unaided one. The shared depth-bias micro detail shadow helper re-marches
    //              the depth buffer with a continuous thickness window instead of a binary hit test and
    //              returns a darkened contact value; it returns its input unchanged when Contact Micro
    //              Shadows is Off, so the vanilla shadow value is preserved.
    //              The stencil argument is the masked material id (raw depth byte & 127), matching
    //              the other variants and the mask the helper applies to the ids it samples. The raw
    //              byte carries flag bits above the id, so passing it unmasked made the helper's
    //              excluded-material list silently miss any pixel with a flag bit set.
    //              The whole region is gated
    //              on the same native shadow-evaluation condition that seeds the ray carriers: when
    //              that gate is skipped the carriers were never given real values, and the native
    //              composite below takes min(gateValue, contactValue). On that edge the native else-branch
    //              sets contactValue to exactly 1.0 and gateValue is <= 0, so the min returns the gate value
    //              and the helper result could not affect the output there. The same holds if gateValue is
    //              NaN: the native if/else still yields 1.0 and the min resolves to the non-NaN operand, so
    //              gating actually restores vanilla for that pixel, where the un-gated form would have
    //              marched with unseeded carriers and could have returned less than 1.0. The gate makes the
    //              skip explicit instead of marching with unseeded carriers.
    if (_2297 > 0.0f) {
      float _rndxMicroBaseContact = _3149;
      _3149 = ApplyContactMicroDetailShadow(
          _3149,
          float2(_60, _61),
          _115,
          _80,
          float3(_rndxMicroDirX, _rndxMicroDirY, _rndxMicroDirZ),
          float3(_rndxMicroWorldPosX, _rndxMicroWorldPosY, _rndxMicroWorldPosZ),
          CONTACT_MICRO_DETAIL_STRENGTH_RT,
          (CONTACT_SHADOW_IS_FULL ? CONTACT_MICRO_FADE_SLOPE_RT_FULL : -0.025f),
          (CONTACT_SHADOW_IS_FULL ? CONTACT_MICRO_FADE_OFFSET_RT_FULL : 3.0f),
          CONTACT_MICRO_RANGE_NEAR_RT,
          CONTACT_MICRO_RANGE_FAR_RT,
          CONTACT_MICRO_THICKNESS_MULTIPLIER_RT,
          CONTACT_MICRO_OCCLUSION_SCALE_RT,
          CONTACT_MICRO_SELF_REJECT_PIXELS_RT,
          CONTACT_MICRO_SELF_FADE_PIXELS_RT,
          CONTACT_MICRO_FOLIAGE_THICKNESS_BOOST_RT,
          CONTACT_MICRO_FOLIAGE_OCCLUSION_BOOST_RT);
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: Final compositing step for the ray-traced contact lane. Both the unaided native
      //              contact value and the micro-detail-assisted value are deepened by the same
      //              quality-dependent final-strength gain, applied in occlusion space (1 - value) so the
      //              fully lit case stays fully lit. The two are then blended by distance to the frame
      //              border: the micro detail helper marches in screen space, so near the edges its ray
      //              walks out of the depth buffer, loses occluders and would otherwise leave an abrupt
      //              brightness seam, so the border falls back to the unaided value. The whole block is
      //              gated on the ray-traced tuning weight, which is 0 when Contact Micro Shadows is Off,
      //              leaving the vanilla value untouched.
      if (CONTACT_SHADOW_RT_TUNING > 0.f) {
        float _rndxMicroWithHelper = _3149;
        float _rndxMicroBaseBoosted = _rndxMicroBaseContact;
        float _rndxMicroHelperBoosted = _rndxMicroWithHelper;
        if (_rndxMicroBaseBoosted < 1.0f) {
          _rndxMicroBaseBoosted = saturate(1.0f - ((1.0f - _rndxMicroBaseBoosted) * lerp(1.0f, CONTACT_SHADOW_RT_FINAL_STRENGTH, CONTACT_SHADOW_RT_TUNING)));
        }
        if (_rndxMicroHelperBoosted < 1.0f) {
          _rndxMicroHelperBoosted = saturate(1.0f - ((1.0f - _rndxMicroHelperBoosted) * lerp(1.0f, CONTACT_SHADOW_RT_FINAL_STRENGTH, CONTACT_SHADOW_RT_TUNING)));
        }
        if (CONTACT_SHADOW_DETAIL_PATH == 1.f && _rndxMicroHelperBoosted < _rndxMicroBaseBoosted) {
          float2 _rndxMicroScreenUV = float2((_60 + 0.5f) * _bufferSizeAndInvSize.z,
                                             (_61 + 0.5f) * _bufferSizeAndInvSize.w);
          float2 _rndxMicroEdgeDist = min(_rndxMicroScreenUV, 1.0f - _rndxMicroScreenUV);
          float _rndxMicroEdgeFade = saturate(min(_rndxMicroEdgeDist.x, _rndxMicroEdgeDist.y) * 10.0f);
          _3149 = lerp(_rndxMicroBaseBoosted, _rndxMicroHelperBoosted, _rndxMicroEdgeFade);
        } else {
          _3149 = _rndxMicroHelperBoosted;
        }
      }
    }
    // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
    _3150 = min(_2297, _3149);
    _3164 = float(half(_3150 * float(_2273)));
    _3165 = float(half(_3150 * float(_2274)));
    _3166 = float(half(_3150 * float(_2275)));
    _3167 = saturate((1.0f - _554) + (exp2(log2(saturate(select(_170, (_2282 + 0.98f), _2282))) * 0.45454544f) * _554));  // [sem: expr_sat]
  }
  __3__38__0__1__g_shadowColorResultUAV[int2(_58, _59)] = float4((half)(half(_3164)), (half)(half(_3165)), (half)(half(_3166)), (half)(half(_3167)));
}
