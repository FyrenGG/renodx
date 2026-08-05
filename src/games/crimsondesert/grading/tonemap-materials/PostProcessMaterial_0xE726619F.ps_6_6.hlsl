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
  float _70;
  float _78;
  float _85;
  float _93;
  float _102;
  float _110;
  uint _111;
  float _128;
  float _333;
  float _334;
  float _335;
  float _428;
  float _429;
  float _430;
  float _488;
  float _489;
  float _490;
  float _509;
  float _510;
  float _511;
  float _541;
  float _542;
  float _543;
  float _557;
  float _558;
  float _559;
  bool _131;
  float _137;
  float _156;
  float _172;
  float _188;
  float _189;
  float _193;
  float _196;
  float _199;
  float _206;
  float _213;
  float _220;
  float _221;
  float _222;
  float _223;
  float _224;
  float _225;
  float _226;
  float _242;
  float _258;
  float _274;
  float _275;
  float _276;
  float _277;
  float _278;
  float _295;
  float _296;
  float _297;
  float _298;
  float _301;
  float _304;
  float _308;
  float _312;
  float _316;
  float _336;
  float _348;
  float _360;
  float _372;
  float _379;
  float _386;
  float _393;
  float _399;
  float _400;
  float _402;
  float _404;
  float _406;
  float _411;
  float _432;
  float _434;
  float _437;
  float _440;
  float _443;
  float _449;
  float _495;
  float _498;
  float _504;
  float _546;
  float _563;
  float _567;
  float _571;
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
  _70 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _60), (TEXCOORD.y - _61))))).x) * 0.012683313f);
  _78 = exp2(log2(max(0.0f, (_70 + -0.8359375f)) / (18.851562f - (_70 * 18.6875f))) * 6.277395f);
  _85 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y)))).y) * 0.012683313f);
  _93 = exp2(log2(max(0.0f, (_85 + -0.8359375f)) / (18.851562f - (_85 * 18.6875f))) * 6.277395f);
  _102 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_60 + TEXCOORD.x), (_61 + TEXCOORD.y))))).z) * 0.012683313f);
  _110 = exp2(log2(max(0.0f, (_102 + -0.8359375f)) / (18.851562f - (_102 * 18.6875f))) * 6.277395f);
  _111 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _128 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _111, 0)))).x) & 127)))) + 0.5f);
  } else {
    _128 = _postProcessParams.x;
  }
  _131 = (_localToneMappingParams.w > 0.0f);
  if (_131) {
    _137 = _exposure0.x * _userImageAdjust.z;
    _156 = exp2(_powerParams.x * log2(max(0.0f, (((_137 * max(0.0f, (((_78 * 17050.5f) - (_93 * 6217.9f)) - (_110 * 832.6f)))) * _slopeParams.x) + _offsetParams.x))));
    _172 = exp2(log2(max(0.0f, (((_slopeParams.y * _137) * max(0.0f, (((_93 * 11408.0f) - (_78 * 1302.6001f)) - (_110 * 105.5f)))) + _offsetParams.y))) * _powerParams.y);
    _188 = exp2(log2(max(0.0f, (((_slopeParams.z * _137) * max(0.0f, (((_78 * -240.0f) - (_93 * 1289.7f)) + (_110 * 11529.699f)))) + _offsetParams.z))) * _powerParams.z);
    _189 = dot(float3(_156, _172, _188), float3(0.212671f, 0.71516f, 0.072169f));
    _193 = ((_156 - _189) * _powerParams.w) + _189;
    _196 = ((_172 - _189) * _powerParams.w) + _189;
    _199 = ((_188 - _189) * _powerParams.w) + _189;
    _206 = min(max(log2(mad(_199, 0.079223745f, mad(_196, 0.0784336f, (_193 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _213 = min(max(log2(mad(_199, 0.07916613f, mad(_196, 0.87846863f, (_193 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _220 = min(max(log2(mad(_199, 0.879143f, mad(_196, 0.0784336f, (_193 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _221 = _206 * 0.060606062f;
    _222 = _213 * 0.060606062f;
    _223 = _220 * 0.060606062f;
    _224 = _221 * _221;
    _225 = _222 * _222;
    _226 = _223 * _223;
    _242 = min(0.0f, (-0.0f - (((_206 * 0.0072181816f) + ((_224 * 0.4298f) + (((_224 * _224) * ((31.96f - (_206 * 2.4327273f)) + (_224 * 15.5f))) - ((_206 * 0.41624245f) * _224)))) + -0.00232f)));
    _258 = min(0.0f, (-0.0f - (((_213 * 0.0072181816f) + ((_225 * 0.4298f) + (((_225 * _225) * ((31.96f - (_213 * 2.4327273f)) + (_225 * 15.5f))) - ((_213 * 0.41624245f) * _225)))) + -0.00232f)));
    _274 = min(0.0f, (-0.0f - (((_220 * 0.0072181816f) + ((_226 * 0.4298f) + (((_226 * _226) * ((31.96f - (_220 * 2.4327273f)) + (_226 * 15.5f))) - ((_220 * 0.41624245f) * _226)))) + -0.00232f)));
    _275 = -0.0f - _242;
    _276 = -0.0f - _258;
    _277 = -0.0f - _274;
    _278 = dot(float3(_275, _276, _277), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _295 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _296 = -0.79999995f / _295;
      _297 = -1.2f / _295;
      _298 = 0.20000005f / _295;
      _301 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _304 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _308 = (_296 + 1.4f) + (_304 * (-0.39999998f - _296));
      _312 = (_297 + 1.6f) + (_304 * (-0.6f - _297));
      _316 = (_298 + 0.9f) + (_304 * (0.5f - _298));
      _333 = (lerp(_312, 1.2f, _301));  // [sem: blended]
      _334 = (lerp(_308, 1.0f, _301));  // [sem: blended]
      _335 = (lerp(_316, 1.4f, _301));  // [sem: blended]
    } else {
      _333 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _334 = 1.0f;  // [sem: blended]
      _335 = 1.4f;  // [sem: blended]
    }
    _336 = 1.0f - _333;
    _348 = ((exp2(log2(((saturate((_242 * _242) * _275) * _336) + _333) * _275) * _334) - _278) * _335) + _278;
    _360 = ((exp2(log2(((saturate((_258 * _258) * _276) * _336) + _333) * _276) * _334) - _278) * _335) + _278;
    _372 = ((exp2(log2(((saturate((_274 * _274) * _277) * _336) + _333) * _277) * _334) - _278) * _335) + _278;
    _379 = saturate(exp2(log2(mad(_372, -0.09902974f, mad(_360, -0.09802088f, (_348 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _386 = saturate(exp2(log2(mad(_372, -0.098961174f, mad(_360, 1.1519032f, (_348 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _393 = saturate(exp2(log2(mad(_372, 1.1510737f, mad(_360, -0.09804345f, (_348 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _399 = 1.0f - abs(_etcParams.w);
      _400 = saturate(_etcParams.w);  // [sem: expr_sat]
      _402 = (_399 * _379) + _400;
      _404 = (_399 * _386) + _400;
      _406 = (_399 * _393) + _400;
      if (_colorGradingParams.w > 0.0f) {
        _411 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _428 = (((max(0.0f, (1.0f - _402)) - _402) * _411) + _402);
        _429 = (((max(0.0f, (1.0f - _404)) - _404) * _411) + _404);
        _430 = (((max(0.0f, (1.0f - _406)) - _406) * _411) + _406);
      } else {
        _428 = _402;
        _429 = _404;
        _430 = _406;
      }
      _432 = _userImageAdjust.y + 1.0f;
      _434 = _userImageAdjust.x + 0.5f;
      _437 = ((_428 + -0.5f) * _432) + _434;
      _440 = ((_429 + -0.5f) * _432) + _434;
      _443 = ((_430 + -0.5f) * _432) + _434;
      _449 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _488 = exp2(log2(saturate(mad(_colorBlind0.z, _443, mad(_colorBlind0.y, _440, (_colorBlind0.x * _437))))) * _449);
      _489 = exp2(log2(saturate(mad(_colorBlind1.z, _443, mad(_colorBlind1.y, _440, (_colorBlind1.x * _437))))) * _449);
      _490 = exp2(log2(saturate(mad(_colorBlind2.z, _443, mad(_colorBlind2.y, _440, (_colorBlind2.x * _437))))) * _449);
    } else {
      _488 = _379;
      _489 = _386;
      _490 = _393;
    }
  } else {
    _488 = (_78 * 10000.0f);
    _489 = (_93 * 10000.0f);
    _490 = (_110 * 10000.0f);
  }
  if (_etcParams.y > 1.0f) {
    _495 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _498 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _504 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_495, _498), float2(_495, _498))));  // [sem: expr_sat]
    _509 = (_504 * _488);
    _510 = (_504 * _489);
    _511 = (_504 * _490);
  } else {
    _509 = _488;
    _510 = _489;
    _511 = _490;
  }
  if (_131 && (_etcParams.z > 0.0f)) {
    _541 = select((_509 <= 0.0031308f), (_509 * 12.92f), (((pow(_509, 0.41666666f)) * 1.055f) + -0.055f));
    _542 = select((_510 <= 0.0031308f), (_510 * 12.92f), (((pow(_510, 0.41666666f)) * 1.055f) + -0.055f));
    _543 = select((_511 <= 0.0031308f), (_511 * 12.92f), (((pow(_511, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _541 = _509;
    _542 = _510;
    _543 = _511;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _546 = (float)((uint)((uint)(_111)));
    if (!(_546 < _viewDir.w)) {
      if (!(!(_546 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _557 = 0.0f;
        _558 = 0.0f;
        _559 = 0.0f;
      } else {
        _557 = _541;
        _558 = _542;
        _559 = _543;
      }
    } else {
      _557 = 0.0f;
      _558 = 0.0f;
      _559 = 0.0f;
    }
  } else {
    _557 = _541;
    _558 = _542;
    _559 = _543;
  }
  _563 = exp2(log2(_557 * 0.0001f) * 0.15930176f);
  _567 = exp2(log2(_558 * 0.0001f) * 0.15930176f);
  _571 = exp2(log2(_559 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_563 * 18.6875f) + 1.0f)) * ((_563 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_567 * 18.6875f) + 1.0f)) * ((_567 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_571 * 18.6875f) + 1.0f)) * ((_571 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _128;
  return SV_Target;
}
