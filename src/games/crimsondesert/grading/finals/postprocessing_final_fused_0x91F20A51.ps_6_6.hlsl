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
  float _457;
  float _681;
  float _682;
  float _683;
  float _719;
  float _720;
  float _721;
  float _822;
  float _844;
  float _845;
  float _846;
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
  float _156;
  float _157;
  float _160;
  float _163;
  float _166;
  float _188;
  float _189;
  float _190;
  float _203;
  float _204;
  float _205;
  float _208;
  float _209;
  float _210;
  float _244;
  float _245;
  float _246;
  float _247;
  float _254;
  float _257;
  float _258;
  float _261;
  float _264;
  float _267;
  float _289;
  float _290;
  float _291;
  float _310;
  float _314;
  float _316;
  float _317;
  float _318;
  float _352;
  float _353;
  float _354;
  float _355;
  float _362;
  float _365;
  float _366;
  float _369;
  float _372;
  float _375;
  float _397;
  float _398;
  float _399;
  float _418;
  float _419;
  float _420;
  float _421;
  float _423;
  float _430;
  float _431;
  float _432;
  float _434;
  float _446;
  float _448;
  float _458;
  float _459;
  float _460;
  float _494;
  float _495;
  float _496;
  float _497;
  float _504;
  float _507;
  float _508;
  float _511;
  float _514;
  float _517;
  float _539;
  float _540;
  float _541;
  float _557;
  float _558;
  float _559;
  float _561;
  float _569;
  float _584;
  float _585;
  float _586;
  float _587;
  float _594;
  float _597;
  float _598;
  float _601;
  float _604;
  float _607;
  float _629;
  float _630;
  float _631;
  float _645;
  float _654;
  float _661;
  float _664;
  float _690;
  float _694;
  float _695;
  float _696;
  float _697;
  float _702;
  float _727;
  float _731;
  float _732;
  float _733;
  float _734;
  float _764;
  float _775;
  float _776;
  float _777;
  float _805;
  float _808;
  float _809;
  float _825;
  float _826;
  float _830;
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
  _156 = (lerp(_146, _143, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _157 = (lerp(_146, _144, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _160 = mad(0.04823f, _157, mad(0.35458f, _156, (_153 * 0.9953167f)));
  _163 = mad(0.01566f, _157, mad(0.90834f, _156, (_153 * 0.12666667f)));
  _166 = mad(0.83777f, _157, mad(0.13383f, _156, (_153 * 0.047333334f)));
  _188 = (((_160 + 0.0245786f) * _160) + -9.0537e-05f) / ((((_160 * 0.983729f) + 0.432951f) * _160) + 0.238081f);
  _189 = (((_163 + 0.0245786f) * _163) + -9.0537e-05f) / ((((_163 * 0.983729f) + 0.432951f) * _163) + 0.238081f);
  _190 = (((_166 + 0.0245786f) * _166) + -9.0537e-05f) / ((((_166 * 0.983729f) + 0.432951f) * _166) + 0.238081f);
  _203 = saturate(saturate(mad(-0.07367f, _190, mad(-0.53108f, _189, (_188 * 1.60475f)))));  // [sem: expr_sat]
  _204 = saturate(saturate(mad(-0.00605f, _190, mad(1.10813f, _189, (_188 * -0.10208f)))));  // [sem: expr_sat]
  _205 = saturate(saturate(mad(1.07602f, _190, mad(-0.07276f, _189, (_188 * -0.00327f)))));  // [sem: expr_sat]
  _208 = _localToneMappingParams.x * _86;
  _209 = _localToneMappingParams.x * _87;
  _210 = _localToneMappingParams.x * _88;
  _244 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_208 * 1.70505f) - (_209 * 0.62179f)) - (_210 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _245 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_209 * 1.1408f) - (_208 * 0.13026f)) - (_210 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _246 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_208 * -0.024f) - (_209 * 0.12897f)) + (_210 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _247 = dot(float3(_244, _245, _246), float3(0.212671f, 0.71516f, 0.072169f));
  _254 = ((_244 - _247) * _powerParams.w) + _247;
  _257 = (lerp(_247, _245, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _258 = (lerp(_247, _246, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _261 = mad(0.04823f, _258, mad(0.35458f, _257, (_254 * 0.9953167f)));
  _264 = mad(0.01566f, _258, mad(0.90834f, _257, (_254 * 0.12666667f)));
  _267 = mad(0.83777f, _258, mad(0.13383f, _257, (_254 * 0.047333334f)));
  _289 = (((_261 + 0.0245786f) * _261) + -9.0537e-05f) / ((((_261 * 0.983729f) + 0.432951f) * _261) + 0.238081f);
  _290 = (((_264 + 0.0245786f) * _264) + -9.0537e-05f) / ((((_264 * 0.983729f) + 0.432951f) * _264) + 0.238081f);
  _291 = (((_267 + 0.0245786f) * _267) + -9.0537e-05f) / ((((_267 * 0.983729f) + 0.432951f) * _267) + 0.238081f);
  _310 = dot(float3(saturate(saturate(saturate(mad(-0.07367f, _291, mad(-0.53108f, _290, (_289 * 1.60475f)))))), saturate(saturate(saturate(mad(-0.00605f, _291, mad(1.10813f, _290, (_289 * -0.10208f)))))), saturate(saturate(saturate(mad(1.07602f, _291, mad(-0.07276f, _290, (_289 * -0.00327f))))))), float3(0.1f, 0.7f, 0.2f));
  _314 = dot(float3(saturate(_203), saturate(_204), saturate(_205)), float3(0.1f, 0.7f, 0.2f));
  _316 = _localToneMappingParams.y * _86;
  _317 = _localToneMappingParams.y * _87;
  _318 = _localToneMappingParams.y * _88;
  _352 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_316 * 1.70505f) - (_317 * 0.62179f)) - (_318 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _353 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_317 * 1.1408f) - (_316 * 0.13026f)) - (_318 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _354 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_316 * -0.024f) - (_317 * 0.12897f)) + (_318 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _355 = dot(float3(_352, _353, _354), float3(0.212671f, 0.71516f, 0.072169f));
  _362 = ((_352 - _355) * _powerParams.w) + _355;
  _365 = (lerp(_355, _353, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _366 = (lerp(_355, _354, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _369 = mad(0.04823f, _366, mad(0.35458f, _365, (_362 * 0.9953167f)));
  _372 = mad(0.01566f, _366, mad(0.90834f, _365, (_362 * 0.12666667f)));
  _375 = mad(0.83777f, _366, mad(0.13383f, _365, (_362 * 0.047333334f)));
  _397 = (((_369 + 0.0245786f) * _369) + -9.0537e-05f) / ((((_369 * 0.983729f) + 0.432951f) * _369) + 0.238081f);
  _398 = (((_372 + 0.0245786f) * _372) + -9.0537e-05f) / ((((_372 * 0.983729f) + 0.432951f) * _372) + 0.238081f);
  _399 = (((_375 + 0.0245786f) * _375) + -9.0537e-05f) / ((((_375 * 0.983729f) + 0.432951f) * _375) + 0.238081f);
  _418 = dot(float3(saturate(saturate(saturate(mad(-0.07367f, _399, mad(-0.53108f, _398, (_397 * 1.60475f)))))), saturate(saturate(saturate(mad(-0.00605f, _399, mad(1.10813f, _398, (_397 * -0.10208f)))))), saturate(saturate(saturate(mad(1.07602f, _399, mad(-0.07276f, _398, (_397 * -0.00327f))))))), float3(0.1f, 0.7f, 0.2f));
  _419 = _310 + -0.5f;
  _420 = _314 + -0.5f;
  _421 = _418 + -0.5f;
  _423 = _localToneMappingParams.z * -0.7213475f;
  _430 = exp2((_419 * _419) * _423);
  _431 = exp2((_420 * _420) * _423);
  _432 = exp2((_421 * _421) * _423);
  _434 = dot(float3(_430, _431, _432), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _446 = dot(float3(max(_203, 0.0f), max(_204, 0.0f), max(_205, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _448 = max(dot(float3(((_430 / _434) * _310), ((_431 / _434) * _314), ((_432 / _434) * _418)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _446;
  if (!(_446 > 0.007f)) {
    _457 = ((((_446 * _446) * 20408.16f) * (_448 + -1.0f)) + 1.0f);
  } else {
    _457 = _448;
  }
  _458 = _457 * _86;
  _459 = _457 * _87;
  _460 = _457 * _88;
  _494 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_458 * 1.70505f) - (_459 * 0.62179f)) - (_460 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _495 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_459 * 1.1408f) - (_458 * 0.13026f)) - (_460 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _496 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_458 * -0.024f) - (_459 * 0.12897f)) + (_460 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _497 = dot(float3(_494, _495, _496), float3(0.212671f, 0.71516f, 0.072169f));
  _504 = ((_494 - _497) * _powerParams.w) + _497;
  _507 = (lerp(_497, _495, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _508 = (lerp(_497, _496, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _511 = mad(0.04823f, _508, mad(0.35458f, _507, (_504 * 0.9953167f)));
  _514 = mad(0.01566f, _508, mad(0.90834f, _507, (_504 * 0.12666667f)));
  _517 = mad(0.83777f, _508, mad(0.13383f, _507, (_504 * 0.047333334f)));
  _539 = (((_511 + 0.0245786f) * _511) + -9.0537e-05f) / ((((_511 * 0.983729f) + 0.432951f) * _511) + 0.238081f);
  _540 = (((_514 + 0.0245786f) * _514) + -9.0537e-05f) / ((((_514 * 0.983729f) + 0.432951f) * _514) + 0.238081f);
  _541 = (((_517 + 0.0245786f) * _517) + -9.0537e-05f) / ((((_517 * 0.983729f) + 0.432951f) * _517) + 0.238081f);
  _557 = max(saturate(saturate(mad(-0.07367f, _541, mad(-0.53108f, _540, (_539 * 1.60475f))))), 0.0f);
  _558 = max(saturate(saturate(mad(-0.00605f, _541, mad(1.10813f, _540, (_539 * -0.10208f))))), 0.0f);
  _559 = max(saturate(saturate(mad(1.07602f, _541, mad(-0.07276f, _540, (_539 * -0.00327f))))), 0.0f);
  _561 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_561.x < 1e-07f) || (_561.x == 1.0f))) {
    _569 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _584 = exp2(log2(max(0.0f, _offsetParams.x)) * _powerParams.x);
    _585 = exp2(log2(max(0.0f, _offsetParams.y)) * _powerParams.y);
    _586 = exp2(log2(max(0.0f, _offsetParams.z)) * _powerParams.z);
    _587 = dot(float3(_584, _585, _586), float3(0.212671f, 0.71516f, 0.072169f));
    _594 = ((_584 - _587) * _powerParams.w) + _587;
    _597 = (lerp(_587, _585, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _598 = (lerp(_587, _586, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _601 = mad(0.04823f, _598, mad(0.35458f, _597, (_594 * 0.9953167f)));
    _604 = mad(0.01566f, _598, mad(0.90834f, _597, (_594 * 0.12666667f)));
    _607 = mad(0.83777f, _598, mad(0.13383f, _597, (_594 * 0.047333334f)));
    _629 = (((_601 + 0.0245786f) * _601) + -9.0537e-05f) / ((((_601 * 0.983729f) + 0.432951f) * _601) + 0.238081f);
    _630 = (((_604 + 0.0245786f) * _604) + -9.0537e-05f) / ((((_604 * 0.983729f) + 0.432951f) * _604) + 0.238081f);
    _631 = (((_607 + 0.0245786f) * _607) + -9.0537e-05f) / ((((_607 * 0.983729f) + 0.432951f) * _607) + 0.238081f);
    _645 = saturate(saturate(mad(-0.00605f, _631, mad(1.10813f, _630, (_629 * -0.10208f)))));  // [sem: expr_sat]
    _654 = max(max(_558, _645), max(max(_645, _645), _645));
    _661 = sqrt(saturate(min(min(min(_558, _645), min(min(_645, _645), _645)), (1.0f - _654)) * (1.0f / _654))) * (-1.0f / (((1.0f - _569) * 8.0f) + (_569 * 5.0f)));
    _664 = 1.0f / ((_661 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _681 = saturate((((saturate(saturate(mad(-0.07367f, _631, mad(-0.53108f, _630, (_629 * 1.60475f))))) * 4.0f) * _661) + _557) * _664);
    _682 = saturate((((_645 * 4.0f) * _661) + _558) * _664);  // [sem: expr_sat]
    // [sem: expr_sat]
    _683 = saturate((((saturate(saturate(mad(1.07602f, _631, mad(-0.07276f, _630, (_629 * -0.00327f))))) * 4.0f) * _661) + _559) * _664);
  } else {
    _681 = _557;  // [sem: expr_sat]
    _682 = _558;  // [sem: expr_sat]
    _683 = _559;  // [sem: expr_sat]
  }
  _690 = 1.0f - abs(_etcParams.w);
  _694 = saturate(_etcParams.w);  // [sem: expr_sat]
  _695 = (_690 * saturate(_681)) + _694;
  _696 = (_690 * saturate(_682)) + _694;
  _697 = (_690 * saturate(_683)) + _694;
  if (_colorGradingParams.w > 0.0f) {
    _702 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _719 = (((max(0.0f, (1.0f - _695)) - _695) * _702) + _695);
    _720 = (((max(0.0f, (1.0f - _696)) - _696) * _702) + _696);
    _721 = (((max(0.0f, (1.0f - _697)) - _697) * _702) + _697);
  } else {
    _719 = _695;
    _720 = _696;
    _721 = _697;
  }
  _727 = _userImageAdjust.y + 1.0f;
  _731 = _userImageAdjust.x + 0.5f;
  _732 = ((_719 + -0.5f) * _727) + _731;
  _733 = ((_720 + -0.5f) * _727) + _731;
  _734 = ((_721 + -0.5f) * _727) + _731;
  _764 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _775 = (TEXCOORD.x * 2.0f) + -1.0f;
  _776 = TEXCOORD.y * 2.0f;
  _777 = 1.0f - _776;
  _805 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _777, ((_projToPrevProj[3].x) * _775))) + (_projToPrevProj[3].w);
  _808 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _777, ((_projToPrevProj[0].x) * _775))) + (_projToPrevProj[0].w)) / _805) - _775;
  _809 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _777, ((_projToPrevProj[1].x) * _775))) + (_projToPrevProj[1].w)) / _805) - _777;
  if (_localToneMappingParams.w > 0.0f) {
    _822 = saturate(1.0f - (sqrt((_809 * _809) + (_808 * _808)) * 2.0f));  // [sem: expr_sat]
  } else {
    _822 = 1.0f;  // [sem: expr_sat]
  }
  _825 = abs(_775);
  _826 = abs(_776 + -1.0f);
  _830 = saturate(1.0f - ((_822 * _postProcessParams.x) * dot(float2(_825, _826), float2(_825, _826))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _844 = (_830 * exp2(log2(saturate(mad(_colorBlind0.z, _734, mad(_colorBlind0.y, _733, (_colorBlind0.x * _732))))) * _764));
      _845 = (_830 * exp2(log2(saturate(mad(_colorBlind1.z, _734, mad(_colorBlind1.y, _733, (_colorBlind1.x * _732))))) * _764));
      _846 = (_830 * exp2(log2(saturate(mad(_colorBlind2.z, _734, mad(_colorBlind2.y, _733, (_colorBlind2.x * _732))))) * _764));
    } else {
      _844 = 0.0f;
      _845 = 0.0f;
      _846 = 0.0f;
    }
  } else {
    _844 = 0.0f;
    _845 = 0.0f;
    _846 = 0.0f;
  }
  SV_Target.x = _844;
  SV_Target.y = _845;
  SV_Target.z = _846;
  SV_Target.w = _18.w;
  return SV_Target;
}
