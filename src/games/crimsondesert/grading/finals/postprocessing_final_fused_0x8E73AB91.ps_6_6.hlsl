Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

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
  float _586;
  float _642;
  float _643;
  float _644;
  float _51;
  float _52;
  float _54;
  float _55;
  float _57;
  float _70;
  float _72;
  float _80;
  float _92;
  float _110;
  float _126;
  float _142;
  float _143;
  float _147;
  float _151;
  float _155;
  float _158;
  float _161;
  float _164;
  float _167;
  float _170;
  float _173;
  float _174;
  float _176;
  float _178;
  float _180;
  float _189;
  float _195;
  float _201;
  float _207;
  float _213;
  float _219;
  float _223;
  float _226;
  float _229;
  float _232;
  float _234;
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
  bool _298;
  bool _299;
  bool _300;
  bool _301;
  float _312;
  float _319;
  float _332;
  float _336;
  float _342;
  float _347;
  float _352;
  float _357;
  float _358;
  float _359;
  float _360;
  float _362;
  float _364;
  float _366;
  float _373;
  float _380;
  float _387;
  float _391;
  float _395;
  float _399;
  float _415;
  float _431;
  float _447;
  float _453;
  float _459;
  float _465;
  float _469;
  float _470;
  float _478;
  float _486;
  float _494;
  float _499;
  float _520;
  float _522;
  float _525;
  float _528;
  float _531;
  float _537;
  float _539;
  float _540;
  float _541;
  float _553;
  float _563;
  float _573;
  float _587;
  float _589;
  float _595;
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
  _92 = _exposure0.x * _userImageAdjust.z;
  _110 = exp2(_powerParams.x * log2(max(0.0f, (((max(0.0f, (((_86 * -0.62179f) - (_85 * 0.08326f)) + (_87 * 1.70505f))) * _slopeParams.x) * _92) + _offsetParams.x))));
  _126 = exp2(log2(max(0.0f, (((_92 * _slopeParams.y) * max(0.0f, (((_86 * 1.1408f) - (_85 * 0.01055f)) - (_87 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
  _142 = exp2(log2(max(0.0f, (((_92 * _slopeParams.z) * max(0.0f, (((_85 * 1.15297f) - (_86 * 0.12897f)) - (_87 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
  _143 = dot(float3(_110, _126, _142), float3(0.212671f, 0.71516f, 0.072169f));
  _147 = ((_110 - _143) * _powerParams.w) + _143;
  _151 = (lerp(_143, _126, _powerParams.w)) * 3.0f;  // [sem: blended]
  _155 = (lerp(_143, _142, _powerParams.w)) * 3.0f;  // [sem: blended]
  _158 = mad(-1.7106533e-05f, _155, mad(0.00040110573f, _151, (_147 * 3.0009599f)));
  _161 = mad(-2.34209e-05f, _155, mad(0.9997657f, _151, (_147 * -6.0908147e-05f)));
  _164 = mad(1.0005832f, _155, mad(8.34018e-05f, _151, (_147 * 4.855916e-05f)));
  _167 = mad(0.04736635f, _164, mad(0.33951214f, _161, (_158 * 0.61319155f)));
  _170 = mad(0.013450007f, _164, mad(0.91633576f, _161, (_158 * 0.07020692f)));
  _173 = mad(0.8696068f, _164, mad(0.1095673f, _161, (_158 * 0.020618873f)));
  _174 = dot(float3(_167, _170, _173), float3(0.27222872f, 0.67408174f, 0.053689517f));
  _176 = (_167 / _174) + -1.0f;
  _178 = (_170 / _174) + -1.0f;
  _180 = (_173 / _174) + -1.0f;
  _189 = (1.0f - exp2(dot(float3(_176, _178, _180), float3(_176, _178, _180)) * -4.0f)) * (1.0f - exp2((_174 * _174) * -4.0f));
  _195 = ((mad(-0.06368284f, _173, mad(-0.3292913f, _170, (_167 * 1.3704128f))) - _167) * _189) + _167;
  _201 = ((mad(-0.010861567f, _173, mad(1.0970908f, _170, (_167 * -0.08343426f))) - _170) * _189) + _170;
  _207 = ((mad(1.2036945f, _173, mad(-0.098625645f, _170, (_167 * -0.02579326f))) - _173) * _189) + _173;
  _213 = ((mad(0.061360642f, _207, mad(-4.5401976e-09f, _201, (_195 * 0.9386394f))) - _195) * 0.6f) + _195;
  _219 = ((mad(0.1692059f, _207, mad(0.8307942f, _201, (_195 * 6.775372e-08f))) - _201) * 0.6f) + _201;
  _223 = (mad(-2.3283064e-10f, _201, (_195 * -9.313226e-10f)) * 0.6f) + _207;
  _226 = mad(0.16386905f, _223, mad(0.14067869f, _219, (_213 * 0.6954522f)));
  _229 = mad(0.095534325f, _223, mad(0.8596711f, _219, (_213 * 0.04479458f)));
  _232 = mad(1.0015007f, _223, mad(0.00402521f, _219, (_213 * -0.005525883f)));
  _234 = max(max(_226, _229), _232);
  _241 = (max(_234, 1e-10f) - max(min(min(_226, _229), _232), 1e-10f)) / max(_234, 0.01f);
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
    _298 = (_292 < 0.0f);
    _299 = (_292 == 0.0f);
    _300 = (_295 >= 0.0f);
    _301 = (_295 < 0.0f);
    _312 = select((_300 && _299), 90.0f, select((_301 && _299), -90.0f, (select((_301 && _298), (_297 + -3.1415927f), select((_300 && _298), (_297 + 3.1415927f), _297)) * 57.295776f)));
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
  _347 = log2(max(0.0f, mad(-0.21492857f, _285, mad(-0.23651075f, _284, (_342 * 1.4514393f)))));
  _352 = log2(max(0.0f, mad(-0.09967592f, _285, mad(1.1762297f, _284, (_342 * -0.07655378f)))));
  _357 = log2(max(0.0f, mad(0.9977163f, _285, mad(-0.0060324497f, _284, (_342 * 0.008316148f)))));
  _358 = _347 * 0.30103f;
  _359 = _352 * 0.30103f;
  _360 = _357 * 0.30103f;
  _362 = (_347 * 0.2739373f) + 0.7790625f;
  _364 = (_352 * 0.2739373f) + 0.7790625f;
  _366 = (_357 * 0.2739373f) + 0.7790625f;
  _373 = select((_358 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_347 * 1.43712f)) + 1.0f)), _362);
  _380 = select((_359 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_352 * 1.43712f)) + 1.0f)), _364);
  _387 = select((_360 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_357 * 1.43712f)) + 1.0f)), _366);
  _391 = 1.0f - saturate(-0.78987026f - (_347 * 0.9446112f));
  _395 = 1.0f - saturate(-0.78987026f - (_352 * 0.9446112f));
  _399 = 1.0f - saturate(-0.78987026f - (_357 * 0.9446112f));
  _415 = max(0.0f, ((((_391 * _391) * (3.0f - (_391 * 2.0f))) * (select((_358 > -0.57039833f), (1.04f - (1.56f / (exp2((_347 * 1.013354f) + 1.9201254f) + 1.0f))), _362) - _373)) + _373));
  _431 = max(0.0f, ((((_395 * _395) * (3.0f - (_395 * 2.0f))) * (select((_359 > -0.57039833f), (1.04f - (1.56f / (exp2((_352 * 1.013354f) + 1.9201254f) + 1.0f))), _364) - _380)) + _380));
  _447 = max(0.0f, ((((_399 * _399) * (3.0f - (_399 * 2.0f))) * (select((_360 > -0.57039833f), (1.04f - (1.56f / (exp2((_357 * 1.013354f) + 1.9201254f) + 1.0f))), _366) - _387)) + _387));
  _453 = ((mad(-0.06537104f, _447, mad(1.4518155e-06f, _431, (_415 * 1.0653747f))) - _415) * 0.6f) + _415;
  _459 = ((mad(-0.2036677f, _447, mad(1.2036635f, _431, (_415 * -2.5716145e-07f))) - _431) * 0.6f) + _431;
  _465 = ((mad(0.99999964f, _447, mad(2.0954758e-08f, _431, (_415 * 1.8626451e-08f))) - _447) * 0.6f) + _447;
  _469 = 1.0f - abs(_etcParams.w);
  _470 = saturate(_etcParams.w);  // [sem: expr_sat]
  _478 = (saturate(saturate(max(0.0f, mad(-0.08325848f, _465, mad(-0.6217906f, _459, (_453 * 1.7050515f)))))) * _469) + _470;
  _486 = (saturate(saturate(max(0.0f, mad(-0.010548528f, _465, mad(1.1408027f, _459, (_453 * -0.13025719f)))))) * _469) + _470;
  _494 = (saturate(saturate(max(0.0f, mad(1.1529719f, _465, mad(-0.12896876f, _459, (_453 * -0.024003278f)))))) * _469) + _470;
  if (_colorGradingParams.w > 0.0f) {
    _499 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _516 = (((max(0.0f, (1.0f - _494)) - _494) * _499) + _494);
    _517 = (((max(0.0f, (1.0f - _486)) - _486) * _499) + _486);
    _518 = (((max(0.0f, (1.0f - _478)) - _478) * _499) + _478);
  } else {
    _516 = _494;
    _517 = _486;
    _518 = _478;
  }
  _520 = _userImageAdjust.y + 1.0f;
  _522 = _userImageAdjust.x + 0.5f;
  _525 = ((_518 + -0.5f) * _520) + _522;
  _528 = ((_517 + -0.5f) * _520) + _522;
  _531 = ((_516 + -0.5f) * _520) + _522;
  _537 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _539 = (TEXCOORD.x * 2.0f) + -1.0f;
  _540 = TEXCOORD.y * 2.0f;
  _541 = 1.0f - _540;
  _553 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _541, ((_projToPrevProj[3].x) * _539)));
  _563 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _541, ((_projToPrevProj[0].x) * _539))) + (_projToPrevProj[0].w)) / _553) - _539;
  _573 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _541, ((_projToPrevProj[1].x) * _539))) + (_projToPrevProj[1].w)) / _553) - _541;
  if (_localToneMappingParams.w > 0.0f) {
    _586 = saturate(1.0f - (sqrt((_573 * _573) + (_563 * _563)) * 2.0f));  // [sem: expr_sat]
  } else {
    _586 = 1.0f;  // [sem: expr_sat]
  }
  _587 = abs(_539);
  _589 = abs(_540 + -1.0f);
  _595 = saturate(1.0f - ((_586 * _postProcessParams.x) * dot(float2(_587, _589), float2(_587, _589))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _642 = (exp2(log2(saturate(mad(_colorBlind0.z, _531, mad(_colorBlind0.y, _528, (_colorBlind0.x * _525))))) * _537) * _595);
      _643 = (exp2(log2(saturate(mad(_colorBlind1.z, _531, mad(_colorBlind1.y, _528, (_colorBlind1.x * _525))))) * _537) * _595);
      _644 = (exp2(log2(saturate(mad(_colorBlind2.z, _531, mad(_colorBlind2.y, _528, (_colorBlind2.x * _525))))) * _537) * _595);
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
