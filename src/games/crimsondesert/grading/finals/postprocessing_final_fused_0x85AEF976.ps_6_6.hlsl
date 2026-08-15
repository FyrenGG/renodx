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
  float _456;
  float _594;
  float _595;
  float _596;
  float _697;
  float _719;
  float _720;
  float _721;
  float _51;
  float _52;
  float _56;
  float _61;
  float _65;
  float _70;
  float _74;
  float _80;
  float _93;
  float _123;
  float _125;
  float _127;
  float _141;
  float _142;
  float _143;
  float _145;
  float _152;
  float _155;
  float _156;
  float _159;
  float _162;
  float _165;
  float _187;
  float _188;
  float _189;
  float _202;
  float _203;
  float _204;
  float _207;
  float _208;
  float _209;
  float _243;
  float _244;
  float _245;
  float _246;
  float _253;
  float _256;
  float _257;
  float _260;
  float _263;
  float _266;
  float _288;
  float _289;
  float _290;
  float _309;
  float _313;
  float _315;
  float _316;
  float _317;
  float _351;
  float _352;
  float _353;
  float _354;
  float _361;
  float _364;
  float _365;
  float _368;
  float _371;
  float _374;
  float _396;
  float _397;
  float _398;
  float _417;
  float _418;
  float _419;
  float _420;
  float _422;
  float _429;
  float _430;
  float _431;
  float _433;
  float _445;
  float _447;
  float _457;
  float _458;
  float _459;
  float _493;
  float _494;
  float _495;
  float _496;
  float _503;
  float _506;
  float _507;
  float _510;
  float _513;
  float _516;
  float _538;
  float _539;
  float _540;
  float _565;
  float _569;
  float _570;
  float _571;
  float _572;
  float _577;
  float _602;
  float _606;
  float _607;
  float _608;
  float _609;
  float _639;
  float _650;
  float _651;
  float _652;
  float _680;
  float _683;
  float _684;
  float _700;
  float _701;
  float _705;
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
  _93 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
  _123 = _93 * _slopeParams.x;
  _125 = _93 * _slopeParams.y;
  _127 = _93 * _slopeParams.z;
  _141 = exp2(log2(max(0.0f, (_offsetParams.x + (_123 * max(0.0f, (((_85 * 1.70505f) - (_86 * 0.62179f)) - (_87 * 0.08326f))))))) * _powerParams.x);
  _142 = exp2(log2(max(0.0f, (_offsetParams.y + (_125 * max(0.0f, (((_86 * 1.1408f) - (_85 * 0.13026f)) - (_87 * 0.01055f))))))) * _powerParams.y);
  _143 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_85 * -0.024f) - (_86 * 0.12897f)) + (_87 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _145 = dot(float3(_141, _142, _143), float3(0.212671f, 0.71516f, 0.072169f));
  _152 = ((_141 - _145) * _powerParams.w) + _145;
  _155 = (lerp(_145, _142, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _156 = (lerp(_145, _143, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _159 = mad(0.04823f, _156, mad(0.35458f, _155, (_152 * 0.9953167f)));
  _162 = mad(0.01566f, _156, mad(0.90834f, _155, (_152 * 0.12666667f)));
  _165 = mad(0.83777f, _156, mad(0.13383f, _155, (_152 * 0.047333334f)));
  _187 = (((_159 + 0.0245786f) * _159) + -9.0537e-05f) / ((((_159 * 0.983729f) + 0.432951f) * _159) + 0.238081f);
  _188 = (((_162 + 0.0245786f) * _162) + -9.0537e-05f) / ((((_162 * 0.983729f) + 0.432951f) * _162) + 0.238081f);
  _189 = (((_165 + 0.0245786f) * _165) + -9.0537e-05f) / ((((_165 * 0.983729f) + 0.432951f) * _165) + 0.238081f);
  _202 = saturate(saturate(mad(-0.07367f, _189, mad(-0.53108f, _188, (_187 * 1.60475f)))));  // [sem: expr_sat]
  _203 = saturate(saturate(mad(-0.00605f, _189, mad(1.10813f, _188, (_187 * -0.10208f)))));  // [sem: expr_sat]
  _204 = saturate(saturate(mad(1.07602f, _189, mad(-0.07276f, _188, (_187 * -0.00327f)))));  // [sem: expr_sat]
  _207 = _localToneMappingParams.x * _85;
  _208 = _localToneMappingParams.x * _86;
  _209 = _localToneMappingParams.x * _87;
  _243 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_207 * 1.70505f) - (_208 * 0.62179f)) - (_209 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _244 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_208 * 1.1408f) - (_207 * 0.13026f)) - (_209 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _245 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_207 * -0.024f) - (_208 * 0.12897f)) + (_209 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _246 = dot(float3(_243, _244, _245), float3(0.212671f, 0.71516f, 0.072169f));
  _253 = ((_243 - _246) * _powerParams.w) + _246;
  _256 = (lerp(_246, _244, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _257 = (lerp(_246, _245, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _260 = mad(0.04823f, _257, mad(0.35458f, _256, (_253 * 0.9953167f)));
  _263 = mad(0.01566f, _257, mad(0.90834f, _256, (_253 * 0.12666667f)));
  _266 = mad(0.83777f, _257, mad(0.13383f, _256, (_253 * 0.047333334f)));
  _288 = (((_260 + 0.0245786f) * _260) + -9.0537e-05f) / ((((_260 * 0.983729f) + 0.432951f) * _260) + 0.238081f);
  _289 = (((_263 + 0.0245786f) * _263) + -9.0537e-05f) / ((((_263 * 0.983729f) + 0.432951f) * _263) + 0.238081f);
  _290 = (((_266 + 0.0245786f) * _266) + -9.0537e-05f) / ((((_266 * 0.983729f) + 0.432951f) * _266) + 0.238081f);
  _309 = dot(float3(saturate(saturate(saturate(mad(-0.07367f, _290, mad(-0.53108f, _289, (_288 * 1.60475f)))))), saturate(saturate(saturate(mad(-0.00605f, _290, mad(1.10813f, _289, (_288 * -0.10208f)))))), saturate(saturate(saturate(mad(1.07602f, _290, mad(-0.07276f, _289, (_288 * -0.00327f))))))), float3(0.1f, 0.7f, 0.2f));
  _313 = dot(float3(saturate(_202), saturate(_203), saturate(_204)), float3(0.1f, 0.7f, 0.2f));
  _315 = _localToneMappingParams.y * _85;
  _316 = _localToneMappingParams.y * _86;
  _317 = _localToneMappingParams.y * _87;
  _351 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_315 * 1.70505f) - (_316 * 0.62179f)) - (_317 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _352 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_316 * 1.1408f) - (_315 * 0.13026f)) - (_317 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _353 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_315 * -0.024f) - (_316 * 0.12897f)) + (_317 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _354 = dot(float3(_351, _352, _353), float3(0.212671f, 0.71516f, 0.072169f));
  _361 = ((_351 - _354) * _powerParams.w) + _354;
  _364 = (lerp(_354, _352, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _365 = (lerp(_354, _353, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _368 = mad(0.04823f, _365, mad(0.35458f, _364, (_361 * 0.9953167f)));
  _371 = mad(0.01566f, _365, mad(0.90834f, _364, (_361 * 0.12666667f)));
  _374 = mad(0.83777f, _365, mad(0.13383f, _364, (_361 * 0.047333334f)));
  _396 = (((_368 + 0.0245786f) * _368) + -9.0537e-05f) / ((((_368 * 0.983729f) + 0.432951f) * _368) + 0.238081f);
  _397 = (((_371 + 0.0245786f) * _371) + -9.0537e-05f) / ((((_371 * 0.983729f) + 0.432951f) * _371) + 0.238081f);
  _398 = (((_374 + 0.0245786f) * _374) + -9.0537e-05f) / ((((_374 * 0.983729f) + 0.432951f) * _374) + 0.238081f);
  _417 = dot(float3(saturate(saturate(saturate(mad(-0.07367f, _398, mad(-0.53108f, _397, (_396 * 1.60475f)))))), saturate(saturate(saturate(mad(-0.00605f, _398, mad(1.10813f, _397, (_396 * -0.10208f)))))), saturate(saturate(saturate(mad(1.07602f, _398, mad(-0.07276f, _397, (_396 * -0.00327f))))))), float3(0.1f, 0.7f, 0.2f));
  _418 = _309 + -0.5f;
  _419 = _313 + -0.5f;
  _420 = _417 + -0.5f;
  _422 = _localToneMappingParams.z * -0.7213475f;
  _429 = exp2((_418 * _418) * _422);
  _430 = exp2((_419 * _419) * _422);
  _431 = exp2((_420 * _420) * _422);
  _433 = dot(float3(_429, _430, _431), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _445 = dot(float3(max(_202, 0.0f), max(_203, 0.0f), max(_204, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _447 = max(dot(float3(((_429 / _433) * _309), ((_430 / _433) * _313), ((_431 / _433) * _417)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _445;
  if (!(_445 > 0.007f)) {
    _456 = ((((_445 * _445) * 20408.16f) * (_447 + -1.0f)) + 1.0f);
  } else {
    _456 = _447;
  }
  _457 = _456 * _85;
  _458 = _456 * _86;
  _459 = _456 * _87;
  _493 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_457 * 1.70505f) - (_458 * 0.62179f)) - (_459 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _494 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_458 * 1.1408f) - (_457 * 0.13026f)) - (_459 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _495 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_457 * -0.024f) - (_458 * 0.12897f)) + (_459 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _496 = dot(float3(_493, _494, _495), float3(0.212671f, 0.71516f, 0.072169f));
  _503 = ((_493 - _496) * _powerParams.w) + _496;
  _506 = (lerp(_496, _494, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _507 = (lerp(_496, _495, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _510 = mad(0.04823f, _507, mad(0.35458f, _506, (_503 * 0.9953167f)));
  _513 = mad(0.01566f, _507, mad(0.90834f, _506, (_503 * 0.12666667f)));
  _516 = mad(0.83777f, _507, mad(0.13383f, _506, (_503 * 0.047333334f)));
  _538 = (((_510 + 0.0245786f) * _510) + -9.0537e-05f) / ((((_510 * 0.983729f) + 0.432951f) * _510) + 0.238081f);
  _539 = (((_513 + 0.0245786f) * _513) + -9.0537e-05f) / ((((_513 * 0.983729f) + 0.432951f) * _513) + 0.238081f);
  _540 = (((_516 + 0.0245786f) * _516) + -9.0537e-05f) / ((((_516 * 0.983729f) + 0.432951f) * _516) + 0.238081f);
  _565 = 1.0f - abs(_etcParams.w);
  _569 = saturate(_etcParams.w);  // [sem: expr_sat]
  _570 = (_565 * saturate(max(saturate(saturate(mad(-0.07367f, _540, mad(-0.53108f, _539, (_538 * 1.60475f))))), 0.0f))) + _569;
  _571 = (_565 * saturate(max(saturate(saturate(mad(-0.00605f, _540, mad(1.10813f, _539, (_538 * -0.10208f))))), 0.0f))) + _569;
  _572 = (_565 * saturate(max(saturate(saturate(mad(1.07602f, _540, mad(-0.07276f, _539, (_538 * -0.00327f))))), 0.0f))) + _569;
  if (_colorGradingParams.w > 0.0f) {
    _577 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _594 = (((max(0.0f, (1.0f - _570)) - _570) * _577) + _570);
    _595 = (((max(0.0f, (1.0f - _571)) - _571) * _577) + _571);
    _596 = (((max(0.0f, (1.0f - _572)) - _572) * _577) + _572);
  } else {
    _594 = _570;
    _595 = _571;
    _596 = _572;
  }
  _602 = _userImageAdjust.y + 1.0f;
  _606 = _userImageAdjust.x + 0.5f;
  _607 = ((_594 + -0.5f) * _602) + _606;
  _608 = ((_595 + -0.5f) * _602) + _606;
  _609 = ((_596 + -0.5f) * _602) + _606;
  _639 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _650 = (TEXCOORD.x * 2.0f) + -1.0f;
  _651 = TEXCOORD.y * 2.0f;
  _652 = 1.0f - _651;
  _680 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _652, ((_projToPrevProj[3].x) * _650))) + (_projToPrevProj[3].w);
  _683 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _652, ((_projToPrevProj[0].x) * _650))) + (_projToPrevProj[0].w)) / _680) - _650;
  _684 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _652, ((_projToPrevProj[1].x) * _650))) + (_projToPrevProj[1].w)) / _680) - _652;
  if (_localToneMappingParams.w > 0.0f) {
    _697 = saturate(1.0f - (sqrt((_684 * _684) + (_683 * _683)) * 2.0f));  // [sem: expr_sat]
  } else {
    _697 = 1.0f;  // [sem: expr_sat]
  }
  _700 = abs(_650);
  _701 = abs(_651 + -1.0f);
  _705 = saturate(1.0f - ((_697 * _postProcessParams.x) * dot(float2(_700, _701), float2(_700, _701))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _719 = (_705 * exp2(log2(saturate(mad(_colorBlind0.z, _609, mad(_colorBlind0.y, _608, (_colorBlind0.x * _607))))) * _639));
      _720 = (_705 * exp2(log2(saturate(mad(_colorBlind1.z, _609, mad(_colorBlind1.y, _608, (_colorBlind1.x * _607))))) * _639));
      _721 = (_705 * exp2(log2(saturate(mad(_colorBlind2.z, _609, mad(_colorBlind2.y, _608, (_colorBlind2.x * _607))))) * _639));
    } else {
      _719 = 0.0f;
      _720 = 0.0f;
      _721 = 0.0f;
    }
  } else {
    _719 = 0.0f;
    _720 = 0.0f;
    _721 = 0.0f;
  }
  SV_Target.x = _719;
  SV_Target.y = _720;
  SV_Target.z = _721;
  SV_Target.w = _17.w;
  return SV_Target;
}
