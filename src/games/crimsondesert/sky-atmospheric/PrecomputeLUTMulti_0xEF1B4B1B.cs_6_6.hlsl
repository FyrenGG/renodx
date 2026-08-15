Texture3D<float4> __3__36__0__0__g_texPrecomputedLUTMultiGather : register(t67, space36);

RWTexture3D<float4> __3__48__0__1__g_texPrecomputedLUTMultiUAV : register(u2, space48);

RWTexture3D<float4> __3__48__0__1__g_texPrecomputedLUTMultiTempUAV : register(u3, space48);

RWTexture3D<float4> __3__48__0__1__g_texPrecomputedLUTMultiMieUAV : register(u6, space48);

RWTexture3D<float4> __3__48__0__1__g_texPrecomputedLUTMultiTempMieUAV : register(u7, space48);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b3, space35) {
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

cbuffer __3__35__0__0__AtmosphereConstantBuffer : register(b15, space35) {
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
  float _32;
  float _38;
  float _43;
  float _45;
  float _46;
  float _49;
  float _55;
  float _82;
  float _119;
  float _134;
  float _139;
  float _205;
  float _226;
  float _227;
  float _228;
  float _229;
  float _230;
  float _231;
  float _232;
  float _233;
  int _234;
  float _235;
  float _236;
  float _237;
  float _238;
  float _239;
  float _240;
  float _241;
  float _242;
  float _358;
  float _409;
  float _410;
  float _411;
  float _412;
  float _413;
  float _414;
  float _89;
  float _91;
  float _95;
  float _99;
  float _100;
  float _101;
  float _102;
  float _104;
  float _105;
  float _108;
  float _109;
  float _111;
  float _125;
  float _140;
  float _141;
  float _142;
  float _143;
  float _147;
  float _148;
  float _149;
  float _151;
  float _152;
  float _154;
  float _155;
  float _163;
  float _164;
  float _166;
  float _169;
  float _176;
  float _182;
  float4 _215;
  float _244;
  float _245;
  float _247;
  float _251;
  float _252;
  float _253;
  float _257;
  float _258;
  float _267;
  float _268;
  float _271;
  float _274;
  float _275;
  float _286;
  float _287;
  float _288;
  float _292;
  float _294;
  float _316;
  float _320;
  float _328;
  float _335;
  float4 _368;
  float _372;
  float _373;
  float _374;
  float _375;
  float _376;
  float _377;
  float _378;
  float _379;
  float _380;
  float _387;
  float _388;
  float _389;
  float _396;
  float _397;
  float _398;
  int _399;
  float _417;
  float _418;
  float _419;
  float _420;
  float _427;
  float _428;
  float _429;
  float _430;
  int __loop_jump_target = -1;
  _25 = (uint)(((_volumeSize.w * _volumeSize.y) * _renderFlags.x) + ((float)((uint)(SV_DispatchThreadID.y))));
  _32 = ((float)((uint)((uint)(_25)))) / _volumeSize.y;
  _38 = saturate(((((float)((uint)(SV_DispatchThreadID.x))) / _volumeSize.x) * 1.032258f) + -0.016129032f);  // [sem: expr_sat]
  _43 = _atmosphereThickness + -32.0f;
  _45 = ((_38 * _38) * _43) + 16.0f;
  _46 = max(_45, 0.0f);
  _49 = _earthRadius * 2.0f;
  _55 = (-0.0f - sqrt((_49 + _46) * _46)) / (_earthRadius + _46);
  if (_32 > 0.5f) {
    _82 = max(((exp2(log2(saturate((_32 + -0.50390625f) * 2.0317461f)) * 5.0f) * (1.0f - _55)) + _55), (_55 + 0.0001f));
  } else {
    _82 = min((_55 - (exp2(log2(saturate((_32 + -0.00390625f) * 2.0317461f)) * 5.0f) * (_55 + 1.0f))), (_55 + -0.0001f));
  }
  _89 = min(max(_82, -1.0f), 1.0f);
  _91 = min(max((-0.2857143f - (log2(1.0f - (saturate(((((float)((uint)(SV_DispatchThreadID.z))) / _volumeSize.z) * 1.032258f) + -0.016129032f) * 0.9726763f)) * 0.24755257f)), -1.0f), 1.0f);
  _95 = sqrt(saturate(1.0f - (_89 * _89)));
  _99 = sqrt(saturate(1.0f - (_91 * _91)));
  _100 = _earthRadius + _atmosphereThickness;
  _101 = _45 + _earthRadius;
  _102 = dot(float3(_95, _89, 0.0f), float3(_95, _89, 0.0f));
  _104 = dot(float3(0.0f, _101, 0.0f), float3(_95, _89, 0.0f)) * 2.0f;
  _105 = dot(float3(0.0f, _101, 0.0f), float3(0.0f, _101, 0.0f));
  _108 = _104 * _104;
  _109 = _102 * 4.0f;
  _111 = _108 - ((_105 - (_100 * _100)) * _109);
  if (!(_111 < 0.0f)) {
    _119 = ((sqrt(_111) - _104) / (_102 * 2.0f));
  } else {
    _119 = -1.0f;
  }
  if (!(_119 < 0.0f)) {
    _125 = _108 - ((_105 - (_earthRadius * _earthRadius)) * _109);
    if (!(_125 < 0.0f)) {
      _134 = (((-0.0f - _104) - sqrt(_125)) / (_102 * 2.0f));
    } else {
      _134 = -1.0f;
    }
    if (_134 > 0.0f) {
      _139 = min(_119, _134);
    } else {
      _139 = _119;
    }
    _140 = _139 * _95;
    _141 = _139 * _89;
    _142 = _140 * 0.0078125f;
    _143 = _141 * 0.0078125f;
    _147 = sqrt((_142 * _142) + (_143 * _143));
    _148 = _142 / _147;
    _149 = _143 / _147;
    _151 = sqrt(_101 * _101);
    _152 = _101 / _151;
    _154 = max((_151 - _earthRadius), 0.01f);
    _155 = -0.0f - _154;
    _163 = exp2((_155 / _rayleighScaledHeight) * 1.442695f);
    _164 = exp2((_155 / _mieScaledHeight) * 1.442695f);
    _166 = dot(float3(0.0f, _152, 0.0f), float3(_148, _149, 0.0f));
    _169 = min(max(_154, 16.0f), (_atmosphereThickness + -16.0f));
    _176 = max(_169, 0.0f);
    _182 = (-0.0f - sqrt((_176 + _49) * _176)) / (_176 + _earthRadius);
    if (_166 > _182) {
      _205 = ((exp2(log2(saturate((_166 - _182) / (1.0f - _182))) * 0.2f) * 0.4921875f) + 0.50390625f);
    } else {
      _205 = ((exp2(log2(saturate((_182 - _166) / (_182 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
    }
    // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGather_sampleLod]
    _215 = __3__36__0__0__g_texPrecomputedLUTMultiGather.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(((exp2(log2(saturate((_169 + -16.0f) / _43)) * 0.5f) * 0.96875f) + 0.015625f), _205, ((1.0f - exp2(-1.1541561f - (dot(float3(0.0f, _152, 0.0f), float3(_99, _91, 0.0f)) * 4.039546f))) * 1.0280913f)), 0.0f);
    _226 = _163;
    _227 = _164;
    _228 = (_215.x * _163);
    _229 = (_215.y * _163);
    _230 = (_215.z * _163);
    _231 = (_215.x * _164);
    _232 = (_215.y * _164);
    _233 = (_215.z * _164);
    _234 = 1;
    _235 = 0.0f;
    _236 = 0.0f;
    _237 = 0.0f;
    _238 = 0.0f;
    _239 = 0.0f;
    _240 = 0.0f;
    _241 = 0.0f;
    _242 = 0.0f;
    while(true) {
      _244 = ((float)((int)(_234))) * 0.0078125f;
      _245 = _244 * _140;
      _247 = (_244 * _141) + _101;
      _251 = sqrt((_247 * _247) + (_245 * _245));
      _252 = _245 / _251;
      _253 = _247 / _251;
      _257 = max((_251 - _earthRadius), 0.01f);
      _258 = -0.0f - _257;
      _267 = exp2((_258 / _rayleighScaledHeight) * 1.442695f);
      _268 = exp2((_258 / _mieScaledHeight) * 1.442695f);
      _271 = _147 * 0.5f;
      _274 = ((_267 + _226) * _271) + _241;
      _275 = ((_268 + _227) * _271) + _242;
      _286 = ((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f;
      _287 = ((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f;
      _288 = ((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f;
      _292 = _mieAerosolDensity * 2e-05f;
      _294 = (_292 * (_mieAerosolAbsorption + 1.0f)) * _275;
      _316 = dot(float3(_252, _253, 0.0f), float3(_148, _149, 0.0f));
      _320 = min(max(_257, 16.0f), (_atmosphereThickness + -16.0f));
      _328 = max(_320, 0.0f);
      _335 = (-0.0f - sqrt((_328 + (_earthRadius * 2.0f)) * _328)) / (_328 + _earthRadius);
      if (_316 > _335) {
        _358 = ((exp2(log2(saturate((_316 - _335) / (1.0f - _335))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _358 = ((exp2(log2(saturate((_335 - _316) / (_335 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGather_sampleLod]
      _368 = __3__36__0__0__g_texPrecomputedLUTMultiGather.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(((exp2(log2(saturate((_320 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _358, ((1.0f - exp2(-1.1541561f - (dot(float3(_252, _253, 0.0f), float3(_99, _91, 0.0f)) * 4.039546f))) * 1.0280913f)), 0.0f);
      _372 = _368.x * exp2((((_286 + (_ozoneRatio * 2.0556001e-06f)) * _274) + _294) * -1.442695f);
      _373 = _372 * _267;
      _374 = _368.y * exp2((((_287 + (_ozoneRatio * 4.9788005e-06f)) * _274) + _294) * -1.442695f);
      _375 = _374 * _267;
      _376 = _368.z * exp2((((_288 + (_ozoneRatio * 2.1360002e-07f)) * _274) + _294) * -1.442695f);
      _377 = _376 * _267;
      _378 = _372 * _268;
      _379 = _374 * _268;
      _380 = _376 * _268;
      _387 = ((_373 + _228) * _271) + _238;
      _388 = ((_375 + _229) * _271) + _239;
      _389 = ((_377 + _230) * _271) + _240;
      _396 = ((_378 + _231) * _271) + _235;
      _397 = ((_379 + _232) * _271) + _236;
      _398 = ((_380 + _233) * _271) + _237;
      _399 = (int)(_234) + (int)(1);
      if (!(_399 == 129)) {
        _226 = _267;
        _227 = _268;
        _228 = _373;
        _229 = _375;
        _230 = _377;
        _231 = _378;
        _232 = _379;
        _233 = _380;
        _234 = _399;
        _235 = _396;
        _236 = _397;
        _237 = _398;
        _238 = _387;
        _239 = _388;
        _240 = _389;
        _241 = _274;
        _242 = _275;
        continue;
      }
      _409 = (_396 * _292);
      _410 = (_397 * _292);
      _411 = (_398 * _292);
      _412 = (_286 * _387);
      _413 = (_287 * _388);
      _414 = (_288 * _389);
      break;
    }
  } else {
    _409 = 0.0f;
    _410 = 0.0f;
    _411 = 0.0f;
    _412 = 0.0f;
    _413 = 0.0f;
    _414 = 0.0f;
  }
  _417 = __3__48__0__1__g_texPrecomputedLUTMultiUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))].x;
  _418 = __3__48__0__1__g_texPrecomputedLUTMultiUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))].y;
  _419 = __3__48__0__1__g_texPrecomputedLUTMultiUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))].z;
  _420 = __3__48__0__1__g_texPrecomputedLUTMultiUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))].w;
  __3__48__0__1__g_texPrecomputedLUTMultiUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))] = float4((_417 + _412), (_418 + _413), (_419 + _414), (_420 + _409));
  _427 = __3__48__0__1__g_texPrecomputedLUTMultiMieUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))].x;
  _428 = __3__48__0__1__g_texPrecomputedLUTMultiMieUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))].y;
  _429 = __3__48__0__1__g_texPrecomputedLUTMultiMieUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))].z;
  _430 = __3__48__0__1__g_texPrecomputedLUTMultiMieUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))].w;
  __3__48__0__1__g_texPrecomputedLUTMultiMieUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))] = float4((_427 + _409), (_428 + _410), (_429 + _411), _430);
  __3__48__0__1__g_texPrecomputedLUTMultiTempUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))] = float4(_412, _413, _414, _409);
  __3__48__0__1__g_texPrecomputedLUTMultiTempMieUAV[int3((int)(SV_DispatchThreadID.x), _25, (int)(SV_DispatchThreadID.z))] = float4(_409, _410, _411, 0.0f);
}
