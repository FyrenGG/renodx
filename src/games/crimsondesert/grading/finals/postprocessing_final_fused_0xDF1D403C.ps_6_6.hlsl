Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

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

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
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
  float4 _18;
  float _41;
  float _42;
  float _86;
  float _87;
  float _88;
  float _578;
  float _579;
  float _580;
  float _616;
  float _617;
  float _618;
  float _720;
  float _52;
  float _53;
  float _57;
  float _62;
  float _66;
  float _71;
  float _75;
  float _81;
  uint _94;
  uint _95;
  float _100;
  float _130;
  float _132;
  float _134;
  float _148;
  float _149;
  float _150;
  float _152;
  float _159;
  float _160;
  float _161;
  float _196;
  float _197;
  float _198;
  float _200;
  float _208;
  float4 _215;
  float4 _220;
  float4 _225;
  float4 _230;
  float _267;
  float _268;
  float _269;
  float _270;
  float _277;
  float _278;
  float _279;
  float _308;
  float _343;
  float _344;
  float _345;
  float _346;
  float _353;
  float _354;
  float _355;
  float _384;
  float _419;
  float _420;
  float _421;
  float _422;
  float _429;
  float _430;
  float _431;
  float _460;
  float _495;
  float _496;
  float _497;
  float _498;
  float _505;
  float _506;
  float _507;
  float _536;
  float _545;
  float _552;
  float _555;
  float _587;
  float _591;
  float _592;
  float _593;
  float _594;
  float _599;
  float _624;
  float _628;
  float _629;
  float _630;
  float _631;
  float _661;
  float _672;
  float _673;
  float _674;
  float _702;
  float _705;
  float _706;
  float _723;
  float _724;
  float _728;
  bool _737;
  _18 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
    _42 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
  } else {
    _41 = _18.x;
    _42 = _18.z;
  }
  if (_slopeParams.w > 0.0f) {
    _52 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _53 = _52 * 0.7692308f;
    _57 = frac(abs(_53));
    _62 = _52 * 0.08130081f;
    _66 = frac(abs(_62));
    _71 = ((select((_62 >= (-0.0f - _62)), _66, (-0.0f - _66)) * 1230.0f) + 10.0f) * ((select((_53 >= (-0.0f - _53)), _57, (-0.0f - _57)) * 13.0f) + 1.0f);
    _75 = frac(abs(_71));
    _81 = ((0.0075000525f - (select((_71 >= (-0.0f - _71)), _75, (-0.0f - _75)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _86 = (_81 * _41);
    _87 = (_81 * _18.y);
    _88 = (_81 * _42);
  } else {
    _86 = _41;
    _87 = _18.y;
    _88 = _42;
  }
  _94 = (uint)(_screenSizeAndInvSize.x * TEXCOORD.x);
  _95 = (uint)(_screenSizeAndInvSize.y * TEXCOORD.y);
  _100 = _userImageAdjust.z * _exposure0.x;
  _130 = _100 * _slopeParams.x;
  _132 = _100 * _slopeParams.y;
  _134 = _100 * _slopeParams.z;
  _148 = exp2(log2(max(0.0f, (_offsetParams.x + (_130 * max(0.0f, (((_86 * 1.70505f) - (_87 * 0.62179f)) - (_88 * 0.08326f))))))) * _powerParams.x);
  _149 = exp2(log2(max(0.0f, (_offsetParams.y + (_132 * max(0.0f, (((_87 * 1.1408f) - (_86 * 0.13026f)) - (_88 * 0.01055f))))))) * _powerParams.y);
  _150 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_86 * -0.024f) - (_87 * 0.12897f)) + (_88 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _152 = dot(float3(_148, _149, _150), float3(0.212671f, 0.71516f, 0.072169f));
  _159 = ((_148 - _152) * _powerParams.w) + _152;
  _160 = ((_149 - _152) * _powerParams.w) + _152;
  _161 = ((_150 - _152) * _powerParams.w) + _152;
  // [sem: expr_sat]
  _196 = saturate(saturate((((_toneMapParams0.x * _159) + _toneMapParams0.y) * _159) / ((((_toneMapParams0.z * _159) + _toneMapParams0.w) * _159) + _toneMapParams1.x)));
  // [sem: expr_sat]
  _197 = saturate(saturate((((_toneMapParams0.x * _160) + _toneMapParams0.y) * _160) / ((((_toneMapParams0.z * _160) + _toneMapParams0.w) * _160) + _toneMapParams1.x)));
  // [sem: expr_sat]
  _198 = saturate(saturate((((_toneMapParams0.x * _161) + _toneMapParams0.y) * _161) / ((((_toneMapParams0.z * _161) + _toneMapParams0.w) * _161) + _toneMapParams1.x)));
  _200 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_200.x < 1e-07f) || (_200.x == 1.0f))) {
    _208 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _215 = __3__36__0__0__g_sceneColor.Load(int3(_94, ((int)((uint)((uint)(_95)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _220 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_94)) + (uint)(-1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _225 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_94)) + (uint)(1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _230 = __3__36__0__0__g_sceneColor.Load(int3(_94, ((int)((uint)((uint)(_95)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _267 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_215.x * 1.70505f) - (_215.y * 0.62179f)) - (_215.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _268 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_215.y * 1.1408f) - (_215.x * 0.13026f)) - (_215.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _269 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_215.x * -0.024f) - (_215.y * 0.12897f)) + (_215.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _270 = dot(float3(_267, _268, _269), float3(0.212671f, 0.71516f, 0.072169f));
    _277 = ((_267 - _270) * _powerParams.w) + _270;
    _278 = ((_268 - _270) * _powerParams.w) + _270;
    _279 = ((_269 - _270) * _powerParams.w) + _270;
    // [sem: expr_sat]
    _308 = saturate(saturate((((_278 * _toneMapParams0.x) + _toneMapParams0.y) * _278) / ((((_278 * _toneMapParams0.z) + _toneMapParams0.w) * _278) + _toneMapParams1.x)));
    _343 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_220.x * 1.70505f) - (_220.y * 0.62179f)) - (_220.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _344 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_220.y * 1.1408f) - (_220.x * 0.13026f)) - (_220.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _345 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_220.x * -0.024f) - (_220.y * 0.12897f)) + (_220.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _346 = dot(float3(_343, _344, _345), float3(0.212671f, 0.71516f, 0.072169f));
    _353 = ((_343 - _346) * _powerParams.w) + _346;
    _354 = ((_344 - _346) * _powerParams.w) + _346;
    _355 = ((_345 - _346) * _powerParams.w) + _346;
    // [sem: expr_sat]
    _384 = saturate(saturate((((_354 * _toneMapParams0.x) + _toneMapParams0.y) * _354) / ((((_354 * _toneMapParams0.z) + _toneMapParams0.w) * _354) + _toneMapParams1.x)));
    _419 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_225.x * 1.70505f) - (_225.y * 0.62179f)) - (_225.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _420 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_225.y * 1.1408f) - (_225.x * 0.13026f)) - (_225.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _421 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_225.x * -0.024f) - (_225.y * 0.12897f)) + (_225.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _422 = dot(float3(_419, _420, _421), float3(0.212671f, 0.71516f, 0.072169f));
    _429 = ((_419 - _422) * _powerParams.w) + _422;
    _430 = ((_420 - _422) * _powerParams.w) + _422;
    _431 = ((_421 - _422) * _powerParams.w) + _422;
    // [sem: expr_sat]
    _460 = saturate(saturate((((_430 * _toneMapParams0.x) + _toneMapParams0.y) * _430) / ((((_430 * _toneMapParams0.z) + _toneMapParams0.w) * _430) + _toneMapParams1.x)));
    _495 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_230.x * 1.70505f) - (_230.y * 0.62179f)) - (_230.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _496 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_230.y * 1.1408f) - (_230.x * 0.13026f)) - (_230.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _497 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_230.x * -0.024f) - (_230.y * 0.12897f)) + (_230.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _498 = dot(float3(_495, _496, _497), float3(0.212671f, 0.71516f, 0.072169f));
    _505 = ((_495 - _498) * _powerParams.w) + _498;
    _506 = ((_496 - _498) * _powerParams.w) + _498;
    _507 = ((_497 - _498) * _powerParams.w) + _498;
    // [sem: expr_sat]
    _536 = saturate(saturate((((_506 * _toneMapParams0.x) + _toneMapParams0.y) * _506) / ((((_506 * _toneMapParams0.z) + _toneMapParams0.w) * _506) + _toneMapParams1.x)));
    _545 = max(max(_197, _308), max(max(_384, _460), _536));
    _552 = sqrt(saturate(min(min(min(_197, _308), min(min(_384, _460), _536)), (1.0f - _545)) * (1.0f / _545))) * (-1.0f / (((1.0f - _208) * 8.0f) + (_208 * 5.0f)));
    _555 = 1.0f / ((_552 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _578 = saturate(((_552 * (((saturate(saturate((((_353 * _toneMapParams0.x) + _toneMapParams0.y) * _353) / ((((_353 * _toneMapParams0.z) + _toneMapParams0.w) * _353) + _toneMapParams1.x))) + saturate(saturate((((_277 * _toneMapParams0.x) + _toneMapParams0.y) * _277) / ((((_277 * _toneMapParams0.z) + _toneMapParams0.w) * _277) + _toneMapParams1.x)))) + saturate(saturate((((_429 * _toneMapParams0.x) + _toneMapParams0.y) * _429) / ((((_429 * _toneMapParams0.z) + _toneMapParams0.w) * _429) + _toneMapParams1.x)))) + saturate(saturate((((_505 * _toneMapParams0.x) + _toneMapParams0.y) * _505) / ((((_505 * _toneMapParams0.z) + _toneMapParams0.w) * _505) + _toneMapParams1.x))))) + _196) * _555);
    _579 = saturate(((_552 * (((_384 + _308) + _460) + _536)) + _197) * _555);  // [sem: expr_sat]
    // [sem: expr_sat]
    _580 = saturate(((_552 * (((saturate(saturate((((_355 * _toneMapParams0.x) + _toneMapParams0.y) * _355) / ((((_355 * _toneMapParams0.z) + _toneMapParams0.w) * _355) + _toneMapParams1.x))) + saturate(saturate((((_279 * _toneMapParams0.x) + _toneMapParams0.y) * _279) / ((((_279 * _toneMapParams0.z) + _toneMapParams0.w) * _279) + _toneMapParams1.x)))) + saturate(saturate((((_431 * _toneMapParams0.x) + _toneMapParams0.y) * _431) / ((((_431 * _toneMapParams0.z) + _toneMapParams0.w) * _431) + _toneMapParams1.x)))) + saturate(saturate((((_507 * _toneMapParams0.x) + _toneMapParams0.y) * _507) / ((((_507 * _toneMapParams0.z) + _toneMapParams0.w) * _507) + _toneMapParams1.x))))) + _198) * _555);
  } else {
    _578 = _196;  // [sem: expr_sat]
    _579 = _197;  // [sem: expr_sat]
    _580 = _198;  // [sem: expr_sat]
  }
  _587 = 1.0f - abs(_etcParams.w);
  _591 = saturate(_etcParams.w);  // [sem: expr_sat]
  _592 = (_587 * saturate(_578)) + _591;
  _593 = (_587 * saturate(_579)) + _591;
  _594 = (_587 * saturate(_580)) + _591;
  if (_colorGradingParams.w > 0.0f) {
    _599 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _616 = (((max(0.0f, (1.0f - _592)) - _592) * _599) + _592);
    _617 = (((max(0.0f, (1.0f - _593)) - _593) * _599) + _593);
    _618 = (((max(0.0f, (1.0f - _594)) - _594) * _599) + _594);
  } else {
    _616 = _592;
    _617 = _593;
    _618 = _594;
  }
  _624 = _userImageAdjust.y + 1.0f;
  _628 = _userImageAdjust.x + 0.5f;
  _629 = ((_616 + -0.5f) * _624) + _628;
  _630 = ((_617 + -0.5f) * _624) + _628;
  _631 = ((_618 + -0.5f) * _624) + _628;
  _661 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _672 = (TEXCOORD.x * 2.0f) + -1.0f;
  _673 = TEXCOORD.y * 2.0f;
  _674 = 1.0f - _673;
  _702 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _674, ((_projToPrevProj[3].x) * _672))) + (_projToPrevProj[3].w);
  _705 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _674, ((_projToPrevProj[0].x) * _672))) + (_projToPrevProj[0].w)) / _702) - _672;
  _706 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _674, ((_projToPrevProj[1].x) * _672))) + (_projToPrevProj[1].w)) / _702) - _674;
  if (_localToneMappingParams.w > 0.0f) {
    _720 = saturate(1.0f - (sqrt((_706 * _706) + (_705 * _705)) * 2.0f));  // [sem: expr_sat]
  } else {
    _720 = 1.0f;  // [sem: expr_sat]
  }
  _723 = abs(_672);
  _724 = abs(_673 + -1.0f);
  _728 = saturate(1.0f - ((_720 * _postProcessParams.x) * dot(float2(_723, _724), float2(_723, _724))));  // [sem: expr_sat]
  _737 = (!(SV_Position.y < _viewDir.w)) && (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  SV_Target.x = select(_737, (_728 * exp2(log2(saturate(mad(_colorBlind0.z, _631, mad(_colorBlind0.y, _630, (_colorBlind0.x * _629))))) * _661)), 0.0f);
  SV_Target.y = select(_737, (_728 * exp2(log2(saturate(mad(_colorBlind1.z, _631, mad(_colorBlind1.y, _630, (_colorBlind1.x * _629))))) * _661)), 0.0f);
  SV_Target.z = select(_737, (_728 * exp2(log2(saturate(mad(_colorBlind2.z, _631, mad(_colorBlind2.y, _630, (_colorBlind2.x * _629))))) * _661)), 0.0f);
  SV_Target.w = _18.w;
  return SV_Target;
}
