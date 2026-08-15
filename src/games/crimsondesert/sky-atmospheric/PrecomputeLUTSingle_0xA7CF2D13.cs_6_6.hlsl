Texture2D<float2> __3__36__0__0__g_texNetDensity : register(t37, space36);

RWTexture3D<float4> __3__48__0__1__g_texPrecomputedLUTSingleRayleighUAV : register(u0, space48);

RWTexture3D<float4> __3__48__0__1__g_texPrecomputedLUTSingleMieUAV : register(u1, space48);

RWTexture3D<float4> __3__48__0__1__g_texPrecomputedLUTMultiUAV : register(u2, space48);

RWTexture3D<float4> __3__48__0__1__g_texPrecomputedLUTMultiGatherAccumUAV : register(u5, space48);

RWTexture3D<float4> __3__48__0__1__g_texPrecomputedLUTMultiMieUAV : register(u6, space48);

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
  uint _26;
  float _33;
  float _39;
  float _44;
  float _46;
  float _47;
  float _50;
  float _56;
  float _83;
  float _120;
  float _135;
  float _140;
  float _202;
  float _256;
  float _257;
  float _258;
  float _259;
  float _260;
  float _261;
  float _262;
  float _263;
  int _264;
  float _265;
  float _266;
  float _267;
  float _268;
  float _269;
  float _270;
  float _271;
  float _272;
  float _340;
  float _430;
  float _431;
  float _432;
  float _433;
  float _434;
  float _435;
  float _90;
  float _92;
  float _96;
  float _100;
  float _101;
  float _102;
  float _103;
  float _105;
  float _106;
  float _109;
  float _110;
  float _112;
  float _126;
  float _141;
  float _142;
  float _143;
  float _149;
  float _152;
  float _153;
  float _161;
  float _162;
  float _163;
  float _166;
  float _173;
  float _179;
  float2 _207;
  float _228;
  float _246;
  float _247;
  float _248;
  float _273;
  float _274;
  float _276;
  float _280;
  float _286;
  float _287;
  float _296;
  float _297;
  float _298;
  float _302;
  float _310;
  float _317;
  float2 _345;
  float _350;
  float _353;
  float _354;
  float _355;
  float _367;
  float _368;
  float _369;
  float _373;
  float _375;
  float _393;
  float _394;
  float _395;
  float _396;
  float _397;
  float _398;
  float _399;
  float _400;
  float _401;
  float _408;
  float _409;
  float _410;
  float _417;
  float _418;
  float _419;
  int _420;
  int __loop_jump_target = -1;
  _26 = (uint)(((_volumeSize.w * _volumeSize.y) * _renderFlags.x) + ((float)((uint)(SV_DispatchThreadID.y))));
  _33 = ((float)((uint)((uint)(_26)))) / _volumeSize.y;
  _39 = saturate(((((float)((uint)(SV_DispatchThreadID.x))) / _volumeSize.x) * 1.032258f) + -0.016129032f);  // [sem: expr_sat]
  _44 = _atmosphereThickness + -32.0f;
  _46 = ((_39 * _39) * _44) + 16.0f;
  _47 = max(_46, 0.0f);
  _50 = _earthRadius * 2.0f;
  _56 = (-0.0f - sqrt((_50 + _47) * _47)) / (_earthRadius + _47);
  if (_33 > 0.5f) {
    _83 = max(((exp2(log2(saturate((_33 + -0.50390625f) * 2.0317461f)) * 5.0f) * (1.0f - _56)) + _56), (_56 + 0.0001f));
  } else {
    _83 = min((_56 - (exp2(log2(saturate((_33 + -0.00390625f) * 2.0317461f)) * 5.0f) * (_56 + 1.0f))), (_56 + -0.0001f));
  }
  _90 = min(max(_83, -1.0f), 1.0f);
  _92 = min(max((-0.2857143f - (log2(1.0f - (saturate(((((float)((uint)(SV_DispatchThreadID.z))) / _volumeSize.z) * 1.032258f) + -0.016129032f) * 0.9726763f)) * 0.24755257f)), -1.0f), 1.0f);
  _96 = sqrt(saturate(1.0f - (_90 * _90)));
  _100 = sqrt(saturate(1.0f - (_92 * _92)));
  _101 = _earthRadius + _atmosphereThickness;
  _102 = _46 + _earthRadius;
  _103 = dot(float3(_96, _90, 0.0f), float3(_96, _90, 0.0f));
  _105 = dot(float3(0.0f, _102, 0.0f), float3(_96, _90, 0.0f)) * 2.0f;
  _106 = dot(float3(0.0f, _102, 0.0f), float3(0.0f, _102, 0.0f));
  _109 = _105 * _105;
  _110 = _103 * 4.0f;
  _112 = _109 - ((_106 - (_101 * _101)) * _110);
  if (!(_112 < 0.0f)) {
    _120 = ((sqrt(_112) - _105) / (_103 * 2.0f));
  } else {
    _120 = -1.0f;
  }
  if (!(_120 < 0.0f)) {
    _126 = _109 - ((_106 - (_earthRadius * _earthRadius)) * _110);
    if (!(_126 < 0.0f)) {
      _135 = (((-0.0f - _105) - sqrt(_126)) / (_103 * 2.0f));
    } else {
      _135 = -1.0f;
    }
    if (_135 > 0.0f) {
      _140 = min(_120, _135);
    } else {
      _140 = _120;
    }
    _141 = _140 * 0.0078125f;
    _142 = _141 * _96;
    _143 = _141 * _90;
    _149 = sqrt(_102 * _102);
    _152 = max((_149 - _earthRadius), 0.01f);
    _153 = -0.0f - _152;
    _161 = exp2((_153 / _rayleighScaledHeight) * 1.442695f);
    _162 = exp2((_153 / _mieScaledHeight) * 1.442695f);
    _163 = dot(float3(0.0f, (_102 / _149), 0.0f), float3(_100, _92, 0.0f));
    _166 = min(max(_152, 16.0f), (_atmosphereThickness + -16.0f));
    _173 = max(_166, 0.0f);
    _179 = (-0.0f - sqrt((_173 + _50) * _173)) / (_173 + _earthRadius);
    if (_163 > _179) {
      _202 = ((exp2(log2(saturate((_163 - _179) / (1.0f - _179))) * 0.2f) * 0.4921875f) + 0.50390625f);
    } else {
      _202 = ((exp2(log2(saturate((_179 - _163) / (_179 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
    }
    // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
    _207 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_166 + -16.0f) / _44)) * 0.5f) * 0.96875f) + 0.015625f), _202), 0.0f);
    _228 = ((_mieAerosolDensity * 2e-05f) * (_mieAerosolAbsorption + 1.0f)) * _207.y;  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
    _246 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _207.x) + _228) * -1.442695f);
    _247 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _207.x) + _228) * -1.442695f);
    _248 = exp2(((((((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.1360002e-07f)) * _207.x) + _228) * -1.442695f);
    _256 = _161;
    _257 = _162;
    _258 = (_246 * _161);
    _259 = (_247 * _161);
    _260 = (_248 * _161);
    _261 = (_246 * _162);
    _262 = (_247 * _162);
    _263 = (_248 * _162);
    _264 = 1;
    _265 = 0.0f;
    _266 = 0.0f;
    _267 = 0.0f;
    _268 = 0.0f;
    _269 = 0.0f;
    _270 = 0.0f;
    _271 = 0.0f;
    _272 = 0.0f;
    while(true) {
      _273 = (float)((int)(_264));
      _274 = _273 * _142;
      _276 = (_273 * _143) + _102;
      _280 = sqrt((_276 * _276) + (_274 * _274));
      _286 = max((_280 - _earthRadius), 0.01f);
      _287 = -0.0f - _286;
      _296 = exp2((_287 / _rayleighScaledHeight) * 1.442695f);
      _297 = exp2((_287 / _mieScaledHeight) * 1.442695f);
      _298 = dot(float3((_274 / _280), (_276 / _280), 0.0f), float3(_100, _92, 0.0f));
      _302 = min(max(_286, 16.0f), (_atmosphereThickness + -16.0f));
      _310 = max(_302, 0.0f);
      _317 = (-0.0f - sqrt((_310 + (_earthRadius * 2.0f)) * _310)) / (_310 + _earthRadius);
      if (_298 > _317) {
        _340 = ((exp2(log2(saturate((_298 - _317) / (1.0f - _317))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _340 = ((exp2(log2(saturate((_317 - _298) / (_317 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
      _345 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_302 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _340), 0.0f);
      _350 = sqrt((_142 * _142) + (_143 * _143)) * 0.5f;
      _353 = ((_296 + _256) * _350) + _271;
      _354 = ((_297 + _257) * _350) + _272;
      _355 = _345.x + _353;
      _367 = ((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f;
      _368 = ((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f;
      _369 = ((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f;
      _373 = _mieAerosolDensity * 2e-05f;
      _375 = (_373 * (_mieAerosolAbsorption + 1.0f)) * (_345.y + _354);
      _393 = exp2((((_367 + (_ozoneRatio * 2.0556001e-06f)) * _355) + _375) * -1.442695f);
      _394 = exp2((((_368 + (_ozoneRatio * 4.9788005e-06f)) * _355) + _375) * -1.442695f);
      _395 = exp2((((_369 + (_ozoneRatio * 2.1360002e-07f)) * _355) + _375) * -1.442695f);
      _396 = _393 * _296;
      _397 = _394 * _296;
      _398 = _395 * _296;
      _399 = _393 * _297;
      _400 = _394 * _297;
      _401 = _395 * _297;
      _408 = ((_396 + _258) * _350) + _268;
      _409 = ((_397 + _259) * _350) + _269;
      _410 = ((_398 + _260) * _350) + _270;
      _417 = ((_399 + _261) * _350) + _265;
      _418 = ((_400 + _262) * _350) + _266;
      _419 = ((_401 + _263) * _350) + _267;
      _420 = (int)(_264) + (int)(1);
      if (!(_420 == 129)) {
        _256 = _296;
        _257 = _297;
        _258 = _396;
        _259 = _397;
        _260 = _398;
        _261 = _399;
        _262 = _400;
        _263 = _401;
        _264 = _420;
        _265 = _417;
        _266 = _418;
        _267 = _419;
        _268 = _408;
        _269 = _409;
        _270 = _410;
        _271 = _353;
        _272 = _354;
        continue;
      }
      _430 = (_417 * _373);
      _431 = (_418 * _373);
      _432 = (_419 * _373);
      _433 = (_367 * _408);
      _434 = (_368 * _409);
      _435 = (_369 * _410);
      break;
    }
  } else {
    _430 = 0.0f;
    _431 = 0.0f;
    _432 = 0.0f;
    _433 = 0.0f;
    _434 = 0.0f;
    _435 = 0.0f;
  }
  __3__48__0__1__g_texPrecomputedLUTSingleRayleighUAV[int3((int)(SV_DispatchThreadID.x), _26, (int)(SV_DispatchThreadID.z))] = float4(_433, _434, _435, 0.0f);
  __3__48__0__1__g_texPrecomputedLUTSingleMieUAV[int3((int)(SV_DispatchThreadID.x), _26, (int)(SV_DispatchThreadID.z))] = float4(_430, _431, _432, 0.0f);
  __3__48__0__1__g_texPrecomputedLUTMultiUAV[int3((int)(SV_DispatchThreadID.x), _26, (int)(SV_DispatchThreadID.z))] = float4(0.0f, 0.0f, 0.0f, 0.0f);
  __3__48__0__1__g_texPrecomputedLUTMultiMieUAV[int3((int)(SV_DispatchThreadID.x), _26, (int)(SV_DispatchThreadID.z))] = float4(0.0f, 0.0f, 0.0f, 0.0f);
  __3__48__0__1__g_texPrecomputedLUTMultiGatherAccumUAV[int3((int)(SV_DispatchThreadID.x), _26, (int)(SV_DispatchThreadID.z))] = float4(0.0f, 0.0f, 0.0f, 0.0f);
}
