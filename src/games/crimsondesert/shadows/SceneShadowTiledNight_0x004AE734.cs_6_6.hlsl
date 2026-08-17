// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the shared RenoDX option macros required by Contact Micro Shadows; this declaration changes no native output by itself.
#include "../shared.h"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

Texture2D<float4> __3__36__0__0__g_terrainShadowDepth : register(t41, space36);

Texture2DArray<float4> __3__36__0__0__g_dynamicShadowDepthArray : register(t237, space36);

Texture2DArray<half4> __3__36__0__0__g_dynamicShadowColorArray : register(t239, space36);

Texture2DArray<float4> __3__36__0__0__g_shadowDepthArray : register(t240, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t21, space36);

Texture2D<uint> __3__36__0__0__g_depthStencil : register(t52, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t24, space36);

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
    // Description: Zero-initialized carrier variables for the contact-shadow ray direction and ray
    //              origin used by the micro detail shadow helper later in this shader. The native
    //              temporaries they copy are only assigned inside the shadow-evaluation gate that
    //              follows; reading those raw temporaries at the helper call site outside the gate
    //              compiles to undefined values on the gate's skip edge (phi-undef in DXIL). The
    //              helper call is gated on the same condition, so the zero fallbacks are never
    //              actually marched; they exist so every control path carries defined values. These
    //              are storage only and do not affect any native computation.
    float _rndxMicroDirX = 0.0f;
    float _rndxMicroDirY = 0.0f;
    float _rndxMicroDirZ = 0.0f;
    float _rndxMicroWorldPosX = 0.0f;
    float _rndxMicroWorldPosY = 0.0f;
    float _rndxMicroWorldPosZ = 0.0f;
    // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
  int4 _30;
  int _40;
  int _44;
  uint _56;
  uint _57;
  float _58;
  float _59;
  float _67;
  float _70;
  uint _72;
  int _74;
  float _77;
  int _78;
  uint _80;
  float _96;
  float _97;
  float _98;
  float _100;
  float _101;
  float _102;
  float _103;
  bool _105;
  int _373;
  float _552;
  float _565;
  float _566;
  float _567;
  float _641;
  int _642;
  float _643;
  float _707;
  int _708;
  int _709;
  float _710;
  float _772;
  int _773;
  int _774;
  float _823;
  int _824;
  int _825;
  int _984;
  int _1504;
  float _1607;
  float _1608;
  half _1609;
  half _1610;
  half _1611;
  float _1663;
  float _1664;
  float _1665;
  float _1763;
  float _1777;
  int _1814;
  float _1820;
  float _1832;
  float _1841;
  float _1842;
  float _1843;
  int _1990;
  float _1991;
  float _1992;
  float _1993;
  float _1994;
  float _1995;
  int _1996;
  float _1997;
  float _1998;
  bool _2063;
  int _2070;
  float _2093;
  int _2113;
  float _2114;
  float _2138;
  float _2139;
  float _2140;
  float _2141;
  float _2142;
  float _2146;
  int _2278;
  float _2279;
  float _2280;
  float _2281;
  float _2282;
  float _2283;
  int _2284;
  float _2285;
  float _2286;
  bool _2351;
  int _2358;
  float _2381;
  int _2401;
  float _2402;
  float _2426;
  float _2427;
  float _2428;
  float _2429;
  float _2430;
  float _2434;
  int _2444;
  float _2445;
  float _2446;
  float _2447;
  float _2448;
  float _2449;
  float _2510;
  float _2512;
  float _2536;
  float _2609;
  float _2612;
  float _2616;
  float _2631;
  float _2632;
  float _2633;
  float _2634;
  float _108;
  float _112;
  float _113;
  float _149;
  float _150;
  float _151;
  float _152;
  float _154;
  int _167;
  bool _168;
  float _188;
  float _192;
  float _196;
  float _207;
  float _218;
  float _219;
  float _224;
  uint _240;
  uint _248;
  uint _256;
  uint _264;
  uint _272;
  uint _280;
  uint _288;
  uint _296;
  uint _304;
  uint _312;
  uint _320;
  uint _328;
  uint _336;
  uint _344;
  uint _352;
  uint _360;
  uint _378;
  float _385;
  float _391;
  float _392;
  float _394;
  float _401;
  float _403;
  float _405;
  float _406;
  float _411;
  float4 _415;
  float _420;
  float _425;
  float _427;
  float _434;
  float _444;
  float _445;
  float _450;
  float4 _452;
  float _461;
  float _463;
  float _470;
  float _481;
  float _482;
  float _487;
  float4 _489;
  float _498;
  float _500;
  float _507;
  float _518;
  float _519;
  float _524;
  float4 _526;
  float _535;
  float _537;
  float _544;
  float _555;
  bool _556;
  float _575;
  float _595;
  float _599;
  float _603;
  float _604;
  float _605;
  float _630;
  float _631;
  float _663;
  float _667;
  float _671;
  float _696;
  float _697;
  bool _711;
  float _719;
  float _720;
  float _721;
  float _726;
  float _727;
  float _728;
  float _748;
  float _752;
  float _756;
  float _757;
  float _758;
  float _779;
  float _780;
  float _781;
  float _801;
  float _805;
  float _809;
  uint _841;
  uint _849;
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
  bool _963;
  float _967;
  float _968;
  float _969;
  float _971;
  float _985;
  float _986;
  float _987;
  float _994;
  float _996;
  float _1000;
  float _1001;
  float _1002;
  float _1009;
  half4 _1016;
  float _1030;
  float _1031;
  half4 _1040;
  float _1056;
  float _1057;
  half4 _1066;
  float _1082;
  float _1083;
  half4 _1092;
  float _1108;
  float _1109;
  half4 _1118;
  float _1134;
  float _1135;
  half4 _1144;
  float _1160;
  float _1161;
  half4 _1170;
  float _1186;
  float _1187;
  half4 _1196;
  float _1212;
  float _1213;
  half4 _1222;
  float _1238;
  float _1239;
  half4 _1248;
  float _1264;
  float _1265;
  half4 _1274;
  float _1290;
  float _1291;
  half4 _1300;
  float _1316;
  float _1317;
  half4 _1326;
  float _1342;
  float _1343;
  half4 _1352;
  float _1368;
  float _1369;
  half4 _1378;
  float _1394;
  float _1395;
  half4 _1404;
  float _1410;
  float _1411;
  half _1466;
  half _1467;
  half _1468;
  float _1471;
  float _1472;
  float _1473;
  float _1474;
  float _1491;
  float _1492;
  float _1493;
  float _1505;
  float _1506;
  float _1513;
  float _1515;
  float _1519;
  float _1520;
  float _1521;
  float _1528;
  float _1544;
  float _1545;
  float _1566;
  float _1567;
  float _1588;
  float _1589;
  float _1600;
  float _1601;
  bool _1612;
  float _1614;
  float _1618;
  float _1633;
  int _1643;
  bool _1644;
  bool _1645;
  bool _1646;
  float _1647;
  int _1666;
  int _1670;
  uint _1676;
  int _1681;
  int _1686;
  float _1687;
  float _1698;
  float _1699;
  float _1704;
  float _1720;
  float _1724;
  float _1727;
  float _1730;
  float _1731;
  float _1733;
  float _1736;
  float _1737;
  float _1738;
  float _1739;
  float _1748;
  float _1752;
  float _1756;
  int _1757;
  float _1769;
  float _1783;
  bool _1790;
  float _1794;
  float _1836;
  float _1844;
  float _1845;
  float _1846;
  float _1859;
  float _1862;
  bool _1865;
  float _1869;
  float _1901;
  float _1905;
  float _1909;
  float _1910;
  float _1911;
  float _1927;
  float _1928;
  float _1929;
  float _1930;
  float _1934;
  float _1935;
  float _1938;
  float _1949;
  float _1950;
  float _1968;
  float _1969;
  float _1971;
  float _1973;
  float _1974;
  float _1981;
  float _1988;
  uint _2007;
  int _2009;
  float _2012;
  int _2013;
  bool _2014;
  float _2015;
  float _2019;
  float _2022;
  bool _2026;
  int _2027;
  float _2095;
  float _2098;
  int _2143;
  float _2156;
  float _2188;
  float _2192;
  float _2196;
  float _2197;
  float _2198;
  float _2214;
  float _2215;
  float _2216;
  float _2217;
  float _2221;
  float _2222;
  float _2225;
  float _2236;
  float _2237;
  float _2256;
  float _2257;
  float _2259;
  float _2261;
  float _2262;
  float _2269;
  float _2276;
  uint _2295;
  int _2297;
  float _2300;
  int _2301;
  bool _2302;
  float _2303;
  float _2307;
  float _2310;
  bool _2314;
  int _2315;
  float _2383;
  float _2386;
  int _2431;
  bool _2453;
  float _2467;
  float _2468;
  float _2484;
  bool _2503;
  float _2537;
  int _2538;
  uint4 _2564;
  float _2570;
  float _2573;
  float _2577;
  float _2578;
  float _2579;
  float _2580;
  float _2617;
  int __loop_jump_target = -1;
  int _16[4];
  float _24[2];
  float _25[2];
  float _26[2];
  _30 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _16[0] = _30.x;
  _16[1] = _30.y;
  _16[2] = _30.z;
  _16[3] = _30.w;
  _40 = _16[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _44 = select((((int)(SV_GroupID.x) & 16) == 0), _40, ((uint)((uint)(_40)) >> 16));
  _56 = (uint)((uint)((int)((int)(((int)((uint)((uint)(_44)) << 2)) & 1020) | (int)((int)(SV_GroupID.x) & 3)) << 3)) + (uint)(SV_GroupThreadID.x);
  _57 = (uint)((uint)((int)((int)(((uint)((uint)(_44)) >> 6) & 1020) | (int)(((uint)(SV_GroupID.x) >> 2) & 3)) << 3)) + (uint)(SV_GroupThreadID.y);
  _58 = (float)((uint)((uint)(_56)));
  _59 = (float)((uint)((uint)(_57)));
  _67 = ((_bufferSizeAndInvSize.z * 2.0f) * (_58 + 0.5f)) + -1.0f;
  _70 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (_59 + 0.5f));
  _72 = __3__36__0__0__g_depthStencil.Load(int3(_56, _57, 0));  // [sem: _3__36__0__0__g_depthStencil_load]
  _74 = (uint)((uint)(_72.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _77 = ((float)((uint)((uint)(_72.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _78 = _74 & 127;
  _80 = __3__36__0__0__g_sceneNormal.Load(int3(_56, _57, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
  _96 = min(1.0f, ((((float)((uint)((uint)(_80.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _97 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_80.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _98 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_80.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _100 = rsqrt(dot(float3(_96, _97, _98), float3(_96, _97, _98)));  // [sem: invLength]
  _101 = _100 * _96;
  _102 = _100 * _97;
  _103 = _100 * _98;
  _105 = (_77 == 1.0f);
  if ((_77 < 1e-07f) || _105) {
    _108 = select(_105, 0.0f, 1.0f);
    _2631 = _108;
    _2632 = _108;
    _2633 = _108;
    _2634 = _108;  // [sem: expr_sat]
  } else {
    _112 = max(1e-07f, _77);
    _113 = _nearFarProj.x / _112;
    _149 = mad((_invViewProjRelative[3].z), _112, mad((_invViewProjRelative[3].y), _70, ((_invViewProjRelative[3].x) * _67))) + (_invViewProjRelative[3].w);
    _150 = (mad((_invViewProjRelative[0].z), _112, mad((_invViewProjRelative[0].y), _70, ((_invViewProjRelative[0].x) * _67))) + (_invViewProjRelative[0].w)) / _149;
    _151 = (mad((_invViewProjRelative[1].z), _112, mad((_invViewProjRelative[1].y), _70, ((_invViewProjRelative[1].x) * _67))) + (_invViewProjRelative[1].w)) / _149;
    _152 = (mad((_invViewProjRelative[2].z), _112, mad((_invViewProjRelative[2].y), _70, ((_invViewProjRelative[2].x) * _67))) + (_invViewProjRelative[2].w)) / _149;
    _154 = rsqrt(dot(float3(_150, _151, _152), float3(_150, _151, _152)));  // [sem: invLength]
    _24[0] = 0.0f;
    _25[0] = 0.0f;
    _26[0] = 0.0f;
    _24[1] = 0.0f;
    _25[1] = 0.0f;
    _26[1] = 0.0f;
    _167 = (int)(_78) + (int)(-52);
    _168 = ((uint)_167 < (uint)16);
    _188 = mad((_terrainShadowProjRelativeTexScale[0].z), _152, mad((_terrainShadowProjRelativeTexScale[0].y), _151, ((_terrainShadowProjRelativeTexScale[0].x) * _150))) + (_terrainShadowProjRelativeTexScale[0].w);
    _192 = mad((_terrainShadowProjRelativeTexScale[1].z), _152, mad((_terrainShadowProjRelativeTexScale[1].y), _151, ((_terrainShadowProjRelativeTexScale[1].x) * _150))) + (_terrainShadowProjRelativeTexScale[1].w);
    _196 = mad((_terrainShadowProjRelativeTexScale[2].z), _152, mad((_terrainShadowProjRelativeTexScale[2].y), _151, ((_terrainShadowProjRelativeTexScale[2].x) * _150))) + (_terrainShadowProjRelativeTexScale[2].w);
    if (saturate(_188) == _188) {
      if ((_196 >= 0.0001f) && ((_196 <= 1.0f) && (saturate(_192) == _192))) {
        _207 = (float)((uint)((uint)(_frameNumber.x)));
        _218 = (frac(((_207 * 92.0f) + _58) * 0.0078125f) * 128.0f) + -64.34062f;
        _219 = (frac(((_207 * 71.0f) + _59) * 0.0078125f) * 128.0f) + -72.46562f;
        _224 = frac(dot(float3((_218 * _218), (_219 * _219), (_219 * _218)), float3(20.390625f, 60.703125f, 2.4281209f)));
        _240 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_59 * _bufferSizeAndInvSize.x) + _58));
        _248 = (uint)((uint)((((int)((uint)((uint)((uint)(_240)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_240)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_240)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _256 = (uint)((uint)((((int)((uint)((uint)((uint)(_248)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_248)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_248)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_240));
        _264 = (uint)((uint)((((int)((uint)((uint)((uint)(_256)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_256)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_256)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_248));
        _272 = (uint)((uint)((((int)((uint)((uint)((uint)(_264)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_264)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_264)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_256));
        _280 = (uint)((uint)((((int)((uint)((uint)((uint)(_272)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_272)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_272)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_264));
        _288 = (uint)((uint)((((int)((uint)((uint)((uint)(_280)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_280)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_280)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_272));
        _296 = (uint)((uint)((((int)((uint)((uint)((uint)(_288)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_288)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_288)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_280));
        _304 = (uint)((uint)((((int)((uint)((uint)((uint)(_296)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_296)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_296)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_288));
        _312 = (uint)((uint)((((int)((uint)((uint)((uint)(_304)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_304)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_304)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_296));
        _320 = (uint)((uint)((((int)((uint)((uint)((uint)(_312)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_312)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_312)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_304));
        _328 = (uint)((uint)((((int)((uint)((uint)((uint)(_320)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_320)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_320)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_312));
        _336 = (uint)((uint)((((int)((uint)((uint)((uint)(_328)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_328)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_328)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_320));
        _344 = (uint)((uint)((((int)((uint)((uint)((uint)(_336)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_336)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_336)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_328));
        _352 = (uint)((uint)((((int)((uint)((uint)((uint)(_344)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_344)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_344)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_336));
        _360 = (uint)((uint)((((int)((uint)((uint)((uint)(_352)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_352)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_352)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_344));
        if ((_352 & 16777215) == 0) {
          _373 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_360)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_360)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_360)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_352))));
        } else {
          _373 = _352;
        }
        _378 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_373)) * (uint)(48271))) & 16777215)))) * 3.8146377e-06f);
        _385 = frac((((float)((uint)((uint)(_378)))) * 0.015625f) + (((float)((uint)((uint)(((int)((uint)(_224 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f));
        _391 = (_385 * 2.0f) + -1.0f;
        _392 = (((float)((uint)((uint)(reversebits(_378) ^ ((int)((uint)(_224 * 2.8747837e+08f))))))) * 4.656613e-10f) + -1.0f;
        _394 = rsqrt(dot(float2(_391, _392), float2(_391, _392)));  // [sem: invLength]
        _401 = ((_385 * 0.0009765625f) + -0.00048828125f) * _394;
        _403 = (_392 * _394) * 0.00048828125f;
        _405 = (_401 * (_jitterOffset[0].x)) + _188;
        _406 = (_403 * (_jitterOffset[0].y)) + _192;
        _411 = frac((_405 * 1024.0f) + -0.5f);
        _415 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_405, _406));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _420 = _196 + -0.005f;
        _425 = select((_415.w > _420), 1.0f, 0.0f);
        _427 = select((_415.x > _420), 1.0f, 0.0f);
        _434 = ((select((_415.z > _420), 1.0f, 0.0f) - _425) * _411) + _425;
        _444 = ((_jitterOffset[1].x) * _401) + _188;
        _445 = ((_jitterOffset[1].y) * _403) + _192;
        _450 = frac((_444 * 1024.0f) + -0.5f);
        _452 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_444, _445));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _461 = select((_452.w > _420), 1.0f, 0.0f);
        _463 = select((_452.x > _420), 1.0f, 0.0f);
        _470 = ((select((_452.z > _420), 1.0f, 0.0f) - _461) * _450) + _461;
        _481 = ((_jitterOffset[2].x) * _401) + _188;
        _482 = ((_jitterOffset[2].y) * _403) + _192;
        _487 = frac((_481 * 1024.0f) + -0.5f);
        _489 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_481, _482));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _498 = select((_489.w > _420), 1.0f, 0.0f);
        _500 = select((_489.x > _420), 1.0f, 0.0f);
        _507 = ((select((_489.z > _420), 1.0f, 0.0f) - _498) * _487) + _498;
        _518 = ((_jitterOffset[3].x) * _401) + _188;
        _519 = ((_jitterOffset[3].y) * _403) + _192;
        _524 = frac((_518 * 1024.0f) + -0.5f);
        _526 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_518, _519));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _535 = select((_526.w > _420), 1.0f, 0.0f);
        _537 = select((_526.x > _420), 1.0f, 0.0f);
        _544 = ((select((_526.z > _420), 1.0f, 0.0f) - _535) * _524) + _535;
        _552 = ((((saturate((((((select((_452.y > _420), 1.0f, 0.0f) - _463) * _450) + _463) - _470) * frac((_445 * 1024.0f) + -0.5f)) + _470) + saturate((((((select((_415.y > _420), 1.0f, 0.0f) - _427) * _411) + _427) - _434) * frac((_406 * 1024.0f) + -0.5f)) + _434)) + saturate((((((select((_489.y > _420), 1.0f, 0.0f) - _500) * _487) + _500) - _507) * frac((_482 * 1024.0f) + -0.5f)) + _507)) + saturate((((((select((_526.y > _420), 1.0f, 0.0f) - _537) * _524) + _537) - _544) * frac((_519 * 1024.0f) + -0.5f)) + _544)) * 0.25f);
      } else {
        _552 = 1.0f;
      }
    } else {
      _552 = 1.0f;
    }
    _555 = min(max((_113 * 0.002f), 0.005f), 0.5f);
    _556 = ((uint)_167 > (uint)15);
    if (_556) {
      _565 = ((_555 * _101) + _150);
      _566 = ((_555 * _102) + _151);
      _567 = ((_555 * _103) + _152);
    } else {
      _565 = _150;
      _566 = _151;
      _567 = _152;
    }
    _575 = sqrt(((_151 * _151) + (_150 * _150)) + (_152 * _152));
    _595 = mad((_dynamicShadowProjRelativeTexScale[1][0].z), _567, mad((_dynamicShadowProjRelativeTexScale[1][0].y), _566, ((_dynamicShadowProjRelativeTexScale[1][0].x) * _565))) + (_dynamicShadowProjRelativeTexScale[1][0].w);
    _599 = mad((_dynamicShadowProjRelativeTexScale[1][1].z), _567, mad((_dynamicShadowProjRelativeTexScale[1][1].y), _566, ((_dynamicShadowProjRelativeTexScale[1][1].x) * _565))) + (_dynamicShadowProjRelativeTexScale[1][1].w);
    _603 = mad((_dynamicShadowProjRelativeTexScale[1][2].z), _567, mad((_dynamicShadowProjRelativeTexScale[1][2].y), _566, ((_dynamicShadowProjRelativeTexScale[1][2].x) * _565))) + (_dynamicShadowProjRelativeTexScale[1][2].w);
    _604 = 4.0f / _dynmaicShadowSizeAndInvSize.y;
    _605 = 1.0f - _604;
    if (!(((!(_595 <= _605)) || (!(_595 >= _604))) || (!(_599 <= _605)))) {
      if ((_575 < 128.0f) && ((_603 >= -1.0f) && ((_603 <= 1.0f) && (_599 >= _604)))) {
        _630 = max(0.0f, ((abs((_595 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
        _631 = max(0.0f, ((abs((_599 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
        _24[1] = _595;
        _25[1] = _599;
        _26[1] = _603;
        _641 = select((_terrainNormalParams.y > 0.0f), 2e-05f, 8e-05f);
        _642 = 1;
        _643 = sqrt((_631 * _631) + (_630 * _630));
      } else {
        _641 = 0.0f;
        _642 = 0;
        _643 = 0.0f;
      }
    } else {
      _641 = 0.0f;
      _642 = 0;
      _643 = 0.0f;
    }
    _663 = mad((_dynamicShadowProjRelativeTexScale[0][0].z), _567, mad((_dynamicShadowProjRelativeTexScale[0][0].y), _566, ((_dynamicShadowProjRelativeTexScale[0][0].x) * _565))) + (_dynamicShadowProjRelativeTexScale[0][0].w);
    _667 = mad((_dynamicShadowProjRelativeTexScale[0][1].z), _567, mad((_dynamicShadowProjRelativeTexScale[0][1].y), _566, ((_dynamicShadowProjRelativeTexScale[0][1].x) * _565))) + (_dynamicShadowProjRelativeTexScale[0][1].w);
    _671 = mad((_dynamicShadowProjRelativeTexScale[0][2].z), _567, mad((_dynamicShadowProjRelativeTexScale[0][2].y), _566, ((_dynamicShadowProjRelativeTexScale[0][2].x) * _565))) + (_dynamicShadowProjRelativeTexScale[0][2].w);
    if (!(((!(_663 >= _604)) || (!(_663 <= _605))) || (!(_667 <= _605)))) {
      if ((_575 < 128.0f) && ((_671 >= -1.0f) && ((_667 >= _604) && (_671 <= 1.0f)))) {
        _696 = max(0.0f, ((abs((_663 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
        _697 = max(0.0f, ((abs((_667 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
        _24[0] = _663;
        _25[0] = _667;
        _26[0] = _671;
        _707 = select((_terrainNormalParams.y > 0.0f), 5e-06f, 2e-05f);
        _708 = 1;
        _709 = 0;
        _710 = sqrt((_697 * _697) + (_696 * _696));
      } else {
        _707 = _641;
        _708 = _642;
        _709 = _642;
        _710 = _643;
      }
    } else {
      _707 = _641;
      _708 = _642;
      _709 = _642;
      _710 = _643;
    }
    _711 = (_708 == 0);
    [branch]
    if (_711) {
      _719 = _viewPos.x + _565;
      _720 = _viewPos.y + _566;
      _721 = _viewPos.z + _567;
      _726 = _719 - (_staticShadowPosition[1].x);
      _727 = _720 - (_staticShadowPosition[1].y);
      _728 = _721 - (_staticShadowPosition[1].z);
      _748 = mad((_shadowProjRelativeTexScale[1][0].z), _728, mad((_shadowProjRelativeTexScale[1][0].y), _727, ((_shadowProjRelativeTexScale[1][0].x) * _726))) + (_shadowProjRelativeTexScale[1][0].w);
      _752 = mad((_shadowProjRelativeTexScale[1][1].z), _728, mad((_shadowProjRelativeTexScale[1][1].y), _727, ((_shadowProjRelativeTexScale[1][1].x) * _726))) + (_shadowProjRelativeTexScale[1][1].w);
      _756 = mad((_shadowProjRelativeTexScale[1][2].z), _728, mad((_shadowProjRelativeTexScale[1][2].y), _727, ((_shadowProjRelativeTexScale[1][2].x) * _726))) + (_shadowProjRelativeTexScale[1][2].w);
      _757 = 2.0f / _shadowSizeAndInvSize.y;
      _758 = 1.0f - _757;
      if (!(((!(_748 <= _758)) || (!(_748 >= _757))) || (!(_752 <= _758)))) {
        if ((_756 >= 0.0001f) && ((_756 <= 1.0f) && (_752 >= _757))) {
          _24[1] = _748;
          _25[1] = _752;
          _26[1] = _756;
          _772 = 0.0002f;
          _773 = 1;
          _774 = 1;
        } else {
          _772 = _707;
          _773 = 0;
          _774 = _709;
        }
      } else {
        _772 = _707;
        _773 = 0;
        _774 = _709;
      }
      _779 = _719 - (_staticShadowPosition[0].x);
      _780 = _720 - (_staticShadowPosition[0].y);
      _781 = _721 - (_staticShadowPosition[0].z);
      _801 = mad((_shadowProjRelativeTexScale[0][0].z), _781, mad((_shadowProjRelativeTexScale[0][0].y), _780, ((_shadowProjRelativeTexScale[0][0].x) * _779))) + (_shadowProjRelativeTexScale[0][0].w);
      _805 = mad((_shadowProjRelativeTexScale[0][1].z), _781, mad((_shadowProjRelativeTexScale[0][1].y), _780, ((_shadowProjRelativeTexScale[0][1].x) * _779))) + (_shadowProjRelativeTexScale[0][1].w);
      _809 = mad((_shadowProjRelativeTexScale[0][2].z), _781, mad((_shadowProjRelativeTexScale[0][2].y), _780, ((_shadowProjRelativeTexScale[0][2].x) * _779))) + (_shadowProjRelativeTexScale[0][2].w);
      if (!(((!(_801 >= _757)) || (!(_801 <= _758))) || (!(_805 <= _758)))) {
        if ((_809 >= 0.0001f) && ((_805 >= _757) && (_809 <= 1.0f))) {
          _24[0] = _801;
          _25[0] = _805;
          _26[0] = _809;
          _823 = 0.0002f;
          _824 = 1;
          _825 = 0;
        } else {
          _823 = _772;
          _824 = _773;
          _825 = _774;
        }
      } else {
        _823 = _772;
        _824 = _773;
        _825 = _774;
      }
    } else {
      _823 = _707;
      _824 = 1;
      _825 = _709;
    }
    _841 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_59 * _bufferSizeAndInvSize.x) + _58));
    _849 = (uint)((uint)((((int)((uint)((uint)((uint)(_841)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_841)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_841)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
    _857 = (uint)((uint)((((int)((uint)((uint)((uint)(_849)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_849)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_849)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_841));
    _865 = (uint)((uint)((((int)((uint)((uint)((uint)(_857)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_857)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_857)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_849));
    _873 = (uint)((uint)((((int)((uint)((uint)((uint)(_865)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_865)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_865)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_857));
    _881 = (uint)((uint)((((int)((uint)((uint)((uint)(_873)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_873)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_873)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_865));
    _889 = (uint)((uint)((((int)((uint)((uint)((uint)(_881)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_881)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_881)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_873));
    _897 = (uint)((uint)((((int)((uint)((uint)((uint)(_889)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_889)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_889)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_881));
    _905 = (uint)((uint)((((int)((uint)((uint)((uint)(_897)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_897)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_897)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_889));
    _913 = (uint)((uint)((((int)((uint)((uint)((uint)(_905)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_905)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_905)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_897));
    _921 = (uint)((uint)((((int)((uint)((uint)((uint)(_913)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_913)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_913)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_905));
    _929 = (uint)((uint)((((int)((uint)((uint)((uint)(_921)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_921)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_921)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_913));
    _937 = (uint)((uint)((((int)((uint)((uint)((uint)(_929)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_929)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_929)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_921));
    _945 = (uint)((uint)((((int)((uint)((uint)((uint)(_937)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_937)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_937)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_929));
    _953 = (uint)((uint)((((int)((uint)((uint)((uint)(_945)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_945)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_945)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_937));
    _961 = (uint)((uint)((((int)((uint)((uint)((uint)(_953)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_953)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_953)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_945));
    _963 = ((_953 & 16777215) == 0);
    [branch]
    if (_711) {
      _1491 = _24[min((uint)(_825), 1u)];
      _1492 = _25[min((uint)(_825), 1u)];
      _1493 = _26[min((uint)(_825), 1u)];
      if (_963) {
        _1504 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_961)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_961)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_961)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_953))));
      } else {
        _1504 = _953;
      }
      _1505 = _shadowSizeAndInvSize.z * 2.0f;
      _1506 = _shadowSizeAndInvSize.w * 2.0f;
      _1513 = _shadowSizeAndInvSize.z * 2.3841858e-07f;
      _1515 = _shadowSizeAndInvSize.w * 2.3841858e-07f;
      _1519 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1504)) * (uint)(48271))) & 16777215)))) * _1513) - _1505) + _1491;
      _1520 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1504)) * (uint)(-1964877855))) & 16777215)))) * _1515) - _1506) + _1492;
      _1521 = (float)((uint)((uint)(_825)));
      _1528 = _1493 - _823;
      _1544 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1504)) * (uint)(-856141137))) & 16777215)))) * _1513) - _1505) + _1491;
      _1545 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1504)) * (uint)(-613502015))) & 16777215)))) * _1515) - _1506) + _1492;
      _1566 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1504)) * (uint)(-556260145))) & 16777215)))) * _1513) - _1505) + _1491;
      _1567 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1504)) * (uint)(902075297))) & 16777215)))) * _1515) - _1506) + _1492;
      _1588 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1504)) * (uint)(1698214639))) & 16777215)))) * _1513) - _1505) + _1491;
      _1589 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1504)) * (uint)(773027713))) & 16777215)))) * _1515) - _1506) + _1492;
      _1600 = (((saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1544, _1545, _1521), _1528)).x)) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1519, _1520, _1521), _1528)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1566, _1567, _1521), _1528)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1588, _1589, _1521), _1528)).x))) * 0.25f;
      _1601 = (((max(0.0f, (_1493 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1544, _1545, _1521), 0.0f))).x))) + max(0.0f, (_1493 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1519, _1520, _1521), 0.0f))).x)))) + max(0.0f, (_1493 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1566, _1567, _1521), 0.0f))).x)))) + max(0.0f, (_1493 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1588, _1589, _1521), 0.0f))).x)))) * 0.25f;
      _1607 = saturate(_1600 * _1600);  // [sem: expr_sat]
      _1608 = saturate(_1601 * _1601);  // [sem: expr_sat]
      _1609 = 1.0h;
      _1610 = 1.0h;
      _1611 = 1.0h;
    } else {
      _967 = _24[min((uint)(_825), 1u)];
      _968 = _25[min((uint)(_825), 1u)];
      _969 = _26[min((uint)(_825), 1u)];
      _971 = select((_825 == 0), 2.5f, 1.0f);
      if (_963) {
        _984 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_961)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_961)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_961)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_953))));
      } else {
        _984 = _953;
      }
      _985 = select(_168, (_971 * 0.75f), _971) * 0.66f;
      _986 = _985 * _dynmaicShadowSizeAndInvSize.z;
      _987 = _985 * _dynmaicShadowSizeAndInvSize.w;
      _994 = _986 * 1.1920929e-07f;
      _996 = _987 * 1.1920929e-07f;
      _1000 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(48271))) & 16777215)))) * _994) - _986) + _967;
      _1001 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(-1964877855))) & 16777215)))) * _996) - _987) + _968;
      _1002 = (float)((uint)((uint)(_825)));
      _1009 = _969 - _823;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1016 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1000, _1001, _1002), 0.0f);
      _1030 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(-856141137))) & 16777215)))) * _994) - _986) + _967;
      _1031 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(-613502015))) & 16777215)))) * _996) - _987) + _968;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1040 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1030, _1031, _1002), 0.0f);
      _1056 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(-556260145))) & 16777215)))) * _994) - _986) + _967;
      _1057 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(902075297))) & 16777215)))) * _996) - _987) + _968;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1066 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1056, _1057, _1002), 0.0f);
      _1082 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(1698214639))) & 16777215)))) * _994) - _986) + _967;
      _1083 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(773027713))) & 16777215)))) * _996) - _987) + _968;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1092 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1082, _1083, _1002), 0.0f);
      _1108 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(144866575))) & 16777215)))) * _994) - _986) + _967;
      _1109 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(647683937))) & 16777215)))) * _996) - _987) + _968;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1118 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1108, _1109, _1002), 0.0f);
      _1134 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(1284375343))) & 16777215)))) * _994) - _986) + _967;
      _1135 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(229264193))) & 16777215)))) * _996) - _987) + _968;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1144 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1134, _1135, _1002), 0.0f);
      _1160 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(-1318861489))) & 16777215)))) * _994) - _986) + _967;
      _1161 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(1537293089))) & 16777215)))) * _996) - _987) + _968;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1170 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1160, _1161, _1002), 0.0f);
      _1186 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(-1770241169))) & 16777215)))) * _994) - _986) + _967;
      _1187 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(1357852417))) & 16777215)))) * _996) - _987) + _968;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1196 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1186, _1187, _1002), 0.0f);
      _1212 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(-601883249))) & 16777215)))) * _994) - _986) + _967;
      _1213 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(1947444961))) & 16777215)))) * _996) - _987) + _968;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1222 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1212, _1213, _1002), 0.0f);
      _1238 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(1166504879))) & 16777215)))) * _994) - _986) + _967;
      _1239 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(1335763649))) & 16777215)))) * _996) - _987) + _968;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1248 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1238, _1239, _1002), 0.0f);
      _1264 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(-1696913969))) & 16777215)))) * _994) - _986) + _967;
      _1265 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(1882071713))) & 16777215)))) * _996) - _987) + _968;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1274 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1264, _1265, _1002), 0.0f);
      _1290 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(-1959554065))) & 16777215)))) * _994) - _986) + _967;
      _1291 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(-1569511807))) & 16777215)))) * _996) - _987) + _968;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1300 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1290, _1291, _1002), 0.0f);
      _1316 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(1318665743))) & 16777215)))) * _994) - _986) + _967;
      _1317 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(1898753633))) & 16777215)))) * _996) - _987) + _968;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1326 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1316, _1317, _1002), 0.0f);
      _1342 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(134521903))) & 16777215)))) * _994) - _986) + _967;
      _1343 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(-483771839))) & 16777215)))) * _996) - _987) + _968;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1352 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1342, _1343, _1002), 0.0f);
      _1368 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(-413252017))) & 16777215)))) * _994) - _986) + _967;
      _1369 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(2034977313))) & 16777215)))) * _996) - _987) + _968;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1378 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1368, _1369, _1002), 0.0f);
      _1394 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(192849007))) & 16777215)))) * _994) - _986) + _967;
      _1395 = ((((float)((uint)((uint)(((int)((uint)((uint)(_984)) * (uint)(1820286465))) & 16777215)))) * _996) - _987) + _968;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1404 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1394, _1395, _1002), 0.0f);
      _1410 = (((((((((((((((saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1030, _1031, _1002), _1009)).x)) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1000, _1001, _1002), _1009)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1056, _1057, _1002), _1009)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1082, _1083, _1002), _1009)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1108, _1109, _1002), _1009)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1134, _1135, _1002), _1009)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1160, _1161, _1002), _1009)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1186, _1187, _1002), _1009)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1212, _1213, _1002), _1009)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1238, _1239, _1002), _1009)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1264, _1265, _1002), _1009)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1290, _1291, _1002), _1009)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1316, _1317, _1002), _1009)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1342, _1343, _1002), _1009)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1368, _1369, _1002), _1009)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1394, _1395, _1002), _1009)).x))) * 0.0625f;
      _1411 = (((((((((((((((max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1030, _1031, _1002), 0.0f))).x))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1000, _1001, _1002), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1056, _1057, _1002), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1082, _1083, _1002), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1108, _1109, _1002), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1134, _1135, _1002), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1160, _1161, _1002), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1186, _1187, _1002), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1212, _1213, _1002), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1238, _1239, _1002), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1264, _1265, _1002), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1290, _1291, _1002), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1316, _1317, _1002), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1342, _1343, _1002), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1368, _1369, _1002), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1394, _1395, _1002), 0.0f))).x)))) * 0.0625f;
      _1466 = half(float(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)((half)(_1040.x) + (half)(_1016.x))) + (half)(_1066.x))) + (half)(_1092.x))) + (half)(_1118.x))) + (half)(_1144.x))) + (half)(_1170.x))) + (half)(_1196.x))) + (half)(_1222.x))) + (half)(_1248.x))) + (half)(_1274.x))) + (half)(_1300.x))) + (half)(_1326.x))) + (half)(_1352.x))) + (half)(_1378.x))) + ((half)((half)(_1404.x) * 2.0h))) * 0.05882353f);
      _1467 = half(float(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)((half)(_1040.y) + (half)(_1016.y))) + (half)(_1066.y))) + (half)(_1092.y))) + (half)(_1118.y))) + (half)(_1144.y))) + (half)(_1170.y))) + (half)(_1196.y))) + (half)(_1222.y))) + (half)(_1248.y))) + (half)(_1274.y))) + (half)(_1300.y))) + (half)(_1326.y))) + (half)(_1352.y))) + (half)(_1378.y))) + ((half)((half)(_1404.y) * 2.0h))) * 0.05882353f);
      _1468 = half(float(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)((half)(_1040.z) + (half)(_1016.z))) + (half)(_1066.z))) + (half)(_1092.z))) + (half)(_1118.z))) + (half)(_1144.z))) + (half)(_1170.z))) + (half)(_1196.z))) + (half)(_1222.z))) + (half)(_1248.z))) + (half)(_1274.z))) + (half)(_1300.z))) + (half)(_1326.z))) + (half)(_1352.z))) + (half)(_1378.z))) + ((half)((half)(_1404.z) * 2.0h))) * 0.05882353f);
      if (_825 == 1) {
        _1471 = float(_1466);
        _1472 = float(_1467);
        _1473 = float(_1468);
        _1474 = -0.0f - _710;
        _1607 = _1410;  // [sem: expr_sat]
        _1608 = _1411;  // [sem: expr_sat]
        _1609 = (half)(half((_1471 + _710) + (_1471 * _1474)));
        _1610 = (half)(half((_1472 + _710) + (_1472 * _1474)));
        _1611 = (half)(half((_1473 + _710) + (_1473 * _1474)));
      } else {
        _1607 = _1410;  // [sem: expr_sat]
        _1608 = _1411;  // [sem: expr_sat]
        _1609 = _1466;
        _1610 = _1467;
        _1611 = _1468;
      }
    }
    _1612 = (_824 != 0);
    _1614 = min(_552, select(_1612, _1607, 1.0f));
    _1618 = select((_708 != 0), select(_1612, (_1608 * 400.0f), 4e+06f), 1.0f);
    _1633 = (_1614 - (_shadowAOParams.x * _1614)) + _shadowAOParams.x;
    [branch]
    if (_1633 > 0.0f) {
      _1643 = _74 & 126;
      _1644 = (_1643 == 64);
      _1645 = (_78 == 66);
      _1646 = _1644 || _1645;
      _1647 = select(_1646, 2.0f, 4.0f);
      if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
        _1663 = _sunDirection.x;
        _1664 = _sunDirection.y;
        _1665 = _sunDirection.z;
      } else {
        _1663 = _moonDirection.x;
        _1664 = _moonDirection.y;
        _1665 = _moonDirection.z;
      }
      _1666 = _56 & 3;
      _1670 = _57 & 3;
      _1676 = (uint)((uint)((uint)(_frameNumber.x)) * (uint)(1551)) + (uint)((uint)((int)(((int)((int)((int)(_1670) << 1) | (int)(_1670)) << 1) & 10) | (int)(((int)((int)(_1666) << 1) | (int)(_1666)) & 5)));
      _1681 = (int)(((int)((uint)((uint)(_1676)) << 2)) & -858993460) | (int)(((uint)((uint)(_1676)) >> 2) & 858993459);
      _1686 = (int)(((int)((uint)((uint)(_1681)) << 1)) & 10) | (int)(((uint)((uint)(_1681)) >> 1) & 21);
      _1687 = (float)((uint)((uint)(_frameNumber.x)));
      _1698 = (frac(((_1687 * 92.0f) + _58) * 0.0078125f) * 128.0f) + -64.34062f;
      _1699 = (frac(((_1687 * 71.0f) + _59) * 0.0078125f) * 128.0f) + -72.46562f;
      _1704 = frac(dot(float3((_1698 * _1698), (_1699 * _1699), (_1699 * _1698)), float3(20.390625f, 60.703125f, 2.4281209f)));
      _1720 = frac((((float)((uint)((uint)(((int)((uint)(_1704 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f) + (((float)((uint)((uint)(_1686)))) * 0.03125f)) * 6.2831855f;
      _1724 = (((1.0f - _shadowAOParams.z) * 2.3283064e-10f) * ((float)((uint)((uint)(reversebits(_1686) ^ ((int)((uint)(_1704 * 2.8747837e+08f)))))))) + _shadowAOParams.z;
      _1727 = sqrt(1.0f - (_1724 * _1724));
      _1730 = cos(_1720) * _1727;
      _1731 = sin(_1720) * _1727;
      _1733 = select((_1665 >= 0.0f), 1.0f, -1.0f);
      _1736 = -0.0f - (1.0f / (_1733 + _1665));
      _1737 = _1664 * _1736;
      _1738 = _1737 * _1663;
      _1739 = _1733 * _1663;
      _1748 = mad(_1724, _1663, mad(_1731, _1738, ((((_1739 * _1663) * _1736) + 1.0f) * _1730)));
      _1752 = mad(_1724, _1664, mad(_1731, (_1733 + (_1737 * _1664)), ((_1730 * _1733) * _1738)));
      _1756 = mad(_1724, _1665, mad(_1731, (-0.0f - _1664), (-0.0f - (_1739 * _1730))));
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: The vanilla contact-shadow ray direction is the sun/moon direction rotated onto a
      //              randomly sampled cone that changes every frame, which the shadow denoiser is expected
      //              to resolve. Contact Micro Shadows adds extra sub-pixel occlusion on top of this march,
      //              and the per-frame cone wobble makes that added detail crawl and shimmer between frames.
      //              While any Contact Micro Shadows quality level is active this substitutes the unrotated
      //              light direction so the added detail is temporally stable; with the feature Off the
      //              vanilla jittered direction is left untouched.
      if (CONTACT_SHADOW_STABLE_DIRECTION == 1.f) {
        _1748 = _1663;
        _1752 = _1664;
        _1756 = _1665;
      }
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      _1757 = select(_1644, 10, 8);
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: The vanilla screen-space contact-shadow ray takes only 8 or 10 march steps depending
      //              on the material class, which undersamples thin and small occluders and leaves gaps in
      //              the contact darkening. While a Contact Micro Shadows quality level is active this
      //              raises the step count toward 16 in proportion to the selected quality; with the
      //              feature Off the vanilla step count is used unchanged.
      if (CONTACT_SHADOW_DETAIL_PATH == 1.f) {
        _1757 = (int)(lerp(float(_1757), 16.0f, CONTACT_SHADOW_MARCH_BLEND) + 0.5f);
      }
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      if (!_168) {
        _1763 = min(0.5f, ((_113 * 0.0025f) + 0.25f));
      } else {
        _1763 = 1.0f;
      }
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: Sets how far along the light direction the non-ray-traced contact shadow is allowed to
      //              march. Vanilla caps this path at a 0.01 world-space reach, which is too short to pick
      //              up contact occlusion from anything larger than immediate sub-pixel detail. The lerp
      //              extends the reach toward 0.05 in proportion to the Contact Micro Shadows quality; at
      //              the Off value the lerp returns the vanilla 0.01 exactly, leaving the march unchanged.
      _1769 = ((abs(_1664) * (select(_1646, 12.0f, 2.0f) - _1647)) + _1647) * select(_168, lerp(0.01f, 0.05f, CONTACT_SHADOW_REACH_BLEND), 0.1f);
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      if (!_168) {
        _1777 = max((_113 * select(((uint)((int)(_78) + (int)(-11)) < (uint)9), 0.008f, 0.03f)), _1769);
      } else {
        _1777 = _1769;
      }
      // [sem: expr_sat]
      _1783 = saturate(((_113 * 0.01f) * (1.0f - saturate(dot(float3(_101, _102, _103), float3((-0.0f - (_150 * _154)), (-0.0f - (_151 * _154)), (-0.0f - (_152 * _154))))))) + 0.01f);
      _1790 = (_terrainNormalParams.z > 0.0f);
      if (_1790) {
        _1794 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 255)));
        _1820 = frac(frac(dot(float2(((_1794 * 32.665f) + _58), ((_1794 * 11.815f) + _59)), float2(0.06711056f, 0.00583715f))) * 52.982918f);
      } else {
        if (_963) {
          _1814 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_961)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_961)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_961)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_953))));
        } else {
          _1814 = _953;
        }
        _1820 = (((float)((uint)((uint)(((int)((uint)((uint)(_1814)) * (uint)(48271))) & 16777215)))) * 5.9604645e-08f);
      }
      if ((_78 == 15) && (!(_1645 || ((_78 != 15) && ((uint)((int)(_78) + (int)(-12)) < (uint)7))))) {
        // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
        // Description: The contact ray's first sample is offset by a per-pixel random value scaled by this
        //              factor, so neighbouring pixels start at different distances and the march dithers
        //              instead of banding. On this depth-faded material branch vanilla scales the random by
        //              up to 10 units, which pushes the first sample past small nearby occluders and loses
        //              their contact darkening entirely. The lerp pulls the start scale toward 2 as the
        //              Contact Micro Shadows quality rises; at the Off value it returns the vanilla scale
        //              exactly.
        _1832 = ((lerp((10.0f - (saturate(_113 * 0.001f) * 9.0f)), 2.0f, CONTACT_SHADOW_START_BLEND)) * _1820);
        // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      } else {
        _1832 = _1820;
      }
      if (!_1790) {
        _1836 = saturate(_113 * 0.0625f) * 0.05f;
        _1841 = (_1836 * _101);
        _1842 = (_1836 * _102);
        _1843 = (_1836 * _103);
      } else {
        _1841 = 0.0f;
        _1842 = 0.0f;
        _1843 = 0.0f;
      }
      _1844 = _1841 + _150;
      _1845 = _1842 + _151;
      _1846 = _1843 + _152;
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: Seeds the contact-shadow ray carriers with the dominant light direction and the
      //              world-space march origin the native contact path just computed. Runs on the main
      //              path of the native shadow-evaluation gate, so the carriers hold the native values
      //              on every path that can reach the micro detail helper call (which is gated on the
      //              same condition). This block only copies values and changes no native result.
      _rndxMicroDirX = _1663;
      _rndxMicroDirY = _1664;
      _rndxMicroDirZ = _1665;
      _rndxMicroWorldPosX = _1844;
      _rndxMicroWorldPosY = _1845;
      _rndxMicroWorldPosZ = _1846;
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      _1859 = mad((_viewRelative[2].z), _1846, mad((_viewRelative[2].y), _1845, ((_viewRelative[2].x) * _1844))) + (_viewRelative[2].w);
      _1862 = mad((_viewRelative[2].z), _1756, mad((_viewRelative[2].y), _1752, ((_viewRelative[2].x) * _1748)));
      _1865 = (((_1862 * _1777) + _1859) < _nearFarProj.x);
      if (_113 < 8.0f) {
        _1869 = select(_1865, ((_nearFarProj.x - _1859) / _1862), _1777);
        _1901 = mad((_viewProjRelative[2].z), _1846, mad((_viewProjRelative[2].y), _1845, ((_viewProjRelative[2].x) * _1844))) + (_viewProjRelative[2].w);
        _1905 = mad((_viewProjRelative[3].z), _1846, mad((_viewProjRelative[3].y), _1845, ((_viewProjRelative[3].x) * _1844))) + (_viewProjRelative[3].w);
        _1909 = (_1869 * _1748) + _1844;
        _1910 = (_1869 * _1752) + _1845;
        _1911 = (_1869 * _1756) + _1846;
        _1927 = mad((_viewProjRelative[3].z), _1911, mad((_viewProjRelative[3].y), _1910, ((_viewProjRelative[3].x) * _1909))) + (_viewProjRelative[3].w);
        _1928 = (mad((_viewProjRelative[0].z), _1846, mad((_viewProjRelative[0].y), _1845, ((_viewProjRelative[0].x) * _1844))) + (_viewProjRelative[0].w)) / _1905;
        _1929 = (mad((_viewProjRelative[1].z), _1846, mad((_viewProjRelative[1].y), _1845, ((_viewProjRelative[1].x) * _1844))) + (_viewProjRelative[1].w)) / _1905;
        _1930 = _1901 / _1905;
        _1934 = ((mad((_viewProjRelative[0].z), _1911, mad((_viewProjRelative[0].y), _1910, ((_viewProjRelative[0].x) * _1909))) + (_viewProjRelative[0].w)) / _1927) - _1928;
        _1935 = ((mad((_viewProjRelative[1].z), _1911, mad((_viewProjRelative[1].y), _1910, ((_viewProjRelative[1].x) * _1909))) + (_viewProjRelative[1].w)) / _1927) - _1929;
        _1938 = 1.0f / ((float)((uint)((uint)(_1757))));
        _1949 = max(_1938, (1.0f / min(1.0f, (max(((_bufferSizeAndInvSize.x * 0.5f) * abs(_1934)), ((_bufferSizeAndInvSize.y * 0.5f) * abs(_1935))) * _1938))));
        _1950 = _1949 * (((mad((_viewProjRelative[2].z), _1911, mad((_viewProjRelative[2].y), _1910, ((_viewProjRelative[2].x) * _1909))) + (_viewProjRelative[2].w)) / _1927) - _1930);
        _1968 = (max(abs(_1950), (_1930 - ((mad((_proj[2].z), _113, 0.0f) + _1901) / (mad((_proj[3].z), _113, 0.0f) + _1905)))) * _1763) * max(0.0625f, _1938);
        _1969 = _1949 * _1938;
        _1971 = (_1934 * 0.5f) * _1969;
        _1973 = (_1935 * -0.5f) * _1969;
        _1974 = _1950 * _1938;
        _1981 = max(_1832, (1.0f / max((abs(_1971) * _bufferSizeAndInvSize.x), (abs(_1973) * _bufferSizeAndInvSize.y))));
        _1988 = 0.5f / _bufferSizeAndInvSize.x;
        _1990 = 0;
        _1991 = (((_1928 * 0.5f) + 0.5f) + (_1981 * _1971));
        _1992 = ((0.5f - (_1929 * 0.5f)) + (_1981 * _1973));
        _1993 = ((_1981 * _1974) + _1930);
        _1994 = _1832;
        _1995 = _1783;
        _1996 = 0;
        _1997 = 0.0f;
        _1998 = 0.0f;
        while(true) {
          // [sem: _3__36__0__0__g_depthStencil_load]
          // RenoDX: >>> [Patch: ShadowEdgeNoiseFix] [Version: 1.16.00]
          // Description: Replaces the vanilla X clamp at this contact-shadow depth load. Vanilla clamps the
          //              sampled X coordinate to the first/last half texel while leaving Y unclamped, so a
          //              ray that walks off the left or right edge of the screen keeps re-reading the same
          //              border column and smears or flickers the shadow it produces there. The macro keeps
          //              the vanilla clamp when the fix is off and passes X through unclamped when it is on,
          //              which lets the out-of-bounds sample fail instead of stretching the edge column.
          _2007 = __3__36__0__0__g_depthStencil.Load(int3(((int)(SHADOW_CONTACT_SAMPLE_X(_1991, _1988) * _bufferSizeAndInvSize.x)), ((int)(_1992 * _bufferSizeAndInvSize.y)), 0));
          // RenoDX: <<< [Patch: ShadowEdgeNoiseFix]
          _2009 = (uint)((uint)(_2007.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _2012 = ((float)((uint)((uint)(_2007.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _2013 = _2009 & 127;
          _2014 = (_1996 == 0);
          _2015 = select(_2014, 1.0f, _1995);
          _2019 = _nearFarProj.x / max(1e-07f, _2012);
          _2022 = _2019 - (_nearFarProj.x / max(1e-07f, _1993));
          _2026 = (abs((_1993 + _1968) - _2012) < _1968);
          _2027 = (int)(uint)(_2026);
          if (_2026) {
            if ((_2013 == 7) || ((_2013 == 53) || (((_2009 & 126) == 66) || (((uint)((int)(_2013) + (int)(-5)) < (uint)2) || ((_2013 == 107) || ((_2013 == 26) || (((uint)((int)(_2013) + (int)(-27)) < (uint)2) || ((_2013 == 106) || (((_2009 & 125) == 105) || ((_2013 == 18) || ((uint)((int)(_2013) + (int)(-19)) < (uint)2))))))))))) {
              _2063 = true;
              _2070 = ((int)(uint)((int)((_2022 < 0.0f) && (_2022 > select(_2063, -0.08f, -1.0f)))));
            } else {
              if ((_2013 != 67) && ((uint)((int)(_2013) + (int)(-52)) < (uint)16)) {
                _2063 = (_2019 < 32.0f);
                _2070 = ((int)(uint)((int)((_2022 < 0.0f) && (_2022 > select(_2063, -0.08f, -1.0f)))));
              } else {
                _2070 = _2027;
              }
            }
          } else {
            _2070 = _2027;
          }
          if (!(_2070 == 0)) {
            if ((uint)_2013 > (uint)11) {
              if (!((uint)_2013 < (uint)16)) {
                if (!(_2013 == 17)) {
                  if (!(_2013 == 16)) {
                    if (!((_2013 == 18) || ((_2013 == 107) || ((uint)((int)(_2013) + (int)(-19)) < (uint)2)))) {
                      if (!(_2013 == 66)) {
                        _2093 = 0.0f;
                      } else {
                        _2093 = 0.1f;
                      }
                    } else {
                      _2093 = 0.15f;
                    }
                  } else {
                    _2093 = 0.1f;
                  }
                } else {
                  _2093 = 0.7f;
                }
              } else {
                _2093 = 0.9f;
              }
            } else {
              if (!(_2013 == 11)) {
                _2093 = 0.0f;
              } else {
                _2093 = 0.1f;
              }
            }
            _2095 = saturate(_2019 * 0.015625f);  // [sem: expr_sat]
            _2098 = (1.0f - _2095) + (_2095 * _2093);
            _2113 = _2013;
            // [sem: expr_sat]
            // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
            // Description: Rewrites the contact-shadow accumulation so the occlusion term can be scaled
            //              without disturbing the base shadow it is added to. The vanilla expression is
            //              saturate(((saturate(1 - d*d*s) * (1 - base)) * fade) + base): d*d*s is the
            //              accumulated ray occlusion, (1 - base) limits the contribution to the light that is
            //              still unshadowed, and fade is an occluder thickness/penetration confidence ramp
            //              that discards hits whose depth delta is too large to be a real contact. The whole
            //              product is hoisted into a named value and multiplied by a quality-driven gain that
            //              runs 1.0 -> 0.7, so higher Contact Micro Shadows settings soften the coarse native
            //              contact result before the finer sub-pixel detail is composited on top of it and
            //              the two do not stack into crushed black contacts. At the Off value the gain is
            //              exactly 1.0 and the expression reduces to the vanilla one bit for bit.
            //              With the Micro Shadow Flicker Fix on, each hit is additionally weighted by its
            //              classification margin inside the thickness window divided by the sample's
            //              jitter-uncertainty band - the measured along-ray depth gradient per screen pixel
            //              times one texel of jitter envelope while jitter is live. A hit is trusted exactly in
            //              proportion to how far its classification sits from what one jitter step can
            //              overturn: stable flat content weighs 1, a texel that swaps surfaces between
            //              frames collapses in both frames, so sub-pixel alternation loses its amplitude
            //              instead of flipping the pixel's whole contact term. With the fix off the weight
            //              is exactly 1 and the expression is unchanged.
            float _rndxEvidenceW = 1.0f;
            if (MICRO_SHADOW_FLICKER_FIX != 0.f && !_2014) {
              float _rndxJitterPx = (length(_temporalAAJitter.xy - _temporalAAJitter.zw) > 0.0f) ? 1.0f : 0.0f;
              float _rndxStepPx = max(length(float2((_1995 * _1971) * _bufferSizeAndInvSize.x, (_1995 * _1973) * _bufferSizeAndInvSize.y)), 1.0f);
              float _rndxGradPerPx = abs(_2012 - _1997) / _rndxStepPx;
              float _rndxBand = _rndxGradPerPx * _rndxJitterPx;
              float _rndxMargin = _1968 - abs((_1993 + _1968) - _2012);
              _rndxEvidenceW = (_rndxBand > 0.0f) ? saturate(_rndxMargin / _rndxBand) : 1.0f;
            }
            float _rndx_microNearAccum = (saturate(1.0f - ((_2098 * _2098) * _2093)) * (1.0f - _1998)) * saturate((-0.0f - _2022) / (_1994 * 0.0046548597f)) * _rndxEvidenceW;
            _2114 = saturate((_rndx_microNearAccum * lerp(1.0f, 0.7f, CONTACT_SHADOW_BASE_TUNING)) + _1998);
            // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
          } else {
            _2113 = _1990;
            _2114 = _1998;  // [sem: expr_sat]
          }
          if ((_2013 != 0) && (_2114 > 0.95f)) {
            if (!_2014) {
              _2146 = (saturate((_1997 - _2012) / (_1997 - _1993)) - min(_1994, _2015));
            } else {
              _2146 = 0.0f;
            }
            _2444 = _2013;
            _2445 = _2114;
            _2446 = ((_2146 * _1971) + _1991);
            _2447 = ((_2146 * _1973) + _1992);
            _2448 = ((_2146 * _1974) + _1993);
            _2449 = _2012;
          } else {
            if ((uint)_1996 < (uint)((int)(_1757) + (int)(-1))) {
              _2138 = ((_2015 * _1971) + _1991);
              _2139 = ((_2015 * _1973) + _1992);
              _2140 = ((_2015 * _1974) + _1993);
              _2141 = (_2015 + _1994);
              _2142 = _2012;
            } else {
              _2138 = _1991;
              _2139 = _1992;
              _2140 = _1993;
              _2141 = _1994;
              _2142 = _1997;
            }
            _2143 = (int)(_1996) + (int)(1);
            if ((uint)_2143 < (uint)_1757) {
              _1990 = _2113;
              _1991 = _2138;
              _1992 = _2139;
              _1993 = _2140;
              _1994 = _2141;
              _1995 = _2015;
              _1996 = _2143;
              _1997 = _2142;
              _1998 = _2114;
              continue;
            } else {
              _2444 = _2113;
              _2445 = _2114;
              _2446 = _1991;
              _2447 = _1992;
              _2448 = _1993;
              _2449 = _2012;
            }
          }
          break;
        }
      } else {
        _2156 = select(_1865, ((_nearFarProj.x - _1859) / _1862), _1777);
        _2188 = mad((_viewProjRelative[2].z), _1846, mad((_viewProjRelative[2].y), _1845, ((_viewProjRelative[2].x) * _1844))) + (_viewProjRelative[2].w);
        _2192 = mad((_viewProjRelative[3].z), _1846, mad((_viewProjRelative[3].y), _1845, ((_viewProjRelative[3].x) * _1844))) + (_viewProjRelative[3].w);
        _2196 = (_2156 * _1748) + _1844;
        _2197 = (_2156 * _1752) + _1845;
        _2198 = (_2156 * _1756) + _1846;
        _2214 = mad((_viewProjRelative[3].z), _2198, mad((_viewProjRelative[3].y), _2197, ((_viewProjRelative[3].x) * _2196))) + (_viewProjRelative[3].w);
        _2215 = (mad((_viewProjRelative[0].z), _1846, mad((_viewProjRelative[0].y), _1845, ((_viewProjRelative[0].x) * _1844))) + (_viewProjRelative[0].w)) / _2192;
        _2216 = (mad((_viewProjRelative[1].z), _1846, mad((_viewProjRelative[1].y), _1845, ((_viewProjRelative[1].x) * _1844))) + (_viewProjRelative[1].w)) / _2192;
        _2217 = _2188 / _2192;
        _2221 = ((mad((_viewProjRelative[0].z), _2198, mad((_viewProjRelative[0].y), _2197, ((_viewProjRelative[0].x) * _2196))) + (_viewProjRelative[0].w)) / _2214) - _2215;
        _2222 = ((mad((_viewProjRelative[1].z), _2198, mad((_viewProjRelative[1].y), _2197, ((_viewProjRelative[1].x) * _2196))) + (_viewProjRelative[1].w)) / _2214) - _2216;
        _2225 = 1.0f / ((float)((uint)((uint)(_1757))));
        _2236 = max(_2225, (1.0f / min(1.0f, (max(((_bufferSizeAndInvSize.x * 0.5f) * abs(_2221)), ((_bufferSizeAndInvSize.y * 0.5f) * abs(_2222))) * _2225))));
        _2237 = _2236 * (((mad((_viewProjRelative[2].z), _2198, mad((_viewProjRelative[2].y), _2197, ((_viewProjRelative[2].x) * _2196))) + (_viewProjRelative[2].w)) / _2214) - _2217);
        // RenoDX: >>> [Patch: ShadowDistanceSeamFix] [Version: 1.18.00]
        // Description: The far march halves the occluder acceptance window the vanilla near march uses,
        //              and the switch between the two is a hard per-pixel branch at 8 m, so shadows step
        //              in strength exactly at that distance. The half-width constant becomes a continuous
        //              scale: the near march's full width at the boundary, converging to the native half
        //              width by twice the split depth. Pixels beyond that span and the near march itself
        //              are untouched, and with the fix off the scale is the native constant.
        float _rndxFarWindowScale = (SHADOW_DISTANCE_SEAM_FIX != 0.f)
                                        ? lerp(1.0f, 0.5f, saturate((_113 - 8.0f) * 0.125f))
                                        : 0.5f;
        _2256 = ((_1763 * _rndxFarWindowScale) * max(abs(_2237), (_2217 - ((mad((_proj[2].z), _113, 0.0f) + _2188) / (mad((_proj[3].z), _113, 0.0f) + _2192))))) * max(0.0625f, _2225);
        // RenoDX: <<< [Patch: ShadowDistanceSeamFix]
        _2257 = _2236 * _2225;
        _2259 = (_2221 * 0.5f) * _2257;
        _2261 = (_2222 * -0.5f) * _2257;
        _2262 = _2237 * _2225;
        _2269 = max(_1832, (1.0f / max((abs(_2259) * _bufferSizeAndInvSize.x), (abs(_2261) * _bufferSizeAndInvSize.y))));
        _2276 = 0.5f / _bufferSizeAndInvSize.x;
        _2278 = 0;
        _2279 = _1783;
        _2280 = _1832;
        _2281 = (((_2215 * 0.5f) + 0.5f) + (_2269 * _2259));
        _2282 = ((0.5f - (_2216 * 0.5f)) + (_2269 * _2261));
        _2283 = ((_2269 * _2262) + _2217);
        _2284 = 0;
        _2285 = 0.0f;
        _2286 = 0.0f;
        while(true) {
          // [sem: _3__36__0__0__g_depthStencil_load]
          // RenoDX: >>> [Patch: ShadowEdgeNoiseFix] [Version: 1.16.00]
          // Description: Replaces the vanilla X clamp at this contact-shadow depth load. Vanilla clamps the
          //              sampled X coordinate to the first/last half texel while leaving Y unclamped, so a
          //              ray that walks off the left or right edge of the screen keeps re-reading the same
          //              border column and smears or flickers the shadow it produces there. The macro keeps
          //              the vanilla clamp when the fix is off and passes X through unclamped when it is on,
          //              which lets the out-of-bounds sample fail instead of stretching the edge column.
          _2295 = __3__36__0__0__g_depthStencil.Load(int3(((int)(SHADOW_CONTACT_SAMPLE_X(_2281, _2276) * _bufferSizeAndInvSize.x)), ((int)(_2282 * _bufferSizeAndInvSize.y)), 0));
          // RenoDX: <<< [Patch: ShadowEdgeNoiseFix]
          _2297 = (uint)((uint)(_2295.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _2300 = ((float)((uint)((uint)(_2295.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _2301 = _2297 & 127;
          _2302 = (_2278 == 0);
          _2303 = select(_2302, 1.0f, _2279);
          _2307 = _nearFarProj.x / max(1e-07f, _2300);
          _2310 = _2307 - (_nearFarProj.x / max(1e-07f, _2283));
          _2314 = (abs((_2283 + _2256) - _2300) < _2256);
          _2315 = (int)(uint)(_2314);
          if (_2314) {
            if ((_2301 == 7) || ((_2301 == 53) || (((_2297 & 126) == 66) || (((uint)((int)(_2301) + (int)(-5)) < (uint)2) || ((_2301 == 107) || ((_2301 == 26) || (((uint)((int)(_2301) + (int)(-27)) < (uint)2) || ((_2301 == 106) || (((_2297 & 125) == 105) || ((_2301 == 18) || ((uint)((int)(_2301) + (int)(-19)) < (uint)2))))))))))) {
              _2351 = true;
              _2358 = ((int)(uint)((int)((_2310 < 0.0f) && (_2310 > select(_2351, -0.08f, -1.0f)))));
            } else {
              if ((_2301 != 67) && ((uint)((int)(_2301) + (int)(-52)) < (uint)16)) {
                _2351 = (_2307 < 32.0f);
                _2358 = ((int)(uint)((int)((_2310 < 0.0f) && (_2310 > select(_2351, -0.08f, -1.0f)))));
              } else {
                _2358 = _2315;
              }
            }
          } else {
            _2358 = _2315;
          }
          if (!(_2358 == 0)) {
            if ((uint)_2301 > (uint)11) {
              if (!((uint)_2301 < (uint)16)) {
                if (!(_2301 == 17)) {
                  if (!(_2301 == 16)) {
                    if (!((_2301 == 18) || ((_2301 == 107) || ((uint)((int)(_2301) + (int)(-19)) < (uint)2)))) {
                      if (!(_2301 == 66)) {
                        _2381 = 0.0f;
                      } else {
                        _2381 = 0.1f;
                      }
                    } else {
                      _2381 = 0.15f;
                    }
                  } else {
                    _2381 = 0.1f;
                  }
                } else {
                  _2381 = 0.7f;
                }
              } else {
                _2381 = 0.9f;
              }
            } else {
              if (!(_2301 == 11)) {
                _2381 = 0.0f;
              } else {
                _2381 = 0.1f;
              }
            }
            _2383 = saturate(_2307 * 0.015625f);  // [sem: expr_sat]
            _2386 = (1.0f - _2383) + (_2383 * _2381);
            _2401 = _2301;
            // [sem: expr_sat]
            // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
            // Description: Rewrites the contact-shadow accumulation so the occlusion term can be scaled
            //              without disturbing the base shadow it is added to. The vanilla expression is
            //              saturate(((saturate(1 - d*d*s) * (1 - base)) * fade) + base): d*d*s is the
            //              accumulated ray occlusion, (1 - base) limits the contribution to the light that is
            //              still unshadowed, and fade is an occluder thickness/penetration confidence ramp
            //              that discards hits whose depth delta is too large to be a real contact. The whole
            //              product is hoisted into a named value and multiplied by a quality-driven gain that
            //              runs 1.0 -> 0.7, so higher Contact Micro Shadows settings soften the coarse native
            //              contact result before the finer sub-pixel detail is composited on top of it and
            //              the two do not stack into crushed black contacts. At the Off value the gain is
            //              exactly 1.0 and the expression reduces to the vanilla one bit for bit.
            //              With the Micro Shadow Flicker Fix on, each hit is additionally weighted by its
            //              classification margin inside the thickness window divided by the sample's
            //              jitter-uncertainty band - the measured along-ray depth gradient per screen pixel
            //              times one texel of jitter envelope while jitter is live. A hit is trusted exactly in
            //              proportion to how far its classification sits from what one jitter step can
            //              overturn: stable flat content weighs 1, a texel that swaps surfaces between
            //              frames collapses in both frames, so sub-pixel alternation loses its amplitude
            //              instead of flipping the pixel's whole contact term. With the fix off the weight
            //              is exactly 1 and the expression is unchanged.
            float _rndxEvidenceW = 1.0f;
            if (MICRO_SHADOW_FLICKER_FIX != 0.f && !_2302) {
              float _rndxJitterPx = (length(_temporalAAJitter.xy - _temporalAAJitter.zw) > 0.0f) ? 1.0f : 0.0f;
              float _rndxStepPx = max(length(float2((_2279 * _2259) * _bufferSizeAndInvSize.x, (_2279 * _2261) * _bufferSizeAndInvSize.y)), 1.0f);
              float _rndxGradPerPx = abs(_2300 - _2285) / _rndxStepPx;
              float _rndxBand = _rndxGradPerPx * _rndxJitterPx;
              float _rndxMargin = _2256 - abs((_2283 + _2256) - _2300);
              _rndxEvidenceW = (_rndxBand > 0.0f) ? saturate(_rndxMargin / _rndxBand) : 1.0f;
            }
            float _rndx_microFarAccum = (saturate(1.0f - ((_2386 * _2386) * _2381)) * (1.0f - _2286)) * saturate((-0.0f - _2310) / (_2280 * 0.0046548597f)) * _rndxEvidenceW;
            _2402 = saturate((_rndx_microFarAccum * lerp(1.0f, 0.7f, CONTACT_SHADOW_BASE_TUNING)) + _2286);
            // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
          } else {
            _2401 = _2284;
            _2402 = _2286;  // [sem: expr_sat]
          }
          if ((_2301 != 0) && (_2402 > 0.95f)) {
            if (!_2302) {
              _2434 = (saturate((_2285 - _2300) / (_2285 - _2283)) - min(_2280, _2303));
            } else {
              _2434 = 0.0f;
            }
            _2444 = _2301;
            _2445 = _2402;
            _2446 = ((_2434 * _2259) + _2281);
            _2447 = ((_2434 * _2261) + _2282);
            _2448 = ((_2434 * _2262) + _2283);
            _2449 = _2300;
          } else {
            if ((uint)_2278 < (uint)((int)(_1757) + (int)(-1))) {
              _2426 = (_2280 + _2303);
              _2427 = (_2281 + (_2303 * _2259));
              _2428 = (_2282 + (_2303 * _2261));
              _2429 = (_2283 + (_2303 * _2262));
              _2430 = _2300;
            } else {
              _2426 = _2280;
              _2427 = _2281;
              _2428 = _2282;
              _2429 = _2283;
              _2430 = _2285;
            }
            _2431 = (int)(_2278) + (int)(1);
            if ((uint)_2431 < (uint)_1757) {
              _2278 = _2431;
              _2279 = _2303;
              _2280 = _2426;
              _2281 = _2427;
              _2282 = _2428;
              _2283 = _2429;
              _2284 = _2401;
              _2285 = _2430;
              _2286 = _2402;
              continue;
            } else {
              _2444 = _2401;
              _2445 = _2402;
              _2446 = 0.0f;
              _2447 = 0.0f;
              _2448 = -1.0f;
              _2449 = 0.0f;
            }
          }
          break;
        }
      }
      _2453 = (_2445 > 0.0f);
      if (_2448 > 0.0f) {
        if (_2453 || (((_2446 >= 0.0f) && (_2446 <= 1.0f)) && ((_2447 >= 0.0f) && (_2447 <= 1.0f)))) {
          _2467 = (_2446 * 2.0f) + -1.0f;
          _2468 = 1.0f - (_2447 * 2.0f);
          _2484 = mad((_invViewProjRelative[3].z), _2448, mad((_invViewProjRelative[3].y), _2468, (_2467 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
          if (!(_2444 == 2)) {
            if (_2444 == 3) {
              _2510 = 0.0f;
              _2512 = _2510;
            } else {
              if (_2444 == 21) {
                if (!(_78 == 21)) {
                  _2510 = 0.0f;
                  _2512 = _2510;
                } else {
                  _2512 = 20.0f;
                }
              } else {
                _2503 = (_2444 == 22);
                if (!((_78 == 22) && _2503)) {
                  _2510 = select(_2503, 0.0f, 1.0f);
                  _2512 = _2510;
                } else {
                  _2512 = 20.0f;
                }
              }
            }
          } else {
            if (!(_78 == 2)) {
              _2510 = 0.0f;
              _2512 = _2510;
            } else {
              _2512 = 20.0f;
            }
          }
          if (_556 && (_2445 == 1.0f)) {
            // [sem: expr_sat]
            _2536 = saturate(((((_1777 * 0.9375f) - max(0.0f, dot(float3(_1748, _1752, _1756), float3((((mad((_invViewProjRelative[0].z), _2448, mad((_invViewProjRelative[0].y), _2468, (_2467 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _2484) - _1844), (((mad((_invViewProjRelative[1].z), _2448, mad((_invViewProjRelative[1].y), _2468, (_2467 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _2484) - _1845), (((mad((_invViewProjRelative[2].z), _2448, mad((_invViewProjRelative[2].y), _2468, (_2467 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _2484) - _1846))))) * ((_113 * 0.015625f) + 1.5f)) / _1777) * 0.9375f);
          } else {
            _2536 = _2445;  // [sem: expr_sat]
          }
          _2537 = _2536 * saturate(exp2(min(0.0f, (((_113 * 0.019f) + 0.1f) + (_2512 * ((_nearFarProj.x / max(1e-07f, _2449)) - (_nearFarProj.x / max(1e-07f, _2448)))))) * 1.442695f));
          _2538 = _2444 & -2;
          if (!(_2538 == 6)) {
            if ((((_78 == 33) && (_2444 == 33)) || (!(_78 == 33) && ((_78 == 54) && (_2444 == 54))))) {
              _2612 = (_2537 * 0.01f);
            } else {
              if (!((_2444 == 53) || (_2538 == 66)) || (((_2444 == 53) || (_2538 == 66)) && (!((_1643 == 66) || (_78 == 53))))) {
                if (!_168) {
                  if ((uint)((int)((uint)((uint)(_2444)) + (uint)(-52))) < (uint)16) {
                    _2609 = saturate(_113 * 0.03125f);  // [sem: expr_sat]
                  } else {
                    _2609 = 1.0f;  // [sem: expr_sat]
                  }
                  _2612 = (_2609 * _2537);
                } else {
                  _2612 = _2537;
                }
              } else {
                // [sem: _3__36__0__0__g_baseColor_load]
                _2564 = __3__36__0__0__g_baseColor.Load(int3(((int)(_2446 * _bufferSizeAndInvSize.x)), ((int)(_2447 * _bufferSizeAndInvSize.y)), 0));
                _2570 = ((float)((uint)((uint)(((uint)((uint)(_2564.x)) >> 8) & 255)))) * 0.003921569f;
                _2573 = ((float)((uint)((uint)(_2564.x & 255)))) * 0.003921569f;
                _2577 = ((float)((uint)((uint)(((uint)((uint)(_2564.y)) >> 8) & 255)))) * 0.003921569f;
                _2578 = _2570 * _2570;
                _2579 = _2573 * _2573;
                _2580 = _2577 * _2577;
                _2612 = (saturate(1.0f - (dot(float3((((_2578 * 0.61312f) + (_2579 * 0.33951f)) + (_2580 * 0.04737f)), (((_2578 * 0.0702f) + (_2579 * 0.91636f)) + (_2580 * 0.01345f)), (((_2578 * 0.02062f) + (_2579 * 0.10958f)) + (_2580 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _2537);
              }
            }
          } else {
            _2612 = (_2537 * 0.01f);
          }
        } else {
          _2612 = 0.0f;
        }
      } else {
        if (_2453) {
          _2467 = (_2446 * 2.0f) + -1.0f;
          _2468 = 1.0f - (_2447 * 2.0f);
          _2484 = mad((_invViewProjRelative[3].z), _2448, mad((_invViewProjRelative[3].y), _2468, (_2467 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
          if (!(_2444 == 2)) {
            if (_2444 == 3) {
              _2510 = 0.0f;
              _2512 = _2510;
            } else {
              if (_2444 == 21) {
                if (!(_78 == 21)) {
                  _2510 = 0.0f;
                  _2512 = _2510;
                } else {
                  _2512 = 20.0f;
                }
              } else {
                _2503 = (_2444 == 22);
                if (!((_78 == 22) && _2503)) {
                  _2510 = select(_2503, 0.0f, 1.0f);
                  _2512 = _2510;
                } else {
                  _2512 = 20.0f;
                }
              }
            }
          } else {
            if (!(_78 == 2)) {
              _2510 = 0.0f;
              _2512 = _2510;
            } else {
              _2512 = 20.0f;
            }
          }
          if (_556 && (_2445 == 1.0f)) {
            // [sem: expr_sat]
            _2536 = saturate(((((_1777 * 0.9375f) - max(0.0f, dot(float3(_1748, _1752, _1756), float3((((mad((_invViewProjRelative[0].z), _2448, mad((_invViewProjRelative[0].y), _2468, (_2467 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _2484) - _1844), (((mad((_invViewProjRelative[1].z), _2448, mad((_invViewProjRelative[1].y), _2468, (_2467 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _2484) - _1845), (((mad((_invViewProjRelative[2].z), _2448, mad((_invViewProjRelative[2].y), _2468, (_2467 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _2484) - _1846))))) * ((_113 * 0.015625f) + 1.5f)) / _1777) * 0.9375f);
          } else {
            _2536 = _2445;  // [sem: expr_sat]
          }
          _2537 = _2536 * saturate(exp2(min(0.0f, (((_113 * 0.019f) + 0.1f) + (_2512 * ((_nearFarProj.x / max(1e-07f, _2449)) - (_nearFarProj.x / max(1e-07f, _2448)))))) * 1.442695f));
          _2538 = _2444 & -2;
          if (!(_2538 == 6)) {
            if ((((_78 == 33) && (_2444 == 33)) || (!(_78 == 33) && ((_78 == 54) && (_2444 == 54))))) {
              _2612 = (_2537 * 0.01f);
            } else {
              if (!((_2444 == 53) || (_2538 == 66)) || (((_2444 == 53) || (_2538 == 66)) && (!((_1643 == 66) || (_78 == 53))))) {
                if (!_168) {
                  if ((uint)((int)((uint)((uint)(_2444)) + (uint)(-52))) < (uint)16) {
                    _2609 = saturate(_113 * 0.03125f);  // [sem: expr_sat]
                  } else {
                    _2609 = 1.0f;  // [sem: expr_sat]
                  }
                  _2612 = (_2609 * _2537);
                } else {
                  _2612 = _2537;
                }
              } else {
                // [sem: _3__36__0__0__g_baseColor_load]
                _2564 = __3__36__0__0__g_baseColor.Load(int3(((int)(_2446 * _bufferSizeAndInvSize.x)), ((int)(_2447 * _bufferSizeAndInvSize.y)), 0));
                _2570 = ((float)((uint)((uint)(((uint)((uint)(_2564.x)) >> 8) & 255)))) * 0.003921569f;
                _2573 = ((float)((uint)((uint)(_2564.x & 255)))) * 0.003921569f;
                _2577 = ((float)((uint)((uint)(((uint)((uint)(_2564.y)) >> 8) & 255)))) * 0.003921569f;
                _2578 = _2570 * _2570;
                _2579 = _2573 * _2573;
                _2580 = _2577 * _2577;
                _2612 = (saturate(1.0f - (dot(float3((((_2578 * 0.61312f) + (_2579 * 0.33951f)) + (_2580 * 0.04737f)), (((_2578 * 0.0702f) + (_2579 * 0.91636f)) + (_2580 * 0.01345f)), (((_2578 * 0.02062f) + (_2579 * 0.10958f)) + (_2580 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _2537);
              }
            }
          } else {
            _2612 = (_2537 * 0.01f);
          }
        } else {
          _2612 = 0.0f;
        }
      }
      _2616 = saturate(1.0f - _2612);  // [sem: expr_sat]
    } else {
      _2616 = 1.0f;  // [sem: expr_sat]
    }
    // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
    // Description: The native contact-shadow march is a short ray with very few steps, so it misses
    //              sub-pixel and small-scale occluders and leaves surface detail such as ground litter,
    //              pebbles, cloth folds and foliage sitting on the ground without any contact darkening.
    //              This calls the shared depth-bias micro detail shadow helper, which re-marches the depth
    //              buffer with a continuous thickness window instead of a binary hit test and returns a
    //              darkened contact value. The helper returns its input unchanged when Contact Micro
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
    if (_1633 > 0.0f) {
      _2616 = ApplyContactMicroDetailShadow(
          _2616,
          float2(_58, _59),
          _113,
          _78,
          float3(_rndxMicroDirX, _rndxMicroDirY, _rndxMicroDirZ),
          float3(_rndxMicroWorldPosX, _rndxMicroWorldPosY, _rndxMicroWorldPosZ),
          CONTACT_MICRO_DETAIL_STRENGTH,
          (CONTACT_SHADOW_IS_FULL ? -0.022f : -0.025f),
          (CONTACT_SHADOW_IS_FULL ? 3.10f : 3.0f),
          CONTACT_MICRO_RANGE_NEAR,
          CONTACT_MICRO_RANGE_FAR,
          CONTACT_MICRO_THICKNESS_MULTIPLIER,
          CONTACT_MICRO_OCCLUSION_SCALE,
          CONTACT_MICRO_SELF_REJECT_PIXELS,
          2.0f,
          1.0f,
          1.0f);
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: The micro detail shadow helper marches in screen space, so close to the frame border
      //              its ray walks out of the depth buffer, loses the occluders that would have been found
      //              there and produces an abrupt brightness seam along the edges of the image. This
      //              attenuates the helper's extra darkening toward the border, falling back to a
      //              half-strength blend at the outermost pixels so the transition is smooth. It only runs
      //              when a Contact Micro Shadows quality level is active, so the vanilla value is
      //              untouched when the feature is Off.
      if (CONTACT_SHADOW_DETAIL_PATH == 1.f && _2616 < 1.0f) {
        float2 _rndxMicroScreenUV = float2((_58 + 0.5f) * _bufferSizeAndInvSize.z,
                                           (_59 + 0.5f) * _bufferSizeAndInvSize.w);
        float2 _rndxMicroEdgeDist = min(_rndxMicroScreenUV, 1.0f - _rndxMicroScreenUV);
        float _rndxMicroEdgeFade = saturate(min(_rndxMicroEdgeDist.x, _rndxMicroEdgeDist.y) * 10.0f);
        _2616 = lerp(lerp(1.0f, _2616, 0.5f), _2616, _rndxMicroEdgeFade);
      }
    }
    // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
    _2617 = min(_1633, _2616);
    _2631 = float(half(_2617 * float(_1609)));
    _2632 = float(half(_2617 * float(_1610)));
    _2633 = float(half(_2617 * float(_1611)));
    _2634 = saturate((1.0f - _552) + (exp2(log2(saturate(select(_168, (_1618 + 0.98f), _1618))) * 0.45454544f) * _552));  // [sem: expr_sat]
  }
  __3__38__0__1__g_shadowColorResultUAV[int2(_56, _57)] = float4((half)(half(_2631)), (half)(half(_2632)), (half)(half(_2633)), (half)(half(_2634)));
}
