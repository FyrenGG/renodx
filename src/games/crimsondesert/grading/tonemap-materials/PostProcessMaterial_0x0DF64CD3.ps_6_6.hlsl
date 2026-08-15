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


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

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

struct BindlessParameters_PostProcessTransition {
  PostProcessTransitionStruct BindlessParameters_PostProcessTransition;
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
  float _167;
  float _168;
  float _579;
  float _580;
  float _581;
  float _582;
  float _583;
  float _584;
  float _585;
  bool _630;
  float _689;
  float _704;
  float _705;
  float _706;
  float _828;
  float _829;
  float _830;
  float _924;
  float _925;
  float _926;
  float _1019;
  float _1020;
  float _1021;
  float _1234;
  float _1235;
  float _1236;
  float _1250;
  float _1455;
  float _1456;
  float _1457;
  float _1550;
  float _1551;
  float _1552;
  float _1606;
  float _1607;
  float _1608;
  float _1627;
  float _1628;
  float _1629;
  float _1659;
  float _1660;
  float _1661;
  float _1675;
  float _1676;
  float _1677;
  int _41;
  float _50;
  float _51;
  float _52;
  float _53;
  float _55;
  bool _58;
  bool _59;
  bool _60;
  bool _61;
  float _74;
  int _75;
  float _84;
  float _85;
  int _88;
  int _96;
  float4 _102;
  int _107;
  float _115;
  float _117;
  int _121;
  float _130;
  float _131;
  int _134;
  int _142;
  float4 _148;
  int _153;
  float _162;
  float _163;
  float _169;
  float _170;
  int _171;
  int _179;
  float4 _183;
  float _193;
  float _194;
  float _195;
  uint _233;
  uint _234;
  uint4 _236;
  float4 _239;
  float _257;
  float _258;
  float _259;
  float _261;
  float _262;
  float _263;
  float _264;
  float _267;
  float _268;
  float _271;
  float _272;
  float _276;
  float _278;
  float _279;
  float _280;
  float _281;
  float _283;
  float _286;
  float _287;
  float _288;
  float _289;
  float _298;
  float _302;
  float _306;
  float _308;
  float4 _315;
  float _325;
  float _326;
  float _327;
  uint _366;
  uint _367;
  uint4 _369;
  float4 _372;
  float _390;
  float _391;
  float _392;
  float _394;
  float _395;
  float _396;
  float _397;
  float _400;
  float _401;
  float _404;
  float _405;
  float _409;
  float _411;
  float _412;
  float _413;
  float _414;
  float _416;
  float _419;
  float _420;
  float _421;
  float _422;
  float _431;
  float _435;
  float _439;
  float _441;
  float4 _448;
  float _458;
  float _459;
  float _460;
  uint _499;
  uint _500;
  uint4 _502;
  float4 _505;
  float _523;
  float _524;
  float _525;
  float _527;
  float _528;
  float _529;
  float _530;
  float _533;
  float _534;
  float _537;
  float _538;
  float _542;
  float _544;
  float _545;
  float _546;
  float _547;
  float _549;
  float _552;
  float _553;
  float _554;
  float _555;
  float _564;
  float _568;
  float _572;
  float _574;
  uint2 _587;
  int _604;
  bool _607;
  int _608;
  float _616;
  float _632;
  int _633;
  float _641;
  float _644;
  int _645;
  float _653;
  float _654;
  float _669;
  int _675;
  float _683;
  float _693;
  int _707;
  float _715;
  int _716;
  float _724;
  int _725;
  float _733;
  float _736;
  float _737;
  int _742;
  float _750;
  int _756;
  float _764;
  int _770;
  int _778;
  float _781;
  float _784;
  float _786;
  float _816;
  float _820;
  float _833;
  float _834;
  int _839;
  float _847;
  int _852;
  float _860;
  int _866;
  int _874;
  float _877;
  float _880;
  float _882;
  float _912;
  float _916;
  float _929;
  float _930;
  int _935;
  float _943;
  int _947;
  float _955;
  int _961;
  int _969;
  float _972;
  float _975;
  float _977;
  float _1007;
  float _1011;
  int _1022;
  float _1030;
  float _1035;
  bool _1036;
  float _1038;
  int _1039;
  int _1047;
  float _1056;
  float4 _1059;
  float _1069;
  float _1070;
  float _1071;
  float _1096;
  float _1097;
  float _1098;
  int _1099;
  float _1107;
  float _1110;
  float _1112;
  float _1117;
  float _1122;
  float _1123;
  int _1132;
  int _1140;
  int _1149;
  int _1157;
  float _1167;
  float _1170;
  int _1194;
  int _1202;
  float4 _1208;
  float _1212;
  uint _1237;
  bool _1253;
  float _1259;
  float _1308;
  float _1309;
  float _1310;
  float _1312;
  float _1319;
  float _1320;
  float _1321;
  float _1340;
  float _1341;
  float _1342;
  float _1343;
  float _1344;
  float _1345;
  float _1346;
  float _1347;
  float _1348;
  float _1394;
  float _1395;
  float _1396;
  float _1397;
  float _1398;
  float _1399;
  float _1400;
  float _1417;
  float _1418;
  float _1419;
  float _1420;
  float _1426;
  float _1429;
  float _1436;
  float _1437;
  float _1438;
  float _1467;
  float _1492;
  float _1493;
  float _1494;
  float _1513;
  float _1514;
  float _1515;
  float _1521;
  float _1525;
  float _1526;
  float _1527;
  float _1528;
  float _1533;
  float _1558;
  float _1562;
  float _1563;
  float _1564;
  float _1565;
  float _1595;
  float _1617;
  float _1618;
  float _1622;
  float _1666;
  float _1687;
  float _1688;
  float _1689;
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_29 < (uint)170000), _29, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._scenePolarDistort);
  if (!(_37 >= 0.001f)) {
    _121 = WaveReadLaneFirst(_materialIndex);
    _130 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_121 < (uint)170000), _121, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTexScale.x);
    _131 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_121 < (uint)170000), _121, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTexScale.y);
    _134 = WaveReadLaneFirst(_materialIndex);
    _142 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_134 < (uint)170000), _134, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTex);
    _148 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_142 < (uint)65000), _142, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_130 * TEXCOORD.x), (_131 * TEXCOORD.y)));
    _153 = WaveReadLaneFirst(_materialIndex);
    _162 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_153 < (uint)170000), _153, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortIntensity.x);
    _163 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_153 < (uint)170000), _153, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortIntensity.y);
    _167 = (_162 * (_148.x + -0.5f));
    _168 = (_163 * (_148.y + -0.5f));
  } else {
    _41 = WaveReadLaneFirst(_materialIndex);
    _50 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_41 < (uint)170000), _41, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._scenePolarDistortCenter.x);
    _51 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_41 < (uint)170000), _41, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._scenePolarDistortCenter.y);
    _52 = TEXCOORD.x - _50;
    _53 = TEXCOORD.y - _51;
    _55 = atan(_53 / _52);
    _58 = (_52 < 0.0f);
    _59 = (_52 == 0.0f);
    _60 = (_53 >= 0.0f);
    _61 = (_53 < 0.0f);
    _74 = sqrt((_53 * _53) + (_52 * _52));
    _75 = WaveReadLaneFirst(_materialIndex);
    _84 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTexScale.x);
    _85 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTexScale.y);
    _88 = WaveReadLaneFirst(_materialIndex);
    _96 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_88 < (uint)170000), _88, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTex);
    _102 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_96 < (uint)65000), _96, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_84 * select((_59 && _60), 0.5f, select((_59 && _61), -0.5f, (select((_58 && _61), (_55 + -3.1415927f), select((_58 && _60), (_55 + 3.1415927f), _55)) * 0.31830987f)))), (_85 * _74)));
    _107 = WaveReadLaneFirst(_materialIndex);
    _115 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_107 < (uint)170000), _107, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._scenePolarDistort);
    _117 = saturate(_74) * _115;
    _167 = (_117 * (_102.x + -0.5f));
    _168 = (_117 * (_102.y + -0.5f));
  }
  _169 = TEXCOORD.x - _167;
  _170 = TEXCOORD.y - _168;
  _171 = WaveReadLaneFirst(_materialIndex);
  _179 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_171 < (uint)170000), _171, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneSampleType);
  switch (_179) {
    case 0: {
      _183 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_169, _170));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _193 = (pow(_183.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _194 = (pow(_183.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _195 = (pow(_183.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _233 = (uint)((_bufferSizeAndInvSize.x * _169) + -0.5f);
      _234 = (uint)((_bufferSizeAndInvSize.y * _170) + -0.5f);
      _236 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_233, _234, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _239 = __3__36__0__0__g_gbufferNormal.Load(int3(_233, _234, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _257 = (saturate(_239.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _258 = (saturate(_239.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _259 = (saturate(_239.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _261 = rsqrt(dot(float3(_257, _258, _259), float3(_257, _258, _259)));  // [sem: invLength]
      _262 = _261 * _257;
      _263 = _261 * _258;
      _264 = _259 * _261;
      _267 = (((float)((uint)((uint)(((uint)((uint)(_236.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _268 = (((float)((uint)((uint)(_236.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _271 = (_267 + _268) * 0.5f;
      _272 = (_267 - _268) * 0.5f;
      _276 = (1.0f - abs(_271)) - abs(_272);
      _278 = rsqrt(dot(float3(_271, _272, _276), float3(_271, _272, _276)));  // [sem: invLength]
      _279 = _278 * _271;
      _280 = _278 * _272;
      _281 = _278 * _276;
      _283 = select((_264 >= 0.0f), 1.0f, -1.0f);
      _286 = -0.0f - (1.0f / (_283 + _264));
      _287 = _263 * _286;
      _288 = _287 * _262;
      _289 = _283 * _262;
      _298 = mad(_281, _262, mad(_280, _288, ((((_289 * _262) * _286) + 1.0f) * _279)));
      _302 = mad(_281, _263, mad(_280, (_283 + (_287 * _263)), ((_279 * _283) * _288)));
      _306 = mad(_281, _264, mad(_280, (-0.0f - _263), (-0.0f - (_289 * _279))));
      _308 = rsqrt(dot(float3(_298, _302, _306), float3(_298, _302, _306)));  // [sem: invLength]
      _579 = (exp2(log2(max(0.0f, (_193 + -0.8359375f)) / (18.851562f - (_193 * 18.6875f))) * 6.277395f) * 10000.0f);
      _580 = (exp2(log2(max(0.0f, (_194 + -0.8359375f)) / (18.851562f - (_194 * 18.6875f))) * 6.277395f) * 10000.0f);
      _581 = (exp2(log2(max(0.0f, (_195 + -0.8359375f)) / (18.851562f - (_195 * 18.6875f))) * 6.277395f) * 10000.0f);
      _582 = ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_169, _170))).x);
      _583 = (_308 * _298);
      _584 = (_308 * _302);
      _585 = (_308 * _306);
      break;
    }
    case 1: {
      _315 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_169, _170));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _325 = (pow(_315.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _326 = (pow(_315.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _327 = (pow(_315.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _366 = (uint)((_bufferSizeAndInvSize.x * _169) + -0.5f);
      _367 = (uint)((_bufferSizeAndInvSize.y * _170) + -0.5f);
      _369 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_366, _367, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _372 = __3__36__0__0__g_gbufferNormal.Load(int3(_366, _367, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _390 = (saturate(_372.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _391 = (saturate(_372.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _392 = (saturate(_372.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _394 = rsqrt(dot(float3(_390, _391, _392), float3(_390, _391, _392)));  // [sem: invLength]
      _395 = _394 * _390;
      _396 = _394 * _391;
      _397 = _392 * _394;
      _400 = (((float)((uint)((uint)(((uint)((uint)(_369.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _401 = (((float)((uint)((uint)(_369.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _404 = (_400 + _401) * 0.5f;
      _405 = (_400 - _401) * 0.5f;
      _409 = (1.0f - abs(_404)) - abs(_405);
      _411 = rsqrt(dot(float3(_404, _405, _409), float3(_404, _405, _409)));  // [sem: invLength]
      _412 = _411 * _404;
      _413 = _411 * _405;
      _414 = _411 * _409;
      _416 = select((_397 >= 0.0f), 1.0f, -1.0f);
      _419 = -0.0f - (1.0f / (_416 + _397));
      _420 = _396 * _419;
      _421 = _420 * _395;
      _422 = _416 * _395;
      _431 = mad(_414, _395, mad(_413, _421, ((((_422 * _395) * _419) + 1.0f) * _412)));
      _435 = mad(_414, _396, mad(_413, (_416 + (_420 * _396)), ((_412 * _416) * _421)));
      _439 = mad(_414, _397, mad(_413, (-0.0f - _396), (-0.0f - (_422 * _412))));
      _441 = rsqrt(dot(float3(_431, _435, _439), float3(_431, _435, _439)));  // [sem: invLength]
      _579 = (exp2(log2(max(0.0f, (_325 + -0.8359375f)) / (18.851562f - (_325 * 18.6875f))) * 6.277395f) * 10000.0f);
      _580 = (exp2(log2(max(0.0f, (_326 + -0.8359375f)) / (18.851562f - (_326 * 18.6875f))) * 6.277395f) * 10000.0f);
      _581 = (exp2(log2(max(0.0f, (_327 + -0.8359375f)) / (18.851562f - (_327 * 18.6875f))) * 6.277395f) * 10000.0f);
      _582 = ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_169, _170))).x);
      _583 = (_441 * _431);
      _584 = (_441 * _435);
      _585 = (_441 * _439);
      break;
    }
    case 2: {
      _448 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_169, _170));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _458 = (pow(_448.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _459 = (pow(_448.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _460 = (pow(_448.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _499 = (uint)((_bufferSizeAndInvSize.x * _169) + -0.5f);
      _500 = (uint)((_bufferSizeAndInvSize.y * _170) + -0.5f);
      _502 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_499, _500, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _505 = __3__36__0__0__g_gbufferNormal.Load(int3(_499, _500, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _523 = (saturate(_505.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _524 = (saturate(_505.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _525 = (saturate(_505.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _527 = rsqrt(dot(float3(_523, _524, _525), float3(_523, _524, _525)));  // [sem: invLength]
      _528 = _527 * _523;
      _529 = _527 * _524;
      _530 = _525 * _527;
      _533 = (((float)((uint)((uint)(((uint)((uint)(_502.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _534 = (((float)((uint)((uint)(_502.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _537 = (_533 + _534) * 0.5f;
      _538 = (_533 - _534) * 0.5f;
      _542 = (1.0f - abs(_537)) - abs(_538);
      _544 = rsqrt(dot(float3(_537, _538, _542), float3(_537, _538, _542)));  // [sem: invLength]
      _545 = _544 * _537;
      _546 = _544 * _538;
      _547 = _544 * _542;
      _549 = select((_530 >= 0.0f), 1.0f, -1.0f);
      _552 = -0.0f - (1.0f / (_549 + _530));
      _553 = _529 * _552;
      _554 = _553 * _528;
      _555 = _549 * _528;
      _564 = mad(_547, _528, mad(_546, _554, ((((_555 * _528) * _552) + 1.0f) * _545)));
      _568 = mad(_547, _529, mad(_546, (_549 + (_553 * _529)), ((_545 * _549) * _554)));
      _572 = mad(_547, _530, mad(_546, (-0.0f - _529), (-0.0f - (_555 * _545))));
      _574 = rsqrt(dot(float3(_564, _568, _572), float3(_564, _568, _572)));  // [sem: invLength]
      _579 = (exp2(log2(max(0.0f, (_458 + -0.8359375f)) / (18.851562f - (_458 * 18.6875f))) * 6.277395f) * 10000.0f);
      _580 = (exp2(log2(max(0.0f, (_459 + -0.8359375f)) / (18.851562f - (_459 * 18.6875f))) * 6.277395f) * 10000.0f);
      _581 = (exp2(log2(max(0.0f, (_460 + -0.8359375f)) / (18.851562f - (_460 * 18.6875f))) * 6.277395f) * 10000.0f);
      _582 = ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearBlackBorder, float2(_169, _170))).x);
      _583 = (_574 * _564);
      _584 = (_574 * _568);
      _585 = (_574 * _572);
      break;
    }
    default: {
      _579 = 0.0f;
      _580 = 0.0f;
      _581 = 0.0f;
      _582 = 0.0f;
      _583 = 0.0f;
      _584 = 0.0f;
      _585 = 0.0f;
      break;
    }
  }
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_587.x, _587.y);
  _604 = (((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_587.x))))))) + 0.5f) * _169)), ((int)((((float)((int)((int)((float)((int)((int)(_587.y))))))) + 0.5f) * _170)), 0)))).x) & 255;
  _607 = (_582 < 1e-07f) || (_582 == 1.0f);
  _608 = WaveReadLaneFirst(_materialIndex);
  _616 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_608 < (uint)170000), _608, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._impactFrame);
  if (!(!(_616 >= 0.001f))) {
    if (!(_604 == _renderPassSelfPlayer)) {
      if (!(_604 == _renderPassTest)) {
        _630 = (_604 == _renderPassTargetFocus);
      } else {
        _630 = true;
      }
    } else {
      _630 = true;
    }
    _632 = select(_607, 1.0f, select(_630, 0.0f, 1.0f));
    _633 = WaveReadLaneFirst(_materialIndex);
    _641 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_633 < (uint)170000), _633, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._impactFrameInverse);
    _644 = select((_641 > 0.001f), (1.0f - _632), _632);
    _645 = WaveReadLaneFirst(_materialIndex);
    _653 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_645 < (uint)170000), _645, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._impactFrameFresnel);
    _654 = abs(_653);
    if (!(_607 || (!(_654 > 0.0f)))) {
      _669 = abs(1.0f - saturate(dot(float3(_583, _584, _585), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)))));
      _675 = WaveReadLaneFirst(_materialIndex);
      _683 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_675 < (uint)170000), _675, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._impactFrameFresnelIntensity);
      _689 = ((saturate(_683 * exp2(log2(select((_653 < 0.0f), (1.0f - _669), _669)) * _654)) + 0.002f) * _644);
    } else {
      _689 = _644;
    }
    _693 = _689 / max(0.001f, _exposure0.x);
    _704 = (lerp(_579, _693, _616));  // [sem: blended]
    _705 = (lerp(_580, _693, _616));  // [sem: blended]
    _706 = (lerp(_581, _693, _616));  // [sem: blended]
  } else {
    _704 = _579;  // [sem: blended]
    _705 = _580;  // [sem: blended]
    _706 = _581;  // [sem: blended]
  }
  _707 = WaveReadLaneFirst(_materialIndex);
  _715 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_707 < (uint)170000), _707, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._topVignetteRatio);
  _716 = WaveReadLaneFirst(_materialIndex);
  _724 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_716 < (uint)170000), _716, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sideVignetteRatio);
  _725 = WaveReadLaneFirst(_materialIndex);
  _733 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_725 < (uint)170000), _725, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._bottomVignetteRatio);
  if (!(!(_724 >= 0.001f))) {
    _736 = TEXCOORD.x + -0.5f;
    _737 = TEXCOORD.y + -0.5f;
    _742 = WaveReadLaneFirst(_materialIndex);
    _750 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_742 < (uint)170000), _742, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sideVignetteRadius);
    _756 = WaveReadLaneFirst(_materialIndex);
    _764 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_756 < (uint)170000), _756, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sideVignettePower);
    _770 = WaveReadLaneFirst(_materialIndex);
    _778 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_770 < (uint)170000), _770, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sideVignetteColor);
    _781 = (float)((uint)((uint)(((uint)((uint)(_778)) >> 16) & 255)));
    _784 = (float)((uint)((uint)(((uint)((uint)(_778)) >> 8) & 255)));
    _786 = (float)((uint)((uint)(_778 & 255)));
    _816 = max(0.001f, _exposure0.x);
    _820 = saturate(exp2(log2(abs(0.5f - TEXCOORD.x)) * _764) * (sqrt((_737 * _737) + (_736 * _736)) / max(0.001f, (1.0f - _750)))) * _724;
    _828 = (((select(((_781 * 0.003921569f) < 0.04045f), (_781 * 0.000303527f), exp2(log2((_781 * 0.003717127f) + 0.052132703f) * 2.4f)) / _816) * _820) + _704);
    _829 = (((select(((_784 * 0.003921569f) < 0.04045f), (_784 * 0.000303527f), exp2(log2((_784 * 0.003717127f) + 0.052132703f) * 2.4f)) / _816) * _820) + _705);
    _830 = (((select(((_786 * 0.003921569f) < 0.04045f), (_786 * 0.000303527f), exp2(log2((_786 * 0.003717127f) + 0.052132703f) * 2.4f)) / _816) * _820) + _706);
  } else {
    _828 = _704;
    _829 = _705;
    _830 = _706;
  }
  if (!(!(_715 >= 0.001f))) {
    _833 = TEXCOORD.x + -0.5f;
    _834 = TEXCOORD.y + -0.5f;
    _839 = WaveReadLaneFirst(_materialIndex);
    _847 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_839 < (uint)170000), _839, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._topVignetteRadius);
    _852 = WaveReadLaneFirst(_materialIndex);
    _860 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_852 < (uint)170000), _852, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._topVignettePower);
    _866 = WaveReadLaneFirst(_materialIndex);
    _874 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_866 < (uint)170000), _866, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._topVignetteColor);
    _877 = (float)((uint)((uint)(((uint)((uint)(_874)) >> 16) & 255)));
    _880 = (float)((uint)((uint)(((uint)((uint)(_874)) >> 8) & 255)));
    _882 = (float)((uint)((uint)(_874 & 255)));
    _912 = max(0.001f, _exposure0.x);
    _916 = saturate(exp2(log2(1.0f - TEXCOORD.y) * _860) * (sqrt((_834 * _834) + (_833 * _833)) / max(0.001f, (1.0f - _847)))) * _715;
    _924 = (((select(((_877 * 0.003921569f) < 0.04045f), (_877 * 0.000303527f), exp2(log2((_877 * 0.003717127f) + 0.052132703f) * 2.4f)) / _912) * _916) + _828);
    _925 = (((select(((_880 * 0.003921569f) < 0.04045f), (_880 * 0.000303527f), exp2(log2((_880 * 0.003717127f) + 0.052132703f) * 2.4f)) / _912) * _916) + _829);
    _926 = (((select(((_882 * 0.003921569f) < 0.04045f), (_882 * 0.000303527f), exp2(log2((_882 * 0.003717127f) + 0.052132703f) * 2.4f)) / _912) * _916) + _830);
  } else {
    _924 = _828;
    _925 = _829;
    _926 = _830;
  }
  if (!(!(_733 >= 0.001f))) {
    _929 = TEXCOORD.x + -0.5f;
    _930 = TEXCOORD.y + -0.5f;
    _935 = WaveReadLaneFirst(_materialIndex);
    _943 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_935 < (uint)170000), _935, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._bottomVignetteRadius);
    _947 = WaveReadLaneFirst(_materialIndex);
    _955 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_947 < (uint)170000), _947, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._bottomVignettePower);
    _961 = WaveReadLaneFirst(_materialIndex);
    _969 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_961 < (uint)170000), _961, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._bottomVignetteColor);
    _972 = (float)((uint)((uint)(((uint)((uint)(_969)) >> 16) & 255)));
    _975 = (float)((uint)((uint)(((uint)((uint)(_969)) >> 8) & 255)));
    _977 = (float)((uint)((uint)(_969 & 255)));
    _1007 = max(0.001f, _exposure0.x);
    _1011 = saturate((pow(TEXCOORD.y, _955)) * (sqrt((_930 * _930) + (_929 * _929)) / max(0.001f, (1.0f - _943)))) * _733;
    _1019 = (((select(((_972 * 0.003921569f) < 0.04045f), (_972 * 0.000303527f), exp2(log2((_972 * 0.003717127f) + 0.052132703f) * 2.4f)) / _1007) * _1011) + _924);
    _1020 = (((select(((_975 * 0.003921569f) < 0.04045f), (_975 * 0.000303527f), exp2(log2((_975 * 0.003717127f) + 0.052132703f) * 2.4f)) / _1007) * _1011) + _925);
    _1021 = (((select(((_977 * 0.003921569f) < 0.04045f), (_977 * 0.000303527f), exp2(log2((_977 * 0.003717127f) + 0.052132703f) * 2.4f)) / _1007) * _1011) + _926);
  } else {
    _1019 = _924;
    _1020 = _925;
    _1021 = _926;
  }
  _1022 = WaveReadLaneFirst(_materialIndex);
  _1030 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_1022 < (uint)170000), _1022, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransition);
  if ((_1030 >= 0.001f) && (_1030 < 1.0f)) {
    _1035 = _1030 * 2.0f;
    _1036 = (_1035 > 1.0f);
    _1038 = select(_1036, (_1035 + -1.0f), _1035);
    _1039 = WaveReadLaneFirst(_materialIndex);
    _1047 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_1039 < (uint)170000), _1039, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionNoiseTex);
    _1056 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1047 < (uint)65000), _1047, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y)))).x) * 0.2f;
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _1059 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _1069 = (pow(_1059.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _1070 = (pow(_1059.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _1071 = (pow(_1059.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _1096 = exp2(log2(max(0.0f, (_1069 + -0.8359375f)) / (18.851562f - (_1069 * 18.6875f))) * 6.277395f) * 10000.0f;
    _1097 = exp2(log2(max(0.0f, (_1070 + -0.8359375f)) / (18.851562f - (_1070 * 18.6875f))) * 6.277395f) * 10000.0f;
    _1098 = exp2(log2(max(0.0f, (_1071 + -0.8359375f)) / (18.851562f - (_1071 * 18.6875f))) * 6.277395f) * 10000.0f;
    _1099 = WaveReadLaneFirst(_materialIndex);
    _1107 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_1099 < (uint)170000), _1099, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionUseDivide);
    _1110 = (_1038 + -0.5f) * 1.5f;
    _1112 = _1056 + (TEXCOORD.x - _1110);
    _1117 = select((_1038 >= 0.9f), ((_1038 + -0.9f) * 10.0f), 0.0f);
    if (!(_1107 == 0.0f)) {
      _1122 = TEXCOORD.y + 0.45f;
      _1123 = TEXCOORD.y + -0.45f;
      _1132 = WaveReadLaneFirst(_materialIndex);
      _1140 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_1132 < (uint)170000), _1132, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionTex);
      _1149 = WaveReadLaneFirst(_materialIndex);
      _1157 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_1149 < (uint)170000), _1149, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionTex);
      // [sem: expr_sat]
      _1167 = saturate(((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1157 < (uint)65000), _1157, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2((((1.0f - TEXCOORD.x) - _1110) + _1056), _1123)))).x) * select(((_1123 < 0.0f) || (_1123 > 1.0f)), 0.0f, 1.0f)) + ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1140 < (uint)65000), _1140, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_1112, _1122)))).x) * select(((_1122 < 0.0f) || (_1122 > 1.0f)), 0.0f, 1.0f)));
      _1170 = ((1.0f - _1167) * _1117) + _1167;
      if (_1036) {
        _1234 = ((_1170 * (_1019 - _1096)) + _1096);
        _1235 = ((_1170 * (_1020 - _1097)) + _1097);
        _1236 = ((_1170 * (_1021 - _1098)) + _1098);
      } else {
        _1234 = ((_1170 * (_1096 - _1019)) + _1019);
        _1235 = ((_1170 * (_1097 - _1020)) + _1020);
        _1236 = ((_1170 * (_1098 - _1021)) + _1021);
      }
    } else {
      _1194 = WaveReadLaneFirst(_materialIndex);
      _1202 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_1194 < (uint)170000), _1194, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionTex);
      _1208 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1202 < (uint)65000), _1202, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_1112, ((TEXCOORD.y * 0.95f) + 0.025f)));
      _1212 = ((1.0f - _1208.x) * _1117) + _1208.x;
      if (_1036) {
        _1234 = ((_1212 * (_1019 - _1096)) + _1096);
        _1235 = ((_1212 * (_1020 - _1097)) + _1097);
        _1236 = ((_1212 * (_1021 - _1098)) + _1098);
      } else {
        _1234 = ((_1212 * (_1096 - _1019)) + _1019);
        _1235 = ((_1212 * (_1097 - _1020)) + _1020);
        _1236 = ((_1212 * (_1098 - _1021)) + _1021);
      }
    }
  } else {
    _1234 = _1019;
    _1235 = _1020;
    _1236 = _1021;
  }
  _1237 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1250 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1237, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1250 = 1.0f;
  }
  _1253 = (_localToneMappingParams.w > 0.0f);
  if (_1253) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1234, _1235, _1236));
    _1513 = _rndx_tonemapped_color.x;
    _1514 = _rndx_tonemapped_color.y;
    _1515 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1521 = 1.0f - abs(_etcParams.w);
      _1525 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1526 = (_1521 * _1513) + _1525;
      _1527 = (_1521 * _1514) + _1525;
      _1528 = (_1521 * _1515) + _1525;
      if (_colorGradingParams.w > 0.0f) {
        _1533 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1550 = (((max(0.0f, (1.0f - _1526)) - _1526) * _1533) + _1526);
        _1551 = (((max(0.0f, (1.0f - _1527)) - _1527) * _1533) + _1527);
        _1552 = (((max(0.0f, (1.0f - _1528)) - _1528) * _1533) + _1528);
      } else {
        _1550 = _1526;
        _1551 = _1527;
        _1552 = _1528;
      }
      _1558 = _userImageAdjust.y + 1.0f;
      _1562 = _userImageAdjust.x + 0.5f;
      _1563 = ((_1550 + -0.5f) * _1558) + _1562;
      _1564 = ((_1551 + -0.5f) * _1558) + _1562;
      _1565 = ((_1552 + -0.5f) * _1558) + _1562;
      _1595 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1606 = exp2(log2(saturate(mad(_colorBlind0.z, _1565, mad(_colorBlind0.y, _1564, (_colorBlind0.x * _1563))))) * _1595);
      _1607 = exp2(log2(saturate(mad(_colorBlind1.z, _1565, mad(_colorBlind1.y, _1564, (_colorBlind1.x * _1563))))) * _1595);
      _1608 = exp2(log2(saturate(mad(_colorBlind2.z, _1565, mad(_colorBlind2.y, _1564, (_colorBlind2.x * _1563))))) * _1595);
    } else {
      _1606 = _1513;
      _1607 = _1514;
      _1608 = _1515;
    }
  } else {
    _1606 = _1234;
    _1607 = _1235;
    _1608 = _1236;
  }
  if (_etcParams.y > 1.0f) {
    _1617 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1618 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1622 = saturate(1.0f - (dot(float2(_1617, _1618), float2(_1617, _1618)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _1627 = (_1622 * _1606);
    _1628 = (_1622 * _1607);
    _1629 = (_1622 * _1608);
  } else {
    _1627 = _1606;
    _1628 = _1607;
    _1629 = _1608;
  }
  if (_1253 && (_etcParams.z > 0.0f)) {
    _1659 = select((_1627 <= 0.0031308f), (_1627 * 12.92f), (((pow(_1627, 0.41666666f)) * 1.055f) + -0.055f));
    _1660 = select((_1628 <= 0.0031308f), (_1628 * 12.92f), (((pow(_1628, 0.41666666f)) * 1.055f) + -0.055f));
    _1661 = select((_1629 <= 0.0031308f), (_1629 * 12.92f), (((pow(_1629, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1659 = _1627;
    _1660 = _1628;
    _1661 = _1629;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1666 = (float)((uint)((uint)(_1237)));
    if (!(_1666 < _viewDir.w)) {
      if (!(_1666 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1675 = _1659;
        _1676 = _1660;
        _1677 = _1661;
      } else {
        _1675 = 0.0f;
        _1676 = 0.0f;
        _1677 = 0.0f;
      }
    } else {
      _1675 = 0.0f;
      _1676 = 0.0f;
      _1677 = 0.0f;
    }
  } else {
    _1675 = _1659;
    _1676 = _1660;
    _1677 = _1661;
  }
  _1687 = exp2(log2(_1675 * 0.0001f) * 0.15930176f);
  _1688 = exp2(log2(_1676 * 0.0001f) * 0.15930176f);
  _1689 = exp2(log2(_1677 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1687 * 18.6875f) + 1.0f)) * ((_1687 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1688 * 18.6875f) + 1.0f)) * ((_1688 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1689 * 18.6875f) + 1.0f)) * ((_1689 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1250;
  return SV_Target;
}
