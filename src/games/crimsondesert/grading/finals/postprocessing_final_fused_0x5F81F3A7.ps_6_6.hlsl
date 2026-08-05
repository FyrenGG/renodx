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
  float _439;
  float _440;
  float _441;
  float _474;
  float _475;
  float _476;
  float _534;
  bool _590;
  float _50;
  float _51;
  float _53;
  float _54;
  float _56;
  float _69;
  float _71;
  float _79;
  uint _90;
  uint _93;
  float _98;
  float _100;
  float _102;
  float _104;
  float _120;
  float _134;
  float _148;
  float _149;
  float _153;
  float _156;
  float _159;
  float _162;
  float _171;
  float4 _174;
  float4 _179;
  float4 _184;
  float4 _189;
  float _208;
  float _222;
  float _236;
  float _237;
  float _241;
  float _253;
  float _265;
  float _277;
  float _278;
  float _281;
  float _293;
  float _305;
  float _317;
  float _318;
  float _321;
  float _333;
  float _345;
  float _357;
  float _358;
  float _361;
  float _365;
  float _381;
  float _384;
  float _387;
  float _401;
  float _409;
  float _423;
  float _428;
  float _429;
  float _430;
  float _431;
  float _445;
  float _446;
  float _448;
  float _450;
  float _452;
  float _457;
  float _479;
  float _482;
  float _485;
  float _487;
  float _488;
  float _489;
  float _501;
  float _511;
  float _521;
  float _535;
  float _537;
  float _544;
  float _556;
  float _568;
  float _580;
  _16 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _39 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
    _40 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
  } else {
    _39 = _16.z;
    _40 = _16.x;
  }
  if (_slopeParams.w > 0.0f) {
    _50 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _51 = _50 * 0.7692308f;
    _53 = frac(abs(_51));
    _54 = _50 * 0.08130081f;
    _56 = frac(abs(_54));
    _69 = ((select((_54 >= (-0.0f - _54)), _56, (-0.0f - _56)) * 1230.0f) + 10.0f) * ((select((_51 >= (-0.0f - _51)), _53, (-0.0f - _53)) * 13.0f) + 1.0f);
    _71 = frac(abs(_69));
    _79 = ((0.0075000525f - (select((_69 >= (-0.0f - _69)), _71, (-0.0f - _71)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _84 = (_79 * _39);
    _85 = (_79 * _16.y);
    _86 = (_79 * _40);
  } else {
    _84 = _39;
    _85 = _16.y;
    _86 = _40;
  }
  _90 = (uint)(_screenSizeAndInvSize.x * TEXCOORD.x);
  _93 = (uint)(_screenSizeAndInvSize.y * TEXCOORD.y);
  _98 = _exposure0.x * _userImageAdjust.z;
  _100 = _98 * _slopeParams.x;
  _102 = _98 * _slopeParams.y;
  _104 = _98 * _slopeParams.z;
  _120 = exp2(_powerParams.x * log2(max(0.0f, ((_100 * max(0.0f, (((_85 * -0.62179f) - (_84 * 0.08326f)) + (_86 * 1.70505f)))) + _offsetParams.x))));
  _134 = exp2(log2(max(0.0f, ((max(0.0f, (((_85 * 1.1408f) - (_84 * 0.01055f)) - (_86 * 0.13026f))) * _102) + _offsetParams.y))) * _powerParams.y);
  _148 = exp2(log2(max(0.0f, ((max(0.0f, (((_84 * 1.15297f) - (_85 * 0.12897f)) - (_86 * 0.024f))) * _104) + _offsetParams.z))) * _powerParams.z);
  _149 = dot(float3(_120, _134, _148), float3(0.212671f, 0.71516f, 0.072169f));
  _153 = ((_120 - _149) * _powerParams.w) + _149;
  _156 = ((_134 - _149) * _powerParams.w) + _149;
  _159 = ((_148 - _149) * _powerParams.w) + _149;
  _162 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_162.x < 1e-07f) || (_162.x == 1.0f))) {
    _171 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _174 = __3__36__0__0__g_sceneColor.Load(int3(_90, ((int)((uint)((uint)(_93)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _179 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_90)) + (uint)(-1))), _93, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _184 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_90)) + (uint)(1))), _93, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _189 = __3__36__0__0__g_sceneColor.Load(int3(_90, ((int)((uint)((uint)(_93)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _208 = exp2(_powerParams.x * log2(max(0.0f, (_offsetParams.x + (max(0.0f, (((_174.x * 1.70505f) - (_174.y * 0.62179f)) - (_174.z * 0.08326f))) * _100)))));
    _222 = exp2(log2(max(0.0f, ((max(0.0f, (((_174.y * 1.1408f) - (_174.x * 0.13026f)) - (_174.z * 0.01055f))) * _102) + _offsetParams.y))) * _powerParams.y);
    _236 = exp2(log2(max(0.0f, ((max(0.0f, (((_174.x * -0.024f) - (_174.y * 0.12897f)) + (_174.z * 1.15297f))) * _104) + _offsetParams.z))) * _powerParams.z);
    _237 = dot(float3(_208, _222, _236), float3(0.212671f, 0.71516f, 0.072169f));
    _241 = ((_222 - _237) * _powerParams.w) + _237;
    _253 = exp2(log2(max(0.0f, ((max(0.0f, (((_179.x * 1.70505f) - (_179.y * 0.62179f)) - (_179.z * 0.08326f))) * _100) + _offsetParams.x))) * _powerParams.x);
    _265 = exp2(log2(max(0.0f, ((max(0.0f, (((_179.y * 1.1408f) - (_179.x * 0.13026f)) - (_179.z * 0.01055f))) * _102) + _offsetParams.y))) * _powerParams.y);
    _277 = exp2(log2(max(0.0f, ((max(0.0f, (((_179.x * -0.024f) - (_179.y * 0.12897f)) + (_179.z * 1.15297f))) * _104) + _offsetParams.z))) * _powerParams.z);
    _278 = dot(float3(_253, _265, _277), float3(0.212671f, 0.71516f, 0.072169f));
    _281 = ((_265 - _278) * _powerParams.w) + _278;
    _293 = exp2(log2(max(0.0f, ((max(0.0f, (((_184.x * 1.70505f) - (_184.y * 0.62179f)) - (_184.z * 0.08326f))) * _100) + _offsetParams.x))) * _powerParams.x);
    _305 = exp2(log2(max(0.0f, ((max(0.0f, (((_184.y * 1.1408f) - (_184.x * 0.13026f)) - (_184.z * 0.01055f))) * _102) + _offsetParams.y))) * _powerParams.y);
    _317 = exp2(log2(max(0.0f, ((max(0.0f, (((_184.x * -0.024f) - (_184.y * 0.12897f)) + (_184.z * 1.15297f))) * _104) + _offsetParams.z))) * _powerParams.z);
    _318 = dot(float3(_293, _305, _317), float3(0.212671f, 0.71516f, 0.072169f));
    _321 = ((_305 - _318) * _powerParams.w) + _318;
    _333 = exp2(log2(max(0.0f, ((max(0.0f, (((_189.x * 1.70505f) - (_189.y * 0.62179f)) - (_189.z * 0.08326f))) * _100) + _offsetParams.x))) * _powerParams.x);
    _345 = exp2(log2(max(0.0f, ((max(0.0f, (((_189.y * 1.1408f) - (_189.x * 0.13026f)) - (_189.z * 0.01055f))) * _102) + _offsetParams.y))) * _powerParams.y);
    _357 = exp2(log2(max(0.0f, ((max(0.0f, (((_189.x * -0.024f) - (_189.y * 0.12897f)) + (_189.z * 1.15297f))) * _104) + _offsetParams.z))) * _powerParams.z);
    _358 = dot(float3(_333, _345, _357), float3(0.212671f, 0.71516f, 0.072169f));
    _361 = ((_345 - _358) * _powerParams.w) + _358;
    _365 = max(max(_156, _241), max(max(_281, _321), _361));
    _381 = (-1.0f / (((1.0f - _171) * 8.0f) + (_171 * 5.0f))) * sqrt(saturate((1.0f / _365) * min(min(min(_156, _241), min(min(_281, _321), _361)), (1.0f - _365))));
    _384 = 1.0f / ((_381 * 4.0f) + 1.0f);
    _387 = ((_278 + _237) + _318) + _358;
    _401 = saturate(((_381 * (((((((((_208 - _237) + _253) - _278) + _293) - _318) + _333) - _358) * _powerParams.w) + _387)) + _153) * _384) - _153;
    _409 = saturate(((_381 * (((_281 + _241) + _321) + _361)) + _156) * _384) - _156;
    _423 = saturate(((_381 * (((((((((_236 - _237) + _277) - _278) + _317) - _318) + _357) - _358) * _powerParams.w) + _387)) + _159) * _384) - _159;
    _428 = 1.0f - dot(float3(abs(_401), abs(_409), abs(_423)), float3(0.212671f, 0.71516f, 0.072169f));
    _429 = _428 * _428;
    _430 = _429 * _429;
    _431 = _430 * _430;
    _439 = ((_431 * _423) + _159);
    _440 = ((_431 * _409) + _156);
    _441 = ((_431 * _401) + _153);
  } else {
    _439 = _159;
    _440 = _156;
    _441 = _153;
  }
  _445 = 1.0f - abs(_etcParams.w);
  _446 = saturate(_etcParams.w);  // [sem: expr_sat]
  _448 = (_445 * _441) + _446;
  _450 = (_445 * _440) + _446;
  _452 = (_445 * _439) + _446;
  if (_colorGradingParams.w > 0.0f) {
    _457 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _474 = (((max(0.0f, (1.0f - _448)) - _448) * _457) + _448);
    _475 = (((max(0.0f, (1.0f - _450)) - _450) * _457) + _450);
    _476 = (((max(0.0f, (1.0f - _452)) - _452) * _457) + _452);
  } else {
    _474 = _448;
    _475 = _450;
    _476 = _452;
  }
  _479 = (pow(_474, 0.012683313f));
  _482 = (pow(_475, 0.012683313f));
  _485 = (pow(_476, 0.012683313f));
  _487 = (TEXCOORD.x * 2.0f) + -1.0f;
  _488 = TEXCOORD.y * 2.0f;
  _489 = 1.0f - _488;
  _501 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _489, ((_projToPrevProj[3].x) * _487)));
  _511 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _489, ((_projToPrevProj[0].x) * _487))) + (_projToPrevProj[0].w)) / _501) - _487;
  _521 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _489, ((_projToPrevProj[1].x) * _487))) + (_projToPrevProj[1].w)) / _501) - _489;
  if (_localToneMappingParams.w > 0.0f) {
    _534 = saturate(1.0f - (sqrt((_521 * _521) + (_511 * _511)) * 2.0f));  // [sem: expr_sat]
  } else {
    _534 = 1.0f;  // [sem: expr_sat]
  }
  _535 = abs(_487);
  _537 = abs(_488 + -1.0f);
  _544 = saturate(1.0f - ((_postProcessParams.x * _534) * dot(float2(_535, _537), float2(_535, _537))));  // [sem: expr_sat]
  _556 = exp2(log2(exp2(log2(max(0.0f, (_479 + -0.8359375f)) / (18.851562f - (_479 * 18.6875f))) * 6.277395f) * _544) * 0.15930176f);
  _568 = exp2(log2(exp2(log2(max(0.0f, (_482 + -0.8359375f)) / (18.851562f - (_482 * 18.6875f))) * 6.277395f) * _544) * 0.15930176f);
  _580 = exp2(log2(exp2(log2(max(0.0f, (_485 + -0.8359375f)) / (18.851562f - (_485 * 18.6875f))) * 6.277395f) * _544) * 0.15930176f);
  if (!(SV_Position.y < _viewDir.w)) {
    _590 = (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  } else {
    _590 = false;
  }
  SV_Target.x = select(_590, exp2(log2((1.0f / ((_556 * 18.6875f) + 1.0f)) * ((_556 * 18.851562f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.y = select(_590, exp2(log2((1.0f / ((_568 * 18.6875f) + 1.0f)) * ((_568 * 18.851562f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.z = select(_590, exp2(log2((1.0f / ((_580 * 18.6875f) + 1.0f)) * ((_580 * 18.851562f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.w = _16.w;
  return SV_Target;
}
