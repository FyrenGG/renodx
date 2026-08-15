// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the shared RenoDX option macros required by Contact Micro Shadows; this declaration changes no native output by itself.
#include "../shared.h"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

Texture2D<float4> __3__36__0__0__g_terrainShadowDepth : register(t41, space36);

Texture2DArray<float4> __3__36__0__0__g_dynamicShadowDepthArray : register(t237, space36);

Texture2DArray<half4> __3__36__0__0__g_dynamicShadowColorArray : register(t239, space36);

Texture2DArray<float4> __3__36__0__0__g_shadowDepthArray : register(t240, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t21, space36);

Texture2D<uint> __3__36__0__0__g_depthStencil : register(t52, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t24, space36);

Texture2D<float> __3__36__0__0__g_nearFieldShadowDepth : register(t126, space36);

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
  float4 _shadowDepthRanges : packoffset(c000.x);
  float4 _massiveShadowSizeAndInvSize : packoffset(c001.x);
  uint4 _shadowParam : packoffset(c002.x);
  int4 _updateIndex : packoffset(c003.x);
  float4 _jitterOffset[8] : packoffset(c004.x);
  float4 _shadowRelativePosition : packoffset(c012.x);
  float4 _dynmaicShadowSizeAndInvSize : packoffset(c013.x);
  column_major float4x4 _dynamicShadowProjTexScale[2] : packoffset(c014.x);
  column_major float4x4 _dynamicShadowProjRelativeTexScale[2] : packoffset(c022.x);
  float4 _dynamicShadowFrustumPlanes0[6] : packoffset(c030.x);
  float4 _dynamicShadowFrustumPlanes1[6] : packoffset(c036.x);
  column_major float4x4 _dynamicShadowViewProj[2] : packoffset(c042.x);
  column_major float4x4 _dynamicShadowViewProjPrev[2] : packoffset(c050.x);
  column_major float4x4 _invDynamicShadowViewProj[2] : packoffset(c058.x);
  float4 _dynamicShadowPosition[2] : packoffset(c066.x);
  float4 _shadowSizeAndInvSize : packoffset(c068.x);
  column_major float4x4 _shadowProjTexScale[2] : packoffset(c069.x);
  column_major float4x4 _shadowProjRelativeTexScale[2] : packoffset(c077.x);
  float4 _staticShadowPosition[2] : packoffset(c085.x);
  column_major float4x4 _shadowViewProj[2] : packoffset(c087.x);
  column_major float4x4 _shadowViewProjRelative[2] : packoffset(c095.x);
  column_major float4x4 _invShadowViewProj[2] : packoffset(c103.x);
  float4 _currShadowFrustumPlanes[6] : packoffset(c111.x);
  column_major float4x4 _currShadowViewProjRelative : packoffset(c117.x);
  column_major float4x4 _currInvShadowViewProjRelative : packoffset(c121.x);
  float4 _currStaticShadowPosition : packoffset(c125.x);
  float4 _currTerrainShadowFrustumPlanes[6] : packoffset(c126.x);
  column_major float4x4 _terrainShadowProjTexScale : packoffset(c132.x);
  column_major float4x4 _terrainShadowProjRelativeTexScale : packoffset(c136.x);
  column_major float4x4 _terrainShadowViewProj : packoffset(c140.x);
  column_major float4x4 _nearFieldShadowViewProj : packoffset(c144.x);
  float4 _nearFieldShadowFlag : packoffset(c148.x);
  float4 _nearFieldShadowFrustumPlanes[6] : packoffset(c149.x);
};

cbuffer __3__35__0__0__TileConstantBuffer : register(b49, space35) {
  struct {
    uint4 g_tileIndex[4096];
  } __3__35__0__0__TileConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__TileConstantBuffer_raw[4096] : packoffset(c0);
  uint4 __3__35__0__0__TileConstantBuffer_raw_uint[4096] : packoffset(c0);
};

