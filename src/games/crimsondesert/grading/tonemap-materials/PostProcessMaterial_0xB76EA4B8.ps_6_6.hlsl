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


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t36, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t69, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

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

struct BindlessParameters_PostProcessBerserk_CD {
  PostProcessBerserk_CDStruct BindlessParameters_PostProcessBerserk_CD;
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
  float _38;
  float _39;
  int _40;
  float _48;
  float _69;
  float _106;
  float _107;
  float _110;
  float _111;
  float _457;
  float _458;
  float _459;
  float _519;
  float _627;
  float _628;
  float _629;
  float _650;
  float _651;
  float _652;
  float _1159;
  float _1160;
  float _1161;
  float _1162;
  float _1163;
  float _1181;
  float _1182;
  float _1183;
  float _1184;
  float _1185;
  float _1186;
  float _1187;
  float _1188;
  float _1189;
  float _1254;
  float _1459;
  float _1460;
  float _1461;
  float _1554;
  float _1555;
  float _1556;
  float _1610;
  float _1611;
  float _1612;
  float _1631;
  float _1632;
  float _1633;
  float _1663;
  float _1664;
  float _1665;
  float _1679;
  float _1680;
  float _1681;
  float _54;
  float _55;
  float _56;
  float _57;
  float _58;
  float _59;
  float _60;
  bool _61;
  float _71;
  float _73;
  float _81;
  float _89;
  float _90;
  float _92;
  float _100;
  float _113;
  float _115;
  float _120;
  float _156;
  float _157;
  float _158;
  float _159;
  float _195;
  float _212;
  float _213;
  float _214;
  float _216;
  float _217;
  float _218;
  float _219;
  float4 _221;
  float _229;
  float _230;
  float _248;
  int _254;
  float _262;
  float _263;
  float _274;
  float _277;
  float _278;
  float _279;
  float _280;
  float _284;
  float _285;
  float _292;
  float _295;
  float _298;
  float _305;
  float _306;
  int _309;
  int _317;
  float4 _324;
  int _329;
  int _337;
  float4 _344;
  float _347;
  float _348;
  float _350;
  float _352;
  float _353;
  float _354;
  float _359;
  int _365;
  float _373;
  float4 _376;
  float _386;
  float _387;
  float _388;
  float4 _419;
  float _429;
  float _430;
  float _431;
  float _460;
  float _461;
  float _462;
  float _479;
  int _485;
  float _493;
  float _497;
  float _508;
  float _525;
  float _536;
  int _538;
  int _546;
  float4 _553;
  float _556;
  float _557;
  int _561;
  int _569;
  int _581;
  int _589;
  int _601;
  float _609;
  float _612;
  float _618;
  float _622;
  int _630;
  float _638;
  float _642;
  float _646;
  uint _660;
  uint _661;
  uint4 _663;
  float4 _666;
  float _684;
  float _685;
  float _686;
  float _688;
  float _689;
  float _690;
  float _691;
  float _694;
  float _695;
  float _698;
  float _699;
  float _703;
  float _705;
  float _706;
  float _707;
  float _708;
  float _710;
  float _713;
  float _714;
  float _715;
  float _716;
  float _725;
  float _729;
  float _733;
  float _735;
  int _738;
  int _746;
  float _752;
  float _753;
  float _754;
  float _761;
  float4 _764;
  float _770;
  float _771;
  float _774;
  int _779;
  int _787;
  float _795;
  float _796;
  float _797;
  float _804;
  float4 _807;
  float _815;
  float _819;
  float _820;
  float _829;
  float _830;
  float _831;
  float _840;
  float _843;
  int _846;
  float _854;
  float _859;
  float _860;
  float _861;
  int _870;
  float _878;
  int _883;
  float _891;
  float _896;
  float _897;
  float _898;
  int _906;
  float _914;
  int _917;
  float _925;
  float _929;
  float _938;
  int _941;
  int _949;
  float _958;
  uint2 _961;
  float _982;
  uint _992;
  uint _993;
  uint4 _995;
  float4 _998;
  float _1016;
  float _1017;
  float _1018;
  float _1020;
  float _1021;
  float _1022;
  float _1023;
  float _1026;
  float _1027;
  float _1030;
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
  float _1057;
  float _1061;
  float _1065;
  float _1067;
  float _1068;
  float _1069;
  float _1070;
  float _1075;
  float _1076;
  float _1077;
  float _1082;
  int _1093;
  int _1101;
  float _1104;
  float _1107;
  float _1109;
  float _1156;
  float _1175;
  int _1190;
  float _1198;
  float _1218;
  float _1238;
  float _1239;
  float _1240;
  uint _1241;
  bool _1257;
  float _1263;
  float _1312;
  float _1313;
  float _1314;
  float _1316;
  float _1323;
  float _1324;
  float _1325;
  float _1344;
  float _1345;
  float _1346;
  float _1347;
  float _1348;
  float _1349;
  float _1350;
  float _1351;
  float _1352;
  float _1398;
  float _1399;
  float _1400;
  float _1401;
  float _1402;
  float _1403;
  float _1404;
  float _1421;
  float _1422;
  float _1423;
  float _1424;
  float _1430;
  float _1433;
  float _1440;
  float _1441;
  float _1442;
  float _1471;
  float _1496;
  float _1497;
  float _1498;
  float _1517;
  float _1518;
  float _1519;
  float _1525;
  float _1529;
  float _1530;
  float _1531;
  float _1532;
  float _1537;
  float _1562;
  float _1566;
  float _1567;
  float _1568;
  float _1569;
  float _1599;
  float _1621;
  float _1622;
  float _1626;
  float _1670;
  float _1691;
  float _1692;
  float _1693;
  _38 = 1.0f / max(0.0001f, _exposure0.x);
  _39 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _40 = WaveReadLaneFirst(_materialIndex);
  _48 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_40 < (uint)170000), _40, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._fishEyeIntensity);
  if (!(!(abs(_48) >= 0.001f))) {
    _54 = (_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
    _55 = (_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x;
    _56 = 0.5f / _39;
    _57 = _54 + -0.5f;
    _58 = _55 - _56;
    _59 = dot(float2(_57, _58), float2(_57, _58));
    _60 = sqrt(_59);
    _61 = (_48 > 0.0f);
    if (_61) {
      _69 = sqrt(dot(float2(0.5f, _56), float2(0.5f, _56)));
    } else {
      if (!(_39 < 1.0f)) {
        _69 = _56;
      } else {
        _69 = 0.5f;
      }
    }
    if (_61) {
      _71 = rsqrt(_59);  // [sem: rsqrt_val]
      _73 = tan(_60 * _48);
      _81 = tan(_69 * _48);
      _106 = (((((_69 * _57) * _71) * _73) / _81) + 0.5f);
      _107 = (((((_69 * _58) * _71) * _73) / _81) + _56);
    } else {
      if (_48 < 0.0f) {
        _89 = rsqrt(_59);  // [sem: rsqrt_val]
        _90 = _48 * -10.0f;
        _92 = atan(_60 * _90);
        _100 = atan(_69 * _90);
        _106 = (((((_69 * _57) * _89) * _92) / _100) + 0.5f);
        _107 = (((((_69 * _58) * _89) * _92) / _100) + _56);
      } else {
        _106 = _54;
        _107 = _55;
      }
    }
    _110 = _106;
    _111 = (_107 * _39);
  } else {
    _110 = TEXCOORD.x;
    _111 = TEXCOORD.y;
  }
  _113 = (_110 * 2.0f) + -1.0f;
  _115 = 1.0f - (_111 * 2.0f);
  _120 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_110, _111))).x));
  _156 = mad((_invViewProj[3].z), _120, mad((_invViewProj[3].y), _115, ((_invViewProj[3].x) * _113))) + (_invViewProj[3].w);
  _157 = (mad((_invViewProj[0].z), _120, mad((_invViewProj[0].y), _115, ((_invViewProj[0].x) * _113))) + (_invViewProj[0].w)) / _156;
  _158 = (mad((_invViewProj[1].z), _120, mad((_invViewProj[1].y), _115, ((_invViewProj[1].x) * _113))) + (_invViewProj[1].w)) / _156;
  _159 = (mad((_invViewProj[2].z), _120, mad((_invViewProj[2].y), _115, ((_invViewProj[2].x) * _113))) + (_invViewProj[2].w)) / _156;
  _195 = mad((_invViewProjRelative[3].z), _120, mad((_invViewProjRelative[3].y), _115, ((_invViewProjRelative[3].x) * _113))) + (_invViewProjRelative[3].w);
  _212 = -0.0f - ((mad((_invViewProjRelative[0].z), _120, mad((_invViewProjRelative[0].y), _115, ((_invViewProjRelative[0].x) * _113))) + (_invViewProjRelative[0].w)) / _195);
  _213 = -0.0f - ((mad((_invViewProjRelative[1].z), _120, mad((_invViewProjRelative[1].y), _115, ((_invViewProjRelative[1].x) * _113))) + (_invViewProjRelative[1].w)) / _195);
  _214 = -0.0f - ((mad((_invViewProjRelative[2].z), _120, mad((_invViewProjRelative[2].y), _115, ((_invViewProjRelative[2].x) * _113))) + (_invViewProjRelative[2].w)) / _195);
  _216 = rsqrt(dot(float3(_212, _213, _214), float3(_212, _213, _214)));  // [sem: invLength]
  _217 = _216 * _212;
  _218 = _216 * _213;
  _219 = _216 * _214;
  _221 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_110, _111));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _229 = (pow(_221.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _230 = (pow(_221.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _248 = exp2(log2(max(0.0f, (_230 + -0.8359375f)) / (18.851562f - (_230 * 18.6875f))) * 6.277395f) * 10000.0f;
  _254 = WaveReadLaneFirst(_materialIndex);
  _262 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_254 < (uint)170000), _254, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._centerMaskWidth);
  _263 = ((((1.0f - TEXCOORD.x) * TEXCOORD.x) * TEXCOORD.y) * (1.0f - TEXCOORD.y)) * _262;
  _274 = _263 * 25.0f;
  _277 = TEXCOORD.x + -0.5f;
  _278 = TEXCOORD.y + -0.5f;
  _279 = abs(_277);
  _280 = abs(_278);
  _284 = min(_279, _280) / max(max(_279, _280), 1e-08f);
  _285 = _284 * _284;
  _292 = ((_285 * _284) * (((0.15931422f - (_285 * 0.046496473f)) * _285) + -0.32762277f)) + _284;
  _295 = select((_280 > _279), (1.5707964f - _292), _292);
  _298 = select((_277 < 0.0f), (3.1415927f - _295), _295);
  _305 = sqrt((_278 * _278) + (_277 * _277));
  _306 = select((_278 < 0.0f), (-0.0f - _298), _298) * 0.9549296f;
  _309 = WaveReadLaneFirst(_materialIndex);
  _317 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_309 < (uint)170000), _309, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
  _324 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_317 < (uint)65000), _317, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_219, (_218 + (_time.x * 0.05f))));
  _329 = WaveReadLaneFirst(_materialIndex);
  _337 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_329 < (uint)170000), _329, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
  _344 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_337 < (uint)65000), _337, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_218 + (_time.x * 0.15f)), _217));
  _347 = _344.x + _324.x;
  _348 = _344.y + _324.y;
  _350 = abs(dot(float3(_217, _218, _219), float3(0.0f, 1.0f, 0.0f)));
  _352 = abs(dot(float3(_217, _218, _219), float3(0.0f, 0.0f, 1.0f)));
  _353 = _347 * _350;
  _354 = _348 * _350;
  _359 = (_353 * _352) + (_347 - _353);
  _365 = WaveReadLaneFirst(_materialIndex);
  _373 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_365 < (uint)170000), _365, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._sceneColorDistortionIntensity);
  _376 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_110, _111));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _386 = (pow(_376.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _387 = (pow(_376.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _388 = (pow(_376.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  if (_373 > 0.0001f) {
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _419 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((_373 * ((_359 * 2.0f) + -0.99607843f)) + _110), ((_373 * ((((_354 * _352) + (_348 - _354)) * 2.0f) + -0.99607843f)) + _111)));
    _429 = (pow(_419.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _430 = (pow(_419.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _431 = (pow(_419.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _457 = exp2(log2(max(0.0f, (_429 + -0.8359375f)) / (18.851562f - (_429 * 18.6875f))) * 6.277395f);
    _458 = exp2(log2(max(0.0f, (_430 + -0.8359375f)) / (18.851562f - (_430 * 18.6875f))) * 6.277395f);
    _459 = exp2(log2(max(0.0f, (_431 + -0.8359375f)) / (18.851562f - (_431 * 18.6875f))) * 6.277395f);
  } else {
    _457 = exp2(log2(max(0.0f, (_386 + -0.8359375f)) / (18.851562f - (_386 * 18.6875f))) * 6.277395f);
    _458 = exp2(log2(max(0.0f, (_387 + -0.8359375f)) / (18.851562f - (_387 * 18.6875f))) * 6.277395f);
    _459 = exp2(log2(max(0.0f, (_388 + -0.8359375f)) / (18.851562f - (_388 * 18.6875f))) * 6.277395f);
  }
  _460 = _459 * 10000.0f;
  _461 = _458 * 10000.0f;
  _462 = _457 * 10000.0f;
  _479 = frac(frac(dot(float2(((float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(_110))))), ((float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(_111)))))), float2(0.06711056f, 0.00583715f))) * 52.982918f);
  _485 = WaveReadLaneFirst(_materialIndex);
  _493 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_485 < (uint)170000), _485, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._fireIntensity);
  if (_493 > 0.0001f) {
    _497 = _493 * ((((_359 + -0.4f) * 6.666667f) + -1.0f) * 0.2f);
    _508 = exp2(log2(((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_497 * (_479 + -0.5f)) + _110), ((_497 * (0.5f - _479)) + _111))))).x) * 0.012683313f);
    _519 = (exp2(log2(max(0.0f, (_508 + -0.8359375f)) / (18.851562f - (_508 * 18.6875f))) * 6.277395f) * 10000.0f);
  } else {
    _519 = (exp2(log2(max(0.0f, (_229 + -0.8359375f)) / (18.851562f - (_229 * 18.6875f))) * 6.277395f) * 10000.0f);
  }
  _525 = ((dot(float3(_462, _461, _460), float3(0.2126f, 0.7152f, 0.0722f)) - _248) * saturate(_274 * _274)) + _248;
  _536 = _time.x * 0.125f;
  _538 = WaveReadLaneFirst(_materialIndex);
  _546 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_538 < (uint)170000), _538, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._distortionTex);
  _553 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_546 < (uint)65000), _546, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_306, (_305 + _536)));
  _556 = _553.x * 0.2f;
  _557 = _553.y * 0.2f;
  _561 = WaveReadLaneFirst(_materialIndex);
  _569 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_561 < (uint)170000), _561, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._marbleCrackTex);
  _581 = WaveReadLaneFirst(_materialIndex);
  _589 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_581 < (uint)170000), _581, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._marbleCrackTex);
  _601 = WaveReadLaneFirst(_materialIndex);
  _609 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_601 < (uint)170000), _601, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._auraIntensity);
  _612 = saturate((_221.w + -0.1f) * 1.1111112f);  // [sem: expr_sat]
  _618 = ((_612 * _612) * (1.0f - saturate(exp2(log2(_263 * 15.0f) * 0.07f)))) * (3.0f - (_612 * 2.0f));
  if (_609 > 0.0001f) {
    _622 = _618 * (_609 * _38);
    _627 = (_622 * 0.3185468f);
    _628 = (_622 * 0.033104755f);
    _629 = (_622 * 0.0100228265f);
  } else {
    _627 = 0.0f;
    _628 = 0.0f;
    _629 = 0.0f;
  }
  _630 = WaveReadLaneFirst(_materialIndex);
  _638 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_630 < (uint)170000), _630, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._bloodLineIntensity);
  _642 = saturate(saturate(((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_589 < (uint)65000), _589, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_557 + _306), ((_305 - _536) + _557))))).y) * 1.2f) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_569 < (uint)65000), _569, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_556 + _306), ((_305 - (_time.x * 0.25f)) + _556))))).x)) - (_263 * 14.0f)) * _618;
  if (_638 > 0.0001f) {
    _646 = _642 * (_638 * _38);
    _650 = (_646 * 2.5371556f);
    _651 = (_646 * 0.44798842f);
    _652 = 0.0f;
  } else {
    _650 = _642;
    _651 = _642;
    _652 = _642;
  }
  _660 = (uint)((_bufferSizeAndInvSize.x * _110) + -0.5f);
  _661 = (uint)((_bufferSizeAndInvSize.y * _111) + -0.5f);
  _663 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_660, _661, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _666 = __3__36__0__0__g_gbufferNormal.Load(int3(_660, _661, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _684 = (saturate(_666.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _685 = (saturate(_666.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _686 = (saturate(_666.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _688 = rsqrt(dot(float3(_684, _685, _686), float3(_684, _685, _686)));  // [sem: invLength]
  _689 = _688 * _684;
  _690 = _688 * _685;
  _691 = _686 * _688;
  _694 = (((float)((uint)((uint)(((uint)((uint)(_663.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _695 = (((float)((uint)((uint)(_663.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _698 = (_694 + _695) * 0.5f;
  _699 = (_694 - _695) * 0.5f;
  _703 = (1.0f - abs(_698)) - abs(_699);
  _705 = rsqrt(dot(float3(_698, _699, _703), float3(_698, _699, _703)));  // [sem: invLength]
  _706 = _705 * _698;
  _707 = _705 * _699;
  _708 = _705 * _703;
  _710 = select((_691 >= 0.0f), 1.0f, -1.0f);
  _713 = -0.0f - (1.0f / (_710 + _691));
  _714 = _690 * _713;
  _715 = _714 * _689;
  _716 = _710 * _689;
  _725 = mad(_708, _689, mad(_707, _715, ((((_716 * _689) * _713) + 1.0f) * _706)));
  _729 = mad(_708, _690, mad(_707, (_710 + (_714 * _690)), ((_706 * _710) * _715)));
  _733 = mad(_708, _691, mad(_707, (-0.0f - _690), (-0.0f - (_716 * _706))));
  _735 = rsqrt(dot(float3(_725, _729, _733), float3(_725, _729, _733)));  // [sem: invLength]
  _738 = WaveReadLaneFirst(_materialIndex);
  _746 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_738 < (uint)170000), _738, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
  _752 = _time.x * -0.01f;
  _753 = (_157 * 0.02f) + _752;
  _754 = (_159 * 0.02f) + _752;
  _761 = (_158 * 0.02f) + _752;
  _764 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_746 < (uint)65000), _746, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_754, _761));
  _770 = abs(_735 * _729);
  _771 = abs(_735 * _733);
  _774 = (_770 * ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_746 < (uint)65000), _746, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_753, _754)))).x) - _764.x)) + _764.x;
  _779 = WaveReadLaneFirst(_materialIndex);
  _787 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_779 < (uint)170000), _779, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex2);
  _795 = (saturate((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_746 < (uint)65000), _746, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_761, _753)))).x) - _774) * _771) + _774) * 0.3f) + (_time.x * 0.1f);
  _796 = _795 + (_157 * 0.1f);
  _797 = _795 + (_159 * 0.1f);
  _804 = _795 + (_158 * 0.1f);
  _807 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_787 < (uint)65000), _787, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_797, _804));
  _815 = (((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_787 < (uint)65000), _787, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_796, _797)))).w) - _807.w) * _770) + _807.w;
  // [sem: expr_sat]
  _819 = saturate((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_787 < (uint)65000), _787, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_804, _796)))).w) - _815) * _771) + _815);
  _820 = _819 * 3.0f;
  _829 = _157 - _mainPosition.x;
  _830 = _158 - _mainPosition.y;
  _831 = _159 - _mainPosition.z;
  _840 = 1.0f - saturate(sqrt(((_829 * _829) + (_830 * _830)) + (_831 * _831)) * 0.002f);
  _843 = (_840 * _840) * (exp2(log2(saturate(_820)) * 5.4f) * _38);
  _846 = WaveReadLaneFirst(_materialIndex);
  _854 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_846 < (uint)170000), _846, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._scanRadius);
  _859 = _mainPosition.x - _157;
  _860 = _mainPosition.y - _158;
  _861 = _mainPosition.z - _159;
  _870 = WaveReadLaneFirst(_materialIndex);
  _878 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_870 < (uint)170000), _870, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._sphereMaskRatio);
  _883 = WaveReadLaneFirst(_materialIndex);
  _891 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_883 < (uint)170000), _883, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._scanRadiusEnd);
  _896 = _mainPosition.x - _157;
  _897 = _mainPosition.y - _158;
  _898 = _mainPosition.z - _159;
  _906 = WaveReadLaneFirst(_materialIndex);
  _914 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_906 < (uint)170000), _906, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._sphereMaskEndNoiseIntensity);
  _917 = WaveReadLaneFirst(_materialIndex);
  _925 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_917 < (uint)170000), _917, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._sphereMaskEndRatio);
  // [sem: expr_sat]
  _929 = saturate((_925 * (((saturate(((1.0f - ((1.0f / max(1e-05f, _854)) * sqrt(dot(float3(_859, _860, _861), float3(_859, _860, _861))))) * 2.5000002f) - _820) + -1.0f) * _878) + 1.0f)) * saturate((_914 * _819) - ((1.0f - ((1.0f / max(1e-05f, _891)) * sqrt(dot(float3(_896, _897, _898), float3(_896, _897, _898))))) * 1.4285715f)));
  if ((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _110) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _111) + -0.5f))), 0)))).x) & 127) + (int)(-52)) < (uint)16) {
    _938 = _221.w * 0.5f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _941 = WaveReadLaneFirst(_materialIndex);
    _949 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_941 < (uint)170000), _941, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
    _958 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_949 < (uint)65000), _949, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_938 + ((TEXCOORD.x * 2.0f) * _39)), (_938 + (((_time.x * 0.2f) + TEXCOORD.y) * 2.0f)))))).x) + -0.2f;
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_961.x, _961.y);
    _982 = _958 * 0.018749999f;
    _992 = (uint)((_bufferSizeAndInvSize.x * (_982 + _110)) + -0.5f);
    _993 = (uint)((_bufferSizeAndInvSize.y * (_982 + _111)) + -0.5f);
    _995 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_992, _993, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
    _998 = __3__36__0__0__g_gbufferNormal.Load(int3(_992, _993, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
    _1016 = (saturate(_998.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _1017 = (saturate(_998.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _1018 = (saturate(_998.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _1020 = rsqrt(dot(float3(_1016, _1017, _1018), float3(_1016, _1017, _1018)));  // [sem: invLength]
    _1021 = _1020 * _1016;
    _1022 = _1020 * _1017;
    _1023 = _1018 * _1020;
    _1026 = (((float)((uint)((uint)(((uint)((uint)(_995.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _1027 = (((float)((uint)((uint)(_995.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _1030 = (_1026 + _1027) * 0.5f;
    _1031 = (_1026 - _1027) * 0.5f;
    _1035 = (1.0f - abs(_1030)) - abs(_1031);
    _1037 = rsqrt(dot(float3(_1030, _1031, _1035), float3(_1030, _1031, _1035)));  // [sem: invLength]
    _1038 = _1037 * _1030;
    _1039 = _1037 * _1031;
    _1040 = _1037 * _1035;
    _1042 = select((_1023 >= 0.0f), 1.0f, -1.0f);
    _1045 = -0.0f - (1.0f / (_1042 + _1023));
    _1046 = _1022 * _1045;
    _1047 = _1046 * _1021;
    _1048 = _1042 * _1021;
    _1057 = mad(_1040, _1021, mad(_1039, _1047, ((((_1048 * _1021) * _1045) + 1.0f) * _1038)));
    _1061 = mad(_1040, _1022, mad(_1039, (_1042 + (_1046 * _1022)), ((_1038 * _1042) * _1047)));
    _1065 = mad(_1040, _1023, mad(_1039, (-0.0f - _1022), (-0.0f - (_1048 * _1038))));
    _1067 = rsqrt(dot(float3(_1057, _1061, _1065), float3(_1057, _1061, _1065)));  // [sem: invLength]
    _1068 = _1067 * _1057;
    _1069 = _1067 * _1061;
    _1070 = _1067 * _1065;
    _1075 = _mainPosition.x - _157;
    _1076 = _mainPosition.y - _158;
    _1077 = _mainPosition.z - _159;
    _1082 = saturate(5.0000005f - (sqrt(dot(float3(_1075, _1076, _1077), float3(_1075, _1076, _1077))) * 0.12500001f));  // [sem: expr_sat]
    if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_961.x))))))) + 0.5f) * _110)), ((int)((((float)((int)((int)((float)((int)((int)(_961.y))))))) + 0.5f) * _111)), 0)))).x) & 255) == _renderPassEnemy) {
      _1093 = WaveReadLaneFirst(_materialIndex);
      _1101 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_1093 < (uint)170000), _1093, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._enemyMaskColor);
      _1104 = (float)((uint)((uint)(((uint)((uint)(_1101)) >> 16) & 255)));
      _1107 = (float)((uint)((uint)(((uint)((uint)(_1101)) >> 8) & 255)));
      _1109 = (float)((uint)((uint)(_1101 & 255)));
      _1156 = exp2(log2(saturate(_359 * 0.5f)) * 2.4f) * (((((_958 * 3.25f) + 1.3f) * _38) * _1082) * exp2(log2(abs(dot(float3(_1068, _1069, _1070), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 5.0f));
      _1159 = (((select(((_1104 * 0.003921569f) < 0.04045f), (_1104 * 0.000303527f), exp2(log2((_1104 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f) * _1082) + 1.0f);
      _1160 = (((select(((_1107 * 0.003921569f) < 0.04045f), (_1107 * 0.000303527f), exp2(log2((_1107 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f) * _1082) + 1.0f);
      _1161 = (((select(((_1109 * 0.003921569f) < 0.04045f), (_1109 * 0.000303527f), exp2(log2((_1109 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f) * _1082) + 1.0f);
      _1162 = _1156;
      _1163 = (_1156 * 0.15f);
    } else {
      _1159 = 1.0f;
      _1160 = 1.0f;
      _1161 = 1.0f;
      _1162 = 0.0f;
      _1163 = 0.0f;
    }
    _1175 = ((_958 * 1.25f) * exp2(log2(1.0f - abs(dot(float3(_1068, _1069, _1070), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 5.0f)) * _38;
    _1181 = 0.0f;
    _1182 = 0.0f;
    _1183 = 0.0f;
    _1184 = 0.0f;
    _1185 = _1159;
    _1186 = _1160;
    _1187 = _1161;
    _1188 = (_1162 + (_1175 * 0.3185468f));
    _1189 = (_1163 + (_1175 * 0.033104755f));
  } else {
    _1181 = (_519 * 0.26327342f);
    _1182 = (_519 * 0.050876092f);
    _1183 = (_843 * 0.07323897f);
    _1184 = (_843 * 0.0039359396f);
    _1185 = 1.0f;
    _1186 = 1.0f;
    _1187 = 1.0f;
    _1188 = 0.0f;
    _1189 = 0.0f;
  }
  _1190 = WaveReadLaneFirst(_materialIndex);
  _1198 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_1190 < (uint)170000), _1190, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._fogIntensity);
  _1218 = saturate(saturate(exp2(log2(_263 * 20.0f) * 0.5f)));  // [sem: expr_sat]
  _1238 = ((((((_627 - _462) + _650) + _1183) + _1188) + ((((_1198 * (((lerp(_462, _525, 0.5f)) * 0.8f) - _1181)) + _1181) * saturate(_1185 + 0.2f)) * _1218)) * _929) + _462;
  _1239 = ((((((_628 - _461) + _651) + _1184) + _1189) + ((((_1198 * (((lerp(_461, _525, 0.5f)) * 0.8f) - _1182)) + _1182) * saturate(_1186 + 0.2f)) * _1218)) * _929) + _461;
  _1240 = ((((_629 - _460) + _652) + (((((lerp(_460, _525, 0.5f)) * 0.8f) * _1198) * saturate(_1187 + 0.2f)) * _1218)) * _929) + _460;
  _1241 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1254 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1241, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1254 = 0.0f;
  }
  _1257 = (_localToneMappingParams.w > 0.0f);
  if (_1257) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1238, _1239, _1240));
    _1517 = _rndx_tonemapped_color.x;
    _1518 = _rndx_tonemapped_color.y;
    _1519 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1525 = 1.0f - abs(_etcParams.w);
      _1529 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1530 = (_1525 * _1517) + _1529;
      _1531 = (_1525 * _1518) + _1529;
      _1532 = (_1525 * _1519) + _1529;
      if (_colorGradingParams.w > 0.0f) {
        _1537 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1554 = (((max(0.0f, (1.0f - _1530)) - _1530) * _1537) + _1530);
        _1555 = (((max(0.0f, (1.0f - _1531)) - _1531) * _1537) + _1531);
        _1556 = (((max(0.0f, (1.0f - _1532)) - _1532) * _1537) + _1532);
      } else {
        _1554 = _1530;
        _1555 = _1531;
        _1556 = _1532;
      }
      _1562 = _userImageAdjust.y + 1.0f;
      _1566 = _userImageAdjust.x + 0.5f;
      _1567 = ((_1554 + -0.5f) * _1562) + _1566;
      _1568 = ((_1555 + -0.5f) * _1562) + _1566;
      _1569 = ((_1556 + -0.5f) * _1562) + _1566;
      _1599 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1610 = exp2(log2(saturate(mad(_colorBlind0.z, _1569, mad(_colorBlind0.y, _1568, (_colorBlind0.x * _1567))))) * _1599);
      _1611 = exp2(log2(saturate(mad(_colorBlind1.z, _1569, mad(_colorBlind1.y, _1568, (_colorBlind1.x * _1567))))) * _1599);
      _1612 = exp2(log2(saturate(mad(_colorBlind2.z, _1569, mad(_colorBlind2.y, _1568, (_colorBlind2.x * _1567))))) * _1599);
    } else {
      _1610 = _1517;
      _1611 = _1518;
      _1612 = _1519;
    }
  } else {
    _1610 = _1238;
    _1611 = _1239;
    _1612 = _1240;
  }
  if (_etcParams.y > 1.0f) {
    _1621 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1622 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1626 = saturate(1.0f - (dot(float2(_1621, _1622), float2(_1621, _1622)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _1631 = (_1626 * _1610);
    _1632 = (_1626 * _1611);
    _1633 = (_1626 * _1612);
  } else {
    _1631 = _1610;
    _1632 = _1611;
    _1633 = _1612;
  }
  if (_1257 && (_etcParams.z > 0.0f)) {
    _1663 = select((_1631 <= 0.0031308f), (_1631 * 12.92f), (((pow(_1631, 0.41666666f)) * 1.055f) + -0.055f));
    _1664 = select((_1632 <= 0.0031308f), (_1632 * 12.92f), (((pow(_1632, 0.41666666f)) * 1.055f) + -0.055f));
    _1665 = select((_1633 <= 0.0031308f), (_1633 * 12.92f), (((pow(_1633, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1663 = _1631;
    _1664 = _1632;
    _1665 = _1633;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1670 = (float)((uint)((uint)(_1241)));
    if (!(_1670 < _viewDir.w)) {
      if (!(_1670 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1679 = _1663;
        _1680 = _1664;
        _1681 = _1665;
      } else {
        _1679 = 0.0f;
        _1680 = 0.0f;
        _1681 = 0.0f;
      }
    } else {
      _1679 = 0.0f;
      _1680 = 0.0f;
      _1681 = 0.0f;
    }
  } else {
    _1679 = _1663;
    _1680 = _1664;
    _1681 = _1665;
  }
  _1691 = exp2(log2(_1679 * 0.0001f) * 0.15930176f);
  _1692 = exp2(log2(_1680 * 0.0001f) * 0.15930176f);
  _1693 = exp2(log2(_1681 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1691 * 18.6875f) + 1.0f)) * ((_1691 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1692 * 18.6875f) + 1.0f)) * ((_1692 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1693 * 18.6875f) + 1.0f)) * ((_1693 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1254;
  return SV_Target;
}
