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
  float _363;
  float _568;
  float _569;
  float _570;
  float _663;
  float _664;
  float _665;
  float _719;
  float _720;
  float _721;
  float _740;
  float _741;
  float _742;
  float _772;
  float _773;
  float _774;
  float _788;
  float _789;
  float _790;
  float _80;
  float _82;
  float _90;
  float _98;
  float _101;
  float _110;
  float _119;
  float4 _124;
  float _134;
  float _135;
  float _136;
  float _161;
  float _162;
  float _163;
  int _164;
  float _172;
  float _173;
  int _183;
  int _191;
  float4 _198;
  int _203;
  int _211;
  float4 _218;
  int _223;
  int _231;
  float4 _238;
  float _252;
  int _259;
  float _267;
  float _270;
  float _271;
  float _272;
  float _273;
  int _274;
  float _282;
  int _283;
  float _291;
  int _292;
  float _300;
  float _302;
  float _309;
  float _310;
  float _311;
  int _312;
  float _320;
  float _321;
  int _334;
  float _344;
  float _345;
  float _346;
  float _347;
  float _348;
  float _349;
  uint _350;
  bool _366;
  float _372;
  float _421;
  float _422;
  float _423;
  float _425;
  float _432;
  float _433;
  float _434;
  float _453;
  float _454;
  float _455;
  float _456;
  float _457;
  float _458;
  float _459;
  float _460;
  float _461;
  float _507;
  float _508;
  float _509;
  float _510;
  float _511;
  float _512;
  float _513;
  float _530;
  float _531;
  float _532;
  float _533;
  float _539;
  float _542;
  float _549;
  float _550;
  float _551;
  float _580;
  float _605;
  float _606;
  float _607;
  float _626;
  float _627;
  float _628;
  float _634;
  float _638;
  float _639;
  float _640;
  float _641;
  float _646;
  float _671;
  float _675;
  float _676;
  float _677;
  float _678;
  float _708;
  float _730;
  float _731;
  float _735;
  float _779;
  float _800;
  float _801;
  float _802;
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
  _134 = (pow(_124.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _135 = (pow(_124.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _136 = (pow(_124.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _161 = exp2(log2(max(0.0f, (_134 + -0.8359375f)) / (18.851562f - (_134 * 18.6875f))) * 6.277395f) * 10000.0f;
  _162 = exp2(log2(max(0.0f, (_135 + -0.8359375f)) / (18.851562f - (_135 * 18.6875f))) * 6.277395f) * 10000.0f;
  _163 = exp2(log2(max(0.0f, (_136 + -0.8359375f)) / (18.851562f - (_136 * 18.6875f))) * 6.277395f) * 10000.0f;
  _164 = WaveReadLaneFirst(_materialIndex);
  _172 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_164 < (uint)170000), _164, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._isDead);
  _173 = dot(float3(_161, _162, _163), float3(0.2627f, 0.678f, 0.0593f));
  _183 = WaveReadLaneFirst(_materialIndex);
  _191 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_183 < (uint)170000), _183, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._bloodTexture);
  _198 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_191 < (uint)65000), _191, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_116, _119));
  _203 = WaveReadLaneFirst(_materialIndex);
  _211 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_203 < (uint)170000), _203, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtTexture);
  _218 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_211 < (uint)65000), _211, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_116, _119));
  _223 = WaveReadLaneFirst(_materialIndex);
  _231 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_223 < (uint)170000), _223, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtMaskTexture);
  _238 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_231 < (uint)65000), _231, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_116, _119));
  _252 = (dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 25.0f) + 25.0f;
  _259 = WaveReadLaneFirst(_materialIndex);
  _267 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_259 < (uint)170000), _259, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._vignettFalloff);
  _270 = exp2(log2((((_52 * 15.0f) * (1.0f - _52)) * _53) * (1.0f - _53)) * _267);
  _271 = _270 * (lerp(_161, _173, _172));
  _272 = _270 * (lerp(_162, _173, _172));
  _273 = _270 * (lerp(_163, _173, _172));
  _274 = WaveReadLaneFirst(_materialIndex);
  _282 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_274 < (uint)170000), _274, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtRatio1);
  _283 = WaveReadLaneFirst(_materialIndex);
  _291 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_283 < (uint)170000), _283, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtRatio2);
  _292 = WaveReadLaneFirst(_materialIndex);
  _300 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_292 < (uint)170000), _292, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._dirtRatio3);
  _302 = dot(float3(_238.x, _238.y, _238.z), float3(_282, _291, _300)) * _218.w;
  _309 = (_302 * (_218.x - _271)) + _271;
  _310 = (_302 * (_218.y - _272)) + _272;
  _311 = (_302 * (_218.z - _273)) + _273;
  _312 = WaveReadLaneFirst(_materialIndex);
  _320 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_312 < (uint)170000), _312, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._bloodRatio);
  _321 = _320 * _198.w;
  _334 = WaveReadLaneFirst(_materialIndex);
  _344 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_334 < (uint)170000), _334, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._mulColor.x);
  _345 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_334 < (uint)170000), _334, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._mulColor.y);
  _346 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)((uint)(select(((uint)_334 < (uint)170000), _334, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamageTest._mulColor.z);
  _347 = _344 * ((_321 * ((_252 * _198.x) - _309)) + _309);
  _348 = _345 * ((_321 * ((_252 * _198.y) - _310)) + _310);
  _349 = _346 * ((_321 * ((_252 * _198.z) - _311)) + _311);
  _350 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _363 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _350, 0)))).x) & 127)))) + 0.5f);
  } else {
    _363 = _postProcessParams.x;
  }
  _366 = (_localToneMappingParams.w > 0.0f);
  if (_366) {
    _372 = _userImageAdjust.z * _exposure0.x;
    _421 = exp2(log2(max(0.0f, (((_372 * max(0.0f, (((_347 * 1.70505f) - (_348 * 0.62179f)) - (_349 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _422 = exp2(log2(max(0.0f, (((max(0.0f, (((_348 * 1.1408f) - (_347 * 0.13026f)) - (_349 * 0.01055f))) * _372) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _423 = exp2(log2(max(0.0f, (((max(0.0f, (((_347 * -0.024f) - (_348 * 0.12897f)) + (_349 * 1.15297f))) * _372) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _425 = dot(float3(_421, _422, _423), float3(0.212671f, 0.71516f, 0.072169f));
    _432 = ((_421 - _425) * _powerParams.w) + _425;
    _433 = ((_422 - _425) * _powerParams.w) + _425;
    _434 = ((_423 - _425) * _powerParams.w) + _425;
    _453 = min(max(log2(mad(_434, 0.079223745f, mad(_433, 0.0784336f, (_432 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _454 = min(max(log2(mad(_434, 0.07916613f, mad(_433, 0.87846863f, (_432 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _455 = min(max(log2(mad(_434, 0.879143f, mad(_433, 0.0784336f, (_432 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _456 = _453 * 0.060606062f;
    _457 = _454 * 0.060606062f;
    _458 = _455 * 0.060606062f;
    _459 = _456 * _456;
    _460 = _457 * _457;
    _461 = _458 * _458;
    _507 = min(0.0f, (-0.0f - (((_453 * 0.0072181816f) + ((_459 * 0.4298f) + (((_459 * _459) * ((31.96f - (_453 * 2.4327273f)) + (_459 * 15.5f))) - ((_453 * 0.41624245f) * _459)))) + -0.00232f)));
    _508 = min(0.0f, (-0.0f - (((_454 * 0.0072181816f) + ((_460 * 0.4298f) + (((_460 * _460) * ((31.96f - (_454 * 2.4327273f)) + (_460 * 15.5f))) - ((_454 * 0.41624245f) * _460)))) + -0.00232f)));
    _509 = min(0.0f, (-0.0f - (((_455 * 0.0072181816f) + ((_461 * 0.4298f) + (((_461 * _461) * ((31.96f - (_455 * 2.4327273f)) + (_461 * 15.5f))) - ((_455 * 0.41624245f) * _461)))) + -0.00232f)));
    _510 = -0.0f - _507;
    _511 = -0.0f - _508;
    _512 = -0.0f - _509;
    _513 = dot(float3(_510, _511, _512), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _530 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _531 = -0.79999995f / _530;
      _532 = -1.2f / _530;
      _533 = 0.20000005f / _530;
      _539 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _542 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _549 = (_531 + 1.4f) + (_542 * (-0.39999998f - _531));
      _550 = (_532 + 1.6f) + (_542 * (-0.6f - _532));
      _551 = (_533 + 0.9f) + (_542 * (0.5f - _533));
      _568 = (lerp(_550, 1.2f, _539));  // [sem: blended]
      _569 = (lerp(_549, 1.0f, _539));  // [sem: blended]
      _570 = (lerp(_551, 1.4f, _539));  // [sem: blended]
    } else {
      _568 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _569 = 1.0f;  // [sem: blended]
      _570 = 1.4f;  // [sem: blended]
    }
    _580 = 1.0f - _568;
    _605 = ((exp2(log2(((saturate((_507 * _507) * _510) * _580) + _568) * _510) * _569) - _513) * _570) + _513;
    _606 = ((exp2(log2(((saturate((_508 * _508) * _511) * _580) + _568) * _511) * _569) - _513) * _570) + _513;
    _607 = ((exp2(log2(((saturate((_509 * _509) * _512) * _580) + _568) * _512) * _569) - _513) * _570) + _513;
    _626 = saturate(exp2(log2(mad(_607, -0.09902974f, mad(_606, -0.09802088f, (_605 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _627 = saturate(exp2(log2(mad(_607, -0.098961174f, mad(_606, 1.1519032f, (_605 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _628 = saturate(exp2(log2(mad(_607, 1.1510737f, mad(_606, -0.09804345f, (_605 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _634 = 1.0f - abs(_etcParams.w);
      _638 = saturate(_etcParams.w);  // [sem: expr_sat]
      _639 = (_634 * _626) + _638;
      _640 = (_634 * _627) + _638;
      _641 = (_634 * _628) + _638;
      if (_colorGradingParams.w > 0.0f) {
        _646 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _663 = (((max(0.0f, (1.0f - _639)) - _639) * _646) + _639);
        _664 = (((max(0.0f, (1.0f - _640)) - _640) * _646) + _640);
        _665 = (((max(0.0f, (1.0f - _641)) - _641) * _646) + _641);
      } else {
        _663 = _639;
        _664 = _640;
        _665 = _641;
      }
      _671 = _userImageAdjust.y + 1.0f;
      _675 = _userImageAdjust.x + 0.5f;
      _676 = ((_663 + -0.5f) * _671) + _675;
      _677 = ((_664 + -0.5f) * _671) + _675;
      _678 = ((_665 + -0.5f) * _671) + _675;
      _708 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _719 = exp2(log2(saturate(mad(_colorBlind0.z, _678, mad(_colorBlind0.y, _677, (_colorBlind0.x * _676))))) * _708);
      _720 = exp2(log2(saturate(mad(_colorBlind1.z, _678, mad(_colorBlind1.y, _677, (_colorBlind1.x * _676))))) * _708);
      _721 = exp2(log2(saturate(mad(_colorBlind2.z, _678, mad(_colorBlind2.y, _677, (_colorBlind2.x * _676))))) * _708);
    } else {
      _719 = _626;
      _720 = _627;
      _721 = _628;
    }
  } else {
    _719 = _347;
    _720 = _348;
    _721 = _349;
  }
  if (_etcParams.y > 1.0f) {
    _730 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _731 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _735 = saturate(1.0f - (dot(float2(_730, _731), float2(_730, _731)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _740 = (_735 * _719);
    _741 = (_735 * _720);
    _742 = (_735 * _721);
  } else {
    _740 = _719;
    _741 = _720;
    _742 = _721;
  }
  if (_366 && (_etcParams.z > 0.0f)) {
    _772 = select((_740 <= 0.0031308f), (_740 * 12.92f), (((pow(_740, 0.41666666f)) * 1.055f) + -0.055f));
    _773 = select((_741 <= 0.0031308f), (_741 * 12.92f), (((pow(_741, 0.41666666f)) * 1.055f) + -0.055f));
    _774 = select((_742 <= 0.0031308f), (_742 * 12.92f), (((pow(_742, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _772 = _740;
    _773 = _741;
    _774 = _742;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _779 = (float)((uint)((uint)(_350)));
    if (!(_779 < _viewDir.w)) {
      if (!(_779 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _788 = _772;
        _789 = _773;
        _790 = _774;
      } else {
        _788 = 0.0f;
        _789 = 0.0f;
        _790 = 0.0f;
      }
    } else {
      _788 = 0.0f;
      _789 = 0.0f;
      _790 = 0.0f;
    }
  } else {
    _788 = _772;
    _789 = _773;
    _790 = _774;
  }
  _800 = exp2(log2(_788 * 0.0001f) * 0.15930176f);
  _801 = exp2(log2(_789 * 0.0001f) * 0.15930176f);
  _802 = exp2(log2(_790 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_800 * 18.6875f) + 1.0f)) * ((_800 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_801 * 18.6875f) + 1.0f)) * ((_801 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_802 * 18.6875f) + 1.0f)) * ((_802 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _363;
  return SV_Target;
}
