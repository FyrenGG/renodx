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

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t64, space36);

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

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _29;
  float _37;
  int _40;
  float _48;
  bool _49;
  bool _53;
  int _56;
  float _64;
  float _146;
  float _147;
  float _150;
  float _151;
  float _228;
  float _229;
  float _423;
  float _424;
  float _425;
  float _426;
  float _427;
  float _428;
  float _519;
  float _520;
  float _521;
  float _522;
  float _523;
  float _584;
  float _585;
  float _586;
  float _587;
  float _588;
  float _647;
  float _648;
  float _649;
  float _650;
  float _651;
  float _1241;
  float _1242;
  float _1243;
  float _1244;
  float _1541;
  float _1542;
  float _1543;
  float _1544;
  float _1638;
  float _1639;
  float _1640;
  float _1641;
  float _1657;
  float _1862;
  float _1863;
  float _1864;
  float _1957;
  float _1958;
  float _1959;
  float _2013;
  float _2014;
  float _2015;
  float _2031;
  float _2032;
  float _2033;
  float _2063;
  float _2064;
  float _2065;
  float _2079;
  float _2080;
  float _2081;
  float _71;
  float _73;
  float _74;
  float _75;
  int _78;
  float _86;
  float _93;
  float _101;
  float _106;
  float _107;
  float _108;
  float _112;
  float _117;
  float _119;
  float _130;
  float _131;
  float _136;
  float _138;
  int _164;
  int _167;
  int _175;
  uint2 _187;
  uint _202;
  int _204;
  float _208;
  float _213;
  float _215;
  float _216;
  float _217;
  float _231;
  float _232;
  float _233;
  float _234;
  float _236;
  float _237;
  float _238;
  float _239;
  float4 _242;
  float4 _259;
  float _261;
  float _273;
  float4 _355;
  float _357;
  float _369;
  int _433;
  float _441;
  bool _472;
  float _497;
  float4 _502;
  float _511;
  float _526;
  float _528;
  float _530;
  float _562;
  float4 _567;
  float _576;
  float _591;
  float _593;
  float _595;
  float _625;
  float4 _630;
  float _639;
  float _654;
  float _656;
  float _658;
  uint _692;
  uint _696;
  uint4 _698;
  float4 _701;
  float _708;
  float _712;
  float _716;
  float _718;
  float _719;
  float _720;
  float _721;
  float _726;
  float _730;
  float _732;
  float _734;
  float _738;
  float _740;
  float _741;
  float _742;
  float _743;
  float _745;
  float _748;
  float _749;
  float _750;
  float _751;
  float _757;
  float _763;
  float _768;
  float _770;
  float _785;
  float _790;
  float _791;
  float _792;
  float4 _799;
  float _801;
  float _805;
  float _838;
  float _840;
  float _842;
  float _852;
  float _857;
  float _861;
  float _865;
  float _867;
  float _868;
  float _872;
  float _874;
  float _876;
  float _880;
  float4 _893;
  float4 _907;
  uint _920;
  uint _928;
  uint4 _930;
  float4 _933;
  float _940;
  float _944;
  float _948;
  float _950;
  float _951;
  float _952;
  float _953;
  float _958;
  float _962;
  float _964;
  float _966;
  float _970;
  float _972;
  float _973;
  float _974;
  float _975;
  float _977;
  float _980;
  float _981;
  float _982;
  float _983;
  float _989;
  float _995;
  float _1000;
  float _1002;
  float _1012;
  float _1017;
  float _1031;
  float _1040;
  int _1043;
  int _1051;
  float _1054;
  float _1057;
  float _1059;
  float _1065;
  float _1071;
  float _1072;
  float _1073;
  float _1074;
  float _1077;
  float _1079;
  float _1081;
  float _1082;
  float _1084;
  float _1086;
  float _1088;
  float _1099;
  float _1167;
  float _1169;
  float _1171;
  float _1177;
  float _1178;
  float _1179;
  float _1180;
  float _1183;
  float _1185;
  float _1187;
  float _1188;
  float _1190;
  float _1192;
  float _1194;
  float _1248;
  float _1254;
  float4 _1267;
  float4 _1279;
  float _1283;
  float _1290;
  float _1298;
  float _1300;
  float _1302;
  float _1324;
  float _1326;
  float _1328;
  float _1331;
  float _1333;
  float _1334;
  float _1370;
  float _1372;
  float4 _1382;
  float _1386;
  float _1393;
  float _1396;
  float _1400;
  float _1404;
  float _1408;
  float _1413;
  float _1415;
  float _1440;
  float4 _1449;
  int _1455;
  int _1463;
  float4 _1471;
  float _1479;
  float _1481;
  float _1484;
  float _1486;
  float _1492;
  float _1499;
  float _1522;
  float _1549;
  float4 _1558;
  int _1564;
  int _1572;
  float _1575;
  float _1579;
  float _1583;
  float _1587;
  float _1596;
  float _1620;
  float _1623;
  uint _1642;
  bool _1660;
  float _1666;
  float _1685;
  float _1701;
  float _1717;
  float _1718;
  float _1722;
  float _1725;
  float _1728;
  float _1735;
  float _1742;
  float _1749;
  float _1750;
  float _1751;
  float _1752;
  float _1753;
  float _1754;
  float _1755;
  float _1771;
  float _1787;
  float _1803;
  float _1804;
  float _1805;
  float _1806;
  float _1807;
  float _1824;
  float _1825;
  float _1826;
  float _1827;
  float _1830;
  float _1833;
  float _1837;
  float _1841;
  float _1845;
  float _1865;
  float _1877;
  float _1889;
  float _1901;
  float _1908;
  float _1915;
  float _1922;
  float _1928;
  float _1929;
  float _1931;
  float _1933;
  float _1935;
  float _1940;
  float _1961;
  float _1963;
  float _1966;
  float _1969;
  float _1972;
  float _1978;
  float _2018;
  float _2020;
  float _2026;
  float _2068;
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_29 < (uint)170000), _29, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._dropItemBlurIntensity);
  _40 = WaveReadLaneFirst(_materialIndex);
  _48 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_40 < (uint)170000), _40, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._itemRatio);
  _49 = (_48 >= 0.01f);
  _53 = (abs(_temperatureWarning) >= 0.01f);
  _56 = WaveReadLaneFirst(_materialIndex);
  _64 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_56 < (uint)170000), _56, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._isBloodEffect);
  if (!(_49 || _53)) {
    if (true) discard;
  }
  _71 = _screenSizeAndInvSize.x / _screenSizeAndInvSize.y;
  _73 = (TEXCOORD.x * 2.0f) + -1.0f;
  _74 = TEXCOORD.y * 2.0f;
  _75 = 1.0f - _74;
  _78 = WaveReadLaneFirst(_materialIndex);
  _86 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_78 < (uint)170000), _78, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._fishEyeMaxPower);
  if (_86 > 0.001f) {
    if (!_49) {
      _93 = 0.5f / _71;
      _101 = (((_destTargetSizAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x) * 4.0f) + -0.5f;
      _106 = (((_destTargetSizAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x) * 4.0f) - _93;
      _107 = dot(float2(_101, _106), float2(_101, _106));
      _108 = sqrt(_107);
      if (_86 > 0.0f) {
        _112 = sqrt(dot(float2(0.5f, _93), float2(0.5f, _93)));
        _117 = (tan(_108 * _86) * _112) * rsqrt(_107);
        _119 = tan(_112 * _86);
        _146 = (((_117 * _106) / _119) + _93);
        _147 = (((_117 * _101) / _119) + 0.5f);
      } else {
        if (_86 < 0.0f) {
          _130 = select((_71 < 1.0f), 0.5f, _93);
          _131 = _86 * -10.0f;
          _136 = (atan(_108 * _131) * _130) * rsqrt(_107);
          _138 = atan(_130 * _131);
          _146 = (((_136 * _106) / _138) + _93);
          _147 = (((_136 * _101) / _138) + 0.5f);
        } else {
          _146 = 0.0f;
          _147 = 0.0f;
        }
      }
      _150 = (_146 * _71);
      _151 = _147;
    } else {
      _150 = TEXCOORD.y;
      _151 = TEXCOORD.x;
    }
  } else {
    if (!(_49 || (!(_86 < -0.001f)))) {
      _93 = 0.5f / _71;
      _101 = (((_destTargetSizAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x) * 4.0f) + -0.5f;
      _106 = (((_destTargetSizAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x) * 4.0f) - _93;
      _107 = dot(float2(_101, _106), float2(_101, _106));
      _108 = sqrt(_107);
      if (_86 > 0.0f) {
        _112 = sqrt(dot(float2(0.5f, _93), float2(0.5f, _93)));
        _117 = (tan(_108 * _86) * _112) * rsqrt(_107);
        _119 = tan(_112 * _86);
        _146 = (((_117 * _106) / _119) + _93);
        _147 = (((_117 * _101) / _119) + 0.5f);
      } else {
        if (_86 < 0.0f) {
          _130 = select((_71 < 1.0f), 0.5f, _93);
          _131 = _86 * -10.0f;
          _136 = (atan(_108 * _131) * _130) * rsqrt(_107);
          _138 = atan(_130 * _131);
          _146 = (((_136 * _106) / _138) + _93);
          _147 = (((_136 * _101) / _138) + 0.5f);
        } else {
          _146 = 0.0f;
          _147 = 0.0f;
        }
      }
      _150 = (_146 * _71);
      _151 = _147;
    } else {
      _150 = TEXCOORD.y;
      _151 = TEXCOORD.x;
    }
  }
  _164 = (((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _151) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _150) + -0.5f))), 0)))).x) & 127;
  _167 = WaveReadLaneFirst(_materialIndex);
  _175 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_167 < (uint)170000), _167, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._noiseTex);
  if (((_highLightForVisionRemoteCatch > 0.0f) || (_highLightForVision > 0.0f)) || (_characterHighlight > 0.0f)) {
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_187.x, _187.y);
    // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
    _202 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_187.x))))))) + 0.5f) * _151)), ((int)((((float)((int)((int)((float)((int)((int)(_187.y))))))) + 0.5f) * _150)), 0));
    _204 = _202.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _208 = (((float)((uint)((uint)((uint)((uint)(_202.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _213 = (((float)((uint)((uint)(((uint)((uint)(_202.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _215 = 1.0f - abs(_208);
    _216 = abs(_213);
    _217 = _215 - _216;
    if (!(_217 >= 0.0f)) {
      _228 = (select((_213 >= 0.0f), 1.0f, -1.0f) * _215);
      _229 = (select((_208 >= 0.0f), 1.0f, -1.0f) * (1.0f - _216));
    } else {
      _228 = _213;
      _229 = _208;
    }
    _231 = rsqrt(dot(float3(_229, _228, _217), float3(_229, _228, _217)));  // [sem: invLength]
    _232 = _231 * _229;
    _233 = _231 * _228;
    _234 = _231 * _217;
    _236 = rsqrt(dot(float3(_232, _233, _234), float3(_232, _233, _234)));  // [sem: invLength]
    _237 = _236 * _232;
    _238 = _236 * _233;
    _239 = _236 * _234;
    _242 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_151, _150));  // [sem: _3__36__0__0__g_sceneColor_sample]
    if (_204 == _renderPassDetectObjective) {
      // [sem: _3__36__0__0__g_CustomRenderPassDepth_load]
      _259 = __3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _151)), ((int)(_customRenderPassSizeInvSize.y * _150)), 0));
      _261 = max(1e-07f, _259.x);  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
      _273 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _261, mad((_invViewProj[3].y), _75, ((_invViewProj[3].x) * _73)));
      _423 = (1.0f - saturate(dot(float3(_237, _238, _239), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)))));
      _424 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _151) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _150) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f);
      _425 = _259.x;
      _426 = ((mad((_invViewProj[2].z), _261, mad((_invViewProj[2].y), _75, ((_invViewProj[2].x) * _73))) + (_invViewProj[2].w)) / _273);
      _427 = ((mad((_invViewProj[1].z), _261, mad((_invViewProj[1].y), _75, ((_invViewProj[1].x) * _73))) + (_invViewProj[1].w)) / _273);
      _428 = ((mad((_invViewProj[0].z), _261, mad((_invViewProj[0].y), _75, ((_invViewProj[0].x) * _73))) + (_invViewProj[0].w)) / _273);
    } else {
      if ((_204 == _renderPassDetectRemoteCatch) || ((_204 == _renderPassDetectPickedRemoteCatch) || (_204 == _renderPassKnowledgeNPC)) || ((_204 == _renderPassEnemy) || (_204 == _renderPassSelfPlayer)) || (_204 == _renderPassTest)) {
        // [sem: _3__36__0__0__g_CustomRenderPassDepth_load]
        _355 = __3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _151)), ((int)(_customRenderPassSizeInvSize.y * _150)), 0));
        _357 = max(1e-07f, _355.x);  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
        _369 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _357, mad((_invViewProj[3].y), _75, ((_invViewProj[3].x) * _73)));
        _423 = (1.0f - saturate(dot(float3(_237, _238, _239), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)))));
        _424 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _151) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _150) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f);
        _425 = _355.x;
        _426 = ((mad((_invViewProj[2].z), _357, mad((_invViewProj[2].y), _75, ((_invViewProj[2].x) * _73))) + (_invViewProj[2].w)) / _369);
        _427 = ((mad((_invViewProj[1].z), _357, mad((_invViewProj[1].y), _75, ((_invViewProj[1].x) * _73))) + (_invViewProj[1].w)) / _369);
        _428 = ((mad((_invViewProj[0].z), _357, mad((_invViewProj[0].y), _75, ((_invViewProj[0].x) * _73))) + (_invViewProj[0].w)) / _369);
      } else {
        _423 = 0.0f;
        _424 = 0.0f;
        _425 = 0.0f;
        _426 = 0.0f;
        _427 = 0.0f;
        _428 = 0.0f;
      }
    }
    bool __branch_chain_422;
    if (!(_204 == _renderPassDetectRemoteCatch)) {
      __branch_chain_422 = true;
    } else {
      _433 = WaveReadLaneFirst(_materialIndex);
      _441 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_433 < (uint)170000), _433, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._itemRatio);
      if (!(_441 > 0.001f)) {
        __branch_chain_422 = true;
      } else {
        if ((!(_highLightForVision >= 0.001f)) && (!(_highLightForVisionRemoteCatch >= 0.001f))) {
          __branch_chain_422 = true;
        } else {
          __branch_chain_422 = false;
        }
      }
    }
    if (__branch_chain_422) {
      if (!(_204 == _renderPassDetectObjective) || ((_204 == _renderPassDetectObjective) && ((!(_highLightForVision >= 0.001f)) && (!(_highLightForVisionRemoteCatch >= 0.001f))))) {
        if (!(_204 == _renderPassKnowledgeNPC) || ((_204 == _renderPassKnowledgeNPC) && (!(_highLightForVision >= 0.001f)))) {
          _472 = (_204 == _renderPassSelfPlayer);
          if ((_472) || (((_204 == _renderPassTest) || (_204 == _renderPassEnemy)) || (_204 == _renderPassDetectPickedRemoteCatch))) {
            if ((_characterHighlight > 0.001f) || (_highLightForVisionRemoteCatch > 0.001f)) {
              if ((uint)_164 > (uint)10) {
                if ((uint)_164 < (uint)20) {
                  if (_164 == 11) {
                    _497 = _423 * 0.025f;
                    // [sem: _3__36__0__0__g_sceneColor_sample]
                    _502 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_497 + _151), (_497 + _150)));
                    if (!_472) {
                      if (!(_204 == _renderPassTest)) {
                        _511 = _502.y * 0.6f;  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                        if (_204 == _renderPassEnemy) {
                          _519 = 1.0f;
                          _520 = 10.0f;
                          _521 = (_502.z * 0.6f);
                          _522 = _511;
                          _523 = _502.x;
                        } else {
                          _519 = 30.0f;
                          _520 = 50.0f;
                          _521 = _502.z;
                          _522 = _511;
                          _523 = (_502.x * 0.5f);
                        }
                      } else {
                        _519 = 1.0f;
                        _520 = 10.0f;
                        _521 = _502.z;
                        _522 = _502.y;
                        _523 = _502.x;
                      }
                    } else {
                      _519 = 1.0f;
                      _520 = 10.0f;
                      _521 = _502.z;
                      _522 = _502.y;
                      _523 = _502.x;
                    }
                    _526 = _428 - _mainPosition.x;
                    _528 = _427 - _mainPosition.y;
                    _530 = _426 - _mainPosition.z;
                    _1241 = (_521 * 1.5f);
                    _1242 = (_522 * 1.5f);
                    _1243 = (_523 * 1.5f);
                    _1244 = (((1.0f - saturate(ceil(((_nearFarProj.x / max(1e-07f, _424)) + 0.5f) - (_nearFarProj.x / max(1e-07f, _425))))) * (1.0f - saturate((sqrt(((_528 * _528) + (_526 * _526)) + (_530 * _530)) - _519) / _520))) * max(_highLightForVisionRemoteCatch, _characterHighlight));
                  } else {
                    _1241 = _242.z;
                    _1242 = _242.y;
                    _1243 = _242.x;
                    _1244 = 0.0f;
                  }
                } else {
                  if (!(_164 == 107)) {
                    _562 = _423 * 0.025f;
                    // [sem: _3__36__0__0__g_sceneColor_sample]
                    _567 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_562 + _151), (_562 + _150)));
                    if (!_472) {
                      if (!(_204 == _renderPassTest)) {
                        _576 = _567.y * 0.6f;  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                        if (_204 == _renderPassEnemy) {
                          _584 = 1.0f;
                          _585 = 10.0f;
                          _586 = (_567.z * 0.6f);
                          _587 = _576;
                          _588 = _567.x;
                        } else {
                          _584 = 30.0f;
                          _585 = 50.0f;
                          _586 = _567.z;
                          _587 = _576;
                          _588 = (_567.x * 0.5f);
                        }
                      } else {
                        _584 = 1.0f;
                        _585 = 10.0f;
                        _586 = _567.z;
                        _587 = _567.y;
                        _588 = _567.x;
                      }
                    } else {
                      _584 = 1.0f;
                      _585 = 10.0f;
                      _586 = _567.z;
                      _587 = _567.y;
                      _588 = _567.x;
                    }
                    _591 = _428 - _mainPosition.x;
                    _593 = _427 - _mainPosition.y;
                    _595 = _426 - _mainPosition.z;
                    _1241 = (_586 * 1.5f);
                    _1242 = (_587 * 1.5f);
                    _1243 = (_588 * 1.5f);
                    _1244 = (((1.0f - saturate(ceil(((_nearFarProj.x / max(1e-07f, _424)) + 0.5f) - (_nearFarProj.x / max(1e-07f, _425))))) * (1.0f - saturate((sqrt(((_593 * _593) + (_591 * _591)) + (_595 * _595)) - _584) / _585))) * max(_highLightForVisionRemoteCatch, _characterHighlight));
                  } else {
                    _1241 = _242.z;
                    _1242 = _242.y;
                    _1243 = _242.x;
                    _1244 = 0.0f;
                  }
                }
              } else {
                _625 = _423 * 0.025f;
                // [sem: _3__36__0__0__g_sceneColor_sample]
                _630 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_625 + _151), (_625 + _150)));
                if (!_472) {
                  if (!(_204 == _renderPassTest)) {
                    _639 = _630.y * 0.6f;  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                    if (_204 == _renderPassEnemy) {
                      _647 = 1.0f;
                      _648 = 10.0f;
                      _649 = (_630.z * 0.6f);
                      _650 = _639;
                      _651 = _630.x;
                    } else {
                      _647 = 30.0f;
                      _648 = 50.0f;
                      _649 = _630.z;
                      _650 = _639;
                      _651 = (_630.x * 0.5f);
                    }
                  } else {
                    _647 = 1.0f;
                    _648 = 10.0f;
                    _649 = _630.z;
                    _650 = _630.y;
                    _651 = _630.x;
                  }
                } else {
                  _647 = 1.0f;
                  _648 = 10.0f;
                  _649 = _630.z;
                  _650 = _630.y;
                  _651 = _630.x;
                }
                _654 = _428 - _mainPosition.x;
                _656 = _427 - _mainPosition.y;
                _658 = _426 - _mainPosition.z;
                _1241 = (_649 * 1.5f);
                _1242 = (_650 * 1.5f);
                _1243 = (_651 * 1.5f);
                _1244 = (((1.0f - saturate(ceil(((_nearFarProj.x / max(1e-07f, _424)) + 0.5f) - (_nearFarProj.x / max(1e-07f, _425))))) * (1.0f - saturate((sqrt(((_656 * _656) + (_654 * _654)) + (_658 * _658)) - _647) / _648))) * max(_highLightForVisionRemoteCatch, _characterHighlight));
              }
            } else {
              _1241 = _242.z;
              _1242 = _242.y;
              _1243 = _242.x;
              _1244 = 0.0f;
            }
          } else {
            _1241 = _242.z;
            _1242 = _242.y;
            _1243 = _242.x;
            _1244 = 0.0f;
          }
        } else {
          _692 = (uint)((_bufferSizeAndInvSize.x * _151) + -0.5f);
          _696 = (uint)((_bufferSizeAndInvSize.y * _150) + -0.5f);
          _698 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_692, _696, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
          _701 = __3__36__0__0__g_gbufferNormal.Load(int3(_692, _696, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
          _708 = (saturate(_701.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _712 = (saturate(_701.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _716 = (saturate(_701.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _718 = rsqrt(dot(float3(_708, _712, _716), float3(_708, _712, _716)));  // [sem: invLength]
          _719 = _718 * _708;
          _720 = _718 * _712;
          _721 = _716 * _718;
          _726 = (((float)((uint)((uint)(((uint)((uint)(_698.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _730 = (((float)((uint)((uint)(_698.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _732 = (_726 + _730) * 0.5f;
          _734 = (_726 - _730) * 0.5f;
          _738 = (1.0f - abs(_732)) - abs(_734);
          _740 = rsqrt(dot(float3(_732, _734, _738), float3(_732, _734, _738)));  // [sem: invLength]
          _741 = _740 * _732;
          _742 = _740 * _734;
          _743 = _740 * _738;
          _745 = select((_721 >= 0.0f), 1.0f, -1.0f);
          _748 = -0.0f - (1.0f / (_745 + _721));
          _749 = _720 * _748;
          _750 = _749 * _719;
          _751 = _745 * _719;
          _757 = mad(_743, _719, mad(_742, _750, ((((_751 * _719) * _748) + 1.0f) * _741)));
          _763 = mad(_743, _720, mad(_742, ((_749 * _720) + _745), ((_741 * _745) * _750)));
          _768 = mad(_743, _721, mad(_742, (-0.0f - _720), (-0.0f - (_751 * _741))));
          _770 = rsqrt(dot(float3(_757, _763, _768), float3(_757, _763, _768)));  // [sem: invLength]
          _785 = 1.0f - dot(float3(((_770 * _757) + -0.1f), ((_770 * _763) + -0.1f), ((_770 * _768) + -0.1f)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)));
          _790 = frac((_time.x * 2.0f) + _785);
          _791 = _790 * _790;
          _792 = _785 * 10.0f;
          _799 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_175 < (uint)65000), _175, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_792, _792));
          _801 = _799.x * _799.x;
          _805 = 6.0f / max(0.001f, _exposure0.x);
          _1241 = (_242.z - (_highLightForVision * _242.z));
          _1242 = ((_highLightForVision * ((_805 * 0.6444798f) - _242.y)) + _242.y);
          _1243 = ((_highLightForVision * (_805 - _242.x)) + _242.x);
          _1244 = ((saturate((_791 * _791) * 5.0f) * saturate((_801 * _801) * 4.0f)) * saturate(ceil(((_nearFarProj.x / max(1e-07f, _424)) + 0.05f) - (_nearFarProj.x / max(1e-07f, _425)))));
        }
      } else {
        _838 = _428 - _mainPosition.x;
        _840 = _427 - _mainPosition.y;
        _842 = _426 - _mainPosition.z;
        _852 = (1.0f - saturate(sqrt(((_840 * _840) + (_838 * _838)) + (_842 * _842)) * 0.125f)) * 0.2f;
        _857 = _838 - ((_viewPos.x - _mainPosition.x) * _852);
        _861 = _840 - ((_viewPos.y - _mainPosition.y) * _852);
        _865 = _842 - ((_viewPos.z - _mainPosition.z) * _852);
        _867 = rsqrt(dot(float3(_857, _861, _865), float3(_857, _861, _865)));  // [sem: invLength]
        _868 = _865 * _867;
        _872 = select((_868 < 0.0f), (-0.0f - _868), _868) + 1.0f;
        _874 = (_861 * _867) / _872;
        _876 = (_857 * _867) / _872;
        _880 = sin(_time.x) + _time.x;
        _893 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_175 < (uint)65000), _175, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.1f) + (_876 * 2.0f)), ((_880 * 0.1f) + (_874 * 2.0f))));
        _907 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_175 < (uint)65000), _175, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_876 - (_893.x * 0.05f)) - (_time.x * 0.060000002f)), ((_874 - (_880 * 0.060000002f)) - (_893.w * 0.05f))));
        _920 = (uint)((((((_893.w + -1.0f) + _907.y) * 0.02f) + _151) * _bufferSizeAndInvSize.x) + -0.5f);
        _928 = (uint)((((((_893.y + -1.0f) + _907.w) * 0.02f) + _150) * _bufferSizeAndInvSize.y) + -0.5f);
        _930 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_920, _928, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
        _933 = __3__36__0__0__g_gbufferNormal.Load(int3(_920, _928, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
        _940 = (saturate(_933.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _944 = (saturate(_933.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _948 = (saturate(_933.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _950 = rsqrt(dot(float3(_940, _944, _948), float3(_940, _944, _948)));  // [sem: invLength]
        _951 = _950 * _940;
        _952 = _950 * _944;
        _953 = _948 * _950;
        _958 = (((float)((uint)((uint)(((uint)((uint)(_930.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _962 = (((float)((uint)((uint)(_930.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _964 = (_958 + _962) * 0.5f;
        _966 = (_958 - _962) * 0.5f;
        _970 = (1.0f - abs(_964)) - abs(_966);
        _972 = rsqrt(dot(float3(_964, _966, _970), float3(_964, _966, _970)));  // [sem: invLength]
        _973 = _972 * _964;
        _974 = _972 * _966;
        _975 = _972 * _970;
        _977 = select((_953 >= 0.0f), 1.0f, -1.0f);
        _980 = -0.0f - (1.0f / (_977 + _953));
        _981 = _952 * _980;
        _982 = _981 * _951;
        _983 = _977 * _951;
        _989 = mad(_975, _951, mad(_974, _982, ((((_983 * _951) * _980) + 1.0f) * _973)));
        _995 = mad(_975, _952, mad(_974, ((_981 * _952) + _977), ((_973 * _977) * _982)));
        _1000 = mad(_975, _953, mad(_974, (-0.0f - _952), (-0.0f - (_983 * _973))));
        _1002 = rsqrt(dot(float3(_989, _995, _1000), float3(_989, _995, _1000)));  // [sem: invLength]
        _1012 = 1.0f - abs(dot(float3((_1002 * _989), (_1002 * _995), (_1002 * _1000)), float3(_viewDir.x, _viewDir.y, _viewDir.z)));
        _1017 = saturate((_1012 * _1012) + ((_907.y * _893.y) * _907.z));  // [sem: expr_sat]
        _1031 = 1.0f - dot(float3((((_907.x + -0.5f) * _907.w) + _237), (((_907.y + -0.5f) * _907.w) + _238), (((_907.z + -0.5f) * _907.w) + _239)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)));
        _1040 = (saturate((_1031 * _1031) * 3.0f) * saturate(_1017 * 10.0f)) + ((_907.x * _907.z) * _907.w);
        _1043 = WaveReadLaneFirst(_materialIndex);
        _1051 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1043 < (uint)170000), _1043, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._objectiveMaskColor);
        _1054 = (float)((uint)((uint)(((uint)((uint)(_1051)) >> 16) & 255)));
        _1057 = (float)((uint)((uint)(((uint)((uint)(_1051)) >> 8) & 255)));
        _1059 = (float)((uint)((uint)(_1051 & 255)));
        _1065 = (_907.y * _907.w) * (1.0f / max(0.001f, _exposure0.x));
        // [sem: invLength]
        _1071 = rsqrt(dot(float3(_detectModeLook.x, _detectModeLook.y, _detectModeLook.z), float3(_detectModeLook.x, _detectModeLook.y, _detectModeLook.z)));
        _1072 = _1071 * _detectModeLook.x;
        _1073 = _1071 * _detectModeLook.y;
        _1074 = _1071 * _detectModeLook.z;
        _1077 = _428 - _detectModePosition.x;
        _1079 = _427 - _detectModePosition.y;
        _1081 = _426 - _detectModePosition.z;
        _1082 = dot(float3(_1072, _1073, _1074), float3(_1077, _1079, _1081));
        _1084 = _1077 - (_1082 * _1072);
        _1086 = _1079 - (_1082 * _1073);
        _1088 = _1081 - (_1082 * _1074);
        _1099 = 1.0f - saturate(sqrt(((_1079 * _1079) + (_1077 * _1077)) + (_1081 * _1081)) / _detectModeRadius);
        _1241 = (select(((_1059 * 0.011764707f) < 0.04045f), (_1059 * 0.00091058103f), exp2(log2((_1059 * 0.011151382f) + 0.052132703f) * 2.4f)) * _1065);
        _1242 = (select(((_1057 * 0.011764707f) < 0.04045f), (_1057 * 0.00091058103f), exp2(log2((_1057 * 0.011151382f) + 0.052132703f) * 2.4f)) * _1065);
        _1243 = (select(((_1054 * 0.011764707f) < 0.04045f), (_1054 * 0.00091058103f), exp2(log2((_1054 * 0.011151382f) + 0.052132703f) * 2.4f)) * _1065);
        _1244 = ((((_1099 * _1099) * (1.0f - saturate(sqrt(((_1084 * _1084) + (_1086 * _1086)) + (_1088 * _1088)) / max(0.001f, (tan(_detectModeAngle * 0.017453292f) * _1082))))) * ((saturate(ceil(((_nearFarProj.x / max(1e-07f, _424)) + 0.05f) - (_nearFarProj.x / max(1e-07f, _425)))) * (_1017 - _1040)) + _1040)) * _highLightForVision);
      }
    } else {
      _1167 = _428 - _mainPosition.x;
      _1169 = _427 - _mainPosition.y;
      _1171 = _426 - _mainPosition.z;
      // [sem: invLength]
      _1177 = rsqrt(dot(float3(_detectModeLook.x, _detectModeLook.y, _detectModeLook.z), float3(_detectModeLook.x, _detectModeLook.y, _detectModeLook.z)));
      _1178 = _1177 * _detectModeLook.x;
      _1179 = _1177 * _detectModeLook.y;
      _1180 = _1177 * _detectModeLook.z;
      _1183 = _428 - _detectModePosition.x;
      _1185 = _427 - _detectModePosition.y;
      _1187 = _426 - _detectModePosition.z;
      _1188 = dot(float3(_1178, _1179, _1180), float3(_1183, _1185, _1187));
      _1190 = _1183 - (_1188 * _1178);
      _1192 = _1185 - (_1188 * _1179);
      _1194 = _1187 - (_1188 * _1180);
      _1241 = _242.z;
      _1242 = _242.y;
      _1243 = _242.x;
      _1244 = ((((1.0f - saturate((sqrt(((_1169 * _1169) + (_1167 * _1167)) + (_1171 * _1171)) + -30.0f) * 0.05f)) * saturate((_423 * _423) * 4.0f)) * (1.0f - saturate(sqrt(((_1190 * _1190) + (_1192 * _1192)) + (_1194 * _1194)) / max(0.001f, (tan(_detectModeAngle * 0.017453292f) * _1188))))) * exp2(log2(1.0f - saturate(sqrt(((_1185 * _1185) + (_1183 * _1183)) + (_1187 * _1187)) / _detectModeRadius)) * 10.0f));
    }
  } else {
    _1241 = 0.0f;
    _1242 = 0.0f;
    _1243 = 0.0f;
    _1244 = 0.0f;
  }
  _1248 = abs(_temperatureWarning * 0.01f);
  if (_53) {
    if (_temperatureWarning > 0.0f) {
      _1254 = _71 * TEXCOORD.x;
      _1267 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_175 < (uint)65000), _175, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1254 * 4.25f), ((TEXCOORD.y * 3.0f) - (_time.x * 0.15f))));
      _1279 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_175 < (uint)65000), _175, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1254 * 2.3f), (((TEXCOORD.y * 2.1f) - (_1267.x * 0.1f)) + (_time.x * 0.2f))));
      _1283 = TEXCOORD.x + -0.5f;
      _1290 = abs((((_1267.y + -0.5f) * 0.01f) + _1283) + ((_1279.z + -0.5f) * 0.03f));
      _1298 = abs(((TEXCOORD.y + -0.5f) + ((_1267.x + -0.5f) * 0.02f)) + ((_1279.y + -0.5f) * 0.03f));
      _1300 = max((_1290 + -0.5f), 0.0f);
      _1302 = max((_1298 + -0.5f), 0.0f);
      _1324 = 0.5f - min(max((((((((_1267.z * 0.3f) + -0.5f) + (_1279.x * 0.7f)) * 1.1f) + 1.0f) * ((_1248 * 0.050000004f) + 0.1f)) * (1.0f - (saturate(abs(_1283) * 2.0f) * 0.39999998f))), ((_1248 * 0.017500002f) + 0.035f)), ((_1248 * 0.110000014f) + 0.22000001f));
      _1326 = max((_1290 - _1324), 0.0f);
      _1328 = max((_1298 - _1324), 0.0f);
      _1331 = saturate((TEXCOORD.y + -0.15f) * 1.2500001f);  // [sem: expr_sat]
      _1333 = saturate(_1279.x * _1267.x);  // [sem: expr_sat]
      _1334 = _1248 * 0.2f;
      _1370 = ((((_1333 * (1.0f - _1334)) + _1334) * saturate(_1248 * 2.0f)) * saturate(saturate(sqrt((_1328 * _1328) + (_1326 * _1326)) * 10.0f) - saturate(sqrt((_1302 * _1302) + (_1300 * _1300)) * 10.0f))) * ((((_1331 * _1331) * (3.0f - (_1331 * 2.0f))) * ((saturate((((_1267.x * 0.25f) + -0.35f) + (_1279.y * 0.75f)) * 1.6f) * 0.5f) + -0.35000002f)) + 1.0f);
      _1372 = (_1248 * 0.1f) * _1370;
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _1382 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1279.x * (0.5f - TEXCOORD.x)) * _1372) + TEXCOORD.x), (((_1279.y * (0.5f - TEXCOORD.y)) * _1372) + TEXCOORD.y)));
      _1386 = 1.0f - _1370;
      _1393 = ((_1386 * _1386) * saturate(((_1333 * _1333) * 2.0f) * _1333)) * _1386;
      _1396 = max(0.001f, _exposure0.x);
      _1400 = (_1393 * ((1.0f / _1396) - _1382.x)) + _1382.x;
      _1404 = (((0.6f / _1396) - _1382.y) * _1393) + _1382.y;
      _1408 = (((0.3f / _1396) - _1382.z) * _1393) + _1382.z;
      _1413 = ((_1248 * _1248) * _1248) * saturate(_1248 + -0.5f);
      _1415 = saturate(_1370 * 2.0f);  // [sem: expr_sat]
      _1541 = ((((_1408 - _1241) - (_1408 * _1413)) * _1415) + _1241);
      _1542 = ((((_1404 - _1242) + ((((_1370 * 0.25f) / _1396) - _1404) * _1413)) * _1415) + _1242);
      _1543 = ((((_1400 - _1243) + (((_1370 / _1396) - _1400) * _1413)) * _1415) + _1243);
      _1544 = (_1415 + _1244);
    } else {
      if (_temperatureWarning < 0.0f) {
        _1440 = _71 * TEXCOORD.x;
        _1449 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_175 < (uint)65000), _175, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1440 * 1.5f), (TEXCOORD.y * 1.5f)));
        _1455 = WaveReadLaneFirst(_materialIndex);
        _1463 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1455 < (uint)170000), _1455, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._temperatureWarningTex);
        _1471 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1463 < (uint)65000), _1463, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1440 * 2.0f), _74));
        _1479 = (select(((TEXCOORD.y / (1.0f - TEXCOORD.x)) < 1.0f), (1.0f - _1471.y), _1471.y) + -0.5f) * 0.3f;
        _1481 = (_1449.x + -0.4f) * 0.2f;
        _1484 = max(0.001f, _exposure0.x);
        _1486 = 0.5f - (_1248 * 0.25f);
        _1492 = max((abs(((TEXCOORD.x + -0.5f) + _1481) + _1479) - _1486), 0.0f);
        _1499 = max((abs(((_1479 + _1481) + -0.475f) + (TEXCOORD.y * 0.9f)) - _1486), 0.0f);
        _1522 = (_1248 * (1.0f - TEXCOORD.y)) * saturate((((_1471.y * 4.0f) * saturate(1.0f - ((1.0f - saturate(sqrt((_1499 * _1499) + (_1492 * _1492)) * 6.6666665f)) * 2.0f))) * saturate((_1471.y * _1471.y) * 2.0f)) * saturate(_1449.z * _1449.w));
        _1541 = ((((2.0f / _1484) - _1241) * _1522) + _1241);
        _1542 = ((((((_1449.w * 1.3989123f) + 0.6010877f) / _1484) - _1242) * _1522) + _1242);
        _1543 = ((((((_1449.w * 1.8809775f) + 0.11902248f) / _1484) - _1243) * _1522) + _1243);
        _1544 = (_1522 + _1244);
      } else {
        _1541 = _1241;
        _1542 = _1242;
        _1543 = _1243;
        _1544 = _1244;
      }
    }
  } else {
    _1541 = _1241;
    _1542 = _1242;
    _1543 = _1243;
    _1544 = _1244;
  }
  if (!(_electrocutionWarning == 0.0f)) {
    _1549 = _71 * TEXCOORD.x;
    _1558 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_175 < (uint)65000), _175, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1549 * 1.5f), (TEXCOORD.y * 1.5f)));
    _1564 = WaveReadLaneFirst(_materialIndex);
    _1572 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1564 < (uint)170000), _1564, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._electrocutionTex);
    _1575 = max(0.001f, _exposure0.x);
    _1579 = 0.5f - (_electrocutionWarning * 0.07f);
    _1583 = max((abs(TEXCOORD.x + -0.5f) - _1579), 0.0f);
    _1587 = max((abs(TEXCOORD.y + -0.5f) - _1579), 0.0f);
    _1596 = 1.0f - abs((frac((_time.x * 2.0f) + _1558.y) * 2.0f) + -1.0f);
    _1620 = ((_1596 * _1596) * saturate(sqrt((_1587 * _1587) + (_1583 * _1583)) / _1558.z)) * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1572 < (uint)65000), _1572, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1558.x * 0.05f) + (_1549 * 2.0f)), (((_1558.y * 0.05f) + _74) + (_time.x * 0.1f)))))).x);
    _1623 = (pow(_1620, 1.6f));
    _1638 = ((((2000.0f / _1575) - _1541) * _1623) + _1541);
    _1639 = ((((660.0f / _1575) - _1542) * _1623) + _1542);
    _1640 = ((((340.0f / _1575) - _1543) * _1623) + _1543);
    _1641 = (_1620 + _1544);
  } else {
    _1638 = _1541;
    _1639 = _1542;
    _1640 = _1543;
    _1641 = _1544;
  }
  _1642 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    // [sem: _1641_sat]
    _1657 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1642, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1657 = saturate(_1641);  // [sem: _1641_sat]
  }
  _1660 = (_localToneMappingParams.w > 0.0f);
  if (_1660) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1640, _1639, _1638));
    _1908 = _rndx_tonemapped_color.x;
    _1915 = _rndx_tonemapped_color.y;
    _1922 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1928 = 1.0f - abs(_etcParams.w);
      _1929 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1931 = (_1928 * _1908) + _1929;
      _1933 = (_1928 * _1915) + _1929;
      _1935 = (_1928 * _1922) + _1929;
      if (_colorGradingParams.w > 0.0f) {
        _1940 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1957 = (((max(0.0f, (1.0f - _1935)) - _1935) * _1940) + _1935);
        _1958 = (((max(0.0f, (1.0f - _1933)) - _1933) * _1940) + _1933);
        _1959 = (((max(0.0f, (1.0f - _1931)) - _1931) * _1940) + _1931);
      } else {
        _1957 = _1935;
        _1958 = _1933;
        _1959 = _1931;
      }
      _1961 = _userImageAdjust.y + 1.0f;
      _1963 = _userImageAdjust.x + 0.5f;
      _1966 = ((_1959 + -0.5f) * _1961) + _1963;
      _1969 = ((_1958 + -0.5f) * _1961) + _1963;
      _1972 = ((_1957 + -0.5f) * _1961) + _1963;
      _1978 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _2013 = exp2(log2(saturate(mad(_colorBlind2.z, _1972, mad(_colorBlind2.y, _1969, (_colorBlind2.x * _1966))))) * _1978);
      _2014 = exp2(log2(saturate(mad(_colorBlind1.z, _1972, mad(_colorBlind1.y, _1969, (_colorBlind1.x * _1966))))) * _1978);
      _2015 = exp2(log2(saturate(mad(_colorBlind0.z, _1972, mad(_colorBlind0.y, _1969, (_colorBlind0.x * _1966))))) * _1978);
    } else {
      _2013 = _1922;
      _2014 = _1915;
      _2015 = _1908;
    }
  } else {
    _2013 = _1638;
    _2014 = _1639;
    _2015 = _1640;
  }
  if (_etcParams.y > 1.0f) {
    _2018 = abs(_73);
    _2020 = abs(_74 + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _2026 = saturate(1.0f - (dot(float2(_2018, _2020), float2(_2018, _2020)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _2031 = (_2026 * _2013);
    _2032 = (_2026 * _2014);
    _2033 = (_2026 * _2015);
  } else {
    _2031 = _2013;
    _2032 = _2014;
    _2033 = _2015;
  }
  if (_1660 && (_etcParams.z > 0.0f)) {
    _2063 = select((_2031 <= 0.0031308f), (_2031 * 12.92f), (((pow(_2031, 0.41666666f)) * 1.055f) + -0.055f));
    _2064 = select((_2032 <= 0.0031308f), (_2032 * 12.92f), (((pow(_2032, 0.41666666f)) * 1.055f) + -0.055f));
    _2065 = select((_2033 <= 0.0031308f), (_2033 * 12.92f), (((pow(_2033, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _2063 = _2031;
    _2064 = _2032;
    _2065 = _2033;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2068 = (float)((uint)((uint)(_1642)));
    if (!(_2068 < _viewDir.w)) {
      if (!(!(_2068 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _2079 = 0.0f;
        _2080 = 0.0f;
        _2081 = 0.0f;
      } else {
        _2079 = _2063;
        _2080 = _2064;
        _2081 = _2065;
      }
    } else {
      _2079 = 0.0f;
      _2080 = 0.0f;
      _2081 = 0.0f;
    }
  } else {
    _2079 = _2063;
    _2080 = _2064;
    _2081 = _2065;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_2081, _2080, _2079), _sunDirection.y, _moonDirection.y);
    _2081 = _rndx_final_color.x;
    _2080 = _rndx_final_color.y;
    _2079 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _2081;
  SV_Target.y = _2080;
  SV_Target.z = _2079;
  SV_Target.w = _1657;
  return SV_Target;
}
