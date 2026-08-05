struct PostProcessAimHighlight_CDStruct {
  float _aimHighlightProgress;
  float _aimHighlightBackground;
  uint _noiseTex;
  uint _auraTex;
  float _radius;
  float _squareSize;
  float _maskThreshold;
  uint _aimGimmickColor;
  uint _aimHighlightColor;
  float _fishEyeMaxPower;
  float _vignetteIntensity;
};

struct BindlessParameters_PostProcessAimHighlight_CD {
  PostProcessAimHighlight_CDStruct BindlessParameters_PostProcessAimHighlight_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t36, space36);

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

typedef BindlessParameters_PostProcessAimHighlight_CD BindlessParameters_PostProcessAimHighlight_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAimHighlight_CD_t> BindlessParameters_PostProcessAimHighlight_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const int _global_0[1];

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _35;
  int _38;
  float _46;
  float _147;
  float _148;
  float _151;
  float _152;
  float _377;
  float _378;
  int _483;
  float _484;
  float _485;
  float _486;
  float _487;
  int _488;
  int _489;
  int _542;
  int _543;
  int _544;
  int _626;
  float _627;
  float _628;
  float _629;
  int _710;
  float _711;
  float _712;
  float _713;
  float _745;
  float _746;
  float _747;
  float _822;
  float _823;
  float _824;
  float _825;
  float _826;
  float _827;
  float _828;
  int _890;
  float _911;
  float _912;
  float _913;
  float _925;
  float _1299;
  float _1300;
  float _1301;
  float _1302;
  float _1393;
  float _1394;
  float _1669;
  float _1670;
  float _1671;
  float _1755;
  float _1756;
  float _1757;
  float _1758;
  float _1813;
  float _2018;
  float _2019;
  float _2020;
  float _2113;
  float _2114;
  float _2115;
  float _2169;
  float _2170;
  float _2171;
  float _2190;
  float _2191;
  float _2192;
  float _2222;
  float _2223;
  float _2224;
  float _2238;
  float _2239;
  float _2240;
  int _51;
  float _59;
  int _64;
  float _72;
  int _77;
  float _85;
  int _88;
  float _96;
  float _97;
  float _98;
  float _103;
  float _107;
  float _108;
  float _109;
  float _113;
  float _118;
  float _120;
  float _131;
  float _132;
  float _137;
  float _139;
  float _155;
  float4 _167;
  float _174;
  float _178;
  float _182;
  float _184;
  float _185;
  float _186;
  float _187;
  float _189;
  float _191;
  float _192;
  float _204;
  float _213;
  float _226;
  float _239;
  float _251;
  float _260;
  float _269;
  float _278;
  float _280;
  float _281;
  float _282;
  float _283;
  float4 _286;
  float _290;
  float _291;
  float _292;
  int _295;
  int _303;
  float4 _314;
  int _320;
  float _328;
  float _330;
  float _332;
  float _334;
  uint2 _336;
  uint _351;
  int _353;
  float _357;
  float _362;
  float _364;
  float _365;
  float _366;
  float _380;
  float _381;
  float _382;
  float _383;
  float _385;
  int _388;
  float _396;
  int _399;
  float _407;
  float _410;
  float _413;
  float _414;
  float _415;
  float _416;
  float _417;
  float _418;
  float _419;
  float _420;
  float _421;
  float _422;
  float _425;
  float _428;
  float _431;
  float _434;
  float _437;
  float _440;
  float _443;
  float _446;
  float _449;
  float _452;
  float _455;
  float _458;
  float _461;
  float _464;
  int _467;
  float _475;
  float _476;
  float _477;
  float _478;
  float _479;
  float _480;
  float _481;
  float _490;
  float _491;
  float _492;
  float _494;
  float _496;
  float _498;
  float _501;
  float _508;
  float _515;
  float _522;
  float _533;
  bool _534;
  float _536;
  float _537;
  float _538;
  int _539;
  int _546;
  int _549;
  float _552;
  float _554;
  float _556;
  float _558;
  float _570;
  float _581;
  float _592;
  float _595;
  float _597;
  float _599;
  float _608;
  float _610;
  float _611;
  float _613;
  float _615;
  float _616;
  float _617;
  float _621;
  float _624;
  float _655;
  float _661;
  float _667;
  float4 _672;
  float4 _676;
  int _682;
  float _690;
  float _692;
  float _696;
  float _700;
  float _704;
  int _707;
  float4 _717;
  int _720;
  float _728;
  float _730;
  int _750;
  float _758;
  int _761;
  float _769;
  float _772;
  int _793;
  int _801;
  float4 _814;
  float _816;
  float _819;
  float _820;
  float _832;
  float _836;
  float _837;
  float _838;
  float _847;
  float _848;
  float _849;
  float4 _852;
  float _860;
  float _862;
  float _868;
  float _870;
  float _871;
  float _883;
  float _884;
  float _885;
  float _886;
  float _887;
  float _888;
  float _892;
  float _895;
  bool _897;
  float _928;
  float _931;
  float _934;
  float4 _937;
  int _941;
  float _949;
  float _962;
  float _964;
  float _966;
  float _972;
  float _975;
  int _988;
  uint _994;
  uint _997;
  uint4 _999;
  float4 _1002;
  float _1009;
  float _1013;
  float _1017;
  float _1019;
  float _1020;
  float _1021;
  float _1022;
  float _1027;
  float _1031;
  float _1033;
  float _1035;
  float _1039;
  float _1041;
  float _1042;
  float _1043;
  float _1044;
  float _1046;
  float _1049;
  float _1050;
  float _1051;
  float _1052;
  float _1058;
  float _1064;
  float _1069;
  float _1071;
  float _1084;
  float _1087;
  float _1090;
  float _1103;
  float _1105;
  float _1107;
  float _1118;
  float _1127;
  float _1129;
  float _1130;
  float _1131;
  float _1132;
  float _1133;
  float _1142;
  float _1151;
  float _1160;
  float _1162;
  float _1163;
  float _1172;
  float _1181;
  float _1189;
  int _1190;
  float _1202;
  float _1204;
  float _1206;
  float _1218;
  float _1227;
  float _1238;
  float _1242;
  float _1246;
  float _1250;
  float _1254;
  float _1262;
  float _1270;
  float _1271;
  float _1275;
  float _1287;
  float _1292;
  float _1308;
  float _1312;
  float _1316;
  float _1322;
  float _1328;
  float _1334;
  float _1339;
  float _1345;
  float _1351;
  uint2 _1353;
  uint _1368;
  float _1373;
  float _1378;
  float _1380;
  float _1381;
  float _1382;
  float _1396;
  float _1397;
  float _1398;
  float _1399;
  float _1401;
  float _1402;
  float _1403;
  float _1404;
  int _1407;
  int _1415;
  float _1418;
  float _1421;
  float _1423;
  float _1432;
  float _1441;
  float _1450;
  int _1453;
  int _1461;
  float _1464;
  float _1467;
  float _1469;
  float _1470;
  float _1471;
  float _1475;
  int _1482;
  int _1490;
  float4 _1511;
  float _1525;
  float _1537;
  float _1552;
  float _1566;
  float _1580;
  float _1590;
  float _1599;
  float _1600;
  float _1613;
  float _1642;
  float _1643;
  float _1645;
  float _1743;
  float _1748;
  float _1749;
  float _1761;
  int _1764;
  float _1772;
  int _1775;
  float _1783;
  float _1790;
  float _1793;
  float _1796;
  float _1799;
  uint _1800;
  bool _1816;
  float _1822;
  float _1841;
  float _1857;
  float _1873;
  float _1874;
  float _1878;
  float _1881;
  float _1884;
  float _1891;
  float _1898;
  float _1905;
  float _1906;
  float _1907;
  float _1908;
  float _1909;
  float _1910;
  float _1911;
  float _1927;
  float _1943;
  float _1959;
  float _1960;
  float _1961;
  float _1962;
  float _1963;
  float _1980;
  float _1981;
  float _1982;
  float _1983;
  float _1986;
  float _1989;
  float _1993;
  float _1997;
  float _2001;
  float _2021;
  float _2033;
  float _2045;
  float _2057;
  float _2064;
  float _2071;
  float _2078;
  float _2084;
  float _2085;
  float _2087;
  float _2089;
  float _2091;
  float _2096;
  float _2117;
  float _2119;
  float _2122;
  float _2125;
  float _2128;
  float _2134;
  float _2176;
  float _2179;
  float _2185;
  float _2227;
  int __loop_jump_target = -1;
  _35 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_38 < (uint)170000), _38, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._fishEyeMaxPower);
  bool __branch_chain_0;
  if (_46 > 0.001f) {
    __branch_chain_0 = true;
  } else {
    _51 = WaveReadLaneFirst(_materialIndex);
    _59 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_51 < (uint)170000), _51, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._fishEyeMaxPower);
    if (_59 < -0.001f) {
      __branch_chain_0 = true;
    } else {
      _151 = TEXCOORD.y;
      _152 = TEXCOORD.x;
      __branch_chain_0 = false;
    }
  }
  if (__branch_chain_0) {
    _64 = WaveReadLaneFirst(_materialIndex);
    _72 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_64 < (uint)170000), _64, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
    if (!(!(_72 >= 0.001f))) {
      _77 = WaveReadLaneFirst(_materialIndex);
      _85 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_77 < (uint)170000), _77, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._fishEyeMaxPower);
      _88 = WaveReadLaneFirst(_materialIndex);
      _96 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_88 < (uint)170000), _88, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
      _97 = _96 * _85;
      _98 = 0.5f / _35;
      _103 = ((_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x) + -0.5f;
      _107 = ((_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x) - _98;
      _108 = dot(float2(_103, _107), float2(_103, _107));
      _109 = sqrt(_108);
      if (_97 > 0.0f) {
        _113 = sqrt(dot(float2(0.5f, _98), float2(0.5f, _98)));
        _118 = (tan(_109 * _97) * _113) * rsqrt(_108);
        _120 = tan(_113 * _97);
        _147 = (((_118 * _107) / _120) + _98);
        _148 = (((_118 * _103) / _120) + 0.5f);
      } else {
        if (_97 < 0.0f) {
          _131 = select((_35 < 1.0f), 0.5f, _98);
          _132 = _97 * -10.0f;
          _137 = (atan(_109 * _132) * _131) * rsqrt(_108);
          _139 = atan(_131 * _132);
          _147 = (((_137 * _107) / _139) + _98);
          _148 = (((_137 * _103) / _139) + 0.5f);
        } else {
          _147 = 0.0f;
          _148 = 0.0f;
        }
      }
      _151 = (_147 * _35);
      _152 = _148;
    } else {
      _151 = TEXCOORD.y;
      _152 = TEXCOORD.x;
    }
  }
  _155 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_152, _151));  // [sem: _3__36__0__0__g_depth_sample]
  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _167 = __3__36__0__0__g_gbufferNormal.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _152) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _151) + -0.5f))), 0));
  _174 = (saturate(_167.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _178 = (saturate(_167.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _182 = (saturate(_167.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _184 = rsqrt(dot(float3(_174, _178, _182), float3(_174, _178, _182)));  // [sem: invLength]
  _185 = _184 * _174;
  _186 = _184 * _178;
  _187 = _182 * _184;
  _189 = (_152 * 2.0f) + -1.0f;
  _191 = 1.0f - (_151 * 2.0f);
  _192 = max(1e-07f, _155.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _204 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _192, mad((_invViewProj[3].y), _191, ((_invViewProj[3].x) * _189)));
  _213 = (mad((_invViewProj[0].z), _192, mad((_invViewProj[0].y), _191, ((_invViewProj[0].x) * _189))) + (_invViewProj[0].w)) / _204;
  _226 = ((_invViewProj[1].w) + mad((_invViewProj[1].z), _192, mad((_invViewProj[1].y), _191, ((_invViewProj[1].x) * _189)))) / _204;
  _239 = ((_invViewProj[2].w) + mad((_invViewProj[2].z), _192, mad((_invViewProj[2].y), _191, ((_invViewProj[2].x) * _189)))) / _204;
  _251 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _192, mad((_invViewProjRelative[3].y), _191, ((_invViewProjRelative[3].x) * _189)));
  _260 = (mad((_invViewProjRelative[0].z), _192, mad((_invViewProjRelative[0].y), _191, ((_invViewProjRelative[0].x) * _189))) + (_invViewProjRelative[0].w)) / _251;
  _269 = (mad((_invViewProjRelative[1].z), _192, mad((_invViewProjRelative[1].y), _191, ((_invViewProjRelative[1].x) * _189))) + (_invViewProjRelative[1].w)) / _251;
  _278 = (mad((_invViewProjRelative[2].z), _192, mad((_invViewProjRelative[2].y), _191, ((_invViewProjRelative[2].x) * _189))) + (_invViewProjRelative[2].w)) / _251;
  _280 = rsqrt(dot(float3(_260, _269, _278), float3(_260, _269, _278)));  // [sem: invLength]
  _281 = _280 * _260;
  _282 = _280 * _269;
  _283 = _280 * _278;
  _286 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_152, _151));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _290 = 4.0f / _35;
  _291 = _290 * _152;
  _292 = _290 * _151;
  _295 = WaveReadLaneFirst(_materialIndex);
  _303 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_295 < (uint)170000), _295, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._noiseTex);
  _314 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_303 < (uint)65000), _303, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_291, ((_time.x * 0.1f) + _292)));
  _320 = WaveReadLaneFirst(_materialIndex);
  _328 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_320 < (uint)170000), _320, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _330 = _328 * (_314.y + -0.3f);
  _332 = (_330 * 0.001f) + _152;
  _334 = (_330 * 0.02f) + _151;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_336.x, _336.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _351 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_336.x))))))) + 0.5f) * _332)), ((int)((((float)((int)((int)((float)((int)((int)(_336.y))))))) + 0.5f) * _334)), 0));
  _353 = _351.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _357 = (((float)((uint)((uint)((uint)((uint)(_351.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _362 = (((float)((uint)((uint)(((uint)((uint)(_351.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _364 = 1.0f - abs(_357);
  _365 = abs(_362);
  _366 = _364 - _365;
  if (!(_366 >= 0.0f)) {
    _377 = (select((_362 >= 0.0f), 1.0f, -1.0f) * _364);
    _378 = (select((_357 >= 0.0f), 1.0f, -1.0f) * (1.0f - _365));
  } else {
    _377 = _362;
    _378 = _357;
  }
  _380 = rsqrt(dot(float3(_378, _377, _366), float3(_378, _377, _366)));  // [sem: invLength]
  _381 = _380 * _378;
  _382 = _380 * _377;
  _383 = _380 * _366;
  _385 = rsqrt(dot(float3(_381, _382, _383), float3(_381, _382, _383)));  // [sem: invLength]
  _388 = WaveReadLaneFirst(_materialIndex);
  _396 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_388 < (uint)170000), _388, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._radius);
  _399 = WaveReadLaneFirst(_materialIndex);
  _407 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_399 < (uint)170000), _399, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _410 = saturate(1.0f - _407) * _396;
  if (!(!(_410 >= 0.001f))) {
    _413 = ddx_coarse(_281);
    _414 = ddx_coarse(_282);
    _415 = ddx_coarse(_283);
    _416 = ddy_coarse(_281);
    _417 = ddy_coarse(_282);
    _418 = ddy_coarse(_283);
    _419 = ddx_coarse(_152);
    _420 = ddx_coarse(_151);
    _421 = ddy_coarse(_152);
    _422 = ddy_coarse(_151);
    _425 = (_417 * _187) - (_418 * _186);
    _428 = (_418 * _185) - (_416 * _187);
    _431 = (_416 * _186) - (_417 * _185);
    _434 = (_415 * _186) - (_414 * _187);
    _437 = (_413 * _187) - (_415 * _185);
    _440 = (_414 * _185) - (_413 * _186);
    _443 = (_421 * _434) + (_425 * _419);
    _446 = (_421 * _437) + (_428 * _419);
    _449 = (_421 * _440) + (_431 * _419);
    _452 = (_422 * _434) + (_425 * _420);
    _455 = (_422 * _437) + (_428 * _420);
    _458 = (_422 * _440) + (_420 * _431);
    _461 = max(dot(float3(_443, _446, _449), float3(_443, _446, _449)), dot(float3(_452, _455, _458), float3(_452, _455, _458)));
    _464 = rsqrt(select((!(_461 == 0.0f)), _461, 0.1f));  // [sem: rsqrt_val]
    _467 = WaveReadLaneFirst(_materialIndex);
    _475 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_467 < (uint)170000), _467, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._squareSize);
    _476 = _475 * _213;
    _477 = _475 * _226;
    _478 = _475 * _239;
    _479 = floor(_476);
    _480 = floor(_477);
    _481 = floor(_478);
    _483 = -1;
    _484 = 0.0f;
    _485 = 0.0f;
    _486 = 0.0f;
    _487 = 10.0f;
    _488 = -1;
    _489 = -1;
    while(true) {
      _543 = _488;
      _544 = _489;
      _490 = (float)((int)(_483));
      _491 = (float)((int)(_488));
      _492 = (float)((int)(_489));
      _494 = sin(_490 + _479);
      _496 = sin(_491 + _480);
      _498 = sin(_492 + _481);
      _501 = _time.x * 0.2f;
      _508 = sin(frac(sin(dot(float3(_494, _496, _498), float3(12.989f, 78.233f, 37.719f))) * 143758.55f) * _501) + _490;
      _515 = sin(frac(sin(dot(float3(_494, _496, _498), float3(39.346f, 11.135f, 83.155f))) * 143758.55f) * _501) + _491;
      _522 = sin(frac(sin(dot(float3(_494, _496, _498), float3(73.156f, 52.235f, 9.151f))) * 143758.55f) * _501) + _492;
      _533 = max(abs((_479 - _476) + _508), max(abs((_480 - _477) + _515), abs((_481 - _478) + _522)));
      _534 = (_533 < _487);
      _536 = select(_534, _508, _486);
      _537 = select(_534, _515, _485);
      _538 = select(_534, _522, _484);
      _539 = (int)(_483) + (int)(1);
      if (!(_539 == 2)) {
        _542 = _539;
        _543 = _488;
        _544 = _489;
        while(true) {
          _483 = _542;
          _484 = _538;
          _485 = _537;
          _486 = _536;
          _487 = select(_534, _533, _487);
          _488 = _543;
          _489 = _544;
          __loop_jump_target = 482;
          break;
          break;
        }
        if (__loop_jump_target == 482) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _546 = (int)(_488) + (int)(1);
      if (!(_546 == 2)) {
        _542 = -1;
        _543 = _546;
        _544 = _489;
        while(true) {
          _483 = _542;
          _484 = _538;
          _485 = _537;
          _486 = _536;
          _487 = select(_534, _533, _487);
          _488 = _543;
          _489 = _544;
          __loop_jump_target = 482;
          break;
          break;
        }
        if (__loop_jump_target == 482) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _549 = (int)(_489) + (int)(1);
      if (!(_549 == 2)) {
        _542 = -1;
        _543 = -1;
        _544 = _549;
        while(true) {
          _483 = _542;
          _484 = _538;
          _485 = _537;
          _486 = _536;
          _487 = select(_534, _533, _487);
          _488 = _543;
          _489 = _544;
          __loop_jump_target = 482;
          break;
          break;
        }
        if (__loop_jump_target == 482) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _552 = _464 * _281;
      _554 = (_536 + _479) / _475;
      _556 = (_537 + _480) / _475;
      _558 = (_538 + _481) / _475;
      _570 = (_viewProj[3].w) + mad((_viewProj[3].z), _558, mad((_viewProj[3].y), _556, ((_viewProj[3].x) * _554)));
      _581 = (((mad((_viewProj[0].z), _558, mad((_viewProj[0].y), _556, ((_viewProj[0].x) * _554))) + (_viewProj[0].w)) / _570) * 0.5f) + 0.5f;
      _592 = 0.5f - (((mad((_viewProj[1].z), _558, mad((_viewProj[1].y), _556, ((_viewProj[1].x) * _554))) + (_viewProj[1].w)) / _570) * 0.5f);
      _595 = _554 - _mainPosition.x;
      _597 = _556 - _mainPosition.y;
      _599 = _558 - _mainPosition.z;
      // [sem: expr_sat]
      _608 = saturate(1.0f - ((1.0f - (sqrt(dot(float3(_595, _597, _599), float3(_595, _597, _599))) * (1.0f / max(1e-05f, _410)))) * 1.0152284f));
      _610 = 1.0f - saturate(_608);
      _611 = _608 * 0.5f;
      _613 = (_152 - _581) / _610;
      _615 = (_151 - _592) / _610;
      _616 = sin(_611);
      _617 = cos(_611);
      _621 = mad((-0.0f - _616), _615, (_617 * _613)) + _581;
      _624 = mad(_617, _615, (_616 * _613)) + _592;
      _626 = 1;
      _627 = 0.0f;
      _628 = 0.0f;
      _629 = 0.0f;
      while(true) {
        _655 = ((((float)((int)((int)(6) - (int)(_626)))) * 0.083333336f) * saturate(_155.x * 1.5f)) * saturate(frac(sin(dot(float2(((float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(_152))))), ((float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(_151)))))), float2(12.9898f, 78.233f))) * 43758.547f) + 0.5f);
        _661 = mad((_464 * _449), _283, mad((_464 * _446), _282, (_552 * _443))) * _655;
        _667 = mad((_464 * _458), _283, mad((_464 * _455), _282, (_552 * _452))) * _655;
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _672 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_661 + _152), (_667 + _151)));
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _676 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_661 + _621), (_667 + _624)));
        _682 = WaveReadLaneFirst(_materialIndex);
        _690 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_682 < (uint)170000), _682, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._maskThreshold);
        _692 = (float)((bool)(_672.w < _690));
        _696 = (_692 * ((_676.x * 0.4f) - _629)) + _629;
        _700 = (_692 * ((_676.y * 0.4f) - _628)) + _628;
        _704 = (_692 * ((_676.z * 0.4f) - _627)) + _627;
        if (!(_672.w > 0.9f)) {
          _707 = (int)(_626) + (int)(1);
          if ((int)_707 < (int)6) {
            _710 = _707;
            _711 = _704;
            _712 = _700;
            _713 = _696;
            while(true) {
              _626 = _710;
              _627 = _711;
              _628 = _712;
              _629 = _713;
              __loop_jump_target = 625;
              break;
              break;
            }
            if (__loop_jump_target == 625) {
              __loop_jump_target = -1;
              continue;
            }
            if (__loop_jump_target != -1) {
              break;
            }
          }
        }
        _717 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_621, _624));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _720 = WaveReadLaneFirst(_materialIndex);
        _728 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_720 < (uint)170000), _720, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._maskThreshold);
        _730 = (float)((bool)(_672.w < _728));
        if (!((_global_0[0]) == 0)) {
          _710 = _626;
          _711 = _627;
          _712 = _628;
          _713 = _629;
          while(true) {
            _626 = _710;
            _627 = _711;
            _628 = _712;
            _629 = _713;
            __loop_jump_target = 625;
            break;
            break;
          }
          if (__loop_jump_target == 625) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
        }
        _745 = ((_730 * (_717.z - _704)) + _704);
        _746 = ((_730 * (_717.y - _700)) + _700);
        _747 = ((_730 * (_717.x - _696)) + _696);
        break;
      }
      break;
    }
  } else {
    _745 = 0.0f;
    _746 = 0.0f;
    _747 = 0.0f;
  }
  _750 = WaveReadLaneFirst(_materialIndex);
  _758 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_750 < (uint)170000), _750, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _761 = WaveReadLaneFirst(_materialIndex);
  _769 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_761 < (uint)170000), _761, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _772 = saturate((_769 * 100.0f) + -99.0f);  // [sem: expr_sat]
  if (!(!(_772 >= 0.001f))) {
    if ((_353 == _renderPassSelfPlayer) || (_353 == _renderPassTest) || (_353 == _renderPassDetectRemoteCatch) || (_353 == _renderPassDetectPickedRemoteCatch)) {
      _793 = WaveReadLaneFirst(_materialIndex);
      _801 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_793 < (uint)170000), _793, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._noiseTex);
      _814 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_801 < (uint)65000), _801, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_291 - (_time.x * 0.22f)), (_292 - (_time.x * 0.18f))));
      _816 = _814.x + -0.3f;
      _819 = ((_814.x + -0.4f) * 10.471975f) + -1.5707964f;
      _820 = _816 * 0.006f;
      _822 = -1.0f;
      _823 = 0.0f;
      _824 = 0.0f;
      _825 = 0.0f;
      _826 = 0.0f;
      _827 = _820;
      _828 = _820;
      while(true) {
        _832 = _152 - ((_828 * _822) * sin(_819));
        _836 = _151 - ((_827 * _822) * cos(_819));
        _837 = _832 + -0.5f;
        _838 = _836 + -0.5f;
        _847 = ((_816 * 0.06f) * rsqrt(dot(float2(_837, _838), float2(_837, _838)))) * sqrt((_838 * _838) + (_837 * _837));
        _848 = _847 * _837;
        _849 = _847 * _838;
        _852 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_832, _836));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _860 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_832 - _848), (_836 - _849))))).x) * 0.2f) + _826;
        _862 = (_852.y * 0.2f) + _825;
        _868 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_848 + _832), (_849 + _836))))).z) * 0.2f) + _824;
        _870 = (_852.w * 0.2f) + _823;
        _871 = _822 + 0.2f;
        if (!(!(_871 <= 1.0f))) {
          _883 = _828 * 1.01f;
          _884 = _827 * 1.01f;
          _885 = _860 * 0.9f;
          _886 = _862 * 0.9f;
          _887 = _868 * 0.9f;
          _888 = _870 * 0.9f;
          _822 = _871;
          _823 = _888;
          _824 = _887;
          _825 = _886;
          _826 = _885;
          _827 = _884;
          _828 = _883;
          continue;
        }
        if (!(_353 == _renderPassSelfPlayer)) {
          _890 = ((int)(uint)((int)(_353 == _renderPassTest)));
        } else {
          _890 = 1;
        }
        _892 = saturate(_870 * 1.08f);  // [sem: expr_sat]
        _895 = max(0.001f, _exposure0.x);
        _897 = (_890 != 0);
        _911 = (((_868 * 0.54f) / _895) * _892);
        _912 = ((((_862 * 0.54f) * select(_897, 0.7f, 0.8f)) / _895) * _892);
        _913 = ((((_860 * 0.54f) * select(_897, 0.55f, 0.5f)) / _895) * _892);
        break;
      }
    } else {
      _911 = 0.0f;
      _912 = 0.0f;
      _913 = 0.0f;
    }
  } else {
    _911 = 0.0f;
    _912 = 0.0f;
    _913 = 0.0f;
  }
  if (!(_353 == _renderPassSelfPlayer)) {
    if (!(_353 == _renderPassTest)) {
      _925 = saturate(_758 * 2.0f);  // [sem: expr_sat]
    } else {
      _925 = _772;  // [sem: expr_sat]
    }
  } else {
    _925 = _772;  // [sem: expr_sat]
  }
  _928 = (_925 * (_745 - _286.z)) + _286.z;
  _931 = (_925 * (_746 - _286.y)) + _286.y;
  _934 = (_925 * (_747 - _286.x)) + _286.x;
  _937 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_152, _151), 0.0f);  // [sem: _3__36__0__0__g_specularAO_sampleLod]
  _941 = WaveReadLaneFirst(_materialIndex);
  _949 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_941 < (uint)170000), _941, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightBackground);
  if (!(!(_949 >= 0.001f))) {
    if (!(_353 == _renderPassSelfPlayer)) {
      if (!(_353 == _renderPassTest)) {
        _962 = _213 - _mainPosition.x;
        _964 = _226 - _mainPosition.y;
        _966 = _239 - _mainPosition.z;
        _972 = sqrt(((_964 * _964) + (_962 * _962)) + (_966 * _966));
        _975 = 1.0f - saturate(_972 * 0.033333335f);
        _988 = (((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _152) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _151) + -0.5f))), 0)))).x) & 127;
        if ((uint)((int)(_988) + (int)(-52)) < (uint)16) {
          _994 = (uint)((_bufferSizeAndInvSize.x * _332) + -0.5f);
          _997 = (uint)((_bufferSizeAndInvSize.y * _334) + -0.5f);
          _999 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_994, _997, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
          _1002 = __3__36__0__0__g_gbufferNormal.Load(int3(_994, _997, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
          _1009 = (saturate(_1002.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _1013 = (saturate(_1002.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _1017 = (saturate(_1002.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _1019 = rsqrt(dot(float3(_1009, _1013, _1017), float3(_1009, _1013, _1017)));  // [sem: invLength]
          _1020 = _1019 * _1009;
          _1021 = _1019 * _1013;
          _1022 = _1017 * _1019;
          _1027 = (((float)((uint)((uint)(((uint)((uint)(_999.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _1031 = (((float)((uint)((uint)(_999.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _1033 = (_1027 + _1031) * 0.5f;
          _1035 = (_1027 - _1031) * 0.5f;
          _1039 = (1.0f - abs(_1033)) - abs(_1035);
          _1041 = rsqrt(dot(float3(_1033, _1035, _1039), float3(_1033, _1035, _1039)));  // [sem: invLength]
          _1042 = _1041 * _1033;
          _1043 = _1041 * _1035;
          _1044 = _1041 * _1039;
          _1046 = select((_1022 >= 0.0f), 1.0f, -1.0f);
          _1049 = -0.0f - (1.0f / (_1046 + _1022));
          _1050 = _1021 * _1049;
          _1051 = _1050 * _1020;
          _1052 = _1046 * _1020;
          _1058 = mad(_1044, _1020, mad(_1043, _1051, ((((_1052 * _1020) * _1049) + 1.0f) * _1042)));
          _1064 = mad(_1044, _1021, mad(_1043, ((_1050 * _1021) + _1046), ((_1042 * _1046) * _1051)));
          _1069 = mad(_1044, _1022, mad(_1043, (-0.0f - _1021), (-0.0f - (_1052 * _1042))));
          _1071 = rsqrt(dot(float3(_1058, _1064, _1069), float3(_1058, _1064, _1069)));  // [sem: invLength]
          _1084 = 1.0f - saturate(dot(float3((_1071 * _1058), (_1071 * _1064), (_1071 * _1069)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
          _1087 = max(0.001f, _exposure0.x);
          _1090 = (_1084 * _1084) * (_975 * _949);
          _1299 = _937.w;
          _1300 = (((0.1f / _1087) * _1090) + _928);
          _1301 = (((0.08f / _1087) * _1090) + _931);
          _1302 = (((0.05f / _1087) * _1090) + _934);
        } else {
          _1103 = _213 - _aimHighlightPosition.x;
          _1105 = _226 - _aimHighlightPosition.y;
          _1107 = _239 - _aimHighlightPosition.z;
          _1118 = 1.0f - saturate(sqrt(((_1105 * _1105) + (_1103 * _1103)) + (_1107 * _1107)) / (_aimHighlightPosition.w * 5.0f));
          _1127 = saturate(((_1118 * _1118) * _1118) + ((1.0f - saturate(_972 * 0.5f)) * 0.1f)) * _937.w;
          _1129 = (_937.w * _937.w) * _975;
          _1130 = _1127 * 0.875f;
          _1131 = _1127 * 1.625f;
          _1132 = _1127 * 2.5f;
          _1133 = _1127 * 60.0f;
          _1142 = (((1.0f - saturate(_1133 + -2.0f)) * saturate(_1133 + -1.5f)) * (0.35f - _1130)) + _1130;
          _1151 = (((0.65f - _1131) * saturate(_1133 + -1.7f)) * (1.0f - saturate(_1133 + -3.0f))) + _1131;
          _1160 = ((saturate(_1133 + -2.2f) * (1.0f - _1132)) * (1.0f - saturate(_1133 + -6.0f))) + _1132;
          _1162 = saturate(_1133 + -7.0f);  // [sem: expr_sat]
          _1163 = 1.0f - _1129;
          _1172 = (((((_1162 * ((_1127 * 1.75f) - _1142)) + _1142) * _1163) + (_1129 * 0.35f)) * _949) + _934;
          _1181 = (((((((_1127 * 3.25f) - _1151) * _1162) + _1151) * _1163) + (_1129 * 0.65f)) * _949) + _931;
          _1189 = (((((((_1127 * 5.0f) - _1160) * _1162) + _1160) * _1163) + _1129) * _949) + _928;
          _1190 = (int)(_988) + (int)(-105);
          if (((uint)_1190 < (uint)2) || (((_988 == 107) || (_988 == 26)) || ((uint)((int)(_988) + (int)(-27)) < (uint)2))) {
            _1202 = _mainPosition.x - _viewPos.x;
            _1204 = _mainPosition.y - _viewPos.y;
            _1206 = _mainPosition.z - _viewPos.z;
            _1218 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _1206, mad((_viewProjRelative[3].y), _1204, ((_viewProjRelative[3].x) * _1202)));
            _1227 = (mad((_viewProjRelative[0].z), _1206, mad((_viewProjRelative[0].y), _1204, ((_viewProjRelative[0].x) * _1202))) + (_viewProjRelative[0].w)) / _1218;
            _1238 = 0.5f - (((mad((_viewProjRelative[1].z), _1206, mad((_viewProjRelative[1].y), _1204, ((_viewProjRelative[1].x) * _1202))) + (_viewProjRelative[1].w)) / _1218) * 0.5f);
            _1242 = ((_view[0].x) * 5.0f) + _1202;
            _1246 = ((_view[0].y) * 5.0f) + _1204;
            _1250 = ((_view[0].z) * 5.0f) + _1206;
            _1254 = mad((_viewProjRelative[3].z), _1250, mad((_viewProjRelative[3].y), _1246, (_1242 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
            _1262 = (0.5f - (((mad((_viewProjRelative[1].z), _1250, mad((_viewProjRelative[1].y), _1246, (_1242 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _1254) * 0.5f)) - _1238;
            _1270 = (_35 * 0.5f) * (((mad((_viewProjRelative[0].z), _1250, mad((_viewProjRelative[0].y), _1246, (_1242 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _1254) - _1227);
            _1271 = _151 - _1238;
            _1275 = ((_152 + -0.5f) - (_1227 * 0.5f)) * _35;
            _1287 = 1.0f - saturate(sqrt((_1271 * _1271) + (_1275 * _1275)) / max(0.001f, sqrt((_1270 * _1270) + (_1262 * _1262))));
            _1292 = (_1287 * _1287) * (select(((uint)_1190 < (uint)3), 0.05f, 0.005f) * _949);
            _1299 = _1129;
            _1300 = (_1292 + _1189);
            _1301 = ((_1292 * 0.65f) + _1181);
            _1302 = ((_1292 * 0.35f) + _1172);
          } else {
            _1299 = _1129;
            _1300 = _1189;
            _1301 = _1181;
            _1302 = _1172;
          }
        }
      } else {
        _1299 = _937.w;
        _1300 = _928;
        _1301 = _931;
        _1302 = _934;
      }
    } else {
      _1299 = _937.w;
      _1300 = _928;
      _1301 = _931;
      _1302 = _934;
    }
  } else {
    _1299 = _937.w;
    _1300 = _928;
    _1301 = _931;
    _1302 = _934;
  }
  if (_772 > 0.0f) {
    _1308 = ((float)((int)((int)(_213 * 2000.0f)))) * 0.0005f;
    _1312 = ((float)((int)((int)(_226 * 2000.0f)))) * 0.0005f;
    _1316 = ((float)((int)((int)(_239 * 2000.0f)))) * 0.0005f;
    _1322 = saturate(frac(sin(dot(float3(_1308, _1312, _1316), float3(127.1f, 311.7f, 74.7f))) * 43758.547f) + -0.5f);  // [sem: expr_sat]
    _1328 = saturate(frac(sin(dot(float3(_1308, _1312, _1316), float3(269.5f, 183.3f, 246.1f))) * 43758.547f) + -0.5f);  // [sem: expr_sat]
    _1334 = saturate(frac(sin(dot(float3(_1308, _1312, _1316), float3(113.5f, 271.9f, 124.6f))) * 43758.547f) + -0.5f);  // [sem: expr_sat]
    _1339 = frac(sin(dot(float2(_152, _151), float2(127.1f, 311.7f))) * 437.545f) * 0.5f;
    _1345 = ((frac((_1328 + _1322) - _1334) - _1339) * 0.025f) + _152;
    _1351 = ((frac((_1328 - _1322) + _1334) - _1339) * 0.025f) + _151;
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_1353.x, _1353.y);
    // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
    _1368 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_1353.x))))))) + 0.5f) * _1345)), ((int)((((float)((int)((int)((float)((int)((int)(_1353.y))))))) + 0.5f) * _1351)), 0));
    _1373 = (((float)((uint)((uint)((uint)((uint)(_1368.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _1378 = (((float)((uint)((uint)(((uint)((uint)(_1368.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _1380 = 1.0f - abs(_1373);
    _1381 = abs(_1378);
    _1382 = _1380 - _1381;
    if (!(_1382 >= 0.0f)) {
      _1393 = (select((_1378 >= 0.0f), 1.0f, -1.0f) * _1380);
      _1394 = (select((_1373 >= 0.0f), 1.0f, -1.0f) * (1.0f - _1381));
    } else {
      _1393 = _1378;
      _1394 = _1373;
    }
    _1396 = rsqrt(dot(float3(_1394, _1393, _1382), float3(_1394, _1393, _1382)));  // [sem: invLength]
    _1397 = _1396 * _1394;
    _1398 = _1396 * _1393;
    _1399 = _1396 * _1382;
    _1401 = rsqrt(dot(float3(_1397, _1398, _1399), float3(_1397, _1398, _1399)));  // [sem: invLength]
    _1402 = _1401 * _1397;
    _1403 = _1401 * _1398;
    _1404 = _1401 * _1399;
    _1407 = WaveReadLaneFirst(_materialIndex);
    _1415 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1407 < (uint)170000), _1407, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimGimmickColor);
    _1418 = (float)((uint)((uint)(((uint)((uint)(_1415)) >> 16) & 255)));
    _1421 = (float)((uint)((uint)(((uint)((uint)(_1415)) >> 8) & 255)));
    _1423 = (float)((uint)((uint)(_1415 & 255)));
    _1432 = select(((_1418 * 0.003921569f) < 0.04045f), (_1418 * 0.000303527f), exp2(log2((_1418 * 0.003717127f) + 0.052132703f) * 2.4f));
    _1441 = select(((_1421 * 0.003921569f) < 0.04045f), (_1421 * 0.000303527f), exp2(log2((_1421 * 0.003717127f) + 0.052132703f) * 2.4f));
    _1450 = select(((_1423 * 0.003921569f) < 0.04045f), (_1423 * 0.000303527f), exp2(log2((_1423 * 0.003717127f) + 0.052132703f) * 2.4f));
    _1453 = WaveReadLaneFirst(_materialIndex);
    _1461 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1453 < (uint)170000), _1453, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightColor);
    _1464 = (float)((uint)((uint)(((uint)((uint)(_1461)) >> 16) & 255)));
    _1467 = (float)((uint)((uint)(((uint)((uint)(_1461)) >> 8) & 255)));
    _1469 = (float)((uint)((uint)(_1461 & 255)));
    _1470 = _152 + -0.5f;
    _1471 = _151 + -0.5f;
    _1475 = sqrt((_1470 * _1470) + (_1471 * _1471));
    if (_353 == _renderPassAimHighlight) {
      _1482 = WaveReadLaneFirst(_materialIndex);
      _1490 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1482 < (uint)170000), _1482, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._auraTex);
      _1511 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1490 < (uint)65000), _1490, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((8.0f / _35) * _152) + ((_314.w + -0.5f) * 0.1f)), ((((5.0f / _35) * _151) + ((_314.z + -0.5f) * 0.1f)) - (_time.x * 0.02f))));
      _1525 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _152)), ((int)(_customRenderPassSizeInvSize.y * _151)), 0)))).x));
      _1537 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _1525, mad((_invViewProj[3].y), _191, ((_invViewProj[3].x) * _189)));
      _1552 = (((mad((_invViewProj[0].z), _1525, mad((_invViewProj[0].y), _191, ((_invViewProj[0].x) * _189))) + (_invViewProj[0].w)) / _1537) - _aimHighlightPosition.x) - ((_1511.x + -0.5f) * 0.4f);
      _1566 = (((mad((_invViewProj[1].z), _1525, mad((_invViewProj[1].y), _191, ((_invViewProj[1].x) * _189))) + (_invViewProj[1].w)) / _1537) - _aimHighlightPosition.y) - ((_1511.y + -0.5f) * 0.4f);
      _1580 = (((mad((_invViewProj[2].z), _1525, mad((_invViewProj[2].y), _191, ((_invViewProj[2].x) * _189))) + (_invViewProj[2].w)) / _1537) - _aimHighlightPosition.z) - ((_1511.z + -0.5f) * 0.4f);
      _1590 = 1.0f - saturate(sqrt(((_1566 * _1566) + (_1552 * _1552)) + (_1580 * _1580)) / _aimHighlightPosition.w);
      _1599 = (_1590 * 0.3333f) * (sin((_time.x * 10.0f) + (_1590 * 20.0f)) + 1.5f);
      _1600 = _1599 * _1599;
      _1613 = (((((_1600 * _1600) * ((pow(_1590, 5.0f)) * 7.999999e+06f)) * _1600) + 1.0f) / max(0.001f, _exposure0.x)) * _1600;
      if (((_nearFarProj.x / _192) + 0.05f) < (_nearFarProj.x / _1525)) {
        _1642 = 1.0f - saturate(dot(float3(((((_385 * _381) - _1402) * 0.75f) + _1402), ((((_385 * _382) - _1403) * 0.75f) + _1403), ((((_385 * _383) - _1404) * 0.75f) + _1404)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
        _1643 = _1642 * _1642;
        _1645 = (_1643 * _1643) * _1642;
        _1669 = ((_1645 * (lerp(_1450, 1.0f, 0.3f))) + (_1300 * 4.0f));
        _1670 = ((_1645 * (lerp(_1441, 0.65f, 0.3f))) + (_1301 * 4.0f));
        _1671 = ((_1645 * (lerp(_1432, 0.35f, 0.3f))) + (_1302 * 4.0f));
      } else {
        _1669 = (_1450 * _1299);
        _1670 = (_1441 * _1299);
        _1671 = (_1432 * _1299);
      }
      _1755 = ((((_1669 - _1300) + (select(((_1469 * 0.003921569f) < 0.04045f), (_1469 * 0.000303527f), exp2(log2((_1469 * 0.003717127f) + 0.052132703f) * 2.4f)) * _1613)) * _772) + _1300);
      _1756 = ((((_1670 - _1301) + (select(((_1467 * 0.003921569f) < 0.04045f), (_1467 * 0.000303527f), exp2(log2((_1467 * 0.003717127f) + 0.052132703f) * 2.4f)) * _1613)) * _772) + _1301);
      _1757 = ((((_1671 - _1302) + (select(((_1464 * 0.003921569f) < 0.04045f), (_1464 * 0.000303527f), exp2(log2((_1464 * 0.003717127f) + 0.052132703f) * 2.4f)) * _1613)) * _772) + _1302);
      _1758 = _1475;
    } else {
      if (((float)((uint)((uint)(_1368.x & 255)))) == ((float)((uint)((uint)(_renderPassAimHighlight))))) {
        if (((_nearFarProj.x / _192) + 0.05f) < (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1345)), ((int)(_customRenderPassSizeInvSize.y * _1351)), 0)))).x)))) {
          _1743 = min(max(saturate(1.0f - (_1475 * 2.0f)), 0.1f), 1.0f) * 0.05f;
          _1755 = (_1743 * _1450);
          _1756 = (_1743 * _1441);
          _1757 = (_1743 * _1432);
          _1758 = _1475;
        } else {
          _1755 = _1300;
          _1756 = _1301;
          _1757 = _1302;
          _1758 = _1475;
        }
      } else {
        _1755 = _1300;
        _1756 = _1301;
        _1757 = _1302;
        _1758 = _1475;
      }
    }
  } else {
    _1748 = _152 + -0.5f;
    _1749 = _151 + -0.5f;
    _1755 = _1300;
    _1756 = _1301;
    _1757 = _1302;
    _1758 = sqrt((_1748 * _1748) + (_1749 * _1749));
  }
  _1761 = saturate((_1758 + -0.01f) * 1.010101f);  // [sem: expr_sat]
  _1764 = WaveReadLaneFirst(_materialIndex);
  _1772 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1764 < (uint)170000), _1764, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._vignetteIntensity);
  _1775 = WaveReadLaneFirst(_materialIndex);
  _1783 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1775 < (uint)170000), _1775, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _1790 = 1.0f - ((((_1761 * _1761) * (3.0f - (_1761 * 2.0f))) * _1772) * _1783);
  _1793 = max(0.0f, (_1790 * (_1757 + _913)));
  _1796 = max(0.0f, (_1790 * (_1756 + _912)));
  _1799 = max(0.0f, (_1790 * (_1755 + _911)));
  _1800 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1813 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1800, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1813 = 1.0f;
  }
  _1816 = (_localToneMappingParams.w > 0.0f);
  if (_1816) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1793, _1796, _1799));
    _2064 = _rndx_tonemapped_color.x;
    _2071 = _rndx_tonemapped_color.y;
    _2078 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _2084 = 1.0f - abs(_etcParams.w);
      _2085 = saturate(_etcParams.w);  // [sem: expr_sat]
      _2087 = (_2084 * _2064) + _2085;
      _2089 = (_2084 * _2071) + _2085;
      _2091 = (_2084 * _2078) + _2085;
      if (_colorGradingParams.w > 0.0f) {
        _2096 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _2113 = (((max(0.0f, (1.0f - _2091)) - _2091) * _2096) + _2091);
        _2114 = (((max(0.0f, (1.0f - _2089)) - _2089) * _2096) + _2089);
        _2115 = (((max(0.0f, (1.0f - _2087)) - _2087) * _2096) + _2087);
      } else {
        _2113 = _2091;
        _2114 = _2089;
        _2115 = _2087;
      }
      _2117 = _userImageAdjust.y + 1.0f;
      _2119 = _userImageAdjust.x + 0.5f;
      _2122 = ((_2115 + -0.5f) * _2117) + _2119;
      _2125 = ((_2114 + -0.5f) * _2117) + _2119;
      _2128 = ((_2113 + -0.5f) * _2117) + _2119;
      _2134 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _2169 = exp2(log2(saturate(mad(_colorBlind2.z, _2128, mad(_colorBlind2.y, _2125, (_colorBlind2.x * _2122))))) * _2134);
      _2170 = exp2(log2(saturate(mad(_colorBlind1.z, _2128, mad(_colorBlind1.y, _2125, (_colorBlind1.x * _2122))))) * _2134);
      _2171 = exp2(log2(saturate(mad(_colorBlind0.z, _2128, mad(_colorBlind0.y, _2125, (_colorBlind0.x * _2122))))) * _2134);
    } else {
      _2169 = _2078;
      _2170 = _2071;
      _2171 = _2064;
    }
  } else {
    _2169 = _1799;
    _2170 = _1796;
    _2171 = _1793;
  }
  if (_etcParams.y > 1.0f) {
    _2176 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _2179 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _2185 = saturate(1.0f - (dot(float2(_2176, _2179), float2(_2176, _2179)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _2190 = (_2185 * _2169);
    _2191 = (_2185 * _2170);
    _2192 = (_2185 * _2171);
  } else {
    _2190 = _2169;
    _2191 = _2170;
    _2192 = _2171;
  }
  if (_1816 && (_etcParams.z > 0.0f)) {
    _2222 = select((_2190 <= 0.0031308f), (_2190 * 12.92f), (((pow(_2190, 0.41666666f)) * 1.055f) + -0.055f));
    _2223 = select((_2191 <= 0.0031308f), (_2191 * 12.92f), (((pow(_2191, 0.41666666f)) * 1.055f) + -0.055f));
    _2224 = select((_2192 <= 0.0031308f), (_2192 * 12.92f), (((pow(_2192, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _2222 = _2190;
    _2223 = _2191;
    _2224 = _2192;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2227 = (float)((uint)((uint)(_1800)));
    if (!(_2227 < _viewDir.w)) {
      if (!(!(_2227 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _2238 = 0.0f;
        _2239 = 0.0f;
        _2240 = 0.0f;
      } else {
        _2238 = _2223;
        _2239 = _2224;
        _2240 = _2222;
      }
    } else {
      _2238 = 0.0f;
      _2239 = 0.0f;
      _2240 = 0.0f;
    }
  } else {
    _2238 = _2223;
    _2239 = _2224;
    _2240 = _2222;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_2239, _2238, _2240), _sunDirection.y, _moonDirection.y);
    _2239 = _rndx_final_color.x;
    _2238 = _rndx_final_color.y;
    _2240 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _2239;
  SV_Target.y = _2238;
  SV_Target.z = _2240;
  SV_Target.w = _1813;
  return SV_Target;
}
