struct PostProcessGrayscaleStruct {
  float _ratio;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b16, space35) {
  float4 _time : packoffset(c000.x);
  float4 _timeNoScale : packoffset(c001.x);
  uint4 _frameNumber : packoffset(c002.x);
  float4 _screenSizeAndInvSize : packoffset(c003.x);
  float4 _bufferSizeAndInvSize : packoffset(c004.x);
  float4 _hiZUVScaleAndInvScale : packoffset(c005.x);
  float4 _resolutionScale : packoffset(c006.x);
  float4 _temporalReprojectionParams : packoffset(c007.x);
  float4 _viewPos : packoffset(c008.x);
  float4 _viewDir : packoffset(c009.x);
  column_major float4x4 _viewProj : packoffset(c010.x);
  column_major float4x4 _viewProjNoJitter : packoffset(c014.x);
  column_major float4x4 _viewProjRelative : packoffset(c018.x);
  column_major float4x4 _viewProjRelativeNoJitter : packoffset(c022.x);
  column_major float4x4 _invViewProj : packoffset(c026.x);
  column_major float4x4 _invViewProjRelative : packoffset(c030.x);
  column_major float4x4 _invViewProjRelativeNoJitter : packoffset(c034.x);
  column_major float4x4 _viewProjRelativeOrtho : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  column_major float4x4 _view : packoffset(c062.x);
  column_major float4x4 _viewRelative : packoffset(c066.x);
  column_major float4x4 _viewRelativePrev : packoffset(c070.x);
  column_major float4x4 _proj : packoffset(c074.x);
  column_major float4x4 _projNoJitter : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  column_major float4x4 _viewProjNoJitterPrev : packoffset(c083.x);
  column_major float4x4 _viewProjRelativePrev : packoffset(c087.x);
  column_major float4x4 _viewProjRelativeNoJitterPrev : packoffset(c091.x);
  column_major float4x4 _invViewProjPrev : packoffset(c095.x);
  column_major float4x4 _invViewProjRelativePrev : packoffset(c099.x);
  column_major float4x4 _projToPrevProj : packoffset(c103.x);
  column_major float4x4 _projToPrevProjNoTranslation : packoffset(c107.x);
  column_major float4x4 _viewProjectionTexScale : packoffset(c111.x);
  float4 _temporalAAJitter : packoffset(c115.x);
  float4 _temporalAAJitterParams : packoffset(c116.x);
  float4 _frustumPlanes[6] : packoffset(c117.x);
  float4 _frustumPlanesPrev[6] : packoffset(c123.x);
  float4 _frustumCornerDirs[4] : packoffset(c129.x);
  float4 _screenPercentage : packoffset(c133.x);
  float4 _nearFarProj : packoffset(c134.x);
  float4 _renderingOriginPos : packoffset(c135.x);
  float4 _renderingOriginPosPrev : packoffset(c136.x);
  float4 _lodMaskRenderRate : packoffset(c137.x);
  float4 _terrainNormalParams : packoffset(c138.x);
  int4 _hiZMapInfo : packoffset(c139.x);
  int4 _hiZMapInfoCurrent : packoffset(c140.x);
  float4 _treeParams : packoffset(c141.x);
  uint4 _clusterSize : packoffset(c142.x);
  uint4 _globalLightParams : packoffset(c143.x);
  float4 _bevelParams : packoffset(c144.x);
  float4 _variableRateShadingParams : packoffset(c145.x);
  float4 _cavityParams : packoffset(c146.x);
  float4 _customRenderPassSizeInvSize : packoffset(c147.x);
  uint4 _impostorParams : packoffset(c148.x);
  float4 _clusterDecalSizeAndInvSize : packoffset(c149.x);
  uint4 _globalWindParams : packoffset(c150.x);
  float4 _windFluidVolumeParams : packoffset(c151.x);
  float4 _windFluidTextureParams : packoffset(c152.x);
  float4 _raytracingAccelerationStructureOrigin : packoffset(c153.x);
  float4 _debugBaseColor : packoffset(c154.x);
  float4 _debugNormal : packoffset(c155.x);
  float4 _debugMaterial : packoffset(c156.x);
  float4 _debugMultiplier : packoffset(c157.x);
  uint2 _debugBaseColor16 : packoffset(c158.x);
  uint2 _debugNormal16 : packoffset(c158.z);
  uint2 _debugMaterial16 : packoffset(c159.x);
  uint2 _debugMultiplier16 : packoffset(c159.z);
  float4 _debugCursorWorldPos : packoffset(c160.x);
  uint4 _debugRenderToggle01 : packoffset(c161.x);
  uint4 _debugTreeShapeVariation : packoffset(c162.x);
  float4 _positionBasedDynamicsParameter : packoffset(c163.x);
  float _effectiveMetallicForVelvet : packoffset(c164.x);
  float _debugCharacterSnowRate : packoffset(c164.y);
  uint _systemRandomSeed : packoffset(c164.z);
  uint _skinnedMeshDebugFlag : packoffset(c164.w);
  float4 _viewPosShifted : packoffset(c165.x);
  float4 _viewPosShiftedPrev : packoffset(c166.x);
  float4 _viewTileRelativePos : packoffset(c167.x);
  float4 _viewTileRelativePosPrev : packoffset(c168.x);
  int2 _viewTileIndex : packoffset(c169.x);
  int2 _viewTileIndexPrev : packoffset(c169.z);
  float4 _worldVolume : packoffset(c170.x);
  float3 _diffViewPosAccurate : packoffset(c171.x);
  uint _isPhotosensitiveMode_isAllolwBlood : packoffset(c171.w);
  float _earthRadius : packoffset(c172.x);
  float3 _sceneConstantDummy : packoffset(c172.y);
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

struct BindlessParameters_PostProcessGrayscale {
  PostProcessGrayscaleStruct BindlessParameters_PostProcessGrayscale;
};

typedef BindlessParameters_PostProcessGrayscale BindlessParameters_PostProcessGrayscale_t;
ConstantBuffer<BindlessParameters_PostProcessGrayscale_t> BindlessParameters_PostProcessGrayscale[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _23;
  float _33;
  float _34;
  float _35;
  float _60;
  float _61;
  float _62;
  int _63;
  float _71;
  float _72;
  float _79;
  float _80;
  float _81;
  uint _82;
  float _96;
  float _301;
  float _302;
  float _303;
  float _396;
  float _397;
  float _398;
  float _452;
  float _453;
  float _454;
  float _473;
  float _474;
  float _475;
  float _505;
  float _506;
  float _507;
  float _521;
  float _522;
  float _523;
  bool _99;
  float _105;
  float _154;
  float _155;
  float _156;
  float _158;
  float _165;
  float _166;
  float _167;
  float _186;
  float _187;
  float _188;
  float _189;
  float _190;
  float _191;
  float _192;
  float _193;
  float _194;
  float _240;
  float _241;
  float _242;
  float _243;
  float _244;
  float _245;
  float _246;
  float _263;
  float _264;
  float _265;
  float _266;
  float _272;
  float _275;
  float _282;
  float _283;
  float _284;
  float _313;
  float _338;
  float _339;
  float _340;
  float _359;
  float _360;
  float _361;
  float _367;
  float _371;
  float _372;
  float _373;
  float _374;
  float _379;
  float _404;
  float _408;
  float _409;
  float _410;
  float _411;
  float _441;
  float _463;
  float _464;
  float _468;
  float _512;
  float _533;
  float _534;
  float _535;
  _23 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _33 = (pow(_23.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _34 = (pow(_23.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _35 = (pow(_23.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _60 = exp2(log2(max(0.0f, (_33 + -0.8359375f)) / (18.851562f - (_33 * 18.6875f))) * 6.277395f) * 10000.0f;
  _61 = exp2(log2(max(0.0f, (_34 + -0.8359375f)) / (18.851562f - (_34 * 18.6875f))) * 6.277395f) * 10000.0f;
  _62 = exp2(log2(max(0.0f, (_35 + -0.8359375f)) / (18.851562f - (_35 * 18.6875f))) * 6.277395f) * 10000.0f;
  _63 = WaveReadLaneFirst(_materialIndex);
  _71 = WaveReadLaneFirst(BindlessParameters_PostProcessGrayscale[((int)((uint)((uint)(select(((uint)_63 < (uint)170000), _63, 0))) + (uint)(0)))].BindlessParameters_PostProcessGrayscale._ratio);
  _72 = dot(float3(_60, _61, _62), float3(0.2627f, 0.678f, 0.0593f));
  _79 = ((_72 - _60) * _71) + _60;
  _80 = ((_72 - _61) * _71) + _61;
  _81 = ((_72 - _62) * _71) + _62;
  _82 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _96 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _82, 0)))).x) & 127)))) + 0.5f);
  } else {
    _96 = _postProcessParams.x;
  }
  _99 = (_localToneMappingParams.w > 0.0f);
  if (_99) {
    _105 = _userImageAdjust.z * _exposure0.x;
    _154 = exp2(log2(max(0.0f, (((_105 * max(0.0f, (((_79 * 1.70505f) - (_80 * 0.62179f)) - (_81 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _155 = exp2(log2(max(0.0f, (((max(0.0f, (((_80 * 1.1408f) - (_79 * 0.13026f)) - (_81 * 0.01055f))) * _105) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _156 = exp2(log2(max(0.0f, (((max(0.0f, (((_79 * -0.024f) - (_80 * 0.12897f)) + (_81 * 1.15297f))) * _105) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _158 = dot(float3(_154, _155, _156), float3(0.212671f, 0.71516f, 0.072169f));
    _165 = ((_154 - _158) * _powerParams.w) + _158;
    _166 = ((_155 - _158) * _powerParams.w) + _158;
    _167 = ((_156 - _158) * _powerParams.w) + _158;
    _186 = min(max(log2(mad(_167, 0.079223745f, mad(_166, 0.0784336f, (_165 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _187 = min(max(log2(mad(_167, 0.07916613f, mad(_166, 0.87846863f, (_165 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _188 = min(max(log2(mad(_167, 0.879143f, mad(_166, 0.0784336f, (_165 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _189 = _186 * 0.060606062f;
    _190 = _187 * 0.060606062f;
    _191 = _188 * 0.060606062f;
    _192 = _189 * _189;
    _193 = _190 * _190;
    _194 = _191 * _191;
    _240 = min(0.0f, (-0.0f - (((_186 * 0.0072181816f) + ((_192 * 0.4298f) + (((_192 * _192) * ((31.96f - (_186 * 2.4327273f)) + (_192 * 15.5f))) - ((_186 * 0.41624245f) * _192)))) + -0.00232f)));
    _241 = min(0.0f, (-0.0f - (((_187 * 0.0072181816f) + ((_193 * 0.4298f) + (((_193 * _193) * ((31.96f - (_187 * 2.4327273f)) + (_193 * 15.5f))) - ((_187 * 0.41624245f) * _193)))) + -0.00232f)));
    _242 = min(0.0f, (-0.0f - (((_188 * 0.0072181816f) + ((_194 * 0.4298f) + (((_194 * _194) * ((31.96f - (_188 * 2.4327273f)) + (_194 * 15.5f))) - ((_188 * 0.41624245f) * _194)))) + -0.00232f)));
    _243 = -0.0f - _240;
    _244 = -0.0f - _241;
    _245 = -0.0f - _242;
    _246 = dot(float3(_243, _244, _245), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _263 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _264 = -0.79999995f / _263;
      _265 = -1.2f / _263;
      _266 = 0.20000005f / _263;
      _272 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _275 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _282 = (_264 + 1.4f) + (_275 * (-0.39999998f - _264));
      _283 = (_265 + 1.6f) + (_275 * (-0.6f - _265));
      _284 = (_266 + 0.9f) + (_275 * (0.5f - _266));
      _301 = (lerp(_283, 1.2f, _272));  // [sem: blended]
      _302 = (lerp(_282, 1.0f, _272));  // [sem: blended]
      _303 = (lerp(_284, 1.4f, _272));  // [sem: blended]
    } else {
      _301 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _302 = 1.0f;  // [sem: blended]
      _303 = 1.4f;  // [sem: blended]
    }
    _313 = 1.0f - _301;
    _338 = ((exp2(log2(((saturate((_240 * _240) * _243) * _313) + _301) * _243) * _302) - _246) * _303) + _246;
    _339 = ((exp2(log2(((saturate((_241 * _241) * _244) * _313) + _301) * _244) * _302) - _246) * _303) + _246;
    _340 = ((exp2(log2(((saturate((_242 * _242) * _245) * _313) + _301) * _245) * _302) - _246) * _303) + _246;
    _359 = saturate(exp2(log2(mad(_340, -0.09902974f, mad(_339, -0.09802088f, (_338 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _360 = saturate(exp2(log2(mad(_340, -0.098961174f, mad(_339, 1.1519032f, (_338 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _361 = saturate(exp2(log2(mad(_340, 1.1510737f, mad(_339, -0.09804345f, (_338 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _367 = 1.0f - abs(_etcParams.w);
      _371 = saturate(_etcParams.w);  // [sem: expr_sat]
      _372 = (_367 * _359) + _371;
      _373 = (_367 * _360) + _371;
      _374 = (_367 * _361) + _371;
      if (_colorGradingParams.w > 0.0f) {
        _379 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _396 = (((max(0.0f, (1.0f - _372)) - _372) * _379) + _372);
        _397 = (((max(0.0f, (1.0f - _373)) - _373) * _379) + _373);
        _398 = (((max(0.0f, (1.0f - _374)) - _374) * _379) + _374);
      } else {
        _396 = _372;
        _397 = _373;
        _398 = _374;
      }
      _404 = _userImageAdjust.y + 1.0f;
      _408 = _userImageAdjust.x + 0.5f;
      _409 = ((_396 + -0.5f) * _404) + _408;
      _410 = ((_397 + -0.5f) * _404) + _408;
      _411 = ((_398 + -0.5f) * _404) + _408;
      _441 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _452 = exp2(log2(saturate(mad(_colorBlind0.z, _411, mad(_colorBlind0.y, _410, (_colorBlind0.x * _409))))) * _441);
      _453 = exp2(log2(saturate(mad(_colorBlind1.z, _411, mad(_colorBlind1.y, _410, (_colorBlind1.x * _409))))) * _441);
      _454 = exp2(log2(saturate(mad(_colorBlind2.z, _411, mad(_colorBlind2.y, _410, (_colorBlind2.x * _409))))) * _441);
    } else {
      _452 = _359;
      _453 = _360;
      _454 = _361;
    }
  } else {
    _452 = _79;
    _453 = _80;
    _454 = _81;
  }
  if (_etcParams.y > 1.0f) {
    _463 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _464 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _468 = saturate(1.0f - (dot(float2(_463, _464), float2(_463, _464)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _473 = (_468 * _452);
    _474 = (_468 * _453);
    _475 = (_468 * _454);
  } else {
    _473 = _452;
    _474 = _453;
    _475 = _454;
  }
  if (_99 && (_etcParams.z > 0.0f)) {
    _505 = select((_473 <= 0.0031308f), (_473 * 12.92f), (((pow(_473, 0.41666666f)) * 1.055f) + -0.055f));
    _506 = select((_474 <= 0.0031308f), (_474 * 12.92f), (((pow(_474, 0.41666666f)) * 1.055f) + -0.055f));
    _507 = select((_475 <= 0.0031308f), (_475 * 12.92f), (((pow(_475, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _505 = _473;
    _506 = _474;
    _507 = _475;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _512 = (float)((uint)((uint)(_82)));
    if (!(_512 < _viewDir.w)) {
      if (!(_512 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _521 = _505;
        _522 = _506;
        _523 = _507;
      } else {
        _521 = 0.0f;
        _522 = 0.0f;
        _523 = 0.0f;
      }
    } else {
      _521 = 0.0f;
      _522 = 0.0f;
      _523 = 0.0f;
    }
  } else {
    _521 = _505;
    _522 = _506;
    _523 = _507;
  }
  _533 = exp2(log2(_521 * 0.0001f) * 0.15930176f);
  _534 = exp2(log2(_522 * 0.0001f) * 0.15930176f);
  _535 = exp2(log2(_523 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_533 * 18.6875f) + 1.0f)) * ((_533 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_534 * 18.6875f) + 1.0f)) * ((_534 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_535 * 18.6875f) + 1.0f)) * ((_535 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _96;
  return SV_Target;
}
