struct PostProcessChromaticAberrationStruct {
  float _ratio;
  float _shiftValue;
  float2 _shiftPosition;
};

struct BindlessParameters_PostProcessChromaticAberration {
  PostProcessChromaticAberrationStruct BindlessParameters_PostProcessChromaticAberration;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

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
  int _21;
  float _29;
  float _33;
  float _34;
  float _35;
  int _38;
  float _46;
  float _59;
  float _60;
  float _61;
  float4 _66;
  float4 _70;
  float4 _76;
  uint _78;
  float _95;
  float _300;
  float _301;
  float _302;
  float _395;
  float _396;
  float _397;
  float _451;
  float _452;
  float _453;
  float _472;
  float _473;
  float _474;
  float _504;
  float _505;
  float _506;
  float _520;
  float _521;
  float _522;
  bool _98;
  float _104;
  float _123;
  float _139;
  float _155;
  float _156;
  float _160;
  float _163;
  float _166;
  float _173;
  float _180;
  float _187;
  float _188;
  float _189;
  float _190;
  float _191;
  float _192;
  float _193;
  float _209;
  float _225;
  float _241;
  float _242;
  float _243;
  float _244;
  float _245;
  float _262;
  float _263;
  float _264;
  float _265;
  float _268;
  float _271;
  float _275;
  float _279;
  float _283;
  float _303;
  float _315;
  float _327;
  float _339;
  float _346;
  float _353;
  float _360;
  float _366;
  float _367;
  float _369;
  float _371;
  float _373;
  float _378;
  float _399;
  float _401;
  float _404;
  float _407;
  float _410;
  float _416;
  float _458;
  float _461;
  float _467;
  float _509;
  _21 = WaveReadLaneFirst(_materialIndex);
  _29 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticAberration[((int)((uint)((uint)(select(((uint)_21 < (uint)170000), _21, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticAberration._shiftPosition.x);
  _33 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticAberration[((int)((uint)((uint)(select(((uint)_21 < (uint)170000), _21, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticAberration._shiftPosition.y);
  _34 = TEXCOORD.x - _29;
  _35 = TEXCOORD.y - _33;
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessChromaticAberration[((int)((uint)((uint)(select(((uint)_38 < (uint)170000), _38, 0))) + (uint)(0)))].BindlessParameters_PostProcessChromaticAberration._shiftValue);
  _59 = (((_46 * 0.01f) * sqrt((_35 * _35) + (_34 * _34))) * ((float)((uint)((uint)(_enableChromaticAberration))))) * rsqrt(dot(float2(_34, _35), float2(_34, _35)));
  _60 = _59 * _34;
  _61 = _59 * _35;
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _66 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _60), (TEXCOORD.y - _61)));
  _70 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _76 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_60 + TEXCOORD.x), (_61 + TEXCOORD.y)));
  _78 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _95 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _78, 0)))).x) & 127)))) + 0.5f);
  } else {
    _95 = _postProcessParams.x;
  }
  _98 = (_localToneMappingParams.w > 0.0f);
  if (_98) {
    _104 = _exposure0.x * _userImageAdjust.z;
    _123 = exp2(_powerParams.x * log2(max(0.0f, (((_104 * max(0.0f, (((_66.x * 1.70505f) - (_70.y * 0.62179f)) - (_76.z * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _139 = exp2(log2(max(0.0f, (((_slopeParams.y * _104) * max(0.0f, (((_70.y * 1.1408f) - (_66.x * 0.13026f)) - (_76.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _155 = exp2(log2(max(0.0f, (((_slopeParams.z * _104) * max(0.0f, (((_66.x * -0.024f) - (_70.y * 0.12897f)) + (_76.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _156 = dot(float3(_123, _139, _155), float3(0.212671f, 0.71516f, 0.072169f));
    _160 = ((_123 - _156) * _powerParams.w) + _156;
    _163 = ((_139 - _156) * _powerParams.w) + _156;
    _166 = ((_155 - _156) * _powerParams.w) + _156;
    _173 = min(max(log2(mad(_166, 0.079223745f, mad(_163, 0.0784336f, (_160 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _180 = min(max(log2(mad(_166, 0.07916613f, mad(_163, 0.87846863f, (_160 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _187 = min(max(log2(mad(_166, 0.879143f, mad(_163, 0.0784336f, (_160 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _188 = _173 * 0.060606062f;
    _189 = _180 * 0.060606062f;
    _190 = _187 * 0.060606062f;
    _191 = _188 * _188;
    _192 = _189 * _189;
    _193 = _190 * _190;
    _209 = min(0.0f, (-0.0f - (((_173 * 0.0072181816f) + ((_191 * 0.4298f) + (((_191 * _191) * ((31.96f - (_173 * 2.4327273f)) + (_191 * 15.5f))) - ((_173 * 0.41624245f) * _191)))) + -0.00232f)));
    _225 = min(0.0f, (-0.0f - (((_180 * 0.0072181816f) + ((_192 * 0.4298f) + (((_192 * _192) * ((31.96f - (_180 * 2.4327273f)) + (_192 * 15.5f))) - ((_180 * 0.41624245f) * _192)))) + -0.00232f)));
    _241 = min(0.0f, (-0.0f - (((_187 * 0.0072181816f) + ((_193 * 0.4298f) + (((_193 * _193) * ((31.96f - (_187 * 2.4327273f)) + (_193 * 15.5f))) - ((_187 * 0.41624245f) * _193)))) + -0.00232f)));
    _242 = -0.0f - _209;
    _243 = -0.0f - _225;
    _244 = -0.0f - _241;
    _245 = dot(float3(_242, _243, _244), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _262 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _263 = -0.79999995f / _262;
      _264 = -1.2f / _262;
      _265 = 0.20000005f / _262;
      _268 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _271 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _275 = (_263 + 1.4f) + (_271 * (-0.39999998f - _263));
      _279 = (_264 + 1.6f) + (_271 * (-0.6f - _264));
      _283 = (_265 + 0.9f) + (_271 * (0.5f - _265));
      _300 = (lerp(_275, 1.0f, _268));  // [sem: blended]
      _301 = (lerp(_279, 1.2f, _268));  // [sem: blended]
      _302 = (lerp(_283, 1.4f, _268));  // [sem: blended]
    } else {
      _300 = 1.0f;  // [sem: blended]
      _301 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _302 = 1.4f;  // [sem: blended]
    }
    _303 = 1.0f - _301;
    _315 = ((exp2(log2(((saturate((_209 * _209) * _242) * _303) + _301) * _242) * _300) - _245) * _302) + _245;
    _327 = ((exp2(log2(((saturate((_225 * _225) * _243) * _303) + _301) * _243) * _300) - _245) * _302) + _245;
    _339 = ((exp2(log2(((saturate((_241 * _241) * _244) * _303) + _301) * _244) * _300) - _245) * _302) + _245;
    _346 = saturate(exp2(log2(mad(_339, -0.09902974f, mad(_327, -0.09802088f, (_315 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _353 = saturate(exp2(log2(mad(_339, -0.098961174f, mad(_327, 1.1519032f, (_315 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _360 = saturate(exp2(log2(mad(_339, 1.1510737f, mad(_327, -0.09804345f, (_315 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _366 = 1.0f - abs(_etcParams.w);
      _367 = saturate(_etcParams.w);  // [sem: expr_sat]
      _369 = (_366 * _346) + _367;
      _371 = (_366 * _353) + _367;
      _373 = (_366 * _360) + _367;
      if (_colorGradingParams.w > 0.0f) {
        _378 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _395 = (((max(0.0f, (1.0f - _369)) - _369) * _378) + _369);
        _396 = (((max(0.0f, (1.0f - _371)) - _371) * _378) + _371);
        _397 = (((max(0.0f, (1.0f - _373)) - _373) * _378) + _373);
      } else {
        _395 = _369;
        _396 = _371;
        _397 = _373;
      }
      _399 = _userImageAdjust.y + 1.0f;
      _401 = _userImageAdjust.x + 0.5f;
      _404 = ((_395 + -0.5f) * _399) + _401;
      _407 = ((_396 + -0.5f) * _399) + _401;
      _410 = ((_397 + -0.5f) * _399) + _401;
      _416 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _451 = exp2(log2(saturate(mad(_colorBlind0.z, _410, mad(_colorBlind0.y, _407, (_colorBlind0.x * _404))))) * _416);
      _452 = exp2(log2(saturate(mad(_colorBlind1.z, _410, mad(_colorBlind1.y, _407, (_colorBlind1.x * _404))))) * _416);
      _453 = exp2(log2(saturate(mad(_colorBlind2.z, _410, mad(_colorBlind2.y, _407, (_colorBlind2.x * _404))))) * _416);
    } else {
      _451 = _346;
      _452 = _353;
      _453 = _360;
    }
  } else {
    _451 = _66.x;
    _452 = _70.y;
    _453 = _76.z;
  }
  if (_etcParams.y > 1.0f) {
    _458 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _461 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _467 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_458, _461), float2(_458, _461))));  // [sem: expr_sat]
    _472 = (_467 * _451);
    _473 = (_467 * _452);
    _474 = (_467 * _453);
  } else {
    _472 = _451;
    _473 = _452;
    _474 = _453;
  }
  if (_98 && (_etcParams.z > 0.0f)) {
    _504 = select((_472 <= 0.0031308f), (_472 * 12.92f), (((pow(_472, 0.41666666f)) * 1.055f) + -0.055f));
    _505 = select((_473 <= 0.0031308f), (_473 * 12.92f), (((pow(_473, 0.41666666f)) * 1.055f) + -0.055f));
    _506 = select((_474 <= 0.0031308f), (_474 * 12.92f), (((pow(_474, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _504 = _472;
    _505 = _473;
    _506 = _474;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _509 = (float)((uint)((uint)(_78)));
    if (!(_509 < _viewDir.w)) {
      if (!(!(_509 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _520 = 0.0f;
        _521 = 0.0f;
        _522 = 0.0f;
      } else {
        _520 = _504;
        _521 = _505;
        _522 = _506;
      }
    } else {
      _520 = 0.0f;
      _521 = 0.0f;
      _522 = 0.0f;
    }
  } else {
    _520 = _504;
    _521 = _505;
    _522 = _506;
  }
  SV_Target.x = _520;
  SV_Target.y = _521;
  SV_Target.z = _522;
  SV_Target.w = _95;
  return SV_Target;
}
