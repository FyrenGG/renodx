struct PostProcessAbyssEnterGlid_CDStruct {
  float _startYPos;
  float _endYPos;
  float _cubeScale;
  float _cameraSpeed;
  float _cameraSinIntensity;
  float3 _screenFadeColor;
  float _screenFadeRatio;
  float3 _fogColor;
  float3 _ambientColor;
  float3 _globalColor;
  float3 _lightColor;
  float3 _centerGlowColor;
  float _centerGlowRadius;
  float _stardustIntensity;
  float _particleIntensity;
  float _particleEmissionWidth;
  float _anamorphicIntensity;
  float _anamorphicWidth;
  float _largeHalo;
  float _largeHaloIntensity;
  float _middleHaloIntensity;
  float _blubIntensity;
  float _streakGlowIntensity;
  float _centerpoint;
  float _tunnelTotal;
  float _cameraFov;
  float _cubeDistance;
  uint _screenWarpTex;
  float _screenWarpRatio;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

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

struct BindlessParameters_PostProcessAbyssEnterGlid_CD {
  PostProcessAbyssEnterGlid_CDStruct BindlessParameters_PostProcessAbyssEnterGlid_CD;
};

typedef BindlessParameters_PostProcessAbyssEnterGlid_CD BindlessParameters_PostProcessAbyssEnterGlid_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssEnterGlid_CD_t> BindlessParameters_PostProcessAbyssEnterGlid_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _21;
  float _29;
  int _30;
  float _38;
  float4 _48;
  float4 _55;
  float _65;
  float _66;
  float _67;
  float _68;
  float _75;
  float _76;
  float _77;
  uint _78;
  float _92;
  float _297;
  float _298;
  float _299;
  float _392;
  float _393;
  float _394;
  float _448;
  float _449;
  float _450;
  float _469;
  float _470;
  float _471;
  float _501;
  float _502;
  float _503;
  float _517;
  float _518;
  float _519;
  bool _95;
  float _101;
  float _150;
  float _151;
  float _152;
  float _154;
  float _161;
  float _162;
  float _163;
  float _182;
  float _183;
  float _184;
  float _185;
  float _186;
  float _187;
  float _188;
  float _189;
  float _190;
  float _236;
  float _237;
  float _238;
  float _239;
  float _240;
  float _241;
  float _242;
  float _259;
  float _260;
  float _261;
  float _262;
  float _268;
  float _271;
  float _278;
  float _279;
  float _280;
  float _309;
  float _334;
  float _335;
  float _336;
  float _355;
  float _356;
  float _357;
  float _363;
  float _367;
  float _368;
  float _369;
  float _370;
  float _375;
  float _400;
  float _404;
  float _405;
  float _406;
  float _407;
  float _437;
  float _459;
  float _460;
  float _464;
  float _508;
  _21 = WaveReadLaneFirst(_materialIndex);
  _29 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_21 < (uint)170000), _21, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._startYPos);
  _30 = WaveReadLaneFirst(_materialIndex);
  _38 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_30 < (uint)170000), _30, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._endYPos);
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _48 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
  _55 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _65 = 1.0f - (saturate(exp2(log2(1.0f - saturate((_viewPos.y - _38) / (_29 - _38))) * 2.2f) * 7.0f) * 0.995f);
  _66 = _65 * _55.x;
  _67 = _65 * _55.y;
  _68 = _65 * _55.z;
  _75 = ((_48.x - _66) * _48.w) + _66;
  _76 = ((_48.y - _67) * _48.w) + _67;
  _77 = ((_48.z - _68) * _48.w) + _68;
  _78 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _92 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _78, 0)))).x) & 127)))) + 0.5f);
  } else {
    _92 = 1.0f;
  }
  _95 = (_localToneMappingParams.w > 0.0f);
  if (_95) {
    _101 = _userImageAdjust.z * _exposure0.x;
    _150 = exp2(log2(max(0.0f, (((_101 * max(0.0f, (((_75 * 1.70505f) - (_76 * 0.62179f)) - (_77 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _151 = exp2(log2(max(0.0f, (((max(0.0f, (((_76 * 1.1408f) - (_75 * 0.13026f)) - (_77 * 0.01055f))) * _101) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _152 = exp2(log2(max(0.0f, (((max(0.0f, (((_75 * -0.024f) - (_76 * 0.12897f)) + (_77 * 1.15297f))) * _101) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _154 = dot(float3(_150, _151, _152), float3(0.212671f, 0.71516f, 0.072169f));
    _161 = ((_150 - _154) * _powerParams.w) + _154;
    _162 = ((_151 - _154) * _powerParams.w) + _154;
    _163 = ((_152 - _154) * _powerParams.w) + _154;
    _182 = min(max(log2(mad(_163, 0.079223745f, mad(_162, 0.0784336f, (_161 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _183 = min(max(log2(mad(_163, 0.07916613f, mad(_162, 0.87846863f, (_161 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _184 = min(max(log2(mad(_163, 0.879143f, mad(_162, 0.0784336f, (_161 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _185 = _182 * 0.060606062f;
    _186 = _183 * 0.060606062f;
    _187 = _184 * 0.060606062f;
    _188 = _185 * _185;
    _189 = _186 * _186;
    _190 = _187 * _187;
    _236 = min(0.0f, (-0.0f - (((_182 * 0.0072181816f) + ((_188 * 0.4298f) + (((_188 * _188) * ((31.96f - (_182 * 2.4327273f)) + (_188 * 15.5f))) - ((_182 * 0.41624245f) * _188)))) + -0.00232f)));
    _237 = min(0.0f, (-0.0f - (((_183 * 0.0072181816f) + ((_189 * 0.4298f) + (((_189 * _189) * ((31.96f - (_183 * 2.4327273f)) + (_189 * 15.5f))) - ((_183 * 0.41624245f) * _189)))) + -0.00232f)));
    _238 = min(0.0f, (-0.0f - (((_184 * 0.0072181816f) + ((_190 * 0.4298f) + (((_190 * _190) * ((31.96f - (_184 * 2.4327273f)) + (_190 * 15.5f))) - ((_184 * 0.41624245f) * _190)))) + -0.00232f)));
    _239 = -0.0f - _236;
    _240 = -0.0f - _237;
    _241 = -0.0f - _238;
    _242 = dot(float3(_239, _240, _241), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _259 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _260 = -0.79999995f / _259;
      _261 = -1.2f / _259;
      _262 = 0.20000005f / _259;
      _268 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _271 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _278 = (_260 + 1.4f) + (_271 * (-0.39999998f - _260));
      _279 = (_261 + 1.6f) + (_271 * (-0.6f - _261));
      _280 = (_262 + 0.9f) + (_271 * (0.5f - _262));
      _297 = (lerp(_279, 1.2f, _268));  // [sem: blended]
      _298 = (lerp(_278, 1.0f, _268));  // [sem: blended]
      _299 = (lerp(_280, 1.4f, _268));  // [sem: blended]
    } else {
      _297 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _298 = 1.0f;  // [sem: blended]
      _299 = 1.4f;  // [sem: blended]
    }
    _309 = 1.0f - _297;
    _334 = ((exp2(log2(((saturate((_236 * _236) * _239) * _309) + _297) * _239) * _298) - _242) * _299) + _242;
    _335 = ((exp2(log2(((saturate((_237 * _237) * _240) * _309) + _297) * _240) * _298) - _242) * _299) + _242;
    _336 = ((exp2(log2(((saturate((_238 * _238) * _241) * _309) + _297) * _241) * _298) - _242) * _299) + _242;
    _355 = saturate(exp2(log2(mad(_336, -0.09902974f, mad(_335, -0.09802088f, (_334 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _356 = saturate(exp2(log2(mad(_336, -0.098961174f, mad(_335, 1.1519032f, (_334 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _357 = saturate(exp2(log2(mad(_336, 1.1510737f, mad(_335, -0.09804345f, (_334 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _363 = 1.0f - abs(_etcParams.w);
      _367 = saturate(_etcParams.w);  // [sem: expr_sat]
      _368 = (_363 * _355) + _367;
      _369 = (_363 * _356) + _367;
      _370 = (_363 * _357) + _367;
      if (_colorGradingParams.w > 0.0f) {
        _375 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _392 = (((max(0.0f, (1.0f - _368)) - _368) * _375) + _368);
        _393 = (((max(0.0f, (1.0f - _369)) - _369) * _375) + _369);
        _394 = (((max(0.0f, (1.0f - _370)) - _370) * _375) + _370);
      } else {
        _392 = _368;
        _393 = _369;
        _394 = _370;
      }
      _400 = _userImageAdjust.y + 1.0f;
      _404 = _userImageAdjust.x + 0.5f;
      _405 = ((_392 + -0.5f) * _400) + _404;
      _406 = ((_393 + -0.5f) * _400) + _404;
      _407 = ((_394 + -0.5f) * _400) + _404;
      _437 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _448 = exp2(log2(saturate(mad(_colorBlind0.z, _407, mad(_colorBlind0.y, _406, (_colorBlind0.x * _405))))) * _437);
      _449 = exp2(log2(saturate(mad(_colorBlind1.z, _407, mad(_colorBlind1.y, _406, (_colorBlind1.x * _405))))) * _437);
      _450 = exp2(log2(saturate(mad(_colorBlind2.z, _407, mad(_colorBlind2.y, _406, (_colorBlind2.x * _405))))) * _437);
    } else {
      _448 = _355;
      _449 = _356;
      _450 = _357;
    }
  } else {
    _448 = _75;
    _449 = _76;
    _450 = _77;
  }
  if (_etcParams.y > 1.0f) {
    _459 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _460 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _464 = saturate(1.0f - (dot(float2(_459, _460), float2(_459, _460)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _469 = (_464 * _448);
    _470 = (_464 * _449);
    _471 = (_464 * _450);
  } else {
    _469 = _448;
    _470 = _449;
    _471 = _450;
  }
  if (_95 && (_etcParams.z > 0.0f)) {
    _501 = select((_469 <= 0.0031308f), (_469 * 12.92f), (((pow(_469, 0.41666666f)) * 1.055f) + -0.055f));
    _502 = select((_470 <= 0.0031308f), (_470 * 12.92f), (((pow(_470, 0.41666666f)) * 1.055f) + -0.055f));
    _503 = select((_471 <= 0.0031308f), (_471 * 12.92f), (((pow(_471, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _501 = _469;
    _502 = _470;
    _503 = _471;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _508 = (float)((uint)((uint)(_78)));
    if (!(_508 < _viewDir.w)) {
      if (!(_508 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _517 = _501;
        _518 = _502;
        _519 = _503;
      } else {
        _517 = 0.0f;
        _518 = 0.0f;
        _519 = 0.0f;
      }
    } else {
      _517 = 0.0f;
      _518 = 0.0f;
      _519 = 0.0f;
    }
  } else {
    _517 = _501;
    _518 = _502;
    _519 = _503;
  }
  SV_Target.x = _517;
  SV_Target.y = _518;
  SV_Target.z = _519;
  SV_Target.w = _92;
  return SV_Target;
}
