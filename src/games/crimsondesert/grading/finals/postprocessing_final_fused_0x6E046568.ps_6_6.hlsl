Texture3D<float4> __3__36__0__0__g_displayRenderingTransformLUT : register(t155, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

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

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointBlackBorder : register(s11, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _17;
  float _40;
  float _41;
  float _85;
  float _86;
  float _87;
  float _654;
  float _655;
  float _656;
  float _689;
  float _690;
  float _691;
  float _774;
  float _51;
  float _52;
  float _56;
  float _61;
  float _65;
  float _70;
  float _74;
  float _80;
  uint _93;
  uint _94;
  float _99;
  float _129;
  float _131;
  float _133;
  float _147;
  float _148;
  float _149;
  float _151;
  float _170;
  float _171;
  float _172;
  float4 _202;
  float _207;
  float _215;
  float4 _222;
  float4 _227;
  float4 _232;
  float4 _237;
  float _274;
  float _275;
  float _276;
  float _277;
  float _296;
  float _297;
  float _298;
  float4 _326;
  float _363;
  float _364;
  float _365;
  float _366;
  float _385;
  float _386;
  float _387;
  float4 _415;
  float _452;
  float _453;
  float _454;
  float _455;
  float _474;
  float _475;
  float _476;
  float4 _504;
  float _541;
  float _542;
  float _543;
  float _544;
  float _563;
  float _564;
  float _565;
  float4 _593;
  float _604;
  float _611;
  float _614;
  float _636;
  float _637;
  float _638;
  float _643;
  float _644;
  float _645;
  float _646;
  float _660;
  float _664;
  float _665;
  float _666;
  float _667;
  float _672;
  float _698;
  float _699;
  float _700;
  float _726;
  float _727;
  float _728;
  float _756;
  float _759;
  float _760;
  float _777;
  float _778;
  float _782;
  float _792;
  float _793;
  float _794;
  bool _827;
  _17 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _40 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
  } else {
    _40 = _17.x;
    _41 = _17.z;
  }
  if (_slopeParams.w > 0.0f) {
    _51 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _52 = _51 * 0.7692308f;
    _56 = frac(abs(_52));
    _61 = _51 * 0.08130081f;
    _65 = frac(abs(_61));
    _70 = ((select((_61 >= (-0.0f - _61)), _65, (-0.0f - _65)) * 1230.0f) + 10.0f) * ((select((_52 >= (-0.0f - _52)), _56, (-0.0f - _56)) * 13.0f) + 1.0f);
    _74 = frac(abs(_70));
    _80 = ((0.0075000525f - (select((_70 >= (-0.0f - _70)), _74, (-0.0f - _74)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _85 = (_80 * _40);
    _86 = (_80 * _17.y);
    _87 = (_80 * _41);
  } else {
    _85 = _40;
    _86 = _17.y;
    _87 = _41;
  }
  _93 = (uint)(_screenSizeAndInvSize.x * TEXCOORD.x);
  _94 = (uint)(_screenSizeAndInvSize.y * TEXCOORD.y);
  _99 = _userImageAdjust.z * _exposure0.x;
  _129 = _99 * _slopeParams.x;
  _131 = _99 * _slopeParams.y;
  _133 = _99 * _slopeParams.z;
  _147 = exp2(log2(max(0.0f, (_offsetParams.x + (_129 * max(0.0f, (((_85 * 1.70505f) - (_86 * 0.62179f)) - (_87 * 0.08326f))))))) * _powerParams.x);
  _148 = exp2(log2(max(0.0f, (_offsetParams.y + (_131 * max(0.0f, (((_86 * 1.1408f) - (_85 * 0.13026f)) - (_87 * 0.01055f))))))) * _powerParams.y);
  _149 = exp2(log2(max(0.0f, ((_133 * max(0.0f, (((_85 * -0.024f) - (_86 * 0.12897f)) + (_87 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _151 = dot(float3(_147, _148, _149), float3(0.212671f, 0.71516f, 0.072169f));
  _170 = exp2(log2((lerp(_151, _147, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _171 = exp2(log2((lerp(_151, _148, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _172 = exp2(log2((lerp(_151, _149, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
  _202 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_170 * 18.6875f) + 1.0f)) * ((_170 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_171 * 18.6875f) + 1.0f)) * ((_171 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_172 * 18.6875f) + 1.0f)) * ((_172 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
  _207 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_207.x < 1e-07f) || (_207.x == 1.0f))) {
    _215 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _222 = __3__36__0__0__g_sceneColor.Load(int3(_93, ((int)((uint)((uint)(_94)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _227 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_93)) + (uint)(-1))), _94, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _232 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_93)) + (uint)(1))), _94, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _237 = __3__36__0__0__g_sceneColor.Load(int3(_93, ((int)((uint)((uint)(_94)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _274 = exp2(log2(max(0.0f, ((_129 * max(0.0f, (((_222.x * 1.70505f) - (_222.y * 0.62179f)) - (_222.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _275 = exp2(log2(max(0.0f, ((_131 * max(0.0f, (((_222.y * 1.1408f) - (_222.x * 0.13026f)) - (_222.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _276 = exp2(log2(max(0.0f, ((_133 * max(0.0f, (((_222.x * -0.024f) - (_222.y * 0.12897f)) + (_222.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _277 = dot(float3(_274, _275, _276), float3(0.212671f, 0.71516f, 0.072169f));
    _296 = exp2(log2((lerp(_277, _274, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    _297 = exp2(log2((lerp(_277, _275, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    _298 = exp2(log2((lerp(_277, _276, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
    _326 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_296 * 18.6875f) + 1.0f)) * ((_296 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_297 * 18.6875f) + 1.0f)) * ((_297 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_298 * 18.6875f) + 1.0f)) * ((_298 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
    _363 = exp2(log2(max(0.0f, ((_129 * max(0.0f, (((_227.x * 1.70505f) - (_227.y * 0.62179f)) - (_227.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _364 = exp2(log2(max(0.0f, ((_131 * max(0.0f, (((_227.y * 1.1408f) - (_227.x * 0.13026f)) - (_227.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _365 = exp2(log2(max(0.0f, ((_133 * max(0.0f, (((_227.x * -0.024f) - (_227.y * 0.12897f)) + (_227.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _366 = dot(float3(_363, _364, _365), float3(0.212671f, 0.71516f, 0.072169f));
    _385 = exp2(log2((lerp(_366, _363, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    _386 = exp2(log2((lerp(_366, _364, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    _387 = exp2(log2((lerp(_366, _365, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
    _415 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_385 * 18.6875f) + 1.0f)) * ((_385 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_386 * 18.6875f) + 1.0f)) * ((_386 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_387 * 18.6875f) + 1.0f)) * ((_387 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
    _452 = exp2(log2(max(0.0f, ((_129 * max(0.0f, (((_232.x * 1.70505f) - (_232.y * 0.62179f)) - (_232.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _453 = exp2(log2(max(0.0f, ((_131 * max(0.0f, (((_232.y * 1.1408f) - (_232.x * 0.13026f)) - (_232.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _454 = exp2(log2(max(0.0f, ((_133 * max(0.0f, (((_232.x * -0.024f) - (_232.y * 0.12897f)) + (_232.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _455 = dot(float3(_452, _453, _454), float3(0.212671f, 0.71516f, 0.072169f));
    _474 = exp2(log2((lerp(_455, _452, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    _475 = exp2(log2((lerp(_455, _453, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    _476 = exp2(log2((lerp(_455, _454, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
    _504 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_474 * 18.6875f) + 1.0f)) * ((_474 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_475 * 18.6875f) + 1.0f)) * ((_475 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_476 * 18.6875f) + 1.0f)) * ((_476 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
    _541 = exp2(log2(max(0.0f, ((_129 * max(0.0f, (((_237.x * 1.70505f) - (_237.y * 0.62179f)) - (_237.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _542 = exp2(log2(max(0.0f, ((_131 * max(0.0f, (((_237.y * 1.1408f) - (_237.x * 0.13026f)) - (_237.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _543 = exp2(log2(max(0.0f, ((_133 * max(0.0f, (((_237.x * -0.024f) - (_237.y * 0.12897f)) + (_237.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _544 = dot(float3(_541, _542, _543), float3(0.212671f, 0.71516f, 0.072169f));
    _563 = exp2(log2((lerp(_544, _541, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    _564 = exp2(log2((lerp(_544, _542, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    _565 = exp2(log2((lerp(_544, _543, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
    _593 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_563 * 18.6875f) + 1.0f)) * ((_563 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_564 * 18.6875f) + 1.0f)) * ((_564 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_565 * 18.6875f) + 1.0f)) * ((_565 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
    _604 = max(max(_202.y, _326.y), max(max(_415.y, _504.y), _593.y));
    _611 = sqrt(saturate(min(min(min(_202.y, _326.y), min(min(_415.y, _504.y), _593.y)), (1.0f - _604)) * (1.0f / _604))) * (-1.0f / (((1.0f - _215) * 8.0f) + (_215 * 5.0f)));
    _614 = 1.0f / ((_611 * 4.0f) + 1.0f);
    _636 = saturate(((_611 * (((_415.x + _326.x) + _504.x) + _593.x)) + _202.x) * _614) - _202.x;
    _637 = saturate(((_611 * (((_415.y + _326.y) + _504.y) + _593.y)) + _202.y) * _614) - _202.y;
    _638 = saturate(((_611 * (((_415.z + _326.z) + _504.z) + _593.z)) + _202.z) * _614) - _202.z;
    _643 = 1.0f - dot(float3(abs(_636), abs(_637), abs(_638)), float3(0.212671f, 0.71516f, 0.072169f));
    _644 = _643 * _643;
    _645 = _644 * _644;
    _646 = _645 * _645;
    _654 = ((_646 * _636) + _202.x);
    _655 = ((_646 * _637) + _202.y);
    _656 = ((_646 * _638) + _202.z);
  } else {
    _654 = _202.x;
    _655 = _202.y;
    _656 = _202.z;
  }
  _660 = 1.0f - abs(_etcParams.w);
  _664 = saturate(_etcParams.w);  // [sem: expr_sat]
  _665 = (_660 * _654) + _664;
  _666 = (_660 * _655) + _664;
  _667 = (_660 * _656) + _664;
  if (_colorGradingParams.w > 0.0f) {
    _672 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _689 = (((max(0.0f, (1.0f - _665)) - _665) * _672) + _665);
    _690 = (((max(0.0f, (1.0f - _666)) - _666) * _672) + _666);
    _691 = (((max(0.0f, (1.0f - _667)) - _667) * _672) + _667);
  } else {
    _689 = _665;
    _690 = _666;
    _691 = _667;
  }
  _698 = (pow(_689, 0.012683313f));
  _699 = (pow(_690, 0.012683313f));
  _700 = (pow(_691, 0.012683313f));
  _726 = (TEXCOORD.x * 2.0f) + -1.0f;
  _727 = TEXCOORD.y * 2.0f;
  _728 = 1.0f - _727;
  _756 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _728, ((_projToPrevProj[3].x) * _726))) + (_projToPrevProj[3].w);
  _759 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _728, ((_projToPrevProj[0].x) * _726))) + (_projToPrevProj[0].w)) / _756) - _726;
  _760 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _728, ((_projToPrevProj[1].x) * _726))) + (_projToPrevProj[1].w)) / _756) - _728;
  if (_localToneMappingParams.w > 0.0f) {
    _774 = saturate(1.0f - (sqrt((_760 * _760) + (_759 * _759)) * 2.0f));  // [sem: expr_sat]
  } else {
    _774 = 1.0f;  // [sem: expr_sat]
  }
  _777 = abs(_726);
  _778 = abs(_727 + -1.0f);
  _782 = saturate(1.0f - ((_774 * _postProcessParams.x) * dot(float2(_777, _778), float2(_777, _778))));  // [sem: expr_sat]
  _792 = exp2(log2(_782 * exp2(log2(max(0.0f, (_698 + -0.8359375f)) / (18.851562f - (_698 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _793 = exp2(log2(_782 * exp2(log2(max(0.0f, (_699 + -0.8359375f)) / (18.851562f - (_699 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _794 = exp2(log2(_782 * exp2(log2(max(0.0f, (_700 + -0.8359375f)) / (18.851562f - (_700 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _827 = (!(SV_Position.y < _viewDir.w)) && (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  SV_Target.x = select(_827, exp2(log2((1.0f / ((_792 * 18.6875f) + 1.0f)) * ((_792 * 18.851562f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.y = select(_827, exp2(log2((1.0f / ((_793 * 18.6875f) + 1.0f)) * ((_793 * 18.851562f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.z = select(_827, exp2(log2((1.0f / ((_794 * 18.6875f) + 1.0f)) * ((_794 * 18.851562f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.w = _17.w;
  return SV_Target;
}
