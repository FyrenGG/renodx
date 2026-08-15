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


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

struct BindlessParameters_PostProcessScreenDamage_CD {
  PostProcessScreenDamage_CDStruct BindlessParameters_PostProcessScreenDamage_CD;
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
  float4 _25;
  float _368;
  float _369;
  float _370;
  float _384;
  float _589;
  float _590;
  float _591;
  float _684;
  float _685;
  float _686;
  float _740;
  float _741;
  float _742;
  float _761;
  float _762;
  float _763;
  float _793;
  float _794;
  float _795;
  float _809;
  float _810;
  float _811;
  float _35;
  float _41;
  float _43;
  int _44;
  float _53;
  float _54;
  int _57;
  float _66;
  float _67;
  float _74;
  int _77;
  int _85;
  float _94;
  int _97;
  int _105;
  int _114;
  float _122;
  float _128;
  float _131;
  float _132;
  int _145;
  float _154;
  float _155;
  int _159;
  float _167;
  int _172;
  float _180;
  float _186;
  int _187;
  int _195;
  float _198;
  float _201;
  float _203;
  float _234;
  int _238;
  int _246;
  float _249;
  float _252;
  float _254;
  float _279;
  float _280;
  float _281;
  int _282;
  int _290;
  float _293;
  float _296;
  float _298;
  float _332;
  float _345;
  float _355;
  float _356;
  float _357;
  uint _371;
  bool _387;
  float _393;
  float _442;
  float _443;
  float _444;
  float _446;
  float _453;
  float _454;
  float _455;
  float _474;
  float _475;
  float _476;
  float _477;
  float _478;
  float _479;
  float _480;
  float _481;
  float _482;
  float _528;
  float _529;
  float _530;
  float _531;
  float _532;
  float _533;
  float _534;
  float _551;
  float _552;
  float _553;
  float _554;
  float _560;
  float _563;
  float _570;
  float _571;
  float _572;
  float _601;
  float _626;
  float _627;
  float _628;
  float _647;
  float _648;
  float _649;
  float _655;
  float _659;
  float _660;
  float _661;
  float _662;
  float _667;
  float _692;
  float _696;
  float _697;
  float _698;
  float _699;
  float _729;
  float _751;
  float _752;
  float _756;
  float _800;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (!(!(_hpPercentage <= 20.0f))) {
    _35 = 1.0f - (_hpPercentage * 0.01f);
    if ((!(_hpPercentage <= 0.0f)) && (_35 > 0.0f)) {
      _41 = 0.13f - (_hpPercentage * 0.006f);
      _43 = 2.0f - (_hpPercentage * 0.05f);
      _44 = WaveReadLaneFirst(_materialIndex);
      _53 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_44 < (uint)170000), _44, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseTile.x);
      _54 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_44 < (uint)170000), _44, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseTile.y);
      _57 = WaveReadLaneFirst(_materialIndex);
      _66 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_57 < (uint)170000), _57, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseOffset.x);
      _67 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_57 < (uint)170000), _57, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseOffset.y);
      _74 = _time.x * 0.3f;
      _77 = WaveReadLaneFirst(_materialIndex);
      _85 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_77 < (uint)170000), _77, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderInsideDistortionTexture);
      _94 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_85 < (uint)65000), _85, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_74 + (TEXCOORD.x * 12.0f)), (_74 + (TEXCOORD.y * 6.0f)))))).x) * 0.1f;
      _97 = WaveReadLaneFirst(_materialIndex);
      _105 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_97 < (uint)170000), _97, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseTexture);
      _114 = WaveReadLaneFirst(_materialIndex);
      _122 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_114 < (uint)170000), _114, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderSmoothness);
      _128 = (_hpPercentage * 0.002f) + 0.36f;
      _131 = max((abs(TEXCOORD.x + -0.5f) - _128), 0.0f);
      _132 = max((abs(TEXCOORD.y + -0.5f) - _128), 0.0f);
      _145 = WaveReadLaneFirst(_materialIndex);
      _154 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_145 < (uint)170000), _145, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderFlickerOpacityMinMax.x);
      _155 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_145 < (uint)170000), _145, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderFlickerOpacityMinMax.y);
      _159 = WaveReadLaneFirst(_materialIndex);
      _167 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_159 < (uint)170000), _159, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderFlickerIntensity);
      _172 = WaveReadLaneFirst(_materialIndex);
      _180 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_172 < (uint)170000), _172, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderEdgeNoiseRatio);
      _186 = min(max(_35, 0.0f), 1.0f) * saturate((saturate(((((_155 - _154) * sin(frac(_time.x * _43) * 3.1415927f)) + _154) * saturate(sqrt((_132 * _132) + (_131 * _131)) / _122)) * _167) * 2.0f) - (_180 * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_105 < (uint)65000), _105, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_66 + (_53 * TEXCOORD.x)) + _94), ((_67 + (_54 * TEXCOORD.y)) + _94))))).x)));
      _187 = WaveReadLaneFirst(_materialIndex);
      _195 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_187 < (uint)170000), _187, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._sceneColorTint);
      _198 = (float)((uint)((uint)(((uint)((uint)(_195)) >> 16) & 255)));
      _201 = (float)((uint)((uint)(((uint)((uint)(_195)) >> 8) & 255)));
      _203 = (float)((uint)((uint)(_195 & 255)));
      _234 = 1.0f / max(0.001f, _exposure0.x);
      _238 = WaveReadLaneFirst(_materialIndex);
      _246 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_238 < (uint)170000), _238, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderColor1);
      _249 = (float)((uint)((uint)(((uint)((uint)(_246)) >> 16) & 255)));
      _252 = (float)((uint)((uint)(((uint)((uint)(_246)) >> 8) & 255)));
      _254 = (float)((uint)((uint)(_246 & 255)));
      _279 = select(((_249 * 0.003921569f) < 0.04045f), (_249 * 0.000303527f), exp2(log2((_249 * 0.003717127f) + 0.052132703f) * 2.4f));
      _280 = select(((_252 * 0.003921569f) < 0.04045f), (_252 * 0.000303527f), exp2(log2((_252 * 0.003717127f) + 0.052132703f) * 2.4f));
      _281 = select(((_254 * 0.003921569f) < 0.04045f), (_254 * 0.000303527f), exp2(log2((_254 * 0.003717127f) + 0.052132703f) * 2.4f));
      _282 = WaveReadLaneFirst(_materialIndex);
      _290 = WaveReadLaneFirst(BindlessParameters_PostProcessScreenDamage_CD[((int)((uint)((uint)(select(((uint)_282 < (uint)170000), _282, 0))) + (uint)(0)))].BindlessParameters_PostProcessScreenDamage_CD._borderColor2);
      _293 = (float)((uint)((uint)(((uint)((uint)(_290)) >> 16) & 255)));
      _296 = (float)((uint)((uint)(((uint)((uint)(_290)) >> 8) & 255)));
      _298 = (float)((uint)((uint)(_290 & 255)));
      _332 = saturate(sin(frac(_time.x * _43) * 3.1415927f));  // [sem: expr_sat]
      _345 = 1.0f / max(0.001f, _exposure0.x);
      _355 = (((_234 * select(((_198 * 0.003921569f) < 0.04045f), (_198 * 0.000303527f), exp2(log2((_198 * 0.003717127f) + 0.052132703f) * 2.4f))) - _25.x) * _41) + _25.x;
      _356 = (((_234 * select(((_201 * 0.003921569f) < 0.04045f), (_201 * 0.000303527f), exp2(log2((_201 * 0.003717127f) + 0.052132703f) * 2.4f))) - _25.y) * _41) + _25.y;
      _357 = (((_234 * select(((_203 * 0.003921569f) < 0.04045f), (_203 * 0.000303527f), exp2(log2((_203 * 0.003717127f) + 0.052132703f) * 2.4f))) - _25.z) * _41) + _25.z;
      _368 = ((((_345 * ((_332 * (select(((_293 * 0.003921569f) < 0.04045f), (_293 * 0.000303527f), exp2(log2((_293 * 0.003717127f) + 0.052132703f) * 2.4f)) - _279)) + _279)) - _355) * _186) + _355);
      _369 = ((((_345 * ((_332 * (select(((_296 * 0.003921569f) < 0.04045f), (_296 * 0.000303527f), exp2(log2((_296 * 0.003717127f) + 0.052132703f) * 2.4f)) - _280)) + _280)) - _356) * _186) + _356);
      _370 = ((((_345 * ((_332 * (select(((_298 * 0.003921569f) < 0.04045f), (_298 * 0.000303527f), exp2(log2((_298 * 0.003717127f) + 0.052132703f) * 2.4f)) - _281)) + _281)) - _357) * _186) + _357);
    } else {
      _368 = _25.x;
      _369 = _25.y;
      _370 = _25.z;
    }
  } else {
    _368 = _25.x;
    _369 = _25.y;
    _370 = _25.z;
  }
  _371 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _384 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _371, 0)))).x) & 127)))) + 0.5f);
  } else {
    _384 = _25.w;
  }
  _387 = (_localToneMappingParams.w > 0.0f);
  if (_387) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_368, _369, _370));
    _647 = _rndx_tonemapped_color.x;
    _648 = _rndx_tonemapped_color.y;
    _649 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _655 = 1.0f - abs(_etcParams.w);
      _659 = saturate(_etcParams.w);  // [sem: expr_sat]
      _660 = (_655 * _647) + _659;
      _661 = (_655 * _648) + _659;
      _662 = (_655 * _649) + _659;
      if (_colorGradingParams.w > 0.0f) {
        _667 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _684 = (((max(0.0f, (1.0f - _660)) - _660) * _667) + _660);
        _685 = (((max(0.0f, (1.0f - _661)) - _661) * _667) + _661);
        _686 = (((max(0.0f, (1.0f - _662)) - _662) * _667) + _662);
      } else {
        _684 = _660;
        _685 = _661;
        _686 = _662;
      }
      _692 = _userImageAdjust.y + 1.0f;
      _696 = _userImageAdjust.x + 0.5f;
      _697 = ((_684 + -0.5f) * _692) + _696;
      _698 = ((_685 + -0.5f) * _692) + _696;
      _699 = ((_686 + -0.5f) * _692) + _696;
      _729 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _740 = exp2(log2(saturate(mad(_colorBlind0.z, _699, mad(_colorBlind0.y, _698, (_colorBlind0.x * _697))))) * _729);
      _741 = exp2(log2(saturate(mad(_colorBlind1.z, _699, mad(_colorBlind1.y, _698, (_colorBlind1.x * _697))))) * _729);
      _742 = exp2(log2(saturate(mad(_colorBlind2.z, _699, mad(_colorBlind2.y, _698, (_colorBlind2.x * _697))))) * _729);
    } else {
      _740 = _647;
      _741 = _648;
      _742 = _649;
    }
  } else {
    _740 = _368;
    _741 = _369;
    _742 = _370;
  }
  if (_etcParams.y > 1.0f) {
    _751 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _752 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _756 = saturate(1.0f - (dot(float2(_751, _752), float2(_751, _752)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _761 = (_756 * _740);
    _762 = (_756 * _741);
    _763 = (_756 * _742);
  } else {
    _761 = _740;
    _762 = _741;
    _763 = _742;
  }
  if (_387 && (_etcParams.z > 0.0f)) {
    _793 = select((_761 <= 0.0031308f), (_761 * 12.92f), (((pow(_761, 0.41666666f)) * 1.055f) + -0.055f));
    _794 = select((_762 <= 0.0031308f), (_762 * 12.92f), (((pow(_762, 0.41666666f)) * 1.055f) + -0.055f));
    _795 = select((_763 <= 0.0031308f), (_763 * 12.92f), (((pow(_763, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _793 = _761;
    _794 = _762;
    _795 = _763;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _800 = (float)((uint)((uint)(_371)));
    if (!(_800 < _viewDir.w)) {
      if (!(_800 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _809 = _793;
        _810 = _794;
        _811 = _795;
      } else {
        _809 = 0.0f;
        _810 = 0.0f;
        _811 = 0.0f;
      }
    } else {
      _809 = 0.0f;
      _810 = 0.0f;
      _811 = 0.0f;
    }
  } else {
    _809 = _793;
    _810 = _794;
    _811 = _795;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_809, _810, _811), _sunDirection.y, _moonDirection.y);
    _809 = _rndx_final_color.x;
    _810 = _rndx_final_color.y;
    _811 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _809;
  SV_Target.y = _810;
  SV_Target.z = _811;
  SV_Target.w = _384;
  return SV_Target;
}
