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
  float _587;
  float _900;
  float _901;
  float _902;
  float _938;
  float _939;
  float _940;
  float _1009;
  float _1066;
  float _1067;
  float _1068;
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
  float _159;
  float _163;
  float _165;
  float _166;
  float _167;
  float _168;
  float _169;
  float _170;
  float _171;
  float _175;
  float _179;
  float _183;
  float _184;
  float _186;
  float _188;
  float _190;
  float _191;
  float _192;
  float _193;
  float _198;
  float _221;
  float _241;
  float _261;
  float _264;
  float _265;
  float _266;
  float _278;
  float _290;
  float _302;
  float _303;
  float _306;
  float _309;
  float _312;
  float _313;
  float _314;
  float _315;
  float _316;
  float _317;
  float _318;
  float _322;
  float _326;
  float _330;
  float _332;
  float _334;
  float _336;
  float _337;
  float _338;
  float _339;
  float _403;
  float _407;
  float _409;
  float _410;
  float _411;
  float _423;
  float _435;
  float _447;
  float _448;
  float _451;
  float _454;
  float _457;
  float _458;
  float _459;
  float _460;
  float _461;
  float _462;
  float _463;
  float _467;
  float _471;
  float _475;
  float _477;
  float _479;
  float _481;
  float _482;
  float _483;
  float _484;
  float _548;
  float _549;
  float _550;
  float _551;
  float _553;
  float _556;
  float _559;
  float _562;
  float _564;
  float _569;
  float _578;
  float _588;
  float _589;
  float _590;
  float _602;
  float _614;
  float _626;
  float _627;
  float _630;
  float _633;
  float _636;
  float _637;
  float _638;
  float _639;
  float _640;
  float _641;
  float _642;
  float _646;
  float _650;
  float _654;
  float _656;
  float _658;
  float _660;
  float _661;
  float _662;
  float _663;
  float _684;
  float _705;
  float _726;
  float _729;
  float _738;
  float _746;
  float _752;
  float _758;
  float _759;
  float _763;
  float _766;
  float _769;
  float _772;
  float _773;
  float _774;
  float _775;
  float _776;
  float _777;
  float _781;
  float _785;
  float _789;
  float _791;
  float _793;
  float _795;
  float _796;
  float _797;
  float _798;
  float _823;
  float _827;
  float _844;
  float _846;
  float _906;
  float _907;
  float _910;
  float _913;
  float _916;
  float _921;
  float _943;
  float _945;
  float _948;
  float _951;
  float _954;
  float _960;
  float _962;
  float _963;
  float _964;
  float _976;
  float _986;
  float _996;
  float _1010;
  float _1012;
  float _1019;
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
  _159 = _toneMapParams0.x - _toneMapParams0.z;
  _163 = (_159 * _toneMapParams0.w) / _toneMapParams0.y;
  _165 = _159 - (_toneMapParams0.y * _163);
  _166 = _149 / _toneMapParams0.z;
  _167 = _152 / _toneMapParams0.z;
  _168 = _155 / _toneMapParams0.z;
  _169 = saturate(_166);  // [sem: _166_sat]
  _170 = saturate(_167);  // [sem: _167_sat]
  _171 = saturate(_168);  // [sem: _168_sat]
  _175 = (_169 * _169) * (3.0f - (_169 * 2.0f));
  _179 = (_170 * _170) * (3.0f - (_170 * 2.0f));
  _183 = (_171 * _171) * (3.0f - (_171 * 2.0f));
  _184 = _toneMapParams0.z + _163;
  _186 = select((_149 < _184), 0.0f, 1.0f);
  _188 = select((_152 < _184), 0.0f, 1.0f);
  _190 = select((_155 < _184), 0.0f, 1.0f);
  _191 = _149 - _toneMapParams0.z;
  _192 = _152 - _toneMapParams0.z;
  _193 = _155 - _toneMapParams0.z;
  _198 = ((-0.0f - ((_toneMapParams0.y * _toneMapParams0.x) / _165)) / _toneMapParams0.x) * 1.442695f;
  // [sem: expr_sat]
  _221 = saturate((((((pow(_166, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _175)) + ((_175 - _186) * ((_191 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_198 * (_191 - _163)) * _165)) * _186));
  // [sem: expr_sat]
  _241 = saturate((((((pow(_167, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _179)) + ((_179 - _188) * ((_192 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_198 * (_192 - _163)) * _165)) * _188));
  // [sem: expr_sat]
  _261 = saturate((((((pow(_168, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _183)) + ((_183 - _190) * ((_193 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_198 * (_193 - _163)) * _165)) * _190));
  _264 = _localToneMappingParams.x * _88;
  _265 = _localToneMappingParams.x * _87;
  _266 = _localToneMappingParams.x * _86;
  _278 = exp2(log2(max(0.0f, ((max(0.0f, (((_264 * 1.70505f) - (_265 * 0.62179f)) - (_266 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _290 = exp2(log2(max(0.0f, ((max(0.0f, (((_265 * 1.1408f) - (_264 * 0.13026f)) - (_266 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _302 = exp2(log2(max(0.0f, ((max(0.0f, (((_264 * -0.024f) - (_265 * 0.12897f)) + (_266 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _303 = dot(float3(_278, _290, _302), float3(0.212671f, 0.71516f, 0.072169f));
  _306 = ((_278 - _303) * _powerParams.w) + _303;
  _309 = ((_290 - _303) * _powerParams.w) + _303;
  _312 = ((_302 - _303) * _powerParams.w) + _303;
  _313 = _306 / _toneMapParams0.z;
  _314 = _309 / _toneMapParams0.z;
  _315 = _312 / _toneMapParams0.z;
  _316 = saturate(_313);  // [sem: _313_sat]
  _317 = saturate(_314);  // [sem: _314_sat]
  _318 = saturate(_315);  // [sem: _315_sat]
  _322 = (_316 * _316) * (3.0f - (_316 * 2.0f));
  _326 = (_317 * _317) * (3.0f - (_317 * 2.0f));
  _330 = (_318 * _318) * (3.0f - (_318 * 2.0f));
  _332 = select((_306 < _184), 0.0f, 1.0f);
  _334 = select((_309 < _184), 0.0f, 1.0f);
  _336 = select((_312 < _184), 0.0f, 1.0f);
  _337 = _306 - _toneMapParams0.z;
  _338 = _309 - _toneMapParams0.z;
  _339 = _312 - _toneMapParams0.z;
  _403 = dot(float3(saturate(saturate((((((pow(_313, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _322)) + ((_322 - _332) * ((_337 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_337 - _163) * _198) * _165)) * _332))), saturate(saturate((((((pow(_314, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _326)) + ((_326 - _334) * ((_338 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_338 - _163) * _198) * _165)) * _334))), saturate(saturate((((((pow(_315, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _330)) + ((_330 - _336) * ((_339 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_339 - _163) * _198) * _165)) * _336)))), float3(0.1f, 0.7f, 0.2f));
  _407 = dot(float3(saturate(_221), saturate(_241), saturate(_261)), float3(0.1f, 0.7f, 0.2f));
  _409 = _localToneMappingParams.y * _88;
  _410 = _localToneMappingParams.y * _87;
  _411 = _localToneMappingParams.y * _86;
  _423 = exp2(log2(max(0.0f, ((max(0.0f, (((_409 * 1.70505f) - (_410 * 0.62179f)) - (_411 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _435 = exp2(log2(max(0.0f, ((max(0.0f, (((_410 * 1.1408f) - (_409 * 0.13026f)) - (_411 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _447 = exp2(log2(max(0.0f, ((max(0.0f, (((_409 * -0.024f) - (_410 * 0.12897f)) + (_411 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _448 = dot(float3(_423, _435, _447), float3(0.212671f, 0.71516f, 0.072169f));
  _451 = ((_423 - _448) * _powerParams.w) + _448;
  _454 = ((_435 - _448) * _powerParams.w) + _448;
  _457 = ((_447 - _448) * _powerParams.w) + _448;
  _458 = _451 / _toneMapParams0.z;
  _459 = _454 / _toneMapParams0.z;
  _460 = _457 / _toneMapParams0.z;
  _461 = saturate(_458);  // [sem: _458_sat]
  _462 = saturate(_459);  // [sem: _459_sat]
  _463 = saturate(_460);  // [sem: _460_sat]
  _467 = (_461 * _461) * (3.0f - (_461 * 2.0f));
  _471 = (_462 * _462) * (3.0f - (_462 * 2.0f));
  _475 = (_463 * _463) * (3.0f - (_463 * 2.0f));
  _477 = select((_451 < _184), 0.0f, 1.0f);
  _479 = select((_454 < _184), 0.0f, 1.0f);
  _481 = select((_457 < _184), 0.0f, 1.0f);
  _482 = _451 - _toneMapParams0.z;
  _483 = _454 - _toneMapParams0.z;
  _484 = _457 - _toneMapParams0.z;
  _548 = dot(float3(saturate(saturate((((((pow(_458, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _467)) + ((_467 - _477) * ((_482 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_482 - _163) * _198) * _165)) * _477))), saturate(saturate((((((pow(_459, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _471)) + ((_471 - _479) * ((_483 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_483 - _163) * _198) * _165)) * _479))), saturate(saturate((((((pow(_460, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _475)) + ((_475 - _481) * ((_484 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_484 - _163) * _198) * _165)) * _481)))), float3(0.1f, 0.7f, 0.2f));
  _549 = _403 + -0.5f;
  _550 = _407 + -0.5f;
  _551 = _548 + -0.5f;
  _553 = _localToneMappingParams.z * -0.7213475f;
  _556 = exp2((_549 * _549) * _553);
  _559 = exp2((_550 * _550) * _553);
  _562 = exp2((_551 * _551) * _553);
  _564 = dot(float3(_556, _559, _562), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _569 = dot(float3(max(_221, 0.0f), max(_241, 0.0f), max(_261, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _578 = max(dot(float3(((_556 / _564) * _403), ((_559 / _564) * _407), ((_562 / _564) * _548)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _569;
  if (!(_569 > 0.007f)) {
    _587 = ((((_569 * _569) * 20408.16f) * (_578 + -1.0f)) + 1.0f);
  } else {
    _587 = _578;
  }
  _588 = _587 * _88;
  _589 = _587 * _87;
  _590 = _587 * _86;
  _602 = exp2(log2(max(0.0f, ((_96 * max(0.0f, (((_588 * 1.70505f) - (_589 * 0.62179f)) - (_590 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _614 = exp2(log2(max(0.0f, ((_98 * max(0.0f, (((_589 * 1.1408f) - (_588 * 0.13026f)) - (_590 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _626 = exp2(log2(max(0.0f, ((_100 * max(0.0f, (((_588 * -0.024f) - (_589 * 0.12897f)) + (_590 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _627 = dot(float3(_602, _614, _626), float3(0.212671f, 0.71516f, 0.072169f));
  _630 = ((_602 - _627) * _powerParams.w) + _627;
  _633 = ((_614 - _627) * _powerParams.w) + _627;
  _636 = ((_626 - _627) * _powerParams.w) + _627;
  _637 = _630 / _toneMapParams0.z;
  _638 = _633 / _toneMapParams0.z;
  _639 = _636 / _toneMapParams0.z;
  _640 = saturate(_637);  // [sem: _637_sat]
  _641 = saturate(_638);  // [sem: _638_sat]
  _642 = saturate(_639);  // [sem: _639_sat]
  _646 = (_640 * _640) * (3.0f - (_640 * 2.0f));
  _650 = (_641 * _641) * (3.0f - (_641 * 2.0f));
  _654 = (_642 * _642) * (3.0f - (_642 * 2.0f));
  _656 = select((_630 < _184), 0.0f, 1.0f);
  _658 = select((_633 < _184), 0.0f, 1.0f);
  _660 = select((_636 < _184), 0.0f, 1.0f);
  _661 = _630 - _toneMapParams0.z;
  _662 = _633 - _toneMapParams0.z;
  _663 = _636 - _toneMapParams0.z;
  _684 = max(saturate((((((pow(_637, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _646)) + ((_646 - _656) * ((_661 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_661 - _163) * _198) * _165)) * _656)), 0.0f);
  _705 = max(saturate((((((pow(_638, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _650)) + ((_650 - _658) * ((_662 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_662 - _163) * _198) * _165)) * _658)), 0.0f);
  _726 = max(saturate((((((pow(_639, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _654)) + ((_654 - _660) * ((_663 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_663 - _163) * _198) * _165)) * _660)), 0.0f);
  _729 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_729.x < 1e-07f) || (_729.x == 1.0f))) {
    _738 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _746 = exp2(_powerParams.x * log2(max(0.0f, _offsetParams.x)));
    _752 = exp2(log2(max(0.0f, _offsetParams.y)) * _powerParams.y);
    _758 = exp2(log2(max(0.0f, _offsetParams.z)) * _powerParams.z);
    _759 = dot(float3(_746, _752, _758), float3(0.212671f, 0.71516f, 0.072169f));
    _763 = ((_746 - _759) * _powerParams.w) + _759;
    _766 = ((_752 - _759) * _powerParams.w) + _759;
    _769 = ((_758 - _759) * _powerParams.w) + _759;
    _772 = _763 / _toneMapParams0.z;
    _773 = _766 / _toneMapParams0.z;
    _774 = _769 / _toneMapParams0.z;
    _775 = saturate(_772);  // [sem: _772_sat]
    _776 = saturate(_773);  // [sem: _773_sat]
    _777 = saturate(_774);  // [sem: _774_sat]
    _781 = (_775 * _775) * (3.0f - (_775 * 2.0f));
    _785 = (_776 * _776) * (3.0f - (_776 * 2.0f));
    _789 = (_777 * _777) * (3.0f - (_777 * 2.0f));
    _791 = select((_763 < _184), 0.0f, 1.0f);
    _793 = select((_766 < _184), 0.0f, 1.0f);
    _795 = select((_769 < _184), 0.0f, 1.0f);
    _796 = _763 - _toneMapParams0.z;
    _797 = _766 - _toneMapParams0.z;
    _798 = _769 - _toneMapParams0.z;
    // [sem: expr_sat]
    _823 = saturate((((((pow(_773, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _785)) + ((_785 - _793) * ((_797 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_797 - _163) * _198) * _165)) * _793));
    _827 = max(max(_705, _823), max(max(_823, _823), _823));
    _844 = (sqrt(saturate((1.0f / _827) * min(min(min(_705, _823), min(min(_823, _823), _823)), (1.0f - _827)))) * 4.0f) * (-1.0f / (((1.0f - _738) * 8.0f) + (_738 * 5.0f)));
    _846 = 1.0f / (_844 + 1.0f);
    // [sem: expr_sat]
    _900 = saturate(((saturate((((((pow(_774, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _789)) + ((_789 - _795) * ((_798 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_798 - _163) * _198) * _165)) * _795)) * _844) + _726) * _846);
    _901 = saturate(((_844 * _823) + _705) * _846);  // [sem: expr_sat]
    // [sem: expr_sat]
    _902 = saturate(((saturate((((((pow(_772, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _781)) + ((_781 - _791) * ((_796 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_796 - _163) * _198) * _165)) * _791)) * _844) + _684) * _846);
  } else {
    _900 = _726;  // [sem: expr_sat]
    _901 = _705;  // [sem: expr_sat]
    _902 = _684;  // [sem: expr_sat]
  }
  _906 = 1.0f - abs(_etcParams.w);
  _907 = saturate(_etcParams.w);  // [sem: expr_sat]
  _910 = (saturate(_902) * _906) + _907;
  _913 = (saturate(_901) * _906) + _907;
  _916 = (saturate(_900) * _906) + _907;
  if (_colorGradingParams.w > 0.0f) {
    _921 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _938 = (((max(0.0f, (1.0f - _916)) - _916) * _921) + _916);
    _939 = (((max(0.0f, (1.0f - _913)) - _913) * _921) + _913);
    _940 = (((max(0.0f, (1.0f - _910)) - _910) * _921) + _910);
  } else {
    _938 = _916;
    _939 = _913;
    _940 = _910;
  }
  _943 = _userImageAdjust.y + 1.0f;
  _945 = _userImageAdjust.x + 0.5f;
  _948 = (_943 * (_940 + -0.5f)) + _945;
  _951 = (_943 * (_939 + -0.5f)) + _945;
  _954 = (_943 * (_938 + -0.5f)) + _945;
  _960 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _962 = (TEXCOORD.x * 2.0f) + -1.0f;
  _963 = TEXCOORD.y * 2.0f;
  _964 = 1.0f - _963;
  _976 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _964, ((_projToPrevProj[3].x) * _962)));
  _986 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _964, ((_projToPrevProj[0].x) * _962))) + (_projToPrevProj[0].w)) / _976) - _962;
  _996 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _964, ((_projToPrevProj[1].x) * _962))) + (_projToPrevProj[1].w)) / _976) - _964;
  if (_localToneMappingParams.w > 0.0f) {
    _1009 = saturate(1.0f - (sqrt((_996 * _996) + (_986 * _986)) * 2.0f));  // [sem: expr_sat]
  } else {
    _1009 = 1.0f;  // [sem: expr_sat]
  }
  _1010 = abs(_962);
  _1012 = abs(_963 + -1.0f);
  _1019 = saturate(1.0f - ((_postProcessParams.x * _1009) * dot(float2(_1010, _1012), float2(_1010, _1012))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _1066 = (exp2(log2(saturate(mad(_colorBlind0.z, _954, mad(_colorBlind0.y, _951, (_colorBlind0.x * _948))))) * _960) * _1019);
      _1067 = (exp2(log2(saturate(mad(_colorBlind1.z, _954, mad(_colorBlind1.y, _951, (_colorBlind1.x * _948))))) * _960) * _1019);
      _1068 = (exp2(log2(saturate(mad(_colorBlind2.z, _954, mad(_colorBlind2.y, _951, (_colorBlind2.x * _948))))) * _960) * _1019);
    } else {
      _1066 = 0.0f;
      _1067 = 0.0f;
      _1068 = 0.0f;
    }
  } else {
    _1066 = 0.0f;
    _1067 = 0.0f;
    _1068 = 0.0f;
  }
  SV_Target.x = _1066;
  SV_Target.y = _1067;
  SV_Target.z = _1068;
  SV_Target.w = _18.w;
  return SV_Target;
}
