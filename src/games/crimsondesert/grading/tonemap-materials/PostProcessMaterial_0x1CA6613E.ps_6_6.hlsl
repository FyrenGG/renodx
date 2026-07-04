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

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t97, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t45, space36);

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
  float4 _viewProj[4] : packoffset(c010.x);
  float4 _viewProjNoJitter[4] : packoffset(c014.x);
  float4 _viewProjRelative[4] : packoffset(c018.x);
  float4 _viewProjRelativeNoJitter[4] : packoffset(c022.x);
  float4 _invViewProj[4] : packoffset(c026.x);
  float4 _invViewProjRelative[4] : packoffset(c030.x);
  float4 _invViewProjRelativeNoJitter[4] : packoffset(c034.x);
  float4 _viewProjRelativeOrtho[4] : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  float4 _view[4] : packoffset(c062.x);
  float4 _viewRelative[4] : packoffset(c066.x);
  float4 _viewRelativePrev[4] : packoffset(c070.x);
  float4 _proj[4] : packoffset(c074.x);
  float4 _projNoJitter[4] : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  float4 _viewProjNoJitterPrev[4] : packoffset(c083.x);
  float4 _viewProjRelativePrev[4] : packoffset(c087.x);
  float4 _viewProjRelativeNoJitterPrev[4] : packoffset(c091.x);
  float4 _invViewProjPrev[4] : packoffset(c095.x);
  float4 _invViewProjRelativePrev[4] : packoffset(c099.x);
  float4 _projToPrevProj[4] : packoffset(c103.x);
  float4 _projToPrevProjNoTranslation[4] : packoffset(c107.x);
  float4 _viewProjectionTexScale[4] : packoffset(c111.x);
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

#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"



