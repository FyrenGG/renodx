struct ManyLightsData {
  float4 _position;
  float4 _color;
  uint2 _up;
  uint2 _look;
};


Texture2D<float4> __3__36__0__0__g_puddleMask : register(t136, space36);

Texture2D<float> __3__36__0__0__g_lightProfile : register(t48, space36);

Texture2D<float4> __3__36__0__0__g_blueNoise : register(t145, space36);

Texture2D<float4> __3__36__0__0__g_character : register(t50, space36);

Texture2D<float2> __3__36__0__0__g_iblBrdfLookup : register(t154, space36);

Texture2D<float2> __3__36__0__0__g_hairBrdfLookup : register(t156, space36);

StructuredBuffer<ManyLightsData> __3__37__0__0__g_manyLightsDataBuffer : register(t8, space37);

Texture2D<uint2> __3__36__0__0__g_manyLightsHitData : register(t15, space36);

Texture2D<uint> __3__36__0__0__g_tiledManyLightsMasks : register(t17, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t21, space36);

Texture2D<float4> __3__36__0__0__g_normal : register(t22, space36);

Texture2D<uint> __3__36__0__0__g_depthStencil : register(t52, space36);

RWTexture2D<float4> __3__38__0__1__g_sceneDiffuseUAV : register(u5, space38);

RWTexture2D<float4> __3__38__0__1__g_specularResultUAV : register(u8, space38);

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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b32, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

cbuffer __3__35__0__0__TileConstantBuffer : register(b49, space35) {
  struct {
    uint4 g_tileIndex[4096];
  } __3__35__0__0__TileConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__TileConstantBuffer_raw[4096] : packoffset(c0);
  uint4 __3__35__0__0__TileConstantBuffer_raw_uint[4096] : packoffset(c0);
};

cbuffer __3__35__0__0__MaterialParameterPresetTableConstantBuffer : register(b40, space35) {
  struct {
    float4 _clothLightingCategory;
    float4 _clothLightingParameter[8];
    float4 _colorPresetInfo;
    uint4 _colorPresetParameter[16];
    float4 _debugOption;
  } __3__35__0__0__MaterialParameterPresetTableConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[27] : packoffset(c0);
  uint4 __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw_uint[27] : packoffset(c0);
};

cbuffer __3__1__0__0__RenderVoxelConstants : register(b0, space1) {
  float4 _lightingParams : packoffset(c000.x);
  float4 _tiledRadianceCacheParams : packoffset(c001.x);
};

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

