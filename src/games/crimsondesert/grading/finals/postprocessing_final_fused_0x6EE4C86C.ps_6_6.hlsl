Texture3D<float4> __3__36__0__0__g_displayRenderingTransformLUT : register(t155, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

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
  float _230;
  float _231;
  float _232;
  float _315;
  float _373;
  float _374;
  float _375;
  float _50;
  float _51;
  float _55;
  float _60;
  float _64;
  float _69;
  float _73;
  float _79;
  float _91;
  float _139;
  float _140;
  float _141;
  float _143;
  float _162;
  float _163;
  float _164;
  float4 _194;
  float _201;
  float _205;
  float _206;
  float _207;
  float _208;
  float _213;
  float _239;
  float _240;
  float _241;
  float _267;
  float _268;
  float _269;
  float _297;
  float _300;
  float _301;
  float _318;
  float _319;
  float _323;
  float _333;
  float _334;
  float _335;
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
  _91 = _userImageAdjust.z * _exposure0.x;
  _139 = exp2(log2(max(0.0f, (_offsetParams.x + ((max(0.0f, (((_84 * 1.70505f) - (_85 * 0.62179f)) - (_86 * 0.08326f))) * _slopeParams.x) * _91)))) * _powerParams.x);
  _140 = exp2(log2(max(0.0f, (_offsetParams.y + ((_91 * _slopeParams.y) * max(0.0f, (((_85 * 1.1408f) - (_84 * 0.13026f)) - (_86 * 0.01055f))))))) * _powerParams.y);
  _141 = exp2(log2(max(0.0f, (((_91 * _slopeParams.z) * max(0.0f, (((_84 * -0.024f) - (_85 * 0.12897f)) + (_86 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _143 = dot(float3(_139, _140, _141), float3(0.212671f, 0.71516f, 0.072169f));
  _162 = exp2(log2((lerp(_143, _139, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _163 = exp2(log2((lerp(_143, _140, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _164 = exp2(log2((lerp(_143, _141, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
  _194 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_162 * 18.6875f) + 1.0f)) * ((_162 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_163 * 18.6875f) + 1.0f)) * ((_163 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_164 * 18.6875f) + 1.0f)) * ((_164 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
  _201 = 1.0f - abs(_etcParams.w);
  _205 = saturate(_etcParams.w);  // [sem: expr_sat]
  _206 = (_201 * _194.x) + _205;
  _207 = (_201 * _194.y) + _205;
  _208 = (_201 * _194.z) + _205;
  if (_colorGradingParams.w > 0.0f) {
    _213 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _230 = (((max(0.0f, (1.0f - _206)) - _206) * _213) + _206);
    _231 = (((max(0.0f, (1.0f - _207)) - _207) * _213) + _207);
    _232 = (((max(0.0f, (1.0f - _208)) - _208) * _213) + _208);
  } else {
    _230 = _206;
    _231 = _207;
    _232 = _208;
  }
  _239 = (pow(_230, 0.012683313f));
  _240 = (pow(_231, 0.012683313f));
  _241 = (pow(_232, 0.012683313f));
  _267 = (TEXCOORD.x * 2.0f) + -1.0f;
  _268 = TEXCOORD.y * 2.0f;
  _269 = 1.0f - _268;
  _297 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _269, ((_projToPrevProj[3].x) * _267))) + (_projToPrevProj[3].w);
  _300 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _269, ((_projToPrevProj[0].x) * _267))) + (_projToPrevProj[0].w)) / _297) - _267;
  _301 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _269, ((_projToPrevProj[1].x) * _267))) + (_projToPrevProj[1].w)) / _297) - _269;
  if (_localToneMappingParams.w > 0.0f) {
    _315 = saturate(1.0f - (sqrt((_301 * _301) + (_300 * _300)) * 2.0f));  // [sem: expr_sat]
  } else {
    _315 = 1.0f;  // [sem: expr_sat]
  }
  _318 = abs(_267);
  _319 = abs(_268 + -1.0f);
  _323 = saturate(1.0f - ((_315 * _postProcessParams.x) * dot(float2(_318, _319), float2(_318, _319))));  // [sem: expr_sat]
  _333 = exp2(log2(_323 * exp2(log2(max(0.0f, (_239 + -0.8359375f)) / (18.851562f - (_239 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _334 = exp2(log2(_323 * exp2(log2(max(0.0f, (_240 + -0.8359375f)) / (18.851562f - (_240 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _335 = exp2(log2(_323 * exp2(log2(max(0.0f, (_241 + -0.8359375f)) / (18.851562f - (_241 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _373 = exp2(log2((1.0f / ((_333 * 18.6875f) + 1.0f)) * ((_333 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _374 = exp2(log2((1.0f / ((_334 * 18.6875f) + 1.0f)) * ((_334 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _375 = exp2(log2((1.0f / ((_335 * 18.6875f) + 1.0f)) * ((_335 * 18.851562f) + 0.8359375f)) * 78.84375f);
    } else {
      _373 = 0.0f;
      _374 = 0.0f;
      _375 = 0.0f;
    }
  } else {
    _373 = 0.0f;
    _374 = 0.0f;
    _375 = 0.0f;
  }
  SV_Target.x = _373;
  SV_Target.y = _374;
  SV_Target.z = _375;
  SV_Target.w = _16.w;
  return SV_Target;
}
