struct PostProcessMemoryRead_CDStruct {
  float _memoryReadProgress;
  float _memoryReadBackgroundOpacity;
  float _memoryOpacity;
  float _enemyBossOpacity;
  uint _noiseTex;
  uint _auraTex;
  uint _glitchTex;
  float _radius;
  float _squareSize;
  float _maskThreshold;
  float3 _cubeSpaceSkyColor;
  float _cubeSpaceGradientRatio;
  float _cubeSpaceEffectRatio;
  float _cubeSpaceSpeedRatio;
  float _tempCubeSpaceRatio;
  float _fishEyeMaxPower;
  float _vignetteIntensity;
};

struct BindlessParameters_PostProcessMemoryRead_CD {
  PostProcessMemoryRead_CDStruct BindlessParameters_PostProcessMemoryRead_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t36, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t37, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t70, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t39, space36);

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

typedef BindlessParameters_PostProcessMemoryRead_CD BindlessParameters_PostProcessMemoryRead_CD_t;
ConstantBuffer<BindlessParameters_PostProcessMemoryRead_CD_t> BindlessParameters_PostProcessMemoryRead_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const int _global_0[1];

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  bool _2;
  float _35;
  int _38;
  float _46;
  float _148;
  float _149;
  float _152;
  float _153;
  int _394;
  float _395;
  int _455;
  float _456;
  float _458;
  float _636;
  float _637;
  float _638;
  float _676;
  float _677;
  float _678;
  int _679;
  int _850;
  float _851;
  float _852;
  float _853;
  float _854;
  int _855;
  int _856;
  int _909;
  int _910;
  int _911;
  int _918;
  float _1397;
  float _1398;
  float _1399;
  float _1400;
  float _1467;
  float _1468;
  float _1469;
  float _1535;
  float _1600;
  float _1601;
  float _1602;
  float _1603;
  float _1604;
  float _1605;
  float _1606;
  int _1668;
  float _1689;
  float _1690;
  float _1691;
  float _1705;
  float _1912;
  float _1913;
  float _1914;
  float _2037;
  float _2038;
  float _2039;
  float _2040;
  float _2041;
  float _2186;
  float _2443;
  float _2444;
  float _2445;
  float _2495;
  float _2496;
  float _2497;
  float _2558;
  float _2763;
  float _2764;
  float _2765;
  float _2858;
  float _2859;
  float _2860;
  float _2914;
  float _2915;
  float _2916;
  float _2935;
  float _2936;
  float _2937;
  float _2967;
  float _2968;
  float _2969;
  float _2983;
  float _2984;
  float _2985;
  int _51;
  float _59;
  int _64;
  float _72;
  float _75;
  float _80;
  float _84;
  float _85;
  float _86;
  int _89;
  float _97;
  int _100;
  float _108;
  float _109;
  float _113;
  float _118;
  float _120;
  float _131;
  float _137;
  float _140;
  float _156;
  float4 _168;
  float _175;
  float _179;
  float _183;
  float _185;
  float _186;
  float _187;
  float _188;
  float _190;
  float _192;
  float _193;
  float _205;
  float _214;
  float _227;
  float _240;
  float _252;
  float _261;
  float _270;
  float _279;
  float _281;
  float _282;
  float _283;
  float _284;
  float4 _287;
  float _293;
  float _296;
  float _299;
  float _308;
  float _317;
  float _326;
  int _329;
  float _337;
  int _342;
  float _350;
  int _353;
  float _361;
  float _373;
  float _380;
  float _386;
  float _392;
  float _398;
  float _400;
  float _403;
  float _405;
  float _408;
  float _410;
  float _418;
  float _426;
  float _434;
  float _435;
  float _436;
  float _437;
  float _447;
  float _451;
  int _452;
  float _460;
  float _462;
  float _464;
  float _465;
  float _467;
  float _468;
  float _470;
  float _471;
  float _473;
  float _481;
  float _489;
  float _497;
  float _498;
  float _499;
  float _500;
  float _501;
  float _502;
  float _503;
  float _504;
  float _505;
  float _510;
  float _512;
  float _514;
  float _522;
  float _523;
  float _525;
  float _527;
  float _535;
  float _536;
  float _538;
  float _540;
  float _548;
  float _549;
  float _557;
  float _566;
  float _574;
  float _576;
  float _579;
  float _581;
  float _583;
  float _585;
  float _592;
  float _595;
  float _599;
  float _602;
  float _603;
  float _606;
  float _607;
  float _608;
  float _609;
  float _610;
  int _613;
  float _621;
  float _646;
  int _649;
  float _657;
  float _661;
  float _665;
  float _682;
  float _683;
  float _684;
  float _685;
  float _686;
  float _687;
  float _688;
  int _691;
  int _699;
  float4 _710;
  int _717;
  float _725;
  float _727;
  uint2 _729;
  int _750;
  int _753;
  float _761;
  int _764;
  float _772;
  float _775;
  float _778;
  float _779;
  float _780;
  float _781;
  float _782;
  float _783;
  float _784;
  float _785;
  float _786;
  float _787;
  float _790;
  float _793;
  float _796;
  float _799;
  float _802;
  float _805;
  float _808;
  float _811;
  float _814;
  float _817;
  float _820;
  float _823;
  float _826;
  float _829;
  float _830;
  int _833;
  float _841;
  float _842;
  float _843;
  float _844;
  float _845;
  float _846;
  float _847;
  float _857;
  float _858;
  float _859;
  float _861;
  float _863;
  float _865;
  float _868;
  float _875;
  float _882;
  float _889;
  float _900;
  bool _901;
  float _903;
  float _904;
  float _905;
  int _906;
  int _913;
  float _922;
  float _924;
  float _926;
  float _938;
  float _949;
  float _960;
  float _963;
  float _965;
  float _967;
  float _976;
  float _978;
  float _979;
  float _981;
  float _983;
  float _984;
  float _985;
  float _989;
  float _992;
  float _1015;
  float _1021;
  float _1022;
  float _1028;
  float _1029;
  float4 _1034;
  float4 _1038;
  float _1044;
  float _1047;
  float _1050;
  int _1053;
  float _1061;
  float _1063;
  float _1075;
  float _1087;
  float _1099;
  float _1102;
  float _1103;
  float4 _1108;
  float4 _1112;
  float _1118;
  float _1121;
  float _1124;
  int _1127;
  float _1135;
  float _1137;
  float _1149;
  float _1161;
  float _1173;
  float _1176;
  float _1177;
  float4 _1182;
  float4 _1186;
  float _1192;
  float _1195;
  float _1198;
  int _1201;
  float _1209;
  float _1211;
  float _1223;
  float _1235;
  float _1247;
  float _1250;
  float _1251;
  float4 _1256;
  float4 _1260;
  float _1266;
  float _1269;
  float _1272;
  int _1275;
  float _1283;
  float _1285;
  float _1297;
  float _1309;
  float _1321;
  float _1324;
  float _1325;
  float4 _1330;
  float4 _1334;
  float _1340;
  float _1343;
  float _1346;
  int _1349;
  float _1357;
  float _1359;
  float4 _1403;
  float _1409;
  float _1412;
  float _1415;
  int _1418;
  float _1426;
  float _1428;
  int _1472;
  float _1480;
  int _1483;
  float _1491;
  int _1510;
  float _1518;
  int _1525;
  float _1533;
  int _1538;
  float _1546;
  float _1550;
  int _1571;
  int _1579;
  float4 _1592;
  float _1594;
  float _1597;
  float _1598;
  float _1610;
  float _1614;
  float _1615;
  float _1616;
  float _1625;
  float _1626;
  float _1627;
  float4 _1630;
  float _1638;
  float _1640;
  float _1646;
  float _1648;
  float _1649;
  float _1661;
  float _1662;
  float _1663;
  float _1664;
  float _1665;
  float _1666;
  float _1670;
  float _1673;
  bool _1675;
  float _1708;
  float _1711;
  float _1714;
  float _1729;
  float _1741;
  float _1750;
  float _1759;
  int _1762;
  int _1770;
  float4 _1785;
  float _1788;
  float _1789;
  float _1792;
  int _1795;
  int _1803;
  float4 _1824;
  float _1828;
  float _1834;
  float _1853;
  float _1858;
  float _1867;
  float _1876;
  float _1878;
  float _1880;
  float _1883;
  int _1917;
  float _1925;
  float _1930;
  float _1932;
  float _1934;
  float _1942;
  float _1943;
  int _1956;
  int _1963;
  int _1971;
  float4 _1980;
  float _1984;
  float _1986;
  float _1991;
  float _1995;
  float _2003;
  float _2009;
  float _2012;
  float _2018;
  float _2031;
  uint _2073;
  uint _2079;
  uint4 _2081;
  float4 _2084;
  float _2091;
  float _2095;
  float _2099;
  float _2101;
  float _2102;
  float _2103;
  float _2104;
  float _2109;
  float _2113;
  float _2115;
  float _2117;
  float _2121;
  float _2123;
  float _2124;
  float _2125;
  float _2126;
  float _2128;
  float _2131;
  float _2132;
  float _2133;
  float _2134;
  float _2140;
  float _2146;
  float _2151;
  float _2153;
  float _2165;
  float _2166;
  float _2169;
  float _2194;
  float _2198;
  float _2216;
  float _2218;
  float _2220;
  float _2223;
  float _2225;
  float _2227;
  float _2238;
  float4 _2243;
  float _2259;
  float _2260;
  float _2262;
  float _2265;
  float _2266;
  float _2267;
  float _2268;
  float _2276;
  float _2284;
  float _2292;
  float _2294;
  float _2295;
  float _2305;
  float _2315;
  float _2324;
  bool _2330;
  int _2334;
  float _2346;
  float _2348;
  float _2350;
  float _2362;
  float _2371;
  float _2382;
  float _2386;
  float _2390;
  float _2394;
  float _2398;
  float _2406;
  float _2414;
  float _2415;
  float _2419;
  float _2431;
  float _2436;
  float4 _2452;
  float _2457;
  float _2465;
  float _2466;
  float _2467;
  int _2470;
  float _2478;
  float _2498;
  float _2499;
  float _2506;
  int _2509;
  float _2517;
  int _2520;
  float _2528;
  float _2535;
  float _2538;
  float _2541;
  float _2544;
  uint _2545;
  bool _2561;
  float _2567;
  float _2586;
  float _2602;
  float _2618;
  float _2619;
  float _2623;
  float _2626;
  float _2629;
  float _2636;
  float _2643;
  float _2650;
  float _2651;
  float _2652;
  float _2653;
  float _2654;
  float _2655;
  float _2656;
  float _2672;
  float _2688;
  float _2704;
  float _2705;
  float _2706;
  float _2707;
  float _2708;
  float _2725;
  float _2726;
  float _2727;
  float _2728;
  float _2731;
  float _2734;
  float _2738;
  float _2742;
  float _2746;
  float _2766;
  float _2778;
  float _2790;
  float _2802;
  float _2809;
  float _2816;
  float _2823;
  float _2829;
  float _2830;
  float _2832;
  float _2834;
  float _2836;
  float _2841;
  float _2862;
  float _2864;
  float _2867;
  float _2870;
  float _2873;
  float _2879;
  float _2921;
  float _2924;
  float _2930;
  float _2972;
  float _2989;
  float _2993;
  float _2997;
  int __loop_jump_target = -1;
  _2 = ((_global_0[0]) == 0);
  _35 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_38 < (uint)170000), _38, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._fishEyeMaxPower);
  bool __branch_chain_0;
  if (_46 > 0.001f) {
    __branch_chain_0 = true;
  } else {
    _51 = WaveReadLaneFirst(_materialIndex);
    _59 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_51 < (uint)170000), _51, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._fishEyeMaxPower);
    if (_59 < -0.001f) {
      __branch_chain_0 = true;
    } else {
      _152 = TEXCOORD.y;
      _153 = TEXCOORD.x;
      __branch_chain_0 = false;
    }
  }
  if (__branch_chain_0) {
    _64 = WaveReadLaneFirst(_materialIndex);
    _72 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_64 < (uint)170000), _64, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
    [branch]
    if (!(!(_72 >= 0.001f))) {
      _75 = 0.5f / _35;
      _80 = ((_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x) + -0.5f;
      _84 = ((_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x) - _75;
      _85 = dot(float2(_80, _84), float2(_80, _84));
      _86 = sqrt(_85);
      _89 = WaveReadLaneFirst(_materialIndex);
      _97 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_89 < (uint)170000), _89, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._fishEyeMaxPower);
      _100 = WaveReadLaneFirst(_materialIndex);
      _108 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_100 < (uint)170000), _100, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
      _109 = _108 * _97;
      if (_109 > 0.0f) {
        _113 = sqrt(dot(float2(0.5f, _75), float2(0.5f, _75)));
        _118 = (tan(_109 * _86) * _113) * rsqrt(_85);
        _120 = tan(_113 * _109);
        _148 = (((_118 * _84) / _120) + _75);
        _149 = (((_118 * _80) / _120) + 0.5f);
      } else {
        if (_109 < 0.0f) {
          _131 = select((_35 < 1.0f), 0.5f, _75);
          _137 = (atan((_109 * _86) * -10.0f) * _131) * rsqrt(_85);
          _140 = atan((_109 * -10.0f) * _131);
          _148 = (((_137 * _84) / _140) + _75);
          _149 = (((_137 * _80) / _140) + 0.5f);
        } else {
          _148 = 0.0f;
          _149 = 0.0f;
        }
      }
      _152 = (_148 * _35);
      _153 = _149;
    } else {
      _152 = TEXCOORD.y;
      _153 = TEXCOORD.x;
    }
  }
  _156 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_153, _152));  // [sem: _3__36__0__0__g_depth_sample]
  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _168 = __3__36__0__0__g_gbufferNormal.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _153) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _152) + -0.5f))), 0));
  _175 = (saturate(_168.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _179 = (saturate(_168.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _183 = (saturate(_168.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _185 = rsqrt(dot(float3(_175, _179, _183), float3(_175, _179, _183)));  // [sem: invLength]
  _186 = _185 * _175;
  _187 = _185 * _179;
  _188 = _183 * _185;
  _190 = (_153 * 2.0f) + -1.0f;
  _192 = 1.0f - (_152 * 2.0f);
  _193 = max(1e-07f, _156.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _205 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _193, mad((_invViewProj[3].y), _192, ((_invViewProj[3].x) * _190)));
  _214 = (mad((_invViewProj[0].z), _193, mad((_invViewProj[0].y), _192, ((_invViewProj[0].x) * _190))) + (_invViewProj[0].w)) / _205;
  _227 = ((_invViewProj[1].w) + mad((_invViewProj[1].z), _193, mad((_invViewProj[1].y), _192, ((_invViewProj[1].x) * _190)))) / _205;
  _240 = ((_invViewProj[2].w) + mad((_invViewProj[2].z), _193, mad((_invViewProj[2].y), _192, ((_invViewProj[2].x) * _190)))) / _205;
  _252 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _193, mad((_invViewProjRelative[3].y), _192, ((_invViewProjRelative[3].x) * _190)));
  _261 = (mad((_invViewProjRelative[0].z), _193, mad((_invViewProjRelative[0].y), _192, ((_invViewProjRelative[0].x) * _190))) + (_invViewProjRelative[0].w)) / _252;
  _270 = (mad((_invViewProjRelative[1].z), _193, mad((_invViewProjRelative[1].y), _192, ((_invViewProjRelative[1].x) * _190))) + (_invViewProjRelative[1].w)) / _252;
  _279 = (mad((_invViewProjRelative[2].z), _193, mad((_invViewProjRelative[2].y), _192, ((_invViewProjRelative[2].x) * _190))) + (_invViewProjRelative[2].w)) / _252;
  _281 = rsqrt(dot(float3(_261, _270, _279), float3(_261, _270, _279)));  // [sem: invLength]
  _282 = _281 * _261;
  _283 = _281 * _270;
  _284 = _281 * _279;
  _287 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_153, _152));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _293 = (pow(_287.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _296 = (pow(_287.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _299 = (pow(_287.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _308 = exp2(log2(max(0.0f, (_293 + -0.8359375f)) / (18.851562f - (_293 * 18.6875f))) * 6.277395f) * 10000.0f;
  _317 = exp2(log2(max(0.0f, (_296 + -0.8359375f)) / (18.851562f - (_296 * 18.6875f))) * 6.277395f) * 10000.0f;
  _326 = exp2(log2(max(0.0f, (_299 + -0.8359375f)) / (18.851562f - (_299 * 18.6875f))) * 6.277395f) * 10000.0f;
  _329 = WaveReadLaneFirst(_materialIndex);
  _337 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_329 < (uint)170000), _329, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceEffectRatio);
  if (!(!(_337 >= 0.001f))) {
    _342 = WaveReadLaneFirst(_materialIndex);
    _350 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_342 < (uint)170000), _342, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceGradientRatio);
    _353 = WaveReadLaneFirst(_materialIndex);
    _361 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_353 < (uint)170000), _353, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSpeedRatio);
    _373 = frac((_time.x * _361) + -0.005f) * rsqrt(dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_viewDir.x, _viewDir.y, _viewDir.z)));
    _380 = (frac(_viewPosPrev.x * 0.01f) + 2000.0f) + (_373 * _viewDir.x);
    _386 = ((_373 * _viewDir.y) + 2000.0f) + frac(_viewPosPrev.y * 0.01f);
    _392 = ((_373 * _viewDir.z) + 2000.0f) + frac(_viewPosPrev.z * 0.01f);
    _394 = 0;
    _395 = 1.0f;
    while(true) {
      _398 = ((_395 * _282) + _380) * 4.0f;
      _400 = frac(abs(_398));
      _403 = ((_395 * _283) + _386) * 4.0f;
      _405 = frac(abs(_403));
      _408 = ((_395 * _284) + _392) * 4.0f;
      _410 = frac(abs(_408));
      _418 = abs((select((_398 >= (-0.0f - _398)), _400, (-0.0f - _400)) * 0.25f) + -0.125f) + -0.0005f;
      _426 = abs((select((_403 >= (-0.0f - _403)), _405, (-0.0f - _405)) * 0.25f) + -0.125f) + -0.0005f;
      _434 = abs((select((_408 >= (-0.0f - _408)), _410, (-0.0f - _410)) * 0.25f) + -0.125f) + -0.0005f;
      _435 = max(_418, 0.0f);
      _436 = max(_426, 0.0f);
      _437 = max(_434, 0.0f);
      _447 = sqrt(((_436 * _436) + (_435 * _435)) + (_437 * _437)) + min(max(_418, max(_426, _434)), 0.0f);
      if (!(_447 < (_395 * 0.001f))) {
        _451 = _447 + _395;
        _452 = (int)(_394) + (int)(1);
        if ((int)_452 < (int)50) {
          _455 = _452;
          _456 = _451;
          while(true) {
            _394 = _455;
            _395 = _456;
            __loop_jump_target = 393;
            break;
            break;
          }
          if (__loop_jump_target == 393) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
        } else {
          _458 = _451;
        }
      } else {
        _458 = _395;
      }
      _460 = (_458 * _282) + _380;
      _462 = (_458 * _283) + _386;
      _464 = (_458 * _284) + _392;
      _465 = _460 * 4.0f;
      _467 = frac(abs(_465));
      _468 = _462 * 4.0f;
      _470 = frac(abs(_468));
      _471 = _464 * 4.0f;
      _473 = frac(abs(_471));
      _481 = abs((select((_465 >= (-0.0f - _465)), _467, (-0.0f - _467)) * 0.25f) + -0.125f) + -0.0005f;
      _489 = abs((select((_468 >= (-0.0f - _468)), _470, (-0.0f - _470)) * 0.25f) + -0.125f) + -0.0005f;
      _497 = abs((select((_471 >= (-0.0f - _471)), _473, (-0.0f - _473)) * 0.25f) + -0.125f) + -0.0005f;
      _498 = max(_481, 0.0f);
      _499 = max(_489, 0.0f);
      _500 = max(_497, 0.0f);
      _501 = _498 * _498;
      _502 = _499 * _499;
      _503 = _502 + _501;
      _504 = _500 * _500;
      _505 = max(_489, _497);
      _510 = sqrt(_503 + _504) + min(max(_481, _505), 0.0f);
      _512 = (_460 + 0.001f) * 4.0f;
      _514 = frac(abs(_512));
      _522 = abs((select((_512 >= (-0.0f - _512)), _514, (-0.0f - _514)) * 0.25f) + -0.125f) + -0.0005f;
      _523 = max(_522, 0.0f);
      _525 = (_462 + 0.001f) * 4.0f;
      _527 = frac(abs(_525));
      _535 = abs((select((_525 >= (-0.0f - _525)), _527, (-0.0f - _527)) * 0.25f) + -0.125f) + -0.0005f;
      _536 = max(_535, 0.0f);
      _538 = (_464 + 0.001f) * 4.0f;
      _540 = frac(abs(_538));
      _548 = abs((select((_538 >= (-0.0f - _538)), _540, (-0.0f - _540)) * 0.25f) + -0.125f) + -0.0005f;
      _549 = max(_548, 0.0f);
      _557 = (sqrt((_504 + _502) + (_523 * _523)) - _510) + min(max(_522, _505), 0.0f);
      _566 = (sqrt((_504 + _501) + (_536 * _536)) - _510) + min(max(_481, max(_535, _497)), 0.0f);
      _574 = (sqrt((_549 * _549) + _503) - _510) + min(max(_481, max(_489, _548)), 0.0f);
      _576 = rsqrt(dot(float3(_557, _566, _574), float3(_557, _566, _574)));  // [sem: invLength]
      _579 = -0.0f - _sunDirection.x;
      _581 = -0.0f - _sunDirection.y;
      _583 = -0.0f - _sunDirection.z;
      _585 = rsqrt(dot(float3(_579, _581, _583), float3(_579, _581, _583)));  // [sem: invLength]
      _592 = dot(float3((_576 * _557), (_576 * _566), (_576 * _574)), float3((_585 * _579), (_585 * _581), (_585 * _583)));
      _595 = saturate((_458 * 0.22222224f) + -0.11111112f);  // [sem: expr_sat]
      _599 = (_595 * _595) * (3.0f - (_595 * 2.0f));
      _602 = 1.0f - (_592 - (_599 * _592));
      _603 = _602 * _602;
      _606 = ((_603 * _603) * 0.2f) + 0.1f;
      _607 = _606 * _606;
      _608 = _607 * 0.7f;
      _609 = _607 * 0.4f;
      _610 = _607 * 0.1f;
      _613 = WaveReadLaneFirst(_materialIndex);
      _621 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_613 < (uint)170000), _613, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceEffectRatio);
      if (!_2) {
        _455 = _394;
        _456 = _395;
        while(true) {
          _394 = _455;
          _395 = _456;
          __loop_jump_target = 393;
          break;
          break;
        }
        if (__loop_jump_target == 393) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _636 = saturate((_610 - (_610 * _599)) * _621);  // [sem: expr_sat]
      _637 = saturate((_609 - (_609 * _599)) * _621);  // [sem: expr_sat]
      _638 = saturate((_608 - (_608 * _599)) * _621);  // [sem: expr_sat]
      break;
    }
  } else {
    _636 = 0.0f;  // [sem: expr_sat]
    _637 = 0.0f;  // [sem: expr_sat]
    _638 = 0.0f;  // [sem: expr_sat]
  }
  if ((_156.x < 1e-07f) || (_156.x == 1.0f)) {
    _646 = exp2(log2(abs(_283)) * 0.5f);
    _649 = WaveReadLaneFirst(_materialIndex);
    _657 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_649 < (uint)170000), _649, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSkyColor.x);
    _661 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_649 < (uint)170000), _649, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSkyColor.y);
    _665 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_649 < (uint)170000), _649, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSkyColor.z);
    _676 = (lerp(_636, _665, _646));  // [sem: blended]
    _677 = (lerp(_637, _661, _646));  // [sem: blended]
    _678 = (lerp(_638, _657, _646));  // [sem: blended]
    _679 = 0;
  } else {
    _676 = _636;  // [sem: blended]
    _677 = _637;  // [sem: blended]
    _678 = _638;  // [sem: blended]
    _679 = 1;
  }
  _682 = max(0.001f, _exposure0.x);
  _683 = _678 / _682;
  _684 = _677 / _682;
  _685 = _676 / _682;
  _686 = 4.0f / _35;
  _687 = _686 * _153;
  _688 = _686 * _152;
  _691 = WaveReadLaneFirst(_materialIndex);
  _699 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_691 < (uint)170000), _691, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
  _710 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_699 < (uint)65000), _699, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_687, ((_time.x * 0.1f) + _688)));
  _717 = WaveReadLaneFirst(_materialIndex);
  _725 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_717 < (uint)170000), _717, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _727 = _725 * (_710.y + -0.3f);
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_729.x, _729.y);
  _750 = (((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_729.x))))))) + 0.5f) * ((_727 * 0.001f) + _153))), ((int)((((float)((int)((int)((float)((int)((int)(_729.y))))))) + 0.5f) * ((_727 * 0.02f) + _152))), 0)))).x) & 255;
  _753 = WaveReadLaneFirst(_materialIndex);
  _761 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_753 < (uint)170000), _753, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._radius);
  _764 = WaveReadLaneFirst(_materialIndex);
  _772 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_764 < (uint)170000), _764, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _775 = saturate(1.0f - _772) * _761;
  [branch]
  if (!(!(_775 >= 0.001f))) {
    _778 = ddx_coarse(_282);
    _779 = ddx_coarse(_283);
    _780 = ddx_coarse(_284);
    _781 = ddy_coarse(_282);
    _782 = ddy_coarse(_283);
    _783 = ddy_coarse(_284);
    _784 = ddx_coarse(_153);
    _785 = ddx_coarse(_152);
    _786 = ddy_coarse(_153);
    _787 = ddy_coarse(_152);
    _790 = (_782 * _188) - (_783 * _187);
    _793 = (_783 * _186) - (_781 * _188);
    _796 = (_781 * _187) - (_782 * _186);
    _799 = (_780 * _187) - (_779 * _188);
    _802 = (_778 * _188) - (_780 * _186);
    _805 = (_779 * _186) - (_778 * _187);
    _808 = (_786 * _799) + (_790 * _784);
    _811 = (_786 * _802) + (_793 * _784);
    _814 = (_786 * _805) + (_796 * _784);
    _817 = (_787 * _799) + (_790 * _785);
    _820 = (_787 * _802) + (_793 * _785);
    _823 = (_787 * _805) + (_785 * _796);
    _826 = max(dot(float3(_808, _811, _814), float3(_808, _811, _814)), dot(float3(_817, _820, _823), float3(_817, _820, _823)));
    _829 = rsqrt(select((!(_826 == 0.0f)), _826, 0.1f));  // [sem: rsqrt_val]
    _830 = _829 * _282;
    _833 = WaveReadLaneFirst(_materialIndex);
    _841 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_833 < (uint)170000), _833, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._squareSize);
    _842 = _841 * _214;
    _843 = _841 * _227;
    _844 = _841 * _240;
    _845 = floor(_842);
    _846 = floor(_843);
    _847 = floor(_844);
    _850 = -1;
    _851 = 0.0f;
    _852 = 0.0f;
    _853 = 0.0f;
    _854 = 10.0f;
    _855 = -1;
    _856 = -1;
    while(true) {
      _857 = (float)((int)(_850));
      _858 = (float)((int)(_855));
      _859 = (float)((int)(_856));
      _861 = sin(_857 + _845);
      _863 = sin(_858 + _846);
      _865 = sin(_859 + _847);
      _868 = _time.x * 0.2f;
      _875 = sin(frac(sin(dot(float3(_861, _863, _865), float3(12.989f, 78.233f, 37.719f))) * 143758.55f) * _868) + _857;
      _882 = sin(frac(sin(dot(float3(_861, _863, _865), float3(39.346f, 11.135f, 83.155f))) * 143758.55f) * _868) + _858;
      _889 = sin(frac(sin(dot(float3(_861, _863, _865), float3(73.156f, 52.235f, 9.151f))) * 143758.55f) * _868) + _859;
      _900 = max(abs((_845 - _842) + _875), max(abs((_846 - _843) + _882), abs((_847 - _844) + _889)));
      _901 = (_900 < _854);
      _903 = select(_901, _875, _853);
      _904 = select(_901, _882, _852);
      _905 = select(_901, _889, _851);
      _906 = (int)(_850) + (int)(1);
      if (!(_906 == 2)) {
        _909 = _906;
        _910 = _855;
        _911 = _856;
        while(true) {
          _850 = _909;
          _851 = _905;
          _852 = _904;
          _853 = _903;
          _854 = select(_901, _900, _854);
          _855 = _910;
          _856 = _911;
          __loop_jump_target = 849;
          break;
          break;
        }
        if (__loop_jump_target == 849) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _913 = (int)(_855) + (int)(1);
      if (!(_913 == 2)) {
        _909 = -1;
        _910 = _913;
        _911 = _856;
        while(true) {
          _850 = _909;
          _851 = _905;
          _852 = _904;
          _853 = _903;
          _854 = select(_901, _900, _854);
          _855 = _910;
          _856 = _911;
          __loop_jump_target = 849;
          break;
          break;
        }
        if (__loop_jump_target == 849) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _918 = ((int)(_856) + (int)(1));
      while(true) {
        if (!(_918 == 2)) {
          while(true) {
            _909 = -1;
            _910 = -1;
            _911 = _918;
            while(true) {
              _850 = _909;
              _851 = _905;
              _852 = _904;
              _853 = _903;
              _854 = select(_901, _900, _854);
              _855 = _910;
              _856 = _911;
              __loop_jump_target = 849;
              break;
              break;
            }
            if (__loop_jump_target != -1) {
              break;
            }
            break;
          }
        }
        _922 = (_903 + _845) / _841;
        _924 = (_904 + _846) / _841;
        _926 = (_905 + _847) / _841;
        _938 = (_viewProj[3].w) + mad((_viewProj[3].z), _926, mad((_viewProj[3].y), _924, ((_viewProj[3].x) * _922)));
        _949 = (((mad((_viewProj[0].z), _926, mad((_viewProj[0].y), _924, ((_viewProj[0].x) * _922))) + (_viewProj[0].w)) / _938) * 0.5f) + 0.5f;
        _960 = 0.5f - (((mad((_viewProj[1].z), _926, mad((_viewProj[1].y), _924, ((_viewProj[1].x) * _922))) + (_viewProj[1].w)) / _938) * 0.5f);
        _963 = _922 - _mainPosition.x;
        _965 = _924 - _mainPosition.y;
        _967 = _926 - _mainPosition.z;
        // [sem: expr_sat]
        _976 = saturate(1.0f - ((1.0f - (sqrt(dot(float3(_963, _965, _967), float3(_963, _965, _967))) * (1.0f / max(1e-05f, _775)))) * 1.0152284f));
        _978 = 1.0f - saturate(_976);
        _979 = _976 * 0.5f;
        _981 = (_153 - _949) / _978;
        _983 = (_152 - _960) / _978;
        _984 = sin(_979);
        _985 = cos(_979);
        _989 = mad((-0.0f - _984), _983, (_985 * _981)) + _949;
        _992 = mad(_985, _983, (_984 * _981)) + _960;
        _1015 = (saturate(_156.x * 1.5f) * 0.5f) * saturate(frac(sin(dot(float2(((float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(_153))))), ((float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(_152)))))), float2(12.9898f, 78.233f))) * 43758.547f) + 0.5f);
        _1021 = mad((_829 * _814), _284, mad((_829 * _811), _283, (_830 * _808))) * _1015;
        _1022 = _1021 * 0.8333334f;
        _1028 = mad((_829 * _823), _284, mad((_829 * _820), _283, (_830 * _817))) * _1015;
        _1029 = _1028 * 0.8333334f;
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _1034 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1022 + _153), (_1029 + _152)));
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _1038 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1022 + _989), (_1029 + _992)));
        _1044 = (pow(_1038.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _1047 = (pow(_1038.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _1050 = (pow(_1038.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _1053 = WaveReadLaneFirst(_materialIndex);
        _1061 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1053 < (uint)170000), _1053, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
        _1063 = (float)((bool)(_1034.w < _1061));
        _1075 = (((exp2(log2(max(0.0f, (_1044 + -0.8359375f)) / (18.851562f - (_1044 * 18.6875f))) * 6.277395f) * 4000.0f) - _683) * _1063) + _683;
        _1087 = (((exp2(log2(max(0.0f, (_1047 + -0.8359375f)) / (18.851562f - (_1047 * 18.6875f))) * 6.277395f) * 4000.0f) - _684) * _1063) + _684;
        _1099 = (((exp2(log2(max(0.0f, (_1050 + -0.8359375f)) / (18.851562f - (_1050 * 18.6875f))) * 6.277395f) * 4000.0f) - _685) * _1063) + _685;
        if (!(_1034.w > 0.9f)) {
          _1102 = _1021 * 0.6666667f;
          _1103 = _1028 * 0.6666667f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1108 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1102 + _153), (_1103 + _152)));
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1112 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1102 + _989), (_1103 + _992)));
          _1118 = (pow(_1112.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1121 = (pow(_1112.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1124 = (pow(_1112.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1127 = WaveReadLaneFirst(_materialIndex);
          _1135 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1127 < (uint)170000), _1127, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
          _1137 = (float)((bool)(_1108.w < _1135));
          _1149 = (((exp2(log2(max(0.0f, (_1118 + -0.8359375f)) / (18.851562f - (_1118 * 18.6875f))) * 6.277395f) * 4000.0f) - _1075) * _1137) + _1075;
          _1161 = (((exp2(log2(max(0.0f, (_1121 + -0.8359375f)) / (18.851562f - (_1121 * 18.6875f))) * 6.277395f) * 4000.0f) - _1087) * _1137) + _1087;
          _1173 = (((exp2(log2(max(0.0f, (_1124 + -0.8359375f)) / (18.851562f - (_1124 * 18.6875f))) * 6.277395f) * 4000.0f) - _1099) * _1137) + _1099;
          if (!(_1108.w > 0.9f)) {
            _1176 = _1021 * 0.5f;
            _1177 = _1028 * 0.5f;
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _1182 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1176 + _153), (_1177 + _152)));
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _1186 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1176 + _989), (_1177 + _992)));
            _1192 = (pow(_1186.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1195 = (pow(_1186.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1198 = (pow(_1186.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
            _1201 = WaveReadLaneFirst(_materialIndex);
            _1209 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1201 < (uint)170000), _1201, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
            _1211 = (float)((bool)(_1182.w < _1209));
            _1223 = (((exp2(log2(max(0.0f, (_1192 + -0.8359375f)) / (18.851562f - (_1192 * 18.6875f))) * 6.277395f) * 4000.0f) - _1149) * _1211) + _1149;
            _1235 = (((exp2(log2(max(0.0f, (_1195 + -0.8359375f)) / (18.851562f - (_1195 * 18.6875f))) * 6.277395f) * 4000.0f) - _1161) * _1211) + _1161;
            _1247 = (((exp2(log2(max(0.0f, (_1198 + -0.8359375f)) / (18.851562f - (_1198 * 18.6875f))) * 6.277395f) * 4000.0f) - _1173) * _1211) + _1173;
            if (!(_1182.w > 0.9f)) {
              _1250 = _1021 * 0.33333334f;
              _1251 = _1028 * 0.33333334f;
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1256 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1250 + _153), (_1251 + _152)));
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1260 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1250 + _989), (_1251 + _992)));
              _1266 = (pow(_1260.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1269 = (pow(_1260.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1272 = (pow(_1260.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1275 = WaveReadLaneFirst(_materialIndex);
              _1283 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1275 < (uint)170000), _1275, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
              _1285 = (float)((bool)(_1256.w < _1283));
              _1297 = (((exp2(log2(max(0.0f, (_1266 + -0.8359375f)) / (18.851562f - (_1266 * 18.6875f))) * 6.277395f) * 4000.0f) - _1223) * _1285) + _1223;
              _1309 = (((exp2(log2(max(0.0f, (_1269 + -0.8359375f)) / (18.851562f - (_1269 * 18.6875f))) * 6.277395f) * 4000.0f) - _1235) * _1285) + _1235;
              _1321 = (((exp2(log2(max(0.0f, (_1272 + -0.8359375f)) / (18.851562f - (_1272 * 18.6875f))) * 6.277395f) * 4000.0f) - _1247) * _1285) + _1247;
              if (!(_1256.w > 0.9f)) {
                _1324 = _1021 * 0.16666667f;
                _1325 = _1028 * 0.16666667f;
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _1330 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1324 + _153), (_1325 + _152)));
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _1334 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1324 + _989), (_1325 + _992)));
                _1340 = (pow(_1334.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1343 = (pow(_1334.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1346 = (pow(_1334.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1349 = WaveReadLaneFirst(_materialIndex);
                _1357 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1349 < (uint)170000), _1349, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
                _1359 = (float)((bool)(_1330.w < _1357));
                _1397 = _1330.w;
                _1398 = ((((exp2(log2(max(0.0f, (_1340 + -0.8359375f)) / (18.851562f - (_1340 * 18.6875f))) * 6.277395f) * 4000.0f) - _1297) * _1359) + _1297);
                _1399 = ((((exp2(log2(max(0.0f, (_1343 + -0.8359375f)) / (18.851562f - (_1343 * 18.6875f))) * 6.277395f) * 4000.0f) - _1309) * _1359) + _1309);
                _1400 = ((((exp2(log2(max(0.0f, (_1346 + -0.8359375f)) / (18.851562f - (_1346 * 18.6875f))) * 6.277395f) * 4000.0f) - _1321) * _1359) + _1321);
              } else {
                _1397 = _1256.w;
                _1398 = _1297;
                _1399 = _1309;
                _1400 = _1321;
              }
            } else {
              _1397 = _1182.w;
              _1398 = _1223;
              _1399 = _1235;
              _1400 = _1247;
            }
          } else {
            _1397 = _1108.w;
            _1398 = _1149;
            _1399 = _1161;
            _1400 = _1173;
          }
        } else {
          _1397 = _1034.w;
          _1398 = _1075;
          _1399 = _1087;
          _1400 = _1099;
        }
        _1403 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_989, _992));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _1409 = (pow(_1403.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _1412 = (pow(_1403.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _1415 = (pow(_1403.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _1418 = WaveReadLaneFirst(_materialIndex);
        _1426 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1418 < (uint)170000), _1418, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
        _1428 = (float)((bool)(_1397 < _1426));
        if (!_2) {
          _918 = 2;
          continue;
        }
        _1467 = ((((exp2(log2(max(0.0f, (_1415 + -0.8359375f)) / (18.851562f - (_1415 * 18.6875f))) * 6.277395f) * 10000.0f) - _1400) * _1428) + _1400);
        _1468 = ((((exp2(log2(max(0.0f, (_1412 + -0.8359375f)) / (18.851562f - (_1412 * 18.6875f))) * 6.277395f) * 10000.0f) - _1399) * _1428) + _1399);
        _1469 = ((((exp2(log2(max(0.0f, (_1409 + -0.8359375f)) / (18.851562f - (_1409 * 18.6875f))) * 6.277395f) * 10000.0f) - _1398) * _1428) + _1398);
        break;
      }
      break;
    }
  } else {
    _1467 = _685;
    _1468 = _684;
    _1469 = _683;
  }
  _1472 = WaveReadLaneFirst(_materialIndex);
  _1480 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1472 < (uint)170000), _1472, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _1483 = WaveReadLaneFirst(_materialIndex);
  _1491 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1483 < (uint)170000), _1483, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._tempCubeSpaceRatio);
  [branch]
  if ((_750 == _renderPassMemoryBackground) || ((!(_750 == _renderPassMemoryBackground)) && (_750 == _renderPassDetectRemoteCatch)) || ((((!(_750 == _renderPassMemoryBackground)) && (!(_750 == _renderPassDetectRemoteCatch))) && (!(_750 == _renderPassDetectRemoteCatch))) && (_750 == _renderPassDetectPickedRemoteCatch))) {
    _1510 = WaveReadLaneFirst(_materialIndex);
    _1518 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1510 < (uint)170000), _1510, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryOpacity);
    _1535 = _1518;
  } else {
    if (_750 == _renderPassEnemyBoss) {
      _1525 = WaveReadLaneFirst(_materialIndex);
      _1533 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1525 < (uint)170000), _1525, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._enemyBossOpacity);
      _1535 = _1533;
    } else {
      _1535 = 1.0f;
    }
  }
  _1538 = WaveReadLaneFirst(_materialIndex);
  _1546 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1538 < (uint)170000), _1538, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _1550 = saturate((_1546 * 100.0f) + -99.0f) * _1535;
  if (!(!(_1550 >= 0.001f))) {
    [branch]
    if ((_750 == _renderPassSelfPlayer) || (_750 == _renderPassTest) || (_750 == _renderPassDetectRemoteCatch) || (_750 == _renderPassDetectPickedRemoteCatch)) {
      _1571 = WaveReadLaneFirst(_materialIndex);
      _1579 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1571 < (uint)170000), _1571, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
      _1592 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1579 < (uint)65000), _1579, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_687 - (_time.x * 0.22f)), (_688 - (_time.x * 0.18f))));
      _1594 = _1592.x + -0.3f;
      _1597 = ((_1592.x + -0.4f) * 10.471975f) + -1.5707964f;
      _1598 = _1594 * 0.006f;
      _1600 = -1.0f;
      _1601 = 0.0f;
      _1602 = 0.0f;
      _1603 = 0.0f;
      _1604 = 0.0f;
      _1605 = _1598;
      _1606 = _1598;
      while(true) {
        _1610 = _153 - ((_1606 * _1600) * sin(_1597));
        _1614 = _152 - ((_1605 * _1600) * cos(_1597));
        _1615 = _1610 + -0.5f;
        _1616 = _1614 + -0.5f;
        _1625 = ((_1594 * 0.06f) * rsqrt(dot(float2(_1615, _1616), float2(_1615, _1616)))) * sqrt((_1616 * _1616) + (_1615 * _1615));
        _1626 = _1625 * _1615;
        _1627 = _1625 * _1616;
        _1630 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_1610, _1614));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _1638 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1610 - _1626), (_1614 - _1627))))).x) * 0.2f) + _1604;
        _1640 = (_1630.y * 0.2f) + _1603;
        _1646 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1626 + _1610), (_1627 + _1614))))).z) * 0.2f) + _1602;
        _1648 = (_1630.w * 0.2f) + _1601;
        _1649 = _1600 + 0.2f;
        if (!(!(_1649 <= 1.0f))) {
          _1661 = _1606 * 1.01f;
          _1662 = _1605 * 1.01f;
          _1663 = _1638 * 0.9f;
          _1664 = _1640 * 0.9f;
          _1665 = _1646 * 0.9f;
          _1666 = _1648 * 0.9f;
          _1600 = _1649;
          _1601 = _1666;
          _1602 = _1665;
          _1603 = _1664;
          _1604 = _1663;
          _1605 = _1662;
          _1606 = _1661;
          continue;
        }
        if (!(_750 == _renderPassSelfPlayer)) {
          _1668 = ((int)(uint)((int)(_750 == _renderPassTest)));
        } else {
          _1668 = 1;
        }
        _1670 = saturate(_1648 * 1.08f);  // [sem: expr_sat]
        _1673 = max(0.001f, _exposure0.x);
        _1675 = (_1668 != 0);
        _1689 = (((_1646 * 0.54f) / _1673) * _1670);
        _1690 = ((((_1640 * 0.54f) * select(_1675, 0.7f, 0.8f)) / _1673) * _1670);
        _1691 = ((((_1638 * 0.54f) * select(_1675, 0.55f, 0.5f)) / _1673) * _1670);
        break;
      }
    } else {
      _1689 = 0.0f;
      _1690 = 0.0f;
      _1691 = 0.0f;
    }
  } else {
    _1689 = 0.0f;
    _1690 = 0.0f;
    _1691 = 0.0f;
  }
  if (!(_750 == _renderPassSelfPlayer)) {
    if (!(_750 == _renderPassTest)) {
      _1705 = saturate(saturate(_1491 * 2.0f) * _1480);  // [sem: expr_sat]
    } else {
      _1705 = _1550;  // [sem: expr_sat]
    }
  } else {
    _1705 = _1550;  // [sem: expr_sat]
  }
  _1708 = (_1705 * (_1467 - _326)) + _326;
  _1711 = (_1705 * (_1468 - _317)) + _317;
  _1714 = (_1705 * (_1469 - _308)) + _308;
  if (_750 == _renderPassMemoryBackground) {
    _1729 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _153)), ((int)(_customRenderPassSizeInvSize.y * _152)), 0)))).x));
    _1741 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _1729, mad((_invViewProj[3].y), _192, ((_invViewProj[3].x) * _190)));
    _1750 = (mad((_invViewProj[0].z), _1729, mad((_invViewProj[0].y), _192, ((_invViewProj[0].x) * _190))) + (_invViewProj[0].w)) / _1741;
    _1759 = (mad((_invViewProj[2].z), _1729, mad((_invViewProj[2].y), _192, ((_invViewProj[2].x) * _190))) + (_invViewProj[2].w)) / _1741;
    _1762 = WaveReadLaneFirst(_materialIndex);
    _1770 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1762 < (uint)170000), _1762, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
    _1785 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1770 < (uint)65000), _1770, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.01f) + (_1750 * 0.7f)), ((_1759 * 0.7f) - (_time.x * 0.04f))));
    _1788 = _1785.w + -0.5f;
    _1789 = _1785.z + -0.5f;
    _1792 = _time.x * 0.02f;
    _1795 = WaveReadLaneFirst(_materialIndex);
    _1803 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1795 < (uint)170000), _1795, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._auraTex);
    _1824 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1803 < (uint)65000), _1803, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((_1750 * 1.1f) - ((_710.y + -0.5f) * 0.1f)) + (_1788 * 0.3f)) - _1792), ((((_1759 * 1.1f) - ((_710.w + -0.5f) * 0.1f)) + (_1789 * 0.3f)) - _1792)));
    _1828 = _1788 * 2.0f;
    _1834 = (((0.5f - _710.w) + _1750) + _1828) - _mainPosition.x;
    _1853 = (((0.5f - _710.x) + (_1789 * 2.0f)) - _mainPosition.y) + (((_invViewProj[1].w) + mad((_invViewProj[1].z), _1729, mad((_invViewProj[1].y), _192, ((_invViewProj[1].x) * _190)))) / _1741);
    _1858 = (((0.5f - _710.z) + _1759) + _1828) - _mainPosition.z;
    _1867 = 1.0f - saturate(sqrt(((_1858 * _1858) + (_1834 * _1834)) + (_1853 * _1853)) * 0.125f);
    _1876 = ((sin((_time.x * 5.0f) + (_1867 * 60.0f)) + 1.0f) * 0.25f) + 0.5f;
    _1878 = (_1876 * _1876) * _1867;
    _1880 = (_1878 * _1878) * _710.x;
    _1883 = max(0.001f, _exposure0.x);
    _1912 = ((((((((_1824.z * _1824.z) * _1880) + (_1867 * 0.05f)) * _1824.z) / _1883) - _1708) * _1550) + _1708);
    _1913 = ((((((((_1824.y * _1824.y) * _1880) + (_1867 * 0.035f)) * _1824.y) / _1883) - _1711) * _1550) + _1711);
    _1914 = ((((((((_1824.x * _1824.x) * _1880) + (_1867 * 0.010000001f)) * _1824.x) / _1883) - _1714) * _1550) + _1714);
  } else {
    _1912 = _1708;
    _1913 = _1711;
    _1914 = _1714;
  }
  _1917 = WaveReadLaneFirst(_materialIndex);
  _1925 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1917 < (uint)170000), _1917, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadBackgroundOpacity);
  if (!(!(_1925 >= 0.001f))) {
    _1930 = _214 - _mainPosition.x;
    _1932 = _227 - _mainPosition.y;
    _1934 = _240 - _mainPosition.z;
    _1942 = saturate(sqrt(((_1932 * _1932) + (_1930 * _1930)) + (_1934 * _1934)) * 0.033333335f);  // [sem: expr_sat]
    _1943 = 1.0f - _1942;
    _1956 = (((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _153) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _152) + -0.5f))), 0)))).x) & 127;
    if ((_679 != 0) && (_1943 > 0.0f)) {
      _1963 = WaveReadLaneFirst(_materialIndex);
      _1971 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1963 < (uint)170000), _1963, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._glitchTex);
      _1980 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1971 < (uint)65000), _1971, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_214 * 0.1f), (_240 * 0.1f)));
      _1984 = (_1980.x * 2.0f) + -0.99607843f;
      _1986 = (_1980.y * 2.0f) + -0.99607843f;
      _1991 = ((_214 - _viewPos.x) + _1984) * 0.06f;
      _1995 = ((_227 - _viewPos.y) + _1986) * 0.06f;
      _2003 = ((_240 - _viewPos.z) + sqrt(saturate(1.0f - dot(float2(_1984, _1986), float2(_1984, _1986))))) * 0.06f;
      _2009 = sqrt(((_1995 * _1995) + (_1991 * _1991)) + (_2003 * _2003));
      _2012 = _time.x * 0.3f;
      _2018 = exp2(log2(frac(_2009 - _2012)) * 15.0f) * _1943;
      _2031 = (_1943 * 0.015f) * exp2(log2(saturate(1.0f - abs((frac((_2009 + 0.5f) - _2012) * 2.0f) + -1.0f))) * 30.0f);
      _2037 = _2018;
      _2038 = (_2018 * 0.5f);
      _2039 = (_2018 * 0.2f);
      _2040 = (_2031 * _1986);
      _2041 = (_2031 * _1984);
    } else {
      _2037 = 0.0f;
      _2038 = 0.0f;
      _2039 = 0.0f;
      _2040 = 0.0f;
      _2041 = 0.0f;
    }
    if (((uint)((int)(_1956) + (int)(-52)) < (uint)16) || (((!((uint)((int)(_1956) + (int)(-52)) < (uint)16)) && (((_nearFarProj.x / _193) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _153)), ((int)(_customRenderPassSizeInvSize.y * _152)), 0)))).x)))) > 0.2f)) && (_750 == _renderPassMemory))) {
      _2073 = (uint)((_bufferSizeAndInvSize.x * ((_727 * 0.0005f) + _153)) + -0.5f);
      _2079 = (uint)((_bufferSizeAndInvSize.y * ((_727 * 0.01f) + _152)) + -0.5f);
      _2081 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_2073, _2079, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _2084 = __3__36__0__0__g_gbufferNormal.Load(int3(_2073, _2079, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _2091 = (saturate(_2084.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _2095 = (saturate(_2084.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _2099 = (saturate(_2084.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _2101 = rsqrt(dot(float3(_2091, _2095, _2099), float3(_2091, _2095, _2099)));  // [sem: invLength]
      _2102 = _2101 * _2091;
      _2103 = _2101 * _2095;
      _2104 = _2099 * _2101;
      _2109 = (((float)((uint)((uint)(((uint)((uint)(_2081.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _2113 = (((float)((uint)((uint)(_2081.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _2115 = (_2109 + _2113) * 0.5f;
      _2117 = (_2109 - _2113) * 0.5f;
      _2121 = (1.0f - abs(_2115)) - abs(_2117);
      _2123 = rsqrt(dot(float3(_2115, _2117, _2121), float3(_2115, _2117, _2121)));  // [sem: invLength]
      _2124 = _2123 * _2115;
      _2125 = _2123 * _2117;
      _2126 = _2123 * _2121;
      _2128 = select((_2104 >= 0.0f), 1.0f, -1.0f);
      _2131 = -0.0f - (1.0f / (_2128 + _2104));
      _2132 = _2103 * _2131;
      _2133 = _2132 * _2102;
      _2134 = _2128 * _2102;
      _2140 = mad(_2126, _2102, mad(_2125, _2133, ((((_2134 * _2102) * _2131) + 1.0f) * _2124)));
      _2146 = mad(_2126, _2103, mad(_2125, ((_2132 * _2103) + _2128), ((_2124 * _2128) * _2133)));
      _2151 = mad(_2126, _2104, mad(_2125, (-0.0f - _2103), (-0.0f - (_2134 * _2124))));
      _2153 = rsqrt(dot(float3(_2140, _2146, _2151), float3(_2140, _2146, _2151)));  // [sem: invLength]
      // [sem: expr_sat]
      _2165 = saturate(dot(float3((_2153 * _2140), (_2153 * _2146), (_2153 * _2151)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _2166 = 1.0f - _2165;
      _2169 = max(0.001f, _exposure0.x);
      if ((_750 == _renderPassSelfPlayer) || ((!(_750 == _renderPassSelfPlayer)) && (_750 == _renderPassTest))) {
        _2186 = ((_2166 * 0.05f) + 0.1f);
      } else {
        _2186 = select((_750 == _renderPassMemory), 1.1f, 0.1f);
      }
      _2194 = ((pow(_1942, 1.5f)) * 0.8f) * (pow(_2165, 5.0f));
      _2198 = ((_2166 * _2166) * _1943) * _2186;
      _2443 = (((_2194 * _2037) + _1912) + ((1.0f / _2169) * _2198));
      _2444 = (((_2194 * _2038) + _1913) + ((0.7f / _2169) * _2198));
      _2445 = ((((0.4f / _2169) * _2198) + _1914) + (_2194 * _2039));
    } else {
      _2216 = _214 - _mainPosition.x;
      _2218 = _227 - _mainPosition.y;
      _2220 = _240 - _mainPosition.z;
      _2223 = _214 - _aimHighlightPosition.x;
      _2225 = _227 - _aimHighlightPosition.y;
      _2227 = _240 - _aimHighlightPosition.z;
      _2238 = 1.0f - saturate(sqrt(((_2225 * _2225) + (_2223 * _2223)) + (_2227 * _2227)) / (_aimHighlightPosition.w * 5.0f));
      // [sem: _3__36__0__0__g_specularAO_sampleLod]
      _2243 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_2041 + _153), (_2040 + _152)), 0.0f);
      _2259 = saturate(((1.0f - saturate(sqrt(((_2218 * _2218) + (_2216 * _2216)) + (_2220 * _2220)) * 0.5f)) * 0.1f) + ((_2238 * _2238) * _2238)) * _2243.w;
      _2260 = _2259 * 5.0f;
      _2262 = (_2243.w * _2243.w) * _1943;
      _2265 = ((_2262 * _2262) * 49.96f) + 0.04f;
      _2266 = _2259 * 1.75f;
      _2267 = _2259 * 3.25f;
      _2268 = _2259 * 120.0f;
      _2276 = ((1.0f - saturate(_2268 + -3.0f)) * saturate(_2268 + -2.0f)) * (0.35f - _2266);
      _2284 = ((0.65f - _2267) * saturate(_2268 + -2.5f)) * (1.0f - saturate(_2268 + -4.0f));
      _2292 = (saturate(_2268 + -3.5f) * (1.0f - _2260)) * (1.0f - saturate(_2268 + -5.0f));
      _2294 = saturate(_2268 + -8.0f);  // [sem: expr_sat]
      _2295 = 1.0f - _2262;
      _2305 = ((_2265 * _2039) + _1914) + (((((_2276 + _2266) - (_2294 * _2276)) * _2295) + (_2262 * 0.35f)) * _1925);
      _2315 = ((_2265 * _2038) + _1913) + (((((_2284 + _2267) - (_2294 * _2284)) * _2295) + (_2262 * 0.65f)) * _1925);
      _2324 = ((_2265 * _2037) + _1912) + (((((_2292 + _2260) - (_2292 * _2294)) * _2295) + _2262) * _1925);
      if (_1956 == 7) {
        _2330 = ((_isPhotosensitiveMode_isAllolwBlood & 1) != 0);
        _2443 = select(_2330, 0.0f, 0.015f);
        _2444 = 0.0f;
        _2445 = select(_2330, 0.015f, 0.007f);
      } else {
        _2334 = (int)(_1956) + (int)(-105);
        if (((uint)_2334 < (uint)2) || (((_1956 == 107) || (_1956 == 26)) || ((uint)((int)(_1956) + (int)(-27)) < (uint)2))) {
          _2346 = _mainPosition.x - _viewPos.x;
          _2348 = _mainPosition.y - _viewPos.y;
          _2350 = _mainPosition.z - _viewPos.z;
          _2362 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _2350, mad((_viewProjRelative[3].y), _2348, ((_viewProjRelative[3].x) * _2346)));
          _2371 = (mad((_viewProjRelative[0].z), _2350, mad((_viewProjRelative[0].y), _2348, ((_viewProjRelative[0].x) * _2346))) + (_viewProjRelative[0].w)) / _2362;
          _2382 = 0.5f - (((mad((_viewProjRelative[1].z), _2350, mad((_viewProjRelative[1].y), _2348, ((_viewProjRelative[1].x) * _2346))) + (_viewProjRelative[1].w)) / _2362) * 0.5f);
          _2386 = ((_view[0].x) * 5.0f) + _2346;
          _2390 = ((_view[0].y) * 5.0f) + _2348;
          _2394 = ((_view[0].z) * 5.0f) + _2350;
          _2398 = mad((_viewProjRelative[3].z), _2394, mad((_viewProjRelative[3].y), _2390, (_2386 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
          _2406 = (0.5f - (((mad((_viewProjRelative[1].z), _2394, mad((_viewProjRelative[1].y), _2390, (_2386 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _2398) * 0.5f)) - _2382;
          _2414 = (_35 * 0.5f) * (((mad((_viewProjRelative[0].z), _2394, mad((_viewProjRelative[0].y), _2390, (_2386 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _2398) - _2371);
          _2415 = _152 - _2382;
          _2419 = ((_153 + -0.5f) - (_2371 * 0.5f)) * _35;
          _2431 = 1.0f - saturate(sqrt((_2415 * _2415) + (_2419 * _2419)) / max(0.001f, sqrt((_2414 * _2414) + (_2406 * _2406))));
          _2436 = (_2431 * _2431) * (select(((uint)_2334 < (uint)3), 0.1f, 0.015f) * _1925);
          _2443 = (_2436 + _2324);
          _2444 = ((_2436 * 0.65f) + _2315);
          _2445 = ((_2436 * 0.35f) + _2305);
        } else {
          _2443 = _2324;
          _2444 = _2315;
          _2445 = _2305;
        }
      }
    }
  } else {
    _2443 = _1912;
    _2444 = _1913;
    _2445 = _1914;
  }
  if (_750 == _renderPassEnemyBoss) {
    _2452 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_153, _152));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _2457 = saturate(_2452.z * 2.0f);  // [sem: expr_sat]
    _2465 = saturate((_2452.x * 3.0f) * ((1.0f / max(0.001f, _exposure0.x)) - _2452.z));  // [sem: expr_sat]
    _2466 = _2465 * 0.6f;
    _2467 = _2465 * 0.65f;
    _2470 = WaveReadLaneFirst(_materialIndex);
    _2478 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_2470 < (uint)170000), _2470, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._enemyBossOpacity);
    _2495 = (_2478 * ((((_2452.y * 0.5f) - _2465) * _2457) + _2465));
    _2496 = (_2478 * ((((_2452.y * 0.325f) - _2467) * _2457) + _2467));
    _2497 = (_2478 * ((((_2452.y * 0.225f) - _2466) * _2457) + _2466));
  } else {
    _2495 = _2443;
    _2496 = _2444;
    _2497 = _2445;
  }
  _2498 = _153 + -0.5f;
  _2499 = _152 + -0.5f;
  _2506 = saturate((sqrt((_2498 * _2498) + (_2499 * _2499)) + -0.01f) * 1.010101f);  // [sem: expr_sat]
  _2509 = WaveReadLaneFirst(_materialIndex);
  _2517 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_2509 < (uint)170000), _2509, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._vignetteIntensity);
  _2520 = WaveReadLaneFirst(_materialIndex);
  _2528 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_2520 < (uint)170000), _2520, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _2535 = 1.0f - ((((_2506 * _2506) * (3.0f - (_2506 * 2.0f))) * _2517) * _2528);
  _2538 = max(0.0f, (_2535 * (_2497 + _1691)));
  _2541 = max(0.0f, (_2535 * (_2496 + _1690)));
  _2544 = max(0.0f, (_2535 * (_2495 + _1689)));
  _2545 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _2558 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _2545, 0)))).x) & 127)))) + 0.5f);
  } else {
    _2558 = 1.0f;
  }
  _2561 = (_localToneMappingParams.w > 0.0f);
  if (_2561) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_2538, _2541, _2544));
    _2809 = _rndx_tonemapped_color.x;
    _2816 = _rndx_tonemapped_color.y;
    _2823 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _2829 = 1.0f - abs(_etcParams.w);
      _2830 = saturate(_etcParams.w);  // [sem: expr_sat]
      _2832 = (_2829 * _2809) + _2830;
      _2834 = (_2829 * _2816) + _2830;
      _2836 = (_2829 * _2823) + _2830;
      if (_colorGradingParams.w > 0.0f) {
        _2841 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _2858 = (((max(0.0f, (1.0f - _2836)) - _2836) * _2841) + _2836);
        _2859 = (((max(0.0f, (1.0f - _2834)) - _2834) * _2841) + _2834);
        _2860 = (((max(0.0f, (1.0f - _2832)) - _2832) * _2841) + _2832);
      } else {
        _2858 = _2836;
        _2859 = _2834;
        _2860 = _2832;
      }
      _2862 = _userImageAdjust.y + 1.0f;
      _2864 = _userImageAdjust.x + 0.5f;
      _2867 = ((_2860 + -0.5f) * _2862) + _2864;
      _2870 = ((_2859 + -0.5f) * _2862) + _2864;
      _2873 = ((_2858 + -0.5f) * _2862) + _2864;
      _2879 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _2914 = exp2(log2(saturate(mad(_colorBlind2.z, _2873, mad(_colorBlind2.y, _2870, (_colorBlind2.x * _2867))))) * _2879);
      _2915 = exp2(log2(saturate(mad(_colorBlind1.z, _2873, mad(_colorBlind1.y, _2870, (_colorBlind1.x * _2867))))) * _2879);
      _2916 = exp2(log2(saturate(mad(_colorBlind0.z, _2873, mad(_colorBlind0.y, _2870, (_colorBlind0.x * _2867))))) * _2879);
    } else {
      _2914 = _2823;
      _2915 = _2816;
      _2916 = _2809;
    }
  } else {
    _2914 = _2544;
    _2915 = _2541;
    _2916 = _2538;
  }
  if (_etcParams.y > 1.0f) {
    _2921 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _2924 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _2930 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_2921, _2924), float2(_2921, _2924))));  // [sem: expr_sat]
    _2935 = (_2930 * _2914);
    _2936 = (_2930 * _2915);
    _2937 = (_2930 * _2916);
  } else {
    _2935 = _2914;
    _2936 = _2915;
    _2937 = _2916;
  }
  if (_2561 && (_etcParams.z > 0.0f)) {
    _2967 = select((_2935 <= 0.0031308f), (_2935 * 12.92f), (((pow(_2935, 0.41666666f)) * 1.055f) + -0.055f));
    _2968 = select((_2936 <= 0.0031308f), (_2936 * 12.92f), (((pow(_2936, 0.41666666f)) * 1.055f) + -0.055f));
    _2969 = select((_2937 <= 0.0031308f), (_2937 * 12.92f), (((pow(_2937, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _2967 = _2935;
    _2968 = _2936;
    _2969 = _2937;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2972 = (float)((uint)((uint)(_2545)));
    if (!(_2972 < _viewDir.w)) {
      if (!(!(_2972 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _2983 = 0.0f;
        _2984 = 0.0f;
        _2985 = 0.0f;
      } else {
        _2983 = _2969;
        _2984 = _2968;
        _2985 = _2967;
      }
    } else {
      _2983 = 0.0f;
      _2984 = 0.0f;
      _2985 = 0.0f;
    }
  } else {
    _2983 = _2969;
    _2984 = _2968;
    _2985 = _2967;
  }
  _2989 = exp2(log2(_2983 * 0.0001f) * 0.15930176f);
  _2993 = exp2(log2(_2984 * 0.0001f) * 0.15930176f);
  _2997 = exp2(log2(_2985 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_2989 * 18.6875f) + 1.0f)) * ((_2989 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_2993 * 18.6875f) + 1.0f)) * ((_2993 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_2997 * 18.6875f) + 1.0f)) * ((_2997 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _2558;
  return SV_Target;
}
