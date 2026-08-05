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

struct BindlessParameters_PostProcessFocus {
  PostProcessFocusStruct BindlessParameters_PostProcessFocus;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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
  float _26;
  float4 _29;
  int _35;
  float _43;
  float _395;
  float _396;
  float _397;
  float _398;
  float _399;
  float _400;
  float _401;
  float _593;
  float _599;
  float _600;
  float _601;
  float _602;
  float _603;
  float _604;
  float _605;
  float _785;
  float _796;
  float _797;
  float _1026;
  float _1043;
  float _1044;
  float _1157;
  float _1208;
  float _1209;
  float _1210;
  float _1270;
  float _1271;
  float _1272;
  float _1286;
  float _1491;
  float _1492;
  float _1493;
  float _1586;
  float _1587;
  float _1588;
  float _1642;
  float _1643;
  float _1644;
  float _1663;
  float _1664;
  float _1665;
  float _1695;
  float _1696;
  float _1697;
  float _1711;
  float _1712;
  float _1713;
  float _48;
  float _51;
  float _53;
  float _54;
  float _66;
  float _75;
  float _84;
  float _93;
  int _96;
  int _104;
  float _107;
  float _110;
  float _112;
  float _115;
  int _118;
  float _126;
  float _137;
  float _148;
  float _159;
  int _162;
  float _170;
  int _173;
  float _181;
  int _184;
  float _192;
  int _195;
  float _203;
  int _208;
  float _216;
  int _219;
  float _227;
  float _231;
  float _235;
  float _238;
  float _240;
  float _242;
  int _245;
  float _253;
  float _256;
  float _258;
  float _260;
  float _265;
  float _266;
  float _267;
  float _268;
  float _278;
  float _292;
  float _301;
  float _312;
  float _316;
  float _320;
  float _324;
  float _328;
  float _336;
  float _337;
  float _344;
  float _346;
  float _348;
  float _350;
  float _354;
  float _362;
  float _369;
  float _370;
  float _374;
  float _390;
  int _406;
  float _414;
  int _417;
  float _425;
  float _429;
  float _433;
  float _436;
  float _438;
  float _440;
  int _443;
  float _451;
  float _454;
  float _456;
  float _458;
  float _463;
  float _464;
  float _465;
  float _466;
  float _476;
  float _490;
  float _499;
  float _510;
  float _514;
  float _518;
  float _522;
  float _526;
  float _534;
  float _535;
  float _542;
  float _544;
  float _546;
  float _548;
  float _552;
  float _560;
  float _567;
  float _568;
  float _572;
  float _588;
  int _610;
  float _618;
  int _621;
  float _629;
  float _633;
  float _637;
  int _640;
  float _648;
  float _651;
  float _653;
  float _655;
  float _656;
  float _657;
  float _658;
  float _668;
  float _682;
  float _691;
  float _702;
  float _706;
  float _710;
  float _714;
  float _718;
  float _726;
  float _727;
  float _734;
  float _736;
  float _738;
  float _740;
  float _744;
  float _752;
  float _759;
  float _760;
  float _764;
  float _780;
  int _800;
  float _808;
  int _817;
  float _825;
  float _826;
  float _827;
  float _828;
  float _829;
  float _830;
  float _831;
  float _832;
  float _833;
  float _837;
  float _839;
  float _841;
  float _843;
  float _855;
  float _860;
  float _862;
  float _864;
  float _876;
  float _885;
  float _896;
  float _900;
  float _904;
  float _908;
  float _912;
  float _920;
  float _921;
  float _928;
  float _932;
  float _933;
  float _934;
  float _935;
  float _939;
  float _944;
  float _951;
  float _953;
  float _955;
  float _957;
  float _961;
  float _969;
  float _976;
  float _989;
  float _992;
  float _994;
  float _997;
  float _998;
  float _1002;
  float _1004;
  float _1007;
  float _1021;
  float _1027;
  float _1028;
  float _1029;
  float _1030;
  float4 _1047;
  int _1052;
  float _1060;
  bool _1075;
  int _1078;
  float _1086;
  float _1127;
  int _1130;
  float _1138;
  int _1143;
  float _1151;
  float _1158;
  int _1161;
  float _1169;
  int _1172;
  float _1180;
  float _1182;
  float _1194;
  int _1213;
  float _1221;
  float _1243;
  float _1248;
  float _1249;
  float _1252;
  float _1255;
  float _1258;
  float _1259;
  uint _1273;
  bool _1289;
  float _1295;
  float _1314;
  float _1330;
  float _1346;
  float _1347;
  float _1351;
  float _1354;
  float _1357;
  float _1364;
  float _1371;
  float _1378;
  float _1379;
  float _1380;
  float _1381;
  float _1382;
  float _1383;
  float _1384;
  float _1400;
  float _1416;
  float _1432;
  float _1433;
  float _1434;
  float _1435;
  float _1436;
  float _1453;
  float _1454;
  float _1455;
  float _1456;
  float _1459;
  float _1462;
  float _1466;
  float _1470;
  float _1474;
  float _1494;
  float _1506;
  float _1518;
  float _1530;
  float _1537;
  float _1544;
  float _1551;
  float _1557;
  float _1558;
  float _1560;
  float _1562;
  float _1564;
  float _1569;
  float _1590;
  float _1592;
  float _1595;
  float _1598;
  float _1601;
  float _1607;
  float _1649;
  float _1652;
  float _1658;
  float _1700;
  _26 = _screenSizeAndInvSize.x / _screenSizeAndInvSize.y;
  _29 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _35 = WaveReadLaneFirst(_materialIndex);
  _43 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_35 < (uint)170000), _35, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusRatio);
  if (!(!(_43 >= 0.001f))) {
    _48 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
    _51 = (TEXCOORD.x * 2.0f) + -1.0f;
    _53 = 1.0f - (TEXCOORD.y * 2.0f);
    _54 = max(1e-07f, _48.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
    _66 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _54, mad((_invViewProj[3].y), _53, ((_invViewProj[3].x) * _51)));
    _75 = (mad((_invViewProj[0].z), _54, mad((_invViewProj[0].y), _53, ((_invViewProj[0].x) * _51))) + (_invViewProj[0].w)) / _66;
    _84 = (mad((_invViewProj[1].z), _54, mad((_invViewProj[1].y), _53, ((_invViewProj[1].x) * _51))) + (_invViewProj[1].w)) / _66;
    _93 = (mad((_invViewProj[2].z), _54, mad((_invViewProj[2].y), _53, ((_invViewProj[2].x) * _51))) + (_invViewProj[2].w)) / _66;
    _96 = WaveReadLaneFirst(_materialIndex);
    _104 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_96 < (uint)170000), _96, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusColor);
    _107 = (float)((uint)((uint)(((uint)((uint)(_104)) >> 16) & 255)));
    _110 = (float)((uint)((uint)(((uint)((uint)(_104)) >> 8) & 255)));
    _112 = (float)((uint)((uint)(_104 & 255)));
    _115 = max(0.001f, _exposure0.x);
    _118 = WaveReadLaneFirst(_materialIndex);
    _126 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_118 < (uint)170000), _118, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusColorBrightness);
    _137 = (select(((_107 * 0.003921569f) < 0.04045f), (_107 * 0.000303527f), exp2(log2((_107 * 0.003717127f) + 0.052132703f) * 2.4f)) / _115) * _126;
    _148 = (select(((_110 * 0.003921569f) < 0.04045f), (_110 * 0.000303527f), exp2(log2((_110 * 0.003717127f) + 0.052132703f) * 2.4f)) / _115) * _126;
    _159 = (select(((_112 * 0.003921569f) < 0.04045f), (_112 * 0.000303527f), exp2(log2((_112 * 0.003717127f) + 0.052132703f) * 2.4f)) / _115) * _126;
    _162 = WaveReadLaneFirst(_materialIndex);
    _170 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_162 < (uint)170000), _162, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusRadius);
    _173 = WaveReadLaneFirst(_materialIndex);
    _181 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_173 < (uint)170000), _173, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusRadius);
    _184 = WaveReadLaneFirst(_materialIndex);
    _192 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_184 < (uint)170000), _184, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusRadius);
    _195 = WaveReadLaneFirst(_materialIndex);
    _203 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_195 < (uint)170000), _195, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focus3DBlend);
    if (!(!(_170 >= 0.001f))) {
      _208 = WaveReadLaneFirst(_materialIndex);
      _216 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_208 < (uint)170000), _208, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusCenterRadius);
      _219 = WaveReadLaneFirst(_materialIndex);
      _227 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_219 < (uint)170000), _219, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusPositionOffset.x);
      _231 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_219 < (uint)170000), _219, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusPositionOffset.y);
      _235 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_219 < (uint)170000), _219, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusPositionOffset.z);
      _238 = _mainPosition.x + _227;
      _240 = _mainPosition.y + _231;
      _242 = _mainPosition.z + _235;
      _245 = WaveReadLaneFirst(_materialIndex);
      _253 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_245 < (uint)170000), _245, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusPower);
      _256 = _238 - _viewPos.x;
      _258 = _240 - _viewPos.y;
      _260 = _242 - _viewPos.z;
      _265 = dot(float3(_256, _258, _260), float3(_viewDir.x, _viewDir.y, _viewDir.z));
      _266 = _75 - _238;
      _267 = _84 - _240;
      _268 = _93 - _242;
      _278 = saturate((sqrt(((_267 * _267) + (_266 * _266)) + (_268 * _268)) - _216) / max(0.001f, _170));  // [sem: expr_sat]
      if (_203 < 1.0f) {
        _292 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _260, mad((_viewProjRelative[3].y), _258, ((_viewProjRelative[3].x) * _256)));
        _301 = (mad((_viewProjRelative[0].z), _260, mad((_viewProjRelative[0].y), _258, ((_viewProjRelative[0].x) * _256))) + (_viewProjRelative[0].w)) / _292;
        _312 = 0.5f - (((mad((_viewProjRelative[1].z), _260, mad((_viewProjRelative[1].y), _258, ((_viewProjRelative[1].x) * _256))) + (_viewProjRelative[1].w)) / _292) * 0.5f);
        _316 = ((_view[0].x) * _170) + _256;
        _320 = ((_view[0].y) * _170) + _258;
        _324 = ((_view[0].z) * _170) + _260;
        _328 = mad((_viewProjRelative[3].z), _324, mad((_viewProjRelative[3].y), _320, (_316 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _336 = (0.5f - (((mad((_viewProjRelative[1].z), _324, mad((_viewProjRelative[1].y), _320, (_316 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _328) * 0.5f)) - _312;
        _337 = _26 * 0.5f;
        _344 = (((mad((_viewProjRelative[0].z), _324, mad((_viewProjRelative[0].y), _320, (_316 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _328) - _301) * _337;
        _346 = ((_view[0].x) * _216) + _256;
        _348 = ((_view[0].y) * _216) + _258;
        _350 = ((_view[0].z) * _216) + _260;
        _354 = mad((_viewProjRelative[3].z), _350, mad((_viewProjRelative[3].y), _348, (_346 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _362 = (0.5f - (((mad((_viewProjRelative[1].z), _350, mad((_viewProjRelative[1].y), _348, (_346 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _354) * 0.5f)) - _312;
        _369 = (((mad((_viewProjRelative[0].z), _350, mad((_viewProjRelative[0].y), _348, (_346 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _354) - _301) * _337;
        _370 = TEXCOORD.y - _312;
        _374 = ((TEXCOORD.x + -0.5f) - (_301 * 0.5f)) * _26;
        // [sem: expr_sat]
        _390 = saturate((sqrt((_370 * _370) + (_374 * _374)) - sqrt((_369 * _369) + (_362 * _362))) / max(0.001f, sqrt((_344 * _344) + (_336 * _336))));
        _395 = _265;
        _396 = _242;
        _397 = _240;
        _398 = _238;
        _399 = _253;
        _400 = _216;
        _401 = (lerp(_390, _278, _203));  // [sem: blended]
      } else {
        _395 = _265;
        _396 = _242;
        _397 = _240;
        _398 = _238;
        _399 = _253;
        _400 = _216;
        _401 = _278;  // [sem: blended]
      }
    } else {
      _395 = 1.0f;
      _396 = 0.0f;
      _397 = 0.0f;
      _398 = 0.0f;
      _399 = 1.0f;
      _400 = 0.0f;
      _401 = 1.0f;  // [sem: blended]
    }
    if (!(!(_181 >= 0.001f))) {
      _406 = WaveReadLaneFirst(_materialIndex);
      _414 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_406 < (uint)170000), _406, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusCenterRadius);
      _417 = WaveReadLaneFirst(_materialIndex);
      _425 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_417 < (uint)170000), _417, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusPositionOffset.x);
      _429 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_417 < (uint)170000), _417, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusPositionOffset.y);
      _433 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_417 < (uint)170000), _417, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusPositionOffset.z);
      _436 = _targetFocusPosition.x + _425;
      _438 = _targetFocusPosition.y + _429;
      _440 = _targetFocusPosition.z + _433;
      _443 = WaveReadLaneFirst(_materialIndex);
      _451 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_443 < (uint)170000), _443, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusPower);
      _454 = _436 - _viewPos.x;
      _456 = _438 - _viewPos.y;
      _458 = _440 - _viewPos.z;
      _463 = dot(float3(_454, _456, _458), float3(_viewDir.x, _viewDir.y, _viewDir.z));
      _464 = _75 - _436;
      _465 = _84 - _438;
      _466 = _93 - _440;
      _476 = saturate((sqrt(((_465 * _465) + (_464 * _464)) + (_466 * _466)) - _414) / max(0.001f, _181));  // [sem: expr_sat]
      if (_203 < 1.0f) {
        _490 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _458, mad((_viewProjRelative[3].y), _456, ((_viewProjRelative[3].x) * _454)));
        _499 = (mad((_viewProjRelative[0].z), _458, mad((_viewProjRelative[0].y), _456, ((_viewProjRelative[0].x) * _454))) + (_viewProjRelative[0].w)) / _490;
        _510 = 0.5f - (((mad((_viewProjRelative[1].z), _458, mad((_viewProjRelative[1].y), _456, ((_viewProjRelative[1].x) * _454))) + (_viewProjRelative[1].w)) / _490) * 0.5f);
        _514 = ((_view[0].x) * _181) + _454;
        _518 = ((_view[0].y) * _181) + _456;
        _522 = ((_view[0].z) * _181) + _458;
        _526 = mad((_viewProjRelative[3].z), _522, mad((_viewProjRelative[3].y), _518, (_514 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _534 = (0.5f - (((mad((_viewProjRelative[1].z), _522, mad((_viewProjRelative[1].y), _518, (_514 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _526) * 0.5f)) - _510;
        _535 = _26 * 0.5f;
        _542 = (((mad((_viewProjRelative[0].z), _522, mad((_viewProjRelative[0].y), _518, (_514 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _526) - _499) * _535;
        _544 = ((_view[0].x) * _414) + _454;
        _546 = ((_view[0].y) * _414) + _456;
        _548 = ((_view[0].z) * _414) + _458;
        _552 = mad((_viewProjRelative[3].z), _548, mad((_viewProjRelative[3].y), _546, (_544 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _560 = (0.5f - (((mad((_viewProjRelative[1].z), _548, mad((_viewProjRelative[1].y), _546, (_544 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _552) * 0.5f)) - _510;
        _567 = (((mad((_viewProjRelative[0].z), _548, mad((_viewProjRelative[0].y), _546, (_544 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _552) - _499) * _535;
        _568 = TEXCOORD.y - _510;
        _572 = ((TEXCOORD.x + -0.5f) - (_499 * 0.5f)) * _26;
        // [sem: expr_sat]
        _588 = saturate((sqrt((_568 * _568) + (_572 * _572)) - sqrt((_567 * _567) + (_560 * _560))) / max(0.001f, sqrt((_542 * _542) + (_534 * _534))));
        _593 = (lerp(_588, _476, _203));  // [sem: blended]
      } else {
        _593 = _476;  // [sem: blended]
      }
      _599 = _463;
      _600 = _440;
      _601 = _438;
      _602 = _436;
      _603 = _451;
      _604 = _414;
      _605 = ((saturate(_463) * (_593 + -1.0f)) + 1.0f);
    } else {
      _599 = 1.0f;
      _600 = 0.0f;
      _601 = 0.0f;
      _602 = 0.0f;
      _603 = 1.0f;
      _604 = 0.0f;
      _605 = 1.0f;
    }
    if (!(!(_192 >= 0.001f))) {
      _610 = WaveReadLaneFirst(_materialIndex);
      _618 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_610 < (uint)170000), _610, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusCenterRadius);
      _621 = WaveReadLaneFirst(_materialIndex);
      _629 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_621 < (uint)170000), _621, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusPosition.x);
      _633 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_621 < (uint)170000), _621, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusPosition.y);
      _637 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_621 < (uint)170000), _621, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusPosition.z);
      _640 = WaveReadLaneFirst(_materialIndex);
      _648 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_640 < (uint)170000), _640, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusPower);
      _651 = _629 - _viewPos.x;
      _653 = _633 - _viewPos.y;
      _655 = _637 - _viewPos.z;
      _656 = _75 - _629;
      _657 = _84 - _633;
      _658 = _93 - _637;
      _668 = saturate((sqrt(((_657 * _657) + (_656 * _656)) + (_658 * _658)) - _618) / max(0.001f, _192));  // [sem: expr_sat]
      if (_203 < 1.0f) {
        _682 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _655, mad((_viewProjRelative[3].y), _653, ((_viewProjRelative[3].x) * _651)));
        _691 = (mad((_viewProjRelative[0].z), _655, mad((_viewProjRelative[0].y), _653, ((_viewProjRelative[0].x) * _651))) + (_viewProjRelative[0].w)) / _682;
        _702 = 0.5f - (((mad((_viewProjRelative[1].z), _655, mad((_viewProjRelative[1].y), _653, ((_viewProjRelative[1].x) * _651))) + (_viewProjRelative[1].w)) / _682) * 0.5f);
        _706 = ((_view[0].x) * _192) + _651;
        _710 = ((_view[0].y) * _192) + _653;
        _714 = ((_view[0].z) * _192) + _655;
        _718 = mad((_viewProjRelative[3].z), _714, mad((_viewProjRelative[3].y), _710, (_706 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _726 = (0.5f - (((mad((_viewProjRelative[1].z), _714, mad((_viewProjRelative[1].y), _710, (_706 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _718) * 0.5f)) - _702;
        _727 = _26 * 0.5f;
        _734 = (((mad((_viewProjRelative[0].z), _714, mad((_viewProjRelative[0].y), _710, (_706 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _718) - _691) * _727;
        _736 = ((_view[0].x) * _618) + _651;
        _738 = ((_view[0].y) * _618) + _653;
        _740 = ((_view[0].z) * _618) + _655;
        _744 = mad((_viewProjRelative[3].z), _740, mad((_viewProjRelative[3].y), _738, (_736 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _752 = (0.5f - (((mad((_viewProjRelative[1].z), _740, mad((_viewProjRelative[1].y), _738, (_736 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _744) * 0.5f)) - _702;
        _759 = (((mad((_viewProjRelative[0].z), _740, mad((_viewProjRelative[0].y), _738, (_736 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _744) - _691) * _727;
        _760 = TEXCOORD.y - _702;
        _764 = ((TEXCOORD.x + -0.5f) - (_691 * 0.5f)) * _26;
        // [sem: expr_sat]
        _780 = saturate((sqrt((_760 * _760) + (_764 * _764)) - sqrt((_759 * _759) + (_752 * _752))) / max(0.001f, sqrt((_734 * _734) + (_726 * _726))));
        _785 = (lerp(_780, _668, _203));  // [sem: blended]
      } else {
        _785 = _668;  // [sem: blended]
      }
      _796 = _648;
      _797 = ((saturate(dot(float3(_651, _653, _655), float3(_viewDir.x, _viewDir.y, _viewDir.z))) * (_785 + -1.0f)) + 1.0f);
    } else {
      _796 = 1.0f;
      _797 = 1.0f;
    }
    _800 = WaveReadLaneFirst(_materialIndex);
    _808 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_800 < (uint)170000), _800, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._connectPlayerTargetDistance);
    if (((_170 >= 0.001f) && (_181 >= 0.001f)) && (_808 >= 0.01f)) {
      _817 = WaveReadLaneFirst(_materialIndex);
      _825 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_817 < (uint)170000), _817, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._connectPlayerTargetPower);
      _826 = _400 + _170;
      _827 = _604 + _181;
      _828 = _602 - _398;
      _829 = _601 - _397;
      _830 = _600 - _396;
      _831 = _75 - _398;
      _832 = _84 - _397;
      _833 = _93 - _396;
      // [sem: expr_sat]
      _837 = saturate(dot(float3(_828, _829, _830), float3(_831, _832, _833)) / dot(float3(_828, _829, _830), float3(_828, _829, _830)));
      _839 = _831 - (_837 * _828);
      _841 = _832 - (_837 * _829);
      _843 = _833 - (_837 * _830);
      // [sem: expr_sat]
      _855 = saturate(sqrt(((_839 * _839) + (_841 * _841)) + (_843 * _843)) / max(0.001f, ((_837 * (_827 - _826)) + _826)));
      if (_203 < 1.0f) {
        _860 = _398 - _viewPos.x;
        _862 = _397 - _viewPos.y;
        _864 = _396 - _viewPos.z;
        _876 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _864, mad((_viewProjRelative[3].y), _862, ((_viewProjRelative[3].x) * _860)));
        _885 = (mad((_viewProjRelative[0].z), _864, mad((_viewProjRelative[0].y), _862, ((_viewProjRelative[0].x) * _860))) + (_viewProjRelative[0].w)) / _876;
        _896 = 0.5f - (((mad((_viewProjRelative[1].z), _864, mad((_viewProjRelative[1].y), _862, ((_viewProjRelative[1].x) * _860))) + (_viewProjRelative[1].w)) / _876) * 0.5f);
        _900 = ((_view[0].x) * _826) + _860;
        _904 = ((_view[0].y) * _826) + _862;
        _908 = ((_view[0].z) * _826) + _864;
        _912 = mad((_viewProjRelative[3].z), _908, mad((_viewProjRelative[3].y), _904, (_900 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _920 = (0.5f - (((mad((_viewProjRelative[1].z), _908, mad((_viewProjRelative[1].y), _904, (_900 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _912) * 0.5f)) - _896;
        _921 = _26 * 0.5f;
        _928 = (((mad((_viewProjRelative[0].z), _908, mad((_viewProjRelative[0].y), _904, (_900 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _912) - _885) * _921;
        _932 = sqrt((_928 * _928) + (_920 * _920));
        _933 = _602 - _viewPos.x;
        _934 = _601 - _viewPos.y;
        _935 = _600 - _viewPos.z;
        _939 = mad((_viewProjRelative[3].z), _935, mad((_viewProjRelative[3].y), _934, ((_viewProjRelative[3].x) * _933))) + (_viewProjRelative[3].w);
        _944 = (mad((_viewProjRelative[0].z), _935, mad((_viewProjRelative[0].y), _934, ((_viewProjRelative[0].x) * _933))) + (_viewProjRelative[0].w)) / _939;
        _951 = 0.5f - (((mad((_viewProjRelative[1].z), _935, mad((_viewProjRelative[1].y), _934, ((_viewProjRelative[1].x) * _933))) + (_viewProjRelative[1].w)) / _939) * 0.5f);
        _953 = ((_view[0].x) * _827) + _933;
        _955 = ((_view[0].y) * _827) + _934;
        _957 = ((_view[0].z) * _827) + _935;
        _961 = mad((_viewProjRelative[3].z), _957, mad((_viewProjRelative[3].y), _955, (_953 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _969 = (0.5f - (((mad((_viewProjRelative[1].z), _957, mad((_viewProjRelative[1].y), _955, (_953 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _961) * 0.5f)) - _951;
        _976 = (((mad((_viewProjRelative[0].z), _957, mad((_viewProjRelative[0].y), _955, (_953 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _961) - _944) * _921;
        _989 = ((float)((int)((int)((int)(uint)((int)(_599 > 0.0f))) - (int)((int)(uint)((int)(_599 < 0.0f)))))) * ((float)((int)((int)((int)(uint)((int)(_395 > 0.0f))) - (int)((int)(uint)((int)(_395 < 0.0f))))));
        _992 = (_989 * 0.5f) * (_944 - _885);
        _994 = (_951 - _896) * _989;
        _997 = (TEXCOORD.x + -0.5f) - (_885 * 0.5f);
        _998 = TEXCOORD.y - _896;
        _1002 = saturate(dot(float2(_997, _998), float2(_992, _994)) / dot(float2(_992, _994), float2(_992, _994)));  // [sem: expr_sat]
        _1004 = _998 - (_1002 * _994);
        _1007 = (_997 - (_1002 * _992)) * _26;
        // [sem: expr_sat]
        _1021 = saturate(sqrt((_1007 * _1007) + (_1004 * _1004)) / max(0.001f, (((sqrt((_976 * _976) + (_969 * _969)) - _932) * _1002) + _932)));
        _1026 = (lerp(_1021, _855, _203));  // [sem: blended]
      } else {
        _1026 = _855;  // [sem: blended]
      }
      _1027 = _398 - _602;
      _1028 = _397 - _601;
      _1029 = _396 - _600;
      _1030 = _808 * 0.5f;
      _1043 = _825;
      _1044 = ((1.0f - saturate((sqrt(((_1028 * _1028) + (_1029 * _1029)) + (_1027 * _1027)) - _1030) / _1030)) * _1026);
    } else {
      _1043 = 1.0f;
      _1044 = 1.0f;
    }
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _1047 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _1052 = WaveReadLaneFirst(_materialIndex);
    _1060 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1052 < (uint)170000), _1052, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._maskBlurPower);
    _1075 = ((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127) + (int)(-52)) > (uint)15);
    _1078 = WaveReadLaneFirst(_materialIndex);
    _1086 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1078 < (uint)170000), _1078, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._maskRatio);
    _1127 = ((saturate(((1.0f - saturate(_1047.y)) + exp2(log2(1.0f - saturate(_1047.x)) * _1060)) + ((float)((bool)(_1075 && (!((1.0f - saturate(ceil(((_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x))) + 0.05f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x)))))) == 0.0f)))))) + -1.0f) * _1086) + 1.0f;
    _1130 = WaveReadLaneFirst(_materialIndex);
    _1138 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1130 < (uint)170000), _1130, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusCharacterMaterialMask);
    if (!(!(_1138 >= 0.001f))) {
      _1143 = WaveReadLaneFirst(_materialIndex);
      _1151 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1143 < (uint)170000), _1143, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusCharacterMaterialMask);
      _1157 = ((_1151 * (((float)((bool)(_1075))) - _1127)) + _1127);
    } else {
      _1157 = _1127;
    }
    _1158 = _1157 * _1157;
    _1161 = WaveReadLaneFirst(_materialIndex);
    _1169 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1161 < (uint)170000), _1161, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusSceneDepthFade);
    _1172 = WaveReadLaneFirst(_materialIndex);
    _1180 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1172 < (uint)170000), _1172, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusColorRemap);
    _1182 = min(max(_1180, -1.0f), 1.0f);
    if (!(_1182 == 0.0f)) {
      if (!((_148 == 0.0f) && ((_137 == 0.0f) && (_159 == 0.0f)))) {
        // [sem: invLength]
        _1194 = rsqrt(dot(float3(_137, _148, _159), float3(_137, _148, _159))) * dot(float3(_29.x, _29.y, _29.z), float3(0.299f, 0.587f, 0.114f));
        _1208 = ((((_1194 * _159) - _29.z) * _1182) + _29.z);
        _1209 = ((((_1194 * _148) - _29.y) * _1182) + _29.y);
        _1210 = ((((_1194 * _137) - _29.x) * _1182) + _29.x);
      } else {
        _1208 = _29.z;
        _1209 = _29.y;
        _1210 = _29.x;
      }
    } else {
      _1208 = _29.z;
      _1209 = _29.y;
      _1210 = _29.x;
    }
    _1213 = WaveReadLaneFirst(_materialIndex);
    _1221 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1213 < (uint)170000), _1213, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusBackgroundSaturation);
    _1243 = (((((_1158 * _1158) * (pow(_401, _399))) * (pow(_605, _603))) * (pow(_1044, _1043))) * (pow(_797, _796))) * exp2(log2(1.0f - _48.x) * _1169);
    _1248 = (_1243 * 0.5f) * (1.0f - min(max(_1221, -1.0f), 1.0f));
    _1249 = dot(float3(_1210, _1209, _1208), float3(0.2126f, 0.7152f, 0.0722f));
    _1252 = (_1248 * (_1249 - _1210)) + _1210;
    _1255 = (_1248 * (_1249 - _1209)) + _1209;
    _1258 = (_1248 * (_1249 - _1208)) + _1208;
    _1259 = _1243 * _43;
    _1270 = (lerp(_1258, _159, _1259));  // [sem: blended]
    _1271 = (lerp(_1255, _148, _1259));  // [sem: blended]
    _1272 = (lerp(_1252, _137, _1259));  // [sem: blended]
  } else {
    _1270 = _29.z;  // [sem: blended]
    _1271 = _29.y;  // [sem: blended]
    _1272 = _29.x;  // [sem: blended]
  }
  _1273 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1286 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1273, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1286 = 1.0f;
  }
  _1289 = (_localToneMappingParams.w > 0.0f);
  if (_1289) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1272, _1271, _1270));
    _1537 = _rndx_tonemapped_color.x;
    _1544 = _rndx_tonemapped_color.y;
    _1551 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1557 = 1.0f - abs(_etcParams.w);
      _1558 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1560 = (_1557 * _1537) + _1558;
      _1562 = (_1557 * _1544) + _1558;
      _1564 = (_1557 * _1551) + _1558;
      if (_colorGradingParams.w > 0.0f) {
        _1569 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1586 = (((max(0.0f, (1.0f - _1564)) - _1564) * _1569) + _1564);
        _1587 = (((max(0.0f, (1.0f - _1562)) - _1562) * _1569) + _1562);
        _1588 = (((max(0.0f, (1.0f - _1560)) - _1560) * _1569) + _1560);
      } else {
        _1586 = _1564;
        _1587 = _1562;
        _1588 = _1560;
      }
      _1590 = _userImageAdjust.y + 1.0f;
      _1592 = _userImageAdjust.x + 0.5f;
      _1595 = ((_1588 + -0.5f) * _1590) + _1592;
      _1598 = ((_1587 + -0.5f) * _1590) + _1592;
      _1601 = ((_1586 + -0.5f) * _1590) + _1592;
      _1607 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1642 = exp2(log2(saturate(mad(_colorBlind2.z, _1601, mad(_colorBlind2.y, _1598, (_colorBlind2.x * _1595))))) * _1607);
      _1643 = exp2(log2(saturate(mad(_colorBlind1.z, _1601, mad(_colorBlind1.y, _1598, (_colorBlind1.x * _1595))))) * _1607);
      _1644 = exp2(log2(saturate(mad(_colorBlind0.z, _1601, mad(_colorBlind0.y, _1598, (_colorBlind0.x * _1595))))) * _1607);
    } else {
      _1642 = _1551;
      _1643 = _1544;
      _1644 = _1537;
    }
  } else {
    _1642 = _1270;
    _1643 = _1271;
    _1644 = _1272;
  }
  if (_etcParams.y > 1.0f) {
    _1649 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1652 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _1658 = saturate(1.0f - (dot(float2(_1649, _1652), float2(_1649, _1652)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _1663 = (_1658 * _1642);
    _1664 = (_1658 * _1643);
    _1665 = (_1658 * _1644);
  } else {
    _1663 = _1642;
    _1664 = _1643;
    _1665 = _1644;
  }
  if (_1289 && (_etcParams.z > 0.0f)) {
    _1695 = select((_1665 <= 0.0031308f), (_1665 * 12.92f), (((pow(_1665, 0.41666666f)) * 1.055f) + -0.055f));
    _1696 = select((_1664 <= 0.0031308f), (_1664 * 12.92f), (((pow(_1664, 0.41666666f)) * 1.055f) + -0.055f));
    _1697 = select((_1663 <= 0.0031308f), (_1663 * 12.92f), (((pow(_1663, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1695 = _1665;
    _1696 = _1664;
    _1697 = _1663;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1700 = (float)((uint)((uint)(_1273)));
    if (!(_1700 < _viewDir.w)) {
      if (!(!(_1700 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1711 = 0.0f;
        _1712 = 0.0f;
        _1713 = 0.0f;
      } else {
        _1711 = _1695;
        _1712 = _1696;
        _1713 = _1697;
      }
    } else {
      _1711 = 0.0f;
      _1712 = 0.0f;
      _1713 = 0.0f;
    }
  } else {
    _1711 = _1695;
    _1712 = _1696;
    _1713 = _1697;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_1711, _1712, _1713), _sunDirection.y, _moonDirection.y);
    _1711 = _rndx_final_color.x;
    _1712 = _rndx_final_color.y;
    _1713 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _1711;
  SV_Target.y = _1712;
  SV_Target.z = _1713;
  SV_Target.w = _1286;
  return SV_Target;
}
