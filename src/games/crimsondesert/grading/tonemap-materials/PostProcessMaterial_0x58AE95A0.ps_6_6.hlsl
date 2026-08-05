struct PostProcessScreenDamage_CDStruct {
  float _borderRatio;
  float _borderWidth;
  float _borderSmoothness;
  float _borderEdgeNoiseRatio;
  float2 _borderEdgeNoiseOffset;
  float2 _borderEdgeNoiseTile;
  uint _borderColor1;
  uint _borderColor2;
  uint _sceneColorTint;
  uint _borderEdgeNoiseTexture;
  uint _borderInsideDistortionTexture;
  float _borderFlickerSpeed;
  float _borderFlickerIntensity;
  float2 _borderFlickerOpacityMinMax;
};

struct BindlessParameters_PostProcessScreenDamage_CD {
  PostProcessScreenDamage_CDStruct BindlessParameters_PostProcessScreenDamage_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by its PostProcessMaterial patches, and begins suppressing the duplicate native exposure declaration.
#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of the native ExposureConstantBuffer so any intervening unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing native GlobalPushConstants because tonemap.hlsli provides the ABI-compatible live declaration consumed by the material grading path.
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of native GlobalPushConstants so the following unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing the native ColorBlindConstantBuffer because tonemap.hlsli provides the ABI-compatible live declaration used by the material grading path.
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of the native ColorBlindConstantBuffer so all following native declarations compile normally.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

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

typedef BindlessParameters_PostProcessScreenDamage_CD BindlessParameters_PostProcessScreenDamage_CD_t;
ConstantBuffer<BindlessParameters_PostProcessScreenDamage_CD_t> BindlessParameters_PostProcessScreenDamage_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _23;
  float _30;
  float _33;
  float _36;
  float _45;
  float _54;
  float _63;
  float _432;
  float _433;
  float _434;
  float _448;
  float _653;
  float _654;
  float _655;
  float _748;
  float _749;
  float _750;
  float _804;
  float _805;
  float _806;
  float _825;
  float _826;
  float _827;
  float _857;
  float _858;
  float _859;
  float _873;
  float _874;
  float _875;
  float _69;
  float _75;
  float _77;
  int _80;
  float _88;
  float _92;
  int _95;
  float _103;
  float _107;
  float _110;
  int _113;
  int _121;
  float _134;
  int _137;
  int _145;
  int _148;
  float _156;
  float _160;
  float _164;
  float _168;
  int _171;
  float _179;
  float _183;
  int _186;
  float _194;
  int _197;
  float _205;
  float _244;
  int _247;
  int _255;
  float _258;
  float _261;
  float _263;
  float _267;
  int _270;
  int _278;
  float _281;
  float _284;
  float _286;
  float _295;
  float _304;
  float _313;
  int _316;
  int _324;
  float _327;
  float _330;
  float _332;
  float _339;
  float _343;
  float _356;
  float _369;
  float _382;
  uint _435;
  bool _451;
  float _457;
  float _476;
  float _492;
  float _508;
  float _509;
  float _513;
  float _516;
  float _519;
  float _526;
  float _533;
  float _540;
  float _541;
  float _542;
  float _543;
  float _544;
  float _545;
  float _546;
  float _562;
  float _578;
  float _594;
  float _595;
  float _596;
  float _597;
  float _598;
  float _615;
  float _616;
  float _617;
  float _618;
  float _621;
  float _624;
  float _628;
  float _632;
  float _636;
  float _656;
  float _668;
  float _680;
  float _692;
  float _699;
  float _706;
  float _713;
  float _719;
  float _720;
  float _722;
  float _724;
  float _726;
  float _731;
  float _752;
  float _754;
  float _757;
  float _760;
  float _763;
  float _769;
  float _811;
  float _814;
  float _820;
  float _862;
  float _879;
  float _883;
  float _887;
  _23 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _30 = (pow(_23.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _33 = (pow(_23.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _36 = (pow(_23.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _45 = exp2(log2(max(0.0f, (_30 + -0.8359375f)) / (18.851562f - (_30 * 18.6875f))) * 6.277395f) * 10000.0f;
  _54 = exp2(log2(max(0.0f, (_33 + -0.8359375f)) / (18.851562f - (_33 * 18.6875f))) * 6.277395f) * 10000.0f;
  _63 = exp2(log2(max(0.0f, (_36 + -0.8359375f)) / (18.851562f - (_36 * 18.6875f))) * 6.277395f) * 10000.0f;
  if (!(!(_hpPercentage <= 20.0f))) {
    _69 = 1.0f - (_hpPercentage * 0.01f);
    if ((!(_hpPercentage <= 0.0f)) && (_69 > 0.0f)) {
      _75 = 0.13f - (_hpPercentage * 0.006f);
      _77 = 2.0f - (_hpPercentage * 0.05f);
      _80 = WaveReadLaneFirst(_materialIndex);
      _88 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_80 < (uint)170000), _80, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseTile.x);
      _92 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_80 < (uint)170000), _80, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseTile.y);
      _95 = WaveReadLaneFirst(_materialIndex);
      _103 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_95 < (uint)170000), _95, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseOffset.x);
      _107 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_95 < (uint)170000), _95, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseOffset.y);
      _110 = _time.x * 0.3f;
      _113 = WaveReadLaneFirst(_materialIndex);
      _121 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_113 < (uint)170000), _113, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderInsideDistortionTexture);
      _134 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_121 < (uint)65000), _121, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_110 + (TEXCOORD.x * 12.0f)), (_110 + (TEXCOORD.y * 6.0f)))))).x) * 0.1f;
      _137 = WaveReadLaneFirst(_materialIndex);
      _145 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_137 < (uint)170000), _137, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseTexture);
      _148 = WaveReadLaneFirst(_materialIndex);
      _156 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_148 < (uint)170000), _148, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderSmoothness);
      _160 = (_hpPercentage * 0.002f) + 0.36f;
      _164 = max((abs(TEXCOORD.x + -0.5f) - _160), 0.0f);
      _168 = max((abs(TEXCOORD.y + -0.5f) - _160), 0.0f);
      _171 = WaveReadLaneFirst(_materialIndex);
      _179 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_171 < (uint)170000), _171, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderFlickerOpacityMinMax.x);
      _183 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_171 < (uint)170000), _171, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderFlickerOpacityMinMax.y);
      _186 = WaveReadLaneFirst(_materialIndex);
      _194 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_186 < (uint)170000), _186, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderFlickerIntensity);
      _197 = WaveReadLaneFirst(_materialIndex);
      _205 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_197 < (uint)170000), _197, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseRatio);
      // [sem: expr_sat]
      _244 = saturate((saturate((((sin(frac(_time.x * _77) * 3.1415927f) * (_183 - _179)) + _179) * _194) * saturate(sqrt((_168 * _168) + (_164 * _164)) / _156)) * 2.0f) - ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_145 < (uint)65000), _145, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_103 + (_88 * TEXCOORD.x)) + _134), ((_107 + (_92 * TEXCOORD.y)) + _134))))).x) * _205)) * min(max(_69, 0.0f), 1.0f);
      _247 = WaveReadLaneFirst(_materialIndex);
      _255 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_247 < (uint)170000), _247, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._sceneColorTint);
      _258 = (float)((uint)((uint)(((uint)((uint)(_255)) >> 16) & 255)));
      _261 = (float)((uint)((uint)(((uint)((uint)(_255)) >> 8) & 255)));
      _263 = (float)((uint)((uint)(_255 & 255)));
      _267 = 1.0f / max(0.001f, _exposure0.x);
      _270 = WaveReadLaneFirst(_materialIndex);
      _278 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_270 < (uint)170000), _270, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderColor1);
      _281 = (float)((uint)((uint)(((uint)((uint)(_278)) >> 16) & 255)));
      _284 = (float)((uint)((uint)(((uint)((uint)(_278)) >> 8) & 255)));
      _286 = (float)((uint)((uint)(_278 & 255)));
      _295 = select(((_281 * 0.003921569f) < 0.04045f), (_281 * 0.000303527f), exp2(log2((_281 * 0.003717127f) + 0.052132703f) * 2.4f));
      _304 = select(((_284 * 0.003921569f) < 0.04045f), (_284 * 0.000303527f), exp2(log2((_284 * 0.003717127f) + 0.052132703f) * 2.4f));
      _313 = select(((_286 * 0.003921569f) < 0.04045f), (_286 * 0.000303527f), exp2(log2((_286 * 0.003717127f) + 0.052132703f) * 2.4f));
      _316 = WaveReadLaneFirst(_materialIndex);
      _324 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_316 < (uint)170000), _316, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderColor2);
      _327 = (float)((uint)((uint)(((uint)((uint)(_324)) >> 16) & 255)));
      _330 = (float)((uint)((uint)(((uint)((uint)(_324)) >> 8) & 255)));
      _332 = (float)((uint)((uint)(_324 & 255)));
      _339 = saturate(sin(frac(_time.x * _77) * 3.1415927f));  // [sem: expr_sat]
      _343 = 1.0f / max(0.001f, _exposure0.x);
      _356 = (((select(((_258 * 0.003921569f) < 0.04045f), (_258 * 0.000303527f), exp2(log2((_258 * 0.003717127f) + 0.052132703f) * 2.4f)) * _267) - _45) * _75) + _45;
      _369 = (((select(((_261 * 0.003921569f) < 0.04045f), (_261 * 0.000303527f), exp2(log2((_261 * 0.003717127f) + 0.052132703f) * 2.4f)) * _267) - _54) * _75) + _54;
      _382 = (((select(((_263 * 0.003921569f) < 0.04045f), (_263 * 0.000303527f), exp2(log2((_263 * 0.003717127f) + 0.052132703f) * 2.4f)) * _267) - _63) * _75) + _63;
      _432 = (((((((select(((_332 * 0.003921569f) < 0.04045f), (_332 * 0.000303527f), exp2(log2((_332 * 0.003717127f) + 0.052132703f) * 2.4f)) - _313) * _339) + _313) * _343) - _382) * _244) + _382);
      _433 = (((((((select(((_330 * 0.003921569f) < 0.04045f), (_330 * 0.000303527f), exp2(log2((_330 * 0.003717127f) + 0.052132703f) * 2.4f)) - _304) * _339) + _304) * _343) - _369) * _244) + _369);
      _434 = (((((((select(((_327 * 0.003921569f) < 0.04045f), (_327 * 0.000303527f), exp2(log2((_327 * 0.003717127f) + 0.052132703f) * 2.4f)) - _295) * _339) + _295) * _343) - _356) * _244) + _356);
    } else {
      _432 = _63;
      _433 = _54;
      _434 = _45;
    }
  } else {
    _432 = _63;
    _433 = _54;
    _434 = _45;
  }
  _435 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _448 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _435, 0)))).x) & 127)))) + 0.5f);
  } else {
    _448 = _23.w;
  }
  _451 = (_localToneMappingParams.w > 0.0f);
  if (_451) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_434, _433, _432));
    _699 = _rndx_tonemapped_color.x;
    _706 = _rndx_tonemapped_color.y;
    _713 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _719 = 1.0f - abs(_etcParams.w);
      _720 = saturate(_etcParams.w);  // [sem: expr_sat]
      _722 = (_719 * _699) + _720;
      _724 = (_719 * _706) + _720;
      _726 = (_719 * _713) + _720;
      if (_colorGradingParams.w > 0.0f) {
        _731 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _748 = (((max(0.0f, (1.0f - _726)) - _726) * _731) + _726);
        _749 = (((max(0.0f, (1.0f - _724)) - _724) * _731) + _724);
        _750 = (((max(0.0f, (1.0f - _722)) - _722) * _731) + _722);
      } else {
        _748 = _726;
        _749 = _724;
        _750 = _722;
      }
      _752 = _userImageAdjust.y + 1.0f;
      _754 = _userImageAdjust.x + 0.5f;
      _757 = ((_750 + -0.5f) * _752) + _754;
      _760 = ((_749 + -0.5f) * _752) + _754;
      _763 = ((_748 + -0.5f) * _752) + _754;
      _769 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _804 = exp2(log2(saturate(mad(_colorBlind2.z, _763, mad(_colorBlind2.y, _760, (_colorBlind2.x * _757))))) * _769);
      _805 = exp2(log2(saturate(mad(_colorBlind1.z, _763, mad(_colorBlind1.y, _760, (_colorBlind1.x * _757))))) * _769);
      _806 = exp2(log2(saturate(mad(_colorBlind0.z, _763, mad(_colorBlind0.y, _760, (_colorBlind0.x * _757))))) * _769);
    } else {
      _804 = _713;
      _805 = _706;
      _806 = _699;
    }
  } else {
    _804 = _432;
    _805 = _433;
    _806 = _434;
  }
  if (_etcParams.y > 1.0f) {
    _811 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _814 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _820 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_811, _814), float2(_811, _814))));  // [sem: expr_sat]
    _825 = (_820 * _806);
    _826 = (_820 * _805);
    _827 = (_820 * _804);
  } else {
    _825 = _806;
    _826 = _805;
    _827 = _804;
  }
  if (_451 && (_etcParams.z > 0.0f)) {
    _857 = select((_825 <= 0.0031308f), (_825 * 12.92f), (((pow(_825, 0.41666666f)) * 1.055f) + -0.055f));
    _858 = select((_826 <= 0.0031308f), (_826 * 12.92f), (((pow(_826, 0.41666666f)) * 1.055f) + -0.055f));
    _859 = select((_827 <= 0.0031308f), (_827 * 12.92f), (((pow(_827, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _857 = _825;
    _858 = _826;
    _859 = _827;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _862 = (float)((uint)((uint)(_435)));
    if (!(_862 < _viewDir.w)) {
      if (!(!(_862 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _873 = 0.0f;
        _874 = 0.0f;
        _875 = 0.0f;
      } else {
        _873 = _857;
        _874 = _858;
        _875 = _859;
      }
    } else {
      _873 = 0.0f;
      _874 = 0.0f;
      _875 = 0.0f;
    }
  } else {
    _873 = _857;
    _874 = _858;
    _875 = _859;
  }
  _879 = exp2(log2(_873 * 0.0001f) * 0.15930176f);
  _883 = exp2(log2(_874 * 0.0001f) * 0.15930176f);
  _887 = exp2(log2(_875 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_879 * 18.6875f) + 1.0f)) * ((_879 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_883 * 18.6875f) + 1.0f)) * ((_883 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_887 * 18.6875f) + 1.0f)) * ((_887 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _448;
  return SV_Target;
}
