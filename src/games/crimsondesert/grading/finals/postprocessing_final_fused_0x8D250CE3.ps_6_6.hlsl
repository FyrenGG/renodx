Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b16, space35) {
  float4 _time : packoffset(c000.x);
  float4 _timeNoScale : packoffset(c001.x);
  uint4 _frameNumber : packoffset(c002.x);
  float4 _screenSizeAndInvSize : packoffset(c003.x);
  float4 _bufferSizeAndInvSize : packoffset(c004.x);
  float4 _hiZUVScaleAndInvScale : packoffset(c005.x);
  float4 _resolutionScale : packoffset(c006.x);
  float4 _temporalReprojectionParams : packoffset(c007.x);
  float4 _viewPos : packoffset(c008.x);
  float4 _viewDir : packoffset(c009.x);
  column_major float4x4 _viewProj : packoffset(c010.x);
  column_major float4x4 _viewProjNoJitter : packoffset(c014.x);
  column_major float4x4 _viewProjRelative : packoffset(c018.x);
  column_major float4x4 _viewProjRelativeNoJitter : packoffset(c022.x);
  column_major float4x4 _invViewProj : packoffset(c026.x);
  column_major float4x4 _invViewProjRelative : packoffset(c030.x);
  column_major float4x4 _invViewProjRelativeNoJitter : packoffset(c034.x);
  column_major float4x4 _viewProjRelativeOrtho : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  column_major float4x4 _view : packoffset(c062.x);
  column_major float4x4 _viewRelative : packoffset(c066.x);
  column_major float4x4 _viewRelativePrev : packoffset(c070.x);
  column_major float4x4 _proj : packoffset(c074.x);
  column_major float4x4 _projNoJitter : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  column_major float4x4 _viewProjNoJitterPrev : packoffset(c083.x);
  column_major float4x4 _viewProjRelativePrev : packoffset(c087.x);
  column_major float4x4 _viewProjRelativeNoJitterPrev : packoffset(c091.x);
  column_major float4x4 _invViewProjPrev : packoffset(c095.x);
  column_major float4x4 _invViewProjRelativePrev : packoffset(c099.x);
  column_major float4x4 _projToPrevProj : packoffset(c103.x);
  column_major float4x4 _projToPrevProjNoTranslation : packoffset(c107.x);
  column_major float4x4 _viewProjectionTexScale : packoffset(c111.x);
  float4 _temporalAAJitter : packoffset(c115.x);
  float4 _temporalAAJitterParams : packoffset(c116.x);
  float4 _frustumPlanes[6] : packoffset(c117.x);
  float4 _frustumPlanesPrev[6] : packoffset(c123.x);
  float4 _frustumCornerDirs[4] : packoffset(c129.x);
  float4 _screenPercentage : packoffset(c133.x);
  float4 _nearFarProj : packoffset(c134.x);
  float4 _renderingOriginPos : packoffset(c135.x);
  float4 _renderingOriginPosPrev : packoffset(c136.x);
  float4 _lodMaskRenderRate : packoffset(c137.x);
  float4 _terrainNormalParams : packoffset(c138.x);
  int4 _hiZMapInfo : packoffset(c139.x);
  int4 _hiZMapInfoCurrent : packoffset(c140.x);
  float4 _treeParams : packoffset(c141.x);
  uint4 _clusterSize : packoffset(c142.x);
  uint4 _globalLightParams : packoffset(c143.x);
  float4 _bevelParams : packoffset(c144.x);
  float4 _variableRateShadingParams : packoffset(c145.x);
  float4 _cavityParams : packoffset(c146.x);
  float4 _customRenderPassSizeInvSize : packoffset(c147.x);
  uint4 _impostorParams : packoffset(c148.x);
  float4 _clusterDecalSizeAndInvSize : packoffset(c149.x);
  uint4 _globalWindParams : packoffset(c150.x);
  float4 _windFluidVolumeParams : packoffset(c151.x);
  float4 _windFluidTextureParams : packoffset(c152.x);
  float4 _raytracingAccelerationStructureOrigin : packoffset(c153.x);
  float4 _debugBaseColor : packoffset(c154.x);
  float4 _debugNormal : packoffset(c155.x);
  float4 _debugMaterial : packoffset(c156.x);
  float4 _debugMultiplier : packoffset(c157.x);
  uint2 _debugBaseColor16 : packoffset(c158.x);
  uint2 _debugNormal16 : packoffset(c158.z);
  uint2 _debugMaterial16 : packoffset(c159.x);
  uint2 _debugMultiplier16 : packoffset(c159.z);
  float4 _debugCursorWorldPos : packoffset(c160.x);
  uint4 _debugRenderToggle01 : packoffset(c161.x);
  uint4 _debugTreeShapeVariation : packoffset(c162.x);
  float4 _positionBasedDynamicsParameter : packoffset(c163.x);
  float _effectiveMetallicForVelvet : packoffset(c164.x);
  float _debugCharacterSnowRate : packoffset(c164.y);
  uint _systemRandomSeed : packoffset(c164.z);
  uint _skinnedMeshDebugFlag : packoffset(c164.w);
  float4 _viewPosShifted : packoffset(c165.x);
  float4 _viewPosShiftedPrev : packoffset(c166.x);
  float4 _viewTileRelativePos : packoffset(c167.x);
  float4 _viewTileRelativePosPrev : packoffset(c168.x);
  int2 _viewTileIndex : packoffset(c169.x);
  int2 _viewTileIndexPrev : packoffset(c169.z);
  float4 _worldVolume : packoffset(c170.x);
  float3 _diffViewPosAccurate : packoffset(c171.x);
  uint _isPhotosensitiveMode_isAllolwBlood : packoffset(c171.w);
  float _earthRadius : packoffset(c172.x);
  float3 _sceneConstantDummy : packoffset(c172.y);
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
  float _316;
  float _446;
  float _447;
  float _448;
  float _484;
  float _485;
  float _486;
  float _587;
  float _609;
  float _610;
  float _611;
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
  float _156;
  float _157;
  float _158;
  float _161;
  float _162;
  float _163;
  float _197;
  float _198;
  float _199;
  float _200;
  float _216;
  float _220;
  float _222;
  float _223;
  float _224;
  float _258;
  float _259;
  float _260;
  float _261;
  float _277;
  float _278;
  float _279;
  float _280;
  float _282;
  float _289;
  float _290;
  float _291;
  float _293;
  float _305;
  float _307;
  float _317;
  float _318;
  float _319;
  float _353;
  float _354;
  float _355;
  float _356;
  float _369;
  float _370;
  float _371;
  float _373;
  float _381;
  float _396;
  float _397;
  float _398;
  float _399;
  float _410;
  float _419;
  float _426;
  float _429;
  float _455;
  float _459;
  float _460;
  float _461;
  float _462;
  float _467;
  float _492;
  float _496;
  float _497;
  float _498;
  float _499;
  float _529;
  float _540;
  float _541;
  float _542;
  float _570;
  float _573;
  float _574;
  float _590;
  float _591;
  float _595;
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
  _156 = saturate(lerp(_146, _142, _powerParams.w));  // [sem: expr_sat]
  _157 = saturate(lerp(_146, _143, _powerParams.w));  // [sem: expr_sat]
  _158 = saturate(lerp(_146, _144, _powerParams.w));  // [sem: expr_sat]
  _161 = _localToneMappingParams.x * _86;
  _162 = _localToneMappingParams.x * _87;
  _163 = _localToneMappingParams.x * _88;
  _197 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_161 * 1.70505f) - (_162 * 0.62179f)) - (_163 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _198 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_162 * 1.1408f) - (_161 * 0.13026f)) - (_163 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _199 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_161 * -0.024f) - (_162 * 0.12897f)) + (_163 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _200 = dot(float3(_197, _198, _199), float3(0.212671f, 0.71516f, 0.072169f));
  _216 = dot(float3(saturate(saturate(lerp(_200, _197, _powerParams.w))), saturate(saturate(lerp(_200, _198, _powerParams.w))), saturate(saturate(lerp(_200, _199, _powerParams.w)))), float3(0.1f, 0.7f, 0.2f));
  _220 = dot(float3(saturate(_156), saturate(_157), saturate(_158)), float3(0.1f, 0.7f, 0.2f));
  _222 = _localToneMappingParams.y * _86;
  _223 = _localToneMappingParams.y * _87;
  _224 = _localToneMappingParams.y * _88;
  _258 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_222 * 1.70505f) - (_223 * 0.62179f)) - (_224 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _259 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_223 * 1.1408f) - (_222 * 0.13026f)) - (_224 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _260 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_222 * -0.024f) - (_223 * 0.12897f)) + (_224 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _261 = dot(float3(_258, _259, _260), float3(0.212671f, 0.71516f, 0.072169f));
  _277 = dot(float3(saturate(saturate(lerp(_261, _258, _powerParams.w))), saturate(saturate(lerp(_261, _259, _powerParams.w))), saturate(saturate(lerp(_261, _260, _powerParams.w)))), float3(0.1f, 0.7f, 0.2f));
  _278 = _216 + -0.5f;
  _279 = _220 + -0.5f;
  _280 = _277 + -0.5f;
  _282 = _localToneMappingParams.z * -0.7213475f;
  _289 = exp2((_278 * _278) * _282);
  _290 = exp2((_279 * _279) * _282);
  _291 = exp2((_280 * _280) * _282);
  _293 = dot(float3(_289, _290, _291), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _305 = dot(float3(max(_156, 0.0f), max(_157, 0.0f), max(_158, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _307 = max(dot(float3(((_289 / _293) * _216), ((_290 / _293) * _220), ((_291 / _293) * _277)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _305;
  if (!(_305 > 0.007f)) {
    _316 = ((((_305 * _305) * 20408.16f) * (_307 + -1.0f)) + 1.0f);
  } else {
    _316 = _307;
  }
  _317 = _316 * _86;
  _318 = _316 * _87;
  _319 = _316 * _88;
  _353 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_317 * 1.70505f) - (_318 * 0.62179f)) - (_319 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _354 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_318 * 1.1408f) - (_317 * 0.13026f)) - (_319 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _355 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_317 * -0.024f) - (_318 * 0.12897f)) + (_319 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _356 = dot(float3(_353, _354, _355), float3(0.212671f, 0.71516f, 0.072169f));
  _369 = max(saturate(lerp(_356, _353, _powerParams.w)), 0.0f);
  _370 = max(saturate(lerp(_356, _354, _powerParams.w)), 0.0f);
  _371 = max(saturate(lerp(_356, _355, _powerParams.w)), 0.0f);
  _373 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_373.x < 1e-07f) || (_373.x == 1.0f))) {
    _381 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _396 = exp2(log2(max(0.0f, _offsetParams.x)) * _powerParams.x);
    _397 = exp2(log2(max(0.0f, _offsetParams.y)) * _powerParams.y);
    _398 = exp2(log2(max(0.0f, _offsetParams.z)) * _powerParams.z);
    _399 = dot(float3(_396, _397, _398), float3(0.212671f, 0.71516f, 0.072169f));
    _410 = saturate(lerp(_399, _397, _powerParams.w));  // [sem: expr_sat]
    _419 = max(max(_370, _410), max(max(_410, _410), _410));
    _426 = sqrt(saturate(min(min(min(_370, _410), min(min(_410, _410), _410)), (1.0f - _419)) * (1.0f / _419))) * (-1.0f / (((1.0f - _381) * 8.0f) + (_381 * 5.0f)));
    _429 = 1.0f / ((_426 * 4.0f) + 1.0f);
    _446 = saturate((((saturate(lerp(_399, _396, _powerParams.w)) * 4.0f) * _426) + _369) * _429);  // [sem: expr_sat]
    _447 = saturate((((_410 * 4.0f) * _426) + _370) * _429);  // [sem: expr_sat]
    _448 = saturate((((saturate(lerp(_399, _398, _powerParams.w)) * 4.0f) * _426) + _371) * _429);  // [sem: expr_sat]
  } else {
    _446 = _369;  // [sem: expr_sat]
    _447 = _370;  // [sem: expr_sat]
    _448 = _371;  // [sem: expr_sat]
  }
  _455 = 1.0f - abs(_etcParams.w);
  _459 = saturate(_etcParams.w);  // [sem: expr_sat]
  _460 = (_455 * saturate(_446)) + _459;
  _461 = (_455 * saturate(_447)) + _459;
  _462 = (_455 * saturate(_448)) + _459;
  if (_colorGradingParams.w > 0.0f) {
    _467 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _484 = (((max(0.0f, (1.0f - _460)) - _460) * _467) + _460);
    _485 = (((max(0.0f, (1.0f - _461)) - _461) * _467) + _461);
    _486 = (((max(0.0f, (1.0f - _462)) - _462) * _467) + _462);
  } else {
    _484 = _460;
    _485 = _461;
    _486 = _462;
  }
  _492 = _userImageAdjust.y + 1.0f;
  _496 = _userImageAdjust.x + 0.5f;
  _497 = ((_484 + -0.5f) * _492) + _496;
  _498 = ((_485 + -0.5f) * _492) + _496;
  _499 = ((_486 + -0.5f) * _492) + _496;
  _529 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _540 = (TEXCOORD.x * 2.0f) + -1.0f;
  _541 = TEXCOORD.y * 2.0f;
  _542 = 1.0f - _541;
  _570 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _542, ((_projToPrevProj[3].x) * _540))) + (_projToPrevProj[3].w);
  _573 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _542, ((_projToPrevProj[0].x) * _540))) + (_projToPrevProj[0].w)) / _570) - _540;
  _574 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _542, ((_projToPrevProj[1].x) * _540))) + (_projToPrevProj[1].w)) / _570) - _542;
  if (_localToneMappingParams.w > 0.0f) {
    _587 = saturate(1.0f - (sqrt((_574 * _574) + (_573 * _573)) * 2.0f));  // [sem: expr_sat]
  } else {
    _587 = 1.0f;  // [sem: expr_sat]
  }
  _590 = abs(_540);
  _591 = abs(_541 + -1.0f);
  _595 = saturate(1.0f - ((_587 * _postProcessParams.x) * dot(float2(_590, _591), float2(_590, _591))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _609 = (_595 * exp2(log2(saturate(mad(_colorBlind0.z, _499, mad(_colorBlind0.y, _498, (_colorBlind0.x * _497))))) * _529));
      _610 = (_595 * exp2(log2(saturate(mad(_colorBlind1.z, _499, mad(_colorBlind1.y, _498, (_colorBlind1.x * _497))))) * _529));
      _611 = (_595 * exp2(log2(saturate(mad(_colorBlind2.z, _499, mad(_colorBlind2.y, _498, (_colorBlind2.x * _497))))) * _529));
    } else {
      _609 = 0.0f;
      _610 = 0.0f;
      _611 = 0.0f;
    }
  } else {
    _609 = 0.0f;
    _610 = 0.0f;
    _611 = 0.0f;
  }
  SV_Target.x = _609;
  SV_Target.y = _610;
  SV_Target.z = _611;
  SV_Target.w = _18.w;
  return SV_Target;
}
