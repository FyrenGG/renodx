Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

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
  float4 _17;
  float _40;
  float _41;
  float _85;
  float _86;
  float _87;
  float _437;
  float _561;
  float _562;
  float _563;
  float _630;
  float _686;
  float _687;
  float _688;
  float _51;
  float _52;
  float _54;
  float _55;
  float _57;
  float _70;
  float _72;
  float _80;
  float _93;
  float _95;
  float _97;
  float _99;
  float _115;
  float _129;
  float _143;
  float _144;
  float _149;
  float _152;
  float _155;
  float _157;
  float _158;
  float _166;
  float _172;
  float _176;
  float _180;
  float _181;
  float _182;
  float _183;
  float _193;
  float _203;
  float _213;
  float _216;
  float _217;
  float _218;
  float _230;
  float _242;
  float _254;
  float _255;
  float _259;
  float _263;
  float _267;
  float _268;
  float _269;
  float _270;
  float _304;
  float _308;
  float _310;
  float _311;
  float _312;
  float _324;
  float _336;
  float _348;
  float _349;
  float _353;
  float _357;
  float _361;
  float _362;
  float _363;
  float _364;
  float _398;
  float _399;
  float _400;
  float _401;
  float _403;
  float _406;
  float _409;
  float _412;
  float _414;
  float _419;
  float _428;
  float _438;
  float _439;
  float _440;
  float _452;
  float _464;
  float _476;
  float _477;
  float _481;
  float _485;
  float _489;
  float _490;
  float _491;
  float _492;
  float _496;
  float _497;
  float _511;
  float _525;
  float _539;
  float _544;
  float _565;
  float _567;
  float _570;
  float _573;
  float _576;
  float _582;
  float _584;
  float _585;
  float _586;
  float _598;
  float _608;
  float _618;
  float _631;
  float _633;
  float _639;
  _17 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _40 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
  } else {
    _40 = _17.z;
    _41 = _17.x;
  }
  if (_slopeParams.w > 0.0f) {
    _51 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _52 = _51 * 0.7692308f;
    _54 = frac(abs(_52));
    _55 = _51 * 0.08130081f;
    _57 = frac(abs(_55));
    _70 = ((select((_55 >= (-0.0f - _55)), _57, (-0.0f - _57)) * 1230.0f) + 10.0f) * ((select((_52 >= (-0.0f - _52)), _54, (-0.0f - _54)) * 13.0f) + 1.0f);
    _72 = frac(abs(_70));
    _80 = ((0.0075000525f - (select((_70 >= (-0.0f - _70)), _72, (-0.0f - _72)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _85 = (_80 * _40);
    _86 = (_80 * _17.y);
    _87 = (_80 * _41);
  } else {
    _85 = _40;
    _86 = _17.y;
    _87 = _41;
  }
  _93 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
  _95 = _93 * _slopeParams.x;
  _97 = _93 * _slopeParams.y;
  _99 = _93 * _slopeParams.z;
  _115 = exp2(_powerParams.x * log2(max(0.0f, ((_95 * max(0.0f, (((_86 * -0.62179f) - (_85 * 0.08326f)) + (_87 * 1.70505f)))) + _offsetParams.x))));
  _129 = exp2(log2(max(0.0f, ((max(0.0f, (((_86 * 1.1408f) - (_85 * 0.01055f)) - (_87 * 0.13026f))) * _97) + _offsetParams.y))) * _powerParams.y);
  _143 = exp2(log2(max(0.0f, ((max(0.0f, (((_85 * 1.15297f) - (_86 * 0.12897f)) - (_87 * 0.024f))) * _99) + _offsetParams.z))) * _powerParams.z);
  _144 = dot(float3(_115, _129, _143), float3(0.212671f, 0.71516f, 0.072169f));
  _149 = _toneMapParams1.z * _toneMapParams0.x;
  _152 = _toneMapParams0.z * _toneMapParams0.y;
  _155 = _toneMapParams1.x * _toneMapParams0.w;
  _157 = _toneMapParams1.y * _toneMapParams0.w;
  _158 = _toneMapParams1.x / _toneMapParams1.y;
  _166 = ((((_149 + _152) * _toneMapParams1.z) + _155) / (((_149 + _toneMapParams0.y) * _toneMapParams1.z) + _157)) - _158;
  _172 = (lerp(_144, _115, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _176 = (lerp(_144, _129, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _180 = (lerp(_144, _143, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _181 = _172 * _toneMapParams0.x;
  _182 = _176 * _toneMapParams0.x;
  _183 = _180 * _toneMapParams0.x;
  _193 = saturate((((((_181 + _152) * _172) + _155) / (((_181 + _toneMapParams0.y) * _172) + _157)) - _158) / _166);  // [sem: expr_sat]
  _203 = saturate((((((_182 + _152) * _176) + _155) / (((_182 + _toneMapParams0.y) * _176) + _157)) - _158) / _166);  // [sem: expr_sat]
  _213 = saturate((((((_183 + _152) * _180) + _155) / (((_183 + _toneMapParams0.y) * _180) + _157)) - _158) / _166);  // [sem: expr_sat]
  _216 = _localToneMappingParams.x * _87;
  _217 = _localToneMappingParams.x * _86;
  _218 = _localToneMappingParams.x * _85;
  _230 = exp2(log2(max(0.0f, ((max(0.0f, (((_216 * 1.70505f) - (_217 * 0.62179f)) - (_218 * 0.08326f))) * _95) + _offsetParams.x))) * _powerParams.x);
  _242 = exp2(log2(max(0.0f, ((max(0.0f, (((_217 * 1.1408f) - (_216 * 0.13026f)) - (_218 * 0.01055f))) * _97) + _offsetParams.y))) * _powerParams.y);
  _254 = exp2(log2(max(0.0f, ((max(0.0f, (((_216 * -0.024f) - (_217 * 0.12897f)) + (_218 * 1.15297f))) * _99) + _offsetParams.z))) * _powerParams.z);
  _255 = dot(float3(_230, _242, _254), float3(0.212671f, 0.71516f, 0.072169f));
  _259 = (lerp(_255, _230, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _263 = (lerp(_255, _242, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _267 = (lerp(_255, _254, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _268 = _259 * _toneMapParams0.x;
  _269 = _263 * _toneMapParams0.x;
  _270 = _267 * _toneMapParams0.x;
  _304 = dot(float3(saturate(saturate((((((_268 + _152) * _259) + _155) / (((_268 + _toneMapParams0.y) * _259) + _157)) - _158) / _166)), saturate(saturate((((((_269 + _152) * _263) + _155) / (((_269 + _toneMapParams0.y) * _263) + _157)) - _158) / _166)), saturate(saturate((((((_270 + _152) * _267) + _155) / (((_270 + _toneMapParams0.y) * _267) + _157)) - _158) / _166))), float3(0.1f, 0.7f, 0.2f));
  _308 = dot(float3(saturate(_193), saturate(_203), saturate(_213)), float3(0.1f, 0.7f, 0.2f));
  _310 = _localToneMappingParams.y * _87;
  _311 = _localToneMappingParams.y * _86;
  _312 = _localToneMappingParams.y * _85;
  _324 = exp2(log2(max(0.0f, ((max(0.0f, (((_310 * 1.70505f) - (_311 * 0.62179f)) - (_312 * 0.08326f))) * _95) + _offsetParams.x))) * _powerParams.x);
  _336 = exp2(log2(max(0.0f, ((max(0.0f, (((_311 * 1.1408f) - (_310 * 0.13026f)) - (_312 * 0.01055f))) * _97) + _offsetParams.y))) * _powerParams.y);
  _348 = exp2(log2(max(0.0f, ((max(0.0f, (((_310 * -0.024f) - (_311 * 0.12897f)) + (_312 * 1.15297f))) * _99) + _offsetParams.z))) * _powerParams.z);
  _349 = dot(float3(_324, _336, _348), float3(0.212671f, 0.71516f, 0.072169f));
  _353 = (lerp(_349, _324, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _357 = (lerp(_349, _336, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _361 = (lerp(_349, _348, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _362 = _353 * _toneMapParams0.x;
  _363 = _357 * _toneMapParams0.x;
  _364 = _361 * _toneMapParams0.x;
  _398 = dot(float3(saturate(saturate((((((_362 + _152) * _353) + _155) / (((_362 + _toneMapParams0.y) * _353) + _157)) - _158) / _166)), saturate(saturate((((((_363 + _152) * _357) + _155) / (((_363 + _toneMapParams0.y) * _357) + _157)) - _158) / _166)), saturate(saturate((((((_364 + _152) * _361) + _155) / (((_364 + _toneMapParams0.y) * _361) + _157)) - _158) / _166))), float3(0.1f, 0.7f, 0.2f));
  _399 = _304 + -0.5f;
  _400 = _308 + -0.5f;
  _401 = _398 + -0.5f;
  _403 = _localToneMappingParams.z * -0.7213475f;
  _406 = exp2((_399 * _399) * _403);
  _409 = exp2((_400 * _400) * _403);
  _412 = exp2((_401 * _401) * _403);
  _414 = dot(float3(_406, _409, _412), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _419 = dot(float3(max(_193, 0.0f), max(_203, 0.0f), max(_213, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _428 = max(dot(float3(((_406 / _414) * _304), ((_409 / _414) * _308), ((_412 / _414) * _398)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _419;
  if (!(_419 > 0.007f)) {
    _437 = ((((_419 * _419) * 20408.16f) * (_428 + -1.0f)) + 1.0f);
  } else {
    _437 = _428;
  }
  _438 = _437 * _87;
  _439 = _437 * _86;
  _440 = _437 * _85;
  _452 = exp2(log2(max(0.0f, ((max(0.0f, (((_438 * 1.70505f) - (_439 * 0.62179f)) - (_440 * 0.08326f))) * _95) + _offsetParams.x))) * _powerParams.x);
  _464 = exp2(log2(max(0.0f, ((max(0.0f, (((_439 * 1.1408f) - (_438 * 0.13026f)) - (_440 * 0.01055f))) * _97) + _offsetParams.y))) * _powerParams.y);
  _476 = exp2(log2(max(0.0f, ((max(0.0f, (((_438 * -0.024f) - (_439 * 0.12897f)) + (_440 * 1.15297f))) * _99) + _offsetParams.z))) * _powerParams.z);
  _477 = dot(float3(_452, _464, _476), float3(0.212671f, 0.71516f, 0.072169f));
  _481 = (lerp(_477, _452, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _485 = (lerp(_477, _464, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _489 = (lerp(_477, _476, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _490 = _481 * _toneMapParams0.x;
  _491 = _485 * _toneMapParams0.x;
  _492 = _489 * _toneMapParams0.x;
  _496 = 1.0f - abs(_etcParams.w);
  _497 = saturate(_etcParams.w);  // [sem: expr_sat]
  _511 = (saturate(max(saturate((((((_490 + _152) * _481) + _155) / (((_490 + _toneMapParams0.y) * _481) + _157)) - _158) / _166), 0.0f)) * _496) + _497;
  _525 = (saturate(max(saturate((((((_491 + _152) * _485) + _155) / (((_491 + _toneMapParams0.y) * _485) + _157)) - _158) / _166), 0.0f)) * _496) + _497;
  _539 = (saturate(max(saturate((((((_492 + _152) * _489) + _155) / (((_492 + _toneMapParams0.y) * _489) + _157)) - _158) / _166), 0.0f)) * _496) + _497;
  if (_colorGradingParams.w > 0.0f) {
    _544 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _561 = (((max(0.0f, (1.0f - _539)) - _539) * _544) + _539);
    _562 = (((max(0.0f, (1.0f - _525)) - _525) * _544) + _525);
    _563 = (((max(0.0f, (1.0f - _511)) - _511) * _544) + _511);
  } else {
    _561 = _539;
    _562 = _525;
    _563 = _511;
  }
  _565 = _userImageAdjust.y + 1.0f;
  _567 = _userImageAdjust.x + 0.5f;
  _570 = ((_563 + -0.5f) * _565) + _567;
  _573 = ((_562 + -0.5f) * _565) + _567;
  _576 = ((_561 + -0.5f) * _565) + _567;
  _582 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _584 = (TEXCOORD.x * 2.0f) + -1.0f;
  _585 = TEXCOORD.y * 2.0f;
  _586 = 1.0f - _585;
  _598 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _586, ((_projToPrevProj[3].x) * _584)));
  _608 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _586, ((_projToPrevProj[0].x) * _584))) + (_projToPrevProj[0].w)) / _598) - _584;
  _618 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _586, ((_projToPrevProj[1].x) * _584))) + (_projToPrevProj[1].w)) / _598) - _586;
  if (_localToneMappingParams.w > 0.0f) {
    _630 = saturate(1.0f - (sqrt((_618 * _618) + (_608 * _608)) * 2.0f));  // [sem: expr_sat]
  } else {
    _630 = 1.0f;  // [sem: expr_sat]
  }
  _631 = abs(_584);
  _633 = abs(_585 + -1.0f);
  _639 = saturate(1.0f - ((_630 * _postProcessParams.x) * dot(float2(_631, _633), float2(_631, _633))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _686 = (exp2(log2(saturate(mad(_colorBlind0.z, _576, mad(_colorBlind0.y, _573, (_colorBlind0.x * _570))))) * _582) * _639);
      _687 = (exp2(log2(saturate(mad(_colorBlind1.z, _576, mad(_colorBlind1.y, _573, (_colorBlind1.x * _570))))) * _582) * _639);
      _688 = (exp2(log2(saturate(mad(_colorBlind2.z, _576, mad(_colorBlind2.y, _573, (_colorBlind2.x * _570))))) * _582) * _639);
    } else {
      _686 = 0.0f;
      _687 = 0.0f;
      _688 = 0.0f;
    }
  } else {
    _686 = 0.0f;
    _687 = 0.0f;
    _688 = 0.0f;
  }
  SV_Target.x = _686;
  SV_Target.y = _687;
  SV_Target.z = _688;
  SV_Target.w = _17.w;
  return SV_Target;
}
