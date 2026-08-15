struct PostProcessAnamorphic_CDStruct {
  float _anamorphicProgress;
  uint _anamorphicPlayerColor;
  uint _anamorphicBackgroundColor;
  uint _noiseTex;
  uint _milkyWayTexture;
  float _milkyWayRatio;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t68, space36);

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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
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
  float _45;
  float _46;
  float _47;
  float _49;
  float _51;
  float _87;
  float _91;
  int _98;
  int _106;
  float4 _113;
  float _116;
  float _117;
  float _120;
  float _121;
  uint2 _123;
  uint _138;
  int _140;
  float _148;
  float _149;
  float _151;
  float _152;
  float _153;
  float _164;
  float _165;
  float _234;
  float _776;
  float _785;
  float _786;
  float _787;
  float _892;
  float _893;
  float _894;
  float _917;
  float _1120;
  float _1121;
  float _1122;
  float _1215;
  float _1216;
  float _1217;
  float _1271;
  float _1272;
  float _1273;
  float _1289;
  float _1290;
  float _1291;
  float _1321;
  float _1322;
  float _1323;
  float _1337;
  float _1338;
  float _1339;
  float _167;
  float _168;
  float _169;
  float _170;
  float _172;
  float _173;
  float _174;
  float _194;
  int _195;
  float _203;
  float _208;
  float _209;
  float _210;
  float _220;
  float _221;
  int _235;
  int _243;
  float _246;
  float _249;
  float _251;
  float _276;
  float _277;
  float _278;
  float _281;
  float _282;
  float4 _285;
  float _292;
  float _293;
  float _294;
  float _298;
  float _299;
  float _300;
  float _301;
  float _302;
  float _303;
  float _304;
  float _305;
  float _315;
  float _351;
  float _352;
  float _353;
  float _354;
  float _356;
  float _357;
  float _358;
  float _359;
  float _362;
  float _366;
  float _369;
  float _371;
  bool _374;
  bool _375;
  bool _376;
  bool _377;
  int _390;
  int _398;
  float4 _405;
  float _409;
  float _410;
  float _411;
  float _420;
  float _422;
  float _432;
  float _433;
  float _434;
  float _436;
  float _437;
  float _438;
  float _439;
  float _440;
  float _442;
  float _455;
  float _456;
  float _457;
  float _459;
  float _460;
  float _467;
  float _468;
  float _469;
  float _471;
  bool _486;
  float _492;
  float _502;
  float _503;
  float _504;
  float _517;
  float _529;
  float _536;
  float _537;
  float _538;
  float _551;
  float _563;
  float _567;
  float _571;
  float _572;
  float _573;
  float _577;
  int _584;
  float _592;
  float _605;
  float _606;
  float _607;
  float _608;
  float _610;
  float _617;
  float _618;
  float _619;
  float _620;
  int _635;
  int _643;
  float _661;
  float _665;
  int _666;
  int _674;
  float _677;
  float _680;
  float _682;
  float _715;
  float _716;
  float _717;
  float _718;
  int _763;
  bool _771;
  float _777;
  uint _795;
  uint _796;
  uint4 _798;
  float4 _801;
  float _819;
  float _820;
  float _821;
  float _823;
  float _824;
  float _825;
  float _826;
  float _829;
  float _830;
  float _833;
  float _834;
  float _838;
  float _840;
  float _841;
  float _842;
  float _843;
  float _845;
  float _848;
  float _849;
  float _850;
  float _851;
  float _860;
  float _864;
  float _868;
  float _870;
  float _884;
  float _901;
  float _902;
  float _903;
  uint _904;
  bool _920;
  float _924;
  float _973;
  float _974;
  float _975;
  float _977;
  float _984;
  float _985;
  float _986;
  float _1005;
  float _1006;
  float _1007;
  float _1008;
  float _1009;
  float _1010;
  float _1011;
  float _1012;
  float _1013;
  float _1059;
  float _1060;
  float _1061;
  float _1062;
  float _1063;
  float _1064;
  float _1065;
  float _1082;
  float _1083;
  float _1084;
  float _1085;
  float _1091;
  float _1094;
  float _1101;
  float _1102;
  float _1103;
  float _1132;
  float _1157;
  float _1158;
  float _1159;
  float _1178;
  float _1179;
  float _1180;
  float _1186;
  float _1190;
  float _1191;
  float _1192;
  float _1193;
  float _1198;
  float _1223;
  float _1227;
  float _1228;
  float _1229;
  float _1230;
  float _1260;
  float _1279;
  float _1280;
  float _1284;
  float _1328;
  _37 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _40 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _45 = (TEXCOORD.x * 2.0f) + -1.0f;
  _46 = TEXCOORD.y * 2.0f;
  _47 = 1.0f - _46;
  _49 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  _51 = max(1e-07f, _49.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _87 = mad((_invViewProj[3].z), _51, mad((_invViewProj[3].y), _47, ((_invViewProj[3].x) * _45))) + (_invViewProj[3].w);
  _91 = 5.0f / _37;
  _98 = WaveReadLaneFirst(_materialIndex);
  _106 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_98 < (uint)170000), _98, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._noiseTex);
  _113 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_106 < (uint)65000), _106, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_91 * TEXCOORD.x), ((_time.x * 0.1f) + (_91 * TEXCOORD.y))));
  _116 = _113.x + -0.2f;
  _117 = _113.y + -0.2f;
  _120 = (_116 * 0.002f) + TEXCOORD.x;
  _121 = (_117 * 0.005f) + TEXCOORD.y;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_123.x, _123.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _138 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_123.x))))))) + 0.5f) * _120)), ((int)((((float)((int)((int)((float)((int)((int)(_123.y))))))) + 0.5f) * _121)), 0));
  _140 = _138.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _148 = (((float)((uint)((uint)((uint)((uint)(_138.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _149 = (((float)((uint)((uint)(((uint)((uint)(_138.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _151 = 1.0f - abs(_148);
  _152 = abs(_149);
  _153 = _151 - _152;
  if (!(_153 >= 0.0f)) {
    _164 = (select((_148 >= 0.0f), 1.0f, -1.0f) * (1.0f - _152));
    _165 = (select((_149 >= 0.0f), 1.0f, -1.0f) * _151);
  } else {
    _164 = _148;
    _165 = _149;
  }
  _167 = rsqrt(dot(float3(_164, _165, _153), float3(_164, _165, _153)));  // [sem: invLength]
  _168 = _167 * _164;
  _169 = _167 * _165;
  _170 = _167 * _153;
  _172 = rsqrt(dot(float3(_168, _169, _170), float3(_168, _169, _170)));  // [sem: invLength]
  _173 = _172 * _168;
  _174 = _172 * _169;
  // [sem: expr_sat]
  _194 = saturate((((_nearFarProj.x / _51) + 0.05f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _120)), ((int)(_customRenderPassSizeInvSize.y * _121)), 0)))).x)))) * 50.0f);
  _195 = WaveReadLaneFirst(_materialIndex);
  _203 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_195 < (uint)170000), _195, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._anamorphicProgress);
  _208 = ((mad((_invViewProj[0].z), _51, mad((_invViewProj[0].y), _47, ((_invViewProj[0].x) * _45))) + (_invViewProj[0].w)) / _87) - _mainPosition.x;
  _209 = ((mad((_invViewProj[1].z), _51, mad((_invViewProj[1].y), _47, ((_invViewProj[1].x) * _45))) + (_invViewProj[1].w)) / _87) - _mainPosition.y;
  _210 = ((mad((_invViewProj[2].z), _51, mad((_invViewProj[2].y), _47, ((_invViewProj[2].x) * _45))) + (_invViewProj[2].w)) / _87) - _mainPosition.z;
  _220 = saturate(sqrt(((_208 * _208) + (_209 * _209)) + (_210 * _210)) / max(0.001f, (_203 * 300.0f)));  // [sem: expr_sat]
  _221 = 1.0f - _220;
  if (_221 > 0.0f) {
    _234 = ((saturate((_203 * 2.0f) + -1.0f) * _220) + _221);
  } else {
    _234 = (pow(_203, 0.25f));
  }
  _235 = WaveReadLaneFirst(_materialIndex);
  _243 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_235 < (uint)170000), _235, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._anamorphicBackgroundColor);
  _246 = (float)((uint)((uint)(((uint)((uint)(_243)) >> 16) & 255)));
  _249 = (float)((uint)((uint)(((uint)((uint)(_243)) >> 8) & 255)));
  _251 = (float)((uint)((uint)(_243 & 255)));
  _276 = select(((_246 * 0.003921569f) < 0.04045f), (_246 * 0.000303527f), exp2(log2((_246 * 0.003717127f) + 0.052132703f) * 2.4f));
  _277 = select(((_249 * 0.003921569f) < 0.04045f), (_249 * 0.000303527f), exp2(log2((_249 * 0.003717127f) + 0.052132703f) * 2.4f));
  _278 = select(((_251 * 0.003921569f) < 0.04045f), (_251 * 0.000303527f), exp2(log2((_251 * 0.003717127f) + 0.052132703f) * 2.4f));
  _281 = TEXCOORD.x - (_116 * 0.001f);
  _282 = TEXCOORD.y - (_117 * 0.0025f);
  _285 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_281, _282), 0.0f);  // [sem: _3__36__0__0__g_specularAO_sampleLod]
  _292 = ((_earthAxisTilt + 90.0f) - _latitude) * 0.017453292f;
  _293 = sin(_292);
  _294 = cos(_292);
  _298 = (_time.w * 0.2617994f) + -3.1415927f;
  _299 = sin(_298);
  _300 = cos(_298);
  _301 = 1.0f - _300;
  _302 = _301 * _293;
  _303 = _301 * _294;
  _304 = _299 * _293;
  _305 = _299 * _294;
  _315 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
  _351 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[3].z)) + mad((_invViewProjRelative[3].y), _315, ((_invViewProjRelative[3].x) * _45));
  _352 = ((mad((_invViewProjRelative[0].y), _315, ((_invViewProjRelative[0].x) * _45)) + (_invViewProjRelative[0].z)) + (_invViewProjRelative[0].w)) / _351;
  _353 = (((_invViewProjRelative[1].w) + (_invViewProjRelative[1].z)) + mad((_invViewProjRelative[1].y), _315, ((_invViewProjRelative[1].x) * _45))) / _351;
  _354 = (((_invViewProjRelative[2].w) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[2].y), _315, ((_invViewProjRelative[2].x) * _45))) / _351;
  _356 = rsqrt(dot(float3(_352, _353, _354), float3(_352, _353, _354)));  // [sem: invLength]
  _357 = _356 * _352;
  _358 = _356 * _353;
  _359 = _356 * _354;
  _362 = mad((-0.0f - _304), _359, mad(_305, _358, (_357 * _300)));
  _366 = mad((_303 * _293), _359, mad(((_302 * _293) + _300), _358, (-0.0f - (_305 * _357))));
  _369 = mad(((_303 * _294) + _300), _359, mad((_302 * _294), _358, (_357 * _304)));
  _371 = atan(_369 / _362);
  _374 = (_362 < 0.0f);
  _375 = (_362 == 0.0f);
  _376 = (_369 >= 0.0f);
  _377 = (_369 < 0.0f);
  _390 = WaveReadLaneFirst(_materialIndex);
  _398 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_390 < (uint)170000), _390, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._milkyWayTexture);
  _405 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_398 < (uint)65000), _398, 0))) + (uint)(0)))].SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(select((_375 && _376), 0.75f, select((_375 && _377), 0.25f, ((select((_374 && _377), (_371 + -3.1415927f), select((_374 && _376), (_371 + 3.1415927f), _371)) * 0.15915494f) + 0.5f))), (acos(_366) * 0.31830987f)), 0.0f);
  _409 = _405.x + -0.06124608f;
  _410 = _405.y + -0.08228271f;
  _411 = _405.z + -0.099898756f;
  _420 = saturate(1.0f - (sqrt(((_409 * _409) + (_410 * _410)) + (_411 * _411)) * 4.0f));  // [sem: expr_sat]
  _422 = dot(float3(_405.x, _405.y, _405.z), float3(0.2126f, 0.7152f, 0.0722f)) * 2.0f;
  _432 = (((_422 * _276) - _405.x) * _420) + _405.x;
  _433 = (((_422 * _277) - _405.y) * _420) + _405.y;
  _434 = (((_422 * _278) - _405.z) * _420) + _405.z;
  _436 = saturate(_285.w * 1.4285715f);  // [sem: expr_sat]
  _437 = _436 * _276;
  _438 = _436 * _277;
  _439 = _436 * _278;
  _440 = _285.w * 10.0f;  // [sem: _3__36__0__0__g_specularAO_sampleLod_derived]
  _442 = saturate(_440 + -7.0f);  // [sem: expr_sat]
  _455 = ((saturate(_276 * 2.0f) - _437) * _442) + _437;
  _456 = ((saturate(_277 * 2.0f) - _438) * _442) + _438;
  _457 = ((saturate(_278 * 2.0f) - _439) * _442) + _439;
  _459 = saturate(_440 + -8.0f);  // [sem: expr_sat]
  _460 = _459 * _459;
  _467 = (_460 * (1.0f - _455)) + _455;
  _468 = ((0.75f - _456) * _460) + _456;
  _469 = ((0.55f - _457) * _460) + _457;
  _471 = saturate(_440 + -9.0f);  // [sem: expr_sat]
  _486 = (_49.x < 1e-07f) || (_49.x == 1.0f);
  _492 = max(0.001f, _exposure0.x);
  _502 = (float)((int)((int)(_362 * 2000.0f)));
  _503 = (float)((int)((int)(_366 * 2000.0f)));
  _504 = (float)((int)((int)(_369 * 2000.0f)));
  _517 = frac((sin((_503 * 5.0000002e-05f) + (_502 * 0.0085f)) * 10000.0f) * (abs(sin((_503 * 0.0065f) + (_502 * 0.0005f))) + 0.1f));
  _529 = frac((sin((_517 * 17.0f) + (_504 * 5.0000002e-05f)) * 10000.0f) * (abs(sin(_517 + (_504 * 0.0065f))) + 0.1f));
  _536 = (float)((int)((int)(_362 * 1500.0f)));
  _537 = (float)((int)((int)(_366 * 1500.0f)));
  _538 = (float)((int)((int)(_369 * 1500.0f)));
  _551 = frac((sin((_537 * 6.666667e-05f) + (_536 * 0.011333333f)) * 10000.0f) * (abs(sin((_537 * 0.008666666f) + (_536 * 0.00066666666f))) + 0.1f));
  _563 = frac((sin((_551 * 17.0f) + (_538 * 6.666667e-05f)) * 10000.0f) * (abs(sin(_551 + (_538 * 0.008666666f))) + 0.1f));
  _567 = saturate((_529 + -0.7f) * 3.3333333f) * 1.5f;
  _571 = (_567 * _432) + _432;
  _572 = (_567 * _433) + _433;
  _573 = (_567 * _434) + _434;
  _577 = saturate((_563 + -0.98f) * 50.00005f) * 9.0f;
  _584 = WaveReadLaneFirst(_materialIndex);
  _592 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_584 < (uint)170000), _584, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._milkyWayRatio);
  _605 = ((saturate((_563 + -0.9995f) * 1999.9065f) * 3.0f) + (saturate((_529 + -0.999f) * 1000.0129f) * 0.1f)) * 0.5f;
  _606 = _605 + (_592 * ((_571 * _577) + _571));
  _607 = _605 + (_592 * ((_572 * _577) + _572));
  _608 = _605 + (_592 * ((_573 * _577) + _573));
  _610 = saturate(_49.x * 5.0f);  // [sem: expr_sat]
  _617 = (((select(_486, 0.0f, ((((_276 * 0.1f) - _467) * _471) + _467)) / _492) - _606) * _610) + _606;
  _618 = (((select(_486, 0.0f, ((((_277 * 0.1f) - _468) * _471) + _468)) / _492) - _607) * _610) + _607;
  _619 = (((select(_486, 0.0f, ((((_278 * 0.1f) - _469) * _471) + _469)) / _492) - _608) * _610) + _608;
  _620 = 2.0f / _37;
  _635 = WaveReadLaneFirst(_materialIndex);
  _643 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_635 < (uint)170000), _635, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._noiseTex);
  // [sem: expr_sat]
  _661 = saturate(1.0f - dot(float3(_173, _174, (_172 * _170)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
  // [sem: expr_sat]
  _665 = saturate((_661 * _661) + ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_643 < (uint)65000), _643, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((_173 * -0.1f) - (_113.x * 0.2f)) + (_620 * TEXCOORD.x)) + (_time.x * 0.01f)), (((_174 * -0.1f) - (_113.y * 0.2f)) + (_620 * TEXCOORD.y)))))).w) * 0.5f));
  _666 = WaveReadLaneFirst(_materialIndex);
  _674 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_666 < (uint)170000), _666, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._anamorphicPlayerColor);
  _677 = (float)((uint)((uint)(((uint)((uint)(_674)) >> 16) & 255)));
  _680 = (float)((uint)((uint)(((uint)((uint)(_674)) >> 8) & 255)));
  _682 = (float)((uint)((uint)(_674 & 255)));
  _715 = max(0.001f, _exposure0.x);
  _716 = (select(((_677 * 0.003921569f) < 0.04045f), (_677 * 0.000303527f), exp2(log2((_677 * 0.003717127f) + 0.052132703f) * 2.4f)) * _665) / _715;
  _717 = (select(((_680 * 0.003921569f) < 0.04045f), (_680 * 0.000303527f), exp2(log2((_680 * 0.003717127f) + 0.052132703f) * 2.4f)) * _665) / _715;
  _718 = (select(((_682 * 0.003921569f) < 0.04045f), (_682 * 0.000303527f), exp2(log2((_682 * 0.003717127f) + 0.052132703f) * 2.4f)) * _665) / _715;
  if ((_140 == _renderPassSelfPlayer) || ((!(_140 == _renderPassSelfPlayer)) && (_140 == _renderPassTest))) {
    _892 = (lerp(_617, _716, _194));  // [sem: blended]
    _893 = (lerp(_618, _717, _194));  // [sem: blended]
    _894 = (lerp(_619, _718, _194));  // [sem: blended]
  } else {
    if (_140 == _renderPassAnamorphicMural) {
      _892 = (lerp(_617, _40.x, _194));  // [sem: blended]
      _893 = (lerp(_618, _40.y, _194));  // [sem: blended]
      _894 = (lerp(_619, _40.z, _194));  // [sem: blended]
    } else {
      _763 = (((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127;
      if ((uint)((int)(_763) + (int)(-105)) < (uint)2) {
        _776 = 0.1f;
        _777 = _776 * _194;
        _785 = ((_777 * _716) + _617);
        _786 = ((_777 * _717) + _618);
        _787 = ((_777 * _718) + _619);
      } else {
        _771 = (_763 == 107);
        if (_771 || ((_763 == 26) || ((uint)((int)(_763) + (int)(-27)) < (uint)2))) {
          _776 = select(_771, 0.1f, 0.015f);
          _777 = _776 * _194;
          _785 = ((_777 * _716) + _617);
          _786 = ((_777 * _717) + _618);
          _787 = ((_777 * _718) + _619);
        } else {
          _785 = _617;
          _786 = _618;
          _787 = _619;
        }
      }
      if ((uint)((int)(_763) + (int)(-52)) < (uint)16) {
        _795 = (uint)((_bufferSizeAndInvSize.x * _281) + -0.5f);
        _796 = (uint)((_bufferSizeAndInvSize.y * _282) + -0.5f);
        _798 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_795, _796, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
        _801 = __3__36__0__0__g_gbufferNormal.Load(int3(_795, _796, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
        _819 = (saturate(_801.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _820 = (saturate(_801.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _821 = (saturate(_801.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _823 = rsqrt(dot(float3(_819, _820, _821), float3(_819, _820, _821)));  // [sem: invLength]
        _824 = _823 * _819;
        _825 = _823 * _820;
        _826 = _821 * _823;
        _829 = (((float)((uint)((uint)(((uint)((uint)(_798.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _830 = (((float)((uint)((uint)(_798.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _833 = (_829 + _830) * 0.5f;
        _834 = (_829 - _830) * 0.5f;
        _838 = (1.0f - abs(_833)) - abs(_834);
        _840 = rsqrt(dot(float3(_833, _834, _838), float3(_833, _834, _838)));  // [sem: invLength]
        _841 = _840 * _833;
        _842 = _840 * _834;
        _843 = _840 * _838;
        _845 = select((_826 >= 0.0f), 1.0f, -1.0f);
        _848 = -0.0f - (1.0f / (_845 + _826));
        _849 = _825 * _848;
        _850 = _849 * _824;
        _851 = _845 * _824;
        _860 = mad(_843, _824, mad(_842, _850, ((((_851 * _824) * _848) + 1.0f) * _841)));
        _864 = mad(_843, _825, mad(_842, (_845 + (_849 * _825)), ((_841 * _845) * _850)));
        _868 = mad(_843, _826, mad(_842, (-0.0f - _825), (-0.0f - (_851 * _841))));
        _870 = rsqrt(dot(float3(_860, _864, _868), float3(_860, _864, _868)));  // [sem: invLength]
        _884 = (1.0f - saturate(dot(float3((_870 * _860), (_870 * _864), (_870 * _868)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))))) * _194;
        _892 = ((_884 * _716) + _785);  // [sem: blended]
        _893 = ((_884 * _717) + _786);  // [sem: blended]
        _894 = ((_884 * _718) + _787);  // [sem: blended]
      } else {
        _892 = _785;  // [sem: blended]
        _893 = _786;  // [sem: blended]
        _894 = _787;  // [sem: blended]
      }
    }
  }
  _901 = ((_892 - _40.x) * _234) + _40.x;
  _902 = ((_893 - _40.y) * _234) + _40.y;
  _903 = ((_894 - _40.z) * _234) + _40.z;
  _904 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _917 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _904, 0)))).x) & 127)))) + 0.5f);
  } else {
    _917 = 1.0f;
  }
  _920 = (_localToneMappingParams.w > 0.0f);
  if (_920) {
    _924 = _userImageAdjust.z * _exposure0.x;
    _973 = exp2(log2(max(0.0f, (((_924 * max(0.0f, (((_901 * 1.70505f) - (_902 * 0.62179f)) - (_903 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _974 = exp2(log2(max(0.0f, (((max(0.0f, (((_902 * 1.1408f) - (_901 * 0.13026f)) - (_903 * 0.01055f))) * _924) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _975 = exp2(log2(max(0.0f, (((max(0.0f, (((_901 * -0.024f) - (_902 * 0.12897f)) + (_903 * 1.15297f))) * _924) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _977 = dot(float3(_973, _974, _975), float3(0.212671f, 0.71516f, 0.072169f));
    _984 = ((_973 - _977) * _powerParams.w) + _977;
    _985 = ((_974 - _977) * _powerParams.w) + _977;
    _986 = ((_975 - _977) * _powerParams.w) + _977;
    _1005 = min(max(log2(mad(_986, 0.079223745f, mad(_985, 0.0784336f, (_984 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1006 = min(max(log2(mad(_986, 0.07916613f, mad(_985, 0.87846863f, (_984 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1007 = min(max(log2(mad(_986, 0.879143f, mad(_985, 0.0784336f, (_984 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1008 = _1005 * 0.060606062f;
    _1009 = _1006 * 0.060606062f;
    _1010 = _1007 * 0.060606062f;
    _1011 = _1008 * _1008;
    _1012 = _1009 * _1009;
    _1013 = _1010 * _1010;
    _1059 = min(0.0f, (-0.0f - (((_1005 * 0.0072181816f) + ((_1011 * 0.4298f) + (((_1011 * _1011) * ((31.96f - (_1005 * 2.4327273f)) + (_1011 * 15.5f))) - ((_1005 * 0.41624245f) * _1011)))) + -0.00232f)));
    _1060 = min(0.0f, (-0.0f - (((_1006 * 0.0072181816f) + ((_1012 * 0.4298f) + (((_1012 * _1012) * ((31.96f - (_1006 * 2.4327273f)) + (_1012 * 15.5f))) - ((_1006 * 0.41624245f) * _1012)))) + -0.00232f)));
    _1061 = min(0.0f, (-0.0f - (((_1007 * 0.0072181816f) + ((_1013 * 0.4298f) + (((_1013 * _1013) * ((31.96f - (_1007 * 2.4327273f)) + (_1013 * 15.5f))) - ((_1007 * 0.41624245f) * _1013)))) + -0.00232f)));
    _1062 = -0.0f - _1059;
    _1063 = -0.0f - _1060;
    _1064 = -0.0f - _1061;
    _1065 = dot(float3(_1062, _1063, _1064), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _1082 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1083 = -0.79999995f / _1082;
      _1084 = -1.2f / _1082;
      _1085 = 0.20000005f / _1082;
      _1091 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1094 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1101 = (_1083 + 1.4f) + (_1094 * (-0.39999998f - _1083));
      _1102 = (_1084 + 1.6f) + (_1094 * (-0.6f - _1084));
      _1103 = (_1085 + 0.9f) + (_1094 * (0.5f - _1085));
      _1120 = (lerp(_1102, 1.2f, _1091));  // [sem: blended]
      _1121 = (lerp(_1101, 1.0f, _1091));  // [sem: blended]
      _1122 = (lerp(_1103, 1.4f, _1091));  // [sem: blended]
    } else {
      _1120 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _1121 = 1.0f;  // [sem: blended]
      _1122 = 1.4f;  // [sem: blended]
    }
    _1132 = 1.0f - _1120;
    _1157 = ((exp2(log2(((saturate((_1059 * _1059) * _1062) * _1132) + _1120) * _1062) * _1121) - _1065) * _1122) + _1065;
    _1158 = ((exp2(log2(((saturate((_1060 * _1060) * _1063) * _1132) + _1120) * _1063) * _1121) - _1065) * _1122) + _1065;
    _1159 = ((exp2(log2(((saturate((_1061 * _1061) * _1064) * _1132) + _1120) * _1064) * _1121) - _1065) * _1122) + _1065;
    _1178 = saturate(exp2(log2(mad(_1159, -0.09902974f, mad(_1158, -0.09802088f, (_1157 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _1179 = saturate(exp2(log2(mad(_1159, -0.098961174f, mad(_1158, 1.1519032f, (_1157 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1180 = saturate(exp2(log2(mad(_1159, 1.1510737f, mad(_1158, -0.09804345f, (_1157 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _1186 = 1.0f - abs(_etcParams.w);
      _1190 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1191 = (_1186 * _1178) + _1190;
      _1192 = (_1186 * _1179) + _1190;
      _1193 = (_1186 * _1180) + _1190;
      if (_colorGradingParams.w > 0.0f) {
        _1198 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1215 = (((max(0.0f, (1.0f - _1191)) - _1191) * _1198) + _1191);
        _1216 = (((max(0.0f, (1.0f - _1192)) - _1192) * _1198) + _1192);
        _1217 = (((max(0.0f, (1.0f - _1193)) - _1193) * _1198) + _1193);
      } else {
        _1215 = _1191;
        _1216 = _1192;
        _1217 = _1193;
      }
      _1223 = _userImageAdjust.y + 1.0f;
      _1227 = _userImageAdjust.x + 0.5f;
      _1228 = ((_1215 + -0.5f) * _1223) + _1227;
      _1229 = ((_1216 + -0.5f) * _1223) + _1227;
      _1230 = ((_1217 + -0.5f) * _1223) + _1227;
      _1260 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1271 = exp2(log2(saturate(mad(_colorBlind0.z, _1230, mad(_colorBlind0.y, _1229, (_colorBlind0.x * _1228))))) * _1260);
      _1272 = exp2(log2(saturate(mad(_colorBlind1.z, _1230, mad(_colorBlind1.y, _1229, (_colorBlind1.x * _1228))))) * _1260);
      _1273 = exp2(log2(saturate(mad(_colorBlind2.z, _1230, mad(_colorBlind2.y, _1229, (_colorBlind2.x * _1228))))) * _1260);
    } else {
      _1271 = _1178;
      _1272 = _1179;
      _1273 = _1180;
    }
  } else {
    _1271 = _901;
    _1272 = _902;
    _1273 = _903;
  }
  if (_etcParams.y > 1.0f) {
    _1279 = abs(_45);
    _1280 = abs(_46 + -1.0f);
    _1284 = saturate(1.0f - (dot(float2(_1279, _1280), float2(_1279, _1280)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _1289 = (_1284 * _1271);
    _1290 = (_1284 * _1272);
    _1291 = (_1284 * _1273);
  } else {
    _1289 = _1271;
    _1290 = _1272;
    _1291 = _1273;
  }
  if (_920 && (_etcParams.z > 0.0f)) {
    _1321 = select((_1289 <= 0.0031308f), (_1289 * 12.92f), (((pow(_1289, 0.41666666f)) * 1.055f) + -0.055f));
    _1322 = select((_1290 <= 0.0031308f), (_1290 * 12.92f), (((pow(_1290, 0.41666666f)) * 1.055f) + -0.055f));
    _1323 = select((_1291 <= 0.0031308f), (_1291 * 12.92f), (((pow(_1291, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1321 = _1289;
    _1322 = _1290;
    _1323 = _1291;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1328 = (float)((uint)((uint)(_904)));
    if (!(_1328 < _viewDir.w)) {
      if (!(_1328 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1337 = _1321;
        _1338 = _1322;
        _1339 = _1323;
      } else {
        _1337 = 0.0f;
        _1338 = 0.0f;
        _1339 = 0.0f;
      }
    } else {
      _1337 = 0.0f;
      _1338 = 0.0f;
      _1339 = 0.0f;
    }
  } else {
    _1337 = _1321;
    _1338 = _1322;
    _1339 = _1323;
  }
  SV_Target.x = _1337;
  SV_Target.y = _1338;
  SV_Target.z = _1339;
  SV_Target.w = _917;
  return SV_Target;
}
