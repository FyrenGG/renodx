struct PostProcessAnamorphic_CDStruct {
  float _anamorphicProgress;
  uint _anamorphicPlayerColor;
  uint _anamorphicBackgroundColor;
  uint _noiseTex;
  uint _milkyWayTexture;
  float _milkyWayRatio;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t44, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t71, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t97, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t45, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t87, space36);

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
  row_major float4x4 _viewProj;
  row_major float4x4 _viewProjNoJitter;
  row_major float4x4 _viewProjRelative;
  row_major float4x4 _viewProjRelativeNoJitter;
  row_major float4x4 _invViewProj;
  row_major float4x4 _invViewProjRelative;
  row_major float4x4 _invViewProjRelativeNoJitter;
  row_major float4x4 _viewProjRelativeOrtho;
  float4 _sunDirection;
  float4 _moonDirection;
  float4 _moonRight;
  float4 _moonUp;
  float4 _ssaoRandomDirection[16];
  row_major float4x4 _view;
  row_major float4x4 _viewRelative;
  row_major float4x4 _viewRelativePrev;
  row_major float4x4 _proj;
  row_major float4x4 _projNoJitter;
  float4 _viewPosPrev;
  row_major float4x4 _viewProjNoJitterPrev;
  row_major float4x4 _viewProjRelativePrev;
  row_major float4x4 _viewProjRelativeNoJitterPrev;
  row_major float4x4 _invViewProjPrev;
  row_major float4x4 _invViewProjRelativePrev;
  row_major float4x4 _projToPrevProj;
  row_major float4x4 _projToPrevProjNoTranslation;
  row_major float4x4 _viewProjectionTexScale;
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
  min16float4 _debugBaseColor16;
  min16float4 _debugNormal16;
  min16float4 _debugMaterial16;
  min16float4 _debugMultiplier16;
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

#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"



#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
#endif

cbuffer __3__35__0__0__AtmosphereConstantBuffer : register(b26, space35) {
  float _sunLightIntensity : packoffset(c000.x);
  float _sunLightPreset : packoffset(c000.y);
  float _sunSizeAngle : packoffset(c000.z);
  float _sunSizeAngleCosine : packoffset(c000.w);
  float _sunDirY : packoffset(c001.x);
  float _moonLightIntensity : packoffset(c001.y);
  float _moonLightPreset : packoffset(c001.z);
  float _moonSizeAngle : packoffset(c001.w);
  float _moonSizeAngleCosine : packoffset(c002.x);
  float _moonDirY : packoffset(c002.y);
  float _earthAxisTilt : packoffset(c002.z);
  float _latitude : packoffset(c002.w);
  float _dummy : packoffset(c003.x);
  float _atmosphereThickness : packoffset(c003.y);
  float _rayleighScaledHeight : packoffset(c003.z);
  uint _rayleighScatteringColor : packoffset(c003.w);
  float _mieScaledHeight : packoffset(c004.x);
  float _mieAerosolDensity : packoffset(c004.y);
  float _mieAerosolAbsorption : packoffset(c004.z);
  float _miePhaseConst : packoffset(c004.w);
  float _ozoneRatio : packoffset(c005.x);
  float _directionalLightLuminanceScale : packoffset(c005.y);
  float _distanceScale : packoffset(c005.z);
  float _heightFogDensity : packoffset(c005.w);
  float _heightFogBaseline : packoffset(c006.x);
  float _heightFogFalloff : packoffset(c006.y);
  float _heightFogScale : packoffset(c006.z);
  float _cloudBaseDensity : packoffset(c006.w);
  float _cloudBaseContrast : packoffset(c007.x);
  float _cloudBaseScale : packoffset(c007.y);
  float _cloudAlpha : packoffset(c007.z);
  float _cloudScrollMultiplier : packoffset(c007.w);
  float _cloudScatteringCoefficient : packoffset(c008.x);
  float _cloudPhaseConstFront : packoffset(c008.y);
  float _cloudPhaseConstBack : packoffset(c008.z);
  float _cloudAltitude : packoffset(c008.w);
  float _cloudThickness : packoffset(c009.x);
  float _cloudVisibleRange : packoffset(c009.y);
  float _cloudNear : packoffset(c009.z);
  float _cloudFadeRange : packoffset(c009.w);
  float _cloudDetailRatio : packoffset(c010.x);
  float _cloudDetailScale : packoffset(c010.y);
  float _cloudMultiRatio : packoffset(c010.z);
  float _cloudBeerPowderRatio : packoffset(c010.w);
  float _cloudCirrusAltitude : packoffset(c011.x);
  float _cloudCirrusDensity : packoffset(c011.y);
  float _cloudCirrusScale : packoffset(c011.z);
  float _cloudCirrusWeightR : packoffset(c011.w);
  float _cloudCirrusWeightG : packoffset(c012.x);
  float _cloudCirrusWeightB : packoffset(c012.y);
  float _cloudFlow : packoffset(c012.z);
  float _cloudSeed : packoffset(c012.w);
  float4 _volumeFogScatterColor : packoffset(c013.x);
  float4 _mieScatterColor : packoffset(c014.x);
};

