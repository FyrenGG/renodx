struct PostProcessOutlineExampleStruct {
  uint _outlineColor;
  float _outlineSize;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

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

struct BindlessParameters_PostProcessOutlineExample {
  PostProcessOutlineExampleStruct BindlessParameters_PostProcessOutlineExample;
};

typedef BindlessParameters_PostProcessOutlineExample BindlessParameters_PostProcessOutlineExample_t;
ConstantBuffer<BindlessParameters_PostProcessOutlineExample_t> BindlessParameters_PostProcessOutlineExample[] : register(b0, space100);

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
  float _35;
  float _36;
  float _37;
  float _62;
  float _63;
  float _64;
  uint2 _66;
  float _182;
  float _183;
  float _184;
  float _198;
  float _403;
  float _404;
  float _405;
  float _498;
  float _499;
  float _500;
  float _554;
  float _555;
  float _556;
  float _575;
  float _576;
  float _577;
  float _607;
  float _608;
  float _609;
  float _623;
  float _624;
  float _625;
  float4 _102;
  float _109;
  float _110;
  int _130;
  int _138;
  float _141;
  float _144;
  float _146;
  float _174;
  uint _185;
  bool _201;
  float _207;
  float _256;
  float _257;
  float _258;
  float _260;
  float _267;
  float _268;
  float _269;
  float _288;
  float _289;
  float _290;
  float _291;
  float _292;
  float _293;
  float _294;
  float _295;
  float _296;
  float _342;
  float _343;
  float _344;
  float _345;
  float _346;
  float _347;
  float _348;
  float _365;
  float _366;
  float _367;
  float _368;
  float _374;
  float _377;
  float _384;
  float _385;
  float _386;
  float _415;
  float _440;
  float _441;
  float _442;
  float _461;
  float _462;
  float _463;
  float _469;
  float _473;
  float _474;
  float _475;
  float _476;
  float _481;
  float _506;
  float _510;
  float _511;
  float _512;
  float _513;
  float _543;
  float _565;
  float _566;
  float _570;
  float _614;
  float _635;
  float _636;
  float _637;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _35 = (pow(_25.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _36 = (pow(_25.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _37 = (pow(_25.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _62 = exp2(log2(max(0.0f, (_35 + -0.8359375f)) / (18.851562f - (_35 * 18.6875f))) * 6.277395f) * 10000.0f;
  _63 = exp2(log2(max(0.0f, (_36 + -0.8359375f)) / (18.851562f - (_36 * 18.6875f))) * 6.277395f) * 10000.0f;
  _64 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.851562f - (_37 * 18.6875f))) * 6.277395f) * 10000.0f;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_66.x, _66.y);
  if (!(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_66.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_66.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255) == 30)) {
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _102 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _109 = (pow(_102.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _110 = (pow(_102.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    if (!(!((((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f) <= (exp2(log2(max(0.0f, (_110 + -0.8359375f)) / (18.851562f - (_110 * 18.6875f))) * 6.277395f) * 10000.0f)))) {
      _130 = WaveReadLaneFirst(_materialIndex);
      _138 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_130 < (uint)170000), _130, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineColor);
      _141 = (float)((uint)((uint)(((uint)((uint)(_138)) >> 16) & 255)));
      _144 = (float)((uint)((uint)(((uint)((uint)(_138)) >> 8) & 255)));
      _146 = (float)((uint)((uint)(_138 & 255)));
      _174 = exp2(log2(max(0.0f, (_109 + -0.8359375f)) / (18.851562f - (_109 * 18.6875f))) * 6.277395f) * 1e+06f;
      _182 = ((select(((_141 * 0.003921569f) < 0.04045f), (_141 * 0.000303527f), exp2(log2((_141 * 0.003717127f) + 0.052132703f) * 2.4f)) * _174) + _62);
      _183 = ((select(((_144 * 0.003921569f) < 0.04045f), (_144 * 0.000303527f), exp2(log2((_144 * 0.003717127f) + 0.052132703f) * 2.4f)) * _174) + _63);
      _184 = ((select(((_146 * 0.003921569f) < 0.04045f), (_146 * 0.000303527f), exp2(log2((_146 * 0.003717127f) + 0.052132703f) * 2.4f)) * _174) + _64);
    } else {
      _182 = _62;
      _183 = _63;
      _184 = _64;
    }
  } else {
    _182 = _62;
    _183 = _63;
    _184 = _64;
  }
  _185 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _198 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _185, 0)))).x) & 127)))) + 0.5f);
  } else {
    _198 = 1.0f;
  }
  _201 = (_localToneMappingParams.w > 0.0f);
  if (_201) {
    _207 = _userImageAdjust.z * _exposure0.x;
    _256 = exp2(log2(max(0.0f, (((_207 * max(0.0f, (((_182 * 1.70505f) - (_183 * 0.62179f)) - (_184 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _257 = exp2(log2(max(0.0f, (((max(0.0f, (((_183 * 1.1408f) - (_182 * 0.13026f)) - (_184 * 0.01055f))) * _207) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _258 = exp2(log2(max(0.0f, (((max(0.0f, (((_182 * -0.024f) - (_183 * 0.12897f)) + (_184 * 1.15297f))) * _207) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _260 = dot(float3(_256, _257, _258), float3(0.212671f, 0.71516f, 0.072169f));
    _267 = ((_256 - _260) * _powerParams.w) + _260;
    _268 = ((_257 - _260) * _powerParams.w) + _260;
    _269 = ((_258 - _260) * _powerParams.w) + _260;
    _288 = min(max(log2(mad(_269, 0.079223745f, mad(_268, 0.0784336f, (_267 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _289 = min(max(log2(mad(_269, 0.07916613f, mad(_268, 0.87846863f, (_267 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _290 = min(max(log2(mad(_269, 0.879143f, mad(_268, 0.0784336f, (_267 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _291 = _288 * 0.060606062f;
    _292 = _289 * 0.060606062f;
    _293 = _290 * 0.060606062f;
    _294 = _291 * _291;
    _295 = _292 * _292;
    _296 = _293 * _293;
    _342 = min(0.0f, (-0.0f - (((_288 * 0.0072181816f) + ((_294 * 0.4298f) + (((_294 * _294) * ((31.96f - (_288 * 2.4327273f)) + (_294 * 15.5f))) - ((_288 * 0.41624245f) * _294)))) + -0.00232f)));
    _343 = min(0.0f, (-0.0f - (((_289 * 0.0072181816f) + ((_295 * 0.4298f) + (((_295 * _295) * ((31.96f - (_289 * 2.4327273f)) + (_295 * 15.5f))) - ((_289 * 0.41624245f) * _295)))) + -0.00232f)));
    _344 = min(0.0f, (-0.0f - (((_290 * 0.0072181816f) + ((_296 * 0.4298f) + (((_296 * _296) * ((31.96f - (_290 * 2.4327273f)) + (_296 * 15.5f))) - ((_290 * 0.41624245f) * _296)))) + -0.00232f)));
    _345 = -0.0f - _342;
    _346 = -0.0f - _343;
    _347 = -0.0f - _344;
    _348 = dot(float3(_345, _346, _347), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _365 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _366 = -0.79999995f / _365;
      _367 = -1.2f / _365;
      _368 = 0.20000005f / _365;
      _374 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _377 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _384 = (_366 + 1.4f) + (_377 * (-0.39999998f - _366));
      _385 = (_367 + 1.6f) + (_377 * (-0.6f - _367));
      _386 = (_368 + 0.9f) + (_377 * (0.5f - _368));
      _403 = (lerp(_385, 1.2f, _374));  // [sem: blended]
      _404 = (lerp(_384, 1.0f, _374));  // [sem: blended]
      _405 = (lerp(_386, 1.4f, _374));  // [sem: blended]
    } else {
      _403 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _404 = 1.0f;  // [sem: blended]
      _405 = 1.4f;  // [sem: blended]
    }
    _415 = 1.0f - _403;
    _440 = ((exp2(log2(((saturate((_342 * _342) * _345) * _415) + _403) * _345) * _404) - _348) * _405) + _348;
    _441 = ((exp2(log2(((saturate((_343 * _343) * _346) * _415) + _403) * _346) * _404) - _348) * _405) + _348;
    _442 = ((exp2(log2(((saturate((_344 * _344) * _347) * _415) + _403) * _347) * _404) - _348) * _405) + _348;
    _461 = saturate(exp2(log2(mad(_442, -0.09902974f, mad(_441, -0.09802088f, (_440 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _462 = saturate(exp2(log2(mad(_442, -0.098961174f, mad(_441, 1.1519032f, (_440 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _463 = saturate(exp2(log2(mad(_442, 1.1510737f, mad(_441, -0.09804345f, (_440 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _469 = 1.0f - abs(_etcParams.w);
      _473 = saturate(_etcParams.w);  // [sem: expr_sat]
      _474 = (_469 * _461) + _473;
      _475 = (_469 * _462) + _473;
      _476 = (_469 * _463) + _473;
      if (_colorGradingParams.w > 0.0f) {
        _481 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _498 = (((max(0.0f, (1.0f - _474)) - _474) * _481) + _474);
        _499 = (((max(0.0f, (1.0f - _475)) - _475) * _481) + _475);
        _500 = (((max(0.0f, (1.0f - _476)) - _476) * _481) + _476);
      } else {
        _498 = _474;
        _499 = _475;
        _500 = _476;
      }
      _506 = _userImageAdjust.y + 1.0f;
      _510 = _userImageAdjust.x + 0.5f;
      _511 = ((_498 + -0.5f) * _506) + _510;
      _512 = ((_499 + -0.5f) * _506) + _510;
      _513 = ((_500 + -0.5f) * _506) + _510;
      _543 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _554 = exp2(log2(saturate(mad(_colorBlind0.z, _513, mad(_colorBlind0.y, _512, (_colorBlind0.x * _511))))) * _543);
      _555 = exp2(log2(saturate(mad(_colorBlind1.z, _513, mad(_colorBlind1.y, _512, (_colorBlind1.x * _511))))) * _543);
      _556 = exp2(log2(saturate(mad(_colorBlind2.z, _513, mad(_colorBlind2.y, _512, (_colorBlind2.x * _511))))) * _543);
    } else {
      _554 = _461;
      _555 = _462;
      _556 = _463;
    }
  } else {
    _554 = _182;
    _555 = _183;
    _556 = _184;
  }
  if (_etcParams.y > 1.0f) {
    _565 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _566 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _570 = saturate(1.0f - (dot(float2(_565, _566), float2(_565, _566)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _575 = (_570 * _554);
    _576 = (_570 * _555);
    _577 = (_570 * _556);
  } else {
    _575 = _554;
    _576 = _555;
    _577 = _556;
  }
  if (_201 && (_etcParams.z > 0.0f)) {
    _607 = select((_575 <= 0.0031308f), (_575 * 12.92f), (((pow(_575, 0.41666666f)) * 1.055f) + -0.055f));
    _608 = select((_576 <= 0.0031308f), (_576 * 12.92f), (((pow(_576, 0.41666666f)) * 1.055f) + -0.055f));
    _609 = select((_577 <= 0.0031308f), (_577 * 12.92f), (((pow(_577, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _607 = _575;
    _608 = _576;
    _609 = _577;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _614 = (float)((uint)((uint)(_185)));
    if (!(_614 < _viewDir.w)) {
      if (!(_614 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _623 = _607;
        _624 = _608;
        _625 = _609;
      } else {
        _623 = 0.0f;
        _624 = 0.0f;
        _625 = 0.0f;
      }
    } else {
      _623 = 0.0f;
      _624 = 0.0f;
      _625 = 0.0f;
    }
  } else {
    _623 = _607;
    _624 = _608;
    _625 = _609;
  }
  _635 = exp2(log2(_623 * 0.0001f) * 0.15930176f);
  _636 = exp2(log2(_624 * 0.0001f) * 0.15930176f);
  _637 = exp2(log2(_625 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_635 * 18.6875f) + 1.0f)) * ((_635 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_636 * 18.6875f) + 1.0f)) * ((_636 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_637 * 18.6875f) + 1.0f)) * ((_637 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _198;
  return SV_Target;
}
