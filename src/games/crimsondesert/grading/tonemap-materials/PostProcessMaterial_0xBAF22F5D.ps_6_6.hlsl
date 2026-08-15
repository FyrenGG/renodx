Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t71, space36);

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
  float4 _21;
  float _37;
  float _38;
  uint2 _40;
  float _83;
  float _84;
  float _85;
  float _99;
  float _304;
  float _305;
  float _306;
  float _399;
  float _400;
  float _401;
  float _455;
  float _456;
  float _457;
  float _476;
  float _477;
  float _478;
  float _508;
  float _509;
  float _510;
  float _524;
  float _525;
  float _526;
  float _81;
  uint _86;
  bool _102;
  float _108;
  float _157;
  float _158;
  float _159;
  float _161;
  float _168;
  float _169;
  float _170;
  float _189;
  float _190;
  float _191;
  float _192;
  float _193;
  float _194;
  float _195;
  float _196;
  float _197;
  float _243;
  float _244;
  float _245;
  float _246;
  float _247;
  float _248;
  float _249;
  float _266;
  float _267;
  float _268;
  float _269;
  float _275;
  float _278;
  float _285;
  float _286;
  float _287;
  float _316;
  float _341;
  float _342;
  float _343;
  float _362;
  float _363;
  float _364;
  float _370;
  float _374;
  float _375;
  float _376;
  float _377;
  float _382;
  float _407;
  float _411;
  float _412;
  float _413;
  float _414;
  float _444;
  float _466;
  float _467;
  float _471;
  float _515;
  _21 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _37 = (float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(TEXCOORD.x))));
  _38 = (float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(TEXCOORD.y))));
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_40.x, _40.y);
  if (!(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_40.x))))))) + 0.5f) * _37)), ((int)((((float)((int)((int)((float)((int)((int)(_40.y))))))) + 0.5f) * _38)), 0)))).x) & 255) == 0)) {
    // [sem: expr_sat]
    _81 = saturate(ceil((0.1f - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_37 * _customRenderPassSizeInvSize.x)), ((int)(_38 * _customRenderPassSizeInvSize.y)), 0)))).x)))) + (_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x)))));
    _83 = _81;
    _84 = _81;
    _85 = _81;
  } else {
    _83 = _21.x;
    _84 = _21.y;
    _85 = _21.z;
  }
  _86 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _99 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _86, 0)))).x) & 127)))) + 0.5f);
  } else {
    _99 = 1.0f;
  }
  _102 = (_localToneMappingParams.w > 0.0f);
  if (_102) {
    _108 = _userImageAdjust.z * _exposure0.x;
    _157 = exp2(log2(max(0.0f, (((_108 * max(0.0f, (((_83 * 1.70505f) - (_84 * 0.62179f)) - (_85 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _158 = exp2(log2(max(0.0f, (((max(0.0f, (((_84 * 1.1408f) - (_83 * 0.13026f)) - (_85 * 0.01055f))) * _108) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _159 = exp2(log2(max(0.0f, (((max(0.0f, (((_83 * -0.024f) - (_84 * 0.12897f)) + (_85 * 1.15297f))) * _108) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _161 = dot(float3(_157, _158, _159), float3(0.212671f, 0.71516f, 0.072169f));
    _168 = ((_157 - _161) * _powerParams.w) + _161;
    _169 = ((_158 - _161) * _powerParams.w) + _161;
    _170 = ((_159 - _161) * _powerParams.w) + _161;
    _189 = min(max(log2(mad(_170, 0.079223745f, mad(_169, 0.0784336f, (_168 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _190 = min(max(log2(mad(_170, 0.07916613f, mad(_169, 0.87846863f, (_168 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _191 = min(max(log2(mad(_170, 0.879143f, mad(_169, 0.0784336f, (_168 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _192 = _189 * 0.060606062f;
    _193 = _190 * 0.060606062f;
    _194 = _191 * 0.060606062f;
    _195 = _192 * _192;
    _196 = _193 * _193;
    _197 = _194 * _194;
    _243 = min(0.0f, (-0.0f - (((_189 * 0.0072181816f) + ((_195 * 0.4298f) + (((_195 * _195) * ((31.96f - (_189 * 2.4327273f)) + (_195 * 15.5f))) - ((_189 * 0.41624245f) * _195)))) + -0.00232f)));
    _244 = min(0.0f, (-0.0f - (((_190 * 0.0072181816f) + ((_196 * 0.4298f) + (((_196 * _196) * ((31.96f - (_190 * 2.4327273f)) + (_196 * 15.5f))) - ((_190 * 0.41624245f) * _196)))) + -0.00232f)));
    _245 = min(0.0f, (-0.0f - (((_191 * 0.0072181816f) + ((_197 * 0.4298f) + (((_197 * _197) * ((31.96f - (_191 * 2.4327273f)) + (_197 * 15.5f))) - ((_191 * 0.41624245f) * _197)))) + -0.00232f)));
    _246 = -0.0f - _243;
    _247 = -0.0f - _244;
    _248 = -0.0f - _245;
    _249 = dot(float3(_246, _247, _248), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _266 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _267 = -0.79999995f / _266;
      _268 = -1.2f / _266;
      _269 = 0.20000005f / _266;
      _275 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _278 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _285 = (_267 + 1.4f) + (_278 * (-0.39999998f - _267));
      _286 = (_268 + 1.6f) + (_278 * (-0.6f - _268));
      _287 = (_269 + 0.9f) + (_278 * (0.5f - _269));
      _304 = (lerp(_286, 1.2f, _275));  // [sem: blended]
      _305 = (lerp(_285, 1.0f, _275));  // [sem: blended]
      _306 = (lerp(_287, 1.4f, _275));  // [sem: blended]
    } else {
      _304 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _305 = 1.0f;  // [sem: blended]
      _306 = 1.4f;  // [sem: blended]
    }
    _316 = 1.0f - _304;
    _341 = ((exp2(log2(((saturate((_243 * _243) * _246) * _316) + _304) * _246) * _305) - _249) * _306) + _249;
    _342 = ((exp2(log2(((saturate((_244 * _244) * _247) * _316) + _304) * _247) * _305) - _249) * _306) + _249;
    _343 = ((exp2(log2(((saturate((_245 * _245) * _248) * _316) + _304) * _248) * _305) - _249) * _306) + _249;
    _362 = saturate(exp2(log2(mad(_343, -0.09902974f, mad(_342, -0.09802088f, (_341 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _363 = saturate(exp2(log2(mad(_343, -0.098961174f, mad(_342, 1.1519032f, (_341 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _364 = saturate(exp2(log2(mad(_343, 1.1510737f, mad(_342, -0.09804345f, (_341 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _370 = 1.0f - abs(_etcParams.w);
      _374 = saturate(_etcParams.w);  // [sem: expr_sat]
      _375 = (_370 * _362) + _374;
      _376 = (_370 * _363) + _374;
      _377 = (_370 * _364) + _374;
      if (_colorGradingParams.w > 0.0f) {
        _382 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _399 = (((max(0.0f, (1.0f - _375)) - _375) * _382) + _375);
        _400 = (((max(0.0f, (1.0f - _376)) - _376) * _382) + _376);
        _401 = (((max(0.0f, (1.0f - _377)) - _377) * _382) + _377);
      } else {
        _399 = _375;
        _400 = _376;
        _401 = _377;
      }
      _407 = _userImageAdjust.y + 1.0f;
      _411 = _userImageAdjust.x + 0.5f;
      _412 = ((_399 + -0.5f) * _407) + _411;
      _413 = ((_400 + -0.5f) * _407) + _411;
      _414 = ((_401 + -0.5f) * _407) + _411;
      _444 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _455 = exp2(log2(saturate(mad(_colorBlind0.z, _414, mad(_colorBlind0.y, _413, (_colorBlind0.x * _412))))) * _444);
      _456 = exp2(log2(saturate(mad(_colorBlind1.z, _414, mad(_colorBlind1.y, _413, (_colorBlind1.x * _412))))) * _444);
      _457 = exp2(log2(saturate(mad(_colorBlind2.z, _414, mad(_colorBlind2.y, _413, (_colorBlind2.x * _412))))) * _444);
    } else {
      _455 = _362;
      _456 = _363;
      _457 = _364;
    }
  } else {
    _455 = _83;
    _456 = _84;
    _457 = _85;
  }
  if (_etcParams.y > 1.0f) {
    _466 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _467 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _471 = saturate(1.0f - (dot(float2(_466, _467), float2(_466, _467)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _476 = (_471 * _455);
    _477 = (_471 * _456);
    _478 = (_471 * _457);
  } else {
    _476 = _455;
    _477 = _456;
    _478 = _457;
  }
  if (_102 && (_etcParams.z > 0.0f)) {
    _508 = select((_476 <= 0.0031308f), (_476 * 12.92f), (((pow(_476, 0.41666666f)) * 1.055f) + -0.055f));
    _509 = select((_477 <= 0.0031308f), (_477 * 12.92f), (((pow(_477, 0.41666666f)) * 1.055f) + -0.055f));
    _510 = select((_478 <= 0.0031308f), (_478 * 12.92f), (((pow(_478, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _508 = _476;
    _509 = _477;
    _510 = _478;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _515 = (float)((uint)((uint)(_86)));
    if (!(_515 < _viewDir.w)) {
      if (!(_515 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _524 = _508;
        _525 = _509;
        _526 = _510;
      } else {
        _524 = 0.0f;
        _525 = 0.0f;
        _526 = 0.0f;
      }
    } else {
      _524 = 0.0f;
      _525 = 0.0f;
      _526 = 0.0f;
    }
  } else {
    _524 = _508;
    _525 = _509;
    _526 = _510;
  }
  SV_Target.x = _524;
  SV_Target.y = _525;
  SV_Target.z = _526;
  SV_Target.w = _99;
  return SV_Target;
}
