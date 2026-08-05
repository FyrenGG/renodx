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
  float4 _15;
  float _38;
  float _39;
  float _83;
  float _84;
  float _85;
  float _304;
  float _389;
  float _390;
  float _391;
  float _448;
  float _531;
  float _532;
  float _533;
  float _49;
  float _50;
  float _52;
  float _53;
  float _55;
  float _68;
  float _70;
  float _78;
  float _91;
  float _93;
  float _95;
  float _97;
  float _113;
  float _127;
  float _141;
  float _142;
  float _146;
  float _149;
  float _152;
  float _155;
  float _156;
  float _157;
  float _169;
  float _181;
  float _193;
  float _194;
  float _207;
  float _211;
  float _213;
  float _214;
  float _215;
  float _227;
  float _239;
  float _251;
  float _252;
  float _265;
  float _266;
  float _267;
  float _268;
  float _270;
  float _273;
  float _276;
  float _279;
  float _281;
  float _286;
  float _295;
  float _305;
  float _306;
  float _307;
  float _319;
  float _331;
  float _343;
  float _344;
  float _348;
  float _349;
  float _355;
  float _361;
  float _367;
  float _372;
  float _394;
  float _397;
  float _400;
  float _402;
  float _403;
  float _404;
  float _416;
  float _426;
  float _436;
  float _449;
  float _451;
  float _457;
  float _469;
  float _481;
  float _493;
  _15 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _38 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
    _39 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
  } else {
    _38 = _15.z;
    _39 = _15.x;
  }
  if (_slopeParams.w > 0.0f) {
    _49 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _50 = _49 * 0.7692308f;
    _52 = frac(abs(_50));
    _53 = _49 * 0.08130081f;
    _55 = frac(abs(_53));
    _68 = ((select((_53 >= (-0.0f - _53)), _55, (-0.0f - _55)) * 1230.0f) + 10.0f) * ((select((_50 >= (-0.0f - _50)), _52, (-0.0f - _52)) * 13.0f) + 1.0f);
    _70 = frac(abs(_68));
    _78 = ((0.0075000525f - (select((_68 >= (-0.0f - _68)), _70, (-0.0f - _70)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _83 = (_78 * _38);
    _84 = (_78 * _15.y);
    _85 = (_78 * _39);
  } else {
    _83 = _38;
    _84 = _15.y;
    _85 = _39;
  }
  _91 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
  _93 = _91 * _slopeParams.x;
  _95 = _91 * _slopeParams.y;
  _97 = _91 * _slopeParams.z;
  _113 = exp2(_powerParams.x * log2(max(0.0f, ((_93 * max(0.0f, (((_84 * -0.62179f) - (_83 * 0.08326f)) + (_85 * 1.70505f)))) + _offsetParams.x))));
  _127 = exp2(log2(max(0.0f, ((max(0.0f, (((_84 * 1.1408f) - (_83 * 0.01055f)) - (_85 * 0.13026f))) * _95) + _offsetParams.y))) * _powerParams.y);
  _141 = exp2(log2(max(0.0f, ((max(0.0f, (((_83 * 1.15297f) - (_84 * 0.12897f)) - (_85 * 0.024f))) * _97) + _offsetParams.z))) * _powerParams.z);
  _142 = dot(float3(_113, _127, _141), float3(0.212671f, 0.71516f, 0.072169f));
  _146 = ((_113 - _142) * _powerParams.w) + _142;
  _149 = ((_127 - _142) * _powerParams.w) + _142;
  _152 = ((_141 - _142) * _powerParams.w) + _142;
  _155 = _localToneMappingParams.x * _85;
  _156 = _localToneMappingParams.x * _84;
  _157 = _localToneMappingParams.x * _83;
  _169 = exp2(log2(max(0.0f, ((max(0.0f, (((_155 * 1.70505f) - (_156 * 0.62179f)) - (_157 * 0.08326f))) * _93) + _offsetParams.x))) * _powerParams.x);
  _181 = exp2(log2(max(0.0f, ((max(0.0f, (((_156 * 1.1408f) - (_155 * 0.13026f)) - (_157 * 0.01055f))) * _95) + _offsetParams.y))) * _powerParams.y);
  _193 = exp2(log2(max(0.0f, ((max(0.0f, (((_155 * -0.024f) - (_156 * 0.12897f)) + (_157 * 1.15297f))) * _97) + _offsetParams.z))) * _powerParams.z);
  _194 = dot(float3(_169, _181, _193), float3(0.212671f, 0.71516f, 0.072169f));
  _207 = dot(float3(saturate(lerp(_194, _169, _powerParams.w)), saturate(lerp(_194, _181, _powerParams.w)), saturate(lerp(_194, _193, _powerParams.w))), float3(0.1f, 0.7f, 0.2f));
  _211 = dot(float3(saturate(_146), saturate(_149), saturate(_152)), float3(0.1f, 0.7f, 0.2f));
  _213 = _localToneMappingParams.y * _85;
  _214 = _localToneMappingParams.y * _84;
  _215 = _localToneMappingParams.y * _83;
  _227 = exp2(log2(max(0.0f, ((max(0.0f, (((_213 * 1.70505f) - (_214 * 0.62179f)) - (_215 * 0.08326f))) * _93) + _offsetParams.x))) * _powerParams.x);
  _239 = exp2(log2(max(0.0f, ((max(0.0f, (((_214 * 1.1408f) - (_213 * 0.13026f)) - (_215 * 0.01055f))) * _95) + _offsetParams.y))) * _powerParams.y);
  _251 = exp2(log2(max(0.0f, ((max(0.0f, (((_213 * -0.024f) - (_214 * 0.12897f)) + (_215 * 1.15297f))) * _97) + _offsetParams.z))) * _powerParams.z);
  _252 = dot(float3(_227, _239, _251), float3(0.212671f, 0.71516f, 0.072169f));
  _265 = dot(float3(saturate(lerp(_252, _227, _powerParams.w)), saturate(lerp(_252, _239, _powerParams.w)), saturate(lerp(_252, _251, _powerParams.w))), float3(0.1f, 0.7f, 0.2f));
  _266 = _207 + -0.5f;
  _267 = _211 + -0.5f;
  _268 = _265 + -0.5f;
  _270 = _localToneMappingParams.z * -0.7213475f;
  _273 = exp2((_266 * _266) * _270);
  _276 = exp2((_267 * _267) * _270);
  _279 = exp2((_268 * _268) * _270);
  _281 = dot(float3(_273, _276, _279), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _286 = dot(float3(max(_146, 0.0f), max(_149, 0.0f), max(_152, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _295 = max(dot(float3(((_273 / _281) * _207), ((_276 / _281) * _211), ((_279 / _281) * _265)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _286;
  if (!(_286 > 0.007f)) {
    _304 = ((((_286 * _286) * 20408.16f) * (_295 + -1.0f)) + 1.0f);
  } else {
    _304 = _295;
  }
  _305 = _304 * _85;
  _306 = _304 * _84;
  _307 = _304 * _83;
  _319 = exp2(log2(max(0.0f, ((max(0.0f, (((_305 * 1.70505f) - (_306 * 0.62179f)) - (_307 * 0.08326f))) * _93) + _offsetParams.x))) * _powerParams.x);
  _331 = exp2(log2(max(0.0f, ((max(0.0f, (((_306 * 1.1408f) - (_305 * 0.13026f)) - (_307 * 0.01055f))) * _95) + _offsetParams.y))) * _powerParams.y);
  _343 = exp2(log2(max(0.0f, ((max(0.0f, (((_305 * -0.024f) - (_306 * 0.12897f)) + (_307 * 1.15297f))) * _97) + _offsetParams.z))) * _powerParams.z);
  _344 = dot(float3(_319, _331, _343), float3(0.212671f, 0.71516f, 0.072169f));
  _348 = 1.0f - abs(_etcParams.w);
  _349 = saturate(_etcParams.w);  // [sem: expr_sat]
  _355 = (max((lerp(_344, _319, _powerParams.w)), 0.0f) * _348) + _349;
  _361 = (max((lerp(_344, _331, _powerParams.w)), 0.0f) * _348) + _349;
  _367 = (max((lerp(_344, _343, _powerParams.w)), 0.0f) * _348) + _349;
  if (_colorGradingParams.w > 0.0f) {
    _372 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _389 = (((max(0.0f, (1.0f - _367)) - _367) * _372) + _367);
    _390 = (((max(0.0f, (1.0f - _361)) - _361) * _372) + _361);
    _391 = (((max(0.0f, (1.0f - _355)) - _355) * _372) + _355);
  } else {
    _389 = _367;
    _390 = _361;
    _391 = _355;
  }
  _394 = (pow(_391, 0.012683313f));
  _397 = (pow(_390, 0.012683313f));
  _400 = (pow(_389, 0.012683313f));
  _402 = (TEXCOORD.x * 2.0f) + -1.0f;
  _403 = TEXCOORD.y * 2.0f;
  _404 = 1.0f - _403;
  _416 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _404, ((_projToPrevProj[3].x) * _402)));
  _426 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _404, ((_projToPrevProj[0].x) * _402))) + (_projToPrevProj[0].w)) / _416) - _402;
  _436 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _404, ((_projToPrevProj[1].x) * _402))) + (_projToPrevProj[1].w)) / _416) - _404;
  if (_localToneMappingParams.w > 0.0f) {
    _448 = saturate(1.0f - (sqrt((_436 * _436) + (_426 * _426)) * 2.0f));  // [sem: expr_sat]
  } else {
    _448 = 1.0f;  // [sem: expr_sat]
  }
  _449 = abs(_402);
  _451 = abs(_403 + -1.0f);
  _457 = saturate(1.0f - ((_448 * _postProcessParams.x) * dot(float2(_449, _451), float2(_449, _451))));  // [sem: expr_sat]
  _469 = exp2(log2(exp2(log2(max(0.0f, (_394 + -0.8359375f)) / (18.851562f - (_394 * 18.6875f))) * 6.277395f) * _457) * 0.15930176f);
  _481 = exp2(log2(exp2(log2(max(0.0f, (_397 + -0.8359375f)) / (18.851562f - (_397 * 18.6875f))) * 6.277395f) * _457) * 0.15930176f);
  _493 = exp2(log2(exp2(log2(max(0.0f, (_400 + -0.8359375f)) / (18.851562f - (_400 * 18.6875f))) * 6.277395f) * _457) * 0.15930176f);
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _531 = exp2(log2((1.0f / ((_469 * 18.6875f) + 1.0f)) * ((_469 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _532 = exp2(log2((1.0f / ((_481 * 18.6875f) + 1.0f)) * ((_481 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _533 = exp2(log2((1.0f / ((_493 * 18.6875f) + 1.0f)) * ((_493 * 18.851562f) + 0.8359375f)) * 78.84375f);
    } else {
      _531 = 0.0f;
      _532 = 0.0f;
      _533 = 0.0f;
    }
  } else {
    _531 = 0.0f;
    _532 = 0.0f;
    _533 = 0.0f;
  }
  SV_Target.x = _531;
  SV_Target.y = _532;
  SV_Target.z = _533;
  SV_Target.w = _15.w;
  return SV_Target;
}
