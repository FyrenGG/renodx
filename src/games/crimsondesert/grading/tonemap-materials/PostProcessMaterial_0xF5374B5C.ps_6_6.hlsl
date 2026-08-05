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
  bool _202;
  float _205;
  float _207;
  float _209;
  float _212;
  float _217;
  float _222;
  int _225;
  float _233;
  float _234;
  float _241;
  float _247;
  float _260;
  int _262;
  float _263;
  int _337;
  float _338;
  float _340;
  float _536;
  float _537;
  float _538;
  float _745;
  float _746;
  float _893;
  float _894;
  float _895;
  float _1020;
  int _1089;
  float _1090;
  float _1091;
  float _1092;
  float _1093;
  int _1094;
  int _1095;
  int _1166;
  int _1167;
  int _1168;
  int _1175;
  float _1322;
  float _1323;
  float _1324;
  float _1325;
  float _1326;
  float _1327;
  int _1446;
  int _1447;
  float _1448;
  float _1449;
  float _1450;
  float _1451;
  int _1452;
  int _1505;
  int _1506;
  int _1507;
  float _1600;
  float _1601;
  float _1602;
  int _1603;
  float _1673;
  float _1674;
  float _1675;
  int _1676;
  float _1708;
  float _1709;
  float _1710;
  float _1767;
  float _1768;
  float _1769;
  float _2347;
  float _2348;
  float _2349;
  float _2398;
  float _2603;
  float _2604;
  float _2605;
  float _2698;
  float _2699;
  float _2700;
  float _2754;
  float _2755;
  float _2756;
  float _2772;
  float _2773;
  float _2774;
  float _2804;
  float _2805;
  float _2806;
  float _2820;
  float _2821;
  float _2822;
  float _266;
  float _268;
  float _274;
  float _277;
  float _279;
  float _285;
  float _288;
  float _290;
  float _296;
  float _299;
  float _300;
  float _301;
  float _302;
  float _304;
  float _308;
  float _312;
  float _316;
  float _317;
  float _318;
  float _319;
  float _329;
  float _333;
  int _334;
  float _342;
  float _344;
  float _346;
  float _347;
  float _349;
  float _355;
  float _356;
  float _358;
  float _364;
  float _365;
  float _367;
  float _373;
  float _374;
  float _375;
  float _376;
  float _377;
  float _378;
  float _381;
  float _384;
  float _387;
  float _388;
  float _389;
  float _390;
  float _391;
  float _400;
  float _402;
  float _404;
  float _410;
  float _414;
  float _418;
  float _419;
  float _420;
  float _422;
  float _424;
  float _430;
  float _432;
  float _435;
  float _439;
  float _442;
  float _443;
  float _444;
  float _445;
  float _447;
  float _449;
  float _455;
  float _456;
  float _459;
  float _462;
  float _465;
  float _466;
  float _467;
  float _468;
  float _478;
  float _489;
  float _500;
  float _502;
  float _505;
  float _507;
  float _509;
  float _511;
  float _518;
  float _521;
  float _525;
  float _531;
  float _549;
  float _550;
  float _551;
  float _552;
  int _555;
  float _563;
  int _566;
  float _574;
  int _579;
  float _587;
  float _590;
  float _592;
  float _594;
  int _597;
  int _605;
  float _606;
  int _609;
  float _617;
  int _620;
  float _628;
  int _631;
  float _639;
  float _645;
  float _648;
  float _650;
  bool _651;
  bool _652;
  bool _653;
  bool _654;
  float _658;
  float _669;
  int _672;
  int _680;
  int _683;
  int _691;
  int _694;
  int _702;
  int _749;
  float _757;
  int _762;
  float _770;
  int _773;
  float _781;
  int _784;
  float _792;
  int _795;
  float _803;
  float _807;
  float _811;
  float _815;
  float _818;
  float _821;
  int _824;
  float _832;
  int _835;
  float _843;
  int _846;
  float _854;
  int _857;
  float _865;
  float _889;
  int _898;
  float _906;
  int _909;
  float _917;
  float _921;
  float _925;
  float _929;
  float _932;
  float _935;
  int _938;
  float _946;
  int _949;
  float _957;
  float _961;
  float _965;
  int _968;
  float _976;
  int _979;
  float _987;
  int _999;
  float _1007;
  int _1009;
  float _1017;
  int _1023;
  float _1031;
  float _1035;
  float _1039;
  int _1042;
  float _1050;
  int _1053;
  float _1061;
  float _1062;
  float _1063;
  float _1071;
  float _1077;
  float _1083;
  float _1084;
  float _1085;
  float _1086;
  float _1096;
  float _1097;
  float _1098;
  uint _1101;
  uint _1104;
  uint _1107;
  uint _1110;
  uint _1121;
  uint _1124;
  float _1139;
  float _1140;
  float _1141;
  float _1142;
  float _1145;
  float _1148;
  float _1151;
  float _1157;
  bool _1158;
  float _1159;
  float _1160;
  float _1161;
  float _1162;
  int _1163;
  int _1170;
  float _1179;
  float _1181;
  float _1183;
  float _1195;
  float4 _1220;
  int _1223;
  float _1231;
  int _1234;
  float _1242;
  float _1291;
  float _1295;
  int _1298;
  float _1306;
  float _1331;
  float _1340;
  float _1342;
  float _1351;
  float _1362;
  int _1365;
  float _1373;
  float _1376;
  float _1377;
  float _1378;
  float _1379;
  float _1380;
  float _1381;
  float _1382;
  float _1383;
  float _1384;
  float _1385;
  float _1388;
  float _1391;
  float _1394;
  float _1397;
  float _1400;
  float _1403;
  float _1406;
  float _1409;
  float _1412;
  float _1415;
  float _1418;
  float _1421;
  float _1424;
  float _1427;
  int _1430;
  float _1438;
  float _1439;
  float _1440;
  float _1441;
  float _1442;
  float _1443;
  float _1444;
  float _1453;
  float _1454;
  float _1455;
  float _1457;
  float _1459;
  float _1461;
  float _1464;
  float _1471;
  float _1478;
  float _1485;
  float _1496;
  bool _1497;
  float _1499;
  float _1500;
  float _1501;
  int _1502;
  int _1509;
  int _1512;
  float _1515;
  float _1517;
  float _1519;
  float _1521;
  float _1533;
  float _1544;
  float _1555;
  int _1558;
  float _1566;
  float _1569;
  float _1571;
  float _1573;
  float _1582;
  float _1584;
  float _1585;
  float _1587;
  float _1589;
  float _1590;
  float _1591;
  float _1595;
  float _1598;
  float _1618;
  float _1624;
  float _1630;
  float4 _1635;
  float4 _1639;
  int _1645;
  float _1653;
  float _1655;
  float _1659;
  float _1663;
  float _1667;
  int _1670;
  float4 _1680;
  int _1683;
  float _1691;
  float _1693;
  int _1713;
  float _1721;
  float _1724;
  float _1727;
  float _1730;
  int _1733;
  int _1741;
  bool _1762;
  int _1772;
  float _1780;
  float _1785;
  float _1799;
  float _1810;
  float _1821;
  int _1824;
  int _1832;
  float _1833;
  float _1839;
  float _1840;
  float _1841;
  float _1842;
  float _1846;
  float _1849;
  float _1851;
  bool _1852;
  bool _1853;
  bool _1854;
  bool _1855;
  float _1866;
  float _1867;
  float _1868;
  float _1869;
  float _1871;
  float _1873;
  float _1877;
  float _1883;
  float _1884;
  float _1887;
  float _1891;
  float _1908;
  float _1909;
  float _1910;
  float _1914;
  float _1917;
  float _1919;
  float _1923;
  bool _1924;
  bool _1925;
  bool _1926;
  bool _1927;
  float _1938;
  float _1949;
  float _1953;
  float _1956;
  float _1958;
  bool _1959;
  bool _1960;
  bool _1961;
  bool _1962;
  float _1973;
  float _1974;
  float _1975;
  float _1978;
  float _1988;
  float _1991;
  float _1993;
  float _1997;
  bool _1998;
  bool _1999;
  bool _2000;
  bool _2001;
  float _2012;
  float _2022;
  float _2023;
  float _2024;
  float _2028;
  float _2031;
  float _2033;
  bool _2034;
  bool _2035;
  bool _2036;
  bool _2037;
  float _2048;
  float _2049;
  float _2052;
  float _2062;
  float _2065;
  float _2067;
  float _2071;
  bool _2072;
  bool _2073;
  bool _2074;
  bool _2075;
  float _2086;
  float _2096;
  int _2099;
  float _2107;
  float _2350;
  float _2351;
  float _2358;
  int _2361;
  float _2369;
  float _2375;
  float _2378;
  float _2381;
  float _2384;
  uint _2385;
  bool _2401;
  float _2407;
  float _2426;
  float _2442;
  float _2458;
  float _2459;
  float _2463;
  float _2466;
  float _2469;
  float _2476;
  float _2483;
  float _2490;
  float _2491;
  float _2492;
  float _2493;
  float _2494;
  float _2495;
  float _2496;
  float _2512;
  float _2528;
  float _2544;
  float _2545;
  float _2546;
  float _2547;
  float _2548;
  float _2565;
  float _2566;
  float _2567;
  float _2568;
  float _2571;
  float _2574;
  float _2578;
  float _2582;
  float _2586;
  float _2606;
  float _2618;
  float _2630;
  float _2642;
  float _2649;
  float _2656;
  float _2663;
  float _2669;
  float _2670;
  float _2672;
  float _2674;
  float _2676;
  float _2681;
  float _2702;
  float _2704;
  float _2707;
  float _2710;
  float _2713;
  float _2719;
  float _2759;
  float _2761;
  float _2767;
  float _2809;
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
  _202 = (_65.x < 1e-07f) || (_65.x == 1.0f);
  _205 = _123 - _viewPos.x;
  _207 = _136 - _viewPos.y;
  _209 = _149 - _viewPos.z;
  _212 = _viewPos.x - _viewPosPrev.x;
  _217 = _viewPos.y - _viewPosPrev.y;
  _222 = _viewPos.z - _viewPosPrev.z;
  _225 = WaveReadLaneFirst(_materialIndex);
  _233 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_225 < (uint)170000), _225, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._cubeSpaceGradientRatio);
  _234 = _62 * 0.01f;
  _241 = frac((_viewPos.x * 0.01f) - (_212 * _234)) + 2000.0f;
  _247 = frac((_viewPos.y * 0.01f) - (_217 * _234)) + 2000.0f;
  _260 = (frac((_viewPos.z * 0.01f) - (_222 * _234)) + 2000.0f) + (frac(_time.x * 0.1f) - (_62 * 0.005f));
  _262 = 0;
  _263 = 0.0f;
  while(true) {
    _266 = ((_263 * _191) + _241) * 4.0f;
    _268 = frac(abs(_266));
    _274 = (select((_266 >= (-0.0f - _266)), _268, (-0.0f - _268)) * 0.25f) + -0.125f;
    _277 = ((_263 * _192) + _247) * 4.0f;
    _279 = frac(abs(_277));
    _285 = (select((_277 >= (-0.0f - _277)), _279, (-0.0f - _279)) * 0.25f) + -0.125f;
    _288 = ((_263 * _193) + _260) * 4.0f;
    _290 = frac(abs(_288));
    _296 = (select((_288 >= (-0.0f - _288)), _290, (-0.0f - _290)) * 0.25f) + -0.125f;
    _299 = _time.x * 0.5f;
    _300 = cos(_299);
    _301 = sin(_299);
    _302 = -0.0f - _301;
    _304 = mad(_296, _300, (_301 * _285));
    _308 = abs(mad(_304, _302, (_300 * _274))) + -0.0005f;
    _312 = abs(mad(_296, _302, (_300 * _285))) + -0.0005f;
    _316 = abs(mad(_304, _300, (_301 * _274))) + -0.0005f;
    _317 = max(_308, 0.0f);
    _318 = max(_312, 0.0f);
    _319 = max(_316, 0.0f);
    _329 = sqrt(((_318 * _318) + (_317 * _317)) + (_319 * _319)) + min(max(_308, max(_312, _316)), 0.0f);
    if (!(_329 < (_263 * 0.001f))) {
      _333 = _329 + _263;
      _334 = (int)(_262) + (int)(1);
      if ((int)_334 < (int)80) {
        _337 = _334;
        _338 = _333;
        while(true) {
          _262 = _337;
          _263 = _338;
          __loop_jump_target = 261;
          break;
          break;
        }
        if (__loop_jump_target == 261) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      } else {
        _340 = _333;
      }
    } else {
      _340 = _263;
    }
    _342 = (_340 * _191) + _241;
    _344 = (_340 * _192) + _247;
    _346 = (_340 * _193) + _260;
    _347 = _342 * 4.0f;
    _349 = frac(abs(_347));
    _355 = (select((_347 >= (-0.0f - _347)), _349, (-0.0f - _349)) * 0.25f) + -0.125f;
    _356 = _344 * 4.0f;
    _358 = frac(abs(_356));
    _364 = (select((_356 >= (-0.0f - _356)), _358, (-0.0f - _358)) * 0.25f) + -0.125f;
    _365 = _346 * 4.0f;
    _367 = frac(abs(_365));
    _373 = (select((_365 >= (-0.0f - _365)), _367, (-0.0f - _367)) * 0.25f) + -0.125f;
    _374 = _364 * _300;
    _375 = _364 * _301;
    _376 = mad(_373, _300, _375);
    _377 = _355 * _300;
    _378 = _355 * _301;
    _381 = abs(mad(_376, _302, _377)) + -0.0005f;
    _384 = abs(mad(_373, _302, _374)) + -0.0005f;
    _387 = abs(mad(_376, _300, _378)) + -0.0005f;
    _388 = max(_381, 0.0f);
    _389 = max(_384, 0.0f);
    _390 = max(_387, 0.0f);
    _391 = _389 * _389;
    _400 = sqrt((_391 + (_388 * _388)) + (_390 * _390)) + min(max(_381, max(_384, _387)), 0.0f);
    _402 = (_342 + 0.001f) * 4.0f;
    _404 = frac(abs(_402));
    _410 = (select((_402 >= (-0.0f - _402)), _404, (-0.0f - _404)) * 0.25f) + -0.125f;
    _414 = abs(mad(_376, _302, (_410 * _300))) + -0.0005f;
    _418 = abs(mad(_376, _300, (_410 * _301))) + -0.0005f;
    _419 = max(_414, 0.0f);
    _420 = max(_418, 0.0f);
    _422 = (_344 + 0.001f) * 4.0f;
    _424 = frac(abs(_422));
    _430 = (select((_422 >= (-0.0f - _422)), _424, (-0.0f - _424)) * 0.25f) + -0.125f;
    _432 = mad(_373, _300, (_430 * _301));
    _435 = abs(mad(_432, _302, _377)) + -0.0005f;
    _439 = abs(mad(_373, _302, (_430 * _300))) + -0.0005f;
    _442 = abs(mad(_432, _300, _378)) + -0.0005f;
    _443 = max(_435, 0.0f);
    _444 = max(_439, 0.0f);
    _445 = max(_442, 0.0f);
    _447 = (_346 + 0.001f) * 4.0f;
    _449 = frac(abs(_447));
    _455 = (select((_447 >= (-0.0f - _447)), _449, (-0.0f - _449)) * 0.25f) + -0.125f;
    _456 = mad(_455, _300, _375);
    _459 = abs(mad(_456, _302, _377)) + -0.0005f;
    _462 = abs(mad(_455, _302, _374)) + -0.0005f;
    _465 = abs(mad(_456, _300, _378)) + -0.0005f;
    _466 = max(_459, 0.0f);
    _467 = max(_462, 0.0f);
    _468 = max(_465, 0.0f);
    _478 = (sqrt(((_419 * _419) + _391) + (_420 * _420)) - _400) + min(max(_414, max(_384, _418)), 0.0f);
    _489 = (sqrt(((_444 * _444) + (_443 * _443)) + (_445 * _445)) - _400) + min(max(_435, max(_439, _442)), 0.0f);
    _500 = (sqrt(((_467 * _467) + (_466 * _466)) + (_468 * _468)) - _400) + min(max(_459, max(_462, _465)), 0.0f);
    _502 = rsqrt(dot(float3(_478, _489, _500), float3(_478, _489, _500)));  // [sem: invLength]
    _505 = -0.0f - _sunDirection.x;
    _507 = -0.0f - _sunDirection.y;
    _509 = -0.0f - _sunDirection.z;
    _511 = rsqrt(dot(float3(_505, _507, _509), float3(_505, _507, _509)));  // [sem: invLength]
    _518 = dot(float3((_502 * _478), (_502 * _489), (_502 * _500)), float3((_511 * _505), (_511 * _507), (_511 * _509)));
    _521 = saturate((_340 * 0.25f) + -0.25f);  // [sem: expr_sat]
    _525 = (_521 * _521) * (3.0f - (_521 * 2.0f));
    if (_202) {
      _531 = exp2(log2(abs(_192)) * 0.5f) * _233;
      _536 = (_531 * 0.08f);
      _537 = (_531 * 0.05f);
      _538 = (_531 * 0.03f);
    } else {
      _536 = 0.0f;
      _537 = 0.0f;
      _538 = 0.0f;
    }
    _549 = exp2(log2((exp2(log2((1.0f - _518) + (_525 * _518)) * 4.0f) * 0.2f) + 0.1f) * 1.5f);
    _550 = _549 * 0.7f;
    _551 = _549 * 0.4f;
    _552 = _549 * 0.1f;
    _555 = WaveReadLaneFirst(_materialIndex);
    _563 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_555 < (uint)170000), _555, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._cubeSpaceEffectRatio);
    _566 = WaveReadLaneFirst(_materialIndex);
    _574 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_566 < (uint)170000), _566, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiDotRatio);
    if (_574 > 0.0f) {
      _579 = WaveReadLaneFirst(_materialIndex);
      _587 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_579 < (uint)170000), _579, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._depthOuterMaskRadius);
      _590 = _123 - _mainPosition.x;
      _592 = _136 - _mainPosition.y;
      _594 = _149 - _mainPosition.z;
      _597 = WaveReadLaneFirst(_materialIndex);
      _605 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_597 < (uint)170000), _597, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._invertDepthMask);
      _606 = saturate(_65.x);  // [sem: expr_sat]
      _609 = WaveReadLaneFirst(_materialIndex);
      _617 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_609 < (uint)170000), _609, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._depthContrast);
      _620 = WaveReadLaneFirst(_materialIndex);
      _628 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_620 < (uint)170000), _620, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._depthIntensity);
      _631 = WaveReadLaneFirst(_materialIndex);
      _639 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_631 < (uint)170000), _631, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleDistortionIntensity);
      if (_639 > 0.0f) {
        _645 = (_123 - _mainPosition.x) * 0.02f;
        _648 = (_149 - _mainPosition.z) * 0.02f;
        _650 = atan(_648 / _645);
        _651 = (_645 < 0.0f);
        _652 = (_645 == 0.0f);
        _653 = (_648 >= 0.0f);
        _654 = (_648 < 0.0f);
        _658 = sqrt((_648 * _648) + (_645 * _645));
        _669 = select((_652 && _653), 1.5f, select((_652 && _654), -1.5f, (select((_651 && _654), (_650 + -3.1415927f), select((_651 && _653), (_650 + 3.1415927f), _650)) * 0.9549296f)));
        _672 = WaveReadLaneFirst(_materialIndex);
        _680 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_672 < (uint)170000), _672, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._noiseTex);
        _683 = WaveReadLaneFirst(_materialIndex);
        _691 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_683 < (uint)170000), _683, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._noiseTex);
        _694 = WaveReadLaneFirst(_materialIndex);
        _702 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_694 < (uint)170000), _694, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._noiseTex);
        _745 = ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_680 < (uint)65000), _680, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_669, (_658 - (_time.x * 0.05f)))))).x) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_691 < (uint)65000), _691, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_669 * 0.5f), ((_658 * 0.5f) - (_time.x * 0.1f)))))).x));
        _746 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_702 < (uint)65000), _702, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_669 * 0.16666667f), ((_658 * 0.16666667f) - (_time.x * 0.05f)))))).x);
      } else {
        _745 = 0.0f;
        _746 = 0.0f;
      }
      _749 = WaveReadLaneFirst(_materialIndex);
      _757 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_749 < (uint)170000), _749, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleIntensity);
      if (_757 > 0.0f) {
        _762 = WaveReadLaneFirst(_materialIndex);
        _770 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_762 < (uint)170000), _762, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleSpeed);
        _773 = WaveReadLaneFirst(_materialIndex);
        _781 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_773 < (uint)170000), _773, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRipplePhaseOffset);
        _784 = WaveReadLaneFirst(_materialIndex);
        _792 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_784 < (uint)170000), _784, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleWidth);
        _795 = WaveReadLaneFirst(_materialIndex);
        _803 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_795 < (uint)170000), _795, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.x);
        _807 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_795 < (uint)170000), _795, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.y);
        _811 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_795 < (uint)170000), _795, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.z);
        _815 = (_123 - _mainPosition.x) + _803;
        _818 = (_136 - _mainPosition.y) + _807;
        _821 = (_149 - _mainPosition.z) + _811;
        _824 = WaveReadLaneFirst(_materialIndex);
        _832 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_824 < (uint)170000), _824, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._rippleCount);
        _835 = WaveReadLaneFirst(_materialIndex);
        _843 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_835 < (uint)170000), _835, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleDistortionIntensity);
        _846 = WaveReadLaneFirst(_materialIndex);
        _854 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_846 < (uint)170000), _846, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleContrast);
        _857 = WaveReadLaneFirst(_materialIndex);
        _865 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_857 < (uint)170000), _857, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._bigRippleIntensity);
        _889 = saturate(exp2(log2(frac(((((1.0f / max(1e-05f, _792)) * _832) * exp2(log2(sqrt(sqrt(dot(float3(_815, _818, _821), float3(_815, _818, _821))))) * 1.2f)) - (_746 * _843)) - frac((_time.x * _770) + _781))) * _854)) * _865;
        _893 = (_889 * 0.043233637f);
        _894 = (_889 * 0.033104755f);
        _895 = _889;
      } else {
        _893 = 0.0f;
        _894 = 0.0f;
        _895 = 0.0f;
      }
      _898 = WaveReadLaneFirst(_materialIndex);
      _906 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_898 < (uint)170000), _898, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._rippleWidth);
      _909 = WaveReadLaneFirst(_materialIndex);
      _917 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_909 < (uint)170000), _909, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.x);
      _921 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_909 < (uint)170000), _909, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.y);
      _925 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_909 < (uint)170000), _909, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.z);
      _929 = (_123 - _mainPosition.x) + _917;
      _932 = (_136 - _mainPosition.y) + _921;
      _935 = (_149 - _mainPosition.z) + _925;
      _938 = WaveReadLaneFirst(_materialIndex);
      _946 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_938 < (uint)170000), _938, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._rippleWidth);
      _949 = WaveReadLaneFirst(_materialIndex);
      _957 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_949 < (uint)170000), _949, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.x);
      _961 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_949 < (uint)170000), _949, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.y);
      _965 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_949 < (uint)170000), _949, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.z);
      _968 = WaveReadLaneFirst(_materialIndex);
      _976 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_968 < (uint)170000), _968, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._rippleCount);
      _979 = WaveReadLaneFirst(_materialIndex);
      _987 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_979 < (uint)170000), _979, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._rippleSpeed);
      if ((sqrt(((_207 * _207) + (_205 * _205)) + (_209 * _209)) + -1500.0f) < 1.0f) {
        _999 = WaveReadLaneFirst(_materialIndex);
        _1007 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_999 < (uint)170000), _999, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiDotDensity);
        _1020 = _1007;
      } else {
        _1009 = WaveReadLaneFirst(_materialIndex);
        _1017 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1009 < (uint)170000), _1009, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiDotDensity);
        _1020 = (_1017 * 0.25f);
      }
      _1023 = WaveReadLaneFirst(_materialIndex);
      _1031 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1023 < (uint)170000), _1023, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiScrollSpeed.x);
      _1035 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1023 < (uint)170000), _1023, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiScrollSpeed.y);
      _1039 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1023 < (uint)170000), _1023, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiScrollSpeed.z);
      _1042 = WaveReadLaneFirst(_materialIndex);
      _1050 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1042 < (uint)170000), _1042, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiOffset);
      _1053 = WaveReadLaneFirst(_materialIndex);
      _1061 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1053 < (uint)170000), _1053, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiMovementSpeed);
      _1062 = _62 * 1.5f;
      _1063 = _895 * 3.0f;
      _1071 = (_time.x * _1031) + (_1020 * ((_123 - (_212 * _1062)) - _1063));
      _1077 = (_time.x * _1035) + (_1020 * ((_136 - (_217 * _1062)) - _1063));
      _1083 = (_time.x * _1039) + (_1020 * ((_149 - (_222 * _1062)) - _1063));
      _1084 = floor(_1071);
      _1085 = floor(_1077);
      _1086 = floor(_1083);
      _1089 = -1;
      _1090 = 0.0f;
      _1091 = 0.0f;
      _1092 = 0.0f;
      _1093 = 1e+14f;
      _1094 = -1;
      _1095 = -1;
      while(true) {
        _1096 = (float)((int)(_1095));
        _1097 = (float)((int)(_1094));
        _1098 = (float)((int)(_1089));
        _1101 = (uint)((uint)(asint((_1097 + _1085)))) * (uint)(1025);
        _1104 = (uint)((uint)(((uint)((uint)(_1101)) >> 6) ^ _1101)) * (uint)(9);
        _1107 = (uint)((uint)(asint((_1098 + _1086)))) * (uint)(1025);
        _1110 = (uint)((uint)(((uint)((uint)(_1107)) >> 6) ^ _1107)) * (uint)(9);
        _1121 = (uint)((uint)((((int)((uint)((uint)(((uint)((uint)(_1110)) >> 11) ^ _1110)) * (uint)(32769))) ^ asint((_1096 + _1084))) ^ ((int)((uint)((uint)(((uint)((uint)(_1104)) >> 11) ^ _1104)) * (uint)(32769))))) * (uint)(1025);
        _1124 = (uint)((uint)(((uint)((uint)(_1121)) >> 6) ^ _1121)) * (uint)(9);
        _1139 = sin(((((_time.x + 1000.0f) * _1061) + _1050) * 2.0f) * (asfloat(((int)(((int)((uint)((uint)(((uint)((uint)(_1124)) >> 11) ^ _1124)) * (uint)(32769))) & 8388607) | (int)(1065353216))) + -1.0f));
        _1140 = _1139 + _1096;
        _1141 = _1139 + _1097;
        _1142 = _1139 + _1098;
        _1145 = (frac(_1071) + -0.5f) - _1140;
        _1148 = (-0.5f - _1141) + frac(_1077);
        _1151 = frac(_1083) + (-0.5f - _1142);
        _1157 = sqrt(((_1148 * _1148) + (_1145 * _1145)) + (_1151 * _1151));
        _1158 = (_1157 < _1093);
        _1159 = select(_1158, _1157, _1093);
        _1160 = select(_1158, _1140, _1092);
        _1161 = select(_1158, _1141, _1091);
        _1162 = select(_1158, _1142, _1090);
        _1163 = (int)(_1089) + (int)(1);
        if (!(_1163 == 2)) {
          _1166 = _1163;
          _1167 = _1094;
          _1168 = _1095;
          while(true) {
            _1089 = _1166;
            _1090 = _1162;
            _1091 = _1161;
            _1092 = _1160;
            _1093 = _1159;
            _1094 = _1167;
            _1095 = _1168;
            __loop_jump_target = 1088;
            break;
            break;
          }
          if (__loop_jump_target == 1088) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
        }
        _1170 = (int)(_1094) + (int)(1);
        if (!(_1170 == 2)) {
          _1166 = -1;
          _1167 = _1170;
          _1168 = _1095;
          while(true) {
            _1089 = _1166;
            _1090 = _1162;
            _1091 = _1161;
            _1092 = _1160;
            _1093 = _1159;
            _1094 = _1167;
            _1095 = _1168;
            __loop_jump_target = 1088;
            break;
            break;
          }
          if (__loop_jump_target == 1088) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
        }
        _1175 = ((int)(_1095) + (int)(1));
        while(true) {
          if (!(_1175 == 2)) {
            while(true) {
              _1166 = -1;
              _1167 = -1;
              _1168 = _1175;
              while(true) {
                _1089 = _1166;
                _1090 = _1162;
                _1091 = _1161;
                _1092 = _1160;
                _1093 = _1159;
                _1094 = _1167;
                _1095 = _1168;
                __loop_jump_target = 1088;
                break;
                break;
              }
              if (__loop_jump_target != -1) {
                break;
              }
              break;
            }
          }
          _1179 = (_1160 + _1084) / _1020;
          _1181 = (_1161 + _1085) / _1020;
          _1183 = (_1162 + _1086) / _1020;
          _1195 = (_viewProj[3].w) + mad((_viewProj[3].z), _1183, mad((_viewProj[3].y), _1181, ((_viewProj[3].x) * _1179)));
          // [sem: _3__36__0__0__g_sceneColor_sample]
          _1220 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((mad((_viewProj[0].z), _1183, mad((_viewProj[0].y), _1181, ((_viewProj[0].x) * _1179))) + (_viewProj[0].w)) / _1195) * 0.5f) + 0.5f), (0.5f - (((mad((_viewProj[1].z), _1183, mad((_viewProj[1].y), _1181, ((_viewProj[1].x) * _1179))) + (_viewProj[1].w)) / _1195) * 0.5f))));
          _1223 = WaveReadLaneFirst(_materialIndex);
          _1231 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1223 < (uint)170000), _1223, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiDotThreshold);
          _1234 = WaveReadLaneFirst(_materialIndex);
          _1242 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1234 < (uint)170000), _1234, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._rippleIntensity);
          _1291 = min(max(saturate(exp2(log2(_628 * select((((float)((uint)((uint)(_605)))) == 1.0f), (1.0f - _606), _606)) * _617)), 0.0f), 1.0f) + ((_1231 * select(_202, 0.0f, _1159)) - ((((_895 * 0.5f) + 1.0f) - (max(0.0f, (1.0f - ((1.0f - (sqrt(dot(float3(_590, _592, _594), float3(_590, _592, _594))) * (1.0f / max(1e-05f, _587)))) * 2.0f))) * (frac((((_976 * 40.0f) * exp2(log2(sqrt(sqrt(dot(float3(_929, _932, _935), float3(_929, _932, _935))))) * 1.2f)) * (1.0f / max(1e-05f, _906))) - ((_time.x + (_745 * 1.5f)) * _987)) + (_745 * 0.3f)))) * _1242));
          _1295 = saturate(_1291 / max((0.1f / _1291), 0.0f));  // [sem: expr_sat]
          _1298 = WaveReadLaneFirst(_materialIndex);
          _1306 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1298 < (uint)170000), _1298, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._voronoiDotRatio);
          if (!_2) {
            _1175 = 2;
            continue;
          }
          _1322 = _893;
          _1323 = _894;
          _1324 = select(_202, 0.0f, _1220.z);
          _1325 = select(_202, 0.0f, _1220.y);
          _1326 = select(_202, 0.0f, _1220.x);
          _1327 = ((1.0f - floor((_1295 * _1295) * (3.0f - (_1295 * 2.0f)))) * _1306);
          break;
        }
        break;
      }
    } else {
      _1322 = 0.0f;
      _1323 = 0.0f;
      _1324 = 0.0f;
      _1325 = 0.0f;
      _1326 = 0.0f;
      _1327 = 0.0f;
    }
    _1331 = 0.001f / max(0.001f, _exposure0.x);
    _1340 = _1331 + (_1323 * 0.01f);
    _1342 = (_1340 + (_1327 * _1326)) + (saturate(_563 * (lerp(_550, _538, _525))) * _30);
    _1351 = (_1340 + (_1327 * _1325)) + (saturate(_563 * (lerp(_551, _537, _525))) * _30);
    _1362 = (((_1327 * _1324) + (_1322 * 0.01f)) + _1331) + (saturate(_563 * (lerp(_552, _536, _525))) * _30);
    _1365 = WaveReadLaneFirst(_materialIndex);
    _1373 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1365 < (uint)170000), _1365, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._radius);
    if (_1373 > 0.001f) {
      _1376 = ddx_coarse(_191);
      _1377 = ddx_coarse(_192);
      _1378 = ddx_coarse(_193);
      _1379 = ddy_coarse(_191);
      _1380 = ddy_coarse(_192);
      _1381 = ddy_coarse(_193);
      _1382 = ddx_coarse(TEXCOORD.x);
      _1383 = ddx_coarse(TEXCOORD.y);
      _1384 = ddy_coarse(TEXCOORD.x);
      _1385 = ddy_coarse(TEXCOORD.y);
      _1388 = (_1380 * _97) - (_1381 * _96);
      _1391 = (_1381 * _95) - (_1379 * _97);
      _1394 = (_1379 * _96) - (_1380 * _95);
      _1397 = (_1378 * _96) - (_1377 * _97);
      _1400 = (_1376 * _97) - (_1378 * _95);
      _1403 = (_1377 * _95) - (_1376 * _96);
      _1406 = (_1384 * _1397) + (_1388 * _1382);
      _1409 = (_1384 * _1400) + (_1391 * _1382);
      _1412 = (_1384 * _1403) + (_1394 * _1382);
      _1415 = (_1385 * _1397) + (_1388 * _1383);
      _1418 = (_1385 * _1400) + (_1391 * _1383);
      _1421 = (_1385 * _1403) + (_1383 * _1394);
      _1424 = max(dot(float3(_1406, _1409, _1412), float3(_1406, _1409, _1412)), dot(float3(_1415, _1418, _1421), float3(_1415, _1418, _1421)));
      _1427 = rsqrt(select((!(_1424 == 0.0f)), _1424, 0.1f));  // [sem: rsqrt_val]
      _1430 = WaveReadLaneFirst(_materialIndex);
      _1438 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1430 < (uint)170000), _1430, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._squareSize);
      _1439 = _1438 * _123;
      _1440 = _1438 * _136;
      _1441 = _1438 * _149;
      _1442 = floor(_1439);
      _1443 = floor(_1440);
      _1444 = floor(_1441);
      _1446 = -1;
      _1447 = -1;
      _1448 = 10.0f;
      _1449 = 0.0f;
      _1450 = 0.0f;
      _1451 = 0.0f;
      _1452 = -1;
      while(true) {
        _1505 = _1446;
        _1506 = _1447;
        _1453 = (float)((int)(_1452));
        _1454 = (float)((int)(_1447));
        _1455 = (float)((int)(_1446));
        _1457 = sin(_1453 + _1442);
        _1459 = sin(_1454 + _1443);
        _1461 = sin(_1455 + _1444);
        _1464 = _time.x * 0.2f;
        _1471 = sin(frac(sin(dot(float3(_1457, _1459, _1461), float3(12.989f, 78.233f, 37.719f))) * 143758.55f) * _1464) + _1453;
        _1478 = sin(frac(sin(dot(float3(_1457, _1459, _1461), float3(39.346f, 11.135f, 83.155f))) * 143758.55f) * _1464) + _1454;
        _1485 = sin(frac(sin(dot(float3(_1457, _1459, _1461), float3(73.156f, 52.235f, 9.151f))) * 143758.55f) * _1464) + _1455;
        _1496 = max(abs((_1442 - _1439) + _1471), max(abs((_1443 - _1440) + _1478), abs((_1444 - _1441) + _1485)));
        _1497 = (_1496 < _1448);
        _1499 = select(_1497, _1471, _1449);
        _1500 = select(_1497, _1478, _1450);
        _1501 = select(_1497, _1485, _1451);
        _1502 = (int)(_1452) + (int)(1);
        if (!(_1502 == 2)) {
          _1505 = _1446;
          _1506 = _1447;
          _1507 = _1502;
          while(true) {
            _1446 = _1505;
            _1447 = _1506;
            _1448 = select(_1497, _1496, _1448);
            _1449 = _1499;
            _1450 = _1500;
            _1451 = _1501;
            _1452 = _1507;
            __loop_jump_target = 1445;
            break;
            break;
          }
          if (__loop_jump_target == 1445) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
        }
        _1509 = (int)(_1447) + (int)(1);
        if (!(_1509 == 2)) {
          _1505 = _1446;
          _1506 = _1509;
          _1507 = -1;
          while(true) {
            _1446 = _1505;
            _1447 = _1506;
            _1448 = select(_1497, _1496, _1448);
            _1449 = _1499;
            _1450 = _1500;
            _1451 = _1501;
            _1452 = _1507;
            __loop_jump_target = 1445;
            break;
            break;
          }
          if (__loop_jump_target == 1445) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
        }
        _1512 = (int)(_1446) + (int)(1);
        if (!(_1512 == 2)) {
          _1505 = _1512;
          _1506 = -1;
          _1507 = -1;
          while(true) {
            _1446 = _1505;
            _1447 = _1506;
            _1448 = select(_1497, _1496, _1448);
            _1449 = _1499;
            _1450 = _1500;
            _1451 = _1501;
            _1452 = _1507;
            __loop_jump_target = 1445;
            break;
            break;
          }
          if (__loop_jump_target == 1445) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
        }
        _1515 = _1427 * _191;
        _1517 = (_1499 + _1442) / _1438;
        _1519 = (_1500 + _1443) / _1438;
        _1521 = (_1501 + _1444) / _1438;
        _1533 = (_viewProj[3].w) + mad((_viewProj[3].z), _1521, mad((_viewProj[3].y), _1519, ((_viewProj[3].x) * _1517)));
        _1544 = (((mad((_viewProj[0].z), _1521, mad((_viewProj[0].y), _1519, ((_viewProj[0].x) * _1517))) + (_viewProj[0].w)) / _1533) * 0.5f) + 0.5f;
        _1555 = 0.5f - (((mad((_viewProj[1].z), _1521, mad((_viewProj[1].y), _1519, ((_viewProj[1].x) * _1517))) + (_viewProj[1].w)) / _1533) * 0.5f);
        _1558 = WaveReadLaneFirst(_materialIndex);
        _1566 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1558 < (uint)170000), _1558, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._radius);
        _1569 = _1517 - _mainPosition.x;
        _1571 = _1519 - _mainPosition.y;
        _1573 = _1521 - _mainPosition.z;
        // [sem: expr_sat]
        _1582 = saturate(1.0f - ((1.0f - (sqrt(dot(float3(_1569, _1571, _1573), float3(_1569, _1571, _1573))) * (1.0f / max(1e-05f, _1566)))) * 1.0152284f));
        _1584 = 1.0f - saturate(_1582);
        _1585 = _1582 * 0.5f;
        _1587 = (TEXCOORD.x - _1544) / _1584;
        _1589 = (TEXCOORD.y - _1555) / _1584;
        _1590 = sin(_1585);
        _1591 = cos(_1585);
        _1595 = mad((-0.0f - _1590), _1589, (_1591 * _1587)) + _1544;
        _1598 = mad(_1591, _1589, (_1590 * _1587)) + _1555;
        _1600 = _1342;
        _1601 = _1351;
        _1602 = _1362;
        _1603 = 1;
        while(true) {
          _1618 = ((saturate(_65.x * 1.5f) * 0.083333336f) * ((float)((int)((int)(6) - (int)(_1603))))) * saturate(frac(frac(dot(float2((_46 + 32.665f), (_53 + 11.815f)), float2(0.06711056f, 0.00583715f))) * 52.982918f) + 0.5f);
          _1624 = mad((_1427 * _1412), _193, mad((_1427 * _1409), _192, (_1515 * _1406))) * _1618;
          _1630 = mad((_1427 * _1421), _193, mad((_1427 * _1418), _192, (_1515 * _1415))) * _1618;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1635 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1624 + TEXCOORD.x), (_1630 + TEXCOORD.y)));
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1639 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1624 + _1595), (_1630 + _1598)));
          _1645 = WaveReadLaneFirst(_materialIndex);
          _1653 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1645 < (uint)170000), _1645, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._maskThreshold);
          _1655 = (float)((bool)(_1635.w < _1653));
          _1659 = (_1655 * ((_1639.x * 0.4f) - _1600)) + _1600;
          _1663 = (_1655 * ((_1639.y * 0.4f) - _1601)) + _1601;
          _1667 = (_1655 * ((_1639.z * 0.4f) - _1602)) + _1602;
          if (!(_1635.w > 0.9f)) {
            _1670 = (int)(_1603) + (int)(1);
            if ((int)_1670 < (int)6) {
              _1673 = _1659;
              _1674 = _1663;
              _1675 = _1667;
              _1676 = _1670;
              while(true) {
                _1600 = _1673;
                _1601 = _1674;
                _1602 = _1675;
                _1603 = _1676;
                __loop_jump_target = 1599;
                break;
                break;
              }
              if (__loop_jump_target == 1599) {
                __loop_jump_target = -1;
                continue;
              }
              if (__loop_jump_target != -1) {
                break;
              }
            }
          }
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _1680 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_1595, _1598));
          _1683 = WaveReadLaneFirst(_materialIndex);
          _1691 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1683 < (uint)170000), _1683, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._maskThreshold);
          _1693 = (float)((bool)(_1635.w < _1691));
          if (!_2) {
            _1673 = _1600;
            _1674 = _1601;
            _1675 = _1602;
            _1676 = _1603;
            while(true) {
              _1600 = _1673;
              _1601 = _1674;
              _1602 = _1675;
              _1603 = _1676;
              __loop_jump_target = 1599;
              break;
              break;
            }
            if (__loop_jump_target == 1599) {
              __loop_jump_target = -1;
              continue;
            }
            if (__loop_jump_target != -1) {
              break;
            }
          }
          _1708 = ((_1693 * (_1680.x - _1659)) + _1659);
          _1709 = ((_1693 * (_1680.y - _1663)) + _1663);
          _1710 = ((_1693 * (_1680.z - _1667)) + _1667);
          break;
        }
        break;
      }
    } else {
      _1708 = _1342;
      _1709 = _1351;
      _1710 = _1362;
    }
    _1713 = WaveReadLaneFirst(_materialIndex);
    _1721 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1713 < (uint)170000), _1713, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._ppWorldLoadingRatio);
    _1724 = (_1721 * (_1708 - _196.x)) + _196.x;
    _1727 = (_1721 * (_1709 - _196.y)) + _196.y;
    _1730 = (_1721 * (_1710 - _196.z)) + _196.z;
    _1733 = WaveReadLaneFirst(_materialIndex);
    _1741 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1733 < (uint)170000), _1733, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._excludePlayer);
    if (_1741 == 1) {
      _1762 = (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_32.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_32.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255) == _renderPassSelfPlayer);
      _1767 = select(_1762, _196.x, _1724);
      _1768 = select(_1762, _196.y, _1727);
      _1769 = select(_1762, _196.z, _1730);
    } else {
      _1767 = _1724;
      _1768 = _1727;
      _1769 = _1730;
    }
    _1772 = WaveReadLaneFirst(_materialIndex);
    _1780 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1772 < (uint)170000), _1772, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._starburstIntensity);
    if (_1780 > 0.0f) {
      _1785 = _mainPosition.y + 1.5f;
      _1799 = (_viewProj[3].w) + mad((_viewProj[3].z), _mainPosition.z, mad((_viewProj[3].y), _1785, ((_viewProj[3].x) * _mainPosition.x)));
      _1810 = (((mad((_viewProj[0].z), _mainPosition.z, mad((_viewProj[0].y), _1785, ((_viewProj[0].x) * _mainPosition.x))) + (_viewProj[0].w)) / _1799) * 0.5f) + 0.5f;
      _1821 = 0.5f - (((mad((_viewProj[1].z), _mainPosition.z, mad((_viewProj[1].y), _1785, ((_viewProj[1].x) * _mainPosition.x))) + (_viewProj[1].w)) / _1799) * 0.5f);
      _1824 = WaveReadLaneFirst(_materialIndex);
      _1832 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_1824 < (uint)170000), _1824, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._noiseTex);
      _1833 = TEXCOORD.x - _1810;
      _1839 = (_bufferSizeAndInvSize.y / _bufferSizeAndInvSize.x) * (TEXCOORD.y - _1821);
      _1840 = _1833 * 1.1f;
      _1841 = _1839 * 1.1f;
      _1842 = dot(float2(_1810, _1821), float2(0.25f, 0.25f));
      _1846 = sqrt((_1841 * _1841) + (_1840 * _1840));
      _1849 = (pow(_1846, 3.0f));
      _1851 = atan(_1841 / _1840);
      _1852 = (_1840 < 0.0f);
      _1853 = (_1840 == 0.0f);
      _1854 = (_1841 >= 0.0f);
      _1855 = (_1841 < 0.0f);
      _1866 = select((_1853 && _1854), 15.707964f, select((_1853 && _1855), -15.707964f, (select((_1852 && _1855), (_1851 + -3.1415927f), select((_1852 && _1854), (_1851 + 3.1415927f), _1851)) * 10.0f)));
      _1867 = _1849 * 5.0f;
      _1868 = _1842 * 0.007957747f;
      _1869 = _1842 * 4.774648f;
      _1871 = frac(abs(_1868));
      _1873 = frac(abs(_1869));
      _1877 = select((_1869 >= (-0.0f - _1869)), _1873, (-0.0f - _1873));
      _1883 = sin(select((_1868 >= (-0.0f - _1868)), _1871, (-0.0f - _1871)) * 6.2831855f);
      _1884 = 12.3456f - _1883;
      _1887 = ((_1867 + 2.3456f) - _1883) * 0.015625f;
      _1891 = frac(_time.x * 0.05f);
      // [sem: expr_sat]
      _1908 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1832 < (uint)65000), _1832, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1884 + _1866) * 0.015625f) - _1891), (_1887 - _1891))))).x) * 1.5f) * 1.2f);
      _1909 = _1883 + 3.4567f;
      _1910 = _1883 + 45.6789f;
      _1914 = frac(_time.x * 0.05f);
      _1917 = ((_1910 + _1867) * 0.015625f) - _1914;
      _1919 = (_1849 * 0.078125f) - _1914;
      _1923 = atan((-0.0f - _1841) / (-0.0f - _1840));
      _1924 = (_1840 > -0.0f);
      _1925 = (_1840 == -0.0f);
      _1926 = (_1841 <= -0.0f);
      _1927 = (_1841 > -0.0f);
      _1938 = select((_1925 && _1926), 15.707964f, select((_1925 && _1927), -15.707964f, (select((_1924 && _1927), (_1923 + -3.1415927f), select((_1924 && _1926), (_1923 + 3.1415927f), _1923)) * 10.0f)));
      // [sem: expr_sat]
      _1949 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1832 < (uint)65000), _1832, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1938 + _1884) * 0.015625f) - _1914), (_1887 - _1914))))).x) * 1.5f) * 1.2f);
      _1953 = sqrt((_1839 * _1839) + (_1833 * _1833));
      _1956 = (pow(_1953, 3.0f));
      _1958 = atan(_1839 / _1833);
      _1959 = (_1833 < 0.0f);
      _1960 = (_1833 == 0.0f);
      _1961 = (_1839 >= 0.0f);
      _1962 = (_1839 < 0.0f);
      _1973 = select((_1960 && _1961), 15.707964f, select((_1960 && _1962), -15.707964f, (select((_1959 && _1962), (_1958 + -3.1415927f), select((_1959 && _1961), (_1958 + 3.1415927f), _1958)) * 10.0f)));
      _1974 = _1956 * 5.0f;
      _1975 = 2.3456f - _1883;
      _1978 = ((_1974 + _1975) * 0.015625f) - _1914;
      // [sem: expr_sat]
      _1988 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1832 < (uint)65000), _1832, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1973 + _1884) * 0.015625f) - _1914), _1978)))).x) * 1.5f) * 1.2f);
      _1991 = ((_1974 + _1910) * 0.015625f) - _1914;
      _1993 = (_1956 * 0.078125f) - _1914;
      _1997 = atan((-0.0f - _1839) / (-0.0f - _1833));
      _1998 = (_1833 > -0.0f);
      _1999 = (_1833 == -0.0f);
      _2000 = (_1839 <= -0.0f);
      _2001 = (_1839 > -0.0f);
      _2012 = select((_1999 && _2000), 15.707964f, select((_1999 && _2001), -15.707964f, (select((_1998 && _2001), (_1997 + -3.1415927f), select((_1998 && _2000), (_1997 + 3.1415927f), _1997)) * 10.0f)));
      // [sem: expr_sat]
      _2022 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1832 < (uint)65000), _1832, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2012 + _1884) * 0.015625f) - _1914), _1978)))).x) * 1.5f) * 1.2f);
      _2023 = _1833 * 0.9f;
      _2024 = _1839 * 0.9f;
      _2028 = sqrt((_2024 * _2024) + (_2023 * _2023));
      _2031 = (pow(_2028, 3.0f));
      _2033 = atan(_2024 / _2023);
      _2034 = (_2023 < 0.0f);
      _2035 = (_2023 == 0.0f);
      _2036 = (_2024 >= 0.0f);
      _2037 = (_2024 < 0.0f);
      _2048 = select((_2035 && _2036), 15.707964f, select((_2035 && _2037), -15.707964f, (select((_2034 && _2037), (_2033 + -3.1415927f), select((_2034 && _2036), (_2033 + 3.1415927f), _2033)) * 10.0f)));
      _2049 = _2031 * 5.0f;
      _2052 = ((_2049 + _1975) * 0.015625f) - _1914;
      // [sem: expr_sat]
      _2062 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1832 < (uint)65000), _1832, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2048 + _1884) * 0.015625f) - _1914), _2052)))).x) * 1.5f) * 1.2f);
      _2065 = ((_2049 + _1910) * 0.015625f) - _1914;
      _2067 = (_2031 * 0.078125f) - _1914;
      _2071 = atan((-0.0f - _2024) / (-0.0f - _2023));
      _2072 = (_2023 > -0.0f);
      _2073 = (_2023 == -0.0f);
      _2074 = (_2024 <= -0.0f);
      _2075 = (_2024 > -0.0f);
      _2086 = select((_2073 && _2074), 15.707964f, select((_2073 && _2075), -15.707964f, (select((_2072 && _2075), (_2071 + -3.1415927f), select((_2072 && _2074), (_2071 + 3.1415927f), _2071)) * 10.0f)));
      // [sem: expr_sat]
      _2096 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1832 < (uint)65000), _1832, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2086 + _1884) * 0.015625f) - _1914), _2052)))).x) * 1.5f) * 1.2f);
      _2099 = WaveReadLaneFirst(_materialIndex);
      _2107 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_2099 < (uint)170000), _2099, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._starburstIntensity);
      _2347 = (saturate(exp2(log2((exp2(log2(max((((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1832 < (uint)65000), _1832, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1909 + _1866) * 0.015625f) - _1914), _1917)))).x) * 1.5f) * 1.2f) - _1908) * ((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1832 < (uint)65000), _1832, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1866 * 0.015625f) - _1914), _1919)))).x) * 1.5f) * 1.2f) + _1877) * 6.2831855f) * 0.5f) + 0.5f)) + _1908), (((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1832 < (uint)65000), _1832, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1938 + _1909) * 0.015625f) - _1914), _1917)))).x) * 1.5f) * 1.2f) - _1949) * ((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1832 < (uint)65000), _1832, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1938 * 0.015625f) - _1914), _1919)))).x) * 1.5f) * 1.2f) + _1877) * 6.2831855f) * 0.5f) + 0.5f)) + _1949))) * 3.0f) * exp2(log2(saturate(1.0f - (_1846 * 2.0f))) * 12.2f)) + exp2(log2(saturate(1.1f - (_1846 * 24.0f))) * 10.2f)) * 1.4f) * _2107) * _30);
      _2348 = (saturate(exp2(log2(((exp2(log2(max((((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1832 < (uint)65000), _1832, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1973 + _1909) * 0.015625f) - _1914), _1991)))).x) * 1.5f) * 1.2f) - _1988) * ((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1832 < (uint)65000), _1832, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1973 * 0.015625f) - _1914), _1993)))).x) * 1.5f) * 1.2f) + _1877) * 6.2831855f) * 0.5f) + 0.5f)) + _1988), (((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1832 < (uint)65000), _1832, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2012 + _1909) * 0.015625f) - _1914), _1991)))).x) * 1.5f) * 1.2f) - _2022) * ((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1832 < (uint)65000), _1832, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2012 * 0.015625f) - _1914), _1993)))).x) * 1.5f) * 1.2f) + _1877) * 6.2831855f) * 0.5f) + 0.5f)) + _2022))) * 3.0f) * exp2(log2(saturate(1.0f - (_1953 * 2.0f))) * 12.2f)) + exp2(log2(saturate(1.1f - (_1953 * 24.0f))) * 10.2f)) * 0.6038274f) * 1.4f) * _2107) * _30);
      _2349 = (saturate(exp2(log2(((exp2(log2(max((((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1832 < (uint)65000), _1832, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2048 + _1909) * 0.015625f) - _1914), _2065)))).x) * 1.5f) * 1.2f) - _2062) * ((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1832 < (uint)65000), _1832, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2048 * 0.015625f) - _1914), _2067)))).x) * 1.5f) * 1.2f) + _1877) * 6.2831855f) * 0.5f) + 0.5f)) + _2062), (((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1832 < (uint)65000), _1832, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2086 + _1909) * 0.015625f) - _1914), _2065)))).x) * 1.5f) * 1.2f) - _2096) * ((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1832 < (uint)65000), _1832, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2086 * 0.015625f) - _1914), _2067)))).x) * 1.5f) * 1.2f) + _1877) * 6.2831855f) * 0.5f) + 0.5f)) + _2096))) * 3.0f) * exp2(log2(saturate(1.0f - (_2028 * 2.0f))) * 12.2f)) + exp2(log2(saturate(1.1f - (_2028 * 24.0f))) * 10.2f)) * 0.44798842f) * 1.4f) * _2107) * _30);
    } else {
      _2347 = 0.0f;
      _2348 = 0.0f;
      _2349 = 0.0f;
    }
    _2350 = TEXCOORD.x + -0.5f;
    _2351 = TEXCOORD.y + -0.5f;
    _2358 = saturate((sqrt((_2351 * _2351) + (_2350 * _2350)) + -0.01f) * 1.010101f);  // [sem: expr_sat]
    _2361 = WaveReadLaneFirst(_materialIndex);
    _2369 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)((uint)(select(((uint)_2361 < (uint)170000), _2361, 0))) + (uint)(0)))].BindlessParameters_PostProcessWorldLoading._vignetteIntensity);
    _2375 = 1.0f - (((_2358 * _2358) * (3.0f - (_2358 * 2.0f))) * _2369);
    _2378 = max(0.0f, (_2375 * (_2347 + _1767)));
    _2381 = max(0.0f, (_2375 * (_2348 + _1768)));
    _2384 = max(0.0f, (_2375 * (_2349 + _1769)));
    _2385 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _2398 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _2385, 0)))).x) & 127)))) + 0.5f);
    } else {
      _2398 = 1.0f;
    }
    _2401 = (_localToneMappingParams.w > 0.0f);
    if (_2401) {
      _2407 = _exposure0.x * _userImageAdjust.z;
      _2426 = exp2(_powerParams.x * log2(max(0.0f, (((_2407 * max(0.0f, (((_2378 * 1.70505f) - (_2381 * 0.62179f)) - (_2384 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
      _2442 = exp2(log2(max(0.0f, (((_slopeParams.y * _2407) * max(0.0f, (((_2381 * 1.1408f) - (_2378 * 0.13026f)) - (_2384 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
      _2458 = exp2(log2(max(0.0f, (((_slopeParams.z * _2407) * max(0.0f, (((_2378 * -0.024f) - (_2381 * 0.12897f)) + (_2384 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
      _2459 = dot(float3(_2426, _2442, _2458), float3(0.212671f, 0.71516f, 0.072169f));
      _2463 = ((_2426 - _2459) * _powerParams.w) + _2459;
      _2466 = ((_2442 - _2459) * _powerParams.w) + _2459;
      _2469 = ((_2458 - _2459) * _powerParams.w) + _2459;
      _2476 = min(max(log2(mad(_2469, 0.079223745f, mad(_2466, 0.0784336f, (_2463 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
      _2483 = min(max(log2(mad(_2469, 0.07916613f, mad(_2466, 0.87846863f, (_2463 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
      _2490 = min(max(log2(mad(_2469, 0.879143f, mad(_2466, 0.0784336f, (_2463 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
      _2491 = _2476 * 0.060606062f;
      _2492 = _2483 * 0.060606062f;
      _2493 = _2490 * 0.060606062f;
      _2494 = _2491 * _2491;
      _2495 = _2492 * _2492;
      _2496 = _2493 * _2493;
      _2512 = min(0.0f, (-0.0f - (((_2476 * 0.0072181816f) + ((_2494 * 0.4298f) + (((_2494 * _2494) * ((31.96f - (_2476 * 2.4327273f)) + (_2494 * 15.5f))) - ((_2476 * 0.41624245f) * _2494)))) + -0.00232f)));
      _2528 = min(0.0f, (-0.0f - (((_2483 * 0.0072181816f) + ((_2495 * 0.4298f) + (((_2495 * _2495) * ((31.96f - (_2483 * 2.4327273f)) + (_2495 * 15.5f))) - ((_2483 * 0.41624245f) * _2495)))) + -0.00232f)));
      _2544 = min(0.0f, (-0.0f - (((_2490 * 0.0072181816f) + ((_2496 * 0.4298f) + (((_2496 * _2496) * ((31.96f - (_2490 * 2.4327273f)) + (_2496 * 15.5f))) - ((_2490 * 0.41624245f) * _2496)))) + -0.00232f)));
      _2545 = -0.0f - _2512;
      _2546 = -0.0f - _2528;
      _2547 = -0.0f - _2544;
      _2548 = dot(float3(_2545, _2546, _2547), float3(0.2126f, 0.7152f, 0.0722f));
      if (_nightToneParm == 1) {
        _2565 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
        _2566 = -0.79999995f / _2565;
        _2567 = -1.2f / _2565;
        _2568 = 0.20000005f / _2565;
        _2571 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
        _2574 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
        _2578 = (_2566 + 1.4f) + (_2574 * (-0.39999998f - _2566));
        _2582 = (_2567 + 1.6f) + (_2574 * (-0.6f - _2567));
        _2586 = (_2568 + 0.9f) + (_2574 * (0.5f - _2568));
        _2603 = (lerp(_2582, 1.2f, _2571));  // [sem: blended]
        _2604 = (lerp(_2578, 1.0f, _2571));  // [sem: blended]
        _2605 = (lerp(_2586, 1.4f, _2571));  // [sem: blended]
      } else {
        _2603 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
        _2604 = 1.0f;  // [sem: blended]
        _2605 = 1.4f;  // [sem: blended]
      }
      _2606 = 1.0f - _2603;
      _2618 = ((exp2(log2(((saturate((_2512 * _2512) * _2545) * _2606) + _2603) * _2545) * _2604) - _2548) * _2605) + _2548;
      _2630 = ((exp2(log2(((saturate((_2528 * _2528) * _2546) * _2606) + _2603) * _2546) * _2604) - _2548) * _2605) + _2548;
      _2642 = ((exp2(log2(((saturate((_2544 * _2544) * _2547) * _2606) + _2603) * _2547) * _2604) - _2548) * _2605) + _2548;
      _2649 = saturate(exp2(log2(mad(_2642, -0.09902974f, mad(_2630, -0.09802088f, (_2618 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
      _2656 = saturate(exp2(log2(mad(_2642, -0.098961174f, mad(_2630, 1.1519032f, (_2618 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
      _2663 = saturate(exp2(log2(mad(_2642, 1.1510737f, mad(_2630, -0.09804345f, (_2618 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
      if (_etcParams.z == 0.0f) {
        _2669 = 1.0f - abs(_etcParams.w);
        _2670 = saturate(_etcParams.w);  // [sem: expr_sat]
        _2672 = (_2669 * _2649) + _2670;
        _2674 = (_2669 * _2656) + _2670;
        _2676 = (_2669 * _2663) + _2670;
        if (_colorGradingParams.w > 0.0f) {
          _2681 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _2698 = (((max(0.0f, (1.0f - _2672)) - _2672) * _2681) + _2672);
          _2699 = (((max(0.0f, (1.0f - _2674)) - _2674) * _2681) + _2674);
          _2700 = (((max(0.0f, (1.0f - _2676)) - _2676) * _2681) + _2676);
        } else {
          _2698 = _2672;
          _2699 = _2674;
          _2700 = _2676;
        }
        _2702 = _userImageAdjust.y + 1.0f;
        _2704 = _userImageAdjust.x + 0.5f;
        _2707 = ((_2698 + -0.5f) * _2702) + _2704;
        _2710 = ((_2699 + -0.5f) * _2702) + _2704;
        _2713 = ((_2700 + -0.5f) * _2702) + _2704;
        _2719 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _2754 = exp2(log2(saturate(mad(_colorBlind0.z, _2713, mad(_colorBlind0.y, _2710, (_colorBlind0.x * _2707))))) * _2719);
        _2755 = exp2(log2(saturate(mad(_colorBlind1.z, _2713, mad(_colorBlind1.y, _2710, (_colorBlind1.x * _2707))))) * _2719);
        _2756 = exp2(log2(saturate(mad(_colorBlind2.z, _2713, mad(_colorBlind2.y, _2710, (_colorBlind2.x * _2707))))) * _2719);
      } else {
        _2754 = _2649;
        _2755 = _2656;
        _2756 = _2663;
      }
    } else {
      _2754 = _2378;
      _2755 = _2381;
      _2756 = _2384;
    }
    if (_etcParams.y > 1.0f) {
      _2759 = abs(_99);
      _2761 = abs(_100 + -1.0f);
      _2767 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_2759, _2761), float2(_2759, _2761))));  // [sem: expr_sat]
      _2772 = (_2767 * _2754);
      _2773 = (_2767 * _2755);
      _2774 = (_2767 * _2756);
    } else {
      _2772 = _2754;
      _2773 = _2755;
      _2774 = _2756;
    }
    if (_2401 && (_etcParams.z > 0.0f)) {
      _2804 = select((_2772 <= 0.0031308f), (_2772 * 12.92f), (((pow(_2772, 0.41666666f)) * 1.055f) + -0.055f));
      _2805 = select((_2773 <= 0.0031308f), (_2773 * 12.92f), (((pow(_2773, 0.41666666f)) * 1.055f) + -0.055f));
      _2806 = select((_2774 <= 0.0031308f), (_2774 * 12.92f), (((pow(_2774, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _2804 = _2772;
      _2805 = _2773;
      _2806 = _2774;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _2809 = (float)((uint)((uint)(_2385)));
      if (!(_2809 < _viewDir.w)) {
        if (!(!(_2809 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
          _2820 = 0.0f;
          _2821 = 0.0f;
          _2822 = 0.0f;
        } else {
          _2820 = _2804;
          _2821 = _2805;
          _2822 = _2806;
        }
      } else {
        _2820 = 0.0f;
        _2821 = 0.0f;
        _2822 = 0.0f;
      }
    } else {
      _2820 = _2804;
      _2821 = _2805;
      _2822 = _2806;
    }
    if (!_2) {
      _337 = _262;
      _338 = _263;
      while(true) {
        _262 = _337;
        _263 = _338;
        __loop_jump_target = 261;
        break;
        break;
      }
      if (__loop_jump_target == 261) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
    }
    SV_Target.x = _2820;
    SV_Target.y = _2821;
    SV_Target.z = _2822;
    SV_Target.w = _2398;
    break;
  }
  return SV_Target;
}
