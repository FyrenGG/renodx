struct anon {
  float4 _shadowDepthRanges;
  float4 _massiveShadowSizeAndInvSize;
  uint4 _shadowParam;
  int4 _updateIndex;
  float4 _jitterOffset[8];
  float4 _shadowRelativePosition;
  float4 _dynmaicShadowSizeAndInvSize;
  column_major float4x4 _dynamicShadowProjTexScale[2][2];
  column_major float4x4 _dynamicShadowProjRelativeTexScale[2][2];
  float4 _dynamicShadowFrustumPlanes0[6];
  float4 _dynamicShadowFrustumPlanes1[6];
  column_major float4x4 _dynamicShadowViewProj[2][2];
  column_major float4x4 _dynamicShadowViewProjPrev[2][2];
  column_major float4x4 _invDynamicShadowViewProj[2][2];
  float4 _dynamicShadowPosition[2];
  float4 _shadowSizeAndInvSize;
  column_major float4x4 _shadowProjTexScale[2][2];
  column_major float4x4 _shadowProjRelativeTexScale[2][2];
  float4 _staticShadowPosition[2];
  column_major float4x4 _shadowViewProj[2][2];
  column_major float4x4 _shadowViewProjRelative[2][2];
  column_major float4x4 _invShadowViewProj[2][2];
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
};

struct anon_0 {
  uint4 g_tileIndex[4096];
};


Texture2D<float4> __3__36__0__0__g_terrainShadowDepth : register(t37, space36);

Texture2DArray<float4> __3__36__0__0__g_dynamicShadowDepthArray : register(t236, space36);

Texture2DArray<uint2> __3__36__0__0__g_dynamicShadowStencilArray : register(t237, space36);

Texture2DArray<half4> __3__36__0__0__g_dynamicShadowColorArray : register(t238, space36);

Texture2DArray<float4> __3__36__0__0__g_shadowDepthArray : register(t239, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t18, space36);

Texture2D<uint> __3__36__0__0__g_depthStencil : register(t49, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t50, space36);

Texture2D<float2> __3__36__0__0__g_raytracedShadow : register(t131, space36);

