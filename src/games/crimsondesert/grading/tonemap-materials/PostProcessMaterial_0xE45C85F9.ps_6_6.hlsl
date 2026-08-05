Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t39, space36);

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
  float _25;
  float _29;
  float _40;
  int _42;
  float _43;
  float _44;
  float _45;
  int _47;
  float _48;
  float _49;
  float _50;
  float _137;
  float _342;
  float _343;
  float _344;
  float _437;
  float _438;
  float _439;
  float _493;
  float _494;
  float _495;
  float _514;
  float _515;
  float _516;
  float _546;
  float _547;
  float _548;
  float _562;
  float _563;
  float _564;
  float _59;
  float4 _73;
  float _78;
  float _80;
  float _82;
  int _83;
  int _86;
  uint2 _96;
  bool _114;
  float _117;
  float _120;
  float _123;
  uint _124;
  bool _140;
  float _146;
  float _165;
  float _181;
  float _197;
  float _198;
  float _202;
  float _205;
  float _208;
  float _215;
  float _222;
  float _229;
  float _230;
  float _231;
  float _232;
  float _233;
  float _234;
  float _235;
  float _251;
  float _267;
  float _283;
  float _284;
  float _285;
  float _286;
  float _287;
  float _304;
  float _305;
  float _306;
  float _307;
  float _310;
  float _313;
  float _317;
  float _321;
  float _325;
  float _345;
  float _357;
  float _369;
  float _381;
  float _388;
  float _395;
  float _402;
  float _408;
  float _409;
  float _411;
  float _413;
  float _415;
  float _420;
  float _441;
  float _443;
  float _446;
  float _449;
  float _452;
  float _458;
  float _500;
  float _503;
  float _509;
  float _551;
  int __loop_jump_target = -1;
  _19 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _25 = (float)((int)((int)(_bufferSizeAndInvSize.x * TEXCOORD.x)));
  _29 = (float)((int)((int)(_bufferSizeAndInvSize.y * TEXCOORD.y)));
  _40 = 1.0f - (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_25 * _customRenderPassSizeInvSize.x)), ((int)(_29 * _customRenderPassSizeInvSize.y)), 0)))).x);
  _42 = -6;
  _43 = 0.0f;
  _44 = 0.0f;
  _45 = 0.0f;
  while(true) {
    _47 = -6;
    _48 = _43;
    _49 = _44;
    _50 = _45;
    while(true) {
      _59 = (_global_0[((int)min((uint)(((int)(_47) + (int)(6))), (uint)(12)))]) * (_global_0[((int)min((uint)(((int)(_42) + (int)(6))), (uint)(12)))]);
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _73 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((((((float)((int)(_42))) * _40) * _srcTargetSizeAndInv.z) + TEXCOORD.x), (((((float)((int)(_47))) * _40) * _srcTargetSizeAndInv.w) + TEXCOORD.y)));
      _78 = (_73.x * _59) + _50;
      _80 = (_73.y * _59) + _49;
      _82 = (_73.z * _59) + _48;
      _83 = (int)(_47) + (int)(1);
      if (!(_83 == 7)) {
        _47 = _83;
        _48 = _82;
        _49 = _80;
        _50 = _78;
        continue;
      }
      _86 = (int)(_42) + (int)(1);
      if (!(_86 == 7)) {
        _42 = _86;
        _43 = _82;
        _44 = _80;
        _45 = _78;
        __loop_jump_target = 41;
        break;
      }
      __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_96.x, _96.y);
      _114 = (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_96.x))))))) + 0.5f) * _25)), ((int)((((float)((int)((int)((float)((int)((int)(_96.y))))))) + 0.5f) * _29)), 0)))).x) & 255) != 30);
      _117 = select(_114, ((_78 * 56493.91f) + _19.x), _19.x);
      _120 = select(_114, ((_80 * 56493.91f) + _19.y), _19.y);
      _123 = select(_114, ((_82 * 56493.91f) + _19.z), _19.z);
      _124 = (uint)(SV_Position.y);
      if (_etcParams.y == 1.0f) {
        _137 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _124, 0)))).x) & 127)))) + 0.5f);
      } else {
        _137 = 1.0f;
      }
      _140 = (_localToneMappingParams.w > 0.0f);
      if (_140) {
        _146 = _exposure0.x * _userImageAdjust.z;
        _165 = exp2(_powerParams.x * log2(max(0.0f, (((_146 * max(0.0f, (((_117 * 1.70505f) - (_120 * 0.62179f)) - (_123 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
        _181 = exp2(log2(max(0.0f, (((_slopeParams.y * _146) * max(0.0f, (((_120 * 1.1408f) - (_117 * 0.13026f)) - (_123 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
        _197 = exp2(log2(max(0.0f, (((_slopeParams.z * _146) * max(0.0f, (((_117 * -0.024f) - (_120 * 0.12897f)) + (_123 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
        _198 = dot(float3(_165, _181, _197), float3(0.212671f, 0.71516f, 0.072169f));
        _202 = ((_165 - _198) * _powerParams.w) + _198;
        _205 = ((_181 - _198) * _powerParams.w) + _198;
        _208 = ((_197 - _198) * _powerParams.w) + _198;
        _215 = min(max(log2(mad(_208, 0.079223745f, mad(_205, 0.0784336f, (_202 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
        _222 = min(max(log2(mad(_208, 0.07916613f, mad(_205, 0.87846863f, (_202 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
        _229 = min(max(log2(mad(_208, 0.879143f, mad(_205, 0.0784336f, (_202 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
        _230 = _215 * 0.060606062f;
        _231 = _222 * 0.060606062f;
        _232 = _229 * 0.060606062f;
        _233 = _230 * _230;
        _234 = _231 * _231;
        _235 = _232 * _232;
        _251 = min(0.0f, (-0.0f - (((_215 * 0.0072181816f) + ((_233 * 0.4298f) + (((_233 * _233) * ((31.96f - (_215 * 2.4327273f)) + (_233 * 15.5f))) - ((_215 * 0.41624245f) * _233)))) + -0.00232f)));
        _267 = min(0.0f, (-0.0f - (((_222 * 0.0072181816f) + ((_234 * 0.4298f) + (((_234 * _234) * ((31.96f - (_222 * 2.4327273f)) + (_234 * 15.5f))) - ((_222 * 0.41624245f) * _234)))) + -0.00232f)));
        _283 = min(0.0f, (-0.0f - (((_229 * 0.0072181816f) + ((_235 * 0.4298f) + (((_235 * _235) * ((31.96f - (_229 * 2.4327273f)) + (_235 * 15.5f))) - ((_229 * 0.41624245f) * _235)))) + -0.00232f)));
        _284 = -0.0f - _251;
        _285 = -0.0f - _267;
        _286 = -0.0f - _283;
        _287 = dot(float3(_284, _285, _286), float3(0.2126f, 0.7152f, 0.0722f));
        if (_nightToneParm == 1) {
          _304 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
          _305 = -0.79999995f / _304;
          _306 = -1.2f / _304;
          _307 = 0.20000005f / _304;
          _310 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
          _313 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
          _317 = (_305 + 1.4f) + (_313 * (-0.39999998f - _305));
          _321 = (_306 + 1.6f) + (_313 * (-0.6f - _306));
          _325 = (_307 + 0.9f) + (_313 * (0.5f - _307));
          _342 = (lerp(_325, 1.4f, _310));  // [sem: blended]
          _343 = (lerp(_317, 1.0f, _310));  // [sem: blended]
          _344 = (lerp(_321, 1.2f, _310));  // [sem: blended]
        } else {
          _342 = 1.4f;  // [sem: blended]
          _343 = 1.0f;  // [sem: blended]
          _344 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
        }
        _345 = 1.0f - _344;
        _357 = ((exp2(log2(((saturate((_251 * _251) * _284) * _345) + _344) * _284) * _343) - _287) * _342) + _287;
        _369 = ((exp2(log2(((saturate((_267 * _267) * _285) * _345) + _344) * _285) * _343) - _287) * _342) + _287;
        _381 = ((exp2(log2(((saturate((_283 * _283) * _286) * _345) + _344) * _286) * _343) - _287) * _342) + _287;
        _388 = saturate(exp2(log2(mad(_381, -0.09902974f, mad(_369, -0.09802088f, (_357 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
        _395 = saturate(exp2(log2(mad(_381, -0.098961174f, mad(_369, 1.1519032f, (_357 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
        _402 = saturate(exp2(log2(mad(_381, 1.1510737f, mad(_369, -0.09804345f, (_357 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
        if (_etcParams.z == 0.0f) {
          _408 = 1.0f - abs(_etcParams.w);
          _409 = saturate(_etcParams.w);  // [sem: expr_sat]
          _411 = (_408 * _388) + _409;
          _413 = (_408 * _395) + _409;
          _415 = (_408 * _402) + _409;
          if (_colorGradingParams.w > 0.0f) {
            _420 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
            _437 = (((max(0.0f, (1.0f - _415)) - _415) * _420) + _415);
            _438 = (((max(0.0f, (1.0f - _413)) - _413) * _420) + _413);
            _439 = (((max(0.0f, (1.0f - _411)) - _411) * _420) + _411);
          } else {
            _437 = _415;
            _438 = _413;
            _439 = _411;
          }
          _441 = _userImageAdjust.y + 1.0f;
          _443 = _userImageAdjust.x + 0.5f;
          _446 = ((_439 + -0.5f) * _441) + _443;
          _449 = ((_438 + -0.5f) * _441) + _443;
          _452 = ((_437 + -0.5f) * _441) + _443;
          _458 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
          _493 = exp2(log2(saturate(mad(_colorBlind2.z, _452, mad(_colorBlind2.y, _449, (_colorBlind2.x * _446))))) * _458);
          _494 = exp2(log2(saturate(mad(_colorBlind1.z, _452, mad(_colorBlind1.y, _449, (_colorBlind1.x * _446))))) * _458);
          _495 = exp2(log2(saturate(mad(_colorBlind0.z, _452, mad(_colorBlind0.y, _449, (_colorBlind0.x * _446))))) * _458);
        } else {
          _493 = _402;
          _494 = _395;
          _495 = _388;
        }
      } else {
        _493 = _123;
        _494 = _120;
        _495 = _117;
      }
      if (_etcParams.y > 1.0f) {
        _500 = abs((TEXCOORD.x * 2.0f) + -1.0f);
        _503 = abs((TEXCOORD.y * 2.0f) + -1.0f);
        _509 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_500, _503), float2(_500, _503))));  // [sem: expr_sat]
        _514 = (_509 * _493);
        _515 = (_509 * _494);
        _516 = (_509 * _495);
      } else {
        _514 = _493;
        _515 = _494;
        _516 = _495;
      }
      if (_140 && (_etcParams.z > 0.0f)) {
        _546 = select((_515 <= 0.0031308f), (_515 * 12.92f), (((pow(_515, 0.41666666f)) * 1.055f) + -0.055f));
        _547 = select((_516 <= 0.0031308f), (_516 * 12.92f), (((pow(_516, 0.41666666f)) * 1.055f) + -0.055f));
        _548 = select((_514 <= 0.0031308f), (_514 * 12.92f), (((pow(_514, 0.41666666f)) * 1.055f) + -0.055f));
      } else {
        _546 = _515;
        _547 = _516;
        _548 = _514;
      }
      if (!(!(_etcParams.y >= 1.0f))) {
        _551 = (float)((uint)((uint)(_124)));
        if (!(_551 < _viewDir.w)) {
          if (!(!(_551 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
            _562 = 0.0f;
            _563 = 0.0f;
            _564 = 0.0f;
          } else {
            _562 = _547;
            _563 = _546;
            _564 = _548;
          }
        } else {
          _562 = 0.0f;
          _563 = 0.0f;
          _564 = 0.0f;
        }
      } else {
        _562 = _547;
        _563 = _546;
        _564 = _548;
      }
      SV_Target.x = _562;
      SV_Target.y = _563;
      SV_Target.z = _564;
      SV_Target.w = _137;
      break;
    }
    if (__loop_jump_target == 41) {
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
