Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

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
  float _664;
  float _686;
  float _687;
  float _688;
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
  float _165;
  float _166;
  float _169;
  float _173;
  float _176;
  float _177;
  float _178;
  float _179;
  float _180;
  float _181;
  float _182;
  float _183;
  float _211;
  float _212;
  float _213;
  float _216;
  float _217;
  float _218;
  float _252;
  float _253;
  float _254;
  float _255;
  float _265;
  float _266;
  float _267;
  float _268;
  float _269;
  float _270;
  float _304;
  float _308;
  float _310;
  float _311;
  float _312;
  float _346;
  float _347;
  float _348;
  float _349;
  float _359;
  float _360;
  float _361;
  float _362;
  float _363;
  float _364;
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
  float _487;
  float _488;
  float _489;
  float _490;
  float _491;
  float _492;
  float _532;
  float _536;
  float _537;
  float _538;
  float _539;
  float _544;
  float _569;
  float _573;
  float _574;
  float _575;
  float _576;
  float _606;
  float _617;
  float _618;
  float _619;
  float _647;
  float _650;
  float _651;
  float _667;
  float _668;
  float _672;
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
  _165 = _toneMapParams0.x * _toneMapParams1.z;
  _166 = _toneMapParams0.y * _toneMapParams0.z;
  _169 = _toneMapParams0.w * _toneMapParams1.x;
  _173 = _toneMapParams0.w * _toneMapParams1.y;
  _176 = _toneMapParams1.x / _toneMapParams1.y;
  _177 = ((((_165 + _166) * _toneMapParams1.z) + _169) / (((_165 + _toneMapParams0.y) * _toneMapParams1.z) + _173)) - _176;
  _178 = (lerp(_145, _141, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _179 = (lerp(_145, _142, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _180 = (lerp(_145, _143, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _181 = _178 * _toneMapParams0.x;
  _182 = _179 * _toneMapParams0.x;
  _183 = _180 * _toneMapParams0.x;
  _211 = saturate((((((_181 + _166) * _178) + _169) / (((_181 + _toneMapParams0.y) * _178) + _173)) - _176) / _177);  // [sem: expr_sat]
  _212 = saturate((((((_182 + _166) * _179) + _169) / (((_182 + _toneMapParams0.y) * _179) + _173)) - _176) / _177);  // [sem: expr_sat]
  _213 = saturate((((((_183 + _166) * _180) + _169) / (((_183 + _toneMapParams0.y) * _180) + _173)) - _176) / _177);  // [sem: expr_sat]
  _216 = _localToneMappingParams.x * _85;
  _217 = _localToneMappingParams.x * _86;
  _218 = _localToneMappingParams.x * _87;
  _252 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_216 * 1.70505f) - (_217 * 0.62179f)) - (_218 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _253 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_217 * 1.1408f) - (_216 * 0.13026f)) - (_218 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _254 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_216 * -0.024f) - (_217 * 0.12897f)) + (_218 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _255 = dot(float3(_252, _253, _254), float3(0.212671f, 0.71516f, 0.072169f));
  _265 = (lerp(_255, _252, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _266 = (lerp(_255, _253, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _267 = (lerp(_255, _254, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _268 = _265 * _toneMapParams0.x;
  _269 = _266 * _toneMapParams0.x;
  _270 = _267 * _toneMapParams0.x;
  _304 = dot(float3(saturate(saturate((((((_268 + _166) * _265) + _169) / (((_268 + _toneMapParams0.y) * _265) + _173)) - _176) / _177)), saturate(saturate((((((_269 + _166) * _266) + _169) / (((_269 + _toneMapParams0.y) * _266) + _173)) - _176) / _177)), saturate(saturate((((((_270 + _166) * _267) + _169) / (((_270 + _toneMapParams0.y) * _267) + _173)) - _176) / _177))), float3(0.1f, 0.7f, 0.2f));
  _308 = dot(float3(saturate(_211), saturate(_212), saturate(_213)), float3(0.1f, 0.7f, 0.2f));
  _310 = _localToneMappingParams.y * _85;
  _311 = _localToneMappingParams.y * _86;
  _312 = _localToneMappingParams.y * _87;
  _346 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_310 * 1.70505f) - (_311 * 0.62179f)) - (_312 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _347 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_311 * 1.1408f) - (_310 * 0.13026f)) - (_312 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _348 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_310 * -0.024f) - (_311 * 0.12897f)) + (_312 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _349 = dot(float3(_346, _347, _348), float3(0.212671f, 0.71516f, 0.072169f));
  _359 = (lerp(_349, _346, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _360 = (lerp(_349, _347, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _361 = (lerp(_349, _348, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _362 = _359 * _toneMapParams0.x;
  _363 = _360 * _toneMapParams0.x;
  _364 = _361 * _toneMapParams0.x;
  _398 = dot(float3(saturate(saturate((((((_362 + _166) * _359) + _169) / (((_362 + _toneMapParams0.y) * _359) + _173)) - _176) / _177)), saturate(saturate((((((_363 + _166) * _360) + _169) / (((_363 + _toneMapParams0.y) * _360) + _173)) - _176) / _177)), saturate(saturate((((((_364 + _166) * _361) + _169) / (((_364 + _toneMapParams0.y) * _361) + _173)) - _176) / _177))), float3(0.1f, 0.7f, 0.2f));
  _399 = _304 + -0.5f;
  _400 = _308 + -0.5f;
  _401 = _398 + -0.5f;
  _403 = _localToneMappingParams.z * -0.7213475f;
  _410 = exp2((_399 * _399) * _403);
  _411 = exp2((_400 * _400) * _403);
  _412 = exp2((_401 * _401) * _403);
  _414 = dot(float3(_410, _411, _412), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _426 = dot(float3(max(_211, 0.0f), max(_212, 0.0f), max(_213, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _428 = max(dot(float3(((_410 / _414) * _304), ((_411 / _414) * _308), ((_412 / _414) * _398)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _426;
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
  _487 = (lerp(_477, _474, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _488 = (lerp(_477, _475, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _489 = (lerp(_477, _476, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _490 = _487 * _toneMapParams0.x;
  _491 = _488 * _toneMapParams0.x;
  _492 = _489 * _toneMapParams0.x;
  _532 = 1.0f - abs(_etcParams.w);
  _536 = saturate(_etcParams.w);  // [sem: expr_sat]
  _537 = (_532 * saturate(max(saturate((((((_490 + _166) * _487) + _169) / (((_490 + _toneMapParams0.y) * _487) + _173)) - _176) / _177), 0.0f))) + _536;
  _538 = (_532 * saturate(max(saturate((((((_491 + _166) * _488) + _169) / (((_491 + _toneMapParams0.y) * _488) + _173)) - _176) / _177), 0.0f))) + _536;
  _539 = (_532 * saturate(max(saturate((((((_492 + _166) * _489) + _169) / (((_492 + _toneMapParams0.y) * _489) + _173)) - _176) / _177), 0.0f))) + _536;
  if (_colorGradingParams.w > 0.0f) {
    _544 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _561 = (((max(0.0f, (1.0f - _537)) - _537) * _544) + _537);
    _562 = (((max(0.0f, (1.0f - _538)) - _538) * _544) + _538);
    _563 = (((max(0.0f, (1.0f - _539)) - _539) * _544) + _539);
  } else {
    _561 = _537;
    _562 = _538;
    _563 = _539;
  }
  _569 = _userImageAdjust.y + 1.0f;
  _573 = _userImageAdjust.x + 0.5f;
  _574 = ((_561 + -0.5f) * _569) + _573;
  _575 = ((_562 + -0.5f) * _569) + _573;
  _576 = ((_563 + -0.5f) * _569) + _573;
  _606 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _617 = (TEXCOORD.x * 2.0f) + -1.0f;
  _618 = TEXCOORD.y * 2.0f;
  _619 = 1.0f - _618;
  _647 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _619, ((_projToPrevProj[3].x) * _617))) + (_projToPrevProj[3].w);
  _650 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _619, ((_projToPrevProj[0].x) * _617))) + (_projToPrevProj[0].w)) / _647) - _617;
  _651 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _619, ((_projToPrevProj[1].x) * _617))) + (_projToPrevProj[1].w)) / _647) - _619;
  if (_localToneMappingParams.w > 0.0f) {
    _664 = saturate(1.0f - (sqrt((_651 * _651) + (_650 * _650)) * 2.0f));  // [sem: expr_sat]
  } else {
    _664 = 1.0f;  // [sem: expr_sat]
  }
  _667 = abs(_617);
  _668 = abs(_618 + -1.0f);
  _672 = saturate(1.0f - ((_664 * _postProcessParams.x) * dot(float2(_667, _668), float2(_667, _668))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _686 = (_672 * exp2(log2(saturate(mad(_colorBlind0.z, _576, mad(_colorBlind0.y, _575, (_colorBlind0.x * _574))))) * _606));
      _687 = (_672 * exp2(log2(saturate(mad(_colorBlind1.z, _576, mad(_colorBlind1.y, _575, (_colorBlind1.x * _574))))) * _606));
      _688 = (_672 * exp2(log2(saturate(mad(_colorBlind2.z, _576, mad(_colorBlind2.y, _575, (_colorBlind2.x * _574))))) * _606));
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
