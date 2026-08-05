struct PostProcessBerserk_CDStruct {
  float _scanRadius;
  float _fishEyeIntensity;
  float _bloodLineIntensity;
  float _auraIntensity;
  float _centerMaskWidth;
  float _fireIntensity;
  float _sphereMaskRatio;
  float _fogIntensity;
  float _scanRadiusEnd;
  float _ringMaskRadius;
  float _ringMaskIntensity;
  float _radialBlurIntensity;
  uint _noiseTex;
  uint _noiseTex2;
  uint _distortionTex;
  uint _marbleCrackTex;
  float _sphereMaskEndRatio;
  float _sphereMaskEndNoiseIntensity;
  float _sceneColorDistortionIntensity;
  float _characterMaskIntensity;
  uint _enemyGradientTex;
  uint _enemyMaskColor;
  float _flashRatio;
  uint _paperTex;
};

struct BindlessParameters_PostProcessBerserk_CD {
  PostProcessBerserk_CDStruct BindlessParameters_PostProcessBerserk_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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

typedef BindlessParameters_PostProcessBerserk_CD BindlessParameters_PostProcessBerserk_CD_t;
ConstantBuffer<BindlessParameters_PostProcessBerserk_CD_t> BindlessParameters_PostProcessBerserk_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _20;
  int _28;
  float4 _31;
  float _37;
  float _40;
  float _43;
  float _44;
  float _45;
  float _46;
  float _47;
  float _51;
  float _52;
  float _59;
  float _62;
  float _65;
  float _69;
  float _101;
  int _104;
  int _112;
  float _121;
  float _124;
  float _125;
  float _126;
  float _154;
  uint _155;
  float _206;
  float _405;
  float _406;
  float _407;
  float _501;
  float _502;
  float _503;
  float _557;
  float _558;
  float _559;
  float _580;
  float _581;
  float _582;
  float _612;
  float _613;
  float _614;
  float _628;
  float _629;
  float _630;
  bool _209;
  float _215;
  float _232;
  float _246;
  float _260;
  float _261;
  float _265;
  float _268;
  float _271;
  float _278;
  float _285;
  float _292;
  float _293;
  float _294;
  float _295;
  float _296;
  float _297;
  float _298;
  float _314;
  float _330;
  float _346;
  float _347;
  float _348;
  float _349;
  float _350;
  float _367;
  float _368;
  float _369;
  float _370;
  float _373;
  float _376;
  float _380;
  float _384;
  float _388;
  float _408;
  float _420;
  float _432;
  float _444;
  float _451;
  float _458;
  float _465;
  float _472;
  float _473;
  float _475;
  float _477;
  float _479;
  float _484;
  float _505;
  float _507;
  float _510;
  float _513;
  float _516;
  float _522;
  float _566;
  float _569;
  float _575;
  float _617;
  float _634;
  float _638;
  float _642;
  _20 = WaveReadLaneFirst(_materialIndex);
  _28 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_20 < (uint)170000), _20, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
  _31 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _37 = (pow(_31.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _40 = (pow(_31.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _43 = (pow(_31.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _44 = TEXCOORD.x + -0.5f;
  _45 = TEXCOORD.y + -0.5f;
  _46 = abs(_44);
  _47 = abs(_45);
  _51 = min(_46, _47) / max(max(_46, _47), 1e-08f);
  _52 = _51 * _51;
  _59 = ((_52 * _51) * (((0.15931422f - (_52 * 0.046496473f)) * _52) + -0.32762277f)) + _51;
  _62 = select((_47 > _46), (1.5707964f - _59), _59);
  _65 = select((_44 < 0.0f), (3.1415927f - _62), _62);
  _69 = select((_45 < 0.0f), (-0.0f - _65), _65) * 0.9549296f;
  _101 = select(((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127) + (int)(-52)) < (uint)16), 0.0f, ((1.0f / max(0.0001f, _exposure0.x)) * saturate(1.0f - saturate(exp2(log2((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x) * 0.5f) * 6.5f))));
  _104 = WaveReadLaneFirst(_materialIndex);
  _112 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_104 < (uint)170000), _104, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex2);
  _121 = (sqrt((_45 * _45) + (_44 * _44)) * 2.0f) - (_time.x * 0.7f);
  _124 = _time.x * 0.030000001f;
  _125 = _124 + _69;
  _126 = _124 + _121;
  _154 = dot(float3((exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.851562f - (_37 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_40 + -0.8359375f)) / (18.851562f - (_40 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_43 + -0.8359375f)) / (18.851562f - (_43 * 18.6875f))) * 6.277395f) * 10000.0f)), float3(0.2126f, 0.7152f, 0.0722f));
  _155 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    // [sem: expr_sat]
    _206 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _155, 0)))).x) & 127)))) + 0.5f);
  } else {
    // [sem: expr_sat]
    _206 = saturate((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_112 < (uint)65000), _112, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac(_125), frac(_126))))).w) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_112 < (uint)65000), _112, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac((_69 + 0.418f) - _124), frac((_121 + 0.355f) - _124))))).w)) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_112 < (uint)65000), _112, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac((_69 + 0.855f) - _124), frac(_126 + 0.148f))))).w)) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_112 < (uint)65000), _112, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac(_125 + 0.651f), frac((_121 + 0.752f) - _124))))).w));
  }
  _209 = (_localToneMappingParams.w > 0.0f);
  if (_209) {
    _215 = _exposure0.x * _userImageAdjust.z;
    _232 = exp2(_powerParams.x * log2(max(0.0f, (((_215 * max(0.0f, ((_101 * 1.70505f) - (_154 * 0.62179f)))) * _slopeParams.x) + _offsetParams.x))));
    _246 = exp2(log2(max(0.0f, (((_slopeParams.y * _215) * max(0.0f, ((_154 * 1.1408f) - (_101 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _260 = exp2(log2(max(0.0f, (((_slopeParams.z * _215) * max(0.0f, ((_154 * -0.12897f) - (_101 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _261 = dot(float3(_232, _246, _260), float3(0.212671f, 0.71516f, 0.072169f));
    _265 = ((_232 - _261) * _powerParams.w) + _261;
    _268 = ((_246 - _261) * _powerParams.w) + _261;
    _271 = ((_260 - _261) * _powerParams.w) + _261;
    _278 = min(max(log2(mad(_271, 0.079223745f, mad(_268, 0.0784336f, (_265 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _285 = min(max(log2(mad(_271, 0.07916613f, mad(_268, 0.87846863f, (_265 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _292 = min(max(log2(mad(_271, 0.879143f, mad(_268, 0.0784336f, (_265 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _293 = _278 * 0.060606062f;
    _294 = _285 * 0.060606062f;
    _295 = _292 * 0.060606062f;
    _296 = _293 * _293;
    _297 = _294 * _294;
    _298 = _295 * _295;
    _314 = min(0.0f, (-0.0f - (((_278 * 0.0072181816f) + ((_296 * 0.4298f) + (((_296 * _296) * ((31.96f - (_278 * 2.4327273f)) + (_296 * 15.5f))) - ((_278 * 0.41624245f) * _296)))) + -0.00232f)));
    _330 = min(0.0f, (-0.0f - (((_285 * 0.0072181816f) + ((_297 * 0.4298f) + (((_297 * _297) * ((31.96f - (_285 * 2.4327273f)) + (_297 * 15.5f))) - ((_285 * 0.41624245f) * _297)))) + -0.00232f)));
    _346 = min(0.0f, (-0.0f - (((_292 * 0.0072181816f) + ((_298 * 0.4298f) + (((_298 * _298) * ((31.96f - (_292 * 2.4327273f)) + (_298 * 15.5f))) - ((_292 * 0.41624245f) * _298)))) + -0.00232f)));
    _347 = -0.0f - _314;
    _348 = -0.0f - _330;
    _349 = -0.0f - _346;
    _350 = dot(float3(_347, _348, _349), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _367 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _368 = -0.79999995f / _367;
      _369 = -1.2f / _367;
      _370 = 0.20000005f / _367;
      _373 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _376 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _380 = (_368 + 1.4f) + (_376 * (-0.39999998f - _368));
      _384 = (_369 + 1.6f) + (_376 * (-0.6f - _369));
      _388 = (_370 + 0.9f) + (_376 * (0.5f - _370));
      _405 = (lerp(_384, 1.2f, _373));  // [sem: blended]
      _406 = (lerp(_380, 1.0f, _373));  // [sem: blended]
      _407 = (lerp(_388, 1.4f, _373));  // [sem: blended]
    } else {
      _405 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _406 = 1.0f;  // [sem: blended]
      _407 = 1.4f;  // [sem: blended]
    }
    _408 = 1.0f - _405;
    _420 = ((exp2(log2(((saturate((_314 * _314) * _347) * _408) + _405) * _347) * _406) - _350) * _407) + _350;
    _432 = ((exp2(log2(((saturate((_330 * _330) * _348) * _408) + _405) * _348) * _406) - _350) * _407) + _350;
    _444 = ((exp2(log2(((saturate((_346 * _346) * _349) * _408) + _405) * _349) * _406) - _350) * _407) + _350;
    _451 = saturate(exp2(log2(mad(_444, -0.09902974f, mad(_432, -0.09802088f, (_420 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _458 = saturate(exp2(log2(mad(_444, -0.098961174f, mad(_432, 1.1519032f, (_420 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _465 = saturate(exp2(log2(mad(_444, 1.1510737f, mad(_432, -0.09804345f, (_420 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _472 = 1.0f - abs(_etcParams.w);
      _473 = saturate(_etcParams.w);  // [sem: expr_sat]
      _475 = (_472 * _451) + _473;
      _477 = (_472 * _458) + _473;
      _479 = (_472 * _465) + _473;
      if (_colorGradingParams.w > 0.0f) {
        _484 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _501 = (((max(0.0f, (1.0f - _475)) - _475) * _484) + _475);
        _502 = (((max(0.0f, (1.0f - _477)) - _477) * _484) + _477);
        _503 = (((max(0.0f, (1.0f - _479)) - _479) * _484) + _479);
      } else {
        _501 = _475;
        _502 = _477;
        _503 = _479;
      }
      _505 = _userImageAdjust.y + 1.0f;
      _507 = _userImageAdjust.x + 0.5f;
      _510 = ((_501 + -0.5f) * _505) + _507;
      _513 = ((_502 + -0.5f) * _505) + _507;
      _516 = ((_503 + -0.5f) * _505) + _507;
      _522 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _557 = exp2(log2(saturate(mad(_colorBlind0.z, _516, mad(_colorBlind0.y, _513, (_colorBlind0.x * _510))))) * _522);
      _558 = exp2(log2(saturate(mad(_colorBlind1.z, _516, mad(_colorBlind1.y, _513, (_colorBlind1.x * _510))))) * _522);
      _559 = exp2(log2(saturate(mad(_colorBlind2.z, _516, mad(_colorBlind2.y, _513, (_colorBlind2.x * _510))))) * _522);
    } else {
      _557 = _451;
      _558 = _458;
      _559 = _465;
    }
  } else {
    _557 = _101;
    _558 = _154;
    _559 = 0.0f;
  }
  if (_etcParams.y > 1.0f) {
    _566 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _569 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _575 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_566, _569), float2(_566, _569))));  // [sem: expr_sat]
    _580 = (_575 * _557);
    _581 = (_575 * _558);
    _582 = (_575 * _559);
  } else {
    _580 = _557;
    _581 = _558;
    _582 = _559;
  }
  if (_209 && (_etcParams.z > 0.0f)) {
    _612 = select((_580 <= 0.0031308f), (_580 * 12.92f), (((pow(_580, 0.41666666f)) * 1.055f) + -0.055f));
    _613 = select((_581 <= 0.0031308f), (_581 * 12.92f), (((pow(_581, 0.41666666f)) * 1.055f) + -0.055f));
    _614 = select((_582 <= 0.0031308f), (_582 * 12.92f), (((pow(_582, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _612 = _580;
    _613 = _581;
    _614 = _582;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _617 = (float)((uint)((uint)(_155)));
    if (!(_617 < _viewDir.w)) {
      if (!(!(_617 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _628 = 0.0f;
        _629 = 0.0f;
        _630 = 0.0f;
      } else {
        _628 = _612;
        _629 = _613;
        _630 = _614;
      }
    } else {
      _628 = 0.0f;
      _629 = 0.0f;
      _630 = 0.0f;
    }
  } else {
    _628 = _612;
    _629 = _613;
    _630 = _614;
  }
  _634 = exp2(log2(_628 * 0.0001f) * 0.15930176f);
  _638 = exp2(log2(_629 * 0.0001f) * 0.15930176f);
  _642 = exp2(log2(_630 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_634 * 18.6875f) + 1.0f)) * ((_634 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_638 * 18.6875f) + 1.0f)) * ((_638 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_642 * 18.6875f) + 1.0f)) * ((_642 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _206;
  return SV_Target;
}
