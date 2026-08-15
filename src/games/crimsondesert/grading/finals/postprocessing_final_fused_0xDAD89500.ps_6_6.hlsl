Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

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
  float4 _16;
  float _39;
  float _40;
  float _84;
  float _85;
  float _86;
  float _427;
  float _428;
  float _429;
  float _462;
  float _463;
  float _464;
  float _547;
  float _50;
  float _51;
  float _55;
  float _60;
  float _64;
  float _69;
  float _73;
  float _79;
  uint _92;
  uint _93;
  float _98;
  float _128;
  float _130;
  float _132;
  float _146;
  float _147;
  float _148;
  float _150;
  float _157;
  float _158;
  float _159;
  float _161;
  float _169;
  float4 _176;
  float4 _181;
  float4 _186;
  float4 _191;
  float _228;
  float _229;
  float _230;
  float _231;
  float _236;
  float _270;
  float _271;
  float _272;
  float _273;
  float _278;
  float _312;
  float _313;
  float _314;
  float _315;
  float _320;
  float _354;
  float _355;
  float _356;
  float _357;
  float _362;
  float _370;
  float _377;
  float _380;
  float _389;
  float _409;
  float _410;
  float _411;
  float _416;
  float _417;
  float _418;
  float _419;
  float _433;
  float _437;
  float _438;
  float _439;
  float _440;
  float _445;
  float _471;
  float _472;
  float _473;
  float _499;
  float _500;
  float _501;
  float _529;
  float _532;
  float _533;
  float _550;
  float _551;
  float _555;
  float _565;
  float _566;
  float _567;
  bool _600;
  _16 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _39 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
    _40 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
  } else {
    _39 = _16.x;
    _40 = _16.z;
  }
  if (_slopeParams.w > 0.0f) {
    _50 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _51 = _50 * 0.7692308f;
    _55 = frac(abs(_51));
    _60 = _50 * 0.08130081f;
    _64 = frac(abs(_60));
    _69 = ((select((_60 >= (-0.0f - _60)), _64, (-0.0f - _64)) * 1230.0f) + 10.0f) * ((select((_51 >= (-0.0f - _51)), _55, (-0.0f - _55)) * 13.0f) + 1.0f);
    _73 = frac(abs(_69));
    _79 = ((0.0075000525f - (select((_69 >= (-0.0f - _69)), _73, (-0.0f - _73)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _84 = (_79 * _39);
    _85 = (_79 * _16.y);
    _86 = (_79 * _40);
  } else {
    _84 = _39;
    _85 = _16.y;
    _86 = _40;
  }
  _92 = (uint)(_screenSizeAndInvSize.x * TEXCOORD.x);
  _93 = (uint)(_screenSizeAndInvSize.y * TEXCOORD.y);
  _98 = _userImageAdjust.z * _exposure0.x;
  _128 = _98 * _slopeParams.x;
  _130 = _98 * _slopeParams.y;
  _132 = _98 * _slopeParams.z;
  _146 = exp2(log2(max(0.0f, (_offsetParams.x + (_128 * max(0.0f, (((_84 * 1.70505f) - (_85 * 0.62179f)) - (_86 * 0.08326f))))))) * _powerParams.x);
  _147 = exp2(log2(max(0.0f, (_offsetParams.y + (_130 * max(0.0f, (((_85 * 1.1408f) - (_84 * 0.13026f)) - (_86 * 0.01055f))))))) * _powerParams.y);
  _148 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_84 * -0.024f) - (_85 * 0.12897f)) + (_86 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _150 = dot(float3(_146, _147, _148), float3(0.212671f, 0.71516f, 0.072169f));
  _157 = ((_146 - _150) * _powerParams.w) + _150;
  _158 = ((_147 - _150) * _powerParams.w) + _150;
  _159 = ((_148 - _150) * _powerParams.w) + _150;
  _161 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_161.x < 1e-07f) || (_161.x == 1.0f))) {
    _169 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _176 = __3__36__0__0__g_sceneColor.Load(int3(_92, ((int)((uint)((uint)(_93)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _181 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_92)) + (uint)(-1))), _93, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _186 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_92)) + (uint)(1))), _93, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _191 = __3__36__0__0__g_sceneColor.Load(int3(_92, ((int)((uint)((uint)(_93)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _228 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_176.x * 1.70505f) - (_176.y * 0.62179f)) - (_176.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _229 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_176.y * 1.1408f) - (_176.x * 0.13026f)) - (_176.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _230 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_176.x * -0.024f) - (_176.y * 0.12897f)) + (_176.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _231 = dot(float3(_228, _229, _230), float3(0.212671f, 0.71516f, 0.072169f));
    _236 = ((_229 - _231) * _powerParams.w) + _231;
    _270 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_181.x * 1.70505f) - (_181.y * 0.62179f)) - (_181.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _271 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_181.y * 1.1408f) - (_181.x * 0.13026f)) - (_181.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _272 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_181.x * -0.024f) - (_181.y * 0.12897f)) + (_181.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _273 = dot(float3(_270, _271, _272), float3(0.212671f, 0.71516f, 0.072169f));
    _278 = ((_271 - _273) * _powerParams.w) + _273;
    _312 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_186.x * 1.70505f) - (_186.y * 0.62179f)) - (_186.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _313 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_186.y * 1.1408f) - (_186.x * 0.13026f)) - (_186.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _314 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_186.x * -0.024f) - (_186.y * 0.12897f)) + (_186.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _315 = dot(float3(_312, _313, _314), float3(0.212671f, 0.71516f, 0.072169f));
    _320 = ((_313 - _315) * _powerParams.w) + _315;
    _354 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_191.x * 1.70505f) - (_191.y * 0.62179f)) - (_191.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _355 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_191.y * 1.1408f) - (_191.x * 0.13026f)) - (_191.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _356 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_191.x * -0.024f) - (_191.y * 0.12897f)) + (_191.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _357 = dot(float3(_354, _355, _356), float3(0.212671f, 0.71516f, 0.072169f));
    _362 = ((_355 - _357) * _powerParams.w) + _357;
    _370 = max(max(_158, _236), max(max(_278, _320), _362));
    _377 = sqrt(saturate(min(min(min(_158, _236), min(min(_278, _320), _362)), (1.0f - _370)) * (1.0f / _370))) * (-1.0f / (((1.0f - _169) * 8.0f) + (_169 * 5.0f)));
    _380 = 1.0f / ((_377 * 4.0f) + 1.0f);
    _389 = (_315 + (_273 + _231)) + _357;
    _409 = saturate(((_377 * (_389 + (((((_270 - _273) + (_228 - _231)) + (_312 - _315)) + (_354 - _357)) * _powerParams.w))) + _157) * _380) - _157;
    _410 = saturate(((_377 * (((_278 + _236) + _320) + _362)) + _158) * _380) - _158;
    _411 = saturate(((_377 * (_389 + (((((_272 - _273) + (_230 - _231)) + (_314 - _315)) + (_356 - _357)) * _powerParams.w))) + _159) * _380) - _159;
    _416 = 1.0f - dot(float3(abs(_409), abs(_410), abs(_411)), float3(0.212671f, 0.71516f, 0.072169f));
    _417 = _416 * _416;
    _418 = _417 * _417;
    _419 = _418 * _418;
    _427 = ((_419 * _409) + _157);
    _428 = ((_419 * _410) + _158);
    _429 = ((_419 * _411) + _159);
  } else {
    _427 = _157;
    _428 = _158;
    _429 = _159;
  }
  _433 = 1.0f - abs(_etcParams.w);
  _437 = saturate(_etcParams.w);  // [sem: expr_sat]
  _438 = (_433 * _427) + _437;
  _439 = (_433 * _428) + _437;
  _440 = (_433 * _429) + _437;
  if (_colorGradingParams.w > 0.0f) {
    _445 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _462 = (((max(0.0f, (1.0f - _438)) - _438) * _445) + _438);
    _463 = (((max(0.0f, (1.0f - _439)) - _439) * _445) + _439);
    _464 = (((max(0.0f, (1.0f - _440)) - _440) * _445) + _440);
  } else {
    _462 = _438;
    _463 = _439;
    _464 = _440;
  }
  _471 = (pow(_462, 0.012683313f));
  _472 = (pow(_463, 0.012683313f));
  _473 = (pow(_464, 0.012683313f));
  _499 = (TEXCOORD.x * 2.0f) + -1.0f;
  _500 = TEXCOORD.y * 2.0f;
  _501 = 1.0f - _500;
  _529 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _501, ((_projToPrevProj[3].x) * _499))) + (_projToPrevProj[3].w);
  _532 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _501, ((_projToPrevProj[0].x) * _499))) + (_projToPrevProj[0].w)) / _529) - _499;
  _533 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _501, ((_projToPrevProj[1].x) * _499))) + (_projToPrevProj[1].w)) / _529) - _501;
  if (_localToneMappingParams.w > 0.0f) {
    _547 = saturate(1.0f - (sqrt((_533 * _533) + (_532 * _532)) * 2.0f));  // [sem: expr_sat]
  } else {
    _547 = 1.0f;  // [sem: expr_sat]
  }
  _550 = abs(_499);
  _551 = abs(_500 + -1.0f);
  _555 = saturate(1.0f - ((_547 * _postProcessParams.x) * dot(float2(_550, _551), float2(_550, _551))));  // [sem: expr_sat]
  _565 = exp2(log2(_555 * exp2(log2(max(0.0f, (_471 + -0.8359375f)) / (18.851562f - (_471 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _566 = exp2(log2(_555 * exp2(log2(max(0.0f, (_472 + -0.8359375f)) / (18.851562f - (_472 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _567 = exp2(log2(_555 * exp2(log2(max(0.0f, (_473 + -0.8359375f)) / (18.851562f - (_473 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _600 = (!(SV_Position.y < _viewDir.w)) && (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  SV_Target.x = select(_600, exp2(log2((1.0f / ((_565 * 18.6875f) + 1.0f)) * ((_565 * 18.851562f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.y = select(_600, exp2(log2((1.0f / ((_566 * 18.6875f) + 1.0f)) * ((_566 * 18.851562f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.z = select(_600, exp2(log2((1.0f / ((_567 * 18.6875f) + 1.0f)) * ((_567 * 18.851562f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.w = _16.w;
  return SV_Target;
}
