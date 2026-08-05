struct PostProcessHousing_CDStruct {
  float _housingPreviewRatio;
  uint _housingValidColor;
  uint _housingInvalidColor;
};

struct BindlessParameters_PostProcessHousing_CD {
  PostProcessHousing_CDStruct BindlessParameters_PostProcessHousing_CD;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

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

typedef BindlessParameters_PostProcessHousing_CD BindlessParameters_PostProcessHousing_CD_t;
ConstantBuffer<BindlessParameters_PostProcessHousing_CD_t> BindlessParameters_PostProcessHousing_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _23;
  float _29;
  float _32;
  float _35;
  float _44;
  float _53;
  float _62;
  uint2 _64;
  uint _79;
  float _84;
  float _89;
  float _91;
  float _92;
  float _93;
  float _104;
  float _105;
  float _144;
  float _276;
  float _479;
  float _480;
  float _481;
  float _574;
  float _575;
  float _576;
  float _630;
  float _631;
  float _632;
  float _651;
  float _652;
  float _653;
  float _683;
  float _684;
  float _685;
  float _699;
  float _700;
  float _701;
  float _107;
  float _108;
  float _109;
  float _110;
  float _112;
  int _120;
  float _128;
  int _147;
  int _155;
  float _158;
  float _161;
  float _163;
  float _172;
  float _181;
  float _190;
  int _193;
  int _201;
  float _204;
  float _207;
  float _209;
  float _212;
  float _230;
  float _246;
  float _262;
  uint _263;
  bool _279;
  float _283;
  float _302;
  float _318;
  float _334;
  float _335;
  float _339;
  float _342;
  float _345;
  float _352;
  float _359;
  float _366;
  float _367;
  float _368;
  float _369;
  float _370;
  float _371;
  float _372;
  float _388;
  float _404;
  float _420;
  float _421;
  float _422;
  float _423;
  float _424;
  float _441;
  float _442;
  float _443;
  float _444;
  float _447;
  float _450;
  float _454;
  float _458;
  float _462;
  float _482;
  float _494;
  float _506;
  float _518;
  float _525;
  float _532;
  float _539;
  float _545;
  float _546;
  float _548;
  float _550;
  float _552;
  float _557;
  float _578;
  float _580;
  float _583;
  float _586;
  float _589;
  float _595;
  float _637;
  float _640;
  float _646;
  float _688;
  float _705;
  float _709;
  float _713;
  _23 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _29 = (pow(_23.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _32 = (pow(_23.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _35 = (pow(_23.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _44 = exp2(log2(max(0.0f, (_29 + -0.8359375f)) / (18.851562f - (_29 * 18.6875f))) * 6.277395f) * 10000.0f;
  _53 = exp2(log2(max(0.0f, (_32 + -0.8359375f)) / (18.851562f - (_32 * 18.6875f))) * 6.277395f) * 10000.0f;
  _62 = exp2(log2(max(0.0f, (_35 + -0.8359375f)) / (18.851562f - (_35 * 18.6875f))) * 6.277395f) * 10000.0f;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_64.x, _64.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _79 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_64.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_64.y))))))) + 0.5f) * TEXCOORD.y)), 0));
  _84 = (((float)((uint)((uint)((uint)((uint)(_79.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _89 = (((float)((uint)((uint)(((uint)((uint)(_79.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _91 = 1.0f - abs(_84);
  _92 = abs(_89);
  _93 = _91 - _92;
  if (!(_93 >= 0.0f)) {
    _104 = (select((_89 >= 0.0f), 1.0f, -1.0f) * _91);
    _105 = (select((_84 >= 0.0f), 1.0f, -1.0f) * (1.0f - _92));
  } else {
    _104 = _89;
    _105 = _84;
  }
  _107 = rsqrt(dot(float3(_105, _104, _93), float3(_105, _104, _93)));  // [sem: invLength]
  _108 = _107 * _105;
  _109 = _107 * _104;
  _110 = _107 * _93;
  _112 = rsqrt(dot(float3(_108, _109, _110), float3(_108, _109, _110)));  // [sem: invLength]
  if ((_79.x & 255) == _renderPassHousing) {
    _120 = WaveReadLaneFirst(_materialIndex);
    _128 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_120 < (uint)170000), _120, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
    _144 = ((1.0f - abs(dot(float3((_112 * _108), (_112 * _109), (_112 * _110)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))))) * _128);
  } else {
    _144 = 0.0f;
  }
  _147 = WaveReadLaneFirst(_materialIndex);
  _155 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_147 < (uint)170000), _147, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingValidColor);
  _158 = (float)((uint)((uint)(((uint)((uint)(_155)) >> 16) & 255)));
  _161 = (float)((uint)((uint)(((uint)((uint)(_155)) >> 8) & 255)));
  _163 = (float)((uint)((uint)(_155 & 255)));
  _172 = select(((_158 * 0.003921569f) < 0.04045f), (_158 * 0.000303527f), exp2(log2((_158 * 0.003717127f) + 0.052132703f) * 2.4f));
  _181 = select(((_161 * 0.003921569f) < 0.04045f), (_161 * 0.000303527f), exp2(log2((_161 * 0.003717127f) + 0.052132703f) * 2.4f));
  _190 = select(((_163 * 0.003921569f) < 0.04045f), (_163 * 0.000303527f), exp2(log2((_163 * 0.003717127f) + 0.052132703f) * 2.4f));
  _193 = WaveReadLaneFirst(_materialIndex);
  _201 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_193 < (uint)170000), _193, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingInvalidColor);
  _204 = (float)((uint)((uint)(((uint)((uint)(_201)) >> 16) & 255)));
  _207 = (float)((uint)((uint)(((uint)((uint)(_201)) >> 8) & 255)));
  _209 = (float)((uint)((uint)(_201 & 255)));
  _212 = max(0.001f, _exposure0.x);
  _230 = ((((((select(((_204 * 0.003921569f) < 0.04045f), (_204 * 0.000303527f), exp2(log2((_204 * 0.003717127f) + 0.052132703f) * 2.4f)) - _172) * _housingPreviewState) + _172) / _212) - _44) * _144) + _44;
  _246 = ((((((select(((_207 * 0.003921569f) < 0.04045f), (_207 * 0.000303527f), exp2(log2((_207 * 0.003717127f) + 0.052132703f) * 2.4f)) - _181) * _housingPreviewState) + _181) / _212) - _53) * _144) + _53;
  _262 = ((((((select(((_209 * 0.003921569f) < 0.04045f), (_209 * 0.000303527f), exp2(log2((_209 * 0.003717127f) + 0.052132703f) * 2.4f)) - _190) * _housingPreviewState) + _190) / _212) - _62) * _144) + _62;
  _263 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _276 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _263, 0)))).x) & 127)))) + 0.5f);
  } else {
    _276 = 1.0f;
  }
  _279 = (_localToneMappingParams.w > 0.0f);
  if (_279) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_230, _246, _262));
    _525 = _rndx_tonemapped_color.x;
    _532 = _rndx_tonemapped_color.y;
    _539 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _545 = 1.0f - abs(_etcParams.w);
      _546 = saturate(_etcParams.w);  // [sem: expr_sat]
      _548 = (_545 * _525) + _546;
      _550 = (_545 * _532) + _546;
      _552 = (_545 * _539) + _546;
      if (_colorGradingParams.w > 0.0f) {
        _557 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _574 = (((max(0.0f, (1.0f - _548)) - _548) * _557) + _548);
        _575 = (((max(0.0f, (1.0f - _550)) - _550) * _557) + _550);
        _576 = (((max(0.0f, (1.0f - _552)) - _552) * _557) + _552);
      } else {
        _574 = _548;
        _575 = _550;
        _576 = _552;
      }
      _578 = _userImageAdjust.y + 1.0f;
      _580 = _userImageAdjust.x + 0.5f;
      _583 = ((_574 + -0.5f) * _578) + _580;
      _586 = ((_575 + -0.5f) * _578) + _580;
      _589 = ((_576 + -0.5f) * _578) + _580;
      _595 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _630 = exp2(log2(saturate(mad(_colorBlind0.z, _589, mad(_colorBlind0.y, _586, (_colorBlind0.x * _583))))) * _595);
      _631 = exp2(log2(saturate(mad(_colorBlind1.z, _589, mad(_colorBlind1.y, _586, (_colorBlind1.x * _583))))) * _595);
      _632 = exp2(log2(saturate(mad(_colorBlind2.z, _589, mad(_colorBlind2.y, _586, (_colorBlind2.x * _583))))) * _595);
    } else {
      _630 = _525;
      _631 = _532;
      _632 = _539;
    }
  } else {
    _630 = _230;
    _631 = _246;
    _632 = _262;
  }
  if (_etcParams.y > 1.0f) {
    _637 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _640 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _646 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_637, _640), float2(_637, _640))));  // [sem: expr_sat]
    _651 = (_646 * _630);
    _652 = (_646 * _631);
    _653 = (_646 * _632);
  } else {
    _651 = _630;
    _652 = _631;
    _653 = _632;
  }
  if (_279 && (_etcParams.z > 0.0f)) {
    _683 = select((_651 <= 0.0031308f), (_651 * 12.92f), (((pow(_651, 0.41666666f)) * 1.055f) + -0.055f));
    _684 = select((_652 <= 0.0031308f), (_652 * 12.92f), (((pow(_652, 0.41666666f)) * 1.055f) + -0.055f));
    _685 = select((_653 <= 0.0031308f), (_653 * 12.92f), (((pow(_653, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _683 = _651;
    _684 = _652;
    _685 = _653;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _688 = (float)((uint)((uint)(_263)));
    if (!(_688 < _viewDir.w)) {
      if (!(!(_688 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _699 = 0.0f;
        _700 = 0.0f;
        _701 = 0.0f;
      } else {
        _699 = _683;
        _700 = _684;
        _701 = _685;
      }
    } else {
      _699 = 0.0f;
      _700 = 0.0f;
      _701 = 0.0f;
    }
  } else {
    _699 = _683;
    _700 = _684;
    _701 = _685;
  }
  _705 = exp2(log2(_699 * 0.0001f) * 0.15930176f);
  _709 = exp2(log2(_700 * 0.0001f) * 0.15930176f);
  _713 = exp2(log2(_701 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_705 * 18.6875f) + 1.0f)) * ((_705 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_709 * 18.6875f) + 1.0f)) * ((_709 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_713 * 18.6875f) + 1.0f)) * ((_713 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _276;
  return SV_Target;
}
