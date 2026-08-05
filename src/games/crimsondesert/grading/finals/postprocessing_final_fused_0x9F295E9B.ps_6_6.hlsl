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
  float _438;
  float _647;
  float _648;
  float _649;
  float _685;
  float _686;
  float _687;
  float _756;
  float _813;
  float _814;
  float _815;
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
  float _150;
  float _153;
  float _156;
  float _158;
  float _159;
  float _167;
  float _173;
  float _177;
  float _181;
  float _182;
  float _183;
  float _184;
  float _194;
  float _204;
  float _214;
  float _217;
  float _218;
  float _219;
  float _231;
  float _243;
  float _255;
  float _256;
  float _260;
  float _264;
  float _268;
  float _269;
  float _270;
  float _271;
  float _305;
  float _309;
  float _311;
  float _312;
  float _313;
  float _325;
  float _337;
  float _349;
  float _350;
  float _354;
  float _358;
  float _362;
  float _363;
  float _364;
  float _365;
  float _399;
  float _400;
  float _401;
  float _402;
  float _404;
  float _407;
  float _410;
  float _413;
  float _415;
  float _420;
  float _429;
  float _439;
  float _440;
  float _441;
  float _453;
  float _465;
  float _477;
  float _478;
  float _482;
  float _486;
  float _490;
  float _491;
  float _492;
  float _493;
  float _504;
  float _515;
  float _526;
  float _529;
  float _538;
  float _546;
  float _552;
  float _558;
  float _559;
  float _566;
  float _570;
  float _574;
  float _577;
  float _578;
  float _579;
  float _590;
  float _594;
  float _611;
  float _613;
  float _653;
  float _654;
  float _657;
  float _660;
  float _663;
  float _668;
  float _690;
  float _692;
  float _695;
  float _698;
  float _701;
  float _707;
  float _709;
  float _710;
  float _711;
  float _723;
  float _733;
  float _743;
  float _757;
  float _759;
  float _766;
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
  _150 = _toneMapParams1.z * _toneMapParams0.x;
  _153 = _toneMapParams0.z * _toneMapParams0.y;
  _156 = _toneMapParams1.x * _toneMapParams0.w;
  _158 = _toneMapParams1.y * _toneMapParams0.w;
  _159 = _toneMapParams1.x / _toneMapParams1.y;
  _167 = ((((_150 + _153) * _toneMapParams1.z) + _156) / (((_150 + _toneMapParams0.y) * _toneMapParams1.z) + _158)) - _159;
  _173 = (lerp(_145, _116, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _177 = (lerp(_145, _130, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _181 = (lerp(_145, _144, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _182 = _173 * _toneMapParams0.x;
  _183 = _177 * _toneMapParams0.x;
  _184 = _181 * _toneMapParams0.x;
  _194 = saturate((((((_182 + _153) * _173) + _156) / (((_182 + _toneMapParams0.y) * _173) + _158)) - _159) / _167);  // [sem: expr_sat]
  _204 = saturate((((((_183 + _153) * _177) + _156) / (((_183 + _toneMapParams0.y) * _177) + _158)) - _159) / _167);  // [sem: expr_sat]
  _214 = saturate((((((_184 + _153) * _181) + _156) / (((_184 + _toneMapParams0.y) * _181) + _158)) - _159) / _167);  // [sem: expr_sat]
  _217 = _localToneMappingParams.x * _88;
  _218 = _localToneMappingParams.x * _87;
  _219 = _localToneMappingParams.x * _86;
  _231 = exp2(log2(max(0.0f, ((max(0.0f, (((_217 * 1.70505f) - (_218 * 0.62179f)) - (_219 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _243 = exp2(log2(max(0.0f, ((max(0.0f, (((_218 * 1.1408f) - (_217 * 0.13026f)) - (_219 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _255 = exp2(log2(max(0.0f, ((max(0.0f, (((_217 * -0.024f) - (_218 * 0.12897f)) + (_219 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _256 = dot(float3(_231, _243, _255), float3(0.212671f, 0.71516f, 0.072169f));
  _260 = (lerp(_256, _231, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _264 = (lerp(_256, _243, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _268 = (lerp(_256, _255, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _269 = _260 * _toneMapParams0.x;
  _270 = _264 * _toneMapParams0.x;
  _271 = _268 * _toneMapParams0.x;
  _305 = dot(float3(saturate(saturate((((((_269 + _153) * _260) + _156) / (((_269 + _toneMapParams0.y) * _260) + _158)) - _159) / _167)), saturate(saturate((((((_270 + _153) * _264) + _156) / (((_270 + _toneMapParams0.y) * _264) + _158)) - _159) / _167)), saturate(saturate((((((_271 + _153) * _268) + _156) / (((_271 + _toneMapParams0.y) * _268) + _158)) - _159) / _167))), float3(0.1f, 0.7f, 0.2f));
  _309 = dot(float3(saturate(_194), saturate(_204), saturate(_214)), float3(0.1f, 0.7f, 0.2f));
  _311 = _localToneMappingParams.y * _88;
  _312 = _localToneMappingParams.y * _87;
  _313 = _localToneMappingParams.y * _86;
  _325 = exp2(log2(max(0.0f, ((max(0.0f, (((_311 * 1.70505f) - (_312 * 0.62179f)) - (_313 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _337 = exp2(log2(max(0.0f, ((max(0.0f, (((_312 * 1.1408f) - (_311 * 0.13026f)) - (_313 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _349 = exp2(log2(max(0.0f, ((max(0.0f, (((_311 * -0.024f) - (_312 * 0.12897f)) + (_313 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _350 = dot(float3(_325, _337, _349), float3(0.212671f, 0.71516f, 0.072169f));
  _354 = (lerp(_350, _325, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _358 = (lerp(_350, _337, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _362 = (lerp(_350, _349, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _363 = _354 * _toneMapParams0.x;
  _364 = _358 * _toneMapParams0.x;
  _365 = _362 * _toneMapParams0.x;
  _399 = dot(float3(saturate(saturate((((((_363 + _153) * _354) + _156) / (((_363 + _toneMapParams0.y) * _354) + _158)) - _159) / _167)), saturate(saturate((((((_364 + _153) * _358) + _156) / (((_364 + _toneMapParams0.y) * _358) + _158)) - _159) / _167)), saturate(saturate((((((_365 + _153) * _362) + _156) / (((_365 + _toneMapParams0.y) * _362) + _158)) - _159) / _167))), float3(0.1f, 0.7f, 0.2f));
  _400 = _305 + -0.5f;
  _401 = _309 + -0.5f;
  _402 = _399 + -0.5f;
  _404 = _localToneMappingParams.z * -0.7213475f;
  _407 = exp2((_400 * _400) * _404);
  _410 = exp2((_401 * _401) * _404);
  _413 = exp2((_402 * _402) * _404);
  _415 = dot(float3(_407, _410, _413), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _420 = dot(float3(max(_194, 0.0f), max(_204, 0.0f), max(_214, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _429 = max(dot(float3(((_407 / _415) * _305), ((_410 / _415) * _309), ((_413 / _415) * _399)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _420;
  if (!(_420 > 0.007f)) {
    _438 = ((((_420 * _420) * 20408.16f) * (_429 + -1.0f)) + 1.0f);
  } else {
    _438 = _429;
  }
  _439 = _438 * _88;
  _440 = _438 * _87;
  _441 = _438 * _86;
  _453 = exp2(log2(max(0.0f, ((max(0.0f, (((_439 * 1.70505f) - (_440 * 0.62179f)) - (_441 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _465 = exp2(log2(max(0.0f, ((max(0.0f, (((_440 * 1.1408f) - (_439 * 0.13026f)) - (_441 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _477 = exp2(log2(max(0.0f, ((max(0.0f, (((_439 * -0.024f) - (_440 * 0.12897f)) + (_441 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _478 = dot(float3(_453, _465, _477), float3(0.212671f, 0.71516f, 0.072169f));
  _482 = (lerp(_478, _453, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _486 = (lerp(_478, _465, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _490 = (lerp(_478, _477, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _491 = _482 * _toneMapParams0.x;
  _492 = _486 * _toneMapParams0.x;
  _493 = _490 * _toneMapParams0.x;
  _504 = max(saturate((((((_491 + _153) * _482) + _156) / (((_491 + _toneMapParams0.y) * _482) + _158)) - _159) / _167), 0.0f);
  _515 = max(saturate((((((_492 + _153) * _486) + _156) / (((_492 + _toneMapParams0.y) * _486) + _158)) - _159) / _167), 0.0f);
  _526 = max(saturate((((((_493 + _153) * _490) + _156) / (((_493 + _toneMapParams0.y) * _490) + _158)) - _159) / _167), 0.0f);
  _529 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_529.x < 1e-07f) || (_529.x == 1.0f))) {
    _538 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _546 = exp2(_powerParams.x * log2(max(0.0f, _offsetParams.x)));
    _552 = exp2(log2(max(0.0f, _offsetParams.y)) * _powerParams.y);
    _558 = exp2(log2(max(0.0f, _offsetParams.z)) * _powerParams.z);
    _559 = dot(float3(_546, _552, _558), float3(0.212671f, 0.71516f, 0.072169f));
    _566 = (lerp(_559, _546, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _570 = (lerp(_559, _552, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _574 = (lerp(_559, _558, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _577 = _566 * _toneMapParams0.x;
    _578 = _570 * _toneMapParams0.x;
    _579 = _574 * _toneMapParams0.x;
    _590 = saturate((((((_578 + _153) * _570) + _156) / (((_578 + _toneMapParams0.y) * _570) + _158)) - _159) / _167);  // [sem: expr_sat]
    _594 = max(max(_515, _590), max(max(_590, _590), _590));
    _611 = (sqrt(saturate((1.0f / _594) * min(min(min(_515, _590), min(min(_590, _590), _590)), (1.0f - _594)))) * 4.0f) * (-1.0f / (((1.0f - _538) * 8.0f) + (_538 * 5.0f)));
    _613 = 1.0f / (_611 + 1.0f);
    // [sem: expr_sat]
    _647 = saturate(((saturate((((((_579 + _153) * _574) + _156) / (((_579 + _toneMapParams0.y) * _574) + _158)) - _159) / _167) * _611) + _526) * _613);
    _648 = saturate(((_611 * _590) + _515) * _613);  // [sem: expr_sat]
    // [sem: expr_sat]
    _649 = saturate(((saturate((((((_577 + _153) * _566) + _156) / (((_577 + _toneMapParams0.y) * _566) + _158)) - _159) / _167) * _611) + _504) * _613);
  } else {
    _647 = _526;  // [sem: expr_sat]
    _648 = _515;  // [sem: expr_sat]
    _649 = _504;  // [sem: expr_sat]
  }
  _653 = 1.0f - abs(_etcParams.w);
  _654 = saturate(_etcParams.w);  // [sem: expr_sat]
  _657 = (saturate(_649) * _653) + _654;
  _660 = (saturate(_648) * _653) + _654;
  _663 = (saturate(_647) * _653) + _654;
  if (_colorGradingParams.w > 0.0f) {
    _668 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _685 = (((max(0.0f, (1.0f - _663)) - _663) * _668) + _663);
    _686 = (((max(0.0f, (1.0f - _660)) - _660) * _668) + _660);
    _687 = (((max(0.0f, (1.0f - _657)) - _657) * _668) + _657);
  } else {
    _685 = _663;
    _686 = _660;
    _687 = _657;
  }
  _690 = _userImageAdjust.y + 1.0f;
  _692 = _userImageAdjust.x + 0.5f;
  _695 = (_690 * (_687 + -0.5f)) + _692;
  _698 = (_690 * (_686 + -0.5f)) + _692;
  _701 = (_690 * (_685 + -0.5f)) + _692;
  _707 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _709 = (TEXCOORD.x * 2.0f) + -1.0f;
  _710 = TEXCOORD.y * 2.0f;
  _711 = 1.0f - _710;
  _723 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _711, ((_projToPrevProj[3].x) * _709)));
  _733 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _711, ((_projToPrevProj[0].x) * _709))) + (_projToPrevProj[0].w)) / _723) - _709;
  _743 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _711, ((_projToPrevProj[1].x) * _709))) + (_projToPrevProj[1].w)) / _723) - _711;
  if (_localToneMappingParams.w > 0.0f) {
    _756 = saturate(1.0f - (sqrt((_743 * _743) + (_733 * _733)) * 2.0f));  // [sem: expr_sat]
  } else {
    _756 = 1.0f;  // [sem: expr_sat]
  }
  _757 = abs(_709);
  _759 = abs(_710 + -1.0f);
  _766 = saturate(1.0f - ((_postProcessParams.x * _756) * dot(float2(_757, _759), float2(_757, _759))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _813 = (exp2(log2(saturate(mad(_colorBlind0.z, _701, mad(_colorBlind0.y, _698, (_colorBlind0.x * _695))))) * _707) * _766);
      _814 = (exp2(log2(saturate(mad(_colorBlind1.z, _701, mad(_colorBlind1.y, _698, (_colorBlind1.x * _695))))) * _707) * _766);
      _815 = (exp2(log2(saturate(mad(_colorBlind2.z, _701, mad(_colorBlind2.y, _698, (_colorBlind2.x * _695))))) * _707) * _766);
    } else {
      _813 = 0.0f;
      _814 = 0.0f;
      _815 = 0.0f;
    }
  } else {
    _813 = 0.0f;
    _814 = 0.0f;
    _815 = 0.0f;
  }
  SV_Target.x = _813;
  SV_Target.y = _814;
  SV_Target.z = _815;
  SV_Target.w = _18.w;
  return SV_Target;
}
