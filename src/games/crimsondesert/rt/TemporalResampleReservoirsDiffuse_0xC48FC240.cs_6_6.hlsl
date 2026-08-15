// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports "../shared.h" for the effective RenoDX option gates and injected constants used below; Imports "rr_ladder_common.hlsli" for the SPMIS reservoir-sampling and quality-ladder helpers used below.
#include "../shared.h"
#include "rr_ladder_common.hlsli"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
Texture2D<float4> __3__36__0__0__g_raytracingNormal : register(t159, space36);

Texture2D<float2> __3__36__0__0__g_velocity : register(t23, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t24, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormalPrev : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_normalDepth : register(t25, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t79, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaquePrev : register(t80, space36);

Texture2D<uint4> __3__36__0__0__g_diffuseGIReservoirHitGeometryPrev : register(t87, space36);

Texture2D<uint2> __3__36__0__0__g_diffuseGIReservoirRadiancePrev : register(t89, space36);

RWTexture2D<float4> __3__38__0__1__g_raytracingHitResultUAV : register(u43, space38);

RWTexture2D<float> __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV : register(u44, space38);

RWTexture2D<half4> __3__38__0__1__g_diffuseResultUAV : register(u12, space38);

RWTexture2D<uint4> __3__38__0__1__g_diffuseGIReservoirHitGeometryUAV : register(u15, space38);

RWTexture2D<uint2> __3__38__0__1__g_diffuseGIReservoirRadianceUAV : register(u17, space38);

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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b32, space35) {
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
  float _32;
  float _33;
  int _46;
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
  bool _290;
  float _331;
  float _332;
  int _563;
  int _643;
  int _644;
  int _645;
  float _646;
  float _647;
  float _648;
  float _649;
  float _650;
  float _651;
  float _652;
  float _653;
  float _654;
  float _655;
  float _656;
  float _657;
  float _658;
  float _659;
  int _686;
  int _687;
  int _702;
  int _703;
  int _897;
  int _898;
  float _899;
  float _900;
  float _901;
  float _902;
  float _903;
  float _904;
  float _905;
  float _906;
  float _907;
  float _908;
  float _909;
  float _910;
  float _911;
  float _912;
  bool _916;
  int _917;
  int _918;
  float _919;
  float _920;
  float _921;
  float _922;
  float _923;
  float _924;
  float _925;
  float _926;
  float _927;
  float _928;
  float _929;
  float _930;
  float _931;
  float _932;
  float _1025;
  float _1026;
  float _1027;
  float _1028;
  float _1029;
  float _1030;
  float _1031;
  float _1032;
  float _1033;
  float _1034;
  float _1035;
  float _1036;
  float _1037;
  int _1038;
  float _1039;
  bool _1040;
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
  float _206;
  float _207;
  float _208;
  float _210;
  float _211;
  float _212;
  float _213;
  float _222;
  float _224;
  float _225;
  float _261;
  float _262;
  float _263;
  float _264;
  float _267;
  float _318;
  float2 _325;
  bool _340;
  int _345;
  int _346;
  int _360;
  int _372;
  half _375;
  half _376;
  half _377;
  float _383;
  float _384;
  float _385;
  float _386;
  float _388;
  float _389;
  float _390;
  float _391;
  float4 _393;
  float _398;
  float _402;
  float _403;
  float _404;
  float _406;
  float _407;
  float _408;
  float _409;
  bool _415;
  float _419;
  float _420;
  float _421;
  bool _426;
  float _429;
  uint _438;
  uint _446;
  uint _454;
  uint _462;
  uint _470;
  uint _478;
  uint _486;
  uint _494;
  uint _502;
  uint _510;
  uint _518;
  uint _526;
  uint _534;
  uint _542;
  uint _550;
  uint _564;
  uint2 _566;
  float _586;
  float _587;
  float _588;
  float _590;
  float _600;
  float _603;
  float _604;
  float _620;
  float _621;
  float _622;
  float _623;
  float _624;
  float _625;
  float _626;
  float _627;
  float _630;
  float _632;
  bool _660;
  uint _664;
  int _666;
  int _669;
  int _672;
  int _692;
  int _694;
  float _704;
  float _705;
  uint _723;
  float _739;
  float _740;
  float _741;
  float _751;
  float _754;
  float _755;
  float _791;
  float _795;
  uint4 _807;
  uint2 _813;
  float _827;
  float _828;
  float _829;
  float _831;
  float _832;
  float _833;
  float _834;
  float _852;
  float _853;
  float _854;
  float _856;
  float _857;
  float _858;
  float _859;
  float _861;
  int _862;
  int _864;
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
  float _880;
  bool _881;
  int _913;
  float _940;
  float _941;
  float _942;
  float _943;
  float _944;
  float _945;
  float _946;
  float _947;
  float _948;
  float _952;
  float _954;
  float _958;
  float _959;
  float _960;
  float _966;
  float _972;
  float _977;
  float _978;
  float _979;
  float _981;
  float _988;
  float _989;
  float _1006;
  bool _1015;
  int _1017;
  float _1018;
  float _1041;
  float _1042;
  float _1043;
  float _1045;
  float _1052;
  float _1057;
  int __loop_jump_target = -1;
  _25 = (float)((uint)(SV_DispatchThreadID.x));
  _26 = (float)((uint)(SV_DispatchThreadID.y));
  _32 = _bufferSizeAndInvSize.z * (_25 + 0.5f);
  _33 = (_26 + 0.5f) * _bufferSizeAndInvSize.w;
  _46 = (((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524));
  _47 = (uint)((uint)(_46)) + (uint)((uint)((_bufferSizeAndInvSize.x * _26) + _25));
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
  _206 = min(1.0f, ((((float)((uint)((uint)(_190.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _207 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_190.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _208 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_190.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _210 = rsqrt(dot(float3(_206, _207, _208), float3(_206, _207, _208)));  // [sem: invLength]
  _211 = _210 * _206;
  _212 = _210 * _207;
  _213 = _210 * _208;
  if ((_187 < 1e-07f) || (_187 == 1.0f)) {
    __3__38__0__1__g_diffuseGIReservoirHitGeometryUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = int4(0, 0, 0, 0);
    __3__38__0__1__g_diffuseGIReservoirRadianceUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = int2(0, 0);
  } else {
    _222 = (_32 * 2.0f) + -1.0f;
    _224 = 1.0f - (_33 * 2.0f);
    _225 = max(1e-07f, _187);
    _261 = mad((_invViewProjRelative[3].z), _225, mad((_invViewProjRelative[3].y), _224, ((_invViewProjRelative[3].x) * _222))) + (_invViewProjRelative[3].w);
    _262 = (mad((_invViewProjRelative[0].z), _225, mad((_invViewProjRelative[0].y), _224, ((_invViewProjRelative[0].x) * _222))) + (_invViewProjRelative[0].w)) / _261;
    _263 = (mad((_invViewProjRelative[1].z), _225, mad((_invViewProjRelative[1].y), _224, ((_invViewProjRelative[1].x) * _222))) + (_invViewProjRelative[1].w)) / _261;
    _264 = (mad((_invViewProjRelative[2].z), _225, mad((_invViewProjRelative[2].y), _224, ((_invViewProjRelative[2].x) * _222))) + (_invViewProjRelative[2].w)) / _261;
    _267 = _nearFarProj.x / _225;
    if ((_184 & 128) == 0) {
      if ((uint)_188 > (uint)51) {
        if (!(((_184 & 125) == 105) || ((uint)_188 < (uint)68))) {
          _290 = (_188 == 98);
        } else {
          _290 = true;
        }
      } else {
        if ((uint)_188 > (uint)10) {
          if ((uint)_188 < (uint)20) {
            if ((_184 & 126) == 14) {
              _290 = (_188 == 98);
            } else {
              _290 = true;
            }
          } else {
            if (!((_184 & 125) == 105)) {
              _290 = (_188 == 98);
            } else {
              _290 = true;
            }
          }
        } else {
          _290 = (_188 == 98);
        }
      }
    } else {
      _290 = true;
    }
    _318 = mad((_projToPrevProj[3].z), _187, mad((_projToPrevProj[3].y), _224, ((_projToPrevProj[3].x) * _222))) + (_projToPrevProj[3].w);
    if (_290) {
      _325 = __3__36__0__0__g_velocity.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));  // [sem: _3__36__0__0__g_velocity_load]
      _331 = (_325.x * 2.0f);
      _332 = (_325.y * 2.0f);
    } else {
      _331 = (((mad((_projToPrevProj[0].z), _187, mad((_projToPrevProj[0].y), _224, ((_projToPrevProj[0].x) * _222))) + (_projToPrevProj[0].w)) / _318) - _222);
      _332 = (((mad((_projToPrevProj[1].z), _187, mad((_projToPrevProj[1].y), _224, ((_projToPrevProj[1].x) * _222))) + (_projToPrevProj[1].w)) / _318) - _224);
    }
    _340 = (_renderParams.x > 0.0f);
    _345 = (int)(floor(((_331 * 0.5f) + _32) * _bufferSizeAndInvSize.x));
    _346 = (int)(floor((_33 - (_332 * 0.5f)) * _bufferSizeAndInvSize.y));
    _360 = min((int)(max((int)(((int)((int)((((float)((uint)((uint)(((int)((uint)((uint)(_180)) * (uint)(48271))) & 16777215)))) * 5.3584574e-07f) + -4.0f)) + (int)((uint)(SV_DispatchThreadID.x) >> 1))), (int)(0))), (int)(((int)((int)(_bufferSizeAndInvSize.x * 0.5f)) + (int)(-1))));
    _372 = min((int)(max((int)(((int)((int)((((float)((uint)((uint)(((int)((uint)((uint)(_180)) * (uint)(-1964877855))) & 16777215)))) * 5.3584574e-07f) + -4.0f)) + (int)((uint)(SV_DispatchThreadID.y) >> 1))), (int)(0))), (int)(((int)((int)(_bufferSizeAndInvSize.y * 0.5f)) + (int)(-1))));
    _375 = __3__38__0__1__g_diffuseResultUAV[int2(_360, _372)].x;
    _376 = __3__38__0__1__g_diffuseResultUAV[int2(_360, _372)].y;
    _377 = __3__38__0__1__g_diffuseResultUAV[int2(_360, _372)].z;
    _383 = __3__38__0__1__g_raytracingHitResultUAV[int2(_360, _372)].x;
    _384 = __3__38__0__1__g_raytracingHitResultUAV[int2(_360, _372)].y;
    _385 = __3__38__0__1__g_raytracingHitResultUAV[int2(_360, _372)].z;
    _386 = __3__38__0__1__g_raytracingHitResultUAV[int2(_360, _372)].w;
    _388 = rsqrt(dot(float3(_383, _384, _385), float3(_383, _384, _385)));  // [sem: invLength]
    _389 = _388 * _383;
    _390 = _388 * _384;
    _391 = _388 * _385;
    _393 = __3__36__0__0__g_raytracingNormal.Load(int3(_360, _372, 0));  // [sem: _3__36__0__0__g_raytracingNormal_load]
    _398 = abs(_386);
    _402 = (_393.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _403 = (_393.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _404 = (_393.z * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _406 = rsqrt(dot(float3(_402, _403, _404), float3(_402, _403, _404)));  // [sem: invLength]
    _407 = _402 * _406;
    _408 = _403 * _406;
    _409 = _404 * _406;
    _415 = (_386 < 0.0f) ^ ((_409 == 0.0f) && ((_407 == 0.0f) && (_408 == 0.0f)));
    _419 = select(_415, _407, (-0.0f - _389));
    _420 = select(_415, _408, (-0.0f - _390));
    _421 = select(_415, _409, (-0.0f - _391));
    _426 = ((uint)((int)(_188) + (int)(-52)) < (uint)16);
    _429 = max(0.1f, (_267 * select(_426, 0.02f, 0.1f)));
    _438 = (uint)((uint)((((int)((uint)((uint)((uint)(_46)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_46)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_46)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
    _446 = (uint)((uint)((((int)((uint)((uint)((uint)(_438)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_438)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_438)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_46));
    _454 = (uint)((uint)((((int)((uint)((uint)((uint)(_446)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_446)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_446)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_438));
    _462 = (uint)((uint)((((int)((uint)((uint)((uint)(_454)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_454)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_454)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_446));
    _470 = (uint)((uint)((((int)((uint)((uint)((uint)(_462)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_462)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_462)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_454));
    _478 = (uint)((uint)((((int)((uint)((uint)((uint)(_470)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_470)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_470)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_462));
    _486 = (uint)((uint)((((int)((uint)((uint)((uint)(_478)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_478)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_478)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_470));
    _494 = (uint)((uint)((((int)((uint)((uint)((uint)(_486)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_486)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_486)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_478));
    _502 = (uint)((uint)((((int)((uint)((uint)((uint)(_494)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_494)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_494)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_486));
    _510 = (uint)((uint)((((int)((uint)((uint)((uint)(_502)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_502)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_502)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_494));
    _518 = (uint)((uint)((((int)((uint)((uint)((uint)(_510)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_510)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_510)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_502));
    _526 = (uint)((uint)((((int)((uint)((uint)((uint)(_518)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_518)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_518)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_510));
    _534 = (uint)((uint)((((int)((uint)((uint)((uint)(_526)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_526)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_526)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_518));
    _542 = (uint)((uint)((((int)((uint)((uint)((uint)(_534)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_534)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_534)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_526));
    _550 = (uint)((uint)((((int)((uint)((uint)((uint)(_542)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_542)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_542)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_534));
    if ((_542 & 16777215) == 0) {
      _563 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_550)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_550)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_550)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_542))));
    } else {
      _563 = _542;
    }
    _564 = (uint)((uint)(_563)) * (uint)(48271);
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
    _566 = __3__36__0__0__g_normalDepth.Load(int3(_360, _372, 0));  // [sem: _3__36__0__0__g_normalDepth_load]
    _586 = min(1.0f, ((((float)((uint)((uint)(_566.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
    _587 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_566.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
    _588 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_566.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
    _590 = rsqrt(dot(float3(_586, _587, _588), float3(_586, _587, _588)));  // [sem: invLength]
    _600 = ((_bufferSizeAndInvSize.z * 4.0f) * (((float)((int)(_360))) + 0.5f)) + -1.0f;
    _603 = 1.0f - ((_bufferSizeAndInvSize.w * 4.0f) * (((float)((int)(_372))) + 0.5f));
    _604 = max(1e-07f, (((float)((uint)((uint)(_566.y & 16777215)))) * 5.960465e-08f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
    _620 = mad((_invViewProjRelative[3].z), _604, mad((_invViewProjRelative[3].y), _603, (_600 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
    _621 = (mad((_invViewProjRelative[0].z), _604, mad((_invViewProjRelative[0].y), _603, (_600 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _620;
    _622 = (mad((_invViewProjRelative[1].z), _604, mad((_invViewProjRelative[1].y), _603, (_600 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _620;
    _623 = (mad((_invViewProjRelative[2].z), _604, mad((_invViewProjRelative[2].y), _603, (_600 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _620;
    _624 = _621 + (_398 * _389);
    _625 = _622 + (_398 * _390);
    _626 = _623 + (_398 * _391);
    _627 = dot(float3(float(_375), float(_376), float(_377)), float3(0.212671f, 0.71516f, 0.072169f));
    _630 = __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV[int2(_360, _372)];
    _632 = saturate(_630 * 2.0f);  // [sem: expr_sat]
    _643 = 0;
    _644 = 0;
    _645 = 1;
    _646 = 1.0f;
    _647 = 0.0f;
    _648 = 0.0f;
    _649 = 0.0f;
    _650 = 0.0f;
    _651 = 0.0f;
    _652 = 0.0f;
    _653 = 0.0f;
    _654 = 0.0f;
    _655 = 0.0f;
    _656 = 0.0f;
    _657 = 0.0f;
    _658 = 0.0f;
    _659 = 0.0f;
    while(true) {
      _660 = (_643 == 4);
      if (!_660) {
        if (!(_643 == 0)) {
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
            _664 = _643 + ((rr_ladder_keys.x >> 20) & 7u);
          } else {
            _664 = (uint)((uint)(_643)) + (uint)((uint)(((float)((uint)((uint)(((int)((uint)((uint)(_180)) * (uint)(-856141137))) & 16777215)))) * 4.762411e-07f));
          }
          // RenoDX: <<< [Patch: SPMISDecorrelation]
          _666 = ((uint)((uint)(_664)) >> 1) & 1;
          _669 = (((uint)((uint)(_664)) >> 2) & 1) ^ 1;
          _672 = (int)(((int)((uint)((uint)(_664)) << 1)) & 2) + (int)(-1);
          _686 = ((int)((uint)((uint)(_672 & ((int)(0) - (int)((int)(_669) | (int)(_666))))) + (uint)((uint)(_345))));
          _687 = ((int)((uint)((uint)(((int)((int)(1) - (int)((int)(_666) << 1)) * (int)(_672)) & ((int)(0) - (int)((int)(_669) | (int)(_666 ^ 1))))) + (uint)((uint)(_346))));
        } else {
          _686 = _345;
          _687 = _346;
        }
      } else {
        _686 = (int)(SV_DispatchThreadID.x);
        _687 = (int)(SV_DispatchThreadID.y);
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
        const uint rr_ladder_tap_key = (_643 == 0) ? rr_ladder_tap_keys.x : ((_643 == 4) ? rr_ladder_tap_keys.z : rr_ladder_tap_keys.y);
        const int2 rr_ladder_permuted = RRLadder_Xor3Permute(int2(_686, _687), rr_ladder_tap_key);
        _702 = rr_ladder_permuted.x;
        _703 = rr_ladder_permuted.y;
      } else if (_340 && ((_643 & -5) == 0)) {
        _692 = _564 & 3;
        _694 = ((uint)((uint)(_564)) >> 2) & 3;
        _702 = ((int)((uint)((uint)(((int)((uint)((uint)(_686)) + (uint)((uint)(_692)))) ^ 3)) - (uint)((uint)(_692))));
        _703 = ((int)((uint)((uint)(((int)((uint)((uint)(_687)) + (uint)((uint)(_694)))) ^ 3)) - (uint)((uint)(_694))));
      } else {
        _702 = _686;
        _703 = _687;
      }
      // RenoDX: <<< [Patch: SPMISDecorrelation]
      _704 = (float)((int)(_702));
      _705 = (float)((int)(_703));
      bool __branch_chain_701;
      if ((((int)_702 < (int)0) || (_704 > (_bufferSizeAndInvSize.x + -1.0f))) || (((int)_703 < (int)0) || (_705 > (_bufferSizeAndInvSize.y + -1.0f)))) {
        _897 = _644;
        _898 = _645;
        _899 = _646;
        _900 = _647;
        _901 = _648;
        _902 = _649;
        _903 = _650;
        _904 = _651;
        _905 = _652;
        _906 = _653;
        _907 = _654;
        _908 = _655;
        _909 = _656;
        _910 = _657;
        _911 = _658;
        _912 = _659;
        __branch_chain_701 = true;
      } else {
        _723 = __3__36__0__0__g_sceneNormalPrev.Load(int3(_702, _703, 0));  // [sem: _3__36__0__0__g_sceneNormalPrev_load]
        _739 = min(1.0f, ((((float)((uint)((uint)(_723.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_load_derived]
        _740 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_723.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_load_derived]
        _741 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_723.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_load_derived]
        _751 = (((_704 + 0.5f) * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f;
        _754 = 1.0f - (((_705 + 0.5f) * 2.0f) * _bufferSizeAndInvSize.w);
        _755 = max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaquePrev.Load(int3(_702, _703, 0)))).x) & 16777215)))) * 5.960465e-08f));
        _791 = mad((_invViewProjRelativePrev[3].z), _755, mad((_invViewProjRelativePrev[3].y), _754, (_751 * (_invViewProjRelativePrev[3].x)))) + (_invViewProjRelativePrev[3].w);
        _795 = rsqrt(dot(float3(_739, _740, _741), float3(_739, _740, _741))) * 511.0f;
        _807 = __3__36__0__0__g_diffuseGIReservoirHitGeometryPrev.Load(int3(_702, _703, 0));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometryPrev_load]
        _813 = __3__36__0__0__g_diffuseGIReservoirRadiancePrev.Load(int3(_702, _703, 0));  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiancePrev_load]
        _827 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_795 * _739) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
        _828 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_795 * _740) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
        _829 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_795 * _741) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
        _831 = rsqrt(dot(float3(_827, _828, _829), float3(_827, _828, _829)));  // [sem: invLength]
        _832 = _831 * _827;
        _833 = _831 * _828;
        _834 = _831 * _829;
        _852 = min(1.0f, ((((float)((uint)((uint)(_807.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometryPrev_load_derived]
        _853 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_807.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometryPrev_load_derived]
        _854 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_807.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometryPrev_load_derived]
        _856 = rsqrt(dot(float3(_852, _853, _854), float3(_852, _853, _854)));  // [sem: invLength]
        _857 = _856 * _852;
        _858 = _856 * _853;
        _859 = _856 * _854;
        _861 = f16tof32(((uint)((uint)((uint)(_813.x)) >> 16)));  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiancePrev_load_derived]
        _862 = _813.x & 1023;  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiancePrev_load_derived]
        _864 = ((uint)((uint)(_813.x)) >> 10) & 63;  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiancePrev_load_derived]
        _865 = asfloat(_813.y);  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiancePrev_load_derived]
        _866 = ((mad((_invViewProjRelativePrev[0].z), _755, mad((_invViewProjRelativePrev[0].y), _754, (_751 * (_invViewProjRelativePrev[0].x)))) + (_invViewProjRelativePrev[0].w)) / _791) - _diffViewPosAccurate.x;
        _867 = ((mad((_invViewProjRelativePrev[1].z), _755, mad((_invViewProjRelativePrev[1].y), _754, (_751 * (_invViewProjRelativePrev[1].x)))) + (_invViewProjRelativePrev[1].w)) / _791) - _diffViewPosAccurate.y;
        _868 = ((mad((_invViewProjRelativePrev[2].z), _755, mad((_invViewProjRelativePrev[2].y), _754, (_751 * (_invViewProjRelativePrev[2].x)))) + (_invViewProjRelativePrev[2].w)) / _791) - _diffViewPosAccurate.z;
        _869 = asfloat(_807.x) - _diffViewPosAccurate.x;  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometryPrev_load_derived]
        _870 = asfloat(_807.y) - _diffViewPosAccurate.y;  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometryPrev_load_derived]
        _871 = asfloat(_807.z) - _diffViewPosAccurate.z;  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometryPrev_load_derived]
        _872 = _866 - _262;
        _873 = _867 - _263;
        _874 = _868 - _264;
        _880 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_866, _867, _868));
        _881 = !_660;
        if ((dot(float3(_872, _873, _874), float3(_872, _873, _874)) > (_429 * _429)) && _881) {
          _897 = _864;
          _898 = _862;
          _899 = _865;
          _900 = _861;
          _901 = _857;
          _902 = _858;
          _903 = _859;
          _904 = _869;
          _905 = _870;
          _906 = _871;
          _907 = _832;
          _908 = _833;
          _909 = _834;
          _910 = _866;
          _911 = _867;
          _912 = _868;
          __branch_chain_701 = true;
        } else {
          if (((_880 <= 0.2f) || (abs(_880 - _267) >= max(0.5f, (_267 * 0.02f)))) || ((dot(float3(_832, _833, _834), float3(_211, _212, _213)) <= 0.0f) && _881)) {
            _897 = _864;
            _898 = _862;
            _899 = _865;
            _900 = _861;
            _901 = _857;
            _902 = _858;
            _903 = _859;
            _904 = _869;
            _905 = _870;
            _906 = _871;
            _907 = _832;
            _908 = _833;
            _909 = _834;
            _910 = _866;
            _911 = _867;
            _912 = _868;
            __branch_chain_701 = true;
          } else {
            _916 = true;
            _917 = _864;
            _918 = _862;
            _919 = _865;
            _920 = _861;
            _921 = _857;
            _922 = _858;
            _923 = _859;
            _924 = _869;
            _925 = _870;
            _926 = _871;
            _927 = _832;
            _928 = _833;
            _929 = _834;
            _930 = _866;
            _931 = _867;
            _932 = _868;
            __branch_chain_701 = false;
          }
        }
      }
      if (__branch_chain_701) {
        _913 = (int)(_643) + (int)(1);
        if ((uint)_913 < (uint)5) {
          _643 = _913;
          _644 = _897;
          _645 = _898;
          _646 = _899;
          _647 = _900;
          _648 = _901;
          _649 = _902;
          _650 = _903;
          _651 = _904;
          _652 = _905;
          _653 = _906;
          _654 = _907;
          _655 = _908;
          _656 = _909;
          _657 = _910;
          _658 = _911;
          _659 = _912;
          continue;
        } else {
          _916 = false;
          _917 = _897;
          _918 = _898;
          _919 = _899;
          _920 = _900;
          _921 = _901;
          _922 = _902;
          _923 = _903;
          _924 = _904;
          _925 = _905;
          _926 = _906;
          _927 = _907;
          _928 = _908;
          _929 = _909;
          _930 = _910;
          _931 = _911;
          _932 = _912;
        }
      }
      if (_916) {
        _940 = _924 - _930;
        _941 = _925 - _931;
        _942 = _926 - _932;
        _943 = _924 - _262;
        _944 = _925 - _263;
        _945 = _926 - _264;
        _946 = dot(float3(_943, _944, _945), float3(_943, _944, _945));
        _947 = dot(float3(_940, _941, _942), float3(_940, _941, _942));
        _948 = rsqrt(_947);  // [sem: rsqrt_val]
        _952 = rsqrt(_946);  // [sem: rsqrt_val]
        _954 = _946 * dot(float3((_948 * _940), (_948 * _941), (_948 * _942)), float3(_921, _922, _923));
        if (!(_954 >= -0.0f)) {
          _958 = _952 * _943;
          _959 = _952 * _944;
          _960 = _952 * _945;
          _966 = min(max(((-0.0f - (_947 * dot(float3(_958, _959, _960), float3(_921, _922, _923)))) / (-0.0f - _954)), 0.0f), 1.0f);
          if (_966 == 0.0f) {
            _1114 = _632;  // [sem: expr_sat]
            _1115 = _624;
            _1116 = _625;
            _1117 = _626;
            _1118 = ((int)((int)(((int)((uint)((uint)((_420 * 511.0f) + 511.5f)) << 10)) & 1047552) | (int)(((int)((uint)((_419 * 511.0f) + 511.5f))) & 1023)) | (int)(((int)((uint)((uint)((_421 * 511.0f) + 511.5f)) << 20)) & 1072693248));
            _1119 = ((int)((int)((uint)(f32tof16(_627)) << 16)) | (int)(1025));
          } else {
            _972 = (_920 * 0.31830987f) * max(0.1f, dot(float3(_211, _212, _213), float3(_958, _959, _960)));
            _977 = _624 - _262;
            _978 = _625 - _263;
            _979 = _626 - _264;
            _981 = rsqrt(dot(float3(_977, _978, _979), float3(_977, _978, _979)));  // [sem: invLength]
            _988 = (_627 * 0.31830987f) * max(0.1f, dot(float3(_211, _212, _213), float3((_981 * _977), (_981 * _978), (_981 * _979))));
            _989 = _988 * _632;
            _1006 = select((_426 || (_renderParams.y > 0.0f)), 32.0f, (256.0f - (saturate(_exposure3.w * 10.0f) * 192.0f)));
            _1015 = ((((float)((uint)((uint)(((int)((uint)((uint)(_180)) * (uint)(-556260145))) & 16777215)))) * 5.9604645e-08f) < (1.0f / _1006)) || (((float)((uint)((uint)(_917)))) > _1006);
            _1017 = select(_1015, 0, _918);
            _1018 = select(_1015, 0.0f, (((((float)((uint)((uint)(_918)))) * _919) * _966) * _972)) + _989;
            if (!((((((float)((uint)((uint)(((int)((uint)((uint)(_180)) * (uint)(-613502015))) & 16777215)))) * 5.9604645e-08f) * select(_340, 1.0f, (1.0f - saturate((_environmentLightingHistory[1].w) + _temporalReprojectionParams.w)))) * _1018) <= _989)) {
              _1025 = _930;
              _1026 = _931;
              _1027 = _932;
              _1028 = _927;
              _1029 = _928;
              _1030 = _929;
              _1031 = _924;
              _1032 = _925;
              _1033 = _926;
              _1034 = _921;
              _1035 = _922;
              _1036 = _923;
              _1037 = select(_1015, 0.0f, _920);
              _1038 = _917;
              _1039 = _972;
              _1040 = false;
            } else {
              _1025 = _621;
              _1026 = _622;
              _1027 = _623;
              _1028 = (_590 * _586);
              _1029 = (_590 * _587);
              _1030 = (_590 * _588);
              _1031 = _624;
              _1032 = _625;
              _1033 = _626;
              _1034 = _419;
              _1035 = _420;
              _1036 = _421;
              _1037 = _627;
              _1038 = 0;
              _1039 = _988;
              _1040 = true;
            }
            _1041 = _1031 - _1025;
            _1042 = _1032 - _1026;
            _1043 = _1033 - _1027;
            _1045 = rsqrt(dot(float3(_1041, _1042, _1043), float3(_1041, _1042, _1043)));  // [sem: invLength]
            _1052 = (_1037 * 0.31830987f) * max(0.1f, dot(float3(_1028, _1029, _1030), float3((_1045 * _1041), (_1045 * _1042), (_1045 * _1043))));
            _1057 = ((_1052 * ((float)((uint)((uint)(_1017))))) + _1039) * _1039;
            _1114 = saturate(select((_1057 == 0.0f), 0.0f, ((select(_1040, _1039, _1052) * _1018) / _1057)));  // [sem: expr_sat]
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
              if ((!_1015) && ((uint)(_918) >= 4u)) {
                const float rr_fid_t_raw = select((_1057 == 0.0f), 0.0f, ((select(_1040, _1039, _1052) * _1018) / _1057));
                const float rr_fid_t_conf = min((float((uint)_1017)), (float((uint)max(_1038, 0))));
                _1114 = RRLadder_SoftKneeW(rr_fid_t_raw, RRFID_KNEE_KMAX_TEMPORAL * RRLadder_ConfidenceRamp(rr_fid_t_conf));
              }
            }
            #endif
            // RenoDX: <<< [Patch: RRLadderFidelity]
            _1115 = _1031;
            _1116 = _1032;
            _1117 = _1033;
            _1118 = ((int)((int)(((int)((uint)((uint)((_1035 * 511.0f) + 511.5f)) << 10)) & 1047552) | (int)(((int)((uint)((_1034 * 511.0f) + 511.5f))) & 1023)) | (int)(((int)((uint)((uint)((_1036 * 511.0f) + 511.5f)) << 20)) & 1072693248));
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
            float rr_ladder_stored_lum = _exposure4.y * _1037;
            bool rr_ladder_lum_clamp_armed = rr_ladder_decorrelate;
            #if RRFID_TEMPORAL_KNEE
            // The optional temporal knee above de-clamps the stored reservoir weight on every active
            // quality tier. The lowest tier is already covered by rr_ladder_decorrelate, so this OR
            // is redundant under the current gate; it is kept as a defensive no-op (the whole block
            // is compiled out by default) so that narrowing the decorrelation gate can never leave a
            // de-clamped stored weight paired with an unclamped stored luminance.
            rr_ladder_lum_clamp_armed = rr_ladder_lum_clamp_armed || (RR_ENABLED == 1.f && RT_QUALITY == 1.f);
            #endif
            if (rr_ladder_lum_clamp_armed && (!_1015) && ((uint)(_918) >= 4u)) {
              rr_ladder_stored_lum = RRLadder_FireflyClampScalar(rr_ladder_stored_lum, _920, 8.0f);
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
            _1119 = ((int)((int)(((int)((uint)((uint)min((uint)(63), (uint)((int)(_1017) + (int)(1)))) << 10)) & 64512) | (int)(((int)min((uint)(63), (uint)(((int)((uint)((uint)(_1038)) + (uint)(1)))))) & 63)) | (int)((int)((uint)(f32tof16(rr_ladder_stored_lum)) << 16)));
            // RenoDX: <<< [Patch: ReservoirAgeMaskFix]
          }
        } else {
          _1114 = _632;  // [sem: expr_sat]
          _1115 = _624;
          _1116 = _625;
          _1117 = _626;
          _1118 = ((int)((int)(((int)((uint)((uint)((_420 * 511.0f) + 511.5f)) << 10)) & 1047552) | (int)(((int)((uint)((_419 * 511.0f) + 511.5f))) & 1023)) | (int)(((int)((uint)((uint)((_421 * 511.0f) + 511.5f)) << 20)) & 1072693248));
          _1119 = ((int)((int)((uint)(f32tof16(_627)) << 16)) | (int)(1025));
        }
      } else {
        _1114 = _632;  // [sem: expr_sat]
        _1115 = _624;
        _1116 = _625;
        _1117 = _626;
        _1118 = ((int)((int)(((int)((uint)((uint)((_420 * 511.0f) + 511.5f)) << 10)) & 1047552) | (int)(((int)((uint)((_419 * 511.0f) + 511.5f))) & 1023)) | (int)(((int)((uint)((uint)((_421 * 511.0f) + 511.5f)) << 20)) & 1072693248));
        _1119 = ((int)((int)((uint)(f32tof16(_627)) << 16)) | (int)(1025));
      }
      __3__38__0__1__g_diffuseGIReservoirHitGeometryUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = int4(asint(_1115), asint(_1116), asint(_1117), _1118);
      __3__38__0__1__g_diffuseGIReservoirRadianceUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = int2(_1119, asint(_1114));
      break;
    }
  }
}
