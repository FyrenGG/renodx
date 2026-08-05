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
  float _44;
  float _47;
  float _50;
  float _59;
  float _68;
  float _77;
  float _79;
  float _80;
  float _81;
  float _84;
  float _86;
  float _98;
  float _99;
  int _102;
  int _110;
  float4 _123;
  float _126;
  float _127;
  float _129;
  float _131;
  uint2 _133;
  uint _148;
  int _150;
  float _154;
  float _159;
  float _161;
  float _162;
  float _163;
  float _174;
  float _175;
  float _276;
  float _844;
  float _845;
  float _846;
  float _951;
  float _952;
  float _953;
  float _976;
  float _1179;
  float _1180;
  float _1181;
  float _1274;
  float _1275;
  float _1276;
  float _1330;
  float _1331;
  float _1332;
  float _1348;
  float _1349;
  float _1350;
  float _1380;
  float _1381;
  float _1382;
  float _1396;
  float _1397;
  float _1398;
  float _177;
  float _178;
  float _179;
  float _180;
  float _182;
  float _183;
  float _184;
  float _203;
  int _206;
  float _214;
  float _230;
  float _241;
  float _252;
  float _262;
  float _263;
  int _279;
  int _287;
  float _290;
  float _293;
  float _295;
  float _304;
  float _313;
  float _322;
  float _324;
  float _326;
  float4 _329;
  float _336;
  float _337;
  float _338;
  float _342;
  float _343;
  float _344;
  float _345;
  float _346;
  float _347;
  float _348;
  float _349;
  float _352;
  float _364;
  float _373;
  float _382;
  float _391;
  float _393;
  float _394;
  float _395;
  float _396;
  float _400;
  float _407;
  float _413;
  float _415;
  bool _416;
  bool _417;
  bool _418;
  bool _419;
  int _422;
  int _430;
  float4 _451;
  float _455;
  float _456;
  float _457;
  float _466;
  float _468;
  float _472;
  float _476;
  float _480;
  float _482;
  float _483;
  float _484;
  float _485;
  float _486;
  float _488;
  float _493;
  float _498;
  float _503;
  float _505;
  float _506;
  float _509;
  float _512;
  float _515;
  float _517;
  bool _520;
  float _523;
  float _526;
  float _529;
  float _532;
  float _545;
  float _557;
  float _560;
  float _563;
  float _566;
  float _579;
  float _591;
  float _595;
  float _597;
  float _599;
  float _601;
  float _605;
  int _608;
  float _616;
  float _626;
  float _630;
  float _634;
  float _638;
  float _640;
  float _649;
  float _658;
  float _667;
  float _668;
  int _671;
  int _679;
  float _690;
  float _716;
  int _719;
  int _727;
  float _730;
  float _733;
  float _735;
  float _738;
  float _749;
  float _760;
  float _771;
  int _816;
  float _820;
  bool _828;
  float _836;
  uint _852;
  uint _855;
  uint4 _857;
  float4 _860;
  float _867;
  float _871;
  float _875;
  float _877;
  float _878;
  float _879;
  float _880;
  float _885;
  float _889;
  float _891;
  float _893;
  float _897;
  float _899;
  float _900;
  float _901;
  float _902;
  float _904;
  float _907;
  float _908;
  float _909;
  float _910;
  float _916;
  float _922;
  float _927;
  float _929;
  float _943;
  float _956;
  float _959;
  float _962;
  uint _963;
  bool _979;
  float _983;
  float _1002;
  float _1018;
  float _1034;
  float _1035;
  float _1039;
  float _1042;
  float _1045;
  float _1052;
  float _1059;
  float _1066;
  float _1067;
  float _1068;
  float _1069;
  float _1070;
  float _1071;
  float _1072;
  float _1088;
  float _1104;
  float _1120;
  float _1121;
  float _1122;
  float _1123;
  float _1124;
  float _1141;
  float _1142;
  float _1143;
  float _1144;
  float _1147;
  float _1150;
  float _1154;
  float _1158;
  float _1162;
  float _1182;
  float _1194;
  float _1206;
  float _1218;
  float _1225;
  float _1232;
  float _1239;
  float _1245;
  float _1246;
  float _1248;
  float _1250;
  float _1252;
  float _1257;
  float _1278;
  float _1280;
  float _1283;
  float _1286;
  float _1289;
  float _1295;
  float _1335;
  float _1337;
  float _1343;
  float _1385;
  float _1402;
  float _1406;
  float _1410;
  _35 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _38 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _44 = (pow(_38.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _47 = (pow(_38.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _50 = (pow(_38.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _59 = exp2(log2(max(0.0f, (_44 + -0.8359375f)) / (18.851562f - (_44 * 18.6875f))) * 6.277395f) * 10000.0f;
  _68 = exp2(log2(max(0.0f, (_47 + -0.8359375f)) / (18.851562f - (_47 * 18.6875f))) * 6.277395f) * 10000.0f;
  _77 = exp2(log2(max(0.0f, (_50 + -0.8359375f)) / (18.851562f - (_50 * 18.6875f))) * 6.277395f) * 10000.0f;
  _79 = (TEXCOORD.x * 2.0f) + -1.0f;
  _80 = TEXCOORD.y * 2.0f;
  _81 = 1.0f - _80;
  _84 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  _86 = max(1e-07f, _84.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _98 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _86, mad((_invViewProj[3].y), _81, ((_invViewProj[3].x) * _79)));
  _99 = 5.0f / _35;
  _102 = WaveReadLaneFirst(_materialIndex);
  _110 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_102 < (uint)170000), _102, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._noiseTex);
  _123 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_110 < (uint)65000), _110, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_99 * TEXCOORD.x), ((_time.x * 0.1f) + (_99 * TEXCOORD.y))));
  _126 = _123.x + -0.2f;
  _127 = _123.y + -0.2f;
  _129 = (_126 * 0.002f) + TEXCOORD.x;
  _131 = (_127 * 0.005f) + TEXCOORD.y;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_133.x, _133.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _148 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_133.x))))))) + 0.5f) * _129)), ((int)((((float)((int)((int)((float)((int)((int)(_133.y))))))) + 0.5f) * _131)), 0));
  _150 = _148.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _154 = (((float)((uint)((uint)((uint)((uint)(_148.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _159 = (((float)((uint)((uint)(((uint)((uint)(_148.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _161 = 1.0f - abs(_154);
  _162 = abs(_159);
  _163 = _161 - _162;
  if (!(_163 >= 0.0f)) {
    _174 = (select((_154 >= 0.0f), 1.0f, -1.0f) * (1.0f - _162));
    _175 = (select((_159 >= 0.0f), 1.0f, -1.0f) * _161);
  } else {
    _174 = _154;
    _175 = _159;
  }
  _177 = rsqrt(dot(float3(_174, _175, _163), float3(_174, _175, _163)));  // [sem: invLength]
  _178 = _177 * _174;
  _179 = _177 * _175;
  _180 = _177 * _163;
  _182 = rsqrt(dot(float3(_178, _179, _180), float3(_178, _179, _180)));  // [sem: invLength]
  _183 = _182 * _178;
  _184 = _182 * _179;
  // [sem: expr_sat]
  _203 = saturate((((_nearFarProj.x / _86) + 0.05f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _129)), ((int)(_customRenderPassSizeInvSize.y * _131)), 0)))).x)))) * 50.0f);
  _206 = WaveReadLaneFirst(_materialIndex);
  _214 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_206 < (uint)170000), _206, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._anamorphicProgress);
  _230 = (((_invViewProj[0].w) + mad((_invViewProj[0].z), _86, mad((_invViewProj[0].y), _81, ((_invViewProj[0].x) * _79)))) / _98) - _mainPosition.x;
  _241 = ((mad((_invViewProj[1].z), _86, mad((_invViewProj[1].y), _81, ((_invViewProj[1].x) * _79))) + (_invViewProj[1].w)) / _98) - _mainPosition.y;
  _252 = ((mad((_invViewProj[2].z), _86, mad((_invViewProj[2].y), _81, ((_invViewProj[2].x) * _79))) + (_invViewProj[2].w)) / _98) - _mainPosition.z;
  _262 = saturate(sqrt(((_241 * _241) + (_230 * _230)) + (_252 * _252)) / max(0.001f, (_214 * 300.0f)));  // [sem: expr_sat]
  _263 = 1.0f - _262;
  if (_263 > 0.0f) {
    _276 = ((saturate((_214 * 2.0f) + -1.0f) * _262) + _263);
  } else {
    _276 = (pow(_214, 0.25f));
  }
  _279 = WaveReadLaneFirst(_materialIndex);
  _287 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_279 < (uint)170000), _279, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._anamorphicBackgroundColor);
  _290 = (float)((uint)((uint)(((uint)((uint)(_287)) >> 16) & 255)));
  _293 = (float)((uint)((uint)(((uint)((uint)(_287)) >> 8) & 255)));
  _295 = (float)((uint)((uint)(_287 & 255)));
  _304 = select(((_290 * 0.003921569f) < 0.04045f), (_290 * 0.000303527f), exp2(log2((_290 * 0.003717127f) + 0.052132703f) * 2.4f));
  _313 = select(((_293 * 0.003921569f) < 0.04045f), (_293 * 0.000303527f), exp2(log2((_293 * 0.003717127f) + 0.052132703f) * 2.4f));
  _322 = select(((_295 * 0.003921569f) < 0.04045f), (_295 * 0.000303527f), exp2(log2((_295 * 0.003717127f) + 0.052132703f) * 2.4f));
  _324 = TEXCOORD.x - (_126 * 0.001f);
  _326 = TEXCOORD.y - (_127 * 0.0025f);
  _329 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_324, _326), 0.0f);  // [sem: _3__36__0__0__g_specularAO_sampleLod]
  _336 = ((_earthAxisTilt + 90.0f) - _latitude) * 0.017453292f;
  _337 = sin(_336);
  _338 = cos(_336);
  _342 = (_time.w * 0.2617994f) + -3.1415927f;
  _343 = sin(_342);
  _344 = cos(_342);
  _345 = 1.0f - _344;
  _346 = _345 * _337;
  _347 = _345 * _338;
  _348 = _343 * _337;
  _349 = _343 * _338;
  _352 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
  _364 = ((_invViewProjRelative[3].z) + (_invViewProjRelative[3].w)) + mad((_invViewProjRelative[3].y), _352, ((_invViewProjRelative[3].x) * _79));
  _373 = (((_invViewProjRelative[0].z) + (_invViewProjRelative[0].w)) + mad((_invViewProjRelative[0].y), _352, ((_invViewProjRelative[0].x) * _79))) / _364;
  _382 = (((_invViewProjRelative[1].z) + (_invViewProjRelative[1].w)) + mad((_invViewProjRelative[1].y), _352, ((_invViewProjRelative[1].x) * _79))) / _364;
  _391 = (((_invViewProjRelative[2].z) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[2].y), _352, ((_invViewProjRelative[2].x) * _79))) / _364;
  _393 = rsqrt(dot(float3(_373, _382, _391), float3(_373, _382, _391)));  // [sem: invLength]
  _394 = _393 * _373;
  _395 = _393 * _382;
  _396 = _393 * _391;
  _400 = mad((-0.0f - _348), _396, mad(_349, _395, (_394 * _344)));
  _407 = mad((_347 * _337), _396, mad(((_346 * _337) + _344), _395, (-0.0f - (_349 * _394))));
  _413 = mad(((_347 * _338) + _344), _396, mad((_346 * _338), _395, (_394 * _348)));
  _415 = atan(_413 / _400);
  _416 = (_400 < 0.0f);
  _417 = (_400 == 0.0f);
  _418 = (_413 >= 0.0f);
  _419 = (_413 < 0.0f);
  _422 = WaveReadLaneFirst(_materialIndex);
  _430 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_422 < (uint)170000), _422, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._milkyWayTexture);
  _451 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_430 < (uint)65000), _430, 0))) + (uint)(0)))].SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(select((_417 && _418), 0.75f, select((_417 && _419), 0.25f, ((select((_416 && _419), (_415 + -3.1415927f), select((_416 && _418), (_415 + 3.1415927f), _415)) * 0.15915494f) + 0.5f))), (acos(_407) * 0.31830987f)), 0.0f);
  _455 = _451.x + -0.06124608f;
  _456 = _451.y + -0.08228271f;
  _457 = _451.z + -0.099898756f;
  _466 = saturate(1.0f - (sqrt(((_455 * _455) + (_456 * _456)) + (_457 * _457)) * 4.0f));  // [sem: expr_sat]
  _468 = dot(float3(_451.x, _451.y, _451.z), float3(0.2126f, 0.7152f, 0.0722f)) * 2.0f;
  _472 = (((_468 * _304) - _451.x) * _466) + _451.x;
  _476 = (((_468 * _313) - _451.y) * _466) + _451.y;
  _480 = (((_468 * _322) - _451.z) * _466) + _451.z;
  _482 = saturate(_329.w * 1.4285715f);  // [sem: expr_sat]
  _483 = _482 * _304;
  _484 = _482 * _313;
  _485 = _482 * _322;
  _486 = _329.w * 10.0f;  // [sem: _3__36__0__0__g_specularAO_sampleLod_derived]
  _488 = saturate(_486 + -7.0f);  // [sem: expr_sat]
  _493 = ((saturate(_304 * 2.0f) - _483) * _488) + _483;
  _498 = ((saturate(_313 * 2.0f) - _484) * _488) + _484;
  _503 = ((saturate(_322 * 2.0f) - _485) * _488) + _485;
  _505 = saturate(_486 + -8.0f);  // [sem: expr_sat]
  _506 = _505 * _505;
  _509 = (_506 * (1.0f - _493)) + _493;
  _512 = ((0.75f - _498) * _506) + _498;
  _515 = ((0.55f - _503) * _506) + _503;
  _517 = saturate(_486 + -9.0f);  // [sem: expr_sat]
  _520 = (_84.x < 1e-07f) || (_84.x == 1.0f);
  _523 = max(0.001f, _exposure0.x);
  _526 = (float)((int)((int)(_400 * 2000.0f)));
  _529 = (float)((int)((int)(_407 * 2000.0f)));
  _532 = (float)((int)((int)(_413 * 2000.0f)));
  _545 = frac((sin((_529 * 5.0000002e-05f) + (_526 * 0.0085f)) * 10000.0f) * (abs(sin((_529 * 0.0065f) + (_526 * 0.0005f))) + 0.1f));
  _557 = frac((sin((_545 * 17.0f) + (_532 * 5.0000002e-05f)) * 10000.0f) * (abs(sin(_545 + (_532 * 0.0065f))) + 0.1f));
  _560 = (float)((int)((int)(_400 * 1500.0f)));
  _563 = (float)((int)((int)(_407 * 1500.0f)));
  _566 = (float)((int)((int)(_413 * 1500.0f)));
  _579 = frac((sin((_563 * 6.666667e-05f) + (_560 * 0.011333333f)) * 10000.0f) * (abs(sin((_563 * 0.008666666f) + (_560 * 0.00066666666f))) + 0.1f));
  _591 = frac((sin((_579 * 17.0f) + (_566 * 6.666667e-05f)) * 10000.0f) * (abs(sin(_579 + (_566 * 0.008666666f))) + 0.1f));
  _595 = saturate((_557 + -0.7f) * 3.3333333f) * 1.5f;
  _597 = (_595 * _472) + _472;
  _599 = (_595 * _476) + _476;
  _601 = (_595 * _480) + _480;
  _605 = saturate((_591 + -0.98f) * 50.00005f) * 9.0f;
  _608 = WaveReadLaneFirst(_materialIndex);
  _616 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_608 < (uint)170000), _608, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._milkyWayRatio);
  _626 = ((saturate((_557 + -0.999f) * 1000.0129f) * 0.1f) + (saturate((_591 + -0.9995f) * 1999.9065f) * 3.0f)) * 0.5f;
  _630 = _626 + (_616 * ((_597 * _605) + _597));
  _634 = _626 + (_616 * ((_599 * _605) + _599));
  _638 = _626 + (_616 * ((_601 * _605) + _601));
  _640 = saturate(_84.x * 5.0f);  // [sem: expr_sat]
  _649 = (((select(_520, 0.0f, ((((_304 * 0.1f) - _509) * _517) + _509)) / _523) - _630) * _640) + _630;
  _658 = (((select(_520, 0.0f, ((((_313 * 0.1f) - _512) * _517) + _512)) / _523) - _634) * _640) + _634;
  _667 = (((select(_520, 0.0f, ((((_322 * 0.1f) - _515) * _517) + _515)) / _523) - _638) * _640) + _638;
  _668 = 2.0f / _35;
  _671 = WaveReadLaneFirst(_materialIndex);
  _679 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_671 < (uint)170000), _671, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._noiseTex);
  // [sem: expr_sat]
  _690 = saturate(1.0f - dot(float3(_183, _184, (_182 * _180)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
  // [sem: expr_sat]
  _716 = saturate(((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_679 < (uint)65000), _679, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((_183 * -0.1f) - (_123.x * 0.2f)) + (_668 * TEXCOORD.x)) + (_time.x * 0.01f)), (((_184 * -0.1f) - (_123.y * 0.2f)) + (_668 * TEXCOORD.y)))))).w) * 0.5f) + (_690 * _690));
  _719 = WaveReadLaneFirst(_materialIndex);
  _727 = WaveReadLaneFirst(BindlessParameters_PostProcessAnamorphic_CD[((int)((uint)((uint)(select(((uint)_719 < (uint)170000), _719, 0))) + (uint)(0)))].BindlessParameters_PostProcessAnamorphic_CD._anamorphicPlayerColor);
  _730 = (float)((uint)((uint)(((uint)((uint)(_727)) >> 16) & 255)));
  _733 = (float)((uint)((uint)(((uint)((uint)(_727)) >> 8) & 255)));
  _735 = (float)((uint)((uint)(_727 & 255)));
  _738 = max(0.001f, _exposure0.x);
  _749 = (select(((_730 * 0.003921569f) < 0.04045f), (_730 * 0.000303527f), exp2(log2((_730 * 0.003717127f) + 0.052132703f) * 2.4f)) * _716) / _738;
  _760 = (select(((_733 * 0.003921569f) < 0.04045f), (_733 * 0.000303527f), exp2(log2((_733 * 0.003717127f) + 0.052132703f) * 2.4f)) * _716) / _738;
  _771 = (select(((_735 * 0.003921569f) < 0.04045f), (_735 * 0.000303527f), exp2(log2((_735 * 0.003717127f) + 0.052132703f) * 2.4f)) * _716) / _738;
  if ((_150 == _renderPassSelfPlayer) || ((!(_150 == _renderPassSelfPlayer)) && (_150 == _renderPassTest))) {
    _951 = (lerp(_649, _749, _203));  // [sem: blended]
    _952 = (lerp(_658, _760, _203));  // [sem: blended]
    _953 = (lerp(_667, _771, _203));  // [sem: blended]
  } else {
    if (_150 == _renderPassAnamorphicMural) {
      _951 = (lerp(_649, _59, _203));  // [sem: blended]
      _952 = (lerp(_658, _68, _203));  // [sem: blended]
      _953 = (lerp(_667, _77, _203));  // [sem: blended]
    } else {
      _816 = (((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127;
      if ((uint)((int)(_816) + (int)(-105)) < (uint)2) {
        _820 = _203 * 0.1f;
        _844 = ((_749 * _820) + _649);
        _845 = ((_760 * _820) + _658);
        _846 = ((_771 * _820) + _667);
      } else {
        _828 = (_816 == 107);
        if ((_828 || (_816 == 26)) || ((uint)((int)(_816) + (int)(-27)) < (uint)2)) {
          _836 = select(_828, 0.1f, 0.015f) * _203;
          _844 = ((_836 * _749) + _649);
          _845 = ((_836 * _760) + _658);
          _846 = ((_836 * _771) + _667);
        } else {
          _844 = _649;
          _845 = _658;
          _846 = _667;
        }
      }
      if ((uint)((int)(_816) + (int)(-52)) < (uint)16) {
        _852 = (uint)((_bufferSizeAndInvSize.x * _324) + -0.5f);
        _855 = (uint)((_bufferSizeAndInvSize.y * _326) + -0.5f);
        _857 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_852, _855, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
        _860 = __3__36__0__0__g_gbufferNormal.Load(int3(_852, _855, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
        _867 = (saturate(_860.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _871 = (saturate(_860.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _875 = (saturate(_860.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
        _877 = rsqrt(dot(float3(_867, _871, _875), float3(_867, _871, _875)));  // [sem: invLength]
        _878 = _877 * _867;
        _879 = _877 * _871;
        _880 = _875 * _877;
        _885 = (((float)((uint)((uint)(((uint)((uint)(_857.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _889 = (((float)((uint)((uint)(_857.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
        _891 = (_885 + _889) * 0.5f;
        _893 = (_885 - _889) * 0.5f;
        _897 = (1.0f - abs(_891)) - abs(_893);
        _899 = rsqrt(dot(float3(_891, _893, _897), float3(_891, _893, _897)));  // [sem: invLength]
        _900 = _899 * _891;
        _901 = _899 * _893;
        _902 = _899 * _897;
        _904 = select((_880 >= 0.0f), 1.0f, -1.0f);
        _907 = -0.0f - (1.0f / (_904 + _880));
        _908 = _879 * _907;
        _909 = _908 * _878;
        _910 = _904 * _878;
        _916 = mad(_902, _878, mad(_901, _909, ((((_910 * _878) * _907) + 1.0f) * _900)));
        _922 = mad(_902, _879, mad(_901, ((_908 * _879) + _904), ((_900 * _904) * _909)));
        _927 = mad(_902, _880, mad(_901, (-0.0f - _879), (-0.0f - (_910 * _900))));
        _929 = rsqrt(dot(float3(_916, _922, _927), float3(_916, _922, _927)));  // [sem: invLength]
        _943 = (1.0f - saturate(dot(float3((_929 * _916), (_929 * _922), (_929 * _927)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))))) * _203;
        _951 = ((_943 * _749) + _844);  // [sem: blended]
        _952 = ((_943 * _760) + _845);  // [sem: blended]
        _953 = ((_943 * _771) + _846);  // [sem: blended]
      } else {
        _951 = _844;  // [sem: blended]
        _952 = _845;  // [sem: blended]
        _953 = _846;  // [sem: blended]
      }
    }
  }
  _956 = ((_951 - _59) * _276) + _59;
  _959 = ((_952 - _68) * _276) + _68;
  _962 = ((_953 - _77) * _276) + _77;
  _963 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _976 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _963, 0)))).x) & 127)))) + 0.5f);
  } else {
    _976 = 1.0f;
  }
  _979 = (_localToneMappingParams.w > 0.0f);
  if (_979) {
    _983 = _userImageAdjust.z * _exposure0.x;
    _1002 = exp2(_powerParams.x * log2(max(0.0f, (((_983 * max(0.0f, (((_956 * 1.70505f) - (_959 * 0.62179f)) - (_962 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _1018 = exp2(log2(max(0.0f, (((_slopeParams.y * _983) * max(0.0f, (((_959 * 1.1408f) - (_956 * 0.13026f)) - (_962 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _1034 = exp2(log2(max(0.0f, (((_slopeParams.z * _983) * max(0.0f, (((_956 * -0.024f) - (_959 * 0.12897f)) + (_962 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _1035 = dot(float3(_1002, _1018, _1034), float3(0.212671f, 0.71516f, 0.072169f));
    _1039 = ((_1002 - _1035) * _powerParams.w) + _1035;
    _1042 = ((_1018 - _1035) * _powerParams.w) + _1035;
    _1045 = ((_1034 - _1035) * _powerParams.w) + _1035;
    _1052 = min(max(log2(mad(_1045, 0.079223745f, mad(_1042, 0.0784336f, (_1039 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1059 = min(max(log2(mad(_1045, 0.07916613f, mad(_1042, 0.87846863f, (_1039 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1066 = min(max(log2(mad(_1045, 0.879143f, mad(_1042, 0.0784336f, (_1039 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1067 = _1052 * 0.060606062f;
    _1068 = _1059 * 0.060606062f;
    _1069 = _1066 * 0.060606062f;
    _1070 = _1067 * _1067;
    _1071 = _1068 * _1068;
    _1072 = _1069 * _1069;
    _1088 = min(0.0f, (-0.0f - (((_1052 * 0.0072181816f) + ((_1070 * 0.4298f) + (((_1070 * _1070) * ((31.96f - (_1052 * 2.4327273f)) + (_1070 * 15.5f))) - ((_1052 * 0.41624245f) * _1070)))) + -0.00232f)));
    _1104 = min(0.0f, (-0.0f - (((_1059 * 0.0072181816f) + ((_1071 * 0.4298f) + (((_1071 * _1071) * ((31.96f - (_1059 * 2.4327273f)) + (_1071 * 15.5f))) - ((_1059 * 0.41624245f) * _1071)))) + -0.00232f)));
    _1120 = min(0.0f, (-0.0f - (((_1066 * 0.0072181816f) + ((_1072 * 0.4298f) + (((_1072 * _1072) * ((31.96f - (_1066 * 2.4327273f)) + (_1072 * 15.5f))) - ((_1066 * 0.41624245f) * _1072)))) + -0.00232f)));
    _1121 = -0.0f - _1088;
    _1122 = -0.0f - _1104;
    _1123 = -0.0f - _1120;
    _1124 = dot(float3(_1121, _1122, _1123), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _1141 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1142 = -0.79999995f / _1141;
      _1143 = -1.2f / _1141;
      _1144 = 0.20000005f / _1141;
      _1147 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1150 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1154 = (_1142 + 1.4f) + (_1150 * (-0.39999998f - _1142));
      _1158 = (_1143 + 1.6f) + (_1150 * (-0.6f - _1143));
      _1162 = (_1144 + 0.9f) + (_1150 * (0.5f - _1144));
      _1179 = (lerp(_1158, 1.2f, _1147));  // [sem: blended]
      _1180 = (lerp(_1154, 1.0f, _1147));  // [sem: blended]
      _1181 = (lerp(_1162, 1.4f, _1147));  // [sem: blended]
    } else {
      _1179 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _1180 = 1.0f;  // [sem: blended]
      _1181 = 1.4f;  // [sem: blended]
    }
    _1182 = 1.0f - _1179;
    _1194 = ((exp2(log2(((saturate((_1088 * _1088) * _1121) * _1182) + _1179) * _1121) * _1180) - _1124) * _1181) + _1124;
    _1206 = ((exp2(log2(((saturate((_1104 * _1104) * _1122) * _1182) + _1179) * _1122) * _1180) - _1124) * _1181) + _1124;
    _1218 = ((exp2(log2(((saturate((_1120 * _1120) * _1123) * _1182) + _1179) * _1123) * _1180) - _1124) * _1181) + _1124;
    _1225 = saturate(exp2(log2(mad(_1218, -0.09902974f, mad(_1206, -0.09802088f, (_1194 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _1232 = saturate(exp2(log2(mad(_1218, -0.098961174f, mad(_1206, 1.1519032f, (_1194 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1239 = saturate(exp2(log2(mad(_1218, 1.1510737f, mad(_1206, -0.09804345f, (_1194 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _1245 = 1.0f - abs(_etcParams.w);
      _1246 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1248 = (_1245 * _1225) + _1246;
      _1250 = (_1245 * _1232) + _1246;
      _1252 = (_1245 * _1239) + _1246;
      if (_colorGradingParams.w > 0.0f) {
        _1257 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1274 = (((max(0.0f, (1.0f - _1248)) - _1248) * _1257) + _1248);
        _1275 = (((max(0.0f, (1.0f - _1250)) - _1250) * _1257) + _1250);
        _1276 = (((max(0.0f, (1.0f - _1252)) - _1252) * _1257) + _1252);
      } else {
        _1274 = _1248;
        _1275 = _1250;
        _1276 = _1252;
      }
      _1278 = _userImageAdjust.y + 1.0f;
      _1280 = _userImageAdjust.x + 0.5f;
      _1283 = ((_1274 + -0.5f) * _1278) + _1280;
      _1286 = ((_1275 + -0.5f) * _1278) + _1280;
      _1289 = ((_1276 + -0.5f) * _1278) + _1280;
      _1295 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1330 = exp2(log2(saturate(mad(_colorBlind0.z, _1289, mad(_colorBlind0.y, _1286, (_colorBlind0.x * _1283))))) * _1295);
      _1331 = exp2(log2(saturate(mad(_colorBlind1.z, _1289, mad(_colorBlind1.y, _1286, (_colorBlind1.x * _1283))))) * _1295);
      _1332 = exp2(log2(saturate(mad(_colorBlind2.z, _1289, mad(_colorBlind2.y, _1286, (_colorBlind2.x * _1283))))) * _1295);
    } else {
      _1330 = _1225;
      _1331 = _1232;
      _1332 = _1239;
    }
  } else {
    _1330 = _956;
    _1331 = _959;
    _1332 = _962;
  }
  if (_etcParams.y > 1.0f) {
    _1335 = abs(_79);
    _1337 = abs(_80 + -1.0f);
    _1343 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_1335, _1337), float2(_1335, _1337))));  // [sem: expr_sat]
    _1348 = (_1343 * _1330);
    _1349 = (_1343 * _1331);
    _1350 = (_1343 * _1332);
  } else {
    _1348 = _1330;
    _1349 = _1331;
    _1350 = _1332;
  }
  if (_979 && (_etcParams.z > 0.0f)) {
    _1380 = select((_1348 <= 0.0031308f), (_1348 * 12.92f), (((pow(_1348, 0.41666666f)) * 1.055f) + -0.055f));
    _1381 = select((_1349 <= 0.0031308f), (_1349 * 12.92f), (((pow(_1349, 0.41666666f)) * 1.055f) + -0.055f));
    _1382 = select((_1350 <= 0.0031308f), (_1350 * 12.92f), (((pow(_1350, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1380 = _1348;
    _1381 = _1349;
    _1382 = _1350;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1385 = (float)((uint)((uint)(_963)));
    if (!(_1385 < _viewDir.w)) {
      if (!(!(_1385 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1396 = 0.0f;
        _1397 = 0.0f;
        _1398 = 0.0f;
      } else {
        _1396 = _1380;
        _1397 = _1381;
        _1398 = _1382;
      }
    } else {
      _1396 = 0.0f;
      _1397 = 0.0f;
      _1398 = 0.0f;
    }
  } else {
    _1396 = _1380;
    _1397 = _1381;
    _1398 = _1382;
  }
  _1402 = exp2(log2(_1396 * 0.0001f) * 0.15930176f);
  _1406 = exp2(log2(_1397 * 0.0001f) * 0.15930176f);
  _1410 = exp2(log2(_1398 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_1402 * 18.6875f) + 1.0f)) * ((_1402 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_1406 * 18.6875f) + 1.0f)) * ((_1406 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_1410 * 18.6875f) + 1.0f)) * ((_1410 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _976;
  return SV_Target;
}
