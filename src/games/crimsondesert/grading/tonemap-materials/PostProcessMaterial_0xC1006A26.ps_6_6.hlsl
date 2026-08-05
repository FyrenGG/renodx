Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

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

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const float _global_0[13] = { 0.0072104214f, 0.0072235432f, 0.007234297f, 0.0072426726f, 0.00724866f, 0.0072522555f, 0.0072534545f, 0.0072522555f, 0.00724866f, 0.0072426726f, 0.007234297f, 0.0072235432f, 0.0072104214f };

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _19;
  float _24;
  float _39;
  float _43;
  float _54;
  int _56;
  float _57;
  float _58;
  float _59;
  int _61;
  float _62;
  float _63;
  float _64;
  float _173;
  float _378;
  float _379;
  float _380;
  float _473;
  float _474;
  float _475;
  float _529;
  float _530;
  float _531;
  float _550;
  float _551;
  float _552;
  float _582;
  float _583;
  float _584;
  float _598;
  float _599;
  float _600;
  float _73;
  float4 _87;
  float _92;
  float _94;
  float _96;
  int _97;
  int _100;
  float _108;
  float _109;
  float _112;
  float _121;
  float _130;
  uint2 _132;
  bool _150;
  float _153;
  float _156;
  float _159;
  uint _160;
  bool _176;
  float _182;
  float _201;
  float _217;
  float _233;
  float _234;
  float _238;
  float _241;
  float _244;
  float _251;
  float _258;
  float _265;
  float _266;
  float _267;
  float _268;
  float _269;
  float _270;
  float _271;
  float _287;
  float _303;
  float _319;
  float _320;
  float _321;
  float _322;
  float _323;
  float _340;
  float _341;
  float _342;
  float _343;
  float _346;
  float _349;
  float _353;
  float _357;
  float _361;
  float _381;
  float _393;
  float _405;
  float _417;
  float _424;
  float _431;
  float _438;
  float _444;
  float _445;
  float _447;
  float _449;
  float _451;
  float _456;
  float _477;
  float _479;
  float _482;
  float _485;
  float _488;
  float _494;
  float _536;
  float _539;
  float _545;
  float _587;
  float _604;
  float _608;
  float _612;
  int __loop_jump_target = -1;
  _19 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _24 = (pow(_19.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _39 = (float)((int)((int)(_bufferSizeAndInvSize.x * TEXCOORD.x)));
  _43 = (float)((int)((int)(_bufferSizeAndInvSize.y * TEXCOORD.y)));
  _54 = 1.0f - (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_39 * _customRenderPassSizeInvSize.x)), ((int)(_43 * _customRenderPassSizeInvSize.y)), 0)))).x);
  _56 = -6;
  _57 = 0.0f;
  _58 = 0.0f;
  _59 = 0.0f;
  while(true) {
    _61 = -6;
    _62 = _57;
    _63 = _58;
    _64 = _59;
    while(true) {
      _73 = (_global_0[((int)min((uint)(((int)(_61) + (int)(6))), (uint)(12)))]) * (_global_0[((int)min((uint)(((int)(_56) + (int)(6))), (uint)(12)))]);
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _87 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((((((float)((int)(_56))) * _54) * _srcTargetSizeAndInv.z) + TEXCOORD.x), (((((float)((int)(_61))) * _54) * _srcTargetSizeAndInv.w) + TEXCOORD.y)));
      _92 = (_87.x * _73) + _64;
      _94 = (_87.y * _73) + _63;
      _96 = (_87.z * _73) + _62;
      _97 = (int)(_61) + (int)(1);
      if (!(_97 == 7)) {
        _61 = _97;
        _62 = _96;
        _63 = _94;
        _64 = _92;
        continue;
      }
      _100 = (int)(_56) + (int)(1);
      if (!(_100 == 7)) {
        _56 = _100;
        _57 = _96;
        _58 = _94;
        _59 = _92;
        __loop_jump_target = 55;
        break;
      }
      _108 = (pow(_19.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _109 = exp2(log2(max(0.0f, (_24 + -0.8359375f)) / (18.851562f - (_24 * 18.6875f))) * 6.277395f) * 10000.0f;
      _112 = (pow(_19.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _121 = exp2(log2(max(0.0f, (_112 + -0.8359375f)) / (18.851562f - (_112 * 18.6875f))) * 6.277395f) * 10000.0f;
      _130 = exp2(log2(max(0.0f, (_108 + -0.8359375f)) / (18.851562f - (_108 * 18.6875f))) * 6.277395f) * 10000.0f;
      __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_132.x, _132.y);
      _150 = (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_132.x))))))) + 0.5f) * _39)), ((int)((((float)((int)((int)((float)((int)((int)(_132.y))))))) + 0.5f) * _43)), 0)))).x) & 255) != 30);
      _153 = select(_150, (_121 + (_92 * 56493.91f)), _121);
      _156 = select(_150, ((_94 * 56493.91f) + _109), _109);
      _159 = select(_150, (_130 + (_96 * 56493.91f)), _130);
      _160 = (uint)(SV_Position.y);
      if (_etcParams.y == 1.0f) {
        _173 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _160, 0)))).x) & 127)))) + 0.5f);
      } else {
        _173 = 1.0f;
      }
      _176 = (_localToneMappingParams.w > 0.0f);
      if (_176) {
        _182 = _exposure0.x * _userImageAdjust.z;
        _201 = exp2(_powerParams.x * log2(max(0.0f, (((_182 * max(0.0f, (((_153 * 1.70505f) - (_156 * 0.62179f)) - (_159 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
        _217 = exp2(log2(max(0.0f, (((_slopeParams.y * _182) * max(0.0f, (((_156 * 1.1408f) - (_153 * 0.13026f)) - (_159 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
        _233 = exp2(log2(max(0.0f, (((_slopeParams.z * _182) * max(0.0f, (((_153 * -0.024f) - (_156 * 0.12897f)) + (_159 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
        _234 = dot(float3(_201, _217, _233), float3(0.212671f, 0.71516f, 0.072169f));
        _238 = ((_201 - _234) * _powerParams.w) + _234;
        _241 = ((_217 - _234) * _powerParams.w) + _234;
        _244 = ((_233 - _234) * _powerParams.w) + _234;
        _251 = min(max(log2(mad(_244, 0.079223745f, mad(_241, 0.0784336f, (_238 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
        _258 = min(max(log2(mad(_244, 0.07916613f, mad(_241, 0.87846863f, (_238 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
        _265 = min(max(log2(mad(_244, 0.879143f, mad(_241, 0.0784336f, (_238 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
        _266 = _251 * 0.060606062f;
        _267 = _258 * 0.060606062f;
        _268 = _265 * 0.060606062f;
        _269 = _266 * _266;
        _270 = _267 * _267;
        _271 = _268 * _268;
        _287 = min(0.0f, (-0.0f - (((_251 * 0.0072181816f) + ((_269 * 0.4298f) + (((_269 * _269) * ((31.96f - (_251 * 2.4327273f)) + (_269 * 15.5f))) - ((_251 * 0.41624245f) * _269)))) + -0.00232f)));
        _303 = min(0.0f, (-0.0f - (((_258 * 0.0072181816f) + ((_270 * 0.4298f) + (((_270 * _270) * ((31.96f - (_258 * 2.4327273f)) + (_270 * 15.5f))) - ((_258 * 0.41624245f) * _270)))) + -0.00232f)));
        _319 = min(0.0f, (-0.0f - (((_265 * 0.0072181816f) + ((_271 * 0.4298f) + (((_271 * _271) * ((31.96f - (_265 * 2.4327273f)) + (_271 * 15.5f))) - ((_265 * 0.41624245f) * _271)))) + -0.00232f)));
        _320 = -0.0f - _287;
        _321 = -0.0f - _303;
        _322 = -0.0f - _319;
        _323 = dot(float3(_320, _321, _322), float3(0.2126f, 0.7152f, 0.0722f));
        if (_nightToneParm == 1) {
          _340 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
          _341 = -0.79999995f / _340;
          _342 = -1.2f / _340;
          _343 = 0.20000005f / _340;
          _346 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
          _349 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
          _353 = (_341 + 1.4f) + (_349 * (-0.39999998f - _341));
          _357 = (_342 + 1.6f) + (_349 * (-0.6f - _342));
          _361 = (_343 + 0.9f) + (_349 * (0.5f - _343));
          _378 = (lerp(_361, 1.4f, _346));  // [sem: blended]
          _379 = (lerp(_353, 1.0f, _346));  // [sem: blended]
          _380 = (lerp(_357, 1.2f, _346));  // [sem: blended]
        } else {
          _378 = 1.4f;  // [sem: blended]
          _379 = 1.0f;  // [sem: blended]
          _380 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
        }
        _381 = 1.0f - _380;
        _393 = ((exp2(log2(((saturate((_287 * _287) * _320) * _381) + _380) * _320) * _379) - _323) * _378) + _323;
        _405 = ((exp2(log2(((saturate((_303 * _303) * _321) * _381) + _380) * _321) * _379) - _323) * _378) + _323;
        _417 = ((exp2(log2(((saturate((_319 * _319) * _322) * _381) + _380) * _322) * _379) - _323) * _378) + _323;
        _424 = saturate(exp2(log2(mad(_417, -0.09902974f, mad(_405, -0.09802088f, (_393 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
        _431 = saturate(exp2(log2(mad(_417, -0.098961174f, mad(_405, 1.1519032f, (_393 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
        _438 = saturate(exp2(log2(mad(_417, 1.1510737f, mad(_405, -0.09804345f, (_393 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
        if (_etcParams.z == 0.0f) {
          _444 = 1.0f - abs(_etcParams.w);
          _445 = saturate(_etcParams.w);  // [sem: expr_sat]
          _447 = (_444 * _424) + _445;
          _449 = (_444 * _431) + _445;
          _451 = (_444 * _438) + _445;
          if (_colorGradingParams.w > 0.0f) {
            _456 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
            _473 = (((max(0.0f, (1.0f - _451)) - _451) * _456) + _451);
            _474 = (((max(0.0f, (1.0f - _449)) - _449) * _456) + _449);
            _475 = (((max(0.0f, (1.0f - _447)) - _447) * _456) + _447);
          } else {
            _473 = _451;
            _474 = _449;
            _475 = _447;
          }
          _477 = _userImageAdjust.y + 1.0f;
          _479 = _userImageAdjust.x + 0.5f;
          _482 = ((_475 + -0.5f) * _477) + _479;
          _485 = ((_474 + -0.5f) * _477) + _479;
          _488 = ((_473 + -0.5f) * _477) + _479;
          _494 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
          _529 = exp2(log2(saturate(mad(_colorBlind2.z, _488, mad(_colorBlind2.y, _485, (_colorBlind2.x * _482))))) * _494);
          _530 = exp2(log2(saturate(mad(_colorBlind1.z, _488, mad(_colorBlind1.y, _485, (_colorBlind1.x * _482))))) * _494);
          _531 = exp2(log2(saturate(mad(_colorBlind0.z, _488, mad(_colorBlind0.y, _485, (_colorBlind0.x * _482))))) * _494);
        } else {
          _529 = _438;
          _530 = _431;
          _531 = _424;
        }
      } else {
        _529 = _159;
        _530 = _156;
        _531 = _153;
      }
      if (_etcParams.y > 1.0f) {
        _536 = abs((TEXCOORD.x * 2.0f) + -1.0f);
        _539 = abs((TEXCOORD.y * 2.0f) + -1.0f);
        _545 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_536, _539), float2(_536, _539))));  // [sem: expr_sat]
        _550 = (_545 * _530);
        _551 = (_545 * _531);
        _552 = (_545 * _529);
      } else {
        _550 = _530;
        _551 = _531;
        _552 = _529;
      }
      if (_176 && (_etcParams.z > 0.0f)) {
        _582 = select((_551 <= 0.0031308f), (_551 * 12.92f), (((pow(_551, 0.41666666f)) * 1.055f) + -0.055f));
        _583 = select((_550 <= 0.0031308f), (_550 * 12.92f), (((pow(_550, 0.41666666f)) * 1.055f) + -0.055f));
        _584 = select((_552 <= 0.0031308f), (_552 * 12.92f), (((pow(_552, 0.41666666f)) * 1.055f) + -0.055f));
      } else {
        _582 = _551;
        _583 = _550;
        _584 = _552;
      }
      if (!(!(_etcParams.y >= 1.0f))) {
        _587 = (float)((uint)((uint)(_160)));
        if (!(_587 < _viewDir.w)) {
          if (!(!(_587 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
            _598 = 0.0f;
            _599 = 0.0f;
            _600 = 0.0f;
          } else {
            _598 = _582;
            _599 = _583;
            _600 = _584;
          }
        } else {
          _598 = 0.0f;
          _599 = 0.0f;
          _600 = 0.0f;
        }
      } else {
        _598 = _582;
        _599 = _583;
        _600 = _584;
      }
      _604 = exp2(log2(_598 * 0.0001f) * 0.15930176f);
      _608 = exp2(log2(_599 * 0.0001f) * 0.15930176f);
      _612 = exp2(log2(_600 * 0.0001f) * 0.15930176f);
      SV_Target.x = exp2(log2((1.0f / ((_604 * 18.6875f) + 1.0f)) * ((_604 * 18.851562f) + 0.8359375f)) * 78.84375f);
      SV_Target.y = exp2(log2((1.0f / ((_608 * 18.6875f) + 1.0f)) * ((_608 * 18.851562f) + 0.8359375f)) * 78.84375f);
      SV_Target.z = exp2(log2((1.0f / ((_612 * 18.6875f) + 1.0f)) * ((_612 * 18.851562f) + 0.8359375f)) * 78.84375f);
      SV_Target.w = _173;
      break;
    }
    if (__loop_jump_target == 55) {
      __loop_jump_target = -1;
      continue;
    }
    if (__loop_jump_target != -1) {
      break;
    }
    break;
  }
  return SV_Target;
}
