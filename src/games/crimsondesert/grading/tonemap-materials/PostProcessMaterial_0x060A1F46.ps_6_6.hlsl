struct PostProcessGhost_CDStruct {
  float _ghostFXRatio;
  uint _ghostNoiseTex;
  float _ghostNoiseIntensity;
  float _ghostFXColorInnerBrightness;
  uint _ghostFXColor1;
  uint _ghostFXColor2;
};

struct BindlessParameters_PostProcessGhost_CD {
  PostProcessGhost_CDStruct BindlessParameters_PostProcessGhost_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t39, space36);

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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
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

typedef BindlessParameters_PostProcessGhost_CD BindlessParameters_PostProcessGhost_CD_t;
ConstantBuffer<BindlessParameters_PostProcessGhost_CD_t> BindlessParameters_PostProcessGhost_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _25;
  float _31;
  float _34;
  float _37;
  float _45;
  float _53;
  float _61;
  float _62;
  float _63;
  float _64;
  int _67;
  float _75;
  float _235;
  float _236;
  float _237;
  float _251;
  float _456;
  float _457;
  float _458;
  float _551;
  float _552;
  float _553;
  float _607;
  float _608;
  float _609;
  float _628;
  float _629;
  float _630;
  float _660;
  float _661;
  float _662;
  float _676;
  float _677;
  float _678;
  float _83;
  int _86;
  int _94;
  int _97;
  float _105;
  int _108;
  float _116;
  float _133;
  float _135;
  float _137;
  int _140;
  float _148;
  float4 _151;
  float _157;
  float _160;
  float _163;
  float _200;
  uint _238;
  bool _254;
  float _260;
  float _279;
  float _295;
  float _311;
  float _312;
  float _316;
  float _319;
  float _322;
  float _329;
  float _336;
  float _343;
  float _344;
  float _345;
  float _346;
  float _347;
  float _348;
  float _349;
  float _365;
  float _381;
  float _397;
  float _398;
  float _399;
  float _400;
  float _401;
  float _418;
  float _419;
  float _420;
  float _421;
  float _424;
  float _427;
  float _431;
  float _435;
  float _439;
  float _459;
  float _471;
  float _483;
  float _495;
  float _502;
  float _509;
  float _516;
  float _522;
  float _523;
  float _525;
  float _527;
  float _529;
  float _534;
  float _555;
  float _557;
  float _560;
  float _563;
  float _566;
  float _572;
  float _614;
  float _617;
  float _623;
  float _665;
  float _682;
  float _686;
  float _690;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _31 = (pow(_25.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _34 = (pow(_25.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _37 = (pow(_25.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _45 = exp2(log2(max(0.0f, (_31 + -0.8359375f)) / (18.851562f - (_31 * 18.6875f))) * 6.277395f);
  _53 = exp2(log2(max(0.0f, (_34 + -0.8359375f)) / (18.851562f - (_34 * 18.6875f))) * 6.277395f);
  _61 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.851562f - (_37 * 18.6875f))) * 6.277395f);
  _62 = _45 * 10000.0f;
  _63 = _53 * 10000.0f;
  _64 = _61 * 10000.0f;
  _67 = WaveReadLaneFirst(_materialIndex);
  _75 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_67 < (uint)170000), _67, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
  if (!(!(_75 >= 0.001f))) {
    _83 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
    _86 = WaveReadLaneFirst(_materialIndex);
    _94 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_86 < (uint)170000), _86, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostNoiseTex);
    _97 = WaveReadLaneFirst(_materialIndex);
    _105 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_97 < (uint)170000), _97, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    _108 = WaveReadLaneFirst(_materialIndex);
    _116 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_108 < (uint)170000), _108, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostNoiseIntensity);
    _133 = (_116 * _105) * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_94 < (uint)65000), _94, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 3.0f) * _83), ((_time.x * 0.3f) + (_83 * TEXCOORD.y)))))).y);
    _135 = (_133 * 0.01f) + TEXCOORD.x;
    _137 = (_133 * 0.05f) + TEXCOORD.y;
    _140 = WaveReadLaneFirst(_materialIndex);
    _148 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_140 < (uint)170000), _140, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _151 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _157 = (pow(_151.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _160 = (pow(_151.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _163 = (pow(_151.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _200 = (_148 * 10000.0f) * saturate(ceil(((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _135) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _137) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f))) + 0.05f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _135)), ((int)(_customRenderPassSizeInvSize.y * _137)), 0)))).x)))));
    _235 = (((exp2(log2(max(0.0f, (_163 + -0.8359375f)) / (18.851562f - (_163 * 18.6875f))) * 6.277395f) - _61) * _200) + _64);
    _236 = (((exp2(log2(max(0.0f, (_160 + -0.8359375f)) / (18.851562f - (_160 * 18.6875f))) * 6.277395f) - _53) * _200) + _63);
    _237 = (((exp2(log2(max(0.0f, (_157 + -0.8359375f)) / (18.851562f - (_157 * 18.6875f))) * 6.277395f) - _45) * _200) + _62);
  } else {
    _235 = _64;
    _236 = _63;
    _237 = _62;
  }
  _238 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _251 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _238, 0)))).x) & 127)))) + 0.5f);
  } else {
    _251 = 1.0f;
  }
  _254 = (_localToneMappingParams.w > 0.0f);
  if (_254) {
    _260 = _exposure0.x * _userImageAdjust.z;
    _279 = exp2(_powerParams.x * log2(max(0.0f, (((_260 * max(0.0f, (((_236 * -0.62179f) - (_235 * 0.08326f)) + (_237 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _295 = exp2(log2(max(0.0f, (((_slopeParams.y * _260) * max(0.0f, (((_236 * 1.1408f) - (_235 * 0.01055f)) - (_237 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _311 = exp2(log2(max(0.0f, (((_slopeParams.z * _260) * max(0.0f, (((_235 * 1.15297f) - (_236 * 0.12897f)) - (_237 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _312 = dot(float3(_279, _295, _311), float3(0.212671f, 0.71516f, 0.072169f));
    _316 = ((_279 - _312) * _powerParams.w) + _312;
    _319 = ((_295 - _312) * _powerParams.w) + _312;
    _322 = ((_311 - _312) * _powerParams.w) + _312;
    _329 = min(max(log2(mad(_322, 0.079223745f, mad(_319, 0.0784336f, (_316 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _336 = min(max(log2(mad(_322, 0.07916613f, mad(_319, 0.87846863f, (_316 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _343 = min(max(log2(mad(_322, 0.879143f, mad(_319, 0.0784336f, (_316 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _344 = _329 * 0.060606062f;
    _345 = _336 * 0.060606062f;
    _346 = _343 * 0.060606062f;
    _347 = _344 * _344;
    _348 = _345 * _345;
    _349 = _346 * _346;
    _365 = min(0.0f, (-0.0f - (((_329 * 0.0072181816f) + ((_347 * 0.4298f) + (((_347 * _347) * ((31.96f - (_329 * 2.4327273f)) + (_347 * 15.5f))) - ((_329 * 0.41624245f) * _347)))) + -0.00232f)));
    _381 = min(0.0f, (-0.0f - (((_336 * 0.0072181816f) + ((_348 * 0.4298f) + (((_348 * _348) * ((31.96f - (_336 * 2.4327273f)) + (_348 * 15.5f))) - ((_336 * 0.41624245f) * _348)))) + -0.00232f)));
    _397 = min(0.0f, (-0.0f - (((_343 * 0.0072181816f) + ((_349 * 0.4298f) + (((_349 * _349) * ((31.96f - (_343 * 2.4327273f)) + (_349 * 15.5f))) - ((_343 * 0.41624245f) * _349)))) + -0.00232f)));
    _398 = -0.0f - _365;
    _399 = -0.0f - _381;
    _400 = -0.0f - _397;
    _401 = dot(float3(_398, _399, _400), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _418 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _419 = -0.79999995f / _418;
      _420 = -1.2f / _418;
      _421 = 0.20000005f / _418;
      _424 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _427 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _431 = (_419 + 1.4f) + (_427 * (-0.39999998f - _419));
      _435 = (_420 + 1.6f) + (_427 * (-0.6f - _420));
      _439 = (_421 + 0.9f) + (_427 * (0.5f - _421));
      _456 = (lerp(_439, 1.4f, _424));  // [sem: blended]
      _457 = (lerp(_431, 1.0f, _424));  // [sem: blended]
      _458 = (lerp(_435, 1.2f, _424));  // [sem: blended]
    } else {
      _456 = 1.4f;  // [sem: blended]
      _457 = 1.0f;  // [sem: blended]
      _458 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _459 = 1.0f - _458;
    _471 = ((exp2(log2(((saturate((_365 * _365) * _398) * _459) + _458) * _398) * _457) - _401) * _456) + _401;
    _483 = ((exp2(log2(((saturate((_381 * _381) * _399) * _459) + _458) * _399) * _457) - _401) * _456) + _401;
    _495 = ((exp2(log2(((saturate((_397 * _397) * _400) * _459) + _458) * _400) * _457) - _401) * _456) + _401;
    _502 = saturate(exp2(log2(mad(_495, -0.09902974f, mad(_483, -0.09802088f, (_471 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _509 = saturate(exp2(log2(mad(_495, -0.098961174f, mad(_483, 1.1519032f, (_471 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _516 = saturate(exp2(log2(mad(_495, 1.1510737f, mad(_483, -0.09804345f, (_471 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _522 = 1.0f - abs(_etcParams.w);
      _523 = saturate(_etcParams.w);  // [sem: expr_sat]
      _525 = (_522 * _502) + _523;
      _527 = (_522 * _509) + _523;
      _529 = (_522 * _516) + _523;
      if (_colorGradingParams.w > 0.0f) {
        _534 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _551 = (((max(0.0f, (1.0f - _525)) - _525) * _534) + _525);
        _552 = (((max(0.0f, (1.0f - _527)) - _527) * _534) + _527);
        _553 = (((max(0.0f, (1.0f - _529)) - _529) * _534) + _529);
      } else {
        _551 = _525;
        _552 = _527;
        _553 = _529;
      }
      _555 = _userImageAdjust.y + 1.0f;
      _557 = _userImageAdjust.x + 0.5f;
      _560 = ((_551 + -0.5f) * _555) + _557;
      _563 = ((_552 + -0.5f) * _555) + _557;
      _566 = ((_553 + -0.5f) * _555) + _557;
      _572 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _607 = exp2(log2(saturate(mad(_colorBlind0.z, _566, mad(_colorBlind0.y, _563, (_colorBlind0.x * _560))))) * _572);
      _608 = exp2(log2(saturate(mad(_colorBlind1.z, _566, mad(_colorBlind1.y, _563, (_colorBlind1.x * _560))))) * _572);
      _609 = exp2(log2(saturate(mad(_colorBlind2.z, _566, mad(_colorBlind2.y, _563, (_colorBlind2.x * _560))))) * _572);
    } else {
      _607 = _502;
      _608 = _509;
      _609 = _516;
    }
  } else {
    _607 = _237;
    _608 = _236;
    _609 = _235;
  }
  if (_etcParams.y > 1.0f) {
    _614 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _617 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _623 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_614, _617), float2(_614, _617))));  // [sem: expr_sat]
    _628 = (_623 * _607);
    _629 = (_623 * _608);
    _630 = (_623 * _609);
  } else {
    _628 = _607;
    _629 = _608;
    _630 = _609;
  }
  if (_254 && (_etcParams.z > 0.0f)) {
    _660 = select((_628 <= 0.0031308f), (_628 * 12.92f), (((pow(_628, 0.41666666f)) * 1.055f) + -0.055f));
    _661 = select((_629 <= 0.0031308f), (_629 * 12.92f), (((pow(_629, 0.41666666f)) * 1.055f) + -0.055f));
    _662 = select((_630 <= 0.0031308f), (_630 * 12.92f), (((pow(_630, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _660 = _628;
    _661 = _629;
    _662 = _630;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _665 = (float)((uint)((uint)(_238)));
    if (!(_665 < _viewDir.w)) {
      if (!(!(_665 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _676 = 0.0f;
        _677 = 0.0f;
        _678 = 0.0f;
      } else {
        _676 = _660;
        _677 = _661;
        _678 = _662;
      }
    } else {
      _676 = 0.0f;
      _677 = 0.0f;
      _678 = 0.0f;
    }
  } else {
    _676 = _660;
    _677 = _661;
    _678 = _662;
  }
  _682 = exp2(log2(_676 * 0.0001f) * 0.15930176f);
  _686 = exp2(log2(_677 * 0.0001f) * 0.15930176f);
  _690 = exp2(log2(_678 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_682 * 18.6875f) + 1.0f)) * ((_682 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_686 * 18.6875f) + 1.0f)) * ((_686 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_690 * 18.6875f) + 1.0f)) * ((_690 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _251;
  return SV_Target;
}