#if 0 // Provided by tonemap.hlsli
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
#endif

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
#endif

cbuffer GlobalMaterialGlobalParameter_Common : register(b50, space98) {
  float3 _mainPosition : packoffset(c000.x);
  float3 _mainPositionPrev : packoffset(c001.x);
  float3 _targetFocusPosition : packoffset(c002.x);
  float _hpPercentage : packoffset(c002.w);
  uint _skinnedMeshNoiseTexture : packoffset(c003.x);
  float _highLightForVision : packoffset(c003.y);
  float _highLightForVisionRemoteCatch : packoffset(c003.z);
  float _characterHighlight : packoffset(c003.w);
  uint _specialModeType : packoffset(c004.x);
  float _visionRadius : packoffset(c004.y);
  float _interactionTime : packoffset(c004.z);
  float3 _questGuideWorldPosition : packoffset(c005.x);
  float3 _detectModeUp : packoffset(c006.x);
  float3 _detectModeLook : packoffset(c007.x);
  float3 _detectModePosition : packoffset(c008.x);
  float2 _detectModeLightProfileOffset : packoffset(c009.x);
  uint _detectModeLightProfileIndex : packoffset(c009.z);
  float _detectModeAngle : packoffset(c009.w);
  float _detectModeRadius : packoffset(c010.x);
  uint _useHatMode : packoffset(c010.y);
  uint4 _oreVeinBitMask : packoffset(c011.x);
  uint _oreVeinDissolveIndex : packoffset(c012.x);
  float _oreVeinDissolveRatio : packoffset(c012.y);
  float _hideStateRatio : packoffset(c012.z);
  float3 _hazardAlertPosition : packoffset(c013.x);
  float _wantedRegionRatio : packoffset(c013.w);
  float _wantedRegionOpacity : packoffset(c014.x);
  float _wantedRegionRadius : packoffset(c014.y);
  float3 _wantedRegionPosition : packoffset(c015.x);
  float _elementActivateDuration : packoffset(c015.w);
  float _temperatureWarning : packoffset(c016.x);
  float _electrocutionWarning : packoffset(c016.y);
  float _fleeCount : packoffset(c016.z);
  float _followLearning : packoffset(c016.w);
  float4 _enemyAlert1 : packoffset(c017.x);
  float4 _enemyAlert2 : packoffset(c018.x);
  float _pullingEffectAttractionOffRadius : packoffset(c019.x);
  float _pullingEffectPushFromCharacter : packoffset(c019.y);
  float _pullingEffectPushScale : packoffset(c019.z);
  float _pullingEffectAttractionScale : packoffset(c019.w);
  float _pullingEffectExternalScale : packoffset(c020.x);
  float _pullingEffectVectorFieldScale : packoffset(c020.y);
  float _pullingEffectHeightOffset : packoffset(c020.z);
  float _housingPreviewState : packoffset(c020.w);
  float _customEffectOpacity : packoffset(c021.x);
  uint _renderPassInteraction : packoffset(c021.y);
  uint _renderPassSelfPlayer : packoffset(c021.z);
  uint _renderPassEnemy : packoffset(c021.w);
  uint _renderPassTargetFocus : packoffset(c022.x);
  uint _renderPassLearning : packoffset(c022.y);
  uint _renderPassTest : packoffset(c022.z);
  uint _enableChromaticAberration : packoffset(c022.w);
  uint _renderPassDetectObjective : packoffset(c023.x);
  uint _renderPassDetectItem : packoffset(c023.y);
  uint _renderPassDetectGimmick : packoffset(c023.z);
  uint _renderPassDetectRemoteCatch : packoffset(c023.w);
  uint _renderPassDetectPickedRemoteCatch : packoffset(c024.x);
  uint _renderPassDetectLift : packoffset(c024.y);
  uint _renderPassKnowledgeNPC : packoffset(c024.z);
  uint _renderPassKnowledgeGain : packoffset(c024.w);
  uint _renderPassAnamorphicMural : packoffset(c025.x);
  uint _renderPassMemoryBackground : packoffset(c025.y);
  uint _renderPassMemory : packoffset(c025.z);
  uint _renderPassEnemyBoss : packoffset(c025.w);
  uint _renderPassAimHighlight : packoffset(c026.x);
  float4 _aimHighlightPosition : packoffset(c027.x);
  uint _renderPassNPCGhost : packoffset(c028.x);
  uint _renderPassHousing : packoffset(c028.y);
  uint _characterMeshEffectType : packoffset(c028.z);
};

