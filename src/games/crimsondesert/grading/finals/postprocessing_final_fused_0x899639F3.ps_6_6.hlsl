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
  float _198;
  float _199;
  float _200;
  float _268;
  float _324;
  float _325;
  float _326;
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
  float _157;
  float _158;
  float _164;
  float _170;
  float _176;
  float _181;
  float _202;
  float _204;
  float _207;
  float _210;
  float _213;
  float _219;
  float _221;
  float _222;
  float _223;
  float _235;
  float _245;
  float _255;
  float _269;
  float _271;
  float _277;
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
  _157 = 1.0f - abs(_etcParams.w);
  _158 = saturate(_etcParams.w);  // [sem: expr_sat]
  _164 = (saturate(saturate(_147 / (_147 + 1.0f))) * _157) + _158;
  _170 = (saturate(saturate(_150 / (_150 + 1.0f))) * _157) + _158;
  _176 = (saturate(saturate(_153 / (_153 + 1.0f))) * _157) + _158;
  if (_colorGradingParams.w > 0.0f) {
    _181 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _198 = (((max(0.0f, (1.0f - _176)) - _176) * _181) + _176);
    _199 = (((max(0.0f, (1.0f - _170)) - _170) * _181) + _170);
    _200 = (((max(0.0f, (1.0f - _164)) - _164) * _181) + _164);
  } else {
    _198 = _176;
    _199 = _170;
    _200 = _164;
  }
  _202 = _userImageAdjust.y + 1.0f;
  _204 = _userImageAdjust.x + 0.5f;
  _207 = ((_200 + -0.5f) * _202) + _204;
  _210 = ((_199 + -0.5f) * _202) + _204;
  _213 = ((_198 + -0.5f) * _202) + _204;
  _219 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _221 = (TEXCOORD.x * 2.0f) + -1.0f;
  _222 = TEXCOORD.y * 2.0f;
  _223 = 1.0f - _222;
  _235 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _223, ((_projToPrevProj[3].x) * _221)));
  _245 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _223, ((_projToPrevProj[0].x) * _221))) + (_projToPrevProj[0].w)) / _235) - _221;
  _255 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _223, ((_projToPrevProj[1].x) * _221))) + (_projToPrevProj[1].w)) / _235) - _223;
  if (_localToneMappingParams.w > 0.0f) {
    _268 = saturate(1.0f - (sqrt((_255 * _255) + (_245 * _245)) * 2.0f));  // [sem: expr_sat]
  } else {
    _268 = 1.0f;  // [sem: expr_sat]
  }
  _269 = abs(_221);
  _271 = abs(_222 + -1.0f);
  _277 = saturate(1.0f - ((_268 * _postProcessParams.x) * dot(float2(_269, _271), float2(_269, _271))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _324 = (exp2(log2(saturate(mad(_colorBlind0.z, _213, mad(_colorBlind0.y, _210, (_colorBlind0.x * _207))))) * _219) * _277);
      _325 = (exp2(log2(saturate(mad(_colorBlind1.z, _213, mad(_colorBlind1.y, _210, (_colorBlind1.x * _207))))) * _219) * _277);
      _326 = (exp2(log2(saturate(mad(_colorBlind2.z, _213, mad(_colorBlind2.y, _210, (_colorBlind2.x * _207))))) * _219) * _277);
    } else {
      _324 = 0.0f;
      _325 = 0.0f;
      _326 = 0.0f;
    }
  } else {
    _324 = 0.0f;
    _325 = 0.0f;
    _326 = 0.0f;
  }
  SV_Target.x = _324;
  SV_Target.y = _325;
  SV_Target.z = _326;
  SV_Target.w = _17.w;
  return SV_Target;
}
