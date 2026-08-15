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
  float4 _42;
  int _46;
  float _54;
  int _55;
  float _63;
  float _343;
  float _344;
  float _345;
  float _359;
  float _564;
  float _565;
  float _566;
  float _659;
  float _660;
  float _661;
  float _715;
  float _716;
  float _717;
  float _736;
  float _737;
  float _738;
  float _768;
  float _769;
  float _770;
  float _784;
  float _785;
  float _786;
  int _74;
  int _82;
  float4 _89;
  float4 _96;
  float _107;
  float _108;
  float _109;
  float _110;
  float _111;
  float _113;
  bool _116;
  bool _117;
  bool _118;
  bool _119;
  float _128;
  float _132;
  int _147;
  int _155;
  float4 _162;
  float _167;
  float _170;
  float _171;
  int _190;
  int _198;
  float4 _205;
  int _207;
  int _215;
  float _218;
  float _221;
  float _223;
  float _253;
  float _259;
  float _266;
  float _267;
  float _268;
  int _269;
  int _277;
  float _280;
  float _283;
  float _285;
  float _315;
  float _320;
  float _327;
  float _328;
  float _329;
  float _332;
  uint _346;
  bool _362;
  float _368;
  float _417;
  float _418;
  float _419;
  float _421;
  float _428;
  float _429;
  float _430;
  float _449;
  float _450;
  float _451;
  float _452;
  float _453;
  float _454;
  float _455;
  float _456;
  float _457;
  float _503;
  float _504;
  float _505;
  float _506;
  float _507;
  float _508;
  float _509;
  float _526;
  float _527;
  float _528;
  float _529;
  float _535;
  float _538;
  float _545;
  float _546;
  float _547;
  float _576;
  float _601;
  float _602;
  float _603;
  float _622;
  float _623;
  float _624;
  float _630;
  float _634;
  float _635;
  float _636;
  float _637;
  float _642;
  float _667;
  float _671;
  float _672;
  float _673;
  float _674;
  float _704;
  float _726;
  float _727;
  float _731;
  float _775;
  _22 = WaveReadLaneFirst(_materialIndex);
  _30 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_22 < (uint)170000), _22, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._chromaticAberrationRatio);
  _31 = WaveReadLaneFirst(_materialIndex);
  _39 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_31 < (uint)170000), _31, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._chromaticAberrationShiftValue);
  _42 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _46 = WaveReadLaneFirst(_materialIndex);
  _54 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_46 < (uint)170000), _46, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._blendRatio);
  _55 = WaveReadLaneFirst(_materialIndex);
  _63 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_55 < (uint)170000), _55, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._enableBlend);
  if ((_54 >= 0.01f) && (_63 > 0.01f)) {
    _74 = WaveReadLaneFirst(_materialIndex);
    _82 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_74 < (uint)170000), _74, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _89 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_82 < (uint)65000), _82, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, ((_time.x * 0.2f) + TEXCOORD.y)));
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _96 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _107 = ((_96.x - _42.x) * _96.w) + _42.x;
    _108 = ((_96.y - _42.y) * _96.w) + _42.y;
    _109 = ((_96.z - _42.z) * _96.w) + _42.z;
    _110 = TEXCOORD.x + -0.5f;
    _111 = TEXCOORD.y + -0.5f;
    _113 = atan(_111 / _110);
    _116 = (_110 < 0.0f);
    _117 = (_110 == 0.0f);
    _118 = (_111 >= 0.0f);
    _119 = (_111 < 0.0f);
    _128 = select((_117 && _118), 0.5f, select((_117 && _119), -0.5f, (select((_116 && _119), (_113 + -3.1415927f), select((_116 && _118), (_113 + 3.1415927f), _113)) * 0.31830987f)));
    _132 = sqrt((_111 * _111) + (_110 * _110));
    _147 = WaveReadLaneFirst(_materialIndex);
    _155 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_147 < (uint)170000), _147, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _162 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_155 < (uint)65000), _155, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_time.x * -0.2f) - ((_89.z + -0.5f) * 0.5f)) + (_128 * 15.0f)), (((_132 * 2.0f) - ((_89.w + -0.5f) * 0.5f)) - (_time.x * 1.5f))));
    _167 = (1.75f - saturate(_54 * 1.4285715f)) * 0.5f;
    _170 = max((abs(_110) - _167), 0.0f);
    _171 = max((abs(_111) - _167), 0.0f);
    _190 = WaveReadLaneFirst(_materialIndex);
    _198 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_190 < (uint)170000), _190, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._borderEdgeNoiseTexture);
    _205 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_198 < (uint)65000), _198, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_128 * 9.0f) + (_89.x * 0.05f)) - (_162.x * 0.1f)), ((_132 + (_89.y * 0.05f)) - ((_time.x + _162.x) * 0.1f))));
    _207 = WaveReadLaneFirst(_materialIndex);
    _215 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_207 < (uint)170000), _207, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._berserkColor);
    _218 = (float)((uint)((uint)(((uint)((uint)(_215)) >> 16) & 255)));
    _221 = (float)((uint)((uint)(((uint)((uint)(_215)) >> 8) & 255)));
    _223 = (float)((uint)((uint)(_215 & 255)));
    _253 = max(0.001f, _exposure0.x);
    _259 = ((_205.y * _205.y) * saturate(sqrt((_171 * _171) + (_170 * _170)) * 6.6666665f)) * _205.y;
    _266 = (((select(((_218 * 0.003921569f) < 0.04045f), (_218 * 0.000303527f), exp2(log2((_218 * 0.003717127f) + 0.052132703f) * 2.4f)) / _253) - _107) * _259) + _107;
    _267 = (((select(((_221 * 0.003921569f) < 0.04045f), (_221 * 0.000303527f), exp2(log2((_221 * 0.003717127f) + 0.052132703f) * 2.4f)) / _253) - _108) * _259) + _108;
    _268 = (((select(((_223 * 0.003921569f) < 0.04045f), (_223 * 0.000303527f), exp2(log2((_223 * 0.003717127f) + 0.052132703f) * 2.4f)) / _253) - _109) * _259) + _109;
    _269 = WaveReadLaneFirst(_materialIndex);
    _277 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_269 < (uint)170000), _269, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._berserkEndColor);
    _280 = (float)((uint)((uint)(((uint)((uint)(_277)) >> 16) & 255)));
    _283 = (float)((uint)((uint)(((uint)((uint)(_277)) >> 8) & 255)));
    _285 = (float)((uint)((uint)(_277 & 255)));
    _315 = max(0.001f, _exposure0.x);
    _320 = select((_54 > 0.7f), 1.0f, 0.0f);
    _327 = (((select(((_280 * 0.003921569f) < 0.04045f), (_280 * 0.000303527f), exp2(log2((_280 * 0.003717127f) + 0.052132703f) * 2.4f)) / _315) - _266) * _320) + _266;
    _328 = (((select(((_283 * 0.003921569f) < 0.04045f), (_283 * 0.000303527f), exp2(log2((_283 * 0.003717127f) + 0.052132703f) * 2.4f)) / _315) - _267) * _320) + _267;
    _329 = (((select(((_285 * 0.003921569f) < 0.04045f), (_285 * 0.000303527f), exp2(log2((_285 * 0.003717127f) + 0.052132703f) * 2.4f)) / _315) - _268) * _320) + _268;
    _332 = saturate((_54 + -0.8f) * 5.0f);  // [sem: expr_sat]
    _343 = (lerp(_327, _42.x, _332));  // [sem: blended]
    _344 = (lerp(_328, _42.y, _332));  // [sem: blended]
    _345 = (lerp(_329, _42.z, _332));  // [sem: blended]
  } else {
    _343 = _42.x;  // [sem: blended]
    _344 = _42.y;  // [sem: blended]
    _345 = _42.z;  // [sem: blended]
  }
  _346 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _359 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _346, 0)))).x) & 127)))) + 0.5f);
  } else {
    _359 = 1.0f;
  }
  _362 = (_localToneMappingParams.w > 0.0f);
  if (_362) {
    _368 = _userImageAdjust.z * _exposure0.x;
    _417 = exp2(log2(max(0.0f, (((_368 * max(0.0f, (((_343 * 1.70505f) - (_344 * 0.62179f)) - (_345 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _418 = exp2(log2(max(0.0f, (((max(0.0f, (((_344 * 1.1408f) - (_343 * 0.13026f)) - (_345 * 0.01055f))) * _368) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _419 = exp2(log2(max(0.0f, (((max(0.0f, (((_343 * -0.024f) - (_344 * 0.12897f)) + (_345 * 1.15297f))) * _368) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _421 = dot(float3(_417, _418, _419), float3(0.212671f, 0.71516f, 0.072169f));
    _428 = ((_417 - _421) * _powerParams.w) + _421;
    _429 = ((_418 - _421) * _powerParams.w) + _421;
    _430 = ((_419 - _421) * _powerParams.w) + _421;
    _449 = min(max(log2(mad(_430, 0.079223745f, mad(_429, 0.0784336f, (_428 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _450 = min(max(log2(mad(_430, 0.07916613f, mad(_429, 0.87846863f, (_428 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _451 = min(max(log2(mad(_430, 0.879143f, mad(_429, 0.0784336f, (_428 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _452 = _449 * 0.060606062f;
    _453 = _450 * 0.060606062f;
    _454 = _451 * 0.060606062f;
    _455 = _452 * _452;
    _456 = _453 * _453;
    _457 = _454 * _454;
    _503 = min(0.0f, (-0.0f - (((_449 * 0.0072181816f) + ((_455 * 0.4298f) + (((_455 * _455) * ((31.96f - (_449 * 2.4327273f)) + (_455 * 15.5f))) - ((_449 * 0.41624245f) * _455)))) + -0.00232f)));
    _504 = min(0.0f, (-0.0f - (((_450 * 0.0072181816f) + ((_456 * 0.4298f) + (((_456 * _456) * ((31.96f - (_450 * 2.4327273f)) + (_456 * 15.5f))) - ((_450 * 0.41624245f) * _456)))) + -0.00232f)));
    _505 = min(0.0f, (-0.0f - (((_451 * 0.0072181816f) + ((_457 * 0.4298f) + (((_457 * _457) * ((31.96f - (_451 * 2.4327273f)) + (_457 * 15.5f))) - ((_451 * 0.41624245f) * _457)))) + -0.00232f)));
    _506 = -0.0f - _503;
    _507 = -0.0f - _504;
    _508 = -0.0f - _505;
    _509 = dot(float3(_506, _507, _508), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _526 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _527 = -0.79999995f / _526;
      _528 = -1.2f / _526;
      _529 = 0.20000005f / _526;
      _535 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _538 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _545 = (_527 + 1.4f) + (_538 * (-0.39999998f - _527));
      _546 = (_528 + 1.6f) + (_538 * (-0.6f - _528));
      _547 = (_529 + 0.9f) + (_538 * (0.5f - _529));
      _564 = (lerp(_546, 1.2f, _535));  // [sem: blended]
      _565 = (lerp(_545, 1.0f, _535));  // [sem: blended]
      _566 = (lerp(_547, 1.4f, _535));  // [sem: blended]
    } else {
      _564 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _565 = 1.0f;  // [sem: blended]
      _566 = 1.4f;  // [sem: blended]
    }
    _576 = 1.0f - _564;
    _601 = ((exp2(log2(((saturate((_503 * _503) * _506) * _576) + _564) * _506) * _565) - _509) * _566) + _509;
    _602 = ((exp2(log2(((saturate((_504 * _504) * _507) * _576) + _564) * _507) * _565) - _509) * _566) + _509;
    _603 = ((exp2(log2(((saturate((_505 * _505) * _508) * _576) + _564) * _508) * _565) - _509) * _566) + _509;
    _622 = saturate(exp2(log2(mad(_603, -0.09902974f, mad(_602, -0.09802088f, (_601 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _623 = saturate(exp2(log2(mad(_603, -0.098961174f, mad(_602, 1.1519032f, (_601 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _624 = saturate(exp2(log2(mad(_603, 1.1510737f, mad(_602, -0.09804345f, (_601 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _630 = 1.0f - abs(_etcParams.w);
      _634 = saturate(_etcParams.w);  // [sem: expr_sat]
      _635 = (_630 * _622) + _634;
      _636 = (_630 * _623) + _634;
      _637 = (_630 * _624) + _634;
      if (_colorGradingParams.w > 0.0f) {
        _642 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _659 = (((max(0.0f, (1.0f - _635)) - _635) * _642) + _635);
        _660 = (((max(0.0f, (1.0f - _636)) - _636) * _642) + _636);
        _661 = (((max(0.0f, (1.0f - _637)) - _637) * _642) + _637);
      } else {
        _659 = _635;
        _660 = _636;
        _661 = _637;
      }
      _667 = _userImageAdjust.y + 1.0f;
      _671 = _userImageAdjust.x + 0.5f;
      _672 = ((_659 + -0.5f) * _667) + _671;
      _673 = ((_660 + -0.5f) * _667) + _671;
      _674 = ((_661 + -0.5f) * _667) + _671;
      _704 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _715 = exp2(log2(saturate(mad(_colorBlind0.z, _674, mad(_colorBlind0.y, _673, (_colorBlind0.x * _672))))) * _704);
      _716 = exp2(log2(saturate(mad(_colorBlind1.z, _674, mad(_colorBlind1.y, _673, (_colorBlind1.x * _672))))) * _704);
      _717 = exp2(log2(saturate(mad(_colorBlind2.z, _674, mad(_colorBlind2.y, _673, (_colorBlind2.x * _672))))) * _704);
    } else {
      _715 = _622;
      _716 = _623;
      _717 = _624;
    }
  } else {
    _715 = _343;
    _716 = _344;
    _717 = _345;
  }
  if (_etcParams.y > 1.0f) {
    _726 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _727 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _731 = saturate(1.0f - (dot(float2(_726, _727), float2(_726, _727)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _736 = (_731 * _715);
    _737 = (_731 * _716);
    _738 = (_731 * _717);
  } else {
    _736 = _715;
    _737 = _716;
    _738 = _717;
  }
  if (_362 && (_etcParams.z > 0.0f)) {
    _768 = select((_736 <= 0.0031308f), (_736 * 12.92f), (((pow(_736, 0.41666666f)) * 1.055f) + -0.055f));
    _769 = select((_737 <= 0.0031308f), (_737 * 12.92f), (((pow(_737, 0.41666666f)) * 1.055f) + -0.055f));
    _770 = select((_738 <= 0.0031308f), (_738 * 12.92f), (((pow(_738, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _768 = _736;
    _769 = _737;
    _770 = _738;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _775 = (float)((uint)((uint)(_346)));
    if (!(_775 < _viewDir.w)) {
      if (!(_775 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _784 = _768;
        _785 = _769;
        _786 = _770;
      } else {
        _784 = 0.0f;
        _785 = 0.0f;
        _786 = 0.0f;
      }
    } else {
      _784 = 0.0f;
      _785 = 0.0f;
      _786 = 0.0f;
    }
  } else {
    _784 = _768;
    _785 = _769;
    _786 = _770;
  }
  SV_Target.x = _784;
  SV_Target.y = _785;
  SV_Target.z = _786;
  SV_Target.w = _359;
  return SV_Target;
}
