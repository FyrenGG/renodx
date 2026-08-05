Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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
  float _63;
  float _79;
  float _95;
  float _96;
  float _100;
  float _103;
  float _106;
  float _113;
  float _120;
  float _127;
  float _128;
  float _129;
  float _130;
  float _131;
  float _132;
  float _133;
  float _149;
  float _165;
  float _181;
  float _182;
  float _183;
  float _184;
  float _185;
  float _202;
  float _203;
  float _204;
  float _205;
  float _208;
  float _211;
  float _215;
  float _219;
  float _223;
  float _243;
  float _255;
  float _267;
  float _279;
  float _286;
  float _293;
  float _300;
  float _306;
  float _307;
  float _309;
  float _311;
  float _313;
  float _318;
  float _339;
  float _341;
  float _344;
  float _347;
  float _350;
  float _356;
  float _398;
  float _401;
  float _407;
  float _449;
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
    _44 = _exposure0.x * _userImageAdjust.z;
    _63 = exp2(_powerParams.x * log2(max(0.0f, (((_44 * max(0.0f, (((_17.x * 1.70505f) - (_17.y * 0.62179f)) - (_17.z * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _79 = exp2(log2(max(0.0f, (((_slopeParams.y * _44) * max(0.0f, (((_17.y * 1.1408f) - (_17.x * 0.13026f)) - (_17.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _95 = exp2(log2(max(0.0f, (((_slopeParams.z * _44) * max(0.0f, (((_17.x * -0.024f) - (_17.y * 0.12897f)) + (_17.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _96 = dot(float3(_63, _79, _95), float3(0.212671f, 0.71516f, 0.072169f));
    _100 = ((_63 - _96) * _powerParams.w) + _96;
    _103 = ((_79 - _96) * _powerParams.w) + _96;
    _106 = ((_95 - _96) * _powerParams.w) + _96;
    _113 = min(max(log2(mad(_106, 0.079223745f, mad(_103, 0.0784336f, (_100 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _120 = min(max(log2(mad(_106, 0.07916613f, mad(_103, 0.87846863f, (_100 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _127 = min(max(log2(mad(_106, 0.879143f, mad(_103, 0.0784336f, (_100 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _128 = _113 * 0.060606062f;
    _129 = _120 * 0.060606062f;
    _130 = _127 * 0.060606062f;
    _131 = _128 * _128;
    _132 = _129 * _129;
    _133 = _130 * _130;
    _149 = min(0.0f, (-0.0f - (((_113 * 0.0072181816f) + ((_131 * 0.4298f) + (((_131 * _131) * ((31.96f - (_113 * 2.4327273f)) + (_131 * 15.5f))) - ((_113 * 0.41624245f) * _131)))) + -0.00232f)));
    _165 = min(0.0f, (-0.0f - (((_120 * 0.0072181816f) + ((_132 * 0.4298f) + (((_132 * _132) * ((31.96f - (_120 * 2.4327273f)) + (_132 * 15.5f))) - ((_120 * 0.41624245f) * _132)))) + -0.00232f)));
    _181 = min(0.0f, (-0.0f - (((_127 * 0.0072181816f) + ((_133 * 0.4298f) + (((_133 * _133) * ((31.96f - (_127 * 2.4327273f)) + (_133 * 15.5f))) - ((_127 * 0.41624245f) * _133)))) + -0.00232f)));
    _182 = -0.0f - _149;
    _183 = -0.0f - _165;
    _184 = -0.0f - _181;
    _185 = dot(float3(_182, _183, _184), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _202 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _203 = -0.79999995f / _202;
      _204 = -1.2f / _202;
      _205 = 0.20000005f / _202;
      _208 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _211 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _215 = (_203 + 1.4f) + (_211 * (-0.39999998f - _203));
      _219 = (_204 + 1.6f) + (_211 * (-0.6f - _204));
      _223 = (_205 + 0.9f) + (_211 * (0.5f - _205));
      _240 = (lerp(_223, 1.4f, _208));  // [sem: blended]
      _241 = (lerp(_215, 1.0f, _208));  // [sem: blended]
      _242 = (lerp(_219, 1.2f, _208));  // [sem: blended]
    } else {
      _240 = 1.4f;  // [sem: blended]
      _241 = 1.0f;  // [sem: blended]
      _242 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _243 = 1.0f - _242;
    _255 = ((exp2(log2(((saturate((_149 * _149) * _182) * _243) + _242) * _182) * _241) - _185) * _240) + _185;
    _267 = ((exp2(log2(((saturate((_165 * _165) * _183) * _243) + _242) * _183) * _241) - _185) * _240) + _185;
    _279 = ((exp2(log2(((saturate((_181 * _181) * _184) * _243) + _242) * _184) * _241) - _185) * _240) + _185;
    _286 = saturate(exp2(log2(mad(_279, -0.09902974f, mad(_267, -0.09802088f, (_255 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _293 = saturate(exp2(log2(mad(_279, -0.098961174f, mad(_267, 1.1519032f, (_255 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _300 = saturate(exp2(log2(mad(_279, 1.1510737f, mad(_267, -0.09804345f, (_255 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _306 = 1.0f - abs(_etcParams.w);
      _307 = saturate(_etcParams.w);  // [sem: expr_sat]
      _309 = (_306 * _286) + _307;
      _311 = (_306 * _293) + _307;
      _313 = (_306 * _300) + _307;
      if (_colorGradingParams.w > 0.0f) {
        _318 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _335 = (((max(0.0f, (1.0f - _313)) - _313) * _318) + _313);
        _336 = (((max(0.0f, (1.0f - _311)) - _311) * _318) + _311);
        _337 = (((max(0.0f, (1.0f - _309)) - _309) * _318) + _309);
      } else {
        _335 = _313;
        _336 = _311;
        _337 = _309;
      }
      _339 = _userImageAdjust.y + 1.0f;
      _341 = _userImageAdjust.x + 0.5f;
      _344 = ((_337 + -0.5f) * _339) + _341;
      _347 = ((_336 + -0.5f) * _339) + _341;
      _350 = ((_335 + -0.5f) * _339) + _341;
      _356 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _391 = exp2(log2(saturate(mad(_colorBlind2.z, _350, mad(_colorBlind2.y, _347, (_colorBlind2.x * _344))))) * _356);
      _392 = exp2(log2(saturate(mad(_colorBlind1.z, _350, mad(_colorBlind1.y, _347, (_colorBlind1.x * _344))))) * _356);
      _393 = exp2(log2(saturate(mad(_colorBlind0.z, _350, mad(_colorBlind0.y, _347, (_colorBlind0.x * _344))))) * _356);
    } else {
      _391 = _300;
      _392 = _293;
      _393 = _286;
    }
  } else {
    _391 = _17.z;
    _392 = _17.y;
    _393 = _17.x;
  }
  if (_etcParams.y > 1.0f) {
    _398 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _401 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _407 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_398, _401), float2(_398, _401))));  // [sem: expr_sat]
    _412 = (_407 * _391);
    _413 = (_407 * _392);
    _414 = (_407 * _393);
  } else {
    _412 = _391;
    _413 = _392;
    _414 = _393;
  }
  if (_38 && (_etcParams.z > 0.0f)) {
    _444 = select((_413 <= 0.0031308f), (_413 * 12.92f), (((pow(_413, 0.41666666f)) * 1.055f) + -0.055f));
    _445 = select((_414 <= 0.0031308f), (_414 * 12.92f), (((pow(_414, 0.41666666f)) * 1.055f) + -0.055f));
    _446 = select((_412 <= 0.0031308f), (_412 * 12.92f), (((pow(_412, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _444 = _413;
    _445 = _414;
    _446 = _412;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _449 = (float)((uint)((uint)(_21)));
    if (!(_449 < _viewDir.w)) {
      if (!(!(_449 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _460 = 0.0f;
        _461 = 0.0f;
        _462 = 0.0f;
      } else {
        _460 = _445;
        _461 = _444;
        _462 = _446;
      }
    } else {
      _460 = 0.0f;
      _461 = 0.0f;
      _462 = 0.0f;
    }
  } else {
    _460 = _445;
    _461 = _444;
    _462 = _446;
  }
  SV_Target.x = _460;
  SV_Target.y = _461;
  SV_Target.z = _462;
  SV_Target.w = _35;
  return SV_Target;
}
