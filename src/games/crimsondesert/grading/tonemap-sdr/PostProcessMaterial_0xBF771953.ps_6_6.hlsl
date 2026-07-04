struct PostProcessWorldLoadingStruct {
  float _radius;
  float _squareSize;
  float _maskThreshold;
  float _ringRatio;
  float _cubeSpaceGradientRatio;
  float _cubeSpaceEffectRatio;
  float _depthOuterMaskRadius;
  uint _invertDepthMask;
  float _depthIntensity;
  float _depthContrast;
  float _voronoiDotDensity;
  float _voronoiMovementSpeed;
  float _voronoiOffset;
  float3 _voronoiScrollSpeed;
  float _voronoiDotThreshold;
  float _voronoiDotRatio;
  float _rippleIntensity;
  float _rippleWidth;
  float _rippleCount;
  float _rippleContrast;
  float _rippleSpeed;
  float3 _ripplePosOffset;
  uint _noiseTex;
  float _bigRippleIntensity;
  float _bigRippleWidth;
  float _bigRipplePhaseOffset;
  float _bigRippleSpeed;
  float _bigRippleDistortionIntensity;
  float _bigRippleContrast;
  float _starburstIntensity;
  float _vignetteIntensity;
  uint _excludePlayer;
  float _ppWorldLoadingRatio;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t69, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t32, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t40, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t78, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t79, space36);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b15, space35) {
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
};

#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"

#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ExposureConstantBuffer : register(b30, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
#endif

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

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b46, space35) {
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
};

struct BindlessParameters_PostProcessWorldLoading {
  PostProcessWorldLoadingStruct BindlessParameters_PostProcessWorldLoading;
};

