struct PostProcessHousingStruct {
  float _ratio;
  float3 _pivotPosition;
  float4 _rectMinMax;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

struct BindlessParameters_PostProcessHousing {
  PostProcessHousingStruct BindlessParameters_PostProcessHousing;
};

typedef BindlessParameters_PostProcessHousing BindlessParameters_PostProcessHousing_t;
ConstantBuffer<BindlessParameters_PostProcessHousing_t> BindlessParameters_PostProcessHousing[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _26;
  float _35;
  float _36;
  float _37;
  float _38;
  float _66;
  float _67;
  float _68;
  float _69;
  float _71;
  float _72;
  float _74;
  int _75;
  float _85;
  float _86;
  float _87;
  int _88;
  float _99;
  float _100;
  float _101;
  float _102;
  float _134;
  float _135;
  float _136;
  float _150;
  float _355;
  float _356;
  float _357;
  float _450;
  float _451;
  float _452;
  float _506;
  float _507;
  float _508;
  float _524;
  float _525;
  float _526;
  float _556;
  float _557;
  float _558;
  float _572;
  float _573;
  float _574;
  bool _129;
  uint _137;
  bool _153;
  float _159;
  float _208;
  float _209;
  float _210;
  float _212;
  float _219;
  float _220;
  float _221;
  float _240;
  float _241;
  float _242;
  float _243;
  float _244;
  float _245;
  float _246;
  float _247;
  float _248;
  float _294;
  float _295;
  float _296;
  float _297;
  float _298;
  float _299;
  float _300;
  float _317;
  float _318;
  float _319;
  float _320;
  float _326;
  float _329;
  float _336;
  float _337;
  float _338;
  float _367;
  float _392;
  float _393;
  float _394;
  float _413;
  float _414;
  float _415;
  float _421;
  float _425;
  float _426;
  float _427;
  float _428;
  float _433;
  float _458;
  float _462;
  float _463;
  float _464;
  float _465;
  float _495;
  float _514;
  float _515;
  float _519;
  float _563;
  _26 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _35 = (TEXCOORD.x * 2.0f) + -1.0f;
  _36 = TEXCOORD.y * 2.0f;
  _37 = 1.0f - _36;
  _38 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _66 = mad((_invViewProj[3].z), _38, mad((_invViewProj[3].y), _37, ((_invViewProj[3].x) * _35))) + (_invViewProj[3].w);
  _67 = (mad((_invViewProj[0].z), _38, mad((_invViewProj[0].y), _37, ((_invViewProj[0].x) * _35))) + (_invViewProj[0].w)) / _66;
  _68 = (mad((_invViewProj[2].z), _38, mad((_invViewProj[2].y), _37, ((_invViewProj[2].x) * _35))) + (_invViewProj[2].w)) / _66;
  _69 = abs(_67);
  _71 = frac(abs(_69));
  _72 = abs(_68);
  _74 = frac(abs(_72));
  _75 = WaveReadLaneFirst(_materialIndex);
  _85 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._pivotPosition.x);
  _86 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._pivotPosition.y);
  _87 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._pivotPosition.z);
  _88 = WaveReadLaneFirst(_materialIndex);
  _99 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_88 < (uint)170000), _88, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._rectMinMax.x);
  _100 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_88 < (uint)170000), _88, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._rectMinMax.y);
  _101 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_88 < (uint)170000), _88, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._rectMinMax.z);
  _102 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_88 < (uint)170000), _88, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._rectMinMax.w);
  if (((_67 > (_99 + _85)) && (_68 > (_100 + _87))) && (_67 < (_101 + _85))) {
    _129 = (_68 < (_102 + _87)) && ((abs(1.0f - select((_72 >= (-0.0f - _72)), _74, (-0.0f - _74))) < 0.03125f) || (abs(1.0f - select((_69 >= (-0.0f - _69)), _71, (-0.0f - _71))) < 0.03125f));
    _134 = select(_129, 256.0f, _26.x);
    _135 = select(_129, 256.0f, _26.y);
    _136 = select(_129, 256.0f, _26.z);
  } else {
    _134 = _26.x;
    _135 = _26.y;
    _136 = _26.z;
  }
  _137 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _150 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _137, 0)))).x) & 127)))) + 0.5f);
  } else {
    _150 = _postProcessParams.x;
  }
  _153 = (_localToneMappingParams.w > 0.0f);
  if (_153) {
    _159 = _userImageAdjust.z * _exposure0.x;
    _208 = exp2(log2(max(0.0f, (((_159 * max(0.0f, (((_134 * 1.70505f) - (_135 * 0.62179f)) - (_136 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _209 = exp2(log2(max(0.0f, (((max(0.0f, (((_135 * 1.1408f) - (_134 * 0.13026f)) - (_136 * 0.01055f))) * _159) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _210 = exp2(log2(max(0.0f, (((max(0.0f, (((_134 * -0.024f) - (_135 * 0.12897f)) + (_136 * 1.15297f))) * _159) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _212 = dot(float3(_208, _209, _210), float3(0.212671f, 0.71516f, 0.072169f));
    _219 = ((_208 - _212) * _powerParams.w) + _212;
    _220 = ((_209 - _212) * _powerParams.w) + _212;
    _221 = ((_210 - _212) * _powerParams.w) + _212;
    _240 = min(max(log2(mad(_221, 0.079223745f, mad(_220, 0.0784336f, (_219 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _241 = min(max(log2(mad(_221, 0.07916613f, mad(_220, 0.87846863f, (_219 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _242 = min(max(log2(mad(_221, 0.879143f, mad(_220, 0.0784336f, (_219 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _243 = _240 * 0.060606062f;
    _244 = _241 * 0.060606062f;
    _245 = _242 * 0.060606062f;
    _246 = _243 * _243;
    _247 = _244 * _244;
    _248 = _245 * _245;
    _294 = min(0.0f, (-0.0f - (((_240 * 0.0072181816f) + ((_246 * 0.4298f) + (((_246 * _246) * ((31.96f - (_240 * 2.4327273f)) + (_246 * 15.5f))) - ((_240 * 0.41624245f) * _246)))) + -0.00232f)));
    _295 = min(0.0f, (-0.0f - (((_241 * 0.0072181816f) + ((_247 * 0.4298f) + (((_247 * _247) * ((31.96f - (_241 * 2.4327273f)) + (_247 * 15.5f))) - ((_241 * 0.41624245f) * _247)))) + -0.00232f)));
    _296 = min(0.0f, (-0.0f - (((_242 * 0.0072181816f) + ((_248 * 0.4298f) + (((_248 * _248) * ((31.96f - (_242 * 2.4327273f)) + (_248 * 15.5f))) - ((_242 * 0.41624245f) * _248)))) + -0.00232f)));
    _297 = -0.0f - _294;
    _298 = -0.0f - _295;
    _299 = -0.0f - _296;
    _300 = dot(float3(_297, _298, _299), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _317 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _318 = -0.79999995f / _317;
      _319 = -1.2f / _317;
      _320 = 0.20000005f / _317;
      _326 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _329 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _336 = (_318 + 1.4f) + (_329 * (-0.39999998f - _318));
      _337 = (_319 + 1.6f) + (_329 * (-0.6f - _319));
      _338 = (_320 + 0.9f) + (_329 * (0.5f - _320));
      _355 = (lerp(_337, 1.2f, _326));  // [sem: blended]
      _356 = (lerp(_336, 1.0f, _326));  // [sem: blended]
      _357 = (lerp(_338, 1.4f, _326));  // [sem: blended]
    } else {
      _355 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _356 = 1.0f;  // [sem: blended]
      _357 = 1.4f;  // [sem: blended]
    }
    _367 = 1.0f - _355;
    _392 = ((exp2(log2(((saturate((_294 * _294) * _297) * _367) + _355) * _297) * _356) - _300) * _357) + _300;
    _393 = ((exp2(log2(((saturate((_295 * _295) * _298) * _367) + _355) * _298) * _356) - _300) * _357) + _300;
    _394 = ((exp2(log2(((saturate((_296 * _296) * _299) * _367) + _355) * _299) * _356) - _300) * _357) + _300;
    _413 = saturate(exp2(log2(mad(_394, -0.09902974f, mad(_393, -0.09802088f, (_392 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _414 = saturate(exp2(log2(mad(_394, -0.098961174f, mad(_393, 1.1519032f, (_392 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _415 = saturate(exp2(log2(mad(_394, 1.1510737f, mad(_393, -0.09804345f, (_392 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _421 = 1.0f - abs(_etcParams.w);
      _425 = saturate(_etcParams.w);  // [sem: expr_sat]
      _426 = (_421 * _413) + _425;
      _427 = (_421 * _414) + _425;
      _428 = (_421 * _415) + _425;
      if (_colorGradingParams.w > 0.0f) {
        _433 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _450 = (((max(0.0f, (1.0f - _426)) - _426) * _433) + _426);
        _451 = (((max(0.0f, (1.0f - _427)) - _427) * _433) + _427);
        _452 = (((max(0.0f, (1.0f - _428)) - _428) * _433) + _428);
      } else {
        _450 = _426;
        _451 = _427;
        _452 = _428;
      }
      _458 = _userImageAdjust.y + 1.0f;
      _462 = _userImageAdjust.x + 0.5f;
      _463 = ((_450 + -0.5f) * _458) + _462;
      _464 = ((_451 + -0.5f) * _458) + _462;
      _465 = ((_452 + -0.5f) * _458) + _462;
      _495 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _506 = exp2(log2(saturate(mad(_colorBlind0.z, _465, mad(_colorBlind0.y, _464, (_colorBlind0.x * _463))))) * _495);
      _507 = exp2(log2(saturate(mad(_colorBlind1.z, _465, mad(_colorBlind1.y, _464, (_colorBlind1.x * _463))))) * _495);
      _508 = exp2(log2(saturate(mad(_colorBlind2.z, _465, mad(_colorBlind2.y, _464, (_colorBlind2.x * _463))))) * _495);
    } else {
      _506 = _413;
      _507 = _414;
      _508 = _415;
    }
  } else {
    _506 = _134;
    _507 = _135;
    _508 = _136;
  }
  if (_etcParams.y > 1.0f) {
    _514 = abs(_35);
    _515 = abs(_36 + -1.0f);
    _519 = saturate(1.0f - (dot(float2(_514, _515), float2(_514, _515)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _524 = (_519 * _506);
    _525 = (_519 * _507);
    _526 = (_519 * _508);
  } else {
    _524 = _506;
    _525 = _507;
    _526 = _508;
  }
  if (_153 && (_etcParams.z > 0.0f)) {
    _556 = select((_524 <= 0.0031308f), (_524 * 12.92f), (((pow(_524, 0.41666666f)) * 1.055f) + -0.055f));
    _557 = select((_525 <= 0.0031308f), (_525 * 12.92f), (((pow(_525, 0.41666666f)) * 1.055f) + -0.055f));
    _558 = select((_526 <= 0.0031308f), (_526 * 12.92f), (((pow(_526, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _556 = _524;
    _557 = _525;
    _558 = _526;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _563 = (float)((uint)((uint)(_137)));
    if (!(_563 < _viewDir.w)) {
      if (!(_563 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _572 = _556;
        _573 = _557;
        _574 = _558;
      } else {
        _572 = 0.0f;
        _573 = 0.0f;
        _574 = 0.0f;
      }
    } else {
      _572 = 0.0f;
      _573 = 0.0f;
      _574 = 0.0f;
    }
  } else {
    _572 = _556;
    _573 = _557;
    _574 = _558;
  }
  SV_Target.x = _572;
  SV_Target.y = _573;
  SV_Target.z = _574;
  SV_Target.w = _150;
  return SV_Target;
}
