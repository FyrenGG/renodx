struct PostProcessFisheye_DistortionStruct {
  float _maxPower;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
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

struct BindlessParameters_PostProcessFisheye_Distortion {
  PostProcessFisheye_DistortionStruct BindlessParameters_PostProcessFisheye_Distortion;
};

typedef BindlessParameters_PostProcessFisheye_Distortion BindlessParameters_PostProcessFisheye_Distortion_t;
ConstantBuffer<BindlessParameters_PostProcessFisheye_Distortion_t> BindlessParameters_PostProcessFisheye_Distortion[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _31;
  float _32;
  float _33;
  float _34;
  float _35;
  float _36;
  float _37;
  float _38;
  int _39;
  float _47;
  bool _48;
  float _56;
  float _94;
  float _95;
  float _117;
  float _322;
  float _323;
  float _324;
  float _417;
  float _418;
  float _419;
  float _473;
  float _474;
  float _475;
  float _494;
  float _495;
  float _496;
  float _526;
  float _527;
  float _528;
  float _542;
  float _543;
  float _544;
  float _58;
  float _60;
  float _68;
  float _76;
  float _79;
  float _88;
  float4 _100;
  uint _104;
  bool _120;
  float _126;
  float _175;
  float _176;
  float _177;
  float _179;
  float _186;
  float _187;
  float _188;
  float _207;
  float _208;
  float _209;
  float _210;
  float _211;
  float _212;
  float _213;
  float _214;
  float _215;
  float _261;
  float _262;
  float _263;
  float _264;
  float _265;
  float _266;
  float _267;
  float _284;
  float _285;
  float _286;
  float _287;
  float _293;
  float _296;
  float _303;
  float _304;
  float _305;
  float _334;
  float _359;
  float _360;
  float _361;
  float _380;
  float _381;
  float _382;
  float _388;
  float _392;
  float _393;
  float _394;
  float _395;
  float _400;
  float _425;
  float _429;
  float _430;
  float _431;
  float _432;
  float _462;
  float _484;
  float _485;
  float _489;
  float _533;
  _31 = (_destTargetSizAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
  _32 = (_destTargetSizAndInv.y * (1.0f - TEXCOORD.y)) / _srcTargetSizeAndInv.x;
  _33 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _34 = 0.5f / _33;
  _35 = _31 + -0.5f;
  _36 = _32 - _34;
  _37 = dot(float2(_35, _36), float2(_35, _36));
  _38 = sqrt(_37);
  _39 = WaveReadLaneFirst(_materialIndex);
  _47 = WaveReadLaneFirst(BindlessParameters_PostProcessFisheye_Distortion[((int)((uint)((uint)(select(((uint)_39 < (uint)170000), _39, 0))) + (uint)(0)))].BindlessParameters_PostProcessFisheye_Distortion._maxPower);
  _48 = (_47 > 0.0f);
  if (_48) {
    _56 = sqrt(dot(float2(0.5f, _34), float2(0.5f, _34)));
  } else {
    if (!(_33 < 1.0f)) {
      _56 = _34;
    } else {
      _56 = 0.5f;
    }
  }
  if (_48) {
    _58 = rsqrt(_37);  // [sem: rsqrt_val]
    _60 = tan(_47 * _38);
    _68 = tan(_56 * _47);
    _94 = (((((_56 * _35) * _58) * _60) / _68) + 0.5f);
    _95 = (((((_56 * _36) * _58) * _60) / _68) + _34);
  } else {
    if (_47 < 0.0f) {
      _76 = rsqrt(_37);  // [sem: rsqrt_val]
      _79 = atan((_47 * _38) * -10.0f);
      _88 = atan((_47 * -10.0f) * _56);
      _94 = (((((_56 * _35) * _76) * _79) / _88) + 0.5f);
      _95 = (((((_56 * _36) * _76) * _79) / _88) + _34);
    } else {
      _94 = _31;
      _95 = _32;
    }
  }
  _100 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(_94, (1.0f - (_95 * _33))));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _104 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _117 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _104, 0)))).x) & 127)))) + 0.5f);
  } else {
    _117 = 1.0f;
  }
  _120 = (_localToneMappingParams.w > 0.0f);
  if (_120) {
    _126 = _userImageAdjust.z * _exposure0.x;
    _175 = exp2(log2(max(0.0f, (((_126 * max(0.0f, (((_100.x * 1.70505f) - (_100.y * 0.62179f)) - (_100.z * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _176 = exp2(log2(max(0.0f, (((max(0.0f, (((_100.y * 1.1408f) - (_100.x * 0.13026f)) - (_100.z * 0.01055f))) * _126) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _177 = exp2(log2(max(0.0f, (((max(0.0f, (((_100.x * -0.024f) - (_100.y * 0.12897f)) + (_100.z * 1.15297f))) * _126) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _179 = dot(float3(_175, _176, _177), float3(0.212671f, 0.71516f, 0.072169f));
    _186 = ((_175 - _179) * _powerParams.w) + _179;
    _187 = ((_176 - _179) * _powerParams.w) + _179;
    _188 = ((_177 - _179) * _powerParams.w) + _179;
    _207 = min(max(log2(mad(_188, 0.079223745f, mad(_187, 0.0784336f, (_186 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _208 = min(max(log2(mad(_188, 0.07916613f, mad(_187, 0.87846863f, (_186 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _209 = min(max(log2(mad(_188, 0.879143f, mad(_187, 0.0784336f, (_186 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _210 = _207 * 0.060606062f;
    _211 = _208 * 0.060606062f;
    _212 = _209 * 0.060606062f;
    _213 = _210 * _210;
    _214 = _211 * _211;
    _215 = _212 * _212;
    _261 = min(0.0f, (-0.0f - (((_207 * 0.0072181816f) + ((_213 * 0.4298f) + (((_213 * _213) * ((31.96f - (_207 * 2.4327273f)) + (_213 * 15.5f))) - ((_207 * 0.41624245f) * _213)))) + -0.00232f)));
    _262 = min(0.0f, (-0.0f - (((_208 * 0.0072181816f) + ((_214 * 0.4298f) + (((_214 * _214) * ((31.96f - (_208 * 2.4327273f)) + (_214 * 15.5f))) - ((_208 * 0.41624245f) * _214)))) + -0.00232f)));
    _263 = min(0.0f, (-0.0f - (((_209 * 0.0072181816f) + ((_215 * 0.4298f) + (((_215 * _215) * ((31.96f - (_209 * 2.4327273f)) + (_215 * 15.5f))) - ((_209 * 0.41624245f) * _215)))) + -0.00232f)));
    _264 = -0.0f - _261;
    _265 = -0.0f - _262;
    _266 = -0.0f - _263;
    _267 = dot(float3(_264, _265, _266), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _284 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _285 = -0.79999995f / _284;
      _286 = -1.2f / _284;
      _287 = 0.20000005f / _284;
      _293 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _296 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _303 = (_285 + 1.4f) + (_296 * (-0.39999998f - _285));
      _304 = (_286 + 1.6f) + (_296 * (-0.6f - _286));
      _305 = (_287 + 0.9f) + (_296 * (0.5f - _287));
      _322 = (lerp(_304, 1.2f, _293));  // [sem: blended]
      _323 = (lerp(_303, 1.0f, _293));  // [sem: blended]
      _324 = (lerp(_305, 1.4f, _293));  // [sem: blended]
    } else {
      _322 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _323 = 1.0f;  // [sem: blended]
      _324 = 1.4f;  // [sem: blended]
    }
    _334 = 1.0f - _322;
    _359 = ((exp2(log2(((saturate((_261 * _261) * _264) * _334) + _322) * _264) * _323) - _267) * _324) + _267;
    _360 = ((exp2(log2(((saturate((_262 * _262) * _265) * _334) + _322) * _265) * _323) - _267) * _324) + _267;
    _361 = ((exp2(log2(((saturate((_263 * _263) * _266) * _334) + _322) * _266) * _323) - _267) * _324) + _267;
    _380 = saturate(exp2(log2(mad(_361, -0.09902974f, mad(_360, -0.09802088f, (_359 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _381 = saturate(exp2(log2(mad(_361, -0.098961174f, mad(_360, 1.1519032f, (_359 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _382 = saturate(exp2(log2(mad(_361, 1.1510737f, mad(_360, -0.09804345f, (_359 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _388 = 1.0f - abs(_etcParams.w);
      _392 = saturate(_etcParams.w);  // [sem: expr_sat]
      _393 = (_388 * _380) + _392;
      _394 = (_388 * _381) + _392;
      _395 = (_388 * _382) + _392;
      if (_colorGradingParams.w > 0.0f) {
        _400 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _417 = (((max(0.0f, (1.0f - _393)) - _393) * _400) + _393);
        _418 = (((max(0.0f, (1.0f - _394)) - _394) * _400) + _394);
        _419 = (((max(0.0f, (1.0f - _395)) - _395) * _400) + _395);
      } else {
        _417 = _393;
        _418 = _394;
        _419 = _395;
      }
      _425 = _userImageAdjust.y + 1.0f;
      _429 = _userImageAdjust.x + 0.5f;
      _430 = ((_417 + -0.5f) * _425) + _429;
      _431 = ((_418 + -0.5f) * _425) + _429;
      _432 = ((_419 + -0.5f) * _425) + _429;
      _462 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _473 = exp2(log2(saturate(mad(_colorBlind0.z, _432, mad(_colorBlind0.y, _431, (_colorBlind0.x * _430))))) * _462);
      _474 = exp2(log2(saturate(mad(_colorBlind1.z, _432, mad(_colorBlind1.y, _431, (_colorBlind1.x * _430))))) * _462);
      _475 = exp2(log2(saturate(mad(_colorBlind2.z, _432, mad(_colorBlind2.y, _431, (_colorBlind2.x * _430))))) * _462);
    } else {
      _473 = _380;
      _474 = _381;
      _475 = _382;
    }
  } else {
    _473 = _100.x;
    _474 = _100.y;
    _475 = _100.z;
  }
  if (_etcParams.y > 1.0f) {
    _484 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _485 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _489 = saturate(1.0f - (dot(float2(_484, _485), float2(_484, _485)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _494 = (_489 * _473);
    _495 = (_489 * _474);
    _496 = (_489 * _475);
  } else {
    _494 = _473;
    _495 = _474;
    _496 = _475;
  }
  if (_120 && (_etcParams.z > 0.0f)) {
    _526 = select((_494 <= 0.0031308f), (_494 * 12.92f), (((pow(_494, 0.41666666f)) * 1.055f) + -0.055f));
    _527 = select((_495 <= 0.0031308f), (_495 * 12.92f), (((pow(_495, 0.41666666f)) * 1.055f) + -0.055f));
    _528 = select((_496 <= 0.0031308f), (_496 * 12.92f), (((pow(_496, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _526 = _494;
    _527 = _495;
    _528 = _496;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _533 = (float)((uint)((uint)(_104)));
    if (!(_533 < _viewDir.w)) {
      if (!(_533 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _542 = _526;
        _543 = _527;
        _544 = _528;
      } else {
        _542 = 0.0f;
        _543 = 0.0f;
        _544 = 0.0f;
      }
    } else {
      _542 = 0.0f;
      _543 = 0.0f;
      _544 = 0.0f;
    }
  } else {
    _542 = _526;
    _543 = _527;
    _544 = _528;
  }
  SV_Target.x = _542;
  SV_Target.y = _543;
  SV_Target.z = _544;
  SV_Target.w = _117;
  return SV_Target;
}
