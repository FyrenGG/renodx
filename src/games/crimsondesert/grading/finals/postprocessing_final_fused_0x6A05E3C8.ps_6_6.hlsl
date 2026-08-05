Texture3D<float4> __3__36__0__0__g_displayRenderingTransformLUT : register(t154, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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
  float _668;
  float _669;
  float _670;
  float _703;
  float _704;
  float _705;
  float _763;
  bool _819;
  float _51;
  float _52;
  float _54;
  float _55;
  float _57;
  float _70;
  float _72;
  float _80;
  uint _91;
  uint _94;
  float _99;
  float _101;
  float _103;
  float _105;
  float _121;
  float _135;
  float _149;
  float _150;
  float _158;
  float _165;
  float _172;
  float4 _202;
  float _208;
  float _217;
  float4 _220;
  float4 _225;
  float4 _230;
  float4 _235;
  float _254;
  float _268;
  float _282;
  float _283;
  float _291;
  float _298;
  float _305;
  float4 _335;
  float _350;
  float _362;
  float _374;
  float _375;
  float _382;
  float _389;
  float _396;
  float4 _424;
  float _439;
  float _451;
  float _463;
  float _464;
  float _471;
  float _478;
  float _485;
  float4 _513;
  float _528;
  float _540;
  float _552;
  float _553;
  float _560;
  float _567;
  float _574;
  float4 _602;
  float _609;
  float _625;
  float _628;
  float _636;
  float _644;
  float _652;
  float _657;
  float _658;
  float _659;
  float _660;
  float _674;
  float _675;
  float _677;
  float _679;
  float _681;
  float _686;
  float _708;
  float _711;
  float _714;
  float _716;
  float _717;
  float _718;
  float _730;
  float _740;
  float _750;
  float _764;
  float _766;
  float _773;
  float _785;
  float _797;
  float _809;
  _17 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _40 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
  } else {
    _40 = _17.z;
    _41 = _17.x;
  }
  if (_slopeParams.w > 0.0f) {
    _51 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _52 = _51 * 0.7692308f;
    _54 = frac(abs(_52));
    _55 = _51 * 0.08130081f;
    _57 = frac(abs(_55));
    _70 = ((select((_55 >= (-0.0f - _55)), _57, (-0.0f - _57)) * 1230.0f) + 10.0f) * ((select((_52 >= (-0.0f - _52)), _54, (-0.0f - _54)) * 13.0f) + 1.0f);
    _72 = frac(abs(_70));
    _80 = ((0.0075000525f - (select((_70 >= (-0.0f - _70)), _72, (-0.0f - _72)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _85 = (_80 * _40);
    _86 = (_80 * _17.y);
    _87 = (_80 * _41);
  } else {
    _85 = _40;
    _86 = _17.y;
    _87 = _41;
  }
  _91 = (uint)(_screenSizeAndInvSize.x * TEXCOORD.x);
  _94 = (uint)(_screenSizeAndInvSize.y * TEXCOORD.y);
  _99 = _exposure0.x * _userImageAdjust.z;
  _101 = _99 * _slopeParams.x;
  _103 = _99 * _slopeParams.y;
  _105 = _99 * _slopeParams.z;
  _121 = exp2(_powerParams.x * log2(max(0.0f, ((_101 * max(0.0f, (((_86 * -0.62179f) - (_85 * 0.08326f)) + (_87 * 1.70505f)))) + _offsetParams.x))));
  _135 = exp2(log2(max(0.0f, ((max(0.0f, (((_86 * 1.1408f) - (_85 * 0.01055f)) - (_87 * 0.13026f))) * _103) + _offsetParams.y))) * _powerParams.y);
  _149 = exp2(log2(max(0.0f, ((max(0.0f, (((_85 * 1.15297f) - (_86 * 0.12897f)) - (_87 * 0.024f))) * _105) + _offsetParams.z))) * _powerParams.z);
  _150 = dot(float3(_121, _135, _149), float3(0.212671f, 0.71516f, 0.072169f));
  _158 = exp2(log2((lerp(_150, _121, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _165 = exp2(log2((lerp(_150, _135, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  _172 = exp2(log2((lerp(_150, _149, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
  // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
  _202 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_158 * 18.6875f) + 1.0f)) * ((_158 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_165 * 18.6875f) + 1.0f)) * ((_165 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_172 * 18.6875f) + 1.0f)) * ((_172 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
  _208 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_208.x < 1e-07f) || (_208.x == 1.0f))) {
    _217 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _220 = __3__36__0__0__g_sceneColor.Load(int3(_91, ((int)((uint)((uint)(_94)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _225 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_91)) + (uint)(-1))), _94, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _230 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_91)) + (uint)(1))), _94, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _235 = __3__36__0__0__g_sceneColor.Load(int3(_91, ((int)((uint)((uint)(_94)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _254 = exp2(_powerParams.x * log2(max(0.0f, (_offsetParams.x + (max(0.0f, (((_220.x * 1.70505f) - (_220.y * 0.62179f)) - (_220.z * 0.08326f))) * _101)))));
    _268 = exp2(log2(max(0.0f, ((max(0.0f, (((_220.y * 1.1408f) - (_220.x * 0.13026f)) - (_220.z * 0.01055f))) * _103) + _offsetParams.y))) * _powerParams.y);
    _282 = exp2(log2(max(0.0f, ((max(0.0f, (((_220.x * -0.024f) - (_220.y * 0.12897f)) + (_220.z * 1.15297f))) * _105) + _offsetParams.z))) * _powerParams.z);
    _283 = dot(float3(_254, _268, _282), float3(0.212671f, 0.71516f, 0.072169f));
    _291 = exp2(log2((lerp(_283, _254, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    _298 = exp2(log2((lerp(_283, _268, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    _305 = exp2(log2((lerp(_283, _282, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
    _335 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_291 * 18.6875f) + 1.0f)) * ((_291 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_298 * 18.6875f) + 1.0f)) * ((_298 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_305 * 18.6875f) + 1.0f)) * ((_305 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
    _350 = exp2(log2(max(0.0f, ((max(0.0f, (((_225.x * 1.70505f) - (_225.y * 0.62179f)) - (_225.z * 0.08326f))) * _101) + _offsetParams.x))) * _powerParams.x);
    _362 = exp2(log2(max(0.0f, ((max(0.0f, (((_225.y * 1.1408f) - (_225.x * 0.13026f)) - (_225.z * 0.01055f))) * _103) + _offsetParams.y))) * _powerParams.y);
    _374 = exp2(log2(max(0.0f, ((max(0.0f, (((_225.x * -0.024f) - (_225.y * 0.12897f)) + (_225.z * 1.15297f))) * _105) + _offsetParams.z))) * _powerParams.z);
    _375 = dot(float3(_350, _362, _374), float3(0.212671f, 0.71516f, 0.072169f));
    _382 = exp2(log2((lerp(_375, _350, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    _389 = exp2(log2((lerp(_375, _362, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    _396 = exp2(log2((lerp(_375, _374, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
    _424 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_382 * 18.6875f) + 1.0f)) * ((_382 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_389 * 18.6875f) + 1.0f)) * ((_389 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_396 * 18.6875f) + 1.0f)) * ((_396 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
    _439 = exp2(log2(max(0.0f, ((max(0.0f, (((_230.x * 1.70505f) - (_230.y * 0.62179f)) - (_230.z * 0.08326f))) * _101) + _offsetParams.x))) * _powerParams.x);
    _451 = exp2(log2(max(0.0f, ((max(0.0f, (((_230.y * 1.1408f) - (_230.x * 0.13026f)) - (_230.z * 0.01055f))) * _103) + _offsetParams.y))) * _powerParams.y);
    _463 = exp2(log2(max(0.0f, ((max(0.0f, (((_230.x * -0.024f) - (_230.y * 0.12897f)) + (_230.z * 1.15297f))) * _105) + _offsetParams.z))) * _powerParams.z);
    _464 = dot(float3(_439, _451, _463), float3(0.212671f, 0.71516f, 0.072169f));
    _471 = exp2(log2((lerp(_464, _439, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    _478 = exp2(log2((lerp(_464, _451, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    _485 = exp2(log2((lerp(_464, _463, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
    _513 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_471 * 18.6875f) + 1.0f)) * ((_471 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_478 * 18.6875f) + 1.0f)) * ((_478 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_485 * 18.6875f) + 1.0f)) * ((_485 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
    _528 = exp2(log2(max(0.0f, ((max(0.0f, (((_235.x * 1.70505f) - (_235.y * 0.62179f)) - (_235.z * 0.08326f))) * _101) + _offsetParams.x))) * _powerParams.x);
    _540 = exp2(log2(max(0.0f, ((max(0.0f, (((_235.y * 1.1408f) - (_235.x * 0.13026f)) - (_235.z * 0.01055f))) * _103) + _offsetParams.y))) * _powerParams.y);
    _552 = exp2(log2(max(0.0f, ((max(0.0f, (((_235.x * -0.024f) - (_235.y * 0.12897f)) + (_235.z * 1.15297f))) * _105) + _offsetParams.z))) * _powerParams.z);
    _553 = dot(float3(_528, _540, _552), float3(0.212671f, 0.71516f, 0.072169f));
    _560 = exp2(log2((lerp(_553, _528, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    _567 = exp2(log2((lerp(_553, _540, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    _574 = exp2(log2((lerp(_553, _552, _powerParams.w)) * 0.00035099997f) * 0.15930176f);
    // [sem: _3__36__0__0__g_displayRenderingTransformLUT_sampleLod]
    _602 = __3__36__0__0__g_displayRenderingTransformLUT.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(exp2(log2((1.0f / ((_560 * 18.6875f) + 1.0f)) * ((_560 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_567 * 18.6875f) + 1.0f)) * ((_567 * 18.851562f) + 0.8359375f)) * 78.84375f), exp2(log2((1.0f / ((_574 * 18.6875f) + 1.0f)) * ((_574 * 18.851562f) + 0.8359375f)) * 78.84375f)), 0.0f);
    _609 = max(max(_202.y, _335.y), max(max(_424.y, _513.y), _602.y));
    _625 = (-1.0f / (((1.0f - _217) * 8.0f) + (_217 * 5.0f))) * sqrt(saturate((1.0f / _609) * min(min(min(_202.y, _335.y), min(min(_424.y, _513.y), _602.y)), (1.0f - _609))));
    _628 = 1.0f / ((_625 * 4.0f) + 1.0f);
    _636 = saturate(((_625 * (((_424.x + _335.x) + _513.x) + _602.x)) + _202.x) * _628) - _202.x;
    _644 = saturate(((_625 * (((_424.y + _335.y) + _513.y) + _602.y)) + _202.y) * _628) - _202.y;
    _652 = saturate(((_625 * (((_424.z + _335.z) + _513.z) + _602.z)) + _202.z) * _628) - _202.z;
    _657 = 1.0f - dot(float3(abs(_636), abs(_644), abs(_652)), float3(0.212671f, 0.71516f, 0.072169f));
    _658 = _657 * _657;
    _659 = _658 * _658;
    _660 = _659 * _659;
    _668 = ((_660 * _652) + _202.z);
    _669 = ((_660 * _644) + _202.y);
    _670 = ((_660 * _636) + _202.x);
  } else {
    _668 = _202.z;
    _669 = _202.y;
    _670 = _202.x;
  }
  _674 = 1.0f - abs(_etcParams.w);
  _675 = saturate(_etcParams.w);  // [sem: expr_sat]
  _677 = (_674 * _670) + _675;
  _679 = (_674 * _669) + _675;
  _681 = (_674 * _668) + _675;
  if (_colorGradingParams.w > 0.0f) {
    _686 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _703 = (((max(0.0f, (1.0f - _677)) - _677) * _686) + _677);
    _704 = (((max(0.0f, (1.0f - _679)) - _679) * _686) + _679);
    _705 = (((max(0.0f, (1.0f - _681)) - _681) * _686) + _681);
  } else {
    _703 = _677;
    _704 = _679;
    _705 = _681;
  }
  _708 = (pow(_703, 0.012683313f));
  _711 = (pow(_704, 0.012683313f));
  _714 = (pow(_705, 0.012683313f));
  _716 = (TEXCOORD.x * 2.0f) + -1.0f;
  _717 = TEXCOORD.y * 2.0f;
  _718 = 1.0f - _717;
  _730 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _718, ((_projToPrevProj[3].x) * _716)));
  _740 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _718, ((_projToPrevProj[0].x) * _716))) + (_projToPrevProj[0].w)) / _730) - _716;
  _750 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _718, ((_projToPrevProj[1].x) * _716))) + (_projToPrevProj[1].w)) / _730) - _718;
  if (_localToneMappingParams.w > 0.0f) {
    _763 = saturate(1.0f - (sqrt((_750 * _750) + (_740 * _740)) * 2.0f));  // [sem: expr_sat]
  } else {
    _763 = 1.0f;  // [sem: expr_sat]
  }
  _764 = abs(_716);
  _766 = abs(_717 + -1.0f);
  _773 = saturate(1.0f - ((_postProcessParams.x * _763) * dot(float2(_764, _766), float2(_764, _766))));  // [sem: expr_sat]
  _785 = exp2(log2(exp2(log2(max(0.0f, (_708 + -0.8359375f)) / (18.851562f - (_708 * 18.6875f))) * 6.277395f) * _773) * 0.15930176f);
  _797 = exp2(log2(exp2(log2(max(0.0f, (_711 + -0.8359375f)) / (18.851562f - (_711 * 18.6875f))) * 6.277395f) * _773) * 0.15930176f);
  _809 = exp2(log2(exp2(log2(max(0.0f, (_714 + -0.8359375f)) / (18.851562f - (_714 * 18.6875f))) * 6.277395f) * _773) * 0.15930176f);
  if (!(SV_Position.y < _viewDir.w)) {
    _819 = (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  } else {
    _819 = false;
  }
  SV_Target.x = select(_819, exp2(log2((1.0f / ((_785 * 18.6875f) + 1.0f)) * ((_785 * 18.851562f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.y = select(_819, exp2(log2((1.0f / ((_797 * 18.6875f) + 1.0f)) * ((_797 * 18.851562f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.z = select(_819, exp2(log2((1.0f / ((_809 * 18.6875f) + 1.0f)) * ((_809 * 18.851562f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.w = _17.w;
  return SV_Target;
}
