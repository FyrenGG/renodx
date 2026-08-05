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
  float _184;
  float _185;
  float _186;
  float _244;
  float _327;
  float _328;
  float _329;
  float _49;
  float _50;
  float _52;
  float _53;
  float _55;
  float _68;
  float _70;
  float _78;
  float _90;
  float _108;
  float _124;
  float _140;
  float _141;
  float _145;
  float _146;
  float _152;
  float _157;
  float _162;
  float _167;
  float _189;
  float _192;
  float _195;
  float _197;
  float _198;
  float _199;
  float _211;
  float _221;
  float _231;
  float _245;
  float _247;
  float _253;
  float _265;
  float _277;
  float _289;
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
  _90 = _exposure0.x * _userImageAdjust.z;
  _108 = exp2(_powerParams.x * log2(max(0.0f, (((max(0.0f, (((_84 * -0.62179f) - (_83 * 0.08326f)) + (_85 * 1.70505f))) * _slopeParams.x) * _90) + _offsetParams.x))));
  _124 = exp2(log2(max(0.0f, (((_90 * _slopeParams.y) * max(0.0f, (((_84 * 1.1408f) - (_83 * 0.01055f)) - (_85 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
  _140 = exp2(log2(max(0.0f, (((_90 * _slopeParams.z) * max(0.0f, (((_83 * 1.15297f) - (_84 * 0.12897f)) - (_85 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
  _141 = dot(float3(_108, _124, _140), float3(0.212671f, 0.71516f, 0.072169f));
  _145 = 1.0f - abs(_etcParams.w);
  _146 = saturate(_etcParams.w);  // [sem: expr_sat]
  _152 = ((lerp(_141, _108, _powerParams.w)) * _145) + _146;
  _157 = ((lerp(_141, _124, _powerParams.w)) * _145) + _146;
  _162 = ((lerp(_141, _140, _powerParams.w)) * _145) + _146;
  if (_colorGradingParams.w > 0.0f) {
    _167 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _184 = (((max(0.0f, (1.0f - _162)) - _162) * _167) + _162);
    _185 = (((max(0.0f, (1.0f - _157)) - _157) * _167) + _157);
    _186 = (((max(0.0f, (1.0f - _152)) - _152) * _167) + _152);
  } else {
    _184 = _162;
    _185 = _157;
    _186 = _152;
  }
  _189 = (pow(_186, 0.012683313f));
  _192 = (pow(_185, 0.012683313f));
  _195 = (pow(_184, 0.012683313f));
  _197 = (TEXCOORD.x * 2.0f) + -1.0f;
  _198 = TEXCOORD.y * 2.0f;
  _199 = 1.0f - _198;
  _211 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _199, ((_projToPrevProj[3].x) * _197)));
  _221 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _199, ((_projToPrevProj[0].x) * _197))) + (_projToPrevProj[0].w)) / _211) - _197;
  _231 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _199, ((_projToPrevProj[1].x) * _197))) + (_projToPrevProj[1].w)) / _211) - _199;
  if (_localToneMappingParams.w > 0.0f) {
    _244 = saturate(1.0f - (sqrt((_231 * _231) + (_221 * _221)) * 2.0f));  // [sem: expr_sat]
  } else {
    _244 = 1.0f;  // [sem: expr_sat]
  }
  _245 = abs(_197);
  _247 = abs(_198 + -1.0f);
  _253 = saturate(1.0f - ((_244 * _postProcessParams.x) * dot(float2(_245, _247), float2(_245, _247))));  // [sem: expr_sat]
  _265 = exp2(log2(exp2(log2(max(0.0f, (_189 + -0.8359375f)) / (18.851562f - (_189 * 18.6875f))) * 6.277395f) * _253) * 0.15930176f);
  _277 = exp2(log2(exp2(log2(max(0.0f, (_192 + -0.8359375f)) / (18.851562f - (_192 * 18.6875f))) * 6.277395f) * _253) * 0.15930176f);
  _289 = exp2(log2(exp2(log2(max(0.0f, (_195 + -0.8359375f)) / (18.851562f - (_195 * 18.6875f))) * 6.277395f) * _253) * 0.15930176f);
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _327 = exp2(log2((1.0f / ((_265 * 18.6875f) + 1.0f)) * ((_265 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _328 = exp2(log2((1.0f / ((_277 * 18.6875f) + 1.0f)) * ((_277 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _329 = exp2(log2((1.0f / ((_289 * 18.6875f) + 1.0f)) * ((_289 * 18.851562f) + 0.8359375f)) * 78.84375f);
    } else {
      _327 = 0.0f;
      _328 = 0.0f;
      _329 = 0.0f;
    }
  } else {
    _327 = 0.0f;
    _328 = 0.0f;
    _329 = 0.0f;
  }
  SV_Target.x = _327;
  SV_Target.y = _328;
  SV_Target.z = _329;
  SV_Target.w = _15.w;
  return SV_Target;
}
