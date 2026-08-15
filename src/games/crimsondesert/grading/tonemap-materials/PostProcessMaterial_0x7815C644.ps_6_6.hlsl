struct PostProcessDamageStruct {
  uint _bloodColor;
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
  float _isBloodEffect;
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

struct BindlessParameters_PostProcessDamage {
  PostProcessDamageStruct BindlessParameters_PostProcessDamage;
};

typedef BindlessParameters_PostProcessDamage BindlessParameters_PostProcessDamage_t;
ConstantBuffer<BindlessParameters_PostProcessDamage_t> BindlessParameters_PostProcessDamage[] : register(b0, space100);

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
  int _22;
  int _30;
  float4 _37;
  int _40;
  int _48;
  float4 _55;
  int _59;
  float _67;
  int _68;
  float _76;
  int _77;
  float _85;
  float _86;
  float4 _99;
  int _103;
  float _111;
  float _112;
  float _119;
  float _120;
  float _121;
  float _124;
  float _127;
  int _131;
  int _139;
  float _142;
  float _145;
  float _147;
  float _172;
  int _175;
  float _183;
  bool _189;
  float _190;
  int _194;
  int _202;
  float4 _209;
  int _214;
  int _222;
  float4 _229;
  int _233;
  float _241;
  int _242;
  float _250;
  int _251;
  float _259;
  float _261;
  float _268;
  float _269;
  float _270;
  int _271;
  float _279;
  float _280;
  float _290;
  float _291;
  float _292;
  uint _293;
  float _307;
  float _512;
  float _513;
  float _514;
  float _607;
  float _608;
  float _609;
  float _663;
  float _664;
  float _665;
  float _678;
  float _679;
  float _680;
  float _710;
  float _711;
  float _712;
  float _726;
  float _727;
  float _728;
  bool _310;
  float _316;
  float _365;
  float _366;
  float _367;
  float _369;
  float _376;
  float _377;
  float _378;
  float _397;
  float _398;
  float _399;
  float _400;
  float _401;
  float _402;
  float _403;
  float _404;
  float _405;
  float _451;
  float _452;
  float _453;
  float _454;
  float _455;
  float _456;
  float _457;
  float _474;
  float _475;
  float _476;
  float _477;
  float _483;
  float _486;
  float _493;
  float _494;
  float _495;
  float _524;
  float _549;
  float _550;
  float _551;
  float _570;
  float _571;
  float _572;
  float _578;
  float _582;
  float _583;
  float _584;
  float _585;
  float _590;
  float _615;
  float _619;
  float _620;
  float _621;
  float _622;
  float _652;
  float _673;
  float _717;
  _22 = WaveReadLaneFirst(_materialIndex);
  _30 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_22 < (uint)170000), _22, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._waterNormalTexture);
  _37 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_30 < (uint)65000), _30, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _40 = WaveReadLaneFirst(_materialIndex);
  _48 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_40 < (uint)170000), _40, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._waterMaskTexture);
  _55 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_48 < (uint)65000), _48, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _59 = WaveReadLaneFirst(_materialIndex);
  _67 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_59 < (uint)170000), _59, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._waterRatio1);
  _68 = WaveReadLaneFirst(_materialIndex);
  _76 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_68 < (uint)170000), _68, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._waterRatio2);
  _77 = WaveReadLaneFirst(_materialIndex);
  _85 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_77 < (uint)170000), _77, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._waterRatio3);
  _86 = dot(float3(_55.x, _55.y, _55.z), float3(_67, _76, _85));
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _99 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(abs((_86 * ((_37.x * 0.2f) + -0.09960785f)) + TEXCOORD.x), abs(TEXCOORD.y - (_86 * ((_37.y * 0.2f) + -0.09960785f)))));
  _103 = WaveReadLaneFirst(_materialIndex);
  _111 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_103 < (uint)170000), _103, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._isDead);
  _112 = dot(float3(_99.x, _99.y, _99.z), float3(0.2627f, 0.678f, 0.0593f));
  _119 = ((_112 - _99.x) * _111) + _99.x;
  _120 = ((_112 - _99.y) * _111) + _99.y;
  _121 = ((_112 - _99.z) * _111) + _99.z;
  _124 = abs((TEXCOORD.x * 2.0f) + -1.0f);
  _127 = abs((TEXCOORD.y * 2.0f) + -1.0f);
  _131 = WaveReadLaneFirst(_materialIndex);
  _139 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_131 < (uint)170000), _131, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._bloodColor);
  _142 = (float)((uint)((uint)(((uint)((uint)(_139)) >> 16) & 255)));
  _145 = (float)((uint)((uint)(((uint)((uint)(_139)) >> 8) & 255)));
  _147 = (float)((uint)((uint)(_139 & 255)));
  _172 = select(((_142 * 0.003921569f) < 0.04045f), (_142 * 0.000303527f), exp2(log2((_142 * 0.003717127f) + 0.052132703f) * 2.4f));
  _175 = WaveReadLaneFirst(_materialIndex);
  _183 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_175 < (uint)170000), _175, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._isBloodEffect);
  _189 = (_183 > 0.001f) && ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
  _190 = _172 * 0.4f;
  _194 = WaveReadLaneFirst(_materialIndex);
  _202 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_194 < (uint)170000), _194, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._dirtTexture);
  _209 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_202 < (uint)65000), _202, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _214 = WaveReadLaneFirst(_materialIndex);
  _222 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_214 < (uint)170000), _214, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._dirtMaskTexture);
  _229 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_222 < (uint)65000), _222, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _233 = WaveReadLaneFirst(_materialIndex);
  _241 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_233 < (uint)170000), _233, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._dirtRatio1);
  _242 = WaveReadLaneFirst(_materialIndex);
  _250 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_242 < (uint)170000), _242, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._dirtRatio2);
  _251 = WaveReadLaneFirst(_materialIndex);
  _259 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_251 < (uint)170000), _251, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._dirtRatio3);
  _261 = dot(float3(_229.x, _229.y, _229.z), float3(_241, _250, _259)) * _209.w;
  _268 = (_261 * (_209.x - _119)) + _119;
  _269 = (_261 * (_209.y - _120)) + _120;
  _270 = (_261 * (_209.z - _121)) + _121;
  _271 = WaveReadLaneFirst(_materialIndex);
  _279 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_271 < (uint)170000), _271, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._bloodRatio);
  _280 = _279 * max((_124 * _124), (_127 * _127));
  _290 = _268 - ((_268 * (1.0f - select(_189, _190, _172))) * _280);
  _291 = _269 - ((_269 * (1.0f - select(_189, _190, select(((_145 * 0.003921569f) < 0.04045f), (_145 * 0.000303527f), exp2(log2((_145 * 0.003717127f) + 0.052132703f) * 2.4f))))) * _280);
  _292 = _270 - ((_270 * (1.0f - select(_189, _190, select(((_147 * 0.003921569f) < 0.04045f), (_147 * 0.000303527f), exp2(log2((_147 * 0.003717127f) + 0.052132703f) * 2.4f))))) * _280);
  _293 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _307 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _293, 0)))).x) & 127)))) + 0.5f);
  } else {
    _307 = _postProcessParams.x;
  }
  _310 = (_localToneMappingParams.w > 0.0f);
  if (_310) {
    _316 = _userImageAdjust.z * _exposure0.x;
    _365 = exp2(log2(max(0.0f, (((_316 * max(0.0f, (((_290 * 1.70505f) - (_291 * 0.62179f)) - (_292 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _366 = exp2(log2(max(0.0f, (((max(0.0f, (((_291 * 1.1408f) - (_290 * 0.13026f)) - (_292 * 0.01055f))) * _316) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _367 = exp2(log2(max(0.0f, (((max(0.0f, (((_290 * -0.024f) - (_291 * 0.12897f)) + (_292 * 1.15297f))) * _316) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _369 = dot(float3(_365, _366, _367), float3(0.212671f, 0.71516f, 0.072169f));
    _376 = ((_365 - _369) * _powerParams.w) + _369;
    _377 = ((_366 - _369) * _powerParams.w) + _369;
    _378 = ((_367 - _369) * _powerParams.w) + _369;
    _397 = min(max(log2(mad(_378, 0.079223745f, mad(_377, 0.0784336f, (_376 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _398 = min(max(log2(mad(_378, 0.07916613f, mad(_377, 0.87846863f, (_376 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _399 = min(max(log2(mad(_378, 0.879143f, mad(_377, 0.0784336f, (_376 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _400 = _397 * 0.060606062f;
    _401 = _398 * 0.060606062f;
    _402 = _399 * 0.060606062f;
    _403 = _400 * _400;
    _404 = _401 * _401;
    _405 = _402 * _402;
    _451 = min(0.0f, (-0.0f - (((_397 * 0.0072181816f) + ((_403 * 0.4298f) + (((_403 * _403) * ((31.96f - (_397 * 2.4327273f)) + (_403 * 15.5f))) - ((_397 * 0.41624245f) * _403)))) + -0.00232f)));
    _452 = min(0.0f, (-0.0f - (((_398 * 0.0072181816f) + ((_404 * 0.4298f) + (((_404 * _404) * ((31.96f - (_398 * 2.4327273f)) + (_404 * 15.5f))) - ((_398 * 0.41624245f) * _404)))) + -0.00232f)));
    _453 = min(0.0f, (-0.0f - (((_399 * 0.0072181816f) + ((_405 * 0.4298f) + (((_405 * _405) * ((31.96f - (_399 * 2.4327273f)) + (_405 * 15.5f))) - ((_399 * 0.41624245f) * _405)))) + -0.00232f)));
    _454 = -0.0f - _451;
    _455 = -0.0f - _452;
    _456 = -0.0f - _453;
    _457 = dot(float3(_454, _455, _456), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _474 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _475 = -0.79999995f / _474;
      _476 = -1.2f / _474;
      _477 = 0.20000005f / _474;
      _483 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _486 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _493 = (_475 + 1.4f) + (_486 * (-0.39999998f - _475));
      _494 = (_476 + 1.6f) + (_486 * (-0.6f - _476));
      _495 = (_477 + 0.9f) + (_486 * (0.5f - _477));
      _512 = (lerp(_494, 1.2f, _483));  // [sem: blended]
      _513 = (lerp(_493, 1.0f, _483));  // [sem: blended]
      _514 = (lerp(_495, 1.4f, _483));  // [sem: blended]
    } else {
      _512 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _513 = 1.0f;  // [sem: blended]
      _514 = 1.4f;  // [sem: blended]
    }
    _524 = 1.0f - _512;
    _549 = ((exp2(log2(((saturate((_451 * _451) * _454) * _524) + _512) * _454) * _513) - _457) * _514) + _457;
    _550 = ((exp2(log2(((saturate((_452 * _452) * _455) * _524) + _512) * _455) * _513) - _457) * _514) + _457;
    _551 = ((exp2(log2(((saturate((_453 * _453) * _456) * _524) + _512) * _456) * _513) - _457) * _514) + _457;
    _570 = saturate(exp2(log2(mad(_551, -0.09902974f, mad(_550, -0.09802088f, (_549 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _571 = saturate(exp2(log2(mad(_551, -0.098961174f, mad(_550, 1.1519032f, (_549 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _572 = saturate(exp2(log2(mad(_551, 1.1510737f, mad(_550, -0.09804345f, (_549 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _578 = 1.0f - abs(_etcParams.w);
      _582 = saturate(_etcParams.w);  // [sem: expr_sat]
      _583 = (_578 * _570) + _582;
      _584 = (_578 * _571) + _582;
      _585 = (_578 * _572) + _582;
      if (_colorGradingParams.w > 0.0f) {
        _590 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _607 = (((max(0.0f, (1.0f - _583)) - _583) * _590) + _583);
        _608 = (((max(0.0f, (1.0f - _584)) - _584) * _590) + _584);
        _609 = (((max(0.0f, (1.0f - _585)) - _585) * _590) + _585);
      } else {
        _607 = _583;
        _608 = _584;
        _609 = _585;
      }
      _615 = _userImageAdjust.y + 1.0f;
      _619 = _userImageAdjust.x + 0.5f;
      _620 = ((_607 + -0.5f) * _615) + _619;
      _621 = ((_608 + -0.5f) * _615) + _619;
      _622 = ((_609 + -0.5f) * _615) + _619;
      _652 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _663 = exp2(log2(saturate(mad(_colorBlind0.z, _622, mad(_colorBlind0.y, _621, (_colorBlind0.x * _620))))) * _652);
      _664 = exp2(log2(saturate(mad(_colorBlind1.z, _622, mad(_colorBlind1.y, _621, (_colorBlind1.x * _620))))) * _652);
      _665 = exp2(log2(saturate(mad(_colorBlind2.z, _622, mad(_colorBlind2.y, _621, (_colorBlind2.x * _620))))) * _652);
    } else {
      _663 = _570;
      _664 = _571;
      _665 = _572;
    }
  } else {
    _663 = _290;
    _664 = _291;
    _665 = _292;
  }
  if (_etcParams.y > 1.0f) {
    _673 = saturate(1.0f - (dot(float2(_124, _127), float2(_124, _127)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _678 = (_673 * _663);
    _679 = (_673 * _664);
    _680 = (_673 * _665);
  } else {
    _678 = _663;
    _679 = _664;
    _680 = _665;
  }
  if (_310 && (_etcParams.z > 0.0f)) {
    _710 = select((_678 <= 0.0031308f), (_678 * 12.92f), (((pow(_678, 0.41666666f)) * 1.055f) + -0.055f));
    _711 = select((_679 <= 0.0031308f), (_679 * 12.92f), (((pow(_679, 0.41666666f)) * 1.055f) + -0.055f));
    _712 = select((_680 <= 0.0031308f), (_680 * 12.92f), (((pow(_680, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _710 = _678;
    _711 = _679;
    _712 = _680;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _717 = (float)((uint)((uint)(_293)));
    if (!(_717 < _viewDir.w)) {
      if (!(_717 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _726 = _710;
        _727 = _711;
        _728 = _712;
      } else {
        _726 = 0.0f;
        _727 = 0.0f;
        _728 = 0.0f;
      }
    } else {
      _726 = 0.0f;
      _727 = 0.0f;
      _728 = 0.0f;
    }
  } else {
    _726 = _710;
    _727 = _711;
    _728 = _712;
  }
  SV_Target.x = _726;
  SV_Target.y = _727;
  SV_Target.z = _728;
  SV_Target.w = _307;
  return SV_Target;
}
