struct anon {
  uint4 g_tileIndex[4096];
};


Texture2D<float4> __3__36__0__0__g_terrainShadowDepth : register(t37, space36);

Texture2DArray<float4> __3__36__0__0__g_dynamicShadowDepthArray : register(t236, space36);

Texture2DArray<half4> __3__36__0__0__g_dynamicShadowColorArray : register(t238, space36);

Texture2DArray<float4> __3__36__0__0__g_shadowDepthArray : register(t239, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t18, space36);

Texture2D<uint> __3__36__0__0__g_depthStencil : register(t49, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t50, space36);

Texture2D<float> __3__36__0__0__g_nearFieldShadowDepth : register(t129, space36);

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

cbuffer __3__35__0__0__TileConstantBuffer : register(b26, space35) {
  struct {
    uint4 g_tileIndex[4096];
  } __3__35__0__0__TileConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__TileConstantBuffer_raw[4096] : packoffset(c0);
  uint4 __3__35__0__0__TileConstantBuffer_raw_uint[4096] : packoffset(c0);
};

cbuffer __3__35__0__0__NearFieldShadowConstantBuffer : register(b42, space35) {
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

[numthreads(8, 8, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  int4 _35;
  int _47;
  int _51;
  uint _57;
  uint _64;
  float _65;
  float _66;
  float _72;
  float _77;
  uint _79;
  int _81;
  float _84;
  int _85;
  uint _87;
  float _93;
  float _99;
  float _105;
  float _107;
  float _108;
  float _109;
  float _110;
  bool _111;
  int _372;
  float _555;
  float _568;
  float _569;
  float _570;
  float _644;
  int _645;
  float _646;
  int _770;
  float _771;
  bool _820;
  int _821;
  float _822;
  int _823;
  int _824;
  float _825;
  int _980;
  int _1101;
  half _1261;
  half _1262;
  half _1263;
  float _1264;
  float _1265;
  float _1341;
  float _1342;
  float _1343;
  int _1384;
  int _1423;
  float _1437;
  int _1439;
  float _1440;
  float _1542;
  float _1543;
  float _1544;
  int _1546;
  float _1547;
  float _1587;
  float _1588;
  float _1617;
  float _1618;
  float _1619;
  float _1720;
  float _1735;
  int _1897;
  float _1903;
  float _1912;
  float _1921;
  float _1922;
  float _1923;
  float _2087;
  float _2088;
  int _2089;
  int _2090;
  float _2091;
  float _2092;
  float _2093;
  float _2094;
  float _2095;
  int _2173;
  float _2197;
  float _2217;
  int _2218;
  float _2242;
  float _2243;
  float _2244;
  float _2245;
  float _2246;
  float _2252;
  float _2305;
  float _2350;
  float _2391;
  float _2440;
  float _2441;
  float _2442;
  float _2443;
  int _2444;
  float _2479;
  float _2524;
  float _2567;
  float _2615;
  float _2619;
  float _2642;
  float _2643;
  float _2644;
  float _2645;
  float _115;
  float _117;
  float _120;
  float _132;
  float _141;
  float _150;
  float _159;
  float _161;
  int _168;
  bool _169;
  float _181;
  float _189;
  float _197;
  float _210;
  float _216;
  float _222;
  float _227;
  uint _239;
  uint _247;
  uint _255;
  uint _263;
  uint _271;
  uint _279;
  uint _287;
  uint _295;
  uint _303;
  uint _311;
  uint _319;
  uint _327;
  uint _335;
  uint _343;
  uint _351;
  uint _359;
  uint _377;
  float _386;
  float _388;
  float _395;
  float _397;
  float _400;
  float _402;
  float _406;
  float _409;
  float _412;
  float4 _415;
  float _420;
  float _422;
  float _424;
  float _429;
  float _433;
  float _436;
  float _439;
  float4 _440;
  float _446;
  float _448;
  float _453;
  float _457;
  float _460;
  float _463;
  float4 _464;
  float _470;
  float _472;
  float _477;
  float _481;
  float _484;
  float _487;
  float4 _488;
  float _494;
  float _496;
  float _501;
  float _558;
  bool _559;
  float _588;
  float _596;
  float _604;
  float _607;
  float _608;
  bool _614;
  float _628;
  float _634;
  float _658;
  float _666;
  float _674;
  float _693;
  float _699;
  float _713;
  float _715;
  float _717;
  float _720;
  float _722;
  float _724;
  float _736;
  float _744;
  float _752;
  float _755;
  float _756;
  float _774;
  float _776;
  float _778;
  float _790;
  float _798;
  float _806;
  uint _839;
  uint _847;
  uint _855;
  uint _863;
  uint _871;
  uint _879;
  uint _887;
  uint _895;
  uint _903;
  uint _911;
  uint _919;
  uint _927;
  uint _935;
  uint _943;
  uint _951;
  uint _959;
  bool _961;
  int _962;
  float _967;
  float _968;
  float _969;
  float _983;
  float _985;
  float _986;
  float _987;
  float _993;
  float _999;
  float _1000;
  float _1001;
  float _1007;
  float _1013;
  float _1019;
  float _1025;
  float _1031;
  float _1037;
  float _1059;
  float _1080;
  float _1086;
  float _1087;
  float _1088;
  float _1090;
  float _1104;
  float _1106;
  float _1108;
  float _1109;
  float _1110;
  float _1116;
  float _1122;
  float _1123;
  float _1124;
  half4 _1127;
  float _1136;
  float _1142;
  half4 _1143;
  float _1152;
  float _1158;
  half4 _1159;
  float _1168;
  float _1174;
  half4 _1175;
  float _1200;
  float _1220;
  half _1227;
  half _1234;
  half _1241;
  float _1244;
  float _1245;
  float _1246;
  float _1247;
  bool _1266;
  float _1268;
  float _1272;
  float _1273;
  bool _1281;
  float _1356;
  float _1362;
  float _1368;
  float _1373;
  uint _1389;
  float _1400;
  float _1407;
  float _1409;
  float _1410;
  float _1411;
  float _1412;
  uint _1428;
  int _1444;
  float _1448;
  float _1453;
  float _1470;
  int _1471;
  float _1475;
  float _1477;
  float _1479;
  int _1551;
  float _1555;
  float _1560;
  float _1577;
  int _1578;
  float _1593;
  int _1596;
  bool _1597;
  bool _1599;
  float _1600;
  int _1620;
  int _1621;
  uint _1633;
  int _1638;
  int _1643;
  float _1644;
  float _1650;
  float _1656;
  float _1661;
  float _1671;
  float _1681;
  float _1684;
  float _1686;
  float _1688;
  float _1690;
  float _1693;
  float _1694;
  float _1695;
  float _1696;
  float _1702;
  float _1708;
  float _1713;
  int _1714;
  float _1727;
  bool _1738;
  float _1742;
  uint _1764;
  uint _1772;
  uint _1780;
  uint _1788;
  uint _1796;
  uint _1804;
  uint _1812;
  uint _1820;
  uint _1828;
  uint _1836;
  uint _1844;
  uint _1852;
  uint _1860;
  uint _1868;
  uint _1876;
  uint _1884;
  float _1916;
  float _1924;
  float _1925;
  float _1926;
  float _1938;
  float _1941;
  float _1949;
  float _1961;
  float _1969;
  float _1971;
  float _1973;
  float _1975;
  float _1979;
  float _1988;
  float _1997;
  float _1998;
  float _2004;
  float _2010;
  float _2012;
  float _2026;
  float _2033;
  float _2048;
  float _2049;
  float _2051;
  float _2053;
  float _2054;
  float _2061;
  float _2062;
  uint _2107;
  int _2109;
  float _2112;
  int _2113;
  bool _2114;
  float _2115;
  float _2119;
  float _2122;
  bool _2126;
  int _2127;
  float _2199;
  float _2202;
  int _2247;
  float _2254;
  float _2256;
  float _2258;
  bool _2259;
  float _2272;
  float _2274;
  float _2286;
  bool _2296;
  float _2362;
  int _2363;
  uint4 _2399;
  float _2405;
  float _2408;
  float _2412;
  float _2413;
  float _2414;
  float _2415;
  float _2446;
  float _2448;
  float _2460;
  bool _2470;
  float _2538;
  int _2539;
  uint4 _2575;
  float _2581;
  float _2584;
  float _2588;
  float _2589;
  float _2590;
  float _2591;
  float _2620;
  int __loop_jump_target = -1;
  int _26[4];
  float _27[2];
  float _28[2];
  float _29[2];
  _35 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _26[0] = _35.x;
  _26[1] = _35.y;
  _26[2] = _35.z;
  _26[3] = _35.w;
  _47 = _26[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _51 = select((((int)(SV_GroupID.x) & 16) == 0), _47, ((uint)((uint)(_47)) >> 16));
  _57 = (uint)((uint)((int)((int)(((int)((uint)((uint)(_51)) << 2)) & 1020) | (int)((int)(SV_GroupID.x) & 3)) << 3)) + (uint)(SV_GroupThreadID.x);
  _64 = (uint)((uint)((int)((int)(((uint)((uint)(_51)) >> 6) & 1020) | (int)(((uint)(SV_GroupID.x) >> 2) & 3)) << 3)) + (uint)(SV_GroupThreadID.y);
  _65 = (float)((uint)((uint)(_57)));
  _66 = (float)((uint)((uint)(_64)));
  _72 = ((_bufferSizeAndInvSize.z * 2.0f) * (_65 + 0.5f)) + -1.0f;
  _77 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (_66 + 0.5f));
  _79 = __3__36__0__0__g_depthStencil.Load(int3(_57, _64, 0));  // [sem: _3__36__0__0__g_depthStencil_load]
  _81 = (uint)((uint)(_79.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _84 = ((float)((uint)((uint)(_79.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _85 = _81 & 127;
  _87 = __3__36__0__0__g_sceneNormal.Load(int3(_57, _64, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
  _93 = min(1.0f, ((((float)((uint)((uint)(_87.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _99 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_87.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _105 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_87.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _107 = rsqrt(dot(float3(_93, _99, _105), float3(_93, _99, _105)));  // [sem: invLength]
  _108 = _107 * _93;
  _109 = _107 * _99;
  _110 = _107 * _105;
  _111 = (_84 == 1.0f);
  if ((_84 < 1e-07f) || _111) {
    _115 = select(_111, 0.0f, 1.0f);
    _2642 = _115;
    _2643 = _115;
    _2644 = _115;
    _2645 = _115;  // [sem: expr_sat]
  } else {
    _117 = max(1e-07f, _84);
    _120 = _nearFarProj.x / _117;
    _132 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _117, mad((_invViewProjRelative[3].y), _77, ((_invViewProjRelative[3].x) * _72)));
    _141 = (mad((_invViewProjRelative[0].z), _117, mad((_invViewProjRelative[0].y), _77, ((_invViewProjRelative[0].x) * _72))) + (_invViewProjRelative[0].w)) / _132;
    _150 = (mad((_invViewProjRelative[1].z), _117, mad((_invViewProjRelative[1].y), _77, ((_invViewProjRelative[1].x) * _72))) + (_invViewProjRelative[1].w)) / _132;
    _159 = (mad((_invViewProjRelative[2].z), _117, mad((_invViewProjRelative[2].y), _77, ((_invViewProjRelative[2].x) * _72))) + (_invViewProjRelative[2].w)) / _132;
    _161 = rsqrt(dot(float3(_141, _150, _159), float3(_141, _150, _159)));  // [sem: invLength]
    _27[0] = 0.0f;
    _28[0] = 0.0f;
    _29[0] = 0.0f;
    _27[1] = 0.0f;
    _28[1] = 0.0f;
    _29[1] = 0.0f;
    _168 = (int)(_85) + (int)(-52);
    _169 = ((uint)_168 < (uint)16);
    _181 = (_terrainShadowProjRelativeTexScale[0].w) + mad((_terrainShadowProjRelativeTexScale[0].z), _159, mad((_terrainShadowProjRelativeTexScale[0].y), _150, ((_terrainShadowProjRelativeTexScale[0].x) * _141)));
    _189 = mad((_terrainShadowProjRelativeTexScale[1].z), _159, mad((_terrainShadowProjRelativeTexScale[1].y), _150, ((_terrainShadowProjRelativeTexScale[1].x) * _141))) + (_terrainShadowProjRelativeTexScale[1].w);
    _197 = mad((_terrainShadowProjRelativeTexScale[2].z), _159, mad((_terrainShadowProjRelativeTexScale[2].y), _150, ((_terrainShadowProjRelativeTexScale[2].x) * _141))) + (_terrainShadowProjRelativeTexScale[2].w);
    if ((_197 <= 1.0f) && ((saturate(_181) == _181) && (_197 >= 0.0001f))) {
      if (saturate(_189) == _189) {
        _210 = (float)((uint)((uint)(_frameNumber.x)));
        _216 = (frac(((_210 * 92.0f) + _65) * 0.0078125f) * 128.0f) + -64.34062f;
        _222 = (frac(((_210 * 71.0f) + _66) * 0.0078125f) * 128.0f) + -72.46562f;
        _227 = frac(dot(float3((_216 * _216), (_222 * _222), (_222 * _216)), float3(20.390625f, 60.703125f, 2.4281209f)));
        _239 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_66 * _bufferSizeAndInvSize.x) + _65));
        _247 = (uint)((uint)((((int)((uint)((uint)((uint)(_239)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_239)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_239)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _255 = (uint)((uint)((((int)((uint)((uint)((uint)(_247)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_247)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_247)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_239));
        _263 = (uint)((uint)((((int)((uint)((uint)((uint)(_255)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_255)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_255)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_247));
        _271 = (uint)((uint)((((int)((uint)((uint)((uint)(_263)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_263)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_263)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_255));
        _279 = (uint)((uint)((((int)((uint)((uint)((uint)(_271)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_271)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_271)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_263));
        _287 = (uint)((uint)((((int)((uint)((uint)((uint)(_279)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_279)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_279)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_271));
        _295 = (uint)((uint)((((int)((uint)((uint)((uint)(_287)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_287)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_287)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_279));
        _303 = (uint)((uint)((((int)((uint)((uint)((uint)(_295)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_295)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_295)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_287));
        _311 = (uint)((uint)((((int)((uint)((uint)((uint)(_303)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_303)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_303)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_295));
        _319 = (uint)((uint)((((int)((uint)((uint)((uint)(_311)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_311)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_311)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_303));
        _327 = (uint)((uint)((((int)((uint)((uint)((uint)(_319)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_319)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_319)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_311));
        _335 = (uint)((uint)((((int)((uint)((uint)((uint)(_327)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_327)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_327)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_319));
        _343 = (uint)((uint)((((int)((uint)((uint)((uint)(_335)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_335)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_335)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_327));
        _351 = (uint)((uint)((((int)((uint)((uint)((uint)(_343)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_343)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_343)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_335));
        _359 = (uint)((uint)((((int)((uint)((uint)((uint)(_351)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_351)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_351)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_343));
        if ((_351 & 16777215) == 0) {
          _372 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_359)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_359)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_359)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_351))));
        } else {
          _372 = _351;
        }
        _377 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_372)) * (uint)(48271))) & 16777215)))) * 3.8146377e-06f);
        _386 = frac((((float)((uint)((uint)(_377)))) * 0.015625f) + (((float)((uint)((uint)(((int)((uint)(_227 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f));
        _388 = (_386 * 2.0f) + -1.0f;
        _395 = (((float)((uint)((uint)(reversebits(_377) ^ ((int)((uint)(_227 * 2.8747837e+08f))))))) * 4.656613e-10f) + -1.0f;
        _397 = rsqrt(dot(float2(_388, _395), float2(_388, _395)));  // [sem: invLength]
        _400 = _397 * ((_386 * 0.0009765625f) + -0.00048828125f);
        _402 = (_397 * 0.00048828125f) * _395;
        _406 = ((_jitterOffset[0].x) * _400) + _181;
        _409 = (_402 * (_jitterOffset[0].y)) + _189;
        _412 = frac((_406 * 1024.0f) + -0.5f);
        _415 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_406, _409));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _420 = _197 + -0.005f;
        _422 = select((_415.w > _420), 1.0f, 0.0f);
        _424 = select((_415.x > _420), 1.0f, 0.0f);
        _429 = ((select((_415.z > _420), 1.0f, 0.0f) - _422) * _412) + _422;
        _433 = ((_jitterOffset[1].x) * _400) + _181;
        _436 = ((_jitterOffset[1].y) * _402) + _189;
        _439 = frac((_433 * 1024.0f) + -0.5f);
        _440 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_433, _436));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _446 = select((_440.w > _420), 1.0f, 0.0f);
        _448 = select((_440.x > _420), 1.0f, 0.0f);
        _453 = ((select((_440.z > _420), 1.0f, 0.0f) - _446) * _439) + _446;
        _457 = ((_jitterOffset[2].x) * _400) + _181;
        _460 = ((_jitterOffset[2].y) * _402) + _189;
        _463 = frac((_457 * 1024.0f) + -0.5f);
        _464 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_457, _460));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _470 = select((_464.w > _420), 1.0f, 0.0f);
        _472 = select((_464.x > _420), 1.0f, 0.0f);
        _477 = ((select((_464.z > _420), 1.0f, 0.0f) - _470) * _463) + _470;
        _481 = ((_jitterOffset[3].x) * _400) + _181;
        _484 = ((_jitterOffset[3].y) * _402) + _189;
        _487 = frac((_481 * 1024.0f) + -0.5f);
        _488 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_481, _484));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _494 = select((_488.w > _420), 1.0f, 0.0f);
        _496 = select((_488.x > _420), 1.0f, 0.0f);
        _501 = ((select((_488.z > _420), 1.0f, 0.0f) - _494) * _487) + _494;
        _555 = ((((saturate((frac((_409 * 1024.0f) + -0.5f) * ((((select((_415.y > _420), 1.0f, 0.0f) - _424) * _412) + _424) - _429)) + _429) + saturate((frac((_436 * 1024.0f) + -0.5f) * ((((select((_440.y > _420), 1.0f, 0.0f) - _448) * _439) + _448) - _453)) + _453)) + saturate((frac((_460 * 1024.0f) + -0.5f) * ((((select((_464.y > _420), 1.0f, 0.0f) - _472) * _463) + _472) - _477)) + _477)) + saturate((((((select((_488.y > _420), 1.0f, 0.0f) - _496) * _487) + _496) - _501) * frac((_484 * 1024.0f) + -0.5f)) + _501)) * 0.25f);
      } else {
        _555 = 1.0f;
      }
    } else {
      _555 = 1.0f;
    }
    _558 = min(max((_120 * 0.002f), 0.005f), 0.5f);
    _559 = ((uint)_168 > (uint)15);
    if (_559) {
      _568 = ((_558 * _110) + _159);
      _569 = ((_558 * _109) + _150);
      _570 = ((_558 * _108) + _141);
    } else {
      _568 = _159;
      _569 = _150;
      _570 = _141;
    }
    _588 = (_dynamicShadowProjRelativeTexScale[1][0].w) + mad((_dynamicShadowProjRelativeTexScale[1][0].z), _568, mad((_dynamicShadowProjRelativeTexScale[1][0].y), _569, ((_dynamicShadowProjRelativeTexScale[1][0].x) * _570)));
    _596 = mad((_dynamicShadowProjRelativeTexScale[1][1].z), _568, mad((_dynamicShadowProjRelativeTexScale[1][1].y), _569, ((_dynamicShadowProjRelativeTexScale[1][1].x) * _570))) + (_dynamicShadowProjRelativeTexScale[1][1].w);
    _604 = mad((_dynamicShadowProjRelativeTexScale[1][2].z), _568, mad((_dynamicShadowProjRelativeTexScale[1][2].y), _569, ((_dynamicShadowProjRelativeTexScale[1][2].x) * _570))) + (_dynamicShadowProjRelativeTexScale[1][2].w);
    _607 = 4.0f / _dynmaicShadowSizeAndInvSize.y;
    _608 = 1.0f - _607;
    _614 = (sqrt(((_150 * _150) + (_141 * _141)) + (_159 * _159)) < 128.0f);
    if ((_596 >= _607) && ((_604 <= 1.0f) && ((_604 >= -1.0f) && (_614 && ((_596 <= _608) && ((_588 >= _607) && (_588 <= _608))))))) {
      _628 = max(0.0f, ((abs((_588 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _634 = max(0.0f, ((abs((_596 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _27[1] = _588;
      _28[1] = _596;
      _29[1] = _604;
      _644 = sqrt((_634 * _634) + (_628 * _628));
      _645 = 1;
      _646 = select((_terrainNormalParams.y > 0.0f), 2e-05f, 8e-05f);
    } else {
      _644 = 0.0f;
      _645 = 0;
      _646 = 0.0f;
    }
    _658 = (_dynamicShadowProjRelativeTexScale[0][0].w) + mad((_dynamicShadowProjRelativeTexScale[0][0].z), _568, mad((_dynamicShadowProjRelativeTexScale[0][0].y), _569, ((_dynamicShadowProjRelativeTexScale[0][0].x) * _570)));
    _666 = mad((_dynamicShadowProjRelativeTexScale[0][1].z), _568, mad((_dynamicShadowProjRelativeTexScale[0][1].y), _569, ((_dynamicShadowProjRelativeTexScale[0][1].x) * _570))) + (_dynamicShadowProjRelativeTexScale[0][1].w);
    _674 = mad((_dynamicShadowProjRelativeTexScale[0][2].z), _568, mad((_dynamicShadowProjRelativeTexScale[0][2].y), _569, ((_dynamicShadowProjRelativeTexScale[0][2].x) * _570))) + (_dynamicShadowProjRelativeTexScale[0][2].w);
    if ((_674 <= 1.0f) && ((_666 >= _607) && ((_614 && (((_658 >= _607) && (_658 <= _608)) && (_666 <= _608))) && (_674 >= -1.0f)))) {
      _693 = max(0.0f, ((abs((_658 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _699 = max(0.0f, ((abs((_666 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _27[0] = _658;
      _28[0] = _666;
      _29[0] = _674;
      _820 = false;
      _821 = 1;
      _822 = sqrt((_699 * _699) + (_693 * _693));
      _823 = 0;
      _824 = 1;
      _825 = select((_terrainNormalParams.y > 0.0f), 5e-06f, 2e-05f);
    } else {
      [branch]
      if (_645 == 0) {
        _713 = _viewPos.x + _570;
        _715 = _viewPos.y + _569;
        _717 = _viewPos.z + _568;
        _720 = _713 - (_staticShadowPosition[1].x);
        _722 = _715 - (_staticShadowPosition[1].y);
        _724 = _717 - (_staticShadowPosition[1].z);
        _736 = (_shadowProjRelativeTexScale[1][0].w) + mad((_shadowProjRelativeTexScale[1][0].z), _724, mad((_shadowProjRelativeTexScale[1][0].y), _722, ((_shadowProjRelativeTexScale[1][0].x) * _720)));
        _744 = mad((_shadowProjRelativeTexScale[1][1].z), _724, mad((_shadowProjRelativeTexScale[1][1].y), _722, ((_shadowProjRelativeTexScale[1][1].x) * _720))) + (_shadowProjRelativeTexScale[1][1].w);
        _752 = mad((_shadowProjRelativeTexScale[1][2].z), _724, mad((_shadowProjRelativeTexScale[1][2].y), _722, ((_shadowProjRelativeTexScale[1][2].x) * _720))) + (_shadowProjRelativeTexScale[1][2].w);
        _755 = 2.0f / _shadowSizeAndInvSize.y;
        _756 = 1.0f - _755;
        if ((_744 >= _755) && ((_752 <= 1.0f) && ((_752 >= 0.0001f) && ((_744 <= _756) && ((_736 >= _755) && (_736 <= _756)))))) {
          _27[1] = _736;
          _28[1] = _744;
          _29[1] = _752;
          _770 = 1;
          _771 = 0.0002f;
        } else {
          _770 = 0;
          _771 = _646;
        }
        _774 = _713 - (_staticShadowPosition[0].x);
        _776 = _715 - (_staticShadowPosition[0].y);
        _778 = _717 - (_staticShadowPosition[0].z);
        _790 = (_shadowProjRelativeTexScale[0][0].w) + mad((_shadowProjRelativeTexScale[0][0].z), _778, mad((_shadowProjRelativeTexScale[0][0].y), _776, ((_shadowProjRelativeTexScale[0][0].x) * _774)));
        _798 = mad((_shadowProjRelativeTexScale[0][1].z), _778, mad((_shadowProjRelativeTexScale[0][1].y), _776, ((_shadowProjRelativeTexScale[0][1].x) * _774))) + (_shadowProjRelativeTexScale[0][1].w);
        _806 = mad((_shadowProjRelativeTexScale[0][2].z), _778, mad((_shadowProjRelativeTexScale[0][2].y), _776, ((_shadowProjRelativeTexScale[0][2].x) * _774))) + (_shadowProjRelativeTexScale[0][2].w);
        if ((_806 <= 1.0f) && ((_798 >= _755) && ((((_790 >= _755) && (_790 <= _756)) && (_798 <= _756)) && (_806 >= 0.0001f)))) {
          _27[0] = _790;
          _28[0] = _798;
          _29[0] = _806;
          _820 = true;
          _821 = 0;
          _822 = _644;
          _823 = 0;
          _824 = 1;
          _825 = 0.0002f;
        } else {
          _820 = true;
          _821 = 0;
          _822 = _644;
          _823 = _770;
          _824 = _770;
          _825 = _771;
        }
      } else {
        _820 = false;
        _821 = 1;
        _822 = _644;
        _823 = 1;
        _824 = 1;
        _825 = _646;
      }
    }
    _839 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_66 * _bufferSizeAndInvSize.x) + _65));
    _847 = (uint)((uint)((((int)((uint)((uint)((uint)(_839)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_839)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_839)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
    _855 = (uint)((uint)((((int)((uint)((uint)((uint)(_847)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_847)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_847)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_839));
    _863 = (uint)((uint)((((int)((uint)((uint)((uint)(_855)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_855)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_855)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_847));
    _871 = (uint)((uint)((((int)((uint)((uint)((uint)(_863)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_863)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_863)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_855));
    _879 = (uint)((uint)((((int)((uint)((uint)((uint)(_871)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_871)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_871)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_863));
    _887 = (uint)((uint)((((int)((uint)((uint)((uint)(_879)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_879)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_879)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_871));
    _895 = (uint)((uint)((((int)((uint)((uint)((uint)(_887)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_887)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_887)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_879));
    _903 = (uint)((uint)((((int)((uint)((uint)((uint)(_895)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_895)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_895)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_887));
    _911 = (uint)((uint)((((int)((uint)((uint)((uint)(_903)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_903)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_903)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_895));
    _919 = (uint)((uint)((((int)((uint)((uint)((uint)(_911)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_911)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_911)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_903));
    _927 = (uint)((uint)((((int)((uint)((uint)((uint)(_919)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_919)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_919)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_911));
    _935 = (uint)((uint)((((int)((uint)((uint)((uint)(_927)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_927)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_927)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_919));
    _943 = (uint)((uint)((((int)((uint)((uint)((uint)(_935)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_935)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_935)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_927));
    _951 = (uint)((uint)((((int)((uint)((uint)((uint)(_943)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_943)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_943)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_935));
    _959 = (uint)((uint)((((int)((uint)((uint)((uint)(_951)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_951)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_951)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_943));
    _961 = ((_951 & 16777215) == 0);
    _962 = (int)min((uint)(_823), (uint)(1));
    [branch]
    if (_820) {
      _967 = _27[_962];
      _968 = _28[_962];
      _969 = _29[_962];
      if (_961) {
        _980 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_959)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_959)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_959)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_951))));
      } else {
        _980 = _951;
      }
      _983 = _shadowSizeAndInvSize.z * 2.0f;
      _985 = _shadowSizeAndInvSize.w * 2.0f;
      _986 = _shadowSizeAndInvSize.z * 2.3841858e-07f;
      _987 = _shadowSizeAndInvSize.w * 2.3841858e-07f;
      _993 = ((_986 * ((float)((uint)((uint)(((int)((uint)((uint)(_980)) * (uint)(48271))) & 16777215))))) - _983) + _967;
      _999 = ((_987 * ((float)((uint)((uint)(((int)((uint)((uint)(_980)) * (uint)(-1964877855))) & 16777215))))) - _985) + _968;
      _1000 = (float)((uint)((uint)(_823)));
      _1001 = _969 - _825;
      _1007 = ((_986 * ((float)((uint)((uint)(((int)((uint)((uint)(_980)) * (uint)(-856141137))) & 16777215))))) - _983) + _967;
      _1013 = ((_987 * ((float)((uint)((uint)(((int)((uint)((uint)(_980)) * (uint)(-613502015))) & 16777215))))) - _985) + _968;
      _1019 = ((_986 * ((float)((uint)((uint)(((int)((uint)((uint)(_980)) * (uint)(-556260145))) & 16777215))))) - _983) + _967;
      _1025 = ((_987 * ((float)((uint)((uint)(((int)((uint)((uint)(_980)) * (uint)(902075297))) & 16777215))))) - _985) + _968;
      _1031 = ((_986 * ((float)((uint)((uint)(((int)((uint)((uint)(_980)) * (uint)(1698214639))) & 16777215))))) - _983) + _967;
      _1037 = ((_987 * ((float)((uint)((uint)(((int)((uint)((uint)(_980)) * (uint)(773027713))) & 16777215))))) - _985) + _968;
      _1059 = (((saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_993, _999, _1000), _1001)).x)) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1007, _1013, _1000), _1001)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1019, _1025, _1000), _1001)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1031, _1037, _1000), _1001)).x))) * 0.25f;
      _1080 = (((max(0.0f, (_969 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_993, _999, _1000), 0.0f))).x))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1007, _1013, _1000), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1019, _1025, _1000), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1031, _1037, _1000), 0.0f))).x)))) * 0.25f;
      _1261 = 1.0h;
      _1262 = 1.0h;
      _1263 = 1.0h;
      _1264 = saturate(_1080 * _1080);  // [sem: expr_sat]
      _1265 = saturate(_1059 * _1059);  // [sem: expr_sat]
    } else {
      _1086 = _27[_962];
      _1087 = _28[_962];
      _1088 = _29[_962];
      _1090 = select((_823 == 0), 2.5f, 1.0f);
      if (_961) {
        _1101 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_959)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_959)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_959)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_951))));
      } else {
        _1101 = _951;
      }
      _1104 = select(_169, (_1090 * 0.75f), _1090) * 0.66f;
      _1106 = _1104 * _dynmaicShadowSizeAndInvSize.z;
      _1108 = _1104 * _dynmaicShadowSizeAndInvSize.w;
      _1109 = _1106 * 1.1920929e-07f;
      _1110 = _1108 * 1.1920929e-07f;
      _1116 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(48271))) & 16777215)))) * _1109) - _1106) + _1086;
      _1122 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(-1964877855))) & 16777215)))) * _1110) - _1108) + _1087;
      _1123 = (float)((uint)((uint)(_823)));
      _1124 = _1088 - _825;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1127 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1116, _1122, _1123), 0.0f);
      _1136 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(-856141137))) & 16777215)))) * _1109) - _1106) + _1086;
      _1142 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(-613502015))) & 16777215)))) * _1110) - _1108) + _1087;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1143 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1136, _1142, _1123), 0.0f);
      _1152 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(-556260145))) & 16777215)))) * _1109) - _1106) + _1086;
      _1158 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(902075297))) & 16777215)))) * _1110) - _1108) + _1087;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1159 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1152, _1158, _1123), 0.0f);
      _1168 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(1698214639))) & 16777215)))) * _1109) - _1106) + _1086;
      _1174 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(773027713))) & 16777215)))) * _1110) - _1108) + _1087;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1175 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1168, _1174, _1123), 0.0f);
      _1200 = (((saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1116, _1122, _1123), _1124)).x)) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1136, _1142, _1123), _1124)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1152, _1158, _1123), _1124)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1168, _1174, _1123), _1124)).x))) * 0.25f;
      _1220 = (((max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1116, _1122, _1123), 0.0f))).x))) + max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1136, _1142, _1123), 0.0f))).x)))) + max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1152, _1158, _1123), 0.0f))).x)))) + max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1168, _1174, _1123), 0.0f))).x)))) * 0.25f;
      _1227 = half(float(((half)(((half)((half)(_1143.x) + (half)(_1127.x))) + (half)(_1159.x))) + ((half)((half)(_1175.x) * 2.0h))) * 0.2f);
      _1234 = half(float(((half)(((half)((half)(_1143.y) + (half)(_1127.y))) + (half)(_1159.y))) + ((half)((half)(_1175.y) * 2.0h))) * 0.2f);
      _1241 = half(float(((half)(((half)((half)(_1143.z) + (half)(_1127.z))) + (half)(_1159.z))) + ((half)((half)(_1175.z) * 2.0h))) * 0.2f);
      if (_823 == 1) {
        _1244 = float(_1227);
        _1245 = float(_1234);
        _1246 = float(_1241);
        _1247 = -0.0f - _822;
        _1261 = (half)(half((_1246 + _822) + (_1246 * _1247)));
        _1262 = (half)(half((_1245 + _822) + (_1245 * _1247)));
        _1263 = (half)(half((_1244 + _822) + (_1244 * _1247)));
        _1264 = _1220;  // [sem: expr_sat]
        _1265 = _1200;  // [sem: expr_sat]
      } else {
        _1261 = _1241;
        _1262 = _1234;
        _1263 = _1227;
        _1264 = _1220;  // [sem: expr_sat]
        _1265 = _1200;  // [sem: expr_sat]
      }
    }
    _1266 = (_824 != 0);
    _1268 = min(_555, select(_1266, _1265, 1.0f));
    _1272 = select((_821 != 0), select(_1266, (_1264 * 400.0f), 4e+06f), 1.0f);
    _1273 = _1272 + 0.98f;
    if (_169) {
      [branch]
      if (_nearFieldShadowFlag.x > 0.0f) {
        _1281 = (_shadowAOParams.w > 0.0f);
        if (_1281) {
          _1341 = (mad((_nearFieldShadowViewProjCompacted[2].z), _159, mad((_nearFieldShadowViewProjCompacted[2].y), _150, ((_nearFieldShadowViewProjCompacted[2].x) * _141))) + (_nearFieldShadowViewProjCompacted[2].w));
          _1342 = (mad((_nearFieldShadowViewProjCompacted[1].z), _159, mad((_nearFieldShadowViewProjCompacted[1].y), _150, ((_nearFieldShadowViewProjCompacted[1].x) * _141))) + (_nearFieldShadowViewProjCompacted[1].w));
          _1343 = ((_nearFieldShadowViewProjCompacted[0].w) + mad((_nearFieldShadowViewProjCompacted[0].z), _159, mad((_nearFieldShadowViewProjCompacted[0].y), _150, ((_nearFieldShadowViewProjCompacted[0].x) * _141))));
        } else {
          _1341 = (mad((_nearFieldShadowViewProj[2].z), _159, mad((_nearFieldShadowViewProj[2].y), _150, ((_nearFieldShadowViewProj[2].x) * _141))) + (_nearFieldShadowViewProj[2].w));
          _1342 = (mad((_nearFieldShadowViewProj[1].z), _159, mad((_nearFieldShadowViewProj[1].y), _150, ((_nearFieldShadowViewProj[1].x) * _141))) + (_nearFieldShadowViewProj[1].w));
          _1343 = ((_nearFieldShadowViewProj[0].w) + mad((_nearFieldShadowViewProj[0].z), _159, mad((_nearFieldShadowViewProj[0].y), _150, ((_nearFieldShadowViewProj[0].x) * _141))));
        }
        if (!((_1341 > 1.0f) || ((_1341 < 0.0f) || ((_1342 > 1.0f) || ((_1342 < -1.0f) || ((_1343 < -1.0f) || (_1343 > 1.0f))))))) {
          _1356 = (float)((uint)((uint)(_frameNumber.x)));
          _1362 = (frac(((_1356 * 92.0f) + _65) * 0.0078125f) * 128.0f) + -64.34062f;
          _1368 = (frac(((_1356 * 71.0f) + _66) * 0.0078125f) * 128.0f) + -72.46562f;
          _1373 = frac(dot(float3((_1362 * _1362), (_1368 * _1368), (_1368 * _1362)), float3(20.390625f, 60.703125f, 2.4281209f)));
          if (_961) {
            _1384 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_959)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_959)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_959)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_951))));
          } else {
            _1384 = _951;
          }
          _1389 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_1384)) * (uint)(48271))) & 16777215)))) * 3.8146377e-06f);
          _1400 = (frac((((float)((uint)((uint)(_1389)))) * 0.015625f) + (((float)((uint)((uint)(((int)((uint)(_1373 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f)) * 2.0f) + -1.0f;
          _1407 = (((float)((uint)((uint)(reversebits(_1389) ^ ((int)((uint)(_1373 * 2.8747837e+08f))))))) * 4.656613e-10f) + -1.0f;
          _1409 = rsqrt(dot(float2(_1400, _1407), float2(_1400, _1407)));  // [sem: invLength]
          _1410 = _1409 * _1400;
          _1411 = _1407 * _1409;
          _1412 = -0.0f - _1411;
          if (_961) {
            _1423 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_959)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_959)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_959)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_951))));
          } else {
            _1423 = _951;
          }
          _1428 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_1423)) * (uint)(48271))) & 16777215)))) * 9.5307826e-07f);
          if (_1281) {
            _1437 = max(3.0517578e-05f, (min(0.0003f, (_nearFieldShadowBoundsMax.w * 0.00048828125f)) / _nearFieldShadowBoundsMax.w));
          } else {
            _1437 = 0.00048828125f;
          }
          _1439 = 0;
          _1440 = 0.0f;
          while(true) {
            _1444 = ((int)((uint)((uint)((uint)((uint)(_1439)) << 2) + (uint)((uint)(_1428))) << 1)) & 30;
            _1448 = (_global_0[((int)min((uint)(_1444), (uint)(31)))]) * _1437;
            _1453 = (_global_0[((int)min((uint)(((int)(_1444) | (int)(1))), (uint)(31)))]) * _1437;
            _1470 = (1.0f - ((__3__36__0__0__g_nearFieldShadowDepth.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float2((((_1343 * 0.5f) + 0.5f) + mad(_1411, _1453, (_1448 * _1410))), ((0.5f - (_1342 * 0.5f)) + mad(_1410, _1453, (_1448 * _1412)))), (_1341 + -4e-05f))).x)) + _1440;
            _1471 = (int)(_1439) + (int)(1);
            if (!(_1471 == 4)) {
              _1439 = _1471;
              _1440 = _1470;
              continue;
            }
            _1475 = _141 - (_108 * 0.012f);
            _1477 = _150 - (_109 * 0.012f);
            _1479 = _159 - (_110 * 0.012f);
            if (_shadowAOParams.w > 0.0f) {
              _1542 = (mad((_nearFieldShadowViewProjCompacted[2].z), _1479, mad((_nearFieldShadowViewProjCompacted[2].y), _1477, ((_nearFieldShadowViewProjCompacted[2].x) * _1475))) + (_nearFieldShadowViewProjCompacted[2].w));
              _1543 = (mad((_nearFieldShadowViewProjCompacted[1].z), _1479, mad((_nearFieldShadowViewProjCompacted[1].y), _1477, ((_nearFieldShadowViewProjCompacted[1].x) * _1475))) + (_nearFieldShadowViewProjCompacted[1].w));
              _1544 = ((_nearFieldShadowViewProjCompacted[0].w) + mad((_nearFieldShadowViewProjCompacted[0].z), _1479, mad((_nearFieldShadowViewProjCompacted[0].y), _1477, ((_nearFieldShadowViewProjCompacted[0].x) * _1475))));
            } else {
              _1542 = (mad((_nearFieldShadowViewProj[2].z), _1479, mad((_nearFieldShadowViewProj[2].y), _1477, ((_nearFieldShadowViewProj[2].x) * _1475))) + (_nearFieldShadowViewProj[2].w));
              _1543 = (mad((_nearFieldShadowViewProj[1].z), _1479, mad((_nearFieldShadowViewProj[1].y), _1477, ((_nearFieldShadowViewProj[1].x) * _1475))) + (_nearFieldShadowViewProj[1].w));
              _1544 = ((_nearFieldShadowViewProj[0].w) + mad((_nearFieldShadowViewProj[0].z), _1479, mad((_nearFieldShadowViewProj[0].y), _1477, ((_nearFieldShadowViewProj[0].x) * _1475))));
            }
            _1546 = 0;
            _1547 = 0.0f;
            while(true) {
              _1551 = ((int)((uint)((uint)((uint)((uint)(_1546)) << 2) + (uint)((uint)(_1428))) << 1)) & 30;
              _1555 = (_global_0[((int)min((uint)(_1551), (uint)(31)))]) * _1437;
              _1560 = (_global_0[((int)min((uint)(((int)(_1551) | (int)(1))), (uint)(31)))]) * _1437;
              _1577 = max(0.0f, (_1542 - ((__3__36__0__0__g_nearFieldShadowDepth.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_1544 * 0.5f) + 0.5f) + mad(_1411, _1560, (_1555 * _1410))), ((0.5f - (_1543 * 0.5f)) + mad(_1410, _1560, (_1555 * _1412)))), 0.0f)).x))) + _1547;
              _1578 = (int)(_1546) + (int)(1);
              if (!(_1578 == 4)) {
                _1546 = _1578;
                _1547 = _1577;
                continue;
              }
              _1587 = max(_1272, max(0.002f, (_1577 * 25.0f)));
              _1588 = min(_1268, (_1470 * 0.25f));
              break;
            }
            break;
          }
        } else {
          _1587 = _1273;
          _1588 = _1268;
        }
      } else {
        _1587 = _1273;
        _1588 = _1268;
      }
    } else {
      _1587 = _1272;
      _1588 = _1268;
    }
    _1593 = (_1588 - (_shadowAOParams.x * _1588)) + _shadowAOParams.x;
    [branch]
    if (_1593 > 0.0f) {
      _1596 = _81 & 126;
      _1597 = (_1596 == 64);
      _1599 = _1597 || (_85 == 66);
      _1600 = select(_1599, 2.0f, 4.0f);
      if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
        _1617 = _sunDirection.z;
        _1618 = _sunDirection.y;
        _1619 = _sunDirection.x;
      } else {
        _1617 = _moonDirection.z;
        _1618 = _moonDirection.y;
        _1619 = _moonDirection.x;
      }
      _1620 = _57 & 3;
      _1621 = _64 & 3;
      _1633 = (uint)((uint)((uint)(_frameNumber.x)) * (uint)(1551)) + (uint)((uint)((int)(((int)((int)((int)(_1621) << 1) | (int)(_1621)) << 1) & 10) | (int)(((int)((int)(_1620) << 1) | (int)(_1620)) & 5)));
      _1638 = (int)(((int)((uint)((uint)(_1633)) << 2)) & -858993460) | (int)(((uint)((uint)(_1633)) >> 2) & 858993459);
      _1643 = (int)(((int)((uint)((uint)(_1638)) << 1)) & 10) | (int)(((uint)((uint)(_1638)) >> 1) & 21);
      _1644 = (float)((uint)((uint)(_frameNumber.x)));
      _1650 = (frac(((_1644 * 92.0f) + _65) * 0.0078125f) * 128.0f) + -64.34062f;
      _1656 = (frac(((_1644 * 71.0f) + _66) * 0.0078125f) * 128.0f) + -72.46562f;
      _1661 = frac(dot(float3((_1650 * _1650), (_1656 * _1656), (_1656 * _1650)), float3(20.390625f, 60.703125f, 2.4281209f)));
      _1671 = frac((((float)((uint)((uint)(_1643)))) * 0.03125f) + (((float)((uint)((uint)(((int)((uint)(_1661 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f)) * 6.2831855f;
      _1681 = (((1.0f - _shadowAOParams.z) * 2.3283064e-10f) * ((float)((uint)((uint)(reversebits(_1643) ^ ((int)((uint)(_1661 * 2.8747837e+08f)))))))) + _shadowAOParams.z;
      _1684 = sqrt(1.0f - (_1681 * _1681));
      _1686 = cos(_1671) * _1684;
      _1688 = sin(_1671) * _1684;
      _1690 = select((_1617 >= 0.0f), 1.0f, -1.0f);
      _1693 = -0.0f - (1.0f / (_1690 + _1617));
      _1694 = _1618 * _1693;
      _1695 = _1694 * _1619;
      _1696 = _1690 * _1619;
      _1702 = mad(_1681, _1619, mad(_1688, _1695, ((((_1696 * _1619) * _1693) + 1.0f) * _1686)));
      _1708 = mad(_1681, _1618, mad(_1688, ((_1694 * _1618) + _1690), ((_1686 * _1690) * _1695)));
      _1713 = mad(_1681, _1617, mad(_1688, (-0.0f - _1618), (-0.0f - (_1696 * _1686))));
      _1714 = select(_1597, 10, 6);
      if (!_169) {
        _1720 = min(0.5f, ((_120 * 0.0025f) + 0.25f));
      } else {
        _1720 = 1.0f;
      }
      _1727 = ((abs(_1618) * (select(_1599, 12.0f, 2.0f) - _1600)) + _1600) * select(_169, 0.01f, 0.1f);
      if (!_169) {
        _1735 = max((_120 * select(((uint)((int)(_85) + (int)(-11)) < (uint)9), 0.008f, 0.03f)), _1727);
      } else {
        _1735 = _1727;
      }
      _1738 = (_terrainNormalParams.z > 0.0f);
      if (_1738) {
        _1742 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 255)));
        _1903 = frac(frac(dot(float2(((_1742 * 32.665f) + _65), ((_1742 * 11.815f) + _66)), float2(0.06711056f, 0.00583715f))) * 52.982918f);
      } else {
        _1764 = (uint)((uint)((_bufferSizeAndInvSize.x * _66) + _65)) + (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524))));
        _1772 = (uint)((uint)((((int)((uint)((uint)((uint)(_1764)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1764)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_1764)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _1780 = (uint)((uint)((((int)((uint)((uint)((uint)(_1772)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1772)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_1772)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1764));
        _1788 = (uint)((uint)((((int)((uint)((uint)((uint)(_1780)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1780)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_1780)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1772));
        _1796 = (uint)((uint)((((int)((uint)((uint)((uint)(_1788)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1788)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_1788)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1780));
        _1804 = (uint)((uint)((((int)((uint)((uint)((uint)(_1796)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1796)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_1796)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1788));
        _1812 = (uint)((uint)((((int)((uint)((uint)((uint)(_1804)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1804)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_1804)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1796));
        _1820 = (uint)((uint)((((int)((uint)((uint)((uint)(_1812)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1812)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_1812)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1804));
        _1828 = (uint)((uint)((((int)((uint)((uint)((uint)(_1820)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1820)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_1820)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1812));
        _1836 = (uint)((uint)((((int)((uint)((uint)((uint)(_1828)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1828)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_1828)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1820));
        _1844 = (uint)((uint)((((int)((uint)((uint)((uint)(_1836)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1836)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_1836)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1828));
        _1852 = (uint)((uint)((((int)((uint)((uint)((uint)(_1844)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1844)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_1844)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1836));
        _1860 = (uint)((uint)((((int)((uint)((uint)((uint)(_1852)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1852)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_1852)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1844));
        _1868 = (uint)((uint)((((int)((uint)((uint)((uint)(_1860)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1860)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_1860)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1852));
        _1876 = (uint)((uint)((((int)((uint)((uint)((uint)(_1868)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1868)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_1868)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1860));
        _1884 = (uint)((uint)((((int)((uint)((uint)((uint)(_1876)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1876)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_1876)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1868));
        if ((_1876 & 16777215) == 0) {
          _1897 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_1884)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1884)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_1884)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1876))));
        } else {
          _1897 = _1876;
        }
        _1903 = (((float)((uint)((uint)(((int)((uint)((uint)(_1897)) * (uint)(48271))) & 16777215)))) * 5.9604645e-08f);
      }
      if (_85 == 15) {
        _1912 = ((10.0f - (saturate(_120 * 0.001f) * 9.0f)) * _1903);
      } else {
        _1912 = _1903;
      }
      if (!_1738) {
        _1916 = saturate(_120 * 0.0625f) * 0.05f;
        _1921 = (_1916 * _110);
        _1922 = (_1916 * _109);
        _1923 = (_1916 * _108);
      } else {
        _1921 = 0.0f;
        _1922 = 0.0f;
        _1923 = 0.0f;
      }
      _1924 = _1923 + _141;
      _1925 = _1922 + _150;
      _1926 = _1921 + _159;
      _1938 = (_viewRelative[2].w) + mad((_viewRelative[2].z), _1926, mad((_viewRelative[2].y), _1925, ((_viewRelative[2].x) * _1924)));
      _1941 = mad((_viewRelative[2].z), _1713, mad((_viewRelative[2].y), _1708, ((_viewRelative[2].x) * _1702)));
      _1949 = select((((_1941 * _1735) + _1938) < _nearFarProj.x), ((_nearFarProj.x - _1938) / _1941), _1735);
      _1961 = (_viewProjRelative[2].w) + mad((_viewProjRelative[2].z), _1926, mad((_viewProjRelative[2].y), _1925, ((_viewProjRelative[2].x) * _1924)));
      _1969 = mad((_viewProjRelative[3].z), _1926, mad((_viewProjRelative[3].y), _1925, ((_viewProjRelative[3].x) * _1924))) + (_viewProjRelative[3].w);
      _1971 = (_1949 * _1702) + _1924;
      _1973 = (_1949 * _1708) + _1925;
      _1975 = (_1949 * _1713) + _1926;
      _1979 = mad((_viewProjRelative[3].z), _1975, mad((_viewProjRelative[3].y), _1973, (_1971 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _1988 = (mad((_viewProjRelative[0].z), _1926, mad((_viewProjRelative[0].y), _1925, ((_viewProjRelative[0].x) * _1924))) + (_viewProjRelative[0].w)) / _1969;
      _1997 = (mad((_viewProjRelative[1].z), _1926, mad((_viewProjRelative[1].y), _1925, ((_viewProjRelative[1].x) * _1924))) + (_viewProjRelative[1].w)) / _1969;
      _1998 = _1961 / _1969;
      _2004 = ((mad((_viewProjRelative[0].z), _1975, mad((_viewProjRelative[0].y), _1973, (_1971 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _1979) - _1988;
      _2010 = ((mad((_viewProjRelative[1].z), _1975, mad((_viewProjRelative[1].y), _1973, (_1971 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _1979) - _1997;
      _2012 = 1.0f / ((float)((uint)((uint)(_1714))));
      _2026 = max(_2012, (1.0f / min(1.0f, (max(((_bufferSizeAndInvSize.x * 0.5f) * abs(_2004)), ((_bufferSizeAndInvSize.y * 0.5f) * abs(_2010))) * _2012))));
      _2033 = (((mad((_viewProjRelative[2].z), _1975, mad((_viewProjRelative[2].y), _1973, (_1971 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w)) / _1979) - _1998) * _2026;
      _2048 = ((_1720 * 0.5f) * max(abs(_2033), (_1998 - ((mad((_proj[2].z), _120, 0.0f) + _1961) / (mad((_proj[3].z), _120, 0.0f) + _1969))))) * max(0.0625f, _2012);
      _2049 = _2026 * _2012;
      _2051 = (_2004 * 0.5f) * _2049;
      _2053 = (_2010 * -0.5f) * _2049;
      _2054 = _2033 * _2012;
      _2061 = max(_1912, (1.0f / max((abs(_2051) * _bufferSizeAndInvSize.x), (abs(_2053) * _bufferSizeAndInvSize.y))));
      _2062 = 0.5f / _bufferSizeAndInvSize.x;
      _2087 = 0.0f;
      _2088 = 0.0f;
      _2089 = 0;
      _2090 = 0;
      // [sem: expr_sat]
      _2091 = saturate(((_120 * 0.01f) * (1.0f - saturate(dot(float3(_108, _109, _110), float3((-0.0f - (_141 * _161)), (-0.0f - (_150 * _161)), (-0.0f - (_159 * _161))))))) + 0.01f);
      _2092 = _1912;
      _2093 = ((_2061 * _2054) + _1998);
      _2094 = ((0.5f - (_1997 * 0.5f)) + (_2061 * _2053));
      _2095 = (((_1988 * 0.5f) + 0.5f) + (_2061 * _2051));
      while(true) {
        // [sem: _3__36__0__0__g_depthStencil_load]
        _2107 = __3__36__0__0__g_depthStencil.Load(int3(((int)(_bufferSizeAndInvSize.x * min(max(_2095, _2062), (1.0f - _2062)))), ((int)(_bufferSizeAndInvSize.y * _2094)), 0));
        _2109 = (uint)((uint)(_2107.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _2112 = ((float)((uint)((uint)(_2107.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _2113 = _2109 & 127;
        _2114 = (_2090 == 0);
        _2115 = select(_2114, 1.0f, _2091);
        _2119 = _nearFarProj.x / max(1e-07f, _2112);
        _2122 = _2119 - (_nearFarProj.x / max(1e-07f, _2093));
        _2126 = (abs((_2093 + _2048) - _2112) < _2048);
        _2127 = (int)(uint)(_2126);
        if (_2126) {
          if (((uint)((int)(_2113) + (int)(-19)) < (uint)2) || ((_2113 == 18) || (((_2109 & 125) == 105) || ((_2113 == 106) || (((uint)((int)(_2113) + (int)(-27)) < (uint)2) || ((_2113 == 26) || ((_2113 == 107) || (((uint)((int)(_2113) + (int)(-5)) < (uint)2) || (((_2109 & 126) == 66) || ((_2113 == 7) || (_2113 == 53))))))))))) {
            _2173 = ((int)(uint)((int)((_2122 < 0.0f) && (_2122 > -0.08f))));
          } else {
            if ((_2113 != 67) && ((uint)((int)(_2113) + (int)(-52)) < (uint)16)) {
              _2173 = ((int)(uint)((int)((_2122 < 0.0f) && (_2122 > select((_2119 < 32.0f), -0.08f, -1.0f)))));
            } else {
              _2173 = _2127;
            }
          }
        } else {
          _2173 = _2127;
        }
        if (!(_2173 == 0)) {
          if ((uint)_2113 > (uint)11) {
            if (!((uint)_2113 < (uint)16)) {
              if (!(_2113 == 17)) {
                if (!(_2113 == 16)) {
                  if (!(((_2113 == 18) || (_2113 == 107)) || ((uint)((int)(_2113) + (int)(-19)) < (uint)2))) {
                    _2197 = select((_2113 == 66), 0.1f, 0.0f);
                  } else {
                    _2197 = 0.15f;
                  }
                } else {
                  _2197 = 0.1f;
                }
              } else {
                _2197 = 0.7f;
              }
            } else {
              _2197 = 0.9f;
            }
          } else {
            _2197 = select((_2113 == 11), 0.1f, 0.0f);
          }
          _2199 = saturate(_2119 * 0.015625f);  // [sem: expr_sat]
          _2202 = (1.0f - _2199) + (_2199 * _2197);
          // [sem: expr_sat]
          _2217 = saturate(((saturate(1.0f - ((_2202 * _2202) * _2197)) * (1.0f - _2087)) * saturate((-0.0f - _2122) / (_2092 * 0.0046548597f))) + _2087);
          _2218 = _2113;
        } else {
          _2217 = _2087;  // [sem: expr_sat]
          _2218 = _2089;
        }
        if ((_2113 != 0) && (_2217 > 0.95f)) {
          if (!_2114) {
            _2252 = (saturate((_2088 - _2112) / (_2088 - _2093)) - min(_2092, _2115));
          } else {
            _2252 = 0.0f;
          }
          _2254 = (_2252 * _2051) + _2095;
          _2256 = (_2252 * _2053) + _2094;
          _2258 = (_2252 * _2054) + _2093;
          _2259 = (_2217 > 0.0f);
          if (_2258 > 0.0f) {
            if ((_2259) || ((_2256 <= 1.0f) && ((_2256 >= 0.0f) && ((_2254 >= 0.0f) && (_2254 <= 1.0f))))) {
              _2272 = (_2254 * 2.0f) + -1.0f;
              _2274 = 1.0f - (_2256 * 2.0f);
              _2286 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _2258, mad((_invViewProjRelative[3].y), _2274, ((_invViewProjRelative[3].x) * _2272)));
              if (!(_2113 == 2)) {
                if (!(_2113 == 3)) {
                  if (_2113 == 21) {
                    _2305 = select((_85 == 21), 20.0f, 0.0f);
                  } else {
                    _2296 = (_2113 == 22);
                    _2305 = select(((_85 == 22) && _2296), 20.0f, select(_2296, 0.0f, 1.0f));
                  }
                } else {
                  _2305 = 0.0f;
                }
              } else {
                _2305 = select((_85 == 2), 20.0f, 0.0f);
              }
              if (_559 && (_2217 == 1.0f)) {
                // [sem: expr_sat]
                _2350 = saturate(((((_1735 * 0.9375f) - max(0.0f, dot(float3(_1702, _1708, _1713), float3((((mad((_invViewProjRelative[0].z), _2258, mad((_invViewProjRelative[0].y), _2274, ((_invViewProjRelative[0].x) * _2272))) + (_invViewProjRelative[0].w)) / _2286) - _1924), (((mad((_invViewProjRelative[1].z), _2258, mad((_invViewProjRelative[1].y), _2274, ((_invViewProjRelative[1].x) * _2272))) + (_invViewProjRelative[1].w)) / _2286) - _1925), (((mad((_invViewProjRelative[2].z), _2258, mad((_invViewProjRelative[2].y), _2274, ((_invViewProjRelative[2].x) * _2272))) + (_invViewProjRelative[2].w)) / _2286) - _1926))))) * ((_120 * 0.015625f) + 1.5f)) / _1735) * 0.9375f);
              } else {
                _2350 = _2217;  // [sem: expr_sat]
              }
              _2362 = saturate(exp2(min(0.0f, (((_120 * 0.018666666f) + 0.13333334f) + ((_2119 - (_nearFarProj.x / max(1e-07f, _2258))) * _2305))) * 1.442695f)) * _2350;
              _2363 = _2109 & 126;
              if (!(_2363 == 6)) {
                if ((((_85 == 33) && (_2113 == 33)) || (!(_85 == 33) && ((_85 == 54) && (_2113 == 54))))) {
                  _2615 = (_2362 * 0.01f);
                } else {
                  if (!((_2113 == 53) || (_2363 == 66)) || (((_2113 == 53) || (_2363 == 66)) && (!((_1596 == 66) || (_85 == 53))))) {
                    if (!_169) {
                      if ((uint)((int)(_2113) + (int)(-52)) < (uint)16) {
                        _2391 = saturate(_120 * 0.03125f);  // [sem: expr_sat]
                      } else {
                        _2391 = 1.0f;  // [sem: expr_sat]
                      }
                      _2615 = (_2391 * _2362);
                    } else {
                      _2615 = _2362;
                    }
                  } else {
                    // [sem: _3__36__0__0__g_baseColor_load]
                    _2399 = __3__36__0__0__g_baseColor.Load(int3(((int)(_2254 * _bufferSizeAndInvSize.x)), ((int)(_2256 * _bufferSizeAndInvSize.y)), 0));
                    _2405 = ((float)((uint)((uint)(((uint)((uint)(_2399.x)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
                    _2408 = ((float)((uint)((uint)(_2399.x & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
                    _2412 = ((float)((uint)((uint)(((uint)((uint)(_2399.y)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
                    _2413 = _2405 * _2405;
                    _2414 = _2408 * _2408;
                    _2415 = _2412 * _2412;
                    _2615 = (saturate(1.0f - (dot(float3((((_2413 * 0.61312f) + (_2414 * 0.33951f)) + (_2415 * 0.04737f)), (((_2413 * 0.0702f) + (_2414 * 0.91636f)) + (_2415 * 0.01345f)), (((_2413 * 0.02062f) + (_2414 * 0.10958f)) + (_2415 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _2362);
                  }
                }
              } else {
                _2615 = (_2362 * 0.01f);
              }
            } else {
              _2615 = 0.0f;
            }
          } else {
            if (_2259) {
              _2440 = _2112;
              _2441 = _2258;
              _2442 = _2256;
              _2443 = _2254;
              _2444 = _2113;
              _2446 = (_2443 * 2.0f) + -1.0f;
              _2448 = 1.0f - (_2442 * 2.0f);
              _2460 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _2441, mad((_invViewProjRelative[3].y), _2448, ((_invViewProjRelative[3].x) * _2446)));
              if (!(_2444 == 2)) {
                if (!(_2444 == 3)) {
                  if (_2444 == 21) {
                    _2479 = select((_85 == 21), 20.0f, 0.0f);
                  } else {
                    _2470 = (_2444 == 22);
                    _2479 = select(((_85 == 22) && _2470), 20.0f, select(_2470, 0.0f, 1.0f));
                  }
                } else {
                  _2479 = 0.0f;
                }
              } else {
                _2479 = select((_85 == 2), 20.0f, 0.0f);
              }
              if (_559 && (_2217 == 1.0f)) {
                // [sem: expr_sat]
                _2524 = saturate(((((_1735 * 0.9375f) - max(0.0f, dot(float3(_1702, _1708, _1713), float3((((mad((_invViewProjRelative[0].z), _2441, mad((_invViewProjRelative[0].y), _2448, ((_invViewProjRelative[0].x) * _2446))) + (_invViewProjRelative[0].w)) / _2460) - _1924), (((mad((_invViewProjRelative[1].z), _2441, mad((_invViewProjRelative[1].y), _2448, ((_invViewProjRelative[1].x) * _2446))) + (_invViewProjRelative[1].w)) / _2460) - _1925), (((mad((_invViewProjRelative[2].z), _2441, mad((_invViewProjRelative[2].y), _2448, ((_invViewProjRelative[2].x) * _2446))) + (_invViewProjRelative[2].w)) / _2460) - _1926))))) * ((_120 * 0.015625f) + 1.5f)) / _1735) * 0.9375f);
              } else {
                _2524 = _2217;  // [sem: expr_sat]
              }
              _2538 = saturate(exp2(min(0.0f, (((_120 * 0.018666666f) + 0.13333334f) + (((_nearFarProj.x / max(1e-07f, _2440)) - (_nearFarProj.x / max(1e-07f, _2441))) * _2479))) * 1.442695f)) * _2524;
              _2539 = _2444 & -2;
              if (!(_2539 == 6)) {
                if ((((_85 == 33) && (_2444 == 33)) || (!(_85 == 33) && ((_85 == 54) && (_2444 == 54))))) {
                  _2615 = (_2538 * 0.01f);
                } else {
                  if (!((_2444 == 53) || (_2539 == 66)) || (((_2444 == 53) || (_2539 == 66)) && (!((_1596 == 66) || (_85 == 53))))) {
                    if (!_169) {
                      if ((uint)((int)((uint)((uint)(_2444)) + (uint)(-52))) < (uint)16) {
                        _2567 = saturate(_120 * 0.03125f);  // [sem: expr_sat]
                      } else {
                        _2567 = 1.0f;  // [sem: expr_sat]
                      }
                      _2615 = (_2567 * _2538);
                    } else {
                      _2615 = _2538;
                    }
                  } else {
                    // [sem: _3__36__0__0__g_baseColor_load]
                    _2575 = __3__36__0__0__g_baseColor.Load(int3(((int)(_2443 * _bufferSizeAndInvSize.x)), ((int)(_2442 * _bufferSizeAndInvSize.y)), 0));
                    _2581 = ((float)((uint)((uint)(((uint)((uint)(_2575.x)) >> 8) & 255)))) * 0.003921569f;
                    _2584 = ((float)((uint)((uint)(_2575.x & 255)))) * 0.003921569f;
                    _2588 = ((float)((uint)((uint)(((uint)((uint)(_2575.y)) >> 8) & 255)))) * 0.003921569f;
                    _2589 = _2581 * _2581;
                    _2590 = _2584 * _2584;
                    _2591 = _2588 * _2588;
                    _2615 = (saturate(1.0f - (dot(float3((((_2589 * 0.61312f) + (_2590 * 0.33951f)) + (_2591 * 0.04737f)), (((_2589 * 0.0702f) + (_2590 * 0.91636f)) + (_2591 * 0.01345f)), (((_2589 * 0.02062f) + (_2590 * 0.10958f)) + (_2591 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _2538);
                  }
                }
              } else {
                _2615 = (_2538 * 0.01f);
              }
            } else {
              _2615 = 0.0f;
            }
          }
        } else {
          if ((uint)_2090 < (uint)((int)(_1714) + (int)(-1))) {
            _2242 = _2112;
            _2243 = (_2115 + _2092);
            _2244 = ((_2115 * _2054) + _2093);
            _2245 = (_2094 + (_2115 * _2053));
            _2246 = (_2095 + (_2115 * _2051));
          } else {
            _2242 = _2088;
            _2243 = _2092;
            _2244 = _2093;
            _2245 = _2094;
            _2246 = _2095;
          }
          _2247 = (int)(_2090) + (int)(1);
          if ((uint)_2247 < (uint)_1714) {
            _2087 = _2217;
            _2088 = _2242;
            _2089 = _2218;
            _2090 = _2247;
            _2091 = _2115;  // [sem: expr_sat]
            _2092 = _2243;
            _2093 = _2244;
            _2094 = _2245;
            _2095 = _2246;
            continue;
          } else {
            if (_2217 > 0.0f) {
              _2440 = 0.0f;
              _2441 = -1.0f;
              _2442 = 0.0f;
              _2443 = 0.0f;
              _2444 = _2218;
              _2446 = (_2443 * 2.0f) + -1.0f;
              _2448 = 1.0f - (_2442 * 2.0f);
              _2460 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _2441, mad((_invViewProjRelative[3].y), _2448, ((_invViewProjRelative[3].x) * _2446)));
              if (!(_2444 == 2)) {
                if (!(_2444 == 3)) {
                  if (_2444 == 21) {
                    _2479 = select((_85 == 21), 20.0f, 0.0f);
                  } else {
                    _2470 = (_2444 == 22);
                    _2479 = select(((_85 == 22) && _2470), 20.0f, select(_2470, 0.0f, 1.0f));
                  }
                } else {
                  _2479 = 0.0f;
                }
              } else {
                _2479 = select((_85 == 2), 20.0f, 0.0f);
              }
              if (_559 && (_2217 == 1.0f)) {
                // [sem: expr_sat]
                _2524 = saturate(((((_1735 * 0.9375f) - max(0.0f, dot(float3(_1702, _1708, _1713), float3((((mad((_invViewProjRelative[0].z), _2441, mad((_invViewProjRelative[0].y), _2448, ((_invViewProjRelative[0].x) * _2446))) + (_invViewProjRelative[0].w)) / _2460) - _1924), (((mad((_invViewProjRelative[1].z), _2441, mad((_invViewProjRelative[1].y), _2448, ((_invViewProjRelative[1].x) * _2446))) + (_invViewProjRelative[1].w)) / _2460) - _1925), (((mad((_invViewProjRelative[2].z), _2441, mad((_invViewProjRelative[2].y), _2448, ((_invViewProjRelative[2].x) * _2446))) + (_invViewProjRelative[2].w)) / _2460) - _1926))))) * ((_120 * 0.015625f) + 1.5f)) / _1735) * 0.9375f);
              } else {
                _2524 = _2217;  // [sem: expr_sat]
              }
              _2538 = saturate(exp2(min(0.0f, (((_120 * 0.018666666f) + 0.13333334f) + (((_nearFarProj.x / max(1e-07f, _2440)) - (_nearFarProj.x / max(1e-07f, _2441))) * _2479))) * 1.442695f)) * _2524;
              _2539 = _2444 & -2;
              if (!(_2539 == 6)) {
                if ((((_85 == 33) && (_2444 == 33)) || (!(_85 == 33) && ((_85 == 54) && (_2444 == 54))))) {
                  _2615 = (_2538 * 0.01f);
                } else {
                  if (!((_2444 == 53) || (_2539 == 66)) || (((_2444 == 53) || (_2539 == 66)) && (!((_1596 == 66) || (_85 == 53))))) {
                    if (!_169) {
                      if ((uint)((int)((uint)((uint)(_2444)) + (uint)(-52))) < (uint)16) {
                        _2567 = saturate(_120 * 0.03125f);  // [sem: expr_sat]
                      } else {
                        _2567 = 1.0f;  // [sem: expr_sat]
                      }
                      _2615 = (_2567 * _2538);
                    } else {
                      _2615 = _2538;
                    }
                  } else {
                    // [sem: _3__36__0__0__g_baseColor_load]
                    _2575 = __3__36__0__0__g_baseColor.Load(int3(((int)(_2443 * _bufferSizeAndInvSize.x)), ((int)(_2442 * _bufferSizeAndInvSize.y)), 0));
                    _2581 = ((float)((uint)((uint)(((uint)((uint)(_2575.x)) >> 8) & 255)))) * 0.003921569f;
                    _2584 = ((float)((uint)((uint)(_2575.x & 255)))) * 0.003921569f;
                    _2588 = ((float)((uint)((uint)(((uint)((uint)(_2575.y)) >> 8) & 255)))) * 0.003921569f;
                    _2589 = _2581 * _2581;
                    _2590 = _2584 * _2584;
                    _2591 = _2588 * _2588;
                    _2615 = (saturate(1.0f - (dot(float3((((_2589 * 0.61312f) + (_2590 * 0.33951f)) + (_2591 * 0.04737f)), (((_2589 * 0.0702f) + (_2590 * 0.91636f)) + (_2591 * 0.01345f)), (((_2589 * 0.02062f) + (_2590 * 0.10958f)) + (_2591 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _2538);
                  }
                }
              } else {
                _2615 = (_2538 * 0.01f);
              }
            } else {
              _2615 = 0.0f;
            }
          }
        }
        _2619 = saturate(1.0f - _2615);  // [sem: expr_sat]
        break;
      }
    } else {
      _2619 = 1.0f;  // [sem: expr_sat]
    }
    _2620 = min(_1593, _2619);
    _2642 = float(half(_2620 * float(_1263)));
    _2643 = float(half(_2620 * float(_1262)));
    _2644 = float(half(_2620 * float(_1261)));
    _2645 = saturate((1.0f - _555) + (exp2(log2(saturate(_1587)) * 0.45454544f) * _555));  // [sem: expr_sat]
  }
  __3__38__0__1__g_shadowColorResultUAV[int2(_57, _64)] = float4((half)(half(_2642)), (half)(half(_2643)), (half)(half(_2644)), (half)(half(_2645)));
}
