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

struct BindlessParameters_PostProcessBerserk_CD {
  PostProcessBerserk_CDStruct BindlessParameters_PostProcessBerserk_CD;
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
  float _31;
  float _35;
  int _38;
  float _46;
  float _99;
  float _100;
  float _103;
  float _104;
  float _348;
  float _349;
  float _350;
  float _396;
  float _484;
  float _485;
  float _486;
  float _537;
  float _538;
  float _539;
  float _1080;
  float _1081;
  float _1082;
  float _1083;
  float _1084;
  float _1108;
  float _1109;
  float _1110;
  float _1111;
  float _1112;
  float _1113;
  float _1114;
  float _1115;
  float _1116;
  float _1197;
  float _1402;
  float _1403;
  float _1404;
  float _1497;
  float _1498;
  float _1499;
  float _1553;
  float _1554;
  float _1555;
  float _1574;
  float _1575;
  float _1576;
  float _1606;
  float _1607;
  float _1608;
  float _1622;
  float _1623;
  float _1624;
  float _53;
  float _56;
  float _57;
  float _58;
  float _59;
  float _60;
  float _61;
  float _65;
  float _69;
  float _74;
  float _76;
  float _85;
  float _89;
  float _91;
  float _106;
  float _108;
  float _113;
  float _125;
  float _134;
  float _143;
  float _152;
  float _164;
  float _174;
  float _184;
  float _194;
  float _196;
  float _197;
  float _198;
  float _199;
  float4 _202;
  int _208;
  float _216;
  float _222;
  float _223;
  float _224;
  float _225;
  float _226;
  float _227;
  float _231;
  float _232;
  float _239;
  float _242;
  float _245;
  float _249;
  float _253;
  int _256;
  int _264;
  float4 _275;
  int _280;
  int _288;
  float4 _299;
  float _302;
  float _303;
  float _305;
  float _307;
  float _308;
  float _309;
  float _312;
  int _315;
  float _323;
  float4 _326;
  float4 _343;
  float _367;
  int _370;
  float _378;
  float _384;
  float _402;
  float _405;
  int _408;
  int _416;
  float4 _424;
  float _427;
  float _428;
  int _431;
  int _439;
  int _442;
  int _450;
  int _453;
  float _461;
  float _464;
  float _475;
  float _479;
  int _489;
  float _497;
  float _529;
  float _533;
  uint _544;
  uint _548;
  uint4 _550;
  float4 _553;
  float _560;
  float _564;
  float _568;
  float _570;
  float _571;
  float _572;
  float _573;
  float _578;
  float _582;
  float _584;
  float _586;
  float _590;
  float _592;
  float _593;
  float _594;
  float _595;
  float _597;
  float _600;
  float _601;
  float _602;
  float _603;
  float _609;
  float _615;
  float _620;
  float _622;
  int _625;
  int _633;
  float _636;
  float _638;
  float _640;
  float _642;
  float4 _649;
  float _652;
  float _654;
  float _661;
  int _664;
  int _672;
  float _685;
  float _687;
  float _689;
  float _691;
  float4 _698;
  float _706;
  float _714;
  float _715;
  float _718;
  float _720;
  float _722;
  float _731;
  float _738;
  int _741;
  float _749;
  float _752;
  float _754;
  float _756;
  int _759;
  float _767;
  int _770;
  float _778;
  float _781;
  float _783;
  float _785;
  int _788;
  float _796;
  int _799;
  float _807;
  float _832;
  float _849;
  int _852;
  int _860;
  float _878;
  uint2 _880;
  float _883;
  uint _889;
  uint _894;
  uint4 _896;
  float4 _899;
  float _906;
  float _910;
  float _914;
  float _916;
  float _917;
  float _918;
  float _919;
  float _924;
  float _928;
  float _930;
  float _932;
  float _936;
  float _938;
  float _939;
  float _940;
  float _941;
  float _943;
  float _946;
  float _947;
  float _948;
  float _949;
  float _955;
  float _961;
  float _966;
  float _968;
  float _969;
  float _970;
  float _971;
  float _974;
  float _976;
  float _978;
  float _983;
  int _1005;
  int _1013;
  float _1016;
  float _1019;
  float _1021;
  float _1041;
  float _1097;
  int _1119;
  float _1127;
  float _1133;
  float _1151;
  float _1169;
  float _1183;
  uint _1184;
  bool _1200;
  float _1206;
  float _1225;
  float _1241;
  float _1257;
  float _1258;
  float _1262;
  float _1265;
  float _1268;
  float _1275;
  float _1282;
  float _1289;
  float _1290;
  float _1291;
  float _1292;
  float _1293;
  float _1294;
  float _1295;
  float _1311;
  float _1327;
  float _1343;
  float _1344;
  float _1345;
  float _1346;
  float _1347;
  float _1364;
  float _1365;
  float _1366;
  float _1367;
  float _1370;
  float _1373;
  float _1377;
  float _1381;
  float _1385;
  float _1405;
  float _1417;
  float _1429;
  float _1441;
  float _1448;
  float _1455;
  float _1462;
  float _1468;
  float _1469;
  float _1471;
  float _1473;
  float _1475;
  float _1480;
  float _1501;
  float _1503;
  float _1506;
  float _1509;
  float _1512;
  float _1518;
  float _1560;
  float _1563;
  float _1569;
  float _1611;
  _31 = 1.0f / max(0.0001f, _exposure0.x);
  _35 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_38 < (uint)170000), _38, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._fishEyeIntensity);
  if (!(!(abs(_46) >= 0.001f))) {
    _53 = (_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
    _56 = (_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x;
    _57 = 0.5f / _35;
    _58 = _53 + -0.5f;
    _59 = _56 - _57;
    _60 = dot(float2(_58, _59), float2(_58, _59));
    _61 = sqrt(_60);
    if (_46 > 0.0f) {
      _69 = sqrt(dot(float2(0.5f, _57), float2(0.5f, _57)));
      _74 = tan(_69 * _46);
      _76 = tan(_61 * _46) * (rsqrt(_60) * _69);
      _99 = (((_76 * _59) / _74) + _57);
      _100 = (((_76 * _58) / _74) + 0.5f);
    } else {
      _65 = select((_35 < 1.0f), 0.5f, _57);
      if (_46 < 0.0f) {
        _85 = _46 * -10.0f;
        _89 = atan(_65 * _85);
        _91 = atan(_61 * _85) * (rsqrt(_60) * _65);
        _99 = (((_91 * _59) / _89) + _57);
        _100 = (((_91 * _58) / _89) + 0.5f);
      } else {
        _99 = _56;
        _100 = _53;
      }
    }
    _103 = (_99 * _35);
    _104 = _100;
  } else {
    _103 = TEXCOORD.y;
    _104 = TEXCOORD.x;
  }
  _106 = (_104 * 2.0f) + -1.0f;
  _108 = 1.0f - (_103 * 2.0f);
  _113 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_104, _103))).x));
  _125 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _113, mad((_invViewProj[3].y), _108, ((_invViewProj[3].x) * _106)));
  _134 = (mad((_invViewProj[0].z), _113, mad((_invViewProj[0].y), _108, ((_invViewProj[0].x) * _106))) + (_invViewProj[0].w)) / _125;
  _143 = (mad((_invViewProj[1].z), _113, mad((_invViewProj[1].y), _108, ((_invViewProj[1].x) * _106))) + (_invViewProj[1].w)) / _125;
  _152 = (mad((_invViewProj[2].z), _113, mad((_invViewProj[2].y), _108, ((_invViewProj[2].x) * _106))) + (_invViewProj[2].w)) / _125;
  _164 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _113, mad((_invViewProjRelative[3].y), _108, ((_invViewProjRelative[3].x) * _106)));
  _174 = -0.0f - ((mad((_invViewProjRelative[0].z), _113, mad((_invViewProjRelative[0].y), _108, ((_invViewProjRelative[0].x) * _106))) + (_invViewProjRelative[0].w)) / _164);
  _184 = -0.0f - ((mad((_invViewProjRelative[1].z), _113, mad((_invViewProjRelative[1].y), _108, ((_invViewProjRelative[1].x) * _106))) + (_invViewProjRelative[1].w)) / _164);
  _194 = -0.0f - ((mad((_invViewProjRelative[2].z), _113, mad((_invViewProjRelative[2].y), _108, ((_invViewProjRelative[2].x) * _106))) + (_invViewProjRelative[2].w)) / _164);
  _196 = rsqrt(dot(float3(_174, _184, _194), float3(_174, _184, _194)));  // [sem: invLength]
  _197 = _196 * _174;
  _198 = _196 * _184;
  _199 = _196 * _194;
  _202 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_104, _103));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _208 = WaveReadLaneFirst(_materialIndex);
  _216 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_208 < (uint)170000), _208, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._centerMaskWidth);
  _222 = ((((1.0f - TEXCOORD.x) * TEXCOORD.x) * TEXCOORD.y) * (1.0f - TEXCOORD.y)) * _216;
  _223 = _222 * 25.0f;
  _224 = TEXCOORD.x + -0.5f;
  _225 = TEXCOORD.y + -0.5f;
  _226 = abs(_224);
  _227 = abs(_225);
  _231 = min(_226, _227) / max(max(_226, _227), 1e-08f);
  _232 = _231 * _231;
  _239 = ((_232 * _231) * (((0.15931422f - (_232 * 0.046496473f)) * _232) + -0.32762277f)) + _231;
  _242 = select((_227 > _226), (1.5707964f - _239), _239);
  _245 = select((_224 < 0.0f), (3.1415927f - _242), _242);
  _249 = sqrt((_225 * _225) + (_224 * _224));
  _253 = select((_225 < 0.0f), (-0.0f - _245), _245) * 0.9549296f;
  _256 = WaveReadLaneFirst(_materialIndex);
  _264 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_256 < (uint)170000), _256, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
  _275 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_264 < (uint)65000), _264, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_199, ((_time.x * 0.05f) + _198)));
  _280 = WaveReadLaneFirst(_materialIndex);
  _288 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_280 < (uint)170000), _280, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
  _299 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_288 < (uint)65000), _288, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.15f) + _198), _197));
  _302 = _299.x + _275.x;
  _303 = _299.y + _275.y;
  _305 = abs(dot(float3(_197, _198, _199), float3(0.0f, 1.0f, 0.0f)));
  _307 = abs(dot(float3(_197, _198, _199), float3(0.0f, 0.0f, 1.0f)));
  _308 = _305 * _302;
  _309 = _305 * _303;
  _312 = (_302 - _308) + (_307 * _308);
  _315 = WaveReadLaneFirst(_materialIndex);
  _323 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_315 < (uint)170000), _315, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._sceneColorDistortionIntensity);
  _326 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_104, _103));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_323 > 0.0001f) {
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _343 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((_323 * ((_312 * 2.0f) + -0.99607843f)) + _104), ((_323 * ((((_303 - _309) + (_309 * _307)) * 2.0f) + -0.99607843f)) + _103)));
    _348 = _343.x;
    _349 = _343.y;
    _350 = _343.z;
  } else {
    _348 = _326.x;
    _349 = _326.y;
    _350 = _326.z;
  }
  _367 = frac(frac(dot(float2(((float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(_104))))), ((float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(_103)))))), float2(0.06711056f, 0.00583715f))) * 52.982918f);
  _370 = WaveReadLaneFirst(_materialIndex);
  _378 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_370 < (uint)170000), _370, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._fireIntensity);
  if (_378 > 0.0001f) {
    _384 = _378 * (((_312 + -0.4f) * 1.3333334f) + -0.2f);
    _396 = (((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_384 * (_367 + -0.5f)) + _104), ((_384 * (0.5f - _367)) + _103))))).x);
  } else {
    _396 = _202.x;
  }
  _402 = ((dot(float3(_348, _349, _350), float3(0.2126f, 0.7152f, 0.0722f)) - _202.y) * saturate(_223 * _223)) + _202.y;
  _405 = _time.x * 0.125f;
  _408 = WaveReadLaneFirst(_materialIndex);
  _416 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_408 < (uint)170000), _408, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._distortionTex);
  _424 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_416 < (uint)65000), _416, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_253, (_405 + _249)));
  _427 = _424.x * 0.2f;
  _428 = _424.y * 0.2f;
  _431 = WaveReadLaneFirst(_materialIndex);
  _439 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_431 < (uint)170000), _431, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._marbleCrackTex);
  _442 = WaveReadLaneFirst(_materialIndex);
  _450 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_442 < (uint)170000), _442, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._marbleCrackTex);
  _453 = WaveReadLaneFirst(_materialIndex);
  _461 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_453 < (uint)170000), _453, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._auraIntensity);
  _464 = saturate((_202.w + -0.1f) * 1.1111112f);  // [sem: expr_sat]
  _475 = ((_464 * _464) * (3.0f - (_464 * 2.0f))) * (1.0f - saturate(exp2(log2(_222 * 15.0f) * 0.07f)));
  if (_461 > 0.0001f) {
    _479 = (_461 * _31) * _475;
    _484 = (_479 * 0.0100228265f);
    _485 = (_479 * 0.033104755f);
    _486 = (_479 * 0.3185468f);
  } else {
    _484 = 0.0f;
    _485 = 0.0f;
    _486 = 0.0f;
  }
  _489 = WaveReadLaneFirst(_materialIndex);
  _497 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_489 < (uint)170000), _489, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._bloodLineIntensity);
  _529 = saturate(saturate((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_439 < (uint)65000), _439, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_427 + _253), ((_427 + _249) - (_time.x * 0.25f)))))).x) + ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_450 < (uint)65000), _450, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_428 + _253), ((_249 - _405) + _428))))).y) * 1.2f)) - (_222 * 14.0f)) * _475;
  if (_497 > 0.0001f) {
    _533 = (_497 * _31) * _529;
    _537 = 0.0f;
    _538 = (_533 * 0.44798842f);
    _539 = (_533 * 2.5371556f);
  } else {
    _537 = _529;
    _538 = _529;
    _539 = _529;
  }
  _544 = (uint)((_bufferSizeAndInvSize.x * _104) + -0.5f);
  _548 = (uint)((_bufferSizeAndInvSize.y * _103) + -0.5f);
  _550 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_544, _548, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _553 = __3__36__0__0__g_gbufferNormal.Load(int3(_544, _548, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _560 = (saturate(_553.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _564 = (saturate(_553.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _568 = (saturate(_553.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _570 = rsqrt(dot(float3(_560, _564, _568), float3(_560, _564, _568)));  // [sem: invLength]
  _571 = _570 * _560;
  _572 = _570 * _564;
  _573 = _568 * _570;
  _578 = (((float)((uint)((uint)(((uint)((uint)(_550.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _582 = (((float)((uint)((uint)(_550.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _584 = (_578 + _582) * 0.5f;
  _586 = (_578 - _582) * 0.5f;
  _590 = (1.0f - abs(_584)) - abs(_586);
  _592 = rsqrt(dot(float3(_584, _586, _590), float3(_584, _586, _590)));  // [sem: invLength]
  _593 = _592 * _584;
  _594 = _592 * _586;
  _595 = _592 * _590;
  _597 = select((_573 >= 0.0f), 1.0f, -1.0f);
  _600 = -0.0f - (1.0f / (_597 + _573));
  _601 = _572 * _600;
  _602 = _601 * _571;
  _603 = _597 * _571;
  _609 = mad(_595, _571, mad(_594, _602, ((((_603 * _571) * _600) + 1.0f) * _593)));
  _615 = mad(_595, _572, mad(_594, ((_601 * _572) + _597), ((_593 * _597) * _602)));
  _620 = mad(_595, _573, mad(_594, (-0.0f - _572), (-0.0f - (_603 * _593))));
  _622 = rsqrt(dot(float3(_609, _615, _620), float3(_609, _615, _620)));  // [sem: invLength]
  _625 = WaveReadLaneFirst(_materialIndex);
  _633 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_625 < (uint)170000), _625, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
  _636 = _time.x * -0.01f;
  _638 = _636 + (_134 * 0.02f);
  _640 = _636 + (_152 * 0.02f);
  _642 = _636 + (_143 * 0.02f);
  _649 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_633 < (uint)65000), _633, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_640, _642));
  _652 = abs(_622 * _615);
  _654 = abs(_622 * _620);
  _661 = (((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_633 < (uint)65000), _633, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_638, _640)))).x) - _649.x) * _652) + _649.x;
  _664 = WaveReadLaneFirst(_materialIndex);
  _672 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_664 < (uint)170000), _664, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex2);
  _685 = (_time.x * 0.1f) + (saturate((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_633 < (uint)65000), _633, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_642, _638)))).x) - _661) * _654) + _661) * 0.3f);
  _687 = _685 + (_134 * 0.1f);
  _689 = _685 + (_152 * 0.1f);
  _691 = _685 + (_143 * 0.1f);
  _698 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_672 < (uint)65000), _672, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_689, _691));
  _706 = (((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_672 < (uint)65000), _672, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_687, _689)))).w) - _698.w) * _652) + _698.w;
  // [sem: expr_sat]
  _714 = saturate((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_672 < (uint)65000), _672, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_691, _687)))).w) - _706) * _654) + _706);
  _715 = _714 * 3.0f;
  _718 = _134 - _mainPosition.x;
  _720 = _143 - _mainPosition.y;
  _722 = _152 - _mainPosition.z;
  _731 = 1.0f - saturate(sqrt(((_720 * _720) + (_718 * _718)) + (_722 * _722)) * 0.002f);
  _738 = ((_731 * _731) * _31) * exp2(log2(saturate(_715)) * 5.4f);
  _741 = WaveReadLaneFirst(_materialIndex);
  _749 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_741 < (uint)170000), _741, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._scanRadius);
  _752 = _mainPosition.x - _134;
  _754 = _mainPosition.y - _143;
  _756 = _mainPosition.z - _152;
  _759 = WaveReadLaneFirst(_materialIndex);
  _767 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_759 < (uint)170000), _759, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._sphereMaskRatio);
  _770 = WaveReadLaneFirst(_materialIndex);
  _778 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_770 < (uint)170000), _770, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._scanRadiusEnd);
  _781 = _mainPosition.x - _134;
  _783 = _mainPosition.y - _143;
  _785 = _mainPosition.z - _152;
  _788 = WaveReadLaneFirst(_materialIndex);
  _796 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_788 < (uint)170000), _788, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._sphereMaskEndNoiseIntensity);
  _799 = WaveReadLaneFirst(_materialIndex);
  _807 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_799 < (uint)170000), _799, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._sphereMaskEndRatio);
  // [sem: expr_sat]
  _832 = saturate(((((saturate(((1.0f - (sqrt(dot(float3(_752, _754, _756), float3(_752, _754, _756))) * (1.0f / max(1e-05f, _749)))) * 2.5000002f) - _715) + -1.0f) * _767) + 1.0f) * _807) * saturate((_796 * _714) - ((1.0f - (sqrt(dot(float3(_781, _783, _785), float3(_781, _783, _785))) * (1.0f / max(1e-05f, _778)))) * 1.4285715f)));
  if ((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _104) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _103) + -0.5f))), 0)))).x) & 127) + (int)(-52)) < (uint)16) {
    _849 = _202.w * 0.5f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _852 = WaveReadLaneFirst(_materialIndex);
    _860 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_852 < (uint)170000), _852, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
    _878 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_860 < (uint)65000), _860, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_849 + ((TEXCOORD.x * 2.0f) * _35)), ((((_time.x * 0.2f) + TEXCOORD.y) * 2.0f) + _849))))).x) + -0.2f;
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_880.x, _880.y);
    _883 = _878 * 0.018749999f;
    _889 = (uint)((_bufferSizeAndInvSize.x * (_883 + _104)) + -0.5f);
    _894 = (uint)((_bufferSizeAndInvSize.y * (_883 + _103)) + -0.5f);
    _896 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_889, _894, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
    _899 = __3__36__0__0__g_gbufferNormal.Load(int3(_889, _894, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
    _906 = (saturate(_899.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _910 = (saturate(_899.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _914 = (saturate(_899.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _916 = rsqrt(dot(float3(_906, _910, _914), float3(_906, _910, _914)));  // [sem: invLength]
    _917 = _916 * _906;
    _918 = _916 * _910;
    _919 = _914 * _916;
    _924 = (((float)((uint)((uint)(((uint)((uint)(_896.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _928 = (((float)((uint)((uint)(_896.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _930 = (_924 + _928) * 0.5f;
    _932 = (_924 - _928) * 0.5f;
    _936 = (1.0f - abs(_930)) - abs(_932);
    _938 = rsqrt(dot(float3(_930, _932, _936), float3(_930, _932, _936)));  // [sem: invLength]
    _939 = _938 * _930;
    _940 = _938 * _932;
    _941 = _938 * _936;
    _943 = select((_919 >= 0.0f), 1.0f, -1.0f);
    _946 = -0.0f - (1.0f / (_943 + _919));
    _947 = _918 * _946;
    _948 = _947 * _917;
    _949 = _943 * _917;
    _955 = mad(_941, _917, mad(_940, _948, ((((_949 * _917) * _946) + 1.0f) * _939)));
    _961 = mad(_941, _918, mad(_940, ((_947 * _918) + _943), ((_939 * _943) * _948)));
    _966 = mad(_941, _919, mad(_940, (-0.0f - _918), (-0.0f - (_949 * _939))));
    _968 = rsqrt(dot(float3(_955, _961, _966), float3(_955, _961, _966)));  // [sem: invLength]
    _969 = _968 * _955;
    _970 = _968 * _961;
    _971 = _968 * _966;
    _974 = _mainPosition.x - _134;
    _976 = _mainPosition.y - _143;
    _978 = _mainPosition.z - _152;
    _983 = saturate(5.0000005f - (sqrt(dot(float3(_974, _976, _978), float3(_974, _976, _978))) * 0.12500001f));  // [sem: expr_sat]
    if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_880.x))))))) + 0.5f) * _104)), ((int)((((float)((int)((int)((float)((int)((int)(_880.y))))))) + 0.5f) * _103)), 0)))).x) & 255) == _renderPassEnemy) {
      _1005 = WaveReadLaneFirst(_materialIndex);
      _1013 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_1005 < (uint)170000), _1005, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._enemyMaskColor);
      _1016 = (float)((uint)((uint)(((uint)((uint)(_1013)) >> 16) & 255)));
      _1019 = (float)((uint)((uint)(((uint)((uint)(_1013)) >> 8) & 255)));
      _1021 = (float)((uint)((uint)(_1013 & 255)));
      _1041 = (((((_878 * 3.25f) + 1.3f) * _31) * _983) * exp2(log2(saturate(_312 * 0.5f)) * 2.4f)) * exp2(log2(abs(dot(float3(_969, _970, _971), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 5.0f);
      _1080 = (_1041 * 0.15f);
      _1081 = _1041;
      _1082 = (((select(((_1021 * 0.003921569f) < 0.04045f), (_1021 * 0.000303527f), exp2(log2((_1021 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f) * _983) + 1.0f);
      _1083 = (((select(((_1019 * 0.003921569f) < 0.04045f), (_1019 * 0.000303527f), exp2(log2((_1019 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f) * _983) + 1.0f);
      _1084 = (((select(((_1016 * 0.003921569f) < 0.04045f), (_1016 * 0.000303527f), exp2(log2((_1016 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f) * _983) + 1.0f);
    } else {
      _1080 = 0.0f;
      _1081 = 0.0f;
      _1082 = 1.0f;
      _1083 = 1.0f;
      _1084 = 1.0f;
    }
    _1097 = ((_31 * 1.25f) * _878) * exp2(log2(1.0f - abs(dot(float3(_969, _970, _971), float3(_viewDir.x, _viewDir.y, _viewDir.z)))) * 5.0f);
    _1108 = ((_1097 * 0.033104755f) + _1080);
    _1109 = ((_1097 * 0.3185468f) + _1081);
    _1110 = _1082;
    _1111 = _1083;
    _1112 = _1084;
    _1113 = 0.0f;
    _1114 = 0.0f;
    _1115 = 0.0f;
    _1116 = 0.0f;
  } else {
    _1108 = 0.0f;
    _1109 = 0.0f;
    _1110 = 1.0f;
    _1111 = 1.0f;
    _1112 = 1.0f;
    _1113 = (_738 * 0.0039359396f);
    _1114 = (_738 * 0.07323897f);
    _1115 = (_396 * 0.050876092f);
    _1116 = (_396 * 0.26327342f);
  }
  _1119 = WaveReadLaneFirst(_materialIndex);
  _1127 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_1119 < (uint)170000), _1119, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._fogIntensity);
  _1133 = saturate(saturate(exp2(log2(_222 * 20.0f) * 0.5f)));  // [sem: expr_sat]
  _1151 = ((((((_486 - _348) + _539) + _1109) + _1114) + ((_1133 * ((_1127 * (((lerp(_348, _402, 0.5f)) * 0.8f) - _1116)) + _1116)) * saturate(_1112 + 0.2f))) * _832) + _348;
  _1169 = ((((((_485 - _349) + _538) + _1108) + _1113) + ((_1133 * ((_1127 * (((lerp(_349, _402, 0.5f)) * 0.8f) - _1115)) + _1115)) * saturate(_1111 + 0.2f))) * _832) + _349;
  _1183 = ((((_484 - _350) + _537) + (((((lerp(_350, _402, 0.5f)) * 0.8f) * _1127) * _1133) * saturate(_1110 + 0.2f))) * _832) + _350;
  _1184 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1197 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1184, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1197 = 0.0f;
  }
  _1200 = (_localToneMappingParams.w > 0.0f);
  if (_1200) {
    _1206 = _exposure0.x * _userImageAdjust.z;
    _1225 = exp2(_powerParams.x * log2(max(0.0f, (((_1206 * max(0.0f, (((_1151 * 1.70505f) - (_1169 * 0.62179f)) - (_1183 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _1241 = exp2(log2(max(0.0f, (((_slopeParams.y * _1206) * max(0.0f, (((_1169 * 1.1408f) - (_1151 * 0.13026f)) - (_1183 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _1257 = exp2(log2(max(0.0f, (((_slopeParams.z * _1206) * max(0.0f, (((_1169 * -0.12897f) - (_1151 * 0.024f)) + (_1183 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _1258 = dot(float3(_1225, _1241, _1257), float3(0.212671f, 0.71516f, 0.072169f));
    _1262 = ((_1225 - _1258) * _powerParams.w) + _1258;
    _1265 = ((_1241 - _1258) * _powerParams.w) + _1258;
    _1268 = ((_1257 - _1258) * _powerParams.w) + _1258;
    _1275 = min(max(log2(mad(_1268, 0.079223745f, mad(_1265, 0.0784336f, (_1262 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1282 = min(max(log2(mad(_1268, 0.07916613f, mad(_1265, 0.87846863f, (_1262 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1289 = min(max(log2(mad(_1268, 0.879143f, mad(_1265, 0.0784336f, (_1262 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1290 = _1275 * 0.060606062f;
    _1291 = _1282 * 0.060606062f;
    _1292 = _1289 * 0.060606062f;
    _1293 = _1290 * _1290;
    _1294 = _1291 * _1291;
    _1295 = _1292 * _1292;
    _1311 = min(0.0f, (-0.0f - (((_1275 * 0.0072181816f) + ((_1293 * 0.4298f) + (((_1293 * _1293) * ((31.96f - (_1275 * 2.4327273f)) + (_1293 * 15.5f))) - ((_1275 * 0.41624245f) * _1293)))) + -0.00232f)));
    _1327 = min(0.0f, (-0.0f - (((_1282 * 0.0072181816f) + ((_1294 * 0.4298f) + (((_1294 * _1294) * ((31.96f - (_1282 * 2.4327273f)) + (_1294 * 15.5f))) - ((_1282 * 0.41624245f) * _1294)))) + -0.00232f)));
    _1343 = min(0.0f, (-0.0f - (((_1289 * 0.0072181816f) + ((_1295 * 0.4298f) + (((_1295 * _1295) * ((31.96f - (_1289 * 2.4327273f)) + (_1295 * 15.5f))) - ((_1289 * 0.41624245f) * _1295)))) + -0.00232f)));
    _1344 = -0.0f - _1311;
    _1345 = -0.0f - _1327;
    _1346 = -0.0f - _1343;
    _1347 = dot(float3(_1344, _1345, _1346), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _1364 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1365 = -0.79999995f / _1364;
      _1366 = -1.2f / _1364;
      _1367 = 0.20000005f / _1364;
      _1370 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1373 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1377 = (_1365 + 1.4f) + (_1373 * (-0.39999998f - _1365));
      _1381 = (_1366 + 1.6f) + (_1373 * (-0.6f - _1366));
      _1385 = (_1367 + 0.9f) + (_1373 * (0.5f - _1367));
      _1402 = (lerp(_1385, 1.4f, _1370));  // [sem: blended]
      _1403 = (lerp(_1377, 1.0f, _1370));  // [sem: blended]
      _1404 = (lerp(_1381, 1.2f, _1370));  // [sem: blended]
    } else {
      _1402 = 1.4f;  // [sem: blended]
      _1403 = 1.0f;  // [sem: blended]
      _1404 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _1405 = 1.0f - _1404;
    _1417 = ((exp2(log2(((saturate((_1311 * _1311) * _1344) * _1405) + _1404) * _1344) * _1403) - _1347) * _1402) + _1347;
    _1429 = ((exp2(log2(((saturate((_1327 * _1327) * _1345) * _1405) + _1404) * _1345) * _1403) - _1347) * _1402) + _1347;
    _1441 = ((exp2(log2(((saturate((_1343 * _1343) * _1346) * _1405) + _1404) * _1346) * _1403) - _1347) * _1402) + _1347;
    _1448 = saturate(exp2(log2(mad(_1441, -0.09902974f, mad(_1429, -0.09802088f, (_1417 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _1455 = saturate(exp2(log2(mad(_1441, -0.098961174f, mad(_1429, 1.1519032f, (_1417 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1462 = saturate(exp2(log2(mad(_1441, 1.1510737f, mad(_1429, -0.09804345f, (_1417 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _1468 = 1.0f - abs(_etcParams.w);
      _1469 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1471 = (_1468 * _1448) + _1469;
      _1473 = (_1468 * _1455) + _1469;
      _1475 = (_1468 * _1462) + _1469;
      if (_colorGradingParams.w > 0.0f) {
        _1480 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1497 = (((max(0.0f, (1.0f - _1475)) - _1475) * _1480) + _1475);
        _1498 = (((max(0.0f, (1.0f - _1473)) - _1473) * _1480) + _1473);
        _1499 = (((max(0.0f, (1.0f - _1471)) - _1471) * _1480) + _1471);
      } else {
        _1497 = _1475;
        _1498 = _1473;
        _1499 = _1471;
      }
      _1501 = _userImageAdjust.y + 1.0f;
      _1503 = _userImageAdjust.x + 0.5f;
      _1506 = ((_1499 + -0.5f) * _1501) + _1503;
      _1509 = ((_1498 + -0.5f) * _1501) + _1503;
      _1512 = ((_1497 + -0.5f) * _1501) + _1503;
      _1518 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1553 = exp2(log2(saturate(mad(_colorBlind2.z, _1512, mad(_colorBlind2.y, _1509, (_colorBlind2.x * _1506))))) * _1518);
      _1554 = exp2(log2(saturate(mad(_colorBlind1.z, _1512, mad(_colorBlind1.y, _1509, (_colorBlind1.x * _1506))))) * _1518);
      _1555 = exp2(log2(saturate(mad(_colorBlind0.z, _1512, mad(_colorBlind0.y, _1509, (_colorBlind0.x * _1506))))) * _1518);
    } else {
      _1553 = _1462;
      _1554 = _1455;
      _1555 = _1448;
    }
  } else {
    _1553 = _1183;
    _1554 = _1169;
    _1555 = _1151;
  }
  if (_etcParams.y > 1.0f) {
    _1560 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1563 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1569 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_1560, _1563), float2(_1560, _1563))));  // [sem: expr_sat]
    _1574 = (_1569 * _1553);
    _1575 = (_1569 * _1554);
    _1576 = (_1569 * _1555);
  } else {
    _1574 = _1553;
    _1575 = _1554;
    _1576 = _1555;
  }
  if (_1200 && (_etcParams.z > 0.0f)) {
    _1606 = select((_1576 <= 0.0031308f), (_1576 * 12.92f), (((pow(_1576, 0.41666666f)) * 1.055f) + -0.055f));
    _1607 = select((_1575 <= 0.0031308f), (_1575 * 12.92f), (((pow(_1575, 0.41666666f)) * 1.055f) + -0.055f));
    _1608 = select((_1574 <= 0.0031308f), (_1574 * 12.92f), (((pow(_1574, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1606 = _1576;
    _1607 = _1575;
    _1608 = _1574;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1611 = (float)((uint)((uint)(_1184)));
    if (!(_1611 < _viewDir.w)) {
      if (!(!(_1611 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1622 = 0.0f;
        _1623 = 0.0f;
        _1624 = 0.0f;
      } else {
        _1622 = _1606;
        _1623 = _1607;
        _1624 = _1608;
      }
    } else {
      _1622 = 0.0f;
      _1623 = 0.0f;
      _1624 = 0.0f;
    }
  } else {
    _1622 = _1606;
    _1623 = _1607;
    _1624 = _1608;
  }
  SV_Target.x = _1622;
  SV_Target.y = _1623;
  SV_Target.z = _1624;
  SV_Target.w = _1197;
  return SV_Target;
}
