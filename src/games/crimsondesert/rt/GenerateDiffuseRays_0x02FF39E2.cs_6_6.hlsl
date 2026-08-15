Texture2D<uint2> __3__36__0__0__g_normalDepthHalf : register(t53, space36);

Texture2D<float4> __3__36__0__0__g_tiledRadianceCachePlanePrev : register(t84, space36);

Texture2D<float> __3__36__0__0__g_tiledRadianceCachePDFPrev : register(t85, space36);

RWTexture2D<float4> __3__38__0__1__g_raytracingHitResultUAV : register(u43, space38);

RWTexture2D<float> __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV : register(u44, space38);

cbuffer __1__3__0__0__PipelineProperty : register(b0, space3) {
  float2 g_screenSpaceScale : packoffset(c000.x);
  float2 __padding : packoffset(c000.z);
};

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

cbuffer __3__1__0__0__RenderVoxelConstants : register(b0, space1) {
  float4 _renderParams : packoffset(c000.x);
  float4 _renderParams2 : packoffset(c001.x);
  float4 _cubemapViewPosRelative : packoffset(c002.x);
  float4 _lightingParams : packoffset(c003.x);
  float4 _tiledRadianceCacheParams : packoffset(c004.x);
  float _rtaoIntensity : packoffset(c005.x);
};

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const int _global_0[32] = { -7, -8, 0, -7, -4, -6, 3, -5, 7, -4, -1, -3, -5, -2, 4, -1, -8, 0, 1, 1, -3, 2, 5, 3, -6, 4, 2, 5, -2, 6, 6, 7 };
groupshared float _global_1[256];
groupshared float _global_2[192];

