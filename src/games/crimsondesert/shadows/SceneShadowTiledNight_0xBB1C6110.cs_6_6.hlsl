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
  int _44;
  int _48;
  uint _54;
  uint _61;
  float _62;
  float _63;
  float _69;
  float _74;
  uint _76;
  int _78;
  float _81;
  int _82;
  uint _84;
  float _90;
  float _96;
  float _102;
  float _104;
  float _105;
  float _106;
  float _107;
  bool _108;
  int _369;
  float _552;
  float _565;
  float _566;
  float _567;
  float _641;
  int _642;
  float _643;
  int _767;
  float _768;
  bool _817;
  int _818;
  float _819;
  int _820;
  int _821;
  float _822;
  int _977;
  int _1098;
  half _1606;
  half _1607;
  half _1608;
  float _1609;
  float _1610;
  float _1646;
  float _1647;
  float _1648;
  float _1747;
  float _1762;
  int _1802;
  float _1808;
  float _1817;
  float _1826;
  float _1827;
  float _1828;
  float _1976;
  float _1977;
  int _1978;
  float _1979;
  float _1980;
  float _1981;
  float _1982;
  float _1983;
  int _1984;
  int _2062;
  float _2086;
  float _2106;
  int _2107;
  float _2120;
  float _2139;
  float _2140;
  float _2141;
  float _2142;
  float _2143;
  float _2151;
  float _2152;
  int _2153;
  float _2154;
  float _2155;
  float _2156;
  float _2157;
  float _2158;
  int _2159;
  int _2237;
  float _2261;
  float _2281;
  int _2282;
  float _2295;
  float _2314;
  float _2315;
  float _2316;
  float _2317;
  float _2318;
  float _2325;
  float _2326;
  float _2327;
  float _2328;
  int _2329;
  float _2330;
  float _2369;
  float _2402;
  float _2447;
  float _2499;
  float _2500;
  float _2501;
  float _2502;
  int _2503;
  float _2504;
  float _2531;
  float _2564;
  float _2609;
  float _2660;
  float _2664;
  float _2689;
  float _2690;
  float _2691;
  float _2692;
  float _112;
  float _114;
  float _117;
  float _129;
  float _138;
  float _147;
  float _156;
  float _158;
  int _165;
  bool _166;
  float _178;
  float _186;
  float _194;
  float _207;
  float _213;
  float _219;
  float _224;
  uint _236;
  uint _244;
  uint _252;
  uint _260;
  uint _268;
  uint _276;
  uint _284;
  uint _292;
  uint _300;
  uint _308;
  uint _316;
  uint _324;
  uint _332;
  uint _340;
  uint _348;
  uint _356;
  uint _374;
  float _383;
  float _385;
  float _392;
  float _394;
  float _397;
  float _399;
  float _403;
  float _406;
  float _409;
  float4 _412;
  float _417;
  float _419;
  float _421;
  float _426;
  float _430;
  float _433;
  float _436;
  float4 _437;
  float _443;
  float _445;
  float _450;
  float _454;
  float _457;
  float _460;
  float4 _461;
  float _467;
  float _469;
  float _474;
  float _478;
  float _481;
  float _484;
  float4 _485;
  float _491;
  float _493;
  float _498;
  float _555;
  bool _556;
  float _585;
  float _593;
  float _601;
  float _604;
  float _605;
  bool _611;
  float _625;
  float _631;
  float _655;
  float _663;
  float _671;
  float _690;
  float _696;
  float _710;
  float _712;
  float _714;
  float _717;
  float _719;
  float _721;
  float _733;
  float _741;
  float _749;
  float _752;
  float _753;
  float _771;
  float _773;
  float _775;
  float _787;
  float _795;
  float _803;
  uint _836;
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
  bool _958;
  int _959;
  float _964;
  float _965;
  float _966;
  float _980;
  float _982;
  float _983;
  float _984;
  float _990;
  float _996;
  float _997;
  float _998;
  float _1004;
  float _1010;
  float _1016;
  float _1022;
  float _1028;
  float _1034;
  float _1056;
  float _1077;
  float _1083;
  float _1084;
  float _1085;
  float _1087;
  float _1101;
  float _1103;
  float _1105;
  float _1106;
  float _1107;
  float _1113;
  float _1119;
  float _1120;
  float _1121;
  half4 _1124;
  float _1133;
  float _1139;
  half4 _1140;
  float _1149;
  float _1155;
  half4 _1156;
  float _1165;
  float _1171;
  half4 _1172;
  float _1181;
  float _1187;
  half4 _1188;
  float _1197;
  float _1203;
  half4 _1204;
  float _1213;
  float _1219;
  half4 _1220;
  float _1229;
  float _1235;
  half4 _1236;
  float _1245;
  float _1251;
  half4 _1252;
  float _1261;
  float _1267;
  half4 _1268;
  float _1277;
  float _1283;
  half4 _1284;
  float _1293;
  float _1299;
  half4 _1300;
  float _1309;
  float _1315;
  half4 _1316;
  float _1325;
  float _1331;
  half4 _1332;
  float _1341;
  float _1347;
  half4 _1348;
  float _1357;
  float _1363;
  half4 _1364;
  float _1449;
  float _1529;
  half _1548;
  half _1567;
  half _1586;
  float _1589;
  float _1590;
  float _1591;
  float _1592;
  bool _1611;
  float _1613;
  float _1617;
  float _1622;
  int _1625;
  bool _1626;
  bool _1628;
  float _1629;
  int _1649;
  int _1650;
  uint _1660;
  int _1665;
  int _1670;
  float _1671;
  float _1677;
  float _1683;
  float _1688;
  float _1698;
  float _1708;
  float _1711;
  float _1713;
  float _1715;
  float _1717;
  float _1720;
  float _1721;
  float _1722;
  float _1723;
  float _1729;
  float _1735;
  float _1740;
  int _1741;
  float _1754;
  float _1775;
  bool _1778;
  float _1782;
  float _1821;
  float _1829;
  float _1830;
  float _1831;
  float _1843;
  float _1846;
  float _1853;
  float _1865;
  float _1873;
  float _1875;
  float _1877;
  float _1879;
  float _1883;
  float _1892;
  float _1901;
  float _1902;
  float _1908;
  float _1914;
  float _1916;
  float _1928;
  float _1935;
  float _1946;
  float _1947;
  float _1948;
  float _1950;
  float _1952;
  float _1953;
  float _1960;
  float _1961;
  float _1965;
  float _1969;
  float _1971;
  float _1974;
  uint _1996;
  int _1998;
  float _2001;
  int _2002;
  bool _2003;
  float _2004;
  float _2008;
  float _2011;
  bool _2015;
  int _2016;
  float _2088;
  float _2091;
  int _2144;
  float _2149;
  uint _2171;
  int _2173;
  float _2176;
  int _2177;
  bool _2178;
  float _2179;
  float _2183;
  float _2186;
  bool _2190;
  int _2191;
  float _2263;
  float _2266;
  int _2319;
  bool _2331;
  float _2344;
  float _2346;
  float _2350;
  bool _2360;
  float _2418;
  int _2419;
  uint4 _2458;
  float _2464;
  float _2467;
  float _2471;
  float _2472;
  float _2473;
  float _2474;
  float _2506;
  float _2508;
  float _2512;
  bool _2522;
  float _2580;
  int _2581;
  uint4 _2620;
  float _2626;
  float _2629;
  float _2633;
  float _2634;
  float _2635;
  float _2636;
  float _2665;
  int __loop_jump_target = -1;
  int _23[4];
  float _24[2];
  float _25[2];
  float _26[2];
  _32 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _23[0] = _32.x;
  _23[1] = _32.y;
  _23[2] = _32.z;
  _23[3] = _32.w;
  _44 = _23[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _48 = select((((int)(SV_GroupID.x) & 16) == 0), _44, ((uint)((uint)(_44)) >> 16));
  _54 = (uint)((uint)((int)((int)(((int)((uint)((uint)(_48)) << 2)) & 1020) | (int)((int)(SV_GroupID.x) & 3)) << 3)) + (uint)(SV_GroupThreadID.x);
  _61 = (uint)((uint)((int)((int)(((uint)((uint)(_48)) >> 6) & 1020) | (int)(((uint)(SV_GroupID.x) >> 2) & 3)) << 3)) + (uint)(SV_GroupThreadID.y);
  _62 = (float)((uint)((uint)(_54)));
  _63 = (float)((uint)((uint)(_61)));
  _69 = ((_bufferSizeAndInvSize.z * 2.0f) * (_62 + 0.5f)) + -1.0f;
  _74 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (_63 + 0.5f));
  _76 = __3__36__0__0__g_depthStencil.Load(int3(_54, _61, 0));  // [sem: _3__36__0__0__g_depthStencil_load]
  _78 = (uint)((uint)(_76.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _81 = ((float)((uint)((uint)(_76.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _82 = _78 & 127;
  _84 = __3__36__0__0__g_sceneNormal.Load(int3(_54, _61, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
  _90 = min(1.0f, ((((float)((uint)((uint)(_84.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _96 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_84.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _102 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_84.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _104 = rsqrt(dot(float3(_90, _96, _102), float3(_90, _96, _102)));  // [sem: invLength]
  _105 = _104 * _90;
  _106 = _104 * _96;
  _107 = _104 * _102;
  _108 = (_81 == 1.0f);
  if ((_81 < 1e-07f) || _108) {
    _112 = select(_108, 0.0f, 1.0f);
    _2689 = _112;
    _2690 = _112;
    _2691 = _112;
    _2692 = _112;  // [sem: expr_sat]
  } else {
    _114 = max(1e-07f, _81);
    _117 = _nearFarProj.x / _114;
    _129 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _114, mad((_invViewProjRelative[3].y), _74, ((_invViewProjRelative[3].x) * _69)));
    _138 = (mad((_invViewProjRelative[0].z), _114, mad((_invViewProjRelative[0].y), _74, ((_invViewProjRelative[0].x) * _69))) + (_invViewProjRelative[0].w)) / _129;
    _147 = (mad((_invViewProjRelative[1].z), _114, mad((_invViewProjRelative[1].y), _74, ((_invViewProjRelative[1].x) * _69))) + (_invViewProjRelative[1].w)) / _129;
    _156 = (mad((_invViewProjRelative[2].z), _114, mad((_invViewProjRelative[2].y), _74, ((_invViewProjRelative[2].x) * _69))) + (_invViewProjRelative[2].w)) / _129;
    _158 = rsqrt(dot(float3(_138, _147, _156), float3(_138, _147, _156)));  // [sem: invLength]
    _24[0] = 0.0f;
    _25[0] = 0.0f;
    _26[0] = 0.0f;
    _24[1] = 0.0f;
    _25[1] = 0.0f;
    _26[1] = 0.0f;
    _165 = (int)(_82) + (int)(-52);
    _166 = ((uint)_165 < (uint)16);
    _178 = (_terrainShadowProjRelativeTexScale[0].w) + mad((_terrainShadowProjRelativeTexScale[0].z), _156, mad((_terrainShadowProjRelativeTexScale[0].y), _147, ((_terrainShadowProjRelativeTexScale[0].x) * _138)));
    _186 = mad((_terrainShadowProjRelativeTexScale[1].z), _156, mad((_terrainShadowProjRelativeTexScale[1].y), _147, ((_terrainShadowProjRelativeTexScale[1].x) * _138))) + (_terrainShadowProjRelativeTexScale[1].w);
    _194 = mad((_terrainShadowProjRelativeTexScale[2].z), _156, mad((_terrainShadowProjRelativeTexScale[2].y), _147, ((_terrainShadowProjRelativeTexScale[2].x) * _138))) + (_terrainShadowProjRelativeTexScale[2].w);
    if ((_194 <= 1.0f) && ((saturate(_178) == _178) && (_194 >= 0.0001f))) {
      if (saturate(_186) == _186) {
        _207 = (float)((uint)((uint)(_frameNumber.x)));
        _213 = (frac(((_207 * 92.0f) + _62) * 0.0078125f) * 128.0f) + -64.34062f;
        _219 = (frac(((_207 * 71.0f) + _63) * 0.0078125f) * 128.0f) + -72.46562f;
        _224 = frac(dot(float3((_213 * _213), (_219 * _219), (_219 * _213)), float3(20.390625f, 60.703125f, 2.4281209f)));
        _236 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_63 * _bufferSizeAndInvSize.x) + _62));
        _244 = (uint)((uint)((((int)((uint)((uint)((uint)(_236)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_236)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_236)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _252 = (uint)((uint)((((int)((uint)((uint)((uint)(_244)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_244)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_244)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_236));
        _260 = (uint)((uint)((((int)((uint)((uint)((uint)(_252)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_252)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_252)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_244));
        _268 = (uint)((uint)((((int)((uint)((uint)((uint)(_260)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_260)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_260)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_252));
        _276 = (uint)((uint)((((int)((uint)((uint)((uint)(_268)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_268)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_268)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_260));
        _284 = (uint)((uint)((((int)((uint)((uint)((uint)(_276)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_276)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_276)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_268));
        _292 = (uint)((uint)((((int)((uint)((uint)((uint)(_284)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_284)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_284)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_276));
        _300 = (uint)((uint)((((int)((uint)((uint)((uint)(_292)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_292)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_292)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_284));
        _308 = (uint)((uint)((((int)((uint)((uint)((uint)(_300)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_300)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_300)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_292));
        _316 = (uint)((uint)((((int)((uint)((uint)((uint)(_308)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_308)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_308)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_300));
        _324 = (uint)((uint)((((int)((uint)((uint)((uint)(_316)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_316)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_316)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_308));
        _332 = (uint)((uint)((((int)((uint)((uint)((uint)(_324)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_324)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_324)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_316));
        _340 = (uint)((uint)((((int)((uint)((uint)((uint)(_332)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_332)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_332)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_324));
        _348 = (uint)((uint)((((int)((uint)((uint)((uint)(_340)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_340)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_340)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_332));
        _356 = (uint)((uint)((((int)((uint)((uint)((uint)(_348)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_348)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_348)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_340));
        if ((_348 & 16777215) == 0) {
          _369 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_356)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_356)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_356)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_348))));
        } else {
          _369 = _348;
        }
        _374 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_369)) * (uint)(48271))) & 16777215)))) * 3.8146377e-06f);
        _383 = frac((((float)((uint)((uint)(_374)))) * 0.015625f) + (((float)((uint)((uint)(((int)((uint)(_224 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f));
        _385 = (_383 * 2.0f) + -1.0f;
        _392 = (((float)((uint)((uint)(reversebits(_374) ^ ((int)((uint)(_224 * 2.8747837e+08f))))))) * 4.656613e-10f) + -1.0f;
        _394 = rsqrt(dot(float2(_385, _392), float2(_385, _392)));  // [sem: invLength]
        _397 = _394 * ((_383 * 0.0009765625f) + -0.00048828125f);
        _399 = (_394 * 0.00048828125f) * _392;
        _403 = ((_jitterOffset[0].x) * _397) + _178;
        _406 = (_399 * (_jitterOffset[0].y)) + _186;
        _409 = frac((_403 * 1024.0f) + -0.5f);
        _412 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_403, _406));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _417 = _194 + -0.005f;
        _419 = select((_412.w > _417), 1.0f, 0.0f);
        _421 = select((_412.x > _417), 1.0f, 0.0f);
        _426 = ((select((_412.z > _417), 1.0f, 0.0f) - _419) * _409) + _419;
        _430 = ((_jitterOffset[1].x) * _397) + _178;
        _433 = ((_jitterOffset[1].y) * _399) + _186;
        _436 = frac((_430 * 1024.0f) + -0.5f);
        _437 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_430, _433));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _443 = select((_437.w > _417), 1.0f, 0.0f);
        _445 = select((_437.x > _417), 1.0f, 0.0f);
        _450 = ((select((_437.z > _417), 1.0f, 0.0f) - _443) * _436) + _443;
        _454 = ((_jitterOffset[2].x) * _397) + _178;
        _457 = ((_jitterOffset[2].y) * _399) + _186;
        _460 = frac((_454 * 1024.0f) + -0.5f);
        _461 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_454, _457));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _467 = select((_461.w > _417), 1.0f, 0.0f);
        _469 = select((_461.x > _417), 1.0f, 0.0f);
        _474 = ((select((_461.z > _417), 1.0f, 0.0f) - _467) * _460) + _467;
        _478 = ((_jitterOffset[3].x) * _397) + _178;
        _481 = ((_jitterOffset[3].y) * _399) + _186;
        _484 = frac((_478 * 1024.0f) + -0.5f);
        _485 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_478, _481));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _491 = select((_485.w > _417), 1.0f, 0.0f);
        _493 = select((_485.x > _417), 1.0f, 0.0f);
        _498 = ((select((_485.z > _417), 1.0f, 0.0f) - _491) * _484) + _491;
        _552 = ((((saturate((frac((_406 * 1024.0f) + -0.5f) * ((((select((_412.y > _417), 1.0f, 0.0f) - _421) * _409) + _421) - _426)) + _426) + saturate((frac((_433 * 1024.0f) + -0.5f) * ((((select((_437.y > _417), 1.0f, 0.0f) - _445) * _436) + _445) - _450)) + _450)) + saturate((frac((_457 * 1024.0f) + -0.5f) * ((((select((_461.y > _417), 1.0f, 0.0f) - _469) * _460) + _469) - _474)) + _474)) + saturate((((((select((_485.y > _417), 1.0f, 0.0f) - _493) * _484) + _493) - _498) * frac((_481 * 1024.0f) + -0.5f)) + _498)) * 0.25f);
      } else {
        _552 = 1.0f;
      }
    } else {
      _552 = 1.0f;
    }
    _555 = min(max((_117 * 0.002f), 0.005f), 0.5f);
    _556 = ((uint)_165 > (uint)15);
    if (_556) {
      _565 = ((_555 * _107) + _156);
      _566 = ((_555 * _106) + _147);
      _567 = ((_555 * _105) + _138);
    } else {
      _565 = _156;
      _566 = _147;
      _567 = _138;
    }
    _585 = (_dynamicShadowProjRelativeTexScale[1][0].w) + mad((_dynamicShadowProjRelativeTexScale[1][0].z), _565, mad((_dynamicShadowProjRelativeTexScale[1][0].y), _566, ((_dynamicShadowProjRelativeTexScale[1][0].x) * _567)));
    _593 = mad((_dynamicShadowProjRelativeTexScale[1][1].z), _565, mad((_dynamicShadowProjRelativeTexScale[1][1].y), _566, ((_dynamicShadowProjRelativeTexScale[1][1].x) * _567))) + (_dynamicShadowProjRelativeTexScale[1][1].w);
    _601 = mad((_dynamicShadowProjRelativeTexScale[1][2].z), _565, mad((_dynamicShadowProjRelativeTexScale[1][2].y), _566, ((_dynamicShadowProjRelativeTexScale[1][2].x) * _567))) + (_dynamicShadowProjRelativeTexScale[1][2].w);
    _604 = 4.0f / _dynmaicShadowSizeAndInvSize.y;
    _605 = 1.0f - _604;
    _611 = (sqrt(((_147 * _147) + (_138 * _138)) + (_156 * _156)) < 128.0f);
    if ((_593 >= _604) && ((_601 <= 1.0f) && ((_601 >= -1.0f) && (_611 && ((_593 <= _605) && ((_585 >= _604) && (_585 <= _605))))))) {
      _625 = max(0.0f, ((abs((_585 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _631 = max(0.0f, ((abs((_593 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _24[1] = _585;
      _25[1] = _593;
      _26[1] = _601;
      _641 = sqrt((_631 * _631) + (_625 * _625));
      _642 = 1;
      _643 = select((_terrainNormalParams.y > 0.0f), 2e-05f, 8e-05f);
    } else {
      _641 = 0.0f;
      _642 = 0;
      _643 = 0.0f;
    }
    _655 = (_dynamicShadowProjRelativeTexScale[0][0].w) + mad((_dynamicShadowProjRelativeTexScale[0][0].z), _565, mad((_dynamicShadowProjRelativeTexScale[0][0].y), _566, ((_dynamicShadowProjRelativeTexScale[0][0].x) * _567)));
    _663 = mad((_dynamicShadowProjRelativeTexScale[0][1].z), _565, mad((_dynamicShadowProjRelativeTexScale[0][1].y), _566, ((_dynamicShadowProjRelativeTexScale[0][1].x) * _567))) + (_dynamicShadowProjRelativeTexScale[0][1].w);
    _671 = mad((_dynamicShadowProjRelativeTexScale[0][2].z), _565, mad((_dynamicShadowProjRelativeTexScale[0][2].y), _566, ((_dynamicShadowProjRelativeTexScale[0][2].x) * _567))) + (_dynamicShadowProjRelativeTexScale[0][2].w);
    if ((_671 <= 1.0f) && ((_663 >= _604) && ((_611 && (((_655 >= _604) && (_655 <= _605)) && (_663 <= _605))) && (_671 >= -1.0f)))) {
      _690 = max(0.0f, ((abs((_655 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _696 = max(0.0f, ((abs((_663 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _24[0] = _655;
      _25[0] = _663;
      _26[0] = _671;
      _817 = false;
      _818 = 1;
      _819 = sqrt((_696 * _696) + (_690 * _690));
      _820 = 0;
      _821 = 1;
      _822 = select((_terrainNormalParams.y > 0.0f), 5e-06f, 2e-05f);
    } else {
      [branch]
      if (_642 == 0) {
        _710 = _viewPos.x + _567;
        _712 = _viewPos.y + _566;
        _714 = _viewPos.z + _565;
        _717 = _710 - (_staticShadowPosition[1].x);
        _719 = _712 - (_staticShadowPosition[1].y);
        _721 = _714 - (_staticShadowPosition[1].z);
        _733 = (_shadowProjRelativeTexScale[1][0].w) + mad((_shadowProjRelativeTexScale[1][0].z), _721, mad((_shadowProjRelativeTexScale[1][0].y), _719, ((_shadowProjRelativeTexScale[1][0].x) * _717)));
        _741 = mad((_shadowProjRelativeTexScale[1][1].z), _721, mad((_shadowProjRelativeTexScale[1][1].y), _719, ((_shadowProjRelativeTexScale[1][1].x) * _717))) + (_shadowProjRelativeTexScale[1][1].w);
        _749 = mad((_shadowProjRelativeTexScale[1][2].z), _721, mad((_shadowProjRelativeTexScale[1][2].y), _719, ((_shadowProjRelativeTexScale[1][2].x) * _717))) + (_shadowProjRelativeTexScale[1][2].w);
        _752 = 2.0f / _shadowSizeAndInvSize.y;
        _753 = 1.0f - _752;
        if ((_741 >= _752) && ((_749 <= 1.0f) && ((_749 >= 0.0001f) && ((_741 <= _753) && ((_733 >= _752) && (_733 <= _753)))))) {
          _24[1] = _733;
          _25[1] = _741;
          _26[1] = _749;
          _767 = 1;
          _768 = 0.0002f;
        } else {
          _767 = 0;
          _768 = _643;
        }
        _771 = _710 - (_staticShadowPosition[0].x);
        _773 = _712 - (_staticShadowPosition[0].y);
        _775 = _714 - (_staticShadowPosition[0].z);
        _787 = (_shadowProjRelativeTexScale[0][0].w) + mad((_shadowProjRelativeTexScale[0][0].z), _775, mad((_shadowProjRelativeTexScale[0][0].y), _773, ((_shadowProjRelativeTexScale[0][0].x) * _771)));
        _795 = mad((_shadowProjRelativeTexScale[0][1].z), _775, mad((_shadowProjRelativeTexScale[0][1].y), _773, ((_shadowProjRelativeTexScale[0][1].x) * _771))) + (_shadowProjRelativeTexScale[0][1].w);
        _803 = mad((_shadowProjRelativeTexScale[0][2].z), _775, mad((_shadowProjRelativeTexScale[0][2].y), _773, ((_shadowProjRelativeTexScale[0][2].x) * _771))) + (_shadowProjRelativeTexScale[0][2].w);
        if ((_803 <= 1.0f) && ((_795 >= _752) && ((((_787 >= _752) && (_787 <= _753)) && (_795 <= _753)) && (_803 >= 0.0001f)))) {
          _24[0] = _787;
          _25[0] = _795;
          _26[0] = _803;
          _817 = true;
          _818 = 0;
          _819 = _641;
          _820 = 0;
          _821 = 1;
          _822 = 0.0002f;
        } else {
          _817 = true;
          _818 = 0;
          _819 = _641;
          _820 = _767;
          _821 = _767;
          _822 = _768;
        }
      } else {
        _817 = false;
        _818 = 1;
        _819 = _641;
        _820 = 1;
        _821 = 1;
        _822 = _643;
      }
    }
    _836 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_63 * _bufferSizeAndInvSize.x) + _62));
    _844 = (uint)((uint)((((int)((uint)((uint)((uint)(_836)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_836)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_836)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
    _852 = (uint)((uint)((((int)((uint)((uint)((uint)(_844)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_844)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_844)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_836));
    _860 = (uint)((uint)((((int)((uint)((uint)((uint)(_852)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_852)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_852)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_844));
    _868 = (uint)((uint)((((int)((uint)((uint)((uint)(_860)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_860)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_860)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_852));
    _876 = (uint)((uint)((((int)((uint)((uint)((uint)(_868)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_868)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_868)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_860));
    _884 = (uint)((uint)((((int)((uint)((uint)((uint)(_876)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_876)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_876)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_868));
    _892 = (uint)((uint)((((int)((uint)((uint)((uint)(_884)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_884)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_884)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_876));
    _900 = (uint)((uint)((((int)((uint)((uint)((uint)(_892)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_892)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_892)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_884));
    _908 = (uint)((uint)((((int)((uint)((uint)((uint)(_900)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_900)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_900)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_892));
    _916 = (uint)((uint)((((int)((uint)((uint)((uint)(_908)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_908)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_908)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_900));
    _924 = (uint)((uint)((((int)((uint)((uint)((uint)(_916)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_916)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_916)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_908));
    _932 = (uint)((uint)((((int)((uint)((uint)((uint)(_924)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_924)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_924)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_916));
    _940 = (uint)((uint)((((int)((uint)((uint)((uint)(_932)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_932)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_932)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_924));
    _948 = (uint)((uint)((((int)((uint)((uint)((uint)(_940)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_940)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_940)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_932));
    _956 = (uint)((uint)((((int)((uint)((uint)((uint)(_948)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_948)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_948)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_940));
    _958 = ((_948 & 16777215) == 0);
    _959 = (int)min((uint)(_820), (uint)(1));
    [branch]
    if (_817) {
      _964 = _24[_959];
      _965 = _25[_959];
      _966 = _26[_959];
      if (_958) {
        _977 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_956)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_956)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_956)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_948))));
      } else {
        _977 = _948;
      }
      _980 = _shadowSizeAndInvSize.z * 2.0f;
      _982 = _shadowSizeAndInvSize.w * 2.0f;
      _983 = _shadowSizeAndInvSize.z * 2.3841858e-07f;
      _984 = _shadowSizeAndInvSize.w * 2.3841858e-07f;
      _990 = ((_983 * ((float)((uint)((uint)(((int)((uint)((uint)(_977)) * (uint)(48271))) & 16777215))))) - _980) + _964;
      _996 = ((_984 * ((float)((uint)((uint)(((int)((uint)((uint)(_977)) * (uint)(-1964877855))) & 16777215))))) - _982) + _965;
      _997 = (float)((uint)((uint)(_820)));
      _998 = _966 - _822;
      _1004 = ((_983 * ((float)((uint)((uint)(((int)((uint)((uint)(_977)) * (uint)(-856141137))) & 16777215))))) - _980) + _964;
      _1010 = ((_984 * ((float)((uint)((uint)(((int)((uint)((uint)(_977)) * (uint)(-613502015))) & 16777215))))) - _982) + _965;
      _1016 = ((_983 * ((float)((uint)((uint)(((int)((uint)((uint)(_977)) * (uint)(-556260145))) & 16777215))))) - _980) + _964;
      _1022 = ((_984 * ((float)((uint)((uint)(((int)((uint)((uint)(_977)) * (uint)(902075297))) & 16777215))))) - _982) + _965;
      _1028 = ((_983 * ((float)((uint)((uint)(((int)((uint)((uint)(_977)) * (uint)(1698214639))) & 16777215))))) - _980) + _964;
      _1034 = ((_984 * ((float)((uint)((uint)(((int)((uint)((uint)(_977)) * (uint)(773027713))) & 16777215))))) - _982) + _965;
      _1056 = (((saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_990, _996, _997), _998)).x)) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1004, _1010, _997), _998)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1016, _1022, _997), _998)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1028, _1034, _997), _998)).x))) * 0.25f;
      _1077 = (((max(0.0f, (_966 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_990, _996, _997), 0.0f))).x))) + max(0.0f, (_966 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1004, _1010, _997), 0.0f))).x)))) + max(0.0f, (_966 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1016, _1022, _997), 0.0f))).x)))) + max(0.0f, (_966 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1028, _1034, _997), 0.0f))).x)))) * 0.25f;
      _1606 = 1.0h;
      _1607 = 1.0h;
      _1608 = 1.0h;
      _1609 = saturate(_1077 * _1077);  // [sem: expr_sat]
      _1610 = saturate(_1056 * _1056);  // [sem: expr_sat]
    } else {
      _1083 = _24[_959];
      _1084 = _25[_959];
      _1085 = _26[_959];
      _1087 = select((_820 == 0), 2.5f, 1.0f);
      if (_958) {
        _1098 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_956)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_956)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_956)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_948))));
      } else {
        _1098 = _948;
      }
      _1101 = select(_166, (_1087 * 0.75f), _1087) * 0.66f;
      _1103 = _1101 * _dynmaicShadowSizeAndInvSize.z;
      _1105 = _1101 * _dynmaicShadowSizeAndInvSize.w;
      _1106 = _1103 * 1.1920929e-07f;
      _1107 = _1105 * 1.1920929e-07f;
      _1113 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(48271))) & 16777215)))) * _1106) - _1103) + _1083;
      _1119 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(-1964877855))) & 16777215)))) * _1107) - _1105) + _1084;
      _1120 = (float)((uint)((uint)(_820)));
      _1121 = _1085 - _822;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1124 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1113, _1119, _1120), 0.0f);
      _1133 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(-856141137))) & 16777215)))) * _1106) - _1103) + _1083;
      _1139 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(-613502015))) & 16777215)))) * _1107) - _1105) + _1084;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1140 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1133, _1139, _1120), 0.0f);
      _1149 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(-556260145))) & 16777215)))) * _1106) - _1103) + _1083;
      _1155 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(902075297))) & 16777215)))) * _1107) - _1105) + _1084;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1156 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1149, _1155, _1120), 0.0f);
      _1165 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(1698214639))) & 16777215)))) * _1106) - _1103) + _1083;
      _1171 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(773027713))) & 16777215)))) * _1107) - _1105) + _1084;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1172 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1165, _1171, _1120), 0.0f);
      _1181 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(144866575))) & 16777215)))) * _1106) - _1103) + _1083;
      _1187 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(647683937))) & 16777215)))) * _1107) - _1105) + _1084;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1188 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1181, _1187, _1120), 0.0f);
      _1197 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(1284375343))) & 16777215)))) * _1106) - _1103) + _1083;
      _1203 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(229264193))) & 16777215)))) * _1107) - _1105) + _1084;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1204 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1197, _1203, _1120), 0.0f);
      _1213 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(-1318861489))) & 16777215)))) * _1106) - _1103) + _1083;
      _1219 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(1537293089))) & 16777215)))) * _1107) - _1105) + _1084;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1220 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1213, _1219, _1120), 0.0f);
      _1229 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(-1770241169))) & 16777215)))) * _1106) - _1103) + _1083;
      _1235 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(1357852417))) & 16777215)))) * _1107) - _1105) + _1084;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1236 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1229, _1235, _1120), 0.0f);
      _1245 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(-601883249))) & 16777215)))) * _1106) - _1103) + _1083;
      _1251 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(1947444961))) & 16777215)))) * _1107) - _1105) + _1084;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1252 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1245, _1251, _1120), 0.0f);
      _1261 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(1166504879))) & 16777215)))) * _1106) - _1103) + _1083;
      _1267 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(1335763649))) & 16777215)))) * _1107) - _1105) + _1084;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1268 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1261, _1267, _1120), 0.0f);
      _1277 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(-1696913969))) & 16777215)))) * _1106) - _1103) + _1083;
      _1283 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(1882071713))) & 16777215)))) * _1107) - _1105) + _1084;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1284 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1277, _1283, _1120), 0.0f);
      _1293 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(-1959554065))) & 16777215)))) * _1106) - _1103) + _1083;
      _1299 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(-1569511807))) & 16777215)))) * _1107) - _1105) + _1084;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1300 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1293, _1299, _1120), 0.0f);
      _1309 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(1318665743))) & 16777215)))) * _1106) - _1103) + _1083;
      _1315 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(1898753633))) & 16777215)))) * _1107) - _1105) + _1084;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1316 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1309, _1315, _1120), 0.0f);
      _1325 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(134521903))) & 16777215)))) * _1106) - _1103) + _1083;
      _1331 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(-483771839))) & 16777215)))) * _1107) - _1105) + _1084;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1332 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1325, _1331, _1120), 0.0f);
      _1341 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(-413252017))) & 16777215)))) * _1106) - _1103) + _1083;
      _1347 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(2034977313))) & 16777215)))) * _1107) - _1105) + _1084;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1348 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1341, _1347, _1120), 0.0f);
      _1357 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(192849007))) & 16777215)))) * _1106) - _1103) + _1083;
      _1363 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1098)) * (uint)(1820286465))) & 16777215)))) * _1107) - _1105) + _1084;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1364 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1357, _1363, _1120), 0.0f);
      _1449 = (((((((((((((((saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1113, _1119, _1120), _1121)).x)) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1133, _1139, _1120), _1121)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1149, _1155, _1120), _1121)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1165, _1171, _1120), _1121)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1181, _1187, _1120), _1121)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1197, _1203, _1120), _1121)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1213, _1219, _1120), _1121)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1229, _1235, _1120), _1121)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1245, _1251, _1120), _1121)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1261, _1267, _1120), _1121)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1277, _1283, _1120), _1121)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1293, _1299, _1120), _1121)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1309, _1315, _1120), _1121)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1325, _1331, _1120), _1121)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1341, _1347, _1120), _1121)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1357, _1363, _1120), _1121)).x))) * 0.0625f;
      _1529 = (((((((((((((((max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1113, _1119, _1120), 0.0f))).x))) + max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1133, _1139, _1120), 0.0f))).x)))) + max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1149, _1155, _1120), 0.0f))).x)))) + max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1165, _1171, _1120), 0.0f))).x)))) + max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1181, _1187, _1120), 0.0f))).x)))) + max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1197, _1203, _1120), 0.0f))).x)))) + max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1213, _1219, _1120), 0.0f))).x)))) + max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1229, _1235, _1120), 0.0f))).x)))) + max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1245, _1251, _1120), 0.0f))).x)))) + max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1261, _1267, _1120), 0.0f))).x)))) + max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1277, _1283, _1120), 0.0f))).x)))) + max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1293, _1299, _1120), 0.0f))).x)))) + max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1309, _1315, _1120), 0.0f))).x)))) + max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1325, _1331, _1120), 0.0f))).x)))) + max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1341, _1347, _1120), 0.0f))).x)))) + max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1357, _1363, _1120), 0.0f))).x)))) * 0.0625f;
      _1548 = half(float(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)((half)(_1140.x) + (half)(_1124.x))) + (half)(_1156.x))) + (half)(_1172.x))) + (half)(_1188.x))) + (half)(_1204.x))) + (half)(_1220.x))) + (half)(_1236.x))) + (half)(_1252.x))) + (half)(_1268.x))) + (half)(_1284.x))) + (half)(_1300.x))) + (half)(_1316.x))) + (half)(_1332.x))) + (half)(_1348.x))) + ((half)((half)(_1364.x) * 2.0h))) * 0.05882353f);
      _1567 = half(float(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)((half)(_1140.y) + (half)(_1124.y))) + (half)(_1156.y))) + (half)(_1172.y))) + (half)(_1188.y))) + (half)(_1204.y))) + (half)(_1220.y))) + (half)(_1236.y))) + (half)(_1252.y))) + (half)(_1268.y))) + (half)(_1284.y))) + (half)(_1300.y))) + (half)(_1316.y))) + (half)(_1332.y))) + (half)(_1348.y))) + ((half)((half)(_1364.y) * 2.0h))) * 0.05882353f);
      _1586 = half(float(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)((half)(_1140.z) + (half)(_1124.z))) + (half)(_1156.z))) + (half)(_1172.z))) + (half)(_1188.z))) + (half)(_1204.z))) + (half)(_1220.z))) + (half)(_1236.z))) + (half)(_1252.z))) + (half)(_1268.z))) + (half)(_1284.z))) + (half)(_1300.z))) + (half)(_1316.z))) + (half)(_1332.z))) + (half)(_1348.z))) + ((half)((half)(_1364.z) * 2.0h))) * 0.05882353f);
      if (_820 == 1) {
        _1589 = float(_1548);
        _1590 = float(_1567);
        _1591 = float(_1586);
        _1592 = -0.0f - _819;
        _1606 = (half)(half((_1591 + _819) + (_1591 * _1592)));
        _1607 = (half)(half((_1590 + _819) + (_1590 * _1592)));
        _1608 = (half)(half((_1589 + _819) + (_1589 * _1592)));
        _1609 = _1529;  // [sem: expr_sat]
        _1610 = _1449;  // [sem: expr_sat]
      } else {
        _1606 = _1586;
        _1607 = _1567;
        _1608 = _1548;
        _1609 = _1529;  // [sem: expr_sat]
        _1610 = _1449;  // [sem: expr_sat]
      }
    }
    _1611 = (_821 != 0);
    _1613 = min(_552, select(_1611, _1610, 1.0f));
    _1617 = select((_818 != 0), select(_1611, (_1609 * 400.0f), 4e+06f), 1.0f);
    _1622 = (_1613 - (_shadowAOParams.x * _1613)) + _shadowAOParams.x;
    [branch]
    if (_1622 > 0.0f) {
      _1625 = _78 & 126;
      _1626 = (_1625 == 64);
      _1628 = _1626 || (_82 == 66);
      _1629 = select(_1628, 2.0f, 4.0f);
      if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
        _1646 = _sunDirection.z;
        _1647 = _sunDirection.y;
        _1648 = _sunDirection.x;
      } else {
        _1646 = _moonDirection.z;
        _1647 = _moonDirection.y;
        _1648 = _moonDirection.x;
      }
      _1649 = _54 & 3;
      _1650 = _61 & 3;
      _1660 = (uint)((uint)((uint)(_frameNumber.x)) * (uint)(1551)) + (uint)((uint)((int)(((int)((int)((int)(_1650) << 1) | (int)(_1650)) << 1) & 10) | (int)(((int)((int)(_1649) << 1) | (int)(_1649)) & 5)));
      _1665 = (int)(((int)((uint)((uint)(_1660)) << 2)) & -858993460) | (int)(((uint)((uint)(_1660)) >> 2) & 858993459);
      _1670 = (int)(((int)((uint)((uint)(_1665)) << 1)) & 10) | (int)(((uint)((uint)(_1665)) >> 1) & 21);
      _1671 = (float)((uint)((uint)(_frameNumber.x)));
      _1677 = (frac(((_1671 * 92.0f) + _62) * 0.0078125f) * 128.0f) + -64.34062f;
      _1683 = (frac(((_1671 * 71.0f) + _63) * 0.0078125f) * 128.0f) + -72.46562f;
      _1688 = frac(dot(float3((_1677 * _1677), (_1683 * _1683), (_1683 * _1677)), float3(20.390625f, 60.703125f, 2.4281209f)));
      _1698 = frac((((float)((uint)((uint)(((int)((uint)(_1688 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f) + (((float)((uint)((uint)(_1670)))) * 0.03125f)) * 6.2831855f;
      _1708 = (((1.0f - _shadowAOParams.z) * 2.3283064e-10f) * ((float)((uint)((uint)(reversebits(_1670) ^ ((int)((uint)(_1688 * 2.8747837e+08f)))))))) + _shadowAOParams.z;
      _1711 = sqrt(1.0f - (_1708 * _1708));
      _1713 = cos(_1698) * _1711;
      _1715 = sin(_1698) * _1711;
      _1717 = select((_1646 >= 0.0f), 1.0f, -1.0f);
      _1720 = -0.0f - (1.0f / (_1717 + _1646));
      _1721 = _1647 * _1720;
      _1722 = _1721 * _1648;
      _1723 = _1717 * _1648;
      _1729 = mad(_1708, _1648, mad(_1715, _1722, ((((_1723 * _1648) * _1720) + 1.0f) * _1713)));
      _1735 = mad(_1708, _1647, mad(_1715, ((_1721 * _1647) + _1717), ((_1713 * _1717) * _1722)));
      _1740 = mad(_1708, _1646, mad(_1715, (-0.0f - _1647), (-0.0f - (_1723 * _1713))));
      _1741 = select(_1626, 10, 8);
      if (!_166) {
        _1747 = min(0.5f, ((_117 * 0.0025f) + 0.25f));
      } else {
        _1747 = 1.0f;
      }
      _1754 = ((abs(_1647) * (select(_1628, 12.0f, 2.0f) - _1629)) + _1629) * select(_166, 0.01f, 0.1f);
      if (!_166) {
        _1762 = max((_117 * select(((uint)((int)(_82) + (int)(-11)) < (uint)9), 0.008f, 0.03f)), _1754);
      } else {
        _1762 = _1754;
      }
      // [sem: expr_sat]
      _1775 = saturate(((_117 * 0.01f) * (1.0f - saturate(dot(float3(_105, _106, _107), float3((-0.0f - (_138 * _158)), (-0.0f - (_147 * _158)), (-0.0f - (_156 * _158))))))) + 0.01f);
      _1778 = (_terrainNormalParams.z > 0.0f);
      if (_1778) {
        _1782 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 255)));
        _1808 = frac(frac(dot(float2(((_1782 * 32.665f) + _62), ((_1782 * 11.815f) + _63)), float2(0.06711056f, 0.00583715f))) * 52.982918f);
      } else {
        if (_958) {
          _1802 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_956)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_956)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_956)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_948))));
        } else {
          _1802 = _948;
        }
        _1808 = (((float)((uint)((uint)(((int)((uint)((uint)(_1802)) * (uint)(48271))) & 16777215)))) * 5.9604645e-08f);
      }
      if (_82 == 15) {
        _1817 = ((10.0f - (saturate(_117 * 0.001f) * 9.0f)) * _1808);
      } else {
        _1817 = _1808;
      }
      if (!_1778) {
        _1821 = saturate(_117 * 0.0625f) * 0.05f;
        _1826 = (_1821 * _107);
        _1827 = (_1821 * _106);
        _1828 = (_1821 * _105);
      } else {
        _1826 = 0.0f;
        _1827 = 0.0f;
        _1828 = 0.0f;
      }
      _1829 = _1828 + _138;
      _1830 = _1827 + _147;
      _1831 = _1826 + _156;
      _1843 = (_viewRelative[2].w) + mad((_viewRelative[2].z), _1831, mad((_viewRelative[2].y), _1830, ((_viewRelative[2].x) * _1829)));
      _1846 = mad((_viewRelative[2].z), _1740, mad((_viewRelative[2].y), _1735, ((_viewRelative[2].x) * _1729)));
      _1853 = select((((_1846 * _1762) + _1843) < _nearFarProj.x), ((_nearFarProj.x - _1843) / _1846), _1762);
      _1865 = (_viewProjRelative[2].w) + mad((_viewProjRelative[2].z), _1831, mad((_viewProjRelative[2].y), _1830, ((_viewProjRelative[2].x) * _1829)));
      _1873 = mad((_viewProjRelative[3].z), _1831, mad((_viewProjRelative[3].y), _1830, ((_viewProjRelative[3].x) * _1829))) + (_viewProjRelative[3].w);
      _1875 = (_1853 * _1729) + _1829;
      _1877 = (_1853 * _1735) + _1830;
      _1879 = (_1853 * _1740) + _1831;
      _1883 = mad((_viewProjRelative[3].z), _1879, mad((_viewProjRelative[3].y), _1877, (_1875 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _1892 = (mad((_viewProjRelative[0].z), _1831, mad((_viewProjRelative[0].y), _1830, ((_viewProjRelative[0].x) * _1829))) + (_viewProjRelative[0].w)) / _1873;
      _1901 = (mad((_viewProjRelative[1].z), _1831, mad((_viewProjRelative[1].y), _1830, ((_viewProjRelative[1].x) * _1829))) + (_viewProjRelative[1].w)) / _1873;
      _1902 = _1865 / _1873;
      _1908 = ((mad((_viewProjRelative[0].z), _1879, mad((_viewProjRelative[0].y), _1877, (_1875 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _1883) - _1892;
      _1914 = ((mad((_viewProjRelative[1].z), _1879, mad((_viewProjRelative[1].y), _1877, (_1875 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _1883) - _1901;
      _1916 = 1.0f / ((float)((uint)((uint)(_1741))));
      _1928 = max(_1916, (1.0f / min(1.0f, (max(((_bufferSizeAndInvSize.x * 0.5f) * abs(_1908)), ((_bufferSizeAndInvSize.y * 0.5f) * abs(_1914))) * _1916))));
      _1935 = (((mad((_viewProjRelative[2].z), _1879, mad((_viewProjRelative[2].y), _1877, (_1875 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w)) / _1883) - _1902) * _1928;
      _1946 = max(abs(_1935), (_1902 - ((mad((_proj[2].z), _117, 0.0f) + _1865) / (mad((_proj[3].z), _117, 0.0f) + _1873))));
      _1947 = max(0.0625f, _1916);
      _1948 = _1928 * _1916;
      _1950 = (_1908 * 0.5f) * _1948;
      _1952 = (_1914 * -0.5f) * _1948;
      _1953 = _1935 * _1916;
      _1960 = max(_1817, (1.0f / max((abs(_1950) * _bufferSizeAndInvSize.x), (abs(_1952) * _bufferSizeAndInvSize.y))));
      _1961 = 0.5f / _bufferSizeAndInvSize.x;
      _1965 = ((_1892 * 0.5f) + 0.5f) + (_1960 * _1950);
      _1969 = (_1960 * _1952) + (0.5f - (_1901 * 0.5f));
      _1971 = (_1960 * _1953) + _1902;
      if (_117 < 8.0f) {
        _1974 = (_1946 * _1747) * _1947;
        _1976 = 0.0f;
        _1977 = 0.0f;
        _1978 = 0;
        _1979 = _1775;
        _1980 = _1817;
        _1981 = _1971;
        _1982 = _1969;
        _1983 = _1965;
        _1984 = 0;
        while(true) {
          // [sem: _3__36__0__0__g_depthStencil_load]
          _1996 = __3__36__0__0__g_depthStencil.Load(int3(((int)(_bufferSizeAndInvSize.x * min(max(_1983, _1961), (1.0f - _1961)))), ((int)(_bufferSizeAndInvSize.y * _1982)), 0));
          _1998 = (uint)((uint)(_1996.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _2001 = ((float)((uint)((uint)(_1996.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _2002 = _1998 & 127;
          _2003 = (_1978 == 0);
          _2004 = select(_2003, 1.0f, _1979);
          _2008 = _nearFarProj.x / max(1e-07f, _2001);
          _2011 = _2008 - (_nearFarProj.x / max(1e-07f, _1981));
          _2015 = (abs((_1981 + _1974) - _2001) < _1974);
          _2016 = (int)(uint)(_2015);
          if (_2015) {
            if (((uint)((int)(_2002) + (int)(-19)) < (uint)2) || ((_2002 == 18) || (((_1998 & 125) == 105) || ((_2002 == 106) || (((uint)((int)(_2002) + (int)(-27)) < (uint)2) || ((_2002 == 26) || ((_2002 == 107) || (((uint)((int)(_2002) + (int)(-5)) < (uint)2) || (((_1998 & 126) == 66) || ((_2002 == 7) || (_2002 == 53))))))))))) {
              _2062 = ((int)(uint)((int)((_2011 < 0.0f) && (_2011 > -0.08f))));
            } else {
              if ((_2002 != 67) && ((uint)((int)(_2002) + (int)(-52)) < (uint)16)) {
                _2062 = ((int)(uint)((int)((_2011 < 0.0f) && (_2011 > select((_2008 < 32.0f), -0.08f, -1.0f)))));
              } else {
                _2062 = _2016;
              }
            }
          } else {
            _2062 = _2016;
          }
          if (!(_2062 == 0)) {
            if ((uint)_2002 > (uint)11) {
              if (!((uint)_2002 < (uint)16)) {
                if (!(_2002 == 17)) {
                  if (!(_2002 == 16)) {
                    if (!(((_2002 == 18) || (_2002 == 107)) || ((uint)((int)(_2002) + (int)(-19)) < (uint)2))) {
                      _2086 = select((_2002 == 66), 0.1f, 0.0f);
                    } else {
                      _2086 = 0.15f;
                    }
                  } else {
                    _2086 = 0.1f;
                  }
                } else {
                  _2086 = 0.7f;
                }
              } else {
                _2086 = 0.9f;
              }
            } else {
              _2086 = select((_2002 == 11), 0.1f, 0.0f);
            }
            _2088 = saturate(_2008 * 0.015625f);  // [sem: expr_sat]
            _2091 = (1.0f - _2088) + (_2088 * _2086);
            // [sem: expr_sat]
            _2106 = saturate(((saturate(1.0f - ((_2091 * _2091) * _2086)) * (1.0f - _1976)) * saturate((-0.0f - _2011) / (_1980 * 0.0046548597f))) + _1976);
            _2107 = _2002;
          } else {
            _2106 = _1976;  // [sem: expr_sat]
            _2107 = _1984;
          }
          if ((_2002 != 0) && (_2106 > 0.95f)) {
            if (!_2003) {
              _2120 = (saturate((_1977 - _2001) / (_1977 - _1981)) - min(_1980, _2004));
            } else {
              _2120 = 0.0f;
            }
            _2325 = ((_2120 * _1953) + _1981);
            _2326 = ((_2120 * _1952) + _1982);
            _2327 = ((_2120 * _1950) + _1983);
            _2328 = _2106;
            _2329 = _2002;
            _2330 = _2001;
          } else {
            if ((uint)_1978 < (uint)((int)(_1741) + (int)(-1))) {
              _2139 = _2001;
              _2140 = (_2004 + _1980);
              _2141 = ((_2004 * _1953) + _1981);
              _2142 = (_1982 + (_2004 * _1952));
              _2143 = (_1983 + (_2004 * _1950));
            } else {
              _2139 = _1977;
              _2140 = _1980;
              _2141 = _1981;
              _2142 = _1982;
              _2143 = _1983;
            }
            _2144 = (int)(_1978) + (int)(1);
            if ((uint)_2144 < (uint)_1741) {
              _1976 = _2106;
              _1977 = _2139;
              _1978 = _2144;
              _1979 = _2004;
              _1980 = _2140;
              _1981 = _2141;
              _1982 = _2142;
              _1983 = _2143;
              _1984 = _2107;
              continue;
            } else {
              _2325 = _1981;
              _2326 = _1982;
              _2327 = _1983;
              _2328 = _2106;
              _2329 = _2107;
              _2330 = _2001;
            }
          }
          _2331 = (_2328 > 0.0f);
          if (_2325 > 0.0f) {
            if ((_2331) || ((_2326 <= 1.0f) && ((_2326 >= 0.0f) && ((_2327 >= 0.0f) && (_2327 <= 1.0f))))) {
              _2344 = (_2327 * 2.0f) + -1.0f;
              _2346 = 1.0f - (_2326 * 2.0f);
              _2350 = mad((_invViewProjRelative[3].z), _2325, mad((_invViewProjRelative[3].y), _2346, (_2344 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
              if (!(_2329 == 2)) {
                if (!(_2329 == 3)) {
                  if (_2329 == 21) {
                    _2369 = select((_82 == 21), 20.0f, 0.0f);
                  } else {
                    _2360 = (_2329 == 22);
                    _2369 = select(((_82 == 22) && _2360), 20.0f, select(_2360, 0.0f, 1.0f));
                  }
                } else {
                  _2369 = 0.0f;
                }
              } else {
                _2369 = select((_82 == 2), 20.0f, 0.0f);
              }
              if (_556 && (_2328 == 1.0f)) {
                // [sem: expr_sat]
                _2402 = saturate(((((_1762 * 0.9375f) - max(0.0f, dot(float3(_1729, _1735, _1740), float3((((mad((_invViewProjRelative[0].z), _2325, mad((_invViewProjRelative[0].y), _2346, (_2344 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _2350) - _1829), (((mad((_invViewProjRelative[1].z), _2325, mad((_invViewProjRelative[1].y), _2346, (_2344 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _2350) - _1830), (((mad((_invViewProjRelative[2].z), _2325, mad((_invViewProjRelative[2].y), _2346, (_2344 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _2350) - _1831))))) * ((_117 * 0.015625f) + 1.5f)) / _1762) * 0.9375f);
              } else {
                _2402 = _2328;  // [sem: expr_sat]
              }
              _2418 = saturate(exp2(min(0.0f, (((_117 * 0.019f) + 0.1f) + (((_nearFarProj.x / max(1e-07f, _2330)) - (_nearFarProj.x / max(1e-07f, _2325))) * _2369))) * 1.442695f)) * _2402;
              _2419 = _2329 & -2;
              if (!(_2419 == 6)) {
                if ((((_82 == 33) && (_2329 == 33)) || (!(_82 == 33) && ((_82 == 54) && (_2329 == 54))))) {
                  _2660 = (_2418 * 0.01f);
                } else {
                  if (!((_2329 == 53) || (_2419 == 66)) || (((_2329 == 53) || (_2419 == 66)) && (!((_1625 == 66) || (_82 == 53))))) {
                    if (!_166) {
                      if ((uint)((int)((uint)((uint)(_2329)) + (uint)(-52))) < (uint)16) {
                        _2447 = saturate(_117 * 0.03125f);  // [sem: expr_sat]
                      } else {
                        _2447 = 1.0f;  // [sem: expr_sat]
                      }
                      _2660 = (_2447 * _2418);
                    } else {
                      _2660 = _2418;
                    }
                  } else {
                    // [sem: _3__36__0__0__g_baseColor_load]
                    _2458 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _2327)), ((int)(_bufferSizeAndInvSize.y * _2326)), 0));
                    _2464 = ((float)((uint)((uint)(((uint)((uint)(_2458.x)) >> 8) & 255)))) * 0.003921569f;
                    _2467 = ((float)((uint)((uint)(_2458.x & 255)))) * 0.003921569f;
                    _2471 = ((float)((uint)((uint)(((uint)((uint)(_2458.y)) >> 8) & 255)))) * 0.003921569f;
                    _2472 = _2464 * _2464;
                    _2473 = _2467 * _2467;
                    _2474 = _2471 * _2471;
                    _2660 = (saturate(1.0f - (dot(float3((((_2472 * 0.61312f) + (_2473 * 0.33951f)) + (_2474 * 0.04737f)), (((_2472 * 0.0702f) + (_2473 * 0.91636f)) + (_2474 * 0.01345f)), (((_2472 * 0.02062f) + (_2473 * 0.10958f)) + (_2474 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _2418);
                  }
                }
              } else {
                _2660 = (_2418 * 0.01f);
              }
            } else {
              _2660 = 0.0f;
            }
          } else {
            if (_2331) {
              _2499 = _2325;
              _2500 = _2326;
              _2501 = _2327;
              _2502 = _2328;
              _2503 = _2329;
              _2504 = _2330;
              _2506 = (_2501 * 2.0f) + -1.0f;
              _2508 = 1.0f - (_2500 * 2.0f);
              _2512 = mad((_invViewProjRelative[3].z), _2499, mad((_invViewProjRelative[3].y), _2508, (_2506 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
              if (!(_2503 == 2)) {
                if (!(_2503 == 3)) {
                  if (_2503 == 21) {
                    _2531 = select((_82 == 21), 20.0f, 0.0f);
                  } else {
                    _2522 = (_2503 == 22);
                    _2531 = select(((_82 == 22) && _2522), 20.0f, select(_2522, 0.0f, 1.0f));
                  }
                } else {
                  _2531 = 0.0f;
                }
              } else {
                _2531 = select((_82 == 2), 20.0f, 0.0f);
              }
              if (_556 && (_2502 == 1.0f)) {
                // [sem: expr_sat]
                _2564 = saturate(((((_1762 * 0.9375f) - max(0.0f, dot(float3(_1729, _1735, _1740), float3((((mad((_invViewProjRelative[0].z), _2499, mad((_invViewProjRelative[0].y), _2508, (_2506 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _2512) - _1829), (((mad((_invViewProjRelative[1].z), _2499, mad((_invViewProjRelative[1].y), _2508, (_2506 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _2512) - _1830), (((mad((_invViewProjRelative[2].z), _2499, mad((_invViewProjRelative[2].y), _2508, (_2506 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _2512) - _1831))))) * ((_117 * 0.015625f) + 1.5f)) / _1762) * 0.9375f);
              } else {
                _2564 = _2502;  // [sem: expr_sat]
              }
              _2580 = saturate(exp2(min(0.0f, (((_117 * 0.019f) + 0.1f) + (((_nearFarProj.x / max(1e-07f, _2504)) - (_nearFarProj.x / max(1e-07f, _2499))) * _2531))) * 1.442695f)) * _2564;
              _2581 = _2503 & -2;
              if (!(_2581 == 6)) {
                if ((((_82 == 33) && (_2503 == 33)) || (!(_82 == 33) && ((_82 == 54) && (_2503 == 54))))) {
                  _2660 = (_2580 * 0.01f);
                } else {
                  if (!((_2503 == 53) || (_2581 == 66)) || (((_2503 == 53) || (_2581 == 66)) && (!((_1625 == 66) || (_82 == 53))))) {
                    if (!_166) {
                      if ((uint)((int)((uint)((uint)(_2503)) + (uint)(-52))) < (uint)16) {
                        _2609 = saturate(_117 * 0.03125f);  // [sem: expr_sat]
                      } else {
                        _2609 = 1.0f;  // [sem: expr_sat]
                      }
                      _2660 = (_2609 * _2580);
                    } else {
                      _2660 = _2580;
                    }
                  } else {
                    // [sem: _3__36__0__0__g_baseColor_load]
                    _2620 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _2501)), ((int)(_bufferSizeAndInvSize.y * _2500)), 0));
                    _2626 = ((float)((uint)((uint)(((uint)((uint)(_2620.x)) >> 8) & 255)))) * 0.003921569f;
                    _2629 = ((float)((uint)((uint)(_2620.x & 255)))) * 0.003921569f;
                    _2633 = ((float)((uint)((uint)(((uint)((uint)(_2620.y)) >> 8) & 255)))) * 0.003921569f;
                    _2634 = _2626 * _2626;
                    _2635 = _2629 * _2629;
                    _2636 = _2633 * _2633;
                    _2660 = (saturate(1.0f - (dot(float3((((_2634 * 0.61312f) + (_2635 * 0.33951f)) + (_2636 * 0.04737f)), (((_2634 * 0.0702f) + (_2635 * 0.91636f)) + (_2636 * 0.01345f)), (((_2634 * 0.02062f) + (_2635 * 0.10958f)) + (_2636 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _2580);
                  }
                }
              } else {
                _2660 = (_2580 * 0.01f);
              }
            } else {
              _2660 = 0.0f;
            }
          }
          break;
        }
      } else {
        _2149 = ((_1946 * _1747) * 0.5f) * _1947;
        _2151 = 0.0f;
        _2152 = 0.0f;
        _2153 = 0;
        _2154 = _1971;
        _2155 = _1969;
        _2156 = _1965;
        _2157 = _1817;
        _2158 = _1775;
        _2159 = 0;
        while(true) {
          // [sem: _3__36__0__0__g_depthStencil_load]
          _2171 = __3__36__0__0__g_depthStencil.Load(int3(((int)(_bufferSizeAndInvSize.x * min(max(_2156, _1961), (1.0f - _1961)))), ((int)(_bufferSizeAndInvSize.y * _2155)), 0));
          _2173 = (uint)((uint)(_2171.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _2176 = ((float)((uint)((uint)(_2171.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _2177 = _2173 & 127;
          _2178 = (_2159 == 0);
          _2179 = select(_2178, 1.0f, _2158);
          _2183 = _nearFarProj.x / max(1e-07f, _2176);
          _2186 = _2183 - (_nearFarProj.x / max(1e-07f, _2154));
          _2190 = (abs((_2154 + _2149) - _2176) < _2149);
          _2191 = (int)(uint)(_2190);
          if (_2190) {
            if (((uint)((int)(_2177) + (int)(-19)) < (uint)2) || ((_2177 == 18) || (((_2173 & 125) == 105) || ((_2177 == 106) || (((uint)((int)(_2177) + (int)(-27)) < (uint)2) || ((_2177 == 26) || ((_2177 == 107) || (((uint)((int)(_2177) + (int)(-5)) < (uint)2) || (((_2173 & 126) == 66) || ((_2177 == 7) || (_2177 == 53))))))))))) {
              _2237 = ((int)(uint)((int)((_2186 < 0.0f) && (_2186 > -0.08f))));
            } else {
              if ((_2177 != 67) && ((uint)((int)(_2177) + (int)(-52)) < (uint)16)) {
                _2237 = ((int)(uint)((int)((_2186 < 0.0f) && (_2186 > select((_2183 < 32.0f), -0.08f, -1.0f)))));
              } else {
                _2237 = _2191;
              }
            }
          } else {
            _2237 = _2191;
          }
          if (!(_2237 == 0)) {
            if ((uint)_2177 > (uint)11) {
              if (!((uint)_2177 < (uint)16)) {
                if (!(_2177 == 17)) {
                  if (!(_2177 == 16)) {
                    if (!(((_2177 == 18) || (_2177 == 107)) || ((uint)((int)(_2177) + (int)(-19)) < (uint)2))) {
                      _2261 = select((_2177 == 66), 0.1f, 0.0f);
                    } else {
                      _2261 = 0.15f;
                    }
                  } else {
                    _2261 = 0.1f;
                  }
                } else {
                  _2261 = 0.7f;
                }
              } else {
                _2261 = 0.9f;
              }
            } else {
              _2261 = select((_2177 == 11), 0.1f, 0.0f);
            }
            _2263 = saturate(_2183 * 0.015625f);  // [sem: expr_sat]
            _2266 = (1.0f - _2263) + (_2263 * _2261);
            // [sem: expr_sat]
            _2281 = saturate(((saturate(1.0f - ((_2266 * _2266) * _2261)) * (1.0f - _2151)) * saturate((-0.0f - _2186) / (_2157 * 0.0046548597f))) + _2151);
            _2282 = _2177;
          } else {
            _2281 = _2151;  // [sem: expr_sat]
            _2282 = _2153;
          }
          if ((_2177 != 0) && (_2281 > 0.95f)) {
            if (!_2178) {
              _2295 = (saturate((_2152 - _2176) / (_2152 - _2154)) - min(_2157, _2179));
            } else {
              _2295 = 0.0f;
            }
            _2325 = ((_2295 * _1953) + _2154);
            _2326 = ((_2295 * _1952) + _2155);
            _2327 = ((_2295 * _1950) + _2156);
            _2328 = _2281;
            _2329 = _2177;
            _2330 = _2176;
            _2331 = (_2328 > 0.0f);
            if (_2325 > 0.0f) {
              if ((_2331) || ((_2326 <= 1.0f) && ((_2326 >= 0.0f) && ((_2327 >= 0.0f) && (_2327 <= 1.0f))))) {
                _2344 = (_2327 * 2.0f) + -1.0f;
                _2346 = 1.0f - (_2326 * 2.0f);
                _2350 = mad((_invViewProjRelative[3].z), _2325, mad((_invViewProjRelative[3].y), _2346, (_2344 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
                if (!(_2329 == 2)) {
                  if (!(_2329 == 3)) {
                    if (_2329 == 21) {
                      _2369 = select((_82 == 21), 20.0f, 0.0f);
                    } else {
                      _2360 = (_2329 == 22);
                      _2369 = select(((_82 == 22) && _2360), 20.0f, select(_2360, 0.0f, 1.0f));
                    }
                  } else {
                    _2369 = 0.0f;
                  }
                } else {
                  _2369 = select((_82 == 2), 20.0f, 0.0f);
                }
                if (_556 && (_2328 == 1.0f)) {
                  // [sem: expr_sat]
                  _2402 = saturate(((((_1762 * 0.9375f) - max(0.0f, dot(float3(_1729, _1735, _1740), float3((((mad((_invViewProjRelative[0].z), _2325, mad((_invViewProjRelative[0].y), _2346, (_2344 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _2350) - _1829), (((mad((_invViewProjRelative[1].z), _2325, mad((_invViewProjRelative[1].y), _2346, (_2344 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _2350) - _1830), (((mad((_invViewProjRelative[2].z), _2325, mad((_invViewProjRelative[2].y), _2346, (_2344 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _2350) - _1831))))) * ((_117 * 0.015625f) + 1.5f)) / _1762) * 0.9375f);
                } else {
                  _2402 = _2328;  // [sem: expr_sat]
                }
                _2418 = saturate(exp2(min(0.0f, (((_117 * 0.019f) + 0.1f) + (((_nearFarProj.x / max(1e-07f, _2330)) - (_nearFarProj.x / max(1e-07f, _2325))) * _2369))) * 1.442695f)) * _2402;
                _2419 = _2329 & -2;
                if (!(_2419 == 6)) {
                  if ((((_82 == 33) && (_2329 == 33)) || (!(_82 == 33) && ((_82 == 54) && (_2329 == 54))))) {
                    _2660 = (_2418 * 0.01f);
                  } else {
                    if (!((_2329 == 53) || (_2419 == 66)) || (((_2329 == 53) || (_2419 == 66)) && (!((_1625 == 66) || (_82 == 53))))) {
                      if (!_166) {
                        if ((uint)((int)((uint)((uint)(_2329)) + (uint)(-52))) < (uint)16) {
                          _2447 = saturate(_117 * 0.03125f);  // [sem: expr_sat]
                        } else {
                          _2447 = 1.0f;  // [sem: expr_sat]
                        }
                        _2660 = (_2447 * _2418);
                      } else {
                        _2660 = _2418;
                      }
                    } else {
                      // [sem: _3__36__0__0__g_baseColor_load]
                      _2458 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _2327)), ((int)(_bufferSizeAndInvSize.y * _2326)), 0));
                      _2464 = ((float)((uint)((uint)(((uint)((uint)(_2458.x)) >> 8) & 255)))) * 0.003921569f;
                      _2467 = ((float)((uint)((uint)(_2458.x & 255)))) * 0.003921569f;
                      _2471 = ((float)((uint)((uint)(((uint)((uint)(_2458.y)) >> 8) & 255)))) * 0.003921569f;
                      _2472 = _2464 * _2464;
                      _2473 = _2467 * _2467;
                      _2474 = _2471 * _2471;
                      _2660 = (saturate(1.0f - (dot(float3((((_2472 * 0.61312f) + (_2473 * 0.33951f)) + (_2474 * 0.04737f)), (((_2472 * 0.0702f) + (_2473 * 0.91636f)) + (_2474 * 0.01345f)), (((_2472 * 0.02062f) + (_2473 * 0.10958f)) + (_2474 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _2418);
                    }
                  }
                } else {
                  _2660 = (_2418 * 0.01f);
                }
              } else {
                _2660 = 0.0f;
              }
            } else {
              if (_2331) {
                _2499 = _2325;
                _2500 = _2326;
                _2501 = _2327;
                _2502 = _2328;
                _2503 = _2329;
                _2504 = _2330;
                _2506 = (_2501 * 2.0f) + -1.0f;
                _2508 = 1.0f - (_2500 * 2.0f);
                _2512 = mad((_invViewProjRelative[3].z), _2499, mad((_invViewProjRelative[3].y), _2508, (_2506 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
                if (!(_2503 == 2)) {
                  if (!(_2503 == 3)) {
                    if (_2503 == 21) {
                      _2531 = select((_82 == 21), 20.0f, 0.0f);
                    } else {
                      _2522 = (_2503 == 22);
                      _2531 = select(((_82 == 22) && _2522), 20.0f, select(_2522, 0.0f, 1.0f));
                    }
                  } else {
                    _2531 = 0.0f;
                  }
                } else {
                  _2531 = select((_82 == 2), 20.0f, 0.0f);
                }
                if (_556 && (_2502 == 1.0f)) {
                  // [sem: expr_sat]
                  _2564 = saturate(((((_1762 * 0.9375f) - max(0.0f, dot(float3(_1729, _1735, _1740), float3((((mad((_invViewProjRelative[0].z), _2499, mad((_invViewProjRelative[0].y), _2508, (_2506 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _2512) - _1829), (((mad((_invViewProjRelative[1].z), _2499, mad((_invViewProjRelative[1].y), _2508, (_2506 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _2512) - _1830), (((mad((_invViewProjRelative[2].z), _2499, mad((_invViewProjRelative[2].y), _2508, (_2506 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _2512) - _1831))))) * ((_117 * 0.015625f) + 1.5f)) / _1762) * 0.9375f);
                } else {
                  _2564 = _2502;  // [sem: expr_sat]
                }
                _2580 = saturate(exp2(min(0.0f, (((_117 * 0.019f) + 0.1f) + (((_nearFarProj.x / max(1e-07f, _2504)) - (_nearFarProj.x / max(1e-07f, _2499))) * _2531))) * 1.442695f)) * _2564;
                _2581 = _2503 & -2;
                if (!(_2581 == 6)) {
                  if ((((_82 == 33) && (_2503 == 33)) || (!(_82 == 33) && ((_82 == 54) && (_2503 == 54))))) {
                    _2660 = (_2580 * 0.01f);
                  } else {
                    if (!((_2503 == 53) || (_2581 == 66)) || (((_2503 == 53) || (_2581 == 66)) && (!((_1625 == 66) || (_82 == 53))))) {
                      if (!_166) {
                        if ((uint)((int)((uint)((uint)(_2503)) + (uint)(-52))) < (uint)16) {
                          _2609 = saturate(_117 * 0.03125f);  // [sem: expr_sat]
                        } else {
                          _2609 = 1.0f;  // [sem: expr_sat]
                        }
                        _2660 = (_2609 * _2580);
                      } else {
                        _2660 = _2580;
                      }
                    } else {
                      // [sem: _3__36__0__0__g_baseColor_load]
                      _2620 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _2501)), ((int)(_bufferSizeAndInvSize.y * _2500)), 0));
                      _2626 = ((float)((uint)((uint)(((uint)((uint)(_2620.x)) >> 8) & 255)))) * 0.003921569f;
                      _2629 = ((float)((uint)((uint)(_2620.x & 255)))) * 0.003921569f;
                      _2633 = ((float)((uint)((uint)(((uint)((uint)(_2620.y)) >> 8) & 255)))) * 0.003921569f;
                      _2634 = _2626 * _2626;
                      _2635 = _2629 * _2629;
                      _2636 = _2633 * _2633;
                      _2660 = (saturate(1.0f - (dot(float3((((_2634 * 0.61312f) + (_2635 * 0.33951f)) + (_2636 * 0.04737f)), (((_2634 * 0.0702f) + (_2635 * 0.91636f)) + (_2636 * 0.01345f)), (((_2634 * 0.02062f) + (_2635 * 0.10958f)) + (_2636 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _2580);
                    }
                  }
                } else {
                  _2660 = (_2580 * 0.01f);
                }
              } else {
                _2660 = 0.0f;
              }
            }
          } else {
            if ((uint)_2159 < (uint)((int)(_1741) + (int)(-1))) {
              _2314 = _2176;
              _2315 = ((_2179 * _1953) + _2154);
              _2316 = ((_2179 * _1952) + _2155);
              _2317 = ((_2179 * _1950) + _2156);
              _2318 = (_2179 + _2157);
            } else {
              _2314 = _2152;
              _2315 = _2154;
              _2316 = _2155;
              _2317 = _2156;
              _2318 = _2157;
            }
            _2319 = (int)(_2159) + (int)(1);
            if ((uint)_2319 < (uint)_1741) {
              _2151 = _2281;
              _2152 = _2314;
              _2153 = _2282;
              _2154 = _2315;
              _2155 = _2316;
              _2156 = _2317;
              _2157 = _2318;
              _2158 = _2179;
              _2159 = _2319;
              continue;
            } else {
              if (_2281 > 0.0f) {
                _2499 = -1.0f;
                _2500 = 0.0f;
                _2501 = 0.0f;
                _2502 = _2281;
                _2503 = _2282;
                _2504 = 0.0f;
                _2506 = (_2501 * 2.0f) + -1.0f;
                _2508 = 1.0f - (_2500 * 2.0f);
                _2512 = mad((_invViewProjRelative[3].z), _2499, mad((_invViewProjRelative[3].y), _2508, (_2506 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
                if (!(_2503 == 2)) {
                  if (!(_2503 == 3)) {
                    if (_2503 == 21) {
                      _2531 = select((_82 == 21), 20.0f, 0.0f);
                    } else {
                      _2522 = (_2503 == 22);
                      _2531 = select(((_82 == 22) && _2522), 20.0f, select(_2522, 0.0f, 1.0f));
                    }
                  } else {
                    _2531 = 0.0f;
                  }
                } else {
                  _2531 = select((_82 == 2), 20.0f, 0.0f);
                }
                if (_556 && (_2502 == 1.0f)) {
                  // [sem: expr_sat]
                  _2564 = saturate(((((_1762 * 0.9375f) - max(0.0f, dot(float3(_1729, _1735, _1740), float3((((mad((_invViewProjRelative[0].z), _2499, mad((_invViewProjRelative[0].y), _2508, (_2506 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _2512) - _1829), (((mad((_invViewProjRelative[1].z), _2499, mad((_invViewProjRelative[1].y), _2508, (_2506 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _2512) - _1830), (((mad((_invViewProjRelative[2].z), _2499, mad((_invViewProjRelative[2].y), _2508, (_2506 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _2512) - _1831))))) * ((_117 * 0.015625f) + 1.5f)) / _1762) * 0.9375f);
                } else {
                  _2564 = _2502;  // [sem: expr_sat]
                }
                _2580 = saturate(exp2(min(0.0f, (((_117 * 0.019f) + 0.1f) + (((_nearFarProj.x / max(1e-07f, _2504)) - (_nearFarProj.x / max(1e-07f, _2499))) * _2531))) * 1.442695f)) * _2564;
                _2581 = _2503 & -2;
                if (!(_2581 == 6)) {
                  if ((((_82 == 33) && (_2503 == 33)) || (!(_82 == 33) && ((_82 == 54) && (_2503 == 54))))) {
                    _2660 = (_2580 * 0.01f);
                  } else {
                    if (!((_2503 == 53) || (_2581 == 66)) || (((_2503 == 53) || (_2581 == 66)) && (!((_1625 == 66) || (_82 == 53))))) {
                      if (!_166) {
                        if ((uint)((int)((uint)((uint)(_2503)) + (uint)(-52))) < (uint)16) {
                          _2609 = saturate(_117 * 0.03125f);  // [sem: expr_sat]
                        } else {
                          _2609 = 1.0f;  // [sem: expr_sat]
                        }
                        _2660 = (_2609 * _2580);
                      } else {
                        _2660 = _2580;
                      }
                    } else {
                      // [sem: _3__36__0__0__g_baseColor_load]
                      _2620 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _2501)), ((int)(_bufferSizeAndInvSize.y * _2500)), 0));
                      _2626 = ((float)((uint)((uint)(((uint)((uint)(_2620.x)) >> 8) & 255)))) * 0.003921569f;
                      _2629 = ((float)((uint)((uint)(_2620.x & 255)))) * 0.003921569f;
                      _2633 = ((float)((uint)((uint)(((uint)((uint)(_2620.y)) >> 8) & 255)))) * 0.003921569f;
                      _2634 = _2626 * _2626;
                      _2635 = _2629 * _2629;
                      _2636 = _2633 * _2633;
                      _2660 = (saturate(1.0f - (dot(float3((((_2634 * 0.61312f) + (_2635 * 0.33951f)) + (_2636 * 0.04737f)), (((_2634 * 0.0702f) + (_2635 * 0.91636f)) + (_2636 * 0.01345f)), (((_2634 * 0.02062f) + (_2635 * 0.10958f)) + (_2636 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _2580);
                    }
                  }
                } else {
                  _2660 = (_2580 * 0.01f);
                }
              } else {
                _2660 = 0.0f;
              }
            }
          }
          break;
        }
      }
      _2664 = saturate(1.0f - _2660);  // [sem: expr_sat]
    } else {
      _2664 = 1.0f;  // [sem: expr_sat]
    }
    _2665 = min(_1622, _2664);
    _2689 = float(half(_2665 * float(_1608)));
    _2690 = float(half(_2665 * float(_1607)));
    _2691 = float(half(_2665 * float(_1606)));
    _2692 = saturate((1.0f - _552) + (exp2(log2(saturate(select(_166, (_1617 + 0.98f), _1617))) * 0.45454544f) * _552));  // [sem: expr_sat]
  }
  __3__38__0__1__g_shadowColorResultUAV[int2(_54, _61)] = float4((half)(half(_2689)), (half)(half(_2690)), (half)(half(_2691)), (half)(half(_2692)));
}
