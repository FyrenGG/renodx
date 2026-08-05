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
  uint2 _28;
  uint _43;
  float _48;
  float _53;
  float _55;
  float _56;
  float _57;
  float _68;
  float _69;
  float _108;
  float _240;
  float _443;
  float _444;
  float _445;
  float _538;
  float _539;
  float _540;
  float _594;
  float _595;
  float _596;
  float _615;
  float _616;
  float _617;
  float _647;
  float _648;
  float _649;
  float _663;
  float _664;
  float _665;
  float _71;
  float _72;
  float _73;
  float _74;
  float _76;
  int _84;
  float _92;
  int _111;
  int _119;
  float _122;
  float _125;
  float _127;
  float _136;
  float _145;
  float _154;
  int _157;
  int _165;
  float _168;
  float _171;
  float _173;
  float _176;
  float _194;
  float _210;
  float _226;
  uint _227;
  bool _243;
  float _247;
  float _266;
  float _282;
  float _298;
  float _299;
  float _303;
  float _306;
  float _309;
  float _316;
  float _323;
  float _330;
  float _331;
  float _332;
  float _333;
  float _334;
  float _335;
  float _336;
  float _352;
  float _368;
  float _384;
  float _385;
  float _386;
  float _387;
  float _388;
  float _405;
  float _406;
  float _407;
  float _408;
  float _411;
  float _414;
  float _418;
  float _422;
  float _426;
  float _446;
  float _458;
  float _470;
  float _482;
  float _489;
  float _496;
  float _503;
  float _509;
  float _510;
  float _512;
  float _514;
  float _516;
  float _521;
  float _542;
  float _544;
  float _547;
  float _550;
  float _553;
  float _559;
  float _601;
  float _604;
  float _610;
  float _652;
  _23 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_28.x, _28.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _43 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_28.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_28.y))))))) + 0.5f) * TEXCOORD.y)), 0));
  _48 = (((float)((uint)((uint)((uint)((uint)(_43.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _53 = (((float)((uint)((uint)(((uint)((uint)(_43.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _55 = 1.0f - abs(_48);
  _56 = abs(_53);
  _57 = _55 - _56;
  if (!(_57 >= 0.0f)) {
    _68 = (select((_53 >= 0.0f), 1.0f, -1.0f) * _55);
    _69 = (select((_48 >= 0.0f), 1.0f, -1.0f) * (1.0f - _56));
  } else {
    _68 = _53;
    _69 = _48;
  }
  _71 = rsqrt(dot(float3(_69, _68, _57), float3(_69, _68, _57)));  // [sem: invLength]
  _72 = _71 * _69;
  _73 = _71 * _68;
  _74 = _71 * _57;
  _76 = rsqrt(dot(float3(_72, _73, _74), float3(_72, _73, _74)));  // [sem: invLength]
  if ((_43.x & 255) == _renderPassHousing) {
    _84 = WaveReadLaneFirst(_materialIndex);
    _92 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_84 < (uint)170000), _84, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
    _108 = ((1.0f - abs(dot(float3((_76 * _72), (_76 * _73), (_76 * _74)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))))) * _92);
  } else {
    _108 = 0.0f;
  }
  _111 = WaveReadLaneFirst(_materialIndex);
  _119 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_111 < (uint)170000), _111, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingValidColor);
  _122 = (float)((uint)((uint)(((uint)((uint)(_119)) >> 16) & 255)));
  _125 = (float)((uint)((uint)(((uint)((uint)(_119)) >> 8) & 255)));
  _127 = (float)((uint)((uint)(_119 & 255)));
  _136 = select(((_122 * 0.003921569f) < 0.04045f), (_122 * 0.000303527f), exp2(log2((_122 * 0.003717127f) + 0.052132703f) * 2.4f));
  _145 = select(((_125 * 0.003921569f) < 0.04045f), (_125 * 0.000303527f), exp2(log2((_125 * 0.003717127f) + 0.052132703f) * 2.4f));
  _154 = select(((_127 * 0.003921569f) < 0.04045f), (_127 * 0.000303527f), exp2(log2((_127 * 0.003717127f) + 0.052132703f) * 2.4f));
  _157 = WaveReadLaneFirst(_materialIndex);
  _165 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_157 < (uint)170000), _157, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingInvalidColor);
  _168 = (float)((uint)((uint)(((uint)((uint)(_165)) >> 16) & 255)));
  _171 = (float)((uint)((uint)(((uint)((uint)(_165)) >> 8) & 255)));
  _173 = (float)((uint)((uint)(_165 & 255)));
  _176 = max(0.001f, _exposure0.x);
  _194 = ((((((select(((_168 * 0.003921569f) < 0.04045f), (_168 * 0.000303527f), exp2(log2((_168 * 0.003717127f) + 0.052132703f) * 2.4f)) - _136) * _housingPreviewState) + _136) / _176) - _23.x) * _108) + _23.x;
  _210 = ((((((select(((_171 * 0.003921569f) < 0.04045f), (_171 * 0.000303527f), exp2(log2((_171 * 0.003717127f) + 0.052132703f) * 2.4f)) - _145) * _housingPreviewState) + _145) / _176) - _23.y) * _108) + _23.y;
  _226 = ((((((select(((_173 * 0.003921569f) < 0.04045f), (_173 * 0.000303527f), exp2(log2((_173 * 0.003717127f) + 0.052132703f) * 2.4f)) - _154) * _housingPreviewState) + _154) / _176) - _23.z) * _108) + _23.z;
  _227 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _240 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _227, 0)))).x) & 127)))) + 0.5f);
  } else {
    _240 = 1.0f;
  }
  _243 = (_localToneMappingParams.w > 0.0f);
  if (_243) {
    _247 = _userImageAdjust.z * _exposure0.x;
    _266 = exp2(_powerParams.x * log2(max(0.0f, (((_247 * max(0.0f, (((_194 * 1.70505f) - (_210 * 0.62179f)) - (_226 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _282 = exp2(log2(max(0.0f, (((_slopeParams.y * _247) * max(0.0f, (((_210 * 1.1408f) - (_194 * 0.13026f)) - (_226 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _298 = exp2(log2(max(0.0f, (((_slopeParams.z * _247) * max(0.0f, (((_194 * -0.024f) - (_210 * 0.12897f)) + (_226 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _299 = dot(float3(_266, _282, _298), float3(0.212671f, 0.71516f, 0.072169f));
    _303 = ((_266 - _299) * _powerParams.w) + _299;
    _306 = ((_282 - _299) * _powerParams.w) + _299;
    _309 = ((_298 - _299) * _powerParams.w) + _299;
    _316 = min(max(log2(mad(_309, 0.079223745f, mad(_306, 0.0784336f, (_303 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _323 = min(max(log2(mad(_309, 0.07916613f, mad(_306, 0.87846863f, (_303 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _330 = min(max(log2(mad(_309, 0.879143f, mad(_306, 0.0784336f, (_303 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _331 = _316 * 0.060606062f;
    _332 = _323 * 0.060606062f;
    _333 = _330 * 0.060606062f;
    _334 = _331 * _331;
    _335 = _332 * _332;
    _336 = _333 * _333;
    _352 = min(0.0f, (-0.0f - (((_316 * 0.0072181816f) + ((_334 * 0.4298f) + (((_334 * _334) * ((31.96f - (_316 * 2.4327273f)) + (_334 * 15.5f))) - ((_316 * 0.41624245f) * _334)))) + -0.00232f)));
    _368 = min(0.0f, (-0.0f - (((_323 * 0.0072181816f) + ((_335 * 0.4298f) + (((_335 * _335) * ((31.96f - (_323 * 2.4327273f)) + (_335 * 15.5f))) - ((_323 * 0.41624245f) * _335)))) + -0.00232f)));
    _384 = min(0.0f, (-0.0f - (((_330 * 0.0072181816f) + ((_336 * 0.4298f) + (((_336 * _336) * ((31.96f - (_330 * 2.4327273f)) + (_336 * 15.5f))) - ((_330 * 0.41624245f) * _336)))) + -0.00232f)));
    _385 = -0.0f - _352;
    _386 = -0.0f - _368;
    _387 = -0.0f - _384;
    _388 = dot(float3(_385, _386, _387), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _405 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _406 = -0.79999995f / _405;
      _407 = -1.2f / _405;
      _408 = 0.20000005f / _405;
      _411 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _414 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _418 = (_406 + 1.4f) + (_414 * (-0.39999998f - _406));
      _422 = (_407 + 1.6f) + (_414 * (-0.6f - _407));
      _426 = (_408 + 0.9f) + (_414 * (0.5f - _408));
      _443 = (lerp(_426, 1.4f, _411));  // [sem: blended]
      _444 = (lerp(_418, 1.0f, _411));  // [sem: blended]
      _445 = (lerp(_422, 1.2f, _411));  // [sem: blended]
    } else {
      _443 = 1.4f;  // [sem: blended]
      _444 = 1.0f;  // [sem: blended]
      _445 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _446 = 1.0f - _445;
    _458 = ((exp2(log2(((saturate((_352 * _352) * _385) * _446) + _445) * _385) * _444) - _388) * _443) + _388;
    _470 = ((exp2(log2(((saturate((_368 * _368) * _386) * _446) + _445) * _386) * _444) - _388) * _443) + _388;
    _482 = ((exp2(log2(((saturate((_384 * _384) * _387) * _446) + _445) * _387) * _444) - _388) * _443) + _388;
    _489 = saturate(exp2(log2(mad(_482, -0.09902974f, mad(_470, -0.09802088f, (_458 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _496 = saturate(exp2(log2(mad(_482, -0.098961174f, mad(_470, 1.1519032f, (_458 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _503 = saturate(exp2(log2(mad(_482, 1.1510737f, mad(_470, -0.09804345f, (_458 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _509 = 1.0f - abs(_etcParams.w);
      _510 = saturate(_etcParams.w);  // [sem: expr_sat]
      _512 = (_509 * _489) + _510;
      _514 = (_509 * _496) + _510;
      _516 = (_509 * _503) + _510;
      if (_colorGradingParams.w > 0.0f) {
        _521 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _538 = (((max(0.0f, (1.0f - _516)) - _516) * _521) + _516);
        _539 = (((max(0.0f, (1.0f - _514)) - _514) * _521) + _514);
        _540 = (((max(0.0f, (1.0f - _512)) - _512) * _521) + _512);
      } else {
        _538 = _516;
        _539 = _514;
        _540 = _512;
      }
      _542 = _userImageAdjust.y + 1.0f;
      _544 = _userImageAdjust.x + 0.5f;
      _547 = ((_540 + -0.5f) * _542) + _544;
      _550 = ((_539 + -0.5f) * _542) + _544;
      _553 = ((_538 + -0.5f) * _542) + _544;
      _559 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _594 = exp2(log2(saturate(mad(_colorBlind2.z, _553, mad(_colorBlind2.y, _550, (_colorBlind2.x * _547))))) * _559);
      _595 = exp2(log2(saturate(mad(_colorBlind1.z, _553, mad(_colorBlind1.y, _550, (_colorBlind1.x * _547))))) * _559);
      _596 = exp2(log2(saturate(mad(_colorBlind0.z, _553, mad(_colorBlind0.y, _550, (_colorBlind0.x * _547))))) * _559);
    } else {
      _594 = _503;
      _595 = _496;
      _596 = _489;
    }
  } else {
    _594 = _226;
    _595 = _210;
    _596 = _194;
  }
  if (_etcParams.y > 1.0f) {
    _601 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _604 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _610 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_601, _604), float2(_601, _604))));  // [sem: expr_sat]
    _615 = (_610 * _596);
    _616 = (_610 * _595);
    _617 = (_610 * _594);
  } else {
    _615 = _596;
    _616 = _595;
    _617 = _594;
  }
  if (_243 && (_etcParams.z > 0.0f)) {
    _647 = select((_615 <= 0.0031308f), (_615 * 12.92f), (((pow(_615, 0.41666666f)) * 1.055f) + -0.055f));
    _648 = select((_616 <= 0.0031308f), (_616 * 12.92f), (((pow(_616, 0.41666666f)) * 1.055f) + -0.055f));
    _649 = select((_617 <= 0.0031308f), (_617 * 12.92f), (((pow(_617, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _647 = _615;
    _648 = _616;
    _649 = _617;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _652 = (float)((uint)((uint)(_227)));
    if (!(_652 < _viewDir.w)) {
      if (!(!(_652 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _663 = 0.0f;
        _664 = 0.0f;
        _665 = 0.0f;
      } else {
        _663 = _647;
        _664 = _648;
        _665 = _649;
      }
    } else {
      _663 = 0.0f;
      _664 = 0.0f;
      _665 = 0.0f;
    }
  } else {
    _663 = _647;
    _664 = _648;
    _665 = _649;
  }
  SV_Target.x = _663;
  SV_Target.y = _664;
  SV_Target.z = _665;
  SV_Target.w = _240;
  return SV_Target;
}