typedef BindlessParameters_PostProcessWorldLoading BindlessParameters_PostProcessWorldLoading_t;
ConstantBuffer<BindlessParameters_PostProcessWorldLoading_t> BindlessParameters_PostProcessWorldLoading[] : register(b0, space100);

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
  float _30;
  uint2 _32;
  float _65;
  float _66;
  float _67;
  float _76;
  float _85;
  float4 _95;
  float _108;
  float _109;
  float _110;
  float _112;
  float _113;
  float _114;
  float _115;
  float _117;
  float _118;
  float _119;
  float _120;
  float _156;
  float _157;
  float _158;
  float _159;
  float _195;
  float _196;
  float _197;
  float _198;
  float _200;
  float _201;
  float _202;
  float _203;
  float4 _206;
  float _216;
  float _217;
  float _218;
  float _243;
  float _244;
  float _245;
  bool _248;
  float _253;
  float _254;
  float _255;
  float _266;
  float _267;
  float _268;
  int _276;
  float _284;
  float _285;
  float _295;
  float _296;
  float _304;
  float _306;
  int _307;
  float _381;
  float _583;
  float _584;
  float _585;
  float _800;
  float _801;
  float _926;
  float _927;
  float _928;
  float _1051;
  float _1117;
  float _1118;
  float _1119;
  float _1120;
  int _1121;
  float _1126;
  float _1127;
  float _1128;
  float _1129;
  int _1130;
  float _1135;
  float _1136;
  float _1137;
  float _1138;
  int _1139;
  float _1331;
  float _1332;
  float _1333;
  float _1334;
  float _1335;
  float _1336;
  float _1442;
  float _1443;
  float _1444;
  float _1445;
  int _1446;
  float _1451;
  float _1452;
  float _1453;
  float _1454;
  int _1455;
  float _1460;
  float _1461;
  float _1462;
  float _1463;
  int _1464;
  float _1609;
  float _1610;
  float _1611;
  int _1612;
  float _1755;
  float _1756;
  float _1757;
  float _1794;
  float _1795;
  float _1796;
  float _2366;
  float _2367;
  float _2368;
  float _2415;
  float _2620;
  float _2621;
  float _2622;
  float _2715;
  float _2716;
  float _2717;
  float _2771;
  float _2772;
  float _2773;
  float _2789;
  float _2790;
  float _2791;
  float _2821;
  float _2822;
  float _2823;
  float _2837;
  float _2838;
  float _2839;
  float _314;
  float _318;
  float _322;
  float _323;
  float _327;
  float _331;
  float _332;
  float _336;
  float _340;
  float _343;
  float _344;
  float _345;
  float _346;
  float _350;
  float _358;
  float _359;
  float _360;
  float _361;
  float _362;
  float _363;
  float _373;
  float _377;
  int _378;
  float _385;
  float _386;
  float _387;
  float _388;
  float _392;
  float _396;
  float _397;
  float _401;
  float _405;
  float _406;
  float _410;
  float _414;
  float _415;
  float _417;
  float _418;
  float _419;
  float _421;
  float _426;
  float _427;
  float _428;
  float _429;
  float _430;
  float _431;
  float _433;
  float _441;
  float _443;
  float _447;
  float _451;
  float _458;
  float _459;
  float _460;
  float _461;
  float _471;
  float _475;
  float _479;
  float _483;
  float _489;
  float _490;
  float _491;
  float _492;
  float _493;
  float _494;
  float _505;
  float _509;
  float _513;
  float _515;
  float _521;
  float _522;
  float _523;
  float _524;
  float _525;
  float _526;
  float _537;
  float _539;
  float _541;
  float _543;
  float _551;
  float _552;
  float _553;
  float _555;
  float _559;
  float _562;
  float _566;
  float _578;
  float _590;
  float _591;
  float _592;
  float _593;
  int _603;
  float _611;
  int _621;
  float _629;
  int _632;
  float _640;
  float _645;
  float _646;
  float _647;
  int _655;
  int _663;
  float _666;
  int _669;
  float _677;
  int _678;
  float _686;
  int _692;
  float _700;
  float _708;
  float _709;
  float _711;
  bool _714;
  bool _715;
  bool _716;
  bool _717;
  float _727;
  float _730;
  int _735;
  int _743;
  int _758;
  int _766;
  int _782;
  int _790;
  int _802;
  float _810;
  int _815;
  float _823;
  int _825;
  float _833;
  int _836;
  float _844;
  int _852;
  float _862;
  float _863;
  float _864;
  float _865;
  float _866;
  float _867;
  int _877;
  float _885;
  int _888;
  float _896;
  int _900;
  float _908;
  int _913;
  float _921;
  float _922;
  int _929;
  float _937;
  int _945;
  float _955;
  float _956;
  float _957;
  float _958;
  float _959;
  float _960;
  int _991;
  float _999;
  int _1007;
  float _1015;
  int _1030;
  float _1038;
  int _1040;
  float _1048;
  int _1052;
  float _1062;
  float _1063;
  float _1064;
  int _1065;
  float _1073;
  int _1074;
  float _1082;
  float _1083;
  float _1090;
  float _1104;
  float _1105;
  float _1106;
  float _1113;
  float _1114;
  float _1115;
  int _1123;
  int _1132;
  float _1140;
  float _1141;
  float _1142;
  uint _1149;
  uint _1152;
  uint _1157;
  uint _1160;
  uint _1165;
  uint _1168;
  float _1179;
  float _1180;
  float _1181;
  float _1182;
  float _1183;
  float _1184;
  float _1185;
  float _1191;
  bool _1192;
  float _1193;
  float _1194;
  float _1195;
  float _1196;
  int _1197;
  float _1203;
  float _1204;
  float _1205;
  float _1233;
  float4 _1242;
  float _1252;
  float _1253;
  float _1254;
  int _1286;
  float _1294;
  int _1296;
  float _1304;
  float _1309;
  float _1313;
  int _1320;
  float _1328;
  float _1346;
  float _1349;
  float _1352;
  float _1355;
  int _1356;
  float _1364;
  float _1367;
  float _1368;
  float _1369;
  float _1370;
  float _1371;
  float _1372;
  float _1373;
  float _1374;
  float _1375;
  float _1376;
  float _1379;
  float _1382;
  float _1385;
  float _1388;
  float _1391;
  float _1394;
  float _1401;
  float _1402;
  float _1403;
  float _1410;
  float _1411;
  float _1412;
  float _1415;
  float _1418;
  float _1421;
  int _1426;
  float _1434;
  float _1435;
  float _1436;
  float _1437;
  float _1438;
  float _1439;
  float _1440;
  int _1448;
  int _1457;
  float _1465;
  float _1466;
  float _1467;
  float _1471;
  float _1472;
  float _1473;
  float _1488;
  float _1495;
  float _1496;
  float _1497;
  float _1508;
  bool _1509;
  float _1510;
  float _1511;
  float _1512;
  float _1513;
  int _1514;
  float _1524;
  float _1525;
  float _1526;
  float _1554;
  float _1559;
  float _1560;
  int _1561;
  float _1569;
  float _1574;
  float _1575;
  float _1576;
  float _1585;
  float _1587;
  float _1588;
  float _1590;
  float _1592;
  float _1593;
  float _1594;
  float _1600;
  float _1601;
  float _1616;
  float _1617;
  float _1618;
  float4 _1623;
  float4 _1627;
  float _1637;
  float _1638;
  float _1639;
  int _1667;
  float _1675;
  float _1677;
  float _1684;
  float _1685;
  float _1686;
  int _1689;
  float4 _1694;
  float _1704;
  float _1705;
  float _1706;
  int _1734;
  float _1742;
  float _1744;
  int _1758;
  float _1766;
  float _1773;
  float _1774;
  float _1775;
  int _1776;
  int _1784;
  bool _1789;
  int _1797;
  float _1805;
  float _1812;
  float _1840;
  float _1845;
  float _1846;
  int _1847;
  int _1855;
  float _1856;
  float _1862;
  float _1863;
  float _1864;
  float _1865;
  float _1869;
  float _1872;
  float _1874;
  bool _1877;
  bool _1878;
  bool _1879;
  bool _1880;
  float _1889;
  float _1890;
  float _1891;
  float _1892;
  float _1899;
  float _1900;
  float _1904;
  float _1906;
  float _1908;
  float _1914;
  float _1918;
  float _1931;
  float _1932;
  float _1934;
  float _1941;
  float _1943;
  float _1954;
  float _1973;
  bool _1976;
  bool _1977;
  bool _1978;
  bool _1979;
  float _1988;
  float _1999;
  float _2048;
  float _2051;
  float _2053;
  bool _2056;
  bool _2057;
  bool _2058;
  bool _2059;
  float _2068;
  float _2069;
  float _2071;
  float _2076;
  float _2083;
  float _2089;
  float _2100;
  float _2119;
  bool _2122;
  bool _2123;
  bool _2124;
  bool _2125;
  float _2134;
  float _2144;
  float _2190;
  float _2191;
  float _2195;
  float _2198;
  float _2200;
  bool _2203;
  bool _2204;
  bool _2205;
  bool _2206;
  float _2215;
  float _2216;
  float _2222;
  float _2229;
  float _2235;
  float _2246;
  float _2265;
  bool _2268;
  bool _2269;
  bool _2270;
  bool _2271;
  float _2280;
  float _2290;
  int _2347;
  float _2355;
  float _2369;
  float _2370;
  float _2377;
  int _2382;
  float _2390;
  float _2392;
  float _2399;
  float _2400;
  float _2401;
  uint _2402;
  bool _2418;
  float _2424;
  float _2473;
  float _2474;
  float _2475;
  float _2477;
  float _2484;
  float _2485;
  float _2486;
  float _2505;
  float _2506;
  float _2507;
  float _2508;
  float _2509;
  float _2510;
  float _2511;
  float _2512;
  float _2513;
  float _2559;
  float _2560;
  float _2561;
  float _2562;
  float _2563;
  float _2564;
  float _2565;
  float _2582;
  float _2583;
  float _2584;
  float _2585;
  float _2591;
  float _2594;
  float _2601;
  float _2602;
  float _2603;
  float _2632;
  float _2657;
  float _2658;
  float _2659;
  float _2678;
  float _2679;
  float _2680;
  float _2686;
  float _2690;
  float _2691;
  float _2692;
  float _2693;
  float _2698;
  float _2723;
  float _2727;
  float _2728;
  float _2729;
  float _2730;
  float _2760;
  float _2779;
  float _2780;
  float _2784;
  float _2828;
  float _2849;
  float _2850;
  float _2851;
  int __loop_jump_target = -1;
  _30 = 1.0f / max(0.0010000000474974513f, _exposure0.x);
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_32.x, _32.y);
  _65 = (float)((uint)((uint)(((int)(_frameNumber.x * 1551)) & 15)));
  _66 = float((int)(int((_bufferSizeAndInvSize.x + -1.0f) * saturate(TEXCOORD.x))));
  _67 = float((int)(int((_bufferSizeAndInvSize.y + -1.0f) * saturate(TEXCOORD.y))));
  _76 = -0.0f - frac(frac(dot(float2(((_65 * 32.665000915527344f) + _66), ((_65 * 11.8149995803833f) + _67)), float2(0.0671105608344078f, 0.005837149918079376f))) * 52.98291778564453f);
  _85 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _95 = __3__36__0__0__g_gbufferNormal.Load(int3((int)(uint(_bufferSizeAndInvSize.x * TEXCOORD.x)), (int)(uint(_bufferSizeAndInvSize.y * TEXCOORD.y)), 0));
  _108 = (saturate(_95.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _109 = (saturate(_95.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _110 = (saturate(_95.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _112 = rsqrt(dot(float3(_108, _109, _110), float3(_108, _109, _110)));  // [sem: invLength]
  _113 = _112 * _108;
  _114 = _112 * _109;
  _115 = _110 * _112;
  _117 = (TEXCOORD.x * 2.0f) + -1.0f;
  _118 = TEXCOORD.y * 2.0f;
  _119 = 1.0f - _118;
  _120 = max(1.0000000116860974e-07f, _85.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _156 = mad((_invViewProj[2].w), _120, mad((_invViewProj[1].w), _119, ((_invViewProj[0].w) * _117))) + (_invViewProj[3].w);
  _157 = (mad((_invViewProj[2].x), _120, mad((_invViewProj[1].x), _119, ((_invViewProj[0].x) * _117))) + (_invViewProj[3].x)) / _156;
  _158 = (mad((_invViewProj[2].y), _120, mad((_invViewProj[1].y), _119, ((_invViewProj[0].y) * _117))) + (_invViewProj[3].y)) / _156;
  _159 = (mad((_invViewProj[2].z), _120, mad((_invViewProj[1].z), _119, ((_invViewProj[0].z) * _117))) + (_invViewProj[3].z)) / _156;
  _195 = mad((_invViewProjRelative[2].w), _120, mad((_invViewProjRelative[1].w), _119, ((_invViewProjRelative[0].w) * _117))) + (_invViewProjRelative[3].w);
  _196 = (mad((_invViewProjRelative[2].x), _120, mad((_invViewProjRelative[1].x), _119, ((_invViewProjRelative[0].x) * _117))) + (_invViewProjRelative[3].x)) / _195;
  _197 = (mad((_invViewProjRelative[2].y), _120, mad((_invViewProjRelative[1].y), _119, ((_invViewProjRelative[0].y) * _117))) + (_invViewProjRelative[3].y)) / _195;
  _198 = (mad((_invViewProjRelative[2].z), _120, mad((_invViewProjRelative[1].z), _119, ((_invViewProjRelative[0].z) * _117))) + (_invViewProjRelative[3].z)) / _195;
  _200 = rsqrt(dot(float3(_196, _197, _198), float3(_196, _197, _198)));  // [sem: invLength]
  _201 = _200 * _196;
  _202 = _200 * _197;
  _203 = _200 * _198;
  _206 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _216 = (pow(_206.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _217 = (pow(_206.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _218 = (pow(_206.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _243 = exp2(log2(max(0.0f, (_216 + -0.8359375f)) / (18.8515625f - (_216 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _244 = exp2(log2(max(0.0f, (_217 + -0.8359375f)) / (18.8515625f - (_217 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _245 = exp2(log2(max(0.0f, (_218 + -0.8359375f)) / (18.8515625f - (_218 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _248 = (_85.x < 1.0000000116860974e-07f) || (_85.x == 1.0f);
  _253 = _157 - _viewPos.x;
  _254 = _158 - _viewPos.y;
  _255 = _159 - _viewPos.z;
  _266 = _viewPos.x - _viewPosPrev.x;
  _267 = _viewPos.y - _viewPosPrev.y;
  _268 = _viewPos.z - _viewPosPrev.z;
  _276 = WaveReadLaneFirst(_materialIndex);
  _284 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_276 < (uint)170000), _276, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._cubeSpaceGradientRatio);
  _285 = _76 * 0.009999999776482582f;
  _295 = frac((_viewPos.x * 0.009999999776482582f) - (_266 * _285)) + 2000.0f;
  _296 = frac((_viewPos.y * 0.009999999776482582f) - (_267 * _285)) + 2000.0f;
  _304 = (frac((_viewPos.z * 0.009999999776482582f) - (_268 * _285)) + 2000.0f) + (frac(_time.x * 0.10000000149011612f) - (_76 * 0.004999999888241291f));
  _306 = 0.0f;
  _307 = 0;
  while(true) {
    _314 = ((_306 * _201) + _295) * 4.0f;
    _318 = frac(abs(_314));
    _322 = (select((_314 >= (-0.0f - _314)), _318, (-0.0f - _318)) * 0.25f) + -0.125f;
    _323 = ((_306 * _202) + _296) * 4.0f;
    _327 = frac(abs(_323));
    _331 = (select((_323 >= (-0.0f - _323)), _327, (-0.0f - _327)) * 0.25f) + -0.125f;
    _332 = ((_306 * _203) + _304) * 4.0f;
    _336 = frac(abs(_332));
    _340 = (select((_332 >= (-0.0f - _332)), _336, (-0.0f - _336)) * 0.25f) + -0.125f;
    _343 = _time.x * 0.5f;
    _344 = cos(_343);
    _345 = sin(_343);
    _346 = -0.0f - _345;
    _350 = mad(_340, _344, (_345 * _331));
    _358 = abs(mad(_350, _346, (_344 * _322))) + -0.0005000000237487257f;
    _359 = abs(mad(_340, _346, (_344 * _331))) + -0.0005000000237487257f;
    _360 = abs(mad(_350, _344, (_345 * _322))) + -0.0005000000237487257f;
    _361 = max(_358, 0.0f);
    _362 = max(_359, 0.0f);
    _363 = max(_360, 0.0f);
    _373 = min(max(_358, max(_359, _360)), 0.0f) + sqrt(((_362 * _362) + (_361 * _361)) + (_363 * _363));
    if (!(_373 < (_306 * 0.0010000000474974513f))) {
      _377 = _373 + _306;
      _378 = _307 + 1;
      if ((int)_378 < (int)80) {
        _306 = _377;
        _307 = _378;
        continue;
      } else {
        _381 = _377;
      }
    } else {
      _381 = _306;
    }
    _385 = (_381 * _201) + _295;
    _386 = (_381 * _202) + _296;
    _387 = (_381 * _203) + _304;
    _388 = _385 * 4.0f;
    _392 = frac(abs(_388));
    _396 = (select((_388 >= (-0.0f - _388)), _392, (-0.0f - _392)) * 0.25f) + -0.125f;
    _397 = _386 * 4.0f;
    _401 = frac(abs(_397));
    _405 = (select((_397 >= (-0.0f - _397)), _401, (-0.0f - _401)) * 0.25f) + -0.125f;
    _406 = _387 * 4.0f;
    _410 = frac(abs(_406));
    _414 = (select((_406 >= (-0.0f - _406)), _410, (-0.0f - _410)) * 0.25f) + -0.125f;
    _415 = _405 * _344;
    _417 = _405 * _345;
    _418 = mad(_414, _344, _417);
    _419 = _396 * _344;
    _421 = _396 * _345;
    _426 = abs(mad(_418, _346, _419)) + -0.0005000000237487257f;
    _427 = abs(mad(_414, _346, _415)) + -0.0005000000237487257f;
    _428 = abs(mad(_418, _344, _421)) + -0.0005000000237487257f;
    _429 = max(_426, 0.0f);
    _430 = max(_427, 0.0f);
    _431 = max(_428, 0.0f);
    _433 = _430 * _430;
    _441 = min(max(_426, max(_427, _428)), 0.0f) + sqrt((_433 + (_429 * _429)) + (_431 * _431));
    _443 = (_385 + 0.0010000000474974513f) * 4.0f;
    _447 = frac(abs(_443));
    _451 = (select((_443 >= (-0.0f - _443)), _447, (-0.0f - _447)) * 0.25f) + -0.125f;
    _458 = abs(mad(_418, _346, (_451 * _344))) + -0.0005000000237487257f;
    _459 = abs(mad(_418, _344, (_451 * _345))) + -0.0005000000237487257f;
    _460 = max(_458, 0.0f);
    _461 = max(_459, 0.0f);
    _471 = (_386 + 0.0010000000474974513f) * 4.0f;
    _475 = frac(abs(_471));
    _479 = (select((_471 >= (-0.0f - _471)), _475, (-0.0f - _475)) * 0.25f) + -0.125f;
    _483 = mad(_414, _344, (_479 * _345));
    _489 = abs(mad(_483, _346, _419)) + -0.0005000000237487257f;
    _490 = abs(mad(_414, _346, (_479 * _344))) + -0.0005000000237487257f;
    _491 = abs(mad(_483, _344, _421)) + -0.0005000000237487257f;
    _492 = max(_489, 0.0f);
    _493 = max(_490, 0.0f);
    _494 = max(_491, 0.0f);
    _505 = (_387 + 0.0010000000474974513f) * 4.0f;
    _509 = frac(abs(_505));
    _513 = (select((_505 >= (-0.0f - _505)), _509, (-0.0f - _509)) * 0.25f) + -0.125f;
    _515 = mad(_513, _344, _417);
    _521 = abs(mad(_515, _346, _419)) + -0.0005000000237487257f;
    _522 = abs(mad(_513, _346, _415)) + -0.0005000000237487257f;
    _523 = abs(mad(_515, _344, _421)) + -0.0005000000237487257f;
    _524 = max(_521, 0.0f);
    _525 = max(_522, 0.0f);
    _526 = max(_523, 0.0f);
    _537 = min(max(_458, max(_427, _459)), 0.0f) + (sqrt(((_460 * _460) + _433) + (_461 * _461)) - _441);
    _539 = min(max(_489, max(_490, _491)), 0.0f) + (sqrt(((_493 * _493) + (_492 * _492)) + (_494 * _494)) - _441);
    _541 = min(max(_521, max(_522, _523)), 0.0f) + (sqrt(((_525 * _525) + (_524 * _524)) + (_526 * _526)) - _441);
    _543 = rsqrt(dot(float3(_537, _539, _541), float3(_537, _539, _541)));  // [sem: invLength]
    _551 = -0.0f - _sunDirection.x;
    _552 = -0.0f - _sunDirection.y;
    _553 = -0.0f - _sunDirection.z;
    _555 = rsqrt(dot(float3(_551, _552, _553), float3(_551, _552, _553)));  // [sem: invLength]
    _559 = dot(float3((_543 * _537), (_543 * _539), (_543 * _541)), float3((_555 * _551), (_555 * _552), (_555 * _553)));
    _562 = saturate((_381 * 0.25f) + -0.25f);  // [sem: expr_sat]
    _566 = (_562 * _562) * (3.0f - (_562 * 2.0f));
    if (_248) {
      _578 = exp2(log2(abs(_202)) * 0.5f) * _284;
      _583 = (_578 * 0.029999999329447746f);
      _584 = (_578 * 0.05000000074505806f);
      _585 = (_578 * 0.07999999821186066f);
    } else {
      _583 = 0.0f;
      _584 = 0.0f;
      _585 = 0.0f;
    }
    _590 = exp2(log2((exp2(log2((1.0f - _559) + (_566 * _559)) * 4.0f) * 0.20000000298023224f) + 0.10000000149011612f) * 1.5f);
    _591 = _590 * 0.699999988079071f;
    _592 = _590 * 0.4000000059604645f;
    _593 = _590 * 0.10000000149011612f;
    _603 = WaveReadLaneFirst(_materialIndex);
    _611 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_603 < (uint)170000), _603, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._cubeSpaceEffectRatio);
    _621 = WaveReadLaneFirst(_materialIndex);
    _629 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_621 < (uint)170000), _621, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiDotRatio);
    if (_629 > 0.0f) {
      _632 = WaveReadLaneFirst(_materialIndex);
      _640 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_632 < (uint)170000), _632, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._depthOuterMaskRadius);
      _645 = _157 - _mainPosition.x;
      _646 = _158 - _mainPosition.y;
      _647 = _159 - _mainPosition.z;
      _655 = WaveReadLaneFirst(_materialIndex);
      _663 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_655 < (uint)170000), _655, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._invertDepthMask);
      _666 = saturate(_85.x);  // [sem: expr_sat]
      _669 = WaveReadLaneFirst(_materialIndex);
      _677 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_669 < (uint)170000), _669, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._depthContrast);
      _678 = WaveReadLaneFirst(_materialIndex);
      _686 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_678 < (uint)170000), _678, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._depthIntensity);
      _692 = WaveReadLaneFirst(_materialIndex);
      _700 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_692 < (uint)170000), _692, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleDistortionIntensity);
      if (_700 > 0.0f) {
        _708 = (_157 - _mainPosition.x) * 0.019999999552965164f;
        _709 = (_159 - _mainPosition.z) * 0.019999999552965164f;
        _711 = atan(_709 / _708);
        _714 = (_708 < 0.0f);
        _715 = (_708 == 0.0f);
        _716 = (_709 >= 0.0f);
        _717 = (_709 < 0.0f);
        _727 = sqrt((_708 * _708) + (_709 * _709));
        _730 = select((_715 && _716), 1.5f, select((_715 && _717), -1.5f, (select((_714 && _717), (_711 + -3.1415927410125732f), select((_714 && _716), (_711 + 3.1415927410125732f), _711)) * 0.9549295902252197f)));
        _735 = WaveReadLaneFirst(_materialIndex);
        _743 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_735 < (uint)170000), _735, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._noiseTex);
        _758 = WaveReadLaneFirst(_materialIndex);
        _766 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_758 < (uint)170000), _758, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._noiseTex);
        _782 = WaveReadLaneFirst(_materialIndex);
        _790 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_782 < (uint)170000), _782, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._noiseTex);
        _800 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_790 < (uint)65000), _790, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_730 * 0.1666666716337204f), ((_727 * 0.1666666716337204f) - (_time.x * 0.05000000074505806f)))))).x);
        _801 = ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_766 < (uint)65000), _766, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_730 * 0.5f), ((_727 * 0.5f) - (_time.x * 0.10000000149011612f)))))).x) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_743 < (uint)65000), _743, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_730, (_727 - (_time.x * 0.05000000074505806f)))))).x));
      } else {
        _800 = 0.0f;
        _801 = 0.0f;
      }
      _802 = WaveReadLaneFirst(_materialIndex);
      _810 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_802 < (uint)170000), _802, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleIntensity);
      if (_810 > 0.0f) {
        _815 = WaveReadLaneFirst(_materialIndex);
        _823 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_815 < (uint)170000), _815, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleSpeed);
        _825 = WaveReadLaneFirst(_materialIndex);
        _833 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_825 < (uint)170000), _825, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRipplePhaseOffset);
        _836 = WaveReadLaneFirst(_materialIndex);
        _844 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_836 < (uint)170000), _836, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleWidth);
        _852 = WaveReadLaneFirst(_materialIndex);
        _862 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_852 < (uint)170000), _852, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.x);
        _863 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_852 < (uint)170000), _852, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.y);
        _864 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_852 < (uint)170000), _852, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.z);
        _865 = _862 + (_157 - _mainPosition.x);
        _866 = _863 + (_158 - _mainPosition.y);
        _867 = _864 + (_159 - _mainPosition.z);
        _877 = WaveReadLaneFirst(_materialIndex);
        _885 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_877 < (uint)170000), _877, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._rippleCount);
        _888 = WaveReadLaneFirst(_materialIndex);
        _896 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_888 < (uint)170000), _888, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleDistortionIntensity);
        _900 = WaveReadLaneFirst(_materialIndex);
        _908 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_900 < (uint)170000), _900, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleContrast);
        _913 = WaveReadLaneFirst(_materialIndex);
        _921 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_913 < (uint)170000), _913, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleIntensity);
        _922 = _921 * saturate(exp2(log2(frac(((((1.0f / max(9.999999747378752e-06f, _844)) * exp2(log2(sqrt(sqrt(dot(float3(_865, _866, _867), float3(_865, _866, _867))))) * 1.2000000476837158f)) * _885) - frac(_833 + (_823 * _time.x))) - (_896 * _800))) * _908));
        _926 = _922;
        _927 = (_922 * 0.033104754984378815f);
        _928 = (_922 * 0.043233636766672134f);
      } else {
        _926 = 0.0f;
        _927 = 0.0f;
        _928 = 0.0f;
      }
      _929 = WaveReadLaneFirst(_materialIndex);
      _937 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_929 < (uint)170000), _929, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._rippleWidth);
      _945 = WaveReadLaneFirst(_materialIndex);
      _955 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_945 < (uint)170000), _945, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.x);
      _956 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_945 < (uint)170000), _945, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.y);
      _957 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_945 < (uint)170000), _945, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.z);
      _958 = _955 + (_157 - _mainPosition.x);
      _959 = _956 + (_158 - _mainPosition.y);
      _960 = _957 + (_159 - _mainPosition.z);
      _991 = WaveReadLaneFirst(_materialIndex);
      _999 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_991 < (uint)170000), _991, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._rippleCount);
      _1007 = WaveReadLaneFirst(_materialIndex);
      _1015 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1007 < (uint)170000), _1007, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._rippleSpeed);
      if ((sqrt(((_253 * _253) + (_254 * _254)) + (_255 * _255)) + -1500.0f) < 1.0f) {
        _1030 = WaveReadLaneFirst(_materialIndex);
        _1038 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1030 < (uint)170000), _1030, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiDotDensity);
        _1051 = _1038;
      } else {
        _1040 = WaveReadLaneFirst(_materialIndex);
        _1048 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1040 < (uint)170000), _1040, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiDotDensity);
        _1051 = (_1048 * 0.25f);
      }
      _1052 = WaveReadLaneFirst(_materialIndex);
      _1062 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1052 < (uint)170000), _1052, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiScrollSpeed.x);
      _1063 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1052 < (uint)170000), _1052, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiScrollSpeed.y);
      _1064 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1052 < (uint)170000), _1052, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiScrollSpeed.z);
      _1065 = WaveReadLaneFirst(_materialIndex);
      _1073 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1065 < (uint)170000), _1065, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiOffset);
      _1074 = WaveReadLaneFirst(_materialIndex);
      _1082 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1074 < (uint)170000), _1074, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiMovementSpeed);
      _1083 = _76 * 1.5f;
      _1090 = _926 * 3.0f;
      _1104 = (_time.x * _1062) + (_1051 * ((_157 - (_266 * _1083)) - _1090));
      _1105 = (_time.x * _1063) + (_1051 * ((_158 - (_267 * _1083)) - _1090));
      _1106 = (_time.x * _1064) + (_1051 * ((_159 - (_268 * _1083)) - _1090));
      _1113 = floor(_1104);
      _1114 = floor(_1105);
      _1115 = floor(_1106);
      _1117 = 100000000376832.0f;
      _1118 = 0.0f;
      _1119 = 0.0f;
      _1120 = 0.0f;
      _1121 = -1;
      while(true) {
        _1126 = _1117;
        _1127 = _1118;
        _1128 = _1119;
        _1129 = _1120;
        _1130 = -1;
        while(true) {
          _1135 = _1126;
          _1136 = _1127;
          _1137 = _1128;
          _1138 = _1129;
          _1139 = -1;
          while(true) {
            _1140 = float((int)(_1121));
            _1141 = float((int)(_1130));
            _1142 = float((int)(_1139));
            _1149 = asint((_1141 + _1114)) * 1025;
            _1152 = (((uint)(_1149) >> 6) ^ _1149) * 9;
            _1157 = asint((_1142 + _1115)) * 1025;
            _1160 = (((uint)(_1157) >> 6) ^ _1157) * 9;
            _1165 = ((((int)((((uint)(_1152) >> 11) ^ _1152) * 32769)) ^ asint((_1140 + _1113))) ^ ((int)((((uint)(_1160) >> 11) ^ _1160) * 32769))) * 1025;
            _1168 = (((uint)(_1165) >> 6) ^ _1165) * 9;
            _1179 = sin(((((_time.x + 1000.0f) * _1082) + _1073) * 2.0f) * (asfloat(((((int)((((uint)(_1168) >> 11) ^ _1168) * 32769)) & 8388607) | 1065353216)) + -1.0f));
            _1180 = _1179 + _1140;
            _1181 = _1179 + _1141;
            _1182 = _1179 + _1142;
            _1183 = (frac(_1104) + -0.5f) - _1180;
            _1184 = (frac(_1105) + -0.5f) - _1181;
            _1185 = (frac(_1106) + -0.5f) - _1182;
            _1191 = sqrt(((_1184 * _1184) + (_1183 * _1183)) + (_1185 * _1185));
            _1192 = (_1191 < _1135);
            _1193 = select(_1192, _1191, _1135);
            _1194 = select(_1192, _1180, _1136);
            _1195 = select(_1192, _1181, _1137);
            _1196 = select(_1192, _1182, _1138);
            _1197 = _1139 + 1;
            if (!(_1197 == 2)) {
              _1135 = _1193;
              _1136 = _1194;
              _1137 = _1195;
              _1138 = _1196;
              _1139 = _1197;
              continue;
            }
            while(true) {
              _1132 = _1130 + 1;
              if (!(_1132 == 2)) {
                _1126 = _1193;
                _1127 = _1194;
                _1128 = _1195;
                _1129 = _1196;
                _1130 = _1132;
                __loop_jump_target = 1125;
                break;
              }
              while(true) {
                _1123 = _1121 + 1;
                if (!(_1123 == 2)) {
                  _1117 = _1193;
                  _1118 = _1194;
                  _1119 = _1195;
                  _1120 = _1196;
                  _1121 = _1123;
                  __loop_jump_target = 1116;
                  break;
                }
                _1203 = (_1194 + _1113) / _1051;
                _1204 = (_1195 + _1114) / _1051;
                _1205 = (_1196 + _1115) / _1051;
                _1233 = mad((_viewProj[2].w), _1205, mad((_viewProj[1].w), _1204, ((_viewProj[0].w) * _1203))) + (_viewProj[3].w);
  // [sem: _3__36__0__0__g_sceneColor_sample]
                _1242 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((mad((_viewProj[2].x), _1205, mad((_viewProj[1].x), _1204, ((_viewProj[0].x) * _1203))) + (_viewProj[3].x)) / _1233) * 0.5f) + 0.5f), (0.5f - (((mad((_viewProj[2].y), _1205, mad((_viewProj[1].y), _1204, ((_viewProj[0].y) * _1203))) + (_viewProj[3].y)) / _1233) * 0.5f))));
                _1252 = (pow(_1242.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                _1253 = (pow(_1242.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                _1254 = (pow(_1242.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                _1286 = WaveReadLaneFirst(_materialIndex);
                _1294 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1286 < (uint)170000), _1286, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiDotThreshold);
                _1296 = WaveReadLaneFirst(_materialIndex);
                _1304 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1296 < (uint)170000), _1296, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._rippleIntensity);
                _1309 = ((_1294 * select(_248, 0.0f, _1193)) - (_1304 * (((_926 * 0.5f) + 1.0f) - ((frac((((exp2(log2(sqrt(sqrt(dot(float3(_958, _959, _960), float3(_958, _959, _960))))) * 1.2000000476837158f) * 40.0f) * (1.0f / max(9.999999747378752e-06f, _937))) * _999) - (_1015 * (_time.x + (_801 * 1.5f)))) + (_801 * 0.30000001192092896f)) * max(0.0f, (1.0f - ((1.0f - ((1.0f / max(9.999999747378752e-06f, _640)) * sqrt(dot(float3(_645, _646, _647), float3(_645, _646, _647))))) * 2.0f))))))) + min(max(saturate(exp2(log2(_686 * select((((float)((uint)_663)) == 1.0f), (1.0f - _666), _666)) * _677)), 0.0f), 1.0f);
                _1313 = saturate(_1309 / max((0.10000000149011612f / _1309), 0.0f));  // [sem: expr_sat]
                _1320 = WaveReadLaneFirst(_materialIndex);
                _1328 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1320 < (uint)170000), _1320, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiDotRatio);
                _1331 = (_1328 * (1.0f - floor((_1313 * _1313) * (3.0f - (_1313 * 2.0f)))));
                _1332 = select(_248, 0.0f, (exp2(log2(max(0.0f, (_1252 + -0.8359375f)) / (18.8515625f - (_1252 * 18.6875f))) * 6.277394771575928f) * 10000.0f));
                _1333 = select(_248, 0.0f, (exp2(log2(max(0.0f, (_1253 + -0.8359375f)) / (18.8515625f - (_1253 * 18.6875f))) * 6.277394771575928f) * 10000.0f));
                _1334 = select(_248, 0.0f, (exp2(log2(max(0.0f, (_1254 + -0.8359375f)) / (18.8515625f - (_1254 * 18.6875f))) * 6.277394771575928f) * 10000.0f));
                _1335 = _927;
                _1336 = _928;
                break;
              }
              if (__loop_jump_target != -1) {
                break;
              }
              break;
            }
            if (__loop_jump_target != -1) {
              break;
            }
            break;
          }
          if (__loop_jump_target == 1125) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
          break;
        }
        if (__loop_jump_target == 1116) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
    } else {
      _1331 = 0.0f;
      _1332 = 0.0f;
      _1333 = 0.0f;
      _1334 = 0.0f;
      _1335 = 0.0f;
      _1336 = 0.0f;
    }
    _1346 = 0.0010000000474974513f / max(0.0010000000474974513f, _exposure0.x);
    _1349 = (((_1332 * _1331) + (saturate(_611 * (lerp(_591, _583, _566))) * _30)) + (_1335 * 0.009999999776482582f)) + _1346;
    _1352 = (((_1333 * _1331) + (saturate(_611 * (lerp(_592, _584, _566))) * _30)) + (_1335 * 0.009999999776482582f)) + _1346;
    _1355 = (((_1334 * _1331) + (saturate(_611 * (lerp(_593, _585, _566))) * _30)) + (_1336 * 0.009999999776482582f)) + _1346;
    _1356 = WaveReadLaneFirst(_materialIndex);
    _1364 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1356 < (uint)170000), _1356, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._radius);
    if (_1364 > 0.0010000000474974513f) {
      _1367 = ddx_coarse(_201);
      _1368 = ddx_coarse(_202);
      _1369 = ddx_coarse(_203);
      _1370 = ddy_coarse(_201);
      _1371 = ddy_coarse(_202);
      _1372 = ddy_coarse(_203);
      _1373 = ddx_coarse(TEXCOORD.x);
      _1374 = ddx_coarse(TEXCOORD.y);
      _1375 = ddy_coarse(TEXCOORD.x);
      _1376 = ddy_coarse(TEXCOORD.y);
      _1379 = (_1371 * _115) - (_1372 * _114);
      _1382 = (_1372 * _113) - (_1370 * _115);
      _1385 = (_1370 * _114) - (_1371 * _113);
      _1388 = (_1369 * _114) - (_1368 * _115);
      _1391 = (_1367 * _115) - (_1369 * _113);
      _1394 = (_1368 * _113) - (_1367 * _114);
      _1401 = (_1375 * _1388) + (_1379 * _1373);
      _1402 = (_1375 * _1391) + (_1382 * _1373);
      _1403 = (_1375 * _1394) + (_1385 * _1373);
      _1410 = (_1376 * _1388) + (_1379 * _1374);
      _1411 = (_1376 * _1391) + (_1382 * _1374);
      _1412 = (_1376 * _1394) + (_1374 * _1385);
      _1415 = max(dot(float3(_1401, _1402, _1403), float3(_1401, _1402, _1403)), dot(float3(_1410, _1411, _1412), float3(_1410, _1411, _1412)));
      _1418 = rsqrt(select((!(_1415 == 0.0f)), _1415, 0.10000000149011612f));  // [sem: rsqrt_val]
      _1421 = _1418 * _201;
      _1426 = WaveReadLaneFirst(_materialIndex);
      _1434 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1426 < (uint)170000), _1426, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._squareSize);
      _1435 = _1434 * _157;
      _1436 = _1434 * _158;
      _1437 = _1434 * _159;
      _1438 = floor(_1435);
      _1439 = floor(_1436);
      _1440 = floor(_1437);
      _1442 = 10.0f;
      _1443 = 0.0f;
      _1444 = 0.0f;
      _1445 = 0.0f;
      _1446 = -1;
      while(true) {
        _1451 = _1442;
        _1452 = _1443;
        _1453 = _1444;
        _1454 = _1445;
        _1455 = -1;
        while(true) {
          _1460 = _1451;
          _1461 = _1452;
          _1462 = _1453;
          _1463 = _1454;
          _1464 = -1;
          while(true) {
            _1465 = float((int)(_1464));
            _1466 = float((int)(_1455));
            _1467 = float((int)(_1446));
            _1471 = sin(_1465 + _1438);
            _1472 = sin(_1466 + _1439);
            _1473 = sin(_1467 + _1440);
            _1488 = _time.x * 0.20000000298023224f;
            _1495 = sin(_1488 * frac(sin(dot(float3(_1471, _1472, _1473), float3(12.98900032043457f, 78.23300170898438f, 37.71900177001953f))) * 143758.546875f)) + _1465;
            _1496 = sin(_1488 * frac(sin(dot(float3(_1471, _1472, _1473), float3(39.34600067138672f, 11.135000228881836f, 83.15499877929688f))) * 143758.546875f)) + _1466;
            _1497 = sin(_1488 * frac(sin(dot(float3(_1471, _1472, _1473), float3(73.15599822998047f, 52.23500061035156f, 9.151000022888184f))) * 143758.546875f)) + _1467;
            _1508 = max(abs((_1438 - _1435) + _1495), max(abs((_1439 - _1436) + _1496), abs((_1440 - _1437) + _1497)));
            _1509 = (_1508 < _1460);
            _1510 = select(_1509, _1508, _1460);
            _1511 = select(_1509, _1495, _1461);
            _1512 = select(_1509, _1496, _1462);
            _1513 = select(_1509, _1497, _1463);
            _1514 = _1464 + 1;
            if (!(_1514 == 2)) {
              _1460 = _1510;
              _1461 = _1511;
              _1462 = _1512;
              _1463 = _1513;
              _1464 = _1514;
              continue;
            }
            while(true) {
              _1457 = _1455 + 1;
              if (!(_1457 == 2)) {
                _1451 = _1510;
                _1452 = _1511;
                _1453 = _1512;
                _1454 = _1513;
                _1455 = _1457;
                __loop_jump_target = 1450;
                break;
              }
              while(true) {
                _1448 = _1446 + 1;
                if (!(_1448 == 2)) {
                  _1442 = _1510;
                  _1443 = _1511;
                  _1444 = _1512;
                  _1445 = _1513;
                  _1446 = _1448;
                  __loop_jump_target = 1441;
                  break;
                }
                _1524 = (_1511 + _1438) / _1434;
                _1525 = (_1512 + _1439) / _1434;
                _1526 = (_1513 + _1440) / _1434;
                _1554 = mad((_viewProj[2].w), _1526, mad((_viewProj[1].w), _1525, ((_viewProj[0].w) * _1524))) + (_viewProj[3].w);
                _1559 = (((mad((_viewProj[2].x), _1526, mad((_viewProj[1].x), _1525, ((_viewProj[0].x) * _1524))) + (_viewProj[3].x)) / _1554) * 0.5f) + 0.5f;
                _1560 = 0.5f - (((mad((_viewProj[2].y), _1526, mad((_viewProj[1].y), _1525, ((_viewProj[0].y) * _1524))) + (_viewProj[3].y)) / _1554) * 0.5f);
                _1561 = WaveReadLaneFirst(_materialIndex);
                _1569 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1561 < (uint)170000), _1561, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._radius);
                _1574 = _1524 - _mainPosition.x;
                _1575 = _1525 - _mainPosition.y;
                _1576 = _1526 - _mainPosition.z;
  // [sem: expr_sat]
                _1585 = saturate(1.0f - ((1.0f - ((1.0f / max(9.999999747378752e-06f, _1569)) * sqrt(dot(float3(_1574, _1575, _1576), float3(_1574, _1575, _1576))))) * 1.0152283906936646f));
                _1587 = 1.0f - saturate(_1585);
                _1588 = _1585 * 0.5f;
                _1590 = (TEXCOORD.x - _1559) / _1587;
                _1592 = (TEXCOORD.y - _1560) / _1587;
                _1593 = sin(_1588);
                _1594 = cos(_1588);
                _1600 = mad((-0.0f - _1593), _1592, (_1594 * _1590)) + _1559;
                _1601 = mad(_1594, _1592, (_1593 * _1590)) + _1560;
                _1609 = _1349;
                _1610 = _1352;
                _1611 = _1355;
                _1612 = 1;
                while(true) {
                  _1616 = (float((int)(6 - _1612)) * 0.1666666716337204f) * ((saturate(_85.x * 1.5f) * 0.5f) * saturate(frac(frac(dot(float2((_66 + 32.665000915527344f), (_67 + 11.8149995803833f)), float2(0.0671105608344078f, 0.005837149918079376f))) * 52.98291778564453f) + 0.5f));
                  _1617 = _1616 * mad((_1418 * _1403), _203, mad((_1418 * _1402), _202, (_1421 * _1401)));
                  _1618 = _1616 * mad((_1418 * _1412), _203, mad((_1418 * _1411), _202, (_1421 * _1410)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1623 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1617 + TEXCOORD.x), (_1618 + TEXCOORD.y)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1627 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1617 + _1600), (_1618 + _1601)));
                  _1637 = (pow(_1627.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                  _1638 = (pow(_1627.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                  _1639 = (pow(_1627.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                  _1667 = WaveReadLaneFirst(_materialIndex);
                  _1675 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1667 < (uint)170000), _1667, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._maskThreshold);
                  _1677 = (float)((bool)(uint)(_1623.w < _1675));
                  _1684 = (_1677 * ((exp2(log2(max(0.0f, (_1637 + -0.8359375f)) / (18.8515625f - (_1637 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _1609)) + _1609;
                  _1685 = (_1677 * ((exp2(log2(max(0.0f, (_1638 + -0.8359375f)) / (18.8515625f - (_1638 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _1610)) + _1610;
                  _1686 = (_1677 * ((exp2(log2(max(0.0f, (_1639 + -0.8359375f)) / (18.8515625f - (_1639 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _1611)) + _1611;
                  if (!(_1623.w > 0.8999999761581421f)) {
                    _1689 = _1612 + 1;
                    if ((int)_1689 < (int)6) {
                      _1609 = _1684;
                      _1610 = _1685;
                      _1611 = _1686;
                      _1612 = _1689;
                      continue;
                    }
                  }
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1694 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_1600, _1601));
                  _1704 = (pow(_1694.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                  _1705 = (pow(_1694.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                  _1706 = (pow(_1694.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                  _1734 = WaveReadLaneFirst(_materialIndex);
                  _1742 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1734 < (uint)170000), _1734, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._maskThreshold);
                  _1744 = (float)((bool)(uint)(_1623.w < _1742));
                  _1755 = ((_1744 * ((exp2(log2(max(0.0f, (_1704 + -0.8359375f)) / (18.8515625f - (_1704 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _1684)) + _1684);
                  _1756 = ((_1744 * ((exp2(log2(max(0.0f, (_1705 + -0.8359375f)) / (18.8515625f - (_1705 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _1685)) + _1685);
                  _1757 = ((_1744 * ((exp2(log2(max(0.0f, (_1706 + -0.8359375f)) / (18.8515625f - (_1706 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _1686)) + _1686);
                  break;
                }
                break;
              }
              if (__loop_jump_target != -1) {
                break;
              }
              break;
            }
            if (__loop_jump_target != -1) {
              break;
            }
            break;
          }
          if (__loop_jump_target == 1450) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
          break;
        }
        if (__loop_jump_target == 1441) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
    } else {
      _1755 = _1349;
      _1756 = _1352;
      _1757 = _1355;
    }
    _1758 = WaveReadLaneFirst(_materialIndex);
    _1766 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1758 < (uint)170000), _1758, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ppWorldLoadingRatio);
    _1773 = (_1766 * (_1755 - _243)) + _243;
    _1774 = (_1766 * (_1756 - _244)) + _244;
    _1775 = (_1766 * (_1757 - _245)) + _245;
    _1776 = WaveReadLaneFirst(_materialIndex);
    _1784 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1776 < (uint)170000), _1776, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._excludePlayer);
    if (_1784 == 1) {
      _1789 = (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_32.x)))))) + 0.5f) * TEXCOORD.x), int((float((int)(int(float((int)((int)(_32.y)))))) + 0.5f) * TEXCOORD.y), 0)))).x) & 255) == _renderPassSelfPlayer);
      _1794 = select(_1789, _243, _1773);
      _1795 = select(_1789, _244, _1774);
      _1796 = select(_1789, _245, _1775);
    } else {
      _1794 = _1773;
      _1795 = _1774;
      _1796 = _1775;
    }
    _1797 = WaveReadLaneFirst(_materialIndex);
    _1805 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1797 < (uint)170000), _1797, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._starburstIntensity);
    if (_1805 > 0.0f) {
      _1812 = _mainPosition.y + 1.5f;
      _1840 = mad((_viewProj[2].w), _mainPosition.z, mad((_viewProj[1].w), _1812, ((_viewProj[0].w) * _mainPosition.x))) + (_viewProj[3].w);
      _1845 = (((mad((_viewProj[2].x), _mainPosition.z, mad((_viewProj[1].x), _1812, ((_viewProj[0].x) * _mainPosition.x))) + (_viewProj[3].x)) / _1840) * 0.5f) + 0.5f;
      _1846 = 0.5f - (((mad((_viewProj[2].y), _mainPosition.z, mad((_viewProj[1].y), _1812, ((_viewProj[0].y) * _mainPosition.x))) + (_viewProj[3].y)) / _1840) * 0.5f);
      _1847 = WaveReadLaneFirst(_materialIndex);
      _1855 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1847 < (uint)170000), _1847, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._noiseTex);
      _1856 = TEXCOORD.x - _1845;
      _1862 = (_bufferSizeAndInvSize.y / _bufferSizeAndInvSize.x) * (TEXCOORD.y - _1846);
      _1863 = _1856 * 1.100000023841858f;
      _1864 = _1862 * 1.100000023841858f;
      _1865 = dot(float2(_1845, _1846), float2(0.25f, 0.25f));
      _1869 = sqrt((_1864 * _1864) + (_1863 * _1863));
      _1872 = (pow(_1869, 3.0f));
      _1874 = atan(_1864 / _1863);
      _1877 = (_1863 < 0.0f);
      _1878 = (_1863 == 0.0f);
      _1879 = (_1864 >= 0.0f);
      _1880 = (_1864 < 0.0f);
      _1889 = select((_1878 && _1879), 15.707963943481445f, select((_1878 && _1880), -15.707963943481445f, (select((_1877 && _1880), (_1874 + -3.1415927410125732f), select((_1877 && _1879), (_1874 + 3.1415927410125732f), _1874)) * 10.0f)));
      _1890 = _1872 * 5.0f;
      _1891 = _1865 * 0.00795774720609188f;
      _1892 = _1865 * 4.774648189544678f;
      _1899 = frac(abs(_1891));
      _1900 = frac(abs(_1892));
      _1904 = select((_1892 >= (-0.0f - _1892)), _1900, (-0.0f - _1900));
      _1906 = sin(select((_1891 >= (-0.0f - _1891)), _1899, (-0.0f - _1899)) * 6.2831854820251465f);
      _1908 = 12.345600128173828f - _1906;
      _1914 = ((_1890 + 2.345599889755249f) - _1906) * 0.015625f;
      _1918 = frac(_time.x * 0.05000000074505806f);
  // [sem: expr_sat]
      _1931 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1855 < (uint)65000), _1855, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1908 + _1889) * 0.015625f) - _1918), (_1914 - _1918))))).x) * 1.5f) * 1.2000000476837158f);
      _1932 = _1906 + 3.456700086593628f;
      _1934 = _1906 + 45.67890167236328f;
      _1941 = frac(_time.x * 0.05000000074505806f);
      _1943 = ((_1934 + _1890) * 0.015625f) - _1941;
      _1954 = (_1872 * 0.078125f) - _1941;
      _1973 = atan((-0.0f - _1864) / (-0.0f - _1863));
      _1976 = (_1863 > -0.0f);
      _1977 = (_1863 == -0.0f);
      _1978 = (_1864 <= -0.0f);
      _1979 = (_1864 > -0.0f);
      _1988 = select((_1977 && _1978), 15.707963943481445f, select((_1977 && _1979), -15.707963943481445f, (select((_1976 && _1979), (_1973 + -3.1415927410125732f), select((_1976 && _1978), (_1973 + 3.1415927410125732f), _1973)) * 10.0f)));
  // [sem: expr_sat]
      _1999 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1855 < (uint)65000), _1855, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1988 + _1908) * 0.015625f) - _1941), (_1914 - _1941))))).x) * 1.5f) * 1.2000000476837158f);
      _2048 = sqrt((_1862 * _1862) + (_1856 * _1856));
      _2051 = (pow(_2048, 3.0f));
      _2053 = atan(_1862 / _1856);
      _2056 = (_1856 < 0.0f);
      _2057 = (_1856 == 0.0f);
      _2058 = (_1862 >= 0.0f);
      _2059 = (_1862 < 0.0f);
      _2068 = select((_2057 && _2058), 15.707963943481445f, select((_2057 && _2059), -15.707963943481445f, (select((_2056 && _2059), (_2053 + -3.1415927410125732f), select((_2056 && _2058), (_2053 + 3.1415927410125732f), _2053)) * 10.0f)));
      _2069 = _2051 * 5.0f;
      _2071 = 2.345599889755249f - _1906;
      _2076 = ((_2071 + _2069) * 0.015625f) - _1941;
  // [sem: expr_sat]
      _2083 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1855 < (uint)65000), _1855, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2068 + _1908) * 0.015625f) - _1941), _2076)))).x) * 1.5f) * 1.2000000476837158f);
      _2089 = ((_1934 + _2069) * 0.015625f) - _1941;
      _2100 = (_2051 * 0.078125f) - _1941;
      _2119 = atan((-0.0f - _1862) / (-0.0f - _1856));
      _2122 = (_1856 > -0.0f);
      _2123 = (_1856 == -0.0f);
      _2124 = (_1862 <= -0.0f);
      _2125 = (_1862 > -0.0f);
      _2134 = select((_2123 && _2124), 15.707963943481445f, select((_2123 && _2125), -15.707963943481445f, (select((_2122 && _2125), (_2119 + -3.1415927410125732f), select((_2122 && _2124), (_2119 + 3.1415927410125732f), _2119)) * 10.0f)));
  // [sem: expr_sat]
      _2144 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1855 < (uint)65000), _1855, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2134 + _1908) * 0.015625f) - _1941), _2076)))).x) * 1.5f) * 1.2000000476837158f);
      _2190 = _1856 * 0.8999999761581421f;
      _2191 = _1862 * 0.8999999761581421f;
      _2195 = sqrt((_2191 * _2191) + (_2190 * _2190));
      _2198 = (pow(_2195, 3.0f));
      _2200 = atan(_2191 / _2190);
      _2203 = (_2190 < 0.0f);
      _2204 = (_2190 == 0.0f);
      _2205 = (_2191 >= 0.0f);
      _2206 = (_2191 < 0.0f);
      _2215 = select((_2204 && _2205), 15.707963943481445f, select((_2204 && _2206), -15.707963943481445f, (select((_2203 && _2206), (_2200 + -3.1415927410125732f), select((_2203 && _2205), (_2200 + 3.1415927410125732f), _2200)) * 10.0f)));
      _2216 = _2198 * 5.0f;
      _2222 = ((_2071 + _2216) * 0.015625f) - _1941;
  // [sem: expr_sat]
      _2229 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1855 < (uint)65000), _1855, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2215 + _1908) * 0.015625f) - _1941), _2222)))).x) * 1.5f) * 1.2000000476837158f);
      _2235 = ((_1934 + _2216) * 0.015625f) - _1941;
      _2246 = (_2198 * 0.078125f) - _1941;
      _2265 = atan((-0.0f - _2191) / (-0.0f - _2190));
      _2268 = (_2190 > -0.0f);
      _2269 = (_2190 == -0.0f);
      _2270 = (_2191 <= -0.0f);
      _2271 = (_2191 > -0.0f);
      _2280 = select((_2269 && _2270), 15.707963943481445f, select((_2269 && _2271), -15.707963943481445f, (select((_2268 && _2271), (_2265 + -3.1415927410125732f), select((_2268 && _2270), (_2265 + 3.1415927410125732f), _2265)) * 10.0f)));
  // [sem: expr_sat]
      _2290 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1855 < (uint)65000), _1855, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2280 + _1908) * 0.015625f) - _1941), _2222)))).x) * 1.5f) * 1.2000000476837158f);
      _2347 = WaveReadLaneFirst(_materialIndex);
      _2355 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_2347 < (uint)170000), _2347, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._starburstIntensity);
      _2366 = (saturate(_2355 * exp2(log2(exp2(log2(saturate(1.100000023841858f - (_1869 * 24.0f))) * 10.199999809265137f) + (exp2(log2(saturate(1.0f - (_1869 * 2.0f))) * 12.199999809265137f) * exp2(log2(max(((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1855 < (uint)65000), _1855, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1889 * 0.015625f) - _1941), _1954)))).x) * 1.5f) * 1.2000000476837158f) + _1904) * 6.2831854820251465f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1855 < (uint)65000), _1855, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1932 + _1889) * 0.015625f) - _1941), _1943)))).x) * 1.5f) * 1.2000000476837158f) - _1931)) + _1931), ((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1855 < (uint)65000), _1855, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1988 * 0.015625f) - _1941), _1954)))).x) * 1.5f) * 1.2000000476837158f) + _1904) * 6.2831854820251465f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1855 < (uint)65000), _1855, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1988 + _1932) * 0.015625f) - _1941), _1943)))).x) * 1.5f) * 1.2000000476837158f) - _1999)) + _1999))) * 3.0f))) * 1.399999976158142f)) * _30);
      _2367 = (saturate(_2355 * exp2(log2((exp2(log2(saturate(1.100000023841858f - (_2048 * 24.0f))) * 10.199999809265137f) + (exp2(log2(saturate(1.0f - (_2048 * 2.0f))) * 12.199999809265137f) * exp2(log2(max(((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1855 < (uint)65000), _1855, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2068 * 0.015625f) - _1941), _2100)))).x) * 1.5f) * 1.2000000476837158f) + _1904) * 6.2831854820251465f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1855 < (uint)65000), _1855, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2068 + _1932) * 0.015625f) - _1941), _2089)))).x) * 1.5f) * 1.2000000476837158f) - _2083)) + _2083), ((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1855 < (uint)65000), _1855, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2134 * 0.015625f) - _1941), _2100)))).x) * 1.5f) * 1.2000000476837158f) + _1904) * 6.2831854820251465f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1855 < (uint)65000), _1855, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2134 + _1932) * 0.015625f) - _1941), _2089)))).x) * 1.5f) * 1.2000000476837158f) - _2144)) + _2144))) * 3.0f))) * 0.6038274168968201f) * 1.399999976158142f)) * _30);
      _2368 = (saturate(_2355 * exp2(log2((exp2(log2(saturate(1.100000023841858f - (_2195 * 24.0f))) * 10.199999809265137f) + (exp2(log2(saturate(1.0f - (_2195 * 2.0f))) * 12.199999809265137f) * exp2(log2(max(((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1855 < (uint)65000), _1855, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2215 * 0.015625f) - _1941), _2246)))).x) * 1.5f) * 1.2000000476837158f) + _1904) * 6.2831854820251465f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1855 < (uint)65000), _1855, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2215 + _1932) * 0.015625f) - _1941), _2235)))).x) * 1.5f) * 1.2000000476837158f) - _2229)) + _2229), ((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1855 < (uint)65000), _1855, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2280 * 0.015625f) - _1941), _2246)))).x) * 1.5f) * 1.2000000476837158f) + _1904) * 6.2831854820251465f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1855 < (uint)65000), _1855, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2280 + _1932) * 0.015625f) - _1941), _2235)))).x) * 1.5f) * 1.2000000476837158f) - _2290)) + _2290))) * 3.0f))) * 0.4479884207248688f) * 1.399999976158142f)) * _30);
    } else {
      _2366 = 0.0f;
      _2367 = 0.0f;
      _2368 = 0.0f;
    }
    _2369 = TEXCOORD.x + -0.5f;
    _2370 = TEXCOORD.y + -0.5f;
    _2377 = saturate((sqrt((_2370 * _2370) + (_2369 * _2369)) + -0.009999999776482582f) * 1.0101009607315063f);  // [sem: expr_sat]
    _2382 = WaveReadLaneFirst(_materialIndex);
    _2390 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_2382 < (uint)170000), _2382, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._vignetteIntensity);
    _2392 = 1.0f - (((_2377 * _2377) * (3.0f - (_2377 * 2.0f))) * _2390);
    _2399 = max(0.0f, (_2392 * (_2366 + _1794)));
    _2400 = max(0.0f, (_2392 * (_2367 + _1795)));
    _2401 = max(0.0f, (_2392 * (_2368 + _1796)));
    _2402 = uint(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _2415 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _2402, 0)))).x) & 127)))) + 0.5f);
    } else {
      _2415 = 1.0f;
    }
    _2418 = (_localToneMappingParams.w > 0.0f);
    if (_2418) {
      // RenoDX: >>> [Patch: ScreenEffectTonemapReplace] [Version: 1.12.02]
      // Description: HDR/PQ-output compile permutation of a PostProcessMaterial screen-effect composite (hash 0xBF771953; its bindless parameter block is PostProcessWorldLoading, the world-loading/streaming transition overlay). Like every member of this shader family it statically inlines the vanilla tonemap pipeline and can own the visible final output while its screen effect plays, so an unreplaced vanilla curve would render the whole screen with vanilla colors (flat/grey versus the RenoDX look) for the duration of the effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below.
      float3 _rndx_tonemapped_color = TonemapReplacer(float3(_2399, _2400, _2401));
      _2678 = _rndx_tonemapped_color.x;
      _2679 = _rndx_tonemapped_color.y;
      _2680 = _rndx_tonemapped_color.z;
      // RenoDX: <<< [Patch: ScreenEffectTonemapReplace]
      if (_etcParams.z == 0.0f) {
        _2686 = 1.0f - abs(_etcParams.w);
        _2690 = saturate(_etcParams.w);  // [sem: expr_sat]
        _2691 = (_2686 * _2678) + _2690;
        _2692 = (_2686 * _2679) + _2690;
        _2693 = (_2686 * _2680) + _2690;
        if (_colorGradingParams.w > 0.0f) {
          _2698 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _2715 = (((max(0.0f, (1.0f - _2691)) - _2691) * _2698) + _2691);
          _2716 = (((max(0.0f, (1.0f - _2692)) - _2692) * _2698) + _2692);
          _2717 = (((max(0.0f, (1.0f - _2693)) - _2693) * _2698) + _2693);
        } else {
          _2715 = _2691;
          _2716 = _2692;
          _2717 = _2693;
        }
        _2723 = _userImageAdjust.y + 1.0f;
        _2727 = _userImageAdjust.x + 0.5f;
        _2728 = ((_2715 + -0.5f) * _2723) + _2727;
        _2729 = ((_2716 + -0.5f) * _2723) + _2727;
        _2730 = ((_2717 + -0.5f) * _2723) + _2727;
        _2760 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
        _2771 = exp2(log2(saturate(mad(_colorBlind0.z, _2730, mad(_colorBlind0.y, _2729, (_colorBlind0.x * _2728))))) * _2760);
        _2772 = exp2(log2(saturate(mad(_colorBlind1.z, _2730, mad(_colorBlind1.y, _2729, (_colorBlind1.x * _2728))))) * _2760);
        _2773 = exp2(log2(saturate(mad(_colorBlind2.z, _2730, mad(_colorBlind2.y, _2729, (_colorBlind2.x * _2728))))) * _2760);
      } else {
        _2771 = _2678;
        _2772 = _2679;
        _2773 = _2680;
      }
    } else {
      _2771 = _2399;
      _2772 = _2400;
      _2773 = _2401;
    }
    if (_etcParams.y > 1.0f) {
      _2779 = abs(_117);
      _2780 = abs(_118 + -1.0f);
      _2784 = saturate(1.0f - (dot(float2(_2779, _2780), float2(_2779, _2780)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
      _2789 = (_2784 * _2771);
      _2790 = (_2784 * _2772);
      _2791 = (_2784 * _2773);
    } else {
      _2789 = _2771;
      _2790 = _2772;
      _2791 = _2773;
    }
    if (_2418 && (_etcParams.z > 0.0f)) {
      _2821 = select((_2789 <= 0.0031308000907301903f), (_2789 * 12.920000076293945f), (((pow(_2789, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
      _2822 = select((_2790 <= 0.0031308000907301903f), (_2790 * 12.920000076293945f), (((pow(_2790, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
      _2823 = select((_2791 <= 0.0031308000907301903f), (_2791 * 12.920000076293945f), (((pow(_2791, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    } else {
      _2821 = _2789;
      _2822 = _2790;
      _2823 = _2791;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _2828 = (float)((uint)_2402);
      if (!(_2828 < _viewDir.w)) {
        if (!(_2828 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
          _2837 = _2821;
          _2838 = _2822;
          _2839 = _2823;
        } else {
          _2837 = 0.0f;
          _2838 = 0.0f;
          _2839 = 0.0f;
        }
      } else {
        _2837 = 0.0f;
        _2838 = 0.0f;
        _2839 = 0.0f;
      }
    } else {
      _2837 = _2821;
      _2838 = _2822;
      _2839 = _2823;
    }
    _2849 = exp2(log2(_2837 * 9.999999747378752e-05f) * 0.1593017578125f);
    _2850 = exp2(log2(_2838 * 9.999999747378752e-05f) * 0.1593017578125f);
    _2851 = exp2(log2(_2839 * 9.999999747378752e-05f) * 0.1593017578125f);
    SV_Target.x = exp2(log2((1.0f / ((_2849 * 18.6875f) + 1.0f)) * ((_2849 * 18.8515625f) + 0.8359375f)) * 78.84375f);
    SV_Target.y = exp2(log2((1.0f / ((_2850 * 18.6875f) + 1.0f)) * ((_2850 * 18.8515625f) + 0.8359375f)) * 78.84375f);
    SV_Target.z = exp2(log2((1.0f / ((_2851 * 18.6875f) + 1.0f)) * ((_2851 * 18.8515625f) + 0.8359375f)) * 78.84375f);
    SV_Target.w = _2415;
    break;
  }
  return SV_Target;
}
