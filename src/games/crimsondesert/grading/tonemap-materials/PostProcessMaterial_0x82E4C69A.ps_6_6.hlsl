struct PostProcessChromaticAberrationStruct {
  float _ratio;
  float _shiftValue;
  float2 _shiftPosition;
};


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
  uint _renderPassHousingHover : packoffset(c029.z);
  uint _renderPassHousingSelected : packoffset(c029.w);
  uint _characterMeshEffectType : packoffset(c030.x);
};

struct BindlessParameters_PostProcessChromaticAberration {
  PostProcessChromaticAberrationStruct BindlessParameters_PostProcessChromaticAberration;
};

typedef BindlessParameters_PostProcessChromaticAberration BindlessParameters_PostProcessChromaticAberration_t;
ConstantBuffer<BindlessParameters_PostProcessChromaticAberration_t> BindlessParameters_PostProcessChromaticAberration[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _23;
  float _32;
  float _33;
  float _34;
  float _35;
  int _45;
  float _53;
  float _57;
  float _58;
  float _60;
  float _70;
  float _78;
  float _84;
  float _92;
  float _98;
  float _106;
  uint _108;
  float _122;
  float _327;
  float _328;
  float _329;
  float _422;
  float _423;
  float _424;
  float _478;
  float _479;
  float _480;
  float _499;
  float _500;
  float _501;
  float _531;
  float _532;
  float _533;
  float _547;
  float _548;
  float _549;
  bool _125;
  float _131;
  float _180;
  float _181;
  float _182;
  float _184;
  float _191;
  float _192;
  float _193;
  float _212;
  float _213;
  float _214;
  float _215;
  float _216;
  float _217;
  float _218;
  float _219;
  float _220;
  float _266;
  float _267;
  float _268;
  float _269;
  float _270;
  float _271;
  float _272;
  float _289;
  float _290;
  float _291;
  float _292;
  float _298;
  float _301;
  float _308;
  float _309;
  float _310;
  float _339;
  float _364;
  float _365;
  float _366;
  float _385;
  float _386;
  float _387;
  float _393;
  float _397;
  float _398;
  float _399;
  float _400;
  float _405;
  float _430;
  float _434;
  float _435;
  float _436;
  float _437;
  float _467;
  float _489;
  float _490;
  float _494;
  float _538;
  float _559;
  float _560;
  float _561;
  _23 = WaveReadLaneFirst(_materialIndex);
  _32 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticAberration[((int)((uint)((uint)(select(((uint)_23 < (uint)170000), _23, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticAberration._shiftPosition.x);
  _33 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticAberration[((int)((uint)((uint)(select(((uint)_23 < (uint)170000), _23, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticAberration._shiftPosition.y);
  _34 = TEXCOORD.x - _32;
  _35 = TEXCOORD.y - _33;
  _45 = WaveReadLaneFirst(_materialIndex);
  _53 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticAberration[((int)((uint)((uint)(select(((uint)_45 < (uint)170000), _45, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticAberration._shiftValue);
  _57 = (((sqrt((_35 * _35) + (_34 * _34)) * 0.01f) * ((float)((uint)((uint)(_enableChromaticAberration))))) * _53) * rsqrt(dot(float2(_34, _35), float2(_34, _35)));
  _58 = _57 * _34;
  _60 = _57 * _35;
  _70 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _58), (TEXCOORD.y - _60))))).x) * 0.012683313f);
  _78 = exp2(log2(max(0.0f, (_70 + -0.8359375f)) / (18.851562f - (_70 * 18.6875f))) * 6.277395f);
  _84 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y)))).y) * 0.012683313f);
  _92 = exp2(log2(max(0.0f, (_84 + -0.8359375f)) / (18.851562f - (_84 * 18.6875f))) * 6.277395f);
  _98 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_58 + TEXCOORD.x), (_60 + TEXCOORD.y))))).z) * 0.012683313f);
  _106 = exp2(log2(max(0.0f, (_98 + -0.8359375f)) / (18.851562f - (_98 * 18.6875f))) * 6.277395f);
  _108 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _122 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _108, 0)))).x) & 127)))) + 0.5f);
  } else {
    _122 = _postProcessParams.x;
  }
  _125 = (_localToneMappingParams.w > 0.0f);
  if (_125) {
    _131 = _userImageAdjust.z * _exposure0.x;
    _180 = exp2(log2(max(0.0f, (((_131 * max(0.0f, (((_78 * 17050.5f) - (_92 * 6217.9f)) - (_106 * 832.6f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _181 = exp2(log2(max(0.0f, (((max(0.0f, (((_92 * 11408.0f) - (_78 * 1302.6001f)) - (_106 * 105.5f))) * _131) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _182 = exp2(log2(max(0.0f, (((max(0.0f, (((_78 * -240.0f) - (_92 * 1289.7f)) + (_106 * 11529.699f))) * _131) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _184 = dot(float3(_180, _181, _182), float3(0.212671f, 0.71516f, 0.072169f));
    _191 = ((_180 - _184) * _powerParams.w) + _184;
    _192 = ((_181 - _184) * _powerParams.w) + _184;
    _193 = ((_182 - _184) * _powerParams.w) + _184;
    _212 = min(max(log2(mad(_193, 0.079223745f, mad(_192, 0.0784336f, (_191 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _213 = min(max(log2(mad(_193, 0.07916613f, mad(_192, 0.87846863f, (_191 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _214 = min(max(log2(mad(_193, 0.879143f, mad(_192, 0.0784336f, (_191 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _215 = _212 * 0.060606062f;
    _216 = _213 * 0.060606062f;
    _217 = _214 * 0.060606062f;
    _218 = _215 * _215;
    _219 = _216 * _216;
    _220 = _217 * _217;
    _266 = min(0.0f, (-0.0f - (((_212 * 0.0072181816f) + ((_218 * 0.4298f) + (((_218 * _218) * ((31.96f - (_212 * 2.4327273f)) + (_218 * 15.5f))) - ((_212 * 0.41624245f) * _218)))) + -0.00232f)));
    _267 = min(0.0f, (-0.0f - (((_213 * 0.0072181816f) + ((_219 * 0.4298f) + (((_219 * _219) * ((31.96f - (_213 * 2.4327273f)) + (_219 * 15.5f))) - ((_213 * 0.41624245f) * _219)))) + -0.00232f)));
    _268 = min(0.0f, (-0.0f - (((_214 * 0.0072181816f) + ((_220 * 0.4298f) + (((_220 * _220) * ((31.96f - (_214 * 2.4327273f)) + (_220 * 15.5f))) - ((_214 * 0.41624245f) * _220)))) + -0.00232f)));
    _269 = -0.0f - _266;
    _270 = -0.0f - _267;
    _271 = -0.0f - _268;
    _272 = dot(float3(_269, _270, _271), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _289 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _290 = -0.79999995f / _289;
      _291 = -1.2f / _289;
      _292 = 0.20000005f / _289;
      _298 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _301 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _308 = (_290 + 1.4f) + (_301 * (-0.39999998f - _290));
      _309 = (_291 + 1.6f) + (_301 * (-0.6f - _291));
      _310 = (_292 + 0.9f) + (_301 * (0.5f - _292));
      _327 = (lerp(_309, 1.2f, _298));  // [sem: blended]
      _328 = (lerp(_308, 1.0f, _298));  // [sem: blended]
      _329 = (lerp(_310, 1.4f, _298));  // [sem: blended]
    } else {
      _327 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _328 = 1.0f;  // [sem: blended]
      _329 = 1.4f;  // [sem: blended]
    }
    _339 = 1.0f - _327;
    _364 = ((exp2(log2(((saturate((_266 * _266) * _269) * _339) + _327) * _269) * _328) - _272) * _329) + _272;
    _365 = ((exp2(log2(((saturate((_267 * _267) * _270) * _339) + _327) * _270) * _328) - _272) * _329) + _272;
    _366 = ((exp2(log2(((saturate((_268 * _268) * _271) * _339) + _327) * _271) * _328) - _272) * _329) + _272;
    _385 = saturate(exp2(log2(mad(_366, -0.09902974f, mad(_365, -0.09802088f, (_364 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _386 = saturate(exp2(log2(mad(_366, -0.098961174f, mad(_365, 1.1519032f, (_364 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _387 = saturate(exp2(log2(mad(_366, 1.1510737f, mad(_365, -0.09804345f, (_364 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _393 = 1.0f - abs(_etcParams.w);
      _397 = saturate(_etcParams.w);  // [sem: expr_sat]
      _398 = (_393 * _385) + _397;
      _399 = (_393 * _386) + _397;
      _400 = (_393 * _387) + _397;
      if (_colorGradingParams.w > 0.0f) {
        _405 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _422 = (((max(0.0f, (1.0f - _398)) - _398) * _405) + _398);
        _423 = (((max(0.0f, (1.0f - _399)) - _399) * _405) + _399);
        _424 = (((max(0.0f, (1.0f - _400)) - _400) * _405) + _400);
      } else {
        _422 = _398;
        _423 = _399;
        _424 = _400;
      }
      _430 = _userImageAdjust.y + 1.0f;
      _434 = _userImageAdjust.x + 0.5f;
      _435 = ((_422 + -0.5f) * _430) + _434;
      _436 = ((_423 + -0.5f) * _430) + _434;
      _437 = ((_424 + -0.5f) * _430) + _434;
      _467 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _478 = exp2(log2(saturate(mad(_colorBlind0.z, _437, mad(_colorBlind0.y, _436, (_colorBlind0.x * _435))))) * _467);
      _479 = exp2(log2(saturate(mad(_colorBlind1.z, _437, mad(_colorBlind1.y, _436, (_colorBlind1.x * _435))))) * _467);
      _480 = exp2(log2(saturate(mad(_colorBlind2.z, _437, mad(_colorBlind2.y, _436, (_colorBlind2.x * _435))))) * _467);
    } else {
      _478 = _385;
      _479 = _386;
      _480 = _387;
    }
  } else {
    _478 = (_78 * 10000.0f);
    _479 = (_92 * 10000.0f);
    _480 = (_106 * 10000.0f);
  }
  if (_etcParams.y > 1.0f) {
    _489 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _490 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _494 = saturate(1.0f - (dot(float2(_489, _490), float2(_489, _490)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _499 = (_494 * _478);
    _500 = (_494 * _479);
    _501 = (_494 * _480);
  } else {
    _499 = _478;
    _500 = _479;
    _501 = _480;
  }
  if (_125 && (_etcParams.z > 0.0f)) {
    _531 = select((_499 <= 0.0031308f), (_499 * 12.92f), (((pow(_499, 0.41666666f)) * 1.055f) + -0.055f));
    _532 = select((_500 <= 0.0031308f), (_500 * 12.92f), (((pow(_500, 0.41666666f)) * 1.055f) + -0.055f));
    _533 = select((_501 <= 0.0031308f), (_501 * 12.92f), (((pow(_501, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _531 = _499;
    _532 = _500;
    _533 = _501;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _538 = (float)((uint)((uint)(_108)));
    if (!(_538 < _viewDir.w)) {
      if (!(_538 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _547 = _531;
        _548 = _532;
        _549 = _533;
      } else {
        _547 = 0.0f;
        _548 = 0.0f;
        _549 = 0.0f;
      }
    } else {
      _547 = 0.0f;
      _548 = 0.0f;
      _549 = 0.0f;
    }
  } else {
    _547 = _531;
    _548 = _532;
    _549 = _533;
  }
  _559 = exp2(log2(_547 * 0.0001f) * 0.15930176f);
  _560 = exp2(log2(_548 * 0.0001f) * 0.15930176f);
  _561 = exp2(log2(_549 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_559 * 18.6875f) + 1.0f)) * ((_559 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_560 * 18.6875f) + 1.0f)) * ((_560 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_561 * 18.6875f) + 1.0f)) * ((_561 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _122;
  return SV_Target;
}
