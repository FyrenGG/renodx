struct PostProcessDirectionalBlurStruct {
  float _intensity;
  float _noiseStrength;
  float _direction;
  float _noiseScale;
  uint _noiseTexture;
};

struct BindlessParameters_PostProcessDirectionalBlur {
  PostProcessDirectionalBlurStruct BindlessParameters_PostProcessDirectionalBlur;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

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

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

typedef BindlessParameters_PostProcessDirectionalBlur BindlessParameters_PostProcessDirectionalBlur_t;
ConstantBuffer<BindlessParameters_PostProcessDirectionalBlur_t> BindlessParameters_PostProcessDirectionalBlur[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _16;
  float _24;
  int _27;
  int _35;
  int _38;
  float _46;
  int _49;
  float _57;
  int _60;
  float _68;
  int _70;
  float _71;
  float _72;
  float _73;
  float _209;
  float _414;
  float _415;
  float _416;
  float _509;
  float _510;
  float _511;
  float _569;
  float _570;
  float _571;
  float _590;
  float _591;
  float _592;
  float _622;
  float _623;
  float _624;
  float _638;
  float _639;
  float _640;
  float _76;
  float _87;
  float _90;
  float _93;
  float4 _98;
  float _104;
  float _107;
  float _110;
  float4 _115;
  float _121;
  float _124;
  float _127;
  float _146;
  float _165;
  float _184;
  int _185;
  uint _193;
  bool _212;
  float _218;
  float _237;
  float _253;
  float _269;
  float _270;
  float _274;
  float _277;
  float _280;
  float _287;
  float _294;
  float _301;
  float _302;
  float _303;
  float _304;
  float _305;
  float _306;
  float _307;
  float _323;
  float _339;
  float _355;
  float _356;
  float _357;
  float _358;
  float _359;
  float _376;
  float _377;
  float _378;
  float _379;
  float _382;
  float _385;
  float _389;
  float _393;
  float _397;
  float _417;
  float _429;
  float _441;
  float _453;
  float _460;
  float _467;
  float _474;
  float _480;
  float _481;
  float _483;
  float _485;
  float _487;
  float _492;
  float _513;
  float _515;
  float _518;
  float _521;
  float _524;
  float _530;
  float _576;
  float _579;
  float _585;
  float _627;
  float _644;
  float _648;
  float _652;
  int __loop_jump_target = -1;
  _16 = WaveReadLaneFirst(_materialIndex);
  _24 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_16 < (uint)170000), _16, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._noiseScale);
  _27 = WaveReadLaneFirst(_materialIndex);
  _35 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_27 < (uint)170000), _27, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._noiseTexture);
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_38 < (uint)170000), _38, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._direction);
  _49 = WaveReadLaneFirst(_materialIndex);
  _57 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_49 < (uint)170000), _49, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._intensity);
  _60 = WaveReadLaneFirst(_materialIndex);
  _68 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_60 < (uint)170000), _60, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._noiseStrength);
  _70 = 1;
  _71 = 0.0f;
  _72 = 0.0f;
  _73 = 0.0f;
  while(true) {
    _76 = (_57 * 0.03125f) * ((float)((int)(_70)));
    _87 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_35 < (uint)65000), _35, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_24 * TEXCOORD.x), (_24 * TEXCOORD.y))))).x) * _68;
    _90 = (_87 - sin(_46)) * _76;
    _93 = (_87 + cos(_46)) * _76;
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _98 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((_90 + TEXCOORD.x), (_93 + TEXCOORD.y)));
    _104 = (pow(_98.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _107 = (pow(_98.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _110 = (pow(_98.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _115 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((TEXCOORD.x - _90), (TEXCOORD.y - _93)));
    _121 = (pow(_115.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _124 = (pow(_115.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _127 = (pow(_115.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _146 = ((exp2(log2(max(0.0f, (_104 + -0.8359375f)) / (18.851562f - (_104 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_121 + -0.8359375f)) / (18.851562f - (_121 * 18.6875f))) * 6.277395f)) * 10000.0f) + _73;
    _165 = ((exp2(log2(max(0.0f, (_107 + -0.8359375f)) / (18.851562f - (_107 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_124 + -0.8359375f)) / (18.851562f - (_124 * 18.6875f))) * 6.277395f)) * 10000.0f) + _72;
    _184 = ((exp2(log2(max(0.0f, (_110 + -0.8359375f)) / (18.851562f - (_110 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_127 + -0.8359375f)) / (18.851562f - (_127 * 18.6875f))) * 6.277395f)) * 10000.0f) + _71;
    _185 = (int)(_70) + (int)(1);
    if (!(_185 == 33)) {
      _70 = _185;
      _71 = _184;
      _72 = _165;
      _73 = _146;
      continue;
    }
    _193 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _209 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _193, 0)))).x) & 127)))) + 0.5f);
    } else {
      _209 = _postProcessParams.x;
    }
    _212 = (_localToneMappingParams.w > 0.0f);
    if (_212) {
      _218 = _exposure0.x * _userImageAdjust.z;
      _237 = exp2(_powerParams.x * log2(max(0.0f, (((_218 * max(0.0f, (((_146 * 0.026641406f) - (_165 * 0.009715469f)) - (_184 * 0.0013009375f)))) * _slopeParams.x) + _offsetParams.x))));
      _253 = exp2(log2(max(0.0f, (((_slopeParams.y * _218) * max(0.0f, (((_165 * 0.017825f) - (_146 * 0.0020353126f)) - (_184 * 0.00016484375f)))) + _offsetParams.y))) * _powerParams.y);
      _269 = exp2(log2(max(0.0f, (((_slopeParams.z * _218) * max(0.0f, (((_146 * -0.000375f) - (_165 * 0.0020151562f)) + (_184 * 0.018015156f)))) + _offsetParams.z))) * _powerParams.z);
      _270 = dot(float3(_237, _253, _269), float3(0.212671f, 0.71516f, 0.072169f));
      _274 = ((_237 - _270) * _powerParams.w) + _270;
      _277 = ((_253 - _270) * _powerParams.w) + _270;
      _280 = ((_269 - _270) * _powerParams.w) + _270;
      _287 = min(max(log2(mad(_280, 0.079223745f, mad(_277, 0.0784336f, (_274 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
      _294 = min(max(log2(mad(_280, 0.07916613f, mad(_277, 0.87846863f, (_274 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
      _301 = min(max(log2(mad(_280, 0.879143f, mad(_277, 0.0784336f, (_274 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
      _302 = _287 * 0.060606062f;
      _303 = _294 * 0.060606062f;
      _304 = _301 * 0.060606062f;
      _305 = _302 * _302;
      _306 = _303 * _303;
      _307 = _304 * _304;
      _323 = min(0.0f, (-0.0f - (((_287 * 0.0072181816f) + ((_305 * 0.4298f) + (((_305 * _305) * ((31.96f - (_287 * 2.4327273f)) + (_305 * 15.5f))) - ((_287 * 0.41624245f) * _305)))) + -0.00232f)));
      _339 = min(0.0f, (-0.0f - (((_294 * 0.0072181816f) + ((_306 * 0.4298f) + (((_306 * _306) * ((31.96f - (_294 * 2.4327273f)) + (_306 * 15.5f))) - ((_294 * 0.41624245f) * _306)))) + -0.00232f)));
      _355 = min(0.0f, (-0.0f - (((_301 * 0.0072181816f) + ((_307 * 0.4298f) + (((_307 * _307) * ((31.96f - (_301 * 2.4327273f)) + (_307 * 15.5f))) - ((_301 * 0.41624245f) * _307)))) + -0.00232f)));
      _356 = -0.0f - _323;
      _357 = -0.0f - _339;
      _358 = -0.0f - _355;
      _359 = dot(float3(_356, _357, _358), float3(0.2126f, 0.7152f, 0.0722f));
      if (_nightToneParm == 1) {
        _376 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
        _377 = -0.79999995f / _376;
        _378 = -1.2f / _376;
        _379 = 0.20000005f / _376;
        _382 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
        _385 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
        _389 = (_377 + 1.4f) + (_385 * (-0.39999998f - _377));
        _393 = (_378 + 1.6f) + (_385 * (-0.6f - _378));
        _397 = (_379 + 0.9f) + (_385 * (0.5f - _379));
        _414 = (lerp(_397, 1.4f, _382));  // [sem: blended]
        _415 = (lerp(_389, 1.0f, _382));  // [sem: blended]
        _416 = (lerp(_393, 1.2f, _382));  // [sem: blended]
      } else {
        _414 = 1.4f;  // [sem: blended]
        _415 = 1.0f;  // [sem: blended]
        _416 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      }
      _417 = 1.0f - _416;
      _429 = ((exp2(log2(((saturate((_323 * _323) * _356) * _417) + _416) * _356) * _415) - _359) * _414) + _359;
      _441 = ((exp2(log2(((saturate((_339 * _339) * _357) * _417) + _416) * _357) * _415) - _359) * _414) + _359;
      _453 = ((exp2(log2(((saturate((_355 * _355) * _358) * _417) + _416) * _358) * _415) - _359) * _414) + _359;
      _460 = saturate(exp2(log2(mad(_453, -0.09902974f, mad(_441, -0.09802088f, (_429 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
      _467 = saturate(exp2(log2(mad(_453, -0.098961174f, mad(_441, 1.1519032f, (_429 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
      _474 = saturate(exp2(log2(mad(_453, 1.1510737f, mad(_441, -0.09804345f, (_429 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
      if (_etcParams.z == 0.0f) {
        _480 = 1.0f - abs(_etcParams.w);
        _481 = saturate(_etcParams.w);  // [sem: expr_sat]
        _483 = (_480 * _460) + _481;
        _485 = (_480 * _467) + _481;
        _487 = (_480 * _474) + _481;
        if (_colorGradingParams.w > 0.0f) {
          _492 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _509 = (((max(0.0f, (1.0f - _487)) - _487) * _492) + _487);
          _510 = (((max(0.0f, (1.0f - _485)) - _485) * _492) + _485);
          _511 = (((max(0.0f, (1.0f - _483)) - _483) * _492) + _483);
        } else {
          _509 = _487;
          _510 = _485;
          _511 = _483;
        }
        _513 = _userImageAdjust.y + 1.0f;
        _515 = _userImageAdjust.x + 0.5f;
        _518 = ((_511 + -0.5f) * _513) + _515;
        _521 = ((_510 + -0.5f) * _513) + _515;
        _524 = ((_509 + -0.5f) * _513) + _515;
        _530 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _569 = exp2(log2(saturate(mad(_colorBlind0.z, _524, mad(_colorBlind0.y, _521, (_colorBlind0.x * _518))))) * _530);
        _570 = exp2(log2(saturate(mad(_colorBlind1.z, _524, mad(_colorBlind1.y, _521, (_colorBlind1.x * _518))))) * _530);
        _571 = exp2(log2(saturate(mad(_colorBlind2.z, _524, mad(_colorBlind2.y, _521, (_colorBlind2.x * _518))))) * _530);
      } else {
        _569 = _460;
        _570 = _467;
        _571 = _474;
      }
    } else {
      _569 = (_146 * 0.015625f);
      _570 = (_165 * 0.015625f);
      _571 = (_184 * 0.015625f);
    }
    if (_etcParams.y > 1.0f) {
      _576 = abs((TEXCOORD.x * 2.0f) + -1.0f);
      _579 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      _585 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_576, _579), float2(_576, _579))));  // [sem: expr_sat]
      _590 = (_585 * _569);
      _591 = (_585 * _570);
      _592 = (_585 * _571);
    } else {
      _590 = _569;
      _591 = _570;
      _592 = _571;
    }
    if (_212 && (_etcParams.z > 0.0f)) {
      _622 = select((_590 <= 0.0031308f), (_590 * 12.92f), (((pow(_590, 0.41666666f)) * 1.055f) + -0.055f));
      _623 = select((_591 <= 0.0031308f), (_591 * 12.92f), (((pow(_591, 0.41666666f)) * 1.055f) + -0.055f));
      _624 = select((_592 <= 0.0031308f), (_592 * 12.92f), (((pow(_592, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _622 = _590;
      _623 = _591;
      _624 = _592;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _627 = (float)((uint)((uint)(_193)));
      if (!(_627 < _viewDir.w)) {
        if (!(!(_627 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
          _638 = 0.0f;
          _639 = 0.0f;
          _640 = 0.0f;
        } else {
          _638 = _622;
          _639 = _623;
          _640 = _624;
        }
      } else {
        _638 = 0.0f;
        _639 = 0.0f;
        _640 = 0.0f;
      }
    } else {
      _638 = _622;
      _639 = _623;
      _640 = _624;
    }
    _644 = exp2(log2(_638 * 0.0001f) * 0.15930176f);
    _648 = exp2(log2(_639 * 0.0001f) * 0.15930176f);
    _652 = exp2(log2(_640 * 0.0001f) * 0.15930176f);
    SV_Target.x = exp2(log2((1.0f / ((_644 * 18.6875f) + 1.0f)) * ((_644 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.y = exp2(log2((1.0f / ((_648 * 18.6875f) + 1.0f)) * ((_648 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.z = exp2(log2((1.0f / ((_652 * 18.6875f) + 1.0f)) * ((_652 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.w = _209;
    break;
  }
  return SV_Target;
}
