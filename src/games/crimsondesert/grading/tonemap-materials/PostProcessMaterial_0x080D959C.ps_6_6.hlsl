struct PostProcessZoneStruct {
  float3 _mainPosition;
  float _radius;
  float _ratio;
  float _progress;
  float _edgeSmoothness;
  float _edgeWidth;
  uint _maskColor;
  uint _noiseTex;
};

struct BindlessParameters_PostProcessZone {
  PostProcessZoneStruct BindlessParameters_PostProcessZone;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

typedef BindlessParameters_PostProcessZone BindlessParameters_PostProcessZone_t;
ConstantBuffer<BindlessParameters_PostProcessZone_t> BindlessParameters_PostProcessZone[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _20;
  float _25;
  float _26;
  float _27;
  float _32;
  float _44;
  int _47;
  float _55;
  float _59;
  float _63;
  float _77;
  float _87;
  float _98;
  int _101;
  float _109;
  int _112;
  float _120;
  int _123;
  float _131;
  int _134;
  float _142;
  float _157;
  float _158;
  float _159;
  float _160;
  uint _161;
  float _175;
  float _380;
  float _381;
  float _382;
  float _475;
  float _476;
  float _477;
  float _531;
  float _532;
  float _533;
  float _549;
  float _550;
  float _551;
  float _581;
  float _582;
  float _583;
  float _597;
  float _598;
  float _599;
  bool _178;
  float _184;
  float _203;
  float _219;
  float _235;
  float _236;
  float _240;
  float _243;
  float _246;
  float _253;
  float _260;
  float _267;
  float _268;
  float _269;
  float _270;
  float _271;
  float _272;
  float _273;
  float _289;
  float _305;
  float _321;
  float _322;
  float _323;
  float _324;
  float _325;
  float _342;
  float _343;
  float _344;
  float _345;
  float _348;
  float _351;
  float _355;
  float _359;
  float _363;
  float _383;
  float _395;
  float _407;
  float _419;
  float _426;
  float _433;
  float _440;
  float _446;
  float _447;
  float _449;
  float _451;
  float _453;
  float _458;
  float _479;
  float _481;
  float _484;
  float _487;
  float _490;
  float _496;
  float _536;
  float _538;
  float _544;
  float _586;
  _20 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _25 = (TEXCOORD.x * 2.0f) + -1.0f;
  _26 = TEXCOORD.y * 2.0f;
  _27 = 1.0f - _26;
  _32 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _44 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _32, mad((_invViewProj[3].y), _27, ((_invViewProj[3].x) * _25)));
  _47 = WaveReadLaneFirst(_materialIndex);
  _55 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_47 < (uint)170000), _47, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._mainPosition.x);
  _59 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_47 < (uint)170000), _47, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._mainPosition.y);
  _63 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_47 < (uint)170000), _47, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._mainPosition.z);
  _77 = _55 - (((_invViewProj[0].w) + mad((_invViewProj[0].z), _32, mad((_invViewProj[0].y), _27, ((_invViewProj[0].x) * _25)))) / _44);
  _87 = _63 - ((mad((_invViewProj[2].z), _32, mad((_invViewProj[2].y), _27, ((_invViewProj[2].x) * _25))) + (_invViewProj[2].w)) / _44);
  _98 = (_59 - ((mad((_invViewProj[1].z), _32, mad((_invViewProj[1].y), _27, ((_invViewProj[1].x) * _25))) + (_invViewProj[1].w)) / _44)) + 1.6f;
  _101 = WaveReadLaneFirst(_materialIndex);
  _109 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_101 < (uint)170000), _101, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._radius);
  _112 = WaveReadLaneFirst(_materialIndex);
  _120 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_112 < (uint)170000), _112, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._progress);
  _123 = WaveReadLaneFirst(_materialIndex);
  _131 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_123 < (uint)170000), _123, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._edgeSmoothness);
  _134 = WaveReadLaneFirst(_materialIndex);
  _142 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_134 < (uint)170000), _134, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._ratio);
  // [sem: expr_sat]
  _157 = saturate(((min(max((1.0f - saturate(exp2(log2(sqrt(dot(float3(_77, _98, _87), float3(_77, _98, _87))) - (_120 * _109)) * _131))), 0.0f), 1.0f) + -1.0f) * _142) + 1.0f);
  _158 = _157 * _20.x;
  _159 = _157 * _20.y;
  _160 = _157 * _20.z;
  _161 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _175 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _161, 0)))).x) & 127)))) + 0.5f);
  } else {
    _175 = 1.0f;
  }
  _178 = (_localToneMappingParams.w > 0.0f);
  if (_178) {
    _184 = _exposure0.x * _userImageAdjust.z;
    _203 = exp2(_powerParams.x * log2(max(0.0f, (((_184 * max(0.0f, (((_158 * 1.70505f) - (_159 * 0.62179f)) - (_160 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _219 = exp2(log2(max(0.0f, (((_slopeParams.y * _184) * max(0.0f, (((_159 * 1.1408f) - (_158 * 0.13026f)) - (_160 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _235 = exp2(log2(max(0.0f, (((_slopeParams.z * _184) * max(0.0f, (((_158 * -0.024f) - (_159 * 0.12897f)) + (_160 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _236 = dot(float3(_203, _219, _235), float3(0.212671f, 0.71516f, 0.072169f));
    _240 = ((_203 - _236) * _powerParams.w) + _236;
    _243 = ((_219 - _236) * _powerParams.w) + _236;
    _246 = ((_235 - _236) * _powerParams.w) + _236;
    _253 = min(max(log2(mad(_246, 0.079223745f, mad(_243, 0.0784336f, (_240 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _260 = min(max(log2(mad(_246, 0.07916613f, mad(_243, 0.87846863f, (_240 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _267 = min(max(log2(mad(_246, 0.879143f, mad(_243, 0.0784336f, (_240 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _268 = _253 * 0.060606062f;
    _269 = _260 * 0.060606062f;
    _270 = _267 * 0.060606062f;
    _271 = _268 * _268;
    _272 = _269 * _269;
    _273 = _270 * _270;
    _289 = min(0.0f, (-0.0f - (((_253 * 0.0072181816f) + ((_271 * 0.4298f) + (((_271 * _271) * ((31.96f - (_253 * 2.4327273f)) + (_271 * 15.5f))) - ((_253 * 0.41624245f) * _271)))) + -0.00232f)));
    _305 = min(0.0f, (-0.0f - (((_260 * 0.0072181816f) + ((_272 * 0.4298f) + (((_272 * _272) * ((31.96f - (_260 * 2.4327273f)) + (_272 * 15.5f))) - ((_260 * 0.41624245f) * _272)))) + -0.00232f)));
    _321 = min(0.0f, (-0.0f - (((_267 * 0.0072181816f) + ((_273 * 0.4298f) + (((_273 * _273) * ((31.96f - (_267 * 2.4327273f)) + (_273 * 15.5f))) - ((_267 * 0.41624245f) * _273)))) + -0.00232f)));
    _322 = -0.0f - _289;
    _323 = -0.0f - _305;
    _324 = -0.0f - _321;
    _325 = dot(float3(_322, _323, _324), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _342 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _343 = -0.79999995f / _342;
      _344 = -1.2f / _342;
      _345 = 0.20000005f / _342;
      _348 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _351 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _355 = (_343 + 1.4f) + (_351 * (-0.39999998f - _343));
      _359 = (_344 + 1.6f) + (_351 * (-0.6f - _344));
      _363 = (_345 + 0.9f) + (_351 * (0.5f - _345));
      _380 = (lerp(_359, 1.2f, _348));  // [sem: blended]
      _381 = (lerp(_355, 1.0f, _348));  // [sem: blended]
      _382 = (lerp(_363, 1.4f, _348));  // [sem: blended]
    } else {
      _380 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _381 = 1.0f;  // [sem: blended]
      _382 = 1.4f;  // [sem: blended]
    }
    _383 = 1.0f - _380;
    _395 = ((exp2(log2(((saturate((_289 * _289) * _322) * _383) + _380) * _322) * _381) - _325) * _382) + _325;
    _407 = ((exp2(log2(((saturate((_305 * _305) * _323) * _383) + _380) * _323) * _381) - _325) * _382) + _325;
    _419 = ((exp2(log2(((saturate((_321 * _321) * _324) * _383) + _380) * _324) * _381) - _325) * _382) + _325;
    _426 = saturate(exp2(log2(mad(_419, -0.09902974f, mad(_407, -0.09802088f, (_395 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _433 = saturate(exp2(log2(mad(_419, -0.098961174f, mad(_407, 1.1519032f, (_395 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _440 = saturate(exp2(log2(mad(_419, 1.1510737f, mad(_407, -0.09804345f, (_395 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _446 = 1.0f - abs(_etcParams.w);
      _447 = saturate(_etcParams.w);  // [sem: expr_sat]
      _449 = (_446 * _426) + _447;
      _451 = (_446 * _433) + _447;
      _453 = (_446 * _440) + _447;
      if (_colorGradingParams.w > 0.0f) {
        _458 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _475 = (((max(0.0f, (1.0f - _449)) - _449) * _458) + _449);
        _476 = (((max(0.0f, (1.0f - _451)) - _451) * _458) + _451);
        _477 = (((max(0.0f, (1.0f - _453)) - _453) * _458) + _453);
      } else {
        _475 = _449;
        _476 = _451;
        _477 = _453;
      }
      _479 = _userImageAdjust.y + 1.0f;
      _481 = _userImageAdjust.x + 0.5f;
      _484 = ((_475 + -0.5f) * _479) + _481;
      _487 = ((_476 + -0.5f) * _479) + _481;
      _490 = ((_477 + -0.5f) * _479) + _481;
      _496 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _531 = exp2(log2(saturate(mad(_colorBlind0.z, _490, mad(_colorBlind0.y, _487, (_colorBlind0.x * _484))))) * _496);
      _532 = exp2(log2(saturate(mad(_colorBlind1.z, _490, mad(_colorBlind1.y, _487, (_colorBlind1.x * _484))))) * _496);
      _533 = exp2(log2(saturate(mad(_colorBlind2.z, _490, mad(_colorBlind2.y, _487, (_colorBlind2.x * _484))))) * _496);
    } else {
      _531 = _426;
      _532 = _433;
      _533 = _440;
    }
  } else {
    _531 = _158;
    _532 = _159;
    _533 = _160;
  }
  if (_etcParams.y > 1.0f) {
    _536 = abs(_25);
    _538 = abs(_26 + -1.0f);
    _544 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_536, _538), float2(_536, _538))));  // [sem: expr_sat]
    _549 = (_544 * _531);
    _550 = (_544 * _532);
    _551 = (_544 * _533);
  } else {
    _549 = _531;
    _550 = _532;
    _551 = _533;
  }
  if (_178 && (_etcParams.z > 0.0f)) {
    _581 = select((_549 <= 0.0031308f), (_549 * 12.92f), (((pow(_549, 0.41666666f)) * 1.055f) + -0.055f));
    _582 = select((_550 <= 0.0031308f), (_550 * 12.92f), (((pow(_550, 0.41666666f)) * 1.055f) + -0.055f));
    _583 = select((_551 <= 0.0031308f), (_551 * 12.92f), (((pow(_551, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _581 = _549;
    _582 = _550;
    _583 = _551;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _586 = (float)((uint)((uint)(_161)));
    if (!(_586 < _viewDir.w)) {
      if (!(!(_586 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _597 = 0.0f;
        _598 = 0.0f;
        _599 = 0.0f;
      } else {
        _597 = _581;
        _598 = _582;
        _599 = _583;
      }
    } else {
      _597 = 0.0f;
      _598 = 0.0f;
      _599 = 0.0f;
    }
  } else {
    _597 = _581;
    _598 = _582;
    _599 = _583;
  }
  SV_Target.x = _597;
  SV_Target.y = _598;
  SV_Target.z = _599;
  SV_Target.w = _175;
  return SV_Target;
}
