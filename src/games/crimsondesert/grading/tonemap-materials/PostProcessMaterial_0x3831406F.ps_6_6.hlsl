struct PostProcessTransitionStruct {
  uint _sceneSampleType;
  uint _sceneDistortTex;
  float2 _sceneDistortTexScale;
  float2 _sceneDistortIntensity;
  float _scenePolarDistort;
  float2 _scenePolarDistortCenter;
  float _topVignetteRatio;
  float _topVignetteRadius;
  float _topVignettePower;
  uint _topVignetteColor;
  float _sideVignetteRatio;
  float _sideVignetteRadius;
  float _sideVignettePower;
  uint _sideVignetteColor;
  float _bottomVignetteRatio;
  float _bottomVignetteRadius;
  float _bottomVignettePower;
  uint _bottomVignetteColor;
  float _impactFrame;
  float _impactFrameFresnel;
  float _impactFrameFresnelIntensity;
  float _impactFrameInverse;
  uint _chapterTransitionTex;
  uint _chapterTransitionNoiseTex;
  float _chapterTransition;
  float _chapterTransitionUseDivide;
};

struct BindlessParameters_PostProcessTransition {
  PostProcessTransitionStruct BindlessParameters_PostProcessTransition;
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

typedef BindlessParameters_PostProcessTransition BindlessParameters_PostProcessTransition_t;
ConstantBuffer<BindlessParameters_PostProcessTransition_t> BindlessParameters_PostProcessTransition[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticBilinearBlackBorder : register(s4, space4);

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
  float _177;
  float _178;
  float _483;
  float _484;
  float _485;
  float _486;
  float _487;
  float _488;
  float _489;
  int _537;
  float _605;
  float _620;
  float _621;
  float _622;
  float _756;
  float _757;
  float _758;
  float _858;
  float _859;
  float _860;
  float _959;
  float _960;
  float _961;
  float _1146;
  float _1147;
  float _1148;
  float _1162;
  float _1367;
  float _1368;
  float _1369;
  float _1462;
  float _1463;
  float _1464;
  float _1518;
  float _1519;
  float _1520;
  float _1539;
  float _1540;
  float _1541;
  float _1571;
  float _1572;
  float _1573;
  float _1587;
  float _1588;
  float _1589;
  int _43;
  float _51;
  float _55;
  int _56;
  int _64;
  float4 _72;
  int _75;
  float _83;
  float _87;
  int _93;
  float _101;
  float _105;
  float _106;
  float _107;
  float _109;
  bool _110;
  bool _111;
  bool _112;
  bool _113;
  float _117;
  int _118;
  float _126;
  float _130;
  int _131;
  int _139;
  float4 _158;
  int _161;
  float _169;
  float _171;
  float _179;
  float _180;
  int _183;
  int _191;
  float4 _195;
  uint _203;
  uint _207;
  uint4 _209;
  float4 _212;
  float _219;
  float _223;
  float _227;
  float _229;
  float _230;
  float _231;
  float _232;
  float _237;
  float _241;
  float _243;
  float _245;
  float _249;
  float _251;
  float _252;
  float _253;
  float _254;
  float _256;
  float _259;
  float _260;
  float _261;
  float _262;
  float _268;
  float _274;
  float _279;
  float _281;
  float4 _291;
  uint _299;
  uint _303;
  uint4 _305;
  float4 _308;
  float _315;
  float _319;
  float _323;
  float _325;
  float _326;
  float _327;
  float _328;
  float _333;
  float _337;
  float _339;
  float _341;
  float _345;
  float _347;
  float _348;
  float _349;
  float _350;
  float _352;
  float _355;
  float _356;
  float _357;
  float _358;
  float _364;
  float _370;
  float _375;
  float _377;
  float4 _388;
  uint _396;
  uint _400;
  uint4 _402;
  float4 _405;
  float _412;
  float _416;
  float _420;
  float _422;
  float _423;
  float _424;
  float _425;
  float _430;
  float _434;
  float _436;
  float _438;
  float _442;
  float _444;
  float _445;
  float _446;
  float _447;
  float _449;
  float _452;
  float _453;
  float _454;
  float _455;
  float _461;
  float _467;
  float _472;
  float _474;
  uint2 _491;
  int _508;
  bool _509;
  bool _510;
  int _514;
  float _522;
  float _540;
  int _543;
  float _551;
  float _554;
  int _557;
  float _565;
  float _566;
  float _582;
  int _585;
  float _593;
  float _609;
  int _625;
  float _633;
  int _636;
  float _644;
  int _647;
  float _655;
  float _658;
  float _659;
  int _662;
  float _670;
  int _673;
  float _681;
  int _684;
  int _692;
  float _695;
  float _698;
  float _700;
  float _703;
  float _718;
  float _761;
  float _762;
  int _765;
  float _773;
  int _776;
  float _784;
  int _787;
  int _795;
  float _798;
  float _801;
  float _803;
  float _806;
  float _820;
  float _863;
  float _864;
  int _867;
  float _875;
  int _878;
  float _886;
  int _889;
  int _897;
  float _900;
  float _903;
  float _905;
  float _908;
  float _921;
  int _964;
  float _972;
  float _977;
  bool _978;
  float _980;
  int _983;
  int _991;
  float _1000;
  float4 _1003;
  int _1009;
  float _1017;
  float _1019;
  float _1021;
  float _1025;
  float _1031;
  float _1032;
  int _1033;
  int _1041;
  int _1042;
  int _1050;
  float _1079;
  float _1082;
  int _1104;
  int _1112;
  float4 _1120;
  float _1124;
  uint _1149;
  bool _1165;
  float _1171;
  float _1190;
  float _1206;
  float _1222;
  float _1223;
  float _1227;
  float _1230;
  float _1233;
  float _1240;
  float _1247;
  float _1254;
  float _1255;
  float _1256;
  float _1257;
  float _1258;
  float _1259;
  float _1260;
  float _1276;
  float _1292;
  float _1308;
  float _1309;
  float _1310;
  float _1311;
  float _1312;
  float _1329;
  float _1330;
  float _1331;
  float _1332;
  float _1335;
  float _1338;
  float _1342;
  float _1346;
  float _1350;
  float _1370;
  float _1382;
  float _1394;
  float _1406;
  float _1413;
  float _1420;
  float _1427;
  float _1433;
  float _1434;
  float _1436;
  float _1438;
  float _1440;
  float _1445;
  float _1466;
  float _1468;
  float _1471;
  float _1474;
  float _1477;
  float _1483;
  float _1525;
  float _1528;
  float _1534;
  float _1576;
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_29 < (uint)170000), _29, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._scenePolarDistort);
  if (!(_37 >= 0.001f)) {
    _43 = WaveReadLaneFirst(_materialIndex);
    _51 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_43 < (uint)170000), _43, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTexScale.x);
    _55 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_43 < (uint)170000), _43, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTexScale.y);
    _56 = WaveReadLaneFirst(_materialIndex);
    _64 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_56 < (uint)170000), _56, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTex);
    _72 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_64 < (uint)65000), _64, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_51 * TEXCOORD.x), (_55 * TEXCOORD.y)));
    _75 = WaveReadLaneFirst(_materialIndex);
    _83 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortIntensity.x);
    _87 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortIntensity.y);
    _177 = (_87 * (_72.y + -0.5f));
    _178 = (_83 * (_72.x + -0.5f));
  } else {
    _93 = WaveReadLaneFirst(_materialIndex);
    _101 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_93 < (uint)170000), _93, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._scenePolarDistortCenter.x);
    _105 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_93 < (uint)170000), _93, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._scenePolarDistortCenter.y);
    _106 = TEXCOORD.x - _101;
    _107 = TEXCOORD.y - _105;
    _109 = atan(_107 / _106);
    _110 = (_106 < 0.0f);
    _111 = (_106 == 0.0f);
    _112 = (_107 >= 0.0f);
    _113 = (_107 < 0.0f);
    _117 = sqrt((_107 * _107) + (_106 * _106));
    _118 = WaveReadLaneFirst(_materialIndex);
    _126 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_118 < (uint)170000), _118, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTexScale.x);
    _130 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_118 < (uint)170000), _118, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTexScale.y);
    _131 = WaveReadLaneFirst(_materialIndex);
    _139 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_131 < (uint)170000), _131, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTex);
    _158 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_139 < (uint)65000), _139, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_126 * select((_111 && _112), 0.5f, select((_111 && _113), -0.5f, (select((_110 && _113), (_109 + -3.1415927f), select((_110 && _112), (_109 + 3.1415927f), _109)) * 0.31830987f)))), (_130 * _117)));
    _161 = WaveReadLaneFirst(_materialIndex);
    _169 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_161 < (uint)170000), _161, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._scenePolarDistort);
    _171 = saturate(_117) * _169;
    _177 = (_171 * (_158.y + -0.5f));
    _178 = (_171 * (_158.x + -0.5f));
  }
  _179 = TEXCOORD.x - _178;
  _180 = TEXCOORD.y - _177;
  _183 = WaveReadLaneFirst(_materialIndex);
  _191 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_183 < (uint)170000), _183, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneSampleType);
  switch (_191) {
    case 0: {
      _195 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_179, _180));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _203 = (uint)((_bufferSizeAndInvSize.x * _179) + -0.5f);
      _207 = (uint)((_bufferSizeAndInvSize.y * _180) + -0.5f);
      _209 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_203, _207, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _212 = __3__36__0__0__g_gbufferNormal.Load(int3(_203, _207, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _219 = (saturate(_212.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _223 = (saturate(_212.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _227 = (saturate(_212.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _229 = rsqrt(dot(float3(_219, _223, _227), float3(_219, _223, _227)));  // [sem: invLength]
      _230 = _229 * _219;
      _231 = _229 * _223;
      _232 = _227 * _229;
      _237 = (((float)((uint)((uint)(((uint)((uint)(_209.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _241 = (((float)((uint)((uint)(_209.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _243 = (_237 + _241) * 0.5f;
      _245 = (_237 - _241) * 0.5f;
      _249 = (1.0f - abs(_243)) - abs(_245);
      _251 = rsqrt(dot(float3(_243, _245, _249), float3(_243, _245, _249)));  // [sem: invLength]
      _252 = _251 * _243;
      _253 = _251 * _245;
      _254 = _251 * _249;
      _256 = select((_232 >= 0.0f), 1.0f, -1.0f);
      _259 = -0.0f - (1.0f / (_256 + _232));
      _260 = _231 * _259;
      _261 = _260 * _230;
      _262 = _256 * _230;
      _268 = mad(_254, _230, mad(_253, _261, ((((_262 * _230) * _259) + 1.0f) * _252)));
      _274 = mad(_254, _231, mad(_253, ((_260 * _231) + _256), ((_252 * _256) * _261)));
      _279 = mad(_254, _232, mad(_253, (-0.0f - _231), (-0.0f - (_262 * _252))));
      _281 = rsqrt(dot(float3(_268, _274, _279), float3(_268, _274, _279)));  // [sem: invLength]
      _483 = (_281 * _279);
      _484 = (_281 * _274);
      _485 = (_281 * _268);
      _486 = ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_179, _180))).x);
      _487 = _195.z;
      _488 = _195.y;
      _489 = _195.x;
      break;
    }
    case 1: {
      _291 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_179, _180));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _299 = (uint)((_bufferSizeAndInvSize.x * _179) + -0.5f);
      _303 = (uint)((_bufferSizeAndInvSize.y * _180) + -0.5f);
      _305 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_299, _303, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _308 = __3__36__0__0__g_gbufferNormal.Load(int3(_299, _303, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _315 = (saturate(_308.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _319 = (saturate(_308.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _323 = (saturate(_308.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _325 = rsqrt(dot(float3(_315, _319, _323), float3(_315, _319, _323)));  // [sem: invLength]
      _326 = _325 * _315;
      _327 = _325 * _319;
      _328 = _323 * _325;
      _333 = (((float)((uint)((uint)(((uint)((uint)(_305.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _337 = (((float)((uint)((uint)(_305.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _339 = (_333 + _337) * 0.5f;
      _341 = (_333 - _337) * 0.5f;
      _345 = (1.0f - abs(_339)) - abs(_341);
      _347 = rsqrt(dot(float3(_339, _341, _345), float3(_339, _341, _345)));  // [sem: invLength]
      _348 = _347 * _339;
      _349 = _347 * _341;
      _350 = _347 * _345;
      _352 = select((_328 >= 0.0f), 1.0f, -1.0f);
      _355 = -0.0f - (1.0f / (_352 + _328));
      _356 = _327 * _355;
      _357 = _356 * _326;
      _358 = _352 * _326;
      _364 = mad(_350, _326, mad(_349, _357, ((((_358 * _326) * _355) + 1.0f) * _348)));
      _370 = mad(_350, _327, mad(_349, ((_356 * _327) + _352), ((_348 * _352) * _357)));
      _375 = mad(_350, _328, mad(_349, (-0.0f - _327), (-0.0f - (_358 * _348))));
      _377 = rsqrt(dot(float3(_364, _370, _375), float3(_364, _370, _375)));  // [sem: invLength]
      _483 = (_377 * _375);
      _484 = (_377 * _370);
      _485 = (_377 * _364);
      _486 = ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_179, _180))).x);
      _487 = _291.z;
      _488 = _291.y;
      _489 = _291.x;
      break;
    }
    case 2: {
      _388 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_179, _180));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _396 = (uint)((_bufferSizeAndInvSize.x * _179) + -0.5f);
      _400 = (uint)((_bufferSizeAndInvSize.y * _180) + -0.5f);
      _402 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_396, _400, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _405 = __3__36__0__0__g_gbufferNormal.Load(int3(_396, _400, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _412 = (saturate(_405.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _416 = (saturate(_405.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _420 = (saturate(_405.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _422 = rsqrt(dot(float3(_412, _416, _420), float3(_412, _416, _420)));  // [sem: invLength]
      _423 = _422 * _412;
      _424 = _422 * _416;
      _425 = _420 * _422;
      _430 = (((float)((uint)((uint)(((uint)((uint)(_402.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _434 = (((float)((uint)((uint)(_402.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _436 = (_430 + _434) * 0.5f;
      _438 = (_430 - _434) * 0.5f;
      _442 = (1.0f - abs(_436)) - abs(_438);
      _444 = rsqrt(dot(float3(_436, _438, _442), float3(_436, _438, _442)));  // [sem: invLength]
      _445 = _444 * _436;
      _446 = _444 * _438;
      _447 = _444 * _442;
      _449 = select((_425 >= 0.0f), 1.0f, -1.0f);
      _452 = -0.0f - (1.0f / (_449 + _425));
      _453 = _424 * _452;
      _454 = _453 * _423;
      _455 = _449 * _423;
      _461 = mad(_447, _423, mad(_446, _454, ((((_455 * _423) * _452) + 1.0f) * _445)));
      _467 = mad(_447, _424, mad(_446, ((_453 * _424) + _449), ((_445 * _449) * _454)));
      _472 = mad(_447, _425, mad(_446, (-0.0f - _424), (-0.0f - (_455 * _445))));
      _474 = rsqrt(dot(float3(_461, _467, _472), float3(_461, _467, _472)));  // [sem: invLength]
      _483 = (_474 * _472);
      _484 = (_474 * _467);
      _485 = (_474 * _461);
      _486 = ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearBlackBorder, float2(_179, _180))).x);
      _487 = _388.z;
      _488 = _388.y;
      _489 = _388.x;
      break;
    }
    default: {
      _483 = 0.0f;
      _484 = 0.0f;
      _485 = 0.0f;
      _486 = 0.0f;
      _487 = 0.0f;
      _488 = 0.0f;
      _489 = 0.0f;
      break;
    }
  }
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_491.x, _491.y);
  _508 = (((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_491.x))))))) + 0.5f) * _179)), ((int)((((float)((int)((int)((float)((int)((int)(_491.y))))))) + 0.5f) * _180)), 0)))).x) & 255;
  _509 = (_486 < 1e-07f);
  _510 = (_486 == 1.0f);
  _514 = WaveReadLaneFirst(_materialIndex);
  _522 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_514 < (uint)170000), _514, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._impactFrame);
  if (!(!(_522 >= 0.001f))) {
    if (!(_508 == _renderPassSelfPlayer)) {
      if (!(_508 == _renderPassTest)) {
        _537 = ((int)(uint)((int)(_508 == _renderPassTargetFocus)));
      } else {
        _537 = 1;
      }
    } else {
      _537 = 1;
    }
    _540 = select((_509 || _510), 1.0f, select((_537 != 0), 0.0f, 1.0f));
    _543 = WaveReadLaneFirst(_materialIndex);
    _551 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_543 < (uint)170000), _543, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._impactFrameInverse);
    _554 = select((_551 > 0.001f), (1.0f - _540), _540);
    _557 = WaveReadLaneFirst(_materialIndex);
    _565 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_557 < (uint)170000), _557, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._impactFrameFresnel);
    _566 = abs(_565);
    if ((_566 > 0.0f) && (!(_509 || _510))) {
      _582 = abs(1.0f - saturate(dot(float3(_485, _484, _483), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)))));
      _585 = WaveReadLaneFirst(_materialIndex);
      _593 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_585 < (uint)170000), _585, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._impactFrameFresnelIntensity);
      _605 = ((saturate(exp2(log2(select((_565 < 0.0f), (1.0f - _582), _582)) * _566) * _593) + 0.002f) * _554);
    } else {
      _605 = _554;
    }
    _609 = _605 / max(0.001f, _exposure0.x);
    _620 = (lerp(_487, _609, _522));  // [sem: blended]
    _621 = (lerp(_488, _609, _522));  // [sem: blended]
    _622 = (lerp(_489, _609, _522));  // [sem: blended]
  } else {
    _620 = _487;  // [sem: blended]
    _621 = _488;  // [sem: blended]
    _622 = _489;  // [sem: blended]
  }
  _625 = WaveReadLaneFirst(_materialIndex);
  _633 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_625 < (uint)170000), _625, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._topVignetteRatio);
  _636 = WaveReadLaneFirst(_materialIndex);
  _644 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_636 < (uint)170000), _636, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sideVignetteRatio);
  _647 = WaveReadLaneFirst(_materialIndex);
  _655 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_647 < (uint)170000), _647, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._bottomVignetteRatio);
  if (!(!(_644 >= 0.001f))) {
    _658 = TEXCOORD.x + -0.5f;
    _659 = TEXCOORD.y + -0.5f;
    _662 = WaveReadLaneFirst(_materialIndex);
    _670 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_662 < (uint)170000), _662, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sideVignetteRadius);
    _673 = WaveReadLaneFirst(_materialIndex);
    _681 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_673 < (uint)170000), _673, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sideVignettePower);
    _684 = WaveReadLaneFirst(_materialIndex);
    _692 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_684 < (uint)170000), _684, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sideVignetteColor);
    _695 = (float)((uint)((uint)(((uint)((uint)(_692)) >> 16) & 255)));
    _698 = (float)((uint)((uint)(((uint)((uint)(_692)) >> 8) & 255)));
    _700 = (float)((uint)((uint)(_692 & 255)));
    _703 = max(0.001f, _exposure0.x);
    _718 = saturate((sqrt((_659 * _659) + (_658 * _658)) / max(0.001f, (1.0f - _670))) * exp2(log2(abs(0.5f - TEXCOORD.x)) * _681)) * _644;
    _756 = (((select(((_700 * 0.003921569f) < 0.04045f), (_700 * 0.000303527f), exp2(log2((_700 * 0.003717127f) + 0.052132703f) * 2.4f)) / _703) * _718) + _620);
    _757 = (((select(((_698 * 0.003921569f) < 0.04045f), (_698 * 0.000303527f), exp2(log2((_698 * 0.003717127f) + 0.052132703f) * 2.4f)) / _703) * _718) + _621);
    _758 = (((select(((_695 * 0.003921569f) < 0.04045f), (_695 * 0.000303527f), exp2(log2((_695 * 0.003717127f) + 0.052132703f) * 2.4f)) / _703) * _718) + _622);
  } else {
    _756 = _620;
    _757 = _621;
    _758 = _622;
  }
  if (!(!(_633 >= 0.001f))) {
    _761 = TEXCOORD.x + -0.5f;
    _762 = TEXCOORD.y + -0.5f;
    _765 = WaveReadLaneFirst(_materialIndex);
    _773 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_765 < (uint)170000), _765, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._topVignetteRadius);
    _776 = WaveReadLaneFirst(_materialIndex);
    _784 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_776 < (uint)170000), _776, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._topVignettePower);
    _787 = WaveReadLaneFirst(_materialIndex);
    _795 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_787 < (uint)170000), _787, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._topVignetteColor);
    _798 = (float)((uint)((uint)(((uint)((uint)(_795)) >> 16) & 255)));
    _801 = (float)((uint)((uint)(((uint)((uint)(_795)) >> 8) & 255)));
    _803 = (float)((uint)((uint)(_795 & 255)));
    _806 = max(0.001f, _exposure0.x);
    _820 = saturate((sqrt((_762 * _762) + (_761 * _761)) / max(0.001f, (1.0f - _773))) * exp2(log2(1.0f - TEXCOORD.y) * _784)) * _633;
    _858 = (((select(((_803 * 0.003921569f) < 0.04045f), (_803 * 0.000303527f), exp2(log2((_803 * 0.003717127f) + 0.052132703f) * 2.4f)) / _806) * _820) + _756);
    _859 = (((select(((_801 * 0.003921569f) < 0.04045f), (_801 * 0.000303527f), exp2(log2((_801 * 0.003717127f) + 0.052132703f) * 2.4f)) / _806) * _820) + _757);
    _860 = (((select(((_798 * 0.003921569f) < 0.04045f), (_798 * 0.000303527f), exp2(log2((_798 * 0.003717127f) + 0.052132703f) * 2.4f)) / _806) * _820) + _758);
  } else {
    _858 = _756;
    _859 = _757;
    _860 = _758;
  }
  if (!(!(_655 >= 0.001f))) {
    _863 = TEXCOORD.x + -0.5f;
    _864 = TEXCOORD.y + -0.5f;
    _867 = WaveReadLaneFirst(_materialIndex);
    _875 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_867 < (uint)170000), _867, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._bottomVignetteRadius);
    _878 = WaveReadLaneFirst(_materialIndex);
    _886 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_878 < (uint)170000), _878, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._bottomVignettePower);
    _889 = WaveReadLaneFirst(_materialIndex);
    _897 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_889 < (uint)170000), _889, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._bottomVignetteColor);
    _900 = (float)((uint)((uint)(((uint)((uint)(_897)) >> 16) & 255)));
    _903 = (float)((uint)((uint)(((uint)((uint)(_897)) >> 8) & 255)));
    _905 = (float)((uint)((uint)(_897 & 255)));
    _908 = max(0.001f, _exposure0.x);
    _921 = saturate((sqrt((_864 * _864) + (_863 * _863)) / max(0.001f, (1.0f - _875))) * (pow(TEXCOORD.y, _886))) * _655;
    _959 = (((select(((_905 * 0.003921569f) < 0.04045f), (_905 * 0.000303527f), exp2(log2((_905 * 0.003717127f) + 0.052132703f) * 2.4f)) / _908) * _921) + _858);
    _960 = (((select(((_903 * 0.003921569f) < 0.04045f), (_903 * 0.000303527f), exp2(log2((_903 * 0.003717127f) + 0.052132703f) * 2.4f)) / _908) * _921) + _859);
    _961 = (((select(((_900 * 0.003921569f) < 0.04045f), (_900 * 0.000303527f), exp2(log2((_900 * 0.003717127f) + 0.052132703f) * 2.4f)) / _908) * _921) + _860);
  } else {
    _959 = _858;
    _960 = _859;
    _961 = _860;
  }
  _964 = WaveReadLaneFirst(_materialIndex);
  _972 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_964 < (uint)170000), _964, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransition);
  if ((_972 >= 0.001f) && (_972 < 1.0f)) {
    _977 = _972 * 2.0f;
    _978 = (_977 > 1.0f);
    _980 = select(_978, (_977 + -1.0f), _977);
    _983 = WaveReadLaneFirst(_materialIndex);
    _991 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_983 < (uint)170000), _983, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionNoiseTex);
    _1000 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_991 < (uint)65000), _991, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y)))).x) * 0.2f;
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _1003 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _1009 = WaveReadLaneFirst(_materialIndex);
    _1017 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_1009 < (uint)170000), _1009, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionUseDivide);
    _1019 = (_980 + -0.5f) * 1.5f;
    _1021 = _1000 + (TEXCOORD.x - _1019);
    _1025 = select((_980 >= 0.9f), ((_980 + -0.9f) * 10.0f), 0.0f);
    if (_1017 == 0.0f) {
      _1104 = WaveReadLaneFirst(_materialIndex);
      _1112 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_1104 < (uint)170000), _1104, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionTex);
      _1120 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1112 < (uint)65000), _1112, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_1021, ((TEXCOORD.y * 0.95f) + 0.025f)));
      _1124 = ((1.0f - _1120.x) * _1025) + _1120.x;
      if (_978) {
        _1146 = ((_1124 * (_959 - _1003.z)) + _1003.z);
        _1147 = ((_1124 * (_960 - _1003.y)) + _1003.y);
        _1148 = ((_1124 * (_961 - _1003.x)) + _1003.x);
      } else {
        _1146 = ((_1124 * (_1003.z - _959)) + _959);
        _1147 = ((_1124 * (_1003.y - _960)) + _960);
        _1148 = ((_1124 * (_1003.x - _961)) + _961);
      }
    } else {
      _1031 = TEXCOORD.y + 0.45f;
      _1032 = TEXCOORD.y + -0.45f;
      _1033 = WaveReadLaneFirst(_materialIndex);
      _1041 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_1033 < (uint)170000), _1033, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionTex);
      _1042 = WaveReadLaneFirst(_materialIndex);
      _1050 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_1042 < (uint)170000), _1042, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionTex);
      // [sem: expr_sat]
      _1079 = saturate(((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1041 < (uint)65000), _1041, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_1021, _1031)))).x) * select(((_1031 < 0.0f) || (_1031 > 1.0f)), 0.0f, 1.0f)) + ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1050 < (uint)65000), _1050, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2((((1.0f - TEXCOORD.x) - _1019) + _1000), _1032)))).x) * select(((_1032 < 0.0f) || (_1032 > 1.0f)), 0.0f, 1.0f)));
      _1082 = ((1.0f - _1079) * _1025) + _1079;
      if (_978) {
        _1146 = ((_1082 * (_959 - _1003.z)) + _1003.z);
        _1147 = ((_1082 * (_960 - _1003.y)) + _1003.y);
        _1148 = ((_1082 * (_961 - _1003.x)) + _1003.x);
      } else {
        _1146 = ((_1082 * (_1003.z - _959)) + _959);
        _1147 = ((_1082 * (_1003.y - _960)) + _960);
        _1148 = ((_1082 * (_1003.x - _961)) + _961);
      }
    }
  } else {
    _1146 = _959;
    _1147 = _960;
    _1148 = _961;
  }
  _1149 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1162 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1149, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1162 = 1.0f;
  }
  _1165 = (_localToneMappingParams.w > 0.0f);
  if (_1165) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1148, _1147, _1146));
    _1413 = _rndx_tonemapped_color.x;
    _1420 = _rndx_tonemapped_color.y;
    _1427 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1433 = 1.0f - abs(_etcParams.w);
      _1434 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1436 = (_1433 * _1413) + _1434;
      _1438 = (_1433 * _1420) + _1434;
      _1440 = (_1433 * _1427) + _1434;
      if (_colorGradingParams.w > 0.0f) {
        _1445 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1462 = (((max(0.0f, (1.0f - _1440)) - _1440) * _1445) + _1440);
        _1463 = (((max(0.0f, (1.0f - _1438)) - _1438) * _1445) + _1438);
        _1464 = (((max(0.0f, (1.0f - _1436)) - _1436) * _1445) + _1436);
      } else {
        _1462 = _1440;
        _1463 = _1438;
        _1464 = _1436;
      }
      _1466 = _userImageAdjust.y + 1.0f;
      _1468 = _userImageAdjust.x + 0.5f;
      _1471 = ((_1464 + -0.5f) * _1466) + _1468;
      _1474 = ((_1463 + -0.5f) * _1466) + _1468;
      _1477 = ((_1462 + -0.5f) * _1466) + _1468;
      _1483 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1518 = exp2(log2(saturate(mad(_colorBlind2.z, _1477, mad(_colorBlind2.y, _1474, (_colorBlind2.x * _1471))))) * _1483);
      _1519 = exp2(log2(saturate(mad(_colorBlind1.z, _1477, mad(_colorBlind1.y, _1474, (_colorBlind1.x * _1471))))) * _1483);
      _1520 = exp2(log2(saturate(mad(_colorBlind0.z, _1477, mad(_colorBlind0.y, _1474, (_colorBlind0.x * _1471))))) * _1483);
    } else {
      _1518 = _1427;
      _1519 = _1420;
      _1520 = _1413;
    }
  } else {
    _1518 = _1146;
    _1519 = _1147;
    _1520 = _1148;
  }
  if (_etcParams.y > 1.0f) {
    _1525 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1528 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _1534 = saturate(1.0f - (dot(float2(_1525, _1528), float2(_1525, _1528)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _1539 = (_1534 * _1518);
    _1540 = (_1534 * _1519);
    _1541 = (_1534 * _1520);
  } else {
    _1539 = _1518;
    _1540 = _1519;
    _1541 = _1520;
  }
  if (_1165 && (_etcParams.z > 0.0f)) {
    _1571 = select((_1539 <= 0.0031308f), (_1539 * 12.92f), (((pow(_1539, 0.41666666f)) * 1.055f) + -0.055f));
    _1572 = select((_1540 <= 0.0031308f), (_1540 * 12.92f), (((pow(_1540, 0.41666666f)) * 1.055f) + -0.055f));
    _1573 = select((_1541 <= 0.0031308f), (_1541 * 12.92f), (((pow(_1541, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1571 = _1539;
    _1572 = _1540;
    _1573 = _1541;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1576 = (float)((uint)((uint)(_1149)));
    if (!(_1576 < _viewDir.w)) {
      if (!(!(_1576 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1587 = 0.0f;
        _1588 = 0.0f;
        _1589 = 0.0f;
      } else {
        _1587 = _1573;
        _1588 = _1572;
        _1589 = _1571;
      }
    } else {
      _1587 = 0.0f;
      _1588 = 0.0f;
      _1589 = 0.0f;
    }
  } else {
    _1587 = _1573;
    _1588 = _1572;
    _1589 = _1571;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_1587, _1588, _1589), _sunDirection.y, _moonDirection.y);
    _1587 = _rndx_final_color.x;
    _1588 = _rndx_final_color.y;
    _1589 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _1587;
  SV_Target.y = _1588;
  SV_Target.z = _1589;
  SV_Target.w = _1162;
  return SV_Target;
}
