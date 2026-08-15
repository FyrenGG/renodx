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
  float _333;
  float _430;
  float _431;
  float _432;
  float _533;
  float _555;
  float _556;
  float _557;
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
  float _153;
  float _154;
  float _161;
  float _162;
  float _163;
  float _166;
  float _167;
  float _168;
  float _202;
  float _203;
  float _204;
  float _205;
  float _212;
  float _213;
  float _214;
  float _227;
  float _231;
  float _233;
  float _234;
  float _235;
  float _269;
  float _270;
  float _271;
  float _272;
  float _279;
  float _280;
  float _281;
  float _294;
  float _295;
  float _296;
  float _297;
  float _299;
  float _306;
  float _307;
  float _308;
  float _310;
  float _322;
  float _324;
  float _334;
  float _335;
  float _336;
  float _370;
  float _371;
  float _372;
  float _373;
  float _380;
  float _381;
  float _382;
  float _401;
  float _405;
  float _406;
  float _407;
  float _408;
  float _413;
  float _438;
  float _442;
  float _443;
  float _444;
  float _445;
  float _475;
  float _486;
  float _487;
  float _488;
  float _516;
  float _519;
  float _520;
  float _536;
  float _537;
  float _541;
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
  _153 = ((_142 - _145) * _powerParams.w) + _145;
  _154 = ((_143 - _145) * _powerParams.w) + _145;
  _161 = saturate(_152 / (_152 + 1.0f));  // [sem: expr_sat]
  _162 = saturate(_153 / (_153 + 1.0f));  // [sem: expr_sat]
  _163 = saturate(_154 / (_154 + 1.0f));  // [sem: expr_sat]
  _166 = _localToneMappingParams.x * _85;
  _167 = _localToneMappingParams.x * _86;
  _168 = _localToneMappingParams.x * _87;
  _202 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_166 * 1.70505f) - (_167 * 0.62179f)) - (_168 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _203 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_167 * 1.1408f) - (_166 * 0.13026f)) - (_168 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _204 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_166 * -0.024f) - (_167 * 0.12897f)) + (_168 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _205 = dot(float3(_202, _203, _204), float3(0.212671f, 0.71516f, 0.072169f));
  _212 = ((_202 - _205) * _powerParams.w) + _205;
  _213 = ((_203 - _205) * _powerParams.w) + _205;
  _214 = ((_204 - _205) * _powerParams.w) + _205;
  _227 = dot(float3(saturate(saturate(_212 / (_212 + 1.0f))), saturate(saturate(_213 / (_213 + 1.0f))), saturate(saturate(_214 / (_214 + 1.0f)))), float3(0.1f, 0.7f, 0.2f));
  _231 = dot(float3(saturate(_161), saturate(_162), saturate(_163)), float3(0.1f, 0.7f, 0.2f));
  _233 = _localToneMappingParams.y * _85;
  _234 = _localToneMappingParams.y * _86;
  _235 = _localToneMappingParams.y * _87;
  _269 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_233 * 1.70505f) - (_234 * 0.62179f)) - (_235 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _270 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_234 * 1.1408f) - (_233 * 0.13026f)) - (_235 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _271 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_233 * -0.024f) - (_234 * 0.12897f)) + (_235 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _272 = dot(float3(_269, _270, _271), float3(0.212671f, 0.71516f, 0.072169f));
  _279 = ((_269 - _272) * _powerParams.w) + _272;
  _280 = ((_270 - _272) * _powerParams.w) + _272;
  _281 = ((_271 - _272) * _powerParams.w) + _272;
  _294 = dot(float3(saturate(saturate(_279 / (_279 + 1.0f))), saturate(saturate(_280 / (_280 + 1.0f))), saturate(saturate(_281 / (_281 + 1.0f)))), float3(0.1f, 0.7f, 0.2f));
  _295 = _227 + -0.5f;
  _296 = _231 + -0.5f;
  _297 = _294 + -0.5f;
  _299 = _localToneMappingParams.z * -0.7213475f;
  _306 = exp2((_295 * _295) * _299);
  _307 = exp2((_296 * _296) * _299);
  _308 = exp2((_297 * _297) * _299);
  _310 = dot(float3(_306, _307, _308), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _322 = dot(float3(max(_161, 0.0f), max(_162, 0.0f), max(_163, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _324 = max(dot(float3(((_306 / _310) * _227), ((_307 / _310) * _231), ((_308 / _310) * _294)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _322;
  if (!(_322 > 0.007f)) {
    _333 = ((((_322 * _322) * 20408.16f) * (_324 + -1.0f)) + 1.0f);
  } else {
    _333 = _324;
  }
  _334 = _333 * _85;
  _335 = _333 * _86;
  _336 = _333 * _87;
  _370 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_334 * 1.70505f) - (_335 * 0.62179f)) - (_336 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _371 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_335 * 1.1408f) - (_334 * 0.13026f)) - (_336 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _372 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_334 * -0.024f) - (_335 * 0.12897f)) + (_336 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _373 = dot(float3(_370, _371, _372), float3(0.212671f, 0.71516f, 0.072169f));
  _380 = ((_370 - _373) * _powerParams.w) + _373;
  _381 = ((_371 - _373) * _powerParams.w) + _373;
  _382 = ((_372 - _373) * _powerParams.w) + _373;
  _401 = 1.0f - abs(_etcParams.w);
  _405 = saturate(_etcParams.w);  // [sem: expr_sat]
  _406 = (_401 * saturate(max(saturate(_380 / (_380 + 1.0f)), 0.0f))) + _405;
  _407 = (_401 * saturate(max(saturate(_381 / (_381 + 1.0f)), 0.0f))) + _405;
  _408 = (_401 * saturate(max(saturate(_382 / (_382 + 1.0f)), 0.0f))) + _405;
  if (_colorGradingParams.w > 0.0f) {
    _413 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _430 = (((max(0.0f, (1.0f - _406)) - _406) * _413) + _406);
    _431 = (((max(0.0f, (1.0f - _407)) - _407) * _413) + _407);
    _432 = (((max(0.0f, (1.0f - _408)) - _408) * _413) + _408);
  } else {
    _430 = _406;
    _431 = _407;
    _432 = _408;
  }
  _438 = _userImageAdjust.y + 1.0f;
  _442 = _userImageAdjust.x + 0.5f;
  _443 = ((_430 + -0.5f) * _438) + _442;
  _444 = ((_431 + -0.5f) * _438) + _442;
  _445 = ((_432 + -0.5f) * _438) + _442;
  _475 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _486 = (TEXCOORD.x * 2.0f) + -1.0f;
  _487 = TEXCOORD.y * 2.0f;
  _488 = 1.0f - _487;
  _516 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _488, ((_projToPrevProj[3].x) * _486))) + (_projToPrevProj[3].w);
  _519 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _488, ((_projToPrevProj[0].x) * _486))) + (_projToPrevProj[0].w)) / _516) - _486;
  _520 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _488, ((_projToPrevProj[1].x) * _486))) + (_projToPrevProj[1].w)) / _516) - _488;
  if (_localToneMappingParams.w > 0.0f) {
    _533 = saturate(1.0f - (sqrt((_520 * _520) + (_519 * _519)) * 2.0f));  // [sem: expr_sat]
  } else {
    _533 = 1.0f;  // [sem: expr_sat]
  }
  _536 = abs(_486);
  _537 = abs(_487 + -1.0f);
  _541 = saturate(1.0f - ((_533 * _postProcessParams.x) * dot(float2(_536, _537), float2(_536, _537))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _555 = (_541 * exp2(log2(saturate(mad(_colorBlind0.z, _445, mad(_colorBlind0.y, _444, (_colorBlind0.x * _443))))) * _475));
      _556 = (_541 * exp2(log2(saturate(mad(_colorBlind1.z, _445, mad(_colorBlind1.y, _444, (_colorBlind1.x * _443))))) * _475));
      _557 = (_541 * exp2(log2(saturate(mad(_colorBlind2.z, _445, mad(_colorBlind2.y, _444, (_colorBlind2.x * _443))))) * _475));
    } else {
      _555 = 0.0f;
      _556 = 0.0f;
      _557 = 0.0f;
    }
  } else {
    _555 = 0.0f;
    _556 = 0.0f;
    _557 = 0.0f;
  }
  SV_Target.x = _555;
  SV_Target.y = _556;
  SV_Target.z = _557;
  SV_Target.w = _17.w;
  return SV_Target;
}
