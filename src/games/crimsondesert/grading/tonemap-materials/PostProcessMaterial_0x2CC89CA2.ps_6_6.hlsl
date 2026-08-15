struct PostProcessCameraLensRainStruct {
  float _rainSpeed;
  float _rainUTiling;
  float _rainVTiling;
  float _streakUTiling;
  float _streakVTiling;
  uint _rainNormalTexture;
  uint _rainMaskTexture;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

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

struct BindlessParameters_PostProcessCameraLensRain {
  PostProcessCameraLensRainStruct BindlessParameters_PostProcessCameraLensRain;
};

typedef BindlessParameters_PostProcessCameraLensRain BindlessParameters_PostProcessCameraLensRain_t;
ConstantBuffer<BindlessParameters_PostProcessCameraLensRain_t> BindlessParameters_PostProcessCameraLensRain[] : register(b0, space100);

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
  int _22;
  float _30;
  float _33;
  int _34;
  float _42;
  int _43;
  float _51;
  float _52;
  float _53;
  int _60;
  int _68;
  float _80;
  float _84;
  int _85;
  int _93;
  float _105;
  int _113;
  float _121;
  int _122;
  float _130;
  float _131;
  float _132;
  int _133;
  int _141;
  int _151;
  int _159;
  float4 _166;
  float _173;
  float _187;
  float _195;
  float4 _204;
  uint _212;
  float _226;
  float _431;
  float _432;
  float _433;
  float _526;
  float _527;
  float _528;
  float _582;
  float _583;
  float _584;
  float _603;
  float _604;
  float _605;
  float _635;
  float _636;
  float _637;
  float _651;
  float _652;
  float _653;
  bool _229;
  float _235;
  float _284;
  float _285;
  float _286;
  float _288;
  float _295;
  float _296;
  float _297;
  float _316;
  float _317;
  float _318;
  float _319;
  float _320;
  float _321;
  float _322;
  float _323;
  float _324;
  float _370;
  float _371;
  float _372;
  float _373;
  float _374;
  float _375;
  float _376;
  float _393;
  float _394;
  float _395;
  float _396;
  float _402;
  float _405;
  float _412;
  float _413;
  float _414;
  float _443;
  float _468;
  float _469;
  float _470;
  float _489;
  float _490;
  float _491;
  float _497;
  float _501;
  float _502;
  float _503;
  float _504;
  float _509;
  float _534;
  float _538;
  float _539;
  float _540;
  float _541;
  float _571;
  float _593;
  float _594;
  float _598;
  float _642;
  _22 = WaveReadLaneFirst(_materialIndex);
  _30 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_22 < (uint)170000), _22, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainSpeed);
  _33 = _time.x * _30;
  _34 = WaveReadLaneFirst(_materialIndex);
  _42 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_34 < (uint)170000), _34, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._streakUTiling);
  _43 = WaveReadLaneFirst(_materialIndex);
  _51 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_43 < (uint)170000), _43, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._streakVTiling);
  _52 = _42 * TEXCOORD.x;
  _53 = _51 * TEXCOORD.y;
  _60 = WaveReadLaneFirst(_materialIndex);
  _68 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_60 < (uint)170000), _60, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
  // [sem: expr_sat]
  _80 = saturate((abs(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_68 < (uint)65000), _68, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_52, (_53 - frac(_33)))))).z) + -0.01f) * 1.1235955f);
  _84 = (_80 * _80) * (3.0f - (_80 * 2.0f));
  _85 = WaveReadLaneFirst(_materialIndex);
  _93 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_85 < (uint)170000), _85, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
  // [sem: expr_sat]
  _105 = saturate((abs(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_93 < (uint)65000), _93, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_52, ((_53 * 1.2f) - frac(_33 * 1.5f)))))).z) + -0.04f) * 50.0f);
  _113 = WaveReadLaneFirst(_materialIndex);
  _121 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_113 < (uint)170000), _113, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainUTiling);
  _122 = WaveReadLaneFirst(_materialIndex);
  _130 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_122 < (uint)170000), _122, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainVTiling);
  _131 = _121 * TEXCOORD.x;
  _132 = _130 * TEXCOORD.y;
  _133 = WaveReadLaneFirst(_materialIndex);
  _141 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_133 < (uint)170000), _133, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
  _151 = WaveReadLaneFirst(_materialIndex);
  _159 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_151 < (uint)170000), _151, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainNormalTexture);
  _166 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_159 < (uint)65000), _159, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_131, (1.0f - _132)));
  _173 = saturate((2.5f - TEXCOORD.y) * 0.33333334f);  // [sem: expr_sat]
  // [sem: expr_sat]
  _187 = saturate(saturate(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_141 < (uint)65000), _141, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_131, _132)))).y) - saturate(((((((_105 * _105) * (3.0f - (_105 * 2.0f))) - _84) * 0.5f) + _84) - saturate(exp2(log2((_173 * _173) * (3.0f - (_173 * 2.0f))) * 1.1f))) * 5.0f));
  _195 = dot(float3(_187, _187, _187), float3(1.0f, 1.0f, 1.0f)) * 0.09f;
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _204 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(abs((_195 * ((_187 * ((_166.x * 2.0f) + -1.4960785f)) + 0.5f)) + TEXCOORD.x), abs(TEXCOORD.y - (_195 * ((_187 * ((_166.y * 2.0f) + -1.4960785f)) + 0.5f)))));
  _212 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _226 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _212, 0)))).x) & 127)))) + 0.5f);
  } else {
    _226 = select(isnan(_postProcessParams.x), 0.0f, _postProcessParams.x);
  }
  _229 = (_localToneMappingParams.w > 0.0f);
  if (_229) {
    _235 = _userImageAdjust.z * _exposure0.x;
    _284 = exp2(log2(max(0.0f, (((_235 * max(0.0f, (((_204.x * 1.70505f) - (_204.y * 0.62179f)) - (_204.z * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _285 = exp2(log2(max(0.0f, (((max(0.0f, (((_204.y * 1.1408f) - (_204.x * 0.13026f)) - (_204.z * 0.01055f))) * _235) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _286 = exp2(log2(max(0.0f, (((max(0.0f, (((_204.x * -0.024f) - (_204.y * 0.12897f)) + (_204.z * 1.15297f))) * _235) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _288 = dot(float3(_284, _285, _286), float3(0.212671f, 0.71516f, 0.072169f));
    _295 = ((_284 - _288) * _powerParams.w) + _288;
    _296 = ((_285 - _288) * _powerParams.w) + _288;
    _297 = ((_286 - _288) * _powerParams.w) + _288;
    _316 = min(max(log2(mad(_297, 0.079223745f, mad(_296, 0.0784336f, (_295 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _317 = min(max(log2(mad(_297, 0.07916613f, mad(_296, 0.87846863f, (_295 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _318 = min(max(log2(mad(_297, 0.879143f, mad(_296, 0.0784336f, (_295 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _319 = _316 * 0.060606062f;
    _320 = _317 * 0.060606062f;
    _321 = _318 * 0.060606062f;
    _322 = _319 * _319;
    _323 = _320 * _320;
    _324 = _321 * _321;
    _370 = min(0.0f, (-0.0f - (((_316 * 0.0072181816f) + ((_322 * 0.4298f) + (((_322 * _322) * ((31.96f - (_316 * 2.4327273f)) + (_322 * 15.5f))) - ((_316 * 0.41624245f) * _322)))) + -0.00232f)));
    _371 = min(0.0f, (-0.0f - (((_317 * 0.0072181816f) + ((_323 * 0.4298f) + (((_323 * _323) * ((31.96f - (_317 * 2.4327273f)) + (_323 * 15.5f))) - ((_317 * 0.41624245f) * _323)))) + -0.00232f)));
    _372 = min(0.0f, (-0.0f - (((_318 * 0.0072181816f) + ((_324 * 0.4298f) + (((_324 * _324) * ((31.96f - (_318 * 2.4327273f)) + (_324 * 15.5f))) - ((_318 * 0.41624245f) * _324)))) + -0.00232f)));
    _373 = -0.0f - _370;
    _374 = -0.0f - _371;
    _375 = -0.0f - _372;
    _376 = dot(float3(_373, _374, _375), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _393 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _394 = -0.79999995f / _393;
      _395 = -1.2f / _393;
      _396 = 0.20000005f / _393;
      _402 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _405 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _412 = (_394 + 1.4f) + (_405 * (-0.39999998f - _394));
      _413 = (_395 + 1.6f) + (_405 * (-0.6f - _395));
      _414 = (_396 + 0.9f) + (_405 * (0.5f - _396));
      _431 = (lerp(_413, 1.2f, _402));  // [sem: blended]
      _432 = (lerp(_412, 1.0f, _402));  // [sem: blended]
      _433 = (lerp(_414, 1.4f, _402));  // [sem: blended]
    } else {
      _431 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _432 = 1.0f;  // [sem: blended]
      _433 = 1.4f;  // [sem: blended]
    }
    _443 = 1.0f - _431;
    _468 = ((exp2(log2(((saturate((_370 * _370) * _373) * _443) + _431) * _373) * _432) - _376) * _433) + _376;
    _469 = ((exp2(log2(((saturate((_371 * _371) * _374) * _443) + _431) * _374) * _432) - _376) * _433) + _376;
    _470 = ((exp2(log2(((saturate((_372 * _372) * _375) * _443) + _431) * _375) * _432) - _376) * _433) + _376;
    _489 = saturate(exp2(log2(mad(_470, -0.09902974f, mad(_469, -0.09802088f, (_468 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _490 = saturate(exp2(log2(mad(_470, -0.098961174f, mad(_469, 1.1519032f, (_468 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _491 = saturate(exp2(log2(mad(_470, 1.1510737f, mad(_469, -0.09804345f, (_468 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _497 = 1.0f - abs(_etcParams.w);
      _501 = saturate(_etcParams.w);  // [sem: expr_sat]
      _502 = (_497 * _489) + _501;
      _503 = (_497 * _490) + _501;
      _504 = (_497 * _491) + _501;
      if (_colorGradingParams.w > 0.0f) {
        _509 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _526 = (((max(0.0f, (1.0f - _502)) - _502) * _509) + _502);
        _527 = (((max(0.0f, (1.0f - _503)) - _503) * _509) + _503);
        _528 = (((max(0.0f, (1.0f - _504)) - _504) * _509) + _504);
      } else {
        _526 = _502;
        _527 = _503;
        _528 = _504;
      }
      _534 = _userImageAdjust.y + 1.0f;
      _538 = _userImageAdjust.x + 0.5f;
      _539 = ((_526 + -0.5f) * _534) + _538;
      _540 = ((_527 + -0.5f) * _534) + _538;
      _541 = ((_528 + -0.5f) * _534) + _538;
      _571 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _582 = exp2(log2(saturate(mad(_colorBlind0.z, _541, mad(_colorBlind0.y, _540, (_colorBlind0.x * _539))))) * _571);
      _583 = exp2(log2(saturate(mad(_colorBlind1.z, _541, mad(_colorBlind1.y, _540, (_colorBlind1.x * _539))))) * _571);
      _584 = exp2(log2(saturate(mad(_colorBlind2.z, _541, mad(_colorBlind2.y, _540, (_colorBlind2.x * _539))))) * _571);
    } else {
      _582 = _489;
      _583 = _490;
      _584 = _491;
    }
  } else {
    _582 = _204.x;
    _583 = _204.y;
    _584 = _204.z;
  }
  if (_etcParams.y > 1.0f) {
    _593 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _594 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _598 = saturate(1.0f - (dot(float2(_593, _594), float2(_593, _594)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _603 = (_598 * _582);
    _604 = (_598 * _583);
    _605 = (_598 * _584);
  } else {
    _603 = _582;
    _604 = _583;
    _605 = _584;
  }
  if (_229 && (_etcParams.z > 0.0f)) {
    _635 = select((_603 <= 0.0031308f), (_603 * 12.92f), (((pow(_603, 0.41666666f)) * 1.055f) + -0.055f));
    _636 = select((_604 <= 0.0031308f), (_604 * 12.92f), (((pow(_604, 0.41666666f)) * 1.055f) + -0.055f));
    _637 = select((_605 <= 0.0031308f), (_605 * 12.92f), (((pow(_605, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _635 = _603;
    _636 = _604;
    _637 = _605;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _642 = (float)((uint)((uint)(_212)));
    if (!(_642 < _viewDir.w)) {
      if (!(_642 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _651 = _635;
        _652 = _636;
        _653 = _637;
      } else {
        _651 = 0.0f;
        _652 = 0.0f;
        _653 = 0.0f;
      }
    } else {
      _651 = 0.0f;
      _652 = 0.0f;
      _653 = 0.0f;
    }
  } else {
    _651 = _635;
    _652 = _636;
    _653 = _637;
  }
  SV_Target.x = _651;
  SV_Target.y = _652;
  SV_Target.z = _653;
  SV_Target.w = _226;
  return SV_Target;
}
