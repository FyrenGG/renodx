Texture2D<uint2> __3__36__0__0__g_normalDepthHalf : register(t51, space36);

Texture2D<float4> __3__36__0__0__g_tiledRadianceCachePlanePrev : register(t68, space36);

Texture2D<float> __3__36__0__0__g_tiledRadianceCachePDFPrev : register(t69, space36);

RWTexture2D<float4> __3__38__0__1__g_raytracingHitResultUAV : register(u39, space38);

RWTexture2D<float> __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV : register(u44, space38);

cbuffer __1__3__0__0__PipelineProperty : register(b0, space3) {
  float2 g_screenSpaceScale : packoffset(c000.x);
  float2 __padding : packoffset(c000.z);
};

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
  int _18;
  uint _19;
  uint _31;
  float _44;
  uint2 _46;
  float _51;
  int _53;
  float _58;
  float _64;
  float _70;
  float _72;
  float _73;
  float _74;
  float _75;
  float _76;
  float _77;
  float _80;
  float _83;
  float _84;
  float _87;
  int _147;
  int _430;
  int _618;
  int _804;
  int _990;
  int _1399;
  int _1622;
  float _1667;
  float _1668;
  float _1669;
  float _1670;
  int _1707;
  int _1709;
  float _1710;
  int _1712;
  float _1713;
  float _1756;
  int _1757;
  float _1759;
  int _1760;
  int _1936;
  float _1981;
  float _1982;
  float _1983;
  float _1984;
  int _2195;
  int _2346;
  float _2379;
  float _2380;
  float _2381;
  int _2557;
  float _2602;
  float _2603;
  float _2604;
  float _2605;
  float _2632;
  float _2633;
  float _2634;
  float _2635;
  float _93;
  float _95;
  float _107;
  float _116;
  float _125;
  float _134;
  float _150;
  float _156;
  float _162;
  float _167;
  uint _169;
  uint _171;
  float _183;
  float _194;
  float _205;
  float _207;
  float _209;
  uint _221;
  uint _224;
  int _227;
  float _238;
  float _249;
  int _251;
  int _253;
  float _255;
  float _257;
  float _258;
  float _259;
  int _262;
  int _265;
  int _266;
  int _267;
  float _268;
  float _269;
  float _270;
  float _271;
  float _275;
  float _278;
  float _281;
  float _284;
  uint _285;
  int _292;
  uint _293;
  uint _297;
  uint _305;
  uint _313;
  uint _321;
  uint _329;
  uint _337;
  uint _345;
  uint _353;
  uint _361;
  uint _369;
  uint _377;
  uint _385;
  uint _393;
  uint _401;
  uint _409;
  uint _417;
  int _438;
  int _440;
  int _443;
  float _452;
  float _465;
  float _466;
  float _478;
  uint _479;
  uint _485;
  uint _493;
  uint _501;
  uint _509;
  uint _517;
  uint _525;
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
  int _626;
  int _630;
  float _639;
  float _652;
  float _653;
  float _665;
  uint _671;
  uint _679;
  uint _687;
  uint _695;
  uint _703;
  uint _711;
  uint _719;
  uint _727;
  uint _735;
  uint _743;
  uint _751;
  uint _759;
  uint _767;
  uint _775;
  uint _783;
  uint _791;
  int _814;
  float _823;
  float _838;
  float _839;
  float _851;
  uint _857;
  uint _865;
  uint _873;
  uint _881;
  uint _889;
  uint _897;
  uint _905;
  uint _913;
  uint _921;
  uint _929;
  uint _937;
  uint _945;
  uint _953;
  uint _961;
  uint _969;
  uint _977;
  int _1000;
  float _1009;
  float _1024;
  float _1025;
  float _1037;
  float _1038;
  float _1040;
  float _1053;
  float _1065;
  float _1077;
  float _1084;
  float _1091;
  float _1098;
  float _1105;
  float _1112;
  float _1119;
  float _1126;
  float _1133;
  float _1140;
  bool _1143;
  bool _1146;
  bool _1149;
  float _1150;
  float _1155;
  float _1160;
  float _1168;
  float _1176;
  float _1181;
  float _1186;
  float _1191;
  float _1196;
  float _1197;
  float _1198;
  float _1199;
  float _1200;
  float _1202;
  float _1215;
  float _1228;
  float _1241;
  float _1254;
  float _1257;
  int _1266;
  uint _1274;
  uint _1282;
  uint _1290;
  uint _1298;
  uint _1306;
  uint _1314;
  uint _1322;
  uint _1330;
  uint _1338;
  uint _1346;
  uint _1354;
  uint _1362;
  uint _1370;
  uint _1378;
  uint _1386;
  float _1407;
  float _1408;
  float _1409;
  int _1411;
  uint _1413;
  int _1415;
  float _1435;
  float _1439;
  float _1443;
  float _1445;
  float _1446;
  float _1449;
  float _1452;
  float _1454;
  float _1455;
  float _1456;
  float _1457;
  float _1460;
  float _1463;
  float _1465;
  float _1472;
  bool _1473;
  float _1475;
  float _1477;
  float _1479;
  float _1481;
  uint _1486;
  int _1493;
  uint _1496;
  uint _1504;
  uint _1512;
  uint _1520;
  uint _1528;
  uint _1536;
  uint _1544;
  uint _1552;
  uint _1560;
  uint _1568;
  uint _1576;
  uint _1584;
  uint _1592;
  uint _1600;
  uint _1608;
  bool _1610;
  uint _1627;
  float _1634;
  float _1637;
  float _1644;
  float _1646;
  float _1649;
  float _1656;
  float _1658;
  float _1661;
  float _1672;
  float _1675;
  float _1676;
  float _1677;
  float _1678;
  int _1715;
  int _1716;
  uint _1730;
  float _1748;
  int _1749;
  int _1752;
  int _1762;
  int _1763;
  uint _1777;
  float _1794;
  float _1795;
  int _1803;
  int _1806;
  uint _1811;
  uint _1819;
  uint _1827;
  uint _1835;
  uint _1843;
  uint _1851;
  uint _1859;
  uint _1867;
  uint _1875;
  uint _1883;
  uint _1891;
  uint _1899;
  uint _1907;
  uint _1915;
  uint _1923;
  uint _1941;
  float _1948;
  float _1951;
  float _1958;
  float _1960;
  float _1963;
  float _1970;
  float _1972;
  float _1975;
  float _1986;
  float _1989;
  float _1990;
  float _1991;
  float _1992;
  uint _2017;
  uint _2020;
  float _2025;
  float _2031;
  float _2042;
  float _2046;
  float _2048;
  float _2049;
  float _2052;
  float _2055;
  int _2062;
  uint _2070;
  uint _2078;
  uint _2086;
  uint _2094;
  uint _2102;
  uint _2110;
  uint _2118;
  uint _2126;
  uint _2134;
  uint _2142;
  uint _2150;
  uint _2158;
  uint _2166;
  uint _2174;
  uint _2182;
  float _2203;
  float _2204;
  float _2205;
  float _2207;
  float _2208;
  float _2209;
  float _2210;
  float _2213;
  float _2216;
  float _2218;
  uint _2221;
  uint _2229;
  uint _2237;
  uint _2245;
  uint _2253;
  uint _2261;
  uint _2269;
  uint _2277;
  uint _2285;
  uint _2293;
  uint _2301;
  uint _2309;
  uint _2317;
  uint _2325;
  uint _2333;
  uint _2351;
  float _2358;
  float _2362;
  float _2367;
  float _2373;
  float _2382;
  float _2383;
  float _2385;
  float _2388;
  float _2389;
  float _2390;
  float _2391;
  uint _2424;
  uint _2432;
  uint _2440;
  uint _2448;
  uint _2456;
  uint _2464;
  uint _2472;
  uint _2480;
  uint _2488;
  uint _2496;
  uint _2504;
  uint _2512;
  uint _2520;
  uint _2528;
  uint _2536;
  uint _2544;
  uint _2562;
  float _2569;
  float _2572;
  float _2579;
  float _2581;
  float _2584;
  float _2591;
  float _2593;
  float _2596;
  float _2607;
  float _2610;
  float _2611;
  float _2612;
  float _2613;
  int __loop_jump_target = -1;
  _15 = (int)(SV_GroupIndex) & 7;
  _16 = (uint)(SV_GroupIndex) >> 3;
  _18 = (int)((int)((uint)((uint)(_16)) << 3)) | (int)(_15);
  _19 = (uint)((uint)(_18)) << 2;
  _global_1[((int)min((uint)(_19), (uint)(255)))] = 0.0f;
  _global_1[((int)min((uint)(((int)(_19) | (int)(1))), (uint)(255)))] = 0.0f;
  _global_1[((int)min((uint)(((int)(_19) | (int)(2))), (uint)(255)))] = 0.0f;
  _global_1[((int)min((uint)(((int)(_19) | (int)(3))), (uint)(255)))] = 0.0f;
  _31 = (uint)((uint)(_18)) * (uint)(3);
  _global_2[((int)min((uint)(_31), (uint)(191)))] = 0.0f;
  _global_2[((int)min((uint)(((int)((uint)((uint)(_31)) + (uint)(1)))), (uint)(191)))] = 0.0f;
  _global_2[((int)min((uint)(((int)((uint)((uint)(_31)) + (uint)(2)))), (uint)(191)))] = 0.0f;
  GroupMemoryBarrierWithGroupSync();
  _44 = _bufferSizeAndInvSize.x * g_screenSpaceScale.x;
  _46 = __3__36__0__0__g_normalDepthHalf.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));  // [sem: _3__36__0__0__g_normalDepthHalf_load]
  _51 = ((float)((uint)((uint)(_46.y & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_normalDepthHalf_load_derived]
  _53 = ((uint)((uint)(_46.y)) >> 24) & 127;  // [sem: _3__36__0__0__g_normalDepthHalf_load_derived]
  _58 = min(1.0f, ((((float)((uint)((uint)(_46.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_load_derived]
  _64 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_46.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_load_derived]
  _70 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_46.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_load_derived]
  _72 = rsqrt(dot(float3(_58, _64, _70), float3(_58, _64, _70)));  // [sem: invLength]
  _73 = _72 * _58;
  _74 = _72 * _64;
  _75 = _72 * _70;
  _76 = (float)((uint)(SV_DispatchThreadID.x));
  _77 = (float)((uint)(SV_DispatchThreadID.y));
  _80 = _bufferSizeAndInvSize.z * (_76 + 0.5f);
  _83 = _bufferSizeAndInvSize.w * (_77 + 0.5f);
  _84 = max(1e-07f, _51);
  _87 = _nearFarProj.x / _84;
  if ((_51 < 1e-07f) || (_51 == 1.0f)) {
    __3__38__0__1__g_raytracingHitResultUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(-1.0f, -1.0f, -1.0f, -1.0f);
    __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = 0.0f;
  } else {
    _93 = (_80 * 4.0f) + -1.0f;
    _95 = 1.0f - (_83 * 4.0f);
    _107 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _84, mad((_invViewProjRelative[3].y), _95, ((_invViewProjRelative[3].x) * _93)));
    _116 = (mad((_invViewProjRelative[0].z), _84, mad((_invViewProjRelative[0].y), _95, ((_invViewProjRelative[0].x) * _93))) + (_invViewProjRelative[0].w)) / _107;
    _125 = (mad((_invViewProjRelative[1].z), _84, mad((_invViewProjRelative[1].y), _95, ((_invViewProjRelative[1].x) * _93))) + (_invViewProjRelative[1].w)) / _107;
    _134 = (mad((_invViewProjRelative[2].z), _84, mad((_invViewProjRelative[2].y), _95, ((_invViewProjRelative[2].x) * _93))) + (_invViewProjRelative[2].w)) / _107;
    if ((uint)_53 > (uint)11) {
      _147 = ((int)(uint)((int)(((uint)_53 < (uint)21) || (_53 == 107))));
    } else {
      if (!(_53 == 6)) {
        _147 = ((int)(uint)((int)(_53 == 7)));
      } else {
        _147 = 1;
      }
    }
    _150 = (float)((uint)((uint)(_frameNumber.x)));
    _156 = (frac(((_150 * 92.0f) + _76) * 0.0078125f) * 128.0f) + -64.34062f;
    _162 = (frac(((_150 * 71.0f) + _77) * 0.0078125f) * 128.0f) + -72.46562f;
    _167 = frac(dot(float3((_156 * _156), (_162 * _162), (_162 * _156)), float3(20.390625f, 60.703125f, 2.4281209f)));
    _169 = (uint)(_167 * 5.1540816e+07f);
    _171 = (uint)(_167 * 2.8747837e+08f);
    _183 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), _51, mad((_projToPrevProj[3].y), _95, ((_projToPrevProj[3].x) * _93)));
    _194 = (((mad((_projToPrevProj[0].z), _51, mad((_projToPrevProj[0].y), _95, ((_projToPrevProj[0].x) * _93))) + (_projToPrevProj[0].w)) / _183) - _93) * 0.5f;
    _205 = (((mad((_projToPrevProj[1].z), _51, mad((_projToPrevProj[1].y), _95, ((_projToPrevProj[1].x) * _93))) + (_projToPrevProj[1].w)) / _183) - _95) * 0.5f;
    _207 = _194 + (_80 * 2.0f);
    _209 = (_83 * 2.0f) - _205;
    if ((_209 <= 1.0f) && (((_207 >= 0.0f) && (_207 <= 1.0f)) && (_209 >= 0.0f))) {
      _221 = (uint)((uint)((int)(_tiledRadianceCacheParams.z))) + (uint)(-1);
      _224 = (uint)((uint)((int)(_tiledRadianceCacheParams.w))) + (uint)(-1);
      _227 = ((int)((uint)(_tiledRadianceCacheParams.y))) & 31;
      _238 = ((((((float)((uint)((uint)((int)((int)((uint)((uint)(min((int)(max((int)(((uint)(SV_DispatchThreadID.x) >> _227)), (int)(0))), (int)(_221)))) << 5)) | (int)(16))))) + 0.5f) * _bufferSizeAndInvSize.z) + _194) * _tiledRadianceCacheParams.z) + -0.5f;
      _249 = ((((((float)((uint)((uint)((int)((int)((uint)((uint)(min((int)(max((int)(((uint)(SV_DispatchThreadID.y) >> _227)), (int)(0))), (int)(_224)))) << 5)) | (int)(16))))) + 0.5f) * _bufferSizeAndInvSize.w) - _205) * _tiledRadianceCacheParams.w) + -0.5f;
      _251 = (int)(floor(_238));
      _253 = (int)(floor(_249));
      _255 = _238 - ((float)((int)(_251)));
      _257 = _249 - ((float)((int)(_253)));
      _258 = 1.0f - _255;
      _259 = 1.0f - _257;
      _262 = min((int)(max((int)(((int)((uint)((uint)(_251)) + (uint)(1)))), (int)(0))), (int)(_221));
      _265 = min((int)(max((int)(((int)((uint)((uint)(_253)) + (uint)(1)))), (int)(0))), (int)(_224));
      _266 = max((int)(0), (int)(_251));
      _267 = max((int)(0), (int)(_253));
      _268 = _259 * _258;
      _269 = _259 * _255;
      _270 = _257 * _258;
      _271 = _257 * _255;
      _275 = _nearFarProj.x / (((float4)(__3__36__0__0__g_tiledRadianceCachePlanePrev.Load(int3(_266, _265, 0)))).w);
      _278 = _nearFarProj.x / (((float4)(__3__36__0__0__g_tiledRadianceCachePlanePrev.Load(int3(_262, _265, 0)))).w);
      _281 = _nearFarProj.x / (((float4)(__3__36__0__0__g_tiledRadianceCachePlanePrev.Load(int3(_262, _253, 0)))).w);
      _284 = _nearFarProj.x / (((float4)(__3__36__0__0__g_tiledRadianceCachePlanePrev.Load(int3(_266, _267, 0)))).w);
      _285 = (uint)((uint)(_frameNumber.x)) + (uint)(-1);
      _292 = (((int)((uint)((uint)((uint)(_285)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531528)))) ^ ((int)((uint)((uint)(_285)) >> 5) + (int)(-939442524));
      _293 = (uint)((uint)(_266)) + (uint)((uint)(_292));
      _297 = (uint)((uint)(_293)) + (uint)((uint)((uint)(_265)) * (uint)((uint)((uint)((uint)(_bufferSizeAndInvSize.x)) >> 5)));
      _305 = (uint)((uint)((((int)((uint)((uint)((uint)(_297)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_297)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_297)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_285));
      _313 = (uint)((uint)((((int)((uint)((uint)((uint)(_305)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_305)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_305)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_297));
      _321 = (uint)((uint)((((int)((uint)((uint)((uint)(_313)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_313)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_313)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_305));
      _329 = (uint)((uint)((((int)((uint)((uint)((uint)(_321)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_321)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_321)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_313));
      _337 = (uint)((uint)((((int)((uint)((uint)((uint)(_329)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_329)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_329)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_321));
      _345 = (uint)((uint)((((int)((uint)((uint)((uint)(_337)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_337)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_337)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_329));
      _353 = (uint)((uint)((((int)((uint)((uint)((uint)(_345)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_345)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_345)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_337));
      _361 = (uint)((uint)((((int)((uint)((uint)((uint)(_353)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_353)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_353)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_345));
      _369 = (uint)((uint)((((int)((uint)((uint)((uint)(_361)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_361)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_361)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_353));
      _377 = (uint)((uint)((((int)((uint)((uint)((uint)(_369)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_369)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_369)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_361));
      _385 = (uint)((uint)((((int)((uint)((uint)((uint)(_377)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_377)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_377)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_369));
      _393 = (uint)((uint)((((int)((uint)((uint)((uint)(_385)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_385)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_385)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_377));
      _401 = (uint)((uint)((((int)((uint)((uint)((uint)(_393)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_393)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_393)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_385));
      _409 = (uint)((uint)((((int)((uint)((uint)((uint)(_401)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_401)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_401)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_393));
      _417 = (uint)((uint)((((int)((uint)((uint)((uint)(_409)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_409)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_409)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_401));
      if ((_409 & 16777215) == 0) {
        _430 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_417)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_417)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_417)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_409))));
      } else {
        _430 = _409;
      }
      _438 = (int)((int)((uint)((uint)(_266)) << 5)) | (int)(16);
      _440 = (int)((int)((uint)((uint)(_265)) << 5)) | (int)(16);
      _443 = ((int)((uint)((uint)(floor(((float)((uint)((uint)(((int)((uint)((uint)(_430)) * (uint)(48271))) & 16777215)))) * 9.536147e-07f))) << 1)) & 30;
      _452 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((uint)((uint)((uint)((uint)(_global_0[((int)min((uint)(_443), (uint)(31)))])) << 1) + (uint)((uint)(_438))))) + 0.5f)) + -1.0f;
      _465 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((uint)((uint)((uint)((uint)(_global_0[((int)min((uint)(((int)(_443) | (int)(1))), (uint)(31)))])) << 1) + (uint)((uint)(_440))))) + 0.5f));
      _466 = max(1e-07f, _275);
      _478 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _466, mad((_invViewProjRelative[3].y), _465, (_452 * (_invViewProjRelative[3].x))));
      _479 = (uint)((uint)(_262)) + (uint)((uint)(_292));
      _485 = (uint)((uint)((uint)((uint)((uint)(_bufferSizeAndInvSize.x)) >> 5)) * (uint)((uint)(_265))) + (uint)((uint)(_479));
      _493 = (uint)((uint)((((int)((uint)((uint)((uint)(_485)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_485)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_485)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_285));
      _501 = (uint)((uint)((((int)((uint)((uint)((uint)(_493)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_493)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_493)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_485));
      _509 = (uint)((uint)((((int)((uint)((uint)((uint)(_501)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_501)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_501)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_493));
      _517 = (uint)((uint)((((int)((uint)((uint)((uint)(_509)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_509)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_509)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_501));
      _525 = (uint)((uint)((((int)((uint)((uint)((uint)(_517)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_517)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_517)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_509));
      _533 = (uint)((uint)((((int)((uint)((uint)((uint)(_525)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_525)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_525)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_517));
      _541 = (uint)((uint)((((int)((uint)((uint)((uint)(_533)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_533)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_533)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_525));
      _549 = (uint)((uint)((((int)((uint)((uint)((uint)(_541)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_541)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_541)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_533));
      _557 = (uint)((uint)((((int)((uint)((uint)((uint)(_549)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_549)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_549)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_541));
      _565 = (uint)((uint)((((int)((uint)((uint)((uint)(_557)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_557)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_557)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_549));
      _573 = (uint)((uint)((((int)((uint)((uint)((uint)(_565)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_565)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_565)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_557));
      _581 = (uint)((uint)((((int)((uint)((uint)((uint)(_573)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_573)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_573)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_565));
      _589 = (uint)((uint)((((int)((uint)((uint)((uint)(_581)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_581)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_581)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_573));
      _597 = (uint)((uint)((((int)((uint)((uint)((uint)(_589)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_589)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_589)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_581));
      _605 = (uint)((uint)((((int)((uint)((uint)((uint)(_597)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_597)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_597)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_589));
      if ((_597 & 16777215) == 0) {
        _618 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_605)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_605)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_605)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_597))));
      } else {
        _618 = _597;
      }
      _626 = (int)((int)((uint)((uint)(_262)) << 5)) | (int)(16);
      _630 = ((int)((uint)((uint)(floor(((float)((uint)((uint)(((int)((uint)((uint)(_618)) * (uint)(48271))) & 16777215)))) * 9.536147e-07f))) << 1)) & 30;
      _639 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((uint)((uint)((uint)((uint)(_global_0[((int)min((uint)(_630), (uint)(31)))])) << 1) + (uint)((uint)(_626))))) + 0.5f)) + -1.0f;
      _652 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((uint)((uint)((uint)((uint)(_global_0[((int)min((uint)(((int)(_630) | (int)(1))), (uint)(31)))])) << 1) + (uint)((uint)(_440))))) + 0.5f));
      _653 = max(1e-07f, _278);
      _665 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _653, mad((_invViewProjRelative[3].y), _652, (_639 * (_invViewProjRelative[3].x))));
      _671 = (uint)((uint)((uint)((uint)((uint)(_bufferSizeAndInvSize.x)) >> 5)) * (uint)((uint)(_253))) + (uint)((uint)(_479));
      _679 = (uint)((uint)((((int)((uint)((uint)((uint)(_671)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_671)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_671)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_285));
      _687 = (uint)((uint)((((int)((uint)((uint)((uint)(_679)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_679)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_679)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_671));
      _695 = (uint)((uint)((((int)((uint)((uint)((uint)(_687)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_687)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_687)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_679));
      _703 = (uint)((uint)((((int)((uint)((uint)((uint)(_695)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_695)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_695)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_687));
      _711 = (uint)((uint)((((int)((uint)((uint)((uint)(_703)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_703)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_703)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_695));
      _719 = (uint)((uint)((((int)((uint)((uint)((uint)(_711)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_711)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_711)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_703));
      _727 = (uint)((uint)((((int)((uint)((uint)((uint)(_719)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_719)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_719)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_711));
      _735 = (uint)((uint)((((int)((uint)((uint)((uint)(_727)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_727)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_727)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_719));
      _743 = (uint)((uint)((((int)((uint)((uint)((uint)(_735)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_735)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_735)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_727));
      _751 = (uint)((uint)((((int)((uint)((uint)((uint)(_743)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_743)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_743)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_735));
      _759 = (uint)((uint)((((int)((uint)((uint)((uint)(_751)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_751)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_751)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_743));
      _767 = (uint)((uint)((((int)((uint)((uint)((uint)(_759)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_759)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_759)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_751));
      _775 = (uint)((uint)((((int)((uint)((uint)((uint)(_767)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_767)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_767)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_759));
      _783 = (uint)((uint)((((int)((uint)((uint)((uint)(_775)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_775)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_775)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_767));
      _791 = (uint)((uint)((((int)((uint)((uint)((uint)(_783)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_783)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_783)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_775));
      if ((_783 & 16777215) == 0) {
        _804 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_791)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_791)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_791)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_783))));
      } else {
        _804 = _783;
      }
      _814 = ((int)((uint)((uint)(floor(((float)((uint)((uint)(((int)((uint)((uint)(_804)) * (uint)(48271))) & 16777215)))) * 9.536147e-07f))) << 1)) & 30;
      _823 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((uint)((uint)((uint)((uint)(_global_0[((int)min((uint)(_814), (uint)(31)))])) << 1) + (uint)((uint)(_626))))) + 0.5f)) + -1.0f;
      _838 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((uint)((uint)((uint)((uint)(_global_0[((int)min((uint)(((int)(_814) | (int)(1))), (uint)(31)))])) << 1) + (uint)((uint)((int)((int)((uint)((uint)(_253)) << 5)) | (int)(16)))))) + 0.5f));
      _839 = max(1e-07f, _281);
      _851 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _839, mad((_invViewProjRelative[3].y), _838, (_823 * (_invViewProjRelative[3].x))));
      _857 = (uint)((uint)((uint)((uint)((uint)(_bufferSizeAndInvSize.x)) >> 5)) * (uint)((uint)(_267))) + (uint)((uint)(_293));
      _865 = (uint)((uint)((((int)((uint)((uint)((uint)(_857)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_857)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_857)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_285));
      _873 = (uint)((uint)((((int)((uint)((uint)((uint)(_865)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_865)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_865)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_857));
      _881 = (uint)((uint)((((int)((uint)((uint)((uint)(_873)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_873)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_873)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_865));
      _889 = (uint)((uint)((((int)((uint)((uint)((uint)(_881)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_881)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_881)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_873));
      _897 = (uint)((uint)((((int)((uint)((uint)((uint)(_889)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_889)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_889)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_881));
      _905 = (uint)((uint)((((int)((uint)((uint)((uint)(_897)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_897)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_897)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_889));
      _913 = (uint)((uint)((((int)((uint)((uint)((uint)(_905)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_905)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_905)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_897));
      _921 = (uint)((uint)((((int)((uint)((uint)((uint)(_913)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_913)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_913)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_905));
      _929 = (uint)((uint)((((int)((uint)((uint)((uint)(_921)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_921)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_921)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_913));
      _937 = (uint)((uint)((((int)((uint)((uint)((uint)(_929)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_929)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_929)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_921));
      _945 = (uint)((uint)((((int)((uint)((uint)((uint)(_937)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_937)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_937)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_929));
      _953 = (uint)((uint)((((int)((uint)((uint)((uint)(_945)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_945)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_945)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_937));
      _961 = (uint)((uint)((((int)((uint)((uint)((uint)(_953)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_953)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_953)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_945));
      _969 = (uint)((uint)((((int)((uint)((uint)((uint)(_961)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_961)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_961)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_953));
      _977 = (uint)((uint)((((int)((uint)((uint)((uint)(_969)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_969)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_969)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_961));
      if ((_969 & 16777215) == 0) {
        _990 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_977)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_977)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_977)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_969))));
      } else {
        _990 = _969;
      }
      _1000 = ((int)((uint)((uint)(floor(((float)((uint)((uint)(((int)((uint)((uint)(_990)) * (uint)(48271))) & 16777215)))) * 9.536147e-07f))) << 1)) & 30;
      _1009 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((uint)((uint)((uint)((uint)(_global_0[((int)min((uint)(_1000), (uint)(31)))])) << 1) + (uint)((uint)(_438))))) + 0.5f)) + -1.0f;
      _1024 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((uint)((uint)((uint)((uint)(_global_0[((int)min((uint)(((int)(_1000) | (int)(1))), (uint)(31)))])) << 1) + (uint)((uint)((int)((int)((uint)((uint)(_267)) << 5)) | (int)(16)))))) + 0.5f));
      _1025 = max(1e-07f, _284);
      _1037 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _1025, mad((_invViewProjRelative[3].y), _1024, (_1009 * (_invViewProjRelative[3].x))));
      _1038 = _87 * _87;
      _1040 = (_1038 * 0.01f) + 0.25f;
      _1053 = (_116 - ((mad((_invViewProjRelative[0].z), _466, mad((_invViewProjRelative[0].y), _465, ((_invViewProjRelative[0].x) * _452))) + (_invViewProjRelative[0].w)) / _478)) + _diffViewPosAccurate.x;
      _1065 = (_125 - ((mad((_invViewProjRelative[1].z), _466, mad((_invViewProjRelative[1].y), _465, ((_invViewProjRelative[1].x) * _452))) + (_invViewProjRelative[1].w)) / _478)) + _diffViewPosAccurate.y;
      _1077 = (_134 - ((mad((_invViewProjRelative[2].z), _466, mad((_invViewProjRelative[2].y), _465, ((_invViewProjRelative[2].x) * _452))) + (_invViewProjRelative[2].w)) / _478)) + _diffViewPosAccurate.z;
      _1084 = (_116 - ((mad((_invViewProjRelative[0].z), _653, mad((_invViewProjRelative[0].y), _652, ((_invViewProjRelative[0].x) * _639))) + (_invViewProjRelative[0].w)) / _665)) + _diffViewPosAccurate.x;
      _1091 = (_125 - ((mad((_invViewProjRelative[1].z), _653, mad((_invViewProjRelative[1].y), _652, ((_invViewProjRelative[1].x) * _639))) + (_invViewProjRelative[1].w)) / _665)) + _diffViewPosAccurate.y;
      _1098 = (_134 - ((mad((_invViewProjRelative[2].z), _653, mad((_invViewProjRelative[2].y), _652, ((_invViewProjRelative[2].x) * _639))) + (_invViewProjRelative[2].w)) / _665)) + _diffViewPosAccurate.z;
      _1105 = (_116 - ((mad((_invViewProjRelative[0].z), _839, mad((_invViewProjRelative[0].y), _838, ((_invViewProjRelative[0].x) * _823))) + (_invViewProjRelative[0].w)) / _851)) + _diffViewPosAccurate.x;
      _1112 = (_125 - ((mad((_invViewProjRelative[1].z), _839, mad((_invViewProjRelative[1].y), _838, ((_invViewProjRelative[1].x) * _823))) + (_invViewProjRelative[1].w)) / _851)) + _diffViewPosAccurate.y;
      _1119 = (_134 - ((mad((_invViewProjRelative[2].z), _839, mad((_invViewProjRelative[2].y), _838, ((_invViewProjRelative[2].x) * _823))) + (_invViewProjRelative[2].w)) / _851)) + _diffViewPosAccurate.z;
      _1126 = (_116 - ((mad((_invViewProjRelative[0].z), _1025, mad((_invViewProjRelative[0].y), _1024, ((_invViewProjRelative[0].x) * _1009))) + (_invViewProjRelative[0].w)) / _1037)) + _diffViewPosAccurate.x;
      _1133 = (_125 - ((mad((_invViewProjRelative[1].z), _1025, mad((_invViewProjRelative[1].y), _1024, ((_invViewProjRelative[1].x) * _1009))) + (_invViewProjRelative[1].w)) / _1037)) + _diffViewPosAccurate.y;
      _1140 = (_134 - ((mad((_invViewProjRelative[2].z), _1025, mad((_invViewProjRelative[2].y), _1024, ((_invViewProjRelative[2].x) * _1009))) + (_invViewProjRelative[2].w)) / _1037)) + _diffViewPosAccurate.z;
      _1143 = ((int)_266 < (int)0) || ((int)_266 >= (int)_221);
      _1146 = ((int)_265 < (int)0) || ((int)_265 >= (int)_224);
      _1149 = ((int)_262 < (int)0) || ((int)_262 >= (int)_221);
      _1150 = _87 * 0.05f;
      _1155 = max(0.0f, (select((_1146 || _1143), 0.0f, dot(float3(_1053, _1065, _1077), float3(_1053, _1065, _1077))) - _1150));
      _1160 = max(0.0f, (select((_1149 || _1146), 0.0f, dot(float3(_1084, _1091, _1098), float3(_1084, _1091, _1098))) - _1150));
      _1168 = max(0.0f, (select(((((int)_253 < (int)0) || ((int)_253 >= (int)_224)) || _1149), 0.0f, dot(float3(_1105, _1112, _1119), float3(_1105, _1112, _1119))) - _1150));
      _1176 = max(0.0f, (select((((int)_267 >= (int)_224) || (_1143 || ((int)_267 < (int)0))), 0.0f, dot(float3(_1126, _1133, _1140), float3(_1126, _1133, _1140))) - _1150));
      _1181 = min(0.0f, (-0.0f - (abs(dot(float3(_73, _74, _75), float3(_1053, _1065, _1077))) - _1150)));
      _1186 = min(0.0f, (-0.0f - (abs(dot(float3(_73, _74, _75), float3(_1084, _1091, _1098))) - _1150)));
      _1191 = min(0.0f, (-0.0f - (abs(dot(float3(_73, _74, _75), float3(_1105, _1112, _1119))) - _1150)));
      _1196 = min(0.0f, (-0.0f - (abs(dot(float3(_73, _74, _75), float3(_1126, _1133, _1140))) - _1150)));
      _1197 = _1181 * _1181;
      _1198 = _1186 * _1186;
      _1199 = _1191 * _1191;
      _1200 = _1196 * _1196;
      _1202 = 1.442695f / (_1038 + 1.0f);
      _1215 = min((select((_1155 > _1040), 0.0f, exp2(((max(0.0f, (_1155 - _1197)) * -5.0f) - (_1197 * 50.0f)) * _1202)) * ((float)((bool)(_275 > 4e-07f)))), _270);
      _1228 = min((select((_1160 > _1040), 0.0f, exp2(((max(0.0f, (_1160 - _1198)) * -5.0f) - (_1198 * 50.0f)) * _1202)) * ((float)((bool)(_278 > 4e-07f)))), _271);
      _1241 = min((select((_1168 > _1040), 0.0f, exp2(((max(0.0f, (_1168 - _1199)) * -5.0f) - (_1199 * 50.0f)) * _1202)) * ((float)((bool)(_281 > 4e-07f)))), _269);
      _1254 = min((select((_1176 > _1040), 0.0f, exp2(((max(0.0f, (_1176 - _1200)) * -5.0f) - (_1200 * 50.0f)) * _1202)) * ((float)((bool)(_284 > 4e-07f)))), _268);
      _1257 = 1.0f / max(1e-06f, dot(float4(_1215, _1228, _1241, _1254), float4(1.0f, 1.0f, 1.0f, 1.0f)));
      _1266 = (((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524));
      _1274 = (uint)((uint)((((int)((uint)((uint)((uint)(_1266)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1266)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_1266)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
      _1282 = (uint)((uint)((((int)((uint)((uint)((uint)(_1274)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1274)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_1274)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1266));
      _1290 = (uint)((uint)((((int)((uint)((uint)((uint)(_1282)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1282)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_1282)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1274));
      _1298 = (uint)((uint)((((int)((uint)((uint)((uint)(_1290)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1290)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_1290)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1282));
      _1306 = (uint)((uint)((((int)((uint)((uint)((uint)(_1298)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1298)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_1298)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1290));
      _1314 = (uint)((uint)((((int)((uint)((uint)((uint)(_1306)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1306)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_1306)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1298));
      _1322 = (uint)((uint)((((int)((uint)((uint)((uint)(_1314)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1314)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_1314)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1306));
      _1330 = (uint)((uint)((((int)((uint)((uint)((uint)(_1322)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1322)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_1322)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1314));
      _1338 = (uint)((uint)((((int)((uint)((uint)((uint)(_1330)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1330)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_1330)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1322));
      _1346 = (uint)((uint)((((int)((uint)((uint)((uint)(_1338)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1338)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_1338)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1330));
      _1354 = (uint)((uint)((((int)((uint)((uint)((uint)(_1346)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1346)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_1346)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1338));
      _1362 = (uint)((uint)((((int)((uint)((uint)((uint)(_1354)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1354)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_1354)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1346));
      _1370 = (uint)((uint)((((int)((uint)((uint)((uint)(_1362)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1362)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_1362)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1354));
      _1378 = (uint)((uint)((((int)((uint)((uint)((uint)(_1370)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1370)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_1370)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1362));
      _1386 = (uint)((uint)((((int)((uint)((uint)((uint)(_1378)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1378)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_1378)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1370));
      if ((_1378 & 16777215) == 0) {
        _1399 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_1386)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1386)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_1386)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1378))));
      } else {
        _1399 = _1378;
      }
      _1407 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1399)) * (uint)(48271))) & 16777215)))) * 5.8516725e-09f) + -0.049087387f) * _terrainNormalParams.z;
      _1408 = sin(_1407);
      _1409 = cos(_1407);
      _1411 = (int)((int)((uint)((uint)(_266)) << 3)) | (int)(_15);
      _1413 = (uint)((uint)((uint)(_265)) << 3) + (uint)((uint)(_16));
      _1415 = (int)((int)((uint)((uint)(_262)) << 3)) | (int)(_15);
      _global_1[((int)min((uint)(_19), (uint)(255)))] = ((__3__36__0__0__g_tiledRadianceCachePDFPrev.Load(int3(_1411, _1413, 0))).x);
      _global_1[((int)min((uint)(((int)(_19) | (int)(1))), (uint)(255)))] = ((__3__36__0__0__g_tiledRadianceCachePDFPrev.Load(int3(_1415, _1413, 0))).x);
      _global_1[((int)min((uint)(((int)(_19) | (int)(2))), (uint)(255)))] = ((__3__36__0__0__g_tiledRadianceCachePDFPrev.Load(int3(_1415, ((int)((uint)((uint)((uint)(_253)) << 3) + (uint)((uint)(_16)))), 0))).x);
      _global_1[((int)min((uint)(((int)(_19) | (int)(3))), (uint)(255)))] = ((__3__36__0__0__g_tiledRadianceCachePDFPrev.Load(int3(_1411, ((int)((uint)((uint)((uint)(_267)) << 3) + (uint)((uint)(_16)))), 0))).x);
      _1435 = ((((float)((uint)((uint)(_15)))) + 0.5f) * 0.25f) + -1.0f;
      _1439 = ((((float)((uint)((uint)(_16)))) + 0.5f) * 0.25f) + -1.0f;
      _1443 = (1.0f - abs(_1435)) - abs(_1439);
      _1445 = saturate(-0.0f - _1443);  // [sem: expr_sat]
      _1446 = -0.0f - _1445;
      _1449 = select((_1435 >= 0.0f), _1446, _1445) + _1435;
      _1452 = select((_1439 >= 0.0f), _1446, _1445) + _1439;
      _1454 = rsqrt(dot(float3(_1449, _1443, _1452), float3(_1449, _1443, _1452)));  // [sem: invLength]
      _1455 = _1449 * _1454;
      _1456 = _1454 * _1443;
      _1457 = _1452 * _1454;
      _1460 = (_1455 * _1409) + (_1457 * _1408);
      _1463 = (_1457 * _1409) - (_1455 * _1408);
      _1465 = rsqrt(dot(float3(_1460, _1456, _1463), float3(_1460, _1456, _1463)));  // [sem: invLength]
      _global_2[((int)min((uint)(_31), (uint)(191)))] = (_1460 * _1465);
      _global_2[((int)min((uint)(((int)((uint)((uint)(_31)) + (uint)(1)))), (uint)(191)))] = (_1465 * _1456);
      _global_2[((int)min((uint)(((int)((uint)((uint)(_31)) + (uint)(2)))), (uint)(191)))] = (_1463 * _1465);
      GroupMemoryBarrierWithGroupSync();
      _1472 = _1257 * (((_1228 + _1215) + _1241) + _1254);
      _1473 = (_1472 > 1.0f);
      _1475 = select(_1473, _270, (_1257 * _1215));
      _1477 = select(_1473, _271, (_1257 * _1228));
      _1479 = select(_1473, _269, (_1257 * _1241));
      _1481 = select(_1473, _268, (_1257 * _1254));
      _1486 = (uint)((uint)(_1266)) + (uint)((uint)((_44 * _77) + _76));
      _1493 = (((int)((uint)((uint)((uint)(_1486)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1486)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_1486)) >> 5)) + (uint)(2123724318)));
      _1496 = (uint)((uint)(_frameNumber.x)) + (uint)((uint)(_1493));
      _1504 = (uint)((uint)((((int)((uint)((uint)((uint)(_1496)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1496)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_1496)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1486));
      _1512 = (uint)((uint)((((int)((uint)((uint)((uint)(_1504)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1504)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_1504)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1496));
      _1520 = (uint)((uint)((((int)((uint)((uint)((uint)(_1512)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1512)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_1512)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1504));
      _1528 = (uint)((uint)((((int)((uint)((uint)((uint)(_1520)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1520)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_1520)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1512));
      _1536 = (uint)((uint)((((int)((uint)((uint)((uint)(_1528)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1528)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_1528)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1520));
      _1544 = (uint)((uint)((((int)((uint)((uint)((uint)(_1536)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1536)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_1536)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1528));
      _1552 = (uint)((uint)((((int)((uint)((uint)((uint)(_1544)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1544)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_1544)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1536));
      _1560 = (uint)((uint)((((int)((uint)((uint)((uint)(_1552)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1552)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_1552)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1544));
      _1568 = (uint)((uint)((((int)((uint)((uint)((uint)(_1560)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1560)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_1560)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1552));
      _1576 = (uint)((uint)((((int)((uint)((uint)((uint)(_1568)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1568)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_1568)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1560));
      _1584 = (uint)((uint)((((int)((uint)((uint)((uint)(_1576)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1576)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_1576)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1568));
      _1592 = (uint)((uint)((((int)((uint)((uint)((uint)(_1584)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1584)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_1584)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1576));
      _1600 = (uint)((uint)((((int)((uint)((uint)((uint)(_1592)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1592)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_1592)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1584));
      _1608 = (uint)((uint)((((int)((uint)((uint)((uint)(_1600)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1600)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_1600)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1592));
      _1610 = ((_1600 & 16777215) == 0);
      if (!(_1472 >= 0.03125f)) {
        if (_1610) {
          _1622 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_1608)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1608)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_1608)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1600))));
        } else {
          _1622 = _1600;
        }
        _1627 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_1622)) * (uint)(48271))) & 16777215)))) * 3.8146914e-06f);
        _1634 = frac((((float)((uint)((uint)(_1627)))) * 0.015625f) + (((float)((uint)((uint)(_169 & 65535)))) * 1.5258789e-05f));
        _1637 = (float)((uint)((uint)(reversebits(_1627) ^ _171)));
        if ((_147 == 0) || ((!(_147 == 0)) && (!(_renderParams.w == 0.0f)))) {
          _1644 = _1634 * 6.2831855f;
          _1646 = sqrt(_1637 * 2.3283064e-10f);
          _1649 = sqrt(1.0f - (_1646 * _1646));
          _1667 = _1646;
          _1668 = (sin(_1644) * _1649);
          _1669 = (cos(_1644) * _1649);
          _1670 = (_1646 * 2.0f);
        } else {
          _1656 = _1634 * 6.2831855f;
          _1658 = 1.0f - (_1637 * 4.656613e-10f);
          _1661 = sqrt(1.0f - (_1658 * _1658));
          _1667 = _1658;
          _1668 = (sin(_1656) * _1661);
          _1669 = (cos(_1656) * _1661);
          _1670 = 0.5f;
        }
        _1672 = select((_75 >= 0.0f), 1.0f, -1.0f);
        _1675 = -0.0f - (1.0f / (_1672 + _75));
        _1676 = _74 * _1675;
        _1677 = _1676 * _73;
        _1678 = _1672 * _73;
        _2632 = _1670;
        _2633 = mad(_1667, _75, mad(_1668, (-0.0f - _74), (-0.0f - (_1678 * _1669))));
        _2634 = mad(_1667, _74, mad(_1668, ((_1676 * _74) + _1672), ((_1669 * _1672) * _1677)));
        _2635 = mad(_1667, _73, mad(_1668, _1677, ((((_1678 * _73) * _1675) + 1.0f) * _1669)));
      } else {
        if (_1610) {
          _1707 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_1608)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1608)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_1608)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1600))));
        } else {
          _1707 = _1600;
        }
        _1709 = 0;
        _1710 = 0.0f;
        while(true) {
          _1712 = 0;
          _1713 = _1710;
          while(true) {
            _1715 = (int)(_1712) + (int)((int)((uint)((uint)(_1709)) << 3));
            _1716 = (int)(_1715) * (int)(3);
            _1730 = (uint)((uint)(_1715)) << 2;
            _1748 = (dot(float4((_global_1[((int)min((uint)(_1730), (uint)(255)))]), (_global_1[((int)min((uint)(((int)(_1730) | (int)(1))), (uint)(255)))]), (_global_1[((int)min((uint)(((int)(_1730) | (int)(2))), (uint)(255)))]), (_global_1[((int)min((uint)(((int)(_1730) | (int)(3))), (uint)(255)))])), float4(_1475, _1477, _1479, _1481)) * saturate(dot(float3(_73, _74, _75), float3((_global_2[((int)min((uint)(_1716), (uint)(191)))]), (_global_2[((int)min((uint)(((int)(_1716) + (int)(1))), (uint)(191)))]), (_global_2[((int)min((uint)(((int)(_1716) + (int)(2))), (uint)(191)))]))))) + _1713;
            _1749 = (int)(_1712) + (int)(1);
            if (!(_1749 == 8)) {
              _1712 = _1749;
              _1713 = _1748;
              continue;
            }
            _1752 = (int)(_1709) + (int)(1);
            if (!(_1752 == 8)) {
              _1709 = _1752;
              _1710 = _1748;
              __loop_jump_target = 1708;
              break;
            }
            _1756 = 0.0f;
            _1757 = 0;
            while(true) {
              _1759 = _1756;
              _1760 = 0;
              while(true) {
                _1762 = (int)(_1760) + (int)((int)((uint)((uint)(_1757)) << 3));
                _1763 = (int)(_1762) * (int)(3);
                _1777 = (uint)((uint)(_1762)) << 2;
                _1794 = dot(float4((_global_1[((int)min((uint)(_1777), (uint)(255)))]), (_global_1[((int)min((uint)(((int)(_1777) | (int)(1))), (uint)(255)))]), (_global_1[((int)min((uint)(((int)(_1777) | (int)(2))), (uint)(255)))]), (_global_1[((int)min((uint)(((int)(_1777) | (int)(3))), (uint)(255)))])), float4(_1475, _1477, _1479, _1481)) * saturate(dot(float3(_73, _74, _75), float3((_global_2[((int)min((uint)(_1763), (uint)(191)))]), (_global_2[((int)min((uint)(((int)(_1763) + (int)(1))), (uint)(191)))]), (_global_2[((int)min((uint)(((int)(_1763) + (int)(2))), (uint)(191)))]))));
                _1795 = _1794 + _1759;
                if (!(((((float)((uint)((uint)(((int)((uint)((uint)(_1707)) * (uint)(48271))) & 16777215)))) * 5.9604645e-08f) * _1748) < _1795)) {
                  _1803 = (int)(_1760) + (int)(1);
                  if ((uint)_1803 < (uint)8) {
                    _1759 = _1795;
                    _1760 = _1803;
                    continue;
                  } else {
                    _1806 = (int)(_1757) + (int)(1);
                    if ((uint)_1806 < (uint)8) {
                      _1756 = _1795;
                      _1757 = _1806;
                      __loop_jump_target = 1755;
                      break;
                    } else {
                      _1811 = (uint)((uint)(_frameNumber.x)) + (uint)((uint)(_1493));
                      _1819 = (uint)((uint)((((int)((uint)((uint)((uint)(_1811)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1811)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_1811)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1486));
                      _1827 = (uint)((uint)((((int)((uint)((uint)((uint)(_1819)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1819)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_1819)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1811));
                      _1835 = (uint)((uint)((((int)((uint)((uint)((uint)(_1827)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1827)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_1827)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1819));
                      _1843 = (uint)((uint)((((int)((uint)((uint)((uint)(_1835)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1835)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_1835)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1827));
                      _1851 = (uint)((uint)((((int)((uint)((uint)((uint)(_1843)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1843)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_1843)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1835));
                      _1859 = (uint)((uint)((((int)((uint)((uint)((uint)(_1851)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1851)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_1851)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1843));
                      _1867 = (uint)((uint)((((int)((uint)((uint)((uint)(_1859)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1859)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_1859)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1851));
                      _1875 = (uint)((uint)((((int)((uint)((uint)((uint)(_1867)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1867)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_1867)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1859));
                      _1883 = (uint)((uint)((((int)((uint)((uint)((uint)(_1875)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1875)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_1875)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1867));
                      _1891 = (uint)((uint)((((int)((uint)((uint)((uint)(_1883)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1883)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_1883)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1875));
                      _1899 = (uint)((uint)((((int)((uint)((uint)((uint)(_1891)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1891)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_1891)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1883));
                      _1907 = (uint)((uint)((((int)((uint)((uint)((uint)(_1899)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1899)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_1899)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1891));
                      _1915 = (uint)((uint)((((int)((uint)((uint)((uint)(_1907)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1907)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_1907)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1899));
                      _1923 = (uint)((uint)((((int)((uint)((uint)((uint)(_1915)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_1915)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_1915)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_1907));
                      if ((_1915 & 16777215) == 0) {
                        _1936 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_1923)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_1923)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_1923)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1915))));
                      } else {
                        _1936 = _1915;
                      }
                      _1941 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_1936)) * (uint)(48271))) & 16777215)))) * 3.8146914e-06f);
                      _1948 = frac((((float)((uint)((uint)(_1941)))) * 0.015625f) + (((float)((uint)((uint)(_169 & 65535)))) * 1.5258789e-05f));
                      _1951 = (float)((uint)((uint)(reversebits(_1941) ^ _171)));
                      if ((_147 == 0) || ((!(_147 == 0)) && (!(_renderParams.w == 0.0f)))) {
                        _1958 = _1948 * 6.2831855f;
                        _1960 = sqrt(_1951 * 2.3283064e-10f);
                        _1963 = sqrt(1.0f - (_1960 * _1960));
                        _1981 = _1960;
                        _1982 = (sin(_1958) * _1963);
                        _1983 = (cos(_1958) * _1963);
                        _1984 = (_1960 * 2.0f);
                      } else {
                        _1970 = _1948 * 6.2831855f;
                        _1972 = 1.0f - (_1951 * 4.656613e-10f);
                        _1975 = sqrt(1.0f - (_1972 * _1972));
                        _1981 = _1972;
                        _1982 = (sin(_1970) * _1975);
                        _1983 = (cos(_1970) * _1975);
                        _1984 = 0.5f;
                      }
                      _1986 = select((_75 >= 0.0f), 1.0f, -1.0f);
                      _1989 = -0.0f - (1.0f / (_1986 + _75));
                      _1990 = _74 * _1989;
                      _1991 = _1990 * _73;
                      _1992 = _1986 * _73;
                      _2632 = _1984;
                      _2633 = mad(_1981, _75, mad(_1982, (-0.0f - _74), (-0.0f - (_1992 * _1983))));
                      _2634 = mad(_1981, _74, mad(_1982, ((_1990 * _74) + _1986), ((_1983 * _1986) * _1991)));
                      _2635 = mad(_1981, _73, mad(_1982, _1991, ((((_1992 * _73) * _1989) + 1.0f) * _1983)));
                    }
                  }
                } else {
                  _2017 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_1707)) * (uint)(-1964877855))) & 16777215)))) * 3.8141013e-06f);
                  _2020 = (uint)((uint)(_frameNumber.x)) + (uint)(-1);
                  _2025 = ((float)((uint)((uint)(_169 & 65535)))) * 1.5258789e-05f;
                  _2031 = ((frac((((float)((uint)((uint)(_2017)))) * 0.015625f) + _2025) + ((float)((uint)((uint)(_1760))))) * 0.25f) + -1.0f;
                  _2042 = (((((((float)((uint)((uint)(_1757)))) + 0.5f) * 0.125f) + -0.0625f) + (((float)((uint)((uint)(reversebits(_2017) ^ _171)))) * 2.910383e-11f)) * 2.0f) + -1.0f;
                  _2046 = (1.0f - abs(_2031)) - abs(_2042);
                  _2048 = saturate(-0.0f - _2046);  // [sem: expr_sat]
                  _2049 = -0.0f - _2048;
                  _2052 = select((_2031 >= 0.0f), _2049, _2048) + _2031;
                  _2055 = select((_2042 >= 0.0f), _2049, _2048) + _2042;
                  _2062 = (((int)((uint)((uint)((uint)(_2020)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531528)))) ^ ((int)((uint)((uint)(_2020)) >> 5) + (int)(-939442524));
                  _2070 = (uint)((uint)((((int)((uint)((uint)((uint)(_2062)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2062)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_2062)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2020));
                  _2078 = (uint)((uint)((((int)((uint)((uint)((uint)(_2070)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2070)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_2070)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2062));
                  _2086 = (uint)((uint)((((int)((uint)((uint)((uint)(_2078)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2078)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_2078)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2070));
                  _2094 = (uint)((uint)((((int)((uint)((uint)((uint)(_2086)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2086)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_2086)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2078));
                  _2102 = (uint)((uint)((((int)((uint)((uint)((uint)(_2094)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2094)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_2094)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2086));
                  _2110 = (uint)((uint)((((int)((uint)((uint)((uint)(_2102)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2102)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_2102)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2094));
                  _2118 = (uint)((uint)((((int)((uint)((uint)((uint)(_2110)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2110)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_2110)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2102));
                  _2126 = (uint)((uint)((((int)((uint)((uint)((uint)(_2118)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2118)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_2118)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2110));
                  _2134 = (uint)((uint)((((int)((uint)((uint)((uint)(_2126)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2126)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_2126)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2118));
                  _2142 = (uint)((uint)((((int)((uint)((uint)((uint)(_2134)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2134)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_2134)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2126));
                  _2150 = (uint)((uint)((((int)((uint)((uint)((uint)(_2142)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2142)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_2142)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2134));
                  _2158 = (uint)((uint)((((int)((uint)((uint)((uint)(_2150)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2150)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_2150)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2142));
                  _2166 = (uint)((uint)((((int)((uint)((uint)((uint)(_2158)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2158)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_2158)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2150));
                  _2174 = (uint)((uint)((((int)((uint)((uint)((uint)(_2166)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2166)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_2166)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2158));
                  _2182 = (uint)((uint)((((int)((uint)((uint)((uint)(_2174)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2174)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_2174)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2166));
                  if ((_2174 & 16777215) == 0) {
                    _2195 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_2182)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2182)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_2182)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2174))));
                  } else {
                    _2195 = _2174;
                  }
                  _2203 = ((((float)((uint)((uint)(((int)((uint)((uint)(_2195)) * (uint)(48271))) & 16777215)))) * 5.8516725e-09f) + -0.049087387f) * _terrainNormalParams.z;
                  _2204 = sin(_2203);
                  _2205 = cos(_2203);
                  _2207 = rsqrt(dot(float3(_2052, _2046, _2055), float3(_2052, _2046, _2055)));  // [sem: invLength]
                  _2208 = _2207 * _2052;
                  _2209 = _2207 * _2046;
                  _2210 = _2207 * _2055;
                  _2213 = (_2208 * _2205) + (_2210 * _2204);
                  _2216 = (_2210 * _2205) - (_2208 * _2204);
                  _2218 = rsqrt(dot(float3(_2213, _2209, _2216), float3(_2213, _2209, _2216)));  // [sem: invLength]
                  if (_147 == 0) {
                    _2632 = ((_1794 * 32.0f) / _1748);
                    _2633 = (_2216 * _2218);
                    _2634 = (_2218 * _2209);
                    _2635 = (_2213 * _2218);
                  } else {
                    _2221 = (uint)((uint)(_frameNumber.x)) + (uint)((uint)(_1493));
                    _2229 = (uint)((uint)((((int)((uint)((uint)((uint)(_2221)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2221)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_2221)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_1486));
                    _2237 = (uint)((uint)((((int)((uint)((uint)((uint)(_2229)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2229)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_2229)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2221));
                    _2245 = (uint)((uint)((((int)((uint)((uint)((uint)(_2237)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2237)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_2237)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2229));
                    _2253 = (uint)((uint)((((int)((uint)((uint)((uint)(_2245)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2245)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_2245)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2237));
                    _2261 = (uint)((uint)((((int)((uint)((uint)((uint)(_2253)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2253)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_2253)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2245));
                    _2269 = (uint)((uint)((((int)((uint)((uint)((uint)(_2261)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2261)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_2261)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2253));
                    _2277 = (uint)((uint)((((int)((uint)((uint)((uint)(_2269)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2269)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_2269)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2261));
                    _2285 = (uint)((uint)((((int)((uint)((uint)((uint)(_2277)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2277)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_2277)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2269));
                    _2293 = (uint)((uint)((((int)((uint)((uint)((uint)(_2285)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2285)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_2285)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2277));
                    _2301 = (uint)((uint)((((int)((uint)((uint)((uint)(_2293)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2293)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_2293)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2285));
                    _2309 = (uint)((uint)((((int)((uint)((uint)((uint)(_2301)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2301)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_2301)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2293));
                    _2317 = (uint)((uint)((((int)((uint)((uint)((uint)(_2309)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2309)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_2309)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2301));
                    _2325 = (uint)((uint)((((int)((uint)((uint)((uint)(_2317)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2317)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_2317)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2309));
                    _2333 = (uint)((uint)((((int)((uint)((uint)((uint)(_2325)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2325)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_2325)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2317));
                    if ((_2325 & 16777215) == 0) {
                      _2346 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_2333)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2333)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_2333)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2325))));
                    } else {
                      _2346 = _2325;
                    }
                    _2351 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_2346)) * (uint)(48271))) & 16777215)))) * 3.8146914e-06f);
                    _2358 = (float)((uint)((uint)(reversebits(_2351) ^ _171)));
                    _2362 = frac((((float)((uint)((uint)(_2351)))) * 0.015625f) + _2025) * 6.2831855f;
                    if (_renderParams.w == 0.0f) {
                      _2367 = 1.0f - (_2358 * 4.656613e-10f);
                      _2379 = _2367;
                      _2380 = sqrt(1.0f - (_2367 * _2367));
                      _2381 = 0.5f;
                    } else {
                      _2373 = sqrt(_2358 * 2.3283064e-10f);
                      _2379 = _2373;
                      _2380 = sqrt(1.0f - (_2373 * _2373));
                      _2381 = (_2373 * 2.0f);
                    }
                    _2382 = _2380 * cos(_2362);
                    _2383 = _2380 * sin(_2362);
                    _2385 = select((_75 >= 0.0f), 1.0f, -1.0f);
                    _2388 = -0.0f - (1.0f / (_2385 + _75));
                    _2389 = _74 * _2388;
                    _2390 = _2389 * _73;
                    _2391 = _2385 * _73;
                    _2632 = _2381;
                    _2633 = mad(_2379, _75, mad(_2383, (-0.0f - _74), (-0.0f - (_2391 * _2382))));
                    _2634 = mad(_2379, _74, mad(_2383, ((_2389 * _74) + _2385), ((_2382 * _2385) * _2390)));
                    _2635 = mad(_2379, _73, mad(_2383, _2390, ((((_2391 * _73) * _2388) + 1.0f) * _2382)));
                  }
                }
                break;
              }
              if (__loop_jump_target == 1755) {
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
          if (__loop_jump_target == 1708) {
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
      _2424 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_44 * _77) + _76));
      _2432 = (uint)((uint)((((int)((uint)((uint)((uint)(_2424)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2424)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_2424)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
      _2440 = (uint)((uint)((((int)((uint)((uint)((uint)(_2432)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2432)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_2432)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2424));
      _2448 = (uint)((uint)((((int)((uint)((uint)((uint)(_2440)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2440)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_2440)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2432));
      _2456 = (uint)((uint)((((int)((uint)((uint)((uint)(_2448)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2448)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_2448)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2440));
      _2464 = (uint)((uint)((((int)((uint)((uint)((uint)(_2456)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2456)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_2456)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2448));
      _2472 = (uint)((uint)((((int)((uint)((uint)((uint)(_2464)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2464)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_2464)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2456));
      _2480 = (uint)((uint)((((int)((uint)((uint)((uint)(_2472)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2472)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_2472)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2464));
      _2488 = (uint)((uint)((((int)((uint)((uint)((uint)(_2480)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2480)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_2480)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2472));
      _2496 = (uint)((uint)((((int)((uint)((uint)((uint)(_2488)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2488)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_2488)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2480));
      _2504 = (uint)((uint)((((int)((uint)((uint)((uint)(_2496)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2496)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_2496)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2488));
      _2512 = (uint)((uint)((((int)((uint)((uint)((uint)(_2504)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2504)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_2504)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2496));
      _2520 = (uint)((uint)((((int)((uint)((uint)((uint)(_2512)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2512)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_2512)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2504));
      _2528 = (uint)((uint)((((int)((uint)((uint)((uint)(_2520)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2520)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_2520)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2512));
      _2536 = (uint)((uint)((((int)((uint)((uint)((uint)(_2528)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2528)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_2528)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2520));
      _2544 = (uint)((uint)((((int)((uint)((uint)((uint)(_2536)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2536)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_2536)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2528));
      if ((_2536 & 16777215) == 0) {
        _2557 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_2544)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2544)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_2544)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2536))));
      } else {
        _2557 = _2536;
      }
      _2562 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_2557)) * (uint)(48271))) & 16777215)))) * 3.8146914e-06f);
      _2569 = frac((((float)((uint)((uint)(_2562)))) * 0.015625f) + (((float)((uint)((uint)(_169 & 65535)))) * 1.5258789e-05f));
      _2572 = (float)((uint)((uint)(reversebits(_2562) ^ _171)));
      if ((_147 == 0) || ((!(_147 == 0)) && (!(_renderParams.w == 0.0f)))) {
        _2579 = _2569 * 6.2831855f;
        _2581 = sqrt(_2572 * 2.3283064e-10f);
        _2584 = sqrt(1.0f - (_2581 * _2581));
        _2602 = _2581;
        _2603 = (sin(_2579) * _2584);
        _2604 = (cos(_2579) * _2584);
        _2605 = (_2581 * 2.0f);
      } else {
        _2591 = _2569 * 6.2831855f;
        _2593 = 1.0f - (_2572 * 4.656613e-10f);
        _2596 = sqrt(1.0f - (_2593 * _2593));
        _2602 = _2593;
        _2603 = (sin(_2591) * _2596);
        _2604 = (cos(_2591) * _2596);
        _2605 = 0.5f;
      }
      _2607 = select((_75 >= 0.0f), 1.0f, -1.0f);
      _2610 = -0.0f - (1.0f / (_2607 + _75));
      _2611 = _74 * _2610;
      _2612 = _2611 * _73;
      _2613 = _2607 * _73;
      _2632 = _2605;
      _2633 = mad(_2602, _75, mad(_2603, (-0.0f - _74), (-0.0f - (_2613 * _2604))));
      _2634 = mad(_2602, _74, mad(_2603, ((_2611 * _74) + _2607), ((_2604 * _2607) * _2612)));
      _2635 = mad(_2602, _73, mad(_2603, _2612, ((((_2613 * _73) * _2610) + 1.0f) * _2604)));
    }
    __3__38__0__1__g_raytracingHitResultUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(_2635, _2634, _2633, 0.0f);
    __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = (1.0f / max(0.01f, _2632));
  }
}
