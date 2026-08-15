struct PostProcessHousing_CDStruct {
  float _housingPreviewRatio;
  uint _housingValidColor;
  uint _housingInvalidColor;
  float3 _housingCollisionBBoxMin;
  float3 _housingCollisionBBoxMax;
  float3 _housingCollisionPivot;
  float _housingCollisionYaw;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t36, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t69, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

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

struct BindlessParameters_PostProcessHousing_CD {
  PostProcessHousing_CDStruct BindlessParameters_PostProcessHousing_CD;
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
  float4 _31;
  float _41;
  float _42;
  float _43;
  float _68;
  float _69;
  float _70;
  uint2 _72;
  uint _87;
  int _89;
  float _97;
  float _98;
  float _100;
  float _101;
  float _102;
  float _113;
  float _114;
  bool _529;
  float _566;
  float _592;
  float _593;
  float _594;
  float _611;
  float _816;
  float _817;
  float _818;
  float _911;
  float _912;
  float _913;
  float _967;
  float _968;
  float _969;
  float _988;
  float _989;
  float _990;
  float _1020;
  float _1021;
  float _1022;
  float _1036;
  float _1037;
  float _1038;
  float _116;
  float _117;
  float _118;
  float _119;
  float _121;
  uint _132;
  uint _133;
  uint4 _135;
  float4 _138;
  float _156;
  float _157;
  float _158;
  float _160;
  float _161;
  float _162;
  float _163;
  float _166;
  float _167;
  float _170;
  float _171;
  float _175;
  float _177;
  float _178;
  float _179;
  float _180;
  float _182;
  float _185;
  float _186;
  float _187;
  float _188;
  float _197;
  float _201;
  float _205;
  float _207;
  float _208;
  float _209;
  float _210;
  float _229;
  int _230;
  int _238;
  float _241;
  float _244;
  float _246;
  float _271;
  float _272;
  float _273;
  int _274;
  int _282;
  float _285;
  float _288;
  float _290;
  float _315;
  float _316;
  float _317;
  int _322;
  float _330;
  float _345;
  float _349;
  int _360;
  float _368;
  float _372;
  float _376;
  int _387;
  float _395;
  float _399;
  float _404;
  float _413;
  float _415;
  float _416;
  float _452;
  float _454;
  int _456;
  float _466;
  float _467;
  float _468;
  int _469;
  float _479;
  float _480;
  float _481;
  int _482;
  float _492;
  float _493;
  float _494;
  int _495;
  float _503;
  float _504;
  float _505;
  float _506;
  float _507;
  float _508;
  float _514;
  float _516;
  float _551;
  int _552;
  float _560;
  float _580;
  float _584;
  float _595;
  float _596;
  float _597;
  uint _598;
  bool _614;
  float _620;
  float _669;
  float _670;
  float _671;
  float _673;
  float _680;
  float _681;
  float _682;
  float _701;
  float _702;
  float _703;
  float _704;
  float _705;
  float _706;
  float _707;
  float _708;
  float _709;
  float _755;
  float _756;
  float _757;
  float _758;
  float _759;
  float _760;
  float _761;
  float _778;
  float _779;
  float _780;
  float _781;
  float _787;
  float _790;
  float _797;
  float _798;
  float _799;
  float _828;
  float _853;
  float _854;
  float _855;
  float _874;
  float _875;
  float _876;
  float _882;
  float _886;
  float _887;
  float _888;
  float _889;
  float _894;
  float _919;
  float _923;
  float _924;
  float _925;
  float _926;
  float _956;
  float _978;
  float _979;
  float _983;
  float _1027;
  float _1048;
  float _1049;
  float _1050;
  _31 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _41 = (pow(_31.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _42 = (pow(_31.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _43 = (pow(_31.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _68 = exp2(log2(max(0.0f, (_41 + -0.8359375f)) / (18.851562f - (_41 * 18.6875f))) * 6.277395f) * 10000.0f;
  _69 = exp2(log2(max(0.0f, (_42 + -0.8359375f)) / (18.851562f - (_42 * 18.6875f))) * 6.277395f) * 10000.0f;
  _70 = exp2(log2(max(0.0f, (_43 + -0.8359375f)) / (18.851562f - (_43 * 18.6875f))) * 6.277395f) * 10000.0f;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_72.x, _72.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _87 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_72.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_72.y))))))) + 0.5f) * TEXCOORD.y)), 0));
  _89 = _87.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _97 = (((float)((uint)((uint)((uint)((uint)(_87.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _98 = (((float)((uint)((uint)(((uint)((uint)(_87.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _100 = 1.0f - abs(_97);
  _101 = abs(_98);
  _102 = _100 - _101;
  if (!(_102 >= 0.0f)) {
    _113 = (select((_97 >= 0.0f), 1.0f, -1.0f) * (1.0f - _101));
    _114 = (select((_98 >= 0.0f), 1.0f, -1.0f) * _100);
  } else {
    _113 = _97;
    _114 = _98;
  }
  _116 = rsqrt(dot(float3(_113, _114, _102), float3(_113, _114, _102)));  // [sem: invLength]
  _117 = _116 * _113;
  _118 = _116 * _114;
  _119 = _116 * _102;
  _121 = rsqrt(dot(float3(_117, _118, _119), float3(_117, _118, _119)));  // [sem: invLength]
  _132 = (uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f);
  _133 = (uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f);
  _135 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_132, _133, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _138 = __3__36__0__0__g_gbufferNormal.Load(int3(_132, _133, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _156 = (saturate(_138.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _157 = (saturate(_138.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _158 = (saturate(_138.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _160 = rsqrt(dot(float3(_156, _157, _158), float3(_156, _157, _158)));  // [sem: invLength]
  _161 = _160 * _156;
  _162 = _160 * _157;
  _163 = _158 * _160;
  _166 = (((float)((uint)((uint)(((uint)((uint)(_135.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _167 = (((float)((uint)((uint)(_135.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _170 = (_166 + _167) * 0.5f;
  _171 = (_166 - _167) * 0.5f;
  _175 = (1.0f - abs(_170)) - abs(_171);
  _177 = rsqrt(dot(float3(_170, _171, _175), float3(_170, _171, _175)));  // [sem: invLength]
  _178 = _177 * _170;
  _179 = _177 * _171;
  _180 = _177 * _175;
  _182 = select((_163 >= 0.0f), 1.0f, -1.0f);
  _185 = -0.0f - (1.0f / (_182 + _163));
  _186 = _162 * _185;
  _187 = _186 * _161;
  _188 = _182 * _161;
  _197 = mad(_180, _161, mad(_179, _187, ((((_188 * _161) * _185) + 1.0f) * _178)));
  _201 = mad(_180, _162, mad(_179, (_182 + (_186 * _162)), ((_178 * _182) * _187)));
  _205 = mad(_180, _163, mad(_179, (-0.0f - _162), (-0.0f - (_188 * _178))));
  _207 = rsqrt(dot(float3(_197, _201, _205), float3(_197, _201, _205)));  // [sem: invLength]
  _208 = _207 * _197;
  _209 = _207 * _201;
  _210 = _207 * _205;
  _229 = 1.0f - abs(dot(float3(((((_121 * _117) - _208) * 0.5f) + _208), ((((_121 * _118) - _209) * 0.5f) + _209), ((((_121 * _119) - _210) * 0.5f) + _210)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
  _230 = WaveReadLaneFirst(_materialIndex);
  _238 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_230 < (uint)170000), _230, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingValidColor);
  _241 = (float)((uint)((uint)(((uint)((uint)(_238)) >> 16) & 255)));
  _244 = (float)((uint)((uint)(((uint)((uint)(_238)) >> 8) & 255)));
  _246 = (float)((uint)((uint)(_238 & 255)));
  _271 = select(((_241 * 0.003921569f) < 0.04045f), (_241 * 0.000303527f), exp2(log2((_241 * 0.003717127f) + 0.052132703f) * 2.4f));
  _272 = select(((_244 * 0.003921569f) < 0.04045f), (_244 * 0.000303527f), exp2(log2((_244 * 0.003717127f) + 0.052132703f) * 2.4f));
  _273 = select(((_246 * 0.003921569f) < 0.04045f), (_246 * 0.000303527f), exp2(log2((_246 * 0.003717127f) + 0.052132703f) * 2.4f));
  _274 = WaveReadLaneFirst(_materialIndex);
  _282 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_274 < (uint)170000), _274, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingInvalidColor);
  _285 = (float)((uint)((uint)(((uint)((uint)(_282)) >> 16) & 255)));
  _288 = (float)((uint)((uint)(((uint)((uint)(_282)) >> 8) & 255)));
  _290 = (float)((uint)((uint)(_282 & 255)));
  _315 = select(((_285 * 0.003921569f) < 0.04045f), (_285 * 0.000303527f), exp2(log2((_285 * 0.003717127f) + 0.052132703f) * 2.4f));
  _316 = select(((_288 * 0.003921569f) < 0.04045f), (_288 * 0.000303527f), exp2(log2((_288 * 0.003717127f) + 0.052132703f) * 2.4f));
  _317 = select(((_290 * 0.003921569f) < 0.04045f), (_290 * 0.000303527f), exp2(log2((_290 * 0.003717127f) + 0.052132703f) * 2.4f));
  if (_89 == _renderPassHousing) {
    _322 = WaveReadLaneFirst(_materialIndex);
    _330 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_322 < (uint)170000), _322, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
    _345 = max(0.001f, _exposure0.x);
    _349 = saturate(_330 * _229);  // [sem: expr_sat]
    _592 = (_349 * ((((_housingPreviewState * (_315 - _271)) + _271) / _345) - _68));
    _593 = (_349 * ((((_housingPreviewState * (_316 - _272)) + _272) / _345) - _69));
    _594 = (_349 * ((((_housingPreviewState * (_317 - _273)) + _273) / _345) - _70));
  } else {
    if (_89 == _renderPassHousingSelected) {
      _360 = WaveReadLaneFirst(_materialIndex);
      _368 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_360 < (uint)170000), _360, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
      _372 = max(0.001f, _exposure0.x);
      _376 = saturate(_368 * _229);  // [sem: expr_sat]
      _592 = (_376 * ((_271 / _372) - _68));
      _593 = (_376 * ((_272 / _372) - _69));
      _594 = (_376 * ((_273 / _372) - _70));
    } else {
      if (_89 == _renderPassHousingHover) {
        _387 = WaveReadLaneFirst(_materialIndex);
        _395 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_387 < (uint)170000), _387, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
        _399 = max(0.001f, _exposure0.x);
        _404 = saturate(_395 * _229) * 0.35f;
        _592 = (_404 * ((_271 / _399) - _68));
        _593 = (_404 * ((_272 / _399) - _69));
        _594 = (_404 * ((_273 / _399) - _70));
      } else {
        _413 = (TEXCOORD.x * 2.0f) + -1.0f;
        _415 = 1.0f - (TEXCOORD.y * 2.0f);
        _416 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
        _452 = mad((_invViewProj[3].z), _416, mad((_invViewProj[3].y), _415, ((_invViewProj[3].x) * _413))) + (_invViewProj[3].w);
        _454 = (mad((_invViewProj[1].z), _416, mad((_invViewProj[1].y), _415, ((_invViewProj[1].x) * _413))) + (_invViewProj[1].w)) / _452;
        _456 = WaveReadLaneFirst(_materialIndex);
        _466 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_456 < (uint)170000), _456, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMin.x);
        _467 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_456 < (uint)170000), _456, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMin.y);
        _468 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_456 < (uint)170000), _456, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMin.z);
        _469 = WaveReadLaneFirst(_materialIndex);
        _479 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_469 < (uint)170000), _469, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMax.x);
        _480 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_469 < (uint)170000), _469, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMax.y);
        _481 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_469 < (uint)170000), _469, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionBBoxMax.z);
        _482 = WaveReadLaneFirst(_materialIndex);
        _492 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_482 < (uint)170000), _482, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionPivot.x);
        _493 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_482 < (uint)170000), _482, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionPivot.y);
        _494 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_482 < (uint)170000), _482, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionPivot.z);
        _495 = WaveReadLaneFirst(_materialIndex);
        _503 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_495 < (uint)170000), _495, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingCollisionYaw);
        _504 = _503 * 0.017453292f;
        _505 = sin(_504);
        _506 = cos(_504);
        _507 = ((mad((_invViewProj[0].z), _416, mad((_invViewProj[0].y), _415, ((_invViewProj[0].x) * _413))) + (_invViewProj[0].w)) / _452) - _492;
        _508 = ((mad((_invViewProj[2].z), _416, mad((_invViewProj[2].y), _415, ((_invViewProj[2].x) * _413))) + (_invViewProj[2].w)) / _452) - _494;
        _514 = ((_506 * _507) - (_505 * _508)) + _492;
        _516 = ((_505 * _507) + _494) + (_506 * _508);
        if ((_454 < _480) && ((_514 < _479) && (_514 > _466))) {
          _529 = ((_516 > _468) && ((_454 > _467) && (_516 < _481)));
        } else {
          _529 = false;
        }
        if (_529) {
          _551 = max(saturate(((abs(_514 - ((_479 + _466) * 0.5f)) * 2.0f) + 1.0f) - abs(_479 - _466)), saturate(((abs(_516 - ((_481 + _468) * 0.5f)) * 2.0f) + 1.0f) - abs(_481 - _468)));
          _552 = WaveReadLaneFirst(_materialIndex);
          _560 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing_CD[((int)((uint)((uint)(select(((uint)_552 < (uint)170000), _552, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing_CD._housingPreviewRatio);
          _566 = (((_551 * _551) * (_229 * 0.5f)) * _560);
        } else {
          _566 = 0.0f;
        }
        _580 = max(0.001f, _exposure0.x);
        _584 = saturate(_566);  // [sem: _566_sat]
        _592 = (_584 * ((((_housingPreviewState * (_315 - _271)) + _271) / _580) - _68));
        _593 = (_584 * ((((_housingPreviewState * (_316 - _272)) + _272) / _580) - _69));
        _594 = (_584 * ((((_housingPreviewState * (_317 - _273)) + _273) / _580) - _70));
      }
    }
  }
  _595 = _70 + _594;
  _596 = _69 + _593;
  _597 = _68 + _592;
  _598 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _611 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _598, 0)))).x) & 127)))) + 0.5f);
  } else {
    _611 = 1.0f;
  }
  _614 = (_localToneMappingParams.w > 0.0f);
  if (_614) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_597, _596, _595));
    _874 = _rndx_tonemapped_color.x;
    _875 = _rndx_tonemapped_color.y;
    _876 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _882 = 1.0f - abs(_etcParams.w);
      _886 = saturate(_etcParams.w);  // [sem: expr_sat]
      _887 = (_882 * _874) + _886;
      _888 = (_882 * _875) + _886;
      _889 = (_882 * _876) + _886;
      if (_colorGradingParams.w > 0.0f) {
        _894 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _911 = (((max(0.0f, (1.0f - _887)) - _887) * _894) + _887);
        _912 = (((max(0.0f, (1.0f - _888)) - _888) * _894) + _888);
        _913 = (((max(0.0f, (1.0f - _889)) - _889) * _894) + _889);
      } else {
        _911 = _887;
        _912 = _888;
        _913 = _889;
      }
      _919 = _userImageAdjust.y + 1.0f;
      _923 = _userImageAdjust.x + 0.5f;
      _924 = ((_911 + -0.5f) * _919) + _923;
      _925 = ((_912 + -0.5f) * _919) + _923;
      _926 = ((_913 + -0.5f) * _919) + _923;
      _956 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _967 = exp2(log2(saturate(mad(_colorBlind0.z, _926, mad(_colorBlind0.y, _925, (_colorBlind0.x * _924))))) * _956);
      _968 = exp2(log2(saturate(mad(_colorBlind1.z, _926, mad(_colorBlind1.y, _925, (_colorBlind1.x * _924))))) * _956);
      _969 = exp2(log2(saturate(mad(_colorBlind2.z, _926, mad(_colorBlind2.y, _925, (_colorBlind2.x * _924))))) * _956);
    } else {
      _967 = _874;
      _968 = _875;
      _969 = _876;
    }
  } else {
    _967 = _597;
    _968 = _596;
    _969 = _595;
  }
  if (_etcParams.y > 1.0f) {
    _978 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _979 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _983 = saturate(1.0f - (dot(float2(_978, _979), float2(_978, _979)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _988 = (_983 * _967);
    _989 = (_983 * _968);
    _990 = (_983 * _969);
  } else {
    _988 = _967;
    _989 = _968;
    _990 = _969;
  }
  if (_614 && (_etcParams.z > 0.0f)) {
    _1020 = select((_988 <= 0.0031308f), (_988 * 12.92f), (((pow(_988, 0.41666666f)) * 1.055f) + -0.055f));
    _1021 = select((_989 <= 0.0031308f), (_989 * 12.92f), (((pow(_989, 0.41666666f)) * 1.055f) + -0.055f));
    _1022 = select((_990 <= 0.0031308f), (_990 * 12.92f), (((pow(_990, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1020 = _988;
    _1021 = _989;
    _1022 = _990;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1027 = (float)((uint)((uint)(_598)));
    if (!(_1027 < _viewDir.w)) {
      if (!(_1027 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1036 = _1020;
        _1037 = _1021;
        _1038 = _1022;
      } else {
        _1036 = 0.0f;
        _1037 = 0.0f;
        _1038 = 0.0f;
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
  _1048 = exp2(log2(_1036 * 0.0001f) * 0.15930176f);
  _1049 = exp2(log2(_1037 * 0.0001f) * 0.15930176f);
  _1050 = exp2(log2(_1038 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1048 * 18.6875f) + 1.0f)) * ((_1048 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1049 * 18.6875f) + 1.0f)) * ((_1049 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1050 * 18.6875f) + 1.0f)) * ((_1050 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _611;
  return SV_Target;
}
