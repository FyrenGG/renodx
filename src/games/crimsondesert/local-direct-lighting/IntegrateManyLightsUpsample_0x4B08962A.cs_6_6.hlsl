// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports "../shared.h" for the effective RenoDX option gates and injected constants used below; Imports "../local-direct-lighting/local_light_common.hlsl" for the local-light color and attenuation helpers used below; Imports "../lighting/diffuse_brdf.hlsli" for the shared diffuse-BRDF helpers used below.
#include "../shared.h"
#include "../local-direct-lighting/local_light_common.hlsl"
#include "../lighting/diffuse_brdf.hlsli"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
struct ManyLightsData {
  float4 _position;
  float4 _color;
  uint2 _up;
  uint2 _look;
};

struct anon {
  uint4 g_tileIndex[4096];
};

struct anon_0 {
  float4 _clothLightingCategory;
  float4 _clothLightingParameter[8];
  float4 _colorPresetInfo;
  uint4 _colorPresetParameter[16];
  float4 _debugOption;
};


Texture2D<float4> __3__36__0__0__g_puddleMask : register(t139, space36);

Texture2D<float> __3__36__0__0__g_lightProfile : register(t45, space36);

Texture2D<float4> __3__36__0__0__g_blueNoise : register(t148, space36);

Texture2D<float4> __3__36__0__0__g_character : register(t47, space36);

Texture2D<float2> __3__36__0__0__g_iblBrdfLookup : register(t156, space36);

Texture2D<float2> __3__36__0__0__g_hairBrdfLookup : register(t168, space36);

StructuredBuffer<ManyLightsData> __3__37__0__0__g_manyLightsDataBuffer : register(t16, space37);

Texture2D<uint2> __3__36__0__0__g_manyLightsHitData : register(t13, space36);

