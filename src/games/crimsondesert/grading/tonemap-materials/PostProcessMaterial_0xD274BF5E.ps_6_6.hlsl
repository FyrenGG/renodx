Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t71, space36);

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
  float _26;
  float _27;
  float _44;
  float _52;
  float _53;
  float _67;
  float _69;
  float _70;
  float _71;
  int _72;
  float _74;
  float _75;
  float _76;
  int _77;
  float _171;
  float _376;
  float _377;
  float _378;
  float _471;
  float _472;
  float _473;
  float _527;
  float _528;
  float _529;
  float _548;
  float _549;
  float _550;
  float _580;
  float _581;
  float _582;
  float _596;
  float _597;
  float _598;
  float _84;
  float4 _95;
  float _102;
  float _103;
  float _104;
  int _105;
  int _108;
  float _118;
  float _127;
  float _128;
  uint2 _133;
  bool _151;
  float _155;
  float _156;
  float _157;
  uint _158;
  bool _174;
  float _180;
  float _229;
  float _230;
  float _231;
  float _233;
  float _240;
  float _241;
  float _242;
  float _261;
  float _262;
  float _263;
  float _264;
  float _265;
  float _266;
  float _267;
  float _268;
  float _269;
  float _315;
  float _316;
  float _317;
  float _318;
  float _319;
  float _320;
  float _321;
  float _338;
  float _339;
  float _340;
  float _341;
  float _347;
  float _350;
  float _357;
  float _358;
  float _359;
  float _388;
  float _413;
  float _414;
  float _415;
  float _434;
  float _435;
  float _436;
  float _442;
  float _446;
  float _447;
  float _448;
  float _449;
  float _454;
  float _479;
  float _483;
  float _484;
  float _485;
  float _486;
  float _516;
  float _538;
  float _539;
  float _543;
  float _587;
  float _608;
  float _609;
  float _610;
  int __loop_jump_target = -1;
  _19 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _26 = (pow(_19.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _27 = (pow(_19.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _44 = exp2(log2(max(0.0f, (_26 + -0.8359375f)) / (18.851562f - (_26 * 18.6875f))) * 6.277395f) * 10000.0f;
  _52 = (float)((int)((int)(_bufferSizeAndInvSize.x * TEXCOORD.x)));
  _53 = (float)((int)((int)(_bufferSizeAndInvSize.y * TEXCOORD.y)));
  _67 = 1.0f - (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_52 * _customRenderPassSizeInvSize.x)), ((int)(_53 * _customRenderPassSizeInvSize.y)), 0)))).x);
  _69 = 0.0f;
  _70 = 0.0f;
  _71 = 0.0f;
  _72 = -6;
  while(true) {
    _74 = _69;
    _75 = _70;
    _76 = _71;
    _77 = -6;
    while(true) {
      _84 = (_global_0[min((uint)(((int)(_72) + (int)(6))), 12u)]) * (_global_0[min((uint)(((int)(_77) + (int)(6))), 12u)]);
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _95 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((((_67 * _srcTargetSizeAndInv.z) * ((float)((int)(_72)))) + TEXCOORD.x), (((_67 * _srcTargetSizeAndInv.w) * ((float)((int)(_77)))) + TEXCOORD.y)));
      _102 = (_95.x * _84) + _74;
      _103 = (_95.y * _84) + _75;
      _104 = (_95.z * _84) + _76;
      _105 = (int)(_77) + (int)(1);
      if (!(_105 == 7)) {
        _74 = _102;
        _75 = _103;
        _76 = _104;
        _77 = _105;
        continue;
      }
      _108 = (int)(_72) + (int)(1);
      if (!(_108 == 7)) {
        _69 = _102;
        _70 = _103;
        _71 = _104;
        _72 = _108;
        __loop_jump_target = 68;
        break;
      }
      _118 = (pow(_19.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _127 = exp2(log2(max(0.0f, (_118 + -0.8359375f)) / (18.851562f - (_118 * 18.6875f))) * 6.277395f) * 10000.0f;
      _128 = exp2(log2(max(0.0f, (_27 + -0.8359375f)) / (18.851562f - (_27 * 18.6875f))) * 6.277395f) * 10000.0f;
      __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_133.x, _133.y);
      _151 = (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_133.x))))))) + 0.5f) * _52)), ((int)((((float)((int)((int)((float)((int)((int)(_133.y))))))) + 0.5f) * _53)), 0)))).x) & 255) != 30);
      _155 = select(_151, ((_102 * 56493.91f) + _127), _127);
      _156 = select(_151, ((_103 * 56493.91f) + _44), _44);
      _157 = select(_151, ((_104 * 56493.91f) + _128), _128);
      _158 = (uint)(SV_Position.y);
      if (_etcParams.y == 1.0f) {
        _171 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _158, 0)))).x) & 127)))) + 0.5f);
      } else {
        _171 = 1.0f;
      }
      _174 = (_localToneMappingParams.w > 0.0f);
      if (_174) {
        _180 = _userImageAdjust.z * _exposure0.x;
        _229 = exp2(log2(max(0.0f, (((_180 * max(0.0f, (((_155 * 1.70505f) - (_156 * 0.62179f)) - (_157 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
        _230 = exp2(log2(max(0.0f, (((max(0.0f, (((_156 * 1.1408f) - (_155 * 0.13026f)) - (_157 * 0.01055f))) * _180) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
        _231 = exp2(log2(max(0.0f, (((max(0.0f, (((_155 * -0.024f) - (_156 * 0.12897f)) + (_157 * 1.15297f))) * _180) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
        _233 = dot(float3(_229, _230, _231), float3(0.212671f, 0.71516f, 0.072169f));
        _240 = ((_229 - _233) * _powerParams.w) + _233;
        _241 = ((_230 - _233) * _powerParams.w) + _233;
        _242 = ((_231 - _233) * _powerParams.w) + _233;
        _261 = min(max(log2(mad(_242, 0.079223745f, mad(_241, 0.0784336f, (_240 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
        _262 = min(max(log2(mad(_242, 0.07916613f, mad(_241, 0.87846863f, (_240 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
        _263 = min(max(log2(mad(_242, 0.879143f, mad(_241, 0.0784336f, (_240 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
        _264 = _261 * 0.060606062f;
        _265 = _262 * 0.060606062f;
        _266 = _263 * 0.060606062f;
        _267 = _264 * _264;
        _268 = _265 * _265;
        _269 = _266 * _266;
        _315 = min(0.0f, (-0.0f - (((_261 * 0.0072181816f) + ((_267 * 0.4298f) + (((_267 * _267) * ((31.96f - (_261 * 2.4327273f)) + (_267 * 15.5f))) - ((_261 * 0.41624245f) * _267)))) + -0.00232f)));
        _316 = min(0.0f, (-0.0f - (((_262 * 0.0072181816f) + ((_268 * 0.4298f) + (((_268 * _268) * ((31.96f - (_262 * 2.4327273f)) + (_268 * 15.5f))) - ((_262 * 0.41624245f) * _268)))) + -0.00232f)));
        _317 = min(0.0f, (-0.0f - (((_263 * 0.0072181816f) + ((_269 * 0.4298f) + (((_269 * _269) * ((31.96f - (_263 * 2.4327273f)) + (_269 * 15.5f))) - ((_263 * 0.41624245f) * _269)))) + -0.00232f)));
        _318 = -0.0f - _315;
        _319 = -0.0f - _316;
        _320 = -0.0f - _317;
        _321 = dot(float3(_318, _319, _320), float3(0.2126f, 0.7152f, 0.0722f));
        if (_nightToneParm == 1) {
          _338 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
          _339 = -0.79999995f / _338;
          _340 = -1.2f / _338;
          _341 = 0.20000005f / _338;
          _347 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
          _350 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
          _357 = (_339 + 1.4f) + (_350 * (-0.39999998f - _339));
          _358 = (_340 + 1.6f) + (_350 * (-0.6f - _340));
          _359 = (_341 + 0.9f) + (_350 * (0.5f - _341));
          _376 = (lerp(_358, 1.2f, _347));  // [sem: blended]
          _377 = (lerp(_357, 1.0f, _347));  // [sem: blended]
          _378 = (lerp(_359, 1.4f, _347));  // [sem: blended]
        } else {
          _376 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
          _377 = 1.0f;  // [sem: blended]
          _378 = 1.4f;  // [sem: blended]
        }
        _388 = 1.0f - _376;
        _413 = ((exp2(log2(((saturate((_315 * _315) * _318) * _388) + _376) * _318) * _377) - _321) * _378) + _321;
        _414 = ((exp2(log2(((saturate((_316 * _316) * _319) * _388) + _376) * _319) * _377) - _321) * _378) + _321;
        _415 = ((exp2(log2(((saturate((_317 * _317) * _320) * _388) + _376) * _320) * _377) - _321) * _378) + _321;
        _434 = saturate(exp2(log2(mad(_415, -0.09902974f, mad(_414, -0.09802088f, (_413 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
        _435 = saturate(exp2(log2(mad(_415, -0.098961174f, mad(_414, 1.1519032f, (_413 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
        _436 = saturate(exp2(log2(mad(_415, 1.1510737f, mad(_414, -0.09804345f, (_413 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
        if (_etcParams.z == 0.0f) {
          _442 = 1.0f - abs(_etcParams.w);
          _446 = saturate(_etcParams.w);  // [sem: expr_sat]
          _447 = (_442 * _434) + _446;
          _448 = (_442 * _435) + _446;
          _449 = (_442 * _436) + _446;
          if (_colorGradingParams.w > 0.0f) {
            _454 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
            _471 = (((max(0.0f, (1.0f - _447)) - _447) * _454) + _447);
            _472 = (((max(0.0f, (1.0f - _448)) - _448) * _454) + _448);
            _473 = (((max(0.0f, (1.0f - _449)) - _449) * _454) + _449);
          } else {
            _471 = _447;
            _472 = _448;
            _473 = _449;
          }
          _479 = _userImageAdjust.y + 1.0f;
          _483 = _userImageAdjust.x + 0.5f;
          _484 = ((_471 + -0.5f) * _479) + _483;
          _485 = ((_472 + -0.5f) * _479) + _483;
          _486 = ((_473 + -0.5f) * _479) + _483;
          _516 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
          _527 = exp2(log2(saturate(mad(_colorBlind0.z, _486, mad(_colorBlind0.y, _485, (_colorBlind0.x * _484))))) * _516);
          _528 = exp2(log2(saturate(mad(_colorBlind1.z, _486, mad(_colorBlind1.y, _485, (_colorBlind1.x * _484))))) * _516);
          _529 = exp2(log2(saturate(mad(_colorBlind2.z, _486, mad(_colorBlind2.y, _485, (_colorBlind2.x * _484))))) * _516);
        } else {
          _527 = _434;
          _528 = _435;
          _529 = _436;
        }
      } else {
        _527 = _155;
        _528 = _156;
        _529 = _157;
      }
      if (_etcParams.y > 1.0f) {
        _538 = abs((TEXCOORD.x * 2.0f) + -1.0f);
        _539 = abs((TEXCOORD.y * 2.0f) + -1.0f);
        _543 = saturate(1.0f - (dot(float2(_538, _539), float2(_538, _539)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
        _548 = (_543 * _527);
        _549 = (_543 * _528);
        _550 = (_543 * _529);
      } else {
        _548 = _527;
        _549 = _528;
        _550 = _529;
      }
      if (_174 && (_etcParams.z > 0.0f)) {
        _580 = select((_548 <= 0.0031308f), (_548 * 12.92f), (((pow(_548, 0.41666666f)) * 1.055f) + -0.055f));
        _581 = select((_549 <= 0.0031308f), (_549 * 12.92f), (((pow(_549, 0.41666666f)) * 1.055f) + -0.055f));
        _582 = select((_550 <= 0.0031308f), (_550 * 12.92f), (((pow(_550, 0.41666666f)) * 1.055f) + -0.055f));
      } else {
        _580 = _548;
        _581 = _549;
        _582 = _550;
      }
      if (!(!(_etcParams.y >= 1.0f))) {
        _587 = (float)((uint)((uint)(_158)));
        if (!(_587 < _viewDir.w)) {
          if (!(_587 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
            _596 = _580;
            _597 = _581;
            _598 = _582;
          } else {
            _596 = 0.0f;
            _597 = 0.0f;
            _598 = 0.0f;
          }
        } else {
          _596 = 0.0f;
          _597 = 0.0f;
          _598 = 0.0f;
        }
      } else {
        _596 = _580;
        _597 = _581;
        _598 = _582;
      }
      _608 = exp2(log2(_596 * 0.0001f) * 0.15930176f);
      _609 = exp2(log2(_597 * 0.0001f) * 0.15930176f);
      _610 = exp2(log2(_598 * 0.0001f) * 0.15930176f);
      SV_Target.x = exp2(log2((1.0f / ((_608 * 18.6875f) + 1.0f)) * ((_608 * 18.851562f) + 0.8359375f)) * 78.84375f);
      SV_Target.y = exp2(log2((1.0f / ((_609 * 18.6875f) + 1.0f)) * ((_609 * 18.851562f) + 0.8359375f)) * 78.84375f);
      SV_Target.z = exp2(log2((1.0f / ((_610 * 18.6875f) + 1.0f)) * ((_610 * 18.851562f) + 0.8359375f)) * 78.84375f);
      SV_Target.w = _171;
      break;
    }
    if (__loop_jump_target == 68) {
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
