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
  float _239;
  float _240;
  float _241;
  float _309;
  float _365;
  float _366;
  float _367;
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
  float _151;
  float _155;
  float _158;
  float _161;
  float _164;
  float _172;
  float _180;
  float _188;
  float _192;
  float _193;
  float _201;
  float _209;
  float _217;
  float _222;
  float _243;
  float _245;
  float _248;
  float _251;
  float _254;
  float _260;
  float _262;
  float _263;
  float _264;
  float _276;
  float _286;
  float _296;
  float _310;
  float _312;
  float _318;
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
  _151 = (lerp(_143, _126, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _155 = (lerp(_143, _142, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _158 = mad(0.04823f, _155, mad(0.35458f, _151, (_147 * 0.9953167f)));
  _161 = mad(0.01566f, _155, mad(0.90834f, _151, (_147 * 0.12666667f)));
  _164 = mad(0.83777f, _155, mad(0.13383f, _151, (_147 * 0.047333334f)));
  _172 = (((_158 + 0.0245786f) * _158) + -9.0537e-05f) / ((((_158 * 0.983729f) + 0.432951f) * _158) + 0.238081f);
  _180 = (((_161 + 0.0245786f) * _161) + -9.0537e-05f) / ((((_161 * 0.983729f) + 0.432951f) * _161) + 0.238081f);
  _188 = (((_164 + 0.0245786f) * _164) + -9.0537e-05f) / ((((_164 * 0.983729f) + 0.432951f) * _164) + 0.238081f);
  _192 = 1.0f - abs(_etcParams.w);
  _193 = saturate(_etcParams.w);  // [sem: expr_sat]
  _201 = (saturate(saturate(saturate(mad(-0.07367f, _188, mad(-0.53108f, _180, (_172 * 1.60475f)))))) * _192) + _193;
  _209 = (saturate(saturate(saturate(mad(-0.00605f, _188, mad(1.10813f, _180, (_172 * -0.10208f)))))) * _192) + _193;
  _217 = (saturate(saturate(saturate(mad(1.07602f, _188, mad(-0.07276f, _180, (_172 * -0.00327f)))))) * _192) + _193;
  if (_colorGradingParams.w > 0.0f) {
    _222 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _239 = (((max(0.0f, (1.0f - _217)) - _217) * _222) + _217);
    _240 = (((max(0.0f, (1.0f - _209)) - _209) * _222) + _209);
    _241 = (((max(0.0f, (1.0f - _201)) - _201) * _222) + _201);
  } else {
    _239 = _217;
    _240 = _209;
    _241 = _201;
  }
  _243 = _userImageAdjust.y + 1.0f;
  _245 = _userImageAdjust.x + 0.5f;
  _248 = ((_241 + -0.5f) * _243) + _245;
  _251 = ((_240 + -0.5f) * _243) + _245;
  _254 = ((_239 + -0.5f) * _243) + _245;
  _260 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _262 = (TEXCOORD.x * 2.0f) + -1.0f;
  _263 = TEXCOORD.y * 2.0f;
  _264 = 1.0f - _263;
  _276 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _264, ((_projToPrevProj[3].x) * _262)));
  _286 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _264, ((_projToPrevProj[0].x) * _262))) + (_projToPrevProj[0].w)) / _276) - _262;
  _296 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _264, ((_projToPrevProj[1].x) * _262))) + (_projToPrevProj[1].w)) / _276) - _264;
  if (_localToneMappingParams.w > 0.0f) {
    _309 = saturate(1.0f - (sqrt((_296 * _296) + (_286 * _286)) * 2.0f));  // [sem: expr_sat]
  } else {
    _309 = 1.0f;  // [sem: expr_sat]
  }
  _310 = abs(_262);
  _312 = abs(_263 + -1.0f);
  _318 = saturate(1.0f - ((_309 * _postProcessParams.x) * dot(float2(_310, _312), float2(_310, _312))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _365 = (exp2(log2(saturate(mad(_colorBlind0.z, _254, mad(_colorBlind0.y, _251, (_colorBlind0.x * _248))))) * _260) * _318);
      _366 = (exp2(log2(saturate(mad(_colorBlind1.z, _254, mad(_colorBlind1.y, _251, (_colorBlind1.x * _248))))) * _260) * _318);
      _367 = (exp2(log2(saturate(mad(_colorBlind2.z, _254, mad(_colorBlind2.y, _251, (_colorBlind2.x * _248))))) * _260) * _318);
    } else {
      _365 = 0.0f;
      _366 = 0.0f;
      _367 = 0.0f;
    }
  } else {
    _365 = 0.0f;
    _366 = 0.0f;
    _367 = 0.0f;
  }
  SV_Target.x = _365;
  SV_Target.y = _366;
  SV_Target.z = _367;
  SV_Target.w = _17.w;
  return SV_Target;
}