RWTexture2D<half4> __3__38__0__1__g_shadowColorResultUAV : register(u38, space38);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b15, space35) {
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

cbuffer __3__35__0__0__ShadowConstantBuffer : register(b35, space35) {
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

cbuffer __3__35__0__0__TileConstantBuffer : register(b26, space35) {
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

[numthreads(8, 8, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  int4 _34;
  int _46;
  int _50;
  uint _56;
  uint _63;
  float _64;
  float _65;
  float _69;
  float _72;
  float _74;
  float _76;
  uint _78;
  int _80;
  float _83;
  int _84;
  uint _86;
  float _92;
  float _98;
  float _104;
  float _106;
  float _107;
  float _108;
  float _109;
  bool _110;
  int _371;
  float _554;
  float _567;
  float _568;
  float _569;
  float _643;
  int _644;
  float _645;
  int _769;
  float _770;
  bool _819;
  int _820;
  float _821;
  int _822;
  int _823;
  float _824;
  int _979;
  int _1100;
  half _1345;
  half _1346;
  half _1347;
  bool _1348;
  float _1349;
  float _1350;
  float _1591;
  float _1592;
  float _1593;
  half _1594;
  half _1595;
  half _1596;
  float _1831;
  float _1832;
  float _1833;
  half _1834;
  half _1835;
  half _1836;
  half _2071;
  half _2072;
  half _2073;
  float _2074;
  float _2075;
  float _2076;
  half _2077;
  half _2078;
  half _2079;
  half _2115;
  half _2116;
  half _2117;
  int _2128;
  float _2129;
  float _2130;
  float _2227;
  half _2250;
  half _2251;
  half _2252;
  float _2253;
  float _2254;
  float _2290;
  float _2291;
  float _2292;
  float _2393;
  float _2408;
  int _2570;
  float _2576;
  float _2585;
  float _2594;
  float _2595;
  float _2596;
  float _2760;
  float _2761;
  int _2762;
  int _2763;
  float _2764;
  float _2765;
  float _2766;
  float _2767;
  float _2768;
  int _2846;
  float _2870;
  float _2890;
  int _2891;
  float _2915;
  float _2916;
  float _2917;
  float _2918;
  float _2919;
  float _2925;
  float _2978;
  float _3023;
  float _3064;
  float _3113;
  float _3114;
  float _3115;
  float _3116;
  int _3117;
  float _3152;
  float _3197;
  float _3240;
  float _3288;
  float _3292;
  float _3317;
  float _3318;
  float _3319;
  float _3320;
  float _114;
  float _116;
  float _119;
  float _131;
  float _140;
  float _149;
  float _158;
  float _160;
  int _167;
  bool _168;
  float _180;
  float _188;
  float _196;
  float _209;
  float _215;
  float _221;
  float _226;
  uint _238;
  uint _246;
  uint _254;
  uint _262;
  uint _270;
  uint _278;
  uint _286;
  uint _294;
  uint _302;
  uint _310;
  uint _318;
  uint _326;
  uint _334;
  uint _342;
  uint _350;
  uint _358;
  uint _376;
  float _385;
  float _387;
  float _394;
  float _396;
  float _399;
  float _401;
  float _405;
  float _408;
  float _411;
  float4 _414;
  float _419;
  float _421;
  float _423;
  float _428;
  float _432;
  float _435;
  float _438;
  float4 _439;
  float _445;
  float _447;
  float _452;
  float _456;
  float _459;
  float _462;
  float4 _463;
  float _469;
  float _471;
  float _476;
  float _480;
  float _483;
  float _486;
  float4 _487;
  float _493;
  float _495;
  float _500;
  float _557;
  bool _558;
  float _587;
  float _595;
  float _603;
  float _606;
  float _607;
  bool _613;
  float _627;
  float _633;
  float _657;
  float _665;
  float _673;
  float _692;
  float _698;
  float _712;
  float _714;
  float _716;
  float _719;
  float _721;
  float _723;
  float _735;
  float _743;
  float _751;
  float _754;
  float _755;
  float _773;
  float _775;
  float _777;
  float _789;
  float _797;
  float _805;
  uint _838;
  uint _846;
  uint _854;
  uint _862;
  uint _870;
  uint _878;
  uint _886;
  uint _894;
  uint _902;
  uint _910;
  uint _918;
  uint _926;
  uint _934;
  uint _942;
  uint _950;
  uint _958;
  bool _960;
  int _961;
  float _966;
  float _967;
  float _968;
  float _982;
  float _984;
  float _985;
  float _986;
  float _992;
  float _998;
  float _999;
  float _1000;
  float _1006;
  float _1012;
  float _1018;
  float _1024;
  float _1030;
  float _1036;
  float _1058;
  float _1079;
  float _1085;
  float _1086;
  float _1087;
  float _1089;
  float _1103;
  float _1105;
  float _1107;
  float _1108;
  float _1109;
  float _1113;
  float _1119;
  float _1125;
  float _1128;
  float _1130;
  float _1131;
  float _1132;
  int _1134;
  int _1136;
  uint _1137;
  uint _1138;
  uint _1139;
  uint _1140;
  float4 _1146;
  float4 _1148;
  float4 _1150;
  float4 _1152;
  half4 _1155;
  float _1160;
  float _1162;
  float _1166;
  float _1170;
  float _1177;
  float _1182;
  int _1183;
  float4 _1185;
  float4 _1190;
  float4 _1195;
  float4 _1200;
  float _1205;
  float _1207;
  float _1209;
  float _1211;
  float _1213;
  float _1215;
  float _1216;
  float _1218;
  float _1220;
  float _1222;
  float _1224;
  float _1226;
  float _1228;
  float _1230;
  float _1232;
  float _1234;
  half _1351;
  half _1352;
  half _1353;
  float _1354;
  float _1355;
  float _1356;
  float _1362;
  float _1368;
  float _1370;
  float _1372;
  float _1373;
  float _1374;
  int _1376;
  int _1378;
  uint _1379;
  uint _1380;
  float4 _1386;
  float4 _1388;
  float4 _1390;
  float4 _1392;
  half4 _1395;
  float _1400;
  float _1402;
  float _1406;
  float _1410;
  float _1417;
  float _1422;
  int _1423;
  float4 _1425;
  float4 _1430;
  float4 _1435;
  float4 _1440;
  float _1445;
  float _1447;
  float _1449;
  float _1451;
  float _1453;
  float _1455;
  float _1456;
  float _1458;
  float _1460;
  float _1462;
  float _1464;
  float _1466;
  float _1468;
  float _1470;
  float _1472;
  float _1474;
  float _1602;
  float _1608;
  float _1610;
  float _1612;
  float _1613;
  float _1614;
  int _1616;
  int _1618;
  uint _1619;
  uint _1620;
  float4 _1626;
  float4 _1628;
  float4 _1630;
  float4 _1632;
  half4 _1635;
  float _1640;
  float _1642;
  float _1646;
  float _1650;
  float _1657;
  float _1662;
  int _1663;
  float4 _1665;
  float4 _1670;
  float4 _1675;
  float4 _1680;
  float _1685;
  float _1687;
  float _1689;
  float _1691;
  float _1693;
  float _1695;
  float _1696;
  float _1698;
  float _1700;
  float _1702;
  float _1704;
  float _1706;
  float _1708;
  float _1710;
  float _1712;
  float _1714;
  float _1842;
  float _1848;
  float _1850;
  float _1852;
  float _1853;
  float _1854;
  int _1856;
  int _1858;
  uint _1859;
  uint _1860;
  float4 _1866;
  float4 _1868;
  float4 _1870;
  float4 _1872;
  half4 _1875;
  float _1880;
  float _1882;
  float _1886;
  float _1890;
  float _1897;
  float _1902;
  int _1903;
  float4 _1905;
  float4 _1910;
  float4 _1915;
  float4 _1920;
  float _1925;
  float _1927;
  float _1929;
  float _1931;
  float _1933;
  float _1935;
  float _1936;
  float _1938;
  float _1940;
  float _1942;
  float _1944;
  float _1946;
  float _1948;
  float _1950;
  float _1952;
  float _1954;
  float _2081;
  float _2083;
  half _2087;
  half _2091;
  half _2095;
  float _2098;
  float _2099;
  float _2100;
  float _2101;
  float2 _2120;
  float _2123;
  float _2124;
  float _2126;
  uint _2131;
  float _2135;
  float _2140;
  float _2141;
  float _2142;
  float _2145;
  float _2148;
  float _2157;
  float _2169;
  float _2179;
  float _2189;
  float _2199;
  float _2205;
  float _2210;
  float _2211;
  float _2237;
  float _2238;
  int _2239;
  bool _2255;
  float _2257;
  float _2261;
  float _2266;
  int _2269;
  bool _2270;
  bool _2272;
  float _2273;
  int _2293;
  int _2294;
  uint _2306;
  int _2311;
  int _2316;
  float _2317;
  float _2323;
  float _2329;
  float _2334;
  float _2344;
  float _2354;
  float _2357;
  float _2359;
  float _2361;
  float _2363;
  float _2366;
  float _2367;
  float _2368;
  float _2369;
  float _2375;
  float _2381;
  float _2386;
  int _2387;
  float _2400;
  bool _2411;
  float _2415;
  uint _2437;
  uint _2445;
  uint _2453;
  uint _2461;
  uint _2469;
  uint _2477;
  uint _2485;
  uint _2493;
  uint _2501;
  uint _2509;
  uint _2517;
  uint _2525;
  uint _2533;
  uint _2541;
  uint _2549;
  uint _2557;
  float _2589;
  float _2597;
  float _2598;
  float _2599;
  float _2611;
  float _2614;
  float _2622;
  float _2634;
  float _2642;
  float _2644;
  float _2646;
  float _2648;
  float _2652;
  float _2661;
  float _2670;
  float _2671;
  float _2677;
  float _2683;
  float _2685;
  float _2699;
  float _2706;
  float _2721;
  float _2722;
  float _2724;
  float _2726;
  float _2727;
  float _2734;
  float _2735;
  uint _2780;
  int _2782;
  float _2785;
  int _2786;
  bool _2787;
  float _2788;
  float _2792;
  float _2795;
  bool _2799;
  int _2800;
  float _2872;
  float _2875;
  int _2920;
  float _2927;
  float _2929;
  float _2931;
  bool _2932;
  float _2945;
  float _2947;
  float _2959;
  bool _2969;
  float _3035;
  int _3036;
  uint4 _3072;
  float _3078;
  float _3081;
  float _3085;
  float _3086;
  float _3087;
  float _3088;
  float _3119;
  float _3121;
  float _3133;
  bool _3143;
  float _3211;
  int _3212;
  uint4 _3248;
  float _3254;
  float _3257;
  float _3261;
  float _3262;
  float _3263;
  float _3264;
  float _3293;
  int __loop_jump_target = -1;
  int _25[4];
  float _26[2];
  float _27[2];
  float _28[2];
  _34 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _25[0] = _34.x;
  _25[1] = _34.y;
  _25[2] = _34.z;
  _25[3] = _34.w;
  _46 = _25[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _50 = select((((int)(SV_GroupID.x) & 16) == 0), _46, ((uint)((uint)(_46)) >> 16));
  _56 = (uint)((uint)((int)((int)(((int)((uint)((uint)(_50)) << 2)) & 1020) | (int)((int)(SV_GroupID.x) & 3)) << 3)) + (uint)(SV_GroupThreadID.x);
  _63 = (uint)((uint)((int)((int)(((uint)((uint)(_50)) >> 6) & 1020) | (int)(((uint)(SV_GroupID.x) >> 2) & 3)) << 3)) + (uint)(SV_GroupThreadID.y);
  _64 = (float)((uint)((uint)(_56)));
  _65 = (float)((uint)((uint)(_63)));
  _69 = (_64 + 0.5f) * _bufferSizeAndInvSize.z;
  _72 = (_65 + 0.5f) * _bufferSizeAndInvSize.w;
  _74 = (_69 * 2.0f) + -1.0f;
  _76 = 1.0f - (_72 * 2.0f);
  _78 = __3__36__0__0__g_depthStencil.Load(int3(_56, _63, 0));  // [sem: _3__36__0__0__g_depthStencil_load]
  _80 = (uint)((uint)(_78.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _83 = ((float)((uint)((uint)(_78.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _84 = _80 & 127;
  _86 = __3__36__0__0__g_sceneNormal.Load(int3(_56, _63, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
  _92 = min(1.0f, ((((float)((uint)((uint)(_86.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _98 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_86.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _104 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_86.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _106 = rsqrt(dot(float3(_92, _98, _104), float3(_92, _98, _104)));  // [sem: invLength]
  _107 = _106 * _92;
  _108 = _106 * _98;
  _109 = _106 * _104;
  _110 = (_83 == 1.0f);
  if ((_83 < 1e-07f) || _110) {
    _114 = select(_110, 0.0f, 1.0f);
    _3317 = _114;
    _3318 = _114;
    _3319 = _114;
    _3320 = _114;  // [sem: expr_sat]
  } else {
    _116 = max(1e-07f, _83);
    _119 = _nearFarProj.x / _116;
    _131 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _116, mad((_invViewProjRelative[3].y), _76, ((_invViewProjRelative[3].x) * _74)));
    _140 = (mad((_invViewProjRelative[0].z), _116, mad((_invViewProjRelative[0].y), _76, ((_invViewProjRelative[0].x) * _74))) + (_invViewProjRelative[0].w)) / _131;
    _149 = (mad((_invViewProjRelative[1].z), _116, mad((_invViewProjRelative[1].y), _76, ((_invViewProjRelative[1].x) * _74))) + (_invViewProjRelative[1].w)) / _131;
    _158 = (mad((_invViewProjRelative[2].z), _116, mad((_invViewProjRelative[2].y), _76, ((_invViewProjRelative[2].x) * _74))) + (_invViewProjRelative[2].w)) / _131;
    _160 = rsqrt(dot(float3(_140, _149, _158), float3(_140, _149, _158)));  // [sem: invLength]
    _26[0] = 0.0f;
    _27[0] = 0.0f;
    _28[0] = 0.0f;
    _26[1] = 0.0f;
    _27[1] = 0.0f;
    _28[1] = 0.0f;
    _167 = (int)(_84) + (int)(-52);
    _168 = ((uint)_167 < (uint)16);
    _180 = (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z), _158, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y), _149, ((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x) * _140)));
    _188 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _158, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _149, ((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x) * _140))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].w);
    _196 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _158, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _149, ((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x) * _140))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].w);
    if ((_196 <= 1.0f) && ((saturate(_180) == _180) && (_196 >= 0.0001f))) {
      if (saturate(_188) == _188) {
        _209 = (float)((uint)((uint)(_frameNumber.x)));
        _215 = (frac(((_209 * 92.0f) + _64) * 0.0078125f) * 128.0f) + -64.34062f;
        _221 = (frac(((_209 * 71.0f) + _65) * 0.0078125f) * 128.0f) + -72.46562f;
        _226 = frac(dot(float3((_215 * _215), (_221 * _221), (_221 * _215)), float3(20.390625f, 60.703125f, 2.4281209f)));
        _238 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_65 * _bufferSizeAndInvSize.x) + _64));
        _246 = (uint)((uint)((((int)((uint)((uint)((uint)(_238)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_238)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_238)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _254 = (uint)((uint)((((int)((uint)((uint)((uint)(_246)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_246)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_246)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_238));
        _262 = (uint)((uint)((((int)((uint)((uint)((uint)(_254)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_254)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_254)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_246));
        _270 = (uint)((uint)((((int)((uint)((uint)((uint)(_262)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_262)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_262)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_254));
        _278 = (uint)((uint)((((int)((uint)((uint)((uint)(_270)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_270)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_270)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_262));
        _286 = (uint)((uint)((((int)((uint)((uint)((uint)(_278)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_278)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_278)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_270));
        _294 = (uint)((uint)((((int)((uint)((uint)((uint)(_286)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_286)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_286)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_278));
        _302 = (uint)((uint)((((int)((uint)((uint)((uint)(_294)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_294)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_294)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_286));
        _310 = (uint)((uint)((((int)((uint)((uint)((uint)(_302)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_302)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_302)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_294));
        _318 = (uint)((uint)((((int)((uint)((uint)((uint)(_310)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_310)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_310)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_302));
        _326 = (uint)((uint)((((int)((uint)((uint)((uint)(_318)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_318)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_318)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_310));
        _334 = (uint)((uint)((((int)((uint)((uint)((uint)(_326)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_326)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_326)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_318));
        _342 = (uint)((uint)((((int)((uint)((uint)((uint)(_334)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_334)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_334)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_326));
        _350 = (uint)((uint)((((int)((uint)((uint)((uint)(_342)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_342)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_342)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_334));
        _358 = (uint)((uint)((((int)((uint)((uint)((uint)(_350)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_350)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_350)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_342));
        if ((_350 & 16777215) == 0) {
          _371 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_358)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_358)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_358)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_350))));
        } else {
          _371 = _350;
        }
        _376 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_371)) * (uint)(48271))) & 16777215)))) * 3.8146377e-06f);
        _385 = frac((((float)((uint)((uint)(_376)))) * 0.015625f) + (((float)((uint)((uint)(((int)((uint)(_226 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f));
        _387 = (_385 * 2.0f) + -1.0f;
        _394 = (((float)((uint)((uint)(reversebits(_376) ^ ((int)((uint)(_226 * 2.8747837e+08f))))))) * 4.656613e-10f) + -1.0f;
        _396 = rsqrt(dot(float2(_387, _394), float2(_387, _394)));  // [sem: invLength]
        _399 = _396 * ((_385 * 0.0009765625f) + -0.00048828125f);
        _401 = (_396 * 0.00048828125f) * _394;
        _405 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[0].x) * _399) + _180;
        _408 = (_401 * (__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[0].y)) + _188;
        _411 = frac((_405 * 1024.0f) + -0.5f);
        _414 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_405, _408));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _419 = _196 + -0.005f;
        _421 = select((_414.w > _419), 1.0f, 0.0f);
        _423 = select((_414.x > _419), 1.0f, 0.0f);
        _428 = ((select((_414.z > _419), 1.0f, 0.0f) - _421) * _411) + _421;
        _432 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[1].x) * _399) + _180;
        _435 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[1].y) * _401) + _188;
        _438 = frac((_432 * 1024.0f) + -0.5f);
        _439 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_432, _435));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _445 = select((_439.w > _419), 1.0f, 0.0f);
        _447 = select((_439.x > _419), 1.0f, 0.0f);
        _452 = ((select((_439.z > _419), 1.0f, 0.0f) - _445) * _438) + _445;
        _456 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[2].x) * _399) + _180;
        _459 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[2].y) * _401) + _188;
        _462 = frac((_456 * 1024.0f) + -0.5f);
        _463 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_456, _459));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _469 = select((_463.w > _419), 1.0f, 0.0f);
        _471 = select((_463.x > _419), 1.0f, 0.0f);
        _476 = ((select((_463.z > _419), 1.0f, 0.0f) - _469) * _462) + _469;
        _480 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[3].x) * _399) + _180;
        _483 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[3].y) * _401) + _188;
        _486 = frac((_480 * 1024.0f) + -0.5f);
        _487 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_480, _483));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _493 = select((_487.w > _419), 1.0f, 0.0f);
        _495 = select((_487.x > _419), 1.0f, 0.0f);
        _500 = ((select((_487.z > _419), 1.0f, 0.0f) - _493) * _486) + _493;
        _554 = ((((saturate((frac((_408 * 1024.0f) + -0.5f) * ((((select((_414.y > _419), 1.0f, 0.0f) - _423) * _411) + _423) - _428)) + _428) + saturate((frac((_435 * 1024.0f) + -0.5f) * ((((select((_439.y > _419), 1.0f, 0.0f) - _447) * _438) + _447) - _452)) + _452)) + saturate((frac((_459 * 1024.0f) + -0.5f) * ((((select((_463.y > _419), 1.0f, 0.0f) - _471) * _462) + _471) - _476)) + _476)) + saturate((((((select((_487.y > _419), 1.0f, 0.0f) - _495) * _486) + _495) - _500) * frac((_483 * 1024.0f) + -0.5f)) + _500)) * 0.25f);
      } else {
        _554 = 1.0f;
      }
    } else {
      _554 = 1.0f;
    }
    _557 = min(max((_119 * 0.002f), 0.005f), 0.5f);
    _558 = ((uint)_167 > (uint)15);
    if (_558) {
      _567 = ((_557 * _109) + _158);
      _568 = ((_557 * _108) + _149);
      _569 = ((_557 * _107) + _140);
    } else {
      _567 = _158;
      _568 = _149;
      _569 = _140;
    }
    _587 = (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z), _567, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y), _568, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _569)));
    _595 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _567, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _568, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x) * _569))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].w);
    _603 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _567, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _568, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x) * _569))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].w);
    _606 = 4.0f / __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y;
    _607 = 1.0f - _606;
    _613 = (sqrt(((_149 * _149) + (_140 * _140)) + (_158 * _158)) < 128.0f);
    if ((_595 >= _606) && ((_603 <= 1.0f) && ((_603 >= -1.0f) && (_613 && ((_595 <= _607) && ((_587 >= _606) && (_587 <= _607))))))) {
      _627 = max(0.0f, ((abs((_587 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _633 = max(0.0f, ((abs((_595 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _26[1] = _587;
      _27[1] = _595;
      _28[1] = _603;
      _643 = sqrt((_633 * _633) + (_627 * _627));
      _644 = 1;
      _645 = select((_terrainNormalParams.y > 0.0f), 2e-05f, 8e-05f);
    } else {
      _643 = 0.0f;
      _644 = 0;
      _645 = 0.0f;
    }
    _657 = (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z), _567, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y), _568, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _569)));
    _665 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _567, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _568, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x) * _569))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].w);
    _673 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _567, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _568, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x) * _569))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].w);
    if ((_673 <= 1.0f) && ((_665 >= _606) && ((_613 && (((_657 >= _606) && (_657 <= _607)) && (_665 <= _607))) && (_673 >= -1.0f)))) {
      _692 = max(0.0f, ((abs((_657 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _698 = max(0.0f, ((abs((_665 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _26[0] = _657;
      _27[0] = _665;
      _28[0] = _673;
      _819 = false;
      _820 = 1;
      _821 = sqrt((_698 * _698) + (_692 * _692));
      _822 = 0;
      _823 = 1;
      _824 = select((_terrainNormalParams.y > 0.0f), 5e-06f, 2e-05f);
    } else {
      [branch]
      if (_644 == 0) {
        _712 = _viewPos.x + _569;
        _714 = _viewPos.y + _568;
        _716 = _viewPos.z + _567;
        _719 = _712 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x);
        _721 = _714 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y);
        _723 = _716 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z);
        _735 = (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z), _723, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y), _721, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x) * _719)));
        _743 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _723, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _721, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x) * _719))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].w);
        _751 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _723, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _721, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x) * _719))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].w);
        _754 = 2.0f / __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y;
        _755 = 1.0f - _754;
        if ((_743 >= _754) && ((_751 <= 1.0f) && ((_751 >= 0.0001f) && ((_743 <= _755) && ((_735 >= _754) && (_735 <= _755)))))) {
          _26[1] = _735;
          _27[1] = _743;
          _28[1] = _751;
          _769 = 1;
          _770 = 0.0002f;
        } else {
          _769 = 0;
          _770 = _645;
        }
        _773 = _712 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x);
        _775 = _714 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y);
        _777 = _716 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z);
        _789 = (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z), _777, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y), _775, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x) * _773)));
        _797 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _777, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _775, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x) * _773))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].w);
        _805 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _777, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _775, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x) * _773))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].w);
        if ((_805 <= 1.0f) && ((_797 >= _754) && ((((_789 >= _754) && (_789 <= _755)) && (_797 <= _755)) && (_805 >= 0.0001f)))) {
          _26[0] = _789;
          _27[0] = _797;
          _28[0] = _805;
          _819 = true;
          _820 = 0;
          _821 = _643;
          _822 = 0;
          _823 = 1;
          _824 = 0.0002f;
        } else {
          _819 = true;
          _820 = 0;
          _821 = _643;
          _822 = _769;
          _823 = _769;
          _824 = _770;
        }
      } else {
        _819 = false;
        _820 = 1;
        _821 = _643;
        _822 = 1;
        _823 = 1;
        _824 = _645;
      }
    }
    _838 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_65 * _bufferSizeAndInvSize.x) + _64));
    _846 = (uint)((uint)((((int)((uint)((uint)((uint)(_838)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_838)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_838)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
    _854 = (uint)((uint)((((int)((uint)((uint)((uint)(_846)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_846)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_846)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_838));
    _862 = (uint)((uint)((((int)((uint)((uint)((uint)(_854)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_854)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_854)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_846));
    _870 = (uint)((uint)((((int)((uint)((uint)((uint)(_862)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_862)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_862)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_854));
    _878 = (uint)((uint)((((int)((uint)((uint)((uint)(_870)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_870)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_870)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_862));
    _886 = (uint)((uint)((((int)((uint)((uint)((uint)(_878)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_878)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_878)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_870));
    _894 = (uint)((uint)((((int)((uint)((uint)((uint)(_886)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_886)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_886)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_878));
    _902 = (uint)((uint)((((int)((uint)((uint)((uint)(_894)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_894)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_894)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_886));
    _910 = (uint)((uint)((((int)((uint)((uint)((uint)(_902)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_902)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_902)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_894));
    _918 = (uint)((uint)((((int)((uint)((uint)((uint)(_910)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_910)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_910)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_902));
    _926 = (uint)((uint)((((int)((uint)((uint)((uint)(_918)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_918)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_918)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_910));
    _934 = (uint)((uint)((((int)((uint)((uint)((uint)(_926)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_926)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_926)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_918));
    _942 = (uint)((uint)((((int)((uint)((uint)((uint)(_934)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_934)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_934)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_926));
    _950 = (uint)((uint)((((int)((uint)((uint)((uint)(_942)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_942)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_942)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_934));
    _958 = (uint)((uint)((((int)((uint)((uint)((uint)(_950)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_950)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_950)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_942));
    _960 = ((_950 & 16777215) == 0);
    _961 = (int)min((uint)(_822), (uint)(1));
    [branch]
    if (_819) {
      _966 = _26[_961];
      _967 = _27[_961];
      _968 = _28[_961];
      if (_960) {
        _979 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_958)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_958)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_958)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_950))));
      } else {
        _979 = _950;
      }
      _982 = __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 2.0f;
      _984 = __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f;
      _985 = __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 2.3841858e-07f;
      _986 = __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.3841858e-07f;
      _992 = ((_985 * ((float)((uint)((uint)(((int)((uint)((uint)(_979)) * (uint)(48271))) & 16777215))))) - _982) + _966;
      _998 = ((_986 * ((float)((uint)((uint)(((int)((uint)((uint)(_979)) * (uint)(-1964877855))) & 16777215))))) - _984) + _967;
      _999 = (float)((uint)((uint)(_822)));
      _1000 = _968 - _824;
      _1006 = ((_985 * ((float)((uint)((uint)(((int)((uint)((uint)(_979)) * (uint)(-856141137))) & 16777215))))) - _982) + _966;
      _1012 = ((_986 * ((float)((uint)((uint)(((int)((uint)((uint)(_979)) * (uint)(-613502015))) & 16777215))))) - _984) + _967;
      _1018 = ((_985 * ((float)((uint)((uint)(((int)((uint)((uint)(_979)) * (uint)(-556260145))) & 16777215))))) - _982) + _966;
      _1024 = ((_986 * ((float)((uint)((uint)(((int)((uint)((uint)(_979)) * (uint)(902075297))) & 16777215))))) - _984) + _967;
      _1030 = ((_985 * ((float)((uint)((uint)(((int)((uint)((uint)(_979)) * (uint)(1698214639))) & 16777215))))) - _982) + _966;
      _1036 = ((_986 * ((float)((uint)((uint)(((int)((uint)((uint)(_979)) * (uint)(773027713))) & 16777215))))) - _984) + _967;
      _1058 = (((saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_992, _998, _999), _1000)).x)) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1006, _1012, _999), _1000)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1018, _1024, _999), _1000)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1030, _1036, _999), _1000)).x))) * 0.25f;
      _1079 = (((max(0.0f, (_968 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_992, _998, _999), 0.0f))).x))) + max(0.0f, (_968 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1006, _1012, _999), 0.0f))).x)))) + max(0.0f, (_968 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1018, _1024, _999), 0.0f))).x)))) + max(0.0f, (_968 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1030, _1036, _999), 0.0f))).x)))) * 0.25f;
      _2250 = 1.0h;
      _2251 = 1.0h;
      _2252 = 1.0h;
      _2253 = saturate(_1079 * _1079);  // [sem: expr_sat]
      _2254 = saturate(_1058 * _1058);  // [sem: expr_sat]
    } else {
      _1085 = _26[_961];
      _1086 = _27[_961];
      _1087 = _28[_961];
      _1089 = select((_822 == 0), 2.5f, 1.0f);
      if (_960) {
        _1100 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_958)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_958)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_958)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_950))));
      } else {
        _1100 = _950;
      }
      _1103 = select(_168, (_1089 * 0.75f), _1089) * 0.66f;
      _1105 = _1103 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.z;
      _1107 = _1103 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.w;
      _1108 = _1105 * 1.1920929e-07f;
      _1109 = _1107 * 1.1920929e-07f;
      _1113 = min(100.0f, _shadowAOParams.y) * 0.85f;
      _1119 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(48271))) & 16777215)))) * _1108) - _1105) + _1085;
      _1125 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(-1964877855))) & 16777215)))) * _1109) - _1107) + _1086;
      _1128 = (_1119 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _1130 = (_1125 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _1131 = frac(_1128);
      _1132 = frac(_1130);
      _1134 = (int)(floor(_1128));
      _1136 = (int)(floor(_1130));
      _1137 = (uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x);
      _1138 = (uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y);
      _1139 = (uint)((uint)(_1134)) + (uint)(1);
      _1140 = (uint)((uint)(_1136)) + (uint)(1);
      if (!(((uint)_1134 > (uint)_1137) || ((uint)_1136 > (uint)_1138))) {
        _1146 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1134, _1136, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1148 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1139, _1136, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1150 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1134, _1140, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1152 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1139, _1140, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _1155 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_1134, _1136, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _1160 = max(0.0f, (_1087 - _1146.x));
        _1162 = max(0.0f, (_1087 - _1150.x));
        _1166 = saturate(exp2((_1146.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _1170 = saturate(exp2((_1150.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _1177 = ((saturate(exp2((_1148.x - _1087) * 432808.5f)) - _1166) * _1131) + _1166;
        _1182 = ((max(0.0f, (_1087 - _1148.x)) - _1160) * _1131) + _1160;
        _1183 = (int)(_822) << 2;
        _1185 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1183) + (int)(58)))];
        _1190 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1183) + (int)(59)))];
        _1195 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1183) + (int)(60)))];
        _1200 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1183) + (int)(61)))];
        _1205 = mad(_1190.x, _1125, (_1185.x * _1119));
        _1207 = mad(_1195.x, _1146.x, _1205) + _1200.x;
        _1209 = mad(_1190.y, _1125, (_1185.y * _1119));
        _1211 = mad(_1195.y, _1146.x, _1209) + _1200.y;
        _1213 = mad(_1190.z, _1125, (_1185.z * _1119));
        _1215 = mad(_1195.z, _1146.x, _1213) + _1200.z;
        _1216 = -4.0f - _1113;
        _1218 = mad(_1195.x, _1148.x, _1205) + _1200.x;
        _1220 = mad(_1195.y, _1148.x, _1209) + _1200.y;
        _1222 = mad(_1195.z, _1148.x, _1213) + _1200.z;
        _1224 = mad(_1195.x, _1150.x, _1205) + _1200.x;
        _1226 = mad(_1195.y, _1150.x, _1209) + _1200.y;
        _1228 = mad(_1195.z, _1150.x, _1213) + _1200.z;
        _1230 = mad(_1195.x, _1152.x, _1205) + _1200.x;
        _1232 = mad(_1195.y, _1152.x, _1209) + _1200.y;
        _1234 = mad(_1195.z, _1152.x, _1213) + _1200.z;
        _1345 = (half)(_1155.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1346 = (half)(_1155.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1347 = (half)(_1155.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1348 = false;
        _1349 = ((((_1162 - _1182) + ((max(0.0f, (_1087 - _1152.x)) - _1162) * _1131)) * _1132) + _1182);
        _1350 = ((((_1177 + -1.0f) + (((_1170 - _1177) + ((saturate(exp2((_1152.x - _1087) * 432808.5f)) - _1170) * _1131)) * _1132)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1134, _1136, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1207 + _1216), (_1216 - _1207)) * 0.25f), (max((_1211 + _1216), (_1216 - _1211)) * 0.25f)), (max((_1215 + _1216), (_1216 - _1215)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1139, _1136, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1218 + _1216), (_1216 - _1218)) * 0.25f), (max((_1220 + _1216), (_1216 - _1220)) * 0.25f)), (max((_1222 + _1216), (_1216 - _1222)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1134, _1140, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1224 + _1216), (_1216 - _1224)) * 0.25f), (max((_1226 + _1216), (_1216 - _1226)) * 0.25f)), (max((_1228 + _1216), (_1216 - _1228)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1139, _1140, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1230 + _1216), (_1216 - _1230)) * 0.25f), (max((_1232 + _1216), (_1216 - _1232)) * 0.25f)), (max((_1234 + _1216), (_1216 - _1234)) * 0.25f))))))) + 1.0f);
      } else {
        _1345 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1346 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1347 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1348 = true;
        _1349 = 0.0f;
        _1350 = 1.0f;
      }
      _1351 = select(_1348, 0.0f, _1347);
      _1352 = select(_1348, 0.0f, _1346);
      _1353 = select(_1348, 0.0f, _1345);
      _1354 = select(_1348, 0.0f, _1350);
      _1355 = select(_1348, 0.0f, _1349);
      _1356 = select(_1348, 0.0f, 1.0f);
      _1362 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(-856141137))) & 16777215)))) * _1108) - _1105) + _1085;
      _1368 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(-613502015))) & 16777215)))) * _1109) - _1107) + _1086;
      _1370 = (_1362 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _1372 = (_1368 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _1373 = frac(_1370);
      _1374 = frac(_1372);
      _1376 = (int)(floor(_1370));
      _1378 = (int)(floor(_1372));
      _1379 = (uint)((uint)(_1376)) + (uint)(1);
      _1380 = (uint)((uint)(_1378)) + (uint)(1);
      if (!(((uint)_1376 > (uint)_1137) || ((uint)_1378 > (uint)_1138))) {
        _1386 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1376, _1378, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1388 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1379, _1378, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1390 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1376, _1380, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1392 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1379, _1380, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _1395 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_1376, _1378, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _1400 = max(0.0f, (_1087 - _1386.x));
        _1402 = max(0.0f, (_1087 - _1390.x));
        _1406 = saturate(exp2((_1386.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _1410 = saturate(exp2((_1390.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _1417 = ((saturate(exp2((_1388.x - _1087) * 432808.5f)) - _1406) * _1373) + _1406;
        _1422 = ((max(0.0f, (_1087 - _1388.x)) - _1400) * _1373) + _1400;
        _1423 = (int)(_822) << 2;
        _1425 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1423) + (int)(58)))];
        _1430 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1423) + (int)(59)))];
        _1435 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1423) + (int)(60)))];
        _1440 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1423) + (int)(61)))];
        _1445 = mad(_1430.x, _1368, (_1425.x * _1362));
        _1447 = mad(_1435.x, _1386.x, _1445) + _1440.x;
        _1449 = mad(_1430.y, _1368, (_1425.y * _1362));
        _1451 = mad(_1435.y, _1386.x, _1449) + _1440.y;
        _1453 = mad(_1430.z, _1368, (_1425.z * _1362));
        _1455 = mad(_1435.z, _1386.x, _1453) + _1440.z;
        _1456 = -4.0f - _1113;
        _1458 = mad(_1435.x, _1388.x, _1445) + _1440.x;
        _1460 = mad(_1435.y, _1388.x, _1449) + _1440.y;
        _1462 = mad(_1435.z, _1388.x, _1453) + _1440.z;
        _1464 = mad(_1435.x, _1390.x, _1445) + _1440.x;
        _1466 = mad(_1435.y, _1390.x, _1449) + _1440.y;
        _1468 = mad(_1435.z, _1390.x, _1453) + _1440.z;
        _1470 = mad(_1435.x, _1392.x, _1445) + _1440.x;
        _1472 = mad(_1435.y, _1392.x, _1449) + _1440.y;
        _1474 = mad(_1435.z, _1392.x, _1453) + _1440.z;
        _1591 = (_1356 + 1.0f);
        _1592 = ((_1422 + _1355) + (((_1402 - _1422) + ((max(0.0f, (_1087 - _1392.x)) - _1402) * _1373)) * _1374));
        _1593 = ((_1354 + 1.0f) + (((_1417 + -1.0f) + (((_1410 - _1417) + ((saturate(exp2((_1392.x - _1087) * 432808.5f)) - _1410) * _1373)) * _1374)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1376, _1378, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1447 + _1456), (_1456 - _1447)) * 0.25f), (max((_1451 + _1456), (_1456 - _1451)) * 0.25f)), (max((_1455 + _1456), (_1456 - _1455)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1379, _1378, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1458 + _1456), (_1456 - _1458)) * 0.25f), (max((_1460 + _1456), (_1456 - _1460)) * 0.25f)), (max((_1462 + _1456), (_1456 - _1462)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1376, _1380, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1464 + _1456), (_1456 - _1464)) * 0.25f), (max((_1466 + _1456), (_1456 - _1466)) * 0.25f)), (max((_1468 + _1456), (_1456 - _1468)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1379, _1380, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1470 + _1456), (_1456 - _1470)) * 0.25f), (max((_1472 + _1456), (_1456 - _1472)) * 0.25f)), (max((_1474 + _1456), (_1456 - _1474)) * 0.25f))))))));
        _1594 = ((half)((half)(_1395.z) + _1353));
        _1595 = ((half)((half)(_1395.y) + _1352));
        _1596 = ((half)((half)(_1395.x) + _1351));
      } else {
        _1591 = _1356;
        _1592 = _1355;
        _1593 = _1354;
        _1594 = _1353;
        _1595 = _1352;
        _1596 = _1351;
      }
      _1602 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(-556260145))) & 16777215)))) * _1108) - _1105) + _1085;
      _1608 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(902075297))) & 16777215)))) * _1109) - _1107) + _1086;
      _1610 = (_1602 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _1612 = (_1608 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _1613 = frac(_1610);
      _1614 = frac(_1612);
      _1616 = (int)(floor(_1610));
      _1618 = (int)(floor(_1612));
      _1619 = (uint)((uint)(_1616)) + (uint)(1);
      _1620 = (uint)((uint)(_1618)) + (uint)(1);
      if (!(((uint)_1616 > (uint)_1137) || ((uint)_1618 > (uint)_1138))) {
        _1626 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1616, _1618, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1628 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1619, _1618, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1630 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1616, _1620, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1632 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1619, _1620, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _1635 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_1616, _1618, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _1640 = max(0.0f, (_1087 - _1626.x));
        _1642 = max(0.0f, (_1087 - _1630.x));
        _1646 = saturate(exp2((_1626.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _1650 = saturate(exp2((_1630.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _1657 = ((saturate(exp2((_1628.x - _1087) * 432808.5f)) - _1646) * _1613) + _1646;
        _1662 = ((max(0.0f, (_1087 - _1628.x)) - _1640) * _1613) + _1640;
        _1663 = (int)(_822) << 2;
        _1665 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1663) + (int)(58)))];
        _1670 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1663) + (int)(59)))];
        _1675 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1663) + (int)(60)))];
        _1680 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1663) + (int)(61)))];
        _1685 = mad(_1670.x, _1608, (_1665.x * _1602));
        _1687 = mad(_1675.x, _1626.x, _1685) + _1680.x;
        _1689 = mad(_1670.y, _1608, (_1665.y * _1602));
        _1691 = mad(_1675.y, _1626.x, _1689) + _1680.y;
        _1693 = mad(_1670.z, _1608, (_1665.z * _1602));
        _1695 = mad(_1675.z, _1626.x, _1693) + _1680.z;
        _1696 = -4.0f - _1113;
        _1698 = mad(_1675.x, _1628.x, _1685) + _1680.x;
        _1700 = mad(_1675.y, _1628.x, _1689) + _1680.y;
        _1702 = mad(_1675.z, _1628.x, _1693) + _1680.z;
        _1704 = mad(_1675.x, _1630.x, _1685) + _1680.x;
        _1706 = mad(_1675.y, _1630.x, _1689) + _1680.y;
        _1708 = mad(_1675.z, _1630.x, _1693) + _1680.z;
        _1710 = mad(_1675.x, _1632.x, _1685) + _1680.x;
        _1712 = mad(_1675.y, _1632.x, _1689) + _1680.y;
        _1714 = mad(_1675.z, _1632.x, _1693) + _1680.z;
        _1831 = (_1591 + 1.0f);
        _1832 = ((_1662 + _1592) + (((_1642 - _1662) + ((max(0.0f, (_1087 - _1632.x)) - _1642) * _1613)) * _1614));
        _1833 = ((_1593 + 1.0f) + (((_1657 + -1.0f) + (((_1650 - _1657) + ((saturate(exp2((_1632.x - _1087) * 432808.5f)) - _1650) * _1613)) * _1614)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1616, _1618, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1687 + _1696), (_1696 - _1687)) * 0.25f), (max((_1691 + _1696), (_1696 - _1691)) * 0.25f)), (max((_1695 + _1696), (_1696 - _1695)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1619, _1618, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1698 + _1696), (_1696 - _1698)) * 0.25f), (max((_1700 + _1696), (_1696 - _1700)) * 0.25f)), (max((_1702 + _1696), (_1696 - _1702)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1616, _1620, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1704 + _1696), (_1696 - _1704)) * 0.25f), (max((_1706 + _1696), (_1696 - _1706)) * 0.25f)), (max((_1708 + _1696), (_1696 - _1708)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1619, _1620, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1710 + _1696), (_1696 - _1710)) * 0.25f), (max((_1712 + _1696), (_1696 - _1712)) * 0.25f)), (max((_1714 + _1696), (_1696 - _1714)) * 0.25f))))))));
        _1834 = ((half)((half)(_1635.z) + _1594));
        _1835 = ((half)((half)(_1635.y) + _1595));
        _1836 = ((half)((half)(_1635.x) + _1596));
      } else {
        _1831 = _1591;
        _1832 = _1592;
        _1833 = _1593;
        _1834 = _1594;
        _1835 = _1595;
        _1836 = _1596;
      }
      _1842 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(1698214639))) & 16777215)))) * _1108) - _1105) + _1085;
      _1848 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(773027713))) & 16777215)))) * _1109) - _1107) + _1086;
      _1850 = (_1842 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _1852 = (_1848 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _1853 = frac(_1850);
      _1854 = frac(_1852);
      _1856 = (int)(floor(_1850));
      _1858 = (int)(floor(_1852));
      _1859 = (uint)((uint)(_1856)) + (uint)(1);
      _1860 = (uint)((uint)(_1858)) + (uint)(1);
      if (!(((uint)_1856 > (uint)_1137) || ((uint)_1858 > (uint)_1138))) {
        _1866 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1856, _1858, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1868 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1859, _1858, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1870 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1856, _1860, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1872 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1859, _1860, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _1875 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_1856, _1858, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _1880 = max(0.0f, (_1087 - _1866.x));
        _1882 = max(0.0f, (_1087 - _1870.x));
        _1886 = saturate(exp2((_1866.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _1890 = saturate(exp2((_1870.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _1897 = ((saturate(exp2((_1868.x - _1087) * 432808.5f)) - _1886) * _1853) + _1886;
        _1902 = ((max(0.0f, (_1087 - _1868.x)) - _1880) * _1853) + _1880;
        _1903 = (int)(_822) << 2;
        _1905 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1903) + (int)(58)))];
        _1910 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1903) + (int)(59)))];
        _1915 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1903) + (int)(60)))];
        _1920 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1903) + (int)(61)))];
        _1925 = mad(_1910.x, _1848, (_1905.x * _1842));
        _1927 = mad(_1915.x, _1866.x, _1925) + _1920.x;
        _1929 = mad(_1910.y, _1848, (_1905.y * _1842));
        _1931 = mad(_1915.y, _1866.x, _1929) + _1920.y;
        _1933 = mad(_1910.z, _1848, (_1905.z * _1842));
        _1935 = mad(_1915.z, _1866.x, _1933) + _1920.z;
        _1936 = -4.0f - _1113;
        _1938 = mad(_1915.x, _1868.x, _1925) + _1920.x;
        _1940 = mad(_1915.y, _1868.x, _1929) + _1920.y;
        _1942 = mad(_1915.z, _1868.x, _1933) + _1920.z;
        _1944 = mad(_1915.x, _1870.x, _1925) + _1920.x;
        _1946 = mad(_1915.y, _1870.x, _1929) + _1920.y;
        _1948 = mad(_1915.z, _1870.x, _1933) + _1920.z;
        _1950 = mad(_1915.x, _1872.x, _1925) + _1920.x;
        _1952 = mad(_1915.y, _1872.x, _1929) + _1920.y;
        _1954 = mad(_1915.z, _1872.x, _1933) + _1920.z;
        _2071 = (half)(_1875.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2072 = (half)(_1875.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2073 = (half)(_1875.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2074 = (_1831 + 1.0f);
        _2075 = ((_1902 + _1832) + (((_1882 - _1902) + ((max(0.0f, (_1087 - _1872.x)) - _1882) * _1853)) * _1854));
        _2076 = ((_1833 + 1.0f) + (((_1897 + -1.0f) + (((_1890 - _1897) + ((saturate(exp2((_1872.x - _1087) * 432808.5f)) - _1890) * _1853)) * _1854)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1856, _1858, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1927 + _1936), (_1936 - _1927)) * 0.25f), (max((_1931 + _1936), (_1936 - _1931)) * 0.25f)), (max((_1935 + _1936), (_1936 - _1935)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1859, _1858, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1938 + _1936), (_1936 - _1938)) * 0.25f), (max((_1940 + _1936), (_1936 - _1940)) * 0.25f)), (max((_1942 + _1936), (_1936 - _1942)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1856, _1860, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1944 + _1936), (_1936 - _1944)) * 0.25f), (max((_1946 + _1936), (_1936 - _1946)) * 0.25f)), (max((_1948 + _1936), (_1936 - _1948)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1859, _1860, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1950 + _1936), (_1936 - _1950)) * 0.25f), (max((_1952 + _1936), (_1936 - _1952)) * 0.25f)), (max((_1954 + _1936), (_1936 - _1954)) * 0.25f))))))));
        _2077 = ((half)((half)(_1875.z) + _1834));
        _2078 = ((half)((half)(_1875.y) + _1835));
        _2079 = ((half)((half)(_1875.x) + _1836));
      } else {
        _2071 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2072 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2073 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _2074 = _1831;
        _2075 = _1832;
        _2076 = _1833;
        _2077 = _1834;
        _2078 = _1835;
        _2079 = _1836;
      }
      _2081 = 1.0f / max(_2074, 1.0f);
      _2083 = max((_2074 + 1.0f), 1.0f);
      _2087 = half(float(_2079 + _2071) / _2083);
      _2091 = half(float(_2078 + _2072) / _2083);
      _2095 = half(float(_2077 + _2073) / _2083);
      if (_822 == 1) {
        _2098 = float(_2087);
        _2099 = float(_2091);
        _2100 = float(_2095);
        _2101 = -0.0f - _821;
        _2115 = (half)(half((_2100 + _821) + (_2100 * _2101)));
        _2116 = (half)(half((_2099 + _821) + (_2099 * _2101)));
        _2117 = (half)(half((_2098 + _821) + (_2098 * _2101)));
      } else {
        _2115 = _2095;
        _2116 = _2091;
        _2117 = _2087;
      }
      _2120 = __3__36__0__0__g_raytracedShadow.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_69, _72), 0.0f);  // [sem: _3__36__0__0__g_raytracedShadow_sampleLod]
      _2123 = _119 * 0.05f;
      _2124 = 1.0f / _bufferSizeAndInvSize.x;
      _2126 = 1.0f / _bufferSizeAndInvSize.y;
      _2128 = 0;
      _2129 = 1.0f;
      _2130 = _2120.x;
      while(true) {
        _2131 = (uint)((uint)(_2128)) << 1;
        _2135 = (float)((int)(_global_0[((int)min((uint)(_2131), (uint)(15)))]));
        _2140 = (float)((int)(_global_0[((int)min((uint)(((int)(_2131) | (int)(1))), (uint)(15)))]));
        _2141 = _2135 + _64;
        _2142 = _2140 + _65;
        _2145 = ((_2124 * 2.0f) * _2141) + -1.0f;
        _2148 = 1.0f - ((_2126 * 2.0f) * _2142);
        _2157 = max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthStencil.Load(int3(((int)(_2141)), ((int)(_2142)), 0)))).x) & 16777215)))) * 5.960465e-08f));
        _2169 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _2157, mad((_invViewProjRelative[3].y), _2148, ((_invViewProjRelative[3].x) * _2145)));
        _2179 = ((mad((_invViewProjRelative[0].z), _2157, mad((_invViewProjRelative[0].y), _2148, ((_invViewProjRelative[0].x) * _2145))) + (_invViewProjRelative[0].w)) / _2169) - _140;
        _2189 = ((mad((_invViewProjRelative[1].z), _2157, mad((_invViewProjRelative[1].y), _2148, ((_invViewProjRelative[1].x) * _2145))) + (_invViewProjRelative[1].w)) / _2169) - _149;
        _2199 = ((mad((_invViewProjRelative[2].z), _2157, mad((_invViewProjRelative[2].y), _2148, ((_invViewProjRelative[2].x) * _2145))) + (_invViewProjRelative[2].w)) / _2169) - _158;
        _2205 = sqrt(((_2189 * _2189) + (_2179 * _2179)) + (_2199 * _2199));
        _2210 = abs((_nearFarProj.x / _2157) - _119);
        _2211 = _2210 * _2210;
        if (!(_2211 > (_2123 * _2123))) {
          _2227 = (max(0.02f, _2120.y) * exp2((-1.442695f / ((_119 * 0.02f) + 0.25f)) * ((_2211 * 20.0f) + ((_2205 * _2205) * 0.02f))));
        } else {
          _2227 = 0.0f;
        }
        _2237 = ((((float2)(__3__36__0__0__g_raytracedShadow.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(((_2135 * _2124) + _69), ((_2140 * _2126) + _72)), 0.0f))).x) * _2227) + _2130;
        _2238 = _2227 + _2129;
        _2239 = (int)(_2128) + (int)(1);
        if (!(_2239 == 8)) {
          _2128 = _2239;
          _2129 = _2238;
          _2130 = _2237;
          continue;
        }
        _2250 = _2115;
        _2251 = _2116;
        _2252 = _2117;
        _2253 = (_2081 * _2075);  // [sem: expr_sat]
        _2254 = min(_554, min((_2081 * _2076), ((1.0f / max(1e-06f, _2238)) * _2237)));  // [sem: expr_sat]
        break;
      }
    }
    _2255 = (_823 != 0);
    _2257 = min(_554, select(_2255, _2254, 1.0f));
    _2261 = select((_820 != 0), select(_2255, (_2253 * 400.0f), 4e+06f), 1.0f);
    _2266 = (_2257 - (_shadowAOParams.x * _2257)) + _shadowAOParams.x;
    [branch]
    if (_2266 > 0.0f) {
      _2269 = _80 & 126;
      _2270 = (_2269 == 64);
      _2272 = _2270 || (_84 == 66);
      _2273 = select(_2272, 2.0f, 4.0f);
      if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
        _2290 = _sunDirection.z;
        _2291 = _sunDirection.y;
        _2292 = _sunDirection.x;
      } else {
        _2290 = _moonDirection.z;
        _2291 = _moonDirection.y;
        _2292 = _moonDirection.x;
      }
      _2293 = _56 & 3;
      _2294 = _63 & 3;
      _2306 = (uint)((uint)((uint)(_frameNumber.x)) * (uint)(1551)) + (uint)((uint)((int)(((int)((int)((int)(_2294) << 1) | (int)(_2294)) << 1) & 10) | (int)(((int)((int)(_2293) << 1) | (int)(_2293)) & 5)));
      _2311 = (int)(((int)((uint)((uint)(_2306)) << 2)) & -858993460) | (int)(((uint)((uint)(_2306)) >> 2) & 858993459);
      _2316 = (int)(((int)((uint)((uint)(_2311)) << 1)) & 10) | (int)(((uint)((uint)(_2311)) >> 1) & 21);
      _2317 = (float)((uint)((uint)(_frameNumber.x)));
      _2323 = (frac(((_2317 * 92.0f) + _64) * 0.0078125f) * 128.0f) + -64.34062f;
      _2329 = (frac(((_2317 * 71.0f) + _65) * 0.0078125f) * 128.0f) + -72.46562f;
      _2334 = frac(dot(float3((_2323 * _2323), (_2329 * _2329), (_2329 * _2323)), float3(20.390625f, 60.703125f, 2.4281209f)));
      _2344 = frac((((float)((uint)((uint)(_2316)))) * 0.03125f) + (((float)((uint)((uint)(((int)((uint)(_2334 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f)) * 6.2831855f;
      _2354 = (((1.0f - _shadowAOParams.z) * 2.3283064e-10f) * ((float)((uint)((uint)(reversebits(_2316) ^ ((int)((uint)(_2334 * 2.8747837e+08f)))))))) + _shadowAOParams.z;
      _2357 = sqrt(1.0f - (_2354 * _2354));
      _2359 = cos(_2344) * _2357;
      _2361 = sin(_2344) * _2357;
      _2363 = select((_2290 >= 0.0f), 1.0f, -1.0f);
      _2366 = -0.0f - (1.0f / (_2363 + _2290));
      _2367 = _2291 * _2366;
      _2368 = _2367 * _2292;
      _2369 = _2363 * _2292;
      _2375 = mad(_2354, _2292, mad(_2361, _2368, ((((_2369 * _2292) * _2366) + 1.0f) * _2359)));
      _2381 = mad(_2354, _2291, mad(_2361, ((_2367 * _2291) + _2363), ((_2359 * _2363) * _2368)));
      _2386 = mad(_2354, _2290, mad(_2361, (-0.0f - _2291), (-0.0f - (_2369 * _2359))));
      _2387 = select(_2270, 10, 6);
      if (!_168) {
        _2393 = min(0.5f, ((_119 * 0.0025f) + 0.25f));
      } else {
        _2393 = 1.0f;
      }
      _2400 = ((abs(_2291) * (select(_2272, 12.0f, 2.0f) - _2273)) + _2273) * select(_168, 0.01f, 0.1f);
      if (!_168) {
        _2408 = max((_119 * select(((uint)((int)(_84) + (int)(-11)) < (uint)9), 0.008f, 0.03f)), _2400);
      } else {
        _2408 = _2400;
      }
      _2411 = (_terrainNormalParams.z > 0.0f);
      if (_2411) {
        _2415 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 255)));
        _2576 = frac(frac(dot(float2(((_2415 * 32.665f) + _64), ((_2415 * 11.815f) + _65)), float2(0.06711056f, 0.00583715f))) * 52.982918f);
      } else {
        _2437 = (uint)((uint)((_bufferSizeAndInvSize.x * _65) + _64)) + (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524))));
        _2445 = (uint)((uint)((((int)((uint)((uint)((uint)(_2437)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2437)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_2437)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _2453 = (uint)((uint)((((int)((uint)((uint)((uint)(_2445)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2445)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_2445)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2437));
        _2461 = (uint)((uint)((((int)((uint)((uint)((uint)(_2453)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2453)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_2453)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2445));
        _2469 = (uint)((uint)((((int)((uint)((uint)((uint)(_2461)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2461)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_2461)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2453));
        _2477 = (uint)((uint)((((int)((uint)((uint)((uint)(_2469)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2469)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_2469)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2461));
        _2485 = (uint)((uint)((((int)((uint)((uint)((uint)(_2477)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2477)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_2477)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2469));
        _2493 = (uint)((uint)((((int)((uint)((uint)((uint)(_2485)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2485)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_2485)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2477));
        _2501 = (uint)((uint)((((int)((uint)((uint)((uint)(_2493)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2493)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_2493)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2485));
        _2509 = (uint)((uint)((((int)((uint)((uint)((uint)(_2501)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2501)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_2501)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2493));
        _2517 = (uint)((uint)((((int)((uint)((uint)((uint)(_2509)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2509)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_2509)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2501));
        _2525 = (uint)((uint)((((int)((uint)((uint)((uint)(_2517)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2517)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_2517)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2509));
        _2533 = (uint)((uint)((((int)((uint)((uint)((uint)(_2525)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2525)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_2525)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2517));
        _2541 = (uint)((uint)((((int)((uint)((uint)((uint)(_2533)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2533)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_2533)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2525));
        _2549 = (uint)((uint)((((int)((uint)((uint)((uint)(_2541)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2541)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_2541)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2533));
        _2557 = (uint)((uint)((((int)((uint)((uint)((uint)(_2549)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2549)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_2549)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2541));
        if ((_2549 & 16777215) == 0) {
          _2570 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_2557)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2557)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_2557)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2549))));
        } else {
          _2570 = _2549;
        }
        _2576 = (((float)((uint)((uint)(((int)((uint)((uint)(_2570)) * (uint)(48271))) & 16777215)))) * 5.9604645e-08f);
      }
      if (_84 == 15) {
        _2585 = ((10.0f - (saturate(_119 * 0.001f) * 9.0f)) * _2576);
      } else {
        _2585 = _2576;
      }
      if (!_2411) {
        _2589 = saturate(_119 * 0.0625f) * 0.05f;
        _2594 = (_2589 * _109);
        _2595 = (_2589 * _108);
        _2596 = (_2589 * _107);
      } else {
        _2594 = 0.0f;
        _2595 = 0.0f;
        _2596 = 0.0f;
      }
      _2597 = _2596 + _140;
      _2598 = _2595 + _149;
      _2599 = _2594 + _158;
      _2611 = (_viewRelative[2].w) + mad((_viewRelative[2].z), _2599, mad((_viewRelative[2].y), _2598, ((_viewRelative[2].x) * _2597)));
      _2614 = mad((_viewRelative[2].z), _2386, mad((_viewRelative[2].y), _2381, ((_viewRelative[2].x) * _2375)));
      _2622 = select((((_2614 * _2408) + _2611) < _nearFarProj.x), ((_nearFarProj.x - _2611) / _2614), _2408);
      _2634 = (_viewProjRelative[2].w) + mad((_viewProjRelative[2].z), _2599, mad((_viewProjRelative[2].y), _2598, ((_viewProjRelative[2].x) * _2597)));
      _2642 = mad((_viewProjRelative[3].z), _2599, mad((_viewProjRelative[3].y), _2598, ((_viewProjRelative[3].x) * _2597))) + (_viewProjRelative[3].w);
      _2644 = (_2622 * _2375) + _2597;
      _2646 = (_2622 * _2381) + _2598;
      _2648 = (_2622 * _2386) + _2599;
      _2652 = mad((_viewProjRelative[3].z), _2648, mad((_viewProjRelative[3].y), _2646, (_2644 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _2661 = (mad((_viewProjRelative[0].z), _2599, mad((_viewProjRelative[0].y), _2598, ((_viewProjRelative[0].x) * _2597))) + (_viewProjRelative[0].w)) / _2642;
      _2670 = (mad((_viewProjRelative[1].z), _2599, mad((_viewProjRelative[1].y), _2598, ((_viewProjRelative[1].x) * _2597))) + (_viewProjRelative[1].w)) / _2642;
      _2671 = _2634 / _2642;
      _2677 = ((mad((_viewProjRelative[0].z), _2648, mad((_viewProjRelative[0].y), _2646, (_2644 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _2652) - _2661;
      _2683 = ((mad((_viewProjRelative[1].z), _2648, mad((_viewProjRelative[1].y), _2646, (_2644 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _2652) - _2670;
      _2685 = 1.0f / ((float)((uint)((uint)(_2387))));
      _2699 = max(_2685, (1.0f / min(1.0f, (max(((_bufferSizeAndInvSize.x * 0.5f) * abs(_2677)), ((_bufferSizeAndInvSize.y * 0.5f) * abs(_2683))) * _2685))));
      _2706 = (((mad((_viewProjRelative[2].z), _2648, mad((_viewProjRelative[2].y), _2646, (_2644 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w)) / _2652) - _2671) * _2699;
      _2721 = ((_2393 * 0.5f) * max(abs(_2706), (_2671 - ((mad((_proj[2].z), _119, 0.0f) + _2634) / (mad((_proj[3].z), _119, 0.0f) + _2642))))) * max(0.0625f, _2685);
      _2722 = _2699 * _2685;
      _2724 = (_2677 * 0.5f) * _2722;
      _2726 = (_2683 * -0.5f) * _2722;
      _2727 = _2706 * _2685;
      _2734 = max(_2585, (1.0f / max((abs(_2724) * _bufferSizeAndInvSize.x), (abs(_2726) * _bufferSizeAndInvSize.y))));
      _2735 = 0.5f / _bufferSizeAndInvSize.x;
      _2760 = 0.0f;
      _2761 = 0.0f;
      _2762 = 0;
      _2763 = 0;
      // [sem: expr_sat]
      _2764 = saturate(((_119 * 0.01f) * (1.0f - saturate(dot(float3(_107, _108, _109), float3((-0.0f - (_140 * _160)), (-0.0f - (_149 * _160)), (-0.0f - (_158 * _160))))))) + 0.01f);
      _2765 = _2585;
      _2766 = ((_2734 * _2727) + _2671);
      _2767 = ((0.5f - (_2670 * 0.5f)) + (_2734 * _2726));
      _2768 = (((_2661 * 0.5f) + 0.5f) + (_2734 * _2724));
      while(true) {
        // [sem: _3__36__0__0__g_depthStencil_load]
        _2780 = __3__36__0__0__g_depthStencil.Load(int3(((int)(_bufferSizeAndInvSize.x * min(max(_2768, _2735), (1.0f - _2735)))), ((int)(_bufferSizeAndInvSize.y * _2767)), 0));
        _2782 = (uint)((uint)(_2780.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _2785 = ((float)((uint)((uint)(_2780.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _2786 = _2782 & 127;
        _2787 = (_2763 == 0);
        _2788 = select(_2787, 1.0f, _2764);
        _2792 = _nearFarProj.x / max(1e-07f, _2785);
        _2795 = _2792 - (_nearFarProj.x / max(1e-07f, _2766));
        _2799 = (abs((_2766 + _2721) - _2785) < _2721);
        _2800 = (int)(uint)(_2799);
        if (_2799) {
          if (((uint)((int)(_2786) + (int)(-19)) < (uint)2) || ((_2786 == 18) || (((_2782 & 125) == 105) || ((_2786 == 106) || (((uint)((int)(_2786) + (int)(-27)) < (uint)2) || ((_2786 == 26) || ((_2786 == 107) || (((uint)((int)(_2786) + (int)(-5)) < (uint)2) || (((_2782 & 126) == 66) || ((_2786 == 7) || (_2786 == 53))))))))))) {
            _2846 = ((int)(uint)((int)((_2795 < 0.0f) && (_2795 > -0.08f))));
          } else {
            if ((_2786 != 67) && ((uint)((int)(_2786) + (int)(-52)) < (uint)16)) {
              _2846 = ((int)(uint)((int)((_2795 < 0.0f) && (_2795 > select((_2792 < 32.0f), -0.08f, -1.0f)))));
            } else {
              _2846 = _2800;
            }
          }
        } else {
          _2846 = _2800;
        }
        if (!(_2846 == 0)) {
          if ((uint)_2786 > (uint)11) {
            if (!((uint)_2786 < (uint)16)) {
              if (!(_2786 == 17)) {
                if (!(_2786 == 16)) {
                  if (!(((_2786 == 18) || (_2786 == 107)) || ((uint)((int)(_2786) + (int)(-19)) < (uint)2))) {
                    _2870 = select((_2786 == 66), 0.1f, 0.0f);
                  } else {
                    _2870 = 0.15f;
                  }
                } else {
                  _2870 = 0.1f;
                }
              } else {
                _2870 = 0.7f;
              }
            } else {
              _2870 = 0.9f;
            }
          } else {
            _2870 = select((_2786 == 11), 0.1f, 0.0f);
          }
          _2872 = saturate(_2792 * 0.015625f);  // [sem: expr_sat]
          _2875 = (1.0f - _2872) + (_2872 * _2870);
          // [sem: expr_sat]
          _2890 = saturate(((saturate(1.0f - ((_2875 * _2875) * _2870)) * (1.0f - _2760)) * saturate((-0.0f - _2795) / (_2765 * 0.0046548597f))) + _2760);
          _2891 = _2786;
        } else {
          _2890 = _2760;  // [sem: expr_sat]
          _2891 = _2762;
        }
        if ((_2786 != 0) && (_2890 > 0.95f)) {
          if (!_2787) {
            _2925 = (saturate((_2761 - _2785) / (_2761 - _2766)) - min(_2765, _2788));
          } else {
            _2925 = 0.0f;
          }
          _2927 = (_2925 * _2724) + _2768;
          _2929 = (_2925 * _2726) + _2767;
          _2931 = (_2925 * _2727) + _2766;
          _2932 = (_2890 > 0.0f);
          if (_2931 > 0.0f) {
            if ((_2932) || ((_2929 <= 1.0f) && ((_2929 >= 0.0f) && ((_2927 >= 0.0f) && (_2927 <= 1.0f))))) {
              _2945 = (_2927 * 2.0f) + -1.0f;
              _2947 = 1.0f - (_2929 * 2.0f);
              _2959 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _2931, mad((_invViewProjRelative[3].y), _2947, ((_invViewProjRelative[3].x) * _2945)));
              if (!(_2786 == 2)) {
                if (!(_2786 == 3)) {
                  if (_2786 == 21) {
                    _2978 = select((_84 == 21), 20.0f, 0.0f);
                  } else {
                    _2969 = (_2786 == 22);
                    _2978 = select(((_84 == 22) && _2969), 20.0f, select(_2969, 0.0f, 1.0f));
                  }
                } else {
                  _2978 = 0.0f;
                }
              } else {
                _2978 = select((_84 == 2), 20.0f, 0.0f);
              }
              if (_558 && (_2890 == 1.0f)) {
                // [sem: expr_sat]
                _3023 = saturate(((((_2408 * 0.9375f) - max(0.0f, dot(float3(_2375, _2381, _2386), float3((((mad((_invViewProjRelative[0].z), _2931, mad((_invViewProjRelative[0].y), _2947, ((_invViewProjRelative[0].x) * _2945))) + (_invViewProjRelative[0].w)) / _2959) - _2597), (((mad((_invViewProjRelative[1].z), _2931, mad((_invViewProjRelative[1].y), _2947, ((_invViewProjRelative[1].x) * _2945))) + (_invViewProjRelative[1].w)) / _2959) - _2598), (((mad((_invViewProjRelative[2].z), _2931, mad((_invViewProjRelative[2].y), _2947, ((_invViewProjRelative[2].x) * _2945))) + (_invViewProjRelative[2].w)) / _2959) - _2599))))) * ((_119 * 0.015625f) + 1.5f)) / _2408) * 0.9375f);
              } else {
                _3023 = _2890;  // [sem: expr_sat]
              }
              _3035 = saturate(exp2(min(0.0f, (((_119 * 0.018666666f) + 0.13333334f) + ((_2792 - (_nearFarProj.x / max(1e-07f, _2931))) * _2978))) * 1.442695f)) * _3023;
              _3036 = _2782 & 126;
              if (!(_3036 == 6)) {
                if ((((_84 == 33) && (_2786 == 33)) || (!(_84 == 33) && ((_84 == 54) && (_2786 == 54))))) {
                  _3288 = (_3035 * 0.01f);
                } else {
                  if (!((_2786 == 53) || (_3036 == 66)) || (((_2786 == 53) || (_3036 == 66)) && (!((_2269 == 66) || (_84 == 53))))) {
                    if (!_168) {
                      if ((uint)((int)(_2786) + (int)(-52)) < (uint)16) {
                        _3064 = saturate(_119 * 0.03125f);  // [sem: expr_sat]
                      } else {
                        _3064 = 1.0f;  // [sem: expr_sat]
                      }
                      _3288 = (_3064 * _3035);
                    } else {
                      _3288 = _3035;
                    }
                  } else {
                    // [sem: _3__36__0__0__g_baseColor_load]
                    _3072 = __3__36__0__0__g_baseColor.Load(int3(((int)(_2927 * _bufferSizeAndInvSize.x)), ((int)(_2929 * _bufferSizeAndInvSize.y)), 0));
                    _3078 = ((float)((uint)((uint)(((uint)((uint)(_3072.x)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
                    _3081 = ((float)((uint)((uint)(_3072.x & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
                    _3085 = ((float)((uint)((uint)(((uint)((uint)(_3072.y)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
                    _3086 = _3078 * _3078;
                    _3087 = _3081 * _3081;
                    _3088 = _3085 * _3085;
                    _3288 = (saturate(1.0f - (dot(float3((((_3086 * 0.61312f) + (_3087 * 0.33951f)) + (_3088 * 0.04737f)), (((_3086 * 0.0702f) + (_3087 * 0.91636f)) + (_3088 * 0.01345f)), (((_3086 * 0.02062f) + (_3087 * 0.10958f)) + (_3088 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _3035);
                  }
                }
              } else {
                _3288 = (_3035 * 0.01f);
              }
            } else {
              _3288 = 0.0f;
            }
          } else {
            if (_2932) {
              _3113 = _2929;
              _3114 = _2927;
              _3115 = _2931;
              _3116 = _2785;
              _3117 = _2786;
              _3119 = (_3114 * 2.0f) + -1.0f;
              _3121 = 1.0f - (_3113 * 2.0f);
              _3133 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _3115, mad((_invViewProjRelative[3].y), _3121, ((_invViewProjRelative[3].x) * _3119)));
              if (!(_3117 == 2)) {
                if (!(_3117 == 3)) {
                  if (_3117 == 21) {
                    _3152 = select((_84 == 21), 20.0f, 0.0f);
                  } else {
                    _3143 = (_3117 == 22);
                    _3152 = select(((_84 == 22) && _3143), 20.0f, select(_3143, 0.0f, 1.0f));
                  }
                } else {
                  _3152 = 0.0f;
                }
              } else {
                _3152 = select((_84 == 2), 20.0f, 0.0f);
              }
              if (_558 && (_2890 == 1.0f)) {
                // [sem: expr_sat]
                _3197 = saturate(((((_2408 * 0.9375f) - max(0.0f, dot(float3(_2375, _2381, _2386), float3((((mad((_invViewProjRelative[0].z), _3115, mad((_invViewProjRelative[0].y), _3121, ((_invViewProjRelative[0].x) * _3119))) + (_invViewProjRelative[0].w)) / _3133) - _2597), (((mad((_invViewProjRelative[1].z), _3115, mad((_invViewProjRelative[1].y), _3121, ((_invViewProjRelative[1].x) * _3119))) + (_invViewProjRelative[1].w)) / _3133) - _2598), (((mad((_invViewProjRelative[2].z), _3115, mad((_invViewProjRelative[2].y), _3121, ((_invViewProjRelative[2].x) * _3119))) + (_invViewProjRelative[2].w)) / _3133) - _2599))))) * ((_119 * 0.015625f) + 1.5f)) / _2408) * 0.9375f);
              } else {
                _3197 = _2890;  // [sem: expr_sat]
              }
              _3211 = saturate(exp2(min(0.0f, (((_119 * 0.018666666f) + 0.13333334f) + (((_nearFarProj.x / max(1e-07f, _3116)) - (_nearFarProj.x / max(1e-07f, _3115))) * _3152))) * 1.442695f)) * _3197;
              _3212 = _3117 & -2;
              if (!(_3212 == 6)) {
                if ((((_84 == 33) && (_3117 == 33)) || (!(_84 == 33) && ((_84 == 54) && (_3117 == 54))))) {
                  _3288 = (_3211 * 0.01f);
                } else {
                  if (!((_3117 == 53) || (_3212 == 66)) || (((_3117 == 53) || (_3212 == 66)) && (!((_2269 == 66) || (_84 == 53))))) {
                    if (!_168) {
                      if ((uint)((int)((uint)((uint)(_3117)) + (uint)(-52))) < (uint)16) {
                        _3240 = saturate(_119 * 0.03125f);  // [sem: expr_sat]
                      } else {
                        _3240 = 1.0f;  // [sem: expr_sat]
                      }
                      _3288 = (_3240 * _3211);
                    } else {
                      _3288 = _3211;
                    }
                  } else {
                    // [sem: _3__36__0__0__g_baseColor_load]
                    _3248 = __3__36__0__0__g_baseColor.Load(int3(((int)(_3114 * _bufferSizeAndInvSize.x)), ((int)(_3113 * _bufferSizeAndInvSize.y)), 0));
                    _3254 = ((float)((uint)((uint)(((uint)((uint)(_3248.x)) >> 8) & 255)))) * 0.003921569f;
                    _3257 = ((float)((uint)((uint)(_3248.x & 255)))) * 0.003921569f;
                    _3261 = ((float)((uint)((uint)(((uint)((uint)(_3248.y)) >> 8) & 255)))) * 0.003921569f;
                    _3262 = _3254 * _3254;
                    _3263 = _3257 * _3257;
                    _3264 = _3261 * _3261;
                    _3288 = (saturate(1.0f - (dot(float3((((_3262 * 0.61312f) + (_3263 * 0.33951f)) + (_3264 * 0.04737f)), (((_3262 * 0.0702f) + (_3263 * 0.91636f)) + (_3264 * 0.01345f)), (((_3262 * 0.02062f) + (_3263 * 0.10958f)) + (_3264 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _3211);
                  }
                }
              } else {
                _3288 = (_3211 * 0.01f);
              }
            } else {
              _3288 = 0.0f;
            }
          }
        } else {
          if ((uint)_2763 < (uint)((int)(_2387) + (int)(-1))) {
            _2915 = _2785;
            _2916 = (_2788 + _2765);
            _2917 = ((_2788 * _2727) + _2766);
            _2918 = (_2767 + (_2788 * _2726));
            _2919 = (_2768 + (_2788 * _2724));
          } else {
            _2915 = _2761;
            _2916 = _2765;
            _2917 = _2766;
            _2918 = _2767;
            _2919 = _2768;
          }
          _2920 = (int)(_2763) + (int)(1);
          if ((uint)_2920 < (uint)_2387) {
            _2760 = _2890;
            _2761 = _2915;
            _2762 = _2891;
            _2763 = _2920;
            _2764 = _2788;  // [sem: expr_sat]
            _2765 = _2916;
            _2766 = _2917;
            _2767 = _2918;
            _2768 = _2919;
            continue;
          } else {
            if (_2890 > 0.0f) {
              _3113 = 0.0f;
              _3114 = 0.0f;
              _3115 = -1.0f;
              _3116 = 0.0f;
              _3117 = _2891;
              _3119 = (_3114 * 2.0f) + -1.0f;
              _3121 = 1.0f - (_3113 * 2.0f);
              _3133 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _3115, mad((_invViewProjRelative[3].y), _3121, ((_invViewProjRelative[3].x) * _3119)));
              if (!(_3117 == 2)) {
                if (!(_3117 == 3)) {
                  if (_3117 == 21) {
                    _3152 = select((_84 == 21), 20.0f, 0.0f);
                  } else {
                    _3143 = (_3117 == 22);
                    _3152 = select(((_84 == 22) && _3143), 20.0f, select(_3143, 0.0f, 1.0f));
                  }
                } else {
                  _3152 = 0.0f;
                }
              } else {
                _3152 = select((_84 == 2), 20.0f, 0.0f);
              }
              if (_558 && (_2890 == 1.0f)) {
                // [sem: expr_sat]
                _3197 = saturate(((((_2408 * 0.9375f) - max(0.0f, dot(float3(_2375, _2381, _2386), float3((((mad((_invViewProjRelative[0].z), _3115, mad((_invViewProjRelative[0].y), _3121, ((_invViewProjRelative[0].x) * _3119))) + (_invViewProjRelative[0].w)) / _3133) - _2597), (((mad((_invViewProjRelative[1].z), _3115, mad((_invViewProjRelative[1].y), _3121, ((_invViewProjRelative[1].x) * _3119))) + (_invViewProjRelative[1].w)) / _3133) - _2598), (((mad((_invViewProjRelative[2].z), _3115, mad((_invViewProjRelative[2].y), _3121, ((_invViewProjRelative[2].x) * _3119))) + (_invViewProjRelative[2].w)) / _3133) - _2599))))) * ((_119 * 0.015625f) + 1.5f)) / _2408) * 0.9375f);
              } else {
                _3197 = _2890;  // [sem: expr_sat]
              }
              _3211 = saturate(exp2(min(0.0f, (((_119 * 0.018666666f) + 0.13333334f) + (((_nearFarProj.x / max(1e-07f, _3116)) - (_nearFarProj.x / max(1e-07f, _3115))) * _3152))) * 1.442695f)) * _3197;
              _3212 = _3117 & -2;
              if (!(_3212 == 6)) {
                if ((((_84 == 33) && (_3117 == 33)) || (!(_84 == 33) && ((_84 == 54) && (_3117 == 54))))) {
                  _3288 = (_3211 * 0.01f);
                } else {
                  if (!((_3117 == 53) || (_3212 == 66)) || (((_3117 == 53) || (_3212 == 66)) && (!((_2269 == 66) || (_84 == 53))))) {
                    if (!_168) {
                      if ((uint)((int)((uint)((uint)(_3117)) + (uint)(-52))) < (uint)16) {
                        _3240 = saturate(_119 * 0.03125f);  // [sem: expr_sat]
                      } else {
                        _3240 = 1.0f;  // [sem: expr_sat]
                      }
                      _3288 = (_3240 * _3211);
                    } else {
                      _3288 = _3211;
                    }
                  } else {
                    // [sem: _3__36__0__0__g_baseColor_load]
                    _3248 = __3__36__0__0__g_baseColor.Load(int3(((int)(_3114 * _bufferSizeAndInvSize.x)), ((int)(_3113 * _bufferSizeAndInvSize.y)), 0));
                    _3254 = ((float)((uint)((uint)(((uint)((uint)(_3248.x)) >> 8) & 255)))) * 0.003921569f;
                    _3257 = ((float)((uint)((uint)(_3248.x & 255)))) * 0.003921569f;
                    _3261 = ((float)((uint)((uint)(((uint)((uint)(_3248.y)) >> 8) & 255)))) * 0.003921569f;
                    _3262 = _3254 * _3254;
                    _3263 = _3257 * _3257;
                    _3264 = _3261 * _3261;
                    _3288 = (saturate(1.0f - (dot(float3((((_3262 * 0.61312f) + (_3263 * 0.33951f)) + (_3264 * 0.04737f)), (((_3262 * 0.0702f) + (_3263 * 0.91636f)) + (_3264 * 0.01345f)), (((_3262 * 0.02062f) + (_3263 * 0.10958f)) + (_3264 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _3211);
                  }
                }
              } else {
                _3288 = (_3211 * 0.01f);
              }
            } else {
              _3288 = 0.0f;
            }
          }
        }
        _3292 = saturate(1.0f - _3288);  // [sem: expr_sat]
        break;
      }
    } else {
      _3292 = 1.0f;  // [sem: expr_sat]
    }
    _3293 = min(_2266, _3292);
    _3317 = float(half(_3293 * float(_2252)));
    _3318 = float(half(_3293 * float(_2251)));
    _3319 = float(half(_3293 * float(_2250)));
    _3320 = saturate((1.0f - _554) + (exp2(log2(saturate(select(_168, (_2261 + 0.98f), _2261))) * 0.45454544f) * _554));  // [sem: expr_sat]
  }
  __3__38__0__1__g_shadowColorResultUAV[int2(_56, _63)] = float4((half)(half(_3317)), (half)(half(_3318)), (half)(half(_3319)), (half)(half(_3320)));
}
