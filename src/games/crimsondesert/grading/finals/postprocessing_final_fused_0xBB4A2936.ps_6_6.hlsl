Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b16, space35) {
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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

cbuffer __3__1__0__0__GlobalPushConstants : register(b0, space1) {
  float4 _postProcessParams : packoffset(c000.x);
  float4 _postProcessParams1 : packoffset(c001.x);
  float4 _toneMapParams0 : packoffset(c002.x);
  float4 _toneMapParams1 : packoffset(c003.x);
  float4 _colorGradingParams : packoffset(c004.x);
  float4 _colorCorrectionParams : packoffset(c005.x);
  float4 _localToneMappingParams : packoffset(c006.x);
  float4 _etcParams : packoffset(c007.x);
  float4 _userImageAdjust : packoffset(c008.x);
  float4 _slopeParams : packoffset(c009.x);
  float4 _offsetParams : packoffset(c010.x);
  float4 _powerParams : packoffset(c011.x);
  int _nightToneParm : packoffset(c012.x);
  int3 _padding : packoffset(c012.y);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointBlackBorder : register(s11, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _16;
  float _39;
  float _40;
  float _84;
  float _85;
  float _86;
  float _305;
  float _448;
  float _449;
  float _450;
  float _483;
  float _484;
  float _485;
  float _567;
  float _625;
  float _626;
  float _627;
  float _50;
  float _51;
  float _55;
  float _60;
  float _64;
  float _69;
  float _73;
  float _79;
  float _92;
  float _122;
  float _124;
  float _126;
  float _140;
  float _141;
  float _142;
  float _144;
  float _151;
  float _152;
  float _153;
  float _156;
  float _157;
  float _158;
  float _192;
  float _193;
  float _194;
  float _195;
  float _208;
  float _212;
  float _214;
  float _215;
  float _216;
  float _250;
  float _251;
  float _252;
  float _253;
  float _266;
  float _267;
  float _268;
  float _269;
  float _271;
  float _278;
  float _279;
  float _280;
  float _282;
  float _294;
  float _296;
  float _306;
  float _307;
  float _308;
  float _342;
  float _343;
  float _344;
  float _345;
  float _355;
  float _356;
  float _357;
  float _359;
  float _367;
  float _382;
  float _383;
  float _384;
  float _385;
  float _390;
  float _398;
  float _405;
  float _408;
  float _409;
  float _410;
  float _430;
  float _431;
  float _432;
  float _437;
  float _438;
  float _439;
  float _440;
  float _454;
  float _458;
  float _459;
  float _460;
  float _461;
  float _466;
  float _492;
  float _493;
  float _494;
  float _520;
  float _521;
  float _522;
  float _550;
  float _553;
  float _554;
  float _570;
  float _571;
  float _575;
  float _585;
  float _586;
  float _587;
  _16 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _39 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
    _40 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
  } else {
    _39 = _16.x;
    _40 = _16.z;
  }
  if (_slopeParams.w > 0.0f) {
    _50 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _51 = _50 * 0.7692308f;
    _55 = frac(abs(_51));
    _60 = _50 * 0.08130081f;
    _64 = frac(abs(_60));
    _69 = ((select((_60 >= (-0.0f - _60)), _64, (-0.0f - _64)) * 1230.0f) + 10.0f) * ((select((_51 >= (-0.0f - _51)), _55, (-0.0f - _55)) * 13.0f) + 1.0f);
    _73 = frac(abs(_69));
    _79 = ((0.0075000525f - (select((_69 >= (-0.0f - _69)), _73, (-0.0f - _73)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _84 = (_79 * _39);
    _85 = (_79 * _16.y);
    _86 = (_79 * _40);
  } else {
    _84 = _39;
    _85 = _16.y;
    _86 = _40;
  }
  _92 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
  _122 = _92 * _slopeParams.x;
  _124 = _92 * _slopeParams.y;
  _126 = _92 * _slopeParams.z;
  _140 = exp2(log2(max(0.0f, (_offsetParams.x + (_122 * max(0.0f, (((_84 * 1.70505f) - (_85 * 0.62179f)) - (_86 * 0.08326f))))))) * _powerParams.x);
  _141 = exp2(log2(max(0.0f, (_offsetParams.y + (_124 * max(0.0f, (((_85 * 1.1408f) - (_84 * 0.13026f)) - (_86 * 0.01055f))))))) * _powerParams.y);
  _142 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_84 * -0.024f) - (_85 * 0.12897f)) + (_86 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _144 = dot(float3(_140, _141, _142), float3(0.212671f, 0.71516f, 0.072169f));
  _151 = ((_140 - _144) * _powerParams.w) + _144;
  _152 = ((_141 - _144) * _powerParams.w) + _144;
  _153 = ((_142 - _144) * _powerParams.w) + _144;
  _156 = _localToneMappingParams.x * _84;
  _157 = _localToneMappingParams.x * _85;
  _158 = _localToneMappingParams.x * _86;
  _192 = exp2(log2(max(0.0f, ((_122 * max(0.0f, (((_156 * 1.70505f) - (_157 * 0.62179f)) - (_158 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _193 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_157 * 1.1408f) - (_156 * 0.13026f)) - (_158 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _194 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_156 * -0.024f) - (_157 * 0.12897f)) + (_158 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _195 = dot(float3(_192, _193, _194), float3(0.212671f, 0.71516f, 0.072169f));
  _208 = dot(float3(saturate(lerp(_195, _192, _powerParams.w)), saturate(lerp(_195, _193, _powerParams.w)), saturate(lerp(_195, _194, _powerParams.w))), float3(0.1f, 0.7f, 0.2f));
  _212 = dot(float3(saturate(_151), saturate(_152), saturate(_153)), float3(0.1f, 0.7f, 0.2f));
  _214 = _localToneMappingParams.y * _84;
  _215 = _localToneMappingParams.y * _85;
  _216 = _localToneMappingParams.y * _86;
  _250 = exp2(log2(max(0.0f, ((_122 * max(0.0f, (((_214 * 1.70505f) - (_215 * 0.62179f)) - (_216 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _251 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_215 * 1.1408f) - (_214 * 0.13026f)) - (_216 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _252 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_214 * -0.024f) - (_215 * 0.12897f)) + (_216 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _253 = dot(float3(_250, _251, _252), float3(0.212671f, 0.71516f, 0.072169f));
  _266 = dot(float3(saturate(lerp(_253, _250, _powerParams.w)), saturate(lerp(_253, _251, _powerParams.w)), saturate(lerp(_253, _252, _powerParams.w))), float3(0.1f, 0.7f, 0.2f));
  _267 = _208 + -0.5f;
  _268 = _212 + -0.5f;
  _269 = _266 + -0.5f;
  _271 = _localToneMappingParams.z * -0.7213475f;
  _278 = exp2((_267 * _267) * _271);
  _279 = exp2((_268 * _268) * _271);
  _280 = exp2((_269 * _269) * _271);
  _282 = dot(float3(_278, _279, _280), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _294 = dot(float3(max(_151, 0.0f), max(_152, 0.0f), max(_153, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _296 = max(dot(float3(((_278 / _282) * _208), ((_279 / _282) * _212), ((_280 / _282) * _266)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _294;
  if (!(_294 > 0.007f)) {
    _305 = ((((_294 * _294) * 20408.16f) * (_296 + -1.0f)) + 1.0f);
  } else {
    _305 = _296;
  }
  _306 = _305 * _84;
  _307 = _305 * _85;
  _308 = _305 * _86;
  _342 = exp2(log2(max(0.0f, ((_122 * max(0.0f, (((_306 * 1.70505f) - (_307 * 0.62179f)) - (_308 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _343 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_307 * 1.1408f) - (_306 * 0.13026f)) - (_308 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _344 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_306 * -0.024f) - (_307 * 0.12897f)) + (_308 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _345 = dot(float3(_342, _343, _344), float3(0.212671f, 0.71516f, 0.072169f));
  _355 = max((lerp(_345, _342, _powerParams.w)), 0.0f);
  _356 = max((lerp(_345, _343, _powerParams.w)), 0.0f);
  _357 = max((lerp(_345, _344, _powerParams.w)), 0.0f);
  _359 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_359.x < 1e-07f) || (_359.x == 1.0f))) {
    _367 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _382 = exp2(log2(max(0.0f, _offsetParams.x)) * _powerParams.x);
    _383 = exp2(log2(max(0.0f, _offsetParams.y)) * _powerParams.y);
    _384 = exp2(log2(max(0.0f, _offsetParams.z)) * _powerParams.z);
    _385 = dot(float3(_382, _383, _384), float3(0.212671f, 0.71516f, 0.072169f));
    _390 = ((_383 - _385) * _powerParams.w) + _385;
    _398 = max(max(_356, _390), max(max(_390, _390), _390));
    _405 = sqrt(saturate(min(min(min(_356, _390), min(min(_390, _390), _390)), (1.0f - _398)) * (1.0f / _398))) * (-1.0f / (((1.0f - _367) * 8.0f) + (_367 * 5.0f)));
    _408 = 1.0f / ((_405 * 4.0f) + 1.0f);
    _409 = _385 * 2.0f;
    _410 = _powerParams.w * 4.0f;
    _430 = saturate(((_405 * (((_410 * (_382 - _385)) + _409) + _409)) + _355) * _408) - _355;
    _431 = saturate((((_390 * 4.0f) * _405) + _356) * _408) - _356;
    _432 = saturate(((_405 * (((_410 * (_384 - _385)) + _409) + _409)) + _357) * _408) - _357;
    _437 = 1.0f - dot(float3(abs(_430), abs(_431), abs(_432)), float3(0.212671f, 0.71516f, 0.072169f));
    _438 = _437 * _437;
    _439 = _438 * _438;
    _440 = _439 * _439;
    _448 = ((_440 * _430) + _355);
    _449 = ((_440 * _431) + _356);
    _450 = ((_440 * _432) + _357);
  } else {
    _448 = _355;
    _449 = _356;
    _450 = _357;
  }
  _454 = 1.0f - abs(_etcParams.w);
  _458 = saturate(_etcParams.w);  // [sem: expr_sat]
  _459 = (_454 * _448) + _458;
  _460 = (_454 * _449) + _458;
  _461 = (_454 * _450) + _458;
  if (_colorGradingParams.w > 0.0f) {
    _466 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _483 = (((max(0.0f, (1.0f - _459)) - _459) * _466) + _459);
    _484 = (((max(0.0f, (1.0f - _460)) - _460) * _466) + _460);
    _485 = (((max(0.0f, (1.0f - _461)) - _461) * _466) + _461);
  } else {
    _483 = _459;
    _484 = _460;
    _485 = _461;
  }
  _492 = (pow(_483, 0.012683313f));
  _493 = (pow(_484, 0.012683313f));
  _494 = (pow(_485, 0.012683313f));
  _520 = (TEXCOORD.x * 2.0f) + -1.0f;
  _521 = TEXCOORD.y * 2.0f;
  _522 = 1.0f - _521;
  _550 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _522, ((_projToPrevProj[3].x) * _520))) + (_projToPrevProj[3].w);
  _553 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _522, ((_projToPrevProj[0].x) * _520))) + (_projToPrevProj[0].w)) / _550) - _520;
  _554 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _522, ((_projToPrevProj[1].x) * _520))) + (_projToPrevProj[1].w)) / _550) - _522;
  if (_localToneMappingParams.w > 0.0f) {
    _567 = saturate(1.0f - (sqrt((_554 * _554) + (_553 * _553)) * 2.0f));  // [sem: expr_sat]
  } else {
    _567 = 1.0f;  // [sem: expr_sat]
  }
  _570 = abs(_520);
  _571 = abs(_521 + -1.0f);
  _575 = saturate(1.0f - ((_567 * _postProcessParams.x) * dot(float2(_570, _571), float2(_570, _571))));  // [sem: expr_sat]
  _585 = exp2(log2(_575 * exp2(log2(max(0.0f, (_492 + -0.8359375f)) / (18.851562f - (_492 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _586 = exp2(log2(_575 * exp2(log2(max(0.0f, (_493 + -0.8359375f)) / (18.851562f - (_493 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _587 = exp2(log2(_575 * exp2(log2(max(0.0f, (_494 + -0.8359375f)) / (18.851562f - (_494 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _625 = exp2(log2((1.0f / ((_585 * 18.6875f) + 1.0f)) * ((_585 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _626 = exp2(log2((1.0f / ((_586 * 18.6875f) + 1.0f)) * ((_586 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _627 = exp2(log2((1.0f / ((_587 * 18.6875f) + 1.0f)) * ((_587 * 18.851562f) + 0.8359375f)) * 78.84375f);
    } else {
      _625 = 0.0f;
      _626 = 0.0f;
      _627 = 0.0f;
    }
  } else {
    _625 = 0.0f;
    _626 = 0.0f;
    _627 = 0.0f;
  }
  SV_Target.x = _625;
  SV_Target.y = _626;
  SV_Target.z = _627;
  SV_Target.w = _16.w;
  return SV_Target;
}
