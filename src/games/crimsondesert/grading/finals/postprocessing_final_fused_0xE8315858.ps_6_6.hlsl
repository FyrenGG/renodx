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
  float _484;
  float _485;
  float _486;
  float _522;
  float _523;
  float _524;
  float _593;
  float _650;
  float _651;
  float _652;
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
  float _152;
  float _155;
  float _158;
  float _161;
  float _164;
  float _167;
  float _168;
  float _169;
  float _181;
  float _193;
  float _205;
  float _206;
  float _209;
  float _212;
  float _215;
  float _228;
  float _232;
  float _234;
  float _235;
  float _236;
  float _248;
  float _260;
  float _272;
  float _273;
  float _276;
  float _279;
  float _282;
  float _295;
  float _296;
  float _297;
  float _298;
  float _300;
  float _303;
  float _306;
  float _309;
  float _311;
  float _316;
  float _325;
  float _335;
  float _336;
  float _337;
  float _349;
  float _361;
  float _373;
  float _374;
  float _377;
  float _380;
  float _383;
  float _387;
  float _391;
  float _395;
  float _398;
  float _407;
  float _415;
  float _421;
  float _427;
  float _428;
  float _432;
  float _435;
  float _438;
  float _441;
  float _445;
  float _462;
  float _464;
  float _490;
  float _491;
  float _494;
  float _497;
  float _500;
  float _505;
  float _527;
  float _529;
  float _532;
  float _535;
  float _538;
  float _544;
  float _546;
  float _547;
  float _548;
  float _560;
  float _570;
  float _580;
  float _594;
  float _596;
  float _603;
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
  _152 = ((_130 - _145) * _powerParams.w) + _145;
  _155 = ((_144 - _145) * _powerParams.w) + _145;
  _158 = saturate(_149 / (_149 + 1.0f));  // [sem: expr_sat]
  _161 = saturate(_152 / (_152 + 1.0f));  // [sem: expr_sat]
  _164 = saturate(_155 / (_155 + 1.0f));  // [sem: expr_sat]
  _167 = _localToneMappingParams.x * _88;
  _168 = _localToneMappingParams.x * _87;
  _169 = _localToneMappingParams.x * _86;
  _181 = exp2(log2(max(0.0f, ((max(0.0f, (((_167 * 1.70505f) - (_168 * 0.62179f)) - (_169 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _193 = exp2(log2(max(0.0f, ((max(0.0f, (((_168 * 1.1408f) - (_167 * 0.13026f)) - (_169 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _205 = exp2(log2(max(0.0f, ((max(0.0f, (((_167 * -0.024f) - (_168 * 0.12897f)) + (_169 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _206 = dot(float3(_181, _193, _205), float3(0.212671f, 0.71516f, 0.072169f));
  _209 = ((_181 - _206) * _powerParams.w) + _206;
  _212 = ((_193 - _206) * _powerParams.w) + _206;
  _215 = ((_205 - _206) * _powerParams.w) + _206;
  _228 = dot(float3(saturate(saturate(_209 / (_209 + 1.0f))), saturate(saturate(_212 / (_212 + 1.0f))), saturate(saturate(_215 / (_215 + 1.0f)))), float3(0.1f, 0.7f, 0.2f));
  _232 = dot(float3(saturate(_158), saturate(_161), saturate(_164)), float3(0.1f, 0.7f, 0.2f));
  _234 = _localToneMappingParams.y * _88;
  _235 = _localToneMappingParams.y * _87;
  _236 = _localToneMappingParams.y * _86;
  _248 = exp2(log2(max(0.0f, ((max(0.0f, (((_234 * 1.70505f) - (_235 * 0.62179f)) - (_236 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _260 = exp2(log2(max(0.0f, ((max(0.0f, (((_235 * 1.1408f) - (_234 * 0.13026f)) - (_236 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _272 = exp2(log2(max(0.0f, ((max(0.0f, (((_234 * -0.024f) - (_235 * 0.12897f)) + (_236 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _273 = dot(float3(_248, _260, _272), float3(0.212671f, 0.71516f, 0.072169f));
  _276 = ((_248 - _273) * _powerParams.w) + _273;
  _279 = ((_260 - _273) * _powerParams.w) + _273;
  _282 = ((_272 - _273) * _powerParams.w) + _273;
  _295 = dot(float3(saturate(saturate(_276 / (_276 + 1.0f))), saturate(saturate(_279 / (_279 + 1.0f))), saturate(saturate(_282 / (_282 + 1.0f)))), float3(0.1f, 0.7f, 0.2f));
  _296 = _228 + -0.5f;
  _297 = _232 + -0.5f;
  _298 = _295 + -0.5f;
  _300 = _localToneMappingParams.z * -0.7213475f;
  _303 = exp2((_296 * _296) * _300);
  _306 = exp2((_297 * _297) * _300);
  _309 = exp2((_298 * _298) * _300);
  _311 = dot(float3(_303, _306, _309), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _316 = dot(float3(max(_158, 0.0f), max(_161, 0.0f), max(_164, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _325 = max(dot(float3(((_303 / _311) * _228), ((_306 / _311) * _232), ((_309 / _311) * _295)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _316;
  if (!(_316 > 0.007f)) {
    _334 = ((((_316 * _316) * 20408.16f) * (_325 + -1.0f)) + 1.0f);
  } else {
    _334 = _325;
  }
  _335 = _334 * _88;
  _336 = _334 * _87;
  _337 = _334 * _86;
  _349 = exp2(log2(max(0.0f, ((max(0.0f, (((_335 * 1.70505f) - (_336 * 0.62179f)) - (_337 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _361 = exp2(log2(max(0.0f, ((max(0.0f, (((_336 * 1.1408f) - (_335 * 0.13026f)) - (_337 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _373 = exp2(log2(max(0.0f, ((max(0.0f, (((_335 * -0.024f) - (_336 * 0.12897f)) + (_337 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _374 = dot(float3(_349, _361, _373), float3(0.212671f, 0.71516f, 0.072169f));
  _377 = ((_349 - _374) * _powerParams.w) + _374;
  _380 = ((_361 - _374) * _powerParams.w) + _374;
  _383 = ((_373 - _374) * _powerParams.w) + _374;
  _387 = max(saturate(_377 / (_377 + 1.0f)), 0.0f);
  _391 = max(saturate(_380 / (_380 + 1.0f)), 0.0f);
  _395 = max(saturate(_383 / (_383 + 1.0f)), 0.0f);
  _398 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_398.x < 1e-07f) || (_398.x == 1.0f))) {
    _407 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _415 = exp2(_powerParams.x * log2(max(0.0f, _offsetParams.x)));
    _421 = exp2(log2(max(0.0f, _offsetParams.y)) * _powerParams.y);
    _427 = exp2(log2(max(0.0f, _offsetParams.z)) * _powerParams.z);
    _428 = dot(float3(_415, _421, _427), float3(0.212671f, 0.71516f, 0.072169f));
    _432 = ((_415 - _428) * _powerParams.w) + _428;
    _435 = ((_421 - _428) * _powerParams.w) + _428;
    _438 = ((_427 - _428) * _powerParams.w) + _428;
    _441 = saturate(_435 / (_435 + 1.0f));  // [sem: expr_sat]
    _445 = max(max(_391, _441), max(max(_441, _441), _441));
    _462 = (sqrt(saturate((1.0f / _445) * min(min(min(_391, _441), min(min(_441, _441), _441)), (1.0f - _445)))) * 4.0f) * (-1.0f / (((1.0f - _407) * 8.0f) + (_407 * 5.0f)));
    _464 = 1.0f / (_462 + 1.0f);
    _484 = saturate(((saturate(_438 / (_438 + 1.0f)) * _462) + _395) * _464);  // [sem: expr_sat]
    _485 = saturate(((_462 * _441) + _391) * _464);  // [sem: expr_sat]
    _486 = saturate(((saturate(_432 / (_432 + 1.0f)) * _462) + _387) * _464);  // [sem: expr_sat]
  } else {
    _484 = _395;  // [sem: expr_sat]
    _485 = _391;  // [sem: expr_sat]
    _486 = _387;  // [sem: expr_sat]
  }
  _490 = 1.0f - abs(_etcParams.w);
  _491 = saturate(_etcParams.w);  // [sem: expr_sat]
  _494 = (saturate(_486) * _490) + _491;
  _497 = (saturate(_485) * _490) + _491;
  _500 = (saturate(_484) * _490) + _491;
  if (_colorGradingParams.w > 0.0f) {
    _505 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _522 = (((max(0.0f, (1.0f - _500)) - _500) * _505) + _500);
    _523 = (((max(0.0f, (1.0f - _497)) - _497) * _505) + _497);
    _524 = (((max(0.0f, (1.0f - _494)) - _494) * _505) + _494);
  } else {
    _522 = _500;
    _523 = _497;
    _524 = _494;
  }
  _527 = _userImageAdjust.y + 1.0f;
  _529 = _userImageAdjust.x + 0.5f;
  _532 = (_527 * (_524 + -0.5f)) + _529;
  _535 = (_527 * (_523 + -0.5f)) + _529;
  _538 = (_527 * (_522 + -0.5f)) + _529;
  _544 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _546 = (TEXCOORD.x * 2.0f) + -1.0f;
  _547 = TEXCOORD.y * 2.0f;
  _548 = 1.0f - _547;
  _560 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _548, ((_projToPrevProj[3].x) * _546)));
  _570 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _548, ((_projToPrevProj[0].x) * _546))) + (_projToPrevProj[0].w)) / _560) - _546;
  _580 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _548, ((_projToPrevProj[1].x) * _546))) + (_projToPrevProj[1].w)) / _560) - _548;
  if (_localToneMappingParams.w > 0.0f) {
    _593 = saturate(1.0f - (sqrt((_580 * _580) + (_570 * _570)) * 2.0f));  // [sem: expr_sat]
  } else {
    _593 = 1.0f;  // [sem: expr_sat]
  }
  _594 = abs(_546);
  _596 = abs(_547 + -1.0f);
  _603 = saturate(1.0f - ((_postProcessParams.x * _593) * dot(float2(_594, _596), float2(_594, _596))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _650 = (exp2(log2(saturate(mad(_colorBlind0.z, _538, mad(_colorBlind0.y, _535, (_colorBlind0.x * _532))))) * _544) * _603);
      _651 = (exp2(log2(saturate(mad(_colorBlind1.z, _538, mad(_colorBlind1.y, _535, (_colorBlind1.x * _532))))) * _544) * _603);
      _652 = (exp2(log2(saturate(mad(_colorBlind2.z, _538, mad(_colorBlind2.y, _535, (_colorBlind2.x * _532))))) * _544) * _603);
    } else {
      _650 = 0.0f;
      _651 = 0.0f;
      _652 = 0.0f;
    }
  } else {
    _650 = 0.0f;
    _651 = 0.0f;
    _652 = 0.0f;
  }
  SV_Target.x = _650;
  SV_Target.y = _651;
  SV_Target.z = _652;
  SV_Target.w = _18.w;
  return SV_Target;
}
