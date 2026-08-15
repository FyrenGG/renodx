// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the shared options and helpers used by this shader's RenoDX patches. This dependency-only prefix adds no native executable statement; removing it restores the native shader body byte-for-byte.
#include "../shared.h"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
Texture2D<uint> __3__36__0__0__g_depthStencilHalf : register(t125, space36);

Texture2D<uint2> __3__36__0__0__g_normalDepth : register(t25, space36);

RWTexture2D<float2> __3__38__0__1__g_sceneAOResultUAV : register(u38, space38);

RWTexture2D<float4> __3__38__0__1__g_bentConeResultUAV : register(u39, space38);

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

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

groupshared half _global_0[1024];
groupshared half _global_1[1024];

[numthreads(16, 16, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  int4 _18;
  int _28;
  int _32;
  int _42;
  uint _52;
  uint _53;
  uint2 _108;
  int _111;
  float _114;
  int _115;
  float _130;
  float _131;
  float _132;
  float _134;
  float _135;
  float _136;
  float _137;
  float _140;
  float _143;
  bool _145;
  float _261;
  float _270;
  float _294;
  float _295;
  float _296;
  int _440;
  float _451;
  float _466;
  float _467;
  float _468;
  float _469;
  float _470;
  float _471;
  int _472;
  float _473;
  float _474;
  float _475;
  int _476;
  int _477;
  float _647;
  float _648;
  float _649;
  float _650;
  float _651;
  int _652;
  int _653;
  float _654;
  int _695;
  int _713;
  float _714;
  float _734;
  int _755;
  float _756;
  int _771;
  float _787;
  float _832;
  float _833;
  float _834;
  float _863;
  float _864;
  float _865;
  float _866;
  float _867;
  float _868;
  float _876;
  float _877;
  float _878;
  float _879;
  float _880;
  float _881;
  int _882;
  float _887;
  float _888;
  float _889;
  float _890;
  float _891;
  float _892;
  float _896;
  float _897;
  float _898;
  float _899;
  float _900;
  float _901;
  int _902;
  float _991;
  float _992;
  float _993;
  float _994;
  float _995;
  float _996;
  float _1000;
  float _1001;
  float _1002;
  float _1003;
  float _1004;
  float _1019;
  float _1020;
  float _1021;
  float _1030;
  float _1044;
  float _1045;
  float _148;
  float _152;
  float _153;
  float _189;
  float _190;
  float _191;
  float _192;
  float _194;
  int _200;
  bool _201;
  float _205;
  float _206;
  float _207;
  float _208;
  float _209;
  float _220;
  float _221;
  float _226;
  bool _232;
  bool _233;
  bool _242;
  int _243;
  int _244;
  float _250;
  int _262;
  float _287;
  float _289;
  uint _307;
  uint _315;
  uint _323;
  uint _331;
  uint _339;
  uint _347;
  uint _355;
  uint _363;
  uint _371;
  uint _379;
  uint _387;
  uint _395;
  uint _403;
  uint _411;
  uint _419;
  uint _427;
  uint _441;
  float _447;
  float _452;
  float _456;
  float _463;
  int _480;
  float _492;
  float _493;
  float _496;
  float _499;
  float _500;
  float _502;
  float _505;
  float _506;
  float _507;
  float _508;
  float _517;
  float _521;
  float _525;
  uint _526;
  float _562;
  float _566;
  float _570;
  float _571;
  float _572;
  float _588;
  float _589;
  float _590;
  float _591;
  float _595;
  float _596;
  float _599;
  float _608;
  float _609;
  float _626;
  float _628;
  float _630;
  float _631;
  float _638;
  uint _660;
  float _665;
  int _666;
  float _668;
  float _669;
  float _673;
  float _674;
  float _677;
  float _679;
  bool _692;
  int _693;
  float _705;
  int _760;
  float _764;
  float _765;
  float _766;
  float _767;
  int _768;
  float _772;
  float _773;
  float _774;
  float _777;
  float _781;
  float _788;
  bool _789;
  bool _791;
  float _793;
  float _797;
  float _798;
  float _799;
  float _800;
  float _801;
  float _802;
  float _803;
  float _805;
  float _810;
  float _813;
  float _815;
  float _817;
  float _818;
  bool _821;
  int _822;
  int _823;
  float _827;
  float _835;
  float _849;
  int _853;
  int _854;
  int _857;
  int _858;
  float _869;
  int _893;
  half _912;
  float _958;
  float _972;
  int _997;
  float _1010;
  int __loop_jump_target = -1;
  int _8[4];
  _18 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 3))]);
  _8[0] = _18.x;
  _8[1] = _18.y;
  _8[2] = _18.z;
  _8[3] = _18.w;
  _28 = _8[(((uint)(SV_GroupID.x) >> 1) & 3)];
  _32 = select((((int)(SV_GroupID.x) & 1) == 0), _28, ((uint)((uint)(_28)) >> 16));
  _42 = ((int)((uint)((uint)(_frameNumber.x)) * (uint)(19))) & 15;
  _52 = (uint)((uint)((uint)((uint)(((int)((uint)((uint)(_32)) << 4)) & 4080)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(_42))) % (uint)((uint)((uint)((uint)(_bufferSizeAndInvSize.x)) >> 1));
  _53 = (uint)((uint)((uint)((uint)(((uint)((uint)(_32)) >> 4) & 4080)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(_42))) % (uint)((uint)((uint)((uint)(_bufferSizeAndInvSize.y)) >> 1));
  _global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = 0.0h;
  _global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = 0.0h;
  _global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = 0.0h;
  _global_0[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = 0.0h;
  _global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = 0.0h;
  _global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = 0.0h;
  _global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = 0.0h;
  _global_1[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = 0.0h;
  GroupMemoryBarrierWithGroupSync();
  _108 = __3__36__0__0__g_normalDepth.Load(int3(_52, _53, 0));  // [sem: _3__36__0__0__g_normalDepth_load]
  _111 = (uint)((uint)(_108.y)) >> 24;  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _114 = ((float)((uint)((uint)(_108.y & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _115 = _111 & 127;
  _130 = min(1.0f, ((((float)((uint)((uint)(_108.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _131 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_108.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _132 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_108.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _134 = rsqrt(dot(float3(_130, _131, _132), float3(_130, _131, _132)));  // [sem: invLength]
  _135 = _134 * _130;
  _136 = _134 * _131;
  _137 = _134 * _132;
  _140 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((uint)((uint)((int)((int)((uint)((uint)(_52)) << 1)) | (int)(_frameNumber.x & 1))))) + 0.5f)) + -1.0f;
  _143 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((uint)((uint)((int)((int)((uint)((uint)(_53)) << 1)) | (int)(((uint)((uint)(_frameNumber.x)) >> 1) & 1))))) + 0.5f));
  _145 = (_114 == 1.0f);
  if ((_114 < 1e-07f) || _145) {
    _148 = select(_145, 0.0f, 1.0f);
    _1044 = _148;
    _1045 = _148;
  } else {
    _152 = max(1e-07f, _114);
    _153 = _nearFarProj.x / _152;
    _189 = mad((_invViewProjRelative[3].z), _152, mad((_invViewProjRelative[3].y), _143, ((_invViewProjRelative[3].x) * _140))) + (_invViewProjRelative[3].w);
    _190 = (mad((_invViewProjRelative[0].z), _152, mad((_invViewProjRelative[0].y), _143, ((_invViewProjRelative[0].x) * _140))) + (_invViewProjRelative[0].w)) / _189;
    _191 = (mad((_invViewProjRelative[1].z), _152, mad((_invViewProjRelative[1].y), _143, ((_invViewProjRelative[1].x) * _140))) + (_invViewProjRelative[1].w)) / _189;
    _192 = (mad((_invViewProjRelative[2].z), _152, mad((_invViewProjRelative[2].y), _143, ((_invViewProjRelative[2].x) * _140))) + (_invViewProjRelative[2].w)) / _189;
    _194 = rsqrt(dot(float3(_190, _191, _192), float3(_190, _191, _192)));  // [sem: invLength]
    _200 = (int)(_115) + (int)(-52);
    _201 = ((uint)_200 < (uint)16);
    _205 = _bufferSizeAndInvSize.x * 0.5f;
    _206 = _bufferSizeAndInvSize.y * 0.5f;
    _207 = (float)((uint)((uint)(_52)));
    _208 = (float)((uint)((uint)(_53)));
    _209 = (float)((uint)((uint)(_frameNumber.x)));
    _220 = (frac(((_209 * 92.0f) + _207) * 0.0078125f) * 128.0f) + -64.34062f;
    _221 = (frac(((_209 * 71.0f) + _208) * 0.0078125f) * 128.0f) + -72.46562f;
    _226 = frac(dot(float3((_220 * _220), (_221 * _221), (_221 * _220)), float3(20.390625f, 60.703125f, 2.4281209f)));
    _232 = _201 && (_153 < 4.0f);
    _233 = (_115 == 65);
    _242 = (_shadowAOParams.z == 0.0f);
    _243 = select(_242, 4, select(_233, 32, select(_232, 8, 4)));
    _244 = select(_242, 5, select(_201, 8, 6));
    _250 = ((_153 * 16.0f) * _bufferSizeAndInvSize.z) * _screenPercentage.x;
    if (_201) {
      _261 = max(0.05f, (_250 * 4.0f));
    } else {
      _261 = (max(((_153 * 0.03125f) + 0.1f), (_250 * 16.0f)) * 2.0f);
    }
    _262 = _111 & 126;
    if (((_111 & 124) == 64) || (_115 == 53)) {
      _270 = max(0.02f, _261);
    } else {
      _270 = _261;
    }
    if (((_115 == 107) || ((_115 == 18) || ((_262 == 16) || ((_262 == 12) || ((uint)((int)(_115) + (int)(-19)) < (uint)2))))) && (!_201)) {
      _287 = saturate(_153 * 0.02f) + _136;
      _289 = rsqrt(dot(float3(_135, _287, _137), float3(_135, _287, _137)));  // [sem: invLength]
      _294 = (_289 * _135);
      _295 = (_289 * _287);
      _296 = (_289 * _137);
    } else {
      _294 = _135;
      _295 = _136;
      _296 = _137;
    }
    _307 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_205 * _208) + _207));
    _315 = (uint)((uint)((((int)((uint)((uint)((uint)(_307)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_307)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_307)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
    _323 = (uint)((uint)((((int)((uint)((uint)((uint)(_315)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_315)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_315)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_307));
    _331 = (uint)((uint)((((int)((uint)((uint)((uint)(_323)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_323)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_323)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_315));
    _339 = (uint)((uint)((((int)((uint)((uint)((uint)(_331)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_331)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_331)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_323));
    _347 = (uint)((uint)((((int)((uint)((uint)((uint)(_339)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_339)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_339)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_331));
    _355 = (uint)((uint)((((int)((uint)((uint)((uint)(_347)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_347)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_347)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_339));
    _363 = (uint)((uint)((((int)((uint)((uint)((uint)(_355)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_355)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_355)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_347));
    _371 = (uint)((uint)((((int)((uint)((uint)((uint)(_363)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_363)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_363)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_355));
    _379 = (uint)((uint)((((int)((uint)((uint)((uint)(_371)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_371)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_371)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_363));
    _387 = (uint)((uint)((((int)((uint)((uint)((uint)(_379)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_379)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_379)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_371));
    _395 = (uint)((uint)((((int)((uint)((uint)((uint)(_387)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_387)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_387)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_379));
    _403 = (uint)((uint)((((int)((uint)((uint)((uint)(_395)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_395)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_395)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_387));
    _411 = (uint)((uint)((((int)((uint)((uint)((uint)(_403)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_403)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_403)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_395));
    _419 = (uint)((uint)((((int)((uint)((uint)((uint)(_411)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_411)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_411)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_403));
    _427 = (uint)((uint)((((int)((uint)((uint)((uint)(_419)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_419)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_419)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_411));
    if ((_419 & 16777215) == 0) {
      _440 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_427)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_427)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_427)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_419))));
    } else {
      _440 = _419;
    }
    _441 = (uint)((uint)(_440)) * (uint)(48271);
    if (!_201) {
      _447 = (float)((uint)((uint)(_244)));
      _451 = (_447 / (_447 + -1.5f));
    } else {
      _451 = 1.0f;
    }
    _452 = _451 * select(_233, 0.02f, _270);
    _466 = 0.0f;
    _467 = 0.0f;
    _468 = 0.0f;
    _469 = 0.0f;
    _470 = 0.0f;
    _471 = 0.0f;
    _472 = _441;
    _473 = 0.0f;
    _474 = 0.0f;
    _475 = 0.0f;
    _476 = 0;
    _477 = 0;
    while(true) {
      _480 = ((int)((uint)((uint)((uint)(_477)) * (uint)((uint)((int)max((uint)(1), (uint)(select(_233, 0, select(_232, 3, 7))))))) + (uint)((uint)(((float)((uint)((uint)(_441 & 16777215)))) * 1.5258193e-05f)))) & 31;
      _492 = frac((((float)((uint)((uint)(_480)))) * 0.03125f) + (((float)((uint)((uint)(((int)((uint)(_226 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f)) * 6.2831855f;
      _493 = sqrt(((float)((uint)((uint)(reversebits(_480) ^ ((int)((uint)(_226 * 2.8747837e+08f))))))) * 2.3283064e-10f);
      _496 = sqrt(1.0f - (_493 * _493));
      _499 = cos(_492) * _496;
      _500 = sin(_492) * _496;
      _502 = select((_296 >= 0.0f), 1.0f, -1.0f);
      _505 = -0.0f - (1.0f / (_502 + _296));
      _506 = _295 * _505;
      _507 = _506 * _294;
      _508 = _502 * _294;
      _517 = mad(_493, _294, mad(_500, _507, ((((_508 * _294) * _505) + 1.0f) * _499)));
      _521 = mad(_493, _295, mad(_500, (_502 + (_506 * _295)), ((_499 * _502) * _507)));
      _525 = mad(_493, _296, mad(_500, (-0.0f - _295), (-0.0f - (_508 * _499))));
      _526 = (uint)((uint)(_472)) * (uint)(48271);
      _562 = mad((_viewProjRelative[2].z), _192, mad((_viewProjRelative[2].y), _191, ((_viewProjRelative[2].x) * _190))) + (_viewProjRelative[2].w);
      _566 = mad((_viewProjRelative[3].z), _192, mad((_viewProjRelative[3].y), _191, ((_viewProjRelative[3].x) * _190))) + (_viewProjRelative[3].w);
      _570 = (_517 * _452) + _190;
      _571 = (_521 * _452) + _191;
      _572 = (_525 * _452) + _192;
      _588 = mad((_viewProjRelative[3].z), _572, mad((_viewProjRelative[3].y), _571, ((_viewProjRelative[3].x) * _570))) + (_viewProjRelative[3].w);
      _589 = (mad((_viewProjRelative[0].z), _192, mad((_viewProjRelative[0].y), _191, ((_viewProjRelative[0].x) * _190))) + (_viewProjRelative[0].w)) / _566;
      _590 = (mad((_viewProjRelative[1].z), _192, mad((_viewProjRelative[1].y), _191, ((_viewProjRelative[1].x) * _190))) + (_viewProjRelative[1].w)) / _566;
      _591 = _562 / _566;
      _595 = ((mad((_viewProjRelative[0].z), _572, mad((_viewProjRelative[0].y), _571, ((_viewProjRelative[0].x) * _570))) + (_viewProjRelative[0].w)) / _588) - _589;
      _596 = ((mad((_viewProjRelative[1].z), _572, mad((_viewProjRelative[1].y), _571, ((_viewProjRelative[1].x) * _570))) + (_viewProjRelative[1].w)) / _588) - _590;
      _599 = 1.0f / ((float)((uint)((uint)(_244))));
      _608 = max(_599, (1.0f / min(1.0f, (max((abs(_595) * _205), (abs(_596) * _206)) * _599))));
      _609 = _608 * (((mad((_viewProjRelative[2].z), _572, mad((_viewProjRelative[2].y), _571, ((_viewProjRelative[2].x) * _570))) + (_viewProjRelative[2].w)) / _588) - _591);
      _626 = _608 * _599;
      _628 = (_595 * 0.5f) * _626;
      _630 = (_596 * -0.5f) * _626;
      _631 = _609 * _599;
      _638 = max(((((float)((uint)((uint)(_526 & 16777215)))) * 1.4901161e-08f) + 0.01f), (1.0f / max((abs(_628) * _205), (abs(_630) * _206))));
      _647 = (((_589 * 0.5f) + 0.5f) + (_638 * _628));
      _648 = ((0.5f - (_590 * 0.5f)) + (_638 * _630));
      _649 = ((_638 * _631) + _591);
      _650 = 0.0f;
      _651 = 0.25f;
      _652 = 0;
      _653 = 0;
      _654 = 0.0f;
      while(true) {
        _660 = __3__36__0__0__g_depthStencilHalf.Load(int3(((int)(_647 * _205)), ((int)(_648 * _206)), 0));  // [sem: _3__36__0__0__g_depthStencilHalf_load]
        _665 = ((float)((uint)((uint)(_660.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencilHalf_load_derived]
        _666 = ((uint)((uint)(_660.x)) >> 24) & 127;  // [sem: _3__36__0__0__g_depthStencilHalf_load_derived]
        _668 = select((_652 == 2), 1.2f, _651);
        _669 = _649 - _665;
        _673 = _nearFarProj.x / max(1e-07f, _665);
        _674 = (_599 * _452) * _668;
        _677 = _673 - (_nearFarProj.x / max(1e-07f, _649));
        _679 = (max(abs(_609), (_591 - ((mad((_proj[2].z), _153, 0.0f) + _562) / (mad((_proj[3].z), _153, 0.0f) + _566)))) * 0.34f) * max(0.0625f, _599);
        bool __branch_chain_646;
        if (!(abs(_669 + _679) < _679)) {
          _695 = 0;
          __branch_chain_646 = true;
        } else {
          _692 = (_677 > select((_666 == 5), -0.08f, (-0.0f - max(0.03f, min((_673 * 0.5f), ((_673 * _673) * 0.01f))))));
          _693 = (int)(uint)(_692);
          if (!_692) {
            _695 = _693;
            __branch_chain_646 = true;
          } else {
            _713 = _693;
            _714 = _650;
            __branch_chain_646 = false;
          }
        }
        if (__branch_chain_646) {
          if ((_650 == 0.0f) && (_669 < 0.0f)) {
            _713 = _695;
            _714 = (-0.0f - _677);
          } else {
            if (_650 > 0.0f) {
              _705 = _674 * 1.5f;
              if ((_650 < _705) || (_669 > 0.0f)) {
                _713 = ((int)(uint)((int)((_650 - _705) < 0.0f)));
                _714 = 0.0f;
              } else {
                _713 = _695;
                _714 = _650;
              }
            } else {
              _713 = _695;
              _714 = _650;
            }
          }
        }
        if (!(_713 == 0)) {
          if ((_666 == 19) || (_666 == 107)) {
            _734 = max(0.1f, (1.0f - (_673 * 0.01f)));
          } else {
            _734 = 1.0f;
          }
          _755 = ((int)((int)(uint)((int)((uint)((int)(_666) + (int)(-52)) < (uint)16))) | (int)(_653));
          // [sem: expr_sat]
          // RenoDX: >>> [Patch: FoliageAORange] [Version: 1.16.00]
          // Description: Foliage stencil pixels can retain scene AO farther into the mid-distance. The feature-off and non-foliage paths route the exact native distance fade into the otherwise unchanged AO expression.
          float _renodxAODistanceFade = 1.0f - saturate(max((_673 + -100.0f), 0.0f) * 0.05f);
          if (FOLIAGE_AO_STRENGTH > 0.0f && ((uint)(_115 - 12) < 7u)) {
            _renodxAODistanceFade = 1.0f - saturate(max((_673 + -200.0f), 0.0f) * 0.005f);
          }
          _756 = saturate((saturate(1.0f - exp2(log2(select((_terrainNormalParams.z > 0.0f), 0.2f, 0.6f)) * max(_734, (((_674 * 20.0f) * (_renodxAODistanceFade)) / ((_673 * 0.2f) + 1.0f))))) * (1.0f - _654)) + _654);
          // RenoDX: <<< [Patch: FoliageAORange]
        } else {
          _755 = _653;
          _756 = _654;  // [sem: expr_sat]
        }
        [branch]
        if (!(_756 > 0.75f)) {
          _760 = (int)(uint)((int)(_755 != 0));
          _764 = (_668 * _628) + _647;
          _765 = (_668 * _630) + _648;
          _766 = (_668 * _631) + _649;
          _767 = _668 * 1.1f;
          _768 = (int)(_652) + (int)(1);
          if ((uint)_768 < (uint)_244) {
            _647 = _764;
            _648 = _765;
            _649 = _766;
            _650 = _714;
            _651 = _767;
            _652 = _768;
            _653 = _760;
            _654 = _756;
            continue;
          } else {
            _771 = 0;
          }
        } else {
          _771 = _666;
        }
        _772 = _517 + _469;
        _773 = _521 + _470;
        _774 = _525 + _471;
        _777 = saturate(saturate(_756 * 1.1f));  // [sem: expr_sat]
        _781 = select(((uint)((int)(_771) + (int)(-97)) < (uint)2), (_777 * 0.33f), _777);
        if (_115 == 15) {
          _787 = saturate(_781 * 2.0f);  // [sem: expr_sat]
        } else {
          _787 = _781;  // [sem: expr_sat]
        }
        _788 = 1.0f - _787;
        _789 = ((uint)_200 > (uint)15);
        _791 = ((uint)((int)(_771) + (int)(-52)) < (uint)16);
        _793 = select((_789 && _791), 0.3f, _788);
        _797 = (_793 * _517) + _466;
        _798 = (_793 * _521) + _467;
        _799 = (_793 * _525) + _468;
        _800 = _473 + 1.0f;
        _801 = _517 - (_194 * _190);
        _802 = _521 - (_194 * _191);
        _803 = _525 - (_194 * _192);
        _805 = rsqrt(dot(float3(_801, _802, _803), float3(_801, _802, _803)));  // [sem: invLength]
        _810 = saturate(dot(float3(_294, _295, _296), float3((_805 * _801), (_805 * _802), (_805 * _803))));  // [sem: expr_sat]
        _813 = 1.0f - ((_810 * _810) * 0.35999995f);
        _815 = 0.20371833f / (_813 * _813);
        _817 = (_815 * _788) + _474;
        _818 = _815 + _475;
        _821 = (((int)(_755) | (int)(_476)) != 0) || _791;
        _822 = (int)(uint)(_821);
        _823 = (int)(_477) + (int)(1);
        if ((uint)_823 < (uint)_243) {
          _466 = _797;
          _467 = _798;
          _468 = _799;
          _469 = _772;
          _470 = _773;
          _471 = _774;
          _472 = _526;
          _473 = _800;
          _474 = _817;
          _475 = _818;
          _476 = _822;
          _477 = _823;
          __loop_jump_target = 465;
          break;
        }
        while(true) {
          _456 = saturate(_817 / max(1e-06f, _818));  // [sem: expr_sat]
          _463 = sqrt(((_773 * _773) + (_772 * _772)) + (_774 * _774)) * _800;
          if (!(_463 == 0.0f)) {
            _827 = ((float)((uint)((uint)(_243)))) / _463;
            _832 = (_827 * _797);
            _833 = (_827 * _798);
            _834 = (_827 * _799);
          } else {
            _832 = _797;
            _833 = _798;
            _834 = _799;
          }
          _835 = select(_821, 1.0f, 0.0f);
          _global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = (half)(half(select(_821, (-0.0f - _153), _153)));
          _global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = (half)(half(_832));
          _global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = (half)(half(_833));
          _global_0[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = (half)(half(_834));
          _global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = (half)(half(_294));
          _global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = (half)(half(_295));
          _global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = (half)(half(_296));
          _global_1[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = (half)(half(_456));
          GroupMemoryBarrierWithGroupSync();
          if (_789) {
            _849 = 1.0f / ((_153 * 0.05f) + 1.0f);
            _853 = max((int)(0), (int)(((int)((uint)(SV_GroupThreadID.x) + (uint)(-2)))));
            _854 = max((int)(0), (int)(((int)((uint)(SV_GroupThreadID.y) + (uint)(-2)))));
            _857 = min((int)(15), (int)(((int)((uint)(SV_GroupThreadID.x) + (uint)(2)))));
            _858 = min((int)(15), (int)(((int)((uint)(SV_GroupThreadID.y) + (uint)(2)))));
            if (!((int)_854 > (int)_858)) {
              _876 = _456;
              _877 = _832;
              _878 = _833;
              _879 = _834;
              _880 = _835;
              _881 = 1.0f;
              _882 = _854;
              while(true) {
                _887 = _876;
                _888 = _877;
                _889 = _878;
                _890 = _879;
                _891 = _880;
                _892 = _881;
                if (!((int)_853 > (int)_857)) {
                  _896 = _876;
                  _897 = _877;
                  _898 = _878;
                  _899 = _879;
                  _900 = _880;
                  _901 = _881;
                  _902 = _853;
                  while(true) {
                    _991 = _896;
                    _992 = _897;
                    _993 = _898;
                    _994 = _899;
                    _995 = _900;
                    _996 = _901;
                    if ((_882 != (int)(SV_GroupThreadID.y)) && (_902 != (int)(SV_GroupThreadID.x))) {
                      _912 = _global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)((uint)(_902)) + (uint)((uint)((uint)(_882)) * (uint)(16))) * (uint)(4))))), 1023u)];
                      _958 = abs(_153 - float(abs(_912)));
                      _972 = exp2((_849 * 32.0f) * log2(saturate(dot(float3(_294, _295, _296), float3(float(_global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)((uint)(_902)) + (uint)((uint)((uint)(_882)) * (uint)(16))) * (uint)(4))))), 1023u)]), float(_global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)((uint)(_902)) + (uint)((uint)((uint)(_882)) * (uint)(16))) * (uint)(4))))), 1023u)]), float(_global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)((uint)(_902)) + (uint)((uint)((uint)(_882)) * (uint)(16))) * (uint)(4))))), 1023u)])))))) * exp2((_958 * _958) * select(_233, -1.442695e+06f, (_849 * -288.539f)));
                      _991 = ((_972 * float(_global_1[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)((uint)(_902)) + (uint)((uint)((uint)(_882)) * (uint)(16))) * (uint)(4))))), 1023u)])) + _896);
                      _992 = ((_972 * float(_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)((uint)(_902)) + (uint)((uint)((uint)(_882)) * (uint)(16))) * (uint)(4))))), 1023u)])) + _897);
                      _993 = ((_972 * float(_global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)((uint)(_902)) + (uint)((uint)((uint)(_882)) * (uint)(16))) * (uint)(4))))), 1023u)])) + _898);
                      _994 = ((_972 * float(_global_0[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)((uint)(_902)) + (uint)((uint)((uint)(_882)) * (uint)(16))) * (uint)(4))))), 1023u)])) + _899);
                      _995 = ((_972 * ((float)((bool)(_912 < 0.0h)))) + _900);
                      _996 = (_972 + _901);
                    } else {
                      _991 = _896;
                      _992 = _897;
                      _993 = _898;
                      _994 = _899;
                      _995 = _900;
                      _996 = _901;
                    }
                    _997 = (int)(_902) + (int)(1);
                    if ((int)_902 < (int)_857) {
                      _896 = _991;
                      _897 = _992;
                      _898 = _993;
                      _899 = _994;
                      _900 = _995;
                      _901 = _996;
                      _902 = _997;
                      continue;
                    }
                    while(true) {
                      _887 = _991;
                      _888 = _992;
                      _889 = _993;
                      _890 = _994;
                      _891 = _995;
                      _892 = _996;
                      break;
                    }
                    break;
                  }
                } else {
                  _887 = _876;
                  _888 = _877;
                  _889 = _878;
                  _890 = _879;
                  _891 = _880;
                  _892 = _881;
                }
                _893 = (int)(_882) + (int)(1);
                if ((int)_882 < (int)_858) {
                  _876 = _887;
                  _877 = _888;
                  _878 = _889;
                  _879 = _890;
                  _880 = _891;
                  _881 = _892;
                  _882 = _893;
                  continue;
                }
                while(true) {
                  _863 = _887;
                  _864 = _888;
                  _865 = _889;
                  _866 = _890;
                  _867 = _891;
                  _868 = _892;
                  break;
                }
                break;
              }
            } else {
              _863 = _456;
              _864 = _832;
              _865 = _833;
              _866 = _834;
              _867 = _835;
              _868 = 1.0f;
            }
            _869 = 1.0f / _868;
            _1000 = (_869 * _863);
            _1001 = (_869 * _864);
            _1002 = (_869 * _865);
            _1003 = (_869 * _866);
            _1004 = (_869 * _867);
          } else {
            _1000 = _456;
            _1001 = _832;
            _1002 = _833;
            _1003 = _834;
            _1004 = _835;
          }
          _1010 = sqrt(((_1002 * _1002) + (_1001 * _1001)) + (_1003 * _1003));
          if (!(_1010 == 0.0f)) {
            _1019 = (_1001 / _1010);
            _1020 = (_1002 / _1010);
            _1021 = (_1003 / _1010);
          } else {
            _1019 = _294;
            _1020 = _295;
            _1021 = _296;
          }
          if (!_201) {
            _1030 = (1.0f - (saturate(1.0f - _1004) * saturate(1.0f - _1000)));
          } else {
            _1030 = 1.0f;
          }
          __3__38__0__1__g_bentConeResultUAV[int2(_52, _53)] = float4(((_1019 * 0.5f) + 0.5f), ((_1020 * 0.5f) + 0.5f), ((_1021 * 0.5f) + 0.5f), saturate(1.0f - _1010));
          _1044 = ((_shadowAOParams.w + _1030) - (_shadowAOParams.w * _1030));
          // RenoDX: >>> [Patch: FoliageAOBentConeVisibility] [Version: 1.16.00]
          // Description: After the AO solve, the native code softens bent-cone visibility toward white by blending with the global AO strength parameter, which washes out the contact occlusion that foliage relies on. When the foliage AO feature is enabled, this block blends foliage stencil pixels (stencil ids 12-18) back toward the unsoftened bent-cone visibility so downstream diffuse lighting receives stronger leaf and grass occlusion. The blend weight is the feature strength, so at strength 0 the value is the native softened result and non-foliage stencil ids are never touched.
          if (FOLIAGE_AO_STRENGTH > 0.0f && ((uint)(_115 - 12) < 7u)) {
            _1044 = lerp(_1044, _1030, FOLIAGE_AO_STRENGTH);
          }
          // RenoDX: <<< [Patch: FoliageAOBentConeVisibility]
          _1045 = _1000;
          break;
        }
        break;
      }
      if (__loop_jump_target == 465) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
  }
  __3__38__0__1__g_sceneAOResultUAV[int2(_52, _53)] = float2(_1044, _1045);
}
