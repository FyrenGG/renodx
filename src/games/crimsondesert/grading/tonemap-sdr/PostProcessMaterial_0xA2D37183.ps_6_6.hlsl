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
  bool _212;
  float _217;
  float _218;
  float _219;
  float _230;
  float _231;
  float _232;
  int _240;
  float _248;
  float _249;
  float _259;
  float _260;
  float _268;
  float _270;
  int _271;
  float _345;
  float _547;
  float _548;
  float _549;
  float _764;
  float _765;
  float _890;
  float _891;
  float _892;
  float _1015;
  float _1081;
  float _1082;
  float _1083;
  float _1084;
  int _1085;
  float _1090;
  float _1091;
  float _1092;
  float _1093;
  int _1094;
  float _1099;
  float _1100;
  float _1101;
  float _1102;
  int _1103;
  float _1259;
  float _1260;
  float _1261;
  float _1262;
  float _1263;
  float _1264;
  float _1370;
  float _1371;
  float _1372;
  float _1373;
  int _1374;
  float _1379;
  float _1380;
  float _1381;
  float _1382;
  int _1383;
  float _1388;
  float _1389;
  float _1390;
  float _1391;
  int _1392;
  float _1537;
  float _1538;
  float _1539;
  int _1540;
  float _1614;
  float _1615;
  float _1616;
  float _1653;
  float _1654;
  float _1655;
  float _2225;
  float _2226;
  float _2227;
  float _2274;
  float _2479;
  float _2480;
  float _2481;
  float _2574;
  float _2575;
  float _2576;
  float _2630;
  float _2631;
  float _2632;
  float _2648;
  float _2649;
  float _2650;
  float _2680;
  float _2681;
  float _2682;
  float _2696;
  float _2697;
  float _2698;
  float _278;
  float _282;
  float _286;
  float _287;
  float _291;
  float _295;
  float _296;
  float _300;
  float _304;
  float _307;
  float _308;
  float _309;
  float _310;
  float _314;
  float _322;
  float _323;
  float _324;
  float _325;
  float _326;
  float _327;
  float _337;
  float _341;
  int _342;
  float _349;
  float _350;
  float _351;
  float _352;
  float _356;
  float _360;
  float _361;
  float _365;
  float _369;
  float _370;
  float _374;
  float _378;
  float _379;
  float _381;
  float _382;
  float _383;
  float _385;
  float _390;
  float _391;
  float _392;
  float _393;
  float _394;
  float _395;
  float _397;
  float _405;
  float _407;
  float _411;
  float _415;
  float _422;
  float _423;
  float _424;
  float _425;
  float _435;
  float _439;
  float _443;
  float _447;
  float _453;
  float _454;
  float _455;
  float _456;
  float _457;
  float _458;
  float _469;
  float _473;
  float _477;
  float _479;
  float _485;
  float _486;
  float _487;
  float _488;
  float _489;
  float _490;
  float _501;
  float _503;
  float _505;
  float _507;
  float _515;
  float _516;
  float _517;
  float _519;
  float _523;
  float _526;
  float _530;
  float _542;
  float _554;
  float _555;
  float _556;
  float _557;
  int _567;
  float _575;
  int _585;
  float _593;
  int _596;
  float _604;
  float _609;
  float _610;
  float _611;
  int _619;
  int _627;
  float _630;
  int _633;
  float _641;
  int _642;
  float _650;
  int _656;
  float _664;
  float _672;
  float _673;
  float _675;
  bool _678;
  bool _679;
  bool _680;
  bool _681;
  float _691;
  float _694;
  int _699;
  int _707;
  int _722;
  int _730;
  int _746;
  int _754;
  int _766;
  float _774;
  int _779;
  float _787;
  int _789;
  float _797;
  int _800;
  float _808;
  int _816;
  float _826;
  float _827;
  float _828;
  float _829;
  float _830;
  float _831;
  int _841;
  float _849;
  int _852;
  float _860;
  int _864;
  float _872;
  int _877;
  float _885;
  float _886;
  int _893;
  float _901;
  int _909;
  float _919;
  float _920;
  float _921;
  float _922;
  float _923;
  float _924;
  int _955;
  float _963;
  int _971;
  float _979;
  int _994;
  float _1002;
  int _1004;
  float _1012;
  int _1016;
  float _1026;
  float _1027;
  float _1028;
  int _1029;
  float _1037;
  int _1038;
  float _1046;
  float _1047;
  float _1054;
  float _1068;
  float _1069;
  float _1070;
  float _1077;
  float _1078;
  float _1079;
  int _1087;
  int _1096;
  float _1104;
  float _1105;
  float _1106;
  uint _1113;
  uint _1116;
  uint _1121;
  uint _1124;
  uint _1129;
  uint _1132;
  float _1143;
  float _1144;
  float _1145;
  float _1146;
  float _1147;
  float _1148;
  float _1149;
  float _1155;
  bool _1156;
  float _1157;
  float _1158;
  float _1159;
  float _1160;
  int _1161;
  float _1167;
  float _1168;
  float _1169;
  float _1197;
  float4 _1206;
  int _1214;
  float _1222;
  int _1224;
  float _1232;
  float _1237;
  float _1241;
  int _1248;
  float _1256;
  float _1274;
  float _1277;
  float _1280;
  float _1283;
  int _1284;
  float _1292;
  float _1295;
  float _1296;
  float _1297;
  float _1298;
  float _1299;
  float _1300;
  float _1301;
  float _1302;
  float _1303;
  float _1304;
  float _1307;
  float _1310;
  float _1313;
  float _1316;
  float _1319;
  float _1322;
  float _1329;
  float _1330;
  float _1331;
  float _1338;
  float _1339;
  float _1340;
  float _1343;
  float _1346;
  float _1349;
  int _1354;
  float _1362;
  float _1363;
  float _1364;
  float _1365;
  float _1366;
  float _1367;
  float _1368;
  int _1376;
  int _1385;
  float _1393;
  float _1394;
  float _1395;
  float _1399;
  float _1400;
  float _1401;
  float _1416;
  float _1423;
  float _1424;
  float _1425;
  float _1436;
  bool _1437;
  float _1438;
  float _1439;
  float _1440;
  float _1441;
  int _1442;
  float _1452;
  float _1453;
  float _1454;
  float _1482;
  float _1487;
  float _1488;
  int _1489;
  float _1497;
  float _1502;
  float _1503;
  float _1504;
  float _1513;
  float _1515;
  float _1516;
  float _1518;
  float _1520;
  float _1521;
  float _1522;
  float _1528;
  float _1529;
  float _1544;
  float _1545;
  float _1546;
  float4 _1551;
  float4 _1555;
  int _1562;
  float _1570;
  float _1572;
  float _1579;
  float _1580;
  float _1581;
  int _1584;
  float4 _1589;
  int _1593;
  float _1601;
  float _1603;
  int _1617;
  float _1625;
  float _1632;
  float _1633;
  float _1634;
  int _1635;
  int _1643;
  bool _1648;
  int _1656;
  float _1664;
  float _1671;
  float _1699;
  float _1704;
  float _1705;
  int _1706;
  int _1714;
  float _1715;
  float _1721;
  float _1722;
  float _1723;
  float _1724;
  float _1728;
  float _1731;
  float _1733;
  bool _1736;
  bool _1737;
  bool _1738;
  bool _1739;
  float _1748;
  float _1749;
  float _1750;
  float _1751;
  float _1758;
  float _1759;
  float _1763;
  float _1765;
  float _1767;
  float _1773;
  float _1777;
  float _1790;
  float _1791;
  float _1793;
  float _1800;
  float _1802;
  float _1813;
  float _1832;
  bool _1835;
  bool _1836;
  bool _1837;
  bool _1838;
  float _1847;
  float _1858;
  float _1907;
  float _1910;
  float _1912;
  bool _1915;
  bool _1916;
  bool _1917;
  bool _1918;
  float _1927;
  float _1928;
  float _1930;
  float _1935;
  float _1942;
  float _1948;
  float _1959;
  float _1978;
  bool _1981;
  bool _1982;
  bool _1983;
  bool _1984;
  float _1993;
  float _2003;
  float _2049;
  float _2050;
  float _2054;
  float _2057;
  float _2059;
  bool _2062;
  bool _2063;
  bool _2064;
  bool _2065;
  float _2074;
  float _2075;
  float _2081;
  float _2088;
  float _2094;
  float _2105;
  float _2124;
  bool _2127;
  bool _2128;
  bool _2129;
  bool _2130;
  float _2139;
  float _2149;
  int _2206;
  float _2214;
  float _2228;
  float _2229;
  float _2236;
  int _2241;
  float _2249;
  float _2251;
  float _2258;
  float _2259;
  float _2260;
  uint _2261;
  bool _2277;
  float _2283;
  float _2332;
  float _2333;
  float _2334;
  float _2336;
  float _2343;
  float _2344;
  float _2345;
  float _2364;
  float _2365;
  float _2366;
  float _2367;
  float _2368;
  float _2369;
  float _2370;
  float _2371;
  float _2372;
  float _2418;
  float _2419;
  float _2420;
  float _2421;
  float _2422;
  float _2423;
  float _2424;
  float _2441;
  float _2442;
  float _2443;
  float _2444;
  float _2450;
  float _2453;
  float _2460;
  float _2461;
  float _2462;
  float _2491;
  float _2516;
  float _2517;
  float _2518;
  float _2537;
  float _2538;
  float _2539;
  float _2545;
  float _2549;
  float _2550;
  float _2551;
  float _2552;
  float _2557;
  float _2582;
  float _2586;
  float _2587;
  float _2588;
  float _2589;
  float _2619;
  float _2638;
  float _2639;
  float _2643;
  float _2687;
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
  _212 = (_85.x < 1.0000000116860974e-07f) || (_85.x == 1.0f);
  _217 = _157 - _viewPos.x;
  _218 = _158 - _viewPos.y;
  _219 = _159 - _viewPos.z;
  _230 = _viewPos.x - _viewPosPrev.x;
  _231 = _viewPos.y - _viewPosPrev.y;
  _232 = _viewPos.z - _viewPosPrev.z;
  _240 = WaveReadLaneFirst(_materialIndex);
  _248 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_240 < (uint)170000), _240, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._cubeSpaceGradientRatio);
  _249 = _76 * 0.009999999776482582f;
  _259 = frac((_viewPos.x * 0.009999999776482582f) - (_230 * _249)) + 2000.0f;
  _260 = frac((_viewPos.y * 0.009999999776482582f) - (_231 * _249)) + 2000.0f;
  _268 = (frac((_viewPos.z * 0.009999999776482582f) - (_232 * _249)) + 2000.0f) + (frac(_time.x * 0.10000000149011612f) - (_76 * 0.004999999888241291f));
  _270 = 0.0f;
  _271 = 0;
  while(true) {
    _278 = ((_270 * _201) + _259) * 4.0f;
    _282 = frac(abs(_278));
    _286 = (select((_278 >= (-0.0f - _278)), _282, (-0.0f - _282)) * 0.25f) + -0.125f;
    _287 = ((_270 * _202) + _260) * 4.0f;
    _291 = frac(abs(_287));
    _295 = (select((_287 >= (-0.0f - _287)), _291, (-0.0f - _291)) * 0.25f) + -0.125f;
    _296 = ((_270 * _203) + _268) * 4.0f;
    _300 = frac(abs(_296));
    _304 = (select((_296 >= (-0.0f - _296)), _300, (-0.0f - _300)) * 0.25f) + -0.125f;
    _307 = _time.x * 0.5f;
    _308 = cos(_307);
    _309 = sin(_307);
    _310 = -0.0f - _309;
    _314 = mad(_304, _308, (_309 * _295));
    _322 = abs(mad(_314, _310, (_308 * _286))) + -0.0005000000237487257f;
    _323 = abs(mad(_304, _310, (_308 * _295))) + -0.0005000000237487257f;
    _324 = abs(mad(_314, _308, (_309 * _286))) + -0.0005000000237487257f;
    _325 = max(_322, 0.0f);
    _326 = max(_323, 0.0f);
    _327 = max(_324, 0.0f);
    _337 = min(max(_322, max(_323, _324)), 0.0f) + sqrt(((_326 * _326) + (_325 * _325)) + (_327 * _327));
    if (!(_337 < (_270 * 0.0010000000474974513f))) {
      _341 = _337 + _270;
      _342 = _271 + 1;
      if ((int)_342 < (int)80) {
        _270 = _341;
        _271 = _342;
        continue;
      } else {
        _345 = _341;
      }
    } else {
      _345 = _270;
    }
    _349 = (_345 * _201) + _259;
    _350 = (_345 * _202) + _260;
    _351 = (_345 * _203) + _268;
    _352 = _349 * 4.0f;
    _356 = frac(abs(_352));
    _360 = (select((_352 >= (-0.0f - _352)), _356, (-0.0f - _356)) * 0.25f) + -0.125f;
    _361 = _350 * 4.0f;
    _365 = frac(abs(_361));
    _369 = (select((_361 >= (-0.0f - _361)), _365, (-0.0f - _365)) * 0.25f) + -0.125f;
    _370 = _351 * 4.0f;
    _374 = frac(abs(_370));
    _378 = (select((_370 >= (-0.0f - _370)), _374, (-0.0f - _374)) * 0.25f) + -0.125f;
    _379 = _369 * _308;
    _381 = _369 * _309;
    _382 = mad(_378, _308, _381);
    _383 = _360 * _308;
    _385 = _360 * _309;
    _390 = abs(mad(_382, _310, _383)) + -0.0005000000237487257f;
    _391 = abs(mad(_378, _310, _379)) + -0.0005000000237487257f;
    _392 = abs(mad(_382, _308, _385)) + -0.0005000000237487257f;
    _393 = max(_390, 0.0f);
    _394 = max(_391, 0.0f);
    _395 = max(_392, 0.0f);
    _397 = _394 * _394;
    _405 = min(max(_390, max(_391, _392)), 0.0f) + sqrt((_397 + (_393 * _393)) + (_395 * _395));
    _407 = (_349 + 0.0010000000474974513f) * 4.0f;
    _411 = frac(abs(_407));
    _415 = (select((_407 >= (-0.0f - _407)), _411, (-0.0f - _411)) * 0.25f) + -0.125f;
    _422 = abs(mad(_382, _310, (_415 * _308))) + -0.0005000000237487257f;
    _423 = abs(mad(_382, _308, (_415 * _309))) + -0.0005000000237487257f;
    _424 = max(_422, 0.0f);
    _425 = max(_423, 0.0f);
    _435 = (_350 + 0.0010000000474974513f) * 4.0f;
    _439 = frac(abs(_435));
    _443 = (select((_435 >= (-0.0f - _435)), _439, (-0.0f - _439)) * 0.25f) + -0.125f;
    _447 = mad(_378, _308, (_443 * _309));
    _453 = abs(mad(_447, _310, _383)) + -0.0005000000237487257f;
    _454 = abs(mad(_378, _310, (_443 * _308))) + -0.0005000000237487257f;
    _455 = abs(mad(_447, _308, _385)) + -0.0005000000237487257f;
    _456 = max(_453, 0.0f);
    _457 = max(_454, 0.0f);
    _458 = max(_455, 0.0f);
    _469 = (_351 + 0.0010000000474974513f) * 4.0f;
    _473 = frac(abs(_469));
    _477 = (select((_469 >= (-0.0f - _469)), _473, (-0.0f - _473)) * 0.25f) + -0.125f;
    _479 = mad(_477, _308, _381);
    _485 = abs(mad(_479, _310, _383)) + -0.0005000000237487257f;
    _486 = abs(mad(_477, _310, _379)) + -0.0005000000237487257f;
    _487 = abs(mad(_479, _308, _385)) + -0.0005000000237487257f;
    _488 = max(_485, 0.0f);
    _489 = max(_486, 0.0f);
    _490 = max(_487, 0.0f);
    _501 = min(max(_422, max(_391, _423)), 0.0f) + (sqrt(((_424 * _424) + _397) + (_425 * _425)) - _405);
    _503 = min(max(_453, max(_454, _455)), 0.0f) + (sqrt(((_457 * _457) + (_456 * _456)) + (_458 * _458)) - _405);
    _505 = min(max(_485, max(_486, _487)), 0.0f) + (sqrt(((_489 * _489) + (_488 * _488)) + (_490 * _490)) - _405);
    _507 = rsqrt(dot(float3(_501, _503, _505), float3(_501, _503, _505)));  // [sem: invLength]
    _515 = -0.0f - _sunDirection.x;
    _516 = -0.0f - _sunDirection.y;
    _517 = -0.0f - _sunDirection.z;
    _519 = rsqrt(dot(float3(_515, _516, _517), float3(_515, _516, _517)));  // [sem: invLength]
    _523 = dot(float3((_507 * _501), (_507 * _503), (_507 * _505)), float3((_519 * _515), (_519 * _516), (_519 * _517)));
    _526 = saturate((_345 * 0.25f) + -0.25f);  // [sem: expr_sat]
    _530 = (_526 * _526) * (3.0f - (_526 * 2.0f));
    if (_212) {
      _542 = exp2(log2(abs(_202)) * 0.5f) * _248;
      _547 = (_542 * 0.029999999329447746f);
      _548 = (_542 * 0.05000000074505806f);
      _549 = (_542 * 0.07999999821186066f);
    } else {
      _547 = 0.0f;
      _548 = 0.0f;
      _549 = 0.0f;
    }
    _554 = exp2(log2((exp2(log2((1.0f - _523) + (_530 * _523)) * 4.0f) * 0.20000000298023224f) + 0.10000000149011612f) * 1.5f);
    _555 = _554 * 0.699999988079071f;
    _556 = _554 * 0.4000000059604645f;
    _557 = _554 * 0.10000000149011612f;
    _567 = WaveReadLaneFirst(_materialIndex);
    _575 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_567 < (uint)170000), _567, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._cubeSpaceEffectRatio);
    _585 = WaveReadLaneFirst(_materialIndex);
    _593 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_585 < (uint)170000), _585, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiDotRatio);
    if (_593 > 0.0f) {
      _596 = WaveReadLaneFirst(_materialIndex);
      _604 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_596 < (uint)170000), _596, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._depthOuterMaskRadius);
      _609 = _157 - _mainPosition.x;
      _610 = _158 - _mainPosition.y;
      _611 = _159 - _mainPosition.z;
      _619 = WaveReadLaneFirst(_materialIndex);
      _627 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_619 < (uint)170000), _619, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._invertDepthMask);
      _630 = saturate(_85.x);  // [sem: expr_sat]
      _633 = WaveReadLaneFirst(_materialIndex);
      _641 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_633 < (uint)170000), _633, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._depthContrast);
      _642 = WaveReadLaneFirst(_materialIndex);
      _650 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_642 < (uint)170000), _642, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._depthIntensity);
      _656 = WaveReadLaneFirst(_materialIndex);
      _664 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_656 < (uint)170000), _656, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleDistortionIntensity);
      if (_664 > 0.0f) {
        _672 = (_157 - _mainPosition.x) * 0.019999999552965164f;
        _673 = (_159 - _mainPosition.z) * 0.019999999552965164f;
        _675 = atan(_673 / _672);
        _678 = (_672 < 0.0f);
        _679 = (_672 == 0.0f);
        _680 = (_673 >= 0.0f);
        _681 = (_673 < 0.0f);
        _691 = sqrt((_672 * _672) + (_673 * _673));
        _694 = select((_679 && _680), 1.5f, select((_679 && _681), -1.5f, (select((_678 && _681), (_675 + -3.1415927410125732f), select((_678 && _680), (_675 + 3.1415927410125732f), _675)) * 0.9549295902252197f)));
        _699 = WaveReadLaneFirst(_materialIndex);
        _707 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_699 < (uint)170000), _699, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._noiseTex);
        _722 = WaveReadLaneFirst(_materialIndex);
        _730 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_722 < (uint)170000), _722, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._noiseTex);
        _746 = WaveReadLaneFirst(_materialIndex);
        _754 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_746 < (uint)170000), _746, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._noiseTex);
        _764 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_754 < (uint)65000), _754, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_694 * 0.1666666716337204f), ((_691 * 0.1666666716337204f) - (_time.x * 0.05000000074505806f)))))).x);
        _765 = ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_730 < (uint)65000), _730, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_694 * 0.5f), ((_691 * 0.5f) - (_time.x * 0.10000000149011612f)))))).x) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_707 < (uint)65000), _707, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_694, (_691 - (_time.x * 0.05000000074505806f)))))).x));
      } else {
        _764 = 0.0f;
        _765 = 0.0f;
      }
      _766 = WaveReadLaneFirst(_materialIndex);
      _774 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_766 < (uint)170000), _766, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleIntensity);
      if (_774 > 0.0f) {
        _779 = WaveReadLaneFirst(_materialIndex);
        _787 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_779 < (uint)170000), _779, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleSpeed);
        _789 = WaveReadLaneFirst(_materialIndex);
        _797 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_789 < (uint)170000), _789, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRipplePhaseOffset);
        _800 = WaveReadLaneFirst(_materialIndex);
        _808 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_800 < (uint)170000), _800, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleWidth);
        _816 = WaveReadLaneFirst(_materialIndex);
        _826 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_816 < (uint)170000), _816, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.x);
        _827 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_816 < (uint)170000), _816, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.y);
        _828 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_816 < (uint)170000), _816, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.z);
        _829 = _826 + (_157 - _mainPosition.x);
        _830 = _827 + (_158 - _mainPosition.y);
        _831 = _828 + (_159 - _mainPosition.z);
        _841 = WaveReadLaneFirst(_materialIndex);
        _849 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_841 < (uint)170000), _841, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._rippleCount);
        _852 = WaveReadLaneFirst(_materialIndex);
        _860 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_852 < (uint)170000), _852, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleDistortionIntensity);
        _864 = WaveReadLaneFirst(_materialIndex);
        _872 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_864 < (uint)170000), _864, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleContrast);
        _877 = WaveReadLaneFirst(_materialIndex);
        _885 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_877 < (uint)170000), _877, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleIntensity);
        _886 = _885 * saturate(exp2(log2(frac(((((1.0f / max(9.999999747378752e-06f, _808)) * exp2(log2(sqrt(sqrt(dot(float3(_829, _830, _831), float3(_829, _830, _831))))) * 1.2000000476837158f)) * _849) - frac(_797 + (_787 * _time.x))) - (_860 * _764))) * _872));
        _890 = _886;
        _891 = (_886 * 0.033104754984378815f);
        _892 = (_886 * 0.043233636766672134f);
      } else {
        _890 = 0.0f;
        _891 = 0.0f;
        _892 = 0.0f;
      }
      _893 = WaveReadLaneFirst(_materialIndex);
      _901 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_893 < (uint)170000), _893, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._rippleWidth);
      _909 = WaveReadLaneFirst(_materialIndex);
      _919 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_909 < (uint)170000), _909, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.x);
      _920 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_909 < (uint)170000), _909, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.y);
      _921 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_909 < (uint)170000), _909, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.z);
      _922 = _919 + (_157 - _mainPosition.x);
      _923 = _920 + (_158 - _mainPosition.y);
      _924 = _921 + (_159 - _mainPosition.z);
      _955 = WaveReadLaneFirst(_materialIndex);
      _963 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_955 < (uint)170000), _955, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._rippleCount);
      _971 = WaveReadLaneFirst(_materialIndex);
      _979 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_971 < (uint)170000), _971, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._rippleSpeed);
      if ((sqrt(((_217 * _217) + (_218 * _218)) + (_219 * _219)) + -1500.0f) < 1.0f) {
        _994 = WaveReadLaneFirst(_materialIndex);
        _1002 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_994 < (uint)170000), _994, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiDotDensity);
        _1015 = _1002;
      } else {
        _1004 = WaveReadLaneFirst(_materialIndex);
        _1012 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1004 < (uint)170000), _1004, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiDotDensity);
        _1015 = (_1012 * 0.25f);
      }
      _1016 = WaveReadLaneFirst(_materialIndex);
      _1026 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1016 < (uint)170000), _1016, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiScrollSpeed.x);
      _1027 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1016 < (uint)170000), _1016, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiScrollSpeed.y);
      _1028 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1016 < (uint)170000), _1016, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiScrollSpeed.z);
      _1029 = WaveReadLaneFirst(_materialIndex);
      _1037 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1029 < (uint)170000), _1029, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiOffset);
      _1038 = WaveReadLaneFirst(_materialIndex);
      _1046 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1038 < (uint)170000), _1038, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiMovementSpeed);
      _1047 = _76 * 1.5f;
      _1054 = _890 * 3.0f;
      _1068 = (_time.x * _1026) + (_1015 * ((_157 - (_230 * _1047)) - _1054));
      _1069 = (_time.x * _1027) + (_1015 * ((_158 - (_231 * _1047)) - _1054));
      _1070 = (_time.x * _1028) + (_1015 * ((_159 - (_232 * _1047)) - _1054));
      _1077 = floor(_1068);
      _1078 = floor(_1069);
      _1079 = floor(_1070);
      _1081 = 100000000376832.0f;
      _1082 = 0.0f;
      _1083 = 0.0f;
      _1084 = 0.0f;
      _1085 = -1;
      while(true) {
        _1090 = _1081;
        _1091 = _1082;
        _1092 = _1083;
        _1093 = _1084;
        _1094 = -1;
        while(true) {
          _1099 = _1090;
          _1100 = _1091;
          _1101 = _1092;
          _1102 = _1093;
          _1103 = -1;
          while(true) {
            _1104 = float((int)(_1085));
            _1105 = float((int)(_1094));
            _1106 = float((int)(_1103));
            _1113 = asint((_1105 + _1078)) * 1025;
            _1116 = (((uint)(_1113) >> 6) ^ _1113) * 9;
            _1121 = asint((_1106 + _1079)) * 1025;
            _1124 = (((uint)(_1121) >> 6) ^ _1121) * 9;
            _1129 = ((((int)((((uint)(_1116) >> 11) ^ _1116) * 32769)) ^ asint((_1104 + _1077))) ^ ((int)((((uint)(_1124) >> 11) ^ _1124) * 32769))) * 1025;
            _1132 = (((uint)(_1129) >> 6) ^ _1129) * 9;
            _1143 = sin(((((_time.x + 1000.0f) * _1046) + _1037) * 2.0f) * (asfloat(((((int)((((uint)(_1132) >> 11) ^ _1132) * 32769)) & 8388607) | 1065353216)) + -1.0f));
            _1144 = _1143 + _1104;
            _1145 = _1143 + _1105;
            _1146 = _1143 + _1106;
            _1147 = (frac(_1068) + -0.5f) - _1144;
            _1148 = (frac(_1069) + -0.5f) - _1145;
            _1149 = (frac(_1070) + -0.5f) - _1146;
            _1155 = sqrt(((_1148 * _1148) + (_1147 * _1147)) + (_1149 * _1149));
            _1156 = (_1155 < _1099);
            _1157 = select(_1156, _1155, _1099);
            _1158 = select(_1156, _1144, _1100);
            _1159 = select(_1156, _1145, _1101);
            _1160 = select(_1156, _1146, _1102);
            _1161 = _1103 + 1;
            if (!(_1161 == 2)) {
              _1099 = _1157;
              _1100 = _1158;
              _1101 = _1159;
              _1102 = _1160;
              _1103 = _1161;
              continue;
            }
            while(true) {
              _1096 = _1094 + 1;
              if (!(_1096 == 2)) {
                _1090 = _1157;
                _1091 = _1158;
                _1092 = _1159;
                _1093 = _1160;
                _1094 = _1096;
                __loop_jump_target = 1089;
                break;
              }
              while(true) {
                _1087 = _1085 + 1;
                if (!(_1087 == 2)) {
                  _1081 = _1157;
                  _1082 = _1158;
                  _1083 = _1159;
                  _1084 = _1160;
                  _1085 = _1087;
                  __loop_jump_target = 1080;
                  break;
                }
                _1167 = (_1158 + _1077) / _1015;
                _1168 = (_1159 + _1078) / _1015;
                _1169 = (_1160 + _1079) / _1015;
                _1197 = mad((_viewProj[2].w), _1169, mad((_viewProj[1].w), _1168, ((_viewProj[0].w) * _1167))) + (_viewProj[3].w);
  // [sem: _3__36__0__0__g_sceneColor_sample]
                _1206 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((mad((_viewProj[2].x), _1169, mad((_viewProj[1].x), _1168, ((_viewProj[0].x) * _1167))) + (_viewProj[3].x)) / _1197) * 0.5f) + 0.5f), (0.5f - (((mad((_viewProj[2].y), _1169, mad((_viewProj[1].y), _1168, ((_viewProj[0].y) * _1167))) + (_viewProj[3].y)) / _1197) * 0.5f))));
                _1214 = WaveReadLaneFirst(_materialIndex);
                _1222 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1214 < (uint)170000), _1214, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiDotThreshold);
                _1224 = WaveReadLaneFirst(_materialIndex);
                _1232 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1224 < (uint)170000), _1224, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._rippleIntensity);
                _1237 = ((_1222 * select(_212, 0.0f, _1157)) - (_1232 * (((_890 * 0.5f) + 1.0f) - ((frac((((exp2(log2(sqrt(sqrt(dot(float3(_922, _923, _924), float3(_922, _923, _924))))) * 1.2000000476837158f) * 40.0f) * (1.0f / max(9.999999747378752e-06f, _901))) * _963) - (_979 * (_time.x + (_765 * 1.5f)))) + (_765 * 0.30000001192092896f)) * max(0.0f, (1.0f - ((1.0f - ((1.0f / max(9.999999747378752e-06f, _604)) * sqrt(dot(float3(_609, _610, _611), float3(_609, _610, _611))))) * 2.0f))))))) + min(max(saturate(exp2(log2(_650 * select((((float)((uint)_627)) == 1.0f), (1.0f - _630), _630)) * _641)), 0.0f), 1.0f);
                _1241 = saturate(_1237 / max((0.10000000149011612f / _1237), 0.0f));  // [sem: expr_sat]
                _1248 = WaveReadLaneFirst(_materialIndex);
                _1256 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1248 < (uint)170000), _1248, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiDotRatio);
                _1259 = (_1256 * (1.0f - floor((_1241 * _1241) * (3.0f - (_1241 * 2.0f)))));
                _1260 = select(_212, 0.0f, _1206.x);
                _1261 = select(_212, 0.0f, _1206.y);
                _1262 = select(_212, 0.0f, _1206.z);
                _1263 = _891;
                _1264 = _892;
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
          if (__loop_jump_target == 1089) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
          break;
        }
        if (__loop_jump_target == 1080) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
    } else {
      _1259 = 0.0f;
      _1260 = 0.0f;
      _1261 = 0.0f;
      _1262 = 0.0f;
      _1263 = 0.0f;
      _1264 = 0.0f;
    }
    _1274 = 0.0010000000474974513f / max(0.0010000000474974513f, _exposure0.x);
    _1277 = (((_1260 * _1259) + (saturate(_575 * (lerp(_555, _547, _530))) * _30)) + (_1263 * 0.009999999776482582f)) + _1274;
    _1280 = (((_1261 * _1259) + (saturate(_575 * (lerp(_556, _548, _530))) * _30)) + (_1263 * 0.009999999776482582f)) + _1274;
    _1283 = (((_1262 * _1259) + (saturate(_575 * (lerp(_557, _549, _530))) * _30)) + (_1264 * 0.009999999776482582f)) + _1274;
    _1284 = WaveReadLaneFirst(_materialIndex);
    _1292 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1284 < (uint)170000), _1284, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._radius);
    if (_1292 > 0.0010000000474974513f) {
      _1295 = ddx_coarse(_201);
      _1296 = ddx_coarse(_202);
      _1297 = ddx_coarse(_203);
      _1298 = ddy_coarse(_201);
      _1299 = ddy_coarse(_202);
      _1300 = ddy_coarse(_203);
      _1301 = ddx_coarse(TEXCOORD.x);
      _1302 = ddx_coarse(TEXCOORD.y);
      _1303 = ddy_coarse(TEXCOORD.x);
      _1304 = ddy_coarse(TEXCOORD.y);
      _1307 = (_1299 * _115) - (_1300 * _114);
      _1310 = (_1300 * _113) - (_1298 * _115);
      _1313 = (_1298 * _114) - (_1299 * _113);
      _1316 = (_1297 * _114) - (_1296 * _115);
      _1319 = (_1295 * _115) - (_1297 * _113);
      _1322 = (_1296 * _113) - (_1295 * _114);
      _1329 = (_1303 * _1316) + (_1307 * _1301);
      _1330 = (_1303 * _1319) + (_1310 * _1301);
      _1331 = (_1303 * _1322) + (_1313 * _1301);
      _1338 = (_1304 * _1316) + (_1307 * _1302);
      _1339 = (_1304 * _1319) + (_1310 * _1302);
      _1340 = (_1304 * _1322) + (_1302 * _1313);
      _1343 = max(dot(float3(_1329, _1330, _1331), float3(_1329, _1330, _1331)), dot(float3(_1338, _1339, _1340), float3(_1338, _1339, _1340)));
      _1346 = rsqrt(select((!(_1343 == 0.0f)), _1343, 0.10000000149011612f));  // [sem: rsqrt_val]
      _1349 = _1346 * _201;
      _1354 = WaveReadLaneFirst(_materialIndex);
      _1362 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1354 < (uint)170000), _1354, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._squareSize);
      _1363 = _1362 * _157;
      _1364 = _1362 * _158;
      _1365 = _1362 * _159;
      _1366 = floor(_1363);
      _1367 = floor(_1364);
      _1368 = floor(_1365);
      _1370 = 10.0f;
      _1371 = 0.0f;
      _1372 = 0.0f;
      _1373 = 0.0f;
      _1374 = -1;
      while(true) {
        _1379 = _1370;
        _1380 = _1371;
        _1381 = _1372;
        _1382 = _1373;
        _1383 = -1;
        while(true) {
          _1388 = _1379;
          _1389 = _1380;
          _1390 = _1381;
          _1391 = _1382;
          _1392 = -1;
          while(true) {
            _1393 = float((int)(_1392));
            _1394 = float((int)(_1383));
            _1395 = float((int)(_1374));
            _1399 = sin(_1393 + _1366);
            _1400 = sin(_1394 + _1367);
            _1401 = sin(_1395 + _1368);
            _1416 = _time.x * 0.20000000298023224f;
            _1423 = sin(_1416 * frac(sin(dot(float3(_1399, _1400, _1401), float3(12.98900032043457f, 78.23300170898438f, 37.71900177001953f))) * 143758.546875f)) + _1393;
            _1424 = sin(_1416 * frac(sin(dot(float3(_1399, _1400, _1401), float3(39.34600067138672f, 11.135000228881836f, 83.15499877929688f))) * 143758.546875f)) + _1394;
            _1425 = sin(_1416 * frac(sin(dot(float3(_1399, _1400, _1401), float3(73.15599822998047f, 52.23500061035156f, 9.151000022888184f))) * 143758.546875f)) + _1395;
            _1436 = max(abs((_1366 - _1363) + _1423), max(abs((_1367 - _1364) + _1424), abs((_1368 - _1365) + _1425)));
            _1437 = (_1436 < _1388);
            _1438 = select(_1437, _1436, _1388);
            _1439 = select(_1437, _1423, _1389);
            _1440 = select(_1437, _1424, _1390);
            _1441 = select(_1437, _1425, _1391);
            _1442 = _1392 + 1;
            if (!(_1442 == 2)) {
              _1388 = _1438;
              _1389 = _1439;
              _1390 = _1440;
              _1391 = _1441;
              _1392 = _1442;
              continue;
            }
            while(true) {
              _1385 = _1383 + 1;
              if (!(_1385 == 2)) {
                _1379 = _1438;
                _1380 = _1439;
                _1381 = _1440;
                _1382 = _1441;
                _1383 = _1385;
                __loop_jump_target = 1378;
                break;
              }
              while(true) {
                _1376 = _1374 + 1;
                if (!(_1376 == 2)) {
                  _1370 = _1438;
                  _1371 = _1439;
                  _1372 = _1440;
                  _1373 = _1441;
                  _1374 = _1376;
                  __loop_jump_target = 1369;
                  break;
                }
                _1452 = (_1439 + _1366) / _1362;
                _1453 = (_1440 + _1367) / _1362;
                _1454 = (_1441 + _1368) / _1362;
                _1482 = mad((_viewProj[2].w), _1454, mad((_viewProj[1].w), _1453, ((_viewProj[0].w) * _1452))) + (_viewProj[3].w);
                _1487 = (((mad((_viewProj[2].x), _1454, mad((_viewProj[1].x), _1453, ((_viewProj[0].x) * _1452))) + (_viewProj[3].x)) / _1482) * 0.5f) + 0.5f;
                _1488 = 0.5f - (((mad((_viewProj[2].y), _1454, mad((_viewProj[1].y), _1453, ((_viewProj[0].y) * _1452))) + (_viewProj[3].y)) / _1482) * 0.5f);
                _1489 = WaveReadLaneFirst(_materialIndex);
                _1497 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1489 < (uint)170000), _1489, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._radius);
                _1502 = _1452 - _mainPosition.x;
                _1503 = _1453 - _mainPosition.y;
                _1504 = _1454 - _mainPosition.z;
  // [sem: expr_sat]
                _1513 = saturate(1.0f - ((1.0f - ((1.0f / max(9.999999747378752e-06f, _1497)) * sqrt(dot(float3(_1502, _1503, _1504), float3(_1502, _1503, _1504))))) * 1.0152283906936646f));
                _1515 = 1.0f - saturate(_1513);
                _1516 = _1513 * 0.5f;
                _1518 = (TEXCOORD.x - _1487) / _1515;
                _1520 = (TEXCOORD.y - _1488) / _1515;
                _1521 = sin(_1516);
                _1522 = cos(_1516);
                _1528 = mad((-0.0f - _1521), _1520, (_1522 * _1518)) + _1487;
                _1529 = mad(_1522, _1520, (_1521 * _1518)) + _1488;
                _1537 = _1277;
                _1538 = _1280;
                _1539 = _1283;
                _1540 = 1;
                while(true) {
                  _1544 = (float((int)(6 - _1540)) * 0.1666666716337204f) * ((saturate(_85.x * 1.5f) * 0.5f) * saturate(frac(frac(dot(float2((_66 + 32.665000915527344f), (_67 + 11.8149995803833f)), float2(0.0671105608344078f, 0.005837149918079376f))) * 52.98291778564453f) + 0.5f));
                  _1545 = _1544 * mad((_1346 * _1331), _203, mad((_1346 * _1330), _202, (_1349 * _1329)));
                  _1546 = _1544 * mad((_1346 * _1340), _203, mad((_1346 * _1339), _202, (_1349 * _1338)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1551 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1545 + TEXCOORD.x), (_1546 + TEXCOORD.y)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1555 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1545 + _1528), (_1546 + _1529)));
                  _1562 = WaveReadLaneFirst(_materialIndex);
                  _1570 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1562 < (uint)170000), _1562, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._maskThreshold);
                  _1572 = (float)((bool)(uint)(_1551.w < _1570));
                  _1579 = (_1572 * ((_1555.x * 0.4000000059604645f) - _1537)) + _1537;
                  _1580 = (_1572 * ((_1555.y * 0.4000000059604645f) - _1538)) + _1538;
                  _1581 = (_1572 * ((_1555.z * 0.4000000059604645f) - _1539)) + _1539;
                  if (!(_1551.w > 0.8999999761581421f)) {
                    _1584 = _1540 + 1;
                    if ((int)_1584 < (int)6) {
                      _1537 = _1579;
                      _1538 = _1580;
                      _1539 = _1581;
                      _1540 = _1584;
                      continue;
                    }
                  }
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1589 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_1528, _1529));
                  _1593 = WaveReadLaneFirst(_materialIndex);
                  _1601 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1593 < (uint)170000), _1593, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._maskThreshold);
                  _1603 = (float)((bool)(uint)(_1551.w < _1601));
                  _1614 = ((_1603 * (_1589.x - _1579)) + _1579);
                  _1615 = ((_1603 * (_1589.y - _1580)) + _1580);
                  _1616 = ((_1603 * (_1589.z - _1581)) + _1581);
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
          if (__loop_jump_target == 1378) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
          break;
        }
        if (__loop_jump_target == 1369) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
    } else {
      _1614 = _1277;
      _1615 = _1280;
      _1616 = _1283;
    }
    _1617 = WaveReadLaneFirst(_materialIndex);
    _1625 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1617 < (uint)170000), _1617, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ppWorldLoadingRatio);
    _1632 = (_1625 * (_1614 - _206.x)) + _206.x;
    _1633 = (_1625 * (_1615 - _206.y)) + _206.y;
    _1634 = (_1625 * (_1616 - _206.z)) + _206.z;
    _1635 = WaveReadLaneFirst(_materialIndex);
    _1643 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1635 < (uint)170000), _1635, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._excludePlayer);
    if (_1643 == 1) {
      _1648 = (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_32.x)))))) + 0.5f) * TEXCOORD.x), int((float((int)(int(float((int)((int)(_32.y)))))) + 0.5f) * TEXCOORD.y), 0)))).x) & 255) == _renderPassSelfPlayer);
      _1653 = select(_1648, _206.x, _1632);
      _1654 = select(_1648, _206.y, _1633);
      _1655 = select(_1648, _206.z, _1634);
    } else {
      _1653 = _1632;
      _1654 = _1633;
      _1655 = _1634;
    }
    _1656 = WaveReadLaneFirst(_materialIndex);
    _1664 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1656 < (uint)170000), _1656, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._starburstIntensity);
    if (_1664 > 0.0f) {
      _1671 = _mainPosition.y + 1.5f;
      _1699 = mad((_viewProj[2].w), _mainPosition.z, mad((_viewProj[1].w), _1671, ((_viewProj[0].w) * _mainPosition.x))) + (_viewProj[3].w);
      _1704 = (((mad((_viewProj[2].x), _mainPosition.z, mad((_viewProj[1].x), _1671, ((_viewProj[0].x) * _mainPosition.x))) + (_viewProj[3].x)) / _1699) * 0.5f) + 0.5f;
      _1705 = 0.5f - (((mad((_viewProj[2].y), _mainPosition.z, mad((_viewProj[1].y), _1671, ((_viewProj[0].y) * _mainPosition.x))) + (_viewProj[3].y)) / _1699) * 0.5f);
      _1706 = WaveReadLaneFirst(_materialIndex);
      _1714 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1706 < (uint)170000), _1706, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._noiseTex);
      _1715 = TEXCOORD.x - _1704;
      _1721 = (_bufferSizeAndInvSize.y / _bufferSizeAndInvSize.x) * (TEXCOORD.y - _1705);
      _1722 = _1715 * 1.100000023841858f;
      _1723 = _1721 * 1.100000023841858f;
      _1724 = dot(float2(_1704, _1705), float2(0.25f, 0.25f));
      _1728 = sqrt((_1723 * _1723) + (_1722 * _1722));
      _1731 = (pow(_1728, 3.0f));
      _1733 = atan(_1723 / _1722);
      _1736 = (_1722 < 0.0f);
      _1737 = (_1722 == 0.0f);
      _1738 = (_1723 >= 0.0f);
      _1739 = (_1723 < 0.0f);
      _1748 = select((_1737 && _1738), 15.707963943481445f, select((_1737 && _1739), -15.707963943481445f, (select((_1736 && _1739), (_1733 + -3.1415927410125732f), select((_1736 && _1738), (_1733 + 3.1415927410125732f), _1733)) * 10.0f)));
      _1749 = _1731 * 5.0f;
      _1750 = _1724 * 0.00795774720609188f;
      _1751 = _1724 * 4.774648189544678f;
      _1758 = frac(abs(_1750));
      _1759 = frac(abs(_1751));
      _1763 = select((_1751 >= (-0.0f - _1751)), _1759, (-0.0f - _1759));
      _1765 = sin(select((_1750 >= (-0.0f - _1750)), _1758, (-0.0f - _1758)) * 6.2831854820251465f);
      _1767 = 12.345600128173828f - _1765;
      _1773 = ((_1749 + 2.345599889755249f) - _1765) * 0.015625f;
      _1777 = frac(_time.x * 0.05000000074505806f);
  // [sem: expr_sat]
      _1790 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1714 < (uint)65000), _1714, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1767 + _1748) * 0.015625f) - _1777), (_1773 - _1777))))).x) * 1.5f) * 1.2000000476837158f);
      _1791 = _1765 + 3.456700086593628f;
      _1793 = _1765 + 45.67890167236328f;
      _1800 = frac(_time.x * 0.05000000074505806f);
      _1802 = ((_1793 + _1749) * 0.015625f) - _1800;
      _1813 = (_1731 * 0.078125f) - _1800;
      _1832 = atan((-0.0f - _1723) / (-0.0f - _1722));
      _1835 = (_1722 > -0.0f);
      _1836 = (_1722 == -0.0f);
      _1837 = (_1723 <= -0.0f);
      _1838 = (_1723 > -0.0f);
      _1847 = select((_1836 && _1837), 15.707963943481445f, select((_1836 && _1838), -15.707963943481445f, (select((_1835 && _1838), (_1832 + -3.1415927410125732f), select((_1835 && _1837), (_1832 + 3.1415927410125732f), _1832)) * 10.0f)));
  // [sem: expr_sat]
      _1858 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1714 < (uint)65000), _1714, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1847 + _1767) * 0.015625f) - _1800), (_1773 - _1800))))).x) * 1.5f) * 1.2000000476837158f);
      _1907 = sqrt((_1721 * _1721) + (_1715 * _1715));
      _1910 = (pow(_1907, 3.0f));
      _1912 = atan(_1721 / _1715);
      _1915 = (_1715 < 0.0f);
      _1916 = (_1715 == 0.0f);
      _1917 = (_1721 >= 0.0f);
      _1918 = (_1721 < 0.0f);
      _1927 = select((_1916 && _1917), 15.707963943481445f, select((_1916 && _1918), -15.707963943481445f, (select((_1915 && _1918), (_1912 + -3.1415927410125732f), select((_1915 && _1917), (_1912 + 3.1415927410125732f), _1912)) * 10.0f)));
      _1928 = _1910 * 5.0f;
      _1930 = 2.345599889755249f - _1765;
      _1935 = ((_1930 + _1928) * 0.015625f) - _1800;
  // [sem: expr_sat]
      _1942 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1714 < (uint)65000), _1714, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1927 + _1767) * 0.015625f) - _1800), _1935)))).x) * 1.5f) * 1.2000000476837158f);
      _1948 = ((_1793 + _1928) * 0.015625f) - _1800;
      _1959 = (_1910 * 0.078125f) - _1800;
      _1978 = atan((-0.0f - _1721) / (-0.0f - _1715));
      _1981 = (_1715 > -0.0f);
      _1982 = (_1715 == -0.0f);
      _1983 = (_1721 <= -0.0f);
      _1984 = (_1721 > -0.0f);
      _1993 = select((_1982 && _1983), 15.707963943481445f, select((_1982 && _1984), -15.707963943481445f, (select((_1981 && _1984), (_1978 + -3.1415927410125732f), select((_1981 && _1983), (_1978 + 3.1415927410125732f), _1978)) * 10.0f)));
  // [sem: expr_sat]
      _2003 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1714 < (uint)65000), _1714, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1993 + _1767) * 0.015625f) - _1800), _1935)))).x) * 1.5f) * 1.2000000476837158f);
      _2049 = _1715 * 0.8999999761581421f;
      _2050 = _1721 * 0.8999999761581421f;
      _2054 = sqrt((_2050 * _2050) + (_2049 * _2049));
      _2057 = (pow(_2054, 3.0f));
      _2059 = atan(_2050 / _2049);
      _2062 = (_2049 < 0.0f);
      _2063 = (_2049 == 0.0f);
      _2064 = (_2050 >= 0.0f);
      _2065 = (_2050 < 0.0f);
      _2074 = select((_2063 && _2064), 15.707963943481445f, select((_2063 && _2065), -15.707963943481445f, (select((_2062 && _2065), (_2059 + -3.1415927410125732f), select((_2062 && _2064), (_2059 + 3.1415927410125732f), _2059)) * 10.0f)));
      _2075 = _2057 * 5.0f;
      _2081 = ((_1930 + _2075) * 0.015625f) - _1800;
  // [sem: expr_sat]
      _2088 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1714 < (uint)65000), _1714, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2074 + _1767) * 0.015625f) - _1800), _2081)))).x) * 1.5f) * 1.2000000476837158f);
      _2094 = ((_1793 + _2075) * 0.015625f) - _1800;
      _2105 = (_2057 * 0.078125f) - _1800;
      _2124 = atan((-0.0f - _2050) / (-0.0f - _2049));
      _2127 = (_2049 > -0.0f);
      _2128 = (_2049 == -0.0f);
      _2129 = (_2050 <= -0.0f);
      _2130 = (_2050 > -0.0f);
      _2139 = select((_2128 && _2129), 15.707963943481445f, select((_2128 && _2130), -15.707963943481445f, (select((_2127 && _2130), (_2124 + -3.1415927410125732f), select((_2127 && _2129), (_2124 + 3.1415927410125732f), _2124)) * 10.0f)));
  // [sem: expr_sat]
      _2149 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1714 < (uint)65000), _1714, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2139 + _1767) * 0.015625f) - _1800), _2081)))).x) * 1.5f) * 1.2000000476837158f);
      _2206 = WaveReadLaneFirst(_materialIndex);
      _2214 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_2206 < (uint)170000), _2206, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._starburstIntensity);
      _2225 = (saturate(_2214 * exp2(log2(exp2(log2(saturate(1.100000023841858f - (_1728 * 24.0f))) * 10.199999809265137f) + (exp2(log2(saturate(1.0f - (_1728 * 2.0f))) * 12.199999809265137f) * exp2(log2(max(((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1714 < (uint)65000), _1714, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1748 * 0.015625f) - _1800), _1813)))).x) * 1.5f) * 1.2000000476837158f) + _1763) * 6.2831854820251465f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1714 < (uint)65000), _1714, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1791 + _1748) * 0.015625f) - _1800), _1802)))).x) * 1.5f) * 1.2000000476837158f) - _1790)) + _1790), ((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1714 < (uint)65000), _1714, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1847 * 0.015625f) - _1800), _1813)))).x) * 1.5f) * 1.2000000476837158f) + _1763) * 6.2831854820251465f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1714 < (uint)65000), _1714, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1847 + _1791) * 0.015625f) - _1800), _1802)))).x) * 1.5f) * 1.2000000476837158f) - _1858)) + _1858))) * 3.0f))) * 1.399999976158142f)) * _30);
      _2226 = (saturate(_2214 * exp2(log2((exp2(log2(saturate(1.100000023841858f - (_1907 * 24.0f))) * 10.199999809265137f) + (exp2(log2(saturate(1.0f - (_1907 * 2.0f))) * 12.199999809265137f) * exp2(log2(max(((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1714 < (uint)65000), _1714, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1927 * 0.015625f) - _1800), _1959)))).x) * 1.5f) * 1.2000000476837158f) + _1763) * 6.2831854820251465f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1714 < (uint)65000), _1714, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1927 + _1791) * 0.015625f) - _1800), _1948)))).x) * 1.5f) * 1.2000000476837158f) - _1942)) + _1942), ((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1714 < (uint)65000), _1714, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1993 * 0.015625f) - _1800), _1959)))).x) * 1.5f) * 1.2000000476837158f) + _1763) * 6.2831854820251465f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1714 < (uint)65000), _1714, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1993 + _1791) * 0.015625f) - _1800), _1948)))).x) * 1.5f) * 1.2000000476837158f) - _2003)) + _2003))) * 3.0f))) * 0.6038274168968201f) * 1.399999976158142f)) * _30);
      _2227 = (saturate(_2214 * exp2(log2((exp2(log2(saturate(1.100000023841858f - (_2054 * 24.0f))) * 10.199999809265137f) + (exp2(log2(saturate(1.0f - (_2054 * 2.0f))) * 12.199999809265137f) * exp2(log2(max(((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1714 < (uint)65000), _1714, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2074 * 0.015625f) - _1800), _2105)))).x) * 1.5f) * 1.2000000476837158f) + _1763) * 6.2831854820251465f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1714 < (uint)65000), _1714, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2074 + _1791) * 0.015625f) - _1800), _2094)))).x) * 1.5f) * 1.2000000476837158f) - _2088)) + _2088), ((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1714 < (uint)65000), _1714, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2139 * 0.015625f) - _1800), _2105)))).x) * 1.5f) * 1.2000000476837158f) + _1763) * 6.2831854820251465f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1714 < (uint)65000), _1714, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2139 + _1791) * 0.015625f) - _1800), _2094)))).x) * 1.5f) * 1.2000000476837158f) - _2149)) + _2149))) * 3.0f))) * 0.4479884207248688f) * 1.399999976158142f)) * _30);
    } else {
      _2225 = 0.0f;
      _2226 = 0.0f;
      _2227 = 0.0f;
    }
    _2228 = TEXCOORD.x + -0.5f;
    _2229 = TEXCOORD.y + -0.5f;
    _2236 = saturate((sqrt((_2229 * _2229) + (_2228 * _2228)) + -0.009999999776482582f) * 1.0101009607315063f);  // [sem: expr_sat]
    _2241 = WaveReadLaneFirst(_materialIndex);
    _2249 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_2241 < (uint)170000), _2241, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._vignetteIntensity);
    _2251 = 1.0f - (((_2236 * _2236) * (3.0f - (_2236 * 2.0f))) * _2249);
    _2258 = max(0.0f, (_2251 * (_2225 + _1653)));
    _2259 = max(0.0f, (_2251 * (_2226 + _1654)));
    _2260 = max(0.0f, (_2251 * (_2227 + _1655)));
    _2261 = uint(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _2274 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _2261, 0)))).x) & 127)))) + 0.5f);
    } else {
      _2274 = 1.0f;
    }
    _2277 = (_localToneMappingParams.w > 0.0f);
    if (_2277) {
      // RenoDX: >>> [Patch: ScreenEffectTonemapReplace] [Version: 1.12.02]
      // Description: This is the SDR permutation of screen-effect composite PostProcessMaterial variant 0xA2D37183 (a screen-effect composite variant; its bindless parameter struct is PostProcessWorldLoadingStruct). Like every member of this family it statically inlines the full vanilla tonemap pipeline and can own the visible final output while its screen effect plays, so an unreplaced vanilla curve renders the whole screen with vanilla colors (flat/grey compared to the RenoDX look) for the effect's duration. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, wash, user image adjust, color-blind matrix).
      float3 _rndx_tonemapped_color = TonemapReplacer(float3(_2258, _2259, _2260));
      _2537 = _rndx_tonemapped_color.x;
      _2538 = _rndx_tonemapped_color.y;
      _2539 = _rndx_tonemapped_color.z;
      // RenoDX: <<< [Patch: ScreenEffectTonemapReplace]
      if (_etcParams.z == 0.0f) {
        _2545 = 1.0f - abs(_etcParams.w);
        _2549 = saturate(_etcParams.w);  // [sem: expr_sat]
        _2550 = (_2545 * _2537) + _2549;
        _2551 = (_2545 * _2538) + _2549;
        _2552 = (_2545 * _2539) + _2549;
        if (_colorGradingParams.w > 0.0f) {
          _2557 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _2574 = (((max(0.0f, (1.0f - _2550)) - _2550) * _2557) + _2550);
          _2575 = (((max(0.0f, (1.0f - _2551)) - _2551) * _2557) + _2551);
          _2576 = (((max(0.0f, (1.0f - _2552)) - _2552) * _2557) + _2552);
        } else {
          _2574 = _2550;
          _2575 = _2551;
          _2576 = _2552;
        }
        _2582 = _userImageAdjust.y + 1.0f;
        _2586 = _userImageAdjust.x + 0.5f;
        _2587 = ((_2574 + -0.5f) * _2582) + _2586;
        _2588 = ((_2575 + -0.5f) * _2582) + _2586;
        _2589 = ((_2576 + -0.5f) * _2582) + _2586;
        _2619 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
        _2630 = exp2(log2(saturate(mad(_colorBlind0.z, _2589, mad(_colorBlind0.y, _2588, (_colorBlind0.x * _2587))))) * _2619);
        _2631 = exp2(log2(saturate(mad(_colorBlind1.z, _2589, mad(_colorBlind1.y, _2588, (_colorBlind1.x * _2587))))) * _2619);
        _2632 = exp2(log2(saturate(mad(_colorBlind2.z, _2589, mad(_colorBlind2.y, _2588, (_colorBlind2.x * _2587))))) * _2619);
      } else {
        _2630 = _2537;
        _2631 = _2538;
        _2632 = _2539;
      }
    } else {
      _2630 = _2258;
      _2631 = _2259;
      _2632 = _2260;
    }
    if (_etcParams.y > 1.0f) {
      _2638 = abs(_117);
      _2639 = abs(_118 + -1.0f);
      // RenoDX: >>> [Patch: ScreenEffectVignette] [Version: 1.12.02]
      // Description: When this screen-effect composite variant is the visible final on the SDR lane (writing the display target with _etcParams.z == 0), scale its native _etcParams.y-driven vignette by the RenoDX Vignette setting so vignette strength stays consistent with the main composite's behavior while the effect draws instead of snapping to full native strength. Mirrors the BasicPostProcessVignette patch in PostProcessMaterial_0x21212A93.
      float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
      if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
        _rndx_vignette_strength *= CUSTOM_VIGNETTE;
      }
      _2643 = saturate(1.0f - (dot(float2(_2638, _2639), float2(_2638, _2639)) * _rndx_vignette_strength));  // [sem: expr_sat]
      // RenoDX: <<< [Patch: ScreenEffectVignette]
      _2648 = (_2643 * _2630);
      _2649 = (_2643 * _2631);
      _2650 = (_2643 * _2632);
    } else {
      _2648 = _2630;
      _2649 = _2631;
      _2650 = _2632;
    }
    if (_2277 && (_etcParams.z > 0.0f)) {
      _2680 = select((_2648 <= 0.0031308000907301903f), (_2648 * 12.920000076293945f), (((pow(_2648, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
      _2681 = select((_2649 <= 0.0031308000907301903f), (_2649 * 12.920000076293945f), (((pow(_2649, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
      _2682 = select((_2650 <= 0.0031308000907301903f), (_2650 * 12.920000076293945f), (((pow(_2650, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    } else {
      _2680 = _2648;
      _2681 = _2649;
      _2682 = _2650;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _2687 = (float)((uint)_2261);
      if (!(_2687 < _viewDir.w)) {
        if (!(_2687 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
          _2696 = _2680;
          _2697 = _2681;
          _2698 = _2682;
        } else {
          _2696 = 0.0f;
          _2697 = 0.0f;
          _2698 = 0.0f;
        }
      } else {
        _2696 = 0.0f;
        _2697 = 0.0f;
        _2698 = 0.0f;
      }
    } else {
      _2696 = _2680;
      _2697 = _2681;
      _2698 = _2682;
    }
    // RenoDX: >>> [Patch: ScreenEffectFinalizeSDR] [Version: 1.12.02]
    // Description: On the SDR lane this screen-effect composite variant can be the visible final output while its effect plays (it writes the display target with _etcParams.z == 0, with no standalone SDR final pass drawing after it). Without this block the RenoDX SDR finalization (white point/color temperature, Purkinje gating, and the SDR Gamma setting) drops out for the duration of the effect and snaps back afterward. Mirrors the BasicPostProcessFinalizeSDR patch in PostProcessMaterial_0x21212A93.
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      float3 _rndx_final_color = FinalizeSDR(float3(_2696, _2697, _2698), _sunDirection.y, _moonDirection.y);
      _2696 = _rndx_final_color.x;
      _2697 = _rndx_final_color.y;
      _2698 = _rndx_final_color.z;
    }
    // RenoDX: <<< [Patch: ScreenEffectFinalizeSDR]
    SV_Target.x = _2696;
    SV_Target.y = _2697;
    SV_Target.z = _2698;
    SV_Target.w = _2274;
    break;
  }
  return SV_Target;
}
