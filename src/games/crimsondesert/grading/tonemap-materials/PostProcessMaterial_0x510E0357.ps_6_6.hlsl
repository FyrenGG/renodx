struct PostProcessGrayscaleStruct {
  float _ratio;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

struct BindlessParameters_PostProcessGrayscale {
  PostProcessGrayscaleStruct BindlessParameters_PostProcessGrayscale;
};

typedef BindlessParameters_PostProcessGrayscale BindlessParameters_PostProcessGrayscale_t;
ConstantBuffer<BindlessParameters_PostProcessGrayscale_t> BindlessParameters_PostProcessGrayscale[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _23;
  int _27;
  float _35;
  float _36;
  float _43;
  float _44;
  float _45;
  uint _46;
  float _60;
  float _265;
  float _266;
  float _267;
  float _360;
  float _361;
  float _362;
  float _416;
  float _417;
  float _418;
  float _437;
  float _438;
  float _439;
  float _469;
  float _470;
  float _471;
  float _485;
  float _486;
  float _487;
  bool _63;
  float _69;
  float _118;
  float _119;
  float _120;
  float _122;
  float _129;
  float _130;
  float _131;
  float _150;
  float _151;
  float _152;
  float _153;
  float _154;
  float _155;
  float _156;
  float _157;
  float _158;
  float _204;
  float _205;
  float _206;
  float _207;
  float _208;
  float _209;
  float _210;
  float _227;
  float _228;
  float _229;
  float _230;
  float _236;
  float _239;
  float _246;
  float _247;
  float _248;
  float _277;
  float _302;
  float _303;
  float _304;
  float _323;
  float _324;
  float _325;
  float _331;
  float _335;
  float _336;
  float _337;
  float _338;
  float _343;
  float _368;
  float _372;
  float _373;
  float _374;
  float _375;
  float _405;
  float _427;
  float _428;
  float _432;
  float _476;
  _23 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _27 = WaveReadLaneFirst(_materialIndex);
  _35 = WaveReadLaneFirst(BindlessParameters_PostProcessGrayscale[((int)((uint)((uint)(select(((uint)_27 < (uint)170000), _27, 0))) + (uint)(0)))].BindlessParameters_PostProcessGrayscale._ratio);
  _36 = dot(float3(_23.x, _23.y, _23.z), float3(0.2627f, 0.678f, 0.0593f));
  _43 = ((_36 - _23.x) * _35) + _23.x;
  _44 = ((_36 - _23.y) * _35) + _23.y;
  _45 = ((_36 - _23.z) * _35) + _23.z;
  _46 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _60 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _46, 0)))).x) & 127)))) + 0.5f);
  } else {
    _60 = _postProcessParams.x;
  }
  _63 = (_localToneMappingParams.w > 0.0f);
  if (_63) {
    _69 = _userImageAdjust.z * _exposure0.x;
    _118 = exp2(log2(max(0.0f, (((_69 * max(0.0f, (((_43 * 1.70505f) - (_44 * 0.62179f)) - (_45 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _119 = exp2(log2(max(0.0f, (((max(0.0f, (((_44 * 1.1408f) - (_43 * 0.13026f)) - (_45 * 0.01055f))) * _69) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _120 = exp2(log2(max(0.0f, (((max(0.0f, (((_43 * -0.024f) - (_44 * 0.12897f)) + (_45 * 1.15297f))) * _69) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _122 = dot(float3(_118, _119, _120), float3(0.212671f, 0.71516f, 0.072169f));
    _129 = ((_118 - _122) * _powerParams.w) + _122;
    _130 = ((_119 - _122) * _powerParams.w) + _122;
    _131 = ((_120 - _122) * _powerParams.w) + _122;
    _150 = min(max(log2(mad(_131, 0.079223745f, mad(_130, 0.0784336f, (_129 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _151 = min(max(log2(mad(_131, 0.07916613f, mad(_130, 0.87846863f, (_129 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _152 = min(max(log2(mad(_131, 0.879143f, mad(_130, 0.0784336f, (_129 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _153 = _150 * 0.060606062f;
    _154 = _151 * 0.060606062f;
    _155 = _152 * 0.060606062f;
    _156 = _153 * _153;
    _157 = _154 * _154;
    _158 = _155 * _155;
    _204 = min(0.0f, (-0.0f - (((_150 * 0.0072181816f) + ((_156 * 0.4298f) + (((_156 * _156) * ((31.96f - (_150 * 2.4327273f)) + (_156 * 15.5f))) - ((_150 * 0.41624245f) * _156)))) + -0.00232f)));
    _205 = min(0.0f, (-0.0f - (((_151 * 0.0072181816f) + ((_157 * 0.4298f) + (((_157 * _157) * ((31.96f - (_151 * 2.4327273f)) + (_157 * 15.5f))) - ((_151 * 0.41624245f) * _157)))) + -0.00232f)));
    _206 = min(0.0f, (-0.0f - (((_152 * 0.0072181816f) + ((_158 * 0.4298f) + (((_158 * _158) * ((31.96f - (_152 * 2.4327273f)) + (_158 * 15.5f))) - ((_152 * 0.41624245f) * _158)))) + -0.00232f)));
    _207 = -0.0f - _204;
    _208 = -0.0f - _205;
    _209 = -0.0f - _206;
    _210 = dot(float3(_207, _208, _209), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _227 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _228 = -0.79999995f / _227;
      _229 = -1.2f / _227;
      _230 = 0.20000005f / _227;
      _236 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _239 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _246 = (_228 + 1.4f) + (_239 * (-0.39999998f - _228));
      _247 = (_229 + 1.6f) + (_239 * (-0.6f - _229));
      _248 = (_230 + 0.9f) + (_239 * (0.5f - _230));
      _265 = (lerp(_247, 1.2f, _236));  // [sem: blended]
      _266 = (lerp(_246, 1.0f, _236));  // [sem: blended]
      _267 = (lerp(_248, 1.4f, _236));  // [sem: blended]
    } else {
      _265 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _266 = 1.0f;  // [sem: blended]
      _267 = 1.4f;  // [sem: blended]
    }
    _277 = 1.0f - _265;
    _302 = ((exp2(log2(((saturate((_204 * _204) * _207) * _277) + _265) * _207) * _266) - _210) * _267) + _210;
    _303 = ((exp2(log2(((saturate((_205 * _205) * _208) * _277) + _265) * _208) * _266) - _210) * _267) + _210;
    _304 = ((exp2(log2(((saturate((_206 * _206) * _209) * _277) + _265) * _209) * _266) - _210) * _267) + _210;
    _323 = saturate(exp2(log2(mad(_304, -0.09902974f, mad(_303, -0.09802088f, (_302 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _324 = saturate(exp2(log2(mad(_304, -0.098961174f, mad(_303, 1.1519032f, (_302 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _325 = saturate(exp2(log2(mad(_304, 1.1510737f, mad(_303, -0.09804345f, (_302 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _331 = 1.0f - abs(_etcParams.w);
      _335 = saturate(_etcParams.w);  // [sem: expr_sat]
      _336 = (_331 * _323) + _335;
      _337 = (_331 * _324) + _335;
      _338 = (_331 * _325) + _335;
      if (_colorGradingParams.w > 0.0f) {
        _343 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _360 = (((max(0.0f, (1.0f - _336)) - _336) * _343) + _336);
        _361 = (((max(0.0f, (1.0f - _337)) - _337) * _343) + _337);
        _362 = (((max(0.0f, (1.0f - _338)) - _338) * _343) + _338);
      } else {
        _360 = _336;
        _361 = _337;
        _362 = _338;
      }
      _368 = _userImageAdjust.y + 1.0f;
      _372 = _userImageAdjust.x + 0.5f;
      _373 = ((_360 + -0.5f) * _368) + _372;
      _374 = ((_361 + -0.5f) * _368) + _372;
      _375 = ((_362 + -0.5f) * _368) + _372;
      _405 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _416 = exp2(log2(saturate(mad(_colorBlind0.z, _375, mad(_colorBlind0.y, _374, (_colorBlind0.x * _373))))) * _405);
      _417 = exp2(log2(saturate(mad(_colorBlind1.z, _375, mad(_colorBlind1.y, _374, (_colorBlind1.x * _373))))) * _405);
      _418 = exp2(log2(saturate(mad(_colorBlind2.z, _375, mad(_colorBlind2.y, _374, (_colorBlind2.x * _373))))) * _405);
    } else {
      _416 = _323;
      _417 = _324;
      _418 = _325;
    }
  } else {
    _416 = _43;
    _417 = _44;
    _418 = _45;
  }
  if (_etcParams.y > 1.0f) {
    _427 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _428 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _432 = saturate(1.0f - (dot(float2(_427, _428), float2(_427, _428)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _437 = (_432 * _416);
    _438 = (_432 * _417);
    _439 = (_432 * _418);
  } else {
    _437 = _416;
    _438 = _417;
    _439 = _418;
  }
  if (_63 && (_etcParams.z > 0.0f)) {
    _469 = select((_437 <= 0.0031308f), (_437 * 12.92f), (((pow(_437, 0.41666666f)) * 1.055f) + -0.055f));
    _470 = select((_438 <= 0.0031308f), (_438 * 12.92f), (((pow(_438, 0.41666666f)) * 1.055f) + -0.055f));
    _471 = select((_439 <= 0.0031308f), (_439 * 12.92f), (((pow(_439, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _469 = _437;
    _470 = _438;
    _471 = _439;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _476 = (float)((uint)((uint)(_46)));
    if (!(_476 < _viewDir.w)) {
      if (!(_476 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _485 = _469;
        _486 = _470;
        _487 = _471;
      } else {
        _485 = 0.0f;
        _486 = 0.0f;
        _487 = 0.0f;
      }
    } else {
      _485 = 0.0f;
      _486 = 0.0f;
      _487 = 0.0f;
    }
  } else {
    _485 = _469;
    _486 = _470;
    _487 = _471;
  }
  SV_Target.x = _485;
  SV_Target.y = _486;
  SV_Target.z = _487;
  SV_Target.w = _60;
  return SV_Target;
}
