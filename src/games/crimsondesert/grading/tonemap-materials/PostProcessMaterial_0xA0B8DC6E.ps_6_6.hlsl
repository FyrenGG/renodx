struct PostProcessOutlineStruct {
  float _outlineColorR;
  float _outlineColorG;
  float _outlineColorB;
};


Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

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

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

struct BindlessParameters_PostProcessOutline {
  PostProcessOutlineStruct BindlessParameters_PostProcessOutline;
};

typedef BindlessParameters_PostProcessOutline BindlessParameters_PostProcessOutline_t;
ConstantBuffer<BindlessParameters_PostProcessOutline_t> BindlessParameters_PostProcessOutline[] : register(b0, space100);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  uint2 _29;
  float _77;
  float _78;
  float _79;
  float _93;
  float _298;
  float _299;
  float _300;
  float _393;
  float _394;
  float _395;
  float _449;
  float _450;
  float _451;
  float _470;
  float _471;
  float _472;
  float _502;
  float _503;
  float _504;
  float _518;
  float _519;
  float _520;
  int _49;
  float _57;
  int _58;
  float _66;
  int _67;
  float _75;
  uint _80;
  bool _96;
  float _102;
  float _151;
  float _152;
  float _153;
  float _155;
  float _162;
  float _163;
  float _164;
  float _183;
  float _184;
  float _185;
  float _186;
  float _187;
  float _188;
  float _189;
  float _190;
  float _191;
  float _237;
  float _238;
  float _239;
  float _240;
  float _241;
  float _242;
  float _243;
  float _260;
  float _261;
  float _262;
  float _263;
  float _269;
  float _272;
  float _279;
  float _280;
  float _281;
  float _310;
  float _335;
  float _336;
  float _337;
  float _356;
  float _357;
  float _358;
  float _364;
  float _368;
  float _369;
  float _370;
  float _371;
  float _376;
  float _401;
  float _405;
  float _406;
  float _407;
  float _408;
  float _438;
  float _460;
  float _461;
  float _465;
  float _509;
  float _530;
  float _531;
  float _532;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_29.x, _29.y);
  if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_29.x))))))) + 0.5f) * ((float)((int)((int)(_bufferSizeAndInvSize.x * TEXCOORD.x)))))), ((int)((((float)((int)((int)((float)((int)((int)(_29.y))))))) + 0.5f) * ((float)((int)((int)(_bufferSizeAndInvSize.y * TEXCOORD.y)))))), 0)))).x) & 255) == 30) {
    _49 = WaveReadLaneFirst(_materialIndex);
    _57 = WaveReadLaneFirst(BindlessParameters_PostProcessOutline[((int)((uint)((uint)(select(((uint)_49 < (uint)170000), _49, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutline._outlineColorR);
    _58 = WaveReadLaneFirst(_materialIndex);
    _66 = WaveReadLaneFirst(BindlessParameters_PostProcessOutline[((int)((uint)((uint)(select(((uint)_58 < (uint)170000), _58, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutline._outlineColorB);
    _67 = WaveReadLaneFirst(_materialIndex);
    _75 = WaveReadLaneFirst(BindlessParameters_PostProcessOutline[((int)((uint)((uint)(select(((uint)_67 < (uint)170000), _67, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutline._outlineColorG);
    _77 = _57;
    _78 = _66;
    _79 = _75;
  } else {
    _77 = 0.0f;
    _78 = 0.0f;
    _79 = 0.0f;
  }
  _80 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _93 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _80, 0)))).x) & 127)))) + 0.5f);
  } else {
    _93 = 1.0f;
  }
  _96 = (_localToneMappingParams.w > 0.0f);
  if (_96) {
    _102 = _userImageAdjust.z * _exposure0.x;
    _151 = exp2(log2(max(0.0f, (((_102 * max(0.0f, (((_77 * 1.70505f) - (_78 * 0.62179f)) - (_79 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _152 = exp2(log2(max(0.0f, (((max(0.0f, (((_78 * 1.1408f) - (_77 * 0.13026f)) - (_79 * 0.01055f))) * _102) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _153 = exp2(log2(max(0.0f, (((max(0.0f, (((_77 * -0.024f) - (_78 * 0.12897f)) + (_79 * 1.15297f))) * _102) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _155 = dot(float3(_151, _152, _153), float3(0.212671f, 0.71516f, 0.072169f));
    _162 = ((_151 - _155) * _powerParams.w) + _155;
    _163 = ((_152 - _155) * _powerParams.w) + _155;
    _164 = ((_153 - _155) * _powerParams.w) + _155;
    _183 = min(max(log2(mad(_164, 0.079223745f, mad(_163, 0.0784336f, (_162 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _184 = min(max(log2(mad(_164, 0.07916613f, mad(_163, 0.87846863f, (_162 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _185 = min(max(log2(mad(_164, 0.879143f, mad(_163, 0.0784336f, (_162 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _186 = _183 * 0.060606062f;
    _187 = _184 * 0.060606062f;
    _188 = _185 * 0.060606062f;
    _189 = _186 * _186;
    _190 = _187 * _187;
    _191 = _188 * _188;
    _237 = min(0.0f, (-0.0f - (((_183 * 0.0072181816f) + ((_189 * 0.4298f) + (((_189 * _189) * ((31.96f - (_183 * 2.4327273f)) + (_189 * 15.5f))) - ((_183 * 0.41624245f) * _189)))) + -0.00232f)));
    _238 = min(0.0f, (-0.0f - (((_184 * 0.0072181816f) + ((_190 * 0.4298f) + (((_190 * _190) * ((31.96f - (_184 * 2.4327273f)) + (_190 * 15.5f))) - ((_184 * 0.41624245f) * _190)))) + -0.00232f)));
    _239 = min(0.0f, (-0.0f - (((_185 * 0.0072181816f) + ((_191 * 0.4298f) + (((_191 * _191) * ((31.96f - (_185 * 2.4327273f)) + (_191 * 15.5f))) - ((_185 * 0.41624245f) * _191)))) + -0.00232f)));
    _240 = -0.0f - _237;
    _241 = -0.0f - _238;
    _242 = -0.0f - _239;
    _243 = dot(float3(_240, _241, _242), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _260 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _261 = -0.79999995f / _260;
      _262 = -1.2f / _260;
      _263 = 0.20000005f / _260;
      _269 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _272 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _279 = (_261 + 1.4f) + (_272 * (-0.39999998f - _261));
      _280 = (_262 + 1.6f) + (_272 * (-0.6f - _262));
      _281 = (_263 + 0.9f) + (_272 * (0.5f - _263));
      _298 = (lerp(_280, 1.2f, _269));  // [sem: blended]
      _299 = (lerp(_279, 1.0f, _269));  // [sem: blended]
      _300 = (lerp(_281, 1.4f, _269));  // [sem: blended]
    } else {
      _298 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _299 = 1.0f;  // [sem: blended]
      _300 = 1.4f;  // [sem: blended]
    }
    _310 = 1.0f - _298;
    _335 = ((exp2(log2(((saturate((_237 * _237) * _240) * _310) + _298) * _240) * _299) - _243) * _300) + _243;
    _336 = ((exp2(log2(((saturate((_238 * _238) * _241) * _310) + _298) * _241) * _299) - _243) * _300) + _243;
    _337 = ((exp2(log2(((saturate((_239 * _239) * _242) * _310) + _298) * _242) * _299) - _243) * _300) + _243;
    _356 = saturate(exp2(log2(mad(_337, -0.09902974f, mad(_336, -0.09802088f, (_335 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _357 = saturate(exp2(log2(mad(_337, -0.098961174f, mad(_336, 1.1519032f, (_335 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _358 = saturate(exp2(log2(mad(_337, 1.1510737f, mad(_336, -0.09804345f, (_335 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _364 = 1.0f - abs(_etcParams.w);
      _368 = saturate(_etcParams.w);  // [sem: expr_sat]
      _369 = (_364 * _356) + _368;
      _370 = (_364 * _357) + _368;
      _371 = (_364 * _358) + _368;
      if (_colorGradingParams.w > 0.0f) {
        _376 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _393 = (((max(0.0f, (1.0f - _369)) - _369) * _376) + _369);
        _394 = (((max(0.0f, (1.0f - _370)) - _370) * _376) + _370);
        _395 = (((max(0.0f, (1.0f - _371)) - _371) * _376) + _371);
      } else {
        _393 = _369;
        _394 = _370;
        _395 = _371;
      }
      _401 = _userImageAdjust.y + 1.0f;
      _405 = _userImageAdjust.x + 0.5f;
      _406 = ((_393 + -0.5f) * _401) + _405;
      _407 = ((_394 + -0.5f) * _401) + _405;
      _408 = ((_395 + -0.5f) * _401) + _405;
      _438 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _449 = exp2(log2(saturate(mad(_colorBlind0.z, _408, mad(_colorBlind0.y, _407, (_colorBlind0.x * _406))))) * _438);
      _450 = exp2(log2(saturate(mad(_colorBlind1.z, _408, mad(_colorBlind1.y, _407, (_colorBlind1.x * _406))))) * _438);
      _451 = exp2(log2(saturate(mad(_colorBlind2.z, _408, mad(_colorBlind2.y, _407, (_colorBlind2.x * _406))))) * _438);
    } else {
      _449 = _356;
      _450 = _357;
      _451 = _358;
    }
  } else {
    _449 = _77;
    _450 = _78;
    _451 = _79;
  }
  if (_etcParams.y > 1.0f) {
    _460 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _461 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _465 = saturate(1.0f - (dot(float2(_460, _461), float2(_460, _461)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _470 = (_465 * _449);
    _471 = (_465 * _450);
    _472 = (_465 * _451);
  } else {
    _470 = _449;
    _471 = _450;
    _472 = _451;
  }
  if (_96 && (_etcParams.z > 0.0f)) {
    _502 = select((_470 <= 0.0031308f), (_470 * 12.92f), (((pow(_470, 0.41666666f)) * 1.055f) + -0.055f));
    _503 = select((_471 <= 0.0031308f), (_471 * 12.92f), (((pow(_471, 0.41666666f)) * 1.055f) + -0.055f));
    _504 = select((_472 <= 0.0031308f), (_472 * 12.92f), (((pow(_472, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _502 = _470;
    _503 = _471;
    _504 = _472;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _509 = (float)((uint)((uint)(_80)));
    if (!(_509 < _viewDir.w)) {
      if (!(_509 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _518 = _502;
        _519 = _503;
        _520 = _504;
      } else {
        _518 = 0.0f;
        _519 = 0.0f;
        _520 = 0.0f;
      }
    } else {
      _518 = 0.0f;
      _519 = 0.0f;
      _520 = 0.0f;
    }
  } else {
    _518 = _502;
    _519 = _503;
    _520 = _504;
  }
  _530 = exp2(log2(_518 * 0.0001f) * 0.15930176f);
  _531 = exp2(log2(_519 * 0.0001f) * 0.15930176f);
  _532 = exp2(log2(_520 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_530 * 18.6875f) + 1.0f)) * ((_530 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_531 * 18.6875f) + 1.0f)) * ((_531 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_532 * 18.6875f) + 1.0f)) * ((_532 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _93;
  return SV_Target;
}