Texture2D<uint> __3__36__0__0__g_tiledManyLightsMasks : register(t14, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_normal : register(t19, space36);

Texture2D<uint> __3__36__0__0__g_depthStencil : register(t49, space36);

RWTexture2D<float4> __3__38__0__1__g_sceneDiffuseUAV : register(u4, space38);

RWTexture2D<float4> __3__38__0__1__g_specularResultUAV : register(u7, space38);

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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b27, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

cbuffer __3__35__0__0__TileConstantBuffer : register(b26, space35) {
  struct {
    uint4 g_tileIndex[4096];
  } __3__35__0__0__TileConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__TileConstantBuffer_raw[4096] : packoffset(c0);
  uint4 __3__35__0__0__TileConstantBuffer_raw_uint[4096] : packoffset(c0);
};

cbuffer __3__35__0__0__MaterialParameterPresetTableConstantBuffer : register(b30, space35) {
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
  int _31;
  int _32;
  int4 _34;
  int _46;
  int _50;
  uint _57;
  uint _62;
  int _355;
  half _356;
  int _357;
  int _361;
  half _362;
  int _363;
  bool _368;
  bool _369;
  int _370;
  half _371;
  int _372;
  bool _382;
  bool _383;
  int _384;
  int _385;
  half _386;
  int _414;
  int _415;
  bool _416;
  bool _417;
  half _418;
  half _419;
  half _420;
  half _421;
  float _448;
  float _449;
  float _456;
  float _457;
  float _458;
  float _467;
  float _523;
  float _524;
  float _525;
  int _526;
  float _577;
  float _578;
  float _579;
  int _580;
  float _581;
  float _584;
  float _585;
  float _586;
  int _587;
  float _588;
  int _610;
  float _661;
  float _662;
  float _663;
  float _664;
  float _665;
  float _666;
  float _667;
  half _668;
  int _669;
  float _670;
  half _684;
  float _739;
  float _740;
  float _741;
  float _862;
  float _863;
  float _864;
  float _1310;
  float _1311;
  float _1312;
  float _1313;
  bool _1472;
  float _1473;
  float _1474;
  float _1475;
  float _1476;
  float _1477;
  float _1478;
  float _1479;
  float _1509;
  float _1510;
  float _1511;
  half _1512;
  float _1536;
  float _1569;
  float _1570;
  float _1571;
  float _1622;
  float _1623;
  float _1757;
  float _1758;
  float _1759;
  float _1812;
  float _1813;
  float _1814;
  uint _77;
  float _81;
  int _86;
  int _87;
  float _88;
  float _89;
  float _90;
  float _94;
  float _97;
  float _99;
  float _101;
  float _113;
  float _122;
  float _131;
  float _140;
  float _146;
  float _147;
  uint4 _149;
  float4 _155;
  half _164;
  half _168;
  half _173;
  half _178;
  uint _181;
  bool _182;
  float _186;
  float _190;
  float _194;
  float _196;
  half _198;
  half _200;
  half _202;
  half _209;
  half _215;
  float _218;
  float _221;
  float _225;
  float _227;
  float _228;
  float _229;
  float _230;
  float _232;
  float _235;
  float _236;
  float _237;
  float _238;
  float _241;
  float _244;
  float _247;
  half _254;
  half _261;
  half _267;
  half _269;
  half _270;
  half _271;
  half _272;
  half _274;
  half _276;
  half _278;
  half _285;
  half _292;
  half _299;
  half _300;
  half _305;
  int _306;
  bool _310;
  half _312;
  bool _317;
  int _332;
  int _347;
  bool _364;
  bool _365;
  half _374;
  float4 _391;
  float4 _403;
  float _422;
  float _425;
  float _427;
  float _435;
  float _436;
  float _437;
  float _451;
  bool _460;
  uint _481;
  int _483;
  float4 _487;
  uint _508;
  int _510;
  float4 _514;
  float _529;
  float _533;
  float _535;
  float4 _555;
  float _559;
  float _560;
  float _561;
  float _562;
  float _593;
  float _612;
  float4 _632;
  float _636;
  float _637;
  float _638;
  float _672;
  float _674;
  float _676;
  half _690;
  float _695;
  float _700;
  float _705;
  float _706;
  float _707;
  float _708;
  float _714;
  float _715;
  float _716;
  float _717;
  float _725;
  float _727;
  float _730;
  float _732;
  float _734;
  float _742;
  float _743;
  float _744;
  float _746;
  float _747;
  float _748;
  uint2 _750;
  int _757;
  float _760;
  float _761;
  float _762;
  float _764;
  float _765;
  float _766;
  float _767;
  int _769;
  int _770;
  int _772;
  int _773;
  float _778;
  float _779;
  float _780;
  float _781;
  float _787;
  float _788;
  float _789;
  float _790;
  float _791;
  float _793;
  float _795;
  float _797;
  float _799;
  float _801;
  float _803;
  float _805;
  float _807;
  float _809;
  float _810;
  float _811;
  float _812;
  float _820;
  float _823;
  float _827;
  bool _828;
  bool _829;
  bool _830;
  bool _831;
  float _856;
  float _865;
  float _866;
  float _867;
  float _868;
  float _869;
  float _870;
  float _871;
  float _872;
  float _873;
  float _874;
  float _876;
  float _878;
  float _880;
  float _882;
  float _883;
  float _885;
  float _887;
  float _889;
  float _897;
  float _899;
  float _901;
  float _903;
  float _905;
  float _906;
  float _907;
  float _908;
  float _909;
  float _910;
  float _911;
  float _913;
  float _914;
  float _915;
  float _916;
  float _917;
  float _918;
  float _920;
  float _922;
  float _923;
  int _924;
  float _929;
  float _930;
  float _931;
  float _932;
  float _933;
  float _939;
  float _941;
  float _943;
  float _945;
  float _947;
  float _949;
  float _951;
  float _958;
  float _962;
  float _964;
  float _965;
  float _966;
  float _967;
  float _968;
  float _970;
  float _972;
  float _978;
  float _979;
  float _980;
  float _984;
  float _989;
  float _995;
  float _996;
  float _1000;
  float _1001;
  float _1006;
  float _1007;
  float _1008;
  float _1009;
  float _1023;
  float _1025;
  float _1027;
  float _1028;
  float _1032;
  float _1033;
  float _1034;
  float _1050;
  float _1051;
  float _1067;
  float _1068;
  float _1071;
  float _1073;
  float _1074;
  float _1080;
  float _1149;
  float _1150;
  float _1151;
  float _1153;
  float _1167;
  float _1170;
  float _1173;
  float _1174;
  float _1176;
  float _1179;
  float _1180;
  float _1181;
  float _1185;
  float _1187;
  float _1191;
  float _1192;
  float _1193;
  float _1194;
  float _1206;
  float _1210;
  float _1212;
  float _1214;
  float _1216;
  float _1217;
  float _1221;
  float _1233;
  float _1234;
  float _1267;
  float _1268;
  float _1270;
  float _1273;
  float _1274;
  float _1275;
  float _1276;
  float _1280;
  float _1292;
  float _1318;
  float _1319;
  float _1321;
  float _1324;
  float _1325;
  float _1326;
  float _1330;
  float _1342;
  float _1344;
  float _1372;
  float _1374;
  float _1376;
  float _1378;
  float _1379;
  float _1380;
  float _1381;
  float _1383;
  float _1385;
  float _1387;
  float _1389;
  float _1390;
  float _1392;
  float _1394;
  float _1396;
  float _1404;
  float _1406;
  float _1408;
  float _1410;
  float _1412;
  float _1413;
  float _1414;
  float _1415;
  float _1416;
  float _1417;
  float _1418;
  float _1420;
  float _1421;
  float _1423;
  float _1428;
  float _1429;
  float _1432;
  float _1443;
  float _1489;
  float _1490;
  float _1491;
  float _1492;
  half _1495;
  half _1497;
  half _1499;
  half _1501;
  float _1513;
  bool _1514;
  float _1540;
  float _1541;
  float _1542;
  float _1543;
  float _1544;
  float _1546;
  float _1551;
  float _1555;
  float _1559;
  float _1563;
  float _1572;
  float _1573;
  float _1574;
  bool _1577;
  float _1578;
  float _1579;
  float _1580;
  float2 _1592;
  float2 _1598;
  float _1608;
  float _1616;
  float _1618;
  float _1625;
  float _1628;
  float _1629;
  float _1631;
  float _1634;
  float _1636;
  float _1638;
  float4 _1646;
  float _1650;
  float _1651;
  float _1652;
  float _1654;
  float _1656;
  float _1658;
  float _1660;
  float _1662;
  float2 _1667;
  float _1679;
  float _1689;
  float2 _1694;
  float2 _1707;
  float2 _1713;
  float _1717;
  float _1719;
  float _1732;
  float _1746;
  float2 _1764;
  float _1774;
  float2 _1781;
  float2 _1787;
  float _1791;
  float _1793;
  float2 _1802;
  float _1817;
  float _1820;
  float _1823;
  float _1824;
  float _1830;
  float _1835;
  float _1840;
  float _1845;
  float _1854;
  float _1861;
  float _1868;
  float _1870;
  int _29[4];
  _31 = (int)(SV_GroupID.x) & 3;
  _32 = (uint)((uint)(_31)) >> 1;
  _34 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 5))]);
  _29[0] = _34.x;
  _29[1] = _34.y;
  _29[2] = _34.z;
  _29[3] = _34.w;
  _46 = _29[(((uint)(SV_GroupID.x) >> 3) & 3)];
  _50 = select((((int)(SV_GroupID.x) & 4) == 0), _46, ((uint)((uint)(_46)) >> 16));
  _57 = (uint)((uint)((uint)((int)((int)(_31) - (int)((int)(_32) << 1)) << 4)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_50)) << 5)) & 8160));
  _62 = (uint)((uint)((uint)((int)(_32) << 4)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_50)) >> 3) & 8160));
  [branch]
  if (!(((((uint)(__3__36__0__0__g_tiledManyLightsMasks.Load(int3(((uint)((uint)(_57)) >> 5), ((uint)((uint)(_62)) >> 5), 0)))).x) & 1) == 0)) {
    if (_lightingParams.z > 0.0f) {
      _77 = __3__36__0__0__g_depthStencil.Load(int3(_57, _62, 0));  // [sem: _3__36__0__0__g_depthStencil_load]
      _81 = ((float)((uint)((uint)(_77.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
      if (!((_81 < 1e-07f) || (_81 == 1.0f))) {
        _86 = (uint)((uint)(_77.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _87 = _86 & 127;
        _88 = max(1e-07f, _81);
        _89 = (float)((uint)((uint)(_57)));
        _90 = (float)((uint)((uint)(_62)));
        _94 = _bufferSizeAndInvSize.z * (_89 + 0.5f);
        _97 = _bufferSizeAndInvSize.w * (_90 + 0.5f);
        _99 = (_94 * 2.0f) + -1.0f;
        _101 = 1.0f - (_97 * 2.0f);
        _113 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _88, mad((_invViewProjRelative[3].y), _101, (_99 * (_invViewProjRelative[3].x))));
        _122 = (mad((_invViewProjRelative[0].z), _88, mad((_invViewProjRelative[0].y), _101, (_99 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _113;
        _131 = (mad((_invViewProjRelative[1].z), _88, mad((_invViewProjRelative[1].y), _101, (_99 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _113;
        _140 = (mad((_invViewProjRelative[2].z), _88, mad((_invViewProjRelative[2].y), _101, (_99 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _113;
        _146 = sqrt(((_131 * _131) + (_122 * _122)) + (_140 * _140));
        _147 = 1.0f / _146;
        _149 = __3__36__0__0__g_baseColor.Load(int3(_57, _62, 0));  // [sem: _3__36__0__0__g_baseColor_load]
        _155 = __3__36__0__0__g_normal.Load(int3(_57, _62, 0));  // [sem: _3__36__0__0__g_normal_load]
        _164 = half(((float)((uint)((uint)(((uint)((uint)(_149.x)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _168 = half(((float)((uint)((uint)(_149.x & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _173 = half(((float)((uint)((uint)(((uint)((uint)(_149.y)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _178 = half(((float)((uint)((uint)(((uint)((uint)(_149.z)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _181 = (uint)((_155.w * 3.0f) + 0.5f);  // [sem: _3__36__0__0__g_normal_load_derived]
        _182 = (_181 == 3);
        _186 = (saturate(_155.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
        _190 = (saturate(_155.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
        _194 = (saturate(_155.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
        _196 = rsqrt(dot(float3(_186, _190, _194), float3(_186, _190, _194)));  // [sem: invLength]
        _198 = half(_196 * _186);
        _200 = half(_196 * _190);
        _202 = half(_194 * _196);
        // [sem: _3__36__0__0__g_baseColor_load_derived]
        _209 = ((half)((half)(half(((float)((uint)((uint)(((uint)((uint)(_149.w)) >> 8) & 255)))) * 0.003921569f)) * 2.0h)) + -1.0h;
        _215 = ((half)((half)(half(((float)((uint)((uint)(_149.w & 255)))) * 0.003921569f)) * 2.0h)) + -1.0h;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _218 = float(_209 + _215) * 0.5f;
        _221 = float(_209 - _215) * 0.5f;
        _225 = (1.0f - abs(_218)) - abs(_221);
        _227 = rsqrt(dot(float3(_218, _221, _225), float3(_218, _221, _225)));  // [sem: invLength]
        _228 = float(_198);
        _229 = float(_200);
        _230 = float(_202);
        _232 = select((_202 >= 0.0h), 1.0f, -1.0f);
        _235 = -0.0f - (1.0f / (_232 + _230));
        _236 = _229 * _235;
        _237 = _236 * _228;
        _238 = _232 * _228;
        _241 = float(half(_227 * _218));
        _244 = float(half(_227 * _221));
        _247 = float(half(_227 * _225));
        _254 = half(mad(_247, _228, mad(_244, _237, ((((_238 * _228) * _235) + 1.0f) * _241))));
        _261 = half(mad(_247, _229, mad(_244, ((_236 * _229) + _232), ((_241 * _232) * _237))));
        _267 = half(mad(_247, _230, mad(_244, (-0.0f - _229), (-0.0f - (_238 * _241)))));
        _269 = rsqrt((half)(dot(half3(_254, _261, _267), half3(_254, _261, _267))));  // [sem: invLength]
        _270 = _269 * _254;
        _271 = _269 * _261;
        _272 = _269 * _267;
        _274 = saturate((half)(_164 * _164));  // [sem: expr_sat]
        _276 = saturate((half)(_168 * _168));  // [sem: expr_sat]
        _278 = saturate((half)(_173 * _173));  // [sem: expr_sat]
        // [sem: expr_sat]
        _285 = saturate((half)(saturate((half)(((half)(((half)(_276 * 0.3395996h)) + ((half)(_274 * 0.61328125h)))) + ((half)(_278 * 0.04736328h))))));
        // [sem: expr_sat]
        _292 = saturate((half)(saturate((half)(((half)(((half)(_276 * 0.9165039h)) + ((half)(_274 * 0.07019043h)))) + ((half)(_278 * 0.013450623h))))));
        // [sem: expr_sat]
        _299 = saturate((half)(saturate((half)(((half)(((half)(_276 * 0.109558105h)) + ((half)(_274 * 0.020614624h)))) + ((half)(_278 * 0.8696289h))))));
        _300 = max(0.020004272h, _178);
        _305 = saturate((half)(half(((float)((uint)((uint)(_149.y & 255)))) * 0.003921569f)));  // [sem: expr_sat]
        _306 = _86 & 126;
        if ((uint)_87 > (uint)10) {
          _310 = (_87 == 107);
          _312 = select((((uint)_87 < (uint)20) || _310), 0.0f, _305);
          _317 = ((uint)((int)(_87) + (int)(-105)) < (uint)2);
          if ((_306 == 96) || (_87 == 98)) {
            _347 = (int)(uint)((int)(_87 == 19));
            if (_317) {
              _355 = 1;
              _356 = 0.0h;
              _357 = _347;
              _368 = (_306 == 64);
              _369 = (_87 == 65);
              _370 = _357;
              _371 = _356;
              _372 = _355;
              _374 = select((_87 == 55), 0.0f, _371);
              if ((_306 == 66) || ((_87 == 33) || ((uint)((int)(_87) + (int)(-53)) < (uint)2))) {
                _403 = __3__36__0__0__g_character.Load(int3(_57, _62, 0));  // [sem: _3__36__0__0__g_character_load]
                _414 = _372;
                _415 = _370;
                _416 = _369;
                _417 = _368;
                _418 = (half)(half(saturate(_403.z)));
                _419 = (half)(half(saturate(_403.y)));
                _420 = (half)(half(saturate(_403.x)));
                _421 = _374;
              } else {
                _382 = _368;
                _383 = _369;
                _384 = _370;
                _385 = _372;
                _386 = _374;
                if ((_87 == 55) || _382) {
                  _391 = __3__36__0__0__g_character.Load(int3(_57, _62, 0));  // [sem: _3__36__0__0__g_character_load]
                  _414 = _385;
                  _415 = _384;
                  _416 = _383;
                  _417 = _382;
                  _418 = (half)(half(saturate(_391.z)));
                  _419 = (half)(half(saturate(_391.y)));
                  _420 = (half)(half(saturate(_391.x)));
                  _421 = _386;
                } else {
                  _414 = _385;
                  _415 = _384;
                  _416 = _383;
                  _417 = false;
                  _418 = 0.0h;
                  _419 = 0.0h;
                  _420 = 0.0h;
                  _421 = _386;
                }
              }
            } else {
              _361 = select(((_306 == 26) || (_87 == 28)), 1, ((int)(uint)(_310)));
              _362 = 0.0h;
              _363 = _347;
              _364 = (_87 == 65);
              _365 = (_306 == 64);
              bool __branch_chain_360;
              if (_87 == 37) {
                _382 = _365;
                _383 = _364;
                _384 = _363;
                _385 = _361;
                _386 = 0.0h;
                __branch_chain_360 = true;
              } else {
                _368 = _365;
                _369 = _364;
                _370 = _363;
                _371 = _362;
                _372 = _361;
                _374 = select((_87 == 55), 0.0f, _371);
                if (!((_306 == 66) || ((_87 == 33) || ((uint)((int)(_87) + (int)(-53)) < (uint)2)))) {
                  _382 = _368;
                  _383 = _369;
                  _384 = _370;
                  _385 = _372;
                  _386 = _374;
                  __branch_chain_360 = true;
                } else {
                  __branch_chain_360 = false;
                }
              }
              if (__branch_chain_360) {
                if ((_87 == 55) || _382) {
                  _391 = __3__36__0__0__g_character.Load(int3(_57, _62, 0));  // [sem: _3__36__0__0__g_character_load]
                  _414 = _385;
                  _415 = _384;
                  _416 = _383;
                  _417 = _382;
                  _418 = (half)(half(saturate(_391.z)));
                  _419 = (half)(half(saturate(_391.y)));
                  _420 = (half)(half(saturate(_391.x)));
                  _421 = _386;
                } else {
                  _414 = _385;
                  _415 = _384;
                  _416 = _383;
                  _417 = false;
                  _418 = 0.0h;
                  _419 = 0.0h;
                  _420 = 0.0h;
                  _421 = _386;
                }
              } else {
                _403 = __3__36__0__0__g_character.Load(int3(_57, _62, 0));  // [sem: _3__36__0__0__g_character_load]
                _414 = _372;
                _415 = _370;
                _416 = _369;
                _417 = _368;
                _418 = (half)(half(saturate(_403.z)));
                _419 = (half)(half(saturate(_403.y)));
                _420 = (half)(half(saturate(_403.x)));
                _421 = _374;
              }
            }
          } else {
            if (_317) {
              _355 = 1;
              _356 = (half)(select((_181 == 1), 0.0f, _312));
              _357 = 0;
              _368 = (_306 == 64);
              _369 = (_87 == 65);
              _370 = _357;
              _371 = _356;
              _372 = _355;
              _374 = select((_87 == 55), 0.0f, _371);
              if ((_306 == 66) || ((_87 == 33) || ((uint)((int)(_87) + (int)(-53)) < (uint)2))) {
                _403 = __3__36__0__0__g_character.Load(int3(_57, _62, 0));  // [sem: _3__36__0__0__g_character_load]
                _414 = _372;
                _415 = _370;
                _416 = _369;
                _417 = _368;
                _418 = (half)(half(saturate(_403.z)));
                _419 = (half)(half(saturate(_403.y)));
                _420 = (half)(half(saturate(_403.x)));
                _421 = _374;
              } else {
                _382 = _368;
                _383 = _369;
                _384 = _370;
                _385 = _372;
                _386 = _374;
                if ((_87 == 55) || _382) {
                  _391 = __3__36__0__0__g_character.Load(int3(_57, _62, 0));  // [sem: _3__36__0__0__g_character_load]
                  _414 = _385;
                  _415 = _384;
                  _416 = _383;
                  _417 = _382;
                  _418 = (half)(half(saturate(_391.z)));
                  _419 = (half)(half(saturate(_391.y)));
                  _420 = (half)(half(saturate(_391.x)));
                  _421 = _386;
                } else {
                  _414 = _385;
                  _415 = _384;
                  _416 = _383;
                  _417 = false;
                  _418 = 0.0h;
                  _419 = 0.0h;
                  _420 = 0.0h;
                  _421 = _386;
                }
              }
            } else {
              if (_87 == 65) {
                _355 = ((int)(uint)((int)(_306 == 26)));
                _356 = 0.0h;
                _357 = 0;
                _368 = (_306 == 64);
                _369 = (_87 == 65);
                _370 = _357;
                _371 = _356;
                _372 = _355;
                _374 = select((_87 == 55), 0.0f, _371);
                if ((_306 == 66) || ((_87 == 33) || ((uint)((int)(_87) + (int)(-53)) < (uint)2))) {
                  _403 = __3__36__0__0__g_character.Load(int3(_57, _62, 0));  // [sem: _3__36__0__0__g_character_load]
                  _414 = _372;
                  _415 = _370;
                  _416 = _369;
                  _417 = _368;
                  _418 = (half)(half(saturate(_403.z)));
                  _419 = (half)(half(saturate(_403.y)));
                  _420 = (half)(half(saturate(_403.x)));
                  _421 = _374;
                } else {
                  _382 = _368;
                  _383 = _369;
                  _384 = _370;
                  _385 = _372;
                  _386 = _374;
                  if ((_87 == 55) || _382) {
                    _391 = __3__36__0__0__g_character.Load(int3(_57, _62, 0));  // [sem: _3__36__0__0__g_character_load]
                    _414 = _385;
                    _415 = _384;
                    _416 = _383;
                    _417 = _382;
                    _418 = (half)(half(saturate(_391.z)));
                    _419 = (half)(half(saturate(_391.y)));
                    _420 = (half)(half(saturate(_391.x)));
                    _421 = _386;
                  } else {
                    _414 = _385;
                    _415 = _384;
                    _416 = _383;
                    _417 = false;
                    _418 = 0.0h;
                    _419 = 0.0h;
                    _420 = 0.0h;
                    _421 = _386;
                  }
                }
              } else {
                _332 = (int)(uint)((int)(_87 == 19));
                if ((_87 == 24) || (_87 == 29)) {
                  _355 = select(((_306 == 26) || (_87 == 28)), 1, ((int)(uint)(_310)));
                  _356 = 0.0h;
                  _357 = _332;
                  _368 = (_306 == 64);
                  _369 = (_87 == 65);
                  _370 = _357;
                  _371 = _356;
                  _372 = _355;
                  _374 = select((_87 == 55), 0.0f, _371);
                  if ((_306 == 66) || ((_87 == 33) || ((uint)((int)(_87) + (int)(-53)) < (uint)2))) {
                    _403 = __3__36__0__0__g_character.Load(int3(_57, _62, 0));  // [sem: _3__36__0__0__g_character_load]
                    _414 = _372;
                    _415 = _370;
                    _416 = _369;
                    _417 = _368;
                    _418 = (half)(half(saturate(_403.z)));
                    _419 = (half)(half(saturate(_403.y)));
                    _420 = (half)(half(saturate(_403.x)));
                    _421 = _374;
                  } else {
                    _382 = _368;
                    _383 = _369;
                    _384 = _370;
                    _385 = _372;
                    _386 = _374;
                    if ((_87 == 55) || _382) {
                      _391 = __3__36__0__0__g_character.Load(int3(_57, _62, 0));  // [sem: _3__36__0__0__g_character_load]
                      _414 = _385;
                      _415 = _384;
                      _416 = _383;
                      _417 = _382;
                      _418 = (half)(half(saturate(_391.z)));
                      _419 = (half)(half(saturate(_391.y)));
                      _420 = (half)(half(saturate(_391.x)));
                      _421 = _386;
                    } else {
                      _414 = _385;
                      _415 = _384;
                      _416 = _383;
                      _417 = false;
                      _418 = 0.0h;
                      _419 = 0.0h;
                      _420 = 0.0h;
                      _421 = _386;
                    }
                  }
                } else {
                  _361 = select(((_306 == 26) || (_87 == 28)), 1, ((int)(uint)(_310)));
                  _362 = _312;
                  _363 = _332;
                  _364 = (_87 == 65);
                  _365 = (_306 == 64);
                  bool __branch_chain_360;
                  if (_87 == 37) {
                    _382 = _365;
                    _383 = _364;
                    _384 = _363;
                    _385 = _361;
                    _386 = 0.0h;
                    __branch_chain_360 = true;
                  } else {
                    _368 = _365;
                    _369 = _364;
                    _370 = _363;
                    _371 = _362;
                    _372 = _361;
                    _374 = select((_87 == 55), 0.0f, _371);
                    if (!((_306 == 66) || ((_87 == 33) || ((uint)((int)(_87) + (int)(-53)) < (uint)2)))) {
                      _382 = _368;
                      _383 = _369;
                      _384 = _370;
                      _385 = _372;
                      _386 = _374;
                      __branch_chain_360 = true;
                    } else {
                      __branch_chain_360 = false;
                    }
                  }
                  if (__branch_chain_360) {
                    if ((_87 == 55) || _382) {
                      _391 = __3__36__0__0__g_character.Load(int3(_57, _62, 0));  // [sem: _3__36__0__0__g_character_load]
                      _414 = _385;
                      _415 = _384;
                      _416 = _383;
                      _417 = _382;
                      _418 = (half)(half(saturate(_391.z)));
                      _419 = (half)(half(saturate(_391.y)));
                      _420 = (half)(half(saturate(_391.x)));
                      _421 = _386;
                    } else {
                      _414 = _385;
                      _415 = _384;
                      _416 = _383;
                      _417 = false;
                      _418 = 0.0h;
                      _419 = 0.0h;
                      _420 = 0.0h;
                      _421 = _386;
                    }
                  } else {
                    _403 = __3__36__0__0__g_character.Load(int3(_57, _62, 0));  // [sem: _3__36__0__0__g_character_load]
                    _414 = _372;
                    _415 = _370;
                    _416 = _369;
                    _417 = _368;
                    _418 = (half)(half(saturate(_403.z)));
                    _419 = (half)(half(saturate(_403.y)));
                    _420 = (half)(half(saturate(_403.x)));
                    _421 = _374;
                  }
                }
              }
            }
          }
        } else {
          _355 = 0;
          _356 = _305;
          _357 = 0;
          _368 = (_306 == 64);
          _369 = (_87 == 65);
          _370 = _357;
          _371 = _356;
          _372 = _355;
          _374 = select((_87 == 55), 0.0f, _371);
          if ((_306 == 66) || ((_87 == 33) || ((uint)((int)(_87) + (int)(-53)) < (uint)2))) {
            _403 = __3__36__0__0__g_character.Load(int3(_57, _62, 0));  // [sem: _3__36__0__0__g_character_load]
            _414 = _372;
            _415 = _370;
            _416 = _369;
            _417 = _368;
            _418 = (half)(half(saturate(_403.z)));
            _419 = (half)(half(saturate(_403.y)));
            _420 = (half)(half(saturate(_403.x)));
            _421 = _374;
          } else {
            _382 = _368;
            _383 = _369;
            _384 = _370;
            _385 = _372;
            _386 = _374;
            if ((_87 == 55) || _382) {
              _391 = __3__36__0__0__g_character.Load(int3(_57, _62, 0));  // [sem: _3__36__0__0__g_character_load]
              _414 = _385;
              _415 = _384;
              _416 = _383;
              _417 = _382;
              _418 = (half)(half(saturate(_391.z)));
              _419 = (half)(half(saturate(_391.y)));
              _420 = (half)(half(saturate(_391.x)));
              _421 = _386;
            } else {
              _414 = _385;
              _415 = _384;
              _416 = _383;
              _417 = false;
              _418 = 0.0h;
              _419 = 0.0h;
              _420 = 0.0h;
              _421 = _386;
            }
          }
        }
        _422 = float(_419);
        _425 = (float(_420) * 2.0f) + -1.0f;
        _427 = (_422 * 2.0f) + -1.0f;
        if (_306 == 66) {
          _456 = ((float(_418) * 2.0f) + -1.0f);
          _457 = _427;
          _458 = _425;
        } else {
          _435 = 1.0f - abs(_425);
          _436 = abs(_427);
          _437 = _435 - _436;
          if (!(_437 >= 0.0f)) {
            _448 = (_435 * select((_427 >= 0.0f), 1.0f, -1.0f));
            _449 = ((1.0f - _436) * select((_425 >= 0.0f), 1.0f, -1.0f));
          } else {
            _448 = _427;
            _449 = _425;
          }
          _451 = rsqrt(dot(float3(_449, _448, _437), float3(_449, _448, _437)));  // [sem: invLength]
          _456 = (_451 * _437);
          _457 = (_451 * _448);
          _458 = (_451 * _449);
        }
        _460 = (_lightingParams.x > 0.5f);
        if (_460) {
          _467 = (((float4)(__3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_94, _97), 0.0f))).y);
        } else {
          _467 = 0.0f;
        }
        if (!(_87 == 33)) {
          if (_87 == 54) {
            if (!((((int)((uint)((half)(((half)(_418 * 255.0h)) + 0.5h)))) & 112) == 0)) {
              _481 = (uint)((float(_418) * 255.0f) + 0.5f);
              _483 = ((uint)((uint)(_481)) >> 4) & 7;
              if (!(_483 == 0)) {
                _487 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_483) + (int)(1)))];
                _523 = _487.x;
                _524 = (((float)((uint)((uint)(_481 & 15)))) * 0.06666667f);
                _525 = min((1.0f - _487.y), _487.x);
                _526 = 54;
              } else {
                _523 = 0.0f;
                _524 = 0.0f;
                _525 = 0.0f;
                _526 = 54;
              }
            } else {
              _523 = 0.0f;
              _524 = 0.0f;
              _525 = 0.0f;
              _526 = 52;
            }
            _577 = _523;
            _578 = _524;
            _579 = _525;
            _580 = _526;
            _581 = float(_421);
            if (_580 == 53) {
              _584 = _577;
              _585 = _578;
              _586 = _579;
              _587 = 53;
              _588 = _581;
              _593 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
              if (!(_588 > (frac(frac(dot(float2(((_593 * 32.665f) + _89), ((_593 * 11.815f) + _90)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
                bool __branch_chain_604;
                if ((_587 & 118) == 66) {
                  _610 = _587;
                  __branch_chain_604 = true;
                } else {
                  if (_587 == 53) {
                    _610 = 53;
                    __branch_chain_604 = true;
                  } else {
                    _661 = _586;
                    _662 = _585;
                    _663 = _584;
                    _664 = 0.0f;
                    _665 = 0.0f;  // [sem: blended]
                    _666 = 0.0f;  // [sem: blended]
                    _667 = 0.0f;  // [sem: blended]
                    _668 = 0.0h;
                    _669 = _587;
                    _670 = 1.0f;
                    __branch_chain_604 = false;
                  }
                }
                if (__branch_chain_604) {
                  _612 = (_146 * 2.0f) + 1.0f;
                  // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                  _632 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((dot(float3(_122, _131, _140), float3(((_456 * _229) - (_457 * _230)), ((_458 * _230) - (_456 * _228)), ((_457 * _228) - (_458 * _229)))) * 2.0f) / _612) * 8.0f), (((dot(float3(_122, _131, _140), float3(_458, _457, _456)) * 0.5f) / _612) * 8.0f)), 0.0f);
                  _636 = _632.x + 0.5f;
                  _637 = _632.y + 0.5f;
                  _638 = _632.z + 0.5f;
                  if (_610 == 53) {
                    _661 = _586;
                    _662 = _585;
                    _663 = _584;
                    _664 = (((asfloat(_globalLightParams.z) * float(_300)) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(half(((float)((uint)((uint)(_149.z & 255)))) * 0.003921569f))));
                    _665 = _638;  // [sem: blended]
                    _666 = _637;  // [sem: blended]
                    _667 = _636;  // [sem: blended]
                    _668 = 0.0h;
                    _669 = 53;
                    _670 = 1.0f;
                  } else {
                    _661 = _586;
                    _662 = _585;
                    _663 = _584;
                    _664 = _bevelParams.y;
                    _665 = _638;  // [sem: blended]
                    _666 = _637;  // [sem: blended]
                    _667 = _636;  // [sem: blended]
                    _668 = 0.0h;
                    _669 = _610;
                    _670 = 1.0f;
                  }
                }
              } else {
                _661 = _586;
                _662 = _585;
                _663 = _584;
                _664 = 0.0f;
                _665 = 0.0f;  // [sem: blended]
                _666 = 0.0f;  // [sem: blended]
                _667 = 0.0f;  // [sem: blended]
                _668 = 0.0h;
                _669 = 52;
                _670 = 1.0f;
              }
            } else {
              _661 = _579;
              _662 = _578;
              _663 = _577;
              _664 = 0.0f;
              _665 = 0.0f;  // [sem: blended]
              _666 = 0.0f;  // [sem: blended]
              _667 = 0.0f;  // [sem: blended]
              _668 = (half)(half(_581));
              _669 = _580;
              _670 = 0.0f;
            }
          } else {
            [branch]
            if (_87 == 55) {
              _523 = 0.0f;
              _524 = 0.0f;
              _525 = 0.0f;
              _526 = select(((((int)((uint)((half)(((half)(_418 * 255.0h)) + 0.5h)))) & 127) == 0), 52, 55);
              _577 = _523;
              _578 = _524;
              _579 = _525;
              _580 = _526;
              _581 = float(_421);
              if (_580 == 53) {
                _584 = _577;
                _585 = _578;
                _586 = _579;
                _587 = 53;
                _588 = _581;
                _593 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
                if (!(_588 > (frac(frac(dot(float2(((_593 * 32.665f) + _89), ((_593 * 11.815f) + _90)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
                  bool __branch_chain_604;
                  if ((_587 & 118) == 66) {
                    _610 = _587;
                    __branch_chain_604 = true;
                  } else {
                    if (_587 == 53) {
                      _610 = 53;
                      __branch_chain_604 = true;
                    } else {
                      _661 = _586;
                      _662 = _585;
                      _663 = _584;
                      _664 = 0.0f;
                      _665 = 0.0f;  // [sem: blended]
                      _666 = 0.0f;  // [sem: blended]
                      _667 = 0.0f;  // [sem: blended]
                      _668 = 0.0h;
                      _669 = _587;
                      _670 = 1.0f;
                      __branch_chain_604 = false;
                    }
                  }
                  if (__branch_chain_604) {
                    _612 = (_146 * 2.0f) + 1.0f;
                    // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                    _632 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((dot(float3(_122, _131, _140), float3(((_456 * _229) - (_457 * _230)), ((_458 * _230) - (_456 * _228)), ((_457 * _228) - (_458 * _229)))) * 2.0f) / _612) * 8.0f), (((dot(float3(_122, _131, _140), float3(_458, _457, _456)) * 0.5f) / _612) * 8.0f)), 0.0f);
                    _636 = _632.x + 0.5f;
                    _637 = _632.y + 0.5f;
                    _638 = _632.z + 0.5f;
                    if (_610 == 53) {
                      _661 = _586;
                      _662 = _585;
                      _663 = _584;
                      _664 = (((asfloat(_globalLightParams.z) * float(_300)) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(half(((float)((uint)((uint)(_149.z & 255)))) * 0.003921569f))));
                      _665 = _638;  // [sem: blended]
                      _666 = _637;  // [sem: blended]
                      _667 = _636;  // [sem: blended]
                      _668 = 0.0h;
                      _669 = 53;
                      _670 = 1.0f;
                    } else {
                      _661 = _586;
                      _662 = _585;
                      _663 = _584;
                      _664 = _bevelParams.y;
                      _665 = _638;  // [sem: blended]
                      _666 = _637;  // [sem: blended]
                      _667 = _636;  // [sem: blended]
                      _668 = 0.0h;
                      _669 = _610;
                      _670 = 1.0f;
                    }
                  }
                } else {
                  _661 = _586;
                  _662 = _585;
                  _663 = _584;
                  _664 = 0.0f;
                  _665 = 0.0f;  // [sem: blended]
                  _666 = 0.0f;  // [sem: blended]
                  _667 = 0.0f;  // [sem: blended]
                  _668 = 0.0h;
                  _669 = 52;
                  _670 = 1.0f;
                }
              } else {
                _661 = _579;
                _662 = _578;
                _663 = _577;
                _664 = 0.0f;
                _665 = 0.0f;  // [sem: blended]
                _666 = 0.0f;  // [sem: blended]
                _667 = 0.0f;  // [sem: blended]
                _668 = (half)(half(_581));
                _669 = _580;
                _670 = 0.0f;
              }
            } else {
              _529 = float(_421);
              if (_87 == 66) {
                _533 = (_146 * 2.0f) + 1.0f;
                _535 = (_529 * 7.0f) + 1.0f;
                // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                _555 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((dot(float3(_122, _131, _140), float3(((_456 * _229) - (_457 * _230)), ((_458 * _230) - (_456 * _228)), ((_457 * _228) - (_458 * _229)))) * 2.0f) / _533) * _535), (((dot(float3(_122, _131, _140), float3(_458, _457, _456)) * 0.5f) / _533) * _535)), 0.0f);
                _559 = _529 * 0.5f;
                _560 = _555.x * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
                _561 = _555.y * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
                _562 = _555.z * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
                _661 = 0.0f;
                _662 = 0.0f;
                _663 = 0.0f;
                _664 = _bevelParams.y;
                _665 = (lerp(_562, 1.0f, _559));  // [sem: blended]
                _666 = (lerp(_561, 1.0f, _559));  // [sem: blended]
                _667 = (lerp(_560, 1.0f, _559));  // [sem: blended]
                _668 = 0.0h;
                _669 = 66;
                _670 = _529;
              } else {
                bool __branch_chain_574;
                if (_87 == 67) {
                  _584 = 0.0f;
                  _585 = 0.0f;
                  _586 = 0.0f;
                  _587 = 67;
                  _588 = _529;
                  __branch_chain_574 = true;
                } else {
                  _577 = 0.0f;
                  _578 = 0.0f;
                  _579 = 0.0f;
                  _580 = _87;
                  _581 = _529;
                  if (_580 == 53) {
                    _584 = _577;
                    _585 = _578;
                    _586 = _579;
                    _587 = 53;
                    _588 = _581;
                    __branch_chain_574 = true;
                  } else {
                    __branch_chain_574 = false;
                  }
                }
                if (__branch_chain_574) {
                  _593 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
                  if (!(_588 > (frac(frac(dot(float2(((_593 * 32.665f) + _89), ((_593 * 11.815f) + _90)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
                    bool __branch_chain_604;
                    if ((_587 & 118) == 66) {
                      _610 = _587;
                      __branch_chain_604 = true;
                    } else {
                      if (_587 == 53) {
                        _610 = 53;
                        __branch_chain_604 = true;
                      } else {
                        _661 = _586;
                        _662 = _585;
                        _663 = _584;
                        _664 = 0.0f;
                        _665 = 0.0f;  // [sem: blended]
                        _666 = 0.0f;  // [sem: blended]
                        _667 = 0.0f;  // [sem: blended]
                        _668 = 0.0h;
                        _669 = _587;
                        _670 = 1.0f;
                        __branch_chain_604 = false;
                      }
                    }
                    if (__branch_chain_604) {
                      _612 = (_146 * 2.0f) + 1.0f;
                      // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                      _632 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((dot(float3(_122, _131, _140), float3(((_456 * _229) - (_457 * _230)), ((_458 * _230) - (_456 * _228)), ((_457 * _228) - (_458 * _229)))) * 2.0f) / _612) * 8.0f), (((dot(float3(_122, _131, _140), float3(_458, _457, _456)) * 0.5f) / _612) * 8.0f)), 0.0f);
                      _636 = _632.x + 0.5f;
                      _637 = _632.y + 0.5f;
                      _638 = _632.z + 0.5f;
                      if (_610 == 53) {
                        _661 = _586;
                        _662 = _585;
                        _663 = _584;
                        _664 = (((asfloat(_globalLightParams.z) * float(_300)) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(half(((float)((uint)((uint)(_149.z & 255)))) * 0.003921569f))));
                        _665 = _638;  // [sem: blended]
                        _666 = _637;  // [sem: blended]
                        _667 = _636;  // [sem: blended]
                        _668 = 0.0h;
                        _669 = 53;
                        _670 = 1.0f;
                      } else {
                        _661 = _586;
                        _662 = _585;
                        _663 = _584;
                        _664 = _bevelParams.y;
                        _665 = _638;  // [sem: blended]
                        _666 = _637;  // [sem: blended]
                        _667 = _636;  // [sem: blended]
                        _668 = 0.0h;
                        _669 = _610;
                        _670 = 1.0f;
                      }
                    }
                  } else {
                    _661 = _586;
                    _662 = _585;
                    _663 = _584;
                    _664 = 0.0f;
                    _665 = 0.0f;  // [sem: blended]
                    _666 = 0.0f;  // [sem: blended]
                    _667 = 0.0f;  // [sem: blended]
                    _668 = 0.0h;
                    _669 = 52;
                    _670 = 1.0f;
                  }
                } else {
                  _661 = _579;
                  _662 = _578;
                  _663 = _577;
                  _664 = 0.0f;
                  _665 = 0.0f;  // [sem: blended]
                  _666 = 0.0f;  // [sem: blended]
                  _667 = 0.0f;  // [sem: blended]
                  _668 = (half)(half(_581));
                  _669 = _580;
                  _670 = 0.0f;
                }
              }
            }
          }
        } else {
          _508 = (uint)((float(_418) * 255.0f) + 0.5f);
          _510 = ((uint)((uint)(_508)) >> 4) & 7;
          if (!(_510 == 0)) {
            _514 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_510) + (int)(1)))];
            _523 = _514.x;
            _524 = (((float)((uint)((uint)(_508 & 15)))) * 0.06666667f);
            _525 = min((1.0f - _514.y), _514.x);
            _526 = 33;
          } else {
            _523 = 0.0f;
            _524 = 0.0f;
            _525 = 0.0f;
            _526 = 33;
          }
          _577 = _523;
          _578 = _524;
          _579 = _525;
          _580 = _526;
          _581 = float(_421);
          if (_580 == 53) {
            _584 = _577;
            _585 = _578;
            _586 = _579;
            _587 = 53;
            _588 = _581;
            _593 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
            if (!(_588 > (frac(frac(dot(float2(((_593 * 32.665f) + _89), ((_593 * 11.815f) + _90)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
              bool __branch_chain_604;
              if ((_587 & 118) == 66) {
                _610 = _587;
                __branch_chain_604 = true;
              } else {
                if (_587 == 53) {
                  _610 = 53;
                  __branch_chain_604 = true;
                } else {
                  _661 = _586;
                  _662 = _585;
                  _663 = _584;
                  _664 = 0.0f;
                  _665 = 0.0f;  // [sem: blended]
                  _666 = 0.0f;  // [sem: blended]
                  _667 = 0.0f;  // [sem: blended]
                  _668 = 0.0h;
                  _669 = _587;
                  _670 = 1.0f;
                  __branch_chain_604 = false;
                }
              }
              if (__branch_chain_604) {
                _612 = (_146 * 2.0f) + 1.0f;
                // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                _632 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((dot(float3(_122, _131, _140), float3(((_456 * _229) - (_457 * _230)), ((_458 * _230) - (_456 * _228)), ((_457 * _228) - (_458 * _229)))) * 2.0f) / _612) * 8.0f), (((dot(float3(_122, _131, _140), float3(_458, _457, _456)) * 0.5f) / _612) * 8.0f)), 0.0f);
                _636 = _632.x + 0.5f;
                _637 = _632.y + 0.5f;
                _638 = _632.z + 0.5f;
                if (_610 == 53) {
                  _661 = _586;
                  _662 = _585;
                  _663 = _584;
                  _664 = (((asfloat(_globalLightParams.z) * float(_300)) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(half(((float)((uint)((uint)(_149.z & 255)))) * 0.003921569f))));
                  _665 = _638;  // [sem: blended]
                  _666 = _637;  // [sem: blended]
                  _667 = _636;  // [sem: blended]
                  _668 = 0.0h;
                  _669 = 53;
                  _670 = 1.0f;
                } else {
                  _661 = _586;
                  _662 = _585;
                  _663 = _584;
                  _664 = _bevelParams.y;
                  _665 = _638;  // [sem: blended]
                  _666 = _637;  // [sem: blended]
                  _667 = _636;  // [sem: blended]
                  _668 = 0.0h;
                  _669 = _610;
                  _670 = 1.0f;
                }
              }
            } else {
              _661 = _586;
              _662 = _585;
              _663 = _584;
              _664 = 0.0f;
              _665 = 0.0f;  // [sem: blended]
              _666 = 0.0f;  // [sem: blended]
              _667 = 0.0f;  // [sem: blended]
              _668 = 0.0h;
              _669 = 52;
              _670 = 1.0f;
            }
          } else {
            _661 = _579;
            _662 = _578;
            _663 = _577;
            _664 = 0.0f;
            _665 = 0.0f;  // [sem: blended]
            _666 = 0.0f;  // [sem: blended]
            _667 = 0.0f;  // [sem: blended]
            _668 = (half)(half(_581));
            _669 = _580;
            _670 = 0.0f;
          }
        }
        _672 = float(select(_416, _198, _270));
        _674 = float(select(_416, _200, _271));
        _676 = float(select(_416, _202, _272));
        if (_669 == 52) {
          _684 = (half)(saturate((half)(((half)(((half)(_292 + _285)) + _299)) * 1.2001953h)));
        } else {
          _684 = 1.0h;
        }
        _690 = ((half)(0.7001953h / (half)(min((half)(max((half)(max((half)(max(_285, _292)), _299)), 0.010002136h)), 0.7001953h)))) * _684;
        _695 = float(((half)(((half)(((half)(_690 * _285)) + -0.040008545h)) * _668)) + 0.040008545h);
        _700 = float(((half)(((half)(((half)(_690 * _292)) + -0.040008545h)) * _668)) + 0.040008545h);
        _705 = float(((half)(((half)(((half)(_690 * _299)) + -0.040008545h)) * _668)) + 0.040008545h);
        _706 = float(_270);
        _707 = float(_271);
        _708 = float(_272);
        if (_460) {
          _714 = float(saturate((half)((half)(rsqrt((half)(dot(half3(_198, _200, _202), half3(_198, _200, _202))))) * _200)));
          _715 = _714 * _714;
          _716 = _715 * _715;
          _717 = _716 * _716;
          _725 = (_717 * _717) * (_467 * select(((_87 == 29) || (((int)(_415) | (int)(_414)) != 0)), 0.0f, 1.0f));
          _727 = _706 - (_725 * _706);
          _730 = (_725 * (1.0f - _707)) + _707;
          _732 = _708 - (_725 * _708);
          _734 = rsqrt(dot(float3(_727, _730, _732), float3(_727, _730, _732)));  // [sem: invLength]
          _739 = (_732 * _734);
          _740 = (_730 * _734);
          _741 = (_727 * _734);
        } else {
          _739 = _708;
          _740 = _707;
          _741 = _706;
        }
        _742 = float(_300);
        _743 = _742 * _742;
        _744 = _743 * _743;
        _746 = float(_300 * 0.60009766h);
        _747 = _746 * _746;
        _748 = _747 * _747;
        _750 = __3__36__0__0__g_manyLightsHitData.Load(int3(_57, _62, 0));  // [sem: _3__36__0__0__g_manyLightsHitData_load]
        _757 = select((((int)(_750.x) | (int)(_750.y)) != 0), (((uint)((uint)(_750.x)) >> 16) & 32767), 32767);
        _760 = __3__37__0__0__g_manyLightsDataBuffer[_757]._position.x;
        _761 = __3__37__0__0__g_manyLightsDataBuffer[_757]._position.y;
        _762 = __3__37__0__0__g_manyLightsDataBuffer[_757]._position.z;
        _764 = __3__37__0__0__g_manyLightsDataBuffer[_757]._color.x;
        _765 = __3__37__0__0__g_manyLightsDataBuffer[_757]._color.y;
        _766 = __3__37__0__0__g_manyLightsDataBuffer[_757]._color.z;
        // RenoDX: >>> [Patch: LocalLightHueCorrection] [Version: 1.16.00]
        // Description: Corrects the resolved local-light RGB toward the configured warm-fire hue and saturation before
        //              the color reaches its alpha, geometry, or scene-composite consumers. Only the already-resolved
        //              X/Y/Z color channels are rewritten; the W channel and resource index remain untouched.
        //              The explicit neutral-settings gate performs no helper call or RGB write when hue is 0 and
        //              saturation is 1, so the disabled path is the exact successor-A dataflow.
        if (LOCAL_LIGHT_HUE_CORRECTION > 0.0f || abs(LOCAL_LIGHT_SATURATION - 1.0f) > 1e-6f) {
          float3 _rndx_local_light_corrected = ApplyLocalLightHueCorrection(
              float3(_764, _765, _766),
              LOCAL_LIGHT_HUE_CORRECTION,
              LOCAL_LIGHT_SATURATION);
          _764 = _rndx_local_light_corrected.x;
          _765 = _rndx_local_light_corrected.y;
          _766 = _rndx_local_light_corrected.z;
        }
        // RenoDX: <<< [Patch: LocalLightHueCorrection]
        _767 = __3__37__0__0__g_manyLightsDataBuffer[_757]._color.w;
        _769 = __3__37__0__0__g_manyLightsDataBuffer[_757]._up.x;
        _770 = __3__37__0__0__g_manyLightsDataBuffer[_757]._up.y;
        _772 = __3__37__0__0__g_manyLightsDataBuffer[_757]._look.x;
        _773 = __3__37__0__0__g_manyLightsDataBuffer[_757]._look.y;
        _778 = (float)((bool)((((float)((uint)((uint)(_750.x & 65535)))) * 0.01560998f) >= 1000.0f));  // [sem: _3__36__0__0__g_manyLightsHitData_load_derived]
        _779 = _760 - _122;
        _780 = _761 - _131;
        _781 = _762 - _140;
        _787 = sqrt(((_780 * _780) + (_779 * _779)) + (_781 * _781));
        _788 = 1.0f / _787;
        _789 = _788 * _779;
        _790 = _788 * _780;
        _791 = _788 * _781;
        _793 = f16tof32(((uint)(_769 & 65535)));
        _795 = f16tof32(((uint)((uint)((uint)(_769)) >> 16)));
        _797 = f16tof32(((uint)(_770 & 65535)));
        _799 = f16tof32(((uint)((uint)((uint)(_770)) >> 16)));
        _801 = rsqrt(dot(float3(_793, _795, _797), float3(_793, _795, _797)));  // [sem: invLength]
        _803 = f16tof32(((uint)(_772 & 65535)));
        _805 = f16tof32(((uint)((uint)((uint)(_772)) >> 16)));
        _807 = f16tof32(((uint)(_773 & 65535)));
        _809 = rsqrt(dot(float3(_803, _805, _807), float3(_803, _805, _807)));  // [sem: invLength]
        _810 = _809 * _803;
        _811 = _809 * _805;
        _812 = _809 * _807;
        if (!(!(_799 >= 0.0f))) {
          _820 = mad(_791, (_801 * _797), mad(_790, (_801 * _795), ((_789 * _793) * _801)));
          _823 = mad(_791, _812, mad(_790, _811, (_810 * _789)));
          _827 = atan((-0.0f - _823) / (-0.0f - _820));
          _828 = (_820 > -0.0f);
          _829 = (_820 == -0.0f);
          _830 = (_823 <= -0.0f);
          _831 = (_823 > -0.0f);
          // [sem: _3__36__0__0__g_lightProfile_sampleLod]
          _856 = __3__36__0__0__g_lightProfile.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((asin(dot(float3(_789, _790, _791), float3(_810, _811, _812))) * 0.31830987f) + 0.5f), ((saturate(abs(select((_829 && _830), 0.5f, select((_829 && _831), -0.5f, (select((_828 && _831), (_827 + -3.1415927f), select((_828 && _830), (_827 + 3.1415927f), _827)) * 0.31830987f))))) * abs(f16tof32(((uint)((uint)((uint)(_773)) >> 16))))) + _799)), 0.0f);
          _862 = (_856.x * _766);
          _863 = (_856.x * _765);
          _864 = (_856.x * _764);
        } else {
          _862 = _766;
          _863 = _765;
          _864 = _764;
        }
        _865 = abs(_767);
        _866 = _147 * _122;
        _867 = _147 * _131;
        _868 = _147 * _140;
        _869 = _789 * _787;
        _870 = _790 * _787;
        _871 = _791 * _787;
        _872 = -0.0f - _866;
        _873 = -0.0f - _867;
        _874 = -0.0f - _868;
        _876 = dot(float3(_872, _873, _874), float3(_672, _674, _676)) * 2.0f;
        _878 = _872 - (_876 * _672);
        _880 = _873 - (_876 * _674);
        _882 = _874 - (_876 * _676);
        _883 = dot(float3(_869, _870, _871), float3(_878, _880, _882));
        _885 = (_878 * _883) - _869;
        _887 = (_880 * _883) - _870;
        _889 = (_882 * _883) - _871;
        _897 = saturate(_865 / sqrt(((_885 * _885) + (_887 * _887)) + (_889 * _889)));  // [sem: expr_sat]
        _899 = (_885 * _897) + _869;
        _901 = (_887 * _897) + _870;
        _903 = (_889 * _897) + _871;
        _905 = rsqrt(dot(float3(_899, _901, _903), float3(_899, _901, _903)));  // [sem: invLength]
        _906 = _899 * _905;
        _907 = _901 * _905;
        _908 = _903 * _905;
        _909 = _906 - _866;
        _910 = _907 - _867;
        _911 = _908 - _868;
        _913 = rsqrt(dot(float3(_909, _910, _911), float3(_909, _910, _911)));  // [sem: invLength]
        _914 = _909 * _913;
        _915 = _910 * _913;
        _916 = _911 * _913;
        _917 = dot(float3(_672, _674, _676), float3(_906, _907, _908));
        _918 = dot(float3(_741, _740, _739), float3(_906, _907, _908));
        _920 = saturate(dot(float3(_672, _674, _676), float3(_872, _873, _874)));  // [sem: expr_sat]
        _922 = saturate(dot(float3(_741, _740, _739), float3(_914, _915, _916)));  // [sem: expr_sat]
        _923 = dot(float3(_872, _873, _874), float3(_914, _915, _916));
        _924 = _669 & -2;
        if ((_669 == 53) || (_924 == 66)) {
          _929 = float(_285);
          _930 = float(_292);
          _931 = float(_299);
          _932 = dot(float3(_458, _457, _456), float3(_906, _907, _908));
          _933 = dot(float3(_458, _457, _456), float3(_872, _873, _874));
          _939 = cos(abs(asin(_933) - asin(_932)) * 0.5f);
          _941 = _906 - (_932 * _458);
          _943 = _907 - (_932 * _457);
          _945 = _908 - (_932 * _456);
          _947 = _872 - (_933 * _458);
          _949 = _873 - (_933 * _457);
          _951 = _874 - (_933 * _456);
          _958 = dot(float3(_941, _943, _945), float3(_947, _949, _951)) * rsqrt((dot(float3(_941, _943, _945), float3(_941, _943, _945)) * dot(float3(_947, _949, _951), float3(_947, _949, _951))) + 0.0001f);
          _962 = sqrt(saturate((_958 * 0.5f) + 0.5f));
          _964 = min(max(_742, 0.09803922f), 1.0f);
          _965 = _964 * _964;
          _966 = _965 * 0.5f;
          _967 = _965 * 2.0f;
          _968 = _933 + _932;
          _970 = _968 + (_664 * 2.0f);
          _972 = (_962 * 1.4142135f) * _965;
          _978 = 1.0f - sqrt(saturate((dot(float3(_872, _873, _874), float3(_906, _907, _908)) * 0.5f) + 0.5f));
          _979 = _978 * _978;
          _980 = _968 - _664;
          _984 = 1.0f / ((1.19f / _939) + (_939 * 0.36f));
          _989 = ((_984 * (0.6f - (_958 * 0.8f))) + 1.0f) * _962;
          _995 = 1.0f - (sqrt(saturate(1.0f - (_989 * _989))) * _939);
          _996 = _995 * _995;
          _1000 = 0.9534794f - ((_996 * _996) * (_995 * 0.9534794f));
          _1001 = _989 * _984;
          _1006 = (sqrt(1.0f - (_1001 * _1001)) * 0.5f) / _939;
          _1007 = log2(_929);
          _1008 = log2(_930);
          _1009 = log2(_931);
          _1023 = ((_1000 * _1000) * (exp2((((_980 * _980) * -0.5f) / (_966 * _966)) * 1.442695f) / (_965 * 1.2533141f))) * exp2(-5.741926f - (_958 * 5.265837f));
          _1025 = _968 - (_664 * 4.0f);
          _1027 = 1.0f - (_939 * 0.5f);
          _1028 = _1027 * _1027;
          _1032 = (_1028 * _1028) * (0.9534794f - (_939 * 0.4767397f));
          _1033 = 0.9534794f - _1032;
          _1034 = 0.8f / _939;
          _1050 = (((_1033 * _1033) * (_1032 + 0.046520565f)) * (exp2((((_1025 * _1025) * -0.5f) / (_967 * _967)) * 1.442695f) / (_965 * 5.0132565f))) * exp2((_958 * 24.525816f) + -24.208424f);
          _1051 = saturate(_918);  // [sem: _918_sat]
          _1067 = (((_962 * 0.25f) * (((_979 * _979) * (_978 * 0.9534794f)) + 0.046520565f)) * _1051) * (exp2((((_970 * _970) * -0.5f) / (_972 * _972)) * 1.442695f) / (_972 * 2.5066283f));
          _1068 = -0.0f - _1051;
          _1071 = saturate((_918 + 1.0f) * 0.25f);  // [sem: expr_sat]
          _1073 = max(0.001f, dot(float3(_929, _930, _931), float3(0.3f, 0.59f, 0.11f)));
          _1074 = 1.0f - _778;
          _1080 = ((((1.0f - _1071) - abs(_918)) * 0.33f) + _1071) * 0.039788734f;
          _1472 = true;
          _1473 = 0.0f;
          _1474 = (-0.0f - min(0.0f, (-0.0f - (_665 * _1067))));
          _1475 = (-0.0f - min(0.0f, (-0.0f - (_666 * _1067))));
          _1476 = (-0.0f - min(0.0f, (-0.0f - (_667 * _1067))));
          _1477 = (((exp2(log2(_931 / _1073) * _1074) * _1080) * sqrt(_931)) - min(0.0f, (((exp2(_1009 * _1006) * _1023) + (exp2(_1034 * _1009) * _1050)) * _1068)));
          _1478 = (((exp2(log2(_930 / _1073) * _1074) * _1080) * sqrt(_930)) - min(0.0f, (((exp2(_1008 * _1006) * _1023) + (exp2(_1034 * _1008) * _1050)) * _1068)));
          _1479 = (((_1080 * exp2(log2(_929 / _1073) * _1074)) * sqrt(_929)) - min(0.0f, (((exp2(_1007 * _1006) * _1023) + (exp2(_1034 * _1007) * _1050)) * _1068)));
        } else {
          if ((_669 == 33) || (_669 == 54)) {
            _1149 = float(_285);
            _1150 = float(_292);
            _1151 = float(_299);
            _1153 = max(dot(float3(_1149, _1150, _1151), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
            _1167 = (saturate(1.0f - (pow(_920, 4.0f))) * (_663 - _661)) + _661;
            _1170 = ((_1167 * (sqrt(_1150) - _1153)) + _1153) * _662;
            _1173 = saturate(1.0f - saturate(_923));  // [sem: expr_sat]
            _1174 = _1173 * _1173;
            _1176 = (_1174 * _1174) * _1173;
            _1179 = _1176 * saturate(_1170 * 50.0f);
            _1180 = 1.0f - _1176;
            _1181 = _1180 * _662;
            _1185 = (_1181 * ((_1167 * (sqrt(_1149) - _1153)) + _1153)) + _1179;
            _1187 = (_1180 * _1170) + _1179;
            _1191 = (_1181 * ((_1167 * (sqrt(_1151) - _1153)) + _1153)) + _1179;
            _1192 = min(_922, 0.9999f);
            _1193 = _1192 * _1192;
            _1194 = 1.0f - _1193;
            _1206 = (((exp2(((-0.0f - _1193) / (_1194 * _744)) * 1.442695f) * 4.0f) / (_1194 * _1194)) + 1.0f) / ((_744 * 12.566371f) + 3.1415927f);
            _1210 = ((_920 + _918) - (_920 * _918)) * 4.0f;
            _1212 = (_1185 * _1206) / _1210;
            _1214 = (_1187 * _1206) / _1210;
            _1216 = (_1191 * _1206) / _1210;
            _1217 = 1.0f - _743;
            _1221 = (((_922 * _744) - _922) * _922) + 1.0f;
            _1233 = (0.5f / ((((_920 * _1217) + _743) * _917) + (_920 * ((_917 * _1217) + _743)))) * (_744 / ((_1221 * _1221) * 3.1415927f));
            _1234 = saturate(_918);  // [sem: _918_sat]
            _1472 = false;
            // RenoDX: >>> [Patch: MaterialDiffuseBRDF] [Version: 1.16.00]
            // Description: This is the cloth/velvet branch of the punctual-light shading. Its diffuse term is a plain
            //              Lambert lobe (NdotL / pi) scaled by a metallic-derived velvet weight, so rough fabric lit by
            //              a local light loses the retro-reflection a microfacet diffuse model would give it. This block
            //              optionally substitutes a physically based diffuse scalar (EON at mode 2, Hammon at mode 1)
            //              while keeping the velvet weight as a separate multiplier. Mode 0 is the default and reproduces
            //              the native expression exactly.
            //              The roughness argument is the linear roughness the native GGX lobe uses (the clamped
            //              G-buffer roughness channel), NOT any component of the shading normal. Passing a normal
            //              component here makes the diffuse response vary with surface orientation instead of with
            //              material roughness, which reads as blocky mismatches between neighbouring lighting tiles.
            float _rndx_velvet_mod = (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _663) + 1.0f);
            if (DIFFUSE_BRDF_MODE >= 2.0f) {
              float _rndx_sNdotL2 = saturate(_917);
              float _rndx_LdotV2 = dot(float3(_906, _907, _908), float3(_872, _873, _874));
              _1473 = (_rndx_sNdotL2 * EON_DiffuseScalar(_rndx_sNdotL2, _920, _rndx_LdotV2, _742)) * _rndx_velvet_mod;
            } else if (DIFFUSE_BRDF_MODE >= 1.0f) {
              float _rndx_sNdotL2 = saturate(_917);
              _1473 = (_rndx_sNdotL2 * HammonDiffuseScalar(_rndx_sNdotL2, _920, _922, _923, _742)) * _rndx_velvet_mod;
            } else {
              _1473 = ((saturate(_917) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _663) + 1.0f));
            }
            // RenoDX: <<< [Patch: MaterialDiffuseBRDF]
            _1474 = ((((max((_1233 * _1191), 0.0f) - _1216) * _661) + _1216) * _1234);
            _1475 = ((((max((_1233 * _1187), 0.0f) - _1214) * _661) + _1214) * _1234);
            _1476 = ((((max((_1233 * _1185), 0.0f) - _1212) * _661) + _1212) * _1234);
            _1477 = 0.0f;
            _1478 = 0.0f;
            _1479 = 0.0f;
          } else {
            if (!(_917 <= 0.0f)) {
              _1267 = saturate(1.0f - _923);  // [sem: expr_sat]
              _1268 = _1267 * _1267;
              _1270 = (_1268 * _1268) * _1267;
              _1273 = _1270 * saturate(_700 * 50.0f);
              _1274 = 1.0f - _1270;
              _1275 = saturate(_918);  // [sem: _918_sat]
              _1276 = 1.0f - _743;
              _1280 = (((_922 * _744) - _922) * _922) + 1.0f;
              _1292 = (0.5f / ((((_920 * _1276) + _743) * _918) + (_920 * ((_918 * _1276) + _743)))) * (_744 / ((_1280 * _1280) * 3.1415927f));
              // RenoDX: >>> [Patch: MaterialDiffuseBRDF] [Version: 1.16.00]
              // Description: The native punctual-light diffuse term is a plain Lambert lobe (NdotL / pi), which loses the
              //              retro-reflection and rough-surface energy that microfacet diffuse models reproduce, so rough
              //              dielectrics lit by local lights look flat. This block optionally substitutes a physically
              //              based diffuse scalar (EON at mode 2, Hammon at mode 1) evaluated from the same NdotL, NdotV,
              //              LdotV/VdotH geometry the native lobe uses. Mode 0 is the default and keeps the exact native
              //              Lambert expression.
              //              The roughness argument is the linear roughness the native GGX lobe uses (the clamped
              //              G-buffer roughness channel), NOT any component of the shading normal. Passing a normal
              //              component here makes the diffuse response vary with surface orientation instead of with
              //              material roughness, which reads as blocky mismatches between neighbouring lighting tiles.
              if (DIFFUSE_BRDF_MODE >= 2.0f) {
                float _rndx_sNdotL = saturate(_917);
                float _rndx_LdotV = dot(float3(_906, _907, _908), float3(_872, _873, _874));
                _1310 = _rndx_sNdotL * EON_DiffuseScalar(_rndx_sNdotL, _920, _rndx_LdotV, _742);
              } else if (DIFFUSE_BRDF_MODE >= 1.0f) {
                float _rndx_sNdotL = saturate(_917);
                _1310 = _rndx_sNdotL * HammonDiffuseScalar(_rndx_sNdotL, _920, _922, _923, _742);
              } else {
                _1310 = (_917 * 0.31830987f);
              }
              // RenoDX: <<< [Patch: MaterialDiffuseBRDF]
              _1311 = (max((((_1274 * _705) + _1273) * _1292), 0.0f) * _1275);
              _1312 = (max((((_1274 * _700) + _1273) * _1292), 0.0f) * _1275);
              _1313 = (max((((_1274 * _695) + _1273) * _1292), 0.0f) * _1275);
            } else {
              _1310 = 0.0f;
              _1311 = 0.0f;
              _1312 = 0.0f;
              _1313 = 0.0f;
            }
            if (_417) {
              if (!(_669 == 65)) {
                _1318 = saturate(1.0f - _923);  // [sem: expr_sat]
                _1319 = _1318 * _1318;
                _1321 = (_1319 * _1319) * _1318;
                _1324 = _1321 * saturate(_700 * 50.0f);
                _1325 = 1.0f - _1321;
                _1326 = 1.0f - _747;
                _1330 = (((_922 * _748) - _922) * _922) + 1.0f;
                _1342 = (0.5f / ((((_920 * _1326) + _747) * _918) + (_920 * ((_918 * _1326) + _747)))) * (_748 / ((_1330 * _1330) * 3.1415927f));
                _1344 = saturate(_918) * 0.39990234f;
                _1472 = false;
                _1473 = _1310;
                _1474 = ((max((((_1325 * _705) + _1324) * _1342), 0.0f) * _1344) + (_1311 * 0.60009766f));
                _1475 = ((max((((_1325 * _700) + _1324) * _1342), 0.0f) * _1344) + (_1312 * 0.60009766f));
                _1476 = ((max((((_1325 * _695) + _1324) * _1342), 0.0f) * _1344) + (_1313 * 0.60009766f));
                _1477 = 0.0f;
                _1478 = 0.0f;
                _1479 = 0.0f;
              } else {
                _1472 = false;
                _1473 = _1310;
                _1474 = _1311;
                _1475 = _1312;
                _1476 = _1313;
                _1477 = 0.0f;
                _1478 = 0.0f;
                _1479 = 0.0f;
              }
            } else {
              if ((_669 == 37) || (_669 == 55)) {
                _1372 = dot(float3(_872, _873, _874), float3(_741, _740, _739)) * 2.0f;
                _1374 = _872 - (_1372 * _741);
                _1376 = _873 - (_1372 * _740);
                _1378 = _874 - (_1372 * _739);
                _1379 = -0.0f - _1374;
                _1380 = -0.0f - _1376;
                _1381 = -0.0f - _1378;
                _1383 = dot(float3(_1379, _1380, _1381), float3(_672, _674, _676)) * 2.0f;
                _1385 = _1379 - (_1383 * _672);
                _1387 = _1380 - (_1383 * _674);
                _1389 = _1381 - (_1383 * _676);
                _1390 = dot(float3(_869, _870, _871), float3(_1385, _1387, _1389));
                _1392 = (_1385 * _1390) - _869;
                _1394 = (_1387 * _1390) - _870;
                _1396 = (_1389 * _1390) - _871;
                _1404 = saturate(_865 / sqrt(((_1392 * _1392) + (_1394 * _1394)) + (_1396 * _1396)));  // [sem: expr_sat]
                _1406 = (_1392 * _1404) + _869;
                _1408 = (_1394 * _1404) + _870;
                _1410 = (_1396 * _1404) + _871;
                _1412 = rsqrt(dot(float3(_1406, _1408, _1410), float3(_1406, _1408, _1410)));  // [sem: invLength]
                _1413 = _1406 * _1412;
                _1414 = _1408 * _1412;
                _1415 = _1410 * _1412;
                _1416 = _1413 - _1374;
                _1417 = _1414 - _1376;
                _1418 = _1415 - _1378;
                _1420 = rsqrt(dot(float3(_1416, _1417, _1418), float3(_1416, _1417, _1418)));  // [sem: invLength]
                _1421 = dot(float3(_741, _740, _739), float3(_1413, _1414, _1415));
                _1423 = saturate(dot(float3(_672, _674, _676), float3(_1379, _1380, _1381)));  // [sem: expr_sat]
                // [sem: expr_sat]
                _1428 = saturate(dot(float3(_741, _740, _739), float3((_1416 * _1420), (_1417 * _1420), (_1418 * _1420))));
                _1429 = saturate(_1421);  // [sem: _1421_sat]
                _1432 = 1.0f - ((_1428 * _1428) * 0.9f);
                _1443 = (0.5f / ((((_1423 * 0.9f) + 0.1f) * _1421) + (_1423 * ((_1421 * 0.9f) + 0.1f)))) * (0.03183099f / (_1432 * _1432));
                _1472 = false;
                _1473 = _1310;
                _1474 = (((float(half(max((_1443 * float(_299)), 0.0f) * _1429)) - _1311) * 0.875f) + _1311);
                _1475 = (((float(half(max((_1443 * float(_292)), 0.0f) * _1429)) - _1312) * 0.875f) + _1312);
                _1476 = (((float(half(max((_1443 * float(_285)), 0.0f) * _1429)) - _1313) * 0.875f) + _1313);
                _1477 = 0.0f;
                _1478 = 0.0f;
                _1479 = 0.0f;
              } else {
                _1472 = false;
                _1473 = _1310;
                _1474 = _1311;
                _1475 = _1312;
                _1476 = _1313;
                _1477 = 0.0f;
                _1478 = 0.0f;
                _1479 = 0.0f;
              }
            }
          }
        }
        // RenoDX: >>> [Patch: MaterialDiffraction] [Version: 1.16.00]
        // Description: Smooth conductive and coated surfaces show a wavelength-dependent colour shift and fine
        //              speckle when lit by a small bright source; the native specular lobe is achromatic and cannot
        //              produce it. This block multiplies the accumulated local-light specular RGB by a per-channel
        //              diffraction tint derived from the half-vector geometry, the surface normal, the specular F0
        //              and screen position, weighted by the material gate so only materials flagged for it are
        //              affected. The multiplier is lerp(1, shift, DIFFRACTION * gate), so at strength 0 the specular
        //              is left exactly as native.
        //              The third argument is the material roughness (_742 in this structural decompile, the G-buffer roughness channel that
        //              feeds this shader's own alpha/alpha-squared chain), NOT any component of the shading normal.
        //              The earlier emitter call passed _616, the pre-normalization Z of the shading normal, which made
        //              the diffraction blend vary with surface orientation instead of with material roughness -
        //              the same defect the MaterialDiffuseBRDF blocks in this file already warn about. The sibling
        //              shader IntegrateManyLightsUpsample_0xEBEF8E3E always passed its roughness correctly.
        if (DIFFRACTION > 0.0f && float(_668) > 0.0f) {
          float3 _rndx_dShift = DiffractionShiftAndSpeckleCS(
              _922, _920, _742,
              float2(_94, _97), (_nearFarProj.x / _88),
              float3(_914, _915, _916),
              float3(_741, _740, _739),
              float3(_695, _700, _705));
          float3 _rndx_dMod = lerp(1.0f, _rndx_dShift, DIFFRACTION * float(_668));
          _1476 *= _rndx_dMod.x;
          _1475 *= _rndx_dMod.y;
          _1474 *= _rndx_dMod.z;
        }
        // RenoDX: <<< [Patch: MaterialDiffraction]
        // RenoDX: >>> [Patch: MaterialSmoothTerminator] [Version: 1.16.00]
        // Description: Softens the geometric shadow terminator after this branch has resolved its diffuse
        //              scalar and specular RGB. The factor is derived from the matched N.L, V.H, and N.H
        //              roles and multiplies all four resolved outputs at their shared post-branch boundary.
        //              The entire mutation is inside the SMOOTH_TERMINATOR gate; at 0 no output is written.
        if (SMOOTH_TERMINATOR > 0.0f) {
          float _rndx_st = CallistoSmoothTerminator(_917, _923, _922, SMOOTH_TERMINATOR, 0.5f);
          _1473 *= _rndx_st;
          _1476 *= _rndx_st;
          _1475 *= _rndx_st;
          _1474 *= _rndx_st;
        }
        // RenoDX: <<< [Patch: MaterialSmoothTerminator]
        _1489 = (_778 * asfloat(_750.y)) * saturate(select((_865 > 99999.0f), 1.0f, (1.0f / max((_865 * _865), (_787 * _787)))));
        _1490 = _1489 * _864;
        _1491 = _1489 * _863;
        _1492 = _1489 * _862;
        if (_1472) {
          _1495 = ((half)(_420 * 2.0h)) + -1.0h;
          _1497 = ((half)(_419 * 2.0h)) + -1.0h;
          _1499 = ((half)(_418 * 2.0h)) + -1.0h;
          _1501 = rsqrt((half)(dot(half3(_1495, _1497, _1499), half3(_1495, _1497, _1499))));  // [sem: invLength]
          _1509 = float(_1501 * _1499);
          _1510 = float(_1501 * _1497);
          _1511 = float(_1501 * _1495);
          _1512 = 0.0h;
        } else {
          _1509 = 0.0f;
          _1510 = 1.0f;
          _1511 = 0.0f;
          _1512 = _668;
        }
        _1513 = float(_178);
        _1514 = (_924 == 64);
        if ((((int)(uint)(_1514)) & (((int)(uint)(_182)) ^ 1)) == 0) {
          _1536 = saturate(exp2(((_1513 * _1513) * -0.00577078f) * (_nearFarProj.x / _88)));  // [sem: expr_sat]
        } else {
          _1536 = select((_cavityParams.z > 0.0f), select(_182, 0.0f, _422), 1.0f);  // [sem: expr_sat]
        }
        _1540 = select((_cavityParams.x == 0.0f), 1.0f, _1536);
        _1541 = float(_1512);
        _1542 = float(_285);
        _1543 = float(_292);
        _1544 = float(_299);
        _1546 = saturate(dot(float3(_872, _873, _874), float3(_741, _740, _739)));  // [sem: expr_sat]
        _1551 = 0.7f / min(max(max(max(_1542, _1543), _1544), 0.01f), 0.7f);
        _1555 = (((_1551 * _1542) + -0.04f) * _1541) + 0.04f;
        _1559 = (((_1551 * _1543) + -0.04f) * _1541) + 0.04f;
        _1563 = (((_1551 * _1544) + -0.04f) * _1541) + 0.04f;
        if (_1514) {
          _1569 = (_1563 * _1540);
          _1570 = (_1559 * _1540);
          _1571 = (_1555 * _1540);
        } else {
          _1569 = _1563;
          _1570 = _1559;
          _1571 = _1555;
        }
        _1572 = _1542 * 0.875f;
        _1573 = _1543 * 0.875f;
        _1574 = _1544 * 0.875f;
        if (!(_669 == 37)) {
          _1577 = (_669 == 55);
          _1578 = select(_1577, _1572, _1571);
          _1579 = select(_1577, _1573, _1570);
          _1580 = select(_1577, _1574, _1569);
          if (_1472) {
            // [sem: _3__36__0__0__g_hairBrdfLookup_sampleLod]
            _1592 = __3__36__0__0__g_hairBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, (1.0f - saturate(abs(dot(float3(_1511, _1510, _1509), float3(_866, _867, _868)))))), (1.0f - max(0.75f, (_742 * 2.0f)))), 0.0f);
            // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
            _1598 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1546), (1.0f - _742)), 0.0f);
            _1608 = (lerp(_1592.y, _1598.y, _670)) + ((lerp(_1592.x, _1598.x, _670)) * 0.01f);  // [sem: blended]
            _1812 = _1608;
            _1813 = _1608;
            _1814 = _1608;
          } else {
            if ((uint)((int)(_669) + (int)(-97)) < (uint)2) {
              if (!(abs(_229) > 0.99f)) {
                _1616 = -0.0f - _230;
                _1618 = rsqrt(dot(float3(_1616, 0.0f, _228), float3(_1616, 0.0f, _228)));  // [sem: invLength]
                _1622 = (_1618 * _228);
                _1623 = (_1618 * _1616);
              } else {
                _1622 = 0.0f;
                _1623 = 1.0f;
              }
              _1625 = -0.0f - (_229 * _1622);
              _1628 = (_1622 * _228) - (_1623 * _230);
              _1629 = _1623 * _229;
              _1631 = rsqrt(dot(float3(_1625, _1628, _1629), float3(_1625, _1628, _1629)));  // [sem: invLength]
              _1634 = _viewPos.x + _122;
              _1636 = _viewPos.y + _131;
              _1638 = _viewPos.z + _140;
              // [sem: _3__36__0__0__g_blueNoise_sampleLod]
              _1646 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_1623, 0.0f, _1622), float3(_1634, _1636, _1638)), dot(float3((_1631 * _1625), (_1628 * _1631), (_1631 * _1629)), float3(_1634, _1636, _1638))), 0.0f);
              _1650 = _1646.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
              _1651 = _1646.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
              _1652 = _1646.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
              _1654 = rsqrt(dot(float3(_1650, _1651, _1652), float3(_1650, _1651, _1652)));  // [sem: invLength]
              _1656 = (_1650 * _1654) + _741;
              _1658 = (_1651 * _1654) + _740;
              _1660 = (_1652 * _1654) + _739;
              _1662 = rsqrt(dot(float3(_1656, _1658, _1660), float3(_1656, _1658, _1660)));  // [sem: invLength]
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _1667 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1546), (1.0f - _742)), 0.0f);
              _1679 = (exp2(log2(saturate(dot(float3(_872, _873, _874), float3((_1656 * _1662), (_1658 * _1662), (_1660 * _1662))))) * 512.0f) * 20.0f) + _1667.y;
              _1812 = (_1679 + (_1667.x * _1580));
              _1813 = (_1679 + (_1667.x * _1579));
              _1814 = (_1679 + (_1667.x * _1578));
            } else {
              if (_1514) {
                _1689 = min(0.99f, _1546);
                if (_669 == 65) {
                  // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
                  _1694 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1689, (1.0f - _742)), 0.0f);
                  _1812 = ((_1694.x * _1580) + _1694.y);
                  _1813 = ((_1694.x * _1579) + _1694.y);
                  _1814 = ((_1694.x * _1578) + _1694.y);
                } else {
                  // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
                  _1707 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1689, saturate(1.0f - (_742 * 1.33f))), 0.0f);
                  // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
                  _1713 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1689, saturate(1.0f - (_742 * 0.47998047f))), 0.0f);
                  _1717 = (_1713.x + _1707.x) * 0.5f;
                  _1719 = (_1713.y + _1707.y) * 0.5f;
                  _1812 = ((_1717 * _1580) + _1719);
                  _1813 = ((_1717 * _1579) + _1719);
                  _1814 = ((_1717 * _1578) + _1719);
                }
              } else {
                if ((_669 == 33) || (_669 == 54)) {
                  _1732 = max(dot(float3(_1542, _1543, _1544), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
                  _1746 = (saturate(1.0f - (pow(_1546, 4.0f))) * (_663 - _661)) + _661;
                  _1757 = (((_1746 * (sqrt(_1544) - _1732)) + _1732) * _662);
                  _1758 = (((_1746 * (sqrt(_1543) - _1732)) + _1732) * _662);
                  _1759 = (((_1746 * (sqrt(_1542) - _1732)) + _1732) * _662);
                } else {
                  _1757 = _1580;
                  _1758 = _1579;
                  _1759 = _1578;
                }
                // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
                _1764 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1546), (1.0f - _742)), 0.0f);
                _1812 = ((_1764.x * _1757) + _1764.y);
                _1813 = ((_1764.x * _1758) + _1764.y);
                _1814 = ((_1764.x * _1759) + _1764.y);
              }
            }
          }
        } else {
          _1774 = min(0.99f, _1546);
          if (_1514) {
            // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
            _1781 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1774, saturate(1.0f - (_742 * 1.33f))), 0.0f);
            // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
            _1787 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1774, saturate(1.0f - (_742 * 0.47998047f))), 0.0f);
            _1791 = (_1787.x + _1781.x) * 0.5f;
            _1793 = (_1787.y + _1781.y) * 0.5f;
            _1812 = ((_1791 * _1574) + _1793);
            _1813 = ((_1791 * _1573) + _1793);
            _1814 = ((_1791 * _1572) + _1793);
          } else {
            // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
            _1802 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1774, (1.0f - _742)), 0.0f);
            _1812 = ((_1802.x * _1574) + _1802.y);
            _1813 = ((_1802.x * _1573) + _1802.y);
            _1814 = ((_1802.x * _1572) + _1802.y);
          }
        }
        _1817 = (_1490 * _1476) / max(0.01f, _1814);
        _1820 = (_1491 * _1475) / max(0.01f, _1813);
        _1823 = (_1492 * _1474) / max(0.01f, _1812);
        _1824 = dot(float3(_1817, _1820, _1823), float3(0.212671f, 0.71516f, 0.072169f));
        _1830 = min((_exposure3.w * 8192.0f), _1824) / max(1e-06f, _1824);
        _1835 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (_1817 * _1830)))));
        _1840 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (_1820 * _1830)))));
        _1845 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (_1823 * _1830)))));
        _1854 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (((_1479 + _1473) * _1490) * _exposure4.x)))));
        _1861 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (((_1478 + _1473) * _1491) * _exposure4.x)))));
        _1868 = min(30000.0f, (-0.0f - min(0.0f, (-0.0f - (((_1477 + _1473) * _1492) * _exposure4.x)))));
        _1870 = dot(float3(_1854, _1861, _1868), float3(0.212671f, 0.71516f, 0.072169f)) / _exposure4.x;
        __3__38__0__1__g_sceneDiffuseUAV[int2(_57, _62)] = float4(_1854, _1861, _1868, 0.0f);
        if ((((_1835 > 0.0f) || (_1840 > 0.0f)) || (_1845 > 0.0f)) || (_1870 > 0.0f)) {
          __3__38__0__1__g_specularResultUAV[int2(_57, _62)] = float4(_1835, _1840, _1845, _1870);
        }
      }
    }
  }
}
