// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports "../shared.h" for the effective RenoDX option gates and injected constants used below; Imports "rr_ladder_common.hlsli" for the SPMIS reservoir-sampling and quality-ladder helpers used below.
#include "../shared.h"
#include "rr_ladder_common.hlsli"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
Texture2D<float4> __3__36__0__0__g_raytracingNormal : register(t160, space36);

Texture2D<float2> __3__36__0__0__g_velocity : register(t20, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t50, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormalPrev : register(t59, space36);

Texture2D<uint2> __3__36__0__0__g_normalDepth : register(t60, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t63, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaquePrev : register(t64, space36);

Texture2D<uint4> __3__36__0__0__g_diffuseGIReservoirHitGeometryPrev : register(t72, space36);

Texture2D<uint2> __3__36__0__0__g_diffuseGIReservoirRadiancePrev : register(t74, space36);

RWTexture2D<float4> __3__38__0__1__g_raytracingHitResultUAV : register(u39, space38);

RWTexture2D<float> __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV : register(u44, space38);

RWTexture2D<half4> __3__38__0__1__g_diffuseResultUAV : register(u11, space38);

RWTexture2D<uint4> __3__38__0__1__g_diffuseGIReservoirHitGeometryUAV : register(u14, space38);

RWTexture2D<uint2> __3__38__0__1__g_diffuseGIReservoirRadianceUAV : register(u16, space38);

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

cbuffer __3__35__0__0__EnvironmentLightingHistoryConstantBuffer : register(b0, space35) {
  float4 _environmentLightingHistory[4] : packoffset(c000.x);
};

cbuffer __3__1__0__0__RenderVoxelConstants : register(b0, space1) {
  float4 _renderParams : packoffset(c000.x);
  float4 _renderParams2 : packoffset(c001.x);
  float4 _cubemapViewPosRelative : packoffset(c002.x);
  float4 _lightingParams : packoffset(c003.x);
  float4 _tiledRadianceCacheParams : packoffset(c004.x);
  float _rtaoIntensity : packoffset(c005.x);
};

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

[numthreads(8, 8, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  float _25;
  float _26;
  float _30;
  float _33;
  int _42;
  uint _47;
  uint _55;
  uint _63;
  uint _71;
  uint _79;
  uint _87;
  uint _95;
  uint _103;
  uint _111;
  uint _119;
  uint _127;
  uint _135;
  uint _143;
  uint _151;
  uint _159;
  uint _167;
  int _180;
  int _293;
  float _336;
  float _337;
  int _561;
  int _635;
  int _667;
  int _668;
  int _683;
  int _684;
  float _965;
  float _1005;
  float _1006;
  float _1007;
  float _1008;
  float _1009;
  float _1010;
  float _1011;
  float _1012;
  float _1013;
  float _1014;
  float _1015;
  float _1016;
  float _1017;
  int _1018;
  float _1019;
  bool _1020;
  float _1114;
  float _1115;
  float _1116;
  float _1117;
  int _1118;
  int _1119;
  uint _182;
  int _184;
  float _187;
  int _188;
  uint _190;
  float _196;
  float _202;
  float _208;
  float _210;
  float _211;
  float _212;
  float _213;
  float _222;
  float _224;
  float _225;
  float _237;
  float _246;
  float _255;
  float _264;
  float _267;
  float _305;
  float2 _309;
  bool _340;
  int _345;
  int _351;
  int _364;
  int _377;
  half _380;
  half _381;
  half _382;
  float _385;
  float _386;
  float _387;
  float _388;
  float _390;
  float _391;
  float _392;
  float _393;
  float4 _395;
  float _399;
  float _401;
  float _403;
  float _405;
  float _407;
  float _408;
  float _409;
  float _410;
  bool _417;
  float _419;
  float _421;
  float _423;
  bool _425;
  float _428;
  uint _436;
  uint _444;
  uint _452;
  uint _460;
  uint _468;
  uint _476;
  uint _484;
  uint _492;
  uint _500;
  uint _508;
  uint _516;
  uint _524;
  uint _532;
  uint _540;
  uint _548;
  uint _562;
  uint2 _564;
  float _571;
  float _577;
  float _583;
  float _585;
  float _590;
  float _595;
  float _599;
  float _603;
  float _608;
  float _613;
  float _618;
  float _620;
  float _622;
  float _624;
  float _628;
  float _631;
  float _633;
  bool _636;
  uint _645;
  int _647;
  int _650;
  int _653;
  int _673;
  int _675;
  float _685;
  float _686;
  uint _701;
  float _707;
  float _713;
  float _719;
  float _724;
  float _729;
  float _736;
  float _748;
  float _751;
  uint4 _753;
  uint2 _759;
  float _769;
  float _777;
  float _785;
  float _787;
  float _788;
  float _789;
  float _790;
  float _795;
  float _801;
  float _807;
  float _809;
  float _810;
  float _811;
  float _812;
  float _814;
  int _815;
  int _817;
  float _827;
  float _830;
  float _839;
  float _841;
  float _850;
  float _852;
  float _853;
  float _854;
  float _855;
  float _856;
  float _857;
  float _858;
  float _859;
  float _860;
  float _861;
  float _866;
  bool _867;
  int _885;
  float _888;
  float _889;
  float _890;
  float _891;
  float _892;
  float _893;
  float _894;
  float _895;
  float _896;
  float _897;
  float _902;
  float _905;
  float _906;
  float _907;
  float _914;
  float _940;
  float _941;
  float _942;
  float _943;
  float _945;
  float _952;
  float _953;
  bool _974;
  int _975;
  float _981;
  float _1021;
  float _1022;
  float _1023;
  float _1025;
  float _1032;
  float _1036;
  int __loop_jump_target = -1;
  _25 = (float)((uint)(SV_DispatchThreadID.x));
  _26 = (float)((uint)(SV_DispatchThreadID.y));
  _30 = _bufferSizeAndInvSize.z * (_25 + 0.5f);
  _33 = _bufferSizeAndInvSize.w * (_26 + 0.5f);
  _42 = (((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524));
  _47 = (uint)((uint)(_42)) + (uint)((uint)((_bufferSizeAndInvSize.x * _26) + _25));
  _55 = (uint)((uint)((((int)((uint)((uint)((uint)(_47)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_47)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_47)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
  _63 = (uint)((uint)((((int)((uint)((uint)((uint)(_55)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_55)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_55)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_47));
  _71 = (uint)((uint)((((int)((uint)((uint)((uint)(_63)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_63)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_63)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_55));
  _79 = (uint)((uint)((((int)((uint)((uint)((uint)(_71)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_71)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_71)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_63));
  _87 = (uint)((uint)((((int)((uint)((uint)((uint)(_79)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_79)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_79)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_71));
  _95 = (uint)((uint)((((int)((uint)((uint)((uint)(_87)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_87)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_87)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_79));
  _103 = (uint)((uint)((((int)((uint)((uint)((uint)(_95)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_95)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_95)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_87));
  _111 = (uint)((uint)((((int)((uint)((uint)((uint)(_103)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_103)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_103)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_95));
  _119 = (uint)((uint)((((int)((uint)((uint)((uint)(_111)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_111)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_111)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_103));
  _127 = (uint)((uint)((((int)((uint)((uint)((uint)(_119)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_119)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_119)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_111));
  _135 = (uint)((uint)((((int)((uint)((uint)((uint)(_127)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_127)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_127)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_119));
  _143 = (uint)((uint)((((int)((uint)((uint)((uint)(_135)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_135)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_135)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_127));
  _151 = (uint)((uint)((((int)((uint)((uint)((uint)(_143)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_143)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_143)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_135));
  _159 = (uint)((uint)((((int)((uint)((uint)((uint)(_151)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_151)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_151)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_143));
  _167 = (uint)((uint)((((int)((uint)((uint)((uint)(_159)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_159)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_159)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_151));
  if ((_159 & 16777215) == 0) {
    _180 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_167)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_167)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_167)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_159))));
  } else {
    _180 = _159;
  }
  _182 = __3__36__0__0__g_depthOpaque.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));  // [sem: _3__36__0__0__g_depthOpaque_load]
  _184 = (uint)((uint)(_182.x)) >> 24;  // [sem: _3__36__0__0__g_depthOpaque_load_derived]
  _187 = ((float)((uint)((uint)(_182.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthOpaque_load_derived]
  _188 = _184 & 127;
  _190 = __3__36__0__0__g_sceneNormal.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
  _196 = min(1.0f, ((((float)((uint)((uint)(_190.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _202 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_190.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _208 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_190.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _210 = rsqrt(dot(float3(_196, _202, _208), float3(_196, _202, _208)));  // [sem: invLength]
  _211 = _210 * _196;
  _212 = _210 * _202;
  _213 = _210 * _208;
  if ((_187 < 1e-07f) || (_187 == 1.0f)) {
    __3__38__0__1__g_diffuseGIReservoirHitGeometryUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = int4(0, 0, 0, 0);
    __3__38__0__1__g_diffuseGIReservoirRadianceUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = int2(0, 0);
  } else {
    _222 = (_30 * 2.0f) + -1.0f;
    _224 = 1.0f - (_33 * 2.0f);
    _225 = max(1e-07f, _187);
    _237 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _225, mad((_invViewProjRelative[3].y), _224, ((_invViewProjRelative[3].x) * _222)));
    _246 = (mad((_invViewProjRelative[0].z), _225, mad((_invViewProjRelative[0].y), _224, ((_invViewProjRelative[0].x) * _222))) + (_invViewProjRelative[0].w)) / _237;
    _255 = (mad((_invViewProjRelative[1].z), _225, mad((_invViewProjRelative[1].y), _224, ((_invViewProjRelative[1].x) * _222))) + (_invViewProjRelative[1].w)) / _237;
    _264 = (mad((_invViewProjRelative[2].z), _225, mad((_invViewProjRelative[2].y), _224, ((_invViewProjRelative[2].x) * _222))) + (_invViewProjRelative[2].w)) / _237;
    _267 = _nearFarProj.x / _225;
    if ((_184 & 128) == 0) {
      if ((uint)_188 > (uint)51) {
        if (!(((_184 & 125) == 105) || ((uint)_188 < (uint)68))) {
          _293 = ((int)(uint)((int)(_188 == 98)));
        } else {
          _293 = 1;
        }
      } else {
        if ((uint)_188 > (uint)10) {
          if ((uint)_188 < (uint)20) {
            _293 = ((int)(uint)((int)((_184 & 126) != 14)));
          } else {
            _293 = ((int)(uint)((int)((_184 & 125) == 105)));
          }
        } else {
          _293 = 0;
        }
      }
    } else {
      _293 = 1;
    }
    _305 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), _187, mad((_projToPrevProj[3].y), _224, ((_projToPrevProj[3].x) * _222)));
    if (_293 == 0) {
      _336 = (((mad((_projToPrevProj[1].z), _187, mad((_projToPrevProj[1].y), _224, ((_projToPrevProj[1].x) * _222))) + (_projToPrevProj[1].w)) / _305) - _224);
      _337 = (((mad((_projToPrevProj[0].z), _187, mad((_projToPrevProj[0].y), _224, ((_projToPrevProj[0].x) * _222))) + (_projToPrevProj[0].w)) / _305) - _222);
    } else {
      _309 = __3__36__0__0__g_velocity.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));  // [sem: _3__36__0__0__g_velocity_load]
      _336 = (_309.y * 2.0f);
      _337 = (_309.x * 2.0f);
    }
    _340 = (_renderParams.x > 0.0f);
    _345 = (int)(floor(((_337 * 0.5f) + _30) * _bufferSizeAndInvSize.x));
    _351 = (int)(floor((_33 - (_336 * 0.5f)) * _bufferSizeAndInvSize.y));
    _364 = min((int)(max((int)(((int)((int)((((float)((uint)((uint)(((int)((uint)((uint)(_180)) * (uint)(48271))) & 16777215)))) * 5.3584574e-07f) + -4.0f)) + (int)((uint)(SV_DispatchThreadID.x) >> 1))), (int)(0))), (int)(((int)((int)(_bufferSizeAndInvSize.x * 0.5f)) + (int)(-1))));
    _377 = min((int)(max((int)(((int)((int)((((float)((uint)((uint)(((int)((uint)((uint)(_180)) * (uint)(-1964877855))) & 16777215)))) * 5.3584574e-07f) + -4.0f)) + (int)((uint)(SV_DispatchThreadID.y) >> 1))), (int)(0))), (int)(((int)((int)(_bufferSizeAndInvSize.y * 0.5f)) + (int)(-1))));
    _380 = __3__38__0__1__g_diffuseResultUAV[int2(_364, _377)].x;
    _381 = __3__38__0__1__g_diffuseResultUAV[int2(_364, _377)].y;
    _382 = __3__38__0__1__g_diffuseResultUAV[int2(_364, _377)].z;
    _385 = __3__38__0__1__g_raytracingHitResultUAV[int2(_364, _377)].x;
    _386 = __3__38__0__1__g_raytracingHitResultUAV[int2(_364, _377)].y;
    _387 = __3__38__0__1__g_raytracingHitResultUAV[int2(_364, _377)].z;
    _388 = __3__38__0__1__g_raytracingHitResultUAV[int2(_364, _377)].w;
    _390 = rsqrt(dot(float3(_385, _386, _387), float3(_385, _386, _387)));  // [sem: invLength]
    _391 = _390 * _385;
    _392 = _390 * _386;
    _393 = _390 * _387;
    _395 = __3__36__0__0__g_raytracingNormal.Load(int3(_364, _377, 0));  // [sem: _3__36__0__0__g_raytracingNormal_load]
    _399 = abs(_388);
    _401 = (_395.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _403 = (_395.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _405 = (_395.z * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _407 = rsqrt(dot(float3(_401, _403, _405), float3(_401, _403, _405)));  // [sem: invLength]
    _408 = _401 * _407;
    _409 = _403 * _407;
    _410 = _405 * _407;
    _417 = (_388 < 0.0f) ^ ((_409 == 0.0f) && ((_410 == 0.0f) && (_408 == 0.0f)));
    _419 = select(_417, _408, (-0.0f - _391));
    _421 = select(_417, _409, (-0.0f - _392));
    _423 = select(_417, _410, (-0.0f - _393));
    _425 = ((uint)((int)(_188) + (int)(-52)) < (uint)16);
    _428 = max(0.1f, (_267 * select(_425, 0.02f, 0.1f)));
    _436 = (uint)((uint)((((int)((uint)((uint)((uint)(_42)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_42)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_42)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
    _444 = (uint)((uint)((((int)((uint)((uint)((uint)(_436)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_436)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_436)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_42));
    _452 = (uint)((uint)((((int)((uint)((uint)((uint)(_444)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_444)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_444)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_436));
    _460 = (uint)((uint)((((int)((uint)((uint)((uint)(_452)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_452)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_452)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_444));
    _468 = (uint)((uint)((((int)((uint)((uint)((uint)(_460)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_460)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_460)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_452));
    _476 = (uint)((uint)((((int)((uint)((uint)((uint)(_468)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_468)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_468)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_460));
    _484 = (uint)((uint)((((int)((uint)((uint)((uint)(_476)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_476)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_476)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_468));
    _492 = (uint)((uint)((((int)((uint)((uint)((uint)(_484)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_484)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_484)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_476));
    _500 = (uint)((uint)((((int)((uint)((uint)((uint)(_492)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_492)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_492)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_484));
    _508 = (uint)((uint)((((int)((uint)((uint)((uint)(_500)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_500)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_500)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_492));
    _516 = (uint)((uint)((((int)((uint)((uint)((uint)(_508)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_508)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_508)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_500));
    _524 = (uint)((uint)((((int)((uint)((uint)((uint)(_516)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_516)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_516)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_508));
    _532 = (uint)((uint)((((int)((uint)((uint)((uint)(_524)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_524)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_524)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_516));
    _540 = (uint)((uint)((((int)((uint)((uint)((uint)(_532)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_532)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_532)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_524));
    _548 = (uint)((uint)((((int)((uint)((uint)((uint)(_540)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_540)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_540)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_532));
    if ((_540 & 16777215) == 0) {
      _561 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_548)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_548)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_548)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_540))));
    } else {
      _561 = _540;
    }
    _562 = (uint)((uint)(_561)) * (uint)(48271);
    // RenoDX: >>> [Patch: SPMISDecorrelation] [Version: 1.16.00]
    // Description: Derives the decorrelation keys used by the temporal reuse taps of this ReSTIR
    //              temporal resampling shader. Two kinds of key are produced, matching the two
    //              randomization sites further down:
    //              (1) rr_ladder_keys - a PER-PIXEL, per-frame key taken from a second, independent
    //                  extraction of this shader's own TEA hash. It uses the same Zafar/Olano key
    //                  schedule and the same (pixel index, frame number) seeding as the sampling
    //                  stream the shader already runs, but with extended rounds and a stream salt so
    //                  it is structurally distinct from and statistically independent of that stream
    //                  (residual chance collisions are around 2^-32 per word and are harmless). Only
    //                  word .x is consumed, as the random start index for the +/-1 neighbour offset
    //                  table - a quantity that is per-pixel in the vanilla draw it replaces too.
    //              (2) rr_ladder_tap_keys - three PER-TAP-SLOT, SCREEN-GLOBAL 4-bit XOR-3 permutation
    //                  keys derived from (frame number, tap slot) only, with no pixel term, for tap
    //                  slot 0, slots 1-3 (shared) and slot 4. Keeping them pixel independent is what
    //                  makes each tap slot's permutation a screen-wide bijection of the history
    //                  buffer, so no history reservoir is lost.
    //              The keys change no light energy - they only alter which history texel each
    //              temporal tap reads - so they are safe on every ray-traced quality tier. They are
    //              computed only when a quality tier that carries the decorrelation is active;
    //              otherwise the vanilla code below runs unchanged.
    const bool rr_ladder_decorrelate = (RR_ENABLED == 1.f && (RT_QUALITY == 1.f || RT_QUALITY == 2.f || RT_QUALITY == 3.f));
    uint2 rr_ladder_keys = uint2(0u, 0u);
    uint3 rr_ladder_tap_keys = uint3(0u, 0u, 0u);
    if (rr_ladder_decorrelate) {
      rr_ladder_keys = RRLadder_TeaSecondExtraction(uint((_bufferSizeAndInvSize.x * _26) + _25), _frameNumber.x, 1u);
      rr_ladder_tap_keys = uint3(RRLadder_GlobalTapKey(_frameNumber.x, 0u),
                                 RRLadder_GlobalTapKey(_frameNumber.x, 1u),
                                 RRLadder_GlobalTapKey(_frameNumber.x, 4u));
    }
    // RenoDX: <<< [Patch: SPMISDecorrelation]
    _564 = __3__36__0__0__g_normalDepth.Load(int3(_364, _377, 0));  // [sem: _3__36__0__0__g_normalDepth_load]
    _571 = min(1.0f, ((((float)((uint)((uint)(_564.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
    _577 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_564.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
    _583 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_564.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
    _585 = rsqrt(dot(float3(_571, _577, _583), float3(_571, _577, _583)));  // [sem: invLength]
    _590 = ((_bufferSizeAndInvSize.z * 4.0f) * (((float)((int)(_364))) + 0.5f)) + -1.0f;
    _595 = 1.0f - ((_bufferSizeAndInvSize.w * 4.0f) * (((float)((int)(_377))) + 0.5f));
    _599 = max(1e-07f, (((float)((uint)((uint)(_564.y & 16777215)))) * 5.960465e-08f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
    _603 = mad((_invViewProjRelative[3].z), _599, mad((_invViewProjRelative[3].y), _595, (_590 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
    _608 = (mad((_invViewProjRelative[0].z), _599, mad((_invViewProjRelative[0].y), _595, (_590 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _603;
    _613 = (mad((_invViewProjRelative[1].z), _599, mad((_invViewProjRelative[1].y), _595, (_590 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _603;
    _618 = (mad((_invViewProjRelative[2].z), _599, mad((_invViewProjRelative[2].y), _595, (_590 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _603;
    _620 = _608 + (_399 * _391);
    _622 = _613 + (_399 * _392);
    _624 = _618 + (_399 * _393);
    _628 = dot(float3(float(_380), float(_381), float(_382)), float3(0.212671f, 0.71516f, 0.072169f));
    _631 = __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV[int2(_364, _377)];
    _633 = saturate(_631 * 2.0f);  // [sem: expr_sat]
    _635 = 0;
    while(true) {
      _636 = (_635 == 4);
      if (!_636) {
        if (!(_635 == 0)) {
          // RenoDX: >>> [Patch: SPMISDecorrelation] [Version: 1.16.00]
          // Description: Replaces the random start index for the +/-1 temporal neighbour offsets.
          //              Loop taps 1-3 index an 8-entry offset table at (start + tap) so the three
          //              taps stay distinct; vanilla derives that start index from a low-quality LCG
          //              stream (the per-pixel TEA state multiplied by -856141137, low 24 bits),
          //              whose structure shows up as correlated neighbour choices between adjacent
          //              pixels and frames. When a ray-traced quality tier that carries the
          //              decorrelation is active, the same uniform 3-bit index is instead taken from
          //              the TEA-quality per-pixel per-frame key derived above, which preserves the
          //              consecutive-table-indexing design while removing the weak-stream structure.
          //              With that gate off, the vanilla draw executes unchanged.
          if (rr_ladder_decorrelate) {
            _645 = _635 + ((rr_ladder_keys.x >> 20) & 7u);
          } else {
            _645 = _635 + uint(((float)((uint)((uint)(((int)(_180 * -856141137)) & 16777215)))) * 4.7624109811295057e-07f);
          }
          // RenoDX: <<< [Patch: SPMISDecorrelation]
          _647 = ((uint)((uint)(_645)) >> 1) & 1;
          _650 = (((uint)((uint)(_645)) >> 2) & 1) ^ 1;
          _653 = (int)(((int)((uint)((uint)(_645)) << 1)) & 2) + (int)(-1);
          _667 = ((int)((uint)((uint)(((int)((int)(1) - (int)((int)(_647) << 1)) * (int)(_653)) & ((int)(0) - (int)((int)(_650) | (int)(_647 ^ 1))))) + (uint)((uint)(_351))));
          _668 = ((int)((uint)((uint)(_653 & ((int)(0) - (int)((int)(_650) | (int)(_647))))) + (uint)((uint)(_345))));
        } else {
          _667 = _351;
          _668 = _345;
        }
      } else {
        _667 = (int)(SV_DispatchThreadID.y);
        _668 = (int)(SV_DispatchThreadID.x);
      }
      // RenoDX: >>> [Patch: SPMISDecorrelation] [Version: 1.16.00]
      // Description: Generalizes the temporal reuse tap permutation. Vanilla applies the 4x4 XOR-3
      //              permutation ((coord + r) ^ 3) - r only to loop tap 0 (the reprojected pixel)
      //              and tap 4 (the self pixel), only when _renderParams.x > 0, and with a per-frame
      //              SCREEN-GLOBAL key (its key stream is seeded from the frame number only, with no
      //              pixel term). A pixel-independent key is what makes the XOR-3 permutation a
      //              screen-wide BIJECTIVE shuffle of the history buffer: every history reservoir is
      //              read exactly once per permuted tap, so no history is lost. The three +/-1
      //              neighbour taps are never permutation-randomized in vanilla, so consecutive
      //              frames re-read history from structurally correlated locations - and DLSS Ray
      //              Reconstruction assumes temporally reused sample locations are
      //              permutation-randomized (DLSS-RR Integration Guide, section 3.5); leaving them
      //              correlated shows up as temporal noise and smearing in the resolved image.
      //              When a ray-traced quality tier that carries the decorrelation is active, all
      //              five temporal reuse taps are permuted regardless of _renderParams.x, using the
      //              per-tap-slot screen-global keys derived above. This extends the vanilla
      //              screen-global convention from one shared key on two taps to independent keys on
      //              three tap slots - tap 0, taps 1-3 (shared) and tap 4 - so every slot's mapping
      //              stays a screen-wide bijection (history coverage fully preserved) while distinct
      //              slots and successive frames still decorrelate. Taps 1-3 deliberately share one
      //              key: a shared key applies one common bijection to their three distinct +/-1
      //              offsets, so those taps can never alias onto the same history texel, whereas
      //              independent keys would let even-delta tap pairs collide. The keys must stay
      //              screen-global for the same reason - deriving them per pixel breaks the
      //              bijection and leaves roughly 1/e of the history reservoirs unread on any given
      //              frame, which thins the temporal history and reads as increased noise at 1 spp.
      //              The permutation displaces a tap by at most 3 pixels per axis, so reuse locality
      //              and the existing per-tap bounds and geometry rejection tests still hold. With
      //              the gate off, the vanilla permutation (taps 0/4 only, screen-global key,
      //              _renderParams.x-gated) executes unchanged.
      if (rr_ladder_decorrelate) {
        const uint rr_ladder_tap_key = (_635 == 0) ? rr_ladder_tap_keys.x : ((_635 == 4) ? rr_ladder_tap_keys.z : rr_ladder_tap_keys.y);
        const int2 rr_ladder_permuted = RRLadder_Xor3Permute(int2(_668, _667), rr_ladder_tap_key);
        _684 = rr_ladder_permuted.x;
        _683 = rr_ladder_permuted.y;
      } else if (_340 && ((_635 & -5) == 0)) {
        _673 = _562 & 3;
        _675 = ((uint)(_562) >> 2) & 3;
        _684 = ((int)(((uint)(((int)(_668 + _673)) ^ 3)) - _673));
        _683 = ((int)(((uint)(((int)(_667 + _675)) ^ 3)) - _675));
      } else {
        _684 = _668;
        _683 = _667;
      }
      // RenoDX: <<< [Patch: SPMISDecorrelation]
      _685 = (float)((int)(_684));
      _686 = (float)((int)(_683));
      if (!((int)_684 < (int)0)) {
        if (((int)_683 < (int)0) || (_685 > (_bufferSizeAndInvSize.x + -1.0f))) {
          _885 = (int)(_635) + (int)(1);
          if ((uint)_885 < (uint)5) {
            _635 = _885;
            continue;
          } else {
            _1114 = _633;  // [sem: expr_sat]
            _1115 = _620;
            _1116 = _622;
            _1117 = _624;
            _1118 = ((int)((int)(((int)((uint)((uint)((_421 * 511.0f) + 511.5f)) << 10)) & 1047552) | (int)(((int)((uint)((_419 * 511.0f) + 511.5f))) & 1023)) | (int)(((int)((uint)((uint)((_423 * 511.0f) + 511.5f)) << 20)) & 1072693248));
            _1119 = ((int)((int)((uint)(f32tof16(_628)) << 16)) | (int)(1025));
          }
        } else {
          if (_686 > (_bufferSizeAndInvSize.y + -1.0f)) {
            _885 = (int)(_635) + (int)(1);
            if ((uint)_885 < (uint)5) {
              _635 = _885;
              continue;
            } else {
              _1114 = _633;  // [sem: expr_sat]
              _1115 = _620;
              _1116 = _622;
              _1117 = _624;
              _1118 = ((int)((int)(((int)((uint)((uint)((_421 * 511.0f) + 511.5f)) << 10)) & 1047552) | (int)(((int)((uint)((_419 * 511.0f) + 511.5f))) & 1023)) | (int)(((int)((uint)((uint)((_423 * 511.0f) + 511.5f)) << 20)) & 1072693248));
              _1119 = ((int)((int)((uint)(f32tof16(_628)) << 16)) | (int)(1025));
            }
          } else {
            _701 = __3__36__0__0__g_sceneNormalPrev.Load(int3(_684, _683, 0));  // [sem: _3__36__0__0__g_sceneNormalPrev_load]
            _707 = min(1.0f, ((((float)((uint)((uint)(_701.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_load_derived]
            // [sem: _3__36__0__0__g_sceneNormalPrev_load_derived]
            _713 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_701.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));
            // [sem: _3__36__0__0__g_sceneNormalPrev_load_derived]
            _719 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_701.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));
            _724 = (((_685 + 0.5f) * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f;
            _729 = 1.0f - (((_686 + 0.5f) * 2.0f) * _bufferSizeAndInvSize.w);
            _736 = max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaquePrev.Load(int3(_684, _683, 0)))).x) & 16777215)))) * 5.960465e-08f));
            _748 = (_invViewProjRelativePrev[3].w) + mad((_invViewProjRelativePrev[3].z), _736, mad((_invViewProjRelativePrev[3].y), _729, ((_invViewProjRelativePrev[3].x) * _724)));
            _751 = rsqrt(dot(float3(_707, _713, _719), float3(_707, _713, _719))) * 511.0f;
            _753 = __3__36__0__0__g_diffuseGIReservoirHitGeometryPrev.Load(int3(_684, _683, 0));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometryPrev_load]
            _759 = __3__36__0__0__g_diffuseGIReservoirRadiancePrev.Load(int3(_684, _683, 0));  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiancePrev_load]
            _769 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_751 * _707) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
            _777 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_751 * _713) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
            _785 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_751 * _719) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
            _787 = rsqrt(dot(float3(_769, _777, _785), float3(_769, _777, _785)));  // [sem: invLength]
            _788 = _787 * _769;
            _789 = _787 * _777;
            _790 = _787 * _785;
            _795 = min(1.0f, ((((float)((uint)((uint)(_753.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometryPrev_load_derived]
            // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometryPrev_load_derived]
            _801 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_753.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));
            // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometryPrev_load_derived]
            _807 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_753.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));
            _809 = rsqrt(dot(float3(_795, _801, _807), float3(_795, _801, _807)));  // [sem: invLength]
            _810 = _809 * _795;
            _811 = _809 * _801;
            _812 = _809 * _807;
            _814 = f16tof32(((uint)((uint)((uint)(_759.x)) >> 16)));  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiancePrev_load_derived]
            _815 = _759.x & 1023;  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiancePrev_load_derived]
            _817 = ((uint)((uint)(_759.x)) >> 10) & 63;  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiancePrev_load_derived]
            _827 = (mad((_invViewProjRelativePrev[0].z), _736, mad((_invViewProjRelativePrev[0].y), _729, ((_invViewProjRelativePrev[0].x) * _724))) + (_invViewProjRelativePrev[0].w)) / _748;
            _830 = _827 - _diffViewPosAccurate.x;
            _839 = (mad((_invViewProjRelativePrev[1].z), _736, mad((_invViewProjRelativePrev[1].y), _729, ((_invViewProjRelativePrev[1].x) * _724))) + (_invViewProjRelativePrev[1].w)) / _748;
            _841 = _839 - _diffViewPosAccurate.y;
            _850 = (mad((_invViewProjRelativePrev[2].z), _736, mad((_invViewProjRelativePrev[2].y), _729, ((_invViewProjRelativePrev[2].x) * _724))) + (_invViewProjRelativePrev[2].w)) / _748;
            _852 = _850 - _diffViewPosAccurate.z;
            _853 = asfloat(_753.x);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometryPrev_load_derived]
            _854 = _853 - _diffViewPosAccurate.x;
            _855 = asfloat(_753.y);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometryPrev_load_derived]
            _856 = _855 - _diffViewPosAccurate.y;
            _857 = asfloat(_753.z);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometryPrev_load_derived]
            _858 = _857 - _diffViewPosAccurate.z;
            _859 = _830 - _246;
            _860 = _841 - _255;
            _861 = _852 - _264;
            _866 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_830, _841, _852));
            _867 = !_636;
            if (((_866 <= 0.2f) || ((dot(float3(_859, _860, _861), float3(_859, _860, _861)) > (_428 * _428)) && _867)) || ((!((_866 <= 0.2f) || ((dot(float3(_859, _860, _861), float3(_859, _860, _861)) > (_428 * _428)) && _867))) && (!(!(abs(_866 - _267) >= max(0.5f, (_267 * 0.02f)))))) || (((!((_866 <= 0.2f) || ((dot(float3(_859, _860, _861), float3(_859, _860, _861)) > (_428 * _428)) && _867))) && (!(abs(_866 - _267) >= max(0.5f, (_267 * 0.02f))))) && ((dot(float3(_788, _789, _790), float3(_211, _212, _213)) <= 0.0f) && _867))) {
              _885 = (int)(_635) + (int)(1);
              if ((uint)_885 < (uint)5) {
                _635 = _885;
                continue;
              } else {
                _1114 = _633;  // [sem: expr_sat]
                _1115 = _620;
                _1116 = _622;
                _1117 = _624;
                _1118 = ((int)((int)(((int)((uint)((uint)((_421 * 511.0f) + 511.5f)) << 10)) & 1047552) | (int)(((int)((uint)((_419 * 511.0f) + 511.5f))) & 1023)) | (int)(((int)((uint)((uint)((_423 * 511.0f) + 511.5f)) << 20)) & 1072693248));
                _1119 = ((int)((int)((uint)(f32tof16(_628)) << 16)) | (int)(1025));
              }
            } else {
              _888 = _853 - _827;
              _889 = _855 - _839;
              _890 = _857 - _850;
              _891 = _854 - _246;
              _892 = _856 - _255;
              _893 = _858 - _264;
              _894 = dot(float3(_891, _892, _893), float3(_891, _892, _893));
              _895 = dot(float3(_888, _889, _890), float3(_888, _889, _890));
              _896 = rsqrt(_895);  // [sem: rsqrt_val]
              _897 = rsqrt(_894);  // [sem: rsqrt_val]
              _902 = dot(float3((_896 * _888), (_896 * _889), (_896 * _890)), float3(_810, _811, _812)) * _894;
              if (!(_902 >= -0.0f)) {
                _905 = _897 * _891;
                _906 = _897 * _892;
                _907 = _897 * _893;
                _914 = min(max(((-0.0f - (_895 * dot(float3(_905, _906, _907), float3(_810, _811, _812)))) / (-0.0f - _902)), 0.0f), 1.0f);
                if (_914 == 0.0f) {
                  _1114 = _633;  // [sem: expr_sat]
                  _1115 = _620;
                  _1116 = _622;
                  _1117 = _624;
                  _1118 = ((int)((int)(((int)((uint)((uint)((_421 * 511.0f) + 511.5f)) << 10)) & 1047552) | (int)(((int)((uint)((_419 * 511.0f) + 511.5f))) & 1023)) | (int)(((int)((uint)((uint)((_423 * 511.0f) + 511.5f)) << 20)) & 1072693248));
                  _1119 = ((int)((int)((uint)(f32tof16(_628)) << 16)) | (int)(1025));
                } else {
                  _940 = (_814 * 0.31830987f) * max(0.1f, dot(float3(_211, _212, _213), float3(_905, _906, _907)));
                  _941 = _620 - _246;
                  _942 = _622 - _255;
                  _943 = _624 - _264;
                  _945 = rsqrt(dot(float3(_941, _942, _943), float3(_941, _942, _943)));  // [sem: invLength]
                  _952 = (_628 * 0.31830987f) * max(0.1f, dot(float3(_211, _212, _213), float3((_945 * _941), (_945 * _942), (_945 * _943))));
                  _953 = _952 * _633;
                  if (!_425) {
                    _965 = select((_renderParams.y > 0.0f), 32.0f, (256.0f - (saturate(_exposure3.w * 10.0f) * 192.0f)));
                  } else {
                    _965 = 32.0f;
                  }
                  _974 = (((float)((uint)((uint)(_817)))) > _965) || ((((float)((uint)((uint)(((int)((uint)((uint)(_180)) * (uint)(-556260145))) & 16777215)))) * 5.9604645e-08f) < (1.0f / _965));
                  _975 = select(_974, 0, _815);
                  _981 = select(_974, 0.0f, (((((float)((uint)((uint)(_815)))) * asfloat(_759.y)) * _914) * _940)) + _953;
                  if (!((((((float)((uint)((uint)(((int)((uint)((uint)(_180)) * (uint)(-613502015))) & 16777215)))) * 5.9604645e-08f) * _981) * select(_340, 1.0f, (1.0f - saturate(_temporalReprojectionParams.w + (_environmentLightingHistory[1].w))))) <= _953)) {
                    _1005 = _841;
                    _1006 = _830;
                    _1007 = _852;
                    _1008 = _788;
                    _1009 = _789;
                    _1010 = _790;
                    _1011 = _854;
                    _1012 = _856;
                    _1013 = _858;
                    _1014 = _810;
                    _1015 = _811;
                    _1016 = _812;
                    _1017 = select(_974, 0.0f, _814);
                    _1018 = ((int)(_817) + (int)(1));
                    _1019 = _940;
                    _1020 = false;
                  } else {
                    _1005 = _613;
                    _1006 = _608;
                    _1007 = _618;
                    _1008 = (_585 * _571);
                    _1009 = (_585 * _577);
                    _1010 = (_585 * _583);
                    _1011 = _620;
                    _1012 = _622;
                    _1013 = _624;
                    _1014 = _419;
                    _1015 = _421;
                    _1016 = _423;
                    _1017 = _628;
                    _1018 = 1;
                    _1019 = _952;
                    _1020 = true;
                  }
                  _1021 = _1011 - _1006;
                  _1022 = _1012 - _1005;
                  _1023 = _1013 - _1007;
                  _1025 = rsqrt(dot(float3(_1021, _1022, _1023), float3(_1021, _1022, _1023)));  // [sem: invLength]
                  _1032 = (_1017 * 0.31830987f) * max(0.1f, dot(float3(_1008, _1009, _1010), float3((_1025 * _1021), (_1025 * _1022), (_1025 * _1023))));
                  _1036 = ((_1032 * ((float)((uint)((uint)(_975))))) + _1019) * _1019;
                  _1114 = saturate(select((_1036 == 0.0f), 0.0f, ((select(_1020, _1019, _1032) * _981) / _1036)));  // [sem: expr_sat]
            // RenoDX: >>> [Patch: RRLadderFidelity] [Version: 1.16.00]
            // Description: Optional de-clamp of the stored reservoir weight. Compiled OUT by default
            //              via the RRFID_TEMPORAL_KNEE compile-time knob declared in
            //              rr_ladder_common.hlsli, because a boosted weight written into the
            //              reservoir survives reprojection and compounds against the reservoir
            //              sample count across frames, which is far riskier than a single-frame
            //              adjustment made at resolve time. The saturate directly above is the
            //              primary asymmetric clip on the stored weight: the merged resampling ratio
            //              (history term M * W * Jacobian * p-hat, plus the current sample's term,
            //              normalized by the selected sample's target value) is clipped at 1 whenever
            //              bright stable history is merged into a pixel whose selected sample has a
            //              lower local target value, which throws away energy that the history
            //              legitimately carried. When armed, every active ray-traced quality tier
            //              re-applies the ratio through the shared soft knee using the smaller
            //              temporal bound (RRFID_KNEE_KMAX_TEMPORAL = 1, so the stored weight can
            //              reach at most 2), scaled by the pre-increment counter pair
            //              min(M, age) so that refreshed or reset reservoirs - where either counter
            //              is forced to 0 by the stochastic-refresh select - store exactly the
            //              vanilla saturated value. Only merges that keep an established history
            //              (M >= 4 and no refresh this frame) can exceed it. Arming this stage also
            //              extends the anti-firefly clamp on the stored luminance below to the
            //              lowest quality tier, so any lane that can store a de-clamped weight
            //              always stores a clamped luminance alongside it.
#if RRFID_TEMPORAL_KNEE
            if (RR_ENABLED == 1.f && (RT_QUALITY == 1.f || RT_QUALITY == 2.f || RT_QUALITY == 3.f)) {
              if ((!_974) && ((uint)(_815) >= 4u)) {
                const float rr_fid_t_raw = select((_1036 == 0.0f), 0.0f, ((select(_1020, _1019, _1032) * _981) / _1036));
                const float rr_fid_t_conf = min((float((uint)_975)), (float((uint)max(_1018 - 1, 0))));
                _1114 = RRLadder_SoftKneeW(rr_fid_t_raw, RRFID_KNEE_KMAX_TEMPORAL * RRLadder_ConfidenceRamp(rr_fid_t_conf));
              }
            }
#endif
            // RenoDX: <<< [Patch: RRLadderFidelity]
                  _1115 = _1011;
                  _1116 = _1012;
                  _1117 = _1013;
                  _1118 = ((int)((int)(((int)((uint)((uint)((_1015 * 511.0f) + 511.5f)) << 10)) & 1047552) | (int)(((int)((uint)((_1014 * 511.0f) + 511.5f))) & 1023)) | (int)(((int)((uint)((uint)((_1016 * 511.0f) + 511.5f)) << 20)) & 1072693248));
            // RenoDX: >>> [Patch: SPMISDecorrelation] [Version: 1.16.00]
            // Description: Conservative anti-firefly clamp on the temporal reservoir radiance merge
            //              write. A single very bright candidate sample winning the resampling coin
            //              flip can multiply the stored reservoir luminance by orders of magnitude in
            //              one frame; DLSS Ray Reconstruction resolves that as a bright splotch that
            //              then persists through temporal reuse for many frames. When a ray-traced
            //              quality tier that carries this conditioning is active AND the merge keeps
            //              an established history (pre-merge history sample count M >= 4 and no
            //              stochastic history refresh this frame), the luminance about to be stored
            //              is clamped to at most 8x the pre-merge stored history luminance. The
            //              comparison is made in stored-value units; per-frame exposure-scale drift
            //              is far below the 8x headroom, so it cannot trip the clamp on its own.
            //              Fresh and reset writes - disocclusion resets, degenerate-parallax resets
            //              and stochastic-refresh frames - are never clamped, so legitimate lighting
            //              changes still propagate at full speed. With the gate off, the stored value
            //              is the unmodified vanilla expression.
            float rr_ladder_stored_lum = _exposure4.y * _1017;
            bool rr_ladder_lum_clamp_armed = rr_ladder_decorrelate;
#if RRFID_TEMPORAL_KNEE
            // The optional temporal knee above de-clamps the stored reservoir weight on every active
            // quality tier. The lowest tier is already covered by rr_ladder_decorrelate, so this OR
            // is redundant under the current gate; it is kept as a defensive no-op (the whole block
            // is compiled out by default) so that narrowing the decorrelation gate can never leave a
            // de-clamped stored weight paired with an unclamped stored luminance.
            rr_ladder_lum_clamp_armed = rr_ladder_lum_clamp_armed || (RR_ENABLED == 1.f && RT_QUALITY == 1.f);
#endif
            if (rr_ladder_lum_clamp_armed && (!_974) && ((uint)(_815) >= 4u)) {
              rr_ladder_stored_lum = RRLadder_FireflyClampScalar(rr_ladder_stored_lum, _814, 8.0f);
            }
            // RenoDX: <<< [Patch: SPMISDecorrelation]
                  // RenoDX: >>> [Patch: ReservoirAgeMaskFix] [Version: 1.16.00]
                  // Description: Fixes the native packed-reservoir counter overflow at the terminal merge write.
                  //              _975 is the selected bits-10 counter before increment; native permits its
                  //              reachable 63-to-64 transition through a ten-bit 0xFFC00 mask, which sets bit 16
                  //              in the adjacent f16 luminance and wraps the six-bit counter on the next decode.
                  //              Capping at 63 and masking with 0xFC00 preserves every 0..63 encoding while
                  //              preventing that single spill. The bits-0 counter is already incremented in the
                  //              native branch (_1018) and retains its native six-bit clamp.
                  _1119 = ((int)((int)(((int)((uint)((uint)min((uint)(63), (uint)((int)(_975) + (int)(1)))) << 10)) & 64512) | (int)(((int)min((uint)(63), (uint)(_1018))) & 63)) | (int)((int)((uint)(f32tof16(rr_ladder_stored_lum)) << 16)));
                  // RenoDX: <<< [Patch: ReservoirAgeMaskFix]
                }
              } else {
                _1114 = _633;  // [sem: expr_sat]
                _1115 = _620;
                _1116 = _622;
                _1117 = _624;
                _1118 = ((int)((int)(((int)((uint)((uint)((_421 * 511.0f) + 511.5f)) << 10)) & 1047552) | (int)(((int)((uint)((_419 * 511.0f) + 511.5f))) & 1023)) | (int)(((int)((uint)((uint)((_423 * 511.0f) + 511.5f)) << 20)) & 1072693248));
                _1119 = ((int)((int)((uint)(f32tof16(_628)) << 16)) | (int)(1025));
              }
            }
          }
        }
      } else {
        _885 = (int)(_635) + (int)(1);
        if ((uint)_885 < (uint)5) {
          _635 = _885;
          continue;
        } else {
          _1114 = _633;  // [sem: expr_sat]
          _1115 = _620;
          _1116 = _622;
          _1117 = _624;
          _1118 = ((int)((int)(((int)((uint)((uint)((_421 * 511.0f) + 511.5f)) << 10)) & 1047552) | (int)(((int)((uint)((_419 * 511.0f) + 511.5f))) & 1023)) | (int)(((int)((uint)((uint)((_423 * 511.0f) + 511.5f)) << 20)) & 1072693248));
          _1119 = ((int)((int)((uint)(f32tof16(_628)) << 16)) | (int)(1025));
        }
      }
      __3__38__0__1__g_diffuseGIReservoirHitGeometryUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = int4(asint(_1115), asint(_1116), asint(_1117), _1118);
      __3__38__0__1__g_diffuseGIReservoirRadianceUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = int2(_1119, asint(_1114));
      break;
    }
  }
}
