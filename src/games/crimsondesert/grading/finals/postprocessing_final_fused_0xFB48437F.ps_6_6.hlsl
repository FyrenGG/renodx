Texture3D<float4> __3__36__0__0__g_displayRenderingTransformLUT : register(t154, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

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
  float _623;
  float _706;
  float _707;
  float _708;
  float _50;
  float _51;
  float _53;
  float _54;
  float _56;
  float _69;
  float _71;
  float _79;
  float _92;
  float _94;
  float _96;
  float _98;
  float _114;
  float _128;
  float _142;
  float _143;
  float _151;
  float _158;
  float _165;
  float4 _195;
  float _201;
  float _202;
  float _203;
  float _215;
  float _227;
  float _239;
  float _240;
  float _247;
  float _254;
  float _261;
  float4 _289;
  float _296;
  float _300;
  float _302;
  float _303;
  float _304;
  float _316;
  float _328;
  float _340;
  float _341;
  float _348;
  float _355;
  float _362;
  float4 _390;
  float _397;
  float _398;
  float _399;
  float _400;
  float _402;
  float _405;
  float _408;
  float _411;
  float _413;
  float _418;
  float _427;
  float _437;
  float _438;
  float _439;
  float _451;
  float _463;
  float _475;
  float _476;
  float _483;
  float _490;
  float _497;
  float4 _525;
  float _532;
  float _533;
  float _536;
  float _539;
  float _542;
  float _547;
  float _569;
  float _572;
  float _575;
  float _577;
  float _578;
  float _579;
  float _591;
  float _601;
  float _611;
  float _624;
  float _626;
  float _632;
  float _644;
  float _656;
  float _668;
  _16 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _39 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
    _40 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
  } else {
    _39 = _16.z;
    _40 = _16.x;
  }
  if (_slopeParams.w > 0.0f) {
    _50 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _51 = _50 * 0.7692308f;
    _53 = frac(abs(_51));
    _54 = _50 * 0.08130081f;
    _56 = frac(abs(_54));
    _69 = ((select((_54 >= (-0.0f - _54)), _56, (-0.0f - _56)) * 1230.0f) + 10.0f) * ((select((_51 >= (-0.0f - _51)), _53, (-0.0f - _53)) * 13.0f) + 1.0f);
    _71 = frac(abs(_69));
    _79 = ((0.0075000525f - (select((_69 >= (-0.0f - _69)), _71, (-0.0f - _71)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _84 = (_79 * _39);
    _85 = (_79 * _16.y);
    _86 = (_79 * _40);
  } else {
    _84 = _39;
    _85 = _16.y;
    _86 = _40;
  }
  _92 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
  _94 = _92 * _slopeParams.x;
  _96 = _92 * _slopeParams.y;
  _98 = _92 * _slopeParams.z;
  _114 = exp2(_powerParams.x * log2(max(0.0f, ((_94 * max(0.0f, (((_85 * -0.62179f) - (_84 * 0.08326f)) + (_86 * 1.70505f)))) + _offsetParams.x))));
  _128 = exp2(log2(max(0.0f, ((max(0.0f, (((_85 * 1.1408f) - (_84 * 0.01055f)) - (_86 * 0.13026f))) * _96) + _offsetParams.y))) * _powerParams.y);
  _142 = exp2(log2(max(0.0f, ((max(0.0f, (((_84 * 1.15297f) - (_85 * 0.12897f)) - (_86 * 0.024f))) * _98) + _offsetParams.z))) * _powerParams.z);
  _143 = dot(float3(_114, _128, _142), float3(0.212671f, 0.71516f, 0.072169f));
  _151 = exp2(log2((lerp(_143, _114, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _158 = exp2(log2((lerp(_143, _128, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _165 = exp2(log2((lerp(_143, _142, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
  _195 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_151 * 18.6875f) + 1.0f)) * ((_151 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_158 * 18.6875f) + 1.0f)) * ((_158 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_165 * 18.6875f) + 1.0f)) * ((_165 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
  _201 = _localToneMappingParams.x * _86;
  _202 = _localToneMappingParams.x * _85;
  _203 = _localToneMappingParams.x * _84;
  _215 = exp2(log2(max(0.0f, ((max(0.0f, (((_201 * 1.70505f) - (_202 * 0.62179f)) - (_203 * 0.08326f))) * _94) + _offsetParams.x))) * _powerParams.x);
  _227 = exp2(log2(max(0.0f, ((max(0.0f, (((_202 * 1.1408f) - (_201 * 0.13026f)) - (_203 * 0.01055f))) * _96) + _offsetParams.y))) * _powerParams.y);
  _239 = exp2(log2(max(0.0f, ((max(0.0f, (((_201 * -0.024f) - (_202 * 0.12897f)) + (_203 * 1.15297f))) * _98) + _offsetParams.z))) * _powerParams.z);
  _240 = dot(float3(_215, _227, _239), float3(0.212671f, 0.71516f, 0.072169f));
  _247 = exp2(log2((lerp(_240, _215, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _254 = exp2(log2((lerp(_240, _227, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _261 = exp2(log2((lerp(_240, _239, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
  _289 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_247 * 18.6875f) + 1.0f)) * ((_247 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_254 * 18.6875f) + 1.0f)) * ((_254 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_261 * 18.6875f) + 1.0f)) * ((_261 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
  _296 = dot(float3(saturate(_289.x), saturate(_289.y), saturate(_289.z)), float3(0.1f, 0.7f, 0.2f));
  _300 = dot(float3(saturate(_195.x), saturate(_195.y), saturate(_195.z)), float3(0.1f, 0.7f, 0.2f));
  _302 = _localToneMappingParams.y * _86;
  _303 = _localToneMappingParams.y * _85;
  _304 = _localToneMappingParams.y * _84;
  _316 = exp2(log2(max(0.0f, ((max(0.0f, (((_302 * 1.70505f) - (_303 * 0.62179f)) - (_304 * 0.08326f))) * _94) + _offsetParams.x))) * _powerParams.x);
  _328 = exp2(log2(max(0.0f, ((max(0.0f, (((_303 * 1.1408f) - (_302 * 0.13026f)) - (_304 * 0.01055f))) * _96) + _offsetParams.y))) * _powerParams.y);
  _340 = exp2(log2(max(0.0f, ((max(0.0f, (((_302 * -0.024f) - (_303 * 0.12897f)) + (_304 * 1.15297f))) * _98) + _offsetParams.z))) * _powerParams.z);
  _341 = dot(float3(_316, _328, _340), float3(0.212671f, 0.71516f, 0.072169f));
  _348 = exp2(log2((lerp(_341, _316, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _355 = exp2(log2((lerp(_341, _328, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _362 = exp2(log2((lerp(_341, _340, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
  _390 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_348 * 18.6875f) + 1.0f)) * ((_348 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_355 * 18.6875f) + 1.0f)) * ((_355 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_362 * 18.6875f) + 1.0f)) * ((_362 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
  _397 = dot(float3(saturate(_390.x), saturate(_390.y), saturate(_390.z)), float3(0.1f, 0.7f, 0.2f));
  _398 = _296 + -0.5f;
  _399 = _300 + -0.5f;
  _400 = _397 + -0.5f;
  _402 = _localToneMappingParams.z * -0.7213475f;
  _405 = exp2((_398 * _398) * _402);
  _408 = exp2((_399 * _399) * _402);
  _411 = exp2((_400 * _400) * _402);
  _413 = dot(float3(_405, _408, _411), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _418 = dot(float3(max(_195.x, 0.0f), max(_195.y, 0.0f), max(_195.z, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _427 = max(dot(float3(((_405 / _413) * _296), ((_408 / _413) * _300), ((_411 / _413) * _397)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _418;
  if (!(_418 > 0.007f)) {
    _436 = ((((_418 * _418) * 20408.16f) * (_427 + -1.0f)) + 1.0f);
  } else {
    _436 = _427;
  }
  _437 = _436 * _86;
  _438 = _436 * _85;
  _439 = _436 * _84;
  _451 = exp2(log2(max(0.0f, ((max(0.0f, (((_437 * 1.70505f) - (_438 * 0.62179f)) - (_439 * 0.08326f))) * _94) + _offsetParams.x))) * _powerParams.x);
  _463 = exp2(log2(max(0.0f, ((max(0.0f, (((_438 * 1.1408f) - (_437 * 0.13026f)) - (_439 * 0.01055f))) * _96) + _offsetParams.y))) * _powerParams.y);
  _475 = exp2(log2(max(0.0f, ((max(0.0f, (((_437 * -0.024f) - (_438 * 0.12897f)) + (_439 * 1.15297f))) * _98) + _offsetParams.z))) * _powerParams.z);
  _476 = dot(float3(_451, _463, _475), float3(0.212671f, 0.71516f, 0.072169f));
  _483 = exp2(log2((lerp(_476, _451, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _490 = exp2(log2((lerp(_476, _463, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _497 = exp2(log2((lerp(_476, _475, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
  _525 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_483 * 18.6875f) + 1.0f)) * ((_483 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_490 * 18.6875f) + 1.0f)) * ((_490 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_497 * 18.6875f) + 1.0f)) * ((_497 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
  _532 = 1.0f - abs(_etcParams.w);
  _533 = saturate(_etcParams.w);  // [sem: expr_sat]
  _536 = (max(_525.x, 0.0f) * _532) + _533;
  _539 = (max(_525.y, 0.0f) * _532) + _533;
  _542 = (max(_525.z, 0.0f) * _532) + _533;
  if (_colorGradingParams.w > 0.0f) {
    _547 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _564 = (((max(0.0f, (1.0f - _542)) - _542) * _547) + _542);
    _565 = (((max(0.0f, (1.0f - _539)) - _539) * _547) + _539);
    _566 = (((max(0.0f, (1.0f - _536)) - _536) * _547) + _536);
  } else {
    _564 = _542;
    _565 = _539;
    _566 = _536;
  }
  _569 = (pow(_566, 0.012683313f));
  _572 = (pow(_565, 0.012683313f));
  _575 = (pow(_564, 0.012683313f));
  _577 = (TEXCOORD.x * 2.0f) + -1.0f;
  _578 = TEXCOORD.y * 2.0f;
  _579 = 1.0f - _578;
  _591 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _579, ((_projToPrevProj[3].x) * _577)));
  _601 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _579, ((_projToPrevProj[0].x) * _577))) + (_projToPrevProj[0].w)) / _591) - _577;
  _611 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _579, ((_projToPrevProj[1].x) * _577))) + (_projToPrevProj[1].w)) / _591) - _579;
  if (_localToneMappingParams.w > 0.0f) {
    _623 = saturate(1.0f - (sqrt((_611 * _611) + (_601 * _601)) * 2.0f));  // [sem: expr_sat]
  } else {
    _623 = 1.0f;  // [sem: expr_sat]
  }
  _624 = abs(_577);
  _626 = abs(_578 + -1.0f);
  _632 = saturate(1.0f - ((_623 * _postProcessParams.x) * dot(float2(_624, _626), float2(_624, _626))));  // [sem: expr_sat]
  _644 = exp2(log2(exp2(log2(max(0.0f, (_569 + -0.8359375f)) / (18.851562f - (_569 * 18.6875f))) * 6.277395f) * _632) * 0.15930176f);
  _656 = exp2(log2(exp2(log2(max(0.0f, (_572 + -0.8359375f)) / (18.851562f - (_572 * 18.6875f))) * 6.277395f) * _632) * 0.15930176f);
  _668 = exp2(log2(exp2(log2(max(0.0f, (_575 + -0.8359375f)) / (18.851562f - (_575 * 18.6875f))) * 6.277395f) * _632) * 0.15930176f);
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _706 = exp2(log2((1.0f / ((_644 * 18.6875f) + 1.0f)) * ((_644 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _707 = exp2(log2((1.0f / ((_656 * 18.6875f) + 1.0f)) * ((_656 * 18.851562f) + 0.8359375f)) * 78.84375f);
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
