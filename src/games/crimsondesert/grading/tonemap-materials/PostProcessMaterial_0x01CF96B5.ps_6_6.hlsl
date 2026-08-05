struct PostProcessLearningHolo_CDStruct {
  float _learningEffectRatio;
  uint _learningEffectColor;
  uint _noiseTexture;
};

struct BindlessParameters_PostProcessLearningHolo_CD {
  PostProcessLearningHolo_CDStruct BindlessParameters_PostProcessLearningHolo_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t37, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t70, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t39, space36);

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
  float4 _28;
  int _34;
  float _42;
  int _45;
  int _53;
  uint2 _55;
  uint _89;
  int _91;
  float _95;
  float _100;
  float _102;
  float _103;
  float _104;
  float _115;
  float _116;
  float _413;
  float _414;
  float _415;
  float _416;
  float _709;
  float _710;
  float _711;
  float _712;
  float _720;
  float _721;
  float _722;
  float _723;
  float _724;
  float _725;
  float _726;
  float _749;
  float _954;
  float _955;
  float _956;
  float _1049;
  float _1050;
  float _1051;
  float _1105;
  float _1106;
  float _1107;
  float _1126;
  float _1127;
  float _1128;
  float _1158;
  float _1159;
  float _1160;
  float _1174;
  float _1175;
  float _1176;
  float _118;
  float _119;
  float _120;
  float _121;
  float _123;
  float _124;
  float _125;
  float _126;
  bool _127;
  float _135;
  float _137;
  float _139;
  float _141;
  float _142;
  uint _147;
  uint _151;
  uint4 _153;
  float4 _156;
  float _163;
  float _167;
  float _171;
  float _173;
  float _174;
  float _175;
  float _176;
  float _181;
  float _185;
  float _187;
  float _189;
  float _193;
  float _195;
  float _196;
  float _197;
  float _198;
  float _200;
  float _203;
  float _204;
  float _205;
  float _206;
  float _212;
  float _218;
  float _223;
  float _225;
  float _229;
  float _230;
  int _233;
  int _241;
  float _244;
  float _247;
  float _249;
  float _252;
  float _264;
  float _265;
  float _290;
  float _291;
  float _303;
  float _315;
  float _327;
  float _332;
  float _334;
  float _336;
  float _338;
  float _360;
  float _367;
  float _371;
  float _377;
  float _379;
  float _399;
  float _419;
  float _431;
  float _433;
  float _435;
  float _437;
  float _438;
  uint _443;
  uint _447;
  uint4 _449;
  float4 _452;
  float _459;
  float _463;
  float _467;
  float _469;
  float _470;
  float _471;
  float _472;
  float _477;
  float _481;
  float _483;
  float _485;
  float _489;
  float _491;
  float _492;
  float _493;
  float _494;
  float _496;
  float _499;
  float _500;
  float _501;
  float _502;
  float _508;
  float _514;
  float _519;
  float _521;
  float _525;
  float _526;
  int _529;
  int _537;
  float _540;
  float _543;
  float _545;
  float _548;
  float _560;
  float _561;
  float _586;
  float _587;
  float _599;
  float _611;
  float _623;
  float _628;
  float _630;
  float _632;
  float _634;
  float _656;
  float _663;
  float _667;
  float _673;
  float _675;
  float _695;
  float _715;
  float _729;
  float _732;
  float _735;
  uint _736;
  bool _752;
  float _758;
  float _777;
  float _793;
  float _809;
  float _810;
  float _814;
  float _817;
  float _820;
  float _827;
  float _834;
  float _841;
  float _842;
  float _843;
  float _844;
  float _845;
  float _846;
  float _847;
  float _863;
  float _879;
  float _895;
  float _896;
  float _897;
  float _898;
  float _899;
  float _916;
  float _917;
  float _918;
  float _919;
  float _922;
  float _925;
  float _929;
  float _933;
  float _937;
  float _957;
  float _969;
  float _981;
  float _993;
  float _1000;
  float _1007;
  float _1014;
  float _1020;
  float _1021;
  float _1023;
  float _1025;
  float _1027;
  float _1032;
  float _1053;
  float _1055;
  float _1058;
  float _1061;
  float _1064;
  float _1070;
  float _1112;
  float _1115;
  float _1121;
  float _1163;
  _28 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _34 = WaveReadLaneFirst(_materialIndex);
  _42 = WaveReadLaneFirst(BindlessParameters_PostProcessLearningHolo_CD[((int)((uint)((uint)(select(((uint)_34 < (uint)170000), _34, 0))) + (uint)(0)))].BindlessParameters_PostProcessLearningHolo_CD._learningEffectRatio);
  _45 = WaveReadLaneFirst(_materialIndex);
  _53 = WaveReadLaneFirst(BindlessParameters_PostProcessLearningHolo_CD[((int)((uint)((uint)(select(((uint)_45 < (uint)170000), _45, 0))) + (uint)(0)))].BindlessParameters_PostProcessLearningHolo_CD._noiseTexture);
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_55.x, _55.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _89 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_55.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_53 < (uint)65000), _53, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_42 + (TEXCOORD.x * 5.0f)), (_42 + (TEXCOORD.y * 0.1f)))))).y) * 0.016f) + -0.007968628f) * saturate(1.0f - _42)) + TEXCOORD.y) * (((float)((int)((int)((float)((int)((int)(_55.y))))))) + 0.5f))), 0));
  _91 = _89.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _95 = (((float)((uint)((uint)((uint)((uint)(_89.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _100 = (((float)((uint)((uint)(((uint)((uint)(_89.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _102 = 1.0f - abs(_95);
  _103 = abs(_100);
  _104 = _102 - _103;
  if (!(_104 >= 0.0f)) {
    _115 = (select((_100 >= 0.0f), 1.0f, -1.0f) * _102);
    _116 = (select((_95 >= 0.0f), 1.0f, -1.0f) * (1.0f - _103));
  } else {
    _115 = _100;
    _116 = _95;
  }
  _118 = rsqrt(dot(float3(_116, _115, _104), float3(_116, _115, _104)));  // [sem: invLength]
  _119 = _118 * _116;
  _120 = _118 * _115;
  _121 = _118 * _104;
  _123 = rsqrt(dot(float3(_119, _120, _121), float3(_119, _120, _121)));  // [sem: invLength]
  _124 = _123 * _119;
  _125 = _123 * _120;
  _126 = _123 * _121;
  _127 = (_42 > 0.001f);
  if (_91 == _renderPassLearning) {
    if (_127) {
      _135 = -0.0f - _viewDir.x;
      _137 = -0.0f - _viewDir.y;
      _139 = -0.0f - _viewDir.z;
      _141 = saturate(dot(float3(_124, _125, _126), float3(_135, _137, _139)));  // [sem: expr_sat]
      _142 = 1.0f - _141;
      _147 = (uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f);
      _151 = (uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f);
      _153 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_147, _151, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _156 = __3__36__0__0__g_gbufferNormal.Load(int3(_147, _151, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _163 = (saturate(_156.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _167 = (saturate(_156.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _171 = (saturate(_156.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _173 = rsqrt(dot(float3(_163, _167, _171), float3(_163, _167, _171)));  // [sem: invLength]
      _174 = _173 * _163;
      _175 = _173 * _167;
      _176 = _171 * _173;
      _181 = (((float)((uint)((uint)(((uint)((uint)(_153.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _185 = (((float)((uint)((uint)(_153.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _187 = (_181 + _185) * 0.5f;
      _189 = (_181 - _185) * 0.5f;
      _193 = (1.0f - abs(_187)) - abs(_189);
      _195 = rsqrt(dot(float3(_187, _189, _193), float3(_187, _189, _193)));  // [sem: invLength]
      _196 = _195 * _187;
      _197 = _195 * _189;
      _198 = _195 * _193;
      _200 = select((_176 >= 0.0f), 1.0f, -1.0f);
      _203 = -0.0f - (1.0f / (_200 + _176));
      _204 = _175 * _203;
      _205 = _204 * _174;
      _206 = _200 * _174;
      _212 = mad(_198, _174, mad(_197, _205, ((((_206 * _174) * _203) + 1.0f) * _196)));
      _218 = mad(_198, _175, mad(_197, ((_204 * _175) + _200), ((_196 * _200) * _205)));
      _223 = mad(_198, _176, mad(_197, (-0.0f - _175), (-0.0f - (_206 * _196))));
      _225 = rsqrt(dot(float3(_212, _218, _223), float3(_212, _218, _223)));  // [sem: invLength]
      _229 = dot(float3((_225 * _212), (_225 * _218), (_225 * _223)), float3(_135, _137, _139));
      _230 = 1.0f - _229;
      _233 = WaveReadLaneFirst(_materialIndex);
      _241 = WaveReadLaneFirst(BindlessParameters_PostProcessLearningHolo_CD[((int)((uint)((uint)(select(((uint)_233 < (uint)170000), _233, 0))) + (uint)(0)))].BindlessParameters_PostProcessLearningHolo_CD._learningEffectColor);
      _244 = (float)((uint)((uint)(((uint)((uint)(_241)) >> 16) & 255)));
      _247 = (float)((uint)((uint)(((uint)((uint)(_241)) >> 8) & 255)));
      _249 = (float)((uint)((uint)(_241 & 255)));
      _252 = max(0.001f, _exposure0.x);
      _264 = saturate((abs(sin(((_126 * 2.0f) + (TEXCOORD.y * 500.0f)) + (_time.x * 10.0f))) * 3.0f) + -2.0f);  // [sem: expr_sat]
      _265 = _229 * _141;
      _290 = (_265 * _265) * (((saturate((abs(sin(((_124 * 0.25f) + (TEXCOORD.y * 25.0f)) + (_time.x * 1.2f))) * 3.0f) + -1.0f) - _264) * saturate((abs(sin(((_125 * 2.0f) + (TEXCOORD.y * 10.0f)) - (_time.x * 2.0f))) * 3.0f) + -2.0f)) + _264);
      _291 = dot(float3(_28.x, _28.y, _28.z), float3(0.2126f, 0.7152f, 0.0722f));
      _303 = ((select(((_244 * 0.003921569f) < 0.04045f), (_244 * 0.000303527f), exp2(log2((_244 * 0.003717127f) + 0.052132703f) * 2.4f)) / _252) + _291) * _290;
      _315 = ((select(((_247 * 0.003921569f) < 0.04045f), (_247 * 0.000303527f), exp2(log2((_247 * 0.003717127f) + 0.052132703f) * 2.4f)) / _252) + _291) * _290;
      _327 = ((select(((_249 * 0.003921569f) < 0.04045f), (_249 * 0.000303527f), exp2(log2((_249 * 0.003717127f) + 0.052132703f) * 2.4f)) / _252) + _291) * _290;
      _332 = exp2(log2(_230 * _142) * 3.0f) * 10.0f;
      _334 = (_332 * _303) + _303;
      _336 = (_332 * _315) + _315;
      _338 = (_332 * _327) + _327;
      // [sem: expr_sat]
      _360 = saturate((_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x))) - (_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x))));
      _367 = (saturate(1.0f - abs((_42 * 2.0f) + -1.0f)) * 199.0f) + 1.0f;
      if (_360 < 1.0f) {
        _371 = log2(1.0f - _360);
        _377 = exp2(_371 * 8.0f) * (pow(_360, 3.0f));
        _379 = (_377 * 600.0f) / _252;
        _413 = saturate(exp2(_371 * 3.0f) * _42);  // [sem: expr_sat]
        _414 = ((((_377 * 1800.0f) / _252) + _338) * _367);
        _415 = ((_379 + _336) * _367);
        _416 = ((_379 + _334) * _367);
      } else {
        if (_91 == _renderPassAimHighlight) {
          _399 = ((_230 - _142) * 0.4f) + _142;
          _413 = _42;  // [sem: expr_sat]
          _414 = ((((_399 * 2.0f) / _252) + _338) * _367);
          _415 = ((((_399 * 1.2f) / _252) + _336) * _367);
          _416 = ((((_399 * 0.8f) / _252) + _334) * _367);
        } else {
          _413 = 0.0f;  // [sem: expr_sat]
          _414 = _28.z;
          _415 = _28.y;
          _416 = _28.x;
        }
      }
      _419 = ((_42 * 3.0f) * _413) + 1.0f;
      _720 = _413;
      _721 = _414;
      _722 = _415;
      _723 = _416;
      _724 = (_419 * _28.z);
      _725 = (_419 * _28.y);
      _726 = (_419 * _28.x);
    } else {
      _720 = 0.0f;
      _721 = _28.z;
      _722 = _28.y;
      _723 = _28.x;
      _724 = _28.z;
      _725 = _28.y;
      _726 = _28.x;
    }
  } else {
    if (_127) {
      if (_91 == _renderPassAimHighlight) {
        _431 = -0.0f - _viewDir.x;
        _433 = -0.0f - _viewDir.y;
        _435 = -0.0f - _viewDir.z;
        _437 = saturate(dot(float3(_124, _125, _126), float3(_431, _433, _435)));  // [sem: expr_sat]
        _438 = 1.0f - _437;
        _443 = (uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f);
        _447 = (uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f);
        _449 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_443, _447, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
        _452 = __3__36__0__0__g_gbufferNormal.Load(int3(_443, _447, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
        _459 = (saturate(_452.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _463 = (saturate(_452.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _467 = (saturate(_452.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _469 = rsqrt(dot(float3(_459, _463, _467), float3(_459, _463, _467)));  // [sem: invLength]
        _470 = _469 * _459;
        _471 = _469 * _463;
        _472 = _467 * _469;
        _477 = (((float)((uint)((uint)(((uint)((uint)(_449.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _481 = (((float)((uint)((uint)(_449.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _483 = (_477 + _481) * 0.5f;
        _485 = (_477 - _481) * 0.5f;
        _489 = (1.0f - abs(_483)) - abs(_485);
        _491 = rsqrt(dot(float3(_483, _485, _489), float3(_483, _485, _489)));  // [sem: invLength]
        _492 = _491 * _483;
        _493 = _491 * _485;
        _494 = _491 * _489;
        _496 = select((_472 >= 0.0f), 1.0f, -1.0f);
        _499 = -0.0f - (1.0f / (_496 + _472));
        _500 = _471 * _499;
        _501 = _500 * _470;
        _502 = _496 * _470;
        _508 = mad(_494, _470, mad(_493, _501, ((((_502 * _470) * _499) + 1.0f) * _492)));
        _514 = mad(_494, _471, mad(_493, ((_500 * _471) + _496), ((_492 * _496) * _501)));
        _519 = mad(_494, _472, mad(_493, (-0.0f - _471), (-0.0f - (_502 * _492))));
        _521 = rsqrt(dot(float3(_508, _514, _519), float3(_508, _514, _519)));  // [sem: invLength]
        _525 = dot(float3((_521 * _508), (_521 * _514), (_521 * _519)), float3(_431, _433, _435));
        _526 = 1.0f - _525;
        _529 = WaveReadLaneFirst(_materialIndex);
        _537 = WaveReadLaneFirst(BindlessParameters_PostProcessLearningHolo_CD[((int)((uint)((uint)(select(((uint)_529 < (uint)170000), _529, 0))) + (uint)(0)))].BindlessParameters_PostProcessLearningHolo_CD._learningEffectColor);
        _540 = (float)((uint)((uint)(((uint)((uint)(_537)) >> 16) & 255)));
        _543 = (float)((uint)((uint)(((uint)((uint)(_537)) >> 8) & 255)));
        _545 = (float)((uint)((uint)(_537 & 255)));
        _548 = max(0.001f, _exposure0.x);
        _560 = saturate((abs(sin(((_126 * 2.0f) + (TEXCOORD.y * 500.0f)) + (_time.x * 10.0f))) * 3.0f) + -2.0f);  // [sem: expr_sat]
        _561 = _525 * _437;
        _586 = (_561 * _561) * (((saturate((abs(sin(((_124 * 0.25f) + (TEXCOORD.y * 25.0f)) + (_time.x * 1.2f))) * 3.0f) + -1.0f) - _560) * saturate((abs(sin(((_125 * 2.0f) + (TEXCOORD.y * 10.0f)) - (_time.x * 2.0f))) * 3.0f) + -2.0f)) + _560);
        _587 = dot(float3(_28.x, _28.y, _28.z), float3(0.2126f, 0.7152f, 0.0722f));
        _599 = ((select(((_540 * 0.003921569f) < 0.04045f), (_540 * 0.000303527f), exp2(log2((_540 * 0.003717127f) + 0.052132703f) * 2.4f)) / _548) + _587) * _586;
        _611 = ((select(((_543 * 0.003921569f) < 0.04045f), (_543 * 0.000303527f), exp2(log2((_543 * 0.003717127f) + 0.052132703f) * 2.4f)) / _548) + _587) * _586;
        _623 = ((select(((_545 * 0.003921569f) < 0.04045f), (_545 * 0.000303527f), exp2(log2((_545 * 0.003717127f) + 0.052132703f) * 2.4f)) / _548) + _587) * _586;
        _628 = exp2(log2(_526 * _438) * 3.0f) * 10.0f;
        _630 = (_628 * _599) + _599;
        _632 = (_628 * _611) + _611;
        _634 = (_628 * _623) + _623;
        // [sem: expr_sat]
        _656 = saturate((_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x))) - (_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x))));
        _663 = (saturate(1.0f - abs((_42 * 2.0f) + -1.0f)) * 199.0f) + 1.0f;
        if (_656 < 1.0f) {
          _667 = log2(1.0f - _656);
          _673 = exp2(_667 * 8.0f) * (pow(_656, 3.0f));
          _675 = (_673 * 600.0f) / _548;
          _709 = saturate(exp2(_667 * 3.0f) * _42);  // [sem: expr_sat]
          _710 = ((((_673 * 1800.0f) / _548) + _634) * _663);
          _711 = ((_675 + _632) * _663);
          _712 = ((_675 + _630) * _663);
        } else {
          if (_91 == _renderPassAimHighlight) {
            _695 = ((_526 - _438) * 0.4f) + _438;
            _709 = _42;  // [sem: expr_sat]
            _710 = ((((_695 * 2.0f) / _548) + _634) * _663);
            _711 = ((((_695 * 1.2f) / _548) + _632) * _663);
            _712 = ((((_695 * 0.8f) / _548) + _630) * _663);
          } else {
            _709 = 0.0f;  // [sem: expr_sat]
            _710 = _28.z;
            _711 = _28.y;
            _712 = _28.x;
          }
        }
        _715 = ((_42 * 3.0f) * _709) + 1.0f;
        _720 = _709;
        _721 = _710;
        _722 = _711;
        _723 = _712;
        _724 = (_715 * _28.z);
        _725 = (_715 * _28.y);
        _726 = (_715 * _28.x);
      } else {
        _720 = 0.0f;
        _721 = _28.z;
        _722 = _28.y;
        _723 = _28.x;
        _724 = _28.z;
        _725 = _28.y;
        _726 = _28.x;
      }
    } else {
      _720 = 0.0f;
      _721 = _28.z;
      _722 = _28.y;
      _723 = _28.x;
      _724 = _28.z;
      _725 = _28.y;
      _726 = _28.x;
    }
  }
  _729 = ((_723 - _726) * _720) + _726;
  _732 = ((_722 - _725) * _720) + _725;
  _735 = ((_721 - _724) * _720) + _724;
  _736 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _749 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _736, 0)))).x) & 127)))) + 0.5f);
  } else {
    _749 = 1.0f;
  }
  _752 = (_localToneMappingParams.w > 0.0f);
  if (_752) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_729, _732, _735));
    _1000 = _rndx_tonemapped_color.x;
    _1007 = _rndx_tonemapped_color.y;
    _1014 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1020 = 1.0f - abs(_etcParams.w);
      _1021 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1023 = (_1020 * _1000) + _1021;
      _1025 = (_1020 * _1007) + _1021;
      _1027 = (_1020 * _1014) + _1021;
      if (_colorGradingParams.w > 0.0f) {
        _1032 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1049 = (((max(0.0f, (1.0f - _1027)) - _1027) * _1032) + _1027);
        _1050 = (((max(0.0f, (1.0f - _1025)) - _1025) * _1032) + _1025);
        _1051 = (((max(0.0f, (1.0f - _1023)) - _1023) * _1032) + _1023);
      } else {
        _1049 = _1027;
        _1050 = _1025;
        _1051 = _1023;
      }
      _1053 = _userImageAdjust.y + 1.0f;
      _1055 = _userImageAdjust.x + 0.5f;
      _1058 = ((_1051 + -0.5f) * _1053) + _1055;
      _1061 = ((_1050 + -0.5f) * _1053) + _1055;
      _1064 = ((_1049 + -0.5f) * _1053) + _1055;
      _1070 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1105 = exp2(log2(saturate(mad(_colorBlind2.z, _1064, mad(_colorBlind2.y, _1061, (_colorBlind2.x * _1058))))) * _1070);
      _1106 = exp2(log2(saturate(mad(_colorBlind1.z, _1064, mad(_colorBlind1.y, _1061, (_colorBlind1.x * _1058))))) * _1070);
      _1107 = exp2(log2(saturate(mad(_colorBlind0.z, _1064, mad(_colorBlind0.y, _1061, (_colorBlind0.x * _1058))))) * _1070);
    } else {
      _1105 = _1014;
      _1106 = _1007;
      _1107 = _1000;
    }
  } else {
    _1105 = _735;
    _1106 = _732;
    _1107 = _729;
  }
  if (_etcParams.y > 1.0f) {
    _1112 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1115 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _1121 = saturate(1.0f - (dot(float2(_1112, _1115), float2(_1112, _1115)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _1126 = (_1121 * _1105);
    _1127 = (_1121 * _1106);
    _1128 = (_1121 * _1107);
  } else {
    _1126 = _1105;
    _1127 = _1106;
    _1128 = _1107;
  }
  if (_752 && (_etcParams.z > 0.0f)) {
    _1158 = select((_1126 <= 0.0031308f), (_1126 * 12.92f), (((pow(_1126, 0.41666666f)) * 1.055f) + -0.055f));
    _1159 = select((_1127 <= 0.0031308f), (_1127 * 12.92f), (((pow(_1127, 0.41666666f)) * 1.055f) + -0.055f));
    _1160 = select((_1128 <= 0.0031308f), (_1128 * 12.92f), (((pow(_1128, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1158 = _1126;
    _1159 = _1127;
    _1160 = _1128;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1163 = (float)((uint)((uint)(_736)));
    if (!(_1163 < _viewDir.w)) {
      if (!(!(_1163 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1174 = 0.0f;
        _1175 = 0.0f;
        _1176 = 0.0f;
      } else {
        _1174 = _1158;
        _1175 = _1159;
        _1176 = _1160;
      }
    } else {
      _1174 = 0.0f;
      _1175 = 0.0f;
      _1176 = 0.0f;
    }
  } else {
    _1174 = _1158;
    _1175 = _1159;
    _1176 = _1160;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_1176, _1175, _1174), _sunDirection.y, _moonDirection.y);
    _1176 = _rndx_final_color.x;
    _1175 = _rndx_final_color.y;
    _1174 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _1176;
  SV_Target.y = _1175;
  SV_Target.z = _1174;
  SV_Target.w = _749;
  return SV_Target;
}
