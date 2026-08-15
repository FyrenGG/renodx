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

[numthreads(8, 8, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
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
  int _1159;
  float _1262;
  float _1263;
  half _1264;
  half _1265;
  half _1266;
  float _1343;
  float _1344;
  float _1345;
  int _1390;
  int _1426;
  float _1440;
  float _1453;
  int _1454;
  float _1545;
  float _1546;
  float _1547;
  float _1549;
  int _1550;
  float _1590;
  float _1591;
  float _1634;
  float _1635;
  float _1636;
  float _1736;
  float _1750;
  int _1922;
  float _1928;
  float _1940;
  float _1949;
  float _1950;
  float _1951;
  float _2099;
  float _2100;
  float _2101;
  float _2102;
  float _2103;
  int _2104;
  int _2105;
  float _2106;
  float _2107;
  bool _2172;
  int _2179;
  float _2202;
  int _2222;
  float _2223;
  float _2247;
  float _2248;
  float _2249;
  float _2250;
  float _2251;
  float _2255;
  float _2264;
  float _2265;
  float _2266;
  float _2267;
  int _2268;
  float _2347;
  float _2349;
  float _2373;
  float _2449;
  float _2452;
  float _2456;
  float _2471;
  float _2472;
  float _2473;
  float _2474;
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
  float _1101;
  float _1102;
  half _1121;
  half _1122;
  half _1123;
  float _1126;
  float _1127;
  float _1128;
  float _1129;
  float _1146;
  float _1147;
  float _1148;
  float _1160;
  float _1161;
  float _1168;
  float _1170;
  float _1174;
  float _1175;
  float _1176;
  float _1183;
  float _1199;
  float _1200;
  float _1221;
  float _1222;
  float _1243;
  float _1244;
  float _1255;
  float _1256;
  bool _1267;
  float _1269;
  float _1273;
  float _1274;
  bool _1283;
  float _1358;
  float _1369;
  float _1370;
  float _1375;
  uint _1395;
  float _1408;
  float _1409;
  float _1411;
  float _1412;
  float _1413;
  float _1414;
  uint _1431;
  float _1446;
  float _1447;
  float _1448;
  int _1457;
  float _1466;
  float _1467;
  float _1483;
  int _1484;
  int _1553;
  float _1562;
  float _1563;
  float _1580;
  int _1581;
  float _1604;
  int _1614;
  bool _1615;
  bool _1616;
  bool _1617;
  float _1618;
  int _1637;
  int _1641;
  uint _1647;
  int _1652;
  int _1657;
  float _1660;
  float _1671;
  float _1672;
  float _1677;
  float _1693;
  float _1697;
  float _1700;
  float _1703;
  float _1704;
  float _1706;
  float _1709;
  float _1710;
  float _1711;
  float _1712;
  float _1721;
  float _1725;
  float _1729;
  int _1730;
  float _1742;
  bool _1763;
  float _1767;
  uint _1789;
  uint _1797;
  uint _1805;
  uint _1813;
  uint _1821;
  uint _1829;
  uint _1837;
  uint _1845;
  uint _1853;
  uint _1861;
  uint _1869;
  uint _1877;
  uint _1885;
  uint _1893;
  uint _1901;
  uint _1909;
  float _1944;
  float _1952;
  float _1953;
  float _1954;
  float _1966;
  float _1969;
  float _1977;
  float _2009;
  float _2013;
  float _2017;
  float _2018;
  float _2019;
  float _2035;
  float _2036;
  float _2037;
  float _2038;
  float _2042;
  float _2043;
  float _2046;
  float _2057;
  float _2058;
  float _2077;
  float _2078;
  float _2080;
  float _2082;
  float _2083;
  float _2090;
  float _2097;
  uint _2116;
  int _2118;
  float _2121;
  int _2122;
  bool _2123;
  float _2124;
  float _2128;
  float _2131;
  bool _2135;
  int _2136;
  float _2204;
  float _2207;
  int _2252;
  bool _2272;
  float _2286;
  float _2287;
  float _2323;
  bool _2340;
  float _2374;
  int _2375;
  uint4 _2404;
  float _2410;
  float _2413;
  float _2417;
  float _2418;
  float _2419;
  float _2420;
  float _2457;
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
    _2471 = _111;
    _2472 = _111;
    _2473 = _111;
    _2474 = _111;  // [sem: expr_sat]
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
      _1146 = _27[min((uint)(_828), 1u)];
      _1147 = _28[min((uint)(_828), 1u)];
      _1148 = _29[min((uint)(_828), 1u)];
      if (_966) {
        _1159 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_964)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_964)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_964)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_956))));
      } else {
        _1159 = _956;
      }
      _1160 = _shadowSizeAndInvSize.z * 2.0f;
      _1161 = _shadowSizeAndInvSize.w * 2.0f;
      _1168 = _shadowSizeAndInvSize.z * 2.3841858e-07f;
      _1170 = _shadowSizeAndInvSize.w * 2.3841858e-07f;
      _1174 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1159)) * (uint)(48271))) & 16777215)))) * _1168) - _1160) + _1146;
      _1175 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1159)) * (uint)(-1964877855))) & 16777215)))) * _1170) - _1161) + _1147;
      _1176 = (float)((uint)((uint)(_828)));
      _1183 = _1148 - _826;
      _1199 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1159)) * (uint)(-856141137))) & 16777215)))) * _1168) - _1160) + _1146;
      _1200 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1159)) * (uint)(-613502015))) & 16777215)))) * _1170) - _1161) + _1147;
      _1221 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1159)) * (uint)(-556260145))) & 16777215)))) * _1168) - _1160) + _1146;
      _1222 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1159)) * (uint)(902075297))) & 16777215)))) * _1170) - _1161) + _1147;
      _1243 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1159)) * (uint)(1698214639))) & 16777215)))) * _1168) - _1160) + _1146;
      _1244 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1159)) * (uint)(773027713))) & 16777215)))) * _1170) - _1161) + _1147;
      _1255 = (((saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1199, _1200, _1176), _1183)).x)) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1174, _1175, _1176), _1183)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1221, _1222, _1176), _1183)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1243, _1244, _1176), _1183)).x))) * 0.25f;
      _1256 = (((max(0.0f, (_1148 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1199, _1200, _1176), 0.0f))).x))) + max(0.0f, (_1148 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1174, _1175, _1176), 0.0f))).x)))) + max(0.0f, (_1148 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1221, _1222, _1176), 0.0f))).x)))) + max(0.0f, (_1148 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1243, _1244, _1176), 0.0f))).x)))) * 0.25f;
      _1262 = saturate(_1255 * _1255);  // [sem: expr_sat]
      _1263 = saturate(_1256 * _1256);  // [sem: expr_sat]
      _1264 = 1.0h;
      _1265 = 1.0h;
      _1266 = 1.0h;
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
      _1101 = (((saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1033, _1034, _1005), _1012)).x)) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1003, _1004, _1005), _1012)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1059, _1060, _1005), _1012)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1085, _1086, _1005), _1012)).x))) * 0.25f;
      _1102 = (((max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1033, _1034, _1005), 0.0f))).x))) + max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1003, _1004, _1005), 0.0f))).x)))) + max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1059, _1060, _1005), 0.0f))).x)))) + max(0.0f, (_972 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1085, _1086, _1005), 0.0f))).x)))) * 0.25f;
      _1121 = half(float(((half)(((half)((half)(_1043.x) + (half)(_1019.x))) + (half)(_1069.x))) + ((half)((half)(_1095.x) * 2.0h))) * 0.2f);
      _1122 = half(float(((half)(((half)((half)(_1043.y) + (half)(_1019.y))) + (half)(_1069.y))) + ((half)((half)(_1095.y) * 2.0h))) * 0.2f);
      _1123 = half(float(((half)(((half)((half)(_1043.z) + (half)(_1019.z))) + (half)(_1069.z))) + ((half)((half)(_1095.z) * 2.0h))) * 0.2f);
      if (_828 == 1) {
        _1126 = float(_1121);
        _1127 = float(_1122);
        _1128 = float(_1123);
        _1129 = -0.0f - _713;
        _1262 = _1101;  // [sem: expr_sat]
        _1263 = _1102;  // [sem: expr_sat]
        _1264 = (half)(half((_1126 + _713) + (_1126 * _1129)));
        _1265 = (half)(half((_1127 + _713) + (_1127 * _1129)));
        _1266 = (half)(half((_1128 + _713) + (_1128 * _1129)));
      } else {
        _1262 = _1101;  // [sem: expr_sat]
        _1263 = _1102;  // [sem: expr_sat]
        _1264 = _1121;
        _1265 = _1122;
        _1266 = _1123;
      }
    }
    _1267 = (_827 != 0);
    _1269 = min(_555, select(_1267, _1262, 1.0f));
    _1273 = select((_711 != 0), select(_1267, (_1263 * 400.0f), 4e+06f), 1.0f);
    _1274 = _1273 + 0.98f;
    if (_171) {
      [branch]
      if (_nearFieldShadowFlag.x > 0.0f) {
        _1283 = (_shadowAOParams.w > 0.0f);
        if (_1283) {
          _1343 = (mad((_nearFieldShadowViewProjCompacted[0].z), _155, mad((_nearFieldShadowViewProjCompacted[0].y), _154, ((_nearFieldShadowViewProjCompacted[0].x) * _153))) + (_nearFieldShadowViewProjCompacted[0].w));
          _1344 = (mad((_nearFieldShadowViewProjCompacted[1].z), _155, mad((_nearFieldShadowViewProjCompacted[1].y), _154, ((_nearFieldShadowViewProjCompacted[1].x) * _153))) + (_nearFieldShadowViewProjCompacted[1].w));
          _1345 = (mad((_nearFieldShadowViewProjCompacted[2].z), _155, mad((_nearFieldShadowViewProjCompacted[2].y), _154, ((_nearFieldShadowViewProjCompacted[2].x) * _153))) + (_nearFieldShadowViewProjCompacted[2].w));
        } else {
          _1343 = (mad((_nearFieldShadowViewProj[0].z), _155, mad((_nearFieldShadowViewProj[0].y), _154, ((_nearFieldShadowViewProj[0].x) * _153))) + (_nearFieldShadowViewProj[0].w));
          _1344 = (mad((_nearFieldShadowViewProj[1].z), _155, mad((_nearFieldShadowViewProj[1].y), _154, ((_nearFieldShadowViewProj[1].x) * _153))) + (_nearFieldShadowViewProj[1].w));
          _1345 = (mad((_nearFieldShadowViewProj[2].z), _155, mad((_nearFieldShadowViewProj[2].y), _154, ((_nearFieldShadowViewProj[2].x) * _153))) + (_nearFieldShadowViewProj[2].w));
        }
        if (!((((_1343 < -1.0f) || (_1343 > 1.0f)) || ((_1344 < -1.0f) || (_1344 > 1.0f))) || ((_1345 < 0.0f) || (_1345 > 1.0f)))) {
          _1358 = (float)((uint)((uint)(_frameNumber.x)));
          _1369 = (frac(((_1358 * 92.0f) + _61) * 0.0078125f) * 128.0f) + -64.34062f;
          _1370 = (frac(((_1358 * 71.0f) + _62) * 0.0078125f) * 128.0f) + -72.46562f;
          _1375 = frac(dot(float3((_1369 * _1369), (_1370 * _1370), (_1370 * _1369)), float3(20.390625f, 60.703125f, 2.4281209f)));
          if (_966) {
            _1390 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_964)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_964)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_964)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_956))));
          } else {
            _1390 = _956;
          }
          _1395 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_1390)) * (uint)(48271))) & 16777215)))) * 3.8146377e-06f);
          _1408 = (frac((((float)((uint)((uint)(_1395)))) * 0.015625f) + (((float)((uint)((uint)(((int)((uint)(_1375 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f)) * 2.0f) + -1.0f;
          _1409 = (((float)((uint)((uint)(reversebits(_1395) ^ ((int)((uint)(_1375 * 2.8747837e+08f))))))) * 4.656613e-10f) + -1.0f;
          _1411 = rsqrt(dot(float2(_1408, _1409), float2(_1408, _1409)));  // [sem: invLength]
          _1412 = _1411 * _1408;
          _1413 = _1409 * _1411;
          _1414 = -0.0f - _1413;
          if (_966) {
            _1426 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_964)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_964)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_964)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_956))));
          } else {
            _1426 = _956;
          }
          _1431 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_1426)) * (uint)(48271))) & 16777215)))) * 9.5307826e-07f);
          if (_1283) {
            _1440 = max(3.0517578e-05f, (min(0.0003f, (_nearFieldShadowBoundsMax.w * 0.00048828125f)) / _nearFieldShadowBoundsMax.w));
          } else {
            _1440 = 0.00048828125f;
          }
          _1453 = 0.0f;
          _1454 = 0;
          while(true) {
            _1457 = ((int)((uint)((uint)((uint)(_1454)) << 2) + (uint)((uint)(_1431)))) & 15;
            _1466 = (_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_1457)) * (uint)(2))))), 31u)]) * _1440;
            _1467 = (_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_1457)) * (uint)(2))))), 31u)]) * _1440;
            _1483 = (1.0f - ((__3__36__0__0__g_nearFieldShadowDepth.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float2((((_1343 * 0.5f) + 0.5f) + mad(_1413, _1467, (_1466 * _1412))), ((0.5f - (_1344 * 0.5f)) + mad(_1412, _1467, (_1466 * _1414)))), (_1345 + -4e-05f))).x)) + _1453;
            _1484 = (int)(_1454) + (int)(1);
            if (!(_1484 == 4)) {
              _1453 = _1483;
              _1454 = _1484;
              continue;
            }
            while(true) {
              _1446 = _153 - (_104 * 0.012f);
              _1447 = _154 - (_105 * 0.012f);
              _1448 = _155 - (_106 * 0.012f);
              if (_shadowAOParams.w > 0.0f) {
                _1545 = (mad((_nearFieldShadowViewProjCompacted[0].z), _1448, mad((_nearFieldShadowViewProjCompacted[0].y), _1447, ((_nearFieldShadowViewProjCompacted[0].x) * _1446))) + (_nearFieldShadowViewProjCompacted[0].w));
                _1546 = (mad((_nearFieldShadowViewProjCompacted[1].z), _1448, mad((_nearFieldShadowViewProjCompacted[1].y), _1447, ((_nearFieldShadowViewProjCompacted[1].x) * _1446))) + (_nearFieldShadowViewProjCompacted[1].w));
                _1547 = (mad((_nearFieldShadowViewProjCompacted[2].z), _1448, mad((_nearFieldShadowViewProjCompacted[2].y), _1447, ((_nearFieldShadowViewProjCompacted[2].x) * _1446))) + (_nearFieldShadowViewProjCompacted[2].w));
              } else {
                _1545 = (mad((_nearFieldShadowViewProj[0].z), _1448, mad((_nearFieldShadowViewProj[0].y), _1447, ((_nearFieldShadowViewProj[0].x) * _1446))) + (_nearFieldShadowViewProj[0].w));
                _1546 = (mad((_nearFieldShadowViewProj[1].z), _1448, mad((_nearFieldShadowViewProj[1].y), _1447, ((_nearFieldShadowViewProj[1].x) * _1446))) + (_nearFieldShadowViewProj[1].w));
                _1547 = (mad((_nearFieldShadowViewProj[2].z), _1448, mad((_nearFieldShadowViewProj[2].y), _1447, ((_nearFieldShadowViewProj[2].x) * _1446))) + (_nearFieldShadowViewProj[2].w));
              }
              _1549 = 0.0f;
              _1550 = 0;
              while(true) {
                _1553 = ((int)((uint)((uint)((uint)(_1550)) << 2) + (uint)((uint)(_1431)))) & 15;
                _1562 = (_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_1553)) * (uint)(2))))), 31u)]) * _1440;
                _1563 = (_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_1553)) * (uint)(2))))), 31u)]) * _1440;
                _1580 = max(0.0f, (_1547 - ((__3__36__0__0__g_nearFieldShadowDepth.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_1545 * 0.5f) + 0.5f) + mad(_1413, _1563, (_1562 * _1412))), ((0.5f - (_1546 * 0.5f)) + mad(_1412, _1563, (_1562 * _1414)))), 0.0f)).x))) + _1549;
                _1581 = (int)(_1550) + (int)(1);
                if (!(_1581 == 4)) {
                  _1549 = _1580;
                  _1550 = _1581;
                  continue;
                }
                _1590 = min(_1269, (_1483 * 0.25f));
                _1591 = max((select(_171, _1274, _1273) + -0.98f), max(0.002f, (_1580 * 25.0f)));
                break;
              }
              break;
            }
            break;
          }
        } else {
          _1590 = _1269;
          _1591 = _1274;
        }
      } else {
        _1590 = _1269;
        _1591 = _1274;
      }
    } else {
      _1590 = _1269;
      _1591 = _1273;
    }
    _1604 = (_1590 - (_shadowAOParams.x * _1590)) + _shadowAOParams.x;
    [branch]
    if (_1604 > 0.0f) {
      _1614 = _77 & 126;
      _1615 = (_1614 == 64);
      _1616 = (_81 == 66);
      _1617 = _1615 || _1616;
      _1618 = select(_1617, 2.0f, 4.0f);
      if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
        _1634 = _sunDirection.x;
        _1635 = _sunDirection.y;
        _1636 = _sunDirection.z;
      } else {
        _1634 = _moonDirection.x;
        _1635 = _moonDirection.y;
        _1636 = _moonDirection.z;
      }
      _1637 = _59 & 3;
      _1641 = _60 & 3;
      _1647 = (uint)((uint)((uint)(_frameNumber.x)) * (uint)(1551)) + (uint)((uint)((int)(((int)((int)((int)(_1641) << 1) | (int)(_1641)) << 1) & 10) | (int)(((int)((int)(_1637) << 1) | (int)(_1637)) & 5)));
      _1652 = (int)(((int)((uint)((uint)(_1647)) << 2)) & -858993460) | (int)(((uint)((uint)(_1647)) >> 2) & 858993459);
      _1657 = (int)(((int)((uint)((uint)(_1652)) << 1)) & 10) | (int)(((uint)((uint)(_1652)) >> 1) & 21);
      _1660 = (float)((uint)((uint)(_frameNumber.x)));
      _1671 = (frac(((_1660 * 92.0f) + _61) * 0.0078125f) * 128.0f) + -64.34062f;
      _1672 = (frac(((_1660 * 71.0f) + _62) * 0.0078125f) * 128.0f) + -72.46562f;
      _1677 = frac(dot(float3((_1671 * _1671), (_1672 * _1672), (_1672 * _1671)), float3(20.390625f, 60.703125f, 2.4281209f)));
      _1693 = frac((((float)((uint)((uint)(((int)((uint)(_1677 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f) + (((float)((uint)((uint)(_1657)))) * 0.03125f)) * 6.2831855f;
      _1697 = (((1.0f - _shadowAOParams.z) * 2.3283064e-10f) * ((float)((uint)((uint)(reversebits(_1657) ^ ((int)((uint)(_1677 * 2.8747837e+08f)))))))) + _shadowAOParams.z;
      _1700 = sqrt(1.0f - (_1697 * _1697));
      _1703 = cos(_1693) * _1700;
      _1704 = sin(_1693) * _1700;
      _1706 = select((_1636 >= 0.0f), 1.0f, -1.0f);
      _1709 = -0.0f - (1.0f / (_1706 + _1636));
      _1710 = _1635 * _1709;
      _1711 = _1710 * _1634;
      _1712 = _1706 * _1634;
      _1721 = mad(_1697, _1634, mad(_1704, _1711, ((((_1712 * _1634) * _1709) + 1.0f) * _1703)));
      _1725 = mad(_1697, _1635, mad(_1704, (_1706 + (_1710 * _1635)), ((_1703 * _1706) * _1711)));
      _1729 = mad(_1697, _1636, mad(_1704, (-0.0f - _1635), (-0.0f - (_1712 * _1703))));
      _1730 = select(_1615, 10, 6);
      if (!_171) {
        _1736 = min(0.5f, ((_116 * 0.0025f) + 0.25f));
      } else {
        _1736 = 1.0f;
      }
      _1742 = ((abs(_1635) * (select(_1617, 12.0f, 2.0f) - _1618)) + _1618) * select(_171, 0.01f, 0.1f);
      if (!_171) {
        _1750 = max((_116 * select(((uint)((int)(_81) + (int)(-11)) < (uint)9), 0.008f, 0.03f)), _1742);
      } else {
        _1750 = _1742;
      }
      _1763 = (_terrainNormalParams.z > 0.0f);
      if (_1763) {
        _1767 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 255)));
        _1928 = frac(frac(dot(float2(((_1767 * 32.665f) + _61), ((_1767 * 11.815f) + _62)), float2(0.06711056f, 0.00583715f))) * 52.982918f);
      } else {
        _1789 = (uint)((uint)((_bufferSizeAndInvSize.x * _62) + _61)) + (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524))));
        _1797 = (uint)((uint)((((int)((uint)((uint)((uint)(_1789)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1789)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_1789)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _1805 = (uint)((uint)((((int)((uint)((uint)((uint)(_1797)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1797)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_1797)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1789));
        _1813 = (uint)((uint)((((int)((uint)((uint)((uint)(_1805)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1805)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_1805)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1797));
        _1821 = (uint)((uint)((((int)((uint)((uint)((uint)(_1813)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1813)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_1813)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1805));
        _1829 = (uint)((uint)((((int)((uint)((uint)((uint)(_1821)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1821)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_1821)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1813));
        _1837 = (uint)((uint)((((int)((uint)((uint)((uint)(_1829)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1829)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_1829)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1821));
        _1845 = (uint)((uint)((((int)((uint)((uint)((uint)(_1837)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1837)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_1837)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1829));
        _1853 = (uint)((uint)((((int)((uint)((uint)((uint)(_1845)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1845)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_1845)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1837));
        _1861 = (uint)((uint)((((int)((uint)((uint)((uint)(_1853)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1853)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_1853)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1845));
        _1869 = (uint)((uint)((((int)((uint)((uint)((uint)(_1861)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1861)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_1861)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1853));
        _1877 = (uint)((uint)((((int)((uint)((uint)((uint)(_1869)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1869)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_1869)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1861));
        _1885 = (uint)((uint)((((int)((uint)((uint)((uint)(_1877)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1877)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_1877)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1869));
        _1893 = (uint)((uint)((((int)((uint)((uint)((uint)(_1885)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1885)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_1885)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1877));
        _1901 = (uint)((uint)((((int)((uint)((uint)((uint)(_1893)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1893)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_1893)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1885));
        _1909 = (uint)((uint)((((int)((uint)((uint)((uint)(_1901)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1901)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_1901)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1893));
        if ((_1901 & 16777215) == 0) {
          _1922 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_1909)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1909)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_1909)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1901))));
        } else {
          _1922 = _1901;
        }
        _1928 = (((float)((uint)((uint)(((int)((uint)((uint)(_1922)) * (uint)(48271))) & 16777215)))) * 5.9604645e-08f);
      }
      if ((_81 == 15) && (!(_1616 || ((_81 != 15) && ((uint)((int)(_81) + (int)(-12)) < (uint)7))))) {
        _1940 = ((10.0f - (saturate(_116 * 0.001f) * 9.0f)) * _1928);
      } else {
        _1940 = _1928;
      }
      if (!_1763) {
        _1944 = saturate(_116 * 0.0625f) * 0.05f;
        _1949 = (_1944 * _104);
        _1950 = (_1944 * _105);
        _1951 = (_1944 * _106);
      } else {
        _1949 = 0.0f;
        _1950 = 0.0f;
        _1951 = 0.0f;
      }
      _1952 = _1949 + _153;
      _1953 = _1950 + _154;
      _1954 = _1951 + _155;
      _1966 = mad((_viewRelative[2].z), _1954, mad((_viewRelative[2].y), _1953, ((_viewRelative[2].x) * _1952))) + (_viewRelative[2].w);
      _1969 = mad((_viewRelative[2].z), _1729, mad((_viewRelative[2].y), _1725, ((_viewRelative[2].x) * _1721)));
      _1977 = select((((_1969 * _1750) + _1966) < _nearFarProj.x), ((_nearFarProj.x - _1966) / _1969), _1750);
      _2009 = mad((_viewProjRelative[2].z), _1954, mad((_viewProjRelative[2].y), _1953, ((_viewProjRelative[2].x) * _1952))) + (_viewProjRelative[2].w);
      _2013 = mad((_viewProjRelative[3].z), _1954, mad((_viewProjRelative[3].y), _1953, ((_viewProjRelative[3].x) * _1952))) + (_viewProjRelative[3].w);
      _2017 = (_1977 * _1721) + _1952;
      _2018 = (_1977 * _1725) + _1953;
      _2019 = (_1977 * _1729) + _1954;
      _2035 = mad((_viewProjRelative[3].z), _2019, mad((_viewProjRelative[3].y), _2018, ((_viewProjRelative[3].x) * _2017))) + (_viewProjRelative[3].w);
      _2036 = (mad((_viewProjRelative[0].z), _1954, mad((_viewProjRelative[0].y), _1953, ((_viewProjRelative[0].x) * _1952))) + (_viewProjRelative[0].w)) / _2013;
      _2037 = (mad((_viewProjRelative[1].z), _1954, mad((_viewProjRelative[1].y), _1953, ((_viewProjRelative[1].x) * _1952))) + (_viewProjRelative[1].w)) / _2013;
      _2038 = _2009 / _2013;
      _2042 = ((mad((_viewProjRelative[0].z), _2019, mad((_viewProjRelative[0].y), _2018, ((_viewProjRelative[0].x) * _2017))) + (_viewProjRelative[0].w)) / _2035) - _2036;
      _2043 = ((mad((_viewProjRelative[1].z), _2019, mad((_viewProjRelative[1].y), _2018, ((_viewProjRelative[1].x) * _2017))) + (_viewProjRelative[1].w)) / _2035) - _2037;
      _2046 = 1.0f / ((float)((uint)((uint)(_1730))));
      _2057 = max(_2046, (1.0f / min(1.0f, (max(((_bufferSizeAndInvSize.x * 0.5f) * abs(_2042)), ((_bufferSizeAndInvSize.y * 0.5f) * abs(_2043))) * _2046))));
      _2058 = _2057 * (((mad((_viewProjRelative[2].z), _2019, mad((_viewProjRelative[2].y), _2018, ((_viewProjRelative[2].x) * _2017))) + (_viewProjRelative[2].w)) / _2035) - _2038);
      _2077 = ((_1736 * 0.5f) * max(abs(_2058), (_2038 - ((mad((_proj[2].z), _116, 0.0f) + _2009) / (mad((_proj[3].z), _116, 0.0f) + _2013))))) * max(0.0625f, _2046);
      _2078 = _2057 * _2046;
      _2080 = (_2042 * 0.5f) * _2078;
      _2082 = (_2043 * -0.5f) * _2078;
      _2083 = _2058 * _2046;
      _2090 = max(_1940, (1.0f / max((abs(_2080) * _bufferSizeAndInvSize.x), (abs(_2082) * _bufferSizeAndInvSize.y))));
      _2097 = 0.5f / _bufferSizeAndInvSize.x;
      _2099 = (((_2036 * 0.5f) + 0.5f) + (_2090 * _2080));
      _2100 = ((0.5f - (_2037 * 0.5f)) + (_2090 * _2082));
      _2101 = ((_2090 * _2083) + _2038);
      _2102 = _1940;
      // [sem: expr_sat]
      _2103 = saturate(((_116 * 0.01f) * (1.0f - saturate(dot(float3(_104, _105, _106), float3((-0.0f - (_153 * _157)), (-0.0f - (_154 * _157)), (-0.0f - (_155 * _157))))))) + 0.01f);
      _2104 = 0;
      _2105 = 0;
      _2106 = 0.0f;
      _2107 = 0.0f;
      while(true) {
        // [sem: _3__36__0__0__g_depthStencil_load]
        _2116 = __3__36__0__0__g_depthStencil.Load(int3(((int)(min(max(_2099, _2097), (1.0f - _2097)) * _bufferSizeAndInvSize.x)), ((int)(_2100 * _bufferSizeAndInvSize.y)), 0));
        _2118 = (uint)((uint)(_2116.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _2121 = ((float)((uint)((uint)(_2116.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _2122 = _2118 & 127;
        _2123 = (_2104 == 0);
        _2124 = select(_2123, 1.0f, _2103);
        _2128 = _nearFarProj.x / max(1e-07f, _2121);
        _2131 = _2128 - (_nearFarProj.x / max(1e-07f, _2101));
        _2135 = (abs((_2101 + _2077) - _2121) < _2077);
        _2136 = (int)(uint)(_2135);
        if (_2135) {
          if ((_2122 == 7) || ((_2122 == 53) || (((_2118 & 126) == 66) || (((uint)((int)(_2122) + (int)(-5)) < (uint)2) || ((_2122 == 107) || ((_2122 == 26) || (((uint)((int)(_2122) + (int)(-27)) < (uint)2) || ((_2122 == 106) || (((_2118 & 125) == 105) || ((_2122 == 18) || ((uint)((int)(_2122) + (int)(-19)) < (uint)2))))))))))) {
            _2172 = true;
            _2179 = ((int)(uint)((int)((_2131 < 0.0f) && (_2131 > select(_2172, -0.08f, -1.0f)))));
          } else {
            if ((_2122 != 67) && ((uint)((int)(_2122) + (int)(-52)) < (uint)16)) {
              _2172 = (_2128 < 32.0f);
              _2179 = ((int)(uint)((int)((_2131 < 0.0f) && (_2131 > select(_2172, -0.08f, -1.0f)))));
            } else {
              _2179 = _2136;
            }
          }
        } else {
          _2179 = _2136;
        }
        if (!(_2179 == 0)) {
          if ((uint)_2122 > (uint)11) {
            if (!((uint)_2122 < (uint)16)) {
              if (!(_2122 == 17)) {
                if (!(_2122 == 16)) {
                  if (!((_2122 == 18) || ((_2122 == 107) || ((uint)((int)(_2122) + (int)(-19)) < (uint)2)))) {
                    if (!(_2122 == 66)) {
                      _2202 = 0.0f;
                    } else {
                      _2202 = 0.1f;
                    }
                  } else {
                    _2202 = 0.15f;
                  }
                } else {
                  _2202 = 0.1f;
                }
              } else {
                _2202 = 0.7f;
              }
            } else {
              _2202 = 0.9f;
            }
          } else {
            if (!(_2122 == 11)) {
              _2202 = 0.0f;
            } else {
              _2202 = 0.1f;
            }
          }
          _2204 = saturate(_2128 * 0.015625f);  // [sem: expr_sat]
          _2207 = (1.0f - _2204) + (_2204 * _2202);
          _2222 = _2122;
          // [sem: expr_sat]
          _2223 = saturate(((saturate(1.0f - ((_2207 * _2207) * _2202)) * (1.0f - _2107)) * saturate((-0.0f - _2131) / (_2102 * 0.0046548597f))) + _2107);
        } else {
          _2222 = _2105;
          _2223 = _2107;  // [sem: expr_sat]
        }
        if ((_2122 != 0) && (_2223 > 0.95f)) {
          if (!_2123) {
            _2255 = (saturate((_2106 - _2121) / (_2106 - _2101)) - min(_2102, _2124));
          } else {
            _2255 = 0.0f;
          }
          _2264 = ((_2255 * _2080) + _2099);
          _2265 = ((_2255 * _2082) + _2100);
          _2266 = ((_2255 * _2083) + _2101);
          _2267 = _2121;
          _2268 = _2122;
        } else {
          if ((uint)_2104 < (uint)((int)(_1730) + (int)(-1))) {
            _2247 = ((_2124 * _2080) + _2099);
            _2248 = ((_2124 * _2082) + _2100);
            _2249 = ((_2124 * _2083) + _2101);
            _2250 = (_2124 + _2102);
            _2251 = _2121;
          } else {
            _2247 = _2099;
            _2248 = _2100;
            _2249 = _2101;
            _2250 = _2102;
            _2251 = _2106;
          }
          _2252 = (int)(_2104) + (int)(1);
          if ((uint)_2252 < (uint)_1730) {
            _2099 = _2247;
            _2100 = _2248;
            _2101 = _2249;
            _2102 = _2250;
            _2103 = _2124;  // [sem: expr_sat]
            _2104 = _2252;
            _2105 = _2222;
            _2106 = _2251;
            _2107 = _2223;
            continue;
          } else {
            _2264 = 0.0f;
            _2265 = 0.0f;
            _2266 = -1.0f;
            _2267 = 0.0f;
            _2268 = _2222;
          }
        }
        _2272 = (_2223 > 0.0f);
        if (_2266 > 0.0f) {
          if (_2272 || (((_2264 >= 0.0f) && (_2264 <= 1.0f)) && ((_2265 >= 0.0f) && (_2265 <= 1.0f)))) {
            _2286 = (_2264 * 2.0f) + -1.0f;
            _2287 = 1.0f - (_2265 * 2.0f);
            _2323 = mad((_invViewProjRelative[3].z), _2266, mad((_invViewProjRelative[3].y), _2287, ((_invViewProjRelative[3].x) * _2286))) + (_invViewProjRelative[3].w);
            if (!(_2268 == 2)) {
              if (_2268 == 3) {
                _2347 = 0.0f;
                _2349 = _2347;
              } else {
                if (_2268 == 21) {
                  if (!(_81 == 21)) {
                    _2347 = 0.0f;
                    _2349 = _2347;
                  } else {
                    _2349 = 20.0f;
                  }
                } else {
                  _2340 = (_2268 == 22);
                  if (!((_81 == 22) && _2340)) {
                    _2347 = select(_2340, 0.0f, 1.0f);
                    _2349 = _2347;
                  } else {
                    _2349 = 20.0f;
                  }
                }
              }
            } else {
              if (!(_81 == 2)) {
                _2347 = 0.0f;
                _2349 = _2347;
              } else {
                _2349 = 20.0f;
              }
            }
            if (_559 && (_2223 == 1.0f)) {
              // [sem: expr_sat]
              _2373 = saturate(((((_1750 * 0.9375f) - max(0.0f, dot(float3(_1721, _1725, _1729), float3((((mad((_invViewProjRelative[0].z), _2266, mad((_invViewProjRelative[0].y), _2287, ((_invViewProjRelative[0].x) * _2286))) + (_invViewProjRelative[0].w)) / _2323) - _1952), (((mad((_invViewProjRelative[1].z), _2266, mad((_invViewProjRelative[1].y), _2287, ((_invViewProjRelative[1].x) * _2286))) + (_invViewProjRelative[1].w)) / _2323) - _1953), (((mad((_invViewProjRelative[2].z), _2266, mad((_invViewProjRelative[2].y), _2287, ((_invViewProjRelative[2].x) * _2286))) + (_invViewProjRelative[2].w)) / _2323) - _1954))))) * ((_116 * 0.015625f) + 1.5f)) / _1750) * 0.9375f);
            } else {
              _2373 = _2223;  // [sem: expr_sat]
            }
            _2374 = _2373 * saturate(exp2(min(0.0f, (((_116 * 0.018666666f) + 0.13333334f) + (_2349 * ((_nearFarProj.x / max(1e-07f, _2267)) - (_nearFarProj.x / max(1e-07f, _2266)))))) * 1.442695f));
            _2375 = _2268 & -2;
            if (!(_2375 == 6)) {
              if ((((_81 == 33) && (_2268 == 33)) || (!(_81 == 33) && ((_81 == 54) && (_2268 == 54))))) {
                _2452 = (_2374 * 0.01f);
              } else {
                if (!((_2268 == 53) || (_2375 == 66)) || (((_2268 == 53) || (_2375 == 66)) && (!((_1614 == 66) || (_81 == 53))))) {
                  if (!_171) {
                    if ((uint)((int)((uint)((uint)(_2268)) + (uint)(-52))) < (uint)16) {
                      _2449 = saturate(_116 * 0.03125f);  // [sem: expr_sat]
                    } else {
                      _2449 = 1.0f;  // [sem: expr_sat]
                    }
                    _2452 = (_2449 * _2374);
                  } else {
                    _2452 = _2374;
                  }
                } else {
                  // [sem: _3__36__0__0__g_baseColor_load]
                  _2404 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _2264)), ((int)(_bufferSizeAndInvSize.y * _2265)), 0));
                  _2410 = ((float)((uint)((uint)(((uint)((uint)(_2404.x)) >> 8) & 255)))) * 0.003921569f;
                  _2413 = ((float)((uint)((uint)(_2404.x & 255)))) * 0.003921569f;
                  _2417 = ((float)((uint)((uint)(((uint)((uint)(_2404.y)) >> 8) & 255)))) * 0.003921569f;
                  _2418 = _2410 * _2410;
                  _2419 = _2413 * _2413;
                  _2420 = _2417 * _2417;
                  _2452 = (saturate(1.0f - (dot(float3((((_2418 * 0.61312f) + (_2419 * 0.33951f)) + (_2420 * 0.04737f)), (((_2418 * 0.0702f) + (_2419 * 0.91636f)) + (_2420 * 0.01345f)), (((_2418 * 0.02062f) + (_2419 * 0.10958f)) + (_2420 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _2374);
                }
              }
            } else {
              _2452 = (_2374 * 0.01f);
            }
          } else {
            _2452 = 0.0f;
          }
        } else {
          if (_2272) {
            _2286 = (_2264 * 2.0f) + -1.0f;
            _2287 = 1.0f - (_2265 * 2.0f);
            _2323 = mad((_invViewProjRelative[3].z), _2266, mad((_invViewProjRelative[3].y), _2287, ((_invViewProjRelative[3].x) * _2286))) + (_invViewProjRelative[3].w);
            if (!(_2268 == 2)) {
              if (_2268 == 3) {
                _2347 = 0.0f;
                _2349 = _2347;
              } else {
                if (_2268 == 21) {
                  if (!(_81 == 21)) {
                    _2347 = 0.0f;
                    _2349 = _2347;
                  } else {
                    _2349 = 20.0f;
                  }
                } else {
                  _2340 = (_2268 == 22);
                  if (!((_81 == 22) && _2340)) {
                    _2347 = select(_2340, 0.0f, 1.0f);
                    _2349 = _2347;
                  } else {
                    _2349 = 20.0f;
                  }
                }
              }
            } else {
              if (!(_81 == 2)) {
                _2347 = 0.0f;
                _2349 = _2347;
              } else {
                _2349 = 20.0f;
              }
            }
            if (_559 && (_2223 == 1.0f)) {
              // [sem: expr_sat]
              _2373 = saturate(((((_1750 * 0.9375f) - max(0.0f, dot(float3(_1721, _1725, _1729), float3((((mad((_invViewProjRelative[0].z), _2266, mad((_invViewProjRelative[0].y), _2287, ((_invViewProjRelative[0].x) * _2286))) + (_invViewProjRelative[0].w)) / _2323) - _1952), (((mad((_invViewProjRelative[1].z), _2266, mad((_invViewProjRelative[1].y), _2287, ((_invViewProjRelative[1].x) * _2286))) + (_invViewProjRelative[1].w)) / _2323) - _1953), (((mad((_invViewProjRelative[2].z), _2266, mad((_invViewProjRelative[2].y), _2287, ((_invViewProjRelative[2].x) * _2286))) + (_invViewProjRelative[2].w)) / _2323) - _1954))))) * ((_116 * 0.015625f) + 1.5f)) / _1750) * 0.9375f);
            } else {
              _2373 = _2223;  // [sem: expr_sat]
            }
            _2374 = _2373 * saturate(exp2(min(0.0f, (((_116 * 0.018666666f) + 0.13333334f) + (_2349 * ((_nearFarProj.x / max(1e-07f, _2267)) - (_nearFarProj.x / max(1e-07f, _2266)))))) * 1.442695f));
            _2375 = _2268 & -2;
            if (!(_2375 == 6)) {
              if ((((_81 == 33) && (_2268 == 33)) || (!(_81 == 33) && ((_81 == 54) && (_2268 == 54))))) {
                _2452 = (_2374 * 0.01f);
              } else {
                if (!((_2268 == 53) || (_2375 == 66)) || (((_2268 == 53) || (_2375 == 66)) && (!((_1614 == 66) || (_81 == 53))))) {
                  if (!_171) {
                    if ((uint)((int)((uint)((uint)(_2268)) + (uint)(-52))) < (uint)16) {
                      _2449 = saturate(_116 * 0.03125f);  // [sem: expr_sat]
                    } else {
                      _2449 = 1.0f;  // [sem: expr_sat]
                    }
                    _2452 = (_2449 * _2374);
                  } else {
                    _2452 = _2374;
                  }
                } else {
                  // [sem: _3__36__0__0__g_baseColor_load]
                  _2404 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _2264)), ((int)(_bufferSizeAndInvSize.y * _2265)), 0));
                  _2410 = ((float)((uint)((uint)(((uint)((uint)(_2404.x)) >> 8) & 255)))) * 0.003921569f;
                  _2413 = ((float)((uint)((uint)(_2404.x & 255)))) * 0.003921569f;
                  _2417 = ((float)((uint)((uint)(((uint)((uint)(_2404.y)) >> 8) & 255)))) * 0.003921569f;
                  _2418 = _2410 * _2410;
                  _2419 = _2413 * _2413;
                  _2420 = _2417 * _2417;
                  _2452 = (saturate(1.0f - (dot(float3((((_2418 * 0.61312f) + (_2419 * 0.33951f)) + (_2420 * 0.04737f)), (((_2418 * 0.0702f) + (_2419 * 0.91636f)) + (_2420 * 0.01345f)), (((_2418 * 0.02062f) + (_2419 * 0.10958f)) + (_2420 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _2374);
                }
              }
            } else {
              _2452 = (_2374 * 0.01f);
            }
          } else {
            _2452 = 0.0f;
          }
        }
        _2456 = saturate(1.0f - _2452);  // [sem: expr_sat]
        break;
      }
    } else {
      _2456 = 1.0f;  // [sem: expr_sat]
    }
    _2457 = min(_1604, _2456);
    _2471 = float(half(_2457 * float(_1264)));
    _2472 = float(half(_2457 * float(_1265)));
    _2473 = float(half(_2457 * float(_1266)));
    _2474 = saturate((1.0f - _555) + (exp2(log2(saturate(_1591)) * 0.45454544f) * _555));  // [sem: expr_sat]
  }
  __3__38__0__1__g_shadowColorResultUAV[int2(_59, _60)] = float4((half)(half(_2471)), (half)(half(_2472)), (half)(half(_2473)), (half)(half(_2474)));
}
