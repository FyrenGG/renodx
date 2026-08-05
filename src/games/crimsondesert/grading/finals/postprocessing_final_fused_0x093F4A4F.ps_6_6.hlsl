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
  float _403;
  float _521;
  float _522;
  float _523;
  float _590;
  float _646;
  float _647;
  float _648;
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
  float _148;
  float _151;
  float _154;
  float _171;
  float _181;
  float _191;
  float _194;
  float _195;
  float _196;
  float _208;
  float _220;
  float _232;
  float _233;
  float _236;
  float _239;
  float _242;
  float _276;
  float _280;
  float _282;
  float _283;
  float _284;
  float _296;
  float _308;
  float _320;
  float _321;
  float _324;
  float _327;
  float _330;
  float _364;
  float _365;
  float _366;
  float _367;
  float _369;
  float _372;
  float _375;
  float _378;
  float _380;
  float _385;
  float _394;
  float _404;
  float _405;
  float _406;
  float _418;
  float _430;
  float _442;
  float _443;
  float _446;
  float _449;
  float _452;
  float _456;
  float _457;
  float _471;
  float _485;
  float _499;
  float _504;
  float _525;
  float _527;
  float _530;
  float _533;
  float _536;
  float _542;
  float _544;
  float _545;
  float _546;
  float _558;
  float _568;
  float _578;
  float _591;
  float _593;
  float _599;
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
  _148 = ((_115 - _144) * _powerParams.w) + _144;
  _151 = ((_129 - _144) * _powerParams.w) + _144;
  _154 = ((_143 - _144) * _powerParams.w) + _144;
  // [sem: expr_sat]
  _171 = saturate(saturate((((_148 * _toneMapParams0.x) + _toneMapParams0.y) * _148) / ((((_148 * _toneMapParams0.z) + _toneMapParams0.w) * _148) + _toneMapParams1.x)));
  // [sem: expr_sat]
  _181 = saturate(saturate((((_151 * _toneMapParams0.x) + _toneMapParams0.y) * _151) / ((((_151 * _toneMapParams0.z) + _toneMapParams0.w) * _151) + _toneMapParams1.x)));
  // [sem: expr_sat]
  _191 = saturate(saturate((((_154 * _toneMapParams0.x) + _toneMapParams0.y) * _154) / ((((_154 * _toneMapParams0.z) + _toneMapParams0.w) * _154) + _toneMapParams1.x)));
  _194 = _localToneMappingParams.x * _87;
  _195 = _localToneMappingParams.x * _86;
  _196 = _localToneMappingParams.x * _85;
  _208 = exp2(log2(max(0.0f, ((max(0.0f, (((_194 * 1.70505f) - (_195 * 0.62179f)) - (_196 * 0.08326f))) * _95) + _offsetParams.x))) * _powerParams.x);
  _220 = exp2(log2(max(0.0f, ((max(0.0f, (((_195 * 1.1408f) - (_194 * 0.13026f)) - (_196 * 0.01055f))) * _97) + _offsetParams.y))) * _powerParams.y);
  _232 = exp2(log2(max(0.0f, ((max(0.0f, (((_194 * -0.024f) - (_195 * 0.12897f)) + (_196 * 1.15297f))) * _99) + _offsetParams.z))) * _powerParams.z);
  _233 = dot(float3(_208, _220, _232), float3(0.212671f, 0.71516f, 0.072169f));
  _236 = ((_208 - _233) * _powerParams.w) + _233;
  _239 = ((_220 - _233) * _powerParams.w) + _233;
  _242 = ((_232 - _233) * _powerParams.w) + _233;
  _276 = dot(float3(saturate(saturate(saturate((((_236 * _toneMapParams0.x) + _toneMapParams0.y) * _236) / ((((_236 * _toneMapParams0.z) + _toneMapParams0.w) * _236) + _toneMapParams1.x)))), saturate(saturate(saturate((((_239 * _toneMapParams0.x) + _toneMapParams0.y) * _239) / ((((_239 * _toneMapParams0.z) + _toneMapParams0.w) * _239) + _toneMapParams1.x)))), saturate(saturate(saturate((((_242 * _toneMapParams0.x) + _toneMapParams0.y) * _242) / ((((_242 * _toneMapParams0.z) + _toneMapParams0.w) * _242) + _toneMapParams1.x))))), float3(0.1f, 0.7f, 0.2f));
  _280 = dot(float3(saturate(_171), saturate(_181), saturate(_191)), float3(0.1f, 0.7f, 0.2f));
  _282 = _localToneMappingParams.y * _87;
  _283 = _localToneMappingParams.y * _86;
  _284 = _localToneMappingParams.y * _85;
  _296 = exp2(log2(max(0.0f, ((max(0.0f, (((_282 * 1.70505f) - (_283 * 0.62179f)) - (_284 * 0.08326f))) * _95) + _offsetParams.x))) * _powerParams.x);
  _308 = exp2(log2(max(0.0f, ((max(0.0f, (((_283 * 1.1408f) - (_282 * 0.13026f)) - (_284 * 0.01055f))) * _97) + _offsetParams.y))) * _powerParams.y);
  _320 = exp2(log2(max(0.0f, ((max(0.0f, (((_282 * -0.024f) - (_283 * 0.12897f)) + (_284 * 1.15297f))) * _99) + _offsetParams.z))) * _powerParams.z);
  _321 = dot(float3(_296, _308, _320), float3(0.212671f, 0.71516f, 0.072169f));
  _324 = ((_296 - _321) * _powerParams.w) + _321;
  _327 = ((_308 - _321) * _powerParams.w) + _321;
  _330 = ((_320 - _321) * _powerParams.w) + _321;
  _364 = dot(float3(saturate(saturate(saturate((((_324 * _toneMapParams0.x) + _toneMapParams0.y) * _324) / ((((_324 * _toneMapParams0.z) + _toneMapParams0.w) * _324) + _toneMapParams1.x)))), saturate(saturate(saturate((((_327 * _toneMapParams0.x) + _toneMapParams0.y) * _327) / ((((_327 * _toneMapParams0.z) + _toneMapParams0.w) * _327) + _toneMapParams1.x)))), saturate(saturate(saturate((((_330 * _toneMapParams0.x) + _toneMapParams0.y) * _330) / ((((_330 * _toneMapParams0.z) + _toneMapParams0.w) * _330) + _toneMapParams1.x))))), float3(0.1f, 0.7f, 0.2f));
  _365 = _276 + -0.5f;
  _366 = _280 + -0.5f;
  _367 = _364 + -0.5f;
  _369 = _localToneMappingParams.z * -0.7213475f;
  _372 = exp2((_365 * _365) * _369);
  _375 = exp2((_366 * _366) * _369);
  _378 = exp2((_367 * _367) * _369);
  _380 = dot(float3(_372, _375, _378), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _385 = dot(float3(max(_171, 0.0f), max(_181, 0.0f), max(_191, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _394 = max(dot(float3(((_372 / _380) * _276), ((_375 / _380) * _280), ((_378 / _380) * _364)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _385;
  if (!(_385 > 0.007f)) {
    _403 = ((((_385 * _385) * 20408.16f) * (_394 + -1.0f)) + 1.0f);
  } else {
    _403 = _394;
  }
  _404 = _403 * _87;
  _405 = _403 * _86;
  _406 = _403 * _85;
  _418 = exp2(log2(max(0.0f, ((max(0.0f, (((_404 * 1.70505f) - (_405 * 0.62179f)) - (_406 * 0.08326f))) * _95) + _offsetParams.x))) * _powerParams.x);
  _430 = exp2(log2(max(0.0f, ((max(0.0f, (((_405 * 1.1408f) - (_404 * 0.13026f)) - (_406 * 0.01055f))) * _97) + _offsetParams.y))) * _powerParams.y);
  _442 = exp2(log2(max(0.0f, ((max(0.0f, (((_404 * -0.024f) - (_405 * 0.12897f)) + (_406 * 1.15297f))) * _99) + _offsetParams.z))) * _powerParams.z);
  _443 = dot(float3(_418, _430, _442), float3(0.212671f, 0.71516f, 0.072169f));
  _446 = ((_418 - _443) * _powerParams.w) + _443;
  _449 = ((_430 - _443) * _powerParams.w) + _443;
  _452 = ((_442 - _443) * _powerParams.w) + _443;
  _456 = 1.0f - abs(_etcParams.w);
  _457 = saturate(_etcParams.w);  // [sem: expr_sat]
  _471 = (saturate(max(saturate(saturate((((_446 * _toneMapParams0.x) + _toneMapParams0.y) * _446) / ((((_446 * _toneMapParams0.z) + _toneMapParams0.w) * _446) + _toneMapParams1.x))), 0.0f)) * _456) + _457;
  _485 = (saturate(max(saturate(saturate((((_449 * _toneMapParams0.x) + _toneMapParams0.y) * _449) / ((((_449 * _toneMapParams0.z) + _toneMapParams0.w) * _449) + _toneMapParams1.x))), 0.0f)) * _456) + _457;
  _499 = (saturate(max(saturate(saturate((((_452 * _toneMapParams0.x) + _toneMapParams0.y) * _452) / ((((_452 * _toneMapParams0.z) + _toneMapParams0.w) * _452) + _toneMapParams1.x))), 0.0f)) * _456) + _457;
  if (_colorGradingParams.w > 0.0f) {
    _504 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _521 = (((max(0.0f, (1.0f - _499)) - _499) * _504) + _499);
    _522 = (((max(0.0f, (1.0f - _485)) - _485) * _504) + _485);
    _523 = (((max(0.0f, (1.0f - _471)) - _471) * _504) + _471);
  } else {
    _521 = _499;
    _522 = _485;
    _523 = _471;
  }
  _525 = _userImageAdjust.y + 1.0f;
  _527 = _userImageAdjust.x + 0.5f;
  _530 = ((_523 + -0.5f) * _525) + _527;
  _533 = ((_522 + -0.5f) * _525) + _527;
  _536 = ((_521 + -0.5f) * _525) + _527;
  _542 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _544 = (TEXCOORD.x * 2.0f) + -1.0f;
  _545 = TEXCOORD.y * 2.0f;
  _546 = 1.0f - _545;
  _558 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _546, ((_projToPrevProj[3].x) * _544)));
  _568 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _546, ((_projToPrevProj[0].x) * _544))) + (_projToPrevProj[0].w)) / _558) - _544;
  _578 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _546, ((_projToPrevProj[1].x) * _544))) + (_projToPrevProj[1].w)) / _558) - _546;
  if (_localToneMappingParams.w > 0.0f) {
    _590 = saturate(1.0f - (sqrt((_578 * _578) + (_568 * _568)) * 2.0f));  // [sem: expr_sat]
  } else {
    _590 = 1.0f;  // [sem: expr_sat]
  }
  _591 = abs(_544);
  _593 = abs(_545 + -1.0f);
  _599 = saturate(1.0f - ((_590 * _postProcessParams.x) * dot(float2(_591, _593), float2(_591, _593))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _646 = (exp2(log2(saturate(mad(_colorBlind0.z, _536, mad(_colorBlind0.y, _533, (_colorBlind0.x * _530))))) * _542) * _599);
      _647 = (exp2(log2(saturate(mad(_colorBlind1.z, _536, mad(_colorBlind1.y, _533, (_colorBlind1.x * _530))))) * _542) * _599);
      _648 = (exp2(log2(saturate(mad(_colorBlind2.z, _536, mad(_colorBlind2.y, _533, (_colorBlind2.x * _530))))) * _542) * _599);
    } else {
      _646 = 0.0f;
      _647 = 0.0f;
      _648 = 0.0f;
    }
  } else {
    _646 = 0.0f;
    _647 = 0.0f;
    _648 = 0.0f;
  }
  SV_Target.x = _646;
  SV_Target.y = _647;
  SV_Target.z = _648;
  SV_Target.w = _17.w;
  return SV_Target;
}