[numthreads(16, 16, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  int _30;
  int _31;
  int4 _39;
  int _49;
  int _53;
  uint _59;
  uint _61;
  half _337;
  half _341;
  bool _342;
  bool _347;
  half _348;
  bool _351;
  half _352;
  bool _353;
  half _369;
  half _373;
  half _386;
  half _387;
  half _388;
  half _389;
  float _416;
  float _417;
  float _424;
  float _425;
  float _426;
  float _435;
  int _473;
  float _474;
  float _475;
  float _476;
  float _500;
  int _501;
  float _502;
  float _508;
  int _509;
  half _510;
  float _513;
  int _514;
  half _515;
  float _572;
  int _573;
  half _574;
  float _575;
  float _576;
  float _577;
  float _578;
  half _592;
  float _645;
  float _646;
  float _647;
  float _768;
  float _769;
  float _770;
  float _1233;
  float _1234;
  float _1235;
  float _1236;
  float _1395;
  float _1396;
  float _1397;
  float _1398;
  float _1399;
  float _1400;
  float _1401;
  half _1429;
  float _1430;
  float _1431;
  float _1432;
  float _1453;
  float _1486;
  float _1487;
  float _1488;
  float _1539;
  float _1540;
  float _1604;
  float _1605;
  float _1606;
  float _1675;
  float _1676;
  float _1677;
  float _1692;
  float _1693;
  float _1694;
  uint _76;
  float _80;
  int _85;
  int _86;
  float _89;
  float _91;
  float _92;
  float _98;
  float _99;
  float _101;
  float _103;
  float _139;
  float _140;
  float _141;
  float _142;
  float _148;
  float _149;
  uint4 _151;
  float4 _157;
  half _166;
  half _170;
  half _175;
  half _184;
  uint _200;
  bool _202;
  float _212;
  float _213;
  float _214;
  float _216;
  half _220;
  half _221;
  half _222;
  half _225;
  half _226;
  float _231;
  float _232;
  float _236;
  float _238;
  float _245;
  float _246;
  float _247;
  float _249;
  float _252;
  float _253;
  float _254;
  float _255;
  float _262;
  float _263;
  float _264;
  half _276;
  half _277;
  half _278;
  half _280;
  half _281;
  half _282;
  half _283;
  half _287;
  half _288;
  half _289;
  half _308;
  half _309;
  half _310;
  half _311;
  half _312;
  int _314;
  half _319;
  int _323;
  bool _338;
  bool _355;
  bool _356;
  half _360;
  float4 _375;
  float _391;
  float _395;
  float _396;
  float _403;
  float _404;
  float _405;
  float _419;
  bool _428;
  uint _458;
  int _460;
  float4 _467;
  float _477;
  float _488;
  float _530;
  float _534;
  float4 _539;
  float _543;
  float _544;
  float _545;
  float _546;
  float _553;
  float _554;
  float _555;
  float _582;
  float _583;
  float _584;
  half _598;
  float _611;
  float _612;
  float _613;
  float _614;
  float _615;
  float _616;
  float _625;
  float _626;
  float _627;
  float _628;
  float _631;
  float _636;
  float _637;
  float _638;
  float _640;
  float _648;
  float _649;
  float _650;
  float _652;
  float _653;
  float _654;
  uint2 _656;
  int _666;
  float _669;
  float _670;
  float _671;
  float _673;
  float _674;
  float _675;
  float _676;
  int _678;
  int _679;
  int _681;
  int _682;
  float _684;
  float _685;
  float _686;
  float _687;
  float _693;
  float _694;
  float _695;
  float _696;
  float _697;
  float _702;
  float _703;
  float _704;
  float _705;
  float _707;
  float _711;
  float _712;
  float _713;
  float _715;
  float _716;
  float _717;
  float _718;
  float _728;
  float _731;
  float _739;
  bool _742;
  bool _743;
  bool _744;
  bool _745;
  float _762;
  float _771;
  float _780;
  float _781;
  float _782;
  float _783;
  float _784;
  float _785;
  float _786;
  float _787;
  float _788;
  float _790;
  float _794;
  float _795;
  float _796;
  float _797;
  float _801;
  float _802;
  float _803;
  float _811;
  float _815;
  float _816;
  float _817;
  float _819;
  float _820;
  float _821;
  float _822;
  float _823;
  float _824;
  float _825;
  float _827;
  float _828;
  float _829;
  float _830;
  float _831;
  float _832;
  float _834;
  float _836;
  float _837;
  int _838;
  bool _841;
  float _843;
  float _844;
  float _845;
  float _847;
  float _848;
  float _854;
  float _858;
  float _859;
  float _860;
  float _864;
  float _865;
  float _866;
  float _873;
  float _877;
  float _884;
  float _885;
  float _886;
  float _887;
  float _888;
  float _889;
  float _891;
  float _905;
  float _906;
  float _913;
  float _922;
  float _927;
  float _933;
  float _934;
  float _938;
  float _939;
  float _944;
  float _945;
  float _946;
  float _947;
  float _959;
  float _963;
  float _973;
  float _974;
  float _978;
  float _980;
  float _981;
  float _994;
  float _1001;
  float _1002;
  float _1015;
  float _1026;
  float _1031;
  float _1032;
  float _1048;
  float _1063;
  float _1064;
  float _1065;
  float _1081;
  float _1085;
  float _1086;
  float _1087;
  float _1094;
  float _1107;
  float _1110;
  float _1111;
  float _1113;
  float _1116;
  float _1117;
  float _1118;
  float _1122;
  float _1123;
  float _1124;
  float _1125;
  float _1126;
  float _1127;
  float _1139;
  float _1143;
  float _1147;
  float _1148;
  float _1149;
  float _1150;
  float _1162;
  float _1166;
  float _1182;
  float _1190;
  float _1191;
  float _1193;
  float _1196;
  float _1197;
  float _1205;
  float _1206;
  float _1218;
  float _1222;
  float _1244;
  float _1245;
  float _1247;
  float _1250;
  float _1251;
  float _1259;
  float _1271;
  float _1275;
  float _1282;
  float _1295;
  float _1299;
  float _1300;
  float _1301;
  float _1302;
  float _1303;
  float _1304;
  float _1306;
  float _1310;
  float _1311;
  float _1312;
  float _1313;
  float _1317;
  float _1318;
  float _1319;
  float _1327;
  float _1331;
  float _1332;
  float _1333;
  float _1335;
  float _1336;
  float _1337;
  float _1338;
  float _1339;
  float _1340;
  float _1341;
  float _1343;
  float _1347;
  float _1349;
  float _1351;
  float _1352;
  float _1366;
  float _1369;
  float _1403;
  float _1404;
  float _1405;
  float _1406;
  half _1417;
  half _1418;
  half _1419;
  half _1421;
  float _1433;
  bool _1434;
  float _1457;
  float _1458;
  float _1459;
  float _1460;
  float _1461;
  float _1463;
  float _1468;
  float _1478;
  float _1479;
  float _1480;
  float _1490;
  float _1491;
  float _1492;
  bool _1494;
  float _1495;
  float _1496;
  float _1497;
  float2 _1509;
  float2 _1515;
  float _1525;
  float _1533;
  float _1535;
  float _1542;
  float _1545;
  float _1546;
  float _1548;
  float _1556;
  float _1557;
  float _1558;
  float4 _1563;
  float _1567;
  float _1568;
  float _1569;
  float _1571;
  float _1575;
  float _1576;
  float _1577;
  float _1579;
  float2 _1592;
  float _1599;
  float _1612;
  float2 _1617;
  float2 _1622;
  float _1626;
  float _1628;
  float _1645;
  float _1649;
  float _1650;
  float _1651;
  float _1658;
  float2 _1682;
  float _1698;
  float _1699;
  float _1700;
  float _1701;
  float _1707;
  float _1722;
  float _1723;
  float _1724;
  float _1740;
  float _1741;
  float _1742;
  float _1744;
  int _22[4];
  _30 = (int)(SV_GroupID.x) & 3;
  _31 = (uint)((uint)(_30)) >> 1;
  _39 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 5))]);
  _22[0] = _39.x;
  _22[1] = _39.y;
  _22[2] = _39.z;
  _22[3] = _39.w;
  _49 = _22[(((uint)(SV_GroupID.x) >> 3) & 3)];
  _53 = select((((int)(SV_GroupID.x) & 4) == 0), _49, ((uint)((uint)(_49)) >> 16));
  _59 = (uint)((uint)((uint)((int)((int)(_30) - (int)((int)(_31) << 1)) << 4)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_53)) << 5)) & 8160));
  _61 = (uint)((uint)((uint)((int)(_31) << 4)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_53)) >> 3) & 8160));
  [branch]
  if (!(((((uint)(__3__36__0__0__g_tiledManyLightsMasks.Load(int3(((uint)((uint)(_59)) >> 5), ((uint)((uint)(_61)) >> 5), 0)))).x) & 1) == 0)) {
    if (_lightingParams.z > 0.0f) {
      _76 = __3__36__0__0__g_depthStencil.Load(int3(_59, _61, 0));  // [sem: _3__36__0__0__g_depthStencil_load]
      _80 = ((float)((uint)((uint)(_76.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
      if (!((_80 < 1e-07f) || (_80 == 1.0f))) {
        _85 = (uint)((uint)(_76.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _86 = _85 & 127;
        _89 = max(1e-07f, _80);
        _91 = (float)((uint)((uint)(_59)));
        _92 = (float)((uint)((uint)(_61)));
        _98 = _bufferSizeAndInvSize.z * (_91 + 0.5f);
        _99 = _bufferSizeAndInvSize.w * (_92 + 0.5f);
        _101 = (_98 * 2.0f) + -1.0f;
        _103 = 1.0f - (_99 * 2.0f);
        _139 = mad((_invViewProjRelative[3].z), _89, mad((_invViewProjRelative[3].y), _103, (_101 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
        _140 = (mad((_invViewProjRelative[0].z), _89, mad((_invViewProjRelative[0].y), _103, (_101 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _139;
        _141 = (mad((_invViewProjRelative[1].z), _89, mad((_invViewProjRelative[1].y), _103, (_101 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _139;
        _142 = (mad((_invViewProjRelative[2].z), _89, mad((_invViewProjRelative[2].y), _103, (_101 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _139;
        _148 = sqrt(((_141 * _141) + (_140 * _140)) + (_142 * _142));
        _149 = 1.0f / _148;
        _151 = __3__36__0__0__g_baseColor.Load(int3(_59, _61, 0));  // [sem: _3__36__0__0__g_baseColor_load]
        _157 = __3__36__0__0__g_normal.Load(int3(_59, _61, 0));  // [sem: _3__36__0__0__g_normal_load]
        _166 = half(((float)((uint)((uint)(((uint)((uint)(_151.x)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _170 = half(((float)((uint)((uint)(_151.x & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _175 = half(((float)((uint)((uint)(((uint)((uint)(_151.y)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _184 = half(((float)((uint)((uint)(((uint)((uint)(_151.z)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _200 = (uint)((_157.w * 3.0f) + 0.5f);  // [sem: _3__36__0__0__g_normal_load_derived]
        _202 = (_200 == 3);
        _212 = (saturate(_157.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
        _213 = (saturate(_157.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
        _214 = (saturate(_157.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
        _216 = rsqrt(dot(float3(_212, _213, _214), float3(_212, _213, _214)));  // [sem: invLength]
        _220 = half(_216 * _212);
        _221 = half(_216 * _213);
        _222 = half(_214 * _216);
        // [sem: _3__36__0__0__g_baseColor_load_derived]
        _225 = ((half)((half)(half(((float)((uint)((uint)(((uint)((uint)(_151.w)) >> 8) & 255)))) * 0.003921569f)) * 2.0h)) + -1.0h;
        _226 = ((half)((half)(half(((float)((uint)((uint)(_151.w & 255)))) * 0.003921569f)) * 2.0h)) + -1.0h;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _231 = float(_225 + _226) * 0.5f;
        _232 = float(_225 - _226) * 0.5f;
        _236 = (1.0f - abs(_231)) - abs(_232);
        _238 = rsqrt(dot(float3(_231, _232, _236), float3(_231, _232, _236)));  // [sem: invLength]
        _245 = float(_220);
        _246 = float(_221);
        _247 = float(_222);
        _249 = select((_222 >= 0.0h), 1.0f, -1.0f);
        _252 = -0.0f - (1.0f / (_249 + _247));
        _253 = _246 * _252;
        _254 = _253 * _245;
        _255 = _249 * _245;
        _262 = float(half(_238 * _231));
        _263 = float(half(_238 * _232));
        _264 = float(half(_238 * _236));
        _276 = half(mad(_264, _245, mad(_263, _254, (_262 * (((_255 * _245) * _252) + 1.0f)))));
        _277 = half(mad(_264, _246, mad(_263, ((_253 * _246) + _249), ((_262 * _249) * _254))));
        _278 = half(mad(_264, _247, mad(_263, (-0.0f - _246), (-0.0f - (_255 * _262)))));
        _280 = rsqrt((half)(dot(half3(_276, _277, _278), half3(_276, _277, _278))));  // [sem: invLength]
        _281 = _280 * _276;
        _282 = _280 * _277;
        _283 = _280 * _278;
        _287 = saturate((half)(_166 * _166));  // [sem: expr_sat]
        _288 = saturate((half)(_170 * _170));  // [sem: expr_sat]
        _289 = saturate((half)(_175 * _175));  // [sem: expr_sat]
        // [sem: expr_sat]
        _308 = saturate((half)(saturate((half)(((half)(((half)(_288 * 0.3395996h)) + ((half)(_287 * 0.61328125h)))) + ((half)(_289 * 0.04736328h))))));
        // [sem: expr_sat]
        _309 = saturate((half)(saturate((half)(((half)(((half)(_288 * 0.9165039h)) + ((half)(_287 * 0.07019043h)))) + ((half)(_289 * 0.013450623h))))));
        // [sem: expr_sat]
        _310 = saturate((half)(saturate((half)(((half)(((half)(_288 * 0.109558105h)) + ((half)(_287 * 0.020614624h)))) + ((half)(_289 * 0.8696289h))))));
        _311 = max(0.020004272h, _184);
        _312 = saturate((half)(half(((float)((uint)((uint)(_151.y & 255)))) * 0.003921569f)));  // [sem: expr_sat]
        _314 = _85 & 126;
        if ((uint)_86 > (uint)10) {
          _319 = select((((uint)_86 < (uint)20) || (_86 == 107)), 0.0f, _312);
          _323 = (int)(_86) + (int)(-105);
          if (!((_314 == 96) || (_86 == 98))) {
            if ((uint)_323 < (uint)2) {
              if (_200 == 1) {
                _337 = 0.0h;
              } else {
                _337 = _319;
              }
              _338 = (_86 == 19);
              if (!((uint)_323 < (uint)2)) {
                _341 = _337;
                _342 = _338;
                if (!((_314 == 26) || (_86 == 28))) {
                  _347 = _342;
                  _348 = _341;
                  _351 = _347;
                  _352 = _348;
                  _353 = (_86 == 107);
                } else {
                  _351 = _342;
                  _352 = _341;
                  _353 = true;
                }
              } else {
                _351 = _338;
                _352 = _337;
                _353 = true;
              }
            } else {
              if (_86 == 65) {
                _337 = 0.0h;
                _338 = (_86 == 19);
                if (!((uint)_323 < (uint)2)) {
                  _341 = _337;
                  _342 = _338;
                  if (!((_314 == 26) || (_86 == 28))) {
                    _347 = _342;
                    _348 = _341;
                    _351 = _347;
                    _352 = _348;
                    _353 = (_86 == 107);
                  } else {
                    _351 = _342;
                    _352 = _341;
                    _353 = true;
                  }
                } else {
                  _351 = _338;
                  _352 = _337;
                  _353 = true;
                }
              } else {
                if ((_86 == 24) || (_86 == 29)) {
                  _341 = 0.0h;
                  _342 = (_86 == 19);
                  if (!((_314 == 26) || (_86 == 28))) {
                    _347 = _342;
                    _348 = _341;
                    _351 = _347;
                    _352 = _348;
                    _353 = (_86 == 107);
                  } else {
                    _351 = _342;
                    _352 = _341;
                    _353 = true;
                  }
                } else {
                  _337 = _319;
                  _338 = (_86 == 19);
                  if (!((uint)_323 < (uint)2)) {
                    _341 = _337;
                    _342 = _338;
                    if (!((_314 == 26) || (_86 == 28))) {
                      _347 = _342;
                      _348 = _341;
                      _351 = _347;
                      _352 = _348;
                      _353 = (_86 == 107);
                    } else {
                      _351 = _342;
                      _352 = _341;
                      _353 = true;
                    }
                  } else {
                    _351 = _338;
                    _352 = _337;
                    _353 = true;
                  }
                }
              }
            }
          } else {
            _337 = 0.0h;
            _338 = (_86 == 19);
            if (!((uint)_323 < (uint)2)) {
              _341 = _337;
              _342 = _338;
              if (!((_314 == 26) || (_86 == 28))) {
                _347 = _342;
                _348 = _341;
                _351 = _347;
                _352 = _348;
                _353 = (_86 == 107);
              } else {
                _351 = _342;
                _352 = _341;
                _353 = true;
              }
            } else {
              _351 = _338;
              _352 = _337;
              _353 = true;
            }
          }
        } else {
          _347 = false;
          _348 = _312;
          _351 = _347;
          _352 = _348;
          _353 = (_86 == 107);
        }
        _355 = (_86 == 65);
        _356 = (_314 == 64);
        bool __branch_chain_350;
        if (_86 == 37) {
          _369 = 0.0h;
          __branch_chain_350 = true;
        } else {
          _360 = select((_86 == 55), 0.0f, _352);
          if (!((_86 == 54) || ((_86 == 33) || ((_86 == 53) || (_314 == 66))))) {
            _369 = _360;
            __branch_chain_350 = true;
          } else {
            __branch_chain_350 = false;
          }
        }
        if (__branch_chain_350) {
          if ((_86 == 55) || _356) {
            _373 = _369;
            _375 = __3__36__0__0__g_character.Load(int3(_59, _61, 0));  // [sem: _3__36__0__0__g_character_load]
            _386 = _373;
            _387 = (half)(half(saturate(_375.x)));
            _388 = (half)(half(saturate(_375.y)));
            _389 = (half)(half(saturate(_375.z)));
          } else {
            _386 = _369;
            _387 = 0.0h;
            _388 = 0.0h;
            _389 = 0.0h;
          }
        } else {
          _373 = _360;
          _375 = __3__36__0__0__g_character.Load(int3(_59, _61, 0));  // [sem: _3__36__0__0__g_character_load]
          _386 = _373;
          _387 = (half)(half(saturate(_375.x)));
          _388 = (half)(half(saturate(_375.y)));
          _389 = (half)(half(saturate(_375.z)));
        }
        _391 = float(_388);
        _395 = (float(_387) * 2.0f) + -1.0f;
        _396 = (_391 * 2.0f) + -1.0f;
        if (_314 == 66) {
          _424 = _395;
          _425 = _396;
          _426 = ((float(_389) * 2.0f) + -1.0f);
        } else {
          _403 = 1.0f - abs(_395);
          _404 = abs(_396);
          _405 = _403 - _404;
          if (!(_405 >= 0.0f)) {
            _416 = ((1.0f - _404) * select((_395 >= 0.0f), 1.0f, -1.0f));
            _417 = (_403 * select((_396 >= 0.0f), 1.0f, -1.0f));
          } else {
            _416 = _395;
            _417 = _396;
          }
          _419 = rsqrt(dot(float3(_416, _417, _405), float3(_416, _417, _405)));  // [sem: invLength]
          _424 = (_419 * _416);
          _425 = (_419 * _417);
          _426 = (_419 * _405);
        }
        _428 = (_lightingParams.x > 0.5f);
        if (_428) {
          _435 = (((float4)(__3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_98, _99), 0.0f))).y);
        } else {
          _435 = 0.0f;
        }
        if (!(_86 == 33)) {
          if (_86 == 54) {
            if ((((int)((uint)((half)(((half)(_389 * 255.0h)) + 0.5h)))) & 112) == 0) {
              _473 = 52;
              _474 = 0.0f;
              _475 = 0.0f;
              _476 = 0.0f;
            } else {
              _458 = (uint)((float(_389) * 255.0f) + 0.5f);
              _460 = ((uint)((uint)(_458)) >> 4) & 7;
              if (!(_460 == 0)) {
                _467 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_460) + (int)(1)))];
                _473 = _86;
                _474 = min((1.0f - _467.y), _467.x);
                _475 = (((float)((uint)((uint)(_458 & 15)))) * 0.06666667f);
                _476 = _467.x;
              } else {
                _473 = _86;
                _474 = 0.0f;
                _475 = 0.0f;
                _476 = 0.0f;
              }
            }
          } else {
            [branch]
            if (_86 == 55) {
              if ((((int)((uint)((half)(((half)(_389 * 255.0h)) + 0.5h)))) & 127) == 0) {
                _473 = 52;
                _474 = 0.0f;
                _475 = 0.0f;
                _476 = 0.0f;
              } else {
                _473 = 55;
                _474 = 0.0f;
                _475 = 0.0f;
                _476 = 0.0f;
              }
            } else {
              _473 = _86;
              _474 = 0.0f;
              _475 = 0.0f;
              _476 = 0.0f;
            }
          }
        } else {
          _458 = (uint)((float(_389) * 255.0f) + 0.5f);
          _460 = ((uint)((uint)(_458)) >> 4) & 7;
          if (!(_460 == 0)) {
            _467 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_460) + (int)(1)))];
            _473 = _86;
            _474 = min((1.0f - _467.y), _467.x);
            _475 = (((float)((uint)((uint)(_458 & 15)))) * 0.06666667f);
            _476 = _467.x;
          } else {
            _473 = _86;
            _474 = 0.0f;
            _475 = 0.0f;
            _476 = 0.0f;
          }
        }
        _477 = float(_386);
        if (_473 == 66) {
          _513 = _477;
          _514 = 66;
          _515 = 0.0h;
          _530 = (_148 * 2.0f) + 1.0f;
          _534 = (_513 * 7.0f) + 1.0f;
          // [sem: _3__36__0__0__g_blueNoise_sampleLod]
          _539 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((dot(float3(_140, _141, _142), float3(((_426 * _246) - (_425 * _247)), ((_424 * _247) - (_426 * _245)), ((_425 * _245) - (_424 * _246)))) * 2.0f) / _530) * _534), (((dot(float3(_140, _141, _142), float3(_424, _425, _426)) * 0.5f) / _530) * _534)), 0.0f);
          _543 = _513 * 0.5f;
          _544 = _539.x * 2.0f;
          _545 = _539.y * 2.0f;
          _546 = _539.z * 2.0f;
          _553 = ((1.0f - _544) * _543) + _544;
          _554 = ((1.0f - _545) * _543) + _545;
          _555 = ((1.0f - _546) * _543) + _546;
          if (_514 == 53) {
            _572 = _513;
            _573 = 53;
            _574 = _515;
            _575 = _553;
            _576 = _554;
            _577 = _555;
            _578 = (((asfloat(_globalLightParams.z) * float(_311)) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(half(((float)((uint)((uint)(_151.z & 255)))) * 0.003921569f))));
          } else {
            _572 = _513;
            _573 = _514;
            _574 = _515;
            _575 = _553;
            _576 = _554;
            _577 = _555;
            _578 = _bevelParams.y;
          }
        } else {
          if ((_473 == 67) || (_473 == 53)) {
            _488 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
            if (_477 > (frac(frac(dot(float2(((_488 * 32.665f) + _91), ((_488 * 11.815f) + _92)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f)) {
              _500 = 1.0f;
              _501 = 52;
              _502 = 0.0f;
              _508 = _500;
              _509 = _501;
              _510 = (half)(half(_502));
              if (_509 == 53) {
                _513 = _508;
                _514 = 53;
                _515 = _510;
                _530 = (_148 * 2.0f) + 1.0f;
                _534 = (_513 * 7.0f) + 1.0f;
                // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                _539 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((dot(float3(_140, _141, _142), float3(((_426 * _246) - (_425 * _247)), ((_424 * _247) - (_426 * _245)), ((_425 * _245) - (_424 * _246)))) * 2.0f) / _530) * _534), (((dot(float3(_140, _141, _142), float3(_424, _425, _426)) * 0.5f) / _530) * _534)), 0.0f);
                _543 = _513 * 0.5f;
                _544 = _539.x * 2.0f;
                _545 = _539.y * 2.0f;
                _546 = _539.z * 2.0f;
                _553 = ((1.0f - _544) * _543) + _544;
                _554 = ((1.0f - _545) * _543) + _545;
                _555 = ((1.0f - _546) * _543) + _546;
                if (_514 == 53) {
                  _572 = _513;
                  _573 = 53;
                  _574 = _515;
                  _575 = _553;
                  _576 = _554;
                  _577 = _555;
                  _578 = (((asfloat(_globalLightParams.z) * float(_311)) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(half(((float)((uint)((uint)(_151.z & 255)))) * 0.003921569f))));
                } else {
                  _572 = _513;
                  _573 = _514;
                  _574 = _515;
                  _575 = _553;
                  _576 = _554;
                  _577 = _555;
                  _578 = _bevelParams.y;
                }
              } else {
                _572 = _508;
                _573 = _509;
                _574 = _510;
                _575 = 0.0f;
                _576 = 0.0f;
                _577 = 0.0f;
                _578 = 0.0f;
              }
            } else {
              bool __branch_chain_504;
              if ((_473 & 126) == 66) {
                _513 = 1.0f;
                _514 = _473;
                _515 = 0.0h;
                __branch_chain_504 = true;
              } else {
                _508 = 1.0f;
                _509 = _473;
                _510 = 0.0h;
                if (_509 == 53) {
                  _513 = _508;
                  _514 = 53;
                  _515 = _510;
                  __branch_chain_504 = true;
                } else {
                  _572 = _508;
                  _573 = _509;
                  _574 = _510;
                  _575 = 0.0f;
                  _576 = 0.0f;
                  _577 = 0.0f;
                  _578 = 0.0f;
                  __branch_chain_504 = false;
                }
              }
              if (__branch_chain_504) {
                _530 = (_148 * 2.0f) + 1.0f;
                _534 = (_513 * 7.0f) + 1.0f;
                // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                _539 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((dot(float3(_140, _141, _142), float3(((_426 * _246) - (_425 * _247)), ((_424 * _247) - (_426 * _245)), ((_425 * _245) - (_424 * _246)))) * 2.0f) / _530) * _534), (((dot(float3(_140, _141, _142), float3(_424, _425, _426)) * 0.5f) / _530) * _534)), 0.0f);
                _543 = _513 * 0.5f;
                _544 = _539.x * 2.0f;
                _545 = _539.y * 2.0f;
                _546 = _539.z * 2.0f;
                _553 = ((1.0f - _544) * _543) + _544;
                _554 = ((1.0f - _545) * _543) + _545;
                _555 = ((1.0f - _546) * _543) + _546;
                if (_514 == 53) {
                  _572 = _513;
                  _573 = 53;
                  _574 = _515;
                  _575 = _553;
                  _576 = _554;
                  _577 = _555;
                  _578 = (((asfloat(_globalLightParams.z) * float(_311)) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(half(((float)((uint)((uint)(_151.z & 255)))) * 0.003921569f))));
                } else {
                  _572 = _513;
                  _573 = _514;
                  _574 = _515;
                  _575 = _553;
                  _576 = _554;
                  _577 = _555;
                  _578 = _bevelParams.y;
                }
              }
            }
          } else {
            _500 = 0.0f;
            _501 = _473;
            _502 = _477;
            _508 = _500;
            _509 = _501;
            _510 = (half)(half(_502));
            if (_509 == 53) {
              _513 = _508;
              _514 = 53;
              _515 = _510;
              _530 = (_148 * 2.0f) + 1.0f;
              _534 = (_513 * 7.0f) + 1.0f;
              // [sem: _3__36__0__0__g_blueNoise_sampleLod]
              _539 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((dot(float3(_140, _141, _142), float3(((_426 * _246) - (_425 * _247)), ((_424 * _247) - (_426 * _245)), ((_425 * _245) - (_424 * _246)))) * 2.0f) / _530) * _534), (((dot(float3(_140, _141, _142), float3(_424, _425, _426)) * 0.5f) / _530) * _534)), 0.0f);
              _543 = _513 * 0.5f;
              _544 = _539.x * 2.0f;
              _545 = _539.y * 2.0f;
              _546 = _539.z * 2.0f;
              _553 = ((1.0f - _544) * _543) + _544;
              _554 = ((1.0f - _545) * _543) + _545;
              _555 = ((1.0f - _546) * _543) + _546;
              if (_514 == 53) {
                _572 = _513;
                _573 = 53;
                _574 = _515;
                _575 = _553;
                _576 = _554;
                _577 = _555;
                _578 = (((asfloat(_globalLightParams.z) * float(_311)) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(half(((float)((uint)((uint)(_151.z & 255)))) * 0.003921569f))));
              } else {
                _572 = _513;
                _573 = _514;
                _574 = _515;
                _575 = _553;
                _576 = _554;
                _577 = _555;
                _578 = _bevelParams.y;
              }
            } else {
              _572 = _508;
              _573 = _509;
              _574 = _510;
              _575 = 0.0f;
              _576 = 0.0f;
              _577 = 0.0f;
              _578 = 0.0f;
            }
          }
        }
        _582 = float(select(_355, _220, _281));
        _583 = float(select(_355, _221, _282));
        _584 = float(select(_355, _222, _283));
        if (_573 == 52) {
          _592 = (half)(saturate((half)(((half)(((half)(_309 + _308)) + _310)) * 1.2001953h)));
        } else {
          _592 = 1.0h;
        }
        _598 = ((half)(0.7001953h / (half)(min((half)(max((half)(max((half)(max(_308, _309)), _310)), 0.010002136h)), 0.7001953h)))) * _592;
        _611 = float(((half)(((half)(((half)(_598 * _308)) + -0.040008545h)) * _574)) + 0.040008545h);
        _612 = float(((half)(((half)(((half)(_598 * _309)) + -0.040008545h)) * _574)) + 0.040008545h);
        _613 = float(((half)(((half)(((half)(_598 * _310)) + -0.040008545h)) * _574)) + 0.040008545h);
        _614 = float(_281);
        _615 = float(_282);
        _616 = float(_283);
        if (_428) {
          _625 = float(saturate((half)((half)(rsqrt((half)(dot(half3(_220, _221, _222), half3(_220, _221, _222))))) * _221)));
          _626 = _625 * _625;
          _627 = _626 * _626;
          _628 = _627 * _627;
          _631 = (_628 * _628) * (_435 * select(((_86 == 29) || (_351 || _353)), 0.0f, 1.0f));
          _636 = _614 - (_631 * _614);
          _637 = (_631 * (1.0f - _615)) + _615;
          _638 = _616 - (_631 * _616);
          _640 = rsqrt(dot(float3(_636, _637, _638), float3(_636, _637, _638)));  // [sem: invLength]
          _645 = (_636 * _640);
          _646 = (_637 * _640);
          _647 = (_638 * _640);
        } else {
          _645 = _614;
          _646 = _615;
          _647 = _616;
        }
        _648 = float(_311);
        _649 = _648 * _648;
        _650 = _649 * _649;
        _652 = float(_311 * 0.60009766h);
        _653 = _652 * _652;
        _654 = _653 * _653;
        _656 = __3__36__0__0__g_manyLightsHitData.Load(int3(_59, _61, 0));  // [sem: _3__36__0__0__g_manyLightsHitData_load]
        _666 = select((((int)(_656.x) | (int)(_656.y)) != 0), (((uint)((uint)(_656.x)) >> 16) & 32767), 32767);
        _669 = __3__37__0__0__g_manyLightsDataBuffer[_666]._position.x;
        _670 = __3__37__0__0__g_manyLightsDataBuffer[_666]._position.y;
        _671 = __3__37__0__0__g_manyLightsDataBuffer[_666]._position.z;
        _673 = __3__37__0__0__g_manyLightsDataBuffer[_666]._color.x;
        _674 = __3__37__0__0__g_manyLightsDataBuffer[_666]._color.y;
        _675 = __3__37__0__0__g_manyLightsDataBuffer[_666]._color.z;
        _676 = __3__37__0__0__g_manyLightsDataBuffer[_666]._color.w;
        _678 = __3__37__0__0__g_manyLightsDataBuffer[_666]._up.x;
        _679 = __3__37__0__0__g_manyLightsDataBuffer[_666]._up.y;
        _681 = __3__37__0__0__g_manyLightsDataBuffer[_666]._look.x;
        _682 = __3__37__0__0__g_manyLightsDataBuffer[_666]._look.y;
        _684 = (float)((bool)((((float)((uint)((uint)(_656.x & 65535)))) * 0.01560998f) >= 1000.0f));  // [sem: _3__36__0__0__g_manyLightsHitData_load_derived]
        _685 = _669 - _140;
        _686 = _670 - _141;
        _687 = _671 - _142;
        _693 = sqrt(((_685 * _685) + (_686 * _686)) + (_687 * _687));
        _694 = 1.0f / _693;
        _695 = _694 * _685;
        _696 = _694 * _686;
        _697 = _694 * _687;
        _702 = f16tof32(((uint)(_678 & 65535)));
        _703 = f16tof32(((uint)((uint)((uint)(_678)) >> 16)));
        _704 = f16tof32(((uint)(_679 & 65535)));
        _705 = f16tof32(((uint)((uint)((uint)(_679)) >> 16)));
        _707 = rsqrt(dot(float3(_702, _703, _704), float3(_702, _703, _704)));  // [sem: invLength]
        _711 = f16tof32(((uint)(_681 & 65535)));
        _712 = f16tof32(((uint)((uint)((uint)(_681)) >> 16)));
        _713 = f16tof32(((uint)(_682 & 65535)));
        _715 = rsqrt(dot(float3(_711, _712, _713), float3(_711, _712, _713)));  // [sem: invLength]
        _716 = _715 * _711;
        _717 = _715 * _712;
        _718 = _715 * _713;
        if (!(!(_705 >= 0.0f))) {
          _728 = mad(_697, (_707 * _704), mad(_696, (_707 * _703), ((_695 * _702) * _707)));
          _731 = mad(_697, _718, mad(_696, _717, (_716 * _695)));
          _739 = atan((-0.0f - _731) / (-0.0f - _728));
          _742 = (_728 > -0.0f);
          _743 = (_728 == -0.0f);
          _744 = (_731 <= -0.0f);
          _745 = (_731 > -0.0f);
          // [sem: _3__36__0__0__g_lightProfile_sampleLod]
          _762 = __3__36__0__0__g_lightProfile.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((asin(dot(float3(_695, _696, _697), float3(_716, _717, _718))) * 0.31830987f) + 0.5f), ((abs(f16tof32(((uint)((uint)((uint)(_682)) >> 16)))) * saturate(abs(select((_743 && _744), 0.5f, select((_743 && _745), -0.5f, (select((_742 && _745), (_739 + -3.1415927f), select((_742 && _744), (_739 + 3.1415927f), _739)) * 0.31830987f)))))) + _705)), 0.0f);
          _768 = (_762.x * _673);
          _769 = (_762.x * _674);
          _770 = (_762.x * _675);
        } else {
          _768 = _673;
          _769 = _674;
          _770 = _675;
        }
        _771 = abs(_676);
        _780 = _149 * _140;
        _781 = _149 * _141;
        _782 = _149 * _142;
        _783 = _695 * _693;
        _784 = _696 * _693;
        _785 = _697 * _693;
        _786 = -0.0f - _780;
        _787 = -0.0f - _781;
        _788 = -0.0f - _782;
        _790 = dot(float3(_786, _787, _788), float3(_582, _583, _584)) * 2.0f;
        _794 = _786 - (_790 * _582);
        _795 = _787 - (_790 * _583);
        _796 = _788 - (_790 * _584);
        _797 = dot(float3(_783, _784, _785), float3(_794, _795, _796));
        _801 = (_794 * _797) - _783;
        _802 = (_795 * _797) - _784;
        _803 = (_796 * _797) - _785;
        _811 = saturate(_771 / sqrt(((_801 * _801) + (_802 * _802)) + (_803 * _803)));  // [sem: expr_sat]
        _815 = (_801 * _811) + _783;
        _816 = (_802 * _811) + _784;
        _817 = (_803 * _811) + _785;
        _819 = rsqrt(dot(float3(_815, _816, _817), float3(_815, _816, _817)));  // [sem: invLength]
        _820 = _815 * _819;
        _821 = _816 * _819;
        _822 = _817 * _819;
        _823 = _820 - _780;
        _824 = _821 - _781;
        _825 = _822 - _782;
        _827 = rsqrt(dot(float3(_823, _824, _825), float3(_823, _824, _825)));  // [sem: invLength]
        _828 = _823 * _827;
        _829 = _824 * _827;
        _830 = _825 * _827;
        _831 = dot(float3(_582, _583, _584), float3(_820, _821, _822));
        _832 = dot(float3(_645, _646, _647), float3(_820, _821, _822));
        _834 = saturate(dot(float3(_582, _583, _584), float3(_786, _787, _788)));  // [sem: expr_sat]
        _836 = saturate(dot(float3(_645, _646, _647), float3(_828, _829, _830)));  // [sem: expr_sat]
        _837 = dot(float3(_786, _787, _788), float3(_828, _829, _830));
        _838 = _573 & -2;
        _841 = (_573 == 53) || (_838 == 66);
        if (_841) {
          _843 = float(_308);
          _844 = float(_309);
          _845 = float(_310);
          _847 = dot(float3(_424, _425, _426), float3(_820, _821, _822));
          _848 = dot(float3(_424, _425, _426), float3(_786, _787, _788));
          _854 = cos(abs(asin(_848) - asin(_847)) * 0.5f);
          _858 = _820 - (_847 * _424);
          _859 = _821 - (_847 * _425);
          _860 = _822 - (_847 * _426);
          _864 = _786 - (_848 * _424);
          _865 = _787 - (_848 * _425);
          _866 = _788 - (_848 * _426);
          // [sem: invLength]
          _873 = rsqrt((dot(float3(_864, _865, _866), float3(_864, _865, _866)) * dot(float3(_858, _859, _860), float3(_858, _859, _860))) + 0.0001f) * dot(float3(_858, _859, _860), float3(_864, _865, _866));
          _877 = sqrt(saturate((_873 * 0.5f) + 0.5f));
          _884 = min(max(_648, 0.09803922f), 1.0f);
          _885 = _884 * _884;
          _886 = _885 * 0.5f;
          _887 = _885 * 2.0f;
          _888 = _848 + _847;
          _889 = _888 + (_578 * 2.0f);
          _891 = (_877 * 1.4142135f) * _885;
          _905 = 1.0f - sqrt(saturate((dot(float3(_786, _787, _788), float3(_820, _821, _822)) * 0.5f) + 0.5f));
          _906 = _905 * _905;
          _913 = _888 - _578;
          _922 = 1.0f / ((1.19f / _854) + (_854 * 0.36f));
          _927 = ((_922 * (0.6f - (_873 * 0.8f))) + 1.0f) * _877;
          _933 = 1.0f - (sqrt(saturate(1.0f - (_927 * _927))) * _854);
          _934 = _933 * _933;
          _938 = 0.9534794f - ((_934 * _934) * (_933 * 0.9534794f));
          _939 = _922 * _927;
          _944 = (sqrt(1.0f - (_939 * _939)) * 0.5f) / _854;
          _945 = log2(_843);
          _946 = log2(_844);
          _947 = log2(_845);
          _959 = ((_938 * _938) * (exp2((((_913 * _913) * -0.5f) / (_886 * _886)) * 1.442695f) / (_885 * 1.2533141f))) * exp2(-5.741926f - (_873 * 5.265837f));
          _963 = _888 - (_578 * 4.0f);
          _973 = 1.0f - (_854 * 0.5f);
          _974 = _973 * _973;
          _978 = (_974 * _974) * (0.9534794f - (_854 * 0.4767397f));
          _980 = 0.9534794f - _978;
          _981 = 0.8f / _854;
          _994 = (((_980 * _980) * (_978 + 0.046520565f)) * (exp2((((_963 * _963) * -0.5f) / (_887 * _887)) * 1.442695f) / (_885 * 5.0132565f))) * exp2((_873 * 24.525816f) + -24.208424f);
          _1001 = saturate(_832);  // [sem: _832_sat]
          _1002 = (((_877 * 0.25f) * (exp2((((_889 * _889) * -0.5f) / (_891 * _891)) * 1.442695f) / (_891 * 2.5066283f))) * (((_906 * _906) * (_905 * 0.9534794f)) + 0.046520565f)) * _1001;
          _1015 = -0.0f - _1001;
          _1026 = saturate((_832 + 1.0f) * 0.25f);  // [sem: expr_sat]
          _1031 = max(0.001f, dot(float3(_843, _844, _845), float3(0.3f, 0.59f, 0.11f)));
          _1032 = 1.0f - _684;
          _1048 = ((((1.0f - abs(_832)) - _1026) * 0.33f) + _1026) * 0.039788734f;
          _1395 = (((exp2(log2(_843 / _1031) * _1032) * _1048) * sqrt(_843)) - min(0.0f, (((_994 * exp2(_981 * _945)) + (_959 * exp2(_945 * _944))) * _1015)));
          _1396 = (((exp2(log2(_844 / _1031) * _1032) * _1048) * sqrt(_844)) - min(0.0f, (((_994 * exp2(_981 * _946)) + (_959 * exp2(_946 * _944))) * _1015)));
          _1397 = (((exp2(log2(_845 / _1031) * _1032) * _1048) * sqrt(_845)) - min(0.0f, (((_994 * exp2(_981 * _947)) + (_959 * exp2(_947 * _944))) * _1015)));
          _1398 = (-0.0f - min(0.0f, (-0.0f - (_575 * _1002))));
          _1399 = (-0.0f - min(0.0f, (-0.0f - (_576 * _1002))));
          _1400 = (-0.0f - min(0.0f, (-0.0f - (_577 * _1002))));
          _1401 = 0.0f;
        } else {
          if ((_573 == 33) || (_573 == 54)) {
            _1063 = float(_308);
            _1064 = float(_309);
            _1065 = float(_310);
            _1081 = max(dot(float3(_1063, _1064, _1065), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
            _1085 = sqrt(_1063) - _1081;
            _1086 = sqrt(_1064) - _1081;
            _1087 = sqrt(_1065) - _1081;
            _1094 = saturate(1.0f - (pow(_834, 4.0f)));  // [sem: expr_sat]
            _1107 = (((_1086 * _474) + _1081) + ((_1086 * (_476 - _474)) * _1094)) * _475;
            _1110 = saturate(1.0f - saturate(_837));  // [sem: expr_sat]
            _1111 = _1110 * _1110;
            _1113 = (_1111 * _1111) * _1110;
            _1116 = _1113 * saturate(_1107 * 50.0f);
            _1117 = 1.0f - _1113;
            _1118 = _1117 * _475;
            _1122 = (_1118 * (((_1085 * _474) + _1081) + (_1094 * (_1085 * (_476 - _474))))) + _1116;
            _1123 = (_1117 * _1107) + _1116;
            _1124 = (_1118 * (((_1087 * _474) + _1081) + ((_1087 * (_476 - _474)) * _1094))) + _1116;
            _1125 = min(_836, 0.9999f);
            _1126 = _1125 * _1125;
            _1127 = 1.0f - _1126;
            _1139 = (((exp2(((-0.0f - _1126) / (_1127 * _650)) * 1.442695f) * 4.0f) / (_1127 * _1127)) + 1.0f) / ((_650 * 12.566371f) + 3.1415927f);
            _1143 = ((_834 + _832) - (_834 * _832)) * 4.0f;
            _1147 = (_1122 * _1139) / _1143;
            _1148 = (_1123 * _1139) / _1143;
            _1149 = (_1124 * _1139) / _1143;
            _1150 = 1.0f - _649;
            _1162 = (((_836 * _650) - _836) * _836) + 1.0f;
            _1166 = (_650 / ((_1162 * _1162) * 3.1415927f)) * (0.5f / ((((_834 * _1150) + _649) * _831) + (_834 * ((_831 * _1150) + _649))));
            _1182 = saturate(_832);  // [sem: _832_sat]
            _1395 = 0.0f;
            _1396 = 0.0f;
            _1397 = 0.0f;
            _1398 = ((((max((_1166 * _1122), 0.0f) - _1147) * _474) + _1147) * _1182);
            _1399 = ((((max((_1166 * _1123), 0.0f) - _1148) * _474) + _1148) * _1182);
            _1400 = ((((max((_1166 * _1124), 0.0f) - _1149) * _474) + _1149) * _1182);
            _1401 = ((saturate(_831) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _476) + 1.0f));
          } else {
            if (!(_831 <= 0.0f)) {
              _1190 = saturate(1.0f - _837);  // [sem: expr_sat]
              _1191 = _1190 * _1190;
              _1193 = (_1191 * _1191) * _1190;
              _1196 = _1193 * saturate(_612 * 50.0f);
              _1197 = 1.0f - _1193;
              _1205 = saturate(_832);  // [sem: _832_sat]
              _1206 = 1.0f - _649;
              _1218 = (((_836 * _650) - _836) * _836) + 1.0f;
              _1222 = (_650 / ((_1218 * _1218) * 3.1415927f)) * (0.5f / ((((_834 * _1206) + _649) * _832) + (_834 * ((_832 * _1206) + _649))));
              _1233 = (max((((_1197 * _611) + _1196) * _1222), 0.0f) * _1205);
              _1234 = (max((((_1197 * _612) + _1196) * _1222), 0.0f) * _1205);
              _1235 = (max((((_1197 * _613) + _1196) * _1222), 0.0f) * _1205);
              _1236 = (_831 * 0.31830987f);
            } else {
              _1233 = 0.0f;
              _1234 = 0.0f;
              _1235 = 0.0f;
              _1236 = 0.0f;
            }
            if (_356) {
              if (!(_573 == 65)) {
                _1244 = saturate(1.0f - _837);  // [sem: expr_sat]
                _1245 = _1244 * _1244;
                _1247 = (_1245 * _1245) * _1244;
                _1250 = _1247 * saturate(_612 * 50.0f);
                _1251 = 1.0f - _1247;
                _1259 = 1.0f - _653;
                _1271 = (((_836 * _654) - _836) * _836) + 1.0f;
                _1275 = (_654 / ((_1271 * _1271) * 3.1415927f)) * (0.5f / ((((_834 * _1259) + _653) * _832) + (_834 * ((_832 * _1259) + _653))));
                _1282 = saturate(_832) * 0.39990234f;
                _1395 = 0.0f;
                _1396 = 0.0f;
                _1397 = 0.0f;
                _1398 = ((max((((_1251 * _611) + _1250) * _1275), 0.0f) * _1282) + (_1233 * 0.60009766f));
                _1399 = ((max((((_1251 * _612) + _1250) * _1275), 0.0f) * _1282) + (_1234 * 0.60009766f));
                _1400 = ((max((((_1251 * _613) + _1250) * _1275), 0.0f) * _1282) + (_1235 * 0.60009766f));
                _1401 = _1236;
              } else {
                _1395 = 0.0f;
                _1396 = 0.0f;
                _1397 = 0.0f;
                _1398 = _1233;
                _1399 = _1234;
                _1400 = _1235;
                _1401 = _1236;
              }
            } else {
              if ((_573 == 37) || (_573 == 55)) {
                _1295 = dot(float3(_786, _787, _788), float3(_645, _646, _647)) * 2.0f;
                _1299 = _786 - (_1295 * _645);
                _1300 = _787 - (_1295 * _646);
                _1301 = _788 - (_1295 * _647);
                _1302 = -0.0f - _1299;
                _1303 = -0.0f - _1300;
                _1304 = -0.0f - _1301;
                _1306 = dot(float3(_1302, _1303, _1304), float3(_582, _583, _584)) * 2.0f;
                _1310 = _1302 - (_1306 * _582);
                _1311 = _1303 - (_1306 * _583);
                _1312 = _1304 - (_1306 * _584);
                _1313 = dot(float3(_783, _784, _785), float3(_1310, _1311, _1312));
                _1317 = (_1310 * _1313) - _783;
                _1318 = (_1311 * _1313) - _784;
                _1319 = (_1312 * _1313) - _785;
                _1327 = saturate(_771 / sqrt(((_1317 * _1317) + (_1318 * _1318)) + (_1319 * _1319)));  // [sem: expr_sat]
                _1331 = (_1317 * _1327) + _783;
                _1332 = (_1318 * _1327) + _784;
                _1333 = (_1319 * _1327) + _785;
                _1335 = rsqrt(dot(float3(_1331, _1332, _1333), float3(_1331, _1332, _1333)));  // [sem: invLength]
                _1336 = _1331 * _1335;
                _1337 = _1332 * _1335;
                _1338 = _1333 * _1335;
                _1339 = _1336 - _1299;
                _1340 = _1337 - _1300;
                _1341 = _1338 - _1301;
                _1343 = rsqrt(dot(float3(_1339, _1340, _1341), float3(_1339, _1340, _1341)));  // [sem: invLength]
                _1347 = dot(float3(_645, _646, _647), float3(_1336, _1337, _1338));
                _1349 = saturate(dot(float3(_582, _583, _584), float3(_1302, _1303, _1304)));  // [sem: expr_sat]
                // [sem: expr_sat]
                _1351 = saturate(dot(float3(_645, _646, _647), float3((_1339 * _1343), (_1340 * _1343), (_1341 * _1343))));
                _1352 = saturate(_1347);  // [sem: _1347_sat]
                _1366 = 1.0f - ((_1351 * _1351) * 0.9f);
                _1369 = (0.03183099f / (_1366 * _1366)) * (0.5f / ((((_1349 * 0.9f) + 0.1f) * _1347) + (_1349 * ((_1347 * 0.9f) + 0.1f))));
                _1395 = 0.0f;
                _1396 = 0.0f;
                _1397 = 0.0f;
                _1398 = (((float(half(max((_1369 * float(_308)), 0.0f) * _1352)) - _1233) * 0.875f) + _1233);
                _1399 = (((float(half(max((_1369 * float(_309)), 0.0f) * _1352)) - _1234) * 0.875f) + _1234);
                _1400 = (((float(half(max((_1369 * float(_310)), 0.0f) * _1352)) - _1235) * 0.875f) + _1235);
                _1401 = _1236;
              } else {
                _1395 = 0.0f;
                _1396 = 0.0f;
                _1397 = 0.0f;
                _1398 = _1233;
                _1399 = _1234;
                _1400 = _1235;
                _1401 = _1236;
              }
            }
          }
        }
        // [sem: expr_sat]
        _1403 = saturate(select((_771 > 99999.0f), 1.0f, (1.0f / max((_771 * _771), (_693 * _693))))) * (_684 * asfloat(_656.y));
        _1404 = _1403 * _768;
        _1405 = _1403 * _769;
        _1406 = _1403 * _770;
        if (_841) {
          _1417 = ((half)(_387 * 2.0h)) + -1.0h;
          _1418 = ((half)(_388 * 2.0h)) + -1.0h;
          _1419 = ((half)(_389 * 2.0h)) + -1.0h;
          _1421 = rsqrt((half)(dot(half3(_1417, _1418, _1419), half3(_1417, _1418, _1419))));  // [sem: invLength]
          _1429 = 0.0h;
          _1430 = float(_1421 * _1417);
          _1431 = float(_1421 * _1418);
          _1432 = float(_1421 * _1419);
        } else {
          _1429 = _574;
          _1430 = 0.0f;
          _1431 = 1.0f;
          _1432 = 0.0f;
        }
        _1433 = float(_184);
        _1434 = (_838 == 64);
        if ((((int)(uint)(_1434)) & (((int)(uint)(_202)) ^ 1)) == 0) {
          _1453 = saturate(exp2((_1433 * _1433) * ((_nearFarProj.x / _89) * -0.00577078f)));  // [sem: expr_sat]
        } else {
          _1453 = select((_cavityParams.z > 0.0f), select(_202, 0.0f, _391), 1.0f);  // [sem: expr_sat]
        }
        _1457 = select((_cavityParams.x == 0.0f), 1.0f, _1453);
        _1458 = float(_1429);
        _1459 = float(_308);
        _1460 = float(_309);
        _1461 = float(_310);
        _1463 = saturate(dot(float3(_786, _787, _788), float3(_645, _646, _647)));  // [sem: expr_sat]
        _1468 = 0.7f / min(max(max(max(_1459, _1460), _1461), 0.01f), 0.7f);
        _1478 = (((_1468 * _1459) + -0.04f) * _1458) + 0.04f;
        _1479 = (((_1468 * _1460) + -0.04f) * _1458) + 0.04f;
        _1480 = (((_1468 * _1461) + -0.04f) * _1458) + 0.04f;
        if (_1434) {
          _1486 = (_1478 * _1457);
          _1487 = (_1479 * _1457);
          _1488 = (_1480 * _1457);
        } else {
          _1486 = _1478;
          _1487 = _1479;
          _1488 = _1480;
        }
        _1490 = _1459 * 0.875f;
        _1491 = _1460 * 0.875f;
        _1492 = _1461 * 0.875f;
        if (!(_573 == 37)) {
          _1494 = (_573 == 55);
          _1495 = select(_1494, _1490, _1486);
          _1496 = select(_1494, _1491, _1487);
          _1497 = select(_1494, _1492, _1488);
          if (_841) {
            // [sem: _3__36__0__0__g_hairBrdfLookup_sampleLod]
            _1509 = __3__36__0__0__g_hairBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, (1.0f - saturate(abs(dot(float3(_1430, _1431, _1432), float3(_780, _781, _782)))))), (1.0f - max(0.75f, (_648 * 2.0f)))), 0.0f);
            // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
            _1515 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1463), (1.0f - _648)), 0.0f);
            _1525 = (lerp(_1509.y, _1515.y, _572)) + ((lerp(_1509.x, _1515.x, _572)) * 0.01f);  // [sem: blended]
            _1692 = _1525;
            _1693 = _1525;
            _1694 = _1525;
          } else {
            if ((uint)((int)(_573) + (int)(-97)) < (uint)2) {
              if (!(abs(_246) > 0.99f)) {
                _1533 = -0.0f - _247;
                _1535 = rsqrt(dot(float3(_1533, 0.0f, _245), float3(_1533, 0.0f, _245)));  // [sem: invLength]
                _1539 = (_1535 * _1533);
                _1540 = (_1535 * _245);
              } else {
                _1539 = 1.0f;
                _1540 = 0.0f;
              }
              _1542 = -0.0f - (_246 * _1540);
              _1545 = (_1540 * _245) - (_1539 * _247);
              _1546 = _1539 * _246;
              _1548 = rsqrt(dot(float3(_1542, _1545, _1546), float3(_1542, _1545, _1546)));  // [sem: invLength]
              _1556 = _viewPos.x + _140;
              _1557 = _viewPos.y + _141;
              _1558 = _viewPos.z + _142;
              // [sem: _3__36__0__0__g_blueNoise_sampleLod]
              _1563 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_1539, 0.0f, _1540), float3(_1556, _1557, _1558)), dot(float3((_1548 * _1542), (_1545 * _1548), (_1548 * _1546)), float3(_1556, _1557, _1558))), 0.0f);
              _1567 = _1563.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
              _1568 = _1563.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
              _1569 = _1563.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
              _1571 = rsqrt(dot(float3(_1567, _1568, _1569), float3(_1567, _1568, _1569)));  // [sem: invLength]
              _1575 = (_1567 * _1571) + _645;
              _1576 = (_1568 * _1571) + _646;
              _1577 = (_1569 * _1571) + _647;
              _1579 = rsqrt(dot(float3(_1575, _1576, _1577), float3(_1575, _1576, _1577)));  // [sem: invLength]
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _1592 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1463), (1.0f - _648)), 0.0f);
              _1599 = _1592.y + (exp2(log2(saturate(dot(float3(_786, _787, _788), float3((_1575 * _1579), (_1576 * _1579), (_1577 * _1579))))) * 512.0f) * 20.0f);
              _1692 = (_1599 + (_1592.x * _1495));
              _1693 = (_1599 + (_1592.x * _1496));
              _1694 = (_1599 + (_1592.x * _1497));
            } else {
              _1604 = _1495;
              _1605 = _1496;
              _1606 = _1497;
              if (_1434) {
                if (_573 == 65) {
                  _1675 = _1604;
                  _1676 = _1605;
                  _1677 = _1606;
                  // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
                  _1682 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1463), (1.0f - _648)), 0.0f);
                  _1692 = ((_1682.x * _1675) + _1682.y);
                  _1693 = ((_1682.x * _1676) + _1682.y);
                  _1694 = ((_1682.x * _1677) + _1682.y);
                } else {
                  _1612 = min(0.99f, _1463);
                  // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
                  _1617 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1612, saturate(1.0f - (_648 * 1.33f))), 0.0f);
                  // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
                  _1622 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1612, saturate(1.0f - (_648 * 0.47998047f))), 0.0f);
                  _1626 = (_1622.x + _1617.x) * 0.5f;
                  _1628 = (_1622.y + _1617.y) * 0.5f;
                  _1692 = ((_1626 * _1604) + _1628);
                  _1693 = ((_1626 * _1605) + _1628);
                  _1694 = ((_1626 * _1606) + _1628);
                }
              } else {
                if ((_573 == 33) || (_573 == 54)) {
                  _1645 = max(dot(float3(_1459, _1460, _1461), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
                  _1649 = sqrt(_1459) - _1645;
                  _1650 = sqrt(_1460) - _1645;
                  _1651 = sqrt(_1461) - _1645;
                  _1658 = saturate(1.0f - (pow(_1463, 4.0f)));  // [sem: expr_sat]
                  _1675 = ((((_1649 * _474) + _1645) + (_1658 * (_1649 * (_476 - _474)))) * _475);
                  _1676 = ((((_1650 * _474) + _1645) + ((_1650 * (_476 - _474)) * _1658)) * _475);
                  _1677 = ((((_1651 * _474) + _1645) + ((_1651 * (_476 - _474)) * _1658)) * _475);
                } else {
                  _1675 = _1604;
                  _1676 = _1605;
                  _1677 = _1606;
                }
                // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
                _1682 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1463), (1.0f - _648)), 0.0f);
                _1692 = ((_1682.x * _1675) + _1682.y);
                _1693 = ((_1682.x * _1676) + _1682.y);
                _1694 = ((_1682.x * _1677) + _1682.y);
              }
            }
          }
        } else {
          _1604 = _1490;
          _1605 = _1491;
          _1606 = _1492;
          if (_1434) {
            if (_573 == 65) {
              _1675 = _1604;
              _1676 = _1605;
              _1677 = _1606;
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _1682 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1463), (1.0f - _648)), 0.0f);
              _1692 = ((_1682.x * _1675) + _1682.y);
              _1693 = ((_1682.x * _1676) + _1682.y);
              _1694 = ((_1682.x * _1677) + _1682.y);
            } else {
              _1612 = min(0.99f, _1463);
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _1617 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1612, saturate(1.0f - (_648 * 1.33f))), 0.0f);
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _1622 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1612, saturate(1.0f - (_648 * 0.47998047f))), 0.0f);
              _1626 = (_1622.x + _1617.x) * 0.5f;
              _1628 = (_1622.y + _1617.y) * 0.5f;
              _1692 = ((_1626 * _1604) + _1628);
              _1693 = ((_1626 * _1605) + _1628);
              _1694 = ((_1626 * _1606) + _1628);
            }
          } else {
            if ((_573 == 33) || (_573 == 54)) {
              _1645 = max(dot(float3(_1459, _1460, _1461), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
              _1649 = sqrt(_1459) - _1645;
              _1650 = sqrt(_1460) - _1645;
              _1651 = sqrt(_1461) - _1645;
              _1658 = saturate(1.0f - (pow(_1463, 4.0f)));  // [sem: expr_sat]
              _1675 = ((((_1649 * _474) + _1645) + (_1658 * (_1649 * (_476 - _474)))) * _475);
              _1676 = ((((_1650 * _474) + _1645) + ((_1650 * (_476 - _474)) * _1658)) * _475);
              _1677 = ((((_1651 * _474) + _1645) + ((_1651 * (_476 - _474)) * _1658)) * _475);
            } else {
              _1675 = _1604;
              _1676 = _1605;
              _1677 = _1606;
            }
            // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
            _1682 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1463), (1.0f - _648)), 0.0f);
            _1692 = ((_1682.x * _1675) + _1682.y);
            _1693 = ((_1682.x * _1676) + _1682.y);
            _1694 = ((_1682.x * _1677) + _1682.y);
          }
        }
        _1698 = (_1398 * _1404) / max(0.01f, _1692);
        _1699 = (_1399 * _1405) / max(0.01f, _1693);
        _1700 = (_1400 * _1406) / max(0.01f, _1694);
        _1701 = dot(float3(_1698, _1699, _1700), float3(0.212671f, 0.71516f, 0.072169f));
        _1707 = min((_exposure3.w * 8192.0f), _1701) / max(1e-06f, _1701);
        _1722 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (_1698 * _1707)))));
        _1723 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (_1699 * _1707)))));
        _1724 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (_1700 * _1707)))));
        _1740 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - ((_1404 * (_1401 + _1395)) * _exposure4.x)))));
        _1741 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - ((_1405 * (_1401 + _1396)) * _exposure4.x)))));
        _1742 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - ((_1406 * (_1401 + _1397)) * _exposure4.x)))));
        _1744 = dot(float3(_1740, _1741, _1742), float3(0.212671f, 0.71516f, 0.072169f)) / _exposure4.x;
        __3__38__0__1__g_sceneDiffuseUAV[int2(_59, _61)] = float4(_1740, _1741, _1742, 0.0f);
        [branch]
        if ((((_1722 > 0.0f) || (_1723 > 0.0f)) || (_1724 > 0.0f)) || (_1744 > 0.0f)) {
          __3__38__0__1__g_specularResultUAV[int2(_59, _61)] = float4(_1722, _1723, _1724, _1744);
        }
      }
    }
  }
}
