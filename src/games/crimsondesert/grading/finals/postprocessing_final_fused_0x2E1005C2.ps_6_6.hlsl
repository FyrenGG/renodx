Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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
  float _603;
  float _604;
  float _605;
  float _641;
  float _642;
  float _643;
  float _712;
  float _769;
  float _770;
  float _771;
  float _52;
  float _53;
  float _55;
  float _56;
  float _58;
  float _71;
  float _73;
  float _81;
  float _94;
  float _96;
  float _98;
  float _100;
  float _116;
  float _130;
  float _144;
  float _145;
  float _149;
  float _152;
  float _155;
  float _172;
  float _182;
  float _192;
  float _195;
  float _196;
  float _197;
  float _209;
  float _221;
  float _233;
  float _234;
  float _237;
  float _240;
  float _243;
  float _277;
  float _281;
  float _283;
  float _284;
  float _285;
  float _297;
  float _309;
  float _321;
  float _322;
  float _325;
  float _328;
  float _331;
  float _365;
  float _366;
  float _367;
  float _368;
  float _370;
  float _373;
  float _376;
  float _379;
  float _381;
  float _386;
  float _395;
  float _405;
  float _406;
  float _407;
  float _419;
  float _431;
  float _443;
  float _444;
  float _447;
  float _450;
  float _453;
  float _464;
  float _475;
  float _486;
  float _489;
  float _498;
  float _506;
  float _512;
  float _518;
  float _519;
  float _523;
  float _526;
  float _529;
  float _546;
  float _550;
  float _567;
  float _569;
  float _609;
  float _610;
  float _613;
  float _616;
  float _619;
  float _624;
  float _646;
  float _648;
  float _651;
  float _654;
  float _657;
  float _663;
  float _665;
  float _666;
  float _667;
  float _679;
  float _689;
  float _699;
  float _713;
  float _715;
  float _722;
  _18 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
    _42 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
  } else {
    _41 = _18.z;
    _42 = _18.x;
  }
  if (_slopeParams.w > 0.0f) {
    _52 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _53 = _52 * 0.7692308f;
    _55 = frac(abs(_53));
    _56 = _52 * 0.08130081f;
    _58 = frac(abs(_56));
    _71 = ((select((_56 >= (-0.0f - _56)), _58, (-0.0f - _58)) * 1230.0f) + 10.0f) * ((select((_53 >= (-0.0f - _53)), _55, (-0.0f - _55)) * 13.0f) + 1.0f);
    _73 = frac(abs(_71));
    _81 = ((0.0075000525f - (select((_71 >= (-0.0f - _71)), _73, (-0.0f - _73)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _86 = (_81 * _41);
    _87 = (_81 * _18.y);
    _88 = (_81 * _42);
  } else {
    _86 = _41;
    _87 = _18.y;
    _88 = _42;
  }
  _94 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
  _96 = _94 * _slopeParams.x;
  _98 = _94 * _slopeParams.y;
  _100 = _94 * _slopeParams.z;
  _116 = exp2(_powerParams.x * log2(max(0.0f, ((_96 * max(0.0f, (((_87 * -0.62179f) - (_86 * 0.08326f)) + (_88 * 1.70505f)))) + _offsetParams.x))));
  _130 = exp2(log2(max(0.0f, ((max(0.0f, (((_87 * 1.1408f) - (_86 * 0.01055f)) - (_88 * 0.13026f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _144 = exp2(log2(max(0.0f, ((max(0.0f, (((_86 * 1.15297f) - (_87 * 0.12897f)) - (_88 * 0.024f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _145 = dot(float3(_116, _130, _144), float3(0.212671f, 0.71516f, 0.072169f));
  _149 = ((_116 - _145) * _powerParams.w) + _145;
  _152 = ((_130 - _145) * _powerParams.w) + _145;
  _155 = ((_144 - _145) * _powerParams.w) + _145;
  // [sem: expr_sat]
  _172 = saturate(saturate((((_149 * _toneMapParams0.x) + _toneMapParams0.y) * _149) / ((((_149 * _toneMapParams0.z) + _toneMapParams0.w) * _149) + _toneMapParams1.x)));
  // [sem: expr_sat]
  _182 = saturate(saturate((((_152 * _toneMapParams0.x) + _toneMapParams0.y) * _152) / ((((_152 * _toneMapParams0.z) + _toneMapParams0.w) * _152) + _toneMapParams1.x)));
  // [sem: expr_sat]
  _192 = saturate(saturate((((_155 * _toneMapParams0.x) + _toneMapParams0.y) * _155) / ((((_155 * _toneMapParams0.z) + _toneMapParams0.w) * _155) + _toneMapParams1.x)));
  _195 = _localToneMappingParams.x * _88;
  _196 = _localToneMappingParams.x * _87;
  _197 = _localToneMappingParams.x * _86;
  _209 = exp2(log2(max(0.0f, ((max(0.0f, (((_195 * 1.70505f) - (_196 * 0.62179f)) - (_197 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _221 = exp2(log2(max(0.0f, ((max(0.0f, (((_196 * 1.1408f) - (_195 * 0.13026f)) - (_197 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _233 = exp2(log2(max(0.0f, ((max(0.0f, (((_195 * -0.024f) - (_196 * 0.12897f)) + (_197 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _234 = dot(float3(_209, _221, _233), float3(0.212671f, 0.71516f, 0.072169f));
  _237 = ((_209 - _234) * _powerParams.w) + _234;
  _240 = ((_221 - _234) * _powerParams.w) + _234;
  _243 = ((_233 - _234) * _powerParams.w) + _234;
  _277 = dot(float3(saturate(saturate(saturate((((_237 * _toneMapParams0.x) + _toneMapParams0.y) * _237) / ((((_237 * _toneMapParams0.z) + _toneMapParams0.w) * _237) + _toneMapParams1.x)))), saturate(saturate(saturate((((_240 * _toneMapParams0.x) + _toneMapParams0.y) * _240) / ((((_240 * _toneMapParams0.z) + _toneMapParams0.w) * _240) + _toneMapParams1.x)))), saturate(saturate(saturate((((_243 * _toneMapParams0.x) + _toneMapParams0.y) * _243) / ((((_243 * _toneMapParams0.z) + _toneMapParams0.w) * _243) + _toneMapParams1.x))))), float3(0.1f, 0.7f, 0.2f));
  _281 = dot(float3(saturate(_172), saturate(_182), saturate(_192)), float3(0.1f, 0.7f, 0.2f));
  _283 = _localToneMappingParams.y * _88;
  _284 = _localToneMappingParams.y * _87;
  _285 = _localToneMappingParams.y * _86;
  _297 = exp2(log2(max(0.0f, ((max(0.0f, (((_283 * 1.70505f) - (_284 * 0.62179f)) - (_285 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _309 = exp2(log2(max(0.0f, ((max(0.0f, (((_284 * 1.1408f) - (_283 * 0.13026f)) - (_285 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _321 = exp2(log2(max(0.0f, ((max(0.0f, (((_283 * -0.024f) - (_284 * 0.12897f)) + (_285 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _322 = dot(float3(_297, _309, _321), float3(0.212671f, 0.71516f, 0.072169f));
  _325 = ((_297 - _322) * _powerParams.w) + _322;
  _328 = ((_309 - _322) * _powerParams.w) + _322;
  _331 = ((_321 - _322) * _powerParams.w) + _322;
  _365 = dot(float3(saturate(saturate(saturate((((_325 * _toneMapParams0.x) + _toneMapParams0.y) * _325) / ((((_325 * _toneMapParams0.z) + _toneMapParams0.w) * _325) + _toneMapParams1.x)))), saturate(saturate(saturate((((_328 * _toneMapParams0.x) + _toneMapParams0.y) * _328) / ((((_328 * _toneMapParams0.z) + _toneMapParams0.w) * _328) + _toneMapParams1.x)))), saturate(saturate(saturate((((_331 * _toneMapParams0.x) + _toneMapParams0.y) * _331) / ((((_331 * _toneMapParams0.z) + _toneMapParams0.w) * _331) + _toneMapParams1.x))))), float3(0.1f, 0.7f, 0.2f));
  _366 = _277 + -0.5f;
  _367 = _281 + -0.5f;
  _368 = _365 + -0.5f;
  _370 = _localToneMappingParams.z * -0.7213475f;
  _373 = exp2((_366 * _366) * _370);
  _376 = exp2((_367 * _367) * _370);
  _379 = exp2((_368 * _368) * _370);
  _381 = dot(float3(_373, _376, _379), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _386 = dot(float3(max(_172, 0.0f), max(_182, 0.0f), max(_192, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _395 = max(dot(float3(((_373 / _381) * _277), ((_376 / _381) * _281), ((_379 / _381) * _365)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _386;
  if (!(_386 > 0.007f)) {
    _404 = ((((_386 * _386) * 20408.16f) * (_395 + -1.0f)) + 1.0f);
  } else {
    _404 = _395;
  }
  _405 = _404 * _88;
  _406 = _404 * _87;
  _407 = _404 * _86;
  _419 = exp2(log2(max(0.0f, ((max(0.0f, (((_405 * 1.70505f) - (_406 * 0.62179f)) - (_407 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _431 = exp2(log2(max(0.0f, ((max(0.0f, (((_406 * 1.1408f) - (_405 * 0.13026f)) - (_407 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _443 = exp2(log2(max(0.0f, ((max(0.0f, (((_405 * -0.024f) - (_406 * 0.12897f)) + (_407 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _444 = dot(float3(_419, _431, _443), float3(0.212671f, 0.71516f, 0.072169f));
  _447 = ((_419 - _444) * _powerParams.w) + _444;
  _450 = ((_431 - _444) * _powerParams.w) + _444;
  _453 = ((_443 - _444) * _powerParams.w) + _444;
  _464 = max(saturate(saturate((((_447 * _toneMapParams0.x) + _toneMapParams0.y) * _447) / ((((_447 * _toneMapParams0.z) + _toneMapParams0.w) * _447) + _toneMapParams1.x))), 0.0f);
  _475 = max(saturate(saturate((((_450 * _toneMapParams0.x) + _toneMapParams0.y) * _450) / ((((_450 * _toneMapParams0.z) + _toneMapParams0.w) * _450) + _toneMapParams1.x))), 0.0f);
  _486 = max(saturate(saturate((((_453 * _toneMapParams0.x) + _toneMapParams0.y) * _453) / ((((_453 * _toneMapParams0.z) + _toneMapParams0.w) * _453) + _toneMapParams1.x))), 0.0f);
  _489 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_489.x < 1e-07f) || (_489.x == 1.0f))) {
    _498 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _506 = exp2(_powerParams.x * log2(max(0.0f, _offsetParams.x)));
    _512 = exp2(log2(max(0.0f, _offsetParams.y)) * _powerParams.y);
    _518 = exp2(log2(max(0.0f, _offsetParams.z)) * _powerParams.z);
    _519 = dot(float3(_506, _512, _518), float3(0.212671f, 0.71516f, 0.072169f));
    _523 = ((_506 - _519) * _powerParams.w) + _519;
    _526 = ((_512 - _519) * _powerParams.w) + _519;
    _529 = ((_518 - _519) * _powerParams.w) + _519;
    // [sem: expr_sat]
    _546 = saturate(saturate((((_526 * _toneMapParams0.x) + _toneMapParams0.y) * _526) / ((((_526 * _toneMapParams0.z) + _toneMapParams0.w) * _526) + _toneMapParams1.x)));
    _550 = max(max(_475, _546), max(max(_546, _546), _546));
    _567 = (sqrt(saturate((1.0f / _550) * min(min(min(_475, _546), min(min(_546, _546), _546)), (1.0f - _550)))) * 4.0f) * (-1.0f / (((1.0f - _498) * 8.0f) + (_498 * 5.0f)));
    _569 = 1.0f / (_567 + 1.0f);
    // [sem: expr_sat]
    _603 = saturate(((saturate(saturate((((_529 * _toneMapParams0.x) + _toneMapParams0.y) * _529) / ((((_529 * _toneMapParams0.z) + _toneMapParams0.w) * _529) + _toneMapParams1.x))) * _567) + _486) * _569);
    _604 = saturate(((_567 * _546) + _475) * _569);  // [sem: expr_sat]
    // [sem: expr_sat]
    _605 = saturate(((saturate(saturate((((_523 * _toneMapParams0.x) + _toneMapParams0.y) * _523) / ((((_523 * _toneMapParams0.z) + _toneMapParams0.w) * _523) + _toneMapParams1.x))) * _567) + _464) * _569);
  } else {
    _603 = _486;  // [sem: expr_sat]
    _604 = _475;  // [sem: expr_sat]
    _605 = _464;  // [sem: expr_sat]
  }
  _609 = 1.0f - abs(_etcParams.w);
  _610 = saturate(_etcParams.w);  // [sem: expr_sat]
  _613 = (saturate(_605) * _609) + _610;
  _616 = (saturate(_604) * _609) + _610;
  _619 = (saturate(_603) * _609) + _610;
  if (_colorGradingParams.w > 0.0f) {
    _624 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _641 = (((max(0.0f, (1.0f - _619)) - _619) * _624) + _619);
    _642 = (((max(0.0f, (1.0f - _616)) - _616) * _624) + _616);
    _643 = (((max(0.0f, (1.0f - _613)) - _613) * _624) + _613);
  } else {
    _641 = _619;
    _642 = _616;
    _643 = _613;
  }
  _646 = _userImageAdjust.y + 1.0f;
  _648 = _userImageAdjust.x + 0.5f;
  _651 = (_646 * (_643 + -0.5f)) + _648;
  _654 = (_646 * (_642 + -0.5f)) + _648;
  _657 = (_646 * (_641 + -0.5f)) + _648;
  _663 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _665 = (TEXCOORD.x * 2.0f) + -1.0f;
  _666 = TEXCOORD.y * 2.0f;
  _667 = 1.0f - _666;
  _679 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _667, ((_projToPrevProj[3].x) * _665)));
  _689 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _667, ((_projToPrevProj[0].x) * _665))) + (_projToPrevProj[0].w)) / _679) - _665;
  _699 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _667, ((_projToPrevProj[1].x) * _665))) + (_projToPrevProj[1].w)) / _679) - _667;
  if (_localToneMappingParams.w > 0.0f) {
    _712 = saturate(1.0f - (sqrt((_699 * _699) + (_689 * _689)) * 2.0f));  // [sem: expr_sat]
  } else {
    _712 = 1.0f;  // [sem: expr_sat]
  }
  _713 = abs(_665);
  _715 = abs(_666 + -1.0f);
  _722 = saturate(1.0f - ((_postProcessParams.x * _712) * dot(float2(_713, _715), float2(_713, _715))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _769 = (exp2(log2(saturate(mad(_colorBlind0.z, _657, mad(_colorBlind0.y, _654, (_colorBlind0.x * _651))))) * _663) * _722);
      _770 = (exp2(log2(saturate(mad(_colorBlind1.z, _657, mad(_colorBlind1.y, _654, (_colorBlind1.x * _651))))) * _663) * _722);
      _771 = (exp2(log2(saturate(mad(_colorBlind2.z, _657, mad(_colorBlind2.y, _654, (_colorBlind2.x * _651))))) * _663) * _722);
    } else {
      _769 = 0.0f;
      _770 = 0.0f;
      _771 = 0.0f;
    }
  } else {
    _769 = 0.0f;
    _770 = 0.0f;
    _771 = 0.0f;
  }
  SV_Target.x = _769;
  SV_Target.y = _770;
  SV_Target.z = _771;
  SV_Target.w = _18.w;
  return SV_Target;
}
