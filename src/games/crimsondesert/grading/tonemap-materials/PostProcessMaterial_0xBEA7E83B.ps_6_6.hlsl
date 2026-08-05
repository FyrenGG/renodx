struct PostProcessMemoryRead_CDStruct {
  float _memoryReadProgress;
  float _memoryReadBackgroundOpacity;
  float _memoryOpacity;
  float _enemyBossOpacity;
  uint _noiseTex;
  uint _auraTex;
  uint _glitchTex;
  float _radius;
  float _squareSize;
  float _maskThreshold;
  float3 _cubeSpaceSkyColor;
  float _cubeSpaceGradientRatio;
  float _cubeSpaceEffectRatio;
  float _cubeSpaceSpeedRatio;
  float _tempCubeSpaceRatio;
  float _fishEyeMaxPower;
  float _vignetteIntensity;
};

struct BindlessParameters_PostProcessMemoryRead_CD {
  PostProcessMemoryRead_CDStruct BindlessParameters_PostProcessMemoryRead_CD;
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

typedef BindlessParameters_PostProcessMemoryRead_CD BindlessParameters_PostProcessMemoryRead_CD_t;
ConstantBuffer<BindlessParameters_PostProcessMemoryRead_CD_t> BindlessParameters_PostProcessMemoryRead_CD[] : register(b0, space100);

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
  bool _2;
  float _35;
  int _38;
  float _46;
  float _148;
  float _149;
  float _152;
  float _153;
  int _358;
  float _359;
  int _419;
  float _420;
  float _422;
  float _600;
  float _601;
  float _602;
  float _640;
  float _641;
  float _642;
  int _643;
  int _814;
  float _815;
  float _816;
  float _817;
  float _818;
  int _819;
  int _820;
  int _873;
  int _874;
  int _875;
  int _882;
  float _1196;
  float _1197;
  float _1198;
  float _1199;
  float _1230;
  float _1231;
  float _1232;
  float _1298;
  float _1363;
  float _1364;
  float _1365;
  float _1366;
  float _1367;
  float _1368;
  float _1369;
  int _1431;
  float _1452;
  float _1453;
  float _1454;
  float _1468;
  float _1675;
  float _1676;
  float _1677;
  float _1800;
  float _1801;
  float _1802;
  float _1803;
  float _1804;
  float _1949;
  float _2206;
  float _2207;
  float _2208;
  float _2258;
  float _2259;
  float _2260;
  float _2321;
  float _2526;
  float _2527;
  float _2528;
  float _2621;
  float _2622;
  float _2623;
  float _2677;
  float _2678;
  float _2679;
  float _2698;
  float _2699;
  float _2700;
  float _2730;
  float _2731;
  float _2732;
  float _2746;
  float _2747;
  float _2748;
  int _51;
  float _59;
  int _64;
  float _72;
  float _75;
  float _80;
  float _84;
  float _85;
  float _86;
  int _89;
  float _97;
  int _100;
  float _108;
  float _109;
  float _113;
  float _118;
  float _120;
  float _131;
  float _137;
  float _140;
  float _156;
  float4 _168;
  float _175;
  float _179;
  float _183;
  float _185;
  float _186;
  float _187;
  float _188;
  float _190;
  float _192;
  float _193;
  float _205;
  float _214;
  float _227;
  float _240;
  float _252;
  float _261;
  float _270;
  float _279;
  float _281;
  float _282;
  float _283;
  float _284;
  float4 _287;
  int _293;
  float _301;
  int _306;
  float _314;
  int _317;
  float _325;
  float _337;
  float _344;
  float _350;
  float _356;
  float _362;
  float _364;
  float _367;
  float _369;
  float _372;
  float _374;
  float _382;
  float _390;
  float _398;
  float _399;
  float _400;
  float _401;
  float _411;
  float _415;
  int _416;
  float _424;
  float _426;
  float _428;
  float _429;
  float _431;
  float _432;
  float _434;
  float _435;
  float _437;
  float _445;
  float _453;
  float _461;
  float _462;
  float _463;
  float _464;
  float _465;
  float _466;
  float _467;
  float _468;
  float _469;
  float _474;
  float _476;
  float _478;
  float _486;
  float _487;
  float _489;
  float _491;
  float _499;
  float _500;
  float _502;
  float _504;
  float _512;
  float _513;
  float _521;
  float _530;
  float _538;
  float _540;
  float _543;
  float _545;
  float _547;
  float _549;
  float _556;
  float _559;
  float _563;
  float _566;
  float _567;
  float _570;
  float _571;
  float _572;
  float _573;
  float _574;
  int _577;
  float _585;
  float _610;
  int _613;
  float _621;
  float _625;
  float _629;
  float _646;
  float _647;
  float _648;
  float _649;
  float _650;
  float _651;
  float _652;
  int _655;
  int _663;
  float4 _674;
  int _681;
  float _689;
  float _691;
  uint2 _693;
  int _714;
  int _717;
  float _725;
  int _728;
  float _736;
  float _739;
  float _742;
  float _743;
  float _744;
  float _745;
  float _746;
  float _747;
  float _748;
  float _749;
  float _750;
  float _751;
  float _754;
  float _757;
  float _760;
  float _763;
  float _766;
  float _769;
  float _772;
  float _775;
  float _778;
  float _781;
  float _784;
  float _787;
  float _790;
  float _793;
  float _794;
  int _797;
  float _805;
  float _806;
  float _807;
  float _808;
  float _809;
  float _810;
  float _811;
  float _821;
  float _822;
  float _823;
  float _825;
  float _827;
  float _829;
  float _832;
  float _839;
  float _846;
  float _853;
  float _864;
  bool _865;
  float _867;
  float _868;
  float _869;
  int _870;
  int _877;
  float _886;
  float _888;
  float _890;
  float _902;
  float _913;
  float _924;
  float _927;
  float _929;
  float _931;
  float _940;
  float _942;
  float _943;
  float _945;
  float _947;
  float _948;
  float _949;
  float _953;
  float _956;
  float _979;
  float _985;
  float _986;
  float _992;
  float _993;
  float4 _998;
  float4 _1002;
  int _1008;
  float _1016;
  float _1018;
  float _1022;
  float _1026;
  float _1030;
  float _1033;
  float _1034;
  float4 _1039;
  float4 _1043;
  int _1049;
  float _1057;
  float _1059;
  float _1063;
  float _1067;
  float _1071;
  float _1074;
  float _1075;
  float4 _1080;
  float4 _1084;
  int _1090;
  float _1098;
  float _1100;
  float _1104;
  float _1108;
  float _1112;
  float _1115;
  float _1116;
  float4 _1121;
  float4 _1125;
  int _1131;
  float _1139;
  float _1141;
  float _1145;
  float _1149;
  float _1153;
  float _1156;
  float _1157;
  float4 _1162;
  float4 _1166;
  int _1172;
  float _1180;
  float _1182;
  float4 _1202;
  int _1205;
  float _1213;
  float _1215;
  int _1235;
  float _1243;
  int _1246;
  float _1254;
  int _1273;
  float _1281;
  int _1288;
  float _1296;
  int _1301;
  float _1309;
  float _1313;
  int _1334;
  int _1342;
  float4 _1355;
  float _1357;
  float _1360;
  float _1361;
  float _1373;
  float _1377;
  float _1378;
  float _1379;
  float _1388;
  float _1389;
  float _1390;
  float4 _1393;
  float _1401;
  float _1403;
  float _1409;
  float _1411;
  float _1412;
  float _1424;
  float _1425;
  float _1426;
  float _1427;
  float _1428;
  float _1429;
  float _1433;
  float _1436;
  bool _1438;
  float _1471;
  float _1474;
  float _1477;
  float _1492;
  float _1504;
  float _1513;
  float _1522;
  int _1525;
  int _1533;
  float4 _1548;
  float _1551;
  float _1552;
  float _1555;
  int _1558;
  int _1566;
  float4 _1587;
  float _1591;
  float _1597;
  float _1616;
  float _1621;
  float _1630;
  float _1639;
  float _1641;
  float _1643;
  float _1646;
  int _1680;
  float _1688;
  float _1693;
  float _1695;
  float _1697;
  float _1705;
  float _1706;
  int _1719;
  int _1726;
  int _1734;
  float4 _1743;
  float _1747;
  float _1749;
  float _1754;
  float _1758;
  float _1766;
  float _1772;
  float _1775;
  float _1781;
  float _1794;
  uint _1836;
  uint _1842;
  uint4 _1844;
  float4 _1847;
  float _1854;
  float _1858;
  float _1862;
  float _1864;
  float _1865;
  float _1866;
  float _1867;
  float _1872;
  float _1876;
  float _1878;
  float _1880;
  float _1884;
  float _1886;
  float _1887;
  float _1888;
  float _1889;
  float _1891;
  float _1894;
  float _1895;
  float _1896;
  float _1897;
  float _1903;
  float _1909;
  float _1914;
  float _1916;
  float _1928;
  float _1929;
  float _1932;
  float _1957;
  float _1961;
  float _1979;
  float _1981;
  float _1983;
  float _1986;
  float _1988;
  float _1990;
  float _2001;
  float4 _2006;
  float _2022;
  float _2023;
  float _2025;
  float _2028;
  float _2029;
  float _2030;
  float _2031;
  float _2039;
  float _2047;
  float _2055;
  float _2057;
  float _2058;
  float _2068;
  float _2078;
  float _2087;
  bool _2093;
  int _2097;
  float _2109;
  float _2111;
  float _2113;
  float _2125;
  float _2134;
  float _2145;
  float _2149;
  float _2153;
  float _2157;
  float _2161;
  float _2169;
  float _2177;
  float _2178;
  float _2182;
  float _2194;
  float _2199;
  float4 _2215;
  float _2220;
  float _2228;
  float _2229;
  float _2230;
  int _2233;
  float _2241;
  float _2261;
  float _2262;
  float _2269;
  int _2272;
  float _2280;
  int _2283;
  float _2291;
  float _2298;
  float _2301;
  float _2304;
  float _2307;
  uint _2308;
  bool _2324;
  float _2330;
  float _2349;
  float _2365;
  float _2381;
  float _2382;
  float _2386;
  float _2389;
  float _2392;
  float _2399;
  float _2406;
  float _2413;
  float _2414;
  float _2415;
  float _2416;
  float _2417;
  float _2418;
  float _2419;
  float _2435;
  float _2451;
  float _2467;
  float _2468;
  float _2469;
  float _2470;
  float _2471;
  float _2488;
  float _2489;
  float _2490;
  float _2491;
  float _2494;
  float _2497;
  float _2501;
  float _2505;
  float _2509;
  float _2529;
  float _2541;
  float _2553;
  float _2565;
  float _2572;
  float _2579;
  float _2586;
  float _2592;
  float _2593;
  float _2595;
  float _2597;
  float _2599;
  float _2604;
  float _2625;
  float _2627;
  float _2630;
  float _2633;
  float _2636;
  float _2642;
  float _2684;
  float _2687;
  float _2693;
  float _2735;
  int __loop_jump_target = -1;
  _2 = ((_global_0[0]) == 0);
  _35 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_38 < (uint)170000), _38, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._fishEyeMaxPower);
  bool __branch_chain_0;
  if (_46 > 0.001f) {
    __branch_chain_0 = true;
  } else {
    _51 = WaveReadLaneFirst(_materialIndex);
    _59 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_51 < (uint)170000), _51, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._fishEyeMaxPower);
    if (_59 < -0.001f) {
      __branch_chain_0 = true;
    } else {
      _152 = TEXCOORD.y;
      _153 = TEXCOORD.x;
      __branch_chain_0 = false;
    }
  }
  if (__branch_chain_0) {
    _64 = WaveReadLaneFirst(_materialIndex);
    _72 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_64 < (uint)170000), _64, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
    [branch]
    if (!(!(_72 >= 0.001f))) {
      _75 = 0.5f / _35;
      _80 = ((_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x) + -0.5f;
      _84 = ((_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x) - _75;
      _85 = dot(float2(_80, _84), float2(_80, _84));
      _86 = sqrt(_85);
      _89 = WaveReadLaneFirst(_materialIndex);
      _97 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_89 < (uint)170000), _89, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._fishEyeMaxPower);
      _100 = WaveReadLaneFirst(_materialIndex);
      _108 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_100 < (uint)170000), _100, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
      _109 = _108 * _97;
      if (_109 > 0.0f) {
        _113 = sqrt(dot(float2(0.5f, _75), float2(0.5f, _75)));
        _118 = (tan(_109 * _86) * _113) * rsqrt(_85);
        _120 = tan(_113 * _109);
        _148 = (((_118 * _84) / _120) + _75);
        _149 = (((_118 * _80) / _120) + 0.5f);
      } else {
        if (_109 < 0.0f) {
          _131 = select((_35 < 1.0f), 0.5f, _75);
          _137 = (atan((_109 * _86) * -10.0f) * _131) * rsqrt(_85);
          _140 = atan((_109 * -10.0f) * _131);
          _148 = (((_137 * _84) / _140) + _75);
          _149 = (((_137 * _80) / _140) + 0.5f);
        } else {
          _148 = 0.0f;
          _149 = 0.0f;
        }
      }
      _152 = (_148 * _35);
      _153 = _149;
    } else {
      _152 = TEXCOORD.y;
      _153 = TEXCOORD.x;
    }
  }
  _156 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_153, _152));  // [sem: _3__36__0__0__g_depth_sample]
  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _168 = __3__36__0__0__g_gbufferNormal.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _153) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _152) + -0.5f))), 0));
  _175 = (saturate(_168.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _179 = (saturate(_168.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _183 = (saturate(_168.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _185 = rsqrt(dot(float3(_175, _179, _183), float3(_175, _179, _183)));  // [sem: invLength]
  _186 = _185 * _175;
  _187 = _185 * _179;
  _188 = _183 * _185;
  _190 = (_153 * 2.0f) + -1.0f;
  _192 = 1.0f - (_152 * 2.0f);
  _193 = max(1e-07f, _156.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _205 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _193, mad((_invViewProj[3].y), _192, ((_invViewProj[3].x) * _190)));
  _214 = (mad((_invViewProj[0].z), _193, mad((_invViewProj[0].y), _192, ((_invViewProj[0].x) * _190))) + (_invViewProj[0].w)) / _205;
  _227 = ((_invViewProj[1].w) + mad((_invViewProj[1].z), _193, mad((_invViewProj[1].y), _192, ((_invViewProj[1].x) * _190)))) / _205;
  _240 = ((_invViewProj[2].w) + mad((_invViewProj[2].z), _193, mad((_invViewProj[2].y), _192, ((_invViewProj[2].x) * _190)))) / _205;
  _252 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _193, mad((_invViewProjRelative[3].y), _192, ((_invViewProjRelative[3].x) * _190)));
  _261 = (mad((_invViewProjRelative[0].z), _193, mad((_invViewProjRelative[0].y), _192, ((_invViewProjRelative[0].x) * _190))) + (_invViewProjRelative[0].w)) / _252;
  _270 = (mad((_invViewProjRelative[1].z), _193, mad((_invViewProjRelative[1].y), _192, ((_invViewProjRelative[1].x) * _190))) + (_invViewProjRelative[1].w)) / _252;
  _279 = (mad((_invViewProjRelative[2].z), _193, mad((_invViewProjRelative[2].y), _192, ((_invViewProjRelative[2].x) * _190))) + (_invViewProjRelative[2].w)) / _252;
  _281 = rsqrt(dot(float3(_261, _270, _279), float3(_261, _270, _279)));  // [sem: invLength]
  _282 = _281 * _261;
  _283 = _281 * _270;
  _284 = _281 * _279;
  _287 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_153, _152));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _293 = WaveReadLaneFirst(_materialIndex);
  _301 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_293 < (uint)170000), _293, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceEffectRatio);
  if (!(!(_301 >= 0.001f))) {
    _306 = WaveReadLaneFirst(_materialIndex);
    _314 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_306 < (uint)170000), _306, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceGradientRatio);
    _317 = WaveReadLaneFirst(_materialIndex);
    _325 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_317 < (uint)170000), _317, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSpeedRatio);
    _337 = frac((_time.x * _325) + -0.005f) * rsqrt(dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_viewDir.x, _viewDir.y, _viewDir.z)));
    _344 = (frac(_viewPosPrev.x * 0.01f) + 2000.0f) + (_337 * _viewDir.x);
    _350 = ((_337 * _viewDir.y) + 2000.0f) + frac(_viewPosPrev.y * 0.01f);
    _356 = ((_337 * _viewDir.z) + 2000.0f) + frac(_viewPosPrev.z * 0.01f);
    _358 = 0;
    _359 = 1.0f;
    while(true) {
      _362 = ((_359 * _282) + _344) * 4.0f;
      _364 = frac(abs(_362));
      _367 = ((_359 * _283) + _350) * 4.0f;
      _369 = frac(abs(_367));
      _372 = ((_359 * _284) + _356) * 4.0f;
      _374 = frac(abs(_372));
      _382 = abs((select((_362 >= (-0.0f - _362)), _364, (-0.0f - _364)) * 0.25f) + -0.125f) + -0.0005f;
      _390 = abs((select((_367 >= (-0.0f - _367)), _369, (-0.0f - _369)) * 0.25f) + -0.125f) + -0.0005f;
      _398 = abs((select((_372 >= (-0.0f - _372)), _374, (-0.0f - _374)) * 0.25f) + -0.125f) + -0.0005f;
      _399 = max(_382, 0.0f);
      _400 = max(_390, 0.0f);
      _401 = max(_398, 0.0f);
      _411 = sqrt(((_400 * _400) + (_399 * _399)) + (_401 * _401)) + min(max(_382, max(_390, _398)), 0.0f);
      if (!(_411 < (_359 * 0.001f))) {
        _415 = _411 + _359;
        _416 = (int)(_358) + (int)(1);
        if ((int)_416 < (int)50) {
          _419 = _416;
          _420 = _415;
          while(true) {
            _358 = _419;
            _359 = _420;
            __loop_jump_target = 357;
            break;
            break;
          }
          if (__loop_jump_target == 357) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
        } else {
          _422 = _415;
        }
      } else {
        _422 = _359;
      }
      _424 = (_422 * _282) + _344;
      _426 = (_422 * _283) + _350;
      _428 = (_422 * _284) + _356;
      _429 = _424 * 4.0f;
      _431 = frac(abs(_429));
      _432 = _426 * 4.0f;
      _434 = frac(abs(_432));
      _435 = _428 * 4.0f;
      _437 = frac(abs(_435));
      _445 = abs((select((_429 >= (-0.0f - _429)), _431, (-0.0f - _431)) * 0.25f) + -0.125f) + -0.0005f;
      _453 = abs((select((_432 >= (-0.0f - _432)), _434, (-0.0f - _434)) * 0.25f) + -0.125f) + -0.0005f;
      _461 = abs((select((_435 >= (-0.0f - _435)), _437, (-0.0f - _437)) * 0.25f) + -0.125f) + -0.0005f;
      _462 = max(_445, 0.0f);
      _463 = max(_453, 0.0f);
      _464 = max(_461, 0.0f);
      _465 = _462 * _462;
      _466 = _463 * _463;
      _467 = _466 + _465;
      _468 = _464 * _464;
      _469 = max(_453, _461);
      _474 = sqrt(_467 + _468) + min(max(_445, _469), 0.0f);
      _476 = (_424 + 0.001f) * 4.0f;
      _478 = frac(abs(_476));
      _486 = abs((select((_476 >= (-0.0f - _476)), _478, (-0.0f - _478)) * 0.25f) + -0.125f) + -0.0005f;
      _487 = max(_486, 0.0f);
      _489 = (_426 + 0.001f) * 4.0f;
      _491 = frac(abs(_489));
      _499 = abs((select((_489 >= (-0.0f - _489)), _491, (-0.0f - _491)) * 0.25f) + -0.125f) + -0.0005f;
      _500 = max(_499, 0.0f);
      _502 = (_428 + 0.001f) * 4.0f;
      _504 = frac(abs(_502));
      _512 = abs((select((_502 >= (-0.0f - _502)), _504, (-0.0f - _504)) * 0.25f) + -0.125f) + -0.0005f;
      _513 = max(_512, 0.0f);
      _521 = (sqrt((_468 + _466) + (_487 * _487)) - _474) + min(max(_486, _469), 0.0f);
      _530 = (sqrt((_468 + _465) + (_500 * _500)) - _474) + min(max(_445, max(_499, _461)), 0.0f);
      _538 = (sqrt((_513 * _513) + _467) - _474) + min(max(_445, max(_453, _512)), 0.0f);
      _540 = rsqrt(dot(float3(_521, _530, _538), float3(_521, _530, _538)));  // [sem: invLength]
      _543 = -0.0f - _sunDirection.x;
      _545 = -0.0f - _sunDirection.y;
      _547 = -0.0f - _sunDirection.z;
      _549 = rsqrt(dot(float3(_543, _545, _547), float3(_543, _545, _547)));  // [sem: invLength]
      _556 = dot(float3((_540 * _521), (_540 * _530), (_540 * _538)), float3((_549 * _543), (_549 * _545), (_549 * _547)));
      _559 = saturate((_422 * 0.22222224f) + -0.11111112f);  // [sem: expr_sat]
      _563 = (_559 * _559) * (3.0f - (_559 * 2.0f));
      _566 = 1.0f - (_556 - (_563 * _556));
      _567 = _566 * _566;
      _570 = ((_567 * _567) * 0.2f) + 0.1f;
      _571 = _570 * _570;
      _572 = _571 * 0.7f;
      _573 = _571 * 0.4f;
      _574 = _571 * 0.1f;
      _577 = WaveReadLaneFirst(_materialIndex);
      _585 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_577 < (uint)170000), _577, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceEffectRatio);
      if (!_2) {
        _419 = _358;
        _420 = _359;
        while(true) {
          _358 = _419;
          _359 = _420;
          __loop_jump_target = 357;
          break;
          break;
        }
        if (__loop_jump_target == 357) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _600 = saturate((_574 - (_574 * _563)) * _585);  // [sem: expr_sat]
      _601 = saturate((_573 - (_573 * _563)) * _585);  // [sem: expr_sat]
      _602 = saturate((_572 - (_572 * _563)) * _585);  // [sem: expr_sat]
      break;
    }
  } else {
    _600 = 0.0f;  // [sem: expr_sat]
    _601 = 0.0f;  // [sem: expr_sat]
    _602 = 0.0f;  // [sem: expr_sat]
  }
  if ((_156.x < 1e-07f) || (_156.x == 1.0f)) {
    _610 = exp2(log2(abs(_283)) * 0.5f);
    _613 = WaveReadLaneFirst(_materialIndex);
    _621 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_613 < (uint)170000), _613, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSkyColor.x);
    _625 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_613 < (uint)170000), _613, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSkyColor.y);
    _629 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_613 < (uint)170000), _613, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSkyColor.z);
    _640 = (lerp(_600, _629, _610));  // [sem: blended]
    _641 = (lerp(_601, _625, _610));  // [sem: blended]
    _642 = (lerp(_602, _621, _610));  // [sem: blended]
    _643 = 0;
  } else {
    _640 = _600;  // [sem: blended]
    _641 = _601;  // [sem: blended]
    _642 = _602;  // [sem: blended]
    _643 = 1;
  }
  _646 = max(0.001f, _exposure0.x);
  _647 = _642 / _646;
  _648 = _641 / _646;
  _649 = _640 / _646;
  _650 = 4.0f / _35;
  _651 = _650 * _153;
  _652 = _650 * _152;
  _655 = WaveReadLaneFirst(_materialIndex);
  _663 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_655 < (uint)170000), _655, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
  _674 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_663 < (uint)65000), _663, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_651, ((_time.x * 0.1f) + _652)));
  _681 = WaveReadLaneFirst(_materialIndex);
  _689 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_681 < (uint)170000), _681, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _691 = _689 * (_674.y + -0.3f);
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_693.x, _693.y);
  _714 = (((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_693.x))))))) + 0.5f) * ((_691 * 0.001f) + _153))), ((int)((((float)((int)((int)((float)((int)((int)(_693.y))))))) + 0.5f) * ((_691 * 0.02f) + _152))), 0)))).x) & 255;
  _717 = WaveReadLaneFirst(_materialIndex);
  _725 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_717 < (uint)170000), _717, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._radius);
  _728 = WaveReadLaneFirst(_materialIndex);
  _736 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_728 < (uint)170000), _728, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _739 = saturate(1.0f - _736) * _725;
  [branch]
  if (!(!(_739 >= 0.001f))) {
    _742 = ddx_coarse(_282);
    _743 = ddx_coarse(_283);
    _744 = ddx_coarse(_284);
    _745 = ddy_coarse(_282);
    _746 = ddy_coarse(_283);
    _747 = ddy_coarse(_284);
    _748 = ddx_coarse(_153);
    _749 = ddx_coarse(_152);
    _750 = ddy_coarse(_153);
    _751 = ddy_coarse(_152);
    _754 = (_746 * _188) - (_747 * _187);
    _757 = (_747 * _186) - (_745 * _188);
    _760 = (_745 * _187) - (_746 * _186);
    _763 = (_744 * _187) - (_743 * _188);
    _766 = (_742 * _188) - (_744 * _186);
    _769 = (_743 * _186) - (_742 * _187);
    _772 = (_750 * _763) + (_754 * _748);
    _775 = (_750 * _766) + (_757 * _748);
    _778 = (_750 * _769) + (_760 * _748);
    _781 = (_751 * _763) + (_754 * _749);
    _784 = (_751 * _766) + (_757 * _749);
    _787 = (_751 * _769) + (_749 * _760);
    _790 = max(dot(float3(_772, _775, _778), float3(_772, _775, _778)), dot(float3(_781, _784, _787), float3(_781, _784, _787)));
    _793 = rsqrt(select((!(_790 == 0.0f)), _790, 0.1f));  // [sem: rsqrt_val]
    _794 = _793 * _282;
    _797 = WaveReadLaneFirst(_materialIndex);
    _805 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_797 < (uint)170000), _797, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._squareSize);
    _806 = _805 * _214;
    _807 = _805 * _227;
    _808 = _805 * _240;
    _809 = floor(_806);
    _810 = floor(_807);
    _811 = floor(_808);
    _814 = -1;
    _815 = 0.0f;
    _816 = 0.0f;
    _817 = 0.0f;
    _818 = 10.0f;
    _819 = -1;
    _820 = -1;
    while(true) {
      _821 = (float)((int)(_814));
      _822 = (float)((int)(_819));
      _823 = (float)((int)(_820));
      _825 = sin(_821 + _809);
      _827 = sin(_822 + _810);
      _829 = sin(_823 + _811);
      _832 = _time.x * 0.2f;
      _839 = sin(frac(sin(dot(float3(_825, _827, _829), float3(12.989f, 78.233f, 37.719f))) * 143758.55f) * _832) + _821;
      _846 = sin(frac(sin(dot(float3(_825, _827, _829), float3(39.346f, 11.135f, 83.155f))) * 143758.55f) * _832) + _822;
      _853 = sin(frac(sin(dot(float3(_825, _827, _829), float3(73.156f, 52.235f, 9.151f))) * 143758.55f) * _832) + _823;
      _864 = max(abs((_809 - _806) + _839), max(abs((_810 - _807) + _846), abs((_811 - _808) + _853)));
      _865 = (_864 < _818);
      _867 = select(_865, _839, _817);
      _868 = select(_865, _846, _816);
      _869 = select(_865, _853, _815);
      _870 = (int)(_814) + (int)(1);
      if (!(_870 == 2)) {
        _873 = _870;
        _874 = _819;
        _875 = _820;
        while(true) {
          _814 = _873;
          _815 = _869;
          _816 = _868;
          _817 = _867;
          _818 = select(_865, _864, _818);
          _819 = _874;
          _820 = _875;
          __loop_jump_target = 813;
          break;
          break;
        }
        if (__loop_jump_target == 813) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _877 = (int)(_819) + (int)(1);
      if (!(_877 == 2)) {
        _873 = -1;
        _874 = _877;
        _875 = _820;
        while(true) {
          _814 = _873;
          _815 = _869;
          _816 = _868;
          _817 = _867;
          _818 = select(_865, _864, _818);
          _819 = _874;
          _820 = _875;
          __loop_jump_target = 813;
          break;
          break;
        }
        if (__loop_jump_target == 813) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _882 = ((int)(_820) + (int)(1));
      while(true) {
        if (!(_882 == 2)) {
          while(true) {
            _873 = -1;
            _874 = -1;
            _875 = _882;
            while(true) {
              _814 = _873;
              _815 = _869;
              _816 = _868;
              _817 = _867;
              _818 = select(_865, _864, _818);
              _819 = _874;
              _820 = _875;
              __loop_jump_target = 813;
              break;
              break;
            }
            if (__loop_jump_target != -1) {
              break;
            }
            break;
          }
        }
        _886 = (_867 + _809) / _805;
        _888 = (_868 + _810) / _805;
        _890 = (_869 + _811) / _805;
        _902 = (_viewProj[3].w) + mad((_viewProj[3].z), _890, mad((_viewProj[3].y), _888, ((_viewProj[3].x) * _886)));
        _913 = (((mad((_viewProj[0].z), _890, mad((_viewProj[0].y), _888, ((_viewProj[0].x) * _886))) + (_viewProj[0].w)) / _902) * 0.5f) + 0.5f;
        _924 = 0.5f - (((mad((_viewProj[1].z), _890, mad((_viewProj[1].y), _888, ((_viewProj[1].x) * _886))) + (_viewProj[1].w)) / _902) * 0.5f);
        _927 = _886 - _mainPosition.x;
        _929 = _888 - _mainPosition.y;
        _931 = _890 - _mainPosition.z;
        // [sem: expr_sat]
        _940 = saturate(1.0f - ((1.0f - (sqrt(dot(float3(_927, _929, _931), float3(_927, _929, _931))) * (1.0f / max(1e-05f, _739)))) * 1.0152284f));
        _942 = 1.0f - saturate(_940);
        _943 = _940 * 0.5f;
        _945 = (_153 - _913) / _942;
        _947 = (_152 - _924) / _942;
        _948 = sin(_943);
        _949 = cos(_943);
        _953 = mad((-0.0f - _948), _947, (_949 * _945)) + _913;
        _956 = mad(_949, _947, (_948 * _945)) + _924;
        _979 = (saturate(_156.x * 1.5f) * 0.5f) * saturate(frac(sin(dot(float2(((float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(_153))))), ((float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(_152)))))), float2(12.9898f, 78.233f))) * 43758.547f) + 0.5f);
        _985 = mad((_793 * _778), _284, mad((_793 * _775), _283, (_794 * _772))) * _979;
        _986 = _985 * 0.8333334f;
        _992 = mad((_793 * _787), _284, mad((_793 * _784), _283, (_794 * _781))) * _979;
        _993 = _992 * 0.8333334f;
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _998 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_986 + _153), (_993 + _152)));
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _1002 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_986 + _953), (_993 + _956)));
        _1008 = WaveReadLaneFirst(_materialIndex);
        _1016 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1008 < (uint)170000), _1008, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
        _1018 = (float)((bool)(_998.w < _1016));
        _1022 = (_1018 * ((_1002.x * 0.4f) - _647)) + _647;
        _1026 = (_1018 * ((_1002.y * 0.4f) - _648)) + _648;
        _1030 = (_1018 * ((_1002.z * 0.4f) - _649)) + _649;
        if (!(_998.w > 0.9f)) {
          _1033 = _985 * 0.6666667f;
          _1034 = _992 * 0.6666667f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1039 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1033 + _153), (_1034 + _152)));
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1043 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1033 + _953), (_1034 + _956)));
          _1049 = WaveReadLaneFirst(_materialIndex);
          _1057 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1049 < (uint)170000), _1049, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
          _1059 = (float)((bool)(_1039.w < _1057));
          _1063 = (_1059 * ((_1043.x * 0.4f) - _1022)) + _1022;
          _1067 = (_1059 * ((_1043.y * 0.4f) - _1026)) + _1026;
          _1071 = (_1059 * ((_1043.z * 0.4f) - _1030)) + _1030;
          if (!(_1039.w > 0.9f)) {
            _1074 = _985 * 0.5f;
            _1075 = _992 * 0.5f;
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _1080 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1074 + _153), (_1075 + _152)));
            // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
            _1084 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1074 + _953), (_1075 + _956)));
            _1090 = WaveReadLaneFirst(_materialIndex);
            _1098 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1090 < (uint)170000), _1090, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
            _1100 = (float)((bool)(_1080.w < _1098));
            _1104 = (_1100 * ((_1084.x * 0.4f) - _1063)) + _1063;
            _1108 = (_1100 * ((_1084.y * 0.4f) - _1067)) + _1067;
            _1112 = (_1100 * ((_1084.z * 0.4f) - _1071)) + _1071;
            if (!(_1080.w > 0.9f)) {
              _1115 = _985 * 0.33333334f;
              _1116 = _992 * 0.33333334f;
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1121 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1115 + _153), (_1116 + _152)));
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1125 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1115 + _953), (_1116 + _956)));
              _1131 = WaveReadLaneFirst(_materialIndex);
              _1139 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1131 < (uint)170000), _1131, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
              _1141 = (float)((bool)(_1121.w < _1139));
              _1145 = (_1141 * ((_1125.x * 0.4f) - _1104)) + _1104;
              _1149 = (_1141 * ((_1125.y * 0.4f) - _1108)) + _1108;
              _1153 = (_1141 * ((_1125.z * 0.4f) - _1112)) + _1112;
              if (!(_1121.w > 0.9f)) {
                _1156 = _985 * 0.16666667f;
                _1157 = _992 * 0.16666667f;
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _1162 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1156 + _153), (_1157 + _152)));
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _1166 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1156 + _953), (_1157 + _956)));
                _1172 = WaveReadLaneFirst(_materialIndex);
                _1180 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1172 < (uint)170000), _1172, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
                _1182 = (float)((bool)(_1162.w < _1180));
                _1196 = _1162.w;
                _1197 = ((_1182 * ((_1166.x * 0.4f) - _1145)) + _1145);
                _1198 = ((_1182 * ((_1166.y * 0.4f) - _1149)) + _1149);
                _1199 = ((_1182 * ((_1166.z * 0.4f) - _1153)) + _1153);
              } else {
                _1196 = _1121.w;
                _1197 = _1145;
                _1198 = _1149;
                _1199 = _1153;
              }
            } else {
              _1196 = _1080.w;
              _1197 = _1104;
              _1198 = _1108;
              _1199 = _1112;
            }
          } else {
            _1196 = _1039.w;
            _1197 = _1063;
            _1198 = _1067;
            _1199 = _1071;
          }
        } else {
          _1196 = _998.w;
          _1197 = _1022;
          _1198 = _1026;
          _1199 = _1030;
        }
        _1202 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_953, _956));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _1205 = WaveReadLaneFirst(_materialIndex);
        _1213 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1205 < (uint)170000), _1205, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
        _1215 = (float)((bool)(_1196 < _1213));
        if (!_2) {
          _882 = 2;
          continue;
        }
        _1230 = ((_1215 * (_1202.z - _1199)) + _1199);
        _1231 = ((_1215 * (_1202.y - _1198)) + _1198);
        _1232 = ((_1215 * (_1202.x - _1197)) + _1197);
        break;
      }
      break;
    }
  } else {
    _1230 = _649;
    _1231 = _648;
    _1232 = _647;
  }
  _1235 = WaveReadLaneFirst(_materialIndex);
  _1243 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1235 < (uint)170000), _1235, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _1246 = WaveReadLaneFirst(_materialIndex);
  _1254 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1246 < (uint)170000), _1246, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._tempCubeSpaceRatio);
  [branch]
  if ((_714 == _renderPassMemoryBackground) || ((!(_714 == _renderPassMemoryBackground)) && (_714 == _renderPassDetectRemoteCatch)) || ((((!(_714 == _renderPassMemoryBackground)) && (!(_714 == _renderPassDetectRemoteCatch))) && (!(_714 == _renderPassDetectRemoteCatch))) && (_714 == _renderPassDetectPickedRemoteCatch))) {
    _1273 = WaveReadLaneFirst(_materialIndex);
    _1281 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1273 < (uint)170000), _1273, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryOpacity);
    _1298 = _1281;
  } else {
    if (_714 == _renderPassEnemyBoss) {
      _1288 = WaveReadLaneFirst(_materialIndex);
      _1296 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1288 < (uint)170000), _1288, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._enemyBossOpacity);
      _1298 = _1296;
    } else {
      _1298 = 1.0f;
    }
  }
  _1301 = WaveReadLaneFirst(_materialIndex);
  _1309 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1301 < (uint)170000), _1301, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _1313 = saturate((_1309 * 100.0f) + -99.0f) * _1298;
  if (!(!(_1313 >= 0.001f))) {
    [branch]
    if ((_714 == _renderPassSelfPlayer) || (_714 == _renderPassTest) || (_714 == _renderPassDetectRemoteCatch) || (_714 == _renderPassDetectPickedRemoteCatch)) {
      _1334 = WaveReadLaneFirst(_materialIndex);
      _1342 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1334 < (uint)170000), _1334, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
      _1355 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1342 < (uint)65000), _1342, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_651 - (_time.x * 0.22f)), (_652 - (_time.x * 0.18f))));
      _1357 = _1355.x + -0.3f;
      _1360 = ((_1355.x + -0.4f) * 10.471975f) + -1.5707964f;
      _1361 = _1357 * 0.006f;
      _1363 = -1.0f;
      _1364 = 0.0f;
      _1365 = 0.0f;
      _1366 = 0.0f;
      _1367 = 0.0f;
      _1368 = _1361;
      _1369 = _1361;
      while(true) {
        _1373 = _153 - ((_1369 * _1363) * sin(_1360));
        _1377 = _152 - ((_1368 * _1363) * cos(_1360));
        _1378 = _1373 + -0.5f;
        _1379 = _1377 + -0.5f;
        _1388 = ((_1357 * 0.06f) * rsqrt(dot(float2(_1378, _1379), float2(_1378, _1379)))) * sqrt((_1379 * _1379) + (_1378 * _1378));
        _1389 = _1388 * _1378;
        _1390 = _1388 * _1379;
        _1393 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_1373, _1377));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _1401 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1373 - _1389), (_1377 - _1390))))).x) * 0.2f) + _1367;
        _1403 = (_1393.y * 0.2f) + _1366;
        _1409 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1389 + _1373), (_1390 + _1377))))).z) * 0.2f) + _1365;
        _1411 = (_1393.w * 0.2f) + _1364;
        _1412 = _1363 + 0.2f;
        if (!(!(_1412 <= 1.0f))) {
          _1424 = _1369 * 1.01f;
          _1425 = _1368 * 1.01f;
          _1426 = _1401 * 0.9f;
          _1427 = _1403 * 0.9f;
          _1428 = _1409 * 0.9f;
          _1429 = _1411 * 0.9f;
          _1363 = _1412;
          _1364 = _1429;
          _1365 = _1428;
          _1366 = _1427;
          _1367 = _1426;
          _1368 = _1425;
          _1369 = _1424;
          continue;
        }
        if (!(_714 == _renderPassSelfPlayer)) {
          _1431 = ((int)(uint)((int)(_714 == _renderPassTest)));
        } else {
          _1431 = 1;
        }
        _1433 = saturate(_1411 * 1.08f);  // [sem: expr_sat]
        _1436 = max(0.001f, _exposure0.x);
        _1438 = (_1431 != 0);
        _1452 = (((_1409 * 0.54f) / _1436) * _1433);
        _1453 = ((((_1403 * 0.54f) * select(_1438, 0.7f, 0.8f)) / _1436) * _1433);
        _1454 = ((((_1401 * 0.54f) * select(_1438, 0.55f, 0.5f)) / _1436) * _1433);
        break;
      }
    } else {
      _1452 = 0.0f;
      _1453 = 0.0f;
      _1454 = 0.0f;
    }
  } else {
    _1452 = 0.0f;
    _1453 = 0.0f;
    _1454 = 0.0f;
  }
  if (!(_714 == _renderPassSelfPlayer)) {
    if (!(_714 == _renderPassTest)) {
      _1468 = saturate(saturate(_1254 * 2.0f) * _1243);  // [sem: expr_sat]
    } else {
      _1468 = _1313;  // [sem: expr_sat]
    }
  } else {
    _1468 = _1313;  // [sem: expr_sat]
  }
  _1471 = (_1468 * (_1230 - _287.z)) + _287.z;
  _1474 = (_1468 * (_1231 - _287.y)) + _287.y;
  _1477 = (_1468 * (_1232 - _287.x)) + _287.x;
  if (_714 == _renderPassMemoryBackground) {
    _1492 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _153)), ((int)(_customRenderPassSizeInvSize.y * _152)), 0)))).x));
    _1504 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _1492, mad((_invViewProj[3].y), _192, ((_invViewProj[3].x) * _190)));
    _1513 = (mad((_invViewProj[0].z), _1492, mad((_invViewProj[0].y), _192, ((_invViewProj[0].x) * _190))) + (_invViewProj[0].w)) / _1504;
    _1522 = (mad((_invViewProj[2].z), _1492, mad((_invViewProj[2].y), _192, ((_invViewProj[2].x) * _190))) + (_invViewProj[2].w)) / _1504;
    _1525 = WaveReadLaneFirst(_materialIndex);
    _1533 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1525 < (uint)170000), _1525, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
    _1548 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1533 < (uint)65000), _1533, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.01f) + (_1513 * 0.7f)), ((_1522 * 0.7f) - (_time.x * 0.04f))));
    _1551 = _1548.w + -0.5f;
    _1552 = _1548.z + -0.5f;
    _1555 = _time.x * 0.02f;
    _1558 = WaveReadLaneFirst(_materialIndex);
    _1566 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1558 < (uint)170000), _1558, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._auraTex);
    _1587 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1566 < (uint)65000), _1566, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((_1513 * 1.1f) - ((_674.y + -0.5f) * 0.1f)) + (_1551 * 0.3f)) - _1555), ((((_1522 * 1.1f) - ((_674.w + -0.5f) * 0.1f)) + (_1552 * 0.3f)) - _1555)));
    _1591 = _1551 * 2.0f;
    _1597 = (((0.5f - _674.w) + _1513) + _1591) - _mainPosition.x;
    _1616 = (((0.5f - _674.x) + (_1552 * 2.0f)) - _mainPosition.y) + (((_invViewProj[1].w) + mad((_invViewProj[1].z), _1492, mad((_invViewProj[1].y), _192, ((_invViewProj[1].x) * _190)))) / _1504);
    _1621 = (((0.5f - _674.z) + _1522) + _1591) - _mainPosition.z;
    _1630 = 1.0f - saturate(sqrt(((_1621 * _1621) + (_1597 * _1597)) + (_1616 * _1616)) * 0.125f);
    _1639 = ((sin((_time.x * 5.0f) + (_1630 * 60.0f)) + 1.0f) * 0.25f) + 0.5f;
    _1641 = (_1639 * _1639) * _1630;
    _1643 = (_1641 * _1641) * _674.x;
    _1646 = max(0.001f, _exposure0.x);
    _1675 = ((((((((_1587.z * _1587.z) * _1643) + (_1630 * 0.05f)) * _1587.z) / _1646) - _1471) * _1313) + _1471);
    _1676 = ((((((((_1587.y * _1587.y) * _1643) + (_1630 * 0.035f)) * _1587.y) / _1646) - _1474) * _1313) + _1474);
    _1677 = ((((((((_1587.x * _1587.x) * _1643) + (_1630 * 0.010000001f)) * _1587.x) / _1646) - _1477) * _1313) + _1477);
  } else {
    _1675 = _1471;
    _1676 = _1474;
    _1677 = _1477;
  }
  _1680 = WaveReadLaneFirst(_materialIndex);
  _1688 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1680 < (uint)170000), _1680, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadBackgroundOpacity);
  if (!(!(_1688 >= 0.001f))) {
    _1693 = _214 - _mainPosition.x;
    _1695 = _227 - _mainPosition.y;
    _1697 = _240 - _mainPosition.z;
    _1705 = saturate(sqrt(((_1695 * _1695) + (_1693 * _1693)) + (_1697 * _1697)) * 0.033333335f);  // [sem: expr_sat]
    _1706 = 1.0f - _1705;
    _1719 = (((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _153) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _152) + -0.5f))), 0)))).x) & 127;
    if ((_643 != 0) && (_1706 > 0.0f)) {
      _1726 = WaveReadLaneFirst(_materialIndex);
      _1734 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1726 < (uint)170000), _1726, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._glitchTex);
      _1743 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1734 < (uint)65000), _1734, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_214 * 0.1f), (_240 * 0.1f)));
      _1747 = (_1743.x * 2.0f) + -0.99607843f;
      _1749 = (_1743.y * 2.0f) + -0.99607843f;
      _1754 = ((_214 - _viewPos.x) + _1747) * 0.06f;
      _1758 = ((_227 - _viewPos.y) + _1749) * 0.06f;
      _1766 = ((_240 - _viewPos.z) + sqrt(saturate(1.0f - dot(float2(_1747, _1749), float2(_1747, _1749))))) * 0.06f;
      _1772 = sqrt(((_1758 * _1758) + (_1754 * _1754)) + (_1766 * _1766));
      _1775 = _time.x * 0.3f;
      _1781 = exp2(log2(frac(_1772 - _1775)) * 15.0f) * _1706;
      _1794 = (_1706 * 0.015f) * exp2(log2(saturate(1.0f - abs((frac((_1772 + 0.5f) - _1775) * 2.0f) + -1.0f))) * 30.0f);
      _1800 = _1781;
      _1801 = (_1781 * 0.5f);
      _1802 = (_1781 * 0.2f);
      _1803 = (_1794 * _1749);
      _1804 = (_1794 * _1747);
    } else {
      _1800 = 0.0f;
      _1801 = 0.0f;
      _1802 = 0.0f;
      _1803 = 0.0f;
      _1804 = 0.0f;
    }
    if (((uint)((int)(_1719) + (int)(-52)) < (uint)16) || (((!((uint)((int)(_1719) + (int)(-52)) < (uint)16)) && (((_nearFarProj.x / _193) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _153)), ((int)(_customRenderPassSizeInvSize.y * _152)), 0)))).x)))) > 0.2f)) && (_714 == _renderPassMemory))) {
      _1836 = (uint)((_bufferSizeAndInvSize.x * ((_691 * 0.0005f) + _153)) + -0.5f);
      _1842 = (uint)((_bufferSizeAndInvSize.y * ((_691 * 0.01f) + _152)) + -0.5f);
      _1844 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_1836, _1842, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _1847 = __3__36__0__0__g_gbufferNormal.Load(int3(_1836, _1842, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _1854 = (saturate(_1847.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _1858 = (saturate(_1847.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _1862 = (saturate(_1847.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _1864 = rsqrt(dot(float3(_1854, _1858, _1862), float3(_1854, _1858, _1862)));  // [sem: invLength]
      _1865 = _1864 * _1854;
      _1866 = _1864 * _1858;
      _1867 = _1862 * _1864;
      _1872 = (((float)((uint)((uint)(((uint)((uint)(_1844.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _1876 = (((float)((uint)((uint)(_1844.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _1878 = (_1872 + _1876) * 0.5f;
      _1880 = (_1872 - _1876) * 0.5f;
      _1884 = (1.0f - abs(_1878)) - abs(_1880);
      _1886 = rsqrt(dot(float3(_1878, _1880, _1884), float3(_1878, _1880, _1884)));  // [sem: invLength]
      _1887 = _1886 * _1878;
      _1888 = _1886 * _1880;
      _1889 = _1886 * _1884;
      _1891 = select((_1867 >= 0.0f), 1.0f, -1.0f);
      _1894 = -0.0f - (1.0f / (_1891 + _1867));
      _1895 = _1866 * _1894;
      _1896 = _1895 * _1865;
      _1897 = _1891 * _1865;
      _1903 = mad(_1889, _1865, mad(_1888, _1896, ((((_1897 * _1865) * _1894) + 1.0f) * _1887)));
      _1909 = mad(_1889, _1866, mad(_1888, ((_1895 * _1866) + _1891), ((_1887 * _1891) * _1896)));
      _1914 = mad(_1889, _1867, mad(_1888, (-0.0f - _1866), (-0.0f - (_1897 * _1887))));
      _1916 = rsqrt(dot(float3(_1903, _1909, _1914), float3(_1903, _1909, _1914)));  // [sem: invLength]
      // [sem: expr_sat]
      _1928 = saturate(dot(float3((_1916 * _1903), (_1916 * _1909), (_1916 * _1914)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _1929 = 1.0f - _1928;
      _1932 = max(0.001f, _exposure0.x);
      if ((_714 == _renderPassSelfPlayer) || ((!(_714 == _renderPassSelfPlayer)) && (_714 == _renderPassTest))) {
        _1949 = ((_1929 * 0.05f) + 0.1f);
      } else {
        _1949 = select((_714 == _renderPassMemory), 1.1f, 0.1f);
      }
      _1957 = ((pow(_1705, 1.5f)) * 0.8f) * (pow(_1928, 5.0f));
      _1961 = ((_1929 * _1929) * _1706) * _1949;
      _2206 = (((_1957 * _1800) + _1675) + ((1.0f / _1932) * _1961));
      _2207 = (((_1957 * _1801) + _1676) + ((0.7f / _1932) * _1961));
      _2208 = ((((0.4f / _1932) * _1961) + _1677) + (_1957 * _1802));
    } else {
      _1979 = _214 - _mainPosition.x;
      _1981 = _227 - _mainPosition.y;
      _1983 = _240 - _mainPosition.z;
      _1986 = _214 - _aimHighlightPosition.x;
      _1988 = _227 - _aimHighlightPosition.y;
      _1990 = _240 - _aimHighlightPosition.z;
      _2001 = 1.0f - saturate(sqrt(((_1988 * _1988) + (_1986 * _1986)) + (_1990 * _1990)) / (_aimHighlightPosition.w * 5.0f));
      // [sem: _3__36__0__0__g_specularAO_sampleLod]
      _2006 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_1804 + _153), (_1803 + _152)), 0.0f);
      _2022 = saturate(((1.0f - saturate(sqrt(((_1981 * _1981) + (_1979 * _1979)) + (_1983 * _1983)) * 0.5f)) * 0.1f) + ((_2001 * _2001) * _2001)) * _2006.w;
      _2023 = _2022 * 5.0f;
      _2025 = (_2006.w * _2006.w) * _1706;
      _2028 = ((_2025 * _2025) * 49.96f) + 0.04f;
      _2029 = _2022 * 1.75f;
      _2030 = _2022 * 3.25f;
      _2031 = _2022 * 120.0f;
      _2039 = ((1.0f - saturate(_2031 + -3.0f)) * saturate(_2031 + -2.0f)) * (0.35f - _2029);
      _2047 = ((0.65f - _2030) * saturate(_2031 + -2.5f)) * (1.0f - saturate(_2031 + -4.0f));
      _2055 = (saturate(_2031 + -3.5f) * (1.0f - _2023)) * (1.0f - saturate(_2031 + -5.0f));
      _2057 = saturate(_2031 + -8.0f);  // [sem: expr_sat]
      _2058 = 1.0f - _2025;
      _2068 = ((_2028 * _1802) + _1677) + (((((_2039 + _2029) - (_2057 * _2039)) * _2058) + (_2025 * 0.35f)) * _1688);
      _2078 = ((_2028 * _1801) + _1676) + (((((_2047 + _2030) - (_2057 * _2047)) * _2058) + (_2025 * 0.65f)) * _1688);
      _2087 = ((_2028 * _1800) + _1675) + (((((_2055 + _2023) - (_2055 * _2057)) * _2058) + _2025) * _1688);
      if (_1719 == 7) {
        _2093 = ((_isPhotosensitiveMode_isAllolwBlood & 1) != 0);
        _2206 = select(_2093, 0.0f, 0.015f);
        _2207 = 0.0f;
        _2208 = select(_2093, 0.015f, 0.007f);
      } else {
        _2097 = (int)(_1719) + (int)(-105);
        if (((uint)_2097 < (uint)2) || (((_1719 == 107) || (_1719 == 26)) || ((uint)((int)(_1719) + (int)(-27)) < (uint)2))) {
          _2109 = _mainPosition.x - _viewPos.x;
          _2111 = _mainPosition.y - _viewPos.y;
          _2113 = _mainPosition.z - _viewPos.z;
          _2125 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _2113, mad((_viewProjRelative[3].y), _2111, ((_viewProjRelative[3].x) * _2109)));
          _2134 = (mad((_viewProjRelative[0].z), _2113, mad((_viewProjRelative[0].y), _2111, ((_viewProjRelative[0].x) * _2109))) + (_viewProjRelative[0].w)) / _2125;
          _2145 = 0.5f - (((mad((_viewProjRelative[1].z), _2113, mad((_viewProjRelative[1].y), _2111, ((_viewProjRelative[1].x) * _2109))) + (_viewProjRelative[1].w)) / _2125) * 0.5f);
          _2149 = ((_view[0].x) * 5.0f) + _2109;
          _2153 = ((_view[0].y) * 5.0f) + _2111;
          _2157 = ((_view[0].z) * 5.0f) + _2113;
          _2161 = mad((_viewProjRelative[3].z), _2157, mad((_viewProjRelative[3].y), _2153, (_2149 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
          _2169 = (0.5f - (((mad((_viewProjRelative[1].z), _2157, mad((_viewProjRelative[1].y), _2153, (_2149 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _2161) * 0.5f)) - _2145;
          _2177 = (_35 * 0.5f) * (((mad((_viewProjRelative[0].z), _2157, mad((_viewProjRelative[0].y), _2153, (_2149 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _2161) - _2134);
          _2178 = _152 - _2145;
          _2182 = ((_153 + -0.5f) - (_2134 * 0.5f)) * _35;
          _2194 = 1.0f - saturate(sqrt((_2178 * _2178) + (_2182 * _2182)) / max(0.001f, sqrt((_2177 * _2177) + (_2169 * _2169))));
          _2199 = (_2194 * _2194) * (select(((uint)_2097 < (uint)3), 0.1f, 0.015f) * _1688);
          _2206 = (_2199 + _2087);
          _2207 = ((_2199 * 0.65f) + _2078);
          _2208 = ((_2199 * 0.35f) + _2068);
        } else {
          _2206 = _2087;
          _2207 = _2078;
          _2208 = _2068;
        }
      }
    }
  } else {
    _2206 = _1675;
    _2207 = _1676;
    _2208 = _1677;
  }
  if (_714 == _renderPassEnemyBoss) {
    _2215 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_153, _152));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _2220 = saturate(_2215.z * 2.0f);  // [sem: expr_sat]
    _2228 = saturate((_2215.x * 3.0f) * ((1.0f / max(0.001f, _exposure0.x)) - _2215.z));  // [sem: expr_sat]
    _2229 = _2228 * 0.6f;
    _2230 = _2228 * 0.65f;
    _2233 = WaveReadLaneFirst(_materialIndex);
    _2241 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_2233 < (uint)170000), _2233, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._enemyBossOpacity);
    _2258 = (_2241 * ((((_2215.y * 0.5f) - _2228) * _2220) + _2228));
    _2259 = (_2241 * ((((_2215.y * 0.325f) - _2230) * _2220) + _2230));
    _2260 = (_2241 * ((((_2215.y * 0.225f) - _2229) * _2220) + _2229));
  } else {
    _2258 = _2206;
    _2259 = _2207;
    _2260 = _2208;
  }
  _2261 = _153 + -0.5f;
  _2262 = _152 + -0.5f;
  _2269 = saturate((sqrt((_2261 * _2261) + (_2262 * _2262)) + -0.01f) * 1.010101f);  // [sem: expr_sat]
  _2272 = WaveReadLaneFirst(_materialIndex);
  _2280 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_2272 < (uint)170000), _2272, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._vignetteIntensity);
  _2283 = WaveReadLaneFirst(_materialIndex);
  _2291 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_2283 < (uint)170000), _2283, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _2298 = 1.0f - ((((_2269 * _2269) * (3.0f - (_2269 * 2.0f))) * _2280) * _2291);
  _2301 = max(0.0f, (_2298 * (_2260 + _1454)));
  _2304 = max(0.0f, (_2298 * (_2259 + _1453)));
  _2307 = max(0.0f, (_2298 * (_2258 + _1452)));
  _2308 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _2321 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _2308, 0)))).x) & 127)))) + 0.5f);
  } else {
    _2321 = 1.0f;
  }
  _2324 = (_localToneMappingParams.w > 0.0f);
  if (_2324) {
    _2330 = _exposure0.x * _userImageAdjust.z;
    _2349 = exp2(_powerParams.x * log2(max(0.0f, (((_2330 * max(0.0f, (((_2301 * 1.70505f) - (_2304 * 0.62179f)) - (_2307 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _2365 = exp2(log2(max(0.0f, (((_slopeParams.y * _2330) * max(0.0f, (((_2304 * 1.1408f) - (_2301 * 0.13026f)) - (_2307 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _2381 = exp2(log2(max(0.0f, (((_slopeParams.z * _2330) * max(0.0f, (((_2301 * -0.024f) - (_2304 * 0.12897f)) + (_2307 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _2382 = dot(float3(_2349, _2365, _2381), float3(0.212671f, 0.71516f, 0.072169f));
    _2386 = ((_2349 - _2382) * _powerParams.w) + _2382;
    _2389 = ((_2365 - _2382) * _powerParams.w) + _2382;
    _2392 = ((_2381 - _2382) * _powerParams.w) + _2382;
    _2399 = min(max(log2(mad(_2392, 0.079223745f, mad(_2389, 0.0784336f, (_2386 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _2406 = min(max(log2(mad(_2392, 0.07916613f, mad(_2389, 0.87846863f, (_2386 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _2413 = min(max(log2(mad(_2392, 0.879143f, mad(_2389, 0.0784336f, (_2386 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _2414 = _2399 * 0.060606062f;
    _2415 = _2406 * 0.060606062f;
    _2416 = _2413 * 0.060606062f;
    _2417 = _2414 * _2414;
    _2418 = _2415 * _2415;
    _2419 = _2416 * _2416;
    _2435 = min(0.0f, (-0.0f - (((_2399 * 0.0072181816f) + ((_2417 * 0.4298f) + (((_2417 * _2417) * ((31.96f - (_2399 * 2.4327273f)) + (_2417 * 15.5f))) - ((_2399 * 0.41624245f) * _2417)))) + -0.00232f)));
    _2451 = min(0.0f, (-0.0f - (((_2406 * 0.0072181816f) + ((_2418 * 0.4298f) + (((_2418 * _2418) * ((31.96f - (_2406 * 2.4327273f)) + (_2418 * 15.5f))) - ((_2406 * 0.41624245f) * _2418)))) + -0.00232f)));
    _2467 = min(0.0f, (-0.0f - (((_2413 * 0.0072181816f) + ((_2419 * 0.4298f) + (((_2419 * _2419) * ((31.96f - (_2413 * 2.4327273f)) + (_2419 * 15.5f))) - ((_2413 * 0.41624245f) * _2419)))) + -0.00232f)));
    _2468 = -0.0f - _2435;
    _2469 = -0.0f - _2451;
    _2470 = -0.0f - _2467;
    _2471 = dot(float3(_2468, _2469, _2470), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _2488 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _2489 = -0.79999995f / _2488;
      _2490 = -1.2f / _2488;
      _2491 = 0.20000005f / _2488;
      _2494 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _2497 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _2501 = (_2489 + 1.4f) + (_2497 * (-0.39999998f - _2489));
      _2505 = (_2490 + 1.6f) + (_2497 * (-0.6f - _2490));
      _2509 = (_2491 + 0.9f) + (_2497 * (0.5f - _2491));
      _2526 = (lerp(_2509, 1.4f, _2494));  // [sem: blended]
      _2527 = (lerp(_2501, 1.0f, _2494));  // [sem: blended]
      _2528 = (lerp(_2505, 1.2f, _2494));  // [sem: blended]
    } else {
      _2526 = 1.4f;  // [sem: blended]
      _2527 = 1.0f;  // [sem: blended]
      _2528 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _2529 = 1.0f - _2528;
    _2541 = ((exp2(log2(((saturate((_2435 * _2435) * _2468) * _2529) + _2528) * _2468) * _2527) - _2471) * _2526) + _2471;
    _2553 = ((exp2(log2(((saturate((_2451 * _2451) * _2469) * _2529) + _2528) * _2469) * _2527) - _2471) * _2526) + _2471;
    _2565 = ((exp2(log2(((saturate((_2467 * _2467) * _2470) * _2529) + _2528) * _2470) * _2527) - _2471) * _2526) + _2471;
    _2572 = saturate(exp2(log2(mad(_2565, -0.09902974f, mad(_2553, -0.09802088f, (_2541 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _2579 = saturate(exp2(log2(mad(_2565, -0.098961174f, mad(_2553, 1.1519032f, (_2541 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _2586 = saturate(exp2(log2(mad(_2565, 1.1510737f, mad(_2553, -0.09804345f, (_2541 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _2592 = 1.0f - abs(_etcParams.w);
      _2593 = saturate(_etcParams.w);  // [sem: expr_sat]
      _2595 = (_2592 * _2572) + _2593;
      _2597 = (_2592 * _2579) + _2593;
      _2599 = (_2592 * _2586) + _2593;
      if (_colorGradingParams.w > 0.0f) {
        _2604 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _2621 = (((max(0.0f, (1.0f - _2599)) - _2599) * _2604) + _2599);
        _2622 = (((max(0.0f, (1.0f - _2597)) - _2597) * _2604) + _2597);
        _2623 = (((max(0.0f, (1.0f - _2595)) - _2595) * _2604) + _2595);
      } else {
        _2621 = _2599;
        _2622 = _2597;
        _2623 = _2595;
      }
      _2625 = _userImageAdjust.y + 1.0f;
      _2627 = _userImageAdjust.x + 0.5f;
      _2630 = ((_2623 + -0.5f) * _2625) + _2627;
      _2633 = ((_2622 + -0.5f) * _2625) + _2627;
      _2636 = ((_2621 + -0.5f) * _2625) + _2627;
      _2642 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _2677 = exp2(log2(saturate(mad(_colorBlind2.z, _2636, mad(_colorBlind2.y, _2633, (_colorBlind2.x * _2630))))) * _2642);
      _2678 = exp2(log2(saturate(mad(_colorBlind1.z, _2636, mad(_colorBlind1.y, _2633, (_colorBlind1.x * _2630))))) * _2642);
      _2679 = exp2(log2(saturate(mad(_colorBlind0.z, _2636, mad(_colorBlind0.y, _2633, (_colorBlind0.x * _2630))))) * _2642);
    } else {
      _2677 = _2586;
      _2678 = _2579;
      _2679 = _2572;
    }
  } else {
    _2677 = _2307;
    _2678 = _2304;
    _2679 = _2301;
  }
  if (_etcParams.y > 1.0f) {
    _2684 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _2687 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _2693 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_2684, _2687), float2(_2684, _2687))));  // [sem: expr_sat]
    _2698 = (_2693 * _2677);
    _2699 = (_2693 * _2678);
    _2700 = (_2693 * _2679);
  } else {
    _2698 = _2677;
    _2699 = _2678;
    _2700 = _2679;
  }
  if (_2324 && (_etcParams.z > 0.0f)) {
    _2730 = select((_2698 <= 0.0031308f), (_2698 * 12.92f), (((pow(_2698, 0.41666666f)) * 1.055f) + -0.055f));
    _2731 = select((_2699 <= 0.0031308f), (_2699 * 12.92f), (((pow(_2699, 0.41666666f)) * 1.055f) + -0.055f));
    _2732 = select((_2700 <= 0.0031308f), (_2700 * 12.92f), (((pow(_2700, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _2730 = _2698;
    _2731 = _2699;
    _2732 = _2700;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2735 = (float)((uint)((uint)(_2308)));
    if (!(_2735 < _viewDir.w)) {
      if (!(!(_2735 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _2746 = 0.0f;
        _2747 = 0.0f;
        _2748 = 0.0f;
      } else {
        _2746 = _2732;
        _2747 = _2731;
        _2748 = _2730;
      }
    } else {
      _2746 = 0.0f;
      _2747 = 0.0f;
      _2748 = 0.0f;
    }
  } else {
    _2746 = _2732;
    _2747 = _2731;
    _2748 = _2730;
  }
  SV_Target.x = _2746;
  SV_Target.y = _2747;
  SV_Target.z = _2748;
  SV_Target.w = _2321;
  return SV_Target;
}
