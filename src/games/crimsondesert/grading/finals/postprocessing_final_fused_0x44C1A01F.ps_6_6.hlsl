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
  float _466;
  float _467;
  float _468;
  float _504;
  float _505;
  float _506;
  float _608;
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
  float _168;
  float _169;
  float _170;
  float _172;
  float _180;
  float4 _187;
  float4 _192;
  float4 _197;
  float4 _202;
  float _239;
  float _240;
  float _241;
  float _242;
  float _249;
  float _250;
  float _251;
  float _259;
  float _294;
  float _295;
  float _296;
  float _297;
  float _304;
  float _305;
  float _306;
  float _314;
  float _349;
  float _350;
  float _351;
  float _352;
  float _359;
  float _360;
  float _361;
  float _369;
  float _404;
  float _405;
  float _406;
  float _407;
  float _414;
  float _415;
  float _416;
  float _424;
  float _433;
  float _440;
  float _443;
  float _475;
  float _479;
  float _480;
  float _481;
  float _482;
  float _487;
  float _512;
  float _516;
  float _517;
  float _518;
  float _519;
  float _549;
  float _560;
  float _561;
  float _562;
  float _590;
  float _593;
  float _594;
  float _611;
  float _612;
  float _616;
  bool _625;
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
  _168 = saturate(_159 / (_159 + 1.0f));  // [sem: expr_sat]
  _169 = saturate(_160 / (_160 + 1.0f));  // [sem: expr_sat]
  _170 = saturate(_161 / (_161 + 1.0f));  // [sem: expr_sat]
  _172 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_172.x < 1e-07f) || (_172.x == 1.0f))) {
    _180 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _187 = __3__36__0__0__g_sceneColor.Load(int3(_94, ((int)((uint)((uint)(_95)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _192 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_94)) + (uint)(-1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _197 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_94)) + (uint)(1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _202 = __3__36__0__0__g_sceneColor.Load(int3(_94, ((int)((uint)((uint)(_95)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _239 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_187.x * 1.70505f) - (_187.y * 0.62179f)) - (_187.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _240 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_187.y * 1.1408f) - (_187.x * 0.13026f)) - (_187.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _241 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_187.x * -0.024f) - (_187.y * 0.12897f)) + (_187.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _242 = dot(float3(_239, _240, _241), float3(0.212671f, 0.71516f, 0.072169f));
    _249 = ((_239 - _242) * _powerParams.w) + _242;
    _250 = ((_240 - _242) * _powerParams.w) + _242;
    _251 = ((_241 - _242) * _powerParams.w) + _242;
    _259 = saturate(_250 / (_250 + 1.0f));  // [sem: expr_sat]
    _294 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_192.x * 1.70505f) - (_192.y * 0.62179f)) - (_192.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _295 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_192.y * 1.1408f) - (_192.x * 0.13026f)) - (_192.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _296 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_192.x * -0.024f) - (_192.y * 0.12897f)) + (_192.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _297 = dot(float3(_294, _295, _296), float3(0.212671f, 0.71516f, 0.072169f));
    _304 = ((_294 - _297) * _powerParams.w) + _297;
    _305 = ((_295 - _297) * _powerParams.w) + _297;
    _306 = ((_296 - _297) * _powerParams.w) + _297;
    _314 = saturate(_305 / (_305 + 1.0f));  // [sem: expr_sat]
    _349 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_197.x * 1.70505f) - (_197.y * 0.62179f)) - (_197.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _350 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_197.y * 1.1408f) - (_197.x * 0.13026f)) - (_197.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _351 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_197.x * -0.024f) - (_197.y * 0.12897f)) + (_197.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _352 = dot(float3(_349, _350, _351), float3(0.212671f, 0.71516f, 0.072169f));
    _359 = ((_349 - _352) * _powerParams.w) + _352;
    _360 = ((_350 - _352) * _powerParams.w) + _352;
    _361 = ((_351 - _352) * _powerParams.w) + _352;
    _369 = saturate(_360 / (_360 + 1.0f));  // [sem: expr_sat]
    _404 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_202.x * 1.70505f) - (_202.y * 0.62179f)) - (_202.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _405 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_202.y * 1.1408f) - (_202.x * 0.13026f)) - (_202.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _406 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_202.x * -0.024f) - (_202.y * 0.12897f)) + (_202.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _407 = dot(float3(_404, _405, _406), float3(0.212671f, 0.71516f, 0.072169f));
    _414 = ((_404 - _407) * _powerParams.w) + _407;
    _415 = ((_405 - _407) * _powerParams.w) + _407;
    _416 = ((_406 - _407) * _powerParams.w) + _407;
    _424 = saturate(_415 / (_415 + 1.0f));  // [sem: expr_sat]
    _433 = max(max(_169, _259), max(max(_314, _369), _424));
    _440 = sqrt(saturate(min(min(min(_169, _259), min(min(_314, _369), _424)), (1.0f - _433)) * (1.0f / _433))) * (-1.0f / (((1.0f - _180) * 8.0f) + (_180 * 5.0f)));
    _443 = 1.0f / ((_440 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _466 = saturate(((_440 * (((saturate(_304 / (_304 + 1.0f)) + saturate(_249 / (_249 + 1.0f))) + saturate(_359 / (_359 + 1.0f))) + saturate(_414 / (_414 + 1.0f)))) + _168) * _443);
    _467 = saturate(((_440 * (((_314 + _259) + _369) + _424)) + _169) * _443);  // [sem: expr_sat]
    // [sem: expr_sat]
    _468 = saturate(((_440 * (((saturate(_306 / (_306 + 1.0f)) + saturate(_251 / (_251 + 1.0f))) + saturate(_361 / (_361 + 1.0f))) + saturate(_416 / (_416 + 1.0f)))) + _170) * _443);
  } else {
    _466 = _168;  // [sem: expr_sat]
    _467 = _169;  // [sem: expr_sat]
    _468 = _170;  // [sem: expr_sat]
  }
  _475 = 1.0f - abs(_etcParams.w);
  _479 = saturate(_etcParams.w);  // [sem: expr_sat]
  _480 = (_475 * saturate(_466)) + _479;
  _481 = (_475 * saturate(_467)) + _479;
  _482 = (_475 * saturate(_468)) + _479;
  if (_colorGradingParams.w > 0.0f) {
    _487 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _504 = (((max(0.0f, (1.0f - _480)) - _480) * _487) + _480);
    _505 = (((max(0.0f, (1.0f - _481)) - _481) * _487) + _481);
    _506 = (((max(0.0f, (1.0f - _482)) - _482) * _487) + _482);
  } else {
    _504 = _480;
    _505 = _481;
    _506 = _482;
  }
  _512 = _userImageAdjust.y + 1.0f;
  _516 = _userImageAdjust.x + 0.5f;
  _517 = ((_504 + -0.5f) * _512) + _516;
  _518 = ((_505 + -0.5f) * _512) + _516;
  _519 = ((_506 + -0.5f) * _512) + _516;
  _549 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _560 = (TEXCOORD.x * 2.0f) + -1.0f;
  _561 = TEXCOORD.y * 2.0f;
  _562 = 1.0f - _561;
  _590 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _562, ((_projToPrevProj[3].x) * _560))) + (_projToPrevProj[3].w);
  _593 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _562, ((_projToPrevProj[0].x) * _560))) + (_projToPrevProj[0].w)) / _590) - _560;
  _594 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _562, ((_projToPrevProj[1].x) * _560))) + (_projToPrevProj[1].w)) / _590) - _562;
  if (_localToneMappingParams.w > 0.0f) {
    _608 = saturate(1.0f - (sqrt((_594 * _594) + (_593 * _593)) * 2.0f));  // [sem: expr_sat]
  } else {
    _608 = 1.0f;  // [sem: expr_sat]
  }
  _611 = abs(_560);
  _612 = abs(_561 + -1.0f);
  _616 = saturate(1.0f - ((_608 * _postProcessParams.x) * dot(float2(_611, _612), float2(_611, _612))));  // [sem: expr_sat]
  _625 = (!(SV_Position.y < _viewDir.w)) && (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  SV_Target.x = select(_625, (_616 * exp2(log2(saturate(mad(_colorBlind0.z, _519, mad(_colorBlind0.y, _518, (_colorBlind0.x * _517))))) * _549)), 0.0f);
  SV_Target.y = select(_625, (_616 * exp2(log2(saturate(mad(_colorBlind1.z, _519, mad(_colorBlind1.y, _518, (_colorBlind1.x * _517))))) * _549)), 0.0f);
  SV_Target.z = select(_625, (_616 * exp2(log2(saturate(mad(_colorBlind2.z, _519, mad(_colorBlind2.y, _518, (_colorBlind2.x * _517))))) * _549)), 0.0f);
  SV_Target.w = _18.w;
  return SV_Target;
}
