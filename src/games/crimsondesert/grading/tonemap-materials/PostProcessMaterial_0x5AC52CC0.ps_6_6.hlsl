struct PostProcessUber_CDStruct {
  uint _noiseTex;
  float _itemRatio;
  float _borderRatio;
  float _borderWidth;
  float _borderSmoothness;
  float _borderEdgeNoiseRatio;
  float2 _borderEdgeNoiseOffset;
  float2 _borderEdgeNoiseTile;
  uint _borderColor;
  uint _borderEdgeNoiseTexture;
  float _borderFlickerSpeed;
  float _borderFlickerIntensity;
  float2 _borderFlickerOpacityMinMax;
  float _dropItemFakeLightIntensity;
  float _dropItemBlurWidth;
  float _dropItemBlurIntensity;
  float3 _channelBrightness;
  float _contrast;
  float3 _saturation;
  float _fishEyeMaxPower;
  uint _enemyMaskColor;
  uint _objectiveMaskColor;
  float _uiMainMenuEffect;
  float _uiQuickSlotEffect;
  uint _detectColorBase;
  float _detectModeG;
  float _detectModeR;
  float _detectModeB;
  float _detectModeKnowledge;
  float _detectModeInterrupt;
  uint _detectLiftColor;
  float _statusVignetteRatio1;
  float _statusVignetteRadius1;
  float _statusVignettePower1;
  float _statusVignetteChromaticShift1;
  uint _statusVignetteColor1;
  float _statusVignetteRatio2;
  float _statusVignetteRadius2;
  float _statusVignettePower2;
  float _statusVignetteChromaticShift2;
  uint _statusVignetteColor2;
  float _statusVignetteRatio3;
  float _statusVignetteRadius3;
  float _statusVignettePower3;
  float _statusVignetteChromaticShift3;
  uint _statusVignetteColor3;
  uint _temperatureWarningTex;
  uint _electrocutionTex;
  uint _enemyAlertTex;
  uint _wantedRegionColor;
  float _chromaticAberrationRatio;
  float _chromaticAberrationShiftValue;
  float2 _chromaticAberrationShiftPosition;
  float _invertColor;
  uint _followLearningColor;
  uint _followLearningSaturationTone;
  uint _followLearningNoiseTex;
  float _isBloodEffect;
  float _testEffectRatio;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_noiseTex : register(t8, space36);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

struct BindlessParameters_PostProcessUber_CD {
  PostProcessUber_CDStruct BindlessParameters_PostProcessUber_CD;
};

typedef BindlessParameters_PostProcessUber_CD BindlessParameters_PostProcessUber_CD_t;
ConstantBuffer<BindlessParameters_PostProcessUber_CD_t> BindlessParameters_PostProcessUber_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointWrap : register(s8, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _36;
  int _42;
  float _50;
  int _51;
  float _59;
  int _60;
  float _68;
  int _69;
  float _77;
  float _81;
  int _82;
  float _90;
  float _94;
  int _95;
  float _103;
  float _107;
  int _108;
  float _116;
  float _120;
  int _121;
  float _129;
  int _130;
  float _138;
  int _139;
  float _147;
  float _174;
  float _213;
  float _214;
  float _217;
  float _218;
  float _239;
  float _240;
  float _310;
  float _311;
  float _312;
  float _347;
  float _432;
  float _433;
  float _434;
  float _475;
  float _476;
  float _477;
  float _528;
  float _529;
  float _530;
  float _592;
  float _593;
  float _594;
  float _595;
  float _596;
  float _597;
  float _667;
  float _668;
  float _669;
  float _726;
  float _727;
  float _928;
  float _929;
  float _930;
  float _963;
  float _964;
  float _965;
  int _966;
  float _1143;
  float _1144;
  float _1145;
  float _1208;
  float _1209;
  float _1210;
  float _1250;
  float _1251;
  float _1252;
  float _1387;
  float _1388;
  float _1389;
  float _1451;
  float _1452;
  float _1453;
  float _1454;
  float _1455;
  float _1456;
  float _1655;
  float _1742;
  float _1743;
  float _1744;
  float _1866;
  float _1867;
  float _1868;
  float _1987;
  float _1988;
  float _1989;
  float _2107;
  float _2108;
  float _2109;
  float _2170;
  float _2171;
  float _2172;
  bool _2526;
  bool _2543;
  float _2590;
  float _2591;
  float _2592;
  float _2593;
  float _2726;
  float _2727;
  float _2728;
  float _2758;
  float _2759;
  float _2760;
  float _2903;
  float _2904;
  float _2905;
  float _2919;
  float _3124;
  float _3125;
  float _3126;
  float _3219;
  float _3220;
  float _3221;
  float _3275;
  float _3276;
  float _3277;
  float _3296;
  float _3297;
  float _3298;
  float _3328;
  float _3329;
  float _3330;
  float _3344;
  float _3345;
  float _3346;
  float _156;
  float _161;
  float _162;
  float _163;
  float _164;
  float _178;
  float _183;
  float _187;
  float _196;
  float _202;
  float _207;
  int _219;
  float _227;
  float4 _243;
  int _247;
  int _255;
  float4 _279;
  float _288;
  float _289;
  float _302;
  int _313;
  float _321;
  int _326;
  float _334;
  int _337;
  float _345;
  float _355;
  float4 _379;
  int _384;
  float _392;
  bool _394;
  bool _395;
  int _397;
  float _405;
  float _415;
  float _416;
  float _427;
  float _449;
  float _450;
  float _459;
  float _460;
  float _462;
  int _482;
  float _491;
  float _492;
  float _493;
  float _494;
  float _503;
  float _504;
  float _506;
  int _531;
  float _539;
  int _540;
  float _548;
  int _549;
  float _557;
  int _558;
  float _566;
  int _567;
  float _575;
  float _580;
  bool _598;
  float _602;
  float _603;
  float _604;
  float _611;
  float _613;
  float _615;
  float _617;
  float _618;
  float _619;
  float _623;
  float _628;
  float _638;
  float _639;
  float _647;
  float _654;
  float _655;
  float _656;
  uint2 _685;
  uint _700;
  int _702;
  float _710;
  float _711;
  float _713;
  float _714;
  float _715;
  float _729;
  float _730;
  float _731;
  float _732;
  float _734;
  float4 _740;
  int _753;
  float _761;
  float _762;
  float _788;
  int _805;
  float _813;
  int _823;
  int _831;
  float _834;
  float _837;
  float _839;
  float _872;
  bool _885;
  float _914;
  float _915;
  float _916;
  bool _923;
  float _937;
  int _975;
  int _983;
  float _986;
  float _989;
  float _991;
  float _1024;
  float _1032;
  float _1034;
  float _1040;
  float _1042;
  float _1043;
  float _1071;
  float _1077;
  float _1078;
  float _1082;
  float _1089;
  float _1091;
  float _1098;
  float _1102;
  float _1105;
  float _1106;
  float _1109;
  float _1132;
  float4 _1157;
  float _1163;
  float _1166;
  float _1167;
  float _1168;
  float _1176;
  float _1181;
  float _1182;
  float _1197;
  float _1211;
  float _1217;
  float _1221;
  float _1222;
  float _1230;
  float _1237;
  float _1238;
  float _1239;
  float _1258;
  float _1273;
  float _1284;
  int _1287;
  int _1295;
  float _1309;
  float _1312;
  float _1313;
  float _1325;
  float _1337;
  float _1340;
  float _1341;
  bool _1349;
  float _1351;
  float _1360;
  float _1362;
  float _1366;
  float _1367;
  float _1374;
  float _1375;
  float _1376;
  int _1390;
  float _1400;
  float _1401;
  float _1402;
  int _1403;
  float _1413;
  float _1414;
  float _1415;
  int _1416;
  float _1424;
  bool _1429;
  bool _1436;
  float _1437;
  bool _1445;
  float _1446;
  float _1457;
  float _1458;
  float _1459;
  float _1463;
  float _1465;
  float _1467;
  float _1472;
  int _1477;
  float _1485;
  float _1489;
  float _1496;
  float _1497;
  float _1498;
  int _1499;
  float _1507;
  float _1510;
  float _1520;
  float _1521;
  float _1522;
  int _1523;
  float _1531;
  int _1534;
  float _1543;
  float _1544;
  int _1547;
  float _1556;
  float _1557;
  int _1560;
  int _1568;
  int _1577;
  float _1585;
  int _1586;
  float _1594;
  float _1600;
  float _1603;
  float _1604;
  float _1613;
  int _1614;
  float _1622;
  int _1625;
  float _1634;
  float _1635;
  int _1643;
  float _1651;
  int _1657;
  float _1665;
  float _1671;
  int _1672;
  int _1680;
  float _1683;
  float _1686;
  float _1688;
  float _1713;
  bool _1720;
  float _1721;
  float _1728;
  float _1747;
  float _1748;
  int _1753;
  float _1761;
  int _1767;
  float _1775;
  float _1780;
  float _1785;
  float _1792;
  float _1793;
  float _1794;
  int _1795;
  int _1803;
  float _1806;
  float _1809;
  float _1811;
  float _1836;
  bool _1843;
  float _1844;
  float _1851;
  float _1858;
  float _1871;
  float _1872;
  int _1877;
  float _1885;
  int _1890;
  float _1898;
  float _1903;
  float _1906;
  float _1913;
  float _1914;
  float _1915;
  int _1916;
  int _1924;
  float _1927;
  float _1930;
  float _1932;
  float _1957;
  bool _1964;
  float _1965;
  float _1972;
  float _1979;
  float _1992;
  float _1993;
  int _1998;
  float _2006;
  int _2010;
  float _2018;
  float _2023;
  float _2026;
  float _2033;
  float _2034;
  float _2035;
  int _2036;
  int _2044;
  float _2047;
  float _2050;
  float _2052;
  float _2077;
  bool _2084;
  float _2085;
  float _2092;
  float _2099;
  float _2114;
  float _2115;
  float _2116;
  float _2124;
  float _2132;
  float _2140;
  float _2143;
  float _2146;
  float _2153;
  float _2154;
  float _2155;
  float _2159;
  int _2177;
  int _2185;
  float _2188;
  float _2191;
  float _2193;
  float _2223;
  float _2224;
  float _2225;
  float _2226;
  int _2227;
  int _2235;
  float4 _2246;
  float _2253;
  float _2256;
  float _2258;
  float _2259;
  float _2295;
  uint _2306;
  uint _2307;
  uint4 _2309;
  float4 _2312;
  float _2330;
  float _2331;
  float _2332;
  float _2334;
  float _2335;
  float _2336;
  float _2337;
  float _2340;
  float _2341;
  float _2344;
  float _2345;
  float _2349;
  float _2351;
  float _2352;
  float _2353;
  float _2354;
  float _2356;
  float _2359;
  float _2360;
  float _2361;
  float _2362;
  float _2371;
  float _2375;
  float _2379;
  float _2381;
  float _2383;
  float _2384;
  float _2387;
  float _2390;
  float _2391;
  float4 _2398;
  float _2401;
  float _2410;
  float _2413;
  float _2414;
  float _2419;
  float _2421;
  float _2426;
  float _2429;
  float _2430;
  float _2435;
  float _2439;
  float _2445;
  float _2455;
  float _2458;
  float _2460;
  bool _2463;
  bool _2464;
  bool _2465;
  bool _2466;
  float _2478;
  float4 _2491;
  bool _2527;
  bool _2529;
  float _2545;
  float _2552;
  float _2553;
  float _2554;
  bool _2555;
  float _2562;
  float4 _2566;
  float _2580;
  float _2594;
  float _2601;
  float _2602;
  float _2603;
  float _2605;
  float _2611;
  float _2618;
  float _2619;
  float _2620;
  int _2621;
  int _2629;
  float _2632;
  float _2635;
  float _2637;
  float _2662;
  float _2663;
  float _2664;
  float _2668;
  float _2670;
  float _2672;
  float _2677;
  float _2690;
  float _2691;
  float _2692;
  float _2706;
  float _2711;
  float _2715;
  float _2729;
  float _2733;
  float _2740;
  float _2741;
  float _2742;
  float _2747;
  bool _2780;
  float _2786;
  float4 _2803;
  float _2806;
  float _2807;
  float _2817;
  float _2820;
  float _2821;
  int _2832;
  int _2840;
  float4 _2847;
  bool _2852;
  bool _2854;
  bool _2858;
  bool _2866;
  float _2890;
  float _2892;
  uint _2906;
  bool _2922;
  float _2928;
  float _2977;
  float _2978;
  float _2979;
  float _2981;
  float _2988;
  float _2989;
  float _2990;
  float _3009;
  float _3010;
  float _3011;
  float _3012;
  float _3013;
  float _3014;
  float _3015;
  float _3016;
  float _3017;
  float _3063;
  float _3064;
  float _3065;
  float _3066;
  float _3067;
  float _3068;
  float _3069;
  float _3086;
  float _3087;
  float _3088;
  float _3089;
  float _3095;
  float _3098;
  float _3105;
  float _3106;
  float _3107;
  float _3136;
  float _3161;
  float _3162;
  float _3163;
  float _3182;
  float _3183;
  float _3184;
  float _3190;
  float _3194;
  float _3195;
  float _3196;
  float _3197;
  float _3202;
  float _3227;
  float _3231;
  float _3232;
  float _3233;
  float _3234;
  float _3264;
  float _3286;
  float _3287;
  float _3291;
  float _3335;
  _36 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _42 = WaveReadLaneFirst(_materialIndex);
  _50 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_42 < (uint)170000), _42, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteRatio1);
  _51 = WaveReadLaneFirst(_materialIndex);
  _59 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_51 < (uint)170000), _51, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteRatio2);
  _60 = WaveReadLaneFirst(_materialIndex);
  _68 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_60 < (uint)170000), _60, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteRatio3);
  _69 = WaveReadLaneFirst(_materialIndex);
  _77 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_69 < (uint)170000), _69, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteChromaticShift1);
  _81 = ((float)((uint)((uint)(_enableChromaticAberration)))) * _77;
  _82 = WaveReadLaneFirst(_materialIndex);
  _90 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_82 < (uint)170000), _82, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteChromaticShift2);
  _94 = ((float)((uint)((uint)(_enableChromaticAberration)))) * _90;
  _95 = WaveReadLaneFirst(_materialIndex);
  _103 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_95 < (uint)170000), _95, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteChromaticShift3);
  _107 = ((float)((uint)((uint)(_enableChromaticAberration)))) * _103;
  _108 = WaveReadLaneFirst(_materialIndex);
  _116 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_108 < (uint)170000), _108, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._chromaticAberrationRatio);
  _120 = ((float)((uint)((uint)(_enableChromaticAberration)))) * _116;
  // RenoDX: >>> [Patch: BasicPostProcessChromaticAberration] [Version: 1.13.00]
  // Description: SDR gameplay on the material-final arrangement can use this composite material shader as the final visible output and skip the standalone SDR final shader where RenoDX normally scales chromatic aberration. Apply the RenoDX Chromatic Aberration setting to this shader's generic material chromatic aberration ratio while leaving separate status/vignette chromatic effects under the game's native controls.
  _120 *= CUSTOM_CHROMATIC_ABERRATION;
  // RenoDX: <<< [Patch: BasicPostProcessChromaticAberration]
  _121 = WaveReadLaneFirst(_materialIndex);
  _129 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_121 < (uint)170000), _121, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._chromaticAberrationShiftValue);
  _130 = WaveReadLaneFirst(_materialIndex);
  _138 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_130 < (uint)170000), _130, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._isBloodEffect);
  _139 = WaveReadLaneFirst(_materialIndex);
  _147 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_139 < (uint)170000), _139, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._fishEyeMaxPower);
  [branch]
  if (((_147 > 0.001f) || (_147 < -0.001f)) || (_followLearning > 0.001f)) {
    _156 = 0.5f / _36;
    _161 = ((_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x) + -0.5f;
    _162 = ((_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x) - _156;
    _163 = dot(float2(_161, _162), float2(_161, _162));
    _164 = sqrt(_163);
    if (_followLearning > 0.001f) {
      _174 = ((pow(_followLearning, 0.25f)) * 1.5f);
    } else {
      _174 = _147;
    }
    if (_174 > 0.0f) {
      _178 = sqrt(dot(float2(0.5f, _156), float2(0.5f, _156)));
      _183 = tan(_174 * _164) * (rsqrt(_163) * _178);
      _187 = tan(_178 * _174);
      _213 = (((_183 * _161) / _187) + 0.5f);
      _214 = (((_183 * _162) / _187) + _156);
    } else {
      if (_174 < 0.0f) {
        _196 = select((_36 < 1.0f), 0.5f, _156);
        _202 = atan((_174 * _164) * -10.0f) * (rsqrt(_163) * _196);
        _207 = atan((_174 * -10.0f) * _196);
        _213 = (((_202 * _161) / _207) + 0.5f);
        _214 = (((_202 * _162) / _207) + _156);
      } else {
        _213 = 0.0f;
        _214 = 0.0f;
      }
    }
    _217 = _213;
    _218 = (_214 * _36);
  } else {
    _217 = TEXCOORD.x;
    _218 = TEXCOORD.y;
  }
  _219 = WaveReadLaneFirst(_materialIndex);
  _227 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_219 < (uint)170000), _219, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._uiQuickSlotEffect);
  if (!(!(_227 >= 0.001f))) {
    _239 = ((_227 * (0.03f - (_217 * 0.060000002f))) + _217);
    _240 = ((_227 * (0.03f - (_218 * 0.060000002f))) + _218);
  } else {
    _239 = _217;
    _240 = _218;
  }
  _243 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_239, _240));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _247 = WaveReadLaneFirst(_materialIndex);
  _255 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_247 < (uint)170000), _247, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._noiseTex);
  [branch]
  if (!(!(_fleeCount >= 0.001f))) {
    _279 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_255 < (uint)65000), _255, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x * 4.0f), ((((_fleeCount * 0.001f) + -0.1f) + ((TEXCOORD.y / _36) * 4.0f)) + (_time.x * 0.02f))));
    _288 = (TEXCOORD.x + -0.5f) + ((_279.x + -0.5f) * 0.15f);
    _289 = (TEXCOORD.y + -0.5f) + ((_279.y + -0.5f) * 0.15f);
    // [sem: expr_sat]
    _302 = saturate(_fleeCount * 0.2f) * saturate((((_fleeCount * 0.005f) + -0.6f) + sqrt((_288 * _288) + (_289 * _289))) / ((_fleeCount * 0.004f) + 0.1f));
    _310 = (_243.x - (_302 * _243.x));
    _311 = (_243.y - (_302 * _243.y));
    _312 = (_243.z - (_302 * _243.z));
  } else {
    _310 = _243.x;
    _311 = _243.y;
    _312 = _243.z;
  }
  _313 = WaveReadLaneFirst(_materialIndex);
  _321 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_313 < (uint)170000), _313, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
  if ((_227 >= 0.001f) || (_321 >= 0.001f)) {
    _326 = WaveReadLaneFirst(_materialIndex);
    _334 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_326 < (uint)170000), _326, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
    if (_334 > _227) {
      _337 = WaveReadLaneFirst(_materialIndex);
      _345 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_337 < (uint)170000), _337, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
      _347 = _345;
    } else {
      _347 = _227;
    }
    _355 = _347 * 0.5f;
    _379 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_255 < (uint)65000), _255, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 2.0f) * _36), (TEXCOORD.y * 2.0f)));
    _384 = WaveReadLaneFirst(_materialIndex);
    _392 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_384 < (uint)170000), _384, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
    _394 = (_227 < 0.001f);
    _395 = _394 && (_392 >= 0.001f);
    _397 = WaveReadLaneFirst(_materialIndex);
    _405 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_397 < (uint)170000), _397, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
    _415 = (TEXCOORD.y - select(_395, 0.55f, 0.5f)) - ((_379.y + -0.5f) * 0.05f);
    _416 = ((TEXCOORD.x - ((_379.x + -0.5f) * 0.05f)) + select(_395, -0.42f, -0.5f)) * _36;
    _427 = ((_347 * -0.9f) * (1.0f - saturate((select((_394 && (_405 >= 0.001f)), 0.35f, 0.4f) - sqrt((_416 * _416) + (_415 * _415))) * 1.4285715f))) + 1.0f;
    _432 = (_427 * ((_355 * (((_311 * 0.75f) - (_310 * 0.607f)) + (_312 * 0.189f))) + _310));
    _433 = (_427 * ((_355 * (((_310 * 0.349f) - (_311 * 0.314f)) + (_312 * 0.168f))) + _311));
    _434 = (_427 * ((_355 * (((_310 * 0.272f) + (_311 * 0.534f)) - (_312 * 0.869f))) + _312));
  } else {
    _432 = _310;
    _433 = _311;
    _434 = _312;
  }
  if (((_50 >= 0.001f) && (_81 >= 0.001f)) || ((_59 >= 0.001f) && (_94 >= 0.001f)) || ((_68 >= 0.001f) && (_107 >= 0.001f))) {
    _449 = _239 + -0.5f;
    _450 = _240 + -0.5f;
    // [sem: invLength]
    _459 = rsqrt(dot(float2(_449, _450), float2(_449, _450))) * ((max(max(_81, _94), _107) * 0.01f) * sqrt((_450 * _450) + (_449 * _449)));
    _460 = _459 * _449;
    _462 = _459 * _450;
    _475 = (((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_239 - _460), (_240 - _462))))).x);
    _476 = (((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_239, _240)))).y);
    _477 = (((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_460 + _239), (_462 + _240))))).z);
  } else {
    _475 = _432;
    _476 = _433;
    _477 = _434;
  }
  if ((_120 >= 0.001f) && (_129 >= 0.001f)) {
    _482 = WaveReadLaneFirst(_materialIndex);
    _491 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_482 < (uint)170000), _482, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._chromaticAberrationShiftPosition.x);
    _492 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_482 < (uint)170000), _482, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._chromaticAberrationShiftPosition.y);
    _493 = _239 - _491;
    _494 = _240 - _492;
    _503 = rsqrt(dot(float2(_493, _494), float2(_493, _494))) * ((_129 * 0.01f) * sqrt((_494 * _494) + (_493 * _493)));  // [sem: invLength]
    _504 = _503 * _493;
    _506 = _503 * _494;
    _528 = ((((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_239 - _504), (_240 - _506))))).x) - _475) * _120) + _475);
    _529 = ((((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_239, _240)))).y) - _476) * _120) + _476);
    _530 = ((((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_504 + _239), (_506 + _240))))).z) - _477) * _120) + _477);
  } else {
    _528 = _432;
    _529 = _433;
    _530 = _434;
  }
  _531 = WaveReadLaneFirst(_materialIndex);
  _539 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_531 < (uint)170000), _531, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._detectModeG);
  _540 = WaveReadLaneFirst(_materialIndex);
  _548 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_540 < (uint)170000), _540, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._detectModeR);
  _549 = WaveReadLaneFirst(_materialIndex);
  _557 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_549 < (uint)170000), _549, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._detectModeB);
  _558 = WaveReadLaneFirst(_materialIndex);
  _566 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_558 < (uint)170000), _558, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._detectModeKnowledge);
  _567 = WaveReadLaneFirst(_materialIndex);
  _575 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_567 < (uint)170000), _567, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._detectModeInterrupt);
  _580 = saturate((((_548 + _539) + _557) + _566) + _575);  // [sem: expr_sat]
  [branch]
  if (_580 > 0.0f) {
    if (!(_539 >= 0.001f)) {
      if (!(_548 >= 0.001f)) {
        if (!(_557 >= 0.001f)) {
          if (!(!(_566 >= 0.001f))) {
            _592 = 0.6f;
            _593 = 0.6f;
            _594 = 0.8f;
            _595 = 0.5f;
            _596 = 0.45f;
            _597 = 0.95f;
          } else {
            _592 = 0.0f;
            _593 = 0.0f;
            _594 = 0.0f;
            _595 = 0.0f;
            _596 = 0.0f;
            _597 = 0.0f;
          }
        } else {
          _592 = 0.6f;
          _593 = 0.7f;
          _594 = 0.7f;
          _595 = 0.6f;
          _596 = 0.7f;
          _597 = 0.8f;
        }
      } else {
        _592 = 0.7f;
        _593 = 0.6f;
        _594 = 0.6f;
        _595 = 0.8f;
        _596 = 0.7f;
        _597 = 0.6f;
      }
    } else {
      _592 = 0.6f;
      _593 = 0.7f;
      _594 = 0.6f;
      _595 = 0.6f;
      _596 = 0.8f;
      _597 = 0.7f;
    }
    _598 = (_575 >= 0.001f);
    _602 = select(_598, 0.8f, _595);
    _603 = select(_598, 0.6f, _596);
    _604 = select(_598, 0.2f, _597);
    _611 = (1.0f - _602) * 0.3086f;
    _613 = (1.0f - _603) * 0.6094f;
    _615 = (1.0f - _604) * 0.082f;
    _617 = select(_598, 2.0f, _592) * _528;
    _618 = select(_598, 2.0f, _593) * _529;
    _619 = select(_598, 2.0f, _594) * _530;
    _623 = _611 * _617;
    _628 = 0.01f / max(0.001f, _exposure0.x);
    _638 = max((abs(TEXCOORD.x + -0.5f) + -0.075f), 0.0f);
    _639 = max((abs(TEXCOORD.y + -0.5f) + -0.075f), 0.0f);
    _647 = (_580 * 0.75f) * saturate(sqrt((_639 * _639) + (_638 * _638)) * 2.0f);
    _654 = ((mad(_619, _615, mad(_618, _613, ((_611 + _602) * _617))) - _528) * _580) + _528;
    _655 = ((mad(_619, _615, mad(_618, (_613 + _603), _623)) - _529) * _580) + _529;
    _656 = ((mad(_619, (_615 + _604), mad(_618, _613, _623)) - _530) * _580) + _530;
    _667 = ((_647 * ((_628 * _602) - _654)) + _654);
    _668 = ((_647 * ((_628 * _603) - _655)) + _655);
    _669 = ((_647 * ((_628 * _604) - _656)) + _656);
  } else {
    _667 = _528;
    _668 = _529;
    _669 = _530;
  }
  if ((((_highLightForVisionRemoteCatch > 0.0f) || (_highLightForVision > 0.0f)) || (_characterHighlight > 0.0f)) || (_followLearning > 0.001f)) {
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_685.x, _685.y);
    // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
    _700 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_685.x))))))) + 0.5f) * _239)), ((int)((((float)((int)((int)((float)((int)((int)(_685.y))))))) + 0.5f) * _240)), 0));
    _702 = _700.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _710 = (((float)((uint)((uint)((uint)((uint)(_700.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _711 = (((float)((uint)((uint)(((uint)((uint)(_700.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _713 = 1.0f - abs(_710);
    _714 = abs(_711);
    _715 = _713 - _714;
    if (!(_715 >= 0.0f)) {
      _726 = (select((_710 >= 0.0f), 1.0f, -1.0f) * (1.0f - _714));
      _727 = (select((_711 >= 0.0f), 1.0f, -1.0f) * _713);
    } else {
      _726 = _710;
      _727 = _711;
    }
    _729 = rsqrt(dot(float3(_726, _727, _715), float3(_726, _727, _715)));  // [sem: invLength]
    _730 = _729 * _726;
    _731 = _729 * _727;
    _732 = _729 * _715;
    _734 = rsqrt(dot(float3(_730, _731, _732), float3(_730, _731, _732)));  // [sem: invLength]
    _740 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_239, _240));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    [branch]
    if (_702 == _renderPassTest) {
      _753 = WaveReadLaneFirst(_materialIndex);
      _761 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_753 < (uint)170000), _753, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._testEffectRatio);
      _762 = _761 * (1.0f / max(0.001f, _exposure0.x));
      _963 = (_762 + _667);
      _964 = _668;
      _965 = (_762 + _669);
      _966 = _702;
    } else {
      if ((_702 == _renderPassDetectObjective) || ((!(_702 == _renderPassDetectObjective)) && (_702 == _renderPassKnowledgeNPC))) {
        _788 = ((((float4)(__3__36__0__0__g_noiseTex.SampleLevel(__0__4__0__0__g_staticPointWrap, float2(frac((TEXCOORD.x * 0.015625f) * _bufferSizeAndInvSize.x), frac((TEXCOORD.y * 0.015625f) * _bufferSizeAndInvSize.y)), 0.0f))).x) * 0.5f) + 0.5f;
        _963 = ((((_788 * _740.x) - _667) * _740.w) + _667);
        _964 = ((((_788 * _740.y) - _668) * _740.w) + _668);
        _965 = ((((_788 * _740.z) - _669) * _740.w) + _669);
        _966 = _702;
      } else {
        bool __branch_chain_801;
        if (!(_702 == _renderPassDetectRemoteCatch)) {
          __branch_chain_801 = true;
        } else {
          _805 = WaveReadLaneFirst(_materialIndex);
          _813 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_805 < (uint)170000), _805, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._itemRatio);
          if (!(_813 > 0.001f)) {
            __branch_chain_801 = true;
          } else {
            if (!((_highLightForVision > 0.0f) || (_highLightForVisionRemoteCatch > 0.0f))) {
              __branch_chain_801 = true;
            } else {
              __branch_chain_801 = false;
            }
          }
        }
        if (__branch_chain_801) {
          _885 = (_702 == _renderPassSelfPlayer);
          if ((_885) || ((_702 == _renderPassTest) || (_702 == _renderPassEnemy)) || (_702 == _renderPassDetectPickedRemoteCatch)) {
            if ((_characterHighlight > 0.001f) || (_highLightForVisionRemoteCatch > 0.001f)) {
              _914 = 1.0f - saturate(dot(float3((_734 * _730), (_734 * _731), (_734 * _732)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
              _915 = _914 * _914;
              _916 = _915 * _915;
              if (!_885) {
                if (!(_702 == _renderPassTest)) {
                  _923 = (_702 == _renderPassEnemy);
                  _928 = select(_923, 1.0f, 0.2f);
                  _929 = select(_923, 0.3f, 0.4f);
                  _930 = select(_923, 0.3f, 1.0f);
                } else {
                  _928 = 1.0f;
                  _929 = 1.0f;
                  _930 = 1.0f;
                }
              } else {
                _928 = 1.0f;
                _929 = 1.0f;
                _930 = 1.0f;
              }
              _937 = 1.0f / max(0.001f, _exposure0.x);
              _963 = ((((_740.x - _667) + ((((_937 + (_667 * 10.0f)) * _928) - _740.x) * _916)) * _740.w) + _667);
              _964 = ((((_740.y - _668) + ((((_937 + (_668 * 10.0f)) * _929) - _740.y) * _916)) * _740.w) + _668);
              _965 = ((((_740.z - _669) + ((((_937 + (_669 * 10.0f)) * _930) - _740.z) * _916)) * _740.w) + _669);
              _966 = _702;
            } else {
              _963 = _667;
              _964 = _668;
              _965 = _669;
              _966 = _702;
            }
          } else {
            _963 = _667;
            _964 = _668;
            _965 = _669;
            _966 = _702;
          }
        } else {
          _823 = WaveReadLaneFirst(_materialIndex);
          _831 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_823 < (uint)170000), _823, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._detectColorBase);
          _834 = (float)((uint)((uint)(((uint)((uint)(_831)) >> 16) & 255)));
          _837 = (float)((uint)((uint)(((uint)((uint)(_831)) >> 8) & 255)));
          _839 = (float)((uint)((uint)(_831 & 255)));
          _872 = max(0.001f, _exposure0.x);
          _963 = ((((select(((_834 * 0.003921569f) < 0.04045f), (_834 * 0.000303527f), exp2(log2((_834 * 0.003717127f) + 0.052132703f) * 2.4f)) * 10.0f) / _872) * _740.w) + _667);
          _964 = ((((select(((_837 * 0.003921569f) < 0.04045f), (_837 * 0.000303527f), exp2(log2((_837 * 0.003717127f) + 0.052132703f) * 2.4f)) * 10.0f) / _872) * _740.w) + _668);
          _965 = ((((select(((_839 * 0.003921569f) < 0.04045f), (_839 * 0.000303527f), exp2(log2((_839 * 0.003717127f) + 0.052132703f) * 2.4f)) * 10.0f) / _872) * _740.w) + _669);
          _966 = _702;
        }
      }
    }
  } else {
    _963 = _667;
    _964 = _668;
    _965 = _669;
    _966 = 0;
  }
  if (!(!(_wantedRegionRatio >= 0.001f))) {
    [branch]
    if (!(!(_wantedRegionOpacity >= 0.001f))) {
      _975 = WaveReadLaneFirst(_materialIndex);
      _983 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_975 < (uint)170000), _975, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._wantedRegionColor);
      _986 = (float)((uint)((uint)(((uint)((uint)(_983)) >> 16) & 255)));
      _989 = (float)((uint)((uint)(((uint)((uint)(_983)) >> 8) & 255)));
      _991 = (float)((uint)((uint)(_983 & 255)));
      _1024 = max(0.001f, _exposure0.x);
      _1032 = _wantedRegionRadius * _wantedRegionRatio;
      _1034 = saturate(_1032) * 4.0f;
      _1040 = (_239 * 2.0f) + -1.0f;
      _1042 = 1.0f - (_240 * 2.0f);
      _1043 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_239, _240))).x));
      _1071 = mad((_invViewProj[3].z), _1043, mad((_invViewProj[3].y), _1042, ((_invViewProj[3].x) * _1040))) + (_invViewProj[3].w);
      _1077 = ((mad((_invViewProj[0].z), _1043, mad((_invViewProj[0].y), _1042, ((_invViewProj[0].x) * _1040))) + (_invViewProj[0].w)) / _1071) - _wantedRegionPosition.x;
      _1078 = ((mad((_invViewProj[2].z), _1043, mad((_invViewProj[2].y), _1042, ((_invViewProj[2].x) * _1040))) + (_invViewProj[2].w)) / _1071) - _wantedRegionPosition.z;
      _1082 = sqrt((_1077 * _1077) + (_1078 * _1078));
      _1089 = saturate(floor(_1082 / _1032));  // [sem: expr_sat]
      _1091 = (1.0f - _1089) * saturate(((_1034 - _1032) + _1082) / _1034);
      _1098 = (1.0f - saturate((_1082 - _1032) / _1034)) * _1089;
      _1102 = saturate(((_1098 * _1098) * _1098) + ((_1091 * _1091) * _1091));  // [sem: expr_sat]
      _1105 = saturate((_1102 * 5.0f) + -4.0f);  // [sem: expr_sat]
      _1106 = _1105 * _1105;
      _1109 = ((_1106 * _1106) * 9.0f) + 1.0f;
      _1132 = (((((float)((uint)((uint)((uint)((uint)(_983)) >> 24)))) * 0.003921569f) * _wantedRegionOpacity) * _1102) * ((float)((bool)((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _239) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _240) + -0.5f))), 0)))).x) & 127) + (int)(-52)) > (uint)15)));
      _1143 = ((_1132 * ((_1109 * (select(((_986 * 0.003921569f) < 0.04045f), (_986 * 0.000303527f), exp2(log2((_986 * 0.003717127f) + 0.052132703f) * 2.4f)) / _1024)) - _963)) + _963);
      _1144 = ((_1132 * ((_1109 * (select(((_989 * 0.003921569f) < 0.04045f), (_989 * 0.000303527f), exp2(log2((_989 * 0.003717127f) + 0.052132703f) * 2.4f)) / _1024)) - _964)) + _964);
      _1145 = ((_1132 * ((_1109 * (select(((_991 * 0.003921569f) < 0.04045f), (_991 * 0.000303527f), exp2(log2((_991 * 0.003717127f) + 0.052132703f) * 2.4f)) / _1024)) - _965)) + _965);
    } else {
      _1143 = _963;
      _1144 = _964;
      _1145 = _965;
    }
  } else {
    _1143 = _963;
    _1144 = _964;
    _1145 = _965;
  }
  if (((_temperatureWarning <= -0.01f) || (_temperatureWarning >= 0.01f)) || (_electrocutionWarning > 0.001f)) {
    _1157 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_239, _240));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _1163 = _temperatureWarning * 0.01f;
    if (_temperatureWarning > 0.0f) {
      _1166 = saturate(saturate(_1163));  // [sem: expr_sat]
      _1167 = TEXCOORD.x + -0.5f;
      _1168 = TEXCOORD.y + -0.6f;
      _1176 = saturate((_1166 + -0.5f) + sqrt((_1168 * _1168) + (_1167 * _1167))) * _1166;
      _1181 = (1.0f - (_1176 * 0.3f)) * _1144;
      _1182 = (1.0f - (_1176 * 0.7f)) * _1145;
      _1208 = ((_1157.x - _1143) * _1157.w);
      _1209 = (lerp(_1181, _1157.y, _1157.w));  // [sem: blended]
      _1210 = (lerp(_1182, _1157.z, _1157.w));  // [sem: blended]
    } else {
      _1197 = (_1157.w * (1.0f - TEXCOORD.y)) * saturate(abs(_1163) * 2.0f);
      _1208 = (_1197 * (_1157.x - (_1143 * 0.3f)));
      _1209 = ((_1197 * (_1157.y - (_1144 * 0.100000024f))) + _1144);  // [sem: blended]
      _1210 = ((_1197 * _1157.z) + _1145);  // [sem: blended]
    }
    _1211 = _1143 + _1208;
    if (!(_electrocutionWarning == 0.0f)) {
      _1217 = max(0.001f, _exposure0.x);
      _1221 = TEXCOORD.x + -0.5f;
      _1222 = TEXCOORD.y + -0.6f;
      _1230 = (_electrocutionWarning * 0.5f) * saturate(sqrt((_1222 * _1222) + (_1221 * _1221)) + -0.3f);
      _1237 = (_1230 * ((0.05f / _1217) - _1211)) + _1211;
      _1238 = (_1230 * ((0.1f / _1217) - _1209)) + _1209;
      _1239 = (_1230 * ((0.5f / _1217) - _1210)) + _1210;
      _1250 = (lerp(_1237, _1157.x, _1157.w));  // [sem: blended]
      _1251 = (lerp(_1238, _1157.y, _1157.w));  // [sem: blended]
      _1252 = (lerp(_1239, _1157.z, _1157.w));  // [sem: blended]
    } else {
      _1250 = _1211;  // [sem: blended]
      _1251 = _1209;  // [sem: blended]
      _1252 = _1210;  // [sem: blended]
    }
  } else {
    _1250 = _1143;  // [sem: blended]
    _1251 = _1144;  // [sem: blended]
    _1252 = _1145;  // [sem: blended]
  }
  [branch]
  if (!(!(_hpPercentage <= 20.0f))) {
    _1258 = 1.0f - (_hpPercentage * 0.01f);
    if ((!(_hpPercentage <= 0.0f)) && (_1258 >= 0.001f)) {
      _1273 = _time.x * 0.3f;
      _1284 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_255 < (uint)65000), _255, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1273 + (TEXCOORD.x * 12.0f)), (_1273 + (TEXCOORD.y * 6.0f)))))).w) * 0.1f;
      _1287 = WaveReadLaneFirst(_materialIndex);
      _1295 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1287 < (uint)170000), _1287, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseTexture);
      _1309 = (_hpPercentage * 0.002f) + 0.36f;
      _1312 = max((abs(TEXCOORD.x + -0.5f) - _1309), 0.0f);
      _1313 = max((abs(TEXCOORD.y + -0.5f) - _1309), 0.0f);
      _1325 = sin(frac(_time.x * (2.0f - (_hpPercentage * 0.05f))) * 3.1415927f);
      _1337 = 1.0f - _240;
      _1340 = saturate((_1337 * _1337) * 2.0f);  // [sem: expr_sat]
      _1341 = saturate(_1325);  // [sem: _1325_sat]
      _1349 = ((_isPhotosensitiveMode_isAllolwBlood & 1) != 0);
      _1351 = (_1341 * 0.011267403f) + 0.02238649f;
      _1360 = 1.0f / max(0.001f, _exposure0.x);
      _1362 = select(_1349, 0.00699541f, 0.043172102f) * _1360;
      _1366 = (min(max(_1258, 0.0f), 1.0f) * saturate((saturate(((_1325 * 0.19999999f) + 0.8f) * saturate(sqrt((_1313 * _1313) + (_1312 * _1312)) * 3.846154f)) * 2.0f) - ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1295 < (uint)65000), _1295, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((TEXCOORD.x * 2.0f) + 0.3f) + _1284), (_1284 + TEXCOORD.y))))).x) * 1.44f))) * _1340;
      _1367 = _1340 * (0.13f - (_hpPercentage * 0.006f));
      _1374 = (((select(_1349, 0.21586052f, 0.043172102f) * _1360) - _1250) * _1367) + _1250;
      _1375 = ((_1362 - _1251) * _1367) + _1251;
      _1376 = ((_1362 - _1252) * _1367) + _1252;
      _1387 = ((((select(_1349, ((_1341 * 0.056337014f) + 0.11193244f), _1351) * _1360) - _1374) * _1366) + _1374);
      _1388 = ((((select(_1349, ((_1341 * 0.0053743417f) + 0.002124689f), _1351) * _1360) - _1375) * _1366) + _1375);
      _1389 = ((((select(_1349, 0.002124689f, _1351) * _1360) - _1376) * _1366) + _1376);
    } else {
      _1387 = _1250;
      _1388 = _1251;
      _1389 = _1252;
    }
  } else {
    _1387 = _1250;
    _1388 = _1251;
    _1389 = _1252;
  }
  _1390 = WaveReadLaneFirst(_materialIndex);
  _1400 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1390 < (uint)170000), _1390, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._channelBrightness.x);
  _1401 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1390 < (uint)170000), _1390, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._channelBrightness.y);
  _1402 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1390 < (uint)170000), _1390, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._channelBrightness.z);
  _1403 = WaveReadLaneFirst(_materialIndex);
  _1413 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1403 < (uint)170000), _1403, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._saturation.x);
  _1414 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1403 < (uint)170000), _1403, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._saturation.y);
  _1415 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1403 < (uint)170000), _1403, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._saturation.z);
  _1416 = WaveReadLaneFirst(_materialIndex);
  _1424 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1416 < (uint)170000), _1416, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._contrast);
  _1429 = (_138 > 0.001f);
  if (_1429 && ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0)) {
    _1436 = (_1400 > (_1401 + 0.05f)) && (_1400 > (_1402 + 0.05f));
    _1437 = _1400 * 0.4f;
    _1445 = (_1413 > (_1414 + 0.05f)) && (_1413 > (_1415 + 0.05f));
    _1446 = _1413 * 0.4f;
    _1451 = select(_1436, _1437, _1400);
    _1452 = select(_1436, _1437, _1401);
    _1453 = select(_1436, _1437, _1402);
    _1454 = select(_1445, _1446, _1413);
    _1455 = select(_1445, _1446, _1414);
    _1456 = select(_1445, _1446, _1415);
  } else {
    _1451 = _1400;
    _1452 = _1401;
    _1453 = _1402;
    _1454 = _1413;
    _1455 = _1414;
    _1456 = _1415;
  }
  _1457 = _1451 * _1387;
  _1458 = _1452 * _1388;
  _1459 = _1453 * _1389;
  _1463 = (1.0f - _1454) * 0.3086f;
  _1465 = (1.0f - _1455) * 0.6094f;
  _1467 = (1.0f - _1456) * 0.082f;
  _1472 = _1463 * _1457;
  _1477 = WaveReadLaneFirst(_materialIndex);
  _1485 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1477 < (uint)170000), _1477, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._contrast);
  _1489 = max(_1424, 0.0f);
  _1496 = max(0.0f, ((_1489 * (mad(_1459, _1467, mad(_1458, _1465, ((_1463 + _1454) * _1457))) + -0.5f)) + 0.5f));
  _1497 = max(0.0f, ((_1489 * (mad(_1459, _1467, mad(_1458, (_1465 + _1455), _1472)) + -0.5f)) + 0.5f));
  _1498 = max(0.0f, ((_1489 * (mad(_1459, (_1467 + _1456), mad(_1458, _1465, _1472)) + -0.5f)) + 0.5f));
  _1499 = WaveReadLaneFirst(_materialIndex);
  _1507 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1499 < (uint)170000), _1499, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._invertColor);
  _1510 = _exposure2.x * 4.0f;
  _1520 = ((_1510 - (_1496 * 2.0f)) * _1507) + _1496;
  _1521 = ((_1510 - (_1497 * 2.0f)) * _1507) + _1497;
  _1522 = ((_1510 - (_1498 * 2.0f)) * _1507) + _1498;
  _1523 = WaveReadLaneFirst(_materialIndex);
  _1531 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1523 < (uint)170000), _1523, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderRatio);
  [branch]
  if (!(!(_1531 >= 0.001f))) {
    _1534 = WaveReadLaneFirst(_materialIndex);
    _1543 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1534 < (uint)170000), _1534, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseTile.x);
    _1544 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1534 < (uint)170000), _1534, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseTile.y);
    _1547 = WaveReadLaneFirst(_materialIndex);
    _1556 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1547 < (uint)170000), _1547, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseOffset.x);
    _1557 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1547 < (uint)170000), _1547, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseOffset.y);
    _1560 = WaveReadLaneFirst(_materialIndex);
    _1568 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1560 < (uint)170000), _1560, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseTexture);
    _1577 = WaveReadLaneFirst(_materialIndex);
    _1585 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1577 < (uint)170000), _1577, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderSmoothness);
    _1586 = WaveReadLaneFirst(_materialIndex);
    _1594 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1586 < (uint)170000), _1586, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderWidth);
    _1600 = (1.0f - _1594) * 0.5f;
    _1603 = max((abs(TEXCOORD.x + -0.5f) - _1600), 0.0f);
    _1604 = max((abs(TEXCOORD.y + -0.5f) - _1600), 0.0f);
    _1613 = 1.0f - ((1.0f - saturate(sqrt((_1604 * _1604) + (_1603 * _1603)) / _1585)) * 2.0f);
    _1614 = WaveReadLaneFirst(_materialIndex);
    _1622 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1614 < (uint)170000), _1614, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderFlickerSpeed);
    if (_1622 > 0.001f) {
      _1625 = WaveReadLaneFirst(_materialIndex);
      _1634 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1625 < (uint)170000), _1625, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderFlickerOpacityMinMax.x);
      _1635 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1625 < (uint)170000), _1625, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderFlickerOpacityMinMax.y);
      _1643 = WaveReadLaneFirst(_materialIndex);
      _1651 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1643 < (uint)170000), _1643, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderFlickerIntensity);
      _1655 = ((min(max(sin((_1622 * 3.1415927f) * _time.x), _1634), _1635) * _1613) * _1651);
    } else {
      _1655 = _1613;
    }
    _1657 = WaveReadLaneFirst(_materialIndex);
    _1665 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1657 < (uint)170000), _1657, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseRatio);
    _1671 = min(max(_1531, 0.0f), 1.0f) * saturate(saturate(_1655) - (_1665 * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1568 < (uint)65000), _1568, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1556 + (_1543 * TEXCOORD.x)), (_1557 + (_1544 * TEXCOORD.y)))))).x)));
    _1672 = WaveReadLaneFirst(_materialIndex);
    _1680 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1672 < (uint)170000), _1672, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderColor);
    _1683 = (float)((uint)((uint)(((uint)((uint)(_1680)) >> 16) & 255)));
    _1686 = (float)((uint)((uint)(((uint)((uint)(_1680)) >> 8) & 255)));
    _1688 = (float)((uint)((uint)(_1680 & 255)));
    _1713 = select(((_1683 * 0.003921569f) < 0.04045f), (_1683 * 0.000303527f), exp2(log2((_1683 * 0.003717127f) + 0.052132703f) * 2.4f));
    _1720 = _1429 && ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
    _1721 = _1713 * 0.4f;
    _1728 = 1.0f / max(0.001f, _exposure0.x);
    _1742 = ((((select(_1720, _1721, _1713) * _1728) - _1520) * _1671) + _1520);
    _1743 = ((((select(_1720, _1721, select(((_1686 * 0.003921569f) < 0.04045f), (_1686 * 0.000303527f), exp2(log2((_1686 * 0.003717127f) + 0.052132703f) * 2.4f))) * _1728) - _1521) * _1671) + _1521);
    _1744 = ((((select(_1720, _1721, select(((_1688 * 0.003921569f) < 0.04045f), (_1688 * 0.000303527f), exp2(log2((_1688 * 0.003717127f) + 0.052132703f) * 2.4f))) * _1728) - _1522) * _1671) + _1522);
  } else {
    _1742 = _1520;
    _1743 = _1521;
    _1744 = _1522;
  }
  [branch]
  if (!(!(_59 >= 0.001f))) {
    _1747 = TEXCOORD.x + -0.5f;
    _1748 = TEXCOORD.y + -0.5f;
    _1753 = WaveReadLaneFirst(_materialIndex);
    _1761 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1753 < (uint)170000), _1753, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteRadius2);
    _1767 = WaveReadLaneFirst(_materialIndex);
    _1775 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1767 < (uint)170000), _1767, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignettePower2);
    // [sem: expr_sat]
    _1780 = saturate(exp2(log2(abs(0.5f - TEXCOORD.x)) * _1775) * (sqrt((_1748 * _1748) + (_1747 * _1747)) / max(0.001f, (1.0f - _1761))));
    _1785 = saturate(_59 * 10.0f) * saturate(_1780 * 2.0f);  // [sem: expr_sat]
    _1792 = (_1785 * (_475 - _1742)) + _1742;
    _1793 = (_1785 * (_476 - _1743)) + _1743;
    _1794 = (_1785 * (_477 - _1744)) + _1744;
    _1795 = WaveReadLaneFirst(_materialIndex);
    _1803 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1795 < (uint)170000), _1795, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteColor2);
    _1806 = (float)((uint)((uint)(((uint)((uint)(_1803)) >> 16) & 255)));
    _1809 = (float)((uint)((uint)(((uint)((uint)(_1803)) >> 8) & 255)));
    _1811 = (float)((uint)((uint)(_1803 & 255)));
    _1836 = select(((_1806 * 0.003921569f) < 0.04045f), (_1806 * 0.000303527f), exp2(log2((_1806 * 0.003717127f) + 0.052132703f) * 2.4f));
    _1843 = _1429 && ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
    _1844 = _1836 * 0.2f;
    _1851 = max(0.001f, _exposure0.x);
    _1858 = saturate(_1780) * _59;
    _1866 = ((((select(_1843, _1844, _1836) / _1851) - _1792) * _1858) + _1792);
    _1867 = ((((select(_1843, _1844, select(((_1809 * 0.003921569f) < 0.04045f), (_1809 * 0.000303527f), exp2(log2((_1809 * 0.003717127f) + 0.052132703f) * 2.4f))) / _1851) - _1793) * _1858) + _1793);
    _1868 = ((((select(_1843, _1844, select(((_1811 * 0.003921569f) < 0.04045f), (_1811 * 0.000303527f), exp2(log2((_1811 * 0.003717127f) + 0.052132703f) * 2.4f))) / _1851) - _1794) * _1858) + _1794);
  } else {
    _1866 = _1742;
    _1867 = _1743;
    _1868 = _1744;
  }
  [branch]
  if (!(!(_50 >= 0.001f))) {
    _1871 = TEXCOORD.x + -0.5f;
    _1872 = TEXCOORD.y + -0.5f;
    _1877 = WaveReadLaneFirst(_materialIndex);
    _1885 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1877 < (uint)170000), _1877, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteRadius1);
    _1890 = WaveReadLaneFirst(_materialIndex);
    _1898 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1890 < (uint)170000), _1890, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignettePower1);
    // [sem: expr_sat]
    _1903 = saturate(exp2(log2(1.0f - TEXCOORD.y) * _1898) * (sqrt((_1872 * _1872) + (_1871 * _1871)) / max(0.001f, (1.0f - _1885))));
    _1906 = saturate(_50 * 10.0f) * _1903;
    _1913 = (_1906 * (_475 - _1866)) + _1866;
    _1914 = (_1906 * (_476 - _1867)) + _1867;
    _1915 = (_1906 * (_477 - _1868)) + _1868;
    _1916 = WaveReadLaneFirst(_materialIndex);
    _1924 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1916 < (uint)170000), _1916, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteColor1);
    _1927 = (float)((uint)((uint)(((uint)((uint)(_1924)) >> 16) & 255)));
    _1930 = (float)((uint)((uint)(((uint)((uint)(_1924)) >> 8) & 255)));
    _1932 = (float)((uint)((uint)(_1924 & 255)));
    _1957 = select(((_1927 * 0.003921569f) < 0.04045f), (_1927 * 0.000303527f), exp2(log2((_1927 * 0.003717127f) + 0.052132703f) * 2.4f));
    _1964 = _1429 && ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
    _1965 = _1957 * 0.2f;
    _1972 = max(0.001f, _exposure0.x);
    _1979 = saturate(_1903) * _50;
    _1987 = ((((select(_1964, _1965, _1957) / _1972) - _1913) * _1979) + _1913);
    _1988 = ((((select(_1964, _1965, select(((_1930 * 0.003921569f) < 0.04045f), (_1930 * 0.000303527f), exp2(log2((_1930 * 0.003717127f) + 0.052132703f) * 2.4f))) / _1972) - _1914) * _1979) + _1914);
    _1989 = ((((select(_1964, _1965, select(((_1932 * 0.003921569f) < 0.04045f), (_1932 * 0.000303527f), exp2(log2((_1932 * 0.003717127f) + 0.052132703f) * 2.4f))) / _1972) - _1915) * _1979) + _1915);
  } else {
    _1987 = _1866;
    _1988 = _1867;
    _1989 = _1868;
  }
  [branch]
  if (!(!(_68 >= 0.001f))) {
    _1992 = TEXCOORD.x + -0.5f;
    _1993 = TEXCOORD.y + -0.5f;
    _1998 = WaveReadLaneFirst(_materialIndex);
    _2006 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1998 < (uint)170000), _1998, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteRadius3);
    _2010 = WaveReadLaneFirst(_materialIndex);
    _2018 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2010 < (uint)170000), _2010, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignettePower3);
    // [sem: expr_sat]
    _2023 = saturate((pow(TEXCOORD.y, _2018)) * (sqrt((_1993 * _1993) + (_1992 * _1992)) / max(0.001f, (1.0f - _2006))));
    _2026 = saturate(_68 * 10.0f) * _2023;
    _2033 = (_2026 * (_475 - _1987)) + _1987;
    _2034 = (_2026 * (_476 - _1988)) + _1988;
    _2035 = (_2026 * (_477 - _1989)) + _1989;
    _2036 = WaveReadLaneFirst(_materialIndex);
    _2044 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2036 < (uint)170000), _2036, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteColor3);
    _2047 = (float)((uint)((uint)(((uint)((uint)(_2044)) >> 16) & 255)));
    _2050 = (float)((uint)((uint)(((uint)((uint)(_2044)) >> 8) & 255)));
    _2052 = (float)((uint)((uint)(_2044 & 255)));
    _2077 = select(((_2047 * 0.003921569f) < 0.04045f), (_2047 * 0.000303527f), exp2(log2((_2047 * 0.003717127f) + 0.052132703f) * 2.4f));
    _2084 = _1429 && ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
    _2085 = _2077 * 0.2f;
    _2092 = max(0.001f, _exposure0.x);
    _2099 = saturate(_2023) * _68;
    _2107 = ((((select(_2084, _2085, _2077) / _2092) - _2033) * _2099) + _2033);
    _2108 = ((((select(_2084, _2085, select(((_2050 * 0.003921569f) < 0.04045f), (_2050 * 0.000303527f), exp2(log2((_2050 * 0.003717127f) + 0.052132703f) * 2.4f))) / _2092) - _2034) * _2099) + _2034);
    _2109 = ((((select(_2084, _2085, select(((_2052 * 0.003921569f) < 0.04045f), (_2052 * 0.000303527f), exp2(log2((_2052 * 0.003717127f) + 0.052132703f) * 2.4f))) / _2092) - _2035) * _2099) + _2035);
  } else {
    _2107 = _1987;
    _2108 = _1988;
    _2109 = _1989;
  }
  [branch]
  if (!(!(_hideStateRatio >= 0.001f))) {
    _2114 = _hideStateRatio * 0.5f;
    _2115 = TEXCOORD.x + -0.5f;
    _2116 = TEXCOORD.y + -0.5f;
    _2124 = saturate(((_2114 + -0.5f) + sqrt((_2116 * _2116) + (_2115 * _2115))) * 2.0f);  // [sem: expr_sat]
    _2132 = saturate(((saturate(abs(0.5f - TEXCOORD.y) * 2.0f) - _2124) * 0.5f) + _2124);  // [sem: expr_sat]
    _2140 = (((_2132 * _2132) * 0.9f) * saturate(_hideStateRatio * 4.0f)) * (3.0f - (_2132 * 2.0f));
    _2143 = dot(float3(_2107, _2108, _2109), float3(0.2126f, 0.7152f, 0.0722f)) * (1.0f - _2114);
    _2146 = (pow(_2140, 0.5f));
    _2153 = ((_2143 - _2107) * _2146) + _2107;
    _2154 = ((_2143 - _2108) * _2146) + _2108;
    _2155 = ((_2143 - _2109) * _2146) + _2109;
    _2159 = 0.001f / max(0.001f, _exposure0.x);
    _2170 = (lerp(_2153, _2159, _2140));  // [sem: blended]
    _2171 = (lerp(_2154, _2159, _2140));  // [sem: blended]
    _2172 = (lerp(_2155, _2159, _2140));  // [sem: blended]
  } else {
    _2170 = _2107;  // [sem: blended]
    _2171 = _2108;  // [sem: blended]
    _2172 = _2109;  // [sem: blended]
  }
  if (_followLearning > 0.001f) {
    _2177 = WaveReadLaneFirst(_materialIndex);
    _2185 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2177 < (uint)170000), _2177, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._followLearningColor);
    _2188 = (float)((uint)((uint)(((uint)((uint)(_2185)) >> 16) & 255)));
    _2191 = (float)((uint)((uint)(((uint)((uint)(_2185)) >> 8) & 255)));
    _2193 = (float)((uint)((uint)(_2185 & 255)));
    _2223 = max(0.001f, _exposure0.x);
    _2224 = select(((_2188 * 0.003921569f) < 0.04045f), (_2188 * 0.000303527f), exp2(log2((_2188 * 0.003717127f) + 0.052132703f) * 2.4f)) / _2223;
    _2225 = select(((_2191 * 0.003921569f) < 0.04045f), (_2191 * 0.000303527f), exp2(log2((_2191 * 0.003717127f) + 0.052132703f) * 2.4f)) / _2223;
    _2226 = select(((_2193 * 0.003921569f) < 0.04045f), (_2193 * 0.000303527f), exp2(log2((_2193 * 0.003717127f) + 0.052132703f) * 2.4f)) / _2223;
    _2227 = WaveReadLaneFirst(_materialIndex);
    _2235 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2227 < (uint)170000), _2227, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._followLearningNoiseTex);
    _2246 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_255 < (uint)65000), _255, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_239, ((_time.x * 0.2f) + _240)));
    _2253 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_239, _240));  // [sem: _3__36__0__0__g_depth_sample]
    _2256 = (_239 * 2.0f) + -1.0f;
    _2258 = 1.0f - (_240 * 2.0f);
    _2259 = max(1e-07f, _2253.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
    _2295 = mad((_invViewProj[3].z), _2259, mad((_invViewProj[3].y), _2258, ((_invViewProj[3].x) * _2256))) + (_invViewProj[3].w);
    _2306 = (uint)((_bufferSizeAndInvSize.x * _239) + -0.5f);
    _2307 = (uint)((_bufferSizeAndInvSize.y * _240) + -0.5f);
    _2309 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_2306, _2307, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
    _2312 = __3__36__0__0__g_gbufferNormal.Load(int3(_2306, _2307, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
    _2330 = (saturate(_2312.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _2331 = (saturate(_2312.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _2332 = (saturate(_2312.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _2334 = rsqrt(dot(float3(_2330, _2331, _2332), float3(_2330, _2331, _2332)));  // [sem: invLength]
    _2335 = _2334 * _2330;
    _2336 = _2334 * _2331;
    _2337 = _2332 * _2334;
    _2340 = (((float)((uint)((uint)(((uint)((uint)(_2309.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _2341 = (((float)((uint)((uint)(_2309.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _2344 = (_2340 + _2341) * 0.5f;
    _2345 = (_2340 - _2341) * 0.5f;
    _2349 = (1.0f - abs(_2344)) - abs(_2345);
    _2351 = rsqrt(dot(float3(_2344, _2345, _2349), float3(_2344, _2345, _2349)));  // [sem: invLength]
    _2352 = _2351 * _2344;
    _2353 = _2351 * _2345;
    _2354 = _2351 * _2349;
    _2356 = select((_2337 >= 0.0f), 1.0f, -1.0f);
    _2359 = -0.0f - (1.0f / (_2356 + _2337));
    _2360 = _2336 * _2359;
    _2361 = _2360 * _2335;
    _2362 = _2356 * _2335;
    _2371 = mad(_2354, _2335, mad(_2353, _2361, ((((_2362 * _2335) * _2359) + 1.0f) * _2352)));
    _2375 = mad(_2354, _2336, mad(_2353, (_2356 + (_2360 * _2336)), ((_2352 * _2356) * _2361)));
    _2379 = mad(_2354, _2337, mad(_2353, (-0.0f - _2336), (-0.0f - (_2362 * _2352))));
    _2381 = rsqrt(dot(float3(_2371, _2375, _2379), float3(_2371, _2375, _2379)));  // [sem: invLength]
    _2383 = _2381 * _2375;
    _2384 = _2381 * _2379;
    _2387 = _time.x * 0.5f;
    _2390 = (((mad((_invViewProj[2].z), _2259, mad((_invViewProj[2].y), _2258, ((_invViewProj[2].x) * _2256))) + (_invViewProj[2].w)) / _2295) - _2387) * 0.2f;
    _2391 = (((mad((_invViewProj[1].z), _2259, mad((_invViewProj[1].y), _2258, ((_invViewProj[1].x) * _2256))) + (_invViewProj[1].w)) / _2295) - _2387) * 0.2f;
    _2398 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2235 < (uint)65000), _2235, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_2390, _2391));
    _2401 = (((mad((_invViewProj[0].z), _2259, mad((_invViewProj[0].y), _2258, ((_invViewProj[0].x) * _2256))) + (_invViewProj[0].w)) / _2295) - _2387) * 0.2f;
    _2410 = (abs(_2383) * ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2235 < (uint)65000), _2235, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_2401, _2390)))).w) - _2398.w)) + _2398.w;
    _2413 = (((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2235 < (uint)65000), _2235, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_2401, _2391)))).w) - _2410) * abs(_2384)) + _2410;
    _2414 = _2246.z + -0.5f;
    _2419 = _239 + -0.5f;
    _2421 = _240 + -0.5f;
    _2426 = 0.375f - (_2414 * 0.25f);
    _2429 = max((abs(((_2246.x + -0.5f) * 0.1f) + _2419) - _2426), 0.0f);
    _2430 = max((abs(((_2246.y + -0.5f) * 0.1f) + _2421) - _2426), 0.0f);
    _2435 = saturate(sqrt((_2430 * _2430) + (_2429 * _2429)));  // [sem: expr_sat]
    _2439 = saturate(_followLearning * 2.0f);  // [sem: expr_sat]
    _2445 = saturate(((((_2253.x * 100.0f) * _2439) - _2413) * 2.0f) + -0.5f);  // [sem: expr_sat]
    _2455 = sqrt((_2421 * _2421) + (_2419 * _2419));
    _2458 = ((saturate((_2439 * 2.0f) + -1.0f) * (1.0f - _2445)) + _2445) * saturate(_2455 + 0.5f);
    _2460 = atan(_2421 / _2419);
    _2463 = (_2419 < 0.0f);
    _2464 = (_2419 == 0.0f);
    _2465 = (_2421 >= 0.0f);
    _2466 = (_2421 < 0.0f);
    _2478 = _2413 * 0.5f;
    _2491 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2235 < (uint)65000), _2235, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((_2414 * -0.5f) - _2478) - (_time.x * 0.2f)) + select((_2464 && _2465), 7.5f, select((_2464 && _2466), -7.5f, (select((_2463 && _2466), (_2460 + -3.1415927f), select((_2463 && _2465), (_2460 + 3.1415927f), _2460)) * 4.774648f)))), (((((_2246.w + -0.5f) * -0.5f) - _2478) + (_2455 * 2.0f)) - (_time.x * 1.5f))));
    if (!(_966 == _renderPassSelfPlayer)) {
      _2526 = (_966 == _renderPassTest);
    } else {
      _2526 = true;
    }
    _2527 = !((1.0f - saturate(ceil(((_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_239, _240))).x))) + 0.5f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _239)), ((int)(_customRenderPassSizeInvSize.y * _240)), 0)))).x)))))) == 0.0f);
    _2529 = _2527 || (!_2526);
    if (_966 == _renderPassTargetFocus) {
      if (_2527) {
        _2543 = (_966 != _renderPassAimHighlight);
      } else {
        _2543 = false;
      }
    } else {
      if (_2527 || (_966 != _renderPassLearning)) {
        _2543 = (_966 != _renderPassAimHighlight);
      } else {
        _2543 = false;
      }
    }
    _2545 = saturate(_followLearning * 4.0f);  // [sem: expr_sat]
    _2552 = (_2545 * (_243.x - _2170)) + _2170;
    _2553 = (_2545 * (_243.y - _2171)) + _2171;
    _2554 = (_2545 * (_243.z - _2172)) + _2172;
    _2555 = _2529 && _2543;
    if (_2555) {
      _2562 = ((_followLearning * 0.25f) * _2491.w) * saturate(_2455 - (_2545 * 0.2f));
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _2566 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_2562 + _239), (_2562 + _240)));
      _2580 = 1.0f - (_followLearning * 0.75f);
      _2590 = ((lerp(_2552, _2566.x, _2545)) * _2580);
      _2591 = ((lerp(_2553, _2566.y, _2545)) * _2580);
      _2592 = ((lerp(_2554, _2566.z, _2545)) * _2580);
      _2593 = _2458;
    } else {
      if (_2529) {
        _2590 = _2552;
        _2591 = _2553;
        _2592 = _2554;
        _2593 = select(_2543, _2458, 0.0f);
      } else {
        _2590 = _2552;
        _2591 = _2553;
        _2592 = _2554;
        _2593 = (_2458 * 0.4f);
      }
    }
    _2594 = dot(float3(_2590, _2591, _2592), float3(0.2126f, 0.7152f, 0.0722f));
    _2601 = ((_2594 - _2590) * _2593) + _2590;
    _2602 = ((_2594 - _2591) * _2593) + _2591;
    _2603 = ((_2594 - _2592) * _2593) + _2592;
    _2605 = _2413 * (_2246.z * 0.3f);
    _2611 = saturate(_2593 * 5.0f) * 0.9f;
    _2618 = (((_2605 * _2224) - _2601) * _2611) + _2601;
    _2619 = (((_2605 * _2225) - _2602) * _2611) + _2602;
    _2620 = (((_2605 * _2226) - _2603) * _2611) + _2603;
    _2621 = WaveReadLaneFirst(_materialIndex);
    _2629 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2621 < (uint)170000), _2621, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._followLearningSaturationTone);
    _2632 = (float)((uint)((uint)(((uint)((uint)(_2629)) >> 16) & 255)));
    _2635 = (float)((uint)((uint)(((uint)((uint)(_2629)) >> 8) & 255)));
    _2637 = (float)((uint)((uint)(_2629 & 255)));
    _2662 = select(((_2632 * 0.003921569f) < 0.04045f), (_2632 * 0.000303527f), exp2(log2((_2632 * 0.003717127f) + 0.052132703f) * 2.4f));
    _2663 = select(((_2635 * 0.003921569f) < 0.04045f), (_2635 * 0.000303527f), exp2(log2((_2635 * 0.003717127f) + 0.052132703f) * 2.4f));
    _2664 = select(((_2637 * 0.003921569f) < 0.04045f), (_2637 * 0.000303527f), exp2(log2((_2637 * 0.003717127f) + 0.052132703f) * 2.4f));
    _2668 = (1.0f - _2662) * 0.3086f;
    _2670 = (1.0f - _2663) * 0.6094f;
    _2672 = (1.0f - _2664) * 0.082f;
    _2677 = _2668 * _2618;
    _2690 = (_followLearning * (mad(_2620, _2672, mad(_2619, _2670, ((_2668 + _2662) * _2618))) - _2618)) + _2618;
    _2691 = (_followLearning * (mad(_2620, _2672, mad(_2619, (_2670 + _2663), _2677)) - _2619)) + _2619;
    _2692 = (_followLearning * (mad(_2620, (_2672 + _2664), mad(_2619, _2670, _2677)) - _2620)) + _2620;
    if (!_2555) {
      // [sem: expr_sat]
      _2706 = saturate(1.0f - dot(float3((_2478 + (_2381 * _2371)), (_2478 + _2383), (_2478 + _2384)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _2711 = select(_2529, ((_2706 * _2706) * 6.0f), (_2706 * 0.25f)) * _2706;
      _2715 = (_followLearning * _followLearning) * saturate(_2413 * 10.0f);
      _2726 = (((_2715 * _2224) * _2711) + _2690);
      _2727 = (((_2715 * _2225) * _2711) + _2691);
      _2728 = (((_2715 * _2226) * _2711) + _2692);
    } else {
      _2726 = _2690;
      _2727 = _2691;
      _2728 = _2692;
    }
    _2729 = _followLearning * _2435;
    _2733 = 0.001f / max(0.001f, _exposure0.x);
    _2740 = ((_2733 - _2726) * _2729) + _2726;
    _2741 = ((_2733 - _2727) * _2729) + _2727;
    _2742 = ((_2733 - _2728) * _2729) + _2728;
    _2747 = saturate(((_2491.w * _2491.w) * 20.0f) * _followLearning) * _2435;
    _2758 = (lerp(_2740, _2224, _2747));  // [sem: blended]
    _2759 = (lerp(_2741, _2225, _2747));  // [sem: blended]
    _2760 = (lerp(_2742, _2226, _2747));  // [sem: blended]
  } else {
    _2758 = _2170;  // [sem: blended]
    _2759 = _2171;  // [sem: blended]
    _2760 = _2172;  // [sem: blended]
  }
  [branch]
  if ((dot(float4(_enemyAlert1.x, _enemyAlert1.y, _enemyAlert1.z, _enemyAlert1.w), float4(1.0f, 1.0f, 1.0f, 1.0f)) > 0.0f) || (dot(float4(_enemyAlert2.x, _enemyAlert2.y, _enemyAlert2.z, _enemyAlert2.w), float4(1.0f, 1.0f, 1.0f, 1.0f)) > 0.0f)) {
    _2780 = ((_isPhotosensitiveMode_isAllolwBlood & 1) != 0);
    _2786 = max(0.001f, _exposure0.x);
    _2803 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_255 < (uint)65000), _255, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 2.0f) * _36), ((_time.x * 0.1f) + (TEXCOORD.y * 2.0f))));
    _2806 = _2803.x + -0.5f;
    _2807 = _2803.y + -0.5f;
    _2817 = 0.45f - (_2806 * 0.005f);
    _2820 = max((abs((TEXCOORD.x + -0.5f) + (_2806 * 0.02f)) - _2817), 0.0f);
    _2821 = max((abs((TEXCOORD.y + -0.5f) + (_2807 * 0.02f)) - _2817), 0.0f);
    _2832 = WaveReadLaneFirst(_materialIndex);
    _2840 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2832 < (uint)170000), _2832, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._enemyAlertTex);
    _2847 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2840 < (uint)65000), _2840, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_2807 * 0.03f)), (TEXCOORD.y - (_2806 * 0.03f))));
    _2852 = (TEXCOORD.y > 0.5f);
    _2854 = (TEXCOORD.x < 0.5f);
    _2858 = (TEXCOORD.y < 0.5f);
    _2866 = (TEXCOORD.x > 0.5f);
    // [sem: expr_sat]
    _2890 = saturate(dot(float4((_2847.x * ((float)((bool)(_2858)))), (_2847.y * ((float)((bool)(_2866 && _2858)))), (_2847.z * ((float)((bool)(_2866)))), (_2847.w * ((float)((bool)(_2866 && _2852))))), float4(_enemyAlert2.x, _enemyAlert2.y, _enemyAlert2.z, _enemyAlert2.w)) + dot(float4((_2847.x * ((float)((bool)(_2852)))), (_2847.y * ((float)((bool)(_2854 && _2852)))), (_2847.z * ((float)((bool)(_2854)))), (_2847.w * ((float)((bool)(_2854 && _2858))))), float4(_enemyAlert1.x, _enemyAlert1.y, _enemyAlert1.z, _enemyAlert1.w))) * saturate(sqrt((_2821 * _2821) + (_2820 * _2820)) * 20.0f);
    _2892 = (_2890 * _2890) * _2890;
    _2903 = ((_2892 * ((select(_2780, 0.099898756f, 0.08437622f) / _2786) - _2758)) + _2758);
    _2904 = ((_2892 * ((select(_2780, 0.027320895f, 0.030713456f) / _2786) - _2759)) + _2759);
    _2905 = ((_2892 * ((select(_2780, 0.048171826f, 0.07036011f) / _2786) - _2760)) + _2760);
  } else {
    _2903 = _2758;
    _2904 = _2759;
    _2905 = _2760;
  }
  _2906 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _2919 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _2906, 0)))).x) & 127)))) + 0.5f);
  } else {
    _2919 = 1.0f;
  }
  _2922 = (_localToneMappingParams.w > 0.0f);
  if (_2922) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_2903, _2904, _2905));
    _3182 = _rndx_tonemapped_color.x;
    _3183 = _rndx_tonemapped_color.y;
    _3184 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    // RenoDX: >>> [Patch: BasicPostProcessSharpening] [Version: 1.13.00]
    // Description: SDR gameplay on the material-final arrangement can use this composite material shader as the final visible output and skip the standalone SDR final shader, which is where RenoDX RCAS sharpening normally runs. This fused composite never exposes a completed final-color texture, so neighbor pixels cannot be sampled directly for sharpening. When the addon marks this shader as the basic postprocess final path, reconstruct the four RCAS neighbor taps by sampling g_sceneColor one texel away in each direction and pass each tap through the same TonemapReplacer applied to the center pixel, then run the shared RCAS resolve on the tonemapped center. This runs after tonemapping and before the vanilla final-output suite, film grain, vignette, sRGB encode, and SDR finalization, the same pipeline position where the standalone final path applies RCAS. The taps intentionally skip the material effect chain, which is an identity passthrough of g_sceneColor during plain gameplay; sharpening is skipped entirely while UV-warping or color-restructuring screen effects are active (fisheye/follow-learning warp, quickslot or main-menu effects, status/generic chromatic aberration, flee darkening, detect mode) because reconstructed taps would not match the transformed center there.
    // The material composite is the visible final only when the game skips its manual
    // sRGB encode (_etcParams.z == 0): the display target's sRGB view encodes in hardware.
    // When feeding the standalone final pass it encodes manually (_etcParams.z > 0), so
    // that constant is a per-draw final-vs-intermediate signal with no addon-side latency.
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f) && CUSTOM_SHARPENING_TYPE == 1 && CUSTOM_SHARPENING > 0.f) {
      int _rndx_mi = WaveReadLaneFirst(_materialIndex);
      float _rndx_menu_effect = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_rndx_mi < (uint)170000), _rndx_mi, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
      bool _rndx_uv_warped = (_239 != TEXCOORD.x) || (_240 != TEXCOORD.y);
      bool _rndx_status_ca = ((_50 >= 0.0010000000474974513f) && (_81 >= 0.0010000000474974513f)) || ((_59 >= 0.0010000000474974513f) && (_94 >= 0.0010000000474974513f)) || ((_68 >= 0.0010000000474974513f) && (_107 >= 0.0010000000474974513f));
      bool _rndx_generic_ca = (_120 >= 0.0010000000474974513f) && (_129 >= 0.0010000000474974513f);
      bool _rndx_detect_mode = (_539 >= 0.0010000000474974513f) || (_548 >= 0.0010000000474974513f) || (_557 >= 0.0010000000474974513f) || (_566 >= 0.0010000000474974513f) || (_575 >= 0.0010000000474974513f);
      bool _rndx_effect_active = _rndx_uv_warped
                                 || (_227 >= 0.0010000000474974513f)
                                 || (_rndx_menu_effect >= 0.0010000000474974513f)
                                 || (_fleeCount >= 0.0010000000474974513f)
                                 || _rndx_status_ca
                                 || _rndx_generic_ca
                                 || _rndx_detect_mode;
      if (!_rndx_effect_active) {
        uint _rndx_scene_w, _rndx_scene_h;
        __3__36__0__0__g_sceneColor.GetDimensions(_rndx_scene_w, _rndx_scene_h);
        float2 _rndx_texel = 1.0f / float2(_rndx_scene_w, _rndx_scene_h);
        float3 _rndx_tap_b = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(0.0f, -_rndx_texel.y), 0).rgb;
        float3 _rndx_tap_d = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(-_rndx_texel.x, 0.0f), 0).rgb;
        float3 _rndx_tap_f = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(_rndx_texel.x, 0.0f), 0).rgb;
        float3 _rndx_tap_h = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(0.0f, _rndx_texel.y), 0).rgb;
        _rndx_tap_b = TonemapReplacer(_rndx_tap_b);
        _rndx_tap_d = TonemapReplacer(_rndx_tap_d);
        _rndx_tap_f = TonemapReplacer(_rndx_tap_f);
        _rndx_tap_h = TonemapReplacer(_rndx_tap_h);
        float3 _rndx_sharpened_color = ApplyRCASTaps(float3(_3182, _3183, _3184), _rndx_tap_b, _rndx_tap_d, _rndx_tap_f, _rndx_tap_h);
        _3182 = _rndx_sharpened_color.x;
        _3183 = _rndx_sharpened_color.y;
        _3184 = _rndx_sharpened_color.z;
      }
    }
    // RenoDX: <<< [Patch: BasicPostProcessSharpening]
    if (_etcParams.z == 0.0f) {
      _3190 = 1.0f - abs(_etcParams.w);
      _3194 = saturate(_etcParams.w);  // [sem: expr_sat]
      _3195 = (_3190 * _3182) + _3194;
      _3196 = (_3190 * _3183) + _3194;
      _3197 = (_3190 * _3184) + _3194;
      if (_colorGradingParams.w > 0.0f) {
        _3202 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _3219 = (((max(0.0f, (1.0f - _3195)) - _3195) * _3202) + _3195);
        _3220 = (((max(0.0f, (1.0f - _3196)) - _3196) * _3202) + _3196);
        _3221 = (((max(0.0f, (1.0f - _3197)) - _3197) * _3202) + _3197);
      } else {
        _3219 = _3195;
        _3220 = _3196;
        _3221 = _3197;
      }
      _3227 = _userImageAdjust.y + 1.0f;
      _3231 = _userImageAdjust.x + 0.5f;
      _3232 = ((_3219 + -0.5f) * _3227) + _3231;
      _3233 = ((_3220 + -0.5f) * _3227) + _3231;
      _3234 = ((_3221 + -0.5f) * _3227) + _3231;
      _3264 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _3275 = exp2(log2(saturate(mad(_colorBlind0.z, _3234, mad(_colorBlind0.y, _3233, (_colorBlind0.x * _3232))))) * _3264);
      _3276 = exp2(log2(saturate(mad(_colorBlind1.z, _3234, mad(_colorBlind1.y, _3233, (_colorBlind1.x * _3232))))) * _3264);
      _3277 = exp2(log2(saturate(mad(_colorBlind2.z, _3234, mad(_colorBlind2.y, _3233, (_colorBlind2.x * _3232))))) * _3264);
    } else {
      _3275 = _3182;
      _3276 = _3183;
      _3277 = _3184;
    }
  } else {
    _3275 = _2903;
    _3276 = _2904;
    _3277 = _2905;
  }
  // RenoDX: >>> [Patch: BasicPostProcessFilmGrain] [Version: 1.13.00]
  // Description: SDR gameplay on the material-final arrangement can use this composite material shader as the final visible output and skip the standalone SDR final shader. When the runtime marks this draw as the basic postprocess final path, apply RenoDX custom film grain directly to the local output color. This preserves the older direct-output material fallback without sampling neighboring final-pass textures from a different source stage.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f) && CUSTOM_FILM_GRAIN_TYPE != 0) {
    float3 _rndx_postprocess_color = renodx::effects::ApplyFilmGrain(float3(_3275, _3276, _3277), TEXCOORD, CUSTOM_RANDOM, CUSTOM_FILM_GRAIN_STRENGTH * 0.03f);
    _3275 = _rndx_postprocess_color.x;
    _3276 = _rndx_postprocess_color.y;
    _3277 = _rndx_postprocess_color.z;
  }
  // RenoDX: <<< [Patch: BasicPostProcessFilmGrain]
  if (_etcParams.y > 1.0f) {
    _3286 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _3287 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _3291 = saturate(1.0f - (dot(float2(_3286, _3287), float2(_3286, _3287)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _3296 = (_3291 * _3275);
    _3297 = (_3291 * _3276);
    _3298 = (_3291 * _3277);
  } else {
    _3296 = _3275;
    _3297 = _3276;
    _3298 = _3277;
  }
  if (_2922 && (_etcParams.z > 0.0f)) {
    _3328 = select((_3296 <= 0.0031308f), (_3296 * 12.92f), (((pow(_3296, 0.41666666f)) * 1.055f) + -0.055f));
    _3329 = select((_3297 <= 0.0031308f), (_3297 * 12.92f), (((pow(_3297, 0.41666666f)) * 1.055f) + -0.055f));
    _3330 = select((_3298 <= 0.0031308f), (_3298 * 12.92f), (((pow(_3298, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _3328 = _3296;
    _3329 = _3297;
    _3330 = _3298;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _3335 = (float)((uint)((uint)(_2906)));
    if (!(_3335 < _viewDir.w)) {
      if (!(_3335 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _3344 = _3328;
        _3345 = _3329;
        _3346 = _3330;
      } else {
        _3344 = 0.0f;
        _3345 = 0.0f;
        _3346 = 0.0f;
      }
    } else {
      _3344 = 0.0f;
      _3345 = 0.0f;
      _3346 = 0.0f;
    }
  } else {
    _3344 = _3328;
    _3345 = _3329;
    _3346 = _3330;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_3344, _3345, _3346), _sunDirection.y, _moonDirection.y);
    _3344 = _rndx_final_color.x;
    _3345 = _rndx_final_color.y;
    _3346 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _3344;
  SV_Target.y = _3345;
  SV_Target.z = _3346;
  SV_Target.w = _2919;
  return SV_Target;
}