[numthreads(8, 8, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  int _15;
  int _16;
  float _56;
  uint2 _58;
  float _64;
  int _65;
  float _80;
  float _81;
  float _82;
  float _84;
  float _85;
  float _86;
  float _87;
  float _88;
  float _89;
  float _94;
  float _95;
  float _100;
  float _101;
  bool _162;
  int _451;
  int _666;
  int _878;
  int _1090;
  int _1456;
  int _1670;
  float _1678;
  int _1679;
  float _1684;
  int _1685;
  float _1736;
  int _1737;
  float _1738;
  int _1739;
  int _1740;
  int _1743;
  float _1744;
  bool _1801;
  int _1802;
  int _1803;
  float _1804;
  int _1991;
  int _2019;
  int _2156;
  float _2200;
  float _2201;
  float _2202;
  float _2203;
  float _2230;
  float _2231;
  float _2232;
  float _2233;
  float _110;
  float _112;
  float _148;
  float _149;
  float _150;
  float _151;
  float _165;
  float _176;
  float _177;
  float _182;
  uint _185;
  uint _186;
  float _214;
  float _222;
  float _223;
  float _224;
  float _225;
  uint _245;
  uint _246;
  int _248;
  float _269;
  float _270;
  int _273;
  int _274;
  float _277;
  float _278;
  float _279;
  float _280;
  int _285;
  int _286;
  int _287;
  int _288;
  float _289;
  float _290;
  float _291;
  float _292;
  float _302;
  float _303;
  float _304;
  float _305;
  uint _306;
  int _316;
  uint _317;
  uint _318;
  uint _326;
  uint _334;
  uint _342;
  uint _350;
  uint _358;
  uint _366;
  uint _374;
  uint _382;
  uint _390;
  uint _398;
  uint _406;
  uint _414;
  uint _422;
  uint _430;
  uint _438;
  int _458;
  int _471;
  int _472;
  float _484;
  float _487;
  float _488;
  float _524;
  uint _532;
  uint _533;
  uint _541;
  uint _549;
  uint _557;
  uint _565;
  uint _573;
  uint _581;
  uint _589;
  uint _597;
  uint _605;
  uint _613;
  uint _621;
  uint _629;
  uint _637;
  uint _645;
  uint _653;
  int _673;
  int _685;
  float _697;
  float _700;
  float _701;
  float _737;
  uint _745;
  uint _753;
  uint _761;
  uint _769;
  uint _777;
  uint _785;
  uint _793;
  uint _801;
  uint _809;
  uint _817;
  uint _825;
  uint _833;
  uint _841;
  uint _849;
  uint _857;
  uint _865;
  int _885;
  float _909;
  float _912;
  float _913;
  float _949;
  uint _957;
  uint _965;
  uint _973;
  uint _981;
  uint _989;
  uint _997;
  uint _1005;
  uint _1013;
  uint _1021;
  uint _1029;
  uint _1037;
  uint _1045;
  uint _1053;
  uint _1061;
  uint _1069;
  uint _1077;
  int _1097;
  float _1121;
  float _1124;
  float _1125;
  float _1161;
  float _1165;
  float _1168;
  float _1176;
  float _1177;
  float _1178;
  float _1185;
  float _1186;
  float _1187;
  float _1194;
  float _1195;
  float _1196;
  float _1203;
  float _1204;
  float _1205;
  bool _1213;
  bool _1214;
  bool _1219;
  float _1232;
  float _1237;
  float _1238;
  float _1239;
  float _1240;
  float _1249;
  float _1250;
  float _1251;
  float _1252;
  float _1253;
  float _1254;
  float _1255;
  float _1256;
  float _1277;
  float _1306;
  float _1307;
  float _1308;
  float _1309;
  float _1312;
  int _1323;
  uint _1331;
  uint _1339;
  uint _1347;
  uint _1355;
  uint _1363;
  uint _1371;
  uint _1379;
  uint _1387;
  uint _1395;
  uint _1403;
  uint _1411;
  uint _1419;
  uint _1427;
  uint _1435;
  uint _1443;
  float _1464;
  float _1465;
  float _1466;
  int _1469;
  uint _1470;
  int _1475;
  float _1492;
  float _1493;
  float _1497;
  float _1499;
  float _1500;
  float _1505;
  float _1506;
  float _1508;
  float _1509;
  float _1510;
  float _1511;
  float _1514;
  float _1517;
  float _1519;
  float _1526;
  bool _1527;
  float _1528;
  float _1529;
  float _1530;
  float _1531;
  uint _1537;
  uint _1545;
  uint _1553;
  uint _1561;
  uint _1569;
  uint _1577;
  uint _1585;
  uint _1593;
  uint _1601;
  uint _1609;
  uint _1617;
  uint _1625;
  uint _1633;
  uint _1641;
  uint _1649;
  uint _1657;
  int _1681;
  float _1732;
  int _1733;
  float _1790;
  float _1791;
  int _1794;
  int _1805;
  uint _1813;
  uint _1834;
  float _1837;
  float _1838;
  float _1842;
  float _1844;
  float _1845;
  float _1850;
  float _1851;
  int _1858;
  uint _1866;
  uint _1874;
  uint _1882;
  uint _1890;
  uint _1898;
  uint _1906;
  uint _1914;
  uint _1922;
  uint _1930;
  uint _1938;
  uint _1946;
  uint _1954;
  uint _1962;
  uint _1970;
  uint _1978;
  float _1999;
  float _2000;
  float _2001;
  float _2003;
  float _2004;
  float _2005;
  float _2006;
  float _2009;
  float _2012;
  float _2014;
  uint _2023;
  uint _2031;
  uint _2039;
  uint _2047;
  uint _2055;
  uint _2063;
  uint _2071;
  uint _2079;
  uint _2087;
  uint _2095;
  uint _2103;
  uint _2111;
  uint _2119;
  uint _2127;
  uint _2135;
  uint _2143;
  uint _2161;
  float _2168;
  float _2171;
  float _2178;
  float _2180;
  float _2183;
  float _2189;
  float _2190;
  float _2193;
  float _2205;
  float _2208;
  float _2209;
  float _2210;
  float _2211;
  int __loop_jump_target = -1;
  _15 = (int)(SV_GroupIndex) & 7;
  _16 = (uint)(SV_GroupIndex) >> 3;
  _global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)((uint)(_15)) + (uint)((uint)((uint)(_16)) * (uint)(8))) * (uint)(4))))), 255u)] = 0.0f;
  _global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)((uint)(_15)) + (uint)((uint)((uint)(_16)) * (uint)(8))) * (uint)(4))))), 255u)] = 0.0f;
  _global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)((uint)(_15)) + (uint)((uint)((uint)(_16)) * (uint)(8))) * (uint)(4))))), 255u)] = 0.0f;
  _global_1[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)((uint)(_15)) + (uint)((uint)((uint)(_16)) * (uint)(8))) * (uint)(4))))), 255u)] = 0.0f;
  _global_2[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)((uint)(_15)) + (uint)((uint)((uint)(_16)) * (uint)(8))) * (uint)(3))))), 191u)] = 0.0f;
  _global_2[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)((uint)(_15)) + (uint)((uint)((uint)(_16)) * (uint)(8))) * (uint)(3))))), 191u)] = 0.0f;
  _global_2[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)((uint)(_15)) + (uint)((uint)((uint)(_16)) * (uint)(8))) * (uint)(3))))), 191u)] = 0.0f;
  GroupMemoryBarrierWithGroupSync();
  _56 = g_screenSpaceScale.x * _bufferSizeAndInvSize.x;
  _58 = __3__36__0__0__g_normalDepthHalf.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));  // [sem: _3__36__0__0__g_normalDepthHalf_load]
  _64 = ((float)((uint)((uint)(_58.y & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_normalDepthHalf_load_derived]
  _65 = ((uint)((uint)(_58.y)) >> 24) & 127;  // [sem: _3__36__0__0__g_normalDepthHalf_load_derived]
  _80 = min(1.0f, ((((float)((uint)((uint)(_58.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_load_derived]
  _81 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_58.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_load_derived]
  _82 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_58.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_load_derived]
  _84 = rsqrt(dot(float3(_80, _81, _82), float3(_80, _81, _82)));  // [sem: invLength]
  _85 = _84 * _80;
  _86 = _84 * _81;
  _87 = _84 * _82;
  _88 = (float)((uint)(SV_DispatchThreadID.x));
  _89 = (float)((uint)(SV_DispatchThreadID.y));
  _94 = _bufferSizeAndInvSize.z * (_88 + 0.5f);
  _95 = _bufferSizeAndInvSize.w * (_89 + 0.5f);
  _100 = max(1e-07f, _64);
  _101 = _nearFarProj.x / _100;
  if ((!(_64 < 1e-07f)) && (!(_64 == 1.0f))) {
    _110 = (_94 * 4.0f) + -1.0f;
    _112 = 1.0f - (_95 * 4.0f);
    _148 = mad((_invViewProjRelative[3].z), _100, mad((_invViewProjRelative[3].y), _112, ((_invViewProjRelative[3].x) * _110))) + (_invViewProjRelative[3].w);
    _149 = (mad((_invViewProjRelative[0].z), _100, mad((_invViewProjRelative[0].y), _112, ((_invViewProjRelative[0].x) * _110))) + (_invViewProjRelative[0].w)) / _148;
    _150 = (mad((_invViewProjRelative[1].z), _100, mad((_invViewProjRelative[1].y), _112, ((_invViewProjRelative[1].x) * _110))) + (_invViewProjRelative[1].w)) / _148;
    _151 = (mad((_invViewProjRelative[2].z), _100, mad((_invViewProjRelative[2].y), _112, ((_invViewProjRelative[2].x) * _110))) + (_invViewProjRelative[2].w)) / _148;
    if ((uint)_65 > (uint)11) {
      if (!(((uint)_65 < (uint)21) || (_65 == 107))) {
        _162 = (_65 == 7);
      } else {
        _162 = true;
      }
    } else {
      if (!(_65 == 6)) {
        _162 = (_65 == 7);
      } else {
        _162 = true;
      }
    }
    _165 = (float)((uint)((uint)(_frameNumber.x)));
    _176 = (frac(((_165 * 92.0f) + _88) * 0.0078125f) * 128.0f) + -64.34062f;
    _177 = (frac(((_165 * 71.0f) + _89) * 0.0078125f) * 128.0f) + -72.46562f;
    _182 = frac(dot(float3((_176 * _176), (_177 * _177), (_177 * _176)), float3(20.390625f, 60.703125f, 2.4281209f)));
    _185 = (uint)(_182 * 5.1540816e+07f);
    _186 = (uint)(_182 * 2.8747837e+08f);
    _214 = mad((_projToPrevProj[3].z), _64, mad((_projToPrevProj[3].y), _112, ((_projToPrevProj[3].x) * _110))) + (_projToPrevProj[3].w);
    _222 = (((mad((_projToPrevProj[0].z), _64, mad((_projToPrevProj[0].y), _112, ((_projToPrevProj[0].x) * _110))) + (_projToPrevProj[0].w)) / _214) - _110) * 0.5f;
    _223 = (((mad((_projToPrevProj[1].z), _64, mad((_projToPrevProj[1].y), _112, ((_projToPrevProj[1].x) * _110))) + (_projToPrevProj[1].w)) / _214) - _112) * 0.5f;
    _224 = _222 + (_94 * 2.0f);
    _225 = (_95 * 2.0f) - _223;
    if (((_224 >= 0.0f) && (_224 <= 1.0f)) && ((_225 >= 0.0f) && (_225 <= 1.0f))) {
      _245 = (uint)((uint)((int)(_tiledRadianceCacheParams.z))) + (uint)(-1);
      _246 = (uint)((uint)((int)(_tiledRadianceCacheParams.w))) + (uint)(-1);
      _248 = ((int)((uint)(_tiledRadianceCacheParams.y))) & 31;
      _269 = ((((((float)((uint)((uint)((int)((int)((uint)((uint)(min((int)(max((int)(((uint)(SV_DispatchThreadID.x) >> _248)), (int)(0))), (int)(_245)))) << 5)) | (int)(16))))) + 0.5f) * _bufferSizeAndInvSize.z) + _222) * _tiledRadianceCacheParams.z) + -0.5f;
      _270 = ((((((float)((uint)((uint)((int)((int)((uint)((uint)(min((int)(max((int)(((uint)(SV_DispatchThreadID.y) >> _248)), (int)(0))), (int)(_246)))) << 5)) | (int)(16))))) + 0.5f) * _bufferSizeAndInvSize.w) - _223) * _tiledRadianceCacheParams.w) + -0.5f;
      _273 = (int)(floor(_269));
      _274 = (int)(floor(_270));
      _277 = _269 - ((float)((int)(_273)));
      _278 = _270 - ((float)((int)(_274)));
      _279 = 1.0f - _277;
      _280 = 1.0f - _278;
      _285 = min((int)(max((int)(((int)((uint)((uint)(_273)) + (uint)(1)))), (int)(0))), (int)(_245));
      _286 = min((int)(max((int)(((int)((uint)((uint)(_274)) + (uint)(1)))), (int)(0))), (int)(_246));
      _287 = max((int)(0), (int)(_273));
      _288 = max((int)(0), (int)(_274));
      _289 = _280 * _279;
      _290 = _280 * _277;
      _291 = _279 * _278;
      _292 = _278 * _277;
      _302 = _nearFarProj.x / (((float4)(__3__36__0__0__g_tiledRadianceCachePlanePrev.Load(int3(_287, _286, 0)))).w);
      _303 = _nearFarProj.x / (((float4)(__3__36__0__0__g_tiledRadianceCachePlanePrev.Load(int3(_285, _286, 0)))).w);
      _304 = _nearFarProj.x / (((float4)(__3__36__0__0__g_tiledRadianceCachePlanePrev.Load(int3(_285, _274, 0)))).w);
      _305 = _nearFarProj.x / (((float4)(__3__36__0__0__g_tiledRadianceCachePlanePrev.Load(int3(_287, _288, 0)))).w);
      _306 = (uint)((uint)(_frameNumber.x)) + (uint)(-1);
      _316 = (((int)((uint)((uint)((uint)(_306)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531528)))) ^ ((int)((uint)((uint)(_306)) >> 5) + (int)(-939442524));
      _317 = (uint)((uint)(_287)) + (uint)((uint)(_316));
      _318 = (uint)((uint)(_317)) + (uint)((uint)((uint)(_286)) * (uint)((uint)((uint)((uint)(_bufferSizeAndInvSize.x)) >> 5)));
      _326 = (uint)((uint)((((int)((uint)((uint)((uint)(_318)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_318)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_318)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_306));
      _334 = (uint)((uint)((((int)((uint)((uint)((uint)(_326)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_326)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_326)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_318));
      _342 = (uint)((uint)((((int)((uint)((uint)((uint)(_334)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_334)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_334)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_326));
      _350 = (uint)((uint)((((int)((uint)((uint)((uint)(_342)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_342)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_342)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_334));
      _358 = (uint)((uint)((((int)((uint)((uint)((uint)(_350)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_350)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_350)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_342));
      _366 = (uint)((uint)((((int)((uint)((uint)((uint)(_358)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_358)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_358)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_350));
      _374 = (uint)((uint)((((int)((uint)((uint)((uint)(_366)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_366)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_366)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_358));
      _382 = (uint)((uint)((((int)((uint)((uint)((uint)(_374)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_374)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_374)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_366));
      _390 = (uint)((uint)((((int)((uint)((uint)((uint)(_382)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_382)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_382)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_374));
      _398 = (uint)((uint)((((int)((uint)((uint)((uint)(_390)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_390)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_390)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_382));
      _406 = (uint)((uint)((((int)((uint)((uint)((uint)(_398)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_398)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_398)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_390));
      _414 = (uint)((uint)((((int)((uint)((uint)((uint)(_406)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_406)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_406)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_398));
      _422 = (uint)((uint)((((int)((uint)((uint)((uint)(_414)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_414)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_414)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_406));
      _430 = (uint)((uint)((((int)((uint)((uint)((uint)(_422)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_422)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_422)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_414));
      _438 = (uint)((uint)((((int)((uint)((uint)((uint)(_430)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_430)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_430)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_422));
      if ((_430 & 16777215) == 0) {
        _451 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_438)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_438)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_438)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_430))));
      } else {
        _451 = _430;
      }
      _458 = ((int)((uint)(floor(((float)((uint)((uint)(((int)((uint)((uint)(_451)) * (uint)(48271))) & 16777215)))) * 9.536147e-07f)))) & 15;
      _471 = (int)((int)((uint)((uint)(_287)) << 5)) | (int)(16);
      _472 = (int)((int)((uint)((uint)(_286)) << 5)) | (int)(16);
      _484 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((uint)((uint)((uint)((uint)(_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_458)) * (uint)(2))))), 31u)])) << 1) + (uint)((uint)(_471))))) + 0.5f)) + -1.0f;
      _487 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((uint)((uint)((uint)((uint)(_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_458)) * (uint)(2))))), 31u)])) << 1) + (uint)((uint)(_472))))) + 0.5f));
      _488 = max(1e-07f, _302);
      _524 = mad((_invViewProjRelative[3].z), _488, mad((_invViewProjRelative[3].y), _487, (_484 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
      _532 = (uint)((uint)(_285)) + (uint)((uint)(_316));
      _533 = (uint)((uint)((uint)((uint)((uint)(_bufferSizeAndInvSize.x)) >> 5)) * (uint)((uint)(_286))) + (uint)((uint)(_532));
      _541 = (uint)((uint)((((int)((uint)((uint)((uint)(_533)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_533)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_533)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_306));
      _549 = (uint)((uint)((((int)((uint)((uint)((uint)(_541)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_541)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_541)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_533));
      _557 = (uint)((uint)((((int)((uint)((uint)((uint)(_549)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_549)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_549)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_541));
      _565 = (uint)((uint)((((int)((uint)((uint)((uint)(_557)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_557)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_557)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_549));
      _573 = (uint)((uint)((((int)((uint)((uint)((uint)(_565)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_565)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_565)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_557));
      _581 = (uint)((uint)((((int)((uint)((uint)((uint)(_573)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_573)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_573)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_565));
      _589 = (uint)((uint)((((int)((uint)((uint)((uint)(_581)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_581)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_581)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_573));
      _597 = (uint)((uint)((((int)((uint)((uint)((uint)(_589)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_589)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_589)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_581));
      _605 = (uint)((uint)((((int)((uint)((uint)((uint)(_597)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_597)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_597)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_589));
      _613 = (uint)((uint)((((int)((uint)((uint)((uint)(_605)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_605)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_605)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_597));
      _621 = (uint)((uint)((((int)((uint)((uint)((uint)(_613)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_613)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_613)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_605));
      _629 = (uint)((uint)((((int)((uint)((uint)((uint)(_621)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_621)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_621)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_613));
      _637 = (uint)((uint)((((int)((uint)((uint)((uint)(_629)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_629)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_629)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_621));
      _645 = (uint)((uint)((((int)((uint)((uint)((uint)(_637)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_637)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_637)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_629));
      _653 = (uint)((uint)((((int)((uint)((uint)((uint)(_645)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_645)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_645)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_637));
      if ((_645 & 16777215) == 0) {
        _666 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_653)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_653)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_653)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_645))));
      } else {
        _666 = _645;
      }
      _673 = ((int)((uint)(floor(((float)((uint)((uint)(((int)((uint)((uint)(_666)) * (uint)(48271))) & 16777215)))) * 9.536147e-07f)))) & 15;
      _685 = (int)((int)((uint)((uint)(_285)) << 5)) | (int)(16);
      _697 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((uint)((uint)((uint)((uint)(_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_673)) * (uint)(2))))), 31u)])) << 1) + (uint)((uint)(_685))))) + 0.5f)) + -1.0f;
      _700 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((uint)((uint)((uint)((uint)(_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_673)) * (uint)(2))))), 31u)])) << 1) + (uint)((uint)(_472))))) + 0.5f));
      _701 = max(1e-07f, _303);
      _737 = mad((_invViewProjRelative[3].z), _701, mad((_invViewProjRelative[3].y), _700, (_697 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
      _745 = (uint)((uint)((uint)((uint)((uint)(_bufferSizeAndInvSize.x)) >> 5)) * (uint)((uint)(_274))) + (uint)((uint)(_532));
      _753 = (uint)((uint)((((int)((uint)((uint)((uint)(_745)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_745)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_745)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_306));
      _761 = (uint)((uint)((((int)((uint)((uint)((uint)(_753)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_753)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_753)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_745));
      _769 = (uint)((uint)((((int)((uint)((uint)((uint)(_761)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_761)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_761)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_753));
      _777 = (uint)((uint)((((int)((uint)((uint)((uint)(_769)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_769)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_769)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_761));
      _785 = (uint)((uint)((((int)((uint)((uint)((uint)(_777)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_777)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_777)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_769));
      _793 = (uint)((uint)((((int)((uint)((uint)((uint)(_785)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_785)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_785)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_777));
      _801 = (uint)((uint)((((int)((uint)((uint)((uint)(_793)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_793)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_793)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_785));
      _809 = (uint)((uint)((((int)((uint)((uint)((uint)(_801)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_801)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_801)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_793));
      _817 = (uint)((uint)((((int)((uint)((uint)((uint)(_809)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_809)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_809)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_801));
      _825 = (uint)((uint)((((int)((uint)((uint)((uint)(_817)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_817)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_817)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_809));
      _833 = (uint)((uint)((((int)((uint)((uint)((uint)(_825)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_825)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_825)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_817));
      _841 = (uint)((uint)((((int)((uint)((uint)((uint)(_833)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_833)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_833)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_825));
      _849 = (uint)((uint)((((int)((uint)((uint)((uint)(_841)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_841)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_841)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_833));
      _857 = (uint)((uint)((((int)((uint)((uint)((uint)(_849)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_849)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_849)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_841));
      _865 = (uint)((uint)((((int)((uint)((uint)((uint)(_857)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_857)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_857)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_849));
      if ((_857 & 16777215) == 0) {
        _878 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_865)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_865)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_865)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_857))));
      } else {
        _878 = _857;
      }
      _885 = ((int)((uint)(floor(((float)((uint)((uint)(((int)((uint)((uint)(_878)) * (uint)(48271))) & 16777215)))) * 9.536147e-07f)))) & 15;
      _909 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((uint)((uint)((uint)((uint)(_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_885)) * (uint)(2))))), 31u)])) << 1) + (uint)((uint)(_685))))) + 0.5f)) + -1.0f;
      _912 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((uint)((uint)((uint)((uint)(_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_885)) * (uint)(2))))), 31u)])) << 1) + (uint)((uint)((int)((int)((uint)((uint)(_274)) << 5)) | (int)(16)))))) + 0.5f));
      _913 = max(1e-07f, _304);
      _949 = mad((_invViewProjRelative[3].z), _913, mad((_invViewProjRelative[3].y), _912, (_909 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
      _957 = (uint)((uint)((uint)((uint)((uint)(_bufferSizeAndInvSize.x)) >> 5)) * (uint)((uint)(_288))) + (uint)((uint)(_317));
      _965 = (uint)((uint)((((int)((uint)((uint)((uint)(_957)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_957)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_957)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_306));
      _973 = (uint)((uint)((((int)((uint)((uint)((uint)(_965)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_965)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_965)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_957));
      _981 = (uint)((uint)((((int)((uint)((uint)((uint)(_973)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_973)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_973)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_965));
      _989 = (uint)((uint)((((int)((uint)((uint)((uint)(_981)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_981)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_981)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_973));
      _997 = (uint)((uint)((((int)((uint)((uint)((uint)(_989)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_989)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_989)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_981));
      _1005 = (uint)((uint)((((int)((uint)((uint)((uint)(_997)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_997)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_997)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_989));
      _1013 = (uint)((uint)((((int)((uint)((uint)((uint)(_1005)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1005)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_1005)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_997));
      _1021 = (uint)((uint)((((int)((uint)((uint)((uint)(_1013)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1013)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_1013)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1005));
      _1029 = (uint)((uint)((((int)((uint)((uint)((uint)(_1021)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1021)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_1021)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1013));
      _1037 = (uint)((uint)((((int)((uint)((uint)((uint)(_1029)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1029)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_1029)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1021));
      _1045 = (uint)((uint)((((int)((uint)((uint)((uint)(_1037)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1037)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_1037)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1029));
      _1053 = (uint)((uint)((((int)((uint)((uint)((uint)(_1045)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1045)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_1045)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1037));
      _1061 = (uint)((uint)((((int)((uint)((uint)((uint)(_1053)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1053)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_1053)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1045));
      _1069 = (uint)((uint)((((int)((uint)((uint)((uint)(_1061)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1061)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_1061)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1053));
      _1077 = (uint)((uint)((((int)((uint)((uint)((uint)(_1069)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1069)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_1069)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1061));
      if ((_1069 & 16777215) == 0) {
        _1090 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_1077)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1077)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_1077)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1069))));
      } else {
        _1090 = _1069;
      }
      _1097 = ((int)((uint)(floor(((float)((uint)((uint)(((int)((uint)((uint)(_1090)) * (uint)(48271))) & 16777215)))) * 9.536147e-07f)))) & 15;
      _1121 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((uint)((uint)((uint)((uint)(_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_1097)) * (uint)(2))))), 31u)])) << 1) + (uint)((uint)(_471))))) + 0.5f)) + -1.0f;
      _1124 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((uint)((uint)((uint)((uint)(_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_1097)) * (uint)(2))))), 31u)])) << 1) + (uint)((uint)((int)((int)((uint)((uint)(_288)) << 5)) | (int)(16)))))) + 0.5f));
      _1125 = max(1e-07f, _305);
      _1161 = mad((_invViewProjRelative[3].z), _1125, mad((_invViewProjRelative[3].y), _1124, (_1121 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
      _1165 = _101 * _101;
      _1168 = (_1165 * 0.01f) + 0.25f;
      _1176 = _diffViewPosAccurate.x + (_149 - ((mad((_invViewProjRelative[0].z), _488, mad((_invViewProjRelative[0].y), _487, (_484 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _524));
      _1177 = _diffViewPosAccurate.y + (_150 - ((mad((_invViewProjRelative[1].z), _488, mad((_invViewProjRelative[1].y), _487, (_484 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _524));
      _1178 = _diffViewPosAccurate.z + (_151 - ((mad((_invViewProjRelative[2].z), _488, mad((_invViewProjRelative[2].y), _487, (_484 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _524));
      _1185 = _diffViewPosAccurate.x + (_149 - ((mad((_invViewProjRelative[0].z), _701, mad((_invViewProjRelative[0].y), _700, (_697 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _737));
      _1186 = _diffViewPosAccurate.y + (_150 - ((mad((_invViewProjRelative[1].z), _701, mad((_invViewProjRelative[1].y), _700, (_697 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _737));
      _1187 = _diffViewPosAccurate.z + (_151 - ((mad((_invViewProjRelative[2].z), _701, mad((_invViewProjRelative[2].y), _700, (_697 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _737));
      _1194 = _diffViewPosAccurate.x + (_149 - ((mad((_invViewProjRelative[0].z), _913, mad((_invViewProjRelative[0].y), _912, (_909 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _949));
      _1195 = _diffViewPosAccurate.y + (_150 - ((mad((_invViewProjRelative[1].z), _913, mad((_invViewProjRelative[1].y), _912, (_909 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _949));
      _1196 = _diffViewPosAccurate.z + (_151 - ((mad((_invViewProjRelative[2].z), _913, mad((_invViewProjRelative[2].y), _912, (_909 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _949));
      _1203 = _diffViewPosAccurate.x + (_149 - ((mad((_invViewProjRelative[0].z), _1125, mad((_invViewProjRelative[0].y), _1124, (_1121 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _1161));
      _1204 = _diffViewPosAccurate.y + (_150 - ((mad((_invViewProjRelative[1].z), _1125, mad((_invViewProjRelative[1].y), _1124, (_1121 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _1161));
      _1205 = _diffViewPosAccurate.z + (_151 - ((mad((_invViewProjRelative[2].z), _1125, mad((_invViewProjRelative[2].y), _1124, (_1121 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _1161));
      _1213 = ((int)_287 < (int)0) || ((int)_287 >= (int)_245);
      _1214 = ((int)_286 < (int)0) || ((int)_286 >= (int)_246);
      _1219 = ((int)_285 < (int)0) || ((int)_285 >= (int)_245);
      _1232 = _101 * 0.05f;
      _1237 = max(0.0f, (select((_1214 || _1213), 0.0f, dot(float3(_1176, _1177, _1178), float3(_1176, _1177, _1178))) - _1232));
      _1238 = max(0.0f, (select((_1219 || _1214), 0.0f, dot(float3(_1185, _1186, _1187), float3(_1185, _1186, _1187))) - _1232));
      _1239 = max(0.0f, (select(((((int)_274 < (int)0) || ((int)_274 >= (int)_246)) || _1219), 0.0f, dot(float3(_1194, _1195, _1196), float3(_1194, _1195, _1196))) - _1232));
      _1240 = max(0.0f, (select((_1213 || (((int)_288 < (int)0) || ((int)_288 >= (int)_246))), 0.0f, dot(float3(_1203, _1204, _1205), float3(_1203, _1204, _1205))) - _1232));
      _1249 = min(0.0f, (-0.0f - (abs(dot(float3(_85, _86, _87), float3(_1176, _1177, _1178))) - _1232)));
      _1250 = min(0.0f, (-0.0f - (abs(dot(float3(_85, _86, _87), float3(_1185, _1186, _1187))) - _1232)));
      _1251 = min(0.0f, (-0.0f - (abs(dot(float3(_85, _86, _87), float3(_1194, _1195, _1196))) - _1232)));
      _1252 = min(0.0f, (-0.0f - (abs(dot(float3(_85, _86, _87), float3(_1203, _1204, _1205))) - _1232)));
      _1253 = _1249 * _1249;
      _1254 = _1250 * _1250;
      _1255 = _1251 * _1251;
      _1256 = _1252 * _1252;
      _1277 = 1.442695f / (_1165 + 1.0f);
      _1306 = min((select((_1237 > _1168), 0.0f, exp2(((max(0.0f, (_1237 - _1253)) * -5.0f) - (_1253 * 50.0f)) * _1277)) * ((float)((bool)(_302 > 4e-07f)))), _291);
      _1307 = min((select((_1238 > _1168), 0.0f, exp2(((max(0.0f, (_1238 - _1254)) * -5.0f) - (_1254 * 50.0f)) * _1277)) * ((float)((bool)(_303 > 4e-07f)))), _292);
      _1308 = min((select((_1239 > _1168), 0.0f, exp2(((max(0.0f, (_1239 - _1255)) * -5.0f) - (_1255 * 50.0f)) * _1277)) * ((float)((bool)(_304 > 4e-07f)))), _290);
      _1309 = min((select((_1240 > _1168), 0.0f, exp2(((max(0.0f, (_1240 - _1256)) * -5.0f) - (_1256 * 50.0f)) * _1277)) * ((float)((bool)(_305 > 4e-07f)))), _289);
      _1312 = 1.0f / max(1e-06f, dot(float4(_1306, _1307, _1308, _1309), float4(1.0f, 1.0f, 1.0f, 1.0f)));
      _1323 = (((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524));
      _1331 = (uint)((uint)((((int)((uint)((uint)((uint)(_1323)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1323)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_1323)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
      _1339 = (uint)((uint)((((int)((uint)((uint)((uint)(_1331)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1331)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_1331)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1323));
      _1347 = (uint)((uint)((((int)((uint)((uint)((uint)(_1339)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1339)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_1339)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1331));
      _1355 = (uint)((uint)((((int)((uint)((uint)((uint)(_1347)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1347)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_1347)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1339));
      _1363 = (uint)((uint)((((int)((uint)((uint)((uint)(_1355)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1355)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_1355)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1347));
      _1371 = (uint)((uint)((((int)((uint)((uint)((uint)(_1363)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1363)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_1363)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1355));
      _1379 = (uint)((uint)((((int)((uint)((uint)((uint)(_1371)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1371)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_1371)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1363));
      _1387 = (uint)((uint)((((int)((uint)((uint)((uint)(_1379)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1379)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_1379)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1371));
      _1395 = (uint)((uint)((((int)((uint)((uint)((uint)(_1387)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1387)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_1387)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1379));
      _1403 = (uint)((uint)((((int)((uint)((uint)((uint)(_1395)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1395)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_1395)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1387));
      _1411 = (uint)((uint)((((int)((uint)((uint)((uint)(_1403)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1403)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_1403)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1395));
      _1419 = (uint)((uint)((((int)((uint)((uint)((uint)(_1411)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1411)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_1411)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1403));
      _1427 = (uint)((uint)((((int)((uint)((uint)((uint)(_1419)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1419)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_1419)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1411));
      _1435 = (uint)((uint)((((int)((uint)((uint)((uint)(_1427)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1427)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_1427)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1419));
      _1443 = (uint)((uint)((((int)((uint)((uint)((uint)(_1435)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1435)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_1435)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1427));
      if ((_1435 & 16777215) == 0) {
        _1456 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_1443)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1443)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_1443)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1435))));
      } else {
        _1456 = _1435;
      }
      _1464 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1456)) * (uint)(48271))) & 16777215)))) * 5.8516725e-09f) + -0.049087387f) * _terrainNormalParams.z;
      _1465 = sin(_1464);
      _1466 = cos(_1464);
      _1469 = (int)((int)((uint)((uint)(_287)) << 3)) | (int)(_15);
      _1470 = (uint)((uint)((uint)(_286)) << 3) + (uint)((uint)(_16));
      _1475 = (int)((int)((uint)((uint)(_285)) << 3)) | (int)(_15);
      _global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)((uint)(_15)) + (uint)((uint)((uint)(_16)) * (uint)(8))) * (uint)(4))))), 255u)] = ((__3__36__0__0__g_tiledRadianceCachePDFPrev.Load(int3(_1469, _1470, 0))).x);
      _global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)((uint)(_15)) + (uint)((uint)((uint)(_16)) * (uint)(8))) * (uint)(4))))), 255u)] = ((__3__36__0__0__g_tiledRadianceCachePDFPrev.Load(int3(_1475, _1470, 0))).x);
      _global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)((uint)(_15)) + (uint)((uint)((uint)(_16)) * (uint)(8))) * (uint)(4))))), 255u)] = ((__3__36__0__0__g_tiledRadianceCachePDFPrev.Load(int3(_1475, ((int)((uint)((uint)((uint)(_274)) << 3) + (uint)((uint)(_16)))), 0))).x);
      _global_1[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)((uint)(_15)) + (uint)((uint)((uint)(_16)) * (uint)(8))) * (uint)(4))))), 255u)] = ((__3__36__0__0__g_tiledRadianceCachePDFPrev.Load(int3(_1469, ((int)((uint)((uint)((uint)(_288)) << 3) + (uint)((uint)(_16)))), 0))).x);
      _1492 = ((((float)((uint)((uint)(_15)))) + 0.5f) * 0.25f) + -1.0f;
      _1493 = ((((float)((uint)((uint)(_16)))) + 0.5f) * 0.25f) + -1.0f;
      _1497 = (1.0f - abs(_1492)) - abs(_1493);
      _1499 = saturate(-0.0f - _1497);  // [sem: expr_sat]
      _1500 = -0.0f - _1499;
      _1505 = select((_1492 >= 0.0f), _1500, _1499) + _1492;
      _1506 = select((_1493 >= 0.0f), _1500, _1499) + _1493;
      _1508 = rsqrt(dot(float3(_1505, _1497, _1506), float3(_1505, _1497, _1506)));  // [sem: invLength]
      _1509 = _1505 * _1508;
      _1510 = _1508 * _1497;
      _1511 = _1506 * _1508;
      _1514 = (_1509 * _1466) + (_1511 * _1465);
      _1517 = (_1511 * _1466) - (_1509 * _1465);
      _1519 = rsqrt(dot(float3(_1514, _1510, _1517), float3(_1514, _1510, _1517)));  // [sem: invLength]
      _global_2[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)((uint)(_15)) + (uint)((uint)((uint)(_16)) * (uint)(8))) * (uint)(3))))), 191u)] = (_1514 * _1519);
      _global_2[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)((uint)(_15)) + (uint)((uint)((uint)(_16)) * (uint)(8))) * (uint)(3))))), 191u)] = (_1519 * _1510);
      _global_2[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)((uint)(_15)) + (uint)((uint)((uint)(_16)) * (uint)(8))) * (uint)(3))))), 191u)] = (_1517 * _1519);
      GroupMemoryBarrierWithGroupSync();
      _1526 = _1312 * (((_1307 + _1306) + _1308) + _1309);
      _1527 = (_1526 > 1.0f);
      _1528 = select(_1527, _291, (_1312 * _1306));
      _1529 = select(_1527, _292, (_1312 * _1307));
      _1530 = select(_1527, _290, (_1312 * _1308));
      _1531 = select(_1527, _289, (_1312 * _1309));
      if (!(_1526 >= 0.03125f)) {
        _2019 = _1323;
        _2023 = (uint)((uint)(_2019)) + (uint)((uint)((_56 * _89) + _88));
        _2031 = (uint)((uint)((((int)((uint)((uint)((uint)(_2023)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2023)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_2023)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _2039 = (uint)((uint)((((int)((uint)((uint)((uint)(_2031)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2031)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_2031)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2023));
        _2047 = (uint)((uint)((((int)((uint)((uint)((uint)(_2039)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2039)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_2039)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2031));
        _2055 = (uint)((uint)((((int)((uint)((uint)((uint)(_2047)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2047)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_2047)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2039));
        _2063 = (uint)((uint)((((int)((uint)((uint)((uint)(_2055)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2055)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_2055)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2047));
        _2071 = (uint)((uint)((((int)((uint)((uint)((uint)(_2063)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2063)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_2063)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2055));
        _2079 = (uint)((uint)((((int)((uint)((uint)((uint)(_2071)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2071)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_2071)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2063));
        _2087 = (uint)((uint)((((int)((uint)((uint)((uint)(_2079)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2079)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_2079)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2071));
        _2095 = (uint)((uint)((((int)((uint)((uint)((uint)(_2087)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2087)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_2087)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2079));
        _2103 = (uint)((uint)((((int)((uint)((uint)((uint)(_2095)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2095)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_2095)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2087));
        _2111 = (uint)((uint)((((int)((uint)((uint)((uint)(_2103)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2103)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_2103)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2095));
        _2119 = (uint)((uint)((((int)((uint)((uint)((uint)(_2111)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2111)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_2111)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2103));
        _2127 = (uint)((uint)((((int)((uint)((uint)((uint)(_2119)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2119)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_2119)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2111));
        _2135 = (uint)((uint)((((int)((uint)((uint)((uint)(_2127)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2127)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_2127)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2119));
        _2143 = (uint)((uint)((((int)((uint)((uint)((uint)(_2135)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2135)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_2135)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2127));
        if ((_2135 & 16777215) == 0) {
          _2156 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_2143)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2143)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_2143)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2135))));
        } else {
          _2156 = _2135;
        }
        _2161 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_2156)) * (uint)(48271))) & 16777215)))) * 3.8146914e-06f);
        _2168 = frac((((float)((uint)((uint)(_2161)))) * 0.015625f) + (((float)((uint)((uint)(_185 & 65535)))) * 1.5258789e-05f));
        _2171 = (float)((uint)((uint)(reversebits(_2161) ^ _186)));
        if (!(_162) || ((_162) && (!(_renderParams.w == 0.0f)))) {
          _2189 = _2168 * 6.2831855f;
          _2190 = sqrt(_2171 * 2.3283064e-10f);
          _2193 = sqrt(1.0f - (_2190 * _2190));
          _2200 = (_2190 * 2.0f);
          _2201 = (cos(_2189) * _2193);
          _2202 = (sin(_2189) * _2193);
          _2203 = _2190;
        } else {
          _2178 = _2168 * 6.2831855f;
          _2180 = 1.0f - (_2171 * 4.656613e-10f);
          _2183 = sqrt(1.0f - (_2180 * _2180));
          _2200 = 0.5f;
          _2201 = (cos(_2178) * _2183);
          _2202 = (sin(_2178) * _2183);
          _2203 = _2180;
        }
        _2205 = select((_87 >= 0.0f), 1.0f, -1.0f);
        _2208 = -0.0f - (1.0f / (_2205 + _87));
        _2209 = _86 * _2208;
        _2210 = _2209 * _85;
        _2211 = _2205 * _85;
        _2230 = mad(_2203, _85, mad(_2202, _2210, ((((_2211 * _85) * _2208) + 1.0f) * _2201)));
        _2231 = mad(_2203, _86, mad(_2202, (_2205 + (_2209 * _86)), ((_2201 * _2205) * _2210)));
        _2232 = mad(_2203, _87, mad(_2202, (-0.0f - _86), (-0.0f - (_2211 * _2201))));
        _2233 = _2200;
      } else {
        _1537 = (uint)((uint)(_1323)) + (uint)((uint)((_56 * _89) + _88));
        _1545 = (uint)((uint)((((int)((uint)((uint)((uint)(_1537)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1537)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_1537)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _1553 = (uint)((uint)((((int)((uint)((uint)((uint)(_1545)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1545)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_1545)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1537));
        _1561 = (uint)((uint)((((int)((uint)((uint)((uint)(_1553)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1553)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_1553)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1545));
        _1569 = (uint)((uint)((((int)((uint)((uint)((uint)(_1561)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1561)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_1561)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1553));
        _1577 = (uint)((uint)((((int)((uint)((uint)((uint)(_1569)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1569)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_1569)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1561));
        _1585 = (uint)((uint)((((int)((uint)((uint)((uint)(_1577)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1577)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_1577)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1569));
        _1593 = (uint)((uint)((((int)((uint)((uint)((uint)(_1585)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1585)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_1585)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1577));
        _1601 = (uint)((uint)((((int)((uint)((uint)((uint)(_1593)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1593)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_1593)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1585));
        _1609 = (uint)((uint)((((int)((uint)((uint)((uint)(_1601)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1601)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_1601)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1593));
        _1617 = (uint)((uint)((((int)((uint)((uint)((uint)(_1609)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1609)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_1609)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1601));
        _1625 = (uint)((uint)((((int)((uint)((uint)((uint)(_1617)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1617)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_1617)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1609));
        _1633 = (uint)((uint)((((int)((uint)((uint)((uint)(_1625)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1625)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_1625)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1617));
        _1641 = (uint)((uint)((((int)((uint)((uint)((uint)(_1633)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1633)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_1633)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1625));
        _1649 = (uint)((uint)((((int)((uint)((uint)((uint)(_1641)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1641)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_1641)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1633));
        _1657 = (uint)((uint)((((int)((uint)((uint)((uint)(_1649)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1649)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_1649)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1641));
        if ((_1649 & 16777215) == 0) {
          _1670 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_1657)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1657)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_1657)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1649))));
        } else {
          _1670 = _1649;
        }
        _1678 = 0.0f;
        _1679 = 0;
        while(true) {
          _1684 = _1678;
          _1685 = 0;
          while(true) {
            _1732 = (saturate(dot(float3(_85, _86, _87), float3((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)((uint)(_1685)) + (uint)((uint)((uint)(_1679)) * (uint)(8))) * (uint)(3))))), 191u)]), (_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)((uint)(_1685)) + (uint)((uint)((uint)(_1679)) * (uint)(8))) * (uint)(3))))), 191u)]), (_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)((uint)(_1685)) + (uint)((uint)((uint)(_1679)) * (uint)(8))) * (uint)(3))))), 191u)])))) * dot(float4((_global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)((uint)(_1685)) + (uint)((uint)((uint)(_1679)) * (uint)(8))) * (uint)(4))))), 255u)]), (_global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)((uint)(_1685)) + (uint)((uint)((uint)(_1679)) * (uint)(8))) * (uint)(4))))), 255u)]), (_global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)((uint)(_1685)) + (uint)((uint)((uint)(_1679)) * (uint)(8))) * (uint)(4))))), 255u)]), (_global_1[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)((uint)(_1685)) + (uint)((uint)((uint)(_1679)) * (uint)(8))) * (uint)(4))))), 255u)])), float4(_1528, _1529, _1530, _1531))) + _1684;
            _1733 = (int)(_1685) + (int)(1);
            if (!(_1733 == 8)) {
              _1684 = _1732;
              _1685 = _1733;
              continue;
            }
            while(true) {
              _1681 = (int)(_1679) + (int)(1);
              if (!(_1681 == 8)) {
                _1678 = _1732;
                _1679 = _1681;
                __loop_jump_target = 1677;
                break;
              }
              while(true) {
                _1736 = 1.0f;
                _1737 = 0;
                _1738 = 0.0f;
                _1739 = 0;
                _1740 = 0;
                while(true) {
                  _1743 = 0;
                  _1744 = _1738;
                  while(true) {
                    // [sem: expr_sat]
                    _1790 = saturate(dot(float3(_85, _86, _87), float3((_global_2[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)((uint)(_1743)) + (uint)((uint)((uint)(_1737)) * (uint)(8))) * (uint)(3))))), 191u)]), (_global_2[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)((uint)(_1743)) + (uint)((uint)((uint)(_1737)) * (uint)(8))) * (uint)(3))))), 191u)]), (_global_2[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)((uint)(_1743)) + (uint)((uint)((uint)(_1737)) * (uint)(8))) * (uint)(3))))), 191u)])))) * dot(float4((_global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)((uint)(_1743)) + (uint)((uint)((uint)(_1737)) * (uint)(8))) * (uint)(4))))), 255u)]), (_global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)((uint)(_1743)) + (uint)((uint)((uint)(_1737)) * (uint)(8))) * (uint)(4))))), 255u)]), (_global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)((uint)(_1743)) + (uint)((uint)((uint)(_1737)) * (uint)(8))) * (uint)(4))))), 255u)]), (_global_1[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)((uint)(_1743)) + (uint)((uint)((uint)(_1737)) * (uint)(8))) * (uint)(4))))), 255u)])), float4(_1528, _1529, _1530, _1531));
                    _1791 = _1790 + _1744;
                    if (((((float)((uint)((uint)(((int)((uint)((uint)(_1670)) * (uint)(48271))) & 16777215)))) * 5.9604645e-08f) * _1732) < _1791) {
                      _1801 = false;
                      _1802 = _1743;
                      _1803 = _1737;
                      _1804 = ((_1790 * 32.0f) / _1732);
                    } else {
                      _1794 = (int)(_1743) + (int)(1);
                      if ((uint)_1794 < (uint)8) {
                        _1743 = _1794;
                        _1744 = _1791;
                        continue;
                      } else {
                        _1801 = true;
                        _1802 = _1740;
                        _1803 = _1739;
                        _1804 = _1736;
                      }
                    }
                    _1805 = (int)(_1737) + (int)(1);
                    if (((uint)_1805 < (uint)8) && _1801) {
                      _1736 = _1804;
                      _1737 = _1805;
                      _1738 = _1791;
                      _1739 = _1803;
                      _1740 = _1802;
                      __loop_jump_target = 1735;
                      break;
                    }
                    while(true) {
                      if (_1801) {
                        _2019 = _1323;
                        _2023 = (uint)((uint)(_2019)) + (uint)((uint)((_56 * _89) + _88));
                        _2031 = (uint)((uint)((((int)((uint)((uint)((uint)(_2023)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2023)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_2023)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
                        _2039 = (uint)((uint)((((int)((uint)((uint)((uint)(_2031)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2031)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_2031)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2023));
                        _2047 = (uint)((uint)((((int)((uint)((uint)((uint)(_2039)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2039)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_2039)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2031));
                        _2055 = (uint)((uint)((((int)((uint)((uint)((uint)(_2047)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2047)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_2047)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2039));
                        _2063 = (uint)((uint)((((int)((uint)((uint)((uint)(_2055)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2055)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_2055)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2047));
                        _2071 = (uint)((uint)((((int)((uint)((uint)((uint)(_2063)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2063)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_2063)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2055));
                        _2079 = (uint)((uint)((((int)((uint)((uint)((uint)(_2071)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2071)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_2071)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2063));
                        _2087 = (uint)((uint)((((int)((uint)((uint)((uint)(_2079)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2079)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_2079)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2071));
                        _2095 = (uint)((uint)((((int)((uint)((uint)((uint)(_2087)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2087)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_2087)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2079));
                        _2103 = (uint)((uint)((((int)((uint)((uint)((uint)(_2095)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2095)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_2095)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2087));
                        _2111 = (uint)((uint)((((int)((uint)((uint)((uint)(_2103)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2103)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_2103)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2095));
                        _2119 = (uint)((uint)((((int)((uint)((uint)((uint)(_2111)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2111)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_2111)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2103));
                        _2127 = (uint)((uint)((((int)((uint)((uint)((uint)(_2119)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2119)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_2119)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2111));
                        _2135 = (uint)((uint)((((int)((uint)((uint)((uint)(_2127)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2127)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_2127)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2119));
                        _2143 = (uint)((uint)((((int)((uint)((uint)((uint)(_2135)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2135)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_2135)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2127));
                        if ((_2135 & 16777215) == 0) {
                          _2156 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_2143)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2143)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_2143)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2135))));
                        } else {
                          _2156 = _2135;
                        }
                        _2161 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_2156)) * (uint)(48271))) & 16777215)))) * 3.8146914e-06f);
                        _2168 = frac((((float)((uint)((uint)(_2161)))) * 0.015625f) + (((float)((uint)((uint)(_185 & 65535)))) * 1.5258789e-05f));
                        _2171 = (float)((uint)((uint)(reversebits(_2161) ^ _186)));
                        if (!(_162) || ((_162) && (!(_renderParams.w == 0.0f)))) {
                          _2189 = _2168 * 6.2831855f;
                          _2190 = sqrt(_2171 * 2.3283064e-10f);
                          _2193 = sqrt(1.0f - (_2190 * _2190));
                          _2200 = (_2190 * 2.0f);
                          _2201 = (cos(_2189) * _2193);
                          _2202 = (sin(_2189) * _2193);
                          _2203 = _2190;
                        } else {
                          _2178 = _2168 * 6.2831855f;
                          _2180 = 1.0f - (_2171 * 4.656613e-10f);
                          _2183 = sqrt(1.0f - (_2180 * _2180));
                          _2200 = 0.5f;
                          _2201 = (cos(_2178) * _2183);
                          _2202 = (sin(_2178) * _2183);
                          _2203 = _2180;
                        }
                        _2205 = select((_87 >= 0.0f), 1.0f, -1.0f);
                        _2208 = -0.0f - (1.0f / (_2205 + _87));
                        _2209 = _86 * _2208;
                        _2210 = _2209 * _85;
                        _2211 = _2205 * _85;
                        _2230 = mad(_2203, _85, mad(_2202, _2210, ((((_2211 * _85) * _2208) + 1.0f) * _2201)));
                        _2231 = mad(_2203, _86, mad(_2202, (_2205 + (_2209 * _86)), ((_2201 * _2205) * _2210)));
                        _2232 = mad(_2203, _87, mad(_2202, (-0.0f - _86), (-0.0f - (_2211 * _2201))));
                        _2233 = _2200;
                      } else {
                        _1813 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_1670)) * (uint)(-1964877855))) & 16777215)))) * 3.8141013e-06f);
                        _1834 = (uint)((uint)(_frameNumber.x)) + (uint)(-1);
                        _1837 = ((frac((((float)((uint)((uint)(_1813)))) * 0.015625f) + (((float)((uint)((uint)(_185 & 65535)))) * 1.5258789e-05f)) + ((float)((uint)((uint)(_1802))))) * 0.25f) + -1.0f;
                        _1838 = (((((((float)((uint)((uint)(_1803)))) + 0.5f) * 0.125f) + -0.0625f) + (((float)((uint)((uint)(reversebits(_1813) ^ _186)))) * 2.910383e-11f)) * 2.0f) + -1.0f;
                        _1842 = (1.0f - abs(_1837)) - abs(_1838);
                        _1844 = saturate(-0.0f - _1842);  // [sem: expr_sat]
                        _1845 = -0.0f - _1844;
                        _1850 = select((_1837 >= 0.0f), _1845, _1844) + _1837;
                        _1851 = select((_1838 >= 0.0f), _1845, _1844) + _1838;
                        _1858 = (((int)((uint)((uint)((uint)(_1834)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531528)))) ^ ((int)((uint)((uint)(_1834)) >> 5) + (int)(-939442524));
                        _1866 = (uint)((uint)((((int)((uint)((uint)((uint)(_1858)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1858)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_1858)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1834));
                        _1874 = (uint)((uint)((((int)((uint)((uint)((uint)(_1866)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1866)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_1866)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1858));
                        _1882 = (uint)((uint)((((int)((uint)((uint)((uint)(_1874)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1874)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_1874)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1866));
                        _1890 = (uint)((uint)((((int)((uint)((uint)((uint)(_1882)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1882)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_1882)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1874));
                        _1898 = (uint)((uint)((((int)((uint)((uint)((uint)(_1890)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1890)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_1890)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1882));
                        _1906 = (uint)((uint)((((int)((uint)((uint)((uint)(_1898)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1898)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_1898)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1890));
                        _1914 = (uint)((uint)((((int)((uint)((uint)((uint)(_1906)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1906)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_1906)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1898));
                        _1922 = (uint)((uint)((((int)((uint)((uint)((uint)(_1914)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1914)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_1914)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1906));
                        _1930 = (uint)((uint)((((int)((uint)((uint)((uint)(_1922)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1922)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_1922)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1914));
                        _1938 = (uint)((uint)((((int)((uint)((uint)((uint)(_1930)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1930)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_1930)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1922));
                        _1946 = (uint)((uint)((((int)((uint)((uint)((uint)(_1938)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1938)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_1938)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1930));
                        _1954 = (uint)((uint)((((int)((uint)((uint)((uint)(_1946)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1946)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_1946)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1938));
                        _1962 = (uint)((uint)((((int)((uint)((uint)((uint)(_1954)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1954)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_1954)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1946));
                        _1970 = (uint)((uint)((((int)((uint)((uint)((uint)(_1962)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1962)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_1962)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1954));
                        _1978 = (uint)((uint)((((int)((uint)((uint)((uint)(_1970)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1970)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_1970)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1962));
                        if ((_1970 & 16777215) == 0) {
                          _1991 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_1978)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1978)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_1978)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1970))));
                        } else {
                          _1991 = _1970;
                        }
                        _1999 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1991)) * (uint)(48271))) & 16777215)))) * 5.8516725e-09f) + -0.049087387f) * _terrainNormalParams.z;
                        _2000 = sin(_1999);
                        _2001 = cos(_1999);
                        _2003 = rsqrt(dot(float3(_1850, _1842, _1851), float3(_1850, _1842, _1851)));  // [sem: invLength]
                        _2004 = _2003 * _1850;
                        _2005 = _2003 * _1842;
                        _2006 = _2003 * _1851;
                        _2009 = (_2004 * _2001) + (_2006 * _2000);
                        _2012 = (_2006 * _2001) - (_2004 * _2000);
                        _2014 = rsqrt(dot(float3(_2009, _2005, _2012), float3(_2009, _2005, _2012)));  // [sem: invLength]
                        if (_162) {
                          _2019 = _1323;
                          _2023 = (uint)((uint)(_2019)) + (uint)((uint)((_56 * _89) + _88));
                          _2031 = (uint)((uint)((((int)((uint)((uint)((uint)(_2023)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2023)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_2023)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
                          _2039 = (uint)((uint)((((int)((uint)((uint)((uint)(_2031)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2031)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_2031)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2023));
                          _2047 = (uint)((uint)((((int)((uint)((uint)((uint)(_2039)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2039)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_2039)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2031));
                          _2055 = (uint)((uint)((((int)((uint)((uint)((uint)(_2047)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2047)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_2047)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2039));
                          _2063 = (uint)((uint)((((int)((uint)((uint)((uint)(_2055)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2055)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_2055)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2047));
                          _2071 = (uint)((uint)((((int)((uint)((uint)((uint)(_2063)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2063)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_2063)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2055));
                          _2079 = (uint)((uint)((((int)((uint)((uint)((uint)(_2071)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2071)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_2071)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2063));
                          _2087 = (uint)((uint)((((int)((uint)((uint)((uint)(_2079)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2079)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_2079)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2071));
                          _2095 = (uint)((uint)((((int)((uint)((uint)((uint)(_2087)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2087)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_2087)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2079));
                          _2103 = (uint)((uint)((((int)((uint)((uint)((uint)(_2095)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2095)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_2095)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2087));
                          _2111 = (uint)((uint)((((int)((uint)((uint)((uint)(_2103)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2103)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_2103)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2095));
                          _2119 = (uint)((uint)((((int)((uint)((uint)((uint)(_2111)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2111)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_2111)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2103));
                          _2127 = (uint)((uint)((((int)((uint)((uint)((uint)(_2119)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2119)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_2119)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2111));
                          _2135 = (uint)((uint)((((int)((uint)((uint)((uint)(_2127)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2127)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_2127)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2119));
                          _2143 = (uint)((uint)((((int)((uint)((uint)((uint)(_2135)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2135)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_2135)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2127));
                          if ((_2135 & 16777215) == 0) {
                            _2156 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_2143)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2143)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_2143)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2135))));
                          } else {
                            _2156 = _2135;
                          }
                          _2161 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_2156)) * (uint)(48271))) & 16777215)))) * 3.8146914e-06f);
                          _2168 = frac((((float)((uint)((uint)(_2161)))) * 0.015625f) + (((float)((uint)((uint)(_185 & 65535)))) * 1.5258789e-05f));
                          _2171 = (float)((uint)((uint)(reversebits(_2161) ^ _186)));
                          if (_renderParams.w == 0.0f) {
                            _2178 = _2168 * 6.2831855f;
                            _2180 = 1.0f - (_2171 * 4.656613e-10f);
                            _2183 = sqrt(1.0f - (_2180 * _2180));
                            _2200 = 0.5f;
                            _2201 = (cos(_2178) * _2183);
                            _2202 = (sin(_2178) * _2183);
                            _2203 = _2180;
                          } else {
                            _2189 = _2168 * 6.2831855f;
                            _2190 = sqrt(_2171 * 2.3283064e-10f);
                            _2193 = sqrt(1.0f - (_2190 * _2190));
                            _2200 = (_2190 * 2.0f);
                            _2201 = (cos(_2189) * _2193);
                            _2202 = (sin(_2189) * _2193);
                            _2203 = _2190;
                          }
                          _2205 = select((_87 >= 0.0f), 1.0f, -1.0f);
                          _2208 = -0.0f - (1.0f / (_2205 + _87));
                          _2209 = _86 * _2208;
                          _2210 = _2209 * _85;
                          _2211 = _2205 * _85;
                          _2230 = mad(_2203, _85, mad(_2202, _2210, ((((_2211 * _85) * _2208) + 1.0f) * _2201)));
                          _2231 = mad(_2203, _86, mad(_2202, (_2205 + (_2209 * _86)), ((_2201 * _2205) * _2210)));
                          _2232 = mad(_2203, _87, mad(_2202, (-0.0f - _86), (-0.0f - (_2211 * _2201))));
                          _2233 = _2200;
                        } else {
                          _2230 = (_2009 * _2014);
                          _2231 = (_2014 * _2005);
                          _2232 = (_2012 * _2014);
                          _2233 = _1804;
                        }
                      }
                      break;
                    }
                    break;
                  }
                  if (__loop_jump_target == 1735) {
                    __loop_jump_target = -1;
                    continue;
                  }
                  if (__loop_jump_target != -1) {
                    break;
                  }
                  break;
                }
                break;
              }
              break;
            }
            if (__loop_jump_target != -1) {
              break;
            }
            break;
          }
          if (__loop_jump_target == 1677) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
          break;
        }
      }
    } else {
      _2019 = ((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)));
      _2023 = (uint)((uint)(_2019)) + (uint)((uint)((_56 * _89) + _88));
      _2031 = (uint)((uint)((((int)((uint)((uint)((uint)(_2023)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2023)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_2023)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
      _2039 = (uint)((uint)((((int)((uint)((uint)((uint)(_2031)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2031)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_2031)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2023));
      _2047 = (uint)((uint)((((int)((uint)((uint)((uint)(_2039)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2039)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_2039)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2031));
      _2055 = (uint)((uint)((((int)((uint)((uint)((uint)(_2047)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2047)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_2047)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2039));
      _2063 = (uint)((uint)((((int)((uint)((uint)((uint)(_2055)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2055)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_2055)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2047));
      _2071 = (uint)((uint)((((int)((uint)((uint)((uint)(_2063)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2063)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_2063)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2055));
      _2079 = (uint)((uint)((((int)((uint)((uint)((uint)(_2071)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2071)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_2071)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2063));
      _2087 = (uint)((uint)((((int)((uint)((uint)((uint)(_2079)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2079)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_2079)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2071));
      _2095 = (uint)((uint)((((int)((uint)((uint)((uint)(_2087)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2087)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_2087)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2079));
      _2103 = (uint)((uint)((((int)((uint)((uint)((uint)(_2095)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2095)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_2095)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2087));
      _2111 = (uint)((uint)((((int)((uint)((uint)((uint)(_2103)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2103)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_2103)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2095));
      _2119 = (uint)((uint)((((int)((uint)((uint)((uint)(_2111)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2111)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_2111)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2103));
      _2127 = (uint)((uint)((((int)((uint)((uint)((uint)(_2119)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2119)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_2119)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2111));
      _2135 = (uint)((uint)((((int)((uint)((uint)((uint)(_2127)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2127)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_2127)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2119));
      _2143 = (uint)((uint)((((int)((uint)((uint)((uint)(_2135)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2135)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_2135)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2127));
      if ((_2135 & 16777215) == 0) {
        _2156 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_2143)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2143)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_2143)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2135))));
      } else {
        _2156 = _2135;
      }
      _2161 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_2156)) * (uint)(48271))) & 16777215)))) * 3.8146914e-06f);
      _2168 = frac((((float)((uint)((uint)(_2161)))) * 0.015625f) + (((float)((uint)((uint)(_185 & 65535)))) * 1.5258789e-05f));
      _2171 = (float)((uint)((uint)(reversebits(_2161) ^ _186)));
      if (!(_162) || ((_162) && (!(_renderParams.w == 0.0f)))) {
        _2189 = _2168 * 6.2831855f;
        _2190 = sqrt(_2171 * 2.3283064e-10f);
        _2193 = sqrt(1.0f - (_2190 * _2190));
        _2200 = (_2190 * 2.0f);
        _2201 = (cos(_2189) * _2193);
        _2202 = (sin(_2189) * _2193);
        _2203 = _2190;
      } else {
        _2178 = _2168 * 6.2831855f;
        _2180 = 1.0f - (_2171 * 4.656613e-10f);
        _2183 = sqrt(1.0f - (_2180 * _2180));
        _2200 = 0.5f;
        _2201 = (cos(_2178) * _2183);
        _2202 = (sin(_2178) * _2183);
        _2203 = _2180;
      }
      _2205 = select((_87 >= 0.0f), 1.0f, -1.0f);
      _2208 = -0.0f - (1.0f / (_2205 + _87));
      _2209 = _86 * _2208;
      _2210 = _2209 * _85;
      _2211 = _2205 * _85;
      _2230 = mad(_2203, _85, mad(_2202, _2210, ((((_2211 * _85) * _2208) + 1.0f) * _2201)));
      _2231 = mad(_2203, _86, mad(_2202, (_2205 + (_2209 * _86)), ((_2201 * _2205) * _2210)));
      _2232 = mad(_2203, _87, mad(_2202, (-0.0f - _86), (-0.0f - (_2211 * _2201))));
      _2233 = _2200;
    }
    __3__38__0__1__g_raytracingHitResultUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(_2230, _2231, _2232, 0.0f);
    __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = (1.0f / max(0.01f, _2233));
  } else {
    __3__38__0__1__g_raytracingHitResultUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(-1.0f, -1.0f, -1.0f, -1.0f);
    __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = 0.0f;
  }
}
