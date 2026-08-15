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
  float _624;
  float _646;
  float _647;
  float _648;
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
  float _152;
  float _153;
  float _154;
  float _189;
  float _190;
  float _191;
  float _194;
  float _195;
  float _196;
  float _230;
  float _231;
  float _232;
  float _233;
  float _240;
  float _241;
  float _242;
  float _276;
  float _280;
  float _282;
  float _283;
  float _284;
  float _318;
  float _319;
  float _320;
  float _321;
  float _328;
  float _329;
  float _330;
  float _364;
  float _365;
  float _366;
  float _367;
  float _369;
  float _376;
  float _377;
  float _378;
  float _380;
  float _392;
  float _394;
  float _404;
  float _405;
  float _406;
  float _440;
  float _441;
  float _442;
  float _443;
  float _450;
  float _451;
  float _452;
  float _492;
  float _496;
  float _497;
  float _498;
  float _499;
  float _504;
  float _529;
  float _533;
  float _534;
  float _535;
  float _536;
  float _566;
  float _577;
  float _578;
  float _579;
  float _607;
  float _610;
  float _611;
  float _627;
  float _628;
  float _632;
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
  _152 = ((_141 - _145) * _powerParams.w) + _145;
  _153 = ((_142 - _145) * _powerParams.w) + _145;
  _154 = ((_143 - _145) * _powerParams.w) + _145;
  // [sem: expr_sat]
  _189 = saturate(saturate((((_toneMapParams0.x * _152) + _toneMapParams0.y) * _152) / ((((_toneMapParams0.z * _152) + _toneMapParams0.w) * _152) + _toneMapParams1.x)));
  // [sem: expr_sat]
  _190 = saturate(saturate((((_toneMapParams0.x * _153) + _toneMapParams0.y) * _153) / ((((_toneMapParams0.z * _153) + _toneMapParams0.w) * _153) + _toneMapParams1.x)));
  // [sem: expr_sat]
  _191 = saturate(saturate((((_toneMapParams0.x * _154) + _toneMapParams0.y) * _154) / ((((_toneMapParams0.z * _154) + _toneMapParams0.w) * _154) + _toneMapParams1.x)));
  _194 = _localToneMappingParams.x * _85;
  _195 = _localToneMappingParams.x * _86;
  _196 = _localToneMappingParams.x * _87;
  _230 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_194 * 1.70505f) - (_195 * 0.62179f)) - (_196 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _231 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_195 * 1.1408f) - (_194 * 0.13026f)) - (_196 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _232 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_194 * -0.024f) - (_195 * 0.12897f)) + (_196 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _233 = dot(float3(_230, _231, _232), float3(0.212671f, 0.71516f, 0.072169f));
  _240 = ((_230 - _233) * _powerParams.w) + _233;
  _241 = ((_231 - _233) * _powerParams.w) + _233;
  _242 = ((_232 - _233) * _powerParams.w) + _233;
  _276 = dot(float3(saturate(saturate(saturate((((_240 * _toneMapParams0.x) + _toneMapParams0.y) * _240) / ((((_240 * _toneMapParams0.z) + _toneMapParams0.w) * _240) + _toneMapParams1.x)))), saturate(saturate(saturate((((_241 * _toneMapParams0.x) + _toneMapParams0.y) * _241) / ((((_241 * _toneMapParams0.z) + _toneMapParams0.w) * _241) + _toneMapParams1.x)))), saturate(saturate(saturate((((_242 * _toneMapParams0.x) + _toneMapParams0.y) * _242) / ((((_242 * _toneMapParams0.z) + _toneMapParams0.w) * _242) + _toneMapParams1.x))))), float3(0.1f, 0.7f, 0.2f));
  _280 = dot(float3(saturate(_189), saturate(_190), saturate(_191)), float3(0.1f, 0.7f, 0.2f));
  _282 = _localToneMappingParams.y * _85;
  _283 = _localToneMappingParams.y * _86;
  _284 = _localToneMappingParams.y * _87;
  _318 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_282 * 1.70505f) - (_283 * 0.62179f)) - (_284 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _319 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_283 * 1.1408f) - (_282 * 0.13026f)) - (_284 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _320 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_282 * -0.024f) - (_283 * 0.12897f)) + (_284 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _321 = dot(float3(_318, _319, _320), float3(0.212671f, 0.71516f, 0.072169f));
  _328 = ((_318 - _321) * _powerParams.w) + _321;
  _329 = ((_319 - _321) * _powerParams.w) + _321;
  _330 = ((_320 - _321) * _powerParams.w) + _321;
  _364 = dot(float3(saturate(saturate(saturate((((_328 * _toneMapParams0.x) + _toneMapParams0.y) * _328) / ((((_328 * _toneMapParams0.z) + _toneMapParams0.w) * _328) + _toneMapParams1.x)))), saturate(saturate(saturate((((_329 * _toneMapParams0.x) + _toneMapParams0.y) * _329) / ((((_329 * _toneMapParams0.z) + _toneMapParams0.w) * _329) + _toneMapParams1.x)))), saturate(saturate(saturate((((_330 * _toneMapParams0.x) + _toneMapParams0.y) * _330) / ((((_330 * _toneMapParams0.z) + _toneMapParams0.w) * _330) + _toneMapParams1.x))))), float3(0.1f, 0.7f, 0.2f));
  _365 = _276 + -0.5f;
  _366 = _280 + -0.5f;
  _367 = _364 + -0.5f;
  _369 = _localToneMappingParams.z * -0.7213475f;
  _376 = exp2((_365 * _365) * _369);
  _377 = exp2((_366 * _366) * _369);
  _378 = exp2((_367 * _367) * _369);
  _380 = dot(float3(_376, _377, _378), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _392 = dot(float3(max(_189, 0.0f), max(_190, 0.0f), max(_191, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _394 = max(dot(float3(((_376 / _380) * _276), ((_377 / _380) * _280), ((_378 / _380) * _364)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _392;
  if (!(_392 > 0.007f)) {
    _403 = ((((_392 * _392) * 20408.16f) * (_394 + -1.0f)) + 1.0f);
  } else {
    _403 = _394;
  }
  _404 = _403 * _85;
  _405 = _403 * _86;
  _406 = _403 * _87;
  _440 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_404 * 1.70505f) - (_405 * 0.62179f)) - (_406 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _441 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_405 * 1.1408f) - (_404 * 0.13026f)) - (_406 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _442 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_404 * -0.024f) - (_405 * 0.12897f)) + (_406 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _443 = dot(float3(_440, _441, _442), float3(0.212671f, 0.71516f, 0.072169f));
  _450 = ((_440 - _443) * _powerParams.w) + _443;
  _451 = ((_441 - _443) * _powerParams.w) + _443;
  _452 = ((_442 - _443) * _powerParams.w) + _443;
  _492 = 1.0f - abs(_etcParams.w);
  _496 = saturate(_etcParams.w);  // [sem: expr_sat]
  _497 = (_492 * saturate(max(saturate(saturate((((_450 * _toneMapParams0.x) + _toneMapParams0.y) * _450) / ((((_450 * _toneMapParams0.z) + _toneMapParams0.w) * _450) + _toneMapParams1.x))), 0.0f))) + _496;
  _498 = (_492 * saturate(max(saturate(saturate((((_451 * _toneMapParams0.x) + _toneMapParams0.y) * _451) / ((((_451 * _toneMapParams0.z) + _toneMapParams0.w) * _451) + _toneMapParams1.x))), 0.0f))) + _496;
  _499 = (_492 * saturate(max(saturate(saturate((((_452 * _toneMapParams0.x) + _toneMapParams0.y) * _452) / ((((_452 * _toneMapParams0.z) + _toneMapParams0.w) * _452) + _toneMapParams1.x))), 0.0f))) + _496;
  if (_colorGradingParams.w > 0.0f) {
    _504 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _521 = (((max(0.0f, (1.0f - _497)) - _497) * _504) + _497);
    _522 = (((max(0.0f, (1.0f - _498)) - _498) * _504) + _498);
    _523 = (((max(0.0f, (1.0f - _499)) - _499) * _504) + _499);
  } else {
    _521 = _497;
    _522 = _498;
    _523 = _499;
  }
  _529 = _userImageAdjust.y + 1.0f;
  _533 = _userImageAdjust.x + 0.5f;
  _534 = ((_521 + -0.5f) * _529) + _533;
  _535 = ((_522 + -0.5f) * _529) + _533;
  _536 = ((_523 + -0.5f) * _529) + _533;
  _566 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _577 = (TEXCOORD.x * 2.0f) + -1.0f;
  _578 = TEXCOORD.y * 2.0f;
  _579 = 1.0f - _578;
  _607 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _579, ((_projToPrevProj[3].x) * _577))) + (_projToPrevProj[3].w);
  _610 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _579, ((_projToPrevProj[0].x) * _577))) + (_projToPrevProj[0].w)) / _607) - _577;
  _611 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _579, ((_projToPrevProj[1].x) * _577))) + (_projToPrevProj[1].w)) / _607) - _579;
  if (_localToneMappingParams.w > 0.0f) {
    _624 = saturate(1.0f - (sqrt((_611 * _611) + (_610 * _610)) * 2.0f));  // [sem: expr_sat]
  } else {
    _624 = 1.0f;  // [sem: expr_sat]
  }
  _627 = abs(_577);
  _628 = abs(_578 + -1.0f);
  _632 = saturate(1.0f - ((_624 * _postProcessParams.x) * dot(float2(_627, _628), float2(_627, _628))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _646 = (_632 * exp2(log2(saturate(mad(_colorBlind0.z, _536, mad(_colorBlind0.y, _535, (_colorBlind0.x * _534))))) * _566));
      _647 = (_632 * exp2(log2(saturate(mad(_colorBlind1.z, _536, mad(_colorBlind1.y, _535, (_colorBlind1.x * _534))))) * _566));
      _648 = (_632 * exp2(log2(saturate(mad(_colorBlind2.z, _536, mad(_colorBlind2.y, _535, (_colorBlind2.x * _534))))) * _566));
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
