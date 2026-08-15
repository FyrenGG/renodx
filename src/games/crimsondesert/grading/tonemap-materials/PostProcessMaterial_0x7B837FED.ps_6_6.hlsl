struct PostProcessLearningHolo_CDStruct {
  float _learningEffectRatio;
  uint _learningEffectColor;
  uint _noiseTexture;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t36, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t69, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t71, space36);

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

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by the material grading path, and begins suppressing the duplicate native exposure declaration.
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
  uint _renderPassHousingHover : packoffset(c029.z);
  uint _renderPassHousingSelected : packoffset(c029.w);
  uint _characterMeshEffectType : packoffset(c030.x);
};

struct BindlessParameters_PostProcessLearningHolo_CD {
  PostProcessLearningHolo_CDStruct BindlessParameters_PostProcessLearningHolo_CD;
};

typedef BindlessParameters_PostProcessLearningHolo_CD BindlessParameters_PostProcessLearningHolo_CD_t;
ConstantBuffer<BindlessParameters_PostProcessLearningHolo_CD_t> BindlessParameters_PostProcessLearningHolo_CD[] : register(b0, space100);

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
  float4 _30;
  int _34;
  float _42;
  int _47;
  int _55;
  uint2 _71;
  uint _86;
  int _88;
  float _96;
  float _97;
  float _99;
  float _100;
  float _101;
  float _112;
  float _113;
  float _413;
  float _414;
  float _415;
  float _416;
  float _424;
  float _425;
  float _426;
  float _427;
  float _428;
  float _429;
  float _430;
  float _453;
  float _658;
  float _659;
  float _660;
  float _753;
  float _754;
  float _755;
  float _809;
  float _810;
  float _811;
  float _830;
  float _831;
  float _832;
  float _862;
  float _863;
  float _864;
  float _878;
  float _879;
  float _880;
  float _115;
  float _116;
  float _117;
  float _118;
  float _120;
  float _121;
  float _122;
  float _123;
  bool _127;
  float _139;
  float _140;
  float _141;
  float _143;
  float _144;
  uint _152;
  uint _153;
  uint4 _155;
  float4 _158;
  float _176;
  float _177;
  float _178;
  float _180;
  float _181;
  float _182;
  float _183;
  float _186;
  float _187;
  float _190;
  float _191;
  float _195;
  float _197;
  float _198;
  float _199;
  float _200;
  float _202;
  float _205;
  float _206;
  float _207;
  float _208;
  float _217;
  float _221;
  float _225;
  float _227;
  float _231;
  float _232;
  int _233;
  int _241;
  float _244;
  float _247;
  float _249;
  float _279;
  float _294;
  float _318;
  float _320;
  float _321;
  float _325;
  float _326;
  float _327;
  float _332;
  float _336;
  float _337;
  float _338;
  float _360;
  float _367;
  float _371;
  float _377;
  float _380;
  float _399;
  float _419;
  float _437;
  float _438;
  float _439;
  uint _440;
  bool _456;
  float _462;
  float _511;
  float _512;
  float _513;
  float _515;
  float _522;
  float _523;
  float _524;
  float _543;
  float _544;
  float _545;
  float _546;
  float _547;
  float _548;
  float _549;
  float _550;
  float _551;
  float _597;
  float _598;
  float _599;
  float _600;
  float _601;
  float _602;
  float _603;
  float _620;
  float _621;
  float _622;
  float _623;
  float _629;
  float _632;
  float _639;
  float _640;
  float _641;
  float _670;
  float _695;
  float _696;
  float _697;
  float _716;
  float _717;
  float _718;
  float _724;
  float _728;
  float _729;
  float _730;
  float _731;
  float _736;
  float _761;
  float _765;
  float _766;
  float _767;
  float _768;
  float _798;
  float _820;
  float _821;
  float _825;
  float _869;
  _30 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _34 = WaveReadLaneFirst(_materialIndex);
  _42 = WaveReadLaneFirst(BindlessParameters_PostProcessLearningHolo_CD[((int)((uint)((uint)(select(((uint)_34 < (uint)170000), _34, 0))) + (uint)(0)))].BindlessParameters_PostProcessLearningHolo_CD._learningEffectRatio);
  _47 = WaveReadLaneFirst(_materialIndex);
  _55 = WaveReadLaneFirst(BindlessParameters_PostProcessLearningHolo_CD[((int)((uint)((uint)(select(((uint)_47 < (uint)170000), _47, 0))) + (uint)(0)))].BindlessParameters_PostProcessLearningHolo_CD._noiseTexture);
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_71.x, _71.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _86 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_71.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_71.y))))))) + 0.5f) * (((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_55 < (uint)65000), _55, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_42 + (TEXCOORD.x * 5.0f)), (_42 + (TEXCOORD.y * 0.1f)))))).y) * 0.016f) + -0.007968628f) * saturate(1.0f - _42)) + TEXCOORD.y))), 0));
  _88 = _86.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _96 = (((float)((uint)((uint)((uint)((uint)(_86.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _97 = (((float)((uint)((uint)(((uint)((uint)(_86.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _99 = 1.0f - abs(_96);
  _100 = abs(_97);
  _101 = _99 - _100;
  if (!(_101 >= 0.0f)) {
    _112 = (select((_96 >= 0.0f), 1.0f, -1.0f) * (1.0f - _100));
    _113 = (select((_97 >= 0.0f), 1.0f, -1.0f) * _99);
  } else {
    _112 = _96;
    _113 = _97;
  }
  _115 = rsqrt(dot(float3(_112, _113, _101), float3(_112, _113, _101)));  // [sem: invLength]
  _116 = _115 * _112;
  _117 = _115 * _113;
  _118 = _115 * _101;
  _120 = rsqrt(dot(float3(_116, _117, _118), float3(_116, _117, _118)));  // [sem: invLength]
  _121 = _120 * _116;
  _122 = _120 * _117;
  _123 = _120 * _118;
  _127 = (_42 > 0.001f);
  if (_88 == _renderPassLearning) {
    if (_127) {
      _139 = -0.0f - _viewDir.x;
      _140 = -0.0f - _viewDir.y;
      _141 = -0.0f - _viewDir.z;
      _143 = saturate(dot(float3(_121, _122, _123), float3(_139, _140, _141)));  // [sem: expr_sat]
      _144 = 1.0f - _143;
      _152 = (uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f);
      _153 = (uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f);
      _155 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_152, _153, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _158 = __3__36__0__0__g_gbufferNormal.Load(int3(_152, _153, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _176 = (saturate(_158.x * 1.0009785f) * 2.0f) + -1.0f;
      _177 = (saturate(_158.y * 1.0009785f) * 2.0f) + -1.0f;
      _178 = (saturate(_158.z * 1.0009785f) * 2.0f) + -1.0f;
      _180 = rsqrt(dot(float3(_176, _177, _178), float3(_176, _177, _178)));  // [sem: invLength]
      _181 = _180 * _176;
      _182 = _180 * _177;
      _183 = _178 * _180;
      _186 = (((float)((uint)((uint)(((uint)((uint)(_155.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;
      _187 = (((float)((uint)((uint)(_155.w & 255)))) * 0.007843138f) + -1.0f;
      _190 = (_186 + _187) * 0.5f;
      _191 = (_186 - _187) * 0.5f;
      _195 = (1.0f - abs(_190)) - abs(_191);
      _197 = rsqrt(dot(float3(_190, _191, _195), float3(_190, _191, _195)));  // [sem: invLength]
      _198 = _197 * _190;
      _199 = _197 * _191;
      _200 = _197 * _195;
      _202 = select((_183 >= 0.0f), 1.0f, -1.0f);
      _205 = -0.0f - (1.0f / (_202 + _183));
      _206 = _182 * _205;
      _207 = _206 * _181;
      _208 = _202 * _181;
      _217 = mad(_200, _181, mad(_199, _207, ((((_208 * _181) * _205) + 1.0f) * _198)));
      _221 = mad(_200, _182, mad(_199, (_202 + (_206 * _182)), ((_198 * _202) * _207)));
      _225 = mad(_200, _183, mad(_199, (-0.0f - _182), (-0.0f - (_208 * _198))));
      _227 = rsqrt(dot(float3(_217, _221, _225), float3(_217, _221, _225)));  // [sem: invLength]
      _231 = dot(float3((_227 * _217), (_227 * _221), (_227 * _225)), float3(_139, _140, _141));
      _232 = 1.0f - _231;
      _233 = WaveReadLaneFirst(_materialIndex);
      _241 = WaveReadLaneFirst(BindlessParameters_PostProcessLearningHolo_CD[((int)((uint)((uint)(select(((uint)_233 < (uint)170000), _233, 0))) + (uint)(0)))].BindlessParameters_PostProcessLearningHolo_CD._learningEffectColor);
      _244 = (float)((uint)((uint)(((uint)((uint)(_241)) >> 16) & 255)));
      _247 = (float)((uint)((uint)(((uint)((uint)(_241)) >> 8) & 255)));
      _249 = (float)((uint)((uint)(_241 & 255)));
      _279 = max(0.001f, _exposure0.x);
      _294 = saturate((abs(sin(((_123 * 2.0f) + (TEXCOORD.y * 500.0f)) + (_time.x * 10.0f))) * 3.0f) + -2.0f);  // [sem: expr_sat]
      _318 = _143 * _231;
      _320 = ((saturate((abs(sin(((_122 * 2.0f) + (TEXCOORD.y * 10.0f)) - (_time.x * 2.0f))) * 3.0f) + -2.0f) * (saturate((abs(sin(((_121 * 0.25f) + (TEXCOORD.y * 25.0f)) + (_time.x * 1.2f))) * 3.0f) + -1.0f) - _294)) + _294) * (_318 * _318);
      _321 = dot(float3(_30.x, _30.y, _30.z), float3(0.2126f, 0.7152f, 0.0722f));
      _325 = _320 * (_321 + (select(((_244 * 0.003921569f) < 0.04045f), (_244 * 0.000303527f), exp2(log2((_244 * 0.003717127f) + 0.052132703f) * 2.4f)) / _279));
      _326 = _320 * (_321 + (select(((_247 * 0.003921569f) < 0.04045f), (_247 * 0.000303527f), exp2(log2((_247 * 0.003717127f) + 0.052132703f) * 2.4f)) / _279));
      _327 = _320 * (_321 + (select(((_249 * 0.003921569f) < 0.04045f), (_249 * 0.000303527f), exp2(log2((_249 * 0.003717127f) + 0.052132703f) * 2.4f)) / _279));
      _332 = exp2(log2(_232 * _144) * 3.0f) * 10.0f;
      _336 = (_332 * _325) + _325;
      _337 = (_332 * _326) + _326;
      _338 = (_332 * _327) + _327;
      // [sem: expr_sat]
      _360 = saturate((_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x))) - (_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x))));
      _367 = (saturate(1.0f - abs((_42 * 2.0f) + -1.0f)) * 199.0f) + 1.0f;
      if (_360 < 1.0f) {
        _371 = log2(1.0f - _360);
        _377 = (pow(_360, 3.0f)) * exp2(_371 * 8.0f);
        _380 = (_377 * 600.0f) / _279;
        _413 = ((_380 + _336) * _367);
        _414 = ((_380 + _337) * _367);
        _415 = ((((_377 * 1800.0f) / _279) + _338) * _367);
        _416 = saturate(exp2(_371 * 3.0f) * _42);  // [sem: expr_sat]
      } else {
        if (_88 == _renderPassAimHighlight) {
          _399 = ((_232 - _144) * 0.4f) + _144;
          _413 = ((((_399 * 0.8f) / _279) + _336) * _367);
          _414 = ((((_399 * 1.2f) / _279) + _337) * _367);
          _415 = ((((_399 * 2.0f) / _279) + _338) * _367);
          _416 = _42;  // [sem: expr_sat]
        } else {
          _413 = _30.x;
          _414 = _30.y;
          _415 = _30.z;
          _416 = 0.0f;  // [sem: expr_sat]
        }
      }
      _419 = ((_42 * 3.0f) * _416) + 1.0f;
      _424 = (_419 * _30.x);
      _425 = (_419 * _30.y);
      _426 = (_419 * _30.z);
      _427 = _413;
      _428 = _414;
      _429 = _415;
      _430 = _416;
    } else {
      _424 = _30.x;
      _425 = _30.y;
      _426 = _30.z;
      _427 = _30.x;
      _428 = _30.y;
      _429 = _30.z;
      _430 = 0.0f;
    }
  } else {
    if (_127 && (_88 == _renderPassAimHighlight)) {
      _139 = -0.0f - _viewDir.x;
      _140 = -0.0f - _viewDir.y;
      _141 = -0.0f - _viewDir.z;
      _143 = saturate(dot(float3(_121, _122, _123), float3(_139, _140, _141)));  // [sem: expr_sat]
      _144 = 1.0f - _143;
      _152 = (uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f);
      _153 = (uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f);
      _155 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_152, _153, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _158 = __3__36__0__0__g_gbufferNormal.Load(int3(_152, _153, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _176 = (saturate(_158.x * 1.0009785f) * 2.0f) + -1.0f;
      _177 = (saturate(_158.y * 1.0009785f) * 2.0f) + -1.0f;
      _178 = (saturate(_158.z * 1.0009785f) * 2.0f) + -1.0f;
      _180 = rsqrt(dot(float3(_176, _177, _178), float3(_176, _177, _178)));  // [sem: invLength]
      _181 = _180 * _176;
      _182 = _180 * _177;
      _183 = _178 * _180;
      _186 = (((float)((uint)((uint)(((uint)((uint)(_155.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;
      _187 = (((float)((uint)((uint)(_155.w & 255)))) * 0.007843138f) + -1.0f;
      _190 = (_186 + _187) * 0.5f;
      _191 = (_186 - _187) * 0.5f;
      _195 = (1.0f - abs(_190)) - abs(_191);
      _197 = rsqrt(dot(float3(_190, _191, _195), float3(_190, _191, _195)));  // [sem: invLength]
      _198 = _197 * _190;
      _199 = _197 * _191;
      _200 = _197 * _195;
      _202 = select((_183 >= 0.0f), 1.0f, -1.0f);
      _205 = -0.0f - (1.0f / (_202 + _183));
      _206 = _182 * _205;
      _207 = _206 * _181;
      _208 = _202 * _181;
      _217 = mad(_200, _181, mad(_199, _207, ((((_208 * _181) * _205) + 1.0f) * _198)));
      _221 = mad(_200, _182, mad(_199, (_202 + (_206 * _182)), ((_198 * _202) * _207)));
      _225 = mad(_200, _183, mad(_199, (-0.0f - _182), (-0.0f - (_208 * _198))));
      _227 = rsqrt(dot(float3(_217, _221, _225), float3(_217, _221, _225)));  // [sem: invLength]
      _231 = dot(float3((_227 * _217), (_227 * _221), (_227 * _225)), float3(_139, _140, _141));
      _232 = 1.0f - _231;
      _233 = WaveReadLaneFirst(_materialIndex);
      _241 = WaveReadLaneFirst(BindlessParameters_PostProcessLearningHolo_CD[((int)((uint)((uint)(select(((uint)_233 < (uint)170000), _233, 0))) + (uint)(0)))].BindlessParameters_PostProcessLearningHolo_CD._learningEffectColor);
      _244 = (float)((uint)((uint)(((uint)((uint)(_241)) >> 16) & 255)));
      _247 = (float)((uint)((uint)(((uint)((uint)(_241)) >> 8) & 255)));
      _249 = (float)((uint)((uint)(_241 & 255)));
      _279 = max(0.001f, _exposure0.x);
      _294 = saturate((abs(sin(((_123 * 2.0f) + (TEXCOORD.y * 500.0f)) + (_time.x * 10.0f))) * 3.0f) + -2.0f);  // [sem: expr_sat]
      _318 = _143 * _231;
      _320 = ((saturate((abs(sin(((_122 * 2.0f) + (TEXCOORD.y * 10.0f)) - (_time.x * 2.0f))) * 3.0f) + -2.0f) * (saturate((abs(sin(((_121 * 0.25f) + (TEXCOORD.y * 25.0f)) + (_time.x * 1.2f))) * 3.0f) + -1.0f) - _294)) + _294) * (_318 * _318);
      _321 = dot(float3(_30.x, _30.y, _30.z), float3(0.2126f, 0.7152f, 0.0722f));
      _325 = _320 * (_321 + (select(((_244 * 0.003921569f) < 0.04045f), (_244 * 0.000303527f), exp2(log2((_244 * 0.003717127f) + 0.052132703f) * 2.4f)) / _279));
      _326 = _320 * (_321 + (select(((_247 * 0.003921569f) < 0.04045f), (_247 * 0.000303527f), exp2(log2((_247 * 0.003717127f) + 0.052132703f) * 2.4f)) / _279));
      _327 = _320 * (_321 + (select(((_249 * 0.003921569f) < 0.04045f), (_249 * 0.000303527f), exp2(log2((_249 * 0.003717127f) + 0.052132703f) * 2.4f)) / _279));
      _332 = exp2(log2(_232 * _144) * 3.0f) * 10.0f;
      _336 = (_332 * _325) + _325;
      _337 = (_332 * _326) + _326;
      _338 = (_332 * _327) + _327;
      // [sem: expr_sat]
      _360 = saturate((_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x))) - (_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x))));
      _367 = (saturate(1.0f - abs((_42 * 2.0f) + -1.0f)) * 199.0f) + 1.0f;
      if (_360 < 1.0f) {
        _371 = log2(1.0f - _360);
        _377 = (pow(_360, 3.0f)) * exp2(_371 * 8.0f);
        _380 = (_377 * 600.0f) / _279;
        _413 = ((_380 + _336) * _367);
        _414 = ((_380 + _337) * _367);
        _415 = ((((_377 * 1800.0f) / _279) + _338) * _367);
        _416 = saturate(exp2(_371 * 3.0f) * _42);  // [sem: expr_sat]
      } else {
        if (_88 == _renderPassAimHighlight) {
          _399 = ((_232 - _144) * 0.4f) + _144;
          _413 = ((((_399 * 0.8f) / _279) + _336) * _367);
          _414 = ((((_399 * 1.2f) / _279) + _337) * _367);
          _415 = ((((_399 * 2.0f) / _279) + _338) * _367);
          _416 = _42;  // [sem: expr_sat]
        } else {
          _413 = _30.x;
          _414 = _30.y;
          _415 = _30.z;
          _416 = 0.0f;  // [sem: expr_sat]
        }
      }
      _419 = ((_42 * 3.0f) * _416) + 1.0f;
      _424 = (_419 * _30.x);
      _425 = (_419 * _30.y);
      _426 = (_419 * _30.z);
      _427 = _413;
      _428 = _414;
      _429 = _415;
      _430 = _416;
    } else {
      _424 = _30.x;
      _425 = _30.y;
      _426 = _30.z;
      _427 = _30.x;
      _428 = _30.y;
      _429 = _30.z;
      _430 = 0.0f;
    }
  }
  _437 = (_430 * (_427 - _424)) + _424;
  _438 = (_430 * (_428 - _425)) + _425;
  _439 = (_430 * (_429 - _426)) + _426;
  _440 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _453 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _440, 0)))).x) & 127)))) + 0.5f);
  } else {
    _453 = 1.0f;
  }
  _456 = (_localToneMappingParams.w > 0.0f);
  if (_456) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_437, _438, _439));
    _716 = _rndx_tonemapped_color.x;
    _717 = _rndx_tonemapped_color.y;
    _718 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _724 = 1.0f - abs(_etcParams.w);
      _728 = saturate(_etcParams.w);  // [sem: expr_sat]
      _729 = (_724 * _716) + _728;
      _730 = (_724 * _717) + _728;
      _731 = (_724 * _718) + _728;
      if (_colorGradingParams.w > 0.0f) {
        _736 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _753 = (((max(0.0f, (1.0f - _729)) - _729) * _736) + _729);
        _754 = (((max(0.0f, (1.0f - _730)) - _730) * _736) + _730);
        _755 = (((max(0.0f, (1.0f - _731)) - _731) * _736) + _731);
      } else {
        _753 = _729;
        _754 = _730;
        _755 = _731;
      }
      _761 = _userImageAdjust.y + 1.0f;
      _765 = _userImageAdjust.x + 0.5f;
      _766 = ((_753 + -0.5f) * _761) + _765;
      _767 = ((_754 + -0.5f) * _761) + _765;
      _768 = ((_755 + -0.5f) * _761) + _765;
      _798 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _809 = exp2(log2(saturate(mad(_colorBlind0.z, _768, mad(_colorBlind0.y, _767, (_colorBlind0.x * _766))))) * _798);
      _810 = exp2(log2(saturate(mad(_colorBlind1.z, _768, mad(_colorBlind1.y, _767, (_colorBlind1.x * _766))))) * _798);
      _811 = exp2(log2(saturate(mad(_colorBlind2.z, _768, mad(_colorBlind2.y, _767, (_colorBlind2.x * _766))))) * _798);
    } else {
      _809 = _716;
      _810 = _717;
      _811 = _718;
    }
  } else {
    _809 = _437;
    _810 = _438;
    _811 = _439;
  }
  if (_etcParams.y > 1.0f) {
    _820 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _821 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _825 = saturate(1.0f - (dot(float2(_820, _821), float2(_820, _821)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _830 = (_825 * _809);
    _831 = (_825 * _810);
    _832 = (_825 * _811);
  } else {
    _830 = _809;
    _831 = _810;
    _832 = _811;
  }
  if (_456 && (_etcParams.z > 0.0f)) {
    _862 = select((_830 <= 0.0031308f), (_830 * 12.92f), (((pow(_830, 0.41666666f)) * 1.055f) + -0.055f));
    _863 = select((_831 <= 0.0031308f), (_831 * 12.92f), (((pow(_831, 0.41666666f)) * 1.055f) + -0.055f));
    _864 = select((_832 <= 0.0031308f), (_832 * 12.92f), (((pow(_832, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _862 = _830;
    _863 = _831;
    _864 = _832;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _869 = (float)((uint)((uint)(_440)));
    if (!(_869 < _viewDir.w)) {
      if (!(_869 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _878 = _862;
        _879 = _863;
        _880 = _864;
      } else {
        _878 = 0.0f;
        _879 = 0.0f;
        _880 = 0.0f;
      }
    } else {
      _878 = 0.0f;
      _879 = 0.0f;
      _880 = 0.0f;
    }
  } else {
    _878 = _862;
    _879 = _863;
    _880 = _864;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_878, _879, _880), _sunDirection.y, _moonDirection.y);
    _878 = _rndx_final_color.x;
    _879 = _rndx_final_color.y;
    _880 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _878;
  SV_Target.y = _879;
  SV_Target.z = _880;
  SV_Target.w = _453;
  return SV_Target;
}
