struct PostProcessHousingStruct {
  float _ratio;
  float3 _pivotPosition;
  float4 _rectMinMax;
};

struct BindlessParameters_PostProcessHousing {
  PostProcessHousingStruct BindlessParameters_PostProcessHousing;
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

typedef BindlessParameters_PostProcessHousing BindlessParameters_PostProcessHousing_t;
ConstantBuffer<BindlessParameters_PostProcessHousing_t> BindlessParameters_PostProcessHousing[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _22;
  float _28;
  float _31;
  float _34;
  float _43;
  float _52;
  float _61;
  float _63;
  float _64;
  float _65;
  float _70;
  float _82;
  float _91;
  float _100;
  float _101;
  float _103;
  float _104;
  float _106;
  int _109;
  float _117;
  float _121;
  float _125;
  int _128;
  float _136;
  float _140;
  float _144;
  float _148;
  bool _177;
  float _182;
  float _183;
  float _184;
  float _201;
  float _406;
  float _407;
  float _408;
  float _501;
  float _502;
  float _503;
  float _557;
  float _558;
  float _559;
  float _575;
  float _576;
  float _577;
  float _607;
  float _608;
  float _609;
  float _623;
  float _624;
  float _625;
  uint _185;
  bool _204;
  float _210;
  float _229;
  float _245;
  float _261;
  float _262;
  float _266;
  float _269;
  float _272;
  float _279;
  float _286;
  float _293;
  float _294;
  float _295;
  float _296;
  float _297;
  float _298;
  float _299;
  float _315;
  float _331;
  float _347;
  float _348;
  float _349;
  float _350;
  float _351;
  float _368;
  float _369;
  float _370;
  float _371;
  float _374;
  float _377;
  float _381;
  float _385;
  float _389;
  float _409;
  float _421;
  float _433;
  float _445;
  float _452;
  float _459;
  float _466;
  float _472;
  float _473;
  float _475;
  float _477;
  float _479;
  float _484;
  float _505;
  float _507;
  float _510;
  float _513;
  float _516;
  float _522;
  float _562;
  float _564;
  float _570;
  float _612;
  float _629;
  float _633;
  float _637;
  _22 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _28 = (pow(_22.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _31 = (pow(_22.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _34 = (pow(_22.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _43 = exp2(log2(max(0.0f, (_28 + -0.8359375f)) / (18.851562f - (_28 * 18.6875f))) * 6.277395f) * 10000.0f;
  _52 = exp2(log2(max(0.0f, (_31 + -0.8359375f)) / (18.851562f - (_31 * 18.6875f))) * 6.277395f) * 10000.0f;
  _61 = exp2(log2(max(0.0f, (_34 + -0.8359375f)) / (18.851562f - (_34 * 18.6875f))) * 6.277395f) * 10000.0f;
  _63 = (TEXCOORD.x * 2.0f) + -1.0f;
  _64 = TEXCOORD.y * 2.0f;
  _65 = 1.0f - _64;
  _70 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _82 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _70, mad((_invViewProj[3].y), _65, ((_invViewProj[3].x) * _63)));
  _91 = (mad((_invViewProj[0].z), _70, mad((_invViewProj[0].y), _65, ((_invViewProj[0].x) * _63))) + (_invViewProj[0].w)) / _82;
  _100 = (mad((_invViewProj[2].z), _70, mad((_invViewProj[2].y), _65, ((_invViewProj[2].x) * _63))) + (_invViewProj[2].w)) / _82;
  _101 = abs(_91);
  _103 = frac(abs(_101));
  _104 = abs(_100);
  _106 = frac(abs(_104));
  _109 = WaveReadLaneFirst(_materialIndex);
  _117 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_109 < (uint)170000), _109, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._pivotPosition.x);
  _121 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_109 < (uint)170000), _109, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._pivotPosition.y);
  _125 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_109 < (uint)170000), _109, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._pivotPosition.z);
  _128 = WaveReadLaneFirst(_materialIndex);
  _136 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_128 < (uint)170000), _128, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._rectMinMax.x);
  _140 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_128 < (uint)170000), _128, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._rectMinMax.y);
  _144 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_128 < (uint)170000), _128, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._rectMinMax.z);
  _148 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_128 < (uint)170000), _128, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._rectMinMax.w);
  if (((_91 > (_136 + _117)) && (_100 > (_140 + _125))) && (_91 < (_144 + _117))) {
    if (_100 < (_148 + _125)) {
      if (!(abs(1.0f - select((_104 >= (-0.0f - _104)), _106, (-0.0f - _106))) < 0.03125f)) {
        _177 = (abs(1.0f - select((_101 >= (-0.0f - _101)), _103, (-0.0f - _103))) < 0.03125f);
      } else {
        _177 = true;
      }
    } else {
      _177 = false;
    }
    _182 = select(_177, 256.0f, _43);
    _183 = select(_177, 256.0f, _52);
    _184 = select(_177, 256.0f, _61);
  } else {
    _182 = _43;
    _183 = _52;
    _184 = _61;
  }
  _185 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _201 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _185, 0)))).x) & 127)))) + 0.5f);
  } else {
    _201 = _postProcessParams.x;
  }
  _204 = (_localToneMappingParams.w > 0.0f);
  if (_204) {
    _210 = _exposure0.x * _userImageAdjust.z;
    _229 = exp2(_powerParams.x * log2(max(0.0f, (((_210 * max(0.0f, (((_182 * 1.70505f) - (_183 * 0.62179f)) - (_184 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _245 = exp2(log2(max(0.0f, (((_slopeParams.y * _210) * max(0.0f, (((_183 * 1.1408f) - (_182 * 0.13026f)) - (_184 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _261 = exp2(log2(max(0.0f, (((_slopeParams.z * _210) * max(0.0f, (((_182 * -0.024f) - (_183 * 0.12897f)) + (_184 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _262 = dot(float3(_229, _245, _261), float3(0.212671f, 0.71516f, 0.072169f));
    _266 = ((_229 - _262) * _powerParams.w) + _262;
    _269 = ((_245 - _262) * _powerParams.w) + _262;
    _272 = ((_261 - _262) * _powerParams.w) + _262;
    _279 = min(max(log2(mad(_272, 0.079223745f, mad(_269, 0.0784336f, (_266 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _286 = min(max(log2(mad(_272, 0.07916613f, mad(_269, 0.87846863f, (_266 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _293 = min(max(log2(mad(_272, 0.879143f, mad(_269, 0.0784336f, (_266 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _294 = _279 * 0.060606062f;
    _295 = _286 * 0.060606062f;
    _296 = _293 * 0.060606062f;
    _297 = _294 * _294;
    _298 = _295 * _295;
    _299 = _296 * _296;
    _315 = min(0.0f, (-0.0f - (((_279 * 0.0072181816f) + ((_297 * 0.4298f) + (((_297 * _297) * ((31.96f - (_279 * 2.4327273f)) + (_297 * 15.5f))) - ((_279 * 0.41624245f) * _297)))) + -0.00232f)));
    _331 = min(0.0f, (-0.0f - (((_286 * 0.0072181816f) + ((_298 * 0.4298f) + (((_298 * _298) * ((31.96f - (_286 * 2.4327273f)) + (_298 * 15.5f))) - ((_286 * 0.41624245f) * _298)))) + -0.00232f)));
    _347 = min(0.0f, (-0.0f - (((_293 * 0.0072181816f) + ((_299 * 0.4298f) + (((_299 * _299) * ((31.96f - (_293 * 2.4327273f)) + (_299 * 15.5f))) - ((_293 * 0.41624245f) * _299)))) + -0.00232f)));
    _348 = -0.0f - _315;
    _349 = -0.0f - _331;
    _350 = -0.0f - _347;
    _351 = dot(float3(_348, _349, _350), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _368 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _369 = -0.79999995f / _368;
      _370 = -1.2f / _368;
      _371 = 0.20000005f / _368;
      _374 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _377 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _381 = (_369 + 1.4f) + (_377 * (-0.39999998f - _369));
      _385 = (_370 + 1.6f) + (_377 * (-0.6f - _370));
      _389 = (_371 + 0.9f) + (_377 * (0.5f - _371));
      _406 = (lerp(_385, 1.2f, _374));  // [sem: blended]
      _407 = (lerp(_381, 1.0f, _374));  // [sem: blended]
      _408 = (lerp(_389, 1.4f, _374));  // [sem: blended]
    } else {
      _406 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _407 = 1.0f;  // [sem: blended]
      _408 = 1.4f;  // [sem: blended]
    }
    _409 = 1.0f - _406;
    _421 = ((exp2(log2(((saturate((_315 * _315) * _348) * _409) + _406) * _348) * _407) - _351) * _408) + _351;
    _433 = ((exp2(log2(((saturate((_331 * _331) * _349) * _409) + _406) * _349) * _407) - _351) * _408) + _351;
    _445 = ((exp2(log2(((saturate((_347 * _347) * _350) * _409) + _406) * _350) * _407) - _351) * _408) + _351;
    _452 = saturate(exp2(log2(mad(_445, -0.09902974f, mad(_433, -0.09802088f, (_421 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _459 = saturate(exp2(log2(mad(_445, -0.098961174f, mad(_433, 1.1519032f, (_421 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _466 = saturate(exp2(log2(mad(_445, 1.1510737f, mad(_433, -0.09804345f, (_421 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _472 = 1.0f - abs(_etcParams.w);
      _473 = saturate(_etcParams.w);  // [sem: expr_sat]
      _475 = (_472 * _452) + _473;
      _477 = (_472 * _459) + _473;
      _479 = (_472 * _466) + _473;
      if (_colorGradingParams.w > 0.0f) {
        _484 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _501 = (((max(0.0f, (1.0f - _475)) - _475) * _484) + _475);
        _502 = (((max(0.0f, (1.0f - _477)) - _477) * _484) + _477);
        _503 = (((max(0.0f, (1.0f - _479)) - _479) * _484) + _479);
      } else {
        _501 = _475;
        _502 = _477;
        _503 = _479;
      }
      _505 = _userImageAdjust.y + 1.0f;
      _507 = _userImageAdjust.x + 0.5f;
      _510 = ((_501 + -0.5f) * _505) + _507;
      _513 = ((_502 + -0.5f) * _505) + _507;
      _516 = ((_503 + -0.5f) * _505) + _507;
      _522 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _557 = exp2(log2(saturate(mad(_colorBlind0.z, _516, mad(_colorBlind0.y, _513, (_colorBlind0.x * _510))))) * _522);
      _558 = exp2(log2(saturate(mad(_colorBlind1.z, _516, mad(_colorBlind1.y, _513, (_colorBlind1.x * _510))))) * _522);
      _559 = exp2(log2(saturate(mad(_colorBlind2.z, _516, mad(_colorBlind2.y, _513, (_colorBlind2.x * _510))))) * _522);
    } else {
      _557 = _452;
      _558 = _459;
      _559 = _466;
    }
  } else {
    _557 = _182;
    _558 = _183;
    _559 = _184;
  }
  if (_etcParams.y > 1.0f) {
    _562 = abs(_63);
    _564 = abs(_64 + -1.0f);
    _570 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_562, _564), float2(_562, _564))));  // [sem: expr_sat]
    _575 = (_570 * _557);
    _576 = (_570 * _558);
    _577 = (_570 * _559);
  } else {
    _575 = _557;
    _576 = _558;
    _577 = _559;
  }
  if (_204 && (_etcParams.z > 0.0f)) {
    _607 = select((_575 <= 0.0031308f), (_575 * 12.92f), (((pow(_575, 0.41666666f)) * 1.055f) + -0.055f));
    _608 = select((_576 <= 0.0031308f), (_576 * 12.92f), (((pow(_576, 0.41666666f)) * 1.055f) + -0.055f));
    _609 = select((_577 <= 0.0031308f), (_577 * 12.92f), (((pow(_577, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _607 = _575;
    _608 = _576;
    _609 = _577;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _612 = (float)((uint)((uint)(_185)));
    if (!(_612 < _viewDir.w)) {
      if (!(!(_612 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _623 = 0.0f;
        _624 = 0.0f;
        _625 = 0.0f;
      } else {
        _623 = _607;
        _624 = _608;
        _625 = _609;
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
  _629 = exp2(log2(_623 * 0.0001f) * 0.15930176f);
  _633 = exp2(log2(_624 * 0.0001f) * 0.15930176f);
  _637 = exp2(log2(_625 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_629 * 18.6875f) + 1.0f)) * ((_629 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_633 * 18.6875f) + 1.0f)) * ((_633 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_637 * 18.6875f) + 1.0f)) * ((_637 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _201;
  return SV_Target;
}
