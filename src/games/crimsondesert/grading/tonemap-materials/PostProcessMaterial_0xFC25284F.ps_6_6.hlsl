struct PostProcessRematchLoading_CDStruct {
  float _loadingRatio;
  float _loadingRadius;
  uint _loadingEdgeColor;
  uint _loadingInnerColor;
  uint _noiseTex;
};

struct BindlessParameters_PostProcessRematchLoading_CD {
  PostProcessRematchLoading_CDStruct BindlessParameters_PostProcessRematchLoading_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t37, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t70, space36);

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
  uint _characterMeshEffectType : packoffset(c029.z);
};

typedef BindlessParameters_PostProcessRematchLoading_CD BindlessParameters_PostProcessRematchLoading_CD_t;
ConstantBuffer<BindlessParameters_PostProcessRematchLoading_CD_t> BindlessParameters_PostProcessRematchLoading_CD[] : register(b0, space100);

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
  float4 _28;
  float _33;
  float _34;
  float _35;
  float _38;
  float _40;
  float _52;
  int _55;
  float _63;
  int _66;
  float _74;
  float _77;
  float _79;
  float _80;
  float _81;
  float _82;
  float _84;
  float _90;
  float _92;
  float _94;
  float _101;
  float _106;
  uint _114;
  uint _120;
  uint4 _122;
  float4 _125;
  float _132;
  float _136;
  float _140;
  float _142;
  float _143;
  float _144;
  float _145;
  float _150;
  float _154;
  float _156;
  float _158;
  float _162;
  float _164;
  float _165;
  float _166;
  float _167;
  float _169;
  float _172;
  float _173;
  float _174;
  float _175;
  float _181;
  float _187;
  float _192;
  float _194;
  float _213;
  float _216;
  float _228;
  float _237;
  float _246;
  float _255;
  float _257;
  float _258;
  float _259;
  float _261;
  bool _262;
  bool _263;
  bool _264;
  bool _265;
  int _268;
  int _276;
  float4 _302;
  float _307;
  float _309;
  float _325;
  float _336;
  float _347;
  float _358;
  float _360;
  float _362;
  float _369;
  float _375;
  float _382;
  float _388;
  float _394;
  float _397;
  int _400;
  int _408;
  float _411;
  float _414;
  float _416;
  float _425;
  float _434;
  float _443;
  float _446;
  float _448;
  float _450;
  float _452;
  float _455;
  float _546;
  float _547;
  float _548;
  float _614;
  float _819;
  float _820;
  float _821;
  float _914;
  float _915;
  float _916;
  float _970;
  float _971;
  float _972;
  float _988;
  float _989;
  float _990;
  float _1020;
  float _1021;
  float _1022;
  float _1036;
  float _1037;
  float _1038;
  int _462;
  int _470;
  float _473;
  float _476;
  float _478;
  float _487;
  float _496;
  float _505;
  float _506;
  float _507;
  float _508;
  float _510;
  float _513;
  float _520;
  float _551;
  float _567;
  float _578;
  float _589;
  float _600;
  uint _601;
  bool _617;
  float _623;
  float _642;
  float _658;
  float _674;
  float _675;
  float _679;
  float _682;
  float _685;
  float _692;
  float _699;
  float _706;
  float _707;
  float _708;
  float _709;
  float _710;
  float _711;
  float _712;
  float _728;
  float _744;
  float _760;
  float _761;
  float _762;
  float _763;
  float _764;
  float _781;
  float _782;
  float _783;
  float _784;
  float _787;
  float _790;
  float _794;
  float _798;
  float _802;
  float _822;
  float _834;
  float _846;
  float _858;
  float _865;
  float _872;
  float _879;
  float _885;
  float _886;
  float _888;
  float _890;
  float _892;
  float _897;
  float _918;
  float _920;
  float _923;
  float _926;
  float _929;
  float _935;
  float _975;
  float _977;
  float _983;
  float _1025;
  _28 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _33 = (TEXCOORD.x * 2.0f) + -1.0f;
  _34 = TEXCOORD.y * 2.0f;
  _35 = 1.0f - _34;
  _38 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  _40 = max(1e-07f, _38.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _52 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _40, mad((_invViewProj[3].y), _35, ((_invViewProj[3].x) * _33)));
  _55 = WaveReadLaneFirst(_materialIndex);
  _63 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)((uint)(select(((uint)_55 < (uint)170000), _55, 0))) + (uint)(0)))].BindlessParameters_PostProcessRematchLoading_CD._loadingRatio);
  _66 = WaveReadLaneFirst(_materialIndex);
  _74 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)((uint)(select(((uint)_66 < (uint)170000), _66, 0))) + (uint)(0)))].BindlessParameters_PostProcessRematchLoading_CD._loadingRadius);
  _77 = 0.2f / _destTargetSizAndInv.z;
  _79 = 0.2f / _destTargetSizAndInv.w;
  _80 = _79 * TEXCOORD.y;
  _81 = floor(_80);
  _82 = _81 * 0.5f;
  _84 = frac(abs(_82));
  _90 = select((_82 >= (-0.0f - _82)), _84, (-0.0f - _84)) + (_77 * TEXCOORD.x);
  _92 = frac(_90) + -0.5f;
  _94 = frac(_80) + -0.5f;
  _101 = saturate((sqrt((_94 * _94) + (_92 * _92)) + -0.3f) * 49.999973f);  // [sem: expr_sat]
  _106 = 1.0f - ((_101 * _101) * (3.0f - (_101 * 2.0f)));
  _114 = (uint)((((floor(_90) + 0.5f) / _77) * _bufferSizeAndInvSize.x) + -0.5f);
  _120 = (uint)((((_81 + 0.5f) / _79) * _bufferSizeAndInvSize.y) + -0.5f);
  _122 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_114, _120, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _125 = __3__36__0__0__g_gbufferNormal.Load(int3(_114, _120, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _132 = (saturate(_125.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _136 = (saturate(_125.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _140 = (saturate(_125.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _142 = rsqrt(dot(float3(_132, _136, _140), float3(_132, _136, _140)));  // [sem: invLength]
  _143 = _142 * _132;
  _144 = _142 * _136;
  _145 = _140 * _142;
  _150 = (((float)((uint)((uint)(((uint)((uint)(_122.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _154 = (((float)((uint)((uint)(_122.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _156 = (_150 + _154) * 0.5f;
  _158 = (_150 - _154) * 0.5f;
  _162 = (1.0f - abs(_156)) - abs(_158);
  _164 = rsqrt(dot(float3(_156, _158, _162), float3(_156, _158, _162)));  // [sem: invLength]
  _165 = _164 * _156;
  _166 = _164 * _158;
  _167 = _164 * _162;
  _169 = select((_145 >= 0.0f), 1.0f, -1.0f);
  _172 = -0.0f - (1.0f / (_169 + _145));
  _173 = _144 * _172;
  _174 = _173 * _143;
  _175 = _169 * _143;
  _181 = mad(_167, _143, mad(_166, _174, ((((_175 * _143) * _172) + 1.0f) * _165)));
  _187 = mad(_167, _144, mad(_166, ((_173 * _144) + _169), ((_165 * _169) * _174)));
  _192 = mad(_167, _145, mad(_166, (-0.0f - _144), (-0.0f - (_175 * _165))));
  _194 = rsqrt(dot(float3(_181, _187, _192), float3(_181, _187, _192)));  // [sem: invLength]
  // [sem: expr_sat]
  _213 = saturate(exp2(log2(select(((_38.x < 1e-07f) || (_38.x == 1.0f)), 1.0f, (1.0f - abs(dot(float3((_194 * _181), (_194 * _187), (_194 * _192)), float3(_viewDir.x, _viewDir.y, _viewDir.z)))))) * 4.0f) * 2.0f);
  _216 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
  _228 = ((_invViewProjRelative[3].z) + (_invViewProjRelative[3].w)) + mad((_invViewProjRelative[3].y), _216, ((_invViewProjRelative[3].x) * _33));
  _237 = (((_invViewProjRelative[0].z) + (_invViewProjRelative[0].w)) + mad((_invViewProjRelative[0].y), _216, ((_invViewProjRelative[0].x) * _33))) / _228;
  _246 = (((_invViewProjRelative[1].z) + (_invViewProjRelative[1].w)) + mad((_invViewProjRelative[1].y), _216, ((_invViewProjRelative[1].x) * _33))) / _228;
  _255 = (((_invViewProjRelative[2].z) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[2].y), _216, ((_invViewProjRelative[2].x) * _33))) / _228;
  _257 = rsqrt(dot(float3(_237, _246, _255), float3(_237, _246, _255)));  // [sem: invLength]
  _258 = _257 * _237;
  _259 = _257 * _255;
  _261 = atan(_259 / _258);
  _262 = (_258 < 0.0f);
  _263 = (_258 == 0.0f);
  _264 = (_259 >= 0.0f);
  _265 = (_259 < 0.0f);
  _268 = WaveReadLaneFirst(_materialIndex);
  _276 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)((uint)(select(((uint)_268 < (uint)170000), _268, 0))) + (uint)(0)))].BindlessParameters_PostProcessRematchLoading_CD._noiseTex);
  _302 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_276 < (uint)65000), _276, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_263 && _264), 7.5f, select((_263 && _265), 2.5f, ((select((_262 && _265), (_261 + -3.1415927f), select((_262 && _264), (_261 + 3.1415927f), _261)) * 1.5915494f) + 5.0f))), ((acos(_257 * _246) * 0.9549296f) - (_time.x * 0.05f))));
  _307 = (_302.x * 2.0f) + -0.99607843f;
  _309 = (_302.y * 2.0f) + -0.99607843f;
  _325 = (((_invViewProj[0].w) + mad((_invViewProj[0].z), _40, mad((_invViewProj[0].y), _35, ((_invViewProj[0].x) * _33)))) / _52) - _mainPosition.x;
  _336 = ((mad((_invViewProj[1].z), _40, mad((_invViewProj[1].y), _35, ((_invViewProj[1].x) * _33))) + (_invViewProj[1].w)) / _52) - _mainPosition.y;
  _347 = ((mad((_invViewProj[2].z), _40, mad((_invViewProj[2].y), _35, ((_invViewProj[2].x) * _33))) + (_invViewProj[2].w)) / _52) - _mainPosition.z;
  _358 = saturate(_63 * 5.0f) * min(max(sqrt(((_336 * _336) + (_325 * _325)) + (_347 * _347)), 1.0f), 10.0f);  // [sem: expr_sat]
  _360 = (_358 * _307) + _325;
  _362 = (_358 * _309) + _336;
  _369 = ((sqrt(saturate(1.0f - dot(float2(_307, _309), float2(_307, _309)))) + -0.5f) * _358) + _347;
  _375 = sqrt(((_360 * _360) + (_362 * _362)) + (_369 * _369));
  _382 = saturate((1.0f - saturate(_375 / max(0.001f, (_74 * _63)))) * 2.0f);  // [sem: expr_sat]
  _388 = (saturate((_63 * 10.0f) + -9.0f) * (1.0f - _382)) + _382;
  _394 = frac((_375 * 0.03f) - (_time.x * 0.8f));
  _397 = saturate((1.0f - _394) * 5.0f);  // [sem: expr_sat]
  _400 = WaveReadLaneFirst(_materialIndex);
  _408 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)((uint)(select(((uint)_400 < (uint)170000), _400, 0))) + (uint)(0)))].BindlessParameters_PostProcessRematchLoading_CD._loadingInnerColor);
  _411 = (float)((uint)((uint)(((uint)((uint)(_408)) >> 16) & 255)));
  _414 = (float)((uint)((uint)(((uint)((uint)(_408)) >> 8) & 255)));
  _416 = (float)((uint)((uint)(_408 & 255)));
  _425 = select(((_411 * 0.003921569f) < 0.04045f), (_411 * 0.000303527f), exp2(log2((_411 * 0.003717127f) + 0.052132703f) * 2.4f));
  _434 = select(((_414 * 0.003921569f) < 0.04045f), (_414 * 0.000303527f), exp2(log2((_414 * 0.003717127f) + 0.052132703f) * 2.4f));
  _443 = select(((_416 * 0.003921569f) < 0.04045f), (_416 * 0.000303527f), exp2(log2((_416 * 0.003717127f) + 0.052132703f) * 2.4f));
  _446 = (pow(_397, 4.0f));
  _448 = (1.0f - _425) * _302.x;
  _450 = (1.0f - _434) * _302.y;
  _452 = (1.0f - _443) * _302.z;
  _455 = max(0.001f, _exposure0.x);
  if ((_388 > 0.0f) && (_388 < 1.0f)) {
    _462 = WaveReadLaneFirst(_materialIndex);
    _470 = WaveReadLaneFirst(BindlessParameters_PostProcessRematchLoading_CD[((int)((uint)((uint)(select(((uint)_462 < (uint)170000), _462, 0))) + (uint)(0)))].BindlessParameters_PostProcessRematchLoading_CD._loadingEdgeColor);
    _473 = (float)((uint)((uint)(((uint)((uint)(_470)) >> 16) & 255)));
    _476 = (float)((uint)((uint)(((uint)((uint)(_470)) >> 8) & 255)));
    _478 = (float)((uint)((uint)(_470 & 255)));
    _487 = select(((_473 * 0.003921569f) < 0.04045f), (_473 * 0.000303527f), exp2(log2((_473 * 0.003717127f) + 0.052132703f) * 2.4f));
    _496 = select(((_476 * 0.003921569f) < 0.04045f), (_476 * 0.000303527f), exp2(log2((_476 * 0.003717127f) + 0.052132703f) * 2.4f));
    _505 = select(((_478 * 0.003921569f) < 0.04045f), (_478 * 0.000303527f), exp2(log2((_478 * 0.003717127f) + 0.052132703f) * 2.4f));
    _506 = _487 * 10.0f;
    _507 = _496 * 10.0f;
    _508 = _505 * 10.0f;
    _510 = (_302.x * _302.y) * _302.z;
    _513 = max(0.001f, _exposure0.x);
    _520 = saturate((1.0f - abs((_388 * 2.0f) + -1.0f)) * 4.0f) * _106;
    _546 = (_520 * (((((((1.0f - _487) * _302.x) - _506) * _213) + _506) * _510) / _513));
    _547 = ((((((((1.0f - _496) * _302.y) - _507) * _213) + _507) * _510) / _513) * _520);
    _548 = ((((((((1.0f - _505) * _302.z) - _508) * _213) + _508) * _510) / _513) * _520);
  } else {
    _546 = _28.x;
    _547 = _28.y;
    _548 = _28.z;
  }
  _551 = ((1.0f - _388) * _63) + _388;
  _567 = (((((((_63 * _63) * _63) * _106) * _213) * _388) * exp2(log2((_394 * 1.25f) * _397) * 9.0f)) * (1.0f - saturate(_375 * 0.001f))) + 0.001f;
  _578 = (((_546 - _28.x) + (((_567 * ((lerp(_448, _425, _446)) / _455)) - _546) * _551)) * _388) + _28.x;
  _589 = (((_547 - _28.y) + (((_567 * ((lerp(_450, _434, _446)) / _455)) - _547) * _551)) * _388) + _28.y;
  _600 = (((_548 - _28.z) + (((((lerp(_452, _443, _446)) / _455) * _567) - _548) * _551)) * _388) + _28.z;
  _601 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _614 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _601, 0)))).x) & 127)))) + 0.5f);
  } else {
    _614 = 1.0f;
  }
  _617 = (_localToneMappingParams.w > 0.0f);
  if (_617) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_578, _589, _600));
    _865 = _rndx_tonemapped_color.x;
    _872 = _rndx_tonemapped_color.y;
    _879 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _885 = 1.0f - abs(_etcParams.w);
      _886 = saturate(_etcParams.w);  // [sem: expr_sat]
      _888 = (_885 * _865) + _886;
      _890 = (_885 * _872) + _886;
      _892 = (_885 * _879) + _886;
      if (_colorGradingParams.w > 0.0f) {
        _897 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _914 = (((max(0.0f, (1.0f - _888)) - _888) * _897) + _888);
        _915 = (((max(0.0f, (1.0f - _890)) - _890) * _897) + _890);
        _916 = (((max(0.0f, (1.0f - _892)) - _892) * _897) + _892);
      } else {
        _914 = _888;
        _915 = _890;
        _916 = _892;
      }
      _918 = _userImageAdjust.y + 1.0f;
      _920 = _userImageAdjust.x + 0.5f;
      _923 = ((_914 + -0.5f) * _918) + _920;
      _926 = ((_915 + -0.5f) * _918) + _920;
      _929 = ((_916 + -0.5f) * _918) + _920;
      _935 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _970 = exp2(log2(saturate(mad(_colorBlind0.z, _929, mad(_colorBlind0.y, _926, (_colorBlind0.x * _923))))) * _935);
      _971 = exp2(log2(saturate(mad(_colorBlind1.z, _929, mad(_colorBlind1.y, _926, (_colorBlind1.x * _923))))) * _935);
      _972 = exp2(log2(saturate(mad(_colorBlind2.z, _929, mad(_colorBlind2.y, _926, (_colorBlind2.x * _923))))) * _935);
    } else {
      _970 = _865;
      _971 = _872;
      _972 = _879;
    }
  } else {
    _970 = _578;
    _971 = _589;
    _972 = _600;
  }
  if (_etcParams.y > 1.0f) {
    _975 = abs(_33);
    _977 = abs(_34 + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _983 = saturate(1.0f - (dot(float2(_975, _977), float2(_975, _977)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _988 = (_983 * _970);
    _989 = (_983 * _971);
    _990 = (_983 * _972);
  } else {
    _988 = _970;
    _989 = _971;
    _990 = _972;
  }
  if (_617 && (_etcParams.z > 0.0f)) {
    _1020 = select((_988 <= 0.0031308f), (_988 * 12.92f), (((pow(_988, 0.41666666f)) * 1.055f) + -0.055f));
    _1021 = select((_989 <= 0.0031308f), (_989 * 12.92f), (((pow(_989, 0.41666666f)) * 1.055f) + -0.055f));
    _1022 = select((_990 <= 0.0031308f), (_990 * 12.92f), (((pow(_990, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1020 = _988;
    _1021 = _989;
    _1022 = _990;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1025 = (float)((uint)((uint)(_601)));
    if (!(_1025 < _viewDir.w)) {
      if (!(!(_1025 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1036 = 0.0f;
        _1037 = 0.0f;
        _1038 = 0.0f;
      } else {
        _1036 = _1020;
        _1037 = _1021;
        _1038 = _1022;
      }
    } else {
      _1036 = 0.0f;
      _1037 = 0.0f;
      _1038 = 0.0f;
    }
  } else {
    _1036 = _1020;
    _1037 = _1021;
    _1038 = _1022;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_1036, _1037, _1038), _sunDirection.y, _moonDirection.y);
    _1036 = _rndx_final_color.x;
    _1037 = _rndx_final_color.y;
    _1038 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _1036;
  SV_Target.y = _1037;
  SV_Target.z = _1038;
  SV_Target.w = _614;
  return SV_Target;
}
