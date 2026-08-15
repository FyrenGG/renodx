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
  float _436;
  float _437;
  float _438;
  float _474;
  float _475;
  float _476;
  float _578;
  float _52;
  float _53;
  float _57;
  float _62;
  float _66;
  float _71;
  float _75;
  float _81;
  uint _94;
  uint _95;
  float _100;
  float _130;
  float _132;
  float _134;
  float _148;
  float _149;
  float _150;
  float _152;
  float _162;
  float _163;
  float _164;
  float _166;
  float _174;
  float4 _181;
  float4 _186;
  float4 _191;
  float4 _196;
  float _233;
  float _234;
  float _235;
  float _236;
  float _247;
  float _282;
  float _283;
  float _284;
  float _285;
  float _296;
  float _331;
  float _332;
  float _333;
  float _334;
  float _345;
  float _380;
  float _381;
  float _382;
  float _383;
  float _394;
  float _403;
  float _410;
  float _413;
  float _445;
  float _449;
  float _450;
  float _451;
  float _452;
  float _457;
  float _482;
  float _486;
  float _487;
  float _488;
  float _489;
  float _519;
  float _530;
  float _531;
  float _532;
  float _560;
  float _563;
  float _564;
  float _581;
  float _582;
  float _586;
  bool _595;
  _18 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
    _42 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
  } else {
    _41 = _18.x;
    _42 = _18.z;
  }
  if (_slopeParams.w > 0.0f) {
    _52 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _53 = _52 * 0.7692308f;
    _57 = frac(abs(_53));
    _62 = _52 * 0.08130081f;
    _66 = frac(abs(_62));
    _71 = ((select((_62 >= (-0.0f - _62)), _66, (-0.0f - _66)) * 1230.0f) + 10.0f) * ((select((_53 >= (-0.0f - _53)), _57, (-0.0f - _57)) * 13.0f) + 1.0f);
    _75 = frac(abs(_71));
    _81 = ((0.0075000525f - (select((_71 >= (-0.0f - _71)), _75, (-0.0f - _75)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _86 = (_81 * _41);
    _87 = (_81 * _18.y);
    _88 = (_81 * _42);
  } else {
    _86 = _41;
    _87 = _18.y;
    _88 = _42;
  }
  _94 = (uint)(_screenSizeAndInvSize.x * TEXCOORD.x);
  _95 = (uint)(_screenSizeAndInvSize.y * TEXCOORD.y);
  _100 = _userImageAdjust.z * _exposure0.x;
  _130 = _100 * _slopeParams.x;
  _132 = _100 * _slopeParams.y;
  _134 = _100 * _slopeParams.z;
  _148 = exp2(log2(max(0.0f, (_offsetParams.x + (_130 * max(0.0f, (((_86 * 1.70505f) - (_87 * 0.62179f)) - (_88 * 0.08326f))))))) * _powerParams.x);
  _149 = exp2(log2(max(0.0f, (_offsetParams.y + (_132 * max(0.0f, (((_87 * 1.1408f) - (_86 * 0.13026f)) - (_88 * 0.01055f))))))) * _powerParams.y);
  _150 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_86 * -0.024f) - (_87 * 0.12897f)) + (_88 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _152 = dot(float3(_148, _149, _150), float3(0.212671f, 0.71516f, 0.072169f));
  _162 = saturate(lerp(_152, _148, _powerParams.w));  // [sem: expr_sat]
  _163 = saturate(lerp(_152, _149, _powerParams.w));  // [sem: expr_sat]
  _164 = saturate(lerp(_152, _150, _powerParams.w));  // [sem: expr_sat]
  _166 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_166.x < 1e-07f) || (_166.x == 1.0f))) {
    _174 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _181 = __3__36__0__0__g_sceneColor.Load(int3(_94, ((int)((uint)((uint)(_95)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _186 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_94)) + (uint)(-1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _191 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_94)) + (uint)(1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _196 = __3__36__0__0__g_sceneColor.Load(int3(_94, ((int)((uint)((uint)(_95)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _233 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_181.x * 1.70505f) - (_181.y * 0.62179f)) - (_181.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _234 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_181.y * 1.1408f) - (_181.x * 0.13026f)) - (_181.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _235 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_181.x * -0.024f) - (_181.y * 0.12897f)) + (_181.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _236 = dot(float3(_233, _234, _235), float3(0.212671f, 0.71516f, 0.072169f));
    _247 = saturate(lerp(_236, _234, _powerParams.w));  // [sem: expr_sat]
    _282 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_186.x * 1.70505f) - (_186.y * 0.62179f)) - (_186.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _283 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_186.y * 1.1408f) - (_186.x * 0.13026f)) - (_186.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _284 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_186.x * -0.024f) - (_186.y * 0.12897f)) + (_186.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _285 = dot(float3(_282, _283, _284), float3(0.212671f, 0.71516f, 0.072169f));
    _296 = saturate(lerp(_285, _283, _powerParams.w));  // [sem: expr_sat]
    _331 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_191.x * 1.70505f) - (_191.y * 0.62179f)) - (_191.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _332 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_191.y * 1.1408f) - (_191.x * 0.13026f)) - (_191.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _333 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_191.x * -0.024f) - (_191.y * 0.12897f)) + (_191.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _334 = dot(float3(_331, _332, _333), float3(0.212671f, 0.71516f, 0.072169f));
    _345 = saturate(lerp(_334, _332, _powerParams.w));  // [sem: expr_sat]
    _380 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_196.x * 1.70505f) - (_196.y * 0.62179f)) - (_196.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _381 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_196.y * 1.1408f) - (_196.x * 0.13026f)) - (_196.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _382 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_196.x * -0.024f) - (_196.y * 0.12897f)) + (_196.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _383 = dot(float3(_380, _381, _382), float3(0.212671f, 0.71516f, 0.072169f));
    _394 = saturate(lerp(_383, _381, _powerParams.w));  // [sem: expr_sat]
    _403 = max(max(_163, _247), max(max(_296, _345), _394));
    _410 = sqrt(saturate(min(min(min(_163, _247), min(min(_296, _345), _394)), (1.0f - _403)) * (1.0f / _403))) * (-1.0f / (((1.0f - _174) * 8.0f) + (_174 * 5.0f)));
    _413 = 1.0f / ((_410 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _436 = saturate(((_410 * (((saturate(lerp(_285, _282, _powerParams.w)) + saturate(lerp(_236, _233, _powerParams.w))) + saturate(lerp(_334, _331, _powerParams.w))) + saturate(lerp(_383, _380, _powerParams.w)))) + _162) * _413);
    _437 = saturate(((_410 * (((_296 + _247) + _345) + _394)) + _163) * _413);  // [sem: expr_sat]
    // [sem: expr_sat]
    _438 = saturate(((_410 * (((saturate(lerp(_285, _284, _powerParams.w)) + saturate(lerp(_236, _235, _powerParams.w))) + saturate(lerp(_334, _333, _powerParams.w))) + saturate(lerp(_383, _382, _powerParams.w)))) + _164) * _413);
  } else {
    _436 = _162;  // [sem: expr_sat]
    _437 = _163;  // [sem: expr_sat]
    _438 = _164;  // [sem: expr_sat]
  }
  _445 = 1.0f - abs(_etcParams.w);
  _449 = saturate(_etcParams.w);  // [sem: expr_sat]
  _450 = (_445 * saturate(_436)) + _449;
  _451 = (_445 * saturate(_437)) + _449;
  _452 = (_445 * saturate(_438)) + _449;
  if (_colorGradingParams.w > 0.0f) {
    _457 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _474 = (((max(0.0f, (1.0f - _450)) - _450) * _457) + _450);
    _475 = (((max(0.0f, (1.0f - _451)) - _451) * _457) + _451);
    _476 = (((max(0.0f, (1.0f - _452)) - _452) * _457) + _452);
  } else {
    _474 = _450;
    _475 = _451;
    _476 = _452;
  }
  _482 = _userImageAdjust.y + 1.0f;
  _486 = _userImageAdjust.x + 0.5f;
  _487 = ((_474 + -0.5f) * _482) + _486;
  _488 = ((_475 + -0.5f) * _482) + _486;
  _489 = ((_476 + -0.5f) * _482) + _486;
  _519 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _530 = (TEXCOORD.x * 2.0f) + -1.0f;
  _531 = TEXCOORD.y * 2.0f;
  _532 = 1.0f - _531;
  _560 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _532, ((_projToPrevProj[3].x) * _530))) + (_projToPrevProj[3].w);
  _563 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _532, ((_projToPrevProj[0].x) * _530))) + (_projToPrevProj[0].w)) / _560) - _530;
  _564 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _532, ((_projToPrevProj[1].x) * _530))) + (_projToPrevProj[1].w)) / _560) - _532;
  if (_localToneMappingParams.w > 0.0f) {
    _578 = saturate(1.0f - (sqrt((_564 * _564) + (_563 * _563)) * 2.0f));  // [sem: expr_sat]
  } else {
    _578 = 1.0f;  // [sem: expr_sat]
  }
  _581 = abs(_530);
  _582 = abs(_531 + -1.0f);
  _586 = saturate(1.0f - ((_578 * _postProcessParams.x) * dot(float2(_581, _582), float2(_581, _582))));  // [sem: expr_sat]
  _595 = (!(SV_Position.y < _viewDir.w)) && (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  SV_Target.x = select(_595, (_586 * exp2(log2(saturate(mad(_colorBlind0.z, _489, mad(_colorBlind0.y, _488, (_colorBlind0.x * _487))))) * _519)), 0.0f);
  SV_Target.y = select(_595, (_586 * exp2(log2(saturate(mad(_colorBlind1.z, _489, mad(_colorBlind1.y, _488, (_colorBlind1.x * _487))))) * _519)), 0.0f);
  SV_Target.z = select(_595, (_586 * exp2(log2(saturate(mad(_colorBlind2.z, _489, mad(_colorBlind2.y, _488, (_colorBlind2.x * _487))))) * _519)), 0.0f);
  SV_Target.w = _18.w;
  return SV_Target;
}
