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

struct BindlessParameters_PostProcessAbyssEnterGlid_CD {
  PostProcessAbyssEnterGlid_CDStruct BindlessParameters_PostProcessAbyssEnterGlid_CD;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
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
  int _32;
  float _40;
  float4 _43;
  float _50;
  float _53;
  float _56;
  float4 _59;
  float _65;
  float _68;
  float _71;
  float _85;
  float _94;
  float _103;
  float _112;
  float _124;
  float _136;
  float _148;
  uint _149;
  float _163;
  float _368;
  float _369;
  float _370;
  float _463;
  float _464;
  float _465;
  float _519;
  float _520;
  float _521;
  float _540;
  float _541;
  float _542;
  float _572;
  float _573;
  float _574;
  float _588;
  float _589;
  float _590;
  bool _166;
  float _172;
  float _191;
  float _207;
  float _223;
  float _224;
  float _228;
  float _231;
  float _234;
  float _241;
  float _248;
  float _255;
  float _256;
  float _257;
  float _258;
  float _259;
  float _260;
  float _261;
  float _277;
  float _293;
  float _309;
  float _310;
  float _311;
  float _312;
  float _313;
  float _330;
  float _331;
  float _332;
  float _333;
  float _336;
  float _339;
  float _343;
  float _347;
  float _351;
  float _371;
  float _383;
  float _395;
  float _407;
  float _414;
  float _421;
  float _428;
  float _434;
  float _435;
  float _437;
  float _439;
  float _441;
  float _446;
  float _467;
  float _469;
  float _472;
  float _475;
  float _478;
  float _484;
  float _526;
  float _529;
  float _535;
  float _577;
  float _594;
  float _598;
  float _602;
  _21 = WaveReadLaneFirst(_materialIndex);
  _29 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_21 < (uint)170000), _21, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._startYPos);
  _32 = WaveReadLaneFirst(_materialIndex);
  _40 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_32 < (uint)170000), _32, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._endYPos);
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _43 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
  _50 = (pow(_43.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _53 = (pow(_43.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _56 = (pow(_43.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _59 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _65 = (pow(_59.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _68 = (pow(_59.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _71 = (pow(_59.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _85 = 10000.0f - (saturate(exp2(log2(1.0f - saturate((_viewPos.y - _40) / (_29 - _40))) * 2.2f) * 7.0f) * 9950.0f);
  _94 = exp2(log2(max(0.0f, (_65 + -0.8359375f)) / (18.851562f - (_65 * 18.6875f))) * 6.277395f) * _85;
  _103 = exp2(log2(max(0.0f, (_68 + -0.8359375f)) / (18.851562f - (_68 * 18.6875f))) * 6.277395f) * _85;
  _112 = exp2(log2(max(0.0f, (_71 + -0.8359375f)) / (18.851562f - (_71 * 18.6875f))) * 6.277395f) * _85;
  _124 = (((exp2(log2(max(0.0f, (_50 + -0.8359375f)) / (18.851562f - (_50 * 18.6875f))) * 6.277395f) * 10000.0f) - _94) * _43.w) + _94;
  _136 = (((exp2(log2(max(0.0f, (_53 + -0.8359375f)) / (18.851562f - (_53 * 18.6875f))) * 6.277395f) * 10000.0f) - _103) * _43.w) + _103;
  _148 = (((exp2(log2(max(0.0f, (_56 + -0.8359375f)) / (18.851562f - (_56 * 18.6875f))) * 6.277395f) * 10000.0f) - _112) * _43.w) + _112;
  _149 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _163 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _149, 0)))).x) & 127)))) + 0.5f);
  } else {
    _163 = 1.0f;
  }
  _166 = (_localToneMappingParams.w > 0.0f);
  if (_166) {
    _172 = _exposure0.x * _userImageAdjust.z;
    _191 = exp2(_powerParams.x * log2(max(0.0f, (((_172 * max(0.0f, (((_124 * 1.70505f) - (_136 * 0.62179f)) - (_148 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _207 = exp2(log2(max(0.0f, (((_slopeParams.y * _172) * max(0.0f, (((_136 * 1.1408f) - (_124 * 0.13026f)) - (_148 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _223 = exp2(log2(max(0.0f, (((_slopeParams.z * _172) * max(0.0f, (((_124 * -0.024f) - (_136 * 0.12897f)) + (_148 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _224 = dot(float3(_191, _207, _223), float3(0.212671f, 0.71516f, 0.072169f));
    _228 = ((_191 - _224) * _powerParams.w) + _224;
    _231 = ((_207 - _224) * _powerParams.w) + _224;
    _234 = ((_223 - _224) * _powerParams.w) + _224;
    _241 = min(max(log2(mad(_234, 0.079223745f, mad(_231, 0.0784336f, (_228 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _248 = min(max(log2(mad(_234, 0.07916613f, mad(_231, 0.87846863f, (_228 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _255 = min(max(log2(mad(_234, 0.879143f, mad(_231, 0.0784336f, (_228 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _256 = _241 * 0.060606062f;
    _257 = _248 * 0.060606062f;
    _258 = _255 * 0.060606062f;
    _259 = _256 * _256;
    _260 = _257 * _257;
    _261 = _258 * _258;
    _277 = min(0.0f, (-0.0f - (((_241 * 0.0072181816f) + ((_259 * 0.4298f) + (((_259 * _259) * ((31.96f - (_241 * 2.4327273f)) + (_259 * 15.5f))) - ((_241 * 0.41624245f) * _259)))) + -0.00232f)));
    _293 = min(0.0f, (-0.0f - (((_248 * 0.0072181816f) + ((_260 * 0.4298f) + (((_260 * _260) * ((31.96f - (_248 * 2.4327273f)) + (_260 * 15.5f))) - ((_248 * 0.41624245f) * _260)))) + -0.00232f)));
    _309 = min(0.0f, (-0.0f - (((_255 * 0.0072181816f) + ((_261 * 0.4298f) + (((_261 * _261) * ((31.96f - (_255 * 2.4327273f)) + (_261 * 15.5f))) - ((_255 * 0.41624245f) * _261)))) + -0.00232f)));
    _310 = -0.0f - _277;
    _311 = -0.0f - _293;
    _312 = -0.0f - _309;
    _313 = dot(float3(_310, _311, _312), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _330 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _331 = -0.79999995f / _330;
      _332 = -1.2f / _330;
      _333 = 0.20000005f / _330;
      _336 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _339 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _343 = (_331 + 1.4f) + (_339 * (-0.39999998f - _331));
      _347 = (_332 + 1.6f) + (_339 * (-0.6f - _332));
      _351 = (_333 + 0.9f) + (_339 * (0.5f - _333));
      _368 = (lerp(_347, 1.2f, _336));  // [sem: blended]
      _369 = (lerp(_343, 1.0f, _336));  // [sem: blended]
      _370 = (lerp(_351, 1.4f, _336));  // [sem: blended]
    } else {
      _368 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _369 = 1.0f;  // [sem: blended]
      _370 = 1.4f;  // [sem: blended]
    }
    _371 = 1.0f - _368;
    _383 = ((exp2(log2(((saturate((_277 * _277) * _310) * _371) + _368) * _310) * _369) - _313) * _370) + _313;
    _395 = ((exp2(log2(((saturate((_293 * _293) * _311) * _371) + _368) * _311) * _369) - _313) * _370) + _313;
    _407 = ((exp2(log2(((saturate((_309 * _309) * _312) * _371) + _368) * _312) * _369) - _313) * _370) + _313;
    _414 = saturate(exp2(log2(mad(_407, -0.09902974f, mad(_395, -0.09802088f, (_383 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _421 = saturate(exp2(log2(mad(_407, -0.098961174f, mad(_395, 1.1519032f, (_383 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _428 = saturate(exp2(log2(mad(_407, 1.1510737f, mad(_395, -0.09804345f, (_383 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _434 = 1.0f - abs(_etcParams.w);
      _435 = saturate(_etcParams.w);  // [sem: expr_sat]
      _437 = (_434 * _414) + _435;
      _439 = (_434 * _421) + _435;
      _441 = (_434 * _428) + _435;
      if (_colorGradingParams.w > 0.0f) {
        _446 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _463 = (((max(0.0f, (1.0f - _437)) - _437) * _446) + _437);
        _464 = (((max(0.0f, (1.0f - _439)) - _439) * _446) + _439);
        _465 = (((max(0.0f, (1.0f - _441)) - _441) * _446) + _441);
      } else {
        _463 = _437;
        _464 = _439;
        _465 = _441;
      }
      _467 = _userImageAdjust.y + 1.0f;
      _469 = _userImageAdjust.x + 0.5f;
      _472 = ((_463 + -0.5f) * _467) + _469;
      _475 = ((_464 + -0.5f) * _467) + _469;
      _478 = ((_465 + -0.5f) * _467) + _469;
      _484 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _519 = exp2(log2(saturate(mad(_colorBlind0.z, _478, mad(_colorBlind0.y, _475, (_colorBlind0.x * _472))))) * _484);
      _520 = exp2(log2(saturate(mad(_colorBlind1.z, _478, mad(_colorBlind1.y, _475, (_colorBlind1.x * _472))))) * _484);
      _521 = exp2(log2(saturate(mad(_colorBlind2.z, _478, mad(_colorBlind2.y, _475, (_colorBlind2.x * _472))))) * _484);
    } else {
      _519 = _414;
      _520 = _421;
      _521 = _428;
    }
  } else {
    _519 = _124;
    _520 = _136;
    _521 = _148;
  }
  if (_etcParams.y > 1.0f) {
    _526 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _529 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _535 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_526, _529), float2(_526, _529))));  // [sem: expr_sat]
    _540 = (_535 * _519);
    _541 = (_535 * _520);
    _542 = (_535 * _521);
  } else {
    _540 = _519;
    _541 = _520;
    _542 = _521;
  }
  if (_166 && (_etcParams.z > 0.0f)) {
    _572 = select((_540 <= 0.0031308f), (_540 * 12.92f), (((pow(_540, 0.41666666f)) * 1.055f) + -0.055f));
    _573 = select((_541 <= 0.0031308f), (_541 * 12.92f), (((pow(_541, 0.41666666f)) * 1.055f) + -0.055f));
    _574 = select((_542 <= 0.0031308f), (_542 * 12.92f), (((pow(_542, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _572 = _540;
    _573 = _541;
    _574 = _542;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _577 = (float)((uint)((uint)(_149)));
    if (!(_577 < _viewDir.w)) {
      if (!(!(_577 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _588 = 0.0f;
        _589 = 0.0f;
        _590 = 0.0f;
      } else {
        _588 = _572;
        _589 = _573;
        _590 = _574;
      }
    } else {
      _588 = 0.0f;
      _589 = 0.0f;
      _590 = 0.0f;
    }
  } else {
    _588 = _572;
    _589 = _573;
    _590 = _574;
  }
  _594 = exp2(log2(_588 * 0.0001f) * 0.15930176f);
  _598 = exp2(log2(_589 * 0.0001f) * 0.15930176f);
  _602 = exp2(log2(_590 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_594 * 18.6875f) + 1.0f)) * ((_594 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_598 * 18.6875f) + 1.0f)) * ((_598 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_602 * 18.6875f) + 1.0f)) * ((_602 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _163;
  return SV_Target;
}
