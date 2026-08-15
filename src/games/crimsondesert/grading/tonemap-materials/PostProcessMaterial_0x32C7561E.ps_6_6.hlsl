struct PostProcessFocusStruct {
  float _focusRatio;
  float _focusSceneDepthFade;
  float _focusBackgroundSaturation;
  float _focus3DBlend;
  float _focusCharacterMaterialMask;
  float _focusColorBrightness;
  uint _focusColor;
  float _focusColorRemap;
  float _maskRatio;
  float _maskNoiseIntensity;
  float _maskBlurThickness;
  float _maskBlurPower;
  uint _maskNoiseTexture;
  float _playerFocusRadius;
  float _playerFocusCenterRadius;
  float _playerFocusPower;
  float3 _playerFocusPositionOffset;
  float _targetFocusRadius;
  float _targetFocusCenterRadius;
  float _targetFocusPower;
  float3 _targetFocusPositionOffset;
  float _connectPlayerTargetDistance;
  float _connectPlayerTargetPower;
  float _worldFocusRadius;
  float _worldFocusCenterRadius;
  float _worldFocusPower;
  float3 _worldFocusPosition;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

struct BindlessParameters_PostProcessFocus {
  PostProcessFocusStruct BindlessParameters_PostProcessFocus;
};

typedef BindlessParameters_PostProcessFocus BindlessParameters_PostProcessFocus_t;
ConstantBuffer<BindlessParameters_PostProcessFocus_t> BindlessParameters_PostProcessFocus[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _28;
  float4 _31;
  int _35;
  float _43;
  float _373;
  float _374;
  float _375;
  float _376;
  float _377;
  float _378;
  float _379;
  float _561;
  float _567;
  float _568;
  float _569;
  float _570;
  float _571;
  float _572;
  float _573;
  float _748;
  float _754;
  float _755;
  float _980;
  float _997;
  float _998;
  float _1103;
  float _1171;
  float _1172;
  float _1173;
  float _1210;
  float _1211;
  float _1212;
  float _1226;
  float _1431;
  float _1432;
  float _1433;
  float _1526;
  float _1527;
  float _1528;
  float _1582;
  float _1583;
  float _1584;
  float _1603;
  float _1604;
  float _1605;
  float _1635;
  float _1636;
  float _1637;
  float _1651;
  float _1652;
  float _1653;
  float _48;
  float _51;
  float _53;
  float _54;
  float _90;
  float _91;
  float _92;
  float _93;
  int _94;
  int _102;
  float _105;
  float _108;
  float _110;
  float _140;
  int _144;
  float _152;
  float _153;
  float _154;
  float _155;
  int _156;
  float _164;
  int _165;
  float _173;
  int _174;
  float _182;
  int _183;
  float _191;
  int _194;
  float _202;
  int _207;
  float _217;
  float _218;
  float _219;
  float _220;
  float _221;
  float _222;
  int _223;
  float _231;
  float _240;
  float _241;
  float _242;
  float _243;
  float _244;
  float _245;
  float _246;
  float _256;
  float _286;
  float _287;
  float _291;
  float _301;
  float _302;
  float _303;
  float _315;
  float _321;
  float _322;
  float _323;
  float _331;
  float _332;
  float _333;
  float _345;
  float _351;
  float _352;
  float _359;
  float _360;
  float _368;
  int _382;
  float _390;
  int _395;
  float _405;
  float _406;
  float _407;
  float _408;
  float _409;
  float _410;
  int _411;
  float _419;
  float _428;
  float _429;
  float _430;
  float _431;
  float _432;
  float _433;
  float _434;
  float _444;
  float _474;
  float _475;
  float _479;
  float _489;
  float _490;
  float _491;
  float _503;
  float _509;
  float _510;
  float _511;
  float _519;
  float _520;
  float _521;
  float _533;
  float _539;
  float _540;
  float _547;
  float _548;
  float _556;
  int _576;
  float _584;
  int _585;
  float _595;
  float _596;
  float _597;
  int _598;
  float _606;
  float _615;
  float _616;
  float _617;
  float _619;
  float _620;
  float _621;
  float _631;
  float _661;
  float _662;
  float _666;
  float _676;
  float _677;
  float _678;
  float _690;
  float _696;
  float _697;
  float _698;
  float _706;
  float _707;
  float _708;
  float _720;
  float _726;
  float _727;
  float _734;
  float _735;
  float _743;
  int _756;
  float _764;
  int _771;
  float _779;
  float _780;
  float _781;
  float _782;
  float _783;
  float _784;
  float _785;
  float _786;
  float _787;
  float _791;
  float _798;
  float _799;
  float _800;
  float _809;
  float _816;
  float _817;
  float _818;
  float _846;
  float _847;
  float _852;
  float _862;
  float _863;
  float _864;
  float _876;
  float _882;
  float _883;
  float _884;
  float _888;
  float _889;
  float _890;
  float _891;
  float _903;
  float _904;
  float _907;
  float _911;
  float _912;
  float _913;
  float _925;
  float _931;
  float _932;
  float _952;
  float _953;
  float _954;
  float _955;
  float _956;
  float _960;
  float _967;
  float _968;
  float _975;
  float _981;
  float _982;
  float _983;
  float _990;
  float4 _1001;
  int _1006;
  float _1014;
  bool _1058;
  int _1066;
  float _1074;
  float _1077;
  int _1078;
  float _1086;
  int _1090;
  float _1098;
  float _1116;
  int _1122;
  float _1130;
  int _1135;
  float _1143;
  float _1145;
  float _1157;
  int _1174;
  float _1182;
  float _1186;
  float _1188;
  float _1189;
  float _1196;
  float _1197;
  float _1198;
  float _1199;
  uint _1213;
  bool _1229;
  float _1235;
  float _1284;
  float _1285;
  float _1286;
  float _1288;
  float _1295;
  float _1296;
  float _1297;
  float _1316;
  float _1317;
  float _1318;
  float _1319;
  float _1320;
  float _1321;
  float _1322;
  float _1323;
  float _1324;
  float _1370;
  float _1371;
  float _1372;
  float _1373;
  float _1374;
  float _1375;
  float _1376;
  float _1393;
  float _1394;
  float _1395;
  float _1396;
  float _1402;
  float _1405;
  float _1412;
  float _1413;
  float _1414;
  float _1443;
  float _1468;
  float _1469;
  float _1470;
  float _1489;
  float _1490;
  float _1491;
  float _1497;
  float _1501;
  float _1502;
  float _1503;
  float _1504;
  float _1509;
  float _1534;
  float _1538;
  float _1539;
  float _1540;
  float _1541;
  float _1571;
  float _1593;
  float _1594;
  float _1598;
  float _1642;
  _28 = _screenSizeAndInvSize.x / _screenSizeAndInvSize.y;
  _31 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _35 = WaveReadLaneFirst(_materialIndex);
  _43 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_35 < (uint)170000), _35, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusRatio);
  if (!(!(_43 >= 0.001f))) {
    _48 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
    _51 = (TEXCOORD.x * 2.0f) + -1.0f;
    _53 = 1.0f - (TEXCOORD.y * 2.0f);
    _54 = max(1e-07f, _48.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
    _90 = mad((_invViewProj[3].z), _54, mad((_invViewProj[3].y), _53, ((_invViewProj[3].x) * _51))) + (_invViewProj[3].w);
    _91 = (mad((_invViewProj[0].z), _54, mad((_invViewProj[0].y), _53, ((_invViewProj[0].x) * _51))) + (_invViewProj[0].w)) / _90;
    _92 = (mad((_invViewProj[1].z), _54, mad((_invViewProj[1].y), _53, ((_invViewProj[1].x) * _51))) + (_invViewProj[1].w)) / _90;
    _93 = (mad((_invViewProj[2].z), _54, mad((_invViewProj[2].y), _53, ((_invViewProj[2].x) * _51))) + (_invViewProj[2].w)) / _90;
    _94 = WaveReadLaneFirst(_materialIndex);
    _102 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_94 < (uint)170000), _94, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusColor);
    _105 = (float)((uint)((uint)(((uint)((uint)(_102)) >> 16) & 255)));
    _108 = (float)((uint)((uint)(((uint)((uint)(_102)) >> 8) & 255)));
    _110 = (float)((uint)((uint)(_102 & 255)));
    _140 = max(0.001f, _exposure0.x);
    _144 = WaveReadLaneFirst(_materialIndex);
    _152 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_144 < (uint)170000), _144, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusColorBrightness);
    _153 = _152 * (select(((_105 * 0.003921569f) < 0.04045f), (_105 * 0.000303527f), exp2(log2((_105 * 0.003717127f) + 0.052132703f) * 2.4f)) / _140);
    _154 = _152 * (select(((_108 * 0.003921569f) < 0.04045f), (_108 * 0.000303527f), exp2(log2((_108 * 0.003717127f) + 0.052132703f) * 2.4f)) / _140);
    _155 = _152 * (select(((_110 * 0.003921569f) < 0.04045f), (_110 * 0.000303527f), exp2(log2((_110 * 0.003717127f) + 0.052132703f) * 2.4f)) / _140);
    _156 = WaveReadLaneFirst(_materialIndex);
    _164 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_156 < (uint)170000), _156, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusRadius);
    _165 = WaveReadLaneFirst(_materialIndex);
    _173 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_165 < (uint)170000), _165, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusRadius);
    _174 = WaveReadLaneFirst(_materialIndex);
    _182 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_174 < (uint)170000), _174, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusRadius);
    _183 = WaveReadLaneFirst(_materialIndex);
    _191 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_183 < (uint)170000), _183, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focus3DBlend);
    if (!(!(_164 >= 0.001f))) {
      _194 = WaveReadLaneFirst(_materialIndex);
      _202 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_194 < (uint)170000), _194, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusCenterRadius);
      _207 = WaveReadLaneFirst(_materialIndex);
      _217 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_207 < (uint)170000), _207, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusPositionOffset.x);
      _218 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_207 < (uint)170000), _207, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusPositionOffset.y);
      _219 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_207 < (uint)170000), _207, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusPositionOffset.z);
      _220 = _217 + _mainPosition.x;
      _221 = _218 + _mainPosition.y;
      _222 = _219 + _mainPosition.z;
      _223 = WaveReadLaneFirst(_materialIndex);
      _231 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_223 < (uint)170000), _223, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusPower);
      _240 = _220 - _viewPos.x;
      _241 = _221 - _viewPos.y;
      _242 = _222 - _viewPos.z;
      _243 = dot(float3(_240, _241, _242), float3(_viewDir.x, _viewDir.y, _viewDir.z));
      _244 = _91 - _220;
      _245 = _92 - _221;
      _246 = _93 - _222;
      _256 = saturate((sqrt(((_245 * _245) + (_244 * _244)) + (_246 * _246)) - _202) / max(0.001f, _164));  // [sem: expr_sat]
      if (_191 < 1.0f) {
        _286 = mad((_viewProjRelative[3].z), _242, mad((_viewProjRelative[3].y), _241, ((_viewProjRelative[3].x) * _240))) + (_viewProjRelative[3].w);
        _287 = (mad((_viewProjRelative[0].z), _242, mad((_viewProjRelative[0].y), _241, ((_viewProjRelative[0].x) * _240))) + (_viewProjRelative[0].w)) / _286;
        _291 = 0.5f - (((mad((_viewProjRelative[1].z), _242, mad((_viewProjRelative[1].y), _241, ((_viewProjRelative[1].x) * _240))) + (_viewProjRelative[1].w)) / _286) * 0.5f);
        _301 = ((_view[0].x) * _164) + _240;
        _302 = ((_view[0].y) * _164) + _241;
        _303 = ((_view[0].z) * _164) + _242;
        _315 = mad((_viewProjRelative[3].z), _303, mad((_viewProjRelative[3].y), _302, (_301 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _321 = (0.5f - (((mad((_viewProjRelative[1].z), _303, mad((_viewProjRelative[1].y), _302, (_301 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _315) * 0.5f)) - _291;
        _322 = _28 * 0.5f;
        _323 = _322 * (((mad((_viewProjRelative[0].z), _303, mad((_viewProjRelative[0].y), _302, (_301 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _315) - _287);
        _331 = ((_view[0].x) * _202) + _240;
        _332 = ((_view[0].y) * _202) + _241;
        _333 = ((_view[0].z) * _202) + _242;
        _345 = mad((_viewProjRelative[3].z), _333, mad((_viewProjRelative[3].y), _332, (_331 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _351 = (0.5f - (((mad((_viewProjRelative[1].z), _333, mad((_viewProjRelative[1].y), _332, (_331 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _345) * 0.5f)) - _291;
        _352 = _322 * (((mad((_viewProjRelative[0].z), _333, mad((_viewProjRelative[0].y), _332, (_331 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _345) - _287);
        _359 = TEXCOORD.y - _291;
        _360 = ((TEXCOORD.x + -0.5f) - (_287 * 0.5f)) * _28;
        // [sem: expr_sat]
        _368 = saturate((sqrt((_359 * _359) + (_360 * _360)) - sqrt((_351 * _351) + (_352 * _352))) / max(0.001f, sqrt((_321 * _321) + (_323 * _323))));
        _373 = (lerp(_368, _256, _191));  // [sem: blended]
        _374 = _202;
        _375 = _231;
        _376 = _220;
        _377 = _221;
        _378 = _222;
        _379 = _243;
      } else {
        _373 = _256;  // [sem: blended]
        _374 = _202;
        _375 = _231;
        _376 = _220;
        _377 = _221;
        _378 = _222;
        _379 = _243;
      }
    } else {
      _373 = 1.0f;  // [sem: blended]
      _374 = 0.0f;
      _375 = 1.0f;
      _376 = 0.0f;
      _377 = 0.0f;
      _378 = 0.0f;
      _379 = 1.0f;
    }
    if (!(!(_173 >= 0.001f))) {
      _382 = WaveReadLaneFirst(_materialIndex);
      _390 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_382 < (uint)170000), _382, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusCenterRadius);
      _395 = WaveReadLaneFirst(_materialIndex);
      _405 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_395 < (uint)170000), _395, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusPositionOffset.x);
      _406 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_395 < (uint)170000), _395, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusPositionOffset.y);
      _407 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_395 < (uint)170000), _395, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusPositionOffset.z);
      _408 = _405 + _targetFocusPosition.x;
      _409 = _406 + _targetFocusPosition.y;
      _410 = _407 + _targetFocusPosition.z;
      _411 = WaveReadLaneFirst(_materialIndex);
      _419 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_411 < (uint)170000), _411, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusPower);
      _428 = _408 - _viewPos.x;
      _429 = _409 - _viewPos.y;
      _430 = _410 - _viewPos.z;
      _431 = dot(float3(_428, _429, _430), float3(_viewDir.x, _viewDir.y, _viewDir.z));
      _432 = _91 - _408;
      _433 = _92 - _409;
      _434 = _93 - _410;
      _444 = saturate((sqrt(((_433 * _433) + (_432 * _432)) + (_434 * _434)) - _390) / max(0.001f, _173));  // [sem: expr_sat]
      if (_191 < 1.0f) {
        _474 = mad((_viewProjRelative[3].z), _430, mad((_viewProjRelative[3].y), _429, ((_viewProjRelative[3].x) * _428))) + (_viewProjRelative[3].w);
        _475 = (mad((_viewProjRelative[0].z), _430, mad((_viewProjRelative[0].y), _429, ((_viewProjRelative[0].x) * _428))) + (_viewProjRelative[0].w)) / _474;
        _479 = 0.5f - (((mad((_viewProjRelative[1].z), _430, mad((_viewProjRelative[1].y), _429, ((_viewProjRelative[1].x) * _428))) + (_viewProjRelative[1].w)) / _474) * 0.5f);
        _489 = ((_view[0].x) * _173) + _428;
        _490 = ((_view[0].y) * _173) + _429;
        _491 = ((_view[0].z) * _173) + _430;
        _503 = mad((_viewProjRelative[3].z), _491, mad((_viewProjRelative[3].y), _490, (_489 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _509 = (0.5f - (((mad((_viewProjRelative[1].z), _491, mad((_viewProjRelative[1].y), _490, (_489 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _503) * 0.5f)) - _479;
        _510 = _28 * 0.5f;
        _511 = _510 * (((mad((_viewProjRelative[0].z), _491, mad((_viewProjRelative[0].y), _490, (_489 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _503) - _475);
        _519 = ((_view[0].x) * _390) + _428;
        _520 = ((_view[0].y) * _390) + _429;
        _521 = ((_view[0].z) * _390) + _430;
        _533 = mad((_viewProjRelative[3].z), _521, mad((_viewProjRelative[3].y), _520, (_519 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _539 = (0.5f - (((mad((_viewProjRelative[1].z), _521, mad((_viewProjRelative[1].y), _520, (_519 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _533) * 0.5f)) - _479;
        _540 = _510 * (((mad((_viewProjRelative[0].z), _521, mad((_viewProjRelative[0].y), _520, (_519 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _533) - _475);
        _547 = TEXCOORD.y - _479;
        _548 = ((TEXCOORD.x + -0.5f) - (_475 * 0.5f)) * _28;
        // [sem: expr_sat]
        _556 = saturate((sqrt((_547 * _547) + (_548 * _548)) - sqrt((_539 * _539) + (_540 * _540))) / max(0.001f, sqrt((_509 * _509) + (_511 * _511))));
        _561 = (lerp(_556, _444, _191));  // [sem: blended]
      } else {
        _561 = _444;  // [sem: blended]
      }
      _567 = ((saturate(_431) * (_561 + -1.0f)) + 1.0f);
      _568 = _390;
      _569 = _419;
      _570 = _408;
      _571 = _409;
      _572 = _410;
      _573 = _431;
    } else {
      _567 = 1.0f;
      _568 = 0.0f;
      _569 = 1.0f;
      _570 = 0.0f;
      _571 = 0.0f;
      _572 = 0.0f;
      _573 = 1.0f;
    }
    if (!(!(_182 >= 0.001f))) {
      _576 = WaveReadLaneFirst(_materialIndex);
      _584 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_576 < (uint)170000), _576, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusCenterRadius);
      _585 = WaveReadLaneFirst(_materialIndex);
      _595 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_585 < (uint)170000), _585, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusPosition.x);
      _596 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_585 < (uint)170000), _585, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusPosition.y);
      _597 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_585 < (uint)170000), _585, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusPosition.z);
      _598 = WaveReadLaneFirst(_materialIndex);
      _606 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_598 < (uint)170000), _598, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusPower);
      _615 = _595 - _viewPos.x;
      _616 = _596 - _viewPos.y;
      _617 = _597 - _viewPos.z;
      _619 = _91 - _595;
      _620 = _92 - _596;
      _621 = _93 - _597;
      _631 = saturate((sqrt(((_620 * _620) + (_619 * _619)) + (_621 * _621)) - _584) / max(0.001f, _182));  // [sem: expr_sat]
      if (_191 < 1.0f) {
        _661 = mad((_viewProjRelative[3].z), _617, mad((_viewProjRelative[3].y), _616, ((_viewProjRelative[3].x) * _615))) + (_viewProjRelative[3].w);
        _662 = (mad((_viewProjRelative[0].z), _617, mad((_viewProjRelative[0].y), _616, ((_viewProjRelative[0].x) * _615))) + (_viewProjRelative[0].w)) / _661;
        _666 = 0.5f - (((mad((_viewProjRelative[1].z), _617, mad((_viewProjRelative[1].y), _616, ((_viewProjRelative[1].x) * _615))) + (_viewProjRelative[1].w)) / _661) * 0.5f);
        _676 = ((_view[0].x) * _182) + _615;
        _677 = ((_view[0].y) * _182) + _616;
        _678 = ((_view[0].z) * _182) + _617;
        _690 = mad((_viewProjRelative[3].z), _678, mad((_viewProjRelative[3].y), _677, (_676 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _696 = (0.5f - (((mad((_viewProjRelative[1].z), _678, mad((_viewProjRelative[1].y), _677, (_676 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _690) * 0.5f)) - _666;
        _697 = _28 * 0.5f;
        _698 = _697 * (((mad((_viewProjRelative[0].z), _678, mad((_viewProjRelative[0].y), _677, (_676 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _690) - _662);
        _706 = ((_view[0].x) * _584) + _615;
        _707 = ((_view[0].y) * _584) + _616;
        _708 = ((_view[0].z) * _584) + _617;
        _720 = mad((_viewProjRelative[3].z), _708, mad((_viewProjRelative[3].y), _707, (_706 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _726 = (0.5f - (((mad((_viewProjRelative[1].z), _708, mad((_viewProjRelative[1].y), _707, (_706 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _720) * 0.5f)) - _666;
        _727 = _697 * (((mad((_viewProjRelative[0].z), _708, mad((_viewProjRelative[0].y), _707, (_706 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _720) - _662);
        _734 = TEXCOORD.y - _666;
        _735 = ((TEXCOORD.x + -0.5f) - (_662 * 0.5f)) * _28;
        // [sem: expr_sat]
        _743 = saturate((sqrt((_734 * _734) + (_735 * _735)) - sqrt((_726 * _726) + (_727 * _727))) / max(0.001f, sqrt((_696 * _696) + (_698 * _698))));
        _748 = (lerp(_743, _631, _191));  // [sem: blended]
      } else {
        _748 = _631;  // [sem: blended]
      }
      _754 = ((saturate(dot(float3(_615, _616, _617), float3(_viewDir.x, _viewDir.y, _viewDir.z))) * (_748 + -1.0f)) + 1.0f);
      _755 = _606;
    } else {
      _754 = 1.0f;
      _755 = 1.0f;
    }
    _756 = WaveReadLaneFirst(_materialIndex);
    _764 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_756 < (uint)170000), _756, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._connectPlayerTargetDistance);
    if ((_173 >= 0.001f) && ((_164 >= 0.001f) && (_764 >= 0.01f))) {
      _771 = WaveReadLaneFirst(_materialIndex);
      _779 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_771 < (uint)170000), _771, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._connectPlayerTargetPower);
      _780 = _374 + _164;
      _781 = _568 + _173;
      _782 = _570 - _376;
      _783 = _571 - _377;
      _784 = _572 - _378;
      _785 = _91 - _376;
      _786 = _92 - _377;
      _787 = _93 - _378;
      // [sem: expr_sat]
      _791 = saturate(dot(float3(_782, _783, _784), float3(_785, _786, _787)) / dot(float3(_782, _783, _784), float3(_782, _783, _784)));
      _798 = _785 - (_791 * _782);
      _799 = _786 - (_791 * _783);
      _800 = _787 - (_791 * _784);
      // [sem: expr_sat]
      _809 = saturate(sqrt(((_798 * _798) + (_799 * _799)) + (_800 * _800)) / max(0.001f, ((_791 * (_781 - _780)) + _780)));
      if (_191 < 1.0f) {
        _816 = _376 - _viewPos.x;
        _817 = _377 - _viewPos.y;
        _818 = _378 - _viewPos.z;
        _846 = mad((_viewProjRelative[3].z), _818, mad((_viewProjRelative[3].y), _817, ((_viewProjRelative[3].x) * _816))) + (_viewProjRelative[3].w);
        _847 = (mad((_viewProjRelative[0].z), _818, mad((_viewProjRelative[0].y), _817, ((_viewProjRelative[0].x) * _816))) + (_viewProjRelative[0].w)) / _846;
        _852 = 0.5f - (((mad((_viewProjRelative[1].z), _818, mad((_viewProjRelative[1].y), _817, ((_viewProjRelative[1].x) * _816))) + (_viewProjRelative[1].w)) / _846) * 0.5f);
        _862 = ((_view[0].x) * _780) + _816;
        _863 = ((_view[0].y) * _780) + _817;
        _864 = ((_view[0].z) * _780) + _818;
        _876 = mad((_viewProjRelative[3].z), _864, mad((_viewProjRelative[3].y), _863, (_862 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _882 = (0.5f - (((mad((_viewProjRelative[1].z), _864, mad((_viewProjRelative[1].y), _863, (_862 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _876) * 0.5f)) - _852;
        _883 = _28 * 0.5f;
        _884 = _883 * (((mad((_viewProjRelative[0].z), _864, mad((_viewProjRelative[0].y), _863, (_862 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _876) - _847);
        _888 = sqrt((_882 * _882) + (_884 * _884));
        _889 = _570 - _viewPos.x;
        _890 = _571 - _viewPos.y;
        _891 = _572 - _viewPos.z;
        _903 = mad((_viewProjRelative[3].z), _891, mad((_viewProjRelative[3].y), _890, ((_viewProjRelative[3].x) * _889))) + (_viewProjRelative[3].w);
        _904 = (mad((_viewProjRelative[0].z), _891, mad((_viewProjRelative[0].y), _890, ((_viewProjRelative[0].x) * _889))) + (_viewProjRelative[0].w)) / _903;
        _907 = 0.5f - (((mad((_viewProjRelative[1].z), _891, mad((_viewProjRelative[1].y), _890, ((_viewProjRelative[1].x) * _889))) + (_viewProjRelative[1].w)) / _903) * 0.5f);
        _911 = ((_view[0].x) * _781) + _889;
        _912 = ((_view[0].y) * _781) + _890;
        _913 = ((_view[0].z) * _781) + _891;
        _925 = mad((_viewProjRelative[3].z), _913, mad((_viewProjRelative[3].y), _912, (_911 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _931 = (0.5f - (((mad((_viewProjRelative[1].z), _913, mad((_viewProjRelative[1].y), _912, (_911 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _925) * 0.5f)) - _907;
        _932 = _883 * (((mad((_viewProjRelative[0].z), _913, mad((_viewProjRelative[0].y), _912, (_911 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _925) - _904);
        _952 = ((float)((int)((int)((int)(uint)((int)(_573 > 0.0f))) - (int)((int)(uint)((int)(_573 < 0.0f)))))) * ((float)((int)((int)((int)(uint)((int)(_379 > 0.0f))) - (int)((int)(uint)((int)(_379 < 0.0f))))));
        _953 = ((_904 - _847) * 0.5f) * _952;
        _954 = (_907 - _852) * _952;
        _955 = TEXCOORD.x - ((_847 * 0.5f) + 0.5f);
        _956 = TEXCOORD.y - _852;
        _960 = saturate(dot(float2(_955, _956), float2(_953, _954)) / dot(float2(_953, _954), float2(_953, _954)));  // [sem: expr_sat]
        _967 = _956 - (_960 * _954);
        _968 = (_955 - (_960 * _953)) * _28;
        // [sem: expr_sat]
        _975 = saturate(sqrt((_968 * _968) + (_967 * _967)) / max(0.001f, ((_960 * (sqrt((_931 * _931) + (_932 * _932)) - _888)) + _888)));
        _980 = (lerp(_975, _809, _191));  // [sem: blended]
      } else {
        _980 = _809;  // [sem: blended]
      }
      _981 = _376 - _570;
      _982 = _377 - _571;
      _983 = _378 - _572;
      _990 = _764 * 0.5f;
      _997 = ((1.0f - saturate((sqrt(((_982 * _982) + (_981 * _981)) + (_983 * _983)) - _990) / _990)) * _980);
      _998 = _779;
    } else {
      _997 = 1.0f;
      _998 = 1.0f;
    }
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _1001 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _1006 = WaveReadLaneFirst(_materialIndex);
    _1014 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1006 < (uint)170000), _1006, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._maskBlurPower);
    _1058 = ((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127) + (int)(-52)) > (uint)15);
    _1066 = WaveReadLaneFirst(_materialIndex);
    _1074 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1066 < (uint)170000), _1066, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._maskRatio);
    _1077 = (_1074 * (saturate(((1.0f - saturate(_1001.y)) + exp2(log2(1.0f - saturate(_1001.x)) * _1014)) + ((float)((bool)((!((1.0f - saturate(ceil(((_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x))) + 0.05f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x)))))) == 0.0f)) && _1058)))) + -1.0f)) + 1.0f;
    _1078 = WaveReadLaneFirst(_materialIndex);
    _1086 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1078 < (uint)170000), _1078, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusCharacterMaterialMask);
    if (!(!(_1086 >= 0.001f))) {
      _1090 = WaveReadLaneFirst(_materialIndex);
      _1098 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1090 < (uint)170000), _1090, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusCharacterMaterialMask);
      _1103 = ((_1098 * (((float)((bool)(_1058))) - _1077)) + _1077);
    } else {
      _1103 = _1077;
    }
    _1116 = _1103 * _1103;
    _1122 = WaveReadLaneFirst(_materialIndex);
    _1130 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1122 < (uint)170000), _1122, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusSceneDepthFade);
    _1135 = WaveReadLaneFirst(_materialIndex);
    _1143 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1135 < (uint)170000), _1135, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusColorRemap);
    _1145 = min(max(_1143, -1.0f), 1.0f);
    if (!(_1145 == 0.0f)) {
      if ((!(_155 == 0.0f)) || ((!(_153 == 0.0f)) || (!(_154 == 0.0f)))) {
        _1157 = dot(float3(_31.x, _31.y, _31.z), float3(0.299f, 0.587f, 0.114f)) * rsqrt(dot(float3(_153, _154, _155), float3(_153, _154, _155)));
        _1171 = ((((_1157 * _153) - _31.x) * _1145) + _31.x);
        _1172 = ((((_1157 * _154) - _31.y) * _1145) + _31.y);
        _1173 = ((((_1157 * _155) - _31.z) * _1145) + _31.z);
      } else {
        _1171 = _31.x;
        _1172 = _31.y;
        _1173 = _31.z;
      }
    } else {
      _1171 = _31.x;
      _1172 = _31.y;
      _1173 = _31.z;
    }
    _1174 = WaveReadLaneFirst(_materialIndex);
    _1182 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1174 < (uint)170000), _1174, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusBackgroundSaturation);
    _1186 = (((((_1116 * _1116) * (pow(_373, _375))) * (pow(_567, _569))) * (pow(_997, _998))) * (pow(_754, _755))) * exp2(log2(1.0f - _48.x) * _1130);
    _1188 = (_1186 * 0.5f) * (1.0f - min(max(_1182, -1.0f), 1.0f));
    _1189 = dot(float3(_1171, _1172, _1173), float3(0.2126f, 0.7152f, 0.0722f));
    _1196 = (_1188 * (_1189 - _1171)) + _1171;
    _1197 = (_1188 * (_1189 - _1172)) + _1172;
    _1198 = (_1188 * (_1189 - _1173)) + _1173;
    _1199 = _1186 * _43;
    _1210 = (lerp(_1196, _153, _1199));  // [sem: blended]
    _1211 = (lerp(_1197, _154, _1199));  // [sem: blended]
    _1212 = (lerp(_1198, _155, _1199));  // [sem: blended]
  } else {
    _1210 = _31.x;  // [sem: blended]
    _1211 = _31.y;  // [sem: blended]
    _1212 = _31.z;  // [sem: blended]
  }
  _1213 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1226 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1213, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1226 = 1.0f;
  }
  _1229 = (_localToneMappingParams.w > 0.0f);
  if (_1229) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1210, _1211, _1212));
    _1489 = _rndx_tonemapped_color.x;
    _1490 = _rndx_tonemapped_color.y;
    _1491 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1497 = 1.0f - abs(_etcParams.w);
      _1501 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1502 = (_1497 * _1489) + _1501;
      _1503 = (_1497 * _1490) + _1501;
      _1504 = (_1497 * _1491) + _1501;
      if (_colorGradingParams.w > 0.0f) {
        _1509 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1526 = (((max(0.0f, (1.0f - _1502)) - _1502) * _1509) + _1502);
        _1527 = (((max(0.0f, (1.0f - _1503)) - _1503) * _1509) + _1503);
        _1528 = (((max(0.0f, (1.0f - _1504)) - _1504) * _1509) + _1504);
      } else {
        _1526 = _1502;
        _1527 = _1503;
        _1528 = _1504;
      }
      _1534 = _userImageAdjust.y + 1.0f;
      _1538 = _userImageAdjust.x + 0.5f;
      _1539 = ((_1526 + -0.5f) * _1534) + _1538;
      _1540 = ((_1527 + -0.5f) * _1534) + _1538;
      _1541 = ((_1528 + -0.5f) * _1534) + _1538;
      _1571 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1582 = exp2(log2(saturate(mad(_colorBlind0.z, _1541, mad(_colorBlind0.y, _1540, (_colorBlind0.x * _1539))))) * _1571);
      _1583 = exp2(log2(saturate(mad(_colorBlind1.z, _1541, mad(_colorBlind1.y, _1540, (_colorBlind1.x * _1539))))) * _1571);
      _1584 = exp2(log2(saturate(mad(_colorBlind2.z, _1541, mad(_colorBlind2.y, _1540, (_colorBlind2.x * _1539))))) * _1571);
    } else {
      _1582 = _1489;
      _1583 = _1490;
      _1584 = _1491;
    }
  } else {
    _1582 = _1210;
    _1583 = _1211;
    _1584 = _1212;
  }
  if (_etcParams.y > 1.0f) {
    _1593 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1594 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _1598 = saturate(1.0f - (dot(float2(_1593, _1594), float2(_1593, _1594)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _1603 = (_1598 * _1582);
    _1604 = (_1598 * _1583);
    _1605 = (_1598 * _1584);
  } else {
    _1603 = _1582;
    _1604 = _1583;
    _1605 = _1584;
  }
  if (_1229 && (_etcParams.z > 0.0f)) {
    _1635 = select((_1603 <= 0.0031308f), (_1603 * 12.92f), (((pow(_1603, 0.41666666f)) * 1.055f) + -0.055f));
    _1636 = select((_1604 <= 0.0031308f), (_1604 * 12.92f), (((pow(_1604, 0.41666666f)) * 1.055f) + -0.055f));
    _1637 = select((_1605 <= 0.0031308f), (_1605 * 12.92f), (((pow(_1605, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1635 = _1603;
    _1636 = _1604;
    _1637 = _1605;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1642 = (float)((uint)((uint)(_1213)));
    if (!(_1642 < _viewDir.w)) {
      if (!(_1642 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1651 = _1635;
        _1652 = _1636;
        _1653 = _1637;
      } else {
        _1651 = 0.0f;
        _1652 = 0.0f;
        _1653 = 0.0f;
      }
    } else {
      _1651 = 0.0f;
      _1652 = 0.0f;
      _1653 = 0.0f;
    }
  } else {
    _1651 = _1635;
    _1652 = _1636;
    _1653 = _1637;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_1651, _1652, _1653), _sunDirection.y, _moonDirection.y);
    _1651 = _rndx_final_color.x;
    _1652 = _rndx_final_color.y;
    _1653 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _1651;
  SV_Target.y = _1652;
  SV_Target.z = _1653;
  SV_Target.w = _1226;
  return SV_Target;
}
