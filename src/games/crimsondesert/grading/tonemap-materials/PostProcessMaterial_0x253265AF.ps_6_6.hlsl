struct PostProcessFlashbackStruct {
  float _blendingRatio;
  float _flickeringIntensity;
  float _contrastRatio;
  float _depthFadingContrast;
  float _depthFadingDistance;
  float _vignetteRatio;
  float _vignetteWidth;
  float _vignetteShape;
  float _lensDirtIntensity;
  float _lensDirtTexScale;
  uint _lensDirtTex;
};

struct BindlessParameters_PostProcessFlashback {
  PostProcessFlashbackStruct BindlessParameters_PostProcessFlashback;
};


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

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

typedef BindlessParameters_PostProcessFlashback BindlessParameters_PostProcessFlashback_t;
ConstantBuffer<BindlessParameters_PostProcessFlashback_t> BindlessParameters_PostProcessFlashback[] : register(b0, space100);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _18;
  float _26;
  float _27;
  int _30;
  float _38;
  float _39;
  int _42;
  float _50;
  float _51;
  int _54;
  float _62;
  float _63;
  float _140;
  float _187;
  float _217;
  float _218;
  float _219;
  float _233;
  float _438;
  float _439;
  float _440;
  float _533;
  float _534;
  float _535;
  float _589;
  float _590;
  float _591;
  float _610;
  float _611;
  float _612;
  float _642;
  float _643;
  float _644;
  float _658;
  float _659;
  float _660;
  float _83;
  float _84;
  float _85;
  float _89;
  float _103;
  float _104;
  float _105;
  float _109;
  float _110;
  float _111;
  float _118;
  int _145;
  float _153;
  int _156;
  float _164;
  float _168;
  float _172;
  float _179;
  float _195;
  float _197;
  float _201;
  float _206;
  float _214;
  uint _220;
  bool _236;
  float _242;
  float _261;
  float _277;
  float _293;
  float _294;
  float _298;
  float _301;
  float _304;
  float _311;
  float _318;
  float _325;
  float _326;
  float _327;
  float _328;
  float _329;
  float _330;
  float _331;
  float _347;
  float _363;
  float _379;
  float _380;
  float _381;
  float _382;
  float _383;
  float _400;
  float _401;
  float _402;
  float _403;
  float _406;
  float _409;
  float _413;
  float _417;
  float _421;
  float _441;
  float _453;
  float _465;
  float _477;
  float _484;
  float _491;
  float _498;
  float _504;
  float _505;
  float _507;
  float _509;
  float _511;
  float _516;
  float _537;
  float _539;
  float _542;
  float _545;
  float _548;
  float _554;
  float _596;
  float _599;
  float _605;
  float _647;
  float _664;
  float _668;
  float _672;
  _18 = WaveReadLaneFirst(_materialIndex);
  _26 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_18 < (uint)170000), _18, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._blendingRatio);
  _27 = saturate(_26);  // [sem: _26_sat]
  _30 = WaveReadLaneFirst(_materialIndex);
  _38 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_30 < (uint)170000), _30, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._flickeringIntensity);
  _39 = saturate(_38);  // [sem: _38_sat]
  _42 = WaveReadLaneFirst(_materialIndex);
  _50 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_42 < (uint)170000), _42, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._vignetteRatio);
  _51 = saturate(_50);  // [sem: _50_sat]
  _54 = WaveReadLaneFirst(_materialIndex);
  _62 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_54 < (uint)170000), _54, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtIntensity);
  _63 = saturate(_62);  // [sem: _62_sat]
  if (!((((_27 < 0.0001f) && (_39 < 0.0001f)) && (_51 < 0.0001f)) && (_63 < 0.0001f))) {
    [branch]
    if (!(!(_39 >= 0.001f))) {
      _83 = (frac(sin(dot(float2(floor(_time.x * 0.37f), 41.0f), float2(127.1f, 311.7f))) * 437.545f) + 3.0f) * _time.x;
      _84 = floor(_83);
      _85 = frac(_83);
      _89 = frac(sin(dot(float2(53.0f, _84), float2(127.1f, 311.7f))) * 437.545f);
      _103 = (((((_85 * _85) * (3.0f - (_85 * 2.0f))) * (frac(sin(dot(float2(53.0f, (_84 + 1.0f)), float2(127.1f, 311.7f))) * 437.545f) - _89)) + _89) * 3.17f) + _83;
      _104 = floor(_103);
      _105 = frac(_103);
      _109 = frac(sin(dot(float2(97.0f, _104), float2(127.1f, 311.7f))) * 437.545f);
      _110 = TEXCOORD.x + -0.5f;
      _111 = TEXCOORD.y + -0.5f;
      _118 = saturate((sqrt((_111 * _111) + (_110 * _110)) + -0.075f) * 2.0f);  // [sem: expr_sat]
      _140 = (((_118 * _118) * (3.0f - (_118 * 2.0f))) * saturate(((_109 + -0.3f) + (((_105 * _105) * (3.0f - (_105 * 2.0f))) * (frac(sin(dot(float2(97.0f, (_104 + 1.0f)), float2(127.1f, 311.7f))) * 437.545f) - _109))) * 1.4285715f));
    } else {
      _140 = 0.0f;
    }
    [branch]
    if (!(!(_51 >= 0.001f))) {
      _145 = WaveReadLaneFirst(_materialIndex);
      _153 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_145 < (uint)170000), _145, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._vignetteShape);
      _156 = WaveReadLaneFirst(_materialIndex);
      _164 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_156 < (uint)170000), _156, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._vignetteWidth);
      _168 = (5.0f - ((_164 + 4.0f) * _27)) * 0.5f;
      _172 = max((abs(TEXCOORD.x + -0.5f) - _168), 0.0f);
      _179 = max((abs((TEXCOORD.y + -0.5f) / max(0.0001f, (_153 * 3.1415927f))) - _168), 0.0f);
      _187 = saturate(sqrt((_179 * _179) + (_172 * _172)) * 0.5f);  // [sem: expr_sat]
    } else {
      _187 = 0.0f;  // [sem: expr_sat]
    }
    [branch]
    if (!(!(_63 >= 0.0001f))) {
      _195 = saturate(1.0f / max(0.001f, abs(_exposure0.x)));  // [sem: expr_sat]
      _197 = -0.25f - (_195 * 0.25f);
      _201 = max((abs(TEXCOORD.x + -0.5f) - _197), 0.0f);
      _206 = max((abs((TEXCOORD.y + -0.5f) * 1.5303359f) - _197), 0.0f);
      _214 = saturate(sqrt((_206 * _206) + (_201 * _201)) / ((_195 * 0.70000005f) + 1.3f));  // [sem: expr_sat]
      _217 = (_214 * _214);
      _218 = _187;
      _219 = _140;
    } else {
      _217 = 0.0f;
      _218 = _187;
      _219 = _140;
    }
  } else {
    _217 = 0.0f;
    _218 = 0.0f;
    _219 = 0.0f;
  }
  _220 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _233 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _220, 0)))).x) & 127)))) + 0.5f);
  } else {
    _233 = 1.0f;
  }
  _236 = (_localToneMappingParams.w > 0.0f);
  if (_236) {
    _242 = _exposure0.x * _userImageAdjust.z;
    _261 = exp2(_powerParams.x * log2(max(0.0f, (((_242 * max(0.0f, (((_218 * -0.62179f) - (_217 * 0.08326f)) + (_219 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _277 = exp2(log2(max(0.0f, (((_slopeParams.y * _242) * max(0.0f, (((_218 * 1.1408f) - (_217 * 0.01055f)) - (_219 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _293 = exp2(log2(max(0.0f, (((_slopeParams.z * _242) * max(0.0f, (((_217 * 1.15297f) - (_218 * 0.12897f)) - (_219 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _294 = dot(float3(_261, _277, _293), float3(0.212671f, 0.71516f, 0.072169f));
    _298 = ((_261 - _294) * _powerParams.w) + _294;
    _301 = ((_277 - _294) * _powerParams.w) + _294;
    _304 = ((_293 - _294) * _powerParams.w) + _294;
    _311 = min(max(log2(mad(_304, 0.079223745f, mad(_301, 0.0784336f, (_298 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _318 = min(max(log2(mad(_304, 0.07916613f, mad(_301, 0.87846863f, (_298 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _325 = min(max(log2(mad(_304, 0.879143f, mad(_301, 0.0784336f, (_298 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _326 = _311 * 0.060606062f;
    _327 = _318 * 0.060606062f;
    _328 = _325 * 0.060606062f;
    _329 = _326 * _326;
    _330 = _327 * _327;
    _331 = _328 * _328;
    _347 = min(0.0f, (-0.0f - (((_311 * 0.0072181816f) + ((_329 * 0.4298f) + (((_329 * _329) * ((31.96f - (_311 * 2.4327273f)) + (_329 * 15.5f))) - ((_311 * 0.41624245f) * _329)))) + -0.00232f)));
    _363 = min(0.0f, (-0.0f - (((_318 * 0.0072181816f) + ((_330 * 0.4298f) + (((_330 * _330) * ((31.96f - (_318 * 2.4327273f)) + (_330 * 15.5f))) - ((_318 * 0.41624245f) * _330)))) + -0.00232f)));
    _379 = min(0.0f, (-0.0f - (((_325 * 0.0072181816f) + ((_331 * 0.4298f) + (((_331 * _331) * ((31.96f - (_325 * 2.4327273f)) + (_331 * 15.5f))) - ((_325 * 0.41624245f) * _331)))) + -0.00232f)));
    _380 = -0.0f - _347;
    _381 = -0.0f - _363;
    _382 = -0.0f - _379;
    _383 = dot(float3(_380, _381, _382), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _400 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _401 = -0.79999995f / _400;
      _402 = -1.2f / _400;
      _403 = 0.20000005f / _400;
      _406 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _409 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _413 = (_401 + 1.4f) + (_409 * (-0.39999998f - _401));
      _417 = (_402 + 1.6f) + (_409 * (-0.6f - _402));
      _421 = (_403 + 0.9f) + (_409 * (0.5f - _403));
      _438 = (lerp(_421, 1.4f, _406));  // [sem: blended]
      _439 = (lerp(_413, 1.0f, _406));  // [sem: blended]
      _440 = (lerp(_417, 1.2f, _406));  // [sem: blended]
    } else {
      _438 = 1.4f;  // [sem: blended]
      _439 = 1.0f;  // [sem: blended]
      _440 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _441 = 1.0f - _440;
    _453 = ((exp2(log2(((saturate((_347 * _347) * _380) * _441) + _440) * _380) * _439) - _383) * _438) + _383;
    _465 = ((exp2(log2(((saturate((_363 * _363) * _381) * _441) + _440) * _381) * _439) - _383) * _438) + _383;
    _477 = ((exp2(log2(((saturate((_379 * _379) * _382) * _441) + _440) * _382) * _439) - _383) * _438) + _383;
    _484 = saturate(exp2(log2(mad(_477, -0.09902974f, mad(_465, -0.09802088f, (_453 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _491 = saturate(exp2(log2(mad(_477, -0.098961174f, mad(_465, 1.1519032f, (_453 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _498 = saturate(exp2(log2(mad(_477, 1.1510737f, mad(_465, -0.09804345f, (_453 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _504 = 1.0f - abs(_etcParams.w);
      _505 = saturate(_etcParams.w);  // [sem: expr_sat]
      _507 = (_504 * _484) + _505;
      _509 = (_504 * _491) + _505;
      _511 = (_504 * _498) + _505;
      if (_colorGradingParams.w > 0.0f) {
        _516 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _533 = (((max(0.0f, (1.0f - _507)) - _507) * _516) + _507);
        _534 = (((max(0.0f, (1.0f - _509)) - _509) * _516) + _509);
        _535 = (((max(0.0f, (1.0f - _511)) - _511) * _516) + _511);
      } else {
        _533 = _507;
        _534 = _509;
        _535 = _511;
      }
      _537 = _userImageAdjust.y + 1.0f;
      _539 = _userImageAdjust.x + 0.5f;
      _542 = ((_533 + -0.5f) * _537) + _539;
      _545 = ((_534 + -0.5f) * _537) + _539;
      _548 = ((_535 + -0.5f) * _537) + _539;
      _554 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _589 = exp2(log2(saturate(mad(_colorBlind0.z, _548, mad(_colorBlind0.y, _545, (_colorBlind0.x * _542))))) * _554);
      _590 = exp2(log2(saturate(mad(_colorBlind1.z, _548, mad(_colorBlind1.y, _545, (_colorBlind1.x * _542))))) * _554);
      _591 = exp2(log2(saturate(mad(_colorBlind2.z, _548, mad(_colorBlind2.y, _545, (_colorBlind2.x * _542))))) * _554);
    } else {
      _589 = _484;
      _590 = _491;
      _591 = _498;
    }
  } else {
    _589 = _219;
    _590 = _218;
    _591 = _217;
  }
  if (_etcParams.y > 1.0f) {
    _596 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _599 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _605 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_596, _599), float2(_596, _599))));  // [sem: expr_sat]
    _610 = (_605 * _589);
    _611 = (_605 * _590);
    _612 = (_605 * _591);
  } else {
    _610 = _589;
    _611 = _590;
    _612 = _591;
  }
  if (_236 && (_etcParams.z > 0.0f)) {
    _642 = select((_610 <= 0.0031308f), (_610 * 12.92f), (((pow(_610, 0.41666666f)) * 1.055f) + -0.055f));
    _643 = select((_611 <= 0.0031308f), (_611 * 12.92f), (((pow(_611, 0.41666666f)) * 1.055f) + -0.055f));
    _644 = select((_612 <= 0.0031308f), (_612 * 12.92f), (((pow(_612, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _642 = _610;
    _643 = _611;
    _644 = _612;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _647 = (float)((uint)((uint)(_220)));
    if (!(_647 < _viewDir.w)) {
      if (!(!(_647 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _658 = 0.0f;
        _659 = 0.0f;
        _660 = 0.0f;
      } else {
        _658 = _642;
        _659 = _643;
        _660 = _644;
      }
    } else {
      _658 = 0.0f;
      _659 = 0.0f;
      _660 = 0.0f;
    }
  } else {
    _658 = _642;
    _659 = _643;
    _660 = _644;
  }
  _664 = exp2(log2(_658 * 0.0001f) * 0.15930176f);
  _668 = exp2(log2(_659 * 0.0001f) * 0.15930176f);
  _672 = exp2(log2(_660 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_664 * 18.6875f) + 1.0f)) * ((_664 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_668 * 18.6875f) + 1.0f)) * ((_668 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_672 * 18.6875f) + 1.0f)) * ((_672 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _233;
  return SV_Target;
}
