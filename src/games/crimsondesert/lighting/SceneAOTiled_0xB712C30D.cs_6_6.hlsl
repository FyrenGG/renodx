Texture2D<uint> __3__36__0__0__g_depthStencil : register(t52, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t24, space36);

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
  int _15;
  int _16;
  int4 _24;
  int _34;
  int _38;
  int _46;
  uint _58;
  uint _59;
  float _60;
  float _61;
  uint _107;
  int _109;
  float _112;
  int _113;
  uint _115;
  float _131;
  float _132;
  float _133;
  float _135;
  float _136;
  float _137;
  float _138;
  float _141;
  float _144;
  bool _146;
  float _258;
  float _267;
  float _291;
  float _292;
  float _293;
  int _437;
  float _448;
  float _463;
  float _464;
  float _465;
  float _466;
  float _467;
  float _468;
  int _469;
  float _470;
  float _471;
  float _472;
  int _473;
  int _474;
  float _644;
  float _645;
  float _646;
  float _647;
  float _648;
  int _649;
  int _650;
  float _651;
  int _692;
  int _710;
  float _711;
  float _731;
  int _752;
  float _753;
  int _768;
  float _784;
  float _829;
  float _830;
  float _831;
  float _860;
  float _861;
  float _862;
  float _863;
  float _864;
  float _865;
  float _873;
  float _874;
  float _875;
  float _876;
  float _877;
  float _878;
  int _879;
  float _884;
  float _885;
  float _886;
  float _887;
  float _888;
  float _889;
  float _893;
  float _894;
  float _895;
  float _896;
  float _897;
  float _898;
  int _899;
  float _988;
  float _989;
  float _990;
  float _991;
  float _992;
  float _993;
  float _997;
  float _998;
  float _999;
  float _1000;
  float _1001;
  float _1016;
  float _1017;
  float _1018;
  float _1027;
  float _1041;
  float _1042;
  float _149;
  float _153;
  float _154;
  float _190;
  float _191;
  float _192;
  float _193;
  float _195;
  int _201;
  bool _202;
  float _206;
  float _217;
  float _218;
  float _223;
  bool _229;
  bool _230;
  bool _239;
  int _240;
  int _241;
  float _247;
  int _259;
  float _284;
  float _286;
  uint _304;
  uint _312;
  uint _320;
  uint _328;
  uint _336;
  uint _344;
  uint _352;
  uint _360;
  uint _368;
  uint _376;
  uint _384;
  uint _392;
  uint _400;
  uint _408;
  uint _416;
  uint _424;
  uint _438;
  float _444;
  float _449;
  float _453;
  float _460;
  int _477;
  float _489;
  float _490;
  float _493;
  float _496;
  float _497;
  float _499;
  float _502;
  float _503;
  float _504;
  float _505;
  float _514;
  float _518;
  float _522;
  uint _523;
  float _559;
  float _563;
  float _567;
  float _568;
  float _569;
  float _585;
  float _586;
  float _587;
  float _588;
  float _592;
  float _593;
  float _596;
  float _605;
  float _606;
  float _623;
  float _625;
  float _627;
  float _628;
  float _635;
  uint _657;
  float _662;
  int _663;
  float _665;
  float _666;
  float _670;
  float _671;
  float _674;
  float _676;
  bool _689;
  int _690;
  float _702;
  int _757;
  float _761;
  float _762;
  float _763;
  float _764;
  int _765;
  float _769;
  float _770;
  float _771;
  float _774;
  float _778;
  float _785;
  bool _786;
  bool _788;
  float _790;
  float _794;
  float _795;
  float _796;
  float _797;
  float _798;
  float _799;
  float _800;
  float _802;
  float _807;
  float _810;
  float _812;
  float _814;
  float _815;
  bool _818;
  int _819;
  int _820;
  float _824;
  float _832;
  float _846;
  int _850;
  int _851;
  int _854;
  int _855;
  float _866;
  int _890;
  half _909;
  float _955;
  float _969;
  int _994;
  float _1007;
  int __loop_jump_target = -1;
  int _8[4];
  _15 = (int)(SV_GroupID.x) & 3;
  _16 = (uint)((uint)(_15)) >> 1;
  _24 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 5))]);
  _8[0] = _24.x;
  _8[1] = _24.y;
  _8[2] = _24.z;
  _8[3] = _24.w;
  _34 = _8[(((uint)(SV_GroupID.x) >> 3) & 3)];
  _38 = select((((int)(SV_GroupID.x) & 4) == 0), _34, ((uint)((uint)(_34)) >> 16));
  _46 = ((int)((uint)((uint)(_frameNumber.x)) * (uint)(19))) & 15;
  _58 = (uint)((uint)((uint)((uint)((uint)((int)((int)(_15) - (int)((int)(_16) << 1)) << 4)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_38)) << 5)) & 8160))) + (uint)((uint)(_46))) % (uint)((uint)(_bufferSizeAndInvSize.x));
  _59 = (uint)((uint)((uint)((uint)((uint)((int)(_16) << 4)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_38)) >> 3) & 8160))) + (uint)((uint)(_46))) % (uint)((uint)(_bufferSizeAndInvSize.y));
  _60 = (float)((uint)((uint)(_58)));
  _61 = (float)((uint)((uint)(_59)));
  _global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = 0.0h;
  _global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = 0.0h;
  _global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = 0.0h;
  _global_0[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = 0.0h;
  _global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = 0.0h;
  _global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = 0.0h;
  _global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = 0.0h;
  _global_1[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = 0.0h;
  GroupMemoryBarrierWithGroupSync();
  _107 = __3__36__0__0__g_depthStencil.Load(int3(_58, _59, 0));  // [sem: _3__36__0__0__g_depthStencil_load]
  _109 = (uint)((uint)(_107.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _112 = ((float)((uint)((uint)(_107.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _113 = _109 & 127;
  _115 = __3__36__0__0__g_sceneNormal.Load(int3(_58, _59, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
  _131 = min(1.0f, ((((float)((uint)((uint)(_115.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _132 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_115.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _133 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_115.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _135 = rsqrt(dot(float3(_131, _132, _133), float3(_131, _132, _133)));  // [sem: invLength]
  _136 = _135 * _131;
  _137 = _135 * _132;
  _138 = _135 * _133;
  _141 = ((_bufferSizeAndInvSize.z * 2.0f) * (_60 + 0.5f)) + -1.0f;
  _144 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (_61 + 0.5f));
  _146 = (_112 == 1.0f);
  if ((_112 < 1e-07f) || _146) {
    _149 = select(_146, 0.0f, 1.0f);
    _1041 = _149;
    _1042 = _149;
  } else {
    _153 = max(1e-07f, _112);
    _154 = _nearFarProj.x / _153;
    _190 = mad((_invViewProjRelative[3].z), _153, mad((_invViewProjRelative[3].y), _144, ((_invViewProjRelative[3].x) * _141))) + (_invViewProjRelative[3].w);
    _191 = (mad((_invViewProjRelative[0].z), _153, mad((_invViewProjRelative[0].y), _144, ((_invViewProjRelative[0].x) * _141))) + (_invViewProjRelative[0].w)) / _190;
    _192 = (mad((_invViewProjRelative[1].z), _153, mad((_invViewProjRelative[1].y), _144, ((_invViewProjRelative[1].x) * _141))) + (_invViewProjRelative[1].w)) / _190;
    _193 = (mad((_invViewProjRelative[2].z), _153, mad((_invViewProjRelative[2].y), _144, ((_invViewProjRelative[2].x) * _141))) + (_invViewProjRelative[2].w)) / _190;
    _195 = rsqrt(dot(float3(_191, _192, _193), float3(_191, _192, _193)));  // [sem: invLength]
    _201 = (int)(_113) + (int)(-52);
    _202 = ((uint)_201 < (uint)16);
    _206 = (float)((uint)((uint)(_frameNumber.x)));
    _217 = (frac(((_206 * 92.0f) + _60) * 0.0078125f) * 128.0f) + -64.34062f;
    _218 = (frac(((_206 * 71.0f) + _61) * 0.0078125f) * 128.0f) + -72.46562f;
    _223 = frac(dot(float3((_217 * _217), (_218 * _218), (_218 * _217)), float3(20.390625f, 60.703125f, 2.4281209f)));
    _229 = _202 && (_154 < 4.0f);
    _230 = (_113 == 65);
    _239 = (_shadowAOParams.z == 0.0f);
    _240 = select(_239, 4, select(_230, 32, select(_229, 8, 4)));
    _241 = select(_239, 5, select(_202, 8, 6));
    _247 = ((_154 * 16.0f) * _bufferSizeAndInvSize.z) * _screenPercentage.x;
    if (_202) {
      _258 = max(0.05f, (_247 * 4.0f));
    } else {
      _258 = (max(((_154 * 0.03125f) + 0.1f), (_247 * 16.0f)) * 2.0f);
    }
    _259 = _109 & 126;
    if (((_109 & 124) == 64) || (_113 == 53)) {
      _267 = max(0.02f, _258);
    } else {
      _267 = _258;
    }
    if (((_113 == 107) || ((_113 == 18) || ((_259 == 16) || ((_259 == 12) || ((uint)((int)(_113) + (int)(-19)) < (uint)2))))) && (!_202)) {
      _284 = saturate(_154 * 0.02f) + _137;
      _286 = rsqrt(dot(float3(_136, _284, _138), float3(_136, _284, _138)));  // [sem: invLength]
      _291 = (_286 * _136);
      _292 = (_286 * _284);
      _293 = (_286 * _138);
    } else {
      _291 = _136;
      _292 = _137;
      _293 = _138;
    }
    _304 = (uint)((uint)((_bufferSizeAndInvSize.x * _61) + _60)) + (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524))));
    _312 = (uint)((uint)((((int)((uint)((uint)((uint)(_304)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_304)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_304)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
    _320 = (uint)((uint)((((int)((uint)((uint)((uint)(_312)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_312)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_312)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_304));
    _328 = (uint)((uint)((((int)((uint)((uint)((uint)(_320)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_320)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_320)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_312));
    _336 = (uint)((uint)((((int)((uint)((uint)((uint)(_328)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_328)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_328)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_320));
    _344 = (uint)((uint)((((int)((uint)((uint)((uint)(_336)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_336)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_336)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_328));
    _352 = (uint)((uint)((((int)((uint)((uint)((uint)(_344)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_344)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_344)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_336));
    _360 = (uint)((uint)((((int)((uint)((uint)((uint)(_352)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_352)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_352)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_344));
    _368 = (uint)((uint)((((int)((uint)((uint)((uint)(_360)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_360)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_360)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_352));
    _376 = (uint)((uint)((((int)((uint)((uint)((uint)(_368)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_368)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_368)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_360));
    _384 = (uint)((uint)((((int)((uint)((uint)((uint)(_376)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_376)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_376)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_368));
    _392 = (uint)((uint)((((int)((uint)((uint)((uint)(_384)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_384)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_384)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_376));
    _400 = (uint)((uint)((((int)((uint)((uint)((uint)(_392)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_392)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_392)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_384));
    _408 = (uint)((uint)((((int)((uint)((uint)((uint)(_400)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_400)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_400)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_392));
    _416 = (uint)((uint)((((int)((uint)((uint)((uint)(_408)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_408)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_408)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_400));
    _424 = (uint)((uint)((((int)((uint)((uint)((uint)(_416)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_416)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_416)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_408));
    if ((_416 & 16777215) == 0) {
      _437 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_424)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_424)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_424)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_416))));
    } else {
      _437 = _416;
    }
    _438 = (uint)((uint)(_437)) * (uint)(48271);
    if (!_202) {
      _444 = (float)((uint)((uint)(_241)));
      _448 = (_444 / (_444 + -1.5f));
    } else {
      _448 = 1.0f;
    }
    _449 = _448 * select(_230, 0.02f, _267);
    _463 = 0.0f;
    _464 = 0.0f;
    _465 = 0.0f;
    _466 = 0.0f;
    _467 = 0.0f;
    _468 = 0.0f;
    _469 = _438;
    _470 = 0.0f;
    _471 = 0.0f;
    _472 = 0.0f;
    _473 = 0;
    _474 = 0;
    while(true) {
      _477 = ((int)((uint)((uint)((uint)(_474)) * (uint)((uint)((int)max((uint)(1), (uint)(select(_230, 0, select(_229, 3, 7))))))) + (uint)((uint)(((float)((uint)((uint)(_438 & 16777215)))) * 1.5258193e-05f)))) & 31;
      _489 = frac((((float)((uint)((uint)(_477)))) * 0.03125f) + (((float)((uint)((uint)(((int)((uint)(_223 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f)) * 6.2831855f;
      _490 = sqrt(((float)((uint)((uint)(reversebits(_477) ^ ((int)((uint)(_223 * 2.8747837e+08f))))))) * 2.3283064e-10f);
      _493 = sqrt(1.0f - (_490 * _490));
      _496 = cos(_489) * _493;
      _497 = sin(_489) * _493;
      _499 = select((_293 >= 0.0f), 1.0f, -1.0f);
      _502 = -0.0f - (1.0f / (_499 + _293));
      _503 = _292 * _502;
      _504 = _503 * _291;
      _505 = _499 * _291;
      _514 = mad(_490, _291, mad(_497, _504, ((((_505 * _291) * _502) + 1.0f) * _496)));
      _518 = mad(_490, _292, mad(_497, (_499 + (_503 * _292)), ((_496 * _499) * _504)));
      _522 = mad(_490, _293, mad(_497, (-0.0f - _292), (-0.0f - (_505 * _496))));
      _523 = (uint)((uint)(_469)) * (uint)(48271);
      _559 = mad((_viewProjRelative[2].z), _193, mad((_viewProjRelative[2].y), _192, ((_viewProjRelative[2].x) * _191))) + (_viewProjRelative[2].w);
      _563 = mad((_viewProjRelative[3].z), _193, mad((_viewProjRelative[3].y), _192, ((_viewProjRelative[3].x) * _191))) + (_viewProjRelative[3].w);
      _567 = (_514 * _449) + _191;
      _568 = (_518 * _449) + _192;
      _569 = (_522 * _449) + _193;
      _585 = mad((_viewProjRelative[3].z), _569, mad((_viewProjRelative[3].y), _568, ((_viewProjRelative[3].x) * _567))) + (_viewProjRelative[3].w);
      _586 = (mad((_viewProjRelative[0].z), _193, mad((_viewProjRelative[0].y), _192, ((_viewProjRelative[0].x) * _191))) + (_viewProjRelative[0].w)) / _563;
      _587 = (mad((_viewProjRelative[1].z), _193, mad((_viewProjRelative[1].y), _192, ((_viewProjRelative[1].x) * _191))) + (_viewProjRelative[1].w)) / _563;
      _588 = _559 / _563;
      _592 = ((mad((_viewProjRelative[0].z), _569, mad((_viewProjRelative[0].y), _568, ((_viewProjRelative[0].x) * _567))) + (_viewProjRelative[0].w)) / _585) - _586;
      _593 = ((mad((_viewProjRelative[1].z), _569, mad((_viewProjRelative[1].y), _568, ((_viewProjRelative[1].x) * _567))) + (_viewProjRelative[1].w)) / _585) - _587;
      _596 = 1.0f / ((float)((uint)((uint)(_241))));
      _605 = max(_596, (1.0f / min(1.0f, (max((abs(_592) * _bufferSizeAndInvSize.x), (abs(_593) * _bufferSizeAndInvSize.y)) * _596))));
      _606 = _605 * (((mad((_viewProjRelative[2].z), _569, mad((_viewProjRelative[2].y), _568, ((_viewProjRelative[2].x) * _567))) + (_viewProjRelative[2].w)) / _585) - _588);
      _623 = _605 * _596;
      _625 = (_592 * 0.5f) * _623;
      _627 = (_593 * -0.5f) * _623;
      _628 = _606 * _596;
      _635 = max(((((float)((uint)((uint)(_523 & 16777215)))) * 1.4901161e-08f) + 0.01f), (1.0f / max((abs(_625) * _bufferSizeAndInvSize.x), (abs(_627) * _bufferSizeAndInvSize.y))));
      _644 = (((_586 * 0.5f) + 0.5f) + (_635 * _625));
      _645 = ((0.5f - (_587 * 0.5f)) + (_635 * _627));
      _646 = ((_635 * _628) + _588);
      _647 = 0.0f;
      _648 = 0.25f;
      _649 = 0;
      _650 = 0;
      _651 = 0.0f;
      while(true) {
        // [sem: _3__36__0__0__g_depthStencil_load]
        _657 = __3__36__0__0__g_depthStencil.Load(int3(((int)(_644 * _bufferSizeAndInvSize.x)), ((int)(_645 * _bufferSizeAndInvSize.y)), 0));
        _662 = ((float)((uint)((uint)(_657.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _663 = ((uint)((uint)(_657.x)) >> 24) & 127;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
        _665 = select((_649 == 2), 1.2f, _648);
        _666 = _646 - _662;
        _670 = _nearFarProj.x / max(1e-07f, _662);
        _671 = (_596 * _449) * _665;
        _674 = _670 - (_nearFarProj.x / max(1e-07f, _646));
        _676 = (max(abs(_606), (_588 - ((mad((_proj[2].z), _154, 0.0f) + _559) / (mad((_proj[3].z), _154, 0.0f) + _563)))) * 0.34f) * max(0.0625f, _596);
        bool __branch_chain_643;
        if (!(abs(_666 + _676) < _676)) {
          _692 = 0;
          __branch_chain_643 = true;
        } else {
          _689 = (_674 > select((_663 == 5), -0.08f, (-0.0f - max(0.03f, min((_670 * 0.5f), ((_670 * _670) * 0.01f))))));
          _690 = (int)(uint)(_689);
          if (!_689) {
            _692 = _690;
            __branch_chain_643 = true;
          } else {
            _710 = _690;
            _711 = _647;
            __branch_chain_643 = false;
          }
        }
        if (__branch_chain_643) {
          if ((_647 == 0.0f) && (_666 < 0.0f)) {
            _710 = _692;
            _711 = (-0.0f - _674);
          } else {
            if (_647 > 0.0f) {
              _702 = _671 * 1.5f;
              if ((_647 < _702) || (_666 > 0.0f)) {
                _710 = ((int)(uint)((int)((_647 - _702) < 0.0f)));
                _711 = 0.0f;
              } else {
                _710 = _692;
                _711 = _647;
              }
            } else {
              _710 = _692;
              _711 = _647;
            }
          }
        }
        if (!(_710 == 0)) {
          if ((_663 == 19) || (_663 == 107)) {
            _731 = max(0.1f, (1.0f - (_670 * 0.01f)));
          } else {
            _731 = 1.0f;
          }
          _752 = ((int)((int)(uint)((int)((uint)((int)(_663) + (int)(-52)) < (uint)16))) | (int)(_650));
          // [sem: expr_sat]
          _753 = saturate((saturate(1.0f - exp2(log2(select((_terrainNormalParams.z > 0.0f), 0.2f, 0.6f)) * max(_731, (((_671 * 20.0f) * (1.0f - saturate(max((_670 + -100.0f), 0.0f) * 0.05f))) / ((_670 * 0.2f) + 1.0f))))) * (1.0f - _651)) + _651);
        } else {
          _752 = _650;
          _753 = _651;  // [sem: expr_sat]
        }
        [branch]
        if (!(_753 > 0.75f)) {
          _757 = (int)(uint)((int)(_752 != 0));
          _761 = (_665 * _625) + _644;
          _762 = (_665 * _627) + _645;
          _763 = (_665 * _628) + _646;
          _764 = _665 * 1.1f;
          _765 = (int)(_649) + (int)(1);
          if ((uint)_765 < (uint)_241) {
            _644 = _761;
            _645 = _762;
            _646 = _763;
            _647 = _711;
            _648 = _764;
            _649 = _765;
            _650 = _757;
            _651 = _753;
            continue;
          } else {
            _768 = 0;
          }
        } else {
          _768 = _663;
        }
        _769 = _514 + _466;
        _770 = _518 + _467;
        _771 = _522 + _468;
        _774 = saturate(saturate(_753 * 1.1f));  // [sem: expr_sat]
        _778 = select(((uint)((int)(_768) + (int)(-97)) < (uint)2), (_774 * 0.33f), _774);
        if (_113 == 15) {
          _784 = saturate(_778 * 2.0f);  // [sem: expr_sat]
        } else {
          _784 = _778;  // [sem: expr_sat]
        }
        _785 = 1.0f - _784;
        _786 = ((uint)_201 > (uint)15);
        _788 = ((uint)((int)(_768) + (int)(-52)) < (uint)16);
        _790 = select((_786 && _788), 0.3f, _785);
        _794 = (_790 * _514) + _463;
        _795 = (_790 * _518) + _464;
        _796 = (_790 * _522) + _465;
        _797 = _470 + 1.0f;
        _798 = _514 - (_195 * _191);
        _799 = _518 - (_195 * _192);
        _800 = _522 - (_195 * _193);
        _802 = rsqrt(dot(float3(_798, _799, _800), float3(_798, _799, _800)));  // [sem: invLength]
        _807 = saturate(dot(float3(_291, _292, _293), float3((_802 * _798), (_802 * _799), (_802 * _800))));  // [sem: expr_sat]
        _810 = 1.0f - ((_807 * _807) * 0.35999995f);
        _812 = 0.20371833f / (_810 * _810);
        _814 = (_812 * _785) + _471;
        _815 = _812 + _472;
        _818 = (((int)(_752) | (int)(_473)) != 0) || _788;
        _819 = (int)(uint)(_818);
        _820 = (int)(_474) + (int)(1);
        if ((uint)_820 < (uint)_240) {
          _463 = _794;
          _464 = _795;
          _465 = _796;
          _466 = _769;
          _467 = _770;
          _468 = _771;
          _469 = _523;
          _470 = _797;
          _471 = _814;
          _472 = _815;
          _473 = _819;
          _474 = _820;
          __loop_jump_target = 462;
          break;
        }
        while(true) {
          _453 = saturate(_814 / max(1e-06f, _815));  // [sem: expr_sat]
          _460 = sqrt(((_770 * _770) + (_769 * _769)) + (_771 * _771)) * _797;
          if (!(_460 == 0.0f)) {
            _824 = ((float)((uint)((uint)(_240)))) / _460;
            _829 = (_824 * _794);
            _830 = (_824 * _795);
            _831 = (_824 * _796);
          } else {
            _829 = _794;
            _830 = _795;
            _831 = _796;
          }
          _832 = select(_818, 1.0f, 0.0f);
          _global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = (half)(half(select(_818, (-0.0f - _154), _154)));
          _global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = (half)(half(_829));
          _global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = (half)(half(_830));
          _global_0[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = (half)(half(_831));
          _global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = (half)(half(_291));
          _global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = (half)(half(_292));
          _global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = (half)(half(_293));
          _global_1[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)(SV_GroupThreadID.x) + (uint)((uint)(SV_GroupThreadID.y) * (uint)(16))) * (uint)(4))))), 1023u)] = (half)(half(_453));
          GroupMemoryBarrierWithGroupSync();
          if (_786) {
            _846 = 1.0f / ((_154 * 0.05f) + 1.0f);
            _850 = max((int)(0), (int)(((int)((uint)(SV_GroupThreadID.x) + (uint)(-2)))));
            _851 = max((int)(0), (int)(((int)((uint)(SV_GroupThreadID.y) + (uint)(-2)))));
            _854 = min((int)(15), (int)(((int)((uint)(SV_GroupThreadID.x) + (uint)(2)))));
            _855 = min((int)(15), (int)(((int)((uint)(SV_GroupThreadID.y) + (uint)(2)))));
            if (!((int)_851 > (int)_855)) {
              _873 = _453;
              _874 = _829;
              _875 = _830;
              _876 = _831;
              _877 = _832;
              _878 = 1.0f;
              _879 = _851;
              while(true) {
                _884 = _873;
                _885 = _874;
                _886 = _875;
                _887 = _876;
                _888 = _877;
                _889 = _878;
                if (!((int)_850 > (int)_854)) {
                  _893 = _873;
                  _894 = _874;
                  _895 = _875;
                  _896 = _876;
                  _897 = _877;
                  _898 = _878;
                  _899 = _850;
                  while(true) {
                    _988 = _893;
                    _989 = _894;
                    _990 = _895;
                    _991 = _896;
                    _992 = _897;
                    _993 = _898;
                    if ((_879 != (int)(SV_GroupThreadID.y)) && (_899 != (int)(SV_GroupThreadID.x))) {
                      _909 = _global_0[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)((uint)(_899)) + (uint)((uint)((uint)(_879)) * (uint)(16))) * (uint)(4))))), 1023u)];
                      _955 = abs(_154 - float(abs(_909)));
                      _969 = exp2((_846 * 32.0f) * log2(saturate(dot(float3(_291, _292, _293), float3(float(_global_1[min((uint)(((int)((uint)(0) + (uint)((uint)((uint)((uint)(_899)) + (uint)((uint)((uint)(_879)) * (uint)(16))) * (uint)(4))))), 1023u)]), float(_global_1[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)((uint)(_899)) + (uint)((uint)((uint)(_879)) * (uint)(16))) * (uint)(4))))), 1023u)]), float(_global_1[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)((uint)(_899)) + (uint)((uint)((uint)(_879)) * (uint)(16))) * (uint)(4))))), 1023u)])))))) * exp2((_955 * _955) * select(_230, -1.442695e+06f, (_846 * -288.539f)));
                      _988 = ((_969 * float(_global_1[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)((uint)(_899)) + (uint)((uint)((uint)(_879)) * (uint)(16))) * (uint)(4))))), 1023u)])) + _893);
                      _989 = ((_969 * float(_global_0[min((uint)(((int)((uint)(1) + (uint)((uint)((uint)((uint)(_899)) + (uint)((uint)((uint)(_879)) * (uint)(16))) * (uint)(4))))), 1023u)])) + _894);
                      _990 = ((_969 * float(_global_0[min((uint)(((int)((uint)(2) + (uint)((uint)((uint)((uint)(_899)) + (uint)((uint)((uint)(_879)) * (uint)(16))) * (uint)(4))))), 1023u)])) + _895);
                      _991 = ((_969 * float(_global_0[min((uint)(((int)((uint)(3) + (uint)((uint)((uint)((uint)(_899)) + (uint)((uint)((uint)(_879)) * (uint)(16))) * (uint)(4))))), 1023u)])) + _896);
                      _992 = ((_969 * ((float)((bool)(_909 < 0.0h)))) + _897);
                      _993 = (_969 + _898);
                    } else {
                      _988 = _893;
                      _989 = _894;
                      _990 = _895;
                      _991 = _896;
                      _992 = _897;
                      _993 = _898;
                    }
                    _994 = (int)(_899) + (int)(1);
                    if ((int)_899 < (int)_854) {
                      _893 = _988;
                      _894 = _989;
                      _895 = _990;
                      _896 = _991;
                      _897 = _992;
                      _898 = _993;
                      _899 = _994;
                      continue;
                    }
                    while(true) {
                      _884 = _988;
                      _885 = _989;
                      _886 = _990;
                      _887 = _991;
                      _888 = _992;
                      _889 = _993;
                      break;
                    }
                    break;
                  }
                } else {
                  _884 = _873;
                  _885 = _874;
                  _886 = _875;
                  _887 = _876;
                  _888 = _877;
                  _889 = _878;
                }
                _890 = (int)(_879) + (int)(1);
                if ((int)_879 < (int)_855) {
                  _873 = _884;
                  _874 = _885;
                  _875 = _886;
                  _876 = _887;
                  _877 = _888;
                  _878 = _889;
                  _879 = _890;
                  continue;
                }
                while(true) {
                  _860 = _884;
                  _861 = _885;
                  _862 = _886;
                  _863 = _887;
                  _864 = _888;
                  _865 = _889;
                  break;
                }
                break;
              }
            } else {
              _860 = _453;
              _861 = _829;
              _862 = _830;
              _863 = _831;
              _864 = _832;
              _865 = 1.0f;
            }
            _866 = 1.0f / _865;
            _997 = (_866 * _860);
            _998 = (_866 * _861);
            _999 = (_866 * _862);
            _1000 = (_866 * _863);
            _1001 = (_866 * _864);
          } else {
            _997 = _453;
            _998 = _829;
            _999 = _830;
            _1000 = _831;
            _1001 = _832;
          }
          _1007 = sqrt(((_999 * _999) + (_998 * _998)) + (_1000 * _1000));
          if (!(_1007 == 0.0f)) {
            _1016 = (_998 / _1007);
            _1017 = (_999 / _1007);
            _1018 = (_1000 / _1007);
          } else {
            _1016 = _291;
            _1017 = _292;
            _1018 = _293;
          }
          if (!_202) {
            _1027 = (1.0f - (saturate(1.0f - _1001) * saturate(1.0f - _997)));
          } else {
            _1027 = 1.0f;
          }
          __3__38__0__1__g_bentConeResultUAV[int2(_58, _59)] = float4(((_1016 * 0.5f) + 0.5f), ((_1017 * 0.5f) + 0.5f), ((_1018 * 0.5f) + 0.5f), saturate(1.0f - _1007));
          _1041 = ((_shadowAOParams.w + _1027) - (_shadowAOParams.w * _1027));
          _1042 = _997;
          break;
        }
        break;
      }
      if (__loop_jump_target == 462) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
  }
  __3__38__0__1__g_sceneAOResultUAV[int2(_58, _59)] = float2(_1041, _1042);
}
