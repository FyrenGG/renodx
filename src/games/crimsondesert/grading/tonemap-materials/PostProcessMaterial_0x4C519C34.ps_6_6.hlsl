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
  float _445;
  float _446;
  float _447;
  float _448;
  float _463;
  float _668;
  float _669;
  float _670;
  float _763;
  float _764;
  float _765;
  float _819;
  float _820;
  float _821;
  float _840;
  float _841;
  float _842;
  float _872;
  float _873;
  float _874;
  float _888;
  float _889;
  float _890;
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
  float _221;
  float _222;
  float _223;
  float4 _252;
  float _262;
  float _263;
  float _264;
  float4 _296;
  float _306;
  float _307;
  float _308;
  float _336;
  float _337;
  float _338;
  float _339;
  int _349;
  int _357;
  float _360;
  float _363;
  float _365;
  float _390;
  float _391;
  float _392;
  float _402;
  float _403;
  float _404;
  float _412;
  float _416;
  float _423;
  float _424;
  float _425;
  float _428;
  float _431;
  uint _450;
  bool _466;
  float _472;
  float _521;
  float _522;
  float _523;
  float _525;
  float _532;
  float _533;
  float _534;
  float _553;
  float _554;
  float _555;
  float _556;
  float _557;
  float _558;
  float _559;
  float _560;
  float _561;
  float _607;
  float _608;
  float _609;
  float _610;
  float _611;
  float _612;
  float _613;
  float _630;
  float _631;
  float _632;
  float _633;
  float _639;
  float _642;
  float _649;
  float _650;
  float _651;
  float _680;
  float _705;
  float _706;
  float _707;
  float _726;
  float _727;
  float _728;
  float _734;
  float _738;
  float _739;
  float _740;
  float _741;
  float _746;
  float _771;
  float _775;
  float _776;
  float _777;
  float _778;
  float _808;
  float _830;
  float _831;
  float _835;
  float _879;
  float _900;
  float _901;
  float _902;
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
    _221 = (pow(_211.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _222 = (pow(_211.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _223 = (pow(_211.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _252 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_203 * 0.06666667f)), (TEXCOORD.y - (_205 * 0.06666667f))));
    _262 = (pow(_252.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _263 = (pow(_252.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _264 = (pow(_252.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _296 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_203 * 0.1f)), (TEXCOORD.y - (_205 * 0.1f))));
    _306 = (pow(_296.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _307 = (pow(_296.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _308 = (pow(_296.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _336 = ((exp2(log2(max(0.0f, (_262 + -0.8359375f)) / (18.851562f - (_262 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_221 + -0.8359375f)) / (18.851562f - (_221 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_306 + -0.8359375f)) / (18.851562f - (_306 * 18.6875f))) * 6.277395f)) * 2500.0f;
    _337 = ((exp2(log2(max(0.0f, (_263 + -0.8359375f)) / (18.851562f - (_263 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_222 + -0.8359375f)) / (18.851562f - (_222 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_307 + -0.8359375f)) / (18.851562f - (_307 * 18.6875f))) * 6.277395f)) * 2500.0f;
    _338 = ((exp2(log2(max(0.0f, (_264 + -0.8359375f)) / (18.851562f - (_264 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_223 + -0.8359375f)) / (18.851562f - (_223 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_308 + -0.8359375f)) / (18.851562f - (_308 * 18.6875f))) * 6.277395f)) * 2500.0f;
    _339 = dot(float3(_336, _337, _338), float3(0.2126f, 0.7152f, 0.0722f));
    _349 = WaveReadLaneFirst(_materialIndex);
    _357 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_349 < (uint)170000), _349, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._berserkColor);
    _360 = (float)((uint)((uint)(((uint)((uint)(_357)) >> 16) & 255)));
    _363 = (float)((uint)((uint)(((uint)((uint)(_357)) >> 8) & 255)));
    _365 = (float)((uint)((uint)(_357 & 255)));
    _390 = select(((_360 * 0.003921569f) < 0.04045f), (_360 * 0.000303527f), exp2(log2((_360 * 0.003717127f) + 0.052132703f) * 2.4f));
    _391 = select(((_363 * 0.003921569f) < 0.04045f), (_363 * 0.000303527f), exp2(log2((_363 * 0.003717127f) + 0.052132703f) * 2.4f));
    _392 = select(((_365 * 0.003921569f) < 0.04045f), (_365 * 0.000303527f), exp2(log2((_365 * 0.003717127f) + 0.052132703f) * 2.4f));
    _402 = (((_390 + -1.0f) * 0.8f) + 1.0f) * _336;
    _403 = (((_391 + -1.0f) * 0.8f) + 1.0f) * _337;
    _404 = (((_392 + -1.0f) * 0.8f) + 1.0f) * _338;
    // [sem: expr_sat]
    _412 = saturate((((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x) + (_84.z * 0.025f)) * 12.5f);
    _416 = (_412 * _412) * (3.0f - (_412 * 2.0f));
    _423 = (_416 * ((lerp(_336, _339, 0.8f)) - _402)) + _402;
    _424 = (_416 * ((lerp(_337, _339, 0.8f)) - _403)) + _403;
    _425 = (_416 * ((lerp(_338, _339, 0.8f)) - _404)) + _404;
    _428 = saturate((_30 + -0.5f) * 2.0f);  // [sem: expr_sat]
    _431 = max(0.001f, _exposure0.x);
    _445 = _150;
    _446 = ((((_390 / _431) - _423) * _428) + _423);
    _447 = ((((_391 / _431) - _424) * _428) + _424);
    _448 = ((((_392 / _431) - _425) * _428) + _425);
  } else {
    _445 = 0.0f;
    _446 = 0.0f;
    _447 = 0.0f;
    _448 = 0.0f;
  }
  _450 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    // [sem: _445_sat]
    _463 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _450, 0)))).x) & 127)))) + 0.5f);
  } else {
    _463 = saturate(_445);  // [sem: _445_sat]
  }
  _466 = (_localToneMappingParams.w > 0.0f);
  if (_466) {
    _472 = _userImageAdjust.z * _exposure0.x;
    _521 = exp2(log2(max(0.0f, (((_472 * max(0.0f, (((_446 * 1.70505f) - (_447 * 0.62179f)) - (_448 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _522 = exp2(log2(max(0.0f, (((max(0.0f, (((_447 * 1.1408f) - (_446 * 0.13026f)) - (_448 * 0.01055f))) * _472) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _523 = exp2(log2(max(0.0f, (((max(0.0f, (((_446 * -0.024f) - (_447 * 0.12897f)) + (_448 * 1.15297f))) * _472) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _525 = dot(float3(_521, _522, _523), float3(0.212671f, 0.71516f, 0.072169f));
    _532 = ((_521 - _525) * _powerParams.w) + _525;
    _533 = ((_522 - _525) * _powerParams.w) + _525;
    _534 = ((_523 - _525) * _powerParams.w) + _525;
    _553 = min(max(log2(mad(_534, 0.079223745f, mad(_533, 0.0784336f, (_532 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _554 = min(max(log2(mad(_534, 0.07916613f, mad(_533, 0.87846863f, (_532 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _555 = min(max(log2(mad(_534, 0.879143f, mad(_533, 0.0784336f, (_532 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _556 = _553 * 0.060606062f;
    _557 = _554 * 0.060606062f;
    _558 = _555 * 0.060606062f;
    _559 = _556 * _556;
    _560 = _557 * _557;
    _561 = _558 * _558;
    _607 = min(0.0f, (-0.0f - (((_553 * 0.0072181816f) + ((_559 * 0.4298f) + (((_559 * _559) * ((31.96f - (_553 * 2.4327273f)) + (_559 * 15.5f))) - ((_553 * 0.41624245f) * _559)))) + -0.00232f)));
    _608 = min(0.0f, (-0.0f - (((_554 * 0.0072181816f) + ((_560 * 0.4298f) + (((_560 * _560) * ((31.96f - (_554 * 2.4327273f)) + (_560 * 15.5f))) - ((_554 * 0.41624245f) * _560)))) + -0.00232f)));
    _609 = min(0.0f, (-0.0f - (((_555 * 0.0072181816f) + ((_561 * 0.4298f) + (((_561 * _561) * ((31.96f - (_555 * 2.4327273f)) + (_561 * 15.5f))) - ((_555 * 0.41624245f) * _561)))) + -0.00232f)));
    _610 = -0.0f - _607;
    _611 = -0.0f - _608;
    _612 = -0.0f - _609;
    _613 = dot(float3(_610, _611, _612), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _630 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _631 = -0.79999995f / _630;
      _632 = -1.2f / _630;
      _633 = 0.20000005f / _630;
      _639 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _642 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _649 = (_631 + 1.4f) + (_642 * (-0.39999998f - _631));
      _650 = (_632 + 1.6f) + (_642 * (-0.6f - _632));
      _651 = (_633 + 0.9f) + (_642 * (0.5f - _633));
      _668 = (lerp(_650, 1.2f, _639));  // [sem: blended]
      _669 = (lerp(_649, 1.0f, _639));  // [sem: blended]
      _670 = (lerp(_651, 1.4f, _639));  // [sem: blended]
    } else {
      _668 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _669 = 1.0f;  // [sem: blended]
      _670 = 1.4f;  // [sem: blended]
    }
    _680 = 1.0f - _668;
    _705 = ((exp2(log2(((saturate((_607 * _607) * _610) * _680) + _668) * _610) * _669) - _613) * _670) + _613;
    _706 = ((exp2(log2(((saturate((_608 * _608) * _611) * _680) + _668) * _611) * _669) - _613) * _670) + _613;
    _707 = ((exp2(log2(((saturate((_609 * _609) * _612) * _680) + _668) * _612) * _669) - _613) * _670) + _613;
    _726 = saturate(exp2(log2(mad(_707, -0.09902974f, mad(_706, -0.09802088f, (_705 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _727 = saturate(exp2(log2(mad(_707, -0.098961174f, mad(_706, 1.1519032f, (_705 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _728 = saturate(exp2(log2(mad(_707, 1.1510737f, mad(_706, -0.09804345f, (_705 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _734 = 1.0f - abs(_etcParams.w);
      _738 = saturate(_etcParams.w);  // [sem: expr_sat]
      _739 = (_734 * _726) + _738;
      _740 = (_734 * _727) + _738;
      _741 = (_734 * _728) + _738;
      if (_colorGradingParams.w > 0.0f) {
        _746 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _763 = (((max(0.0f, (1.0f - _739)) - _739) * _746) + _739);
        _764 = (((max(0.0f, (1.0f - _740)) - _740) * _746) + _740);
        _765 = (((max(0.0f, (1.0f - _741)) - _741) * _746) + _741);
      } else {
        _763 = _739;
        _764 = _740;
        _765 = _741;
      }
      _771 = _userImageAdjust.y + 1.0f;
      _775 = _userImageAdjust.x + 0.5f;
      _776 = ((_763 + -0.5f) * _771) + _775;
      _777 = ((_764 + -0.5f) * _771) + _775;
      _778 = ((_765 + -0.5f) * _771) + _775;
      _808 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _819 = exp2(log2(saturate(mad(_colorBlind0.z, _778, mad(_colorBlind0.y, _777, (_colorBlind0.x * _776))))) * _808);
      _820 = exp2(log2(saturate(mad(_colorBlind1.z, _778, mad(_colorBlind1.y, _777, (_colorBlind1.x * _776))))) * _808);
      _821 = exp2(log2(saturate(mad(_colorBlind2.z, _778, mad(_colorBlind2.y, _777, (_colorBlind2.x * _776))))) * _808);
    } else {
      _819 = _726;
      _820 = _727;
      _821 = _728;
    }
  } else {
    _819 = _446;
    _820 = _447;
    _821 = _448;
  }
  if (_etcParams.y > 1.0f) {
    _830 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _831 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _835 = saturate(1.0f - (dot(float2(_830, _831), float2(_830, _831)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _840 = (_835 * _819);
    _841 = (_835 * _820);
    _842 = (_835 * _821);
  } else {
    _840 = _819;
    _841 = _820;
    _842 = _821;
  }
  if (_466 && (_etcParams.z > 0.0f)) {
    _872 = select((_840 <= 0.0031308f), (_840 * 12.92f), (((pow(_840, 0.41666666f)) * 1.055f) + -0.055f));
    _873 = select((_841 <= 0.0031308f), (_841 * 12.92f), (((pow(_841, 0.41666666f)) * 1.055f) + -0.055f));
    _874 = select((_842 <= 0.0031308f), (_842 * 12.92f), (((pow(_842, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _872 = _840;
    _873 = _841;
    _874 = _842;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _879 = (float)((uint)((uint)(_450)));
    if (!(_879 < _viewDir.w)) {
      if (!(_879 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _888 = _872;
        _889 = _873;
        _890 = _874;
      } else {
        _888 = 0.0f;
        _889 = 0.0f;
        _890 = 0.0f;
      }
    } else {
      _888 = 0.0f;
      _889 = 0.0f;
      _890 = 0.0f;
    }
  } else {
    _888 = _872;
    _889 = _873;
    _890 = _874;
  }
  _900 = exp2(log2(_888 * 0.0001f) * 0.15930176f);
  _901 = exp2(log2(_889 * 0.0001f) * 0.15930176f);
  _902 = exp2(log2(_890 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_900 * 18.6875f) + 1.0f)) * ((_900 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_901 * 18.6875f) + 1.0f)) * ((_901 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_902 * 18.6875f) + 1.0f)) * ((_902 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _463;
  return SV_Target;
}
