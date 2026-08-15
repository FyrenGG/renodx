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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

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

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

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

struct BindlessParameters_PostProcessTransition {
  PostProcessTransitionStruct BindlessParameters_PostProcessTransition;
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
  float _167;
  float _168;
  float _471;
  float _472;
  float _473;
  float _474;
  float _475;
  float _476;
  float _477;
  bool _522;
  float _581;
  float _596;
  float _597;
  float _598;
  float _720;
  float _721;
  float _722;
  float _816;
  float _817;
  float _818;
  float _911;
  float _912;
  float _913;
  float _1090;
  float _1091;
  float _1092;
  float _1106;
  float _1311;
  float _1312;
  float _1313;
  float _1406;
  float _1407;
  float _1408;
  float _1462;
  float _1463;
  float _1464;
  float _1483;
  float _1484;
  float _1485;
  float _1515;
  float _1516;
  float _1517;
  float _1531;
  float _1532;
  float _1533;
  int _41;
  float _50;
  float _51;
  float _52;
  float _53;
  float _55;
  bool _58;
  bool _59;
  bool _60;
  bool _61;
  float _74;
  int _75;
  float _84;
  float _85;
  int _88;
  int _96;
  float4 _102;
  int _107;
  float _115;
  float _117;
  int _121;
  float _130;
  float _131;
  int _134;
  int _142;
  float4 _148;
  int _153;
  float _162;
  float _163;
  float _169;
  float _170;
  int _171;
  int _179;
  float4 _183;
  uint _197;
  uint _198;
  uint4 _200;
  float4 _203;
  float _221;
  float _222;
  float _223;
  float _225;
  float _226;
  float _227;
  float _228;
  float _231;
  float _232;
  float _235;
  float _236;
  float _240;
  float _242;
  float _243;
  float _244;
  float _245;
  float _247;
  float _250;
  float _251;
  float _252;
  float _253;
  float _262;
  float _266;
  float _270;
  float _272;
  float4 _279;
  uint _294;
  uint _295;
  uint4 _297;
  float4 _300;
  float _318;
  float _319;
  float _320;
  float _322;
  float _323;
  float _324;
  float _325;
  float _328;
  float _329;
  float _332;
  float _333;
  float _337;
  float _339;
  float _340;
  float _341;
  float _342;
  float _344;
  float _347;
  float _348;
  float _349;
  float _350;
  float _359;
  float _363;
  float _367;
  float _369;
  float4 _376;
  uint _391;
  uint _392;
  uint4 _394;
  float4 _397;
  float _415;
  float _416;
  float _417;
  float _419;
  float _420;
  float _421;
  float _422;
  float _425;
  float _426;
  float _429;
  float _430;
  float _434;
  float _436;
  float _437;
  float _438;
  float _439;
  float _441;
  float _444;
  float _445;
  float _446;
  float _447;
  float _456;
  float _460;
  float _464;
  float _466;
  uint2 _479;
  int _496;
  bool _499;
  int _500;
  float _508;
  float _524;
  int _525;
  float _533;
  float _536;
  int _537;
  float _545;
  float _546;
  float _561;
  int _567;
  float _575;
  float _585;
  int _599;
  float _607;
  int _608;
  float _616;
  int _617;
  float _625;
  float _628;
  float _629;
  int _634;
  float _642;
  int _648;
  float _656;
  int _662;
  int _670;
  float _673;
  float _676;
  float _678;
  float _708;
  float _712;
  float _725;
  float _726;
  int _731;
  float _739;
  int _744;
  float _752;
  int _758;
  int _766;
  float _769;
  float _772;
  float _774;
  float _804;
  float _808;
  float _821;
  float _822;
  int _827;
  float _835;
  int _839;
  float _847;
  int _853;
  int _861;
  float _864;
  float _867;
  float _869;
  float _899;
  float _903;
  int _914;
  float _922;
  float _927;
  bool _928;
  float _930;
  int _931;
  int _939;
  float _948;
  float4 _951;
  int _955;
  float _963;
  float _966;
  float _968;
  float _973;
  float _978;
  float _979;
  int _988;
  int _996;
  int _1005;
  int _1013;
  float _1023;
  float _1026;
  int _1050;
  int _1058;
  float4 _1064;
  float _1068;
  uint _1093;
  bool _1109;
  float _1115;
  float _1164;
  float _1165;
  float _1166;
  float _1168;
  float _1175;
  float _1176;
  float _1177;
  float _1196;
  float _1197;
  float _1198;
  float _1199;
  float _1200;
  float _1201;
  float _1202;
  float _1203;
  float _1204;
  float _1250;
  float _1251;
  float _1252;
  float _1253;
  float _1254;
  float _1255;
  float _1256;
  float _1273;
  float _1274;
  float _1275;
  float _1276;
  float _1282;
  float _1285;
  float _1292;
  float _1293;
  float _1294;
  float _1323;
  float _1348;
  float _1349;
  float _1350;
  float _1369;
  float _1370;
  float _1371;
  float _1377;
  float _1381;
  float _1382;
  float _1383;
  float _1384;
  float _1389;
  float _1414;
  float _1418;
  float _1419;
  float _1420;
  float _1421;
  float _1451;
  float _1473;
  float _1474;
  float _1478;
  float _1522;
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_29 < (uint)170000), _29, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._scenePolarDistort);
  if (!(_37 >= 0.001f)) {
    _121 = WaveReadLaneFirst(_materialIndex);
    _130 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_121 < (uint)170000), _121, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTexScale.x);
    _131 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_121 < (uint)170000), _121, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTexScale.y);
    _134 = WaveReadLaneFirst(_materialIndex);
    _142 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_134 < (uint)170000), _134, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTex);
    _148 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_142 < (uint)65000), _142, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_130 * TEXCOORD.x), (_131 * TEXCOORD.y)));
    _153 = WaveReadLaneFirst(_materialIndex);
    _162 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_153 < (uint)170000), _153, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortIntensity.x);
    _163 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_153 < (uint)170000), _153, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortIntensity.y);
    _167 = (_162 * (_148.x + -0.5f));
    _168 = (_163 * (_148.y + -0.5f));
  } else {
    _41 = WaveReadLaneFirst(_materialIndex);
    _50 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_41 < (uint)170000), _41, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._scenePolarDistortCenter.x);
    _51 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_41 < (uint)170000), _41, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._scenePolarDistortCenter.y);
    _52 = TEXCOORD.x - _50;
    _53 = TEXCOORD.y - _51;
    _55 = atan(_53 / _52);
    _58 = (_52 < 0.0f);
    _59 = (_52 == 0.0f);
    _60 = (_53 >= 0.0f);
    _61 = (_53 < 0.0f);
    _74 = sqrt((_53 * _53) + (_52 * _52));
    _75 = WaveReadLaneFirst(_materialIndex);
    _84 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTexScale.x);
    _85 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTexScale.y);
    _88 = WaveReadLaneFirst(_materialIndex);
    _96 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_88 < (uint)170000), _88, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneDistortTex);
    _102 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_96 < (uint)65000), _96, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_84 * select((_59 && _60), 0.5f, select((_59 && _61), -0.5f, (select((_58 && _61), (_55 + -3.1415927f), select((_58 && _60), (_55 + 3.1415927f), _55)) * 0.31830987f)))), (_85 * _74)));
    _107 = WaveReadLaneFirst(_materialIndex);
    _115 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_107 < (uint)170000), _107, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._scenePolarDistort);
    _117 = saturate(_74) * _115;
    _167 = (_117 * (_102.x + -0.5f));
    _168 = (_117 * (_102.y + -0.5f));
  }
  _169 = TEXCOORD.x - _167;
  _170 = TEXCOORD.y - _168;
  _171 = WaveReadLaneFirst(_materialIndex);
  _179 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_171 < (uint)170000), _171, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sceneSampleType);
  switch (_179) {
    case 0: {
      _183 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_169, _170));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _197 = (uint)((_bufferSizeAndInvSize.x * _169) + -0.5f);
      _198 = (uint)((_bufferSizeAndInvSize.y * _170) + -0.5f);
      _200 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_197, _198, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _203 = __3__36__0__0__g_gbufferNormal.Load(int3(_197, _198, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _221 = (saturate(_203.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _222 = (saturate(_203.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _223 = (saturate(_203.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _225 = rsqrt(dot(float3(_221, _222, _223), float3(_221, _222, _223)));  // [sem: invLength]
      _226 = _225 * _221;
      _227 = _225 * _222;
      _228 = _223 * _225;
      _231 = (((float)((uint)((uint)(((uint)((uint)(_200.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _232 = (((float)((uint)((uint)(_200.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _235 = (_231 + _232) * 0.5f;
      _236 = (_231 - _232) * 0.5f;
      _240 = (1.0f - abs(_235)) - abs(_236);
      _242 = rsqrt(dot(float3(_235, _236, _240), float3(_235, _236, _240)));  // [sem: invLength]
      _243 = _242 * _235;
      _244 = _242 * _236;
      _245 = _242 * _240;
      _247 = select((_228 >= 0.0f), 1.0f, -1.0f);
      _250 = -0.0f - (1.0f / (_247 + _228));
      _251 = _227 * _250;
      _252 = _251 * _226;
      _253 = _247 * _226;
      _262 = mad(_245, _226, mad(_244, _252, ((((_253 * _226) * _250) + 1.0f) * _243)));
      _266 = mad(_245, _227, mad(_244, (_247 + (_251 * _227)), ((_243 * _247) * _252)));
      _270 = mad(_245, _228, mad(_244, (-0.0f - _227), (-0.0f - (_253 * _243))));
      _272 = rsqrt(dot(float3(_262, _266, _270), float3(_262, _266, _270)));  // [sem: invLength]
      _471 = _183.x;
      _472 = _183.y;
      _473 = _183.z;
      _474 = ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_169, _170))).x);
      _475 = (_272 * _262);
      _476 = (_272 * _266);
      _477 = (_272 * _270);
      break;
    }
    case 1: {
      _279 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_169, _170));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _294 = (uint)((_bufferSizeAndInvSize.x * _169) + -0.5f);
      _295 = (uint)((_bufferSizeAndInvSize.y * _170) + -0.5f);
      _297 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_294, _295, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _300 = __3__36__0__0__g_gbufferNormal.Load(int3(_294, _295, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _318 = (saturate(_300.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _319 = (saturate(_300.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _320 = (saturate(_300.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _322 = rsqrt(dot(float3(_318, _319, _320), float3(_318, _319, _320)));  // [sem: invLength]
      _323 = _322 * _318;
      _324 = _322 * _319;
      _325 = _320 * _322;
      _328 = (((float)((uint)((uint)(((uint)((uint)(_297.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _329 = (((float)((uint)((uint)(_297.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _332 = (_328 + _329) * 0.5f;
      _333 = (_328 - _329) * 0.5f;
      _337 = (1.0f - abs(_332)) - abs(_333);
      _339 = rsqrt(dot(float3(_332, _333, _337), float3(_332, _333, _337)));  // [sem: invLength]
      _340 = _339 * _332;
      _341 = _339 * _333;
      _342 = _339 * _337;
      _344 = select((_325 >= 0.0f), 1.0f, -1.0f);
      _347 = -0.0f - (1.0f / (_344 + _325));
      _348 = _324 * _347;
      _349 = _348 * _323;
      _350 = _344 * _323;
      _359 = mad(_342, _323, mad(_341, _349, ((((_350 * _323) * _347) + 1.0f) * _340)));
      _363 = mad(_342, _324, mad(_341, (_344 + (_348 * _324)), ((_340 * _344) * _349)));
      _367 = mad(_342, _325, mad(_341, (-0.0f - _324), (-0.0f - (_350 * _340))));
      _369 = rsqrt(dot(float3(_359, _363, _367), float3(_359, _363, _367)));  // [sem: invLength]
      _471 = _279.x;
      _472 = _279.y;
      _473 = _279.z;
      _474 = ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_169, _170))).x);
      _475 = (_369 * _359);
      _476 = (_369 * _363);
      _477 = (_369 * _367);
      break;
    }
    case 2: {
      _376 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_169, _170));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _391 = (uint)((_bufferSizeAndInvSize.x * _169) + -0.5f);
      _392 = (uint)((_bufferSizeAndInvSize.y * _170) + -0.5f);
      _394 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_391, _392, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _397 = __3__36__0__0__g_gbufferNormal.Load(int3(_391, _392, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _415 = (saturate(_397.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _416 = (saturate(_397.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _417 = (saturate(_397.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _419 = rsqrt(dot(float3(_415, _416, _417), float3(_415, _416, _417)));  // [sem: invLength]
      _420 = _419 * _415;
      _421 = _419 * _416;
      _422 = _417 * _419;
      _425 = (((float)((uint)((uint)(((uint)((uint)(_394.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _426 = (((float)((uint)((uint)(_394.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _429 = (_425 + _426) * 0.5f;
      _430 = (_425 - _426) * 0.5f;
      _434 = (1.0f - abs(_429)) - abs(_430);
      _436 = rsqrt(dot(float3(_429, _430, _434), float3(_429, _430, _434)));  // [sem: invLength]
      _437 = _436 * _429;
      _438 = _436 * _430;
      _439 = _436 * _434;
      _441 = select((_422 >= 0.0f), 1.0f, -1.0f);
      _444 = -0.0f - (1.0f / (_441 + _422));
      _445 = _421 * _444;
      _446 = _445 * _420;
      _447 = _441 * _420;
      _456 = mad(_439, _420, mad(_438, _446, ((((_447 * _420) * _444) + 1.0f) * _437)));
      _460 = mad(_439, _421, mad(_438, (_441 + (_445 * _421)), ((_437 * _441) * _446)));
      _464 = mad(_439, _422, mad(_438, (-0.0f - _421), (-0.0f - (_447 * _437))));
      _466 = rsqrt(dot(float3(_456, _460, _464), float3(_456, _460, _464)));  // [sem: invLength]
      _471 = _376.x;
      _472 = _376.y;
      _473 = _376.z;
      _474 = ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearBlackBorder, float2(_169, _170))).x);
      _475 = (_466 * _456);
      _476 = (_466 * _460);
      _477 = (_466 * _464);
      break;
    }
    default: {
      _471 = 0.0f;
      _472 = 0.0f;
      _473 = 0.0f;
      _474 = 0.0f;
      _475 = 0.0f;
      _476 = 0.0f;
      _477 = 0.0f;
      break;
    }
  }
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_479.x, _479.y);
  _496 = (((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_479.x))))))) + 0.5f) * _169)), ((int)((((float)((int)((int)((float)((int)((int)(_479.y))))))) + 0.5f) * _170)), 0)))).x) & 255;
  _499 = (_474 < 1e-07f) || (_474 == 1.0f);
  _500 = WaveReadLaneFirst(_materialIndex);
  _508 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_500 < (uint)170000), _500, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._impactFrame);
  if (!(!(_508 >= 0.001f))) {
    if (!(_496 == _renderPassSelfPlayer)) {
      if (!(_496 == _renderPassTest)) {
        _522 = (_496 == _renderPassTargetFocus);
      } else {
        _522 = true;
      }
    } else {
      _522 = true;
    }
    _524 = select(_499, 1.0f, select(_522, 0.0f, 1.0f));
    _525 = WaveReadLaneFirst(_materialIndex);
    _533 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_525 < (uint)170000), _525, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._impactFrameInverse);
    _536 = select((_533 > 0.001f), (1.0f - _524), _524);
    _537 = WaveReadLaneFirst(_materialIndex);
    _545 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_537 < (uint)170000), _537, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._impactFrameFresnel);
    _546 = abs(_545);
    if (!(_499 || (!(_546 > 0.0f)))) {
      _561 = abs(1.0f - saturate(dot(float3(_475, _476, _477), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z)))));
      _567 = WaveReadLaneFirst(_materialIndex);
      _575 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_567 < (uint)170000), _567, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._impactFrameFresnelIntensity);
      _581 = ((saturate(_575 * exp2(log2(select((_545 < 0.0f), (1.0f - _561), _561)) * _546)) + 0.002f) * _536);
    } else {
      _581 = _536;
    }
    _585 = _581 / max(0.001f, _exposure0.x);
    _596 = (lerp(_471, _585, _508));  // [sem: blended]
    _597 = (lerp(_472, _585, _508));  // [sem: blended]
    _598 = (lerp(_473, _585, _508));  // [sem: blended]
  } else {
    _596 = _471;  // [sem: blended]
    _597 = _472;  // [sem: blended]
    _598 = _473;  // [sem: blended]
  }
  _599 = WaveReadLaneFirst(_materialIndex);
  _607 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_599 < (uint)170000), _599, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._topVignetteRatio);
  _608 = WaveReadLaneFirst(_materialIndex);
  _616 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_608 < (uint)170000), _608, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sideVignetteRatio);
  _617 = WaveReadLaneFirst(_materialIndex);
  _625 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_617 < (uint)170000), _617, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._bottomVignetteRatio);
  if (!(!(_616 >= 0.001f))) {
    _628 = TEXCOORD.x + -0.5f;
    _629 = TEXCOORD.y + -0.5f;
    _634 = WaveReadLaneFirst(_materialIndex);
    _642 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_634 < (uint)170000), _634, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sideVignetteRadius);
    _648 = WaveReadLaneFirst(_materialIndex);
    _656 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_648 < (uint)170000), _648, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sideVignettePower);
    _662 = WaveReadLaneFirst(_materialIndex);
    _670 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_662 < (uint)170000), _662, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._sideVignetteColor);
    _673 = (float)((uint)((uint)(((uint)((uint)(_670)) >> 16) & 255)));
    _676 = (float)((uint)((uint)(((uint)((uint)(_670)) >> 8) & 255)));
    _678 = (float)((uint)((uint)(_670 & 255)));
    _708 = max(0.001f, _exposure0.x);
    _712 = saturate(exp2(log2(abs(0.5f - TEXCOORD.x)) * _656) * (sqrt((_629 * _629) + (_628 * _628)) / max(0.001f, (1.0f - _642)))) * _616;
    _720 = (((select(((_673 * 0.003921569f) < 0.04045f), (_673 * 0.000303527f), exp2(log2((_673 * 0.003717127f) + 0.052132703f) * 2.4f)) / _708) * _712) + _596);
    _721 = (((select(((_676 * 0.003921569f) < 0.04045f), (_676 * 0.000303527f), exp2(log2((_676 * 0.003717127f) + 0.052132703f) * 2.4f)) / _708) * _712) + _597);
    _722 = (((select(((_678 * 0.003921569f) < 0.04045f), (_678 * 0.000303527f), exp2(log2((_678 * 0.003717127f) + 0.052132703f) * 2.4f)) / _708) * _712) + _598);
  } else {
    _720 = _596;
    _721 = _597;
    _722 = _598;
  }
  if (!(!(_607 >= 0.001f))) {
    _725 = TEXCOORD.x + -0.5f;
    _726 = TEXCOORD.y + -0.5f;
    _731 = WaveReadLaneFirst(_materialIndex);
    _739 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_731 < (uint)170000), _731, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._topVignetteRadius);
    _744 = WaveReadLaneFirst(_materialIndex);
    _752 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_744 < (uint)170000), _744, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._topVignettePower);
    _758 = WaveReadLaneFirst(_materialIndex);
    _766 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_758 < (uint)170000), _758, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._topVignetteColor);
    _769 = (float)((uint)((uint)(((uint)((uint)(_766)) >> 16) & 255)));
    _772 = (float)((uint)((uint)(((uint)((uint)(_766)) >> 8) & 255)));
    _774 = (float)((uint)((uint)(_766 & 255)));
    _804 = max(0.001f, _exposure0.x);
    _808 = saturate(exp2(log2(1.0f - TEXCOORD.y) * _752) * (sqrt((_726 * _726) + (_725 * _725)) / max(0.001f, (1.0f - _739)))) * _607;
    _816 = (((select(((_769 * 0.003921569f) < 0.04045f), (_769 * 0.000303527f), exp2(log2((_769 * 0.003717127f) + 0.052132703f) * 2.4f)) / _804) * _808) + _720);
    _817 = (((select(((_772 * 0.003921569f) < 0.04045f), (_772 * 0.000303527f), exp2(log2((_772 * 0.003717127f) + 0.052132703f) * 2.4f)) / _804) * _808) + _721);
    _818 = (((select(((_774 * 0.003921569f) < 0.04045f), (_774 * 0.000303527f), exp2(log2((_774 * 0.003717127f) + 0.052132703f) * 2.4f)) / _804) * _808) + _722);
  } else {
    _816 = _720;
    _817 = _721;
    _818 = _722;
  }
  if (!(!(_625 >= 0.001f))) {
    _821 = TEXCOORD.x + -0.5f;
    _822 = TEXCOORD.y + -0.5f;
    _827 = WaveReadLaneFirst(_materialIndex);
    _835 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_827 < (uint)170000), _827, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._bottomVignetteRadius);
    _839 = WaveReadLaneFirst(_materialIndex);
    _847 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_839 < (uint)170000), _839, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._bottomVignettePower);
    _853 = WaveReadLaneFirst(_materialIndex);
    _861 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_853 < (uint)170000), _853, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._bottomVignetteColor);
    _864 = (float)((uint)((uint)(((uint)((uint)(_861)) >> 16) & 255)));
    _867 = (float)((uint)((uint)(((uint)((uint)(_861)) >> 8) & 255)));
    _869 = (float)((uint)((uint)(_861 & 255)));
    _899 = max(0.001f, _exposure0.x);
    _903 = saturate((pow(TEXCOORD.y, _847)) * (sqrt((_822 * _822) + (_821 * _821)) / max(0.001f, (1.0f - _835)))) * _625;
    _911 = (((select(((_864 * 0.003921569f) < 0.04045f), (_864 * 0.000303527f), exp2(log2((_864 * 0.003717127f) + 0.052132703f) * 2.4f)) / _899) * _903) + _816);
    _912 = (((select(((_867 * 0.003921569f) < 0.04045f), (_867 * 0.000303527f), exp2(log2((_867 * 0.003717127f) + 0.052132703f) * 2.4f)) / _899) * _903) + _817);
    _913 = (((select(((_869 * 0.003921569f) < 0.04045f), (_869 * 0.000303527f), exp2(log2((_869 * 0.003717127f) + 0.052132703f) * 2.4f)) / _899) * _903) + _818);
  } else {
    _911 = _816;
    _912 = _817;
    _913 = _818;
  }
  _914 = WaveReadLaneFirst(_materialIndex);
  _922 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_914 < (uint)170000), _914, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransition);
  if ((_922 >= 0.001f) && (_922 < 1.0f)) {
    _927 = _922 * 2.0f;
    _928 = (_927 > 1.0f);
    _930 = select(_928, (_927 + -1.0f), _927);
    _931 = WaveReadLaneFirst(_materialIndex);
    _939 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_931 < (uint)170000), _931, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionNoiseTex);
    _948 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_939 < (uint)65000), _939, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y)))).x) * 0.2f;
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _951 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _955 = WaveReadLaneFirst(_materialIndex);
    _963 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_955 < (uint)170000), _955, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionUseDivide);
    _966 = (_930 + -0.5f) * 1.5f;
    _968 = _948 + (TEXCOORD.x - _966);
    _973 = select((_930 >= 0.9f), ((_930 + -0.9f) * 10.0f), 0.0f);
    if (!(_963 == 0.0f)) {
      _978 = TEXCOORD.y + 0.45f;
      _979 = TEXCOORD.y + -0.45f;
      _988 = WaveReadLaneFirst(_materialIndex);
      _996 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_988 < (uint)170000), _988, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionTex);
      _1005 = WaveReadLaneFirst(_materialIndex);
      _1013 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_1005 < (uint)170000), _1005, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionTex);
      // [sem: expr_sat]
      _1023 = saturate(((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1013 < (uint)65000), _1013, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2((((1.0f - TEXCOORD.x) - _966) + _948), _979)))).x) * select(((_979 < 0.0f) || (_979 > 1.0f)), 0.0f, 1.0f)) + ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_996 < (uint)65000), _996, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_968, _978)))).x) * select(((_978 < 0.0f) || (_978 > 1.0f)), 0.0f, 1.0f)));
      _1026 = ((1.0f - _1023) * _973) + _1023;
      if (_928) {
        _1090 = ((_1026 * (_911 - _951.x)) + _951.x);
        _1091 = ((_1026 * (_912 - _951.y)) + _951.y);
        _1092 = ((_1026 * (_913 - _951.z)) + _951.z);
      } else {
        _1090 = ((_1026 * (_951.x - _911)) + _911);
        _1091 = ((_1026 * (_951.y - _912)) + _912);
        _1092 = ((_1026 * (_951.z - _913)) + _913);
      }
    } else {
      _1050 = WaveReadLaneFirst(_materialIndex);
      _1058 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_1050 < (uint)170000), _1050, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransitionTex);
      _1064 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1058 < (uint)65000), _1058, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_968, ((TEXCOORD.y * 0.95f) + 0.025f)));
      _1068 = ((1.0f - _1064.x) * _973) + _1064.x;
      if (_928) {
        _1090 = ((_1068 * (_911 - _951.x)) + _951.x);
        _1091 = ((_1068 * (_912 - _951.y)) + _951.y);
        _1092 = ((_1068 * (_913 - _951.z)) + _951.z);
      } else {
        _1090 = ((_1068 * (_951.x - _911)) + _911);
        _1091 = ((_1068 * (_951.y - _912)) + _912);
        _1092 = ((_1068 * (_951.z - _913)) + _913);
      }
    }
  } else {
    _1090 = _911;
    _1091 = _912;
    _1092 = _913;
  }
  _1093 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1106 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1093, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1106 = 1.0f;
  }
  _1109 = (_localToneMappingParams.w > 0.0f);
  if (_1109) {
    _1115 = _userImageAdjust.z * _exposure0.x;
    _1164 = exp2(log2(max(0.0f, (((_1115 * max(0.0f, (((_1090 * 1.70505f) - (_1091 * 0.62179f)) - (_1092 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _1165 = exp2(log2(max(0.0f, (((max(0.0f, (((_1091 * 1.1408f) - (_1090 * 0.13026f)) - (_1092 * 0.01055f))) * _1115) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _1166 = exp2(log2(max(0.0f, (((max(0.0f, (((_1090 * -0.024f) - (_1091 * 0.12897f)) + (_1092 * 1.15297f))) * _1115) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _1168 = dot(float3(_1164, _1165, _1166), float3(0.212671f, 0.71516f, 0.072169f));
    _1175 = ((_1164 - _1168) * _powerParams.w) + _1168;
    _1176 = ((_1165 - _1168) * _powerParams.w) + _1168;
    _1177 = ((_1166 - _1168) * _powerParams.w) + _1168;
    _1196 = min(max(log2(mad(_1177, 0.079223745f, mad(_1176, 0.0784336f, (_1175 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1197 = min(max(log2(mad(_1177, 0.07916613f, mad(_1176, 0.87846863f, (_1175 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1198 = min(max(log2(mad(_1177, 0.879143f, mad(_1176, 0.0784336f, (_1175 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1199 = _1196 * 0.060606062f;
    _1200 = _1197 * 0.060606062f;
    _1201 = _1198 * 0.060606062f;
    _1202 = _1199 * _1199;
    _1203 = _1200 * _1200;
    _1204 = _1201 * _1201;
    _1250 = min(0.0f, (-0.0f - (((_1196 * 0.0072181816f) + ((_1202 * 0.4298f) + (((_1202 * _1202) * ((31.96f - (_1196 * 2.4327273f)) + (_1202 * 15.5f))) - ((_1196 * 0.41624245f) * _1202)))) + -0.00232f)));
    _1251 = min(0.0f, (-0.0f - (((_1197 * 0.0072181816f) + ((_1203 * 0.4298f) + (((_1203 * _1203) * ((31.96f - (_1197 * 2.4327273f)) + (_1203 * 15.5f))) - ((_1197 * 0.41624245f) * _1203)))) + -0.00232f)));
    _1252 = min(0.0f, (-0.0f - (((_1198 * 0.0072181816f) + ((_1204 * 0.4298f) + (((_1204 * _1204) * ((31.96f - (_1198 * 2.4327273f)) + (_1204 * 15.5f))) - ((_1198 * 0.41624245f) * _1204)))) + -0.00232f)));
    _1253 = -0.0f - _1250;
    _1254 = -0.0f - _1251;
    _1255 = -0.0f - _1252;
    _1256 = dot(float3(_1253, _1254, _1255), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _1273 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1274 = -0.79999995f / _1273;
      _1275 = -1.2f / _1273;
      _1276 = 0.20000005f / _1273;
      _1282 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1285 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1292 = (_1274 + 1.4f) + (_1285 * (-0.39999998f - _1274));
      _1293 = (_1275 + 1.6f) + (_1285 * (-0.6f - _1275));
      _1294 = (_1276 + 0.9f) + (_1285 * (0.5f - _1276));
      _1311 = (lerp(_1293, 1.2f, _1282));  // [sem: blended]
      _1312 = (lerp(_1292, 1.0f, _1282));  // [sem: blended]
      _1313 = (lerp(_1294, 1.4f, _1282));  // [sem: blended]
    } else {
      _1311 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _1312 = 1.0f;  // [sem: blended]
      _1313 = 1.4f;  // [sem: blended]
    }
    _1323 = 1.0f - _1311;
    _1348 = ((exp2(log2(((saturate((_1250 * _1250) * _1253) * _1323) + _1311) * _1253) * _1312) - _1256) * _1313) + _1256;
    _1349 = ((exp2(log2(((saturate((_1251 * _1251) * _1254) * _1323) + _1311) * _1254) * _1312) - _1256) * _1313) + _1256;
    _1350 = ((exp2(log2(((saturate((_1252 * _1252) * _1255) * _1323) + _1311) * _1255) * _1312) - _1256) * _1313) + _1256;
    _1369 = saturate(exp2(log2(mad(_1350, -0.09902974f, mad(_1349, -0.09802088f, (_1348 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _1370 = saturate(exp2(log2(mad(_1350, -0.098961174f, mad(_1349, 1.1519032f, (_1348 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1371 = saturate(exp2(log2(mad(_1350, 1.1510737f, mad(_1349, -0.09804345f, (_1348 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _1377 = 1.0f - abs(_etcParams.w);
      _1381 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1382 = (_1377 * _1369) + _1381;
      _1383 = (_1377 * _1370) + _1381;
      _1384 = (_1377 * _1371) + _1381;
      if (_colorGradingParams.w > 0.0f) {
        _1389 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1406 = (((max(0.0f, (1.0f - _1382)) - _1382) * _1389) + _1382);
        _1407 = (((max(0.0f, (1.0f - _1383)) - _1383) * _1389) + _1383);
        _1408 = (((max(0.0f, (1.0f - _1384)) - _1384) * _1389) + _1384);
      } else {
        _1406 = _1382;
        _1407 = _1383;
        _1408 = _1384;
      }
      _1414 = _userImageAdjust.y + 1.0f;
      _1418 = _userImageAdjust.x + 0.5f;
      _1419 = ((_1406 + -0.5f) * _1414) + _1418;
      _1420 = ((_1407 + -0.5f) * _1414) + _1418;
      _1421 = ((_1408 + -0.5f) * _1414) + _1418;
      _1451 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1462 = exp2(log2(saturate(mad(_colorBlind0.z, _1421, mad(_colorBlind0.y, _1420, (_colorBlind0.x * _1419))))) * _1451);
      _1463 = exp2(log2(saturate(mad(_colorBlind1.z, _1421, mad(_colorBlind1.y, _1420, (_colorBlind1.x * _1419))))) * _1451);
      _1464 = exp2(log2(saturate(mad(_colorBlind2.z, _1421, mad(_colorBlind2.y, _1420, (_colorBlind2.x * _1419))))) * _1451);
    } else {
      _1462 = _1369;
      _1463 = _1370;
      _1464 = _1371;
    }
  } else {
    _1462 = _1090;
    _1463 = _1091;
    _1464 = _1092;
  }
  if (_etcParams.y > 1.0f) {
    _1473 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1474 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1478 = saturate(1.0f - (dot(float2(_1473, _1474), float2(_1473, _1474)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _1483 = (_1478 * _1462);
    _1484 = (_1478 * _1463);
    _1485 = (_1478 * _1464);
  } else {
    _1483 = _1462;
    _1484 = _1463;
    _1485 = _1464;
  }
  if (_1109 && (_etcParams.z > 0.0f)) {
    _1515 = select((_1483 <= 0.0031308f), (_1483 * 12.92f), (((pow(_1483, 0.41666666f)) * 1.055f) + -0.055f));
    _1516 = select((_1484 <= 0.0031308f), (_1484 * 12.92f), (((pow(_1484, 0.41666666f)) * 1.055f) + -0.055f));
    _1517 = select((_1485 <= 0.0031308f), (_1485 * 12.92f), (((pow(_1485, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1515 = _1483;
    _1516 = _1484;
    _1517 = _1485;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1522 = (float)((uint)((uint)(_1093)));
    if (!(_1522 < _viewDir.w)) {
      if (!(_1522 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1531 = _1515;
        _1532 = _1516;
        _1533 = _1517;
      } else {
        _1531 = 0.0f;
        _1532 = 0.0f;
        _1533 = 0.0f;
      }
    } else {
      _1531 = 0.0f;
      _1532 = 0.0f;
      _1533 = 0.0f;
    }
  } else {
    _1531 = _1515;
    _1532 = _1516;
    _1533 = _1517;
  }
  SV_Target.x = _1531;
  SV_Target.y = _1532;
  SV_Target.z = _1533;
  SV_Target.w = _1106;
  return SV_Target;
}