cbuffer __3__35__0__0__NearFieldShadowConstantBuffer : register(b41, space35) {
  float4 _nearFieldShadowBoundsMin : packoffset(c000.x);
  float4 _nearFieldShadowBoundsMax : packoffset(c001.x);
  column_major float4x4 _nearFieldShadowViewProjCompacted : packoffset(c002.x);
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

static const float _global_0[32] = { -7.0f, -8.0f, 0.0f, -7.0f, -4.0f, -6.0f, 3.0f, -5.0f, 7.0f, -4.0f, -1.0f, -3.0f, -5.0f, -2.0f, 4.0f, -1.0f, -8.0f, 0.0f, 1.0f, 1.0f, -3.0f, 2.0f, 5.0f, 3.0f, -6.0f, 4.0f, 2.0f, 5.0f, -2.0f, 6.0f, 6.0f, 7.0f };

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
    // Description: Zero-initialized carrier variables for the contact-shadow ray direction used by
    //              the micro detail shadow helper later in this shader. The native direction
    //              temporaries they copy are only assigned inside the shadow-evaluation gate that
    //              follows; reading those raw temporaries at the helper call site outside the gate
    //              compiles to undefined values on the gate's skip edge (phi-undef in DXIL). The
    //              helper call is gated on the same condition, so the zero fallbacks are never
    //              actually marched; they exist so every control path carries defined values. The
    //              march origin needs no carrier in this variant because it comes from the shaded
    //              world position, which is computed before this gate. These are storage only and do
    //              not affect any native computation.
    float _rndxMicroDirX = 0.0f;
    float _rndxMicroDirY = 0.0f;
    float _rndxMicroDirZ = 0.0f;
    // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
  int4 _33;
  int _43;
  int _47;
  uint _59;
  uint _60;
  float _61;
  float _62;
  float _70;
  float _73;
  uint _75;
  int _77;
  float _80;
  int _81;
  uint _83;
  float _99;
  float _100;
  float _101;
  float _103;
  float _104;
  float _105;
  float _106;
  bool _108;
  int _376;
  float _555;
  float _568;
  float _569;
  float _570;
  float _644;
  int _645;
  float _646;
  float _710;
  int _711;
  int _712;
  float _713;
  float _775;
  int _776;
  int _777;
  float _826;
  int _827;
  int _828;
  int _987;
  int _1507;
  float _1610;
  float _1611;
  half _1612;
  half _1613;
  half _1614;
  float _1691;
  float _1692;
  float _1693;
  int _1738;
  int _1774;
  float _1788;
  float _1801;
  int _1802;
  float _1893;
  float _1894;
  float _1895;
  float _1897;
  int _1898;
  float _1938;
  float _1939;
  float _1982;
  float _1983;
  float _1984;
  float _2084;
  float _2098;
  int _2270;
  float _2276;
  float _2288;
  float _2297;
  float _2298;
  float _2299;
  int _2448;
  float _2449;
  float _2450;
  float _2451;
  float _2452;
  float _2453;
  int _2454;
  float _2455;
  float _2456;
  bool _2521;
  int _2528;
  float _2551;
  int _2571;
  float _2572;
  float _2596;
  float _2597;
  float _2598;
  float _2599;
  float _2600;
  float _2604;
  int _2736;
  float _2737;
  float _2738;
  float _2739;
  float _2740;
  float _2741;
  int _2742;
  float _2743;
  float _2744;
  bool _2809;
  int _2816;
  float _2839;
  int _2859;
  float _2860;
  float _2884;
  float _2885;
  float _2886;
  float _2887;
  float _2888;
  float _2892;
  int _2902;
  float _2903;
  float _2904;
  float _2905;
  float _2906;
  float _2907;
  float _2988;
  float _2990;
  float _3014;
  float _3090;
  float _3093;
  float _3097;
  float _3112;
  float _3113;
  float _3114;
  float _3115;
  float _111;
  float _115;
  float _116;
  float _152;
  float _153;
  float _154;
  float _155;
  float _157;
  int _170;
  bool _171;
  float _191;
  float _195;
  float _199;
  float _210;
  float _221;
  float _222;
  float _227;
  uint _243;
  uint _251;
  uint _259;
  uint _267;
  uint _275;
  uint _283;
  uint _291;
  uint _299;
  uint _307;
  uint _315;
  uint _323;
  uint _331;
  uint _339;
  uint _347;
  uint _355;
  uint _363;
  uint _381;
  float _388;
  float _394;
  float _395;
  float _397;
  float _404;
  float _406;
  float _408;
  float _409;
  float _414;
  float4 _418;
  float _423;
  float _428;
  float _430;
  float _437;
  float _447;
  float _448;
  float _453;
  float4 _455;
  float _464;
  float _466;
  float _473;
  float _484;
  float _485;
  float _490;
  float4 _492;
  float _501;
  float _503;
  float _510;
  float _521;
  float _522;
  float _527;
  float4 _529;
  float _538;
  float _540;
  float _547;
  float _558;
  bool _559;
  float _578;
  float _598;
  float _602;
  float _606;
  float _607;
  float _608;
  float _633;
  float _634;
  float _666;
  float _670;
  float _674;
  float _699;
  float _700;
  bool _714;
  float _722;
  float _723;
  float _724;
  float _729;
  float _730;
  float _731;
  float _751;
  float _755;
  float _759;
  float _760;
  float _761;
  float _782;
  float _783;
  float _784;
  float _804;
  float _808;
  float _812;
  uint _844;
  uint _852;
  uint _860;
  uint _868;
  uint _876;
  uint _884;
  uint _892;
  uint _900;
  uint _908;
  uint _916;
  uint _924;
  uint _932;
  uint _940;
  uint _948;
  uint _956;
  uint _964;
  bool _966;
  float _970;
  float _971;
  float _972;
  float _974;
  float _988;
  float _989;
  float _990;
  float _997;
  float _999;
  float _1003;
  float _1004;
  float _1005;
  float _1012;
  half4 _1019;
  float _1033;
  float _1034;
  half4 _1043;
  float _1059;
  float _1060;
  half4 _1069;
  float _1085;
  float _1086;
  half4 _1095;
  float _1111;
  float _1112;
  half4 _1121;
  float _1137;
  float _1138;
  half4 _1147;
  float _1163;
  float _1164;
  half4 _1173;
  float _1189;
  float _1190;
  half4 _1199;
  float _1215;
  float _1216;
  half4 _1225;
  float _1241;
  float _1242;
  half4 _1251;
  float _1267;
  float _1268;
  half4 _1277;
  float _1293;
  float _1294;
  half4 _1303;
  float _1319;
  float _1320;
  half4 _1329;
  float _1345;
  float _1346;
  half4 _1355;
  float _1371;
  float _1372;
  half4 _1381;
  float _1397;
  float _1398;
  half4 _1407;
  float _1413;
  float _1414;
  half _1469;
  half _1470;
  half _1471;
  float _1474;
  float _1475;
  float _1476;
  float _1477;
  float _1494;
  float _1495;
  float _1496;
  float _1508;
  float _1509;
  float _1516;
  float _1518;
  float _1522;
  float _1523;
  float _1524;
  float _1531;
  float _1547;
  float _1548;
  float _1569;
  float _1570;
  float _1591;
  float _1592;
  float _1603;
  float _1604;
  bool _1615;
  float _1617;
  float _1621;
  float _1622;
  bool _1631;
  float _1706;
  float _1717;
  float _1718;
  float _1723;
  uint _1743;
  float _1756;
  float _1757;
  float _1759;
  float _1760;
  float _1761;
  float _1762;
  uint _1779;
  float _1794;
  float _1795;
  float _1796;
  int _1805;
  float _1814;
  float _1815;
  float _1831;
  int _1832;
  int _1901;
  float _1910;
  float _1911;
  float _1928;
  int _1929;
  float _1952;
  int _1962;
  bool _1963;
  bool _1964;
  bool _1965;
  float _1966;
  int _1985;
  int _1989;
  uint _1995;
  int _2000;
  int _2005;
  float _2008;
  float _2019;
  float _2020;
  float _2025;
  float _2041;
  float _2045;
  float _2048;
  float _2051;
  float _2052;
  float _2054;
  float _2057;
  float _2058;
  float _2059;
  float _2060;
  float _2069;
  float _2073;
  float _2077;
  int _2078;
  float _2090;
  float _2104;
  bool _2111;
  float _2115;
  uint _2137;
  uint _2145;
  uint _2153;
  uint _2161;
  uint _2169;
  uint _2177;
  uint _2185;
  uint _2193;
  uint _2201;
  uint _2209;
  uint _2217;
  uint _2225;
  uint _2233;
  uint _2241;
  uint _2249;
  uint _2257;
  float _2292;
  float _2300;
  float _2301;
  float _2302;
  float _2315;
  float _2318;
  bool _2323;
  float _2327;
  float _2359;
  float _2363;
  float _2367;
  float _2368;
  float _2369;
  float _2385;
  float _2386;
  float _2387;
  float _2388;
  float _2392;
  float _2393;
  float _2396;
  float _2407;
  float _2408;
  float _2426;
  float _2427;
  float _2429;
  float _2431;
  float _2432;
  float _2439;
  float _2446;
  uint _2465;
  int _2467;
  float _2470;
  int _2471;
  bool _2472;
  float _2473;
  float _2477;
  float _2480;
  bool _2484;
  int _2485;
  float _2553;
  float _2556;
  int _2601;
  float _2614;
  float _2646;
  float _2650;
  float _2654;
  float _2655;
  float _2656;
  float _2672;
  float _2673;
  float _2674;
  float _2675;
  float _2679;
  float _2680;
  float _2683;
  float _2694;
  float _2695;
  float _2714;
  float _2715;
  float _2717;
  float _2719;
  float _2720;
  float _2727;
  float _2734;
  uint _2753;
  int _2755;
  float _2758;
  int _2759;
  bool _2760;
  float _2761;
  float _2765;
  float _2768;
  bool _2772;
  int _2773;
  float _2841;
  float _2844;
  int _2889;
  bool _2911;
  float _2925;
  float _2926;
  float _2962;
  bool _2981;
  float _3015;
  int _3016;
  uint4 _3045;
  float _3051;
  float _3054;
  float _3058;
  float _3059;
  float _3060;
  float _3061;
  float _3098;
  int __loop_jump_target = -1;
  int _18[4];
  float _27[2];
  float _28[2];
  float _29[2];
  _33 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _18[0] = _33.x;
  _18[1] = _33.y;
  _18[2] = _33.z;
  _18[3] = _33.w;
  _43 = _18[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _47 = select((((int)(SV_GroupID.x) & 16) == 0), _43, ((uint)((uint)(_43)) >> 16));
  _59 = (uint)((uint)((int)((int)(((int)((uint)((uint)(_47)) << 2)) & 1020) | (int)((int)(SV_GroupID.x) & 3)) << 3)) + (uint)(SV_GroupThreadID.x);
  _60 = (uint)((uint)((int)((int)(((uint)((uint)(_47)) >> 6) & 1020) | (int)(((uint)(SV_GroupID.x) >> 2) & 3)) << 3)) + (uint)(SV_GroupThreadID.y);
  _61 = (float)((uint)((uint)(_59)));
  _62 = (float)((uint)((uint)(_60)));
  _70 = ((_bufferSizeAndInvSize.z * 2.0f) * (_61 + 0.5f)) + -1.0f;
  _73 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (_62 + 0.5f));
  _75 = __3__36__0__0__g_depthStencil.Load(int3(_59, _60, 0));  // [sem: _3__36__0__0__g_depthStencil_load]
  _77 = (uint)((uint)(_75.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _80 = ((float)((uint)((uint)(_75.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _81 = _77 & 127;
  // RenoDX: >>> [Patch: ConnectedPatchEnvelope] [Version: 1.16.00]
  // Description: Per-pixel connected-patch relief state. Evaluated lazily at most once, and only
  // if the far march produces a suppression candidate, so pixels without one pay nothing.
  bool _rndxCpeReady = false;
  bool _rndxCpeEst = false;
  float _rndxCpeE = 0.0f;
  // RenoDX: <<< [Patch: ConnectedPatchEnvelope]
  _83 = __3__36__0__0__g_sceneNormal.Load(int3(_59, _60, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
  _99 = min(1.0f, ((((float)((uint)((uint)(_83.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _100 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_83.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _101 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_83.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _103 = rsqrt(dot(float3(_99, _100, _101), float3(_99, _100, _101)));  // [sem: invLength]
  _104 = _103 * _99;
  _105 = _103 * _100;
  _106 = _103 * _101;
  _108 = (_80 == 1.0f);
  if ((_80 < 1e-07f) || _108) {
    _111 = select(_108, 0.0f, 1.0f);
    _3112 = _111;
    _3113 = _111;
    _3114 = _111;
    _3115 = _111;  // [sem: expr_sat]
  } else {
    _115 = max(1e-07f, _80);
    _116 = _nearFarProj.x / _115;
    _152 = mad((_invViewProjRelative[3].z), _115, mad((_invViewProjRelative[3].y), _73, ((_invViewProjRelative[3].x) * _70))) + (_invViewProjRelative[3].w);
    _153 = (mad((_invViewProjRelative[0].z), _115, mad((_invViewProjRelative[0].y), _73, ((_invViewProjRelative[0].x) * _70))) + (_invViewProjRelative[0].w)) / _152;
    _154 = (mad((_invViewProjRelative[1].z), _115, mad((_invViewProjRelative[1].y), _73, ((_invViewProjRelative[1].x) * _70))) + (_invViewProjRelative[1].w)) / _152;
    _155 = (mad((_invViewProjRelative[2].z), _115, mad((_invViewProjRelative[2].y), _73, ((_invViewProjRelative[2].x) * _70))) + (_invViewProjRelative[2].w)) / _152;
    _157 = rsqrt(dot(float3(_153, _154, _155), float3(_153, _154, _155)));  // [sem: invLength]
    _27[0] = 0.0f;
    _28[0] = 0.0f;
    _29[0] = 0.0f;
    _27[1] = 0.0f;
    _28[1] = 0.0f;
    _29[1] = 0.0f;
    _170 = (int)(_81) + (int)(-52);
    _171 = ((uint)_170 < (uint)16);
    _191 = mad((_terrainShadowProjRelativeTexScale[0].z), _155, mad((_terrainShadowProjRelativeTexScale[0].y), _154, ((_terrainShadowProjRelativeTexScale[0].x) * _153))) + (_terrainShadowProjRelativeTexScale[0].w);
    _195 = mad((_terrainShadowProjRelativeTexScale[1].z), _155, mad((_terrainShadowProjRelativeTexScale[1].y), _154, ((_terrainShadowProjRelativeTexScale[1].x) * _153))) + (_terrainShadowProjRelativeTexScale[1].w);
    _199 = mad((_terrainShadowProjRelativeTexScale[2].z), _155, mad((_terrainShadowProjRelativeTexScale[2].y), _154, ((_terrainShadowProjRelativeTexScale[2].x) * _153))) + (_terrainShadowProjRelativeTexScale[2].w);
    if (saturate(_191) == _191) {
      if ((_199 >= 0.0001f) && ((_199 <= 1.0f) && (saturate(_195) == _195))) {
        _210 = (float)((uint)((uint)(_frameNumber.x)));
        _221 = (frac(((_210 * 92.0f) + _61) * 0.0078125f) * 128.0f) + -64.34062f;
        _222 = (frac(((_210 * 71.0f) + _62) * 0.0078125f) * 128.0f) + -72.46562f;
        _227 = frac(dot(float3((_221 * _221), (_222 * _222), (_222 * _221)), float3(20.390625f, 60.703125f, 2.4281209f)));
        _243 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_62 * _bufferSizeAndInvSize.x) + _61));
        _251 = (uint)((uint)((((int)((uint)((uint)((uint)(_243)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_243)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_243)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _259 = (uint)((uint)((((int)((uint)((uint)((uint)(_251)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_251)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_251)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_243));
        _267 = (uint)((uint)((((int)((uint)((uint)((uint)(_259)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_259)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_259)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_251));
        _275 = (uint)((uint)((((int)((uint)((uint)((uint)(_267)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_267)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_267)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_259));
        _283 = (uint)((uint)((((int)((uint)((uint)((uint)(_275)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_275)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_275)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_267));
        _291 = (uint)((uint)((((int)((uint)((uint)((uint)(_283)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_283)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_283)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_275));
        _299 = (uint)((uint)((((int)((uint)((uint)((uint)(_291)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_291)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_291)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_283));
        _307 = (uint)((uint)((((int)((uint)((uint)((uint)(_299)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_299)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_299)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_291));
        _315 = (uint)((uint)((((int)((uint)((uint)((uint)(_307)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_307)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_307)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_299));
        _323 = (uint)((uint)((((int)((uint)((uint)((uint)(_315)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_315)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_315)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_307));
        _331 = (uint)((uint)((((int)((uint)((uint)((uint)(_323)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_323)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_323)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_315));
        _339 = (uint)((uint)((((int)((uint)((uint)((uint)(_331)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_331)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_331)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_323));
        _347 = (uint)((uint)((((int)((uint)((uint)((uint)(_339)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_339)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_339)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_331));
        _355 = (uint)((uint)((((int)((uint)((uint)((uint)(_347)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_347)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_347)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_339));
        _363 = (uint)((uint)((((int)((uint)((uint)((uint)(_355)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_355)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_355)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_347));
        if ((_355 & 16777215) == 0) {
          _376 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_363)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_363)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_363)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_355))));
        } else {
          _376 = _355;
        }
        _381 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_376)) * (uint)(48271))) & 16777215)))) * 3.8146377e-06f);
        _388 = frac((((float)((uint)((uint)(_381)))) * 0.015625f) + (((float)((uint)((uint)(((int)((uint)(_227 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f));
        _394 = (_388 * 2.0f) + -1.0f;
        _395 = (((float)((uint)((uint)(reversebits(_381) ^ ((int)((uint)(_227 * 2.8747837e+08f))))))) * 4.656613e-10f) + -1.0f;
        _397 = rsqrt(dot(float2(_394, _395), float2(_394, _395)));  // [sem: invLength]
        _404 = ((_388 * 0.0009765625f) + -0.00048828125f) * _397;
        _406 = (_395 * _397) * 0.00048828125f;
        _408 = (_404 * (_jitterOffset[0].x)) + _191;
        _409 = (_406 * (_jitterOffset[0].y)) + _195;
        _414 = frac((_408 * 1024.0f) + -0.5f);
        _418 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_408, _409));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _423 = _199 + -0.005f;
        _428 = select((_418.w > _423), 1.0f, 0.0f);
        _430 = select((_418.x > _423), 1.0f, 0.0f);
        _437 = ((select((_418.z > _423), 1.0f, 0.0f) - _428) * _414) + _428;
        _447 = ((_jitterOffset[1].x) * _404) + _191;
        _448 = ((_jitterOffset[1].y) * _406) + _195;
        _453 = frac((_447 * 1024.0f) + -0.5f);
        _455 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_447, _448));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _464 = select((_455.w > _423), 1.0f, 0.0f);
        _466 = select((_455.x > _423), 1.0f, 0.0f);
        _473 = ((select((_455.z > _423), 1.0f, 0.0f) - _464) * _453) + _464;
        _484 = ((_jitterOffset[2].x) * _404) + _191;
        _485 = ((_jitterOffset[2].y) * _406) + _195;
        _490 = frac((_484 * 1024.0f) + -0.5f);
        _492 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_484, _485));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _501 = select((_492.w > _423), 1.0f, 0.0f);
        _503 = select((_492.x > _423), 1.0f, 0.0f);
        _510 = ((select((_492.z > _423), 1.0f, 0.0f) - _501) * _490) + _501;
        _521 = ((_jitterOffset[3].x) * _404) + _191;
        _522 = ((_jitterOffset[3].y) * _406) + _195;
        _527 = frac((_521 * 1024.0f) + -0.5f);
        _529 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_521, _522));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _538 = select((_529.w > _423), 1.0f, 0.0f);
        _540 = select((_529.x > _423), 1.0f, 0.0f);
        _547 = ((select((_529.z > _423), 1.0f, 0.0f) - _538) * _527) + _538;
        _555 = ((((saturate((((((select((_455.y > _423), 1.0f, 0.0f) - _466) * _453) + _466) - _473) * frac((_448 * 1024.0f) + -0.5f)) + _473) + saturate((((((select((_418.y > _423), 1.0f, 0.0f) - _430) * _414) + _430) - _437) * frac((_409 * 1024.0f) + -0.5f)) + _437)) + saturate((((((select((_492.y > _423), 1.0f, 0.0f) - _503) * _490) + _503) - _510) * frac((_485 * 1024.0f) + -0.5f)) + _510)) + saturate((((((select((_529.y > _423), 1.0f, 0.0f) - _540) * _527) + _540) - _547) * frac((_522 * 1024.0f) + -0.5f)) + _547)) * 0.25f);
      } else {
        _555 = 1.0f;
      }
    } else {
      _555 = 1.0f;
    }
    _558 = min(max((_116 * 0.002f), 0.005f), 0.5f);
    _559 = ((uint)_170 > (uint)15);
    if (_559) {
      _568 = ((_558 * _104) + _153);
      _569 = ((_558 * _105) + _154);
      _570 = ((_558 * _106) + _155);
    } else {
      _568 = _153;
      _569 = _154;
      _570 = _155;
    }
    _578 = sqrt(((_154 * _154) + (_153 * _153)) + (_155 * _155));
    _598 = mad((_dynamicShadowProjRelativeTexScale[1][0].z), _570, mad((_dynamicShadowProjRelativeTexScale[1][0].y), _569, ((_dynamicShadowProjRelativeTexScale[1][0].x) * _568))) + (_dynamicShadowProjRelativeTexScale[1][0].w);
    _602 = mad((_dynamicShadowProjRelativeTexScale[1][1].z), _570, mad((_dynamicShadowProjRelativeTexScale[1][1].y), _569, ((_dynamicShadowProjRelativeTexScale[1][1].x) * _568))) + (_dynamicShadowProjRelativeTexScale[1][1].w);
    _606 = mad((_dynamicShadowProjRelativeTexScale[1][2].z), _570, mad((_dynamicShadowProjRelativeTexScale[1][2].y), _569, ((_dynamicShadowProjRelativeTexScale[1][2].x) * _568))) + (_dynamicShadowProjRelativeTexScale[1][2].w);
    _607 = 4.0f / _dynmaicShadowSizeAndInvSize.y;
    _608 = 1.0f - _607;
    if (!(((!(_598 <= _608)) || (!(_598 >= _607))) || (!(_602 <= _608)))) {
      if ((_578 < 128.0f) && ((_606 >= -1.0f) && ((_606 <= 1.0f) && (_602 >= _607)))) {
        _633 = max(0.0f, ((abs((_598 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
        _634 = max(0.0f, ((abs((_602 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
        _27[1] = _598;
        _28[1] = _602;
        _29[1] = _606;
        _644 = select((_terrainNormalParams.y > 0.0f), 2e-05f, 8e-05f);
        _645 = 1;
        _646 = sqrt((_634 * _634) + (_633 * _633));
      } else {
        _644 = 0.0f;
        _645 = 0;
        _646 = 0.0f;
      }
    } else {
      _644 = 0.0f;
      _645 = 0;
      _646 = 0.0f;
    }
    _666 = mad((_dynamicShadowProjRelativeTexScale[0][0].z), _570, mad((_dynamicShadowProjRelativeTexScale[0][0].y), _569, ((_dynamicShadowProjRelativeTexScale[0][0].x) * _568))) + (_dynamicShadowProjRelativeTexScale[0][0].w);
    _670 = mad((_dynamicShadowProjRelativeTexScale[0][1].z), _570, mad((_dynamicShadowProjRelativeTexScale[0][1].y), _569, ((_dynamicShadowProjRelativeTexScale[0][1].x) * _568))) + (_dynamicShadowProjRelativeTexScale[0][1].w);
    _674 = mad((_dynamicShadowProjRelativeTexScale[0][2].z), _570, mad((_dynamicShadowProjRelativeTexScale[0][2].y), _569, ((_dynamicShadowProjRelativeTexScale[0][2].x) * _568))) + (_dynamicShadowProjRelativeTexScale[0][2].w);
    if (!(((!(_666 >= _607)) || (!(_666 <= _608))) || (!(_670 <= _608)))) {
      if ((_578 < 128.0f) && ((_674 >= -1.0f) && ((_670 >= _607) && (_674 <= 1.0f)))) {
        _699 = max(0.0f, ((abs((_666 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
        _700 = max(0.0f, ((abs((_670 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
        _27[0] = _666;
        _28[0] = _670;
        _29[0] = _674;
        _710 = select((_terrainNormalParams.y > 0.0f), 5e-06f, 2e-05f);
        _711 = 1;
        _712 = 0;
        _713 = sqrt((_700 * _700) + (_699 * _699));
      } else {
        _710 = _644;
        _711 = _645;
        _712 = _645;
        _713 = _646;
      }
    } else {
      _710 = _644;
      _711 = _645;
      _712 = _645;
      _713 = _646;
    }
    _714 = (_711 == 0);
    [branch]
    if (_714) {
      _722 = _viewPos.x + _568;
      _723 = _viewPos.y + _569;
      _724 = _viewPos.z + _570;
      _729 = _722 - (_staticShadowPosition[1].x);
      _730 = _723 - (_staticShadowPosition[1].y);
      _731 = _724 - (_staticShadowPosition[1].z);
      _751 = mad((_shadowProjRelativeTexScale[1][0].z), _731, mad((_shadowProjRelativeTexScale[1][0].y), _730, ((_shadowProjRelativeTexScale[1][0].x) * _729))) + (_shadowProjRelativeTexScale[1][0].w);
      _755 = mad((_shadowProjRelativeTexScale[1][1].z), _731, mad((_shadowProjRelativeTexScale[1][1].y), _730, ((_shadowProjRelativeTexScale[1][1].x) * _729))) + (_shadowProjRelativeTexScale[1][1].w);
      _759 = mad((_shadowProjRelativeTexScale[1][2].z), _731, mad((_shadowProjRelativeTexScale[1][2].y), _730, ((_shadowProjRelativeTexScale[1][2].x) * _729))) + (_shadowProjRelativeTexScale[1][2].w);
      _760 = 2.0f / _shadowSizeAndInvSize.y;
      _761 = 1.0f - _760;
      if (!(((!(_751 <= _761)) || (!(_751 >= _760))) || (!(_755 <= _761)))) {
        if ((_759 >= 0.0001f) && ((_759 <= 1.0f) && (_755 >= _760))) {
          _27[1] = _751;
          _28[1] = _755;
          _29[1] = _759;
          _775 = 0.0002f;
          _776 = 1;
          _777 = 1;
        } else {
          _775 = _710;
          _776 = 0;
          _777 = _712;
        }
      } else {
        _775 = _710;
        _776 = 0;
        _777 = _712;
      }
      _782 = _722 - (_staticShadowPosition[0].x);
      _783 = _723 - (_staticShadowPosition[0].y);
      _784 = _724 - (_staticShadowPosition[0].z);
      _804 = mad((_shadowProjRelativeTexScale[0][0].z), _784, mad((_shadowProjRelativeTexScale[0][0].y), _783, ((_shadowProjRelativeTexScale[0][0].x) * _782))) + (_shadowProjRelativeTexScale[0][0].w);
      _808 = mad((_shadowProjRelativeTexScale[0][1].z), _784, mad((_shadowProjRelativeTexScale[0][1].y), _783, ((_shadowProjRelativeTexScale[0][1].x) * _782))) + (_shadowProjRelativeTexScale[0][1].w);
      _812 = mad((_shadowProjRelativeTexScale[0][2].z), _784, mad((_shadowProjRelativeTexScale[0][2].y), _783, ((_shadowProjRelativeTexScale[0][2].x) * _782))) + (_shadowProjRelativeTexScale[0][2].w);
      if (!(((!(_804 >= _760)) || (!(_804 <= _761))) || (!(_808 <= _761)))) {
        if ((_812 >= 0.0001f) && ((_808 >= _760) && (_812 <= 1.0f))) {
          _27[0] = _804;
          _28[0] = _808;
          _29[0] = _812;
          _826 = 0.0002f;
          _827 = 1;
          _828 = 0;
        } else {
          _826 = _775;
          _827 = _776;
          _828 = _777;
        }
      } else {
        _826 = _775;
        _827 = _776;
        _828 = _777;
      }
    } else {
      _826 = _710;
      _827 = 1;
      _828 = _712;
    }
    _844 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_62 * _bufferSizeAndInvSize.x) + _61));
    _852 = (uint)((uint)((((int)((uint)((uint)((uint)(_844)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_844)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_844)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
    _860 = (uint)((uint)((((int)((uint)((uint)((uint)(_852)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_852)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_852)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_844));
    _868 = (uint)((uint)((((int)((uint)((uint)((uint)(_860)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_860)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_860)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_852));
    _876 = (uint)((uint)((((int)((uint)((uint)((uint)(_868)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_868)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_868)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_860));
    _884 = (uint)((uint)((((int)((uint)((uint)((uint)(_876)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_876)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_876)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_868));
    _892 = (uint)((uint)((((int)((uint)((uint)((uint)(_884)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_884)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_884)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_876));
    _900 = (uint)((uint)((((int)((uint)((uint)((uint)(_892)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_892)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_892)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_884));
    _908 = (uint)((uint)((((int)((uint)((uint)((uint)(_900)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_900)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_900)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_892));
    _916 = (uint)((uint)((((int)((uint)((uint)((uint)(_908)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_908)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_908)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_900));
    _924 = (uint)((uint)((((int)((uint)((uint)((uint)(_916)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_916)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_916)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_908));
    _932 = (uint)((uint)((((int)((uint)((uint)((uint)(_924)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_924)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_924)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_916));
    _940 = (uint)((uint)((((int)((uint)((uint)((uint)(_932)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_932)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_932)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_924));
    _948 = (uint)((uint)((((int)((uint)((uint)((uint)(_940)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_940)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_940)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_932));
    _956 = (uint)((uint)((((int)((uint)((uint)((uint)(_948)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_948)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_948)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_940));
    _964 = (uint)((uint)((((int)((uint)((uint)((uint)(_956)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_956)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_956)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_948));
    _966 = ((_956 & 16777215) == 0);
    [branch]
    if (_714) {
      _1494 = _27[min((uint)(_828), 1u)];
      _1495 = _28[min((uint)(_828), 1u)];
      _1496 = _29[min((uint)(_828), 1u)];
      if (_966) {
        _1507 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_964)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_964)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_964)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_956))));
      } else {
        _1507 = _956;
      }
      _1508 = _shadowSizeAndInvSize.z * 2.0f;
      _1509 = _shadowSizeAndInvSize.w * 2.0f;
      _1516 = _shadowSizeAndInvSize.z * 2.3841858e-07f;
      _1518 = _shadowSizeAndInvSize.w * 2.3841858e-07f;
      _1522 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1507)) * (uint)(48271))) & 16777215)))) * _1516) - _1508) + _1494;
      _1523 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1507)) * (uint)(-1964877855))) & 16777215)))) * _1518) - _1509) + _1495;
      _1524 = (float)((uint)((uint)(_828)));
      _1531 = _1496 - _826;
      _1547 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1507)) * (uint)(-856141137))) & 16777215)))) * _1516) - _1508) + _1494;
      _1548 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1507)) * (uint)(-613502015))) & 16777215)))) * _1518) - _1509) + _1495;
      _1569 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1507)) * (uint)(-556260145))) & 16777215)))) * _1516) - _1508) + _1494;
      _1570 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1507)) * (uint)(902075297))) & 16777215)))) * _1518) - _1509) + _1495;
      _1591 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1507)) * (uint)(1698214639))) & 16777215)))) * _1516) - _1508) + _1494;
      _1592 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1507)) * (uint)(773027713))) & 16777215)))) * _1518) - _1509) + _1495;
      _1603 = (((saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1547, _1548, _1524), _1531)).x)) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1522, _1523, _1524), _1531)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1569, _1570, _1524), _1531)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1591, _1592, _1524), _1531)).x))) * 0.25f;
      _1604 = (((max(0.0f, (_1496 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1547, _1548, _1524), 0.0f))).x))) + max(0.0f, (_1496 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1522, _1523, _1524), 0.0f))).x)))) + max(0.0f, (_1496 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1569, _1570, _1524), 0.0f))).x)))) + max(0.0f, (_1496 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1591, _1592, _1524), 0.0f))).x)))) * 0.25f;
      _1610 = saturate(_1603 * _1603);  // [sem: expr_sat]
      _1611 = saturate(_1604 * _1604);  // [sem: expr_sat]
      _1612 = 1.0h;
      _1613 = 1.0h;
      _1614 = 1.0h;
    } else {
      _970 = _27[min((uint)(_828), 1u)];
      _971 = _28[min((uint)(_828), 1u)];
      _972 = _29[min((uint)(_828), 1u)];
      _974 = select((_828 == 0), 2.5f, 1.0f);
      if (_966) {
        _987 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_964)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_964)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_964)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_956))));
      } else {
        _987 = _956;
      }
      _988 = select(_171, (_974 * 0.75f), _974) * 0.66f;
      _989 = _988 * _dynmaicShadowSizeAndInvSize.z;
      _990 = _988 * _dynmaicShadowSizeAndInvSize.w;
      _997 = _989 * 1.1920929e-07f;
      _999 = _990 * 1.1920929e-07f;
      _1003 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(48271))) & 16777215)))) * _997) - _989) + _970;
      _1004 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-1964877855))) & 16777215)))) * _999) - _990) + _971;
      _1005 = (float)((uint)((uint)(_828)));
      _1012 = _972 - _826;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1019 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1003, _1004, _1005), 0.0f);
      _1033 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-856141137))) & 16777215)))) * _997) - _989) + _970;
      _1034 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-613502015))) & 16777215)))) * _999) - _990) + _971;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1043 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1033, _1034, _1005), 0.0f);
      _1059 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-556260145))) & 16777215)))) * _997) - _989) + _970;
      _1060 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(902075297))) & 16777215)))) * _999) - _990) + _971;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1069 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1059, _1060, _1005), 0.0f);
      _1085 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1698214639))) & 16777215)))) * _997) - _989) + _970;
      _1086 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(773027713))) & 16777215)))) * _999) - _990) + _971;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1095 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1085, _1086, _1005), 0.0f);
      _1111 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(144866575))) & 16777215)))) * _997) - _989) + _970;
      _1112 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(647683937))) & 16777215)))) * _999) - _990) + _971;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1121 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1111, _1112, _1005), 0.0f);
      _1137 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1284375343))) & 16777215)))) * _997) - _989) + _970;
      _1138 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(229264193))) & 16777215)))) * _999) - _990) + _971;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1147 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1137, _1138, _1005), 0.0f);
      _1163 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-1318861489))) & 16777215)))) * _997) - _989) + _970;
      _1164 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1537293089))) & 16777215)))) * _999) - _990) + _971;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1173 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1163, _1164, _1005), 0.0f);
      _1189 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-1770241169))) & 16777215)))) * _997) - _989) + _970;
      _1190 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1357852417))) & 16777215)))) * _999) - _990) + _971;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1199 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1189, _1190, _1005), 0.0f);
      _1215 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-601883249))) & 16777215)))) * _997) - _989) + _970;
      _1216 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1947444961))) & 16777215)))) * _999) - _990) + _971;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1225 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1215, _1216, _1005), 0.0f);
      _1241 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1166504879))) & 16777215)))) * _997) - _989) + _970;
      _1242 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1335763649))) & 16777215)))) * _999) - _990) + _971;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1251 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1241, _1242, _1005), 0.0f);
      _1267 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-1696913969))) & 16777215)))) * _997) - _989) + _970;
      _1268 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1882071713))) & 16777215)))) * _999) - _990) + _971;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1277 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1267, _1268, _1005), 0.0f);
      _1293 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-1959554065))) & 16777215)))) * _997) - _989) + _970;
      _1294 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-1569511807))) & 16777215)))) * _999) - _990) + _971;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1303 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1293, _1294, _1005), 0.0f);
      _1319 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1318665743))) & 16777215)))) * _997) - _989) + _970;
      _1320 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1898753633))) & 16777215)))) * _999) - _990) + _971;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1329 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1319, _1320, _1005), 0.0f);
      _1345 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(134521903))) & 16777215)))) * _997) - _989) + _970;
      _1346 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-483771839))) & 16777215)))) * _999) - _990) + _971;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1355 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1345, _1346, _1005), 0.0f);
      _1371 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(-413252017))) & 16777215)))) * _997) - _989) + _970;
      _1372 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(2034977313))) & 16777215)))) * _999) - _990) + _971;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1381 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1371, _1372, _1005), 0.0f);
      _1397 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(192849007))) & 16777215)))) * _997) - _989) + _970;
      _1398 = ((((float)((uint)((uint)(((int)((uint)((uint)(_987)) * (uint)(1820286465))) & 16777215)))) * _999) - _990) + _971;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1407 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1397, _1398, _1005), 0.0f);
      _1413 = (((((((((((((((saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1033, _1034, _1005), _1012)).x)) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1003, _1004, _1005), _1012)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1059, _1060, _1005), _1012)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1085, _1086, _1005), _1012)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1111, _1112, _1005), _1012)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1137, _1138, _1005), _1012)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1163, _1164, _1005), _1012)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1189, _1190, _1005), _1012)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1215, _1216, _1005), _1012)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1241, _1242, _1005), _1012)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1267, _1268, _1005), _1012)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1293, _1294, _1005), _1012)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1319, _1320, _1005), _1012)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1345, _1346, _1005), _1012)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1371, _1372, _1005), _1012)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1397, _1398, _1005), _1012)).x))) * 0.0625f;
      _1414 = (((((((((((((((max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1033, _1034, _1005), 0.0f))).x))) + max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1003, _1004, _1005), 0.0f))).x)))) + max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1059, _1060, _1005), 0.0f))).x)))) + max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1085, _1086, _1005), 0.0f))).x)))) + max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1111, _1112, _1005), 0.0f))).x)))) + max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1137, _1138, _1005), 0.0f))).x)))) + max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1163, _1164, _1005), 0.0f))).x)))) + max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1189, _1190, _1005), 0.0f))).x)))) + max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1215, _1216, _1005), 0.0f))).x)))) + max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1241, _1242, _1005), 0.0f))).x)))) + max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1267, _1268, _1005), 0.0f))).x)))) + max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1293, _1294, _1005), 0.0f))).x)))) + max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1319, _1320, _1005), 0.0f))).x)))) + max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1345, _1346, _1005), 0.0f))).x)))) + max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1371, _1372, _1005), 0.0f))).x)))) + max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1397, _1398, _1005), 0.0f))).x)))) * 0.0625f;
      _1469 = half(float(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)((half)(_1043.x) + (half)(_1019.x))) + (half)(_1069.x))) + (half)(_1095.x))) + (half)(_1121.x))) + (half)(_1147.x))) + (half)(_1173.x))) + (half)(_1199.x))) + (half)(_1225.x))) + (half)(_1251.x))) + (half)(_1277.x))) + (half)(_1303.x))) + (half)(_1329.x))) + (half)(_1355.x))) + (half)(_1381.x))) + ((half)((half)(_1407.x) * 2.0h))) * 0.05882353f);
      _1470 = half(float(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)((half)(_1043.y) + (half)(_1019.y))) + (half)(_1069.y))) + (half)(_1095.y))) + (half)(_1121.y))) + (half)(_1147.y))) + (half)(_1173.y))) + (half)(_1199.y))) + (half)(_1225.y))) + (half)(_1251.y))) + (half)(_1277.y))) + (half)(_1303.y))) + (half)(_1329.y))) + (half)(_1355.y))) + (half)(_1381.y))) + ((half)((half)(_1407.y) * 2.0h))) * 0.05882353f);
      _1471 = half(float(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)((half)(_1043.z) + (half)(_1019.z))) + (half)(_1069.z))) + (half)(_1095.z))) + (half)(_1121.z))) + (half)(_1147.z))) + (half)(_1173.z))) + (half)(_1199.z))) + (half)(_1225.z))) + (half)(_1251.z))) + (half)(_1277.z))) + (half)(_1303.z))) + (half)(_1329.z))) + (half)(_1355.z))) + (half)(_1381.z))) + ((half)((half)(_1407.z) * 2.0h))) * 0.05882353f);
      if (_828 == 1) {
        _1474 = float(_1469);
        _1475 = float(_1470);
        _1476 = float(_1471);
        _1477 = -0.0f - _713;
        _1610 = _1413;  // [sem: expr_sat]
        _1611 = _1414;  // [sem: expr_sat]
        _1612 = (half)(half((_1474 + _713) + (_1474 * _1477)));
        _1613 = (half)(half((_1475 + _713) + (_1475 * _1477)));
        _1614 = (half)(half((_1476 + _713) + (_1476 * _1477)));
      } else {
        _1610 = _1413;  // [sem: expr_sat]
        _1611 = _1414;  // [sem: expr_sat]
        _1612 = _1469;
        _1613 = _1470;
        _1614 = _1471;
      }
    }
    _1615 = (_827 != 0);
    _1617 = min(_555, select(_1615, _1610, 1.0f));
    _1621 = select((_711 != 0), select(_1615, (_1611 * 400.0f), 4e+06f), 1.0f);
    _1622 = _1621 + 0.98f;
    if (_171) {
      [branch]
      if (_nearFieldShadowFlag.x > 0.0f) {
        _1631 = (_shadowAOParams.w > 0.0f);
        if (_1631) {
          _1691 = (mad((_nearFieldShadowViewProjCompacted[0].z), _155, mad((_nearFieldShadowViewProjCompacted[0].y), _154, ((_nearFieldShadowViewProjCompacted[0].x) * _153))) + (_nearFieldShadowViewProjCompacted[0].w));
          _1692 = (mad((_nearFieldShadowViewProjCompacted[1].z), _155, mad((_nearFieldShadowViewProjCompacted[1].y), _154, ((_nearFieldShadowViewProjCompacted[1].x) * _153))) + (_nearFieldShadowViewProjCompacted[1].w));
          _1693 = (mad((_nearFieldShadowViewProjCompacted[2].z), _155, mad((_nearFieldShadowViewProjCompacted[2].y), _154, ((_nearFieldShadowViewProjCompacted[2].x) * _153))) + (_nearFieldShadowViewProjCompacted[2].w));
        } else {
          _1691 = (mad((_nearFieldShadowViewProj[0].z), _155, mad((_nearFieldShadowViewProj[0].y), _154, ((_nearFieldShadowViewProj[0].x) * _153))) + (_nearFieldShadowViewProj[0].w));
          _1692 = (mad((_nearFieldShadowViewProj[1].z), _155, mad((_nearFieldShadowViewProj[1].y), _154, ((_nearFieldShadowViewProj[1].x) * _153))) + (_nearFieldShadowViewProj[1].w));
          _1693 = (mad((_nearFieldShadowViewProj[2].z), _155, mad((_nearFieldShadowViewProj[2].y), _154, ((_nearFieldShadowViewProj[2].x) * _153))) + (_nearFieldShadowViewProj[2].w));
        }
        if (!((((_1691 < -1.0f) || (_1691 > 1.0f)) || ((_1692 < -1.0f) || (_1692 > 1.0f))) || ((_1693 < 0.0f) || (_1693 > 1.0f)))) {
          _1706 = (float)((uint)((uint)(_frameNumber.x)));
          _1717 = (frac(((_1706 * 92.0f) + _61) * 0.0078125f) * 128.0f) + -64.34062f;
          _1718 = (frac(((_1706 * 71.0f) + _62) * 0.0078125f) * 128.0f) + -72.46562f;
          _1723 = frac(dot(float3((_1717 * _1717), (_1718 * _1718), (_1718 * _1717)), float3(20.390625f, 60.703125f, 2.4281209f)));
          if (_966) {
            _1738 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_964)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_964)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_964)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_956))));
          } else {
            _1738 = _956;
          }
          _1743 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_1738)) * (uint)(48271))) & 16777215)))) * 3.8146377e-06f);
          _1756 = (frac((((float)((uint)((uint)(_1743)))) * 0.015625f) + (((float)((uint)((uint)(((int)((uint)(_1723 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f)) * 2.0f) + -1.0f;
          _1757 = (((float)((uint)((uint)(reversebits(_1743) ^ ((int)((uint)(_1723 * 2.8747837e+08f))))))) * 4.656613e-10f) + -1.0f;
          _1759 = rsqrt(dot(float2(_1756, _1757), float2(_1756, _1757)));  // [sem: invLength]
          _1760 = _1759 * _1756;
          _1761 = _1757 * _1759;
          _1762 = -0.0f - _1761;
          if (_966) {
            _1774 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_964)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_964)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_964)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_956))));
          } else {
            _1774 = _956;
          }
          _1779 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_1774)) * (uint)(48271))) & 16777215)))) * 9.5307826e-07f);
          if (_1631) {
            _1788 = max(3.0517578e-05f, (min(0.0003f, (_nearFieldShadowBoundsMax.w * 0.00048828125f)) / _nearFieldShadowBoundsMax.w));
          } else {
            _1788 = 0.00048828125f;
          }
          _1801 = 0.0f;
          _1802 = 0;
          while(true) {
            _1805 = ((int)((uint)((uint)((uint)(_1802)) << 2) + (uint)((uint)(_1779)))) & 15;
            _1814 = (_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_1805)) * (uint)(2))))), 31u)]) * _1788;
            _1815 = (_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_1805)) * (uint)(2))))), 31u)]) * _1788;
            _1831 = (1.0f - ((__3__36__0__0__g_nearFieldShadowDepth.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float2((((_1691 * 0.5f) + 0.5f) + mad(_1761, _1815, (_1814 * _1760))), ((0.5f - (_1692 * 0.5f)) + mad(_1760, _1815, (_1814 * _1762)))), (_1693 + -4e-05f))).x)) + _1801;
            _1832 = (int)(_1802) + (int)(1);
            if (!(_1832 == 4)) {
              _1801 = _1831;
              _1802 = _1832;
              continue;
            }
            while(true) {
              _1794 = _153 - (_104 * 0.012f);
              _1795 = _154 - (_105 * 0.012f);
              _1796 = _155 - (_106 * 0.012f);
              if (_shadowAOParams.w > 0.0f) {
                _1893 = (mad((_nearFieldShadowViewProjCompacted[0].z), _1796, mad((_nearFieldShadowViewProjCompacted[0].y), _1795, ((_nearFieldShadowViewProjCompacted[0].x) * _1794))) + (_nearFieldShadowViewProjCompacted[0].w));
                _1894 = (mad((_nearFieldShadowViewProjCompacted[1].z), _1796, mad((_nearFieldShadowViewProjCompacted[1].y), _1795, ((_nearFieldShadowViewProjCompacted[1].x) * _1794))) + (_nearFieldShadowViewProjCompacted[1].w));
                _1895 = (mad((_nearFieldShadowViewProjCompacted[2].z), _1796, mad((_nearFieldShadowViewProjCompacted[2].y), _1795, ((_nearFieldShadowViewProjCompacted[2].x) * _1794))) + (_nearFieldShadowViewProjCompacted[2].w));
              } else {
                _1893 = (mad((_nearFieldShadowViewProj[0].z), _1796, mad((_nearFieldShadowViewProj[0].y), _1795, ((_nearFieldShadowViewProj[0].x) * _1794))) + (_nearFieldShadowViewProj[0].w));
                _1894 = (mad((_nearFieldShadowViewProj[1].z), _1796, mad((_nearFieldShadowViewProj[1].y), _1795, ((_nearFieldShadowViewProj[1].x) * _1794))) + (_nearFieldShadowViewProj[1].w));
                _1895 = (mad((_nearFieldShadowViewProj[2].z), _1796, mad((_nearFieldShadowViewProj[2].y), _1795, ((_nearFieldShadowViewProj[2].x) * _1794))) + (_nearFieldShadowViewProj[2].w));
              }
              _1897 = 0.0f;
              _1898 = 0;
              while(true) {
                _1901 = ((int)((uint)((uint)((uint)(_1898)) << 2) + (uint)((uint)(_1779)))) & 15;
                _1910 = (_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_1901)) * (uint)(2))))), 31u)]) * _1788;
                _1911 = (_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_1901)) * (uint)(2))))), 31u)]) * _1788;
                _1928 = max(0.0f, (_1895 - ((__3__36__0__0__g_nearFieldShadowDepth.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_1893 * 0.5f) + 0.5f) + mad(_1761, _1911, (_1910 * _1760))), ((0.5f - (_1894 * 0.5f)) + mad(_1760, _1911, (_1910 * _1762)))), 0.0f)).x))) + _1897;
                _1929 = (int)(_1898) + (int)(1);
                if (!(_1929 == 4)) {
                  _1897 = _1928;
                  _1898 = _1929;
                  continue;
                }
                _1938 = min(_1617, (_1831 * 0.25f));
                _1939 = max((select(_171, _1622, _1621) + -0.98f), max(0.002f, (_1928 * 25.0f)));
                break;
              }
              break;
            }
            break;
          }
        } else {
          _1938 = _1617;
          _1939 = _1622;
        }
      } else {
        _1938 = _1617;
        _1939 = _1622;
      }
    } else {
      _1938 = _1617;
      _1939 = _1621;
    }
    _1952 = (_1938 - (_shadowAOParams.x * _1938)) + _shadowAOParams.x;
    [branch]
    if (_1952 > 0.0f) {
      _1962 = _77 & 126;
      _1963 = (_1962 == 64);
      _1964 = (_81 == 66);
      _1965 = _1963 || _1964;
      _1966 = select(_1965, 2.0f, 4.0f);
      if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
        _1982 = _sunDirection.x;
        _1983 = _sunDirection.y;
        _1984 = _sunDirection.z;
      } else {
        _1982 = _moonDirection.x;
        _1983 = _moonDirection.y;
        _1984 = _moonDirection.z;
      }
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: Seeds the contact-shadow ray direction carriers with the dominant light direction
      //              the native path just selected. Runs on the main path of the native
      //              shadow-evaluation gate, so the carriers hold the native values on every path that
      //              can reach the micro detail helper call (which is gated on the same condition).
      //              This block only copies values and changes no native result.
      _rndxMicroDirX = _1982;
      _rndxMicroDirY = _1983;
      _rndxMicroDirZ = _1984;
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      _1985 = _59 & 3;
      _1989 = _60 & 3;
      _1995 = (uint)((uint)((uint)(_frameNumber.x)) * (uint)(1551)) + (uint)((uint)((int)(((int)((int)((int)(_1989) << 1) | (int)(_1989)) << 1) & 10) | (int)(((int)((int)(_1985) << 1) | (int)(_1985)) & 5)));
      _2000 = (int)(((int)((uint)((uint)(_1995)) << 2)) & -858993460) | (int)(((uint)((uint)(_1995)) >> 2) & 858993459);
      _2005 = (int)(((int)((uint)((uint)(_2000)) << 1)) & 10) | (int)(((uint)((uint)(_2000)) >> 1) & 21);
      _2008 = (float)((uint)((uint)(_frameNumber.x)));
      _2019 = (frac(((_2008 * 92.0f) + _61) * 0.0078125f) * 128.0f) + -64.34062f;
      _2020 = (frac(((_2008 * 71.0f) + _62) * 0.0078125f) * 128.0f) + -72.46562f;
      _2025 = frac(dot(float3((_2019 * _2019), (_2020 * _2020), (_2020 * _2019)), float3(20.390625f, 60.703125f, 2.4281209f)));
      _2041 = frac((((float)((uint)((uint)(((int)((uint)(_2025 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f) + (((float)((uint)((uint)(_2005)))) * 0.03125f)) * 6.2831855f;
      _2045 = (((1.0f - _shadowAOParams.z) * 2.3283064e-10f) * ((float)((uint)((uint)(reversebits(_2005) ^ ((int)((uint)(_2025 * 2.8747837e+08f)))))))) + _shadowAOParams.z;
      _2048 = sqrt(1.0f - (_2045 * _2045));
      _2051 = cos(_2041) * _2048;
      _2052 = sin(_2041) * _2048;
      _2054 = select((_1984 >= 0.0f), 1.0f, -1.0f);
      _2057 = -0.0f - (1.0f / (_2054 + _1984));
      _2058 = _1983 * _2057;
      _2059 = _2058 * _1982;
      _2060 = _2054 * _1982;
      _2069 = mad(_2045, _1982, mad(_2052, _2059, ((((_2060 * _1982) * _2057) + 1.0f) * _2051)));
      _2073 = mad(_2045, _1983, mad(_2052, (_2054 + (_2058 * _1983)), ((_2051 * _2054) * _2059)));
      _2077 = mad(_2045, _1984, mad(_2052, (-0.0f - _1983), (-0.0f - (_2060 * _2051))));
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: The vanilla contact-shadow ray direction is the sun/moon direction rotated onto a
      //              randomly sampled cone that changes every frame, which the shadow denoiser is expected
      //              to resolve. Contact Micro Shadows adds extra sub-pixel occlusion on top of this march,
      //              and the per-frame cone wobble makes that added detail crawl and shimmer between frames.
      //              While any Contact Micro Shadows quality level is active this substitutes the unrotated
      //              light direction so the added detail is temporally stable; with the feature Off the
      //              vanilla jittered direction is left untouched.
      if (CONTACT_SHADOW_STABLE_DIRECTION == 1.f) {
        _2069 = _1982;
        _2073 = _1983;
        _2077 = _1984;
      }
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      _2078 = select(_1963, 10, 8);
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: The vanilla screen-space contact-shadow ray takes only 8 or 10 march steps depending
      //              on the material class, which undersamples thin and small occluders and leaves gaps in
      //              the contact darkening. While a Contact Micro Shadows quality level is active this
      //              raises the step count toward 16 in proportion to the selected quality; with the
      //              feature Off the vanilla step count is used unchanged.
      if (CONTACT_SHADOW_DETAIL_PATH == 1.f) {
        _2078 = (int)(lerp(float(_2078), 16.0f, CONTACT_SHADOW_MARCH_BLEND) + 0.5f);
      }
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      if (!_171) {
        _2084 = min(0.5f, ((_116 * 0.0025f) + 0.25f));
      } else {
        _2084 = 1.0f;
      }
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: Sets how far along the light direction the contact shadow is allowed to march.
      //              Vanilla caps this path at a 0.01 world-space reach, which is too short to pick up
      //              contact occlusion from anything larger than immediate sub-pixel detail. The lerp
      //              extends the reach toward 0.05 in proportion to the Contact Micro Shadows quality; at
      //              the Off value the lerp returns the vanilla 0.01 exactly, leaving the march unchanged.
      _2090 = ((abs(_1983) * (select(_1965, 12.0f, 2.0f) - _1966)) + _1966) * select(_171, lerp(0.01f, 0.05f, CONTACT_SHADOW_REACH_BLEND), 0.1f);
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      if (!_171) {
        _2098 = max((_116 * select(((uint)((int)(_81) + (int)(-11)) < (uint)9), 0.008f, 0.03f)), _2090);
      } else {
        _2098 = _2090;
      }
      // [sem: expr_sat]
      _2104 = saturate(((_116 * 0.01f) * (1.0f - saturate(dot(float3(_104, _105, _106), float3((-0.0f - (_153 * _157)), (-0.0f - (_154 * _157)), (-0.0f - (_155 * _157))))))) + 0.01f);
      _2111 = (_terrainNormalParams.z > 0.0f);
      if (_2111) {
        _2115 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 255)));
        _2276 = frac(frac(dot(float2(((_2115 * 32.665f) + _61), ((_2115 * 11.815f) + _62)), float2(0.06711056f, 0.00583715f))) * 52.982918f);
      } else {
        _2137 = (uint)((uint)((_bufferSizeAndInvSize.x * _62) + _61)) + (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524))));
        _2145 = (uint)((uint)((((int)((uint)((uint)((uint)(_2137)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2137)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_2137)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _2153 = (uint)((uint)((((int)((uint)((uint)((uint)(_2145)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2145)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_2145)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2137));
        _2161 = (uint)((uint)((((int)((uint)((uint)((uint)(_2153)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2153)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_2153)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2145));
        _2169 = (uint)((uint)((((int)((uint)((uint)((uint)(_2161)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2161)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_2161)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2153));
        _2177 = (uint)((uint)((((int)((uint)((uint)((uint)(_2169)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2169)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_2169)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2161));
        _2185 = (uint)((uint)((((int)((uint)((uint)((uint)(_2177)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2177)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_2177)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2169));
        _2193 = (uint)((uint)((((int)((uint)((uint)((uint)(_2185)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2185)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_2185)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2177));
        _2201 = (uint)((uint)((((int)((uint)((uint)((uint)(_2193)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2193)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_2193)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2185));
        _2209 = (uint)((uint)((((int)((uint)((uint)((uint)(_2201)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2201)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_2201)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2193));
        _2217 = (uint)((uint)((((int)((uint)((uint)((uint)(_2209)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2209)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_2209)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2201));
        _2225 = (uint)((uint)((((int)((uint)((uint)((uint)(_2217)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2217)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_2217)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2209));
        _2233 = (uint)((uint)((((int)((uint)((uint)((uint)(_2225)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2225)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_2225)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2217));
        _2241 = (uint)((uint)((((int)((uint)((uint)((uint)(_2233)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2233)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_2233)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2225));
        _2249 = (uint)((uint)((((int)((uint)((uint)((uint)(_2241)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2241)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_2241)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2233));
        _2257 = (uint)((uint)((((int)((uint)((uint)((uint)(_2249)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2249)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_2249)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2241));
        if ((_2249 & 16777215) == 0) {
          _2270 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_2257)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2257)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_2257)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2249))));
        } else {
          _2270 = _2249;
        }
        _2276 = (((float)((uint)((uint)(((int)((uint)((uint)(_2270)) * (uint)(48271))) & 16777215)))) * 5.9604645e-08f);
      }
      if ((_81 == 15) && (!(_1964 || ((_81 != 15) && ((uint)((int)(_81) + (int)(-12)) < (uint)7))))) {
        // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
        // Description: The contact ray's first sample is offset by a per-pixel random value scaled by this
        //              factor, so neighbouring pixels start at different distances and the march dithers
        //              instead of banding. On this depth-faded material branch vanilla scales the random by
        //              up to 10 units, which pushes the first sample past small nearby occluders and loses
        //              their contact darkening entirely. The lerp pulls the start scale toward 2 as the
        //              Contact Micro Shadows quality rises; at the Off value it returns the vanilla scale
        //              exactly.
        _2288 = ((lerp((10.0f - (saturate(_116 * 0.001f) * 9.0f)), 2.0f, CONTACT_SHADOW_START_BLEND)) * _2276);
        // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      } else {
        _2288 = _2276;
      }
      if (!_2111) {
        _2292 = saturate(_116 * 0.0625f) * 0.05f;
        _2297 = (_2292 * _104);
        _2298 = (_2292 * _105);
        _2299 = (_2292 * _106);
      } else {
        _2297 = 0.0f;
        _2298 = 0.0f;
        _2299 = 0.0f;
      }
      _2300 = _2297 + _153;
      _2301 = _2298 + _154;
      _2302 = _2299 + _155;
      _2315 = mad((_viewRelative[2].z), _2302, mad((_viewRelative[2].y), _2301, ((_viewRelative[2].x) * _2300))) + (_viewRelative[2].w);
      _2318 = mad((_viewRelative[2].z), _2077, mad((_viewRelative[2].y), _2073, ((_viewRelative[2].x) * _2069)));
      _2323 = (((_2318 * _2098) + _2315) < _nearFarProj.x);
      if (_116 < 8.0f) {
        _2327 = select(_2323, ((_nearFarProj.x - _2315) / _2318), _2098);
        _2359 = mad((_viewProjRelative[2].z), _2302, mad((_viewProjRelative[2].y), _2301, ((_viewProjRelative[2].x) * _2300))) + (_viewProjRelative[2].w);
        _2363 = mad((_viewProjRelative[3].z), _2302, mad((_viewProjRelative[3].y), _2301, ((_viewProjRelative[3].x) * _2300))) + (_viewProjRelative[3].w);
        _2367 = (_2327 * _2069) + _2300;
        _2368 = (_2327 * _2073) + _2301;
        _2369 = (_2327 * _2077) + _2302;
        _2385 = mad((_viewProjRelative[3].z), _2369, mad((_viewProjRelative[3].y), _2368, ((_viewProjRelative[3].x) * _2367))) + (_viewProjRelative[3].w);
        _2386 = (mad((_viewProjRelative[0].z), _2302, mad((_viewProjRelative[0].y), _2301, ((_viewProjRelative[0].x) * _2300))) + (_viewProjRelative[0].w)) / _2363;
        _2387 = (mad((_viewProjRelative[1].z), _2302, mad((_viewProjRelative[1].y), _2301, ((_viewProjRelative[1].x) * _2300))) + (_viewProjRelative[1].w)) / _2363;
        _2388 = _2359 / _2363;
        _2392 = ((mad((_viewProjRelative[0].z), _2369, mad((_viewProjRelative[0].y), _2368, ((_viewProjRelative[0].x) * _2367))) + (_viewProjRelative[0].w)) / _2385) - _2386;
        _2393 = ((mad((_viewProjRelative[1].z), _2369, mad((_viewProjRelative[1].y), _2368, ((_viewProjRelative[1].x) * _2367))) + (_viewProjRelative[1].w)) / _2385) - _2387;
        _2396 = 1.0f / ((float)((uint)((uint)(_2078))));
        _2407 = max(_2396, (1.0f / min(1.0f, (max(((_bufferSizeAndInvSize.x * 0.5f) * abs(_2392)), ((_bufferSizeAndInvSize.y * 0.5f) * abs(_2393))) * _2396))));
        _2408 = _2407 * (((mad((_viewProjRelative[2].z), _2369, mad((_viewProjRelative[2].y), _2368, ((_viewProjRelative[2].x) * _2367))) + (_viewProjRelative[2].w)) / _2385) - _2388);
        _2426 = (max(abs(_2408), (_2388 - ((mad((_proj[2].z), _116, 0.0f) + _2359) / (mad((_proj[3].z), _116, 0.0f) + _2363)))) * _2084) * max(0.0625f, _2396);
        _2427 = _2407 * _2396;
        _2429 = (_2392 * 0.5f) * _2427;
        _2431 = (_2393 * -0.5f) * _2427;
        _2432 = _2408 * _2396;
        _2439 = max(_2288, (1.0f / max((abs(_2429) * _bufferSizeAndInvSize.x), (abs(_2431) * _bufferSizeAndInvSize.y))));
        _2446 = 0.5f / _bufferSizeAndInvSize.x;
        _2448 = 0;
        _2449 = (((_2386 * 0.5f) + 0.5f) + (_2439 * _2429));
        _2450 = ((0.5f - (_2387 * 0.5f)) + (_2439 * _2431));
        _2451 = ((_2439 * _2432) + _2388);
        _2452 = _2288;
        _2453 = _2104;
        _2454 = 0;
        _2455 = 0.0f;
        _2456 = 0.0f;
        while(true) {
          // [sem: _3__36__0__0__g_depthStencil_load]
          // RenoDX: >>> [Patch: ShadowEdgeNoiseFix] [Version: 1.16.00]
          // Description: Replaces the vanilla X clamp at this contact-shadow depth load. Vanilla clamps the
          //              sampled X coordinate to the first/last half texel while leaving Y unclamped, so a ray
          //              that walks off the left or right edge of the screen keeps re-reading the same border
          //              column and smears or flickers the shadow it produces there. The macro keeps the
          //              vanilla clamp when the fix is off and passes X through unclamped when it is on, so the
          //              out-of-bounds sample fails instead of stretching the edge column.
          _2465 = __3__36__0__0__g_depthStencil.Load(int3(((int)(SHADOW_CONTACT_SAMPLE_X(_2449, _2446) * _bufferSizeAndInvSize.x)), ((int)(_2450 * _bufferSizeAndInvSize.y)), 0));
          // RenoDX: <<< [Patch: ShadowEdgeNoiseFix]
          _2467 = (uint)((uint)(_2465.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _2470 = ((float)((uint)((uint)(_2465.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _2471 = _2467 & 127;
          _2472 = (_2454 == 0);
          _2473 = select(_2472, 1.0f, _2453);
          _2477 = _nearFarProj.x / max(1e-07f, _2470);
          _2480 = _2477 - (_nearFarProj.x / max(1e-07f, _2451));
          _2484 = (abs((_2451 + _2426) - _2470) < _2426);
          _2485 = (int)(uint)(_2484);
          if (_2484) {
            if ((_2471 == 7) || ((_2471 == 53) || (((_2467 & 126) == 66) || (((uint)((int)(_2471) + (int)(-5)) < (uint)2) || ((_2471 == 107) || ((_2471 == 26) || (((uint)((int)(_2471) + (int)(-27)) < (uint)2) || ((_2471 == 106) || (((_2467 & 125) == 105) || ((_2471 == 18) || ((uint)((int)(_2471) + (int)(-19)) < (uint)2))))))))))) {
              _2521 = true;
              _2528 = ((int)(uint)((int)((_2480 < 0.0f) && (_2480 > select(_2521, -0.08f, -1.0f)))));
            } else {
              if ((_2471 != 67) && ((uint)((int)(_2471) + (int)(-52)) < (uint)16)) {
                _2521 = (_2477 < 32.0f);
                _2528 = ((int)(uint)((int)((_2480 < 0.0f) && (_2480 > select(_2521, -0.08f, -1.0f)))));
              } else {
                _2528 = _2485;
              }
            }
          } else {
            _2528 = _2485;
          }
          if (!(_2528 == 0)) {
            if ((uint)_2471 > (uint)11) {
              if (!((uint)_2471 < (uint)16)) {
                if (!(_2471 == 17)) {
                  if (!(_2471 == 16)) {
                    if (!((_2471 == 18) || ((_2471 == 107) || ((uint)((int)(_2471) + (int)(-19)) < (uint)2)))) {
                      if (!(_2471 == 66)) {
                        _2551 = 0.0f;
                      } else {
                        _2551 = 0.1f;
                      }
                    } else {
                      _2551 = 0.15f;
                    }
                  } else {
                    _2551 = 0.1f;
                  }
                } else {
                  _2551 = 0.7f;
                }
              } else {
                _2551 = 0.9f;
              }
            } else {
              if (!(_2471 == 11)) {
                _2551 = 0.0f;
              } else {
                _2551 = 0.1f;
              }
            }
            _2553 = saturate(_2477 * 0.015625f);  // [sem: expr_sat]
            _2556 = (1.0f - _2553) + (_2553 * _2551);
            _2571 = _2471;
            // [sem: expr_sat]
            // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
            // Description: Rewrites the contact-shadow accumulation so the occlusion term can be scaled
            //              without disturbing the base shadow it is added to. The vanilla expression is
            //              saturate(((saturate(1 - d*d*s) * (1 - base)) * fade) + base): d*d*s is the
            //              accumulated ray occlusion, (1 - base) limits the contribution to the light that is
            //              still unshadowed, and fade is an occluder thickness/penetration confidence ramp
            //              that discards hits whose depth delta is too large to be a real contact. The whole
            //              product is hoisted into a named value and multiplied by a quality-driven gain
            //              (1.0 -> 0.7), so higher Contact Micro Shadows settings reshape the coarse native
            //              contact result before the finer sub-pixel detail is composited on top of it. At the
            //              Off value the gain is exactly 1.0 and the expression reduces to the vanilla one bit
            //              for bit.
            float _microNearAccum = (saturate(1.0f - ((_2556 * _2556) * _2551)) * (1.0f - _2456)) * saturate((-0.0f - _2480) / (_2452 * 0.0046548597f));
            _2572 = saturate((_microNearAccum * lerp(1.0f, 0.7f, CONTACT_SHADOW_BASE_TUNING)) + _2456);
            // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
          } else {
            _2571 = _2448;
            _2572 = _2456;  // [sem: expr_sat]
          }
          if ((_2471 != 0) && (_2572 > 0.95f)) {
            if (!_2472) {
              _2604 = (saturate((_2455 - _2470) / (_2455 - _2451)) - min(_2452, _2473));
            } else {
              _2604 = 0.0f;
            }
            _2902 = _2471;
            _2903 = _2572;
            _2904 = ((_2604 * _2429) + _2449);
            _2905 = ((_2604 * _2431) + _2450);
            _2906 = ((_2604 * _2432) + _2451);
            _2907 = _2470;
          } else {
            if ((uint)_2454 < (uint)((int)(_2078) + (int)(-1))) {
              _2596 = ((_2473 * _2429) + _2449);
              _2597 = ((_2473 * _2431) + _2450);
              _2598 = ((_2473 * _2432) + _2451);
              _2599 = (_2473 + _2452);
              _2600 = _2470;
            } else {
              _2596 = _2449;
              _2597 = _2450;
              _2598 = _2451;
              _2599 = _2452;
              _2600 = _2455;
            }
            _2601 = (int)(_2454) + (int)(1);
            if ((uint)_2601 < (uint)_2078) {
              _2448 = _2571;
              _2449 = _2596;
              _2450 = _2597;
              _2451 = _2598;
              _2452 = _2599;
              _2453 = _2473;
              _2454 = _2601;
              _2455 = _2600;
              _2456 = _2572;
              continue;
            } else {
              _2902 = _2571;
              _2903 = _2572;
              _2904 = _2449;
              _2905 = _2450;
              _2906 = _2451;
              _2907 = _2470;
            }
          }
          break;
        }
      } else {
        _2614 = select(_2323, ((_nearFarProj.x - _2315) / _2318), _2098);
        _2646 = mad((_viewProjRelative[2].z), _2302, mad((_viewProjRelative[2].y), _2301, ((_viewProjRelative[2].x) * _2300))) + (_viewProjRelative[2].w);
        _2650 = mad((_viewProjRelative[3].z), _2302, mad((_viewProjRelative[3].y), _2301, ((_viewProjRelative[3].x) * _2300))) + (_viewProjRelative[3].w);
        _2654 = (_2614 * _2069) + _2300;
        _2655 = (_2614 * _2073) + _2301;
        _2656 = (_2614 * _2077) + _2302;
        _2672 = mad((_viewProjRelative[3].z), _2656, mad((_viewProjRelative[3].y), _2655, ((_viewProjRelative[3].x) * _2654))) + (_viewProjRelative[3].w);
        _2673 = (mad((_viewProjRelative[0].z), _2302, mad((_viewProjRelative[0].y), _2301, ((_viewProjRelative[0].x) * _2300))) + (_viewProjRelative[0].w)) / _2650;
        _2674 = (mad((_viewProjRelative[1].z), _2302, mad((_viewProjRelative[1].y), _2301, ((_viewProjRelative[1].x) * _2300))) + (_viewProjRelative[1].w)) / _2650;
        _2675 = _2646 / _2650;
        _2679 = ((mad((_viewProjRelative[0].z), _2656, mad((_viewProjRelative[0].y), _2655, ((_viewProjRelative[0].x) * _2654))) + (_viewProjRelative[0].w)) / _2672) - _2673;
        _2680 = ((mad((_viewProjRelative[1].z), _2656, mad((_viewProjRelative[1].y), _2655, ((_viewProjRelative[1].x) * _2654))) + (_viewProjRelative[1].w)) / _2672) - _2674;
        _2683 = 1.0f / ((float)((uint)((uint)(_2078))));
        _2694 = max(_2683, (1.0f / min(1.0f, (max(((_bufferSizeAndInvSize.x * 0.5f) * abs(_2679)), ((_bufferSizeAndInvSize.y * 0.5f) * abs(_2680))) * _2683))));
        _2695 = _2694 * (((mad((_viewProjRelative[2].z), _2656, mad((_viewProjRelative[2].y), _2655, ((_viewProjRelative[2].x) * _2654))) + (_viewProjRelative[2].w)) / _2672) - _2675);
        _2714 = ((_2084 * 0.5f) * max(abs(_2695), (_2675 - ((mad((_proj[2].z), _116, 0.0f) + _2646) / (mad((_proj[3].z), _116, 0.0f) + _2650))))) * max(0.0625f, _2683);
        _2715 = _2694 * _2683;
        _2717 = (_2679 * 0.5f) * _2715;
        _2719 = (_2680 * -0.5f) * _2715;
        _2720 = _2695 * _2683;
        _2727 = max(_2288, (1.0f / max((abs(_2717) * _bufferSizeAndInvSize.x), (abs(_2719) * _bufferSizeAndInvSize.y))));
        _2734 = 0.5f / _bufferSizeAndInvSize.x;
        _2736 = 0;
        _2737 = _2104;
        _2738 = _2288;
        _2739 = (((_2673 * 0.5f) + 0.5f) + (_2727 * _2717));
        _2740 = ((0.5f - (_2674 * 0.5f)) + (_2727 * _2719));
        _2741 = ((_2727 * _2720) + _2675);
        _2742 = 0;
        _2743 = 0.0f;
        _2744 = 0.0f;
        // RenoDX: >>> [Patch: ContactSelfIntersectionGuard] [Version: 1.16.00]
        // Description: Builds camera- and light-facing receiver tangent-plane slopes once for the far contact
        // march. The plane is anchored to the receiver's stored device depth, making receiver identity exact
        // while leaving cross-class and degenerate-plane samples on the native path.
        // This body reconstructs position as M . v (row dots), so the plane is transformed with the
        // transpose - column dots. Verify this against the native position reconstruction after any
        // decompiler change; the two conventions are silent mirror images of each other.
        float _rndxSiPlaneW = -mad(_106, _155, mad(_105, _154, (_104 * _153)));
        float _rndxSiPlaneA = mad(_rndxSiPlaneW, (_invViewProjRelative[3].x), mad(_106, (_invViewProjRelative[2].x), mad(_105, (_invViewProjRelative[1].x), (_104 * (_invViewProjRelative[0].x)))));
        float _rndxSiPlaneB = mad(_rndxSiPlaneW, (_invViewProjRelative[3].y), mad(_106, (_invViewProjRelative[2].y), mad(_105, (_invViewProjRelative[1].y), (_104 * (_invViewProjRelative[0].y)))));
        float _rndxSiPlaneC = mad(_rndxSiPlaneW, (_invViewProjRelative[3].z), mad(_106, (_invViewProjRelative[2].z), mad(_105, (_invViewProjRelative[1].z), (_104 * (_invViewProjRelative[0].z)))));
        bool _rndxSiReceiverVulnerable = (((uint)(_81 - 1) < 3u) || (_81 == 15) || (_81 == 97));
        float _rndxSiNdotL = mad(_106, _2077, mad(_105, _2073, (_104 * _2069)));
        bool _rndxSiPlaneValid = _rndxSiReceiverVulnerable && (_rndxSiNdotL > 0.0f) && (_rndxSiPlaneW > 0.0f) && (abs(_rndxSiPlaneC) >= 1.1754943508222875e-38f);
        float _rndxSiInvC = select(_rndxSiPlaneValid, rcp(_rndxSiPlaneC), 0.0f);
        float _rndxSiQx = -_rndxSiPlaneA * _rndxSiInvC;
        float _rndxSiQy = -_rndxSiPlaneB * _rndxSiInvC;
        float _rndxSiPlaneSide = select((_rndxSiPlaneC >= 0.0f), 1.0f, -1.0f);
        // RenoDX: <<< [Patch: ContactSelfIntersectionGuard]
        while(true) {
          // [sem: _3__36__0__0__g_depthStencil_load]
          // RenoDX: >>> [Patch: ShadowEdgeNoiseFix] [Version: 1.16.00]
          // Description: Replaces the vanilla X clamp at this contact-shadow depth load. Vanilla clamps the
          //              sampled X coordinate to the first/last half texel while leaving Y unclamped, so a ray
          //              that walks off the left or right edge of the screen keeps re-reading the same border
          //              column and smears or flickers the shadow it produces there. The macro keeps the
          //              vanilla clamp when the fix is off and passes X through unclamped when it is on, so the
          //              out-of-bounds sample fails instead of stretching the edge column.
          // RenoDX: >>> [Patch: ContactSelfIntersectionGuard] [Version: 1.16.00]
          // Description: Materializes the exact integer texel used by the far depth load so the
          // receiver-plane test evaluates that raster sample rather than the continuous march coordinate.
          int2 _rndxSiSampleTexel = int2(((int)(SHADOW_CONTACT_SAMPLE_X(_2739, _2734) * _bufferSizeAndInvSize.x)), ((int)(_2740 * _bufferSizeAndInvSize.y)));
          // RenoDX: <<< [Patch: ContactSelfIntersectionGuard]
          _2753 = __3__36__0__0__g_depthStencil.Load(int3(_rndxSiSampleTexel, 0));
          // RenoDX: <<< [Patch: ShadowEdgeNoiseFix]
          _2755 = (uint)((uint)(_2753.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _2758 = ((float)((uint)((uint)(_2753.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _2759 = _2755 & 127;
          _2760 = (_2736 == 0);
          _2761 = select(_2760, 1.0f, _2737);
          _2765 = _nearFarProj.x / max(1e-07f, _2758);
          _2768 = _2765 - (_nearFarProj.x / max(1e-07f, _2741));
          _2772 = (abs((_2741 + _2714) - _2758) < _2714);
          _2773 = (int)(uint)(_2772);
          if (_2772) {
            if ((_2759 == 7) || ((_2759 == 53) || (((_2755 & 126) == 66) || (((uint)((int)(_2759) + (int)(-5)) < (uint)2) || ((_2759 == 107) || ((_2759 == 26) || (((uint)((int)(_2759) + (int)(-27)) < (uint)2) || ((_2759 == 106) || (((_2755 & 125) == 105) || ((_2759 == 18) || ((uint)((int)(_2759) + (int)(-19)) < (uint)2))))))))))) {
              _2809 = true;
              _2816 = ((int)(uint)((int)((_2768 < 0.0f) && (_2768 > select(_2809, -0.08f, -1.0f)))));
            } else {
              if ((_2759 != 67) && ((uint)((int)(_2759) + (int)(-52)) < (uint)16)) {
                _2809 = (_2765 < 32.0f);
                _2816 = ((int)(uint)((int)((_2768 < 0.0f) && (_2768 > select(_2809, -0.08f, -1.0f)))));
              } else {
                _2816 = _2773;
              }
            }
          } else {
            _2816 = _2773;
          }
          // RenoDX: >>> [Patch: ContactSelfIntersectionGuard] [Version: 1.16.00]
          // Description: Only a natively accepted sample can be reclassified as a self-intersection miss.
          bool _rndxSiReject = false;
          // RenoDX: <<< [Patch: ContactSelfIntersectionGuard]
          if (!(_2816 == 0)) {
            if ((uint)_2759 > (uint)11) {
              if (!((uint)_2759 < (uint)16)) {
                if (!(_2759 == 17)) {
                  if (!(_2759 == 16)) {
                    if (!((_2759 == 18) || ((_2759 == 107) || ((uint)((int)(_2759) + (int)(-19)) < (uint)2)))) {
                      if (!(_2759 == 66)) {
                        _2839 = 0.0f;
                      } else {
                        _2839 = 0.1f;
                      }
                    } else {
                      _2839 = 0.15f;
                    }
                  } else {
                    _2839 = 0.1f;
                  }
                } else {
                  _2839 = 0.7f;
                }
              } else {
                _2839 = 0.9f;
              }
            } else {
              if (!(_2759 == 11)) {
                _2839 = 0.0f;
              } else {
                _2839 = 0.1f;
              }
            }
            _2841 = saturate(_2765 * 0.015625f);  // [sem: expr_sat]
            _2844 = (1.0f - _2841) + (_2841 * _2839);
            // RenoDX: >>> [Patch: ContactSelfIntersectionGuard] [Version: 1.16.00]
            // Description: Reclassifies only strict same-class samples that are not provably in front of the
            // anchored receiver plane. The finite envelope is fixed by the D24 depth and 10-bit normal
            // representation; a rejected sample takes the native miss state and preserves the previous owner.
            if (_rndxSiPlaneValid && (_2759 == _81)) {
              float _rndxSiNdcX = mad(2.0f, (float(_rndxSiSampleTexel.x) + 0.5f) * _bufferSizeAndInvSize.z, -1.0f);
              float _rndxSiNdcY = mad(-2.0f, (float(_rndxSiSampleTexel.y) + 0.5f) * _bufferSizeAndInvSize.w, 1.0f);
              float _rndxSiPlaneZ = mad(_rndxSiQy, (_rndxSiNdcY - _73), mad(_rndxSiQx, (_rndxSiNdcX - _70), _115));
              float _rndxSiEps = 1.7881395564245394e-07f + (0.001956947147846222f * abs(_rndxSiPlaneZ - _115));
              float _rndxSiFront = _rndxSiPlaneSide * (_2758 - _rndxSiPlaneZ);
              _rndxSiReject = (SHADOW_BAND_FIX != 0.f) && isfinite(_rndxSiPlaneZ) && (_rndxSiPlaneZ >= 0.0f) && (_rndxSiPlaneZ <= 1.0f) && (_rndxSiFront <= _rndxSiEps);
            }
            // RenoDX: <<< [Patch: ContactSelfIntersectionGuard]
            // RenoDX: >>> [Patch: ConnectedPatchEnvelope] [Version: 1.16.00]
            // Description: Suppresses far contact hits finer than the receiver surface's own measured relief.
            // E is the maximum nearer-side deviation, in unorm24 depth codes, of the depth-continuous
            // same-class pixel run along the march direction from that run's fitted slope; a per-step code
            // jump above the window-span bound is a real discontinuity and ends the run, so crests and
            // silhouettes bound E instead of inflating it. A surface cannot cast contact shadows finer than
            // its own representable relief, so hits within E plus one quantization code are LOD/quantization
            // self-structure while genuine occluders sit far outside it. Scope is deliberately narrow: only
            // vulnerable receivers, only same-class samples the native march accepts with no linear
            // separation bound, and only when the run establishes a connected surface - depth-chaotic
            // geometry such as foliage yields no surface evidence and stays fully native. A fully suppressed
            // sample takes the native miss path, preserving the previous owner and accumulator and never
            // terminalizing.
            float _rndxCpeFactor = 1.0f;
            if ((SHADOW_BAND_FIX != 0.f) && (!_rndxSiReject)) {
              bool _rndxCpeListA = ((uint)((int)(_2759) + (int)(-19)) < (uint)2) || ((_2759 == 18) || (((_2755 & 125) == 105) || ((_2759 == 106) || (((uint)((int)(_2759) + (int)(-27)) < (uint)2) || ((_2759 == 26) || ((_2759 == 107) || (((uint)((int)(_2759) + (int)(-5)) < (uint)2) || (((_2755 & 126) == 66) || ((_2759 == 7) || (_2759 == 53))))))))));
              bool _rndxCpeTerrain = (_2759 != 67) && ((uint)((int)(_2759) + (int)(-52)) < (uint)16);
              // The connected relief model is not valid for layered, alpha-tested foliage. Class 15 is
              // both in the measured vulnerable set and in the project's foliage family, so distant leaf
              // cards can form a short depth-continuous run and be mistaken for receiver relief. Keep
              // foliage on the earlier receiver-plane path instead of attenuating real leaf-on-leaf shadow.
              bool _rndxCpeFoliage = (_81 == 15);
              if ((_rndxSiReceiverVulnerable) && ((!_rndxCpeFoliage) && ((_2759 == _81) && ((!_rndxCpeListA) && (!_rndxCpeTerrain))))) {
                if (!_rndxCpeReady) {
                  _rndxCpeReady = true;
                  float2 _rndxCpeDirPx = float2((_2717) * _bufferSizeAndInvSize.x, (_2719) * _bufferSizeAndInvSize.y);
                  float _rndxCpeLen = max(abs(_rndxCpeDirPx.x), abs(_rndxCpeDirPx.y));
                  float2 _rndxCpeStep = select((_rndxCpeLen > 9.999999974752427e-07f), (_rndxCpeDirPx / _rndxCpeLen), float2(1.0f, 0.0f));
                  float _rndxCpeC0 = (float)((uint)(_75.x & 16777215));
                  int _rndxCpeW = ((int)(_bufferSizeAndInvSize.x)) - 1;
                  int _rndxCpeH = ((int)(_bufferSizeAndInvSize.y)) - 1;
                  float _rndxCpePlaneStep = (mad(((_rndxSiQy * -2.0f) * _bufferSizeAndInvSize.w), _rndxCpeStep.y, (((_rndxSiQx * 2.0f) * _bufferSizeAndInvSize.z) * _rndxCpeStep.x))) * 16777216.0f;
                  float _rndxCpePlaneMag = select((_rndxSiPlaneValid && isfinite(_rndxCpePlaneStep)), abs(_rndxCpePlaneStep), 0.0f);
                  float _rndxCpeCm2 = _rndxCpeC0;
                  float _rndxCpeCp2 = _rndxCpeC0;
                  bool _rndxCpeVm2 = false;
                  bool _rndxCpeVp2 = false;
                  {
                    int _rndxCpeRx = ((int)(_59)) - ((int)(round(_rndxCpeStep.x * 2.0f)));
                    int _rndxCpeRy = ((int)(_60)) - ((int)(round(_rndxCpeStep.y * 2.0f)));
                    bool _rndxCpeOn = ((_rndxCpeRx >= 0) && ((_rndxCpeRx <= _rndxCpeW) && ((_rndxCpeRy >= 0) && (_rndxCpeRy <= _rndxCpeH))));
                    uint _rndxCpeWd = __3__36__0__0__g_depthStencil.Load(int3(min(max(_rndxCpeRx, 0), _rndxCpeW), min(max(_rndxCpeRy, 0), _rndxCpeH), 0)).x;
                    if ((_rndxCpeOn) && ((((int)((_rndxCpeWd >> 24) & 127)) == _81))) {
                      _rndxCpeCm2 = (float)((uint)(_rndxCpeWd & 16777215));
                      _rndxCpeVm2 = true;
                    }
                  }
                  {
                    int _rndxCpeRx = ((int)(_59)) + ((int)(round(_rndxCpeStep.x * 2.0f)));
                    int _rndxCpeRy = ((int)(_60)) + ((int)(round(_rndxCpeStep.y * 2.0f)));
                    bool _rndxCpeOn = ((_rndxCpeRx >= 0) && ((_rndxCpeRx <= _rndxCpeW) && ((_rndxCpeRy >= 0) && (_rndxCpeRy <= _rndxCpeH))));
                    uint _rndxCpeWd = __3__36__0__0__g_depthStencil.Load(int3(min(max(_rndxCpeRx, 0), _rndxCpeW), min(max(_rndxCpeRy, 0), _rndxCpeH), 0)).x;
                    if ((_rndxCpeOn) && ((((int)((_rndxCpeWd >> 24) & 127)) == _81))) {
                      _rndxCpeCp2 = (float)((uint)(_rndxCpeWd & 16777215));
                      _rndxCpeVp2 = true;
                    }
                  }
                  float _rndxCpeSp = (_rndxCpeCp2 - _rndxCpeC0) * 0.5f;
                  float _rndxCpeSm = (_rndxCpeC0 - _rndxCpeCm2) * 0.5f;
                  float _rndxCpeSaneCap = mad(4.0f, _rndxCpePlaneMag, 2.0f);
                  bool _rndxCpeVp2s = (_rndxCpeVp2) && (abs(_rndxCpeSp) <= _rndxCpeSaneCap);
                  bool _rndxCpeVm2s = (_rndxCpeVm2) && (abs(_rndxCpeSm) <= _rndxCpeSaneCap);
                  float _rndxCpeSmag;
                  float _rndxCpeSfit;
                  if ((_rndxCpeVp2s) && (_rndxCpeVm2s)) {
                    _rndxCpeSmag = min(abs(_rndxCpeSp), abs(_rndxCpeSm));
                    _rndxCpeSfit = (_rndxCpeCp2 - _rndxCpeCm2) * 0.25f;
                  } else {
                    if (_rndxCpeVp2s) {
                      _rndxCpeSmag = abs(_rndxCpeSp);
                      _rndxCpeSfit = _rndxCpeSp;
                    } else {
                      if (_rndxCpeVm2s) {
                        _rndxCpeSmag = abs(_rndxCpeSm);
                        _rndxCpeSfit = _rndxCpeSm;
                      } else {
                        _rndxCpeSmag = _rndxCpePlaneMag;
                        _rndxCpeSfit = select(_rndxSiPlaneValid, _rndxCpePlaneStep, 0.0f);
                      }
                    }
                  }
                  float _rndxCpeSref = max(_rndxCpeSmag, _rndxCpePlaneMag);
                  float _rndxCpeSlim = _rndxCpeSref + 2.0f;
                  _rndxCpeSfit = min(max(_rndxCpeSfit, (-0.0f - _rndxCpeSlim)), _rndxCpeSlim);
                  float _rndxCpeB = mad(8.0f, _rndxCpeSref, 2.0f);
                  float _rndxCpePrev = _rndxCpeC0;
                  bool _rndxCpeRun = true;
                  {
                    int _rndxCpeRx = ((int)(_59)) + ((int)(round(_rndxCpeStep.x * 1.0f)));
                    int _rndxCpeRy = ((int)(_60)) + ((int)(round(_rndxCpeStep.y * 1.0f)));
                    bool _rndxCpeOn = ((_rndxCpeRx >= 0) && ((_rndxCpeRx <= _rndxCpeW) && ((_rndxCpeRy >= 0) && (_rndxCpeRy <= _rndxCpeH))));
                    uint _rndxCpeWd = __3__36__0__0__g_depthStencil.Load(int3(min(max(_rndxCpeRx, 0), _rndxCpeW), min(max(_rndxCpeRy, 0), _rndxCpeH), 0)).x;
                    float _rndxCpeC = (float)((uint)(_rndxCpeWd & 16777215));
                    if ((_rndxCpeOn) && ((((int)((_rndxCpeWd >> 24) & 127)) == _81) && (abs(_rndxCpeC - _rndxCpePrev) <= _rndxCpeB))) {
                      _rndxCpeE = max(_rndxCpeE, (_rndxCpeC - (_rndxCpeC0 + (_rndxCpeSfit * 1.0f))));
                      _rndxCpePrev = _rndxCpeC;
                    } else {
                      _rndxCpeRun = false;
                    }
                  }
                  if (_rndxCpeRun) {
                    if ((_rndxCpeVp2) && (abs(_rndxCpeCp2 - _rndxCpePrev) <= _rndxCpeB)) {
                      _rndxCpeE = max(_rndxCpeE, (_rndxCpeCp2 - (_rndxCpeC0 + (_rndxCpeSfit * 2.0f))));
                      _rndxCpePrev = _rndxCpeCp2;
                      _rndxCpeEst = true;
                    } else {
                      _rndxCpeRun = false;
                    }
                  }
                  [unroll] for (int _rndxCpeK = 0; _rndxCpeK < 4; _rndxCpeK++) {
                    if (!_rndxCpeRun) { break; }
                    float _rndxCpeD = ((_rndxCpeK == 0) ? 3.0f : ((_rndxCpeK == 1) ? 4.0f : ((_rndxCpeK == 2) ? 6.0f : 8.0f)));
                    int _rndxCpeRx = ((int)(_59)) + ((int)(round(_rndxCpeStep.x * _rndxCpeD)));
                    int _rndxCpeRy = ((int)(_60)) + ((int)(round(_rndxCpeStep.y * _rndxCpeD)));
                    bool _rndxCpeOn = ((_rndxCpeRx >= 0) && ((_rndxCpeRx <= _rndxCpeW) && ((_rndxCpeRy >= 0) && (_rndxCpeRy <= _rndxCpeH))));
                    uint _rndxCpeWd = __3__36__0__0__g_depthStencil.Load(int3(min(max(_rndxCpeRx, 0), _rndxCpeW), min(max(_rndxCpeRy, 0), _rndxCpeH), 0)).x;
                    float _rndxCpeC = (float)((uint)(_rndxCpeWd & 16777215));
                    if ((_rndxCpeOn) && ((((int)((_rndxCpeWd >> 24) & 127)) == _81) && (abs(_rndxCpeC - _rndxCpePrev) <= _rndxCpeB))) {
                      _rndxCpeE = max(_rndxCpeE, (_rndxCpeC - (_rndxCpeC0 + (_rndxCpeSfit * _rndxCpeD))));
                      _rndxCpePrev = _rndxCpeC;
                    } else {
                      _rndxCpeRun = false;
                    }
                  }
                }
                if (_rndxCpeEst) {
                  float _rndxCpeCodeLin = ((_2765) * (_2765)) / (_nearFarProj.x * 16777216.0f);
                  float _rndxCpeSepCodes = abs(_2768) / max(_rndxCpeCodeLin, 9.999999960041972e-13f);
                  float _rndxCpeHalfW = _rndxCpeE + 1.0f;
                  float _rndxCpeT = saturate((_rndxCpeSepCodes - _rndxCpeHalfW) / _rndxCpeHalfW);
                  _rndxCpeFactor = ((_rndxCpeT * _rndxCpeT) * (3.0f - (2.0f * _rndxCpeT)));
                }
              }
            }
            if (_rndxCpeFactor <= 0.0f) {
              _rndxSiReject = true;
            }
            // RenoDX: <<< [Patch: ConnectedPatchEnvelope]
            // RenoDX: >>> [Patch: ContactSelfIntersectionGuard] [Version: 1.16.00]
            // Description: A suppressed sample keeps the previous owner class instead of claiming ownership.
            _2859 = select(_rndxSiReject, _2742, _2759);
            // RenoDX: <<< [Patch: ContactSelfIntersectionGuard]
            // [sem: expr_sat]
            // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
            // Description: Rewrites the contact-shadow accumulation so the occlusion term can be scaled
            //              without disturbing the base shadow it is added to. The vanilla expression is
            //              saturate(((saturate(1 - d*d*s) * (1 - base)) * fade) + base): d*d*s is the
            //              accumulated ray occlusion, (1 - base) limits the contribution to the light that is
            //              still unshadowed, and fade is an occluder thickness/penetration confidence ramp
            //              that discards hits whose depth delta is too large to be a real contact. The whole
            //              product is hoisted into a named value and multiplied by a quality-driven gain
            //              (1.0 -> 0.7), so higher Contact Micro Shadows settings reshape the coarse native
            //              contact result before the finer sub-pixel detail is composited on top of it. At the
            //              Off value the gain is exactly 1.0 and the expression reduces to the vanilla one bit
            //              for bit.
            // RenoDX: >>> [Patch: ConnectedPatchEnvelope] [Version: 1.16.00]
            // Description: Scales this accepted sample's occlusion by the connected-patch envelope factor.
            // Every native factor already in the product is carried through unchanged and the envelope
            // factor is appended, never substituted. A suppressed sample carries the prior accumulation.
            if (!_rndxSiReject) {
              float _microFarAccum = (saturate(1.0f - ((_2844 * _2844) * _2839)) * (1.0f - _2744)) * saturate((-0.0f - _2768) / (_2738 * 0.0046548597f)) * _rndxCpeFactor;
              _2860 = saturate((_microFarAccum * lerp(1.0f, 0.7f, CONTACT_SHADOW_BASE_TUNING)) + _2744);
            } else {
              _2860 = _2744;
            }
            // RenoDX: <<< [Patch: ConnectedPatchEnvelope]
            // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
          } else {
            _2859 = _2742;
            _2860 = _2744;  // [sem: expr_sat]
          }
          // RenoDX: >>> [Patch: ContactSelfIntersectionGuard] [Version: 1.16.00]
          // Description: Prevents a suppressed sample from terminalizing on carried accumulation.
          // Native-rejected, cross-class and genuine samples keep the original exit test.
          if ((!_rndxSiReject) && ((_2759 != 0) && (_2860 > 0.95f))) {
          // RenoDX: <<< [Patch: ContactSelfIntersectionGuard]
            if (!_2760) {
              _2892 = (saturate((_2743 - _2758) / (_2743 - _2741)) - min(_2738, _2761));
            } else {
              _2892 = 0.0f;
            }
            _2902 = _2759;
            _2903 = _2860;
            _2904 = ((_2892 * _2717) + _2739);
            _2905 = ((_2892 * _2719) + _2740);
            _2906 = ((_2892 * _2720) + _2741);
            _2907 = _2758;
          } else {
            if ((uint)_2736 < (uint)((int)(_2078) + (int)(-1))) {
              _2884 = (_2738 + _2761);
              _2885 = (_2739 + (_2761 * _2717));
              _2886 = (_2740 + (_2761 * _2719));
              _2887 = (_2741 + (_2761 * _2720));
              _2888 = _2758;
            } else {
              _2884 = _2738;
              _2885 = _2739;
              _2886 = _2740;
              _2887 = _2741;
              _2888 = _2743;
            }
            _2889 = (int)(_2736) + (int)(1);
            if ((uint)_2889 < (uint)_2078) {
              _2736 = _2889;
              _2737 = _2761;
              _2738 = _2884;
              _2739 = _2885;
              _2740 = _2886;
              _2741 = _2887;
              _2742 = _2859;
              _2743 = _2888;
              _2744 = _2860;
              continue;
            } else {
              _2902 = _2859;
              _2903 = _2860;
              _2904 = 0.0f;
              _2905 = 0.0f;
              _2906 = -1.0f;
              _2907 = 0.0f;
            }
          }
          break;
        }
      }
      _2911 = (_2903 > 0.0f);
      if (_2906 > 0.0f) {
        if (_2911 || (((_2904 >= 0.0f) && (_2904 <= 1.0f)) && ((_2905 >= 0.0f) && (_2905 <= 1.0f)))) {
          _2925 = (_2904 * 2.0f) + -1.0f;
          _2926 = 1.0f - (_2905 * 2.0f);
          _2962 = mad((_invViewProjRelative[3].z), _2906, mad((_invViewProjRelative[3].y), _2926, ((_invViewProjRelative[3].x) * _2925))) + (_invViewProjRelative[3].w);
          if (!(_2902 == 2)) {
            if (_2902 == 3) {
              _2988 = 0.0f;
              _2990 = _2988;
            } else {
              if (_2902 == 21) {
                if (!(_81 == 21)) {
                  _2988 = 0.0f;
                  _2990 = _2988;
                } else {
                  _2990 = 20.0f;
                }
              } else {
                _2981 = (_2902 == 22);
                if (!((_81 == 22) && _2981)) {
                  _2988 = select(_2981, 0.0f, 1.0f);
                  _2990 = _2988;
                } else {
                  _2990 = 20.0f;
                }
              }
            }
          } else {
            if (!(_81 == 2)) {
              _2988 = 0.0f;
              _2990 = _2988;
            } else {
              _2990 = 20.0f;
            }
          }
          if (_559 && (_2903 == 1.0f)) {
            // [sem: expr_sat]
            _3014 = saturate(((((_2098 * 0.9375f) - max(0.0f, dot(float3(_2069, _2073, _2077), float3((((mad((_invViewProjRelative[0].z), _2906, mad((_invViewProjRelative[0].y), _2926, ((_invViewProjRelative[0].x) * _2925))) + (_invViewProjRelative[0].w)) / _2962) - _2300), (((mad((_invViewProjRelative[1].z), _2906, mad((_invViewProjRelative[1].y), _2926, ((_invViewProjRelative[1].x) * _2925))) + (_invViewProjRelative[1].w)) / _2962) - _2301), (((mad((_invViewProjRelative[2].z), _2906, mad((_invViewProjRelative[2].y), _2926, ((_invViewProjRelative[2].x) * _2925))) + (_invViewProjRelative[2].w)) / _2962) - _2302))))) * ((_116 * 0.015625f) + 1.5f)) / _2098) * 0.9375f);
          } else {
            _3014 = _2903;  // [sem: expr_sat]
          }
          _3015 = _3014 * saturate(exp2(min(0.0f, (((_116 * 0.019f) + 0.1f) + (_2990 * ((_nearFarProj.x / max(1e-07f, _2907)) - (_nearFarProj.x / max(1e-07f, _2906)))))) * 1.442695f));
          _3016 = _2902 & -2;
          if (!(_3016 == 6)) {
            if ((((_81 == 33) && (_2902 == 33)) || (!(_81 == 33) && ((_81 == 54) && (_2902 == 54))))) {
              _3093 = (_3015 * 0.01f);
            } else {
              if (!((_2902 == 53) || (_3016 == 66)) || (((_2902 == 53) || (_3016 == 66)) && (!((_1962 == 66) || (_81 == 53))))) {
                if (!_171) {
                  if ((uint)((int)((uint)((uint)(_2902)) + (uint)(-52))) < (uint)16) {
                    _3090 = saturate(_116 * 0.03125f);  // [sem: expr_sat]
                  } else {
                    _3090 = 1.0f;  // [sem: expr_sat]
                  }
                  _3093 = (_3090 * _3015);
                } else {
                  _3093 = _3015;
                }
              } else {
                // [sem: _3__36__0__0__g_baseColor_load]
                _3045 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _2904)), ((int)(_bufferSizeAndInvSize.y * _2905)), 0));
                _3051 = ((float)((uint)((uint)(((uint)((uint)(_3045.x)) >> 8) & 255)))) * 0.003921569f;
                _3054 = ((float)((uint)((uint)(_3045.x & 255)))) * 0.003921569f;
                _3058 = ((float)((uint)((uint)(((uint)((uint)(_3045.y)) >> 8) & 255)))) * 0.003921569f;
                _3059 = _3051 * _3051;
                _3060 = _3054 * _3054;
                _3061 = _3058 * _3058;
                _3093 = (saturate(1.0f - (dot(float3((((_3059 * 0.61312f) + (_3060 * 0.33951f)) + (_3061 * 0.04737f)), (((_3059 * 0.0702f) + (_3060 * 0.91636f)) + (_3061 * 0.01345f)), (((_3059 * 0.02062f) + (_3060 * 0.10958f)) + (_3061 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _3015);
              }
            }
          } else {
            _3093 = (_3015 * 0.01f);
          }
        } else {
          _3093 = 0.0f;
        }
      } else {
        if (_2911) {
          _2925 = (_2904 * 2.0f) + -1.0f;
          _2926 = 1.0f - (_2905 * 2.0f);
          _2962 = mad((_invViewProjRelative[3].z), _2906, mad((_invViewProjRelative[3].y), _2926, ((_invViewProjRelative[3].x) * _2925))) + (_invViewProjRelative[3].w);
          if (!(_2902 == 2)) {
            if (_2902 == 3) {
              _2988 = 0.0f;
              _2990 = _2988;
            } else {
              if (_2902 == 21) {
                if (!(_81 == 21)) {
                  _2988 = 0.0f;
                  _2990 = _2988;
                } else {
                  _2990 = 20.0f;
                }
              } else {
                _2981 = (_2902 == 22);
                if (!((_81 == 22) && _2981)) {
                  _2988 = select(_2981, 0.0f, 1.0f);
                  _2990 = _2988;
                } else {
                  _2990 = 20.0f;
                }
              }
            }
          } else {
            if (!(_81 == 2)) {
              _2988 = 0.0f;
              _2990 = _2988;
            } else {
              _2990 = 20.0f;
            }
          }
          if (_559 && (_2903 == 1.0f)) {
            // [sem: expr_sat]
            _3014 = saturate(((((_2098 * 0.9375f) - max(0.0f, dot(float3(_2069, _2073, _2077), float3((((mad((_invViewProjRelative[0].z), _2906, mad((_invViewProjRelative[0].y), _2926, ((_invViewProjRelative[0].x) * _2925))) + (_invViewProjRelative[0].w)) / _2962) - _2300), (((mad((_invViewProjRelative[1].z), _2906, mad((_invViewProjRelative[1].y), _2926, ((_invViewProjRelative[1].x) * _2925))) + (_invViewProjRelative[1].w)) / _2962) - _2301), (((mad((_invViewProjRelative[2].z), _2906, mad((_invViewProjRelative[2].y), _2926, ((_invViewProjRelative[2].x) * _2925))) + (_invViewProjRelative[2].w)) / _2962) - _2302))))) * ((_116 * 0.015625f) + 1.5f)) / _2098) * 0.9375f);
          } else {
            _3014 = _2903;  // [sem: expr_sat]
          }
          _3015 = _3014 * saturate(exp2(min(0.0f, (((_116 * 0.019f) + 0.1f) + (_2990 * ((_nearFarProj.x / max(1e-07f, _2907)) - (_nearFarProj.x / max(1e-07f, _2906)))))) * 1.442695f));
          _3016 = _2902 & -2;
          if (!(_3016 == 6)) {
            if ((((_81 == 33) && (_2902 == 33)) || (!(_81 == 33) && ((_81 == 54) && (_2902 == 54))))) {
              _3093 = (_3015 * 0.01f);
            } else {
              if (!((_2902 == 53) || (_3016 == 66)) || (((_2902 == 53) || (_3016 == 66)) && (!((_1962 == 66) || (_81 == 53))))) {
                if (!_171) {
                  if ((uint)((int)((uint)((uint)(_2902)) + (uint)(-52))) < (uint)16) {
                    _3090 = saturate(_116 * 0.03125f);  // [sem: expr_sat]
                  } else {
                    _3090 = 1.0f;  // [sem: expr_sat]
                  }
                  _3093 = (_3090 * _3015);
                } else {
                  _3093 = _3015;
                }
              } else {
                // [sem: _3__36__0__0__g_baseColor_load]
                _3045 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _2904)), ((int)(_bufferSizeAndInvSize.y * _2905)), 0));
                _3051 = ((float)((uint)((uint)(((uint)((uint)(_3045.x)) >> 8) & 255)))) * 0.003921569f;
                _3054 = ((float)((uint)((uint)(_3045.x & 255)))) * 0.003921569f;
                _3058 = ((float)((uint)((uint)(((uint)((uint)(_3045.y)) >> 8) & 255)))) * 0.003921569f;
                _3059 = _3051 * _3051;
                _3060 = _3054 * _3054;
                _3061 = _3058 * _3058;
                _3093 = (saturate(1.0f - (dot(float3((((_3059 * 0.61312f) + (_3060 * 0.33951f)) + (_3061 * 0.04737f)), (((_3059 * 0.0702f) + (_3060 * 0.91636f)) + (_3061 * 0.01345f)), (((_3059 * 0.02062f) + (_3060 * 0.10958f)) + (_3061 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _3015);
              }
            }
          } else {
            _3093 = (_3015 * 0.01f);
          }
        } else {
          _3093 = 0.0f;
        }
      }
      _3097 = saturate(1.0f - _3093);  // [sem: expr_sat]
    } else {
      _3097 = 1.0f;  // [sem: expr_sat]
    }
    // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
    // Description: The native contact-shadow march is a short ray with very few steps, so it misses
    //              sub-pixel and small-scale occluders and leaves surface detail such as ground litter,
    //              pebbles, cloth folds and foliage sitting on the ground without any contact darkening.
    //              This calls the shared depth-bias micro detail shadow helper, which re-marches the
    //              depth buffer with a continuous thickness window instead of a binary hit test and
    //              returns a darkened contact value. The helper returns its input unchanged when
    //              Contact Micro Shadows is Off, so the vanilla shadow value is preserved. The whole
    //              region is gated on the same native shadow-evaluation condition that seeds the ray
    //              carriers: when that gate is skipped the carriers were never given real values, and
    //              the native composite below takes min(gateValue, contactValue). On that edge the native
    //              else-branch sets contactValue to exactly 1.0 and gateValue is <= 0, so the min returns the
    //              gate value and the helper result could not affect the output there. The same holds if
    //              gateValue is NaN: the native if/else still yields 1.0 and the min resolves to the non-NaN
    //              operand, so gating actually restores vanilla for that pixel, where the un-gated form would
    //              have marched with unseeded carriers and could have returned less than 1.0.
    if (_1952 > 0.0f) {
      _3097 = ApplyContactMicroDetailShadow(
          _3097,
          float2(_61, _62),
          _116,
          _81,
          float3(_rndxMicroDirX, _rndxMicroDirY, _rndxMicroDirZ),
          float3(_153, _154, _155),
          CONTACT_MICRO_DETAIL_STRENGTH,
          (CONTACT_SHADOW_IS_FULL ? -0.022f : -0.025f),
          (CONTACT_SHADOW_IS_FULL ? 3.10f : 3.0f),
          CONTACT_MICRO_RANGE_NEAR,
          CONTACT_MICRO_RANGE_FAR,
          CONTACT_MICRO_THICKNESS_MULTIPLIER,
          CONTACT_MICRO_OCCLUSION_SCALE,
          CONTACT_MICRO_SELF_REJECT_PIXELS,
          2.0f,
          1.0f,
          1.0f);
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: The micro detail shadow helper marches in screen space, so close to the frame border
      //              its ray walks out of the depth buffer, loses the occluders that would have been found
      //              there and produces an abrupt brightness seam along the edges of the image. This
      //              attenuates the helper's extra darkening toward the border, falling back to a
      //              half-strength blend at the outermost pixels so the transition is smooth. It only runs
      //              when a Contact Micro Shadows quality level is active, so the vanilla value is
      //              untouched when the feature is Off.
      if (CONTACT_SHADOW_DETAIL_PATH == 1.f && _3097 < 1.0f) {
        float2 _rndxMicroScreenUV = float2((_61 + 0.5f) * _bufferSizeAndInvSize.z,
                                           (_62 + 0.5f) * _bufferSizeAndInvSize.w);
        float2 _rndxMicroEdgeDist = min(_rndxMicroScreenUV, 1.0f - _rndxMicroScreenUV);
        float _rndxMicroEdgeFade = saturate(min(_rndxMicroEdgeDist.x, _rndxMicroEdgeDist.y) * 10.0f);
        _3097 = lerp(lerp(1.0f, _3097, 0.5f), _3097, _rndxMicroEdgeFade);
      }
    }
    // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
    _3098 = min(_1952, _3097);
    _3112 = float(half(_3098 * float(_1612)));
    _3113 = float(half(_3098 * float(_1613)));
    _3114 = float(half(_3098 * float(_1614)));
    _3115 = saturate((1.0f - _555) + (exp2(log2(saturate(_1939)) * 0.45454544f) * _555));  // [sem: expr_sat]
  }
  __3__38__0__1__g_shadowColorResultUAV[int2(_59, _60)] = float4((half)(half(_3112)), (half)(half(_3113)), (half)(half(_3114)), (half)(half(_3115)));
}
