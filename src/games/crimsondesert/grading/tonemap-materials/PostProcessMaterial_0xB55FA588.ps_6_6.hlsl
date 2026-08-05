struct PostProcessHousingStruct {
  float _ratio;
  float3 _pivotPosition;
  float4 _rectMinMax;
};

struct BindlessParameters_PostProcessHousing {
  PostProcessHousingStruct BindlessParameters_PostProcessHousing;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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

typedef BindlessParameters_PostProcessHousing BindlessParameters_PostProcessHousing_t;
ConstantBuffer<BindlessParameters_PostProcessHousing_t> BindlessParameters_PostProcessHousing[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _22;
  float _27;
  float _28;
  float _29;
  float _34;
  float _46;
  float _55;
  float _64;
  float _65;
  float _67;
  float _68;
  float _70;
  int _73;
  float _81;
  float _85;
  float _89;
  int _92;
  float _100;
  float _104;
  float _108;
  float _112;
  bool _141;
  float _146;
  float _147;
  float _148;
  float _165;
  float _370;
  float _371;
  float _372;
  float _465;
  float _466;
  float _467;
  float _521;
  float _522;
  float _523;
  float _539;
  float _540;
  float _541;
  float _571;
  float _572;
  float _573;
  float _587;
  float _588;
  float _589;
  uint _149;
  bool _168;
  float _174;
  float _193;
  float _209;
  float _225;
  float _226;
  float _230;
  float _233;
  float _236;
  float _243;
  float _250;
  float _257;
  float _258;
  float _259;
  float _260;
  float _261;
  float _262;
  float _263;
  float _279;
  float _295;
  float _311;
  float _312;
  float _313;
  float _314;
  float _315;
  float _332;
  float _333;
  float _334;
  float _335;
  float _338;
  float _341;
  float _345;
  float _349;
  float _353;
  float _373;
  float _385;
  float _397;
  float _409;
  float _416;
  float _423;
  float _430;
  float _436;
  float _437;
  float _439;
  float _441;
  float _443;
  float _448;
  float _469;
  float _471;
  float _474;
  float _477;
  float _480;
  float _486;
  float _526;
  float _528;
  float _534;
  float _576;
  _22 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _27 = (TEXCOORD.x * 2.0f) + -1.0f;
  _28 = TEXCOORD.y * 2.0f;
  _29 = 1.0f - _28;
  _34 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _46 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _34, mad((_invViewProj[3].y), _29, ((_invViewProj[3].x) * _27)));
  _55 = (mad((_invViewProj[0].z), _34, mad((_invViewProj[0].y), _29, ((_invViewProj[0].x) * _27))) + (_invViewProj[0].w)) / _46;
  _64 = (mad((_invViewProj[2].z), _34, mad((_invViewProj[2].y), _29, ((_invViewProj[2].x) * _27))) + (_invViewProj[2].w)) / _46;
  _65 = abs(_55);
  _67 = frac(abs(_65));
  _68 = abs(_64);
  _70 = frac(abs(_68));
  _73 = WaveReadLaneFirst(_materialIndex);
  _81 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_73 < (uint)170000), _73, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._pivotPosition.x);
  _85 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_73 < (uint)170000), _73, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._pivotPosition.y);
  _89 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_73 < (uint)170000), _73, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._pivotPosition.z);
  _92 = WaveReadLaneFirst(_materialIndex);
  _100 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_92 < (uint)170000), _92, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._rectMinMax.x);
  _104 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_92 < (uint)170000), _92, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._rectMinMax.y);
  _108 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_92 < (uint)170000), _92, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._rectMinMax.z);
  _112 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_92 < (uint)170000), _92, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._rectMinMax.w);
  if (((_55 > (_100 + _81)) && (_64 > (_104 + _89))) && (_55 < (_108 + _81))) {
    if (_64 < (_112 + _89)) {
      if (!(abs(1.0f - select((_68 >= (-0.0f - _68)), _70, (-0.0f - _70))) < 0.03125f)) {
        _141 = (abs(1.0f - select((_65 >= (-0.0f - _65)), _67, (-0.0f - _67))) < 0.03125f);
      } else {
        _141 = true;
      }
    } else {
      _141 = false;
    }
    _146 = select(_141, 256.0f, _22.x);
    _147 = select(_141, 256.0f, _22.y);
    _148 = select(_141, 256.0f, _22.z);
  } else {
    _146 = _22.x;
    _147 = _22.y;
    _148 = _22.z;
  }
  _149 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _165 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _149, 0)))).x) & 127)))) + 0.5f);
  } else {
    _165 = _postProcessParams.x;
  }
  _168 = (_localToneMappingParams.w > 0.0f);
  if (_168) {
    _174 = _exposure0.x * _userImageAdjust.z;
    _193 = exp2(_powerParams.x * log2(max(0.0f, (((_174 * max(0.0f, (((_146 * 1.70505f) - (_147 * 0.62179f)) - (_148 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _209 = exp2(log2(max(0.0f, (((_slopeParams.y * _174) * max(0.0f, (((_147 * 1.1408f) - (_146 * 0.13026f)) - (_148 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _225 = exp2(log2(max(0.0f, (((_slopeParams.z * _174) * max(0.0f, (((_146 * -0.024f) - (_147 * 0.12897f)) + (_148 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _226 = dot(float3(_193, _209, _225), float3(0.212671f, 0.71516f, 0.072169f));
    _230 = ((_193 - _226) * _powerParams.w) + _226;
    _233 = ((_209 - _226) * _powerParams.w) + _226;
    _236 = ((_225 - _226) * _powerParams.w) + _226;
    _243 = min(max(log2(mad(_236, 0.079223745f, mad(_233, 0.0784336f, (_230 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _250 = min(max(log2(mad(_236, 0.07916613f, mad(_233, 0.87846863f, (_230 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _257 = min(max(log2(mad(_236, 0.879143f, mad(_233, 0.0784336f, (_230 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _258 = _243 * 0.060606062f;
    _259 = _250 * 0.060606062f;
    _260 = _257 * 0.060606062f;
    _261 = _258 * _258;
    _262 = _259 * _259;
    _263 = _260 * _260;
    _279 = min(0.0f, (-0.0f - (((_243 * 0.0072181816f) + ((_261 * 0.4298f) + (((_261 * _261) * ((31.96f - (_243 * 2.4327273f)) + (_261 * 15.5f))) - ((_243 * 0.41624245f) * _261)))) + -0.00232f)));
    _295 = min(0.0f, (-0.0f - (((_250 * 0.0072181816f) + ((_262 * 0.4298f) + (((_262 * _262) * ((31.96f - (_250 * 2.4327273f)) + (_262 * 15.5f))) - ((_250 * 0.41624245f) * _262)))) + -0.00232f)));
    _311 = min(0.0f, (-0.0f - (((_257 * 0.0072181816f) + ((_263 * 0.4298f) + (((_263 * _263) * ((31.96f - (_257 * 2.4327273f)) + (_263 * 15.5f))) - ((_257 * 0.41624245f) * _263)))) + -0.00232f)));
    _312 = -0.0f - _279;
    _313 = -0.0f - _295;
    _314 = -0.0f - _311;
    _315 = dot(float3(_312, _313, _314), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _332 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _333 = -0.79999995f / _332;
      _334 = -1.2f / _332;
      _335 = 0.20000005f / _332;
      _338 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _341 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _345 = (_333 + 1.4f) + (_341 * (-0.39999998f - _333));
      _349 = (_334 + 1.6f) + (_341 * (-0.6f - _334));
      _353 = (_335 + 0.9f) + (_341 * (0.5f - _335));
      _370 = (lerp(_349, 1.2f, _338));  // [sem: blended]
      _371 = (lerp(_345, 1.0f, _338));  // [sem: blended]
      _372 = (lerp(_353, 1.4f, _338));  // [sem: blended]
    } else {
      _370 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _371 = 1.0f;  // [sem: blended]
      _372 = 1.4f;  // [sem: blended]
    }
    _373 = 1.0f - _370;
    _385 = ((exp2(log2(((saturate((_279 * _279) * _312) * _373) + _370) * _312) * _371) - _315) * _372) + _315;
    _397 = ((exp2(log2(((saturate((_295 * _295) * _313) * _373) + _370) * _313) * _371) - _315) * _372) + _315;
    _409 = ((exp2(log2(((saturate((_311 * _311) * _314) * _373) + _370) * _314) * _371) - _315) * _372) + _315;
    _416 = saturate(exp2(log2(mad(_409, -0.09902974f, mad(_397, -0.09802088f, (_385 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _423 = saturate(exp2(log2(mad(_409, -0.098961174f, mad(_397, 1.1519032f, (_385 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _430 = saturate(exp2(log2(mad(_409, 1.1510737f, mad(_397, -0.09804345f, (_385 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _436 = 1.0f - abs(_etcParams.w);
      _437 = saturate(_etcParams.w);  // [sem: expr_sat]
      _439 = (_436 * _416) + _437;
      _441 = (_436 * _423) + _437;
      _443 = (_436 * _430) + _437;
      if (_colorGradingParams.w > 0.0f) {
        _448 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _465 = (((max(0.0f, (1.0f - _439)) - _439) * _448) + _439);
        _466 = (((max(0.0f, (1.0f - _441)) - _441) * _448) + _441);
        _467 = (((max(0.0f, (1.0f - _443)) - _443) * _448) + _443);
      } else {
        _465 = _439;
        _466 = _441;
        _467 = _443;
      }
      _469 = _userImageAdjust.y + 1.0f;
      _471 = _userImageAdjust.x + 0.5f;
      _474 = ((_465 + -0.5f) * _469) + _471;
      _477 = ((_466 + -0.5f) * _469) + _471;
      _480 = ((_467 + -0.5f) * _469) + _471;
      _486 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _521 = exp2(log2(saturate(mad(_colorBlind0.z, _480, mad(_colorBlind0.y, _477, (_colorBlind0.x * _474))))) * _486);
      _522 = exp2(log2(saturate(mad(_colorBlind1.z, _480, mad(_colorBlind1.y, _477, (_colorBlind1.x * _474))))) * _486);
      _523 = exp2(log2(saturate(mad(_colorBlind2.z, _480, mad(_colorBlind2.y, _477, (_colorBlind2.x * _474))))) * _486);
    } else {
      _521 = _416;
      _522 = _423;
      _523 = _430;
    }
  } else {
    _521 = _146;
    _522 = _147;
    _523 = _148;
  }
  if (_etcParams.y > 1.0f) {
    _526 = abs(_27);
    _528 = abs(_28 + -1.0f);
    _534 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_526, _528), float2(_526, _528))));  // [sem: expr_sat]
    _539 = (_534 * _521);
    _540 = (_534 * _522);
    _541 = (_534 * _523);
  } else {
    _539 = _521;
    _540 = _522;
    _541 = _523;
  }
  if (_168 && (_etcParams.z > 0.0f)) {
    _571 = select((_539 <= 0.0031308f), (_539 * 12.92f), (((pow(_539, 0.41666666f)) * 1.055f) + -0.055f));
    _572 = select((_540 <= 0.0031308f), (_540 * 12.92f), (((pow(_540, 0.41666666f)) * 1.055f) + -0.055f));
    _573 = select((_541 <= 0.0031308f), (_541 * 12.92f), (((pow(_541, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _571 = _539;
    _572 = _540;
    _573 = _541;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _576 = (float)((uint)((uint)(_149)));
    if (!(_576 < _viewDir.w)) {
      if (!(!(_576 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _587 = 0.0f;
        _588 = 0.0f;
        _589 = 0.0f;
      } else {
        _587 = _571;
        _588 = _572;
        _589 = _573;
      }
    } else {
      _587 = 0.0f;
      _588 = 0.0f;
      _589 = 0.0f;
    }
  } else {
    _587 = _571;
    _588 = _572;
    _589 = _573;
  }
  SV_Target.x = _587;
  SV_Target.y = _588;
  SV_Target.z = _589;
  SV_Target.w = _165;
  return SV_Target;
}
