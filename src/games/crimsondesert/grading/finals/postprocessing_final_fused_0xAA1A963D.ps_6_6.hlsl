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

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
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
  float4 _18;
  float _41;
  float _42;
  float _86;
  float _87;
  float _88;
  float _404;
  float _588;
  float _589;
  float _590;
  float _626;
  float _627;
  float _628;
  float _729;
  float _751;
  float _752;
  float _753;
  float _52;
  float _53;
  float _57;
  float _62;
  float _66;
  float _71;
  float _75;
  float _81;
  float _94;
  float _124;
  float _126;
  float _128;
  float _142;
  float _143;
  float _144;
  float _146;
  float _153;
  float _154;
  float _155;
  float _190;
  float _191;
  float _192;
  float _195;
  float _196;
  float _197;
  float _231;
  float _232;
  float _233;
  float _234;
  float _241;
  float _242;
  float _243;
  float _277;
  float _281;
  float _283;
  float _284;
  float _285;
  float _319;
  float _320;
  float _321;
  float _322;
  float _329;
  float _330;
  float _331;
  float _365;
  float _366;
  float _367;
  float _368;
  float _370;
  float _377;
  float _378;
  float _379;
  float _381;
  float _393;
  float _395;
  float _405;
  float _406;
  float _407;
  float _441;
  float _442;
  float _443;
  float _444;
  float _451;
  float _452;
  float _453;
  float _484;
  float _485;
  float _486;
  float _488;
  float _496;
  float _511;
  float _512;
  float _513;
  float _514;
  float _521;
  float _522;
  float _523;
  float _552;
  float _561;
  float _568;
  float _571;
  float _597;
  float _601;
  float _602;
  float _603;
  float _604;
  float _609;
  float _634;
  float _638;
  float _639;
  float _640;
  float _641;
  float _671;
  float _682;
  float _683;
  float _684;
  float _712;
  float _715;
  float _716;
  float _732;
  float _733;
  float _737;
  _18 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
    _42 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
  } else {
    _41 = _18.x;
    _42 = _18.z;
  }
  if (_slopeParams.w > 0.0f) {
    _52 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _53 = _52 * 0.7692308f;
    _57 = frac(abs(_53));
    _62 = _52 * 0.08130081f;
    _66 = frac(abs(_62));
    _71 = ((select((_62 >= (-0.0f - _62)), _66, (-0.0f - _66)) * 1230.0f) + 10.0f) * ((select((_53 >= (-0.0f - _53)), _57, (-0.0f - _57)) * 13.0f) + 1.0f);
    _75 = frac(abs(_71));
    _81 = ((0.0075000525f - (select((_71 >= (-0.0f - _71)), _75, (-0.0f - _75)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _86 = (_81 * _41);
    _87 = (_81 * _18.y);
    _88 = (_81 * _42);
  } else {
    _86 = _41;
    _87 = _18.y;
    _88 = _42;
  }
  _94 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
  _124 = _94 * _slopeParams.x;
  _126 = _94 * _slopeParams.y;
  _128 = _94 * _slopeParams.z;
  _142 = exp2(log2(max(0.0f, (_offsetParams.x + (_124 * max(0.0f, (((_86 * 1.70505f) - (_87 * 0.62179f)) - (_88 * 0.08326f))))))) * _powerParams.x);
  _143 = exp2(log2(max(0.0f, (_offsetParams.y + (_126 * max(0.0f, (((_87 * 1.1408f) - (_86 * 0.13026f)) - (_88 * 0.01055f))))))) * _powerParams.y);
  _144 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_86 * -0.024f) - (_87 * 0.12897f)) + (_88 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _146 = dot(float3(_142, _143, _144), float3(0.212671f, 0.71516f, 0.072169f));
  _153 = ((_142 - _146) * _powerParams.w) + _146;
  _154 = ((_143 - _146) * _powerParams.w) + _146;
  _155 = ((_144 - _146) * _powerParams.w) + _146;
  // [sem: expr_sat]
  _190 = saturate(saturate((((_toneMapParams0.x * _153) + _toneMapParams0.y) * _153) / ((((_toneMapParams0.z * _153) + _toneMapParams0.w) * _153) + _toneMapParams1.x)));
  // [sem: expr_sat]
  _191 = saturate(saturate((((_toneMapParams0.x * _154) + _toneMapParams0.y) * _154) / ((((_toneMapParams0.z * _154) + _toneMapParams0.w) * _154) + _toneMapParams1.x)));
  // [sem: expr_sat]
  _192 = saturate(saturate((((_toneMapParams0.x * _155) + _toneMapParams0.y) * _155) / ((((_toneMapParams0.z * _155) + _toneMapParams0.w) * _155) + _toneMapParams1.x)));
  _195 = _localToneMappingParams.x * _86;
  _196 = _localToneMappingParams.x * _87;
  _197 = _localToneMappingParams.x * _88;
  _231 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_195 * 1.70505f) - (_196 * 0.62179f)) - (_197 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _232 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_196 * 1.1408f) - (_195 * 0.13026f)) - (_197 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _233 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_195 * -0.024f) - (_196 * 0.12897f)) + (_197 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _234 = dot(float3(_231, _232, _233), float3(0.212671f, 0.71516f, 0.072169f));
  _241 = ((_231 - _234) * _powerParams.w) + _234;
  _242 = ((_232 - _234) * _powerParams.w) + _234;
  _243 = ((_233 - _234) * _powerParams.w) + _234;
  _277 = dot(float3(saturate(saturate(saturate((((_241 * _toneMapParams0.x) + _toneMapParams0.y) * _241) / ((((_241 * _toneMapParams0.z) + _toneMapParams0.w) * _241) + _toneMapParams1.x)))), saturate(saturate(saturate((((_242 * _toneMapParams0.x) + _toneMapParams0.y) * _242) / ((((_242 * _toneMapParams0.z) + _toneMapParams0.w) * _242) + _toneMapParams1.x)))), saturate(saturate(saturate((((_243 * _toneMapParams0.x) + _toneMapParams0.y) * _243) / ((((_243 * _toneMapParams0.z) + _toneMapParams0.w) * _243) + _toneMapParams1.x))))), float3(0.1f, 0.7f, 0.2f));
  _281 = dot(float3(saturate(_190), saturate(_191), saturate(_192)), float3(0.1f, 0.7f, 0.2f));
  _283 = _localToneMappingParams.y * _86;
  _284 = _localToneMappingParams.y * _87;
  _285 = _localToneMappingParams.y * _88;
  _319 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_283 * 1.70505f) - (_284 * 0.62179f)) - (_285 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _320 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_284 * 1.1408f) - (_283 * 0.13026f)) - (_285 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _321 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_283 * -0.024f) - (_284 * 0.12897f)) + (_285 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _322 = dot(float3(_319, _320, _321), float3(0.212671f, 0.71516f, 0.072169f));
  _329 = ((_319 - _322) * _powerParams.w) + _322;
  _330 = ((_320 - _322) * _powerParams.w) + _322;
  _331 = ((_321 - _322) * _powerParams.w) + _322;
  _365 = dot(float3(saturate(saturate(saturate((((_329 * _toneMapParams0.x) + _toneMapParams0.y) * _329) / ((((_329 * _toneMapParams0.z) + _toneMapParams0.w) * _329) + _toneMapParams1.x)))), saturate(saturate(saturate((((_330 * _toneMapParams0.x) + _toneMapParams0.y) * _330) / ((((_330 * _toneMapParams0.z) + _toneMapParams0.w) * _330) + _toneMapParams1.x)))), saturate(saturate(saturate((((_331 * _toneMapParams0.x) + _toneMapParams0.y) * _331) / ((((_331 * _toneMapParams0.z) + _toneMapParams0.w) * _331) + _toneMapParams1.x))))), float3(0.1f, 0.7f, 0.2f));
  _366 = _277 + -0.5f;
  _367 = _281 + -0.5f;
  _368 = _365 + -0.5f;
  _370 = _localToneMappingParams.z * -0.7213475f;
  _377 = exp2((_366 * _366) * _370);
  _378 = exp2((_367 * _367) * _370);
  _379 = exp2((_368 * _368) * _370);
  _381 = dot(float3(_377, _378, _379), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _393 = dot(float3(max(_190, 0.0f), max(_191, 0.0f), max(_192, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _395 = max(dot(float3(((_377 / _381) * _277), ((_378 / _381) * _281), ((_379 / _381) * _365)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _393;
  if (!(_393 > 0.007f)) {
    _404 = ((((_393 * _393) * 20408.16f) * (_395 + -1.0f)) + 1.0f);
  } else {
    _404 = _395;
  }
  _405 = _404 * _86;
  _406 = _404 * _87;
  _407 = _404 * _88;
  _441 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_405 * 1.70505f) - (_406 * 0.62179f)) - (_407 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _442 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_406 * 1.1408f) - (_405 * 0.13026f)) - (_407 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _443 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_405 * -0.024f) - (_406 * 0.12897f)) + (_407 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _444 = dot(float3(_441, _442, _443), float3(0.212671f, 0.71516f, 0.072169f));
  _451 = ((_441 - _444) * _powerParams.w) + _444;
  _452 = ((_442 - _444) * _powerParams.w) + _444;
  _453 = ((_443 - _444) * _powerParams.w) + _444;
  _484 = max(saturate(saturate((((_451 * _toneMapParams0.x) + _toneMapParams0.y) * _451) / ((((_451 * _toneMapParams0.z) + _toneMapParams0.w) * _451) + _toneMapParams1.x))), 0.0f);
  _485 = max(saturate(saturate((((_452 * _toneMapParams0.x) + _toneMapParams0.y) * _452) / ((((_452 * _toneMapParams0.z) + _toneMapParams0.w) * _452) + _toneMapParams1.x))), 0.0f);
  _486 = max(saturate(saturate((((_453 * _toneMapParams0.x) + _toneMapParams0.y) * _453) / ((((_453 * _toneMapParams0.z) + _toneMapParams0.w) * _453) + _toneMapParams1.x))), 0.0f);
  _488 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_488.x < 1e-07f) || (_488.x == 1.0f))) {
    _496 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _511 = exp2(log2(max(0.0f, _offsetParams.x)) * _powerParams.x);
    _512 = exp2(log2(max(0.0f, _offsetParams.y)) * _powerParams.y);
    _513 = exp2(log2(max(0.0f, _offsetParams.z)) * _powerParams.z);
    _514 = dot(float3(_511, _512, _513), float3(0.212671f, 0.71516f, 0.072169f));
    _521 = ((_511 - _514) * _powerParams.w) + _514;
    _522 = ((_512 - _514) * _powerParams.w) + _514;
    _523 = ((_513 - _514) * _powerParams.w) + _514;
    // [sem: expr_sat]
    _552 = saturate(saturate((((_522 * _toneMapParams0.x) + _toneMapParams0.y) * _522) / ((((_522 * _toneMapParams0.z) + _toneMapParams0.w) * _522) + _toneMapParams1.x)));
    _561 = max(max(_485, _552), max(max(_552, _552), _552));
    _568 = sqrt(saturate(min(min(min(_485, _552), min(min(_552, _552), _552)), (1.0f - _561)) * (1.0f / _561))) * (-1.0f / (((1.0f - _496) * 8.0f) + (_496 * 5.0f)));
    _571 = 1.0f / ((_568 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _588 = saturate((((saturate(saturate((((_521 * _toneMapParams0.x) + _toneMapParams0.y) * _521) / ((((_521 * _toneMapParams0.z) + _toneMapParams0.w) * _521) + _toneMapParams1.x))) * 4.0f) * _568) + _484) * _571);
    _589 = saturate((((_552 * 4.0f) * _568) + _485) * _571);  // [sem: expr_sat]
    // [sem: expr_sat]
    _590 = saturate((((saturate(saturate((((_523 * _toneMapParams0.x) + _toneMapParams0.y) * _523) / ((((_523 * _toneMapParams0.z) + _toneMapParams0.w) * _523) + _toneMapParams1.x))) * 4.0f) * _568) + _486) * _571);
  } else {
    _588 = _484;  // [sem: expr_sat]
    _589 = _485;  // [sem: expr_sat]
    _590 = _486;  // [sem: expr_sat]
  }
  _597 = 1.0f - abs(_etcParams.w);
  _601 = saturate(_etcParams.w);  // [sem: expr_sat]
  _602 = (_597 * saturate(_588)) + _601;
  _603 = (_597 * saturate(_589)) + _601;
  _604 = (_597 * saturate(_590)) + _601;
  if (_colorGradingParams.w > 0.0f) {
    _609 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _626 = (((max(0.0f, (1.0f - _602)) - _602) * _609) + _602);
    _627 = (((max(0.0f, (1.0f - _603)) - _603) * _609) + _603);
    _628 = (((max(0.0f, (1.0f - _604)) - _604) * _609) + _604);
  } else {
    _626 = _602;
    _627 = _603;
    _628 = _604;
  }
  _634 = _userImageAdjust.y + 1.0f;
  _638 = _userImageAdjust.x + 0.5f;
  _639 = ((_626 + -0.5f) * _634) + _638;
  _640 = ((_627 + -0.5f) * _634) + _638;
  _641 = ((_628 + -0.5f) * _634) + _638;
  _671 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _682 = (TEXCOORD.x * 2.0f) + -1.0f;
  _683 = TEXCOORD.y * 2.0f;
  _684 = 1.0f - _683;
  _712 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _684, ((_projToPrevProj[3].x) * _682))) + (_projToPrevProj[3].w);
  _715 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _684, ((_projToPrevProj[0].x) * _682))) + (_projToPrevProj[0].w)) / _712) - _682;
  _716 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _684, ((_projToPrevProj[1].x) * _682))) + (_projToPrevProj[1].w)) / _712) - _684;
  if (_localToneMappingParams.w > 0.0f) {
    _729 = saturate(1.0f - (sqrt((_716 * _716) + (_715 * _715)) * 2.0f));  // [sem: expr_sat]
  } else {
    _729 = 1.0f;  // [sem: expr_sat]
  }
  _732 = abs(_682);
  _733 = abs(_683 + -1.0f);
  _737 = saturate(1.0f - ((_729 * _postProcessParams.x) * dot(float2(_732, _733), float2(_732, _733))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _751 = (_737 * exp2(log2(saturate(mad(_colorBlind0.z, _641, mad(_colorBlind0.y, _640, (_colorBlind0.x * _639))))) * _671));
      _752 = (_737 * exp2(log2(saturate(mad(_colorBlind1.z, _641, mad(_colorBlind1.y, _640, (_colorBlind1.x * _639))))) * _671));
      _753 = (_737 * exp2(log2(saturate(mad(_colorBlind2.z, _641, mad(_colorBlind2.y, _640, (_colorBlind2.x * _639))))) * _671));
    } else {
      _751 = 0.0f;
      _752 = 0.0f;
      _753 = 0.0f;
    }
  } else {
    _751 = 0.0f;
    _752 = 0.0f;
    _753 = 0.0f;
  }
  SV_Target.x = _751;
  SV_Target.y = _752;
  SV_Target.z = _753;
  SV_Target.w = _18.w;
  return SV_Target;
}
