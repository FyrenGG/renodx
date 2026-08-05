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
  float _459;
  float _460;
  float _461;
  float _462;
  float _463;
  float _464;
  float _591;
  float _592;
  float _593;
  float _594;
  float _595;
  float _692;
  float _693;
  float _694;
  float _695;
  float _696;
  float _791;
  float _792;
  float _793;
  float _794;
  float _795;
  float _1385;
  float _1386;
  float _1387;
  float _1388;
  float _1721;
  float _1722;
  float _1723;
  float _1724;
  float _1818;
  float _1819;
  float _1820;
  float _1821;
  float _1837;
  float _2042;
  float _2043;
  float _2044;
  float _2137;
  float _2138;
  float _2139;
  float _2193;
  float _2194;
  float _2195;
  float _2211;
  float _2212;
  float _2213;
  float _2243;
  float _2244;
  float _2245;
  float _2259;
  float _2260;
  float _2261;
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
  float _248;
  float _251;
  float _254;
  float _263;
  float _272;
  float _281;
  float4 _295;
  float _297;
  float _309;
  float4 _391;
  float _393;
  float _405;
  int _469;
  float _477;
  bool _508;
  float _533;
  float4 _538;
  float _544;
  float _547;
  float _550;
  float _558;
  float _566;
  float _574;
  float _575;
  float _576;
  float _577;
  float _583;
  float _598;
  float _600;
  float _602;
  float _634;
  float4 _639;
  float _645;
  float _648;
  float _651;
  float _659;
  float _667;
  float _675;
  float _676;
  float _677;
  float _678;
  float _684;
  float _699;
  float _701;
  float _703;
  float _733;
  float4 _738;
  float _744;
  float _747;
  float _750;
  float _758;
  float _766;
  float _774;
  float _775;
  float _776;
  float _777;
  float _783;
  float _798;
  float _800;
  float _802;
  uint _836;
  uint _840;
  uint4 _842;
  float4 _845;
  float _852;
  float _856;
  float _860;
  float _862;
  float _863;
  float _864;
  float _865;
  float _870;
  float _874;
  float _876;
  float _878;
  float _882;
  float _884;
  float _885;
  float _886;
  float _887;
  float _889;
  float _892;
  float _893;
  float _894;
  float _895;
  float _901;
  float _907;
  float _912;
  float _914;
  float _929;
  float _934;
  float _935;
  float _936;
  float4 _943;
  float _945;
  float _949;
  float _982;
  float _984;
  float _986;
  float _996;
  float _1001;
  float _1005;
  float _1009;
  float _1011;
  float _1012;
  float _1016;
  float _1018;
  float _1020;
  float _1024;
  float4 _1037;
  float4 _1051;
  uint _1064;
  uint _1072;
  uint4 _1074;
  float4 _1077;
  float _1084;
  float _1088;
  float _1092;
  float _1094;
  float _1095;
  float _1096;
  float _1097;
  float _1102;
  float _1106;
  float _1108;
  float _1110;
  float _1114;
  float _1116;
  float _1117;
  float _1118;
  float _1119;
  float _1121;
  float _1124;
  float _1125;
  float _1126;
  float _1127;
  float _1133;
  float _1139;
  float _1144;
  float _1146;
  float _1156;
  float _1161;
  float _1175;
  float _1184;
  int _1187;
  int _1195;
  float _1198;
  float _1201;
  float _1203;
  float _1209;
  float _1215;
  float _1216;
  float _1217;
  float _1218;
  float _1221;
  float _1223;
  float _1225;
  float _1226;
  float _1228;
  float _1230;
  float _1232;
  float _1243;
  float _1311;
  float _1313;
  float _1315;
  float _1321;
  float _1322;
  float _1323;
  float _1324;
  float _1327;
  float _1329;
  float _1331;
  float _1332;
  float _1334;
  float _1336;
  float _1338;
  float _1392;
  float _1398;
  float4 _1411;
  float4 _1423;
  float _1427;
  float _1434;
  float _1442;
  float _1444;
  float _1446;
  float _1468;
  float _1470;
  float _1472;
  float _1475;
  float _1477;
  float _1478;
  float _1514;
  float _1516;
  float4 _1526;
  float _1532;
  float _1535;
  float _1538;
  float _1547;
  float _1556;
  float _1565;
  float _1566;
  float _1573;
  float _1576;
  float _1580;
  float _1584;
  float _1588;
  float _1593;
  float _1595;
  float _1620;
  float4 _1629;
  int _1635;
  int _1643;
  float4 _1651;
  float _1659;
  float _1661;
  float _1664;
  float _1666;
  float _1672;
  float _1679;
  float _1702;
  float _1729;
  float4 _1738;
  int _1744;
  int _1752;
  float _1755;
  float _1759;
  float _1763;
  float _1767;
  float _1776;
  float _1800;
  float _1803;
  uint _1822;
  bool _1840;
  float _1846;
  float _1865;
  float _1881;
  float _1897;
  float _1898;
  float _1902;
  float _1905;
  float _1908;
  float _1915;
  float _1922;
  float _1929;
  float _1930;
  float _1931;
  float _1932;
  float _1933;
  float _1934;
  float _1935;
  float _1951;
  float _1967;
  float _1983;
  float _1984;
  float _1985;
  float _1986;
  float _1987;
  float _2004;
  float _2005;
  float _2006;
  float _2007;
  float _2010;
  float _2013;
  float _2017;
  float _2021;
  float _2025;
  float _2045;
  float _2057;
  float _2069;
  float _2081;
  float _2088;
  float _2095;
  float _2102;
  float _2108;
  float _2109;
  float _2111;
  float _2113;
  float _2115;
  float _2120;
  float _2141;
  float _2143;
  float _2146;
  float _2149;
  float _2152;
  float _2158;
  float _2198;
  float _2200;
  float _2206;
  float _2248;
  float _2265;
  float _2269;
  float _2273;
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
    _248 = (pow(_242.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _251 = (pow(_242.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _254 = (pow(_242.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _263 = exp2(log2(max(0.0f, (_248 + -0.8359375f)) / (18.851562f - (_248 * 18.6875f))) * 6.277395f) * 10000.0f;
    _272 = exp2(log2(max(0.0f, (_251 + -0.8359375f)) / (18.851562f - (_251 * 18.6875f))) * 6.277395f) * 10000.0f;
    _281 = exp2(log2(max(0.0f, (_254 + -0.8359375f)) / (18.851562f - (_254 * 18.6875f))) * 6.277395f) * 10000.0f;
    if (_204 == _renderPassDetectObjective) {
      // [sem: _3__36__0__0__g_CustomRenderPassDepth_load]
      _295 = __3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _151)), ((int)(_customRenderPassSizeInvSize.y * _150)), 0));
      _297 = max(1e-07f, _295.x);  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
      _309 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _297, mad((_invViewProj[3].y), _75, ((_invViewProj[3].x) * _73)));
      _459 = (1.0f - saturate(dot(float3(_237, _238, _239), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)))));
      _460 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _151) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _150) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f);
      _461 = _295.x;
      _462 = ((mad((_invViewProj[2].z), _297, mad((_invViewProj[2].y), _75, ((_invViewProj[2].x) * _73))) + (_invViewProj[2].w)) / _309);
      _463 = ((mad((_invViewProj[1].z), _297, mad((_invViewProj[1].y), _75, ((_invViewProj[1].x) * _73))) + (_invViewProj[1].w)) / _309);
      _464 = ((mad((_invViewProj[0].z), _297, mad((_invViewProj[0].y), _75, ((_invViewProj[0].x) * _73))) + (_invViewProj[0].w)) / _309);
    } else {
      if ((_204 == _renderPassDetectRemoteCatch) || ((_204 == _renderPassDetectPickedRemoteCatch) || (_204 == _renderPassKnowledgeNPC)) || ((_204 == _renderPassEnemy) || (_204 == _renderPassSelfPlayer)) || (_204 == _renderPassTest)) {
        // [sem: _3__36__0__0__g_CustomRenderPassDepth_load]
        _391 = __3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _151)), ((int)(_customRenderPassSizeInvSize.y * _150)), 0));
        _393 = max(1e-07f, _391.x);  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load_derived]
        _405 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _393, mad((_invViewProj[3].y), _75, ((_invViewProj[3].x) * _73)));
        _459 = (1.0f - saturate(dot(float3(_237, _238, _239), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)))));
        _460 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _151) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _150) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f);
        _461 = _391.x;
        _462 = ((mad((_invViewProj[2].z), _393, mad((_invViewProj[2].y), _75, ((_invViewProj[2].x) * _73))) + (_invViewProj[2].w)) / _405);
        _463 = ((mad((_invViewProj[1].z), _393, mad((_invViewProj[1].y), _75, ((_invViewProj[1].x) * _73))) + (_invViewProj[1].w)) / _405);
        _464 = ((mad((_invViewProj[0].z), _393, mad((_invViewProj[0].y), _75, ((_invViewProj[0].x) * _73))) + (_invViewProj[0].w)) / _405);
      } else {
        _459 = 0.0f;
        _460 = 0.0f;
        _461 = 0.0f;
        _462 = 0.0f;
        _463 = 0.0f;
        _464 = 0.0f;
      }
    }
    bool __branch_chain_458;
    if (!(_204 == _renderPassDetectRemoteCatch)) {
      __branch_chain_458 = true;
    } else {
      _469 = WaveReadLaneFirst(_materialIndex);
      _477 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_469 < (uint)170000), _469, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._itemRatio);
      if (!(_477 > 0.001f)) {
        __branch_chain_458 = true;
      } else {
        if ((!(_highLightForVision >= 0.001f)) && (!(_highLightForVisionRemoteCatch >= 0.001f))) {
          __branch_chain_458 = true;
        } else {
          __branch_chain_458 = false;
        }
      }
    }
    if (__branch_chain_458) {
      if (!(_204 == _renderPassDetectObjective) || ((_204 == _renderPassDetectObjective) && ((!(_highLightForVision >= 0.001f)) && (!(_highLightForVisionRemoteCatch >= 0.001f))))) {
        if (!(_204 == _renderPassKnowledgeNPC) || ((_204 == _renderPassKnowledgeNPC) && (!(_highLightForVision >= 0.001f)))) {
          _508 = (_204 == _renderPassSelfPlayer);
          if ((_508) || (((_204 == _renderPassTest) || (_204 == _renderPassEnemy)) || (_204 == _renderPassDetectPickedRemoteCatch))) {
            if ((_characterHighlight > 0.001f) || (_highLightForVisionRemoteCatch > 0.001f)) {
              if ((uint)_164 > (uint)10) {
                if ((uint)_164 < (uint)20) {
                  if (_164 == 11) {
                    _533 = _459 * 0.025f;
                    // [sem: _3__36__0__0__g_sceneColor_sample]
                    _538 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_533 + _151), (_533 + _150)));
                    _544 = (pow(_538.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                    _547 = (pow(_538.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                    _550 = (pow(_538.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                    _558 = exp2(log2(max(0.0f, (_544 + -0.8359375f)) / (18.851562f - (_544 * 18.6875f))) * 6.277395f);
                    _566 = exp2(log2(max(0.0f, (_547 + -0.8359375f)) / (18.851562f - (_547 * 18.6875f))) * 6.277395f);
                    _574 = exp2(log2(max(0.0f, (_550 + -0.8359375f)) / (18.851562f - (_550 * 18.6875f))) * 6.277395f);
                    _575 = _558 * 10000.0f;
                    _576 = _566 * 10000.0f;
                    _577 = _574 * 10000.0f;
                    if (!_508) {
                      if (!(_204 == _renderPassTest)) {
                        _583 = _566 * 6000.0f;
                        if (_204 == _renderPassEnemy) {
                          _591 = 1.0f;
                          _592 = 10.0f;
                          _593 = (_574 * 6000.0f);
                          _594 = _583;
                          _595 = _575;
                        } else {
                          _591 = 30.0f;
                          _592 = 50.0f;
                          _593 = _577;
                          _594 = _583;
                          _595 = (_558 * 5000.0f);
                        }
                      } else {
                        _591 = 1.0f;
                        _592 = 10.0f;
                        _593 = _577;
                        _594 = _576;
                        _595 = _575;
                      }
                    } else {
                      _591 = 1.0f;
                      _592 = 10.0f;
                      _593 = _577;
                      _594 = _576;
                      _595 = _575;
                    }
                    _598 = _464 - _mainPosition.x;
                    _600 = _463 - _mainPosition.y;
                    _602 = _462 - _mainPosition.z;
                    _1385 = (_593 * 1.5f);
                    _1386 = (_594 * 1.5f);
                    _1387 = (_595 * 1.5f);
                    _1388 = (((1.0f - saturate(ceil(((_nearFarProj.x / max(1e-07f, _460)) + 0.5f) - (_nearFarProj.x / max(1e-07f, _461))))) * (1.0f - saturate((sqrt(((_600 * _600) + (_598 * _598)) + (_602 * _602)) - _591) / _592))) * max(_highLightForVisionRemoteCatch, _characterHighlight));
                  } else {
                    _1385 = _281;
                    _1386 = _272;
                    _1387 = _263;
                    _1388 = 0.0f;
                  }
                } else {
                  if (!(_164 == 107)) {
                    _634 = _459 * 0.025f;
                    // [sem: _3__36__0__0__g_sceneColor_sample]
                    _639 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_634 + _151), (_634 + _150)));
                    _645 = (pow(_639.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                    _648 = (pow(_639.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                    _651 = (pow(_639.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                    _659 = exp2(log2(max(0.0f, (_645 + -0.8359375f)) / (18.851562f - (_645 * 18.6875f))) * 6.277395f);
                    _667 = exp2(log2(max(0.0f, (_648 + -0.8359375f)) / (18.851562f - (_648 * 18.6875f))) * 6.277395f);
                    _675 = exp2(log2(max(0.0f, (_651 + -0.8359375f)) / (18.851562f - (_651 * 18.6875f))) * 6.277395f);
                    _676 = _659 * 10000.0f;
                    _677 = _667 * 10000.0f;
                    _678 = _675 * 10000.0f;
                    if (!_508) {
                      if (!(_204 == _renderPassTest)) {
                        _684 = _667 * 6000.0f;
                        if (_204 == _renderPassEnemy) {
                          _692 = 1.0f;
                          _693 = 10.0f;
                          _694 = (_675 * 6000.0f);
                          _695 = _684;
                          _696 = _676;
                        } else {
                          _692 = 30.0f;
                          _693 = 50.0f;
                          _694 = _678;
                          _695 = _684;
                          _696 = (_659 * 5000.0f);
                        }
                      } else {
                        _692 = 1.0f;
                        _693 = 10.0f;
                        _694 = _678;
                        _695 = _677;
                        _696 = _676;
                      }
                    } else {
                      _692 = 1.0f;
                      _693 = 10.0f;
                      _694 = _678;
                      _695 = _677;
                      _696 = _676;
                    }
                    _699 = _464 - _mainPosition.x;
                    _701 = _463 - _mainPosition.y;
                    _703 = _462 - _mainPosition.z;
                    _1385 = (_694 * 1.5f);
                    _1386 = (_695 * 1.5f);
                    _1387 = (_696 * 1.5f);
                    _1388 = (((1.0f - saturate(ceil(((_nearFarProj.x / max(1e-07f, _460)) + 0.5f) - (_nearFarProj.x / max(1e-07f, _461))))) * (1.0f - saturate((sqrt(((_701 * _701) + (_699 * _699)) + (_703 * _703)) - _692) / _693))) * max(_highLightForVisionRemoteCatch, _characterHighlight));
                  } else {
                    _1385 = _281;
                    _1386 = _272;
                    _1387 = _263;
                    _1388 = 0.0f;
                  }
                }
              } else {
                _733 = _459 * 0.025f;
                // [sem: _3__36__0__0__g_sceneColor_sample]
                _738 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_733 + _151), (_733 + _150)));
                _744 = (pow(_738.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                _747 = (pow(_738.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                _750 = (pow(_738.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                _758 = exp2(log2(max(0.0f, (_744 + -0.8359375f)) / (18.851562f - (_744 * 18.6875f))) * 6.277395f);
                _766 = exp2(log2(max(0.0f, (_747 + -0.8359375f)) / (18.851562f - (_747 * 18.6875f))) * 6.277395f);
                _774 = exp2(log2(max(0.0f, (_750 + -0.8359375f)) / (18.851562f - (_750 * 18.6875f))) * 6.277395f);
                _775 = _758 * 10000.0f;
                _776 = _766 * 10000.0f;
                _777 = _774 * 10000.0f;
                if (!_508) {
                  if (!(_204 == _renderPassTest)) {
                    _783 = _766 * 6000.0f;
                    if (_204 == _renderPassEnemy) {
                      _791 = 1.0f;
                      _792 = 10.0f;
                      _793 = (_774 * 6000.0f);
                      _794 = _783;
                      _795 = _775;
                    } else {
                      _791 = 30.0f;
                      _792 = 50.0f;
                      _793 = _777;
                      _794 = _783;
                      _795 = (_758 * 5000.0f);
                    }
                  } else {
                    _791 = 1.0f;
                    _792 = 10.0f;
                    _793 = _777;
                    _794 = _776;
                    _795 = _775;
                  }
                } else {
                  _791 = 1.0f;
                  _792 = 10.0f;
                  _793 = _777;
                  _794 = _776;
                  _795 = _775;
                }
                _798 = _464 - _mainPosition.x;
                _800 = _463 - _mainPosition.y;
                _802 = _462 - _mainPosition.z;
                _1385 = (_793 * 1.5f);
                _1386 = (_794 * 1.5f);
                _1387 = (_795 * 1.5f);
                _1388 = (((1.0f - saturate(ceil(((_nearFarProj.x / max(1e-07f, _460)) + 0.5f) - (_nearFarProj.x / max(1e-07f, _461))))) * (1.0f - saturate((sqrt(((_800 * _800) + (_798 * _798)) + (_802 * _802)) - _791) / _792))) * max(_highLightForVisionRemoteCatch, _characterHighlight));
              }
            } else {
              _1385 = _281;
              _1386 = _272;
              _1387 = _263;
              _1388 = 0.0f;
            }
          } else {
            _1385 = _281;
            _1386 = _272;
            _1387 = _263;
            _1388 = 0.0f;
          }
        } else {
          _836 = (uint)((_bufferSizeAndInvSize.x * _151) + -0.5f);
          _840 = (uint)((_bufferSizeAndInvSize.y * _150) + -0.5f);
          _842 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_836, _840, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
          _845 = __3__36__0__0__g_gbufferNormal.Load(int3(_836, _840, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
          _852 = (saturate(_845.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _856 = (saturate(_845.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _860 = (saturate(_845.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _862 = rsqrt(dot(float3(_852, _856, _860), float3(_852, _856, _860)));  // [sem: invLength]
          _863 = _862 * _852;
          _864 = _862 * _856;
          _865 = _860 * _862;
          _870 = (((float)((uint)((uint)(((uint)((uint)(_842.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _874 = (((float)((uint)((uint)(_842.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _876 = (_870 + _874) * 0.5f;
          _878 = (_870 - _874) * 0.5f;
          _882 = (1.0f - abs(_876)) - abs(_878);
          _884 = rsqrt(dot(float3(_876, _878, _882), float3(_876, _878, _882)));  // [sem: invLength]
          _885 = _884 * _876;
          _886 = _884 * _878;
          _887 = _884 * _882;
          _889 = select((_865 >= 0.0f), 1.0f, -1.0f);
          _892 = -0.0f - (1.0f / (_889 + _865));
          _893 = _864 * _892;
          _894 = _893 * _863;
          _895 = _889 * _863;
          _901 = mad(_887, _863, mad(_886, _894, ((((_895 * _863) * _892) + 1.0f) * _885)));
          _907 = mad(_887, _864, mad(_886, ((_893 * _864) + _889), ((_885 * _889) * _894)));
          _912 = mad(_887, _865, mad(_886, (-0.0f - _864), (-0.0f - (_895 * _885))));
          _914 = rsqrt(dot(float3(_901, _907, _912), float3(_901, _907, _912)));  // [sem: invLength]
          _929 = 1.0f - dot(float3(((_914 * _901) + -0.1f), ((_914 * _907) + -0.1f), ((_914 * _912) + -0.1f)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)));
          _934 = frac((_time.x * 2.0f) + _929);
          _935 = _934 * _934;
          _936 = _929 * 10.0f;
          _943 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_175 < (uint)65000), _175, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_936, _936));
          _945 = _943.x * _943.x;
          _949 = 6.0f / max(0.001f, _exposure0.x);
          _1385 = (_281 - (_highLightForVision * _281));
          _1386 = ((_highLightForVision * ((_949 * 0.6444798f) - _272)) + _272);
          _1387 = ((_highLightForVision * (_949 - _263)) + _263);
          _1388 = ((saturate((_935 * _935) * 5.0f) * saturate((_945 * _945) * 4.0f)) * saturate(ceil(((_nearFarProj.x / max(1e-07f, _460)) + 0.05f) - (_nearFarProj.x / max(1e-07f, _461)))));
        }
      } else {
        _982 = _464 - _mainPosition.x;
        _984 = _463 - _mainPosition.y;
        _986 = _462 - _mainPosition.z;
        _996 = (1.0f - saturate(sqrt(((_984 * _984) + (_982 * _982)) + (_986 * _986)) * 0.125f)) * 0.2f;
        _1001 = _982 - ((_viewPos.x - _mainPosition.x) * _996);
        _1005 = _984 - ((_viewPos.y - _mainPosition.y) * _996);
        _1009 = _986 - ((_viewPos.z - _mainPosition.z) * _996);
        _1011 = rsqrt(dot(float3(_1001, _1005, _1009), float3(_1001, _1005, _1009)));  // [sem: invLength]
        _1012 = _1009 * _1011;
        _1016 = select((_1012 < 0.0f), (-0.0f - _1012), _1012) + 1.0f;
        _1018 = (_1005 * _1011) / _1016;
        _1020 = (_1001 * _1011) / _1016;
        _1024 = sin(_time.x) + _time.x;
        _1037 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_175 < (uint)65000), _175, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.1f) + (_1020 * 2.0f)), ((_1024 * 0.1f) + (_1018 * 2.0f))));
        _1051 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_175 < (uint)65000), _175, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1020 - (_1037.x * 0.05f)) - (_time.x * 0.060000002f)), ((_1018 - (_1024 * 0.060000002f)) - (_1037.w * 0.05f))));
        _1064 = (uint)((((((_1037.w + -1.0f) + _1051.y) * 0.02f) + _151) * _bufferSizeAndInvSize.x) + -0.5f);
        _1072 = (uint)((((((_1037.y + -1.0f) + _1051.w) * 0.02f) + _150) * _bufferSizeAndInvSize.y) + -0.5f);
        _1074 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_1064, _1072, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
        _1077 = __3__36__0__0__g_gbufferNormal.Load(int3(_1064, _1072, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
        _1084 = (saturate(_1077.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _1088 = (saturate(_1077.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _1092 = (saturate(_1077.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _1094 = rsqrt(dot(float3(_1084, _1088, _1092), float3(_1084, _1088, _1092)));  // [sem: invLength]
        _1095 = _1094 * _1084;
        _1096 = _1094 * _1088;
        _1097 = _1092 * _1094;
        _1102 = (((float)((uint)((uint)(((uint)((uint)(_1074.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _1106 = (((float)((uint)((uint)(_1074.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _1108 = (_1102 + _1106) * 0.5f;
        _1110 = (_1102 - _1106) * 0.5f;
        _1114 = (1.0f - abs(_1108)) - abs(_1110);
        _1116 = rsqrt(dot(float3(_1108, _1110, _1114), float3(_1108, _1110, _1114)));  // [sem: invLength]
        _1117 = _1116 * _1108;
        _1118 = _1116 * _1110;
        _1119 = _1116 * _1114;
        _1121 = select((_1097 >= 0.0f), 1.0f, -1.0f);
        _1124 = -0.0f - (1.0f / (_1121 + _1097));
        _1125 = _1096 * _1124;
        _1126 = _1125 * _1095;
        _1127 = _1121 * _1095;
        _1133 = mad(_1119, _1095, mad(_1118, _1126, ((((_1127 * _1095) * _1124) + 1.0f) * _1117)));
        _1139 = mad(_1119, _1096, mad(_1118, ((_1125 * _1096) + _1121), ((_1117 * _1121) * _1126)));
        _1144 = mad(_1119, _1097, mad(_1118, (-0.0f - _1096), (-0.0f - (_1127 * _1117))));
        _1146 = rsqrt(dot(float3(_1133, _1139, _1144), float3(_1133, _1139, _1144)));  // [sem: invLength]
        _1156 = 1.0f - abs(dot(float3((_1146 * _1133), (_1146 * _1139), (_1146 * _1144)), float3(_viewDir.x, _viewDir.y, _viewDir.z)));
        _1161 = saturate((_1156 * _1156) + ((_1051.y * _1037.y) * _1051.z));  // [sem: expr_sat]
        _1175 = 1.0f - dot(float3((((_1051.x + -0.5f) * _1051.w) + _237), (((_1051.y + -0.5f) * _1051.w) + _238), (((_1051.z + -0.5f) * _1051.w) + _239)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)));
        _1184 = (saturate((_1175 * _1175) * 3.0f) * saturate(_1161 * 10.0f)) + ((_1051.x * _1051.z) * _1051.w);
        _1187 = WaveReadLaneFirst(_materialIndex);
        _1195 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1187 < (uint)170000), _1187, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._objectiveMaskColor);
        _1198 = (float)((uint)((uint)(((uint)((uint)(_1195)) >> 16) & 255)));
        _1201 = (float)((uint)((uint)(((uint)((uint)(_1195)) >> 8) & 255)));
        _1203 = (float)((uint)((uint)(_1195 & 255)));
        _1209 = (_1051.y * _1051.w) * (1.0f / max(0.001f, _exposure0.x));
        // [sem: invLength]
        _1215 = rsqrt(dot(float3(_detectModeLook.x, _detectModeLook.y, _detectModeLook.z), float3(_detectModeLook.x, _detectModeLook.y, _detectModeLook.z)));
        _1216 = _1215 * _detectModeLook.x;
        _1217 = _1215 * _detectModeLook.y;
        _1218 = _1215 * _detectModeLook.z;
        _1221 = _464 - _detectModePosition.x;
        _1223 = _463 - _detectModePosition.y;
        _1225 = _462 - _detectModePosition.z;
        _1226 = dot(float3(_1216, _1217, _1218), float3(_1221, _1223, _1225));
        _1228 = _1221 - (_1226 * _1216);
        _1230 = _1223 - (_1226 * _1217);
        _1232 = _1225 - (_1226 * _1218);
        _1243 = 1.0f - saturate(sqrt(((_1223 * _1223) + (_1221 * _1221)) + (_1225 * _1225)) / _detectModeRadius);
        _1385 = (select(((_1203 * 0.011764707f) < 0.04045f), (_1203 * 0.00091058103f), exp2(log2((_1203 * 0.011151382f) + 0.052132703f) * 2.4f)) * _1209);
        _1386 = (select(((_1201 * 0.011764707f) < 0.04045f), (_1201 * 0.00091058103f), exp2(log2((_1201 * 0.011151382f) + 0.052132703f) * 2.4f)) * _1209);
        _1387 = (select(((_1198 * 0.011764707f) < 0.04045f), (_1198 * 0.00091058103f), exp2(log2((_1198 * 0.011151382f) + 0.052132703f) * 2.4f)) * _1209);
        _1388 = ((((_1243 * _1243) * (1.0f - saturate(sqrt(((_1228 * _1228) + (_1230 * _1230)) + (_1232 * _1232)) / max(0.001f, (tan(_detectModeAngle * 0.017453292f) * _1226))))) * ((saturate(ceil(((_nearFarProj.x / max(1e-07f, _460)) + 0.05f) - (_nearFarProj.x / max(1e-07f, _461)))) * (_1161 - _1184)) + _1184)) * _highLightForVision);
      }
    } else {
      _1311 = _464 - _mainPosition.x;
      _1313 = _463 - _mainPosition.y;
      _1315 = _462 - _mainPosition.z;
      // [sem: invLength]
      _1321 = rsqrt(dot(float3(_detectModeLook.x, _detectModeLook.y, _detectModeLook.z), float3(_detectModeLook.x, _detectModeLook.y, _detectModeLook.z)));
      _1322 = _1321 * _detectModeLook.x;
      _1323 = _1321 * _detectModeLook.y;
      _1324 = _1321 * _detectModeLook.z;
      _1327 = _464 - _detectModePosition.x;
      _1329 = _463 - _detectModePosition.y;
      _1331 = _462 - _detectModePosition.z;
      _1332 = dot(float3(_1322, _1323, _1324), float3(_1327, _1329, _1331));
      _1334 = _1327 - (_1332 * _1322);
      _1336 = _1329 - (_1332 * _1323);
      _1338 = _1331 - (_1332 * _1324);
      _1385 = _281;
      _1386 = _272;
      _1387 = _263;
      _1388 = ((((1.0f - saturate((sqrt(((_1313 * _1313) + (_1311 * _1311)) + (_1315 * _1315)) + -30.0f) * 0.05f)) * saturate((_459 * _459) * 4.0f)) * (1.0f - saturate(sqrt(((_1334 * _1334) + (_1336 * _1336)) + (_1338 * _1338)) / max(0.001f, (tan(_detectModeAngle * 0.017453292f) * _1332))))) * exp2(log2(1.0f - saturate(sqrt(((_1329 * _1329) + (_1327 * _1327)) + (_1331 * _1331)) / _detectModeRadius)) * 10.0f));
    }
  } else {
    _1385 = 0.0f;
    _1386 = 0.0f;
    _1387 = 0.0f;
    _1388 = 0.0f;
  }
  _1392 = abs(_temperatureWarning * 0.01f);
  if (_53) {
    if (_temperatureWarning > 0.0f) {
      _1398 = _71 * TEXCOORD.x;
      _1411 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_175 < (uint)65000), _175, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1398 * 4.25f), ((TEXCOORD.y * 3.0f) - (_time.x * 0.15f))));
      _1423 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_175 < (uint)65000), _175, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1398 * 2.3f), (((TEXCOORD.y * 2.1f) - (_1411.x * 0.1f)) + (_time.x * 0.2f))));
      _1427 = TEXCOORD.x + -0.5f;
      _1434 = abs((((_1411.y + -0.5f) * 0.01f) + _1427) + ((_1423.z + -0.5f) * 0.03f));
      _1442 = abs(((TEXCOORD.y + -0.5f) + ((_1411.x + -0.5f) * 0.02f)) + ((_1423.y + -0.5f) * 0.03f));
      _1444 = max((_1434 + -0.5f), 0.0f);
      _1446 = max((_1442 + -0.5f), 0.0f);
      _1468 = 0.5f - min(max((((((((_1411.z * 0.3f) + -0.5f) + (_1423.x * 0.7f)) * 1.1f) + 1.0f) * ((_1392 * 0.050000004f) + 0.1f)) * (1.0f - (saturate(abs(_1427) * 2.0f) * 0.39999998f))), ((_1392 * 0.017500002f) + 0.035f)), ((_1392 * 0.110000014f) + 0.22000001f));
      _1470 = max((_1434 - _1468), 0.0f);
      _1472 = max((_1442 - _1468), 0.0f);
      _1475 = saturate((TEXCOORD.y + -0.15f) * 1.2500001f);  // [sem: expr_sat]
      _1477 = saturate(_1423.x * _1411.x);  // [sem: expr_sat]
      _1478 = _1392 * 0.2f;
      _1514 = ((((_1477 * (1.0f - _1478)) + _1478) * saturate(_1392 * 2.0f)) * saturate(saturate(sqrt((_1472 * _1472) + (_1470 * _1470)) * 10.0f) - saturate(sqrt((_1446 * _1446) + (_1444 * _1444)) * 10.0f))) * ((((_1475 * _1475) * (3.0f - (_1475 * 2.0f))) * ((saturate((((_1411.x * 0.25f) + -0.35f) + (_1423.y * 0.75f)) * 1.6f) * 0.5f) + -0.35000002f)) + 1.0f);
      _1516 = (_1392 * 0.1f) * _1514;
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _1526 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1423.x * (0.5f - TEXCOORD.x)) * _1516) + TEXCOORD.x), (((_1423.y * (0.5f - TEXCOORD.y)) * _1516) + TEXCOORD.y)));
      _1532 = (pow(_1526.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1535 = (pow(_1526.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1538 = (pow(_1526.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1547 = exp2(log2(max(0.0f, (_1532 + -0.8359375f)) / (18.851562f - (_1532 * 18.6875f))) * 6.277395f) * 10000.0f;
      _1556 = exp2(log2(max(0.0f, (_1535 + -0.8359375f)) / (18.851562f - (_1535 * 18.6875f))) * 6.277395f) * 10000.0f;
      _1565 = exp2(log2(max(0.0f, (_1538 + -0.8359375f)) / (18.851562f - (_1538 * 18.6875f))) * 6.277395f) * 10000.0f;
      _1566 = 1.0f - _1514;
      _1573 = ((_1566 * _1566) * _1566) * saturate(((_1477 * _1477) * 2.0f) * _1477);
      _1576 = max(0.001f, _exposure0.x);
      _1580 = (((1.0f / _1576) - _1547) * _1573) + _1547;
      _1584 = (((0.6f / _1576) - _1556) * _1573) + _1556;
      _1588 = (((0.3f / _1576) - _1565) * _1573) + _1565;
      _1593 = ((_1392 * _1392) * _1392) * saturate(_1392 + -0.5f);
      _1595 = saturate(_1514 * 2.0f);  // [sem: expr_sat]
      _1721 = ((((_1588 - _1385) - (_1588 * _1593)) * _1595) + _1385);
      _1722 = ((((_1584 - _1386) + ((((_1514 * 0.25f) / _1576) - _1584) * _1593)) * _1595) + _1386);
      _1723 = ((((_1580 - _1387) + (((_1514 / _1576) - _1580) * _1593)) * _1595) + _1387);
      _1724 = (_1595 + _1388);
    } else {
      if (_temperatureWarning < 0.0f) {
        _1620 = _71 * TEXCOORD.x;
        _1629 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_175 < (uint)65000), _175, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1620 * 1.5f), (TEXCOORD.y * 1.5f)));
        _1635 = WaveReadLaneFirst(_materialIndex);
        _1643 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1635 < (uint)170000), _1635, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._temperatureWarningTex);
        _1651 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1643 < (uint)65000), _1643, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1620 * 2.0f), _74));
        _1659 = (select(((TEXCOORD.y / (1.0f - TEXCOORD.x)) < 1.0f), (1.0f - _1651.y), _1651.y) + -0.5f) * 0.3f;
        _1661 = (_1629.x + -0.4f) * 0.2f;
        _1664 = max(0.001f, _exposure0.x);
        _1666 = 0.5f - (_1392 * 0.25f);
        _1672 = max((abs(((TEXCOORD.x + -0.5f) + _1661) + _1659) - _1666), 0.0f);
        _1679 = max((abs(((_1659 + _1661) + -0.475f) + (TEXCOORD.y * 0.9f)) - _1666), 0.0f);
        _1702 = (_1392 * (1.0f - TEXCOORD.y)) * saturate((((_1651.y * 4.0f) * saturate(1.0f - ((1.0f - saturate(sqrt((_1679 * _1679) + (_1672 * _1672)) * 6.6666665f)) * 2.0f))) * saturate((_1651.y * _1651.y) * 2.0f)) * saturate(_1629.z * _1629.w));
        _1721 = ((((2.0f / _1664) - _1385) * _1702) + _1385);
        _1722 = ((((((_1629.w * 1.3989123f) + 0.6010877f) / _1664) - _1386) * _1702) + _1386);
        _1723 = ((((((_1629.w * 1.8809775f) + 0.11902248f) / _1664) - _1387) * _1702) + _1387);
        _1724 = (_1702 + _1388);
      } else {
        _1721 = _1385;
        _1722 = _1386;
        _1723 = _1387;
        _1724 = _1388;
      }
    }
  } else {
    _1721 = _1385;
    _1722 = _1386;
    _1723 = _1387;
    _1724 = _1388;
  }
  if (!(_electrocutionWarning == 0.0f)) {
    _1729 = _71 * TEXCOORD.x;
    _1738 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_175 < (uint)65000), _175, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1729 * 1.5f), (TEXCOORD.y * 1.5f)));
    _1744 = WaveReadLaneFirst(_materialIndex);
    _1752 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1744 < (uint)170000), _1744, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._electrocutionTex);
    _1755 = max(0.001f, _exposure0.x);
    _1759 = 0.5f - (_electrocutionWarning * 0.07f);
    _1763 = max((abs(TEXCOORD.x + -0.5f) - _1759), 0.0f);
    _1767 = max((abs(TEXCOORD.y + -0.5f) - _1759), 0.0f);
    _1776 = 1.0f - abs((frac((_time.x * 2.0f) + _1738.y) * 2.0f) + -1.0f);
    _1800 = ((_1776 * _1776) * saturate(sqrt((_1767 * _1767) + (_1763 * _1763)) / _1738.z)) * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1752 < (uint)65000), _1752, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1738.x * 0.05f) + (_1729 * 2.0f)), (((_1738.y * 0.05f) + _74) + (_time.x * 0.1f)))))).x);
    _1803 = (pow(_1800, 1.6f));
    _1818 = ((((2000.0f / _1755) - _1721) * _1803) + _1721);
    _1819 = ((((660.0f / _1755) - _1722) * _1803) + _1722);
    _1820 = ((((340.0f / _1755) - _1723) * _1803) + _1723);
    _1821 = (_1800 + _1724);
  } else {
    _1818 = _1721;
    _1819 = _1722;
    _1820 = _1723;
    _1821 = _1724;
  }
  _1822 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    // [sem: _1821_sat]
    _1837 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1822, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1837 = saturate(_1821);  // [sem: _1821_sat]
  }
  _1840 = (_localToneMappingParams.w > 0.0f);
  if (_1840) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1820, _1819, _1818));
    _2088 = _rndx_tonemapped_color.x;
    _2095 = _rndx_tonemapped_color.y;
    _2102 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _2108 = 1.0f - abs(_etcParams.w);
      _2109 = saturate(_etcParams.w);  // [sem: expr_sat]
      _2111 = (_2108 * _2088) + _2109;
      _2113 = (_2108 * _2095) + _2109;
      _2115 = (_2108 * _2102) + _2109;
      if (_colorGradingParams.w > 0.0f) {
        _2120 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _2137 = (((max(0.0f, (1.0f - _2115)) - _2115) * _2120) + _2115);
        _2138 = (((max(0.0f, (1.0f - _2113)) - _2113) * _2120) + _2113);
        _2139 = (((max(0.0f, (1.0f - _2111)) - _2111) * _2120) + _2111);
      } else {
        _2137 = _2115;
        _2138 = _2113;
        _2139 = _2111;
      }
      _2141 = _userImageAdjust.y + 1.0f;
      _2143 = _userImageAdjust.x + 0.5f;
      _2146 = ((_2139 + -0.5f) * _2141) + _2143;
      _2149 = ((_2138 + -0.5f) * _2141) + _2143;
      _2152 = ((_2137 + -0.5f) * _2141) + _2143;
      _2158 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _2193 = exp2(log2(saturate(mad(_colorBlind2.z, _2152, mad(_colorBlind2.y, _2149, (_colorBlind2.x * _2146))))) * _2158);
      _2194 = exp2(log2(saturate(mad(_colorBlind1.z, _2152, mad(_colorBlind1.y, _2149, (_colorBlind1.x * _2146))))) * _2158);
      _2195 = exp2(log2(saturate(mad(_colorBlind0.z, _2152, mad(_colorBlind0.y, _2149, (_colorBlind0.x * _2146))))) * _2158);
    } else {
      _2193 = _2102;
      _2194 = _2095;
      _2195 = _2088;
    }
  } else {
    _2193 = _1818;
    _2194 = _1819;
    _2195 = _1820;
  }
  if (_etcParams.y > 1.0f) {
    _2198 = abs(_73);
    _2200 = abs(_74 + -1.0f);
    _2206 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_2198, _2200), float2(_2198, _2200))));  // [sem: expr_sat]
    _2211 = (_2206 * _2193);
    _2212 = (_2206 * _2194);
    _2213 = (_2206 * _2195);
  } else {
    _2211 = _2193;
    _2212 = _2194;
    _2213 = _2195;
  }
  if (_1840 && (_etcParams.z > 0.0f)) {
    _2243 = select((_2211 <= 0.0031308f), (_2211 * 12.92f), (((pow(_2211, 0.41666666f)) * 1.055f) + -0.055f));
    _2244 = select((_2212 <= 0.0031308f), (_2212 * 12.92f), (((pow(_2212, 0.41666666f)) * 1.055f) + -0.055f));
    _2245 = select((_2213 <= 0.0031308f), (_2213 * 12.92f), (((pow(_2213, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _2243 = _2211;
    _2244 = _2212;
    _2245 = _2213;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2248 = (float)((uint)((uint)(_1822)));
    if (!(_2248 < _viewDir.w)) {
      if (!(!(_2248 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _2259 = 0.0f;
        _2260 = 0.0f;
        _2261 = 0.0f;
      } else {
        _2259 = _2243;
        _2260 = _2244;
        _2261 = _2245;
      }
    } else {
      _2259 = 0.0f;
      _2260 = 0.0f;
      _2261 = 0.0f;
    }
  } else {
    _2259 = _2243;
    _2260 = _2244;
    _2261 = _2245;
  }
  _2265 = exp2(log2(_2261 * 0.0001f) * 0.15930176f);
  _2269 = exp2(log2(_2260 * 0.0001f) * 0.15930176f);
  _2273 = exp2(log2(_2259 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_2265 * 18.6875f) + 1.0f)) * ((_2265 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_2269 * 18.6875f) + 1.0f)) * ((_2269 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_2273 * 18.6875f) + 1.0f)) * ((_2273 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1837;
  return SV_Target;
}
