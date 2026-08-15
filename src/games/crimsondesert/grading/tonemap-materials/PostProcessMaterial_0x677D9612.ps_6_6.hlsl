struct PostProcessEdgeBlur_CDStruct {
  float _edgeBlurRatio;
  float _edgeBlurShiftValue;
  float _edgeBlurBrightness;
  float _fishEyeMaxPower;
  uint _edgeBlurNoiseTex;
  float _edgeBlurNoiseIntensity;
  float _edgeBlurNoiseOffset;
  float2 _edgeBlurNoiseScale;
  float2 _edgeBlurNoiseSpeed;
  float _edgeBlurNoiseDissolve;
  float _useTargetFocusDir;
  float3 _targetFocusPositionOffset;
  uint _debugMode;
  float _targetFocusCenterMask;
  float _targetFocusCenterMaskEdgeThickness;
  float _targetFocusCenterMaskPower;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

struct BindlessParameters_PostProcessEdgeBlur_CD {
  PostProcessEdgeBlur_CDStruct BindlessParameters_PostProcessEdgeBlur_CD;
};

typedef BindlessParameters_PostProcessEdgeBlur_CD BindlessParameters_PostProcessEdgeBlur_CD_t;
ConstantBuffer<BindlessParameters_PostProcessEdgeBlur_CD_t> BindlessParameters_PostProcessEdgeBlur_CD[] : register(b0, space100);

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
  int _34;
  float _43;
  float _44;
  int _48;
  float _56;
  float _206;
  float _207;
  float _725;
  float _726;
  float _727;
  float _728;
  float _742;
  float _947;
  float _948;
  float _949;
  float _1042;
  float _1043;
  float _1044;
  float _1098;
  float _1099;
  float _1100;
  float _1119;
  float _1120;
  float _1121;
  float _1151;
  float _1152;
  float _1153;
  float _1167;
  float _1168;
  float _1169;
  int _63;
  float _73;
  float _74;
  float _75;
  float _83;
  float _84;
  float _85;
  float _87;
  float _88;
  float _90;
  float _92;
  float _95;
  float _131;
  float _132;
  float _133;
  float _134;
  float _136;
  float _137;
  float _138;
  float _139;
  float _140;
  float _142;
  float _143;
  float _144;
  float _145;
  float _146;
  float _147;
  float _148;
  float _149;
  float _158;
  float _162;
  float _166;
  float _168;
  float _169;
  float _171;
  float _173;
  bool _176;
  bool _177;
  bool _178;
  bool _179;
  int _192;
  float _201;
  float _202;
  int _210;
  float _219;
  float _220;
  int _225;
  int _233;
  float4 _240;
  int _245;
  float _253;
  float _254;
  int _257;
  float _265;
  int _266;
  float _274;
  float _279;
  float _280;
  uint2 _284;
  float4 _325;
  float4 _339;
  float _344;
  float _345;
  float4 _347;
  float4 _353;
  float _358;
  float4 _360;
  float4 _366;
  float4 _404;
  float _409;
  float _410;
  float4 _412;
  float4 _418;
  float _423;
  float4 _425;
  float4 _431;
  float4 _469;
  float _474;
  float _475;
  float4 _477;
  float4 _483;
  float _488;
  float4 _490;
  float4 _496;
  float4 _534;
  float _539;
  float _540;
  float4 _542;
  float4 _548;
  float _553;
  float4 _555;
  float4 _561;
  float4 _599;
  float _604;
  float _605;
  float4 _607;
  float4 _613;
  float _618;
  float4 _620;
  float4 _626;
  float4 _664;
  float _669;
  float _670;
  float4 _672;
  float4 _678;
  float _683;
  float4 _685;
  float4 _691;
  uint _729;
  bool _745;
  float _751;
  float _800;
  float _801;
  float _802;
  float _804;
  float _811;
  float _812;
  float _813;
  float _832;
  float _833;
  float _834;
  float _835;
  float _836;
  float _837;
  float _838;
  float _839;
  float _840;
  float _886;
  float _887;
  float _888;
  float _889;
  float _890;
  float _891;
  float _892;
  float _909;
  float _910;
  float _911;
  float _912;
  float _918;
  float _921;
  float _928;
  float _929;
  float _930;
  float _959;
  float _984;
  float _985;
  float _986;
  float _1005;
  float _1006;
  float _1007;
  float _1013;
  float _1017;
  float _1018;
  float _1019;
  float _1020;
  float _1025;
  float _1050;
  float _1054;
  float _1055;
  float _1056;
  float _1057;
  float _1087;
  float _1109;
  float _1110;
  float _1114;
  float _1158;
  _34 = WaveReadLaneFirst(_materialIndex);
  _43 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_34 < (uint)170000), _34, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.x);
  _44 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_34 < (uint)170000), _34, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.y);
  _48 = WaveReadLaneFirst(_materialIndex);
  _56 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_48 < (uint)170000), _48, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._useTargetFocusDir);
  if (_56 > 0.001f) {
    _63 = WaveReadLaneFirst(_materialIndex);
    _73 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_63 < (uint)170000), _63, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.x);
    _74 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_63 < (uint)170000), _63, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.y);
    _75 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_63 < (uint)170000), _63, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._targetFocusPositionOffset.z);
    _83 = (_73 + _targetFocusPosition.x) - _viewPos.x;
    _84 = (_74 + _targetFocusPosition.y) - _viewPos.y;
    _85 = (_75 + _targetFocusPosition.z) - _viewPos.z;
    _87 = rsqrt(dot(float3(_83, _84, _85), float3(_83, _84, _85)));  // [sem: invLength]
    _88 = _83 * _87;
    _90 = _85 * _87;
    _92 = (TEXCOORD.x * 2.0f) + -1.0f;
    _95 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
    _131 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[3].z)) + mad((_invViewProjRelative[3].y), _95, ((_invViewProjRelative[3].x) * _92));
    _132 = ((mad((_invViewProjRelative[0].y), _95, ((_invViewProjRelative[0].x) * _92)) + (_invViewProjRelative[0].z)) + (_invViewProjRelative[0].w)) / _131;
    _133 = (((_invViewProjRelative[1].w) + (_invViewProjRelative[1].z)) + mad((_invViewProjRelative[1].y), _95, ((_invViewProjRelative[1].x) * _92))) / _131;
    _134 = (((_invViewProjRelative[2].w) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[2].y), _95, ((_invViewProjRelative[2].x) * _92))) / _131;
    _136 = rsqrt(dot(float3(_132, _133, _134), float3(_132, _133, _134)));  // [sem: invLength]
    _137 = _136 * _132;
    _138 = _136 * _133;
    _139 = _136 * _134;
    _140 = -0.0f - _88;
    _142 = acos(dot(float3(0.0f, 1.0f, 0.0f), float3(_88, (_84 * _87), _90)));
    _143 = sin(_142);
    _144 = cos(_142);
    _145 = 1.0f - _144;
    _146 = _145 * _90;
    _147 = _145 * _140;
    _148 = _143 * _90;
    _149 = _143 * _140;
    _158 = mad((_147 * _90), _139, mad(_149, _138, (((_146 * _90) + _144) * _137)));
    _162 = mad(_148, _139, mad(_144, _138, (-0.0f - (_137 * _149))));
    _166 = mad(((_147 * _140) + _144), _139, mad((-0.0f - _148), _138, ((_137 * _140) * _146)));
    _168 = rsqrt(dot(float3(_158, _162, _166), float3(_158, _162, _166)));  // [sem: invLength]
    _169 = _168 * _158;
    _171 = _168 * _166;
    _173 = atan(_171 / _169);
    _176 = (_169 < 0.0f);
    _177 = (_169 == 0.0f);
    _178 = (_171 >= 0.0f);
    _179 = (_171 < 0.0f);
    _192 = WaveReadLaneFirst(_materialIndex);
    _201 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_192 < (uint)170000), _192, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.x);
    _202 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_192 < (uint)170000), _192, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseScale.y);
    _206 = (select((_177 && _178), 0.75f, select((_177 && _179), 0.25f, ((select((_176 && _179), (_173 + -3.1415927f), select((_176 && _178), (_173 + 3.1415927f), _173)) * 0.15915494f) + 0.5f))) * _201);
    _207 = ((acos(_168 * _162) * 0.31830987f) * _202);
  } else {
    _206 = (((_screenSizeAndInvSize.x / _screenSizeAndInvSize.y) * TEXCOORD.x) * _43);
    _207 = (_44 * TEXCOORD.y);
  }
  _210 = WaveReadLaneFirst(_materialIndex);
  _219 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_210 < (uint)170000), _210, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseSpeed.x);
  _220 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_210 < (uint)170000), _210, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseSpeed.y);
  _225 = WaveReadLaneFirst(_materialIndex);
  _233 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_225 < (uint)170000), _225, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseTex);
  _240 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_233 < (uint)65000), _233, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_219 * _time.x) + _206), ((_220 * _time.x) + _207)));
  _245 = WaveReadLaneFirst(_materialIndex);
  _253 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_245 < (uint)170000), _245, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseOffset);
  _254 = _253 + -0.99607843f;
  _257 = WaveReadLaneFirst(_materialIndex);
  _265 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_257 < (uint)170000), _257, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurShiftValue);
  _266 = WaveReadLaneFirst(_materialIndex);
  _274 = WaveReadLaneFirst(BindlessParameters_PostProcessEdgeBlur_CD[((int)((uint)((uint)(select(((uint)_266 < (uint)170000), _266, 0))) + (uint)(0)))].BindlessParameters_PostProcessEdgeBlur_CD._edgeBlurNoiseIntensity);
  _279 = ((_274 * (_254 + (_240.x * 2.0f))) + 1.0f) * _265;
  _280 = ((_274 * (_254 + (_240.y * 2.0f))) + 1.0f) * _265;
  if (_passIndex == 0) {
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_284.x, _284.y);
    _325 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _725 = _325.x;
    _726 = _325.y;
    _727 = _325.z;
    _728 = select(((((_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x))) - (_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x)))) < 0.1f) && (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_284.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_284.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255) == _renderPassTargetFocus)), 1.0f, 0.0f);
  } else {
    if (_passIndex == 1) {
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _339 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _344 = _279 * _screenSizeAndInvSize.z;
      _345 = _344 * 1.3846154f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _347 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_345 + TEXCOORD.x), TEXCOORD.y));
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _353 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _345), TEXCOORD.y));
      _358 = _344 * 3.2307692f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _360 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_358 + TEXCOORD.x), TEXCOORD.y));
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _366 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _358), TEXCOORD.y));
      _725 = ((((_353.x + _347.x) * 0.31621623f) + (_339.x * 0.22702703f)) + ((_366.x + _360.x) * 0.07027027f));
      _726 = ((((_353.y + _347.y) * 0.31621623f) + (_339.y * 0.22702703f)) + ((_366.y + _360.y) * 0.07027027f));
      _727 = ((((_353.z + _347.z) * 0.31621623f) + (_339.z * 0.22702703f)) + ((_366.z + _360.z) * 0.07027027f));
      _728 = ((((_353.w + _347.w) * 0.31621623f) + (_339.w * 0.22702703f)) + ((_366.w + _360.w) * 0.07027027f));
    } else {
      if (_passIndex == 2) {
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _404 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
        _409 = _280 * _screenSizeAndInvSize.w;
        _410 = _409 * 1.3846154f;
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _412 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_410 + TEXCOORD.y)));
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _418 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _410)));
        _423 = _409 * 3.2307692f;
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _425 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_423 + TEXCOORD.y)));
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _431 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _423)));
        _725 = ((((_418.x + _412.x) * 0.31621623f) + (_404.x * 0.22702703f)) + ((_431.x + _425.x) * 0.07027027f));
        _726 = ((((_418.y + _412.y) * 0.31621623f) + (_404.y * 0.22702703f)) + ((_431.y + _425.y) * 0.07027027f));
        _727 = ((((_418.z + _412.z) * 0.31621623f) + (_404.z * 0.22702703f)) + ((_431.z + _425.z) * 0.07027027f));
        _728 = ((((_418.w + _412.w) * 0.31621623f) + (_404.w * 0.22702703f)) + ((_431.w + _425.w) * 0.07027027f));
      } else {
        if (_passIndex == 3) {
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _469 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
          _474 = _279 * _screenSizeAndInvSize.z;
          _475 = _474 * 2.7692308f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _477 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_475 + TEXCOORD.x), TEXCOORD.y));
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _483 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _475), TEXCOORD.y));
          _488 = _474 * 6.4615383f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _490 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_488 + TEXCOORD.x), TEXCOORD.y));
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _496 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _488), TEXCOORD.y));
          _725 = ((((_483.x + _477.x) * 0.31621623f) + (_469.x * 0.22702703f)) + ((_496.x + _490.x) * 0.07027027f));
          _726 = ((((_483.y + _477.y) * 0.31621623f) + (_469.y * 0.22702703f)) + ((_496.y + _490.y) * 0.07027027f));
          _727 = ((((_483.z + _477.z) * 0.31621623f) + (_469.z * 0.22702703f)) + ((_496.z + _490.z) * 0.07027027f));
          _728 = ((((_483.w + _477.w) * 0.31621623f) + (_469.w * 0.22702703f)) + ((_496.w + _490.w) * 0.07027027f));
        } else {
          if (_passIndex == 4) {
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _534 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
            _539 = _280 * _screenSizeAndInvSize.w;
            _540 = _539 * 2.7692308f;
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _542 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_540 + TEXCOORD.y)));
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _548 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _540)));
            _553 = _539 * 6.4615383f;
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _555 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_553 + TEXCOORD.y)));
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _561 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _553)));
            _725 = ((((_548.x + _542.x) * 0.31621623f) + (_534.x * 0.22702703f)) + ((_561.x + _555.x) * 0.07027027f));
            _726 = ((((_548.y + _542.y) * 0.31621623f) + (_534.y * 0.22702703f)) + ((_561.y + _555.y) * 0.07027027f));
            _727 = ((((_548.z + _542.z) * 0.31621623f) + (_534.z * 0.22702703f)) + ((_561.z + _555.z) * 0.07027027f));
            _728 = ((((_548.w + _542.w) * 0.31621623f) + (_534.w * 0.22702703f)) + ((_561.w + _555.w) * 0.07027027f));
          } else {
            if (_passIndex == 5) {
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _599 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
              _604 = _279 * _screenSizeAndInvSize.z;
              _605 = _604 * 5.5384617f;
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _607 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_605 + TEXCOORD.x), TEXCOORD.y));
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _613 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _605), TEXCOORD.y));
              _618 = _604 * 12.923077f;
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _620 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_618 + TEXCOORD.x), TEXCOORD.y));
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _626 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _618), TEXCOORD.y));
              _725 = ((((_613.x + _607.x) * 0.31621623f) + (_599.x * 0.22702703f)) + ((_626.x + _620.x) * 0.07027027f));
              _726 = ((((_613.y + _607.y) * 0.31621623f) + (_599.y * 0.22702703f)) + ((_626.y + _620.y) * 0.07027027f));
              _727 = ((((_613.z + _607.z) * 0.31621623f) + (_599.z * 0.22702703f)) + ((_626.z + _620.z) * 0.07027027f));
              _728 = ((((_613.w + _607.w) * 0.31621623f) + (_599.w * 0.22702703f)) + ((_626.w + _620.w) * 0.07027027f));
            } else {
              if (_passIndex == 6) {
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _664 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
                _669 = _280 * _screenSizeAndInvSize.w;
                _670 = _669 * 5.5384617f;
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _672 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_670 + TEXCOORD.y)));
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _678 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _670)));
                _683 = _669 * 12.923077f;
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _685 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_683 + TEXCOORD.y)));
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _691 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _683)));
                _725 = ((((_678.x + _672.x) * 0.31621623f) + (_664.x * 0.22702703f)) + ((_691.x + _685.x) * 0.07027027f));
                _726 = ((((_678.y + _672.y) * 0.31621623f) + (_664.y * 0.22702703f)) + ((_691.y + _685.y) * 0.07027027f));
                _727 = ((((_678.z + _672.z) * 0.31621623f) + (_664.z * 0.22702703f)) + ((_691.z + _685.z) * 0.07027027f));
                _728 = ((((_678.w + _672.w) * 0.31621623f) + (_664.w * 0.22702703f)) + ((_691.w + _685.w) * 0.07027027f));
              } else {
                _725 = 0.0f;
                _726 = 0.0f;
                _727 = 0.0f;
                _728 = 0.0f;
              }
            }
          }
        }
      }
    }
  }
  _729 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _742 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _729, 0)))).x) & 127)))) + 0.5f);
  } else {
    _742 = _728;
  }
  _745 = (_localToneMappingParams.w > 0.0f);
  if (_745) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_725, _726, _727));
    _1005 = _rndx_tonemapped_color.x;
    _1006 = _rndx_tonemapped_color.y;
    _1007 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1013 = 1.0f - abs(_etcParams.w);
      _1017 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1018 = (_1013 * _1005) + _1017;
      _1019 = (_1013 * _1006) + _1017;
      _1020 = (_1013 * _1007) + _1017;
      if (_colorGradingParams.w > 0.0f) {
        _1025 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1042 = (((max(0.0f, (1.0f - _1018)) - _1018) * _1025) + _1018);
        _1043 = (((max(0.0f, (1.0f - _1019)) - _1019) * _1025) + _1019);
        _1044 = (((max(0.0f, (1.0f - _1020)) - _1020) * _1025) + _1020);
      } else {
        _1042 = _1018;
        _1043 = _1019;
        _1044 = _1020;
      }
      _1050 = _userImageAdjust.y + 1.0f;
      _1054 = _userImageAdjust.x + 0.5f;
      _1055 = ((_1042 + -0.5f) * _1050) + _1054;
      _1056 = ((_1043 + -0.5f) * _1050) + _1054;
      _1057 = ((_1044 + -0.5f) * _1050) + _1054;
      _1087 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1098 = exp2(log2(saturate(mad(_colorBlind0.z, _1057, mad(_colorBlind0.y, _1056, (_colorBlind0.x * _1055))))) * _1087);
      _1099 = exp2(log2(saturate(mad(_colorBlind1.z, _1057, mad(_colorBlind1.y, _1056, (_colorBlind1.x * _1055))))) * _1087);
      _1100 = exp2(log2(saturate(mad(_colorBlind2.z, _1057, mad(_colorBlind2.y, _1056, (_colorBlind2.x * _1055))))) * _1087);
    } else {
      _1098 = _1005;
      _1099 = _1006;
      _1100 = _1007;
    }
  } else {
    _1098 = _725;
    _1099 = _726;
    _1100 = _727;
  }
  if (_etcParams.y > 1.0f) {
    _1109 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1110 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _1114 = saturate(1.0f - (dot(float2(_1109, _1110), float2(_1109, _1110)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _1119 = (_1114 * _1098);
    _1120 = (_1114 * _1099);
    _1121 = (_1114 * _1100);
  } else {
    _1119 = _1098;
    _1120 = _1099;
    _1121 = _1100;
  }
  if (_745 && (_etcParams.z > 0.0f)) {
    _1151 = select((_1119 <= 0.0031308f), (_1119 * 12.92f), (((pow(_1119, 0.41666666f)) * 1.055f) + -0.055f));
    _1152 = select((_1120 <= 0.0031308f), (_1120 * 12.92f), (((pow(_1120, 0.41666666f)) * 1.055f) + -0.055f));
    _1153 = select((_1121 <= 0.0031308f), (_1121 * 12.92f), (((pow(_1121, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1151 = _1119;
    _1152 = _1120;
    _1153 = _1121;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1158 = (float)((uint)((uint)(_729)));
    if (!(_1158 < _viewDir.w)) {
      if (!(_1158 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1167 = _1151;
        _1168 = _1152;
        _1169 = _1153;
      } else {
        _1167 = 0.0f;
        _1168 = 0.0f;
        _1169 = 0.0f;
      }
    } else {
      _1167 = 0.0f;
      _1168 = 0.0f;
      _1169 = 0.0f;
    }
  } else {
    _1167 = _1151;
    _1168 = _1152;
    _1169 = _1153;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_1167, _1168, _1169), _sunDirection.y, _moonDirection.y);
    _1167 = _rndx_final_color.x;
    _1168 = _rndx_final_color.y;
    _1169 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _1167;
  SV_Target.y = _1168;
  SV_Target.z = _1169;
  SV_Target.w = _742;
  return SV_Target;
}
