struct PostProcessActionStruct {
  float _contrast;
  float3 _saturation;
  float _gaussianBlurIntensity;
  float2 _gaussianBlurPosition;
  float _gaussianBlurClampInnerRadius;
  float _gaussianBlurClampHardness;
  float2 _radialBlurPosition;
  float _radialBlurIntensity;
  float _radialBlurClampInnerRadius;
  float _radialBlurClampHardness;
  float _borderRatio;
  float _borderWidth;
  float _borderSmoothness;
  float _borderEdgeNoiseRatio;
  float2 _borderEdgeNoiseOffset;
  float2 _borderEdgeNoiseTile;
  uint _borderColor;
  uint _borderEdgeNoiseTexture;
  float _borderFlickerSpeed;
  float _borderFlickerIntensity;
  float2 _borderFlickerOpacityMinMax;
};

struct BindlessParameters_PostProcessAction {
  PostProcessActionStruct BindlessParameters_PostProcessAction;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

typedef BindlessParameters_PostProcessAction BindlessParameters_PostProcessAction_t;
ConstantBuffer<BindlessParameters_PostProcessAction_t> BindlessParameters_PostProcessAction[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const int _global_0[1];

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _25;
  float _31;
  float _34;
  float _37;
  float _46;
  float _55;
  float _64;
  float _68;
  int _71;
  float _79;
  int _82;
  float _90;
  int _93;
  float _101;
  bool _102;
  bool _103;
  float _150;
  float _151;
  float _152;
  float _153;
  float _205;
  float _206;
  float _207;
  int _287;
  float _288;
  float _289;
  float _290;
  float _291;
  float _292;
  float _293;
  float _404;
  float _405;
  float _406;
  float _542;
  float _543;
  float _544;
  float _558;
  float _763;
  float _764;
  float _765;
  float _858;
  float _859;
  float _860;
  float _914;
  float _915;
  float _916;
  float _935;
  float _936;
  float _937;
  float _967;
  float _968;
  float _969;
  float _983;
  float _984;
  float _985;
  float4 _108;
  float _115;
  float _118;
  float _121;
  int _157;
  float _165;
  int _168;
  float _176;
  float _180;
  float _182;
  float _183;
  float _194;
  int _210;
  float _218;
  int _223;
  float _231;
  float _235;
  float _239;
  float _242;
  float4 _245;
  float _251;
  float _254;
  float _257;
  float _258;
  float _297;
  float _301;
  float4 _304;
  float _310;
  float _313;
  float _316;
  float _317;
  float _327;
  float _337;
  float _347;
  int _348;
  float _352;
  float _353;
  float _354;
  int _357;
  float _365;
  int _368;
  float _376;
  float _378;
  float _379;
  float _390;
  float _392;
  int _409;
  float _417;
  float _421;
  float _425;
  float _427;
  float _429;
  float _431;
  float _432;
  int _435;
  float _443;
  int _446;
  float _454;
  float _455;
  float _463;
  float _470;
  float _477;
  int _481;
  int _489;
  float _492;
  float _495;
  float _497;
  float _501;
  uint _545;
  bool _561;
  float _567;
  float _586;
  float _602;
  float _618;
  float _619;
  float _623;
  float _626;
  float _629;
  float _636;
  float _643;
  float _650;
  float _651;
  float _652;
  float _653;
  float _654;
  float _655;
  float _656;
  float _672;
  float _688;
  float _704;
  float _705;
  float _706;
  float _707;
  float _708;
  float _725;
  float _726;
  float _727;
  float _728;
  float _731;
  float _734;
  float _738;
  float _742;
  float _746;
  float _766;
  float _778;
  float _790;
  float _802;
  float _809;
  float _816;
  float _823;
  float _829;
  float _830;
  float _832;
  float _834;
  float _836;
  float _841;
  float _862;
  float _864;
  float _867;
  float _870;
  float _873;
  float _879;
  float _921;
  float _924;
  float _930;
  float _972;
  float _989;
  float _993;
  float _997;
  int __loop_jump_target = -1;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _31 = (pow(_25.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _34 = (pow(_25.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _37 = (pow(_25.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _46 = exp2(log2(max(0.0f, (_31 + -0.8359375f)) / (18.851562f - (_31 * 18.6875f))) * 6.277395f) * 10000.0f;
  _55 = exp2(log2(max(0.0f, (_34 + -0.8359375f)) / (18.851562f - (_34 * 18.6875f))) * 6.277395f) * 10000.0f;
  _64 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.851562f - (_37 * 18.6875f))) * 6.277395f) * 10000.0f;
  _68 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _71 = WaveReadLaneFirst(_materialIndex);
  _79 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_71 < (uint)170000), _71, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurIntensity);
  _82 = WaveReadLaneFirst(_materialIndex);
  _90 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_82 < (uint)170000), _82, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurClampInnerRadius);
  _93 = WaveReadLaneFirst(_materialIndex);
  _101 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_93 < (uint)170000), _93, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderRatio);
  _102 = (_79 > 0.0f);
  _103 = (_101 > 0.0f);
  if (_102 || _103) {
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _108 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _115 = (pow(_108.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _118 = (pow(_108.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _121 = (pow(_108.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _150 = _108.w;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _151 = (exp2(log2(max(0.0f, (_121 + -0.8359375f)) / (18.851562f - (_121 * 18.6875f))) * 6.277395f) * 10000.0f);
    _152 = (exp2(log2(max(0.0f, (_118 + -0.8359375f)) / (18.851562f - (_118 * 18.6875f))) * 6.277395f) * 10000.0f);
    _153 = (exp2(log2(max(0.0f, (_115 + -0.8359375f)) / (18.851562f - (_115 * 18.6875f))) * 6.277395f) * 10000.0f);
  } else {
    _150 = 0.0f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _151 = 0.0f;
    _152 = 0.0f;
    _153 = 0.0f;
  }
  if (_102) {
    _157 = WaveReadLaneFirst(_materialIndex);
    _165 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_157 < (uint)170000), _157, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurClampHardness);
    _168 = WaveReadLaneFirst(_materialIndex);
    _176 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_168 < (uint)170000), _168, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurPosition.x);
    _180 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_168 < (uint)170000), _168, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurPosition.y);
    _182 = (TEXCOORD.x - _176) * _68;
    _183 = TEXCOORD.y - _180;
    // [sem: expr_sat]
    _194 = saturate((1.0f - (sqrt(dot(float2(_182, _183), float2(_182, _183))) * (1.0f / max(1e-05f, _90)))) * (1.0f / max((1.0f - _165), 1e-05f)));
    _205 = ((_194 * (_64 - _151)) + _151);
    _206 = ((_194 * (_55 - _152)) + _152);
    _207 = ((_194 * (_46 - _153)) + _153);
  } else {
    _205 = _64;
    _206 = _55;
    _207 = _46;
  }
  _210 = WaveReadLaneFirst(_materialIndex);
  _218 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_210 < (uint)170000), _210, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurIntensity);
  if (_218 > 0.0f) {
    _223 = WaveReadLaneFirst(_materialIndex);
    _231 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_223 < (uint)170000), _223, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurPosition.x);
    _235 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_223 < (uint)170000), _223, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurPosition.y);
    _239 = (_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
    _242 = (_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.y;
    _245 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_239, _242));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _251 = (pow(_245.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _254 = (pow(_245.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _257 = (pow(_245.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _258 = 32.0f / _218;
    _287 = 0;
    _288 = 1.0f;
    _289 = (exp2(log2(max(0.0f, (_257 + -0.8359375f)) / (18.851562f - (_257 * 18.6875f))) * 6.277395f) * 10000.0f);
    _290 = (exp2(log2(max(0.0f, (_254 + -0.8359375f)) / (18.851562f - (_254 * 18.6875f))) * 6.277395f) * 10000.0f);
    _291 = (exp2(log2(max(0.0f, (_251 + -0.8359375f)) / (18.851562f - (_251 * 18.6875f))) * 6.277395f) * 10000.0f);
    _292 = _242;
    _293 = _239;
    while(true) {
      _297 = (((_231 - _239) / _258) * 0.1f) + _293;
      _301 = (((_235 - _242) / _258) * 0.1f) + _292;
      _304 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_297, _301));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _310 = (pow(_304.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _313 = (pow(_304.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _316 = (pow(_304.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _317 = _288 * 9000.0f;
      _327 = (exp2(log2(max(0.0f, (_310 + -0.8359375f)) / (18.851562f - (_310 * 18.6875f))) * 6.277395f) * _317) + _291;
      _337 = (exp2(log2(max(0.0f, (_313 + -0.8359375f)) / (18.851562f - (_313 * 18.6875f))) * 6.277395f) * _317) + _290;
      _347 = (exp2(log2(max(0.0f, (_316 + -0.8359375f)) / (18.851562f - (_316 * 18.6875f))) * 6.277395f) * _317) + _289;
      _348 = (int)(_287) + (int)(1);
      if (!(_348 == 10)) {
        _392 = _288 * 0.99f;
        _287 = _348;
        _288 = _392;
        _289 = _347;
        _290 = _337;
        _291 = _327;
        _292 = _301;
        _293 = _297;
        continue;
      }
      while(true) {
        _352 = _327 * 0.1f;
        _353 = _337 * 0.1f;
        _354 = _347 * 0.1f;
        _357 = WaveReadLaneFirst(_materialIndex);
        _365 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_357 < (uint)170000), _357, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurClampInnerRadius);
        _368 = WaveReadLaneFirst(_materialIndex);
        _376 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_368 < (uint)170000), _368, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurClampHardness);
        _378 = (TEXCOORD.x - _231) * _68;
        _379 = TEXCOORD.y - _235;
        // [sem: expr_sat]
        _390 = saturate((1.0f - (sqrt(dot(float2(_378, _379), float2(_378, _379))) * (1.0f / max(1e-05f, _365)))) * (1.0f / max((1.0f - _376), 1e-05f)));
        if (!((_global_0[0]) == 0)) {
          continue;
        }
        _404 = ((_390 * (_205 - _354)) + _354);
        _405 = ((_390 * (_206 - _353)) + _353);
        _406 = ((_390 * (_207 - _352)) + _352);
        break;
      }
      break;
    }
  } else {
    _404 = _205;
    _405 = _206;
    _406 = _207;
  }
  _409 = WaveReadLaneFirst(_materialIndex);
  _417 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_409 < (uint)170000), _409, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._saturation.x);
  _421 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_409 < (uint)170000), _409, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._saturation.y);
  _425 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_409 < (uint)170000), _409, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._saturation.z);
  _427 = (1.0f - _417) * 0.3086f;
  _429 = (1.0f - _421) * 0.6094f;
  _431 = (1.0f - _425) * 0.082f;
  _432 = _427 * _406;
  _435 = WaveReadLaneFirst(_materialIndex);
  _443 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_435 < (uint)170000), _435, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._contrast);
  _446 = WaveReadLaneFirst(_materialIndex);
  _454 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_446 < (uint)170000), _446, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._contrast);
  _455 = max(_454, 0.0f);
  _463 = max(0.0f, (((mad(_404, _431, mad(_405, _429, ((_427 + _417) * _406))) + -0.5f) * _455) + 0.5f));
  _470 = max(0.0f, (((mad(_404, _431, mad(_405, (_429 + _421), _432)) + -0.5f) * _455) + 0.5f));
  _477 = max(0.0f, (((mad(_404, (_431 + _425), mad(_405, _429, _432)) + -0.5f) * _455) + 0.5f));
  if (_103) {
    _481 = WaveReadLaneFirst(_materialIndex);
    _489 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_481 < (uint)170000), _481, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderColor);
    _492 = (float)((uint)((uint)(((uint)((uint)(_489)) >> 16) & 255)));
    _495 = (float)((uint)((uint)(((uint)((uint)(_489)) >> 8) & 255)));
    _497 = (float)((uint)((uint)(_489 & 255)));
    _501 = 1.0f / max(0.001f, _exposure0.x);
    _542 = ((((select(((_497 * 0.003921569f) < 0.04045f), (_497 * 0.000303527f), exp2(log2((_497 * 0.003717127f) + 0.052132703f) * 2.4f)) * _501) - _477) * _150) + _477);
    _543 = ((((select(((_495 * 0.003921569f) < 0.04045f), (_495 * 0.000303527f), exp2(log2((_495 * 0.003717127f) + 0.052132703f) * 2.4f)) * _501) - _470) * _150) + _470);
    _544 = ((((select(((_492 * 0.003921569f) < 0.04045f), (_492 * 0.000303527f), exp2(log2((_492 * 0.003717127f) + 0.052132703f) * 2.4f)) * _501) - _463) * _150) + _463);
  } else {
    _542 = _477;
    _543 = _470;
    _544 = _463;
  }
  _545 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _558 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _545, 0)))).x) & 127)))) + 0.5f);
  } else {
    _558 = 1.0f;
  }
  _561 = (_localToneMappingParams.w > 0.0f);
  if (_561) {
    _567 = _exposure0.x * _userImageAdjust.z;
    _586 = exp2(_powerParams.x * log2(max(0.0f, (((_567 * max(0.0f, (((_543 * -0.62179f) - (_542 * 0.08326f)) + (_544 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _602 = exp2(log2(max(0.0f, (((_slopeParams.y * _567) * max(0.0f, (((_543 * 1.1408f) - (_542 * 0.01055f)) - (_544 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _618 = exp2(log2(max(0.0f, (((_slopeParams.z * _567) * max(0.0f, (((_542 * 1.15297f) - (_543 * 0.12897f)) - (_544 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _619 = dot(float3(_586, _602, _618), float3(0.212671f, 0.71516f, 0.072169f));
    _623 = ((_586 - _619) * _powerParams.w) + _619;
    _626 = ((_602 - _619) * _powerParams.w) + _619;
    _629 = ((_618 - _619) * _powerParams.w) + _619;
    _636 = min(max(log2(mad(_629, 0.079223745f, mad(_626, 0.0784336f, (_623 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _643 = min(max(log2(mad(_629, 0.07916613f, mad(_626, 0.87846863f, (_623 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _650 = min(max(log2(mad(_629, 0.879143f, mad(_626, 0.0784336f, (_623 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _651 = _636 * 0.060606062f;
    _652 = _643 * 0.060606062f;
    _653 = _650 * 0.060606062f;
    _654 = _651 * _651;
    _655 = _652 * _652;
    _656 = _653 * _653;
    _672 = min(0.0f, (-0.0f - (((_636 * 0.0072181816f) + ((_654 * 0.4298f) + (((_654 * _654) * ((31.96f - (_636 * 2.4327273f)) + (_654 * 15.5f))) - ((_636 * 0.41624245f) * _654)))) + -0.00232f)));
    _688 = min(0.0f, (-0.0f - (((_643 * 0.0072181816f) + ((_655 * 0.4298f) + (((_655 * _655) * ((31.96f - (_643 * 2.4327273f)) + (_655 * 15.5f))) - ((_643 * 0.41624245f) * _655)))) + -0.00232f)));
    _704 = min(0.0f, (-0.0f - (((_650 * 0.0072181816f) + ((_656 * 0.4298f) + (((_656 * _656) * ((31.96f - (_650 * 2.4327273f)) + (_656 * 15.5f))) - ((_650 * 0.41624245f) * _656)))) + -0.00232f)));
    _705 = -0.0f - _672;
    _706 = -0.0f - _688;
    _707 = -0.0f - _704;
    _708 = dot(float3(_705, _706, _707), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _725 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _726 = -0.79999995f / _725;
      _727 = -1.2f / _725;
      _728 = 0.20000005f / _725;
      _731 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _734 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _738 = (_726 + 1.4f) + (_734 * (-0.39999998f - _726));
      _742 = (_727 + 1.6f) + (_734 * (-0.6f - _727));
      _746 = (_728 + 0.9f) + (_734 * (0.5f - _728));
      _763 = (lerp(_742, 1.2f, _731));  // [sem: blended]
      _764 = (lerp(_738, 1.0f, _731));  // [sem: blended]
      _765 = (lerp(_746, 1.4f, _731));  // [sem: blended]
    } else {
      _763 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _764 = 1.0f;  // [sem: blended]
      _765 = 1.4f;  // [sem: blended]
    }
    _766 = 1.0f - _763;
    _778 = ((exp2(log2(((saturate((_672 * _672) * _705) * _766) + _763) * _705) * _764) - _708) * _765) + _708;
    _790 = ((exp2(log2(((saturate((_688 * _688) * _706) * _766) + _763) * _706) * _764) - _708) * _765) + _708;
    _802 = ((exp2(log2(((saturate((_704 * _704) * _707) * _766) + _763) * _707) * _764) - _708) * _765) + _708;
    _809 = saturate(exp2(log2(mad(_802, -0.09902974f, mad(_790, -0.09802088f, (_778 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _816 = saturate(exp2(log2(mad(_802, -0.098961174f, mad(_790, 1.1519032f, (_778 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _823 = saturate(exp2(log2(mad(_802, 1.1510737f, mad(_790, -0.09804345f, (_778 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _829 = 1.0f - abs(_etcParams.w);
      _830 = saturate(_etcParams.w);  // [sem: expr_sat]
      _832 = (_829 * _809) + _830;
      _834 = (_829 * _816) + _830;
      _836 = (_829 * _823) + _830;
      if (_colorGradingParams.w > 0.0f) {
        _841 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _858 = (((max(0.0f, (1.0f - _832)) - _832) * _841) + _832);
        _859 = (((max(0.0f, (1.0f - _834)) - _834) * _841) + _834);
        _860 = (((max(0.0f, (1.0f - _836)) - _836) * _841) + _836);
      } else {
        _858 = _832;
        _859 = _834;
        _860 = _836;
      }
      _862 = _userImageAdjust.y + 1.0f;
      _864 = _userImageAdjust.x + 0.5f;
      _867 = ((_858 + -0.5f) * _862) + _864;
      _870 = ((_859 + -0.5f) * _862) + _864;
      _873 = ((_860 + -0.5f) * _862) + _864;
      _879 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _914 = exp2(log2(saturate(mad(_colorBlind0.z, _873, mad(_colorBlind0.y, _870, (_colorBlind0.x * _867))))) * _879);
      _915 = exp2(log2(saturate(mad(_colorBlind1.z, _873, mad(_colorBlind1.y, _870, (_colorBlind1.x * _867))))) * _879);
      _916 = exp2(log2(saturate(mad(_colorBlind2.z, _873, mad(_colorBlind2.y, _870, (_colorBlind2.x * _867))))) * _879);
    } else {
      _914 = _809;
      _915 = _816;
      _916 = _823;
    }
  } else {
    _914 = _544;
    _915 = _543;
    _916 = _542;
  }
  if (_etcParams.y > 1.0f) {
    _921 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _924 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _930 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_921, _924), float2(_921, _924))));  // [sem: expr_sat]
    _935 = (_930 * _914);
    _936 = (_930 * _915);
    _937 = (_930 * _916);
  } else {
    _935 = _914;
    _936 = _915;
    _937 = _916;
  }
  if (_561 && (_etcParams.z > 0.0f)) {
    _967 = select((_935 <= 0.0031308f), (_935 * 12.92f), (((pow(_935, 0.41666666f)) * 1.055f) + -0.055f));
    _968 = select((_936 <= 0.0031308f), (_936 * 12.92f), (((pow(_936, 0.41666666f)) * 1.055f) + -0.055f));
    _969 = select((_937 <= 0.0031308f), (_937 * 12.92f), (((pow(_937, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _967 = _935;
    _968 = _936;
    _969 = _937;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _972 = (float)((uint)((uint)(_545)));
    if (!(_972 < _viewDir.w)) {
      if (!(!(_972 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _983 = 0.0f;
        _984 = 0.0f;
        _985 = 0.0f;
      } else {
        _983 = _967;
        _984 = _968;
        _985 = _969;
      }
    } else {
      _983 = 0.0f;
      _984 = 0.0f;
      _985 = 0.0f;
    }
  } else {
    _983 = _967;
    _984 = _968;
    _985 = _969;
  }
  _989 = exp2(log2(_983 * 0.0001f) * 0.15930176f);
  _993 = exp2(log2(_984 * 0.0001f) * 0.15930176f);
  _997 = exp2(log2(_985 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_989 * 18.6875f) + 1.0f)) * ((_989 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_993 * 18.6875f) + 1.0f)) * ((_993 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_997 * 18.6875f) + 1.0f)) * ((_997 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _558;
  return SV_Target;
}
