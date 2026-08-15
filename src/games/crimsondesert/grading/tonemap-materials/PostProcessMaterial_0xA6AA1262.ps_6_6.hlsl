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
  float _325;
  float _326;
  float _327;
  float _341;
  float _546;
  float _547;
  float _548;
  float _641;
  float _642;
  float _643;
  float _697;
  float _698;
  float _699;
  float _718;
  float _719;
  float _720;
  float _750;
  float _751;
  float _752;
  float _766;
  float _767;
  float _768;
  uint2 _91;
  int _108;
  float4 _117;
  float4 _135;
  float _142;
  float _143;
  float _160;
  float _161;
  float _167;
  float _181;
  float _190;
  float _196;
  float _210;
  float4 _232;
  float _239;
  float _240;
  float _257;
  float _258;
  float _264;
  float _278;
  float _287;
  float _293;
  float _307;
  uint _328;
  bool _344;
  float _350;
  float _399;
  float _400;
  float _401;
  float _403;
  float _410;
  float _411;
  float _412;
  float _431;
  float _432;
  float _433;
  float _434;
  float _435;
  float _436;
  float _437;
  float _438;
  float _439;
  float _485;
  float _486;
  float _487;
  float _488;
  float _489;
  float _490;
  float _491;
  float _508;
  float _509;
  float _510;
  float _511;
  float _517;
  float _520;
  float _527;
  float _528;
  float _529;
  float _558;
  float _583;
  float _584;
  float _585;
  float _604;
  float _605;
  float _606;
  float _612;
  float _616;
  float _617;
  float _618;
  float _619;
  float _624;
  float _649;
  float _653;
  float _654;
  float _655;
  float _656;
  float _686;
  float _708;
  float _709;
  float _713;
  float _757;
  float _778;
  float _779;
  float _780;
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
      _325 = 1.0f;
      _326 = _117.x;
      _327 = _117.x;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
    } else {
      _325 = 0.0f;
      _326 = 0.0f;
      _327 = 0.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
    }
  } else {
    if (_passIndex == 1) {
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _135 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _142 = (pow(_135.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _143 = (pow(_135.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _160 = _87 * (1.0f / max(0.001f, _destTargetSizAndInv.x));
      _161 = _160 * 1.3846154f;
      _167 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_161 + TEXCOORD.x), TEXCOORD.y)))).x) * 0.012683313f);
      _181 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _161), TEXCOORD.y)))).x) * 0.012683313f);
      _190 = _160 * 3.2307692f;
      _196 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_190 + TEXCOORD.x), TEXCOORD.y)))).x) * 0.012683313f);
      _210 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _190), TEXCOORD.y)))).x) * 0.012683313f);
      _325 = ((((exp2(log2(max(0.0f, (_181 + -0.8359375f)) / (18.851562f - (_181 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_167 + -0.8359375f)) / (18.851562f - (_167 * 18.6875f))) * 6.277395f)) * 3162.1624f) + (exp2(log2(max(0.0f, (_142 + -0.8359375f)) / (18.851562f - (_142 * 18.6875f))) * 6.277395f) * 2270.2703f)) + ((exp2(log2(max(0.0f, (_210 + -0.8359375f)) / (18.851562f - (_210 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_196 + -0.8359375f)) / (18.851562f - (_196 * 18.6875f))) * 6.277395f)) * 702.7027f));
      _326 = (exp2(log2(max(0.0f, (_143 + -0.8359375f)) / (18.851562f - (_143 * 18.6875f))) * 6.277395f) * 250000.0f);
      _327 = 0.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
    } else {
      if (_passIndex == 2) {
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _232 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
        _239 = (pow(_232.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _240 = (pow(_232.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _257 = _87 * (1.0f / max(0.001f, _destTargetSizAndInv.y));
        _258 = _257 * 1.3846154f;
        _264 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_258 + TEXCOORD.y))))).x) * 0.012683313f);
        _278 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _258))))).x) * 0.012683313f);
        _287 = _257 * 3.2307692f;
        _293 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_287 + TEXCOORD.y))))).x) * 0.012683313f);
        _307 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _287))))).x) * 0.012683313f);
        _325 = ((((exp2(log2(max(0.0f, (_278 + -0.8359375f)) / (18.851562f - (_278 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_264 + -0.8359375f)) / (18.851562f - (_264 * 18.6875f))) * 6.277395f)) * 3162.1624f) + (exp2(log2(max(0.0f, (_239 + -0.8359375f)) / (18.851562f - (_239 * 18.6875f))) * 6.277395f) * 2270.2703f)) + ((exp2(log2(max(0.0f, (_307 + -0.8359375f)) / (18.851562f - (_307 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_293 + -0.8359375f)) / (18.851562f - (_293 * 18.6875f))) * 6.277395f)) * 702.7027f));
        _326 = (exp2(log2(max(0.0f, (_240 + -0.8359375f)) / (18.851562f - (_240 * 18.6875f))) * 6.277395f) * 250000.0f);
        _327 = 0.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
      } else {
        _325 = 0.0f;
        _326 = 0.0f;
        _327 = 0.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
      }
    }
  }
  _328 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _341 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _328, 0)))).x) & 127)))) + 0.5f);
  } else {
    _341 = 1.0f;
  }
  _344 = (_localToneMappingParams.w > 0.0f);
  if (_344) {
    _350 = _userImageAdjust.z * _exposure0.x;
    _399 = exp2(log2(max(0.0f, (((_350 * max(0.0f, (((_325 * 1.70505f) - (_326 * 0.62179f)) - (_327 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _400 = exp2(log2(max(0.0f, (((max(0.0f, (((_326 * 1.1408f) - (_325 * 0.13026f)) - (_327 * 0.01055f))) * _350) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _401 = exp2(log2(max(0.0f, (((max(0.0f, (((_325 * -0.024f) - (_326 * 0.12897f)) + (_327 * 1.15297f))) * _350) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _403 = dot(float3(_399, _400, _401), float3(0.212671f, 0.71516f, 0.072169f));
    _410 = ((_399 - _403) * _powerParams.w) + _403;
    _411 = ((_400 - _403) * _powerParams.w) + _403;
    _412 = ((_401 - _403) * _powerParams.w) + _403;
    _431 = min(max(log2(mad(_412, 0.079223745f, mad(_411, 0.0784336f, (_410 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _432 = min(max(log2(mad(_412, 0.07916613f, mad(_411, 0.87846863f, (_410 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _433 = min(max(log2(mad(_412, 0.879143f, mad(_411, 0.0784336f, (_410 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _434 = _431 * 0.060606062f;
    _435 = _432 * 0.060606062f;
    _436 = _433 * 0.060606062f;
    _437 = _434 * _434;
    _438 = _435 * _435;
    _439 = _436 * _436;
    _485 = min(0.0f, (-0.0f - (((_431 * 0.0072181816f) + ((_437 * 0.4298f) + (((_437 * _437) * ((31.96f - (_431 * 2.4327273f)) + (_437 * 15.5f))) - ((_431 * 0.41624245f) * _437)))) + -0.00232f)));
    _486 = min(0.0f, (-0.0f - (((_432 * 0.0072181816f) + ((_438 * 0.4298f) + (((_438 * _438) * ((31.96f - (_432 * 2.4327273f)) + (_438 * 15.5f))) - ((_432 * 0.41624245f) * _438)))) + -0.00232f)));
    _487 = min(0.0f, (-0.0f - (((_433 * 0.0072181816f) + ((_439 * 0.4298f) + (((_439 * _439) * ((31.96f - (_433 * 2.4327273f)) + (_439 * 15.5f))) - ((_433 * 0.41624245f) * _439)))) + -0.00232f)));
    _488 = -0.0f - _485;
    _489 = -0.0f - _486;
    _490 = -0.0f - _487;
    _491 = dot(float3(_488, _489, _490), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _508 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _509 = -0.79999995f / _508;
      _510 = -1.2f / _508;
      _511 = 0.20000005f / _508;
      _517 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _520 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _527 = (_509 + 1.4f) + (_520 * (-0.39999998f - _509));
      _528 = (_510 + 1.6f) + (_520 * (-0.6f - _510));
      _529 = (_511 + 0.9f) + (_520 * (0.5f - _511));
      _546 = (lerp(_528, 1.2f, _517));  // [sem: blended]
      _547 = (lerp(_527, 1.0f, _517));  // [sem: blended]
      _548 = (lerp(_529, 1.4f, _517));  // [sem: blended]
    } else {
      _546 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _547 = 1.0f;  // [sem: blended]
      _548 = 1.4f;  // [sem: blended]
    }
    _558 = 1.0f - _546;
    _583 = ((exp2(log2(((saturate((_485 * _485) * _488) * _558) + _546) * _488) * _547) - _491) * _548) + _491;
    _584 = ((exp2(log2(((saturate((_486 * _486) * _489) * _558) + _546) * _489) * _547) - _491) * _548) + _491;
    _585 = ((exp2(log2(((saturate((_487 * _487) * _490) * _558) + _546) * _490) * _547) - _491) * _548) + _491;
    _604 = saturate(exp2(log2(mad(_585, -0.09902974f, mad(_584, -0.09802088f, (_583 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _605 = saturate(exp2(log2(mad(_585, -0.098961174f, mad(_584, 1.1519032f, (_583 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _606 = saturate(exp2(log2(mad(_585, 1.1510737f, mad(_584, -0.09804345f, (_583 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _612 = 1.0f - abs(_etcParams.w);
      _616 = saturate(_etcParams.w);  // [sem: expr_sat]
      _617 = (_612 * _604) + _616;
      _618 = (_612 * _605) + _616;
      _619 = (_612 * _606) + _616;
      if (_colorGradingParams.w > 0.0f) {
        _624 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _641 = (((max(0.0f, (1.0f - _617)) - _617) * _624) + _617);
        _642 = (((max(0.0f, (1.0f - _618)) - _618) * _624) + _618);
        _643 = (((max(0.0f, (1.0f - _619)) - _619) * _624) + _619);
      } else {
        _641 = _617;
        _642 = _618;
        _643 = _619;
      }
      _649 = _userImageAdjust.y + 1.0f;
      _653 = _userImageAdjust.x + 0.5f;
      _654 = ((_641 + -0.5f) * _649) + _653;
      _655 = ((_642 + -0.5f) * _649) + _653;
      _656 = ((_643 + -0.5f) * _649) + _653;
      _686 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _697 = exp2(log2(saturate(mad(_colorBlind0.z, _656, mad(_colorBlind0.y, _655, (_colorBlind0.x * _654))))) * _686);
      _698 = exp2(log2(saturate(mad(_colorBlind1.z, _656, mad(_colorBlind1.y, _655, (_colorBlind1.x * _654))))) * _686);
      _699 = exp2(log2(saturate(mad(_colorBlind2.z, _656, mad(_colorBlind2.y, _655, (_colorBlind2.x * _654))))) * _686);
    } else {
      _697 = _604;
      _698 = _605;
      _699 = _606;
    }
  } else {
    _697 = _325;
    _698 = _326;
    _699 = _327;
  }
  if (_etcParams.y > 1.0f) {
    _708 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _709 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _713 = saturate(1.0f - (dot(float2(_708, _709), float2(_708, _709)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _718 = (_713 * _697);
    _719 = (_713 * _698);
    _720 = (_713 * _699);
  } else {
    _718 = _697;
    _719 = _698;
    _720 = _699;
  }
  if (_344 && (_etcParams.z > 0.0f)) {
    _750 = select((_718 <= 0.0031308f), (_718 * 12.92f), (((pow(_718, 0.41666666f)) * 1.055f) + -0.055f));
    _751 = select((_719 <= 0.0031308f), (_719 * 12.92f), (((pow(_719, 0.41666666f)) * 1.055f) + -0.055f));
    _752 = select((_720 <= 0.0031308f), (_720 * 12.92f), (((pow(_720, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _750 = _718;
    _751 = _719;
    _752 = _720;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _757 = (float)((uint)((uint)(_328)));
    if (!(_757 < _viewDir.w)) {
      if (!(_757 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _766 = _750;
        _767 = _751;
        _768 = _752;
      } else {
        _766 = 0.0f;
        _767 = 0.0f;
        _768 = 0.0f;
      }
    } else {
      _766 = 0.0f;
      _767 = 0.0f;
      _768 = 0.0f;
    }
  } else {
    _766 = _750;
    _767 = _751;
    _768 = _752;
  }
  _778 = exp2(log2(_766 * 0.0001f) * 0.15930176f);
  _779 = exp2(log2(_767 * 0.0001f) * 0.15930176f);
  _780 = exp2(log2(_768 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_778 * 18.6875f) + 1.0f)) * ((_778 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_779 * 18.6875f) + 1.0f)) * ((_779 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_780 * 18.6875f) + 1.0f)) * ((_780 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _341;
  return SV_Target;
}
