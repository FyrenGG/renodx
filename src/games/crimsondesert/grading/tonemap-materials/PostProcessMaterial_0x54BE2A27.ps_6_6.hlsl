struct PostProcessTransitionStruct {
  uint _sceneSampleType;
  uint _sceneDistortTex;
  float2 _sceneDistortTexScale;
  float2 _sceneDistortIntensity;
  float _scenePolarDistort;
  float2 _scenePolarDistortCenter;
  float _topVignetteRatio;
  float _topVignetteRadius;
  float _topVignettePower;
  uint _topVignetteColor;
  float _sideVignetteRatio;
  float _sideVignetteRadius;
  float _sideVignettePower;
  uint _sideVignetteColor;
  float _bottomVignetteRatio;
  float _bottomVignetteRadius;
  float _bottomVignettePower;
  uint _bottomVignetteColor;
  float _impactFrame;
  float _impactFrameFresnel;
  float _impactFrameFresnelIntensity;
  float _impactFrameInverse;
  uint _chapterTransitionTex;
  uint _chapterTransitionNoiseTex;
  float _chapterTransition;
  float _chapterTransitionUseDivide;
};

struct BindlessParameters_PostProcessTransition {
  PostProcessTransitionStruct BindlessParameters_PostProcessTransition;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t37, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t70, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

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

typedef BindlessParameters_PostProcessTransition BindlessParameters_PostProcessTransition_t;
ConstantBuffer<BindlessParameters_PostProcessTransition_t> BindlessParameters_PostProcessTransition[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticBilinearBlackBorder : register(s4, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _29;
  float _37;
  float _177;
  float _178;
  float _591;
  float _592;
  float _593;
  float _594;
  float _595;
  float _596;
  float _597;
  int _645;
  float _713;
  float _728;
  float _729;
  float _730;
  float _864;
  float _865;
  float _866;
  float _966;
  float _967;
  float _968;
  float _1067;
  float _1068;
  float _1069;
  float _1290;
  float _1291;
  float _1292;
  float _1306;
  float _1511;
  float _1512;
  float _1513;
  float _1606;
  float _1607;
  float _1608;
  float _1662;
  float _1663;
  float _1664;
  float _1683;
  float _1684;
  float _1685;
  float _1715;
  float _1716;
  float _1717;
  float _1731;
  float _1732;
  float _1733;
  int _43;
  float _51;
  float _55;
  int _56;
  int _64;
  float4 _72;
  int _75;
  float _83;
  float _87;
  int _93;
  float _101;
  float _105;
  float _106;
  float _107;
  float _109;
  bool _110;
  bool _111;
  bool _112;
  bool _113;
  float _117;
  int _118;
  float _126;
  float _130;
  int _131;
  int _139;
  float4 _158;
  int _161;
  float _169;
  float _171;
  float _179;
  float _180;
  int _183;
  int _191;
  float4 _195;
  float _201;
  float _204;
  float _207;
  uint _212;
  uint _216;
  uint4 _218;
  float4 _221;
  float _228;
  float _232;
  float _236;
  float _238;
  float _239;
  float _240;
  float _241;
  float _246;
  float _250;
  float _252;
  float _254;
  float _258;
  float _260;
  float _261;
  float _262;
  float _263;
  float _265;
  float _268;
  float _269;
  float _270;
  float _271;
  float _277;
  float _283;
  float _288;
  float _290;
  float4 _327;
  float _333;
  float _336;
  float _339;
  uint _344;
  uint _348;
  uint4 _350;
  float4 _353;
  float _360;
  float _364;
  float _368;
  float _370;
  float _371;
  float _372;
  float _373;
  float _378;
  float _382;
  float _384;
  float _386;
  float _390;
  float _392;
  float _393;
  float _394;
  float _395;
  float _397;
  float _400;
  float _401;
  float _402;
  float _403;
  float _409;
  float _415;
  float _420;
  float _422;
  float4 _460;
  float _466;
  float _469;
  float _472;
  uint _477;
  uint _481;
  uint4 _483;
  float4 _486;
  float _493;
  float _497;
  float _501;
  float _503;
  float _504;
  float _505;
  float _506;
  float _511;
  float _515;
  float _517;
  float _519;
  float _523;
  float _525;
  float _526;
  float _527;
  float _528;
  float _530;
  float _533;
  float _534;
  float _535;
  float _536;
  float _542;
  float _548;
  float _553;
  float _555;
  uint2 _599;
  int _616;
  bool _617;
  bool _618;
  int _622;
  float _630;
  float _648;
  int _651;
  float _659;
  float _662;
  int _665;
  float _673;
  float _674;
  float _690;
  int _693;
  float _701;
  float _717;
  int _733;
  float _741;
  int _744;
  float _752;
  int _755;
  float _763;
  float _766;
  float _767;
  int _770;
  float _778;
  int _781;
  float _789;
  int _792;
  int _800;
  float _803;
  float _806;
  float _808;
  float _811;
  float _826;
  float _869;
  float _870;
  int _873;
  float _881;
  int _884;
  float _892;
  int _895;
  int _903;
  float _906;
  float _909;
  float _911;
  float _914;
  float _928;
  float _971;
  float _972;
  int _975;
  float _983;
  int _986;
  float _994;
  int _997;
  int _1005;
  float _1008;
  float _1011;
  float _1013;
  float _1016;
  float _1029;
  int _1072;
  float _1080;
  float _1085;
  bool _1086;
  float _1088;
  int _1091;
  int _1099;
  float _1108;
  float4 _1111;
  float _1117;
  float _1120;
  float _1123;
  float _1132;
  float _1141;
  float _1150;
  int _1153;
  float _1161;
  float _1163;
  float _1165;
  float _1169;
  float _1175;
  float _1176;
  int _1177;
  int _1185;
  int _1186;
  int _1194;
  float _1223;
  float _1226;
  int _1248;
  int _1256;
  float4 _1264;
  float _1268;
  uint _1293;
  bool _1309;
  float _1315;
  float _1334;
  float _1350;
  float _1366;
  float _1367;
  float _1371;
  float _1374;
  float _1377;
  float _1384;
  float _1391;
  float _1398;
  float _1399;
  float _1400;
  float _1401;
  float _1402;
  float _1403;
  float _1404;
  float _1420;
  float _1436;
  float _1452;
  float _1453;
  float _1454;
  float _1455;
  float _1456;
  float _1473;
  float _1474;
  float _1475;
  float _1476;
  float _1479;
  float _1482;
  float _1486;
  float _1490;
  float _1494;
  float _1514;
  float _1526;
  float _1538;
  float _1550;
  float _1557;
  float _1564;
  float _1571;
  float _1577;
  float _1578;
  float _1580;
  float _1582;
  float _1584;
  float _1589;
  float _1610;
  float _1612;
  float _1615;
  float _1618;
  float _1621;
  float _1627;
  float _1669;
  float _1672;
  float _1678;
  float _1720;
  float _1737;
  float _1741;
  float _1745;
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_29 < (uint)170000), _29, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._scenePolarDistort);
  if (!(_37 >= 0.001f)) {
    _43 = WaveReadLaneFirst(_materialIndex);
    _51 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_43 < (uint)170000), _43, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTexScale.x);
    _55 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_43 < (uint)170000), _43, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTexScale.y);
    _56 = WaveReadLaneFirst(_materialIndex);
    _64 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_56 < (uint)170000), _56, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTex);
    _72 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_64 < (uint)65000), _64, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_51 * TEXCOORD.x), (_55 * TEXCOORD.y)));
    _75 = WaveReadLaneFirst(_materialIndex);
    _83 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortIntensity.x);
    _87 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortIntensity.y);
    _177 = (_87 * (_72.y + -0.5f));
    _178 = (_83 * (_72.x + -0.5f));
  } else {
    _93 = WaveReadLaneFirst(_materialIndex);
    _101 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_93 < (uint)170000), _93, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._scenePolarDistortCenter.x);
    _105 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_93 < (uint)170000), _93, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._scenePolarDistortCenter.y);
    _106 = TEXCOORD.x - _101;
    _107 = TEXCOORD.y - _105;
    _109 = atan(_107 / _106);
    _110 = (_106 < 0.0f);
    _111 = (_106 == 0.0f);
    _112 = (_107 >= 0.0f);
    _113 = (_107 < 0.0f);
    _117 = sqrt((_107 * _107) + (_106 * _106));
    _118 = WaveReadLaneFirst(_materialIndex);
    _126 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_118 < (uint)170000), _118, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTexScale.x);
    _130 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_118 < (uint)170000), _118, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTexScale.y);
    _131 = WaveReadLaneFirst(_materialIndex);
    _139 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_131 < (uint)170000), _131, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTex);
    _158 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_139 < (uint)65000), _139, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_126 * select((_111 && _112), 0.5f, select((_111 && _113), -0.5f, (select((_110 && _113), (_109 + -3.1415927f), select((_110 && _112), (_109 + 3.1415927f), _109)) * 0.31830987f)))), (_130 * _117)));
    _161 = WaveReadLaneFirst(_materialIndex);
    _169 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_161 < (uint)170000), _161, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._scenePolarDistort);
    _171 = saturate(_117) * _169;
    _177 = (_171 * (_158.y + -0.5f));
    _178 = (_171 * (_158.x + -0.5f));
  }
  _179 = TEXCOORD.x - _178;
  _180 = TEXCOORD.y - _177;
  _183 = WaveReadLaneFirst(_materialIndex);
  _191 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_183 < (uint)170000), _183, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneSampleType);
  switch (_191) {
    case 0: {
      _195 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_179, _180));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _201 = (pow(_195.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _204 = (pow(_195.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _207 = (pow(_195.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _212 = (uint)((_bufferSizeAndInvSize.x * _179) + -0.5f);
      _216 = (uint)((_bufferSizeAndInvSize.y * _180) + -0.5f);
      _218 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_212, _216, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _221 = __3__36__0__0__g_gbufferNormal.Load(int3(_212, _216, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _228 = (saturate(_221.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _232 = (saturate(_221.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _236 = (saturate(_221.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _238 = rsqrt(dot(float3(_228, _232, _236), float3(_228, _232, _236)));  // [sem: invLength]
      _239 = _238 * _228;
      _240 = _238 * _232;
      _241 = _236 * _238;
      _246 = (((float)((uint)((uint)(((uint)((uint)(_218.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _250 = (((float)((uint)((uint)(_218.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _252 = (_246 + _250) * 0.5f;
      _254 = (_246 - _250) * 0.5f;
      _258 = (1.0f - abs(_252)) - abs(_254);
      _260 = rsqrt(dot(float3(_252, _254, _258), float3(_252, _254, _258)));  // [sem: invLength]
      _261 = _260 * _252;
      _262 = _260 * _254;
      _263 = _260 * _258;
      _265 = select((_241 >= 0.0f), 1.0f, -1.0f);
      _268 = -0.0f - (1.0f / (_265 + _241));
      _269 = _240 * _268;
      _270 = _269 * _239;
      _271 = _265 * _239;
      _277 = mad(_263, _239, mad(_262, _270, ((((_271 * _239) * _268) + 1.0f) * _261)));
      _283 = mad(_263, _240, mad(_262, ((_269 * _240) + _265), ((_261 * _265) * _270)));
      _288 = mad(_263, _241, mad(_262, (-0.0f - _240), (-0.0f - (_271 * _261))));
      _290 = rsqrt(dot(float3(_277, _283, _288), float3(_277, _283, _288)));  // [sem: invLength]
      _591 = (_290 * _288);
      _592 = (_290 * _283);
      _593 = (_290 * _277);
      _594 = ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_179, _180))).x);
      _595 = (exp2(log2(max(0.0f, (_207 + -0.8359375f)) / (18.851562f - (_207 * 18.6875f))) * 6.277395f) * 10000.0f);
      _596 = (exp2(log2(max(0.0f, (_204 + -0.8359375f)) / (18.851562f - (_204 * 18.6875f))) * 6.277395f) * 10000.0f);
      _597 = (exp2(log2(max(0.0f, (_201 + -0.8359375f)) / (18.851562f - (_201 * 18.6875f))) * 6.277395f) * 10000.0f);
      break;
    }
    case 1: {
      _327 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_179, _180));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _333 = (pow(_327.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _336 = (pow(_327.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _339 = (pow(_327.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _344 = (uint)((_bufferSizeAndInvSize.x * _179) + -0.5f);
      _348 = (uint)((_bufferSizeAndInvSize.y * _180) + -0.5f);
      _350 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_344, _348, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _353 = __3__36__0__0__g_gbufferNormal.Load(int3(_344, _348, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _360 = (saturate(_353.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _364 = (saturate(_353.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _368 = (saturate(_353.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _370 = rsqrt(dot(float3(_360, _364, _368), float3(_360, _364, _368)));  // [sem: invLength]
      _371 = _370 * _360;
      _372 = _370 * _364;
      _373 = _368 * _370;
      _378 = (((float)((uint)((uint)(((uint)((uint)(_350.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _382 = (((float)((uint)((uint)(_350.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _384 = (_378 + _382) * 0.5f;
      _386 = (_378 - _382) * 0.5f;
      _390 = (1.0f - abs(_384)) - abs(_386);
      _392 = rsqrt(dot(float3(_384, _386, _390), float3(_384, _386, _390)));  // [sem: invLength]
      _393 = _392 * _384;
      _394 = _392 * _386;
      _395 = _392 * _390;
      _397 = select((_373 >= 0.0f), 1.0f, -1.0f);
      _400 = -0.0f - (1.0f / (_397 + _373));
      _401 = _372 * _400;
      _402 = _401 * _371;
      _403 = _397 * _371;
      _409 = mad(_395, _371, mad(_394, _402, ((((_403 * _371) * _400) + 1.0f) * _393)));
      _415 = mad(_395, _372, mad(_394, ((_401 * _372) + _397), ((_393 * _397) * _402)));
      _420 = mad(_395, _373, mad(_394, (-0.0f - _372), (-0.0f - (_403 * _393))));
      _422 = rsqrt(dot(float3(_409, _415, _420), float3(_409, _415, _420)));  // [sem: invLength]
      _591 = (_422 * _420);
      _592 = (_422 * _415);
      _593 = (_422 * _409);
      _594 = ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_179, _180))).x);
      _595 = (exp2(log2(max(0.0f, (_339 + -0.8359375f)) / (18.851562f - (_339 * 18.6875f))) * 6.277395f) * 10000.0f);
      _596 = (exp2(log2(max(0.0f, (_336 + -0.8359375f)) / (18.851562f - (_336 * 18.6875f))) * 6.277395f) * 10000.0f);
      _597 = (exp2(log2(max(0.0f, (_333 + -0.8359375f)) / (18.851562f - (_333 * 18.6875f))) * 6.277395f) * 10000.0f);
      break;
    }
    case 2: {
      _460 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_179, _180));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _466 = (pow(_460.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _469 = (pow(_460.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _472 = (pow(_460.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _477 = (uint)((_bufferSizeAndInvSize.x * _179) + -0.5f);
      _481 = (uint)((_bufferSizeAndInvSize.y * _180) + -0.5f);
      _483 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_477, _481, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _486 = __3__36__0__0__g_gbufferNormal.Load(int3(_477, _481, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _493 = (saturate(_486.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _497 = (saturate(_486.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _501 = (saturate(_486.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _503 = rsqrt(dot(float3(_493, _497, _501), float3(_493, _497, _501)));  // [sem: invLength]
      _504 = _503 * _493;
      _505 = _503 * _497;
      _506 = _501 * _503;
      _511 = (((float)((uint)((uint)(((uint)((uint)(_483.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _515 = (((float)((uint)((uint)(_483.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _517 = (_511 + _515) * 0.5f;
      _519 = (_511 - _515) * 0.5f;
      _523 = (1.0f - abs(_517)) - abs(_519);
      _525 = rsqrt(dot(float3(_517, _519, _523), float3(_517, _519, _523)));  // [sem: invLength]
      _526 = _525 * _517;
      _527 = _525 * _519;
      _528 = _525 * _523;
      _530 = select((_506 >= 0.0f), 1.0f, -1.0f);
      _533 = -0.0f - (1.0f / (_530 + _506));
      _534 = _505 * _533;
      _535 = _534 * _504;
      _536 = _530 * _504;
      _542 = mad(_528, _504, mad(_527, _535, ((((_536 * _504) * _533) + 1.0f) * _526)));
      _548 = mad(_528, _505, mad(_527, ((_534 * _505) + _530), ((_526 * _530) * _535)));
      _553 = mad(_528, _506, mad(_527, (-0.0f - _505), (-0.0f - (_536 * _526))));
      _555 = rsqrt(dot(float3(_542, _548, _553), float3(_542, _548, _553)));  // [sem: invLength]
      _591 = (_555 * _553);
      _592 = (_555 * _548);
      _593 = (_555 * _542);
      _594 = ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearBlackBorder, float2(_179, _180))).x);
      _595 = (exp2(log2(max(0.0f, (_472 + -0.8359375f)) / (18.851562f - (_472 * 18.6875f))) * 6.277395f) * 10000.0f);
      _596 = (exp2(log2(max(0.0f, (_469 + -0.8359375f)) / (18.851562f - (_469 * 18.6875f))) * 6.277395f) * 10000.0f);
      _597 = (exp2(log2(max(0.0f, (_466 + -0.8359375f)) / (18.851562f - (_466 * 18.6875f))) * 6.277395f) * 10000.0f);
      break;
    }
    default: {
      _591 = 0.0f;
      _592 = 0.0f;
      _593 = 0.0f;
      _594 = 0.0f;
      _595 = 0.0f;
      _596 = 0.0f;
      _597 = 0.0f;
      break;
    }
  }
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_599.x, _599.y);
  _616 = (((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_599.x))))))) + 0.5f) * _179)), ((int)((((float)((int)((int)((float)((int)((int)(_599.y))))))) + 0.5f) * _180)), 0)))).x) & 255;
  _617 = (_594 < 1e-07f);
  _618 = (_594 == 1.0f);
  _622 = WaveReadLaneFirst(_materialIndex);
  _630 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_622 < (uint)170000), _622, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._impactFrame);
  if (!(!(_630 >= 0.001f))) {
    if (!(_616 == _renderPassSelfPlayer)) {
      if (!(_616 == _renderPassTest)) {
        _645 = ((int)(uint)((int)(_616 == _renderPassTargetFocus)));
      } else {
        _645 = 1;
      }
    } else {
      _645 = 1;
    }
    _648 = select((_617 || _618), 1.0f, select((_645 != 0), 0.0f, 1.0f));
    _651 = WaveReadLaneFirst(_materialIndex);
    _659 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_651 < (uint)170000), _651, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._impactFrameInverse);
    _662 = select((_659 > 0.001f), (1.0f - _648), _648);
    _665 = WaveReadLaneFirst(_materialIndex);
    _673 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_665 < (uint)170000), _665, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._impactFrameFresnel);
    _674 = abs(_673);
    if ((_674 > 0.0f) && (!(_617 || _618))) {
      _690 = abs(1.0f - saturate(dot(float3(_593, _592, _591), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)))));
      _693 = WaveReadLaneFirst(_materialIndex);
      _701 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_693 < (uint)170000), _693, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._impactFrameFresnelIntensity);
      _713 = ((saturate(exp2(log2(select((_673 < 0.0f), (1.0f - _690), _690)) * _674) * _701) + 0.002f) * _662);
    } else {
      _713 = _662;
    }
    _717 = _713 / max(0.001f, _exposure0.x);
    _728 = (lerp(_595, _717, _630));  // [sem: blended]
    _729 = (lerp(_596, _717, _630));  // [sem: blended]
    _730 = (lerp(_597, _717, _630));  // [sem: blended]
  } else {
    _728 = _595;  // [sem: blended]
    _729 = _596;  // [sem: blended]
    _730 = _597;  // [sem: blended]
  }
  _733 = WaveReadLaneFirst(_materialIndex);
  _741 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_733 < (uint)170000), _733, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._topVignetteRatio);
  _744 = WaveReadLaneFirst(_materialIndex);
  _752 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_744 < (uint)170000), _744, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sideVignetteRatio);
  _755 = WaveReadLaneFirst(_materialIndex);
  _763 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_755 < (uint)170000), _755, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._bottomVignetteRatio);
  if (!(!(_752 >= 0.001f))) {
    _766 = TEXCOORD.x + -0.5f;
    _767 = TEXCOORD.y + -0.5f;
    _770 = WaveReadLaneFirst(_materialIndex);
    _778 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_770 < (uint)170000), _770, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sideVignetteRadius);
    _781 = WaveReadLaneFirst(_materialIndex);
    _789 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_781 < (uint)170000), _781, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sideVignettePower);
    _792 = WaveReadLaneFirst(_materialIndex);
    _800 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_792 < (uint)170000), _792, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sideVignetteColor);
    _803 = (float)((uint)((uint)(((uint)((uint)(_800)) >> 16) & 255)));
    _806 = (float)((uint)((uint)(((uint)((uint)(_800)) >> 8) & 255)));
    _808 = (float)((uint)((uint)(_800 & 255)));
    _811 = max(0.001f, _exposure0.x);
    _826 = saturate((sqrt((_767 * _767) + (_766 * _766)) / max(0.001f, (1.0f - _778))) * exp2(log2(abs(0.5f - TEXCOORD.x)) * _789)) * _752;
    _864 = (((select(((_808 * 0.003921569f) < 0.04045f), (_808 * 0.000303527f), exp2(log2((_808 * 0.003717127f) + 0.052132703f) * 2.4f)) / _811) * _826) + _728);
    _865 = (((select(((_806 * 0.003921569f) < 0.04045f), (_806 * 0.000303527f), exp2(log2((_806 * 0.003717127f) + 0.052132703f) * 2.4f)) / _811) * _826) + _729);
    _866 = (((select(((_803 * 0.003921569f) < 0.04045f), (_803 * 0.000303527f), exp2(log2((_803 * 0.003717127f) + 0.052132703f) * 2.4f)) / _811) * _826) + _730);
  } else {
    _864 = _728;
    _865 = _729;
    _866 = _730;
  }
  if (!(!(_741 >= 0.001f))) {
    _869 = TEXCOORD.x + -0.5f;
    _870 = TEXCOORD.y + -0.5f;
    _873 = WaveReadLaneFirst(_materialIndex);
    _881 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_873 < (uint)170000), _873, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._topVignetteRadius);
    _884 = WaveReadLaneFirst(_materialIndex);
    _892 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_884 < (uint)170000), _884, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._topVignettePower);
    _895 = WaveReadLaneFirst(_materialIndex);
    _903 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_895 < (uint)170000), _895, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._topVignetteColor);
    _906 = (float)((uint)((uint)(((uint)((uint)(_903)) >> 16) & 255)));
    _909 = (float)((uint)((uint)(((uint)((uint)(_903)) >> 8) & 255)));
    _911 = (float)((uint)((uint)(_903 & 255)));
    _914 = max(0.001f, _exposure0.x);
    _928 = saturate((sqrt((_870 * _870) + (_869 * _869)) / max(0.001f, (1.0f - _881))) * exp2(log2(1.0f - TEXCOORD.y) * _892)) * _741;
    _966 = (((select(((_911 * 0.003921569f) < 0.04045f), (_911 * 0.000303527f), exp2(log2((_911 * 0.003717127f) + 0.052132703f) * 2.4f)) / _914) * _928) + _864);
    _967 = (((select(((_909 * 0.003921569f) < 0.04045f), (_909 * 0.000303527f), exp2(log2((_909 * 0.003717127f) + 0.052132703f) * 2.4f)) / _914) * _928) + _865);
    _968 = (((select(((_906 * 0.003921569f) < 0.04045f), (_906 * 0.000303527f), exp2(log2((_906 * 0.003717127f) + 0.052132703f) * 2.4f)) / _914) * _928) + _866);
  } else {
    _966 = _864;
    _967 = _865;
    _968 = _866;
  }
  if (!(!(_763 >= 0.001f))) {
    _971 = TEXCOORD.x + -0.5f;
    _972 = TEXCOORD.y + -0.5f;
    _975 = WaveReadLaneFirst(_materialIndex);
    _983 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_975 < (uint)170000), _975, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._bottomVignetteRadius);
    _986 = WaveReadLaneFirst(_materialIndex);
    _994 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_986 < (uint)170000), _986, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._bottomVignettePower);
    _997 = WaveReadLaneFirst(_materialIndex);
    _1005 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_997 < (uint)170000), _997, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._bottomVignetteColor);
    _1008 = (float)((uint)((uint)(((uint)((uint)(_1005)) >> 16) & 255)));
    _1011 = (float)((uint)((uint)(((uint)((uint)(_1005)) >> 8) & 255)));
    _1013 = (float)((uint)((uint)(_1005 & 255)));
    _1016 = max(0.001f, _exposure0.x);
    _1029 = saturate((sqrt((_972 * _972) + (_971 * _971)) / max(0.001f, (1.0f - _983))) * (pow(TEXCOORD.y, _994))) * _763;
    _1067 = (((select(((_1013 * 0.003921569f) < 0.04045f), (_1013 * 0.000303527f), exp2(log2((_1013 * 0.003717127f) + 0.052132703f) * 2.4f)) / _1016) * _1029) + _966);
    _1068 = (((select(((_1011 * 0.003921569f) < 0.04045f), (_1011 * 0.000303527f), exp2(log2((_1011 * 0.003717127f) + 0.052132703f) * 2.4f)) / _1016) * _1029) + _967);
    _1069 = (((select(((_1008 * 0.003921569f) < 0.04045f), (_1008 * 0.000303527f), exp2(log2((_1008 * 0.003717127f) + 0.052132703f) * 2.4f)) / _1016) * _1029) + _968);
  } else {
    _1067 = _966;
    _1068 = _967;
    _1069 = _968;
  }
  _1072 = WaveReadLaneFirst(_materialIndex);
  _1080 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_1072 < (uint)170000), _1072, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransition);
  if ((_1080 >= 0.001f) && (_1080 < 1.0f)) {
    _1085 = _1080 * 2.0f;
    _1086 = (_1085 > 1.0f);
    _1088 = select(_1086, (_1085 + -1.0f), _1085);
    _1091 = WaveReadLaneFirst(_materialIndex);
    _1099 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_1091 < (uint)170000), _1091, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionNoiseTex);
    _1108 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1099 < (uint)65000), _1099, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y)))).x) * 0.2f;
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _1111 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _1117 = (pow(_1111.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _1120 = (pow(_1111.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _1123 = (pow(_1111.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _1132 = exp2(log2(max(0.0f, (_1117 + -0.8359375f)) / (18.851562f - (_1117 * 18.6875f))) * 6.277395f) * 10000.0f;
    _1141 = exp2(log2(max(0.0f, (_1120 + -0.8359375f)) / (18.851562f - (_1120 * 18.6875f))) * 6.277395f) * 10000.0f;
    _1150 = exp2(log2(max(0.0f, (_1123 + -0.8359375f)) / (18.851562f - (_1123 * 18.6875f))) * 6.277395f) * 10000.0f;
    _1153 = WaveReadLaneFirst(_materialIndex);
    _1161 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_1153 < (uint)170000), _1153, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionUseDivide);
    _1163 = (_1088 + -0.5f) * 1.5f;
    _1165 = _1108 + (TEXCOORD.x - _1163);
    _1169 = select((_1088 >= 0.9f), ((_1088 + -0.9f) * 10.0f), 0.0f);
    if (_1161 == 0.0f) {
      _1248 = WaveReadLaneFirst(_materialIndex);
      _1256 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_1248 < (uint)170000), _1248, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionTex);
      _1264 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1256 < (uint)65000), _1256, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_1165, ((TEXCOORD.y * 0.95f) + 0.025f)));
      _1268 = ((1.0f - _1264.x) * _1169) + _1264.x;
      if (_1086) {
        _1290 = ((_1268 * (_1067 - _1150)) + _1150);
        _1291 = ((_1268 * (_1068 - _1141)) + _1141);
        _1292 = ((_1268 * (_1069 - _1132)) + _1132);
      } else {
        _1290 = ((_1268 * (_1150 - _1067)) + _1067);
        _1291 = ((_1268 * (_1141 - _1068)) + _1068);
        _1292 = ((_1268 * (_1132 - _1069)) + _1069);
      }
    } else {
      _1175 = TEXCOORD.y + 0.45f;
      _1176 = TEXCOORD.y + -0.45f;
      _1177 = WaveReadLaneFirst(_materialIndex);
      _1185 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_1177 < (uint)170000), _1177, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionTex);
      _1186 = WaveReadLaneFirst(_materialIndex);
      _1194 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_1186 < (uint)170000), _1186, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionTex);
      // [sem: expr_sat]
      _1223 = saturate(((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1185 < (uint)65000), _1185, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_1165, _1175)))).x) * select(((_1175 < 0.0f) || (_1175 > 1.0f)), 0.0f, 1.0f)) + ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1194 < (uint)65000), _1194, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2((((1.0f - TEXCOORD.x) - _1163) + _1108), _1176)))).x) * select(((_1176 < 0.0f) || (_1176 > 1.0f)), 0.0f, 1.0f)));
      _1226 = ((1.0f - _1223) * _1169) + _1223;
      if (_1086) {
        _1290 = ((_1226 * (_1067 - _1150)) + _1150);
        _1291 = ((_1226 * (_1068 - _1141)) + _1141);
        _1292 = ((_1226 * (_1069 - _1132)) + _1132);
      } else {
        _1290 = ((_1226 * (_1150 - _1067)) + _1067);
        _1291 = ((_1226 * (_1141 - _1068)) + _1068);
        _1292 = ((_1226 * (_1132 - _1069)) + _1069);
      }
    }
  } else {
    _1290 = _1067;
    _1291 = _1068;
    _1292 = _1069;
  }
  _1293 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1306 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1293, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1306 = 1.0f;
  }
  _1309 = (_localToneMappingParams.w > 0.0f);
  if (_1309) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1292, _1291, _1290));
    _1557 = _rndx_tonemapped_color.x;
    _1564 = _rndx_tonemapped_color.y;
    _1571 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1577 = 1.0f - abs(_etcParams.w);
      _1578 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1580 = (_1577 * _1557) + _1578;
      _1582 = (_1577 * _1564) + _1578;
      _1584 = (_1577 * _1571) + _1578;
      if (_colorGradingParams.w > 0.0f) {
        _1589 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1606 = (((max(0.0f, (1.0f - _1584)) - _1584) * _1589) + _1584);
        _1607 = (((max(0.0f, (1.0f - _1582)) - _1582) * _1589) + _1582);
        _1608 = (((max(0.0f, (1.0f - _1580)) - _1580) * _1589) + _1580);
      } else {
        _1606 = _1584;
        _1607 = _1582;
        _1608 = _1580;
      }
      _1610 = _userImageAdjust.y + 1.0f;
      _1612 = _userImageAdjust.x + 0.5f;
      _1615 = ((_1608 + -0.5f) * _1610) + _1612;
      _1618 = ((_1607 + -0.5f) * _1610) + _1612;
      _1621 = ((_1606 + -0.5f) * _1610) + _1612;
      _1627 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1662 = exp2(log2(saturate(mad(_colorBlind2.z, _1621, mad(_colorBlind2.y, _1618, (_colorBlind2.x * _1615))))) * _1627);
      _1663 = exp2(log2(saturate(mad(_colorBlind1.z, _1621, mad(_colorBlind1.y, _1618, (_colorBlind1.x * _1615))))) * _1627);
      _1664 = exp2(log2(saturate(mad(_colorBlind0.z, _1621, mad(_colorBlind0.y, _1618, (_colorBlind0.x * _1615))))) * _1627);
    } else {
      _1662 = _1571;
      _1663 = _1564;
      _1664 = _1557;
    }
  } else {
    _1662 = _1290;
    _1663 = _1291;
    _1664 = _1292;
  }
  if (_etcParams.y > 1.0f) {
    _1669 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1672 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1678 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_1669, _1672), float2(_1669, _1672))));  // [sem: expr_sat]
    _1683 = (_1678 * _1662);
    _1684 = (_1678 * _1663);
    _1685 = (_1678 * _1664);
  } else {
    _1683 = _1662;
    _1684 = _1663;
    _1685 = _1664;
  }
  if (_1309 && (_etcParams.z > 0.0f)) {
    _1715 = select((_1683 <= 0.0031308f), (_1683 * 12.92f), (((pow(_1683, 0.41666666f)) * 1.055f) + -0.055f));
    _1716 = select((_1684 <= 0.0031308f), (_1684 * 12.92f), (((pow(_1684, 0.41666666f)) * 1.055f) + -0.055f));
    _1717 = select((_1685 <= 0.0031308f), (_1685 * 12.92f), (((pow(_1685, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1715 = _1683;
    _1716 = _1684;
    _1717 = _1685;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1720 = (float)((uint)((uint)(_1293)));
    if (!(_1720 < _viewDir.w)) {
      if (!(!(_1720 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1731 = 0.0f;
        _1732 = 0.0f;
        _1733 = 0.0f;
      } else {
        _1731 = _1717;
        _1732 = _1716;
        _1733 = _1715;
      }
    } else {
      _1731 = 0.0f;
      _1732 = 0.0f;
      _1733 = 0.0f;
    }
  } else {
    _1731 = _1717;
    _1732 = _1716;
    _1733 = _1715;
  }
  _1737 = exp2(log2(_1731 * 0.0001f) * 0.15930176f);
  _1741 = exp2(log2(_1732 * 0.0001f) * 0.15930176f);
  _1745 = exp2(log2(_1733 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1737 * 18.6875f) + 1.0f)) * ((_1737 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1741 * 18.6875f) + 1.0f)) * ((_1741 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1745 * 18.6875f) + 1.0f)) * ((_1745 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1306;
  return SV_Target;
}
