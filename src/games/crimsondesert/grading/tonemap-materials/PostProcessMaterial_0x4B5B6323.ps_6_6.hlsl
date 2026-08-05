struct PostProcessAnamorphic_CDStruct {
  float _anamorphicProgress;
  uint _anamorphicPlayerColor;
  uint _anamorphicBackgroundColor;
  uint _noiseTex;
  uint _milkyWayTexture;
  float _milkyWayRatio;
};

struct BindlessParameters_PostProcessAnamorphic_CD {
  PostProcessAnamorphic_CDStruct BindlessParameters_PostProcessAnamorphic_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t36, space36);

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
  float _atmosphereSeaBaseline : packoffset(c003.x);
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
  float _35;
  float4 _38;
  float _43;
  float _44;
  float _45;
  float _48;
  float _50;
  float _62;
  float _63;
  int _66;
  int _74;
  float4 _87;
  float _90;
  float _91;
  float _93;
  float _95;
  uint2 _97;
  uint _112;
  int _114;
  float _118;
  float _123;
  float _125;
  float _126;
  float _127;
  float _138;
  float _139;
  float _240;
  float _808;
  float _809;
  float _810;
  float _915;
  float _916;
  float _917;
  float _940;
  float _1143;
  float _1144;
  float _1145;
  float _1238;
  float _1239;
  float _1240;
  float _1294;
  float _1295;
  float _1296;
  float _1312;
  float _1313;
  float _1314;
  float _1344;
  float _1345;
  float _1346;
  float _1360;
  float _1361;
  float _1362;
  float _141;
  float _142;
  float _143;
  float _144;
  float _146;
  float _147;
  float _148;
  float _167;
  int _170;
  float _178;
  float _194;
  float _205;
  float _216;
  float _226;
  float _227;
  int _243;
  int _251;
  float _254;
  float _257;
  float _259;
  float _268;
  float _277;
  float _286;
  float _288;
  float _290;
  float4 _293;
  float _300;
  float _301;
  float _302;
  float _306;
  float _307;
  float _308;
  float _309;
  float _310;
  float _311;
  float _312;
  float _313;
  float _316;
  float _328;
  float _337;
  float _346;
  float _355;
  float _357;
  float _358;
  float _359;
  float _360;
  float _364;
  float _371;
  float _377;
  float _379;
  bool _380;
  bool _381;
  bool _382;
  bool _383;
  int _386;
  int _394;
  float4 _415;
  float _419;
  float _420;
  float _421;
  float _430;
  float _432;
  float _436;
  float _440;
  float _444;
  float _446;
  float _447;
  float _448;
  float _449;
  float _450;
  float _452;
  float _457;
  float _462;
  float _467;
  float _469;
  float _470;
  float _473;
  float _476;
  float _479;
  float _481;
  bool _484;
  float _487;
  float _490;
  float _493;
  float _496;
  float _509;
  float _521;
  float _524;
  float _527;
  float _530;
  float _543;
  float _555;
  float _559;
  float _561;
  float _563;
  float _565;
  float _569;
  int _572;
  float _580;
  float _590;
  float _594;
  float _598;
  float _602;
  float _604;
  float _613;
  float _622;
  float _631;
  float _632;
  int _635;
  int _643;
  float _654;
  float _680;
  int _683;
  int _691;
  float _694;
  float _697;
  float _699;
  float _702;
  float _713;
  float _724;
  float _735;
  int _780;
  float _784;
  bool _792;
  float _800;
  uint _816;
  uint _819;
  uint4 _821;
  float4 _824;
  float _831;
  float _835;
  float _839;
  float _841;
  float _842;
  float _843;
  float _844;
  float _849;
  float _853;
  float _855;
  float _857;
  float _861;
  float _863;
  float _864;
  float _865;
  float _866;
  float _868;
  float _871;
  float _872;
  float _873;
  float _874;
  float _880;
  float _886;
  float _891;
  float _893;
  float _907;
  float _920;
  float _923;
  float _926;
  uint _927;
  bool _943;
  float _947;
  float _966;
  float _982;
  float _998;
  float _999;
  float _1003;
  float _1006;
  float _1009;
  float _1016;
  float _1023;
  float _1030;
  float _1031;
  float _1032;
  float _1033;
  float _1034;
  float _1035;
  float _1036;
  float _1052;
  float _1068;
  float _1084;
  float _1085;
  float _1086;
  float _1087;
  float _1088;
  float _1105;
  float _1106;
  float _1107;
  float _1108;
  float _1111;
  float _1114;
  float _1118;
  float _1122;
  float _1126;
  float _1146;
  float _1158;
  float _1170;
  float _1182;
  float _1189;
  float _1196;
  float _1203;
  float _1209;
  float _1210;
  float _1212;
  float _1214;
  float _1216;
  float _1221;
  float _1242;
  float _1244;
  float _1247;
  float _1250;
  float _1253;
  float _1259;
  float _1299;
  float _1301;
  float _1307;
  float _1349;
  _35 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _38 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _43 = (TEXCOORD.x * 2.0f) + -1.0f;
  _44 = TEXCOORD.y * 2.0f;
  _45 = 1.0f - _44;
  _48 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  _50 = max(1e-07f, _48.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _62 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _50, mad((_invViewProj[3].y), _45, ((_invViewProj[3].x) * _43)));
  _63 = 5.0f / _35;
  _66 = WaveReadLaneFirst(_materialIndex);
  _74 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_66 < (uint)170000), _66, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._noiseTex);
  _87 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_74 < (uint)65000), _74, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_63 * TEXCOORD.x), ((_time.x * 0.1f) + (_63 * TEXCOORD.y))));
  _90 = _87.x + -0.2f;
  _91 = _87.y + -0.2f;
  _93 = (_90 * 0.002f) + TEXCOORD.x;
  _95 = (_91 * 0.005f) + TEXCOORD.y;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_97.x, _97.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _112 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_97.x))))))) + 0.5f) * _93)), ((int)((((float)((int)((int)((float)((int)((int)(_97.y))))))) + 0.5f) * _95)), 0));
  _114 = _112.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _118 = (((float)((uint)((uint)((uint)((uint)(_112.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _123 = (((float)((uint)((uint)(((uint)((uint)(_112.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _125 = 1.0f - abs(_118);
  _126 = abs(_123);
  _127 = _125 - _126;
  if (!(_127 >= 0.0f)) {
    _138 = (select((_123 >= 0.0f), 1.0f, -1.0f) * _125);
    _139 = (select((_118 >= 0.0f), 1.0f, -1.0f) * (1.0f - _126));
  } else {
    _138 = _123;
    _139 = _118;
  }
  _141 = rsqrt(dot(float3(_139, _138, _127), float3(_139, _138, _127)));  // [sem: invLength]
  _142 = _141 * _139;
  _143 = _141 * _138;
  _144 = _141 * _127;
  _146 = rsqrt(dot(float3(_142, _143, _144), float3(_142, _143, _144)));  // [sem: invLength]
  _147 = _146 * _142;
  _148 = _146 * _143;
  // [sem: expr_sat]
  _167 = saturate((((_nearFarProj.x / _50) + 0.05f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _93)), ((int)(_customRenderPassSizeInvSize.y * _95)), 0)))).x)))) * 50.0f);
  _170 = WaveReadLaneFirst(_materialIndex);
  _178 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_170 < (uint)170000), _170, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._anamorphicProgress);
  _194 = (((_invViewProj[0].w) + mad((_invViewProj[0].z), _50, mad((_invViewProj[0].y), _45, ((_invViewProj[0].x) * _43)))) / _62) - _mainPosition.x;
  _205 = ((mad((_invViewProj[1].z), _50, mad((_invViewProj[1].y), _45, ((_invViewProj[1].x) * _43))) + (_invViewProj[1].w)) / _62) - _mainPosition.y;
  _216 = ((mad((_invViewProj[2].z), _50, mad((_invViewProj[2].y), _45, ((_invViewProj[2].x) * _43))) + (_invViewProj[2].w)) / _62) - _mainPosition.z;
  _226 = saturate(sqrt(((_205 * _205) + (_194 * _194)) + (_216 * _216)) / max(0.001f, (_178 * 300.0f)));  // [sem: expr_sat]
  _227 = 1.0f - _226;
  if (_227 > 0.0f) {
    _240 = ((saturate((_178 * 2.0f) + -1.0f) * _226) + _227);
  } else {
    _240 = (pow(_178, 0.25f));
  }
  _243 = WaveReadLaneFirst(_materialIndex);
  _251 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_243 < (uint)170000), _243, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._anamorphicBackgroundColor);
  _254 = (float)((uint)((uint)(((uint)((uint)(_251)) >> 16) & 255)));
  _257 = (float)((uint)((uint)(((uint)((uint)(_251)) >> 8) & 255)));
  _259 = (float)((uint)((uint)(_251 & 255)));
  _268 = select(((_254 * 0.003921569f) < 0.04045f), (_254 * 0.000303527f), exp2(log2((_254 * 0.003717127f) + 0.052132703f) * 2.4f));
  _277 = select(((_257 * 0.003921569f) < 0.04045f), (_257 * 0.000303527f), exp2(log2((_257 * 0.003717127f) + 0.052132703f) * 2.4f));
  _286 = select(((_259 * 0.003921569f) < 0.04045f), (_259 * 0.000303527f), exp2(log2((_259 * 0.003717127f) + 0.052132703f) * 2.4f));
  _288 = TEXCOORD.x - (_90 * 0.001f);
  _290 = TEXCOORD.y - (_91 * 0.0025f);
  _293 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_288, _290), 0.0f);  // [sem: _3__36__0__0__g_specularAO_sampleLod]
  _300 = ((_earthAxisTilt + 90.0f) - _latitude) * 0.017453292f;
  _301 = sin(_300);
  _302 = cos(_300);
  _306 = (_time.w * 0.2617994f) + -3.1415927f;
  _307 = sin(_306);
  _308 = cos(_306);
  _309 = 1.0f - _308;
  _310 = _309 * _301;
  _311 = _309 * _302;
  _312 = _307 * _301;
  _313 = _307 * _302;
  _316 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
  _328 = ((_invViewProjRelative[3].z) + (_invViewProjRelative[3].w)) + mad((_invViewProjRelative[3].y), _316, ((_invViewProjRelative[3].x) * _43));
  _337 = (((_invViewProjRelative[0].z) + (_invViewProjRelative[0].w)) + mad((_invViewProjRelative[0].y), _316, ((_invViewProjRelative[0].x) * _43))) / _328;
  _346 = (((_invViewProjRelative[1].z) + (_invViewProjRelative[1].w)) + mad((_invViewProjRelative[1].y), _316, ((_invViewProjRelative[1].x) * _43))) / _328;
  _355 = (((_invViewProjRelative[2].z) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[2].y), _316, ((_invViewProjRelative[2].x) * _43))) / _328;
  _357 = rsqrt(dot(float3(_337, _346, _355), float3(_337, _346, _355)));  // [sem: invLength]
  _358 = _357 * _337;
  _359 = _357 * _346;
  _360 = _357 * _355;
  _364 = mad((-0.0f - _312), _360, mad(_313, _359, (_358 * _308)));
  _371 = mad((_311 * _301), _360, mad(((_310 * _301) + _308), _359, (-0.0f - (_313 * _358))));
  _377 = mad(((_311 * _302) + _308), _360, mad((_310 * _302), _359, (_358 * _312)));
  _379 = atan(_377 / _364);
  _380 = (_364 < 0.0f);
  _381 = (_364 == 0.0f);
  _382 = (_377 >= 0.0f);
  _383 = (_377 < 0.0f);
  _386 = WaveReadLaneFirst(_materialIndex);
  _394 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_386 < (uint)170000), _386, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._milkyWayTexture);
  _415 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_394 < (uint)65000), _394, 0))) + (uint)(0)))].SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(select((_381 && _382), 0.75f, select((_381 && _383), 0.25f, ((select((_380 && _383), (_379 + -3.1415927f), select((_380 && _382), (_379 + 3.1415927f), _379)) * 0.15915494f) + 0.5f))), (acos(_371) * 0.31830987f)), 0.0f);
  _419 = _415.x + -0.06124608f;
  _420 = _415.y + -0.08228271f;
  _421 = _415.z + -0.099898756f;
  _430 = saturate(1.0f - (sqrt(((_419 * _419) + (_420 * _420)) + (_421 * _421)) * 4.0f));  // [sem: expr_sat]
  _432 = dot(float3(_415.x, _415.y, _415.z), float3(0.2126f, 0.7152f, 0.0722f)) * 2.0f;
  _436 = (((_432 * _268) - _415.x) * _430) + _415.x;
  _440 = (((_432 * _277) - _415.y) * _430) + _415.y;
  _444 = (((_432 * _286) - _415.z) * _430) + _415.z;
  _446 = saturate(_293.w * 1.4285715f);  // [sem: expr_sat]
  _447 = _446 * _268;
  _448 = _446 * _277;
  _449 = _446 * _286;
  _450 = _293.w * 10.0f;  // [sem: _3__36__0__0__g_specularAO_sampleLod_derived]
  _452 = saturate(_450 + -7.0f);  // [sem: expr_sat]
  _457 = ((saturate(_268 * 2.0f) - _447) * _452) + _447;
  _462 = ((saturate(_277 * 2.0f) - _448) * _452) + _448;
  _467 = ((saturate(_286 * 2.0f) - _449) * _452) + _449;
  _469 = saturate(_450 + -8.0f);  // [sem: expr_sat]
  _470 = _469 * _469;
  _473 = (_470 * (1.0f - _457)) + _457;
  _476 = ((0.75f - _462) * _470) + _462;
  _479 = ((0.55f - _467) * _470) + _467;
  _481 = saturate(_450 + -9.0f);  // [sem: expr_sat]
  _484 = (_48.x < 1e-07f) || (_48.x == 1.0f);
  _487 = max(0.001f, _exposure0.x);
  _490 = (float)((int)((int)(_364 * 2000.0f)));
  _493 = (float)((int)((int)(_371 * 2000.0f)));
  _496 = (float)((int)((int)(_377 * 2000.0f)));
  _509 = frac((sin((_493 * 5.0000002e-05f) + (_490 * 0.0085f)) * 10000.0f) * (abs(sin((_493 * 0.0065f) + (_490 * 0.0005f))) + 0.1f));
  _521 = frac((sin((_509 * 17.0f) + (_496 * 5.0000002e-05f)) * 10000.0f) * (abs(sin(_509 + (_496 * 0.0065f))) + 0.1f));
  _524 = (float)((int)((int)(_364 * 1500.0f)));
  _527 = (float)((int)((int)(_371 * 1500.0f)));
  _530 = (float)((int)((int)(_377 * 1500.0f)));
  _543 = frac((sin((_527 * 6.666667e-05f) + (_524 * 0.011333333f)) * 10000.0f) * (abs(sin((_527 * 0.008666666f) + (_524 * 0.00066666666f))) + 0.1f));
  _555 = frac((sin((_543 * 17.0f) + (_530 * 6.666667e-05f)) * 10000.0f) * (abs(sin(_543 + (_530 * 0.008666666f))) + 0.1f));
  _559 = saturate((_521 + -0.7f) * 3.3333333f) * 1.5f;
  _561 = (_559 * _436) + _436;
  _563 = (_559 * _440) + _440;
  _565 = (_559 * _444) + _444;
  _569 = saturate((_555 + -0.98f) * 50.00005f) * 9.0f;
  _572 = WaveReadLaneFirst(_materialIndex);
  _580 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_572 < (uint)170000), _572, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._milkyWayRatio);
  _590 = ((saturate((_521 + -0.999f) * 1000.0129f) * 0.1f) + (saturate((_555 + -0.9995f) * 1999.9065f) * 3.0f)) * 0.5f;
  _594 = _590 + (_580 * ((_561 * _569) + _561));
  _598 = _590 + (_580 * ((_563 * _569) + _563));
  _602 = _590 + (_580 * ((_565 * _569) + _565));
  _604 = saturate(_48.x * 5.0f);  // [sem: expr_sat]
  _613 = (((select(_484, 0.0f, ((((_268 * 0.1f) - _473) * _481) + _473)) / _487) - _594) * _604) + _594;
  _622 = (((select(_484, 0.0f, ((((_277 * 0.1f) - _476) * _481) + _476)) / _487) - _598) * _604) + _598;
  _631 = (((select(_484, 0.0f, ((((_286 * 0.1f) - _479) * _481) + _479)) / _487) - _602) * _604) + _602;
  _632 = 2.0f / _35;
  _635 = WaveReadLaneFirst(_materialIndex);
  _643 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_635 < (uint)170000), _635, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._noiseTex);
  // [sem: expr_sat]
  _654 = saturate(1.0f - dot(float3(_147, _148, (_146 * _144)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
  // [sem: expr_sat]
  _680 = saturate(((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_643 < (uint)65000), _643, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((_147 * -0.1f) - (_87.x * 0.2f)) + (_632 * TEXCOORD.x)) + (_time.x * 0.01f)), (((_148 * -0.1f) - (_87.y * 0.2f)) + (_632 * TEXCOORD.y)))))).w) * 0.5f) + (_654 * _654));
  _683 = WaveReadLaneFirst(_materialIndex);
  _691 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_683 < (uint)170000), _683, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._anamorphicPlayerColor);
  _694 = (float)((uint)((uint)(((uint)((uint)(_691)) >> 16) & 255)));
  _697 = (float)((uint)((uint)(((uint)((uint)(_691)) >> 8) & 255)));
  _699 = (float)((uint)((uint)(_691 & 255)));
  _702 = max(0.001f, _exposure0.x);
  _713 = (select(((_694 * 0.003921569f) < 0.04045f), (_694 * 0.000303527f), exp2(log2((_694 * 0.003717127f) + 0.052132703f) * 2.4f)) * _680) / _702;
  _724 = (select(((_697 * 0.003921569f) < 0.04045f), (_697 * 0.000303527f), exp2(log2((_697 * 0.003717127f) + 0.052132703f) * 2.4f)) * _680) / _702;
  _735 = (select(((_699 * 0.003921569f) < 0.04045f), (_699 * 0.000303527f), exp2(log2((_699 * 0.003717127f) + 0.052132703f) * 2.4f)) * _680) / _702;
  if ((_114 == _renderPassSelfPlayer) || ((!(_114 == _renderPassSelfPlayer)) && (_114 == _renderPassTest))) {
    _915 = (lerp(_613, _713, _167));  // [sem: blended]
    _916 = (lerp(_622, _724, _167));  // [sem: blended]
    _917 = (lerp(_631, _735, _167));  // [sem: blended]
  } else {
    if (_114 == _renderPassAnamorphicMural) {
      _915 = (lerp(_613, _38.x, _167));  // [sem: blended]
      _916 = (lerp(_622, _38.y, _167));  // [sem: blended]
      _917 = (lerp(_631, _38.z, _167));  // [sem: blended]
    } else {
      _780 = (((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127;
      if ((uint)((int)(_780) + (int)(-105)) < (uint)2) {
        _784 = _167 * 0.1f;
        _808 = ((_713 * _784) + _613);
        _809 = ((_724 * _784) + _622);
        _810 = ((_735 * _784) + _631);
      } else {
        _792 = (_780 == 107);
        if ((_792 || (_780 == 26)) || ((uint)((int)(_780) + (int)(-27)) < (uint)2)) {
          _800 = select(_792, 0.1f, 0.015f) * _167;
          _808 = ((_800 * _713) + _613);
          _809 = ((_800 * _724) + _622);
          _810 = ((_800 * _735) + _631);
        } else {
          _808 = _613;
          _809 = _622;
          _810 = _631;
        }
      }
      if ((uint)((int)(_780) + (int)(-52)) < (uint)16) {
        _816 = (uint)((_bufferSizeAndInvSize.x * _288) + -0.5f);
        _819 = (uint)((_bufferSizeAndInvSize.y * _290) + -0.5f);
        _821 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_816, _819, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
        _824 = __3__36__0__0__g_gbufferNormal.Load(int3(_816, _819, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
        _831 = (saturate(_824.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _835 = (saturate(_824.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _839 = (saturate(_824.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _841 = rsqrt(dot(float3(_831, _835, _839), float3(_831, _835, _839)));  // [sem: invLength]
        _842 = _841 * _831;
        _843 = _841 * _835;
        _844 = _839 * _841;
        _849 = (((float)((uint)((uint)(((uint)((uint)(_821.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _853 = (((float)((uint)((uint)(_821.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _855 = (_849 + _853) * 0.5f;
        _857 = (_849 - _853) * 0.5f;
        _861 = (1.0f - abs(_855)) - abs(_857);
        _863 = rsqrt(dot(float3(_855, _857, _861), float3(_855, _857, _861)));  // [sem: invLength]
        _864 = _863 * _855;
        _865 = _863 * _857;
        _866 = _863 * _861;
        _868 = select((_844 >= 0.0f), 1.0f, -1.0f);
        _871 = -0.0f - (1.0f / (_868 + _844));
        _872 = _843 * _871;
        _873 = _872 * _842;
        _874 = _868 * _842;
        _880 = mad(_866, _842, mad(_865, _873, ((((_874 * _842) * _871) + 1.0f) * _864)));
        _886 = mad(_866, _843, mad(_865, ((_872 * _843) + _868), ((_864 * _868) * _873)));
        _891 = mad(_866, _844, mad(_865, (-0.0f - _843), (-0.0f - (_874 * _864))));
        _893 = rsqrt(dot(float3(_880, _886, _891), float3(_880, _886, _891)));  // [sem: invLength]
        _907 = (1.0f - saturate(dot(float3((_893 * _880), (_893 * _886), (_893 * _891)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))))) * _167;
        _915 = ((_907 * _713) + _808);  // [sem: blended]
        _916 = ((_907 * _724) + _809);  // [sem: blended]
        _917 = ((_907 * _735) + _810);  // [sem: blended]
      } else {
        _915 = _808;  // [sem: blended]
        _916 = _809;  // [sem: blended]
        _917 = _810;  // [sem: blended]
      }
    }
  }
  _920 = ((_915 - _38.x) * _240) + _38.x;
  _923 = ((_916 - _38.y) * _240) + _38.y;
  _926 = ((_917 - _38.z) * _240) + _38.z;
  _927 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _940 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _927, 0)))).x) & 127)))) + 0.5f);
  } else {
    _940 = 1.0f;
  }
  _943 = (_localToneMappingParams.w > 0.0f);
  if (_943) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_920, _923, _926));
    _1189 = _rndx_tonemapped_color.x;
    _1196 = _rndx_tonemapped_color.y;
    _1203 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1209 = 1.0f - abs(_etcParams.w);
      _1210 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1212 = (_1209 * _1189) + _1210;
      _1214 = (_1209 * _1196) + _1210;
      _1216 = (_1209 * _1203) + _1210;
      if (_colorGradingParams.w > 0.0f) {
        _1221 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1238 = (((max(0.0f, (1.0f - _1212)) - _1212) * _1221) + _1212);
        _1239 = (((max(0.0f, (1.0f - _1214)) - _1214) * _1221) + _1214);
        _1240 = (((max(0.0f, (1.0f - _1216)) - _1216) * _1221) + _1216);
      } else {
        _1238 = _1212;
        _1239 = _1214;
        _1240 = _1216;
      }
      _1242 = _userImageAdjust.y + 1.0f;
      _1244 = _userImageAdjust.x + 0.5f;
      _1247 = ((_1238 + -0.5f) * _1242) + _1244;
      _1250 = ((_1239 + -0.5f) * _1242) + _1244;
      _1253 = ((_1240 + -0.5f) * _1242) + _1244;
      _1259 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1294 = exp2(log2(saturate(mad(_colorBlind0.z, _1253, mad(_colorBlind0.y, _1250, (_colorBlind0.x * _1247))))) * _1259);
      _1295 = exp2(log2(saturate(mad(_colorBlind1.z, _1253, mad(_colorBlind1.y, _1250, (_colorBlind1.x * _1247))))) * _1259);
      _1296 = exp2(log2(saturate(mad(_colorBlind2.z, _1253, mad(_colorBlind2.y, _1250, (_colorBlind2.x * _1247))))) * _1259);
    } else {
      _1294 = _1189;
      _1295 = _1196;
      _1296 = _1203;
    }
  } else {
    _1294 = _920;
    _1295 = _923;
    _1296 = _926;
  }
  if (_etcParams.y > 1.0f) {
    _1299 = abs(_43);
    _1301 = abs(_44 + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _1307 = saturate(1.0f - (dot(float2(_1299, _1301), float2(_1299, _1301)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _1312 = (_1307 * _1294);
    _1313 = (_1307 * _1295);
    _1314 = (_1307 * _1296);
  } else {
    _1312 = _1294;
    _1313 = _1295;
    _1314 = _1296;
  }
  if (_943 && (_etcParams.z > 0.0f)) {
    _1344 = select((_1312 <= 0.0031308f), (_1312 * 12.92f), (((pow(_1312, 0.41666666f)) * 1.055f) + -0.055f));
    _1345 = select((_1313 <= 0.0031308f), (_1313 * 12.92f), (((pow(_1313, 0.41666666f)) * 1.055f) + -0.055f));
    _1346 = select((_1314 <= 0.0031308f), (_1314 * 12.92f), (((pow(_1314, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1344 = _1312;
    _1345 = _1313;
    _1346 = _1314;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1349 = (float)((uint)((uint)(_927)));
    if (!(_1349 < _viewDir.w)) {
      if (!(!(_1349 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1360 = 0.0f;
        _1361 = 0.0f;
        _1362 = 0.0f;
      } else {
        _1360 = _1344;
        _1361 = _1345;
        _1362 = _1346;
      }
    } else {
      _1360 = 0.0f;
      _1361 = 0.0f;
      _1362 = 0.0f;
    }
  } else {
    _1360 = _1344;
    _1361 = _1345;
    _1362 = _1346;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_1360, _1361, _1362), _sunDirection.y, _moonDirection.y);
    _1360 = _rndx_final_color.x;
    _1361 = _rndx_final_color.y;
    _1362 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _1360;
  SV_Target.y = _1361;
  SV_Target.z = _1362;
  SV_Target.w = _940;
  return SV_Target;
}
