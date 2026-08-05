struct PostProcessOutlineStruct {
  float _outlineColorR;
  float _outlineColorG;
  float _outlineColorB;
};

struct BindlessParameters_PostProcessOutline {
  PostProcessOutlineStruct BindlessParameters_PostProcessOutline;
};


Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

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

typedef BindlessParameters_PostProcessOutline BindlessParameters_PostProcessOutline_t;
ConstantBuffer<BindlessParameters_PostProcessOutline_t> BindlessParameters_PostProcessOutline[] : register(b0, space100);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  uint2 _18;
  float _81;
  float _82;
  float _83;
  float _97;
  float _302;
  float _303;
  float _304;
  float _397;
  float _398;
  float _399;
  float _453;
  float _454;
  float _455;
  float _474;
  float _475;
  float _476;
  float _506;
  float _507;
  float _508;
  float _522;
  float _523;
  float _524;
  int _49;
  float _57;
  int _60;
  float _68;
  int _71;
  float _79;
  uint _84;
  bool _100;
  float _106;
  float _125;
  float _141;
  float _157;
  float _158;
  float _162;
  float _165;
  float _168;
  float _175;
  float _182;
  float _189;
  float _190;
  float _191;
  float _192;
  float _193;
  float _194;
  float _195;
  float _211;
  float _227;
  float _243;
  float _244;
  float _245;
  float _246;
  float _247;
  float _264;
  float _265;
  float _266;
  float _267;
  float _270;
  float _273;
  float _277;
  float _281;
  float _285;
  float _305;
  float _317;
  float _329;
  float _341;
  float _348;
  float _355;
  float _362;
  float _368;
  float _369;
  float _371;
  float _373;
  float _375;
  float _380;
  float _401;
  float _403;
  float _406;
  float _409;
  float _412;
  float _418;
  float _460;
  float _463;
  float _469;
  float _511;
  float _528;
  float _532;
  float _536;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_18.x, _18.y);
  if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_18.x))))))) + 0.5f) * ((float)((int)((int)(_bufferSizeAndInvSize.x * TEXCOORD.x)))))), ((int)(((float)((int)((int)(_bufferSizeAndInvSize.y * TEXCOORD.y)))) * (((float)((int)((int)((float)((int)((int)(_18.y))))))) + 0.5f))), 0)))).x) & 255) == 30) {
    _49 = WaveReadLaneFirst(_materialIndex);
    _57 = WaveReadLaneFirst(BindlessParameters_PostProcessOutline[((int)((uint)((uint)(select(((uint)_49 < (uint)170000), _49, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutline._outlineColorR);
    _60 = WaveReadLaneFirst(_materialIndex);
    _68 = WaveReadLaneFirst(BindlessParameters_PostProcessOutline[((int)((uint)((uint)(select(((uint)_60 < (uint)170000), _60, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutline._outlineColorB);
    _71 = WaveReadLaneFirst(_materialIndex);
    _79 = WaveReadLaneFirst(BindlessParameters_PostProcessOutline[((int)((uint)((uint)(select(((uint)_71 < (uint)170000), _71, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutline._outlineColorG);
    _81 = _79;
    _82 = _68;
    _83 = _57;
  } else {
    _81 = 0.0f;
    _82 = 0.0f;
    _83 = 0.0f;
  }
  _84 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _97 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _84, 0)))).x) & 127)))) + 0.5f);
  } else {
    _97 = 1.0f;
  }
  _100 = (_localToneMappingParams.w > 0.0f);
  if (_100) {
    _106 = _exposure0.x * _userImageAdjust.z;
    _125 = exp2(_powerParams.x * log2(max(0.0f, (((_106 * max(0.0f, (((_82 * -0.62179f) - (_81 * 0.08326f)) + (_83 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _141 = exp2(log2(max(0.0f, (((_slopeParams.y * _106) * max(0.0f, (((_82 * 1.1408f) - (_81 * 0.01055f)) - (_83 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _157 = exp2(log2(max(0.0f, (((_slopeParams.z * _106) * max(0.0f, (((_81 * 1.15297f) - (_82 * 0.12897f)) - (_83 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _158 = dot(float3(_125, _141, _157), float3(0.212671f, 0.71516f, 0.072169f));
    _162 = ((_125 - _158) * _powerParams.w) + _158;
    _165 = ((_141 - _158) * _powerParams.w) + _158;
    _168 = ((_157 - _158) * _powerParams.w) + _158;
    _175 = min(max(log2(mad(_168, 0.079223745f, mad(_165, 0.0784336f, (_162 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _182 = min(max(log2(mad(_168, 0.07916613f, mad(_165, 0.87846863f, (_162 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _189 = min(max(log2(mad(_168, 0.879143f, mad(_165, 0.0784336f, (_162 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _190 = _175 * 0.060606062f;
    _191 = _182 * 0.060606062f;
    _192 = _189 * 0.060606062f;
    _193 = _190 * _190;
    _194 = _191 * _191;
    _195 = _192 * _192;
    _211 = min(0.0f, (-0.0f - (((_175 * 0.0072181816f) + ((_193 * 0.4298f) + (((_193 * _193) * ((31.96f - (_175 * 2.4327273f)) + (_193 * 15.5f))) - ((_175 * 0.41624245f) * _193)))) + -0.00232f)));
    _227 = min(0.0f, (-0.0f - (((_182 * 0.0072181816f) + ((_194 * 0.4298f) + (((_194 * _194) * ((31.96f - (_182 * 2.4327273f)) + (_194 * 15.5f))) - ((_182 * 0.41624245f) * _194)))) + -0.00232f)));
    _243 = min(0.0f, (-0.0f - (((_189 * 0.0072181816f) + ((_195 * 0.4298f) + (((_195 * _195) * ((31.96f - (_189 * 2.4327273f)) + (_195 * 15.5f))) - ((_189 * 0.41624245f) * _195)))) + -0.00232f)));
    _244 = -0.0f - _211;
    _245 = -0.0f - _227;
    _246 = -0.0f - _243;
    _247 = dot(float3(_244, _245, _246), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _264 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _265 = -0.79999995f / _264;
      _266 = -1.2f / _264;
      _267 = 0.20000005f / _264;
      _270 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _273 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _277 = (_265 + 1.4f) + (_273 * (-0.39999998f - _265));
      _281 = (_266 + 1.6f) + (_273 * (-0.6f - _266));
      _285 = (_267 + 0.9f) + (_273 * (0.5f - _267));
      _302 = (lerp(_285, 1.4f, _270));  // [sem: blended]
      _303 = (lerp(_277, 1.0f, _270));  // [sem: blended]
      _304 = (lerp(_281, 1.2f, _270));  // [sem: blended]
    } else {
      _302 = 1.4f;  // [sem: blended]
      _303 = 1.0f;  // [sem: blended]
      _304 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _305 = 1.0f - _304;
    _317 = ((exp2(log2(((saturate((_211 * _211) * _244) * _305) + _304) * _244) * _303) - _247) * _302) + _247;
    _329 = ((exp2(log2(((saturate((_227 * _227) * _245) * _305) + _304) * _245) * _303) - _247) * _302) + _247;
    _341 = ((exp2(log2(((saturate((_243 * _243) * _246) * _305) + _304) * _246) * _303) - _247) * _302) + _247;
    _348 = saturate(exp2(log2(mad(_341, -0.09902974f, mad(_329, -0.09802088f, (_317 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _355 = saturate(exp2(log2(mad(_341, -0.098961174f, mad(_329, 1.1519032f, (_317 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _362 = saturate(exp2(log2(mad(_341, 1.1510737f, mad(_329, -0.09804345f, (_317 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _368 = 1.0f - abs(_etcParams.w);
      _369 = saturate(_etcParams.w);  // [sem: expr_sat]
      _371 = (_368 * _348) + _369;
      _373 = (_368 * _355) + _369;
      _375 = (_368 * _362) + _369;
      if (_colorGradingParams.w > 0.0f) {
        _380 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _397 = (((max(0.0f, (1.0f - _375)) - _375) * _380) + _375);
        _398 = (((max(0.0f, (1.0f - _373)) - _373) * _380) + _373);
        _399 = (((max(0.0f, (1.0f - _371)) - _371) * _380) + _371);
      } else {
        _397 = _375;
        _398 = _373;
        _399 = _371;
      }
      _401 = _userImageAdjust.y + 1.0f;
      _403 = _userImageAdjust.x + 0.5f;
      _406 = ((_399 + -0.5f) * _401) + _403;
      _409 = ((_398 + -0.5f) * _401) + _403;
      _412 = ((_397 + -0.5f) * _401) + _403;
      _418 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _453 = exp2(log2(saturate(mad(_colorBlind2.z, _412, mad(_colorBlind2.y, _409, (_colorBlind2.x * _406))))) * _418);
      _454 = exp2(log2(saturate(mad(_colorBlind1.z, _412, mad(_colorBlind1.y, _409, (_colorBlind1.x * _406))))) * _418);
      _455 = exp2(log2(saturate(mad(_colorBlind0.z, _412, mad(_colorBlind0.y, _409, (_colorBlind0.x * _406))))) * _418);
    } else {
      _453 = _362;
      _454 = _355;
      _455 = _348;
    }
  } else {
    _453 = _81;
    _454 = _82;
    _455 = _83;
  }
  if (_etcParams.y > 1.0f) {
    _460 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _463 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _469 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_460, _463), float2(_460, _463))));  // [sem: expr_sat]
    _474 = (_469 * _453);
    _475 = (_469 * _454);
    _476 = (_469 * _455);
  } else {
    _474 = _453;
    _475 = _454;
    _476 = _455;
  }
  if (_100 && (_etcParams.z > 0.0f)) {
    _506 = select((_474 <= 0.0031308f), (_474 * 12.92f), (((pow(_474, 0.41666666f)) * 1.055f) + -0.055f));
    _507 = select((_475 <= 0.0031308f), (_475 * 12.92f), (((pow(_475, 0.41666666f)) * 1.055f) + -0.055f));
    _508 = select((_476 <= 0.0031308f), (_476 * 12.92f), (((pow(_476, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _506 = _474;
    _507 = _475;
    _508 = _476;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _511 = (float)((uint)((uint)(_84)));
    if (!(_511 < _viewDir.w)) {
      if (!(!(_511 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _522 = 0.0f;
        _523 = 0.0f;
        _524 = 0.0f;
      } else {
        _522 = _508;
        _523 = _507;
        _524 = _506;
      }
    } else {
      _522 = 0.0f;
      _523 = 0.0f;
      _524 = 0.0f;
    }
  } else {
    _522 = _508;
    _523 = _507;
    _524 = _506;
  }
  _528 = exp2(log2(_522 * 0.0001f) * 0.15930176f);
  _532 = exp2(log2(_523 * 0.0001f) * 0.15930176f);
  _536 = exp2(log2(_524 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_528 * 18.6875f) + 1.0f)) * ((_528 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_532 * 18.6875f) + 1.0f)) * ((_532 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_536 * 18.6875f) + 1.0f)) * ((_536 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _97;
  return SV_Target;
}
