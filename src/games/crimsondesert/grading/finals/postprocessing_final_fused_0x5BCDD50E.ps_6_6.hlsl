Texture3D<float4> __3__36__0__0__g_displayRenderingTransformLUT : register(t155, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

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
  float _436;
  float _564;
  float _565;
  float _566;
  float _648;
  float _706;
  float _707;
  float _708;
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
  float _163;
  float _164;
  float _165;
  float4 _195;
  float _201;
  float _202;
  float _203;
  float _237;
  float _238;
  float _239;
  float _240;
  float _259;
  float _260;
  float _261;
  float4 _289;
  float _296;
  float _300;
  float _302;
  float _303;
  float _304;
  float _338;
  float _339;
  float _340;
  float _341;
  float _360;
  float _361;
  float _362;
  float4 _390;
  float _397;
  float _398;
  float _399;
  float _400;
  float _402;
  float _409;
  float _410;
  float _411;
  float _413;
  float _425;
  float _427;
  float _437;
  float _438;
  float _439;
  float _473;
  float _474;
  float _475;
  float _476;
  float _495;
  float _496;
  float _497;
  float4 _525;
  float _535;
  float _539;
  float _540;
  float _541;
  float _542;
  float _547;
  float _573;
  float _574;
  float _575;
  float _601;
  float _602;
  float _603;
  float _631;
  float _634;
  float _635;
  float _651;
  float _652;
  float _656;
  float _666;
  float _667;
  float _668;
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
  _163 = exp2(log2((lerp(_144, _140, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _164 = exp2(log2((lerp(_144, _141, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _165 = exp2(log2((lerp(_144, _142, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
  _195 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_163 * 18.6875f) + 1.0f)) * ((_163 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_164 * 18.6875f) + 1.0f)) * ((_164 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_165 * 18.6875f) + 1.0f)) * ((_165 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
  _201 = _localToneMappingParams.x * _84;
  _202 = _localToneMappingParams.x * _85;
  _203 = _localToneMappingParams.x * _86;
  _237 = exp2(log2(max(0.0f, ((_122 * max(0.0f, (((_201 * 1.70505f) - (_202 * 0.62179f)) - (_203 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _238 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_202 * 1.1408f) - (_201 * 0.13026f)) - (_203 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _239 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_201 * -0.024f) - (_202 * 0.12897f)) + (_203 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _240 = dot(float3(_237, _238, _239), float3(0.212671f, 0.71516f, 0.072169f));
  _259 = exp2(log2((lerp(_240, _237, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _260 = exp2(log2((lerp(_240, _238, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _261 = exp2(log2((lerp(_240, _239, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
  _289 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_259 * 18.6875f) + 1.0f)) * ((_259 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_260 * 18.6875f) + 1.0f)) * ((_260 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_261 * 18.6875f) + 1.0f)) * ((_261 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
  _296 = dot(float3(saturate(_289.x), saturate(_289.y), saturate(_289.z)), float3(0.1f, 0.7f, 0.2f));
  _300 = dot(float3(saturate(_195.x), saturate(_195.y), saturate(_195.z)), float3(0.1f, 0.7f, 0.2f));
  _302 = _localToneMappingParams.y * _84;
  _303 = _localToneMappingParams.y * _85;
  _304 = _localToneMappingParams.y * _86;
  _338 = exp2(log2(max(0.0f, ((_122 * max(0.0f, (((_302 * 1.70505f) - (_303 * 0.62179f)) - (_304 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _339 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_303 * 1.1408f) - (_302 * 0.13026f)) - (_304 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _340 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_302 * -0.024f) - (_303 * 0.12897f)) + (_304 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _341 = dot(float3(_338, _339, _340), float3(0.212671f, 0.71516f, 0.072169f));
  _360 = exp2(log2((lerp(_341, _338, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _361 = exp2(log2((lerp(_341, _339, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _362 = exp2(log2((lerp(_341, _340, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
  _390 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_360 * 18.6875f) + 1.0f)) * ((_360 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_361 * 18.6875f) + 1.0f)) * ((_361 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_362 * 18.6875f) + 1.0f)) * ((_362 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
  _397 = dot(float3(saturate(_390.x), saturate(_390.y), saturate(_390.z)), float3(0.1f, 0.7f, 0.2f));
  _398 = _296 + -0.5f;
  _399 = _300 + -0.5f;
  _400 = _397 + -0.5f;
  _402 = _localToneMappingParams.z * -0.7213475f;
  _409 = exp2((_398 * _398) * _402);
  _410 = exp2((_399 * _399) * _402);
  _411 = exp2((_400 * _400) * _402);
  _413 = dot(float3(_409, _410, _411), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _425 = dot(float3(max(_195.x, 0.0f), max(_195.y, 0.0f), max(_195.z, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _427 = max(dot(float3(((_409 / _413) * _296), ((_410 / _413) * _300), ((_411 / _413) * _397)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _425;
  if (!(_425 > 0.007f)) {
    _436 = ((((_425 * _425) * 20408.16f) * (_427 + -1.0f)) + 1.0f);
  } else {
    _436 = _427;
  }
  _437 = _436 * _84;
  _438 = _436 * _85;
  _439 = _436 * _86;
  _473 = exp2(log2(max(0.0f, ((_122 * max(0.0f, (((_437 * 1.70505f) - (_438 * 0.62179f)) - (_439 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _474 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_438 * 1.1408f) - (_437 * 0.13026f)) - (_439 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _475 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_437 * -0.024f) - (_438 * 0.12897f)) + (_439 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _476 = dot(float3(_473, _474, _475), float3(0.212671f, 0.71516f, 0.072169f));
  _495 = exp2(log2((lerp(_476, _473, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _496 = exp2(log2((lerp(_476, _474, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _497 = exp2(log2((lerp(_476, _475, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
  _525 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_495 * 18.6875f) + 1.0f)) * ((_495 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_496 * 18.6875f) + 1.0f)) * ((_496 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_497 * 18.6875f) + 1.0f)) * ((_497 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
  _535 = 1.0f - abs(_etcParams.w);
  _539 = saturate(_etcParams.w);  // [sem: expr_sat]
  _540 = (_535 * max(_525.x, 0.0f)) + _539;
  _541 = (_535 * max(_525.y, 0.0f)) + _539;
  _542 = (_535 * max(_525.z, 0.0f)) + _539;
  if (_colorGradingParams.w > 0.0f) {
    _547 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _564 = (((max(0.0f, (1.0f - _540)) - _540) * _547) + _540);
    _565 = (((max(0.0f, (1.0f - _541)) - _541) * _547) + _541);
    _566 = (((max(0.0f, (1.0f - _542)) - _542) * _547) + _542);
  } else {
    _564 = _540;
    _565 = _541;
    _566 = _542;
  }
  _573 = (pow(_564, 0.012683313f));
  _574 = (pow(_565, 0.012683313f));
  _575 = (pow(_566, 0.012683313f));
  _601 = (TEXCOORD.x * 2.0f) + -1.0f;
  _602 = TEXCOORD.y * 2.0f;
  _603 = 1.0f - _602;
  _631 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _603, ((_projToPrevProj[3].x) * _601))) + (_projToPrevProj[3].w);
  _634 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _603, ((_projToPrevProj[0].x) * _601))) + (_projToPrevProj[0].w)) / _631) - _601;
  _635 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _603, ((_projToPrevProj[1].x) * _601))) + (_projToPrevProj[1].w)) / _631) - _603;
  if (_localToneMappingParams.w > 0.0f) {
    _648 = saturate(1.0f - (sqrt((_635 * _635) + (_634 * _634)) * 2.0f));  // [sem: expr_sat]
  } else {
    _648 = 1.0f;  // [sem: expr_sat]
  }
  _651 = abs(_601);
  _652 = abs(_602 + -1.0f);
  _656 = saturate(1.0f - ((_648 * _postProcessParams.x) * dot(float2(_651, _652), float2(_651, _652))));  // [sem: expr_sat]
  _666 = exp2(log2(_656 * exp2(log2(max(0.0f, (_573 + -0.8359375f)) / (18.851562f - (_573 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _667 = exp2(log2(_656 * exp2(log2(max(0.0f, (_574 + -0.8359375f)) / (18.851562f - (_574 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _668 = exp2(log2(_656 * exp2(log2(max(0.0f, (_575 + -0.8359375f)) / (18.851562f - (_575 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _706 = exp2(log2((1.0f / ((_666 * 18.6875f) + 1.0f)) * ((_666 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _707 = exp2(log2((1.0f / ((_667 * 18.6875f) + 1.0f)) * ((_667 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _708 = exp2(log2((1.0f / ((_668 * 18.6875f) + 1.0f)) * ((_668 * 18.851562f) + 0.8359375f)) * 78.84375f);
    } else {
      _706 = 0.0f;
      _707 = 0.0f;
      _708 = 0.0f;
    }
  } else {
    _706 = 0.0f;
    _707 = 0.0f;
    _708 = 0.0f;
  }
  SV_Target.x = _706;
  SV_Target.y = _707;
  SV_Target.z = _708;
  SV_Target.w = _16.w;
  return SV_Target;
}
