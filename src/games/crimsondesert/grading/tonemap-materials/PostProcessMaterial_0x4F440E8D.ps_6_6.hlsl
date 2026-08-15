struct PostProcessDamageTestStruct {
  uint _bloodTexture;
  float _bloodRatio;
  uint _dirtTexture;
  uint _dirtMaskTexture;
  float _dirtRatio1;
  float _dirtRatio2;
  float _dirtRatio3;
  uint _waterNormalTexture;
  uint _waterMaskTexture;
  float _waterRatio1;
  float _waterRatio2;
  float _waterRatio3;
  float _isDead;
  float3 _mulColor;
  float _vignettFalloff;
  float _maxPower;
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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
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

struct BindlessParameters_PostProcessDamageTest {
  PostProcessDamageTestStruct BindlessParameters_PostProcessDamageTest;
};

typedef BindlessParameters_PostProcessDamageTest BindlessParameters_PostProcessDamageTest_t;
ConstantBuffer<BindlessParameters_PostProcessDamageTest_t> BindlessParameters_PostProcessDamageTest[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _25;
  int _33;
  int _34;
  int _42;
  float _51;
  float _52;
  float _53;
  float _54;
  float _55;
  float _56;
  float _57;
  float _58;
  float _59;
  float _60;
  int _61;
  float _69;
  bool _70;
  float _78;
  float _116;
  float _117;
  float _327;
  float _532;
  float _533;
  float _534;
  float _627;
  float _628;
  float _629;
  float _683;
  float _684;
  float _685;
  float _704;
  float _705;
  float _706;
  float _736;
  float _737;
  float _738;
  float _752;
  float _753;
  float _754;
  float _80;
  float _82;
  float _90;
  float _98;
  float _101;
  float _110;
  float _119;
  float4 _124;
  int _128;
  float _136;
  float _137;
  int _147;
  int _155;
  float4 _162;
  int _167;
  int _175;
  float4 _182;
  int _187;
  int _195;
  float4 _202;
  float _216;
  int _223;
  float _231;
  float _234;
  float _235;
  float _236;
  float _237;
  int _238;
  float _246;
  int _247;
  float _255;
  int _256;
  float _264;
  float _266;
  float _273;
  float _274;
  float _275;
  int _276;
  float _284;
  float _285;
  int _298;
  float _308;
  float _309;
  float _310;
  float _311;
  float _312;
  float _313;
  uint _314;
  bool _330;
  float _336;
  float _385;
  float _386;
  float _387;
  float _389;
  float _396;
  float _397;
  float _398;
  float _417;
  float _418;
  float _419;
  float _420;
  float _421;
  float _422;
  float _423;
  float _424;
  float _425;
  float _471;
  float _472;
  float _473;
  float _474;
  float _475;
  float _476;
  float _477;
  float _494;
  float _495;
  float _496;
  float _497;
  float _503;
  float _506;
  float _513;
  float _514;
  float _515;
  float _544;
  float _569;
  float _570;
  float _571;
  float _590;
  float _591;
  float _592;
  float _598;
  float _602;
  float _603;
  float _604;
  float _605;
  float _610;
  float _635;
  float _639;
  float _640;
  float _641;
  float _642;
  float _672;
  float _694;
  float _695;
  float _699;
  float _743;
  _25 = WaveReadLaneFirst(_materialIndex);
  _33 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_25 < (uint)170000), _25, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._waterNormalTexture);
  _34 = WaveReadLaneFirst(_materialIndex);
  _42 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_34 < (uint)170000), _34, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._waterMaskTexture);
  _51 = _destTargetSizAndInv.y * (1.0f - TEXCOORD.y);
  _52 = (_destTargetSizAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
  _53 = _51 / _srcTargetSizeAndInv.y;
  _54 = _51 / _srcTargetSizeAndInv.x;
  _55 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _56 = 0.5f / _55;
  _57 = _52 + -0.5f;
  _58 = _54 - _56;
  _59 = dot(float2(_57, _58), float2(_57, _58));
  _60 = sqrt(_59);
  _61 = WaveReadLaneFirst(_materialIndex);
  _69 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_61 < (uint)170000), _61, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._maxPower);
  _70 = (_69 > 0.0f);
  if (_70) {
    _78 = sqrt(dot(float2(0.5f, _56), float2(0.5f, _56)));
  } else {
    if (!(_55 < 1.0f)) {
      _78 = _56;
    } else {
      _78 = 0.5f;
    }
  }
  if (_70) {
    _80 = rsqrt(_59);  // [sem: rsqrt_val]
    _82 = tan(_69 * _60);
    _90 = tan(_78 * _69);
    _116 = (((((_78 * _57) * _80) * _82) / _90) + 0.5f);
    _117 = (((((_78 * _58) * _80) * _82) / _90) + _56);
  } else {
    if (_69 < 0.0f) {
      _98 = rsqrt(_59);  // [sem: rsqrt_val]
      _101 = atan((_69 * _60) * -10.0f);
      _110 = atan((_69 * -10.0f) * _78);
      _116 = (((((_78 * _57) * _98) * _101) / _110) + 0.5f);
      _117 = (((((_78 * _58) * _98) * _101) / _110) + _56);
    } else {
      _116 = _52;
      _117 = _54;
    }
  }
  _119 = 1.0f - (_117 * _55);
  _124 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(abs(_116), abs(_119)));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _128 = WaveReadLaneFirst(_materialIndex);
  _136 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_128 < (uint)170000), _128, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._isDead);
  _137 = dot(float3(_124.x, _124.y, _124.z), float3(0.2627f, 0.678f, 0.0593f));
  _147 = WaveReadLaneFirst(_materialIndex);
  _155 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_147 < (uint)170000), _147, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._bloodTexture);
  _162 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_155 < (uint)65000), _155, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_116, _119));
  _167 = WaveReadLaneFirst(_materialIndex);
  _175 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_167 < (uint)170000), _167, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtTexture);
  _182 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_175 < (uint)65000), _175, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_116, _119));
  _187 = WaveReadLaneFirst(_materialIndex);
  _195 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_187 < (uint)170000), _187, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtMaskTexture);
  _202 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_195 < (uint)65000), _195, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_116, _119));
  _216 = (dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 25.0f) + 25.0f;
  _223 = WaveReadLaneFirst(_materialIndex);
  _231 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_223 < (uint)170000), _223, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._vignettFalloff);
  _234 = exp2(log2((((_52 * 15.0f) * (1.0f - _52)) * _53) * (1.0f - _53)) * _231);
  _235 = _234 * (lerp(_124.x, _137, _136));
  _236 = _234 * (lerp(_124.y, _137, _136));
  _237 = _234 * (lerp(_124.z, _137, _136));
  _238 = WaveReadLaneFirst(_materialIndex);
  _246 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_238 < (uint)170000), _238, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtRatio1);
  _247 = WaveReadLaneFirst(_materialIndex);
  _255 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_247 < (uint)170000), _247, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtRatio2);
  _256 = WaveReadLaneFirst(_materialIndex);
  _264 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_256 < (uint)170000), _256, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtRatio3);
  _266 = dot(float3(_202.x, _202.y, _202.z), float3(_246, _255, _264)) * _182.w;
  _273 = (_266 * (_182.x - _235)) + _235;
  _274 = (_266 * (_182.y - _236)) + _236;
  _275 = (_266 * (_182.z - _237)) + _237;
  _276 = WaveReadLaneFirst(_materialIndex);
  _284 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_276 < (uint)170000), _276, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._bloodRatio);
  _285 = _284 * _162.w;
  _298 = WaveReadLaneFirst(_materialIndex);
  _308 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_298 < (uint)170000), _298, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._mulColor.x);
  _309 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_298 < (uint)170000), _298, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._mulColor.y);
  _310 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_298 < (uint)170000), _298, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._mulColor.z);
  _311 = _308 * ((_285 * ((_216 * _162.x) - _273)) + _273);
  _312 = _309 * ((_285 * ((_216 * _162.y) - _274)) + _274);
  _313 = _310 * ((_285 * ((_216 * _162.z) - _275)) + _275);
  _314 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _327 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _314, 0)))).x) & 127)))) + 0.5f);
  } else {
    _327 = _postProcessParams.x;
  }
  _330 = (_localToneMappingParams.w > 0.0f);
  if (_330) {
    _336 = _userImageAdjust.z * _exposure0.x;
    _385 = exp2(log2(max(0.0f, (((_336 * max(0.0f, (((_311 * 1.70505f) - (_312 * 0.62179f)) - (_313 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _386 = exp2(log2(max(0.0f, (((max(0.0f, (((_312 * 1.1408f) - (_311 * 0.13026f)) - (_313 * 0.01055f))) * _336) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _387 = exp2(log2(max(0.0f, (((max(0.0f, (((_311 * -0.024f) - (_312 * 0.12897f)) + (_313 * 1.15297f))) * _336) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _389 = dot(float3(_385, _386, _387), float3(0.212671f, 0.71516f, 0.072169f));
    _396 = ((_385 - _389) * _powerParams.w) + _389;
    _397 = ((_386 - _389) * _powerParams.w) + _389;
    _398 = ((_387 - _389) * _powerParams.w) + _389;
    _417 = min(max(log2(mad(_398, 0.079223745f, mad(_397, 0.0784336f, (_396 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _418 = min(max(log2(mad(_398, 0.07916613f, mad(_397, 0.87846863f, (_396 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _419 = min(max(log2(mad(_398, 0.879143f, mad(_397, 0.0784336f, (_396 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _420 = _417 * 0.060606062f;
    _421 = _418 * 0.060606062f;
    _422 = _419 * 0.060606062f;
    _423 = _420 * _420;
    _424 = _421 * _421;
    _425 = _422 * _422;
    _471 = min(0.0f, (-0.0f - (((_417 * 0.0072181816f) + ((_423 * 0.4298f) + (((_423 * _423) * ((31.96f - (_417 * 2.4327273f)) + (_423 * 15.5f))) - ((_417 * 0.41624245f) * _423)))) + -0.00232f)));
    _472 = min(0.0f, (-0.0f - (((_418 * 0.0072181816f) + ((_424 * 0.4298f) + (((_424 * _424) * ((31.96f - (_418 * 2.4327273f)) + (_424 * 15.5f))) - ((_418 * 0.41624245f) * _424)))) + -0.00232f)));
    _473 = min(0.0f, (-0.0f - (((_419 * 0.0072181816f) + ((_425 * 0.4298f) + (((_425 * _425) * ((31.96f - (_419 * 2.4327273f)) + (_425 * 15.5f))) - ((_419 * 0.41624245f) * _425)))) + -0.00232f)));
    _474 = -0.0f - _471;
    _475 = -0.0f - _472;
    _476 = -0.0f - _473;
    _477 = dot(float3(_474, _475, _476), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _494 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _495 = -0.79999995f / _494;
      _496 = -1.2f / _494;
      _497 = 0.20000005f / _494;
      _503 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _506 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _513 = (_495 + 1.4f) + (_506 * (-0.39999998f - _495));
      _514 = (_496 + 1.6f) + (_506 * (-0.6f - _496));
      _515 = (_497 + 0.9f) + (_506 * (0.5f - _497));
      _532 = (lerp(_514, 1.2f, _503));  // [sem: blended]
      _533 = (lerp(_513, 1.0f, _503));  // [sem: blended]
      _534 = (lerp(_515, 1.4f, _503));  // [sem: blended]
    } else {
      _532 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _533 = 1.0f;  // [sem: blended]
      _534 = 1.4f;  // [sem: blended]
    }
    _544 = 1.0f - _532;
    _569 = ((exp2(log2(((saturate((_471 * _471) * _474) * _544) + _532) * _474) * _533) - _477) * _534) + _477;
    _570 = ((exp2(log2(((saturate((_472 * _472) * _475) * _544) + _532) * _475) * _533) - _477) * _534) + _477;
    _571 = ((exp2(log2(((saturate((_473 * _473) * _476) * _544) + _532) * _476) * _533) - _477) * _534) + _477;
    _590 = saturate(exp2(log2(mad(_571, -0.09902974f, mad(_570, -0.09802088f, (_569 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _591 = saturate(exp2(log2(mad(_571, -0.098961174f, mad(_570, 1.1519032f, (_569 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _592 = saturate(exp2(log2(mad(_571, 1.1510737f, mad(_570, -0.09804345f, (_569 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _598 = 1.0f - abs(_etcParams.w);
      _602 = saturate(_etcParams.w);  // [sem: expr_sat]
      _603 = (_598 * _590) + _602;
      _604 = (_598 * _591) + _602;
      _605 = (_598 * _592) + _602;
      if (_colorGradingParams.w > 0.0f) {
        _610 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _627 = (((max(0.0f, (1.0f - _603)) - _603) * _610) + _603);
        _628 = (((max(0.0f, (1.0f - _604)) - _604) * _610) + _604);
        _629 = (((max(0.0f, (1.0f - _605)) - _605) * _610) + _605);
      } else {
        _627 = _603;
        _628 = _604;
        _629 = _605;
      }
      _635 = _userImageAdjust.y + 1.0f;
      _639 = _userImageAdjust.x + 0.5f;
      _640 = ((_627 + -0.5f) * _635) + _639;
      _641 = ((_628 + -0.5f) * _635) + _639;
      _642 = ((_629 + -0.5f) * _635) + _639;
      _672 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _683 = exp2(log2(saturate(mad(_colorBlind0.z, _642, mad(_colorBlind0.y, _641, (_colorBlind0.x * _640))))) * _672);
      _684 = exp2(log2(saturate(mad(_colorBlind1.z, _642, mad(_colorBlind1.y, _641, (_colorBlind1.x * _640))))) * _672);
      _685 = exp2(log2(saturate(mad(_colorBlind2.z, _642, mad(_colorBlind2.y, _641, (_colorBlind2.x * _640))))) * _672);
    } else {
      _683 = _590;
      _684 = _591;
      _685 = _592;
    }
  } else {
    _683 = _311;
    _684 = _312;
    _685 = _313;
  }
  if (_etcParams.y > 1.0f) {
    _694 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _695 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _699 = saturate(1.0f - (dot(float2(_694, _695), float2(_694, _695)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _704 = (_699 * _683);
    _705 = (_699 * _684);
    _706 = (_699 * _685);
  } else {
    _704 = _683;
    _705 = _684;
    _706 = _685;
  }
  if (_330 && (_etcParams.z > 0.0f)) {
    _736 = select((_704 <= 0.0031308f), (_704 * 12.92f), (((pow(_704, 0.41666666f)) * 1.055f) + -0.055f));
    _737 = select((_705 <= 0.0031308f), (_705 * 12.92f), (((pow(_705, 0.41666666f)) * 1.055f) + -0.055f));
    _738 = select((_706 <= 0.0031308f), (_706 * 12.92f), (((pow(_706, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _736 = _704;
    _737 = _705;
    _738 = _706;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _743 = (float)((uint)((uint)(_314)));
    if (!(_743 < _viewDir.w)) {
      if (!(_743 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _752 = _736;
        _753 = _737;
        _754 = _738;
      } else {
        _752 = 0.0f;
        _753 = 0.0f;
        _754 = 0.0f;
      }
    } else {
      _752 = 0.0f;
      _753 = 0.0f;
      _754 = 0.0f;
    }
  } else {
    _752 = _736;
    _753 = _737;
    _754 = _738;
  }
  SV_Target.x = _752;
  SV_Target.y = _753;
  SV_Target.z = _754;
  SV_Target.w = _327;
  return SV_Target;
}
