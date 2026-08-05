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
  float _456;
  float _594;
  float _595;
  float _596;
  float _663;
  float _719;
  float _720;
  float _721;
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
  float _152;
  float _156;
  float _159;
  float _162;
  float _165;
  float _173;
  float _181;
  float _189;
  float _194;
  float _199;
  float _204;
  float _207;
  float _208;
  float _209;
  float _221;
  float _233;
  float _245;
  float _246;
  float _249;
  float _253;
  float _257;
  float _260;
  float _263;
  float _266;
  float _274;
  float _282;
  float _290;
  float _309;
  float _313;
  float _315;
  float _316;
  float _317;
  float _329;
  float _341;
  float _353;
  float _354;
  float _357;
  float _361;
  float _365;
  float _368;
  float _371;
  float _374;
  float _382;
  float _390;
  float _398;
  float _417;
  float _418;
  float _419;
  float _420;
  float _422;
  float _425;
  float _428;
  float _431;
  float _433;
  float _438;
  float _447;
  float _457;
  float _458;
  float _459;
  float _471;
  float _483;
  float _495;
  float _496;
  float _499;
  float _503;
  float _507;
  float _510;
  float _513;
  float _516;
  float _524;
  float _532;
  float _540;
  float _544;
  float _545;
  float _554;
  float _563;
  float _572;
  float _577;
  float _598;
  float _600;
  float _603;
  float _606;
  float _609;
  float _615;
  float _617;
  float _618;
  float _619;
  float _631;
  float _641;
  float _651;
  float _664;
  float _666;
  float _672;
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
  _152 = (lerp(_144, _129, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _156 = (lerp(_144, _143, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _159 = mad(0.04823f, _156, mad(0.35458f, _152, (_148 * 0.9953167f)));
  _162 = mad(0.01566f, _156, mad(0.90834f, _152, (_148 * 0.12666667f)));
  _165 = mad(0.83777f, _156, mad(0.13383f, _152, (_148 * 0.047333334f)));
  _173 = (((_159 + 0.0245786f) * _159) + -9.0537e-05f) / ((((_159 * 0.983729f) + 0.432951f) * _159) + 0.238081f);
  _181 = (((_162 + 0.0245786f) * _162) + -9.0537e-05f) / ((((_162 * 0.983729f) + 0.432951f) * _162) + 0.238081f);
  _189 = (((_165 + 0.0245786f) * _165) + -9.0537e-05f) / ((((_165 * 0.983729f) + 0.432951f) * _165) + 0.238081f);
  _194 = saturate(saturate(mad(-0.07367f, _189, mad(-0.53108f, _181, (_173 * 1.60475f)))));  // [sem: expr_sat]
  _199 = saturate(saturate(mad(-0.00605f, _189, mad(1.10813f, _181, (_173 * -0.10208f)))));  // [sem: expr_sat]
  _204 = saturate(saturate(mad(1.07602f, _189, mad(-0.07276f, _181, (_173 * -0.00327f)))));  // [sem: expr_sat]
  _207 = _localToneMappingParams.x * _87;
  _208 = _localToneMappingParams.x * _86;
  _209 = _localToneMappingParams.x * _85;
  _221 = exp2(log2(max(0.0f, ((max(0.0f, (((_207 * 1.70505f) - (_208 * 0.62179f)) - (_209 * 0.08326f))) * _95) + _offsetParams.x))) * _powerParams.x);
  _233 = exp2(log2(max(0.0f, ((max(0.0f, (((_208 * 1.1408f) - (_207 * 0.13026f)) - (_209 * 0.01055f))) * _97) + _offsetParams.y))) * _powerParams.y);
  _245 = exp2(log2(max(0.0f, ((max(0.0f, (((_207 * -0.024f) - (_208 * 0.12897f)) + (_209 * 1.15297f))) * _99) + _offsetParams.z))) * _powerParams.z);
  _246 = dot(float3(_221, _233, _245), float3(0.212671f, 0.71516f, 0.072169f));
  _249 = ((_221 - _246) * _powerParams.w) + _246;
  _253 = (lerp(_246, _233, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _257 = (lerp(_246, _245, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _260 = mad(0.04823f, _257, mad(0.35458f, _253, (_249 * 0.9953167f)));
  _263 = mad(0.01566f, _257, mad(0.90834f, _253, (_249 * 0.12666667f)));
  _266 = mad(0.83777f, _257, mad(0.13383f, _253, (_249 * 0.047333334f)));
  _274 = (((_260 + 0.0245786f) * _260) + -9.0537e-05f) / ((((_260 * 0.983729f) + 0.432951f) * _260) + 0.238081f);
  _282 = (((_263 + 0.0245786f) * _263) + -9.0537e-05f) / ((((_263 * 0.983729f) + 0.432951f) * _263) + 0.238081f);
  _290 = (((_266 + 0.0245786f) * _266) + -9.0537e-05f) / ((((_266 * 0.983729f) + 0.432951f) * _266) + 0.238081f);
  _309 = dot(float3(saturate(saturate(saturate(mad(-0.07367f, _290, mad(-0.53108f, _282, (_274 * 1.60475f)))))), saturate(saturate(saturate(mad(-0.00605f, _290, mad(1.10813f, _282, (_274 * -0.10208f)))))), saturate(saturate(saturate(mad(1.07602f, _290, mad(-0.07276f, _282, (_274 * -0.00327f))))))), float3(0.1f, 0.7f, 0.2f));
  _313 = dot(float3(saturate(_194), saturate(_199), saturate(_204)), float3(0.1f, 0.7f, 0.2f));
  _315 = _localToneMappingParams.y * _87;
  _316 = _localToneMappingParams.y * _86;
  _317 = _localToneMappingParams.y * _85;
  _329 = exp2(log2(max(0.0f, ((max(0.0f, (((_315 * 1.70505f) - (_316 * 0.62179f)) - (_317 * 0.08326f))) * _95) + _offsetParams.x))) * _powerParams.x);
  _341 = exp2(log2(max(0.0f, ((max(0.0f, (((_316 * 1.1408f) - (_315 * 0.13026f)) - (_317 * 0.01055f))) * _97) + _offsetParams.y))) * _powerParams.y);
  _353 = exp2(log2(max(0.0f, ((max(0.0f, (((_315 * -0.024f) - (_316 * 0.12897f)) + (_317 * 1.15297f))) * _99) + _offsetParams.z))) * _powerParams.z);
  _354 = dot(float3(_329, _341, _353), float3(0.212671f, 0.71516f, 0.072169f));
  _357 = ((_329 - _354) * _powerParams.w) + _354;
  _361 = (lerp(_354, _341, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _365 = (lerp(_354, _353, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _368 = mad(0.04823f, _365, mad(0.35458f, _361, (_357 * 0.9953167f)));
  _371 = mad(0.01566f, _365, mad(0.90834f, _361, (_357 * 0.12666667f)));
  _374 = mad(0.83777f, _365, mad(0.13383f, _361, (_357 * 0.047333334f)));
  _382 = (((_368 + 0.0245786f) * _368) + -9.0537e-05f) / ((((_368 * 0.983729f) + 0.432951f) * _368) + 0.238081f);
  _390 = (((_371 + 0.0245786f) * _371) + -9.0537e-05f) / ((((_371 * 0.983729f) + 0.432951f) * _371) + 0.238081f);
  _398 = (((_374 + 0.0245786f) * _374) + -9.0537e-05f) / ((((_374 * 0.983729f) + 0.432951f) * _374) + 0.238081f);
  _417 = dot(float3(saturate(saturate(saturate(mad(-0.07367f, _398, mad(-0.53108f, _390, (_382 * 1.60475f)))))), saturate(saturate(saturate(mad(-0.00605f, _398, mad(1.10813f, _390, (_382 * -0.10208f)))))), saturate(saturate(saturate(mad(1.07602f, _398, mad(-0.07276f, _390, (_382 * -0.00327f))))))), float3(0.1f, 0.7f, 0.2f));
  _418 = _309 + -0.5f;
  _419 = _313 + -0.5f;
  _420 = _417 + -0.5f;
  _422 = _localToneMappingParams.z * -0.7213475f;
  _425 = exp2((_418 * _418) * _422);
  _428 = exp2((_419 * _419) * _422);
  _431 = exp2((_420 * _420) * _422);
  _433 = dot(float3(_425, _428, _431), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _438 = dot(float3(max(_194, 0.0f), max(_199, 0.0f), max(_204, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _447 = max(dot(float3(((_425 / _433) * _309), ((_428 / _433) * _313), ((_431 / _433) * _417)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _438;
  if (!(_438 > 0.007f)) {
    _456 = ((((_438 * _438) * 20408.16f) * (_447 + -1.0f)) + 1.0f);
  } else {
    _456 = _447;
  }
  _457 = _456 * _87;
  _458 = _456 * _86;
  _459 = _456 * _85;
  _471 = exp2(log2(max(0.0f, ((max(0.0f, (((_457 * 1.70505f) - (_458 * 0.62179f)) - (_459 * 0.08326f))) * _95) + _offsetParams.x))) * _powerParams.x);
  _483 = exp2(log2(max(0.0f, ((max(0.0f, (((_458 * 1.1408f) - (_457 * 0.13026f)) - (_459 * 0.01055f))) * _97) + _offsetParams.y))) * _powerParams.y);
  _495 = exp2(log2(max(0.0f, ((max(0.0f, (((_457 * -0.024f) - (_458 * 0.12897f)) + (_459 * 1.15297f))) * _99) + _offsetParams.z))) * _powerParams.z);
  _496 = dot(float3(_471, _483, _495), float3(0.212671f, 0.71516f, 0.072169f));
  _499 = ((_471 - _496) * _powerParams.w) + _496;
  _503 = (lerp(_496, _483, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _507 = (lerp(_496, _495, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _510 = mad(0.04823f, _507, mad(0.35458f, _503, (_499 * 0.9953167f)));
  _513 = mad(0.01566f, _507, mad(0.90834f, _503, (_499 * 0.12666667f)));
  _516 = mad(0.83777f, _507, mad(0.13383f, _503, (_499 * 0.047333334f)));
  _524 = (((_510 + 0.0245786f) * _510) + -9.0537e-05f) / ((((_510 * 0.983729f) + 0.432951f) * _510) + 0.238081f);
  _532 = (((_513 + 0.0245786f) * _513) + -9.0537e-05f) / ((((_513 * 0.983729f) + 0.432951f) * _513) + 0.238081f);
  _540 = (((_516 + 0.0245786f) * _516) + -9.0537e-05f) / ((((_516 * 0.983729f) + 0.432951f) * _516) + 0.238081f);
  _544 = 1.0f - abs(_etcParams.w);
  _545 = saturate(_etcParams.w);  // [sem: expr_sat]
  _554 = (saturate(max(saturate(saturate(mad(-0.07367f, _540, mad(-0.53108f, _532, (_524 * 1.60475f))))), 0.0f)) * _544) + _545;
  _563 = (saturate(max(saturate(saturate(mad(-0.00605f, _540, mad(1.10813f, _532, (_524 * -0.10208f))))), 0.0f)) * _544) + _545;
  _572 = (saturate(max(saturate(saturate(mad(1.07602f, _540, mad(-0.07276f, _532, (_524 * -0.00327f))))), 0.0f)) * _544) + _545;
  if (_colorGradingParams.w > 0.0f) {
    _577 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _594 = (((max(0.0f, (1.0f - _572)) - _572) * _577) + _572);
    _595 = (((max(0.0f, (1.0f - _563)) - _563) * _577) + _563);
    _596 = (((max(0.0f, (1.0f - _554)) - _554) * _577) + _554);
  } else {
    _594 = _572;
    _595 = _563;
    _596 = _554;
  }
  _598 = _userImageAdjust.y + 1.0f;
  _600 = _userImageAdjust.x + 0.5f;
  _603 = ((_596 + -0.5f) * _598) + _600;
  _606 = ((_595 + -0.5f) * _598) + _600;
  _609 = ((_594 + -0.5f) * _598) + _600;
  _615 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _617 = (TEXCOORD.x * 2.0f) + -1.0f;
  _618 = TEXCOORD.y * 2.0f;
  _619 = 1.0f - _618;
  _631 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _619, ((_projToPrevProj[3].x) * _617)));
  _641 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _619, ((_projToPrevProj[0].x) * _617))) + (_projToPrevProj[0].w)) / _631) - _617;
  _651 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _619, ((_projToPrevProj[1].x) * _617))) + (_projToPrevProj[1].w)) / _631) - _619;
  if (_localToneMappingParams.w > 0.0f) {
    _663 = saturate(1.0f - (sqrt((_651 * _651) + (_641 * _641)) * 2.0f));  // [sem: expr_sat]
  } else {
    _663 = 1.0f;  // [sem: expr_sat]
  }
  _664 = abs(_617);
  _666 = abs(_618 + -1.0f);
  _672 = saturate(1.0f - ((_663 * _postProcessParams.x) * dot(float2(_664, _666), float2(_664, _666))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _719 = (exp2(log2(saturate(mad(_colorBlind0.z, _609, mad(_colorBlind0.y, _606, (_colorBlind0.x * _603))))) * _615) * _672);
      _720 = (exp2(log2(saturate(mad(_colorBlind1.z, _609, mad(_colorBlind1.y, _606, (_colorBlind1.x * _603))))) * _615) * _672);
      _721 = (exp2(log2(saturate(mad(_colorBlind2.z, _609, mad(_colorBlind2.y, _606, (_colorBlind2.x * _603))))) * _615) * _672);
    } else {
      _719 = 0.0f;
      _720 = 0.0f;
      _721 = 0.0f;
    }
  } else {
    _719 = 0.0f;
    _720 = 0.0f;
    _721 = 0.0f;
  }
  SV_Target.x = _719;
  SV_Target.y = _720;
  SV_Target.z = _721;
  SV_Target.w = _17.w;
  return SV_Target;
}
