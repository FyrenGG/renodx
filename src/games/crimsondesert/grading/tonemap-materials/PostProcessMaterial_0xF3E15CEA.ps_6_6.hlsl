struct PostProcessInteraction_CDStruct {
  uint _lineTex;
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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

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

struct BindlessParameters_PostProcessInteraction_CD {
  PostProcessInteraction_CDStruct BindlessParameters_PostProcessInteraction_CD;
};

typedef BindlessParameters_PostProcessInteraction_CD BindlessParameters_PostProcessInteraction_CD_t;
ConstantBuffer<BindlessParameters_PostProcessInteraction_CD_t> BindlessParameters_PostProcessInteraction_CD[] : register(b0, space100);

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
  uint2 _28;
  int _45;
  float4 _48;
  float _58;
  float _59;
  float _60;
  float _82;
  float _83;
  float _84;
  float _85;
  float _86;
  float _87;
  float _139;
  float _140;
  float _560;
  float _561;
  float _562;
  float _576;
  float _781;
  float _782;
  float _783;
  float _876;
  float _877;
  float _878;
  float _932;
  float _933;
  float _934;
  float _953;
  float _954;
  float _955;
  float _985;
  float _986;
  float _987;
  float _1001;
  float _1002;
  float _1003;
  int _97;
  int _105;
  int _156;
  float4 _158;
  float _160;
  float _161;
  float _167;
  float _169;
  float _170;
  float _206;
  float _210;
  float _216;
  float _217;
  float _233;
  float _237;
  float _238;
  int _241;
  float _246;
  float _248;
  float _249;
  float _250;
  float _254;
  float _258;
  float _262;
  float _265;
  float _269;
  float _275;
  float _276;
  float _288;
  float _292;
  float _293;
  float _294;
  float _295;
  float _296;
  float _297;
  float _300;
  float _303;
  float _306;
  float _308;
  float _309;
  float _310;
  float _311;
  float _320;
  float _336;
  float _340;
  float _343;
  float _351;
  float _352;
  float _358;
  float _360;
  float _366;
  float _367;
  float _375;
  float _376;
  float _377;
  float _385;
  float _386;
  uint _414;
  uint _415;
  uint4 _417;
  float4 _420;
  float _438;
  float _439;
  float _440;
  float _442;
  float _443;
  float _444;
  float _445;
  float _448;
  float _449;
  float _452;
  float _453;
  float _457;
  float _459;
  float _460;
  float _461;
  float _462;
  float _464;
  float _467;
  float _468;
  float _469;
  float _470;
  float _479;
  float _483;
  float _487;
  float _489;
  float _490;
  float _491;
  float _492;
  float _501;
  float _518;
  float _525;
  float _528;
  float _544;
  float _545;
  float _552;
  uint _563;
  bool _579;
  float _585;
  float _634;
  float _635;
  float _636;
  float _638;
  float _645;
  float _646;
  float _647;
  float _666;
  float _667;
  float _668;
  float _669;
  float _670;
  float _671;
  float _672;
  float _673;
  float _674;
  float _720;
  float _721;
  float _722;
  float _723;
  float _724;
  float _725;
  float _726;
  float _743;
  float _744;
  float _745;
  float _746;
  float _752;
  float _755;
  float _762;
  float _763;
  float _764;
  float _793;
  float _818;
  float _819;
  float _820;
  float _839;
  float _840;
  float _841;
  float _847;
  float _851;
  float _852;
  float _853;
  float _854;
  float _859;
  float _884;
  float _888;
  float _889;
  float _890;
  float _891;
  float _921;
  float _943;
  float _944;
  float _948;
  float _992;
  float _1013;
  float _1014;
  float _1015;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_28.x, _28.y);
  _45 = (((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_28.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_28.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255;
  _48 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _58 = (pow(_48.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _59 = (pow(_48.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _60 = (pow(_48.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _82 = exp2(log2(max(0.0f, (_58 + -0.8359375f)) / (18.851562f - (_58 * 18.6875f))) * 6.277395f);
  _83 = exp2(log2(max(0.0f, (_59 + -0.8359375f)) / (18.851562f - (_59 * 18.6875f))) * 6.277395f);
  _84 = exp2(log2(max(0.0f, (_60 + -0.8359375f)) / (18.851562f - (_60 * 18.6875f))) * 6.277395f);
  _85 = _82 * 10000.0f;
  _86 = _83 * 10000.0f;
  _87 = _84 * 10000.0f;
  if (_45 == _renderPassInteraction) {
    _97 = WaveReadLaneFirst(_materialIndex);
    _105 = WaveReadLaneFirst(BindlessParameters_PostProcessInteraction_CD[((int)((uint)((uint)(select(((uint)_97 < (uint)170000), _97, 0))) + (uint)(0)))].BindlessParameters_PostProcessInteraction_CD._lineTex);
    _139 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_105 < (uint)65000), _105, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x * 50.0f), (TEXCOORD.y * 50.0f))))).x);
    // [sem: expr_sat]
    _140 = saturate(ceil(((_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x))) + 0.05f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x)))));
  } else {
    _139 = 0.0f;
    _140 = 0.0f;  // [sem: expr_sat]
  }
  if (_45 == _renderPassInteraction) {
    _156 = (int)(_customRenderPassSizeInvSize.y * TEXCOORD.y);
    // [sem: _3__36__0__0__g_CustomRenderPassDepth_load]
    _158 = __3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * (TEXCOORD.x - (0.1f / _srcTargetSizeAndInv.x)))), _156, 0));
    _160 = 2.2f / _srcTargetSizeAndInv.x;
    _161 = TEXCOORD.x - _160;
    _167 = (_161 * 2.0f) + -1.0f;
    _169 = 1.0f - (TEXCOORD.y * 2.0f);
    _170 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_161 * _customRenderPassSizeInvSize.x)), _156, 0)))).x));
    _206 = mad((_invViewProj[3].z), _170, mad((_invViewProj[3].y), _169, ((_invViewProj[3].x) * _167))) + (_invViewProj[3].w);
    _210 = _160 + TEXCOORD.x;
    _216 = (_210 * 2.0f) + -1.0f;
    _217 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_210 * _customRenderPassSizeInvSize.x)), _156, 0)))).x));
    _233 = mad((_invViewProj[3].z), _217, mad((_invViewProj[3].y), _169, ((_invViewProj[3].x) * _216))) + (_invViewProj[3].w);
    _237 = 2.2f / _srcTargetSizeAndInv.y;
    _238 = TEXCOORD.y - _237;
    _241 = (int)(_customRenderPassSizeInvSize.x * TEXCOORD.x);
    _246 = (TEXCOORD.x * 2.0f) + -1.0f;
    _248 = 1.0f - (_238 * 2.0f);
    _249 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(_241, ((int)(_238 * _customRenderPassSizeInvSize.y)), 0)))).x));
    _250 = (_invViewProj[0].x) * _246;
    _254 = (_invViewProj[1].x) * _246;
    _258 = (_invViewProj[2].x) * _246;
    _262 = (_invViewProj[3].x) * _246;
    _265 = mad((_invViewProj[3].z), _249, mad((_invViewProj[3].y), _248, _262)) + (_invViewProj[3].w);
    _269 = _237 + TEXCOORD.y;
    _275 = 1.0f - (_269 * 2.0f);
    _276 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(_241, ((int)(_269 * _customRenderPassSizeInvSize.y)), 0)))).x));
    _288 = mad((_invViewProj[3].z), _276, mad((_invViewProj[3].y), _275, _262)) + (_invViewProj[3].w);
    _292 = ((mad((_invViewProj[0].z), _276, mad((_invViewProj[0].y), _275, _250)) + (_invViewProj[0].w)) / _288) - ((mad((_invViewProj[0].z), _249, mad((_invViewProj[0].y), _248, _250)) + (_invViewProj[0].w)) / _265);
    _293 = ((mad((_invViewProj[1].z), _276, mad((_invViewProj[1].y), _275, _254)) + (_invViewProj[1].w)) / _288) - ((mad((_invViewProj[1].z), _249, mad((_invViewProj[1].y), _248, _254)) + (_invViewProj[1].w)) / _265);
    _294 = ((mad((_invViewProj[2].z), _276, mad((_invViewProj[2].y), _275, _258)) + (_invViewProj[2].w)) / _288) - ((mad((_invViewProj[2].z), _249, mad((_invViewProj[2].y), _248, _258)) + (_invViewProj[2].w)) / _265);
    _295 = ((mad((_invViewProj[0].z), _217, mad((_invViewProj[0].y), _169, ((_invViewProj[0].x) * _216))) + (_invViewProj[0].w)) / _233) - ((mad((_invViewProj[0].z), _170, mad((_invViewProj[0].y), _169, ((_invViewProj[0].x) * _167))) + (_invViewProj[0].w)) / _206);
    _296 = ((mad((_invViewProj[1].z), _217, mad((_invViewProj[1].y), _169, ((_invViewProj[1].x) * _216))) + (_invViewProj[1].w)) / _233) - ((mad((_invViewProj[1].z), _170, mad((_invViewProj[1].y), _169, ((_invViewProj[1].x) * _167))) + (_invViewProj[1].w)) / _206);
    _297 = ((mad((_invViewProj[2].z), _217, mad((_invViewProj[2].y), _169, ((_invViewProj[2].x) * _216))) + (_invViewProj[2].w)) / _233) - ((mad((_invViewProj[2].z), _170, mad((_invViewProj[2].y), _169, ((_invViewProj[2].x) * _167))) + (_invViewProj[2].w)) / _206);
    _300 = (_294 * _296) - (_293 * _297);
    _303 = (_292 * _297) - (_294 * _295);
    _306 = (_293 * _295) - (_292 * _296);
    _308 = rsqrt(dot(float3(_300, _303, _306), float3(_300, _303, _306)));  // [sem: invLength]
    _309 = _300 * _308;
    _310 = _303 * _308;
    _311 = _306 * _308;
    // [sem: expr_sat]
    _320 = saturate(dot(float3(_309, _310, _311), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
    _336 = frac(_time.x * 0.4f);
    _340 = abs((1.999f - _320) - (_336 * 2.5f));
    _343 = saturate(1.0f - (_340 * 5.0f));  // [sem: expr_sat]
    // [sem: expr_sat]
    _351 = saturate((saturate(((2.0f - _320) * _139) + exp2(log2(1.0f - _320) * 4.0f)) * _158.x) * (_343 - (_343 * _336)));
    _352 = _351 * _140;
    _358 = _158.x * 50.0f;  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
    _360 = saturate(_358 * _358);  // [sem: expr_sat]
    _366 = saturate(1.0f - (_340 * 1.25f)) * _360;
    _367 = _366 * 20.0f;
    _375 = (_exposure2.x * 5000.0f) * (lerp(_352, _351, 2.0f));
    _376 = (_360 - (_360 * _140)) * _exposure2.x;
    _377 = _376 * 2.0f;
    _385 = (_376 * 8.0f) * saturate(exp2(log2(1.0f - abs(dot(float3(_309, _310, _311), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 2.5f));
    _386 = _367 + 10000.0f;
    _560 = ((((_375 - (_366 * _85)) + _385) + (_386 * _82)) + ((1.0f - (_367 * _82)) * _377));
    _561 = ((((_375 - (_366 * _86)) + _385) + (_386 * _83)) + ((1.0f - (_367 * _83)) * _377));
    _562 = ((((_375 - (_366 * _87)) + _385) + (_386 * _84)) + ((1.0f - (_367 * _84)) * _377));
  } else {
    if (_45 == _renderPassDetectObjective) {
      _414 = (uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f);
      _415 = (uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f);
      _417 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_414, _415, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _420 = __3__36__0__0__g_gbufferNormal.Load(int3(_414, _415, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _438 = (saturate(_420.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _439 = (saturate(_420.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _440 = (saturate(_420.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _442 = rsqrt(dot(float3(_438, _439, _440), float3(_438, _439, _440)));  // [sem: invLength]
      _443 = _442 * _438;
      _444 = _442 * _439;
      _445 = _440 * _442;
      _448 = (((float)((uint)((uint)(((uint)((uint)(_417.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _449 = (((float)((uint)((uint)(_417.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _452 = (_448 + _449) * 0.5f;
      _453 = (_448 - _449) * 0.5f;
      _457 = (1.0f - abs(_452)) - abs(_453);
      _459 = rsqrt(dot(float3(_452, _453, _457), float3(_452, _453, _457)));  // [sem: invLength]
      _460 = _459 * _452;
      _461 = _459 * _453;
      _462 = _459 * _457;
      _464 = select((_445 >= 0.0f), 1.0f, -1.0f);
      _467 = -0.0f - (1.0f / (_464 + _445));
      _468 = _444 * _467;
      _469 = _468 * _443;
      _470 = _464 * _443;
      _479 = mad(_462, _443, mad(_461, _469, ((((_470 * _443) * _467) + 1.0f) * _460)));
      _483 = mad(_462, _444, mad(_461, (_464 + (_468 * _444)), ((_460 * _464) * _469)));
      _487 = mad(_462, _445, mad(_461, (-0.0f - _444), (-0.0f - (_470 * _460))));
      _489 = rsqrt(dot(float3(_479, _483, _487), float3(_479, _483, _487)));  // [sem: invLength]
      _490 = _489 * _479;
      _491 = _489 * _483;
      _492 = _489 * _487;
      // [sem: expr_sat]
      _501 = saturate(dot(float3(_490, _491, _492), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _518 = _time.x - _interactionTime;
      _525 = abs((1.999f - _501) - ((pow(_518, 0.5f)) * 2.25f));
      _528 = saturate(1.0f - (_525 * 40.0f));  // [sem: expr_sat]
      _544 = (saturate(exp2(log2(1.0f - abs(dot(float3(_490, _491, _492), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 0.8f)) * _140) * saturate(1.0f - (_525 * 3.3333333f));
      _545 = _exposure2.x * 25.0f;
      _552 = _545 * saturate((saturate(((2.0f - _501) * _139) + exp2(log2(1.0f - _501) * 4.0f)) * _140) * (_528 - ((_518 * 0.9f) * _528)));
      _560 = ((_552 + _85) + ((_545 - _85) * _544));
      _561 = ((_552 + _86) + ((_545 - _86) * _544));
      _562 = ((_552 + _87) + ((_545 - _87) * _544));
    } else {
      _560 = _85;
      _561 = _86;
      _562 = _87;
    }
  }
  _563 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _576 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _563, 0)))).x) & 127)))) + 0.5f);
  } else {
    _576 = 1.0f;
  }
  _579 = (_localToneMappingParams.w > 0.0f);
  if (_579) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_560, _561, _562));
    _839 = _rndx_tonemapped_color.x;
    _840 = _rndx_tonemapped_color.y;
    _841 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _847 = 1.0f - abs(_etcParams.w);
      _851 = saturate(_etcParams.w);  // [sem: expr_sat]
      _852 = (_847 * _839) + _851;
      _853 = (_847 * _840) + _851;
      _854 = (_847 * _841) + _851;
      if (_colorGradingParams.w > 0.0f) {
        _859 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _876 = (((max(0.0f, (1.0f - _852)) - _852) * _859) + _852);
        _877 = (((max(0.0f, (1.0f - _853)) - _853) * _859) + _853);
        _878 = (((max(0.0f, (1.0f - _854)) - _854) * _859) + _854);
      } else {
        _876 = _852;
        _877 = _853;
        _878 = _854;
      }
      _884 = _userImageAdjust.y + 1.0f;
      _888 = _userImageAdjust.x + 0.5f;
      _889 = ((_876 + -0.5f) * _884) + _888;
      _890 = ((_877 + -0.5f) * _884) + _888;
      _891 = ((_878 + -0.5f) * _884) + _888;
      _921 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _932 = exp2(log2(saturate(mad(_colorBlind0.z, _891, mad(_colorBlind0.y, _890, (_colorBlind0.x * _889))))) * _921);
      _933 = exp2(log2(saturate(mad(_colorBlind1.z, _891, mad(_colorBlind1.y, _890, (_colorBlind1.x * _889))))) * _921);
      _934 = exp2(log2(saturate(mad(_colorBlind2.z, _891, mad(_colorBlind2.y, _890, (_colorBlind2.x * _889))))) * _921);
    } else {
      _932 = _839;
      _933 = _840;
      _934 = _841;
    }
  } else {
    _932 = _560;
    _933 = _561;
    _934 = _562;
  }
  if (_etcParams.y > 1.0f) {
    _943 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _944 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _948 = saturate(1.0f - (dot(float2(_943, _944), float2(_943, _944)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _953 = (_948 * _932);
    _954 = (_948 * _933);
    _955 = (_948 * _934);
  } else {
    _953 = _932;
    _954 = _933;
    _955 = _934;
  }
  if (_579 && (_etcParams.z > 0.0f)) {
    _985 = select((_953 <= 0.0031308f), (_953 * 12.92f), (((pow(_953, 0.41666666f)) * 1.055f) + -0.055f));
    _986 = select((_954 <= 0.0031308f), (_954 * 12.92f), (((pow(_954, 0.41666666f)) * 1.055f) + -0.055f));
    _987 = select((_955 <= 0.0031308f), (_955 * 12.92f), (((pow(_955, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _985 = _953;
    _986 = _954;
    _987 = _955;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _992 = (float)((uint)((uint)(_563)));
    if (!(_992 < _viewDir.w)) {
      if (!(_992 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1001 = _985;
        _1002 = _986;
        _1003 = _987;
      } else {
        _1001 = 0.0f;
        _1002 = 0.0f;
        _1003 = 0.0f;
      }
    } else {
      _1001 = 0.0f;
      _1002 = 0.0f;
      _1003 = 0.0f;
    }
  } else {
    _1001 = _985;
    _1002 = _986;
    _1003 = _987;
  }
  _1013 = exp2(log2(_1001 * 0.0001f) * 0.15930176f);
  _1014 = exp2(log2(_1002 * 0.0001f) * 0.15930176f);
  _1015 = exp2(log2(_1003 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1013 * 18.6875f) + 1.0f)) * ((_1013 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1014 * 18.6875f) + 1.0f)) * ((_1014 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1015 * 18.6875f) + 1.0f)) * ((_1015 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _576;
  return SV_Target;
}
