Texture3D<float4> __3__36__0__0__g_displayRenderingTransformLUT : register(t155, space36);

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
  float4 _17;
  float _40;
  float _41;
  float _85;
  float _86;
  float _87;
  float _437;
  float _664;
  float _665;
  float _666;
  float _699;
  float _700;
  float _701;
  float _783;
  float _841;
  float _842;
  float _843;
  float _51;
  float _52;
  float _56;
  float _61;
  float _65;
  float _70;
  float _74;
  float _80;
  float _93;
  float _123;
  float _125;
  float _127;
  float _141;
  float _142;
  float _143;
  float _145;
  float _164;
  float _165;
  float _166;
  float4 _196;
  float _202;
  float _203;
  float _204;
  float _238;
  float _239;
  float _240;
  float _241;
  float _260;
  float _261;
  float _262;
  float4 _290;
  float _297;
  float _301;
  float _303;
  float _304;
  float _305;
  float _339;
  float _340;
  float _341;
  float _342;
  float _361;
  float _362;
  float _363;
  float4 _391;
  float _398;
  float _399;
  float _400;
  float _401;
  float _403;
  float _410;
  float _411;
  float _412;
  float _414;
  float _426;
  float _428;
  float _438;
  float _439;
  float _440;
  float _474;
  float _475;
  float _476;
  float _477;
  float _496;
  float _497;
  float _498;
  float4 _526;
  float _530;
  float _531;
  float _532;
  float _534;
  float _542;
  float _557;
  float _558;
  float _559;
  float _560;
  float _579;
  float _580;
  float _581;
  float4 _609;
  float _620;
  float _627;
  float _630;
  float _646;
  float _647;
  float _648;
  float _653;
  float _654;
  float _655;
  float _656;
  float _670;
  float _674;
  float _675;
  float _676;
  float _677;
  float _682;
  float _708;
  float _709;
  float _710;
  float _736;
  float _737;
  float _738;
  float _766;
  float _769;
  float _770;
  float _786;
  float _787;
  float _791;
  float _801;
  float _802;
  float _803;
  _17 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _40 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
  } else {
    _40 = _17.x;
    _41 = _17.z;
  }
  if (_slopeParams.w > 0.0f) {
    _51 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _52 = _51 * 0.7692308f;
    _56 = frac(abs(_52));
    _61 = _51 * 0.08130081f;
    _65 = frac(abs(_61));
    _70 = ((select((_61 >= (-0.0f - _61)), _65, (-0.0f - _65)) * 1230.0f) + 10.0f) * ((select((_52 >= (-0.0f - _52)), _56, (-0.0f - _56)) * 13.0f) + 1.0f);
    _74 = frac(abs(_70));
    _80 = ((0.0075000525f - (select((_70 >= (-0.0f - _70)), _74, (-0.0f - _74)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _85 = (_80 * _40);
    _86 = (_80 * _17.y);
    _87 = (_80 * _41);
  } else {
    _85 = _40;
    _86 = _17.y;
    _87 = _41;
  }
  _93 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
  _123 = _93 * _slopeParams.x;
  _125 = _93 * _slopeParams.y;
  _127 = _93 * _slopeParams.z;
  _141 = exp2(log2(max(0.0f, (_offsetParams.x + (_123 * max(0.0f, (((_85 * 1.70505f) - (_86 * 0.62179f)) - (_87 * 0.08326f))))))) * _powerParams.x);
  _142 = exp2(log2(max(0.0f, (_offsetParams.y + (_125 * max(0.0f, (((_86 * 1.1408f) - (_85 * 0.13026f)) - (_87 * 0.01055f))))))) * _powerParams.y);
  _143 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_85 * -0.024f) - (_86 * 0.12897f)) + (_87 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _145 = dot(float3(_141, _142, _143), float3(0.212671f, 0.71516f, 0.072169f));
  _164 = exp2(log2((lerp(_145, _141, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _165 = exp2(log2((lerp(_145, _142, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _166 = exp2(log2((lerp(_145, _143, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
  _196 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_164 * 18.6875f) + 1.0f)) * ((_164 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_165 * 18.6875f) + 1.0f)) * ((_165 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_166 * 18.6875f) + 1.0f)) * ((_166 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
  _202 = _localToneMappingParams.x * _85;
  _203 = _localToneMappingParams.x * _86;
  _204 = _localToneMappingParams.x * _87;
  _238 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_202 * 1.70505f) - (_203 * 0.62179f)) - (_204 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _239 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_203 * 1.1408f) - (_202 * 0.13026f)) - (_204 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _240 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_202 * -0.024f) - (_203 * 0.12897f)) + (_204 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _241 = dot(float3(_238, _239, _240), float3(0.212671f, 0.71516f, 0.072169f));
  _260 = exp2(log2((lerp(_241, _238, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _261 = exp2(log2((lerp(_241, _239, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _262 = exp2(log2((lerp(_241, _240, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
  _290 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_260 * 18.6875f) + 1.0f)) * ((_260 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_261 * 18.6875f) + 1.0f)) * ((_261 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_262 * 18.6875f) + 1.0f)) * ((_262 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
  _297 = dot(float3(saturate(_290.x), saturate(_290.y), saturate(_290.z)), float3(0.1f, 0.7f, 0.2f));
  _301 = dot(float3(saturate(_196.x), saturate(_196.y), saturate(_196.z)), float3(0.1f, 0.7f, 0.2f));
  _303 = _localToneMappingParams.y * _85;
  _304 = _localToneMappingParams.y * _86;
  _305 = _localToneMappingParams.y * _87;
  _339 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_303 * 1.70505f) - (_304 * 0.62179f)) - (_305 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _340 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_304 * 1.1408f) - (_303 * 0.13026f)) - (_305 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _341 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_303 * -0.024f) - (_304 * 0.12897f)) + (_305 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _342 = dot(float3(_339, _340, _341), float3(0.212671f, 0.71516f, 0.072169f));
  _361 = exp2(log2((lerp(_342, _339, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _362 = exp2(log2((lerp(_342, _340, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _363 = exp2(log2((lerp(_342, _341, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
  _391 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_361 * 18.6875f) + 1.0f)) * ((_361 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_362 * 18.6875f) + 1.0f)) * ((_362 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_363 * 18.6875f) + 1.0f)) * ((_363 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
  _398 = dot(float3(saturate(_391.x), saturate(_391.y), saturate(_391.z)), float3(0.1f, 0.7f, 0.2f));
  _399 = _297 + -0.5f;
  _400 = _301 + -0.5f;
  _401 = _398 + -0.5f;
  _403 = _localToneMappingParams.z * -0.7213475f;
  _410 = exp2((_399 * _399) * _403);
  _411 = exp2((_400 * _400) * _403);
  _412 = exp2((_401 * _401) * _403);
  _414 = dot(float3(_410, _411, _412), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _426 = dot(float3(max(_196.x, 0.0f), max(_196.y, 0.0f), max(_196.z, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _428 = max(dot(float3(((_410 / _414) * _297), ((_411 / _414) * _301), ((_412 / _414) * _398)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _426;
  if (!(_426 > 0.007f)) {
    _437 = ((((_426 * _426) * 20408.16f) * (_428 + -1.0f)) + 1.0f);
  } else {
    _437 = _428;
  }
  _438 = _437 * _85;
  _439 = _437 * _86;
  _440 = _437 * _87;
  _474 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_438 * 1.70505f) - (_439 * 0.62179f)) - (_440 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _475 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_439 * 1.1408f) - (_438 * 0.13026f)) - (_440 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _476 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_438 * -0.024f) - (_439 * 0.12897f)) + (_440 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _477 = dot(float3(_474, _475, _476), float3(0.212671f, 0.71516f, 0.072169f));
  _496 = exp2(log2((lerp(_477, _474, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _497 = exp2(log2((lerp(_477, _475, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _498 = exp2(log2((lerp(_477, _476, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
  _526 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_496 * 18.6875f) + 1.0f)) * ((_496 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_497 * 18.6875f) + 1.0f)) * ((_497 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_498 * 18.6875f) + 1.0f)) * ((_498 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
  _530 = max(_526.x, 0.0f);  // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod_derived]
  _531 = max(_526.y, 0.0f);  // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod_derived]
  _532 = max(_526.z, 0.0f);  // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod_derived]
  _534 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_534.x < 1e-07f) || (_534.x == 1.0f))) {
    _542 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _557 = exp2(log2(max(0.0f, _offsetParams.x)) * _powerParams.x);
    _558 = exp2(log2(max(0.0f, _offsetParams.y)) * _powerParams.y);
    _559 = exp2(log2(max(0.0f, _offsetParams.z)) * _powerParams.z);
    _560 = dot(float3(_557, _558, _559), float3(0.212671f, 0.71516f, 0.072169f));
    _579 = exp2(log2((lerp(_560, _557, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    _580 = exp2(log2((lerp(_560, _558, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    _581 = exp2(log2((lerp(_560, _559, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
    _609 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_579 * 18.6875f) + 1.0f)) * ((_579 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_580 * 18.6875f) + 1.0f)) * ((_580 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_581 * 18.6875f) + 1.0f)) * ((_581 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
    _620 = max(max(_531, _609.y), max(max(_609.y, _609.y), _609.y));
    _627 = sqrt(saturate(min(min(min(_531, _609.y), min(min(_609.y, _609.y), _609.y)), (1.0f - _620)) * (1.0f / _620))) * (-1.0f / (((1.0f - _542) * 8.0f) + (_542 * 5.0f)));
    _630 = 1.0f / ((_627 * 4.0f) + 1.0f);
    _646 = saturate((((_609.x * 4.0f) * _627) + _530) * _630) - _530;
    _647 = saturate((((_609.y * 4.0f) * _627) + _531) * _630) - _531;
    _648 = saturate((((_609.z * 4.0f) * _627) + _532) * _630) - _532;
    _653 = 1.0f - dot(float3(abs(_646), abs(_647), abs(_648)), float3(0.212671f, 0.71516f, 0.072169f));
    _654 = _653 * _653;
    _655 = _654 * _654;
    _656 = _655 * _655;
    _664 = ((_656 * _646) + _530);
    _665 = ((_656 * _647) + _531);
    _666 = ((_656 * _648) + _532);
  } else {
    _664 = _530;
    _665 = _531;
    _666 = _532;
  }
  _670 = 1.0f - abs(_etcParams.w);
  _674 = saturate(_etcParams.w);  // [sem: expr_sat]
  _675 = (_670 * _664) + _674;
  _676 = (_670 * _665) + _674;
  _677 = (_670 * _666) + _674;
  if (_colorGradingParams.w > 0.0f) {
    _682 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _699 = (((max(0.0f, (1.0f - _675)) - _675) * _682) + _675);
    _700 = (((max(0.0f, (1.0f - _676)) - _676) * _682) + _676);
    _701 = (((max(0.0f, (1.0f - _677)) - _677) * _682) + _677);
  } else {
    _699 = _675;
    _700 = _676;
    _701 = _677;
  }
  _708 = (pow(_699, 0.012683313f));
  _709 = (pow(_700, 0.012683313f));
  _710 = (pow(_701, 0.012683313f));
  _736 = (TEXCOORD.x * 2.0f) + -1.0f;
  _737 = TEXCOORD.y * 2.0f;
  _738 = 1.0f - _737;
  _766 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _738, ((_projToPrevProj[3].x) * _736))) + (_projToPrevProj[3].w);
  _769 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _738, ((_projToPrevProj[0].x) * _736))) + (_projToPrevProj[0].w)) / _766) - _736;
  _770 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _738, ((_projToPrevProj[1].x) * _736))) + (_projToPrevProj[1].w)) / _766) - _738;
  if (_localToneMappingParams.w > 0.0f) {
    _783 = saturate(1.0f - (sqrt((_770 * _770) + (_769 * _769)) * 2.0f));  // [sem: expr_sat]
  } else {
    _783 = 1.0f;  // [sem: expr_sat]
  }
  _786 = abs(_736);
  _787 = abs(_737 + -1.0f);
  _791 = saturate(1.0f - ((_783 * _postProcessParams.x) * dot(float2(_786, _787), float2(_786, _787))));  // [sem: expr_sat]
  _801 = exp2(log2(_791 * exp2(log2(max(0.0f, (_708 + -0.8359375f)) / (18.851562f - (_708 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _802 = exp2(log2(_791 * exp2(log2(max(0.0f, (_709 + -0.8359375f)) / (18.851562f - (_709 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _803 = exp2(log2(_791 * exp2(log2(max(0.0f, (_710 + -0.8359375f)) / (18.851562f - (_710 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _841 = exp2(log2((1.0f / ((_801 * 18.6875f) + 1.0f)) * ((_801 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _842 = exp2(log2((1.0f / ((_802 * 18.6875f) + 1.0f)) * ((_802 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _843 = exp2(log2((1.0f / ((_803 * 18.6875f) + 1.0f)) * ((_803 * 18.851562f) + 0.8359375f)) * 78.84375f);
    } else {
      _841 = 0.0f;
      _842 = 0.0f;
      _843 = 0.0f;
    }
  } else {
    _841 = 0.0f;
    _842 = 0.0f;
    _843 = 0.0f;
  }
  SV_Target.x = _841;
  SV_Target.y = _842;
  SV_Target.z = _843;
  SV_Target.w = _17.w;
  return SV_Target;
}
