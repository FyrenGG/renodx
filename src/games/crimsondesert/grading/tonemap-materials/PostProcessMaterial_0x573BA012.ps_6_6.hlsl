struct PostProcessHousing_CDStruct {
  float _housingPreviewRatio;
  uint _housingValidColor;
  uint _housingInvalidColor;
};

struct BindlessParameters_PostProcessHousing_CD {
  PostProcessHousing_CDStruct BindlessParameters_PostProcessHousing_CD;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

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

cbuffer GlobalMaterialGlobalParameter_Common : register(b50, space98) {
  float3 _mainPosition : packoffset(c000.x);
  float3 _mainPositionPrev : packoffset(c001.x);
  float3 _headPosition : packoffset(c002.x);
  float3 _targetFocusPosition : packoffset(c003.x);
  float _hpPercentage : packoffset(c003.w);
  uint _skinnedMeshNoiseTexture : packoffset(c004.x);
  float _highLightForVision : packoffset(c004.y);
  float _highLightForVisionRemoteCatch : packoffset(c004.z);
  float _characterHighlight : packoffset(c004.w);
  uint _specialModeType : packoffset(c005.x);
  float _visionRadius : packoffset(c005.y);
  float _interactionTime : packoffset(c005.z);
  float3 _questGuideWorldPosition : packoffset(c006.x);
  float3 _detectModeUp : packoffset(c007.x);
  float3 _detectModeLook : packoffset(c008.x);
  float3 _detectModePosition : packoffset(c009.x);
  float2 _detectModeLightProfileOffset : packoffset(c010.x);
  uint _detectModeLightProfileIndex : packoffset(c010.z);
  float _detectModeAngle : packoffset(c010.w);
  float _detectModeRadius : packoffset(c011.x);
  uint _useHatMode : packoffset(c011.y);
  uint4 _oreVeinBitMask : packoffset(c012.x);
  uint _oreVeinDissolveIndex : packoffset(c013.x);
  float _oreVeinDissolveRatio : packoffset(c013.y);
  float _hideStateRatio : packoffset(c013.z);
  float3 _hazardAlertPosition : packoffset(c014.x);
  float _wantedRegionRatio : packoffset(c014.w);
  float _wantedRegionOpacity : packoffset(c015.x);
  float _wantedRegionRadius : packoffset(c015.y);
  float3 _wantedRegionPosition : packoffset(c016.x);
  float _elementActivateDuration : packoffset(c016.w);
  float _temperatureWarning : packoffset(c017.x);
  float _electrocutionWarning : packoffset(c017.y);
  float _fleeCount : packoffset(c017.z);
  float _followLearning : packoffset(c017.w);
  float4 _enemyAlert1 : packoffset(c018.x);
  float4 _enemyAlert2 : packoffset(c019.x);
  float _pullingEffectAttractionOffRadius : packoffset(c020.x);
  float _pullingEffectPushFromCharacter : packoffset(c020.y);
  float _pullingEffectPushScale : packoffset(c020.z);
  float _pullingEffectAttractionScale : packoffset(c020.w);
  float _pullingEffectExternalScale : packoffset(c021.x);
  float _pullingEffectVectorFieldScale : packoffset(c021.y);
  float _pullingEffectHeightOffset : packoffset(c021.z);
  float _housingPreviewState : packoffset(c021.w);
  float _customEffectOpacity : packoffset(c022.x);
  uint _renderPassInteraction : packoffset(c022.y);
  uint _renderPassSelfPlayer : packoffset(c022.z);
  uint _renderPassEnemy : packoffset(c022.w);
  uint _renderPassTargetFocus : packoffset(c023.x);
  uint _renderPassLearning : packoffset(c023.y);
  uint _renderPassTest : packoffset(c023.z);
  uint _enableChromaticAberration : packoffset(c023.w);
  uint _renderPassDetectObjective : packoffset(c024.x);
  uint _renderPassDetectItem : packoffset(c024.y);
  uint _renderPassDetectGimmick : packoffset(c024.z);
  uint _renderPassDetectRemoteCatch : packoffset(c024.w);
  uint _renderPassDetectPickedRemoteCatch : packoffset(c025.x);
  uint _renderPassDetectLift : packoffset(c025.y);
  uint _renderPassKnowledgeNPC : packoffset(c025.z);
  uint _renderPassKnowledgeGain : packoffset(c025.w);
  uint _renderPassAnamorphicMural : packoffset(c026.x);
  uint _renderPassMemoryBackground : packoffset(c026.y);
  uint _renderPassMemory : packoffset(c026.z);
  uint _renderPassEnemyBoss : packoffset(c026.w);
  uint _renderPassAimHighlight : packoffset(c027.x);
  float4 _aimHighlightPosition : packoffset(c028.x);
  uint _renderPassNPCGhost : packoffset(c029.x);
  uint _renderPassHousing : packoffset(c029.y);
  uint _characterMeshEffectType : packoffset(c029.z);
};

typedef BindlessParameters_PostProcessHousing_CD BindlessParameters_PostProcessHousing_CD_t;
ConstantBuffer<BindlessParameters_PostProcessHousing_CD_t> BindlessParameters_PostProcessHousing_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _23;
  float _29;
  float _32;
  float _35;
  float _44;
  float _53;
  float _62;
  uint2 _64;
  uint _79;
  float _84;
  float _89;
  float _91;
  float _92;
  float _93;
  float _104;
  float _105;
  float _144;
  float _276;
  float _479;
  float _480;
  float _481;
  float _574;
  float _575;
  float _576;
  float _630;
  float _631;
  float _632;
  float _651;
  float _652;
  float _653;
  float _683;
  float _684;
  float _685;
  float _699;
  float _700;
  float _701;
  float _107;
  float _108;
  float _109;
  float _110;
  float _112;
  int _120;
  float _128;
  int _147;
  int _155;
  float _158;
  float _161;
  float _163;
  float _172;
  float _181;
  float _190;
  int _193;
  int _201;
  float _204;
  float _207;
  float _209;
  float _212;
  float _230;
  float _246;
  float _262;
  uint _263;
  bool _279;
  float _283;
  float _302;
  float _318;
  float _334;
  float _335;
  float _339;
  float _342;
  float _345;
  float _352;
  float _359;
  float _366;
  float _367;
  float _368;
  float _369;
  float _370;
  float _371;
  float _372;
  float _388;
  float _404;
  float _420;
  float _421;
  float _422;
  float _423;
  float _424;
  float _441;
  float _442;
  float _443;
  float _444;
  float _447;
  float _450;
  float _454;
  float _458;
  float _462;
  float _482;
  float _494;
  float _506;
  float _518;
  float _525;
  float _532;
  float _539;
  float _545;
  float _546;
  float _548;
  float _550;
  float _552;
  float _557;
  float _578;
  float _580;
  float _583;
  float _586;
  float _589;
  float _595;
  float _637;
  float _640;
  float _646;
  float _688;
  float _705;
  float _709;
  float _713;
  _23 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _29 = (pow(_23.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _32 = (pow(_23.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _35 = (pow(_23.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _44 = exp2(log2(max(0.0f, (_29 + -0.8359375f)) / (18.851562f - (_29 * 18.6875f))) * 6.277395f) * 10000.0f;
  _53 = exp2(log2(max(0.0f, (_32 + -0.8359375f)) / (18.851562f - (_32 * 18.6875f))) * 6.277395f) * 10000.0f;
  _62 = exp2(log2(max(0.0f, (_35 + -0.8359375f)) / (18.851562f - (_35 * 18.6875f))) * 6.277395f) * 10000.0f;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_64.x, _64.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _79 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_64.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_64.y))))))) + 0.5f) * TEXCOORD.y)), 0));
  _84 = (((float)((uint)((uint)((uint)((uint)(_79.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _89 = (((float)((uint)((uint)(((uint)((uint)(_79.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _91 = 1.0f - abs(_84);
  _92 = abs(_89);
  _93 = _91 - _92;
  if (!(_93 >= 0.0f)) {
    _104 = (select((_89 >= 0.0f), 1.0f, -1.0f) * _91);
    _105 = (select((_84 >= 0.0f), 1.0f, -1.0f) * (1.0f - _92));
  } else {
    _104 = _89;
    _105 = _84;
  }
  _107 = rsqrt(dot(float3(_105, _104, _93), float3(_105, _104, _93)));  // [sem: invLength]
  _108 = _107 * _105;
  _109 = _107 * _104;
  _110 = _107 * _93;
  _112 = rsqrt(dot(float3(_108, _109, _110), float3(_108, _109, _110)));  // [sem: invLength]
  if ((_79.x & 255) == _renderPassHousing) {
    _120 = WaveReadLaneFirst(_materialIndex);
    _128 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_120 < (uint)170000), _120, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
    _144 = ((1.0f - abs(dot(float3((_112 * _108), (_112 * _109), (_112 * _110)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))))) * _128);
  } else {
    _144 = 0.0f;
  }
  _147 = WaveReadLaneFirst(_materialIndex);
  _155 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_147 < (uint)170000), _147, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingValidColor);
  _158 = (float)((uint)((uint)(((uint)((uint)(_155)) >> 16) & 255)));
  _161 = (float)((uint)((uint)(((uint)((uint)(_155)) >> 8) & 255)));
  _163 = (float)((uint)((uint)(_155 & 255)));
  _172 = select(((_158 * 0.003921569f) < 0.04045f), (_158 * 0.000303527f), exp2(log2((_158 * 0.003717127f) + 0.052132703f) * 2.4f));
  _181 = select(((_161 * 0.003921569f) < 0.04045f), (_161 * 0.000303527f), exp2(log2((_161 * 0.003717127f) + 0.052132703f) * 2.4f));
  _190 = select(((_163 * 0.003921569f) < 0.04045f), (_163 * 0.000303527f), exp2(log2((_163 * 0.003717127f) + 0.052132703f) * 2.4f));
  _193 = WaveReadLaneFirst(_materialIndex);
  _201 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_193 < (uint)170000), _193, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingInvalidColor);
  _204 = (float)((uint)((uint)(((uint)((uint)(_201)) >> 16) & 255)));
  _207 = (float)((uint)((uint)(((uint)((uint)(_201)) >> 8) & 255)));
  _209 = (float)((uint)((uint)(_201 & 255)));
  _212 = max(0.001f, _exposure0.x);
  _230 = ((((((select(((_204 * 0.003921569f) < 0.04045f), (_204 * 0.000303527f), exp2(log2((_204 * 0.003717127f) + 0.052132703f) * 2.4f)) - _172) * _housingPreviewState) + _172) / _212) - _44) * _144) + _44;
  _246 = ((((((select(((_207 * 0.003921569f) < 0.04045f), (_207 * 0.000303527f), exp2(log2((_207 * 0.003717127f) + 0.052132703f) * 2.4f)) - _181) * _housingPreviewState) + _181) / _212) - _53) * _144) + _53;
  _262 = ((((((select(((_209 * 0.003921569f) < 0.04045f), (_209 * 0.000303527f), exp2(log2((_209 * 0.003717127f) + 0.052132703f) * 2.4f)) - _190) * _housingPreviewState) + _190) / _212) - _62) * _144) + _62;
  _263 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _276 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _263, 0)))).x) & 127)))) + 0.5f);
  } else {
    _276 = 1.0f;
  }
  _279 = (_localToneMappingParams.w > 0.0f);
  if (_279) {
    _283 = _userImageAdjust.z * _exposure0.x;
    _302 = exp2(_powerParams.x * log2(max(0.0f, (((_283 * max(0.0f, (((_230 * 1.70505f) - (_246 * 0.62179f)) - (_262 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _318 = exp2(log2(max(0.0f, (((_slopeParams.y * _283) * max(0.0f, (((_246 * 1.1408f) - (_230 * 0.13026f)) - (_262 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _334 = exp2(log2(max(0.0f, (((_slopeParams.z * _283) * max(0.0f, (((_230 * -0.024f) - (_246 * 0.12897f)) + (_262 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _335 = dot(float3(_302, _318, _334), float3(0.212671f, 0.71516f, 0.072169f));
    _339 = ((_302 - _335) * _powerParams.w) + _335;
    _342 = ((_318 - _335) * _powerParams.w) + _335;
    _345 = ((_334 - _335) * _powerParams.w) + _335;
    _352 = min(max(log2(mad(_345, 0.079223745f, mad(_342, 0.0784336f, (_339 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _359 = min(max(log2(mad(_345, 0.07916613f, mad(_342, 0.87846863f, (_339 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _366 = min(max(log2(mad(_345, 0.879143f, mad(_342, 0.0784336f, (_339 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _367 = _352 * 0.060606062f;
    _368 = _359 * 0.060606062f;
    _369 = _366 * 0.060606062f;
    _370 = _367 * _367;
    _371 = _368 * _368;
    _372 = _369 * _369;
    _388 = min(0.0f, (-0.0f - (((_352 * 0.0072181816f) + ((_370 * 0.4298f) + (((_370 * _370) * ((31.96f - (_352 * 2.4327273f)) + (_370 * 15.5f))) - ((_352 * 0.41624245f) * _370)))) + -0.00232f)));
    _404 = min(0.0f, (-0.0f - (((_359 * 0.0072181816f) + ((_371 * 0.4298f) + (((_371 * _371) * ((31.96f - (_359 * 2.4327273f)) + (_371 * 15.5f))) - ((_359 * 0.41624245f) * _371)))) + -0.00232f)));
    _420 = min(0.0f, (-0.0f - (((_366 * 0.0072181816f) + ((_372 * 0.4298f) + (((_372 * _372) * ((31.96f - (_366 * 2.4327273f)) + (_372 * 15.5f))) - ((_366 * 0.41624245f) * _372)))) + -0.00232f)));
    _421 = -0.0f - _388;
    _422 = -0.0f - _404;
    _423 = -0.0f - _420;
    _424 = dot(float3(_421, _422, _423), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _441 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _442 = -0.79999995f / _441;
      _443 = -1.2f / _441;
      _444 = 0.20000005f / _441;
      _447 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _450 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _454 = (_442 + 1.4f) + (_450 * (-0.39999998f - _442));
      _458 = (_443 + 1.6f) + (_450 * (-0.6f - _443));
      _462 = (_444 + 0.9f) + (_450 * (0.5f - _444));
      _479 = (lerp(_462, 1.4f, _447));  // [sem: blended]
      _480 = (lerp(_454, 1.0f, _447));  // [sem: blended]
      _481 = (lerp(_458, 1.2f, _447));  // [sem: blended]
    } else {
      _479 = 1.4f;  // [sem: blended]
      _480 = 1.0f;  // [sem: blended]
      _481 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _482 = 1.0f - _481;
    _494 = ((exp2(log2(((saturate((_388 * _388) * _421) * _482) + _481) * _421) * _480) - _424) * _479) + _424;
    _506 = ((exp2(log2(((saturate((_404 * _404) * _422) * _482) + _481) * _422) * _480) - _424) * _479) + _424;
    _518 = ((exp2(log2(((saturate((_420 * _420) * _423) * _482) + _481) * _423) * _480) - _424) * _479) + _424;
    _525 = saturate(exp2(log2(mad(_518, -0.09902974f, mad(_506, -0.09802088f, (_494 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _532 = saturate(exp2(log2(mad(_518, -0.098961174f, mad(_506, 1.1519032f, (_494 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _539 = saturate(exp2(log2(mad(_518, 1.1510737f, mad(_506, -0.09804345f, (_494 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _545 = 1.0f - abs(_etcParams.w);
      _546 = saturate(_etcParams.w);  // [sem: expr_sat]
      _548 = (_545 * _525) + _546;
      _550 = (_545 * _532) + _546;
      _552 = (_545 * _539) + _546;
      if (_colorGradingParams.w > 0.0f) {
        _557 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _574 = (((max(0.0f, (1.0f - _548)) - _548) * _557) + _548);
        _575 = (((max(0.0f, (1.0f - _550)) - _550) * _557) + _550);
        _576 = (((max(0.0f, (1.0f - _552)) - _552) * _557) + _552);
      } else {
        _574 = _548;
        _575 = _550;
        _576 = _552;
      }
      _578 = _userImageAdjust.y + 1.0f;
      _580 = _userImageAdjust.x + 0.5f;
      _583 = ((_574 + -0.5f) * _578) + _580;
      _586 = ((_575 + -0.5f) * _578) + _580;
      _589 = ((_576 + -0.5f) * _578) + _580;
      _595 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _630 = exp2(log2(saturate(mad(_colorBlind0.z, _589, mad(_colorBlind0.y, _586, (_colorBlind0.x * _583))))) * _595);
      _631 = exp2(log2(saturate(mad(_colorBlind1.z, _589, mad(_colorBlind1.y, _586, (_colorBlind1.x * _583))))) * _595);
      _632 = exp2(log2(saturate(mad(_colorBlind2.z, _589, mad(_colorBlind2.y, _586, (_colorBlind2.x * _583))))) * _595);
    } else {
      _630 = _525;
      _631 = _532;
      _632 = _539;
    }
  } else {
    _630 = _230;
    _631 = _246;
    _632 = _262;
  }
  if (_etcParams.y > 1.0f) {
    _637 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _640 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _646 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_637, _640), float2(_637, _640))));  // [sem: expr_sat]
    _651 = (_646 * _630);
    _652 = (_646 * _631);
    _653 = (_646 * _632);
  } else {
    _651 = _630;
    _652 = _631;
    _653 = _632;
  }
  if (_279 && (_etcParams.z > 0.0f)) {
    _683 = select((_651 <= 0.0031308f), (_651 * 12.92f), (((pow(_651, 0.41666666f)) * 1.055f) + -0.055f));
    _684 = select((_652 <= 0.0031308f), (_652 * 12.92f), (((pow(_652, 0.41666666f)) * 1.055f) + -0.055f));
    _685 = select((_653 <= 0.0031308f), (_653 * 12.92f), (((pow(_653, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _683 = _651;
    _684 = _652;
    _685 = _653;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _688 = (float)((uint)((uint)(_263)));
    if (!(_688 < _viewDir.w)) {
      if (!(!(_688 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _699 = 0.0f;
        _700 = 0.0f;
        _701 = 0.0f;
      } else {
        _699 = _683;
        _700 = _684;
        _701 = _685;
      }
    } else {
      _699 = 0.0f;
      _700 = 0.0f;
      _701 = 0.0f;
    }
  } else {
    _699 = _683;
    _700 = _684;
    _701 = _685;
  }
  _705 = exp2(log2(_699 * 0.0001f) * 0.15930176f);
  _709 = exp2(log2(_700 * 0.0001f) * 0.15930176f);
  _713 = exp2(log2(_701 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_705 * 18.6875f) + 1.0f)) * ((_705 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_709 * 18.6875f) + 1.0f)) * ((_709 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_713 * 18.6875f) + 1.0f)) * ((_713 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _276;
  return SV_Target;
}
