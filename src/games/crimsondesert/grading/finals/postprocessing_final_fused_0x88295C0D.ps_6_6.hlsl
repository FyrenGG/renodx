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
  float _588;
  float _898;
  float _899;
  float _900;
  float _936;
  float _937;
  float _938;
  float _1040;
  float _1062;
  float _1063;
  float _1064;
  float _52;
  float _53;
  float _57;
  float _62;
  float _66;
  float _71;
  float _75;
  float _81;
  float _91;
  float _94;
  float _124;
  float _126;
  float _128;
  float _142;
  float _143;
  float _144;
  float _146;
  float _153;
  float _154;
  float _155;
  float _166;
  float _170;
  float _174;
  float _175;
  float _176;
  float _177;
  float _178;
  float _179;
  float _187;
  float _189;
  float _191;
  float _195;
  float _199;
  float _200;
  float _201;
  float _220;
  float _222;
  float _224;
  float _226;
  float _260;
  float _261;
  float _262;
  float _265;
  float _266;
  float _267;
  float _301;
  float _302;
  float _303;
  float _304;
  float _311;
  float _312;
  float _313;
  float _314;
  float _315;
  float _316;
  float _317;
  float _318;
  float _319;
  float _327;
  float _329;
  float _331;
  float _338;
  float _339;
  float _340;
  float _359;
  float _361;
  float _363;
  float _404;
  float _408;
  float _410;
  float _411;
  float _412;
  float _446;
  float _447;
  float _448;
  float _449;
  float _456;
  float _457;
  float _458;
  float _459;
  float _460;
  float _461;
  float _462;
  float _463;
  float _464;
  float _472;
  float _474;
  float _476;
  float _483;
  float _484;
  float _485;
  float _504;
  float _506;
  float _508;
  float _549;
  float _550;
  float _551;
  float _552;
  float _554;
  float _561;
  float _562;
  float _563;
  float _565;
  float _577;
  float _579;
  float _589;
  float _590;
  float _591;
  float _594;
  float _635;
  float _636;
  float _637;
  float _638;
  float _645;
  float _646;
  float _647;
  float _648;
  float _649;
  float _650;
  float _651;
  float _652;
  float _653;
  float _661;
  float _663;
  float _665;
  float _672;
  float _673;
  float _674;
  float _693;
  float _695;
  float _697;
  float _735;
  float _736;
  float _737;
  float _740;
  float _749;
  float _764;
  float _765;
  float _766;
  float _767;
  float _774;
  float _775;
  float _776;
  float _777;
  float _778;
  float _779;
  float _780;
  float _781;
  float _782;
  float _790;
  float _792;
  float _794;
  float _801;
  float _802;
  float _803;
  float _822;
  float _824;
  float _826;
  float _862;
  float _871;
  float _878;
  float _881;
  float _907;
  float _911;
  float _912;
  float _913;
  float _914;
  float _919;
  float _944;
  float _948;
  float _949;
  float _950;
  float _951;
  float _981;
  float _992;
  float _993;
  float _994;
  float _1022;
  float _1025;
  float _1026;
  float _1043;
  float _1044;
  float _1048;
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
  _91 = _exposure0.x * 0.65f;
  _94 = _91 * _userImageAdjust.z;
  _124 = _94 * _slopeParams.x;
  _126 = _94 * _slopeParams.y;
  _128 = _94 * _slopeParams.z;
  _142 = exp2(log2(max(0.0f, (_offsetParams.x + (_124 * max(0.0f, (((_86 * 1.70505f) - (_87 * 0.62179f)) - (_88 * 0.08326f))))))) * _powerParams.x);
  _143 = exp2(log2(max(0.0f, (_offsetParams.y + (_126 * max(0.0f, (((_87 * 1.1408f) - (_86 * 0.13026f)) - (_88 * 0.01055f))))))) * _powerParams.y);
  _144 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_86 * -0.024f) - (_87 * 0.12897f)) + (_88 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _146 = dot(float3(_142, _143, _144), float3(0.212671f, 0.71516f, 0.072169f));
  _153 = ((_142 - _146) * _powerParams.w) + _146;
  _154 = ((_143 - _146) * _powerParams.w) + _146;
  _155 = ((_144 - _146) * _powerParams.w) + _146;
  _166 = ((_toneMapParams0.x - _toneMapParams0.z) * _toneMapParams0.w) / _toneMapParams0.y;
  _170 = (_toneMapParams0.x - _toneMapParams0.z) - (_166 * _toneMapParams0.y);
  _174 = _153 / _toneMapParams0.z;
  _175 = _154 / _toneMapParams0.z;
  _176 = _155 / _toneMapParams0.z;
  _177 = saturate(_174);  // [sem: _174_sat]
  _178 = saturate(_175);  // [sem: _175_sat]
  _179 = saturate(_176);  // [sem: _176_sat]
  _187 = (_177 * _177) * (3.0f - (_177 * 2.0f));
  _189 = (_178 * _178) * (3.0f - (_178 * 2.0f));
  _191 = (_179 * _179) * (3.0f - (_179 * 2.0f));
  _195 = _166 + _toneMapParams0.z;
  _199 = select((_153 < _195), 0.0f, 1.0f);
  _200 = select((_154 < _195), 0.0f, 1.0f);
  _201 = select((_155 < _195), 0.0f, 1.0f);
  _220 = _153 - _toneMapParams0.z;
  _222 = _154 - _toneMapParams0.z;
  _224 = _155 - _toneMapParams0.z;
  _226 = ((-0.0f - ((_toneMapParams0.x * _toneMapParams0.y) / _170)) / _toneMapParams0.x) * 1.442695f;
  // [sem: expr_sat]
  _260 = saturate((((((pow(_174, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _187)) + ((_187 - _199) * ((_220 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_226 * (_220 - _166)) * _170)) * _199));
  // [sem: expr_sat]
  _261 = saturate((((((pow(_175, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _189)) + ((_189 - _200) * ((_222 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_226 * (_222 - _166)) * _170)) * _200));
  // [sem: expr_sat]
  _262 = saturate((((((pow(_176, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _191)) + ((_191 - _201) * ((_224 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_226 * (_224 - _166)) * _170)) * _201));
  _265 = _localToneMappingParams.x * _86;
  _266 = _localToneMappingParams.x * _87;
  _267 = _localToneMappingParams.x * _88;
  _301 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_265 * 1.70505f) - (_266 * 0.62179f)) - (_267 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _302 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_266 * 1.1408f) - (_265 * 0.13026f)) - (_267 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _303 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_265 * -0.024f) - (_266 * 0.12897f)) + (_267 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _304 = dot(float3(_301, _302, _303), float3(0.212671f, 0.71516f, 0.072169f));
  _311 = ((_301 - _304) * _powerParams.w) + _304;
  _312 = ((_302 - _304) * _powerParams.w) + _304;
  _313 = ((_303 - _304) * _powerParams.w) + _304;
  _314 = _311 / _toneMapParams0.z;
  _315 = _312 / _toneMapParams0.z;
  _316 = _313 / _toneMapParams0.z;
  _317 = saturate(_314);  // [sem: _314_sat]
  _318 = saturate(_315);  // [sem: _315_sat]
  _319 = saturate(_316);  // [sem: _316_sat]
  _327 = (_317 * _317) * (3.0f - (_317 * 2.0f));
  _329 = (_318 * _318) * (3.0f - (_318 * 2.0f));
  _331 = (_319 * _319) * (3.0f - (_319 * 2.0f));
  _338 = select((_311 < _195), 0.0f, 1.0f);
  _339 = select((_312 < _195), 0.0f, 1.0f);
  _340 = select((_313 < _195), 0.0f, 1.0f);
  _359 = _311 - _toneMapParams0.z;
  _361 = _312 - _toneMapParams0.z;
  _363 = _313 - _toneMapParams0.z;
  _404 = dot(float3(saturate(saturate((((((pow(_314, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _327)) + ((_327 - _338) * ((_359 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_226 * (_359 - _166)) * _170)) * _338))), saturate(saturate((((((pow(_315, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _329)) + ((_329 - _339) * ((_361 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_226 * (_361 - _166)) * _170)) * _339))), saturate(saturate((((((pow(_316, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _331)) + ((_331 - _340) * ((_363 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_226 * (_363 - _166)) * _170)) * _340)))), float3(0.1f, 0.7f, 0.2f));
  _408 = dot(float3(saturate(_260), saturate(_261), saturate(_262)), float3(0.1f, 0.7f, 0.2f));
  _410 = _localToneMappingParams.y * _86;
  _411 = _localToneMappingParams.y * _87;
  _412 = _localToneMappingParams.y * _88;
  _446 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_410 * 1.70505f) - (_411 * 0.62179f)) - (_412 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _447 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_411 * 1.1408f) - (_410 * 0.13026f)) - (_412 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _448 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_410 * -0.024f) - (_411 * 0.12897f)) + (_412 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _449 = dot(float3(_446, _447, _448), float3(0.212671f, 0.71516f, 0.072169f));
  _456 = ((_446 - _449) * _powerParams.w) + _449;
  _457 = ((_447 - _449) * _powerParams.w) + _449;
  _458 = ((_448 - _449) * _powerParams.w) + _449;
  _459 = _456 / _toneMapParams0.z;
  _460 = _457 / _toneMapParams0.z;
  _461 = _458 / _toneMapParams0.z;
  _462 = saturate(_459);  // [sem: _459_sat]
  _463 = saturate(_460);  // [sem: _460_sat]
  _464 = saturate(_461);  // [sem: _461_sat]
  _472 = (_462 * _462) * (3.0f - (_462 * 2.0f));
  _474 = (_463 * _463) * (3.0f - (_463 * 2.0f));
  _476 = (_464 * _464) * (3.0f - (_464 * 2.0f));
  _483 = select((_456 < _195), 0.0f, 1.0f);
  _484 = select((_457 < _195), 0.0f, 1.0f);
  _485 = select((_458 < _195), 0.0f, 1.0f);
  _504 = _456 - _toneMapParams0.z;
  _506 = _457 - _toneMapParams0.z;
  _508 = _458 - _toneMapParams0.z;
  _549 = dot(float3(saturate(saturate((((((pow(_459, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _472)) + ((_472 - _483) * ((_504 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_226 * (_504 - _166)) * _170)) * _483))), saturate(saturate((((((pow(_460, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _474)) + ((_474 - _484) * ((_506 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_226 * (_506 - _166)) * _170)) * _484))), saturate(saturate((((((pow(_461, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _476)) + ((_476 - _485) * ((_508 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_226 * (_508 - _166)) * _170)) * _485)))), float3(0.1f, 0.7f, 0.2f));
  _550 = _404 + -0.5f;
  _551 = _408 + -0.5f;
  _552 = _549 + -0.5f;
  _554 = _localToneMappingParams.z * -0.7213475f;
  _561 = exp2((_550 * _550) * _554);
  _562 = exp2((_551 * _551) * _554);
  _563 = exp2((_552 * _552) * _554);
  _565 = dot(float3(_561, _562, _563), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _577 = dot(float3(max(_260, 0.0f), max(_261, 0.0f), max(_262, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _579 = max(dot(float3(((_561 / _565) * _404), ((_562 / _565) * _408), ((_563 / _565) * _549)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _577;
  if (!(_577 > 0.007f)) {
    _588 = ((((_577 * _577) * 20408.16f) * (_579 + -1.0f)) + 1.0f);
  } else {
    _588 = _579;
  }
  _589 = _588 * _86;
  _590 = _588 * _87;
  _591 = _588 * _88;
  _594 = _userImageAdjust.z * _91;
  _635 = exp2(log2(max(0.0f, (((_594 * max(0.0f, (((_589 * 1.70505f) - (_590 * 0.62179f)) - (_591 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
  _636 = exp2(log2(max(0.0f, (((max(0.0f, (((_590 * 1.1408f) - (_589 * 0.13026f)) - (_591 * 0.01055f))) * _594) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
  _637 = exp2(log2(max(0.0f, (((max(0.0f, (((_589 * -0.024f) - (_590 * 0.12897f)) + (_591 * 1.15297f))) * _594) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
  _638 = dot(float3(_635, _636, _637), float3(0.212671f, 0.71516f, 0.072169f));
  _645 = ((_635 - _638) * _powerParams.w) + _638;
  _646 = ((_636 - _638) * _powerParams.w) + _638;
  _647 = ((_637 - _638) * _powerParams.w) + _638;
  _648 = _645 / _toneMapParams0.z;
  _649 = _646 / _toneMapParams0.z;
  _650 = _647 / _toneMapParams0.z;
  _651 = saturate(_648);  // [sem: _648_sat]
  _652 = saturate(_649);  // [sem: _649_sat]
  _653 = saturate(_650);  // [sem: _650_sat]
  _661 = (_651 * _651) * (3.0f - (_651 * 2.0f));
  _663 = (_652 * _652) * (3.0f - (_652 * 2.0f));
  _665 = (_653 * _653) * (3.0f - (_653 * 2.0f));
  _672 = select((_645 < _195), 0.0f, 1.0f);
  _673 = select((_646 < _195), 0.0f, 1.0f);
  _674 = select((_647 < _195), 0.0f, 1.0f);
  _693 = _645 - _toneMapParams0.z;
  _695 = _646 - _toneMapParams0.z;
  _697 = _647 - _toneMapParams0.z;
  _735 = max(saturate((((((pow(_648, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _661)) + ((_661 - _672) * ((_693 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_226 * (_693 - _166)) * _170)) * _672)), 0.0f);
  _736 = max(saturate((((((pow(_649, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _663)) + ((_663 - _673) * ((_695 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_226 * (_695 - _166)) * _170)) * _673)), 0.0f);
  _737 = max(saturate((((((pow(_650, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _665)) + ((_665 - _674) * ((_697 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_226 * (_697 - _166)) * _170)) * _674)), 0.0f);
  _740 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_740.x < 1e-07f) || (_740.x == 1.0f))) {
    _749 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _764 = exp2(log2(max(0.0f, _offsetParams.x)) * _powerParams.x);
    _765 = exp2(log2(max(0.0f, _offsetParams.y)) * _powerParams.y);
    _766 = exp2(log2(max(0.0f, _offsetParams.z)) * _powerParams.z);
    _767 = dot(float3(_764, _765, _766), float3(0.212671f, 0.71516f, 0.072169f));
    _774 = ((_764 - _767) * _powerParams.w) + _767;
    _775 = ((_765 - _767) * _powerParams.w) + _767;
    _776 = ((_766 - _767) * _powerParams.w) + _767;
    _777 = _774 / _toneMapParams0.z;
    _778 = _775 / _toneMapParams0.z;
    _779 = _776 / _toneMapParams0.z;
    _780 = saturate(_777);  // [sem: _777_sat]
    _781 = saturate(_778);  // [sem: _778_sat]
    _782 = saturate(_779);  // [sem: _779_sat]
    _790 = (_780 * _780) * (3.0f - (_780 * 2.0f));
    _792 = (_781 * _781) * (3.0f - (_781 * 2.0f));
    _794 = (_782 * _782) * (3.0f - (_782 * 2.0f));
    _801 = select((_774 < _195), 0.0f, 1.0f);
    _802 = select((_775 < _195), 0.0f, 1.0f);
    _803 = select((_776 < _195), 0.0f, 1.0f);
    _822 = _774 - _toneMapParams0.z;
    _824 = _775 - _toneMapParams0.z;
    _826 = _776 - _toneMapParams0.z;
    // [sem: expr_sat]
    _862 = saturate((((((pow(_778, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _792)) + ((_792 - _802) * ((_824 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_226 * (_824 - _166)) * _170)) * _802));
    _871 = max(max(_736, _862), max(max(_862, _862), _862));
    _878 = sqrt(saturate(min(min(min(_736, _862), min(min(_862, _862), _862)), (1.0f - _871)) * (1.0f / _871))) * (-1.0f / (((1.0f - _749) * 8.0f) + (_749 * 5.0f)));
    _881 = 1.0f / ((_878 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _898 = saturate((((saturate((((((pow(_777, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _790)) + ((_790 - _801) * ((_822 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_226 * (_822 - _166)) * _170)) * _801)) * 4.0f) * _878) + _735) * _881);
    _899 = saturate((((_862 * 4.0f) * _878) + _736) * _881);  // [sem: expr_sat]
    // [sem: expr_sat]
    _900 = saturate((((saturate((((((pow(_779, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _794)) + ((_794 - _803) * ((_826 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_226 * (_826 - _166)) * _170)) * _803)) * 4.0f) * _878) + _737) * _881);
  } else {
    _898 = _735;  // [sem: expr_sat]
    _899 = _736;  // [sem: expr_sat]
    _900 = _737;  // [sem: expr_sat]
  }
  _907 = 1.0f - abs(_etcParams.w);
  _911 = saturate(_etcParams.w);  // [sem: expr_sat]
  _912 = (_907 * saturate(_898)) + _911;
  _913 = (_907 * saturate(_899)) + _911;
  _914 = (_907 * saturate(_900)) + _911;
  if (_colorGradingParams.w > 0.0f) {
    _919 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _936 = (((max(0.0f, (1.0f - _912)) - _912) * _919) + _912);
    _937 = (((max(0.0f, (1.0f - _913)) - _913) * _919) + _913);
    _938 = (((max(0.0f, (1.0f - _914)) - _914) * _919) + _914);
  } else {
    _936 = _912;
    _937 = _913;
    _938 = _914;
  }
  _944 = _userImageAdjust.y + 1.0f;
  _948 = _userImageAdjust.x + 0.5f;
  _949 = ((_936 + -0.5f) * _944) + _948;
  _950 = ((_937 + -0.5f) * _944) + _948;
  _951 = ((_938 + -0.5f) * _944) + _948;
  _981 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _992 = (TEXCOORD.x * 2.0f) + -1.0f;
  _993 = TEXCOORD.y * 2.0f;
  _994 = 1.0f - _993;
  _1022 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _994, ((_projToPrevProj[3].x) * _992))) + (_projToPrevProj[3].w);
  _1025 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _994, ((_projToPrevProj[0].x) * _992))) + (_projToPrevProj[0].w)) / _1022) - _992;
  _1026 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _994, ((_projToPrevProj[1].x) * _992))) + (_projToPrevProj[1].w)) / _1022) - _994;
  if (_localToneMappingParams.w > 0.0f) {
    _1040 = saturate(1.0f - (sqrt((_1026 * _1026) + (_1025 * _1025)) * 2.0f));  // [sem: expr_sat]
  } else {
    _1040 = 1.0f;  // [sem: expr_sat]
  }
  _1043 = abs(_992);
  _1044 = abs(_993 + -1.0f);
  _1048 = saturate(1.0f - ((_1040 * _postProcessParams.x) * dot(float2(_1043, _1044), float2(_1043, _1044))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _1062 = (_1048 * exp2(log2(saturate(mad(_colorBlind0.z, _951, mad(_colorBlind0.y, _950, (_colorBlind0.x * _949))))) * _981));
      _1063 = (_1048 * exp2(log2(saturate(mad(_colorBlind1.z, _951, mad(_colorBlind1.y, _950, (_colorBlind1.x * _949))))) * _981));
      _1064 = (_1048 * exp2(log2(saturate(mad(_colorBlind2.z, _951, mad(_colorBlind2.y, _950, (_colorBlind2.x * _949))))) * _981));
    } else {
      _1062 = 0.0f;
      _1063 = 0.0f;
      _1064 = 0.0f;
    }
  } else {
    _1062 = 0.0f;
    _1063 = 0.0f;
    _1064 = 0.0f;
  }
  SV_Target.x = _1062;
  SV_Target.y = _1063;
  SV_Target.z = _1064;
  SV_Target.w = _18.w;
  return SV_Target;
}
