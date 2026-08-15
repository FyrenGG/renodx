struct PostProcessAbyssCommon_CDStruct {
  float _fogDepth;
  float _chromaticShiftValue;
  uint _noiseTex;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

struct BindlessParameters_PostProcessAbyssCommon_CD {
  PostProcessAbyssCommon_CDStruct BindlessParameters_PostProcessAbyssCommon_CD;
};

typedef BindlessParameters_PostProcessAbyssCommon_CD BindlessParameters_PostProcessAbyssCommon_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssCommon_CD_t> BindlessParameters_PostProcessAbyssCommon_CD[] : register(b0, space100);

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
  float _21;
  float _22;
  float _23;
  float _26;
  float _28;
  float _64;
  float _68;
  float _69;
  float _70;
  float _72;
  float _73;
  float _74;
  float _75;
  int _76;
  int _84;
  float4 _91;
  int _98;
  int _106;
  float4 _113;
  int _122;
  int _130;
  float4 _137;
  float _140;
  float _141;
  int _146;
  int _154;
  float4 _161;
  int _170;
  int _178;
  float4 _185;
  float _191;
  float _193;
  float _198;
  float _199;
  float _204;
  float _205;
  float _207;
  int _214;
  int _222;
  float4 _229;
  float _236;
  float4 _246;
  float _259;
  float _260;
  float4 _269;
  float _298;
  float _313;
  float _317;
  float _320;
  float _330;
  float _331;
  float _332;
  float _333;
  float _334;
  int _335;
  float _390;
  float _595;
  float _596;
  float _597;
  float _690;
  float _691;
  float _692;
  float _746;
  float _747;
  float _748;
  float _764;
  float _765;
  float _766;
  float _796;
  float _797;
  float _798;
  float _812;
  float _813;
  float _814;
  float _336;
  float4 _345;
  float _352;
  float _353;
  float _354;
  int _357;
  float _367;
  float _374;
  float _375;
  float _376;
  uint _377;
  bool _393;
  float _399;
  float _448;
  float _449;
  float _450;
  float _452;
  float _459;
  float _460;
  float _461;
  float _480;
  float _481;
  float _482;
  float _483;
  float _484;
  float _485;
  float _486;
  float _487;
  float _488;
  float _534;
  float _535;
  float _536;
  float _537;
  float _538;
  float _539;
  float _540;
  float _557;
  float _558;
  float _559;
  float _560;
  float _566;
  float _569;
  float _576;
  float _577;
  float _578;
  float _607;
  float _632;
  float _633;
  float _634;
  float _653;
  float _654;
  float _655;
  float _661;
  float _665;
  float _666;
  float _667;
  float _668;
  float _673;
  float _698;
  float _702;
  float _703;
  float _704;
  float _705;
  float _735;
  float _754;
  float _755;
  float _759;
  float _803;
  int __loop_jump_target = -1;
  _21 = (TEXCOORD.x * 2.0f) + -1.0f;
  _22 = TEXCOORD.y * 2.0f;
  _23 = 1.0f - _22;
  _26 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  _28 = max(1e-07f, _26.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _64 = mad((_invViewProjRelative[3].z), _28, mad((_invViewProjRelative[3].y), _23, ((_invViewProjRelative[3].x) * _21))) + (_invViewProjRelative[3].w);
  _68 = -0.0f - ((mad((_invViewProjRelative[0].z), _28, mad((_invViewProjRelative[0].y), _23, ((_invViewProjRelative[0].x) * _21))) + (_invViewProjRelative[0].w)) / _64);
  _69 = -0.0f - ((mad((_invViewProjRelative[1].z), _28, mad((_invViewProjRelative[1].y), _23, ((_invViewProjRelative[1].x) * _21))) + (_invViewProjRelative[1].w)) / _64);
  _70 = -0.0f - ((mad((_invViewProjRelative[2].z), _28, mad((_invViewProjRelative[2].y), _23, ((_invViewProjRelative[2].x) * _21))) + (_invViewProjRelative[2].w)) / _64);
  _72 = rsqrt(dot(float3(_68, _69, _70), float3(_68, _69, _70)));  // [sem: invLength]
  _73 = _72 * _68;
  _74 = _72 * _69;
  _75 = _72 * _70;
  _76 = WaveReadLaneFirst(_materialIndex);
  _84 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_76 < (uint)170000), _76, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _91 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_84 < (uint)65000), _84, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_75, _73));
  _98 = WaveReadLaneFirst(_materialIndex);
  _106 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_98 < (uint)170000), _98, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _113 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_106 < (uint)65000), _106, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_75, ((_time.x * 0.05f) + _74)));
  _122 = WaveReadLaneFirst(_materialIndex);
  _130 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_122 < (uint)170000), _122, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _137 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_130 < (uint)65000), _130, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_75 * 2.0f), ((_74 - (_time.x * 0.1f)) * 2.0f)));
  _140 = _137.x + _113.x;
  _141 = _137.y + _113.y;
  _146 = WaveReadLaneFirst(_materialIndex);
  _154 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_146 < (uint)170000), _146, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _161 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_154 < (uint)65000), _154, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.13f) + _74), _73));
  _170 = WaveReadLaneFirst(_materialIndex);
  _178 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_170 < (uint)170000), _170, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _185 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_178 < (uint)65000), _178, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_time.x * 0.1f) + _74) * 2.0f), (_73 * 2.0f)));
  _191 = abs(dot(float3(_73, _74, _75), float3(0.0f, 1.0f, 0.0f)));
  _193 = abs(dot(float3(_73, _74, _75), float3(0.0f, 0.0f, 1.0f)));
  _198 = (_191 * (_91.x - _140)) + _140;
  _199 = (_191 * (_91.y - _141)) + _141;
  _204 = (((_185.x + _161.x) - _198) * _193) + _198;
  _205 = (((_185.y + _161.y) - _199) * _193) + _199;
  _207 = saturate(_26.x * 35.0f);  // [sem: expr_sat]
  _214 = WaveReadLaneFirst(_materialIndex);
  _222 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_214 < (uint)170000), _214, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _229 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_222 < (uint)65000), _222, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x - (_time.x * 0.01f)), ((_time.x * 0.1f) + TEXCOORD.y)));
  _236 = ((_229.x - _204) * _207) + _204;
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _246 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((TEXCOORD.x + -0.001992157f) + (_236 * 0.004f)), ((TEXCOORD.y + -0.001992157f) + ((lerp(_205, _229.y, _207)) * 0.004f))));
  _259 = (float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(TEXCOORD.x))));
  _260 = (float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(TEXCOORD.y))));
  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load]
  _269 = __3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_259 * _customRenderPassSizeInvSize.x)), ((int)(_260 * _customRenderPassSizeInvSize.y)), 0));
  _298 = mad((_projToPrevProj[3].z), _269.x, mad((_projToPrevProj[3].y), _23, ((_projToPrevProj[3].x) * _21))) + (_projToPrevProj[3].w);
  _313 = _236 + -0.4f;
  _317 = min(max(((_313 * 6.666667f) + -1.0f), -1.0f), 1.0f);
  _320 = (_313 * 0.020000001f) + -0.003f;
  _330 = _320;
  _331 = _320;
  _332 = 0.0f;
  _333 = 0.0f;
  _334 = 0.0f;
  _335 = 1;
  while(true) {
    _336 = (float)((int)(_335));
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _345 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - ((_330 * (((((((mad((_projToPrevProj[0].z), _269.x, mad((_projToPrevProj[0].y), _23, ((_projToPrevProj[0].x) * _21))) + (_projToPrevProj[0].w)) / _298) - _21) * 2.5f) + -0.5f) + frac(frac(dot(float2(_259, _260), float2(0.06711056f, 0.00583715f))) * 52.982918f)) - (_317 * 8.742278e-08f))) * _336)), (TEXCOORD.y - ((_331 * (((((((mad((_projToPrevProj[1].z), _269.x, mad((_projToPrevProj[1].y), _23, ((_projToPrevProj[1].x) * _21))) + (_projToPrevProj[1].w)) / _298) - _23) * 2.5f) + -0.5f) + frac(frac(dot(float2((_259 + 32.665f), (_260 + 11.815f)), float2(0.06711056f, 0.00583715f))) * 52.982918f)) - _317)) * _336))));
    _352 = (_345.x * 0.125f) + _332;
    _353 = (_345.y * 0.125f) + _333;
    _354 = (_345.z * 0.125f) + _334;
    _357 = (int)(_335) + (int)(1);
    if (!(_357 == 8)) {
      _330 = (_330 * 0.9f);
      _331 = (_331 * 0.9f);
      _332 = _352;
      _333 = _353;
      _334 = _354;
      _335 = _357;
      continue;
    }
    _367 = dot(float3(_246.x, _246.y, _246.z), float3(0.2126f, 0.7152f, 0.0722f)) * 0.3f;
    _374 = ((_367 - _352) * 0.2f) + _352;
    _375 = ((_367 - _353) * 0.2f) + _353;
    _376 = ((_367 - _354) * 0.2f) + _354;
    _377 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _390 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _377, 0)))).x) & 127)))) + 0.5f);
    } else {
      _390 = 0.0f;
    }
    _393 = (_localToneMappingParams.w > 0.0f);
    if (_393) {
      _399 = _userImageAdjust.z * _exposure0.x;
      _448 = exp2(log2(max(0.0f, (((_399 * max(0.0f, (((_374 * 1.70505f) - (_375 * 0.62179f)) - (_376 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
      _449 = exp2(log2(max(0.0f, (((max(0.0f, (((_375 * 1.1408f) - (_374 * 0.13026f)) - (_376 * 0.01055f))) * _399) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
      _450 = exp2(log2(max(0.0f, (((max(0.0f, (((_374 * -0.024f) - (_375 * 0.12897f)) + (_376 * 1.15297f))) * _399) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
      _452 = dot(float3(_448, _449, _450), float3(0.212671f, 0.71516f, 0.072169f));
      _459 = ((_448 - _452) * _powerParams.w) + _452;
      _460 = ((_449 - _452) * _powerParams.w) + _452;
      _461 = ((_450 - _452) * _powerParams.w) + _452;
      _480 = min(max(log2(mad(_461, 0.079223745f, mad(_460, 0.0784336f, (_459 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
      _481 = min(max(log2(mad(_461, 0.07916613f, mad(_460, 0.87846863f, (_459 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
      _482 = min(max(log2(mad(_461, 0.879143f, mad(_460, 0.0784336f, (_459 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
      _483 = _480 * 0.060606062f;
      _484 = _481 * 0.060606062f;
      _485 = _482 * 0.060606062f;
      _486 = _483 * _483;
      _487 = _484 * _484;
      _488 = _485 * _485;
      _534 = min(0.0f, (-0.0f - (((_480 * 0.0072181816f) + ((_486 * 0.4298f) + (((_486 * _486) * ((31.96f - (_480 * 2.4327273f)) + (_486 * 15.5f))) - ((_480 * 0.41624245f) * _486)))) + -0.00232f)));
      _535 = min(0.0f, (-0.0f - (((_481 * 0.0072181816f) + ((_487 * 0.4298f) + (((_487 * _487) * ((31.96f - (_481 * 2.4327273f)) + (_487 * 15.5f))) - ((_481 * 0.41624245f) * _487)))) + -0.00232f)));
      _536 = min(0.0f, (-0.0f - (((_482 * 0.0072181816f) + ((_488 * 0.4298f) + (((_488 * _488) * ((31.96f - (_482 * 2.4327273f)) + (_488 * 15.5f))) - ((_482 * 0.41624245f) * _488)))) + -0.00232f)));
      _537 = -0.0f - _534;
      _538 = -0.0f - _535;
      _539 = -0.0f - _536;
      _540 = dot(float3(_537, _538, _539), float3(0.2126f, 0.7152f, 0.0722f));
      if (_nightToneParm == 1) {
        _557 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
        _558 = -0.79999995f / _557;
        _559 = -1.2f / _557;
        _560 = 0.20000005f / _557;
        _566 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
        _569 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
        _576 = (_558 + 1.4f) + (_569 * (-0.39999998f - _558));
        _577 = (_559 + 1.6f) + (_569 * (-0.6f - _559));
        _578 = (_560 + 0.9f) + (_569 * (0.5f - _560));
        _595 = (lerp(_577, 1.2f, _566));  // [sem: blended]
        _596 = (lerp(_576, 1.0f, _566));  // [sem: blended]
        _597 = (lerp(_578, 1.4f, _566));  // [sem: blended]
      } else {
        _595 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
        _596 = 1.0f;  // [sem: blended]
        _597 = 1.4f;  // [sem: blended]
      }
      _607 = 1.0f - _595;
      _632 = ((exp2(log2(((saturate((_534 * _534) * _537) * _607) + _595) * _537) * _596) - _540) * _597) + _540;
      _633 = ((exp2(log2(((saturate((_535 * _535) * _538) * _607) + _595) * _538) * _596) - _540) * _597) + _540;
      _634 = ((exp2(log2(((saturate((_536 * _536) * _539) * _607) + _595) * _539) * _596) - _540) * _597) + _540;
      _653 = saturate(exp2(log2(mad(_634, -0.09902974f, mad(_633, -0.09802088f, (_632 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
      _654 = saturate(exp2(log2(mad(_634, -0.098961174f, mad(_633, 1.1519032f, (_632 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
      _655 = saturate(exp2(log2(mad(_634, 1.1510737f, mad(_633, -0.09804345f, (_632 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
      if (_etcParams.z == 0.0f) {
        _661 = 1.0f - abs(_etcParams.w);
        _665 = saturate(_etcParams.w);  // [sem: expr_sat]
        _666 = (_661 * _653) + _665;
        _667 = (_661 * _654) + _665;
        _668 = (_661 * _655) + _665;
        if (_colorGradingParams.w > 0.0f) {
          _673 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _690 = (((max(0.0f, (1.0f - _666)) - _666) * _673) + _666);
          _691 = (((max(0.0f, (1.0f - _667)) - _667) * _673) + _667);
          _692 = (((max(0.0f, (1.0f - _668)) - _668) * _673) + _668);
        } else {
          _690 = _666;
          _691 = _667;
          _692 = _668;
        }
        _698 = _userImageAdjust.y + 1.0f;
        _702 = _userImageAdjust.x + 0.5f;
        _703 = ((_690 + -0.5f) * _698) + _702;
        _704 = ((_691 + -0.5f) * _698) + _702;
        _705 = ((_692 + -0.5f) * _698) + _702;
        _735 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _746 = exp2(log2(saturate(mad(_colorBlind0.z, _705, mad(_colorBlind0.y, _704, (_colorBlind0.x * _703))))) * _735);
        _747 = exp2(log2(saturate(mad(_colorBlind1.z, _705, mad(_colorBlind1.y, _704, (_colorBlind1.x * _703))))) * _735);
        _748 = exp2(log2(saturate(mad(_colorBlind2.z, _705, mad(_colorBlind2.y, _704, (_colorBlind2.x * _703))))) * _735);
      } else {
        _746 = _653;
        _747 = _654;
        _748 = _655;
      }
    } else {
      _746 = _374;
      _747 = _375;
      _748 = _376;
    }
    if (_etcParams.y > 1.0f) {
      _754 = abs(_21);
      _755 = abs(_22 + -1.0f);
      _759 = saturate(1.0f - (dot(float2(_754, _755), float2(_754, _755)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
      _764 = (_759 * _746);
      _765 = (_759 * _747);
      _766 = (_759 * _748);
    } else {
      _764 = _746;
      _765 = _747;
      _766 = _748;
    }
    if (_393 && (_etcParams.z > 0.0f)) {
      _796 = select((_764 <= 0.0031308f), (_764 * 12.92f), (((pow(_764, 0.41666666f)) * 1.055f) + -0.055f));
      _797 = select((_765 <= 0.0031308f), (_765 * 12.92f), (((pow(_765, 0.41666666f)) * 1.055f) + -0.055f));
      _798 = select((_766 <= 0.0031308f), (_766 * 12.92f), (((pow(_766, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _796 = _764;
      _797 = _765;
      _798 = _766;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _803 = (float)((uint)((uint)(_377)));
      if (!(_803 < _viewDir.w)) {
        if (!(_803 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
          _812 = _796;
          _813 = _797;
          _814 = _798;
        } else {
          _812 = 0.0f;
          _813 = 0.0f;
          _814 = 0.0f;
        }
      } else {
        _812 = 0.0f;
        _813 = 0.0f;
        _814 = 0.0f;
      }
    } else {
      _812 = _796;
      _813 = _797;
      _814 = _798;
    }
    SV_Target.x = _812;
    SV_Target.y = _813;
    SV_Target.z = _814;
    SV_Target.w = _390;
    break;
  }
  return SV_Target;
}
