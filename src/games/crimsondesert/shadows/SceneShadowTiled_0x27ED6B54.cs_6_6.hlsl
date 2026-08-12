// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the shared RenoDX option macros required by Contact Micro Shadows; this declaration changes no native output by itself.
#include "../shared.h"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

struct anon {
  float4 _shadowDepthRanges;
  float4 _massiveShadowSizeAndInvSize;
  uint4 _shadowParam;
  int4 _updateIndex;
  float4 _jitterOffset[8];
  float4 _shadowRelativePosition;
  float4 _dynmaicShadowSizeAndInvSize;
  column_major float4x4 _dynamicShadowProjTexScale[2][2];
  column_major float4x4 _dynamicShadowProjRelativeTexScale[2][2];
  float4 _dynamicShadowFrustumPlanes0[6];
  float4 _dynamicShadowFrustumPlanes1[6];
  column_major float4x4 _dynamicShadowViewProj[2][2];
  column_major float4x4 _dynamicShadowViewProjPrev[2][2];
  column_major float4x4 _invDynamicShadowViewProj[2][2];
  float4 _dynamicShadowPosition[2];
  float4 _shadowSizeAndInvSize;
  column_major float4x4 _shadowProjTexScale[2][2];
  column_major float4x4 _shadowProjRelativeTexScale[2][2];
  float4 _staticShadowPosition[2];
  column_major float4x4 _shadowViewProj[2][2];
  column_major float4x4 _shadowViewProjRelative[2][2];
  column_major float4x4 _invShadowViewProj[2][2];
  float4 _currShadowFrustumPlanes[6];
  column_major float4x4 _currShadowViewProjRelative;
  column_major float4x4 _currInvShadowViewProjRelative;
  float4 _currStaticShadowPosition;
  float4 _currTerrainShadowFrustumPlanes[6];
  column_major float4x4 _terrainShadowProjTexScale;
  column_major float4x4 _terrainShadowProjRelativeTexScale;
  column_major float4x4 _terrainShadowViewProj;
  column_major float4x4 _nearFieldShadowViewProj;
  float4 _nearFieldShadowFlag;
  float4 _nearFieldShadowFrustumPlanes[6];
};

struct anon_0 {
  uint4 g_tileIndex[4096];
};


Texture2D<float4> __3__36__0__0__g_terrainShadowDepth : register(t37, space36);

Texture2DArray<float4> __3__36__0__0__g_dynamicShadowDepthArray : register(t236, space36);

Texture2DArray<uint2> __3__36__0__0__g_dynamicShadowStencilArray : register(t237, space36);

Texture2DArray<half4> __3__36__0__0__g_dynamicShadowColorArray : register(t238, space36);

Texture2DArray<float4> __3__36__0__0__g_shadowDepthArray : register(t239, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t18, space36);

Texture2D<uint> __3__36__0__0__g_depthStencil : register(t49, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t50, space36);

Texture2D<float2> __3__36__0__0__g_raytracedShadow : register(t131, space36);

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
  struct {
    float4 _shadowDepthRanges;
    float4 _massiveShadowSizeAndInvSize;
    uint4 _shadowParam;
    int4 _updateIndex;
    float4 _jitterOffset[8];
    float4 _shadowRelativePosition;
    float4 _dynmaicShadowSizeAndInvSize;
    column_major float4x4 _dynamicShadowProjTexScale[2];
    column_major float4x4 _dynamicShadowProjRelativeTexScale[2];
    float4 _dynamicShadowFrustumPlanes0[6];
    float4 _dynamicShadowFrustumPlanes1[6];
    column_major float4x4 _dynamicShadowViewProj[2];
    column_major float4x4 _dynamicShadowViewProjPrev[2];
    column_major float4x4 _invDynamicShadowViewProj[2];
    float4 _dynamicShadowPosition[2];
    float4 _shadowSizeAndInvSize;
    column_major float4x4 _shadowProjTexScale[2];
    column_major float4x4 _shadowProjRelativeTexScale[2];
    float4 _staticShadowPosition[2];
    column_major float4x4 _shadowViewProj[2];
    column_major float4x4 _shadowViewProjRelative[2];
    column_major float4x4 _invShadowViewProj[2];
    float4 _currShadowFrustumPlanes[6];
    column_major float4x4 _currShadowViewProjRelative;
    column_major float4x4 _currInvShadowViewProjRelative;
    float4 _currStaticShadowPosition;
    float4 _currTerrainShadowFrustumPlanes[6];
    column_major float4x4 _terrainShadowProjTexScale;
    column_major float4x4 _terrainShadowProjRelativeTexScale;
    column_major float4x4 _terrainShadowViewProj;
    column_major float4x4 _nearFieldShadowViewProj;
    float4 _nearFieldShadowFlag;
    float4 _nearFieldShadowFrustumPlanes[6];
  } __3__35__0__0__ShadowConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__ShadowConstantBuffer_raw[155] : packoffset(c0);
  uint4 __3__35__0__0__ShadowConstantBuffer_raw_uint[155] : packoffset(c0);
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

static const int _global_0[16] = { 1, -3, -1, 3, 5, 1, -3, -5, -5, 5, -7, -1, 3, 7, 7, -7 };

// RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
// Description: Pulls in the shared depth-bias micro detail shadow helper used by the contact
//              shadow region later in this shader. The include sits here rather than at the top
//              of the file because the helper references the shader-local resource and cbuffer
//              declarations above it. The helper returns its input unchanged when Contact Micro
//              Shadows is Off, so pulling it in adds no behavior on the vanilla path.
#include "micro_detail_shadows.hlsli"
// RenoDX: <<< [Patch: ContactMicroShadowsFamily]
[numthreads(8, 8, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
    // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
    // Description: Zero-initialized carrier variables for the contact-shadow ray direction used by
    //              the micro detail shadow helper later in this shader. The native direction
    //              temporaries they copy are only assigned inside the shadow-evaluation gate that
    //              follows; reading those raw temporaries at the helper call site outside the gate
    //              compiles to undefined values on the gate's skip edge (phi-undef in DXIL). The
    //              helper call is gated on the same condition, so the zero fallbacks are never
    //              actually marched; they exist so every control path carries defined values. The
    //              march origin needs no carrier in this variant because it comes from the shaded
    //              world position, which is computed before this gate. These are storage only and do
    //              not affect any native computation.
    float _rndxMicroDirX = 0.0f;
    float _rndxMicroDirY = 0.0f;
    float _rndxMicroDirZ = 0.0f;
    // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
  int4 _34;
  int _46;
  int _50;
  uint _56;
  uint _63;
  float _64;
  float _65;
  float _69;
  float _72;
  float _74;
  float _76;
  uint _78;
  int _80;
  float _83;
  int _84;
  uint _86;
  float _92;
  float _98;
  float _104;
  float _106;
  float _107;
  float _108;
  float _109;
  bool _110;
  int _371;
  float _554;
  float _567;
  float _568;
  float _569;
  float _643;
  int _644;
  float _645;
  int _769;
  float _770;
  bool _819;
  int _820;
  float _821;
  int _822;
  int _823;
  float _824;
  int _979;
  int _1100;
  half _1345;
  half _1346;
  half _1347;
  bool _1348;
  float _1349;
  float _1350;
  float _1591;
  float _1592;
  float _1593;
  half _1594;
  half _1595;
  half _1596;
  float _1831;
  float _1832;
  float _1833;
  half _1834;
  half _1835;
  half _1836;
  float _2071;
  float _2072;
  float _2073;
  half _2074;
  half _2075;
  half _2076;
  float _2311;
  float _2312;
  float _2313;
  half _2314;
  half _2315;
  half _2316;
  float _2551;
  float _2552;
  float _2553;
  half _2554;
  half _2555;
  half _2556;
  float _2791;
  float _2792;
  float _2793;
  half _2794;
  half _2795;
  half _2796;
  float _3031;
  float _3032;
  float _3033;
  half _3034;
  half _3035;
  half _3036;
  float _3271;
  float _3272;
  float _3273;
  half _3274;
  half _3275;
  half _3276;
  float _3511;
  float _3512;
  float _3513;
  half _3514;
  half _3515;
  half _3516;
  float _3751;
  float _3752;
  float _3753;
  half _3754;
  half _3755;
  half _3756;
  float _3991;
  float _3992;
  float _3993;
  half _3994;
  half _3995;
  half _3996;
  float _4231;
  float _4232;
  float _4233;
  half _4234;
  half _4235;
  half _4236;
  float _4471;
  float _4472;
  float _4473;
  half _4474;
  half _4475;
  half _4476;
  float _4711;
  float _4712;
  float _4713;
  half _4714;
  half _4715;
  half _4716;
  half _4951;
  half _4952;
  half _4953;
  float _4954;
  float _4955;
  float _4956;
  half _4957;
  half _4958;
  half _4959;
  half _4995;
  half _4996;
  half _4997;
  int _5008;
  float _5009;
  float _5010;
  float _5107;
  half _5130;
  half _5131;
  half _5132;
  float _5133;
  float _5134;
  float _5170;
  float _5171;
  float _5172;
  float _5273;
  float _5288;
  int _5463;
  float _5469;
  float _5478;
  float _5487;
  float _5488;
  float _5489;
  float _5641;
  float _5642;
  int _5643;
  float _5644;
  float _5645;
  float _5646;
  float _5647;
  float _5648;
  int _5649;
  int _5727;
  float _5751;
  float _5771;
  int _5772;
  float _5785;
  float _5804;
  float _5805;
  float _5806;
  float _5807;
  float _5808;
  float _5816;
  float _5817;
  int _5818;
  float _5819;
  float _5820;
  float _5821;
  float _5822;
  float _5823;
  int _5824;
  int _5902;
  float _5926;
  float _5946;
  int _5947;
  float _5960;
  float _5979;
  float _5980;
  float _5981;
  float _5982;
  float _5983;
  float _5990;
  float _5991;
  int _5992;
  float _5993;
  float _5994;
  float _5995;
  float _6042;
  float _6087;
  float _6132;
  float _6184;
  float _6185;
  int _6186;
  float _6187;
  float _6188;
  float _6189;
  float _6224;
  float _6269;
  float _6314;
  float _6365;
  float _6369;
  float _6394;
  float _6395;
  float _6396;
  float _6397;
  float _114;
  float _116;
  float _119;
  float _131;
  float _140;
  float _149;
  float _158;
  float _160;
  int _167;
  bool _168;
  float _180;
  float _188;
  float _196;
  float _209;
  float _215;
  float _221;
  float _226;
  uint _238;
  uint _246;
  uint _254;
  uint _262;
  uint _270;
  uint _278;
  uint _286;
  uint _294;
  uint _302;
  uint _310;
  uint _318;
  uint _326;
  uint _334;
  uint _342;
  uint _350;
  uint _358;
  uint _376;
  float _385;
  float _387;
  float _394;
  float _396;
  float _399;
  float _401;
  float _405;
  float _408;
  float _411;
  float4 _414;
  float _419;
  float _421;
  float _423;
  float _428;
  float _432;
  float _435;
  float _438;
  float4 _439;
  float _445;
  float _447;
  float _452;
  float _456;
  float _459;
  float _462;
  float4 _463;
  float _469;
  float _471;
  float _476;
  float _480;
  float _483;
  float _486;
  float4 _487;
  float _493;
  float _495;
  float _500;
  float _557;
  bool _558;
  float _587;
  float _595;
  float _603;
  float _606;
  float _607;
  bool _613;
  float _627;
  float _633;
  float _657;
  float _665;
  float _673;
  float _692;
  float _698;
  float _712;
  float _714;
  float _716;
  float _719;
  float _721;
  float _723;
  float _735;
  float _743;
  float _751;
  float _754;
  float _755;
  float _773;
  float _775;
  float _777;
  float _789;
  float _797;
  float _805;
  uint _838;
  uint _846;
  uint _854;
  uint _862;
  uint _870;
  uint _878;
  uint _886;
  uint _894;
  uint _902;
  uint _910;
  uint _918;
  uint _926;
  uint _934;
  uint _942;
  uint _950;
  uint _958;
  bool _960;
  int _961;
  float _966;
  float _967;
  float _968;
  float _982;
  float _984;
  float _985;
  float _986;
  float _992;
  float _998;
  float _999;
  float _1000;
  float _1006;
  float _1012;
  float _1018;
  float _1024;
  float _1030;
  float _1036;
  float _1058;
  float _1079;
  float _1085;
  float _1086;
  float _1087;
  float _1089;
  float _1103;
  float _1105;
  float _1107;
  float _1108;
  float _1109;
  float _1113;
  float _1119;
  float _1125;
  float _1128;
  float _1130;
  float _1131;
  float _1132;
  int _1134;
  int _1136;
  uint _1137;
  uint _1138;
  uint _1139;
  uint _1140;
  float4 _1146;
  float4 _1148;
  float4 _1150;
  float4 _1152;
  half4 _1155;
  float _1160;
  float _1162;
  float _1166;
  float _1170;
  float _1177;
  float _1182;
  int _1183;
  float4 _1185;
  float4 _1190;
  float4 _1195;
  float4 _1200;
  float _1205;
  float _1207;
  float _1209;
  float _1211;
  float _1213;
  float _1215;
  float _1216;
  float _1218;
  float _1220;
  float _1222;
  float _1224;
  float _1226;
  float _1228;
  float _1230;
  float _1232;
  float _1234;
  half _1351;
  half _1352;
  half _1353;
  float _1354;
  float _1355;
  float _1356;
  float _1362;
  float _1368;
  float _1370;
  float _1372;
  float _1373;
  float _1374;
  int _1376;
  int _1378;
  uint _1379;
  uint _1380;
  float4 _1386;
  float4 _1388;
  float4 _1390;
  float4 _1392;
  half4 _1395;
  float _1400;
  float _1402;
  float _1406;
  float _1410;
  float _1417;
  float _1422;
  int _1423;
  float4 _1425;
  float4 _1430;
  float4 _1435;
  float4 _1440;
  float _1445;
  float _1447;
  float _1449;
  float _1451;
  float _1453;
  float _1455;
  float _1456;
  float _1458;
  float _1460;
  float _1462;
  float _1464;
  float _1466;
  float _1468;
  float _1470;
  float _1472;
  float _1474;
  float _1602;
  float _1608;
  float _1610;
  float _1612;
  float _1613;
  float _1614;
  int _1616;
  int _1618;
  uint _1619;
  uint _1620;
  float4 _1626;
  float4 _1628;
  float4 _1630;
  float4 _1632;
  half4 _1635;
  float _1640;
  float _1642;
  float _1646;
  float _1650;
  float _1657;
  float _1662;
  int _1663;
  float4 _1665;
  float4 _1670;
  float4 _1675;
  float4 _1680;
  float _1685;
  float _1687;
  float _1689;
  float _1691;
  float _1693;
  float _1695;
  float _1696;
  float _1698;
  float _1700;
  float _1702;
  float _1704;
  float _1706;
  float _1708;
  float _1710;
  float _1712;
  float _1714;
  float _1842;
  float _1848;
  float _1850;
  float _1852;
  float _1853;
  float _1854;
  int _1856;
  int _1858;
  uint _1859;
  uint _1860;
  float4 _1866;
  float4 _1868;
  float4 _1870;
  float4 _1872;
  half4 _1875;
  float _1880;
  float _1882;
  float _1886;
  float _1890;
  float _1897;
  float _1902;
  int _1903;
  float4 _1905;
  float4 _1910;
  float4 _1915;
  float4 _1920;
  float _1925;
  float _1927;
  float _1929;
  float _1931;
  float _1933;
  float _1935;
  float _1936;
  float _1938;
  float _1940;
  float _1942;
  float _1944;
  float _1946;
  float _1948;
  float _1950;
  float _1952;
  float _1954;
  float _2082;
  float _2088;
  float _2090;
  float _2092;
  float _2093;
  float _2094;
  int _2096;
  int _2098;
  uint _2099;
  uint _2100;
  float4 _2106;
  float4 _2108;
  float4 _2110;
  float4 _2112;
  half4 _2115;
  float _2120;
  float _2122;
  float _2126;
  float _2130;
  float _2137;
  float _2142;
  int _2143;
  float4 _2145;
  float4 _2150;
  float4 _2155;
  float4 _2160;
  float _2165;
  float _2167;
  float _2169;
  float _2171;
  float _2173;
  float _2175;
  float _2176;
  float _2178;
  float _2180;
  float _2182;
  float _2184;
  float _2186;
  float _2188;
  float _2190;
  float _2192;
  float _2194;
  float _2322;
  float _2328;
  float _2330;
  float _2332;
  float _2333;
  float _2334;
  int _2336;
  int _2338;
  uint _2339;
  uint _2340;
  float4 _2346;
  float4 _2348;
  float4 _2350;
  float4 _2352;
  half4 _2355;
  float _2360;
  float _2362;
  float _2366;
  float _2370;
  float _2377;
  float _2382;
  int _2383;
  float4 _2385;
  float4 _2390;
  float4 _2395;
  float4 _2400;
  float _2405;
  float _2407;
  float _2409;
  float _2411;
  float _2413;
  float _2415;
  float _2416;
  float _2418;
  float _2420;
  float _2422;
  float _2424;
  float _2426;
  float _2428;
  float _2430;
  float _2432;
  float _2434;
  float _2562;
  float _2568;
  float _2570;
  float _2572;
  float _2573;
  float _2574;
  int _2576;
  int _2578;
  uint _2579;
  uint _2580;
  float4 _2586;
  float4 _2588;
  float4 _2590;
  float4 _2592;
  half4 _2595;
  float _2600;
  float _2602;
  float _2606;
  float _2610;
  float _2617;
  float _2622;
  int _2623;
  float4 _2625;
  float4 _2630;
  float4 _2635;
  float4 _2640;
  float _2645;
  float _2647;
  float _2649;
  float _2651;
  float _2653;
  float _2655;
  float _2656;
  float _2658;
  float _2660;
  float _2662;
  float _2664;
  float _2666;
  float _2668;
  float _2670;
  float _2672;
  float _2674;
  float _2802;
  float _2808;
  float _2810;
  float _2812;
  float _2813;
  float _2814;
  int _2816;
  int _2818;
  uint _2819;
  uint _2820;
  float4 _2826;
  float4 _2828;
  float4 _2830;
  float4 _2832;
  half4 _2835;
  float _2840;
  float _2842;
  float _2846;
  float _2850;
  float _2857;
  float _2862;
  int _2863;
  float4 _2865;
  float4 _2870;
  float4 _2875;
  float4 _2880;
  float _2885;
  float _2887;
  float _2889;
  float _2891;
  float _2893;
  float _2895;
  float _2896;
  float _2898;
  float _2900;
  float _2902;
  float _2904;
  float _2906;
  float _2908;
  float _2910;
  float _2912;
  float _2914;
  float _3042;
  float _3048;
  float _3050;
  float _3052;
  float _3053;
  float _3054;
  int _3056;
  int _3058;
  uint _3059;
  uint _3060;
  float4 _3066;
  float4 _3068;
  float4 _3070;
  float4 _3072;
  half4 _3075;
  float _3080;
  float _3082;
  float _3086;
  float _3090;
  float _3097;
  float _3102;
  int _3103;
  float4 _3105;
  float4 _3110;
  float4 _3115;
  float4 _3120;
  float _3125;
  float _3127;
  float _3129;
  float _3131;
  float _3133;
  float _3135;
  float _3136;
  float _3138;
  float _3140;
  float _3142;
  float _3144;
  float _3146;
  float _3148;
  float _3150;
  float _3152;
  float _3154;
  float _3282;
  float _3288;
  float _3290;
  float _3292;
  float _3293;
  float _3294;
  int _3296;
  int _3298;
  uint _3299;
  uint _3300;
  float4 _3306;
  float4 _3308;
  float4 _3310;
  float4 _3312;
  half4 _3315;
  float _3320;
  float _3322;
  float _3326;
  float _3330;
  float _3337;
  float _3342;
  int _3343;
  float4 _3345;
  float4 _3350;
  float4 _3355;
  float4 _3360;
  float _3365;
  float _3367;
  float _3369;
  float _3371;
  float _3373;
  float _3375;
  float _3376;
  float _3378;
  float _3380;
  float _3382;
  float _3384;
  float _3386;
  float _3388;
  float _3390;
  float _3392;
  float _3394;
  float _3522;
  float _3528;
  float _3530;
  float _3532;
  float _3533;
  float _3534;
  int _3536;
  int _3538;
  uint _3539;
  uint _3540;
  float4 _3546;
  float4 _3548;
  float4 _3550;
  float4 _3552;
  half4 _3555;
  float _3560;
  float _3562;
  float _3566;
  float _3570;
  float _3577;
  float _3582;
  int _3583;
  float4 _3585;
  float4 _3590;
  float4 _3595;
  float4 _3600;
  float _3605;
  float _3607;
  float _3609;
  float _3611;
  float _3613;
  float _3615;
  float _3616;
  float _3618;
  float _3620;
  float _3622;
  float _3624;
  float _3626;
  float _3628;
  float _3630;
  float _3632;
  float _3634;
  float _3762;
  float _3768;
  float _3770;
  float _3772;
  float _3773;
  float _3774;
  int _3776;
  int _3778;
  uint _3779;
  uint _3780;
  float4 _3786;
  float4 _3788;
  float4 _3790;
  float4 _3792;
  half4 _3795;
  float _3800;
  float _3802;
  float _3806;
  float _3810;
  float _3817;
  float _3822;
  int _3823;
  float4 _3825;
  float4 _3830;
  float4 _3835;
  float4 _3840;
  float _3845;
  float _3847;
  float _3849;
  float _3851;
  float _3853;
  float _3855;
  float _3856;
  float _3858;
  float _3860;
  float _3862;
  float _3864;
  float _3866;
  float _3868;
  float _3870;
  float _3872;
  float _3874;
  float _4002;
  float _4008;
  float _4010;
  float _4012;
  float _4013;
  float _4014;
  int _4016;
  int _4018;
  uint _4019;
  uint _4020;
  float4 _4026;
  float4 _4028;
  float4 _4030;
  float4 _4032;
  half4 _4035;
  float _4040;
  float _4042;
  float _4046;
  float _4050;
  float _4057;
  float _4062;
  int _4063;
  float4 _4065;
  float4 _4070;
  float4 _4075;
  float4 _4080;
  float _4085;
  float _4087;
  float _4089;
  float _4091;
  float _4093;
  float _4095;
  float _4096;
  float _4098;
  float _4100;
  float _4102;
  float _4104;
  float _4106;
  float _4108;
  float _4110;
  float _4112;
  float _4114;
  float _4242;
  float _4248;
  float _4250;
  float _4252;
  float _4253;
  float _4254;
  int _4256;
  int _4258;
  uint _4259;
  uint _4260;
  float4 _4266;
  float4 _4268;
  float4 _4270;
  float4 _4272;
  half4 _4275;
  float _4280;
  float _4282;
  float _4286;
  float _4290;
  float _4297;
  float _4302;
  int _4303;
  float4 _4305;
  float4 _4310;
  float4 _4315;
  float4 _4320;
  float _4325;
  float _4327;
  float _4329;
  float _4331;
  float _4333;
  float _4335;
  float _4336;
  float _4338;
  float _4340;
  float _4342;
  float _4344;
  float _4346;
  float _4348;
  float _4350;
  float _4352;
  float _4354;
  float _4482;
  float _4488;
  float _4490;
  float _4492;
  float _4493;
  float _4494;
  int _4496;
  int _4498;
  uint _4499;
  uint _4500;
  float4 _4506;
  float4 _4508;
  float4 _4510;
  float4 _4512;
  half4 _4515;
  float _4520;
  float _4522;
  float _4526;
  float _4530;
  float _4537;
  float _4542;
  int _4543;
  float4 _4545;
  float4 _4550;
  float4 _4555;
  float4 _4560;
  float _4565;
  float _4567;
  float _4569;
  float _4571;
  float _4573;
  float _4575;
  float _4576;
  float _4578;
  float _4580;
  float _4582;
  float _4584;
  float _4586;
  float _4588;
  float _4590;
  float _4592;
  float _4594;
  float _4722;
  float _4728;
  float _4730;
  float _4732;
  float _4733;
  float _4734;
  int _4736;
  int _4738;
  uint _4739;
  uint _4740;
  float4 _4746;
  float4 _4748;
  float4 _4750;
  float4 _4752;
  half4 _4755;
  float _4760;
  float _4762;
  float _4766;
  float _4770;
  float _4777;
  float _4782;
  int _4783;
  float4 _4785;
  float4 _4790;
  float4 _4795;
  float4 _4800;
  float _4805;
  float _4807;
  float _4809;
  float _4811;
  float _4813;
  float _4815;
  float _4816;
  float _4818;
  float _4820;
  float _4822;
  float _4824;
  float _4826;
  float _4828;
  float _4830;
  float _4832;
  float _4834;
  float _4961;
  float _4963;
  half _4967;
  half _4971;
  half _4975;
  float _4978;
  float _4979;
  float _4980;
  float _4981;
  float2 _5000;
  float _5003;
  float _5004;
  float _5006;
  uint _5011;
  float _5015;
  float _5020;
  float _5021;
  float _5022;
  float _5025;
  float _5028;
  float _5037;
  float _5049;
  float _5059;
  float _5069;
  float _5079;
  float _5085;
  float _5090;
  float _5091;
  float _5117;
  float _5118;
  int _5119;
  bool _5135;
  float _5137;
  float _5141;
  float _5146;
  int _5149;
  bool _5150;
  bool _5152;
  float _5153;
  int _5173;
  int _5174;
  uint _5186;
  int _5191;
  int _5196;
  float _5197;
  float _5203;
  float _5209;
  float _5214;
  float _5224;
  float _5234;
  float _5237;
  float _5239;
  float _5241;
  float _5243;
  float _5246;
  float _5247;
  float _5248;
  float _5249;
  float _5255;
  float _5261;
  float _5266;
  int _5267;
  float _5280;
  float _5301;
  bool _5304;
  float _5308;
  uint _5330;
  uint _5338;
  uint _5346;
  uint _5354;
  uint _5362;
  uint _5370;
  uint _5378;
  uint _5386;
  uint _5394;
  uint _5402;
  uint _5410;
  uint _5418;
  uint _5426;
  uint _5434;
  uint _5442;
  uint _5450;
  float _5482;
  float _5490;
  float _5491;
  float _5492;
  float _5504;
  float _5507;
  float _5516;
  float _5528;
  float _5536;
  float _5538;
  float _5540;
  float _5542;
  float _5546;
  float _5555;
  float _5564;
  float _5565;
  float _5571;
  float _5577;
  float _5579;
  float _5593;
  float _5600;
  float _5611;
  float _5612;
  float _5613;
  float _5615;
  float _5617;
  float _5618;
  float _5625;
  float _5626;
  float _5630;
  float _5634;
  float _5636;
  float _5639;
  uint _5661;
  int _5663;
  float _5666;
  int _5667;
  bool _5668;
  float _5669;
  float _5673;
  float _5676;
  bool _5680;
  int _5681;
  float _5753;
  float _5756;
  int _5809;
  float _5814;
  uint _5836;
  int _5838;
  float _5841;
  int _5842;
  bool _5843;
  float _5844;
  float _5848;
  float _5851;
  bool _5855;
  int _5856;
  float _5928;
  float _5931;
  int _5984;
  bool _5996;
  float _6009;
  float _6011;
  float _6023;
  bool _6033;
  float _6103;
  int _6104;
  uint4 _6143;
  float _6149;
  float _6152;
  float _6156;
  float _6157;
  float _6158;
  float _6159;
  float _6191;
  float _6193;
  float _6205;
  bool _6215;
  float _6285;
  int _6286;
  uint4 _6325;
  float _6331;
  float _6334;
  float _6338;
  float _6339;
  float _6340;
  float _6341;
  float _6370;
  int __loop_jump_target = -1;
  int _25[4];
  float _26[2];
  float _27[2];
  float _28[2];
  _34 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _25[0] = _34.x;
  _25[1] = _34.y;
  _25[2] = _34.z;
  _25[3] = _34.w;
  _46 = _25[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _50 = select((((int)(SV_GroupID.x) & 16) == 0), _46, ((uint)((uint)(_46)) >> 16));
  _56 = (uint)((uint)((int)((int)(((int)((uint)((uint)(_50)) << 2)) & 1020) | (int)((int)(SV_GroupID.x) & 3)) << 3)) + (uint)(SV_GroupThreadID.x);
  _63 = (uint)((uint)((int)((int)(((uint)((uint)(_50)) >> 6) & 1020) | (int)(((uint)(SV_GroupID.x) >> 2) & 3)) << 3)) + (uint)(SV_GroupThreadID.y);
  _64 = (float)((uint)((uint)(_56)));
  _65 = (float)((uint)((uint)(_63)));
  _69 = (_64 + 0.5f) * _bufferSizeAndInvSize.z;
  _72 = (_65 + 0.5f) * _bufferSizeAndInvSize.w;
  _74 = (_69 * 2.0f) + -1.0f;
  _76 = 1.0f - (_72 * 2.0f);
  _78 = __3__36__0__0__g_depthStencil.Load(int3(_56, _63, 0));  // [sem: _3__36__0__0__g_depthStencil_load]
  _80 = (uint)((uint)(_78.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _83 = ((float)((uint)((uint)(_78.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _84 = _80 & 127;
  // RenoDX: >>> [Patch: ConnectedPatchEnvelope] [Version: 1.16.00]
  // Description: Per-pixel connected-patch relief state. Evaluated lazily at most once, and only
  // if the far march produces a suppression candidate, so pixels without one pay nothing.
  bool _rndxCpeReady = false;
  bool _rndxCpeEst = false;
  float _rndxCpeE = 0.0f;
  // RenoDX: <<< [Patch: ConnectedPatchEnvelope]
  _86 = __3__36__0__0__g_sceneNormal.Load(int3(_56, _63, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
  _92 = min(1.0f, ((((float)((uint)((uint)(_86.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _98 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_86.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _104 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_86.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _106 = rsqrt(dot(float3(_92, _98, _104), float3(_92, _98, _104)));  // [sem: invLength]
  _107 = _106 * _92;
  _108 = _106 * _98;
  _109 = _106 * _104;
  _110 = (_83 == 1.0f);
  if ((_83 < 1e-07f) || _110) {
    _114 = select(_110, 0.0f, 1.0f);
    _6394 = _114;
    _6395 = _114;
    _6396 = _114;
    _6397 = _114;  // [sem: expr_sat]
  } else {
    _116 = max(1e-07f, _83);
    _119 = _nearFarProj.x / _116;
    _131 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _116, mad((_invViewProjRelative[3].y), _76, ((_invViewProjRelative[3].x) * _74)));
    _140 = (mad((_invViewProjRelative[0].z), _116, mad((_invViewProjRelative[0].y), _76, ((_invViewProjRelative[0].x) * _74))) + (_invViewProjRelative[0].w)) / _131;
    _149 = (mad((_invViewProjRelative[1].z), _116, mad((_invViewProjRelative[1].y), _76, ((_invViewProjRelative[1].x) * _74))) + (_invViewProjRelative[1].w)) / _131;
    _158 = (mad((_invViewProjRelative[2].z), _116, mad((_invViewProjRelative[2].y), _76, ((_invViewProjRelative[2].x) * _74))) + (_invViewProjRelative[2].w)) / _131;
    _160 = rsqrt(dot(float3(_140, _149, _158), float3(_140, _149, _158)));  // [sem: invLength]
    _26[0] = 0.0f;
    _27[0] = 0.0f;
    _28[0] = 0.0f;
    _26[1] = 0.0f;
    _27[1] = 0.0f;
    _28[1] = 0.0f;
    _167 = (int)(_84) + (int)(-52);
    _168 = ((uint)_167 < (uint)16);
    _180 = (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z), _158, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y), _149, ((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x) * _140)));
    _188 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _158, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _149, ((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x) * _140))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].w);
    _196 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _158, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _149, ((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x) * _140))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].w);
    if ((_196 <= 1.0f) && ((saturate(_180) == _180) && (_196 >= 0.0001f))) {
      if (saturate(_188) == _188) {
        _209 = (float)((uint)((uint)(_frameNumber.x)));
        _215 = (frac(((_209 * 92.0f) + _64) * 0.0078125f) * 128.0f) + -64.34062f;
        _221 = (frac(((_209 * 71.0f) + _65) * 0.0078125f) * 128.0f) + -72.46562f;
        _226 = frac(dot(float3((_215 * _215), (_221 * _221), (_221 * _215)), float3(20.390625f, 60.703125f, 2.4281209f)));
        _238 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_65 * _bufferSizeAndInvSize.x) + _64));
        _246 = (uint)((uint)((((int)((uint)((uint)((uint)(_238)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_238)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_238)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _254 = (uint)((uint)((((int)((uint)((uint)((uint)(_246)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_246)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_246)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_238));
        _262 = (uint)((uint)((((int)((uint)((uint)((uint)(_254)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_254)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_254)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_246));
        _270 = (uint)((uint)((((int)((uint)((uint)((uint)(_262)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_262)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_262)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_254));
        _278 = (uint)((uint)((((int)((uint)((uint)((uint)(_270)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_270)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_270)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_262));
        _286 = (uint)((uint)((((int)((uint)((uint)((uint)(_278)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_278)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_278)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_270));
        _294 = (uint)((uint)((((int)((uint)((uint)((uint)(_286)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_286)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_286)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_278));
        _302 = (uint)((uint)((((int)((uint)((uint)((uint)(_294)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_294)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_294)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_286));
        _310 = (uint)((uint)((((int)((uint)((uint)((uint)(_302)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_302)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_302)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_294));
        _318 = (uint)((uint)((((int)((uint)((uint)((uint)(_310)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_310)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_310)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_302));
        _326 = (uint)((uint)((((int)((uint)((uint)((uint)(_318)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_318)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_318)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_310));
        _334 = (uint)((uint)((((int)((uint)((uint)((uint)(_326)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_326)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_326)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_318));
        _342 = (uint)((uint)((((int)((uint)((uint)((uint)(_334)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_334)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_334)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_326));
        _350 = (uint)((uint)((((int)((uint)((uint)((uint)(_342)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_342)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_342)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_334));
        _358 = (uint)((uint)((((int)((uint)((uint)((uint)(_350)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_350)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_350)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_342));
        if ((_350 & 16777215) == 0) {
          _371 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_358)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_358)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_358)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_350))));
        } else {
          _371 = _350;
        }
        _376 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_371)) * (uint)(48271))) & 16777215)))) * 3.8146377e-06f);
        _385 = frac((((float)((uint)((uint)(_376)))) * 0.015625f) + (((float)((uint)((uint)(((int)((uint)(_226 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f));
        _387 = (_385 * 2.0f) + -1.0f;
        _394 = (((float)((uint)((uint)(reversebits(_376) ^ ((int)((uint)(_226 * 2.8747837e+08f))))))) * 4.656613e-10f) + -1.0f;
        _396 = rsqrt(dot(float2(_387, _394), float2(_387, _394)));  // [sem: invLength]
        _399 = _396 * ((_385 * 0.0009765625f) + -0.00048828125f);
        _401 = (_396 * 0.00048828125f) * _394;
        _405 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[0].x) * _399) + _180;
        _408 = (_401 * (__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[0].y)) + _188;
        _411 = frac((_405 * 1024.0f) + -0.5f);
        _414 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_405, _408));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _419 = _196 + -0.005f;
        _421 = select((_414.w > _419), 1.0f, 0.0f);
        _423 = select((_414.x > _419), 1.0f, 0.0f);
        _428 = ((select((_414.z > _419), 1.0f, 0.0f) - _421) * _411) + _421;
        _432 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[1].x) * _399) + _180;
        _435 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[1].y) * _401) + _188;
        _438 = frac((_432 * 1024.0f) + -0.5f);
        _439 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_432, _435));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _445 = select((_439.w > _419), 1.0f, 0.0f);
        _447 = select((_439.x > _419), 1.0f, 0.0f);
        _452 = ((select((_439.z > _419), 1.0f, 0.0f) - _445) * _438) + _445;
        _456 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[2].x) * _399) + _180;
        _459 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[2].y) * _401) + _188;
        _462 = frac((_456 * 1024.0f) + -0.5f);
        _463 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_456, _459));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _469 = select((_463.w > _419), 1.0f, 0.0f);
        _471 = select((_463.x > _419), 1.0f, 0.0f);
        _476 = ((select((_463.z > _419), 1.0f, 0.0f) - _469) * _462) + _469;
        _480 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[3].x) * _399) + _180;
        _483 = ((__3__35__0__0__ShadowConstantBuffer_view._jitterOffset[3].y) * _401) + _188;
        _486 = frac((_480 * 1024.0f) + -0.5f);
        _487 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_480, _483));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _493 = select((_487.w > _419), 1.0f, 0.0f);
        _495 = select((_487.x > _419), 1.0f, 0.0f);
        _500 = ((select((_487.z > _419), 1.0f, 0.0f) - _493) * _486) + _493;
        _554 = ((((saturate((frac((_408 * 1024.0f) + -0.5f) * ((((select((_414.y > _419), 1.0f, 0.0f) - _423) * _411) + _423) - _428)) + _428) + saturate((frac((_435 * 1024.0f) + -0.5f) * ((((select((_439.y > _419), 1.0f, 0.0f) - _447) * _438) + _447) - _452)) + _452)) + saturate((frac((_459 * 1024.0f) + -0.5f) * ((((select((_463.y > _419), 1.0f, 0.0f) - _471) * _462) + _471) - _476)) + _476)) + saturate((((((select((_487.y > _419), 1.0f, 0.0f) - _495) * _486) + _495) - _500) * frac((_483 * 1024.0f) + -0.5f)) + _500)) * 0.25f);
      } else {
        _554 = 1.0f;
      }
    } else {
      _554 = 1.0f;
    }
    _557 = min(max((_119 * 0.002f), 0.005f), 0.5f);
    _558 = ((uint)_167 > (uint)15);
    if (_558) {
      _567 = ((_557 * _109) + _158);
      _568 = ((_557 * _108) + _149);
      _569 = ((_557 * _107) + _140);
    } else {
      _567 = _158;
      _568 = _149;
      _569 = _140;
    }
    _587 = (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z), _567, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y), _568, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _569)));
    _595 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _567, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _568, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x) * _569))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].w);
    _603 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _567, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _568, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x) * _569))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].w);
    _606 = 4.0f / __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y;
    _607 = 1.0f - _606;
    _613 = (sqrt(((_149 * _149) + (_140 * _140)) + (_158 * _158)) < 128.0f);
    if ((_595 >= _606) && ((_603 <= 1.0f) && ((_603 >= -1.0f) && (_613 && ((_595 <= _607) && ((_587 >= _606) && (_587 <= _607))))))) {
      _627 = max(0.0f, ((abs((_587 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _633 = max(0.0f, ((abs((_595 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _26[1] = _587;
      _27[1] = _595;
      _28[1] = _603;
      _643 = sqrt((_633 * _633) + (_627 * _627));
      _644 = 1;
      _645 = select((_terrainNormalParams.y > 0.0f), 2e-05f, 8e-05f);
    } else {
      _643 = 0.0f;
      _644 = 0;
      _645 = 0.0f;
    }
    _657 = (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z), _567, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y), _568, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _569)));
    _665 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _567, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _568, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x) * _569))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].w);
    _673 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _567, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _568, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x) * _569))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].w);
    if ((_673 <= 1.0f) && ((_665 >= _606) && ((_613 && (((_657 >= _606) && (_657 <= _607)) && (_665 <= _607))) && (_673 >= -1.0f)))) {
      _692 = max(0.0f, ((abs((_657 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _698 = max(0.0f, ((abs((_665 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _26[0] = _657;
      _27[0] = _665;
      _28[0] = _673;
      _819 = false;
      _820 = 1;
      _821 = sqrt((_698 * _698) + (_692 * _692));
      _822 = 0;
      _823 = 1;
      _824 = select((_terrainNormalParams.y > 0.0f), 5e-06f, 2e-05f);
    } else {
      [branch]
      if (_644 == 0) {
        _712 = _viewPos.x + _569;
        _714 = _viewPos.y + _568;
        _716 = _viewPos.z + _567;
        _719 = _712 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x);
        _721 = _714 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y);
        _723 = _716 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z);
        _735 = (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z), _723, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y), _721, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x) * _719)));
        _743 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _723, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _721, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x) * _719))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].w);
        _751 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _723, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _721, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x) * _719))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].w);
        _754 = 2.0f / __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y;
        _755 = 1.0f - _754;
        if ((_743 >= _754) && ((_751 <= 1.0f) && ((_751 >= 0.0001f) && ((_743 <= _755) && ((_735 >= _754) && (_735 <= _755)))))) {
          _26[1] = _735;
          _27[1] = _743;
          _28[1] = _751;
          _769 = 1;
          _770 = 0.0002f;
        } else {
          _769 = 0;
          _770 = _645;
        }
        _773 = _712 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x);
        _775 = _714 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y);
        _777 = _716 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z);
        _789 = (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z), _777, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y), _775, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x) * _773)));
        _797 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _777, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _775, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x) * _773))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].w);
        _805 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _777, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _775, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x) * _773))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].w);
        if ((_805 <= 1.0f) && ((_797 >= _754) && ((((_789 >= _754) && (_789 <= _755)) && (_797 <= _755)) && (_805 >= 0.0001f)))) {
          _26[0] = _789;
          _27[0] = _797;
          _28[0] = _805;
          _819 = true;
          _820 = 0;
          _821 = _643;
          _822 = 0;
          _823 = 1;
          _824 = 0.0002f;
        } else {
          _819 = true;
          _820 = 0;
          _821 = _643;
          _822 = _769;
          _823 = _769;
          _824 = _770;
        }
      } else {
        _819 = false;
        _820 = 1;
        _821 = _643;
        _822 = 1;
        _823 = 1;
        _824 = _645;
      }
    }
    _838 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_65 * _bufferSizeAndInvSize.x) + _64));
    _846 = (uint)((uint)((((int)((uint)((uint)((uint)(_838)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_838)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_838)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
    _854 = (uint)((uint)((((int)((uint)((uint)((uint)(_846)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_846)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_846)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_838));
    _862 = (uint)((uint)((((int)((uint)((uint)((uint)(_854)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_854)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_854)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_846));
    _870 = (uint)((uint)((((int)((uint)((uint)((uint)(_862)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_862)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_862)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_854));
    _878 = (uint)((uint)((((int)((uint)((uint)((uint)(_870)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_870)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_870)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_862));
    _886 = (uint)((uint)((((int)((uint)((uint)((uint)(_878)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_878)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_878)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_870));
    _894 = (uint)((uint)((((int)((uint)((uint)((uint)(_886)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_886)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_886)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_878));
    _902 = (uint)((uint)((((int)((uint)((uint)((uint)(_894)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_894)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_894)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_886));
    _910 = (uint)((uint)((((int)((uint)((uint)((uint)(_902)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_902)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_902)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_894));
    _918 = (uint)((uint)((((int)((uint)((uint)((uint)(_910)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_910)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_910)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_902));
    _926 = (uint)((uint)((((int)((uint)((uint)((uint)(_918)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_918)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_918)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_910));
    _934 = (uint)((uint)((((int)((uint)((uint)((uint)(_926)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_926)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_926)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_918));
    _942 = (uint)((uint)((((int)((uint)((uint)((uint)(_934)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_934)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_934)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_926));
    _950 = (uint)((uint)((((int)((uint)((uint)((uint)(_942)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_942)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_942)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_934));
    _958 = (uint)((uint)((((int)((uint)((uint)((uint)(_950)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_950)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_950)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_942));
    _960 = ((_950 & 16777215) == 0);
    _961 = (int)min((uint)(_822), (uint)(1));
    [branch]
    if (_819) {
      _966 = _26[_961];
      _967 = _27[_961];
      _968 = _28[_961];
      if (_960) {
        _979 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_958)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_958)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_958)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_950))));
      } else {
        _979 = _950;
      }
      _982 = __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 2.0f;
      _984 = __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f;
      _985 = __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 2.3841858e-07f;
      _986 = __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.3841858e-07f;
      _992 = ((_985 * ((float)((uint)((uint)(((int)((uint)((uint)(_979)) * (uint)(48271))) & 16777215))))) - _982) + _966;
      _998 = ((_986 * ((float)((uint)((uint)(((int)((uint)((uint)(_979)) * (uint)(-1964877855))) & 16777215))))) - _984) + _967;
      _999 = (float)((uint)((uint)(_822)));
      _1000 = _968 - _824;
      _1006 = ((_985 * ((float)((uint)((uint)(((int)((uint)((uint)(_979)) * (uint)(-856141137))) & 16777215))))) - _982) + _966;
      _1012 = ((_986 * ((float)((uint)((uint)(((int)((uint)((uint)(_979)) * (uint)(-613502015))) & 16777215))))) - _984) + _967;
      _1018 = ((_985 * ((float)((uint)((uint)(((int)((uint)((uint)(_979)) * (uint)(-556260145))) & 16777215))))) - _982) + _966;
      _1024 = ((_986 * ((float)((uint)((uint)(((int)((uint)((uint)(_979)) * (uint)(902075297))) & 16777215))))) - _984) + _967;
      _1030 = ((_985 * ((float)((uint)((uint)(((int)((uint)((uint)(_979)) * (uint)(1698214639))) & 16777215))))) - _982) + _966;
      _1036 = ((_986 * ((float)((uint)((uint)(((int)((uint)((uint)(_979)) * (uint)(773027713))) & 16777215))))) - _984) + _967;
      _1058 = (((saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_992, _998, _999), _1000)).x)) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1006, _1012, _999), _1000)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1018, _1024, _999), _1000)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1030, _1036, _999), _1000)).x))) * 0.25f;
      _1079 = (((max(0.0f, (_968 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_992, _998, _999), 0.0f))).x))) + max(0.0f, (_968 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1006, _1012, _999), 0.0f))).x)))) + max(0.0f, (_968 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1018, _1024, _999), 0.0f))).x)))) + max(0.0f, (_968 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1030, _1036, _999), 0.0f))).x)))) * 0.25f;
      _5130 = 1.0h;
      _5131 = 1.0h;
      _5132 = 1.0h;
      _5133 = saturate(_1079 * _1079);  // [sem: expr_sat]
      _5134 = saturate(_1058 * _1058);  // [sem: expr_sat]
    } else {
      _1085 = _26[_961];
      _1086 = _27[_961];
      _1087 = _28[_961];
      _1089 = select((_822 == 0), 2.5f, 1.0f);
      if (_960) {
        _1100 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_958)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_958)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_958)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_950))));
      } else {
        _1100 = _950;
      }
      _1103 = select(_168, (_1089 * 0.75f), _1089) * 0.66f;
      _1105 = _1103 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.z;
      _1107 = _1103 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.w;
      _1108 = _1105 * 1.1920929e-07f;
      _1109 = _1107 * 1.1920929e-07f;
      _1113 = min(100.0f, _shadowAOParams.y) * 0.85f;
      _1119 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(48271))) & 16777215)))) * _1108) - _1105) + _1085;
      _1125 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(-1964877855))) & 16777215)))) * _1109) - _1107) + _1086;
      _1128 = (_1119 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _1130 = (_1125 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _1131 = frac(_1128);
      _1132 = frac(_1130);
      _1134 = (int)(floor(_1128));
      _1136 = (int)(floor(_1130));
      _1137 = (uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x);
      _1138 = (uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y);
      _1139 = (uint)((uint)(_1134)) + (uint)(1);
      _1140 = (uint)((uint)(_1136)) + (uint)(1);
      if (!(((uint)_1134 > (uint)_1137) || ((uint)_1136 > (uint)_1138))) {
        _1146 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1134, _1136, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1148 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1139, _1136, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1150 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1134, _1140, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1152 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1139, _1140, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _1155 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_1134, _1136, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _1160 = max(0.0f, (_1087 - _1146.x));
        _1162 = max(0.0f, (_1087 - _1150.x));
        _1166 = saturate(exp2((_1146.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _1170 = saturate(exp2((_1150.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _1177 = ((saturate(exp2((_1148.x - _1087) * 432808.5f)) - _1166) * _1131) + _1166;
        _1182 = ((max(0.0f, (_1087 - _1148.x)) - _1160) * _1131) + _1160;
        _1183 = (int)(_822) << 2;
        _1185 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1183) + (int)(58)))];
        _1190 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1183) + (int)(59)))];
        _1195 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1183) + (int)(60)))];
        _1200 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1183) + (int)(61)))];
        _1205 = mad(_1190.x, _1125, (_1185.x * _1119));
        _1207 = mad(_1195.x, _1146.x, _1205) + _1200.x;
        _1209 = mad(_1190.y, _1125, (_1185.y * _1119));
        _1211 = mad(_1195.y, _1146.x, _1209) + _1200.y;
        _1213 = mad(_1190.z, _1125, (_1185.z * _1119));
        _1215 = mad(_1195.z, _1146.x, _1213) + _1200.z;
        _1216 = -4.0f - _1113;
        _1218 = mad(_1195.x, _1148.x, _1205) + _1200.x;
        _1220 = mad(_1195.y, _1148.x, _1209) + _1200.y;
        _1222 = mad(_1195.z, _1148.x, _1213) + _1200.z;
        _1224 = mad(_1195.x, _1150.x, _1205) + _1200.x;
        _1226 = mad(_1195.y, _1150.x, _1209) + _1200.y;
        _1228 = mad(_1195.z, _1150.x, _1213) + _1200.z;
        _1230 = mad(_1195.x, _1152.x, _1205) + _1200.x;
        _1232 = mad(_1195.y, _1152.x, _1209) + _1200.y;
        _1234 = mad(_1195.z, _1152.x, _1213) + _1200.z;
        _1345 = (half)(_1155.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1346 = (half)(_1155.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1347 = (half)(_1155.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1348 = false;
        _1349 = ((((_1162 - _1182) + ((max(0.0f, (_1087 - _1152.x)) - _1162) * _1131)) * _1132) + _1182);
        _1350 = ((((_1177 + -1.0f) + (((_1170 - _1177) + ((saturate(exp2((_1152.x - _1087) * 432808.5f)) - _1170) * _1131)) * _1132)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1134, _1136, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1207 + _1216), (_1216 - _1207)) * 0.25f), (max((_1211 + _1216), (_1216 - _1211)) * 0.25f)), (max((_1215 + _1216), (_1216 - _1215)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1139, _1136, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1218 + _1216), (_1216 - _1218)) * 0.25f), (max((_1220 + _1216), (_1216 - _1220)) * 0.25f)), (max((_1222 + _1216), (_1216 - _1222)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1134, _1140, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1224 + _1216), (_1216 - _1224)) * 0.25f), (max((_1226 + _1216), (_1216 - _1226)) * 0.25f)), (max((_1228 + _1216), (_1216 - _1228)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1139, _1140, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1230 + _1216), (_1216 - _1230)) * 0.25f), (max((_1232 + _1216), (_1216 - _1232)) * 0.25f)), (max((_1234 + _1216), (_1216 - _1234)) * 0.25f))))))) + 1.0f);
      } else {
        _1345 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1346 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1347 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _1348 = true;
        _1349 = 0.0f;
        _1350 = 1.0f;
      }
      _1351 = select(_1348, 0.0f, _1347);
      _1352 = select(_1348, 0.0f, _1346);
      _1353 = select(_1348, 0.0f, _1345);
      _1354 = select(_1348, 0.0f, _1350);
      _1355 = select(_1348, 0.0f, _1349);
      _1356 = select(_1348, 0.0f, 1.0f);
      _1362 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(-856141137))) & 16777215)))) * _1108) - _1105) + _1085;
      _1368 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(-613502015))) & 16777215)))) * _1109) - _1107) + _1086;
      _1370 = (_1362 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _1372 = (_1368 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _1373 = frac(_1370);
      _1374 = frac(_1372);
      _1376 = (int)(floor(_1370));
      _1378 = (int)(floor(_1372));
      _1379 = (uint)((uint)(_1376)) + (uint)(1);
      _1380 = (uint)((uint)(_1378)) + (uint)(1);
      if (!(((uint)_1376 > (uint)_1137) || ((uint)_1378 > (uint)_1138))) {
        _1386 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1376, _1378, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1388 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1379, _1378, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1390 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1376, _1380, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1392 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1379, _1380, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _1395 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_1376, _1378, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _1400 = max(0.0f, (_1087 - _1386.x));
        _1402 = max(0.0f, (_1087 - _1390.x));
        _1406 = saturate(exp2((_1386.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _1410 = saturate(exp2((_1390.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _1417 = ((saturate(exp2((_1388.x - _1087) * 432808.5f)) - _1406) * _1373) + _1406;
        _1422 = ((max(0.0f, (_1087 - _1388.x)) - _1400) * _1373) + _1400;
        _1423 = (int)(_822) << 2;
        _1425 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1423) + (int)(58)))];
        _1430 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1423) + (int)(59)))];
        _1435 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1423) + (int)(60)))];
        _1440 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1423) + (int)(61)))];
        _1445 = mad(_1430.x, _1368, (_1425.x * _1362));
        _1447 = mad(_1435.x, _1386.x, _1445) + _1440.x;
        _1449 = mad(_1430.y, _1368, (_1425.y * _1362));
        _1451 = mad(_1435.y, _1386.x, _1449) + _1440.y;
        _1453 = mad(_1430.z, _1368, (_1425.z * _1362));
        _1455 = mad(_1435.z, _1386.x, _1453) + _1440.z;
        _1456 = -4.0f - _1113;
        _1458 = mad(_1435.x, _1388.x, _1445) + _1440.x;
        _1460 = mad(_1435.y, _1388.x, _1449) + _1440.y;
        _1462 = mad(_1435.z, _1388.x, _1453) + _1440.z;
        _1464 = mad(_1435.x, _1390.x, _1445) + _1440.x;
        _1466 = mad(_1435.y, _1390.x, _1449) + _1440.y;
        _1468 = mad(_1435.z, _1390.x, _1453) + _1440.z;
        _1470 = mad(_1435.x, _1392.x, _1445) + _1440.x;
        _1472 = mad(_1435.y, _1392.x, _1449) + _1440.y;
        _1474 = mad(_1435.z, _1392.x, _1453) + _1440.z;
        _1591 = (_1356 + 1.0f);
        _1592 = ((_1422 + _1355) + (((_1402 - _1422) + ((max(0.0f, (_1087 - _1392.x)) - _1402) * _1373)) * _1374));
        _1593 = ((_1354 + 1.0f) + (((_1417 + -1.0f) + (((_1410 - _1417) + ((saturate(exp2((_1392.x - _1087) * 432808.5f)) - _1410) * _1373)) * _1374)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1376, _1378, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1447 + _1456), (_1456 - _1447)) * 0.25f), (max((_1451 + _1456), (_1456 - _1451)) * 0.25f)), (max((_1455 + _1456), (_1456 - _1455)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1379, _1378, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1458 + _1456), (_1456 - _1458)) * 0.25f), (max((_1460 + _1456), (_1456 - _1460)) * 0.25f)), (max((_1462 + _1456), (_1456 - _1462)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1376, _1380, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1464 + _1456), (_1456 - _1464)) * 0.25f), (max((_1466 + _1456), (_1456 - _1466)) * 0.25f)), (max((_1468 + _1456), (_1456 - _1468)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1379, _1380, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1470 + _1456), (_1456 - _1470)) * 0.25f), (max((_1472 + _1456), (_1456 - _1472)) * 0.25f)), (max((_1474 + _1456), (_1456 - _1474)) * 0.25f))))))));
        _1594 = ((half)((half)(_1395.z) + _1353));
        _1595 = ((half)((half)(_1395.y) + _1352));
        _1596 = ((half)((half)(_1395.x) + _1351));
      } else {
        _1591 = _1356;
        _1592 = _1355;
        _1593 = _1354;
        _1594 = _1353;
        _1595 = _1352;
        _1596 = _1351;
      }
      _1602 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(-556260145))) & 16777215)))) * _1108) - _1105) + _1085;
      _1608 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(902075297))) & 16777215)))) * _1109) - _1107) + _1086;
      _1610 = (_1602 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _1612 = (_1608 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _1613 = frac(_1610);
      _1614 = frac(_1612);
      _1616 = (int)(floor(_1610));
      _1618 = (int)(floor(_1612));
      _1619 = (uint)((uint)(_1616)) + (uint)(1);
      _1620 = (uint)((uint)(_1618)) + (uint)(1);
      if (!(((uint)_1616 > (uint)_1137) || ((uint)_1618 > (uint)_1138))) {
        _1626 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1616, _1618, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1628 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1619, _1618, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1630 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1616, _1620, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1632 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1619, _1620, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _1635 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_1616, _1618, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _1640 = max(0.0f, (_1087 - _1626.x));
        _1642 = max(0.0f, (_1087 - _1630.x));
        _1646 = saturate(exp2((_1626.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _1650 = saturate(exp2((_1630.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _1657 = ((saturate(exp2((_1628.x - _1087) * 432808.5f)) - _1646) * _1613) + _1646;
        _1662 = ((max(0.0f, (_1087 - _1628.x)) - _1640) * _1613) + _1640;
        _1663 = (int)(_822) << 2;
        _1665 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1663) + (int)(58)))];
        _1670 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1663) + (int)(59)))];
        _1675 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1663) + (int)(60)))];
        _1680 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1663) + (int)(61)))];
        _1685 = mad(_1670.x, _1608, (_1665.x * _1602));
        _1687 = mad(_1675.x, _1626.x, _1685) + _1680.x;
        _1689 = mad(_1670.y, _1608, (_1665.y * _1602));
        _1691 = mad(_1675.y, _1626.x, _1689) + _1680.y;
        _1693 = mad(_1670.z, _1608, (_1665.z * _1602));
        _1695 = mad(_1675.z, _1626.x, _1693) + _1680.z;
        _1696 = -4.0f - _1113;
        _1698 = mad(_1675.x, _1628.x, _1685) + _1680.x;
        _1700 = mad(_1675.y, _1628.x, _1689) + _1680.y;
        _1702 = mad(_1675.z, _1628.x, _1693) + _1680.z;
        _1704 = mad(_1675.x, _1630.x, _1685) + _1680.x;
        _1706 = mad(_1675.y, _1630.x, _1689) + _1680.y;
        _1708 = mad(_1675.z, _1630.x, _1693) + _1680.z;
        _1710 = mad(_1675.x, _1632.x, _1685) + _1680.x;
        _1712 = mad(_1675.y, _1632.x, _1689) + _1680.y;
        _1714 = mad(_1675.z, _1632.x, _1693) + _1680.z;
        _1831 = (_1591 + 1.0f);
        _1832 = ((_1662 + _1592) + (((_1642 - _1662) + ((max(0.0f, (_1087 - _1632.x)) - _1642) * _1613)) * _1614));
        _1833 = ((_1593 + 1.0f) + (((_1657 + -1.0f) + (((_1650 - _1657) + ((saturate(exp2((_1632.x - _1087) * 432808.5f)) - _1650) * _1613)) * _1614)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1616, _1618, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1687 + _1696), (_1696 - _1687)) * 0.25f), (max((_1691 + _1696), (_1696 - _1691)) * 0.25f)), (max((_1695 + _1696), (_1696 - _1695)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1619, _1618, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1698 + _1696), (_1696 - _1698)) * 0.25f), (max((_1700 + _1696), (_1696 - _1700)) * 0.25f)), (max((_1702 + _1696), (_1696 - _1702)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1616, _1620, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1704 + _1696), (_1696 - _1704)) * 0.25f), (max((_1706 + _1696), (_1696 - _1706)) * 0.25f)), (max((_1708 + _1696), (_1696 - _1708)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1619, _1620, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1710 + _1696), (_1696 - _1710)) * 0.25f), (max((_1712 + _1696), (_1696 - _1712)) * 0.25f)), (max((_1714 + _1696), (_1696 - _1714)) * 0.25f))))))));
        _1834 = ((half)((half)(_1635.z) + _1594));
        _1835 = ((half)((half)(_1635.y) + _1595));
        _1836 = ((half)((half)(_1635.x) + _1596));
      } else {
        _1831 = _1591;
        _1832 = _1592;
        _1833 = _1593;
        _1834 = _1594;
        _1835 = _1595;
        _1836 = _1596;
      }
      _1842 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(1698214639))) & 16777215)))) * _1108) - _1105) + _1085;
      _1848 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(773027713))) & 16777215)))) * _1109) - _1107) + _1086;
      _1850 = (_1842 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _1852 = (_1848 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _1853 = frac(_1850);
      _1854 = frac(_1852);
      _1856 = (int)(floor(_1850));
      _1858 = (int)(floor(_1852));
      _1859 = (uint)((uint)(_1856)) + (uint)(1);
      _1860 = (uint)((uint)(_1858)) + (uint)(1);
      if (!(((uint)_1856 > (uint)_1137) || ((uint)_1858 > (uint)_1138))) {
        _1866 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1856, _1858, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1868 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1859, _1858, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1870 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1856, _1860, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _1872 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_1859, _1860, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _1875 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_1856, _1858, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _1880 = max(0.0f, (_1087 - _1866.x));
        _1882 = max(0.0f, (_1087 - _1870.x));
        _1886 = saturate(exp2((_1866.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _1890 = saturate(exp2((_1870.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _1897 = ((saturate(exp2((_1868.x - _1087) * 432808.5f)) - _1886) * _1853) + _1886;
        _1902 = ((max(0.0f, (_1087 - _1868.x)) - _1880) * _1853) + _1880;
        _1903 = (int)(_822) << 2;
        _1905 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1903) + (int)(58)))];
        _1910 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1903) + (int)(59)))];
        _1915 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1903) + (int)(60)))];
        _1920 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_1903) + (int)(61)))];
        _1925 = mad(_1910.x, _1848, (_1905.x * _1842));
        _1927 = mad(_1915.x, _1866.x, _1925) + _1920.x;
        _1929 = mad(_1910.y, _1848, (_1905.y * _1842));
        _1931 = mad(_1915.y, _1866.x, _1929) + _1920.y;
        _1933 = mad(_1910.z, _1848, (_1905.z * _1842));
        _1935 = mad(_1915.z, _1866.x, _1933) + _1920.z;
        _1936 = -4.0f - _1113;
        _1938 = mad(_1915.x, _1868.x, _1925) + _1920.x;
        _1940 = mad(_1915.y, _1868.x, _1929) + _1920.y;
        _1942 = mad(_1915.z, _1868.x, _1933) + _1920.z;
        _1944 = mad(_1915.x, _1870.x, _1925) + _1920.x;
        _1946 = mad(_1915.y, _1870.x, _1929) + _1920.y;
        _1948 = mad(_1915.z, _1870.x, _1933) + _1920.z;
        _1950 = mad(_1915.x, _1872.x, _1925) + _1920.x;
        _1952 = mad(_1915.y, _1872.x, _1929) + _1920.y;
        _1954 = mad(_1915.z, _1872.x, _1933) + _1920.z;
        _2071 = (_1831 + 1.0f);
        _2072 = ((_1902 + _1832) + (((_1882 - _1902) + ((max(0.0f, (_1087 - _1872.x)) - _1882) * _1853)) * _1854));
        _2073 = ((_1833 + 1.0f) + (((_1897 + -1.0f) + (((_1890 - _1897) + ((saturate(exp2((_1872.x - _1087) * 432808.5f)) - _1890) * _1853)) * _1854)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1856, _1858, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1927 + _1936), (_1936 - _1927)) * 0.25f), (max((_1931 + _1936), (_1936 - _1931)) * 0.25f)), (max((_1935 + _1936), (_1936 - _1935)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1859, _1858, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1938 + _1936), (_1936 - _1938)) * 0.25f), (max((_1940 + _1936), (_1936 - _1940)) * 0.25f)), (max((_1942 + _1936), (_1936 - _1942)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1856, _1860, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1944 + _1936), (_1936 - _1944)) * 0.25f), (max((_1946 + _1936), (_1936 - _1946)) * 0.25f)), (max((_1948 + _1936), (_1936 - _1948)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_1859, _1860, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_1950 + _1936), (_1936 - _1950)) * 0.25f), (max((_1952 + _1936), (_1936 - _1952)) * 0.25f)), (max((_1954 + _1936), (_1936 - _1954)) * 0.25f))))))));
        _2074 = ((half)((half)(_1875.z) + _1834));
        _2075 = ((half)((half)(_1875.y) + _1835));
        _2076 = ((half)((half)(_1875.x) + _1836));
      } else {
        _2071 = _1831;
        _2072 = _1832;
        _2073 = _1833;
        _2074 = _1834;
        _2075 = _1835;
        _2076 = _1836;
      }
      _2082 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(144866575))) & 16777215)))) * _1108) - _1105) + _1085;
      _2088 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(647683937))) & 16777215)))) * _1109) - _1107) + _1086;
      _2090 = (_2082 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _2092 = (_2088 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _2093 = frac(_2090);
      _2094 = frac(_2092);
      _2096 = (int)(floor(_2090));
      _2098 = (int)(floor(_2092));
      _2099 = (uint)((uint)(_2096)) + (uint)(1);
      _2100 = (uint)((uint)(_2098)) + (uint)(1);
      if (!(((uint)_2096 > (uint)_1137) || ((uint)_2098 > (uint)_1138))) {
        _2106 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2096, _2098, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2108 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2099, _2098, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2110 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2096, _2100, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2112 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2099, _2100, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _2115 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_2096, _2098, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _2120 = max(0.0f, (_1087 - _2106.x));
        _2122 = max(0.0f, (_1087 - _2110.x));
        _2126 = saturate(exp2((_2106.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _2130 = saturate(exp2((_2110.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _2137 = ((saturate(exp2((_2108.x - _1087) * 432808.5f)) - _2126) * _2093) + _2126;
        _2142 = ((max(0.0f, (_1087 - _2108.x)) - _2120) * _2093) + _2120;
        _2143 = (int)(_822) << 2;
        _2145 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2143) + (int)(58)))];
        _2150 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2143) + (int)(59)))];
        _2155 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2143) + (int)(60)))];
        _2160 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2143) + (int)(61)))];
        _2165 = mad(_2150.x, _2088, (_2145.x * _2082));
        _2167 = mad(_2155.x, _2106.x, _2165) + _2160.x;
        _2169 = mad(_2150.y, _2088, (_2145.y * _2082));
        _2171 = mad(_2155.y, _2106.x, _2169) + _2160.y;
        _2173 = mad(_2150.z, _2088, (_2145.z * _2082));
        _2175 = mad(_2155.z, _2106.x, _2173) + _2160.z;
        _2176 = -4.0f - _1113;
        _2178 = mad(_2155.x, _2108.x, _2165) + _2160.x;
        _2180 = mad(_2155.y, _2108.x, _2169) + _2160.y;
        _2182 = mad(_2155.z, _2108.x, _2173) + _2160.z;
        _2184 = mad(_2155.x, _2110.x, _2165) + _2160.x;
        _2186 = mad(_2155.y, _2110.x, _2169) + _2160.y;
        _2188 = mad(_2155.z, _2110.x, _2173) + _2160.z;
        _2190 = mad(_2155.x, _2112.x, _2165) + _2160.x;
        _2192 = mad(_2155.y, _2112.x, _2169) + _2160.y;
        _2194 = mad(_2155.z, _2112.x, _2173) + _2160.z;
        _2311 = (_2071 + 1.0f);
        _2312 = ((_2142 + _2072) + (((_2122 - _2142) + ((max(0.0f, (_1087 - _2112.x)) - _2122) * _2093)) * _2094));
        _2313 = ((_2073 + 1.0f) + (((_2137 + -1.0f) + (((_2130 - _2137) + ((saturate(exp2((_2112.x - _1087) * 432808.5f)) - _2130) * _2093)) * _2094)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2096, _2098, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_2167 + _2176), (_2176 - _2167)) * 0.25f), (max((_2171 + _2176), (_2176 - _2171)) * 0.25f)), (max((_2175 + _2176), (_2176 - _2175)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2099, _2098, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_2178 + _2176), (_2176 - _2178)) * 0.25f), (max((_2180 + _2176), (_2176 - _2180)) * 0.25f)), (max((_2182 + _2176), (_2176 - _2182)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2096, _2100, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_2184 + _2176), (_2176 - _2184)) * 0.25f), (max((_2186 + _2176), (_2176 - _2186)) * 0.25f)), (max((_2188 + _2176), (_2176 - _2188)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2099, _2100, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_2190 + _2176), (_2176 - _2190)) * 0.25f), (max((_2192 + _2176), (_2176 - _2192)) * 0.25f)), (max((_2194 + _2176), (_2176 - _2194)) * 0.25f))))))));
        _2314 = ((half)((half)(_2115.z) + _2074));
        _2315 = ((half)((half)(_2115.y) + _2075));
        _2316 = ((half)((half)(_2115.x) + _2076));
      } else {
        _2311 = _2071;
        _2312 = _2072;
        _2313 = _2073;
        _2314 = _2074;
        _2315 = _2075;
        _2316 = _2076;
      }
      _2322 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(1284375343))) & 16777215)))) * _1108) - _1105) + _1085;
      _2328 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(229264193))) & 16777215)))) * _1109) - _1107) + _1086;
      _2330 = (_2322 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _2332 = (_2328 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _2333 = frac(_2330);
      _2334 = frac(_2332);
      _2336 = (int)(floor(_2330));
      _2338 = (int)(floor(_2332));
      _2339 = (uint)((uint)(_2336)) + (uint)(1);
      _2340 = (uint)((uint)(_2338)) + (uint)(1);
      if (!(((uint)_2336 > (uint)_1137) || ((uint)_2338 > (uint)_1138))) {
        _2346 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2336, _2338, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2348 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2339, _2338, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2350 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2336, _2340, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2352 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2339, _2340, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _2355 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_2336, _2338, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _2360 = max(0.0f, (_1087 - _2346.x));
        _2362 = max(0.0f, (_1087 - _2350.x));
        _2366 = saturate(exp2((_2346.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _2370 = saturate(exp2((_2350.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _2377 = ((saturate(exp2((_2348.x - _1087) * 432808.5f)) - _2366) * _2333) + _2366;
        _2382 = ((max(0.0f, (_1087 - _2348.x)) - _2360) * _2333) + _2360;
        _2383 = (int)(_822) << 2;
        _2385 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2383) + (int)(58)))];
        _2390 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2383) + (int)(59)))];
        _2395 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2383) + (int)(60)))];
        _2400 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2383) + (int)(61)))];
        _2405 = mad(_2390.x, _2328, (_2385.x * _2322));
        _2407 = mad(_2395.x, _2346.x, _2405) + _2400.x;
        _2409 = mad(_2390.y, _2328, (_2385.y * _2322));
        _2411 = mad(_2395.y, _2346.x, _2409) + _2400.y;
        _2413 = mad(_2390.z, _2328, (_2385.z * _2322));
        _2415 = mad(_2395.z, _2346.x, _2413) + _2400.z;
        _2416 = -4.0f - _1113;
        _2418 = mad(_2395.x, _2348.x, _2405) + _2400.x;
        _2420 = mad(_2395.y, _2348.x, _2409) + _2400.y;
        _2422 = mad(_2395.z, _2348.x, _2413) + _2400.z;
        _2424 = mad(_2395.x, _2350.x, _2405) + _2400.x;
        _2426 = mad(_2395.y, _2350.x, _2409) + _2400.y;
        _2428 = mad(_2395.z, _2350.x, _2413) + _2400.z;
        _2430 = mad(_2395.x, _2352.x, _2405) + _2400.x;
        _2432 = mad(_2395.y, _2352.x, _2409) + _2400.y;
        _2434 = mad(_2395.z, _2352.x, _2413) + _2400.z;
        _2551 = (_2311 + 1.0f);
        _2552 = ((_2382 + _2312) + (((_2362 - _2382) + ((max(0.0f, (_1087 - _2352.x)) - _2362) * _2333)) * _2334));
        _2553 = ((_2313 + 1.0f) + (((_2377 + -1.0f) + (((_2370 - _2377) + ((saturate(exp2((_2352.x - _1087) * 432808.5f)) - _2370) * _2333)) * _2334)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2336, _2338, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_2407 + _2416), (_2416 - _2407)) * 0.25f), (max((_2411 + _2416), (_2416 - _2411)) * 0.25f)), (max((_2415 + _2416), (_2416 - _2415)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2339, _2338, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_2418 + _2416), (_2416 - _2418)) * 0.25f), (max((_2420 + _2416), (_2416 - _2420)) * 0.25f)), (max((_2422 + _2416), (_2416 - _2422)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2336, _2340, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_2424 + _2416), (_2416 - _2424)) * 0.25f), (max((_2426 + _2416), (_2416 - _2426)) * 0.25f)), (max((_2428 + _2416), (_2416 - _2428)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2339, _2340, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_2430 + _2416), (_2416 - _2430)) * 0.25f), (max((_2432 + _2416), (_2416 - _2432)) * 0.25f)), (max((_2434 + _2416), (_2416 - _2434)) * 0.25f))))))));
        _2554 = ((half)((half)(_2355.z) + _2314));
        _2555 = ((half)((half)(_2355.y) + _2315));
        _2556 = ((half)((half)(_2355.x) + _2316));
      } else {
        _2551 = _2311;
        _2552 = _2312;
        _2553 = _2313;
        _2554 = _2314;
        _2555 = _2315;
        _2556 = _2316;
      }
      _2562 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(-1318861489))) & 16777215)))) * _1108) - _1105) + _1085;
      _2568 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(1537293089))) & 16777215)))) * _1109) - _1107) + _1086;
      _2570 = (_2562 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _2572 = (_2568 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _2573 = frac(_2570);
      _2574 = frac(_2572);
      _2576 = (int)(floor(_2570));
      _2578 = (int)(floor(_2572));
      _2579 = (uint)((uint)(_2576)) + (uint)(1);
      _2580 = (uint)((uint)(_2578)) + (uint)(1);
      if (!(((uint)_2576 > (uint)_1137) || ((uint)_2578 > (uint)_1138))) {
        _2586 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2576, _2578, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2588 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2579, _2578, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2590 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2576, _2580, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2592 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2579, _2580, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _2595 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_2576, _2578, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _2600 = max(0.0f, (_1087 - _2586.x));
        _2602 = max(0.0f, (_1087 - _2590.x));
        _2606 = saturate(exp2((_2586.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _2610 = saturate(exp2((_2590.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _2617 = ((saturate(exp2((_2588.x - _1087) * 432808.5f)) - _2606) * _2573) + _2606;
        _2622 = ((max(0.0f, (_1087 - _2588.x)) - _2600) * _2573) + _2600;
        _2623 = (int)(_822) << 2;
        _2625 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2623) + (int)(58)))];
        _2630 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2623) + (int)(59)))];
        _2635 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2623) + (int)(60)))];
        _2640 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2623) + (int)(61)))];
        _2645 = mad(_2630.x, _2568, (_2625.x * _2562));
        _2647 = mad(_2635.x, _2586.x, _2645) + _2640.x;
        _2649 = mad(_2630.y, _2568, (_2625.y * _2562));
        _2651 = mad(_2635.y, _2586.x, _2649) + _2640.y;
        _2653 = mad(_2630.z, _2568, (_2625.z * _2562));
        _2655 = mad(_2635.z, _2586.x, _2653) + _2640.z;
        _2656 = -4.0f - _1113;
        _2658 = mad(_2635.x, _2588.x, _2645) + _2640.x;
        _2660 = mad(_2635.y, _2588.x, _2649) + _2640.y;
        _2662 = mad(_2635.z, _2588.x, _2653) + _2640.z;
        _2664 = mad(_2635.x, _2590.x, _2645) + _2640.x;
        _2666 = mad(_2635.y, _2590.x, _2649) + _2640.y;
        _2668 = mad(_2635.z, _2590.x, _2653) + _2640.z;
        _2670 = mad(_2635.x, _2592.x, _2645) + _2640.x;
        _2672 = mad(_2635.y, _2592.x, _2649) + _2640.y;
        _2674 = mad(_2635.z, _2592.x, _2653) + _2640.z;
        _2791 = (_2551 + 1.0f);
        _2792 = ((_2622 + _2552) + (((_2602 - _2622) + ((max(0.0f, (_1087 - _2592.x)) - _2602) * _2573)) * _2574));
        _2793 = ((_2553 + 1.0f) + (((_2617 + -1.0f) + (((_2610 - _2617) + ((saturate(exp2((_2592.x - _1087) * 432808.5f)) - _2610) * _2573)) * _2574)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2576, _2578, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_2647 + _2656), (_2656 - _2647)) * 0.25f), (max((_2651 + _2656), (_2656 - _2651)) * 0.25f)), (max((_2655 + _2656), (_2656 - _2655)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2579, _2578, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_2658 + _2656), (_2656 - _2658)) * 0.25f), (max((_2660 + _2656), (_2656 - _2660)) * 0.25f)), (max((_2662 + _2656), (_2656 - _2662)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2576, _2580, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_2664 + _2656), (_2656 - _2664)) * 0.25f), (max((_2666 + _2656), (_2656 - _2666)) * 0.25f)), (max((_2668 + _2656), (_2656 - _2668)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2579, _2580, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_2670 + _2656), (_2656 - _2670)) * 0.25f), (max((_2672 + _2656), (_2656 - _2672)) * 0.25f)), (max((_2674 + _2656), (_2656 - _2674)) * 0.25f))))))));
        _2794 = ((half)((half)(_2595.z) + _2554));
        _2795 = ((half)((half)(_2595.y) + _2555));
        _2796 = ((half)((half)(_2595.x) + _2556));
      } else {
        _2791 = _2551;
        _2792 = _2552;
        _2793 = _2553;
        _2794 = _2554;
        _2795 = _2555;
        _2796 = _2556;
      }
      _2802 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(-1770241169))) & 16777215)))) * _1108) - _1105) + _1085;
      _2808 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(1357852417))) & 16777215)))) * _1109) - _1107) + _1086;
      _2810 = (_2802 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _2812 = (_2808 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _2813 = frac(_2810);
      _2814 = frac(_2812);
      _2816 = (int)(floor(_2810));
      _2818 = (int)(floor(_2812));
      _2819 = (uint)((uint)(_2816)) + (uint)(1);
      _2820 = (uint)((uint)(_2818)) + (uint)(1);
      if (!(((uint)_2816 > (uint)_1137) || ((uint)_2818 > (uint)_1138))) {
        _2826 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2816, _2818, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2828 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2819, _2818, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2830 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2816, _2820, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _2832 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2819, _2820, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _2835 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_2816, _2818, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _2840 = max(0.0f, (_1087 - _2826.x));
        _2842 = max(0.0f, (_1087 - _2830.x));
        _2846 = saturate(exp2((_2826.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _2850 = saturate(exp2((_2830.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _2857 = ((saturate(exp2((_2828.x - _1087) * 432808.5f)) - _2846) * _2813) + _2846;
        _2862 = ((max(0.0f, (_1087 - _2828.x)) - _2840) * _2813) + _2840;
        _2863 = (int)(_822) << 2;
        _2865 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2863) + (int)(58)))];
        _2870 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2863) + (int)(59)))];
        _2875 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2863) + (int)(60)))];
        _2880 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2863) + (int)(61)))];
        _2885 = mad(_2870.x, _2808, (_2865.x * _2802));
        _2887 = mad(_2875.x, _2826.x, _2885) + _2880.x;
        _2889 = mad(_2870.y, _2808, (_2865.y * _2802));
        _2891 = mad(_2875.y, _2826.x, _2889) + _2880.y;
        _2893 = mad(_2870.z, _2808, (_2865.z * _2802));
        _2895 = mad(_2875.z, _2826.x, _2893) + _2880.z;
        _2896 = -4.0f - _1113;
        _2898 = mad(_2875.x, _2828.x, _2885) + _2880.x;
        _2900 = mad(_2875.y, _2828.x, _2889) + _2880.y;
        _2902 = mad(_2875.z, _2828.x, _2893) + _2880.z;
        _2904 = mad(_2875.x, _2830.x, _2885) + _2880.x;
        _2906 = mad(_2875.y, _2830.x, _2889) + _2880.y;
        _2908 = mad(_2875.z, _2830.x, _2893) + _2880.z;
        _2910 = mad(_2875.x, _2832.x, _2885) + _2880.x;
        _2912 = mad(_2875.y, _2832.x, _2889) + _2880.y;
        _2914 = mad(_2875.z, _2832.x, _2893) + _2880.z;
        _3031 = (_2791 + 1.0f);
        _3032 = ((_2862 + _2792) + (((_2842 - _2862) + ((max(0.0f, (_1087 - _2832.x)) - _2842) * _2813)) * _2814));
        _3033 = ((_2793 + 1.0f) + (((_2857 + -1.0f) + (((_2850 - _2857) + ((saturate(exp2((_2832.x - _1087) * 432808.5f)) - _2850) * _2813)) * _2814)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2816, _2818, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_2887 + _2896), (_2896 - _2887)) * 0.25f), (max((_2891 + _2896), (_2896 - _2891)) * 0.25f)), (max((_2895 + _2896), (_2896 - _2895)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2819, _2818, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_2898 + _2896), (_2896 - _2898)) * 0.25f), (max((_2900 + _2896), (_2896 - _2900)) * 0.25f)), (max((_2902 + _2896), (_2896 - _2902)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2816, _2820, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_2904 + _2896), (_2896 - _2904)) * 0.25f), (max((_2906 + _2896), (_2896 - _2906)) * 0.25f)), (max((_2908 + _2896), (_2896 - _2908)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_2819, _2820, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_2910 + _2896), (_2896 - _2910)) * 0.25f), (max((_2912 + _2896), (_2896 - _2912)) * 0.25f)), (max((_2914 + _2896), (_2896 - _2914)) * 0.25f))))))));
        _3034 = ((half)((half)(_2835.z) + _2794));
        _3035 = ((half)((half)(_2835.y) + _2795));
        _3036 = ((half)((half)(_2835.x) + _2796));
      } else {
        _3031 = _2791;
        _3032 = _2792;
        _3033 = _2793;
        _3034 = _2794;
        _3035 = _2795;
        _3036 = _2796;
      }
      _3042 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(-601883249))) & 16777215)))) * _1108) - _1105) + _1085;
      _3048 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(1947444961))) & 16777215)))) * _1109) - _1107) + _1086;
      _3050 = (_3042 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _3052 = (_3048 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _3053 = frac(_3050);
      _3054 = frac(_3052);
      _3056 = (int)(floor(_3050));
      _3058 = (int)(floor(_3052));
      _3059 = (uint)((uint)(_3056)) + (uint)(1);
      _3060 = (uint)((uint)(_3058)) + (uint)(1);
      if (!(((uint)_3056 > (uint)_1137) || ((uint)_3058 > (uint)_1138))) {
        _3066 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3056, _3058, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3068 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3059, _3058, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3070 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3056, _3060, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3072 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3059, _3060, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _3075 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_3056, _3058, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _3080 = max(0.0f, (_1087 - _3066.x));
        _3082 = max(0.0f, (_1087 - _3070.x));
        _3086 = saturate(exp2((_3066.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _3090 = saturate(exp2((_3070.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _3097 = ((saturate(exp2((_3068.x - _1087) * 432808.5f)) - _3086) * _3053) + _3086;
        _3102 = ((max(0.0f, (_1087 - _3068.x)) - _3080) * _3053) + _3080;
        _3103 = (int)(_822) << 2;
        _3105 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3103) + (int)(58)))];
        _3110 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3103) + (int)(59)))];
        _3115 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3103) + (int)(60)))];
        _3120 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3103) + (int)(61)))];
        _3125 = mad(_3110.x, _3048, (_3105.x * _3042));
        _3127 = mad(_3115.x, _3066.x, _3125) + _3120.x;
        _3129 = mad(_3110.y, _3048, (_3105.y * _3042));
        _3131 = mad(_3115.y, _3066.x, _3129) + _3120.y;
        _3133 = mad(_3110.z, _3048, (_3105.z * _3042));
        _3135 = mad(_3115.z, _3066.x, _3133) + _3120.z;
        _3136 = -4.0f - _1113;
        _3138 = mad(_3115.x, _3068.x, _3125) + _3120.x;
        _3140 = mad(_3115.y, _3068.x, _3129) + _3120.y;
        _3142 = mad(_3115.z, _3068.x, _3133) + _3120.z;
        _3144 = mad(_3115.x, _3070.x, _3125) + _3120.x;
        _3146 = mad(_3115.y, _3070.x, _3129) + _3120.y;
        _3148 = mad(_3115.z, _3070.x, _3133) + _3120.z;
        _3150 = mad(_3115.x, _3072.x, _3125) + _3120.x;
        _3152 = mad(_3115.y, _3072.x, _3129) + _3120.y;
        _3154 = mad(_3115.z, _3072.x, _3133) + _3120.z;
        _3271 = (_3031 + 1.0f);
        _3272 = ((_3102 + _3032) + (((_3082 - _3102) + ((max(0.0f, (_1087 - _3072.x)) - _3082) * _3053)) * _3054));
        _3273 = ((_3033 + 1.0f) + (((_3097 + -1.0f) + (((_3090 - _3097) + ((saturate(exp2((_3072.x - _1087) * 432808.5f)) - _3090) * _3053)) * _3054)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3056, _3058, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_3127 + _3136), (_3136 - _3127)) * 0.25f), (max((_3131 + _3136), (_3136 - _3131)) * 0.25f)), (max((_3135 + _3136), (_3136 - _3135)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3059, _3058, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_3138 + _3136), (_3136 - _3138)) * 0.25f), (max((_3140 + _3136), (_3136 - _3140)) * 0.25f)), (max((_3142 + _3136), (_3136 - _3142)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3056, _3060, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_3144 + _3136), (_3136 - _3144)) * 0.25f), (max((_3146 + _3136), (_3136 - _3146)) * 0.25f)), (max((_3148 + _3136), (_3136 - _3148)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3059, _3060, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_3150 + _3136), (_3136 - _3150)) * 0.25f), (max((_3152 + _3136), (_3136 - _3152)) * 0.25f)), (max((_3154 + _3136), (_3136 - _3154)) * 0.25f))))))));
        _3274 = ((half)((half)(_3075.z) + _3034));
        _3275 = ((half)((half)(_3075.y) + _3035));
        _3276 = ((half)((half)(_3075.x) + _3036));
      } else {
        _3271 = _3031;
        _3272 = _3032;
        _3273 = _3033;
        _3274 = _3034;
        _3275 = _3035;
        _3276 = _3036;
      }
      _3282 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(1166504879))) & 16777215)))) * _1108) - _1105) + _1085;
      _3288 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(1335763649))) & 16777215)))) * _1109) - _1107) + _1086;
      _3290 = (_3282 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _3292 = (_3288 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _3293 = frac(_3290);
      _3294 = frac(_3292);
      _3296 = (int)(floor(_3290));
      _3298 = (int)(floor(_3292));
      _3299 = (uint)((uint)(_3296)) + (uint)(1);
      _3300 = (uint)((uint)(_3298)) + (uint)(1);
      if (!(((uint)_3296 > (uint)_1137) || ((uint)_3298 > (uint)_1138))) {
        _3306 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3296, _3298, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3308 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3299, _3298, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3310 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3296, _3300, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3312 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3299, _3300, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _3315 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_3296, _3298, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _3320 = max(0.0f, (_1087 - _3306.x));
        _3322 = max(0.0f, (_1087 - _3310.x));
        _3326 = saturate(exp2((_3306.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _3330 = saturate(exp2((_3310.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _3337 = ((saturate(exp2((_3308.x - _1087) * 432808.5f)) - _3326) * _3293) + _3326;
        _3342 = ((max(0.0f, (_1087 - _3308.x)) - _3320) * _3293) + _3320;
        _3343 = (int)(_822) << 2;
        _3345 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3343) + (int)(58)))];
        _3350 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3343) + (int)(59)))];
        _3355 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3343) + (int)(60)))];
        _3360 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3343) + (int)(61)))];
        _3365 = mad(_3350.x, _3288, (_3345.x * _3282));
        _3367 = mad(_3355.x, _3306.x, _3365) + _3360.x;
        _3369 = mad(_3350.y, _3288, (_3345.y * _3282));
        _3371 = mad(_3355.y, _3306.x, _3369) + _3360.y;
        _3373 = mad(_3350.z, _3288, (_3345.z * _3282));
        _3375 = mad(_3355.z, _3306.x, _3373) + _3360.z;
        _3376 = -4.0f - _1113;
        _3378 = mad(_3355.x, _3308.x, _3365) + _3360.x;
        _3380 = mad(_3355.y, _3308.x, _3369) + _3360.y;
        _3382 = mad(_3355.z, _3308.x, _3373) + _3360.z;
        _3384 = mad(_3355.x, _3310.x, _3365) + _3360.x;
        _3386 = mad(_3355.y, _3310.x, _3369) + _3360.y;
        _3388 = mad(_3355.z, _3310.x, _3373) + _3360.z;
        _3390 = mad(_3355.x, _3312.x, _3365) + _3360.x;
        _3392 = mad(_3355.y, _3312.x, _3369) + _3360.y;
        _3394 = mad(_3355.z, _3312.x, _3373) + _3360.z;
        _3511 = (_3271 + 1.0f);
        _3512 = ((_3342 + _3272) + (((_3322 - _3342) + ((max(0.0f, (_1087 - _3312.x)) - _3322) * _3293)) * _3294));
        _3513 = ((_3273 + 1.0f) + (((_3337 + -1.0f) + (((_3330 - _3337) + ((saturate(exp2((_3312.x - _1087) * 432808.5f)) - _3330) * _3293)) * _3294)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3296, _3298, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_3367 + _3376), (_3376 - _3367)) * 0.25f), (max((_3371 + _3376), (_3376 - _3371)) * 0.25f)), (max((_3375 + _3376), (_3376 - _3375)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3299, _3298, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_3378 + _3376), (_3376 - _3378)) * 0.25f), (max((_3380 + _3376), (_3376 - _3380)) * 0.25f)), (max((_3382 + _3376), (_3376 - _3382)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3296, _3300, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_3384 + _3376), (_3376 - _3384)) * 0.25f), (max((_3386 + _3376), (_3376 - _3386)) * 0.25f)), (max((_3388 + _3376), (_3376 - _3388)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3299, _3300, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_3390 + _3376), (_3376 - _3390)) * 0.25f), (max((_3392 + _3376), (_3376 - _3392)) * 0.25f)), (max((_3394 + _3376), (_3376 - _3394)) * 0.25f))))))));
        _3514 = ((half)((half)(_3315.z) + _3274));
        _3515 = ((half)((half)(_3315.y) + _3275));
        _3516 = ((half)((half)(_3315.x) + _3276));
      } else {
        _3511 = _3271;
        _3512 = _3272;
        _3513 = _3273;
        _3514 = _3274;
        _3515 = _3275;
        _3516 = _3276;
      }
      _3522 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(-1696913969))) & 16777215)))) * _1108) - _1105) + _1085;
      _3528 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(1882071713))) & 16777215)))) * _1109) - _1107) + _1086;
      _3530 = (_3522 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _3532 = (_3528 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _3533 = frac(_3530);
      _3534 = frac(_3532);
      _3536 = (int)(floor(_3530));
      _3538 = (int)(floor(_3532));
      _3539 = (uint)((uint)(_3536)) + (uint)(1);
      _3540 = (uint)((uint)(_3538)) + (uint)(1);
      if (!(((uint)_3536 > (uint)_1137) || ((uint)_3538 > (uint)_1138))) {
        _3546 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3536, _3538, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3548 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3539, _3538, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3550 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3536, _3540, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3552 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3539, _3540, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _3555 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_3536, _3538, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _3560 = max(0.0f, (_1087 - _3546.x));
        _3562 = max(0.0f, (_1087 - _3550.x));
        _3566 = saturate(exp2((_3546.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _3570 = saturate(exp2((_3550.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _3577 = ((saturate(exp2((_3548.x - _1087) * 432808.5f)) - _3566) * _3533) + _3566;
        _3582 = ((max(0.0f, (_1087 - _3548.x)) - _3560) * _3533) + _3560;
        _3583 = (int)(_822) << 2;
        _3585 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3583) + (int)(58)))];
        _3590 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3583) + (int)(59)))];
        _3595 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3583) + (int)(60)))];
        _3600 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3583) + (int)(61)))];
        _3605 = mad(_3590.x, _3528, (_3585.x * _3522));
        _3607 = mad(_3595.x, _3546.x, _3605) + _3600.x;
        _3609 = mad(_3590.y, _3528, (_3585.y * _3522));
        _3611 = mad(_3595.y, _3546.x, _3609) + _3600.y;
        _3613 = mad(_3590.z, _3528, (_3585.z * _3522));
        _3615 = mad(_3595.z, _3546.x, _3613) + _3600.z;
        _3616 = -4.0f - _1113;
        _3618 = mad(_3595.x, _3548.x, _3605) + _3600.x;
        _3620 = mad(_3595.y, _3548.x, _3609) + _3600.y;
        _3622 = mad(_3595.z, _3548.x, _3613) + _3600.z;
        _3624 = mad(_3595.x, _3550.x, _3605) + _3600.x;
        _3626 = mad(_3595.y, _3550.x, _3609) + _3600.y;
        _3628 = mad(_3595.z, _3550.x, _3613) + _3600.z;
        _3630 = mad(_3595.x, _3552.x, _3605) + _3600.x;
        _3632 = mad(_3595.y, _3552.x, _3609) + _3600.y;
        _3634 = mad(_3595.z, _3552.x, _3613) + _3600.z;
        _3751 = (_3511 + 1.0f);
        _3752 = ((_3582 + _3512) + (((_3562 - _3582) + ((max(0.0f, (_1087 - _3552.x)) - _3562) * _3533)) * _3534));
        _3753 = ((_3513 + 1.0f) + (((_3577 + -1.0f) + (((_3570 - _3577) + ((saturate(exp2((_3552.x - _1087) * 432808.5f)) - _3570) * _3533)) * _3534)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3536, _3538, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_3607 + _3616), (_3616 - _3607)) * 0.25f), (max((_3611 + _3616), (_3616 - _3611)) * 0.25f)), (max((_3615 + _3616), (_3616 - _3615)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3539, _3538, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_3618 + _3616), (_3616 - _3618)) * 0.25f), (max((_3620 + _3616), (_3616 - _3620)) * 0.25f)), (max((_3622 + _3616), (_3616 - _3622)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3536, _3540, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_3624 + _3616), (_3616 - _3624)) * 0.25f), (max((_3626 + _3616), (_3616 - _3626)) * 0.25f)), (max((_3628 + _3616), (_3616 - _3628)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3539, _3540, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_3630 + _3616), (_3616 - _3630)) * 0.25f), (max((_3632 + _3616), (_3616 - _3632)) * 0.25f)), (max((_3634 + _3616), (_3616 - _3634)) * 0.25f))))))));
        _3754 = ((half)((half)(_3555.z) + _3514));
        _3755 = ((half)((half)(_3555.y) + _3515));
        _3756 = ((half)((half)(_3555.x) + _3516));
      } else {
        _3751 = _3511;
        _3752 = _3512;
        _3753 = _3513;
        _3754 = _3514;
        _3755 = _3515;
        _3756 = _3516;
      }
      _3762 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(-1959554065))) & 16777215)))) * _1108) - _1105) + _1085;
      _3768 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(-1569511807))) & 16777215)))) * _1109) - _1107) + _1086;
      _3770 = (_3762 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _3772 = (_3768 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _3773 = frac(_3770);
      _3774 = frac(_3772);
      _3776 = (int)(floor(_3770));
      _3778 = (int)(floor(_3772));
      _3779 = (uint)((uint)(_3776)) + (uint)(1);
      _3780 = (uint)((uint)(_3778)) + (uint)(1);
      if (!(((uint)_3776 > (uint)_1137) || ((uint)_3778 > (uint)_1138))) {
        _3786 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3776, _3778, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3788 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3779, _3778, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3790 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3776, _3780, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _3792 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3779, _3780, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _3795 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_3776, _3778, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _3800 = max(0.0f, (_1087 - _3786.x));
        _3802 = max(0.0f, (_1087 - _3790.x));
        _3806 = saturate(exp2((_3786.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _3810 = saturate(exp2((_3790.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _3817 = ((saturate(exp2((_3788.x - _1087) * 432808.5f)) - _3806) * _3773) + _3806;
        _3822 = ((max(0.0f, (_1087 - _3788.x)) - _3800) * _3773) + _3800;
        _3823 = (int)(_822) << 2;
        _3825 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3823) + (int)(58)))];
        _3830 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3823) + (int)(59)))];
        _3835 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3823) + (int)(60)))];
        _3840 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3823) + (int)(61)))];
        _3845 = mad(_3830.x, _3768, (_3825.x * _3762));
        _3847 = mad(_3835.x, _3786.x, _3845) + _3840.x;
        _3849 = mad(_3830.y, _3768, (_3825.y * _3762));
        _3851 = mad(_3835.y, _3786.x, _3849) + _3840.y;
        _3853 = mad(_3830.z, _3768, (_3825.z * _3762));
        _3855 = mad(_3835.z, _3786.x, _3853) + _3840.z;
        _3856 = -4.0f - _1113;
        _3858 = mad(_3835.x, _3788.x, _3845) + _3840.x;
        _3860 = mad(_3835.y, _3788.x, _3849) + _3840.y;
        _3862 = mad(_3835.z, _3788.x, _3853) + _3840.z;
        _3864 = mad(_3835.x, _3790.x, _3845) + _3840.x;
        _3866 = mad(_3835.y, _3790.x, _3849) + _3840.y;
        _3868 = mad(_3835.z, _3790.x, _3853) + _3840.z;
        _3870 = mad(_3835.x, _3792.x, _3845) + _3840.x;
        _3872 = mad(_3835.y, _3792.x, _3849) + _3840.y;
        _3874 = mad(_3835.z, _3792.x, _3853) + _3840.z;
        _3991 = (_3751 + 1.0f);
        _3992 = ((_3822 + _3752) + (((_3802 - _3822) + ((max(0.0f, (_1087 - _3792.x)) - _3802) * _3773)) * _3774));
        _3993 = ((_3753 + 1.0f) + (((_3817 + -1.0f) + (((_3810 - _3817) + ((saturate(exp2((_3792.x - _1087) * 432808.5f)) - _3810) * _3773)) * _3774)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3776, _3778, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_3847 + _3856), (_3856 - _3847)) * 0.25f), (max((_3851 + _3856), (_3856 - _3851)) * 0.25f)), (max((_3855 + _3856), (_3856 - _3855)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3779, _3778, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_3858 + _3856), (_3856 - _3858)) * 0.25f), (max((_3860 + _3856), (_3856 - _3860)) * 0.25f)), (max((_3862 + _3856), (_3856 - _3862)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3776, _3780, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_3864 + _3856), (_3856 - _3864)) * 0.25f), (max((_3866 + _3856), (_3856 - _3866)) * 0.25f)), (max((_3868 + _3856), (_3856 - _3868)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_3779, _3780, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_3870 + _3856), (_3856 - _3870)) * 0.25f), (max((_3872 + _3856), (_3856 - _3872)) * 0.25f)), (max((_3874 + _3856), (_3856 - _3874)) * 0.25f))))))));
        _3994 = ((half)((half)(_3795.z) + _3754));
        _3995 = ((half)((half)(_3795.y) + _3755));
        _3996 = ((half)((half)(_3795.x) + _3756));
      } else {
        _3991 = _3751;
        _3992 = _3752;
        _3993 = _3753;
        _3994 = _3754;
        _3995 = _3755;
        _3996 = _3756;
      }
      _4002 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(1318665743))) & 16777215)))) * _1108) - _1105) + _1085;
      _4008 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(1898753633))) & 16777215)))) * _1109) - _1107) + _1086;
      _4010 = (_4002 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _4012 = (_4008 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _4013 = frac(_4010);
      _4014 = frac(_4012);
      _4016 = (int)(floor(_4010));
      _4018 = (int)(floor(_4012));
      _4019 = (uint)((uint)(_4016)) + (uint)(1);
      _4020 = (uint)((uint)(_4018)) + (uint)(1);
      if (!(((uint)_4016 > (uint)_1137) || ((uint)_4018 > (uint)_1138))) {
        _4026 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4016, _4018, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4028 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4019, _4018, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4030 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4016, _4020, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4032 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4019, _4020, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _4035 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_4016, _4018, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _4040 = max(0.0f, (_1087 - _4026.x));
        _4042 = max(0.0f, (_1087 - _4030.x));
        _4046 = saturate(exp2((_4026.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _4050 = saturate(exp2((_4030.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _4057 = ((saturate(exp2((_4028.x - _1087) * 432808.5f)) - _4046) * _4013) + _4046;
        _4062 = ((max(0.0f, (_1087 - _4028.x)) - _4040) * _4013) + _4040;
        _4063 = (int)(_822) << 2;
        _4065 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4063) + (int)(58)))];
        _4070 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4063) + (int)(59)))];
        _4075 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4063) + (int)(60)))];
        _4080 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4063) + (int)(61)))];
        _4085 = mad(_4070.x, _4008, (_4065.x * _4002));
        _4087 = mad(_4075.x, _4026.x, _4085) + _4080.x;
        _4089 = mad(_4070.y, _4008, (_4065.y * _4002));
        _4091 = mad(_4075.y, _4026.x, _4089) + _4080.y;
        _4093 = mad(_4070.z, _4008, (_4065.z * _4002));
        _4095 = mad(_4075.z, _4026.x, _4093) + _4080.z;
        _4096 = -4.0f - _1113;
        _4098 = mad(_4075.x, _4028.x, _4085) + _4080.x;
        _4100 = mad(_4075.y, _4028.x, _4089) + _4080.y;
        _4102 = mad(_4075.z, _4028.x, _4093) + _4080.z;
        _4104 = mad(_4075.x, _4030.x, _4085) + _4080.x;
        _4106 = mad(_4075.y, _4030.x, _4089) + _4080.y;
        _4108 = mad(_4075.z, _4030.x, _4093) + _4080.z;
        _4110 = mad(_4075.x, _4032.x, _4085) + _4080.x;
        _4112 = mad(_4075.y, _4032.x, _4089) + _4080.y;
        _4114 = mad(_4075.z, _4032.x, _4093) + _4080.z;
        _4231 = (_3991 + 1.0f);
        _4232 = ((_4062 + _3992) + (((_4042 - _4062) + ((max(0.0f, (_1087 - _4032.x)) - _4042) * _4013)) * _4014));
        _4233 = ((_3993 + 1.0f) + (((_4057 + -1.0f) + (((_4050 - _4057) + ((saturate(exp2((_4032.x - _1087) * 432808.5f)) - _4050) * _4013)) * _4014)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4016, _4018, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_4087 + _4096), (_4096 - _4087)) * 0.25f), (max((_4091 + _4096), (_4096 - _4091)) * 0.25f)), (max((_4095 + _4096), (_4096 - _4095)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4019, _4018, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_4098 + _4096), (_4096 - _4098)) * 0.25f), (max((_4100 + _4096), (_4096 - _4100)) * 0.25f)), (max((_4102 + _4096), (_4096 - _4102)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4016, _4020, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_4104 + _4096), (_4096 - _4104)) * 0.25f), (max((_4106 + _4096), (_4096 - _4106)) * 0.25f)), (max((_4108 + _4096), (_4096 - _4108)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4019, _4020, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_4110 + _4096), (_4096 - _4110)) * 0.25f), (max((_4112 + _4096), (_4096 - _4112)) * 0.25f)), (max((_4114 + _4096), (_4096 - _4114)) * 0.25f))))))));
        _4234 = ((half)((half)(_4035.z) + _3994));
        _4235 = ((half)((half)(_4035.y) + _3995));
        _4236 = ((half)((half)(_4035.x) + _3996));
      } else {
        _4231 = _3991;
        _4232 = _3992;
        _4233 = _3993;
        _4234 = _3994;
        _4235 = _3995;
        _4236 = _3996;
      }
      _4242 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(134521903))) & 16777215)))) * _1108) - _1105) + _1085;
      _4248 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(-483771839))) & 16777215)))) * _1109) - _1107) + _1086;
      _4250 = (_4242 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _4252 = (_4248 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _4253 = frac(_4250);
      _4254 = frac(_4252);
      _4256 = (int)(floor(_4250));
      _4258 = (int)(floor(_4252));
      _4259 = (uint)((uint)(_4256)) + (uint)(1);
      _4260 = (uint)((uint)(_4258)) + (uint)(1);
      if (!(((uint)_4256 > (uint)_1137) || ((uint)_4258 > (uint)_1138))) {
        _4266 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4256, _4258, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4268 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4259, _4258, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4270 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4256, _4260, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4272 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4259, _4260, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _4275 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_4256, _4258, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _4280 = max(0.0f, (_1087 - _4266.x));
        _4282 = max(0.0f, (_1087 - _4270.x));
        _4286 = saturate(exp2((_4266.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _4290 = saturate(exp2((_4270.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _4297 = ((saturate(exp2((_4268.x - _1087) * 432808.5f)) - _4286) * _4253) + _4286;
        _4302 = ((max(0.0f, (_1087 - _4268.x)) - _4280) * _4253) + _4280;
        _4303 = (int)(_822) << 2;
        _4305 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4303) + (int)(58)))];
        _4310 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4303) + (int)(59)))];
        _4315 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4303) + (int)(60)))];
        _4320 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4303) + (int)(61)))];
        _4325 = mad(_4310.x, _4248, (_4305.x * _4242));
        _4327 = mad(_4315.x, _4266.x, _4325) + _4320.x;
        _4329 = mad(_4310.y, _4248, (_4305.y * _4242));
        _4331 = mad(_4315.y, _4266.x, _4329) + _4320.y;
        _4333 = mad(_4310.z, _4248, (_4305.z * _4242));
        _4335 = mad(_4315.z, _4266.x, _4333) + _4320.z;
        _4336 = -4.0f - _1113;
        _4338 = mad(_4315.x, _4268.x, _4325) + _4320.x;
        _4340 = mad(_4315.y, _4268.x, _4329) + _4320.y;
        _4342 = mad(_4315.z, _4268.x, _4333) + _4320.z;
        _4344 = mad(_4315.x, _4270.x, _4325) + _4320.x;
        _4346 = mad(_4315.y, _4270.x, _4329) + _4320.y;
        _4348 = mad(_4315.z, _4270.x, _4333) + _4320.z;
        _4350 = mad(_4315.x, _4272.x, _4325) + _4320.x;
        _4352 = mad(_4315.y, _4272.x, _4329) + _4320.y;
        _4354 = mad(_4315.z, _4272.x, _4333) + _4320.z;
        _4471 = (_4231 + 1.0f);
        _4472 = ((_4302 + _4232) + (((_4282 - _4302) + ((max(0.0f, (_1087 - _4272.x)) - _4282) * _4253)) * _4254));
        _4473 = ((_4233 + 1.0f) + (((_4297 + -1.0f) + (((_4290 - _4297) + ((saturate(exp2((_4272.x - _1087) * 432808.5f)) - _4290) * _4253)) * _4254)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4256, _4258, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_4327 + _4336), (_4336 - _4327)) * 0.25f), (max((_4331 + _4336), (_4336 - _4331)) * 0.25f)), (max((_4335 + _4336), (_4336 - _4335)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4259, _4258, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_4338 + _4336), (_4336 - _4338)) * 0.25f), (max((_4340 + _4336), (_4336 - _4340)) * 0.25f)), (max((_4342 + _4336), (_4336 - _4342)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4256, _4260, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_4344 + _4336), (_4336 - _4344)) * 0.25f), (max((_4346 + _4336), (_4336 - _4346)) * 0.25f)), (max((_4348 + _4336), (_4336 - _4348)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4259, _4260, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_4350 + _4336), (_4336 - _4350)) * 0.25f), (max((_4352 + _4336), (_4336 - _4352)) * 0.25f)), (max((_4354 + _4336), (_4336 - _4354)) * 0.25f))))))));
        _4474 = ((half)((half)(_4275.z) + _4234));
        _4475 = ((half)((half)(_4275.y) + _4235));
        _4476 = ((half)((half)(_4275.x) + _4236));
      } else {
        _4471 = _4231;
        _4472 = _4232;
        _4473 = _4233;
        _4474 = _4234;
        _4475 = _4235;
        _4476 = _4236;
      }
      _4482 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(-413252017))) & 16777215)))) * _1108) - _1105) + _1085;
      _4488 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(2034977313))) & 16777215)))) * _1109) - _1107) + _1086;
      _4490 = (_4482 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _4492 = (_4488 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _4493 = frac(_4490);
      _4494 = frac(_4492);
      _4496 = (int)(floor(_4490));
      _4498 = (int)(floor(_4492));
      _4499 = (uint)((uint)(_4496)) + (uint)(1);
      _4500 = (uint)((uint)(_4498)) + (uint)(1);
      if (!(((uint)_4496 > (uint)_1137) || ((uint)_4498 > (uint)_1138))) {
        _4506 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4496, _4498, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4508 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4499, _4498, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4510 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4496, _4500, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4512 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4499, _4500, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _4515 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_4496, _4498, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _4520 = max(0.0f, (_1087 - _4506.x));
        _4522 = max(0.0f, (_1087 - _4510.x));
        _4526 = saturate(exp2((_4506.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _4530 = saturate(exp2((_4510.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _4537 = ((saturate(exp2((_4508.x - _1087) * 432808.5f)) - _4526) * _4493) + _4526;
        _4542 = ((max(0.0f, (_1087 - _4508.x)) - _4520) * _4493) + _4520;
        _4543 = (int)(_822) << 2;
        _4545 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4543) + (int)(58)))];
        _4550 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4543) + (int)(59)))];
        _4555 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4543) + (int)(60)))];
        _4560 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4543) + (int)(61)))];
        _4565 = mad(_4550.x, _4488, (_4545.x * _4482));
        _4567 = mad(_4555.x, _4506.x, _4565) + _4560.x;
        _4569 = mad(_4550.y, _4488, (_4545.y * _4482));
        _4571 = mad(_4555.y, _4506.x, _4569) + _4560.y;
        _4573 = mad(_4550.z, _4488, (_4545.z * _4482));
        _4575 = mad(_4555.z, _4506.x, _4573) + _4560.z;
        _4576 = -4.0f - _1113;
        _4578 = mad(_4555.x, _4508.x, _4565) + _4560.x;
        _4580 = mad(_4555.y, _4508.x, _4569) + _4560.y;
        _4582 = mad(_4555.z, _4508.x, _4573) + _4560.z;
        _4584 = mad(_4555.x, _4510.x, _4565) + _4560.x;
        _4586 = mad(_4555.y, _4510.x, _4569) + _4560.y;
        _4588 = mad(_4555.z, _4510.x, _4573) + _4560.z;
        _4590 = mad(_4555.x, _4512.x, _4565) + _4560.x;
        _4592 = mad(_4555.y, _4512.x, _4569) + _4560.y;
        _4594 = mad(_4555.z, _4512.x, _4573) + _4560.z;
        _4711 = (_4471 + 1.0f);
        _4712 = ((_4542 + _4472) + (((_4522 - _4542) + ((max(0.0f, (_1087 - _4512.x)) - _4522) * _4493)) * _4494));
        _4713 = ((_4473 + 1.0f) + (((_4537 + -1.0f) + (((_4530 - _4537) + ((saturate(exp2((_4512.x - _1087) * 432808.5f)) - _4530) * _4493)) * _4494)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4496, _4498, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_4567 + _4576), (_4576 - _4567)) * 0.25f), (max((_4571 + _4576), (_4576 - _4571)) * 0.25f)), (max((_4575 + _4576), (_4576 - _4575)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4499, _4498, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_4578 + _4576), (_4576 - _4578)) * 0.25f), (max((_4580 + _4576), (_4576 - _4580)) * 0.25f)), (max((_4582 + _4576), (_4576 - _4582)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4496, _4500, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_4584 + _4576), (_4576 - _4584)) * 0.25f), (max((_4586 + _4576), (_4576 - _4586)) * 0.25f)), (max((_4588 + _4576), (_4576 - _4588)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4499, _4500, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_4590 + _4576), (_4576 - _4590)) * 0.25f), (max((_4592 + _4576), (_4576 - _4592)) * 0.25f)), (max((_4594 + _4576), (_4576 - _4594)) * 0.25f))))))));
        _4714 = ((half)((half)(_4515.z) + _4474));
        _4715 = ((half)((half)(_4515.y) + _4475));
        _4716 = ((half)((half)(_4515.x) + _4476));
      } else {
        _4711 = _4471;
        _4712 = _4472;
        _4713 = _4473;
        _4714 = _4474;
        _4715 = _4475;
        _4716 = _4476;
      }
      _4722 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(192849007))) & 16777215)))) * _1108) - _1105) + _1085;
      _4728 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1100)) * (uint)(1820286465))) & 16777215)))) * _1109) - _1107) + _1086;
      _4730 = (_4722 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f;
      _4732 = (_4728 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f;
      _4733 = frac(_4730);
      _4734 = frac(_4732);
      _4736 = (int)(floor(_4730));
      _4738 = (int)(floor(_4732));
      _4739 = (uint)((uint)(_4736)) + (uint)(1);
      _4740 = (uint)((uint)(_4738)) + (uint)(1);
      if (!(((uint)_4736 > (uint)_1137) || ((uint)_4738 > (uint)_1138))) {
        _4746 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4736, _4738, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4748 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4739, _4738, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4750 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4736, _4740, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        _4752 = __3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_4739, _4740, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowDepthArray_load]
        half4 _4755 = __3__36__0__0__g_dynamicShadowColorArray.Load(int4(_4736, _4738, _822, 0));  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load]
        _4760 = max(0.0f, (_1087 - _4746.x));
        _4762 = max(0.0f, (_1087 - _4750.x));
        _4766 = saturate(exp2((_4746.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _4770 = saturate(exp2((_4750.x - _1087) * 432808.5f));  // [sem: expr_sat]
        _4777 = ((saturate(exp2((_4748.x - _1087) * 432808.5f)) - _4766) * _4733) + _4766;
        _4782 = ((max(0.0f, (_1087 - _4748.x)) - _4760) * _4733) + _4760;
        _4783 = (int)(_822) << 2;
        _4785 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4783) + (int)(58)))];
        _4790 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4783) + (int)(59)))];
        _4795 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4783) + (int)(60)))];
        _4800 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_4783) + (int)(61)))];
        _4805 = mad(_4790.x, _4728, (_4785.x * _4722));
        _4807 = mad(_4795.x, _4746.x, _4805) + _4800.x;
        _4809 = mad(_4790.y, _4728, (_4785.y * _4722));
        _4811 = mad(_4795.y, _4746.x, _4809) + _4800.y;
        _4813 = mad(_4790.z, _4728, (_4785.z * _4722));
        _4815 = mad(_4795.z, _4746.x, _4813) + _4800.z;
        _4816 = -4.0f - _1113;
        _4818 = mad(_4795.x, _4748.x, _4805) + _4800.x;
        _4820 = mad(_4795.y, _4748.x, _4809) + _4800.y;
        _4822 = mad(_4795.z, _4748.x, _4813) + _4800.z;
        _4824 = mad(_4795.x, _4750.x, _4805) + _4800.x;
        _4826 = mad(_4795.y, _4750.x, _4809) + _4800.y;
        _4828 = mad(_4795.z, _4750.x, _4813) + _4800.z;
        _4830 = mad(_4795.x, _4752.x, _4805) + _4800.x;
        _4832 = mad(_4795.y, _4752.x, _4809) + _4800.y;
        _4834 = mad(_4795.z, _4752.x, _4813) + _4800.z;
        _4951 = (half)(_4755.x);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4952 = (half)(_4755.y);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4953 = (half)(_4755.z);  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4954 = (_4711 + 1.0f);
        _4955 = ((_4782 + _4712) + (((_4762 - _4782) + ((max(0.0f, (_1087 - _4752.x)) - _4762) * _4733)) * _4734));
        _4956 = ((_4713 + 1.0f) + (((_4777 + -1.0f) + (((_4770 - _4777) + ((saturate(exp2((_4752.x - _1087) * 432808.5f)) - _4770) * _4733)) * _4734)) * max(max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4736, _4738, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_4807 + _4816), (_4816 - _4807)) * 0.25f), (max((_4811 + _4816), (_4816 - _4811)) * 0.25f)), (max((_4815 + _4816), (_4816 - _4815)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4739, _4738, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_4818 + _4816), (_4816 - _4818)) * 0.25f), (max((_4820 + _4816), (_4816 - _4820)) * 0.25f)), (max((_4822 + _4816), (_4816 - _4822)) * 0.25f))))), max(max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4736, _4740, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_4824 + _4816), (_4816 - _4824)) * 0.25f), (max((_4826 + _4816), (_4816 - _4826)) * 0.25f)), (max((_4828 + _4816), (_4816 - _4828)) * 0.25f)))), max(((float)((bool)(((((uint2)(__3__36__0__0__g_dynamicShadowStencilArray.Load(int4(_4739, _4740, _822, 0)))).x) & 1) != 0))), saturate(max(max((max((_4830 + _4816), (_4816 - _4830)) * 0.25f), (max((_4832 + _4816), (_4816 - _4832)) * 0.25f)), (max((_4834 + _4816), (_4816 - _4834)) * 0.25f))))))));
        _4957 = ((half)((half)(_4755.z) + _4714));
        _4958 = ((half)((half)(_4755.y) + _4715));
        _4959 = ((half)((half)(_4755.x) + _4716));
      } else {
        _4951 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4952 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4953 = 1.0h;  // [sem: _3__36__0__0__g_dynamicShadowColorArray_load_derived]
        _4954 = _4711;
        _4955 = _4712;
        _4956 = _4713;
        _4957 = _4714;
        _4958 = _4715;
        _4959 = _4716;
      }
      _4961 = 1.0f / max(_4954, 1.0f);
      _4963 = max((_4954 + 1.0f), 1.0f);
      _4967 = half(float(_4959 + _4951) / _4963);
      _4971 = half(float(_4958 + _4952) / _4963);
      _4975 = half(float(_4957 + _4953) / _4963);
      if (_822 == 1) {
        _4978 = float(_4967);
        _4979 = float(_4971);
        _4980 = float(_4975);
        _4981 = -0.0f - _821;
        _4995 = (half)(half((_4980 + _821) + (_4980 * _4981)));
        _4996 = (half)(half((_4979 + _821) + (_4979 * _4981)));
        _4997 = (half)(half((_4978 + _821) + (_4978 * _4981)));
      } else {
        _4995 = _4975;
        _4996 = _4971;
        _4997 = _4967;
      }
      _5000 = __3__36__0__0__g_raytracedShadow.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_69, _72), 0.0f);  // [sem: _3__36__0__0__g_raytracedShadow_sampleLod]
      _5003 = _119 * 0.05f;
      _5004 = 1.0f / _bufferSizeAndInvSize.x;
      _5006 = 1.0f / _bufferSizeAndInvSize.y;
      _5008 = 0;
      _5009 = 1.0f;
      _5010 = _5000.x;
      while(true) {
        _5011 = (uint)((uint)(_5008)) << 1;
        _5015 = (float)((int)(_global_0[((int)min((uint)(_5011), (uint)(15)))]));
        _5020 = (float)((int)(_global_0[((int)min((uint)(((int)(_5011) | (int)(1))), (uint)(15)))]));
        _5021 = _5015 + _64;
        _5022 = _5020 + _65;
        _5025 = ((_5004 * 2.0f) * _5021) + -1.0f;
        _5028 = 1.0f - ((_5006 * 2.0f) * _5022);
        _5037 = max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthStencil.Load(int3(((int)(_5021)), ((int)(_5022)), 0)))).x) & 16777215)))) * 5.960465e-08f));
        _5049 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _5037, mad((_invViewProjRelative[3].y), _5028, ((_invViewProjRelative[3].x) * _5025)));
        _5059 = ((mad((_invViewProjRelative[0].z), _5037, mad((_invViewProjRelative[0].y), _5028, ((_invViewProjRelative[0].x) * _5025))) + (_invViewProjRelative[0].w)) / _5049) - _140;
        _5069 = ((mad((_invViewProjRelative[1].z), _5037, mad((_invViewProjRelative[1].y), _5028, ((_invViewProjRelative[1].x) * _5025))) + (_invViewProjRelative[1].w)) / _5049) - _149;
        _5079 = ((mad((_invViewProjRelative[2].z), _5037, mad((_invViewProjRelative[2].y), _5028, ((_invViewProjRelative[2].x) * _5025))) + (_invViewProjRelative[2].w)) / _5049) - _158;
        _5085 = sqrt(((_5069 * _5069) + (_5059 * _5059)) + (_5079 * _5079));
        _5090 = abs((_nearFarProj.x / _5037) - _119);
        _5091 = _5090 * _5090;
        if (!(_5091 > (_5003 * _5003))) {
          _5107 = (max(0.02f, _5000.y) * exp2((-1.442695f / ((_119 * 0.02f) + 0.25f)) * ((_5091 * 20.0f) + ((_5085 * _5085) * 0.02f))));
        } else {
          _5107 = 0.0f;
        }
        _5117 = ((((float2)(__3__36__0__0__g_raytracedShadow.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(((_5015 * _5004) + _69), ((_5020 * _5006) + _72)), 0.0f))).x) * _5107) + _5010;
        _5118 = _5107 + _5009;
        _5119 = (int)(_5008) + (int)(1);
        if (!(_5119 == 8)) {
          _5008 = _5119;
          _5009 = _5118;
          _5010 = _5117;
          continue;
        }
        _5130 = _4995;
        _5131 = _4996;
        _5132 = _4997;
        _5133 = (_4961 * _4955);  // [sem: expr_sat]
        _5134 = min(_554, min((_4961 * _4956), ((1.0f / max(1e-06f, _5118)) * _5117)));  // [sem: expr_sat]
        break;
      }
    }
    _5135 = (_823 != 0);
    _5137 = min(_554, select(_5135, _5134, 1.0f));
    _5141 = select((_820 != 0), select(_5135, (_5133 * 400.0f), 4e+06f), 1.0f);
    _5146 = (_5137 - (_shadowAOParams.x * _5137)) + _shadowAOParams.x;
    [branch]
    if (_5146 > 0.0f) {
      _5149 = _80 & 126;
      _5150 = (_5149 == 64);
      _5152 = _5150 || (_84 == 66);
      _5153 = select(_5152, 2.0f, 4.0f);
      if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
        _5170 = _sunDirection.z;
        _5171 = _sunDirection.y;
        _5172 = _sunDirection.x;
      } else {
        _5170 = _moonDirection.z;
        _5171 = _moonDirection.y;
        _5172 = _moonDirection.x;
      }
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: Seeds the contact-shadow ray direction carriers with the dominant light direction
      //              the native path just selected. Runs on the main path of the native
      //              shadow-evaluation gate, so the carriers hold the native values on every path that
      //              can reach the micro detail helper call (which is gated on the same condition).
      //              This block only copies values and changes no native result.
      _rndxMicroDirX = _5172;
      _rndxMicroDirY = _5171;
      _rndxMicroDirZ = _5170;
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      _5173 = _56 & 3;
      _5174 = _63 & 3;
      _5186 = (uint)((uint)((uint)(_frameNumber.x)) * (uint)(1551)) + (uint)((uint)((int)(((int)((int)((int)(_5174) << 1) | (int)(_5174)) << 1) & 10) | (int)(((int)((int)(_5173) << 1) | (int)(_5173)) & 5)));
      _5191 = (int)(((int)((uint)((uint)(_5186)) << 2)) & -858993460) | (int)(((uint)((uint)(_5186)) >> 2) & 858993459);
      _5196 = (int)(((int)((uint)((uint)(_5191)) << 1)) & 10) | (int)(((uint)((uint)(_5191)) >> 1) & 21);
      _5197 = (float)((uint)((uint)(_frameNumber.x)));
      _5203 = (frac(((_5197 * 92.0f) + _64) * 0.0078125f) * 128.0f) + -64.34062f;
      _5209 = (frac(((_5197 * 71.0f) + _65) * 0.0078125f) * 128.0f) + -72.46562f;
      _5214 = frac(dot(float3((_5203 * _5203), (_5209 * _5209), (_5209 * _5203)), float3(20.390625f, 60.703125f, 2.4281209f)));
      _5224 = frac((((float)((uint)((uint)(_5196)))) * 0.03125f) + (((float)((uint)((uint)(((int)((uint)(_5214 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f)) * 6.2831855f;
      _5234 = (((1.0f - _shadowAOParams.z) * 2.3283064e-10f) * ((float)((uint)((uint)(reversebits(_5196) ^ ((int)((uint)(_5214 * 2.8747837e+08f)))))))) + _shadowAOParams.z;
      _5237 = sqrt(1.0f - (_5234 * _5234));
      _5239 = cos(_5224) * _5237;
      _5241 = sin(_5224) * _5237;
      _5243 = select((_5170 >= 0.0f), 1.0f, -1.0f);
      _5246 = -0.0f - (1.0f / (_5243 + _5170));
      _5247 = _5171 * _5246;
      _5248 = _5247 * _5172;
      _5249 = _5243 * _5172;
      _5255 = mad(_5234, _5172, mad(_5241, _5248, ((((_5249 * _5172) * _5246) + 1.0f) * _5239)));
      _5261 = mad(_5234, _5171, mad(_5241, ((_5247 * _5171) + _5243), ((_5239 * _5243) * _5248)));
      _5266 = mad(_5234, _5170, mad(_5241, (-0.0f - _5171), (-0.0f - (_5249 * _5239))));
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: The vanilla contact-shadow ray direction is the sun/moon direction rotated onto a
      //              randomly sampled cone that changes every frame, which the shadow denoiser is expected
      //              to resolve. Contact Micro Shadows adds extra sub-pixel occlusion on top of this march,
      //              and the per-frame cone wobble makes that added detail crawl and shimmer between frames.
      //              While any Contact Micro Shadows quality level is active this substitutes the unrotated
      //              light direction so the added detail is temporally stable; with the feature Off the
      //              vanilla jittered direction is left untouched.
      if (CONTACT_SHADOW_STABLE_DIRECTION == 1.f) {
        _5255 = _5172;
        _5261 = _5171;
        _5266 = _5170;
      }
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      _5267 = select(_5150, 10, 8);
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: The vanilla screen-space contact-shadow ray takes only 8 or 10 march steps depending
      //              on the material class, which undersamples thin and small occluders and leaves gaps in
      //              the contact darkening. While a Contact Micro Shadows quality level is active this
      //              raises the step count toward the quality-dependent ray-traced-lane target; at the Off
      //              value the tuning weight is 0 and the vanilla step count is used unchanged.
      if (CONTACT_SHADOW_DETAIL_PATH == 1.f) {
        _5267 = (int)(lerp(float(_5267), CONTACT_SHADOW_RT_MARCH_SAMPLES, CONTACT_SHADOW_RT_TUNING) + 0.5f);
      }
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      if (!_168) {
        _5273 = min(0.5f, ((_119 * 0.0025f) + 0.25f));
      } else {
        _5273 = 1.0f;
      }
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: Sets how far along the light direction the contact shadow is allowed to march.
      //              Vanilla caps this path at a 0.01 world-space reach, which is too short to pick up
      //              contact occlusion from anything larger than immediate sub-pixel detail. The lerp
      //              extends the reach toward the quality-dependent ray-traced-lane target; at the Off
      //              value the tuning weight is 0 and the lerp returns the vanilla 0.01 exactly.
      _5280 = ((abs(_5171) * (select(_5152, 12.0f, 2.0f) - _5153)) + _5153) * select(_168, lerp(0.009999999776482582f, CONTACT_SHADOW_RT_REACH_TARGET, CONTACT_SHADOW_RT_TUNING), 0.10000000149011612f);
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      if (!_168) {
        _5288 = max((_119 * select(((uint)((int)(_84) + (int)(-11)) < (uint)9), 0.008f, 0.03f)), _5280);
      } else {
        _5288 = _5280;
      }
      // [sem: expr_sat]
      _5301 = saturate(((_119 * 0.01f) * (1.0f - saturate(dot(float3(_107, _108, _109), float3((-0.0f - (_140 * _160)), (-0.0f - (_149 * _160)), (-0.0f - (_158 * _160))))))) + 0.01f);
      _5304 = (_terrainNormalParams.z > 0.0f);
      if (_5304) {
        _5308 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 255)));
        _5469 = frac(frac(dot(float2(((_5308 * 32.665f) + _64), ((_5308 * 11.815f) + _65)), float2(0.06711056f, 0.00583715f))) * 52.982918f);
      } else {
        _5330 = (uint)((uint)((_bufferSizeAndInvSize.x * _65) + _64)) + (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524))));
        _5338 = (uint)((uint)((((int)((uint)((uint)((uint)(_5330)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_5330)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_5330)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _5346 = (uint)((uint)((((int)((uint)((uint)((uint)(_5338)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_5338)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_5338)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_5330));
        _5354 = (uint)((uint)((((int)((uint)((uint)((uint)(_5346)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_5346)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_5346)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_5338));
        _5362 = (uint)((uint)((((int)((uint)((uint)((uint)(_5354)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_5354)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_5354)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_5346));
        _5370 = (uint)((uint)((((int)((uint)((uint)((uint)(_5362)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_5362)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_5362)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_5354));
        _5378 = (uint)((uint)((((int)((uint)((uint)((uint)(_5370)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_5370)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_5370)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_5362));
        _5386 = (uint)((uint)((((int)((uint)((uint)((uint)(_5378)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_5378)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_5378)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_5370));
        _5394 = (uint)((uint)((((int)((uint)((uint)((uint)(_5386)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_5386)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_5386)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_5378));
        _5402 = (uint)((uint)((((int)((uint)((uint)((uint)(_5394)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_5394)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_5394)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_5386));
        _5410 = (uint)((uint)((((int)((uint)((uint)((uint)(_5402)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_5402)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_5402)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_5394));
        _5418 = (uint)((uint)((((int)((uint)((uint)((uint)(_5410)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_5410)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_5410)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_5402));
        _5426 = (uint)((uint)((((int)((uint)((uint)((uint)(_5418)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_5418)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_5418)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_5410));
        _5434 = (uint)((uint)((((int)((uint)((uint)((uint)(_5426)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_5426)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_5426)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_5418));
        _5442 = (uint)((uint)((((int)((uint)((uint)((uint)(_5434)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_5434)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_5434)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_5426));
        _5450 = (uint)((uint)((((int)((uint)((uint)((uint)(_5442)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_5442)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_5442)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_5434));
        if ((_5442 & 16777215) == 0) {
          _5463 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_5450)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_5450)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_5450)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_5442))));
        } else {
          _5463 = _5442;
        }
        _5469 = (((float)((uint)((uint)(((int)((uint)((uint)(_5463)) * (uint)(48271))) & 16777215)))) * 5.9604645e-08f);
      }
      if (_84 == 15) {
        // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
        // Description: The contact ray's first sample is offset by a per-pixel random value scaled by this
        //              factor, so neighbouring pixels start at different distances and the march dithers
        //              instead of banding. On this depth-faded material branch vanilla scales the random by
        //              up to 10 units, which pushes the first sample past small nearby occluders and loses
        //              their contact darkening entirely. The lerp pulls the start scale toward the
        //              quality-dependent ray-traced-lane target; at the Off value the tuning weight is 0 and
        //              the vanilla scale is returned exactly.
        _5478 = ((lerp((10.0f - (saturate(_119 * 0.0010000000474974513f) * 9.0f)), CONTACT_SHADOW_RT_START_TARGET, CONTACT_SHADOW_RT_TUNING)) * _5469);
        // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      } else {
        _5478 = _5469;
      }
      if (!_5304) {
        _5482 = saturate(_119 * 0.0625f) * 0.05f;
        _5487 = (_5482 * _109);
        _5488 = (_5482 * _108);
        _5489 = (_5482 * _107);
      } else {
        _5487 = 0.0f;
        _5488 = 0.0f;
        _5489 = 0.0f;
      }
      _5490 = _5489 + _140;
      _5491 = _5488 + _149;
      _5492 = _5487 + _158;
      _5504 = (_viewRelative[2].w) + mad((_viewRelative[2].z), _5492, mad((_viewRelative[2].y), _5491, ((_viewRelative[2].x) * _5490)));
      _5507 = mad((_viewRelative[2].z), _5266, mad((_viewRelative[2].y), _5261, ((_viewRelative[2].x) * _5255)));
      _5516 = select((((_5507 * _5288) + _5504) < _nearFarProj.x), ((_nearFarProj.x - _5504) / _5507), _5288);
      _5528 = (_viewProjRelative[2].w) + mad((_viewProjRelative[2].z), _5492, mad((_viewProjRelative[2].y), _5491, ((_viewProjRelative[2].x) * _5490)));
      _5536 = mad((_viewProjRelative[3].z), _5492, mad((_viewProjRelative[3].y), _5491, ((_viewProjRelative[3].x) * _5490))) + (_viewProjRelative[3].w);
      _5538 = (_5516 * _5255) + _5490;
      _5540 = (_5516 * _5261) + _5491;
      _5542 = (_5516 * _5266) + _5492;
      _5546 = mad((_viewProjRelative[3].z), _5542, mad((_viewProjRelative[3].y), _5540, (_5538 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _5555 = (mad((_viewProjRelative[0].z), _5492, mad((_viewProjRelative[0].y), _5491, ((_viewProjRelative[0].x) * _5490))) + (_viewProjRelative[0].w)) / _5536;
      _5564 = (mad((_viewProjRelative[1].z), _5492, mad((_viewProjRelative[1].y), _5491, ((_viewProjRelative[1].x) * _5490))) + (_viewProjRelative[1].w)) / _5536;
      _5565 = _5528 / _5536;
      _5571 = ((mad((_viewProjRelative[0].z), _5542, mad((_viewProjRelative[0].y), _5540, (_5538 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _5546) - _5555;
      _5577 = ((mad((_viewProjRelative[1].z), _5542, mad((_viewProjRelative[1].y), _5540, (_5538 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _5546) - _5564;
      _5579 = 1.0f / ((float)((uint)((uint)(_5267))));
      _5593 = max(_5579, (1.0f / min(1.0f, (max(((_bufferSizeAndInvSize.x * 0.5f) * abs(_5571)), ((_bufferSizeAndInvSize.y * 0.5f) * abs(_5577))) * _5579))));
      _5600 = (((mad((_viewProjRelative[2].z), _5542, mad((_viewProjRelative[2].y), _5540, (_5538 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w)) / _5546) - _5565) * _5593;
      _5611 = max(abs(_5600), (_5565 - ((mad((_proj[2].z), _119, 0.0f) + _5528) / (mad((_proj[3].z), _119, 0.0f) + _5536))));
      _5612 = max(0.0625f, _5579);
      _5613 = _5593 * _5579;
      _5615 = (_5571 * 0.5f) * _5613;
      _5617 = (_5577 * -0.5f) * _5613;
      _5618 = _5600 * _5579;
      _5625 = max(_5478, (1.0f / max((abs(_5615) * _bufferSizeAndInvSize.x), (abs(_5617) * _bufferSizeAndInvSize.y))));
      _5626 = 0.5f / _bufferSizeAndInvSize.x;
      _5630 = ((_5555 * 0.5f) + 0.5f) + (_5625 * _5615);
      _5634 = (_5625 * _5617) + (0.5f - (_5564 * 0.5f));
      _5636 = (_5625 * _5618) + _5565;
      if (_119 < 8.0f) {
        _5639 = (_5611 * _5273) * _5612;
        _5641 = 0.0f;
        _5642 = 0.0f;
        _5643 = 0;
        _5644 = _5301;
        _5645 = _5478;
        _5646 = _5636;
        _5647 = _5634;
        _5648 = _5630;
        _5649 = 0;
        while(true) {
          // [sem: _3__36__0__0__g_depthStencil_load]
          // RenoDX: >>> [Patch: ShadowEdgeNoiseFix] [Version: 1.16.00]
          // Description: Replaces the vanilla X clamp at this contact-shadow depth load. Vanilla clamps the
          //              sampled X coordinate to the first/last half texel while leaving Y unclamped, so a ray
          //              that walks off the left or right edge of the screen keeps re-reading the same border
          //              column and smears or flickers the shadow it produces there. The macro keeps the
          //              vanilla clamp when the fix is off and passes X through unclamped when it is on, so the
          //              out-of-bounds sample fails instead of stretching the edge column.
          _5661 = __3__36__0__0__g_depthStencil.Load(int3(int(SHADOW_CONTACT_SAMPLE_X(_5648, _5626) * _bufferSizeAndInvSize.x), int(_5647 * _bufferSizeAndInvSize.y), 0));
          // RenoDX: <<< [Patch: ShadowEdgeNoiseFix]
          _5663 = (uint)((uint)(_5661.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _5666 = ((float)((uint)((uint)(_5661.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _5667 = _5663 & 127;
          _5668 = (_5643 == 0);
          _5669 = select(_5668, 1.0f, _5644);
          _5673 = _nearFarProj.x / max(1e-07f, _5666);
          _5676 = _5673 - (_nearFarProj.x / max(1e-07f, _5646));
          _5680 = (abs((_5646 + _5639) - _5666) < _5639);
          _5681 = (int)(uint)(_5680);
          if (_5680) {
            if (((uint)((int)(_5667) + (int)(-19)) < (uint)2) || ((_5667 == 18) || (((_5663 & 125) == 105) || ((_5667 == 106) || (((uint)((int)(_5667) + (int)(-27)) < (uint)2) || ((_5667 == 26) || ((_5667 == 107) || (((uint)((int)(_5667) + (int)(-5)) < (uint)2) || (((_5663 & 126) == 66) || ((_5667 == 7) || (_5667 == 53))))))))))) {
              _5727 = ((int)(uint)((int)((_5676 < 0.0f) && (_5676 > -0.08f))));
            } else {
              if ((_5667 != 67) && ((uint)((int)(_5667) + (int)(-52)) < (uint)16)) {
                _5727 = ((int)(uint)((int)((_5676 < 0.0f) && (_5676 > select((_5673 < 32.0f), -0.08f, -1.0f)))));
              } else {
                _5727 = _5681;
              }
            }
          } else {
            _5727 = _5681;
          }
          if (!(_5727 == 0)) {
            if ((uint)_5667 > (uint)11) {
              if (!((uint)_5667 < (uint)16)) {
                if (!(_5667 == 17)) {
                  if (!(_5667 == 16)) {
                    if (!(((_5667 == 18) || (_5667 == 107)) || ((uint)((int)(_5667) + (int)(-19)) < (uint)2))) {
                      _5751 = select((_5667 == 66), 0.1f, 0.0f);
                    } else {
                      _5751 = 0.15f;
                    }
                  } else {
                    _5751 = 0.1f;
                  }
                } else {
                  _5751 = 0.7f;
                }
              } else {
                _5751 = 0.9f;
              }
            } else {
              _5751 = select((_5667 == 11), 0.1f, 0.0f);
            }
            _5753 = saturate(_5673 * 0.015625f);  // [sem: expr_sat]
            _5756 = (1.0f - _5753) + (_5753 * _5751);
            // [sem: expr_sat]
            // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
            // Description: Rewrites the contact-shadow accumulation so the occlusion term can be scaled
            //              without disturbing the base shadow it is added to. The vanilla expression is
            //              saturate(((saturate(1 - d*d*s) * (1 - base)) * fade) + base): d*d*s is the
            //              accumulated ray occlusion, (1 - base) limits the contribution to the light that is
            //              still unshadowed, and fade is an occluder thickness/penetration confidence ramp
            //              that discards hits whose depth delta is too large to be a real contact. The whole
            //              product is hoisted into a named value and multiplied by a quality-dependent gain so
            //              the ray-traced lane can deepen its own coarse contact term to match the finer
            //              sub-pixel detail composited later. At the Off value the tuning weight is 0, the gain
            //              is exactly 1.0, and the expression reduces to the vanilla one bit for bit.
            float _microNearAccum = (saturate(1.0f - ((_5756 * _5756) * _5751)) * (1.0f - _5641)) * saturate((-0.0f - _5676) / (_5645 * 0.004654859658330679f));
            _5771 = saturate((_microNearAccum * lerp(1.0f, CONTACT_SHADOW_RT_ACCUM_STRENGTH, CONTACT_SHADOW_RT_TUNING)) + _5641);
            // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
            _5772 = _5667;
          } else {
            _5771 = _5641;  // [sem: expr_sat]
            _5772 = _5649;
          }
          if ((_5667 != 0) && (_5771 > 0.95f)) {
            if (!_5668) {
              _5785 = (saturate((_5642 - _5666) / (_5642 - _5646)) - min(_5645, _5669));
            } else {
              _5785 = 0.0f;
            }
            _5990 = ((_5785 * _5615) + _5648);
            _5991 = _5771;
            _5992 = _5667;
            _5993 = ((_5785 * _5617) + _5647);
            _5994 = ((_5785 * _5618) + _5646);
            _5995 = _5666;
          } else {
            if ((uint)_5643 < (uint)((int)(_5267) + (int)(-1))) {
              _5804 = _5666;
              _5805 = (_5669 + _5645);
              _5806 = ((_5669 * _5618) + _5646);
              _5807 = (_5647 + (_5669 * _5617));
              _5808 = (_5648 + (_5669 * _5615));
            } else {
              _5804 = _5642;
              _5805 = _5645;
              _5806 = _5646;
              _5807 = _5647;
              _5808 = _5648;
            }
            _5809 = (int)(_5643) + (int)(1);
            if ((uint)_5809 < (uint)_5267) {
              _5641 = _5771;
              _5642 = _5804;
              _5643 = _5809;
              _5644 = _5669;
              _5645 = _5805;
              _5646 = _5806;
              _5647 = _5807;
              _5648 = _5808;
              _5649 = _5772;
              continue;
            } else {
              _5990 = _5648;
              _5991 = _5771;
              _5992 = _5772;
              _5993 = _5647;
              _5994 = _5646;
              _5995 = _5666;
            }
          }
          _5996 = (_5991 > 0.0f);
          if (_5994 > 0.0f) {
            if ((_5996) || ((_5993 <= 1.0f) && (((_5990 >= 0.0f) && (_5990 <= 1.0f)) && (_5993 >= 0.0f)))) {
              _6009 = (_5990 * 2.0f) + -1.0f;
              _6011 = 1.0f - (_5993 * 2.0f);
              _6023 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _5994, mad((_invViewProjRelative[3].y), _6011, ((_invViewProjRelative[3].x) * _6009)));
              if (!(_5992 == 2)) {
                if (!(_5992 == 3)) {
                  if (_5992 == 21) {
                    _6042 = select((_84 == 21), 20.0f, 0.0f);
                  } else {
                    _6033 = (_5992 == 22);
                    _6042 = select(((_84 == 22) && _6033), 20.0f, select(_6033, 0.0f, 1.0f));
                  }
                } else {
                  _6042 = 0.0f;
                }
              } else {
                _6042 = select((_84 == 2), 20.0f, 0.0f);
              }
              if (_558 && (_5991 == 1.0f)) {
                // [sem: expr_sat]
                _6087 = saturate(((((_5288 * 0.9375f) - max(0.0f, dot(float3(_5255, _5261, _5266), float3((((mad((_invViewProjRelative[0].z), _5994, mad((_invViewProjRelative[0].y), _6011, ((_invViewProjRelative[0].x) * _6009))) + (_invViewProjRelative[0].w)) / _6023) - _5490), (((mad((_invViewProjRelative[1].z), _5994, mad((_invViewProjRelative[1].y), _6011, ((_invViewProjRelative[1].x) * _6009))) + (_invViewProjRelative[1].w)) / _6023) - _5491), (((mad((_invViewProjRelative[2].z), _5994, mad((_invViewProjRelative[2].y), _6011, ((_invViewProjRelative[2].x) * _6009))) + (_invViewProjRelative[2].w)) / _6023) - _5492))))) * ((_119 * 0.015625f) + 1.5f)) / _5288) * 0.9375f);
              } else {
                _6087 = _5991;  // [sem: expr_sat]
              }
              _6103 = saturate(exp2(min(0.0f, (((_119 * 0.019f) + 0.1f) + (((_nearFarProj.x / max(1e-07f, _5995)) - (_nearFarProj.x / max(1e-07f, _5994))) * _6042))) * 1.442695f)) * _6087;
              _6104 = _5992 & -2;
              if (!(_6104 == 6)) {
                if ((((_84 == 33) && (_5992 == 33)) || (!(_84 == 33) && ((_84 == 54) && (_5992 == 54))))) {
                  _6365 = (_6103 * 0.01f);
                } else {
                  if (!((_5992 == 53) || (_6104 == 66)) || (((_5992 == 53) || (_6104 == 66)) && (!((_5149 == 66) || (_84 == 53))))) {
                    if (!_168) {
                      if ((uint)((int)((uint)((uint)(_5992)) + (uint)(-52))) < (uint)16) {
                        _6132 = saturate(_119 * 0.03125f);  // [sem: expr_sat]
                      } else {
                        _6132 = 1.0f;  // [sem: expr_sat]
                      }
                      _6365 = (_6132 * _6103);
                    } else {
                      _6365 = _6103;
                    }
                  } else {
                    // [sem: _3__36__0__0__g_baseColor_load]
                    _6143 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _5990)), ((int)(_bufferSizeAndInvSize.y * _5993)), 0));
                    _6149 = ((float)((uint)((uint)(((uint)((uint)(_6143.x)) >> 8) & 255)))) * 0.003921569f;
                    _6152 = ((float)((uint)((uint)(_6143.x & 255)))) * 0.003921569f;
                    _6156 = ((float)((uint)((uint)(((uint)((uint)(_6143.y)) >> 8) & 255)))) * 0.003921569f;
                    _6157 = _6149 * _6149;
                    _6158 = _6152 * _6152;
                    _6159 = _6156 * _6156;
                    _6365 = (saturate(1.0f - (dot(float3((((_6157 * 0.61312f) + (_6158 * 0.33951f)) + (_6159 * 0.04737f)), (((_6157 * 0.0702f) + (_6158 * 0.91636f)) + (_6159 * 0.01345f)), (((_6157 * 0.02062f) + (_6158 * 0.10958f)) + (_6159 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _6103);
                  }
                }
              } else {
                _6365 = (_6103 * 0.01f);
              }
            } else {
              _6365 = 0.0f;
            }
          } else {
            if (_5996) {
              _6184 = _5990;
              _6185 = _5991;
              _6186 = _5992;
              _6187 = _5993;
              _6188 = _5994;
              _6189 = _5995;
              _6191 = (_6184 * 2.0f) + -1.0f;
              _6193 = 1.0f - (_6187 * 2.0f);
              _6205 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _6188, mad((_invViewProjRelative[3].y), _6193, ((_invViewProjRelative[3].x) * _6191)));
              if (!(_6186 == 2)) {
                if (!(_6186 == 3)) {
                  if (_6186 == 21) {
                    _6224 = select((_84 == 21), 20.0f, 0.0f);
                  } else {
                    _6215 = (_6186 == 22);
                    _6224 = select(((_84 == 22) && _6215), 20.0f, select(_6215, 0.0f, 1.0f));
                  }
                } else {
                  _6224 = 0.0f;
                }
              } else {
                _6224 = select((_84 == 2), 20.0f, 0.0f);
              }
              if (_558 && (_6185 == 1.0f)) {
                // [sem: expr_sat]
                _6269 = saturate(((((_5288 * 0.9375f) - max(0.0f, dot(float3(_5255, _5261, _5266), float3((((mad((_invViewProjRelative[0].z), _6188, mad((_invViewProjRelative[0].y), _6193, ((_invViewProjRelative[0].x) * _6191))) + (_invViewProjRelative[0].w)) / _6205) - _5490), (((mad((_invViewProjRelative[1].z), _6188, mad((_invViewProjRelative[1].y), _6193, ((_invViewProjRelative[1].x) * _6191))) + (_invViewProjRelative[1].w)) / _6205) - _5491), (((mad((_invViewProjRelative[2].z), _6188, mad((_invViewProjRelative[2].y), _6193, ((_invViewProjRelative[2].x) * _6191))) + (_invViewProjRelative[2].w)) / _6205) - _5492))))) * ((_119 * 0.015625f) + 1.5f)) / _5288) * 0.9375f);
              } else {
                _6269 = _6185;  // [sem: expr_sat]
              }
              _6285 = saturate(exp2(min(0.0f, (((_119 * 0.019f) + 0.1f) + (((_nearFarProj.x / max(1e-07f, _6189)) - (_nearFarProj.x / max(1e-07f, _6188))) * _6224))) * 1.442695f)) * _6269;
              _6286 = _6186 & -2;
              if (!(_6286 == 6)) {
                if ((((_84 == 33) && (_6186 == 33)) || (!(_84 == 33) && ((_84 == 54) && (_6186 == 54))))) {
                  _6365 = (_6285 * 0.01f);
                } else {
                  if (!((_6186 == 53) || (_6286 == 66)) || (((_6186 == 53) || (_6286 == 66)) && (!((_5149 == 66) || (_84 == 53))))) {
                    if (!_168) {
                      if ((uint)((int)((uint)((uint)(_6186)) + (uint)(-52))) < (uint)16) {
                        _6314 = saturate(_119 * 0.03125f);  // [sem: expr_sat]
                      } else {
                        _6314 = 1.0f;  // [sem: expr_sat]
                      }
                      _6365 = (_6314 * _6285);
                    } else {
                      _6365 = _6285;
                    }
                  } else {
                    // [sem: _3__36__0__0__g_baseColor_load]
                    _6325 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _6184)), ((int)(_bufferSizeAndInvSize.y * _6187)), 0));
                    _6331 = ((float)((uint)((uint)(((uint)((uint)(_6325.x)) >> 8) & 255)))) * 0.003921569f;
                    _6334 = ((float)((uint)((uint)(_6325.x & 255)))) * 0.003921569f;
                    _6338 = ((float)((uint)((uint)(((uint)((uint)(_6325.y)) >> 8) & 255)))) * 0.003921569f;
                    _6339 = _6331 * _6331;
                    _6340 = _6334 * _6334;
                    _6341 = _6338 * _6338;
                    _6365 = (saturate(1.0f - (dot(float3((((_6339 * 0.61312f) + (_6340 * 0.33951f)) + (_6341 * 0.04737f)), (((_6339 * 0.0702f) + (_6340 * 0.91636f)) + (_6341 * 0.01345f)), (((_6339 * 0.02062f) + (_6340 * 0.10958f)) + (_6341 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _6285);
                  }
                }
              } else {
                _6365 = (_6285 * 0.01f);
              }
            } else {
              _6365 = 0.0f;
            }
          }
          break;
        }
      } else {
        _5814 = ((_5611 * _5273) * 0.5f) * _5612;
        _5816 = 0.0f;
        _5817 = 0.0f;
        _5818 = 0;
        _5819 = _5636;
        _5820 = _5634;
        _5821 = _5630;
        _5822 = _5478;
        _5823 = _5301;
        _5824 = 0;
        // RenoDX: >>> [Patch: ContactSelfIntersectionGuard] [Version: 1.16.00]
        // Description: Builds camera- and light-facing receiver tangent-plane slopes once for the far contact
        // march. The plane is anchored to the receiver's stored device depth, making receiver identity exact
        // while leaving cross-class and degenerate-plane samples on the native path.
        // This body reconstructs position as M . v (row dots), so the plane is transformed with the
        // transpose - column dots. Verify this against the native position reconstruction after any
        // decompiler change; the two conventions are silent mirror images of each other.
        float _rndxSiPlaneW = -mad(_109, _158, mad(_108, _149, (_107 * _140)));
        float _rndxSiPlaneA = mad(_rndxSiPlaneW, (_invViewProjRelative[3].x), mad(_109, (_invViewProjRelative[2].x), mad(_108, (_invViewProjRelative[1].x), (_107 * (_invViewProjRelative[0].x)))));
        float _rndxSiPlaneB = mad(_rndxSiPlaneW, (_invViewProjRelative[3].y), mad(_109, (_invViewProjRelative[2].y), mad(_108, (_invViewProjRelative[1].y), (_107 * (_invViewProjRelative[0].y)))));
        float _rndxSiPlaneC = mad(_rndxSiPlaneW, (_invViewProjRelative[3].z), mad(_109, (_invViewProjRelative[2].z), mad(_108, (_invViewProjRelative[1].z), (_107 * (_invViewProjRelative[0].z)))));
        bool _rndxSiReceiverVulnerable = (((uint)(_84 - 1) < 3u) || (_84 == 15) || (_84 == 97));
        float _rndxSiNdotL = mad(_109, _5266, mad(_108, _5261, (_107 * _5255)));
        bool _rndxSiPlaneValid = _rndxSiReceiverVulnerable && (_rndxSiNdotL > 0.0f) && (_rndxSiPlaneW > 0.0f) && (abs(_rndxSiPlaneC) >= 1.1754943508222875e-38f);
        float _rndxSiInvC = select(_rndxSiPlaneValid, rcp(_rndxSiPlaneC), 0.0f);
        float _rndxSiQx = -_rndxSiPlaneA * _rndxSiInvC;
        float _rndxSiQy = -_rndxSiPlaneB * _rndxSiInvC;
        float _rndxSiPlaneSide = select((_rndxSiPlaneC >= 0.0f), 1.0f, -1.0f);
        // RenoDX: <<< [Patch: ContactSelfIntersectionGuard]
        while(true) {
          // [sem: _3__36__0__0__g_depthStencil_load]
          // RenoDX: >>> [Patch: ShadowEdgeNoiseFix] [Version: 1.16.00]
          // Description: Replaces the vanilla X clamp at this contact-shadow depth load. Vanilla clamps the
          //              sampled X coordinate to the first/last half texel while leaving Y unclamped, so a ray
          //              that walks off the left or right edge of the screen keeps re-reading the same border
          //              column and smears or flickers the shadow it produces there. The macro keeps the
          //              vanilla clamp when the fix is off and passes X through unclamped when it is on, so the
          //              out-of-bounds sample fails instead of stretching the edge column.
          // RenoDX: >>> [Patch: ContactSelfIntersectionGuard] [Version: 1.16.00]
          // Description: Materializes the exact integer texel used by the far depth load so the
          // receiver-plane test evaluates that raster sample rather than the continuous march coordinate.
          int2 _rndxSiSampleTexel = int2(int(SHADOW_CONTACT_SAMPLE_X(_5821, _5626) * _bufferSizeAndInvSize.x), int(_5820 * _bufferSizeAndInvSize.y));
          // RenoDX: <<< [Patch: ContactSelfIntersectionGuard]
          _5836 = __3__36__0__0__g_depthStencil.Load(int3(_rndxSiSampleTexel, 0));
          // RenoDX: <<< [Patch: ShadowEdgeNoiseFix]
          _5838 = (uint)((uint)(_5836.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _5841 = ((float)((uint)((uint)(_5836.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _5842 = _5838 & 127;
          _5843 = (_5824 == 0);
          _5844 = select(_5843, 1.0f, _5823);
          _5848 = _nearFarProj.x / max(1e-07f, _5841);
          _5851 = _5848 - (_nearFarProj.x / max(1e-07f, _5819));
          _5855 = (abs((_5819 + _5814) - _5841) < _5814);
          _5856 = (int)(uint)(_5855);
          if (_5855) {
            if (((uint)((int)(_5842) + (int)(-19)) < (uint)2) || ((_5842 == 18) || (((_5838 & 125) == 105) || ((_5842 == 106) || (((uint)((int)(_5842) + (int)(-27)) < (uint)2) || ((_5842 == 26) || ((_5842 == 107) || (((uint)((int)(_5842) + (int)(-5)) < (uint)2) || (((_5838 & 126) == 66) || ((_5842 == 7) || (_5842 == 53))))))))))) {
              _5902 = ((int)(uint)((int)((_5851 < 0.0f) && (_5851 > -0.08f))));
            } else {
              if ((_5842 != 67) && ((uint)((int)(_5842) + (int)(-52)) < (uint)16)) {
                _5902 = ((int)(uint)((int)((_5851 < 0.0f) && (_5851 > select((_5848 < 32.0f), -0.08f, -1.0f)))));
              } else {
                _5902 = _5856;
              }
            }
          } else {
            _5902 = _5856;
          }
          // RenoDX: >>> [Patch: ContactSelfIntersectionGuard] [Version: 1.16.00]
          // Description: Only a natively accepted sample can be reclassified as a self-intersection miss.
          bool _rndxSiReject = false;
          // RenoDX: <<< [Patch: ContactSelfIntersectionGuard]
          if (!(_5902 == 0)) {
            if ((uint)_5842 > (uint)11) {
              if (!((uint)_5842 < (uint)16)) {
                if (!(_5842 == 17)) {
                  if (!(_5842 == 16)) {
                    if (!(((_5842 == 18) || (_5842 == 107)) || ((uint)((int)(_5842) + (int)(-19)) < (uint)2))) {
                      _5926 = select((_5842 == 66), 0.1f, 0.0f);
                    } else {
                      _5926 = 0.15f;
                    }
                  } else {
                    _5926 = 0.1f;
                  }
                } else {
                  _5926 = 0.7f;
                }
              } else {
                _5926 = 0.9f;
              }
            } else {
              _5926 = select((_5842 == 11), 0.1f, 0.0f);
            }
            _5928 = saturate(_5848 * 0.015625f);  // [sem: expr_sat]
            _5931 = (1.0f - _5928) + (_5928 * _5926);
            // RenoDX: >>> [Patch: ContactSelfIntersectionGuard] [Version: 1.16.00]
            // Description: Reclassifies only strict same-class samples that are not provably in front of the
            // anchored receiver plane. The finite envelope is fixed by the D24 depth and 10-bit normal
            // representation; a rejected sample takes the native miss state and preserves the previous owner.
            if (_rndxSiPlaneValid && (_5842 == _84)) {
              float _rndxSiNdcX = mad(2.0f, (float(_rndxSiSampleTexel.x) + 0.5f) * _bufferSizeAndInvSize.z, -1.0f);
              float _rndxSiNdcY = mad(-2.0f, (float(_rndxSiSampleTexel.y) + 0.5f) * _bufferSizeAndInvSize.w, 1.0f);
              float _rndxSiPlaneZ = mad(_rndxSiQy, (_rndxSiNdcY - _76), mad(_rndxSiQx, (_rndxSiNdcX - _74), _116));
              float _rndxSiEps = 1.7881395564245394e-07f + (0.001956947147846222f * abs(_rndxSiPlaneZ - _116));
              float _rndxSiFront = _rndxSiPlaneSide * (_5841 - _rndxSiPlaneZ);
              _rndxSiReject = (SHADOW_BAND_FIX != 0.f) && isfinite(_rndxSiPlaneZ) && (_rndxSiPlaneZ >= 0.0f) && (_rndxSiPlaneZ <= 1.0f) && (_rndxSiFront <= _rndxSiEps);
            }
            // RenoDX: <<< [Patch: ContactSelfIntersectionGuard]
            // RenoDX: >>> [Patch: ConnectedPatchEnvelope] [Version: 1.16.00]
            // Description: Suppresses far contact hits finer than the receiver surface's own measured relief.
            // E is the maximum nearer-side deviation, in unorm24 depth codes, of the depth-continuous
            // same-class pixel run along the march direction from that run's fitted slope; a per-step code
            // jump above the window-span bound is a real discontinuity and ends the run, so crests and
            // silhouettes bound E instead of inflating it. A surface cannot cast contact shadows finer than
            // its own representable relief, so hits within E plus one quantization code are LOD/quantization
            // self-structure while genuine occluders sit far outside it. Scope is deliberately narrow: only
            // vulnerable receivers, only same-class samples the native march accepts with no linear
            // separation bound, and only when the run establishes a connected surface - depth-chaotic
            // geometry such as foliage yields no surface evidence and stays fully native. A fully suppressed
            // sample takes the native miss path, preserving the previous owner and accumulator and never
            // terminalizing.
            float _rndxCpeFactor = 1.0f;
            if ((SHADOW_BAND_FIX != 0.f) && (!_rndxSiReject)) {
              bool _rndxCpeListA = ((uint)((int)(_5842) + (int)(-19)) < (uint)2) || ((_5842 == 18) || (((_5838 & 125) == 105) || ((_5842 == 106) || (((uint)((int)(_5842) + (int)(-27)) < (uint)2) || ((_5842 == 26) || ((_5842 == 107) || (((uint)((int)(_5842) + (int)(-5)) < (uint)2) || (((_5838 & 126) == 66) || ((_5842 == 7) || (_5842 == 53))))))))));
              bool _rndxCpeTerrain = (_5842 != 67) && ((uint)((int)(_5842) + (int)(-52)) < (uint)16);
              if ((_rndxSiReceiverVulnerable) && ((_5842 == _84) && ((!_rndxCpeListA) && (!_rndxCpeTerrain)))) {
                if (!_rndxCpeReady) {
                  _rndxCpeReady = true;
                  float2 _rndxCpeDirPx = float2((_5615) * _bufferSizeAndInvSize.x, (_5617) * _bufferSizeAndInvSize.y);
                  float _rndxCpeLen = max(abs(_rndxCpeDirPx.x), abs(_rndxCpeDirPx.y));
                  float2 _rndxCpeStep = select((_rndxCpeLen > 9.999999974752427e-07f), (_rndxCpeDirPx / _rndxCpeLen), float2(1.0f, 0.0f));
                  float _rndxCpeC0 = (float)((uint)(_78.x & 16777215));
                  int _rndxCpeW = ((int)(_bufferSizeAndInvSize.x)) - 1;
                  int _rndxCpeH = ((int)(_bufferSizeAndInvSize.y)) - 1;
                  float _rndxCpePlaneStep = (mad(((_rndxSiQy * -2.0f) * _bufferSizeAndInvSize.w), _rndxCpeStep.y, (((_rndxSiQx * 2.0f) * _bufferSizeAndInvSize.z) * _rndxCpeStep.x))) * 16777216.0f;
                  float _rndxCpePlaneMag = select((_rndxSiPlaneValid && isfinite(_rndxCpePlaneStep)), abs(_rndxCpePlaneStep), 0.0f);
                  float _rndxCpeCm2 = _rndxCpeC0;
                  float _rndxCpeCp2 = _rndxCpeC0;
                  bool _rndxCpeVm2 = false;
                  bool _rndxCpeVp2 = false;
                  {
                    int _rndxCpeRx = ((int)(_56)) - ((int)(round(_rndxCpeStep.x * 2.0f)));
                    int _rndxCpeRy = ((int)(_63)) - ((int)(round(_rndxCpeStep.y * 2.0f)));
                    bool _rndxCpeOn = ((_rndxCpeRx >= 0) && ((_rndxCpeRx <= _rndxCpeW) && ((_rndxCpeRy >= 0) && (_rndxCpeRy <= _rndxCpeH))));
                    uint _rndxCpeWd = __3__36__0__0__g_depthStencil.Load(int3(min(max(_rndxCpeRx, 0), _rndxCpeW), min(max(_rndxCpeRy, 0), _rndxCpeH), 0)).x;
                    if ((_rndxCpeOn) && ((((int)((_rndxCpeWd >> 24) & 127)) == _84))) {
                      _rndxCpeCm2 = (float)((uint)(_rndxCpeWd & 16777215));
                      _rndxCpeVm2 = true;
                    }
                  }
                  {
                    int _rndxCpeRx = ((int)(_56)) + ((int)(round(_rndxCpeStep.x * 2.0f)));
                    int _rndxCpeRy = ((int)(_63)) + ((int)(round(_rndxCpeStep.y * 2.0f)));
                    bool _rndxCpeOn = ((_rndxCpeRx >= 0) && ((_rndxCpeRx <= _rndxCpeW) && ((_rndxCpeRy >= 0) && (_rndxCpeRy <= _rndxCpeH))));
                    uint _rndxCpeWd = __3__36__0__0__g_depthStencil.Load(int3(min(max(_rndxCpeRx, 0), _rndxCpeW), min(max(_rndxCpeRy, 0), _rndxCpeH), 0)).x;
                    if ((_rndxCpeOn) && ((((int)((_rndxCpeWd >> 24) & 127)) == _84))) {
                      _rndxCpeCp2 = (float)((uint)(_rndxCpeWd & 16777215));
                      _rndxCpeVp2 = true;
                    }
                  }
                  float _rndxCpeSp = (_rndxCpeCp2 - _rndxCpeC0) * 0.5f;
                  float _rndxCpeSm = (_rndxCpeC0 - _rndxCpeCm2) * 0.5f;
                  float _rndxCpeSaneCap = mad(4.0f, _rndxCpePlaneMag, 2.0f);
                  bool _rndxCpeVp2s = (_rndxCpeVp2) && (abs(_rndxCpeSp) <= _rndxCpeSaneCap);
                  bool _rndxCpeVm2s = (_rndxCpeVm2) && (abs(_rndxCpeSm) <= _rndxCpeSaneCap);
                  float _rndxCpeSmag;
                  float _rndxCpeSfit;
                  if ((_rndxCpeVp2s) && (_rndxCpeVm2s)) {
                    _rndxCpeSmag = min(abs(_rndxCpeSp), abs(_rndxCpeSm));
                    _rndxCpeSfit = (_rndxCpeCp2 - _rndxCpeCm2) * 0.25f;
                  } else {
                    if (_rndxCpeVp2s) {
                      _rndxCpeSmag = abs(_rndxCpeSp);
                      _rndxCpeSfit = _rndxCpeSp;
                    } else {
                      if (_rndxCpeVm2s) {
                        _rndxCpeSmag = abs(_rndxCpeSm);
                        _rndxCpeSfit = _rndxCpeSm;
                      } else {
                        _rndxCpeSmag = _rndxCpePlaneMag;
                        _rndxCpeSfit = select(_rndxSiPlaneValid, _rndxCpePlaneStep, 0.0f);
                      }
                    }
                  }
                  float _rndxCpeSref = max(_rndxCpeSmag, _rndxCpePlaneMag);
                  float _rndxCpeSlim = _rndxCpeSref + 2.0f;
                  _rndxCpeSfit = min(max(_rndxCpeSfit, (-0.0f - _rndxCpeSlim)), _rndxCpeSlim);
                  float _rndxCpeB = mad(8.0f, _rndxCpeSref, 2.0f);
                  float _rndxCpePrev = _rndxCpeC0;
                  bool _rndxCpeRun = true;
                  {
                    int _rndxCpeRx = ((int)(_56)) + ((int)(round(_rndxCpeStep.x * 1.0f)));
                    int _rndxCpeRy = ((int)(_63)) + ((int)(round(_rndxCpeStep.y * 1.0f)));
                    bool _rndxCpeOn = ((_rndxCpeRx >= 0) && ((_rndxCpeRx <= _rndxCpeW) && ((_rndxCpeRy >= 0) && (_rndxCpeRy <= _rndxCpeH))));
                    uint _rndxCpeWd = __3__36__0__0__g_depthStencil.Load(int3(min(max(_rndxCpeRx, 0), _rndxCpeW), min(max(_rndxCpeRy, 0), _rndxCpeH), 0)).x;
                    float _rndxCpeC = (float)((uint)(_rndxCpeWd & 16777215));
                    if ((_rndxCpeOn) && ((((int)((_rndxCpeWd >> 24) & 127)) == _84) && (abs(_rndxCpeC - _rndxCpePrev) <= _rndxCpeB))) {
                      _rndxCpeE = max(_rndxCpeE, (_rndxCpeC - (_rndxCpeC0 + (_rndxCpeSfit * 1.0f))));
                      _rndxCpePrev = _rndxCpeC;
                    } else {
                      _rndxCpeRun = false;
                    }
                  }
                  if (_rndxCpeRun) {
                    if ((_rndxCpeVp2) && (abs(_rndxCpeCp2 - _rndxCpePrev) <= _rndxCpeB)) {
                      _rndxCpeE = max(_rndxCpeE, (_rndxCpeCp2 - (_rndxCpeC0 + (_rndxCpeSfit * 2.0f))));
                      _rndxCpePrev = _rndxCpeCp2;
                      _rndxCpeEst = true;
                    } else {
                      _rndxCpeRun = false;
                    }
                  }
                  [unroll] for (int _rndxCpeK = 0; _rndxCpeK < 4; _rndxCpeK++) {
                    if (!_rndxCpeRun) { break; }
                    float _rndxCpeD = ((_rndxCpeK == 0) ? 3.0f : ((_rndxCpeK == 1) ? 4.0f : ((_rndxCpeK == 2) ? 6.0f : 8.0f)));
                    int _rndxCpeRx = ((int)(_56)) + ((int)(round(_rndxCpeStep.x * _rndxCpeD)));
                    int _rndxCpeRy = ((int)(_63)) + ((int)(round(_rndxCpeStep.y * _rndxCpeD)));
                    bool _rndxCpeOn = ((_rndxCpeRx >= 0) && ((_rndxCpeRx <= _rndxCpeW) && ((_rndxCpeRy >= 0) && (_rndxCpeRy <= _rndxCpeH))));
                    uint _rndxCpeWd = __3__36__0__0__g_depthStencil.Load(int3(min(max(_rndxCpeRx, 0), _rndxCpeW), min(max(_rndxCpeRy, 0), _rndxCpeH), 0)).x;
                    float _rndxCpeC = (float)((uint)(_rndxCpeWd & 16777215));
                    if ((_rndxCpeOn) && ((((int)((_rndxCpeWd >> 24) & 127)) == _84) && (abs(_rndxCpeC - _rndxCpePrev) <= _rndxCpeB))) {
                      _rndxCpeE = max(_rndxCpeE, (_rndxCpeC - (_rndxCpeC0 + (_rndxCpeSfit * _rndxCpeD))));
                      _rndxCpePrev = _rndxCpeC;
                    } else {
                      _rndxCpeRun = false;
                    }
                  }
                }
                if (_rndxCpeEst) {
                  float _rndxCpeCodeLin = ((_5848) * (_5848)) / (_nearFarProj.x * 16777216.0f);
                  float _rndxCpeSepCodes = abs(_5851) / max(_rndxCpeCodeLin, 9.999999960041972e-13f);
                  float _rndxCpeHalfW = _rndxCpeE + 1.0f;
                  float _rndxCpeT = saturate((_rndxCpeSepCodes - _rndxCpeHalfW) / _rndxCpeHalfW);
                  _rndxCpeFactor = ((_rndxCpeT * _rndxCpeT) * (3.0f - (2.0f * _rndxCpeT)));
                }
              }
            }
            if (_rndxCpeFactor <= 0.0f) {
              _rndxSiReject = true;
            }
            // RenoDX: <<< [Patch: ConnectedPatchEnvelope]
            // [sem: expr_sat]
            // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
            // Description: Rewrites the contact-shadow accumulation so the occlusion term can be scaled
            //              without disturbing the base shadow it is added to. The vanilla expression is
            //              saturate(((saturate(1 - d*d*s) * (1 - base)) * fade) + base): d*d*s is the
            //              accumulated ray occlusion, (1 - base) limits the contribution to the light that is
            //              still unshadowed, and fade is an occluder thickness/penetration confidence ramp
            //              that discards hits whose depth delta is too large to be a real contact. The whole
            //              product is hoisted into a named value and multiplied by a quality-dependent gain so
            //              the ray-traced lane can deepen its own coarse contact term to match the finer
            //              sub-pixel detail composited later. At the Off value the tuning weight is 0, the gain
            //              is exactly 1.0, and the expression reduces to the vanilla one bit for bit.
            // RenoDX: >>> [Patch: ConnectedPatchEnvelope] [Version: 1.16.00]
            // Description: Scales this accepted sample's occlusion by the connected-patch envelope factor.
            // Every native factor already in the product is carried through unchanged and the envelope
            // factor is appended, never substituted. A suppressed sample carries the prior accumulation.
            if (!_rndxSiReject) {
              float _microFarAccum = (saturate(1.0f - ((_5931 * _5931) * _5926)) * (1.0f - _5816)) * saturate((-0.0f - _5851) / (_5822 * 0.004654859658330679f)) * _rndxCpeFactor;
              _5946 = saturate((_microFarAccum * lerp(1.0f, CONTACT_SHADOW_RT_ACCUM_STRENGTH, CONTACT_SHADOW_RT_TUNING)) + _5816);
            } else {
              _5946 = _5816;
            }
            // RenoDX: <<< [Patch: ConnectedPatchEnvelope]
            // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
            // RenoDX: >>> [Patch: ContactSelfIntersectionGuard] [Version: 1.16.00]
            // Description: A suppressed sample keeps the previous owner class instead of claiming ownership.
            _5947 = select(_rndxSiReject, _5818, _5842);
            // RenoDX: <<< [Patch: ContactSelfIntersectionGuard]
          } else {
            _5946 = _5816;  // [sem: expr_sat]
            _5947 = _5818;
          }
          // RenoDX: >>> [Patch: ContactSelfIntersectionGuard] [Version: 1.16.00]
          // Description: Prevents a suppressed sample from terminalizing on carried accumulation.
          // Native-rejected, cross-class and genuine samples keep the original exit test.
          if ((!_rndxSiReject) && ((_5842 != 0) && (_5946 > 0.95f))) {
          // RenoDX: <<< [Patch: ContactSelfIntersectionGuard]
            if (!_5843) {
              _5960 = (saturate((_5817 - _5841) / (_5817 - _5819)) - min(_5822, _5844));
            } else {
              _5960 = 0.0f;
            }
            _5990 = ((_5960 * _5615) + _5821);
            _5991 = _5946;
            _5992 = _5842;
            _5993 = ((_5960 * _5617) + _5820);
            _5994 = ((_5960 * _5618) + _5819);
            _5995 = _5841;
            _5996 = (_5991 > 0.0f);
            if (_5994 > 0.0f) {
              if ((_5996) || ((_5993 <= 1.0f) && (((_5990 >= 0.0f) && (_5990 <= 1.0f)) && (_5993 >= 0.0f)))) {
                _6009 = (_5990 * 2.0f) + -1.0f;
                _6011 = 1.0f - (_5993 * 2.0f);
                _6023 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _5994, mad((_invViewProjRelative[3].y), _6011, ((_invViewProjRelative[3].x) * _6009)));
                if (!(_5992 == 2)) {
                  if (!(_5992 == 3)) {
                    if (_5992 == 21) {
                      _6042 = select((_84 == 21), 20.0f, 0.0f);
                    } else {
                      _6033 = (_5992 == 22);
                      _6042 = select(((_84 == 22) && _6033), 20.0f, select(_6033, 0.0f, 1.0f));
                    }
                  } else {
                    _6042 = 0.0f;
                  }
                } else {
                  _6042 = select((_84 == 2), 20.0f, 0.0f);
                }
                if (_558 && (_5991 == 1.0f)) {
                  // [sem: expr_sat]
                  _6087 = saturate(((((_5288 * 0.9375f) - max(0.0f, dot(float3(_5255, _5261, _5266), float3((((mad((_invViewProjRelative[0].z), _5994, mad((_invViewProjRelative[0].y), _6011, ((_invViewProjRelative[0].x) * _6009))) + (_invViewProjRelative[0].w)) / _6023) - _5490), (((mad((_invViewProjRelative[1].z), _5994, mad((_invViewProjRelative[1].y), _6011, ((_invViewProjRelative[1].x) * _6009))) + (_invViewProjRelative[1].w)) / _6023) - _5491), (((mad((_invViewProjRelative[2].z), _5994, mad((_invViewProjRelative[2].y), _6011, ((_invViewProjRelative[2].x) * _6009))) + (_invViewProjRelative[2].w)) / _6023) - _5492))))) * ((_119 * 0.015625f) + 1.5f)) / _5288) * 0.9375f);
                } else {
                  _6087 = _5991;  // [sem: expr_sat]
                }
                _6103 = saturate(exp2(min(0.0f, (((_119 * 0.019f) + 0.1f) + (((_nearFarProj.x / max(1e-07f, _5995)) - (_nearFarProj.x / max(1e-07f, _5994))) * _6042))) * 1.442695f)) * _6087;
                _6104 = _5992 & -2;
                if (!(_6104 == 6)) {
                  if ((((_84 == 33) && (_5992 == 33)) || (!(_84 == 33) && ((_84 == 54) && (_5992 == 54))))) {
                    _6365 = (_6103 * 0.01f);
                  } else {
                    if (!((_5992 == 53) || (_6104 == 66)) || (((_5992 == 53) || (_6104 == 66)) && (!((_5149 == 66) || (_84 == 53))))) {
                      if (!_168) {
                        if ((uint)((int)((uint)((uint)(_5992)) + (uint)(-52))) < (uint)16) {
                          _6132 = saturate(_119 * 0.03125f);  // [sem: expr_sat]
                        } else {
                          _6132 = 1.0f;  // [sem: expr_sat]
                        }
                        _6365 = (_6132 * _6103);
                      } else {
                        _6365 = _6103;
                      }
                    } else {
                      // [sem: _3__36__0__0__g_baseColor_load]
                      _6143 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _5990)), ((int)(_bufferSizeAndInvSize.y * _5993)), 0));
                      _6149 = ((float)((uint)((uint)(((uint)((uint)(_6143.x)) >> 8) & 255)))) * 0.003921569f;
                      _6152 = ((float)((uint)((uint)(_6143.x & 255)))) * 0.003921569f;
                      _6156 = ((float)((uint)((uint)(((uint)((uint)(_6143.y)) >> 8) & 255)))) * 0.003921569f;
                      _6157 = _6149 * _6149;
                      _6158 = _6152 * _6152;
                      _6159 = _6156 * _6156;
                      _6365 = (saturate(1.0f - (dot(float3((((_6157 * 0.61312f) + (_6158 * 0.33951f)) + (_6159 * 0.04737f)), (((_6157 * 0.0702f) + (_6158 * 0.91636f)) + (_6159 * 0.01345f)), (((_6157 * 0.02062f) + (_6158 * 0.10958f)) + (_6159 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _6103);
                    }
                  }
                } else {
                  _6365 = (_6103 * 0.01f);
                }
              } else {
                _6365 = 0.0f;
              }
            } else {
              if (_5996) {
                _6184 = _5990;
                _6185 = _5991;
                _6186 = _5992;
                _6187 = _5993;
                _6188 = _5994;
                _6189 = _5995;
                _6191 = (_6184 * 2.0f) + -1.0f;
                _6193 = 1.0f - (_6187 * 2.0f);
                _6205 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _6188, mad((_invViewProjRelative[3].y), _6193, ((_invViewProjRelative[3].x) * _6191)));
                if (!(_6186 == 2)) {
                  if (!(_6186 == 3)) {
                    if (_6186 == 21) {
                      _6224 = select((_84 == 21), 20.0f, 0.0f);
                    } else {
                      _6215 = (_6186 == 22);
                      _6224 = select(((_84 == 22) && _6215), 20.0f, select(_6215, 0.0f, 1.0f));
                    }
                  } else {
                    _6224 = 0.0f;
                  }
                } else {
                  _6224 = select((_84 == 2), 20.0f, 0.0f);
                }
                if (_558 && (_6185 == 1.0f)) {
                  // [sem: expr_sat]
                  _6269 = saturate(((((_5288 * 0.9375f) - max(0.0f, dot(float3(_5255, _5261, _5266), float3((((mad((_invViewProjRelative[0].z), _6188, mad((_invViewProjRelative[0].y), _6193, ((_invViewProjRelative[0].x) * _6191))) + (_invViewProjRelative[0].w)) / _6205) - _5490), (((mad((_invViewProjRelative[1].z), _6188, mad((_invViewProjRelative[1].y), _6193, ((_invViewProjRelative[1].x) * _6191))) + (_invViewProjRelative[1].w)) / _6205) - _5491), (((mad((_invViewProjRelative[2].z), _6188, mad((_invViewProjRelative[2].y), _6193, ((_invViewProjRelative[2].x) * _6191))) + (_invViewProjRelative[2].w)) / _6205) - _5492))))) * ((_119 * 0.015625f) + 1.5f)) / _5288) * 0.9375f);
                } else {
                  _6269 = _6185;  // [sem: expr_sat]
                }
                _6285 = saturate(exp2(min(0.0f, (((_119 * 0.019f) + 0.1f) + (((_nearFarProj.x / max(1e-07f, _6189)) - (_nearFarProj.x / max(1e-07f, _6188))) * _6224))) * 1.442695f)) * _6269;
                _6286 = _6186 & -2;
                if (!(_6286 == 6)) {
                  if ((((_84 == 33) && (_6186 == 33)) || (!(_84 == 33) && ((_84 == 54) && (_6186 == 54))))) {
                    _6365 = (_6285 * 0.01f);
                  } else {
                    if (!((_6186 == 53) || (_6286 == 66)) || (((_6186 == 53) || (_6286 == 66)) && (!((_5149 == 66) || (_84 == 53))))) {
                      if (!_168) {
                        if ((uint)((int)((uint)((uint)(_6186)) + (uint)(-52))) < (uint)16) {
                          _6314 = saturate(_119 * 0.03125f);  // [sem: expr_sat]
                        } else {
                          _6314 = 1.0f;  // [sem: expr_sat]
                        }
                        _6365 = (_6314 * _6285);
                      } else {
                        _6365 = _6285;
                      }
                    } else {
                      // [sem: _3__36__0__0__g_baseColor_load]
                      _6325 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _6184)), ((int)(_bufferSizeAndInvSize.y * _6187)), 0));
                      _6331 = ((float)((uint)((uint)(((uint)((uint)(_6325.x)) >> 8) & 255)))) * 0.003921569f;
                      _6334 = ((float)((uint)((uint)(_6325.x & 255)))) * 0.003921569f;
                      _6338 = ((float)((uint)((uint)(((uint)((uint)(_6325.y)) >> 8) & 255)))) * 0.003921569f;
                      _6339 = _6331 * _6331;
                      _6340 = _6334 * _6334;
                      _6341 = _6338 * _6338;
                      _6365 = (saturate(1.0f - (dot(float3((((_6339 * 0.61312f) + (_6340 * 0.33951f)) + (_6341 * 0.04737f)), (((_6339 * 0.0702f) + (_6340 * 0.91636f)) + (_6341 * 0.01345f)), (((_6339 * 0.02062f) + (_6340 * 0.10958f)) + (_6341 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _6285);
                    }
                  }
                } else {
                  _6365 = (_6285 * 0.01f);
                }
              } else {
                _6365 = 0.0f;
              }
            }
          } else {
            if ((uint)_5824 < (uint)((int)(_5267) + (int)(-1))) {
              _5979 = _5841;
              _5980 = ((_5844 * _5618) + _5819);
              _5981 = ((_5844 * _5617) + _5820);
              _5982 = ((_5844 * _5615) + _5821);
              _5983 = (_5844 + _5822);
            } else {
              _5979 = _5817;
              _5980 = _5819;
              _5981 = _5820;
              _5982 = _5821;
              _5983 = _5822;
            }
            _5984 = (int)(_5824) + (int)(1);
            if ((uint)_5984 < (uint)_5267) {
              _5816 = _5946;
              _5817 = _5979;
              _5818 = _5947;
              _5819 = _5980;
              _5820 = _5981;
              _5821 = _5982;
              _5822 = _5983;
              _5823 = _5844;
              _5824 = _5984;
              continue;
            } else {
              if (_5946 > 0.0f) {
                _6184 = 0.0f;
                _6185 = _5946;
                _6186 = _5947;
                _6187 = 0.0f;
                _6188 = -1.0f;
                _6189 = 0.0f;
                _6191 = (_6184 * 2.0f) + -1.0f;
                _6193 = 1.0f - (_6187 * 2.0f);
                _6205 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _6188, mad((_invViewProjRelative[3].y), _6193, ((_invViewProjRelative[3].x) * _6191)));
                if (!(_6186 == 2)) {
                  if (!(_6186 == 3)) {
                    if (_6186 == 21) {
                      _6224 = select((_84 == 21), 20.0f, 0.0f);
                    } else {
                      _6215 = (_6186 == 22);
                      _6224 = select(((_84 == 22) && _6215), 20.0f, select(_6215, 0.0f, 1.0f));
                    }
                  } else {
                    _6224 = 0.0f;
                  }
                } else {
                  _6224 = select((_84 == 2), 20.0f, 0.0f);
                }
                if (_558 && (_6185 == 1.0f)) {
                  // [sem: expr_sat]
                  _6269 = saturate(((((_5288 * 0.9375f) - max(0.0f, dot(float3(_5255, _5261, _5266), float3((((mad((_invViewProjRelative[0].z), _6188, mad((_invViewProjRelative[0].y), _6193, ((_invViewProjRelative[0].x) * _6191))) + (_invViewProjRelative[0].w)) / _6205) - _5490), (((mad((_invViewProjRelative[1].z), _6188, mad((_invViewProjRelative[1].y), _6193, ((_invViewProjRelative[1].x) * _6191))) + (_invViewProjRelative[1].w)) / _6205) - _5491), (((mad((_invViewProjRelative[2].z), _6188, mad((_invViewProjRelative[2].y), _6193, ((_invViewProjRelative[2].x) * _6191))) + (_invViewProjRelative[2].w)) / _6205) - _5492))))) * ((_119 * 0.015625f) + 1.5f)) / _5288) * 0.9375f);
                } else {
                  _6269 = _6185;  // [sem: expr_sat]
                }
                _6285 = saturate(exp2(min(0.0f, (((_119 * 0.019f) + 0.1f) + (((_nearFarProj.x / max(1e-07f, _6189)) - (_nearFarProj.x / max(1e-07f, _6188))) * _6224))) * 1.442695f)) * _6269;
                _6286 = _6186 & -2;
                if (!(_6286 == 6)) {
                  if ((((_84 == 33) && (_6186 == 33)) || (!(_84 == 33) && ((_84 == 54) && (_6186 == 54))))) {
                    _6365 = (_6285 * 0.01f);
                  } else {
                    if (!((_6186 == 53) || (_6286 == 66)) || (((_6186 == 53) || (_6286 == 66)) && (!((_5149 == 66) || (_84 == 53))))) {
                      if (!_168) {
                        if ((uint)((int)((uint)((uint)(_6186)) + (uint)(-52))) < (uint)16) {
                          _6314 = saturate(_119 * 0.03125f);  // [sem: expr_sat]
                        } else {
                          _6314 = 1.0f;  // [sem: expr_sat]
                        }
                        _6365 = (_6314 * _6285);
                      } else {
                        _6365 = _6285;
                      }
                    } else {
                      // [sem: _3__36__0__0__g_baseColor_load]
                      _6325 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _6184)), ((int)(_bufferSizeAndInvSize.y * _6187)), 0));
                      _6331 = ((float)((uint)((uint)(((uint)((uint)(_6325.x)) >> 8) & 255)))) * 0.003921569f;
                      _6334 = ((float)((uint)((uint)(_6325.x & 255)))) * 0.003921569f;
                      _6338 = ((float)((uint)((uint)(((uint)((uint)(_6325.y)) >> 8) & 255)))) * 0.003921569f;
                      _6339 = _6331 * _6331;
                      _6340 = _6334 * _6334;
                      _6341 = _6338 * _6338;
                      _6365 = (saturate(1.0f - (dot(float3((((_6339 * 0.61312f) + (_6340 * 0.33951f)) + (_6341 * 0.04737f)), (((_6339 * 0.0702f) + (_6340 * 0.91636f)) + (_6341 * 0.01345f)), (((_6339 * 0.02062f) + (_6340 * 0.10958f)) + (_6341 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _6285);
                    }
                  }
                } else {
                  _6365 = (_6285 * 0.01f);
                }
              } else {
                _6365 = 0.0f;
              }
            }
          }
          break;
        }
      }
      _6369 = saturate(1.0f - _6365);  // [sem: expr_sat]
    } else {
      _6369 = 1.0f;  // [sem: expr_sat]
    }
    // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
    // Description: The native contact-shadow march is a short ray with very few steps, so it misses
    //              sub-pixel and small-scale occluders and leaves surface detail such as ground litter,
    //              pebbles, cloth folds and foliage sitting on the ground without any contact darkening.
    //              The pre-helper value is captured first so a later block can weigh the helper result
    //              against the unaided one. The shared depth-bias micro detail shadow helper re-marches
    //              the depth buffer with a continuous thickness window instead of a binary hit test and
    //              returns a darkened contact value; it returns its input unchanged when Contact Micro
    //              Shadows is Off, so the vanilla shadow value is preserved. The whole region is gated
    //              on the same native shadow-evaluation condition that seeds the ray carriers: when
    //              that gate is skipped the carriers were never given real values, and the native
    //              composite below takes min(gateValue, contactValue). On that edge the native else-branch
    //              sets contactValue to exactly 1.0 and gateValue is <= 0, so the min returns the gate value
    //              and the helper result could not affect the output there. The same holds if gateValue is
    //              NaN: the native if/else still yields 1.0 and the min resolves to the non-NaN operand, so
    //              gating actually restores vanilla for that pixel, where the un-gated form would have
    //              marched with unseeded carriers and could have returned less than 1.0. The gate makes the
    //              skip explicit instead of marching with unseeded carriers.
    if (_5146 > 0.0f) {
      float _rndxMicroBaseContact = _6369;
      _6369 = ApplyContactMicroDetailShadow(
          _6369,
          float2(_64, _65),
          _119,
          _84,
          float3(_rndxMicroDirX, _rndxMicroDirY, _rndxMicroDirZ),
          float3(_140, _149, _158),
          CONTACT_MICRO_DETAIL_STRENGTH_RT,
          (CONTACT_SHADOW_IS_FULL ? CONTACT_MICRO_FADE_SLOPE_RT_FULL : -0.025f),
          (CONTACT_SHADOW_IS_FULL ? CONTACT_MICRO_FADE_OFFSET_RT_FULL : 3.0f),
          CONTACT_MICRO_RANGE_NEAR_RT,
          CONTACT_MICRO_RANGE_FAR_RT,
          CONTACT_MICRO_THICKNESS_MULTIPLIER_RT,
          CONTACT_MICRO_OCCLUSION_SCALE_RT,
          CONTACT_MICRO_SELF_REJECT_PIXELS_RT,
          CONTACT_MICRO_SELF_FADE_PIXELS_RT,
          CONTACT_MICRO_FOLIAGE_THICKNESS_BOOST_RT,
          CONTACT_MICRO_FOLIAGE_OCCLUSION_BOOST_RT);
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: Final compositing step for the ray-traced contact lane. Both the unaided native
      //              contact value and the micro-detail-assisted value are deepened by the same
      //              quality-dependent final-strength gain, applied in occlusion space (1 - value) so the
      //              fully lit case stays fully lit. The two are then blended by distance to the frame
      //              border: the micro detail helper marches in screen space, so near the edges its ray
      //              walks out of the depth buffer, loses occluders and would otherwise leave an abrupt
      //              brightness seam, so the border falls back to the unaided value. The whole block is
      //              gated on the ray-traced tuning weight, which is 0 when Contact Micro Shadows is Off,
      //              leaving the vanilla value untouched.
      if (CONTACT_SHADOW_RT_TUNING > 0.f) {
        float _rndxMicroWithHelper = _6369;
        float _rndxMicroBaseBoosted = _rndxMicroBaseContact;
        float _rndxMicroHelperBoosted = _rndxMicroWithHelper;
        if (_rndxMicroBaseBoosted < 1.0f) {
          _rndxMicroBaseBoosted = saturate(1.0f - ((1.0f - _rndxMicroBaseBoosted) * lerp(1.0f, CONTACT_SHADOW_RT_FINAL_STRENGTH, CONTACT_SHADOW_RT_TUNING)));
        }
        if (_rndxMicroHelperBoosted < 1.0f) {
          _rndxMicroHelperBoosted = saturate(1.0f - ((1.0f - _rndxMicroHelperBoosted) * lerp(1.0f, CONTACT_SHADOW_RT_FINAL_STRENGTH, CONTACT_SHADOW_RT_TUNING)));
        }
        if (CONTACT_SHADOW_DETAIL_PATH == 1.f && _rndxMicroHelperBoosted < _rndxMicroBaseBoosted) {
          float2 _rndxMicroScreenUV = float2((_64 + 0.5f) * _bufferSizeAndInvSize.z,
                                             (_65 + 0.5f) * _bufferSizeAndInvSize.w);
          float2 _rndxMicroEdgeDist = min(_rndxMicroScreenUV, 1.0f - _rndxMicroScreenUV);
          float _rndxMicroEdgeFade = saturate(min(_rndxMicroEdgeDist.x, _rndxMicroEdgeDist.y) * 10.0f);
          _6369 = lerp(_rndxMicroBaseBoosted, _rndxMicroHelperBoosted, _rndxMicroEdgeFade);
        } else {
          _6369 = _rndxMicroHelperBoosted;
        }
      }
    }
    // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
    _6370 = min(_5146, _6369);
    _6394 = float(half(_6370 * float(_5132)));
    _6395 = float(half(_6370 * float(_5131)));
    _6396 = float(half(_6370 * float(_5130)));
    _6397 = saturate((1.0f - _554) + (exp2(log2(saturate(select(_168, (_5141 + 0.98f), _5141))) * 0.45454544f) * _554));  // [sem: expr_sat]
  }
  __3__38__0__1__g_shadowColorResultUAV[int2(_56, _63)] = float4((half)(half(_6394)), (half)(half(_6395)), (half)(half(_6396)), (half)(half(_6397)));
}
