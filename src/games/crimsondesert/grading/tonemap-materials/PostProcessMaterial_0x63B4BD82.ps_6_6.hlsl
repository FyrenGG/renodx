struct PostProcessAbyssCommon_CDStruct {
  float _fogDepth;
  float _chromaticShiftValue;
  uint _noiseTex;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

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

struct BindlessParameters_PostProcessAbyssCommon_CD {
  PostProcessAbyssCommon_CDStruct BindlessParameters_PostProcessAbyssCommon_CD;
};

typedef BindlessParameters_PostProcessAbyssCommon_CD BindlessParameters_PostProcessAbyssCommon_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssCommon_CD_t> BindlessParameters_PostProcessAbyssCommon_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _26;
  float _29;
  float _30;
  float _31;
  float _32;
  float _68;
  int _72;
  float _80;
  float _87;
  float _88;
  float _89;
  float _91;
  float _92;
  float _93;
  float _94;
  int _95;
  int _103;
  float4 _110;
  int _117;
  int _125;
  float4 _132;
  int _141;
  int _149;
  float4 _156;
  float _159;
  float _160;
  int _165;
  int _173;
  float4 _180;
  int _189;
  int _197;
  float4 _204;
  float _210;
  float _212;
  float _217;
  float _218;
  float _223;
  float _224;
  float _226;
  int _233;
  int _241;
  float4 _248;
  float _257;
  float _258;
  int _266;
  float _274;
  float _277;
  float _279;
  float _280;
  float _281;
  float _285;
  float _287;
  float _306;
  float _320;
  float _334;
  float _347;
  float _348;
  float _349;
  float _350;
  float _351;
  float _364;
  float _365;
  float _366;
  uint _367;
  float _381;
  float _584;
  float _585;
  float _586;
  float _679;
  float _680;
  float _681;
  float _735;
  float _736;
  float _737;
  float _753;
  float _754;
  float _755;
  float _785;
  float _786;
  float _787;
  float _801;
  float _802;
  float _803;
  bool _384;
  float _388;
  float _437;
  float _438;
  float _439;
  float _441;
  float _448;
  float _449;
  float _450;
  float _469;
  float _470;
  float _471;
  float _472;
  float _473;
  float _474;
  float _475;
  float _476;
  float _477;
  float _523;
  float _524;
  float _525;
  float _526;
  float _527;
  float _528;
  float _529;
  float _546;
  float _547;
  float _548;
  float _549;
  float _555;
  float _558;
  float _565;
  float _566;
  float _567;
  float _596;
  float _621;
  float _622;
  float _623;
  float _642;
  float _643;
  float _644;
  float _650;
  float _654;
  float _655;
  float _656;
  float _657;
  float _662;
  float _687;
  float _691;
  float _692;
  float _693;
  float _694;
  float _724;
  float _743;
  float _744;
  float _748;
  float _792;
  float _813;
  float _814;
  float _815;
  _26 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  _29 = (TEXCOORD.x * 2.0f) + -1.0f;
  _30 = TEXCOORD.y * 2.0f;
  _31 = 1.0f - _30;
  _32 = max(1e-07f, _26.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _68 = mad((_invViewProjRelative[3].z), _32, mad((_invViewProjRelative[3].y), _31, ((_invViewProjRelative[3].x) * _29))) + (_invViewProjRelative[3].w);
  _72 = WaveReadLaneFirst(_materialIndex);
  _80 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_72 < (uint)170000), _72, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._fogDepth);
  _87 = -0.0f - ((mad((_invViewProjRelative[0].z), _32, mad((_invViewProjRelative[0].y), _31, ((_invViewProjRelative[0].x) * _29))) + (_invViewProjRelative[0].w)) / _68);
  _88 = -0.0f - ((mad((_invViewProjRelative[1].z), _32, mad((_invViewProjRelative[1].y), _31, ((_invViewProjRelative[1].x) * _29))) + (_invViewProjRelative[1].w)) / _68);
  _89 = -0.0f - ((mad((_invViewProjRelative[2].z), _32, mad((_invViewProjRelative[2].y), _31, ((_invViewProjRelative[2].x) * _29))) + (_invViewProjRelative[2].w)) / _68);
  _91 = rsqrt(dot(float3(_87, _88, _89), float3(_87, _88, _89)));  // [sem: invLength]
  _92 = _91 * _87;
  _93 = _91 * _88;
  _94 = _91 * _89;
  _95 = WaveReadLaneFirst(_materialIndex);
  _103 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_95 < (uint)170000), _95, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _110 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_103 < (uint)65000), _103, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_94, _92));
  _117 = WaveReadLaneFirst(_materialIndex);
  _125 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_117 < (uint)170000), _117, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _132 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_125 < (uint)65000), _125, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_94, ((_time.x * 0.05f) + _93)));
  _141 = WaveReadLaneFirst(_materialIndex);
  _149 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_141 < (uint)170000), _141, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _156 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_149 < (uint)65000), _149, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_94 * 2.0f), ((_93 - (_time.x * 0.1f)) * 2.0f)));
  _159 = _156.x + _132.x;
  _160 = _156.y + _132.y;
  _165 = WaveReadLaneFirst(_materialIndex);
  _173 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_165 < (uint)170000), _165, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _180 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_173 < (uint)65000), _173, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.13f) + _93), _92));
  _189 = WaveReadLaneFirst(_materialIndex);
  _197 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_189 < (uint)170000), _189, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _204 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_197 < (uint)65000), _197, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_time.x * 0.1f) + _93) * 2.0f), (_92 * 2.0f)));
  _210 = abs(dot(float3(_92, _93, _94), float3(0.0f, 1.0f, 0.0f)));
  _212 = abs(dot(float3(_92, _93, _94), float3(0.0f, 0.0f, 1.0f)));
  _217 = (_210 * (_110.x - _159)) + _159;
  _218 = (_210 * (_110.y - _160)) + _160;
  _223 = (((_204.x + _180.x) - _217) * _212) + _217;
  _224 = (((_204.y + _180.y) - _218) * _212) + _218;
  _226 = saturate(_26.x * 35.0f);  // [sem: expr_sat]
  _233 = WaveReadLaneFirst(_materialIndex);
  _241 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_233 < (uint)170000), _233, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _248 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_241 < (uint)65000), _241, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x - (_time.x * 0.01f)), ((_time.x * 0.1f) + TEXCOORD.y)));
  _257 = TEXCOORD.x + -0.5f;
  _258 = TEXCOORD.y + -0.5f;
  _266 = WaveReadLaneFirst(_materialIndex);
  _274 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_266 < (uint)170000), _266, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._chromaticShiftValue);
  _277 = ((sqrt((_258 * _258) + (_257 * _257)) * 0.01f) * ((float)((uint)((uint)(_enableChromaticAberration))))) * _274;
  _279 = rsqrt(dot(float2(_257, _258), float2(_257, _258)));  // [sem: invLength]
  _280 = _279 * _257;
  _281 = _279 * _258;
  _285 = ((lerp(_223, _248.x, _226)) * 4.0f) + -1.9921569f;
  _287 = ((lerp(_224, _248.y, _226)) * 4.0f) + -1.9921569f;
  _306 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(((TEXCOORD.x - (_277 * _285)) - (_280 * _277)), ((TEXCOORD.y - (_277 * _287)) - (_281 * _277)))))).x) * 0.012683313f);
  _320 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y)))).y) * 0.012683313f);
  _334 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((((_280 + _285) * _277) + TEXCOORD.x), (((_281 + _287) * _277) + TEXCOORD.y))))).z) * 0.012683313f);
  _347 = 1.0f / max(0.001f, _exposure0.x);
  _348 = _347 * (1.0f - saturate((pow(_26.x, _80)) * 4.0f));
  _349 = _348 * 0.080000006f;
  _350 = _348 * 0.089999996f;
  _351 = _348 * 0.11000001f;
  _364 = ((saturate(_349) * 0.06f) * ((exp2(log2(max(0.0f, (_306 + -0.8359375f)) / (18.851562f - (_306 * 18.6875f))) * 6.277395f) * 10000.0f) - _349)) + _349;
  _365 = ((saturate(_350) * 0.06f) * ((exp2(log2(max(0.0f, (_320 + -0.8359375f)) / (18.851562f - (_320 * 18.6875f))) * 6.277395f) * 10000.0f) - _350)) + _350;
  _366 = ((((exp2(log2(max(0.0f, (_334 + -0.8359375f)) / (18.851562f - (_334 * 18.6875f))) * 6.277395f) * 10000.0f) - _351) * 0.06f) * saturate(_351)) + _351;
  _367 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _381 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _367, 0)))).x) & 127)))) + 0.5f);
  } else {
    _381 = _347;
  }
  _384 = (_localToneMappingParams.w > 0.0f);
  if (_384) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_364, _365, _366));
    _642 = _rndx_tonemapped_color.x;
    _643 = _rndx_tonemapped_color.y;
    _644 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _650 = 1.0f - abs(_etcParams.w);
      _654 = saturate(_etcParams.w);  // [sem: expr_sat]
      _655 = (_650 * _642) + _654;
      _656 = (_650 * _643) + _654;
      _657 = (_650 * _644) + _654;
      if (_colorGradingParams.w > 0.0f) {
        _662 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _679 = (((max(0.0f, (1.0f - _655)) - _655) * _662) + _655);
        _680 = (((max(0.0f, (1.0f - _656)) - _656) * _662) + _656);
        _681 = (((max(0.0f, (1.0f - _657)) - _657) * _662) + _657);
      } else {
        _679 = _655;
        _680 = _656;
        _681 = _657;
      }
      _687 = _userImageAdjust.y + 1.0f;
      _691 = _userImageAdjust.x + 0.5f;
      _692 = ((_679 + -0.5f) * _687) + _691;
      _693 = ((_680 + -0.5f) * _687) + _691;
      _694 = ((_681 + -0.5f) * _687) + _691;
      _724 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _735 = exp2(log2(saturate(mad(_colorBlind0.z, _694, mad(_colorBlind0.y, _693, (_colorBlind0.x * _692))))) * _724);
      _736 = exp2(log2(saturate(mad(_colorBlind1.z, _694, mad(_colorBlind1.y, _693, (_colorBlind1.x * _692))))) * _724);
      _737 = exp2(log2(saturate(mad(_colorBlind2.z, _694, mad(_colorBlind2.y, _693, (_colorBlind2.x * _692))))) * _724);
    } else {
      _735 = _642;
      _736 = _643;
      _737 = _644;
    }
  } else {
    _735 = _364;
    _736 = _365;
    _737 = _366;
  }
  if (_etcParams.y > 1.0f) {
    _743 = abs(_29);
    _744 = abs(_30 + -1.0f);
    _748 = saturate(1.0f - (dot(float2(_743, _744), float2(_743, _744)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _753 = (_748 * _735);
    _754 = (_748 * _736);
    _755 = (_748 * _737);
  } else {
    _753 = _735;
    _754 = _736;
    _755 = _737;
  }
  if (_384 && (_etcParams.z > 0.0f)) {
    _785 = select((_753 <= 0.0031308f), (_753 * 12.92f), (((pow(_753, 0.41666666f)) * 1.055f) + -0.055f));
    _786 = select((_754 <= 0.0031308f), (_754 * 12.92f), (((pow(_754, 0.41666666f)) * 1.055f) + -0.055f));
    _787 = select((_755 <= 0.0031308f), (_755 * 12.92f), (((pow(_755, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _785 = _753;
    _786 = _754;
    _787 = _755;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _792 = (float)((uint)((uint)(_367)));
    if (!(_792 < _viewDir.w)) {
      if (!(_792 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _801 = _785;
        _802 = _786;
        _803 = _787;
      } else {
        _801 = 0.0f;
        _802 = 0.0f;
        _803 = 0.0f;
      }
    } else {
      _801 = 0.0f;
      _802 = 0.0f;
      _803 = 0.0f;
    }
  } else {
    _801 = _785;
    _802 = _786;
    _803 = _787;
  }
  _813 = exp2(log2(_801 * 0.0001f) * 0.15930176f);
  _814 = exp2(log2(_802 * 0.0001f) * 0.15930176f);
  _815 = exp2(log2(_803 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_813 * 18.6875f) + 1.0f)) * ((_813 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_814 * 18.6875f) + 1.0f)) * ((_814 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_815 * 18.6875f) + 1.0f)) * ((_815 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _381;
  return SV_Target;
}
