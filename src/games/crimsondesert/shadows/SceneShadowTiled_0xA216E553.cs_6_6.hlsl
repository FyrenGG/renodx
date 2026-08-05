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
  half _1258;
  half _1259;
  half _1260;
  float _1261;
  float _1262;
  float _1298;
  float _1299;
  float _1300;
  float _1399;
  float _1414;
  int _1441;
  float _1447;
  float _1456;
  float _1465;
  float _1466;
  float _1467;
  float _1627;
  float _1628;
  int _1629;
  int _1630;
  float _1631;
  float _1632;
  float _1633;
  float _1634;
  float _1635;
  int _1713;
  float _1737;
  float _1757;
  int _1758;
  float _1782;
  float _1783;
  float _1784;
  float _1785;
  float _1786;
  float _1792;
  float _1837;
  float _1870;
  float _1911;
  float _1960;
  float _1961;
  float _1962;
  float _1963;
  int _1964;
  float _1991;
  float _2024;
  float _2067;
  float _2115;
  float _2119;
  float _2144;
  float _2145;
  float _2146;
  float _2147;
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
  float _1197;
  float _1217;
  half _1224;
  half _1231;
  half _1238;
  float _1241;
  float _1242;
  float _1243;
  float _1244;
  bool _1263;
  float _1265;
  float _1269;
  float _1274;
  int _1277;
  bool _1278;
  bool _1280;
  float _1281;
  int _1301;
  int _1302;
  uint _1312;
  int _1317;
  int _1322;
  float _1323;
  float _1329;
  float _1335;
  float _1340;
  float _1350;
  float _1360;
  float _1363;
  float _1365;
  float _1367;
  float _1369;
  float _1372;
  float _1373;
  float _1374;
  float _1375;
  float _1381;
  float _1387;
  float _1392;
  int _1393;
  float _1406;
  bool _1417;
  float _1421;
  float _1460;
  float _1468;
  float _1469;
  float _1470;
  float _1482;
  float _1485;
  float _1491;
  float _1503;
  float _1511;
  float _1513;
  float _1515;
  float _1517;
  float _1521;
  float _1530;
  float _1539;
  float _1540;
  float _1546;
  float _1552;
  float _1554;
  float _1566;
  float _1573;
  float _1588;
  float _1589;
  float _1591;
  float _1593;
  float _1594;
  float _1601;
  float _1602;
  uint _1647;
  int _1649;
  float _1652;
  int _1653;
  bool _1654;
  float _1655;
  float _1659;
  float _1662;
  bool _1666;
  int _1667;
  float _1739;
  float _1742;
  int _1787;
  float _1794;
  float _1796;
  float _1798;
  bool _1799;
  float _1812;
  float _1814;
  float _1818;
  bool _1828;
  float _1882;
  int _1883;
  uint4 _1919;
  float _1925;
  float _1928;
  float _1932;
  float _1933;
  float _1934;
  float _1935;
  float _1966;
  float _1968;
  float _1972;
  bool _1982;
  float _2038;
  int _2039;
  uint4 _2075;
  float _2081;
  float _2084;
  float _2088;
  float _2089;
  float _2090;
  float _2091;
  float _2120;
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
    _2144 = _112;
    _2145 = _112;
    _2146 = _112;
    _2147 = _112;  // [sem: expr_sat]
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
      _1258 = 1.0h;
      _1259 = 1.0h;
      _1260 = 1.0h;
      _1261 = saturate(_1077 * _1077);  // [sem: expr_sat]
      _1262 = saturate(_1056 * _1056);  // [sem: expr_sat]
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
      _1197 = (((saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1113, _1119, _1120), _1121)).x)) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1133, _1139, _1120), _1121)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1149, _1155, _1120), _1121)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1165, _1171, _1120), _1121)).x))) * 0.25f;
      _1217 = (((max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1113, _1119, _1120), 0.0f))).x))) + max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1133, _1139, _1120), 0.0f))).x)))) + max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1149, _1155, _1120), 0.0f))).x)))) + max(0.0f, (_1085 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1165, _1171, _1120), 0.0f))).x)))) * 0.25f;
      _1224 = half(float(((half)(((half)((half)(_1140.x) + (half)(_1124.x))) + (half)(_1156.x))) + ((half)((half)(_1172.x) * 2.0h))) * 0.2f);
      _1231 = half(float(((half)(((half)((half)(_1140.y) + (half)(_1124.y))) + (half)(_1156.y))) + ((half)((half)(_1172.y) * 2.0h))) * 0.2f);
      _1238 = half(float(((half)(((half)((half)(_1140.z) + (half)(_1124.z))) + (half)(_1156.z))) + ((half)((half)(_1172.z) * 2.0h))) * 0.2f);
      if (_820 == 1) {
        _1241 = float(_1224);
        _1242 = float(_1231);
        _1243 = float(_1238);
        _1244 = -0.0f - _819;
        _1258 = (half)(half((_1243 + _819) + (_1243 * _1244)));
        _1259 = (half)(half((_1242 + _819) + (_1242 * _1244)));
        _1260 = (half)(half((_1241 + _819) + (_1241 * _1244)));
        _1261 = _1217;  // [sem: expr_sat]
        _1262 = _1197;  // [sem: expr_sat]
      } else {
        _1258 = _1238;
        _1259 = _1231;
        _1260 = _1224;
        _1261 = _1217;  // [sem: expr_sat]
        _1262 = _1197;  // [sem: expr_sat]
      }
    }
    _1263 = (_821 != 0);
    _1265 = min(_552, select(_1263, _1262, 1.0f));
    _1269 = select((_818 != 0), select(_1263, (_1261 * 400.0f), 4e+06f), 1.0f);
    _1274 = (_1265 - (_shadowAOParams.x * _1265)) + _shadowAOParams.x;
    [branch]
    if (_1274 > 0.0f) {
      _1277 = _78 & 126;
      _1278 = (_1277 == 64);
      _1280 = _1278 || (_82 == 66);
      _1281 = select(_1280, 2.0f, 4.0f);
      if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
        _1298 = _sunDirection.z;
        _1299 = _sunDirection.y;
        _1300 = _sunDirection.x;
      } else {
        _1298 = _moonDirection.z;
        _1299 = _moonDirection.y;
        _1300 = _moonDirection.x;
      }
      _1301 = _54 & 3;
      _1302 = _61 & 3;
      _1312 = (uint)((uint)((uint)(_frameNumber.x)) * (uint)(1551)) + (uint)((uint)((int)(((int)((int)((int)(_1302) << 1) | (int)(_1302)) << 1) & 10) | (int)(((int)((int)(_1301) << 1) | (int)(_1301)) & 5)));
      _1317 = (int)(((int)((uint)((uint)(_1312)) << 2)) & -858993460) | (int)(((uint)((uint)(_1312)) >> 2) & 858993459);
      _1322 = (int)(((int)((uint)((uint)(_1317)) << 1)) & 10) | (int)(((uint)((uint)(_1317)) >> 1) & 21);
      _1323 = (float)((uint)((uint)(_frameNumber.x)));
      _1329 = (frac(((_1323 * 92.0f) + _62) * 0.0078125f) * 128.0f) + -64.34062f;
      _1335 = (frac(((_1323 * 71.0f) + _63) * 0.0078125f) * 128.0f) + -72.46562f;
      _1340 = frac(dot(float3((_1329 * _1329), (_1335 * _1335), (_1335 * _1329)), float3(20.390625f, 60.703125f, 2.4281209f)));
      _1350 = frac((((float)((uint)((uint)(((int)((uint)(_1340 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f) + (((float)((uint)((uint)(_1322)))) * 0.03125f)) * 6.2831855f;
      _1360 = (((1.0f - _shadowAOParams.z) * 2.3283064e-10f) * ((float)((uint)((uint)(reversebits(_1322) ^ ((int)((uint)(_1340 * 2.8747837e+08f)))))))) + _shadowAOParams.z;
      _1363 = sqrt(1.0f - (_1360 * _1360));
      _1365 = cos(_1350) * _1363;
      _1367 = sin(_1350) * _1363;
      _1369 = select((_1298 >= 0.0f), 1.0f, -1.0f);
      _1372 = -0.0f - (1.0f / (_1369 + _1298));
      _1373 = _1299 * _1372;
      _1374 = _1373 * _1300;
      _1375 = _1369 * _1300;
      _1381 = mad(_1360, _1300, mad(_1367, _1374, ((((_1375 * _1300) * _1372) + 1.0f) * _1365)));
      _1387 = mad(_1360, _1299, mad(_1367, ((_1373 * _1299) + _1369), ((_1365 * _1369) * _1374)));
      _1392 = mad(_1360, _1298, mad(_1367, (-0.0f - _1299), (-0.0f - (_1375 * _1365))));
      _1393 = select(_1278, 10, 6);
      if (!_166) {
        _1399 = min(0.5f, ((_117 * 0.0025f) + 0.25f));
      } else {
        _1399 = 1.0f;
      }
      _1406 = ((abs(_1299) * (select(_1280, 12.0f, 2.0f) - _1281)) + _1281) * select(_166, 0.01f, 0.1f);
      if (!_166) {
        _1414 = max((_117 * select(((uint)((int)(_82) + (int)(-11)) < (uint)9), 0.008f, 0.03f)), _1406);
      } else {
        _1414 = _1406;
      }
      _1417 = (_terrainNormalParams.z > 0.0f);
      if (_1417) {
        _1421 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 255)));
        _1447 = frac(frac(dot(float2(((_1421 * 32.665f) + _62), ((_1421 * 11.815f) + _63)), float2(0.06711056f, 0.00583715f))) * 52.982918f);
      } else {
        if (_958) {
          _1441 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_956)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_956)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_956)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_948))));
        } else {
          _1441 = _948;
        }
        _1447 = (((float)((uint)((uint)(((int)((uint)((uint)(_1441)) * (uint)(48271))) & 16777215)))) * 5.9604645e-08f);
      }
      if (_82 == 15) {
        _1456 = ((10.0f - (saturate(_117 * 0.001f) * 9.0f)) * _1447);
      } else {
        _1456 = _1447;
      }
      if (!_1417) {
        _1460 = saturate(_117 * 0.0625f) * 0.05f;
        _1465 = (_1460 * _107);
        _1466 = (_1460 * _106);
        _1467 = (_1460 * _105);
      } else {
        _1465 = 0.0f;
        _1466 = 0.0f;
        _1467 = 0.0f;
      }
      _1468 = _1467 + _138;
      _1469 = _1466 + _147;
      _1470 = _1465 + _156;
      _1482 = (_viewRelative[2].w) + mad((_viewRelative[2].z), _1470, mad((_viewRelative[2].y), _1469, ((_viewRelative[2].x) * _1468)));
      _1485 = mad((_viewRelative[2].z), _1392, mad((_viewRelative[2].y), _1387, ((_viewRelative[2].x) * _1381)));
      _1491 = select((((_1485 * _1414) + _1482) < _nearFarProj.x), ((_nearFarProj.x - _1482) / _1485), _1414);
      _1503 = (_viewProjRelative[2].w) + mad((_viewProjRelative[2].z), _1470, mad((_viewProjRelative[2].y), _1469, ((_viewProjRelative[2].x) * _1468)));
      _1511 = mad((_viewProjRelative[3].z), _1470, mad((_viewProjRelative[3].y), _1469, ((_viewProjRelative[3].x) * _1468))) + (_viewProjRelative[3].w);
      _1513 = (_1491 * _1381) + _1468;
      _1515 = (_1491 * _1387) + _1469;
      _1517 = (_1491 * _1392) + _1470;
      _1521 = mad((_viewProjRelative[3].z), _1517, mad((_viewProjRelative[3].y), _1515, (_1513 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _1530 = (mad((_viewProjRelative[0].z), _1470, mad((_viewProjRelative[0].y), _1469, ((_viewProjRelative[0].x) * _1468))) + (_viewProjRelative[0].w)) / _1511;
      _1539 = (mad((_viewProjRelative[1].z), _1470, mad((_viewProjRelative[1].y), _1469, ((_viewProjRelative[1].x) * _1468))) + (_viewProjRelative[1].w)) / _1511;
      _1540 = _1503 / _1511;
      _1546 = ((mad((_viewProjRelative[0].z), _1517, mad((_viewProjRelative[0].y), _1515, (_1513 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _1521) - _1530;
      _1552 = ((mad((_viewProjRelative[1].z), _1517, mad((_viewProjRelative[1].y), _1515, (_1513 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _1521) - _1539;
      _1554 = 1.0f / ((float)((uint)((uint)(_1393))));
      _1566 = max(_1554, (1.0f / min(1.0f, (max(((_bufferSizeAndInvSize.x * 0.5f) * abs(_1546)), ((_bufferSizeAndInvSize.y * 0.5f) * abs(_1552))) * _1554))));
      _1573 = (((mad((_viewProjRelative[2].z), _1517, mad((_viewProjRelative[2].y), _1515, (_1513 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w)) / _1521) - _1540) * _1566;
      _1588 = ((_1399 * 0.5f) * max(abs(_1573), (_1540 - ((mad((_proj[2].z), _117, 0.0f) + _1503) / (mad((_proj[3].z), _117, 0.0f) + _1511))))) * max(0.0625f, _1554);
      _1589 = _1566 * _1554;
      _1591 = (_1546 * 0.5f) * _1589;
      _1593 = (_1552 * -0.5f) * _1589;
      _1594 = _1573 * _1554;
      _1601 = max(_1456, (1.0f / max((abs(_1591) * _bufferSizeAndInvSize.x), (abs(_1593) * _bufferSizeAndInvSize.y))));
      _1602 = 0.5f / _bufferSizeAndInvSize.x;
      _1627 = 0.0f;
      _1628 = 0.0f;
      _1629 = 0;
      _1630 = 0;
      // [sem: expr_sat]
      _1631 = saturate(((_117 * 0.01f) * (1.0f - saturate(dot(float3(_105, _106, _107), float3((-0.0f - (_138 * _158)), (-0.0f - (_147 * _158)), (-0.0f - (_156 * _158))))))) + 0.01f);
      _1632 = _1456;
      _1633 = ((_1601 * _1594) + _1540);
      _1634 = ((0.5f - (_1539 * 0.5f)) + (_1601 * _1593));
      _1635 = (((_1530 * 0.5f) + 0.5f) + (_1601 * _1591));
      while(true) {
        // [sem: _3__36__0__0__g_depthStencil_load]
        _1647 = __3__36__0__0__g_depthStencil.Load(int3(((int)(_bufferSizeAndInvSize.x * min(max(_1635, _1602), (1.0f - _1602)))), ((int)(_bufferSizeAndInvSize.y * _1634)), 0));
        _1649 = (uint)((uint)(_1647.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _1652 = ((float)((uint)((uint)(_1647.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _1653 = _1649 & 127;
        _1654 = (_1630 == 0);
        _1655 = select(_1654, 1.0f, _1631);
        _1659 = _nearFarProj.x / max(1e-07f, _1652);
        _1662 = _1659 - (_nearFarProj.x / max(1e-07f, _1633));
        _1666 = (abs((_1633 + _1588) - _1652) < _1588);
        _1667 = (int)(uint)(_1666);
        if (_1666) {
          if (((uint)((int)(_1653) + (int)(-19)) < (uint)2) || ((_1653 == 18) || (((_1649 & 125) == 105) || ((_1653 == 106) || (((uint)((int)(_1653) + (int)(-27)) < (uint)2) || ((_1653 == 26) || ((_1653 == 107) || (((uint)((int)(_1653) + (int)(-5)) < (uint)2) || (((_1649 & 126) == 66) || ((_1653 == 7) || (_1653 == 53))))))))))) {
            _1713 = ((int)(uint)((int)((_1662 < 0.0f) && (_1662 > -0.08f))));
          } else {
            if ((_1653 != 67) && ((uint)((int)(_1653) + (int)(-52)) < (uint)16)) {
              _1713 = ((int)(uint)((int)((_1662 < 0.0f) && (_1662 > select((_1659 < 32.0f), -0.08f, -1.0f)))));
            } else {
              _1713 = _1667;
            }
          }
        } else {
          _1713 = _1667;
        }
        if (!(_1713 == 0)) {
          if ((uint)_1653 > (uint)11) {
            if (!((uint)_1653 < (uint)16)) {
              if (!(_1653 == 17)) {
                if (!(_1653 == 16)) {
                  if (!(((_1653 == 18) || (_1653 == 107)) || ((uint)((int)(_1653) + (int)(-19)) < (uint)2))) {
                    _1737 = select((_1653 == 66), 0.1f, 0.0f);
                  } else {
                    _1737 = 0.15f;
                  }
                } else {
                  _1737 = 0.1f;
                }
              } else {
                _1737 = 0.7f;
              }
            } else {
              _1737 = 0.9f;
            }
          } else {
            _1737 = select((_1653 == 11), 0.1f, 0.0f);
          }
          _1739 = saturate(_1659 * 0.015625f);  // [sem: expr_sat]
          _1742 = (1.0f - _1739) + (_1739 * _1737);
          // [sem: expr_sat]
          _1757 = saturate(((saturate(1.0f - ((_1742 * _1742) * _1737)) * (1.0f - _1627)) * saturate((-0.0f - _1662) / (_1632 * 0.0046548597f))) + _1627);
          _1758 = _1653;
        } else {
          _1757 = _1627;  // [sem: expr_sat]
          _1758 = _1629;
        }
        if ((_1653 != 0) && (_1757 > 0.95f)) {
          if (!_1654) {
            _1792 = (saturate((_1628 - _1652) / (_1628 - _1633)) - min(_1632, _1655));
          } else {
            _1792 = 0.0f;
          }
          _1794 = (_1792 * _1591) + _1635;
          _1796 = (_1792 * _1593) + _1634;
          _1798 = (_1792 * _1594) + _1633;
          _1799 = (_1757 > 0.0f);
          if (_1798 > 0.0f) {
            if ((_1799) || ((_1796 <= 1.0f) && ((_1796 >= 0.0f) && ((_1794 >= 0.0f) && (_1794 <= 1.0f))))) {
              _1812 = (_1794 * 2.0f) + -1.0f;
              _1814 = 1.0f - (_1796 * 2.0f);
              _1818 = mad((_invViewProjRelative[3].z), _1798, mad((_invViewProjRelative[3].y), _1814, (_1812 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
              if (!(_1653 == 2)) {
                if (!(_1653 == 3)) {
                  if (_1653 == 21) {
                    _1837 = select((_82 == 21), 20.0f, 0.0f);
                  } else {
                    _1828 = (_1653 == 22);
                    _1837 = select(((_82 == 22) && _1828), 20.0f, select(_1828, 0.0f, 1.0f));
                  }
                } else {
                  _1837 = 0.0f;
                }
              } else {
                _1837 = select((_82 == 2), 20.0f, 0.0f);
              }
              if (_556 && (_1757 == 1.0f)) {
                // [sem: expr_sat]
                _1870 = saturate(((((_1414 * 0.9375f) - max(0.0f, dot(float3(_1381, _1387, _1392), float3((((mad((_invViewProjRelative[0].z), _1798, mad((_invViewProjRelative[0].y), _1814, (_1812 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _1818) - _1468), (((mad((_invViewProjRelative[1].z), _1798, mad((_invViewProjRelative[1].y), _1814, (_1812 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _1818) - _1469), (((mad((_invViewProjRelative[2].z), _1798, mad((_invViewProjRelative[2].y), _1814, (_1812 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _1818) - _1470))))) * ((_117 * 0.015625f) + 1.5f)) / _1414) * 0.9375f);
              } else {
                _1870 = _1757;  // [sem: expr_sat]
              }
              _1882 = saturate(exp2(min(0.0f, (((_117 * 0.018666666f) + 0.13333334f) + ((_1659 - (_nearFarProj.x / max(1e-07f, _1798))) * _1837))) * 1.442695f)) * _1870;
              _1883 = _1649 & 126;
              if (!(_1883 == 6)) {
                if ((((_82 == 33) && (_1653 == 33)) || (!(_82 == 33) && ((_82 == 54) && (_1653 == 54))))) {
                  _2115 = (_1882 * 0.01f);
                } else {
                  if (!((_1653 == 53) || (_1883 == 66)) || (((_1653 == 53) || (_1883 == 66)) && (!((_1277 == 66) || (_82 == 53))))) {
                    if (!_166) {
                      if ((uint)((int)(_1653) + (int)(-52)) < (uint)16) {
                        _1911 = saturate(_117 * 0.03125f);  // [sem: expr_sat]
                      } else {
                        _1911 = 1.0f;  // [sem: expr_sat]
                      }
                      _2115 = (_1911 * _1882);
                    } else {
                      _2115 = _1882;
                    }
                  } else {
                    // [sem: _3__36__0__0__g_baseColor_load]
                    _1919 = __3__36__0__0__g_baseColor.Load(int3(((int)(_1794 * _bufferSizeAndInvSize.x)), ((int)(_1796 * _bufferSizeAndInvSize.y)), 0));
                    _1925 = ((float)((uint)((uint)(((uint)((uint)(_1919.x)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
                    _1928 = ((float)((uint)((uint)(_1919.x & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
                    _1932 = ((float)((uint)((uint)(((uint)((uint)(_1919.y)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
                    _1933 = _1925 * _1925;
                    _1934 = _1928 * _1928;
                    _1935 = _1932 * _1932;
                    _2115 = (saturate(1.0f - (dot(float3((((_1933 * 0.61312f) + (_1934 * 0.33951f)) + (_1935 * 0.04737f)), (((_1933 * 0.0702f) + (_1934 * 0.91636f)) + (_1935 * 0.01345f)), (((_1933 * 0.02062f) + (_1934 * 0.10958f)) + (_1935 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _1882);
                  }
                }
              } else {
                _2115 = (_1882 * 0.01f);
              }
            } else {
              _2115 = 0.0f;
            }
          } else {
            if (_1799) {
              _1960 = _1652;
              _1961 = _1798;
              _1962 = _1796;
              _1963 = _1794;
              _1964 = _1653;
              _1966 = (_1963 * 2.0f) + -1.0f;
              _1968 = 1.0f - (_1962 * 2.0f);
              _1972 = mad((_invViewProjRelative[3].z), _1961, mad((_invViewProjRelative[3].y), _1968, (_1966 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
              if (!(_1964 == 2)) {
                if (!(_1964 == 3)) {
                  if (_1964 == 21) {
                    _1991 = select((_82 == 21), 20.0f, 0.0f);
                  } else {
                    _1982 = (_1964 == 22);
                    _1991 = select(((_82 == 22) && _1982), 20.0f, select(_1982, 0.0f, 1.0f));
                  }
                } else {
                  _1991 = 0.0f;
                }
              } else {
                _1991 = select((_82 == 2), 20.0f, 0.0f);
              }
              if (_556 && (_1757 == 1.0f)) {
                // [sem: expr_sat]
                _2024 = saturate(((((_1414 * 0.9375f) - max(0.0f, dot(float3(_1381, _1387, _1392), float3((((mad((_invViewProjRelative[0].z), _1961, mad((_invViewProjRelative[0].y), _1968, (_1966 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _1972) - _1468), (((mad((_invViewProjRelative[1].z), _1961, mad((_invViewProjRelative[1].y), _1968, (_1966 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _1972) - _1469), (((mad((_invViewProjRelative[2].z), _1961, mad((_invViewProjRelative[2].y), _1968, (_1966 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _1972) - _1470))))) * ((_117 * 0.015625f) + 1.5f)) / _1414) * 0.9375f);
              } else {
                _2024 = _1757;  // [sem: expr_sat]
              }
              _2038 = saturate(exp2(min(0.0f, (((_117 * 0.018666666f) + 0.13333334f) + (((_nearFarProj.x / max(1e-07f, _1960)) - (_nearFarProj.x / max(1e-07f, _1961))) * _1991))) * 1.442695f)) * _2024;
              _2039 = _1964 & -2;
              if (!(_2039 == 6)) {
                if ((((_82 == 33) && (_1964 == 33)) || (!(_82 == 33) && ((_82 == 54) && (_1964 == 54))))) {
                  _2115 = (_2038 * 0.01f);
                } else {
                  if (!((_1964 == 53) || (_2039 == 66)) || (((_1964 == 53) || (_2039 == 66)) && (!((_1277 == 66) || (_82 == 53))))) {
                    if (!_166) {
                      if ((uint)((int)((uint)((uint)(_1964)) + (uint)(-52))) < (uint)16) {
                        _2067 = saturate(_117 * 0.03125f);  // [sem: expr_sat]
                      } else {
                        _2067 = 1.0f;  // [sem: expr_sat]
                      }
                      _2115 = (_2067 * _2038);
                    } else {
                      _2115 = _2038;
                    }
                  } else {
                    // [sem: _3__36__0__0__g_baseColor_load]
                    _2075 = __3__36__0__0__g_baseColor.Load(int3(((int)(_1963 * _bufferSizeAndInvSize.x)), ((int)(_1962 * _bufferSizeAndInvSize.y)), 0));
                    _2081 = ((float)((uint)((uint)(((uint)((uint)(_2075.x)) >> 8) & 255)))) * 0.003921569f;
                    _2084 = ((float)((uint)((uint)(_2075.x & 255)))) * 0.003921569f;
                    _2088 = ((float)((uint)((uint)(((uint)((uint)(_2075.y)) >> 8) & 255)))) * 0.003921569f;
                    _2089 = _2081 * _2081;
                    _2090 = _2084 * _2084;
                    _2091 = _2088 * _2088;
                    _2115 = (saturate(1.0f - (dot(float3((((_2089 * 0.61312f) + (_2090 * 0.33951f)) + (_2091 * 0.04737f)), (((_2089 * 0.0702f) + (_2090 * 0.91636f)) + (_2091 * 0.01345f)), (((_2089 * 0.02062f) + (_2090 * 0.10958f)) + (_2091 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _2038);
                  }
                }
              } else {
                _2115 = (_2038 * 0.01f);
              }
            } else {
              _2115 = 0.0f;
            }
          }
        } else {
          if ((uint)_1630 < (uint)((int)(_1393) + (int)(-1))) {
            _1782 = _1652;
            _1783 = (_1655 + _1632);
            _1784 = ((_1655 * _1594) + _1633);
            _1785 = (_1634 + (_1655 * _1593));
            _1786 = (_1635 + (_1655 * _1591));
          } else {
            _1782 = _1628;
            _1783 = _1632;
            _1784 = _1633;
            _1785 = _1634;
            _1786 = _1635;
          }
          _1787 = (int)(_1630) + (int)(1);
          if ((uint)_1787 < (uint)_1393) {
            _1627 = _1757;
            _1628 = _1782;
            _1629 = _1758;
            _1630 = _1787;
            _1631 = _1655;  // [sem: expr_sat]
            _1632 = _1783;
            _1633 = _1784;
            _1634 = _1785;
            _1635 = _1786;
            continue;
          } else {
            if (_1757 > 0.0f) {
              _1960 = 0.0f;
              _1961 = -1.0f;
              _1962 = 0.0f;
              _1963 = 0.0f;
              _1964 = _1758;
              _1966 = (_1963 * 2.0f) + -1.0f;
              _1968 = 1.0f - (_1962 * 2.0f);
              _1972 = mad((_invViewProjRelative[3].z), _1961, mad((_invViewProjRelative[3].y), _1968, (_1966 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
              if (!(_1964 == 2)) {
                if (!(_1964 == 3)) {
                  if (_1964 == 21) {
                    _1991 = select((_82 == 21), 20.0f, 0.0f);
                  } else {
                    _1982 = (_1964 == 22);
                    _1991 = select(((_82 == 22) && _1982), 20.0f, select(_1982, 0.0f, 1.0f));
                  }
                } else {
                  _1991 = 0.0f;
                }
              } else {
                _1991 = select((_82 == 2), 20.0f, 0.0f);
              }
              if (_556 && (_1757 == 1.0f)) {
                // [sem: expr_sat]
                _2024 = saturate(((((_1414 * 0.9375f) - max(0.0f, dot(float3(_1381, _1387, _1392), float3((((mad((_invViewProjRelative[0].z), _1961, mad((_invViewProjRelative[0].y), _1968, (_1966 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _1972) - _1468), (((mad((_invViewProjRelative[1].z), _1961, mad((_invViewProjRelative[1].y), _1968, (_1966 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _1972) - _1469), (((mad((_invViewProjRelative[2].z), _1961, mad((_invViewProjRelative[2].y), _1968, (_1966 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _1972) - _1470))))) * ((_117 * 0.015625f) + 1.5f)) / _1414) * 0.9375f);
              } else {
                _2024 = _1757;  // [sem: expr_sat]
              }
              _2038 = saturate(exp2(min(0.0f, (((_117 * 0.018666666f) + 0.13333334f) + (((_nearFarProj.x / max(1e-07f, _1960)) - (_nearFarProj.x / max(1e-07f, _1961))) * _1991))) * 1.442695f)) * _2024;
              _2039 = _1964 & -2;
              if (!(_2039 == 6)) {
                if ((((_82 == 33) && (_1964 == 33)) || (!(_82 == 33) && ((_82 == 54) && (_1964 == 54))))) {
                  _2115 = (_2038 * 0.01f);
                } else {
                  if (!((_1964 == 53) || (_2039 == 66)) || (((_1964 == 53) || (_2039 == 66)) && (!((_1277 == 66) || (_82 == 53))))) {
                    if (!_166) {
                      if ((uint)((int)((uint)((uint)(_1964)) + (uint)(-52))) < (uint)16) {
                        _2067 = saturate(_117 * 0.03125f);  // [sem: expr_sat]
                      } else {
                        _2067 = 1.0f;  // [sem: expr_sat]
                      }
                      _2115 = (_2067 * _2038);
                    } else {
                      _2115 = _2038;
                    }
                  } else {
                    // [sem: _3__36__0__0__g_baseColor_load]
                    _2075 = __3__36__0__0__g_baseColor.Load(int3(((int)(_1963 * _bufferSizeAndInvSize.x)), ((int)(_1962 * _bufferSizeAndInvSize.y)), 0));
                    _2081 = ((float)((uint)((uint)(((uint)((uint)(_2075.x)) >> 8) & 255)))) * 0.003921569f;
                    _2084 = ((float)((uint)((uint)(_2075.x & 255)))) * 0.003921569f;
                    _2088 = ((float)((uint)((uint)(((uint)((uint)(_2075.y)) >> 8) & 255)))) * 0.003921569f;
                    _2089 = _2081 * _2081;
                    _2090 = _2084 * _2084;
                    _2091 = _2088 * _2088;
                    _2115 = (saturate(1.0f - (dot(float3((((_2089 * 0.61312f) + (_2090 * 0.33951f)) + (_2091 * 0.04737f)), (((_2089 * 0.0702f) + (_2090 * 0.91636f)) + (_2091 * 0.01345f)), (((_2089 * 0.02062f) + (_2090 * 0.10958f)) + (_2091 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _2038);
                  }
                }
              } else {
                _2115 = (_2038 * 0.01f);
              }
            } else {
              _2115 = 0.0f;
            }
          }
        }
        _2119 = saturate(1.0f - _2115);  // [sem: expr_sat]
        break;
      }
    } else {
      _2119 = 1.0f;  // [sem: expr_sat]
    }
    _2120 = min(_1274, _2119);
    _2144 = float(half(_2120 * float(_1260)));
    _2145 = float(half(_2120 * float(_1259)));
    _2146 = float(half(_2120 * float(_1258)));
    _2147 = saturate((1.0f - _552) + (exp2(log2(saturate(select(_166, (_1269 + 0.98f), _1269))) * 0.45454544f) * _552));  // [sem: expr_sat]
  }
  __3__38__0__1__g_shadowColorResultUAV[int2(_54, _61)] = float4((half)(half(_2144)), (half)(half(_2145)), (half)(half(_2146)), (half)(half(_2147)));
}
