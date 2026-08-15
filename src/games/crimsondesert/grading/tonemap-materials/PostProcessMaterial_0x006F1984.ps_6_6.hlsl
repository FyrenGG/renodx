struct PostProcessWeatherBlendStruct {
  float _blendRatio;
  float _enableBlend;
  uint _noiseTex;
  uint _berserkColor;
  uint _berserkEndColor;
  float _borderRatio;
  float _borderWidth;
  float _borderSmoothness;
  float _borderEdgeNoiseRatio;
  float2 _borderEdgeNoiseOffset;
  float2 _borderEdgeNoiseTile;
  uint _borderColor;
  uint _borderEdgeNoiseTexture;
  float _borderFlickerSpeed;
  float _borderFlickerIntensity;
  float2 _borderFlickerOpacityMinMax;
  float _contrast;
  float3 _saturation;
  float _chromaticAberrationRatio;
  float _chromaticAberrationShiftValue;
  float2 _chromaticAberrationShiftPosition;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

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

struct BindlessParameters_PostProcessWeatherBlend {
  PostProcessWeatherBlendStruct BindlessParameters_PostProcessWeatherBlend;
};

typedef BindlessParameters_PostProcessWeatherBlend BindlessParameters_PostProcessWeatherBlend_t;
ConstantBuffer<BindlessParameters_PostProcessWeatherBlend_t> BindlessParameters_PostProcessWeatherBlend[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

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
  int _31;
  float _39;
  float _346;
  float _347;
  float _348;
  float _349;
  float _364;
  float _569;
  float _570;
  float _571;
  float _664;
  float _665;
  float _666;
  float _720;
  float _721;
  float _722;
  float _741;
  float _742;
  float _743;
  float _773;
  float _774;
  float _775;
  float _789;
  float _790;
  float _791;
  float _48;
  int _49;
  int _57;
  float _61;
  int _69;
  int _77;
  float4 _84;
  float _87;
  float _88;
  float _89;
  float _91;
  bool _94;
  bool _95;
  bool _96;
  bool _97;
  float _106;
  float _108;
  float _110;
  float _116;
  int _119;
  int _127;
  float4 _134;
  float _136;
  float _138;
  float _150;
  float _153;
  int _162;
  int _170;
  float4 _177;
  float _187;
  float _200;
  float _203;
  float _205;
  float4 _211;
  float4 _219;
  float4 _230;
  float _237;
  float _238;
  float _239;
  float _240;
  int _250;
  int _258;
  float _261;
  float _264;
  float _266;
  float _291;
  float _292;
  float _293;
  float _303;
  float _304;
  float _305;
  float _313;
  float _317;
  float _324;
  float _325;
  float _326;
  float _329;
  float _332;
  uint _351;
  bool _367;
  float _373;
  float _422;
  float _423;
  float _424;
  float _426;
  float _433;
  float _434;
  float _435;
  float _454;
  float _455;
  float _456;
  float _457;
  float _458;
  float _459;
  float _460;
  float _461;
  float _462;
  float _508;
  float _509;
  float _510;
  float _511;
  float _512;
  float _513;
  float _514;
  float _531;
  float _532;
  float _533;
  float _534;
  float _540;
  float _543;
  float _550;
  float _551;
  float _552;
  float _581;
  float _606;
  float _607;
  float _608;
  float _627;
  float _628;
  float _629;
  float _635;
  float _639;
  float _640;
  float _641;
  float _642;
  float _647;
  float _672;
  float _676;
  float _677;
  float _678;
  float _679;
  float _709;
  float _731;
  float _732;
  float _736;
  float _780;
  _22 = WaveReadLaneFirst(_materialIndex);
  _30 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_22 < (uint)170000), _22, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._blendRatio);
  _31 = WaveReadLaneFirst(_materialIndex);
  _39 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_31 < (uint)170000), _31, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._enableBlend);
  if ((_30 < 0.001f) && (_39 < 0.001f)) {
    if (true) discard;
  }
  _48 = _screenSizeAndInvSize.x / _screenSizeAndInvSize.y;
  _49 = WaveReadLaneFirst(_materialIndex);
  _57 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_49 < (uint)170000), _49, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
  if (_30 > 0.0f) {
    _61 = saturate(_30 * 2.0f);  // [sem: expr_sat]
    _69 = WaveReadLaneFirst(_materialIndex);
    _77 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_69 < (uint)170000), _69, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _84 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_77 < (uint)65000), _77, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 2.0f) * _48), ((_time.x * 0.02f) + (TEXCOORD.y * 2.0f))));
    _87 = TEXCOORD.x + -0.5f;
    _88 = TEXCOORD.y + -0.5f;
    _89 = _48 * _87;
    _91 = atan(_88 / _89);
    _94 = (_89 < 0.0f);
    _95 = (_89 == 0.0f);
    _96 = (_88 >= 0.0f);
    _97 = (_88 < 0.0f);
    _106 = select((_96 && _95), 0.5f, select((_97 && _95), -0.5f, (select((_97 && _94), (_91 + -3.1415927f), select((_96 && _94), (_91 + 3.1415927f), _91)) * 0.31830987f)));
    _108 = _88 * _88;
    _110 = sqrt((_89 * _89) + _108);
    _116 = _time.x * 0.2f;
    _119 = WaveReadLaneFirst(_materialIndex);
    _127 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_119 < (uint)170000), _119, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _134 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_127 < (uint)65000), _127, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_48 * 2.0f) * _106) - _116), ((_110 * 0.5f) - _116)));
    _136 = 1.0f - _61;
    _138 = (_61 * 2.0f) + -1.0f;
    // [sem: expr_sat]
    _150 = saturate((_110 - ((_136 * 1.5f) * ((((_134.x + -1.0f) + ((_84.w - _134.x) * saturate(_138))) * _61) + 1.0f))) / _136);
    _153 = saturate(1.5f - abs(_138));  // [sem: expr_sat]
    _162 = WaveReadLaneFirst(_materialIndex);
    _170 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_162 < (uint)170000), _162, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _177 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_170 < (uint)65000), _170, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_106 * _48) * 6.0f) - (_time.x * 0.2f)), ((_110 - _time.x) * 0.5f)));
    _187 = saturate(sqrt(_108 + (_87 * _87))) * (_153 * 4.0f);  // [sem: expr_sat]
    _200 = ((saturate(1.5f - abs((_150 * 2.0f) + -1.0f)) * 4.0f) * saturate((1.0f - _150) * 5.0f)) + _153;
    _203 = (_200 + (_187 * (_177.x + -0.5f))) * _87;
    _205 = (_200 + (_187 * (_177.y + -0.5f))) * _88;
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _211 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_203 * 0.033333335f)), (TEXCOORD.y - (_205 * 0.033333335f))));
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _219 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_203 * 0.06666667f)), (TEXCOORD.y - (_205 * 0.06666667f))));
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _230 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_203 * 0.1f)), (TEXCOORD.y - (_205 * 0.1f))));
    _237 = ((_219.x + _211.x) + _230.x) * 0.25f;
    _238 = ((_219.y + _211.y) + _230.y) * 0.25f;
    _239 = ((_219.z + _211.z) + _230.z) * 0.25f;
    _240 = dot(float3(_237, _238, _239), float3(0.2126f, 0.7152f, 0.0722f));
    _250 = WaveReadLaneFirst(_materialIndex);
    _258 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_250 < (uint)170000), _250, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._berserkColor);
    _261 = (float)((uint)((uint)(((uint)((uint)(_258)) >> 16) & 255)));
    _264 = (float)((uint)((uint)(((uint)((uint)(_258)) >> 8) & 255)));
    _266 = (float)((uint)((uint)(_258 & 255)));
    _291 = select(((_261 * 0.003921569f) < 0.04045f), (_261 * 0.000303527f), exp2(log2((_261 * 0.003717127f) + 0.052132703f) * 2.4f));
    _292 = select(((_264 * 0.003921569f) < 0.04045f), (_264 * 0.000303527f), exp2(log2((_264 * 0.003717127f) + 0.052132703f) * 2.4f));
    _293 = select(((_266 * 0.003921569f) < 0.04045f), (_266 * 0.000303527f), exp2(log2((_266 * 0.003717127f) + 0.052132703f) * 2.4f));
    _303 = (((_291 + -1.0f) * 0.8f) + 1.0f) * _237;
    _304 = (((_292 + -1.0f) * 0.8f) + 1.0f) * _238;
    _305 = (((_293 + -1.0f) * 0.8f) + 1.0f) * _239;
    // [sem: expr_sat]
    _313 = saturate((((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x) + (_84.z * 0.025f)) * 12.5f);
    _317 = (_313 * _313) * (3.0f - (_313 * 2.0f));
    _324 = (_317 * ((lerp(_237, _240, 0.8f)) - _303)) + _303;
    _325 = (_317 * ((lerp(_238, _240, 0.8f)) - _304)) + _304;
    _326 = (_317 * ((lerp(_239, _240, 0.8f)) - _305)) + _305;
    _329 = saturate((_30 + -0.5f) * 2.0f);  // [sem: expr_sat]
    _332 = max(0.001f, _exposure0.x);
    _346 = _150;
    _347 = ((((_291 / _332) - _324) * _329) + _324);
    _348 = ((((_292 / _332) - _325) * _329) + _325);
    _349 = ((((_293 / _332) - _326) * _329) + _326);
  } else {
    _346 = 0.0f;
    _347 = 0.0f;
    _348 = 0.0f;
    _349 = 0.0f;
  }
  _351 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    // [sem: _346_sat]
    _364 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _351, 0)))).x) & 127)))) + 0.5f);
  } else {
    _364 = saturate(_346);  // [sem: _346_sat]
  }
  _367 = (_localToneMappingParams.w > 0.0f);
  if (_367) {
    _373 = _userImageAdjust.z * _exposure0.x;
    _422 = exp2(log2(max(0.0f, (((_373 * max(0.0f, (((_347 * 1.70505f) - (_348 * 0.62179f)) - (_349 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _423 = exp2(log2(max(0.0f, (((max(0.0f, (((_348 * 1.1408f) - (_347 * 0.13026f)) - (_349 * 0.01055f))) * _373) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _424 = exp2(log2(max(0.0f, (((max(0.0f, (((_347 * -0.024f) - (_348 * 0.12897f)) + (_349 * 1.15297f))) * _373) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _426 = dot(float3(_422, _423, _424), float3(0.212671f, 0.71516f, 0.072169f));
    _433 = ((_422 - _426) * _powerParams.w) + _426;
    _434 = ((_423 - _426) * _powerParams.w) + _426;
    _435 = ((_424 - _426) * _powerParams.w) + _426;
    _454 = min(max(log2(mad(_435, 0.079223745f, mad(_434, 0.0784336f, (_433 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _455 = min(max(log2(mad(_435, 0.07916613f, mad(_434, 0.87846863f, (_433 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _456 = min(max(log2(mad(_435, 0.879143f, mad(_434, 0.0784336f, (_433 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _457 = _454 * 0.060606062f;
    _458 = _455 * 0.060606062f;
    _459 = _456 * 0.060606062f;
    _460 = _457 * _457;
    _461 = _458 * _458;
    _462 = _459 * _459;
    _508 = min(0.0f, (-0.0f - (((_454 * 0.0072181816f) + ((_460 * 0.4298f) + (((_460 * _460) * ((31.96f - (_454 * 2.4327273f)) + (_460 * 15.5f))) - ((_454 * 0.41624245f) * _460)))) + -0.00232f)));
    _509 = min(0.0f, (-0.0f - (((_455 * 0.0072181816f) + ((_461 * 0.4298f) + (((_461 * _461) * ((31.96f - (_455 * 2.4327273f)) + (_461 * 15.5f))) - ((_455 * 0.41624245f) * _461)))) + -0.00232f)));
    _510 = min(0.0f, (-0.0f - (((_456 * 0.0072181816f) + ((_462 * 0.4298f) + (((_462 * _462) * ((31.96f - (_456 * 2.4327273f)) + (_462 * 15.5f))) - ((_456 * 0.41624245f) * _462)))) + -0.00232f)));
    _511 = -0.0f - _508;
    _512 = -0.0f - _509;
    _513 = -0.0f - _510;
    _514 = dot(float3(_511, _512, _513), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _531 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _532 = -0.79999995f / _531;
      _533 = -1.2f / _531;
      _534 = 0.20000005f / _531;
      _540 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _543 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _550 = (_532 + 1.4f) + (_543 * (-0.39999998f - _532));
      _551 = (_533 + 1.6f) + (_543 * (-0.6f - _533));
      _552 = (_534 + 0.9f) + (_543 * (0.5f - _534));
      _569 = (lerp(_551, 1.2f, _540));  // [sem: blended]
      _570 = (lerp(_550, 1.0f, _540));  // [sem: blended]
      _571 = (lerp(_552, 1.4f, _540));  // [sem: blended]
    } else {
      _569 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _570 = 1.0f;  // [sem: blended]
      _571 = 1.4f;  // [sem: blended]
    }
    _581 = 1.0f - _569;
    _606 = ((exp2(log2(((saturate((_508 * _508) * _511) * _581) + _569) * _511) * _570) - _514) * _571) + _514;
    _607 = ((exp2(log2(((saturate((_509 * _509) * _512) * _581) + _569) * _512) * _570) - _514) * _571) + _514;
    _608 = ((exp2(log2(((saturate((_510 * _510) * _513) * _581) + _569) * _513) * _570) - _514) * _571) + _514;
    _627 = saturate(exp2(log2(mad(_608, -0.09902974f, mad(_607, -0.09802088f, (_606 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _628 = saturate(exp2(log2(mad(_608, -0.098961174f, mad(_607, 1.1519032f, (_606 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _629 = saturate(exp2(log2(mad(_608, 1.1510737f, mad(_607, -0.09804345f, (_606 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _635 = 1.0f - abs(_etcParams.w);
      _639 = saturate(_etcParams.w);  // [sem: expr_sat]
      _640 = (_635 * _627) + _639;
      _641 = (_635 * _628) + _639;
      _642 = (_635 * _629) + _639;
      if (_colorGradingParams.w > 0.0f) {
        _647 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _664 = (((max(0.0f, (1.0f - _640)) - _640) * _647) + _640);
        _665 = (((max(0.0f, (1.0f - _641)) - _641) * _647) + _641);
        _666 = (((max(0.0f, (1.0f - _642)) - _642) * _647) + _642);
      } else {
        _664 = _640;
        _665 = _641;
        _666 = _642;
      }
      _672 = _userImageAdjust.y + 1.0f;
      _676 = _userImageAdjust.x + 0.5f;
      _677 = ((_664 + -0.5f) * _672) + _676;
      _678 = ((_665 + -0.5f) * _672) + _676;
      _679 = ((_666 + -0.5f) * _672) + _676;
      _709 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _720 = exp2(log2(saturate(mad(_colorBlind0.z, _679, mad(_colorBlind0.y, _678, (_colorBlind0.x * _677))))) * _709);
      _721 = exp2(log2(saturate(mad(_colorBlind1.z, _679, mad(_colorBlind1.y, _678, (_colorBlind1.x * _677))))) * _709);
      _722 = exp2(log2(saturate(mad(_colorBlind2.z, _679, mad(_colorBlind2.y, _678, (_colorBlind2.x * _677))))) * _709);
    } else {
      _720 = _627;
      _721 = _628;
      _722 = _629;
    }
  } else {
    _720 = _347;
    _721 = _348;
    _722 = _349;
  }
  if (_etcParams.y > 1.0f) {
    _731 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _732 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _736 = saturate(1.0f - (dot(float2(_731, _732), float2(_731, _732)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _741 = (_736 * _720);
    _742 = (_736 * _721);
    _743 = (_736 * _722);
  } else {
    _741 = _720;
    _742 = _721;
    _743 = _722;
  }
  if (_367 && (_etcParams.z > 0.0f)) {
    _773 = select((_741 <= 0.0031308f), (_741 * 12.92f), (((pow(_741, 0.41666666f)) * 1.055f) + -0.055f));
    _774 = select((_742 <= 0.0031308f), (_742 * 12.92f), (((pow(_742, 0.41666666f)) * 1.055f) + -0.055f));
    _775 = select((_743 <= 0.0031308f), (_743 * 12.92f), (((pow(_743, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _773 = _741;
    _774 = _742;
    _775 = _743;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _780 = (float)((uint)((uint)(_351)));
    if (!(_780 < _viewDir.w)) {
      if (!(_780 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _789 = _773;
        _790 = _774;
        _791 = _775;
      } else {
        _789 = 0.0f;
        _790 = 0.0f;
        _791 = 0.0f;
      }
    } else {
      _789 = 0.0f;
      _790 = 0.0f;
      _791 = 0.0f;
    }
  } else {
    _789 = _773;
    _790 = _774;
    _791 = _775;
  }
  SV_Target.x = _789;
  SV_Target.y = _790;
  SV_Target.z = _791;
  SV_Target.w = _364;
  return SV_Target;
}
