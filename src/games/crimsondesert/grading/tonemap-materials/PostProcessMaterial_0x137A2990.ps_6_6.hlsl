struct PostProcessGrayscaleStruct {
  float _ratio;
};

struct BindlessParameters_PostProcessGrayscale {
  PostProcessGrayscaleStruct BindlessParameters_PostProcessGrayscale;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

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
  float4 _19;
  int _25;
  float _33;
  float _34;
  float _37;
  float _40;
  float _43;
  uint _44;
  float _61;
  float _266;
  float _267;
  float _268;
  float _361;
  float _362;
  float _363;
  float _417;
  float _418;
  float _419;
  float _438;
  float _439;
  float _440;
  float _470;
  float _471;
  float _472;
  float _486;
  float _487;
  float _488;
  bool _64;
  float _70;
  float _89;
  float _105;
  float _121;
  float _122;
  float _126;
  float _129;
  float _132;
  float _139;
  float _146;
  float _153;
  float _154;
  float _155;
  float _156;
  float _157;
  float _158;
  float _159;
  float _175;
  float _191;
  float _207;
  float _208;
  float _209;
  float _210;
  float _211;
  float _228;
  float _229;
  float _230;
  float _231;
  float _234;
  float _237;
  float _241;
  float _245;
  float _249;
  float _269;
  float _281;
  float _293;
  float _305;
  float _312;
  float _319;
  float _326;
  float _332;
  float _333;
  float _335;
  float _337;
  float _339;
  float _344;
  float _365;
  float _367;
  float _370;
  float _373;
  float _376;
  float _382;
  float _424;
  float _427;
  float _433;
  float _475;
  _19 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _25 = WaveReadLaneFirst(_materialIndex);
  _33 = WaveReadLaneFirst(BindlessParameters_PostProcessGrayscale[((int)((uint)((uint)(select(((uint)_25 < (uint)170000), _25, 0))) + (uint)(0)))].BindlessParameters_PostProcessGrayscale._ratio);
  _34 = dot(float3(_19.x, _19.y, _19.z), float3(0.2627f, 0.678f, 0.0593f));
  _37 = ((_34 - _19.x) * _33) + _19.x;
  _40 = ((_34 - _19.y) * _33) + _19.y;
  _43 = ((_34 - _19.z) * _33) + _19.z;
  _44 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _61 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _44, 0)))).x) & 127)))) + 0.5f);
  } else {
    _61 = _postProcessParams.x;
  }
  _64 = (_localToneMappingParams.w > 0.0f);
  if (_64) {
    _70 = _exposure0.x * _userImageAdjust.z;
    _89 = exp2(_powerParams.x * log2(max(0.0f, (((_70 * max(0.0f, (((_37 * 1.70505f) - (_40 * 0.62179f)) - (_43 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _105 = exp2(log2(max(0.0f, (((_slopeParams.y * _70) * max(0.0f, (((_40 * 1.1408f) - (_37 * 0.13026f)) - (_43 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _121 = exp2(log2(max(0.0f, (((_slopeParams.z * _70) * max(0.0f, (((_37 * -0.024f) - (_40 * 0.12897f)) + (_43 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _122 = dot(float3(_89, _105, _121), float3(0.212671f, 0.71516f, 0.072169f));
    _126 = ((_89 - _122) * _powerParams.w) + _122;
    _129 = ((_105 - _122) * _powerParams.w) + _122;
    _132 = ((_121 - _122) * _powerParams.w) + _122;
    _139 = min(max(log2(mad(_132, 0.079223745f, mad(_129, 0.0784336f, (_126 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _146 = min(max(log2(mad(_132, 0.07916613f, mad(_129, 0.87846863f, (_126 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _153 = min(max(log2(mad(_132, 0.879143f, mad(_129, 0.0784336f, (_126 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _154 = _139 * 0.060606062f;
    _155 = _146 * 0.060606062f;
    _156 = _153 * 0.060606062f;
    _157 = _154 * _154;
    _158 = _155 * _155;
    _159 = _156 * _156;
    _175 = min(0.0f, (-0.0f - (((_139 * 0.0072181816f) + ((_157 * 0.4298f) + (((_157 * _157) * ((31.96f - (_139 * 2.4327273f)) + (_157 * 15.5f))) - ((_139 * 0.41624245f) * _157)))) + -0.00232f)));
    _191 = min(0.0f, (-0.0f - (((_146 * 0.0072181816f) + ((_158 * 0.4298f) + (((_158 * _158) * ((31.96f - (_146 * 2.4327273f)) + (_158 * 15.5f))) - ((_146 * 0.41624245f) * _158)))) + -0.00232f)));
    _207 = min(0.0f, (-0.0f - (((_153 * 0.0072181816f) + ((_159 * 0.4298f) + (((_159 * _159) * ((31.96f - (_153 * 2.4327273f)) + (_159 * 15.5f))) - ((_153 * 0.41624245f) * _159)))) + -0.00232f)));
    _208 = -0.0f - _175;
    _209 = -0.0f - _191;
    _210 = -0.0f - _207;
    _211 = dot(float3(_208, _209, _210), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _228 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _229 = -0.79999995f / _228;
      _230 = -1.2f / _228;
      _231 = 0.20000005f / _228;
      _234 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _237 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _241 = (_229 + 1.4f) + (_237 * (-0.39999998f - _229));
      _245 = (_230 + 1.6f) + (_237 * (-0.6f - _230));
      _249 = (_231 + 0.9f) + (_237 * (0.5f - _231));
      _266 = (lerp(_249, 1.4f, _234));  // [sem: blended]
      _267 = (lerp(_241, 1.0f, _234));  // [sem: blended]
      _268 = (lerp(_245, 1.2f, _234));  // [sem: blended]
    } else {
      _266 = 1.4f;  // [sem: blended]
      _267 = 1.0f;  // [sem: blended]
      _268 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _269 = 1.0f - _268;
    _281 = ((exp2(log2(((saturate((_175 * _175) * _208) * _269) + _268) * _208) * _267) - _211) * _266) + _211;
    _293 = ((exp2(log2(((saturate((_191 * _191) * _209) * _269) + _268) * _209) * _267) - _211) * _266) + _211;
    _305 = ((exp2(log2(((saturate((_207 * _207) * _210) * _269) + _268) * _210) * _267) - _211) * _266) + _211;
    _312 = saturate(exp2(log2(mad(_305, -0.09902974f, mad(_293, -0.09802088f, (_281 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _319 = saturate(exp2(log2(mad(_305, -0.098961174f, mad(_293, 1.1519032f, (_281 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _326 = saturate(exp2(log2(mad(_305, 1.1510737f, mad(_293, -0.09804345f, (_281 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _332 = 1.0f - abs(_etcParams.w);
      _333 = saturate(_etcParams.w);  // [sem: expr_sat]
      _335 = (_332 * _312) + _333;
      _337 = (_332 * _319) + _333;
      _339 = (_332 * _326) + _333;
      if (_colorGradingParams.w > 0.0f) {
        _344 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _361 = (((max(0.0f, (1.0f - _339)) - _339) * _344) + _339);
        _362 = (((max(0.0f, (1.0f - _337)) - _337) * _344) + _337);
        _363 = (((max(0.0f, (1.0f - _335)) - _335) * _344) + _335);
      } else {
        _361 = _339;
        _362 = _337;
        _363 = _335;
      }
      _365 = _userImageAdjust.y + 1.0f;
      _367 = _userImageAdjust.x + 0.5f;
      _370 = ((_363 + -0.5f) * _365) + _367;
      _373 = ((_362 + -0.5f) * _365) + _367;
      _376 = ((_361 + -0.5f) * _365) + _367;
      _382 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _417 = exp2(log2(saturate(mad(_colorBlind1.z, _376, mad(_colorBlind1.y, _373, (_colorBlind1.x * _370))))) * _382);
      _418 = exp2(log2(saturate(mad(_colorBlind0.z, _376, mad(_colorBlind0.y, _373, (_colorBlind0.x * _370))))) * _382);
      _419 = exp2(log2(saturate(mad(_colorBlind2.z, _376, mad(_colorBlind2.y, _373, (_colorBlind2.x * _370))))) * _382);
    } else {
      _417 = _319;
      _418 = _312;
      _419 = _326;
    }
  } else {
    _417 = _40;
    _418 = _37;
    _419 = _43;
  }
  if (_etcParams.y > 1.0f) {
    _424 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _427 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _433 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_424, _427), float2(_424, _427))));  // [sem: expr_sat]
    _438 = (_433 * _418);
    _439 = (_433 * _417);
    _440 = (_433 * _419);
  } else {
    _438 = _418;
    _439 = _417;
    _440 = _419;
  }
  if (_64 && (_etcParams.z > 0.0f)) {
    _470 = select((_438 <= 0.0031308f), (_438 * 12.92f), (((pow(_438, 0.41666666f)) * 1.055f) + -0.055f));
    _471 = select((_439 <= 0.0031308f), (_439 * 12.92f), (((pow(_439, 0.41666666f)) * 1.055f) + -0.055f));
    _472 = select((_440 <= 0.0031308f), (_440 * 12.92f), (((pow(_440, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _470 = _438;
    _471 = _439;
    _472 = _440;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _475 = (float)((uint)((uint)(_44)));
    if (!(_475 < _viewDir.w)) {
      if (!(!(_475 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _486 = 0.0f;
        _487 = 0.0f;
        _488 = 0.0f;
      } else {
        _486 = _470;
        _487 = _471;
        _488 = _472;
      }
    } else {
      _486 = 0.0f;
      _487 = 0.0f;
      _488 = 0.0f;
    }
  } else {
    _486 = _470;
    _487 = _471;
    _488 = _472;
  }
  SV_Target.x = _486;
  SV_Target.y = _487;
  SV_Target.z = _488;
  SV_Target.w = _61;
  return SV_Target;
}
