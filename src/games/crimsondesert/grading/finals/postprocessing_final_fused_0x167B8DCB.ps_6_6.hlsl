Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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
  float4 _18;
  float _41;
  float _42;
  float _86;
  float _87;
  float _88;
  float _457;
  float _689;
  float _690;
  float _691;
  float _727;
  float _728;
  float _729;
  float _798;
  float _855;
  float _856;
  float _857;
  float _52;
  float _53;
  float _55;
  float _56;
  float _58;
  float _71;
  float _73;
  float _81;
  float _94;
  float _96;
  float _98;
  float _100;
  float _116;
  float _130;
  float _144;
  float _145;
  float _149;
  float _153;
  float _157;
  float _160;
  float _163;
  float _166;
  float _174;
  float _182;
  float _190;
  float _195;
  float _200;
  float _205;
  float _208;
  float _209;
  float _210;
  float _222;
  float _234;
  float _246;
  float _247;
  float _250;
  float _254;
  float _258;
  float _261;
  float _264;
  float _267;
  float _275;
  float _283;
  float _291;
  float _310;
  float _314;
  float _316;
  float _317;
  float _318;
  float _330;
  float _342;
  float _354;
  float _355;
  float _358;
  float _362;
  float _366;
  float _369;
  float _372;
  float _375;
  float _383;
  float _391;
  float _399;
  float _418;
  float _419;
  float _420;
  float _421;
  float _423;
  float _426;
  float _429;
  float _432;
  float _434;
  float _439;
  float _448;
  float _458;
  float _459;
  float _460;
  float _472;
  float _484;
  float _496;
  float _497;
  float _500;
  float _504;
  float _508;
  float _511;
  float _514;
  float _517;
  float _525;
  float _533;
  float _541;
  float _547;
  float _553;
  float _559;
  float _562;
  float _571;
  float _579;
  float _585;
  float _591;
  float _592;
  float _596;
  float _600;
  float _604;
  float _607;
  float _610;
  float _613;
  float _621;
  float _629;
  float _637;
  float _642;
  float _646;
  float _663;
  float _665;
  float _695;
  float _696;
  float _699;
  float _702;
  float _705;
  float _710;
  float _732;
  float _734;
  float _737;
  float _740;
  float _743;
  float _749;
  float _751;
  float _752;
  float _753;
  float _765;
  float _775;
  float _785;
  float _799;
  float _801;
  float _808;
  _18 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
    _42 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
  } else {
    _41 = _18.z;
    _42 = _18.x;
  }
  if (_slopeParams.w > 0.0f) {
    _52 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _53 = _52 * 0.7692308f;
    _55 = frac(abs(_53));
    _56 = _52 * 0.08130081f;
    _58 = frac(abs(_56));
    _71 = ((select((_56 >= (-0.0f - _56)), _58, (-0.0f - _58)) * 1230.0f) + 10.0f) * ((select((_53 >= (-0.0f - _53)), _55, (-0.0f - _55)) * 13.0f) + 1.0f);
    _73 = frac(abs(_71));
    _81 = ((0.0075000525f - (select((_71 >= (-0.0f - _71)), _73, (-0.0f - _73)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _86 = (_81 * _41);
    _87 = (_81 * _18.y);
    _88 = (_81 * _42);
  } else {
    _86 = _41;
    _87 = _18.y;
    _88 = _42;
  }
  _94 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
  _96 = _94 * _slopeParams.x;
  _98 = _94 * _slopeParams.y;
  _100 = _94 * _slopeParams.z;
  _116 = exp2(_powerParams.x * log2(max(0.0f, ((_96 * max(0.0f, (((_87 * -0.62179f) - (_86 * 0.08326f)) + (_88 * 1.70505f)))) + _offsetParams.x))));
  _130 = exp2(log2(max(0.0f, ((max(0.0f, (((_87 * 1.1408f) - (_86 * 0.01055f)) - (_88 * 0.13026f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _144 = exp2(log2(max(0.0f, ((max(0.0f, (((_86 * 1.15297f) - (_87 * 0.12897f)) - (_88 * 0.024f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _145 = dot(float3(_116, _130, _144), float3(0.212671f, 0.71516f, 0.072169f));
  _149 = ((_116 - _145) * _powerParams.w) + _145;
  _153 = (lerp(_145, _130, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _157 = (lerp(_145, _144, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _160 = mad(0.04823f, _157, mad(0.35458f, _153, (_149 * 0.9953167f)));
  _163 = mad(0.01566f, _157, mad(0.90834f, _153, (_149 * 0.12666667f)));
  _166 = mad(0.83777f, _157, mad(0.13383f, _153, (_149 * 0.047333334f)));
  _174 = (((_160 + 0.0245786f) * _160) + -9.0537e-05f) / ((((_160 * 0.983729f) + 0.432951f) * _160) + 0.238081f);
  _182 = (((_163 + 0.0245786f) * _163) + -9.0537e-05f) / ((((_163 * 0.983729f) + 0.432951f) * _163) + 0.238081f);
  _190 = (((_166 + 0.0245786f) * _166) + -9.0537e-05f) / ((((_166 * 0.983729f) + 0.432951f) * _166) + 0.238081f);
  _195 = saturate(saturate(mad(-0.07367f, _190, mad(-0.53108f, _182, (_174 * 1.60475f)))));  // [sem: expr_sat]
  _200 = saturate(saturate(mad(-0.00605f, _190, mad(1.10813f, _182, (_174 * -0.10208f)))));  // [sem: expr_sat]
  _205 = saturate(saturate(mad(1.07602f, _190, mad(-0.07276f, _182, (_174 * -0.00327f)))));  // [sem: expr_sat]
  _208 = _localToneMappingParams.x * _88;
  _209 = _localToneMappingParams.x * _87;
  _210 = _localToneMappingParams.x * _86;
  _222 = exp2(log2(max(0.0f, ((max(0.0f, (((_208 * 1.70505f) - (_209 * 0.62179f)) - (_210 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _234 = exp2(log2(max(0.0f, ((max(0.0f, (((_209 * 1.1408f) - (_208 * 0.13026f)) - (_210 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _246 = exp2(log2(max(0.0f, ((max(0.0f, (((_208 * -0.024f) - (_209 * 0.12897f)) + (_210 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _247 = dot(float3(_222, _234, _246), float3(0.212671f, 0.71516f, 0.072169f));
  _250 = ((_222 - _247) * _powerParams.w) + _247;
  _254 = (lerp(_247, _234, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _258 = (lerp(_247, _246, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _261 = mad(0.04823f, _258, mad(0.35458f, _254, (_250 * 0.9953167f)));
  _264 = mad(0.01566f, _258, mad(0.90834f, _254, (_250 * 0.12666667f)));
  _267 = mad(0.83777f, _258, mad(0.13383f, _254, (_250 * 0.047333334f)));
  _275 = (((_261 + 0.0245786f) * _261) + -9.0537e-05f) / ((((_261 * 0.983729f) + 0.432951f) * _261) + 0.238081f);
  _283 = (((_264 + 0.0245786f) * _264) + -9.0537e-05f) / ((((_264 * 0.983729f) + 0.432951f) * _264) + 0.238081f);
  _291 = (((_267 + 0.0245786f) * _267) + -9.0537e-05f) / ((((_267 * 0.983729f) + 0.432951f) * _267) + 0.238081f);
  _310 = dot(float3(saturate(saturate(saturate(mad(-0.07367f, _291, mad(-0.53108f, _283, (_275 * 1.60475f)))))), saturate(saturate(saturate(mad(-0.00605f, _291, mad(1.10813f, _283, (_275 * -0.10208f)))))), saturate(saturate(saturate(mad(1.07602f, _291, mad(-0.07276f, _283, (_275 * -0.00327f))))))), float3(0.1f, 0.7f, 0.2f));
  _314 = dot(float3(saturate(_195), saturate(_200), saturate(_205)), float3(0.1f, 0.7f, 0.2f));
  _316 = _localToneMappingParams.y * _88;
  _317 = _localToneMappingParams.y * _87;
  _318 = _localToneMappingParams.y * _86;
  _330 = exp2(log2(max(0.0f, ((max(0.0f, (((_316 * 1.70505f) - (_317 * 0.62179f)) - (_318 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _342 = exp2(log2(max(0.0f, ((max(0.0f, (((_317 * 1.1408f) - (_316 * 0.13026f)) - (_318 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _354 = exp2(log2(max(0.0f, ((max(0.0f, (((_316 * -0.024f) - (_317 * 0.12897f)) + (_318 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _355 = dot(float3(_330, _342, _354), float3(0.212671f, 0.71516f, 0.072169f));
  _358 = ((_330 - _355) * _powerParams.w) + _355;
  _362 = (lerp(_355, _342, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _366 = (lerp(_355, _354, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _369 = mad(0.04823f, _366, mad(0.35458f, _362, (_358 * 0.9953167f)));
  _372 = mad(0.01566f, _366, mad(0.90834f, _362, (_358 * 0.12666667f)));
  _375 = mad(0.83777f, _366, mad(0.13383f, _362, (_358 * 0.047333334f)));
  _383 = (((_369 + 0.0245786f) * _369) + -9.0537e-05f) / ((((_369 * 0.983729f) + 0.432951f) * _369) + 0.238081f);
  _391 = (((_372 + 0.0245786f) * _372) + -9.0537e-05f) / ((((_372 * 0.983729f) + 0.432951f) * _372) + 0.238081f);
  _399 = (((_375 + 0.0245786f) * _375) + -9.0537e-05f) / ((((_375 * 0.983729f) + 0.432951f) * _375) + 0.238081f);
  _418 = dot(float3(saturate(saturate(saturate(mad(-0.07367f, _399, mad(-0.53108f, _391, (_383 * 1.60475f)))))), saturate(saturate(saturate(mad(-0.00605f, _399, mad(1.10813f, _391, (_383 * -0.10208f)))))), saturate(saturate(saturate(mad(1.07602f, _399, mad(-0.07276f, _391, (_383 * -0.00327f))))))), float3(0.1f, 0.7f, 0.2f));
  _419 = _310 + -0.5f;
  _420 = _314 + -0.5f;
  _421 = _418 + -0.5f;
  _423 = _localToneMappingParams.z * -0.7213475f;
  _426 = exp2((_419 * _419) * _423);
  _429 = exp2((_420 * _420) * _423);
  _432 = exp2((_421 * _421) * _423);
  _434 = dot(float3(_426, _429, _432), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _439 = dot(float3(max(_195, 0.0f), max(_200, 0.0f), max(_205, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _448 = max(dot(float3(((_426 / _434) * _310), ((_429 / _434) * _314), ((_432 / _434) * _418)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _439;
  if (!(_439 > 0.007f)) {
    _457 = ((((_439 * _439) * 20408.16f) * (_448 + -1.0f)) + 1.0f);
  } else {
    _457 = _448;
  }
  _458 = _457 * _88;
  _459 = _457 * _87;
  _460 = _457 * _86;
  _472 = exp2(log2(max(0.0f, ((max(0.0f, (((_458 * 1.70505f) - (_459 * 0.62179f)) - (_460 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _484 = exp2(log2(max(0.0f, ((max(0.0f, (((_459 * 1.1408f) - (_458 * 0.13026f)) - (_460 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _496 = exp2(log2(max(0.0f, ((max(0.0f, (((_458 * -0.024f) - (_459 * 0.12897f)) + (_460 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _497 = dot(float3(_472, _484, _496), float3(0.212671f, 0.71516f, 0.072169f));
  _500 = ((_472 - _497) * _powerParams.w) + _497;
  _504 = (lerp(_497, _484, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _508 = (lerp(_497, _496, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _511 = mad(0.04823f, _508, mad(0.35458f, _504, (_500 * 0.9953167f)));
  _514 = mad(0.01566f, _508, mad(0.90834f, _504, (_500 * 0.12666667f)));
  _517 = mad(0.83777f, _508, mad(0.13383f, _504, (_500 * 0.047333334f)));
  _525 = (((_511 + 0.0245786f) * _511) + -9.0537e-05f) / ((((_511 * 0.983729f) + 0.432951f) * _511) + 0.238081f);
  _533 = (((_514 + 0.0245786f) * _514) + -9.0537e-05f) / ((((_514 * 0.983729f) + 0.432951f) * _514) + 0.238081f);
  _541 = (((_517 + 0.0245786f) * _517) + -9.0537e-05f) / ((((_517 * 0.983729f) + 0.432951f) * _517) + 0.238081f);
  _547 = max(saturate(saturate(mad(-0.07367f, _541, mad(-0.53108f, _533, (_525 * 1.60475f))))), 0.0f);
  _553 = max(saturate(saturate(mad(-0.00605f, _541, mad(1.10813f, _533, (_525 * -0.10208f))))), 0.0f);
  _559 = max(saturate(saturate(mad(1.07602f, _541, mad(-0.07276f, _533, (_525 * -0.00327f))))), 0.0f);
  _562 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_562.x < 1e-07f) || (_562.x == 1.0f))) {
    _571 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _579 = exp2(_powerParams.x * log2(max(0.0f, _offsetParams.x)));
    _585 = exp2(log2(max(0.0f, _offsetParams.y)) * _powerParams.y);
    _591 = exp2(log2(max(0.0f, _offsetParams.z)) * _powerParams.z);
    _592 = dot(float3(_579, _585, _591), float3(0.212671f, 0.71516f, 0.072169f));
    _596 = ((_579 - _592) * _powerParams.w) + _592;
    _600 = (lerp(_592, _585, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _604 = (lerp(_592, _591, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _607 = mad(0.04823f, _604, mad(0.35458f, _600, (_596 * 0.9953167f)));
    _610 = mad(0.01566f, _604, mad(0.90834f, _600, (_596 * 0.12666667f)));
    _613 = mad(0.83777f, _604, mad(0.13383f, _600, (_596 * 0.047333334f)));
    _621 = (((_607 + 0.0245786f) * _607) + -9.0537e-05f) / ((((_607 * 0.983729f) + 0.432951f) * _607) + 0.238081f);
    _629 = (((_610 + 0.0245786f) * _610) + -9.0537e-05f) / ((((_610 * 0.983729f) + 0.432951f) * _610) + 0.238081f);
    _637 = (((_613 + 0.0245786f) * _613) + -9.0537e-05f) / ((((_613 * 0.983729f) + 0.432951f) * _613) + 0.238081f);
    _642 = saturate(saturate(mad(-0.00605f, _637, mad(1.10813f, _629, (_621 * -0.10208f)))));  // [sem: expr_sat]
    _646 = max(max(_553, _642), max(max(_642, _642), _642));
    _663 = (sqrt(saturate((1.0f / _646) * min(min(min(_553, _642), min(min(_642, _642), _642)), (1.0f - _646)))) * 4.0f) * (-1.0f / (((1.0f - _571) * 8.0f) + (_571 * 5.0f)));
    _665 = 1.0f / (_663 + 1.0f);
    // [sem: expr_sat]
    _689 = saturate(((saturate(saturate(mad(1.07602f, _637, mad(-0.07276f, _629, (_621 * -0.00327f))))) * _663) + _559) * _665);
    _690 = saturate(((_663 * _642) + _553) * _665);  // [sem: expr_sat]
    // [sem: expr_sat]
    _691 = saturate(((saturate(saturate(mad(-0.07367f, _637, mad(-0.53108f, _629, (_621 * 1.60475f))))) * _663) + _547) * _665);
  } else {
    _689 = _559;  // [sem: expr_sat]
    _690 = _553;  // [sem: expr_sat]
    _691 = _547;  // [sem: expr_sat]
  }
  _695 = 1.0f - abs(_etcParams.w);
  _696 = saturate(_etcParams.w);  // [sem: expr_sat]
  _699 = (saturate(_691) * _695) + _696;
  _702 = (saturate(_690) * _695) + _696;
  _705 = (saturate(_689) * _695) + _696;
  if (_colorGradingParams.w > 0.0f) {
    _710 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _727 = (((max(0.0f, (1.0f - _705)) - _705) * _710) + _705);
    _728 = (((max(0.0f, (1.0f - _702)) - _702) * _710) + _702);
    _729 = (((max(0.0f, (1.0f - _699)) - _699) * _710) + _699);
  } else {
    _727 = _705;
    _728 = _702;
    _729 = _699;
  }
  _732 = _userImageAdjust.y + 1.0f;
  _734 = _userImageAdjust.x + 0.5f;
  _737 = (_732 * (_729 + -0.5f)) + _734;
  _740 = (_732 * (_728 + -0.5f)) + _734;
  _743 = (_732 * (_727 + -0.5f)) + _734;
  _749 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _751 = (TEXCOORD.x * 2.0f) + -1.0f;
  _752 = TEXCOORD.y * 2.0f;
  _753 = 1.0f - _752;
  _765 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _753, ((_projToPrevProj[3].x) * _751)));
  _775 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _753, ((_projToPrevProj[0].x) * _751))) + (_projToPrevProj[0].w)) / _765) - _751;
  _785 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _753, ((_projToPrevProj[1].x) * _751))) + (_projToPrevProj[1].w)) / _765) - _753;
  if (_localToneMappingParams.w > 0.0f) {
    _798 = saturate(1.0f - (sqrt((_785 * _785) + (_775 * _775)) * 2.0f));  // [sem: expr_sat]
  } else {
    _798 = 1.0f;  // [sem: expr_sat]
  }
  _799 = abs(_751);
  _801 = abs(_752 + -1.0f);
  _808 = saturate(1.0f - ((_postProcessParams.x * _798) * dot(float2(_799, _801), float2(_799, _801))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _855 = (exp2(log2(saturate(mad(_colorBlind0.z, _743, mad(_colorBlind0.y, _740, (_colorBlind0.x * _737))))) * _749) * _808);
      _856 = (exp2(log2(saturate(mad(_colorBlind1.z, _743, mad(_colorBlind1.y, _740, (_colorBlind1.x * _737))))) * _749) * _808);
      _857 = (exp2(log2(saturate(mad(_colorBlind2.z, _743, mad(_colorBlind2.y, _740, (_colorBlind2.x * _737))))) * _749) * _808);
    } else {
      _855 = 0.0f;
      _856 = 0.0f;
      _857 = 0.0f;
    }
  } else {
    _855 = 0.0f;
    _856 = 0.0f;
    _857 = 0.0f;
  }
  SV_Target.x = _855;
  SV_Target.y = _856;
  SV_Target.z = _857;
  SV_Target.w = _18.w;
  return SV_Target;
}
