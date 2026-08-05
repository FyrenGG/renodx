// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports "../shared.h" for the effective RenoDX option gates and injected constants used below.
#include "../shared.h"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
Texture3D<float4> __3__36__0__0__g_texFroxel : register(t152, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float4> __3__36__0__0__g_depth : register(t4, space36);

Texture2D<float2> __3__36__0__0__g_velocity : register(t27, space36);

Texture2D<float4> __3__36__0__0__g_velocityTile : register(t21, space36);

Texture2D<float4> __3__36__0__0__g_glareResult : register(t22, space36);

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
  float _27;
  float _28;
  float _32;
  float4 _34;
  float _41;
  float _43;
  float _45;
  float4 _48;
  float4 _76;
  float _84;
  float _85;
  float _89;
  float _91;
  float _93;
  float _94;
  float _96;
  float _98;
  float _102;
  float _103;
  float _104;
  float _107;
  float _108;
  float _113;
  float _116;
  float _119;
  float _122;
  bool _127;
  bool _167;
  float _271;
  float _292;
  float _293;
  float _294;
  float _295;
  int _296;
  int _297;
  float _369;
  float _370;
  float _371;
  float _372;
  float _601;
  float _602;
  float _614;
  float _884;
  float _885;
  float _904;
  float _905;
  bool _943;
  float _996;
  float _997;
  float _1014;
  float _1015;
  bool _1048;
  float _1111;
  float _1112;
  float _1129;
  float _1130;
  bool _1163;
  float _1249;
  float _1250;
  float _1267;
  float _1268;
  bool _1301;
  float _1348;
  float _1349;
  float _1366;
  float _1367;
  bool _1400;
  float _1486;
  float _1487;
  float _1504;
  float _1505;
  bool _1538;
  float _1585;
  float _1586;
  float _1603;
  float _1604;
  bool _1637;
  float _1723;
  float _1724;
  float _1741;
  float _1742;
  bool _1775;
  float _1822;
  float _1823;
  float _1840;
  float _1841;
  bool _1874;
  float _1983;
  float _1984;
  float _1985;
  float _2206;
  float _2207;
  float _2219;
  float _2294;
  float _2295;
  float _2296;
  float _128;
  float _132;
  float _134;
  float _136;
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
  float _168;
  float _169;
  float _170;
  float _173;
  float _175;
  float _177;
  float _185;
  float _192;
  float _193;
  float _196;
  float _212;
  float _221;
  float _230;
  float _239;
  float _243;
  float _250;
  float4 _275;
  float _286;
  int _298;
  float _306;
  float _315;
  float4 _318;
  float _322;
  float _326;
  float4 _329;
  float _334;
  float _335;
  float _336;
  float _337;
  float _341;
  float _345;
  float _349;
  float _353;
  int _358;
  int _359;
  float _373;
  float4 _380;
  float4 _385;
  float _390;
  float _392;
  float _394;
  float _401;
  float _408;
  float _415;
  float _420;
  float _423;
  float _425;
  float _436;
  float _447;
  float _458;
  float _470;
  float _479;
  float _488;
  float _498;
  float _507;
  float _516;
  float _521;
  float _526;
  float _531;
  float _533;
  float _535;
  float _537;
  float _539;
  float _541;
  float _542;
  float _544;
  float _552;
  float _560;
  float _568;
  float _584;
  float _588;
  float _603;
  float _622;
  float _630;
  float _638;
  float _650;
  float _660;
  float _670;
  float _684;
  float _691;
  float _693;
  float _696;
  float _699;
  float _700;
  float _701;
  float _702;
  float _703;
  float4 _705;
  float _709;
  float _710;
  float _711;
  float _716;
  float _718;
  float4 _728;
  float4 _740;
  float _745;
  float _747;
  float4 _756;
  float4 _768;
  float _773;
  float _775;
  float4 _784;
  float4 _796;
  float _801;
  float _803;
  float4 _812;
  float4 _824;
  uint _854;
  uint _856;
  float2 _858;
  float _863;
  float _865;
  uint _868;
  bool _870;
  float4 _879;
  float _887;
  bool _889;
  float4 _898;
  float _910;
  float _912;
  float _914;
  float _918;
  float _919;
  float _920;
  float _923;
  float _924;
  float _929;
  float _932;
  float _935;
  float _938;
  float _944;
  float _948;
  float _950;
  float _952;
  float _954;
  float _955;
  float _956;
  float _958;
  float _962;
  float _966;
  float _970;
  float _974;
  uint _976;
  uint _978;
  float2 _979;
  float _982;
  float4 _991;
  float _999;
  float4 _1008;
  float _1017;
  float _1019;
  float _1023;
  float _1024;
  float _1025;
  float _1028;
  float _1029;
  float _1034;
  float _1037;
  float _1040;
  float _1043;
  float _1049;
  float _1051;
  float _1053;
  float _1055;
  float _1062;
  float _1070;
  float4 _1072;
  float _1076;
  float _1085;
  float _1087;
  float _1089;
  uint _1091;
  uint _1093;
  float2 _1094;
  float _1097;
  float4 _1106;
  float _1114;
  float4 _1123;
  float _1132;
  float _1134;
  float _1138;
  float _1139;
  float _1140;
  float _1143;
  float _1144;
  float _1149;
  float _1152;
  float _1155;
  float _1158;
  float _1164;
  float _1166;
  float _1168;
  float _1170;
  float _1176;
  float _1180;
  float4 _1181;
  float _1185;
  float _1193;
  bool _1194;
  bool _1195;
  float _1205;
  float _1207;
  float _1208;
  float _1209;
  float _1211;
  float _1215;
  float _1219;
  float _1223;
  float _1227;
  uint _1229;
  uint _1231;
  float2 _1232;
  float _1235;
  float4 _1244;
  float _1252;
  float4 _1261;
  float _1270;
  float _1272;
  float _1276;
  float _1277;
  float _1278;
  float _1281;
  float _1282;
  float _1287;
  float _1290;
  float _1293;
  float _1296;
  float _1302;
  float _1304;
  float _1306;
  float _1308;
  float _1314;
  float _1318;
  float4 _1319;
  float _1323;
  float _1324;
  float _1326;
  uint _1328;
  uint _1330;
  float2 _1331;
  float _1334;
  float4 _1343;
  float _1351;
  float4 _1360;
  float _1369;
  float _1371;
  float _1375;
  float _1376;
  float _1377;
  float _1380;
  float _1381;
  float _1386;
  float _1389;
  float _1392;
  float _1395;
  float _1401;
  float _1403;
  float _1405;
  float _1407;
  float _1413;
  float _1417;
  float4 _1418;
  float _1422;
  float _1430;
  bool _1431;
  bool _1432;
  float _1442;
  float _1444;
  float _1445;
  float _1446;
  float _1448;
  float _1452;
  float _1456;
  float _1460;
  float _1464;
  uint _1466;
  uint _1468;
  float2 _1469;
  float _1472;
  float4 _1481;
  float _1489;
  float4 _1498;
  float _1507;
  float _1509;
  float _1513;
  float _1514;
  float _1515;
  float _1518;
  float _1519;
  float _1524;
  float _1527;
  float _1530;
  float _1533;
  float _1539;
  float _1541;
  float _1543;
  float _1545;
  float _1551;
  float _1555;
  float4 _1556;
  float _1560;
  float _1561;
  float _1563;
  uint _1565;
  uint _1567;
  float2 _1568;
  float _1571;
  float4 _1580;
  float _1588;
  float4 _1597;
  float _1606;
  float _1608;
  float _1612;
  float _1613;
  float _1614;
  float _1617;
  float _1618;
  float _1623;
  float _1626;
  float _1629;
  float _1632;
  float _1638;
  float _1640;
  float _1642;
  float _1644;
  float _1650;
  float _1654;
  float4 _1655;
  float _1659;
  float _1667;
  bool _1668;
  bool _1669;
  float _1679;
  float _1681;
  float _1683;
  float _1685;
  float _1689;
  float _1693;
  float _1697;
  float _1701;
  uint _1703;
  uint _1705;
  float2 _1706;
  float _1709;
  float4 _1718;
  float _1726;
  float4 _1735;
  float _1744;
  float _1746;
  float _1750;
  float _1751;
  float _1752;
  float _1755;
  float _1756;
  float _1761;
  float _1764;
  float _1767;
  float _1770;
  float _1776;
  float _1778;
  float _1780;
  float _1782;
  float _1788;
  float _1792;
  float4 _1793;
  float _1797;
  float _1798;
  float _1800;
  uint _1802;
  uint _1804;
  float2 _1805;
  float _1808;
  float4 _1817;
  float _1825;
  float4 _1834;
  float _1843;
  float _1845;
  float _1849;
  float _1850;
  float _1851;
  float _1854;
  float _1855;
  float _1860;
  float _1863;
  float _1866;
  float _1869;
  float _1875;
  float _1877;
  float _1879;
  float _1881;
  float _1887;
  float _1891;
  float4 _1892;
  float _1896;
  float _1904;
  bool _1905;
  bool _1906;
  float _1916;
  float _1918;
  float _1927;
  float _1986;
  float _1987;
  float _1993;
  float _2002;
  float _2011;
  float _2020;
  float _2025;
  float _2028;
  float _2030;
  float _2041;
  float _2052;
  float _2063;
  float _2075;
  float _2084;
  float _2093;
  float _2103;
  float _2112;
  float _2121;
  float _2126;
  float _2131;
  float _2136;
  float _2138;
  float _2140;
  float _2142;
  float _2144;
  float _2146;
  float _2147;
  float _2149;
  float _2157;
  float _2165;
  float _2173;
  float _2189;
  float _2193;
  float _2208;
  float _2227;
  float _2235;
  float _2243;
  float _2255;
  float _2265;
  float _2275;
  float _2289;
  int __loop_jump_target = -1;
  _25 = (uint)(SV_Position.x);
  _26 = (uint)(SV_Position.y);
  _27 = (float)((uint)((uint)(_25)));
  _28 = (float)((uint)((uint)(_26)));
  _32 = frac(frac(dot(float2(_27, _28), float2(0.06711056f, 0.00583715f))) * 52.982918f);
  _34 = __3__36__0__0__g_sceneColor.Load(int3(_25, _26, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
  _41 = min(_motionBlurParam.y, 1000.0f);
  _43 = (TEXCOORD.x * 2.0f) + -1.0f;
  _45 = 1.0f - (TEXCOORD.y * 2.0f);
  _48 = __3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);  // [sem: _3__36__0__0__g_depth_sampleLod]
  // [sem: _3__36__0__0__g_velocityTile_sampleLod]
  _76 = __3__36__0__0__g_velocityTile.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(saturate(min(((_tileSizeAndInvSize.x * TEXCOORD.x) + ((_32 + -0.5f) * 0.5f)), _tileSizeAndInvSize.x) * _tileSizeAndInvSize.z), saturate(min((((frac(frac(dot(float2((_27 + 32.665f), (_28 + 11.815f)), float2(0.06711056f, 0.00583715f))) * 52.982918f) + -0.5f) * 0.5f) + (_tileSizeAndInvSize.y * TEXCOORD.y)), _tileSizeAndInvSize.y) * _tileSizeAndInvSize.w)), 0.0f);
  _84 = _textureSizeAndInvSize.y / _textureSizeAndInvSize.x;
  _85 = _84 * _76.w;
  _89 = max(_temporalReprojectionParams.x, _temporalReprojectionParams.w);
  _91 = _76.z - (_89 * _76.z);
  _93 = (_89 * _85) - _85;
  _94 = _84 * _76.y;
  _96 = _76.x - (_89 * _76.x);
  _98 = (_89 * _94) - _94;
  _102 = sqrt((_91 * _91) + (_93 * _93));
  _103 = abs(_93);
  _104 = abs(_91);
  _107 = min(_104, _103) / max(_104, _103);
  _108 = _107 * _107;
  _113 = ((((_108 * 0.0872929f) + -0.301895f) * _108) + 1.0f) * _107;
  _116 = select((_103 > _104), (1.5707964f - _113), _113);
  _119 = select((_91 < 0.0f), (3.1415927f - _116), _116);
  _122 = select((_93 < 0.0f), (-0.0f - _119), _119);
  if (!isnan(_102)) {
    _127 = isnan(_122);
  } else {
    _127 = true;
  }
  _128 = select(_127, 0.0f, _122);
  _132 = min((_textureSizeAndInvSize.x * 0.00026041668f), (_textureSizeAndInvSize.y * 0.00046296295f)) * 0.04f;
  _134 = min(select(_127, 0.0f, _102), _132);
  _136 = cos(_128) * _134;
  _138 = sin(_128) * _134;
  _142 = sqrt((_96 * _96) + (_98 * _98));
  _143 = abs(_98);
  _144 = abs(_96);
  _147 = min(_144, _143) / max(_144, _143);
  _148 = _147 * _147;
  _153 = ((((_148 * 0.0872929f) + -0.301895f) * _148) + 1.0f) * _147;
  _156 = select((_143 > _144), (1.5707964f - _153), _153);
  _159 = select((_96 < 0.0f), (3.1415927f - _156), _156);
  _162 = select((_98 < 0.0f), (-0.0f - _159), _159);
  if (!isnan(_142)) {
    _167 = isnan(_162);
  } else {
    _167 = true;
  }
  _168 = select(_167, 0.0f, _162);
  _169 = _136 * _41;
  _170 = _138 * _41;
  _173 = min(select(_167, 0.0f, _142), _132) * _41;
  _175 = cos(_168) * _173;
  _177 = sin(_168) * _173;
  _185 = max(0.0f, (min(sqrt((_170 * _170) + (_169 * _169)), _motionBlurParam.z) + -1.0f));
  _192 = max(0.0f, (min(sqrt((_177 * _177) + (_175 * _175)), _motionBlurParam.z) + -1.0f));
  _193 = max(1e-07f, _48.x);  // [sem: _3__36__0__0__g_depth_sampleLod_derived]
  _196 = _nearFarProj.x / _193;
  if (_backgroundBlurParam1.z > 0.5f) {
    _212 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _193, mad((_invViewProjRelative[3].y), _45, ((_invViewProjRelative[3].x) * _43)));
    _221 = (mad((_invViewProjRelative[0].z), _193, mad((_invViewProjRelative[0].y), _45, ((_invViewProjRelative[0].x) * _43))) + (_invViewProjRelative[0].w)) / _212;
    _230 = (mad((_invViewProjRelative[1].z), _193, mad((_invViewProjRelative[1].y), _45, ((_invViewProjRelative[1].x) * _43))) + (_invViewProjRelative[1].w)) / _212;
    _239 = (mad((_invViewProjRelative[2].z), _193, mad((_invViewProjRelative[2].y), _45, ((_invViewProjRelative[2].x) * _43))) + (_invViewProjRelative[2].w)) / _212;
    _243 = max(0.0f, (_volumeSize.z + -48.0f));
    _250 = max(0.0f, sqrt(((_230 * _230) + (_221 * _221)) + (_239 * _239)));
    if (!(_250 <= 128.0f)) {
      if (!(_243 <= 0.0f)) {
        _271 = ((log2((((_250 + -128.0f) * 0.0078125f) * (exp2(_243 * 0.056583475f) + -1.0f)) + 1.0f) * 17.673004f) + 48.0f);
      } else {
        _271 = 48.0f;
      }
    } else {
      _271 = (log2((_250 * 0.04351966f) + 1.0f) * 17.673004f);
    }
    // [sem: _3__36__0__0__g_texFroxel_sampleLod]
    _275 = __3__36__0__0__g_texFroxel.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(TEXCOORD.x, TEXCOORD.y, (_271 / _volumeSize.z)), 0.0f);
    if (_275.w < 0.9f) {
      _286 = min((((saturate(_196 * 1e-05f) * 98.0f) + 2.0f) * (1.0f - sqrt(_275.w))), 2.2f);
      _292 = _34.y;
      _293 = _34.x;
      _294 = _34.z;
      _295 = _34.w;
      _296 = ((int)(uint)((int)((_48.x < 1e-07f) || (_48.x == 1.0f))));
      _297 = 0;
      while(true) {
        _298 = (int)(_297) * (int)(3);
        _306 = (((_global_0[((int)min((uint)(_298), (uint)(11)))]) * _286) * _textureSizeAndInvSize.z) + TEXCOORD.x;
        _315 = (((_global_0[((int)min((uint)(((int)(_298) + (int)(1))), (uint)(11)))]) * _286) * _textureSizeAndInvSize.w) + TEXCOORD.y;
        _318 = __3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_306, _315), 0.0f);  // [sem: _3__36__0__0__g_depth_sampleLod]
        _322 = saturate((_318.x - _48.x) * 10000.0f);  // [sem: expr_sat]
        _326 = _global_0[((int)min((uint)(((int)(_298) + (int)(2))), (uint)(11)))];
        _329 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_306, _315), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
        _334 = _329.x * _326;
        _335 = _329.y * _326;
        _336 = _329.z * _326;
        _337 = _329.w * _326;
        _341 = (_334 + _293) + ((_34.x - _334) * _322);
        _345 = (_335 + _292) + ((_34.y - _335) * _322);
        _349 = (_336 + _294) + ((_34.z - _336) * _322);
        _353 = (_337 + _295) + ((_34.w - _337) * _322);
        _358 = ((int)(uint)((int)((_318.x < 1e-07f) || (_318.x == 1.0f)))) & _296;
        _359 = (int)(_297) + (int)(1);
        if (!(_359 == 4)) {
          _292 = _345;
          _293 = _341;
          _294 = _349;
          _295 = _353;
          _296 = _358;
          _297 = _359;
          continue;
        }
        if (_358 == 0) {
          _369 = (_341 * 0.2f);
          _370 = (_345 * 0.2f);
          _371 = (_349 * 0.2f);
          _372 = (_353 * 0.2f);
        } else {
          _369 = _34.x;
          _370 = _34.y;
          _371 = _34.z;
          _372 = _34.w;
        }
        break;
      }
    } else {
      _369 = _34.x;
      _370 = _34.y;
      _371 = _34.z;
      _372 = _34.w;
    }
  } else {
    _369 = _34.x;
    _370 = _34.y;
    _371 = _34.z;
    _372 = _34.w;
  }
  _373 = _185 * _185;
  if (_373 < 0.25f) {
    // [sem: _3__36__0__0__g_glareResult_sampleLod]
    _380 = __3__36__0__0__g_glareResult.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);
    // [sem: _3__36__0__0__g_glareResult_sampleLod]
    _385 = __3__36__0__0__g_glareResult.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);
    // RenoDX: >>> [Patch: BloomExposureDecodeMatch] [Version: 1.16.00]
    // Description: The glare/bloom buffer is written pre-multiplied by whatever exposure value the
    //              histogram/auto-exposure pass used when it encoded it, and this pass divides that
    //              factor back out. Vanilla always divides by the instantaneous exposure
    //              (_exposure0.x). When the RenoDX improved auto-exposure path is active the encode
    //              side uses the slow/filtered exposure instead, so dividing by the instantaneous
    //              value here leaves a mismatched scale and bloom visibly pumps or flickers as the
    //              exposure adapts. This block selects the matching slow-filtered exposure
    //              (_exposure4.z, floored to avoid a divide by zero) whenever the improved
    //              auto-exposure path is enabled, and falls back to the untouched vanilla
    //              _exposure0.x otherwise.
    float _bloomDecodeExp = (IMPROVED_AUTO_EXPOSURE >= 1) ? max(_exposure4.z, 0.001f) : _exposure0.x;
    _390 = (_385.z + _380.z) / _bloomDecodeExp;
    _392 = (_385.y + _380.y) / _bloomDecodeExp;
    _394 = (_385.x + _380.x) / _bloomDecodeExp;
    // RenoDX: <<< [Patch: BloomExposureDecodeMatch]

    // RenoDX: >>> [Patch: BloomStrength] [Version: 1.16.00]
    // Description: Scales the decoded bloom/glare contribution before it is mixed into the scene
    //              colour so the effect's overall intensity becomes user controllable. The scale is
    //              1.0 at the default setting, which reproduces the vanilla bloom amount exactly,
    //              and 0.0 removes bloom entirely.
    {
      float _bloomScale = BLOOM_STRENGTH;
      _390 *= _bloomScale;
      _392 *= _bloomScale;
      _394 *= _bloomScale;
    }
    // RenoDX: <<< [Patch: BloomStrength]
    _401 = ((((_392 * 0.33951f) + (_390 * 0.04737f)) + (_394 * 0.61312f)) * 0.5f) + _369;
    _408 = ((((_392 * 0.91636f) + (_390 * 0.01345f)) + (_394 * 0.0702f)) * 0.5f) + _370;
    _415 = ((((_392 * 0.10958f) + (_390 * 0.8698f)) + (_394 * 0.02062f)) * 0.5f) + _371;
    _420 = (float)((uint)((uint)(((uint)((uint)(_colorCorrectionColor.w)) >> 16) & 255)));
    _423 = (float)((uint)((uint)(((uint)((uint)(_colorCorrectionColor.w)) >> 8) & 255)));
    _425 = (float)((uint)((uint)(_colorCorrectionColor.w & 255)));
    _436 = _401 / max(1e-05f, select(((_420 * 0.003921569f) < 0.04045f), (_420 * 0.000303527f), exp2(log2((_420 * 0.003717127f) + 0.052132703f) * 2.4f)));
    _447 = _408 / max(1e-05f, select(((_423 * 0.003921569f) < 0.04045f), (_423 * 0.000303527f), exp2(log2((_423 * 0.003717127f) + 0.052132703f) * 2.4f)));
    _458 = _415 / max(1e-05f, select(((_425 * 0.003921569f) < 0.04045f), (_425 * 0.000303527f), exp2(log2((_425 * 0.003717127f) + 0.052132703f) * 2.4f)));
    _470 = (((_401 - _436) + (((_401 / max(1e-05f, _autoWhiteBalanceColor.x)) - _401) * 0.75f)) * _colorCorrectionIntensity.w) + _436;
    _479 = (((_408 - _447) + (((_408 / max(1e-05f, _autoWhiteBalanceColor.y)) - _408) * 0.75f)) * _colorCorrectionIntensity.w) + _447;
    _488 = (((_415 - _458) + (((_415 / max(1e-05f, _autoWhiteBalanceColor.z)) - _415) * 0.75f)) * _colorCorrectionIntensity.w) + _458;
    _498 = select((_adaptationTintColor.x <= 0.0031308f), (_adaptationTintColor.x * 12.92f), (((pow(_adaptationTintColor.x, 0.41666666f)) * 1.055f) + -0.055f));
    _507 = select((_adaptationTintColor.y <= 0.0031308f), (_adaptationTintColor.y * 12.92f), (((pow(_adaptationTintColor.y, 0.41666666f)) * 1.055f) + -0.055f));
    _516 = select((_adaptationTintColor.z <= 0.0031308f), (_adaptationTintColor.z * 12.92f), (((pow(_adaptationTintColor.z, 0.41666666f)) * 1.055f) + -0.055f));
    _521 = ((_507 * 0.33951f) + (_498 * 0.61312f)) + (_516 * 0.04737f);
    _526 = ((_507 * 0.91636f) + (_498 * 0.0702f)) + (_516 * 0.01345f);
    _531 = ((_507 * 0.10958f) + (_498 * 0.02062f)) + (_516 * 0.8698f);
    _533 = max(dot(float3(_521, _526, _531), float3(0.212671f, 0.71516f, 0.072169f)), 0.0001f);
    _535 = (_521 * _470) / _533;
    _537 = (_526 * _479) / _533;
    _539 = (_531 * _488) / _533;
    _541 = saturate(_adaptationTintColor.w);  // [sem: expr_sat]
    _542 = dot(float3(_470, _479, _488), float3(0.212671f, 0.71516f, 0.072169f));
    _544 = max(dot(float3(_535, _537, _539), float3(0.212671f, 0.71516f, 0.072169f)), 0.0001f);
    _552 = -0.0f - min(0.0f, (-0.0f - (_470 + ((((_542 * _535) / _544) - _470) * _541))));
    _560 = -0.0f - min(0.0f, (-0.0f - (_479 + ((((_542 * _537) / _544) - _479) * _541))));
    _568 = -0.0f - min(0.0f, (-0.0f - (_488 + ((((_542 * _539) / _544) - _488) * _541))));
    _584 = min(max((9000.0f - (5000.0f / (exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f))), 1000.0f), 40000.0f) * 0.01f;
    if (!(_584 <= 66.0f)) {
      _588 = log2(_584 + -60.0f);
      _601 = (exp2(_588 * -0.075514846f) * 1.1298909f);
      _602 = saturate(exp2(_588 * -0.13320476f) * 1.2929362f);  // [sem: expr_sat]
    } else {
      _601 = ((log2(_584) * 0.27038395f) + -0.6318414f);
      _602 = 1.0f;  // [sem: expr_sat]
    }
    _603 = saturate(_601);  // [sem: _601_sat]
    if (!(_584 >= 66.0f)) {
      if (!(_584 <= 19.0f)) {
        _614 = saturate((log2(_584 + -10.0f) * 0.37652227f) + -1.1962541f);  // [sem: expr_sat]
      } else {
        _614 = 0.0f;  // [sem: expr_sat]
      }
    } else {
      _614 = 1.0f;  // [sem: expr_sat]
    }
    _622 = select((_602 < 0.04045f), (_602 * 0.07739938f), exp2(log2((_602 + 0.055f) * 0.94786733f) * 2.4f));
    _630 = select((_603 < 0.04045f), (_603 * 0.07739938f), exp2(log2((_603 + 0.055f) * 0.94786733f) * 2.4f));
    _638 = select((_614 < 0.04045f), (_614 * 0.07739938f), exp2(log2((_614 + 0.055f) * 0.94786733f) * 2.4f));
    _650 = _552 / max(1e-05f, ((((((_622 * 0.61312f) + -1.0f) + (_630 * 0.33951f)) + (_638 * 0.04737f)) * _renderParam.y) + 1.0f));
    _660 = _560 / max(1e-05f, ((((((_622 * 0.0702f) + -1.0f) + (_630 * 0.91636f)) + (_638 * 0.01345f)) * _renderParam.y) + 1.0f));
    _670 = _568 / max(1e-05f, ((((((_622 * 0.02062f) + -1.0f) + (_630 * 0.10958f)) + (_638 * 0.8698f)) * _renderParam.y) + 1.0f));
    _684 = ((min(min(_552, _560), _568) + max(max(_552, _560), _568)) * 0.5f) / max(1e-05f, ((min(min(_650, _660), _670) + max(max(_650, _660), _670)) * 0.5f));
    _2294 = (_684 * _650);
    _2295 = (_684 * _660);
    _2296 = (_684 * _670);
  } else {
    _691 = _textureSizeAndInvSize.z * 0.5f;
    _693 = _textureSizeAndInvSize.w * 0.5f;
    _696 = (_textureSizeAndInvSize.x + -0.5f) * _textureSizeAndInvSize.z;
    _699 = (_textureSizeAndInvSize.y + -0.5f) * _textureSizeAndInvSize.w;
    _700 = _textureSizeAndInvSize.z * _169;
    _701 = _textureSizeAndInvSize.w * _170;
    _702 = -0.0f - _700;
    _703 = -0.0f - _701;
    // [sem: _3__36__0__0__g_glareResult_sampleLod]
    _705 = __3__36__0__0__g_glareResult.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);
    // RenoDX: >>> [Patch: BloomExposureDecodeMatch] [Version: 1.16.00]
    // Description: High-motion branch counterpart of the bloom decode fix. The glare/bloom buffer is
    //              stored pre-multiplied by the exposure value used when it was encoded, and this
    //              pass divides that factor back out. Vanilla always divides by the instantaneous
    //              exposure (_exposure0.x); when the RenoDX improved auto-exposure path is active the
    //              encode side uses the slow/filtered exposure, so the vanilla divisor leaves a
    //              mismatched scale and bloom pumps as the exposure adapts. This block selects the
    //              matching slow-filtered exposure (_exposure4.z, floored to avoid a divide by zero)
    //              when the improved auto-exposure path is enabled and otherwise keeps the vanilla
    //              _exposure0.x divisor.
    float _bloomDecodeExp2 = (IMPROVED_AUTO_EXPOSURE >= 1) ? max(_exposure4.z, 0.001f) : _exposure0.x;
    _709 = _705.x / _bloomDecodeExp2;  // [sem: _3__36__0__0__g_glareResult_sampleLod_derived]
    _710 = _705.y / _bloomDecodeExp2;  // [sem: _3__36__0__0__g_glareResult_sampleLod_derived]
    _711 = _705.z / _bloomDecodeExp2;  // [sem: _3__36__0__0__g_glareResult_sampleLod_derived]
    // RenoDX: <<< [Patch: BloomExposureDecodeMatch]

    // RenoDX: >>> [Patch: BloomStrength] [Version: 1.16.00]
    // Description: High-motion branch counterpart of the bloom intensity control. Scales the decoded
    //              bloom/glare contribution before it is mixed into the scene colour. The scale is
    //              1.0 at the default setting, reproducing the vanilla bloom amount exactly, and 0.0
    //              removes bloom entirely.
    {
      float _bloomScale2 = BLOOM_STRENGTH;
      _709 *= _bloomScale2;
      _710 *= _bloomScale2;
      _711 *= _bloomScale2;
    }
    // RenoDX: <<< [Patch: BloomStrength]
    if ((_192 * _192) > (_373 * 0.4f)) {
      _716 = _32 * 0.25f;
      _718 = (1.0f - _32) * 0.25f;
      // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _728 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(max(((_700 * _716) + TEXCOORD.x), _691), _696), min(max(((_701 * _716) + TEXCOORD.y), _693), _699)), 0.0f);
      // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _740 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(max(((_718 * _702) + TEXCOORD.x), _691), _696), min(max(((_718 * _703) + TEXCOORD.y), _693), _699)), 0.0f);
      _745 = (_32 + 1.0f) * 0.25f;
      _747 = (2.0f - _32) * 0.25f;
      // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _756 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(max(((_700 * _745) + TEXCOORD.x), _691), _696), min(max(((_701 * _745) + TEXCOORD.y), _693), _699)), 0.0f);
      // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _768 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(max(((_747 * _702) + TEXCOORD.x), _691), _696), min(max(((_747 * _703) + TEXCOORD.y), _693), _699)), 0.0f);
      _773 = (_32 + 2.0f) * 0.25f;
      _775 = (3.0f - _32) * 0.25f;
      // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _784 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(max(((_700 * _773) + TEXCOORD.x), _691), _696), min(max(((_701 * _773) + TEXCOORD.y), _693), _699)), 0.0f);
      // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _796 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(max(((_775 * _702) + TEXCOORD.x), _691), _696), min(max(((_775 * _703) + TEXCOORD.y), _693), _699)), 0.0f);
      _801 = (_32 + 3.0f) * 0.25f;
      _803 = (4.0f - _32) * 0.25f;
      // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _812 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(max(((_700 * _801) + TEXCOORD.x), _691), _696), min(max(((_701 * _801) + TEXCOORD.y), _693), _699)), 0.0f);
      // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _824 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(max(((_803 * _702) + TEXCOORD.x), _691), _696), min(max(((_803 * _703) + TEXCOORD.y), _693), _699)), 0.0f);
      _1983 = ((((((((_740.x + _728.x) + _756.x) + _768.x) + _784.x) + _796.x) + _812.x) + _824.x) * 0.125f);
      _1984 = ((((((((_740.y + _728.y) + _756.y) + _768.y) + _784.y) + _796.y) + _812.y) + _824.y) * 0.125f);
      _1985 = ((((((((_740.z + _728.z) + _756.z) + _768.z) + _784.z) + _796.z) + _812.z) + _824.z) * 0.125f);
    } else {
      _854 = (uint)(_textureSizeAndInvSize.x * TEXCOORD.x);
      _856 = (uint)(_textureSizeAndInvSize.y * TEXCOORD.y);
      _858 = __3__36__0__0__g_velocity.Load(int3(_854, _856, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _863 = _motionBlurParam.x * _858.x;  // [sem: _3__36__0__0__g_velocity_load_derived]
      _865 = _motionBlurParam.x * (_textureSizeAndInvSize.y / _textureSizeAndInvSize.x);
      _868 = (uint)(_backgroundBlurParam1.w);
      _870 = ((_868 & 1) == 0);
      if (!_870) {
        // [sem: _3__36__0__0__g_distortionOffsetHalf_load]
        _879 = __3__36__0__0__g_distortionOffsetHalf.Load(int3(((int)((uint)(((float)((uint)((uint)(_854)))) * 0.5f))), ((int)((uint)(((float)((uint)((uint)(_856)))) * 0.5f))), 0));
        _884 = (_879.x + _863);
        _885 = _879.y;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      } else {
        _884 = _863;
        _885 = -0.0f;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      }
      _887 = _885 - (_865 * _858.y);
      _889 = ((_868 & 2) == 0);
      if (!_889) {
        // [sem: _3__36__0__0__g_distortionOffsetQuarter_load]
        _898 = __3__36__0__0__g_distortionOffsetQuarter.Load(int3(((int)((uint)(((float)((uint)((uint)(_854)))) * 0.25f))), ((int)((uint)(((float)((uint)((uint)(_856)))) * 0.25f))), 0));
        _904 = (_898.x + _884);
        _905 = (_898.y + _887);
      } else {
        _904 = _884;
        _905 = _887;
      }
      _910 = -0.0f - max(_temporalReprojectionParams.x, _temporalReprojectionParams.w);
      _912 = (_904 * _910) + _904;
      _914 = (_905 * _910) + _905;
      _918 = sqrt((_912 * _912) + (_914 * _914));
      _919 = abs(_914);
      _920 = abs(_912);
      _923 = min(_920, _919) / max(_920, _919);
      _924 = _923 * _923;
      _929 = ((((_924 * 0.0872929f) + -0.301895f) * _924) + 1.0f) * _923;
      _932 = select((_919 > _920), (1.5707964f - _929), _929);
      _935 = select((_912 < 0.0f), (3.1415927f - _932), _932);
      _938 = select((_914 < 0.0f), (-0.0f - _935), _935);
      if (!isnan(_918)) {
        _943 = isnan(_938);
      } else {
        _943 = true;
      }
      _944 = select(_943, 0.0f, _938);
      _948 = min((_textureSizeAndInvSize.x * 0.00026041668f), (_textureSizeAndInvSize.y * 0.00046296295f)) * 0.04f;
      _950 = min(select(_943, 0.0f, _918), _948);
      _952 = cos(_944) * _950;
      _954 = sin(_944) * _950;
      _955 = 4.0f / _185;
      _956 = _32 * 0.25f;
      _958 = (1.0f - _32) * 0.25f;
      _962 = min(max(((_700 * _956) + TEXCOORD.x), _691), _696);
      _966 = min(max(((_701 * _956) + TEXCOORD.y), _693), _699);
      _970 = min(max(((_958 * _702) + TEXCOORD.x), _691), _696);
      _974 = min(max(((_958 * _703) + TEXCOORD.y), _693), _699);
      _976 = (uint)(_962 * _textureSizeAndInvSize.x);
      _978 = (uint)(_966 * _textureSizeAndInvSize.y);
      _979 = __3__36__0__0__g_velocity.Load(int3(_976, _978, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _982 = _979.x * _motionBlurParam.x;  // [sem: _3__36__0__0__g_velocity_load_derived]
      if (!_870) {
        // [sem: _3__36__0__0__g_distortionOffsetHalf_load]
        _991 = __3__36__0__0__g_distortionOffsetHalf.Load(int3(((int)((uint)(((float)((uint)((uint)(_976)))) * 0.5f))), ((int)((uint)(((float)((uint)((uint)(_978)))) * 0.5f))), 0));
        _996 = (_991.x + _982);
        _997 = _991.y;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      } else {
        _996 = _982;
        _997 = -0.0f;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      }
      _999 = _997 - (_979.y * _865);
      if (!_889) {
        // [sem: _3__36__0__0__g_distortionOffsetQuarter_load]
        _1008 = __3__36__0__0__g_distortionOffsetQuarter.Load(int3(((int)((uint)(((float)((uint)((uint)(_976)))) * 0.25f))), ((int)((uint)(((float)((uint)((uint)(_978)))) * 0.25f))), 0));
        _1014 = (_1008.x + _996);
        _1015 = (_1008.y + _999);
      } else {
        _1014 = _996;
        _1015 = _999;
      }
      _1017 = (_1014 * _910) + _1014;
      _1019 = (_1015 * _910) + _1015;
      _1023 = sqrt((_1019 * _1019) + (_1017 * _1017));
      _1024 = abs(_1019);
      _1025 = abs(_1017);
      _1028 = min(_1025, _1024) / max(_1025, _1024);
      _1029 = _1028 * _1028;
      _1034 = ((((_1029 * 0.0872929f) + -0.301895f) * _1029) + 1.0f) * _1028;
      _1037 = select((_1024 > _1025), (1.5707964f - _1034), _1034);
      _1040 = select((_1017 < 0.0f), (3.1415927f - _1037), _1037);
      _1043 = select((_1019 < 0.0f), (-0.0f - _1040), _1040);
      if (!isnan(_1023)) {
        _1048 = isnan(_1043);
      } else {
        _1048 = true;
      }
      _1049 = select(_1048, 0.0f, _1043);
      _1051 = min(select(_1048, 0.0f, _1023), _948);
      _1053 = cos(_1049) * _1051;
      _1055 = sin(_1049) * _1051;
      _1062 = min((sqrt((_1055 * _1055) + (_1053 * _1053)) * _41), _motionBlurParam.z);
      _1070 = _nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointBlackBorder, float2(_962, _966), 0.0f))).x));
      _1072 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_962, _966), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _1076 = _1070 - _196;
      _1085 = max(0.0f, (min((sqrt((_954 * _954) + (_952 * _952)) * _41), _motionBlurParam.z) + -1.0f)) * _955;
      _1087 = max((_32 + -1.0f), 0.0f);
      _1089 = saturate(_1085 - _1087);  // [sem: expr_sat]
      _1091 = (uint)(_970 * _textureSizeAndInvSize.x);
      _1093 = (uint)(_974 * _textureSizeAndInvSize.y);
      _1094 = __3__36__0__0__g_velocity.Load(int3(_1091, _1093, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1097 = _1094.x * _motionBlurParam.x;  // [sem: _3__36__0__0__g_velocity_load_derived]
      if (!_870) {
        // [sem: _3__36__0__0__g_distortionOffsetHalf_load]
        _1106 = __3__36__0__0__g_distortionOffsetHalf.Load(int3(((int)((uint)(((float)((uint)((uint)(_1091)))) * 0.5f))), ((int)((uint)(((float)((uint)((uint)(_1093)))) * 0.5f))), 0));
        _1111 = (_1106.x + _1097);
        _1112 = _1106.y;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      } else {
        _1111 = _1097;
        _1112 = -0.0f;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      }
      _1114 = _1112 - (_1094.y * _865);
      if (!_889) {
        // [sem: _3__36__0__0__g_distortionOffsetQuarter_load]
        _1123 = __3__36__0__0__g_distortionOffsetQuarter.Load(int3(((int)((uint)(((float)((uint)((uint)(_1091)))) * 0.25f))), ((int)((uint)(((float)((uint)((uint)(_1093)))) * 0.25f))), 0));
        _1129 = (_1123.x + _1111);
        _1130 = (_1123.y + _1114);
      } else {
        _1129 = _1111;
        _1130 = _1114;
      }
      _1132 = (_1129 * _910) + _1129;
      _1134 = (_1130 * _910) + _1130;
      _1138 = sqrt((_1134 * _1134) + (_1132 * _1132));
      _1139 = abs(_1134);
      _1140 = abs(_1132);
      _1143 = min(_1140, _1139) / max(_1140, _1139);
      _1144 = _1143 * _1143;
      _1149 = ((((_1144 * 0.0872929f) + -0.301895f) * _1144) + 1.0f) * _1143;
      _1152 = select((_1139 > _1140), (1.5707964f - _1149), _1149);
      _1155 = select((_1132 < 0.0f), (3.1415927f - _1152), _1152);
      _1158 = select((_1134 < 0.0f), (-0.0f - _1155), _1155);
      if (!isnan(_1138)) {
        _1163 = isnan(_1158);
      } else {
        _1163 = true;
      }
      _1164 = select(_1163, 0.0f, _1158);
      _1166 = min(select(_1163, 0.0f, _1138), _948);
      _1168 = cos(_1164) * _1166;
      _1170 = sin(_1164) * _1166;
      _1176 = min((sqrt((_1170 * _1170) + (_1168 * _1168)) * _41), _motionBlurParam.z);
      _1180 = _nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointBlackBorder, float2(_970, _974), 0.0f))).x));
      _1181 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_970, _974), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _1185 = _1180 - _196;
      _1193 = dot(float2(saturate(_1185 + 0.5f), saturate(0.5f - _1185)), float2(_1089, saturate((_1176 * _955) - _1087)));
      _1194 = (_1070 > _1180);
      _1195 = (_1176 > _1062);
      _1205 = select((_1195 && _1194), _1193, dot(float2(saturate(_1076 + 0.5f), saturate(0.5f - _1076)), float2(_1089, saturate((_1062 * _955) - _1087))));
      _1207 = select((_1195 || _1194), _1193, _1205);
      _1208 = _32 + 1.0f;
      _1209 = _1208 * 0.25f;
      _1211 = (2.0f - _32) * 0.25f;
      _1215 = min(max(((_700 * _1209) + TEXCOORD.x), _691), _696);
      _1219 = min(max(((_701 * _1209) + TEXCOORD.y), _693), _699);
      _1223 = min(max(((_1211 * _702) + TEXCOORD.x), _691), _696);
      _1227 = min(max(((_1211 * _703) + TEXCOORD.y), _693), _699);
      _1229 = (uint)(_1215 * _textureSizeAndInvSize.x);
      _1231 = (uint)(_1219 * _textureSizeAndInvSize.y);
      _1232 = __3__36__0__0__g_velocity.Load(int3(_1229, _1231, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1235 = _1232.x * _motionBlurParam.x;  // [sem: _3__36__0__0__g_velocity_load_derived]
      if (!_870) {
        // [sem: _3__36__0__0__g_distortionOffsetHalf_load]
        _1244 = __3__36__0__0__g_distortionOffsetHalf.Load(int3(((int)((uint)(((float)((uint)((uint)(_1229)))) * 0.5f))), ((int)((uint)(((float)((uint)((uint)(_1231)))) * 0.5f))), 0));
        _1249 = (_1244.x + _1235);
        _1250 = _1244.y;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      } else {
        _1249 = _1235;
        _1250 = -0.0f;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      }
      _1252 = _1250 - (_1232.y * _865);
      if (!_889) {
        // [sem: _3__36__0__0__g_distortionOffsetQuarter_load]
        _1261 = __3__36__0__0__g_distortionOffsetQuarter.Load(int3(((int)((uint)(((float)((uint)((uint)(_1229)))) * 0.25f))), ((int)((uint)(((float)((uint)((uint)(_1231)))) * 0.25f))), 0));
        _1267 = (_1261.x + _1249);
        _1268 = (_1261.y + _1252);
      } else {
        _1267 = _1249;
        _1268 = _1252;
      }
      _1270 = (_1267 * _910) + _1267;
      _1272 = (_1268 * _910) + _1268;
      _1276 = sqrt((_1272 * _1272) + (_1270 * _1270));
      _1277 = abs(_1272);
      _1278 = abs(_1270);
      _1281 = min(_1278, _1277) / max(_1278, _1277);
      _1282 = _1281 * _1281;
      _1287 = ((((_1282 * 0.0872929f) + -0.301895f) * _1282) + 1.0f) * _1281;
      _1290 = select((_1277 > _1278), (1.5707964f - _1287), _1287);
      _1293 = select((_1270 < 0.0f), (3.1415927f - _1290), _1290);
      _1296 = select((_1272 < 0.0f), (-0.0f - _1293), _1293);
      if (!isnan(_1276)) {
        _1301 = isnan(_1296);
      } else {
        _1301 = true;
      }
      _1302 = select(_1301, 0.0f, _1296);
      _1304 = min(select(_1301, 0.0f, _1276), _948);
      _1306 = cos(_1302) * _1304;
      _1308 = sin(_1302) * _1304;
      _1314 = min((sqrt((_1308 * _1308) + (_1306 * _1306)) * _41), _motionBlurParam.z);
      _1318 = _nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointBlackBorder, float2(_1215, _1219), 0.0f))).x));
      _1319 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1215, _1219), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _1323 = _1318 - _196;
      _1324 = max(_32, 0.0f);
      _1326 = saturate(_1085 - _1324);  // [sem: expr_sat]
      _1328 = (uint)(_1223 * _textureSizeAndInvSize.x);
      _1330 = (uint)(_1227 * _textureSizeAndInvSize.y);
      _1331 = __3__36__0__0__g_velocity.Load(int3(_1328, _1330, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1334 = _1331.x * _motionBlurParam.x;  // [sem: _3__36__0__0__g_velocity_load_derived]
      if (!_870) {
        // [sem: _3__36__0__0__g_distortionOffsetHalf_load]
        _1343 = __3__36__0__0__g_distortionOffsetHalf.Load(int3(((int)((uint)(((float)((uint)((uint)(_1328)))) * 0.5f))), ((int)((uint)(((float)((uint)((uint)(_1330)))) * 0.5f))), 0));
        _1348 = (_1343.x + _1334);
        _1349 = _1343.y;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      } else {
        _1348 = _1334;
        _1349 = -0.0f;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      }
      _1351 = _1349 - (_1331.y * _865);
      if (!_889) {
        // [sem: _3__36__0__0__g_distortionOffsetQuarter_load]
        _1360 = __3__36__0__0__g_distortionOffsetQuarter.Load(int3(((int)((uint)(((float)((uint)((uint)(_1328)))) * 0.25f))), ((int)((uint)(((float)((uint)((uint)(_1330)))) * 0.25f))), 0));
        _1366 = (_1360.x + _1348);
        _1367 = (_1360.y + _1351);
      } else {
        _1366 = _1348;
        _1367 = _1351;
      }
      _1369 = (_1366 * _910) + _1366;
      _1371 = (_1367 * _910) + _1367;
      _1375 = sqrt((_1371 * _1371) + (_1369 * _1369));
      _1376 = abs(_1371);
      _1377 = abs(_1369);
      _1380 = min(_1377, _1376) / max(_1377, _1376);
      _1381 = _1380 * _1380;
      _1386 = ((((_1381 * 0.0872929f) + -0.301895f) * _1381) + 1.0f) * _1380;
      _1389 = select((_1376 > _1377), (1.5707964f - _1386), _1386);
      _1392 = select((_1369 < 0.0f), (3.1415927f - _1389), _1389);
      _1395 = select((_1371 < 0.0f), (-0.0f - _1392), _1392);
      if (!isnan(_1375)) {
        _1400 = isnan(_1395);
      } else {
        _1400 = true;
      }
      _1401 = select(_1400, 0.0f, _1395);
      _1403 = min(select(_1400, 0.0f, _1375), _948);
      _1405 = cos(_1401) * _1403;
      _1407 = sin(_1401) * _1403;
      _1413 = min((sqrt((_1407 * _1407) + (_1405 * _1405)) * _41), _motionBlurParam.z);
      _1417 = _nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointBlackBorder, float2(_1223, _1227), 0.0f))).x));
      _1418 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1223, _1227), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _1422 = _1417 - _196;
      _1430 = dot(float2(saturate(_1422 + 0.5f), saturate(0.5f - _1422)), float2(_1326, saturate((_1413 * _955) - _1324)));
      _1431 = (_1318 > _1417);
      _1432 = (_1413 > _1314);
      _1442 = select((_1432 && _1431), _1430, dot(float2(saturate(_1323 + 0.5f), saturate(0.5f - _1323)), float2(_1326, saturate((_1314 * _955) - _1324))));
      _1444 = select((_1432 || _1431), _1430, _1442);
      _1445 = _32 + 2.0f;
      _1446 = _1445 * 0.25f;
      _1448 = (3.0f - _32) * 0.25f;
      _1452 = min(max(((_700 * _1446) + TEXCOORD.x), _691), _696);
      _1456 = min(max(((_701 * _1446) + TEXCOORD.y), _693), _699);
      _1460 = min(max(((_1448 * _702) + TEXCOORD.x), _691), _696);
      _1464 = min(max(((_1448 * _703) + TEXCOORD.y), _693), _699);
      _1466 = (uint)(_1452 * _textureSizeAndInvSize.x);
      _1468 = (uint)(_1456 * _textureSizeAndInvSize.y);
      _1469 = __3__36__0__0__g_velocity.Load(int3(_1466, _1468, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1472 = _1469.x * _motionBlurParam.x;  // [sem: _3__36__0__0__g_velocity_load_derived]
      if (!_870) {
        // [sem: _3__36__0__0__g_distortionOffsetHalf_load]
        _1481 = __3__36__0__0__g_distortionOffsetHalf.Load(int3(((int)((uint)(((float)((uint)((uint)(_1466)))) * 0.5f))), ((int)((uint)(((float)((uint)((uint)(_1468)))) * 0.5f))), 0));
        _1486 = (_1481.x + _1472);
        _1487 = _1481.y;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      } else {
        _1486 = _1472;
        _1487 = -0.0f;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      }
      _1489 = _1487 - (_1469.y * _865);
      if (!_889) {
        // [sem: _3__36__0__0__g_distortionOffsetQuarter_load]
        _1498 = __3__36__0__0__g_distortionOffsetQuarter.Load(int3(((int)((uint)(((float)((uint)((uint)(_1466)))) * 0.25f))), ((int)((uint)(((float)((uint)((uint)(_1468)))) * 0.25f))), 0));
        _1504 = (_1498.x + _1486);
        _1505 = (_1498.y + _1489);
      } else {
        _1504 = _1486;
        _1505 = _1489;
      }
      _1507 = (_1504 * _910) + _1504;
      _1509 = (_1505 * _910) + _1505;
      _1513 = sqrt((_1509 * _1509) + (_1507 * _1507));
      _1514 = abs(_1509);
      _1515 = abs(_1507);
      _1518 = min(_1515, _1514) / max(_1515, _1514);
      _1519 = _1518 * _1518;
      _1524 = ((((_1519 * 0.0872929f) + -0.301895f) * _1519) + 1.0f) * _1518;
      _1527 = select((_1514 > _1515), (1.5707964f - _1524), _1524);
      _1530 = select((_1507 < 0.0f), (3.1415927f - _1527), _1527);
      _1533 = select((_1509 < 0.0f), (-0.0f - _1530), _1530);
      if (!isnan(_1513)) {
        _1538 = isnan(_1533);
      } else {
        _1538 = true;
      }
      _1539 = select(_1538, 0.0f, _1533);
      _1541 = min(select(_1538, 0.0f, _1513), _948);
      _1543 = cos(_1539) * _1541;
      _1545 = sin(_1539) * _1541;
      _1551 = min((sqrt((_1545 * _1545) + (_1543 * _1543)) * _41), _motionBlurParam.z);
      _1555 = _nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointBlackBorder, float2(_1452, _1456), 0.0f))).x));
      _1556 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1452, _1456), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _1560 = _1555 - _196;
      _1561 = max(_1208, 0.0f);
      _1563 = saturate(_1085 - _1561);  // [sem: expr_sat]
      _1565 = (uint)(_1460 * _textureSizeAndInvSize.x);
      _1567 = (uint)(_1464 * _textureSizeAndInvSize.y);
      _1568 = __3__36__0__0__g_velocity.Load(int3(_1565, _1567, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1571 = _1568.x * _motionBlurParam.x;  // [sem: _3__36__0__0__g_velocity_load_derived]
      if (!_870) {
        // [sem: _3__36__0__0__g_distortionOffsetHalf_load]
        _1580 = __3__36__0__0__g_distortionOffsetHalf.Load(int3(((int)((uint)(((float)((uint)((uint)(_1565)))) * 0.5f))), ((int)((uint)(((float)((uint)((uint)(_1567)))) * 0.5f))), 0));
        _1585 = (_1580.x + _1571);
        _1586 = _1580.y;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      } else {
        _1585 = _1571;
        _1586 = -0.0f;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      }
      _1588 = _1586 - (_1568.y * _865);
      if (!_889) {
        // [sem: _3__36__0__0__g_distortionOffsetQuarter_load]
        _1597 = __3__36__0__0__g_distortionOffsetQuarter.Load(int3(((int)((uint)(((float)((uint)((uint)(_1565)))) * 0.25f))), ((int)((uint)(((float)((uint)((uint)(_1567)))) * 0.25f))), 0));
        _1603 = (_1597.x + _1585);
        _1604 = (_1597.y + _1588);
      } else {
        _1603 = _1585;
        _1604 = _1588;
      }
      _1606 = (_1603 * _910) + _1603;
      _1608 = (_1604 * _910) + _1604;
      _1612 = sqrt((_1608 * _1608) + (_1606 * _1606));
      _1613 = abs(_1608);
      _1614 = abs(_1606);
      _1617 = min(_1614, _1613) / max(_1614, _1613);
      _1618 = _1617 * _1617;
      _1623 = ((((_1618 * 0.0872929f) + -0.301895f) * _1618) + 1.0f) * _1617;
      _1626 = select((_1613 > _1614), (1.5707964f - _1623), _1623);
      _1629 = select((_1606 < 0.0f), (3.1415927f - _1626), _1626);
      _1632 = select((_1608 < 0.0f), (-0.0f - _1629), _1629);
      if (!isnan(_1612)) {
        _1637 = isnan(_1632);
      } else {
        _1637 = true;
      }
      _1638 = select(_1637, 0.0f, _1632);
      _1640 = min(select(_1637, 0.0f, _1612), _948);
      _1642 = cos(_1638) * _1640;
      _1644 = sin(_1638) * _1640;
      _1650 = min((sqrt((_1644 * _1644) + (_1642 * _1642)) * _41), _motionBlurParam.z);
      _1654 = _nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointBlackBorder, float2(_1460, _1464), 0.0f))).x));
      _1655 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1460, _1464), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _1659 = _1654 - _196;
      _1667 = dot(float2(saturate(_1659 + 0.5f), saturate(0.5f - _1659)), float2(_1563, saturate((_1650 * _955) - _1561)));
      _1668 = (_1555 > _1654);
      _1669 = (_1650 > _1551);
      _1679 = select((_1669 && _1668), _1667, dot(float2(saturate(_1560 + 0.5f), saturate(0.5f - _1560)), float2(_1563, saturate((_1551 * _955) - _1561))));
      _1681 = select((_1669 || _1668), _1667, _1679);
      _1683 = (_32 + 3.0f) * 0.25f;
      _1685 = (4.0f - _32) * 0.25f;
      _1689 = min(max(((_700 * _1683) + TEXCOORD.x), _691), _696);
      _1693 = min(max(((_701 * _1683) + TEXCOORD.y), _693), _699);
      _1697 = min(max(((_1685 * _702) + TEXCOORD.x), _691), _696);
      _1701 = min(max(((_1685 * _703) + TEXCOORD.y), _693), _699);
      _1703 = (uint)(_1689 * _textureSizeAndInvSize.x);
      _1705 = (uint)(_1693 * _textureSizeAndInvSize.y);
      _1706 = __3__36__0__0__g_velocity.Load(int3(_1703, _1705, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1709 = _1706.x * _motionBlurParam.x;  // [sem: _3__36__0__0__g_velocity_load_derived]
      if (!_870) {
        // [sem: _3__36__0__0__g_distortionOffsetHalf_load]
        _1718 = __3__36__0__0__g_distortionOffsetHalf.Load(int3(((int)((uint)(((float)((uint)((uint)(_1703)))) * 0.5f))), ((int)((uint)(((float)((uint)((uint)(_1705)))) * 0.5f))), 0));
        _1723 = (_1718.x + _1709);
        _1724 = _1718.y;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      } else {
        _1723 = _1709;
        _1724 = -0.0f;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      }
      _1726 = _1724 - (_1706.y * _865);
      if (!_889) {
        // [sem: _3__36__0__0__g_distortionOffsetQuarter_load]
        _1735 = __3__36__0__0__g_distortionOffsetQuarter.Load(int3(((int)((uint)(((float)((uint)((uint)(_1703)))) * 0.25f))), ((int)((uint)(((float)((uint)((uint)(_1705)))) * 0.25f))), 0));
        _1741 = (_1735.x + _1723);
        _1742 = (_1735.y + _1726);
      } else {
        _1741 = _1723;
        _1742 = _1726;
      }
      _1744 = (_1741 * _910) + _1741;
      _1746 = (_1742 * _910) + _1742;
      _1750 = sqrt((_1746 * _1746) + (_1744 * _1744));
      _1751 = abs(_1746);
      _1752 = abs(_1744);
      _1755 = min(_1752, _1751) / max(_1752, _1751);
      _1756 = _1755 * _1755;
      _1761 = ((((_1756 * 0.0872929f) + -0.301895f) * _1756) + 1.0f) * _1755;
      _1764 = select((_1751 > _1752), (1.5707964f - _1761), _1761);
      _1767 = select((_1744 < 0.0f), (3.1415927f - _1764), _1764);
      _1770 = select((_1746 < 0.0f), (-0.0f - _1767), _1767);
      if (!isnan(_1750)) {
        _1775 = isnan(_1770);
      } else {
        _1775 = true;
      }
      _1776 = select(_1775, 0.0f, _1770);
      _1778 = min(select(_1775, 0.0f, _1750), _948);
      _1780 = cos(_1776) * _1778;
      _1782 = sin(_1776) * _1778;
      _1788 = min((sqrt((_1782 * _1782) + (_1780 * _1780)) * _41), _motionBlurParam.z);
      _1792 = _nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointBlackBorder, float2(_1689, _1693), 0.0f))).x));
      _1793 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1689, _1693), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _1797 = _1792 - _196;
      _1798 = max(_1445, 0.0f);
      _1800 = saturate(_1085 - _1798);  // [sem: expr_sat]
      _1802 = (uint)(_1697 * _textureSizeAndInvSize.x);
      _1804 = (uint)(_1701 * _textureSizeAndInvSize.y);
      _1805 = __3__36__0__0__g_velocity.Load(int3(_1802, _1804, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1808 = _1805.x * _motionBlurParam.x;  // [sem: _3__36__0__0__g_velocity_load_derived]
      if (!_870) {
        // [sem: _3__36__0__0__g_distortionOffsetHalf_load]
        _1817 = __3__36__0__0__g_distortionOffsetHalf.Load(int3(((int)((uint)(((float)((uint)((uint)(_1802)))) * 0.5f))), ((int)((uint)(((float)((uint)((uint)(_1804)))) * 0.5f))), 0));
        _1822 = (_1817.x + _1808);
        _1823 = _1817.y;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      } else {
        _1822 = _1808;
        _1823 = -0.0f;  // [sem: _3__36__0__0__g_distortionOffsetHalf_load_derived]
      }
      _1825 = _1823 - (_1805.y * _865);
      if (!_889) {
        // [sem: _3__36__0__0__g_distortionOffsetQuarter_load]
        _1834 = __3__36__0__0__g_distortionOffsetQuarter.Load(int3(((int)((uint)(((float)((uint)((uint)(_1802)))) * 0.25f))), ((int)((uint)(((float)((uint)((uint)(_1804)))) * 0.25f))), 0));
        _1840 = (_1834.x + _1822);
        _1841 = (_1834.y + _1825);
      } else {
        _1840 = _1822;
        _1841 = _1825;
      }
      _1843 = (_1840 * _910) + _1840;
      _1845 = (_1841 * _910) + _1841;
      _1849 = sqrt((_1845 * _1845) + (_1843 * _1843));
      _1850 = abs(_1845);
      _1851 = abs(_1843);
      _1854 = min(_1851, _1850) / max(_1851, _1850);
      _1855 = _1854 * _1854;
      _1860 = ((((_1855 * 0.0872929f) + -0.301895f) * _1855) + 1.0f) * _1854;
      _1863 = select((_1850 > _1851), (1.5707964f - _1860), _1860);
      _1866 = select((_1843 < 0.0f), (3.1415927f - _1863), _1863);
      _1869 = select((_1845 < 0.0f), (-0.0f - _1866), _1866);
      if (!isnan(_1849)) {
        _1874 = isnan(_1869);
      } else {
        _1874 = true;
      }
      _1875 = select(_1874, 0.0f, _1869);
      _1877 = min(select(_1874, 0.0f, _1849), _948);
      _1879 = cos(_1875) * _1877;
      _1881 = sin(_1875) * _1877;
      _1887 = min((sqrt((_1881 * _1881) + (_1879 * _1879)) * _41), _motionBlurParam.z);
      _1891 = _nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_depth.SampleLevel(__0__4__0__0__g_staticPointBlackBorder, float2(_1697, _1701), 0.0f))).x));
      _1892 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1697, _1701), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
      _1896 = _1891 - _196;
      _1904 = dot(float2(saturate(_1896 + 0.5f), saturate(0.5f - _1896)), float2(_1800, saturate((_1887 * _955) - _1798)));
      _1905 = (_1792 > _1891);
      _1906 = (_1887 > _1788);
      _1916 = select((_1906 && _1905), _1904, dot(float2(saturate(_1797 + 0.5f), saturate(0.5f - _1797)), float2(_1800, saturate((_1788 * _955) - _1798))));
      _1918 = select((_1906 || _1905), _1904, _1916);
      _1927 = 1.0f - ((((((((_1207 + _1205) + _1442) + _1444) + _1679) + _1681) + _1916) + _1918) * 0.125f);
      _1983 = ((_1927 * _369) + (((((((((_1207 * _1181.x) + (_1205 * _1072.x)) + (_1442 * _1319.x)) + (_1444 * _1418.x)) + (_1679 * _1556.x)) + (_1681 * _1655.x)) + (_1916 * _1793.x)) + (_1918 * _1892.x)) * 0.125f));
      _1984 = ((_1927 * _370) + (((((((((_1207 * _1181.y) + (_1205 * _1072.y)) + (_1442 * _1319.y)) + (_1444 * _1418.y)) + (_1679 * _1556.y)) + (_1681 * _1655.y)) + (_1916 * _1793.y)) + (_1918 * _1892.y)) * 0.125f));
      _1985 = ((_1927 * _371) + (((((((((_1207 * _1181.z) + (_1205 * _1072.z)) + (_1442 * _1319.z)) + (_1444 * _1418.z)) + (_1679 * _1556.z)) + (_1681 * _1655.z)) + (_1916 * _1793.z)) + (_1918 * _1892.z)) * 0.125f));
    }
    _1986 = _136 * 2.0f;
    _1987 = _138 * 2.0f;
    _1993 = saturate(sqrt((_1987 * _1987) + (_1986 * _1986)) * 25.0f);  // [sem: expr_sat]
    _2002 = ((((_709 * 0.61312f) + _369) + (_710 * 0.33951f)) + (_711 * 0.04737f)) + (_1993 * (_1983 - _369));
    _2011 = ((((_709 * 0.0702f) + _370) + (_710 * 0.91636f)) + (_711 * 0.01345f)) + (_1993 * (_1984 - _370));
    _2020 = ((((_709 * 0.02062f) + _371) + (_710 * 0.10958f)) + (_711 * 0.8698f)) + (_1993 * (_1985 - _371));
    _2025 = (float)((uint)((uint)(((uint)((uint)(_colorCorrectionColor.w)) >> 16) & 255)));
    _2028 = (float)((uint)((uint)(((uint)((uint)(_colorCorrectionColor.w)) >> 8) & 255)));
    _2030 = (float)((uint)((uint)(_colorCorrectionColor.w & 255)));
    _2041 = _2002 / max(1e-05f, select(((_2025 * 0.003921569f) < 0.04045f), (_2025 * 0.000303527f), exp2(log2((_2025 * 0.003717127f) + 0.052132703f) * 2.4f)));
    _2052 = _2011 / max(1e-05f, select(((_2028 * 0.003921569f) < 0.04045f), (_2028 * 0.000303527f), exp2(log2((_2028 * 0.003717127f) + 0.052132703f) * 2.4f)));
    _2063 = _2020 / max(1e-05f, select(((_2030 * 0.003921569f) < 0.04045f), (_2030 * 0.000303527f), exp2(log2((_2030 * 0.003717127f) + 0.052132703f) * 2.4f)));
    _2075 = (((_2002 - _2041) + (((_2002 / max(1e-05f, _autoWhiteBalanceColor.x)) - _2002) * 0.75f)) * _colorCorrectionIntensity.w) + _2041;
    _2084 = (((_2011 - _2052) + (((_2011 / max(1e-05f, _autoWhiteBalanceColor.y)) - _2011) * 0.75f)) * _colorCorrectionIntensity.w) + _2052;
    _2093 = (((_2020 - _2063) + (((_2020 / max(1e-05f, _autoWhiteBalanceColor.z)) - _2020) * 0.75f)) * _colorCorrectionIntensity.w) + _2063;
    _2103 = select((_adaptationTintColor.x <= 0.0031308f), (_adaptationTintColor.x * 12.92f), (((pow(_adaptationTintColor.x, 0.41666666f)) * 1.055f) + -0.055f));
    _2112 = select((_adaptationTintColor.y <= 0.0031308f), (_adaptationTintColor.y * 12.92f), (((pow(_adaptationTintColor.y, 0.41666666f)) * 1.055f) + -0.055f));
    _2121 = select((_adaptationTintColor.z <= 0.0031308f), (_adaptationTintColor.z * 12.92f), (((pow(_adaptationTintColor.z, 0.41666666f)) * 1.055f) + -0.055f));
    _2126 = ((_2112 * 0.33951f) + (_2103 * 0.61312f)) + (_2121 * 0.04737f);
    _2131 = ((_2112 * 0.91636f) + (_2103 * 0.0702f)) + (_2121 * 0.01345f);
    _2136 = ((_2112 * 0.10958f) + (_2103 * 0.02062f)) + (_2121 * 0.8698f);
    _2138 = max(dot(float3(_2126, _2131, _2136), float3(0.212671f, 0.71516f, 0.072169f)), 0.0001f);
    _2140 = (_2126 * _2075) / _2138;
    _2142 = (_2131 * _2084) / _2138;
    _2144 = (_2136 * _2093) / _2138;
    _2146 = saturate(_adaptationTintColor.w);  // [sem: expr_sat]
    _2147 = dot(float3(_2075, _2084, _2093), float3(0.212671f, 0.71516f, 0.072169f));
    _2149 = max(dot(float3(_2140, _2142, _2144), float3(0.212671f, 0.71516f, 0.072169f)), 0.0001f);
    _2157 = -0.0f - min(0.0f, (-0.0f - (_2075 + ((((_2147 * _2140) / _2149) - _2075) * _2146))));
    _2165 = -0.0f - min(0.0f, (-0.0f - (_2084 + ((((_2147 * _2142) / _2149) - _2084) * _2146))));
    _2173 = -0.0f - min(0.0f, (-0.0f - (_2093 + ((((_2147 * _2144) / _2149) - _2093) * _2146))));
    _2189 = min(max((9000.0f - (5000.0f / (exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f))), 1000.0f), 40000.0f) * 0.01f;
    if (!(_2189 <= 66.0f)) {
      _2193 = log2(_2189 + -60.0f);
      _2206 = (exp2(_2193 * -0.075514846f) * 1.1298909f);
      _2207 = saturate(exp2(_2193 * -0.13320476f) * 1.2929362f);  // [sem: expr_sat]
    } else {
      _2206 = ((log2(_2189) * 0.27038395f) + -0.6318414f);
      _2207 = 1.0f;  // [sem: expr_sat]
    }
    _2208 = saturate(_2206);  // [sem: _2206_sat]
    if (!(_2189 >= 66.0f)) {
      if (!(_2189 <= 19.0f)) {
        _2219 = saturate((log2(_2189 + -10.0f) * 0.37652227f) + -1.1962541f);  // [sem: expr_sat]
      } else {
        _2219 = 0.0f;  // [sem: expr_sat]
      }
    } else {
      _2219 = 1.0f;  // [sem: expr_sat]
    }
    _2227 = select((_2207 < 0.04045f), (_2207 * 0.07739938f), exp2(log2((_2207 + 0.055f) * 0.94786733f) * 2.4f));
    _2235 = select((_2208 < 0.04045f), (_2208 * 0.07739938f), exp2(log2((_2208 + 0.055f) * 0.94786733f) * 2.4f));
    _2243 = select((_2219 < 0.04045f), (_2219 * 0.07739938f), exp2(log2((_2219 + 0.055f) * 0.94786733f) * 2.4f));
    _2255 = _2157 / max(1e-05f, ((((((_2227 * 0.61312f) + -1.0f) + (_2235 * 0.33951f)) + (_2243 * 0.04737f)) * _renderParam.y) + 1.0f));
    _2265 = _2165 / max(1e-05f, ((((((_2227 * 0.0702f) + -1.0f) + (_2235 * 0.91636f)) + (_2243 * 0.01345f)) * _renderParam.y) + 1.0f));
    _2275 = _2173 / max(1e-05f, ((((((_2227 * 0.02062f) + -1.0f) + (_2235 * 0.10958f)) + (_2243 * 0.8698f)) * _renderParam.y) + 1.0f));
    _2289 = ((min(min(_2157, _2165), _2173) + max(max(_2157, _2165), _2173)) * 0.5f) / max(1e-05f, ((min(min(_2255, _2265), _2275) + max(max(_2255, _2265), _2275)) * 0.5f));
    _2294 = (_2289 * _2255);
    _2295 = (_2289 * _2265);
    _2296 = (_2289 * _2275);
  }
  SV_Target.x = _2294;
  SV_Target.y = _2295;
  SV_Target.z = _2296;
  SV_Target.w = _372;
  return SV_Target;
}
