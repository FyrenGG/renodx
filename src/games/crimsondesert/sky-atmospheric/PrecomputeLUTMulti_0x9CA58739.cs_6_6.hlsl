// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the exact shared spectral and/or Dawn/Dusk helpers required by this shader's owned patch families.
#include "sky_spectral_common.hlsli"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
Texture3D<float4> __3__36__0__0__g_texPrecomputedLUTMultiGather : register(t66, space36);

RWTexture3D<float4> __3__48__0__1__g_texPrecomputedLUTMultiUAV : register(u2, space48);

RWTexture3D<float4> __3__48__0__1__g_texPrecomputedLUTMultiTempUAV : register(u3, space48);

RWTexture3D<float4> __3__48__0__1__g_texPrecomputedLUTMultiMieUAV : register(u6, space48);

RWTexture3D<float4> __3__48__0__1__g_texPrecomputedLUTMultiTempMieUAV : register(u7, space48);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b2, space35) {
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

cbuffer __3__35__0__0__AtmosphereConstantBuffer : register(b14, space35) {
  float _sunLightIntensity : packoffset(c000.x);
  float _sunLightPreset : packoffset(c000.y);
  float _sunSizeAngle : packoffset(c000.z);
  float _sunSizeAngleCosine : packoffset(c000.w);
  float _sunDirY : packoffset(c001.x);
  float _moonLightIntensity : packoffset(c001.y);
  float _moonLightPreset : packoffset(c001.z);
  float _moonSizeAngle : packoffset(c001.w);
  float _moonSizeAngleCosine : packoffset(c002.x);
  float _moonDirY : packoffset(c002.y);
  float _earthAxisTilt : packoffset(c002.z);
  float _latitude : packoffset(c002.w);
  float _atmosphereSeaBaseline : packoffset(c003.x);
  float _atmosphereThickness : packoffset(c003.y);
  float _rayleighScaledHeight : packoffset(c003.z);
  uint _rayleighScatteringColor : packoffset(c003.w);
  float _mieScaledHeight : packoffset(c004.x);
  float _mieAerosolDensity : packoffset(c004.y);
  float _mieAerosolAbsorption : packoffset(c004.z);
  float _miePhaseConst : packoffset(c004.w);
  float _ozoneRatio : packoffset(c005.x);
  float _directionalLightLuminanceScale : packoffset(c005.y);
  float _distanceScale : packoffset(c005.z);
  float _heightFogDensity : packoffset(c005.w);
  float _heightFogBaseline : packoffset(c006.x);
  float _heightFogFalloff : packoffset(c006.y);
  float _heightFogScale : packoffset(c006.z);
  float _cloudBaseDensity : packoffset(c006.w);
  float _cloudBaseContrast : packoffset(c007.x);
  float _cloudBaseScale : packoffset(c007.y);
  float _cloudAlpha : packoffset(c007.z);
  float _cloudScrollMultiplier : packoffset(c007.w);
  float _cloudScatteringCoefficient : packoffset(c008.x);
  float _cloudPhaseConstFront : packoffset(c008.y);
  float _cloudPhaseConstBack : packoffset(c008.z);
  float _cloudAltitude : packoffset(c008.w);
  float _cloudThickness : packoffset(c009.x);
  float _cloudVisibleRange : packoffset(c009.y);
  float _cloudNear : packoffset(c009.z);
  float _cloudFadeRange : packoffset(c009.w);
  float _cloudDetailRatio : packoffset(c010.x);
  float _cloudDetailScale : packoffset(c010.y);
  float _cloudMultiRatio : packoffset(c010.z);
  float _cloudBeerPowderRatio : packoffset(c010.w);
  float _cloudCirrusAltitude : packoffset(c011.x);
  float _cloudCirrusDensity : packoffset(c011.y);
  float _cloudCirrusScale : packoffset(c011.z);
  float _cloudCirrusWeightR : packoffset(c011.w);
  float _cloudCirrusWeightG : packoffset(c012.x);
  float _cloudCirrusWeightB : packoffset(c012.y);
  float _cloudFlow : packoffset(c012.z);
  float _cloudSeed : packoffset(c012.w);
  float4 _volumeFogScatterColor : packoffset(c013.x);
  float4 _mieScatterColor : packoffset(c014.x);
};

cbuffer __3__1__0__0__GlobalPushConstants : register(b0, space1) {
  float4 _renderFlags : packoffset(c000.x);
  float4 _skyColor : packoffset(c001.x);
  float4 _volumeSize : packoffset(c002.x);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

[numthreads(4, 4, 4)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  uint _25;
  float _27;
  float _33;
  float _36;
  float _39;
  float _40;
  float _43;
  float _49;
  float _76;
  float _134;
  float _193;
  float _221;
  float _222;
  float _223;
  float _224;
  float _225;
  float _226;
  int _227;
  float _228;
  float _229;
  float _230;
  float _231;
  float _232;
  float _233;
  float _234;
  float _235;
  float _236;
  float _237;
  float _325;
  float _404;
  float _405;
  float _406;
  float _407;
  float _408;
  float _409;
  float _78;
  float _91;
  float _95;
  float _99;
  float _100;
  float _101;
  float _102;
  float _104;
  float _105;
  float _106;
  float _107;
  float _111;
  float _116;
  float _117;
  float _123;
  float _129;
  float _135;
  float _136;
  float _137;
  float _138;
  float _142;
  float _143;
  float _144;
  float _146;
  float _147;
  float _149;
  float _150;
  float _154;
  float _159;
  float _160;
  float _163;
  float _164;
  float _170;
  float4 _210;
  float _239;
  float _240;
  float _242;
  float _246;
  float _247;
  float _248;
  float _252;
  float _253;
  float _258;
  float _263;
  float _264;
  float _267;
  float _270;
  float _276;
  float _280;
  float _283;
  float _285;
  float _289;
  float _290;
  float _294;
  float _295;
  float _302;
  float4 _343;
  float _355;
  float _356;
  float _363;
  float _364;
  float _371;
  float _372;
  float _373;
  float _374;
  float _375;
  float _378;
  float _381;
  float _384;
  float _387;
  float _390;
  float _393;
  int _394;
  float _412;
  float _413;
  float _414;
  float _415;
  float _422;
  float _423;
  float _424;
  float _425;
  int __loop_jump_target = -1;
  _25 = (uint)(((_volumeSize.y * _volumeSize.w) * _renderFlags.x) + ((float)((uint)(SV_DispatchThreadID.y))));
  _27 = ((float)((uint)((uint)(_25)))) / _volumeSize.y;
  _33 = saturate(((((float)((uint)(SV_DispatchThreadID.x))) / _volumeSize.x) * 1.032258f) + -0.016129032f);  // [sem: expr_sat]
  _36 = _atmosphereThickness + -32.0f;
  _39 = ((_33 * _33) * _36) + 16.0f;
  _40 = max(_39, 0.0f);
  _43 = _earthRadius * 2.0f;
  _49 = (-0.0f - sqrt((_43 + _40) * _40)) / (_earthRadius + _40);
  if (_27 > 0.5f) {
    _76 = max(((exp2(log2(saturate((_27 + -0.50390625f) * 2.0317461f)) * 5.0f) * (1.0f - _49)) + _49), (_49 + 0.0001f));
  } else {
    _76 = min((_49 - (exp2(log2(saturate((_27 + -0.00390625f) * 2.0317461f)) * 5.0f) * (_49 + 1.0f))), (_49 + -0.0001f));
  }
  _78 = min(max(_76, -1.0f), 1.0f);
  _91 = min(max((-0.2857143f - (log2(1.0f - (saturate(((((float)((uint)(SV_DispatchThreadID.z))) / _volumeSize.z) * 1.032258f) + -0.016129032f) * 0.9726763f)) * 0.24755257f)), -1.0f), 1.0f);
  _95 = sqrt(saturate(1.0f - (_78 * _78)));
  _99 = sqrt(saturate(1.0f - (_91 * _91)));
  _100 = _earthRadius + _atmosphereThickness;
  _101 = _39 + _earthRadius;
  _102 = dot(float3(_95, _78, 0.0f), float3(_95, _78, 0.0f));
  _104 = dot(float3(0.0f, _101, 0.0f), float3(_95, _78, 0.0f)) * 2.0f;
  _105 = dot(float3(0.0f, _101, 0.0f), float3(0.0f, _101, 0.0f));
  _106 = _104 * _104;
  _107 = _102 * 4.0f;
  _111 = _106 - ((_105 - (_100 * _100)) * _107);
  if (!(_111 < 0.0f)) {
    _116 = _102 * 2.0f;
    _117 = (sqrt(_111) - _104) / _116;
    if (!(_117 < 0.0f)) {
      _123 = _106 - ((_105 - (_earthRadius * _earthRadius)) * _107);
      if (!(_123 < 0.0f)) {
        _129 = ((-0.0f - _104) - sqrt(_123)) / _116;
        if (_129 > 0.0f) {
          _134 = min(_117, _129);
        } else {
          _134 = _117;
        }
      } else {
        _134 = _117;
      }
      _135 = _134 * _95;
      _136 = _134 * _78;
      _137 = _135 * 0.0078125f;
      _138 = _136 * 0.0078125f;
      _142 = sqrt((_137 * _137) + (_138 * _138));
      _143 = _137 / _142;
      _144 = _138 / _142;
      _146 = sqrt(_101 * _101);
      _147 = _101 / _146;
      _149 = max((_146 - _earthRadius), 0.01f);
      _150 = -0.0f - _149;
      _154 = exp2((_150 / _rayleighScaledHeight) * 1.442695f);
      _159 = exp2((_150 / _mieScaledHeight) * 1.442695f);
      _160 = dot(float3(0.0f, _147, 0.0f), float3(_143, _144, 0.0f));
      _163 = min(max(_149, 16.0f), (_atmosphereThickness + -16.0f));
      _164 = max(_163, 0.0f);
      _170 = (-0.0f - sqrt((_164 + _43) * _164)) / (_164 + _earthRadius);
      if (_160 > _170) {
        _193 = ((exp2(log2(saturate((_160 - _170) / (1.0f - _170))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _193 = ((exp2(log2(saturate((_170 - _160) / (_170 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGather_sampleLod]
      _210 = __3__36__0__0__g_texPrecomputedLUTMultiGather.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(((exp2(log2(saturate((_163 + -16.0f) / _36)) * 0.5f) * 0.96875f) + 0.015625f), _193, ((1.0f - exp2(-1.1541561f - (dot(float3(0.0f, _147, 0.0f), float3(_99, _91, 0.0f)) * 4.039546f))) * 1.0280913f)), 0.0f);
      _221 = 0.0f;
      _222 = 0.0f;
      _223 = 0.0f;
      _224 = 0.0f;
      _225 = 0.0f;
      _226 = 0.0f;
      _227 = 1;
      _228 = (_210.z * _159);
      _229 = (_210.y * _159);
      _230 = (_210.x * _159);
      _231 = (_210.z * _154);
      _232 = (_210.y * _154);
      _233 = (_210.x * _154);
      _234 = _159;
      _235 = _154;
      _236 = 0.0f;
      _237 = 0.0f;
      while(true) {
        _239 = ((float)((int)(_227))) * 0.0078125f;
        _240 = _239 * _135;
        _242 = (_239 * _136) + _101;
        _246 = sqrt((_242 * _242) + (_240 * _240));
        _247 = _240 / _246;
        _248 = _242 / _246;
        _252 = max((_246 - _earthRadius), 0.01f);
        _253 = -0.0f - _252;
        _258 = exp2((_253 / _rayleighScaledHeight) * 1.442695f);
        _263 = exp2((_253 / _mieScaledHeight) * 1.442695f);
        _264 = _142 * 0.5f;
        _267 = ((_258 + _235) * _264) + _236;
        _270 = ((_263 + _234) * _264) + _237;
        _276 = ((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f;
        _280 = ((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f;
        _283 = ((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f;
        _285 = _mieAerosolDensity * 2e-05f;
        _289 = ((_mieAerosolAbsorption + 1.0f) * _285) * _270;
        _290 = dot(float3(_247, _248, 0.0f), float3(_143, _144, 0.0f));
        _294 = min(max(_252, 16.0f), (_atmosphereThickness + -16.0f));
        _295 = max(_294, 0.0f);
        _302 = (-0.0f - sqrt((_295 + (_earthRadius * 2.0f)) * _295)) / (_295 + _earthRadius);
        if (_290 > _302) {
          _325 = ((exp2(log2(saturate((_290 - _302) / (1.0f - _302))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _325 = ((exp2(log2(saturate((_302 - _290) / (_302 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGather_sampleLod]
        _343 = __3__36__0__0__g_texPrecomputedLUTMultiGather.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(((exp2(log2(saturate((_294 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _325, ((1.0f - exp2(-1.1541561f - (dot(float3(_247, _248, 0.0f), float3(_99, _91, 0.0f)) * 4.039546f))) * 1.0280913f)), 0.0f);
        // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
        // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
        _355 = exp2(((((_ozoneRatio * SKY_OZONE_1) + _276) * _267) + _289) * -1.442695f) * _343.x;
        // RenoDX: <<< [Patch: SkySpectralOzone]
        _356 = _355 * _258;
        // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
        // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
        _363 = exp2(((((_ozoneRatio * SKY_OZONE_2) + _280) * _267) + _289) * -1.442695f) * _343.y;
        // RenoDX: <<< [Patch: SkySpectralOzone]
        _364 = _363 * _258;
        // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
        // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
        _371 = exp2(((((_ozoneRatio * SKY_OZONE_3) + _283) * _267) + _289) * -1.442695f) * _343.z;
        // RenoDX: <<< [Patch: SkySpectralOzone]
        _372 = _371 * _258;
        _373 = _355 * _263;
        _374 = _363 * _263;
        _375 = _371 * _263;
        _378 = ((_356 + _233) * _264) + _223;
        _381 = ((_364 + _232) * _264) + _222;
        _384 = ((_372 + _231) * _264) + _221;
        _387 = ((_373 + _230) * _264) + _226;
        _390 = ((_374 + _229) * _264) + _225;
        _393 = ((_375 + _228) * _264) + _224;
        _394 = (int)(_227) + (int)(1);
        if (!(_394 == 129)) {
          _221 = _384;
          _222 = _381;
          _223 = _378;
          _224 = _393;
          _225 = _390;
          _226 = _387;
          _227 = _394;
          _228 = _375;
          _229 = _374;
          _230 = _373;
          _231 = _372;
          _232 = _364;
          _233 = _356;
          _234 = _263;
          _235 = _258;
          _236 = _267;
          _237 = _270;
          continue;
        }
        _404 = (_387 * _285);
        _405 = (_390 * _285);
        _406 = (_393 * _285);
        _407 = (_378 * _276);
        _408 = (_381 * _280);
        _409 = (_384 * _283);
        break;
      }
    } else {
      _404 = 0.0f;
      _405 = 0.0f;
      _406 = 0.0f;
      _407 = 0.0f;
      _408 = 0.0f;
      _409 = 0.0f;
    }
  } else {
    _404 = 0.0f;
    _405 = 0.0f;
    _406 = 0.0f;
    _407 = 0.0f;
    _408 = 0.0f;
    _409 = 0.0f;
  }
  _412 = __3__48__0__1__g_texPrecomputedLUTMultiUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))].x;
  _413 = __3__48__0__1__g_texPrecomputedLUTMultiUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))].y;
  _414 = __3__48__0__1__g_texPrecomputedLUTMultiUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))].z;
  _415 = __3__48__0__1__g_texPrecomputedLUTMultiUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))].w;
  __3__48__0__1__g_texPrecomputedLUTMultiUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))] = float4((_412 + _407), (_413 + _408), (_414 + _409), (_415 + _404));
  _422 = __3__48__0__1__g_texPrecomputedLUTMultiMieUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))].x;
  _423 = __3__48__0__1__g_texPrecomputedLUTMultiMieUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))].y;
  _424 = __3__48__0__1__g_texPrecomputedLUTMultiMieUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))].z;
  _425 = __3__48__0__1__g_texPrecomputedLUTMultiMieUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))].w;
  __3__48__0__1__g_texPrecomputedLUTMultiMieUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))] = float4((_422 + _404), (_423 + _405), (_424 + _406), _425);
  __3__48__0__1__g_texPrecomputedLUTMultiTempUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))] = float4(_407, _408, _409, _404);
  __3__48__0__1__g_texPrecomputedLUTMultiTempMieUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))] = float4(_404, _405, _406, 0.0f);
}
