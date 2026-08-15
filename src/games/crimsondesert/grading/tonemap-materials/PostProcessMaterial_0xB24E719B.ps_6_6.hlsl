struct PostProcessWorldLoadingStruct {
  float _radius;
  float _squareSize;
  float _maskThreshold;
  float _ringRatio;
  float _cubeSpaceGradientRatio;
  float _cubeSpaceEffectRatio;
  float _depthOuterMaskRadius;
  uint _invertDepthMask;
  float _depthIntensity;
  float _depthContrast;
  float _voronoiDotDensity;
  float _voronoiMovementSpeed;
  float _voronoiOffset;
  float3 _voronoiScrollSpeed;
  float _voronoiDotThreshold;
  float _voronoiDotRatio;
  float _rippleIntensity;
  float _rippleWidth;
  float _rippleCount;
  float _rippleContrast;
  float _rippleSpeed;
  float3 _ripplePosOffset;
  uint _noiseTex;
  float _bigRippleIntensity;
  float _bigRippleWidth;
  float _bigRipplePhaseOffset;
  float _bigRippleSpeed;
  float _bigRippleDistortionIntensity;
  float _bigRippleContrast;
  float _starburstIntensity;
  float _vignetteIntensity;
  uint _excludePlayer;
  float _ppWorldLoadingRatio;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t69, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

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

struct BindlessParameters_PostProcessWorldLoading {
  PostProcessWorldLoadingStruct BindlessParameters_PostProcessWorldLoading;
};

typedef BindlessParameters_PostProcessWorldLoading BindlessParameters_PostProcessWorldLoading_t;
ConstantBuffer<BindlessParameters_PostProcessWorldLoading_t> BindlessParameters_PostProcessWorldLoading[] : register(b0, space100);

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
  float _30;
  uint2 _32;
  float _65;
  float _66;
  float _67;
  float _76;
  float _85;
  float4 _97;
  float _110;
  float _111;
  float _112;
  float _114;
  float _115;
  float _116;
  float _117;
  float _119;
  float _120;
  float _121;
  float _122;
  float _158;
  float _159;
  float _160;
  float _161;
  float _197;
  float _198;
  float _199;
  float _200;
  float _202;
  float _203;
  float _204;
  float _205;
  float4 _208;
  float _218;
  float _219;
  float _220;
  float _245;
  float _246;
  float _247;
  bool _250;
  float _255;
  float _256;
  float _257;
  float _268;
  float _269;
  float _270;
  int _278;
  float _286;
  float _287;
  float _297;
  float _298;
  float _306;
  float _308;
  int _309;
  float _383;
  float _585;
  float _586;
  float _587;
  float _802;
  float _803;
  float _928;
  float _929;
  float _930;
  float _1053;
  float _1119;
  float _1120;
  float _1121;
  float _1122;
  int _1123;
  float _1128;
  float _1129;
  float _1130;
  float _1131;
  int _1132;
  float _1137;
  float _1138;
  float _1139;
  float _1140;
  int _1141;
  float _1333;
  float _1334;
  float _1335;
  float _1336;
  float _1337;
  float _1338;
  float _1444;
  float _1445;
  float _1446;
  float _1447;
  int _1448;
  float _1453;
  float _1454;
  float _1455;
  float _1456;
  int _1457;
  float _1462;
  float _1463;
  float _1464;
  float _1465;
  int _1466;
  float _1611;
  float _1612;
  float _1613;
  int _1614;
  float _1757;
  float _1758;
  float _1759;
  float _1796;
  float _1797;
  float _1798;
  float _2368;
  float _2369;
  float _2370;
  float _2417;
  float _2622;
  float _2623;
  float _2624;
  float _2717;
  float _2718;
  float _2719;
  float _2773;
  float _2774;
  float _2775;
  float _2791;
  float _2792;
  float _2793;
  float _2823;
  float _2824;
  float _2825;
  float _2839;
  float _2840;
  float _2841;
  float _316;
  float _320;
  float _324;
  float _325;
  float _329;
  float _333;
  float _334;
  float _338;
  float _342;
  float _345;
  float _346;
  float _347;
  float _348;
  float _352;
  float _360;
  float _361;
  float _362;
  float _363;
  float _364;
  float _365;
  float _375;
  float _379;
  int _380;
  float _387;
  float _388;
  float _389;
  float _390;
  float _394;
  float _398;
  float _399;
  float _403;
  float _407;
  float _408;
  float _412;
  float _416;
  float _417;
  float _419;
  float _420;
  float _421;
  float _423;
  float _428;
  float _429;
  float _430;
  float _431;
  float _432;
  float _433;
  float _435;
  float _443;
  float _445;
  float _449;
  float _453;
  float _460;
  float _461;
  float _462;
  float _463;
  float _473;
  float _477;
  float _481;
  float _485;
  float _491;
  float _492;
  float _493;
  float _494;
  float _495;
  float _496;
  float _507;
  float _511;
  float _515;
  float _517;
  float _523;
  float _524;
  float _525;
  float _526;
  float _527;
  float _528;
  float _539;
  float _541;
  float _543;
  float _545;
  float _553;
  float _554;
  float _555;
  float _557;
  float _561;
  float _564;
  float _568;
  float _580;
  float _592;
  float _593;
  float _594;
  float _595;
  int _605;
  float _613;
  int _623;
  float _631;
  int _634;
  float _642;
  float _647;
  float _648;
  float _649;
  int _657;
  int _665;
  float _668;
  int _671;
  float _679;
  int _680;
  float _688;
  int _694;
  float _702;
  float _710;
  float _711;
  float _713;
  bool _716;
  bool _717;
  bool _718;
  bool _719;
  float _729;
  float _732;
  int _737;
  int _745;
  int _760;
  int _768;
  int _784;
  int _792;
  int _804;
  float _812;
  int _817;
  float _825;
  int _827;
  float _835;
  int _838;
  float _846;
  int _854;
  float _864;
  float _865;
  float _866;
  float _867;
  float _868;
  float _869;
  int _879;
  float _887;
  int _890;
  float _898;
  int _902;
  float _910;
  int _915;
  float _923;
  float _924;
  int _931;
  float _939;
  int _947;
  float _957;
  float _958;
  float _959;
  float _960;
  float _961;
  float _962;
  int _971;
  float _979;
  int _980;
  float _990;
  float _991;
  float _992;
  int _993;
  float _1001;
  int _1009;
  float _1017;
  int _1032;
  float _1040;
  int _1042;
  float _1050;
  int _1054;
  float _1064;
  float _1065;
  float _1066;
  int _1067;
  float _1075;
  int _1076;
  float _1084;
  float _1085;
  float _1092;
  float _1106;
  float _1107;
  float _1108;
  float _1115;
  float _1116;
  float _1117;
  int _1125;
  int _1134;
  float _1142;
  float _1143;
  float _1144;
  uint _1151;
  uint _1154;
  uint _1159;
  uint _1162;
  uint _1167;
  uint _1170;
  float _1181;
  float _1182;
  float _1183;
  float _1184;
  float _1185;
  float _1186;
  float _1187;
  float _1193;
  bool _1194;
  float _1195;
  float _1196;
  float _1197;
  float _1198;
  int _1199;
  float _1205;
  float _1206;
  float _1207;
  float _1235;
  float4 _1244;
  float _1254;
  float _1255;
  float _1256;
  int _1288;
  float _1296;
  int _1298;
  float _1306;
  float _1311;
  float _1315;
  int _1322;
  float _1330;
  float _1348;
  float _1351;
  float _1354;
  float _1357;
  int _1358;
  float _1366;
  float _1369;
  float _1370;
  float _1371;
  float _1372;
  float _1373;
  float _1374;
  float _1375;
  float _1376;
  float _1377;
  float _1378;
  float _1381;
  float _1384;
  float _1387;
  float _1390;
  float _1393;
  float _1396;
  float _1403;
  float _1404;
  float _1405;
  float _1412;
  float _1413;
  float _1414;
  float _1417;
  float _1420;
  float _1423;
  int _1428;
  float _1436;
  float _1437;
  float _1438;
  float _1439;
  float _1440;
  float _1441;
  float _1442;
  int _1450;
  int _1459;
  float _1467;
  float _1468;
  float _1469;
  float _1473;
  float _1474;
  float _1475;
  float _1490;
  float _1497;
  float _1498;
  float _1499;
  float _1510;
  bool _1511;
  float _1512;
  float _1513;
  float _1514;
  float _1515;
  int _1516;
  float _1526;
  float _1527;
  float _1528;
  float _1556;
  float _1561;
  float _1562;
  int _1563;
  float _1571;
  float _1576;
  float _1577;
  float _1578;
  float _1587;
  float _1589;
  float _1590;
  float _1592;
  float _1594;
  float _1595;
  float _1596;
  float _1602;
  float _1603;
  float _1618;
  float _1619;
  float _1620;
  float4 _1625;
  float4 _1629;
  float _1639;
  float _1640;
  float _1641;
  int _1669;
  float _1677;
  float _1679;
  float _1686;
  float _1687;
  float _1688;
  int _1691;
  float4 _1696;
  float _1706;
  float _1707;
  float _1708;
  int _1736;
  float _1744;
  float _1746;
  int _1760;
  float _1768;
  float _1775;
  float _1776;
  float _1777;
  int _1778;
  int _1786;
  bool _1791;
  int _1799;
  float _1807;
  float _1814;
  float _1842;
  float _1847;
  float _1848;
  int _1849;
  int _1857;
  float _1858;
  float _1864;
  float _1865;
  float _1866;
  float _1867;
  float _1871;
  float _1874;
  float _1876;
  bool _1879;
  bool _1880;
  bool _1881;
  bool _1882;
  float _1891;
  float _1892;
  float _1893;
  float _1894;
  float _1901;
  float _1902;
  float _1906;
  float _1908;
  float _1910;
  float _1916;
  float _1920;
  float _1933;
  float _1934;
  float _1936;
  float _1943;
  float _1945;
  float _1956;
  float _1975;
  bool _1978;
  bool _1979;
  bool _1980;
  bool _1981;
  float _1990;
  float _2001;
  float _2050;
  float _2053;
  float _2055;
  bool _2058;
  bool _2059;
  bool _2060;
  bool _2061;
  float _2070;
  float _2071;
  float _2073;
  float _2078;
  float _2085;
  float _2091;
  float _2102;
  float _2121;
  bool _2124;
  bool _2125;
  bool _2126;
  bool _2127;
  float _2136;
  float _2146;
  float _2192;
  float _2193;
  float _2197;
  float _2200;
  float _2202;
  bool _2205;
  bool _2206;
  bool _2207;
  bool _2208;
  float _2217;
  float _2218;
  float _2224;
  float _2231;
  float _2237;
  float _2248;
  float _2267;
  bool _2270;
  bool _2271;
  bool _2272;
  bool _2273;
  float _2282;
  float _2292;
  int _2349;
  float _2357;
  float _2371;
  float _2372;
  float _2379;
  int _2384;
  float _2392;
  float _2394;
  float _2401;
  float _2402;
  float _2403;
  uint _2404;
  bool _2420;
  float _2426;
  float _2475;
  float _2476;
  float _2477;
  float _2479;
  float _2486;
  float _2487;
  float _2488;
  float _2507;
  float _2508;
  float _2509;
  float _2510;
  float _2511;
  float _2512;
  float _2513;
  float _2514;
  float _2515;
  float _2561;
  float _2562;
  float _2563;
  float _2564;
  float _2565;
  float _2566;
  float _2567;
  float _2584;
  float _2585;
  float _2586;
  float _2587;
  float _2593;
  float _2596;
  float _2603;
  float _2604;
  float _2605;
  float _2634;
  float _2659;
  float _2660;
  float _2661;
  float _2680;
  float _2681;
  float _2682;
  float _2688;
  float _2692;
  float _2693;
  float _2694;
  float _2695;
  float _2700;
  float _2725;
  float _2729;
  float _2730;
  float _2731;
  float _2732;
  float _2762;
  float _2781;
  float _2782;
  float _2786;
  float _2830;
  float _2851;
  float _2852;
  float _2853;
  int __loop_jump_target = -1;
  _30 = 1.0f / max(0.001f, _exposure0.x);
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_32.x, _32.y);
  _65 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(1551))) & 15)));
  _66 = (float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(TEXCOORD.x))));
  _67 = (float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(TEXCOORD.y))));
  _76 = -0.0f - frac(frac(dot(float2(((_65 * 32.665f) + _66), ((_65 * 11.815f) + _67)), float2(0.06711056f, 0.00583715f))) * 52.982918f);
  _85 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _97 = __3__36__0__0__g_gbufferNormal.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0));
  _110 = (saturate(_97.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _111 = (saturate(_97.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _112 = (saturate(_97.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _114 = rsqrt(dot(float3(_110, _111, _112), float3(_110, _111, _112)));  // [sem: invLength]
  _115 = _114 * _110;
  _116 = _114 * _111;
  _117 = _112 * _114;
  _119 = (TEXCOORD.x * 2.0f) + -1.0f;
  _120 = TEXCOORD.y * 2.0f;
  _121 = 1.0f - _120;
  _122 = max(1e-07f, _85.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _158 = mad((_invViewProj[3].z), _122, mad((_invViewProj[3].y), _121, ((_invViewProj[3].x) * _119))) + (_invViewProj[3].w);
  _159 = (mad((_invViewProj[0].z), _122, mad((_invViewProj[0].y), _121, ((_invViewProj[0].x) * _119))) + (_invViewProj[0].w)) / _158;
  _160 = (mad((_invViewProj[1].z), _122, mad((_invViewProj[1].y), _121, ((_invViewProj[1].x) * _119))) + (_invViewProj[1].w)) / _158;
  _161 = (mad((_invViewProj[2].z), _122, mad((_invViewProj[2].y), _121, ((_invViewProj[2].x) * _119))) + (_invViewProj[2].w)) / _158;
  _197 = mad((_invViewProjRelative[3].z), _122, mad((_invViewProjRelative[3].y), _121, ((_invViewProjRelative[3].x) * _119))) + (_invViewProjRelative[3].w);
  _198 = (mad((_invViewProjRelative[0].z), _122, mad((_invViewProjRelative[0].y), _121, ((_invViewProjRelative[0].x) * _119))) + (_invViewProjRelative[0].w)) / _197;
  _199 = (mad((_invViewProjRelative[1].z), _122, mad((_invViewProjRelative[1].y), _121, ((_invViewProjRelative[1].x) * _119))) + (_invViewProjRelative[1].w)) / _197;
  _200 = (mad((_invViewProjRelative[2].z), _122, mad((_invViewProjRelative[2].y), _121, ((_invViewProjRelative[2].x) * _119))) + (_invViewProjRelative[2].w)) / _197;
  _202 = rsqrt(dot(float3(_198, _199, _200), float3(_198, _199, _200)));  // [sem: invLength]
  _203 = _202 * _198;
  _204 = _202 * _199;
  _205 = _202 * _200;
  _208 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _218 = (pow(_208.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _219 = (pow(_208.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _220 = (pow(_208.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _245 = exp2(log2(max(0.0f, (_218 + -0.8359375f)) / (18.851562f - (_218 * 18.6875f))) * 6.277395f) * 10000.0f;
  _246 = exp2(log2(max(0.0f, (_219 + -0.8359375f)) / (18.851562f - (_219 * 18.6875f))) * 6.277395f) * 10000.0f;
  _247 = exp2(log2(max(0.0f, (_220 + -0.8359375f)) / (18.851562f - (_220 * 18.6875f))) * 6.277395f) * 10000.0f;
  _250 = (_85.x < 1e-07f) || (_85.x == 1.0f);
  _255 = _159 - _viewPos.x;
  _256 = _160 - _viewPos.y;
  _257 = _161 - _viewPos.z;
  _268 = _viewPos.x - _viewPosPrev.x;
  _269 = _viewPos.y - _viewPosPrev.y;
  _270 = _viewPos.z - _viewPosPrev.z;
  _278 = WaveReadLaneFirst(_materialIndex);
  _286 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_278 < (uint)170000), _278, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._cubeSpaceGradientRatio);
  _287 = _76 * 0.01f;
  _297 = frac((_viewPos.x * 0.01f) - (_268 * _287)) + 2000.0f;
  _298 = frac((_viewPos.y * 0.01f) - (_269 * _287)) + 2000.0f;
  _306 = (frac((_viewPos.z * 0.01f) - (_270 * _287)) + 2000.0f) + (frac(_time.x * 0.1f) - (_76 * 0.005f));
  _308 = 0.0f;
  _309 = 0;
  while(true) {
    _316 = ((_308 * _203) + _297) * 4.0f;
    _320 = frac(abs(_316));
    _324 = (select((_316 >= (-0.0f - _316)), _320, (-0.0f - _320)) * 0.25f) + -0.125f;
    _325 = ((_308 * _204) + _298) * 4.0f;
    _329 = frac(abs(_325));
    _333 = (select((_325 >= (-0.0f - _325)), _329, (-0.0f - _329)) * 0.25f) + -0.125f;
    _334 = ((_308 * _205) + _306) * 4.0f;
    _338 = frac(abs(_334));
    _342 = (select((_334 >= (-0.0f - _334)), _338, (-0.0f - _338)) * 0.25f) + -0.125f;
    _345 = _time.x * 0.5f;
    _346 = cos(_345);
    _347 = sin(_345);
    _348 = -0.0f - _347;
    _352 = mad(_342, _346, (_347 * _333));
    _360 = abs(mad(_352, _348, (_346 * _324))) + -0.0005f;
    _361 = abs(mad(_342, _348, (_346 * _333))) + -0.0005f;
    _362 = abs(mad(_352, _346, (_347 * _324))) + -0.0005f;
    _363 = max(_360, 0.0f);
    _364 = max(_361, 0.0f);
    _365 = max(_362, 0.0f);
    _375 = min(max(_360, max(_361, _362)), 0.0f) + sqrt(((_364 * _364) + (_363 * _363)) + (_365 * _365));
    if (!(_375 < (_308 * 0.001f))) {
      _379 = _375 + _308;
      _380 = (int)(_309) + (int)(1);
      if ((int)_380 < (int)80) {
        _308 = _379;
        _309 = _380;
        continue;
      } else {
        _383 = _379;
      }
    } else {
      _383 = _308;
    }
    _387 = (_383 * _203) + _297;
    _388 = (_383 * _204) + _298;
    _389 = (_383 * _205) + _306;
    _390 = _387 * 4.0f;
    _394 = frac(abs(_390));
    _398 = (select((_390 >= (-0.0f - _390)), _394, (-0.0f - _394)) * 0.25f) + -0.125f;
    _399 = _388 * 4.0f;
    _403 = frac(abs(_399));
    _407 = (select((_399 >= (-0.0f - _399)), _403, (-0.0f - _403)) * 0.25f) + -0.125f;
    _408 = _389 * 4.0f;
    _412 = frac(abs(_408));
    _416 = (select((_408 >= (-0.0f - _408)), _412, (-0.0f - _412)) * 0.25f) + -0.125f;
    _417 = _407 * _346;
    _419 = _407 * _347;
    _420 = mad(_416, _346, _419);
    _421 = _398 * _346;
    _423 = _398 * _347;
    _428 = abs(mad(_420, _348, _421)) + -0.0005f;
    _429 = abs(mad(_416, _348, _417)) + -0.0005f;
    _430 = abs(mad(_420, _346, _423)) + -0.0005f;
    _431 = max(_428, 0.0f);
    _432 = max(_429, 0.0f);
    _433 = max(_430, 0.0f);
    _435 = _432 * _432;
    _443 = min(max(_428, max(_429, _430)), 0.0f) + sqrt((_435 + (_431 * _431)) + (_433 * _433));
    _445 = (_387 + 0.001f) * 4.0f;
    _449 = frac(abs(_445));
    _453 = (select((_445 >= (-0.0f - _445)), _449, (-0.0f - _449)) * 0.25f) + -0.125f;
    _460 = abs(mad(_420, _348, (_453 * _346))) + -0.0005f;
    _461 = abs(mad(_420, _346, (_453 * _347))) + -0.0005f;
    _462 = max(_460, 0.0f);
    _463 = max(_461, 0.0f);
    _473 = (_388 + 0.001f) * 4.0f;
    _477 = frac(abs(_473));
    _481 = (select((_473 >= (-0.0f - _473)), _477, (-0.0f - _477)) * 0.25f) + -0.125f;
    _485 = mad(_416, _346, (_481 * _347));
    _491 = abs(mad(_485, _348, _421)) + -0.0005f;
    _492 = abs(mad(_416, _348, (_481 * _346))) + -0.0005f;
    _493 = abs(mad(_485, _346, _423)) + -0.0005f;
    _494 = max(_491, 0.0f);
    _495 = max(_492, 0.0f);
    _496 = max(_493, 0.0f);
    _507 = (_389 + 0.001f) * 4.0f;
    _511 = frac(abs(_507));
    _515 = (select((_507 >= (-0.0f - _507)), _511, (-0.0f - _511)) * 0.25f) + -0.125f;
    _517 = mad(_515, _346, _419);
    _523 = abs(mad(_517, _348, _421)) + -0.0005f;
    _524 = abs(mad(_515, _348, _417)) + -0.0005f;
    _525 = abs(mad(_517, _346, _423)) + -0.0005f;
    _526 = max(_523, 0.0f);
    _527 = max(_524, 0.0f);
    _528 = max(_525, 0.0f);
    _539 = min(max(_460, max(_429, _461)), 0.0f) + (sqrt(((_462 * _462) + _435) + (_463 * _463)) - _443);
    _541 = min(max(_491, max(_492, _493)), 0.0f) + (sqrt(((_495 * _495) + (_494 * _494)) + (_496 * _496)) - _443);
    _543 = min(max(_523, max(_524, _525)), 0.0f) + (sqrt(((_527 * _527) + (_526 * _526)) + (_528 * _528)) - _443);
    _545 = rsqrt(dot(float3(_539, _541, _543), float3(_539, _541, _543)));  // [sem: invLength]
    _553 = -0.0f - _sunDirection.x;
    _554 = -0.0f - _sunDirection.y;
    _555 = -0.0f - _sunDirection.z;
    _557 = rsqrt(dot(float3(_553, _554, _555), float3(_553, _554, _555)));  // [sem: invLength]
    _561 = dot(float3((_545 * _539), (_545 * _541), (_545 * _543)), float3((_557 * _553), (_557 * _554), (_557 * _555)));
    _564 = saturate((_383 * 0.25f) + -0.25f);  // [sem: expr_sat]
    _568 = (_564 * _564) * (3.0f - (_564 * 2.0f));
    if (_250) {
      _580 = exp2(log2(abs(_204)) * 0.5f) * _286;
      _585 = (_580 * 0.03f);
      _586 = (_580 * 0.05f);
      _587 = (_580 * 0.08f);
    } else {
      _585 = 0.0f;
      _586 = 0.0f;
      _587 = 0.0f;
    }
    _592 = exp2(log2((exp2(log2((1.0f - _561) + (_568 * _561)) * 4.0f) * 0.2f) + 0.1f) * 1.5f);
    _593 = _592 * 0.7f;
    _594 = _592 * 0.4f;
    _595 = _592 * 0.1f;
    _605 = WaveReadLaneFirst(_materialIndex);
    _613 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_605 < (uint)170000), _605, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._cubeSpaceEffectRatio);
    _623 = WaveReadLaneFirst(_materialIndex);
    _631 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_623 < (uint)170000), _623, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiDotRatio);
    if (_631 > 0.0f) {
      _634 = WaveReadLaneFirst(_materialIndex);
      _642 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_634 < (uint)170000), _634, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._depthOuterMaskRadius);
      _647 = _159 - _mainPosition.x;
      _648 = _160 - _mainPosition.y;
      _649 = _161 - _mainPosition.z;
      _657 = WaveReadLaneFirst(_materialIndex);
      _665 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_657 < (uint)170000), _657, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._invertDepthMask);
      _668 = saturate(_85.x);  // [sem: expr_sat]
      _671 = WaveReadLaneFirst(_materialIndex);
      _679 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_671 < (uint)170000), _671, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._depthContrast);
      _680 = WaveReadLaneFirst(_materialIndex);
      _688 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_680 < (uint)170000), _680, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._depthIntensity);
      _694 = WaveReadLaneFirst(_materialIndex);
      _702 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_694 < (uint)170000), _694, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleDistortionIntensity);
      if (_702 > 0.0f) {
        _710 = (_159 - _mainPosition.x) * 0.02f;
        _711 = (_161 - _mainPosition.z) * 0.02f;
        _713 = atan(_711 / _710);
        _716 = (_710 < 0.0f);
        _717 = (_710 == 0.0f);
        _718 = (_711 >= 0.0f);
        _719 = (_711 < 0.0f);
        _729 = sqrt((_710 * _710) + (_711 * _711));
        _732 = select((_717 && _718), 1.5f, select((_717 && _719), -1.5f, (select((_716 && _719), (_713 + -3.1415927f), select((_716 && _718), (_713 + 3.1415927f), _713)) * 0.9549296f)));
        _737 = WaveReadLaneFirst(_materialIndex);
        _745 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_737 < (uint)170000), _737, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._noiseTex);
        _760 = WaveReadLaneFirst(_materialIndex);
        _768 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_760 < (uint)170000), _760, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._noiseTex);
        _784 = WaveReadLaneFirst(_materialIndex);
        _792 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_784 < (uint)170000), _784, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._noiseTex);
        _802 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_792 < (uint)65000), _792, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_732 * 0.16666667f), ((_729 * 0.16666667f) - (_time.x * 0.05f)))))).x);
        _803 = ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_768 < (uint)65000), _768, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_732 * 0.5f), ((_729 * 0.5f) - (_time.x * 0.1f)))))).x) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_745 < (uint)65000), _745, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_732, (_729 - (_time.x * 0.05f)))))).x));
      } else {
        _802 = 0.0f;
        _803 = 0.0f;
      }
      _804 = WaveReadLaneFirst(_materialIndex);
      _812 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_804 < (uint)170000), _804, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleIntensity);
      if (_812 > 0.0f) {
        _817 = WaveReadLaneFirst(_materialIndex);
        _825 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_817 < (uint)170000), _817, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleSpeed);
        _827 = WaveReadLaneFirst(_materialIndex);
        _835 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_827 < (uint)170000), _827, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRipplePhaseOffset);
        _838 = WaveReadLaneFirst(_materialIndex);
        _846 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_838 < (uint)170000), _838, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleWidth);
        _854 = WaveReadLaneFirst(_materialIndex);
        _864 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_854 < (uint)170000), _854, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.x);
        _865 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_854 < (uint)170000), _854, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.y);
        _866 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_854 < (uint)170000), _854, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.z);
        _867 = _864 + (_159 - _mainPosition.x);
        _868 = _865 + (_160 - _mainPosition.y);
        _869 = _866 + (_161 - _mainPosition.z);
        _879 = WaveReadLaneFirst(_materialIndex);
        _887 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_879 < (uint)170000), _879, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._rippleCount);
        _890 = WaveReadLaneFirst(_materialIndex);
        _898 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_890 < (uint)170000), _890, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleDistortionIntensity);
        _902 = WaveReadLaneFirst(_materialIndex);
        _910 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_902 < (uint)170000), _902, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleContrast);
        _915 = WaveReadLaneFirst(_materialIndex);
        _923 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_915 < (uint)170000), _915, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleIntensity);
        _924 = _923 * saturate(exp2(log2(frac(((((1.0f / max(1e-05f, _846)) * exp2(log2(sqrt(sqrt(dot(float3(_867, _868, _869), float3(_867, _868, _869))))) * 1.2f)) * _887) - frac(_835 + (_825 * _time.x))) - (_898 * _802))) * _910));
        _928 = _924;
        _929 = (_924 * 0.033104755f);
        _930 = (_924 * 0.043233637f);
      } else {
        _928 = 0.0f;
        _929 = 0.0f;
        _930 = 0.0f;
      }
      _931 = WaveReadLaneFirst(_materialIndex);
      _939 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_931 < (uint)170000), _931, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._rippleWidth);
      _947 = WaveReadLaneFirst(_materialIndex);
      _957 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_947 < (uint)170000), _947, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.x);
      _958 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_947 < (uint)170000), _947, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.y);
      _959 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_947 < (uint)170000), _947, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.z);
      _960 = _957 + (_159 - _mainPosition.x);
      _961 = _958 + (_160 - _mainPosition.y);
      _962 = _959 + (_161 - _mainPosition.z);
      _971 = WaveReadLaneFirst(_materialIndex);
      _979 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_971 < (uint)170000), _971, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._rippleWidth);
      _980 = WaveReadLaneFirst(_materialIndex);
      _990 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_980 < (uint)170000), _980, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.x);
      _991 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_980 < (uint)170000), _980, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.y);
      _992 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_980 < (uint)170000), _980, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.z);
      _993 = WaveReadLaneFirst(_materialIndex);
      _1001 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_993 < (uint)170000), _993, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._rippleCount);
      _1009 = WaveReadLaneFirst(_materialIndex);
      _1017 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1009 < (uint)170000), _1009, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._rippleSpeed);
      if ((sqrt(((_255 * _255) + (_256 * _256)) + (_257 * _257)) + -1500.0f) < 1.0f) {
        _1032 = WaveReadLaneFirst(_materialIndex);
        _1040 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1032 < (uint)170000), _1032, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiDotDensity);
        _1053 = _1040;
      } else {
        _1042 = WaveReadLaneFirst(_materialIndex);
        _1050 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1042 < (uint)170000), _1042, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiDotDensity);
        _1053 = (_1050 * 0.25f);
      }
      _1054 = WaveReadLaneFirst(_materialIndex);
      _1064 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1054 < (uint)170000), _1054, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiScrollSpeed.x);
      _1065 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1054 < (uint)170000), _1054, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiScrollSpeed.y);
      _1066 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1054 < (uint)170000), _1054, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiScrollSpeed.z);
      _1067 = WaveReadLaneFirst(_materialIndex);
      _1075 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1067 < (uint)170000), _1067, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiOffset);
      _1076 = WaveReadLaneFirst(_materialIndex);
      _1084 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1076 < (uint)170000), _1076, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiMovementSpeed);
      _1085 = _76 * 1.5f;
      _1092 = _928 * 3.0f;
      _1106 = (_time.x * _1064) + (_1053 * ((_159 - (_268 * _1085)) - _1092));
      _1107 = (_time.x * _1065) + (_1053 * ((_160 - (_269 * _1085)) - _1092));
      _1108 = (_time.x * _1066) + (_1053 * ((_161 - (_270 * _1085)) - _1092));
      _1115 = floor(_1106);
      _1116 = floor(_1107);
      _1117 = floor(_1108);
      _1119 = 1e+14f;
      _1120 = 0.0f;
      _1121 = 0.0f;
      _1122 = 0.0f;
      _1123 = -1;
      while(true) {
        _1128 = _1119;
        _1129 = _1120;
        _1130 = _1121;
        _1131 = _1122;
        _1132 = -1;
        while(true) {
          _1137 = _1128;
          _1138 = _1129;
          _1139 = _1130;
          _1140 = _1131;
          _1141 = -1;
          while(true) {
            _1142 = (float)((int)(_1123));
            _1143 = (float)((int)(_1132));
            _1144 = (float)((int)(_1141));
            _1151 = (uint)((uint)(asint((_1143 + _1116)))) * (uint)(1025);
            _1154 = (uint)((uint)(((uint)((uint)(_1151)) >> 6) ^ _1151)) * (uint)(9);
            _1159 = (uint)((uint)(asint((_1144 + _1117)))) * (uint)(1025);
            _1162 = (uint)((uint)(((uint)((uint)(_1159)) >> 6) ^ _1159)) * (uint)(9);
            _1167 = (uint)((uint)((((int)((uint)((uint)(((uint)((uint)(_1154)) >> 11) ^ _1154)) * (uint)(32769))) ^ asint((_1142 + _1115))) ^ ((int)((uint)((uint)(((uint)((uint)(_1162)) >> 11) ^ _1162)) * (uint)(32769))))) * (uint)(1025);
            _1170 = (uint)((uint)(((uint)((uint)(_1167)) >> 6) ^ _1167)) * (uint)(9);
            _1181 = sin(((((_time.x + 1000.0f) * _1084) + _1075) * 2.0f) * (asfloat(((int)(((int)((uint)((uint)(((uint)((uint)(_1170)) >> 11) ^ _1170)) * (uint)(32769))) & 8388607) | (int)(1065353216))) + -1.0f));
            _1182 = _1181 + _1142;
            _1183 = _1181 + _1143;
            _1184 = _1181 + _1144;
            _1185 = (frac(_1106) + -0.5f) - _1182;
            _1186 = (frac(_1107) + -0.5f) - _1183;
            _1187 = (frac(_1108) + -0.5f) - _1184;
            _1193 = sqrt(((_1186 * _1186) + (_1185 * _1185)) + (_1187 * _1187));
            _1194 = (_1193 < _1137);
            _1195 = select(_1194, _1193, _1137);
            _1196 = select(_1194, _1182, _1138);
            _1197 = select(_1194, _1183, _1139);
            _1198 = select(_1194, _1184, _1140);
            _1199 = (int)(_1141) + (int)(1);
            if (!(_1199 == 2)) {
              _1137 = _1195;
              _1138 = _1196;
              _1139 = _1197;
              _1140 = _1198;
              _1141 = _1199;
              continue;
            }
            while(true) {
              _1134 = (int)(_1132) + (int)(1);
              if (!(_1134 == 2)) {
                _1128 = _1195;
                _1129 = _1196;
                _1130 = _1197;
                _1131 = _1198;
                _1132 = _1134;
                __loop_jump_target = 1127;
                break;
              }
              while(true) {
                _1125 = (int)(_1123) + (int)(1);
                if (!(_1125 == 2)) {
                  _1119 = _1195;
                  _1120 = _1196;
                  _1121 = _1197;
                  _1122 = _1198;
                  _1123 = _1125;
                  __loop_jump_target = 1118;
                  break;
                }
                _1205 = (_1196 + _1115) / _1053;
                _1206 = (_1197 + _1116) / _1053;
                _1207 = (_1198 + _1117) / _1053;
                _1235 = mad((_viewProj[3].z), _1207, mad((_viewProj[3].y), _1206, ((_viewProj[3].x) * _1205))) + (_viewProj[3].w);
                // [sem: _3__36__0__0__g_sceneColor_sample]
                _1244 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((mad((_viewProj[0].z), _1207, mad((_viewProj[0].y), _1206, ((_viewProj[0].x) * _1205))) + (_viewProj[0].w)) / _1235) * 0.5f) + 0.5f), (0.5f - (((mad((_viewProj[1].z), _1207, mad((_viewProj[1].y), _1206, ((_viewProj[1].x) * _1205))) + (_viewProj[1].w)) / _1235) * 0.5f))));
                _1254 = (pow(_1244.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                _1255 = (pow(_1244.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                _1256 = (pow(_1244.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                _1288 = WaveReadLaneFirst(_materialIndex);
                _1296 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1288 < (uint)170000), _1288, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiDotThreshold);
                _1298 = WaveReadLaneFirst(_materialIndex);
                _1306 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1298 < (uint)170000), _1298, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._rippleIntensity);
                _1311 = ((_1296 * select(_250, 0.0f, _1195)) - (_1306 * (((_928 * 0.5f) + 1.0f) - ((frac((((exp2(log2(sqrt(sqrt(dot(float3(_960, _961, _962), float3(_960, _961, _962))))) * 1.2f) * 40.0f) * (1.0f / max(1e-05f, _939))) * _1001) - (_1017 * (_time.x + (_803 * 1.5f)))) + (_803 * 0.3f)) * max(0.0f, (1.0f - ((1.0f - ((1.0f / max(1e-05f, _642)) * sqrt(dot(float3(_647, _648, _649), float3(_647, _648, _649))))) * 2.0f))))))) + min(max(saturate(exp2(log2(_688 * select((((float)((uint)((uint)(_665)))) == 1.0f), (1.0f - _668), _668)) * _679)), 0.0f), 1.0f);
                _1315 = saturate(_1311 / max((0.1f / _1311), 0.0f));  // [sem: expr_sat]
                _1322 = WaveReadLaneFirst(_materialIndex);
                _1330 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1322 < (uint)170000), _1322, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiDotRatio);
                _1333 = (_1330 * (1.0f - floor((_1315 * _1315) * (3.0f - (_1315 * 2.0f)))));
                _1334 = select(_250, 0.0f, (exp2(log2(max(0.0f, (_1254 + -0.8359375f)) / (18.851562f - (_1254 * 18.6875f))) * 6.277395f) * 10000.0f));
                _1335 = select(_250, 0.0f, (exp2(log2(max(0.0f, (_1255 + -0.8359375f)) / (18.851562f - (_1255 * 18.6875f))) * 6.277395f) * 10000.0f));
                _1336 = select(_250, 0.0f, (exp2(log2(max(0.0f, (_1256 + -0.8359375f)) / (18.851562f - (_1256 * 18.6875f))) * 6.277395f) * 10000.0f));
                _1337 = _929;
                _1338 = _930;
                break;
              }
              if (__loop_jump_target != -1) {
                break;
              }
              break;
            }
            if (__loop_jump_target != -1) {
              break;
            }
            break;
          }
          if (__loop_jump_target == 1127) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
          break;
        }
        if (__loop_jump_target == 1118) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
    } else {
      _1333 = 0.0f;
      _1334 = 0.0f;
      _1335 = 0.0f;
      _1336 = 0.0f;
      _1337 = 0.0f;
      _1338 = 0.0f;
    }
    _1348 = 0.001f / max(0.001f, _exposure0.x);
    _1351 = (((_1334 * _1333) + (saturate(_613 * (lerp(_593, _585, _568))) * _30)) + (_1337 * 0.01f)) + _1348;
    _1354 = (((_1335 * _1333) + (saturate(_613 * (lerp(_594, _586, _568))) * _30)) + (_1337 * 0.01f)) + _1348;
    _1357 = (((_1336 * _1333) + (saturate(_613 * (lerp(_595, _587, _568))) * _30)) + (_1338 * 0.01f)) + _1348;
    _1358 = WaveReadLaneFirst(_materialIndex);
    _1366 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1358 < (uint)170000), _1358, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._radius);
    if (_1366 > 0.001f) {
      _1369 = ddx_coarse(_203);
      _1370 = ddx_coarse(_204);
      _1371 = ddx_coarse(_205);
      _1372 = ddy_coarse(_203);
      _1373 = ddy_coarse(_204);
      _1374 = ddy_coarse(_205);
      _1375 = ddx_coarse(TEXCOORD.x);
      _1376 = ddx_coarse(TEXCOORD.y);
      _1377 = ddy_coarse(TEXCOORD.x);
      _1378 = ddy_coarse(TEXCOORD.y);
      _1381 = (_1373 * _117) - (_1374 * _116);
      _1384 = (_1374 * _115) - (_1372 * _117);
      _1387 = (_1372 * _116) - (_1373 * _115);
      _1390 = (_1371 * _116) - (_1370 * _117);
      _1393 = (_1369 * _117) - (_1371 * _115);
      _1396 = (_1370 * _115) - (_1369 * _116);
      _1403 = (_1377 * _1390) + (_1381 * _1375);
      _1404 = (_1377 * _1393) + (_1384 * _1375);
      _1405 = (_1377 * _1396) + (_1387 * _1375);
      _1412 = (_1378 * _1390) + (_1381 * _1376);
      _1413 = (_1378 * _1393) + (_1384 * _1376);
      _1414 = (_1378 * _1396) + (_1376 * _1387);
      _1417 = max(dot(float3(_1403, _1404, _1405), float3(_1403, _1404, _1405)), dot(float3(_1412, _1413, _1414), float3(_1412, _1413, _1414)));
      _1420 = rsqrt(select((!(_1417 == 0.0f)), _1417, 0.1f));  // [sem: rsqrt_val]
      _1423 = _1420 * _203;
      _1428 = WaveReadLaneFirst(_materialIndex);
      _1436 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1428 < (uint)170000), _1428, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._squareSize);
      _1437 = _1436 * _159;
      _1438 = _1436 * _160;
      _1439 = _1436 * _161;
      _1440 = floor(_1437);
      _1441 = floor(_1438);
      _1442 = floor(_1439);
      _1444 = 10.0f;
      _1445 = 0.0f;
      _1446 = 0.0f;
      _1447 = 0.0f;
      _1448 = -1;
      while(true) {
        _1453 = _1444;
        _1454 = _1445;
        _1455 = _1446;
        _1456 = _1447;
        _1457 = -1;
        while(true) {
          _1462 = _1453;
          _1463 = _1454;
          _1464 = _1455;
          _1465 = _1456;
          _1466 = -1;
          while(true) {
            _1467 = (float)((int)(_1466));
            _1468 = (float)((int)(_1457));
            _1469 = (float)((int)(_1448));
            _1473 = sin(_1467 + _1440);
            _1474 = sin(_1468 + _1441);
            _1475 = sin(_1469 + _1442);
            _1490 = _time.x * 0.2f;
            _1497 = sin(_1490 * frac(sin(dot(float3(_1473, _1474, _1475), float3(12.989f, 78.233f, 37.719f))) * 143758.55f)) + _1467;
            _1498 = sin(_1490 * frac(sin(dot(float3(_1473, _1474, _1475), float3(39.346f, 11.135f, 83.155f))) * 143758.55f)) + _1468;
            _1499 = sin(_1490 * frac(sin(dot(float3(_1473, _1474, _1475), float3(73.156f, 52.235f, 9.151f))) * 143758.55f)) + _1469;
            _1510 = max(abs((_1440 - _1437) + _1497), max(abs((_1441 - _1438) + _1498), abs((_1442 - _1439) + _1499)));
            _1511 = (_1510 < _1462);
            _1512 = select(_1511, _1510, _1462);
            _1513 = select(_1511, _1497, _1463);
            _1514 = select(_1511, _1498, _1464);
            _1515 = select(_1511, _1499, _1465);
            _1516 = (int)(_1466) + (int)(1);
            if (!(_1516 == 2)) {
              _1462 = _1512;
              _1463 = _1513;
              _1464 = _1514;
              _1465 = _1515;
              _1466 = _1516;
              continue;
            }
            while(true) {
              _1459 = (int)(_1457) + (int)(1);
              if (!(_1459 == 2)) {
                _1453 = _1512;
                _1454 = _1513;
                _1455 = _1514;
                _1456 = _1515;
                _1457 = _1459;
                __loop_jump_target = 1452;
                break;
              }
              while(true) {
                _1450 = (int)(_1448) + (int)(1);
                if (!(_1450 == 2)) {
                  _1444 = _1512;
                  _1445 = _1513;
                  _1446 = _1514;
                  _1447 = _1515;
                  _1448 = _1450;
                  __loop_jump_target = 1443;
                  break;
                }
                _1526 = (_1513 + _1440) / _1436;
                _1527 = (_1514 + _1441) / _1436;
                _1528 = (_1515 + _1442) / _1436;
                _1556 = mad((_viewProj[3].z), _1528, mad((_viewProj[3].y), _1527, ((_viewProj[3].x) * _1526))) + (_viewProj[3].w);
                _1561 = (((mad((_viewProj[0].z), _1528, mad((_viewProj[0].y), _1527, ((_viewProj[0].x) * _1526))) + (_viewProj[0].w)) / _1556) * 0.5f) + 0.5f;
                _1562 = 0.5f - (((mad((_viewProj[1].z), _1528, mad((_viewProj[1].y), _1527, ((_viewProj[1].x) * _1526))) + (_viewProj[1].w)) / _1556) * 0.5f);
                _1563 = WaveReadLaneFirst(_materialIndex);
                _1571 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1563 < (uint)170000), _1563, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._radius);
                _1576 = _1526 - _mainPosition.x;
                _1577 = _1527 - _mainPosition.y;
                _1578 = _1528 - _mainPosition.z;
                // [sem: expr_sat]
                _1587 = saturate(1.0f - ((1.0f - ((1.0f / max(1e-05f, _1571)) * sqrt(dot(float3(_1576, _1577, _1578), float3(_1576, _1577, _1578))))) * 1.0152284f));
                _1589 = 1.0f - saturate(_1587);
                _1590 = _1587 * 0.5f;
                _1592 = (TEXCOORD.x - _1561) / _1589;
                _1594 = (TEXCOORD.y - _1562) / _1589;
                _1595 = sin(_1590);
                _1596 = cos(_1590);
                _1602 = mad((-0.0f - _1595), _1594, (_1596 * _1592)) + _1561;
                _1603 = mad(_1596, _1594, (_1595 * _1592)) + _1562;
                _1611 = _1351;
                _1612 = _1354;
                _1613 = _1357;
                _1614 = 1;
                while(true) {
                  _1618 = (((float)((int)((int)(6) - (int)(_1614)))) * 0.16666667f) * ((saturate(_85.x * 1.5f) * 0.5f) * saturate(frac(frac(dot(float2((_66 + 32.665f), (_67 + 11.815f)), float2(0.06711056f, 0.00583715f))) * 52.982918f) + 0.5f));
                  _1619 = _1618 * mad((_1420 * _1405), _205, mad((_1420 * _1404), _204, (_1423 * _1403)));
                  _1620 = _1618 * mad((_1420 * _1414), _205, mad((_1420 * _1413), _204, (_1423 * _1412)));
                  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1625 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1619 + TEXCOORD.x), (_1620 + TEXCOORD.y)));
                  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1629 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1619 + _1602), (_1620 + _1603)));
                  _1639 = (pow(_1629.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                  _1640 = (pow(_1629.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                  _1641 = (pow(_1629.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                  _1669 = WaveReadLaneFirst(_materialIndex);
                  _1677 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1669 < (uint)170000), _1669, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._maskThreshold);
                  _1679 = (float)((bool)(_1625.w < _1677));
                  _1686 = (_1679 * ((exp2(log2(max(0.0f, (_1639 + -0.8359375f)) / (18.851562f - (_1639 * 18.6875f))) * 6.277395f) * 4000.0f) - _1611)) + _1611;
                  _1687 = (_1679 * ((exp2(log2(max(0.0f, (_1640 + -0.8359375f)) / (18.851562f - (_1640 * 18.6875f))) * 6.277395f) * 4000.0f) - _1612)) + _1612;
                  _1688 = (_1679 * ((exp2(log2(max(0.0f, (_1641 + -0.8359375f)) / (18.851562f - (_1641 * 18.6875f))) * 6.277395f) * 4000.0f) - _1613)) + _1613;
                  if (!(_1625.w > 0.9f)) {
                    _1691 = (int)(_1614) + (int)(1);
                    if ((int)_1691 < (int)6) {
                      _1611 = _1686;
                      _1612 = _1687;
                      _1613 = _1688;
                      _1614 = _1691;
                      continue;
                    }
                  }
                  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1696 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_1602, _1603));
                  _1706 = (pow(_1696.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                  _1707 = (pow(_1696.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                  _1708 = (pow(_1696.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                  _1736 = WaveReadLaneFirst(_materialIndex);
                  _1744 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1736 < (uint)170000), _1736, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._maskThreshold);
                  _1746 = (float)((bool)(_1625.w < _1744));
                  _1757 = ((_1746 * ((exp2(log2(max(0.0f, (_1706 + -0.8359375f)) / (18.851562f - (_1706 * 18.6875f))) * 6.277395f) * 10000.0f) - _1686)) + _1686);
                  _1758 = ((_1746 * ((exp2(log2(max(0.0f, (_1707 + -0.8359375f)) / (18.851562f - (_1707 * 18.6875f))) * 6.277395f) * 10000.0f) - _1687)) + _1687);
                  _1759 = ((_1746 * ((exp2(log2(max(0.0f, (_1708 + -0.8359375f)) / (18.851562f - (_1708 * 18.6875f))) * 6.277395f) * 10000.0f) - _1688)) + _1688);
                  break;
                }
                break;
              }
              if (__loop_jump_target != -1) {
                break;
              }
              break;
            }
            if (__loop_jump_target != -1) {
              break;
            }
            break;
          }
          if (__loop_jump_target == 1452) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
          break;
        }
        if (__loop_jump_target == 1443) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
    } else {
      _1757 = _1351;
      _1758 = _1354;
      _1759 = _1357;
    }
    _1760 = WaveReadLaneFirst(_materialIndex);
    _1768 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1760 < (uint)170000), _1760, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ppWorldLoadingRatio);
    _1775 = (_1768 * (_1757 - _245)) + _245;
    _1776 = (_1768 * (_1758 - _246)) + _246;
    _1777 = (_1768 * (_1759 - _247)) + _247;
    _1778 = WaveReadLaneFirst(_materialIndex);
    _1786 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1778 < (uint)170000), _1778, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._excludePlayer);
    if (_1786 == 1) {
      _1791 = (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_32.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_32.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255) == _renderPassSelfPlayer);
      _1796 = select(_1791, _245, _1775);
      _1797 = select(_1791, _246, _1776);
      _1798 = select(_1791, _247, _1777);
    } else {
      _1796 = _1775;
      _1797 = _1776;
      _1798 = _1777;
    }
    _1799 = WaveReadLaneFirst(_materialIndex);
    _1807 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1799 < (uint)170000), _1799, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._starburstIntensity);
    if (_1807 > 0.0f) {
      _1814 = _mainPosition.y + 1.5f;
      _1842 = mad((_viewProj[3].z), _mainPosition.z, mad((_viewProj[3].y), _1814, ((_viewProj[3].x) * _mainPosition.x))) + (_viewProj[3].w);
      _1847 = (((mad((_viewProj[0].z), _mainPosition.z, mad((_viewProj[0].y), _1814, ((_viewProj[0].x) * _mainPosition.x))) + (_viewProj[0].w)) / _1842) * 0.5f) + 0.5f;
      _1848 = 0.5f - (((mad((_viewProj[1].z), _mainPosition.z, mad((_viewProj[1].y), _1814, ((_viewProj[1].x) * _mainPosition.x))) + (_viewProj[1].w)) / _1842) * 0.5f);
      _1849 = WaveReadLaneFirst(_materialIndex);
      _1857 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1849 < (uint)170000), _1849, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._noiseTex);
      _1858 = TEXCOORD.x - _1847;
      _1864 = (_bufferSizeAndInvSize.y / _bufferSizeAndInvSize.x) * (TEXCOORD.y - _1848);
      _1865 = _1858 * 1.1f;
      _1866 = _1864 * 1.1f;
      _1867 = dot(float2(_1847, _1848), float2(0.25f, 0.25f));
      _1871 = sqrt((_1866 * _1866) + (_1865 * _1865));
      _1874 = (pow(_1871, 3.0f));
      _1876 = atan(_1866 / _1865);
      _1879 = (_1865 < 0.0f);
      _1880 = (_1865 == 0.0f);
      _1881 = (_1866 >= 0.0f);
      _1882 = (_1866 < 0.0f);
      _1891 = select((_1880 && _1881), 15.707964f, select((_1880 && _1882), -15.707964f, (select((_1879 && _1882), (_1876 + -3.1415927f), select((_1879 && _1881), (_1876 + 3.1415927f), _1876)) * 10.0f)));
      _1892 = _1874 * 5.0f;
      _1893 = _1867 * 0.007957747f;
      _1894 = _1867 * 4.774648f;
      _1901 = frac(abs(_1893));
      _1902 = frac(abs(_1894));
      _1906 = select((_1894 >= (-0.0f - _1894)), _1902, (-0.0f - _1902));
      _1908 = sin(select((_1893 >= (-0.0f - _1893)), _1901, (-0.0f - _1901)) * 6.2831855f);
      _1910 = 12.3456f - _1908;
      _1916 = ((_1892 + 2.3456f) - _1908) * 0.015625f;
      _1920 = frac(_time.x * 0.05f);
      // [sem: expr_sat]
      _1933 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1857 < (uint)65000), _1857, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1910 + _1891) * 0.015625f) - _1920), (_1916 - _1920))))).x) * 1.5f) * 1.2f);
      _1934 = _1908 + 3.4567f;
      _1936 = _1908 + 45.6789f;
      _1943 = frac(_time.x * 0.05f);
      _1945 = ((_1936 + _1892) * 0.015625f) - _1943;
      _1956 = (_1874 * 0.078125f) - _1943;
      _1975 = atan((-0.0f - _1866) / (-0.0f - _1865));
      _1978 = (_1865 > -0.0f);
      _1979 = (_1865 == -0.0f);
      _1980 = (_1866 <= -0.0f);
      _1981 = (_1866 > -0.0f);
      _1990 = select((_1979 && _1980), 15.707964f, select((_1979 && _1981), -15.707964f, (select((_1978 && _1981), (_1975 + -3.1415927f), select((_1978 && _1980), (_1975 + 3.1415927f), _1975)) * 10.0f)));
      // [sem: expr_sat]
      _2001 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1857 < (uint)65000), _1857, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1990 + _1910) * 0.015625f) - _1943), (_1916 - _1943))))).x) * 1.5f) * 1.2f);
      _2050 = sqrt((_1864 * _1864) + (_1858 * _1858));
      _2053 = (pow(_2050, 3.0f));
      _2055 = atan(_1864 / _1858);
      _2058 = (_1858 < 0.0f);
      _2059 = (_1858 == 0.0f);
      _2060 = (_1864 >= 0.0f);
      _2061 = (_1864 < 0.0f);
      _2070 = select((_2059 && _2060), 15.707964f, select((_2059 && _2061), -15.707964f, (select((_2058 && _2061), (_2055 + -3.1415927f), select((_2058 && _2060), (_2055 + 3.1415927f), _2055)) * 10.0f)));
      _2071 = _2053 * 5.0f;
      _2073 = 2.3456f - _1908;
      _2078 = ((_2073 + _2071) * 0.015625f) - _1943;
      // [sem: expr_sat]
      _2085 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1857 < (uint)65000), _1857, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2070 + _1910) * 0.015625f) - _1943), _2078)))).x) * 1.5f) * 1.2f);
      _2091 = ((_1936 + _2071) * 0.015625f) - _1943;
      _2102 = (_2053 * 0.078125f) - _1943;
      _2121 = atan((-0.0f - _1864) / (-0.0f - _1858));
      _2124 = (_1858 > -0.0f);
      _2125 = (_1858 == -0.0f);
      _2126 = (_1864 <= -0.0f);
      _2127 = (_1864 > -0.0f);
      _2136 = select((_2125 && _2126), 15.707964f, select((_2125 && _2127), -15.707964f, (select((_2124 && _2127), (_2121 + -3.1415927f), select((_2124 && _2126), (_2121 + 3.1415927f), _2121)) * 10.0f)));
      // [sem: expr_sat]
      _2146 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1857 < (uint)65000), _1857, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2136 + _1910) * 0.015625f) - _1943), _2078)))).x) * 1.5f) * 1.2f);
      _2192 = _1858 * 0.9f;
      _2193 = _1864 * 0.9f;
      _2197 = sqrt((_2193 * _2193) + (_2192 * _2192));
      _2200 = (pow(_2197, 3.0f));
      _2202 = atan(_2193 / _2192);
      _2205 = (_2192 < 0.0f);
      _2206 = (_2192 == 0.0f);
      _2207 = (_2193 >= 0.0f);
      _2208 = (_2193 < 0.0f);
      _2217 = select((_2206 && _2207), 15.707964f, select((_2206 && _2208), -15.707964f, (select((_2205 && _2208), (_2202 + -3.1415927f), select((_2205 && _2207), (_2202 + 3.1415927f), _2202)) * 10.0f)));
      _2218 = _2200 * 5.0f;
      _2224 = ((_2073 + _2218) * 0.015625f) - _1943;
      // [sem: expr_sat]
      _2231 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1857 < (uint)65000), _1857, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2217 + _1910) * 0.015625f) - _1943), _2224)))).x) * 1.5f) * 1.2f);
      _2237 = ((_1936 + _2218) * 0.015625f) - _1943;
      _2248 = (_2200 * 0.078125f) - _1943;
      _2267 = atan((-0.0f - _2193) / (-0.0f - _2192));
      _2270 = (_2192 > -0.0f);
      _2271 = (_2192 == -0.0f);
      _2272 = (_2193 <= -0.0f);
      _2273 = (_2193 > -0.0f);
      _2282 = select((_2271 && _2272), 15.707964f, select((_2271 && _2273), -15.707964f, (select((_2270 && _2273), (_2267 + -3.1415927f), select((_2270 && _2272), (_2267 + 3.1415927f), _2267)) * 10.0f)));
      // [sem: expr_sat]
      _2292 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1857 < (uint)65000), _1857, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2282 + _1910) * 0.015625f) - _1943), _2224)))).x) * 1.5f) * 1.2f);
      _2349 = WaveReadLaneFirst(_materialIndex);
      _2357 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_2349 < (uint)170000), _2349, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._starburstIntensity);
      _2368 = (saturate(_2357 * exp2(log2(exp2(log2(saturate(1.1f - (_1871 * 24.0f))) * 10.2f) + (exp2(log2(saturate(1.0f - (_1871 * 2.0f))) * 12.2f) * exp2(log2(max(((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1857 < (uint)65000), _1857, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1891 * 0.015625f) - _1943), _1956)))).x) * 1.5f) * 1.2f) + _1906) * 6.2831855f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1857 < (uint)65000), _1857, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1934 + _1891) * 0.015625f) - _1943), _1945)))).x) * 1.5f) * 1.2f) - _1933)) + _1933), ((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1857 < (uint)65000), _1857, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1990 * 0.015625f) - _1943), _1956)))).x) * 1.5f) * 1.2f) + _1906) * 6.2831855f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1857 < (uint)65000), _1857, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1990 + _1934) * 0.015625f) - _1943), _1945)))).x) * 1.5f) * 1.2f) - _2001)) + _2001))) * 3.0f))) * 1.4f)) * _30);
      _2369 = (saturate(_2357 * exp2(log2((exp2(log2(saturate(1.1f - (_2050 * 24.0f))) * 10.2f) + (exp2(log2(saturate(1.0f - (_2050 * 2.0f))) * 12.2f) * exp2(log2(max(((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1857 < (uint)65000), _1857, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2070 * 0.015625f) - _1943), _2102)))).x) * 1.5f) * 1.2f) + _1906) * 6.2831855f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1857 < (uint)65000), _1857, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2070 + _1934) * 0.015625f) - _1943), _2091)))).x) * 1.5f) * 1.2f) - _2085)) + _2085), ((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1857 < (uint)65000), _1857, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2136 * 0.015625f) - _1943), _2102)))).x) * 1.5f) * 1.2f) + _1906) * 6.2831855f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1857 < (uint)65000), _1857, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2136 + _1934) * 0.015625f) - _1943), _2091)))).x) * 1.5f) * 1.2f) - _2146)) + _2146))) * 3.0f))) * 0.6038274f) * 1.4f)) * _30);
      _2370 = (saturate(_2357 * exp2(log2((exp2(log2(saturate(1.1f - (_2197 * 24.0f))) * 10.2f) + (exp2(log2(saturate(1.0f - (_2197 * 2.0f))) * 12.2f) * exp2(log2(max(((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1857 < (uint)65000), _1857, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2217 * 0.015625f) - _1943), _2248)))).x) * 1.5f) * 1.2f) + _1906) * 6.2831855f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1857 < (uint)65000), _1857, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2217 + _1934) * 0.015625f) - _1943), _2237)))).x) * 1.5f) * 1.2f) - _2231)) + _2231), ((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1857 < (uint)65000), _1857, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2282 * 0.015625f) - _1943), _2248)))).x) * 1.5f) * 1.2f) + _1906) * 6.2831855f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1857 < (uint)65000), _1857, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2282 + _1934) * 0.015625f) - _1943), _2237)))).x) * 1.5f) * 1.2f) - _2292)) + _2292))) * 3.0f))) * 0.44798842f) * 1.4f)) * _30);
    } else {
      _2368 = 0.0f;
      _2369 = 0.0f;
      _2370 = 0.0f;
    }
    _2371 = TEXCOORD.x + -0.5f;
    _2372 = TEXCOORD.y + -0.5f;
    _2379 = saturate((sqrt((_2372 * _2372) + (_2371 * _2371)) + -0.01f) * 1.010101f);  // [sem: expr_sat]
    _2384 = WaveReadLaneFirst(_materialIndex);
    _2392 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_2384 < (uint)170000), _2384, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._vignetteIntensity);
    _2394 = 1.0f - (((_2379 * _2379) * (3.0f - (_2379 * 2.0f))) * _2392);
    _2401 = max(0.0f, (_2394 * (_2368 + _1796)));
    _2402 = max(0.0f, (_2394 * (_2369 + _1797)));
    _2403 = max(0.0f, (_2394 * (_2370 + _1798)));
    _2404 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _2417 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _2404, 0)))).x) & 127)))) + 0.5f);
    } else {
      _2417 = 1.0f;
    }
    _2420 = (_localToneMappingParams.w > 0.0f);
    if (_2420) {
      // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
      // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
      float3 _rndx_tonemapped_color = TonemapReplacer(float3(_2401, _2402, _2403));
      _2680 = _rndx_tonemapped_color.x;
      _2681 = _rndx_tonemapped_color.y;
      _2682 = _rndx_tonemapped_color.z;
      // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
      if (_etcParams.z == 0.0f) {
        _2688 = 1.0f - abs(_etcParams.w);
        _2692 = saturate(_etcParams.w);  // [sem: expr_sat]
        _2693 = (_2688 * _2680) + _2692;
        _2694 = (_2688 * _2681) + _2692;
        _2695 = (_2688 * _2682) + _2692;
        if (_colorGradingParams.w > 0.0f) {
          _2700 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _2717 = (((max(0.0f, (1.0f - _2693)) - _2693) * _2700) + _2693);
          _2718 = (((max(0.0f, (1.0f - _2694)) - _2694) * _2700) + _2694);
          _2719 = (((max(0.0f, (1.0f - _2695)) - _2695) * _2700) + _2695);
        } else {
          _2717 = _2693;
          _2718 = _2694;
          _2719 = _2695;
        }
        _2725 = _userImageAdjust.y + 1.0f;
        _2729 = _userImageAdjust.x + 0.5f;
        _2730 = ((_2717 + -0.5f) * _2725) + _2729;
        _2731 = ((_2718 + -0.5f) * _2725) + _2729;
        _2732 = ((_2719 + -0.5f) * _2725) + _2729;
        _2762 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _2773 = exp2(log2(saturate(mad(_colorBlind0.z, _2732, mad(_colorBlind0.y, _2731, (_colorBlind0.x * _2730))))) * _2762);
        _2774 = exp2(log2(saturate(mad(_colorBlind1.z, _2732, mad(_colorBlind1.y, _2731, (_colorBlind1.x * _2730))))) * _2762);
        _2775 = exp2(log2(saturate(mad(_colorBlind2.z, _2732, mad(_colorBlind2.y, _2731, (_colorBlind2.x * _2730))))) * _2762);
      } else {
        _2773 = _2680;
        _2774 = _2681;
        _2775 = _2682;
      }
    } else {
      _2773 = _2401;
      _2774 = _2402;
      _2775 = _2403;
    }
    if (_etcParams.y > 1.0f) {
      _2781 = abs(_119);
      _2782 = abs(_120 + -1.0f);
      _2786 = saturate(1.0f - (dot(float2(_2781, _2782), float2(_2781, _2782)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
      _2791 = (_2786 * _2773);
      _2792 = (_2786 * _2774);
      _2793 = (_2786 * _2775);
    } else {
      _2791 = _2773;
      _2792 = _2774;
      _2793 = _2775;
    }
    if (_2420 && (_etcParams.z > 0.0f)) {
      _2823 = select((_2791 <= 0.0031308f), (_2791 * 12.92f), (((pow(_2791, 0.41666666f)) * 1.055f) + -0.055f));
      _2824 = select((_2792 <= 0.0031308f), (_2792 * 12.92f), (((pow(_2792, 0.41666666f)) * 1.055f) + -0.055f));
      _2825 = select((_2793 <= 0.0031308f), (_2793 * 12.92f), (((pow(_2793, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _2823 = _2791;
      _2824 = _2792;
      _2825 = _2793;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _2830 = (float)((uint)((uint)(_2404)));
      if (!(_2830 < _viewDir.w)) {
        if (!(_2830 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
          _2839 = _2823;
          _2840 = _2824;
          _2841 = _2825;
        } else {
          _2839 = 0.0f;
          _2840 = 0.0f;
          _2841 = 0.0f;
        }
      } else {
        _2839 = 0.0f;
        _2840 = 0.0f;
        _2841 = 0.0f;
      }
    } else {
      _2839 = _2823;
      _2840 = _2824;
      _2841 = _2825;
    }
    _2851 = exp2(log2(_2839 * 0.0001f) * 0.15930176f);
    _2852 = exp2(log2(_2840 * 0.0001f) * 0.15930176f);
    _2853 = exp2(log2(_2841 * 0.0001f) * 0.15930176f);
    SV_Target.x = exp2(log2((1.0f / ((_2851 * 18.6875f) + 1.0f)) * ((_2851 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.y = exp2(log2((1.0f / ((_2852 * 18.6875f) + 1.0f)) * ((_2852 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.z = exp2(log2((1.0f / ((_2853 * 18.6875f) + 1.0f)) * ((_2853 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.w = _2417;
    break;
  }
  return SV_Target;
}
