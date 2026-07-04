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


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t69, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t32, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t40, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t76, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t77, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t78, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t79, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t80, space36);

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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

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

struct BindlessParameters_PostProcessMemoryRead_CD {
  PostProcessMemoryRead_CDStruct BindlessParameters_PostProcessMemoryRead_CD;
};

typedef BindlessParameters_PostProcessMemoryRead_CD BindlessParameters_PostProcessMemoryRead_CD_t;
ConstantBuffer<BindlessParameters_PostProcessMemoryRead_CD_t> BindlessParameters_PostProcessMemoryRead_CD[] : register(b0, space100);

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
  float _35;
  int _41;
  float _49;
  float _140;
  float _141;
  float _144;
  float _145;
  float _381;
  int _382;
  float _442;
  float _617;
  float _618;
  float _619;
  bool _651;
  float _652;
  float _653;
  float _654;
  float _820;
  float _821;
  float _822;
  float _823;
  int _824;
  float _829;
  float _830;
  float _831;
  float _832;
  int _833;
  float _838;
  float _839;
  float _840;
  float _841;
  int _842;
  float _1344;
  float _1345;
  float _1346;
  float _1347;
  float _1411;
  float _1412;
  float _1413;
  float _1474;
  float _1537;
  float _1538;
  float _1539;
  float _1540;
  float _1541;
  float _1542;
  float _1543;
  bool _1604;
  float _1621;
  float _1622;
  float _1623;
  float _1633;
  float _1829;
  float _1830;
  float _1831;
  float _1963;
  float _1964;
  float _1965;
  float _1966;
  float _1967;
  float _2102;
  float _2353;
  float _2354;
  float _2355;
  float _2403;
  float _2404;
  float _2405;
  float _2462;
  float _2667;
  float _2668;
  float _2669;
  float _2762;
  float _2763;
  float _2764;
  float _2818;
  float _2819;
  float _2820;
  float _2839;
  float _2840;
  float _2841;
  float _2871;
  float _2872;
  float _2873;
  float _2887;
  float _2888;
  float _2889;
  int _52;
  float _60;
  int _63;
  float _71;
  float _74;
  float _79;
  float _80;
  float _81;
  float _82;
  int _83;
  float _91;
  int _92;
  float _100;
  float _101;
  float _105;
  float _110;
  float _114;
  float _123;
  float _129;
  float _134;
  float _159;
  float4 _169;
  float _182;
  float _183;
  float _184;
  float _186;
  float _187;
  float _188;
  float _189;
  float _191;
  float _193;
  float _194;
  float _230;
  float _231;
  float _232;
  float _233;
  float _269;
  float _270;
  float _271;
  float _272;
  float _274;
  float _275;
  float _276;
  float _277;
  float4 _280;
  float _290;
  float _291;
  float _292;
  float _317;
  float _318;
  float _319;
  int _321;
  float _329;
  int _355;
  float _363;
  float _373;
  float _377;
  float _378;
  float _379;
  float _389;
  float _393;
  float _398;
  float _402;
  float _407;
  float _411;
  float _419;
  float _420;
  float _421;
  float _422;
  float _423;
  float _424;
  float _434;
  float _438;
  int _439;
  float _446;
  float _447;
  float _448;
  float _449;
  float _453;
  float _458;
  float _462;
  float _467;
  float _471;
  float _479;
  float _480;
  float _481;
  float _482;
  float _483;
  float _484;
  float _485;
  float _486;
  float _487;
  float _488;
  float _491;
  float _494;
  float _496;
  float _500;
  float _506;
  float _507;
  float _515;
  float _519;
  float _525;
  float _526;
  float _535;
  float _539;
  float _545;
  float _546;
  float _554;
  float _556;
  float _558;
  float _560;
  float _568;
  float _569;
  float _570;
  float _572;
  float _576;
  float _579;
  float _583;
  float _586;
  float _587;
  float _590;
  float _591;
  float _592;
  float _593;
  float _594;
  int _601;
  float _609;
  float _627;
  int _628;
  float _638;
  float _639;
  float _640;
  float _657;
  float _658;
  float _659;
  float _660;
  float _661;
  float _662;
  float _663;
  int _668;
  int _676;
  float4 _683;
  int _689;
  float _697;
  float _698;
  uint2 _704;
  int _721;
  int _722;
  float _730;
  int _731;
  float _739;
  float _742;
  float _745;
  float _746;
  float _747;
  float _748;
  float _749;
  float _750;
  float _751;
  float _752;
  float _753;
  float _754;
  float _757;
  float _760;
  float _763;
  float _766;
  float _769;
  float _772;
  float _779;
  float _780;
  float _781;
  float _788;
  float _789;
  float _790;
  float _793;
  float _796;
  float _799;
  int _804;
  float _812;
  float _813;
  float _814;
  float _815;
  float _816;
  float _817;
  float _818;
  int _826;
  int _835;
  float _843;
  float _844;
  float _845;
  float _849;
  float _850;
  float _851;
  float _866;
  float _873;
  float _874;
  float _875;
  float _886;
  bool _887;
  float _888;
  float _889;
  float _890;
  float _891;
  int _892;
  float _902;
  float _903;
  float _904;
  float _932;
  float _937;
  float _938;
  float _943;
  float _944;
  float _945;
  float _954;
  float _956;
  float _957;
  float _959;
  float _961;
  float _962;
  float _963;
  float _969;
  float _970;
  float _982;
  float _983;
  float _984;
  float _985;
  float _986;
  float4 _991;
  float4 _995;
  float _1005;
  float _1006;
  float _1007;
  int _1035;
  float _1043;
  float _1045;
  float _1052;
  float _1053;
  float _1054;
  float _1057;
  float _1058;
  float4 _1063;
  float4 _1067;
  float _1077;
  float _1078;
  float _1079;
  int _1107;
  float _1115;
  float _1117;
  float _1124;
  float _1125;
  float _1126;
  float _1129;
  float _1130;
  float4 _1135;
  float4 _1139;
  float _1149;
  float _1150;
  float _1151;
  int _1179;
  float _1187;
  float _1189;
  float _1196;
  float _1197;
  float _1198;
  float _1201;
  float _1202;
  float4 _1207;
  float4 _1211;
  float _1221;
  float _1222;
  float _1223;
  int _1251;
  float _1259;
  float _1261;
  float _1268;
  float _1269;
  float _1270;
  float _1273;
  float _1274;
  float4 _1279;
  float4 _1283;
  float _1293;
  float _1294;
  float _1295;
  int _1323;
  float _1331;
  float _1333;
  float4 _1350;
  float _1360;
  float _1361;
  float _1362;
  int _1390;
  float _1398;
  float _1400;
  int _1414;
  float _1422;
  int _1423;
  float _1431;
  int _1451;
  float _1459;
  int _1464;
  float _1472;
  int _1475;
  float _1483;
  float _1487;
  int _1512;
  int _1520;
  float4 _1527;
  float _1530;
  float _1532;
  float _1535;
  float _1548;
  float _1549;
  float _1550;
  float _1551;
  float _1560;
  float _1561;
  float _1563;
  float4 _1571;
  float _1580;
  float _1581;
  float _1582;
  float _1583;
  float _1590;
  float _1610;
  float _1613;
  float _1637;
  float _1638;
  float _1639;
  float _1654;
  float _1690;
  float _1691;
  float _1693;
  int _1702;
  int _1710;
  float4 _1717;
  float _1720;
  float _1721;
  float _1736;
  int _1739;
  int _1747;
  float4 _1754;
  float _1765;
  float _1769;
  float _1772;
  float _1775;
  float _1784;
  float _1793;
  float _1795;
  float _1797;
  float _1815;
  int _1832;
  float _1840;
  float _1847;
  float _1848;
  float _1849;
  float _1857;
  float _1858;
  int _1869;
  int _1891;
  int _1899;
  float4 _1906;
  float _1911;
  float _1912;
  float _1927;
  float _1928;
  float _1929;
  float _1935;
  float _1938;
  float _1944;
  float _1959;
  uint _1986;
  uint _1987;
  uint4 _1989;
  float4 _1992;
  float _2010;
  float _2011;
  float _2012;
  float _2014;
  float _2015;
  float _2016;
  float _2017;
  float _2020;
  float _2021;
  float _2024;
  float _2025;
  float _2029;
  float _2031;
  float _2032;
  float _2033;
  float _2034;
  float _2036;
  float _2039;
  float _2040;
  float _2041;
  float _2042;
  float _2051;
  float _2055;
  float _2059;
  float _2061;
  float _2073;
  float _2074;
  float _2077;
  float _2082;
  float _2116;
  float _2128;
  float _2129;
  float _2130;
  float _2144;
  float _2145;
  float _2146;
  float _2157;
  float4 _2164;
  float _2169;
  float _2170;
  float _2172;
  float _2177;
  float _2181;
  float _2182;
  float _2183;
  float _2191;
  float _2200;
  float _2209;
  float _2212;
  float _2219;
  float _2226;
  float _2230;
  float _2234;
  bool _2240;
  int _2244;
  float _2258;
  float _2259;
  float _2260;
  float _2288;
  float _2289;
  float _2293;
  float _2303;
  float _2304;
  float _2305;
  float _2317;
  float _2323;
  float _2325;
  float _2332;
  float _2333;
  float _2341;
  float _2346;
  float4 _2362;
  float _2367;
  float _2378;
  float _2379;
  float _2380;
  int _2390;
  float _2398;
  float _2406;
  float _2407;
  float _2414;
  int _2419;
  float _2427;
  int _2429;
  float _2437;
  float _2439;
  float _2446;
  float _2447;
  float _2448;
  uint _2449;
  bool _2465;
  float _2471;
  float _2520;
  float _2521;
  float _2522;
  float _2524;
  float _2531;
  float _2532;
  float _2533;
  float _2552;
  float _2553;
  float _2554;
  float _2555;
  float _2556;
  float _2557;
  float _2558;
  float _2559;
  float _2560;
  float _2606;
  float _2607;
  float _2608;
  float _2609;
  float _2610;
  float _2611;
  float _2612;
  float _2629;
  float _2630;
  float _2631;
  float _2632;
  float _2638;
  float _2641;
  float _2648;
  float _2649;
  float _2650;
  float _2679;
  float _2704;
  float _2705;
  float _2706;
  float _2725;
  float _2726;
  float _2727;
  float _2733;
  float _2737;
  float _2738;
  float _2739;
  float _2740;
  float _2745;
  float _2770;
  float _2774;
  float _2775;
  float _2776;
  float _2777;
  float _2807;
  float _2829;
  float _2830;
  float _2834;
  float _2878;
  float _2899;
  float _2900;
  float _2901;
  int __loop_jump_target = -1;
  _35 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _41 = WaveReadLaneFirst(_materialIndex);
  _49 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_41 < (uint)170000), _41, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._fishEyeMaxPower);
  bool __branch_chain_0;
  if (_49 > 0.0010000000474974513f) {
    __branch_chain_0 = true;
  } else {
    _52 = WaveReadLaneFirst(_materialIndex);
    _60 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_52 < (uint)170000), _52, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._fishEyeMaxPower);
    if (_60 < -0.0010000000474974513f) {
      __branch_chain_0 = true;
    } else {
      _144 = TEXCOORD.x;
      _145 = TEXCOORD.y;
      __branch_chain_0 = false;
    }
  }
  if (__branch_chain_0) {
    _63 = WaveReadLaneFirst(_materialIndex);
    _71 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_63 < (uint)170000), _63, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
    [branch]
    if (!(!(_71 >= 0.0010000000474974513f))) {
      _74 = 0.5f / _35;
      _79 = ((_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x) + -0.5f;
      _80 = ((_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x) - _74;
      _81 = dot(float2(_79, _80), float2(_79, _80));
      _82 = sqrt(_81);
      _83 = WaveReadLaneFirst(_materialIndex);
      _91 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_83 < (uint)170000), _83, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._fishEyeMaxPower);
      _92 = WaveReadLaneFirst(_materialIndex);
      _100 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_92 < (uint)170000), _92, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
      _101 = _100 * _91;
      if (_101 > 0.0f) {
        _105 = sqrt(dot(float2(0.5f, _74), float2(0.5f, _74)));
        _110 = tan(_101 * _82) * (rsqrt(_81) * _105);
        _114 = tan(_105 * _101);
        _140 = (((_110 * _79) / _114) + 0.5f);
        _141 = (((_110 * _80) / _114) + _74);
      } else {
        if (_101 < 0.0f) {
          _123 = select((_35 < 1.0f), 0.5f, _74);
          _129 = atan((_101 * _82) * -10.0f) * (rsqrt(_81) * _123);
          _134 = atan((_101 * -10.0f) * _123);
          _140 = (((_129 * _79) / _134) + 0.5f);
          _141 = (((_129 * _80) / _134) + _74);
        } else {
          _140 = 0.0f;
          _141 = 0.0f;
        }
      }
      _144 = _140;
      _145 = (_141 * _35);
    } else {
      _144 = TEXCOORD.x;
      _145 = TEXCOORD.y;
    }
  }
  _159 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_144, _145));  // [sem: _3__36__0__0__g_depth_sample]
  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _169 = __3__36__0__0__g_gbufferNormal.Load(int3((int)(uint(_bufferSizeAndInvSize.x * _144)), (int)(uint(_bufferSizeAndInvSize.y * _145)), 0));
  _182 = (saturate(_169.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _183 = (saturate(_169.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _184 = (saturate(_169.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _186 = rsqrt(dot(float3(_182, _183, _184), float3(_182, _183, _184)));  // [sem: invLength]
  _187 = _186 * _182;
  _188 = _186 * _183;
  _189 = _184 * _186;
  _191 = (_144 * 2.0f) + -1.0f;
  _193 = 1.0f - (_145 * 2.0f);
  _194 = max(1.0000000116860974e-07f, _159.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _230 = mad((_invViewProj[2].w), _194, mad((_invViewProj[1].w), _193, ((_invViewProj[0].w) * _191))) + (_invViewProj[3].w);
  _231 = (mad((_invViewProj[2].x), _194, mad((_invViewProj[1].x), _193, ((_invViewProj[0].x) * _191))) + (_invViewProj[3].x)) / _230;
  _232 = (mad((_invViewProj[2].y), _194, mad((_invViewProj[1].y), _193, ((_invViewProj[0].y) * _191))) + (_invViewProj[3].y)) / _230;
  _233 = (mad((_invViewProj[2].z), _194, mad((_invViewProj[1].z), _193, ((_invViewProj[0].z) * _191))) + (_invViewProj[3].z)) / _230;
  _269 = mad((_invViewProjRelative[2].w), _194, mad((_invViewProjRelative[1].w), _193, ((_invViewProjRelative[0].w) * _191))) + (_invViewProjRelative[3].w);
  _270 = (mad((_invViewProjRelative[2].x), _194, mad((_invViewProjRelative[1].x), _193, ((_invViewProjRelative[0].x) * _191))) + (_invViewProjRelative[3].x)) / _269;
  _271 = (mad((_invViewProjRelative[2].y), _194, mad((_invViewProjRelative[1].y), _193, ((_invViewProjRelative[0].y) * _191))) + (_invViewProjRelative[3].y)) / _269;
  _272 = (mad((_invViewProjRelative[2].z), _194, mad((_invViewProjRelative[1].z), _193, ((_invViewProjRelative[0].z) * _191))) + (_invViewProjRelative[3].z)) / _269;
  _274 = rsqrt(dot(float3(_270, _271, _272), float3(_270, _271, _272)));  // [sem: invLength]
  _275 = _274 * _270;
  _276 = _274 * _271;
  _277 = _274 * _272;
  _280 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_144, _145));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _290 = (pow(_280.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _291 = (pow(_280.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _292 = (pow(_280.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _317 = exp2(log2(max(0.0f, (_290 + -0.8359375f)) / (18.8515625f - (_290 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _318 = exp2(log2(max(0.0f, (_291 + -0.8359375f)) / (18.8515625f - (_291 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _319 = exp2(log2(max(0.0f, (_292 + -0.8359375f)) / (18.8515625f - (_292 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _321 = WaveReadLaneFirst(_materialIndex);
  _329 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_321 < (uint)170000), _321, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceEffectRatio);
  if (!(!(_329 >= 0.0010000000474974513f))) {
    _355 = WaveReadLaneFirst(_materialIndex);
    _363 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_355 < (uint)170000), _355, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSpeedRatio);
  // [sem: invLength]
    _373 = rsqrt(dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_viewDir.x, _viewDir.y, _viewDir.z))) * frac((_363 * _time.x) + -0.004999999888241291f);
    _377 = (frac(_viewPosPrev.x * 0.009999999776482582f) + 2000.0f) + (_373 * _viewDir.x);
    _378 = (frac(_viewPosPrev.y * 0.009999999776482582f) + 2000.0f) + (_373 * _viewDir.y);
    _379 = (frac(_viewPosPrev.z * 0.009999999776482582f) + 2000.0f) + (_373 * _viewDir.z);
    _381 = 1.0f;
    _382 = 0;
    while(true) {
      _389 = ((_381 * _275) + _377) * 4.0f;
      _393 = frac(abs(_389));
      _398 = ((_381 * _276) + _378) * 4.0f;
      _402 = frac(abs(_398));
      _407 = ((_381 * _277) + _379) * 4.0f;
      _411 = frac(abs(_407));
      _419 = abs((select((_389 >= (-0.0f - _389)), _393, (-0.0f - _393)) * 0.25f) + -0.125f) + -0.0005000000237487257f;
      _420 = abs((select((_398 >= (-0.0f - _398)), _402, (-0.0f - _402)) * 0.25f) + -0.125f) + -0.0005000000237487257f;
      _421 = abs((select((_407 >= (-0.0f - _407)), _411, (-0.0f - _411)) * 0.25f) + -0.125f) + -0.0005000000237487257f;
      _422 = max(_419, 0.0f);
      _423 = max(_420, 0.0f);
      _424 = max(_421, 0.0f);
      _434 = min(max(_419, max(_420, _421)), 0.0f) + sqrt(((_423 * _423) + (_422 * _422)) + (_424 * _424));
      if (!(_434 < (_381 * 0.0010000000474974513f))) {
        _438 = _434 + _381;
        _439 = _382 + 1;
        if ((int)_439 < (int)50) {
          _381 = _438;
          _382 = _439;
          continue;
        } else {
          _442 = _438;
        }
      } else {
        _442 = _381;
      }
      _446 = (_442 * _275) + _377;
      _447 = (_442 * _276) + _378;
      _448 = (_442 * _277) + _379;
      _449 = _446 * 4.0f;
      _453 = frac(abs(_449));
      _458 = _447 * 4.0f;
      _462 = frac(abs(_458));
      _467 = _448 * 4.0f;
      _471 = frac(abs(_467));
      _479 = abs((select((_449 >= (-0.0f - _449)), _453, (-0.0f - _453)) * 0.25f) + -0.125f) + -0.0005000000237487257f;
      _480 = abs((select((_458 >= (-0.0f - _458)), _462, (-0.0f - _462)) * 0.25f) + -0.125f) + -0.0005000000237487257f;
      _481 = abs((select((_467 >= (-0.0f - _467)), _471, (-0.0f - _471)) * 0.25f) + -0.125f) + -0.0005000000237487257f;
      _482 = max(_479, 0.0f);
      _483 = max(_480, 0.0f);
      _484 = max(_481, 0.0f);
      _485 = _482 * _482;
      _486 = _483 * _483;
      _487 = _486 + _485;
      _488 = _484 * _484;
      _491 = max(_480, _481);
      _494 = min(max(_479, _491), 0.0f) + sqrt(_487 + _488);
      _496 = (_446 + 0.0010000000474974513f) * 4.0f;
      _500 = frac(abs(_496));
      _506 = abs((select((_496 >= (-0.0f - _496)), _500, (-0.0f - _500)) * 0.25f) + -0.125f) + -0.0005000000237487257f;
      _507 = max(_506, 0.0f);
      _515 = (_447 + 0.0010000000474974513f) * 4.0f;
      _519 = frac(abs(_515));
      _525 = abs((select((_515 >= (-0.0f - _515)), _519, (-0.0f - _519)) * 0.25f) + -0.125f) + -0.0005000000237487257f;
      _526 = max(_525, 0.0f);
      _535 = (_448 + 0.0010000000474974513f) * 4.0f;
      _539 = frac(abs(_535));
      _545 = abs((select((_535 >= (-0.0f - _535)), _539, (-0.0f - _539)) * 0.25f) + -0.125f) + -0.0005000000237487257f;
      _546 = max(_545, 0.0f);
      _554 = min(max(_506, _491), 0.0f) + (sqrt((_488 + _486) + (_507 * _507)) - _494);
      _556 = min(max(_479, max(_525, _481)), 0.0f) + (sqrt((_488 + _485) + (_526 * _526)) - _494);
      _558 = min(max(_479, max(_480, _545)), 0.0f) + (sqrt((_546 * _546) + _487) - _494);
      _560 = rsqrt(dot(float3(_554, _556, _558), float3(_554, _556, _558)));  // [sem: invLength]
      _568 = -0.0f - _sunDirection.x;
      _569 = -0.0f - _sunDirection.y;
      _570 = -0.0f - _sunDirection.z;
      _572 = rsqrt(dot(float3(_568, _569, _570), float3(_568, _569, _570)));  // [sem: invLength]
      _576 = dot(float3((_560 * _554), (_560 * _556), (_560 * _558)), float3((_572 * _568), (_572 * _569), (_572 * _570)));
      _579 = saturate((_442 * 0.222222238779068f) + -0.111111119389534f);  // [sem: expr_sat]
      _583 = (_579 * _579) * (3.0f - (_579 * 2.0f));
      _586 = 1.0f - (_576 - (_583 * _576));
      _587 = _586 * _586;
      _590 = ((_587 * _587) * 0.20000000298023224f) + 0.10000000149011612f;
      _591 = _590 * _590;
      _592 = _591 * 0.699999988079071f;
      _593 = _591 * 0.4000000059604645f;
      _594 = _591 * 0.10000000149011612f;
      _601 = WaveReadLaneFirst(_materialIndex);
      _609 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_601 < (uint)170000), _601, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceEffectRatio);
      _617 = saturate((_592 - (_592 * _583)) * _609);  // [sem: expr_sat]
      _618 = saturate((_593 - (_593 * _583)) * _609);  // [sem: expr_sat]
      _619 = saturate((_594 - (_594 * _583)) * _609);  // [sem: expr_sat]
      break;
    }
  } else {
    _617 = 0.0f;  // [sem: expr_sat]
    _618 = 0.0f;  // [sem: expr_sat]
    _619 = 0.0f;  // [sem: expr_sat]
  }
  if ((_159.x < 1.0000000116860974e-07f) || (_159.x == 1.0f)) {
    _627 = exp2(log2(abs(_276)) * 0.5f);
    _628 = WaveReadLaneFirst(_materialIndex);
    _638 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_628 < (uint)170000), _628, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSkyColor.x);
    _639 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_628 < (uint)170000), _628, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSkyColor.y);
    _640 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_628 < (uint)170000), _628, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSkyColor.z);
    _651 = false;
    _652 = (lerp(_617, _638, _627));  // [sem: blended]
    _653 = (lerp(_618, _639, _627));  // [sem: blended]
    _654 = (lerp(_619, _640, _627));  // [sem: blended]
  } else {
    _651 = true;
    _652 = _617;  // [sem: blended]
    _653 = _618;  // [sem: blended]
    _654 = _619;  // [sem: blended]
  }
  _657 = max(0.0010000000474974513f, _exposure0.x);
  _658 = _652 / _657;
  _659 = _653 / _657;
  _660 = _654 / _657;
  _661 = 4.0f / _35;
  _662 = _661 * _144;
  _663 = _661 * _145;
  _668 = WaveReadLaneFirst(_materialIndex);
  _676 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_668 < (uint)170000), _668, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
  _683 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_676 < (uint)65000), _676, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_662, ((_time.x * 0.10000000149011612f) + _663)));
  _689 = WaveReadLaneFirst(_materialIndex);
  _697 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_689 < (uint)170000), _689, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _698 = _697 * (_683.y + -0.30000001192092896f);
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_704.x, _704.y);
  _721 = (((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_704.x)))))) + 0.5f) * ((_698 * 0.0010000000474974513f) + _144)), int((float((int)(int(float((int)((int)(_704.y)))))) + 0.5f) * ((_698 * 0.019999999552965164f) + _145)), 0)))).x) & 255;
  _722 = WaveReadLaneFirst(_materialIndex);
  _730 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_722 < (uint)170000), _722, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._radius);
  _731 = WaveReadLaneFirst(_materialIndex);
  _739 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_731 < (uint)170000), _731, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _742 = saturate(1.0f - _739) * _730;
  [branch]
  if (!(!(_742 >= 0.0010000000474974513f))) {
    _745 = ddx_coarse(_275);
    _746 = ddx_coarse(_276);
    _747 = ddx_coarse(_277);
    _748 = ddy_coarse(_275);
    _749 = ddy_coarse(_276);
    _750 = ddy_coarse(_277);
    _751 = ddx_coarse(_144);
    _752 = ddx_coarse(_145);
    _753 = ddy_coarse(_144);
    _754 = ddy_coarse(_145);
    _757 = (_749 * _189) - (_750 * _188);
    _760 = (_750 * _187) - (_748 * _189);
    _763 = (_748 * _188) - (_749 * _187);
    _766 = (_747 * _188) - (_746 * _189);
    _769 = (_745 * _189) - (_747 * _187);
    _772 = (_746 * _187) - (_745 * _188);
    _779 = (_753 * _766) + (_757 * _751);
    _780 = (_753 * _769) + (_760 * _751);
    _781 = (_753 * _772) + (_763 * _751);
    _788 = (_754 * _766) + (_757 * _752);
    _789 = (_754 * _769) + (_760 * _752);
    _790 = (_754 * _772) + (_752 * _763);
    _793 = max(dot(float3(_779, _780, _781), float3(_779, _780, _781)), dot(float3(_788, _789, _790), float3(_788, _789, _790)));
    _796 = rsqrt(select((!(_793 == 0.0f)), _793, 0.10000000149011612f));  // [sem: rsqrt_val]
    _799 = _796 * _275;
    _804 = WaveReadLaneFirst(_materialIndex);
    _812 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_804 < (uint)170000), _804, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._squareSize);
    _813 = _812 * _231;
    _814 = _812 * _232;
    _815 = _812 * _233;
    _816 = floor(_813);
    _817 = floor(_814);
    _818 = floor(_815);
    _820 = 10.0f;
    _821 = 0.0f;
    _822 = 0.0f;
    _823 = 0.0f;
    _824 = -1;
    while(true) {
      _829 = _820;
      _830 = _821;
      _831 = _822;
      _832 = _823;
      _833 = -1;
      while(true) {
        _838 = _829;
        _839 = _830;
        _840 = _831;
        _841 = _832;
        _842 = -1;
        while(true) {
          _843 = float((int)(_842));
          _844 = float((int)(_833));
          _845 = float((int)(_824));
          _849 = sin(_843 + _816);
          _850 = sin(_844 + _817);
          _851 = sin(_845 + _818);
          _866 = _time.x * 0.20000000298023224f;
          _873 = sin(_866 * frac(sin(dot(float3(_849, _850, _851), float3(12.98900032043457f, 78.23300170898438f, 37.71900177001953f))) * 143758.546875f)) + _843;
          _874 = sin(_866 * frac(sin(dot(float3(_849, _850, _851), float3(39.34600067138672f, 11.135000228881836f, 83.15499877929688f))) * 143758.546875f)) + _844;
          _875 = sin(_866 * frac(sin(dot(float3(_849, _850, _851), float3(73.15599822998047f, 52.23500061035156f, 9.151000022888184f))) * 143758.546875f)) + _845;
          _886 = max(abs((_816 - _813) + _873), max(abs((_817 - _814) + _874), abs((_818 - _815) + _875)));
          _887 = (_886 < _838);
          _888 = select(_887, _886, _838);
          _889 = select(_887, _873, _839);
          _890 = select(_887, _874, _840);
          _891 = select(_887, _875, _841);
          _892 = _842 + 1;
          if (!(_892 == 2)) {
            _838 = _888;
            _839 = _889;
            _840 = _890;
            _841 = _891;
            _842 = _892;
            continue;
          }
          while(true) {
            _835 = _833 + 1;
            if (!(_835 == 2)) {
              _829 = _888;
              _830 = _889;
              _831 = _890;
              _832 = _891;
              _833 = _835;
              __loop_jump_target = 828;
              break;
            }
            while(true) {
              _826 = _824 + 1;
              if (!(_826 == 2)) {
                _820 = _888;
                _821 = _889;
                _822 = _890;
                _823 = _891;
                _824 = _826;
                __loop_jump_target = 819;
                break;
              }
              _902 = (_889 + _816) / _812;
              _903 = (_890 + _817) / _812;
              _904 = (_891 + _818) / _812;
              _932 = mad((_viewProj[2].w), _904, mad((_viewProj[1].w), _903, ((_viewProj[0].w) * _902))) + (_viewProj[3].w);
              _937 = (((mad((_viewProj[2].x), _904, mad((_viewProj[1].x), _903, ((_viewProj[0].x) * _902))) + (_viewProj[3].x)) / _932) * 0.5f) + 0.5f;
              _938 = 0.5f - (((mad((_viewProj[2].y), _904, mad((_viewProj[1].y), _903, ((_viewProj[0].y) * _902))) + (_viewProj[3].y)) / _932) * 0.5f);
              _943 = _902 - _mainPosition.x;
              _944 = _903 - _mainPosition.y;
              _945 = _904 - _mainPosition.z;
  // [sem: expr_sat]
              _954 = saturate(1.0f - ((1.0f - ((1.0f / max(9.999999747378752e-06f, _742)) * sqrt(dot(float3(_943, _944, _945), float3(_943, _944, _945))))) * 1.0152283906936646f));
              _956 = 1.0f - saturate(_954);
              _957 = _954 * 0.5f;
              _959 = (_144 - _937) / _956;
              _961 = (_145 - _938) / _956;
              _962 = sin(_957);
              _963 = cos(_957);
              _969 = mad((-0.0f - _962), _961, (_963 * _959)) + _937;
              _970 = mad(_963, _961, (_962 * _959)) + _938;
              _982 = (saturate(_159.x * 1.5f) * 0.5f) * saturate(frac(sin(dot(float2(float((int)(int((_bufferSizeAndInvSize.x + -1.0f) * saturate(_144)))), float((int)(int((_bufferSizeAndInvSize.y + -1.0f) * saturate(_145))))), float2(12.989800453186035f, 78.23300170898438f))) * 43758.546875f) + 0.5f);
              _983 = _982 * mad((_796 * _781), _277, mad((_796 * _780), _276, (_799 * _779)));
              _984 = _983 * 0.8333333730697632f;
              _985 = _982 * mad((_796 * _790), _277, mad((_796 * _789), _276, (_799 * _788)));
              _986 = _985 * 0.8333333730697632f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _991 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_984 + _144), (_986 + _145)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _995 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_969 + _984), (_970 + _986)));
              _1005 = (pow(_995.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1006 = (pow(_995.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1007 = (pow(_995.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1035 = WaveReadLaneFirst(_materialIndex);
              _1043 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1035 < (uint)170000), _1035, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
              _1045 = (float)((bool)(uint)(_991.w < _1043));
              _1052 = (_1045 * ((exp2(log2(max(0.0f, (_1005 + -0.8359375f)) / (18.8515625f - (_1005 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _658)) + _658;
              _1053 = (_1045 * ((exp2(log2(max(0.0f, (_1006 + -0.8359375f)) / (18.8515625f - (_1006 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _659)) + _659;
              _1054 = (_1045 * ((exp2(log2(max(0.0f, (_1007 + -0.8359375f)) / (18.8515625f - (_1007 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _660)) + _660;
              if (!(_991.w > 0.8999999761581421f)) {
                _1057 = _983 * 0.6666666865348816f;
                _1058 = _985 * 0.6666666865348816f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _1063 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1057 + _144), (_1058 + _145)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _1067 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_969 + _1057), (_970 + _1058)));
                _1077 = (pow(_1067.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1078 = (pow(_1067.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1079 = (pow(_1067.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                _1107 = WaveReadLaneFirst(_materialIndex);
                _1115 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1107 < (uint)170000), _1107, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
                _1117 = (float)((bool)(uint)(_1063.w < _1115));
                _1124 = (_1117 * ((exp2(log2(max(0.0f, (_1077 + -0.8359375f)) / (18.8515625f - (_1077 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _1052)) + _1052;
                _1125 = (_1117 * ((exp2(log2(max(0.0f, (_1078 + -0.8359375f)) / (18.8515625f - (_1078 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _1053)) + _1053;
                _1126 = (_1117 * ((exp2(log2(max(0.0f, (_1079 + -0.8359375f)) / (18.8515625f - (_1079 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _1054)) + _1054;
                if (!(_1063.w > 0.8999999761581421f)) {
                  _1129 = _983 * 0.5f;
                  _1130 = _985 * 0.5f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1135 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1129 + _144), (_1130 + _145)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1139 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_969 + _1129), (_970 + _1130)));
                  _1149 = (pow(_1139.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                  _1150 = (pow(_1139.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                  _1151 = (pow(_1139.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                  _1179 = WaveReadLaneFirst(_materialIndex);
                  _1187 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1179 < (uint)170000), _1179, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
                  _1189 = (float)((bool)(uint)(_1135.w < _1187));
                  _1196 = (_1189 * ((exp2(log2(max(0.0f, (_1149 + -0.8359375f)) / (18.8515625f - (_1149 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _1124)) + _1124;
                  _1197 = (_1189 * ((exp2(log2(max(0.0f, (_1150 + -0.8359375f)) / (18.8515625f - (_1150 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _1125)) + _1125;
                  _1198 = (_1189 * ((exp2(log2(max(0.0f, (_1151 + -0.8359375f)) / (18.8515625f - (_1151 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _1126)) + _1126;
                  if (!(_1135.w > 0.8999999761581421f)) {
                    _1201 = _983 * 0.3333333432674408f;
                    _1202 = _985 * 0.3333333432674408f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                    _1207 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1201 + _144), (_1202 + _145)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                    _1211 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_969 + _1201), (_970 + _1202)));
                    _1221 = (pow(_1211.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                    _1222 = (pow(_1211.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                    _1223 = (pow(_1211.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                    _1251 = WaveReadLaneFirst(_materialIndex);
                    _1259 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1251 < (uint)170000), _1251, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
                    _1261 = (float)((bool)(uint)(_1207.w < _1259));
                    _1268 = (_1261 * ((exp2(log2(max(0.0f, (_1221 + -0.8359375f)) / (18.8515625f - (_1221 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _1196)) + _1196;
                    _1269 = (_1261 * ((exp2(log2(max(0.0f, (_1222 + -0.8359375f)) / (18.8515625f - (_1222 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _1197)) + _1197;
                    _1270 = (_1261 * ((exp2(log2(max(0.0f, (_1223 + -0.8359375f)) / (18.8515625f - (_1223 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _1198)) + _1198;
                    if (!(_1207.w > 0.8999999761581421f)) {
                      _1273 = _983 * 0.1666666716337204f;
                      _1274 = _985 * 0.1666666716337204f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                      _1279 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1273 + _144), (_1274 + _145)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                      _1283 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_969 + _1273), (_970 + _1274)));
                      _1293 = (pow(_1283.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                      _1294 = (pow(_1283.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                      _1295 = (pow(_1283.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
                      _1323 = WaveReadLaneFirst(_materialIndex);
                      _1331 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1323 < (uint)170000), _1323, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
                      _1333 = (float)((bool)(uint)(_1279.w < _1331));
                      _1344 = ((_1333 * ((exp2(log2(max(0.0f, (_1295 + -0.8359375f)) / (18.8515625f - (_1295 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _1270)) + _1270);
                      _1345 = ((_1333 * ((exp2(log2(max(0.0f, (_1294 + -0.8359375f)) / (18.8515625f - (_1294 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _1269)) + _1269);
                      _1346 = ((_1333 * ((exp2(log2(max(0.0f, (_1293 + -0.8359375f)) / (18.8515625f - (_1293 * 18.6875f))) * 6.277394771575928f) * 4000.0f) - _1268)) + _1268);
                      _1347 = _1279.w;
                    } else {
                      _1344 = _1270;
                      _1345 = _1269;
                      _1346 = _1268;
                      _1347 = _1207.w;
                    }
                  } else {
                    _1344 = _1198;
                    _1345 = _1197;
                    _1346 = _1196;
                    _1347 = _1135.w;
                  }
                } else {
                  _1344 = _1126;
                  _1345 = _1125;
                  _1346 = _1124;
                  _1347 = _1063.w;
                }
              } else {
                _1344 = _1054;
                _1345 = _1053;
                _1346 = _1052;
                _1347 = _991.w;
              }
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1350 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_969, _970));
              _1360 = (pow(_1350.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1361 = (pow(_1350.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1362 = (pow(_1350.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
              _1390 = WaveReadLaneFirst(_materialIndex);
              _1398 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1390 < (uint)170000), _1390, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
              _1400 = (float)((bool)(uint)(_1347 < _1398));
              _1411 = ((_1400 * ((exp2(log2(max(0.0f, (_1360 + -0.8359375f)) / (18.8515625f - (_1360 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _1346)) + _1346);
              _1412 = ((_1400 * ((exp2(log2(max(0.0f, (_1361 + -0.8359375f)) / (18.8515625f - (_1361 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _1345)) + _1345);
              _1413 = ((_1400 * ((exp2(log2(max(0.0f, (_1362 + -0.8359375f)) / (18.8515625f - (_1362 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _1344)) + _1344);
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
        if (__loop_jump_target == 828) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
      if (__loop_jump_target == 819) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
  } else {
    _1411 = _658;
    _1412 = _659;
    _1413 = _660;
  }
  _1414 = WaveReadLaneFirst(_materialIndex);
  _1422 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1414 < (uint)170000), _1414, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _1423 = WaveReadLaneFirst(_materialIndex);
  _1431 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1423 < (uint)170000), _1423, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._tempCubeSpaceRatio);
  [branch]
  if ((_721 == _renderPassMemoryBackground) || ((!(_721 == _renderPassMemoryBackground)) && (_721 == _renderPassDetectRemoteCatch)) || (((!(_721 == _renderPassMemoryBackground)) && (!(_721 == _renderPassDetectRemoteCatch))) && (_721 == _renderPassDetectPickedRemoteCatch))) {
    _1451 = WaveReadLaneFirst(_materialIndex);
    _1459 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1451 < (uint)170000), _1451, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._memoryOpacity);
    _1474 = _1459;
  } else {
    if (_721 == _renderPassEnemyBoss) {
      _1464 = WaveReadLaneFirst(_materialIndex);
      _1472 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1464 < (uint)170000), _1464, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._enemyBossOpacity);
      _1474 = _1472;
    } else {
      _1474 = 1.0f;
    }
  }
  _1475 = WaveReadLaneFirst(_materialIndex);
  _1483 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1475 < (uint)170000), _1475, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _1487 = saturate((_1483 * 100.0f) + -99.0f) * _1474;
  if (!(!(_1487 >= 0.0010000000474974513f))) {
    [branch]
    if ((_721 == _renderPassSelfPlayer) | (_721 == _renderPassTest) | (_721 == _renderPassDetectRemoteCatch) | (_721 == _renderPassDetectPickedRemoteCatch)) {
      _1512 = WaveReadLaneFirst(_materialIndex);
      _1520 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1512 < (uint)170000), _1512, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
      _1527 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1520 < (uint)65000), _1520, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_662 - (_time.x * 0.2199999988079071f)), (_663 - (_time.x * 0.18000000715255737f))));
      _1530 = _1527.x + -0.30000001192092896f;
      _1532 = ((_1527.x + -0.4000000059604645f) * 10.471975326538086f) + -1.5707963705062866f;
      _1535 = _1530 * 0.006000000052154064f;
      _1537 = _1535;
      _1538 = _1535;
      _1539 = 0.0f;
      _1540 = 0.0f;
      _1541 = 0.0f;
      _1542 = 0.0f;
      _1543 = -1.0f;
      while(true) {
        _1548 = _144 - ((_1537 * sin(_1532)) * _1543);
        _1549 = _145 - ((_1538 * cos(_1532)) * _1543);
        _1550 = _1548 + -0.5f;
        _1551 = _1549 + -0.5f;
  // [sem: invLength]
        _1560 = rsqrt(dot(float2(_1550, _1551), float2(_1550, _1551))) * ((_1530 * 0.05999999865889549f) * sqrt((_1550 * _1550) + (_1551 * _1551)));
        _1561 = _1560 * _1550;
        _1563 = _1560 * _1551;
        _1571 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_1548, _1549));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _1580 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1548 - _1561), (_1549 - _1563))))).x) * 0.20000000298023224f) + _1539;
        _1581 = (_1571.y * 0.20000000298023224f) + _1540;
        _1582 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1561 + _1548), (_1563 + _1549))))).z) * 0.20000000298023224f) + _1541;
        _1583 = (_1571.w * 0.20000000298023224f) + _1542;
        _1590 = _1543 + 0.20000000298023224f;
        if (!(!(_1590 <= 1.0f))) {
          _1537 = (_1537 * 1.0099999904632568f);
          _1538 = (_1538 * 1.0099999904632568f);
          _1539 = (_1580 * 0.8999999761581421f);
          _1540 = (_1581 * 0.8999999761581421f);
          _1541 = (_1582 * 0.8999999761581421f);
          _1542 = (_1583 * 0.8999999761581421f);
          _1543 = _1590;
          continue;
        }
        if (!(_721 == _renderPassSelfPlayer)) {
          _1604 = (_721 == _renderPassTest);
        } else {
          _1604 = true;
        }
        _1610 = saturate(_1583 * 1.0800000429153442f);  // [sem: expr_sat]
        _1613 = max(0.0010000000474974513f, _exposure0.x);
        _1621 = ((((_1580 * 0.5400000214576721f) * select(_1604, 0.550000011920929f, 0.5f)) / _1613) * _1610);
        _1622 = ((((_1581 * 0.5400000214576721f) * select(_1604, 0.699999988079071f, 0.800000011920929f)) / _1613) * _1610);
        _1623 = (((_1582 * 0.5400000214576721f) / _1613) * _1610);
        break;
      }
    } else {
      _1621 = 0.0f;
      _1622 = 0.0f;
      _1623 = 0.0f;
    }
  } else {
    _1621 = 0.0f;
    _1622 = 0.0f;
    _1623 = 0.0f;
  }
  if ((_721 == _renderPassSelfPlayer) | (_721 == _renderPassTest)) {
    _1633 = _1487;  // [sem: expr_sat]
  } else {
    _1633 = saturate(saturate(_1431 * 2.0f) * _1422);  // [sem: expr_sat]
  }
  _1637 = _319 + (_1633 * (_1413 - _319));
  _1638 = _318 + (_1633 * (_1412 - _318));
  _1639 = _317 + (_1633 * (_1411 - _317));
  if (_721 == _renderPassMemoryBackground) {
    _1654 = max(1.0000000116860974e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_customRenderPassSizeInvSize.x * _144), int(_customRenderPassSizeInvSize.y * _145), 0)))).x));
    _1690 = mad((_invViewProj[2].w), _1654, mad((_invViewProj[1].w), _193, ((_invViewProj[0].w) * _191))) + (_invViewProj[3].w);
    _1691 = (mad((_invViewProj[2].x), _1654, mad((_invViewProj[1].x), _193, ((_invViewProj[0].x) * _191))) + (_invViewProj[3].x)) / _1690;
    _1693 = (mad((_invViewProj[2].z), _1654, mad((_invViewProj[1].z), _193, ((_invViewProj[0].z) * _191))) + (_invViewProj[3].z)) / _1690;
    _1702 = WaveReadLaneFirst(_materialIndex);
    _1710 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1702 < (uint)170000), _1702, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
    _1717 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1710 < (uint)65000), _1710, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.009999999776482582f) + (_1691 * 0.699999988079071f)), ((_1693 * 0.699999988079071f) - (_time.x * 0.03999999910593033f))));
    _1720 = _1717.w + -0.5f;
    _1721 = _1717.z + -0.5f;
    _1736 = _time.x * 0.019999999552965164f;
    _1739 = WaveReadLaneFirst(_materialIndex);
    _1747 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1739 < (uint)170000), _1739, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._auraTex);
    _1754 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1747 < (uint)65000), _1747, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((_1691 * 1.100000023841858f) - ((_683.y + -0.5f) * 0.10000000149011612f)) + (_1720 * 0.30000001192092896f)) - _1736), ((((_1693 * 1.100000023841858f) - ((_683.w + -0.5f) * 0.10000000149011612f)) + (_1721 * 0.30000001192092896f)) - _1736)));
    _1765 = _1720 * 2.0f;
    _1769 = (((0.5f - _683.w) + _1691) + _1765) - _mainPosition.x;
    _1772 = (((0.5f - _683.x) + ((mad((_invViewProj[2].y), _1654, mad((_invViewProj[1].y), _193, ((_invViewProj[0].y) * _191))) + (_invViewProj[3].y)) / _1690)) + (_1721 * 2.0f)) - _mainPosition.y;
    _1775 = (((0.5f - _683.z) + _1693) + _1765) - _mainPosition.z;
    _1784 = 1.0f - saturate(sqrt(((_1769 * _1769) + (_1772 * _1772)) + (_1775 * _1775)) * 0.125f);
    _1793 = ((sin((_time.x * 5.0f) + (_1784 * 60.0f)) + 1.0f) * 0.25f) + 0.5f;
    _1795 = _1784 * (_1793 * _1793);
    _1797 = (_1795 * _1795) * _683.x;
    _1815 = max(0.0010000000474974513f, _exposure0.x);
    _1829 = (((((((_1784 * 0.010000000707805157f) + ((_1754.x * _1754.x) * _1797)) * _1754.x) / _1815) - _1639) * _1487) + _1639);
    _1830 = (((((((_1784 * 0.03500000014901161f) + ((_1754.y * _1754.y) * _1797)) * _1754.y) / _1815) - _1638) * _1487) + _1638);
    _1831 = (((((((_1784 * 0.05000000074505806f) + ((_1754.z * _1754.z) * _1797)) * _1754.z) / _1815) - _1637) * _1487) + _1637);
  } else {
    _1829 = _1639;
    _1830 = _1638;
    _1831 = _1637;
  }
  _1832 = WaveReadLaneFirst(_materialIndex);
  _1840 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1832 < (uint)170000), _1832, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadBackgroundOpacity);
  if (!(!(_1840 >= 0.0010000000474974513f))) {
    _1847 = _231 - _mainPosition.x;
    _1848 = _232 - _mainPosition.y;
    _1849 = _233 - _mainPosition.z;
    _1857 = saturate(sqrt(((_1847 * _1847) + (_1848 * _1848)) + (_1849 * _1849)) * 0.03333333507180214f);  // [sem: expr_sat]
    _1858 = 1.0f - _1857;
    _1869 = (((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(_bufferSizeAndInvSize.x * _144)), (int)(uint(_bufferSizeAndInvSize.y * _145)), 0)))).x) & 127;
    if (_651 && (_1858 > 0.0f)) {
      _1891 = WaveReadLaneFirst(_materialIndex);
      _1899 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1891 < (uint)170000), _1891, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._glitchTex);
      _1906 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1899 < (uint)65000), _1899, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_231 * 0.10000000149011612f), (_233 * 0.10000000149011612f)));
      _1911 = (_1906.x * 2.0f) + -0.9960784316062927f;
      _1912 = (_1906.y * 2.0f) + -0.9960784316062927f;
      _1927 = ((_1911 + _231) - _viewPos.x) * 0.05999999865889549f;
      _1928 = ((_1912 + _232) - _viewPos.y) * 0.05999999865889549f;
      _1929 = ((sqrt(saturate(1.0f - dot(float2(_1911, _1912), float2(_1911, _1912)))) + _233) - _viewPos.z) * 0.05999999865889549f;
      _1935 = sqrt(((_1927 * _1927) + (_1928 * _1928)) + (_1929 * _1929));
      _1938 = _time.x * 0.30000001192092896f;
      _1944 = exp2(log2(frac(_1935 - _1938)) * 15.0f) * _1858;
      _1959 = exp2(log2(saturate(1.0f - abs((frac((_1935 + 0.5f) - _1938) * 2.0f) + -1.0f))) * 30.0f) * (_1858 * 0.014999999664723873f);
      _1963 = (_1959 * _1911);
      _1964 = (_1959 * _1912);
      _1965 = (_1944 * 0.20000000298023224f);
      _1966 = (_1944 * 0.5f);
      _1967 = _1944;
    } else {
      _1963 = 0.0f;
      _1964 = 0.0f;
      _1965 = 0.0f;
      _1966 = 0.0f;
      _1967 = 0.0f;
    }
    if (((uint)(_1869 + -53) < (uint)15) || ((!((uint)(_1869 + -53) < (uint)15)) && ((((_nearFarProj.x / _194) - (_nearFarProj.x / max(1.0000000116860974e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_customRenderPassSizeInvSize.x * _144), int(_customRenderPassSizeInvSize.y * _145), 0)))).x)))) > 0.20000000298023224f) && (_721 == _renderPassMemory)))) {
      _1986 = uint(_bufferSizeAndInvSize.x * ((_698 * 0.0005000000237487257f) + _144));
      _1987 = uint(_bufferSizeAndInvSize.y * ((_698 * 0.009999999776482582f) + _145));
      _1989 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_1986, _1987, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _1992 = __3__36__0__0__g_gbufferNormal.Load(int3(_1986, _1987, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _2010 = (saturate(_1992.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _2011 = (saturate(_1992.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _2012 = (saturate(_1992.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _2014 = rsqrt(dot(float3(_2010, _2011, _2012), float3(_2010, _2011, _2012)));  // [sem: invLength]
      _2015 = _2014 * _2010;
      _2016 = _2014 * _2011;
      _2017 = _2012 * _2014;
      _2020 = (((float)((uint)((uint)(((uint)((uint)(_1989.w)) >> 8) & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _2021 = (((float)((uint)((uint)(_1989.w & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _2024 = (_2020 + _2021) * 0.5f;
      _2025 = (_2020 - _2021) * 0.5f;
      _2029 = (1.0f - abs(_2024)) - abs(_2025);
      _2031 = rsqrt(dot(float3(_2024, _2025, _2029), float3(_2024, _2025, _2029)));  // [sem: invLength]
      _2032 = _2031 * _2024;
      _2033 = _2031 * _2025;
      _2034 = _2031 * _2029;
      _2036 = select((_2017 >= 0.0f), 1.0f, -1.0f);
      _2039 = -0.0f - (1.0f / (_2036 + _2017));
      _2040 = _2016 * _2039;
      _2041 = _2040 * _2015;
      _2042 = _2036 * _2015;
      _2051 = mad(_2034, _2015, mad(_2033, _2041, ((((_2042 * _2015) * _2039) + 1.0f) * _2032)));
      _2055 = mad(_2034, _2016, mad(_2033, (_2036 + (_2040 * _2016)), ((_2032 * _2036) * _2041)));
      _2059 = mad(_2034, _2017, mad(_2033, (-0.0f - _2016), (-0.0f - (_2042 * _2032))));
      _2061 = rsqrt(dot(float3(_2051, _2055, _2059), float3(_2051, _2055, _2059)));  // [sem: invLength]
  // [sem: expr_sat]
      _2073 = saturate(dot(float3((_2061 * _2051), (_2061 * _2055), (_2061 * _2059)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _2074 = 1.0f - _2073;
      _2077 = max(0.0010000000474974513f, _exposure0.x);
      _2082 = (_2074 * _2074) * _1858;
      if ((_721 == _renderPassSelfPlayer) || ((!(_721 == _renderPassSelfPlayer)) && (_721 == _renderPassTest))) {
        _2102 = ((_2074 * 0.05000000074505806f) + 0.10000000149011612f);
      } else {
        _2102 = select((_721 == _renderPassMemory), 1.100000023841858f, 0.10000000149011612f);
      }
      _2116 = (pow(_1857, 1.5f)) * ((pow(_2073, 5.0f)) * 0.800000011920929f);
      _2353 = ((((_2082 * (0.4000000059604645f / _2077)) * _2102) + _1829) + (_2116 * _1965));
      _2354 = ((((_2082 * (0.699999988079071f / _2077)) * _2102) + _1830) + (_2116 * _1966));
      _2355 = ((((_2082 * (1.0f / _2077)) * _2102) + _1831) + (_2116 * _1967));
    } else {
      _2128 = _231 - _mainPosition.x;
      _2129 = _232 - _mainPosition.y;
      _2130 = _233 - _mainPosition.z;
      _2144 = _231 - _aimHighlightPosition.x;
      _2145 = _232 - _aimHighlightPosition.y;
      _2146 = _233 - _aimHighlightPosition.z;
      _2157 = 1.0f - saturate(sqrt(((_2144 * _2144) + (_2145 * _2145)) + (_2146 * _2146)) / (_aimHighlightPosition.w * 5.0f));
  // [sem: _3__36__0__0__g_specularAO_sampleLod]
      _2164 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_1963 + _144), (_1964 + _145)), 0.0f);
      _2169 = _2164.w * saturate(((_2157 * _2157) * _2157) + ((1.0f - saturate(sqrt(((_2128 * _2128) + (_2129 * _2129)) + (_2130 * _2130)) * 0.5f)) * 0.10000000149011612f));
      _2170 = _2169 * 5.0f;
      _2172 = (_2164.w * _2164.w) * _1858;
      _2177 = ((_2172 * _2172) * 49.959999084472656f) + 0.03999999910593033f;
      _2181 = _2169 * 1.75f;
      _2182 = _2169 * 3.25f;
      _2183 = _2169 * 120.0f;
      _2191 = ((1.0f - saturate(_2183 + -3.0f)) * saturate(_2183 + -2.0f)) * (0.3499999940395355f - _2181);
      _2200 = ((0.6499999761581421f - _2182) * saturate(_2183 + -2.5f)) * (1.0f - saturate(_2183 + -4.0f));
      _2209 = (saturate(_2183 + -3.5f) * (1.0f - _2170)) * (1.0f - saturate(_2183 + -5.0f));
      _2212 = saturate(_2183 + -8.0f);  // [sem: expr_sat]
      _2219 = 1.0f - _2172;
      _2226 = ((_2177 * _1965) + _1829) + (((((_2191 + _2181) - (_2191 * _2212)) * _2219) + (_2172 * 0.3499999940395355f)) * _1840);
      _2230 = ((_2177 * _1966) + _1830) + (((((_2200 + _2182) - (_2200 * _2212)) * _2219) + (_2172 * 0.6499999761581421f)) * _1840);
      _2234 = ((_2177 * _1967) + _1831) + (((((_2209 + _2170) - (_2209 * _2212)) * _2219) + _2172) * _1840);
      if (_1869 == 7) {
        _2240 = ((_isPhotosensitiveMode_isAllolwBlood & 1) != 0);
        _2353 = select(_2240, 0.014999999664723873f, 0.007000000216066837f);
        _2354 = 0.0f;
        _2355 = select(_2240, 0.0f, 0.014999999664723873f);
      } else {
        _2244 = _1869 + -105;
        if ((_1869 == 107) || ((_1869 == 26) || (((uint)(_1869 + -27) < (uint)2) || ((uint)_2244 < (uint)2)))) {
          _2258 = _mainPosition.x - _viewPos.x;
          _2259 = _mainPosition.y - _viewPos.y;
          _2260 = _mainPosition.z - _viewPos.z;
          _2288 = mad((_viewProjRelative[2].w), _2260, mad((_viewProjRelative[1].w), _2259, ((_viewProjRelative[0].w) * _2258))) + (_viewProjRelative[3].w);
          _2289 = (mad((_viewProjRelative[2].x), _2260, mad((_viewProjRelative[1].x), _2259, ((_viewProjRelative[0].x) * _2258))) + (_viewProjRelative[3].x)) / _2288;
          _2293 = 0.5f - (((mad((_viewProjRelative[2].y), _2260, mad((_viewProjRelative[1].y), _2259, ((_viewProjRelative[0].y) * _2258))) + (_viewProjRelative[3].y)) / _2288) * 0.5f);
          _2303 = ((_view[0].x) * 5.0f) + _2258;
          _2304 = ((_view[1].x) * 5.0f) + _2259;
          _2305 = ((_view[2].x) * 5.0f) + _2260;
          _2317 = mad((_viewProjRelative[2].w), _2305, mad((_viewProjRelative[1].w), _2304, (_2303 * (_viewProjRelative[0].w)))) + (_viewProjRelative[3].w);
          _2323 = (0.5f - (((mad((_viewProjRelative[2].y), _2305, mad((_viewProjRelative[1].y), _2304, (_2303 * (_viewProjRelative[0].y)))) + (_viewProjRelative[3].y)) / _2317) * 0.5f)) - _2293;
          _2325 = (_35 * 0.5f) * (((mad((_viewProjRelative[2].x), _2305, mad((_viewProjRelative[1].x), _2304, (_2303 * (_viewProjRelative[0].x)))) + (_viewProjRelative[3].x)) / _2317) - _2289);
          _2332 = _145 - _2293;
          _2333 = ((_144 + -0.5f) - (_2289 * 0.5f)) * _35;
          _2341 = 1.0f - saturate(sqrt((_2332 * _2332) + (_2333 * _2333)) / max(0.0010000000474974513f, sqrt((_2323 * _2323) + (_2325 * _2325))));
          _2346 = (_2341 * _2341) * (select(((uint)_2244 < (uint)3), 0.10000000149011612f, 0.014999999664723873f) * _1840);
          _2353 = ((_2346 * 0.3499999940395355f) + _2226);
          _2354 = ((_2346 * 0.6499999761581421f) + _2230);
          _2355 = (_2346 + _2234);
        } else {
          _2353 = _2226;
          _2354 = _2230;
          _2355 = _2234;
        }
      }
    }
  } else {
    _2353 = _1829;
    _2354 = _1830;
    _2355 = _1831;
  }
  if (_721 == _renderPassEnemyBoss) {
    _2362 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_144, _145));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _2367 = saturate(_2362.z * 2.0f);  // [sem: expr_sat]
    _2378 = saturate((_2362.x * 3.0f) * ((1.0f / max(0.0010000000474974513f, _exposure0.x)) - _2362.z));  // [sem: expr_sat]
    _2379 = _2378 * 0.6000000238418579f;
    _2380 = _2378 * 0.6499999761581421f;
    _2390 = WaveReadLaneFirst(_materialIndex);
    _2398 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_2390 < (uint)170000), _2390, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._enemyBossOpacity);
    _2403 = (_2398 * ((((_2362.y * 0.22499999403953552f) - _2379) * _2367) + _2379));
    _2404 = (_2398 * ((((_2362.y * 0.32499998807907104f) - _2380) * _2367) + _2380));
    _2405 = (_2398 * ((((_2362.y * 0.5f) - _2378) * _2367) + _2378));
  } else {
    _2403 = _2353;
    _2404 = _2354;
    _2405 = _2355;
  }
  _2406 = _144 + -0.5f;
  _2407 = _145 + -0.5f;
  _2414 = saturate((sqrt((_2407 * _2407) + (_2406 * _2406)) + -0.009999999776482582f) * 1.0101009607315063f);  // [sem: expr_sat]
  _2419 = WaveReadLaneFirst(_materialIndex);
  _2427 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_2419 < (uint)170000), _2419, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._vignetteIntensity);
  _2429 = WaveReadLaneFirst(_materialIndex);
  _2437 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_2429 < (uint)170000), _2429, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _2439 = 1.0f - ((((_2414 * _2414) * (3.0f - (_2414 * 2.0f))) * _2427) * _2437);
  _2446 = max(0.0f, (_2439 * (_2403 + _1621)));
  _2447 = max(0.0f, (_2439 * (_2404 + _1622)));
  _2448 = max(0.0f, (_2439 * (_2405 + _1623)));
  _2449 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _2462 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _2449, 0)))).x) & 127)))) + 0.5f);
  } else {
    _2462 = 1.0f;
  }
  _2465 = (_localToneMappingParams.w > 0.0f);
  if (_2465) {
    // RenoDX: >>> [Patch: ScreenEffectTonemapReplace] [Version: 1.12.02]
    // Description: Screen-effect composite variant 0xD99B7998, HDR/PQ (ST.2084) output permutation (its material constants come from the PostProcessMemoryRead bindless struct). Like every member of the game's postprocess material family it statically inlines the full vanilla tonemap pipeline and can own the visible final output while its screen effect plays, so an unreplaced curve would render the whole screen with vanilla colors (flat/grey versus the RenoDX look) for the effect's duration. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_2446, _2447, _2448));
    _2725 = _rndx_tonemapped_color.x;
    _2726 = _rndx_tonemapped_color.y;
    _2727 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: ScreenEffectTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _2733 = 1.0f - abs(_etcParams.w);
      _2737 = saturate(_etcParams.w);  // [sem: expr_sat]
      _2738 = (_2733 * _2725) + _2737;
      _2739 = (_2733 * _2726) + _2737;
      _2740 = (_2733 * _2727) + _2737;
      if (_colorGradingParams.w > 0.0f) {
        _2745 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _2762 = (((max(0.0f, (1.0f - _2738)) - _2738) * _2745) + _2738);
        _2763 = (((max(0.0f, (1.0f - _2739)) - _2739) * _2745) + _2739);
        _2764 = (((max(0.0f, (1.0f - _2740)) - _2740) * _2745) + _2740);
      } else {
        _2762 = _2738;
        _2763 = _2739;
        _2764 = _2740;
      }
      _2770 = _userImageAdjust.y + 1.0f;
      _2774 = _userImageAdjust.x + 0.5f;
      _2775 = ((_2762 + -0.5f) * _2770) + _2774;
      _2776 = ((_2763 + -0.5f) * _2770) + _2774;
      _2777 = ((_2764 + -0.5f) * _2770) + _2774;
      _2807 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _2818 = exp2(log2(saturate(mad(_colorBlind0.z, _2777, mad(_colorBlind0.y, _2776, (_colorBlind0.x * _2775))))) * _2807);
      _2819 = exp2(log2(saturate(mad(_colorBlind1.z, _2777, mad(_colorBlind1.y, _2776, (_colorBlind1.x * _2775))))) * _2807);
      _2820 = exp2(log2(saturate(mad(_colorBlind2.z, _2777, mad(_colorBlind2.y, _2776, (_colorBlind2.x * _2775))))) * _2807);
    } else {
      _2818 = _2725;
      _2819 = _2726;
      _2820 = _2727;
    }
  } else {
    _2818 = _2446;
    _2819 = _2447;
    _2820 = _2448;
  }
  if (_etcParams.y > 1.0f) {
    _2829 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _2830 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _2834 = saturate(1.0f - (dot(float2(_2829, _2830), float2(_2829, _2830)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _2839 = (_2834 * _2818);
    _2840 = (_2834 * _2819);
    _2841 = (_2834 * _2820);
  } else {
    _2839 = _2818;
    _2840 = _2819;
    _2841 = _2820;
  }
  if (_2465 && (_etcParams.z > 0.0f)) {
    _2871 = select((_2839 <= 0.0031308000907301903f), (_2839 * 12.920000076293945f), (((pow(_2839, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _2872 = select((_2840 <= 0.0031308000907301903f), (_2840 * 12.920000076293945f), (((pow(_2840, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _2873 = select((_2841 <= 0.0031308000907301903f), (_2841 * 12.920000076293945f), (((pow(_2841, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _2871 = _2839;
    _2872 = _2840;
    _2873 = _2841;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2878 = (float)((uint)_2449);
    if (!(_2878 < _viewDir.w)) {
      if (!(_2878 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _2887 = _2871;
        _2888 = _2872;
        _2889 = _2873;
      } else {
        _2887 = 0.0f;
        _2888 = 0.0f;
        _2889 = 0.0f;
      }
    } else {
      _2887 = 0.0f;
      _2888 = 0.0f;
      _2889 = 0.0f;
    }
  } else {
    _2887 = _2871;
    _2888 = _2872;
    _2889 = _2873;
  }
  _2899 = exp2(log2(_2887 * 9.999999747378752e-05f) * 0.1593017578125f);
  _2900 = exp2(log2(_2888 * 9.999999747378752e-05f) * 0.1593017578125f);
  _2901 = exp2(log2(_2889 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_2899 * 18.6875f) + 1.0f)) * ((_2899 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_2900 * 18.6875f) + 1.0f)) * ((_2900 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_2901 * 18.6875f) + 1.0f)) * ((_2901 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _2462;
  return SV_Target;
}
