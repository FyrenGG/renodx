Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _17;
  uint _21;
  float _35;
  float _240;
  float _241;
  float _242;
  float _335;
  float _336;
  float _337;
  float _391;
  float _392;
  float _393;
  float _412;
  float _413;
  float _414;
  float _444;
  float _445;
  float _446;
  float _460;
  float _461;
  float _462;
  bool _38;
  float _44;
  float _93;
  float _94;
  float _95;
  float _97;
  float _104;
  float _105;
  float _106;
  float _125;
  float _126;
  float _127;
  float _128;
  float _129;
  float _130;
  float _131;
  float _132;
  float _133;
  float _179;
  float _180;
  float _181;
  float _182;
  float _183;
  float _184;
  float _185;
  float _202;
  float _203;
  float _204;
  float _205;
  float _211;
  float _214;
  float _221;
  float _222;
  float _223;
  float _252;
  float _277;
  float _278;
  float _279;
  float _298;
  float _299;
  float _300;
  float _306;
  float _310;
  float _311;
  float _312;
  float _313;
  float _318;
  float _343;
  float _347;
  float _348;
  float _349;
  float _350;
  float _380;
  float _402;
  float _403;
  float _407;
  float _451;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _17 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _21 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _35 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _21, 0)))).x) & 127)))) + 0.5f);
  } else {
    _35 = 1.0f;
  }
  _38 = (_localToneMappingParams.w > 0.0f);
  if (_38) {
    _44 = _userImageAdjust.z * _exposure0.x;
    _93 = exp2(log2(max(0.0f, (((_44 * max(0.0f, (((_17.x * 1.70505f) - (_17.y * 0.62179f)) - (_17.z * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _94 = exp2(log2(max(0.0f, (((max(0.0f, (((_17.y * 1.1408f) - (_17.x * 0.13026f)) - (_17.z * 0.01055f))) * _44) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _95 = exp2(log2(max(0.0f, (((max(0.0f, (((_17.x * -0.024f) - (_17.y * 0.12897f)) + (_17.z * 1.15297f))) * _44) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _97 = dot(float3(_93, _94, _95), float3(0.212671f, 0.71516f, 0.072169f));
    _104 = ((_93 - _97) * _powerParams.w) + _97;
    _105 = ((_94 - _97) * _powerParams.w) + _97;
    _106 = ((_95 - _97) * _powerParams.w) + _97;
    _125 = min(max(log2(mad(_106, 0.079223745f, mad(_105, 0.0784336f, (_104 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _126 = min(max(log2(mad(_106, 0.07916613f, mad(_105, 0.87846863f, (_104 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _127 = min(max(log2(mad(_106, 0.879143f, mad(_105, 0.0784336f, (_104 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _128 = _125 * 0.060606062f;
    _129 = _126 * 0.060606062f;
    _130 = _127 * 0.060606062f;
    _131 = _128 * _128;
    _132 = _129 * _129;
    _133 = _130 * _130;
    _179 = min(0.0f, (-0.0f - (((_125 * 0.0072181816f) + ((_131 * 0.4298f) + (((_131 * _131) * ((31.96f - (_125 * 2.4327273f)) + (_131 * 15.5f))) - ((_125 * 0.41624245f) * _131)))) + -0.00232f)));
    _180 = min(0.0f, (-0.0f - (((_126 * 0.0072181816f) + ((_132 * 0.4298f) + (((_132 * _132) * ((31.96f - (_126 * 2.4327273f)) + (_132 * 15.5f))) - ((_126 * 0.41624245f) * _132)))) + -0.00232f)));
    _181 = min(0.0f, (-0.0f - (((_127 * 0.0072181816f) + ((_133 * 0.4298f) + (((_133 * _133) * ((31.96f - (_127 * 2.4327273f)) + (_133 * 15.5f))) - ((_127 * 0.41624245f) * _133)))) + -0.00232f)));
    _182 = -0.0f - _179;
    _183 = -0.0f - _180;
    _184 = -0.0f - _181;
    _185 = dot(float3(_182, _183, _184), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _202 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _203 = -0.79999995f / _202;
      _204 = -1.2f / _202;
      _205 = 0.20000005f / _202;
      _211 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _214 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _221 = (_203 + 1.4f) + (_214 * (-0.39999998f - _203));
      _222 = (_204 + 1.6f) + (_214 * (-0.6f - _204));
      _223 = (_205 + 0.9f) + (_214 * (0.5f - _205));
      _240 = (lerp(_222, 1.2f, _211));  // [sem: blended]
      _241 = (lerp(_221, 1.0f, _211));  // [sem: blended]
      _242 = (lerp(_223, 1.4f, _211));  // [sem: blended]
    } else {
      _240 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _241 = 1.0f;  // [sem: blended]
      _242 = 1.4f;  // [sem: blended]
    }
    _252 = 1.0f - _240;
    _277 = ((exp2(log2(((saturate((_179 * _179) * _182) * _252) + _240) * _182) * _241) - _185) * _242) + _185;
    _278 = ((exp2(log2(((saturate((_180 * _180) * _183) * _252) + _240) * _183) * _241) - _185) * _242) + _185;
    _279 = ((exp2(log2(((saturate((_181 * _181) * _184) * _252) + _240) * _184) * _241) - _185) * _242) + _185;
    _298 = saturate(exp2(log2(mad(_279, -0.09902974f, mad(_278, -0.09802088f, (_277 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _299 = saturate(exp2(log2(mad(_279, -0.098961174f, mad(_278, 1.1519032f, (_277 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _300 = saturate(exp2(log2(mad(_279, 1.1510737f, mad(_278, -0.09804345f, (_277 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _306 = 1.0f - abs(_etcParams.w);
      _310 = saturate(_etcParams.w);  // [sem: expr_sat]
      _311 = (_306 * _298) + _310;
      _312 = (_306 * _299) + _310;
      _313 = (_306 * _300) + _310;
      if (_colorGradingParams.w > 0.0f) {
        _318 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _335 = (((max(0.0f, (1.0f - _311)) - _311) * _318) + _311);
        _336 = (((max(0.0f, (1.0f - _312)) - _312) * _318) + _312);
        _337 = (((max(0.0f, (1.0f - _313)) - _313) * _318) + _313);
      } else {
        _335 = _311;
        _336 = _312;
        _337 = _313;
      }
      _343 = _userImageAdjust.y + 1.0f;
      _347 = _userImageAdjust.x + 0.5f;
      _348 = ((_335 + -0.5f) * _343) + _347;
      _349 = ((_336 + -0.5f) * _343) + _347;
      _350 = ((_337 + -0.5f) * _343) + _347;
      _380 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _391 = exp2(log2(saturate(mad(_colorBlind0.z, _350, mad(_colorBlind0.y, _349, (_colorBlind0.x * _348))))) * _380);
      _392 = exp2(log2(saturate(mad(_colorBlind1.z, _350, mad(_colorBlind1.y, _349, (_colorBlind1.x * _348))))) * _380);
      _393 = exp2(log2(saturate(mad(_colorBlind2.z, _350, mad(_colorBlind2.y, _349, (_colorBlind2.x * _348))))) * _380);
    } else {
      _391 = _298;
      _392 = _299;
      _393 = _300;
    }
  } else {
    _391 = _17.x;
    _392 = _17.y;
    _393 = _17.z;
  }
  if (_etcParams.y > 1.0f) {
    _402 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _403 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _407 = saturate(1.0f - (dot(float2(_402, _403), float2(_402, _403)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _412 = (_407 * _391);
    _413 = (_407 * _392);
    _414 = (_407 * _393);
  } else {
    _412 = _391;
    _413 = _392;
    _414 = _393;
  }
  if (_38 && (_etcParams.z > 0.0f)) {
    _444 = select((_412 <= 0.0031308f), (_412 * 12.92f), (((pow(_412, 0.41666666f)) * 1.055f) + -0.055f));
    _445 = select((_413 <= 0.0031308f), (_413 * 12.92f), (((pow(_413, 0.41666666f)) * 1.055f) + -0.055f));
    _446 = select((_414 <= 0.0031308f), (_414 * 12.92f), (((pow(_414, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _444 = _412;
    _445 = _413;
    _446 = _414;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _451 = (float)((uint)((uint)(_21)));
    if (!(_451 < _viewDir.w)) {
      if (!(_451 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _460 = _444;
        _461 = _445;
        _462 = _446;
      } else {
        _460 = 0.0f;
        _461 = 0.0f;
        _462 = 0.0f;
      }
    } else {
      _460 = 0.0f;
      _461 = 0.0f;
      _462 = 0.0f;
    }
  } else {
    _460 = _444;
    _461 = _445;
    _462 = _446;
  }
  SV_Target.x = _460;
  SV_Target.y = _461;
  SV_Target.z = _462;
  SV_Target.w = _35;
  return SV_Target;
}
