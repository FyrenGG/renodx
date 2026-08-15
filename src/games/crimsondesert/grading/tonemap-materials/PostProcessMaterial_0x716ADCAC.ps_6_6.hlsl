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
  float _41;
  float _42;
  float _43;
  float _68;
  float _69;
  float _70;
  int _71;
  float _79;
  float _409;
  float _410;
  float _411;
  float _412;
  float _413;
  float _414;
  float _415;
  float _597;
  float _603;
  float _604;
  float _605;
  float _606;
  float _607;
  float _608;
  float _609;
  float _784;
  float _790;
  float _791;
  float _1016;
  float _1033;
  float _1034;
  float _1163;
  float _1231;
  float _1232;
  float _1233;
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
  float _84;
  float _87;
  float _89;
  float _90;
  float _126;
  float _127;
  float _128;
  float _129;
  int _130;
  int _138;
  float _141;
  float _144;
  float _146;
  float _176;
  int _180;
  float _188;
  float _189;
  float _190;
  float _191;
  int _192;
  float _200;
  int _201;
  float _209;
  int _210;
  float _218;
  int _219;
  float _227;
  int _230;
  float _238;
  int _243;
  float _253;
  float _254;
  float _255;
  float _256;
  float _257;
  float _258;
  int _259;
  float _267;
  float _276;
  float _277;
  float _278;
  float _279;
  float _280;
  float _281;
  float _282;
  float _292;
  float _322;
  float _323;
  float _327;
  float _337;
  float _338;
  float _339;
  float _351;
  float _357;
  float _358;
  float _359;
  float _367;
  float _368;
  float _369;
  float _381;
  float _387;
  float _388;
  float _395;
  float _396;
  float _404;
  int _418;
  float _426;
  int _431;
  float _441;
  float _442;
  float _443;
  float _444;
  float _445;
  float _446;
  int _447;
  float _455;
  float _464;
  float _465;
  float _466;
  float _467;
  float _468;
  float _469;
  float _470;
  float _480;
  float _510;
  float _511;
  float _515;
  float _525;
  float _526;
  float _527;
  float _539;
  float _545;
  float _546;
  float _547;
  float _555;
  float _556;
  float _557;
  float _569;
  float _575;
  float _576;
  float _583;
  float _584;
  float _592;
  int _612;
  float _620;
  int _621;
  float _631;
  float _632;
  float _633;
  int _634;
  float _642;
  float _651;
  float _652;
  float _653;
  float _655;
  float _656;
  float _657;
  float _667;
  float _697;
  float _698;
  float _702;
  float _712;
  float _713;
  float _714;
  float _726;
  float _732;
  float _733;
  float _734;
  float _742;
  float _743;
  float _744;
  float _756;
  float _762;
  float _763;
  float _770;
  float _771;
  float _779;
  int _792;
  float _800;
  int _807;
  float _815;
  float _816;
  float _817;
  float _818;
  float _819;
  float _820;
  float _821;
  float _822;
  float _823;
  float _827;
  float _834;
  float _835;
  float _836;
  float _845;
  float _852;
  float _853;
  float _854;
  float _882;
  float _883;
  float _888;
  float _898;
  float _899;
  float _900;
  float _912;
  float _918;
  float _919;
  float _920;
  float _924;
  float _925;
  float _926;
  float _927;
  float _939;
  float _940;
  float _943;
  float _947;
  float _948;
  float _949;
  float _961;
  float _967;
  float _968;
  float _988;
  float _989;
  float _990;
  float _991;
  float _992;
  float _996;
  float _1003;
  float _1004;
  float _1011;
  float _1017;
  float _1018;
  float _1019;
  float _1026;
  float4 _1037;
  float _1044;
  float _1045;
  int _1066;
  float _1074;
  bool _1118;
  int _1126;
  float _1134;
  float _1137;
  int _1138;
  float _1146;
  int _1150;
  float _1158;
  float _1176;
  int _1182;
  float _1190;
  int _1195;
  float _1203;
  float _1205;
  float _1217;
  int _1234;
  float _1242;
  float _1246;
  float _1248;
  float _1249;
  float _1256;
  float _1257;
  float _1258;
  float _1259;
  uint _1273;
  bool _1289;
  float _1295;
  float _1344;
  float _1345;
  float _1346;
  float _1348;
  float _1355;
  float _1356;
  float _1357;
  float _1376;
  float _1377;
  float _1378;
  float _1379;
  float _1380;
  float _1381;
  float _1382;
  float _1383;
  float _1384;
  float _1430;
  float _1431;
  float _1432;
  float _1433;
  float _1434;
  float _1435;
  float _1436;
  float _1453;
  float _1454;
  float _1455;
  float _1456;
  float _1462;
  float _1465;
  float _1472;
  float _1473;
  float _1474;
  float _1503;
  float _1528;
  float _1529;
  float _1530;
  float _1549;
  float _1550;
  float _1551;
  float _1557;
  float _1561;
  float _1562;
  float _1563;
  float _1564;
  float _1569;
  float _1594;
  float _1598;
  float _1599;
  float _1600;
  float _1601;
  float _1631;
  float _1653;
  float _1654;
  float _1658;
  float _1702;
  float _1723;
  float _1724;
  float _1725;
  _28 = _screenSizeAndInvSize.x / _screenSizeAndInvSize.y;
  _31 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _41 = (pow(_31.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _42 = (pow(_31.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _43 = (pow(_31.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _68 = exp2(log2(max(0.0f, (_41 + -0.8359375f)) / (18.851562f - (_41 * 18.6875f))) * 6.277395f) * 10000.0f;
  _69 = exp2(log2(max(0.0f, (_42 + -0.8359375f)) / (18.851562f - (_42 * 18.6875f))) * 6.277395f) * 10000.0f;
  _70 = exp2(log2(max(0.0f, (_43 + -0.8359375f)) / (18.851562f - (_43 * 18.6875f))) * 6.277395f) * 10000.0f;
  _71 = WaveReadLaneFirst(_materialIndex);
  _79 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_71 < (uint)170000), _71, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusRatio);
  if (!(!(_79 >= 0.001f))) {
    _84 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
    _87 = (TEXCOORD.x * 2.0f) + -1.0f;
    _89 = 1.0f - (TEXCOORD.y * 2.0f);
    _90 = max(1e-07f, _84.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
    _126 = mad((_invViewProj[3].z), _90, mad((_invViewProj[3].y), _89, ((_invViewProj[3].x) * _87))) + (_invViewProj[3].w);
    _127 = (mad((_invViewProj[0].z), _90, mad((_invViewProj[0].y), _89, ((_invViewProj[0].x) * _87))) + (_invViewProj[0].w)) / _126;
    _128 = (mad((_invViewProj[1].z), _90, mad((_invViewProj[1].y), _89, ((_invViewProj[1].x) * _87))) + (_invViewProj[1].w)) / _126;
    _129 = (mad((_invViewProj[2].z), _90, mad((_invViewProj[2].y), _89, ((_invViewProj[2].x) * _87))) + (_invViewProj[2].w)) / _126;
    _130 = WaveReadLaneFirst(_materialIndex);
    _138 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_130 < (uint)170000), _130, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusColor);
    _141 = (float)((uint)((uint)(((uint)((uint)(_138)) >> 16) & 255)));
    _144 = (float)((uint)((uint)(((uint)((uint)(_138)) >> 8) & 255)));
    _146 = (float)((uint)((uint)(_138 & 255)));
    _176 = max(0.001f, _exposure0.x);
    _180 = WaveReadLaneFirst(_materialIndex);
    _188 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_180 < (uint)170000), _180, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusColorBrightness);
    _189 = _188 * (select(((_141 * 0.003921569f) < 0.04045f), (_141 * 0.000303527f), exp2(log2((_141 * 0.003717127f) + 0.052132703f) * 2.4f)) / _176);
    _190 = _188 * (select(((_144 * 0.003921569f) < 0.04045f), (_144 * 0.000303527f), exp2(log2((_144 * 0.003717127f) + 0.052132703f) * 2.4f)) / _176);
    _191 = _188 * (select(((_146 * 0.003921569f) < 0.04045f), (_146 * 0.000303527f), exp2(log2((_146 * 0.003717127f) + 0.052132703f) * 2.4f)) / _176);
    _192 = WaveReadLaneFirst(_materialIndex);
    _200 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_192 < (uint)170000), _192, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusRadius);
    _201 = WaveReadLaneFirst(_materialIndex);
    _209 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_201 < (uint)170000), _201, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusRadius);
    _210 = WaveReadLaneFirst(_materialIndex);
    _218 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_210 < (uint)170000), _210, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusRadius);
    _219 = WaveReadLaneFirst(_materialIndex);
    _227 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_219 < (uint)170000), _219, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focus3DBlend);
    if (!(!(_200 >= 0.001f))) {
      _230 = WaveReadLaneFirst(_materialIndex);
      _238 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_230 < (uint)170000), _230, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusCenterRadius);
      _243 = WaveReadLaneFirst(_materialIndex);
      _253 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_243 < (uint)170000), _243, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusPositionOffset.x);
      _254 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_243 < (uint)170000), _243, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusPositionOffset.y);
      _255 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_243 < (uint)170000), _243, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusPositionOffset.z);
      _256 = _253 + _mainPosition.x;
      _257 = _254 + _mainPosition.y;
      _258 = _255 + _mainPosition.z;
      _259 = WaveReadLaneFirst(_materialIndex);
      _267 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_259 < (uint)170000), _259, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._playerFocusPower);
      _276 = _256 - _viewPos.x;
      _277 = _257 - _viewPos.y;
      _278 = _258 - _viewPos.z;
      _279 = dot(float3(_276, _277, _278), float3(_viewDir.x, _viewDir.y, _viewDir.z));
      _280 = _127 - _256;
      _281 = _128 - _257;
      _282 = _129 - _258;
      _292 = saturate((sqrt(((_281 * _281) + (_280 * _280)) + (_282 * _282)) - _238) / max(0.001f, _200));  // [sem: expr_sat]
      if (_227 < 1.0f) {
        _322 = mad((_viewProjRelative[3].z), _278, mad((_viewProjRelative[3].y), _277, ((_viewProjRelative[3].x) * _276))) + (_viewProjRelative[3].w);
        _323 = (mad((_viewProjRelative[0].z), _278, mad((_viewProjRelative[0].y), _277, ((_viewProjRelative[0].x) * _276))) + (_viewProjRelative[0].w)) / _322;
        _327 = 0.5f - (((mad((_viewProjRelative[1].z), _278, mad((_viewProjRelative[1].y), _277, ((_viewProjRelative[1].x) * _276))) + (_viewProjRelative[1].w)) / _322) * 0.5f);
        _337 = ((_view[0].x) * _200) + _276;
        _338 = ((_view[0].y) * _200) + _277;
        _339 = ((_view[0].z) * _200) + _278;
        _351 = mad((_viewProjRelative[3].z), _339, mad((_viewProjRelative[3].y), _338, (_337 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _357 = (0.5f - (((mad((_viewProjRelative[1].z), _339, mad((_viewProjRelative[1].y), _338, (_337 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _351) * 0.5f)) - _327;
        _358 = _28 * 0.5f;
        _359 = _358 * (((mad((_viewProjRelative[0].z), _339, mad((_viewProjRelative[0].y), _338, (_337 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _351) - _323);
        _367 = ((_view[0].x) * _238) + _276;
        _368 = ((_view[0].y) * _238) + _277;
        _369 = ((_view[0].z) * _238) + _278;
        _381 = mad((_viewProjRelative[3].z), _369, mad((_viewProjRelative[3].y), _368, (_367 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _387 = (0.5f - (((mad((_viewProjRelative[1].z), _369, mad((_viewProjRelative[1].y), _368, (_367 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _381) * 0.5f)) - _327;
        _388 = _358 * (((mad((_viewProjRelative[0].z), _369, mad((_viewProjRelative[0].y), _368, (_367 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _381) - _323);
        _395 = TEXCOORD.y - _327;
        _396 = ((TEXCOORD.x + -0.5f) - (_323 * 0.5f)) * _28;
        // [sem: expr_sat]
        _404 = saturate((sqrt((_395 * _395) + (_396 * _396)) - sqrt((_387 * _387) + (_388 * _388))) / max(0.001f, sqrt((_357 * _357) + (_359 * _359))));
        _409 = (lerp(_404, _292, _227));  // [sem: blended]
        _410 = _238;
        _411 = _267;
        _412 = _256;
        _413 = _257;
        _414 = _258;
        _415 = _279;
      } else {
        _409 = _292;  // [sem: blended]
        _410 = _238;
        _411 = _267;
        _412 = _256;
        _413 = _257;
        _414 = _258;
        _415 = _279;
      }
    } else {
      _409 = 1.0f;  // [sem: blended]
      _410 = 0.0f;
      _411 = 1.0f;
      _412 = 0.0f;
      _413 = 0.0f;
      _414 = 0.0f;
      _415 = 1.0f;
    }
    if (!(!(_209 >= 0.001f))) {
      _418 = WaveReadLaneFirst(_materialIndex);
      _426 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_418 < (uint)170000), _418, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusCenterRadius);
      _431 = WaveReadLaneFirst(_materialIndex);
      _441 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_431 < (uint)170000), _431, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusPositionOffset.x);
      _442 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_431 < (uint)170000), _431, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusPositionOffset.y);
      _443 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_431 < (uint)170000), _431, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusPositionOffset.z);
      _444 = _441 + _targetFocusPosition.x;
      _445 = _442 + _targetFocusPosition.y;
      _446 = _443 + _targetFocusPosition.z;
      _447 = WaveReadLaneFirst(_materialIndex);
      _455 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_447 < (uint)170000), _447, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._targetFocusPower);
      _464 = _444 - _viewPos.x;
      _465 = _445 - _viewPos.y;
      _466 = _446 - _viewPos.z;
      _467 = dot(float3(_464, _465, _466), float3(_viewDir.x, _viewDir.y, _viewDir.z));
      _468 = _127 - _444;
      _469 = _128 - _445;
      _470 = _129 - _446;
      _480 = saturate((sqrt(((_469 * _469) + (_468 * _468)) + (_470 * _470)) - _426) / max(0.001f, _209));  // [sem: expr_sat]
      if (_227 < 1.0f) {
        _510 = mad((_viewProjRelative[3].z), _466, mad((_viewProjRelative[3].y), _465, ((_viewProjRelative[3].x) * _464))) + (_viewProjRelative[3].w);
        _511 = (mad((_viewProjRelative[0].z), _466, mad((_viewProjRelative[0].y), _465, ((_viewProjRelative[0].x) * _464))) + (_viewProjRelative[0].w)) / _510;
        _515 = 0.5f - (((mad((_viewProjRelative[1].z), _466, mad((_viewProjRelative[1].y), _465, ((_viewProjRelative[1].x) * _464))) + (_viewProjRelative[1].w)) / _510) * 0.5f);
        _525 = ((_view[0].x) * _209) + _464;
        _526 = ((_view[0].y) * _209) + _465;
        _527 = ((_view[0].z) * _209) + _466;
        _539 = mad((_viewProjRelative[3].z), _527, mad((_viewProjRelative[3].y), _526, (_525 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _545 = (0.5f - (((mad((_viewProjRelative[1].z), _527, mad((_viewProjRelative[1].y), _526, (_525 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _539) * 0.5f)) - _515;
        _546 = _28 * 0.5f;
        _547 = _546 * (((mad((_viewProjRelative[0].z), _527, mad((_viewProjRelative[0].y), _526, (_525 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _539) - _511);
        _555 = ((_view[0].x) * _426) + _464;
        _556 = ((_view[0].y) * _426) + _465;
        _557 = ((_view[0].z) * _426) + _466;
        _569 = mad((_viewProjRelative[3].z), _557, mad((_viewProjRelative[3].y), _556, (_555 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _575 = (0.5f - (((mad((_viewProjRelative[1].z), _557, mad((_viewProjRelative[1].y), _556, (_555 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _569) * 0.5f)) - _515;
        _576 = _546 * (((mad((_viewProjRelative[0].z), _557, mad((_viewProjRelative[0].y), _556, (_555 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _569) - _511);
        _583 = TEXCOORD.y - _515;
        _584 = ((TEXCOORD.x + -0.5f) - (_511 * 0.5f)) * _28;
        // [sem: expr_sat]
        _592 = saturate((sqrt((_583 * _583) + (_584 * _584)) - sqrt((_575 * _575) + (_576 * _576))) / max(0.001f, sqrt((_545 * _545) + (_547 * _547))));
        _597 = (lerp(_592, _480, _227));  // [sem: blended]
      } else {
        _597 = _480;  // [sem: blended]
      }
      _603 = ((saturate(_467) * (_597 + -1.0f)) + 1.0f);
      _604 = _426;
      _605 = _455;
      _606 = _444;
      _607 = _445;
      _608 = _446;
      _609 = _467;
    } else {
      _603 = 1.0f;
      _604 = 0.0f;
      _605 = 1.0f;
      _606 = 0.0f;
      _607 = 0.0f;
      _608 = 0.0f;
      _609 = 1.0f;
    }
    if (!(!(_218 >= 0.001f))) {
      _612 = WaveReadLaneFirst(_materialIndex);
      _620 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_612 < (uint)170000), _612, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusCenterRadius);
      _621 = WaveReadLaneFirst(_materialIndex);
      _631 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_621 < (uint)170000), _621, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusPosition.x);
      _632 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_621 < (uint)170000), _621, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusPosition.y);
      _633 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_621 < (uint)170000), _621, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusPosition.z);
      _634 = WaveReadLaneFirst(_materialIndex);
      _642 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_634 < (uint)170000), _634, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._worldFocusPower);
      _651 = _631 - _viewPos.x;
      _652 = _632 - _viewPos.y;
      _653 = _633 - _viewPos.z;
      _655 = _127 - _631;
      _656 = _128 - _632;
      _657 = _129 - _633;
      _667 = saturate((sqrt(((_656 * _656) + (_655 * _655)) + (_657 * _657)) - _620) / max(0.001f, _218));  // [sem: expr_sat]
      if (_227 < 1.0f) {
        _697 = mad((_viewProjRelative[3].z), _653, mad((_viewProjRelative[3].y), _652, ((_viewProjRelative[3].x) * _651))) + (_viewProjRelative[3].w);
        _698 = (mad((_viewProjRelative[0].z), _653, mad((_viewProjRelative[0].y), _652, ((_viewProjRelative[0].x) * _651))) + (_viewProjRelative[0].w)) / _697;
        _702 = 0.5f - (((mad((_viewProjRelative[1].z), _653, mad((_viewProjRelative[1].y), _652, ((_viewProjRelative[1].x) * _651))) + (_viewProjRelative[1].w)) / _697) * 0.5f);
        _712 = ((_view[0].x) * _218) + _651;
        _713 = ((_view[0].y) * _218) + _652;
        _714 = ((_view[0].z) * _218) + _653;
        _726 = mad((_viewProjRelative[3].z), _714, mad((_viewProjRelative[3].y), _713, (_712 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _732 = (0.5f - (((mad((_viewProjRelative[1].z), _714, mad((_viewProjRelative[1].y), _713, (_712 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _726) * 0.5f)) - _702;
        _733 = _28 * 0.5f;
        _734 = _733 * (((mad((_viewProjRelative[0].z), _714, mad((_viewProjRelative[0].y), _713, (_712 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _726) - _698);
        _742 = ((_view[0].x) * _620) + _651;
        _743 = ((_view[0].y) * _620) + _652;
        _744 = ((_view[0].z) * _620) + _653;
        _756 = mad((_viewProjRelative[3].z), _744, mad((_viewProjRelative[3].y), _743, (_742 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _762 = (0.5f - (((mad((_viewProjRelative[1].z), _744, mad((_viewProjRelative[1].y), _743, (_742 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _756) * 0.5f)) - _702;
        _763 = _733 * (((mad((_viewProjRelative[0].z), _744, mad((_viewProjRelative[0].y), _743, (_742 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _756) - _698);
        _770 = TEXCOORD.y - _702;
        _771 = ((TEXCOORD.x + -0.5f) - (_698 * 0.5f)) * _28;
        // [sem: expr_sat]
        _779 = saturate((sqrt((_770 * _770) + (_771 * _771)) - sqrt((_762 * _762) + (_763 * _763))) / max(0.001f, sqrt((_732 * _732) + (_734 * _734))));
        _784 = (lerp(_779, _667, _227));  // [sem: blended]
      } else {
        _784 = _667;  // [sem: blended]
      }
      _790 = ((saturate(dot(float3(_651, _652, _653), float3(_viewDir.x, _viewDir.y, _viewDir.z))) * (_784 + -1.0f)) + 1.0f);
      _791 = _642;
    } else {
      _790 = 1.0f;
      _791 = 1.0f;
    }
    _792 = WaveReadLaneFirst(_materialIndex);
    _800 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_792 < (uint)170000), _792, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._connectPlayerTargetDistance);
    if ((_209 >= 0.001f) && ((_200 >= 0.001f) && (_800 >= 0.01f))) {
      _807 = WaveReadLaneFirst(_materialIndex);
      _815 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_807 < (uint)170000), _807, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._connectPlayerTargetPower);
      _816 = _410 + _200;
      _817 = _604 + _209;
      _818 = _606 - _412;
      _819 = _607 - _413;
      _820 = _608 - _414;
      _821 = _127 - _412;
      _822 = _128 - _413;
      _823 = _129 - _414;
      // [sem: expr_sat]
      _827 = saturate(dot(float3(_818, _819, _820), float3(_821, _822, _823)) / dot(float3(_818, _819, _820), float3(_818, _819, _820)));
      _834 = _821 - (_827 * _818);
      _835 = _822 - (_827 * _819);
      _836 = _823 - (_827 * _820);
      // [sem: expr_sat]
      _845 = saturate(sqrt(((_834 * _834) + (_835 * _835)) + (_836 * _836)) / max(0.001f, ((_827 * (_817 - _816)) + _816)));
      if (_227 < 1.0f) {
        _852 = _412 - _viewPos.x;
        _853 = _413 - _viewPos.y;
        _854 = _414 - _viewPos.z;
        _882 = mad((_viewProjRelative[3].z), _854, mad((_viewProjRelative[3].y), _853, ((_viewProjRelative[3].x) * _852))) + (_viewProjRelative[3].w);
        _883 = (mad((_viewProjRelative[0].z), _854, mad((_viewProjRelative[0].y), _853, ((_viewProjRelative[0].x) * _852))) + (_viewProjRelative[0].w)) / _882;
        _888 = 0.5f - (((mad((_viewProjRelative[1].z), _854, mad((_viewProjRelative[1].y), _853, ((_viewProjRelative[1].x) * _852))) + (_viewProjRelative[1].w)) / _882) * 0.5f);
        _898 = ((_view[0].x) * _816) + _852;
        _899 = ((_view[0].y) * _816) + _853;
        _900 = ((_view[0].z) * _816) + _854;
        _912 = mad((_viewProjRelative[3].z), _900, mad((_viewProjRelative[3].y), _899, (_898 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _918 = (0.5f - (((mad((_viewProjRelative[1].z), _900, mad((_viewProjRelative[1].y), _899, (_898 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _912) * 0.5f)) - _888;
        _919 = _28 * 0.5f;
        _920 = _919 * (((mad((_viewProjRelative[0].z), _900, mad((_viewProjRelative[0].y), _899, (_898 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _912) - _883);
        _924 = sqrt((_918 * _918) + (_920 * _920));
        _925 = _606 - _viewPos.x;
        _926 = _607 - _viewPos.y;
        _927 = _608 - _viewPos.z;
        _939 = mad((_viewProjRelative[3].z), _927, mad((_viewProjRelative[3].y), _926, ((_viewProjRelative[3].x) * _925))) + (_viewProjRelative[3].w);
        _940 = (mad((_viewProjRelative[0].z), _927, mad((_viewProjRelative[0].y), _926, ((_viewProjRelative[0].x) * _925))) + (_viewProjRelative[0].w)) / _939;
        _943 = 0.5f - (((mad((_viewProjRelative[1].z), _927, mad((_viewProjRelative[1].y), _926, ((_viewProjRelative[1].x) * _925))) + (_viewProjRelative[1].w)) / _939) * 0.5f);
        _947 = ((_view[0].x) * _817) + _925;
        _948 = ((_view[0].y) * _817) + _926;
        _949 = ((_view[0].z) * _817) + _927;
        _961 = mad((_viewProjRelative[3].z), _949, mad((_viewProjRelative[3].y), _948, (_947 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
        _967 = (0.5f - (((mad((_viewProjRelative[1].z), _949, mad((_viewProjRelative[1].y), _948, (_947 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _961) * 0.5f)) - _943;
        _968 = _919 * (((mad((_viewProjRelative[0].z), _949, mad((_viewProjRelative[0].y), _948, (_947 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _961) - _940);
        _988 = ((float)((int)((int)((int)(uint)((int)(_609 > 0.0f))) - (int)((int)(uint)((int)(_609 < 0.0f)))))) * ((float)((int)((int)((int)(uint)((int)(_415 > 0.0f))) - (int)((int)(uint)((int)(_415 < 0.0f))))));
        _989 = ((_940 - _883) * 0.5f) * _988;
        _990 = (_943 - _888) * _988;
        _991 = TEXCOORD.x - ((_883 * 0.5f) + 0.5f);
        _992 = TEXCOORD.y - _888;
        _996 = saturate(dot(float2(_991, _992), float2(_989, _990)) / dot(float2(_989, _990), float2(_989, _990)));  // [sem: expr_sat]
        _1003 = _992 - (_996 * _990);
        _1004 = (_991 - (_996 * _989)) * _28;
        // [sem: expr_sat]
        _1011 = saturate(sqrt((_1004 * _1004) + (_1003 * _1003)) / max(0.001f, ((_996 * (sqrt((_967 * _967) + (_968 * _968)) - _924)) + _924)));
        _1016 = (lerp(_1011, _845, _227));  // [sem: blended]
      } else {
        _1016 = _845;  // [sem: blended]
      }
      _1017 = _412 - _606;
      _1018 = _413 - _607;
      _1019 = _414 - _608;
      _1026 = _800 * 0.5f;
      _1033 = ((1.0f - saturate((sqrt(((_1018 * _1018) + (_1017 * _1017)) + (_1019 * _1019)) - _1026) / _1026)) * _1016);
      _1034 = _815;
    } else {
      _1033 = 1.0f;
      _1034 = 1.0f;
    }
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _1037 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _1044 = (pow(_1037.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _1045 = (pow(_1037.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _1066 = WaveReadLaneFirst(_materialIndex);
    _1074 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1066 < (uint)170000), _1066, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._maskBlurPower);
    _1118 = ((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127) + (int)(-52)) > (uint)15);
    _1126 = WaveReadLaneFirst(_materialIndex);
    _1134 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1126 < (uint)170000), _1126, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._maskRatio);
    _1137 = (_1134 * (saturate(((1.0f - saturate(exp2(log2(max(0.0f, (_1045 + -0.8359375f)) / (18.851562f - (_1045 * 18.6875f))) * 6.277395f) * 10000.0f)) + exp2(log2(1.0f - saturate(exp2(log2(max(0.0f, (_1044 + -0.8359375f)) / (18.851562f - (_1044 * 18.6875f))) * 6.277395f) * 10000.0f)) * _1074)) + ((float)((bool)((!((1.0f - saturate(ceil(((_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x))) + 0.05f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * TEXCOORD.x)), ((int)(_customRenderPassSizeInvSize.y * TEXCOORD.y)), 0)))).x)))))) == 0.0f)) && _1118)))) + -1.0f)) + 1.0f;
    _1138 = WaveReadLaneFirst(_materialIndex);
    _1146 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1138 < (uint)170000), _1138, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusCharacterMaterialMask);
    if (!(!(_1146 >= 0.001f))) {
      _1150 = WaveReadLaneFirst(_materialIndex);
      _1158 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1150 < (uint)170000), _1150, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusCharacterMaterialMask);
      _1163 = ((_1158 * (((float)((bool)(_1118))) - _1137)) + _1137);
    } else {
      _1163 = _1137;
    }
    _1176 = _1163 * _1163;
    _1182 = WaveReadLaneFirst(_materialIndex);
    _1190 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1182 < (uint)170000), _1182, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusSceneDepthFade);
    _1195 = WaveReadLaneFirst(_materialIndex);
    _1203 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1195 < (uint)170000), _1195, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusColorRemap);
    _1205 = min(max(_1203, -1.0f), 1.0f);
    if (!(_1205 == 0.0f)) {
      if ((!(_191 == 0.0f)) || ((!(_189 == 0.0f)) || (!(_190 == 0.0f)))) {
        _1217 = dot(float3(_68, _69, _70), float3(0.299f, 0.587f, 0.114f)) * rsqrt(dot(float3(_189, _190, _191), float3(_189, _190, _191)));
        _1231 = ((((_1217 * _189) - _68) * _1205) + _68);
        _1232 = ((((_1217 * _190) - _69) * _1205) + _69);
        _1233 = ((((_1217 * _191) - _70) * _1205) + _70);
      } else {
        _1231 = _68;
        _1232 = _69;
        _1233 = _70;
      }
    } else {
      _1231 = _68;
      _1232 = _69;
      _1233 = _70;
    }
    _1234 = WaveReadLaneFirst(_materialIndex);
    _1242 = WaveReadLaneFirst(BindlessParameters_PostProcessFocus[((int)((uint)((uint)(select(((uint)_1234 < (uint)170000), _1234, 0))) + (uint)(0)))].BindlessParameters_PostProcessFocus._focusBackgroundSaturation);
    _1246 = (((((_1176 * _1176) * (pow(_409, _411))) * (pow(_603, _605))) * (pow(_1033, _1034))) * (pow(_790, _791))) * exp2(log2(1.0f - _84.x) * _1190);
    _1248 = (_1246 * 0.5f) * (1.0f - min(max(_1242, -1.0f), 1.0f));
    _1249 = dot(float3(_1231, _1232, _1233), float3(0.2126f, 0.7152f, 0.0722f));
    _1256 = (_1248 * (_1249 - _1231)) + _1231;
    _1257 = (_1248 * (_1249 - _1232)) + _1232;
    _1258 = (_1248 * (_1249 - _1233)) + _1233;
    _1259 = _1246 * _79;
    _1270 = (lerp(_1256, _189, _1259));  // [sem: blended]
    _1271 = (lerp(_1257, _190, _1259));  // [sem: blended]
    _1272 = (lerp(_1258, _191, _1259));  // [sem: blended]
  } else {
    _1270 = _68;  // [sem: blended]
    _1271 = _69;  // [sem: blended]
    _1272 = _70;  // [sem: blended]
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
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1270, _1271, _1272));
    _1549 = _rndx_tonemapped_color.x;
    _1550 = _rndx_tonemapped_color.y;
    _1551 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1557 = 1.0f - abs(_etcParams.w);
      _1561 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1562 = (_1557 * _1549) + _1561;
      _1563 = (_1557 * _1550) + _1561;
      _1564 = (_1557 * _1551) + _1561;
      if (_colorGradingParams.w > 0.0f) {
        _1569 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1586 = (((max(0.0f, (1.0f - _1562)) - _1562) * _1569) + _1562);
        _1587 = (((max(0.0f, (1.0f - _1563)) - _1563) * _1569) + _1563);
        _1588 = (((max(0.0f, (1.0f - _1564)) - _1564) * _1569) + _1564);
      } else {
        _1586 = _1562;
        _1587 = _1563;
        _1588 = _1564;
      }
      _1594 = _userImageAdjust.y + 1.0f;
      _1598 = _userImageAdjust.x + 0.5f;
      _1599 = ((_1586 + -0.5f) * _1594) + _1598;
      _1600 = ((_1587 + -0.5f) * _1594) + _1598;
      _1601 = ((_1588 + -0.5f) * _1594) + _1598;
      _1631 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1642 = exp2(log2(saturate(mad(_colorBlind0.z, _1601, mad(_colorBlind0.y, _1600, (_colorBlind0.x * _1599))))) * _1631);
      _1643 = exp2(log2(saturate(mad(_colorBlind1.z, _1601, mad(_colorBlind1.y, _1600, (_colorBlind1.x * _1599))))) * _1631);
      _1644 = exp2(log2(saturate(mad(_colorBlind2.z, _1601, mad(_colorBlind2.y, _1600, (_colorBlind2.x * _1599))))) * _1631);
    } else {
      _1642 = _1549;
      _1643 = _1550;
      _1644 = _1551;
    }
  } else {
    _1642 = _1270;
    _1643 = _1271;
    _1644 = _1272;
  }
  if (_etcParams.y > 1.0f) {
    _1653 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1654 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1658 = saturate(1.0f - (dot(float2(_1653, _1654), float2(_1653, _1654)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _1663 = (_1658 * _1642);
    _1664 = (_1658 * _1643);
    _1665 = (_1658 * _1644);
  } else {
    _1663 = _1642;
    _1664 = _1643;
    _1665 = _1644;
  }
  if (_1289 && (_etcParams.z > 0.0f)) {
    _1695 = select((_1663 <= 0.0031308f), (_1663 * 12.92f), (((pow(_1663, 0.41666666f)) * 1.055f) + -0.055f));
    _1696 = select((_1664 <= 0.0031308f), (_1664 * 12.92f), (((pow(_1664, 0.41666666f)) * 1.055f) + -0.055f));
    _1697 = select((_1665 <= 0.0031308f), (_1665 * 12.92f), (((pow(_1665, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1695 = _1663;
    _1696 = _1664;
    _1697 = _1665;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1702 = (float)((uint)((uint)(_1273)));
    if (!(_1702 < _viewDir.w)) {
      if (!(_1702 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1711 = _1695;
        _1712 = _1696;
        _1713 = _1697;
      } else {
        _1711 = 0.0f;
        _1712 = 0.0f;
        _1713 = 0.0f;
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
  _1723 = exp2(log2(_1711 * 0.0001f) * 0.15930176f);
  _1724 = exp2(log2(_1712 * 0.0001f) * 0.15930176f);
  _1725 = exp2(log2(_1713 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1723 * 18.6875f) + 1.0f)) * ((_1723 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1724 * 18.6875f) + 1.0f)) * ((_1724 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1725 * 18.6875f) + 1.0f)) * ((_1725 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1286;
  return SV_Target;
}
