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
  float4 _42;
  float _52;
  float _53;
  float _54;
  float _76;
  float _77;
  float _78;
  float _79;
  float _80;
  float _81;
  int _82;
  float _90;
  int _91;
  float _99;
  float _413;
  float _414;
  float _415;
  float _429;
  float _634;
  float _635;
  float _636;
  float _729;
  float _730;
  float _731;
  float _785;
  float _786;
  float _787;
  float _806;
  float _807;
  float _808;
  float _838;
  float _839;
  float _840;
  float _854;
  float _855;
  float _856;
  int _110;
  int _118;
  float4 _125;
  float4 _132;
  float _143;
  float _144;
  float _145;
  float _173;
  float _177;
  float _178;
  float _179;
  float _180;
  float _181;
  float _183;
  bool _186;
  bool _187;
  bool _188;
  bool _189;
  float _198;
  float _202;
  int _217;
  int _225;
  float4 _232;
  float _237;
  float _240;
  float _241;
  int _260;
  int _268;
  float4 _275;
  int _277;
  int _285;
  float _288;
  float _291;
  float _293;
  float _323;
  float _329;
  float _336;
  float _337;
  float _338;
  int _339;
  int _347;
  float _350;
  float _353;
  float _355;
  float _385;
  float _390;
  float _397;
  float _398;
  float _399;
  float _402;
  uint _416;
  bool _432;
  float _438;
  float _487;
  float _488;
  float _489;
  float _491;
  float _498;
  float _499;
  float _500;
  float _519;
  float _520;
  float _521;
  float _522;
  float _523;
  float _524;
  float _525;
  float _526;
  float _527;
  float _573;
  float _574;
  float _575;
  float _576;
  float _577;
  float _578;
  float _579;
  float _596;
  float _597;
  float _598;
  float _599;
  float _605;
  float _608;
  float _615;
  float _616;
  float _617;
  float _646;
  float _671;
  float _672;
  float _673;
  float _692;
  float _693;
  float _694;
  float _700;
  float _704;
  float _705;
  float _706;
  float _707;
  float _712;
  float _737;
  float _741;
  float _742;
  float _743;
  float _744;
  float _774;
  float _796;
  float _797;
  float _801;
  float _845;
  float _866;
  float _867;
  float _868;
  _22 = WaveReadLaneFirst(_materialIndex);
  _30 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_22 < (uint)170000), _22, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._chromaticAberrationRatio);
  _31 = WaveReadLaneFirst(_materialIndex);
  _39 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_31 < (uint)170000), _31, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._chromaticAberrationShiftValue);
  _42 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _52 = (pow(_42.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _53 = (pow(_42.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _54 = (pow(_42.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _76 = exp2(log2(max(0.0f, (_52 + -0.8359375f)) / (18.851562f - (_52 * 18.6875f))) * 6.277395f);
  _77 = exp2(log2(max(0.0f, (_53 + -0.8359375f)) / (18.851562f - (_53 * 18.6875f))) * 6.277395f);
  _78 = exp2(log2(max(0.0f, (_54 + -0.8359375f)) / (18.851562f - (_54 * 18.6875f))) * 6.277395f);
  _79 = _76 * 10000.0f;
  _80 = _77 * 10000.0f;
  _81 = _78 * 10000.0f;
  _82 = WaveReadLaneFirst(_materialIndex);
  _90 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_82 < (uint)170000), _82, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._blendRatio);
  _91 = WaveReadLaneFirst(_materialIndex);
  _99 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_91 < (uint)170000), _91, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._enableBlend);
  if ((_90 >= 0.01f) && (_99 > 0.01f)) {
    _110 = WaveReadLaneFirst(_materialIndex);
    _118 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_110 < (uint)170000), _110, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _125 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_118 < (uint)65000), _118, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, ((_time.x * 0.2f) + TEXCOORD.y)));
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _132 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _143 = (pow(_132.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _144 = (pow(_132.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _145 = (pow(_132.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _173 = _132.w * 10000.0f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _177 = ((exp2(log2(max(0.0f, (_143 + -0.8359375f)) / (18.851562f - (_143 * 18.6875f))) * 6.277395f) - _76) * _173) + _79;
    _178 = ((exp2(log2(max(0.0f, (_144 + -0.8359375f)) / (18.851562f - (_144 * 18.6875f))) * 6.277395f) - _77) * _173) + _80;
    _179 = ((exp2(log2(max(0.0f, (_145 + -0.8359375f)) / (18.851562f - (_145 * 18.6875f))) * 6.277395f) - _78) * _173) + _81;
    _180 = TEXCOORD.x + -0.5f;
    _181 = TEXCOORD.y + -0.5f;
    _183 = atan(_181 / _180);
    _186 = (_180 < 0.0f);
    _187 = (_180 == 0.0f);
    _188 = (_181 >= 0.0f);
    _189 = (_181 < 0.0f);
    _198 = select((_187 && _188), 0.5f, select((_187 && _189), -0.5f, (select((_186 && _189), (_183 + -3.1415927f), select((_186 && _188), (_183 + 3.1415927f), _183)) * 0.31830987f)));
    _202 = sqrt((_181 * _181) + (_180 * _180));
    _217 = WaveReadLaneFirst(_materialIndex);
    _225 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_217 < (uint)170000), _217, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _232 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_225 < (uint)65000), _225, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_time.x * -0.2f) - ((_125.z + -0.5f) * 0.5f)) + (_198 * 15.0f)), (((_202 * 2.0f) - ((_125.w + -0.5f) * 0.5f)) - (_time.x * 1.5f))));
    _237 = (1.75f - saturate(_90 * 1.4285715f)) * 0.5f;
    _240 = max((abs(_180) - _237), 0.0f);
    _241 = max((abs(_181) - _237), 0.0f);
    _260 = WaveReadLaneFirst(_materialIndex);
    _268 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_260 < (uint)170000), _260, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._borderEdgeNoiseTexture);
    _275 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_268 < (uint)65000), _268, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_198 * 9.0f) + (_125.x * 0.05f)) - (_232.x * 0.1f)), ((_202 + (_125.y * 0.05f)) - ((_time.x + _232.x) * 0.1f))));
    _277 = WaveReadLaneFirst(_materialIndex);
    _285 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_277 < (uint)170000), _277, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._berserkColor);
    _288 = (float)((uint)((uint)(((uint)((uint)(_285)) >> 16) & 255)));
    _291 = (float)((uint)((uint)(((uint)((uint)(_285)) >> 8) & 255)));
    _293 = (float)((uint)((uint)(_285 & 255)));
    _323 = max(0.001f, _exposure0.x);
    _329 = ((_275.y * _275.y) * saturate(sqrt((_241 * _241) + (_240 * _240)) * 6.6666665f)) * _275.y;
    _336 = (((select(((_288 * 0.003921569f) < 0.04045f), (_288 * 0.000303527f), exp2(log2((_288 * 0.003717127f) + 0.052132703f) * 2.4f)) / _323) - _177) * _329) + _177;
    _337 = (((select(((_291 * 0.003921569f) < 0.04045f), (_291 * 0.000303527f), exp2(log2((_291 * 0.003717127f) + 0.052132703f) * 2.4f)) / _323) - _178) * _329) + _178;
    _338 = (((select(((_293 * 0.003921569f) < 0.04045f), (_293 * 0.000303527f), exp2(log2((_293 * 0.003717127f) + 0.052132703f) * 2.4f)) / _323) - _179) * _329) + _179;
    _339 = WaveReadLaneFirst(_materialIndex);
    _347 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_339 < (uint)170000), _339, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._berserkEndColor);
    _350 = (float)((uint)((uint)(((uint)((uint)(_347)) >> 16) & 255)));
    _353 = (float)((uint)((uint)(((uint)((uint)(_347)) >> 8) & 255)));
    _355 = (float)((uint)((uint)(_347 & 255)));
    _385 = max(0.001f, _exposure0.x);
    _390 = select((_90 > 0.7f), 1.0f, 0.0f);
    _397 = (((select(((_350 * 0.003921569f) < 0.04045f), (_350 * 0.000303527f), exp2(log2((_350 * 0.003717127f) + 0.052132703f) * 2.4f)) / _385) - _336) * _390) + _336;
    _398 = (((select(((_353 * 0.003921569f) < 0.04045f), (_353 * 0.000303527f), exp2(log2((_353 * 0.003717127f) + 0.052132703f) * 2.4f)) / _385) - _337) * _390) + _337;
    _399 = (((select(((_355 * 0.003921569f) < 0.04045f), (_355 * 0.000303527f), exp2(log2((_355 * 0.003717127f) + 0.052132703f) * 2.4f)) / _385) - _338) * _390) + _338;
    _402 = saturate((_90 + -0.8f) * 5.0f);  // [sem: expr_sat]
    _413 = (lerp(_397, _79, _402));  // [sem: blended]
    _414 = (lerp(_398, _80, _402));  // [sem: blended]
    _415 = (lerp(_399, _81, _402));  // [sem: blended]
  } else {
    _413 = _79;  // [sem: blended]
    _414 = _80;  // [sem: blended]
    _415 = _81;  // [sem: blended]
  }
  _416 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _429 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _416, 0)))).x) & 127)))) + 0.5f);
  } else {
    _429 = 1.0f;
  }
  _432 = (_localToneMappingParams.w > 0.0f);
  if (_432) {
    _438 = _userImageAdjust.z * _exposure0.x;
    _487 = exp2(log2(max(0.0f, (((_438 * max(0.0f, (((_413 * 1.70505f) - (_414 * 0.62179f)) - (_415 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _488 = exp2(log2(max(0.0f, (((max(0.0f, (((_414 * 1.1408f) - (_413 * 0.13026f)) - (_415 * 0.01055f))) * _438) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _489 = exp2(log2(max(0.0f, (((max(0.0f, (((_413 * -0.024f) - (_414 * 0.12897f)) + (_415 * 1.15297f))) * _438) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _491 = dot(float3(_487, _488, _489), float3(0.212671f, 0.71516f, 0.072169f));
    _498 = ((_487 - _491) * _powerParams.w) + _491;
    _499 = ((_488 - _491) * _powerParams.w) + _491;
    _500 = ((_489 - _491) * _powerParams.w) + _491;
    _519 = min(max(log2(mad(_500, 0.079223745f, mad(_499, 0.0784336f, (_498 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _520 = min(max(log2(mad(_500, 0.07916613f, mad(_499, 0.87846863f, (_498 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _521 = min(max(log2(mad(_500, 0.879143f, mad(_499, 0.0784336f, (_498 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _522 = _519 * 0.060606062f;
    _523 = _520 * 0.060606062f;
    _524 = _521 * 0.060606062f;
    _525 = _522 * _522;
    _526 = _523 * _523;
    _527 = _524 * _524;
    _573 = min(0.0f, (-0.0f - (((_519 * 0.0072181816f) + ((_525 * 0.4298f) + (((_525 * _525) * ((31.96f - (_519 * 2.4327273f)) + (_525 * 15.5f))) - ((_519 * 0.41624245f) * _525)))) + -0.00232f)));
    _574 = min(0.0f, (-0.0f - (((_520 * 0.0072181816f) + ((_526 * 0.4298f) + (((_526 * _526) * ((31.96f - (_520 * 2.4327273f)) + (_526 * 15.5f))) - ((_520 * 0.41624245f) * _526)))) + -0.00232f)));
    _575 = min(0.0f, (-0.0f - (((_521 * 0.0072181816f) + ((_527 * 0.4298f) + (((_527 * _527) * ((31.96f - (_521 * 2.4327273f)) + (_527 * 15.5f))) - ((_521 * 0.41624245f) * _527)))) + -0.00232f)));
    _576 = -0.0f - _573;
    _577 = -0.0f - _574;
    _578 = -0.0f - _575;
    _579 = dot(float3(_576, _577, _578), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _596 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _597 = -0.79999995f / _596;
      _598 = -1.2f / _596;
      _599 = 0.20000005f / _596;
      _605 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _608 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _615 = (_597 + 1.4f) + (_608 * (-0.39999998f - _597));
      _616 = (_598 + 1.6f) + (_608 * (-0.6f - _598));
      _617 = (_599 + 0.9f) + (_608 * (0.5f - _599));
      _634 = (lerp(_616, 1.2f, _605));  // [sem: blended]
      _635 = (lerp(_615, 1.0f, _605));  // [sem: blended]
      _636 = (lerp(_617, 1.4f, _605));  // [sem: blended]
    } else {
      _634 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _635 = 1.0f;  // [sem: blended]
      _636 = 1.4f;  // [sem: blended]
    }
    _646 = 1.0f - _634;
    _671 = ((exp2(log2(((saturate((_573 * _573) * _576) * _646) + _634) * _576) * _635) - _579) * _636) + _579;
    _672 = ((exp2(log2(((saturate((_574 * _574) * _577) * _646) + _634) * _577) * _635) - _579) * _636) + _579;
    _673 = ((exp2(log2(((saturate((_575 * _575) * _578) * _646) + _634) * _578) * _635) - _579) * _636) + _579;
    _692 = saturate(exp2(log2(mad(_673, -0.09902974f, mad(_672, -0.09802088f, (_671 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _693 = saturate(exp2(log2(mad(_673, -0.098961174f, mad(_672, 1.1519032f, (_671 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _694 = saturate(exp2(log2(mad(_673, 1.1510737f, mad(_672, -0.09804345f, (_671 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _700 = 1.0f - abs(_etcParams.w);
      _704 = saturate(_etcParams.w);  // [sem: expr_sat]
      _705 = (_700 * _692) + _704;
      _706 = (_700 * _693) + _704;
      _707 = (_700 * _694) + _704;
      if (_colorGradingParams.w > 0.0f) {
        _712 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _729 = (((max(0.0f, (1.0f - _705)) - _705) * _712) + _705);
        _730 = (((max(0.0f, (1.0f - _706)) - _706) * _712) + _706);
        _731 = (((max(0.0f, (1.0f - _707)) - _707) * _712) + _707);
      } else {
        _729 = _705;
        _730 = _706;
        _731 = _707;
      }
      _737 = _userImageAdjust.y + 1.0f;
      _741 = _userImageAdjust.x + 0.5f;
      _742 = ((_729 + -0.5f) * _737) + _741;
      _743 = ((_730 + -0.5f) * _737) + _741;
      _744 = ((_731 + -0.5f) * _737) + _741;
      _774 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _785 = exp2(log2(saturate(mad(_colorBlind0.z, _744, mad(_colorBlind0.y, _743, (_colorBlind0.x * _742))))) * _774);
      _786 = exp2(log2(saturate(mad(_colorBlind1.z, _744, mad(_colorBlind1.y, _743, (_colorBlind1.x * _742))))) * _774);
      _787 = exp2(log2(saturate(mad(_colorBlind2.z, _744, mad(_colorBlind2.y, _743, (_colorBlind2.x * _742))))) * _774);
    } else {
      _785 = _692;
      _786 = _693;
      _787 = _694;
    }
  } else {
    _785 = _413;
    _786 = _414;
    _787 = _415;
  }
  if (_etcParams.y > 1.0f) {
    _796 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _797 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _801 = saturate(1.0f - (dot(float2(_796, _797), float2(_796, _797)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _806 = (_801 * _785);
    _807 = (_801 * _786);
    _808 = (_801 * _787);
  } else {
    _806 = _785;
    _807 = _786;
    _808 = _787;
  }
  if (_432 && (_etcParams.z > 0.0f)) {
    _838 = select((_806 <= 0.0031308f), (_806 * 12.92f), (((pow(_806, 0.41666666f)) * 1.055f) + -0.055f));
    _839 = select((_807 <= 0.0031308f), (_807 * 12.92f), (((pow(_807, 0.41666666f)) * 1.055f) + -0.055f));
    _840 = select((_808 <= 0.0031308f), (_808 * 12.92f), (((pow(_808, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _838 = _806;
    _839 = _807;
    _840 = _808;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _845 = (float)((uint)((uint)(_416)));
    if (!(_845 < _viewDir.w)) {
      if (!(_845 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _854 = _838;
        _855 = _839;
        _856 = _840;
      } else {
        _854 = 0.0f;
        _855 = 0.0f;
        _856 = 0.0f;
      }
    } else {
      _854 = 0.0f;
      _855 = 0.0f;
      _856 = 0.0f;
    }
  } else {
    _854 = _838;
    _855 = _839;
    _856 = _840;
  }
  _866 = exp2(log2(_854 * 0.0001f) * 0.15930176f);
  _867 = exp2(log2(_855 * 0.0001f) * 0.15930176f);
  _868 = exp2(log2(_856 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_866 * 18.6875f) + 1.0f)) * ((_866 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_867 * 18.6875f) + 1.0f)) * ((_867 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_868 * 18.6875f) + 1.0f)) * ((_868 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _429;
  return SV_Target;
}
