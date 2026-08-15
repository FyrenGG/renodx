struct PostProcessFocusStruct {
  float _focusRatio;
  float _focusSceneDepthFade;
  float _focusBackgroundSaturation;
  float _focus3DBlend;
  float _focusCharacterMaterialMask;
  float _focusColorBrightness;
  uint _focusColor;
  float _focusColorRemap;
  float _maskRatio;
  float _maskNoiseIntensity;
  float _maskBlurThickness;
  float _maskBlurPower;
  uint _maskNoiseTexture;
  float _playerFocusRadius;
  float _playerFocusCenterRadius;
  float _playerFocusPower;
  float3 _playerFocusPositionOffset;
  float _targetFocusRadius;
  float _targetFocusCenterRadius;
  float _targetFocusPower;
  float3 _targetFocusPositionOffset;
  float _connectPlayerTargetDistance;
  float _connectPlayerTargetPower;
  float _worldFocusRadius;
  float _worldFocusCenterRadius;
  float _worldFocusPower;
  float3 _worldFocusPosition;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

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

struct BindlessParameters_PostProcessFocus {
  PostProcessFocusStruct BindlessParameters_PostProcessFocus;
};

typedef BindlessParameters_PostProcessFocus BindlessParameters_PostProcessFocus_t;
ConstantBuffer<BindlessParameters_PostProcessFocus_t> BindlessParameters_PostProcessFocus[] : register(b0, space100);

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
  float _40;
  int _43;
  int _51;
  int _61;
  float _69;
  int _75;
  float _83;
  float _87;
  float _193;
  float _194;
  float _195;
  float _209;
  float _414;
  float _415;
  float _416;
  float _509;
  float _510;
  float _511;
  float _565;
  float _566;
  float _567;
  float _586;
  float _587;
  float _588;
  float _618;
  float _619;
  float _620;
  float _634;
  float _635;
  float _636;
  uint2 _91;
  int _108;
  float4 _117;
  float4 _135;
  float _138;
  float _139;
  float _146;
  float4 _166;
  float _169;
  float _170;
  float _177;
  uint _196;
  bool _212;
  float _218;
  float _267;
  float _268;
  float _269;
  float _271;
  float _278;
  float _279;
  float _280;
  float _299;
  float _300;
  float _301;
  float _302;
  float _303;
  float _304;
  float _305;
  float _306;
  float _307;
  float _353;
  float _354;
  float _355;
  float _356;
  float _357;
  float _358;
  float _359;
  float _376;
  float _377;
  float _378;
  float _379;
  float _385;
  float _388;
  float _395;
  float _396;
  float _397;
  float _426;
  float _451;
  float _452;
  float _453;
  float _472;
  float _473;
  float _474;
  float _480;
  float _484;
  float _485;
  float _486;
  float _487;
  float _492;
  float _517;
  float _521;
  float _522;
  float _523;
  float _524;
  float _554;
  float _576;
  float _577;
  float _581;
  float _625;
  _40 = _time.x * 0.05f;
  _43 = WaveReadLaneFirst(_materialIndex);
  _51 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_43 < (uint)170000), _43, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._maskNoiseTexture);
  _61 = WaveReadLaneFirst(_materialIndex);
  _69 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_61 < (uint)170000), _61, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._maskNoiseIntensity);
  _75 = WaveReadLaneFirst(_materialIndex);
  _83 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._maskBlurThickness);
  _87 = ((((_69 * ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_51 < (uint)65000), _51, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_40 + (TEXCOORD.x * 16.0f)), (_40 + (TEXCOORD.y * 16.0f)))))).z) + -0.5f)) + 1.0f) * 50.0f) * ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x)) * _83;
  if (_passIndex == 0) {
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_91.x, _91.y);
    _108 = (((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_91.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_91.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255;
    // [sem: _3__36__0__0__g_CustomRenderPassDepth_load]
    _117 = __3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0));
    if ((_108 == _renderPassTargetFocus) || ((_108 == _renderPassSelfPlayer) || (_108 == _renderPassTest))) {
      _193 = 1.0f;
      _194 = _117.x;
      _195 = _117.x;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
    } else {
      _193 = 0.0f;
      _194 = 0.0f;
      _195 = 0.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
    }
  } else {
    if (_passIndex == 1) {
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _135 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _138 = _87 * (1.0f / max(0.001f, _destTargetSizAndInv.x));
      _139 = _138 * 1.3846154f;
      _146 = _138 * 3.2307692f;
      _193 = (((((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _139), TEXCOORD.y)))).x) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_139 + TEXCOORD.x), TEXCOORD.y)))).x)) * 0.31621623f) + (_135.x * 0.22702703f)) + (((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _146), TEXCOORD.y)))).x) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_146 + TEXCOORD.x), TEXCOORD.y)))).x)) * 0.07027027f));
      _194 = (_135.y * 25.0f);
      _195 = 0.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
    } else {
      if (_passIndex == 2) {
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _166 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
        _169 = _87 * (1.0f / max(0.001f, _destTargetSizAndInv.y));
        _170 = _169 * 1.3846154f;
        _177 = _169 * 3.2307692f;
        _193 = (((((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _170))))).x) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_170 + TEXCOORD.y))))).x)) * 0.31621623f) + (_166.x * 0.22702703f)) + (((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _177))))).x) + (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_177 + TEXCOORD.y))))).x)) * 0.07027027f));
        _194 = (_166.y * 25.0f);
        _195 = 0.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
      } else {
        _193 = 0.0f;
        _194 = 0.0f;
        _195 = 0.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
      }
    }
  }
  _196 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _209 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _196, 0)))).x) & 127)))) + 0.5f);
  } else {
    _209 = 1.0f;
  }
  _212 = (_localToneMappingParams.w > 0.0f);
  if (_212) {
    _218 = _userImageAdjust.z * _exposure0.x;
    _267 = exp2(log2(max(0.0f, (((_218 * max(0.0f, (((_193 * 1.70505f) - (_194 * 0.62179f)) - (_195 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _268 = exp2(log2(max(0.0f, (((max(0.0f, (((_194 * 1.1408f) - (_193 * 0.13026f)) - (_195 * 0.01055f))) * _218) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _269 = exp2(log2(max(0.0f, (((max(0.0f, (((_193 * -0.024f) - (_194 * 0.12897f)) + (_195 * 1.15297f))) * _218) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _271 = dot(float3(_267, _268, _269), float3(0.212671f, 0.71516f, 0.072169f));
    _278 = ((_267 - _271) * _powerParams.w) + _271;
    _279 = ((_268 - _271) * _powerParams.w) + _271;
    _280 = ((_269 - _271) * _powerParams.w) + _271;
    _299 = min(max(log2(mad(_280, 0.079223745f, mad(_279, 0.0784336f, (_278 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _300 = min(max(log2(mad(_280, 0.07916613f, mad(_279, 0.87846863f, (_278 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _301 = min(max(log2(mad(_280, 0.879143f, mad(_279, 0.0784336f, (_278 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _302 = _299 * 0.060606062f;
    _303 = _300 * 0.060606062f;
    _304 = _301 * 0.060606062f;
    _305 = _302 * _302;
    _306 = _303 * _303;
    _307 = _304 * _304;
    _353 = min(0.0f, (-0.0f - (((_299 * 0.0072181816f) + ((_305 * 0.4298f) + (((_305 * _305) * ((31.96f - (_299 * 2.4327273f)) + (_305 * 15.5f))) - ((_299 * 0.41624245f) * _305)))) + -0.00232f)));
    _354 = min(0.0f, (-0.0f - (((_300 * 0.0072181816f) + ((_306 * 0.4298f) + (((_306 * _306) * ((31.96f - (_300 * 2.4327273f)) + (_306 * 15.5f))) - ((_300 * 0.41624245f) * _306)))) + -0.00232f)));
    _355 = min(0.0f, (-0.0f - (((_301 * 0.0072181816f) + ((_307 * 0.4298f) + (((_307 * _307) * ((31.96f - (_301 * 2.4327273f)) + (_307 * 15.5f))) - ((_301 * 0.41624245f) * _307)))) + -0.00232f)));
    _356 = -0.0f - _353;
    _357 = -0.0f - _354;
    _358 = -0.0f - _355;
    _359 = dot(float3(_356, _357, _358), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _376 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _377 = -0.79999995f / _376;
      _378 = -1.2f / _376;
      _379 = 0.20000005f / _376;
      _385 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _388 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _395 = (_377 + 1.4f) + (_388 * (-0.39999998f - _377));
      _396 = (_378 + 1.6f) + (_388 * (-0.6f - _378));
      _397 = (_379 + 0.9f) + (_388 * (0.5f - _379));
      _414 = (lerp(_396, 1.2f, _385));  // [sem: blended]
      _415 = (lerp(_395, 1.0f, _385));  // [sem: blended]
      _416 = (lerp(_397, 1.4f, _385));  // [sem: blended]
    } else {
      _414 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _415 = 1.0f;  // [sem: blended]
      _416 = 1.4f;  // [sem: blended]
    }
    _426 = 1.0f - _414;
    _451 = ((exp2(log2(((saturate((_353 * _353) * _356) * _426) + _414) * _356) * _415) - _359) * _416) + _359;
    _452 = ((exp2(log2(((saturate((_354 * _354) * _357) * _426) + _414) * _357) * _415) - _359) * _416) + _359;
    _453 = ((exp2(log2(((saturate((_355 * _355) * _358) * _426) + _414) * _358) * _415) - _359) * _416) + _359;
    _472 = saturate(exp2(log2(mad(_453, -0.09902974f, mad(_452, -0.09802088f, (_451 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _473 = saturate(exp2(log2(mad(_453, -0.098961174f, mad(_452, 1.1519032f, (_451 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _474 = saturate(exp2(log2(mad(_453, 1.1510737f, mad(_452, -0.09804345f, (_451 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _480 = 1.0f - abs(_etcParams.w);
      _484 = saturate(_etcParams.w);  // [sem: expr_sat]
      _485 = (_480 * _472) + _484;
      _486 = (_480 * _473) + _484;
      _487 = (_480 * _474) + _484;
      if (_colorGradingParams.w > 0.0f) {
        _492 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _509 = (((max(0.0f, (1.0f - _485)) - _485) * _492) + _485);
        _510 = (((max(0.0f, (1.0f - _486)) - _486) * _492) + _486);
        _511 = (((max(0.0f, (1.0f - _487)) - _487) * _492) + _487);
      } else {
        _509 = _485;
        _510 = _486;
        _511 = _487;
      }
      _517 = _userImageAdjust.y + 1.0f;
      _521 = _userImageAdjust.x + 0.5f;
      _522 = ((_509 + -0.5f) * _517) + _521;
      _523 = ((_510 + -0.5f) * _517) + _521;
      _524 = ((_511 + -0.5f) * _517) + _521;
      _554 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _565 = exp2(log2(saturate(mad(_colorBlind0.z, _524, mad(_colorBlind0.y, _523, (_colorBlind0.x * _522))))) * _554);
      _566 = exp2(log2(saturate(mad(_colorBlind1.z, _524, mad(_colorBlind1.y, _523, (_colorBlind1.x * _522))))) * _554);
      _567 = exp2(log2(saturate(mad(_colorBlind2.z, _524, mad(_colorBlind2.y, _523, (_colorBlind2.x * _522))))) * _554);
    } else {
      _565 = _472;
      _566 = _473;
      _567 = _474;
    }
  } else {
    _565 = _193;
    _566 = _194;
    _567 = _195;
  }
  if (_etcParams.y > 1.0f) {
    _576 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _577 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _581 = saturate(1.0f - (dot(float2(_576, _577), float2(_576, _577)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _586 = (_581 * _565);
    _587 = (_581 * _566);
    _588 = (_581 * _567);
  } else {
    _586 = _565;
    _587 = _566;
    _588 = _567;
  }
  if (_212 && (_etcParams.z > 0.0f)) {
    _618 = select((_586 <= 0.0031308f), (_586 * 12.92f), (((pow(_586, 0.41666666f)) * 1.055f) + -0.055f));
    _619 = select((_587 <= 0.0031308f), (_587 * 12.92f), (((pow(_587, 0.41666666f)) * 1.055f) + -0.055f));
    _620 = select((_588 <= 0.0031308f), (_588 * 12.92f), (((pow(_588, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _618 = _586;
    _619 = _587;
    _620 = _588;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _625 = (float)((uint)((uint)(_196)));
    if (!(_625 < _viewDir.w)) {
      if (!(_625 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _634 = _618;
        _635 = _619;
        _636 = _620;
      } else {
        _634 = 0.0f;
        _635 = 0.0f;
        _636 = 0.0f;
      }
    } else {
      _634 = 0.0f;
      _635 = 0.0f;
      _636 = 0.0f;
    }
  } else {
    _634 = _618;
    _635 = _619;
    _636 = _620;
  }
  SV_Target.x = _634;
  SV_Target.y = _635;
  SV_Target.z = _636;
  SV_Target.w = _209;
  return SV_Target;
}
