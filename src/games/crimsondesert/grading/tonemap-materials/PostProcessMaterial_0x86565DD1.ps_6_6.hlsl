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

struct BindlessParameters_PostProcessWorldLoading {
  PostProcessWorldLoadingStruct BindlessParameters_PostProcessWorldLoading;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

typedef BindlessParameters_PostProcessWorldLoading BindlessParameters_PostProcessWorldLoading_t;
ConstantBuffer<BindlessParameters_PostProcessWorldLoading_t> BindlessParameters_PostProcessWorldLoading[] : register(b0, space100);

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
  float _30;
  uint2 _32;
  float _39;
  float _46;
  float _53;
  float _62;
  float _65;
  float4 _77;
  float _84;
  float _88;
  float _92;
  float _94;
  float _95;
  float _96;
  float _97;
  float _99;
  float _100;
  float _101;
  float _102;
  float _114;
  float _123;
  float _136;
  float _149;
  float _161;
  float _170;
  float _179;
  float _188;
  float _190;
  float _191;
  float _192;
  float _193;
  float4 _196;
  float _202;
  float _205;
  float _208;
  float _217;
  float _226;
  float _235;
  bool _238;
  float _241;
  float _243;
  float _245;
  float _248;
  float _253;
  float _258;
  int _261;
  float _269;
  float _270;
  float _277;
  float _283;
  float _296;
  int _298;
  float _299;
  int _373;
  float _374;
  float _376;
  float _572;
  float _573;
  float _574;
  float _781;
  float _782;
  float _929;
  float _930;
  float _931;
  float _1056;
  int _1125;
  float _1126;
  float _1127;
  float _1128;
  float _1129;
  int _1130;
  int _1131;
  int _1202;
  int _1203;
  int _1204;
  int _1211;
  float _1394;
  float _1395;
  float _1396;
  float _1397;
  float _1398;
  float _1399;
  int _1518;
  int _1519;
  float _1520;
  float _1521;
  float _1522;
  float _1523;
  int _1524;
  int _1577;
  int _1578;
  int _1579;
  float _1672;
  float _1673;
  float _1674;
  int _1675;
  float _1778;
  float _1779;
  float _1780;
  int _1781;
  float _1849;
  float _1850;
  float _1851;
  float _1908;
  float _1909;
  float _1910;
  float _2488;
  float _2489;
  float _2490;
  float _2539;
  float _2744;
  float _2745;
  float _2746;
  float _2839;
  float _2840;
  float _2841;
  float _2895;
  float _2896;
  float _2897;
  float _2913;
  float _2914;
  float _2915;
  float _2945;
  float _2946;
  float _2947;
  float _2961;
  float _2962;
  float _2963;
  float _302;
  float _304;
  float _310;
  float _313;
  float _315;
  float _321;
  float _324;
  float _326;
  float _332;
  float _335;
  float _336;
  float _337;
  float _338;
  float _340;
  float _344;
  float _348;
  float _352;
  float _353;
  float _354;
  float _355;
  float _365;
  float _369;
  int _370;
  float _378;
  float _380;
  float _382;
  float _383;
  float _385;
  float _391;
  float _392;
  float _394;
  float _400;
  float _401;
  float _403;
  float _409;
  float _410;
  float _411;
  float _412;
  float _413;
  float _414;
  float _417;
  float _420;
  float _423;
  float _424;
  float _425;
  float _426;
  float _427;
  float _436;
  float _438;
  float _440;
  float _446;
  float _450;
  float _454;
  float _455;
  float _456;
  float _458;
  float _460;
  float _466;
  float _468;
  float _471;
  float _475;
  float _478;
  float _479;
  float _480;
  float _481;
  float _483;
  float _485;
  float _491;
  float _492;
  float _495;
  float _498;
  float _501;
  float _502;
  float _503;
  float _504;
  float _514;
  float _525;
  float _536;
  float _538;
  float _541;
  float _543;
  float _545;
  float _547;
  float _554;
  float _557;
  float _561;
  float _567;
  float _585;
  float _586;
  float _587;
  float _588;
  int _591;
  float _599;
  int _602;
  float _610;
  int _615;
  float _623;
  float _626;
  float _628;
  float _630;
  int _633;
  int _641;
  float _642;
  int _645;
  float _653;
  int _656;
  float _664;
  int _667;
  float _675;
  float _681;
  float _684;
  float _686;
  bool _687;
  bool _688;
  bool _689;
  bool _690;
  float _694;
  float _705;
  int _708;
  int _716;
  int _719;
  int _727;
  int _730;
  int _738;
  int _785;
  float _793;
  int _798;
  float _806;
  int _809;
  float _817;
  int _820;
  float _828;
  int _831;
  float _839;
  float _843;
  float _847;
  float _851;
  float _854;
  float _857;
  int _860;
  float _868;
  int _871;
  float _879;
  int _882;
  float _890;
  int _893;
  float _901;
  float _925;
  int _934;
  float _942;
  int _945;
  float _953;
  float _957;
  float _961;
  float _965;
  float _968;
  float _971;
  int _974;
  float _982;
  int _985;
  float _993;
  float _997;
  float _1001;
  int _1004;
  float _1012;
  int _1015;
  float _1023;
  int _1035;
  float _1043;
  int _1045;
  float _1053;
  int _1059;
  float _1067;
  float _1071;
  float _1075;
  int _1078;
  float _1086;
  int _1089;
  float _1097;
  float _1098;
  float _1099;
  float _1107;
  float _1113;
  float _1119;
  float _1120;
  float _1121;
  float _1122;
  float _1132;
  float _1133;
  float _1134;
  uint _1137;
  uint _1140;
  uint _1143;
  uint _1146;
  uint _1157;
  uint _1160;
  float _1175;
  float _1176;
  float _1177;
  float _1178;
  float _1181;
  float _1184;
  float _1187;
  float _1193;
  bool _1194;
  float _1195;
  float _1196;
  float _1197;
  float _1198;
  int _1199;
  int _1206;
  float _1215;
  float _1217;
  float _1219;
  float _1231;
  float4 _1256;
  float _1262;
  float _1265;
  float _1268;
  int _1271;
  float _1279;
  int _1282;
  float _1290;
  float _1339;
  float _1343;
  int _1346;
  float _1354;
  float _1403;
  float _1412;
  float _1414;
  float _1423;
  float _1434;
  int _1437;
  float _1445;
  float _1448;
  float _1449;
  float _1450;
  float _1451;
  float _1452;
  float _1453;
  float _1454;
  float _1455;
  float _1456;
  float _1457;
  float _1460;
  float _1463;
  float _1466;
  float _1469;
  float _1472;
  float _1475;
  float _1478;
  float _1481;
  float _1484;
  float _1487;
  float _1490;
  float _1493;
  float _1496;
  float _1499;
  int _1502;
  float _1510;
  float _1511;
  float _1512;
  float _1513;
  float _1514;
  float _1515;
  float _1516;
  float _1525;
  float _1526;
  float _1527;
  float _1529;
  float _1531;
  float _1533;
  float _1536;
  float _1543;
  float _1550;
  float _1557;
  float _1568;
  bool _1569;
  float _1571;
  float _1572;
  float _1573;
  int _1574;
  int _1581;
  int _1584;
  float _1587;
  float _1589;
  float _1591;
  float _1593;
  float _1605;
  float _1616;
  float _1627;
  int _1630;
  float _1638;
  float _1641;
  float _1643;
  float _1645;
  float _1654;
  float _1656;
  float _1657;
  float _1659;
  float _1661;
  float _1662;
  float _1663;
  float _1667;
  float _1670;
  float _1690;
  float _1696;
  float _1702;
  float4 _1707;
  float4 _1711;
  float _1717;
  float _1720;
  float _1723;
  int _1726;
  float _1734;
  float _1736;
  float _1748;
  float _1760;
  float _1772;
  int _1775;
  float4 _1785;
  float _1791;
  float _1794;
  float _1797;
  int _1800;
  float _1808;
  float _1810;
  int _1854;
  float _1862;
  float _1865;
  float _1868;
  float _1871;
  int _1874;
  int _1882;
  bool _1903;
  int _1913;
  float _1921;
  float _1926;
  float _1940;
  float _1951;
  float _1962;
  int _1965;
  int _1973;
  float _1974;
  float _1980;
  float _1981;
  float _1982;
  float _1983;
  float _1987;
  float _1990;
  float _1992;
  bool _1993;
  bool _1994;
  bool _1995;
  bool _1996;
  float _2007;
  float _2008;
  float _2009;
  float _2010;
  float _2012;
  float _2014;
  float _2018;
  float _2024;
  float _2025;
  float _2028;
  float _2032;
  float _2049;
  float _2050;
  float _2051;
  float _2055;
  float _2058;
  float _2060;
  float _2064;
  bool _2065;
  bool _2066;
  bool _2067;
  bool _2068;
  float _2079;
  float _2090;
  float _2094;
  float _2097;
  float _2099;
  bool _2100;
  bool _2101;
  bool _2102;
  bool _2103;
  float _2114;
  float _2115;
  float _2116;
  float _2119;
  float _2129;
  float _2132;
  float _2134;
  float _2138;
  bool _2139;
  bool _2140;
  bool _2141;
  bool _2142;
  float _2153;
  float _2163;
  float _2164;
  float _2165;
  float _2169;
  float _2172;
  float _2174;
  bool _2175;
  bool _2176;
  bool _2177;
  bool _2178;
  float _2189;
  float _2190;
  float _2193;
  float _2203;
  float _2206;
  float _2208;
  float _2212;
  bool _2213;
  bool _2214;
  bool _2215;
  bool _2216;
  float _2227;
  float _2237;
  int _2240;
  float _2248;
  float _2491;
  float _2492;
  float _2499;
  int _2502;
  float _2510;
  float _2516;
  float _2519;
  float _2522;
  float _2525;
  uint _2526;
  bool _2542;
  float _2548;
  float _2567;
  float _2583;
  float _2599;
  float _2600;
  float _2604;
  float _2607;
  float _2610;
  float _2617;
  float _2624;
  float _2631;
  float _2632;
  float _2633;
  float _2634;
  float _2635;
  float _2636;
  float _2637;
  float _2653;
  float _2669;
  float _2685;
  float _2686;
  float _2687;
  float _2688;
  float _2689;
  float _2706;
  float _2707;
  float _2708;
  float _2709;
  float _2712;
  float _2715;
  float _2719;
  float _2723;
  float _2727;
  float _2747;
  float _2759;
  float _2771;
  float _2783;
  float _2790;
  float _2797;
  float _2804;
  float _2810;
  float _2811;
  float _2813;
  float _2815;
  float _2817;
  float _2822;
  float _2843;
  float _2845;
  float _2848;
  float _2851;
  float _2854;
  float _2860;
  float _2900;
  float _2902;
  float _2908;
  float _2950;
  float _2967;
  float _2971;
  float _2975;
  int __loop_jump_target = -1;
  _2 = ((_global_0[0]) == 0);
  _30 = 1.0f / max(0.001f, _exposure0.x);
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_32.x, _32.y);
  _39 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(1551))) & 15)));
  _46 = (float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(TEXCOORD.x))));
  _53 = (float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(TEXCOORD.y))));
  _62 = -0.0f - frac(frac(dot(float2(((_39 * 32.665f) + _46), (_53 + (_39 * 11.815f))), float2(0.06711056f, 0.00583715f))) * 52.982918f);
  _65 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _77 = __3__36__0__0__g_gbufferNormal.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0));
  _84 = (saturate(_77.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _88 = (saturate(_77.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _92 = (saturate(_77.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _94 = rsqrt(dot(float3(_84, _88, _92), float3(_84, _88, _92)));  // [sem: invLength]
  _95 = _94 * _84;
  _96 = _94 * _88;
  _97 = _92 * _94;
  _99 = (TEXCOORD.x * 2.0f) + -1.0f;
  _100 = TEXCOORD.y * 2.0f;
  _101 = 1.0f - _100;
  _102 = max(1e-07f, _65.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _114 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _102, mad((_invViewProj[3].y), _101, ((_invViewProj[3].x) * _99)));
  _123 = (mad((_invViewProj[0].z), _102, mad((_invViewProj[0].y), _101, ((_invViewProj[0].x) * _99))) + (_invViewProj[0].w)) / _114;
  _136 = ((_invViewProj[1].w) + mad((_invViewProj[1].z), _102, mad((_invViewProj[1].y), _101, ((_invViewProj[1].x) * _99)))) / _114;
  _149 = ((_invViewProj[2].w) + mad((_invViewProj[2].z), _102, mad((_invViewProj[2].y), _101, ((_invViewProj[2].x) * _99)))) / _114;
  _161 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _102, mad((_invViewProjRelative[3].y), _101, ((_invViewProjRelative[3].x) * _99)));
  _170 = (mad((_invViewProjRelative[0].z), _102, mad((_invViewProjRelative[0].y), _101, ((_invViewProjRelative[0].x) * _99))) + (_invViewProjRelative[0].w)) / _161;
  _179 = (mad((_invViewProjRelative[1].z), _102, mad((_invViewProjRelative[1].y), _101, ((_invViewProjRelative[1].x) * _99))) + (_invViewProjRelative[1].w)) / _161;
  _188 = (mad((_invViewProjRelative[2].z), _102, mad((_invViewProjRelative[2].y), _101, ((_invViewProjRelative[2].x) * _99))) + (_invViewProjRelative[2].w)) / _161;
  _190 = rsqrt(dot(float3(_170, _179, _188), float3(_170, _179, _188)));  // [sem: invLength]
  _191 = _190 * _170;
  _192 = _190 * _179;
  _193 = _190 * _188;
  _196 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _202 = (pow(_196.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _205 = (pow(_196.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _208 = (pow(_196.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _217 = exp2(log2(max(0.0f, (_202 + -0.8359375f)) / (18.851562f - (_202 * 18.6875f))) * 6.277395f) * 10000.0f;
  _226 = exp2(log2(max(0.0f, (_205 + -0.8359375f)) / (18.851562f - (_205 * 18.6875f))) * 6.277395f) * 10000.0f;
  _235 = exp2(log2(max(0.0f, (_208 + -0.8359375f)) / (18.851562f - (_208 * 18.6875f))) * 6.277395f) * 10000.0f;
  _238 = (_65.x < 1e-07f) || (_65.x == 1.0f);
  _241 = _123 - _viewPos.x;
  _243 = _136 - _viewPos.y;
  _245 = _149 - _viewPos.z;
  _248 = _viewPos.x - _viewPosPrev.x;
  _253 = _viewPos.y - _viewPosPrev.y;
  _258 = _viewPos.z - _viewPosPrev.z;
  _261 = WaveReadLaneFirst(_materialIndex);
  _269 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_261 < (uint)170000), _261, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._cubeSpaceGradientRatio);
  _270 = _62 * 0.01f;
  _277 = frac((_viewPos.x * 0.01f) - (_248 * _270)) + 2000.0f;
  _283 = frac((_viewPos.y * 0.01f) - (_253 * _270)) + 2000.0f;
  _296 = (frac((_viewPos.z * 0.01f) - (_258 * _270)) + 2000.0f) + (frac(_time.x * 0.1f) - (_62 * 0.005f));
  _298 = 0;
  _299 = 0.0f;
  while(true) {
    _302 = ((_299 * _191) + _277) * 4.0f;
    _304 = frac(abs(_302));
    _310 = (select((_302 >= (-0.0f - _302)), _304, (-0.0f - _304)) * 0.25f) + -0.125f;
    _313 = ((_299 * _192) + _283) * 4.0f;
    _315 = frac(abs(_313));
    _321 = (select((_313 >= (-0.0f - _313)), _315, (-0.0f - _315)) * 0.25f) + -0.125f;
    _324 = ((_299 * _193) + _296) * 4.0f;
    _326 = frac(abs(_324));
    _332 = (select((_324 >= (-0.0f - _324)), _326, (-0.0f - _326)) * 0.25f) + -0.125f;
    _335 = _time.x * 0.5f;
    _336 = cos(_335);
    _337 = sin(_335);
    _338 = -0.0f - _337;
    _340 = mad(_332, _336, (_337 * _321));
    _344 = abs(mad(_340, _338, (_336 * _310))) + -0.0005f;
    _348 = abs(mad(_332, _338, (_336 * _321))) + -0.0005f;
    _352 = abs(mad(_340, _336, (_337 * _310))) + -0.0005f;
    _353 = max(_344, 0.0f);
    _354 = max(_348, 0.0f);
    _355 = max(_352, 0.0f);
    _365 = sqrt(((_354 * _354) + (_353 * _353)) + (_355 * _355)) + min(max(_344, max(_348, _352)), 0.0f);
    if (!(_365 < (_299 * 0.001f))) {
      _369 = _365 + _299;
      _370 = (int)(_298) + (int)(1);
      if ((int)_370 < (int)80) {
        _373 = _370;
        _374 = _369;
        while(true) {
          _298 = _373;
          _299 = _374;
          __loop_jump_target = 297;
          break;
          break;
        }
        if (__loop_jump_target == 297) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      } else {
        _376 = _369;
      }
    } else {
      _376 = _299;
    }
    _378 = (_376 * _191) + _277;
    _380 = (_376 * _192) + _283;
    _382 = (_376 * _193) + _296;
    _383 = _378 * 4.0f;
    _385 = frac(abs(_383));
    _391 = (select((_383 >= (-0.0f - _383)), _385, (-0.0f - _385)) * 0.25f) + -0.125f;
    _392 = _380 * 4.0f;
    _394 = frac(abs(_392));
    _400 = (select((_392 >= (-0.0f - _392)), _394, (-0.0f - _394)) * 0.25f) + -0.125f;
    _401 = _382 * 4.0f;
    _403 = frac(abs(_401));
    _409 = (select((_401 >= (-0.0f - _401)), _403, (-0.0f - _403)) * 0.25f) + -0.125f;
    _410 = _400 * _336;
    _411 = _400 * _337;
    _412 = mad(_409, _336, _411);
    _413 = _391 * _336;
    _414 = _391 * _337;
    _417 = abs(mad(_412, _338, _413)) + -0.0005f;
    _420 = abs(mad(_409, _338, _410)) + -0.0005f;
    _423 = abs(mad(_412, _336, _414)) + -0.0005f;
    _424 = max(_417, 0.0f);
    _425 = max(_420, 0.0f);
    _426 = max(_423, 0.0f);
    _427 = _425 * _425;
    _436 = sqrt((_427 + (_424 * _424)) + (_426 * _426)) + min(max(_417, max(_420, _423)), 0.0f);
    _438 = (_378 + 0.001f) * 4.0f;
    _440 = frac(abs(_438));
    _446 = (select((_438 >= (-0.0f - _438)), _440, (-0.0f - _440)) * 0.25f) + -0.125f;
    _450 = abs(mad(_412, _338, (_446 * _336))) + -0.0005f;
    _454 = abs(mad(_412, _336, (_446 * _337))) + -0.0005f;
    _455 = max(_450, 0.0f);
    _456 = max(_454, 0.0f);
    _458 = (_380 + 0.001f) * 4.0f;
    _460 = frac(abs(_458));
    _466 = (select((_458 >= (-0.0f - _458)), _460, (-0.0f - _460)) * 0.25f) + -0.125f;
    _468 = mad(_409, _336, (_466 * _337));
    _471 = abs(mad(_468, _338, _413)) + -0.0005f;
    _475 = abs(mad(_409, _338, (_466 * _336))) + -0.0005f;
    _478 = abs(mad(_468, _336, _414)) + -0.0005f;
    _479 = max(_471, 0.0f);
    _480 = max(_475, 0.0f);
    _481 = max(_478, 0.0f);
    _483 = (_382 + 0.001f) * 4.0f;
    _485 = frac(abs(_483));
    _491 = (select((_483 >= (-0.0f - _483)), _485, (-0.0f - _485)) * 0.25f) + -0.125f;
    _492 = mad(_491, _336, _411);
    _495 = abs(mad(_492, _338, _413)) + -0.0005f;
    _498 = abs(mad(_491, _338, _410)) + -0.0005f;
    _501 = abs(mad(_492, _336, _414)) + -0.0005f;
    _502 = max(_495, 0.0f);
    _503 = max(_498, 0.0f);
    _504 = max(_501, 0.0f);
    _514 = (sqrt(((_455 * _455) + _427) + (_456 * _456)) - _436) + min(max(_450, max(_420, _454)), 0.0f);
    _525 = (sqrt(((_480 * _480) + (_479 * _479)) + (_481 * _481)) - _436) + min(max(_471, max(_475, _478)), 0.0f);
    _536 = (sqrt(((_503 * _503) + (_502 * _502)) + (_504 * _504)) - _436) + min(max(_495, max(_498, _501)), 0.0f);
    _538 = rsqrt(dot(float3(_514, _525, _536), float3(_514, _525, _536)));  // [sem: invLength]
    _541 = -0.0f - _sunDirection.x;
    _543 = -0.0f - _sunDirection.y;
    _545 = -0.0f - _sunDirection.z;
    _547 = rsqrt(dot(float3(_541, _543, _545), float3(_541, _543, _545)));  // [sem: invLength]
    _554 = dot(float3((_538 * _514), (_538 * _525), (_538 * _536)), float3((_547 * _541), (_547 * _543), (_547 * _545)));
    _557 = saturate((_376 * 0.25f) + -0.25f);  // [sem: expr_sat]
    _561 = (_557 * _557) * (3.0f - (_557 * 2.0f));
    if (_238) {
      _567 = exp2(log2(abs(_192)) * 0.5f) * _269;
      _572 = (_567 * 0.08f);
      _573 = (_567 * 0.05f);
      _574 = (_567 * 0.03f);
    } else {
      _572 = 0.0f;
      _573 = 0.0f;
      _574 = 0.0f;
    }
    _585 = exp2(log2((exp2(log2((1.0f - _554) + (_561 * _554)) * 4.0f) * 0.2f) + 0.1f) * 1.5f);
    _586 = _585 * 0.7f;
    _587 = _585 * 0.4f;
    _588 = _585 * 0.1f;
    _591 = WaveReadLaneFirst(_materialIndex);
    _599 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_591 < (uint)170000), _591, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._cubeSpaceEffectRatio);
    _602 = WaveReadLaneFirst(_materialIndex);
    _610 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_602 < (uint)170000), _602, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiDotRatio);
    if (_610 > 0.0f) {
      _615 = WaveReadLaneFirst(_materialIndex);
      _623 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_615 < (uint)170000), _615, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._depthOuterMaskRadius);
      _626 = _123 - _mainPosition.x;
      _628 = _136 - _mainPosition.y;
      _630 = _149 - _mainPosition.z;
      _633 = WaveReadLaneFirst(_materialIndex);
      _641 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_633 < (uint)170000), _633, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._invertDepthMask);
      _642 = saturate(_65.x);  // [sem: expr_sat]
      _645 = WaveReadLaneFirst(_materialIndex);
      _653 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_645 < (uint)170000), _645, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._depthContrast);
      _656 = WaveReadLaneFirst(_materialIndex);
      _664 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_656 < (uint)170000), _656, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._depthIntensity);
      _667 = WaveReadLaneFirst(_materialIndex);
      _675 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_667 < (uint)170000), _667, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleDistortionIntensity);
      if (_675 > 0.0f) {
        _681 = (_123 - _mainPosition.x) * 0.02f;
        _684 = (_149 - _mainPosition.z) * 0.02f;
        _686 = atan(_684 / _681);
        _687 = (_681 < 0.0f);
        _688 = (_681 == 0.0f);
        _689 = (_684 >= 0.0f);
        _690 = (_684 < 0.0f);
        _694 = sqrt((_684 * _684) + (_681 * _681));
        _705 = select((_688 && _689), 1.5f, select((_688 && _690), -1.5f, (select((_687 && _690), (_686 + -3.1415927f), select((_687 && _689), (_686 + 3.1415927f), _686)) * 0.9549296f)));
        _708 = WaveReadLaneFirst(_materialIndex);
        _716 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_708 < (uint)170000), _708, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._noiseTex);
        _719 = WaveReadLaneFirst(_materialIndex);
        _727 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_719 < (uint)170000), _719, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._noiseTex);
        _730 = WaveReadLaneFirst(_materialIndex);
        _738 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_730 < (uint)170000), _730, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._noiseTex);
        _781 = ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_716 < (uint)65000), _716, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_705, (_694 - (_time.x * 0.05f)))))).x) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_727 < (uint)65000), _727, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_705 * 0.5f), ((_694 * 0.5f) - (_time.x * 0.1f)))))).x));
        _782 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_738 < (uint)65000), _738, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_705 * 0.16666667f), ((_694 * 0.16666667f) - (_time.x * 0.05f)))))).x);
      } else {
        _781 = 0.0f;
        _782 = 0.0f;
      }
      _785 = WaveReadLaneFirst(_materialIndex);
      _793 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_785 < (uint)170000), _785, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleIntensity);
      if (_793 > 0.0f) {
        _798 = WaveReadLaneFirst(_materialIndex);
        _806 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_798 < (uint)170000), _798, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleSpeed);
        _809 = WaveReadLaneFirst(_materialIndex);
        _817 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_809 < (uint)170000), _809, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRipplePhaseOffset);
        _820 = WaveReadLaneFirst(_materialIndex);
        _828 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_820 < (uint)170000), _820, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleWidth);
        _831 = WaveReadLaneFirst(_materialIndex);
        _839 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_831 < (uint)170000), _831, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.x);
        _843 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_831 < (uint)170000), _831, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.y);
        _847 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_831 < (uint)170000), _831, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.z);
        _851 = (_123 - _mainPosition.x) + _839;
        _854 = (_136 - _mainPosition.y) + _843;
        _857 = (_149 - _mainPosition.z) + _847;
        _860 = WaveReadLaneFirst(_materialIndex);
        _868 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_860 < (uint)170000), _860, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._rippleCount);
        _871 = WaveReadLaneFirst(_materialIndex);
        _879 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_871 < (uint)170000), _871, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleDistortionIntensity);
        _882 = WaveReadLaneFirst(_materialIndex);
        _890 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_882 < (uint)170000), _882, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleContrast);
        _893 = WaveReadLaneFirst(_materialIndex);
        _901 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_893 < (uint)170000), _893, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleIntensity);
        _925 = saturate(exp2(log2(frac(((((1.0f / max(1e-05f, _828)) * _868) * exp2(log2(sqrt(sqrt(dot(float3(_851, _854, _857), float3(_851, _854, _857))))) * 1.2f)) - (_782 * _879)) - frac((_time.x * _806) + _817))) * _890)) * _901;
        _929 = (_925 * 0.043233637f);
        _930 = (_925 * 0.033104755f);
        _931 = _925;
      } else {
        _929 = 0.0f;
        _930 = 0.0f;
        _931 = 0.0f;
      }
      _934 = WaveReadLaneFirst(_materialIndex);
      _942 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_934 < (uint)170000), _934, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._rippleWidth);
      _945 = WaveReadLaneFirst(_materialIndex);
      _953 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_945 < (uint)170000), _945, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.x);
      _957 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_945 < (uint)170000), _945, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.y);
      _961 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_945 < (uint)170000), _945, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.z);
      _965 = (_123 - _mainPosition.x) + _953;
      _968 = (_136 - _mainPosition.y) + _957;
      _971 = (_149 - _mainPosition.z) + _961;
      _974 = WaveReadLaneFirst(_materialIndex);
      _982 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_974 < (uint)170000), _974, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._rippleWidth);
      _985 = WaveReadLaneFirst(_materialIndex);
      _993 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_985 < (uint)170000), _985, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.x);
      _997 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_985 < (uint)170000), _985, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.y);
      _1001 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_985 < (uint)170000), _985, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.z);
      _1004 = WaveReadLaneFirst(_materialIndex);
      _1012 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1004 < (uint)170000), _1004, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._rippleCount);
      _1015 = WaveReadLaneFirst(_materialIndex);
      _1023 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1015 < (uint)170000), _1015, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._rippleSpeed);
      if ((sqrt(((_243 * _243) + (_241 * _241)) + (_245 * _245)) + -1500.0f) < 1.0f) {
        _1035 = WaveReadLaneFirst(_materialIndex);
        _1043 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1035 < (uint)170000), _1035, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiDotDensity);
        _1056 = _1043;
      } else {
        _1045 = WaveReadLaneFirst(_materialIndex);
        _1053 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1045 < (uint)170000), _1045, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiDotDensity);
        _1056 = (_1053 * 0.25f);
      }
      _1059 = WaveReadLaneFirst(_materialIndex);
      _1067 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1059 < (uint)170000), _1059, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiScrollSpeed.x);
      _1071 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1059 < (uint)170000), _1059, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiScrollSpeed.y);
      _1075 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1059 < (uint)170000), _1059, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiScrollSpeed.z);
      _1078 = WaveReadLaneFirst(_materialIndex);
      _1086 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1078 < (uint)170000), _1078, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiOffset);
      _1089 = WaveReadLaneFirst(_materialIndex);
      _1097 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1089 < (uint)170000), _1089, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiMovementSpeed);
      _1098 = _62 * 1.5f;
      _1099 = _931 * 3.0f;
      _1107 = (_time.x * _1067) + (_1056 * ((_123 - (_248 * _1098)) - _1099));
      _1113 = (_time.x * _1071) + (_1056 * ((_136 - (_253 * _1098)) - _1099));
      _1119 = (_time.x * _1075) + (_1056 * ((_149 - (_258 * _1098)) - _1099));
      _1120 = floor(_1107);
      _1121 = floor(_1113);
      _1122 = floor(_1119);
      _1125 = -1;
      _1126 = 0.0f;
      _1127 = 0.0f;
      _1128 = 0.0f;
      _1129 = 1e+14f;
      _1130 = -1;
      _1131 = -1;
      while(true) {
        _1132 = (float)((int)(_1131));
        _1133 = (float)((int)(_1130));
        _1134 = (float)((int)(_1125));
        _1137 = (uint)((uint)(asint((_1133 + _1121)))) * (uint)(1025);
        _1140 = (uint)((uint)(((uint)((uint)(_1137)) >> 6) ^ _1137)) * (uint)(9);
        _1143 = (uint)((uint)(asint((_1134 + _1122)))) * (uint)(1025);
        _1146 = (uint)((uint)(((uint)((uint)(_1143)) >> 6) ^ _1143)) * (uint)(9);
        _1157 = (uint)((uint)((((int)((uint)((uint)(((uint)((uint)(_1146)) >> 11) ^ _1146)) * (uint)(32769))) ^ asint((_1132 + _1120))) ^ ((int)((uint)((uint)(((uint)((uint)(_1140)) >> 11) ^ _1140)) * (uint)(32769))))) * (uint)(1025);
        _1160 = (uint)((uint)(((uint)((uint)(_1157)) >> 6) ^ _1157)) * (uint)(9);
        _1175 = sin(((((_time.x + 1000.0f) * _1097) + _1086) * 2.0f) * (asfloat(((int)(((int)((uint)((uint)(((uint)((uint)(_1160)) >> 11) ^ _1160)) * (uint)(32769))) & 8388607) | (int)(1065353216))) + -1.0f));
        _1176 = _1175 + _1132;
        _1177 = _1175 + _1133;
        _1178 = _1175 + _1134;
        _1181 = (frac(_1107) + -0.5f) - _1176;
        _1184 = (-0.5f - _1177) + frac(_1113);
        _1187 = frac(_1119) + (-0.5f - _1178);
        _1193 = sqrt(((_1184 * _1184) + (_1181 * _1181)) + (_1187 * _1187));
        _1194 = (_1193 < _1129);
        _1195 = select(_1194, _1193, _1129);
        _1196 = select(_1194, _1176, _1128);
        _1197 = select(_1194, _1177, _1127);
        _1198 = select(_1194, _1178, _1126);
        _1199 = (int)(_1125) + (int)(1);
        if (!(_1199 == 2)) {
          _1202 = _1199;
          _1203 = _1130;
          _1204 = _1131;
          while(true) {
            _1125 = _1202;
            _1126 = _1198;
            _1127 = _1197;
            _1128 = _1196;
            _1129 = _1195;
            _1130 = _1203;
            _1131 = _1204;
            __loop_jump_target = 1124;
            break;
            break;
          }
          if (__loop_jump_target == 1124) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
        }
        _1206 = (int)(_1130) + (int)(1);
        if (!(_1206 == 2)) {
          _1202 = -1;
          _1203 = _1206;
          _1204 = _1131;
          while(true) {
            _1125 = _1202;
            _1126 = _1198;
            _1127 = _1197;
            _1128 = _1196;
            _1129 = _1195;
            _1130 = _1203;
            _1131 = _1204;
            __loop_jump_target = 1124;
            break;
            break;
          }
          if (__loop_jump_target == 1124) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
        }
        _1211 = ((int)(_1131) + (int)(1));
        while(true) {
          if (!(_1211 == 2)) {
            while(true) {
              _1202 = -1;
              _1203 = -1;
              _1204 = _1211;
              while(true) {
                _1125 = _1202;
                _1126 = _1198;
                _1127 = _1197;
                _1128 = _1196;
                _1129 = _1195;
                _1130 = _1203;
                _1131 = _1204;
                __loop_jump_target = 1124;
                break;
                break;
              }
              if (__loop_jump_target != -1) {
                break;
              }
              break;
            }
          }
          _1215 = (_1196 + _1120) / _1056;
          _1217 = (_1197 + _1121) / _1056;
          _1219 = (_1198 + _1122) / _1056;
          _1231 = (_viewProj[3].w) + mad((_viewProj[3].z), _1219, mad((_viewProj[3].y), _1217, ((_viewProj[3].x) * _1215)));
          // [sem: _3__36__0__0__g_sceneColor_sample]
          _1256 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((mad((_viewProj[0].z), _1219, mad((_viewProj[0].y), _1217, ((_viewProj[0].x) * _1215))) + (_viewProj[0].w)) / _1231) * 0.5f) + 0.5f), (0.5f - (((mad((_viewProj[1].z), _1219, mad((_viewProj[1].y), _1217, ((_viewProj[1].x) * _1215))) + (_viewProj[1].w)) / _1231) * 0.5f))));
          _1262 = (pow(_1256.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
          _1265 = (pow(_1256.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
          _1268 = (pow(_1256.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
          _1271 = WaveReadLaneFirst(_materialIndex);
          _1279 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1271 < (uint)170000), _1271, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiDotThreshold);
          _1282 = WaveReadLaneFirst(_materialIndex);
          _1290 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1282 < (uint)170000), _1282, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._rippleIntensity);
          _1339 = min(max(saturate(exp2(log2(_664 * select((((float)((uint)((uint)(_641)))) == 1.0f), (1.0f - _642), _642)) * _653)), 0.0f), 1.0f) + ((_1279 * select(_238, 0.0f, _1195)) - ((((_931 * 0.5f) + 1.0f) - (max(0.0f, (1.0f - ((1.0f - (sqrt(dot(float3(_626, _628, _630), float3(_626, _628, _630))) * (1.0f / max(1e-05f, _623)))) * 2.0f))) * (frac((((_1012 * 40.0f) * exp2(log2(sqrt(sqrt(dot(float3(_965, _968, _971), float3(_965, _968, _971))))) * 1.2f)) * (1.0f / max(1e-05f, _942))) - ((_time.x + (_781 * 1.5f)) * _1023)) + (_781 * 0.3f)))) * _1290));
          _1343 = saturate(_1339 / max((0.1f / _1339), 0.0f));  // [sem: expr_sat]
          _1346 = WaveReadLaneFirst(_materialIndex);
          _1354 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1346 < (uint)170000), _1346, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiDotRatio);
          if (!_2) {
            _1211 = 2;
            continue;
          }
          _1394 = select(_238, 0.0f, (exp2(log2(max(0.0f, (_1262 + -0.8359375f)) / (18.851562f - (_1262 * 18.6875f))) * 6.277395f) * 10000.0f));
          _1395 = ((1.0f - floor((_1343 * _1343) * (3.0f - (_1343 * 2.0f)))) * _1354);
          _1396 = select(_238, 0.0f, (exp2(log2(max(0.0f, (_1265 + -0.8359375f)) / (18.851562f - (_1265 * 18.6875f))) * 6.277395f) * 10000.0f));
          _1397 = select(_238, 0.0f, (exp2(log2(max(0.0f, (_1268 + -0.8359375f)) / (18.851562f - (_1268 * 18.6875f))) * 6.277395f) * 10000.0f));
          _1398 = _930;
          _1399 = _929;
          break;
        }
        break;
      }
    } else {
      _1394 = 0.0f;
      _1395 = 0.0f;
      _1396 = 0.0f;
      _1397 = 0.0f;
      _1398 = 0.0f;
      _1399 = 0.0f;
    }
    _1403 = 0.001f / max(0.001f, _exposure0.x);
    _1412 = _1403 + (_1398 * 0.01f);
    _1414 = (_1412 + (_1395 * _1394)) + (saturate(_599 * (lerp(_586, _574, _561))) * _30);
    _1423 = (_1412 + (_1396 * _1395)) + (saturate(_599 * (lerp(_587, _573, _561))) * _30);
    _1434 = (((_1399 * 0.01f) + (_1397 * _1395)) + _1403) + (saturate(_599 * (lerp(_588, _572, _561))) * _30);
    _1437 = WaveReadLaneFirst(_materialIndex);
    _1445 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1437 < (uint)170000), _1437, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._radius);
    if (_1445 > 0.001f) {
      _1448 = ddx_coarse(_191);
      _1449 = ddx_coarse(_192);
      _1450 = ddx_coarse(_193);
      _1451 = ddy_coarse(_191);
      _1452 = ddy_coarse(_192);
      _1453 = ddy_coarse(_193);
      _1454 = ddx_coarse(TEXCOORD.x);
      _1455 = ddx_coarse(TEXCOORD.y);
      _1456 = ddy_coarse(TEXCOORD.x);
      _1457 = ddy_coarse(TEXCOORD.y);
      _1460 = (_1452 * _97) - (_1453 * _96);
      _1463 = (_1453 * _95) - (_1451 * _97);
      _1466 = (_1451 * _96) - (_1452 * _95);
      _1469 = (_1450 * _96) - (_1449 * _97);
      _1472 = (_1448 * _97) - (_1450 * _95);
      _1475 = (_1449 * _95) - (_1448 * _96);
      _1478 = (_1456 * _1469) + (_1460 * _1454);
      _1481 = (_1456 * _1472) + (_1463 * _1454);
      _1484 = (_1456 * _1475) + (_1466 * _1454);
      _1487 = (_1457 * _1469) + (_1460 * _1455);
      _1490 = (_1457 * _1472) + (_1463 * _1455);
      _1493 = (_1457 * _1475) + (_1455 * _1466);
      _1496 = max(dot(float3(_1478, _1481, _1484), float3(_1478, _1481, _1484)), dot(float3(_1487, _1490, _1493), float3(_1487, _1490, _1493)));
      _1499 = rsqrt(select((!(_1496 == 0.0f)), _1496, 0.1f));  // [sem: rsqrt_val]
      _1502 = WaveReadLaneFirst(_materialIndex);
      _1510 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1502 < (uint)170000), _1502, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._squareSize);
      _1511 = _1510 * _123;
      _1512 = _1510 * _136;
      _1513 = _1510 * _149;
      _1514 = floor(_1511);
      _1515 = floor(_1512);
      _1516 = floor(_1513);
      _1518 = -1;
      _1519 = -1;
      _1520 = 10.0f;
      _1521 = 0.0f;
      _1522 = 0.0f;
      _1523 = 0.0f;
      _1524 = -1;
      while(true) {
        _1577 = _1518;
        _1578 = _1519;
        _1525 = (float)((int)(_1524));
        _1526 = (float)((int)(_1519));
        _1527 = (float)((int)(_1518));
        _1529 = sin(_1525 + _1514);
        _1531 = sin(_1526 + _1515);
        _1533 = sin(_1527 + _1516);
        _1536 = _time.x * 0.2f;
        _1543 = sin(frac(sin(dot(float3(_1529, _1531, _1533), float3(12.989f, 78.233f, 37.719f))) * 143758.55f) * _1536) + _1525;
        _1550 = sin(frac(sin(dot(float3(_1529, _1531, _1533), float3(39.346f, 11.135f, 83.155f))) * 143758.55f) * _1536) + _1526;
        _1557 = sin(frac(sin(dot(float3(_1529, _1531, _1533), float3(73.156f, 52.235f, 9.151f))) * 143758.55f) * _1536) + _1527;
        _1568 = max(abs((_1514 - _1511) + _1543), max(abs((_1515 - _1512) + _1550), abs((_1516 - _1513) + _1557)));
        _1569 = (_1568 < _1520);
        _1571 = select(_1569, _1543, _1521);
        _1572 = select(_1569, _1550, _1522);
        _1573 = select(_1569, _1557, _1523);
        _1574 = (int)(_1524) + (int)(1);
        if (!(_1574 == 2)) {
          _1577 = _1518;
          _1578 = _1519;
          _1579 = _1574;
          while(true) {
            _1518 = _1577;
            _1519 = _1578;
            _1520 = select(_1569, _1568, _1520);
            _1521 = _1571;
            _1522 = _1572;
            _1523 = _1573;
            _1524 = _1579;
            __loop_jump_target = 1517;
            break;
            break;
          }
          if (__loop_jump_target == 1517) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
        }
        _1581 = (int)(_1519) + (int)(1);
        if (!(_1581 == 2)) {
          _1577 = _1518;
          _1578 = _1581;
          _1579 = -1;
          while(true) {
            _1518 = _1577;
            _1519 = _1578;
            _1520 = select(_1569, _1568, _1520);
            _1521 = _1571;
            _1522 = _1572;
            _1523 = _1573;
            _1524 = _1579;
            __loop_jump_target = 1517;
            break;
            break;
          }
          if (__loop_jump_target == 1517) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
        }
        _1584 = (int)(_1518) + (int)(1);
        if (!(_1584 == 2)) {
          _1577 = _1584;
          _1578 = -1;
          _1579 = -1;
          while(true) {
            _1518 = _1577;
            _1519 = _1578;
            _1520 = select(_1569, _1568, _1520);
            _1521 = _1571;
            _1522 = _1572;
            _1523 = _1573;
            _1524 = _1579;
            __loop_jump_target = 1517;
            break;
            break;
          }
          if (__loop_jump_target == 1517) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
        }
        _1587 = _1499 * _191;
        _1589 = (_1571 + _1514) / _1510;
        _1591 = (_1572 + _1515) / _1510;
        _1593 = (_1573 + _1516) / _1510;
        _1605 = (_viewProj[3].w) + mad((_viewProj[3].z), _1593, mad((_viewProj[3].y), _1591, ((_viewProj[3].x) * _1589)));
        _1616 = (((mad((_viewProj[0].z), _1593, mad((_viewProj[0].y), _1591, ((_viewProj[0].x) * _1589))) + (_viewProj[0].w)) / _1605) * 0.5f) + 0.5f;
        _1627 = 0.5f - (((mad((_viewProj[1].z), _1593, mad((_viewProj[1].y), _1591, ((_viewProj[1].x) * _1589))) + (_viewProj[1].w)) / _1605) * 0.5f);
        _1630 = WaveReadLaneFirst(_materialIndex);
        _1638 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1630 < (uint)170000), _1630, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._radius);
        _1641 = _1589 - _mainPosition.x;
        _1643 = _1591 - _mainPosition.y;
        _1645 = _1593 - _mainPosition.z;
        // [sem: expr_sat]
        _1654 = saturate(1.0f - ((1.0f - (sqrt(dot(float3(_1641, _1643, _1645), float3(_1641, _1643, _1645))) * (1.0f / max(1e-05f, _1638)))) * 1.0152284f));
        _1656 = 1.0f - saturate(_1654);
        _1657 = _1654 * 0.5f;
        _1659 = (TEXCOORD.x - _1616) / _1656;
        _1661 = (TEXCOORD.y - _1627) / _1656;
        _1662 = sin(_1657);
        _1663 = cos(_1657);
        _1667 = mad((-0.0f - _1662), _1661, (_1663 * _1659)) + _1616;
        _1670 = mad(_1663, _1661, (_1662 * _1659)) + _1627;
        _1672 = _1414;
        _1673 = _1423;
        _1674 = _1434;
        _1675 = 1;
        while(true) {
          _1690 = ((saturate(_65.x * 1.5f) * 0.083333336f) * ((float)((int)((int)(6) - (int)(_1675))))) * saturate(frac(frac(dot(float2((_46 + 32.665f), (_53 + 11.815f)), float2(0.06711056f, 0.00583715f))) * 52.982918f) + 0.5f);
          _1696 = mad((_1499 * _1484), _193, mad((_1499 * _1481), _192, (_1587 * _1478))) * _1690;
          _1702 = mad((_1499 * _1493), _193, mad((_1499 * _1490), _192, (_1587 * _1487))) * _1690;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1707 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1696 + TEXCOORD.x), (_1702 + TEXCOORD.y)));
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1711 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1696 + _1667), (_1702 + _1670)));
          _1717 = (pow(_1711.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1720 = (pow(_1711.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1723 = (pow(_1711.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1726 = WaveReadLaneFirst(_materialIndex);
          _1734 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1726 < (uint)170000), _1726, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._maskThreshold);
          _1736 = (float)((bool)(_1707.w < _1734));
          _1748 = (((exp2(log2(max(0.0f, (_1717 + -0.8359375f)) / (18.851562f - (_1717 * 18.6875f))) * 6.277395f) * 4000.0f) - _1672) * _1736) + _1672;
          _1760 = (((exp2(log2(max(0.0f, (_1720 + -0.8359375f)) / (18.851562f - (_1720 * 18.6875f))) * 6.277395f) * 4000.0f) - _1673) * _1736) + _1673;
          _1772 = (((exp2(log2(max(0.0f, (_1723 + -0.8359375f)) / (18.851562f - (_1723 * 18.6875f))) * 6.277395f) * 4000.0f) - _1674) * _1736) + _1674;
          if (!(_1707.w > 0.9f)) {
            _1775 = (int)(_1675) + (int)(1);
            if ((int)_1775 < (int)6) {
              _1778 = _1748;
              _1779 = _1760;
              _1780 = _1772;
              _1781 = _1775;
              while(true) {
                _1672 = _1778;
                _1673 = _1779;
                _1674 = _1780;
                _1675 = _1781;
                __loop_jump_target = 1671;
                break;
                break;
              }
              if (__loop_jump_target == 1671) {
                __loop_jump_target = -1;
                continue;
              }
              if (__loop_jump_target != -1) {
                break;
              }
            }
          }
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1785 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_1667, _1670));
          _1791 = (pow(_1785.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1794 = (pow(_1785.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1797 = (pow(_1785.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
          _1800 = WaveReadLaneFirst(_materialIndex);
          _1808 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1800 < (uint)170000), _1800, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._maskThreshold);
          _1810 = (float)((bool)(_1707.w < _1808));
          if (!_2) {
            _1778 = _1672;
            _1779 = _1673;
            _1780 = _1674;
            _1781 = _1675;
            while(true) {
              _1672 = _1778;
              _1673 = _1779;
              _1674 = _1780;
              _1675 = _1781;
              __loop_jump_target = 1671;
              break;
              break;
            }
            if (__loop_jump_target == 1671) {
              __loop_jump_target = -1;
              continue;
            }
            if (__loop_jump_target != -1) {
              break;
            }
          }
          _1849 = ((((exp2(log2(max(0.0f, (_1791 + -0.8359375f)) / (18.851562f - (_1791 * 18.6875f))) * 6.277395f) * 10000.0f) - _1748) * _1810) + _1748);
          _1850 = ((((exp2(log2(max(0.0f, (_1794 + -0.8359375f)) / (18.851562f - (_1794 * 18.6875f))) * 6.277395f) * 10000.0f) - _1760) * _1810) + _1760);
          _1851 = ((((exp2(log2(max(0.0f, (_1797 + -0.8359375f)) / (18.851562f - (_1797 * 18.6875f))) * 6.277395f) * 10000.0f) - _1772) * _1810) + _1772);
          break;
        }
        break;
      }
    } else {
      _1849 = _1414;
      _1850 = _1423;
      _1851 = _1434;
    }
    _1854 = WaveReadLaneFirst(_materialIndex);
    _1862 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1854 < (uint)170000), _1854, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ppWorldLoadingRatio);
    _1865 = (_1862 * (_1849 - _217)) + _217;
    _1868 = (_1862 * (_1850 - _226)) + _226;
    _1871 = (_1862 * (_1851 - _235)) + _235;
    _1874 = WaveReadLaneFirst(_materialIndex);
    _1882 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1874 < (uint)170000), _1874, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._excludePlayer);
    if (_1882 == 1) {
      _1903 = (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_32.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_32.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255) == _renderPassSelfPlayer);
      _1908 = select(_1903, _217, _1865);
      _1909 = select(_1903, _226, _1868);
      _1910 = select(_1903, _235, _1871);
    } else {
      _1908 = _1865;
      _1909 = _1868;
      _1910 = _1871;
    }
    _1913 = WaveReadLaneFirst(_materialIndex);
    _1921 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1913 < (uint)170000), _1913, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._starburstIntensity);
    if (_1921 > 0.0f) {
      _1926 = _mainPosition.y + 1.5f;
      _1940 = (_viewProj[3].w) + mad((_viewProj[3].z), _mainPosition.z, mad((_viewProj[3].y), _1926, ((_viewProj[3].x) * _mainPosition.x)));
      _1951 = (((mad((_viewProj[0].z), _mainPosition.z, mad((_viewProj[0].y), _1926, ((_viewProj[0].x) * _mainPosition.x))) + (_viewProj[0].w)) / _1940) * 0.5f) + 0.5f;
      _1962 = 0.5f - (((mad((_viewProj[1].z), _mainPosition.z, mad((_viewProj[1].y), _1926, ((_viewProj[1].x) * _mainPosition.x))) + (_viewProj[1].w)) / _1940) * 0.5f);
      _1965 = WaveReadLaneFirst(_materialIndex);
      _1973 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1965 < (uint)170000), _1965, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._noiseTex);
      _1974 = TEXCOORD.x - _1951;
      _1980 = (_bufferSizeAndInvSize.y / _bufferSizeAndInvSize.x) * (TEXCOORD.y - _1962);
      _1981 = _1974 * 1.1f;
      _1982 = _1980 * 1.1f;
      _1983 = dot(float2(_1951, _1962), float2(0.25f, 0.25f));
      _1987 = sqrt((_1982 * _1982) + (_1981 * _1981));
      _1990 = (pow(_1987, 3.0f));
      _1992 = atan(_1982 / _1981);
      _1993 = (_1981 < 0.0f);
      _1994 = (_1981 == 0.0f);
      _1995 = (_1982 >= 0.0f);
      _1996 = (_1982 < 0.0f);
      _2007 = select((_1994 && _1995), 15.707964f, select((_1994 && _1996), -15.707964f, (select((_1993 && _1996), (_1992 + -3.1415927f), select((_1993 && _1995), (_1992 + 3.1415927f), _1992)) * 10.0f)));
      _2008 = _1990 * 5.0f;
      _2009 = _1983 * 0.007957747f;
      _2010 = _1983 * 4.774648f;
      _2012 = frac(abs(_2009));
      _2014 = frac(abs(_2010));
      _2018 = select((_2010 >= (-0.0f - _2010)), _2014, (-0.0f - _2014));
      _2024 = sin(select((_2009 >= (-0.0f - _2009)), _2012, (-0.0f - _2012)) * 6.2831855f);
      _2025 = 12.3456f - _2024;
      _2028 = ((_2008 + 2.3456f) - _2024) * 0.015625f;
      _2032 = frac(_time.x * 0.05f);
      // [sem: expr_sat]
      _2049 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1973 < (uint)65000), _1973, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2025 + _2007) * 0.015625f) - _2032), (_2028 - _2032))))).x) * 1.5f) * 1.2f);
      _2050 = _2024 + 3.4567f;
      _2051 = _2024 + 45.6789f;
      _2055 = frac(_time.x * 0.05f);
      _2058 = ((_2051 + _2008) * 0.015625f) - _2055;
      _2060 = (_1990 * 0.078125f) - _2055;
      _2064 = atan((-0.0f - _1982) / (-0.0f - _1981));
      _2065 = (_1981 > -0.0f);
      _2066 = (_1981 == -0.0f);
      _2067 = (_1982 <= -0.0f);
      _2068 = (_1982 > -0.0f);
      _2079 = select((_2066 && _2067), 15.707964f, select((_2066 && _2068), -15.707964f, (select((_2065 && _2068), (_2064 + -3.1415927f), select((_2065 && _2067), (_2064 + 3.1415927f), _2064)) * 10.0f)));
      // [sem: expr_sat]
      _2090 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1973 < (uint)65000), _1973, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2079 + _2025) * 0.015625f) - _2055), (_2028 - _2055))))).x) * 1.5f) * 1.2f);
      _2094 = sqrt((_1980 * _1980) + (_1974 * _1974));
      _2097 = (pow(_2094, 3.0f));
      _2099 = atan(_1980 / _1974);
      _2100 = (_1974 < 0.0f);
      _2101 = (_1974 == 0.0f);
      _2102 = (_1980 >= 0.0f);
      _2103 = (_1980 < 0.0f);
      _2114 = select((_2101 && _2102), 15.707964f, select((_2101 && _2103), -15.707964f, (select((_2100 && _2103), (_2099 + -3.1415927f), select((_2100 && _2102), (_2099 + 3.1415927f), _2099)) * 10.0f)));
      _2115 = _2097 * 5.0f;
      _2116 = 2.3456f - _2024;
      _2119 = ((_2115 + _2116) * 0.015625f) - _2055;
      // [sem: expr_sat]
      _2129 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1973 < (uint)65000), _1973, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2114 + _2025) * 0.015625f) - _2055), _2119)))).x) * 1.5f) * 1.2f);
      _2132 = ((_2115 + _2051) * 0.015625f) - _2055;
      _2134 = (_2097 * 0.078125f) - _2055;
      _2138 = atan((-0.0f - _1980) / (-0.0f - _1974));
      _2139 = (_1974 > -0.0f);
      _2140 = (_1974 == -0.0f);
      _2141 = (_1980 <= -0.0f);
      _2142 = (_1980 > -0.0f);
      _2153 = select((_2140 && _2141), 15.707964f, select((_2140 && _2142), -15.707964f, (select((_2139 && _2142), (_2138 + -3.1415927f), select((_2139 && _2141), (_2138 + 3.1415927f), _2138)) * 10.0f)));
      // [sem: expr_sat]
      _2163 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1973 < (uint)65000), _1973, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2153 + _2025) * 0.015625f) - _2055), _2119)))).x) * 1.5f) * 1.2f);
      _2164 = _1974 * 0.9f;
      _2165 = _1980 * 0.9f;
      _2169 = sqrt((_2165 * _2165) + (_2164 * _2164));
      _2172 = (pow(_2169, 3.0f));
      _2174 = atan(_2165 / _2164);
      _2175 = (_2164 < 0.0f);
      _2176 = (_2164 == 0.0f);
      _2177 = (_2165 >= 0.0f);
      _2178 = (_2165 < 0.0f);
      _2189 = select((_2176 && _2177), 15.707964f, select((_2176 && _2178), -15.707964f, (select((_2175 && _2178), (_2174 + -3.1415927f), select((_2175 && _2177), (_2174 + 3.1415927f), _2174)) * 10.0f)));
      _2190 = _2172 * 5.0f;
      _2193 = ((_2190 + _2116) * 0.015625f) - _2055;
      // [sem: expr_sat]
      _2203 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1973 < (uint)65000), _1973, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2189 + _2025) * 0.015625f) - _2055), _2193)))).x) * 1.5f) * 1.2f);
      _2206 = ((_2190 + _2051) * 0.015625f) - _2055;
      _2208 = (_2172 * 0.078125f) - _2055;
      _2212 = atan((-0.0f - _2165) / (-0.0f - _2164));
      _2213 = (_2164 > -0.0f);
      _2214 = (_2164 == -0.0f);
      _2215 = (_2165 <= -0.0f);
      _2216 = (_2165 > -0.0f);
      _2227 = select((_2214 && _2215), 15.707964f, select((_2214 && _2216), -15.707964f, (select((_2213 && _2216), (_2212 + -3.1415927f), select((_2213 && _2215), (_2212 + 3.1415927f), _2212)) * 10.0f)));
      // [sem: expr_sat]
      _2237 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1973 < (uint)65000), _1973, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2227 + _2025) * 0.015625f) - _2055), _2193)))).x) * 1.5f) * 1.2f);
      _2240 = WaveReadLaneFirst(_materialIndex);
      _2248 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_2240 < (uint)170000), _2240, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._starburstIntensity);
      _2488 = (saturate(exp2(log2((exp2(log2(max((((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1973 < (uint)65000), _1973, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2050 + _2007) * 0.015625f) - _2055), _2058)))).x) * 1.5f) * 1.2f) - _2049) * ((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1973 < (uint)65000), _1973, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2007 * 0.015625f) - _2055), _2060)))).x) * 1.5f) * 1.2f) + _2018) * 6.2831855f) * 0.5f) + 0.5f)) + _2049), (((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1973 < (uint)65000), _1973, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2079 + _2050) * 0.015625f) - _2055), _2058)))).x) * 1.5f) * 1.2f) - _2090) * ((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1973 < (uint)65000), _1973, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2079 * 0.015625f) - _2055), _2060)))).x) * 1.5f) * 1.2f) + _2018) * 6.2831855f) * 0.5f) + 0.5f)) + _2090))) * 3.0f) * exp2(log2(saturate(1.0f - (_1987 * 2.0f))) * 12.2f)) + exp2(log2(saturate(1.1f - (_1987 * 24.0f))) * 10.2f)) * 1.4f) * _2248) * _30);
      _2489 = (saturate(exp2(log2(((exp2(log2(max((((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1973 < (uint)65000), _1973, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2114 + _2050) * 0.015625f) - _2055), _2132)))).x) * 1.5f) * 1.2f) - _2129) * ((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1973 < (uint)65000), _1973, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2114 * 0.015625f) - _2055), _2134)))).x) * 1.5f) * 1.2f) + _2018) * 6.2831855f) * 0.5f) + 0.5f)) + _2129), (((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1973 < (uint)65000), _1973, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2153 + _2050) * 0.015625f) - _2055), _2132)))).x) * 1.5f) * 1.2f) - _2163) * ((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1973 < (uint)65000), _1973, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2153 * 0.015625f) - _2055), _2134)))).x) * 1.5f) * 1.2f) + _2018) * 6.2831855f) * 0.5f) + 0.5f)) + _2163))) * 3.0f) * exp2(log2(saturate(1.0f - (_2094 * 2.0f))) * 12.2f)) + exp2(log2(saturate(1.1f - (_2094 * 24.0f))) * 10.2f)) * 0.6038274f) * 1.4f) * _2248) * _30);
      _2490 = (saturate(exp2(log2(((exp2(log2(max((((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1973 < (uint)65000), _1973, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2189 + _2050) * 0.015625f) - _2055), _2206)))).x) * 1.5f) * 1.2f) - _2203) * ((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1973 < (uint)65000), _1973, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2189 * 0.015625f) - _2055), _2208)))).x) * 1.5f) * 1.2f) + _2018) * 6.2831855f) * 0.5f) + 0.5f)) + _2203), (((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1973 < (uint)65000), _1973, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2227 + _2050) * 0.015625f) - _2055), _2206)))).x) * 1.5f) * 1.2f) - _2237) * ((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1973 < (uint)65000), _1973, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2227 * 0.015625f) - _2055), _2208)))).x) * 1.5f) * 1.2f) + _2018) * 6.2831855f) * 0.5f) + 0.5f)) + _2237))) * 3.0f) * exp2(log2(saturate(1.0f - (_2169 * 2.0f))) * 12.2f)) + exp2(log2(saturate(1.1f - (_2169 * 24.0f))) * 10.2f)) * 0.44798842f) * 1.4f) * _2248) * _30);
    } else {
      _2488 = 0.0f;
      _2489 = 0.0f;
      _2490 = 0.0f;
    }
    _2491 = TEXCOORD.x + -0.5f;
    _2492 = TEXCOORD.y + -0.5f;
    _2499 = saturate((sqrt((_2492 * _2492) + (_2491 * _2491)) + -0.01f) * 1.010101f);  // [sem: expr_sat]
    _2502 = WaveReadLaneFirst(_materialIndex);
    _2510 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_2502 < (uint)170000), _2502, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._vignetteIntensity);
    _2516 = 1.0f - (((_2499 * _2499) * (3.0f - (_2499 * 2.0f))) * _2510);
    _2519 = max(0.0f, (_2516 * (_2488 + _1908)));
    _2522 = max(0.0f, (_2516 * (_2489 + _1909)));
    _2525 = max(0.0f, (_2516 * (_2490 + _1910)));
    _2526 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _2539 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _2526, 0)))).x) & 127)))) + 0.5f);
    } else {
      _2539 = 1.0f;
    }
    _2542 = (_localToneMappingParams.w > 0.0f);
    if (_2542) {
      _2548 = _exposure0.x * _userImageAdjust.z;
      _2567 = exp2(_powerParams.x * log2(max(0.0f, (((_2548 * max(0.0f, (((_2519 * 1.70505f) - (_2522 * 0.62179f)) - (_2525 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
      _2583 = exp2(log2(max(0.0f, (((_slopeParams.y * _2548) * max(0.0f, (((_2522 * 1.1408f) - (_2519 * 0.13026f)) - (_2525 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
      _2599 = exp2(log2(max(0.0f, (((_slopeParams.z * _2548) * max(0.0f, (((_2519 * -0.024f) - (_2522 * 0.12897f)) + (_2525 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
      _2600 = dot(float3(_2567, _2583, _2599), float3(0.212671f, 0.71516f, 0.072169f));
      _2604 = ((_2567 - _2600) * _powerParams.w) + _2600;
      _2607 = ((_2583 - _2600) * _powerParams.w) + _2600;
      _2610 = ((_2599 - _2600) * _powerParams.w) + _2600;
      _2617 = min(max(log2(mad(_2610, 0.079223745f, mad(_2607, 0.0784336f, (_2604 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
      _2624 = min(max(log2(mad(_2610, 0.07916613f, mad(_2607, 0.87846863f, (_2604 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
      _2631 = min(max(log2(mad(_2610, 0.879143f, mad(_2607, 0.0784336f, (_2604 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
      _2632 = _2617 * 0.060606062f;
      _2633 = _2624 * 0.060606062f;
      _2634 = _2631 * 0.060606062f;
      _2635 = _2632 * _2632;
      _2636 = _2633 * _2633;
      _2637 = _2634 * _2634;
      _2653 = min(0.0f, (-0.0f - (((_2617 * 0.0072181816f) + ((_2635 * 0.4298f) + (((_2635 * _2635) * ((31.96f - (_2617 * 2.4327273f)) + (_2635 * 15.5f))) - ((_2617 * 0.41624245f) * _2635)))) + -0.00232f)));
      _2669 = min(0.0f, (-0.0f - (((_2624 * 0.0072181816f) + ((_2636 * 0.4298f) + (((_2636 * _2636) * ((31.96f - (_2624 * 2.4327273f)) + (_2636 * 15.5f))) - ((_2624 * 0.41624245f) * _2636)))) + -0.00232f)));
      _2685 = min(0.0f, (-0.0f - (((_2631 * 0.0072181816f) + ((_2637 * 0.4298f) + (((_2637 * _2637) * ((31.96f - (_2631 * 2.4327273f)) + (_2637 * 15.5f))) - ((_2631 * 0.41624245f) * _2637)))) + -0.00232f)));
      _2686 = -0.0f - _2653;
      _2687 = -0.0f - _2669;
      _2688 = -0.0f - _2685;
      _2689 = dot(float3(_2686, _2687, _2688), float3(0.2126f, 0.7152f, 0.0722f));
      if (_nightToneParm == 1) {
        _2706 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
        _2707 = -0.79999995f / _2706;
        _2708 = -1.2f / _2706;
        _2709 = 0.20000005f / _2706;
        _2712 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
        _2715 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
        _2719 = (_2707 + 1.4f) + (_2715 * (-0.39999998f - _2707));
        _2723 = (_2708 + 1.6f) + (_2715 * (-0.6f - _2708));
        _2727 = (_2709 + 0.9f) + (_2715 * (0.5f - _2709));
        _2744 = (lerp(_2723, 1.2f, _2712));  // [sem: blended]
        _2745 = (lerp(_2719, 1.0f, _2712));  // [sem: blended]
        _2746 = (lerp(_2727, 1.4f, _2712));  // [sem: blended]
      } else {
        _2744 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
        _2745 = 1.0f;  // [sem: blended]
        _2746 = 1.4f;  // [sem: blended]
      }
      _2747 = 1.0f - _2744;
      _2759 = ((exp2(log2(((saturate((_2653 * _2653) * _2686) * _2747) + _2744) * _2686) * _2745) - _2689) * _2746) + _2689;
      _2771 = ((exp2(log2(((saturate((_2669 * _2669) * _2687) * _2747) + _2744) * _2687) * _2745) - _2689) * _2746) + _2689;
      _2783 = ((exp2(log2(((saturate((_2685 * _2685) * _2688) * _2747) + _2744) * _2688) * _2745) - _2689) * _2746) + _2689;
      _2790 = saturate(exp2(log2(mad(_2783, -0.09902974f, mad(_2771, -0.09802088f, (_2759 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
      _2797 = saturate(exp2(log2(mad(_2783, -0.098961174f, mad(_2771, 1.1519032f, (_2759 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
      _2804 = saturate(exp2(log2(mad(_2783, 1.1510737f, mad(_2771, -0.09804345f, (_2759 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
      if (_etcParams.z == 0.0f) {
        _2810 = 1.0f - abs(_etcParams.w);
        _2811 = saturate(_etcParams.w);  // [sem: expr_sat]
        _2813 = (_2810 * _2790) + _2811;
        _2815 = (_2810 * _2797) + _2811;
        _2817 = (_2810 * _2804) + _2811;
        if (_colorGradingParams.w > 0.0f) {
          _2822 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _2839 = (((max(0.0f, (1.0f - _2813)) - _2813) * _2822) + _2813);
          _2840 = (((max(0.0f, (1.0f - _2815)) - _2815) * _2822) + _2815);
          _2841 = (((max(0.0f, (1.0f - _2817)) - _2817) * _2822) + _2817);
        } else {
          _2839 = _2813;
          _2840 = _2815;
          _2841 = _2817;
        }
        _2843 = _userImageAdjust.y + 1.0f;
        _2845 = _userImageAdjust.x + 0.5f;
        _2848 = ((_2839 + -0.5f) * _2843) + _2845;
        _2851 = ((_2840 + -0.5f) * _2843) + _2845;
        _2854 = ((_2841 + -0.5f) * _2843) + _2845;
        _2860 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _2895 = exp2(log2(saturate(mad(_colorBlind0.z, _2854, mad(_colorBlind0.y, _2851, (_colorBlind0.x * _2848))))) * _2860);
        _2896 = exp2(log2(saturate(mad(_colorBlind1.z, _2854, mad(_colorBlind1.y, _2851, (_colorBlind1.x * _2848))))) * _2860);
        _2897 = exp2(log2(saturate(mad(_colorBlind2.z, _2854, mad(_colorBlind2.y, _2851, (_colorBlind2.x * _2848))))) * _2860);
      } else {
        _2895 = _2790;
        _2896 = _2797;
        _2897 = _2804;
      }
    } else {
      _2895 = _2519;
      _2896 = _2522;
      _2897 = _2525;
    }
    if (_etcParams.y > 1.0f) {
      _2900 = abs(_99);
      _2902 = abs(_100 + -1.0f);
      _2908 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_2900, _2902), float2(_2900, _2902))));  // [sem: expr_sat]
      _2913 = (_2908 * _2895);
      _2914 = (_2908 * _2896);
      _2915 = (_2908 * _2897);
    } else {
      _2913 = _2895;
      _2914 = _2896;
      _2915 = _2897;
    }
    if (_2542 && (_etcParams.z > 0.0f)) {
      _2945 = select((_2913 <= 0.0031308f), (_2913 * 12.92f), (((pow(_2913, 0.41666666f)) * 1.055f) + -0.055f));
      _2946 = select((_2914 <= 0.0031308f), (_2914 * 12.92f), (((pow(_2914, 0.41666666f)) * 1.055f) + -0.055f));
      _2947 = select((_2915 <= 0.0031308f), (_2915 * 12.92f), (((pow(_2915, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _2945 = _2913;
      _2946 = _2914;
      _2947 = _2915;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _2950 = (float)((uint)((uint)(_2526)));
      if (!(_2950 < _viewDir.w)) {
        if (!(!(_2950 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
          _2961 = 0.0f;
          _2962 = 0.0f;
          _2963 = 0.0f;
        } else {
          _2961 = _2945;
          _2962 = _2946;
          _2963 = _2947;
        }
      } else {
        _2961 = 0.0f;
        _2962 = 0.0f;
        _2963 = 0.0f;
      }
    } else {
      _2961 = _2945;
      _2962 = _2946;
      _2963 = _2947;
    }
    _2967 = exp2(log2(_2961 * 0.0001f) * 0.15930176f);
    _2971 = exp2(log2(_2962 * 0.0001f) * 0.15930176f);
    _2975 = exp2(log2(_2963 * 0.0001f) * 0.15930176f);
    if (!_2) {
      _373 = _298;
      _374 = _299;
      while(true) {
        _298 = _373;
        _299 = _374;
        __loop_jump_target = 297;
        break;
        break;
      }
      if (__loop_jump_target == 297) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
    }
    SV_Target.x = exp2(log2((1.0f / ((_2967 * 18.6875f) + 1.0f)) * ((_2967 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.y = exp2(log2((1.0f / ((_2971 * 18.6875f) + 1.0f)) * ((_2971 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.z = exp2(log2((1.0f / ((_2975 * 18.6875f) + 1.0f)) * ((_2975 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.w = _2539;
    break;
  }
  return SV_Target;
}
