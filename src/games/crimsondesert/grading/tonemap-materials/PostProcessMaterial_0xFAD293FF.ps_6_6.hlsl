Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _21;
  float _31;
  float _37;
  uint2 _39;
  float _83;
  float _84;
  float _85;
  float _99;
  float _304;
  float _305;
  float _306;
  float _399;
  float _400;
  float _401;
  float _455;
  float _456;
  float _457;
  float _476;
  float _477;
  float _478;
  float _508;
  float _509;
  float _510;
  float _524;
  float _525;
  float _526;
  float _81;
  uint _86;
  bool _102;
  float _108;
  float _127;
  float _143;
  float _159;
  float _160;
  float _164;
  float _167;
  float _170;
  float _177;
  float _184;
  float _191;
  float _192;
  float _193;
  float _194;
  float _195;
  float _196;
  float _197;
  float _213;
  float _229;
  float _245;
  float _246;
  float _247;
  float _248;
  float _249;
  float _266;
  float _267;
  float _268;
  float _269;
  float _272;
  float _275;
  float _279;
  float _283;
  float _287;
  float _307;
  float _319;
  float _331;
  float _343;
  float _350;
  float _357;
  float _364;
  float _370;
  float _371;
  float _373;
  float _375;
  float _377;
  float _382;
  float _403;
  float _405;
  float _408;
  float _411;
  float _414;
  float _420;
  float _462;
  float _465;
  float _471;
  float _513;
  _21 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _31 = (float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(TEXCOORD.x))));
  _37 = (float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(TEXCOORD.y))));
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_39.x, _39.y);
  if (!(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_39.x))))))) + 0.5f) * _31)), ((int)((((float)((int)((int)((float)((int)((int)(_39.y))))))) + 0.5f) * _37)), 0)))).x) & 255) == 0)) {
    // [sem: expr_sat]
    _81 = saturate(ceil((0.1f - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _31)), ((int)(_customRenderPassSizeInvSize.y * _37)), 0)))).x)))) + (_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x)))));
    _83 = _81;
    _84 = _81;
    _85 = _81;
  } else {
    _83 = _21.z;
    _84 = _21.y;
    _85 = _21.x;
  }
  _86 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _99 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _86, 0)))).x) & 127)))) + 0.5f);
  } else {
    _99 = 1.0f;
  }
  _102 = (_localToneMappingParams.w > 0.0f);
  if (_102) {
    _108 = _exposure0.x * _userImageAdjust.z;
    _127 = exp2(_powerParams.x * log2(max(0.0f, (((_108 * max(0.0f, (((_84 * -0.62179f) - (_83 * 0.08326f)) + (_85 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _143 = exp2(log2(max(0.0f, (((_slopeParams.y * _108) * max(0.0f, (((_84 * 1.1408f) - (_83 * 0.01055f)) - (_85 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _159 = exp2(log2(max(0.0f, (((_slopeParams.z * _108) * max(0.0f, (((_83 * 1.15297f) - (_84 * 0.12897f)) - (_85 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _160 = dot(float3(_127, _143, _159), float3(0.212671f, 0.71516f, 0.072169f));
    _164 = ((_127 - _160) * _powerParams.w) + _160;
    _167 = ((_143 - _160) * _powerParams.w) + _160;
    _170 = ((_159 - _160) * _powerParams.w) + _160;
    _177 = min(max(log2(mad(_170, 0.079223745f, mad(_167, 0.0784336f, (_164 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _184 = min(max(log2(mad(_170, 0.07916613f, mad(_167, 0.87846863f, (_164 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _191 = min(max(log2(mad(_170, 0.879143f, mad(_167, 0.0784336f, (_164 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _192 = _177 * 0.060606062f;
    _193 = _184 * 0.060606062f;
    _194 = _191 * 0.060606062f;
    _195 = _192 * _192;
    _196 = _193 * _193;
    _197 = _194 * _194;
    _213 = min(0.0f, (-0.0f - (((_177 * 0.0072181816f) + ((_195 * 0.4298f) + (((_195 * _195) * ((31.96f - (_177 * 2.4327273f)) + (_195 * 15.5f))) - ((_177 * 0.41624245f) * _195)))) + -0.00232f)));
    _229 = min(0.0f, (-0.0f - (((_184 * 0.0072181816f) + ((_196 * 0.4298f) + (((_196 * _196) * ((31.96f - (_184 * 2.4327273f)) + (_196 * 15.5f))) - ((_184 * 0.41624245f) * _196)))) + -0.00232f)));
    _245 = min(0.0f, (-0.0f - (((_191 * 0.0072181816f) + ((_197 * 0.4298f) + (((_197 * _197) * ((31.96f - (_191 * 2.4327273f)) + (_197 * 15.5f))) - ((_191 * 0.41624245f) * _197)))) + -0.00232f)));
    _246 = -0.0f - _213;
    _247 = -0.0f - _229;
    _248 = -0.0f - _245;
    _249 = dot(float3(_246, _247, _248), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _266 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _267 = -0.79999995f / _266;
      _268 = -1.2f / _266;
      _269 = 0.20000005f / _266;
      _272 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _275 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _279 = (_267 + 1.4f) + (_275 * (-0.39999998f - _267));
      _283 = (_268 + 1.6f) + (_275 * (-0.6f - _268));
      _287 = (_269 + 0.9f) + (_275 * (0.5f - _269));
      _304 = (lerp(_287, 1.4f, _272));  // [sem: blended]
      _305 = (lerp(_279, 1.0f, _272));  // [sem: blended]
      _306 = (lerp(_283, 1.2f, _272));  // [sem: blended]
    } else {
      _304 = 1.4f;  // [sem: blended]
      _305 = 1.0f;  // [sem: blended]
      _306 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _307 = 1.0f - _306;
    _319 = ((exp2(log2(((saturate((_213 * _213) * _246) * _307) + _306) * _246) * _305) - _249) * _304) + _249;
    _331 = ((exp2(log2(((saturate((_229 * _229) * _247) * _307) + _306) * _247) * _305) - _249) * _304) + _249;
    _343 = ((exp2(log2(((saturate((_245 * _245) * _248) * _307) + _306) * _248) * _305) - _249) * _304) + _249;
    _350 = saturate(exp2(log2(mad(_343, -0.09902974f, mad(_331, -0.09802088f, (_319 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _357 = saturate(exp2(log2(mad(_343, -0.098961174f, mad(_331, 1.1519032f, (_319 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _364 = saturate(exp2(log2(mad(_343, 1.1510737f, mad(_331, -0.09804345f, (_319 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _370 = 1.0f - abs(_etcParams.w);
      _371 = saturate(_etcParams.w);  // [sem: expr_sat]
      _373 = (_370 * _350) + _371;
      _375 = (_370 * _357) + _371;
      _377 = (_370 * _364) + _371;
      if (_colorGradingParams.w > 0.0f) {
        _382 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _399 = (((max(0.0f, (1.0f - _377)) - _377) * _382) + _377);
        _400 = (((max(0.0f, (1.0f - _375)) - _375) * _382) + _375);
        _401 = (((max(0.0f, (1.0f - _373)) - _373) * _382) + _373);
      } else {
        _399 = _377;
        _400 = _375;
        _401 = _373;
      }
      _403 = _userImageAdjust.y + 1.0f;
      _405 = _userImageAdjust.x + 0.5f;
      _408 = ((_401 + -0.5f) * _403) + _405;
      _411 = ((_400 + -0.5f) * _403) + _405;
      _414 = ((_399 + -0.5f) * _403) + _405;
      _420 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _455 = exp2(log2(saturate(mad(_colorBlind2.z, _414, mad(_colorBlind2.y, _411, (_colorBlind2.x * _408))))) * _420);
      _456 = exp2(log2(saturate(mad(_colorBlind1.z, _414, mad(_colorBlind1.y, _411, (_colorBlind1.x * _408))))) * _420);
      _457 = exp2(log2(saturate(mad(_colorBlind0.z, _414, mad(_colorBlind0.y, _411, (_colorBlind0.x * _408))))) * _420);
    } else {
      _455 = _364;
      _456 = _357;
      _457 = _350;
    }
  } else {
    _455 = _83;
    _456 = _84;
    _457 = _85;
  }
  if (_etcParams.y > 1.0f) {
    _462 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _465 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _471 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_462, _465), float2(_462, _465))));  // [sem: expr_sat]
    _476 = (_471 * _455);
    _477 = (_471 * _456);
    _478 = (_471 * _457);
  } else {
    _476 = _455;
    _477 = _456;
    _478 = _457;
  }
  if (_102 && (_etcParams.z > 0.0f)) {
    _508 = select((_478 <= 0.0031308f), (_478 * 12.92f), (((pow(_478, 0.41666666f)) * 1.055f) + -0.055f));
    _509 = select((_477 <= 0.0031308f), (_477 * 12.92f), (((pow(_477, 0.41666666f)) * 1.055f) + -0.055f));
    _510 = select((_476 <= 0.0031308f), (_476 * 12.92f), (((pow(_476, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _508 = _478;
    _509 = _477;
    _510 = _476;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _513 = (float)((uint)((uint)(_86)));
    if (!(_513 < _viewDir.w)) {
      if (!(!(_513 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _524 = 0.0f;
        _525 = 0.0f;
        _526 = 0.0f;
      } else {
        _524 = _508;
        _525 = _509;
        _526 = _510;
      }
    } else {
      _524 = 0.0f;
      _525 = 0.0f;
      _526 = 0.0f;
    }
  } else {
    _524 = _508;
    _525 = _509;
    _526 = _510;
  }
  SV_Target.x = _524;
  SV_Target.y = _525;
  SV_Target.z = _526;
  SV_Target.w = _99;
  return SV_Target;
}
