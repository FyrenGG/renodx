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
  float _334;
  float _476;
  float _477;
  float _478;
  float _514;
  float _515;
  float _516;
  float _617;
  float _639;
  float _640;
  float _641;
  float _52;
  float _53;
  float _57;
  float _62;
  float _66;
  float _71;
  float _75;
  float _81;
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
  float _162;
  float _163;
  float _164;
  float _167;
  float _168;
  float _169;
  float _203;
  float _204;
  float _205;
  float _206;
  float _213;
  float _214;
  float _215;
  float _228;
  float _232;
  float _234;
  float _235;
  float _236;
  float _270;
  float _271;
  float _272;
  float _273;
  float _280;
  float _281;
  float _282;
  float _295;
  float _296;
  float _297;
  float _298;
  float _300;
  float _307;
  float _308;
  float _309;
  float _311;
  float _323;
  float _325;
  float _335;
  float _336;
  float _337;
  float _371;
  float _372;
  float _373;
  float _374;
  float _381;
  float _382;
  float _383;
  float _393;
  float _394;
  float _395;
  float _397;
  float _405;
  float _420;
  float _421;
  float _422;
  float _423;
  float _430;
  float _431;
  float _432;
  float _440;
  float _449;
  float _456;
  float _459;
  float _485;
  float _489;
  float _490;
  float _491;
  float _492;
  float _497;
  float _522;
  float _526;
  float _527;
  float _528;
  float _529;
  float _559;
  float _570;
  float _571;
  float _572;
  float _600;
  float _603;
  float _604;
  float _620;
  float _621;
  float _625;
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
  _94 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
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
  _162 = saturate(_153 / (_153 + 1.0f));  // [sem: expr_sat]
  _163 = saturate(_154 / (_154 + 1.0f));  // [sem: expr_sat]
  _164 = saturate(_155 / (_155 + 1.0f));  // [sem: expr_sat]
  _167 = _localToneMappingParams.x * _86;
  _168 = _localToneMappingParams.x * _87;
  _169 = _localToneMappingParams.x * _88;
  _203 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_167 * 1.70505f) - (_168 * 0.62179f)) - (_169 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _204 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_168 * 1.1408f) - (_167 * 0.13026f)) - (_169 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _205 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_167 * -0.024f) - (_168 * 0.12897f)) + (_169 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _206 = dot(float3(_203, _204, _205), float3(0.212671f, 0.71516f, 0.072169f));
  _213 = ((_203 - _206) * _powerParams.w) + _206;
  _214 = ((_204 - _206) * _powerParams.w) + _206;
  _215 = ((_205 - _206) * _powerParams.w) + _206;
  _228 = dot(float3(saturate(saturate(_213 / (_213 + 1.0f))), saturate(saturate(_214 / (_214 + 1.0f))), saturate(saturate(_215 / (_215 + 1.0f)))), float3(0.1f, 0.7f, 0.2f));
  _232 = dot(float3(saturate(_162), saturate(_163), saturate(_164)), float3(0.1f, 0.7f, 0.2f));
  _234 = _localToneMappingParams.y * _86;
  _235 = _localToneMappingParams.y * _87;
  _236 = _localToneMappingParams.y * _88;
  _270 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_234 * 1.70505f) - (_235 * 0.62179f)) - (_236 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _271 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_235 * 1.1408f) - (_234 * 0.13026f)) - (_236 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _272 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_234 * -0.024f) - (_235 * 0.12897f)) + (_236 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _273 = dot(float3(_270, _271, _272), float3(0.212671f, 0.71516f, 0.072169f));
  _280 = ((_270 - _273) * _powerParams.w) + _273;
  _281 = ((_271 - _273) * _powerParams.w) + _273;
  _282 = ((_272 - _273) * _powerParams.w) + _273;
  _295 = dot(float3(saturate(saturate(_280 / (_280 + 1.0f))), saturate(saturate(_281 / (_281 + 1.0f))), saturate(saturate(_282 / (_282 + 1.0f)))), float3(0.1f, 0.7f, 0.2f));
  _296 = _228 + -0.5f;
  _297 = _232 + -0.5f;
  _298 = _295 + -0.5f;
  _300 = _localToneMappingParams.z * -0.7213475f;
  _307 = exp2((_296 * _296) * _300);
  _308 = exp2((_297 * _297) * _300);
  _309 = exp2((_298 * _298) * _300);
  _311 = dot(float3(_307, _308, _309), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _323 = dot(float3(max(_162, 0.0f), max(_163, 0.0f), max(_164, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _325 = max(dot(float3(((_307 / _311) * _228), ((_308 / _311) * _232), ((_309 / _311) * _295)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _323;
  if (!(_323 > 0.007f)) {
    _334 = ((((_323 * _323) * 20408.16f) * (_325 + -1.0f)) + 1.0f);
  } else {
    _334 = _325;
  }
  _335 = _334 * _86;
  _336 = _334 * _87;
  _337 = _334 * _88;
  _371 = exp2(log2(max(0.0f, ((_124 * max(0.0f, (((_335 * 1.70505f) - (_336 * 0.62179f)) - (_337 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _372 = exp2(log2(max(0.0f, ((_126 * max(0.0f, (((_336 * 1.1408f) - (_335 * 0.13026f)) - (_337 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _373 = exp2(log2(max(0.0f, ((_128 * max(0.0f, (((_335 * -0.024f) - (_336 * 0.12897f)) + (_337 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _374 = dot(float3(_371, _372, _373), float3(0.212671f, 0.71516f, 0.072169f));
  _381 = ((_371 - _374) * _powerParams.w) + _374;
  _382 = ((_372 - _374) * _powerParams.w) + _374;
  _383 = ((_373 - _374) * _powerParams.w) + _374;
  _393 = max(saturate(_381 / (_381 + 1.0f)), 0.0f);
  _394 = max(saturate(_382 / (_382 + 1.0f)), 0.0f);
  _395 = max(saturate(_383 / (_383 + 1.0f)), 0.0f);
  _397 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_397.x < 1e-07f) || (_397.x == 1.0f))) {
    _405 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _420 = exp2(log2(max(0.0f, _offsetParams.x)) * _powerParams.x);
    _421 = exp2(log2(max(0.0f, _offsetParams.y)) * _powerParams.y);
    _422 = exp2(log2(max(0.0f, _offsetParams.z)) * _powerParams.z);
    _423 = dot(float3(_420, _421, _422), float3(0.212671f, 0.71516f, 0.072169f));
    _430 = ((_420 - _423) * _powerParams.w) + _423;
    _431 = ((_421 - _423) * _powerParams.w) + _423;
    _432 = ((_422 - _423) * _powerParams.w) + _423;
    _440 = saturate(_431 / (_431 + 1.0f));  // [sem: expr_sat]
    _449 = max(max(_394, _440), max(max(_440, _440), _440));
    _456 = sqrt(saturate(min(min(min(_394, _440), min(min(_440, _440), _440)), (1.0f - _449)) * (1.0f / _449))) * (-1.0f / (((1.0f - _405) * 8.0f) + (_405 * 5.0f)));
    _459 = 1.0f / ((_456 * 4.0f) + 1.0f);
    _476 = saturate((((saturate(_430 / (_430 + 1.0f)) * 4.0f) * _456) + _393) * _459);  // [sem: expr_sat]
    _477 = saturate((((_440 * 4.0f) * _456) + _394) * _459);  // [sem: expr_sat]
    _478 = saturate((((saturate(_432 / (_432 + 1.0f)) * 4.0f) * _456) + _395) * _459);  // [sem: expr_sat]
  } else {
    _476 = _393;  // [sem: expr_sat]
    _477 = _394;  // [sem: expr_sat]
    _478 = _395;  // [sem: expr_sat]
  }
  _485 = 1.0f - abs(_etcParams.w);
  _489 = saturate(_etcParams.w);  // [sem: expr_sat]
  _490 = (_485 * saturate(_476)) + _489;
  _491 = (_485 * saturate(_477)) + _489;
  _492 = (_485 * saturate(_478)) + _489;
  if (_colorGradingParams.w > 0.0f) {
    _497 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _514 = (((max(0.0f, (1.0f - _490)) - _490) * _497) + _490);
    _515 = (((max(0.0f, (1.0f - _491)) - _491) * _497) + _491);
    _516 = (((max(0.0f, (1.0f - _492)) - _492) * _497) + _492);
  } else {
    _514 = _490;
    _515 = _491;
    _516 = _492;
  }
  _522 = _userImageAdjust.y + 1.0f;
  _526 = _userImageAdjust.x + 0.5f;
  _527 = ((_514 + -0.5f) * _522) + _526;
  _528 = ((_515 + -0.5f) * _522) + _526;
  _529 = ((_516 + -0.5f) * _522) + _526;
  _559 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _570 = (TEXCOORD.x * 2.0f) + -1.0f;
  _571 = TEXCOORD.y * 2.0f;
  _572 = 1.0f - _571;
  _600 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _572, ((_projToPrevProj[3].x) * _570))) + (_projToPrevProj[3].w);
  _603 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _572, ((_projToPrevProj[0].x) * _570))) + (_projToPrevProj[0].w)) / _600) - _570;
  _604 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _572, ((_projToPrevProj[1].x) * _570))) + (_projToPrevProj[1].w)) / _600) - _572;
  if (_localToneMappingParams.w > 0.0f) {
    _617 = saturate(1.0f - (sqrt((_604 * _604) + (_603 * _603)) * 2.0f));  // [sem: expr_sat]
  } else {
    _617 = 1.0f;  // [sem: expr_sat]
  }
  _620 = abs(_570);
  _621 = abs(_571 + -1.0f);
  _625 = saturate(1.0f - ((_617 * _postProcessParams.x) * dot(float2(_620, _621), float2(_620, _621))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _639 = (_625 * exp2(log2(saturate(mad(_colorBlind0.z, _529, mad(_colorBlind0.y, _528, (_colorBlind0.x * _527))))) * _559));
      _640 = (_625 * exp2(log2(saturate(mad(_colorBlind1.z, _529, mad(_colorBlind1.y, _528, (_colorBlind1.x * _527))))) * _559));
      _641 = (_625 * exp2(log2(saturate(mad(_colorBlind2.z, _529, mad(_colorBlind2.y, _528, (_colorBlind2.x * _527))))) * _559));
    } else {
      _639 = 0.0f;
      _640 = 0.0f;
      _641 = 0.0f;
    }
  } else {
    _639 = 0.0f;
    _640 = 0.0f;
    _641 = 0.0f;
  }
  SV_Target.x = _639;
  SV_Target.y = _640;
  SV_Target.z = _641;
  SV_Target.w = _18.w;
  return SV_Target;
}
