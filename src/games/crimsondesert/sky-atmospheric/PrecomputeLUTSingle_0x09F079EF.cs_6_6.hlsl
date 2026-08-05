Texture2D<float2> __3__36__0__0__g_texNetDensity : register(t36, space36);

RWTexture3D<float4> __3__48__0__1__g_texPrecomputedLUTSingleRayleighUAV : register(u0, space48);

RWTexture3D<float4> __3__48__0__1__g_texPrecomputedLUTSingleMieUAV : register(u1, space48);

RWTexture3D<float4> __3__48__0__1__g_texPrecomputedLUTMultiUAV : register(u2, space48);

RWTexture3D<float4> __3__48__0__1__g_texPrecomputedLUTMultiGatherAccumUAV : register(u5, space48);

RWTexture3D<float4> __3__48__0__1__g_texPrecomputedLUTMultiMieUAV : register(u6, space48);

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
  uint _26;
  float _28;
  float _34;
  float _37;
  float _40;
  float _41;
  float _44;
  float _50;
  float _77;
  float _135;
  float _187;
  float _247;
  float _248;
  float _249;
  float _250;
  float _251;
  float _252;
  int _253;
  float _254;
  float _255;
  float _256;
  float _257;
  float _258;
  float _259;
  float _260;
  float _261;
  float _262;
  float _263;
  float _324;
  float _425;
  float _426;
  float _427;
  float _428;
  float _429;
  float _430;
  float _79;
  float _92;
  float _96;
  float _100;
  float _101;
  float _102;
  float _103;
  float _105;
  float _106;
  float _107;
  float _108;
  float _112;
  float _117;
  float _118;
  float _124;
  float _130;
  float _136;
  float _137;
  float _138;
  float _140;
  float _142;
  float _143;
  float _147;
  float _152;
  float _154;
  float _157;
  float _158;
  float _164;
  float2 _198;
  float _206;
  float _220;
  float _230;
  float _239;
  float _264;
  float _265;
  float _267;
  float _271;
  float _275;
  float _276;
  float _281;
  float _286;
  float _289;
  float _293;
  float _294;
  float _301;
  float2 _336;
  float _343;
  float _346;
  float _349;
  float _350;
  float _356;
  float _360;
  float _363;
  float _365;
  float _370;
  float _378;
  float _384;
  float _390;
  float _391;
  float _392;
  float _393;
  float _394;
  float _395;
  float _396;
  float _399;
  float _402;
  float _405;
  float _408;
  float _411;
  float _414;
  int _415;
  int __loop_jump_target = -1;
  _26 = (uint)(((_volumeSize.y * _volumeSize.w) * _renderFlags.x) + ((float)((uint)(SV_DispatchThreadID.y))));
  _28 = ((float)((uint)((uint)(_26)))) / _volumeSize.y;
  _34 = saturate(((((float)((uint)(SV_DispatchThreadID.x))) / _volumeSize.x) * 1.032258f) + -0.016129032f);  // [sem: expr_sat]
  _37 = _atmosphereThickness + -32.0f;
  _40 = ((_34 * _34) * _37) + 16.0f;
  _41 = max(_40, 0.0f);
  _44 = _earthRadius * 2.0f;
  _50 = (-0.0f - sqrt((_44 + _41) * _41)) / (_earthRadius + _41);
  if (_28 > 0.5f) {
    _77 = max(((exp2(log2(saturate((_28 + -0.50390625f) * 2.0317461f)) * 5.0f) * (1.0f - _50)) + _50), (_50 + 0.0001f));
  } else {
    _77 = min((_50 - (exp2(log2(saturate((_28 + -0.00390625f) * 2.0317461f)) * 5.0f) * (_50 + 1.0f))), (_50 + -0.0001f));
  }
  _79 = min(max(_77, -1.0f), 1.0f);
  _92 = min(max((-0.2857143f - (log2(1.0f - (saturate(((((float)((uint)(SV_DispatchThreadID.z))) / _volumeSize.z) * 1.032258f) + -0.016129032f) * 0.9726763f)) * 0.24755257f)), -1.0f), 1.0f);
  _96 = sqrt(saturate(1.0f - (_79 * _79)));
  _100 = sqrt(saturate(1.0f - (_92 * _92)));
  _101 = _earthRadius + _atmosphereThickness;
  _102 = _40 + _earthRadius;
  _103 = dot(float3(_96, _79, 0.0f), float3(_96, _79, 0.0f));
  _105 = dot(float3(0.0f, _102, 0.0f), float3(_96, _79, 0.0f)) * 2.0f;
  _106 = dot(float3(0.0f, _102, 0.0f), float3(0.0f, _102, 0.0f));
  _107 = _105 * _105;
  _108 = _103 * 4.0f;
  _112 = _107 - ((_106 - (_101 * _101)) * _108);
  if (!(_112 < 0.0f)) {
    _117 = _103 * 2.0f;
    _118 = (sqrt(_112) - _105) / _117;
    if (!(_118 < 0.0f)) {
      _124 = _107 - ((_106 - (_earthRadius * _earthRadius)) * _108);
      if (!(_124 < 0.0f)) {
        _130 = ((-0.0f - _105) - sqrt(_124)) / _117;
        if (_130 > 0.0f) {
          _135 = min(_118, _130);
        } else {
          _135 = _118;
        }
      } else {
        _135 = _118;
      }
      _136 = _135 * 0.0078125f;
      _137 = _136 * _96;
      _138 = _136 * _79;
      _140 = sqrt(_102 * _102);
      _142 = max((_140 - _earthRadius), 0.01f);
      _143 = -0.0f - _142;
      _147 = exp2((_143 / _rayleighScaledHeight) * 1.442695f);
      _152 = exp2((_143 / _mieScaledHeight) * 1.442695f);
      _154 = dot(float3(0.0f, (_102 / _140), 0.0f), float3(_100, _92, 0.0f));
      _157 = min(max(_142, 16.0f), (_atmosphereThickness + -16.0f));
      _158 = max(_157, 0.0f);
      _164 = (-0.0f - sqrt((_158 + _44) * _158)) / (_158 + _earthRadius);
      if (_154 > _164) {
        _187 = ((exp2(log2(saturate((_154 - _164) / (1.0f - _164))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _187 = ((exp2(log2(saturate((_164 - _154) / (_164 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
      _198 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_157 + -16.0f) / _37)) * 0.5f) * 0.96875f) + 0.015625f), _187), 0.0f);
      _206 = ((_mieAerosolDensity * 2e-05f) * (_mieAerosolAbsorption + 1.0f)) * _198.y;  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
      _220 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _198.x) + _206) * -1.442695f);
      _230 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _198.x) + _206) * -1.442695f);
      _239 = exp2(((((((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.1360002e-07f)) * _198.x) + _206) * -1.442695f);
      _247 = 0.0f;
      _248 = 0.0f;
      _249 = 0.0f;
      _250 = 0.0f;
      _251 = 0.0f;
      _252 = 0.0f;
      _253 = 1;
      _254 = (_239 * _152);
      _255 = (_230 * _152);
      _256 = (_220 * _152);
      _257 = (_239 * _147);
      _258 = (_230 * _147);
      _259 = (_220 * _147);
      _260 = _152;
      _261 = _147;
      _262 = 0.0f;
      _263 = 0.0f;
      while(true) {
        _264 = (float)((int)(_253));
        _265 = _264 * _137;
        _267 = (_264 * _138) + _102;
        _271 = sqrt((_267 * _267) + (_265 * _265));
        _275 = max((_271 - _earthRadius), 0.01f);
        _276 = -0.0f - _275;
        _281 = exp2((_276 / _rayleighScaledHeight) * 1.442695f);
        _286 = exp2((_276 / _mieScaledHeight) * 1.442695f);
        _289 = dot(float3((_265 / _271), (_267 / _271), 0.0f), float3(_100, _92, 0.0f));
        _293 = min(max(_275, 16.0f), (_atmosphereThickness + -16.0f));
        _294 = max(_293, 0.0f);
        _301 = (-0.0f - sqrt((_294 + (_earthRadius * 2.0f)) * _294)) / (_294 + _earthRadius);
        if (_289 > _301) {
          _324 = ((exp2(log2(saturate((_289 - _301) / (1.0f - _301))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _324 = ((exp2(log2(saturate((_301 - _289) / (_301 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
        _336 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_293 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _324), 0.0f);
        _343 = sqrt((_137 * _137) + (_138 * _138)) * 0.5f;
        _346 = (_343 * (_281 + _261)) + _262;
        _349 = (_343 * (_286 + _260)) + _263;
        _350 = _346 + _336.x;
        _356 = ((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f;
        _360 = ((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f;
        _363 = ((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f;
        _365 = _mieAerosolDensity * 2e-05f;
        _370 = ((_mieAerosolAbsorption + 1.0f) * _365) * (_349 + _336.y);
        _378 = exp2((((_356 + (_ozoneRatio * 2.0556001e-06f)) * _350) + _370) * -1.442695f);
        _384 = exp2((((_360 + (_ozoneRatio * 4.9788005e-06f)) * _350) + _370) * -1.442695f);
        _390 = exp2((((_363 + (_ozoneRatio * 2.1360002e-07f)) * _350) + _370) * -1.442695f);
        _391 = _378 * _281;
        _392 = _384 * _281;
        _393 = _390 * _281;
        _394 = _378 * _286;
        _395 = _384 * _286;
        _396 = _390 * _286;
        _399 = ((_391 + _259) * _343) + _249;
        _402 = ((_392 + _258) * _343) + _248;
        _405 = ((_393 + _257) * _343) + _247;
        _408 = ((_394 + _256) * _343) + _252;
        _411 = ((_395 + _255) * _343) + _251;
        _414 = ((_396 + _254) * _343) + _250;
        _415 = (int)(_253) + (int)(1);
        if (!(_415 == 129)) {
          _247 = _405;
          _248 = _402;
          _249 = _399;
          _250 = _414;
          _251 = _411;
          _252 = _408;
          _253 = _415;
          _254 = _396;
          _255 = _395;
          _256 = _394;
          _257 = _393;
          _258 = _392;
          _259 = _391;
          _260 = _286;
          _261 = _281;
          _262 = _346;
          _263 = _349;
          continue;
        }
        _425 = (_408 * _365);
        _426 = (_411 * _365);
        _427 = (_414 * _365);
        _428 = (_399 * _356);
        _429 = (_402 * _360);
        _430 = (_405 * _363);
        break;
      }
    } else {
      _425 = 0.0f;
      _426 = 0.0f;
      _427 = 0.0f;
      _428 = 0.0f;
      _429 = 0.0f;
      _430 = 0.0f;
    }
  } else {
    _425 = 0.0f;
    _426 = 0.0f;
    _427 = 0.0f;
    _428 = 0.0f;
    _429 = 0.0f;
    _430 = 0.0f;
  }
  __3__48__0__1__g_texPrecomputedLUTSingleRayleighUAV[int3((int)(SV_DispatchThreadID.x), _26, (int)(SV_DispatchThreadID.z))] = float4(_428, _429, _430, 0.0f);
  __3__48__0__1__g_texPrecomputedLUTSingleMieUAV[int3((int)(SV_DispatchThreadID.x), _26, (int)(SV_DispatchThreadID.z))] = float4(_425, _426, _427, 0.0f);
  __3__48__0__1__g_texPrecomputedLUTMultiUAV[int3((int)(SV_DispatchThreadID.x), _26, (int)(SV_DispatchThreadID.z))] = float4(0.0f, 0.0f, 0.0f, 0.0f);
  __3__48__0__1__g_texPrecomputedLUTMultiMieUAV[int3((int)(SV_DispatchThreadID.x), _26, (int)(SV_DispatchThreadID.z))] = float4(0.0f, 0.0f, 0.0f, 0.0f);
  __3__48__0__1__g_texPrecomputedLUTMultiGatherAccumUAV[int3((int)(SV_DispatchThreadID.x), _26, (int)(SV_DispatchThreadID.z))] = float4(0.0f, 0.0f, 0.0f, 0.0f);
}
