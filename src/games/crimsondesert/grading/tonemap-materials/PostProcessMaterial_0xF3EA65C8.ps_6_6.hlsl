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

struct BindlessParameters_PostProcessUber_CD {
  PostProcessUber_CDStruct BindlessParameters_PostProcessUber_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_noiseTex : register(t13, space36);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t37, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t70, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

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
  float _34;
  int _37;
  float _45;
  int _48;
  float _56;
  int _59;
  float _67;
  int _70;
  float _78;
  float _82;
  int _85;
  float _93;
  float _97;
  int _100;
  float _108;
  float _112;
  int _115;
  float _123;
  float _127;
  int _130;
  float _138;
  int _141;
  float _149;
  int _152;
  float _160;
  float _190;
  float _229;
  float _230;
  float _233;
  float _234;
  float _257;
  float _258;
  float _366;
  float _367;
  float _368;
  float _409;
  float _498;
  float _499;
  float _500;
  float _577;
  float _578;
  float _579;
  float _670;
  float _671;
  float _672;
  float _744;
  float _745;
  float _746;
  float _747;
  float _748;
  float _749;
  float _819;
  float _820;
  float _821;
  float _878;
  float _879;
  float _1060;
  float _1061;
  float _1062;
  int _1157;
  float _1158;
  float _1159;
  float _1160;
  float _1339;
  float _1340;
  float _1341;
  float _1440;
  float _1441;
  float _1442;
  float _1482;
  float _1483;
  float _1484;
  float _1625;
  float _1626;
  float _1627;
  float _1703;
  float _1704;
  float _1705;
  float _1706;
  float _1707;
  float _1708;
  float _1923;
  bool _1988;
  float _2028;
  float _2029;
  float _2030;
  bool _2119;
  float _2160;
  float _2161;
  float _2162;
  bool _2248;
  float _2289;
  float _2290;
  float _2291;
  bool _2376;
  float _2417;
  float _2418;
  float _2419;
  float _2480;
  float _2481;
  float _2482;
  int _2819;
  int _2868;
  float _2952;
  float _2953;
  float _2954;
  float _2955;
  float _3089;
  float _3090;
  float _3091;
  float _3121;
  float _3122;
  float _3123;
  float _3268;
  float _3269;
  float _3270;
  float _3284;
  float _3489;
  float _3490;
  float _3491;
  float _3584;
  float _3585;
  float _3586;
  float _3640;
  float _3641;
  float _3642;
  float _3661;
  float _3662;
  float _3663;
  float _3693;
  float _3694;
  float _3695;
  float _3709;
  float _3710;
  float _3711;
  float _169;
  float _174;
  float _178;
  float _179;
  float _180;
  float _194;
  float _199;
  float _201;
  float _212;
  float _218;
  float _221;
  int _237;
  float _245;
  float4 _261;
  float _267;
  float _270;
  float _273;
  float _282;
  float _291;
  float _300;
  int _303;
  int _311;
  float4 _332;
  float _338;
  float _342;
  float _358;
  int _371;
  float _379;
  int _386;
  float _394;
  int _399;
  float _407;
  float _410;
  float4 _420;
  int _425;
  float _433;
  bool _434;
  bool _436;
  int _439;
  float _447;
  float _452;
  float _458;
  float _472;
  float _513;
  float _514;
  float _525;
  float _526;
  float _527;
  float _536;
  float _541;
  float _548;
  int _586;
  float _594;
  float _598;
  float _599;
  float _600;
  float _609;
  float _610;
  float _611;
  float _620;
  float _625;
  float _632;
  int _675;
  float _683;
  int _686;
  float _694;
  int _697;
  float _705;
  int _708;
  float _716;
  int _719;
  float _727;
  float _732;
  bool _750;
  float _751;
  float _752;
  float _753;
  float _755;
  float _757;
  float _759;
  float _761;
  float _763;
  float _765;
  float _766;
  float _770;
  float _774;
  float _778;
  float _786;
  float _793;
  float _799;
  float _805;
  uint2 _837;
  uint _852;
  int _854;
  float _858;
  float _863;
  float _865;
  float _866;
  float _867;
  float _881;
  float _882;
  float _883;
  float _884;
  float _886;
  float4 _889;
  float _896;
  float _899;
  float _902;
  float _911;
  float _920;
  float _929;
  int _936;
  float _944;
  float _949;
  float _975;
  int _994;
  float _1002;
  bool _1014;
  float _1046;
  float _1047;
  float _1048;
  bool _1055;
  float _1066;
  int _1097;
  int _1105;
  float _1108;
  float _1111;
  float _1113;
  float _1116;
  int _1171;
  int _1179;
  float _1182;
  float _1185;
  float _1187;
  float _1190;
  float _1195;
  float _1197;
  float _1199;
  float _1201;
  float _1206;
  float _1218;
  float _1230;
  float _1241;
  float _1245;
  float _1248;
  float _1254;
  float _1259;
  float _1265;
  float _1268;
  float _1269;
  float _1272;
  float _1295;
  float4 _1353;
  float _1360;
  float _1363;
  float _1366;
  float _1375;
  float _1384;
  float _1393;
  float _1394;
  float _1398;
  float _1399;
  float _1400;
  float _1408;
  float _1411;
  float _1414;
  float _1429;
  float _1443;
  float _1449;
  float _1450;
  float _1451;
  float _1459;
  float _1463;
  float _1467;
  float _1471;
  float _1490;
  float _1497;
  float _1510;
  int _1513;
  int _1521;
  float _1525;
  float _1529;
  float _1533;
  float _1541;
  float _1542;
  float _1545;
  float _1546;
  bool _1550;
  float _1552;
  float _1556;
  float _1558;
  float _1588;
  float _1593;
  float _1598;
  float _1601;
  float _1604;
  int _1630;
  float _1638;
  float _1642;
  float _1646;
  int _1649;
  float _1657;
  float _1661;
  float _1665;
  int _1668;
  float _1676;
  bool _1677;
  bool _1688;
  float _1689;
  bool _1694;
  float _1695;
  float _1709;
  float _1710;
  float _1711;
  float _1713;
  float _1715;
  float _1717;
  float _1718;
  int _1721;
  float _1729;
  float _1730;
  float _1738;
  float _1745;
  float _1752;
  int _1755;
  float _1763;
  float _1766;
  float _1770;
  float _1774;
  float _1778;
  int _1781;
  float _1789;
  int _1794;
  float _1802;
  float _1806;
  int _1809;
  float _1817;
  float _1821;
  int _1824;
  int _1832;
  int _1835;
  float _1843;
  int _1846;
  float _1854;
  float _1856;
  float _1860;
  float _1864;
  float _1873;
  int _1876;
  float _1884;
  int _1889;
  float _1897;
  float _1901;
  int _1904;
  float _1912;
  int _1926;
  float _1934;
  float _1953;
  int _1956;
  int _1964;
  float _1967;
  float _1970;
  float _1972;
  float _1981;
  float _1989;
  float _1993;
  float _2033;
  float _2034;
  int _2037;
  float _2045;
  int _2048;
  float _2056;
  float _2070;
  float _2075;
  float _2078;
  float _2081;
  float _2084;
  int _2087;
  int _2095;
  float _2098;
  float _2101;
  float _2103;
  float _2112;
  float _2120;
  float _2123;
  float _2125;
  float _2165;
  float _2166;
  int _2169;
  float _2177;
  int _2180;
  float _2188;
  float _2201;
  float _2204;
  float _2207;
  float _2210;
  float _2213;
  int _2216;
  int _2224;
  float _2227;
  float _2230;
  float _2232;
  float _2241;
  float _2249;
  float _2252;
  float _2254;
  float _2294;
  float _2295;
  int _2298;
  float _2306;
  int _2309;
  float _2317;
  float _2329;
  float _2332;
  float _2335;
  float _2338;
  float _2341;
  int _2344;
  int _2352;
  float _2355;
  float _2358;
  float _2360;
  float _2369;
  float _2377;
  float _2380;
  float _2382;
  float _2424;
  float _2425;
  float _2426;
  float _2434;
  float _2442;
  float _2450;
  float _2453;
  float _2456;
  float _2459;
  float _2462;
  float _2465;
  float _2469;
  int _2489;
  int _2497;
  float _2500;
  float _2503;
  float _2505;
  float _2508;
  float _2518;
  float _2528;
  float _2538;
  int _2541;
  int _2549;
  float4 _2560;
  float _2567;
  float _2570;
  float _2572;
  float _2573;
  float _2585;
  uint _2590;
  uint _2594;
  uint4 _2596;
  float4 _2599;
  float _2606;
  float _2610;
  float _2614;
  float _2616;
  float _2617;
  float _2618;
  float _2619;
  float _2624;
  float _2628;
  float _2630;
  float _2632;
  float _2636;
  float _2638;
  float _2639;
  float _2640;
  float _2641;
  float _2643;
  float _2646;
  float _2647;
  float _2648;
  float _2649;
  float _2655;
  float _2661;
  float _2666;
  float _2668;
  float _2669;
  float _2670;
  float _2673;
  float _2684;
  float _2695;
  float4 _2702;
  float _2718;
  float _2724;
  float _2730;
  float _2731;
  float _2732;
  float _2733;
  float _2735;
  float _2741;
  float _2747;
  float _2752;
  float _2756;
  float _2762;
  float _2766;
  float _2775;
  float _2777;
  bool _2778;
  bool _2779;
  bool _2780;
  bool _2781;
  float _2782;
  float4 _2808;
  bool _2845;
  bool _2847;
  float _2870;
  float _2873;
  float _2876;
  float _2879;
  bool _2880;
  bool _2881;
  float _2888;
  float4 _2892;
  float _2898;
  float _2901;
  float _2904;
  float _2906;
  float _2956;
  float _2959;
  float _2962;
  float _2965;
  float _2967;
  float _2970;
  float _2974;
  float _2978;
  float _2982;
  int _2985;
  int _2993;
  float _2996;
  float _2999;
  float _3001;
  float _3010;
  float _3019;
  float _3028;
  float _3030;
  float _3032;
  float _3034;
  float _3035;
  float _3044;
  float _3050;
  float _3056;
  float _3071;
  float _3081;
  float _3092;
  float _3096;
  float _3099;
  float _3102;
  float _3105;
  float _3110;
  bool _3143;
  float _3146;
  float4 _3160;
  float _3163;
  float _3164;
  float _3166;
  float _3172;
  float _3178;
  int _3181;
  int _3189;
  float4 _3200;
  bool _3205;
  bool _3206;
  bool _3207;
  bool _3208;
  float _3249;
  float _3251;
  uint _3271;
  bool _3287;
  float _3293;
  float _3312;
  float _3328;
  float _3344;
  float _3345;
  float _3349;
  float _3352;
  float _3355;
  float _3362;
  float _3369;
  float _3376;
  float _3377;
  float _3378;
  float _3379;
  float _3380;
  float _3381;
  float _3382;
  float _3398;
  float _3414;
  float _3430;
  float _3431;
  float _3432;
  float _3433;
  float _3434;
  float _3451;
  float _3452;
  float _3453;
  float _3454;
  float _3457;
  float _3460;
  float _3464;
  float _3468;
  float _3472;
  float _3492;
  float _3504;
  float _3516;
  float _3528;
  float _3535;
  float _3542;
  float _3549;
  float _3555;
  float _3556;
  float _3558;
  float _3560;
  float _3562;
  float _3567;
  float _3588;
  float _3590;
  float _3593;
  float _3596;
  float _3599;
  float _3605;
  float _3647;
  float _3650;
  float _3656;
  float _3698;
  float _3715;
  float _3719;
  float _3723;
  _34 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _37 = WaveReadLaneFirst(_materialIndex);
  _45 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_37 < (uint)170000), _37, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteRatio1);
  _48 = WaveReadLaneFirst(_materialIndex);
  _56 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_48 < (uint)170000), _48, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteRatio2);
  _59 = WaveReadLaneFirst(_materialIndex);
  _67 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_59 < (uint)170000), _59, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteRatio3);
  _70 = WaveReadLaneFirst(_materialIndex);
  _78 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_70 < (uint)170000), _70, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteChromaticShift1);
  _82 = ((float)((uint)((uint)(_enableChromaticAberration)))) * _78;
  _85 = WaveReadLaneFirst(_materialIndex);
  _93 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_85 < (uint)170000), _85, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteChromaticShift2);
  _97 = ((float)((uint)((uint)(_enableChromaticAberration)))) * _93;
  _100 = WaveReadLaneFirst(_materialIndex);
  _108 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_100 < (uint)170000), _100, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteChromaticShift3);
  _112 = ((float)((uint)((uint)(_enableChromaticAberration)))) * _108;
  _115 = WaveReadLaneFirst(_materialIndex);
  _123 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_115 < (uint)170000), _115, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._chromaticAberrationRatio);
  _127 = ((float)((uint)((uint)(_enableChromaticAberration)))) * _123;
  _130 = WaveReadLaneFirst(_materialIndex);
  _138 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_130 < (uint)170000), _130, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._chromaticAberrationShiftValue);
  _141 = WaveReadLaneFirst(_materialIndex);
  _149 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_141 < (uint)170000), _141, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._isBloodEffect);
  _152 = WaveReadLaneFirst(_materialIndex);
  _160 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_152 < (uint)170000), _152, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._fishEyeMaxPower);
  [branch]
  if (((_160 > 0.001f) || (_160 < -0.001f)) || (_followLearning > 0.001f)) {
    _169 = 0.5f / _34;
    _174 = ((_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x) + -0.5f;
    _178 = ((_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x) - _169;
    _179 = dot(float2(_174, _178), float2(_174, _178));
    _180 = sqrt(_179);
    if (_followLearning > 0.001f) {
      _190 = ((pow(_followLearning, 0.25f)) * 1.5f);
    } else {
      _190 = _160;
    }
    if (_190 > 0.0f) {
      _194 = sqrt(dot(float2(0.5f, _169), float2(0.5f, _169)));
      _199 = (tan(_190 * _180) * _194) * rsqrt(_179);
      _201 = tan(_194 * _190);
      _229 = (((_199 * _178) / _201) + _169);
      _230 = (((_199 * _174) / _201) + 0.5f);
    } else {
      if (_190 < 0.0f) {
        _212 = select((_34 < 1.0f), 0.5f, _169);
        _218 = (atan((_190 * _180) * -10.0f) * _212) * rsqrt(_179);
        _221 = atan((_190 * -10.0f) * _212);
        _229 = (((_218 * _178) / _221) + _169);
        _230 = (((_218 * _174) / _221) + 0.5f);
      } else {
        _229 = 0.0f;
        _230 = 0.0f;
      }
    }
    _233 = (_229 * _34);
    _234 = _230;
  } else {
    _233 = TEXCOORD.y;
    _234 = TEXCOORD.x;
  }
  _237 = WaveReadLaneFirst(_materialIndex);
  _245 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_237 < (uint)170000), _237, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._uiQuickSlotEffect);
  if (!(!(_245 >= 0.001f))) {
    _257 = ((_245 * (0.03f - (_233 * 0.060000002f))) + _233);
    _258 = ((_245 * (0.03f - (_234 * 0.060000002f))) + _234);
  } else {
    _257 = _233;
    _258 = _234;
  }
  _261 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_258, _257));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _267 = (pow(_261.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _270 = (pow(_261.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _273 = (pow(_261.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _282 = exp2(log2(max(0.0f, (_267 + -0.8359375f)) / (18.851562f - (_267 * 18.6875f))) * 6.277395f) * 10000.0f;
  _291 = exp2(log2(max(0.0f, (_270 + -0.8359375f)) / (18.851562f - (_270 * 18.6875f))) * 6.277395f) * 10000.0f;
  _300 = exp2(log2(max(0.0f, (_273 + -0.8359375f)) / (18.851562f - (_273 * 18.6875f))) * 6.277395f) * 10000.0f;
  _303 = WaveReadLaneFirst(_materialIndex);
  _311 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_303 < (uint)170000), _303, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._noiseTex);
  [branch]
  if (!(!(_fleeCount >= 0.001f))) {
    _332 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_311 < (uint)65000), _311, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x * 4.0f), ((((_fleeCount * 0.001f) + -0.1f) + ((TEXCOORD.y / _34) * 4.0f)) + (_time.x * 0.02f))));
    _338 = (TEXCOORD.x + -0.5f) + ((_332.x + -0.5f) * 0.15f);
    _342 = (TEXCOORD.y + -0.5f) + ((_332.y + -0.5f) * 0.15f);
    // [sem: expr_sat]
    _358 = saturate(((sqrt((_338 * _338) + (_342 * _342)) + -0.6f) + (_fleeCount * 0.005f)) / ((_fleeCount * 0.004f) + 0.1f)) * saturate(_fleeCount * 0.2f);
    _366 = (_300 - (_358 * _300));
    _367 = (_291 - (_358 * _291));
    _368 = (_282 - (_358 * _282));
  } else {
    _366 = _300;
    _367 = _291;
    _368 = _282;
  }
  _371 = WaveReadLaneFirst(_materialIndex);
  _379 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_371 < (uint)170000), _371, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
  if ((_245 >= 0.001f) || (_379 >= 0.001f)) {
    _386 = WaveReadLaneFirst(_materialIndex);
    _394 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_386 < (uint)170000), _386, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
    if (_394 > _245) {
      _399 = WaveReadLaneFirst(_materialIndex);
      _407 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_399 < (uint)170000), _399, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
      _409 = _407;
    } else {
      _409 = _245;
    }
    _410 = _409 * 0.5f;
    _420 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_311 < (uint)65000), _311, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 2.0f) * _34), (TEXCOORD.y * 2.0f)));
    _425 = WaveReadLaneFirst(_materialIndex);
    _433 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_425 < (uint)170000), _425, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
    _434 = (_245 < 0.001f);
    _436 = _434 && (_433 >= 0.001f);
    _439 = WaveReadLaneFirst(_materialIndex);
    _447 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_439 < (uint)170000), _439, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
    _452 = (TEXCOORD.y - select(_436, 0.55f, 0.5f)) - ((_420.y + -0.5f) * 0.05f);
    _458 = ((TEXCOORD.x - ((_420.x + -0.5f) * 0.05f)) + select(_436, -0.42f, -0.5f)) * _34;
    _472 = ((_409 * -0.9f) * (1.0f - saturate((select((_434 && (_447 >= 0.001f)), 0.35f, 0.4f) - sqrt((_458 * _458) + (_452 * _452))) * 1.4285715f))) + 1.0f;
    _498 = (_472 * ((_410 * (((_367 * 0.534f) - (_366 * 0.869f)) + (_368 * 0.272f))) + _366));
    _499 = (_472 * ((_410 * (((_366 * 0.168f) - (_367 * 0.314f)) + (_368 * 0.349f))) + _367));
    _500 = (_472 * ((_410 * (((_367 * 0.75f) + (_366 * 0.189f)) - (_368 * 0.607f))) + _368));
  } else {
    _498 = _366;
    _499 = _367;
    _500 = _368;
  }
  if (((_45 >= 0.001f) && (_82 >= 0.001f)) || ((_56 >= 0.001f) && (_97 >= 0.001f)) || ((_67 >= 0.001f) && (_112 >= 0.001f))) {
    _513 = _258 + -0.5f;
    _514 = _257 + -0.5f;
    _525 = ((rsqrt(dot(float2(_513, _514), float2(_513, _514))) * 0.01f) * max(max(_82, _97), _112)) * sqrt((_513 * _513) + (_514 * _514));
    _526 = _525 * _513;
    _527 = _525 * _514;
    _536 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_258 - _526), (_257 - _527))))).x) * 0.012683313f);
    _541 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_258, _257)))).y) * 0.012683313f);
    _548 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_526 + _258), (_527 + _257))))).z) * 0.012683313f);
    _577 = (exp2(log2(max(0.0f, (_548 + -0.8359375f)) / (18.851562f - (_548 * 18.6875f))) * 6.277395f) * 10000.0f);
    _578 = (exp2(log2(max(0.0f, (_541 + -0.8359375f)) / (18.851562f - (_541 * 18.6875f))) * 6.277395f) * 10000.0f);
    _579 = (exp2(log2(max(0.0f, (_536 + -0.8359375f)) / (18.851562f - (_536 * 18.6875f))) * 6.277395f) * 10000.0f);
  } else {
    _577 = _498;
    _578 = _499;
    _579 = _500;
  }
  if ((_127 >= 0.001f) && (_138 >= 0.001f)) {
    _586 = WaveReadLaneFirst(_materialIndex);
    _594 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_586 < (uint)170000), _586, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._chromaticAberrationShiftPosition.x);
    _598 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_586 < (uint)170000), _586, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._chromaticAberrationShiftPosition.y);
    _599 = _258 - _594;
    _600 = _257 - _598;
    _609 = ((_138 * 0.01f) * rsqrt(dot(float2(_599, _600), float2(_599, _600)))) * sqrt((_600 * _600) + (_599 * _599));
    _610 = _609 * _599;
    _611 = _609 * _600;
    _620 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_258 - _610), (_257 - _611))))).x) * 0.012683313f);
    _625 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_258, _257)))).y) * 0.012683313f);
    _632 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_610 + _258), (_611 + _257))))).z) * 0.012683313f);
    _670 = ((((exp2(log2(max(0.0f, (_632 + -0.8359375f)) / (18.851562f - (_632 * 18.6875f))) * 6.277395f) * 10000.0f) - _577) * _127) + _577);
    _671 = ((((exp2(log2(max(0.0f, (_625 + -0.8359375f)) / (18.851562f - (_625 * 18.6875f))) * 6.277395f) * 10000.0f) - _578) * _127) + _578);
    _672 = ((((exp2(log2(max(0.0f, (_620 + -0.8359375f)) / (18.851562f - (_620 * 18.6875f))) * 6.277395f) * 10000.0f) - _579) * _127) + _579);
  } else {
    _670 = _498;
    _671 = _499;
    _672 = _500;
  }
  _675 = WaveReadLaneFirst(_materialIndex);
  _683 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_675 < (uint)170000), _675, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._detectModeG);
  _686 = WaveReadLaneFirst(_materialIndex);
  _694 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_686 < (uint)170000), _686, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._detectModeR);
  _697 = WaveReadLaneFirst(_materialIndex);
  _705 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_697 < (uint)170000), _697, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._detectModeB);
  _708 = WaveReadLaneFirst(_materialIndex);
  _716 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_708 < (uint)170000), _708, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._detectModeKnowledge);
  _719 = WaveReadLaneFirst(_materialIndex);
  _727 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_719 < (uint)170000), _719, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._detectModeInterrupt);
  _732 = saturate((((_694 + _683) + _705) + _716) + _727);  // [sem: expr_sat]
  [branch]
  if (_732 > 0.0f) {
    if (!(_683 >= 0.001f)) {
      if (!(_694 >= 0.001f)) {
        if (!(_705 >= 0.001f)) {
          if (!(_716 >= 0.001f)) {
            _744 = 0.0f;
            _745 = 0.0f;
            _746 = 0.0f;
            _747 = 0.0f;
            _748 = 0.0f;
            _749 = 0.0f;
          } else {
            _744 = 0.95f;
            _745 = 0.45f;
            _746 = 0.5f;
            _747 = 0.8f;
            _748 = 0.6f;
            _749 = 0.6f;
          }
        } else {
          _744 = 0.8f;
          _745 = 0.7f;
          _746 = 0.6f;
          _747 = 0.7f;
          _748 = 0.7f;
          _749 = 0.6f;
        }
      } else {
        _744 = 0.6f;
        _745 = 0.7f;
        _746 = 0.8f;
        _747 = 0.6f;
        _748 = 0.6f;
        _749 = 0.7f;
      }
    } else {
      _744 = 0.7f;
      _745 = 0.8f;
      _746 = 0.6f;
      _747 = 0.6f;
      _748 = 0.7f;
      _749 = 0.6f;
    }
    _750 = (_727 >= 0.001f);
    _751 = select(_750, 0.8f, _746);
    _752 = select(_750, 0.6f, _745);
    _753 = select(_750, 0.2f, _744);
    _755 = (1.0f - _751) * 0.3086f;
    _757 = (1.0f - _752) * 0.6094f;
    _759 = (1.0f - _753) * 0.082f;
    _761 = select(_750, 2.0f, _749) * _672;
    _763 = select(_750, 2.0f, _748) * _671;
    _765 = select(_750, 2.0f, _747) * _670;
    _766 = _761 * _755;
    _770 = 0.01f / max(0.001f, _exposure0.x);
    _774 = max((abs(TEXCOORD.x + -0.5f) + -0.075f), 0.0f);
    _778 = max((abs(TEXCOORD.y + -0.5f) + -0.075f), 0.0f);
    _786 = (_732 * 0.75f) * saturate(sqrt((_778 * _778) + (_774 * _774)) * 2.0f);
    _793 = ((mad(_765, _759, mad(_763, _757, (_761 * (_755 + _751)))) - _672) * _732) + _672;
    _799 = ((mad(_765, _759, mad(_763, (_757 + _752), _766)) - _671) * _732) + _671;
    _805 = ((mad(_765, (_759 + _753), mad(_763, _757, _766)) - _670) * _732) + _670;
    _819 = ((((_770 * _753) - _805) * _786) + _805);
    _820 = ((((_770 * _752) - _799) * _786) + _799);
    _821 = ((((_770 * _751) - _793) * _786) + _793);
  } else {
    _819 = _670;
    _820 = _671;
    _821 = _672;
  }
  if ((((_highLightForVisionRemoteCatch > 0.0f) || (_highLightForVision > 0.0f)) || (_characterHighlight > 0.0f)) || (_followLearning > 0.001f)) {
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_837.x, _837.y);
    // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
    _852 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_837.x))))))) + 0.5f) * _258)), ((int)((((float)((int)((int)((float)((int)((int)(_837.y))))))) + 0.5f) * _257)), 0));
    _854 = _852.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _858 = (((float)((uint)((uint)((uint)((uint)(_852.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _863 = (((float)((uint)((uint)(((uint)((uint)(_852.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _865 = 1.0f - abs(_858);
    _866 = abs(_863);
    _867 = _865 - _866;
    if (!(_867 >= 0.0f)) {
      _878 = (select((_863 >= 0.0f), 1.0f, -1.0f) * _865);
      _879 = (select((_858 >= 0.0f), 1.0f, -1.0f) * (1.0f - _866));
    } else {
      _878 = _863;
      _879 = _858;
    }
    _881 = rsqrt(dot(float3(_879, _878, _867), float3(_879, _878, _867)));  // [sem: invLength]
    _882 = _881 * _879;
    _883 = _881 * _878;
    _884 = _881 * _867;
    _886 = rsqrt(dot(float3(_882, _883, _884), float3(_882, _883, _884)));  // [sem: invLength]
    _889 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_258, _257));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _896 = (pow(_889.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _899 = (pow(_889.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _902 = (pow(_889.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _911 = exp2(log2(max(0.0f, (_896 + -0.8359375f)) / (18.851562f - (_896 * 18.6875f))) * 6.277395f) * 10000.0f;
    _920 = exp2(log2(max(0.0f, (_899 + -0.8359375f)) / (18.851562f - (_899 * 18.6875f))) * 6.277395f) * 10000.0f;
    _929 = exp2(log2(max(0.0f, (_902 + -0.8359375f)) / (18.851562f - (_902 * 18.6875f))) * 6.277395f) * 10000.0f;
    [branch]
    if (_854 == _renderPassTest) {
      _936 = WaveReadLaneFirst(_materialIndex);
      _944 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_936 < (uint)170000), _936, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._testEffectRatio);
      _949 = (1.0f / max(0.001f, _exposure0.x)) * _944;
      _1157 = _854;
      _1158 = (_949 + _819);
      _1159 = _820;
      _1160 = (_949 + _821);
    } else {
      if ((_854 == _renderPassDetectObjective) || ((!(_854 == _renderPassDetectObjective)) && (_854 == _renderPassKnowledgeNPC))) {
        _975 = ((((float4)(__3__36__0__0__g_noiseTex.SampleLevel(__0__4__0__0__g_staticPointWrap, float2(frac((TEXCOORD.x * 0.015625f) * _bufferSizeAndInvSize.x), frac((TEXCOORD.y * 0.015625f) * _bufferSizeAndInvSize.y)), 0.0f))).x) * 0.5f) + 0.5f;
        _1157 = _854;
        _1158 = ((((_975 * _929) - _819) * _889.w) + _819);
        _1159 = ((((_975 * _920) - _820) * _889.w) + _820);
        _1160 = ((((_975 * _911) - _821) * _889.w) + _821);
      } else {
        bool __branch_chain_988;
        if (!(_854 == _renderPassDetectRemoteCatch)) {
          __branch_chain_988 = true;
        } else {
          _994 = WaveReadLaneFirst(_materialIndex);
          _1002 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_994 < (uint)170000), _994, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._itemRatio);
          if (!(_1002 > 0.001f)) {
            __branch_chain_988 = true;
          } else {
            if (!((_highLightForVision > 0.0f) || (_highLightForVisionRemoteCatch > 0.0f))) {
              __branch_chain_988 = true;
            } else {
              __branch_chain_988 = false;
            }
          }
        }
        if (__branch_chain_988) {
          _1014 = (_854 == _renderPassSelfPlayer);
          if ((_1014) || ((_854 == _renderPassTest) || (_854 == _renderPassEnemy)) || (_854 == _renderPassDetectPickedRemoteCatch)) {
            if ((_characterHighlight > 0.001f) || (_highLightForVisionRemoteCatch > 0.001f)) {
              _1046 = 1.0f - saturate(dot(float3((_886 * _882), (_886 * _883), (_886 * _884)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
              _1047 = _1046 * _1046;
              _1048 = _1047 * _1047;
              if (!_1014) {
                if (!(_854 == _renderPassTest)) {
                  _1055 = (_854 == _renderPassEnemy);
                  _1060 = select(_1055, 0.3f, 1.0f);
                  _1061 = select(_1055, 0.3f, 0.4f);
                  _1062 = select(_1055, 1.0f, 0.2f);
                } else {
                  _1060 = 1.0f;
                  _1061 = 1.0f;
                  _1062 = 1.0f;
                }
              } else {
                _1060 = 1.0f;
                _1061 = 1.0f;
                _1062 = 1.0f;
              }
              _1066 = 1.0f / max(0.001f, _exposure0.x);
              _1157 = _854;
              _1158 = ((((_929 - _819) + ((((_1066 + (_819 * 10.0f)) * _1060) - _929) * _1048)) * _889.w) + _819);
              _1159 = ((((_920 - _820) + ((((_1066 + (_820 * 10.0f)) * _1061) - _920) * _1048)) * _889.w) + _820);
              _1160 = ((((_911 - _821) + ((((_1066 + (_821 * 10.0f)) * _1062) - _911) * _1048)) * _889.w) + _821);
            } else {
              _1157 = _854;
              _1158 = _819;
              _1159 = _820;
              _1160 = _821;
            }
          } else {
            _1157 = _854;
            _1158 = _819;
            _1159 = _820;
            _1160 = _821;
          }
        } else {
          _1097 = WaveReadLaneFirst(_materialIndex);
          _1105 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1097 < (uint)170000), _1097, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._detectColorBase);
          _1108 = (float)((uint)((uint)(((uint)((uint)(_1105)) >> 16) & 255)));
          _1111 = (float)((uint)((uint)(((uint)((uint)(_1105)) >> 8) & 255)));
          _1113 = (float)((uint)((uint)(_1105 & 255)));
          _1116 = max(0.001f, _exposure0.x);
          _1157 = _854;
          _1158 = ((((select(((_1113 * 0.003921569f) < 0.04045f), (_1113 * 0.000303527f), exp2(log2((_1113 * 0.003717127f) + 0.052132703f) * 2.4f)) * 10.0f) / _1116) * _889.w) + _819);
          _1159 = ((((select(((_1111 * 0.003921569f) < 0.04045f), (_1111 * 0.000303527f), exp2(log2((_1111 * 0.003717127f) + 0.052132703f) * 2.4f)) * 10.0f) / _1116) * _889.w) + _820);
          _1160 = ((((select(((_1108 * 0.003921569f) < 0.04045f), (_1108 * 0.000303527f), exp2(log2((_1108 * 0.003717127f) + 0.052132703f) * 2.4f)) * 10.0f) / _1116) * _889.w) + _821);
        }
      }
    }
  } else {
    _1157 = 0;
    _1158 = _819;
    _1159 = _820;
    _1160 = _821;
  }
  if (!(!(_wantedRegionRatio >= 0.001f))) {
    [branch]
    if (!(!(_wantedRegionOpacity >= 0.001f))) {
      _1171 = WaveReadLaneFirst(_materialIndex);
      _1179 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1171 < (uint)170000), _1171, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._wantedRegionColor);
      _1182 = (float)((uint)((uint)(((uint)((uint)(_1179)) >> 16) & 255)));
      _1185 = (float)((uint)((uint)(((uint)((uint)(_1179)) >> 8) & 255)));
      _1187 = (float)((uint)((uint)(_1179 & 255)));
      _1190 = max(0.001f, _exposure0.x);
      _1195 = _wantedRegionRatio * _wantedRegionRadius;
      _1197 = saturate(_1195) * 4.0f;
      _1199 = (_258 * 2.0f) + -1.0f;
      _1201 = 1.0f - (_257 * 2.0f);
      _1206 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_258, _257))).x));
      _1218 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _1206, mad((_invViewProj[3].y), _1201, ((_invViewProj[3].x) * _1199)));
      _1230 = ((mad((_invViewProj[0].z), _1206, mad((_invViewProj[0].y), _1201, ((_invViewProj[0].x) * _1199))) + (_invViewProj[0].w)) / _1218) - _wantedRegionPosition.x;
      _1241 = ((mad((_invViewProj[2].z), _1206, mad((_invViewProj[2].y), _1201, ((_invViewProj[2].x) * _1199))) + (_invViewProj[2].w)) / _1218) - _wantedRegionPosition.z;
      _1245 = sqrt((_1241 * _1241) + (_1230 * _1230));
      _1248 = saturate(floor(_1245 / _1195));  // [sem: expr_sat]
      _1254 = saturate(((_1197 - _1195) + _1245) / _1197) * (1.0f - _1248);  // [sem: expr_sat]
      _1259 = (1.0f - saturate((_1245 - _1195) / _1197)) * _1248;
      _1265 = saturate(((_1259 * _1259) * _1259) + ((_1254 * _1254) * _1254));  // [sem: expr_sat]
      _1268 = saturate((_1265 * 5.0f) + -4.0f);  // [sem: expr_sat]
      _1269 = _1268 * _1268;
      _1272 = ((_1269 * _1269) * 9.0f) + 1.0f;
      _1295 = (((((float)((uint)((uint)((uint)((uint)(_1179)) >> 24)))) * 0.003921569f) * _wantedRegionOpacity) * _1265) * ((float)((bool)((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _258) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _257) + -0.5f))), 0)))).x) & 127) + (int)(-52)) > (uint)15)));
      _1339 = (((((select(((_1187 * 0.003921569f) < 0.04045f), (_1187 * 0.000303527f), exp2(log2((_1187 * 0.003717127f) + 0.052132703f) * 2.4f)) / _1190) * _1272) - _1158) * _1295) + _1158);
      _1340 = (((((select(((_1185 * 0.003921569f) < 0.04045f), (_1185 * 0.000303527f), exp2(log2((_1185 * 0.003717127f) + 0.052132703f) * 2.4f)) / _1190) * _1272) - _1159) * _1295) + _1159);
      _1341 = ((_1295 * (((select(((_1182 * 0.003921569f) < 0.04045f), (_1182 * 0.000303527f), exp2(log2((_1182 * 0.003717127f) + 0.052132703f) * 2.4f)) / _1190) * _1272) - _1160)) + _1160);
    } else {
      _1339 = _1158;
      _1340 = _1159;
      _1341 = _1160;
    }
  } else {
    _1339 = _1158;
    _1340 = _1159;
    _1341 = _1160;
  }
  if (((_temperatureWarning >= 0.01f) || (_temperatureWarning <= -0.01f)) || (_electrocutionWarning > 0.001f)) {
    _1353 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_258, _257));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _1360 = (pow(_1353.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _1363 = (pow(_1353.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _1366 = (pow(_1353.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _1375 = exp2(log2(max(0.0f, (_1360 + -0.8359375f)) / (18.851562f - (_1360 * 18.6875f))) * 6.277395f) * 10000.0f;
    _1384 = exp2(log2(max(0.0f, (_1363 + -0.8359375f)) / (18.851562f - (_1363 * 18.6875f))) * 6.277395f) * 10000.0f;
    _1393 = exp2(log2(max(0.0f, (_1366 + -0.8359375f)) / (18.851562f - (_1366 * 18.6875f))) * 6.277395f) * 10000.0f;
    _1394 = _temperatureWarning * 0.01f;
    if (_temperatureWarning > 0.0f) {
      _1398 = saturate(saturate(_1394));  // [sem: expr_sat]
      _1399 = TEXCOORD.x + -0.5f;
      _1400 = TEXCOORD.y + -0.6f;
      _1408 = saturate((_1398 + -0.5f) + sqrt((_1400 * _1400) + (_1399 * _1399))) * _1398;
      _1411 = (1.0f - (_1408 * 0.3f)) * _1340;
      _1414 = (1.0f - (_1408 * 0.7f)) * _1339;
      _1440 = (lerp(_1414, _1393, _1353.w));  // [sem: blended]
      _1441 = (lerp(_1411, _1384, _1353.w));  // [sem: blended]
      _1442 = ((_1375 - _1341) * _1353.w);
    } else {
      _1429 = (_1353.w * (1.0f - TEXCOORD.y)) * saturate(abs(_1394) * 2.0f);
      _1440 = ((_1429 * _1393) + _1339);  // [sem: blended]
      _1441 = ((_1429 * (_1384 - (_1340 * 0.100000024f))) + _1340);  // [sem: blended]
      _1442 = (_1429 * (_1375 - (_1341 * 0.3f)));
    }
    _1443 = _1442 + _1341;
    if (!(_electrocutionWarning == 0.0f)) {
      _1449 = max(0.001f, _exposure0.x);
      _1450 = TEXCOORD.x + -0.5f;
      _1451 = TEXCOORD.y + -0.6f;
      _1459 = (_electrocutionWarning * 0.5f) * saturate(sqrt((_1451 * _1451) + (_1450 * _1450)) + -0.3f);
      _1463 = (((0.05f / _1449) - _1443) * _1459) + _1443;
      _1467 = (((0.1f / _1449) - _1441) * _1459) + _1441;
      _1471 = (((0.5f / _1449) - _1440) * _1459) + _1440;
      _1482 = (lerp(_1471, _1393, _1353.w));  // [sem: blended]
      _1483 = (lerp(_1467, _1384, _1353.w));  // [sem: blended]
      _1484 = (lerp(_1463, _1375, _1353.w));  // [sem: blended]
    } else {
      _1482 = _1440;  // [sem: blended]
      _1483 = _1441;  // [sem: blended]
      _1484 = _1443;  // [sem: blended]
    }
  } else {
    _1482 = _1339;  // [sem: blended]
    _1483 = _1340;  // [sem: blended]
    _1484 = _1341;  // [sem: blended]
  }
  [branch]
  if (!(!(_hpPercentage <= 20.0f))) {
    _1490 = 1.0f - (_hpPercentage * 0.01f);
    if ((!(_hpPercentage <= 0.0f)) && (_1490 >= 0.001f)) {
      _1497 = _time.x * 0.3f;
      _1510 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_311 < (uint)65000), _311, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1497 + (TEXCOORD.x * 12.0f)), (_1497 + (TEXCOORD.y * 6.0f)))))).w) * 0.1f;
      _1513 = WaveReadLaneFirst(_materialIndex);
      _1521 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1513 < (uint)170000), _1513, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseTexture);
      _1525 = (_hpPercentage * 0.002f) + 0.36f;
      _1529 = max((abs(TEXCOORD.x + -0.5f) - _1525), 0.0f);
      _1533 = max((abs(TEXCOORD.y + -0.5f) - _1525), 0.0f);
      _1541 = sin(frac(_time.x * (2.0f - (_hpPercentage * 0.05f))) * 3.1415927f);
      _1542 = 1.0f - _257;
      _1545 = saturate((_1542 * _1542) * 2.0f);  // [sem: expr_sat]
      _1546 = saturate(_1541);  // [sem: _1541_sat]
      _1550 = ((_isPhotosensitiveMode_isAllolwBlood & 1) != 0);
      _1552 = (_1546 * 0.011267403f) + 0.02238649f;
      _1556 = 1.0f / max(0.001f, _exposure0.x);
      _1558 = select(_1550, 0.00699541f, 0.043172102f) * _1556;
      _1588 = (min(max(_1490, 0.0f), 1.0f) * _1545) * saturate((saturate(saturate(sqrt((_1533 * _1533) + (_1529 * _1529)) * 3.846154f) * ((_1541 * 0.19999999f) + 0.8f)) * 2.0f) - ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1521 < (uint)65000), _1521, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((TEXCOORD.x * 2.0f) + 0.3f) + _1510), (_1510 + TEXCOORD.y))))).x) * 1.44f));
      _1593 = (0.13f - (_hpPercentage * 0.006f)) * _1545;
      _1598 = (_1593 * ((select(_1550, 0.21586052f, 0.043172102f) * _1556) - _1484)) + _1484;
      _1601 = (_1593 * (_1558 - _1483)) + _1483;
      _1604 = (_1593 * (_1558 - _1482)) + _1482;
      _1625 = ((((select(_1550, 0.002124689f, _1552) * _1556) - _1604) * _1588) + _1604);
      _1626 = ((((select(_1550, ((_1546 * 0.0053743417f) + 0.002124689f), _1552) * _1556) - _1601) * _1588) + _1601);
      _1627 = ((((select(_1550, ((_1546 * 0.056337014f) + 0.11193244f), _1552) * _1556) - _1598) * _1588) + _1598);
    } else {
      _1625 = _1482;
      _1626 = _1483;
      _1627 = _1484;
    }
  } else {
    _1625 = _1482;
    _1626 = _1483;
    _1627 = _1484;
  }
  _1630 = WaveReadLaneFirst(_materialIndex);
  _1638 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1630 < (uint)170000), _1630, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._channelBrightness.x);
  _1642 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1630 < (uint)170000), _1630, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._channelBrightness.y);
  _1646 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1630 < (uint)170000), _1630, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._channelBrightness.z);
  _1649 = WaveReadLaneFirst(_materialIndex);
  _1657 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1649 < (uint)170000), _1649, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._saturation.x);
  _1661 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1649 < (uint)170000), _1649, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._saturation.y);
  _1665 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1649 < (uint)170000), _1649, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._saturation.z);
  _1668 = WaveReadLaneFirst(_materialIndex);
  _1676 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1668 < (uint)170000), _1668, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._contrast);
  _1677 = (_149 > 0.001f);
  if (_1677) {
    if ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0) {
      _1688 = (_1638 > (_1642 + 0.05f)) && (_1638 > (_1646 + 0.05f));
      _1689 = _1638 * 0.4f;
      _1694 = (_1657 > (_1661 + 0.05f)) && (_1657 > (_1665 + 0.05f));
      _1695 = _1657 * 0.4f;
      _1703 = select(_1694, _1695, _1665);
      _1704 = select(_1694, _1695, _1661);
      _1705 = select(_1694, _1695, _1657);
      _1706 = select(_1688, _1689, _1646);
      _1707 = select(_1688, _1689, _1642);
      _1708 = select(_1688, _1689, _1638);
    } else {
      _1703 = _1665;
      _1704 = _1661;
      _1705 = _1657;
      _1706 = _1646;
      _1707 = _1642;
      _1708 = _1638;
    }
  } else {
    _1703 = _1665;
    _1704 = _1661;
    _1705 = _1657;
    _1706 = _1646;
    _1707 = _1642;
    _1708 = _1638;
  }
  _1709 = _1708 * _1627;
  _1710 = _1707 * _1626;
  _1711 = _1706 * _1625;
  _1713 = (1.0f - _1705) * 0.3086f;
  _1715 = (1.0f - _1704) * 0.6094f;
  _1717 = (1.0f - _1703) * 0.082f;
  _1718 = _1709 * _1713;
  _1721 = WaveReadLaneFirst(_materialIndex);
  _1729 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1721 < (uint)170000), _1721, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._contrast);
  _1730 = max(_1676, 0.0f);
  _1738 = max(0.0f, (((mad(_1711, _1717, mad(_1710, _1715, (_1709 * (_1713 + _1705)))) + -0.5f) * _1730) + 0.5f));
  _1745 = max(0.0f, (((mad(_1711, _1717, mad(_1710, (_1715 + _1704), _1718)) + -0.5f) * _1730) + 0.5f));
  _1752 = max(0.0f, (((mad(_1711, (_1717 + _1703), mad(_1710, _1715, _1718)) + -0.5f) * _1730) + 0.5f));
  _1755 = WaveReadLaneFirst(_materialIndex);
  _1763 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1755 < (uint)170000), _1755, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._invertColor);
  _1766 = _exposure2.x * 4.0f;
  _1770 = ((_1766 - (_1738 * 2.0f)) * _1763) + _1738;
  _1774 = ((_1766 - (_1745 * 2.0f)) * _1763) + _1745;
  _1778 = ((_1766 - (_1752 * 2.0f)) * _1763) + _1752;
  _1781 = WaveReadLaneFirst(_materialIndex);
  _1789 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1781 < (uint)170000), _1781, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderRatio);
  [branch]
  if (!(!(_1789 >= 0.001f))) {
    _1794 = WaveReadLaneFirst(_materialIndex);
    _1802 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1794 < (uint)170000), _1794, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseTile.x);
    _1806 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1794 < (uint)170000), _1794, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseTile.y);
    _1809 = WaveReadLaneFirst(_materialIndex);
    _1817 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1809 < (uint)170000), _1809, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseOffset.x);
    _1821 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1809 < (uint)170000), _1809, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseOffset.y);
    _1824 = WaveReadLaneFirst(_materialIndex);
    _1832 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1824 < (uint)170000), _1824, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseTexture);
    _1835 = WaveReadLaneFirst(_materialIndex);
    _1843 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1835 < (uint)170000), _1835, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderSmoothness);
    _1846 = WaveReadLaneFirst(_materialIndex);
    _1854 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1846 < (uint)170000), _1846, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderWidth);
    _1856 = (1.0f - _1854) * 0.5f;
    _1860 = max((abs(TEXCOORD.x + -0.5f) - _1856), 0.0f);
    _1864 = max((abs(TEXCOORD.y + -0.5f) - _1856), 0.0f);
    _1873 = 1.0f - ((1.0f - saturate(sqrt((_1864 * _1864) + (_1860 * _1860)) / _1843)) * 2.0f);
    _1876 = WaveReadLaneFirst(_materialIndex);
    _1884 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1876 < (uint)170000), _1876, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderFlickerSpeed);
    if (_1884 > 0.001f) {
      _1889 = WaveReadLaneFirst(_materialIndex);
      _1897 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1889 < (uint)170000), _1889, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderFlickerOpacityMinMax.x);
      _1901 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1889 < (uint)170000), _1889, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderFlickerOpacityMinMax.y);
      _1904 = WaveReadLaneFirst(_materialIndex);
      _1912 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1904 < (uint)170000), _1904, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderFlickerIntensity);
      _1923 = ((_1912 * _1873) * min(max(sin((_1884 * 3.1415927f) * _time.x), _1897), _1901));
    } else {
      _1923 = _1873;
    }
    _1926 = WaveReadLaneFirst(_materialIndex);
    _1934 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1926 < (uint)170000), _1926, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseRatio);
    // [sem: expr_sat]
    _1953 = saturate(saturate(_1923) - ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1832 < (uint)65000), _1832, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1817 + (_1802 * TEXCOORD.x)), (_1821 + (_1806 * TEXCOORD.y)))))).x) * _1934)) * min(max(_1789, 0.0f), 1.0f);
    _1956 = WaveReadLaneFirst(_materialIndex);
    _1964 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1956 < (uint)170000), _1956, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderColor);
    _1967 = (float)((uint)((uint)(((uint)((uint)(_1964)) >> 16) & 255)));
    _1970 = (float)((uint)((uint)(((uint)((uint)(_1964)) >> 8) & 255)));
    _1972 = (float)((uint)((uint)(_1964 & 255)));
    _1981 = select(((_1967 * 0.003921569f) < 0.04045f), (_1967 * 0.000303527f), exp2(log2((_1967 * 0.003717127f) + 0.052132703f) * 2.4f));
    if (_1677) {
      _1988 = ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
    } else {
      _1988 = false;
    }
    _1989 = _1981 * 0.4f;
    _1993 = 1.0f / max(0.001f, _exposure0.x);
    _2028 = ((((select(_1988, _1989, select(((_1972 * 0.003921569f) < 0.04045f), (_1972 * 0.000303527f), exp2(log2((_1972 * 0.003717127f) + 0.052132703f) * 2.4f))) * _1993) - _1778) * _1953) + _1778);
    _2029 = ((((select(_1988, _1989, select(((_1970 * 0.003921569f) < 0.04045f), (_1970 * 0.000303527f), exp2(log2((_1970 * 0.003717127f) + 0.052132703f) * 2.4f))) * _1993) - _1774) * _1953) + _1774);
    _2030 = ((((_1993 * select(_1988, _1989, _1981)) - _1770) * _1953) + _1770);
  } else {
    _2028 = _1778;
    _2029 = _1774;
    _2030 = _1770;
  }
  [branch]
  if (!(!(_56 >= 0.001f))) {
    _2033 = TEXCOORD.x + -0.5f;
    _2034 = TEXCOORD.y + -0.5f;
    _2037 = WaveReadLaneFirst(_materialIndex);
    _2045 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2037 < (uint)170000), _2037, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteRadius2);
    _2048 = WaveReadLaneFirst(_materialIndex);
    _2056 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2048 < (uint)170000), _2048, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignettePower2);
    // [sem: expr_sat]
    _2070 = saturate((sqrt((_2034 * _2034) + (_2033 * _2033)) / max(0.001f, (1.0f - _2045))) * exp2(log2(abs(0.5f - TEXCOORD.x)) * _2056));
    _2075 = saturate(_2070 * 2.0f) * saturate(_56 * 10.0f);  // [sem: expr_sat]
    _2078 = (_2075 * (_579 - _2030)) + _2030;
    _2081 = (_2075 * (_578 - _2029)) + _2029;
    _2084 = (_2075 * (_577 - _2028)) + _2028;
    _2087 = WaveReadLaneFirst(_materialIndex);
    _2095 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2087 < (uint)170000), _2087, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteColor2);
    _2098 = (float)((uint)((uint)(((uint)((uint)(_2095)) >> 16) & 255)));
    _2101 = (float)((uint)((uint)(((uint)((uint)(_2095)) >> 8) & 255)));
    _2103 = (float)((uint)((uint)(_2095 & 255)));
    _2112 = select(((_2098 * 0.003921569f) < 0.04045f), (_2098 * 0.000303527f), exp2(log2((_2098 * 0.003717127f) + 0.052132703f) * 2.4f));
    if (_1677) {
      _2119 = ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
    } else {
      _2119 = false;
    }
    _2120 = _2112 * 0.2f;
    _2123 = max(0.001f, _exposure0.x);
    _2125 = saturate(_2070) * _56;
    _2160 = ((((select(_2119, _2120, select(((_2103 * 0.003921569f) < 0.04045f), (_2103 * 0.000303527f), exp2(log2((_2103 * 0.003717127f) + 0.052132703f) * 2.4f))) / _2123) - _2084) * _2125) + _2084);
    _2161 = ((((select(_2119, _2120, select(((_2101 * 0.003921569f) < 0.04045f), (_2101 * 0.000303527f), exp2(log2((_2101 * 0.003717127f) + 0.052132703f) * 2.4f))) / _2123) - _2081) * _2125) + _2081);
    _2162 = ((((select(_2119, _2120, _2112) / _2123) - _2078) * _2125) + _2078);
  } else {
    _2160 = _2028;
    _2161 = _2029;
    _2162 = _2030;
  }
  [branch]
  if (!(!(_45 >= 0.001f))) {
    _2165 = TEXCOORD.x + -0.5f;
    _2166 = TEXCOORD.y + -0.5f;
    _2169 = WaveReadLaneFirst(_materialIndex);
    _2177 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2169 < (uint)170000), _2169, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteRadius1);
    _2180 = WaveReadLaneFirst(_materialIndex);
    _2188 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2180 < (uint)170000), _2180, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignettePower1);
    // [sem: expr_sat]
    _2201 = saturate((sqrt((_2166 * _2166) + (_2165 * _2165)) / max(0.001f, (1.0f - _2177))) * exp2(log2(1.0f - TEXCOORD.y) * _2188));
    _2204 = saturate(_45 * 10.0f) * _2201;
    _2207 = (_2204 * (_579 - _2162)) + _2162;
    _2210 = (_2204 * (_578 - _2161)) + _2161;
    _2213 = (_2204 * (_577 - _2160)) + _2160;
    _2216 = WaveReadLaneFirst(_materialIndex);
    _2224 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2216 < (uint)170000), _2216, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteColor1);
    _2227 = (float)((uint)((uint)(((uint)((uint)(_2224)) >> 16) & 255)));
    _2230 = (float)((uint)((uint)(((uint)((uint)(_2224)) >> 8) & 255)));
    _2232 = (float)((uint)((uint)(_2224 & 255)));
    _2241 = select(((_2227 * 0.003921569f) < 0.04045f), (_2227 * 0.000303527f), exp2(log2((_2227 * 0.003717127f) + 0.052132703f) * 2.4f));
    if (_1677) {
      _2248 = ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
    } else {
      _2248 = false;
    }
    _2249 = _2241 * 0.2f;
    _2252 = max(0.001f, _exposure0.x);
    _2254 = saturate(_2201) * _45;
    _2289 = ((((select(_2248, _2249, select(((_2232 * 0.003921569f) < 0.04045f), (_2232 * 0.000303527f), exp2(log2((_2232 * 0.003717127f) + 0.052132703f) * 2.4f))) / _2252) - _2213) * _2254) + _2213);
    _2290 = ((((select(_2248, _2249, select(((_2230 * 0.003921569f) < 0.04045f), (_2230 * 0.000303527f), exp2(log2((_2230 * 0.003717127f) + 0.052132703f) * 2.4f))) / _2252) - _2210) * _2254) + _2210);
    _2291 = ((((select(_2248, _2249, _2241) / _2252) - _2207) * _2254) + _2207);
  } else {
    _2289 = _2160;
    _2290 = _2161;
    _2291 = _2162;
  }
  [branch]
  if (!(!(_67 >= 0.001f))) {
    _2294 = TEXCOORD.x + -0.5f;
    _2295 = TEXCOORD.y + -0.5f;
    _2298 = WaveReadLaneFirst(_materialIndex);
    _2306 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2298 < (uint)170000), _2298, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteRadius3);
    _2309 = WaveReadLaneFirst(_materialIndex);
    _2317 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2309 < (uint)170000), _2309, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignettePower3);
    // [sem: expr_sat]
    _2329 = saturate((sqrt((_2295 * _2295) + (_2294 * _2294)) / max(0.001f, (1.0f - _2306))) * (pow(TEXCOORD.y, _2317)));
    _2332 = saturate(_67 * 10.0f) * _2329;
    _2335 = (_2332 * (_579 - _2291)) + _2291;
    _2338 = (_2332 * (_578 - _2290)) + _2290;
    _2341 = (_2332 * (_577 - _2289)) + _2289;
    _2344 = WaveReadLaneFirst(_materialIndex);
    _2352 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2344 < (uint)170000), _2344, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteColor3);
    _2355 = (float)((uint)((uint)(((uint)((uint)(_2352)) >> 16) & 255)));
    _2358 = (float)((uint)((uint)(((uint)((uint)(_2352)) >> 8) & 255)));
    _2360 = (float)((uint)((uint)(_2352 & 255)));
    _2369 = select(((_2355 * 0.003921569f) < 0.04045f), (_2355 * 0.000303527f), exp2(log2((_2355 * 0.003717127f) + 0.052132703f) * 2.4f));
    if (_1677) {
      _2376 = ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
    } else {
      _2376 = false;
    }
    _2377 = _2369 * 0.2f;
    _2380 = max(0.001f, _exposure0.x);
    _2382 = saturate(_2329) * _67;
    _2417 = ((((select(_2376, _2377, select(((_2360 * 0.003921569f) < 0.04045f), (_2360 * 0.000303527f), exp2(log2((_2360 * 0.003717127f) + 0.052132703f) * 2.4f))) / _2380) - _2341) * _2382) + _2341);
    _2418 = ((((select(_2376, _2377, select(((_2358 * 0.003921569f) < 0.04045f), (_2358 * 0.000303527f), exp2(log2((_2358 * 0.003717127f) + 0.052132703f) * 2.4f))) / _2380) - _2338) * _2382) + _2338);
    _2419 = ((((select(_2376, _2377, _2369) / _2380) - _2335) * _2382) + _2335);
  } else {
    _2417 = _2289;
    _2418 = _2290;
    _2419 = _2291;
  }
  [branch]
  if (!(!(_hideStateRatio >= 0.001f))) {
    _2424 = _hideStateRatio * 0.5f;
    _2425 = TEXCOORD.x + -0.5f;
    _2426 = TEXCOORD.y + -0.5f;
    _2434 = saturate(((_2424 + -0.5f) + sqrt((_2426 * _2426) + (_2425 * _2425))) * 2.0f);  // [sem: expr_sat]
    _2442 = saturate(((saturate(abs(0.5f - TEXCOORD.y) * 2.0f) - _2434) * 0.5f) + _2434);  // [sem: expr_sat]
    _2450 = (((_2442 * _2442) * 0.9f) * saturate(_hideStateRatio * 4.0f)) * (3.0f - (_2442 * 2.0f));
    _2453 = dot(float3(_2419, _2418, _2417), float3(0.2126f, 0.7152f, 0.0722f)) * (1.0f - _2424);
    _2456 = (pow(_2450, 0.5f));
    _2459 = ((_2453 - _2419) * _2456) + _2419;
    _2462 = ((_2453 - _2418) * _2456) + _2418;
    _2465 = ((_2453 - _2417) * _2456) + _2417;
    _2469 = 0.001f / max(0.001f, _exposure0.x);
    _2480 = (lerp(_2465, _2469, _2450));  // [sem: blended]
    _2481 = (lerp(_2462, _2469, _2450));  // [sem: blended]
    _2482 = (lerp(_2459, _2469, _2450));  // [sem: blended]
  } else {
    _2480 = _2417;  // [sem: blended]
    _2481 = _2418;  // [sem: blended]
    _2482 = _2419;  // [sem: blended]
  }
  if (_followLearning > 0.001f) {
    _2489 = WaveReadLaneFirst(_materialIndex);
    _2497 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2489 < (uint)170000), _2489, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._followLearningColor);
    _2500 = (float)((uint)((uint)(((uint)((uint)(_2497)) >> 16) & 255)));
    _2503 = (float)((uint)((uint)(((uint)((uint)(_2497)) >> 8) & 255)));
    _2505 = (float)((uint)((uint)(_2497 & 255)));
    _2508 = max(0.001f, _exposure0.x);
    _2518 = select(((_2500 * 0.003921569f) < 0.04045f), (_2500 * 0.000303527f), exp2(log2((_2500 * 0.003717127f) + 0.052132703f) * 2.4f)) / _2508;
    _2528 = select(((_2503 * 0.003921569f) < 0.04045f), (_2503 * 0.000303527f), exp2(log2((_2503 * 0.003717127f) + 0.052132703f) * 2.4f)) / _2508;
    _2538 = select(((_2505 * 0.003921569f) < 0.04045f), (_2505 * 0.000303527f), exp2(log2((_2505 * 0.003717127f) + 0.052132703f) * 2.4f)) / _2508;
    _2541 = WaveReadLaneFirst(_materialIndex);
    _2549 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2541 < (uint)170000), _2541, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._followLearningNoiseTex);
    _2560 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_311 < (uint)65000), _311, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_258, ((_time.x * 0.2f) + _257)));
    _2567 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_258, _257));  // [sem: _3__36__0__0__g_depth_sample]
    _2570 = (_258 * 2.0f) + -1.0f;
    _2572 = 1.0f - (_257 * 2.0f);
    _2573 = max(1e-07f, _2567.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
    _2585 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _2573, mad((_invViewProj[3].y), _2572, ((_invViewProj[3].x) * _2570)));
    _2590 = (uint)((_bufferSizeAndInvSize.x * _258) + -0.5f);
    _2594 = (uint)((_bufferSizeAndInvSize.y * _257) + -0.5f);
    _2596 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_2590, _2594, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
    _2599 = __3__36__0__0__g_gbufferNormal.Load(int3(_2590, _2594, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
    _2606 = (saturate(_2599.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _2610 = (saturate(_2599.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _2614 = (saturate(_2599.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _2616 = rsqrt(dot(float3(_2606, _2610, _2614), float3(_2606, _2610, _2614)));  // [sem: invLength]
    _2617 = _2616 * _2606;
    _2618 = _2616 * _2610;
    _2619 = _2614 * _2616;
    _2624 = (((float)((uint)((uint)(((uint)((uint)(_2596.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _2628 = (((float)((uint)((uint)(_2596.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _2630 = (_2624 + _2628) * 0.5f;
    _2632 = (_2624 - _2628) * 0.5f;
    _2636 = (1.0f - abs(_2630)) - abs(_2632);
    _2638 = rsqrt(dot(float3(_2630, _2632, _2636), float3(_2630, _2632, _2636)));  // [sem: invLength]
    _2639 = _2638 * _2630;
    _2640 = _2638 * _2632;
    _2641 = _2638 * _2636;
    _2643 = select((_2619 >= 0.0f), 1.0f, -1.0f);
    _2646 = -0.0f - (1.0f / (_2643 + _2619));
    _2647 = _2618 * _2646;
    _2648 = _2647 * _2617;
    _2649 = _2643 * _2617;
    _2655 = mad(_2641, _2617, mad(_2640, _2648, ((((_2649 * _2617) * _2646) + 1.0f) * _2639)));
    _2661 = mad(_2641, _2618, mad(_2640, ((_2647 * _2618) + _2643), ((_2639 * _2643) * _2648)));
    _2666 = mad(_2641, _2619, mad(_2640, (-0.0f - _2618), (-0.0f - (_2649 * _2639))));
    _2668 = rsqrt(dot(float3(_2655, _2661, _2666), float3(_2655, _2661, _2666)));  // [sem: invLength]
    _2669 = _2668 * _2661;
    _2670 = _2668 * _2666;
    _2673 = _time.x * 0.5f;
    _2684 = (((mad((_invViewProj[2].z), _2573, mad((_invViewProj[2].y), _2572, ((_invViewProj[2].x) * _2570))) + (_invViewProj[2].w)) / _2585) - _2673) * 0.2f;
    _2695 = (((mad((_invViewProj[1].z), _2573, mad((_invViewProj[1].y), _2572, ((_invViewProj[1].x) * _2570))) + (_invViewProj[1].w)) / _2585) - _2673) * 0.2f;
    _2702 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2549 < (uint)65000), _2549, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_2684, _2695));
    _2718 = ((((_invViewProj[0].w) + mad((_invViewProj[0].z), _2573, mad((_invViewProj[0].y), _2572, ((_invViewProj[0].x) * _2570)))) / _2585) - _2673) * 0.2f;
    _2724 = (((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2549 < (uint)65000), _2549, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_2718, _2684)))).w) - _2702.w) * abs(_2669)) + _2702.w;
    _2730 = (((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2549 < (uint)65000), _2549, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_2718, _2695)))).w) - _2724) * abs(_2670)) + _2724;
    _2731 = _2560.z + -0.5f;
    _2732 = _258 + -0.5f;
    _2733 = _257 + -0.5f;
    _2735 = 0.375f - (_2731 * 0.25f);
    _2741 = max((abs(((_2560.x + -0.5f) * 0.1f) + _2732) - _2735), 0.0f);
    _2747 = max((abs(((_2560.y + -0.5f) * 0.1f) + _2733) - _2735), 0.0f);
    _2752 = saturate(sqrt((_2747 * _2747) + (_2741 * _2741)));  // [sem: expr_sat]
    _2756 = saturate(_followLearning * 2.0f);  // [sem: expr_sat]
    _2762 = saturate(((((_2567.x * 100.0f) * _2756) - _2730) * 2.0f) + -0.5f);  // [sem: expr_sat]
    _2766 = sqrt((_2732 * _2732) + (_2733 * _2733));
    _2775 = ((saturate((_2756 * 2.0f) + -1.0f) * (1.0f - _2762)) + _2762) * saturate(_2766 + 0.5f);
    _2777 = atan(_2733 / _2732);
    _2778 = (_2732 < 0.0f);
    _2779 = (_2732 == 0.0f);
    _2780 = (_2733 >= 0.0f);
    _2781 = (_2733 < 0.0f);
    _2782 = _2730 * 0.5f;
    _2808 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2549 < (uint)65000), _2549, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((_2731 * -0.5f) - _2782) - (_time.x * 0.2f)) + select((_2780 && _2779), 7.5f, select((_2781 && _2779), -7.5f, (select((_2781 && _2778), (_2777 + -3.1415927f), select((_2780 && _2778), (_2777 + 3.1415927f), _2777)) * 4.774648f)))), (((((_2560.w + -0.5f) * -0.5f) - _2782) + (_2766 * 2.0f)) - (_time.x * 1.5f))));
    if (!(_1157 == _renderPassSelfPlayer)) {
      _2819 = ((int)(uint)((int)(_1157 == _renderPassTest)));
    } else {
      _2819 = 1;
    }
    _2845 = !((1.0f - saturate(ceil(((_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_258, _257))).x))) + 0.5f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _258)), ((int)(_customRenderPassSizeInvSize.y * _257)), 0)))).x)))))) == 0.0f);
    _2847 = (_2819 == 0) || _2845;
    if (_1157 == _renderPassTargetFocus) {
      if (_2845) {
        _2868 = ((int)(uint)((int)(_1157 != _renderPassAimHighlight)));
      } else {
        _2868 = 0;
      }
    } else {
      if (!((_1157 == _renderPassLearning) && (!_2845))) {
        _2868 = ((int)(uint)((int)(_1157 != _renderPassAimHighlight)));
      } else {
        _2868 = 0;
      }
    }
    _2870 = saturate(_followLearning * 4.0f);  // [sem: expr_sat]
    _2873 = (_2870 * (_282 - _2482)) + _2482;
    _2876 = (_2870 * (_291 - _2481)) + _2481;
    _2879 = (_2870 * (_300 - _2480)) + _2480;
    _2880 = (_2868 != 0);
    _2881 = _2847 && _2880;
    if (_2881) {
      _2888 = ((_followLearning * 0.25f) * _2808.w) * saturate(_2766 - (_2870 * 0.2f));
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _2892 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_2888 + _258), (_2888 + _257)));
      _2898 = (pow(_2892.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _2901 = (pow(_2892.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _2904 = (pow(_2892.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _2906 = 1.0f - (_followLearning * 0.75f);
      _2952 = _2775;
      _2953 = (((((exp2(log2(max(0.0f, (_2904 + -0.8359375f)) / (18.851562f - (_2904 * 18.6875f))) * 6.277395f) * 10000.0f) - _2879) * _2870) + _2879) * _2906);
      _2954 = (((((exp2(log2(max(0.0f, (_2901 + -0.8359375f)) / (18.851562f - (_2901 * 18.6875f))) * 6.277395f) * 10000.0f) - _2876) * _2870) + _2876) * _2906);
      _2955 = (((((exp2(log2(max(0.0f, (_2898 + -0.8359375f)) / (18.851562f - (_2898 * 18.6875f))) * 6.277395f) * 10000.0f) - _2873) * _2870) + _2873) * _2906);
    } else {
      if (_2847) {
        _2952 = select(_2880, _2775, 0.0f);
        _2953 = _2879;
        _2954 = _2876;
        _2955 = _2873;
      } else {
        _2952 = (_2775 * 0.4f);
        _2953 = _2879;
        _2954 = _2876;
        _2955 = _2873;
      }
    }
    _2956 = dot(float3(_2955, _2954, _2953), float3(0.2126f, 0.7152f, 0.0722f));
    _2959 = ((_2956 - _2955) * _2952) + _2955;
    _2962 = ((_2956 - _2954) * _2952) + _2954;
    _2965 = ((_2956 - _2953) * _2952) + _2953;
    _2967 = (_2560.z * 0.3f) * _2730;
    _2970 = saturate(_2952 * 5.0f) * 0.9f;
    _2974 = (((_2967 * _2518) - _2959) * _2970) + _2959;
    _2978 = (((_2967 * _2528) - _2962) * _2970) + _2962;
    _2982 = (((_2967 * _2538) - _2965) * _2970) + _2965;
    _2985 = WaveReadLaneFirst(_materialIndex);
    _2993 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2985 < (uint)170000), _2985, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._followLearningSaturationTone);
    _2996 = (float)((uint)((uint)(((uint)((uint)(_2993)) >> 16) & 255)));
    _2999 = (float)((uint)((uint)(((uint)((uint)(_2993)) >> 8) & 255)));
    _3001 = (float)((uint)((uint)(_2993 & 255)));
    _3010 = select(((_2996 * 0.003921569f) < 0.04045f), (_2996 * 0.000303527f), exp2(log2((_2996 * 0.003717127f) + 0.052132703f) * 2.4f));
    _3019 = select(((_2999 * 0.003921569f) < 0.04045f), (_2999 * 0.000303527f), exp2(log2((_2999 * 0.003717127f) + 0.052132703f) * 2.4f));
    _3028 = select(((_3001 * 0.003921569f) < 0.04045f), (_3001 * 0.000303527f), exp2(log2((_3001 * 0.003717127f) + 0.052132703f) * 2.4f));
    _3030 = (1.0f - _3010) * 0.3086f;
    _3032 = (1.0f - _3019) * 0.6094f;
    _3034 = (1.0f - _3028) * 0.082f;
    _3035 = _3030 * _2974;
    _3044 = ((mad(_2982, _3034, mad(_2978, _3032, ((_3030 + _3010) * _2974))) - _2974) * _followLearning) + _2974;
    _3050 = ((mad(_2982, _3034, mad(_2978, (_3032 + _3019), _3035)) - _2978) * _followLearning) + _2978;
    _3056 = ((mad(_2982, (_3034 + _3028), mad(_2978, _3032, _3035)) - _2982) * _followLearning) + _2982;
    if (!_2881) {
      // [sem: expr_sat]
      _3071 = saturate(1.0f - dot(float3((_2782 + (_2668 * _2655)), (_2782 + _2669), (_2782 + _2670)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _3081 = (((_followLearning * _followLearning) * _3071) * saturate(_2730 * 10.0f)) * select(_2847, ((_3071 * _3071) * 6.0f), (_3071 * 0.25f));
      _3089 = ((_3081 * _2538) + _3056);
      _3090 = ((_3081 * _2528) + _3050);
      _3091 = ((_3081 * _2518) + _3044);
    } else {
      _3089 = _3056;
      _3090 = _3050;
      _3091 = _3044;
    }
    _3092 = _followLearning * _2752;
    _3096 = 0.001f / max(0.001f, _exposure0.x);
    _3099 = ((_3096 - _3091) * _3092) + _3091;
    _3102 = ((_3096 - _3090) * _3092) + _3090;
    _3105 = ((_3096 - _3089) * _3092) + _3089;
    _3110 = saturate(((_2808.w * _2808.w) * 20.0f) * _followLearning) * _2752;
    _3121 = (lerp(_3099, _2518, _3110));  // [sem: blended]
    _3122 = (lerp(_3102, _2528, _3110));  // [sem: blended]
    _3123 = (lerp(_3105, _2538, _3110));  // [sem: blended]
  } else {
    _3121 = _2482;  // [sem: blended]
    _3122 = _2481;  // [sem: blended]
    _3123 = _2480;  // [sem: blended]
  }
  [branch]
  if ((dot(float4(_enemyAlert1.x, _enemyAlert1.y, _enemyAlert1.z, _enemyAlert1.w), float4(1.0f, 1.0f, 1.0f, 1.0f)) > 0.0f) || (dot(float4(_enemyAlert2.x, _enemyAlert2.y, _enemyAlert2.z, _enemyAlert2.w), float4(1.0f, 1.0f, 1.0f, 1.0f)) > 0.0f)) {
    _3143 = ((_isPhotosensitiveMode_isAllolwBlood & 1) != 0);
    _3146 = max(0.001f, _exposure0.x);
    _3160 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_311 < (uint)65000), _311, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 2.0f) * _34), ((_time.x * 0.1f) + (TEXCOORD.y * 2.0f))));
    _3163 = _3160.x + -0.5f;
    _3164 = _3160.y + -0.5f;
    _3166 = 0.45f - (_3163 * 0.005f);
    _3172 = max((abs((TEXCOORD.x + -0.5f) + (_3163 * 0.02f)) - _3166), 0.0f);
    _3178 = max((abs((TEXCOORD.y + -0.5f) + (_3164 * 0.02f)) - _3166), 0.0f);
    _3181 = WaveReadLaneFirst(_materialIndex);
    _3189 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_3181 < (uint)170000), _3181, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._enemyAlertTex);
    _3200 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_3189 < (uint)65000), _3189, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_3164 * 0.03f)), (TEXCOORD.y - (_3163 * 0.03f))));
    _3205 = (TEXCOORD.y > 0.5f);
    _3206 = (TEXCOORD.x < 0.5f);
    _3207 = (TEXCOORD.y < 0.5f);
    _3208 = (TEXCOORD.x > 0.5f);
    // [sem: expr_sat]
    _3249 = saturate(sqrt((_3178 * _3178) + (_3172 * _3172)) * 20.0f) * saturate(dot(float4((_3200.x * ((float)((bool)(_3205)))), (_3200.y * ((float)((bool)(_3206 && _3205)))), (_3200.z * ((float)((bool)(_3206)))), (_3200.w * ((float)((bool)(_3206 && _3207))))), float4(_enemyAlert1.x, _enemyAlert1.y, _enemyAlert1.z, _enemyAlert1.w)) + dot(float4((_3200.x * ((float)((bool)(_3207)))), (_3200.y * ((float)((bool)(_3208 && _3207)))), (_3200.z * ((float)((bool)(_3208)))), (_3200.w * ((float)((bool)(_3208 && _3205))))), float4(_enemyAlert2.x, _enemyAlert2.y, _enemyAlert2.z, _enemyAlert2.w)));
    _3251 = (_3249 * _3249) * _3249;
    _3268 = ((_3251 * ((select(_3143, 0.099898756f, 0.08437622f) / _3146) - _3121)) + _3121);
    _3269 = ((_3251 * ((select(_3143, 0.027320895f, 0.030713456f) / _3146) - _3122)) + _3122);
    _3270 = ((((select(_3143, 0.048171826f, 0.07036011f) / _3146) - _3123) * _3251) + _3123);
  } else {
    _3268 = _3121;
    _3269 = _3122;
    _3270 = _3123;
  }
  _3271 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _3284 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _3271, 0)))).x) & 127)))) + 0.5f);
  } else {
    _3284 = 1.0f;
  }
  _3287 = (_localToneMappingParams.w > 0.0f);
  if (_3287) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_3268, _3269, _3270));
    _3535 = _rndx_tonemapped_color.x;
    _3542 = _rndx_tonemapped_color.y;
    _3549 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _3555 = 1.0f - abs(_etcParams.w);
      _3556 = saturate(_etcParams.w);  // [sem: expr_sat]
      _3558 = (_3555 * _3535) + _3556;
      _3560 = (_3555 * _3542) + _3556;
      _3562 = (_3555 * _3549) + _3556;
      if (_colorGradingParams.w > 0.0f) {
        _3567 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _3584 = (((max(0.0f, (1.0f - _3558)) - _3558) * _3567) + _3558);
        _3585 = (((max(0.0f, (1.0f - _3560)) - _3560) * _3567) + _3560);
        _3586 = (((max(0.0f, (1.0f - _3562)) - _3562) * _3567) + _3562);
      } else {
        _3584 = _3558;
        _3585 = _3560;
        _3586 = _3562;
      }
      _3588 = _userImageAdjust.y + 1.0f;
      _3590 = _userImageAdjust.x + 0.5f;
      _3593 = ((_3584 + -0.5f) * _3588) + _3590;
      _3596 = ((_3585 + -0.5f) * _3588) + _3590;
      _3599 = ((_3586 + -0.5f) * _3588) + _3590;
      _3605 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _3640 = exp2(log2(saturate(mad(_colorBlind0.z, _3599, mad(_colorBlind0.y, _3596, (_colorBlind0.x * _3593))))) * _3605);
      _3641 = exp2(log2(saturate(mad(_colorBlind1.z, _3599, mad(_colorBlind1.y, _3596, (_colorBlind1.x * _3593))))) * _3605);
      _3642 = exp2(log2(saturate(mad(_colorBlind2.z, _3599, mad(_colorBlind2.y, _3596, (_colorBlind2.x * _3593))))) * _3605);
    } else {
      _3640 = _3535;
      _3641 = _3542;
      _3642 = _3549;
    }
  } else {
    _3640 = _3268;
    _3641 = _3269;
    _3642 = _3270;
  }
  if (_etcParams.y > 1.0f) {
    _3647 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _3650 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _3656 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_3647, _3650), float2(_3647, _3650))));  // [sem: expr_sat]
    _3661 = (_3656 * _3640);
    _3662 = (_3656 * _3641);
    _3663 = (_3656 * _3642);
  } else {
    _3661 = _3640;
    _3662 = _3641;
    _3663 = _3642;
  }
  if (_3287 && (_etcParams.z > 0.0f)) {
    _3693 = select((_3661 <= 0.0031308f), (_3661 * 12.92f), (((pow(_3661, 0.41666666f)) * 1.055f) + -0.055f));
    _3694 = select((_3662 <= 0.0031308f), (_3662 * 12.92f), (((pow(_3662, 0.41666666f)) * 1.055f) + -0.055f));
    _3695 = select((_3663 <= 0.0031308f), (_3663 * 12.92f), (((pow(_3663, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _3693 = _3661;
    _3694 = _3662;
    _3695 = _3663;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _3698 = (float)((uint)((uint)(_3271)));
    if (!(_3698 < _viewDir.w)) {
      if (!(!(_3698 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _3709 = 0.0f;
        _3710 = 0.0f;
        _3711 = 0.0f;
      } else {
        _3709 = _3693;
        _3710 = _3694;
        _3711 = _3695;
      }
    } else {
      _3709 = 0.0f;
      _3710 = 0.0f;
      _3711 = 0.0f;
    }
  } else {
    _3709 = _3693;
    _3710 = _3694;
    _3711 = _3695;
  }
  _3715 = exp2(log2(_3709 * 0.0001f) * 0.15930176f);
  _3719 = exp2(log2(_3710 * 0.0001f) * 0.15930176f);
  _3723 = exp2(log2(_3711 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_3715 * 18.6875f) + 1.0f)) * ((_3715 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_3719 * 18.6875f) + 1.0f)) * ((_3719 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_3723 * 18.6875f) + 1.0f)) * ((_3723 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _3284;
  return SV_Target;
}
