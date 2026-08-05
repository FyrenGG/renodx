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
  float _287;
  float _288;
  float _289;
  float _383;
  float _384;
  float _385;
  float _453;
  float _509;
  float _510;
  float _511;
  float _51;
  float _52;
  float _54;
  float _55;
  float _57;
  float _70;
  float _72;
  float _80;
  float _92;
  float _110;
  float _126;
  float _142;
  float _143;
  float _147;
  float _150;
  float _153;
  float _160;
  float _167;
  float _174;
  float _175;
  float _176;
  float _177;
  float _178;
  float _179;
  float _180;
  float _196;
  float _212;
  float _228;
  float _229;
  float _230;
  float _231;
  float _232;
  float _249;
  float _250;
  float _251;
  float _252;
  float _255;
  float _258;
  float _262;
  float _266;
  float _270;
  float _290;
  float _302;
  float _314;
  float _326;
  float _330;
  float _331;
  float _341;
  float _351;
  float _361;
  float _366;
  float _387;
  float _389;
  float _392;
  float _395;
  float _398;
  float _404;
  float _406;
  float _407;
  float _408;
  float _420;
  float _430;
  float _440;
  float _454;
  float _456;
  float _462;
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
  _92 = _exposure0.x * _userImageAdjust.z;
  _110 = exp2(_powerParams.x * log2(max(0.0f, (((max(0.0f, (((_86 * -0.62179f) - (_85 * 0.08326f)) + (_87 * 1.70505f))) * _slopeParams.x) * _92) + _offsetParams.x))));
  _126 = exp2(log2(max(0.0f, (((_92 * _slopeParams.y) * max(0.0f, (((_86 * 1.1408f) - (_85 * 0.01055f)) - (_87 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
  _142 = exp2(log2(max(0.0f, (((_92 * _slopeParams.z) * max(0.0f, (((_85 * 1.15297f) - (_86 * 0.12897f)) - (_87 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
  _143 = dot(float3(_110, _126, _142), float3(0.212671f, 0.71516f, 0.072169f));
  _147 = ((_110 - _143) * _powerParams.w) + _143;
  _150 = ((_126 - _143) * _powerParams.w) + _143;
  _153 = ((_142 - _143) * _powerParams.w) + _143;
  _160 = min(max(log2(mad(_153, 0.079223745f, mad(_150, 0.0784336f, (_147 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _167 = min(max(log2(mad(_153, 0.07916613f, mad(_150, 0.87846863f, (_147 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _174 = min(max(log2(mad(_153, 0.879143f, mad(_150, 0.0784336f, (_147 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _175 = _160 * 0.060606062f;
  _176 = _167 * 0.060606062f;
  _177 = _174 * 0.060606062f;
  _178 = _175 * _175;
  _179 = _176 * _176;
  _180 = _177 * _177;
  _196 = min(0.0f, (-0.0f - (((_160 * 0.0072181816f) + ((_178 * 0.4298f) + (((_178 * _178) * ((31.96f - (_160 * 2.4327273f)) + (_178 * 15.5f))) - ((_160 * 0.41624245f) * _178)))) + -0.00232f)));
  _212 = min(0.0f, (-0.0f - (((_167 * 0.0072181816f) + ((_179 * 0.4298f) + (((_179 * _179) * ((31.96f - (_167 * 2.4327273f)) + (_179 * 15.5f))) - ((_167 * 0.41624245f) * _179)))) + -0.00232f)));
  _228 = min(0.0f, (-0.0f - (((_174 * 0.0072181816f) + ((_180 * 0.4298f) + (((_180 * _180) * ((31.96f - (_174 * 2.4327273f)) + (_180 * 15.5f))) - ((_174 * 0.41624245f) * _180)))) + -0.00232f)));
  _229 = -0.0f - _196;
  _230 = -0.0f - _212;
  _231 = -0.0f - _228;
  _232 = dot(float3(_229, _230, _231), float3(0.2126f, 0.7152f, 0.0722f));
  if (_nightToneParm == 1) {
    _249 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _250 = -0.79999995f / _249;
    _251 = -1.2f / _249;
    _252 = 0.20000005f / _249;
    _255 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _258 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _262 = (_250 + 1.4f) + (_258 * (-0.39999998f - _250));
    _266 = (_251 + 1.6f) + (_258 * (-0.6f - _251));
    _270 = (_252 + 0.9f) + (_258 * (0.5f - _252));
    _287 = (lerp(_270, 1.4f, _255));  // [sem: blended]
    _288 = (lerp(_262, 1.0f, _255));  // [sem: blended]
    _289 = (lerp(_266, 1.2f, _255));  // [sem: blended]
  } else {
    _287 = 1.4f;  // [sem: blended]
    _288 = 1.0f;  // [sem: blended]
    _289 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
  }
  _290 = 1.0f - _289;
  _302 = ((exp2(log2(((saturate((_196 * _196) * _229) * _290) + _289) * _229) * _288) - _232) * _287) + _232;
  _314 = ((exp2(log2(((saturate((_212 * _212) * _230) * _290) + _289) * _230) * _288) - _232) * _287) + _232;
  _326 = ((exp2(log2(((saturate((_228 * _228) * _231) * _290) + _289) * _231) * _288) - _232) * _287) + _232;
  _330 = 1.0f - abs(_etcParams.w);
  _331 = saturate(_etcParams.w);  // [sem: expr_sat]
  _341 = (saturate(saturate(exp2(log2(mad(_326, -0.09902974f, mad(_314, -0.09802088f, (_302 * 1.196879f)))) * 2.2f))) * _330) + _331;
  _351 = (saturate(saturate(exp2(log2(mad(_326, -0.098961174f, mad(_314, 1.1519032f, (_302 * -0.052896854f)))) * 2.2f))) * _330) + _331;
  _361 = (saturate(saturate(exp2(log2(mad(_326, 1.1510737f, mad(_314, -0.09804345f, (_302 * -0.052971635f)))) * 2.2f))) * _330) + _331;
  if (_colorGradingParams.w > 0.0f) {
    _366 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _383 = (((max(0.0f, (1.0f - _361)) - _361) * _366) + _361);
    _384 = (((max(0.0f, (1.0f - _351)) - _351) * _366) + _351);
    _385 = (((max(0.0f, (1.0f - _341)) - _341) * _366) + _341);
  } else {
    _383 = _361;
    _384 = _351;
    _385 = _341;
  }
  _387 = _userImageAdjust.y + 1.0f;
  _389 = _userImageAdjust.x + 0.5f;
  _392 = ((_385 + -0.5f) * _387) + _389;
  _395 = ((_384 + -0.5f) * _387) + _389;
  _398 = ((_383 + -0.5f) * _387) + _389;
  _404 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _406 = (TEXCOORD.x * 2.0f) + -1.0f;
  _407 = TEXCOORD.y * 2.0f;
  _408 = 1.0f - _407;
  _420 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _408, ((_projToPrevProj[3].x) * _406)));
  _430 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _408, ((_projToPrevProj[0].x) * _406))) + (_projToPrevProj[0].w)) / _420) - _406;
  _440 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _408, ((_projToPrevProj[1].x) * _406))) + (_projToPrevProj[1].w)) / _420) - _408;
  if (_localToneMappingParams.w > 0.0f) {
    _453 = saturate(1.0f - (sqrt((_440 * _440) + (_430 * _430)) * 2.0f));  // [sem: expr_sat]
  } else {
    _453 = 1.0f;  // [sem: expr_sat]
  }
  _454 = abs(_406);
  _456 = abs(_407 + -1.0f);
  _462 = saturate(1.0f - ((_453 * _postProcessParams.x) * dot(float2(_454, _456), float2(_454, _456))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _509 = (exp2(log2(saturate(mad(_colorBlind0.z, _398, mad(_colorBlind0.y, _395, (_colorBlind0.x * _392))))) * _404) * _462);
      _510 = (exp2(log2(saturate(mad(_colorBlind1.z, _398, mad(_colorBlind1.y, _395, (_colorBlind1.x * _392))))) * _404) * _462);
      _511 = (exp2(log2(saturate(mad(_colorBlind2.z, _398, mad(_colorBlind2.y, _395, (_colorBlind2.x * _392))))) * _404) * _462);
    } else {
      _509 = 0.0f;
      _510 = 0.0f;
      _511 = 0.0f;
    }
  } else {
    _509 = 0.0f;
    _510 = 0.0f;
    _511 = 0.0f;
  }
  SV_Target.x = _509;
  SV_Target.y = _510;
  SV_Target.z = _511;
  SV_Target.w = _17.w;
  return SV_Target;
}
