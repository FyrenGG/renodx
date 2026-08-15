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
  float _59;
  float _60;
  float _61;
  float4 _91;
  float _101;
  float _102;
  float _103;
  float _134;
  float _135;
  float _136;
  float _137;
  float _144;
  float _145;
  float _146;
  uint _147;
  float _161;
  float _366;
  float _367;
  float _368;
  float _461;
  float _462;
  float _463;
  float _517;
  float _518;
  float _519;
  float _538;
  float _539;
  float _540;
  float _570;
  float _571;
  float _572;
  float _586;
  float _587;
  float _588;
  bool _164;
  float _170;
  float _219;
  float _220;
  float _221;
  float _223;
  float _230;
  float _231;
  float _232;
  float _251;
  float _252;
  float _253;
  float _254;
  float _255;
  float _256;
  float _257;
  float _258;
  float _259;
  float _305;
  float _306;
  float _307;
  float _308;
  float _309;
  float _310;
  float _311;
  float _328;
  float _329;
  float _330;
  float _331;
  float _337;
  float _340;
  float _347;
  float _348;
  float _349;
  float _378;
  float _403;
  float _404;
  float _405;
  float _424;
  float _425;
  float _426;
  float _432;
  float _436;
  float _437;
  float _438;
  float _439;
  float _444;
  float _469;
  float _473;
  float _474;
  float _475;
  float _476;
  float _506;
  float _528;
  float _529;
  float _533;
  float _577;
  float _598;
  float _599;
  float _600;
  _21 = WaveReadLaneFirst(_materialIndex);
  _29 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_21 < (uint)170000), _21, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._startYPos);
  _30 = WaveReadLaneFirst(_materialIndex);
  _38 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_30 < (uint)170000), _30, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._endYPos);
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _48 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
  _59 = (pow(_48.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _60 = (pow(_48.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _61 = (pow(_48.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _91 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _101 = (pow(_91.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _102 = (pow(_91.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _103 = (pow(_91.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _134 = 10000.0f - (saturate(exp2(log2(1.0f - saturate((_viewPos.y - _38) / (_29 - _38))) * 2.2f) * 7.0f) * 9950.0f);
  _135 = _134 * exp2(log2(max(0.0f, (_101 + -0.8359375f)) / (18.851562f - (_101 * 18.6875f))) * 6.277395f);
  _136 = _134 * exp2(log2(max(0.0f, (_102 + -0.8359375f)) / (18.851562f - (_102 * 18.6875f))) * 6.277395f);
  _137 = _134 * exp2(log2(max(0.0f, (_103 + -0.8359375f)) / (18.851562f - (_103 * 18.6875f))) * 6.277395f);
  _144 = (((exp2(log2(max(0.0f, (_59 + -0.8359375f)) / (18.851562f - (_59 * 18.6875f))) * 6.277395f) * 10000.0f) - _135) * _48.w) + _135;
  _145 = (((exp2(log2(max(0.0f, (_60 + -0.8359375f)) / (18.851562f - (_60 * 18.6875f))) * 6.277395f) * 10000.0f) - _136) * _48.w) + _136;
  _146 = (((exp2(log2(max(0.0f, (_61 + -0.8359375f)) / (18.851562f - (_61 * 18.6875f))) * 6.277395f) * 10000.0f) - _137) * _48.w) + _137;
  _147 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _161 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _147, 0)))).x) & 127)))) + 0.5f);
  } else {
    _161 = 1.0f;
  }
  _164 = (_localToneMappingParams.w > 0.0f);
  if (_164) {
    _170 = _userImageAdjust.z * _exposure0.x;
    _219 = exp2(log2(max(0.0f, (((_170 * max(0.0f, (((_144 * 1.70505f) - (_145 * 0.62179f)) - (_146 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _220 = exp2(log2(max(0.0f, (((max(0.0f, (((_145 * 1.1408f) - (_144 * 0.13026f)) - (_146 * 0.01055f))) * _170) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _221 = exp2(log2(max(0.0f, (((max(0.0f, (((_144 * -0.024f) - (_145 * 0.12897f)) + (_146 * 1.15297f))) * _170) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _223 = dot(float3(_219, _220, _221), float3(0.212671f, 0.71516f, 0.072169f));
    _230 = ((_219 - _223) * _powerParams.w) + _223;
    _231 = ((_220 - _223) * _powerParams.w) + _223;
    _232 = ((_221 - _223) * _powerParams.w) + _223;
    _251 = min(max(log2(mad(_232, 0.079223745f, mad(_231, 0.0784336f, (_230 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _252 = min(max(log2(mad(_232, 0.07916613f, mad(_231, 0.87846863f, (_230 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _253 = min(max(log2(mad(_232, 0.879143f, mad(_231, 0.0784336f, (_230 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _254 = _251 * 0.060606062f;
    _255 = _252 * 0.060606062f;
    _256 = _253 * 0.060606062f;
    _257 = _254 * _254;
    _258 = _255 * _255;
    _259 = _256 * _256;
    _305 = min(0.0f, (-0.0f - (((_251 * 0.0072181816f) + ((_257 * 0.4298f) + (((_257 * _257) * ((31.96f - (_251 * 2.4327273f)) + (_257 * 15.5f))) - ((_251 * 0.41624245f) * _257)))) + -0.00232f)));
    _306 = min(0.0f, (-0.0f - (((_252 * 0.0072181816f) + ((_258 * 0.4298f) + (((_258 * _258) * ((31.96f - (_252 * 2.4327273f)) + (_258 * 15.5f))) - ((_252 * 0.41624245f) * _258)))) + -0.00232f)));
    _307 = min(0.0f, (-0.0f - (((_253 * 0.0072181816f) + ((_259 * 0.4298f) + (((_259 * _259) * ((31.96f - (_253 * 2.4327273f)) + (_259 * 15.5f))) - ((_253 * 0.41624245f) * _259)))) + -0.00232f)));
    _308 = -0.0f - _305;
    _309 = -0.0f - _306;
    _310 = -0.0f - _307;
    _311 = dot(float3(_308, _309, _310), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _328 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _329 = -0.79999995f / _328;
      _330 = -1.2f / _328;
      _331 = 0.20000005f / _328;
      _337 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _340 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _347 = (_329 + 1.4f) + (_340 * (-0.39999998f - _329));
      _348 = (_330 + 1.6f) + (_340 * (-0.6f - _330));
      _349 = (_331 + 0.9f) + (_340 * (0.5f - _331));
      _366 = (lerp(_348, 1.2f, _337));  // [sem: blended]
      _367 = (lerp(_347, 1.0f, _337));  // [sem: blended]
      _368 = (lerp(_349, 1.4f, _337));  // [sem: blended]
    } else {
      _366 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _367 = 1.0f;  // [sem: blended]
      _368 = 1.4f;  // [sem: blended]
    }
    _378 = 1.0f - _366;
    _403 = ((exp2(log2(((saturate((_305 * _305) * _308) * _378) + _366) * _308) * _367) - _311) * _368) + _311;
    _404 = ((exp2(log2(((saturate((_306 * _306) * _309) * _378) + _366) * _309) * _367) - _311) * _368) + _311;
    _405 = ((exp2(log2(((saturate((_307 * _307) * _310) * _378) + _366) * _310) * _367) - _311) * _368) + _311;
    _424 = saturate(exp2(log2(mad(_405, -0.09902974f, mad(_404, -0.09802088f, (_403 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _425 = saturate(exp2(log2(mad(_405, -0.098961174f, mad(_404, 1.1519032f, (_403 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _426 = saturate(exp2(log2(mad(_405, 1.1510737f, mad(_404, -0.09804345f, (_403 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _432 = 1.0f - abs(_etcParams.w);
      _436 = saturate(_etcParams.w);  // [sem: expr_sat]
      _437 = (_432 * _424) + _436;
      _438 = (_432 * _425) + _436;
      _439 = (_432 * _426) + _436;
      if (_colorGradingParams.w > 0.0f) {
        _444 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _461 = (((max(0.0f, (1.0f - _437)) - _437) * _444) + _437);
        _462 = (((max(0.0f, (1.0f - _438)) - _438) * _444) + _438);
        _463 = (((max(0.0f, (1.0f - _439)) - _439) * _444) + _439);
      } else {
        _461 = _437;
        _462 = _438;
        _463 = _439;
      }
      _469 = _userImageAdjust.y + 1.0f;
      _473 = _userImageAdjust.x + 0.5f;
      _474 = ((_461 + -0.5f) * _469) + _473;
      _475 = ((_462 + -0.5f) * _469) + _473;
      _476 = ((_463 + -0.5f) * _469) + _473;
      _506 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _517 = exp2(log2(saturate(mad(_colorBlind0.z, _476, mad(_colorBlind0.y, _475, (_colorBlind0.x * _474))))) * _506);
      _518 = exp2(log2(saturate(mad(_colorBlind1.z, _476, mad(_colorBlind1.y, _475, (_colorBlind1.x * _474))))) * _506);
      _519 = exp2(log2(saturate(mad(_colorBlind2.z, _476, mad(_colorBlind2.y, _475, (_colorBlind2.x * _474))))) * _506);
    } else {
      _517 = _424;
      _518 = _425;
      _519 = _426;
    }
  } else {
    _517 = _144;
    _518 = _145;
    _519 = _146;
  }
  if (_etcParams.y > 1.0f) {
    _528 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _529 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _533 = saturate(1.0f - (dot(float2(_528, _529), float2(_528, _529)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _538 = (_533 * _517);
    _539 = (_533 * _518);
    _540 = (_533 * _519);
  } else {
    _538 = _517;
    _539 = _518;
    _540 = _519;
  }
  if (_164 && (_etcParams.z > 0.0f)) {
    _570 = select((_538 <= 0.0031308f), (_538 * 12.92f), (((pow(_538, 0.41666666f)) * 1.055f) + -0.055f));
    _571 = select((_539 <= 0.0031308f), (_539 * 12.92f), (((pow(_539, 0.41666666f)) * 1.055f) + -0.055f));
    _572 = select((_540 <= 0.0031308f), (_540 * 12.92f), (((pow(_540, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _570 = _538;
    _571 = _539;
    _572 = _540;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _577 = (float)((uint)((uint)(_147)));
    if (!(_577 < _viewDir.w)) {
      if (!(_577 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _586 = _570;
        _587 = _571;
        _588 = _572;
      } else {
        _586 = 0.0f;
        _587 = 0.0f;
        _588 = 0.0f;
      }
    } else {
      _586 = 0.0f;
      _587 = 0.0f;
      _588 = 0.0f;
    }
  } else {
    _586 = _570;
    _587 = _571;
    _588 = _572;
  }
  _598 = exp2(log2(_586 * 0.0001f) * 0.15930176f);
  _599 = exp2(log2(_587 * 0.0001f) * 0.15930176f);
  _600 = exp2(log2(_588 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_598 * 18.6875f) + 1.0f)) * ((_598 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_599 * 18.6875f) + 1.0f)) * ((_599 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_600 * 18.6875f) + 1.0f)) * ((_600 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _161;
  return SV_Target;
}
