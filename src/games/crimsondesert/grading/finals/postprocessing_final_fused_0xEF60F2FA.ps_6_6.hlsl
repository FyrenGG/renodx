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
  float _586;
  float _761;
  float _762;
  float _763;
  float _830;
  float _886;
  float _887;
  float _888;
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
  float _158;
  float _162;
  float _164;
  float _165;
  float _166;
  float _167;
  float _168;
  float _169;
  float _170;
  float _174;
  float _178;
  float _182;
  float _183;
  float _185;
  float _187;
  float _189;
  float _190;
  float _191;
  float _192;
  float _197;
  float _220;
  float _240;
  float _260;
  float _263;
  float _264;
  float _265;
  float _277;
  float _289;
  float _301;
  float _302;
  float _305;
  float _308;
  float _311;
  float _312;
  float _313;
  float _314;
  float _315;
  float _316;
  float _317;
  float _321;
  float _325;
  float _329;
  float _331;
  float _333;
  float _335;
  float _336;
  float _337;
  float _338;
  float _402;
  float _406;
  float _408;
  float _409;
  float _410;
  float _422;
  float _434;
  float _446;
  float _447;
  float _450;
  float _453;
  float _456;
  float _457;
  float _458;
  float _459;
  float _460;
  float _461;
  float _462;
  float _466;
  float _470;
  float _474;
  float _476;
  float _478;
  float _480;
  float _481;
  float _482;
  float _483;
  float _547;
  float _548;
  float _549;
  float _550;
  float _552;
  float _555;
  float _558;
  float _561;
  float _563;
  float _568;
  float _577;
  float _587;
  float _588;
  float _589;
  float _601;
  float _613;
  float _625;
  float _626;
  float _629;
  float _632;
  float _635;
  float _636;
  float _637;
  float _638;
  float _639;
  float _640;
  float _641;
  float _645;
  float _649;
  float _653;
  float _655;
  float _657;
  float _659;
  float _660;
  float _661;
  float _662;
  float _666;
  float _667;
  float _691;
  float _715;
  float _739;
  float _744;
  float _765;
  float _767;
  float _770;
  float _773;
  float _776;
  float _782;
  float _784;
  float _785;
  float _786;
  float _798;
  float _808;
  float _818;
  float _831;
  float _833;
  float _839;
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
  _158 = _toneMapParams0.x - _toneMapParams0.z;
  _162 = (_158 * _toneMapParams0.w) / _toneMapParams0.y;
  _164 = _158 - (_toneMapParams0.y * _162);
  _165 = _148 / _toneMapParams0.z;
  _166 = _151 / _toneMapParams0.z;
  _167 = _154 / _toneMapParams0.z;
  _168 = saturate(_165);  // [sem: _165_sat]
  _169 = saturate(_166);  // [sem: _166_sat]
  _170 = saturate(_167);  // [sem: _167_sat]
  _174 = (_168 * _168) * (3.0f - (_168 * 2.0f));
  _178 = (_169 * _169) * (3.0f - (_169 * 2.0f));
  _182 = (_170 * _170) * (3.0f - (_170 * 2.0f));
  _183 = _toneMapParams0.z + _162;
  _185 = select((_148 < _183), 0.0f, 1.0f);
  _187 = select((_151 < _183), 0.0f, 1.0f);
  _189 = select((_154 < _183), 0.0f, 1.0f);
  _190 = _148 - _toneMapParams0.z;
  _191 = _151 - _toneMapParams0.z;
  _192 = _154 - _toneMapParams0.z;
  _197 = ((-0.0f - ((_toneMapParams0.y * _toneMapParams0.x) / _164)) / _toneMapParams0.x) * 1.442695f;
  // [sem: expr_sat]
  _220 = saturate((((((pow(_165, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _174)) + ((_174 - _185) * ((_190 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_197 * (_190 - _162)) * _164)) * _185));
  // [sem: expr_sat]
  _240 = saturate((((((pow(_166, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _178)) + ((_178 - _187) * ((_191 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_197 * (_191 - _162)) * _164)) * _187));
  // [sem: expr_sat]
  _260 = saturate((((((pow(_167, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _182)) + ((_182 - _189) * ((_192 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_197 * (_192 - _162)) * _164)) * _189));
  _263 = _localToneMappingParams.x * _87;
  _264 = _localToneMappingParams.x * _86;
  _265 = _localToneMappingParams.x * _85;
  _277 = exp2(log2(max(0.0f, ((max(0.0f, (((_263 * 1.70505f) - (_264 * 0.62179f)) - (_265 * 0.08326f))) * _95) + _offsetParams.x))) * _powerParams.x);
  _289 = exp2(log2(max(0.0f, ((max(0.0f, (((_264 * 1.1408f) - (_263 * 0.13026f)) - (_265 * 0.01055f))) * _97) + _offsetParams.y))) * _powerParams.y);
  _301 = exp2(log2(max(0.0f, ((max(0.0f, (((_263 * -0.024f) - (_264 * 0.12897f)) + (_265 * 1.15297f))) * _99) + _offsetParams.z))) * _powerParams.z);
  _302 = dot(float3(_277, _289, _301), float3(0.212671f, 0.71516f, 0.072169f));
  _305 = ((_277 - _302) * _powerParams.w) + _302;
  _308 = ((_289 - _302) * _powerParams.w) + _302;
  _311 = ((_301 - _302) * _powerParams.w) + _302;
  _312 = _305 / _toneMapParams0.z;
  _313 = _308 / _toneMapParams0.z;
  _314 = _311 / _toneMapParams0.z;
  _315 = saturate(_312);  // [sem: _312_sat]
  _316 = saturate(_313);  // [sem: _313_sat]
  _317 = saturate(_314);  // [sem: _314_sat]
  _321 = (_315 * _315) * (3.0f - (_315 * 2.0f));
  _325 = (_316 * _316) * (3.0f - (_316 * 2.0f));
  _329 = (_317 * _317) * (3.0f - (_317 * 2.0f));
  _331 = select((_305 < _183), 0.0f, 1.0f);
  _333 = select((_308 < _183), 0.0f, 1.0f);
  _335 = select((_311 < _183), 0.0f, 1.0f);
  _336 = _305 - _toneMapParams0.z;
  _337 = _308 - _toneMapParams0.z;
  _338 = _311 - _toneMapParams0.z;
  _402 = dot(float3(saturate(saturate((((((pow(_312, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _321)) + ((_321 - _331) * ((_336 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_336 - _162) * _197) * _164)) * _331))), saturate(saturate((((((pow(_313, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _325)) + ((_325 - _333) * ((_337 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_337 - _162) * _197) * _164)) * _333))), saturate(saturate((((((pow(_314, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _329)) + ((_329 - _335) * ((_338 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_338 - _162) * _197) * _164)) * _335)))), float3(0.1f, 0.7f, 0.2f));
  _406 = dot(float3(saturate(_220), saturate(_240), saturate(_260)), float3(0.1f, 0.7f, 0.2f));
  _408 = _localToneMappingParams.y * _87;
  _409 = _localToneMappingParams.y * _86;
  _410 = _localToneMappingParams.y * _85;
  _422 = exp2(log2(max(0.0f, ((max(0.0f, (((_408 * 1.70505f) - (_409 * 0.62179f)) - (_410 * 0.08326f))) * _95) + _offsetParams.x))) * _powerParams.x);
  _434 = exp2(log2(max(0.0f, ((max(0.0f, (((_409 * 1.1408f) - (_408 * 0.13026f)) - (_410 * 0.01055f))) * _97) + _offsetParams.y))) * _powerParams.y);
  _446 = exp2(log2(max(0.0f, ((max(0.0f, (((_408 * -0.024f) - (_409 * 0.12897f)) + (_410 * 1.15297f))) * _99) + _offsetParams.z))) * _powerParams.z);
  _447 = dot(float3(_422, _434, _446), float3(0.212671f, 0.71516f, 0.072169f));
  _450 = ((_422 - _447) * _powerParams.w) + _447;
  _453 = ((_434 - _447) * _powerParams.w) + _447;
  _456 = ((_446 - _447) * _powerParams.w) + _447;
  _457 = _450 / _toneMapParams0.z;
  _458 = _453 / _toneMapParams0.z;
  _459 = _456 / _toneMapParams0.z;
  _460 = saturate(_457);  // [sem: _457_sat]
  _461 = saturate(_458);  // [sem: _458_sat]
  _462 = saturate(_459);  // [sem: _459_sat]
  _466 = (_460 * _460) * (3.0f - (_460 * 2.0f));
  _470 = (_461 * _461) * (3.0f - (_461 * 2.0f));
  _474 = (_462 * _462) * (3.0f - (_462 * 2.0f));
  _476 = select((_450 < _183), 0.0f, 1.0f);
  _478 = select((_453 < _183), 0.0f, 1.0f);
  _480 = select((_456 < _183), 0.0f, 1.0f);
  _481 = _450 - _toneMapParams0.z;
  _482 = _453 - _toneMapParams0.z;
  _483 = _456 - _toneMapParams0.z;
  _547 = dot(float3(saturate(saturate((((((pow(_457, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _466)) + ((_466 - _476) * ((_481 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_481 - _162) * _197) * _164)) * _476))), saturate(saturate((((((pow(_458, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _470)) + ((_470 - _478) * ((_482 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_482 - _162) * _197) * _164)) * _478))), saturate(saturate((((((pow(_459, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _474)) + ((_474 - _480) * ((_483 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_483 - _162) * _197) * _164)) * _480)))), float3(0.1f, 0.7f, 0.2f));
  _548 = _402 + -0.5f;
  _549 = _406 + -0.5f;
  _550 = _547 + -0.5f;
  _552 = _localToneMappingParams.z * -0.7213475f;
  _555 = exp2((_548 * _548) * _552);
  _558 = exp2((_549 * _549) * _552);
  _561 = exp2((_550 * _550) * _552);
  _563 = dot(float3(_555, _558, _561), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _568 = dot(float3(max(_220, 0.0f), max(_240, 0.0f), max(_260, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _577 = max(dot(float3(((_555 / _563) * _402), ((_558 / _563) * _406), ((_561 / _563) * _547)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _568;
  if (!(_568 > 0.007f)) {
    _586 = ((((_568 * _568) * 20408.16f) * (_577 + -1.0f)) + 1.0f);
  } else {
    _586 = _577;
  }
  _587 = _586 * _87;
  _588 = _586 * _86;
  _589 = _586 * _85;
  _601 = exp2(log2(max(0.0f, ((_95 * max(0.0f, (((_587 * 1.70505f) - (_588 * 0.62179f)) - (_589 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _613 = exp2(log2(max(0.0f, ((_97 * max(0.0f, (((_588 * 1.1408f) - (_587 * 0.13026f)) - (_589 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _625 = exp2(log2(max(0.0f, ((_99 * max(0.0f, (((_587 * -0.024f) - (_588 * 0.12897f)) + (_589 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _626 = dot(float3(_601, _613, _625), float3(0.212671f, 0.71516f, 0.072169f));
  _629 = ((_601 - _626) * _powerParams.w) + _626;
  _632 = ((_613 - _626) * _powerParams.w) + _626;
  _635 = ((_625 - _626) * _powerParams.w) + _626;
  _636 = _629 / _toneMapParams0.z;
  _637 = _632 / _toneMapParams0.z;
  _638 = _635 / _toneMapParams0.z;
  _639 = saturate(_636);  // [sem: _636_sat]
  _640 = saturate(_637);  // [sem: _637_sat]
  _641 = saturate(_638);  // [sem: _638_sat]
  _645 = (_639 * _639) * (3.0f - (_639 * 2.0f));
  _649 = (_640 * _640) * (3.0f - (_640 * 2.0f));
  _653 = (_641 * _641) * (3.0f - (_641 * 2.0f));
  _655 = select((_629 < _183), 0.0f, 1.0f);
  _657 = select((_632 < _183), 0.0f, 1.0f);
  _659 = select((_635 < _183), 0.0f, 1.0f);
  _660 = _629 - _toneMapParams0.z;
  _661 = _632 - _toneMapParams0.z;
  _662 = _635 - _toneMapParams0.z;
  _666 = 1.0f - abs(_etcParams.w);
  _667 = saturate(_etcParams.w);  // [sem: expr_sat]
  _691 = (saturate(max(saturate((((((pow(_636, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _645)) + ((_645 - _655) * ((_660 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_660 - _162) * _197) * _164)) * _655)), 0.0f)) * _666) + _667;
  _715 = (saturate(max(saturate((((((pow(_637, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _649)) + ((_649 - _657) * ((_661 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_661 - _162) * _197) * _164)) * _657)), 0.0f)) * _666) + _667;
  _739 = (saturate(max(saturate((((((pow(_638, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _653)) + ((_653 - _659) * ((_662 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2((_662 - _162) * _197) * _164)) * _659)), 0.0f)) * _666) + _667;
  if (_colorGradingParams.w > 0.0f) {
    _744 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _761 = (((max(0.0f, (1.0f - _739)) - _739) * _744) + _739);
    _762 = (((max(0.0f, (1.0f - _715)) - _715) * _744) + _715);
    _763 = (((max(0.0f, (1.0f - _691)) - _691) * _744) + _691);
  } else {
    _761 = _739;
    _762 = _715;
    _763 = _691;
  }
  _765 = _userImageAdjust.y + 1.0f;
  _767 = _userImageAdjust.x + 0.5f;
  _770 = ((_763 + -0.5f) * _765) + _767;
  _773 = ((_762 + -0.5f) * _765) + _767;
  _776 = ((_761 + -0.5f) * _765) + _767;
  _782 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _784 = (TEXCOORD.x * 2.0f) + -1.0f;
  _785 = TEXCOORD.y * 2.0f;
  _786 = 1.0f - _785;
  _798 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _786, ((_projToPrevProj[3].x) * _784)));
  _808 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _786, ((_projToPrevProj[0].x) * _784))) + (_projToPrevProj[0].w)) / _798) - _784;
  _818 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _786, ((_projToPrevProj[1].x) * _784))) + (_projToPrevProj[1].w)) / _798) - _786;
  if (_localToneMappingParams.w > 0.0f) {
    _830 = saturate(1.0f - (sqrt((_818 * _818) + (_808 * _808)) * 2.0f));  // [sem: expr_sat]
  } else {
    _830 = 1.0f;  // [sem: expr_sat]
  }
  _831 = abs(_784);
  _833 = abs(_785 + -1.0f);
  _839 = saturate(1.0f - ((_830 * _postProcessParams.x) * dot(float2(_831, _833), float2(_831, _833))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _886 = (exp2(log2(saturate(mad(_colorBlind0.z, _776, mad(_colorBlind0.y, _773, (_colorBlind0.x * _770))))) * _782) * _839);
      _887 = (exp2(log2(saturate(mad(_colorBlind1.z, _776, mad(_colorBlind1.y, _773, (_colorBlind1.x * _770))))) * _782) * _839);
      _888 = (exp2(log2(saturate(mad(_colorBlind2.z, _776, mad(_colorBlind2.y, _773, (_colorBlind2.x * _770))))) * _782) * _839);
    } else {
      _886 = 0.0f;
      _887 = 0.0f;
      _888 = 0.0f;
    }
  } else {
    _886 = 0.0f;
    _887 = 0.0f;
    _888 = 0.0f;
  }
  SV_Target.x = _886;
  SV_Target.y = _887;
  SV_Target.z = _888;
  SV_Target.w = _17.w;
  return SV_Target;
}
