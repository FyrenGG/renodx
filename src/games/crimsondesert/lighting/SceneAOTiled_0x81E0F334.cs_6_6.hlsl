// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the exact shared option and helper declarations consumed by this shader's annotated RenoDX patches. This dependency-only prefix replaces no native executable statement; removing the block restores successor A byte-for-byte.
#include "../shared.h"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
struct anon {
  uint4 g_tileIndex[4096];
};


Texture2D<uint> __3__36__0__0__g_depthStencilHalf : register(t116, space36);

Texture2D<uint2> __3__36__0__0__g_normalDepth : register(t60, space36);

RWTexture2D<float2> __3__38__0__1__g_sceneAOResultUAV : register(u37, space38);

RWTexture2D<float4> __3__38__0__1__g_bentConeResultUAV : register(u41, space38);

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
  int4 _17;
  int _29;
  int _33;
  uint _36;
  uint _39;
  int _40;
  int _41;
  uint2 _43;
  int _46;
  float _49;
  int _50;
  float _55;
  float _61;
  float _67;
  float _69;
  float _70;
  float _71;
  float _72;
  float _84;
  float _94;
  bool _95;
  float _198;
  float _207;
  float _230;
  float _231;
  float _232;
  int _376;
  float _383;
  int _387;
  int _388;
  float _389;
  float _390;
  float _391;
  int _392;
  float _393;
  float _394;
  float _395;
  float _396;
  float _397;
  float _398;
  float _566;
  float _567;
  float _568;
  float _569;
  float _570;
  int _571;
  int _572;
  float _573;
  int _627;
  int _645;
  float _646;
  float _657;
  int _687;
  float _688;
  int _703;
  float _719;
  float _779;
  float _780;
  float _781;
  float _794;
  float _795;
  float _796;
  float _805;
  float _821;
  float _822;
  float _99;
  float _101;
  float _104;
  float _116;
  float _125;
  float _134;
  float _143;
  float _145;
  int _146;
  bool _147;
  float _149;
  float _151;
  float _152;
  float _153;
  float _154;
  float _160;
  float _166;
  float _171;
  bool _173;
  bool _174;
  bool _177;
  int _180;
  int _182;
  float _187;
  int _199;
  float _223;
  float _225;
  uint _243;
  uint _251;
  uint _259;
  uint _267;
  uint _275;
  uint _283;
  uint _291;
  uint _299;
  uint _307;
  uint _315;
  uint _323;
  uint _331;
  uint _339;
  uint _347;
  uint _355;
  uint _363;
  uint _377;
  float _379;
  float _385;
  int _408;
  float _418;
  float _425;
  float _428;
  float _430;
  float _432;
  float _434;
  float _437;
  float _438;
  float _439;
  float _440;
  float _446;
  float _452;
  float _457;
  uint _458;
  float _470;
  float _478;
  float _480;
  float _482;
  float _484;
  float _488;
  float _497;
  float _506;
  float _507;
  float _513;
  float _519;
  float _521;
  float _530;
  float _537;
  float _538;
  float _540;
  float _542;
  float _543;
  float _554;
  uint _579;
  float _583;
  int _585;
  float _587;
  float _588;
  float _592;
  float _594;
  float _597;
  float _611;
  bool _624;
  int _625;
  float _636;
  int _692;
  float _694;
  float _696;
  float _698;
  float _699;
  int _700;
  float _704;
  float _705;
  float _706;
  float _709;
  float _713;
  float _720;
  bool _722;
  float _725;
  float _727;
  float _729;
  float _731;
  float _732;
  float _734;
  float _736;
  float _738;
  float _740;
  float _745;
  float _748;
  float _750;
  float _752;
  float _753;
  bool _756;
  int _757;
  int _758;
  float _763;
  float _770;
  float _774;
  float _787;
  int __loop_jump_target = -1;
  int _14[4];
  _17 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 3))]);
  _14[0] = _17.x;
  _14[1] = _17.y;
  _14[2] = _17.z;
  _14[3] = _17.w;
  _29 = _14[(((uint)(SV_GroupID.x) >> 1) & 3)];
  _33 = select((((int)(SV_GroupID.x) & 1) == 0), _29, ((uint)((uint)(_29)) >> 16));
  _36 = (uint)((uint)(((int)((uint)((uint)(_33)) << 4)) & 4080)) + (uint)(SV_GroupThreadID.x);
  _39 = (uint)((uint)(((uint)((uint)(_33)) >> 4) & 4080)) + (uint)(SV_GroupThreadID.y);
  _40 = _36 & 2147483647;
  _41 = _39 & 2147483647;
  _43 = __3__36__0__0__g_normalDepth.Load(int3(_40, _41, 0));  // [sem: _3__36__0__0__g_normalDepth_load]
  _46 = (uint)((uint)(_43.y)) >> 24;  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _49 = ((float)((uint)((uint)(_43.y & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _50 = _46 & 127;
  _55 = min(1.0f, ((((float)((uint)((uint)(_43.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _61 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_43.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _67 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_43.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _69 = rsqrt(dot(float3(_55, _61, _67), float3(_55, _61, _67)));  // [sem: invLength]
  _70 = _69 * _55;
  _71 = _69 * _61;
  _72 = _69 * _67;
  _84 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((uint)((uint)((int)(_frameNumber.x & 1) | (int)((int)((uint)((uint)(_36)) << 1)))))) + 0.5f)) + -1.0f;
  _94 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((uint)((uint)((int)(((uint)((uint)(_frameNumber.x)) >> 1) & 1) | (int)((int)((uint)((uint)(_39)) << 1)))))) + 0.5f));
  _95 = (_49 == 1.0f);
  if ((_49 < 1e-07f) || _95) {
    _99 = select(_95, 0.0f, 1.0f);
    _821 = _99;
    _822 = _99;
  } else {
    _101 = max(1e-07f, _49);
    _104 = _nearFarProj.x / _101;
    _116 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _101, mad((_invViewProjRelative[3].y), _94, ((_invViewProjRelative[3].x) * _84)));
    _125 = (mad((_invViewProjRelative[0].z), _101, mad((_invViewProjRelative[0].y), _94, ((_invViewProjRelative[0].x) * _84))) + (_invViewProjRelative[0].w)) / _116;
    _134 = (mad((_invViewProjRelative[1].z), _101, mad((_invViewProjRelative[1].y), _94, ((_invViewProjRelative[1].x) * _84))) + (_invViewProjRelative[1].w)) / _116;
    _143 = (mad((_invViewProjRelative[2].z), _101, mad((_invViewProjRelative[2].y), _94, ((_invViewProjRelative[2].x) * _84))) + (_invViewProjRelative[2].w)) / _116;
    _145 = rsqrt(dot(float3(_125, _134, _143), float3(_125, _134, _143)));  // [sem: invLength]
    _146 = (int)(_50) + (int)(-52);
    _147 = ((uint)_146 < (uint)16);
    _149 = _bufferSizeAndInvSize.x * 0.5f;
    _151 = _bufferSizeAndInvSize.y * 0.5f;
    _152 = (float)((uint)((uint)(_40)));
    _153 = (float)((uint)((uint)(_41)));
    _154 = (float)((uint)((uint)(_frameNumber.x)));
    _160 = (frac(((_154 * 92.0f) + _152) * 0.0078125f) * 128.0f) + -64.34062f;
    _166 = (frac(((_154 * 71.0f) + _153) * 0.0078125f) * 128.0f) + -72.46562f;
    _171 = frac(dot(float3((_160 * _160), (_166 * _166), (_166 * _160)), float3(20.390625f, 60.703125f, 2.4281209f)));
    _173 = _147 && (_104 < 4.0f);
    _174 = (_50 == 65);
    _177 = (_shadowAOParams.z == 0.0f);
    _180 = select(_177, 4, select(_174, 32, select(_173, 8, 4)));
    _182 = select(_177, 5, select(_147, 8, 6));
    _187 = ((_bufferSizeAndInvSize.z * 16.0f) * _104) * _screenPercentage.x;
    if (_147) {
      _198 = max(0.05f, (_187 * 4.0f));
    } else {
      _198 = (max(((_104 * 0.03125f) + 0.1f), (_187 * 16.0f)) * 2.0f);
    }
    _199 = _46 & 126;
    if (((_46 & 124) == 64) || (_50 == 53)) {
      _207 = max(0.02f, _198);
    } else {
      _207 = _198;
    }
    if ((_199 == 12) || ((_199 == 16) || ((_50 == 107) || (_50 == 18)))) {
      if (!_147) {
        _223 = saturate(_104 * 0.02f) + _71;
        _225 = rsqrt(dot(float3(_70, _223, _72), float3(_70, _223, _72)));  // [sem: invLength]
        _230 = (_225 * _72);
        _231 = (_225 * _223);
        _232 = (_225 * _70);
      } else {
        _230 = _72;
        _231 = _71;
        _232 = _70;
      }
    } else {
      if (!(_147 || ((uint)((int)(_50) + (int)(-19)) > (uint)1))) {
        _223 = saturate(_104 * 0.02f) + _71;
        _225 = rsqrt(dot(float3(_70, _223, _72), float3(_70, _223, _72)));  // [sem: invLength]
        _230 = (_225 * _72);
        _231 = (_225 * _223);
        _232 = (_225 * _70);
      } else {
        _230 = _72;
        _231 = _71;
        _232 = _70;
      }
    }
    _243 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_149 * _153) + _152));
    _251 = (uint)((uint)((((int)((uint)((uint)((uint)(_243)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_243)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_243)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
    _259 = (uint)((uint)((((int)((uint)((uint)((uint)(_251)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_251)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_251)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_243));
    _267 = (uint)((uint)((((int)((uint)((uint)((uint)(_259)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_259)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_259)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_251));
    _275 = (uint)((uint)((((int)((uint)((uint)((uint)(_267)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_267)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_267)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_259));
    _283 = (uint)((uint)((((int)((uint)((uint)((uint)(_275)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_275)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_275)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_267));
    _291 = (uint)((uint)((((int)((uint)((uint)((uint)(_283)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_283)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_283)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_275));
    _299 = (uint)((uint)((((int)((uint)((uint)((uint)(_291)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_291)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_291)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_283));
    _307 = (uint)((uint)((((int)((uint)((uint)((uint)(_299)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_299)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_299)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_291));
    _315 = (uint)((uint)((((int)((uint)((uint)((uint)(_307)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_307)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_307)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_299));
    _323 = (uint)((uint)((((int)((uint)((uint)((uint)(_315)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_315)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_315)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_307));
    _331 = (uint)((uint)((((int)((uint)((uint)((uint)(_323)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_323)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_323)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_315));
    _339 = (uint)((uint)((((int)((uint)((uint)((uint)(_331)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_331)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_331)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_323));
    _347 = (uint)((uint)((((int)((uint)((uint)((uint)(_339)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_339)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_339)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_331));
    _355 = (uint)((uint)((((int)((uint)((uint)((uint)(_347)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_347)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_347)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_339));
    _363 = (uint)((uint)((((int)((uint)((uint)((uint)(_355)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_355)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_355)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_347));
    if ((_355 & 16777215) == 0) {
      _376 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_363)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_363)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_363)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_355))));
    } else {
      _376 = _355;
    }
    _377 = (uint)((uint)(_376)) * (uint)(48271);
    if (!_147) {
      _379 = (float)((uint)((uint)(_182)));
      _383 = (_379 / (_379 + -1.5f));
    } else {
      _383 = 1.0f;
    }
    _385 = _383 * select(_174, 0.02f, _207);
    _387 = 0;
    _388 = 0;
    _389 = 0.0f;
    _390 = 0.0f;
    _391 = 0.0f;
    _392 = _377;
    _393 = 0.0f;
    _394 = 0.0f;
    _395 = 0.0f;
    _396 = 0.0f;
    _397 = 0.0f;
    _398 = 0.0f;
    while(true) {
      _408 = ((int)((uint)((uint)((uint)((int)max((uint)(1), (uint)(select(_174, 0, select(_173, 3, 7)))))) * (uint)((uint)(_387))) + (uint)((uint)(((float)((uint)((uint)(_377 & 16777215)))) * 1.5258193e-05f)))) & 31;
      _418 = frac((((float)((uint)((uint)(_408)))) * 0.03125f) + (((float)((uint)((uint)(((int)((uint)(_171 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f)) * 6.2831855f;
      _425 = sqrt(((float)((uint)((uint)(reversebits(_408) ^ ((int)((uint)(_171 * 2.8747837e+08f))))))) * 2.3283064e-10f);
      _428 = sqrt(1.0f - (_425 * _425));
      _430 = cos(_418) * _428;
      _432 = sin(_418) * _428;
      _434 = select((_230 >= 0.0f), 1.0f, -1.0f);
      _437 = -0.0f - (1.0f / (_434 + _230));
      _438 = _231 * _437;
      _439 = _438 * _232;
      _440 = _434 * _232;
      _446 = mad(_425, _232, mad(_432, _439, ((((_440 * _232) * _437) + 1.0f) * _430)));
      _452 = mad(_425, _231, mad(_432, ((_438 * _231) + _434), ((_430 * _434) * _439)));
      _457 = mad(_425, _230, mad(_432, (-0.0f - _231), (-0.0f - (_440 * _430))));
      _458 = (uint)((uint)(_392)) * (uint)(48271);
      _470 = (_viewProjRelative[2].w) + mad((_viewProjRelative[2].z), _143, mad((_viewProjRelative[2].y), _134, ((_viewProjRelative[2].x) * _125)));
      _478 = mad((_viewProjRelative[3].z), _143, mad((_viewProjRelative[3].y), _134, ((_viewProjRelative[3].x) * _125))) + (_viewProjRelative[3].w);
      _480 = (_446 * _385) + _125;
      _482 = (_452 * _385) + _134;
      _484 = (_457 * _385) + _143;
      _488 = mad((_viewProjRelative[3].z), _484, mad((_viewProjRelative[3].y), _482, ((_viewProjRelative[3].x) * _480))) + (_viewProjRelative[3].w);
      _497 = (mad((_viewProjRelative[0].z), _143, mad((_viewProjRelative[0].y), _134, ((_viewProjRelative[0].x) * _125))) + (_viewProjRelative[0].w)) / _478;
      _506 = (mad((_viewProjRelative[1].z), _143, mad((_viewProjRelative[1].y), _134, ((_viewProjRelative[1].x) * _125))) + (_viewProjRelative[1].w)) / _478;
      _507 = _470 / _478;
      _513 = ((mad((_viewProjRelative[0].z), _484, mad((_viewProjRelative[0].y), _482, ((_viewProjRelative[0].x) * _480))) + (_viewProjRelative[0].w)) / _488) - _497;
      _519 = ((mad((_viewProjRelative[1].z), _484, mad((_viewProjRelative[1].y), _482, ((_viewProjRelative[1].x) * _480))) + (_viewProjRelative[1].w)) / _488) - _506;
      _521 = 1.0f / ((float)((uint)((uint)(_182))));
      _530 = max(_521, (1.0f / min(1.0f, (max((abs(_513) * _149), (abs(_519) * _151)) * _521))));
      _537 = (((mad((_viewProjRelative[2].z), _484, mad((_viewProjRelative[2].y), _482, ((_viewProjRelative[2].x) * _480))) + (_viewProjRelative[2].w)) / _488) - _507) * _530;
      _538 = _530 * _521;
      _540 = (_513 * 0.5f) * _538;
      _542 = (_519 * -0.5f) * _538;
      _543 = _537 * _521;
      _554 = max(((((float)((uint)((uint)(_458 & 16777215)))) * 1.4901161e-08f) + 0.01f), (1.0f / max((abs(_540) * _149), (abs(_542) * _151))));
      _566 = 0.25f;
      _567 = 0.0f;
      _568 = ((_554 * _543) + _507);
      _569 = ((0.5f - (_506 * 0.5f)) + (_554 * _542));
      _570 = (((_497 * 0.5f) + 0.5f) + (_554 * _540));
      _571 = 0;
      _572 = 0;
      _573 = 0.0f;
      while(true) {
        _579 = __3__36__0__0__g_depthStencilHalf.Load(int3(((int)(_570 * _149)), ((int)(_569 * _151)), 0));  // [sem: _3__36__0__0__g_depthStencilHalf_load]
        _583 = ((float)((uint)((uint)(_579.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencilHalf_load_derived]
        _585 = ((uint)((uint)(_579.x)) >> 24) & 127;  // [sem: _3__36__0__0__g_depthStencilHalf_load_derived]
        _587 = select((_571 == 2), 1.2f, _566);
        _588 = _568 - _583;
        _592 = _nearFarProj.x / max(1e-07f, _583);
        _594 = (_521 * _385) * _587;
        _597 = _592 - (_nearFarProj.x / max(1e-07f, _568));
        _611 = (max(abs(_537), (_507 - ((mad((_proj[2].z), _104, 0.0f) + _470) / (mad((_proj[3].z), _104, 0.0f) + _478)))) * 0.34f) * max(0.0625f, _521);
        bool __branch_chain_565;
        if (!(abs(_611 + _588) < _611)) {
          _627 = 0;
          __branch_chain_565 = true;
        } else {
          _624 = (_597 > select((_585 == 5), -0.08f, (-0.0f - max(0.03f, min((_592 * 0.5f), ((_592 * _592) * 0.01f))))));
          _625 = (int)(uint)(_624);
          if (!_624) {
            _627 = _625;
            __branch_chain_565 = true;
          } else {
            _645 = _625;
            _646 = _567;
            __branch_chain_565 = false;
          }
        }
        if (__branch_chain_565) {
          if ((_567 == 0.0f) && (_588 < 0.0f)) {
            _645 = _627;
            _646 = (-0.0f - _597);
          } else {
            if (_567 > 0.0f) {
              _636 = _594 * 1.5f;
              if ((_567 < _636) || (_588 > 0.0f)) {
                _645 = ((int)(uint)((int)((_567 - _636) < 0.0f)));
                _646 = 0.0f;
              } else {
                _645 = _627;
                _646 = _567;
              }
            } else {
              _645 = _627;
              _646 = _567;
            }
          }
        }
        if (!(_645 == 0)) {
          if ((_585 == 19) || (_585 == 107)) {
            _657 = max(0.1f, (1.0f - (_592 * 0.01f)));
          } else {
            _657 = 1.0f;
          }
          _687 = ((int)((int)(uint)((int)((uint)((int)(_585) + (int)(-52)) < (uint)16))) | (int)(_572));
          // [sem: expr_sat]
          // RenoDX: >>> [Patch: FoliageAORange] [Version: 1.16.00]
          // Description: Foliage stencil pixels can retain scene AO farther into the mid-distance. The feature-off and non-foliage paths route the exact native distance fade into the otherwise unchanged AO expression.
          float _renodxAODistanceFade = 1.0f - saturate(max((_592 + -100.0f), 0.0f) * 0.05f);
          if (FOLIAGE_AO_STRENGTH > 0.0f && ((uint)(_50 - 12) < 7u)) {
            _renodxAODistanceFade = 1.0f - saturate(max((_592 + -200.0f), 0.0f) * 0.005f);
          }
          _688 = saturate((saturate(1.0f - exp2(max(_657, (((_594 * 20.0f) * (_renodxAODistanceFade)) / ((_592 * 0.2f) + 1.0f))) * log2(select((_terrainNormalParams.z > 0.0f), 0.2f, 0.6f)))) * (1.0f - _573)) + _573);
          // RenoDX: <<< [Patch: FoliageAORange]
        } else {
          _687 = _572;
          _688 = _573;  // [sem: expr_sat]
        }
        [branch]
        if (!(_688 > 0.75f)) {
          _692 = (int)(uint)((int)(_687 != 0));
          _694 = (_587 * _540) + _570;
          _696 = (_587 * _542) + _569;
          _698 = (_587 * _543) + _568;
          _699 = _587 * 1.1f;
          _700 = (int)(_571) + (int)(1);
          if ((uint)_700 < (uint)_182) {
            _566 = _699;
            _567 = _646;
            _568 = _698;
            _569 = _696;
            _570 = _694;
            _571 = _700;
            _572 = _692;
            _573 = _688;
            continue;
          } else {
            _703 = 0;
          }
        } else {
          _703 = _585;
        }
        _704 = _446 + _395;
        _705 = _452 + _394;
        _706 = _457 + _393;
        _709 = saturate(saturate(_688 * 1.1f));  // [sem: expr_sat]
        _713 = select(((uint)((int)(_703) + (int)(-97)) < (uint)2), (_709 * 0.33f), _709);
        if (_50 == 15) {
          _719 = saturate(_713 * 2.0f);  // [sem: expr_sat]
        } else {
          _719 = _713;  // [sem: expr_sat]
        }
        _720 = 1.0f - _719;
        _722 = ((uint)((int)(_703) + (int)(-52)) < (uint)16);
        _725 = select((((uint)_146 > (uint)15) && _722), 0.3f, _720);
        _727 = (_725 * _446) + _398;
        _729 = (_725 * _452) + _397;
        _731 = (_725 * _457) + _396;
        _732 = _391 + 1.0f;
        _734 = _446 - (_145 * _125);
        _736 = _452 - (_145 * _134);
        _738 = _457 - (_145 * _143);
        _740 = rsqrt(dot(float3(_734, _736, _738), float3(_734, _736, _738)));  // [sem: invLength]
        _745 = saturate(dot(float3(_232, _231, _230), float3((_740 * _734), (_740 * _736), (_740 * _738))));  // [sem: expr_sat]
        _748 = 1.0f - ((_745 * _745) * 0.35999995f);
        _750 = 0.20371833f / (_748 * _748);
        _752 = (_750 * _720) + _390;
        _753 = _750 + _389;
        _756 = (((int)(_687) | (int)(_388)) != 0) || _722;
        _757 = (int)(uint)(_756);
        _758 = (int)(_387) + (int)(1);
        if ((uint)_758 < (uint)_180) {
          _387 = _758;
          _388 = _757;
          _389 = _753;
          _390 = _752;
          _391 = _732;
          _392 = _458;
          _393 = _706;
          _394 = _705;
          _395 = _704;
          _396 = _731;
          _397 = _729;
          _398 = _727;
          __loop_jump_target = 386;
          break;
        }
        _763 = saturate(_752 / max(1e-06f, _753));  // [sem: expr_sat]
        _770 = sqrt(((_705 * _705) + (_704 * _704)) + (_706 * _706)) * _732;
        if (!(_770 == 0.0f)) {
          _774 = ((float)((uint)((uint)(_180)))) / _770;
          _779 = (_774 * _727);
          _780 = (_774 * _729);
          _781 = (_774 * _731);
        } else {
          _779 = _727;
          _780 = _729;
          _781 = _731;
        }
        _787 = sqrt(((_780 * _780) + (_779 * _779)) + (_781 * _781));
        if (!(_787 == 0.0f)) {
          _794 = (_779 / _787);
          _795 = (_780 / _787);
          _796 = (_781 / _787);
        } else {
          _794 = _232;
          _795 = _231;
          _796 = _230;
        }
        if (!_147) {
          _805 = (1.0f - (saturate(1.0f - _763) * saturate(select(_756, 0.0f, 1.0f))));
        } else {
          _805 = 1.0f;
        }
        __3__38__0__1__g_bentConeResultUAV[int2(_40, _41)] = float4(((_794 * 0.5f) + 0.5f), ((_795 * 0.5f) + 0.5f), ((_796 * 0.5f) + 0.5f), saturate(1.0f - _787));
        _821 = ((_shadowAOParams.w + _805) - (_shadowAOParams.w * _805));
        // RenoDX: >>> [Patch: FoliageAOBentConeVisibility] [Version: 1.16.00]
        // Description: After the AO solve, the native code softens bent-cone visibility toward white by blending with the global AO strength parameter, which washes out the contact occlusion that foliage relies on. When the foliage AO feature is enabled, this block blends foliage stencil pixels (stencil ids 12-18) back toward the unsoftened bent-cone visibility so downstream diffuse lighting receives stronger leaf and grass occlusion. The blend weight is the feature strength, so at strength 0 the value is the native softened result and non-foliage stencil ids are never touched.
        if (FOLIAGE_AO_STRENGTH > 0.0f && ((uint)(_50 - 12) < 7u)) {
          _821 = lerp(_821, _805, FOLIAGE_AO_STRENGTH);
        }
        // RenoDX: <<< [Patch: FoliageAOBentConeVisibility]
        _822 = _763;
        break;
      }
      if (__loop_jump_target == 386) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
  }
  __3__38__0__1__g_sceneAOResultUAV[int2(_36, _39)] = float2(_821, _822);
}
