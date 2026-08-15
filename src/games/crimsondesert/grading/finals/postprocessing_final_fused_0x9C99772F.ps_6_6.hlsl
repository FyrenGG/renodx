Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

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
  float _281;
  float _317;
  float _328;
  float _516;
  float _517;
  float _518;
  float _620;
  float _642;
  float _643;
  float _644;
  float _51;
  float _52;
  float _56;
  float _61;
  float _65;
  float _70;
  float _74;
  float _80;
  float _92;
  float _140;
  float _141;
  float _142;
  float _144;
  float _151;
  float _154;
  float _155;
  float _158;
  float _161;
  float _164;
  float _167;
  float _170;
  float _173;
  float _174;
  float _178;
  float _179;
  float _180;
  float _189;
  float _205;
  float _206;
  float _207;
  float _221;
  float _222;
  float _223;
  float _226;
  float _229;
  float _232;
  float _236;
  float _241;
  float _254;
  float _255;
  float _256;
  float _257;
  float _261;
  float _272;
  float _282;
  float _283;
  float _284;
  float _285;
  float _292;
  float _295;
  float _297;
  bool _300;
  bool _301;
  bool _302;
  bool _303;
  float _312;
  float _319;
  float _332;
  float _336;
  float _342;
  float _355;
  float _356;
  float _357;
  float _358;
  float _359;
  float _360;
  float _362;
  float _364;
  float _366;
  float _403;
  float _404;
  float _405;
  float _421;
  float _422;
  float _423;
  float _445;
  float _446;
  float _447;
  float _463;
  float _464;
  float _465;
  float _487;
  float _491;
  float _492;
  float _493;
  float _494;
  float _499;
  float _524;
  float _528;
  float _529;
  float _530;
  float _531;
  float _561;
  float _572;
  float _573;
  float _574;
  float _602;
  float _605;
  float _606;
  float _623;
  float _624;
  float _628;
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
  _92 = _userImageAdjust.z * _exposure0.x;
  _140 = exp2(log2(max(0.0f, (_offsetParams.x + ((max(0.0f, (((_85 * 1.70505f) - (_86 * 0.62179f)) - (_87 * 0.08326f))) * _slopeParams.x) * _92)))) * _powerParams.x);
  _141 = exp2(log2(max(0.0f, (_offsetParams.y + ((_92 * _slopeParams.y) * max(0.0f, (((_86 * 1.1408f) - (_85 * 0.13026f)) - (_87 * 0.01055f))))))) * _powerParams.y);
  _142 = exp2(log2(max(0.0f, (((_92 * _slopeParams.z) * max(0.0f, (((_85 * -0.024f) - (_86 * 0.12897f)) + (_87 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _144 = dot(float3(_140, _141, _142), float3(0.212671f, 0.71516f, 0.072169f));
  _151 = ((_140 - _144) * _powerParams.w) + _144;
  _154 = (lerp(_144, _141, _powerParams.w)) * 3.0f;  // [sem: blended]
  _155 = (lerp(_144, _142, _powerParams.w)) * 3.0f;  // [sem: blended]
  _158 = mad(-1.7106533e-05f, _155, mad(0.00040110573f, _154, (_151 * 3.0009599f)));
  _161 = mad(-2.34209e-05f, _155, mad(0.9997657f, _154, (_151 * -6.0908147e-05f)));
  _164 = mad(1.0005832f, _155, mad(8.34018e-05f, _154, (_151 * 4.855916e-05f)));
  _167 = mad(0.04736635f, _164, mad(0.33951214f, _161, (_158 * 0.61319155f)));
  _170 = mad(0.013450007f, _164, mad(0.91633576f, _161, (_158 * 0.07020692f)));
  _173 = mad(0.8696068f, _164, mad(0.1095673f, _161, (_158 * 0.020618873f)));
  _174 = dot(float3(_167, _170, _173), float3(0.27222872f, 0.67408174f, 0.053689517f));
  _178 = (_167 / _174) + -1.0f;
  _179 = (_170 / _174) + -1.0f;
  _180 = (_173 / _174) + -1.0f;
  _189 = (1.0f - exp2((_174 * _174) * -4.0f)) * (1.0f - exp2(dot(float3(_178, _179, _180), float3(_178, _179, _180)) * -4.0f));
  _205 = ((mad(-0.06368284f, _173, mad(-0.3292913f, _170, (_167 * 1.3704128f))) - _167) * _189) + _167;
  _206 = ((mad(-0.010861567f, _173, mad(1.0970908f, _170, (_167 * -0.08343426f))) - _170) * _189) + _170;
  _207 = ((mad(1.2036945f, _173, mad(-0.098625645f, _170, (_167 * -0.02579326f))) - _173) * _189) + _173;
  _221 = ((mad(0.061360642f, _207, mad(-4.5401976e-09f, _206, (_205 * 0.9386394f))) - _205) * 0.6f) + _205;
  _222 = ((mad(0.1692059f, _207, mad(0.8307942f, _206, (_205 * 6.775372e-08f))) - _206) * 0.6f) + _206;
  _223 = (mad(-2.3283064e-10f, _206, (_205 * -9.313226e-10f)) * 0.6f) + _207;
  _226 = mad(0.16386905f, _223, mad(0.14067869f, _222, (_221 * 0.6954522f)));
  _229 = mad(0.095534325f, _223, mad(0.8596711f, _222, (_221 * 0.04479458f)));
  _232 = mad(1.0015007f, _223, mad(0.00402521f, _222, (_221 * -0.005525883f)));
  _236 = max(max(_226, _229), _232);
  _241 = (max(_236, 1e-10f) - max(min(min(_226, _229), _232), 1e-10f)) / max(_236, 0.01f);
  _254 = ((_229 + _226) + _232) + (sqrt((((_232 - _229) * _232) + ((_229 - _226) * _229)) + ((_226 - _232) * _226)) * 1.75f);
  _255 = _254 * 0.33333334f;
  _256 = _241 + -0.4f;
  _257 = _256 * 5.0f;
  _261 = max((1.0f - abs(_256 * 2.5f)), 0.0f);
  _272 = ((((float)((int)((int)((int)(uint)((int)(_257 > 0.0f))) - (int)((int)(uint)((int)(_257 < 0.0f)))))) * (1.0f - (_261 * _261))) + 1.0f) * 0.025f;
  if (!(_255 <= 0.053333335f)) {
    if (!(_255 >= 0.16f)) {
      _281 = (((0.24f / _254) + -0.5f) * _272);
    } else {
      _281 = 0.0f;
    }
  } else {
    _281 = _272;
  }
  _282 = _281 + 1.0f;
  _283 = _282 * _226;
  _284 = _282 * _229;
  _285 = _282 * _232;
  if (!((_283 == _284) && (_284 == _285))) {
    _292 = ((_283 * 2.0f) - _284) - _285;
    _295 = ((_229 - _232) * 1.7320508f) * _282;
    _297 = atan(_295 / _292);
    _300 = (_292 < 0.0f);
    _301 = (_292 == 0.0f);
    _302 = (_295 >= 0.0f);
    _303 = (_295 < 0.0f);
    _312 = select((_302 && _301), 90.0f, select((_303 && _301), -90.0f, (select((_303 && _300), (_297 + -3.1415927f), select((_302 && _300), (_297 + 3.1415927f), _297)) * 57.295776f)));
    if (_312 < 0.0f) {
      _317 = (_312 + 360.0f);
    } else {
      _317 = _312;
    }
  } else {
    _317 = 0.0f;
  }
  _319 = min(max(_317, 0.0f), 360.0f);
  if (_319 < -180.0f) {
    _328 = (_319 + 360.0f);
  } else {
    if (_319 > 180.0f) {
      _328 = (_319 + -360.0f);
    } else {
      _328 = _319;
    }
  }
  _332 = saturate(1.0f - abs(_328 * 0.014814815f));  // [sem: expr_sat]
  _336 = (_332 * _332) * (3.0f - (_332 * 2.0f));
  _342 = ((_336 * _336) * ((_241 * 0.18f) * (0.03f - _283))) + _283;
  _355 = log2(max(0.0f, mad(-0.21492857f, _285, mad(-0.23651075f, _284, (_342 * 1.4514393f)))));
  _356 = log2(max(0.0f, mad(-0.09967592f, _285, mad(1.1762297f, _284, (_342 * -0.07655378f)))));
  _357 = log2(max(0.0f, mad(0.9977163f, _285, mad(-0.0060324497f, _284, (_342 * 0.008316148f)))));
  _358 = _355 * 0.30103f;
  _359 = _356 * 0.30103f;
  _360 = _357 * 0.30103f;
  _362 = (_355 * 0.2739373f) + 0.7790625f;
  _364 = (_356 * 0.2739373f) + 0.7790625f;
  _366 = (_357 * 0.2739373f) + 0.7790625f;
  _403 = select((_358 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_355 * 1.43712f)) + 1.0f)), _362);
  _404 = select((_359 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_356 * 1.43712f)) + 1.0f)), _364);
  _405 = select((_360 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_357 * 1.43712f)) + 1.0f)), _366);
  _421 = 1.0f - saturate(-0.78987026f - (_355 * 0.9446112f));
  _422 = 1.0f - saturate(-0.78987026f - (_356 * 0.9446112f));
  _423 = 1.0f - saturate(-0.78987026f - (_357 * 0.9446112f));
  _445 = max(0.0f, ((((_421 * _421) * (select((_358 > -0.57039833f), (1.04f - (1.56f / (exp2((_355 * 1.013354f) + 1.9201254f) + 1.0f))), _362) - _403)) * (3.0f - (_421 * 2.0f))) + _403));
  _446 = max(0.0f, ((((_422 * _422) * (select((_359 > -0.57039833f), (1.04f - (1.56f / (exp2((_356 * 1.013354f) + 1.9201254f) + 1.0f))), _364) - _404)) * (3.0f - (_422 * 2.0f))) + _404));
  _447 = max(0.0f, ((((_423 * _423) * (select((_360 > -0.57039833f), (1.04f - (1.56f / (exp2((_357 * 1.013354f) + 1.9201254f) + 1.0f))), _366) - _405)) * (3.0f - (_423 * 2.0f))) + _405));
  _463 = ((mad(-0.06537104f, _447, mad(1.4518155e-06f, _446, (_445 * 1.0653747f))) - _445) * 0.6f) + _445;
  _464 = ((mad(-0.2036677f, _447, mad(1.2036635f, _446, (_445 * -2.5716145e-07f))) - _446) * 0.6f) + _446;
  _465 = ((mad(0.99999964f, _447, mad(2.0954758e-08f, _446, (_445 * 1.8626451e-08f))) - _447) * 0.6f) + _447;
  _487 = 1.0f - abs(_etcParams.w);
  _491 = saturate(_etcParams.w);  // [sem: expr_sat]
  _492 = (_487 * saturate(saturate(max(0.0f, mad(-0.08325848f, _465, mad(-0.6217906f, _464, (_463 * 1.7050515f))))))) + _491;
  _493 = (_487 * saturate(saturate(max(0.0f, mad(-0.010548528f, _465, mad(1.1408027f, _464, (_463 * -0.13025719f))))))) + _491;
  _494 = (_487 * saturate(saturate(max(0.0f, mad(1.1529719f, _465, mad(-0.12896876f, _464, (_463 * -0.024003278f))))))) + _491;
  if (_colorGradingParams.w > 0.0f) {
    _499 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _516 = (((max(0.0f, (1.0f - _492)) - _492) * _499) + _492);
    _517 = (((max(0.0f, (1.0f - _493)) - _493) * _499) + _493);
    _518 = (((max(0.0f, (1.0f - _494)) - _494) * _499) + _494);
  } else {
    _516 = _492;
    _517 = _493;
    _518 = _494;
  }
  _524 = _userImageAdjust.y + 1.0f;
  _528 = _userImageAdjust.x + 0.5f;
  _529 = ((_516 + -0.5f) * _524) + _528;
  _530 = ((_517 + -0.5f) * _524) + _528;
  _531 = ((_518 + -0.5f) * _524) + _528;
  _561 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _572 = (TEXCOORD.x * 2.0f) + -1.0f;
  _573 = TEXCOORD.y * 2.0f;
  _574 = 1.0f - _573;
  _602 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _574, ((_projToPrevProj[3].x) * _572))) + (_projToPrevProj[3].w);
  _605 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _574, ((_projToPrevProj[0].x) * _572))) + (_projToPrevProj[0].w)) / _602) - _572;
  _606 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _574, ((_projToPrevProj[1].x) * _572))) + (_projToPrevProj[1].w)) / _602) - _574;
  if (_localToneMappingParams.w > 0.0f) {
    _620 = saturate(1.0f - (sqrt((_606 * _606) + (_605 * _605)) * 2.0f));  // [sem: expr_sat]
  } else {
    _620 = 1.0f;  // [sem: expr_sat]
  }
  _623 = abs(_572);
  _624 = abs(_573 + -1.0f);
  _628 = saturate(1.0f - ((_620 * _postProcessParams.x) * dot(float2(_623, _624), float2(_623, _624))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _642 = (_628 * exp2(log2(saturate(mad(_colorBlind0.z, _531, mad(_colorBlind0.y, _530, (_colorBlind0.x * _529))))) * _561));
      _643 = (_628 * exp2(log2(saturate(mad(_colorBlind1.z, _531, mad(_colorBlind1.y, _530, (_colorBlind1.x * _529))))) * _561));
      _644 = (_628 * exp2(log2(saturate(mad(_colorBlind2.z, _531, mad(_colorBlind2.y, _530, (_colorBlind2.x * _529))))) * _561));
    } else {
      _642 = 0.0f;
      _643 = 0.0f;
      _644 = 0.0f;
    }
  } else {
    _642 = 0.0f;
    _643 = 0.0f;
    _644 = 0.0f;
  }
  SV_Target.x = _642;
  SV_Target.y = _643;
  SV_Target.z = _644;
  SV_Target.w = _17.w;
  return SV_Target;
}