struct BindlessParameters_PostProcessAnamorphic_CD {
  PostProcessAnamorphic_CDStruct BindlessParameters_PostProcessAnamorphic_CD;
};

typedef BindlessParameters_PostProcessAnamorphic_CD BindlessParameters_PostProcessAnamorphic_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAnamorphic_CD_t> BindlessParameters_PostProcessAnamorphic_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _37;
  float4 _40;
  float _50;
  float _51;
  float _52;
  float _77;
  float _78;
  float _79;
  float _81;
  float _82;
  float _83;
  float _85;
  float _87;
  float _123;
  float _127;
  int _134;
  int _142;
  float4 _149;
  float _152;
  float _153;
  float _156;
  float _157;
  uint2 _159;
  uint _174;
  int _176;
  float _184;
  float _185;
  float _187;
  float _188;
  float _189;
  float _200;
  float _201;
  float _270;
  float _812;
  float _821;
  float _822;
  float _823;
  float _928;
  float _929;
  float _930;
  float _953;
  float _1156;
  float _1157;
  float _1158;
  float _1251;
  float _1252;
  float _1253;
  float _1307;
  float _1308;
  float _1309;
  float _1325;
  float _1326;
  float _1327;
  float _1357;
  float _1358;
  float _1359;
  float _1373;
  float _1374;
  float _1375;
  float _203;
  float _204;
  float _205;
  float _206;
  float _208;
  float _209;
  float _210;
  float _230;
  int _231;
  float _239;
  float _244;
  float _245;
  float _246;
  float _256;
  float _257;
  int _271;
  int _279;
  float _282;
  float _285;
  float _287;
  float _312;
  float _313;
  float _314;
  float _317;
  float _318;
  float4 _321;
  float _328;
  float _329;
  float _330;
  float _334;
  float _335;
  float _336;
  float _337;
  float _338;
  float _339;
  float _340;
  float _341;
  float _351;
  float _387;
  float _388;
  float _389;
  float _390;
  float _392;
  float _393;
  float _394;
  float _395;
  float _398;
  float _402;
  float _405;
  float _407;
  bool _410;
  bool _411;
  bool _412;
  bool _413;
  int _426;
  int _434;
  float4 _441;
  float _445;
  float _446;
  float _447;
  float _456;
  float _458;
  float _468;
  float _469;
  float _470;
  float _472;
  float _473;
  float _474;
  float _475;
  float _476;
  float _478;
  float _491;
  float _492;
  float _493;
  float _495;
  float _496;
  float _503;
  float _504;
  float _505;
  float _507;
  bool _522;
  float _528;
  float _538;
  float _539;
  float _540;
  float _553;
  float _565;
  float _572;
  float _573;
  float _574;
  float _587;
  float _599;
  float _603;
  float _607;
  float _608;
  float _609;
  float _613;
  int _620;
  float _628;
  float _641;
  float _642;
  float _643;
  float _644;
  float _646;
  float _653;
  float _654;
  float _655;
  float _656;
  int _671;
  int _679;
  float _697;
  float _701;
  int _702;
  int _710;
  float _713;
  float _716;
  float _718;
  float _751;
  float _752;
  float _753;
  float _754;
  int _799;
  bool _807;
  float _813;
  uint _831;
  uint _832;
  uint4 _834;
  float4 _837;
  float _855;
  float _856;
  float _857;
  float _859;
  float _860;
  float _861;
  float _862;
  float _865;
  float _866;
  float _869;
  float _870;
  float _874;
  float _876;
  float _877;
  float _878;
  float _879;
  float _881;
  float _884;
  float _885;
  float _886;
  float _887;
  float _896;
  float _900;
  float _904;
  float _906;
  float _920;
  float _937;
  float _938;
  float _939;
  uint _940;
  bool _956;
  float _960;
  float _1009;
  float _1010;
  float _1011;
  float _1013;
  float _1020;
  float _1021;
  float _1022;
  float _1041;
  float _1042;
  float _1043;
  float _1044;
  float _1045;
  float _1046;
  float _1047;
  float _1048;
  float _1049;
  float _1095;
  float _1096;
  float _1097;
  float _1098;
  float _1099;
  float _1100;
  float _1101;
  float _1118;
  float _1119;
  float _1120;
  float _1121;
  float _1127;
  float _1130;
  float _1137;
  float _1138;
  float _1139;
  float _1168;
  float _1193;
  float _1194;
  float _1195;
  float _1214;
  float _1215;
  float _1216;
  float _1222;
  float _1226;
  float _1227;
  float _1228;
  float _1229;
  float _1234;
  float _1259;
  float _1263;
  float _1264;
  float _1265;
  float _1266;
  float _1296;
  float _1315;
  float _1316;
  float _1320;
  float _1364;
  float _1385;
  float _1386;
  float _1387;
  _37 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _40 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _50 = (pow(_40.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _51 = (pow(_40.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _52 = (pow(_40.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _77 = exp2(log2(max(0.0f, (_50 + -0.8359375f)) / (18.8515625f - (_50 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _78 = exp2(log2(max(0.0f, (_51 + -0.8359375f)) / (18.8515625f - (_51 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _79 = exp2(log2(max(0.0f, (_52 + -0.8359375f)) / (18.8515625f - (_52 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _81 = (TEXCOORD.x * 2.0f) + -1.0f;
  _82 = TEXCOORD.y * 2.0f;
  _83 = 1.0f - _82;
  _85 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  _87 = max(1.0000000116860974e-07f, _85.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _123 = mad((_invViewProj[2].w), _87, mad((_invViewProj[1].w), _83, ((_invViewProj[0].w) * _81))) + (_invViewProj[3].w);
  _127 = 5.0f / _37;
  _134 = WaveReadLaneFirst(_materialIndex);
  _142 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)(select(((uint)_134 < (uint)170000), _134, 0)) + 0u))].BindlessParameters_PostProcessAnamorphic_CD._noiseTex);
  _149 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_142 < (uint)65000), _142, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_127 * TEXCOORD.x), ((_time.x * 0.10000000149011612f) + (_127 * TEXCOORD.y))));
  _152 = _149.x + -0.20000000298023224f;
  _153 = _149.y + -0.20000000298023224f;
  _156 = (_152 * 0.0020000000949949026f) + TEXCOORD.x;
  _157 = (_153 * 0.004999999888241291f) + TEXCOORD.y;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_159.x, _159.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _174 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_159.x)))))) + 0.5f) * _156), int((float((int)(int(float((int)((int)(_159.y)))))) + 0.5f) * _157), 0));
  _176 = _174.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _184 = (((float)((uint)((uint)((uint)((uint)(_174.x)) >> 20)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _185 = (((float)((uint)((uint)(((uint)((uint)(_174.x)) >> 8) & 4095)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _187 = 1.0f - abs(_184);
  _188 = abs(_185);
  _189 = _187 - _188;
  if (!(_189 >= 0.0f)) {
    _200 = (select((_184 >= 0.0f), 1.0f, -1.0f) * (1.0f - _188));
    _201 = (select((_185 >= 0.0f), 1.0f, -1.0f) * _187);
  } else {
    _200 = _184;
    _201 = _185;
  }
  _203 = rsqrt(dot(float3(_200, _201, _189), float3(_200, _201, _189)));  // [sem: invLength]
  _204 = _203 * _200;
  _205 = _203 * _201;
  _206 = _203 * _189;
  _208 = rsqrt(dot(float3(_204, _205, _206), float3(_204, _205, _206)));  // [sem: invLength]
  _209 = _208 * _204;
  _210 = _208 * _205;
  // [sem: expr_sat]
  _230 = saturate((((_nearFarProj.x / _87) + 0.05000000074505806f) - (_nearFarProj.x / max(1.0000000116860974e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_customRenderPassSizeInvSize.x * _156), int(_customRenderPassSizeInvSize.y * _157), 0)))).x)))) * 50.0f);
  _231 = WaveReadLaneFirst(_materialIndex);
  _239 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)(select(((uint)_231 < (uint)170000), _231, 0)) + 0u))].BindlessParameters_PostProcessAnamorphic_CD._anamorphicProgress);
  _244 = ((mad((_invViewProj[2].x), _87, mad((_invViewProj[1].x), _83, ((_invViewProj[0].x) * _81))) + (_invViewProj[3].x)) / _123) - _mainPosition.x;
  _245 = ((mad((_invViewProj[2].y), _87, mad((_invViewProj[1].y), _83, ((_invViewProj[0].y) * _81))) + (_invViewProj[3].y)) / _123) - _mainPosition.y;
  _246 = ((mad((_invViewProj[2].z), _87, mad((_invViewProj[1].z), _83, ((_invViewProj[0].z) * _81))) + (_invViewProj[3].z)) / _123) - _mainPosition.z;
  _256 = saturate(sqrt(((_244 * _244) + (_245 * _245)) + (_246 * _246)) / max(0.0010000000474974513f, (_239 * 300.0f)));  // [sem: expr_sat]
  _257 = 1.0f - _256;
  if (_257 > 0.0f) {
    _270 = ((saturate((_239 * 2.0f) + -1.0f) * _256) + _257);
  } else {
    _270 = (pow(_239, 0.25f));
  }
  _271 = WaveReadLaneFirst(_materialIndex);
  _279 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)(select(((uint)_271 < (uint)170000), _271, 0)) + 0u))].BindlessParameters_PostProcessAnamorphic_CD._anamorphicBackgroundColor);
  _282 = (float)((uint)((uint)(((uint)(_279) >> 16) & 255)));
  _285 = (float)((uint)((uint)(((uint)(_279) >> 8) & 255)));
  _287 = (float)((uint)((uint)(_279 & 255)));
  _312 = select(((_282 * 0.003921568859368563f) < 0.040449999272823334f), (_282 * 0.0003035269910469651f), exp2(log2((_282 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
  _313 = select(((_285 * 0.003921568859368563f) < 0.040449999272823334f), (_285 * 0.0003035269910469651f), exp2(log2((_285 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
  _314 = select(((_287 * 0.003921568859368563f) < 0.040449999272823334f), (_287 * 0.0003035269910469651f), exp2(log2((_287 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
  _317 = TEXCOORD.x - (_152 * 0.0010000000474974513f);
  _318 = TEXCOORD.y - (_153 * 0.0024999999441206455f);
  _321 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_317, _318), 0.0f);  // [sem: _3__36__0__0__g_specularAO_sampleLod]
  _328 = ((_earthAxisTilt + 90.0f) - _latitude) * 0.01745329238474369f;
  _329 = sin(_328);
  _330 = cos(_328);
  _334 = (_time.w * 0.2617993950843811f) + -3.1415927410125732f;
  _335 = sin(_334);
  _336 = cos(_334);
  _337 = 1.0f - _336;
  _338 = _337 * _329;
  _339 = _337 * _330;
  _340 = _335 * _329;
  _341 = _335 * _330;
  _351 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
  _387 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[1].w), _351, ((_invViewProjRelative[0].w) * _81));
  _388 = ((mad((_invViewProjRelative[1].x), _351, ((_invViewProjRelative[0].x) * _81)) + (_invViewProjRelative[2].x)) + (_invViewProjRelative[3].x)) / _387;
  _389 = (((_invViewProjRelative[3].y) + (_invViewProjRelative[2].y)) + mad((_invViewProjRelative[1].y), _351, ((_invViewProjRelative[0].y) * _81))) / _387;
  _390 = (((_invViewProjRelative[3].z) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[1].z), _351, ((_invViewProjRelative[0].z) * _81))) / _387;
  _392 = rsqrt(dot(float3(_388, _389, _390), float3(_388, _389, _390)));  // [sem: invLength]
  _393 = _392 * _388;
  _394 = _392 * _389;
  _395 = _392 * _390;
  _398 = mad((-0.0f - _340), _395, mad(_341, _394, (_393 * _336)));
  _402 = mad((_339 * _329), _395, mad(((_338 * _329) + _336), _394, (-0.0f - (_341 * _393))));
  _405 = mad(((_339 * _330) + _336), _395, mad((_338 * _330), _394, (_393 * _340)));
  _407 = atan(_405 / _398);
  _410 = (_398 < 0.0f);
  _411 = (_398 == 0.0f);
  _412 = (_405 >= 0.0f);
  _413 = (_405 < 0.0f);
  _426 = WaveReadLaneFirst(_materialIndex);
  _434 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)(select(((uint)_426 < (uint)170000), _426, 0)) + 0u))].BindlessParameters_PostProcessAnamorphic_CD._milkyWayTexture);
  _441 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_434 < (uint)65000), _434, 0)) + 0u))].SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(select((_411 && _412), 0.75f, select((_411 && _413), 0.25f, ((select((_410 && _413), (_407 + -3.1415927410125732f), select((_410 && _412), (_407 + 3.1415927410125732f), _407)) * 0.15915493667125702f) + 0.5f))), (acos(_402) * 0.31830987334251404f)), 0.0f);
  _445 = _441.x + -0.061246078461408615f;
  _446 = _441.y + -0.08228270709514618f;
  _447 = _441.z + -0.09989875555038452f;
  _456 = saturate(1.0f - (sqrt(((_445 * _445) + (_446 * _446)) + (_447 * _447)) * 4.0f));  // [sem: expr_sat]
  _458 = dot(float3(_441.x, _441.y, _441.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f)) * 2.0f;
  _468 = (((_458 * _312) - _441.x) * _456) + _441.x;
  _469 = (((_458 * _313) - _441.y) * _456) + _441.y;
  _470 = (((_458 * _314) - _441.z) * _456) + _441.z;
  _472 = saturate(_321.w * 1.4285714626312256f);  // [sem: expr_sat]
  _473 = _472 * _312;
  _474 = _472 * _313;
  _475 = _472 * _314;
  _476 = _321.w * 10.0f;  // [sem: _3__36__0__0__g_specularAO_sampleLod_derived]
  _478 = saturate(_476 + -7.0f);  // [sem: expr_sat]
  _491 = ((saturate(_312 * 2.0f) - _473) * _478) + _473;
  _492 = ((saturate(_313 * 2.0f) - _474) * _478) + _474;
  _493 = ((saturate(_314 * 2.0f) - _475) * _478) + _475;
  _495 = saturate(_476 + -8.0f);  // [sem: expr_sat]
  _496 = _495 * _495;
  _503 = (_496 * (1.0f - _491)) + _491;
  _504 = ((0.75f - _492) * _496) + _492;
  _505 = ((0.550000011920929f - _493) * _496) + _493;
  _507 = saturate(_476 + -9.0f);  // [sem: expr_sat]
  _522 = (_85.x < 1.0000000116860974e-07f) || (_85.x == 1.0f);
  _528 = max(0.0010000000474974513f, _exposure0.x);
  _538 = float((int)(int(_398 * 2000.0f)));
  _539 = float((int)(int(_402 * 2000.0f)));
  _540 = float((int)(int(_405 * 2000.0f)));
  _553 = frac((sin((_539 * 5.0000002374872565e-05f) + (_538 * 0.008500000461935997f)) * 10000.0f) * (abs(sin((_539 * 0.006500000134110451f) + (_538 * 0.0005000000237487257f))) + 0.10000000149011612f));
  _565 = frac((sin((_553 * 17.0f) + (_540 * 5.0000002374872565e-05f)) * 10000.0f) * (abs(sin(_553 + (_540 * 0.006500000134110451f))) + 0.10000000149011612f));
  _572 = float((int)(int(_398 * 1500.0f)));
  _573 = float((int)(int(_402 * 1500.0f)));
  _574 = float((int)(int(_405 * 1500.0f)));
  _587 = frac((sin((_573 * 6.666666740784422e-05f) + (_572 * 0.01133333332836628f)) * 10000.0f) * (abs(sin((_573 * 0.008666666224598885f) + (_572 * 0.0006666666595265269f))) + 0.10000000149011612f));
  _599 = frac((sin((_587 * 17.0f) + (_574 * 6.666666740784422e-05f)) * 10000.0f) * (abs(sin(_587 + (_574 * 0.008666666224598885f))) + 0.10000000149011612f));
  _603 = saturate((_565 + -0.699999988079071f) * 3.3333332538604736f) * 1.5f;
  _607 = (_603 * _468) + _468;
  _608 = (_603 * _469) + _469;
  _609 = (_603 * _470) + _470;
  _613 = saturate((_599 + -0.9800000190734863f) * 50.00004959106445f) * 9.0f;
  _620 = WaveReadLaneFirst(_materialIndex);
  _628 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)(select(((uint)_620 < (uint)170000), _620, 0)) + 0u))].BindlessParameters_PostProcessAnamorphic_CD._milkyWayRatio);
  _641 = ((saturate((_599 + -0.9994999766349792f) * 1999.906494140625f) * 3.0f) + (saturate((_565 + -0.9990000128746033f) * 1000.0128784179688f) * 0.10000000149011612f)) * 0.5f;
  _642 = _641 + (_628 * ((_607 * _613) + _607));
  _643 = _641 + (_628 * ((_608 * _613) + _608));
  _644 = _641 + (_628 * ((_609 * _613) + _609));
  _646 = saturate(_85.x * 5.0f);  // [sem: expr_sat]
  _653 = (((select(_522, 0.0f, ((((_312 * 0.10000000149011612f) - _503) * _507) + _503)) / _528) - _642) * _646) + _642;
  _654 = (((select(_522, 0.0f, ((((_313 * 0.10000000149011612f) - _504) * _507) + _504)) / _528) - _643) * _646) + _643;
  _655 = (((select(_522, 0.0f, ((((_314 * 0.10000000149011612f) - _505) * _507) + _505)) / _528) - _644) * _646) + _644;
  _656 = 2.0f / _37;
  _671 = WaveReadLaneFirst(_materialIndex);
  _679 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)(select(((uint)_671 < (uint)170000), _671, 0)) + 0u))].BindlessParameters_PostProcessAnamorphic_CD._noiseTex);
  // [sem: expr_sat]
  _697 = saturate(1.0f - dot(float3(_209, _210, (_208 * _206)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
  // [sem: expr_sat]
  _701 = saturate((_697 * _697) + ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_679 < (uint)65000), _679, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((_209 * -0.10000000149011612f) - (_149.x * 0.20000000298023224f)) + (_656 * TEXCOORD.x)) + (_time.x * 0.009999999776482582f)), (((_210 * -0.10000000149011612f) - (_149.y * 0.20000000298023224f)) + (_656 * TEXCOORD.y)))))).w) * 0.5f));
  _702 = WaveReadLaneFirst(_materialIndex);
  _710 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)(select(((uint)_702 < (uint)170000), _702, 0)) + 0u))].BindlessParameters_PostProcessAnamorphic_CD._anamorphicPlayerColor);
  _713 = (float)((uint)((uint)(((uint)(_710) >> 16) & 255)));
  _716 = (float)((uint)((uint)(((uint)(_710) >> 8) & 255)));
  _718 = (float)((uint)((uint)(_710 & 255)));
  _751 = max(0.0010000000474974513f, _exposure0.x);
  _752 = (select(((_713 * 0.003921568859368563f) < 0.040449999272823334f), (_713 * 0.0003035269910469651f), exp2(log2((_713 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) * _701) / _751;
  _753 = (select(((_716 * 0.003921568859368563f) < 0.040449999272823334f), (_716 * 0.0003035269910469651f), exp2(log2((_716 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) * _701) / _751;
  _754 = (select(((_718 * 0.003921568859368563f) < 0.040449999272823334f), (_718 * 0.0003035269910469651f), exp2(log2((_718 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) * _701) / _751;
  if ((_176 == _renderPassSelfPlayer) || ((!(_176 == _renderPassSelfPlayer)) && (_176 == _renderPassTest))) {
    _928 = (lerp(_653, _752, _230));  // [sem: blended]
    _929 = (lerp(_654, _753, _230));  // [sem: blended]
    _930 = (lerp(_655, _754, _230));  // [sem: blended]
  } else {
    if (_176 == _renderPassAnamorphicMural) {
      _928 = (lerp(_653, _77, _230));  // [sem: blended]
      _929 = (lerp(_654, _78, _230));  // [sem: blended]
      _930 = (lerp(_655, _79, _230));  // [sem: blended]
    } else {
      _799 = (((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f)), (int)(uint((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f)), 0)))).x) & 127;
      if ((uint)(_799 + -105) < (uint)2) {
        _812 = 0.10000000149011612f;
        _813 = _812 * _230;
        _821 = ((_813 * _752) + _653);
        _822 = ((_813 * _753) + _654);
        _823 = ((_813 * _754) + _655);
      } else {
        _807 = (_799 == 107);
        if (_807 || ((_799 == 26) || ((uint)(_799 + -27) < (uint)2))) {
          _812 = select(_807, 0.10000000149011612f, 0.014999999664723873f);
          _813 = _812 * _230;
          _821 = ((_813 * _752) + _653);
          _822 = ((_813 * _753) + _654);
          _823 = ((_813 * _754) + _655);
        } else {
          _821 = _653;
          _822 = _654;
          _823 = _655;
        }
      }
      if ((uint)(_799 + -53) < (uint)15) {
        _831 = uint((_bufferSizeAndInvSize.x * _317) + -0.5f);
        _832 = uint((_bufferSizeAndInvSize.y * _318) + -0.5f);
        _834 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_831, _832, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
        _837 = __3__36__0__0__g_gbufferNormal.Load(int3(_831, _832, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
        _855 = (saturate(_837.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _856 = (saturate(_837.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _857 = (saturate(_837.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _859 = rsqrt(dot(float3(_855, _856, _857), float3(_855, _856, _857)));  // [sem: invLength]
        _860 = _859 * _855;
        _861 = _859 * _856;
        _862 = _857 * _859;
        _865 = (((float)((uint)((uint)(((uint)((uint)(_834.w)) >> 8) & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _866 = (((float)((uint)((uint)(_834.w & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _869 = (_865 + _866) * 0.5f;
        _870 = (_865 - _866) * 0.5f;
        _874 = (1.0f - abs(_869)) - abs(_870);
        _876 = rsqrt(dot(float3(_869, _870, _874), float3(_869, _870, _874)));  // [sem: invLength]
        _877 = _876 * _869;
        _878 = _876 * _870;
        _879 = _876 * _874;
        _881 = select((_862 >= 0.0f), 1.0f, -1.0f);
        _884 = -0.0f - (1.0f / (_881 + _862));
        _885 = _861 * _884;
        _886 = _885 * _860;
        _887 = _881 * _860;
        _896 = mad(_879, _860, mad(_878, _886, ((((_887 * _860) * _884) + 1.0f) * _877)));
        _900 = mad(_879, _861, mad(_878, (_881 + (_885 * _861)), ((_877 * _881) * _886)));
        _904 = mad(_879, _862, mad(_878, (-0.0f - _861), (-0.0f - (_887 * _877))));
        _906 = rsqrt(dot(float3(_896, _900, _904), float3(_896, _900, _904)));  // [sem: invLength]
        _920 = (1.0f - saturate(dot(float3((_906 * _896), (_906 * _900), (_906 * _904)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))))) * _230;
        _928 = ((_920 * _752) + _821);  // [sem: blended]
        _929 = ((_920 * _753) + _822);  // [sem: blended]
        _930 = ((_920 * _754) + _823);  // [sem: blended]
      } else {
        _928 = _821;  // [sem: blended]
        _929 = _822;  // [sem: blended]
        _930 = _823;  // [sem: blended]
      }
    }
  }
  _937 = ((_928 - _77) * _270) + _77;
  _938 = ((_929 - _78) * _270) + _78;
  _939 = ((_930 - _79) * _270) + _79;
  _940 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _953 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _940, 0)))).x) & 127)))) + 0.5f);
  } else {
    _953 = 1.0f;
  }
  _956 = (_localToneMappingParams.w > 0.0f);
  if (_956) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_937, _938, _939));
    _1214 = _rndx_tonemapped_color.x;
    _1215 = _rndx_tonemapped_color.y;
    _1216 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1222 = 1.0f - abs(_etcParams.w);
      _1226 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1227 = (_1222 * _1214) + _1226;
      _1228 = (_1222 * _1215) + _1226;
      _1229 = (_1222 * _1216) + _1226;
      if (_colorGradingParams.w > 0.0f) {
        _1234 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1251 = (((max(0.0f, (1.0f - _1227)) - _1227) * _1234) + _1227);
        _1252 = (((max(0.0f, (1.0f - _1228)) - _1228) * _1234) + _1228);
        _1253 = (((max(0.0f, (1.0f - _1229)) - _1229) * _1234) + _1229);
      } else {
        _1251 = _1227;
        _1252 = _1228;
        _1253 = _1229;
      }
      _1259 = _userImageAdjust.y + 1.0f;
      _1263 = _userImageAdjust.x + 0.5f;
      _1264 = ((_1251 + -0.5f) * _1259) + _1263;
      _1265 = ((_1252 + -0.5f) * _1259) + _1263;
      _1266 = ((_1253 + -0.5f) * _1259) + _1263;
      _1296 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _1307 = exp2(log2(saturate(mad(_colorBlind0.z, _1266, mad(_colorBlind0.y, _1265, (_colorBlind0.x * _1264))))) * _1296);
      _1308 = exp2(log2(saturate(mad(_colorBlind1.z, _1266, mad(_colorBlind1.y, _1265, (_colorBlind1.x * _1264))))) * _1296);
      _1309 = exp2(log2(saturate(mad(_colorBlind2.z, _1266, mad(_colorBlind2.y, _1265, (_colorBlind2.x * _1264))))) * _1296);
    } else {
      _1307 = _1214;
      _1308 = _1215;
      _1309 = _1216;
    }
  } else {
    _1307 = _937;
    _1308 = _938;
    _1309 = _939;
  }
  if (_etcParams.y > 1.0f) {
    _1315 = abs(_81);
    _1316 = abs(_82 + -1.0f);
    _1320 = saturate(1.0f - (dot(float2(_1315, _1316), float2(_1315, _1316)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _1325 = (_1320 * _1307);
    _1326 = (_1320 * _1308);
    _1327 = (_1320 * _1309);
  } else {
    _1325 = _1307;
    _1326 = _1308;
    _1327 = _1309;
  }
  if (_956 && (_etcParams.z > 0.0f)) {
    _1357 = select((_1325 <= 0.0031308000907301903f), (_1325 * 12.920000076293945f), (((pow(_1325, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _1358 = select((_1326 <= 0.0031308000907301903f), (_1326 * 12.920000076293945f), (((pow(_1326, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _1359 = select((_1327 <= 0.0031308000907301903f), (_1327 * 12.920000076293945f), (((pow(_1327, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _1357 = _1325;
    _1358 = _1326;
    _1359 = _1327;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1364 = (float)((uint)_940);
    if (!(_1364 < _viewDir.w)) {
      if (!(_1364 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1373 = _1357;
        _1374 = _1358;
        _1375 = _1359;
      } else {
        _1373 = 0.0f;
        _1374 = 0.0f;
        _1375 = 0.0f;
      }
    } else {
      _1373 = 0.0f;
      _1374 = 0.0f;
      _1375 = 0.0f;
    }
  } else {
    _1373 = _1357;
    _1374 = _1358;
    _1375 = _1359;
  }
  _1385 = exp2(log2(_1373 * 9.999999747378752e-05f) * 0.1593017578125f);
  _1386 = exp2(log2(_1374 * 9.999999747378752e-05f) * 0.1593017578125f);
  _1387 = exp2(log2(_1375 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_1385 * 18.6875f) + 1.0f)) * ((_1385 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1386 * 18.6875f) + 1.0f)) * ((_1386 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1387 * 18.6875f) + 1.0f)) * ((_1387 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _953;
  return SV_Target;
}
