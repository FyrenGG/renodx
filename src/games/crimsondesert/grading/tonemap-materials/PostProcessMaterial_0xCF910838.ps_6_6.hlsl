struct PostProcessAbyssEnterGlid_CDStruct {
  float _startYPos;
  float _endYPos;
  float _cubeScale;
  float _cameraSpeed;
  float _cameraSinIntensity;
  float3 _screenFadeColor;
  float _screenFadeRatio;
  float3 _fogColor;
  float3 _ambientColor;
  float3 _globalColor;
  float3 _lightColor;
  float3 _centerGlowColor;
  float _centerGlowRadius;
  float _stardustIntensity;
  float _particleIntensity;
  float _particleEmissionWidth;
  float _anamorphicIntensity;
  float _anamorphicWidth;
  float _largeHalo;
  float _largeHaloIntensity;
  float _middleHaloIntensity;
  float _blubIntensity;
  float _streakGlowIntensity;
  float _centerpoint;
  float _tunnelTotal;
  float _cameraFov;
  float _cubeDistance;
  uint _screenWarpTex;
  float _screenWarpRatio;
};

struct BindlessParameters_PostProcessAbyssEnterGlid_CD {
  PostProcessAbyssEnterGlid_CDStruct BindlessParameters_PostProcessAbyssEnterGlid_CD;
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

typedef BindlessParameters_PostProcessAbyssEnterGlid_CD BindlessParameters_PostProcessAbyssEnterGlid_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssEnterGlid_CD_t> BindlessParameters_PostProcessAbyssEnterGlid_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

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
  int _27;
  float _35;
  int _38;
  float _46;
  float _52;
  float _53;
  int _56;
  int _64;
  int _67;
  float _75;
  float _77;
  float _80;
  float _92;
  float _101;
  float _110;
  float _119;
  float _121;
  float _122;
  float _123;
  float _124;
  float _129;
  float _131;
  float _133;
  float _135;
  float _138;
  float _140;
  float _142;
  float _143;
  float _144;
  float _145;
  float _151;
  float _157;
  float _163;
  float _165;
  float _167;
  float _172;
  int _180;
  float _181;
  float _182;
  float _183;
  float _184;
  float _185;
  float _186;
  float _187;
  float _188;
  float _189;
  float _190;
  float _191;
  float _192;
  float _193;
  float _292;
  float _293;
  float _294;
  float _295;
  float _296;
  float _297;
  float _298;
  float _329;
  float _330;
  float _331;
  float _380;
  float _413;
  float _414;
  int _422;
  float _423;
  float _424;
  float _425;
  float _426;
  float _427;
  float _428;
  float _676;
  float _717;
  float _718;
  int _735;
  float _736;
  float _737;
  float _738;
  float _739;
  float _740;
  float _741;
  int _870;
  int _1113;
  float _1114;
  float _1115;
  float _1116;
  float _1117;
  float _1118;
  float _1119;
  float _1121;
  float _1122;
  float _1123;
  float _1124;
  float _1125;
  float _1128;
  float _1129;
  float _1130;
  float _1131;
  float _1132;
  float _1331;
  float _1332;
  float _1333;
  int _1867;
  float _1917;
  float _1997;
  float _2011;
  float _2214;
  float _2215;
  float _2216;
  float _2309;
  float _2310;
  float _2311;
  float _2365;
  float _2366;
  float _2367;
  float _2384;
  float _2385;
  float _2386;
  float _2416;
  float _2417;
  float _2418;
  float _2432;
  float _2433;
  float _2434;
  int _2448;
  float _2449;
  float _2450;
  float _2451;
  float _2452;
  float _2453;
  float _2454;
  float _2455;
  float _2456;
  float _2457;
  float _2458;
  float _2459;
  float _2460;
  float _2461;
  float _197;
  float _201;
  float _205;
  float _208;
  float _218;
  float _227;
  float _236;
  float _237;
  float _239;
  float _241;
  float _243;
  float _256;
  float _261;
  float _264;
  float _269;
  float _271;
  float _274;
  float _277;
  float _280;
  float _281;
  float _283;
  float _285;
  float _287;
  float _289;
  float _304;
  float _310;
  float _316;
  int _326;
  int _334;
  float _342;
  int _345;
  float _353;
  int _356;
  float _364;
  float _367;
  float _369;
  bool _370;
  float _381;
  float _382;
  float _383;
  float _384;
  float _390;
  float _396;
  float _397;
  bool _398;
  float _400;
  float _431;
  float _433;
  float _439;
  float _441;
  float _443;
  float _447;
  float _453;
  float _459;
  float _461;
  float _464;
  float _466;
  float _469;
  float _471;
  float _472;
  float _473;
  float _475;
  float _477;
  float _480;
  float _481;
  float _482;
  float _484;
  float _487;
  float _488;
  float _489;
  float _490;
  float _493;
  float _497;
  float _501;
  float _503;
  float _505;
  float _507;
  float _509;
  float _511;
  float _513;
  float _515;
  float _520;
  float _532;
  float _544;
  float _556;
  float _557;
  float _558;
  float _559;
  float _561;
  float _562;
  float _564;
  float _566;
  float _568;
  float _569;
  float _570;
  float _571;
  float _573;
  float _576;
  float _578;
  float _581;
  float _585;
  float _589;
  float _591;
  float _593;
  int _596;
  float _604;
  float _608;
  float _612;
  float _614;
  float _620;
  int _623;
  float _631;
  float _635;
  float _639;
  float _640;
  float _641;
  float _642;
  float _643;
  float _645;
  float _646;
  float _647;
  float _648;
  float _654;
  float _655;
  float _656;
  float _657;
  float _658;
  float _660;
  float _662;
  float _664;
  float _666;
  float _677;
  float _678;
  float _679;
  float _680;
  float _681;
  float _682;
  float _683;
  float _684;
  float _690;
  float _696;
  float _702;
  float _704;
  float _742;
  float _743;
  float _749;
  float _751;
  float _753;
  float _757;
  float _763;
  float _769;
  float _771;
  float _774;
  float _776;
  float _778;
  float _780;
  float _781;
  float _782;
  float _784;
  float _786;
  float _787;
  float _788;
  float _791;
  float _795;
  float _799;
  float _802;
  float _806;
  float _810;
  float _812;
  float _814;
  float _816;
  float _824;
  float _829;
  float _833;
  float _841;
  float _847;
  float _853;
  float _855;
  float _857;
  float _859;
  float _860;
  float _861;
  float _862;
  int _863;
  float _872;
  int _875;
  float _883;
  float _887;
  float _891;
  float _892;
  float _897;
  float _900;
  float _902;
  float _903;
  float _918;
  float _928;
  float _930;
  float _937;
  float _939;
  float _1028;
  float _1034;
  float _1040;
  int _1050;
  float _1058;
  float _1064;
  float _1070;
  int _1080;
  float _1088;
  float _1094;
  float _1100;
  int _1110;
  int _1135;
  float _1143;
  float _1147;
  float _1151;
  float _1155;
  float _1167;
  float _1179;
  float _1191;
  int _1194;
  float _1202;
  float _1206;
  float _1210;
  int _1213;
  float _1221;
  float _1228;
  float _1231;
  float _1233;
  float _1235;
  float _1236;
  float _1241;
  float _1246;
  float _1251;
  float _1252;
  float _1253;
  float _1254;
  float _1255;
  float _1257;
  float _1259;
  float _1262;
  float _1264;
  float _1265;
  float _1270;
  float _1271;
  float _1284;
  float _1285;
  float _1288;
  float _1290;
  float _1291;
  float _1293;
  float _1294;
  float _1295;
  int _1336;
  float _1344;
  int _1347;
  float _1355;
  int _1358;
  float _1366;
  float _1372;
  float _1375;
  float _1376;
  float _1377;
  float _1381;
  float _1393;
  float _1396;
  float _1398;
  float _1400;
  float _1401;
  float _1402;
  float _1403;
  float _1404;
  float _1405;
  float _1406;
  float _1407;
  float _1416;
  float _1417;
  float _1418;
  float _1427;
  float _1428;
  float _1429;
  float _1430;
  float _1434;
  float _1467;
  int _1470;
  float _1478;
  float _1480;
  float _1484;
  float _1488;
  float _1492;
  float _1500;
  float _1501;
  float _1508;
  float _1510;
  float _1511;
  float _1512;
  float _1520;
  float _1524;
  float _1528;
  float _1536;
  float _1537;
  float _1544;
  float _1546;
  float _1547;
  float _1548;
  float _1556;
  float _1560;
  float _1564;
  float _1572;
  float _1573;
  float _1574;
  float _1575;
  float _1577;
  float _1582;
  float _1586;
  float _1589;
  float _1603;
  float _1608;
  float _1615;
  float _1617;
  float _1627;
  float _1628;
  float _1630;
  float _1632;
  float _1636;
  float _1639;
  float _1647;
  float _1649;
  bool _1650;
  bool _1651;
  bool _1652;
  bool _1653;
  float _1656;
  bool _1657;
  bool _1658;
  float _1661;
  int _1664;
  float _1672;
  int _1675;
  float _1683;
  float _1734;
  int _1737;
  float _1745;
  int _1748;
  float _1756;
  int _1759;
  float _1767;
  int _1770;
  float _1778;
  float _1780;
  float _1785;
  float _1789;
  float _1793;
  float _1795;
  float _1806;
  int _1809;
  float _1817;
  float _1821;
  int4 _1831;
  int _1836;
  int _1837;
  int _1838;
  int _1839;
  float4 _1869;
  float _1875;
  float _1878;
  float _1881;
  float _1885;
  float _1894;
  float _1903;
  float _1912;
  bool _1913;
  float _1928;
  float _1941;
  float _1964;
  float _1993;
  uint _1998;
  bool _2014;
  float _2018;
  float _2037;
  float _2053;
  float _2069;
  float _2070;
  float _2074;
  float _2077;
  float _2080;
  float _2087;
  float _2094;
  float _2101;
  float _2102;
  float _2103;
  float _2104;
  float _2105;
  float _2106;
  float _2107;
  float _2123;
  float _2139;
  float _2155;
  float _2156;
  float _2157;
  float _2158;
  float _2159;
  float _2176;
  float _2177;
  float _2178;
  float _2179;
  float _2182;
  float _2185;
  float _2189;
  float _2193;
  float _2197;
  float _2217;
  float _2229;
  float _2241;
  float _2253;
  float _2260;
  float _2267;
  float _2274;
  float _2280;
  float _2281;
  float _2283;
  float _2285;
  float _2287;
  float _2292;
  float _2313;
  float _2315;
  float _2318;
  float _2321;
  float _2324;
  float _2330;
  float _2370;
  float _2373;
  float _2379;
  float _2421;
  float _2438;
  float _2442;
  float _2446;
  int __loop_jump_target = -1;
  _2 = ((_global_0[0]) == 0);
  _27 = WaveReadLaneFirst(_materialIndex);
  _35 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_27 < (uint)170000), _27, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._startYPos);
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_38 < (uint)170000), _38, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._endYPos);
  _52 = saturate((_viewPos.y - _46) / (_35 - _46));  // [sem: expr_sat]
  _53 = 1.0f - _52;
  _56 = WaveReadLaneFirst(_materialIndex);
  _64 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_56 < (uint)170000), _56, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._screenWarpTex);
  _67 = WaveReadLaneFirst(_materialIndex);
  _75 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_67 < (uint)170000), _67, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._cameraSinIntensity);
  _77 = (TEXCOORD.x * 2.0f) + -1.0f;
  _80 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
  _92 = ((_invViewProjRelative[3].z) + (_invViewProjRelative[3].w)) + mad((_invViewProjRelative[3].y), _80, ((_invViewProjRelative[3].x) * _77));
  _101 = (((_invViewProjRelative[0].z) + (_invViewProjRelative[0].w)) + mad((_invViewProjRelative[0].y), _80, ((_invViewProjRelative[0].x) * _77))) / _92;
  _110 = (((_invViewProjRelative[1].z) + (_invViewProjRelative[1].w)) + mad((_invViewProjRelative[1].y), _80, ((_invViewProjRelative[1].x) * _77))) / _92;
  _119 = (((_invViewProjRelative[2].z) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[2].y), _80, ((_invViewProjRelative[2].x) * _77))) / _92;
  _121 = rsqrt(dot(float3(_101, _110, _119), float3(_101, _110, _119)));  // [sem: invLength]
  _122 = _121 * _101;
  _123 = _121 * _110;
  _124 = _121 * _119;
  _129 = sin(_time.x * 0.1f) + 3.0f;
  _131 = (_129 * _122) + _122;
  _133 = (_129 * _123) + _123;
  _135 = (_129 * _124) + _124;
  _138 = floor(_viewPos.x);
  _140 = floor(_viewPos.y);
  _142 = floor(_viewPos.z);
  _143 = 1.0f / _122;
  _144 = 1.0f / _123;
  _145 = 1.0f / _124;
  _151 = (float)((int)((int)((int)(uint)((int)(_122 > 0.0f))) - (int)((int)(uint)((int)(_122 < 0.0f)))));
  _157 = (float)((int)((int)((int)(uint)((int)(_123 > 0.0f))) - (int)((int)(uint)((int)(_123 < 0.0f)))));
  _163 = (float)((int)((int)((int)(uint)((int)(_124 > 0.0f))) - (int)((int)(uint)((int)(_124 < 0.0f)))));
  _165 = (0.5f - _viewPos.x) + _138;
  _167 = _142 + (0.5f - _viewPos.z);
  _172 = (((0.5f - _viewPos.y) + _140) + (_157 * 0.5f)) * _144;
  _180 = 0;
  _181 = 0.0f;
  _182 = 0.0f;
  _183 = 0.0f;
  _184 = 0.0f;
  _185 = 0.0f;
  _186 = 0.0f;
  _187 = 0.0f;
  _188 = (_145 * (_167 + (_163 * 0.5f)));
  _189 = _172;
  _190 = ((_165 + (_151 * 0.5f)) * _143);
  _191 = _142;
  _192 = _140;
  _193 = _138;
  while(true) {
    _197 = frac(sin(dot(float3(_193, _192, _191), float3(127.1f, 311.7f, 74.7f))) * 43758.547f);
    _201 = frac(sin(dot(float3(_193, _192, _191), float3(269.5f, 183.3f, 246.1f))) * 43758.547f);
    _205 = frac(sin(dot(float3(_193, _192, _191), float3(113.5f, 271.9f, 124.6f))) * 43758.547f);
    _208 = _time.x * _197;
    _218 = min(max(((cos(_208 + _197) * 0.1f) + _197), 0.005f), 0.995f) + (_193 - _viewPos.x);
    _227 = min(max(((cos(_208 + _201) * 0.1f) + _201), 0.005f), 0.995f) + (_192 - _viewPos.y);
    _236 = min(max(((cos(_208 + _205) * 0.1f) + _205), 0.005f), 0.995f) + (_191 - _viewPos.z);
    _237 = dot(float3(_218, _227, _236), float3(_122, _123, _124));
    _239 = _218 - (_237 * _122);
    _241 = _227 - (_237 * _123);
    _243 = _236 - (_237 * _124);
    bool __branch_chain_179;
    if (!((_237 > 0.0f) && (_237 < 50.0f))) {
      _292 = _181;
      _293 = _182;
      _294 = _183;
      _295 = _184;
      _296 = _185;
      _297 = _186;
      _298 = _187;
      __branch_chain_179 = true;
    } else {
      _256 = saturate((sqrt(((_239 * _239) + (_241 * _241)) + (_243 * _243)) + -0.0025f) * 400.0f);  // [sem: expr_sat]
      _261 = 1.0f - ((_256 * _256) * (3.0f - (_256 * 2.0f)));
      _264 = saturate((_237 + -5.0f) * -0.2f);  // [sem: expr_sat]
      _269 = ((_264 * _264) * (3.0f - (_264 * 2.0f))) * _261;
      _271 = _261 * (_269 / _237);
      _274 = _271 * ((_187 * 0.4f) + 0.6f);
      _277 = _271 * ((_186 * 0.4f) + 0.6f);
      _280 = _271 * ((_185 * 0.4f) + 0.6f);
      _281 = 1.0f - _181;
      _283 = (_274 * _281) + _184;
      _285 = (_277 * _281) + _183;
      _287 = (_280 * _281) + _182;
      _289 = (_269 * _281) + _181;
      if (!(_289 > 0.99f)) {
        _292 = _289;
        _293 = _287;
        _294 = _285;
        _295 = _283;
        _296 = _280;
        _297 = _277;
        _298 = _274;
        __branch_chain_179 = true;
      } else {
        _329 = _287;
        _330 = _285;
        _331 = _283;
        __branch_chain_179 = false;
      }
    }
    if (__branch_chain_179) {
      _304 = (select((_189 < _190), 0.0f, 1.0f) * _151) * select((_188 < _190), 0.0f, 1.0f);
      _310 = (select((_188 < _189), 0.0f, 1.0f) * _157) * select((_190 < _189), 0.0f, 1.0f);
      _316 = (select((_189 < _188), 0.0f, 1.0f) * _163) * select((_190 < _188), 0.0f, 1.0f);
      _326 = (int)(_180) + (int)(1);
      if ((int)_326 < (int)5) {
        _2448 = _326;
        _2449 = _292;
        _2450 = _293;
        _2451 = _294;
        _2452 = _295;
        _2453 = _296;
        _2454 = _297;
        _2455 = _298;
        _2456 = ((_316 * _145) + _188);
        _2457 = ((_310 * _144) + _189);
        _2458 = ((_304 * _143) + _190);
        _2459 = (_316 + _191);
        _2460 = (_310 + _192);
        _2461 = (_304 + _193);
        _180 = _2448;
        _181 = _2449;
        _182 = _2450;
        _183 = _2451;
        _184 = _2452;
        _185 = _2453;
        _186 = _2454;
        _187 = _2455;
        _188 = _2456;
        _189 = _2457;
        _190 = _2458;
        _191 = _2459;
        _192 = _2460;
        _193 = _2461;
        continue;
      } else {
        _329 = _293;
        _330 = _294;
        _331 = _295;
      }
    }
    _334 = WaveReadLaneFirst(_materialIndex);
    _342 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_334 < (uint)170000), _334, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._stardustIntensity);
    _345 = WaveReadLaneFirst(_materialIndex);
    _353 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_345 < (uint)170000), _345, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._cubeScale);
    _356 = WaveReadLaneFirst(_materialIndex);
    _364 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_356 < (uint)170000), _356, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._cubeDistance);
    _367 = (pow(_53, 2.2f));
    _369 = (_367 + 1.0f) * 5.0f;
    _370 = (_53 > 0.8f);
    if (_370) {
      _380 = ((exp2(log2(_52 * 5.0f) * 2.2f) * (_369 + -0.01f)) + 0.01f);
    } else {
      _380 = _369;
    }
    _381 = _380 * _122;
    _382 = _380 * _124;
    _383 = 1.0f / _381;
    _384 = 1.0f / _382;
    _390 = (float)((int)((int)((int)(uint)((int)(_381 > 0.0f))) - (int)((int)(uint)((int)(_381 < 0.0f)))));
    _396 = (float)((int)((int)((int)(uint)((int)(_382 > 0.0f))) - (int)((int)(uint)((int)(_382 < 0.0f)))));
    _397 = _353 * 0.01f;
    _398 = (_53 < 1.0f);
    if (_398) {
      _400 = saturate(_53);  // [sem: _53_sat]
      _413 = (((_400 * _400) * _397) * (3.0f - (_400 * 2.0f)));
      _414 = (max((5.0f - (_367 * 5.3f)), 0.0f) * _364);
      _422 = 0;
      _423 = (((_396 * 0.5f) + _167) * _384);
      _424 = _172;
      _425 = (((_390 * 0.5f) + _165) * _383);
      _426 = _142;
      _427 = _140;
      _428 = _138;
      while(true) {
        _431 = _viewPos.x - _428;
        _433 = _viewPos.z - _426;
        if (dot(float2(_431, _433), float2(_431, _433)) > (_414 * _414)) {
          _439 = frac(_428 * 0.1031f);
          _441 = frac(_427 * 0.1031f);
          _443 = frac(_426 * 0.1031f);
          _447 = dot(float3(_439, _441, _443), float3((_441 + 19.19f), (_443 + 19.19f), (_439 + 19.19f)));
          _453 = frac(((_441 + _439) + (_447 * 2.0f)) * (_447 + _443));
          if (_453 > 0.9f) {
            _459 = (_453 + _426) + _time.x;
            _461 = (_459 * 2.0f) + _427;
            _464 = min(max((_453 * 0.5f), 0.1f), _413);
            _466 = _viewPos.x + (-0.5f - _428);
            _469 = _viewPos.y + (-0.5f - _427);
            _471 = _viewPos.z + (-0.5f - _426);
            _472 = cos(_459);
            _473 = sin(_459);
            _475 = mad(_473, _469, (_472 * _471));
            _477 = mad(_473, _123, (_472 * _382));
            _480 = mad(_472, _123, (-0.0f - (_382 * _473)));
            _481 = cos(_461);
            _482 = sin(_461);
            _484 = mad(_482, _477, (_481 * _381));
            _487 = mad(_481, _477, (-0.0f - (_381 * _482)));
            _488 = 1.0f / _484;
            _489 = 1.0f / _480;
            _490 = 1.0f / _487;
            _493 = mad(_482, _475, (_481 * _466)) * _488;
            _497 = mad(_472, _469, (-0.0f - (_471 * _473))) * _489;
            _501 = mad(_481, _475, (-0.0f - (_466 * _482))) * _490;
            _503 = abs(_488) * _464;
            _505 = abs(_489) * _464;
            _507 = abs(_490) * _464;
            _509 = (-0.0f - _493) - _503;
            _511 = (-0.0f - _497) - _505;
            _513 = (-0.0f - _501) - _507;
            _515 = max(max(_509, _511), _513);
            _520 = min(min((_503 - _493), (_505 - _497)), (_507 - _501));
            _532 = (select((_509 < _511), 0.0f, 1.0f) * ((float)((int)((int)((int)(uint)((int)(_484 < 0.0f))) - (int)((int)(uint)((int)(_484 > 0.0f))))))) * select((_509 < _513), 0.0f, 1.0f);
            _544 = (select((_511 < _509), 0.0f, 1.0f) * ((float)((int)((int)((int)(uint)((int)(_480 < 0.0f))) - (int)((int)(uint)((int)(_480 > 0.0f))))))) * select((_511 < _513), 0.0f, 1.0f);
            _556 = (select((_513 < _509), 0.0f, 1.0f) * ((float)((int)((int)((int)(uint)((int)(_487 < 0.0f))) - (int)((int)(uint)((int)(_487 > 0.0f))))))) * select((_513 < _511), 0.0f, 1.0f);
            _557 = -0.0f - _459;
            _558 = cos(_557);
            _559 = sin(_557);
            _561 = mad(_559, _544, (_556 * _558));
            _562 = -0.0f - _559;
            _564 = mad(_558, _544, (_556 * _562));
            _566 = mad(_559, _564, (_561 * _558));
            _568 = mad(_558, _564, (_561 * _562));
            _569 = -0.0f - _461;
            _570 = cos(_569);
            _571 = sin(_569);
            _573 = mad(_571, _566, (_570 * _532));
            _576 = mad(_570, _566, (-0.0f - (_532 * _571)));
            _578 = mad(_571, _576, (_573 * _570));
            _581 = mad(_570, _576, (-0.0f - (_571 * _573)));
            _585 = select(((_515 > _520) || (_520 < 0.0f)), 0.0f, _515);
            if (_585 > 0.0f) {
              _589 = (_585 * _122) + _viewPos.x;
              _591 = (_585 * _123) + _viewPos.y;
              _593 = (_585 * _124) + _viewPos.z;
              _596 = WaveReadLaneFirst(_materialIndex);
              _604 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_596 < (uint)170000), _596, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._lightColor.x);
              _608 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_596 < (uint)170000), _596, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._lightColor.y);
              _612 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_596 < (uint)170000), _596, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._lightColor.z);
              _614 = rsqrt(dot(float3(_604, _608, _612), float3(_604, _608, _612)));  // [sem: invLength]
              _620 = max(dot(float3((_614 * _604), (_614 * _608), (_614 * _612)), float3(_578, _568, _581)), 0.05f) * 0.01f;
              _623 = WaveReadLaneFirst(_materialIndex);
              _631 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_623 < (uint)170000), _623, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._ambientColor.x);
              _635 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_623 < (uint)170000), _623, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._ambientColor.y);
              _639 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_623 < (uint)170000), _623, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._ambientColor.z);
              _640 = max(0.0f, _568);
              _641 = _131 - _589;
              _642 = _133 - _591;
              _643 = _135 - _593;
              _645 = rsqrt(dot(float3(_641, _642, _643), float3(_641, _642, _643)));  // [sem: invLength]
              _646 = _645 * _641;
              _647 = _645 * _642;
              _648 = _645 * _643;
              _654 = sqrt(((_642 * _642) + (_641 * _641)) + (_643 * _643));
              _655 = _654 * _654;
              _656 = -0.0f - _646;
              _657 = -0.0f - _647;
              _658 = -0.0f - _648;
              _660 = dot(float3(_656, _657, _658), float3(_578, _568, _581)) * 2.0f;
              _662 = _589 - (_122 * 0.01f);
              _664 = _591 - (_123 * 0.01f);
              _666 = _593 - (_124 * 0.01f);
              if (_370) {
                _676 = ((exp2(log2(_52 * 5.0f) * 2.2f) * (_369 + -0.01f)) + 0.01f);
              } else {
                _676 = _369;
              }
              _677 = _676 * _646;
              _678 = _676 * _648;
              _679 = floor(_662);
              _680 = floor(_664);
              _681 = floor(_666);
              _682 = 1.0f / _677;
              _683 = 1.0f / _647;
              _684 = 1.0f / _678;
              _690 = (float)((int)((int)((int)(uint)((int)(_677 > 0.0f))) - (int)((int)(uint)((int)(_677 < 0.0f)))));
              _696 = (float)((int)((int)((int)(uint)((int)(_647 > 0.0f))) - (int)((int)(uint)((int)(_647 < 0.0f)))));
              _702 = (float)((int)((int)((int)(uint)((int)(_678 > 0.0f))) - (int)((int)(uint)((int)(_678 < 0.0f)))));
              _704 = saturate(_53);  // [sem: _53_sat]
              _717 = (((_704 * _704) * _397) * (3.0f - (_704 * 2.0f)));
              _718 = (max((5.0f - (_367 * 5.3f)), 0.0f) * _364);
              _735 = 0;
              _736 = ((((0.5f - _666) + _681) + (_702 * 0.5f)) * _684);
              _737 = (_683 * (((0.5f - _664) + (_696 * 0.5f)) + _680));
              _738 = ((((0.5f - _662) + _679) + (_690 * 0.5f)) * _682);
              _739 = _681;
              _740 = _680;
              _741 = _679;
              while(true) {
                _742 = _662 - _741;
                _743 = _666 - _739;
                bool __branch_chain_734;
                if (!(dot(float2(_742, _743), float2(_742, _743)) > (_718 * _718))) {
                  __branch_chain_734 = true;
                } else {
                  _749 = frac(_741 * 0.1031f);
                  _751 = frac(_740 * 0.1031f);
                  _753 = frac(_739 * 0.1031f);
                  _757 = dot(float3(_749, _751, _753), float3((_751 + 19.19f), (_753 + 19.19f), (_749 + 19.19f)));
                  _763 = frac(((_751 + _749) + (_757 * 2.0f)) * (_757 + _753));
                  if (!(_763 > 0.9f)) {
                    __branch_chain_734 = true;
                  } else {
                    _769 = (_763 + _739) + _time.x;
                    _771 = (_769 * 2.0f) + _740;
                    _774 = min(max((_763 * 0.5f), 0.1f), _717);
                    _776 = (_662 + -0.5f) - _741;
                    _778 = (_664 + -0.5f) - _740;
                    _780 = (_666 + -0.5f) - _739;
                    _781 = cos(_769);
                    _782 = sin(_769);
                    _784 = mad(_782, _778, (_781 * _780));
                    _786 = mad(_782, _647, (_781 * _678));
                    _787 = cos(_771);
                    _788 = sin(_771);
                    _791 = 1.0f / mad(_788, _786, (_787 * _677));
                    _795 = 1.0f / mad(_781, _647, (-0.0f - (_678 * _782)));
                    _799 = 1.0f / mad(_787, _786, (-0.0f - (_677 * _788)));
                    _802 = mad(_788, _784, (_787 * _776)) * _791;
                    _806 = mad(_781, _778, (-0.0f - (_780 * _782))) * _795;
                    _810 = mad(_787, _784, (-0.0f - (_776 * _788))) * _799;
                    _812 = abs(_791) * _774;
                    _814 = abs(_795) * _774;
                    _816 = abs(_799) * _774;
                    _824 = max(max(((-0.0f - _802) - _812), ((-0.0f - _806) - _814)), ((-0.0f - _810) - _816));
                    _829 = min(min((_812 - _802), (_814 - _806)), (_816 - _810));
                    _833 = select(((_824 > _829) || (_829 < 0.0f)), 0.0f, _824);
                    if (!(_833 > 0.0f)) {
                      __branch_chain_734 = true;
                    } else {
                      __branch_chain_734 = false;
                    }
                  }
                }
                if (__branch_chain_734) {
                  _841 = (select((_737 < _738), 0.0f, 1.0f) * _690) * select((_736 < _738), 0.0f, 1.0f);
                  _847 = (select((_736 < _737), 0.0f, 1.0f) * _696) * select((_738 < _737), 0.0f, 1.0f);
                  _853 = (select((_737 < _736), 0.0f, 1.0f) * _702) * select((_738 < _736), 0.0f, 1.0f);
                  _855 = (_841 * _682) + _738;
                  _857 = (_847 * _683) + _737;
                  _859 = (_853 * _684) + _736;
                  _860 = _841 + _741;
                  _861 = _847 + _740;
                  _862 = _853 + _739;
                  _863 = (int)(_735) + (int)(1);
                  if ((uint)_863 < (uint)64) {
                    _735 = _863;
                    _736 = _859;
                    _737 = _857;
                    _738 = _855;
                    _739 = _862;
                    _740 = _861;
                    _741 = _860;
                    continue;
                  } else {
                    _870 = 0;
                  }
                } else {
                  _870 = ((int)(uint)((int)(_833 < _654)));
                }
                _872 = select((_870 != 0), 0.0f, 1.0f);
                _875 = WaveReadLaneFirst(_materialIndex);
                _883 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_875 < (uint)170000), _875, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._globalColor.x);
                _887 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_875 < (uint)170000), _875, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._globalColor.y);
                _891 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_875 < (uint)170000), _875, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._globalColor.z);
                _892 = dot(float3(_646, _647, _648), float3(_578, _568, _581));
                _897 = (1.0f / ((_655 * 0.05f) + 1.0f)) * max(_892, 0.05f);
                _900 = 1.0f / ((_655 * 0.1f) + 1.0f);
                _902 = max(_892, 0.01f) * _900;
                _903 = _902 * 0.07323897f;
                _918 = exp2(log2(max(dot(float3((_656 - (_660 * _578)), (_657 - (_660 * _568)), (_658 - (_660 * _581))), float3((-0.0f - _122), (-0.0f - _123), (-0.0f - _124))), 0.0f)) * 10.0f) * _900;
                _928 = (((_time.x * 50.0f) * exp2(log2(2.0f - _52) * 0.45454544f)) + _591) * 0.02f;
                _930 = frac(abs(_928));
                _937 = select(((select((_928 >= (-0.0f - _928)), _930, (-0.0f - _930)) * 50.0f) > 2.0f), 0.0f, 1.0f);
                _939 = (_585 * 0.1f) + 1.0f;
                _1121 = _585;
                _1122 = (((((_918 * 0.44798842f) + _620) + (select((_639 < 0.04045f), (_639 * 0.07739938f), exp2(log2((_639 + 0.055f) * 0.94786733f) * 2.4f)) * _640)) + ((_937 * 0.2f) / _939)) + (((select((_891 < 0.04045f), (_891 * 0.07739938f), exp2(log2((_891 + 0.055f) * 0.94786733f) * 2.4f)) * _897) + (_902 * 0.21404113f)) * _872));
                _1123 = (((((_918 * 0.21404113f) + _620) + (select((_635 < 0.04045f), (_635 * 0.07739938f), exp2(log2((_635 + 0.055f) * 0.94786733f) * 2.4f)) * _640)) + ((_937 * 0.1f) / _939)) + (((select((_887 < 0.04045f), (_887 * 0.07739938f), exp2(log2((_887 + 0.055f) * 0.94786733f) * 2.4f)) * _897) + _903) * _872));
                _1124 = (((((_918 * 0.13286835f) + _620) + (select((_631 < 0.04045f), (_631 * 0.07739938f), exp2(log2((_631 + 0.055f) * 0.94786733f) * 2.4f)) * _640)) + ((_937 * 0.05f) / _939)) + (((select((_883 < 0.04045f), (_883 * 0.07739938f), exp2(log2((_883 + 0.055f) * 0.94786733f) * 2.4f)) * _897) + _903) * _872));
                _1125 = _585;
                break;
              }
            } else {
              _1028 = (select((_424 < _425), 0.0f, 1.0f) * _390) * select((_423 < _425), 0.0f, 1.0f);
              _1034 = (select((_423 < _424), 0.0f, 1.0f) * _157) * select((_425 < _424), 0.0f, 1.0f);
              _1040 = (select((_424 < _423), 0.0f, 1.0f) * _396) * select((_425 < _423), 0.0f, 1.0f);
              _1050 = (int)(_422) + (int)(1);
              if ((uint)_1050 < (uint)64) {
                _1113 = _1050;
                _1114 = ((_1040 * _384) + _423);
                _1115 = ((_1034 * _144) + _424);
                _1116 = ((_1028 * _383) + _425);
                _1117 = (_1040 + _426);
                _1118 = (_1034 + _427);
                _1119 = (_1028 + _428);
                while(true) {
                  _422 = _1113;
                  _423 = _1114;
                  _424 = _1115;
                  _425 = _1116;
                  _426 = _1117;
                  _427 = _1118;
                  _428 = _1119;
                  __loop_jump_target = 421;
                  break;
                  break;
                }
                if (__loop_jump_target == 421) {
                  __loop_jump_target = -1;
                  continue;
                }
                if (__loop_jump_target != -1) {
                  break;
                }
              } else {
                _1121 = 50.0f;
                _1122 = 0.0f;
                _1123 = 0.0f;
                _1124 = 0.0f;
                _1125 = -1.0f;
              }
            }
          } else {
            _1058 = (select((_424 < _425), 0.0f, 1.0f) * _390) * select((_423 < _425), 0.0f, 1.0f);
            _1064 = (select((_423 < _424), 0.0f, 1.0f) * _157) * select((_425 < _424), 0.0f, 1.0f);
            _1070 = (select((_424 < _423), 0.0f, 1.0f) * _396) * select((_425 < _423), 0.0f, 1.0f);
            _1080 = (int)(_422) + (int)(1);
            if ((uint)_1080 < (uint)64) {
              _1113 = _1080;
              _1114 = ((_1070 * _384) + _423);
              _1115 = ((_1064 * _144) + _424);
              _1116 = ((_1058 * _383) + _425);
              _1117 = (_1070 + _426);
              _1118 = (_1064 + _427);
              _1119 = (_1058 + _428);
              while(true) {
                _422 = _1113;
                _423 = _1114;
                _424 = _1115;
                _425 = _1116;
                _426 = _1117;
                _427 = _1118;
                _428 = _1119;
                __loop_jump_target = 421;
                break;
                break;
              }
              if (__loop_jump_target == 421) {
                __loop_jump_target = -1;
                continue;
              }
              if (__loop_jump_target != -1) {
                break;
              }
            } else {
              _1121 = 50.0f;
              _1122 = 0.0f;
              _1123 = 0.0f;
              _1124 = 0.0f;
              _1125 = -1.0f;
            }
          }
        } else {
          _1088 = (select((_424 < _425), 0.0f, 1.0f) * _390) * select((_423 < _425), 0.0f, 1.0f);
          _1094 = (select((_423 < _424), 0.0f, 1.0f) * _157) * select((_425 < _424), 0.0f, 1.0f);
          _1100 = (select((_424 < _423), 0.0f, 1.0f) * _396) * select((_425 < _423), 0.0f, 1.0f);
          _1110 = (int)(_422) + (int)(1);
          if ((uint)_1110 < (uint)64) {
            _1113 = _1110;
            _1114 = ((_1100 * _384) + _423);
            _1115 = ((_1094 * _144) + _424);
            _1116 = ((_1088 * _383) + _425);
            _1117 = (_1100 + _426);
            _1118 = (_1094 + _427);
            _1119 = (_1088 + _428);
            while(true) {
              _422 = _1113;
              _423 = _1114;
              _424 = _1115;
              _425 = _1116;
              _426 = _1117;
              _427 = _1118;
              _428 = _1119;
              __loop_jump_target = 421;
              break;
              break;
            }
            if (__loop_jump_target == 421) {
              __loop_jump_target = -1;
              continue;
            }
            if (__loop_jump_target != -1) {
              break;
            }
          } else {
            _1121 = 50.0f;
            _1122 = 0.0f;
            _1123 = 0.0f;
            _1124 = 0.0f;
            _1125 = -1.0f;
          }
        }
        if (!_2) {
          _1113 = _422;
          _1114 = _423;
          _1115 = _424;
          _1116 = _425;
          _1117 = _426;
          _1118 = _427;
          _1119 = _428;
          while(true) {
            _422 = _1113;
            _423 = _1114;
            _424 = _1115;
            _425 = _1116;
            _426 = _1117;
            _427 = _1118;
            _428 = _1119;
            __loop_jump_target = 421;
            break;
            break;
          }
          if (__loop_jump_target == 421) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
        }
        _1128 = _1121;
        _1129 = _1122;
        _1130 = _1123;
        _1131 = _1124;
        _1132 = _1125;
        break;
      }
    } else {
      if (!(_53 > 0.9999f)) {
        _413 = _397;
        _414 = _364;
        _422 = 0;
        _423 = (((_396 * 0.5f) + _167) * _384);
        _424 = _172;
        _425 = (((_390 * 0.5f) + _165) * _383);
        _426 = _142;
        _427 = _140;
        _428 = _138;
        while(true) {
          _431 = _viewPos.x - _428;
          _433 = _viewPos.z - _426;
          if (dot(float2(_431, _433), float2(_431, _433)) > (_414 * _414)) {
            _439 = frac(_428 * 0.1031f);
            _441 = frac(_427 * 0.1031f);
            _443 = frac(_426 * 0.1031f);
            _447 = dot(float3(_439, _441, _443), float3((_441 + 19.19f), (_443 + 19.19f), (_439 + 19.19f)));
            _453 = frac(((_441 + _439) + (_447 * 2.0f)) * (_447 + _443));
            if (_453 > 0.9f) {
              _459 = (_453 + _426) + _time.x;
              _461 = (_459 * 2.0f) + _427;
              _464 = min(max((_453 * 0.5f), 0.1f), _413);
              _466 = _viewPos.x + (-0.5f - _428);
              _469 = _viewPos.y + (-0.5f - _427);
              _471 = _viewPos.z + (-0.5f - _426);
              _472 = cos(_459);
              _473 = sin(_459);
              _475 = mad(_473, _469, (_472 * _471));
              _477 = mad(_473, _123, (_472 * _382));
              _480 = mad(_472, _123, (-0.0f - (_382 * _473)));
              _481 = cos(_461);
              _482 = sin(_461);
              _484 = mad(_482, _477, (_481 * _381));
              _487 = mad(_481, _477, (-0.0f - (_381 * _482)));
              _488 = 1.0f / _484;
              _489 = 1.0f / _480;
              _490 = 1.0f / _487;
              _493 = mad(_482, _475, (_481 * _466)) * _488;
              _497 = mad(_472, _469, (-0.0f - (_471 * _473))) * _489;
              _501 = mad(_481, _475, (-0.0f - (_466 * _482))) * _490;
              _503 = abs(_488) * _464;
              _505 = abs(_489) * _464;
              _507 = abs(_490) * _464;
              _509 = (-0.0f - _493) - _503;
              _511 = (-0.0f - _497) - _505;
              _513 = (-0.0f - _501) - _507;
              _515 = max(max(_509, _511), _513);
              _520 = min(min((_503 - _493), (_505 - _497)), (_507 - _501));
              _532 = (select((_509 < _511), 0.0f, 1.0f) * ((float)((int)((int)((int)(uint)((int)(_484 < 0.0f))) - (int)((int)(uint)((int)(_484 > 0.0f))))))) * select((_509 < _513), 0.0f, 1.0f);
              _544 = (select((_511 < _509), 0.0f, 1.0f) * ((float)((int)((int)((int)(uint)((int)(_480 < 0.0f))) - (int)((int)(uint)((int)(_480 > 0.0f))))))) * select((_511 < _513), 0.0f, 1.0f);
              _556 = (select((_513 < _509), 0.0f, 1.0f) * ((float)((int)((int)((int)(uint)((int)(_487 < 0.0f))) - (int)((int)(uint)((int)(_487 > 0.0f))))))) * select((_513 < _511), 0.0f, 1.0f);
              _557 = -0.0f - _459;
              _558 = cos(_557);
              _559 = sin(_557);
              _561 = mad(_559, _544, (_556 * _558));
              _562 = -0.0f - _559;
              _564 = mad(_558, _544, (_556 * _562));
              _566 = mad(_559, _564, (_561 * _558));
              _568 = mad(_558, _564, (_561 * _562));
              _569 = -0.0f - _461;
              _570 = cos(_569);
              _571 = sin(_569);
              _573 = mad(_571, _566, (_570 * _532));
              _576 = mad(_570, _566, (-0.0f - (_532 * _571)));
              _578 = mad(_571, _576, (_573 * _570));
              _581 = mad(_570, _576, (-0.0f - (_571 * _573)));
              _585 = select(((_515 > _520) || (_520 < 0.0f)), 0.0f, _515);
              if (_585 > 0.0f) {
                _589 = (_585 * _122) + _viewPos.x;
                _591 = (_585 * _123) + _viewPos.y;
                _593 = (_585 * _124) + _viewPos.z;
                _596 = WaveReadLaneFirst(_materialIndex);
                _604 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_596 < (uint)170000), _596, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._lightColor.x);
                _608 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_596 < (uint)170000), _596, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._lightColor.y);
                _612 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_596 < (uint)170000), _596, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._lightColor.z);
                _614 = rsqrt(dot(float3(_604, _608, _612), float3(_604, _608, _612)));  // [sem: invLength]
                _620 = max(dot(float3((_614 * _604), (_614 * _608), (_614 * _612)), float3(_578, _568, _581)), 0.05f) * 0.01f;
                _623 = WaveReadLaneFirst(_materialIndex);
                _631 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_623 < (uint)170000), _623, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._ambientColor.x);
                _635 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_623 < (uint)170000), _623, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._ambientColor.y);
                _639 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_623 < (uint)170000), _623, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._ambientColor.z);
                _640 = max(0.0f, _568);
                _641 = _131 - _589;
                _642 = _133 - _591;
                _643 = _135 - _593;
                _645 = rsqrt(dot(float3(_641, _642, _643), float3(_641, _642, _643)));  // [sem: invLength]
                _646 = _645 * _641;
                _647 = _645 * _642;
                _648 = _645 * _643;
                _654 = sqrt(((_642 * _642) + (_641 * _641)) + (_643 * _643));
                _655 = _654 * _654;
                _656 = -0.0f - _646;
                _657 = -0.0f - _647;
                _658 = -0.0f - _648;
                _660 = dot(float3(_656, _657, _658), float3(_578, _568, _581)) * 2.0f;
                _662 = _589 - (_122 * 0.01f);
                _664 = _591 - (_123 * 0.01f);
                _666 = _593 - (_124 * 0.01f);
                if (_370) {
                  _676 = ((exp2(log2(_52 * 5.0f) * 2.2f) * (_369 + -0.01f)) + 0.01f);
                } else {
                  _676 = _369;
                }
                _677 = _676 * _646;
                _678 = _676 * _648;
                _679 = floor(_662);
                _680 = floor(_664);
                _681 = floor(_666);
                _682 = 1.0f / _677;
                _683 = 1.0f / _647;
                _684 = 1.0f / _678;
                _690 = (float)((int)((int)((int)(uint)((int)(_677 > 0.0f))) - (int)((int)(uint)((int)(_677 < 0.0f)))));
                _696 = (float)((int)((int)((int)(uint)((int)(_647 > 0.0f))) - (int)((int)(uint)((int)(_647 < 0.0f)))));
                _702 = (float)((int)((int)((int)(uint)((int)(_678 > 0.0f))) - (int)((int)(uint)((int)(_678 < 0.0f)))));
                if (!(_53 > 0.9999f)) {
                  _717 = _397;
                  _718 = _364;
                  _735 = 0;
                  _736 = ((((0.5f - _666) + _681) + (_702 * 0.5f)) * _684);
                  _737 = (_683 * (((0.5f - _664) + (_696 * 0.5f)) + _680));
                  _738 = ((((0.5f - _662) + _679) + (_690 * 0.5f)) * _682);
                  _739 = _681;
                  _740 = _680;
                  _741 = _679;
                  while(true) {
                    _742 = _662 - _741;
                    _743 = _666 - _739;
                    bool __branch_chain_734;
                    if (!(dot(float2(_742, _743), float2(_742, _743)) > (_718 * _718))) {
                      __branch_chain_734 = true;
                    } else {
                      _749 = frac(_741 * 0.1031f);
                      _751 = frac(_740 * 0.1031f);
                      _753 = frac(_739 * 0.1031f);
                      _757 = dot(float3(_749, _751, _753), float3((_751 + 19.19f), (_753 + 19.19f), (_749 + 19.19f)));
                      _763 = frac(((_751 + _749) + (_757 * 2.0f)) * (_757 + _753));
                      if (!(_763 > 0.9f)) {
                        __branch_chain_734 = true;
                      } else {
                        _769 = (_763 + _739) + _time.x;
                        _771 = (_769 * 2.0f) + _740;
                        _774 = min(max((_763 * 0.5f), 0.1f), _717);
                        _776 = (_662 + -0.5f) - _741;
                        _778 = (_664 + -0.5f) - _740;
                        _780 = (_666 + -0.5f) - _739;
                        _781 = cos(_769);
                        _782 = sin(_769);
                        _784 = mad(_782, _778, (_781 * _780));
                        _786 = mad(_782, _647, (_781 * _678));
                        _787 = cos(_771);
                        _788 = sin(_771);
                        _791 = 1.0f / mad(_788, _786, (_787 * _677));
                        _795 = 1.0f / mad(_781, _647, (-0.0f - (_678 * _782)));
                        _799 = 1.0f / mad(_787, _786, (-0.0f - (_677 * _788)));
                        _802 = mad(_788, _784, (_787 * _776)) * _791;
                        _806 = mad(_781, _778, (-0.0f - (_780 * _782))) * _795;
                        _810 = mad(_787, _784, (-0.0f - (_776 * _788))) * _799;
                        _812 = abs(_791) * _774;
                        _814 = abs(_795) * _774;
                        _816 = abs(_799) * _774;
                        _824 = max(max(((-0.0f - _802) - _812), ((-0.0f - _806) - _814)), ((-0.0f - _810) - _816));
                        _829 = min(min((_812 - _802), (_814 - _806)), (_816 - _810));
                        _833 = select(((_824 > _829) || (_829 < 0.0f)), 0.0f, _824);
                        if (!(_833 > 0.0f)) {
                          __branch_chain_734 = true;
                        } else {
                          __branch_chain_734 = false;
                        }
                      }
                    }
                    if (__branch_chain_734) {
                      _841 = (select((_737 < _738), 0.0f, 1.0f) * _690) * select((_736 < _738), 0.0f, 1.0f);
                      _847 = (select((_736 < _737), 0.0f, 1.0f) * _696) * select((_738 < _737), 0.0f, 1.0f);
                      _853 = (select((_737 < _736), 0.0f, 1.0f) * _702) * select((_738 < _736), 0.0f, 1.0f);
                      _855 = (_841 * _682) + _738;
                      _857 = (_847 * _683) + _737;
                      _859 = (_853 * _684) + _736;
                      _860 = _841 + _741;
                      _861 = _847 + _740;
                      _862 = _853 + _739;
                      _863 = (int)(_735) + (int)(1);
                      if ((uint)_863 < (uint)64) {
                        _735 = _863;
                        _736 = _859;
                        _737 = _857;
                        _738 = _855;
                        _739 = _862;
                        _740 = _861;
                        _741 = _860;
                        continue;
                      } else {
                        _870 = 0;
                      }
                    } else {
                      _870 = ((int)(uint)((int)(_833 < _654)));
                    }
                    break;
                  }
                } else {
                  _870 = 0;
                }
                _872 = select((_870 != 0), 0.0f, 1.0f);
                _875 = WaveReadLaneFirst(_materialIndex);
                _883 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_875 < (uint)170000), _875, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._globalColor.x);
                _887 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_875 < (uint)170000), _875, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._globalColor.y);
                _891 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_875 < (uint)170000), _875, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._globalColor.z);
                _892 = dot(float3(_646, _647, _648), float3(_578, _568, _581));
                _897 = (1.0f / ((_655 * 0.05f) + 1.0f)) * max(_892, 0.05f);
                _900 = 1.0f / ((_655 * 0.1f) + 1.0f);
                _902 = max(_892, 0.01f) * _900;
                _903 = _902 * 0.07323897f;
                _918 = exp2(log2(max(dot(float3((_656 - (_660 * _578)), (_657 - (_660 * _568)), (_658 - (_660 * _581))), float3((-0.0f - _122), (-0.0f - _123), (-0.0f - _124))), 0.0f)) * 10.0f) * _900;
                _928 = (((_time.x * 50.0f) * exp2(log2(2.0f - _52) * 0.45454544f)) + _591) * 0.02f;
                _930 = frac(abs(_928));
                _937 = select(((select((_928 >= (-0.0f - _928)), _930, (-0.0f - _930)) * 50.0f) > 2.0f), 0.0f, 1.0f);
                _939 = (_585 * 0.1f) + 1.0f;
                _1121 = _585;
                _1122 = (((((_918 * 0.44798842f) + _620) + (select((_639 < 0.04045f), (_639 * 0.07739938f), exp2(log2((_639 + 0.055f) * 0.94786733f) * 2.4f)) * _640)) + ((_937 * 0.2f) / _939)) + (((select((_891 < 0.04045f), (_891 * 0.07739938f), exp2(log2((_891 + 0.055f) * 0.94786733f) * 2.4f)) * _897) + (_902 * 0.21404113f)) * _872));
                _1123 = (((((_918 * 0.21404113f) + _620) + (select((_635 < 0.04045f), (_635 * 0.07739938f), exp2(log2((_635 + 0.055f) * 0.94786733f) * 2.4f)) * _640)) + ((_937 * 0.1f) / _939)) + (((select((_887 < 0.04045f), (_887 * 0.07739938f), exp2(log2((_887 + 0.055f) * 0.94786733f) * 2.4f)) * _897) + _903) * _872));
                _1124 = (((((_918 * 0.13286835f) + _620) + (select((_631 < 0.04045f), (_631 * 0.07739938f), exp2(log2((_631 + 0.055f) * 0.94786733f) * 2.4f)) * _640)) + ((_937 * 0.05f) / _939)) + (((select((_883 < 0.04045f), (_883 * 0.07739938f), exp2(log2((_883 + 0.055f) * 0.94786733f) * 2.4f)) * _897) + _903) * _872));
                _1125 = _585;
              } else {
                _1028 = (select((_424 < _425), 0.0f, 1.0f) * _390) * select((_423 < _425), 0.0f, 1.0f);
                _1034 = (select((_423 < _424), 0.0f, 1.0f) * _157) * select((_425 < _424), 0.0f, 1.0f);
                _1040 = (select((_424 < _423), 0.0f, 1.0f) * _396) * select((_425 < _423), 0.0f, 1.0f);
                _1050 = (int)(_422) + (int)(1);
                if ((uint)_1050 < (uint)64) {
                  _1113 = _1050;
                  _1114 = ((_1040 * _384) + _423);
                  _1115 = ((_1034 * _144) + _424);
                  _1116 = ((_1028 * _383) + _425);
                  _1117 = (_1040 + _426);
                  _1118 = (_1034 + _427);
                  _1119 = (_1028 + _428);
                  while(true) {
                    _422 = _1113;
                    _423 = _1114;
                    _424 = _1115;
                    _425 = _1116;
                    _426 = _1117;
                    _427 = _1118;
                    _428 = _1119;
                    __loop_jump_target = 421;
                    break;
                    break;
                  }
                  if (__loop_jump_target == 421) {
                    __loop_jump_target = -1;
                    continue;
                  }
                  if (__loop_jump_target != -1) {
                    break;
                  }
                } else {
                  _1121 = 50.0f;
                  _1122 = 0.0f;
                  _1123 = 0.0f;
                  _1124 = 0.0f;
                  _1125 = -1.0f;
                }
              }
            } else {
              _1058 = (select((_424 < _425), 0.0f, 1.0f) * _390) * select((_423 < _425), 0.0f, 1.0f);
              _1064 = (select((_423 < _424), 0.0f, 1.0f) * _157) * select((_425 < _424), 0.0f, 1.0f);
              _1070 = (select((_424 < _423), 0.0f, 1.0f) * _396) * select((_425 < _423), 0.0f, 1.0f);
              _1080 = (int)(_422) + (int)(1);
              if ((uint)_1080 < (uint)64) {
                _1113 = _1080;
                _1114 = ((_1070 * _384) + _423);
                _1115 = ((_1064 * _144) + _424);
                _1116 = ((_1058 * _383) + _425);
                _1117 = (_1070 + _426);
                _1118 = (_1064 + _427);
                _1119 = (_1058 + _428);
                while(true) {
                  _422 = _1113;
                  _423 = _1114;
                  _424 = _1115;
                  _425 = _1116;
                  _426 = _1117;
                  _427 = _1118;
                  _428 = _1119;
                  __loop_jump_target = 421;
                  break;
                  break;
                }
                if (__loop_jump_target == 421) {
                  __loop_jump_target = -1;
                  continue;
                }
                if (__loop_jump_target != -1) {
                  break;
                }
              } else {
                _1121 = 50.0f;
                _1122 = 0.0f;
                _1123 = 0.0f;
                _1124 = 0.0f;
                _1125 = -1.0f;
              }
            }
          } else {
            _1088 = (select((_424 < _425), 0.0f, 1.0f) * _390) * select((_423 < _425), 0.0f, 1.0f);
            _1094 = (select((_423 < _424), 0.0f, 1.0f) * _157) * select((_425 < _424), 0.0f, 1.0f);
            _1100 = (select((_424 < _423), 0.0f, 1.0f) * _396) * select((_425 < _423), 0.0f, 1.0f);
            _1110 = (int)(_422) + (int)(1);
            if ((uint)_1110 < (uint)64) {
              _1113 = _1110;
              _1114 = ((_1100 * _384) + _423);
              _1115 = ((_1094 * _144) + _424);
              _1116 = ((_1088 * _383) + _425);
              _1117 = (_1100 + _426);
              _1118 = (_1094 + _427);
              _1119 = (_1088 + _428);
              while(true) {
                _422 = _1113;
                _423 = _1114;
                _424 = _1115;
                _425 = _1116;
                _426 = _1117;
                _427 = _1118;
                _428 = _1119;
                __loop_jump_target = 421;
                break;
                break;
              }
              if (__loop_jump_target == 421) {
                __loop_jump_target = -1;
                continue;
              }
              if (__loop_jump_target != -1) {
                break;
              }
            } else {
              _1121 = 50.0f;
              _1122 = 0.0f;
              _1123 = 0.0f;
              _1124 = 0.0f;
              _1125 = -1.0f;
            }
          }
          if (!_2) {
            _1113 = _422;
            _1114 = _423;
            _1115 = _424;
            _1116 = _425;
            _1117 = _426;
            _1118 = _427;
            _1119 = _428;
            while(true) {
              _422 = _1113;
              _423 = _1114;
              _424 = _1115;
              _425 = _1116;
              _426 = _1117;
              _427 = _1118;
              _428 = _1119;
              __loop_jump_target = 421;
              break;
              break;
            }
            if (__loop_jump_target == 421) {
              __loop_jump_target = -1;
              continue;
            }
            if (__loop_jump_target != -1) {
              break;
            }
          }
          _1128 = _1121;
          _1129 = _1122;
          _1130 = _1123;
          _1131 = _1124;
          _1132 = _1125;
          break;
        }
      } else {
        _1128 = 50.0f;
        _1129 = 0.0f;
        _1130 = 0.0f;
        _1131 = 0.0f;
        _1132 = -1.0f;
      }
    }
    _1135 = WaveReadLaneFirst(_materialIndex);
    _1143 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1135 < (uint)170000), _1135, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._fogColor.x);
    _1147 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1135 < (uint)170000), _1135, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._fogColor.y);
    _1151 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1135 < (uint)170000), _1135, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._fogColor.z);
    _1155 = exp2(log2(_1128 * 0.02f) * 6.0f);
    _1167 = (((select((_1143 < 0.04045f), (_1143 * 0.07739938f), exp2(log2((_1143 + 0.055f) * 0.94786733f) * 2.4f)) - _1131) * _1155) + _1131) * 1.2f;
    _1179 = (((select((_1147 < 0.04045f), (_1147 * 0.07739938f), exp2(log2((_1147 + 0.055f) * 0.94786733f) * 2.4f)) - _1130) * _1155) + _1130) * 1.2f;
    _1191 = (((select((_1151 < 0.04045f), (_1151 * 0.07739938f), exp2(log2((_1151 + 0.055f) * 0.94786733f) * 2.4f)) - _1129) * _1155) + _1129) * 1.2f;
    _1194 = WaveReadLaneFirst(_materialIndex);
    _1202 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1194 < (uint)170000), _1194, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._centerGlowColor.x);
    _1206 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1194 < (uint)170000), _1194, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._centerGlowColor.y);
    _1210 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1194 < (uint)170000), _1194, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._centerGlowColor.z);
    _1213 = WaveReadLaneFirst(_materialIndex);
    _1221 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1213 < (uint)170000), _1213, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._centerGlowRadius);
    _1228 = ((sin(_time.x * 5.0f) * 0.050000012f) + 0.95f) * _1221;
    _1231 = _viewPos.x - _131;
    _1233 = _viewPos.y - _133;
    _1235 = _viewPos.z - _135;
    _1236 = dot(float3(_1231, _1233, _1235), float3(_122, _123, _124));
    _1241 = (_1236 * _1236) - (dot(float3(_1231, _1233, _1235), float3(_1231, _1233, _1235)) - (_1228 * _1228));
    if (!(_1241 < 0.0f)) {
      _1246 = (-0.0f - _1236) - sqrt(_1241);
      if ((_1246 > 0.0f) && (_1246 < _1128)) {
        _1251 = 50.0f / _1228;
        _1252 = _1231 / _1228;
        _1253 = _1233 / _1228;
        _1254 = _1235 / _1228;
        _1255 = dot(float3(_122, _123, _124), float3(_1252, _1253, _1254));
        _1257 = dot(float3(_1252, _1253, _1254), float3(_1252, _1253, _1254)) + -1.0f;
        _1259 = (_1255 * _1255) - _1257;
        if (!(_1259 < 0.0f)) {
          _1262 = sqrt(_1259);
          _1264 = (-0.0f - _1255) - _1262;
          _1265 = _1262 - _1255;
          if (!((_1265 < 0.0f) || (_1264 > _1251))) {
            _1270 = max(_1264, 0.0f);
            _1271 = min(_1265, _1251);
            _1284 = ((((-0.0f - _1257) - (_1255 * _1271)) - ((_1271 * _1271) * 0.33333334f)) * _1271) + (((((_1270 * 0.33333334f) + _1255) * _1270) + _1257) * _1270);
            _1285 = _1284 * 0.75f;
            if (_1285 > 0.0f) {
              _1288 = _1285 * _1285;
              _1290 = (_1288 * _1288) * _1285;
              _1291 = _1290 * _1290;
              _1293 = (_1291 * _1291) * 5.0f;
              _1294 = _1285 * _1284;
              _1295 = _1294 * 0.22500001f;
              _1331 = (((_1294 * 0.075f) + _1167) + (select((_1202 < 0.04045f), (_1202 * 0.07739938f), exp2(log2((_1202 + 0.055f) * 0.94786733f) * 2.4f)) * _1293));
              _1332 = ((_1295 + _1179) + (select((_1206 < 0.04045f), (_1206 * 0.07739938f), exp2(log2((_1206 + 0.055f) * 0.94786733f) * 2.4f)) * _1293));
              _1333 = ((_1295 + _1191) + (select((_1210 < 0.04045f), (_1210 * 0.07739938f), exp2(log2((_1210 + 0.055f) * 0.94786733f) * 2.4f)) * _1293));
            } else {
              _1331 = _1167;
              _1332 = _1179;
              _1333 = _1191;
            }
          } else {
            _1331 = _1167;
            _1332 = _1179;
            _1333 = _1191;
          }
        } else {
          _1331 = _1167;
          _1332 = _1179;
          _1333 = _1191;
        }
      } else {
        _1331 = _1167;
        _1332 = _1179;
        _1333 = _1191;
      }
    } else {
      _1331 = _1167;
      _1332 = _1179;
      _1333 = _1191;
    }
    _1336 = WaveReadLaneFirst(_materialIndex);
    _1344 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1336 < (uint)170000), _1336, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._tunnelTotal);
    _1347 = WaveReadLaneFirst(_materialIndex);
    _1355 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1347 < (uint)170000), _1347, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._particleEmissionWidth);
    _1358 = WaveReadLaneFirst(_materialIndex);
    _1366 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1358 < (uint)170000), _1358, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._particleIntensity);
    _1372 = (_srcTargetSizeAndInv.x * (TEXCOORD.x + -0.5f)) / _srcTargetSizeAndInv.y;
    _1375 = (_srcTargetSizeAndInv.y * (TEXCOORD.y + -0.5f)) / _srcTargetSizeAndInv.y;
    _1376 = _1372 * 1.5f;
    _1377 = _1375 * 1.5f;
    _1381 = sqrt((_1377 * _1377) + (_1376 * _1376));
    _1393 = frac((sin((_1375 * 0.15f) + (_1372 * 25.5f)) * 10000.0f) * (abs(sin((_1375 * 19.5f) + _1376)) + 0.1f));
    _1396 = _time.x * 0.5f;
    _1398 = _1396 + (_1372 * 22.5f);
    _1400 = _1396 + (_1375 * 22.5f);
    _1401 = floor(_1398);
    _1402 = floor(_1400);
    _1403 = frac(_1398);
    _1404 = frac(_1400);
    _1405 = _1401 * 17.0f;
    _1406 = _1402 * 0.1f;
    _1407 = _1402 * 13.0f;
    _1416 = frac((sin(_1406 + _1405) * 10000.0f) * (abs(sin(_1407 + _1401)) + 0.1f));
    _1417 = _1401 + 1.0f;
    _1418 = _1417 * 17.0f;
    _1427 = frac((sin(_1418 + _1406) * 10000.0f) * (abs(sin(_1407 + _1417)) + 0.1f));
    _1428 = _1402 + 1.0f;
    _1429 = _1428 * 0.1f;
    _1430 = _1428 * 13.0f;
    _1434 = (_1403 * _1403) * (3.0f - (_1403 * 2.0f));
    // [sem: blended]
    _1467 = (lerp(_1416, _1427, _1434)) + (((_1404 * _1404) * (3.0f - (_1404 * 2.0f))) * (((frac((sin(_1429 + _1405) * 10000.0f) * (abs(sin(_1430 + _1401)) + 0.1f)) - _1416) * (1.0f - _1434)) + ((frac((sin(_1429 + _1418) * 10000.0f) * (abs(sin(_1430 + _1417)) + 0.1f)) - _1427) * _1434)));
    _1470 = WaveReadLaneFirst(_materialIndex);
    _1478 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1470 < (uint)170000), _1470, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._anamorphicWidth);
    _1480 = (_1478 * 0.9f) + 0.11f;
    _1484 = saturate((_1381 - _1480) / (-0.0f - _1480));  // [sem: expr_sat]
    _1488 = saturate((cos(_1376) * 0.4f) + -1.0f);  // [sem: expr_sat]
    _1492 = (_1488 * _1488) * (3.0f - (_1488 * 2.0f));
    _1500 = saturate(((abs(_1492 + _1377) + -0.04f) + abs(_1377 - _1492)) * -25.0f);  // [sem: expr_sat]
    _1501 = _1500 * _1484;
    _1508 = ((_1501 * _1501) * (3.0f - (_1484 * 2.0f))) * (3.0f - (_1500 * 2.0f));
    _1510 = (_1478 * 0.5f) + 0.12f;
    _1511 = _1376 + -0.08f;
    _1512 = _1377 + 0.005f;
    _1520 = saturate((sqrt((_1512 * _1512) + (_1511 * _1511)) - _1510) / (-0.0f - _1510));  // [sem: expr_sat]
    _1524 = saturate((cos(_1511) * 0.4f) + -1.0f);  // [sem: expr_sat]
    _1528 = (_1524 * _1524) * (3.0f - (_1524 * 2.0f));
    _1536 = saturate(((abs(_1528 + _1512) + -0.018f) + abs(_1512 - _1528)) * -55.555557f);  // [sem: expr_sat]
    _1537 = _1536 * _1520;
    _1544 = ((_1537 * _1537) * (3.0f - (_1520 * 2.0f))) * (3.0f - (_1536 * 2.0f));
    _1546 = (_1478 * 0.7f) + 0.13f;
    _1547 = _1376 + 0.09f;
    _1548 = _1377 + -0.005f;
    _1556 = saturate((sqrt((_1548 * _1548) + (_1547 * _1547)) - _1546) / (-0.0f - _1546));  // [sem: expr_sat]
    _1560 = saturate((cos(_1547) * 0.4f) + -1.0f);  // [sem: expr_sat]
    _1564 = (_1560 * _1560) * (3.0f - (_1560 * 2.0f));
    _1572 = saturate(((abs(_1564 + _1548) + -0.0143f) + abs(_1548 - _1564)) * -69.93007f);  // [sem: expr_sat]
    _1573 = _1572 * _1556;
    _1574 = _1372 * 2.25f;
    _1575 = _1375 * 2.25f;
    _1577 = (_1467 * 0.08f) + 0.15f;
    _1582 = saturate((abs(_1575) - _1577) / (-0.0f - _1577));  // [sem: expr_sat]
    _1586 = sqrt((_1575 * _1575) + (_1574 * _1574));
    _1589 = saturate((_1586 + -0.8f) * -0.7692308f);  // [sem: expr_sat]
    _1603 = max(0.9f, frac(frac((sin(_time.x * 8.55f) * 10000.0f) * (abs(sin(_time.x * 7.0f)) + 0.1f)))) * 0.08f;
    _1608 = saturate(((_1586 + -0.1f) - _1603) / (-0.120000005f - _1603));  // [sem: expr_sat]
    _1615 = saturate(((abs(_1375 * 1.6875f) * abs(_1574)) + -0.07f) * -5.882353f);  // [sem: expr_sat]
    _1617 = (_1589 * _1582) * _1615;
    _1627 = ((_1617 * _1617) * ((3.0f - (_1589 * 2.0f)) * (15.0f - (_1582 * 10.0f)))) * (3.0f - (_1615 * 2.0f));
    _1628 = _1467 * -0.015f;
    _1630 = _1628 + (_1372 * 2.85f);
    _1632 = _1628 + (_1375 * 2.85f);
    _1636 = sqrt((_1630 * _1630) + (_1632 * _1632));
    _1639 = saturate((_1636 + -1.0f) * -1.4285715f);  // [sem: expr_sat]
    _1647 = saturate(((((_1639 * _1639) * _1636) * (3.0f - (_1639 * 2.0f))) + -0.1f) * 2.5f);  // [sem: expr_sat]
    _1649 = atan(_1377 / _1376);
    _1650 = (_1376 < 0.0f);
    _1651 = (_1376 == 0.0f);
    _1652 = (_1377 >= 0.0f);
    _1653 = (_1377 < 0.0f);
    _1656 = atan(_1377 / (-0.0f - _1376));
    _1657 = (_1376 > -0.0f);
    _1658 = (_1376 == -0.0f);
    _1661 = saturate(-0.0f - (_1381 + -1.0f));  // [sem: expr_sat]
    _1664 = WaveReadLaneFirst(_materialIndex);
    _1672 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1664 < (uint)170000), _1664, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._blubIntensity);
    _1675 = WaveReadLaneFirst(_materialIndex);
    _1683 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1675 < (uint)170000), _1675, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._middleHaloIntensity);
    _1734 = (((lerp(_1393, 1.0f, 0.97f)) * 0.9f) * _1683) * exp2(log2(((((_1661 * _1661) * (3.0f - (_1661 * 2.0f))) - ((((_1647 * _1647) * 0.4f) * (3.0f - (_1647 * 2.0f))) * _1672)) * 0.5f) * (abs(sin(select((_1651 && _1652), 1.2995574f, select((_1651 && _1653), -0.8995574f, ((select((_1650 && _1653), (_1649 + -3.1415927f), select((_1650 && _1652), (_1649 + 3.1415927f), _1649)) * 0.7f) + 0.2f))))) + abs(sin(select((_1658 && _1652), 1.3566371f, select((_1658 && _1653), -1.1566371f, ((select((_1657 && _1653), (_1656 + -3.1415927f), select((_1657 && _1652), (_1656 + 3.1415927f), _1656)) * 0.8f) + 0.1f))))))) * 2.5f);
    _1737 = WaveReadLaneFirst(_materialIndex);
    _1745 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1737 < (uint)170000), _1737, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._largeHalo);
    _1748 = WaveReadLaneFirst(_materialIndex);
    _1756 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1748 < (uint)170000), _1748, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._largeHaloIntensity);
    _1759 = WaveReadLaneFirst(_materialIndex);
    _1767 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1759 < (uint)170000), _1759, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._centerpoint);
    _1770 = WaveReadLaneFirst(_materialIndex);
    _1778 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1770 < (uint)170000), _1770, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._streakGlowIntensity);
    _1780 = (_1627 * _1627) * _1778;
    _1785 = ((_1608 * _1608) * (3.0f - (_1608 * 2.0f))) * _1767;
    _1789 = exp2(log2(_1785 * 1.2f) * 5.0f);
    _1793 = exp2(log2(_1785 * 1.1f) * 24.0f);
    _1795 = _1789 + (_1785 * 0.2f);
    _1806 = (((_1573 * _1573) * (3.0f - (_1556 * 2.0f))) * (3.0f - (_1572 * 2.0f))) + _1544;
    _1809 = WaveReadLaneFirst(_materialIndex);
    _1817 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1809 < (uint)170000), _1809, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._anamorphicIntensity);
    _1821 = 1.0f / max(0.001f, _exposure0.x);
    // [sem: _3__36__0__0__g_CustomRenderPassValue_gather]
    _1831 = __3__36__0__0__g_CustomRenderPassValue.GatherRed(__0__4__0__0__g_staticPointClamp, float2((TEXCOORD.x - (_customRenderPassSizeInvSize.z * 0.5f)), (TEXCOORD.y - (_customRenderPassSizeInvSize.w * 0.5f))));
    _1836 = _1831.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_gather_derived]
    _1837 = _1831.y & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_gather_derived]
    _1838 = _1831.z & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_gather_derived]
    _1839 = _1831.w & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_gather_derived]
    if ((_1836 == _renderPassSelfPlayer) || (_1836 == _renderPassTest)) {
      if ((_1837 == _renderPassSelfPlayer) || (_1837 == _renderPassTest)) {
        if ((_1838 == _renderPassSelfPlayer) || (_1838 == _renderPassTest)) {
          if (!(_1839 == _renderPassSelfPlayer)) {
            _1867 = ((int)(uint)((int)(_1839 == _renderPassTest)));
          } else {
            _1867 = 1;
          }
        } else {
          _1867 = 0;
        }
      } else {
        _1867 = 0;
      }
    } else {
      _1867 = 0;
    }
    _1869 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _1875 = (pow(_1869.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _1878 = (pow(_1869.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _1881 = (pow(_1869.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _1885 = 10000.0f - (saturate(_367 * 7.0f) * 9950.0f);
    _1894 = exp2(log2(max(0.0f, (_1875 + -0.8359375f)) / (18.851562f - (_1875 * 18.6875f))) * 6.277395f) * _1885;
    _1903 = exp2(log2(max(0.0f, (_1878 + -0.8359375f)) / (18.851562f - (_1878 * 18.6875f))) * 6.277395f) * _1885;
    _1912 = exp2(log2(max(0.0f, (_1881 + -0.8359375f)) / (18.851562f - (_1881 * 18.6875f))) * 6.277395f) * _1885;
    _1913 = (_1867 == 0);
    if (_1913) {
      _1917 = saturate(_1132);  // [sem: _1132_sat]
    } else {
      _1917 = 0.0f;  // [sem: _1132_sat]
    }
    _1928 = ((_1780 * 0.049657132f) + (_1508 * 0.0100228265f)) + _1793;
    _1941 = ((max(0.0f, ((((saturate(_1331) * _1344) + ((_331 * 0.5f) * _342)) + (exp2(log2(((((((_1734 * 0.16689524f) + 0.033104755f) * _1734) + (_1544 * 0.033104755f)) + (_1795 * 0.07323897f)) + _1928) * 2.0f)) * _1817)) * _1821)) - _1894) * _1917) + _1894;
    _1964 = ((max(0.0f, ((((saturate(_1332) * _1344) + ((_330 * 0.7f) * _342)) + (exp2(log2((((((0.07323897f - (_1734 * 0.023238968f)) * _1734) + (_1806 * 0.033104755f)) + (_1795 * 0.21404113f)) + _1928) * 2.0f)) * _1817)) * _1821)) - _1903) * _1917) + _1903;
    _1993 = ((max(0.0f, ((((saturate(_1333) * _1344) + ((_329 * 0.9f) * _342)) + (exp2(log2((((((((_1806 * 0.07323897f) + (_1508 * 0.033104755f)) + ((0.13286835f - (_1734 * 0.08286835f)) * _1734)) + (_1785 * 0.06370936f)) + (_1780 * 0.10985845f)) + (_1789 * 0.6038274f)) + _1793) * 2.0f)) * _1817)) * _1821)) - _1912) * _1917) + _1912;
    if (_1913) {
      _1997 = saturate(_1132);  // [sem: _1132_sat]
    } else {
      _1997 = 1.0f;  // [sem: _1132_sat]
    }
    _1998 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _2011 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1998, 0)))).x) & 127)))) + 0.5f);
    } else {
      _2011 = _1997;
    }
    _2014 = (_localToneMappingParams.w > 0.0f);
    if (_2014) {
      // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
      // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
      float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1941, _1964, _1993));
      _2260 = _rndx_tonemapped_color.x;
      _2267 = _rndx_tonemapped_color.y;
      _2274 = _rndx_tonemapped_color.z;
      // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
      if (_etcParams.z == 0.0f) {
        _2280 = 1.0f - abs(_etcParams.w);
        _2281 = saturate(_etcParams.w);  // [sem: expr_sat]
        _2283 = (_2280 * _2260) + _2281;
        _2285 = (_2280 * _2267) + _2281;
        _2287 = (_2280 * _2274) + _2281;
        if (_colorGradingParams.w > 0.0f) {
          _2292 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _2309 = (((max(0.0f, (1.0f - _2283)) - _2283) * _2292) + _2283);
          _2310 = (((max(0.0f, (1.0f - _2285)) - _2285) * _2292) + _2285);
          _2311 = (((max(0.0f, (1.0f - _2287)) - _2287) * _2292) + _2287);
        } else {
          _2309 = _2283;
          _2310 = _2285;
          _2311 = _2287;
        }
        _2313 = _userImageAdjust.y + 1.0f;
        _2315 = _userImageAdjust.x + 0.5f;
        _2318 = ((_2309 + -0.5f) * _2313) + _2315;
        _2321 = ((_2310 + -0.5f) * _2313) + _2315;
        _2324 = ((_2311 + -0.5f) * _2313) + _2315;
        _2330 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _2365 = exp2(log2(saturate(mad(_colorBlind0.z, _2324, mad(_colorBlind0.y, _2321, (_colorBlind0.x * _2318))))) * _2330);
        _2366 = exp2(log2(saturate(mad(_colorBlind1.z, _2324, mad(_colorBlind1.y, _2321, (_colorBlind1.x * _2318))))) * _2330);
        _2367 = exp2(log2(saturate(mad(_colorBlind2.z, _2324, mad(_colorBlind2.y, _2321, (_colorBlind2.x * _2318))))) * _2330);
      } else {
        _2365 = _2260;
        _2366 = _2267;
        _2367 = _2274;
      }
    } else {
      _2365 = _1941;
      _2366 = _1964;
      _2367 = _1993;
    }
    if (_etcParams.y > 1.0f) {
      _2370 = abs(_77);
      _2373 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      _2379 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_2370, _2373), float2(_2370, _2373))));  // [sem: expr_sat]
      _2384 = (_2379 * _2365);
      _2385 = (_2379 * _2366);
      _2386 = (_2379 * _2367);
    } else {
      _2384 = _2365;
      _2385 = _2366;
      _2386 = _2367;
    }
    if (_2014 && (_etcParams.z > 0.0f)) {
      _2416 = select((_2384 <= 0.0031308f), (_2384 * 12.92f), (((pow(_2384, 0.41666666f)) * 1.055f) + -0.055f));
      _2417 = select((_2385 <= 0.0031308f), (_2385 * 12.92f), (((pow(_2385, 0.41666666f)) * 1.055f) + -0.055f));
      _2418 = select((_2386 <= 0.0031308f), (_2386 * 12.92f), (((pow(_2386, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _2416 = _2384;
      _2417 = _2385;
      _2418 = _2386;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _2421 = (float)((uint)((uint)(_1998)));
      if (!(_2421 < _viewDir.w)) {
        if (!(!(_2421 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
          _2432 = 0.0f;
          _2433 = 0.0f;
          _2434 = 0.0f;
        } else {
          _2432 = _2416;
          _2433 = _2417;
          _2434 = _2418;
        }
      } else {
        _2432 = 0.0f;
        _2433 = 0.0f;
        _2434 = 0.0f;
      }
    } else {
      _2432 = _2416;
      _2433 = _2417;
      _2434 = _2418;
    }
    _2438 = exp2(log2(_2432 * 0.0001f) * 0.15930176f);
    _2442 = exp2(log2(_2433 * 0.0001f) * 0.15930176f);
    _2446 = exp2(log2(_2434 * 0.0001f) * 0.15930176f);
    if (!_2) {
      _2448 = _180;
      _2449 = _181;
      _2450 = _182;
      _2451 = _183;
      _2452 = _184;
      _2453 = _185;
      _2454 = _186;
      _2455 = _187;
      _2456 = _188;
      _2457 = _189;
      _2458 = _190;
      _2459 = _191;
      _2460 = _192;
      _2461 = _193;
      _180 = _2448;
      _181 = _2449;
      _182 = _2450;
      _183 = _2451;
      _184 = _2452;
      _185 = _2453;
      _186 = _2454;
      _187 = _2455;
      _188 = _2456;
      _189 = _2457;
      _190 = _2458;
      _191 = _2459;
      _192 = _2460;
      _193 = _2461;
      continue;
    }
    SV_Target.x = exp2(log2((1.0f / ((_2438 * 18.6875f) + 1.0f)) * ((_2438 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.y = exp2(log2((1.0f / ((_2442 * 18.6875f) + 1.0f)) * ((_2442 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.z = exp2(log2((1.0f / ((_2446 * 18.6875f) + 1.0f)) * ((_2446 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.w = _2011;
    break;
  }
  return SV_Target;
}
