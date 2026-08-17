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
  int _1156;
  float _1259;
  float _1260;
  half _1261;
  half _1262;
  half _1263;
  float _1315;
  float _1316;
  float _1317;
  float _1415;
  float _1429;
  int _1466;
  float _1472;
  float _1484;
  float _1493;
  float _1494;
  float _1495;
  float _1641;
  float _1642;
  float _1643;
  float _1644;
  float _1645;
  int _1646;
  int _1647;
  float _1648;
  float _1649;
  bool _1714;
  int _1721;
  float _1744;
  int _1764;
  float _1765;
  float _1789;
  float _1790;
  float _1791;
  float _1792;
  float _1793;
  float _1797;
  float _1806;
  float _1807;
  float _1808;
  float _1809;
  int _1810;
  float _1869;
  float _1871;
  float _1895;
  float _1968;
  float _1971;
  float _1975;
  float _1990;
  float _1991;
  float _1992;
  float _1993;
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
  float _1098;
  float _1099;
  half _1118;
  half _1119;
  half _1120;
  float _1123;
  float _1124;
  float _1125;
  float _1126;
  float _1143;
  float _1144;
  float _1145;
  float _1157;
  float _1158;
  float _1165;
  float _1167;
  float _1171;
  float _1172;
  float _1173;
  float _1180;
  float _1196;
  float _1197;
  float _1218;
  float _1219;
  float _1240;
  float _1241;
  float _1252;
  float _1253;
  bool _1264;
  float _1266;
  float _1270;
  float _1285;
  int _1295;
  bool _1296;
  bool _1297;
  bool _1298;
  float _1299;
  int _1318;
  int _1322;
  uint _1328;
  int _1333;
  int _1338;
  float _1339;
  float _1350;
  float _1351;
  float _1356;
  float _1372;
  float _1376;
  float _1379;
  float _1382;
  float _1383;
  float _1385;
  float _1388;
  float _1389;
  float _1390;
  float _1391;
  float _1400;
  float _1404;
  float _1408;
  int _1409;
  float _1421;
  bool _1442;
  float _1446;
  float _1488;
  float _1496;
  float _1497;
  float _1498;
  float _1510;
  float _1513;
  float _1519;
  float _1551;
  float _1555;
  float _1559;
  float _1560;
  float _1561;
  float _1577;
  float _1578;
  float _1579;
  float _1580;
  float _1584;
  float _1585;
  float _1588;
  float _1599;
  float _1600;
  float _1619;
  float _1620;
  float _1622;
  float _1624;
  float _1625;
  float _1632;
  float _1639;
  uint _1658;
  int _1660;
  float _1663;
  int _1664;
  bool _1665;
  float _1666;
  float _1670;
  float _1673;
  bool _1677;
  int _1678;
  float _1746;
  float _1749;
  int _1794;
  bool _1814;
  float _1828;
  float _1829;
  float _1845;
  bool _1862;
  float _1896;
  int _1897;
  uint4 _1923;
  float _1929;
  float _1932;
  float _1936;
  float _1937;
  float _1938;
  float _1939;
  float _1976;
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
    _1990 = _108;
    _1991 = _108;
    _1992 = _108;
    _1993 = _108;  // [sem: expr_sat]
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
      _1143 = _24[min((uint)(_825), 1u)];
      _1144 = _25[min((uint)(_825), 1u)];
      _1145 = _26[min((uint)(_825), 1u)];
      if (_963) {
        _1156 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_961)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_961)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_961)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_953))));
      } else {
        _1156 = _953;
      }
      _1157 = _shadowSizeAndInvSize.z * 2.0f;
      _1158 = _shadowSizeAndInvSize.w * 2.0f;
      _1165 = _shadowSizeAndInvSize.z * 2.3841858e-07f;
      _1167 = _shadowSizeAndInvSize.w * 2.3841858e-07f;
      _1171 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1156)) * (uint)(48271))) & 16777215)))) * _1165) - _1157) + _1143;
      _1172 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1156)) * (uint)(-1964877855))) & 16777215)))) * _1167) - _1158) + _1144;
      _1173 = (float)((uint)((uint)(_825)));
      _1180 = _1145 - _823;
      _1196 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1156)) * (uint)(-856141137))) & 16777215)))) * _1165) - _1157) + _1143;
      _1197 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1156)) * (uint)(-613502015))) & 16777215)))) * _1167) - _1158) + _1144;
      _1218 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1156)) * (uint)(-556260145))) & 16777215)))) * _1165) - _1157) + _1143;
      _1219 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1156)) * (uint)(902075297))) & 16777215)))) * _1167) - _1158) + _1144;
      _1240 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1156)) * (uint)(1698214639))) & 16777215)))) * _1165) - _1157) + _1143;
      _1241 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1156)) * (uint)(773027713))) & 16777215)))) * _1167) - _1158) + _1144;
      _1252 = (((saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1196, _1197, _1173), _1180)).x)) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1171, _1172, _1173), _1180)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1218, _1219, _1173), _1180)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1240, _1241, _1173), _1180)).x))) * 0.25f;
      _1253 = (((max(0.0f, (_1145 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1196, _1197, _1173), 0.0f))).x))) + max(0.0f, (_1145 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1171, _1172, _1173), 0.0f))).x)))) + max(0.0f, (_1145 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1218, _1219, _1173), 0.0f))).x)))) + max(0.0f, (_1145 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1240, _1241, _1173), 0.0f))).x)))) * 0.25f;
      _1259 = saturate(_1252 * _1252);  // [sem: expr_sat]
      _1260 = saturate(_1253 * _1253);  // [sem: expr_sat]
      _1261 = 1.0h;
      _1262 = 1.0h;
      _1263 = 1.0h;
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
      _1098 = (((saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1030, _1031, _1002), _1009)).x)) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1000, _1001, _1002), _1009)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1056, _1057, _1002), _1009)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1082, _1083, _1002), _1009)).x))) * 0.25f;
      _1099 = (((max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1030, _1031, _1002), 0.0f))).x))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1000, _1001, _1002), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1056, _1057, _1002), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1082, _1083, _1002), 0.0f))).x)))) * 0.25f;
      _1118 = half(float(((half)(((half)((half)(_1040.x) + (half)(_1016.x))) + (half)(_1066.x))) + ((half)((half)(_1092.x) * 2.0h))) * 0.2f);
      _1119 = half(float(((half)(((half)((half)(_1040.y) + (half)(_1016.y))) + (half)(_1066.y))) + ((half)((half)(_1092.y) * 2.0h))) * 0.2f);
      _1120 = half(float(((half)(((half)((half)(_1040.z) + (half)(_1016.z))) + (half)(_1066.z))) + ((half)((half)(_1092.z) * 2.0h))) * 0.2f);
      if (_825 == 1) {
        _1123 = float(_1118);
        _1124 = float(_1119);
        _1125 = float(_1120);
        _1126 = -0.0f - _710;
        _1259 = _1098;  // [sem: expr_sat]
        _1260 = _1099;  // [sem: expr_sat]
        _1261 = (half)(half((_1123 + _710) + (_1123 * _1126)));
        _1262 = (half)(half((_1124 + _710) + (_1124 * _1126)));
        _1263 = (half)(half((_1125 + _710) + (_1125 * _1126)));
      } else {
        _1259 = _1098;  // [sem: expr_sat]
        _1260 = _1099;  // [sem: expr_sat]
        _1261 = _1118;
        _1262 = _1119;
        _1263 = _1120;
      }
    }
    _1264 = (_824 != 0);
    _1266 = min(_552, select(_1264, _1259, 1.0f));
    _1270 = select((_708 != 0), select(_1264, (_1260 * 400.0f), 4e+06f), 1.0f);
    _1285 = (_1266 - (_shadowAOParams.x * _1266)) + _shadowAOParams.x;
    [branch]
    if (_1285 > 0.0f) {
      _1295 = _74 & 126;
      _1296 = (_1295 == 64);
      _1297 = (_78 == 66);
      _1298 = _1296 || _1297;
      _1299 = select(_1298, 2.0f, 4.0f);
      if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
        _1315 = _sunDirection.x;
        _1316 = _sunDirection.y;
        _1317 = _sunDirection.z;
      } else {
        _1315 = _moonDirection.x;
        _1316 = _moonDirection.y;
        _1317 = _moonDirection.z;
      }
      _1318 = _56 & 3;
      _1322 = _57 & 3;
      _1328 = (uint)((uint)((uint)(_frameNumber.x)) * (uint)(1551)) + (uint)((uint)((int)(((int)((int)((int)(_1322) << 1) | (int)(_1322)) << 1) & 10) | (int)(((int)((int)(_1318) << 1) | (int)(_1318)) & 5)));
      _1333 = (int)(((int)((uint)((uint)(_1328)) << 2)) & -858993460) | (int)(((uint)((uint)(_1328)) >> 2) & 858993459);
      _1338 = (int)(((int)((uint)((uint)(_1333)) << 1)) & 10) | (int)(((uint)((uint)(_1333)) >> 1) & 21);
      _1339 = (float)((uint)((uint)(_frameNumber.x)));
      _1350 = (frac(((_1339 * 92.0f) + _58) * 0.0078125f) * 128.0f) + -64.34062f;
      _1351 = (frac(((_1339 * 71.0f) + _59) * 0.0078125f) * 128.0f) + -72.46562f;
      _1356 = frac(dot(float3((_1350 * _1350), (_1351 * _1351), (_1351 * _1350)), float3(20.390625f, 60.703125f, 2.4281209f)));
      _1372 = frac((((float)((uint)((uint)(((int)((uint)(_1356 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f) + (((float)((uint)((uint)(_1338)))) * 0.03125f)) * 6.2831855f;
      _1376 = (((1.0f - _shadowAOParams.z) * 2.3283064e-10f) * ((float)((uint)((uint)(reversebits(_1338) ^ ((int)((uint)(_1356 * 2.8747837e+08f)))))))) + _shadowAOParams.z;
      _1379 = sqrt(1.0f - (_1376 * _1376));
      _1382 = cos(_1372) * _1379;
      _1383 = sin(_1372) * _1379;
      _1385 = select((_1317 >= 0.0f), 1.0f, -1.0f);
      _1388 = -0.0f - (1.0f / (_1385 + _1317));
      _1389 = _1316 * _1388;
      _1390 = _1389 * _1315;
      _1391 = _1385 * _1315;
      _1400 = mad(_1376, _1315, mad(_1383, _1390, ((((_1391 * _1315) * _1388) + 1.0f) * _1382)));
      _1404 = mad(_1376, _1316, mad(_1383, (_1385 + (_1389 * _1316)), ((_1382 * _1385) * _1390)));
      _1408 = mad(_1376, _1317, mad(_1383, (-0.0f - _1316), (-0.0f - (_1391 * _1382))));
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: The vanilla contact-shadow ray direction is the sun/moon direction rotated onto a
      //              randomly sampled cone that changes every frame, which the shadow denoiser is expected
      //              to resolve. Contact Micro Shadows adds extra sub-pixel occlusion on top of this march,
      //              and the per-frame cone wobble makes that added detail crawl and shimmer between frames.
      //              While any Contact Micro Shadows quality level is active this substitutes the unrotated
      //              light direction so the added detail is temporally stable; with the feature Off the
      //              vanilla jittered direction is left untouched.
      if (CONTACT_SHADOW_STABLE_DIRECTION == 1.f) {
        _1400 = _1315;
        _1404 = _1316;
        _1408 = _1317;
      }
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      _1409 = select(_1296, 10, 6);
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: The vanilla screen-space contact-shadow ray takes only 6 or 10 march steps depending
      //              on the material class, which undersamples thin and small occluders and leaves gaps in
      //              the contact darkening. While a Contact Micro Shadows quality level is active this
      //              raises the step count toward 16 in proportion to the selected quality; with the
      //              feature Off the vanilla step count is used unchanged.
      if (CONTACT_SHADOW_DETAIL_PATH == 1.f) {
        _1409 = (int)(lerp(float(_1409), 16.0f, CONTACT_SHADOW_MARCH_BLEND) + 0.5f);
      }
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      if (!_168) {
        _1415 = min(0.5f, ((_113 * 0.0025f) + 0.25f));
      } else {
        _1415 = 1.0f;
      }
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: Sets how far along the light direction the non-ray-traced contact shadow is allowed to
      //              march. Vanilla caps this path at a 0.01 world-space reach, which is too short to pick
      //              up contact occlusion from anything larger than immediate sub-pixel detail. The lerp
      //              extends the reach toward 0.05 in proportion to the Contact Micro Shadows quality; at
      //              the Off value the lerp returns the vanilla 0.01 exactly, leaving the march unchanged.
      _1421 = ((abs(_1316) * (select(_1298, 12.0f, 2.0f) - _1299)) + _1299) * select(_168, lerp(0.01f, 0.05f, CONTACT_SHADOW_REACH_BLEND), 0.1f);
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      if (!_168) {
        _1429 = max((_113 * select(((uint)((int)(_78) + (int)(-11)) < (uint)9), 0.008f, 0.03f)), _1421);
      } else {
        _1429 = _1421;
      }
      _1442 = (_terrainNormalParams.z > 0.0f);
      if (_1442) {
        _1446 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 255)));
        _1472 = frac(frac(dot(float2(((_1446 * 32.665f) + _58), ((_1446 * 11.815f) + _59)), float2(0.06711056f, 0.00583715f))) * 52.982918f);
      } else {
        if (_963) {
          _1466 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_961)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_961)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_961)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_953))));
        } else {
          _1466 = _953;
        }
        _1472 = (((float)((uint)((uint)(((int)((uint)((uint)(_1466)) * (uint)(48271))) & 16777215)))) * 5.9604645e-08f);
      }
      if ((_78 == 15) && (!(_1297 || ((_78 != 15) && ((uint)((int)(_78) + (int)(-12)) < (uint)7))))) {
        // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
        // Description: The contact ray's first sample is offset by a per-pixel random value scaled by this
        //              factor, so neighbouring pixels start at different distances and the march dithers
        //              instead of banding. On this depth-faded material branch vanilla scales the random by
        //              up to 10 units, which pushes the first sample past small nearby occluders and loses
        //              their contact darkening entirely. The lerp pulls the start scale toward 2 as the
        //              Contact Micro Shadows quality rises; at the Off value it returns the vanilla scale
        //              exactly.
        _1484 = ((lerp((10.0f - (saturate(_113 * 0.001f) * 9.0f)), 2.0f, CONTACT_SHADOW_START_BLEND)) * _1472);
        // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      } else {
        _1484 = _1472;
      }
      if (!_1442) {
        _1488 = saturate(_113 * 0.0625f) * 0.05f;
        _1493 = (_1488 * _101);
        _1494 = (_1488 * _102);
        _1495 = (_1488 * _103);
      } else {
        _1493 = 0.0f;
        _1494 = 0.0f;
        _1495 = 0.0f;
      }
      _1496 = _1493 + _150;
      _1497 = _1494 + _151;
      _1498 = _1495 + _152;
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: Seeds the contact-shadow ray carriers with the dominant light direction and the
      //              world-space march origin the native contact path just computed. Runs on the main
      //              path of the native shadow-evaluation gate, so the carriers hold the native values
      //              on every path that can reach the micro detail helper call (which is gated on the
      //              same condition). This block only copies values and changes no native result.
      _rndxMicroDirX = _1315;
      _rndxMicroDirY = _1316;
      _rndxMicroDirZ = _1317;
      _rndxMicroWorldPosX = _1496;
      _rndxMicroWorldPosY = _1497;
      _rndxMicroWorldPosZ = _1498;
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      _1510 = mad((_viewRelative[2].z), _1498, mad((_viewRelative[2].y), _1497, ((_viewRelative[2].x) * _1496))) + (_viewRelative[2].w);
      _1513 = mad((_viewRelative[2].z), _1408, mad((_viewRelative[2].y), _1404, ((_viewRelative[2].x) * _1400)));
      _1519 = select((((_1513 * _1429) + _1510) < _nearFarProj.x), ((_nearFarProj.x - _1510) / _1513), _1429);
      _1551 = mad((_viewProjRelative[2].z), _1498, mad((_viewProjRelative[2].y), _1497, ((_viewProjRelative[2].x) * _1496))) + (_viewProjRelative[2].w);
      _1555 = mad((_viewProjRelative[3].z), _1498, mad((_viewProjRelative[3].y), _1497, ((_viewProjRelative[3].x) * _1496))) + (_viewProjRelative[3].w);
      _1559 = (_1519 * _1400) + _1496;
      _1560 = (_1519 * _1404) + _1497;
      _1561 = (_1519 * _1408) + _1498;
      _1577 = mad((_viewProjRelative[3].z), _1561, mad((_viewProjRelative[3].y), _1560, ((_viewProjRelative[3].x) * _1559))) + (_viewProjRelative[3].w);
      _1578 = (mad((_viewProjRelative[0].z), _1498, mad((_viewProjRelative[0].y), _1497, ((_viewProjRelative[0].x) * _1496))) + (_viewProjRelative[0].w)) / _1555;
      _1579 = (mad((_viewProjRelative[1].z), _1498, mad((_viewProjRelative[1].y), _1497, ((_viewProjRelative[1].x) * _1496))) + (_viewProjRelative[1].w)) / _1555;
      _1580 = _1551 / _1555;
      _1584 = ((mad((_viewProjRelative[0].z), _1561, mad((_viewProjRelative[0].y), _1560, ((_viewProjRelative[0].x) * _1559))) + (_viewProjRelative[0].w)) / _1577) - _1578;
      _1585 = ((mad((_viewProjRelative[1].z), _1561, mad((_viewProjRelative[1].y), _1560, ((_viewProjRelative[1].x) * _1559))) + (_viewProjRelative[1].w)) / _1577) - _1579;
      _1588 = 1.0f / ((float)((uint)((uint)(_1409))));
      _1599 = max(_1588, (1.0f / min(1.0f, (max(((_bufferSizeAndInvSize.x * 0.5f) * abs(_1584)), ((_bufferSizeAndInvSize.y * 0.5f) * abs(_1585))) * _1588))));
      _1600 = _1599 * (((mad((_viewProjRelative[2].z), _1561, mad((_viewProjRelative[2].y), _1560, ((_viewProjRelative[2].x) * _1559))) + (_viewProjRelative[2].w)) / _1577) - _1580);
      _1619 = ((_1415 * 0.5f) * max(abs(_1600), (_1580 - ((mad((_proj[2].z), _113, 0.0f) + _1551) / (mad((_proj[3].z), _113, 0.0f) + _1555))))) * max(0.0625f, _1588);
      _1620 = _1599 * _1588;
      _1622 = (_1584 * 0.5f) * _1620;
      _1624 = (_1585 * -0.5f) * _1620;
      _1625 = _1600 * _1588;
      _1632 = max(_1484, (1.0f / max((abs(_1622) * _bufferSizeAndInvSize.x), (abs(_1624) * _bufferSizeAndInvSize.y))));
      _1639 = 0.5f / _bufferSizeAndInvSize.x;
      _1641 = (((_1578 * 0.5f) + 0.5f) + (_1632 * _1622));
      _1642 = ((0.5f - (_1579 * 0.5f)) + (_1632 * _1624));
      _1643 = ((_1632 * _1625) + _1580);
      _1644 = _1484;
      // [sem: expr_sat]
      _1645 = saturate(((_113 * 0.01f) * (1.0f - saturate(dot(float3(_101, _102, _103), float3((-0.0f - (_150 * _154)), (-0.0f - (_151 * _154)), (-0.0f - (_152 * _154))))))) + 0.01f);
      _1646 = 0;
      _1647 = 0;
      _1648 = 0.0f;
      _1649 = 0.0f;
      while(true) {
        // [sem: _3__36__0__0__g_depthStencil_load]
        _1658 = __3__36__0__0__g_depthStencil.Load(int3(((int)(min(max(_1641, _1639), (1.0f - _1639)) * _bufferSizeAndInvSize.x)), ((int)(_1642 * _bufferSizeAndInvSize.y)), 0));
        _1660 = (uint)((uint)(_1658.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _1663 = ((float)((uint)((uint)(_1658.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _1664 = _1660 & 127;
        _1665 = (_1646 == 0);
        _1666 = select(_1665, 1.0f, _1645);
        _1670 = _nearFarProj.x / max(1e-07f, _1663);
        _1673 = _1670 - (_nearFarProj.x / max(1e-07f, _1643));
        _1677 = (abs((_1643 + _1619) - _1663) < _1619);
        _1678 = (int)(uint)(_1677);
        if (_1677) {
          if ((_1664 == 7) || ((_1664 == 53) || (((_1660 & 126) == 66) || (((uint)((int)(_1664) + (int)(-5)) < (uint)2) || ((_1664 == 107) || ((_1664 == 26) || (((uint)((int)(_1664) + (int)(-27)) < (uint)2) || ((_1664 == 106) || (((_1660 & 125) == 105) || ((_1664 == 18) || ((uint)((int)(_1664) + (int)(-19)) < (uint)2))))))))))) {
            _1714 = true;
            _1721 = ((int)(uint)((int)((_1673 < 0.0f) && (_1673 > select(_1714, -0.08f, -1.0f)))));
          } else {
            if ((_1664 != 67) && ((uint)((int)(_1664) + (int)(-52)) < (uint)16)) {
              _1714 = (_1670 < 32.0f);
              _1721 = ((int)(uint)((int)((_1673 < 0.0f) && (_1673 > select(_1714, -0.08f, -1.0f)))));
            } else {
              _1721 = _1678;
            }
          }
        } else {
          _1721 = _1678;
        }
        if (!(_1721 == 0)) {
          if ((uint)_1664 > (uint)11) {
            if (!((uint)_1664 < (uint)16)) {
              if (!(_1664 == 17)) {
                if (!(_1664 == 16)) {
                  if (!((_1664 == 18) || ((_1664 == 107) || ((uint)((int)(_1664) + (int)(-19)) < (uint)2)))) {
                    if (!(_1664 == 66)) {
                      _1744 = 0.0f;
                    } else {
                      _1744 = 0.1f;
                    }
                  } else {
                    _1744 = 0.15f;
                  }
                } else {
                  _1744 = 0.1f;
                }
              } else {
                _1744 = 0.7f;
              }
            } else {
              _1744 = 0.9f;
            }
          } else {
            if (!(_1664 == 11)) {
              _1744 = 0.0f;
            } else {
              _1744 = 0.1f;
            }
          }
          _1746 = saturate(_1670 * 0.015625f);  // [sem: expr_sat]
          _1749 = (1.0f - _1746) + (_1746 * _1744);
          _1764 = _1664;
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
          if (MICRO_SHADOW_FLICKER_FIX != 0.f && !_1665) {
            float _rndxJitterPx = (length(_temporalAAJitter.xy - _temporalAAJitter.zw) > 0.0f) ? 1.0f : 0.0f;
            float _rndxStepPx = max(length(float2((_1645 * _1622) * _bufferSizeAndInvSize.x, (_1645 * _1624) * _bufferSizeAndInvSize.y)), 1.0f);
            float _rndxGradPerPx = abs(_1663 - _1648) / _rndxStepPx;
            float _rndxBand = _rndxGradPerPx * _rndxJitterPx;
            float _rndxMargin = _1619 - abs((_1643 + _1619) - _1663);
            _rndxEvidenceW = (_rndxBand > 0.0f) ? saturate(_rndxMargin / _rndxBand) : 1.0f;
          }
          float _rndxMicroFarAccum = (saturate(1.0f - ((_1749 * _1749) * _1744)) * (1.0f - _1649)) * saturate((-0.0f - _1673) / (_1644 * 0.0046548597f)) * _rndxEvidenceW;
          _1765 = saturate((_rndxMicroFarAccum * lerp(1.0f, 0.7f, CONTACT_SHADOW_BASE_TUNING)) + _1649);
          // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
        } else {
          _1764 = _1647;
          _1765 = _1649;  // [sem: expr_sat]
        }
        if ((_1664 != 0) && (_1765 > 0.95f)) {
          if (!_1665) {
            _1797 = (saturate((_1648 - _1663) / (_1648 - _1643)) - min(_1644, _1666));
          } else {
            _1797 = 0.0f;
          }
          _1806 = ((_1797 * _1622) + _1641);
          _1807 = ((_1797 * _1624) + _1642);
          _1808 = ((_1797 * _1625) + _1643);
          _1809 = _1663;
          _1810 = _1664;
        } else {
          if ((uint)_1646 < (uint)((int)(_1409) + (int)(-1))) {
            _1789 = ((_1666 * _1622) + _1641);
            _1790 = ((_1666 * _1624) + _1642);
            _1791 = ((_1666 * _1625) + _1643);
            _1792 = (_1666 + _1644);
            _1793 = _1663;
          } else {
            _1789 = _1641;
            _1790 = _1642;
            _1791 = _1643;
            _1792 = _1644;
            _1793 = _1648;
          }
          _1794 = (int)(_1646) + (int)(1);
          if ((uint)_1794 < (uint)_1409) {
            _1641 = _1789;
            _1642 = _1790;
            _1643 = _1791;
            _1644 = _1792;
            _1645 = _1666;  // [sem: expr_sat]
            _1646 = _1794;
            _1647 = _1764;
            _1648 = _1793;
            _1649 = _1765;
            continue;
          } else {
            _1806 = 0.0f;
            _1807 = 0.0f;
            _1808 = -1.0f;
            _1809 = 0.0f;
            _1810 = _1764;
          }
        }
        _1814 = (_1765 > 0.0f);
        if (_1808 > 0.0f) {
          if (_1814 || (((_1806 >= 0.0f) && (_1806 <= 1.0f)) && ((_1807 >= 0.0f) && (_1807 <= 1.0f)))) {
            _1828 = (_1806 * 2.0f) + -1.0f;
            _1829 = 1.0f - (_1807 * 2.0f);
            _1845 = mad((_invViewProjRelative[3].z), _1808, mad((_invViewProjRelative[3].y), _1829, (_1828 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
            if (!(_1810 == 2)) {
              if (_1810 == 3) {
                _1869 = 0.0f;
                _1871 = _1869;
              } else {
                if (_1810 == 21) {
                  if (!(_78 == 21)) {
                    _1869 = 0.0f;
                    _1871 = _1869;
                  } else {
                    _1871 = 20.0f;
                  }
                } else {
                  _1862 = (_1810 == 22);
                  if (!((_78 == 22) && _1862)) {
                    _1869 = select(_1862, 0.0f, 1.0f);
                    _1871 = _1869;
                  } else {
                    _1871 = 20.0f;
                  }
                }
              }
            } else {
              if (!(_78 == 2)) {
                _1869 = 0.0f;
                _1871 = _1869;
              } else {
                _1871 = 20.0f;
              }
            }
            if (_556 && (_1765 == 1.0f)) {
              // [sem: expr_sat]
              _1895 = saturate(((((_1429 * 0.9375f) - max(0.0f, dot(float3(_1400, _1404, _1408), float3((((mad((_invViewProjRelative[0].z), _1808, mad((_invViewProjRelative[0].y), _1829, (_1828 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _1845) - _1496), (((mad((_invViewProjRelative[1].z), _1808, mad((_invViewProjRelative[1].y), _1829, (_1828 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _1845) - _1497), (((mad((_invViewProjRelative[2].z), _1808, mad((_invViewProjRelative[2].y), _1829, (_1828 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _1845) - _1498))))) * ((_113 * 0.015625f) + 1.5f)) / _1429) * 0.9375f);
            } else {
              _1895 = _1765;  // [sem: expr_sat]
            }
            _1896 = _1895 * saturate(exp2(min(0.0f, (((_113 * 0.018666666f) + 0.13333334f) + (_1871 * ((_nearFarProj.x / max(1e-07f, _1809)) - (_nearFarProj.x / max(1e-07f, _1808)))))) * 1.442695f));
            _1897 = _1810 & -2;
            if (!(_1897 == 6)) {
              if ((((_78 == 33) && (_1810 == 33)) || (!(_78 == 33) && ((_78 == 54) && (_1810 == 54))))) {
                _1971 = (_1896 * 0.01f);
              } else {
                if (!((_1810 == 53) || (_1897 == 66)) || (((_1810 == 53) || (_1897 == 66)) && (!((_1295 == 66) || (_78 == 53))))) {
                  if (!_168) {
                    if ((uint)((int)((uint)((uint)(_1810)) + (uint)(-52))) < (uint)16) {
                      _1968 = saturate(_113 * 0.03125f);  // [sem: expr_sat]
                    } else {
                      _1968 = 1.0f;  // [sem: expr_sat]
                    }
                    _1971 = (_1968 * _1896);
                  } else {
                    _1971 = _1896;
                  }
                } else {
                  // [sem: _3__36__0__0__g_baseColor_load]
                  _1923 = __3__36__0__0__g_baseColor.Load(int3(((int)(_1806 * _bufferSizeAndInvSize.x)), ((int)(_1807 * _bufferSizeAndInvSize.y)), 0));
                  _1929 = ((float)((uint)((uint)(((uint)((uint)(_1923.x)) >> 8) & 255)))) * 0.003921569f;
                  _1932 = ((float)((uint)((uint)(_1923.x & 255)))) * 0.003921569f;
                  _1936 = ((float)((uint)((uint)(((uint)((uint)(_1923.y)) >> 8) & 255)))) * 0.003921569f;
                  _1937 = _1929 * _1929;
                  _1938 = _1932 * _1932;
                  _1939 = _1936 * _1936;
                  _1971 = (saturate(1.0f - (dot(float3((((_1937 * 0.61312f) + (_1938 * 0.33951f)) + (_1939 * 0.04737f)), (((_1937 * 0.0702f) + (_1938 * 0.91636f)) + (_1939 * 0.01345f)), (((_1937 * 0.02062f) + (_1938 * 0.10958f)) + (_1939 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _1896);
                }
              }
            } else {
              _1971 = (_1896 * 0.01f);
            }
          } else {
            _1971 = 0.0f;
          }
        } else {
          if (_1814) {
            _1828 = (_1806 * 2.0f) + -1.0f;
            _1829 = 1.0f - (_1807 * 2.0f);
            _1845 = mad((_invViewProjRelative[3].z), _1808, mad((_invViewProjRelative[3].y), _1829, (_1828 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
            if (!(_1810 == 2)) {
              if (_1810 == 3) {
                _1869 = 0.0f;
                _1871 = _1869;
              } else {
                if (_1810 == 21) {
                  if (!(_78 == 21)) {
                    _1869 = 0.0f;
                    _1871 = _1869;
                  } else {
                    _1871 = 20.0f;
                  }
                } else {
                  _1862 = (_1810 == 22);
                  if (!((_78 == 22) && _1862)) {
                    _1869 = select(_1862, 0.0f, 1.0f);
                    _1871 = _1869;
                  } else {
                    _1871 = 20.0f;
                  }
                }
              }
            } else {
              if (!(_78 == 2)) {
                _1869 = 0.0f;
                _1871 = _1869;
              } else {
                _1871 = 20.0f;
              }
            }
            if (_556 && (_1765 == 1.0f)) {
              // [sem: expr_sat]
              _1895 = saturate(((((_1429 * 0.9375f) - max(0.0f, dot(float3(_1400, _1404, _1408), float3((((mad((_invViewProjRelative[0].z), _1808, mad((_invViewProjRelative[0].y), _1829, (_1828 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _1845) - _1496), (((mad((_invViewProjRelative[1].z), _1808, mad((_invViewProjRelative[1].y), _1829, (_1828 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _1845) - _1497), (((mad((_invViewProjRelative[2].z), _1808, mad((_invViewProjRelative[2].y), _1829, (_1828 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _1845) - _1498))))) * ((_113 * 0.015625f) + 1.5f)) / _1429) * 0.9375f);
            } else {
              _1895 = _1765;  // [sem: expr_sat]
            }
            _1896 = _1895 * saturate(exp2(min(0.0f, (((_113 * 0.018666666f) + 0.13333334f) + (_1871 * ((_nearFarProj.x / max(1e-07f, _1809)) - (_nearFarProj.x / max(1e-07f, _1808)))))) * 1.442695f));
            _1897 = _1810 & -2;
            if (!(_1897 == 6)) {
              if ((((_78 == 33) && (_1810 == 33)) || (!(_78 == 33) && ((_78 == 54) && (_1810 == 54))))) {
                _1971 = (_1896 * 0.01f);
              } else {
                if (!((_1810 == 53) || (_1897 == 66)) || (((_1810 == 53) || (_1897 == 66)) && (!((_1295 == 66) || (_78 == 53))))) {
                  if (!_168) {
                    if ((uint)((int)((uint)((uint)(_1810)) + (uint)(-52))) < (uint)16) {
                      _1968 = saturate(_113 * 0.03125f);  // [sem: expr_sat]
                    } else {
                      _1968 = 1.0f;  // [sem: expr_sat]
                    }
                    _1971 = (_1968 * _1896);
                  } else {
                    _1971 = _1896;
                  }
                } else {
                  // [sem: _3__36__0__0__g_baseColor_load]
                  _1923 = __3__36__0__0__g_baseColor.Load(int3(((int)(_1806 * _bufferSizeAndInvSize.x)), ((int)(_1807 * _bufferSizeAndInvSize.y)), 0));
                  _1929 = ((float)((uint)((uint)(((uint)((uint)(_1923.x)) >> 8) & 255)))) * 0.003921569f;
                  _1932 = ((float)((uint)((uint)(_1923.x & 255)))) * 0.003921569f;
                  _1936 = ((float)((uint)((uint)(((uint)((uint)(_1923.y)) >> 8) & 255)))) * 0.003921569f;
                  _1937 = _1929 * _1929;
                  _1938 = _1932 * _1932;
                  _1939 = _1936 * _1936;
                  _1971 = (saturate(1.0f - (dot(float3((((_1937 * 0.61312f) + (_1938 * 0.33951f)) + (_1939 * 0.04737f)), (((_1937 * 0.0702f) + (_1938 * 0.91636f)) + (_1939 * 0.01345f)), (((_1937 * 0.02062f) + (_1938 * 0.10958f)) + (_1939 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _1896);
                }
              }
            } else {
              _1971 = (_1896 * 0.01f);
            }
          } else {
            _1971 = 0.0f;
          }
        }
        _1975 = saturate(1.0f - _1971);  // [sem: expr_sat]
        break;
      }
    } else {
      _1975 = 1.0f;  // [sem: expr_sat]
    }
    // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
    // Description: The native contact-shadow march is a short ray with very few steps, so it misses
    //              sub-pixel and small-scale occluders and leaves surface detail such as ground litter,
    //              pebbles, cloth folds and foliage sitting on the ground without any contact darkening.
    //              This calls the shared depth-bias micro detail shadow helper, which re-marches the depth
    //              buffer with a continuous thickness window instead of a binary hit test and returns a
    //              darkened contact value. The helper returns its input unchanged when Contact Micro
    //              Shadows is Off, so the vanilla shadow value is preserved.
    //              The stencil argument is the masked material id (raw depth byte & 127), matching
    //              the other variants and the mask the helper applies to the ids it samples. The raw
    //              byte carries flag bits above the id, so passing it unmasked made the helper's
    //              excluded-material list silently miss any pixel with a flag bit set.
    //              The whole region is gated
    //              on the same native shadow-evaluation condition that seeds the ray carriers: when
    //              that gate is skipped the carriers were never given real values, and the native
    //              composite below takes min(gateValue, contactValue). On that edge the native else-branch
    //              sets contactValue to exactly 1.0 and gateValue is <= 0, so the min returns the gate value
    //              and the helper result could not affect the output there. The same holds if gateValue is
    //              NaN: the native if/else still yields 1.0 and the min resolves to the non-NaN operand, so
    //              gating actually restores vanilla for that pixel, where the un-gated form would have
    //              marched with unseeded carriers and could have returned less than 1.0. The gate makes the
    //              skip explicit instead of marching with unseeded carriers.
    if (_1285 > 0.0f) {
      _1975 = ApplyContactMicroDetailShadow(
          _1975,
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
      if (CONTACT_SHADOW_DETAIL_PATH == 1.f && _1975 < 1.0f) {
        float2 _rndxMicroScreenUV = float2((_58 + 0.5f) * _bufferSizeAndInvSize.z,
                                           (_59 + 0.5f) * _bufferSizeAndInvSize.w);
        float2 _rndxMicroEdgeDist = min(_rndxMicroScreenUV, 1.0f - _rndxMicroScreenUV);
        float _rndxMicroEdgeFade = saturate(min(_rndxMicroEdgeDist.x, _rndxMicroEdgeDist.y) * 10.0f);
        _1975 = lerp(lerp(1.0f, _1975, 0.5f), _1975, _rndxMicroEdgeFade);
      }
    }
    // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
    _1976 = min(_1285, _1975);
    _1990 = float(half(_1976 * float(_1261)));
    _1991 = float(half(_1976 * float(_1262)));
    _1992 = float(half(_1976 * float(_1263)));
    _1993 = saturate((1.0f - _552) + (exp2(log2(saturate(select(_168, (_1270 + 0.98f), _1270))) * 0.45454544f) * _552));  // [sem: expr_sat]
  }
  __3__38__0__1__g_shadowColorResultUAV[int2(_56, _57)] = float4((half)(half(_1990)), (half)(half(_1991)), (half)(half(_1992)), (half)(half(_1993)));
}
