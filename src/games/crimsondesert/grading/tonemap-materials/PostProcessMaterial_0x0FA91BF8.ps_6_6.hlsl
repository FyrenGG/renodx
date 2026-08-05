struct PostProcessDrugStruct {
  float _panningSpeed;
  float _changeSpeed;
  float _panningWidth;
  float _distortionScale;
  float _distortionSpeed;
  float _distortionDensity;
  float _blendBias;
  float3 _colorTint;
  float _drugPPIntensity;
  float _centerMaskRadius;
  float _centerMaskHardness;
};

struct BindlessParameters_PostProcessDrug {
  PostProcessDrugStruct BindlessParameters_PostProcessDrug;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

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

typedef BindlessParameters_PostProcessDrug BindlessParameters_PostProcessDrug_t;
ConstantBuffer<BindlessParameters_PostProcessDrug_t> BindlessParameters_PostProcessDrug[] : register(b0, space100);

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
  float _20;
  float _21;
  float _33;
  float4 _36;
  int _42;
  float _50;
  int _53;
  float _61;
  float _62;
  float _68;
  int _71;
  float _79;
  int _82;
  float _90;
  int _93;
  float _101;
  int _104;
  float _112;
  float _115;
  float _116;
  float4 _123;
  float4 _134;
  int _140;
  float _148;
  float _155;
  float _156;
  float _159;
  float _162;
  float _165;
  float4 _183;
  float _190;
  int _193;
  float _201;
  float _205;
  float _209;
  int _212;
  float _220;
  int _223;
  float _231;
  int _234;
  float _242;
  int _245;
  float _253;
  float _265;
  float _280;
  float _295;
  float _310;
  uint _311;
  float _328;
  float _533;
  float _534;
  float _535;
  float _628;
  float _629;
  float _630;
  float _684;
  float _685;
  float _686;
  float _705;
  float _706;
  float _707;
  float _737;
  float _738;
  float _739;
  float _753;
  float _754;
  float _755;
  bool _331;
  float _337;
  float _356;
  float _372;
  float _388;
  float _389;
  float _393;
  float _396;
  float _399;
  float _406;
  float _413;
  float _420;
  float _421;
  float _422;
  float _423;
  float _424;
  float _425;
  float _426;
  float _442;
  float _458;
  float _474;
  float _475;
  float _476;
  float _477;
  float _478;
  float _495;
  float _496;
  float _497;
  float _498;
  float _501;
  float _504;
  float _508;
  float _512;
  float _516;
  float _536;
  float _548;
  float _560;
  float _572;
  float _579;
  float _586;
  float _593;
  float _599;
  float _600;
  float _602;
  float _604;
  float _606;
  float _611;
  float _632;
  float _634;
  float _637;
  float _640;
  float _643;
  float _649;
  float _691;
  float _694;
  float _700;
  float _742;
  _20 = TEXCOORD.x + -0.5f;
  _21 = TEXCOORD.y + -0.5f;
  // [sem: expr_sat]
  _33 = saturate(min(((0.5f - abs(_20)) * _srcTargetSizeAndInv.x), (_srcTargetSizeAndInv.y * (0.5f - abs(_21)))) * 0.05f);
  _36 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _42 = WaveReadLaneFirst(_materialIndex);
  _50 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_42 < (uint)170000), _42, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._distortionDensity);
  _53 = WaveReadLaneFirst(_materialIndex);
  _61 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_53 < (uint)170000), _53, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._distortionScale);
  _62 = _61 * 0.01f;
  _68 = cos(_time.x + (_50 * TEXCOORD.x)) * _62;
  _71 = WaveReadLaneFirst(_materialIndex);
  _79 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_71 < (uint)170000), _71, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._distortionSpeed);
  _82 = WaveReadLaneFirst(_materialIndex);
  _90 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_82 < (uint)170000), _82, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._panningWidth);
  _93 = WaveReadLaneFirst(_materialIndex);
  _101 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_93 < (uint)170000), _93, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._blendBias);
  _104 = WaveReadLaneFirst(_materialIndex);
  _112 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_104 < (uint)170000), _104, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._panningSpeed);
  _115 = _time.x * _112;
  _116 = _90 * -0.01f;
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _123 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((sin(_115 * 0.8975979f) * _116) + TEXCOORD.y)));
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _134 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (((_90 * 0.01f) * sin(_115 * 2.0943952f)) + TEXCOORD.y)));
  _140 = WaveReadLaneFirst(_materialIndex);
  _148 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_140 < (uint)170000), _140, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._changeSpeed);
  _155 = min(max((sin(_time.x * _148) * 2.0f), 0.0f), 1.0f);
  _156 = _155 * _101;
  _159 = (_156 * (_134.x - _123.x)) + _123.x;
  _162 = (_156 * (_134.y - _123.y)) + _123.y;
  _165 = (_156 * (_134.z - _123.z)) + _123.z;
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _183 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((((_68 * _33) + TEXCOORD.x) + (sin(_115 * 1.2566371f) * _116)), (((_62 * _33) * sin((_time.x * _79) + (((TEXCOORD.y + TEXCOORD.x) + _68) * _50))) + TEXCOORD.y)));
  _190 = min(max((1.0f - _155), 0.0f), 1.0f) * _101;
  _193 = WaveReadLaneFirst(_materialIndex);
  _201 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_193 < (uint)170000), _193, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._colorTint.x);
  _205 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_193 < (uint)170000), _193, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._colorTint.y);
  _209 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_193 < (uint)170000), _193, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._colorTint.z);
  _212 = WaveReadLaneFirst(_materialIndex);
  _220 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_212 < (uint)170000), _212, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._drugPPIntensity);
  _223 = WaveReadLaneFirst(_materialIndex);
  _231 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_223 < (uint)170000), _223, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._centerMaskRadius);
  _234 = WaveReadLaneFirst(_materialIndex);
  _242 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_234 < (uint)170000), _234, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._centerMaskHardness);
  _245 = WaveReadLaneFirst(_materialIndex);
  _253 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_245 < (uint)170000), _245, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._centerMaskRadius);
  _265 = saturate((sqrt((_21 * _21) + (_20 * _20)) - _231) / max(0.001f, (saturate(_253 * 2.0f) * _242))) * _33;
  _280 = (((select((_201 < 0.04045f), (_201 * 0.07739938f), exp2(log2((_201 + 0.055f) * 0.94786733f) * 2.4f)) * ((_190 * (_183.x - _159)) + _159)) - _36.x) * _265) + _36.x;
  _295 = (((select((_205 < 0.04045f), (_205 * 0.07739938f), exp2(log2((_205 + 0.055f) * 0.94786733f) * 2.4f)) * ((_190 * (_183.y - _162)) + _162)) - _36.y) * _265) + _36.y;
  _310 = (((select((_209 < 0.04045f), (_209 * 0.07739938f), exp2(log2((_209 + 0.055f) * 0.94786733f) * 2.4f)) * ((_190 * (_183.z - _165)) + _165)) - _36.z) * _265) + _36.z;
  _311 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _328 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _311, 0)))).x) & 127)))) + 0.5f);
  } else {
    _328 = _postProcessParams.x;
  }
  _331 = (_localToneMappingParams.w > 0.0f);
  if (_331) {
    _337 = _exposure0.x * _userImageAdjust.z;
    _356 = exp2(_powerParams.x * log2(max(0.0f, (((_337 * max(0.0f, (((_280 * 1.70505f) - (_295 * 0.62179f)) - (_310 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _372 = exp2(log2(max(0.0f, (((_slopeParams.y * _337) * max(0.0f, (((_295 * 1.1408f) - (_280 * 0.13026f)) - (_310 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _388 = exp2(log2(max(0.0f, (((_slopeParams.z * _337) * max(0.0f, (((_280 * -0.024f) - (_295 * 0.12897f)) + (_310 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _389 = dot(float3(_356, _372, _388), float3(0.212671f, 0.71516f, 0.072169f));
    _393 = ((_356 - _389) * _powerParams.w) + _389;
    _396 = ((_372 - _389) * _powerParams.w) + _389;
    _399 = ((_388 - _389) * _powerParams.w) + _389;
    _406 = min(max(log2(mad(_399, 0.079223745f, mad(_396, 0.0784336f, (_393 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _413 = min(max(log2(mad(_399, 0.07916613f, mad(_396, 0.87846863f, (_393 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _420 = min(max(log2(mad(_399, 0.879143f, mad(_396, 0.0784336f, (_393 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _421 = _406 * 0.060606062f;
    _422 = _413 * 0.060606062f;
    _423 = _420 * 0.060606062f;
    _424 = _421 * _421;
    _425 = _422 * _422;
    _426 = _423 * _423;
    _442 = min(0.0f, (-0.0f - (((_406 * 0.0072181816f) + ((_424 * 0.4298f) + (((_424 * _424) * ((31.96f - (_406 * 2.4327273f)) + (_424 * 15.5f))) - ((_406 * 0.41624245f) * _424)))) + -0.00232f)));
    _458 = min(0.0f, (-0.0f - (((_413 * 0.0072181816f) + ((_425 * 0.4298f) + (((_425 * _425) * ((31.96f - (_413 * 2.4327273f)) + (_425 * 15.5f))) - ((_413 * 0.41624245f) * _425)))) + -0.00232f)));
    _474 = min(0.0f, (-0.0f - (((_420 * 0.0072181816f) + ((_426 * 0.4298f) + (((_426 * _426) * ((31.96f - (_420 * 2.4327273f)) + (_426 * 15.5f))) - ((_420 * 0.41624245f) * _426)))) + -0.00232f)));
    _475 = -0.0f - _442;
    _476 = -0.0f - _458;
    _477 = -0.0f - _474;
    _478 = dot(float3(_475, _476, _477), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _495 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _496 = -0.79999995f / _495;
      _497 = -1.2f / _495;
      _498 = 0.20000005f / _495;
      _501 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _504 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _508 = (_496 + 1.4f) + (_504 * (-0.39999998f - _496));
      _512 = (_497 + 1.6f) + (_504 * (-0.6f - _497));
      _516 = (_498 + 0.9f) + (_504 * (0.5f - _498));
      _533 = (lerp(_512, 1.2f, _501));  // [sem: blended]
      _534 = (lerp(_508, 1.0f, _501));  // [sem: blended]
      _535 = (lerp(_516, 1.4f, _501));  // [sem: blended]
    } else {
      _533 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _534 = 1.0f;  // [sem: blended]
      _535 = 1.4f;  // [sem: blended]
    }
    _536 = 1.0f - _533;
    _548 = ((exp2(log2(((saturate((_442 * _442) * _475) * _536) + _533) * _475) * _534) - _478) * _535) + _478;
    _560 = ((exp2(log2(((saturate((_458 * _458) * _476) * _536) + _533) * _476) * _534) - _478) * _535) + _478;
    _572 = ((exp2(log2(((saturate((_474 * _474) * _477) * _536) + _533) * _477) * _534) - _478) * _535) + _478;
    _579 = saturate(exp2(log2(mad(_572, -0.09902974f, mad(_560, -0.09802088f, (_548 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _586 = saturate(exp2(log2(mad(_572, -0.098961174f, mad(_560, 1.1519032f, (_548 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _593 = saturate(exp2(log2(mad(_572, 1.1510737f, mad(_560, -0.09804345f, (_548 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _599 = 1.0f - abs(_etcParams.w);
      _600 = saturate(_etcParams.w);  // [sem: expr_sat]
      _602 = (_599 * _579) + _600;
      _604 = (_599 * _586) + _600;
      _606 = (_599 * _593) + _600;
      if (_colorGradingParams.w > 0.0f) {
        _611 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _628 = (((max(0.0f, (1.0f - _602)) - _602) * _611) + _602);
        _629 = (((max(0.0f, (1.0f - _604)) - _604) * _611) + _604);
        _630 = (((max(0.0f, (1.0f - _606)) - _606) * _611) + _606);
      } else {
        _628 = _602;
        _629 = _604;
        _630 = _606;
      }
      _632 = _userImageAdjust.y + 1.0f;
      _634 = _userImageAdjust.x + 0.5f;
      _637 = ((_628 + -0.5f) * _632) + _634;
      _640 = ((_629 + -0.5f) * _632) + _634;
      _643 = ((_630 + -0.5f) * _632) + _634;
      _649 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _684 = exp2(log2(saturate(mad(_colorBlind0.z, _643, mad(_colorBlind0.y, _640, (_colorBlind0.x * _637))))) * _649);
      _685 = exp2(log2(saturate(mad(_colorBlind1.z, _643, mad(_colorBlind1.y, _640, (_colorBlind1.x * _637))))) * _649);
      _686 = exp2(log2(saturate(mad(_colorBlind2.z, _643, mad(_colorBlind2.y, _640, (_colorBlind2.x * _637))))) * _649);
    } else {
      _684 = _579;
      _685 = _586;
      _686 = _593;
    }
  } else {
    _684 = _280;
    _685 = _295;
    _686 = _310;
  }
  if (_etcParams.y > 1.0f) {
    _691 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _694 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _700 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_691, _694), float2(_691, _694))));  // [sem: expr_sat]
    _705 = (_700 * _684);
    _706 = (_700 * _685);
    _707 = (_700 * _686);
  } else {
    _705 = _684;
    _706 = _685;
    _707 = _686;
  }
  if (_331 && (_etcParams.z > 0.0f)) {
    _737 = select((_705 <= 0.0031308f), (_705 * 12.92f), (((pow(_705, 0.41666666f)) * 1.055f) + -0.055f));
    _738 = select((_706 <= 0.0031308f), (_706 * 12.92f), (((pow(_706, 0.41666666f)) * 1.055f) + -0.055f));
    _739 = select((_707 <= 0.0031308f), (_707 * 12.92f), (((pow(_707, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _737 = _705;
    _738 = _706;
    _739 = _707;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _742 = (float)((uint)((uint)(_311)));
    if (!(_742 < _viewDir.w)) {
      if (!(!(_742 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _753 = 0.0f;
        _754 = 0.0f;
        _755 = 0.0f;
      } else {
        _753 = _737;
        _754 = _738;
        _755 = _739;
      }
    } else {
      _753 = 0.0f;
      _754 = 0.0f;
      _755 = 0.0f;
    }
  } else {
    _753 = _737;
    _754 = _738;
    _755 = _739;
  }
  SV_Target.x = _753;
  SV_Target.y = _754;
  SV_Target.z = _755;
  SV_Target.w = _328;
  return SV_Target;
}
