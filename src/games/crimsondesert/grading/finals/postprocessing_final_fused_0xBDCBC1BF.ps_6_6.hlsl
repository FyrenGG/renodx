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
  float _288;
  float _289;
  float _290;
  float _528;
  float _529;
  float _530;
  float _775;
  float _776;
  float _777;
  float _878;
  float _1056;
  float _1057;
  float _1058;
  float _1155;
  float _1156;
  float _1157;
  float _1224;
  float _1280;
  float _1281;
  float _1282;
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
  float _161;
  float _168;
  float _175;
  float _176;
  float _177;
  float _178;
  float _179;
  float _180;
  float _181;
  float _197;
  float _213;
  float _229;
  float _230;
  float _231;
  float _232;
  float _233;
  bool _236;
  float _250;
  float _251;
  float _252;
  float _253;
  float _256;
  float _259;
  float _263;
  float _267;
  float _271;
  float _291;
  float _303;
  float _315;
  float _327;
  float _334;
  float _341;
  float _348;
  float _351;
  float _352;
  float _353;
  float _365;
  float _377;
  float _389;
  float _390;
  float _393;
  float _396;
  float _399;
  float _406;
  float _413;
  float _420;
  float _421;
  float _422;
  float _423;
  float _424;
  float _425;
  float _426;
  float _442;
  float _458;
  float _474;
  float _475;
  float _476;
  float _477;
  float _478;
  float _490;
  float _491;
  float _492;
  float _493;
  float _496;
  float _499;
  float _503;
  float _507;
  float _511;
  float _531;
  float _543;
  float _555;
  float _567;
  float _592;
  float _596;
  float _598;
  float _599;
  float _600;
  float _612;
  float _624;
  float _636;
  float _637;
  float _640;
  float _643;
  float _646;
  float _653;
  float _660;
  float _667;
  float _668;
  float _669;
  float _670;
  float _671;
  float _672;
  float _673;
  float _689;
  float _705;
  float _721;
  float _722;
  float _723;
  float _724;
  float _725;
  float _737;
  float _738;
  float _739;
  float _740;
  float _743;
  float _746;
  float _750;
  float _754;
  float _758;
  float _778;
  float _790;
  float _802;
  float _814;
  float _839;
  float _840;
  float _841;
  float _842;
  float _844;
  float _847;
  float _850;
  float _853;
  float _855;
  float _860;
  float _869;
  float _879;
  float _880;
  float _881;
  float _893;
  float _905;
  float _917;
  float _918;
  float _921;
  float _924;
  float _927;
  float _934;
  float _941;
  float _948;
  float _949;
  float _950;
  float _951;
  float _952;
  float _953;
  float _954;
  float _970;
  float _986;
  float _1002;
  float _1003;
  float _1004;
  float _1005;
  float _1006;
  float _1018;
  float _1019;
  float _1020;
  float _1021;
  float _1024;
  float _1027;
  float _1031;
  float _1035;
  float _1039;
  float _1059;
  float _1071;
  float _1083;
  float _1095;
  float _1099;
  float _1100;
  float _1111;
  float _1122;
  float _1133;
  float _1138;
  float _1159;
  float _1161;
  float _1164;
  float _1167;
  float _1170;
  float _1176;
  float _1178;
  float _1179;
  float _1180;
  float _1192;
  float _1202;
  float _1212;
  float _1225;
  float _1227;
  float _1233;
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
  _161 = min(max(log2(mad(_154, 0.079223745f, mad(_151, 0.0784336f, (_148 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _168 = min(max(log2(mad(_154, 0.07916613f, mad(_151, 0.87846863f, (_148 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _175 = min(max(log2(mad(_154, 0.879143f, mad(_151, 0.0784336f, (_148 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _176 = _161 * 0.060606062f;
  _177 = _168 * 0.060606062f;
  _178 = _175 * 0.060606062f;
  _179 = _176 * _176;
  _180 = _177 * _177;
  _181 = _178 * _178;
  _197 = min(0.0f, (-0.0f - (((_161 * 0.0072181816f) + ((_179 * 0.4298f) + (((_179 * _179) * ((31.96f - (_161 * 2.4327273f)) + (_179 * 15.5f))) - ((_161 * 0.41624245f) * _179)))) + -0.00232f)));
  _213 = min(0.0f, (-0.0f - (((_168 * 0.0072181816f) + ((_180 * 0.4298f) + (((_180 * _180) * ((31.96f - (_168 * 2.4327273f)) + (_180 * 15.5f))) - ((_168 * 0.41624245f) * _180)))) + -0.00232f)));
  _229 = min(0.0f, (-0.0f - (((_175 * 0.0072181816f) + ((_181 * 0.4298f) + (((_181 * _181) * ((31.96f - (_175 * 2.4327273f)) + (_181 * 15.5f))) - ((_175 * 0.41624245f) * _181)))) + -0.00232f)));
  _230 = -0.0f - _197;
  _231 = -0.0f - _213;
  _232 = -0.0f - _229;
  _233 = dot(float3(_230, _231, _232), float3(0.2126f, 0.7152f, 0.0722f));
  _236 = (_nightToneParm == 1);
  if (_236) {
    _250 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _251 = -0.79999995f / _250;
    _252 = -1.2f / _250;
    _253 = 0.20000005f / _250;
    _256 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _259 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _263 = (_251 + 1.4f) + (_259 * (-0.39999998f - _251));
    _267 = (_252 + 1.6f) + (_259 * (-0.6f - _252));
    _271 = (_253 + 0.9f) + (_259 * (0.5f - _253));
    _288 = (lerp(_271, 1.4f, _256));  // [sem: blended]
    _289 = (lerp(_263, 1.0f, _256));  // [sem: blended]
    _290 = (lerp(_267, 1.2f, _256));  // [sem: blended]
  } else {
    _288 = 1.4f;  // [sem: blended]
    _289 = 1.0f;  // [sem: blended]
    _290 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
  }
  _291 = 1.0f - _290;
  _303 = ((exp2(log2(((saturate((_197 * _197) * _230) * _291) + _290) * _230) * _289) - _233) * _288) + _233;
  _315 = ((exp2(log2(((saturate((_213 * _213) * _231) * _291) + _290) * _231) * _289) - _233) * _288) + _233;
  _327 = ((exp2(log2(((saturate((_229 * _229) * _232) * _291) + _290) * _232) * _289) - _233) * _288) + _233;
  _334 = saturate(exp2(log2(mad(_327, -0.09902974f, mad(_315, -0.09802088f, (_303 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
  _341 = saturate(exp2(log2(mad(_327, -0.098961174f, mad(_315, 1.1519032f, (_303 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
  _348 = saturate(exp2(log2(mad(_327, 1.1510737f, mad(_315, -0.09804345f, (_303 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
  _351 = _localToneMappingParams.x * _87;
  _352 = _localToneMappingParams.x * _86;
  _353 = _localToneMappingParams.x * _85;
  _365 = exp2(log2(max(0.0f, ((max(0.0f, (((_351 * 1.70505f) - (_352 * 0.62179f)) - (_353 * 0.08326f))) * _95) + _offsetParams.x))) * _powerParams.x);
  _377 = exp2(log2(max(0.0f, ((max(0.0f, (((_352 * 1.1408f) - (_351 * 0.13026f)) - (_353 * 0.01055f))) * _97) + _offsetParams.y))) * _powerParams.y);
  _389 = exp2(log2(max(0.0f, ((max(0.0f, (((_351 * -0.024f) - (_352 * 0.12897f)) + (_353 * 1.15297f))) * _99) + _offsetParams.z))) * _powerParams.z);
  _390 = dot(float3(_365, _377, _389), float3(0.212671f, 0.71516f, 0.072169f));
  _393 = ((_365 - _390) * _powerParams.w) + _390;
  _396 = ((_377 - _390) * _powerParams.w) + _390;
  _399 = ((_389 - _390) * _powerParams.w) + _390;
  _406 = min(max(log2(mad(_399, 0.079223745f, mad(_396, 0.0784336f, (_393 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _413 = min(max(log2(mad(_399, 0.07916613f, mad(_396, 0.87846863f, (_393 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _420 = min(max(log2(mad(_399, 0.879143f, mad(_396, 0.0784336f, (_393 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _421 = _406 * 0.060606062f;
  _422 = _413 * 0.060606062f;
  _423 = _420 * 0.060606062f;
  _424 = _421 * _421;
  _425 = _422 * _422;
  _426 = _423 * _423;
  _442 = min(0.0f, (-0.0f - (((_406 * 0.0072181816f) + ((_424 * 0.4298f) + (((_424 * _424) * ((31.96f - (_406 * 2.4327273f)) + (_424 * 15.5f))) - ((_406 * 0.41624245f) * _424)))) + -0.00232f)));
  _458 = min(0.0f, (-0.0f - (((_413 * 0.0072181816f) + ((_425 * 0.4298f) + (((_425 * _425) * ((31.96f - (_413 * 2.4327273f)) + (_425 * 15.5f))) - ((_413 * 0.41624245f) * _425)))) + -0.00232f)));
  _474 = min(0.0f, (-0.0f - (((_420 * 0.0072181816f) + ((_426 * 0.4298f) + (((_426 * _426) * ((31.96f - (_420 * 2.4327273f)) + (_426 * 15.5f))) - ((_420 * 0.41624245f) * _426)))) + -0.00232f)));
  _475 = -0.0f - _442;
  _476 = -0.0f - _458;
  _477 = -0.0f - _474;
  _478 = dot(float3(_475, _476, _477), float3(0.2126f, 0.7152f, 0.0722f));
  if (_236) {
    _490 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _491 = -0.79999995f / _490;
    _492 = -1.2f / _490;
    _493 = 0.20000005f / _490;
    _496 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _499 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _503 = (_491 + 1.4f) + (_499 * (-0.39999998f - _491));
    _507 = (_492 + 1.6f) + (_499 * (-0.6f - _492));
    _511 = (_493 + 0.9f) + (_499 * (0.5f - _493));
    _528 = (lerp(_511, 1.4f, _496));  // [sem: blended]
    _529 = (lerp(_503, 1.0f, _496));  // [sem: blended]
    _530 = (lerp(_507, 1.2f, _496));  // [sem: blended]
  } else {
    _528 = 1.4f;  // [sem: blended]
    _529 = 1.0f;  // [sem: blended]
    _530 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
  }
  _531 = 1.0f - _530;
  _543 = ((exp2(log2(((saturate((_442 * _442) * _475) * _531) + _530) * _475) * _529) - _478) * _528) + _478;
  _555 = ((exp2(log2(((saturate((_458 * _458) * _476) * _531) + _530) * _476) * _529) - _478) * _528) + _478;
  _567 = ((exp2(log2(((saturate((_474 * _474) * _477) * _531) + _530) * _477) * _529) - _478) * _528) + _478;
  _592 = dot(float3(saturate(saturate(exp2(log2(mad(_567, -0.09902974f, mad(_555, -0.09802088f, (_543 * 1.196879f)))) * 2.2f))), saturate(saturate(exp2(log2(mad(_567, -0.098961174f, mad(_555, 1.1519032f, (_543 * -0.052896854f)))) * 2.2f))), saturate(saturate(exp2(log2(mad(_567, 1.1510737f, mad(_555, -0.09804345f, (_543 * -0.052971635f)))) * 2.2f)))), float3(0.1f, 0.7f, 0.2f));
  _596 = dot(float3(saturate(_334), saturate(_341), saturate(_348)), float3(0.1f, 0.7f, 0.2f));
  _598 = _localToneMappingParams.y * _87;
  _599 = _localToneMappingParams.y * _86;
  _600 = _localToneMappingParams.y * _85;
  _612 = exp2(log2(max(0.0f, ((max(0.0f, (((_598 * 1.70505f) - (_599 * 0.62179f)) - (_600 * 0.08326f))) * _95) + _offsetParams.x))) * _powerParams.x);
  _624 = exp2(log2(max(0.0f, ((max(0.0f, (((_599 * 1.1408f) - (_598 * 0.13026f)) - (_600 * 0.01055f))) * _97) + _offsetParams.y))) * _powerParams.y);
  _636 = exp2(log2(max(0.0f, ((max(0.0f, (((_598 * -0.024f) - (_599 * 0.12897f)) + (_600 * 1.15297f))) * _99) + _offsetParams.z))) * _powerParams.z);
  _637 = dot(float3(_612, _624, _636), float3(0.212671f, 0.71516f, 0.072169f));
  _640 = ((_612 - _637) * _powerParams.w) + _637;
  _643 = ((_624 - _637) * _powerParams.w) + _637;
  _646 = ((_636 - _637) * _powerParams.w) + _637;
  _653 = min(max(log2(mad(_646, 0.079223745f, mad(_643, 0.0784336f, (_640 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _660 = min(max(log2(mad(_646, 0.07916613f, mad(_643, 0.87846863f, (_640 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _667 = min(max(log2(mad(_646, 0.879143f, mad(_643, 0.0784336f, (_640 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _668 = _653 * 0.060606062f;
  _669 = _660 * 0.060606062f;
  _670 = _667 * 0.060606062f;
  _671 = _668 * _668;
  _672 = _669 * _669;
  _673 = _670 * _670;
  _689 = min(0.0f, (-0.0f - (((_653 * 0.0072181816f) + ((_671 * 0.4298f) + (((_671 * _671) * ((31.96f - (_653 * 2.4327273f)) + (_671 * 15.5f))) - ((_653 * 0.41624245f) * _671)))) + -0.00232f)));
  _705 = min(0.0f, (-0.0f - (((_660 * 0.0072181816f) + ((_672 * 0.4298f) + (((_672 * _672) * ((31.96f - (_660 * 2.4327273f)) + (_672 * 15.5f))) - ((_660 * 0.41624245f) * _672)))) + -0.00232f)));
  _721 = min(0.0f, (-0.0f - (((_667 * 0.0072181816f) + ((_673 * 0.4298f) + (((_673 * _673) * ((31.96f - (_667 * 2.4327273f)) + (_673 * 15.5f))) - ((_667 * 0.41624245f) * _673)))) + -0.00232f)));
  _722 = -0.0f - _689;
  _723 = -0.0f - _705;
  _724 = -0.0f - _721;
  _725 = dot(float3(_722, _723, _724), float3(0.2126f, 0.7152f, 0.0722f));
  if (_236) {
    _737 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _738 = -0.79999995f / _737;
    _739 = -1.2f / _737;
    _740 = 0.20000005f / _737;
    _743 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _746 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _750 = (_738 + 1.4f) + (_746 * (-0.39999998f - _738));
    _754 = (_739 + 1.6f) + (_746 * (-0.6f - _739));
    _758 = (_740 + 0.9f) + (_746 * (0.5f - _740));
    _775 = (lerp(_758, 1.4f, _743));  // [sem: blended]
    _776 = (lerp(_750, 1.0f, _743));  // [sem: blended]
    _777 = (lerp(_754, 1.2f, _743));  // [sem: blended]
  } else {
    _775 = 1.4f;  // [sem: blended]
    _776 = 1.0f;  // [sem: blended]
    _777 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
  }
  _778 = 1.0f - _777;
  _790 = ((exp2(log2(((saturate((_689 * _689) * _722) * _778) + _777) * _722) * _776) - _725) * _775) + _725;
  _802 = ((exp2(log2(((saturate((_705 * _705) * _723) * _778) + _777) * _723) * _776) - _725) * _775) + _725;
  _814 = ((exp2(log2(((saturate((_721 * _721) * _724) * _778) + _777) * _724) * _776) - _725) * _775) + _725;
  _839 = dot(float3(saturate(saturate(exp2(log2(mad(_814, -0.09902974f, mad(_802, -0.09802088f, (_790 * 1.196879f)))) * 2.2f))), saturate(saturate(exp2(log2(mad(_814, -0.098961174f, mad(_802, 1.1519032f, (_790 * -0.052896854f)))) * 2.2f))), saturate(saturate(exp2(log2(mad(_814, 1.1510737f, mad(_802, -0.09804345f, (_790 * -0.052971635f)))) * 2.2f)))), float3(0.1f, 0.7f, 0.2f));
  _840 = _592 + -0.5f;
  _841 = _596 + -0.5f;
  _842 = _839 + -0.5f;
  _844 = _localToneMappingParams.z * -0.7213475f;
  _847 = exp2((_840 * _840) * _844);
  _850 = exp2((_841 * _841) * _844);
  _853 = exp2((_842 * _842) * _844);
  _855 = dot(float3(_847, _850, _853), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _860 = dot(float3(max(_334, 0.0f), max(_341, 0.0f), max(_348, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _869 = max(dot(float3(((_847 / _855) * _592), ((_850 / _855) * _596), ((_853 / _855) * _839)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _860;
  if (!(_860 > 0.007f)) {
    _878 = ((((_860 * _860) * 20408.16f) * (_869 + -1.0f)) + 1.0f);
  } else {
    _878 = _869;
  }
  _879 = _878 * _87;
  _880 = _878 * _86;
  _881 = _878 * _85;
  _893 = exp2(log2(max(0.0f, ((max(0.0f, (((_879 * 1.70505f) - (_880 * 0.62179f)) - (_881 * 0.08326f))) * _95) + _offsetParams.x))) * _powerParams.x);
  _905 = exp2(log2(max(0.0f, ((max(0.0f, (((_880 * 1.1408f) - (_879 * 0.13026f)) - (_881 * 0.01055f))) * _97) + _offsetParams.y))) * _powerParams.y);
  _917 = exp2(log2(max(0.0f, ((max(0.0f, (((_879 * -0.024f) - (_880 * 0.12897f)) + (_881 * 1.15297f))) * _99) + _offsetParams.z))) * _powerParams.z);
  _918 = dot(float3(_893, _905, _917), float3(0.212671f, 0.71516f, 0.072169f));
  _921 = ((_893 - _918) * _powerParams.w) + _918;
  _924 = ((_905 - _918) * _powerParams.w) + _918;
  _927 = ((_917 - _918) * _powerParams.w) + _918;
  _934 = min(max(log2(mad(_927, 0.079223745f, mad(_924, 0.0784336f, (_921 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _941 = min(max(log2(mad(_927, 0.07916613f, mad(_924, 0.87846863f, (_921 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _948 = min(max(log2(mad(_927, 0.879143f, mad(_924, 0.0784336f, (_921 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _949 = _934 * 0.060606062f;
  _950 = _941 * 0.060606062f;
  _951 = _948 * 0.060606062f;
  _952 = _949 * _949;
  _953 = _950 * _950;
  _954 = _951 * _951;
  _970 = min(0.0f, (-0.0f - (((_934 * 0.0072181816f) + ((_952 * 0.4298f) + (((_952 * _952) * ((31.96f - (_934 * 2.4327273f)) + (_952 * 15.5f))) - ((_934 * 0.41624245f) * _952)))) + -0.00232f)));
  _986 = min(0.0f, (-0.0f - (((_941 * 0.0072181816f) + ((_953 * 0.4298f) + (((_953 * _953) * ((31.96f - (_941 * 2.4327273f)) + (_953 * 15.5f))) - ((_941 * 0.41624245f) * _953)))) + -0.00232f)));
  _1002 = min(0.0f, (-0.0f - (((_948 * 0.0072181816f) + ((_954 * 0.4298f) + (((_954 * _954) * ((31.96f - (_948 * 2.4327273f)) + (_954 * 15.5f))) - ((_948 * 0.41624245f) * _954)))) + -0.00232f)));
  _1003 = -0.0f - _970;
  _1004 = -0.0f - _986;
  _1005 = -0.0f - _1002;
  _1006 = dot(float3(_1003, _1004, _1005), float3(0.2126f, 0.7152f, 0.0722f));
  if (_236) {
    _1018 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _1019 = -0.79999995f / _1018;
    _1020 = -1.2f / _1018;
    _1021 = 0.20000005f / _1018;
    _1024 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _1027 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _1031 = (_1019 + 1.4f) + (_1027 * (-0.39999998f - _1019));
    _1035 = (_1020 + 1.6f) + (_1027 * (-0.6f - _1020));
    _1039 = (_1021 + 0.9f) + (_1027 * (0.5f - _1021));
    _1056 = (lerp(_1035, 1.2f, _1024));  // [sem: blended]
    _1057 = (lerp(_1031, 1.0f, _1024));  // [sem: blended]
    _1058 = (lerp(_1039, 1.4f, _1024));  // [sem: blended]
  } else {
    _1056 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    _1057 = 1.0f;  // [sem: blended]
    _1058 = 1.4f;  // [sem: blended]
  }
  _1059 = 1.0f - _1056;
  _1071 = ((exp2(log2(((saturate((_970 * _970) * _1003) * _1059) + _1056) * _1003) * _1057) - _1006) * _1058) + _1006;
  _1083 = ((exp2(log2(((saturate((_986 * _986) * _1004) * _1059) + _1056) * _1004) * _1057) - _1006) * _1058) + _1006;
  _1095 = ((exp2(log2(((saturate((_1002 * _1002) * _1005) * _1059) + _1056) * _1005) * _1057) - _1006) * _1058) + _1006;
  _1099 = 1.0f - abs(_etcParams.w);
  _1100 = saturate(_etcParams.w);  // [sem: expr_sat]
  _1111 = (saturate(max(saturate(exp2(log2(mad(_1095, -0.09902974f, mad(_1083, -0.09802088f, (_1071 * 1.196879f)))) * 2.2f)), 0.0f)) * _1099) + _1100;
  _1122 = (saturate(max(saturate(exp2(log2(mad(_1095, -0.098961174f, mad(_1083, 1.1519032f, (_1071 * -0.052896854f)))) * 2.2f)), 0.0f)) * _1099) + _1100;
  _1133 = (saturate(max(saturate(exp2(log2(mad(_1095, 1.1510737f, mad(_1083, -0.09804345f, (_1071 * -0.052971635f)))) * 2.2f)), 0.0f)) * _1099) + _1100;
  if (_colorGradingParams.w > 0.0f) {
    _1138 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _1155 = (((max(0.0f, (1.0f - _1133)) - _1133) * _1138) + _1133);
    _1156 = (((max(0.0f, (1.0f - _1122)) - _1122) * _1138) + _1122);
    _1157 = (((max(0.0f, (1.0f - _1111)) - _1111) * _1138) + _1111);
  } else {
    _1155 = _1133;
    _1156 = _1122;
    _1157 = _1111;
  }
  _1159 = _userImageAdjust.y + 1.0f;
  _1161 = _userImageAdjust.x + 0.5f;
  _1164 = ((_1157 + -0.5f) * _1159) + _1161;
  _1167 = ((_1156 + -0.5f) * _1159) + _1161;
  _1170 = ((_1155 + -0.5f) * _1159) + _1161;
  _1176 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _1178 = (TEXCOORD.x * 2.0f) + -1.0f;
  _1179 = TEXCOORD.y * 2.0f;
  _1180 = 1.0f - _1179;
  _1192 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _1180, ((_projToPrevProj[3].x) * _1178)));
  _1202 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _1180, ((_projToPrevProj[0].x) * _1178))) + (_projToPrevProj[0].w)) / _1192) - _1178;
  _1212 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _1180, ((_projToPrevProj[1].x) * _1178))) + (_projToPrevProj[1].w)) / _1192) - _1180;
  if (_localToneMappingParams.w > 0.0f) {
    _1224 = saturate(1.0f - (sqrt((_1212 * _1212) + (_1202 * _1202)) * 2.0f));  // [sem: expr_sat]
  } else {
    _1224 = 1.0f;  // [sem: expr_sat]
  }
  _1225 = abs(_1178);
  _1227 = abs(_1179 + -1.0f);
  _1233 = saturate(1.0f - ((_1224 * _postProcessParams.x) * dot(float2(_1225, _1227), float2(_1225, _1227))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _1280 = (exp2(log2(saturate(mad(_colorBlind0.z, _1170, mad(_colorBlind0.y, _1167, (_colorBlind0.x * _1164))))) * _1176) * _1233);
      _1281 = (exp2(log2(saturate(mad(_colorBlind1.z, _1170, mad(_colorBlind1.y, _1167, (_colorBlind1.x * _1164))))) * _1176) * _1233);
      _1282 = (exp2(log2(saturate(mad(_colorBlind2.z, _1170, mad(_colorBlind2.y, _1167, (_colorBlind2.x * _1164))))) * _1176) * _1233);
    } else {
      _1280 = 0.0f;
      _1281 = 0.0f;
      _1282 = 0.0f;
    }
  } else {
    _1280 = 0.0f;
    _1281 = 0.0f;
    _1282 = 0.0f;
  }
  SV_Target.x = _1280;
  SV_Target.y = _1281;
  SV_Target.z = _1282;
  SV_Target.w = _17.w;
  return SV_Target;
}
