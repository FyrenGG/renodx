Texture3D<float4> __3__36__0__0__g_texFroxel : register(t153, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float4> __3__36__0__0__g_depth : register(t17, space36);

Texture2D<float2> __3__36__0__0__g_velocity : register(t25, space36);

Texture2D<float4> __3__36__0__0__g_velocityTile : register(t20, space36);

Texture2D<float4> __3__36__0__0__g_glareResult : register(t60, space36);

Texture2D<float4> __3__36__0__0__g_distortionOffsetHalf : register(t61, space36);

Texture2D<float4> __3__36__0__0__g_distortionOffsetQuarter : register(t62, space36);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b16, space35) {
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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

cbuffer __3__1__0__0__GlobalPushConstants : register(b0, space1) {
  float4 _textureSizeAndInvSize : packoffset(c000.x);
  float4 _tileSizeAndInvSize : packoffset(c001.x);
  float4 _motionBlurParam : packoffset(c002.x);
  float4 _backgroundBlurParam0 : packoffset(c003.x);
  float4 _backgroundBlurParam1 : packoffset(c004.x);
  float4 _renderParam : packoffset(c005.x);
  uint4 _colorCorrectionColor : packoffset(c006.x);
  float4 _colorCorrectionIntensity : packoffset(c007.x);
  float4 _volumeSize : packoffset(c008.x);
};

cbuffer __3__35__0__0__AutoWhiteBalanceColorConstantBuffer : register(b45, space35) {
  float4 _autoWhiteBalanceColor : packoffset(c000.x);
  float4 _adaptationTintColor : packoffset(c001.x);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticBilinearBlackBorder : register(s4, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

SamplerState __0__4__0__0__g_staticPointBlackBorder : register(s11, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const float _global_0[12] = { -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f };

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  uint _25;
  uint _26;
  float _30;
  float _31;
  float _35;
  float4 _47;
  float _53;
  float _56;
  float _57;
  float4 _60;
  float4 _78;
  float _86;
  float _87;
  float _91;
  float _94;
  float _95;
  float _96;
  float _99;
  float _100;
  float _104;
  float _105;
  float _106;
  float _109;
  float _110;
  float _115;
  float _118;
  float _121;
  float _124;
  bool _127;
  float _129;
  float _133;
  float _134;
  float _137;
  float _138;
  float _142;
  float _143;
  float _144;
  float _147;
  float _148;
  float _153;
  float _156;
  float _159;
  float _162;
  bool _165;
  float _167;
  float _171;
  float _172;
  float _173;
  float _174;
  float _175;
  float _187;
  float _189;
  float _192;
  float _193;
  float _268;
  float _291;
  float _292;
  float _293;
  float _294;
  int _295;
  int _296;
  float _365;
  float _366;
  float _367;
  float _368;
  float _605;
  float _606;
  float _618;
  float _888;
  float _889;
  float _907;
  float _908;
  float _1006;
  float _1007;
  float _1023;
  float _1024;
  float _1118;
  float _1119;
  float _1135;
  float _1136;
  float _1252;
  float _1253;
  float _1269;
  float _1270;
  float _1357;
  float _1358;
  float _1374;
  float _1375;
  float _1491;
  float _1492;
  float _1508;
  float _1509;
  float _1596;
  float _1597;
  float _1613;
  float _1614;
  float _1730;
  float _1731;
  float _1747;
  float _1748;
  float _1835;
  float _1836;
  float _1852;
  float _1853;
  float _1967;
  float _1968;
  float _1969;
  float _2189;
  float _2190;
  float _2202;
  float _2269;
  float _2270;
  float _2271;
  float _233;
  float _234;
  float _235;
  float _236;
  float _246;
  float _247;
  float4 _272;
  float _283;
  float _312;
  float _313;
  float4 _316;
  float _320;
  float _324;
  float4 _327;
  float _332;
  float _333;
  float _334;
  float _335;
  float _345;
  float _347;
  float _349;
  float _351;
  int _356;
  int _357;
  float _369;
  float4 _376;
  float4 _381;
  float _386;
  float _389;
  float _392;
  float _397;
  float _404;
  float _411;
  float _416;
  float _419;
  float _421;
  float _452;
  float _453;
  float _454;
  float _482;
  float _483;
  float _484;
  float _510;
  float _511;
  float _512;
  float _525;
  float _526;
  float _527;
  float _532;
  float _533;
  float _534;
  float _535;
  float _537;
  float _538;
  float _543;
  float _564;
  float _565;
  float _566;
  float _588;
  float _596;
  float _607;
  float _640;
  float _641;
  float _642;
  float _670;
  float _671;
  float _672;
  float _680;
  float _688;
  float _689;
  float _694;
  float _695;
  float _696;
  float _697;
  float _698;
  float _699;
  float4 _701;
  float _705;
  float _706;
  float _707;
  float _722;
  float _723;
  float4 _741;
  float4 _745;
  float _754;
  float _755;
  float4 _772;
  float4 _779;
  float _788;
  float _789;
  float4 _806;
  float4 _813;
  float _822;
  float _823;
  float4 _840;
  float4 _847;
  uint _860;
  uint _861;
  float2 _863;
  float _866;
  float _868;
  uint _872;
  bool _874;
  float4 _883;
  float _890;
  bool _892;
  float4 _901;
  float _913;
  float _916;
  float _917;
  float _921;
  float _922;
  float _923;
  float _926;
  float _927;
  float _932;
  float _935;
  float _938;
  float _941;
  bool _944;
  float _946;
  float _950;
  float _951;
  float _954;
  float _955;
  float _964;
  float _966;
  float _967;
  float _978;
  float _979;
  float _982;
  float _983;
  uint _986;
  uint _987;
  float2 _988;
  float _991;
  float4 _1001;
  float _1008;
  float4 _1017;
  float _1027;
  float _1028;
  float _1032;
  float _1033;
  float _1034;
  float _1037;
  float _1038;
  float _1043;
  float _1046;
  float _1049;
  float _1052;
  bool _1055;
  float _1057;
  float _1058;
  float _1061;
  float _1062;
  float _1068;
  float _1076;
  float4 _1078;
  float _1082;
  float _1087;
  float _1090;
  float _1093;
  uint _1098;
  uint _1099;
  float2 _1100;
  float _1103;
  float4 _1113;
  float _1120;
  float4 _1129;
  float _1139;
  float _1140;
  float _1144;
  float _1145;
  float _1146;
  float _1149;
  float _1150;
  float _1155;
  float _1158;
  float _1161;
  float _1164;
  bool _1167;
  float _1169;
  float _1170;
  float _1173;
  float _1174;
  float _1180;
  float _1184;
  float4 _1185;
  float _1189;
  float _1197;
  bool _1198;
  bool _1199;
  float _1201;
  float _1203;
  float _1210;
  float _1212;
  float _1213;
  float _1224;
  float _1225;
  float _1228;
  float _1229;
  uint _1232;
  uint _1233;
  float2 _1234;
  float _1237;
  float4 _1247;
  float _1254;
  float4 _1263;
  float _1273;
  float _1274;
  float _1278;
  float _1279;
  float _1280;
  float _1283;
  float _1284;
  float _1289;
  float _1292;
  float _1295;
  float _1298;
  bool _1301;
  float _1303;
  float _1304;
  float _1307;
  float _1308;
  float _1314;
  float _1318;
  float4 _1319;
  float _1323;
  float _1329;
  float _1332;
  uint _1337;
  uint _1338;
  float2 _1339;
  float _1342;
  float4 _1352;
  float _1359;
  float4 _1368;
  float _1378;
  float _1379;
  float _1383;
  float _1384;
  float _1385;
  float _1388;
  float _1389;
  float _1394;
  float _1397;
  float _1400;
  float _1403;
  bool _1406;
  float _1408;
  float _1409;
  float _1412;
  float _1413;
  float _1419;
  float _1423;
  float4 _1424;
  float _1428;
  float _1436;
  bool _1437;
  bool _1438;
  float _1440;
  float _1442;
  float _1449;
  float _1451;
  float _1452;
  float _1463;
  float _1464;
  float _1467;
  float _1468;
  uint _1471;
  uint _1472;
  float2 _1473;
  float _1476;
  float4 _1486;
  float _1493;
  float4 _1502;
  float _1512;
  float _1513;
  float _1517;
  float _1518;
  float _1519;
  float _1522;
  float _1523;
  float _1528;
  float _1531;
  float _1534;
  float _1537;
  bool _1540;
  float _1542;
  float _1543;
  float _1546;
  float _1547;
  float _1553;
  float _1557;
  float4 _1558;
  float _1562;
  float _1568;
  float _1571;
  uint _1576;
  uint _1577;
  float2 _1578;
  float _1581;
  float4 _1591;
  float _1598;
  float4 _1607;
  float _1617;
  float _1618;
  float _1622;
  float _1623;
  float _1624;
  float _1627;
  float _1628;
  float _1633;
  float _1636;
  float _1639;
  float _1642;
  bool _1645;
  float _1647;
  float _1648;
  float _1651;
  float _1652;
  float _1658;
  float _1662;
  float4 _1663;
  float _1667;
  float _1675;
  bool _1676;
  bool _1677;
  float _1679;
  float _1681;
  float _1690;
  float _1691;
  float _1702;
  float _1703;
  float _1706;
  float _1707;
  uint _1710;
  uint _1711;
  float2 _1712;
  float _1715;
  float4 _1725;
  float _1732;
  float4 _1741;
  float _1751;
  float _1752;
  float _1756;
  float _1757;
  float _1758;
  float _1761;
  float _1762;
  float _1767;
  float _1770;
  float _1773;
  float _1776;
  bool _1779;
  float _1781;
  float _1782;
  float _1785;
  float _1786;
  float _1792;
  float _1796;
  float4 _1797;
  float _1801;
  float _1807;
  float _1810;
  uint _1815;
  uint _1816;
  float2 _1817;
  float _1820;
  float4 _1830;
  float _1837;
  float4 _1846;
  float _1856;
  float _1857;
  float _1861;
  float _1862;
  float _1863;
  float _1866;
  float _1867;
  float _1872;
  float _1875;
  float _1878;
  float _1881;
  bool _1884;
  float _1886;
  float _1887;
  float _1890;
  float _1891;
  float _1897;
  float _1901;
  float4 _1902;
  float _1906;
  float _1914;
  bool _1915;
  bool _1916;
  float _1918;
  float _1920;
  float _1959;
  float _1970;
  float _1971;
  float _1977;
  float _1987;
  float _1991;
  float _1995;
  float _2000;
  float _2003;
  float _2005;
  float _2036;
  float _2037;
  float _2038;
  float _2066;
  float _2067;
  float _2068;
  float _2094;
  float _2095;
  float _2096;
  float _2109;
  float _2110;
  float _2111;
  float _2116;
  float _2117;
  float _2118;
  float _2119;
  float _2121;
  float _2122;
  float _2127;
  float _2148;
  float _2149;
  float _2150;
  float _2172;
  float _2180;
  float _2191;
  float _2224;
  float _2225;
  float _2226;
  float _2254;
  float _2255;
  float _2256;
  float _2264;
  int __loop_jump_target = -1;
  _25 = (uint)(SV_Position.x);
  _26 = (uint)(SV_Position.y);
  _30 = (float)((uint)((uint)(_25)));
  _31 = (float)((uint)((uint)(_26)));
  _35 = frac(frac(dot(float2(_30, _31), float2(0.06711056f, 0.00583715f))) * 52.982918f);
  _47 = __3__36__0__0__g_sceneColor.Load(int3(_25, _26, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
  _53 = min(_motionBlurParam.y, 1000.0f);
  _56 = (TEXCOORD.x * 2.0f) + -1.0f;
  _57 = 1.0f - (TEXCOORD.y * 2.0f);
  _60 = __3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);  // [sem: _3__36__0__0__g_depth_sampleLod]
  // [sem: _3__36__0__0__g_velocityTile_sampleLod]
  _78 = __3__36__0__0__g_velocityTile.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(saturate(_tileSizeAndInvSize.z * min(((_tileSizeAndInvSize.x * TEXCOORD.x) + ((_35 + -0.5f) * 0.5f)), _tileSizeAndInvSize.x)), saturate(min(((_tileSizeAndInvSize.y * TEXCOORD.y) + ((frac(frac(dot(float2((_30 + 32.665f), (_31 + 11.815f)), float2(0.06711056f, 0.00583715f))) * 52.982918f) + -0.5f) * 0.5f)), _tileSizeAndInvSize.y) * _tileSizeAndInvSize.w)), 0.0f);
  _86 = _textureSizeAndInvSize.y / _textureSizeAndInvSize.x;
  _87 = _86 * _78.w;
  _91 = max(_temporalReprojectionParams.x, _temporalReprojectionParams.w);
  _94 = _78.z - (_91 * _78.z);
  _95 = (_91 * _87) - _87;
  _96 = _86 * _78.y;
  _99 = _78.x - (_91 * _78.x);
  _100 = (_91 * _96) - _96;
  _104 = sqrt((_94 * _94) + (_95 * _95));
  _105 = abs(_95);
  _106 = abs(_94);
  _109 = min(_106, _105) / max(_106, _105);
  _110 = _109 * _109;
  _115 = ((((_110 * 0.0872929f) + -0.301895f) * _110) + 1.0f) * _109;
  _118 = select((_105 > _106), (1.5707964f - _115), _115);
  _121 = select((_94 < 0.0f), (3.1415927f - _118), _118);
  _124 = select((_95 < 0.0f), (-0.0f - _121), _121);
  _127 = isnan(_104) || isnan(_124);
  _129 = select(_127, 0.0f, _124);
  _133 = min((_textureSizeAndInvSize.x * 0.00026041668f), (_textureSizeAndInvSize.y * 0.00046296295f)) * 0.04f;
  _134 = min(select(_127, 0.0f, _104), _133);
  _137 = cos(_129) * _134;
  _138 = sin(_129) * _134;
  _142 = sqrt((_99 * _99) + (_100 * _100));
  _143 = abs(_100);
  _144 = abs(_99);
  _147 = min(_144, _143) / max(_144, _143);
  _148 = _147 * _147;
  _153 = ((((_148 * 0.0872929f) + -0.301895f) * _148) + 1.0f) * _147;
  _156 = select((_143 > _144), (1.5707964f - _153), _153);
  _159 = select((_99 < 0.0f), (3.1415927f - _156), _156);
  _162 = select((_100 < 0.0f), (-0.0f - _159), _159);
  _165 = isnan(_142) || isnan(_162);
  _167 = select(_165, 0.0f, _162);
  _171 = _137 * _53;
  _172 = _138 * _53;
  _173 = min(select(_165, 0.0f, _142), _133) * _53;
  _174 = cos(_167) * _173;
  _175 = _173 * sin(_167);
  _187 = max(0.0f, (min(sqrt((_171 * _171) + (_172 * _172)), _motionBlurParam.z) + -1.0f));
  _189 = max(0.0f, (min(sqrt((_174 * _174) + (_175 * _175)), _motionBlurParam.z) + -1.0f));
  _192 = max(1e-07f, _60.x);  // [sem: _3__36__0__0__g_depth_sampleLod_derived]
  _193 = _nearFarProj.x / _192;
  if (_backgroundBlurParam1.z > 0.5f) {
    _233 = mad((_invViewProjRelative[3].z), _192, mad((_invViewProjRelative[3].y), _57, ((_invViewProjRelative[3].x) * _56))) + (_invViewProjRelative[3].w);
    _234 = (mad((_invViewProjRelative[0].z), _192, mad((_invViewProjRelative[0].y), _57, ((_invViewProjRelative[0].x) * _56))) + (_invViewProjRelative[0].w)) / _233;
    _235 = (mad((_invViewProjRelative[1].z), _192, mad((_invViewProjRelative[1].y), _57, ((_invViewProjRelative[1].x) * _56))) + (_invViewProjRelative[1].w)) / _233;
    _236 = (mad((_invViewProjRelative[2].z), _192, mad((_invViewProjRelative[2].y), _57, ((_invViewProjRelative[2].x) * _56))) + (_invViewProjRelative[2].w)) / _233;
    _246 = max(0.0f, (_volumeSize.z + -48.0f));
    _247 = max(0.0f, sqrt(((_235 * _235) + (_234 * _234)) + (_236 * _236)));
    if (!(_247 <= 128.0f)) {
      if (!(_246 <= 0.0f)) {
        _268 = ((log2((((_247 + -128.0f) * 0.0078125f) * (exp2(_246 * 0.056583475f) + -1.0f)) + 1.0f) * 17.673004f) + 48.0f);
      } else {
        _268 = 48.0f;
      }
    } else {
      _268 = (log2((_247 * 0.04351966f) + 1.0f) * 17.673004f);
    }
    // [sem: _3__36__0__0__g_texFroxel_sampleLod]
    _272 = __3__36__0__0__g_texFroxel.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(TEXCOORD.x, TEXCOORD.y, (_268 / _volumeSize.z)), 0.0f);
    if (_272.w < 0.9f) {
      _283 = min((((saturate(_193 * 1e-05f) * 98.0f) + 2.0f) * (1.0f - sqrt(_272.w))), 2.2f);
      _291 = _47.x;
      _292 = _47.y;
      _293 = _47.z;
      _294 = _47.w;
      _295 = ((int)(uint)((int)((_60.x < 1e-07f) || (_60.x == 1.0f))));
      _296 = 0;
      while(true) {
        _312 = (((_global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(_296)) * (uint)(3))))), 11u)]) * _283) * _textureSizeAndInvSize.z) + TEXCOORD.x;
        _313 = (((_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(_296)) * (uint)(3))))), 11u)]) * _283) * _textureSizeAndInvSize.w) + TEXCOORD.y;
        _316 = __3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_312, _313), 0.0f);  // [sem: _3__36__0__0__g_depth_sampleLod]
        _320 = saturate((_316.x - _60.x) * 10000.0f);  // [sem: expr_sat]
        _324 = _global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(_296)) * (uint)(3))))), 11u)];
        _327 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_312, _313), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
        _332 = _327.x * _324;
        _333 = _327.y * _324;
        _334 = _327.z * _324;
        _335 = _327.w * _324;
        _345 = (_332 + _291) + ((_47.x - _332) * _320);
        _347 = (_333 + _292) + ((_47.y - _333) * _320);
        _349 = (_334 + _293) + ((_47.z - _334) * _320);
        _351 = (_335 + _294) + ((_47.w - _335) * _320);
        _356 = ((int)(uint)((int)((_316.x < 1e-07f) || (_316.x == 1.0f)))) & _295;
        _357 = (int)(_296) + (int)(1);
        if (!(_357 == 4)) {
          _291 = _345;
          _292 = _347;
          _293 = _349;
          _294 = _351;
          _295 = _356;
          _296 = _357;
          continue;
        }
        while(true) {
          if (_356 == 0) {
            _365 = (_345 * 0.2f);
            _366 = (_347 * 0.2f);
            _367 = (_349 * 0.2f);
            _368 = (_351 * 0.2f);
          } else {
            _365 = _47.x;
            _366 = _47.y;
            _367 = _47.z;
            _368 = _47.w;
          }
          break;
        }
        break;
      }
    } else {
      _365 = _47.x;
      _366 = _47.y;
      _367 = _47.z;
      _368 = _47.w;
    }
  } else {
    _365 = _47.x;
    _366 = _47.y;
    _367 = _47.z;
    _368 = _47.w;
  }
  _369 = _187 * _187;
  if (_369 < 0.25f) {
    // [sem: _3__36__0__0__g_glareResult_sampleLod]
    _376 = __3__36__0__0__g_glareResult.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);
    // [sem: _3__36__0__0__g_glareResult_sampleLod]
    _381 = __3__36__0__0__g_glareResult.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);
    _386 = (_381.z + _376.z) / _exposure0.x;
    _389 = (_381.y + _376.y) / _exposure0.x;
    _392 = (_381.x + _376.x) / _exposure0.x;
    _397 = ((((_389 * 0.33951f) + (_392 * 0.61312f)) + (_386 * 0.04737f)) * 0.5f) + _365;
    _404 = ((((_389 * 0.91636f) + (_392 * 0.0702f)) + (_386 * 0.01345f)) * 0.5f) + _366;
    _411 = ((((_389 * 0.10958f) + (_392 * 0.02062f)) + (_386 * 0.8698f)) * 0.5f) + _367;
    _416 = (float)((uint)((uint)(((uint)((uint)(_colorCorrectionColor.w)) >> 16) & 255)));
    _419 = (float)((uint)((uint)(((uint)((uint)(_colorCorrectionColor.w)) >> 8) & 255)));
    _421 = (float)((uint)((uint)(_colorCorrectionColor.w & 255)));
    _452 = _397 / max(1e-05f, select(((_416 * 0.003921569f) < 0.04045f), (_416 * 0.000303527f), exp2(log2((_416 * 0.003717127f) + 0.052132703f) * 2.4f)));
    _453 = _404 / max(1e-05f, select(((_419 * 0.003921569f) < 0.04045f), (_419 * 0.000303527f), exp2(log2((_419 * 0.003717127f) + 0.052132703f) * 2.4f)));
    _454 = _411 / max(1e-05f, select(((_421 * 0.003921569f) < 0.04045f), (_421 * 0.000303527f), exp2(log2((_421 * 0.003717127f) + 0.052132703f) * 2.4f)));
    _482 = (_colorCorrectionIntensity.w * ((_397 - _452) + (((_397 / max(1e-05f, _autoWhiteBalanceColor.x)) - _397) * 0.75f))) + _452;
    _483 = (_colorCorrectionIntensity.w * ((_404 - _453) + (((_404 / max(1e-05f, _autoWhiteBalanceColor.y)) - _404) * 0.75f))) + _453;
    _484 = (((_411 - _454) + (((_411 / max(1e-05f, _autoWhiteBalanceColor.z)) - _411) * 0.75f)) * _colorCorrectionIntensity.w) + _454;
    _510 = select((_adaptationTintColor.x <= 0.0031308f), (_adaptationTintColor.x * 12.92f), (((pow(_adaptationTintColor.x, 0.41666666f)) * 1.055f) + -0.055f));
    _511 = select((_adaptationTintColor.y <= 0.0031308f), (_adaptationTintColor.y * 12.92f), (((pow(_adaptationTintColor.y, 0.41666666f)) * 1.055f) + -0.055f));
    _512 = select((_adaptationTintColor.z <= 0.0031308f), (_adaptationTintColor.z * 12.92f), (((pow(_adaptationTintColor.z, 0.41666666f)) * 1.055f) + -0.055f));
    _525 = ((_511 * 0.33951f) + (_510 * 0.61312f)) + (_512 * 0.04737f);
    _526 = ((_511 * 0.91636f) + (_510 * 0.0702f)) + (_512 * 0.01345f);
    _527 = ((_511 * 0.10958f) + (_510 * 0.02062f)) + (_512 * 0.8698f);
    _532 = max(dot(float3(_525, _526, _527), float3(0.212671f, 0.71516f, 0.072169f)), 0.0001f);
    _533 = (_525 * _482) / _532;
    _534 = (_526 * _483) / _532;
    _535 = (_527 * _484) / _532;
    _537 = saturate(_adaptationTintColor.w);  // [sem: expr_sat]
    _538 = dot(float3(_482, _483, _484), float3(0.212671f, 0.71516f, 0.072169f));
    _543 = max(dot(float3(_533, _534, _535), float3(0.212671f, 0.71516f, 0.072169f)), 0.0001f);
    _564 = -0.0f - min(0.0f, (-0.0f - (_482 + ((((_538 * _533) / _543) - _482) * _537))));
    _565 = -0.0f - min(0.0f, (-0.0f - (_483 + ((((_538 * _534) / _543) - _483) * _537))));
    _566 = -0.0f - min(0.0f, (-0.0f - (_484 + ((((_538 * _535) / _543) - _484) * _537))));
    _588 = min(max((9000.0f - (5000.0f / (exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f))), 1000.0f), 40000.0f) * 0.01f;
    if (!(_588 <= 66.0f)) {
      _596 = log2(_588 + -60.0f);
      _605 = (exp2(_596 * -0.075514846f) * 1.1298909f);
      _606 = saturate(exp2(_596 * -0.13320476f) * 1.2929362f);  // [sem: expr_sat]
    } else {
      _605 = ((log2(_588) * 0.27038395f) + -0.6318414f);
      _606 = 1.0f;  // [sem: expr_sat]
    }
    _607 = saturate(_605);  // [sem: _605_sat]
    if (!(_588 >= 66.0f)) {
      if (!(_588 <= 19.0f)) {
        _618 = saturate((log2(_588 + -10.0f) * 0.37652227f) + -1.1962541f);  // [sem: expr_sat]
      } else {
        _618 = 0.0f;  // [sem: expr_sat]
      }
    } else {
      _618 = 1.0f;  // [sem: expr_sat]
    }
    _640 = select((_606 < 0.04045f), (_606 * 0.07739938f), exp2(log2((_606 + 0.055f) * 0.94786733f) * 2.4f));
    _641 = select((_607 < 0.04045f), (_607 * 0.07739938f), exp2(log2((_607 + 0.055f) * 0.94786733f) * 2.4f));
    _642 = select((_618 < 0.04045f), (_618 * 0.07739938f), exp2(log2((_618 + 0.055f) * 0.94786733f) * 2.4f));
    _670 = _564 / max(1e-05f, ((((((_640 * 0.61312f) + -1.0f) + (_641 * 0.33951f)) + (_642 * 0.04737f)) * _renderParam.y) + 1.0f));
    _671 = _565 / max(1e-05f, ((((((_640 * 0.0702f) + -1.0f) + (_641 * 0.91636f)) + (_642 * 0.01345f)) * _renderParam.y) + 1.0f));
    _672 = _566 / max(1e-05f, ((((((_640 * 0.02062f) + -1.0f) + (_641 * 0.10958f)) + (_642 * 0.8698f)) * _renderParam.y) + 1.0f));
    _680 = ((max(max(_564, _565), _566) + min(min(_564, _565), _566)) * 0.5f) / max(1e-05f, ((max(max(_670, _671), _672) + min(min(_670, _671), _672)) * 0.5f));
    _2269 = (_680 * _670);
    _2270 = (_680 * _671);
    _2271 = (_680 * _672);
  } else {
    _688 = _textureSizeAndInvSize.z * 0.5f;
    _689 = _textureSizeAndInvSize.w * 0.5f;
    _694 = (_textureSizeAndInvSize.x + -0.5f) * _textureSizeAndInvSize.z;
    _695 = (_textureSizeAndInvSize.y + -0.5f) * _textureSizeAndInvSize.w;
    _696 = _textureSizeAndInvSize.z * _171;
    _697 = _textureSizeAndInvSize.w * _172;
    _698 = -0.0f - _696;
    _699 = -0.0f - _697;
    // [sem: _3__36__0__0__g_glareResult_sampleLod]
    _701 = __3__36__0__0__g_glareResult.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);
    _705 = _701.x / _exposure0.x;  // [sem: _3__36__0__0__g_glareResult_sampleLod_derived]
    _706 = _701.y / _exposure0.x;  // [sem: _3__36__0__0__g_glareResult_sampleLod_derived]
    _707 = _701.z / _exposure0.x;  // [sem: _3__36__0__0__g_glareResult_sampleLod_derived]
    if ((_189 * _189) > (_369 * 0.4f)) {
      _722 = _35 * 0.25f;
      _723 = (1.0f - _35) * 0.25f;
      // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _741 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(max(((_696 * _722) + TEXCOORD.x), _688), _694), min(max(((_697 * _722) + TEXCOORD.y), _689), _695)), 0.0f);
      // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _745 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(max(((_723 * _698) + TEXCOORD.x), _688), _694), min(max(((_723 * _699) + TEXCOORD.y), _689), _695)), 0.0f);
      _754 = (_35 + 1.0f) * 0.25f;
      _755 = (2.0f - _35) * 0.25f;
      // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _772 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(max(((_696 * _754) + TEXCOORD.x), _688), _694), min(max(((_697 * _754) + TEXCOORD.y), _689), _695)), 0.0f);
      // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _779 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(max(((_755 * _698) + TEXCOORD.x), _688), _694), min(max(((_755 * _699) + TEXCOORD.y), _689), _695)), 0.0f);
      _788 = (_35 + 2.0f) * 0.25f;
      _789 = (3.0f - _35) * 0.25f;
      // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _806 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(max(((_696 * _788) + TEXCOORD.x), _688), _694), min(max(((_697 * _788) + TEXCOORD.y), _689), _695)), 0.0f);
      // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _813 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(max(((_789 * _698) + TEXCOORD.x), _688), _694), min(max(((_789 * _699) + TEXCOORD.y), _689), _695)), 0.0f);
      _822 = (_35 + 3.0f) * 0.25f;
      _823 = (4.0f - _35) * 0.25f;
      // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _840 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(max(((_696 * _822) + TEXCOORD.x), _688), _694), min(max(((_697 * _822) + TEXCOORD.y), _689), _695)), 0.0f);
      // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _847 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(max(((_823 * _698) + TEXCOORD.x), _688), _694), min(max(((_823 * _699) + TEXCOORD.y), _689), _695)), 0.0f);
      _1967 = ((((((((_745.x + _741.x) + _772.x) + _779.x) + _806.x) + _813.x) + _840.x) + _847.x) * 0.125f);
      _1968 = ((((((((_745.y + _741.y) + _772.y) + _779.y) + _806.y) + _813.y) + _840.y) + _847.y) * 0.125f);
      _1969 = ((((((((_745.z + _741.z) + _772.z) + _779.z) + _806.z) + _813.z) + _840.z) + _847.z) * 0.125f);
    } else {
      _860 = (uint)(_textureSizeAndInvSize.x * TEXCOORD.x);
      _861 = (uint)(_textureSizeAndInvSize.y * TEXCOORD.y);
      _863 = __3__36__0__0__g_velocity.Load(int3(_860, _861, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _866 = _863.x * _motionBlurParam.x;  // [sem: _3__36__0__0__g_velocity_load_derived]
      _868 = (_textureSizeAndInvSize.y / _textureSizeAndInvSize.x) * _motionBlurParam.x;
      _872 = (uint)(_backgroundBlurParam1.w);
      _874 = ((_872 & 1) == 0);
      if (!_874) {
        // [sem: _3__36__0__0__g_distortionOffsetHalf_load]
        _883 = __3__36__0__0__g_distortionOffsetHalf.Load(int3(((int)((uint)(((float)((uint)((uint)(_860)))) * 0.5f))), ((int)((uint)(((float)((uint)((uint)(_861)))) * 0.5f))), 0));
        _888 = (_883.x + _866);
        _889 = _883.y;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      } else {
        _888 = _866;
        _889 = -0.0f;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      }
      _890 = _889 - (_868 * _863.y);
      _892 = ((_872 & 2) == 0);
      if (!_892) {
        // [sem: _3__36__0__0__g_distortionOffsetQuarter_load]
        _901 = __3__36__0__0__g_distortionOffsetQuarter.Load(int3(((int)((uint)(((float)((uint)((uint)(_860)))) * 0.25f))), ((int)((uint)(((float)((uint)((uint)(_861)))) * 0.25f))), 0));
        _907 = (_901.x + _888);
        _908 = (_901.y + _890);
      } else {
        _907 = _888;
        _908 = _890;
      }
      _913 = -0.0f - max(_temporalReprojectionParams.x, _temporalReprojectionParams.w);
      _916 = (_907 * _913) + _907;
      _917 = (_908 * _913) + _908;
      _921 = sqrt((_916 * _916) + (_917 * _917));
      _922 = abs(_917);
      _923 = abs(_916);
      _926 = min(_923, _922) / max(_923, _922);
      _927 = _926 * _926;
      _932 = ((((_927 * 0.0872929f) + -0.301895f) * _927) + 1.0f) * _926;
      _935 = select((_922 > _923), (1.5707964f - _932), _932);
      _938 = select((_916 < 0.0f), (3.1415927f - _935), _935);
      _941 = select((_917 < 0.0f), (-0.0f - _938), _938);
      _944 = isnan(_921) || isnan(_941);
      _946 = select(_944, 0.0f, _941);
      _950 = min((_textureSizeAndInvSize.x * 0.00026041668f), (_textureSizeAndInvSize.y * 0.00046296295f)) * 0.04f;
      _951 = min(select(_944, 0.0f, _921), _950);
      _954 = cos(_946) * _951;
      _955 = sin(_946) * _951;
      _964 = 4.0f / _187;
      _966 = _35 * 0.25f;
      _967 = (1.0f - _35) * 0.25f;
      _978 = min(max(((_696 * _966) + TEXCOORD.x), _688), _694);
      _979 = min(max(((_697 * _966) + TEXCOORD.y), _689), _695);
      _982 = min(max(((_967 * _698) + TEXCOORD.x), _688), _694);
      _983 = min(max(((_967 * _699) + TEXCOORD.y), _689), _695);
      _986 = (uint)(_978 * _textureSizeAndInvSize.x);
      _987 = (uint)(_979 * _textureSizeAndInvSize.y);
      _988 = __3__36__0__0__g_velocity.Load(int3(_986, _987, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _991 = _988.x * _motionBlurParam.x;  // [sem: _3__36__0__0__g_velocity_load_derived]
      if (!_874) {
        // [sem: _3__36__0__0__g_distortionOffsetHalf_load]
        _1001 = __3__36__0__0__g_distortionOffsetHalf.Load(int3(((int)((uint)(((float)((uint)((uint)(_986)))) * 0.5f))), ((int)((uint)(((float)((uint)((uint)(_987)))) * 0.5f))), 0));
        _1006 = (_1001.x + _991);
        _1007 = _1001.y;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      } else {
        _1006 = _991;
        _1007 = -0.0f;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      }
      _1008 = _1007 - (_868 * _988.y);
      if (!_892) {
        // [sem: _3__36__0__0__g_distortionOffsetQuarter_load]
        _1017 = __3__36__0__0__g_distortionOffsetQuarter.Load(int3(((int)((uint)(((float)((uint)((uint)(_986)))) * 0.25f))), ((int)((uint)(((float)((uint)((uint)(_987)))) * 0.25f))), 0));
        _1023 = (_1017.x + _1006);
        _1024 = (_1017.y + _1008);
      } else {
        _1023 = _1006;
        _1024 = _1008;
      }
      _1027 = (_1023 * _913) + _1023;
      _1028 = (_1024 * _913) + _1024;
      _1032 = sqrt((_1028 * _1028) + (_1027 * _1027));
      _1033 = abs(_1028);
      _1034 = abs(_1027);
      _1037 = min(_1034, _1033) / max(_1034, _1033);
      _1038 = _1037 * _1037;
      _1043 = ((((_1038 * 0.0872929f) + -0.301895f) * _1038) + 1.0f) * _1037;
      _1046 = select((_1033 > _1034), (1.5707964f - _1043), _1043);
      _1049 = select((_1027 < 0.0f), (3.1415927f - _1046), _1046);
      _1052 = select((_1028 < 0.0f), (-0.0f - _1049), _1049);
      _1055 = isnan(_1032) || isnan(_1052);
      _1057 = select(_1055, 0.0f, _1052);
      _1058 = min(select(_1055, 0.0f, _1032), _950);
      _1061 = cos(_1057) * _1058;
      _1062 = sin(_1057) * _1058;
      _1068 = min((sqrt((_1061 * _1061) + (_1062 * _1062)) * _53), _motionBlurParam.z);
      _1076 = _nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointBlackBorder, float2(_978, _979), 0.0f))).x));
      _1078 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_978, _979), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _1082 = _1076 - _193;
      _1087 = _964 * max(0.0f, (min((sqrt((_954 * _954) + (_955 * _955)) * _53), _motionBlurParam.z) + -1.0f));
      _1090 = max((_35 + -1.0f), 0.0f);
      _1093 = saturate(_1087 - _1090);  // [sem: expr_sat]
      _1098 = (uint)(_982 * _textureSizeAndInvSize.x);
      _1099 = (uint)(_983 * _textureSizeAndInvSize.y);
      _1100 = __3__36__0__0__g_velocity.Load(int3(_1098, _1099, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1103 = _1100.x * _motionBlurParam.x;  // [sem: _3__36__0__0__g_velocity_load_derived]
      if (!_874) {
        // [sem: _3__36__0__0__g_distortionOffsetHalf_load]
        _1113 = __3__36__0__0__g_distortionOffsetHalf.Load(int3(((int)((uint)(((float)((uint)((uint)(_1098)))) * 0.5f))), ((int)((uint)(((float)((uint)((uint)(_1099)))) * 0.5f))), 0));
        _1118 = (_1113.x + _1103);
        _1119 = _1113.y;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      } else {
        _1118 = _1103;
        _1119 = -0.0f;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      }
      _1120 = _1119 - (_868 * _1100.y);
      if (!_892) {
        // [sem: _3__36__0__0__g_distortionOffsetQuarter_load]
        _1129 = __3__36__0__0__g_distortionOffsetQuarter.Load(int3(((int)((uint)(((float)((uint)((uint)(_1098)))) * 0.25f))), ((int)((uint)(((float)((uint)((uint)(_1099)))) * 0.25f))), 0));
        _1135 = (_1129.x + _1118);
        _1136 = (_1129.y + _1120);
      } else {
        _1135 = _1118;
        _1136 = _1120;
      }
      _1139 = (_1135 * _913) + _1135;
      _1140 = (_1136 * _913) + _1136;
      _1144 = sqrt((_1140 * _1140) + (_1139 * _1139));
      _1145 = abs(_1140);
      _1146 = abs(_1139);
      _1149 = min(_1146, _1145) / max(_1146, _1145);
      _1150 = _1149 * _1149;
      _1155 = ((((_1150 * 0.0872929f) + -0.301895f) * _1150) + 1.0f) * _1149;
      _1158 = select((_1145 > _1146), (1.5707964f - _1155), _1155);
      _1161 = select((_1139 < 0.0f), (3.1415927f - _1158), _1158);
      _1164 = select((_1140 < 0.0f), (-0.0f - _1161), _1161);
      _1167 = isnan(_1144) || isnan(_1164);
      _1169 = select(_1167, 0.0f, _1164);
      _1170 = min(select(_1167, 0.0f, _1144), _950);
      _1173 = cos(_1169) * _1170;
      _1174 = sin(_1169) * _1170;
      _1180 = min((sqrt((_1173 * _1173) + (_1174 * _1174)) * _53), _motionBlurParam.z);
      _1184 = _nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointBlackBorder, float2(_982, _983), 0.0f))).x));
      _1185 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_982, _983), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _1189 = _1184 - _193;
      _1197 = dot(float2(saturate(_1189 + 0.5f), saturate(0.5f - _1189)), float2(_1093, saturate((_1180 * _964) - _1090)));
      _1198 = (_1076 > _1184);
      _1199 = (_1180 > _1068);
      _1201 = select((_1199 && _1198), _1197, dot(float2(saturate(_1082 + 0.5f), saturate(0.5f - _1082)), float2(_1093, saturate((_1068 * _964) - _1090))));
      _1203 = select((_1199 || _1198), _1197, _1201);
      _1210 = _35 + 1.0f;
      _1212 = _1210 * 0.25f;
      _1213 = (2.0f - _35) * 0.25f;
      _1224 = min(max(((_696 * _1212) + TEXCOORD.x), _688), _694);
      _1225 = min(max(((_697 * _1212) + TEXCOORD.y), _689), _695);
      _1228 = min(max(((_1213 * _698) + TEXCOORD.x), _688), _694);
      _1229 = min(max(((_1213 * _699) + TEXCOORD.y), _689), _695);
      _1232 = (uint)(_1224 * _textureSizeAndInvSize.x);
      _1233 = (uint)(_1225 * _textureSizeAndInvSize.y);
      _1234 = __3__36__0__0__g_velocity.Load(int3(_1232, _1233, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1237 = _1234.x * _motionBlurParam.x;  // [sem: _3__36__0__0__g_velocity_load_derived]
      if (!_874) {
        // [sem: _3__36__0__0__g_distortionOffsetHalf_load]
        _1247 = __3__36__0__0__g_distortionOffsetHalf.Load(int3(((int)((uint)(((float)((uint)((uint)(_1232)))) * 0.5f))), ((int)((uint)(((float)((uint)((uint)(_1233)))) * 0.5f))), 0));
        _1252 = (_1247.x + _1237);
        _1253 = _1247.y;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      } else {
        _1252 = _1237;
        _1253 = -0.0f;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      }
      _1254 = _1253 - (_868 * _1234.y);
      if (!_892) {
        // [sem: _3__36__0__0__g_distortionOffsetQuarter_load]
        _1263 = __3__36__0__0__g_distortionOffsetQuarter.Load(int3(((int)((uint)(((float)((uint)((uint)(_1232)))) * 0.25f))), ((int)((uint)(((float)((uint)((uint)(_1233)))) * 0.25f))), 0));
        _1269 = (_1263.x + _1252);
        _1270 = (_1263.y + _1254);
      } else {
        _1269 = _1252;
        _1270 = _1254;
      }
      _1273 = (_1269 * _913) + _1269;
      _1274 = (_1270 * _913) + _1270;
      _1278 = sqrt((_1274 * _1274) + (_1273 * _1273));
      _1279 = abs(_1274);
      _1280 = abs(_1273);
      _1283 = min(_1280, _1279) / max(_1280, _1279);
      _1284 = _1283 * _1283;
      _1289 = ((((_1284 * 0.0872929f) + -0.301895f) * _1284) + 1.0f) * _1283;
      _1292 = select((_1279 > _1280), (1.5707964f - _1289), _1289);
      _1295 = select((_1273 < 0.0f), (3.1415927f - _1292), _1292);
      _1298 = select((_1274 < 0.0f), (-0.0f - _1295), _1295);
      _1301 = isnan(_1278) || isnan(_1298);
      _1303 = select(_1301, 0.0f, _1298);
      _1304 = min(select(_1301, 0.0f, _1278), _950);
      _1307 = cos(_1303) * _1304;
      _1308 = sin(_1303) * _1304;
      _1314 = min((sqrt((_1307 * _1307) + (_1308 * _1308)) * _53), _motionBlurParam.z);
      _1318 = _nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointBlackBorder, float2(_1224, _1225), 0.0f))).x));
      _1319 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1224, _1225), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _1323 = _1318 - _193;
      _1329 = max(_35, 0.0f);
      _1332 = saturate(_1087 - _1329);  // [sem: expr_sat]
      _1337 = (uint)(_1228 * _textureSizeAndInvSize.x);
      _1338 = (uint)(_1229 * _textureSizeAndInvSize.y);
      _1339 = __3__36__0__0__g_velocity.Load(int3(_1337, _1338, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1342 = _1339.x * _motionBlurParam.x;  // [sem: _3__36__0__0__g_velocity_load_derived]
      if (!_874) {
        // [sem: _3__36__0__0__g_distortionOffsetHalf_load]
        _1352 = __3__36__0__0__g_distortionOffsetHalf.Load(int3(((int)((uint)(((float)((uint)((uint)(_1337)))) * 0.5f))), ((int)((uint)(((float)((uint)((uint)(_1338)))) * 0.5f))), 0));
        _1357 = (_1352.x + _1342);
        _1358 = _1352.y;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      } else {
        _1357 = _1342;
        _1358 = -0.0f;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      }
      _1359 = _1358 - (_868 * _1339.y);
      if (!_892) {
        // [sem: _3__36__0__0__g_distortionOffsetQuarter_load]
        _1368 = __3__36__0__0__g_distortionOffsetQuarter.Load(int3(((int)((uint)(((float)((uint)((uint)(_1337)))) * 0.25f))), ((int)((uint)(((float)((uint)((uint)(_1338)))) * 0.25f))), 0));
        _1374 = (_1368.x + _1357);
        _1375 = (_1368.y + _1359);
      } else {
        _1374 = _1357;
        _1375 = _1359;
      }
      _1378 = (_1374 * _913) + _1374;
      _1379 = (_1375 * _913) + _1375;
      _1383 = sqrt((_1379 * _1379) + (_1378 * _1378));
      _1384 = abs(_1379);
      _1385 = abs(_1378);
      _1388 = min(_1385, _1384) / max(_1385, _1384);
      _1389 = _1388 * _1388;
      _1394 = ((((_1389 * 0.0872929f) + -0.301895f) * _1389) + 1.0f) * _1388;
      _1397 = select((_1384 > _1385), (1.5707964f - _1394), _1394);
      _1400 = select((_1378 < 0.0f), (3.1415927f - _1397), _1397);
      _1403 = select((_1379 < 0.0f), (-0.0f - _1400), _1400);
      _1406 = isnan(_1383) || isnan(_1403);
      _1408 = select(_1406, 0.0f, _1403);
      _1409 = min(select(_1406, 0.0f, _1383), _950);
      _1412 = cos(_1408) * _1409;
      _1413 = sin(_1408) * _1409;
      _1419 = min((sqrt((_1412 * _1412) + (_1413 * _1413)) * _53), _motionBlurParam.z);
      _1423 = _nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointBlackBorder, float2(_1228, _1229), 0.0f))).x));
      _1424 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1228, _1229), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _1428 = _1423 - _193;
      _1436 = dot(float2(saturate(_1428 + 0.5f), saturate(0.5f - _1428)), float2(_1332, saturate((_1419 * _964) - _1329)));
      _1437 = (_1318 > _1423);
      _1438 = (_1419 > _1314);
      _1440 = select((_1438 && _1437), _1436, dot(float2(saturate(_1323 + 0.5f), saturate(0.5f - _1323)), float2(_1332, saturate((_1314 * _964) - _1329))));
      _1442 = select((_1438 || _1437), _1436, _1440);
      _1449 = _35 + 2.0f;
      _1451 = _1449 * 0.25f;
      _1452 = (3.0f - _35) * 0.25f;
      _1463 = min(max(((_696 * _1451) + TEXCOORD.x), _688), _694);
      _1464 = min(max(((_697 * _1451) + TEXCOORD.y), _689), _695);
      _1467 = min(max(((_1452 * _698) + TEXCOORD.x), _688), _694);
      _1468 = min(max(((_1452 * _699) + TEXCOORD.y), _689), _695);
      _1471 = (uint)(_1463 * _textureSizeAndInvSize.x);
      _1472 = (uint)(_1464 * _textureSizeAndInvSize.y);
      _1473 = __3__36__0__0__g_velocity.Load(int3(_1471, _1472, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1476 = _1473.x * _motionBlurParam.x;  // [sem: _3__36__0__0__g_velocity_load_derived]
      if (!_874) {
        // [sem: _3__36__0__0__g_distortionOffsetHalf_load]
        _1486 = __3__36__0__0__g_distortionOffsetHalf.Load(int3(((int)((uint)(((float)((uint)((uint)(_1471)))) * 0.5f))), ((int)((uint)(((float)((uint)((uint)(_1472)))) * 0.5f))), 0));
        _1491 = (_1486.x + _1476);
        _1492 = _1486.y;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      } else {
        _1491 = _1476;
        _1492 = -0.0f;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      }
      _1493 = _1492 - (_868 * _1473.y);
      if (!_892) {
        // [sem: _3__36__0__0__g_distortionOffsetQuarter_load]
        _1502 = __3__36__0__0__g_distortionOffsetQuarter.Load(int3(((int)((uint)(((float)((uint)((uint)(_1471)))) * 0.25f))), ((int)((uint)(((float)((uint)((uint)(_1472)))) * 0.25f))), 0));
        _1508 = (_1502.x + _1491);
        _1509 = (_1502.y + _1493);
      } else {
        _1508 = _1491;
        _1509 = _1493;
      }
      _1512 = (_1508 * _913) + _1508;
      _1513 = (_1509 * _913) + _1509;
      _1517 = sqrt((_1513 * _1513) + (_1512 * _1512));
      _1518 = abs(_1513);
      _1519 = abs(_1512);
      _1522 = min(_1519, _1518) / max(_1519, _1518);
      _1523 = _1522 * _1522;
      _1528 = ((((_1523 * 0.0872929f) + -0.301895f) * _1523) + 1.0f) * _1522;
      _1531 = select((_1518 > _1519), (1.5707964f - _1528), _1528);
      _1534 = select((_1512 < 0.0f), (3.1415927f - _1531), _1531);
      _1537 = select((_1513 < 0.0f), (-0.0f - _1534), _1534);
      _1540 = isnan(_1517) || isnan(_1537);
      _1542 = select(_1540, 0.0f, _1537);
      _1543 = min(select(_1540, 0.0f, _1517), _950);
      _1546 = cos(_1542) * _1543;
      _1547 = sin(_1542) * _1543;
      _1553 = min((sqrt((_1546 * _1546) + (_1547 * _1547)) * _53), _motionBlurParam.z);
      _1557 = _nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointBlackBorder, float2(_1463, _1464), 0.0f))).x));
      _1558 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1463, _1464), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _1562 = _1557 - _193;
      _1568 = max(_1210, 0.0f);
      _1571 = saturate(_1087 - _1568);  // [sem: expr_sat]
      _1576 = (uint)(_1467 * _textureSizeAndInvSize.x);
      _1577 = (uint)(_1468 * _textureSizeAndInvSize.y);
      _1578 = __3__36__0__0__g_velocity.Load(int3(_1576, _1577, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1581 = _1578.x * _motionBlurParam.x;  // [sem: _3__36__0__0__g_velocity_load_derived]
      if (!_874) {
        // [sem: _3__36__0__0__g_distortionOffsetHalf_load]
        _1591 = __3__36__0__0__g_distortionOffsetHalf.Load(int3(((int)((uint)(((float)((uint)((uint)(_1576)))) * 0.5f))), ((int)((uint)(((float)((uint)((uint)(_1577)))) * 0.5f))), 0));
        _1596 = (_1591.x + _1581);
        _1597 = _1591.y;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      } else {
        _1596 = _1581;
        _1597 = -0.0f;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      }
      _1598 = _1597 - (_868 * _1578.y);
      if (!_892) {
        // [sem: _3__36__0__0__g_distortionOffsetQuarter_load]
        _1607 = __3__36__0__0__g_distortionOffsetQuarter.Load(int3(((int)((uint)(((float)((uint)((uint)(_1576)))) * 0.25f))), ((int)((uint)(((float)((uint)((uint)(_1577)))) * 0.25f))), 0));
        _1613 = (_1607.x + _1596);
        _1614 = (_1607.y + _1598);
      } else {
        _1613 = _1596;
        _1614 = _1598;
      }
      _1617 = (_1613 * _913) + _1613;
      _1618 = (_1614 * _913) + _1614;
      _1622 = sqrt((_1618 * _1618) + (_1617 * _1617));
      _1623 = abs(_1618);
      _1624 = abs(_1617);
      _1627 = min(_1624, _1623) / max(_1624, _1623);
      _1628 = _1627 * _1627;
      _1633 = ((((_1628 * 0.0872929f) + -0.301895f) * _1628) + 1.0f) * _1627;
      _1636 = select((_1623 > _1624), (1.5707964f - _1633), _1633);
      _1639 = select((_1617 < 0.0f), (3.1415927f - _1636), _1636);
      _1642 = select((_1618 < 0.0f), (-0.0f - _1639), _1639);
      _1645 = isnan(_1622) || isnan(_1642);
      _1647 = select(_1645, 0.0f, _1642);
      _1648 = min(select(_1645, 0.0f, _1622), _950);
      _1651 = cos(_1647) * _1648;
      _1652 = sin(_1647) * _1648;
      _1658 = min((sqrt((_1651 * _1651) + (_1652 * _1652)) * _53), _motionBlurParam.z);
      _1662 = _nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointBlackBorder, float2(_1467, _1468), 0.0f))).x));
      _1663 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1467, _1468), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _1667 = _1662 - _193;
      _1675 = dot(float2(saturate(_1667 + 0.5f), saturate(0.5f - _1667)), float2(_1571, saturate((_1658 * _964) - _1568)));
      _1676 = (_1557 > _1662);
      _1677 = (_1658 > _1553);
      _1679 = select((_1677 && _1676), _1675, dot(float2(saturate(_1562 + 0.5f), saturate(0.5f - _1562)), float2(_1571, saturate((_1553 * _964) - _1568))));
      _1681 = select((_1677 || _1676), _1675, _1679);
      _1690 = (_35 + 3.0f) * 0.25f;
      _1691 = (4.0f - _35) * 0.25f;
      _1702 = min(max(((_696 * _1690) + TEXCOORD.x), _688), _694);
      _1703 = min(max(((_697 * _1690) + TEXCOORD.y), _689), _695);
      _1706 = min(max(((_1691 * _698) + TEXCOORD.x), _688), _694);
      _1707 = min(max(((_1691 * _699) + TEXCOORD.y), _689), _695);
      _1710 = (uint)(_1702 * _textureSizeAndInvSize.x);
      _1711 = (uint)(_1703 * _textureSizeAndInvSize.y);
      _1712 = __3__36__0__0__g_velocity.Load(int3(_1710, _1711, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1715 = _1712.x * _motionBlurParam.x;  // [sem: _3__36__0__0__g_velocity_load_derived]
      if (!_874) {
        // [sem: _3__36__0__0__g_distortionOffsetHalf_load]
        _1725 = __3__36__0__0__g_distortionOffsetHalf.Load(int3(((int)((uint)(((float)((uint)((uint)(_1710)))) * 0.5f))), ((int)((uint)(((float)((uint)((uint)(_1711)))) * 0.5f))), 0));
        _1730 = (_1725.x + _1715);
        _1731 = _1725.y;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      } else {
        _1730 = _1715;
        _1731 = -0.0f;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      }
      _1732 = _1731 - (_868 * _1712.y);
      if (!_892) {
        // [sem: _3__36__0__0__g_distortionOffsetQuarter_load]
        _1741 = __3__36__0__0__g_distortionOffsetQuarter.Load(int3(((int)((uint)(((float)((uint)((uint)(_1710)))) * 0.25f))), ((int)((uint)(((float)((uint)((uint)(_1711)))) * 0.25f))), 0));
        _1747 = (_1741.x + _1730);
        _1748 = (_1741.y + _1732);
      } else {
        _1747 = _1730;
        _1748 = _1732;
      }
      _1751 = (_1747 * _913) + _1747;
      _1752 = (_1748 * _913) + _1748;
      _1756 = sqrt((_1752 * _1752) + (_1751 * _1751));
      _1757 = abs(_1752);
      _1758 = abs(_1751);
      _1761 = min(_1758, _1757) / max(_1758, _1757);
      _1762 = _1761 * _1761;
      _1767 = ((((_1762 * 0.0872929f) + -0.301895f) * _1762) + 1.0f) * _1761;
      _1770 = select((_1757 > _1758), (1.5707964f - _1767), _1767);
      _1773 = select((_1751 < 0.0f), (3.1415927f - _1770), _1770);
      _1776 = select((_1752 < 0.0f), (-0.0f - _1773), _1773);
      _1779 = isnan(_1756) || isnan(_1776);
      _1781 = select(_1779, 0.0f, _1776);
      _1782 = min(select(_1779, 0.0f, _1756), _950);
      _1785 = cos(_1781) * _1782;
      _1786 = sin(_1781) * _1782;
      _1792 = min((sqrt((_1785 * _1785) + (_1786 * _1786)) * _53), _motionBlurParam.z);
      _1796 = _nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointBlackBorder, float2(_1702, _1703), 0.0f))).x));
      _1797 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1702, _1703), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _1801 = _1796 - _193;
      _1807 = max(_1449, 0.0f);
      _1810 = saturate(_1087 - _1807);  // [sem: expr_sat]
      _1815 = (uint)(_1706 * _textureSizeAndInvSize.x);
      _1816 = (uint)(_1707 * _textureSizeAndInvSize.y);
      _1817 = __3__36__0__0__g_velocity.Load(int3(_1815, _1816, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1820 = _1817.x * _motionBlurParam.x;  // [sem: _3__36__0__0__g_velocity_load_derived]
      if (!_874) {
        // [sem: _3__36__0__0__g_distortionOffsetHalf_load]
        _1830 = __3__36__0__0__g_distortionOffsetHalf.Load(int3(((int)((uint)(((float)((uint)((uint)(_1815)))) * 0.5f))), ((int)((uint)(((float)((uint)((uint)(_1816)))) * 0.5f))), 0));
        _1835 = (_1830.x + _1820);
        _1836 = _1830.y;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      } else {
        _1835 = _1820;
        _1836 = -0.0f;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      }
      _1837 = _1836 - (_868 * _1817.y);
      if (!_892) {
        // [sem: _3__36__0__0__g_distortionOffsetQuarter_load]
        _1846 = __3__36__0__0__g_distortionOffsetQuarter.Load(int3(((int)((uint)(((float)((uint)((uint)(_1815)))) * 0.25f))), ((int)((uint)(((float)((uint)((uint)(_1816)))) * 0.25f))), 0));
        _1852 = (_1846.x + _1835);
        _1853 = (_1846.y + _1837);
      } else {
        _1852 = _1835;
        _1853 = _1837;
      }
      _1856 = (_1852 * _913) + _1852;
      _1857 = (_1853 * _913) + _1853;
      _1861 = sqrt((_1857 * _1857) + (_1856 * _1856));
      _1862 = abs(_1857);
      _1863 = abs(_1856);
      _1866 = min(_1863, _1862) / max(_1863, _1862);
      _1867 = _1866 * _1866;
      _1872 = ((((_1867 * 0.0872929f) + -0.301895f) * _1867) + 1.0f) * _1866;
      _1875 = select((_1862 > _1863), (1.5707964f - _1872), _1872);
      _1878 = select((_1856 < 0.0f), (3.1415927f - _1875), _1875);
      _1881 = select((_1857 < 0.0f), (-0.0f - _1878), _1878);
      _1884 = isnan(_1861) || isnan(_1881);
      _1886 = select(_1884, 0.0f, _1881);
      _1887 = min(select(_1884, 0.0f, _1861), _950);
      _1890 = cos(_1886) * _1887;
      _1891 = sin(_1886) * _1887;
      _1897 = min((sqrt((_1890 * _1890) + (_1891 * _1891)) * _53), _motionBlurParam.z);
      _1901 = _nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointBlackBorder, float2(_1706, _1707), 0.0f))).x));
      _1902 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1706, _1707), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _1906 = _1901 - _193;
      _1914 = dot(float2(saturate(_1906 + 0.5f), saturate(0.5f - _1906)), float2(_1810, saturate((_1897 * _964) - _1807)));
      _1915 = (_1796 > _1901);
      _1916 = (_1897 > _1792);
      _1918 = select((_1916 && _1915), _1914, dot(float2(saturate(_1801 + 0.5f), saturate(0.5f - _1801)), float2(_1810, saturate((_1792 * _964) - _1807))));
      _1920 = select((_1916 || _1915), _1914, _1918);
      _1959 = 1.0f - ((((((((_1203 + _1201) + _1440) + _1442) + _1679) + _1681) + _1918) + _1920) * 0.125f);
      _1967 = ((_1959 * _365) + (((((((((_1203 * _1185.x) + (_1201 * _1078.x)) + (_1440 * _1319.x)) + (_1442 * _1424.x)) + (_1679 * _1558.x)) + (_1681 * _1663.x)) + (_1918 * _1797.x)) + (_1920 * _1902.x)) * 0.125f));
      _1968 = ((_1959 * _366) + (((((((((_1203 * _1185.y) + (_1201 * _1078.y)) + (_1440 * _1319.y)) + (_1442 * _1424.y)) + (_1679 * _1558.y)) + (_1681 * _1663.y)) + (_1918 * _1797.y)) + (_1920 * _1902.y)) * 0.125f));
      _1969 = ((_1959 * _367) + (((((((((_1203 * _1185.z) + (_1201 * _1078.z)) + (_1440 * _1319.z)) + (_1442 * _1424.z)) + (_1679 * _1558.z)) + (_1681 * _1663.z)) + (_1918 * _1797.z)) + (_1920 * _1902.z)) * 0.125f));
    }
    _1970 = _137 * 2.0f;
    _1971 = _138 * 2.0f;
    _1977 = saturate(sqrt((_1970 * _1970) + (_1971 * _1971)) * 25.0f);  // [sem: expr_sat]
    _1987 = ((((_705 * 0.61312f) + _365) + (_706 * 0.33951f)) + (_707 * 0.04737f)) + (_1977 * (_1967 - _365));
    _1991 = ((((_705 * 0.0702f) + _366) + (_706 * 0.91636f)) + (_707 * 0.01345f)) + (_1977 * (_1968 - _366));
    _1995 = ((((_705 * 0.02062f) + _367) + (_706 * 0.10958f)) + (_707 * 0.8698f)) + (_1977 * (_1969 - _367));
    _2000 = (float)((uint)((uint)(((uint)((uint)(_colorCorrectionColor.w)) >> 16) & 255)));
    _2003 = (float)((uint)((uint)(((uint)((uint)(_colorCorrectionColor.w)) >> 8) & 255)));
    _2005 = (float)((uint)((uint)(_colorCorrectionColor.w & 255)));
    _2036 = _1987 / max(1e-05f, select(((_2000 * 0.003921569f) < 0.04045f), (_2000 * 0.000303527f), exp2(log2((_2000 * 0.003717127f) + 0.052132703f) * 2.4f)));
    _2037 = _1991 / max(1e-05f, select(((_2003 * 0.003921569f) < 0.04045f), (_2003 * 0.000303527f), exp2(log2((_2003 * 0.003717127f) + 0.052132703f) * 2.4f)));
    _2038 = _1995 / max(1e-05f, select(((_2005 * 0.003921569f) < 0.04045f), (_2005 * 0.000303527f), exp2(log2((_2005 * 0.003717127f) + 0.052132703f) * 2.4f)));
    _2066 = (_colorCorrectionIntensity.w * ((_1987 - _2036) + (((_1987 / max(1e-05f, _autoWhiteBalanceColor.x)) - _1987) * 0.75f))) + _2036;
    _2067 = (_colorCorrectionIntensity.w * ((_1991 - _2037) + (((_1991 / max(1e-05f, _autoWhiteBalanceColor.y)) - _1991) * 0.75f))) + _2037;
    _2068 = (((_1995 - _2038) + (((_1995 / max(1e-05f, _autoWhiteBalanceColor.z)) - _1995) * 0.75f)) * _colorCorrectionIntensity.w) + _2038;
    _2094 = select((_adaptationTintColor.x <= 0.0031308f), (_adaptationTintColor.x * 12.92f), (((pow(_adaptationTintColor.x, 0.41666666f)) * 1.055f) + -0.055f));
    _2095 = select((_adaptationTintColor.y <= 0.0031308f), (_adaptationTintColor.y * 12.92f), (((pow(_adaptationTintColor.y, 0.41666666f)) * 1.055f) + -0.055f));
    _2096 = select((_adaptationTintColor.z <= 0.0031308f), (_adaptationTintColor.z * 12.92f), (((pow(_adaptationTintColor.z, 0.41666666f)) * 1.055f) + -0.055f));
    _2109 = ((_2095 * 0.33951f) + (_2094 * 0.61312f)) + (_2096 * 0.04737f);
    _2110 = ((_2095 * 0.91636f) + (_2094 * 0.0702f)) + (_2096 * 0.01345f);
    _2111 = ((_2095 * 0.10958f) + (_2094 * 0.02062f)) + (_2096 * 0.8698f);
    _2116 = max(dot(float3(_2109, _2110, _2111), float3(0.212671f, 0.71516f, 0.072169f)), 0.0001f);
    _2117 = (_2109 * _2066) / _2116;
    _2118 = (_2110 * _2067) / _2116;
    _2119 = (_2111 * _2068) / _2116;
    _2121 = saturate(_adaptationTintColor.w);  // [sem: expr_sat]
    _2122 = dot(float3(_2066, _2067, _2068), float3(0.212671f, 0.71516f, 0.072169f));
    _2127 = max(dot(float3(_2117, _2118, _2119), float3(0.212671f, 0.71516f, 0.072169f)), 0.0001f);
    _2148 = -0.0f - min(0.0f, (-0.0f - (_2066 + ((((_2122 * _2117) / _2127) - _2066) * _2121))));
    _2149 = -0.0f - min(0.0f, (-0.0f - (_2067 + ((((_2122 * _2118) / _2127) - _2067) * _2121))));
    _2150 = -0.0f - min(0.0f, (-0.0f - (_2068 + ((((_2122 * _2119) / _2127) - _2068) * _2121))));
    _2172 = min(max((9000.0f - (5000.0f / (exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f))), 1000.0f), 40000.0f) * 0.01f;
    if (!(_2172 <= 66.0f)) {
      _2180 = log2(_2172 + -60.0f);
      _2189 = (exp2(_2180 * -0.075514846f) * 1.1298909f);
      _2190 = saturate(exp2(_2180 * -0.13320476f) * 1.2929362f);  // [sem: expr_sat]
    } else {
      _2189 = ((log2(_2172) * 0.27038395f) + -0.6318414f);
      _2190 = 1.0f;  // [sem: expr_sat]
    }
    _2191 = saturate(_2189);  // [sem: _2189_sat]
    if (!(_2172 >= 66.0f)) {
      if (!(_2172 <= 19.0f)) {
        _2202 = saturate((log2(_2172 + -10.0f) * 0.37652227f) + -1.1962541f);  // [sem: expr_sat]
      } else {
        _2202 = 0.0f;  // [sem: expr_sat]
      }
    } else {
      _2202 = 1.0f;  // [sem: expr_sat]
    }
    _2224 = select((_2190 < 0.04045f), (_2190 * 0.07739938f), exp2(log2((_2190 + 0.055f) * 0.94786733f) * 2.4f));
    _2225 = select((_2191 < 0.04045f), (_2191 * 0.07739938f), exp2(log2((_2191 + 0.055f) * 0.94786733f) * 2.4f));
    _2226 = select((_2202 < 0.04045f), (_2202 * 0.07739938f), exp2(log2((_2202 + 0.055f) * 0.94786733f) * 2.4f));
    _2254 = _2148 / max(1e-05f, ((((((_2224 * 0.61312f) + -1.0f) + (_2225 * 0.33951f)) + (_2226 * 0.04737f)) * _renderParam.y) + 1.0f));
    _2255 = _2149 / max(1e-05f, ((((((_2224 * 0.0702f) + -1.0f) + (_2225 * 0.91636f)) + (_2226 * 0.01345f)) * _renderParam.y) + 1.0f));
    _2256 = _2150 / max(1e-05f, ((((((_2224 * 0.02062f) + -1.0f) + (_2225 * 0.10958f)) + (_2226 * 0.8698f)) * _renderParam.y) + 1.0f));
    _2264 = ((max(max(_2148, _2149), _2150) + min(min(_2148, _2149), _2150)) * 0.5f) / max(1e-05f, ((max(max(_2254, _2255), _2256) + min(min(_2254, _2255), _2256)) * 0.5f));
    _2269 = (_2264 * _2254);
    _2270 = (_2264 * _2255);
    _2271 = (_2264 * _2256);
  }
  SV_Target.x = _2269;
  SV_Target.y = _2270;
  SV_Target.z = _2271;
  SV_Target.w = _368;
  return SV_Target;
}
