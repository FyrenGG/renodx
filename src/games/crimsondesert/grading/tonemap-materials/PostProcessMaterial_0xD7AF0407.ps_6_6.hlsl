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


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t68, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t36, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t69, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

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
  uint _renderPassHousingHover : packoffset(c029.z);
  uint _renderPassHousingSelected : packoffset(c029.w);
  uint _characterMeshEffectType : packoffset(c030.x);
};

struct BindlessParameters_PostProcessMemoryRead_CD {
  PostProcessMemoryRead_CDStruct BindlessParameters_PostProcessMemoryRead_CD;
};

typedef BindlessParameters_PostProcessMemoryRead_CD BindlessParameters_PostProcessMemoryRead_CD_t;
ConstantBuffer<BindlessParameters_PostProcessMemoryRead_CD_t> BindlessParameters_PostProcessMemoryRead_CD[] : register(b0, space100);

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
  float _35;
  int _41;
  float _49;
  float _140;
  float _141;
  float _144;
  float _145;
  float _383;
  int _384;
  float _444;
  float _619;
  float _620;
  float _621;
  bool _653;
  float _654;
  float _655;
  float _656;
  float _822;
  float _823;
  float _824;
  float _825;
  int _826;
  float _831;
  float _832;
  float _833;
  float _834;
  int _835;
  float _840;
  float _841;
  float _842;
  float _843;
  int _844;
  float _1346;
  float _1347;
  float _1348;
  float _1349;
  float _1413;
  float _1414;
  float _1415;
  float _1476;
  float _1539;
  float _1540;
  float _1541;
  float _1542;
  float _1543;
  float _1544;
  float _1545;
  bool _1606;
  float _1623;
  float _1624;
  float _1625;
  float _1635;
  float _1831;
  float _1832;
  float _1833;
  float _1967;
  float _1968;
  float _1969;
  float _1970;
  float _1971;
  float _2108;
  float _2359;
  float _2360;
  float _2361;
  float _2409;
  float _2410;
  float _2411;
  float _2468;
  float _2673;
  float _2674;
  float _2675;
  float _2768;
  float _2769;
  float _2770;
  float _2824;
  float _2825;
  float _2826;
  float _2845;
  float _2846;
  float _2847;
  float _2877;
  float _2878;
  float _2879;
  float _2893;
  float _2894;
  float _2895;
  int _52;
  float _60;
  int _63;
  float _71;
  float _74;
  float _79;
  float _80;
  float _81;
  float _82;
  int _83;
  float _91;
  int _92;
  float _100;
  float _101;
  float _105;
  float _110;
  float _114;
  float _123;
  float _129;
  float _134;
  float _159;
  float4 _171;
  float _184;
  float _185;
  float _186;
  float _188;
  float _189;
  float _190;
  float _191;
  float _193;
  float _195;
  float _196;
  float _232;
  float _233;
  float _234;
  float _235;
  float _271;
  float _272;
  float _273;
  float _274;
  float _276;
  float _277;
  float _278;
  float _279;
  float4 _282;
  float _292;
  float _293;
  float _294;
  float _319;
  float _320;
  float _321;
  int _323;
  float _331;
  int _337;
  float _345;
  int _357;
  float _365;
  float _375;
  float _379;
  float _380;
  float _381;
  float _391;
  float _395;
  float _400;
  float _404;
  float _409;
  float _413;
  float _421;
  float _422;
  float _423;
  float _424;
  float _425;
  float _426;
  float _436;
  float _440;
  int _441;
  float _448;
  float _449;
  float _450;
  float _451;
  float _455;
  float _460;
  float _464;
  float _469;
  float _473;
  float _481;
  float _482;
  float _483;
  float _484;
  float _485;
  float _486;
  float _487;
  float _488;
  float _489;
  float _490;
  float _493;
  float _496;
  float _498;
  float _502;
  float _508;
  float _509;
  float _517;
  float _521;
  float _527;
  float _528;
  float _537;
  float _541;
  float _547;
  float _548;
  float _556;
  float _558;
  float _560;
  float _562;
  float _570;
  float _571;
  float _572;
  float _574;
  float _578;
  float _581;
  float _585;
  float _588;
  float _589;
  float _592;
  float _593;
  float _594;
  float _595;
  float _596;
  int _603;
  float _611;
  float _629;
  int _630;
  float _640;
  float _641;
  float _642;
  float _659;
  float _660;
  float _661;
  float _662;
  float _663;
  float _664;
  float _665;
  int _670;
  int _678;
  float4 _685;
  int _691;
  float _699;
  float _700;
  uint2 _706;
  int _723;
  int _724;
  float _732;
  int _733;
  float _741;
  float _744;
  float _747;
  float _748;
  float _749;
  float _750;
  float _751;
  float _752;
  float _753;
  float _754;
  float _755;
  float _756;
  float _759;
  float _762;
  float _765;
  float _768;
  float _771;
  float _774;
  float _781;
  float _782;
  float _783;
  float _790;
  float _791;
  float _792;
  float _795;
  float _798;
  float _801;
  int _806;
  float _814;
  float _815;
  float _816;
  float _817;
  float _818;
  float _819;
  float _820;
  int _828;
  int _837;
  float _845;
  float _846;
  float _847;
  float _851;
  float _852;
  float _853;
  float _868;
  float _875;
  float _876;
  float _877;
  float _888;
  bool _889;
  float _890;
  float _891;
  float _892;
  float _893;
  int _894;
  float _904;
  float _905;
  float _906;
  float _934;
  float _939;
  float _940;
  float _945;
  float _946;
  float _947;
  float _956;
  float _958;
  float _959;
  float _961;
  float _963;
  float _964;
  float _965;
  float _971;
  float _972;
  float _984;
  float _985;
  float _986;
  float _987;
  float _988;
  float4 _993;
  float4 _997;
  float _1007;
  float _1008;
  float _1009;
  int _1037;
  float _1045;
  float _1047;
  float _1054;
  float _1055;
  float _1056;
  float _1059;
  float _1060;
  float4 _1065;
  float4 _1069;
  float _1079;
  float _1080;
  float _1081;
  int _1109;
  float _1117;
  float _1119;
  float _1126;
  float _1127;
  float _1128;
  float _1131;
  float _1132;
  float4 _1137;
  float4 _1141;
  float _1151;
  float _1152;
  float _1153;
  int _1181;
  float _1189;
  float _1191;
  float _1198;
  float _1199;
  float _1200;
  float _1203;
  float _1204;
  float4 _1209;
  float4 _1213;
  float _1223;
  float _1224;
  float _1225;
  int _1253;
  float _1261;
  float _1263;
  float _1270;
  float _1271;
  float _1272;
  float _1275;
  float _1276;
  float4 _1281;
  float4 _1285;
  float _1295;
  float _1296;
  float _1297;
  int _1325;
  float _1333;
  float _1335;
  float4 _1352;
  float _1362;
  float _1363;
  float _1364;
  int _1392;
  float _1400;
  float _1402;
  int _1416;
  float _1424;
  int _1425;
  float _1433;
  int _1453;
  float _1461;
  int _1466;
  float _1474;
  int _1477;
  float _1485;
  float _1489;
  int _1514;
  int _1522;
  float4 _1529;
  float _1532;
  float _1534;
  float _1537;
  float _1550;
  float _1551;
  float _1552;
  float _1553;
  float _1562;
  float _1563;
  float _1565;
  float4 _1573;
  float _1582;
  float _1583;
  float _1584;
  float _1585;
  float _1592;
  float _1612;
  float _1615;
  float _1639;
  float _1640;
  float _1641;
  float _1656;
  float _1692;
  float _1693;
  float _1695;
  int _1704;
  int _1712;
  float4 _1719;
  float _1722;
  float _1723;
  float _1738;
  int _1741;
  int _1749;
  float4 _1756;
  float _1767;
  float _1771;
  float _1774;
  float _1777;
  float _1786;
  float _1795;
  float _1797;
  float _1799;
  float _1817;
  int _1834;
  float _1842;
  float _1849;
  float _1850;
  float _1851;
  float _1859;
  float _1860;
  int _1873;
  int _1895;
  int _1903;
  float4 _1910;
  float _1915;
  float _1916;
  float _1931;
  float _1932;
  float _1933;
  float _1939;
  float _1942;
  float _1948;
  float _1963;
  uint _1992;
  uint _1993;
  uint4 _1995;
  float4 _1998;
  float _2016;
  float _2017;
  float _2018;
  float _2020;
  float _2021;
  float _2022;
  float _2023;
  float _2026;
  float _2027;
  float _2030;
  float _2031;
  float _2035;
  float _2037;
  float _2038;
  float _2039;
  float _2040;
  float _2042;
  float _2045;
  float _2046;
  float _2047;
  float _2048;
  float _2057;
  float _2061;
  float _2065;
  float _2067;
  float _2079;
  float _2080;
  float _2083;
  float _2088;
  float _2122;
  float _2134;
  float _2135;
  float _2136;
  float _2150;
  float _2151;
  float _2152;
  float _2163;
  float4 _2170;
  float _2175;
  float _2176;
  float _2178;
  float _2183;
  float _2187;
  float _2188;
  float _2189;
  float _2197;
  float _2206;
  float _2215;
  float _2218;
  float _2225;
  float _2232;
  float _2236;
  float _2240;
  bool _2246;
  int _2250;
  float _2264;
  float _2265;
  float _2266;
  float _2294;
  float _2295;
  float _2299;
  float _2309;
  float _2310;
  float _2311;
  float _2323;
  float _2329;
  float _2331;
  float _2338;
  float _2339;
  float _2347;
  float _2352;
  float4 _2368;
  float _2373;
  float _2384;
  float _2385;
  float _2386;
  int _2396;
  float _2404;
  float _2412;
  float _2413;
  float _2420;
  int _2425;
  float _2433;
  int _2435;
  float _2443;
  float _2445;
  float _2452;
  float _2453;
  float _2454;
  uint _2455;
  bool _2471;
  float _2477;
  float _2526;
  float _2527;
  float _2528;
  float _2530;
  float _2537;
  float _2538;
  float _2539;
  float _2558;
  float _2559;
  float _2560;
  float _2561;
  float _2562;
  float _2563;
  float _2564;
  float _2565;
  float _2566;
  float _2612;
  float _2613;
  float _2614;
  float _2615;
  float _2616;
  float _2617;
  float _2618;
  float _2635;
  float _2636;
  float _2637;
  float _2638;
  float _2644;
  float _2647;
  float _2654;
  float _2655;
  float _2656;
  float _2685;
  float _2710;
  float _2711;
  float _2712;
  float _2731;
  float _2732;
  float _2733;
  float _2739;
  float _2743;
  float _2744;
  float _2745;
  float _2746;
  float _2751;
  float _2776;
  float _2780;
  float _2781;
  float _2782;
  float _2783;
  float _2813;
  float _2835;
  float _2836;
  float _2840;
  float _2884;
  float _2905;
  float _2906;
  float _2907;
  int __loop_jump_target = -1;
  _35 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _41 = WaveReadLaneFirst(_materialIndex);
  _49 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_41 < (uint)170000), _41, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._fishEyeMaxPower);
  bool __branch_chain_0;
  if (_49 > 0.001f) {
    __branch_chain_0 = true;
  } else {
    _52 = WaveReadLaneFirst(_materialIndex);
    _60 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_52 < (uint)170000), _52, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._fishEyeMaxPower);
    if (_60 < -0.001f) {
      __branch_chain_0 = true;
    } else {
      _144 = TEXCOORD.x;
      _145 = TEXCOORD.y;
      __branch_chain_0 = false;
    }
  }
  if (__branch_chain_0) {
    _63 = WaveReadLaneFirst(_materialIndex);
    _71 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_63 < (uint)170000), _63, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
    [branch]
    if (!(!(_71 >= 0.001f))) {
      _74 = 0.5f / _35;
      _79 = ((_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x) + -0.5f;
      _80 = ((_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x) - _74;
      _81 = dot(float2(_79, _80), float2(_79, _80));
      _82 = sqrt(_81);
      _83 = WaveReadLaneFirst(_materialIndex);
      _91 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_83 < (uint)170000), _83, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._fishEyeMaxPower);
      _92 = WaveReadLaneFirst(_materialIndex);
      _100 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_92 < (uint)170000), _92, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
      _101 = _100 * _91;
      if (_101 > 0.0f) {
        _105 = sqrt(dot(float2(0.5f, _74), float2(0.5f, _74)));
        _110 = tan(_101 * _82) * (rsqrt(_81) * _105);
        _114 = tan(_105 * _101);
        _140 = (((_110 * _79) / _114) + 0.5f);
        _141 = (((_110 * _80) / _114) + _74);
      } else {
        if (_101 < 0.0f) {
          _123 = select((_35 < 1.0f), 0.5f, _74);
          _129 = atan((_101 * _82) * -10.0f) * (rsqrt(_81) * _123);
          _134 = atan((_101 * -10.0f) * _123);
          _140 = (((_129 * _79) / _134) + 0.5f);
          _141 = (((_129 * _80) / _134) + _74);
        } else {
          _140 = 0.0f;
          _141 = 0.0f;
        }
      }
      _144 = _140;
      _145 = (_141 * _35);
    } else {
      _144 = TEXCOORD.x;
      _145 = TEXCOORD.y;
    }
  }
  _159 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_144, _145));  // [sem: _3__36__0__0__g_depth_sample]
  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _171 = __3__36__0__0__g_gbufferNormal.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _144) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _145) + -0.5f))), 0));
  _184 = (saturate(_171.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _185 = (saturate(_171.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _186 = (saturate(_171.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _188 = rsqrt(dot(float3(_184, _185, _186), float3(_184, _185, _186)));  // [sem: invLength]
  _189 = _188 * _184;
  _190 = _188 * _185;
  _191 = _186 * _188;
  _193 = (_144 * 2.0f) + -1.0f;
  _195 = 1.0f - (_145 * 2.0f);
  _196 = max(1e-07f, _159.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _232 = mad((_invViewProj[3].z), _196, mad((_invViewProj[3].y), _195, ((_invViewProj[3].x) * _193))) + (_invViewProj[3].w);
  _233 = (mad((_invViewProj[0].z), _196, mad((_invViewProj[0].y), _195, ((_invViewProj[0].x) * _193))) + (_invViewProj[0].w)) / _232;
  _234 = (mad((_invViewProj[1].z), _196, mad((_invViewProj[1].y), _195, ((_invViewProj[1].x) * _193))) + (_invViewProj[1].w)) / _232;
  _235 = (mad((_invViewProj[2].z), _196, mad((_invViewProj[2].y), _195, ((_invViewProj[2].x) * _193))) + (_invViewProj[2].w)) / _232;
  _271 = mad((_invViewProjRelative[3].z), _196, mad((_invViewProjRelative[3].y), _195, ((_invViewProjRelative[3].x) * _193))) + (_invViewProjRelative[3].w);
  _272 = (mad((_invViewProjRelative[0].z), _196, mad((_invViewProjRelative[0].y), _195, ((_invViewProjRelative[0].x) * _193))) + (_invViewProjRelative[0].w)) / _271;
  _273 = (mad((_invViewProjRelative[1].z), _196, mad((_invViewProjRelative[1].y), _195, ((_invViewProjRelative[1].x) * _193))) + (_invViewProjRelative[1].w)) / _271;
  _274 = (mad((_invViewProjRelative[2].z), _196, mad((_invViewProjRelative[2].y), _195, ((_invViewProjRelative[2].x) * _193))) + (_invViewProjRelative[2].w)) / _271;
  _276 = rsqrt(dot(float3(_272, _273, _274), float3(_272, _273, _274)));  // [sem: invLength]
  _277 = _276 * _272;
  _278 = _276 * _273;
  _279 = _276 * _274;
  _282 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_144, _145));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _292 = (pow(_282.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _293 = (pow(_282.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _294 = (pow(_282.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _319 = exp2(log2(max(0.0f, (_292 + -0.8359375f)) / (18.851562f - (_292 * 18.6875f))) * 6.277395f) * 10000.0f;
  _320 = exp2(log2(max(0.0f, (_293 + -0.8359375f)) / (18.851562f - (_293 * 18.6875f))) * 6.277395f) * 10000.0f;
  _321 = exp2(log2(max(0.0f, (_294 + -0.8359375f)) / (18.851562f - (_294 * 18.6875f))) * 6.277395f) * 10000.0f;
  _323 = WaveReadLaneFirst(_materialIndex);
  _331 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_323 < (uint)170000), _323, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceEffectRatio);
  if (!(!(_331 >= 0.001f))) {
    _337 = WaveReadLaneFirst(_materialIndex);
    _345 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_337 < (uint)170000), _337, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceGradientRatio);
    _357 = WaveReadLaneFirst(_materialIndex);
    _365 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_357 < (uint)170000), _357, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSpeedRatio);
    // [sem: invLength]
    _375 = rsqrt(dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_viewDir.x, _viewDir.y, _viewDir.z))) * frac((_365 * _time.x) + -0.005f);
    _379 = (frac(_viewPosPrev.x * 0.01f) + 2000.0f) + (_375 * _viewDir.x);
    _380 = (frac(_viewPosPrev.y * 0.01f) + 2000.0f) + (_375 * _viewDir.y);
    _381 = (frac(_viewPosPrev.z * 0.01f) + 2000.0f) + (_375 * _viewDir.z);
    _383 = 1.0f;
    _384 = 0;
    while(true) {
      _391 = ((_383 * _277) + _379) * 4.0f;
      _395 = frac(abs(_391));
      _400 = ((_383 * _278) + _380) * 4.0f;
      _404 = frac(abs(_400));
      _409 = ((_383 * _279) + _381) * 4.0f;
      _413 = frac(abs(_409));
      _421 = abs((select((_391 >= (-0.0f - _391)), _395, (-0.0f - _395)) * 0.25f) + -0.125f) + -0.0005f;
      _422 = abs((select((_400 >= (-0.0f - _400)), _404, (-0.0f - _404)) * 0.25f) + -0.125f) + -0.0005f;
      _423 = abs((select((_409 >= (-0.0f - _409)), _413, (-0.0f - _413)) * 0.25f) + -0.125f) + -0.0005f;
      _424 = max(_421, 0.0f);
      _425 = max(_422, 0.0f);
      _426 = max(_423, 0.0f);
      _436 = min(max(_421, max(_422, _423)), 0.0f) + sqrt(((_425 * _425) + (_424 * _424)) + (_426 * _426));
      if (!(_436 < (_383 * 0.001f))) {
        _440 = _436 + _383;
        _441 = (int)(_384) + (int)(1);
        if ((int)_441 < (int)50) {
          _383 = _440;
          _384 = _441;
          continue;
        } else {
          _444 = _440;
        }
      } else {
        _444 = _383;
      }
      _448 = (_444 * _277) + _379;
      _449 = (_444 * _278) + _380;
      _450 = (_444 * _279) + _381;
      _451 = _448 * 4.0f;
      _455 = frac(abs(_451));
      _460 = _449 * 4.0f;
      _464 = frac(abs(_460));
      _469 = _450 * 4.0f;
      _473 = frac(abs(_469));
      _481 = abs((select((_451 >= (-0.0f - _451)), _455, (-0.0f - _455)) * 0.25f) + -0.125f) + -0.0005f;
      _482 = abs((select((_460 >= (-0.0f - _460)), _464, (-0.0f - _464)) * 0.25f) + -0.125f) + -0.0005f;
      _483 = abs((select((_469 >= (-0.0f - _469)), _473, (-0.0f - _473)) * 0.25f) + -0.125f) + -0.0005f;
      _484 = max(_481, 0.0f);
      _485 = max(_482, 0.0f);
      _486 = max(_483, 0.0f);
      _487 = _484 * _484;
      _488 = _485 * _485;
      _489 = _488 + _487;
      _490 = _486 * _486;
      _493 = max(_482, _483);
      _496 = min(max(_481, _493), 0.0f) + sqrt(_489 + _490);
      _498 = (_448 + 0.001f) * 4.0f;
      _502 = frac(abs(_498));
      _508 = abs((select((_498 >= (-0.0f - _498)), _502, (-0.0f - _502)) * 0.25f) + -0.125f) + -0.0005f;
      _509 = max(_508, 0.0f);
      _517 = (_449 + 0.001f) * 4.0f;
      _521 = frac(abs(_517));
      _527 = abs((select((_517 >= (-0.0f - _517)), _521, (-0.0f - _521)) * 0.25f) + -0.125f) + -0.0005f;
      _528 = max(_527, 0.0f);
      _537 = (_450 + 0.001f) * 4.0f;
      _541 = frac(abs(_537));
      _547 = abs((select((_537 >= (-0.0f - _537)), _541, (-0.0f - _541)) * 0.25f) + -0.125f) + -0.0005f;
      _548 = max(_547, 0.0f);
      _556 = min(max(_508, _493), 0.0f) + (sqrt((_490 + _488) + (_509 * _509)) - _496);
      _558 = min(max(_481, max(_527, _483)), 0.0f) + (sqrt((_490 + _487) + (_528 * _528)) - _496);
      _560 = min(max(_481, max(_482, _547)), 0.0f) + (sqrt((_548 * _548) + _489) - _496);
      _562 = rsqrt(dot(float3(_556, _558, _560), float3(_556, _558, _560)));  // [sem: invLength]
      _570 = -0.0f - _sunDirection.x;
      _571 = -0.0f - _sunDirection.y;
      _572 = -0.0f - _sunDirection.z;
      _574 = rsqrt(dot(float3(_570, _571, _572), float3(_570, _571, _572)));  // [sem: invLength]
      _578 = dot(float3((_562 * _556), (_562 * _558), (_562 * _560)), float3((_574 * _570), (_574 * _571), (_574 * _572)));
      _581 = saturate((_444 * 0.22222224f) + -0.11111112f);  // [sem: expr_sat]
      _585 = (_581 * _581) * (3.0f - (_581 * 2.0f));
      _588 = 1.0f - (_578 - (_585 * _578));
      _589 = _588 * _588;
      _592 = ((_589 * _589) * 0.2f) + 0.1f;
      _593 = _592 * _592;
      _594 = _593 * 0.7f;
      _595 = _593 * 0.4f;
      _596 = _593 * 0.1f;
      _603 = WaveReadLaneFirst(_materialIndex);
      _611 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_603 < (uint)170000), _603, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceEffectRatio);
      _619 = saturate((_594 - (_594 * _585)) * _611);  // [sem: expr_sat]
      _620 = saturate((_595 - (_595 * _585)) * _611);  // [sem: expr_sat]
      _621 = saturate((_596 - (_596 * _585)) * _611);  // [sem: expr_sat]
      break;
    }
  } else {
    _619 = 0.0f;  // [sem: expr_sat]
    _620 = 0.0f;  // [sem: expr_sat]
    _621 = 0.0f;  // [sem: expr_sat]
  }
  if ((_159.x < 1e-07f) || (_159.x == 1.0f)) {
    _629 = exp2(log2(abs(_278)) * 0.5f);
    _630 = WaveReadLaneFirst(_materialIndex);
    _640 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_630 < (uint)170000), _630, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSkyColor.x);
    _641 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_630 < (uint)170000), _630, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSkyColor.y);
    _642 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_630 < (uint)170000), _630, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSkyColor.z);
    _653 = false;
    _654 = (lerp(_619, _640, _629));  // [sem: blended]
    _655 = (lerp(_620, _641, _629));  // [sem: blended]
    _656 = (lerp(_621, _642, _629));  // [sem: blended]
  } else {
    _653 = true;
    _654 = _619;  // [sem: blended]
    _655 = _620;  // [sem: blended]
    _656 = _621;  // [sem: blended]
  }
  _659 = max(0.001f, _exposure0.x);
  _660 = _654 / _659;
  _661 = _655 / _659;
  _662 = _656 / _659;
  _663 = 4.0f / _35;
  _664 = _663 * _144;
  _665 = _663 * _145;
  _670 = WaveReadLaneFirst(_materialIndex);
  _678 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_670 < (uint)170000), _670, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
  _685 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_678 < (uint)65000), _678, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_664, ((_time.x * 0.1f) + _665)));
  _691 = WaveReadLaneFirst(_materialIndex);
  _699 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_691 < (uint)170000), _691, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _700 = _699 * (_685.y + -0.3f);
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_706.x, _706.y);
  _723 = (((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_706.x))))))) + 0.5f) * ((_700 * 0.001f) + _144))), ((int)((((float)((int)((int)((float)((int)((int)(_706.y))))))) + 0.5f) * ((_700 * 0.02f) + _145))), 0)))).x) & 255;
  _724 = WaveReadLaneFirst(_materialIndex);
  _732 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_724 < (uint)170000), _724, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._radius);
  _733 = WaveReadLaneFirst(_materialIndex);
  _741 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_733 < (uint)170000), _733, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _744 = saturate(1.0f - _741) * _732;
  [branch]
  if (!(!(_744 >= 0.001f))) {
    _747 = ddx_coarse(_277);
    _748 = ddx_coarse(_278);
    _749 = ddx_coarse(_279);
    _750 = ddy_coarse(_277);
    _751 = ddy_coarse(_278);
    _752 = ddy_coarse(_279);
    _753 = ddx_coarse(_144);
    _754 = ddx_coarse(_145);
    _755 = ddy_coarse(_144);
    _756 = ddy_coarse(_145);
    _759 = (_751 * _191) - (_752 * _190);
    _762 = (_752 * _189) - (_750 * _191);
    _765 = (_750 * _190) - (_751 * _189);
    _768 = (_749 * _190) - (_748 * _191);
    _771 = (_747 * _191) - (_749 * _189);
    _774 = (_748 * _189) - (_747 * _190);
    _781 = (_755 * _768) + (_759 * _753);
    _782 = (_755 * _771) + (_762 * _753);
    _783 = (_755 * _774) + (_765 * _753);
    _790 = (_756 * _768) + (_759 * _754);
    _791 = (_756 * _771) + (_762 * _754);
    _792 = (_756 * _774) + (_754 * _765);
    _795 = max(dot(float3(_781, _782, _783), float3(_781, _782, _783)), dot(float3(_790, _791, _792), float3(_790, _791, _792)));
    _798 = rsqrt(select((!(_795 == 0.0f)), _795, 0.1f));  // [sem: rsqrt_val]
    _801 = _798 * _277;
    _806 = WaveReadLaneFirst(_materialIndex);
    _814 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_806 < (uint)170000), _806, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._squareSize);
    _815 = _814 * _233;
    _816 = _814 * _234;
    _817 = _814 * _235;
    _818 = floor(_815);
    _819 = floor(_816);
    _820 = floor(_817);
    _822 = 10.0f;
    _823 = 0.0f;
    _824 = 0.0f;
    _825 = 0.0f;
    _826 = -1;
    while(true) {
      _831 = _822;
      _832 = _823;
      _833 = _824;
      _834 = _825;
      _835 = -1;
      while(true) {
        _840 = _831;
        _841 = _832;
        _842 = _833;
        _843 = _834;
        _844 = -1;
        while(true) {
          _845 = (float)((int)(_844));
          _846 = (float)((int)(_835));
          _847 = (float)((int)(_826));
          _851 = sin(_845 + _818);
          _852 = sin(_846 + _819);
          _853 = sin(_847 + _820);
          _868 = _time.x * 0.2f;
          _875 = sin(_868 * frac(sin(dot(float3(_851, _852, _853), float3(12.989f, 78.233f, 37.719f))) * 143758.55f)) + _845;
          _876 = sin(_868 * frac(sin(dot(float3(_851, _852, _853), float3(39.346f, 11.135f, 83.155f))) * 143758.55f)) + _846;
          _877 = sin(_868 * frac(sin(dot(float3(_851, _852, _853), float3(73.156f, 52.235f, 9.151f))) * 143758.55f)) + _847;
          _888 = max(abs((_818 - _815) + _875), max(abs((_819 - _816) + _876), abs((_820 - _817) + _877)));
          _889 = (_888 < _840);
          _890 = select(_889, _888, _840);
          _891 = select(_889, _875, _841);
          _892 = select(_889, _876, _842);
          _893 = select(_889, _877, _843);
          _894 = (int)(_844) + (int)(1);
          if (!(_894 == 2)) {
            _840 = _890;
            _841 = _891;
            _842 = _892;
            _843 = _893;
            _844 = _894;
            continue;
          }
          while(true) {
            _837 = (int)(_835) + (int)(1);
            if (!(_837 == 2)) {
              _831 = _890;
              _832 = _891;
              _833 = _892;
              _834 = _893;
              _835 = _837;
              __loop_jump_target = 830;
              break;
            }
            while(true) {
              _828 = (int)(_826) + (int)(1);
              if (!(_828 == 2)) {
                _822 = _890;
                _823 = _891;
                _824 = _892;
                _825 = _893;
                _826 = _828;
                __loop_jump_target = 821;
                break;
              }
              _904 = (_891 + _818) / _814;
              _905 = (_892 + _819) / _814;
              _906 = (_893 + _820) / _814;
              _934 = mad((_viewProj[3].z), _906, mad((_viewProj[3].y), _905, ((_viewProj[3].x) * _904))) + (_viewProj[3].w);
              _939 = (((mad((_viewProj[0].z), _906, mad((_viewProj[0].y), _905, ((_viewProj[0].x) * _904))) + (_viewProj[0].w)) / _934) * 0.5f) + 0.5f;
              _940 = 0.5f - (((mad((_viewProj[1].z), _906, mad((_viewProj[1].y), _905, ((_viewProj[1].x) * _904))) + (_viewProj[1].w)) / _934) * 0.5f);
              _945 = _904 - _mainPosition.x;
              _946 = _905 - _mainPosition.y;
              _947 = _906 - _mainPosition.z;
              // [sem: expr_sat]
              _956 = saturate(1.0f - ((1.0f - ((1.0f / max(1e-05f, _744)) * sqrt(dot(float3(_945, _946, _947), float3(_945, _946, _947))))) * 1.0152284f));
              _958 = 1.0f - saturate(_956);
              _959 = _956 * 0.5f;
              _961 = (_144 - _939) / _958;
              _963 = (_145 - _940) / _958;
              _964 = sin(_959);
              _965 = cos(_959);
              _971 = mad((-0.0f - _964), _963, (_965 * _961)) + _939;
              _972 = mad(_965, _963, (_964 * _961)) + _940;
              _984 = (saturate(_159.x * 1.5f) * 0.5f) * saturate(frac(sin(dot(float2(((float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(_144))))), ((float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(_145)))))), float2(12.9898f, 78.233f))) * 43758.547f) + 0.5f);
              _985 = _984 * mad((_798 * _783), _279, mad((_798 * _782), _278, (_801 * _781)));
              _986 = _985 * 0.8333334f;
              _987 = _984 * mad((_798 * _792), _279, mad((_798 * _791), _278, (_801 * _790)));
              _988 = _987 * 0.8333334f;
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _993 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_986 + _144), (_988 + _145)));
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _997 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_971 + _986), (_972 + _988)));
              _1007 = (pow(_997.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1008 = (pow(_997.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1009 = (pow(_997.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1037 = WaveReadLaneFirst(_materialIndex);
              _1045 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1037 < (uint)170000), _1037, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
              _1047 = (float)((bool)(_993.w < _1045));
              _1054 = (_1047 * ((exp2(log2(max(0.0f, (_1007 + -0.8359375f)) / (18.851562f - (_1007 * 18.6875f))) * 6.277395f) * 4000.0f) - _660)) + _660;
              _1055 = (_1047 * ((exp2(log2(max(0.0f, (_1008 + -0.8359375f)) / (18.851562f - (_1008 * 18.6875f))) * 6.277395f) * 4000.0f) - _661)) + _661;
              _1056 = (_1047 * ((exp2(log2(max(0.0f, (_1009 + -0.8359375f)) / (18.851562f - (_1009 * 18.6875f))) * 6.277395f) * 4000.0f) - _662)) + _662;
              if (!(_993.w > 0.9f)) {
                _1059 = _985 * 0.6666667f;
                _1060 = _987 * 0.6666667f;
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _1065 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1059 + _144), (_1060 + _145)));
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _1069 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_971 + _1059), (_972 + _1060)));
                _1079 = (pow(_1069.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1080 = (pow(_1069.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1081 = (pow(_1069.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1109 = WaveReadLaneFirst(_materialIndex);
                _1117 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1109 < (uint)170000), _1109, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
                _1119 = (float)((bool)(_1065.w < _1117));
                _1126 = (_1119 * ((exp2(log2(max(0.0f, (_1079 + -0.8359375f)) / (18.851562f - (_1079 * 18.6875f))) * 6.277395f) * 4000.0f) - _1054)) + _1054;
                _1127 = (_1119 * ((exp2(log2(max(0.0f, (_1080 + -0.8359375f)) / (18.851562f - (_1080 * 18.6875f))) * 6.277395f) * 4000.0f) - _1055)) + _1055;
                _1128 = (_1119 * ((exp2(log2(max(0.0f, (_1081 + -0.8359375f)) / (18.851562f - (_1081 * 18.6875f))) * 6.277395f) * 4000.0f) - _1056)) + _1056;
                if (!(_1065.w > 0.9f)) {
                  _1131 = _985 * 0.5f;
                  _1132 = _987 * 0.5f;
                  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1137 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1131 + _144), (_1132 + _145)));
                  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1141 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_971 + _1131), (_972 + _1132)));
                  _1151 = (pow(_1141.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                  _1152 = (pow(_1141.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                  _1153 = (pow(_1141.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                  _1181 = WaveReadLaneFirst(_materialIndex);
                  _1189 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1181 < (uint)170000), _1181, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
                  _1191 = (float)((bool)(_1137.w < _1189));
                  _1198 = (_1191 * ((exp2(log2(max(0.0f, (_1151 + -0.8359375f)) / (18.851562f - (_1151 * 18.6875f))) * 6.277395f) * 4000.0f) - _1126)) + _1126;
                  _1199 = (_1191 * ((exp2(log2(max(0.0f, (_1152 + -0.8359375f)) / (18.851562f - (_1152 * 18.6875f))) * 6.277395f) * 4000.0f) - _1127)) + _1127;
                  _1200 = (_1191 * ((exp2(log2(max(0.0f, (_1153 + -0.8359375f)) / (18.851562f - (_1153 * 18.6875f))) * 6.277395f) * 4000.0f) - _1128)) + _1128;
                  if (!(_1137.w > 0.9f)) {
                    _1203 = _985 * 0.33333334f;
                    _1204 = _987 * 0.33333334f;
                    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                    _1209 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1203 + _144), (_1204 + _145)));
                    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                    _1213 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_971 + _1203), (_972 + _1204)));
                    _1223 = (pow(_1213.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                    _1224 = (pow(_1213.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                    _1225 = (pow(_1213.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                    _1253 = WaveReadLaneFirst(_materialIndex);
                    _1261 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1253 < (uint)170000), _1253, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
                    _1263 = (float)((bool)(_1209.w < _1261));
                    _1270 = (_1263 * ((exp2(log2(max(0.0f, (_1223 + -0.8359375f)) / (18.851562f - (_1223 * 18.6875f))) * 6.277395f) * 4000.0f) - _1198)) + _1198;
                    _1271 = (_1263 * ((exp2(log2(max(0.0f, (_1224 + -0.8359375f)) / (18.851562f - (_1224 * 18.6875f))) * 6.277395f) * 4000.0f) - _1199)) + _1199;
                    _1272 = (_1263 * ((exp2(log2(max(0.0f, (_1225 + -0.8359375f)) / (18.851562f - (_1225 * 18.6875f))) * 6.277395f) * 4000.0f) - _1200)) + _1200;
                    if (!(_1209.w > 0.9f)) {
                      _1275 = _985 * 0.16666667f;
                      _1276 = _987 * 0.16666667f;
                      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                      _1281 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1275 + _144), (_1276 + _145)));
                      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                      _1285 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_971 + _1275), (_972 + _1276)));
                      _1295 = (pow(_1285.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                      _1296 = (pow(_1285.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                      _1297 = (pow(_1285.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                      _1325 = WaveReadLaneFirst(_materialIndex);
                      _1333 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1325 < (uint)170000), _1325, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
                      _1335 = (float)((bool)(_1281.w < _1333));
                      _1346 = ((_1335 * ((exp2(log2(max(0.0f, (_1297 + -0.8359375f)) / (18.851562f - (_1297 * 18.6875f))) * 6.277395f) * 4000.0f) - _1272)) + _1272);
                      _1347 = ((_1335 * ((exp2(log2(max(0.0f, (_1296 + -0.8359375f)) / (18.851562f - (_1296 * 18.6875f))) * 6.277395f) * 4000.0f) - _1271)) + _1271);
                      _1348 = ((_1335 * ((exp2(log2(max(0.0f, (_1295 + -0.8359375f)) / (18.851562f - (_1295 * 18.6875f))) * 6.277395f) * 4000.0f) - _1270)) + _1270);
                      _1349 = _1281.w;
                    } else {
                      _1346 = _1272;
                      _1347 = _1271;
                      _1348 = _1270;
                      _1349 = _1209.w;
                    }
                  } else {
                    _1346 = _1200;
                    _1347 = _1199;
                    _1348 = _1198;
                    _1349 = _1137.w;
                  }
                } else {
                  _1346 = _1128;
                  _1347 = _1127;
                  _1348 = _1126;
                  _1349 = _1065.w;
                }
              } else {
                _1346 = _1056;
                _1347 = _1055;
                _1348 = _1054;
                _1349 = _993.w;
              }
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1352 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_971, _972));
              _1362 = (pow(_1352.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1363 = (pow(_1352.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1364 = (pow(_1352.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1392 = WaveReadLaneFirst(_materialIndex);
              _1400 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1392 < (uint)170000), _1392, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
              _1402 = (float)((bool)(_1349 < _1400));
              _1413 = ((_1402 * ((exp2(log2(max(0.0f, (_1362 + -0.8359375f)) / (18.851562f - (_1362 * 18.6875f))) * 6.277395f) * 10000.0f) - _1348)) + _1348);
              _1414 = ((_1402 * ((exp2(log2(max(0.0f, (_1363 + -0.8359375f)) / (18.851562f - (_1363 * 18.6875f))) * 6.277395f) * 10000.0f) - _1347)) + _1347);
              _1415 = ((_1402 * ((exp2(log2(max(0.0f, (_1364 + -0.8359375f)) / (18.851562f - (_1364 * 18.6875f))) * 6.277395f) * 10000.0f) - _1346)) + _1346);
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
        if (__loop_jump_target == 830) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
      if (__loop_jump_target == 821) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
  } else {
    _1413 = _660;
    _1414 = _661;
    _1415 = _662;
  }
  _1416 = WaveReadLaneFirst(_materialIndex);
  _1424 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1416 < (uint)170000), _1416, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _1425 = WaveReadLaneFirst(_materialIndex);
  _1433 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1425 < (uint)170000), _1425, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._tempCubeSpaceRatio);
  [branch]
  if ((_723 == _renderPassMemoryBackground) || ((!(_723 == _renderPassMemoryBackground)) && (_723 == _renderPassDetectRemoteCatch)) || (((!(_723 == _renderPassMemoryBackground)) && (!(_723 == _renderPassDetectRemoteCatch))) && (_723 == _renderPassDetectPickedRemoteCatch))) {
    _1453 = WaveReadLaneFirst(_materialIndex);
    _1461 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1453 < (uint)170000), _1453, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryOpacity);
    _1476 = _1461;
  } else {
    if (_723 == _renderPassEnemyBoss) {
      _1466 = WaveReadLaneFirst(_materialIndex);
      _1474 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1466 < (uint)170000), _1466, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._enemyBossOpacity);
      _1476 = _1474;
    } else {
      _1476 = 1.0f;
    }
  }
  _1477 = WaveReadLaneFirst(_materialIndex);
  _1485 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1477 < (uint)170000), _1477, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _1489 = saturate((_1485 * 100.0f) + -99.0f) * _1476;
  if (!(!(_1489 >= 0.001f))) {
    [branch]
    if ((_723 == _renderPassSelfPlayer) || (_723 == _renderPassTest) || (_723 == _renderPassDetectRemoteCatch) || (_723 == _renderPassDetectPickedRemoteCatch)) {
      _1514 = WaveReadLaneFirst(_materialIndex);
      _1522 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1514 < (uint)170000), _1514, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
      _1529 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1522 < (uint)65000), _1522, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_664 - (_time.x * 0.22f)), (_665 - (_time.x * 0.18f))));
      _1532 = _1529.x + -0.3f;
      _1534 = ((_1529.x + -0.4f) * 10.471975f) + -1.5707964f;
      _1537 = _1532 * 0.006f;
      _1539 = _1537;
      _1540 = _1537;
      _1541 = 0.0f;
      _1542 = 0.0f;
      _1543 = 0.0f;
      _1544 = 0.0f;
      _1545 = -1.0f;
      while(true) {
        _1550 = _144 - ((_1539 * sin(_1534)) * _1545);
        _1551 = _145 - ((_1540 * cos(_1534)) * _1545);
        _1552 = _1550 + -0.5f;
        _1553 = _1551 + -0.5f;
        // [sem: invLength]
        _1562 = rsqrt(dot(float2(_1552, _1553), float2(_1552, _1553))) * ((_1532 * 0.06f) * sqrt((_1552 * _1552) + (_1553 * _1553)));
        _1563 = _1562 * _1552;
        _1565 = _1562 * _1553;
        _1573 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_1550, _1551));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _1582 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1550 - _1563), (_1551 - _1565))))).x) * 0.2f) + _1541;
        _1583 = (_1573.y * 0.2f) + _1542;
        _1584 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1563 + _1550), (_1565 + _1551))))).z) * 0.2f) + _1543;
        _1585 = (_1573.w * 0.2f) + _1544;
        _1592 = _1545 + 0.2f;
        if (!(!(_1592 <= 1.0f))) {
          _1539 = (_1539 * 1.01f);
          _1540 = (_1540 * 1.01f);
          _1541 = (_1582 * 0.9f);
          _1542 = (_1583 * 0.9f);
          _1543 = (_1584 * 0.9f);
          _1544 = (_1585 * 0.9f);
          _1545 = _1592;
          continue;
        }
        if (!(_723 == _renderPassSelfPlayer)) {
          _1606 = (_723 == _renderPassTest);
        } else {
          _1606 = true;
        }
        _1612 = saturate(_1585 * 1.08f);  // [sem: expr_sat]
        _1615 = max(0.001f, _exposure0.x);
        _1623 = ((((_1582 * 0.54f) * select(_1606, 0.55f, 0.5f)) / _1615) * _1612);
        _1624 = ((((_1583 * 0.54f) * select(_1606, 0.7f, 0.8f)) / _1615) * _1612);
        _1625 = (((_1584 * 0.54f) / _1615) * _1612);
        break;
      }
    } else {
      _1623 = 0.0f;
      _1624 = 0.0f;
      _1625 = 0.0f;
    }
  } else {
    _1623 = 0.0f;
    _1624 = 0.0f;
    _1625 = 0.0f;
  }
  if ((_723 == _renderPassSelfPlayer) || (_723 == _renderPassTest)) {
    _1635 = _1489;  // [sem: expr_sat]
  } else {
    _1635 = saturate(saturate(_1433 * 2.0f) * _1424);  // [sem: expr_sat]
  }
  _1639 = _321 + (_1635 * (_1415 - _321));
  _1640 = _320 + (_1635 * (_1414 - _320));
  _1641 = _319 + (_1635 * (_1413 - _319));
  if (_723 == _renderPassMemoryBackground) {
    _1656 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _144)), ((int)(_customRenderPassSizeInvSize.y * _145)), 0)))).x));
    _1692 = mad((_invViewProj[3].z), _1656, mad((_invViewProj[3].y), _195, ((_invViewProj[3].x) * _193))) + (_invViewProj[3].w);
    _1693 = (mad((_invViewProj[0].z), _1656, mad((_invViewProj[0].y), _195, ((_invViewProj[0].x) * _193))) + (_invViewProj[0].w)) / _1692;
    _1695 = (mad((_invViewProj[2].z), _1656, mad((_invViewProj[2].y), _195, ((_invViewProj[2].x) * _193))) + (_invViewProj[2].w)) / _1692;
    _1704 = WaveReadLaneFirst(_materialIndex);
    _1712 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1704 < (uint)170000), _1704, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
    _1719 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1712 < (uint)65000), _1712, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.01f) + (_1693 * 0.7f)), ((_1695 * 0.7f) - (_time.x * 0.04f))));
    _1722 = _1719.w + -0.5f;
    _1723 = _1719.z + -0.5f;
    _1738 = _time.x * 0.02f;
    _1741 = WaveReadLaneFirst(_materialIndex);
    _1749 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1741 < (uint)170000), _1741, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._auraTex);
    _1756 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1749 < (uint)65000), _1749, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((_1693 * 1.1f) - ((_685.y + -0.5f) * 0.1f)) + (_1722 * 0.3f)) - _1738), ((((_1695 * 1.1f) - ((_685.w + -0.5f) * 0.1f)) + (_1723 * 0.3f)) - _1738)));
    _1767 = _1722 * 2.0f;
    _1771 = (((0.5f - _685.w) + _1693) + _1767) - _mainPosition.x;
    _1774 = (((0.5f - _685.x) + ((mad((_invViewProj[1].z), _1656, mad((_invViewProj[1].y), _195, ((_invViewProj[1].x) * _193))) + (_invViewProj[1].w)) / _1692)) + (_1723 * 2.0f)) - _mainPosition.y;
    _1777 = (((0.5f - _685.z) + _1695) + _1767) - _mainPosition.z;
    _1786 = 1.0f - saturate(sqrt(((_1771 * _1771) + (_1774 * _1774)) + (_1777 * _1777)) * 0.125f);
    _1795 = ((sin((_time.x * 5.0f) + (_1786 * 60.0f)) + 1.0f) * 0.25f) + 0.5f;
    _1797 = _1786 * (_1795 * _1795);
    _1799 = (_1797 * _1797) * _685.x;
    _1817 = max(0.001f, _exposure0.x);
    _1831 = (((((((_1786 * 0.010000001f) + ((_1756.x * _1756.x) * _1799)) * _1756.x) / _1817) - _1641) * _1489) + _1641);
    _1832 = (((((((_1786 * 0.035f) + ((_1756.y * _1756.y) * _1799)) * _1756.y) / _1817) - _1640) * _1489) + _1640);
    _1833 = (((((((_1786 * 0.05f) + ((_1756.z * _1756.z) * _1799)) * _1756.z) / _1817) - _1639) * _1489) + _1639);
  } else {
    _1831 = _1641;
    _1832 = _1640;
    _1833 = _1639;
  }
  _1834 = WaveReadLaneFirst(_materialIndex);
  _1842 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1834 < (uint)170000), _1834, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadBackgroundOpacity);
  if (!(!(_1842 >= 0.001f))) {
    _1849 = _233 - _mainPosition.x;
    _1850 = _234 - _mainPosition.y;
    _1851 = _235 - _mainPosition.z;
    _1859 = saturate(sqrt(((_1849 * _1849) + (_1850 * _1850)) + (_1851 * _1851)) * 0.033333335f);  // [sem: expr_sat]
    _1860 = 1.0f - _1859;
    _1873 = (((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _144) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _145) + -0.5f))), 0)))).x) & 127;
    if (_653 && (_1860 > 0.0f)) {
      _1895 = WaveReadLaneFirst(_materialIndex);
      _1903 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1895 < (uint)170000), _1895, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._glitchTex);
      _1910 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1903 < (uint)65000), _1903, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_233 * 0.1f), (_235 * 0.1f)));
      _1915 = (_1910.x * 2.0f) + -0.99607843f;
      _1916 = (_1910.y * 2.0f) + -0.99607843f;
      _1931 = ((_1915 + _233) - _viewPos.x) * 0.06f;
      _1932 = ((_1916 + _234) - _viewPos.y) * 0.06f;
      _1933 = ((sqrt(saturate(1.0f - dot(float2(_1915, _1916), float2(_1915, _1916)))) + _235) - _viewPos.z) * 0.06f;
      _1939 = sqrt(((_1931 * _1931) + (_1932 * _1932)) + (_1933 * _1933));
      _1942 = _time.x * 0.3f;
      _1948 = exp2(log2(frac(_1939 - _1942)) * 15.0f) * _1860;
      _1963 = exp2(log2(saturate(1.0f - abs((frac((_1939 + 0.5f) - _1942) * 2.0f) + -1.0f))) * 30.0f) * (_1860 * 0.015f);
      _1967 = (_1963 * _1915);
      _1968 = (_1963 * _1916);
      _1969 = (_1948 * 0.2f);
      _1970 = (_1948 * 0.5f);
      _1971 = _1948;
    } else {
      _1967 = 0.0f;
      _1968 = 0.0f;
      _1969 = 0.0f;
      _1970 = 0.0f;
      _1971 = 0.0f;
    }
    if (((uint)((int)(_1873) + (int)(-52)) < (uint)16) || ((!((uint)((int)(_1873) + (int)(-52)) < (uint)16)) && ((((_nearFarProj.x / _196) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _144)), ((int)(_customRenderPassSizeInvSize.y * _145)), 0)))).x)))) > 0.2f) && (_723 == _renderPassMemory)))) {
      _1992 = (uint)((_bufferSizeAndInvSize.x * ((_700 * 0.0005f) + _144)) + -0.5f);
      _1993 = (uint)((_bufferSizeAndInvSize.y * ((_700 * 0.01f) + _145)) + -0.5f);
      _1995 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_1992, _1993, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _1998 = __3__36__0__0__g_gbufferNormal.Load(int3(_1992, _1993, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _2016 = (saturate(_1998.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _2017 = (saturate(_1998.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _2018 = (saturate(_1998.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _2020 = rsqrt(dot(float3(_2016, _2017, _2018), float3(_2016, _2017, _2018)));  // [sem: invLength]
      _2021 = _2020 * _2016;
      _2022 = _2020 * _2017;
      _2023 = _2018 * _2020;
      _2026 = (((float)((uint)((uint)(((uint)((uint)(_1995.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _2027 = (((float)((uint)((uint)(_1995.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _2030 = (_2026 + _2027) * 0.5f;
      _2031 = (_2026 - _2027) * 0.5f;
      _2035 = (1.0f - abs(_2030)) - abs(_2031);
      _2037 = rsqrt(dot(float3(_2030, _2031, _2035), float3(_2030, _2031, _2035)));  // [sem: invLength]
      _2038 = _2037 * _2030;
      _2039 = _2037 * _2031;
      _2040 = _2037 * _2035;
      _2042 = select((_2023 >= 0.0f), 1.0f, -1.0f);
      _2045 = -0.0f - (1.0f / (_2042 + _2023));
      _2046 = _2022 * _2045;
      _2047 = _2046 * _2021;
      _2048 = _2042 * _2021;
      _2057 = mad(_2040, _2021, mad(_2039, _2047, ((((_2048 * _2021) * _2045) + 1.0f) * _2038)));
      _2061 = mad(_2040, _2022, mad(_2039, (_2042 + (_2046 * _2022)), ((_2038 * _2042) * _2047)));
      _2065 = mad(_2040, _2023, mad(_2039, (-0.0f - _2022), (-0.0f - (_2048 * _2038))));
      _2067 = rsqrt(dot(float3(_2057, _2061, _2065), float3(_2057, _2061, _2065)));  // [sem: invLength]
      // [sem: expr_sat]
      _2079 = saturate(dot(float3((_2067 * _2057), (_2067 * _2061), (_2067 * _2065)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _2080 = 1.0f - _2079;
      _2083 = max(0.001f, _exposure0.x);
      _2088 = (_2080 * _2080) * _1860;
      if ((_723 == _renderPassSelfPlayer) || ((!(_723 == _renderPassSelfPlayer)) && (_723 == _renderPassTest))) {
        _2108 = ((_2080 * 0.05f) + 0.1f);
      } else {
        _2108 = select((_723 == _renderPassMemory), 1.1f, 0.1f);
      }
      _2122 = (pow(_1859, 1.5f)) * ((pow(_2079, 5.0f)) * 0.8f);
      _2359 = ((((_2088 * (0.4f / _2083)) * _2108) + _1831) + (_2122 * _1969));
      _2360 = ((((_2088 * (0.7f / _2083)) * _2108) + _1832) + (_2122 * _1970));
      _2361 = ((((_2088 * (1.0f / _2083)) * _2108) + _1833) + (_2122 * _1971));
    } else {
      _2134 = _233 - _mainPosition.x;
      _2135 = _234 - _mainPosition.y;
      _2136 = _235 - _mainPosition.z;
      _2150 = _233 - _aimHighlightPosition.x;
      _2151 = _234 - _aimHighlightPosition.y;
      _2152 = _235 - _aimHighlightPosition.z;
      _2163 = 1.0f - saturate(sqrt(((_2150 * _2150) + (_2151 * _2151)) + (_2152 * _2152)) / (_aimHighlightPosition.w * 5.0f));
      // [sem: _3__36__0__0__g_specularAO_sampleLod]
      _2170 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_1967 + _144), (_1968 + _145)), 0.0f);
      _2175 = _2170.w * saturate(((_2163 * _2163) * _2163) + ((1.0f - saturate(sqrt(((_2134 * _2134) + (_2135 * _2135)) + (_2136 * _2136)) * 0.5f)) * 0.1f));
      _2176 = _2175 * 5.0f;
      _2178 = (_2170.w * _2170.w) * _1860;
      _2183 = ((_2178 * _2178) * 49.96f) + 0.04f;
      _2187 = _2175 * 1.75f;
      _2188 = _2175 * 3.25f;
      _2189 = _2175 * 120.0f;
      _2197 = ((1.0f - saturate(_2189 + -3.0f)) * saturate(_2189 + -2.0f)) * (0.35f - _2187);
      _2206 = ((0.65f - _2188) * saturate(_2189 + -2.5f)) * (1.0f - saturate(_2189 + -4.0f));
      _2215 = (saturate(_2189 + -3.5f) * (1.0f - _2176)) * (1.0f - saturate(_2189 + -5.0f));
      _2218 = saturate(_2189 + -8.0f);  // [sem: expr_sat]
      _2225 = 1.0f - _2178;
      _2232 = ((_2183 * _1969) + _1831) + (((((_2197 + _2187) - (_2197 * _2218)) * _2225) + (_2178 * 0.35f)) * _1842);
      _2236 = ((_2183 * _1970) + _1832) + (((((_2206 + _2188) - (_2206 * _2218)) * _2225) + (_2178 * 0.65f)) * _1842);
      _2240 = ((_2183 * _1971) + _1833) + (((((_2215 + _2176) - (_2215 * _2218)) * _2225) + _2178) * _1842);
      if (_1873 == 7) {
        _2246 = ((_isPhotosensitiveMode_isAllolwBlood & 1) != 0);
        _2359 = select(_2246, 0.015f, 0.007f);
        _2360 = 0.0f;
        _2361 = select(_2246, 0.0f, 0.015f);
      } else {
        _2250 = (int)(_1873) + (int)(-105);
        if ((_1873 == 107) || ((_1873 == 26) || (((uint)((int)(_1873) + (int)(-27)) < (uint)2) || ((uint)_2250 < (uint)2)))) {
          _2264 = _mainPosition.x - _viewPos.x;
          _2265 = _mainPosition.y - _viewPos.y;
          _2266 = _mainPosition.z - _viewPos.z;
          _2294 = mad((_viewProjRelative[3].z), _2266, mad((_viewProjRelative[3].y), _2265, ((_viewProjRelative[3].x) * _2264))) + (_viewProjRelative[3].w);
          _2295 = (mad((_viewProjRelative[0].z), _2266, mad((_viewProjRelative[0].y), _2265, ((_viewProjRelative[0].x) * _2264))) + (_viewProjRelative[0].w)) / _2294;
          _2299 = 0.5f - (((mad((_viewProjRelative[1].z), _2266, mad((_viewProjRelative[1].y), _2265, ((_viewProjRelative[1].x) * _2264))) + (_viewProjRelative[1].w)) / _2294) * 0.5f);
          _2309 = ((_view[0].x) * 5.0f) + _2264;
          _2310 = ((_view[0].y) * 5.0f) + _2265;
          _2311 = ((_view[0].z) * 5.0f) + _2266;
          _2323 = mad((_viewProjRelative[3].z), _2311, mad((_viewProjRelative[3].y), _2310, (_2309 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
          _2329 = (0.5f - (((mad((_viewProjRelative[1].z), _2311, mad((_viewProjRelative[1].y), _2310, (_2309 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _2323) * 0.5f)) - _2299;
          _2331 = (_35 * 0.5f) * (((mad((_viewProjRelative[0].z), _2311, mad((_viewProjRelative[0].y), _2310, (_2309 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _2323) - _2295);
          _2338 = _145 - _2299;
          _2339 = ((_144 + -0.5f) - (_2295 * 0.5f)) * _35;
          _2347 = 1.0f - saturate(sqrt((_2338 * _2338) + (_2339 * _2339)) / max(0.001f, sqrt((_2329 * _2329) + (_2331 * _2331))));
          _2352 = (_2347 * _2347) * (select(((uint)_2250 < (uint)3), 0.1f, 0.015f) * _1842);
          _2359 = ((_2352 * 0.35f) + _2232);
          _2360 = ((_2352 * 0.65f) + _2236);
          _2361 = (_2352 + _2240);
        } else {
          _2359 = _2232;
          _2360 = _2236;
          _2361 = _2240;
        }
      }
    }
  } else {
    _2359 = _1831;
    _2360 = _1832;
    _2361 = _1833;
  }
  if (_723 == _renderPassEnemyBoss) {
    _2368 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_144, _145));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _2373 = saturate(_2368.z * 2.0f);  // [sem: expr_sat]
    _2384 = saturate((_2368.x * 3.0f) * ((1.0f / max(0.001f, _exposure0.x)) - _2368.z));  // [sem: expr_sat]
    _2385 = _2384 * 0.6f;
    _2386 = _2384 * 0.65f;
    _2396 = WaveReadLaneFirst(_materialIndex);
    _2404 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_2396 < (uint)170000), _2396, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._enemyBossOpacity);
    _2409 = (_2404 * ((((_2368.y * 0.225f) - _2385) * _2373) + _2385));
    _2410 = (_2404 * ((((_2368.y * 0.325f) - _2386) * _2373) + _2386));
    _2411 = (_2404 * ((((_2368.y * 0.5f) - _2384) * _2373) + _2384));
  } else {
    _2409 = _2359;
    _2410 = _2360;
    _2411 = _2361;
  }
  _2412 = _144 + -0.5f;
  _2413 = _145 + -0.5f;
  _2420 = saturate((sqrt((_2413 * _2413) + (_2412 * _2412)) + -0.01f) * 1.010101f);  // [sem: expr_sat]
  _2425 = WaveReadLaneFirst(_materialIndex);
  _2433 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_2425 < (uint)170000), _2425, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._vignetteIntensity);
  _2435 = WaveReadLaneFirst(_materialIndex);
  _2443 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_2435 < (uint)170000), _2435, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _2445 = 1.0f - ((((_2420 * _2420) * (3.0f - (_2420 * 2.0f))) * _2433) * _2443);
  _2452 = max(0.0f, (_2445 * (_2409 + _1623)));
  _2453 = max(0.0f, (_2445 * (_2410 + _1624)));
  _2454 = max(0.0f, (_2445 * (_2411 + _1625)));
  _2455 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _2468 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _2455, 0)))).x) & 127)))) + 0.5f);
  } else {
    _2468 = 1.0f;
  }
  _2471 = (_localToneMappingParams.w > 0.0f);
  if (_2471) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_2452, _2453, _2454));
    _2731 = _rndx_tonemapped_color.x;
    _2732 = _rndx_tonemapped_color.y;
    _2733 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _2739 = 1.0f - abs(_etcParams.w);
      _2743 = saturate(_etcParams.w);  // [sem: expr_sat]
      _2744 = (_2739 * _2731) + _2743;
      _2745 = (_2739 * _2732) + _2743;
      _2746 = (_2739 * _2733) + _2743;
      if (_colorGradingParams.w > 0.0f) {
        _2751 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _2768 = (((max(0.0f, (1.0f - _2744)) - _2744) * _2751) + _2744);
        _2769 = (((max(0.0f, (1.0f - _2745)) - _2745) * _2751) + _2745);
        _2770 = (((max(0.0f, (1.0f - _2746)) - _2746) * _2751) + _2746);
      } else {
        _2768 = _2744;
        _2769 = _2745;
        _2770 = _2746;
      }
      _2776 = _userImageAdjust.y + 1.0f;
      _2780 = _userImageAdjust.x + 0.5f;
      _2781 = ((_2768 + -0.5f) * _2776) + _2780;
      _2782 = ((_2769 + -0.5f) * _2776) + _2780;
      _2783 = ((_2770 + -0.5f) * _2776) + _2780;
      _2813 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _2824 = exp2(log2(saturate(mad(_colorBlind0.z, _2783, mad(_colorBlind0.y, _2782, (_colorBlind0.x * _2781))))) * _2813);
      _2825 = exp2(log2(saturate(mad(_colorBlind1.z, _2783, mad(_colorBlind1.y, _2782, (_colorBlind1.x * _2781))))) * _2813);
      _2826 = exp2(log2(saturate(mad(_colorBlind2.z, _2783, mad(_colorBlind2.y, _2782, (_colorBlind2.x * _2781))))) * _2813);
    } else {
      _2824 = _2731;
      _2825 = _2732;
      _2826 = _2733;
    }
  } else {
    _2824 = _2452;
    _2825 = _2453;
    _2826 = _2454;
  }
  if (_etcParams.y > 1.0f) {
    _2835 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _2836 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _2840 = saturate(1.0f - (dot(float2(_2835, _2836), float2(_2835, _2836)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _2845 = (_2840 * _2824);
    _2846 = (_2840 * _2825);
    _2847 = (_2840 * _2826);
  } else {
    _2845 = _2824;
    _2846 = _2825;
    _2847 = _2826;
  }
  if (_2471 && (_etcParams.z > 0.0f)) {
    _2877 = select((_2845 <= 0.0031308f), (_2845 * 12.92f), (((pow(_2845, 0.41666666f)) * 1.055f) + -0.055f));
    _2878 = select((_2846 <= 0.0031308f), (_2846 * 12.92f), (((pow(_2846, 0.41666666f)) * 1.055f) + -0.055f));
    _2879 = select((_2847 <= 0.0031308f), (_2847 * 12.92f), (((pow(_2847, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _2877 = _2845;
    _2878 = _2846;
    _2879 = _2847;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2884 = (float)((uint)((uint)(_2455)));
    if (!(_2884 < _viewDir.w)) {
      if (!(_2884 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _2893 = _2877;
        _2894 = _2878;
        _2895 = _2879;
      } else {
        _2893 = 0.0f;
        _2894 = 0.0f;
        _2895 = 0.0f;
      }
    } else {
      _2893 = 0.0f;
      _2894 = 0.0f;
      _2895 = 0.0f;
    }
  } else {
    _2893 = _2877;
    _2894 = _2878;
    _2895 = _2879;
  }
  _2905 = exp2(log2(_2893 * 0.0001f) * 0.15930176f);
  _2906 = exp2(log2(_2894 * 0.0001f) * 0.15930176f);
  _2907 = exp2(log2(_2895 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_2905 * 18.6875f) + 1.0f)) * ((_2905 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_2906 * 18.6875f) + 1.0f)) * ((_2906 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_2907 * 18.6875f) + 1.0f)) * ((_2907 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _2468;
  return SV_Target;
}