#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
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
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
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
  uint _characterMeshEffectType : packoffset(c028.z);
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
  float4 _97;
  float _110;
  float _111;
  float _112;
  float _114;
  float _115;
  float _116;
  float _117;
  float _119;
  float _120;
  float _121;
  float _122;
  float _158;
  float _159;
  float _160;
  float _161;
  float _197;
  float _198;
  float _199;
  float _200;
  float _202;
  float _203;
  float _204;
  float _205;
  float4 _208;
  bool _214;
  float _219;
  float _220;
  float _221;
  float _232;
  float _233;
  float _234;
  int _242;
  float _250;
  float _251;
  float _261;
  float _262;
  float _270;
  float _272;
  int _273;
  float _347;
  float _549;
  float _550;
  float _551;
  float _766;
  float _767;
  float _892;
  float _893;
  float _894;
  float _1017;
  float _1083;
  float _1084;
  float _1085;
  float _1086;
  int _1087;
  float _1092;
  float _1093;
  float _1094;
  float _1095;
  int _1096;
  float _1101;
  float _1102;
  float _1103;
  float _1104;
  int _1105;
  float _1261;
  float _1262;
  float _1263;
  float _1264;
  float _1265;
  float _1266;
  float _1372;
  float _1373;
  float _1374;
  float _1375;
  int _1376;
  float _1381;
  float _1382;
  float _1383;
  float _1384;
  int _1385;
  float _1390;
  float _1391;
  float _1392;
  float _1393;
  int _1394;
  float _1539;
  float _1540;
  float _1541;
  int _1542;
  float _1616;
  float _1617;
  float _1618;
  float _1655;
  float _1656;
  float _1657;
  float _2227;
  float _2228;
  float _2229;
  float _2276;
  float _2481;
  float _2482;
  float _2483;
  float _2576;
  float _2577;
  float _2578;
  float _2632;
  float _2633;
  float _2634;
  float _2650;
  float _2651;
  float _2652;
  float _2682;
  float _2683;
  float _2684;
  float _2698;
  float _2699;
  float _2700;
  float _280;
  float _284;
  float _288;
  float _289;
  float _293;
  float _297;
  float _298;
  float _302;
  float _306;
  float _309;
  float _310;
  float _311;
  float _312;
  float _316;
  float _324;
  float _325;
  float _326;
  float _327;
  float _328;
  float _329;
  float _339;
  float _343;
  int _344;
  float _351;
  float _352;
  float _353;
  float _354;
  float _358;
  float _362;
  float _363;
  float _367;
  float _371;
  float _372;
  float _376;
  float _380;
  float _381;
  float _383;
  float _384;
  float _385;
  float _387;
  float _392;
  float _393;
  float _394;
  float _395;
  float _396;
  float _397;
  float _399;
  float _407;
  float _409;
  float _413;
  float _417;
  float _424;
  float _425;
  float _426;
  float _427;
  float _437;
  float _441;
  float _445;
  float _449;
  float _455;
  float _456;
  float _457;
  float _458;
  float _459;
  float _460;
  float _471;
  float _475;
  float _479;
  float _481;
  float _487;
  float _488;
  float _489;
  float _490;
  float _491;
  float _492;
  float _503;
  float _505;
  float _507;
  float _509;
  float _517;
  float _518;
  float _519;
  float _521;
  float _525;
  float _528;
  float _532;
  float _544;
  float _556;
  float _557;
  float _558;
  float _559;
  int _569;
  float _577;
  int _587;
  float _595;
  int _598;
  float _606;
  float _611;
  float _612;
  float _613;
  int _621;
  int _629;
  float _632;
  int _635;
  float _643;
  int _644;
  float _652;
  int _658;
  float _666;
  float _674;
  float _675;
  float _677;
  bool _680;
  bool _681;
  bool _682;
  bool _683;
  float _693;
  float _696;
  int _701;
  int _709;
  int _724;
  int _732;
  int _748;
  int _756;
  int _768;
  float _776;
  int _781;
  float _789;
  int _791;
  float _799;
  int _802;
  float _810;
  int _818;
  float _828;
  float _829;
  float _830;
  float _831;
  float _832;
  float _833;
  int _843;
  float _851;
  int _854;
  float _862;
  int _866;
  float _874;
  int _879;
  float _887;
  float _888;
  int _895;
  float _903;
  int _911;
  float _921;
  float _922;
  float _923;
  float _924;
  float _925;
  float _926;
  int _957;
  float _965;
  int _973;
  float _981;
  int _996;
  float _1004;
  int _1006;
  float _1014;
  int _1018;
  float _1028;
  float _1029;
  float _1030;
  int _1031;
  float _1039;
  int _1040;
  float _1048;
  float _1049;
  float _1056;
  float _1070;
  float _1071;
  float _1072;
  float _1079;
  float _1080;
  float _1081;
  int _1089;
  int _1098;
  float _1106;
  float _1107;
  float _1108;
  uint _1115;
  uint _1118;
  uint _1123;
  uint _1126;
  uint _1131;
  uint _1134;
  float _1145;
  float _1146;
  float _1147;
  float _1148;
  float _1149;
  float _1150;
  float _1151;
  float _1157;
  bool _1158;
  float _1159;
  float _1160;
  float _1161;
  float _1162;
  int _1163;
  float _1169;
  float _1170;
  float _1171;
  float _1199;
  float4 _1208;
  int _1216;
  float _1224;
  int _1226;
  float _1234;
  float _1239;
  float _1243;
  int _1250;
  float _1258;
  float _1276;
  float _1279;
  float _1282;
  float _1285;
  int _1286;
  float _1294;
  float _1297;
  float _1298;
  float _1299;
  float _1300;
  float _1301;
  float _1302;
  float _1303;
  float _1304;
  float _1305;
  float _1306;
  float _1309;
  float _1312;
  float _1315;
  float _1318;
  float _1321;
  float _1324;
  float _1331;
  float _1332;
  float _1333;
  float _1340;
  float _1341;
  float _1342;
  float _1345;
  float _1348;
  float _1351;
  int _1356;
  float _1364;
  float _1365;
  float _1366;
  float _1367;
  float _1368;
  float _1369;
  float _1370;
  int _1378;
  int _1387;
  float _1395;
  float _1396;
  float _1397;
  float _1401;
  float _1402;
  float _1403;
  float _1418;
  float _1425;
  float _1426;
  float _1427;
  float _1438;
  bool _1439;
  float _1440;
  float _1441;
  float _1442;
  float _1443;
  int _1444;
  float _1454;
  float _1455;
  float _1456;
  float _1484;
  float _1489;
  float _1490;
  int _1491;
  float _1499;
  float _1504;
  float _1505;
  float _1506;
  float _1515;
  float _1517;
  float _1518;
  float _1520;
  float _1522;
  float _1523;
  float _1524;
  float _1530;
  float _1531;
  float _1546;
  float _1547;
  float _1548;
  float4 _1553;
  float4 _1557;
  int _1564;
  float _1572;
  float _1574;
  float _1581;
  float _1582;
  float _1583;
  int _1586;
  float4 _1591;
  int _1595;
  float _1603;
  float _1605;
  int _1619;
  float _1627;
  float _1634;
  float _1635;
  float _1636;
  int _1637;
  int _1645;
  bool _1650;
  int _1658;
  float _1666;
  float _1673;
  float _1701;
  float _1706;
  float _1707;
  int _1708;
  int _1716;
  float _1717;
  float _1723;
  float _1724;
  float _1725;
  float _1726;
  float _1730;
  float _1733;
  float _1735;
  bool _1738;
  bool _1739;
  bool _1740;
  bool _1741;
  float _1750;
  float _1751;
  float _1752;
  float _1753;
  float _1760;
  float _1761;
  float _1765;
  float _1767;
  float _1769;
  float _1775;
  float _1779;
  float _1792;
  float _1793;
  float _1795;
  float _1802;
  float _1804;
  float _1815;
  float _1834;
  bool _1837;
  bool _1838;
  bool _1839;
  bool _1840;
  float _1849;
  float _1860;
  float _1909;
  float _1912;
  float _1914;
  bool _1917;
  bool _1918;
  bool _1919;
  bool _1920;
  float _1929;
  float _1930;
  float _1932;
  float _1937;
  float _1944;
  float _1950;
  float _1961;
  float _1980;
  bool _1983;
  bool _1984;
  bool _1985;
  bool _1986;
  float _1995;
  float _2005;
  float _2051;
  float _2052;
  float _2056;
  float _2059;
  float _2061;
  bool _2064;
  bool _2065;
  bool _2066;
  bool _2067;
  float _2076;
  float _2077;
  float _2083;
  float _2090;
  float _2096;
  float _2107;
  float _2126;
  bool _2129;
  bool _2130;
  bool _2131;
  bool _2132;
  float _2141;
  float _2151;
  int _2208;
  float _2216;
  float _2230;
  float _2231;
  float _2238;
  int _2243;
  float _2251;
  float _2253;
  float _2260;
  float _2261;
  float _2262;
  uint _2263;
  bool _2279;
  float _2285;
  float _2334;
  float _2335;
  float _2336;
  float _2338;
  float _2345;
  float _2346;
  float _2347;
  float _2366;
  float _2367;
  float _2368;
  float _2369;
  float _2370;
  float _2371;
  float _2372;
  float _2373;
  float _2374;
  float _2420;
  float _2421;
  float _2422;
  float _2423;
  float _2424;
  float _2425;
  float _2426;
  float _2443;
  float _2444;
  float _2445;
  float _2446;
  float _2452;
  float _2455;
  float _2462;
  float _2463;
  float _2464;
  float _2493;
  float _2518;
  float _2519;
  float _2520;
  float _2539;
  float _2540;
  float _2541;
  float _2547;
  float _2551;
  float _2552;
  float _2553;
  float _2554;
  float _2559;
  float _2584;
  float _2588;
  float _2589;
  float _2590;
  float _2591;
  float _2621;
  float _2640;
  float _2641;
  float _2645;
  float _2689;
  int __loop_jump_target = -1;
  _30 = 1.0f / max(0.0010000000474974513f, _exposure0.x);
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_32.x, _32.y);
  _65 = (float)((uint)((uint)(((int)(_frameNumber.x * 1551)) & 15)));
  _66 = float((int)(int((_bufferSizeAndInvSize.x + -1.0f) * saturate(TEXCOORD.x))));
  _67 = float((int)(int((_bufferSizeAndInvSize.y + -1.0f) * saturate(TEXCOORD.y))));
  _76 = -0.0f - frac(frac(dot(float2(((_65 * 32.665000915527344f) + _66), ((_65 * 11.8149995803833f) + _67)), float2(0.0671105608344078f, 0.005837149918079376f))) * 52.98291778564453f);
  _85 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _97 = __3__36__0__0__g_gbufferNormal.Load(int3((int)(uint((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f)), (int)(uint((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f)), 0));
  _110 = (saturate(_97.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _111 = (saturate(_97.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _112 = (saturate(_97.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _114 = rsqrt(dot(float3(_110, _111, _112), float3(_110, _111, _112)));  // [sem: invLength]
  _115 = _114 * _110;
  _116 = _114 * _111;
  _117 = _112 * _114;
  _119 = (TEXCOORD.x * 2.0f) + -1.0f;
  _120 = TEXCOORD.y * 2.0f;
  _121 = 1.0f - _120;
  _122 = max(1.0000000116860974e-07f, _85.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _158 = mad((_invViewProj[2].w), _122, mad((_invViewProj[1].w), _121, ((_invViewProj[0].w) * _119))) + (_invViewProj[3].w);
  _159 = (mad((_invViewProj[2].x), _122, mad((_invViewProj[1].x), _121, ((_invViewProj[0].x) * _119))) + (_invViewProj[3].x)) / _158;
  _160 = (mad((_invViewProj[2].y), _122, mad((_invViewProj[1].y), _121, ((_invViewProj[0].y) * _119))) + (_invViewProj[3].y)) / _158;
  _161 = (mad((_invViewProj[2].z), _122, mad((_invViewProj[1].z), _121, ((_invViewProj[0].z) * _119))) + (_invViewProj[3].z)) / _158;
  _197 = mad((_invViewProjRelative[2].w), _122, mad((_invViewProjRelative[1].w), _121, ((_invViewProjRelative[0].w) * _119))) + (_invViewProjRelative[3].w);
  _198 = (mad((_invViewProjRelative[2].x), _122, mad((_invViewProjRelative[1].x), _121, ((_invViewProjRelative[0].x) * _119))) + (_invViewProjRelative[3].x)) / _197;
  _199 = (mad((_invViewProjRelative[2].y), _122, mad((_invViewProjRelative[1].y), _121, ((_invViewProjRelative[0].y) * _119))) + (_invViewProjRelative[3].y)) / _197;
  _200 = (mad((_invViewProjRelative[2].z), _122, mad((_invViewProjRelative[1].z), _121, ((_invViewProjRelative[0].z) * _119))) + (_invViewProjRelative[3].z)) / _197;
  _202 = rsqrt(dot(float3(_198, _199, _200), float3(_198, _199, _200)));  // [sem: invLength]
  _203 = _202 * _198;
  _204 = _202 * _199;
  _205 = _202 * _200;
  _208 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _214 = (_85.x < 1.0000000116860974e-07f) || (_85.x == 1.0f);
  _219 = _159 - _viewPos.x;
  _220 = _160 - _viewPos.y;
  _221 = _161 - _viewPos.z;
  _232 = _viewPos.x - _viewPosPrev.x;
  _233 = _viewPos.y - _viewPosPrev.y;
  _234 = _viewPos.z - _viewPosPrev.z;
  _242 = WaveReadLaneFirst(_materialIndex);
  _250 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_242 < (uint)170000), _242, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._cubeSpaceGradientRatio);
  _251 = _76 * 0.009999999776482582f;
  _261 = frac((_viewPos.x * 0.009999999776482582f) - (_232 * _251)) + 2000.0f;
  _262 = frac((_viewPos.y * 0.009999999776482582f) - (_233 * _251)) + 2000.0f;
  _270 = (frac((_viewPos.z * 0.009999999776482582f) - (_234 * _251)) + 2000.0f) + (frac(_time.x * 0.10000000149011612f) - (_76 * 0.004999999888241291f));
  _272 = 0.0f;
  _273 = 0;
  while(true) {
    _280 = ((_272 * _203) + _261) * 4.0f;
    _284 = frac(abs(_280));
    _288 = (select((_280 >= (-0.0f - _280)), _284, (-0.0f - _284)) * 0.25f) + -0.125f;
    _289 = ((_272 * _204) + _262) * 4.0f;
    _293 = frac(abs(_289));
    _297 = (select((_289 >= (-0.0f - _289)), _293, (-0.0f - _293)) * 0.25f) + -0.125f;
    _298 = ((_272 * _205) + _270) * 4.0f;
    _302 = frac(abs(_298));
    _306 = (select((_298 >= (-0.0f - _298)), _302, (-0.0f - _302)) * 0.25f) + -0.125f;
    _309 = _time.x * 0.5f;
    _310 = cos(_309);
    _311 = sin(_309);
    _312 = -0.0f - _311;
    _316 = mad(_306, _310, (_311 * _297));
    _324 = abs(mad(_316, _312, (_310 * _288))) + -0.0005000000237487257f;
    _325 = abs(mad(_306, _312, (_310 * _297))) + -0.0005000000237487257f;
    _326 = abs(mad(_316, _310, (_311 * _288))) + -0.0005000000237487257f;
    _327 = max(_324, 0.0f);
    _328 = max(_325, 0.0f);
    _329 = max(_326, 0.0f);
    _339 = min(max(_324, max(_325, _326)), 0.0f) + sqrt(((_328 * _328) + (_327 * _327)) + (_329 * _329));
    if (!(_339 < (_272 * 0.0010000000474974513f))) {
      _343 = _339 + _272;
      _344 = _273 + 1;
      if ((int)_344 < (int)80) {
        _272 = _343;
        _273 = _344;
        continue;
      } else {
        _347 = _343;
      }
    } else {
      _347 = _272;
    }
    _351 = (_347 * _203) + _261;
    _352 = (_347 * _204) + _262;
    _353 = (_347 * _205) + _270;
    _354 = _351 * 4.0f;
    _358 = frac(abs(_354));
    _362 = (select((_354 >= (-0.0f - _354)), _358, (-0.0f - _358)) * 0.25f) + -0.125f;
    _363 = _352 * 4.0f;
    _367 = frac(abs(_363));
    _371 = (select((_363 >= (-0.0f - _363)), _367, (-0.0f - _367)) * 0.25f) + -0.125f;
    _372 = _353 * 4.0f;
    _376 = frac(abs(_372));
    _380 = (select((_372 >= (-0.0f - _372)), _376, (-0.0f - _376)) * 0.25f) + -0.125f;
    _381 = _371 * _310;
    _383 = _371 * _311;
    _384 = mad(_380, _310, _383);
    _385 = _362 * _310;
    _387 = _362 * _311;
    _392 = abs(mad(_384, _312, _385)) + -0.0005000000237487257f;
    _393 = abs(mad(_380, _312, _381)) + -0.0005000000237487257f;
    _394 = abs(mad(_384, _310, _387)) + -0.0005000000237487257f;
    _395 = max(_392, 0.0f);
    _396 = max(_393, 0.0f);
    _397 = max(_394, 0.0f);
    _399 = _396 * _396;
    _407 = min(max(_392, max(_393, _394)), 0.0f) + sqrt((_399 + (_395 * _395)) + (_397 * _397));
    _409 = (_351 + 0.0010000000474974513f) * 4.0f;
    _413 = frac(abs(_409));
    _417 = (select((_409 >= (-0.0f - _409)), _413, (-0.0f - _413)) * 0.25f) + -0.125f;
    _424 = abs(mad(_384, _312, (_417 * _310))) + -0.0005000000237487257f;
    _425 = abs(mad(_384, _310, (_417 * _311))) + -0.0005000000237487257f;
    _426 = max(_424, 0.0f);
    _427 = max(_425, 0.0f);
    _437 = (_352 + 0.0010000000474974513f) * 4.0f;
    _441 = frac(abs(_437));
    _445 = (select((_437 >= (-0.0f - _437)), _441, (-0.0f - _441)) * 0.25f) + -0.125f;
    _449 = mad(_380, _310, (_445 * _311));
    _455 = abs(mad(_449, _312, _385)) + -0.0005000000237487257f;
    _456 = abs(mad(_380, _312, (_445 * _310))) + -0.0005000000237487257f;
    _457 = abs(mad(_449, _310, _387)) + -0.0005000000237487257f;
    _458 = max(_455, 0.0f);
    _459 = max(_456, 0.0f);
    _460 = max(_457, 0.0f);
    _471 = (_353 + 0.0010000000474974513f) * 4.0f;
    _475 = frac(abs(_471));
    _479 = (select((_471 >= (-0.0f - _471)), _475, (-0.0f - _475)) * 0.25f) + -0.125f;
    _481 = mad(_479, _310, _383);
    _487 = abs(mad(_481, _312, _385)) + -0.0005000000237487257f;
    _488 = abs(mad(_479, _312, _381)) + -0.0005000000237487257f;
    _489 = abs(mad(_481, _310, _387)) + -0.0005000000237487257f;
    _490 = max(_487, 0.0f);
    _491 = max(_488, 0.0f);
    _492 = max(_489, 0.0f);
    _503 = min(max(_424, max(_393, _425)), 0.0f) + (sqrt(((_426 * _426) + _399) + (_427 * _427)) - _407);
    _505 = min(max(_455, max(_456, _457)), 0.0f) + (sqrt(((_459 * _459) + (_458 * _458)) + (_460 * _460)) - _407);
    _507 = min(max(_487, max(_488, _489)), 0.0f) + (sqrt(((_491 * _491) + (_490 * _490)) + (_492 * _492)) - _407);
    _509 = rsqrt(dot(float3(_503, _505, _507), float3(_503, _505, _507)));  // [sem: invLength]
    _517 = -0.0f - _sunDirection.x;
    _518 = -0.0f - _sunDirection.y;
    _519 = -0.0f - _sunDirection.z;
    _521 = rsqrt(dot(float3(_517, _518, _519), float3(_517, _518, _519)));  // [sem: invLength]
    _525 = dot(float3((_509 * _503), (_509 * _505), (_509 * _507)), float3((_521 * _517), (_521 * _518), (_521 * _519)));
    _528 = saturate((_347 * 0.25f) + -0.25f);  // [sem: expr_sat]
    _532 = (_528 * _528) * (3.0f - (_528 * 2.0f));
    if (_214) {
      _544 = exp2(log2(abs(_204)) * 0.5f) * _250;
      _549 = (_544 * 0.029999999329447746f);
      _550 = (_544 * 0.05000000074505806f);
      _551 = (_544 * 0.07999999821186066f);
    } else {
      _549 = 0.0f;
      _550 = 0.0f;
      _551 = 0.0f;
    }
    _556 = exp2(log2((exp2(log2((1.0f - _525) + (_532 * _525)) * 4.0f) * 0.20000000298023224f) + 0.10000000149011612f) * 1.5f);
    _557 = _556 * 0.699999988079071f;
    _558 = _556 * 0.4000000059604645f;
    _559 = _556 * 0.10000000149011612f;
    _569 = WaveReadLaneFirst(_materialIndex);
    _577 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_569 < (uint)170000), _569, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._cubeSpaceEffectRatio);
    _587 = WaveReadLaneFirst(_materialIndex);
    _595 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_587 < (uint)170000), _587, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiDotRatio);
    if (_595 > 0.0f) {
      _598 = WaveReadLaneFirst(_materialIndex);
      _606 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_598 < (uint)170000), _598, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._depthOuterMaskRadius);
      _611 = _159 - _mainPosition.x;
      _612 = _160 - _mainPosition.y;
      _613 = _161 - _mainPosition.z;
      _621 = WaveReadLaneFirst(_materialIndex);
      _629 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_621 < (uint)170000), _621, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._invertDepthMask);
      _632 = saturate(_85.x);  // [sem: expr_sat]
      _635 = WaveReadLaneFirst(_materialIndex);
      _643 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_635 < (uint)170000), _635, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._depthContrast);
      _644 = WaveReadLaneFirst(_materialIndex);
      _652 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_644 < (uint)170000), _644, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._depthIntensity);
      _658 = WaveReadLaneFirst(_materialIndex);
      _666 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_658 < (uint)170000), _658, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleDistortionIntensity);
      if (_666 > 0.0f) {
        _674 = (_159 - _mainPosition.x) * 0.019999999552965164f;
        _675 = (_161 - _mainPosition.z) * 0.019999999552965164f;
        _677 = atan(_675 / _674);
        _680 = (_674 < 0.0f);
        _681 = (_674 == 0.0f);
        _682 = (_675 >= 0.0f);
        _683 = (_675 < 0.0f);
        _693 = sqrt((_674 * _674) + (_675 * _675));
        _696 = select((_681 && _682), 1.5f, select((_681 && _683), -1.5f, (select((_680 && _683), (_677 + -3.1415927410125732f), select((_680 && _682), (_677 + 3.1415927410125732f), _677)) * 0.9549295902252197f)));
        _701 = WaveReadLaneFirst(_materialIndex);
        _709 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_701 < (uint)170000), _701, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._noiseTex);
        _724 = WaveReadLaneFirst(_materialIndex);
        _732 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_724 < (uint)170000), _724, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._noiseTex);
        _748 = WaveReadLaneFirst(_materialIndex);
        _756 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_748 < (uint)170000), _748, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._noiseTex);
        _766 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_756 < (uint)65000), _756, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_696 * 0.1666666716337204f), ((_693 * 0.1666666716337204f) - (_time.x * 0.05000000074505806f)))))).x);
        _767 = ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_732 < (uint)65000), _732, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_696 * 0.5f), ((_693 * 0.5f) - (_time.x * 0.10000000149011612f)))))).x) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_709 < (uint)65000), _709, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_696, (_693 - (_time.x * 0.05000000074505806f)))))).x));
      } else {
        _766 = 0.0f;
        _767 = 0.0f;
      }
      _768 = WaveReadLaneFirst(_materialIndex);
      _776 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_768 < (uint)170000), _768, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleIntensity);
      if (_776 > 0.0f) {
        _781 = WaveReadLaneFirst(_materialIndex);
        _789 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_781 < (uint)170000), _781, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleSpeed);
        _791 = WaveReadLaneFirst(_materialIndex);
        _799 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_791 < (uint)170000), _791, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRipplePhaseOffset);
        _802 = WaveReadLaneFirst(_materialIndex);
        _810 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_802 < (uint)170000), _802, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleWidth);
        _818 = WaveReadLaneFirst(_materialIndex);
        _828 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_818 < (uint)170000), _818, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.x);
        _829 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_818 < (uint)170000), _818, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.y);
        _830 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_818 < (uint)170000), _818, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.z);
        _831 = _828 + (_159 - _mainPosition.x);
        _832 = _829 + (_160 - _mainPosition.y);
        _833 = _830 + (_161 - _mainPosition.z);
        _843 = WaveReadLaneFirst(_materialIndex);
        _851 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_843 < (uint)170000), _843, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._rippleCount);
        _854 = WaveReadLaneFirst(_materialIndex);
        _862 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_854 < (uint)170000), _854, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleDistortionIntensity);
        _866 = WaveReadLaneFirst(_materialIndex);
        _874 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_866 < (uint)170000), _866, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleContrast);
        _879 = WaveReadLaneFirst(_materialIndex);
        _887 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_879 < (uint)170000), _879, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._bigRippleIntensity);
        _888 = _887 * saturate(exp2(log2(frac(((((1.0f / max(9.999999747378752e-06f, _810)) * exp2(log2(sqrt(sqrt(dot(float3(_831, _832, _833), float3(_831, _832, _833))))) * 1.2000000476837158f)) * _851) - frac(_799 + (_789 * _time.x))) - (_862 * _766))) * _874));
        _892 = _888;
        _893 = (_888 * 0.033104754984378815f);
        _894 = (_888 * 0.043233636766672134f);
      } else {
        _892 = 0.0f;
        _893 = 0.0f;
        _894 = 0.0f;
      }
      _895 = WaveReadLaneFirst(_materialIndex);
      _903 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_895 < (uint)170000), _895, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._rippleWidth);
      _911 = WaveReadLaneFirst(_materialIndex);
      _921 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_911 < (uint)170000), _911, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.x);
      _922 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_911 < (uint)170000), _911, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.y);
      _923 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_911 < (uint)170000), _911, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ripplePosOffset.z);
      _924 = _921 + (_159 - _mainPosition.x);
      _925 = _922 + (_160 - _mainPosition.y);
      _926 = _923 + (_161 - _mainPosition.z);
      _957 = WaveReadLaneFirst(_materialIndex);
      _965 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_957 < (uint)170000), _957, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._rippleCount);
      _973 = WaveReadLaneFirst(_materialIndex);
      _981 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_973 < (uint)170000), _973, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._rippleSpeed);
      if ((sqrt(((_219 * _219) + (_220 * _220)) + (_221 * _221)) + -1500.0f) < 1.0f) {
        _996 = WaveReadLaneFirst(_materialIndex);
        _1004 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_996 < (uint)170000), _996, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiDotDensity);
        _1017 = _1004;
      } else {
        _1006 = WaveReadLaneFirst(_materialIndex);
        _1014 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1006 < (uint)170000), _1006, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiDotDensity);
        _1017 = (_1014 * 0.25f);
      }
      _1018 = WaveReadLaneFirst(_materialIndex);
      _1028 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1018 < (uint)170000), _1018, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiScrollSpeed.x);
      _1029 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1018 < (uint)170000), _1018, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiScrollSpeed.y);
      _1030 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1018 < (uint)170000), _1018, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiScrollSpeed.z);
      _1031 = WaveReadLaneFirst(_materialIndex);
      _1039 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1031 < (uint)170000), _1031, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiOffset);
      _1040 = WaveReadLaneFirst(_materialIndex);
      _1048 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1040 < (uint)170000), _1040, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiMovementSpeed);
      _1049 = _76 * 1.5f;
      _1056 = _892 * 3.0f;
      _1070 = (_time.x * _1028) + (_1017 * ((_159 - (_232 * _1049)) - _1056));
      _1071 = (_time.x * _1029) + (_1017 * ((_160 - (_233 * _1049)) - _1056));
      _1072 = (_time.x * _1030) + (_1017 * ((_161 - (_234 * _1049)) - _1056));
      _1079 = floor(_1070);
      _1080 = floor(_1071);
      _1081 = floor(_1072);
      _1083 = 100000000376832.0f;
      _1084 = 0.0f;
      _1085 = 0.0f;
      _1086 = 0.0f;
      _1087 = -1;
      while(true) {
        _1092 = _1083;
        _1093 = _1084;
        _1094 = _1085;
        _1095 = _1086;
        _1096 = -1;
        while(true) {
          _1101 = _1092;
          _1102 = _1093;
          _1103 = _1094;
          _1104 = _1095;
          _1105 = -1;
          while(true) {
            _1106 = float((int)(_1087));
            _1107 = float((int)(_1096));
            _1108 = float((int)(_1105));
            _1115 = asint((_1107 + _1080)) * 1025;
            _1118 = (((uint)(_1115) >> 6) ^ _1115) * 9;
            _1123 = asint((_1108 + _1081)) * 1025;
            _1126 = (((uint)(_1123) >> 6) ^ _1123) * 9;
            _1131 = ((((int)((((uint)(_1118) >> 11) ^ _1118) * 32769)) ^ asint((_1106 + _1079))) ^ ((int)((((uint)(_1126) >> 11) ^ _1126) * 32769))) * 1025;
            _1134 = (((uint)(_1131) >> 6) ^ _1131) * 9;
            _1145 = sin(((((_time.x + 1000.0f) * _1048) + _1039) * 2.0f) * (asfloat(((((int)((((uint)(_1134) >> 11) ^ _1134) * 32769)) & 8388607) | 1065353216)) + -1.0f));
            _1146 = _1145 + _1106;
            _1147 = _1145 + _1107;
            _1148 = _1145 + _1108;
            _1149 = (frac(_1070) + -0.5f) - _1146;
            _1150 = (frac(_1071) + -0.5f) - _1147;
            _1151 = (frac(_1072) + -0.5f) - _1148;
            _1157 = sqrt(((_1150 * _1150) + (_1149 * _1149)) + (_1151 * _1151));
            _1158 = (_1157 < _1101);
            _1159 = select(_1158, _1157, _1101);
            _1160 = select(_1158, _1146, _1102);
            _1161 = select(_1158, _1147, _1103);
            _1162 = select(_1158, _1148, _1104);
            _1163 = _1105 + 1;
            if (!(_1163 == 2)) {
              _1101 = _1159;
              _1102 = _1160;
              _1103 = _1161;
              _1104 = _1162;
              _1105 = _1163;
              continue;
            }
            while(true) {
              _1098 = _1096 + 1;
              if (!(_1098 == 2)) {
                _1092 = _1159;
                _1093 = _1160;
                _1094 = _1161;
                _1095 = _1162;
                _1096 = _1098;
                __loop_jump_target = 1091;
                break;
              }
              while(true) {
                _1089 = _1087 + 1;
                if (!(_1089 == 2)) {
                  _1083 = _1159;
                  _1084 = _1160;
                  _1085 = _1161;
                  _1086 = _1162;
                  _1087 = _1089;
                  __loop_jump_target = 1082;
                  break;
                }
                _1169 = (_1160 + _1079) / _1017;
                _1170 = (_1161 + _1080) / _1017;
                _1171 = (_1162 + _1081) / _1017;
                _1199 = mad((_viewProj[2].w), _1171, mad((_viewProj[1].w), _1170, ((_viewProj[0].w) * _1169))) + (_viewProj[3].w);
  // [sem: _3__36__0__0__g_sceneColor_sample]
                _1208 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((mad((_viewProj[2].x), _1171, mad((_viewProj[1].x), _1170, ((_viewProj[0].x) * _1169))) + (_viewProj[3].x)) / _1199) * 0.5f) + 0.5f), (0.5f - (((mad((_viewProj[2].y), _1171, mad((_viewProj[1].y), _1170, ((_viewProj[0].y) * _1169))) + (_viewProj[3].y)) / _1199) * 0.5f))));
                _1216 = WaveReadLaneFirst(_materialIndex);
                _1224 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1216 < (uint)170000), _1216, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiDotThreshold);
                _1226 = WaveReadLaneFirst(_materialIndex);
                _1234 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1226 < (uint)170000), _1226, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._rippleIntensity);
                _1239 = ((_1224 * select(_214, 0.0f, _1159)) - (_1234 * (((_892 * 0.5f) + 1.0f) - ((frac((((exp2(log2(sqrt(sqrt(dot(float3(_924, _925, _926), float3(_924, _925, _926))))) * 1.2000000476837158f) * 40.0f) * (1.0f / max(9.999999747378752e-06f, _903))) * _965) - (_981 * (_time.x + (_767 * 1.5f)))) + (_767 * 0.30000001192092896f)) * max(0.0f, (1.0f - ((1.0f - ((1.0f / max(9.999999747378752e-06f, _606)) * sqrt(dot(float3(_611, _612, _613), float3(_611, _612, _613))))) * 2.0f))))))) + min(max(saturate(exp2(log2(_652 * select((((float)((uint)_629)) == 1.0f), (1.0f - _632), _632)) * _643)), 0.0f), 1.0f);
                _1243 = saturate(_1239 / max((0.10000000149011612f / _1239), 0.0f));  // [sem: expr_sat]
                _1250 = WaveReadLaneFirst(_materialIndex);
                _1258 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1250 < (uint)170000), _1250, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._voronoiDotRatio);
                _1261 = (_1258 * (1.0f - floor((_1243 * _1243) * (3.0f - (_1243 * 2.0f)))));
                _1262 = select(_214, 0.0f, _1208.x);
                _1263 = select(_214, 0.0f, _1208.y);
                _1264 = select(_214, 0.0f, _1208.z);
                _1265 = _893;
                _1266 = _894;
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
          if (__loop_jump_target == 1091) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
          break;
        }
        if (__loop_jump_target == 1082) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
    } else {
      _1261 = 0.0f;
      _1262 = 0.0f;
      _1263 = 0.0f;
      _1264 = 0.0f;
      _1265 = 0.0f;
      _1266 = 0.0f;
    }
    _1276 = 0.0010000000474974513f / max(0.0010000000474974513f, _exposure0.x);
    _1279 = (((_1262 * _1261) + (saturate(_577 * (lerp(_557, _549, _532))) * _30)) + (_1265 * 0.009999999776482582f)) + _1276;
    _1282 = (((_1263 * _1261) + (saturate(_577 * (lerp(_558, _550, _532))) * _30)) + (_1265 * 0.009999999776482582f)) + _1276;
    _1285 = (((_1264 * _1261) + (saturate(_577 * (lerp(_559, _551, _532))) * _30)) + (_1266 * 0.009999999776482582f)) + _1276;
    _1286 = WaveReadLaneFirst(_materialIndex);
    _1294 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1286 < (uint)170000), _1286, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._radius);
    if (_1294 > 0.0010000000474974513f) {
      _1297 = ddx_coarse(_203);
      _1298 = ddx_coarse(_204);
      _1299 = ddx_coarse(_205);
      _1300 = ddy_coarse(_203);
      _1301 = ddy_coarse(_204);
      _1302 = ddy_coarse(_205);
      _1303 = ddx_coarse(TEXCOORD.x);
      _1304 = ddx_coarse(TEXCOORD.y);
      _1305 = ddy_coarse(TEXCOORD.x);
      _1306 = ddy_coarse(TEXCOORD.y);
      _1309 = (_1301 * _117) - (_1302 * _116);
      _1312 = (_1302 * _115) - (_1300 * _117);
      _1315 = (_1300 * _116) - (_1301 * _115);
      _1318 = (_1299 * _116) - (_1298 * _117);
      _1321 = (_1297 * _117) - (_1299 * _115);
      _1324 = (_1298 * _115) - (_1297 * _116);
      _1331 = (_1305 * _1318) + (_1309 * _1303);
      _1332 = (_1305 * _1321) + (_1312 * _1303);
      _1333 = (_1305 * _1324) + (_1315 * _1303);
      _1340 = (_1306 * _1318) + (_1309 * _1304);
      _1341 = (_1306 * _1321) + (_1312 * _1304);
      _1342 = (_1306 * _1324) + (_1304 * _1315);
      _1345 = max(dot(float3(_1331, _1332, _1333), float3(_1331, _1332, _1333)), dot(float3(_1340, _1341, _1342), float3(_1340, _1341, _1342)));
      _1348 = rsqrt(select((!(_1345 == 0.0f)), _1345, 0.10000000149011612f));  // [sem: rsqrt_val]
      _1351 = _1348 * _203;
      _1356 = WaveReadLaneFirst(_materialIndex);
      _1364 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1356 < (uint)170000), _1356, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._squareSize);
      _1365 = _1364 * _159;
      _1366 = _1364 * _160;
      _1367 = _1364 * _161;
      _1368 = floor(_1365);
      _1369 = floor(_1366);
      _1370 = floor(_1367);
      _1372 = 10.0f;
      _1373 = 0.0f;
      _1374 = 0.0f;
      _1375 = 0.0f;
      _1376 = -1;
      while(true) {
        _1381 = _1372;
        _1382 = _1373;
        _1383 = _1374;
        _1384 = _1375;
        _1385 = -1;
        while(true) {
          _1390 = _1381;
          _1391 = _1382;
          _1392 = _1383;
          _1393 = _1384;
          _1394 = -1;
          while(true) {
            _1395 = float((int)(_1394));
            _1396 = float((int)(_1385));
            _1397 = float((int)(_1376));
            _1401 = sin(_1395 + _1368);
            _1402 = sin(_1396 + _1369);
            _1403 = sin(_1397 + _1370);
            _1418 = _time.x * 0.20000000298023224f;
            _1425 = sin(_1418 * frac(sin(dot(float3(_1401, _1402, _1403), float3(12.98900032043457f, 78.23300170898438f, 37.71900177001953f))) * 143758.546875f)) + _1395;
            _1426 = sin(_1418 * frac(sin(dot(float3(_1401, _1402, _1403), float3(39.34600067138672f, 11.135000228881836f, 83.15499877929688f))) * 143758.546875f)) + _1396;
            _1427 = sin(_1418 * frac(sin(dot(float3(_1401, _1402, _1403), float3(73.15599822998047f, 52.23500061035156f, 9.151000022888184f))) * 143758.546875f)) + _1397;
            _1438 = max(abs((_1368 - _1365) + _1425), max(abs((_1369 - _1366) + _1426), abs((_1370 - _1367) + _1427)));
            _1439 = (_1438 < _1390);
            _1440 = select(_1439, _1438, _1390);
            _1441 = select(_1439, _1425, _1391);
            _1442 = select(_1439, _1426, _1392);
            _1443 = select(_1439, _1427, _1393);
            _1444 = _1394 + 1;
            if (!(_1444 == 2)) {
              _1390 = _1440;
              _1391 = _1441;
              _1392 = _1442;
              _1393 = _1443;
              _1394 = _1444;
              continue;
            }
            while(true) {
              _1387 = _1385 + 1;
              if (!(_1387 == 2)) {
                _1381 = _1440;
                _1382 = _1441;
                _1383 = _1442;
                _1384 = _1443;
                _1385 = _1387;
                __loop_jump_target = 1380;
                break;
              }
              while(true) {
                _1378 = _1376 + 1;
                if (!(_1378 == 2)) {
                  _1372 = _1440;
                  _1373 = _1441;
                  _1374 = _1442;
                  _1375 = _1443;
                  _1376 = _1378;
                  __loop_jump_target = 1371;
                  break;
                }
                _1454 = (_1441 + _1368) / _1364;
                _1455 = (_1442 + _1369) / _1364;
                _1456 = (_1443 + _1370) / _1364;
                _1484 = mad((_viewProj[2].w), _1456, mad((_viewProj[1].w), _1455, ((_viewProj[0].w) * _1454))) + (_viewProj[3].w);
                _1489 = (((mad((_viewProj[2].x), _1456, mad((_viewProj[1].x), _1455, ((_viewProj[0].x) * _1454))) + (_viewProj[3].x)) / _1484) * 0.5f) + 0.5f;
                _1490 = 0.5f - (((mad((_viewProj[2].y), _1456, mad((_viewProj[1].y), _1455, ((_viewProj[0].y) * _1454))) + (_viewProj[3].y)) / _1484) * 0.5f);
                _1491 = WaveReadLaneFirst(_materialIndex);
                _1499 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1491 < (uint)170000), _1491, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._radius);
                _1504 = _1454 - _mainPosition.x;
                _1505 = _1455 - _mainPosition.y;
                _1506 = _1456 - _mainPosition.z;
  // [sem: expr_sat]
                _1515 = saturate(1.0f - ((1.0f - ((1.0f / max(9.999999747378752e-06f, _1499)) * sqrt(dot(float3(_1504, _1505, _1506), float3(_1504, _1505, _1506))))) * 1.0152283906936646f));
                _1517 = 1.0f - saturate(_1515);
                _1518 = _1515 * 0.5f;
                _1520 = (TEXCOORD.x - _1489) / _1517;
                _1522 = (TEXCOORD.y - _1490) / _1517;
                _1523 = sin(_1518);
                _1524 = cos(_1518);
                _1530 = mad((-0.0f - _1523), _1522, (_1524 * _1520)) + _1489;
                _1531 = mad(_1524, _1522, (_1523 * _1520)) + _1490;
                _1539 = _1279;
                _1540 = _1282;
                _1541 = _1285;
                _1542 = 1;
                while(true) {
                  _1546 = (float((int)(6 - _1542)) * 0.1666666716337204f) * ((saturate(_85.x * 1.5f) * 0.5f) * saturate(frac(frac(dot(float2((_66 + 32.665000915527344f), (_67 + 11.8149995803833f)), float2(0.0671105608344078f, 0.005837149918079376f))) * 52.98291778564453f) + 0.5f));
                  _1547 = _1546 * mad((_1348 * _1333), _205, mad((_1348 * _1332), _204, (_1351 * _1331)));
                  _1548 = _1546 * mad((_1348 * _1342), _205, mad((_1348 * _1341), _204, (_1351 * _1340)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1553 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1547 + TEXCOORD.x), (_1548 + TEXCOORD.y)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1557 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1547 + _1530), (_1548 + _1531)));
                  _1564 = WaveReadLaneFirst(_materialIndex);
                  _1572 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1564 < (uint)170000), _1564, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._maskThreshold);
                  _1574 = (float)((bool)(uint)(_1553.w < _1572));
                  _1581 = (_1574 * ((_1557.x * 0.4000000059604645f) - _1539)) + _1539;
                  _1582 = (_1574 * ((_1557.y * 0.4000000059604645f) - _1540)) + _1540;
                  _1583 = (_1574 * ((_1557.z * 0.4000000059604645f) - _1541)) + _1541;
                  if (!(_1553.w > 0.8999999761581421f)) {
                    _1586 = _1542 + 1;
                    if ((int)_1586 < (int)6) {
                      _1539 = _1581;
                      _1540 = _1582;
                      _1541 = _1583;
                      _1542 = _1586;
                      continue;
                    }
                  }
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1591 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_1530, _1531));
                  _1595 = WaveReadLaneFirst(_materialIndex);
                  _1603 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1595 < (uint)170000), _1595, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._maskThreshold);
                  _1605 = (float)((bool)(uint)(_1553.w < _1603));
                  _1616 = ((_1605 * (_1591.x - _1581)) + _1581);
                  _1617 = ((_1605 * (_1591.y - _1582)) + _1582);
                  _1618 = ((_1605 * (_1591.z - _1583)) + _1583);
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
          if (__loop_jump_target == 1380) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
          break;
        }
        if (__loop_jump_target == 1371) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
    } else {
      _1616 = _1279;
      _1617 = _1282;
      _1618 = _1285;
    }
    _1619 = WaveReadLaneFirst(_materialIndex);
    _1627 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1619 < (uint)170000), _1619, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._ppWorldLoadingRatio);
    _1634 = (_1627 * (_1616 - _208.x)) + _208.x;
    _1635 = (_1627 * (_1617 - _208.y)) + _208.y;
    _1636 = (_1627 * (_1618 - _208.z)) + _208.z;
    _1637 = WaveReadLaneFirst(_materialIndex);
    _1645 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1637 < (uint)170000), _1637, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._excludePlayer);
    if (_1645 == 1) {
      _1650 = (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_32.x)))))) + 0.5f) * TEXCOORD.x), int((float((int)(int(float((int)((int)(_32.y)))))) + 0.5f) * TEXCOORD.y), 0)))).x) & 255) == _renderPassSelfPlayer);
      _1655 = select(_1650, _208.x, _1634);
      _1656 = select(_1650, _208.y, _1635);
      _1657 = select(_1650, _208.z, _1636);
    } else {
      _1655 = _1634;
      _1656 = _1635;
      _1657 = _1636;
    }
    _1658 = WaveReadLaneFirst(_materialIndex);
    _1666 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1658 < (uint)170000), _1658, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._starburstIntensity);
    if (_1666 > 0.0f) {
      _1673 = _mainPosition.y + 1.5f;
      _1701 = mad((_viewProj[2].w), _mainPosition.z, mad((_viewProj[1].w), _1673, ((_viewProj[0].w) * _mainPosition.x))) + (_viewProj[3].w);
      _1706 = (((mad((_viewProj[2].x), _mainPosition.z, mad((_viewProj[1].x), _1673, ((_viewProj[0].x) * _mainPosition.x))) + (_viewProj[3].x)) / _1701) * 0.5f) + 0.5f;
      _1707 = 0.5f - (((mad((_viewProj[2].y), _mainPosition.z, mad((_viewProj[1].y), _1673, ((_viewProj[0].y) * _mainPosition.x))) + (_viewProj[3].y)) / _1701) * 0.5f);
      _1708 = WaveReadLaneFirst(_materialIndex);
      _1716 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_1708 < (uint)170000), _1708, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._noiseTex);
      _1717 = TEXCOORD.x - _1706;
      _1723 = (_bufferSizeAndInvSize.y / _bufferSizeAndInvSize.x) * (TEXCOORD.y - _1707);
      _1724 = _1717 * 1.100000023841858f;
      _1725 = _1723 * 1.100000023841858f;
      _1726 = dot(float2(_1706, _1707), float2(0.25f, 0.25f));
      _1730 = sqrt((_1725 * _1725) + (_1724 * _1724));
      _1733 = (pow(_1730, 3.0f));
      _1735 = atan(_1725 / _1724);
      _1738 = (_1724 < 0.0f);
      _1739 = (_1724 == 0.0f);
      _1740 = (_1725 >= 0.0f);
      _1741 = (_1725 < 0.0f);
      _1750 = select((_1739 && _1740), 15.707963943481445f, select((_1739 && _1741), -15.707963943481445f, (select((_1738 && _1741), (_1735 + -3.1415927410125732f), select((_1738 && _1740), (_1735 + 3.1415927410125732f), _1735)) * 10.0f)));
      _1751 = _1733 * 5.0f;
      _1752 = _1726 * 0.00795774720609188f;
      _1753 = _1726 * 4.774648189544678f;
      _1760 = frac(abs(_1752));
      _1761 = frac(abs(_1753));
      _1765 = select((_1753 >= (-0.0f - _1753)), _1761, (-0.0f - _1761));
      _1767 = sin(select((_1752 >= (-0.0f - _1752)), _1760, (-0.0f - _1760)) * 6.2831854820251465f);
      _1769 = 12.345600128173828f - _1767;
      _1775 = ((_1751 + 2.345599889755249f) - _1767) * 0.015625f;
      _1779 = frac(_time.x * 0.05000000074505806f);
  // [sem: expr_sat]
      _1792 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1716 < (uint)65000), _1716, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1769 + _1750) * 0.015625f) - _1779), (_1775 - _1779))))).x) * 1.5f) * 1.2000000476837158f);
      _1793 = _1767 + 3.456700086593628f;
      _1795 = _1767 + 45.67890167236328f;
      _1802 = frac(_time.x * 0.05000000074505806f);
      _1804 = ((_1795 + _1751) * 0.015625f) - _1802;
      _1815 = (_1733 * 0.078125f) - _1802;
      _1834 = atan((-0.0f - _1725) / (-0.0f - _1724));
      _1837 = (_1724 > -0.0f);
      _1838 = (_1724 == -0.0f);
      _1839 = (_1725 <= -0.0f);
      _1840 = (_1725 > -0.0f);
      _1849 = select((_1838 && _1839), 15.707963943481445f, select((_1838 && _1840), -15.707963943481445f, (select((_1837 && _1840), (_1834 + -3.1415927410125732f), select((_1837 && _1839), (_1834 + 3.1415927410125732f), _1834)) * 10.0f)));
  // [sem: expr_sat]
      _1860 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1716 < (uint)65000), _1716, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1849 + _1769) * 0.015625f) - _1802), (_1775 - _1802))))).x) * 1.5f) * 1.2000000476837158f);
      _1909 = sqrt((_1723 * _1723) + (_1717 * _1717));
      _1912 = (pow(_1909, 3.0f));
      _1914 = atan(_1723 / _1717);
      _1917 = (_1717 < 0.0f);
      _1918 = (_1717 == 0.0f);
      _1919 = (_1723 >= 0.0f);
      _1920 = (_1723 < 0.0f);
      _1929 = select((_1918 && _1919), 15.707963943481445f, select((_1918 && _1920), -15.707963943481445f, (select((_1917 && _1920), (_1914 + -3.1415927410125732f), select((_1917 && _1919), (_1914 + 3.1415927410125732f), _1914)) * 10.0f)));
      _1930 = _1912 * 5.0f;
      _1932 = 2.345599889755249f - _1767;
      _1937 = ((_1932 + _1930) * 0.015625f) - _1802;
  // [sem: expr_sat]
      _1944 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1716 < (uint)65000), _1716, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1929 + _1769) * 0.015625f) - _1802), _1937)))).x) * 1.5f) * 1.2000000476837158f);
      _1950 = ((_1795 + _1930) * 0.015625f) - _1802;
      _1961 = (_1912 * 0.078125f) - _1802;
      _1980 = atan((-0.0f - _1723) / (-0.0f - _1717));
      _1983 = (_1717 > -0.0f);
      _1984 = (_1717 == -0.0f);
      _1985 = (_1723 <= -0.0f);
      _1986 = (_1723 > -0.0f);
      _1995 = select((_1984 && _1985), 15.707963943481445f, select((_1984 && _1986), -15.707963943481445f, (select((_1983 && _1986), (_1980 + -3.1415927410125732f), select((_1983 && _1985), (_1980 + 3.1415927410125732f), _1980)) * 10.0f)));
  // [sem: expr_sat]
      _2005 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1716 < (uint)65000), _1716, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1995 + _1769) * 0.015625f) - _1802), _1937)))).x) * 1.5f) * 1.2000000476837158f);
      _2051 = _1717 * 0.8999999761581421f;
      _2052 = _1723 * 0.8999999761581421f;
      _2056 = sqrt((_2052 * _2052) + (_2051 * _2051));
      _2059 = (pow(_2056, 3.0f));
      _2061 = atan(_2052 / _2051);
      _2064 = (_2051 < 0.0f);
      _2065 = (_2051 == 0.0f);
      _2066 = (_2052 >= 0.0f);
      _2067 = (_2052 < 0.0f);
      _2076 = select((_2065 && _2066), 15.707963943481445f, select((_2065 && _2067), -15.707963943481445f, (select((_2064 && _2067), (_2061 + -3.1415927410125732f), select((_2064 && _2066), (_2061 + 3.1415927410125732f), _2061)) * 10.0f)));
      _2077 = _2059 * 5.0f;
      _2083 = ((_1932 + _2077) * 0.015625f) - _1802;
  // [sem: expr_sat]
      _2090 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1716 < (uint)65000), _1716, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2076 + _1769) * 0.015625f) - _1802), _2083)))).x) * 1.5f) * 1.2000000476837158f);
      _2096 = ((_1795 + _2077) * 0.015625f) - _1802;
      _2107 = (_2059 * 0.078125f) - _1802;
      _2126 = atan((-0.0f - _2052) / (-0.0f - _2051));
      _2129 = (_2051 > -0.0f);
      _2130 = (_2051 == -0.0f);
      _2131 = (_2052 <= -0.0f);
      _2132 = (_2052 > -0.0f);
      _2141 = select((_2130 && _2131), 15.707963943481445f, select((_2130 && _2132), -15.707963943481445f, (select((_2129 && _2132), (_2126 + -3.1415927410125732f), select((_2129 && _2131), (_2126 + 3.1415927410125732f), _2126)) * 10.0f)));
  // [sem: expr_sat]
      _2151 = saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1716 < (uint)65000), _1716, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2141 + _1769) * 0.015625f) - _1802), _2083)))).x) * 1.5f) * 1.2000000476837158f);
      _2208 = WaveReadLaneFirst(_materialIndex);
      _2216 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_2208 < (uint)170000), _2208, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._starburstIntensity);
      _2227 = (saturate(_2216 * exp2(log2(exp2(log2(saturate(1.100000023841858f - (_1730 * 24.0f))) * 10.199999809265137f) + (exp2(log2(saturate(1.0f - (_1730 * 2.0f))) * 12.199999809265137f) * exp2(log2(max(((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1716 < (uint)65000), _1716, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1750 * 0.015625f) - _1802), _1815)))).x) * 1.5f) * 1.2000000476837158f) + _1765) * 6.2831854820251465f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1716 < (uint)65000), _1716, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1793 + _1750) * 0.015625f) - _1802), _1804)))).x) * 1.5f) * 1.2000000476837158f) - _1792)) + _1792), ((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1716 < (uint)65000), _1716, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1849 * 0.015625f) - _1802), _1815)))).x) * 1.5f) * 1.2000000476837158f) + _1765) * 6.2831854820251465f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1716 < (uint)65000), _1716, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1849 + _1793) * 0.015625f) - _1802), _1804)))).x) * 1.5f) * 1.2000000476837158f) - _1860)) + _1860))) * 3.0f))) * 1.399999976158142f)) * _30);
      _2228 = (saturate(_2216 * exp2(log2((exp2(log2(saturate(1.100000023841858f - (_1909 * 24.0f))) * 10.199999809265137f) + (exp2(log2(saturate(1.0f - (_1909 * 2.0f))) * 12.199999809265137f) * exp2(log2(max(((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1716 < (uint)65000), _1716, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1929 * 0.015625f) - _1802), _1961)))).x) * 1.5f) * 1.2000000476837158f) + _1765) * 6.2831854820251465f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1716 < (uint)65000), _1716, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1929 + _1793) * 0.015625f) - _1802), _1950)))).x) * 1.5f) * 1.2000000476837158f) - _1944)) + _1944), ((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1716 < (uint)65000), _1716, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_1995 * 0.015625f) - _1802), _1961)))).x) * 1.5f) * 1.2000000476837158f) + _1765) * 6.2831854820251465f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1716 < (uint)65000), _1716, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_1995 + _1793) * 0.015625f) - _1802), _1950)))).x) * 1.5f) * 1.2000000476837158f) - _2005)) + _2005))) * 3.0f))) * 0.6038274168968201f) * 1.399999976158142f)) * _30);
      _2229 = (saturate(_2216 * exp2(log2((exp2(log2(saturate(1.100000023841858f - (_2056 * 24.0f))) * 10.199999809265137f) + (exp2(log2(saturate(1.0f - (_2056 * 2.0f))) * 12.199999809265137f) * exp2(log2(max(((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1716 < (uint)65000), _1716, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2076 * 0.015625f) - _1802), _2107)))).x) * 1.5f) * 1.2000000476837158f) + _1765) * 6.2831854820251465f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1716 < (uint)65000), _1716, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2076 + _1793) * 0.015625f) - _1802), _2096)))).x) * 1.5f) * 1.2000000476837158f) - _2090)) + _2090), ((((sin((saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1716 < (uint)65000), _1716, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_2141 * 0.015625f) - _1802), _2107)))).x) * 1.5f) * 1.2000000476837158f) + _1765) * 6.2831854820251465f) * 0.5f) + 0.5f) * (saturate(exp2(log2(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1716 < (uint)65000), _1716, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_2141 + _1793) * 0.015625f) - _1802), _2096)))).x) * 1.5f) * 1.2000000476837158f) - _2151)) + _2151))) * 3.0f))) * 0.4479884207248688f) * 1.399999976158142f)) * _30);
    } else {
      _2227 = 0.0f;
      _2228 = 0.0f;
      _2229 = 0.0f;
    }
    _2230 = TEXCOORD.x + -0.5f;
    _2231 = TEXCOORD.y + -0.5f;
    _2238 = saturate((sqrt((_2231 * _2231) + (_2230 * _2230)) + -0.009999999776482582f) * 1.0101009607315063f);  // [sem: expr_sat]
    _2243 = WaveReadLaneFirst(_materialIndex);
    _2251 = WaveReadLaneFirst(BindlessParameters_PostProcessWorldLoading[((int)((uint)(select(((uint)_2243 < (uint)170000), _2243, 0)) + 0u))].BindlessParameters_PostProcessWorldLoading._vignetteIntensity);
    _2253 = 1.0f - (((_2238 * _2238) * (3.0f - (_2238 * 2.0f))) * _2251);
    _2260 = max(0.0f, (_2253 * (_2227 + _1655)));
    _2261 = max(0.0f, (_2253 * (_2228 + _1656)));
    _2262 = max(0.0f, (_2253 * (_2229 + _1657)));
    _2263 = uint(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _2276 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _2263, 0)))).x) & 127)))) + 0.5f);
    } else {
      _2276 = 1.0f;
    }
    _2279 = (_localToneMappingParams.w > 0.0f);
    if (_2279) {
      // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
      // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
      float3 _rndx_tonemapped_color = TonemapReplacer(float3(_2260, _2261, _2262));
      _2539 = _rndx_tonemapped_color.x;
      _2540 = _rndx_tonemapped_color.y;
      _2541 = _rndx_tonemapped_color.z;
      // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
      if (_etcParams.z == 0.0f) {
        _2547 = 1.0f - abs(_etcParams.w);
        _2551 = saturate(_etcParams.w);  // [sem: expr_sat]
        _2552 = (_2547 * _2539) + _2551;
        _2553 = (_2547 * _2540) + _2551;
        _2554 = (_2547 * _2541) + _2551;
        if (_colorGradingParams.w > 0.0f) {
          _2559 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _2576 = (((max(0.0f, (1.0f - _2552)) - _2552) * _2559) + _2552);
          _2577 = (((max(0.0f, (1.0f - _2553)) - _2553) * _2559) + _2553);
          _2578 = (((max(0.0f, (1.0f - _2554)) - _2554) * _2559) + _2554);
        } else {
          _2576 = _2552;
          _2577 = _2553;
          _2578 = _2554;
        }
        _2584 = _userImageAdjust.y + 1.0f;
        _2588 = _userImageAdjust.x + 0.5f;
        _2589 = ((_2576 + -0.5f) * _2584) + _2588;
        _2590 = ((_2577 + -0.5f) * _2584) + _2588;
        _2591 = ((_2578 + -0.5f) * _2584) + _2588;
        _2621 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
        _2632 = exp2(log2(saturate(mad(_colorBlind0.z, _2591, mad(_colorBlind0.y, _2590, (_colorBlind0.x * _2589))))) * _2621);
        _2633 = exp2(log2(saturate(mad(_colorBlind1.z, _2591, mad(_colorBlind1.y, _2590, (_colorBlind1.x * _2589))))) * _2621);
        _2634 = exp2(log2(saturate(mad(_colorBlind2.z, _2591, mad(_colorBlind2.y, _2590, (_colorBlind2.x * _2589))))) * _2621);
      } else {
        _2632 = _2539;
        _2633 = _2540;
        _2634 = _2541;
      }
    } else {
      _2632 = _2260;
      _2633 = _2261;
      _2634 = _2262;
    }
    if (_etcParams.y > 1.0f) {
      _2640 = abs(_119);
      _2641 = abs(_120 + -1.0f);
      // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
      // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
      float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
      if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
        _rndx_vignette_strength *= CUSTOM_VIGNETTE;
      }
      _2645 = saturate(1.0f - (dot(float2(_2640, _2641), float2(_2640, _2641)) * _rndx_vignette_strength));  // [sem: expr_sat]
      // RenoDX: <<< [Patch: PostProcessMaterialVignette]
      _2650 = (_2645 * _2632);
      _2651 = (_2645 * _2633);
      _2652 = (_2645 * _2634);
    } else {
      _2650 = _2632;
      _2651 = _2633;
      _2652 = _2634;
    }
    if (_2279 && (_etcParams.z > 0.0f)) {
      _2682 = select((_2650 <= 0.0031308000907301903f), (_2650 * 12.920000076293945f), (((pow(_2650, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
      _2683 = select((_2651 <= 0.0031308000907301903f), (_2651 * 12.920000076293945f), (((pow(_2651, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
      _2684 = select((_2652 <= 0.0031308000907301903f), (_2652 * 12.920000076293945f), (((pow(_2652, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    } else {
      _2682 = _2650;
      _2683 = _2651;
      _2684 = _2652;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _2689 = (float)((uint)_2263);
      if (!(_2689 < _viewDir.w)) {
        if (!(_2689 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
          _2698 = _2682;
          _2699 = _2683;
          _2700 = _2684;
        } else {
          _2698 = 0.0f;
          _2699 = 0.0f;
          _2700 = 0.0f;
        }
      } else {
        _2698 = 0.0f;
        _2699 = 0.0f;
        _2700 = 0.0f;
      }
    } else {
      _2698 = _2682;
      _2699 = _2683;
      _2700 = _2684;
    }
    // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
    // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      float3 _rndx_final_color = FinalizeSDR(float3(_2698, _2699, _2700), _sunDirection.y, _moonDirection.y);
      _2698 = _rndx_final_color.x;
      _2699 = _rndx_final_color.y;
      _2700 = _rndx_final_color.z;
    }
    // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
    SV_Target.x = _2698;
    SV_Target.y = _2699;
    SV_Target.z = _2700;
    SV_Target.w = _2276;
    break;
  }
  return SV_Target;
}
