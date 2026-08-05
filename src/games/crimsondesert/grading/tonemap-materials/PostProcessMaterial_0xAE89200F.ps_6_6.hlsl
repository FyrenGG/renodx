struct PostProcessBerserk_CDStruct {
  float _scanRadius;
  float _fishEyeIntensity;
  float _bloodLineIntensity;
  float _auraIntensity;
  float _centerMaskWidth;
  float _fireIntensity;
  float _sphereMaskRatio;
  float _fogIntensity;
  float _scanRadiusEnd;
  float _ringMaskRadius;
  float _ringMaskIntensity;
  float _radialBlurIntensity;
  uint _noiseTex;
  uint _noiseTex2;
  uint _distortionTex;
  uint _marbleCrackTex;
  float _sphereMaskEndRatio;
  float _sphereMaskEndNoiseIntensity;
  float _sceneColorDistortionIntensity;
  float _characterMaskIntensity;
  uint _enemyGradientTex;
  uint _enemyMaskColor;
  float _flashRatio;
  uint _paperTex;
};

struct BindlessParameters_PostProcessBerserk_CD {
  PostProcessBerserk_CDStruct BindlessParameters_PostProcessBerserk_CD;
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

typedef BindlessParameters_PostProcessBerserk_CD BindlessParameters_PostProcessBerserk_CD_t;
ConstantBuffer<BindlessParameters_PostProcessBerserk_CD_t> BindlessParameters_PostProcessBerserk_CD[] : register(b0, space100);

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
  float _31;
  float _35;
  int _38;
  float _46;
  float _99;
  float _100;
  float _103;
  float _104;
  float _424;
  float _425;
  float _426;
  float _492;
  float _583;
  float _584;
  float _585;
  float _636;
  float _637;
  float _638;
  float _1179;
  float _1180;
  float _1181;
  float _1182;
  float _1183;
  float _1207;
  float _1208;
  float _1209;
  float _1210;
  float _1211;
  float _1212;
  float _1213;
  float _1214;
  float _1215;
  float _1296;
  float _1501;
  float _1502;
  float _1503;
  float _1596;
  float _1597;
  float _1598;
  float _1652;
  float _1653;
  float _1654;
  float _1673;
  float _1674;
  float _1675;
  float _1705;
  float _1706;
  float _1707;
  float _1721;
  float _1722;
  float _1723;
  float _53;
  float _56;
  float _57;
  float _58;
  float _59;
  float _60;
  float _61;
  float _65;
  float _69;
  float _74;
  float _76;
  float _85;
  float _89;
  float _91;
  float _106;
  float _108;
  float _113;
  float _125;
  float _134;
  float _143;
  float _152;
  float _164;
  float _174;
  float _184;
  float _194;
  float _196;
  float _197;
  float _198;
  float _199;
  float4 _202;
  float _208;
  float _211;
  float _220;
  int _223;
  float _231;
  float _237;
  float _238;
  float _239;
  float _240;
  float _241;
  float _242;
  float _246;
  float _247;
  float _254;
  float _257;
  float _260;
  float _264;
  float _268;
  int _271;
  int _279;
  float4 _290;
  int _295;
  int _303;
  float4 _314;
  float _317;
  float _318;
  float _320;
  float _322;
  float _323;
  float _324;
  float _327;
  int _330;
  float _338;
  float4 _341;
  float _347;
  float _350;
  float _353;
  float4 _367;
  float _373;
  float _376;
  float _379;
  float _430;
  float _431;
  float _432;
  float _449;
  int _452;
  float _460;
  float _466;
  float _479;
  float _495;
  float _501;
  float _504;
  int _507;
  int _515;
  float4 _523;
  float _526;
  float _527;
  int _530;
  int _538;
  int _541;
  int _549;
  int _552;
  float _560;
  float _563;
  float _574;
  float _578;
  int _588;
  float _596;
  float _628;
  float _632;
  uint _643;
  uint _647;
  uint4 _649;
  float4 _652;
  float _659;
  float _663;
  float _667;
  float _669;
  float _670;
  float _671;
  float _672;
  float _677;
  float _681;
  float _683;
  float _685;
  float _689;
  float _691;
  float _692;
  float _693;
  float _694;
  float _696;
  float _699;
  float _700;
  float _701;
  float _702;
  float _708;
  float _714;
  float _719;
  float _721;
  int _724;
  int _732;
  float _735;
  float _737;
  float _739;
  float _741;
  float4 _748;
  float _751;
  float _753;
  float _760;
  int _763;
  int _771;
  float _784;
  float _786;
  float _788;
  float _790;
  float4 _797;
  float _805;
  float _813;
  float _814;
  float _817;
  float _819;
  float _821;
  float _830;
  float _837;
  int _840;
  float _848;
  float _851;
  float _853;
  float _855;
  int _858;
  float _866;
  int _869;
  float _877;
  float _880;
  float _882;
  float _884;
  int _887;
  float _895;
  int _898;
  float _906;
  float _931;
  float _948;
  int _951;
  int _959;
  float _977;
  uint2 _979;
  float _982;
  uint _988;
  uint _993;
  uint4 _995;
  float4 _998;
  float _1005;
  float _1009;
  float _1013;
  float _1015;
  float _1016;
  float _1017;
  float _1018;
  float _1023;
  float _1027;
  float _1029;
  float _1031;
  float _1035;
  float _1037;
  float _1038;
  float _1039;
  float _1040;
  float _1042;
  float _1045;
  float _1046;
  float _1047;
  float _1048;
  float _1054;
  float _1060;
  float _1065;
  float _1067;
  float _1068;
  float _1069;
  float _1070;
  float _1073;
  float _1075;
  float _1077;
  float _1082;
  int _1104;
  int _1112;
  float _1115;
  float _1118;
  float _1120;
  float _1140;
  float _1196;
  int _1218;
  float _1226;
  float _1232;
  float _1250;
  float _1268;
  float _1282;
  uint _1283;
  bool _1299;
  float _1305;
  float _1324;
  float _1340;
  float _1356;
  float _1357;
  float _1361;
  float _1364;
  float _1367;
  float _1374;
  float _1381;
  float _1388;
  float _1389;
  float _1390;
  float _1391;
  float _1392;
  float _1393;
  float _1394;
  float _1410;
  float _1426;
  float _1442;
  float _1443;
  float _1444;
  float _1445;
  float _1446;
  float _1463;
  float _1464;
  float _1465;
  float _1466;
  float _1469;
  float _1472;
  float _1476;
  float _1480;
  float _1484;
  float _1504;
  float _1516;
  float _1528;
  float _1540;
  float _1547;
  float _1554;
  float _1561;
  float _1567;
  float _1568;
  float _1570;
  float _1572;
  float _1574;
  float _1579;
  float _1600;
  float _1602;
  float _1605;
  float _1608;
  float _1611;
  float _1617;
  float _1659;
  float _1662;
  float _1668;
  float _1710;
  float _1727;
  float _1731;
  float _1735;
  _31 = 1.0f / max(0.0001f, _exposure0.x);
  _35 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_38 < (uint)170000), _38, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._fishEyeIntensity);
  if (!(!(abs(_46) >= 0.001f))) {
    _53 = (_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
    _56 = (_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x;
    _57 = 0.5f / _35;
    _58 = _53 + -0.5f;
    _59 = _56 - _57;
    _60 = dot(float2(_58, _59), float2(_58, _59));
    _61 = sqrt(_60);
    if (_46 > 0.0f) {
      _69 = sqrt(dot(float2(0.5f, _57), float2(0.5f, _57)));
      _74 = tan(_69 * _46);
      _76 = tan(_61 * _46) * (rsqrt(_60) * _69);
      _99 = (((_76 * _59) / _74) + _57);
      _100 = (((_76 * _58) / _74) + 0.5f);
    } else {
      _65 = select((_35 < 1.0f), 0.5f, _57);
      if (_46 < 0.0f) {
        _85 = _46 * -10.0f;
        _89 = atan(_65 * _85);
        _91 = atan(_61 * _85) * (rsqrt(_60) * _65);
        _99 = (((_91 * _59) / _89) + _57);
        _100 = (((_91 * _58) / _89) + 0.5f);
      } else {
        _99 = _56;
        _100 = _53;
      }
    }
    _103 = (_99 * _35);
    _104 = _100;
  } else {
    _103 = TEXCOORD.y;
    _104 = TEXCOORD.x;
  }
  _106 = (_104 * 2.0f) + -1.0f;
  _108 = 1.0f - (_103 * 2.0f);
  _113 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_104, _103))).x));
  _125 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _113, mad((_invViewProj[3].y), _108, ((_invViewProj[3].x) * _106)));
  _134 = (mad((_invViewProj[0].z), _113, mad((_invViewProj[0].y), _108, ((_invViewProj[0].x) * _106))) + (_invViewProj[0].w)) / _125;
  _143 = (mad((_invViewProj[1].z), _113, mad((_invViewProj[1].y), _108, ((_invViewProj[1].x) * _106))) + (_invViewProj[1].w)) / _125;
  _152 = (mad((_invViewProj[2].z), _113, mad((_invViewProj[2].y), _108, ((_invViewProj[2].x) * _106))) + (_invViewProj[2].w)) / _125;
  _164 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _113, mad((_invViewProjRelative[3].y), _108, ((_invViewProjRelative[3].x) * _106)));
  _174 = -0.0f - ((mad((_invViewProjRelative[0].z), _113, mad((_invViewProjRelative[0].y), _108, ((_invViewProjRelative[0].x) * _106))) + (_invViewProjRelative[0].w)) / _164);
  _184 = -0.0f - ((mad((_invViewProjRelative[1].z), _113, mad((_invViewProjRelative[1].y), _108, ((_invViewProjRelative[1].x) * _106))) + (_invViewProjRelative[1].w)) / _164);
  _194 = -0.0f - ((mad((_invViewProjRelative[2].z), _113, mad((_invViewProjRelative[2].y), _108, ((_invViewProjRelative[2].x) * _106))) + (_invViewProjRelative[2].w)) / _164);
  _196 = rsqrt(dot(float3(_174, _184, _194), float3(_174, _184, _194)));  // [sem: invLength]
  _197 = _196 * _174;
  _198 = _196 * _184;
  _199 = _196 * _194;
  _202 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_104, _103));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _208 = (pow(_202.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _211 = (pow(_202.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _220 = exp2(log2(max(0.0f, (_211 + -0.8359375f)) / (18.851562f - (_211 * 18.6875f))) * 6.277395f) * 10000.0f;
  _223 = WaveReadLaneFirst(_materialIndex);
  _231 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_223 < (uint)170000), _223, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._centerMaskWidth);
  _237 = ((((1.0f - TEXCOORD.x) * TEXCOORD.x) * TEXCOORD.y) * (1.0f - TEXCOORD.y)) * _231;
  _238 = _237 * 25.0f;
  _239 = TEXCOORD.x + -0.5f;
  _240 = TEXCOORD.y + -0.5f;
  _241 = abs(_239);
  _242 = abs(_240);
  _246 = min(_241, _242) / max(max(_241, _242), 1e-08f);
  _247 = _246 * _246;
  _254 = ((_247 * _246) * (((0.15931422f - (_247 * 0.046496473f)) * _247) + -0.32762277f)) + _246;
  _257 = select((_242 > _241), (1.5707964f - _254), _254);
  _260 = select((_239 < 0.0f), (3.1415927f - _257), _257);
  _264 = sqrt((_240 * _240) + (_239 * _239));
  _268 = select((_240 < 0.0f), (-0.0f - _260), _260) * 0.9549296f;
  _271 = WaveReadLaneFirst(_materialIndex);
  _279 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_271 < (uint)170000), _271, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
  _290 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_279 < (uint)65000), _279, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_199, ((_time.x * 0.05f) + _198)));
  _295 = WaveReadLaneFirst(_materialIndex);
  _303 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_295 < (uint)170000), _295, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
  _314 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_303 < (uint)65000), _303, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.15f) + _198), _197));
  _317 = _314.x + _290.x;
  _318 = _314.y + _290.y;
  _320 = abs(dot(float3(_197, _198, _199), float3(0.0f, 1.0f, 0.0f)));
  _322 = abs(dot(float3(_197, _198, _199), float3(0.0f, 0.0f, 1.0f)));
  _323 = _320 * _317;
  _324 = _320 * _318;
  _327 = (_317 - _323) + (_322 * _323);
  _330 = WaveReadLaneFirst(_materialIndex);
  _338 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_330 < (uint)170000), _330, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._sceneColorDistortionIntensity);
  _341 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_104, _103));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _347 = (pow(_341.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _350 = (pow(_341.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _353 = (pow(_341.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  if (_338 > 0.0001f) {
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _367 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((_338 * ((_327 * 2.0f) + -0.99607843f)) + _104), ((_338 * ((((_318 - _324) + (_324 * _322)) * 2.0f) + -0.99607843f)) + _103)));
    _373 = (pow(_367.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _376 = (pow(_367.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _379 = (pow(_367.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _424 = (max(0.0f, (_379 + -0.8359375f)) / (18.851562f - (_379 * 18.6875f)));
    _425 = exp2(log2(max(0.0f, (_376 + -0.8359375f)) / (18.851562f - (_376 * 18.6875f))) * 6.277395f);
    _426 = exp2(log2(max(0.0f, (_373 + -0.8359375f)) / (18.851562f - (_373 * 18.6875f))) * 6.277395f);
  } else {
    _424 = (max(0.0f, (_353 + -0.8359375f)) / (18.851562f - (_353 * 18.6875f)));
    _425 = exp2(log2(max(0.0f, (_350 + -0.8359375f)) / (18.851562f - (_350 * 18.6875f))) * 6.277395f);
    _426 = exp2(log2(max(0.0f, (_347 + -0.8359375f)) / (18.851562f - (_347 * 18.6875f))) * 6.277395f);
  }
  _430 = (pow(_424, 6.277395f)) * 10000.0f;
  _431 = _425 * 10000.0f;
  _432 = _426 * 10000.0f;
  _449 = frac(frac(dot(float2(((float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(_104))))), ((float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(_103)))))), float2(0.06711056f, 0.00583715f))) * 52.982918f);
  _452 = WaveReadLaneFirst(_materialIndex);
  _460 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_452 < (uint)170000), _452, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._fireIntensity);
  if (_460 > 0.0001f) {
    _466 = _460 * (((_327 + -0.4f) * 1.3333334f) + -0.2f);
    _479 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_466 * (_449 + -0.5f)) + _104), ((_466 * (0.5f - _449)) + _103))))).x) * 0.012683313f);
    _492 = (max(0.0f, (_479 + -0.8359375f)) / (18.851562f - (_479 * 18.6875f)));
  } else {
    _492 = (max(0.0f, (_208 + -0.8359375f)) / (18.851562f - (_208 * 18.6875f)));
  }
  _495 = (pow(_492, 6.277395f));
  _501 = ((dot(float3(_432, _431, _430), float3(0.2126f, 0.7152f, 0.0722f)) - _220) * saturate(_238 * _238)) + _220;
  _504 = _time.x * 0.125f;
  _507 = WaveReadLaneFirst(_materialIndex);
  _515 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_507 < (uint)170000), _507, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._distortionTex);
  _523 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_515 < (uint)65000), _515, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_268, (_504 + _264)));
  _526 = _523.x * 0.2f;
  _527 = _523.y * 0.2f;
  _530 = WaveReadLaneFirst(_materialIndex);
  _538 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_530 < (uint)170000), _530, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._marbleCrackTex);
  _541 = WaveReadLaneFirst(_materialIndex);
  _549 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_541 < (uint)170000), _541, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._marbleCrackTex);
  _552 = WaveReadLaneFirst(_materialIndex);
  _560 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_552 < (uint)170000), _552, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._auraIntensity);
  _563 = saturate((_202.w + -0.1f) * 1.1111112f);  // [sem: expr_sat]
  _574 = ((_563 * _563) * (3.0f - (_563 * 2.0f))) * (1.0f - saturate(exp2(log2(_237 * 15.0f) * 0.07f)));
  if (_560 > 0.0001f) {
    _578 = (_560 * _31) * _574;
    _583 = (_578 * 0.0100228265f);
    _584 = (_578 * 0.033104755f);
    _585 = (_578 * 0.3185468f);
  } else {
    _583 = 0.0f;
    _584 = 0.0f;
    _585 = 0.0f;
  }
  _588 = WaveReadLaneFirst(_materialIndex);
  _596 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_588 < (uint)170000), _588, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._bloodLineIntensity);
  _628 = saturate(saturate((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_538 < (uint)65000), _538, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_526 + _268), ((_526 + _264) - (_time.x * 0.25f)))))).x) + ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_549 < (uint)65000), _549, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_527 + _268), ((_264 - _504) + _527))))).y) * 1.2f)) - (_237 * 14.0f)) * _574;
  if (_596 > 0.0001f) {
    _632 = (_596 * _31) * _628;
    _636 = 0.0f;
    _637 = (_632 * 0.44798842f);
    _638 = (_632 * 2.5371556f);
  } else {
    _636 = _628;
    _637 = _628;
    _638 = _628;
  }
  _643 = (uint)((_bufferSizeAndInvSize.x * _104) + -0.5f);
  _647 = (uint)((_bufferSizeAndInvSize.y * _103) + -0.5f);
  _649 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_643, _647, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _652 = __3__36__0__0__g_gbufferNormal.Load(int3(_643, _647, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _659 = (saturate(_652.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _663 = (saturate(_652.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _667 = (saturate(_652.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _669 = rsqrt(dot(float3(_659, _663, _667), float3(_659, _663, _667)));  // [sem: invLength]
  _670 = _669 * _659;
  _671 = _669 * _663;
  _672 = _667 * _669;
  _677 = (((float)((uint)((uint)(((uint)((uint)(_649.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _681 = (((float)((uint)((uint)(_649.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _683 = (_677 + _681) * 0.5f;
  _685 = (_677 - _681) * 0.5f;
  _689 = (1.0f - abs(_683)) - abs(_685);
  _691 = rsqrt(dot(float3(_683, _685, _689), float3(_683, _685, _689)));  // [sem: invLength]
  _692 = _691 * _683;
  _693 = _691 * _685;
  _694 = _691 * _689;
  _696 = select((_672 >= 0.0f), 1.0f, -1.0f);
  _699 = -0.0f - (1.0f / (_696 + _672));
  _700 = _671 * _699;
  _701 = _700 * _670;
  _702 = _696 * _670;
  _708 = mad(_694, _670, mad(_693, _701, ((((_702 * _670) * _699) + 1.0f) * _692)));
  _714 = mad(_694, _671, mad(_693, ((_700 * _671) + _696), ((_692 * _696) * _701)));
  _719 = mad(_694, _672, mad(_693, (-0.0f - _671), (-0.0f - (_702 * _692))));
  _721 = rsqrt(dot(float3(_708, _714, _719), float3(_708, _714, _719)));  // [sem: invLength]
  _724 = WaveReadLaneFirst(_materialIndex);
  _732 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_724 < (uint)170000), _724, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
  _735 = _time.x * -0.01f;
  _737 = _735 + (_134 * 0.02f);
  _739 = _735 + (_152 * 0.02f);
  _741 = _735 + (_143 * 0.02f);
  _748 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_732 < (uint)65000), _732, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_739, _741));
  _751 = abs(_721 * _714);
  _753 = abs(_721 * _719);
  _760 = (((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_732 < (uint)65000), _732, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_737, _739)))).x) - _748.x) * _751) + _748.x;
  _763 = WaveReadLaneFirst(_materialIndex);
  _771 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_763 < (uint)170000), _763, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex2);
  _784 = (_time.x * 0.1f) + (saturate((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_732 < (uint)65000), _732, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_741, _737)))).x) - _760) * _753) + _760) * 0.3f);
  _786 = _784 + (_134 * 0.1f);
  _788 = _784 + (_152 * 0.1f);
  _790 = _784 + (_143 * 0.1f);
  _797 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_771 < (uint)65000), _771, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_788, _790));
  _805 = (((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_771 < (uint)65000), _771, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_786, _788)))).w) - _797.w) * _751) + _797.w;
  // [sem: expr_sat]
  _813 = saturate((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_771 < (uint)65000), _771, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_790, _786)))).w) - _805) * _753) + _805);
  _814 = _813 * 3.0f;
  _817 = _134 - _mainPosition.x;
  _819 = _143 - _mainPosition.y;
  _821 = _152 - _mainPosition.z;
  _830 = 1.0f - saturate(sqrt(((_819 * _819) + (_817 * _817)) + (_821 * _821)) * 0.002f);
  _837 = ((_830 * _830) * _31) * exp2(log2(saturate(_814)) * 5.4f);
  _840 = WaveReadLaneFirst(_materialIndex);
  _848 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_840 < (uint)170000), _840, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._scanRadius);
  _851 = _mainPosition.x - _134;
  _853 = _mainPosition.y - _143;
  _855 = _mainPosition.z - _152;
  _858 = WaveReadLaneFirst(_materialIndex);
  _866 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_858 < (uint)170000), _858, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._sphereMaskRatio);
  _869 = WaveReadLaneFirst(_materialIndex);
  _877 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_869 < (uint)170000), _869, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._scanRadiusEnd);
  _880 = _mainPosition.x - _134;
  _882 = _mainPosition.y - _143;
  _884 = _mainPosition.z - _152;
  _887 = WaveReadLaneFirst(_materialIndex);
  _895 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_887 < (uint)170000), _887, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._sphereMaskEndNoiseIntensity);
  _898 = WaveReadLaneFirst(_materialIndex);
  _906 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_898 < (uint)170000), _898, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._sphereMaskEndRatio);
  // [sem: expr_sat]
  _931 = saturate(((((saturate(((1.0f - (sqrt(dot(float3(_851, _853, _855), float3(_851, _853, _855))) * (1.0f / max(1e-05f, _848)))) * 2.5000002f) - _814) + -1.0f) * _866) + 1.0f) * _906) * saturate((_895 * _813) - ((1.0f - (sqrt(dot(float3(_880, _882, _884), float3(_880, _882, _884))) * (1.0f / max(1e-05f, _877)))) * 1.4285715f)));
  if ((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _104) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _103) + -0.5f))), 0)))).x) & 127) + (int)(-52)) < (uint)16) {
    _948 = _202.w * 0.5f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _951 = WaveReadLaneFirst(_materialIndex);
    _959 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_951 < (uint)170000), _951, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
    _977 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_959 < (uint)65000), _959, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_948 + ((TEXCOORD.x * 2.0f) * _35)), ((((_time.x * 0.2f) + TEXCOORD.y) * 2.0f) + _948))))).x) + -0.2f;
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_979.x, _979.y);
    _982 = _977 * 0.018749999f;
    _988 = (uint)((_bufferSizeAndInvSize.x * (_982 + _104)) + -0.5f);
    _993 = (uint)((_bufferSizeAndInvSize.y * (_982 + _103)) + -0.5f);
    _995 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_988, _993, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
    _998 = __3__36__0__0__g_gbufferNormal.Load(int3(_988, _993, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
    _1005 = (saturate(_998.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _1009 = (saturate(_998.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _1013 = (saturate(_998.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _1015 = rsqrt(dot(float3(_1005, _1009, _1013), float3(_1005, _1009, _1013)));  // [sem: invLength]
    _1016 = _1015 * _1005;
    _1017 = _1015 * _1009;
    _1018 = _1013 * _1015;
    _1023 = (((float)((uint)((uint)(((uint)((uint)(_995.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _1027 = (((float)((uint)((uint)(_995.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _1029 = (_1023 + _1027) * 0.5f;
    _1031 = (_1023 - _1027) * 0.5f;
    _1035 = (1.0f - abs(_1029)) - abs(_1031);
    _1037 = rsqrt(dot(float3(_1029, _1031, _1035), float3(_1029, _1031, _1035)));  // [sem: invLength]
    _1038 = _1037 * _1029;
    _1039 = _1037 * _1031;
    _1040 = _1037 * _1035;
    _1042 = select((_1018 >= 0.0f), 1.0f, -1.0f);
    _1045 = -0.0f - (1.0f / (_1042 + _1018));
    _1046 = _1017 * _1045;
    _1047 = _1046 * _1016;
    _1048 = _1042 * _1016;
    _1054 = mad(_1040, _1016, mad(_1039, _1047, ((((_1048 * _1016) * _1045) + 1.0f) * _1038)));
    _1060 = mad(_1040, _1017, mad(_1039, ((_1046 * _1017) + _1042), ((_1038 * _1042) * _1047)));
    _1065 = mad(_1040, _1018, mad(_1039, (-0.0f - _1017), (-0.0f - (_1048 * _1038))));
    _1067 = rsqrt(dot(float3(_1054, _1060, _1065), float3(_1054, _1060, _1065)));  // [sem: invLength]
    _1068 = _1067 * _1054;
    _1069 = _1067 * _1060;
    _1070 = _1067 * _1065;
    _1073 = _mainPosition.x - _134;
    _1075 = _mainPosition.y - _143;
    _1077 = _mainPosition.z - _152;
    _1082 = saturate(5.0000005f - (sqrt(dot(float3(_1073, _1075, _1077), float3(_1073, _1075, _1077))) * 0.12500001f));  // [sem: expr_sat]
    if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_979.x))))))) + 0.5f) * _104)), ((int)((((float)((int)((int)((float)((int)((int)(_979.y))))))) + 0.5f) * _103)), 0)))).x) & 255) == _renderPassEnemy) {
      _1104 = WaveReadLaneFirst(_materialIndex);
      _1112 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_1104 < (uint)170000), _1104, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._enemyMaskColor);
      _1115 = (float)((uint)((uint)(((uint)((uint)(_1112)) >> 16) & 255)));
      _1118 = (float)((uint)((uint)(((uint)((uint)(_1112)) >> 8) & 255)));
      _1120 = (float)((uint)((uint)(_1112 & 255)));
      _1140 = (((((_977 * 3.25f) + 1.3f) * _31) * _1082) * exp2(log2(saturate(_327 * 0.5f)) * 2.4f)) * exp2(log2(abs(dot(float3(_1068, _1069, _1070), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 5.0f);
      _1179 = (_1140 * 0.15f);
      _1180 = _1140;
      _1181 = (((select(((_1120 * 0.003921569f) < 0.04045f), (_1120 * 0.000303527f), exp2(log2((_1120 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f) * _1082) + 1.0f);
      _1182 = (((select(((_1118 * 0.003921569f) < 0.04045f), (_1118 * 0.000303527f), exp2(log2((_1118 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f) * _1082) + 1.0f);
      _1183 = (((select(((_1115 * 0.003921569f) < 0.04045f), (_1115 * 0.000303527f), exp2(log2((_1115 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f) * _1082) + 1.0f);
    } else {
      _1179 = 0.0f;
      _1180 = 0.0f;
      _1181 = 1.0f;
      _1182 = 1.0f;
      _1183 = 1.0f;
    }
    _1196 = ((_31 * 1.25f) * _977) * exp2(log2(1.0f - abs(dot(float3(_1068, _1069, _1070), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 5.0f);
    _1207 = ((_1196 * 0.033104755f) + _1179);
    _1208 = ((_1196 * 0.3185468f) + _1180);
    _1209 = _1181;
    _1210 = _1182;
    _1211 = _1183;
    _1212 = 0.0f;
    _1213 = 0.0f;
    _1214 = 0.0f;
    _1215 = 0.0f;
  } else {
    _1207 = 0.0f;
    _1208 = 0.0f;
    _1209 = 1.0f;
    _1210 = 1.0f;
    _1211 = 1.0f;
    _1212 = (_837 * 0.0039359396f);
    _1213 = (_837 * 0.07323897f);
    _1214 = (_495 * 508.76093f);
    _1215 = (_495 * 2632.7341f);
  }
  _1218 = WaveReadLaneFirst(_materialIndex);
  _1226 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_1218 < (uint)170000), _1218, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._fogIntensity);
  _1232 = saturate(saturate(exp2(log2(_237 * 20.0f) * 0.5f)));  // [sem: expr_sat]
  _1250 = ((((((_585 - _432) + _638) + _1208) + _1213) + ((_1232 * ((_1226 * (((lerp(_432, _501, 0.5f)) * 0.8f) - _1215)) + _1215)) * saturate(_1211 + 0.2f))) * _931) + _432;
  _1268 = ((((((_584 - _431) + _637) + _1207) + _1212) + ((_1232 * ((_1226 * (((lerp(_431, _501, 0.5f)) * 0.8f) - _1214)) + _1214)) * saturate(_1210 + 0.2f))) * _931) + _431;
  _1282 = ((((_583 - _430) + _636) + (((((lerp(_430, _501, 0.5f)) * 0.8f) * _1226) * _1232) * saturate(_1209 + 0.2f))) * _931) + _430;
  _1283 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1296 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1283, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1296 = 0.0f;
  }
  _1299 = (_localToneMappingParams.w > 0.0f);
  if (_1299) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1250, _1268, _1282));
    _1547 = _rndx_tonemapped_color.x;
    _1554 = _rndx_tonemapped_color.y;
    _1561 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1567 = 1.0f - abs(_etcParams.w);
      _1568 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1570 = (_1567 * _1547) + _1568;
      _1572 = (_1567 * _1554) + _1568;
      _1574 = (_1567 * _1561) + _1568;
      if (_colorGradingParams.w > 0.0f) {
        _1579 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1596 = (((max(0.0f, (1.0f - _1574)) - _1574) * _1579) + _1574);
        _1597 = (((max(0.0f, (1.0f - _1572)) - _1572) * _1579) + _1572);
        _1598 = (((max(0.0f, (1.0f - _1570)) - _1570) * _1579) + _1570);
      } else {
        _1596 = _1574;
        _1597 = _1572;
        _1598 = _1570;
      }
      _1600 = _userImageAdjust.y + 1.0f;
      _1602 = _userImageAdjust.x + 0.5f;
      _1605 = ((_1598 + -0.5f) * _1600) + _1602;
      _1608 = ((_1597 + -0.5f) * _1600) + _1602;
      _1611 = ((_1596 + -0.5f) * _1600) + _1602;
      _1617 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1652 = exp2(log2(saturate(mad(_colorBlind2.z, _1611, mad(_colorBlind2.y, _1608, (_colorBlind2.x * _1605))))) * _1617);
      _1653 = exp2(log2(saturate(mad(_colorBlind1.z, _1611, mad(_colorBlind1.y, _1608, (_colorBlind1.x * _1605))))) * _1617);
      _1654 = exp2(log2(saturate(mad(_colorBlind0.z, _1611, mad(_colorBlind0.y, _1608, (_colorBlind0.x * _1605))))) * _1617);
    } else {
      _1652 = _1561;
      _1653 = _1554;
      _1654 = _1547;
    }
  } else {
    _1652 = _1282;
    _1653 = _1268;
    _1654 = _1250;
  }
  if (_etcParams.y > 1.0f) {
    _1659 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1662 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1668 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_1659, _1662), float2(_1659, _1662))));  // [sem: expr_sat]
    _1673 = (_1668 * _1652);
    _1674 = (_1668 * _1653);
    _1675 = (_1668 * _1654);
  } else {
    _1673 = _1652;
    _1674 = _1653;
    _1675 = _1654;
  }
  if (_1299 && (_etcParams.z > 0.0f)) {
    _1705 = select((_1675 <= 0.0031308f), (_1675 * 12.92f), (((pow(_1675, 0.41666666f)) * 1.055f) + -0.055f));
    _1706 = select((_1674 <= 0.0031308f), (_1674 * 12.92f), (((pow(_1674, 0.41666666f)) * 1.055f) + -0.055f));
    _1707 = select((_1673 <= 0.0031308f), (_1673 * 12.92f), (((pow(_1673, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1705 = _1675;
    _1706 = _1674;
    _1707 = _1673;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1710 = (float)((uint)((uint)(_1283)));
    if (!(_1710 < _viewDir.w)) {
      if (!(!(_1710 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1721 = 0.0f;
        _1722 = 0.0f;
        _1723 = 0.0f;
      } else {
        _1721 = _1705;
        _1722 = _1706;
        _1723 = _1707;
      }
    } else {
      _1721 = 0.0f;
      _1722 = 0.0f;
      _1723 = 0.0f;
    }
  } else {
    _1721 = _1705;
    _1722 = _1706;
    _1723 = _1707;
  }
  _1727 = exp2(log2(_1721 * 0.0001f) * 0.15930176f);
  _1731 = exp2(log2(_1722 * 0.0001f) * 0.15930176f);
  _1735 = exp2(log2(_1723 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1727 * 18.6875f) + 1.0f)) * ((_1727 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1731 * 18.6875f) + 1.0f)) * ((_1731 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1735 * 18.6875f) + 1.0f)) * ((_1735 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1296;
  return SV_Target;
}
