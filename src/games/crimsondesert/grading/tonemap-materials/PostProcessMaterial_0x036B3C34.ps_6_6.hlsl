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

struct BindlessParameters_PostProcessFocus {
  PostProcessFocusStruct BindlessParameters_PostProcessFocus;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t39, space36);

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
  uint _characterMeshEffectType : packoffset(c029.z);
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
  float _28;
  int _31;
  int _39;
  int _42;
  float _50;
  int _53;
  float _61;
  float _83;
  float _331;
  float _332;
  float _333;
  float _347;
  float _552;
  float _553;
  float _554;
  float _647;
  float _648;
  float _649;
  float _703;
  float _704;
  float _705;
  float _724;
  float _725;
  float _726;
  float _756;
  float _757;
  float _758;
  float _772;
  float _773;
  float _774;
  uint2 _89;
  int _106;
  float4 _115;
  float4 _133;
  float _138;
  float _141;
  float _146;
  float _147;
  float _153;
  float _159;
  float _160;
  float _166;
  float _172;
  float4 _234;
  float _239;
  float _242;
  float _247;
  float _248;
  float _254;
  float _260;
  float _261;
  float _267;
  float _273;
  uint _334;
  bool _350;
  float _356;
  float _375;
  float _391;
  float _407;
  float _408;
  float _412;
  float _415;
  float _418;
  float _425;
  float _432;
  float _439;
  float _440;
  float _441;
  float _442;
  float _443;
  float _444;
  float _445;
  float _461;
  float _477;
  float _493;
  float _494;
  float _495;
  float _496;
  float _497;
  float _514;
  float _515;
  float _516;
  float _517;
  float _520;
  float _523;
  float _527;
  float _531;
  float _535;
  float _555;
  float _567;
  float _579;
  float _591;
  float _598;
  float _605;
  float _612;
  float _618;
  float _619;
  float _621;
  float _623;
  float _625;
  float _630;
  float _651;
  float _653;
  float _656;
  float _659;
  float _662;
  float _668;
  float _710;
  float _713;
  float _719;
  float _761;
  float _778;
  float _782;
  float _786;
  _28 = _time.x * 0.05f;
  _31 = WaveReadLaneFirst(_materialIndex);
  _39 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_31 < (uint)170000), _31, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._maskNoiseTexture);
  _42 = WaveReadLaneFirst(_materialIndex);
  _50 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_42 < (uint)170000), _42, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._maskNoiseIntensity);
  _53 = WaveReadLaneFirst(_materialIndex);
  _61 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_53 < (uint)170000), _53, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._maskBlurThickness);
  _83 = ((_61 * 50.0f) * ((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_39 < (uint)65000), _39, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_28 + (TEXCOORD.x * 16.0f)), (_28 + (TEXCOORD.y * 16.0f)))))).z) + -0.5f) * _50) + 1.0f)) * ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x);
  if (_passIndex == 0) {
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_89.x, _89.y);
    _106 = (((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_89.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_89.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255;
    // [sem: _3__36__0__0__g_CustomRenderPassDepth_load]
    _115 = __3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0));
    if ((_106 == _renderPassTargetFocus) || ((_106 == _renderPassSelfPlayer) || (_106 == _renderPassTest))) {
      _331 = _115.x;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
      _332 = _115.x;
      _333 = 1.0f;
    } else {
      _331 = 0.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
      _332 = 0.0f;
      _333 = 0.0f;
    }
  } else {
    if (_passIndex == 1) {
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _133 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _138 = (pow(_133.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _141 = (pow(_133.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _146 = (1.0f / max(0.001f, _destTargetSizAndInv.x)) * _83;
      _147 = _146 * 1.3846154f;
      _153 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_147 + TEXCOORD.x), TEXCOORD.y)))).x) * 0.012683313f);
      _159 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _147), TEXCOORD.y)))).x) * 0.012683313f);
      _160 = _146 * 3.2307692f;
      _166 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_160 + TEXCOORD.x), TEXCOORD.y)))).x) * 0.012683313f);
      _172 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _160), TEXCOORD.y)))).x) * 0.012683313f);
      _331 = 0.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
      _332 = (exp2(log2(max(0.0f, (_141 + -0.8359375f)) / (18.851562f - (_141 * 18.6875f))) * 6.277395f) * 250000.0f);
      _333 = (((exp2(log2(max(0.0f, (_138 + -0.8359375f)) / (18.851562f - (_138 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_153 + -0.8359375f)) / (18.851562f - (_153 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_159 + -0.8359375f)) / (18.851562f - (_159 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_166 + -0.8359375f)) / (18.851562f - (_166 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_172 + -0.8359375f)) / (18.851562f - (_172 * 18.6875f))) * 6.277395f)) * 702.7027f));
    } else {
      if (_passIndex == 2) {
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _234 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
        _239 = (pow(_234.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _242 = (pow(_234.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _247 = (1.0f / max(0.001f, _destTargetSizAndInv.y)) * _83;
        _248 = _247 * 1.3846154f;
        _254 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_248 + TEXCOORD.y))))).x) * 0.012683313f);
        _260 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _248))))).x) * 0.012683313f);
        _261 = _247 * 3.2307692f;
        _267 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_261 + TEXCOORD.y))))).x) * 0.012683313f);
        _273 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _261))))).x) * 0.012683313f);
        _331 = 0.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
        _332 = (exp2(log2(max(0.0f, (_242 + -0.8359375f)) / (18.851562f - (_242 * 18.6875f))) * 6.277395f) * 250000.0f);
        _333 = (((exp2(log2(max(0.0f, (_239 + -0.8359375f)) / (18.851562f - (_239 * 18.6875f))) * 6.277395f) * 2270.2703f) + ((exp2(log2(max(0.0f, (_254 + -0.8359375f)) / (18.851562f - (_254 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_260 + -0.8359375f)) / (18.851562f - (_260 * 18.6875f))) * 6.277395f)) * 3162.1624f)) + ((exp2(log2(max(0.0f, (_267 + -0.8359375f)) / (18.851562f - (_267 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_273 + -0.8359375f)) / (18.851562f - (_273 * 18.6875f))) * 6.277395f)) * 702.7027f));
      } else {
        _331 = 0.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
        _332 = 0.0f;
        _333 = 0.0f;
      }
    }
  }
  _334 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _347 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _334, 0)))).x) & 127)))) + 0.5f);
  } else {
    _347 = 1.0f;
  }
  _350 = (_localToneMappingParams.w > 0.0f);
  if (_350) {
    _356 = _exposure0.x * _userImageAdjust.z;
    _375 = exp2(_powerParams.x * log2(max(0.0f, (((_356 * max(0.0f, (((_332 * -0.62179f) - (_331 * 0.08326f)) + (_333 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _391 = exp2(log2(max(0.0f, (((_slopeParams.y * _356) * max(0.0f, (((_332 * 1.1408f) - (_331 * 0.01055f)) - (_333 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _407 = exp2(log2(max(0.0f, (((_slopeParams.z * _356) * max(0.0f, (((_331 * 1.15297f) - (_332 * 0.12897f)) - (_333 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _408 = dot(float3(_375, _391, _407), float3(0.212671f, 0.71516f, 0.072169f));
    _412 = ((_375 - _408) * _powerParams.w) + _408;
    _415 = ((_391 - _408) * _powerParams.w) + _408;
    _418 = ((_407 - _408) * _powerParams.w) + _408;
    _425 = min(max(log2(mad(_418, 0.079223745f, mad(_415, 0.0784336f, (_412 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _432 = min(max(log2(mad(_418, 0.07916613f, mad(_415, 0.87846863f, (_412 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _439 = min(max(log2(mad(_418, 0.879143f, mad(_415, 0.0784336f, (_412 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _440 = _425 * 0.060606062f;
    _441 = _432 * 0.060606062f;
    _442 = _439 * 0.060606062f;
    _443 = _440 * _440;
    _444 = _441 * _441;
    _445 = _442 * _442;
    _461 = min(0.0f, (-0.0f - (((_425 * 0.0072181816f) + ((_443 * 0.4298f) + (((_443 * _443) * ((31.96f - (_425 * 2.4327273f)) + (_443 * 15.5f))) - ((_425 * 0.41624245f) * _443)))) + -0.00232f)));
    _477 = min(0.0f, (-0.0f - (((_432 * 0.0072181816f) + ((_444 * 0.4298f) + (((_444 * _444) * ((31.96f - (_432 * 2.4327273f)) + (_444 * 15.5f))) - ((_432 * 0.41624245f) * _444)))) + -0.00232f)));
    _493 = min(0.0f, (-0.0f - (((_439 * 0.0072181816f) + ((_445 * 0.4298f) + (((_445 * _445) * ((31.96f - (_439 * 2.4327273f)) + (_445 * 15.5f))) - ((_439 * 0.41624245f) * _445)))) + -0.00232f)));
    _494 = -0.0f - _461;
    _495 = -0.0f - _477;
    _496 = -0.0f - _493;
    _497 = dot(float3(_494, _495, _496), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _514 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _515 = -0.79999995f / _514;
      _516 = -1.2f / _514;
      _517 = 0.20000005f / _514;
      _520 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _523 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _527 = (_515 + 1.4f) + (_523 * (-0.39999998f - _515));
      _531 = (_516 + 1.6f) + (_523 * (-0.6f - _516));
      _535 = (_517 + 0.9f) + (_523 * (0.5f - _517));
      _552 = (lerp(_535, 1.4f, _520));  // [sem: blended]
      _553 = (lerp(_527, 1.0f, _520));  // [sem: blended]
      _554 = (lerp(_531, 1.2f, _520));  // [sem: blended]
    } else {
      _552 = 1.4f;  // [sem: blended]
      _553 = 1.0f;  // [sem: blended]
      _554 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _555 = 1.0f - _554;
    _567 = ((exp2(log2(((saturate((_461 * _461) * _494) * _555) + _554) * _494) * _553) - _497) * _552) + _497;
    _579 = ((exp2(log2(((saturate((_477 * _477) * _495) * _555) + _554) * _495) * _553) - _497) * _552) + _497;
    _591 = ((exp2(log2(((saturate((_493 * _493) * _496) * _555) + _554) * _496) * _553) - _497) * _552) + _497;
    _598 = saturate(exp2(log2(mad(_591, -0.09902974f, mad(_579, -0.09802088f, (_567 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _605 = saturate(exp2(log2(mad(_591, -0.098961174f, mad(_579, 1.1519032f, (_567 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _612 = saturate(exp2(log2(mad(_591, 1.1510737f, mad(_579, -0.09804345f, (_567 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _618 = 1.0f - abs(_etcParams.w);
      _619 = saturate(_etcParams.w);  // [sem: expr_sat]
      _621 = (_618 * _598) + _619;
      _623 = (_618 * _605) + _619;
      _625 = (_618 * _612) + _619;
      if (_colorGradingParams.w > 0.0f) {
        _630 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _647 = (((max(0.0f, (1.0f - _625)) - _625) * _630) + _625);
        _648 = (((max(0.0f, (1.0f - _623)) - _623) * _630) + _623);
        _649 = (((max(0.0f, (1.0f - _621)) - _621) * _630) + _621);
      } else {
        _647 = _625;
        _648 = _623;
        _649 = _621;
      }
      _651 = _userImageAdjust.y + 1.0f;
      _653 = _userImageAdjust.x + 0.5f;
      _656 = ((_649 + -0.5f) * _651) + _653;
      _659 = ((_648 + -0.5f) * _651) + _653;
      _662 = ((_647 + -0.5f) * _651) + _653;
      _668 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _703 = exp2(log2(saturate(mad(_colorBlind2.z, _662, mad(_colorBlind2.y, _659, (_colorBlind2.x * _656))))) * _668);
      _704 = exp2(log2(saturate(mad(_colorBlind1.z, _662, mad(_colorBlind1.y, _659, (_colorBlind1.x * _656))))) * _668);
      _705 = exp2(log2(saturate(mad(_colorBlind0.z, _662, mad(_colorBlind0.y, _659, (_colorBlind0.x * _656))))) * _668);
    } else {
      _703 = _612;
      _704 = _605;
      _705 = _598;
    }
  } else {
    _703 = _331;
    _704 = _332;
    _705 = _333;
  }
  if (_etcParams.y > 1.0f) {
    _710 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _713 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _719 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_710, _713), float2(_710, _713))));  // [sem: expr_sat]
    _724 = (_719 * _705);
    _725 = (_719 * _704);
    _726 = (_719 * _703);
  } else {
    _724 = _705;
    _725 = _704;
    _726 = _703;
  }
  if (_350 && (_etcParams.z > 0.0f)) {
    _756 = select((_724 <= 0.0031308f), (_724 * 12.92f), (((pow(_724, 0.41666666f)) * 1.055f) + -0.055f));
    _757 = select((_725 <= 0.0031308f), (_725 * 12.92f), (((pow(_725, 0.41666666f)) * 1.055f) + -0.055f));
    _758 = select((_726 <= 0.0031308f), (_726 * 12.92f), (((pow(_726, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _756 = _724;
    _757 = _725;
    _758 = _726;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _761 = (float)((uint)((uint)(_334)));
    if (!(_761 < _viewDir.w)) {
      if (!(!(_761 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _772 = 0.0f;
        _773 = 0.0f;
        _774 = 0.0f;
      } else {
        _772 = _756;
        _773 = _757;
        _774 = _758;
      }
    } else {
      _772 = 0.0f;
      _773 = 0.0f;
      _774 = 0.0f;
    }
  } else {
    _772 = _756;
    _773 = _757;
    _774 = _758;
  }
  _778 = exp2(log2(_772 * 0.0001f) * 0.15930176f);
  _782 = exp2(log2(_773 * 0.0001f) * 0.15930176f);
  _786 = exp2(log2(_774 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_778 * 18.6875f) + 1.0f)) * ((_778 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_782 * 18.6875f) + 1.0f)) * ((_782 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_786 * 18.6875f) + 1.0f)) * ((_786 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _347;
  return SV_Target;
}
