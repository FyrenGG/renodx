struct PostProcessAbyssEnterGlid_CDStruct {
  float _startYPos;
  float _endYPos;
  float _cubeScale;
  float _cameraSpeed;
  float _cameraSinIntensity;
  float3 _screenFadeColor;
  float _screenFadeRatio;
  float3 _fogColor;
  float3 _ambientColor;
  float3 _globalColor;
  float3 _lightColor;
  float3 _centerGlowColor;
  float _centerGlowRadius;
  float _stardustIntensity;
  float _particleIntensity;
  float _particleEmissionWidth;
  float _anamorphicIntensity;
  float _anamorphicWidth;
  float _largeHalo;
  float _largeHaloIntensity;
  float _middleHaloIntensity;
  float _blubIntensity;
  float _streakGlowIntensity;
  float _centerpoint;
  float _tunnelTotal;
  float _cameraFov;
  float _cubeDistance;
  uint _screenWarpTex;
  float _screenWarpRatio;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

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
  uint _renderPassHousingHover : packoffset(c029.z);
  uint _renderPassHousingSelected : packoffset(c029.w);
  uint _characterMeshEffectType : packoffset(c030.x);
};

struct BindlessParameters_PostProcessAbyssEnterGlid_CD {
  PostProcessAbyssEnterGlid_CDStruct BindlessParameters_PostProcessAbyssEnterGlid_CD;
};

typedef BindlessParameters_PostProcessAbyssEnterGlid_CD BindlessParameters_PostProcessAbyssEnterGlid_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssEnterGlid_CD_t> BindlessParameters_PostProcessAbyssEnterGlid_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _25;
  float _33;
  int _34;
  float _42;
  float _48;
  float _49;
  int _57;
  int _65;
  int _66;
  float _74;
  float _80;
  float _83;
  float _119;
  float _120;
  float _121;
  float _122;
  float _124;
  float _125;
  float _126;
  float _127;
  float _130;
  float _134;
  float _135;
  float _136;
  float _137;
  float _138;
  float _139;
  float _140;
  float _141;
  float _142;
  float _158;
  float _159;
  float _160;
  float _165;
  float _171;
  float _174;
  float _177;
  float _178;
  float _179;
  float _180;
  float _181;
  float _182;
  float _183;
  float _184;
  float _185;
  float _186;
  float _187;
  float _188;
  float _189;
  int _190;
  float _285;
  float _286;
  float _287;
  float _288;
  float _289;
  float _290;
  float _291;
  float _322;
  float _323;
  float _324;
  float _367;
  float _409;
  float _410;
  int _411;
  float _416;
  float _417;
  float _418;
  float _419;
  float _420;
  float _421;
  int _422;
  float _725;
  float _784;
  float _785;
  int _786;
  float _791;
  float _792;
  float _793;
  float _794;
  float _795;
  float _796;
  int _797;
  bool _922;
  float _1023;
  float _1024;
  float _1025;
  float _1026;
  float _1027;
  float _1147;
  float _1208;
  float _1209;
  float _1210;
  bool _1785;
  float _1801;
  float _1814;
  float _1828;
  float _2031;
  float _2032;
  float _2033;
  float _2126;
  float _2127;
  float _2128;
  float _2182;
  float _2183;
  float _2184;
  float _2201;
  float _2202;
  float _2203;
  float _2233;
  float _2234;
  float _2235;
  float _2249;
  float _2250;
  float _2251;
  float _200;
  float _201;
  float _202;
  float _205;
  float _225;
  float _227;
  float _229;
  float _230;
  float _234;
  float _235;
  float _236;
  float _255;
  float _260;
  float _263;
  float _268;
  float _270;
  float _271;
  float _272;
  float _273;
  float _274;
  float _279;
  float _280;
  float _281;
  float _282;
  float _305;
  float _307;
  float _309;
  float _313;
  float _314;
  float _315;
  float _316;
  float _317;
  float _318;
  int _319;
  int _325;
  float _333;
  int _334;
  float _342;
  int _343;
  float _351;
  float _354;
  float _356;
  bool _357;
  float _368;
  float _369;
  float _370;
  float _371;
  float _382;
  float _383;
  float _392;
  bool _393;
  float _395;
  float _423;
  float _424;
  float _431;
  float _432;
  float _433;
  float _437;
  float _443;
  float _447;
  float _449;
  float _452;
  float _454;
  float _456;
  float _458;
  float _459;
  float _460;
  float _462;
  float _467;
  float _470;
  float _471;
  float _472;
  float _479;
  float _482;
  float _483;
  float _484;
  float _485;
  float _486;
  float _487;
  float _488;
  float _492;
  float _493;
  float _494;
  float _498;
  float _499;
  float _500;
  float _505;
  float _507;
  float _540;
  float _542;
  float _543;
  float _544;
  float _545;
  float _546;
  float _548;
  float _549;
  float _551;
  float _553;
  float _555;
  float _556;
  float _557;
  float _558;
  float _560;
  float _563;
  float _565;
  float _568;
  float _572;
  float _588;
  float _590;
  float _592;
  float _596;
  float _597;
  float _598;
  float _599;
  float _600;
  float _601;
  int _602;
  float _608;
  float _609;
  float _610;
  int _611;
  float _621;
  float _622;
  float _623;
  float _625;
  float _631;
  int _632;
  float _642;
  float _643;
  float _644;
  float _669;
  float _673;
  float _674;
  float _675;
  float _677;
  float _678;
  float _679;
  float _680;
  float _686;
  float _687;
  float _694;
  float _695;
  float _696;
  float _698;
  float _713;
  float _714;
  float _715;
  float _726;
  float _727;
  float _728;
  float _729;
  float _730;
  float _731;
  float _732;
  float _733;
  float _749;
  float _750;
  float _751;
  float _770;
  float _798;
  float _799;
  float _806;
  float _807;
  float _808;
  float _812;
  float _818;
  float _822;
  float _824;
  float _827;
  float _829;
  float _831;
  float _833;
  float _834;
  float _835;
  float _837;
  float _842;
  float _846;
  float _847;
  float _858;
  float _859;
  float _860;
  float _861;
  float _862;
  float _863;
  float _867;
  float _868;
  float _869;
  float _880;
  float _882;
  float _886;
  float _902;
  float _904;
  float _906;
  float _910;
  float _911;
  float _912;
  float _913;
  float _914;
  float _915;
  int _916;
  float _923;
  int _924;
  float _934;
  float _935;
  float _936;
  float _961;
  float _963;
  float _969;
  float _971;
  float _972;
  float _980;
  float _991;
  float _995;
  float _1000;
  float _1005;
  int _1028;
  float _1038;
  float _1039;
  float _1040;
  float _1068;
  float _1078;
  float _1079;
  float _1080;
  int _1081;
  float _1091;
  float _1092;
  float _1093;
  int _1122;
  float _1130;
  float _1131;
  float _1132;
  float _1133;
  float _1134;
  float _1135;
  float _1140;
  float _1152;
  float _1153;
  float _1154;
  float _1155;
  float _1156;
  float _1158;
  float _1160;
  float _1163;
  float _1165;
  float _1166;
  float _1171;
  float _1172;
  float _1185;
  float _1186;
  float _1189;
  float _1191;
  float _1192;
  float _1194;
  float _1198;
  float _1200;
  int _1214;
  float _1222;
  int _1235;
  float _1243;
  int _1244;
  float _1252;
  float _1260;
  float _1261;
  float _1262;
  float _1263;
  float _1267;
  float _1279;
  float _1282;
  float _1283;
  float _1284;
  float _1285;
  float _1286;
  float _1287;
  float _1288;
  float _1289;
  float _1290;
  float _1294;
  float _1300;
  float _1301;
  float _1302;
  float _1311;
  float _1312;
  float _1313;
  float _1317;
  float _1339;
  float _1351;
  int _1352;
  float _1360;
  float _1362;
  float _1366;
  float _1372;
  float _1376;
  float _1384;
  float _1387;
  float _1390;
  float _1392;
  float _1393;
  float _1394;
  float _1402;
  float _1408;
  float _1412;
  float _1420;
  float _1423;
  float _1426;
  float _1428;
  float _1429;
  float _1430;
  float _1438;
  float _1444;
  float _1448;
  float _1456;
  float _1459;
  float _1463;
  float _1464;
  float _1467;
  float _1471;
  float _1475;
  float _1478;
  float _1492;
  float _1497;
  float _1508;
  float _1512;
  float _1518;
  float _1522;
  float _1523;
  float _1524;
  float _1528;
  float _1531;
  float _1539;
  float _1543;
  bool _1546;
  bool _1547;
  bool _1548;
  bool _1549;
  float _1564;
  bool _1567;
  bool _1568;
  float _1585;
  int _1590;
  float _1598;
  int _1611;
  float _1619;
  float _1622;
  int _1623;
  float _1631;
  int _1632;
  float _1640;
  int _1644;
  float _1652;
  int _1653;
  float _1661;
  float _1662;
  float _1665;
  float _1671;
  float _1676;
  float _1686;
  float _1688;
  float _1694;
  int _1716;
  float _1724;
  float _1734;
  int4 _1750;
  int _1755;
  int _1756;
  int _1757;
  int _1758;
  float4 _1787;
  float _1794;
  float _1795;
  float _1796;
  float _1797;
  float _1808;
  float _1809;
  float _1810;
  uint _1815;
  bool _1831;
  float _1835;
  float _1884;
  float _1885;
  float _1886;
  float _1888;
  float _1895;
  float _1896;
  float _1897;
  float _1916;
  float _1917;
  float _1918;
  float _1919;
  float _1920;
  float _1921;
  float _1922;
  float _1923;
  float _1924;
  float _1970;
  float _1971;
  float _1972;
  float _1973;
  float _1974;
  float _1975;
  float _1976;
  float _1993;
  float _1994;
  float _1995;
  float _1996;
  float _2002;
  float _2005;
  float _2012;
  float _2013;
  float _2014;
  float _2043;
  float _2068;
  float _2069;
  float _2070;
  float _2089;
  float _2090;
  float _2091;
  float _2097;
  float _2101;
  float _2102;
  float _2103;
  float _2104;
  float _2109;
  float _2134;
  float _2138;
  float _2139;
  float _2140;
  float _2141;
  float _2171;
  float _2191;
  float _2192;
  float _2196;
  float _2240;
  int __loop_jump_target = -1;
  _25 = WaveReadLaneFirst(_materialIndex);
  _33 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_25 < (uint)170000), _25, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._startYPos);
  _34 = WaveReadLaneFirst(_materialIndex);
  _42 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_34 < (uint)170000), _34, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._endYPos);
  _48 = saturate((_viewPos.y - _42) / (_33 - _42));  // [sem: expr_sat]
  _49 = 1.0f - _48;
  _57 = WaveReadLaneFirst(_materialIndex);
  _65 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_57 < (uint)170000), _57, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._screenWarpTex);
  _66 = WaveReadLaneFirst(_materialIndex);
  _74 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_66 < (uint)170000), _66, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._cameraSinIntensity);
  _80 = (TEXCOORD.x * 2.0f) + -1.0f;
  _83 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
  _119 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[3].z)) + mad((_invViewProjRelative[3].y), _83, ((_invViewProjRelative[3].x) * _80));
  _120 = ((mad((_invViewProjRelative[0].y), _83, ((_invViewProjRelative[0].x) * _80)) + (_invViewProjRelative[0].z)) + (_invViewProjRelative[0].w)) / _119;
  _121 = (((_invViewProjRelative[1].w) + (_invViewProjRelative[1].z)) + mad((_invViewProjRelative[1].y), _83, ((_invViewProjRelative[1].x) * _80))) / _119;
  _122 = (((_invViewProjRelative[2].w) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[2].y), _83, ((_invViewProjRelative[2].x) * _80))) / _119;
  _124 = rsqrt(dot(float3(_120, _121, _122), float3(_120, _121, _122)));  // [sem: invLength]
  _125 = _124 * _120;
  _126 = _124 * _121;
  _127 = _124 * _122;
  _130 = sin(_time.x * 0.1f) + 3.0f;
  _134 = (_130 * _125) + _125;
  _135 = (_130 * _126) + _126;
  _136 = (_130 * _127) + _127;
  _137 = floor(_viewPos.x);
  _138 = floor(_viewPos.y);
  _139 = floor(_viewPos.z);
  _140 = 1.0f / _125;
  _141 = 1.0f / _126;
  _142 = 1.0f / _127;
  _158 = (float)((int)((int)((int)(uint)((int)(_125 > 0.0f))) - (int)((int)(uint)((int)(_125 < 0.0f)))));
  _159 = (float)((int)((int)((int)(uint)((int)(_126 > 0.0f))) - (int)((int)(uint)((int)(_126 < 0.0f)))));
  _160 = (float)((int)((int)((int)(uint)((int)(_127 > 0.0f))) - (int)((int)(uint)((int)(_127 < 0.0f)))));
  _165 = _137 + (0.5f - _viewPos.x);
  _171 = _139 + (0.5f - _viewPos.z);
  _174 = ((_138 + (0.5f - _viewPos.y)) + (_159 * 0.5f)) * _141;
  _177 = _137;
  _178 = _138;
  _179 = _139;
  _180 = (((_158 * 0.5f) + _165) * _140);
  _181 = _174;
  _182 = (((_160 * 0.5f) + _171) * _142);
  _183 = 0.0f;
  _184 = 0.0f;
  _185 = 0.0f;
  _186 = 0.0f;
  _187 = 0.0f;
  _188 = 0.0f;
  _189 = 0.0f;
  _190 = 0;
  while(true) {
    _285 = _183;
    _286 = _184;
    _287 = _185;
    _288 = _186;
    _289 = _187;
    _290 = _188;
    _291 = _189;
    _200 = frac(sin(dot(float3(_177, _178, _179), float3(127.1f, 311.7f, 74.7f))) * 43758.547f);
    _201 = frac(sin(dot(float3(_177, _178, _179), float3(269.5f, 183.3f, 246.1f))) * 43758.547f);
    _202 = frac(sin(dot(float3(_177, _178, _179), float3(113.5f, 271.9f, 124.6f))) * 43758.547f);
    _205 = _time.x * _200;
    _225 = (_177 - _viewPos.x) + min(max(((cos(_205 + _200) * 0.1f) + _200), 0.005f), 0.995f);
    _227 = (_178 - _viewPos.y) + min(max(((cos(_205 + _201) * 0.1f) + _201), 0.005f), 0.995f);
    _229 = (_179 - _viewPos.z) + min(max(((cos(_205 + _202) * 0.1f) + _202), 0.005f), 0.995f);
    _230 = dot(float3(_225, _227, _229), float3(_125, _126, _127));
    _234 = _225 - (_230 * _125);
    _235 = _227 - (_230 * _126);
    _236 = _229 - (_230 * _127);
    bool __branch_chain_176;
    if (!((_230 > 0.0f) && (_230 < 50.0f))) {
      _285 = _183;
      _286 = _184;
      _287 = _185;
      _288 = _186;
      _289 = _187;
      _290 = _188;
      _291 = _189;
      __branch_chain_176 = true;
    } else {
      _255 = saturate((sqrt(((_234 * _234) + (_235 * _235)) + (_236 * _236)) + -0.0025f) * 400.0f);  // [sem: expr_sat]
      _260 = 1.0f - ((_255 * _255) * (3.0f - (_255 * 2.0f)));
      _263 = saturate((_230 + -5.0f) * -0.2f);  // [sem: expr_sat]
      _268 = ((_263 * _263) * (3.0f - (_263 * 2.0f))) * _260;
      _270 = _260 * (_268 / _230);
      _271 = _270 * ((_183 * 0.4f) + 0.6f);
      _272 = _270 * ((_184 * 0.4f) + 0.6f);
      _273 = _270 * ((_185 * 0.4f) + 0.6f);
      _274 = 1.0f - _189;
      _279 = (_271 * _274) + _186;
      _280 = (_272 * _274) + _187;
      _281 = (_273 * _274) + _188;
      _282 = (_268 * _274) + _189;
      if (!(_282 > 0.99f)) {
        _285 = _271;
        _286 = _272;
        _287 = _273;
        _288 = _279;
        _289 = _280;
        _290 = _281;
        _291 = _282;
        __branch_chain_176 = true;
      } else {
        _322 = _279;
        _323 = _280;
        _324 = _281;
        __branch_chain_176 = false;
      }
    }
    if (__branch_chain_176) {
      _305 = (select((_181 < _180), 0.0f, 1.0f) * _158) * select((_182 < _180), 0.0f, 1.0f);
      _307 = (select((_180 < _181), 0.0f, 1.0f) * _159) * select((_182 < _181), 0.0f, 1.0f);
      _309 = (select((_180 < _182), 0.0f, 1.0f) * _160) * select((_181 < _182), 0.0f, 1.0f);
      _313 = (_305 * _140) + _180;
      _314 = (_307 * _141) + _181;
      _315 = (_309 * _142) + _182;
      _316 = _305 + _177;
      _317 = _307 + _178;
      _318 = _309 + _179;
      _319 = (int)(_190) + (int)(1);
      if ((int)_319 < (int)5) {
        _177 = _316;
        _178 = _317;
        _179 = _318;
        _180 = _313;
        _181 = _314;
        _182 = _315;
        _183 = _285;
        _184 = _286;
        _185 = _287;
        _186 = _288;
        _187 = _289;
        _188 = _290;
        _189 = _291;
        _190 = _319;
        continue;
      } else {
        _322 = _288;
        _323 = _289;
        _324 = _290;
      }
    }
    _325 = WaveReadLaneFirst(_materialIndex);
    _333 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_325 < (uint)170000), _325, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._stardustIntensity);
    _334 = WaveReadLaneFirst(_materialIndex);
    _342 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_334 < (uint)170000), _334, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._cubeScale);
    _343 = WaveReadLaneFirst(_materialIndex);
    _351 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_343 < (uint)170000), _343, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._cubeDistance);
    _354 = (pow(_49, 2.2f));
    _356 = (_354 + 1.0f) * 5.0f;
    _357 = (_49 > 0.8f);
    if (_357) {
      _367 = ((exp2(log2(_48 * 5.0f) * 2.2f) * (_356 + -0.01f)) + 0.01f);
    } else {
      _367 = _356;
    }
    _368 = _367 * _125;
    _369 = _367 * _127;
    _370 = 1.0f / _368;
    _371 = 1.0f / _369;
    _382 = (float)((int)((int)((int)(uint)((int)(_368 > 0.0f))) - (int)((int)(uint)((int)(_368 < 0.0f)))));
    _383 = (float)((int)((int)((int)(uint)((int)(_369 > 0.0f))) - (int)((int)(uint)((int)(_369 < 0.0f)))));
    _392 = _342 * 0.01f;
    _393 = (_49 < 1.0f);
    if (_393) {
      _395 = saturate(_49);  // [sem: _49_sat]
      _409 = (max((5.0f - (_354 * 5.3f)), 0.0f) * _351);
      _410 = (((_395 * _395) * _392) * (3.0f - (_395 * 2.0f)));
      _411 = 64;
    } else {
      if (_49 > 0.9999f) {
        _409 = 0.0f;
        _410 = _392;
        _411 = 0;
      } else {
        _409 = _351;
        _410 = _392;
        _411 = 64;
      }
    }
    if (!(_411 == 0)) {
      _416 = _137;
      _417 = _138;
      _418 = _139;
      _419 = (((_382 * 0.5f) + _165) * _370);
      _420 = _174;
      _421 = (((_383 * 0.5f) + _171) * _371);
      _422 = 0;
      while(true) {
        _423 = _viewPos.x - _416;
        _424 = _viewPos.z - _418;
        if (dot(float2(_423, _424), float2(_423, _424)) > (_409 * _409)) {
          _431 = frac(_416 * 0.1031f);
          _432 = frac(_417 * 0.1031f);
          _433 = frac(_418 * 0.1031f);
          _437 = dot(float3(_431, _432, _433), float3((_432 + 19.19f), (_433 + 19.19f), (_431 + 19.19f)));
          _443 = frac(((_432 + _431) + (_437 * 2.0f)) * (_437 + _433));
          if (_443 > 0.9f) {
            _447 = (_418 + _time.x) + _443;
            _449 = (_447 * 2.0f) + _417;
            _452 = min(max((_443 * 0.5f), 0.1f), _410);
            _454 = (_viewPos.x + -0.5f) - _416;
            _456 = (_viewPos.y + -0.5f) - _417;
            _458 = (_viewPos.z + -0.5f) - _418;
            _459 = cos(_447);
            _460 = sin(_447);
            _462 = mad(_460, _456, (_459 * _458));
            _467 = mad(_460, _126, (_459 * _369));
            _470 = mad(_459, _126, (-0.0f - (_369 * _460)));
            _471 = cos(_449);
            _472 = sin(_449);
            _479 = mad(_472, _467, (_471 * _368));
            _482 = mad(_471, _467, (-0.0f - (_368 * _472)));
            _483 = 1.0f / _479;
            _484 = 1.0f / _470;
            _485 = 1.0f / _482;
            _486 = _483 * mad(_472, _462, (_471 * _454));
            _487 = _484 * mad(_459, _456, (-0.0f - (_458 * _460)));
            _488 = _485 * mad(_471, _462, (-0.0f - (_454 * _472)));
            _492 = abs(_483) * _452;
            _493 = abs(_484) * _452;
            _494 = abs(_485) * _452;
            _498 = (-0.0f - _486) - _492;
            _499 = (-0.0f - _487) - _493;
            _500 = (-0.0f - _488) - _494;
            _505 = max(max(_498, _499), _500);
            _507 = min(min((_492 - _486), (_493 - _487)), (_494 - _488));
            _540 = (select((_498 < _499), 0.0f, 1.0f) * ((float)((int)((int)((int)(uint)((int)(_479 < 0.0f))) - (int)((int)(uint)((int)(_479 > 0.0f))))))) * select((_498 < _500), 0.0f, 1.0f);
            _542 = (select((_499 < _498), 0.0f, 1.0f) * ((float)((int)((int)((int)(uint)((int)(_470 < 0.0f))) - (int)((int)(uint)((int)(_470 > 0.0f))))))) * select((_499 < _500), 0.0f, 1.0f);
            _543 = (select((_500 < _498), 0.0f, 1.0f) * ((float)((int)((int)((int)(uint)((int)(_482 < 0.0f))) - (int)((int)(uint)((int)(_482 > 0.0f))))))) * select((_500 < _499), 0.0f, 1.0f);
            _544 = -0.0f - _447;
            _545 = cos(_544);
            _546 = sin(_544);
            _548 = mad(_546, _542, (_543 * _545));
            _549 = -0.0f - _546;
            _551 = mad(_545, _542, (_543 * _549));
            _553 = mad(_546, _551, (_548 * _545));
            _555 = mad(_545, _551, (_548 * _549));
            _556 = -0.0f - _449;
            _557 = cos(_556);
            _558 = sin(_556);
            _560 = mad(_558, _553, (_557 * _540));
            _563 = mad(_557, _553, (-0.0f - (_540 * _558)));
            _565 = mad(_558, _563, (_560 * _557));
            _568 = mad(_557, _563, (-0.0f - (_558 * _560)));
            _572 = select(((_505 > _507) || (_507 < 0.0f)), 0.0f, _505);
            if (_572 > 0.0f) {
              _608 = (_572 * _125) + _viewPos.x;
              _609 = (_572 * _126) + _viewPos.y;
              _610 = (_572 * _127) + _viewPos.z;
              _611 = WaveReadLaneFirst(_materialIndex);
              _621 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_611 < (uint)170000), _611, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._lightColor.x);
              _622 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_611 < (uint)170000), _611, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._lightColor.y);
              _623 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_611 < (uint)170000), _611, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._lightColor.z);
              _625 = rsqrt(dot(float3(_621, _622, _623), float3(_621, _622, _623)));  // [sem: invLength]
              _631 = max(dot(float3((_625 * _621), (_625 * _622), (_625 * _623)), float3(_565, _555, _568)), 0.05f) * 0.01f;
              _632 = WaveReadLaneFirst(_materialIndex);
              _642 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_632 < (uint)170000), _632, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._ambientColor.x);
              _643 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_632 < (uint)170000), _632, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._ambientColor.y);
              _644 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_632 < (uint)170000), _632, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._ambientColor.z);
              _669 = max(0.0f, _555);
              _673 = _134 - _608;
              _674 = _135 - _609;
              _675 = _136 - _610;
              _677 = rsqrt(dot(float3(_673, _674, _675), float3(_673, _674, _675)));  // [sem: invLength]
              _678 = _677 * _673;
              _679 = _677 * _674;
              _680 = _677 * _675;
              _686 = sqrt(((_673 * _673) + (_674 * _674)) + (_675 * _675));
              _687 = _686 * _686;
              _694 = -0.0f - _678;
              _695 = -0.0f - _679;
              _696 = -0.0f - _680;
              _698 = dot(float3(_694, _695, _696), float3(_565, _555, _568)) * 2.0f;
              _713 = _608 - (_125 * 0.01f);
              _714 = _609 - (_126 * 0.01f);
              _715 = _610 - (_127 * 0.01f);
              if (_357) {
                _725 = ((exp2(log2(_48 * 5.0f) * 2.2f) * (_356 + -0.01f)) + 0.01f);
              } else {
                _725 = _356;
              }
              _726 = _725 * _678;
              _727 = _725 * _680;
              _728 = floor(_713);
              _729 = floor(_714);
              _730 = floor(_715);
              _731 = 1.0f / _726;
              _732 = 1.0f / _679;
              _733 = 1.0f / _727;
              _749 = (float)((int)((int)((int)(uint)((int)(_726 > 0.0f))) - (int)((int)(uint)((int)(_726 < 0.0f)))));
              _750 = (float)((int)((int)((int)(uint)((int)(_679 > 0.0f))) - (int)((int)(uint)((int)(_679 < 0.0f)))));
              _751 = (float)((int)((int)((int)(uint)((int)(_727 > 0.0f))) - (int)((int)(uint)((int)(_727 < 0.0f)))));
              if (_393) {
                _770 = saturate(_49);  // [sem: _49_sat]
                _784 = (max((5.0f - (_354 * 5.3f)), 0.0f) * _351);
                _785 = (((_770 * _770) * _392) * (3.0f - (_770 * 2.0f)));
                _786 = 64;
              } else {
                if (_49 > 0.9999f) {
                  _784 = 0.0f;
                  _785 = _392;
                  _786 = 0;
                } else {
                  _784 = _351;
                  _785 = _392;
                  _786 = 64;
                }
              }
              if (!(_786 == 0)) {
                _791 = _728;
                _792 = _729;
                _793 = _730;
                _794 = ((((0.5f - _713) + _728) + (_749 * 0.5f)) * _731);
                _795 = (_732 * (((0.5f - _714) + (_750 * 0.5f)) + _729));
                _796 = ((((0.5f - _715) + _730) + (_751 * 0.5f)) * _733);
                _797 = 0;
                while(true) {
                  _798 = _713 - _791;
                  _799 = _715 - _793;
                  bool __branch_chain_790;
                  if (!(dot(float2(_798, _799), float2(_798, _799)) > (_784 * _784))) {
                    __branch_chain_790 = true;
                  } else {
                    _806 = frac(_791 * 0.1031f);
                    _807 = frac(_792 * 0.1031f);
                    _808 = frac(_793 * 0.1031f);
                    _812 = dot(float3(_806, _807, _808), float3((_807 + 19.19f), (_808 + 19.19f), (_806 + 19.19f)));
                    _818 = frac(((_807 + _806) + (_812 * 2.0f)) * (_812 + _808));
                    if (!(_818 > 0.9f)) {
                      __branch_chain_790 = true;
                    } else {
                      _822 = (_793 + _time.x) + _818;
                      _824 = (_822 * 2.0f) + _792;
                      _827 = min(max((_818 * 0.5f), 0.1f), _785);
                      _829 = (_713 + -0.5f) - _791;
                      _831 = (_714 + -0.5f) - _792;
                      _833 = (_715 + -0.5f) - _793;
                      _834 = cos(_822);
                      _835 = sin(_822);
                      _837 = mad(_835, _831, (_834 * _833));
                      _842 = mad(_835, _679, (_834 * _727));
                      _846 = cos(_824);
                      _847 = sin(_824);
                      _858 = 1.0f / mad(_847, _842, (_846 * _726));
                      _859 = 1.0f / mad(_834, _679, (-0.0f - (_727 * _835)));
                      _860 = 1.0f / mad(_846, _842, (-0.0f - (_726 * _847)));
                      _861 = _858 * mad(_847, _837, (_846 * _829));
                      _862 = _859 * mad(_834, _831, (-0.0f - (_833 * _835)));
                      _863 = _860 * mad(_846, _837, (-0.0f - (_829 * _847)));
                      _867 = abs(_858) * _827;
                      _868 = abs(_859) * _827;
                      _869 = abs(_860) * _827;
                      _880 = max(max(((-0.0f - _861) - _867), ((-0.0f - _862) - _868)), ((-0.0f - _863) - _869));
                      _882 = min(min((_867 - _861), (_868 - _862)), (_869 - _863));
                      _886 = select(((_880 > _882) || (_882 < 0.0f)), 0.0f, _880);
                      if (!(_886 > 0.0f)) {
                        __branch_chain_790 = true;
                      } else {
                        __branch_chain_790 = false;
                      }
                    }
                  }
                  if (__branch_chain_790) {
                    _902 = (select((_795 < _794), 0.0f, 1.0f) * _749) * select((_796 < _794), 0.0f, 1.0f);
                    _904 = (select((_794 < _795), 0.0f, 1.0f) * _750) * select((_796 < _795), 0.0f, 1.0f);
                    _906 = (select((_794 < _796), 0.0f, 1.0f) * _751) * select((_795 < _796), 0.0f, 1.0f);
                    _910 = (_902 * _731) + _794;
                    _911 = (_904 * _732) + _795;
                    _912 = (_906 * _733) + _796;
                    _913 = _902 + _791;
                    _914 = _904 + _792;
                    _915 = _906 + _793;
                    _916 = (int)(_797) + (int)(1);
                    if ((uint)_916 < (uint)_786) {
                      _791 = _913;
                      _792 = _914;
                      _793 = _915;
                      _794 = _910;
                      _795 = _911;
                      _796 = _912;
                      _797 = _916;
                      continue;
                    } else {
                      _922 = false;
                    }
                  } else {
                    _922 = (_886 < _686);
                  }
                  break;
                }
              } else {
                _922 = false;
              }
              _923 = select(_922, 0.0f, 1.0f);
              _924 = WaveReadLaneFirst(_materialIndex);
              _934 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_924 < (uint)170000), _924, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._globalColor.x);
              _935 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_924 < (uint)170000), _924, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._globalColor.y);
              _936 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_924 < (uint)170000), _924, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._globalColor.z);
              _961 = dot(float3(_678, _679, _680), float3(_565, _555, _568));
              _963 = max(_961, 0.05f) * (1.0f / ((_687 * 0.05f) + 1.0f));
              _969 = 1.0f / ((_687 * 0.1f) + 1.0f);
              _971 = max(_961, 0.01f) * _969;
              _972 = _971 * 0.07323897f;
              _980 = _969 * exp2(log2(max(dot(float3((_694 - (_698 * _565)), (_695 - (_698 * _555)), (_696 - (_698 * _568))), float3((-0.0f - _125), (-0.0f - _126), (-0.0f - _127))), 0.0f)) * 10.0f);
              _991 = (((_time.x * 50.0f) * exp2(log2(2.0f - _48) * 0.45454544f)) + _609) * 0.02f;
              _995 = frac(abs(_991));
              _1000 = select(((select((_991 >= (-0.0f - _991)), _995, (-0.0f - _995)) * 50.0f) > 2.0f), 0.0f, 1.0f);
              _1005 = (_572 * 0.1f) + 1.0f;
              _1023 = _572;
              _1024 = (((((_669 * select((_642 < 0.04045f), (_642 * 0.07739938f), exp2(log2((_642 + 0.055f) * 0.94786733f) * 2.4f))) + _631) + (_980 * 0.13286835f)) + ((_972 + (_963 * select((_934 < 0.04045f), (_934 * 0.07739938f), exp2(log2((_934 + 0.055f) * 0.94786733f) * 2.4f)))) * _923)) + ((_1000 * 0.05f) / _1005));
              _1025 = (((((_669 * select((_643 < 0.04045f), (_643 * 0.07739938f), exp2(log2((_643 + 0.055f) * 0.94786733f) * 2.4f))) + _631) + (_980 * 0.21404113f)) + ((_972 + (_963 * select((_935 < 0.04045f), (_935 * 0.07739938f), exp2(log2((_935 + 0.055f) * 0.94786733f) * 2.4f)))) * _923)) + ((_1000 * 0.1f) / _1005));
              _1026 = (((((select((_644 < 0.04045f), (_644 * 0.07739938f), exp2(log2((_644 + 0.055f) * 0.94786733f) * 2.4f)) * _669) + _631) + (_980 * 0.44798842f)) + (((_971 * 0.21404113f) + (_963 * select((_936 < 0.04045f), (_936 * 0.07739938f), exp2(log2((_936 + 0.055f) * 0.94786733f) * 2.4f)))) * _923)) + ((_1000 * 0.2f) / _1005));
              _1027 = _572;
            } else {
              _588 = (select((_420 < _419), 0.0f, 1.0f) * _382) * select((_421 < _419), 0.0f, 1.0f);
              _590 = (select((_419 < _420), 0.0f, 1.0f) * _159) * select((_421 < _420), 0.0f, 1.0f);
              _592 = (select((_419 < _421), 0.0f, 1.0f) * _383) * select((_420 < _421), 0.0f, 1.0f);
              _596 = (_588 * _370) + _419;
              _597 = (_590 * _141) + _420;
              _598 = (_592 * _371) + _421;
              _599 = _588 + _416;
              _600 = _590 + _417;
              _601 = _592 + _418;
              _602 = (int)(_422) + (int)(1);
              if ((uint)_602 < (uint)_411) {
                _416 = _599;
                _417 = _600;
                _418 = _601;
                _419 = _596;
                _420 = _597;
                _421 = _598;
                _422 = _602;
                continue;
              } else {
                _1023 = -1.0f;
                _1024 = 0.0f;
                _1025 = 0.0f;
                _1026 = 0.0f;
                _1027 = 50.0f;
              }
            }
          } else {
            _588 = (select((_420 < _419), 0.0f, 1.0f) * _382) * select((_421 < _419), 0.0f, 1.0f);
            _590 = (select((_419 < _420), 0.0f, 1.0f) * _159) * select((_421 < _420), 0.0f, 1.0f);
            _592 = (select((_419 < _421), 0.0f, 1.0f) * _383) * select((_420 < _421), 0.0f, 1.0f);
            _596 = (_588 * _370) + _419;
            _597 = (_590 * _141) + _420;
            _598 = (_592 * _371) + _421;
            _599 = _588 + _416;
            _600 = _590 + _417;
            _601 = _592 + _418;
            _602 = (int)(_422) + (int)(1);
            if ((uint)_602 < (uint)_411) {
              _416 = _599;
              _417 = _600;
              _418 = _601;
              _419 = _596;
              _420 = _597;
              _421 = _598;
              _422 = _602;
              continue;
            } else {
              _1023 = -1.0f;
              _1024 = 0.0f;
              _1025 = 0.0f;
              _1026 = 0.0f;
              _1027 = 50.0f;
            }
          }
        } else {
          _588 = (select((_420 < _419), 0.0f, 1.0f) * _382) * select((_421 < _419), 0.0f, 1.0f);
          _590 = (select((_419 < _420), 0.0f, 1.0f) * _159) * select((_421 < _420), 0.0f, 1.0f);
          _592 = (select((_419 < _421), 0.0f, 1.0f) * _383) * select((_420 < _421), 0.0f, 1.0f);
          _596 = (_588 * _370) + _419;
          _597 = (_590 * _141) + _420;
          _598 = (_592 * _371) + _421;
          _599 = _588 + _416;
          _600 = _590 + _417;
          _601 = _592 + _418;
          _602 = (int)(_422) + (int)(1);
          if ((uint)_602 < (uint)_411) {
            _416 = _599;
            _417 = _600;
            _418 = _601;
            _419 = _596;
            _420 = _597;
            _421 = _598;
            _422 = _602;
            continue;
          } else {
            _1023 = -1.0f;
            _1024 = 0.0f;
            _1025 = 0.0f;
            _1026 = 0.0f;
            _1027 = 50.0f;
          }
        }
        break;
      }
    } else {
      _1023 = -1.0f;
      _1024 = 0.0f;
      _1025 = 0.0f;
      _1026 = 0.0f;
      _1027 = 50.0f;
    }
    _1028 = WaveReadLaneFirst(_materialIndex);
    _1038 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1028 < (uint)170000), _1028, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._fogColor.x);
    _1039 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1028 < (uint)170000), _1028, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._fogColor.y);
    _1040 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1028 < (uint)170000), _1028, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._fogColor.z);
    _1068 = exp2(log2(_1027 * 0.02f) * 6.0f);
    _1078 = ((_1068 * (select((_1038 < 0.04045f), (_1038 * 0.07739938f), exp2(log2((_1038 + 0.055f) * 0.94786733f) * 2.4f)) - _1024)) + _1024) * 1.2f;
    _1079 = ((_1068 * (select((_1039 < 0.04045f), (_1039 * 0.07739938f), exp2(log2((_1039 + 0.055f) * 0.94786733f) * 2.4f)) - _1025)) + _1025) * 1.2f;
    _1080 = ((_1068 * (select((_1040 < 0.04045f), (_1040 * 0.07739938f), exp2(log2((_1040 + 0.055f) * 0.94786733f) * 2.4f)) - _1026)) + _1026) * 1.2f;
    _1081 = WaveReadLaneFirst(_materialIndex);
    _1091 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1081 < (uint)170000), _1081, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._centerGlowColor.x);
    _1092 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1081 < (uint)170000), _1081, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._centerGlowColor.y);
    _1093 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1081 < (uint)170000), _1081, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._centerGlowColor.z);
    _1122 = WaveReadLaneFirst(_materialIndex);
    _1130 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1122 < (uint)170000), _1122, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._centerGlowRadius);
    _1131 = _1130 * ((sin(_time.x * 5.0f) * 0.050000012f) + 0.95f);
    _1132 = _viewPos.x - _134;
    _1133 = _viewPos.y - _135;
    _1134 = _viewPos.z - _136;
    _1135 = dot(float3(_1132, _1133, _1134), float3(_125, _126, _127));
    _1140 = (_1135 * _1135) - (dot(float3(_1132, _1133, _1134), float3(_1132, _1133, _1134)) - (_1131 * _1131));
    if (!(_1140 < 0.0f)) {
      _1147 = ((-0.0f - _1135) - sqrt(_1140));
    } else {
      _1147 = 0.0f;
    }
    if ((_1147 > 0.0f) && (_1147 < _1027)) {
      _1152 = 50.0f / _1131;
      _1153 = _1132 / _1131;
      _1154 = _1133 / _1131;
      _1155 = _1134 / _1131;
      _1156 = dot(float3(_125, _126, _127), float3(_1153, _1154, _1155));
      _1158 = dot(float3(_1153, _1154, _1155), float3(_1153, _1154, _1155)) + -1.0f;
      _1160 = (_1156 * _1156) - _1158;
      if (!(_1160 < 0.0f)) {
        _1163 = sqrt(_1160);
        _1165 = (-0.0f - _1156) - _1163;
        _1166 = _1163 - _1156;
        if (!((_1166 < 0.0f) || (_1165 > _1152))) {
          _1171 = max(_1165, 0.0f);
          _1172 = min(_1166, _1152);
          _1185 = ((((-0.0f - _1158) - (_1172 * _1156)) + ((_1172 * _1172) * -0.33333334f)) * _1172) + (((((_1171 * 0.33333334f) + _1156) * _1171) + _1158) * _1171);
          _1186 = _1185 * 0.75f;
          if (_1186 > 0.0f) {
            _1189 = _1186 * _1186;
            _1191 = _1186 * (_1189 * _1189);
            _1192 = _1191 * _1191;
            _1194 = (_1192 * _1192) * 5.0f;
            _1198 = _1186 * _1185;
            _1200 = _1198 * 0.22500001f;
            _1208 = (((_1194 * select((_1091 < 0.04045f), (_1091 * 0.07739938f), exp2(log2((_1091 + 0.055f) * 0.94786733f) * 2.4f))) + _1078) + (_1198 * 0.075f));
            _1209 = (((_1194 * select((_1092 < 0.04045f), (_1092 * 0.07739938f), exp2(log2((_1092 + 0.055f) * 0.94786733f) * 2.4f))) + _1079) + _1200);
            _1210 = (((_1194 * select((_1093 < 0.04045f), (_1093 * 0.07739938f), exp2(log2((_1093 + 0.055f) * 0.94786733f) * 2.4f))) + _1080) + _1200);
          } else {
            _1208 = _1078;
            _1209 = _1079;
            _1210 = _1080;
          }
        } else {
          _1208 = _1078;
          _1209 = _1079;
          _1210 = _1080;
        }
      } else {
        _1208 = _1078;
        _1209 = _1079;
        _1210 = _1080;
      }
    } else {
      _1208 = _1078;
      _1209 = _1079;
      _1210 = _1080;
    }
    _1214 = WaveReadLaneFirst(_materialIndex);
    _1222 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1214 < (uint)170000), _1214, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._tunnelTotal);
    _1235 = WaveReadLaneFirst(_materialIndex);
    _1243 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1235 < (uint)170000), _1235, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._particleEmissionWidth);
    _1244 = WaveReadLaneFirst(_materialIndex);
    _1252 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1244 < (uint)170000), _1244, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._particleIntensity);
    _1260 = ((_srcTargetSizeAndInv.x * TEXCOORD.x) - (_srcTargetSizeAndInv.x * 0.5f)) / _srcTargetSizeAndInv.y;
    _1261 = ((_srcTargetSizeAndInv.y * TEXCOORD.y) - (_srcTargetSizeAndInv.y * 0.5f)) / _srcTargetSizeAndInv.y;
    _1262 = _1260 * 1.5f;
    _1263 = _1261 * 1.5f;
    _1267 = sqrt((_1263 * _1263) + (_1262 * _1262));
    _1279 = frac((sin((_1261 * 0.15f) + (_1260 * 25.5f)) * 10000.0f) * (abs(sin((_1261 * 19.5f) + _1262)) + 0.1f));
    _1282 = _time.x * 0.5f;
    _1283 = (_1260 * 22.5f) + _1282;
    _1284 = (_1261 * 22.5f) + _1282;
    _1285 = floor(_1283);
    _1286 = floor(_1284);
    _1287 = frac(_1283);
    _1288 = frac(_1284);
    _1289 = _1285 * 17.0f;
    _1290 = _1286 * 0.1f;
    _1294 = _1286 * 13.0f;
    _1300 = frac((sin(_1290 + _1289) * 10000.0f) * (abs(sin(_1294 + _1285)) + 0.1f));
    _1301 = _1285 + 1.0f;
    _1302 = _1301 * 17.0f;
    _1311 = frac((sin(_1302 + _1290) * 10000.0f) * (abs(sin(_1294 + _1301)) + 0.1f));
    _1312 = _1286 + 1.0f;
    _1313 = _1312 * 0.1f;
    _1317 = _1312 * 13.0f;
    _1339 = (_1287 * _1287) * (3.0f - (_1287 * 2.0f));
    // [sem: blended]
    _1351 = (lerp(_1300, _1311, _1339)) + (((_1288 * _1288) * (3.0f - (_1288 * 2.0f))) * (((frac((sin(_1313 + _1302) * 10000.0f) * (abs(sin(_1317 + _1301)) + 0.1f)) - _1311) * _1339) + ((frac((sin(_1313 + _1289) * 10000.0f) * (abs(sin(_1317 + _1285)) + 0.1f)) - _1300) * (1.0f - _1339))));
    _1352 = WaveReadLaneFirst(_materialIndex);
    _1360 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1352 < (uint)170000), _1352, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._anamorphicWidth);
    _1362 = (_1360 * 0.9f) + 0.11f;
    _1366 = saturate((_1267 - _1362) / (-0.0f - _1362));  // [sem: expr_sat]
    _1372 = saturate((cos(_1262) * 0.4f) + -1.0f);  // [sem: expr_sat]
    _1376 = (_1372 * _1372) * (3.0f - (_1372 * 2.0f));
    _1384 = saturate(((abs(_1376 + _1263) + -0.04f) + abs(_1263 - _1376)) * -25.0f);  // [sem: expr_sat]
    _1387 = _1366 * _1384;
    _1390 = ((3.0f - (_1384 * 2.0f)) * (3.0f - (_1366 * 2.0f))) * (_1387 * _1387);
    _1392 = (_1360 * 0.5f) + 0.12f;
    _1393 = _1262 + -0.08f;
    _1394 = _1263 + 0.005f;
    _1402 = saturate((sqrt((_1394 * _1394) + (_1393 * _1393)) - _1392) / (-0.0f - _1392));  // [sem: expr_sat]
    _1408 = saturate((cos(_1393) * 0.4f) + -1.0f);  // [sem: expr_sat]
    _1412 = (_1408 * _1408) * (3.0f - (_1408 * 2.0f));
    _1420 = saturate(((abs(_1412 + _1394) + -0.018f) + abs(_1394 - _1412)) * -55.555557f);  // [sem: expr_sat]
    _1423 = _1402 * _1420;
    _1426 = ((3.0f - (_1420 * 2.0f)) * (3.0f - (_1402 * 2.0f))) * (_1423 * _1423);
    _1428 = (_1360 * 0.7f) + 0.13f;
    _1429 = _1262 + 0.09f;
    _1430 = _1263 + -0.005f;
    _1438 = saturate((sqrt((_1430 * _1430) + (_1429 * _1429)) - _1428) / (-0.0f - _1428));  // [sem: expr_sat]
    _1444 = saturate((cos(_1429) * 0.4f) + -1.0f);  // [sem: expr_sat]
    _1448 = (_1444 * _1444) * (3.0f - (_1444 * 2.0f));
    _1456 = saturate(((abs(_1448 + _1430) + -0.0143f) + abs(_1430 - _1448)) * -69.93007f);  // [sem: expr_sat]
    _1459 = _1438 * _1456;
    _1463 = _1260 * 2.25f;
    _1464 = _1261 * 2.25f;
    _1467 = (_1351 * 0.08f) + 0.15f;
    _1471 = saturate((abs(_1464) - _1467) / (-0.0f - _1467));  // [sem: expr_sat]
    _1475 = sqrt((_1464 * _1464) + (_1463 * _1463));
    _1478 = saturate((_1475 + -0.8f) * -0.7692308f);  // [sem: expr_sat]
    _1492 = max(0.9f, frac(frac((sin(_time.x * 8.55f) * 10000.0f) * (abs(sin(_time.x * 7.0f)) + 0.1f)))) * 0.08f;
    _1497 = saturate(((_1475 + -0.1f) - _1492) / (-0.120000005f - _1492));  // [sem: expr_sat]
    _1508 = saturate(((abs(_1463) * abs(_1261 * 1.6875f)) + -0.07f) * -5.882353f);  // [sem: expr_sat]
    _1512 = (_1471 * _1478) * _1508;
    _1518 = (((3.0f - (_1478 * 2.0f)) * (15.0f - (_1471 * 10.0f))) * (3.0f - (_1508 * 2.0f))) * (_1512 * _1512);
    _1522 = _1351 * -0.015f;
    _1523 = _1522 + (_1260 * 2.85f);
    _1524 = _1522 + (_1261 * 2.85f);
    _1528 = sqrt((_1523 * _1523) + (_1524 * _1524));
    _1531 = saturate((_1528 + -1.0f) * -1.4285715f);  // [sem: expr_sat]
    _1539 = saturate(((((_1531 * _1531) * _1528) * (3.0f - (_1531 * 2.0f))) + -0.1f) * 2.5f);  // [sem: expr_sat]
    _1543 = atan(_1263 / _1262);
    _1546 = (_1262 < 0.0f);
    _1547 = (_1262 == 0.0f);
    _1548 = (_1263 >= 0.0f);
    _1549 = (_1263 < 0.0f);
    _1564 = atan(_1263 / (-0.0f - _1262));
    _1567 = (_1262 > -0.0f);
    _1568 = (_1262 == -0.0f);
    _1585 = saturate(-0.0f - (_1267 + -1.0f));  // [sem: expr_sat]
    _1590 = WaveReadLaneFirst(_materialIndex);
    _1598 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1590 < (uint)170000), _1590, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._blubIntensity);
    _1611 = WaveReadLaneFirst(_materialIndex);
    _1619 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1611 < (uint)170000), _1611, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._middleHaloIntensity);
    _1622 = (((lerp(_1279, 1.0f, 0.97f)) * 0.9f) * exp2(log2(((abs(sin(select((_1568 && _1548), 1.3566371f, select((_1568 && _1549), -1.1566371f, ((select((_1567 && _1549), (_1564 + -3.1415927f), select((_1567 && _1548), (_1564 + 3.1415927f), _1564)) * 0.8f) + 0.1f))))) + abs(sin(select((_1547 && _1548), 1.2995574f, select((_1547 && _1549), -0.8995574f, ((select((_1546 && _1549), (_1543 + -3.1415927f), select((_1546 && _1548), (_1543 + 3.1415927f), _1543)) * 0.7f) + 0.2f)))))) * 0.5f) * (((_1585 * _1585) * (3.0f - (_1585 * 2.0f))) - ((((_1539 * _1539) * 0.4f) * (3.0f - (_1539 * 2.0f))) * _1598))) * 2.5f)) * _1619;
    _1623 = WaveReadLaneFirst(_materialIndex);
    _1631 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1623 < (uint)170000), _1623, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._largeHalo);
    _1632 = WaveReadLaneFirst(_materialIndex);
    _1640 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1632 < (uint)170000), _1632, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._largeHaloIntensity);
    _1644 = WaveReadLaneFirst(_materialIndex);
    _1652 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1644 < (uint)170000), _1644, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._centerpoint);
    _1653 = WaveReadLaneFirst(_materialIndex);
    _1661 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1653 < (uint)170000), _1653, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._streakGlowIntensity);
    _1662 = (_1518 * _1518) * _1661;
    _1665 = ((_1497 * _1497) * (3.0f - (_1497 * 2.0f))) * _1652;
    _1671 = exp2(log2(_1665 * 1.2f) * 5.0f);
    _1676 = exp2(log2(_1665 * 1.1f) * 24.0f);
    _1686 = _1671 + (_1665 * 0.2f);
    _1688 = (_1662 * 0.049657132f) + (_1390 * 0.0100228265f);
    _1694 = (((3.0f - (_1456 * 2.0f)) * (3.0f - (_1438 * 2.0f))) * (_1459 * _1459)) + _1426;
    _1716 = WaveReadLaneFirst(_materialIndex);
    _1724 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_1716 < (uint)170000), _1716, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._anamorphicIntensity);
    _1734 = 1.0f / max(0.001f, _exposure0.x);
    // [sem: _3__36__0__0__g_CustomRenderPassValue_gather]
    _1750 = __3__36__0__0__g_CustomRenderPassValue.GatherRed(__0__4__0__0__g_staticPointClamp, float2((TEXCOORD.x - (_customRenderPassSizeInvSize.z * 0.5f)), (TEXCOORD.y - (_customRenderPassSizeInvSize.w * 0.5f))));
    _1755 = _1750.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_gather_derived]
    _1756 = _1750.y & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_gather_derived]
    _1757 = _1750.z & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_gather_derived]
    _1758 = _1750.w & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_gather_derived]
    if ((_1755 == _renderPassSelfPlayer) || (_1755 == _renderPassTest)) {
      if ((_1756 == _renderPassSelfPlayer) || (_1756 == _renderPassTest)) {
        if ((_1757 == _renderPassSelfPlayer) || (_1757 == _renderPassTest)) {
          if (!(_1758 == _renderPassSelfPlayer)) {
            _1785 = (_1758 == _renderPassTest);
          } else {
            _1785 = true;
          }
        } else {
          _1785 = false;
        }
      } else {
        _1785 = false;
      }
    } else {
      _1785 = false;
    }
    _1787 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _1794 = 1.0f - (saturate(_354 * 7.0f) * 0.995f);
    _1795 = _1794 * _1787.x;
    _1796 = _1794 * _1787.y;
    _1797 = _1794 * _1787.z;
    if (!_1785) {
      _1801 = saturate(_1023);  // [sem: _1023_sat]
    } else {
      _1801 = 0.0f;  // [sem: _1023_sat]
    }
    _1808 = (_1801 * (max(0.0f, (_1734 * (((_1222 * saturate(_1208)) + ((_322 * 0.5f) * _333)) + (_1724 * exp2(log2(((((_1688 + (_1426 * 0.033104755f)) + (((_1622 * 0.16689524f) + 0.033104755f) * _1622)) + _1676) + (_1686 * 0.07323897f)) * 2.0f)))))) - _1795)) + _1795;
    _1809 = (_1801 * (max(0.0f, (_1734 * (((_1222 * saturate(_1209)) + ((_323 * 0.7f) * _333)) + (_1724 * exp2(log2(((((_1688 + (_1694 * 0.033104755f)) + ((0.07323897f - (_1622 * 0.023238968f)) * _1622)) + _1676) + (_1686 * 0.21404113f)) * 2.0f)))))) - _1796)) + _1796;
    _1810 = (_1801 * (max(0.0f, (_1734 * (((_1222 * saturate(_1210)) + ((_324 * 0.9f) * _333)) + (_1724 * exp2(log2((((((((_1694 * 0.07323897f) + (_1390 * 0.033104755f)) + ((0.13286835f - (_1622 * 0.08286835f)) * _1622)) + (_1665 * 0.06370936f)) + (_1662 * 0.10985845f)) + (_1671 * 0.6038274f)) + _1676) * 2.0f)))))) - _1797)) + _1797;
    if (!_1785) {
      _1814 = saturate(_1023);  // [sem: _1023_sat]
    } else {
      _1814 = 1.0f;  // [sem: _1023_sat]
    }
    _1815 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _1828 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1815, 0)))).x) & 127)))) + 0.5f);
    } else {
      _1828 = _1814;
    }
    _1831 = (_localToneMappingParams.w > 0.0f);
    if (_1831) {
      _1835 = _userImageAdjust.z * _exposure0.x;
      _1884 = exp2(log2(max(0.0f, (((_1835 * max(0.0f, (((_1808 * 1.70505f) - (_1809 * 0.62179f)) - (_1810 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
      _1885 = exp2(log2(max(0.0f, (((max(0.0f, (((_1809 * 1.1408f) - (_1808 * 0.13026f)) - (_1810 * 0.01055f))) * _1835) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
      _1886 = exp2(log2(max(0.0f, (((max(0.0f, (((_1808 * -0.024f) - (_1809 * 0.12897f)) + (_1810 * 1.15297f))) * _1835) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
      _1888 = dot(float3(_1884, _1885, _1886), float3(0.212671f, 0.71516f, 0.072169f));
      _1895 = ((_1884 - _1888) * _powerParams.w) + _1888;
      _1896 = ((_1885 - _1888) * _powerParams.w) + _1888;
      _1897 = ((_1886 - _1888) * _powerParams.w) + _1888;
      _1916 = min(max(log2(mad(_1897, 0.079223745f, mad(_1896, 0.0784336f, (_1895 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
      _1917 = min(max(log2(mad(_1897, 0.07916613f, mad(_1896, 0.87846863f, (_1895 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
      _1918 = min(max(log2(mad(_1897, 0.879143f, mad(_1896, 0.0784336f, (_1895 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
      _1919 = _1916 * 0.060606062f;
      _1920 = _1917 * 0.060606062f;
      _1921 = _1918 * 0.060606062f;
      _1922 = _1919 * _1919;
      _1923 = _1920 * _1920;
      _1924 = _1921 * _1921;
      _1970 = min(0.0f, (-0.0f - (((_1916 * 0.0072181816f) + ((_1922 * 0.4298f) + (((_1922 * _1922) * ((31.96f - (_1916 * 2.4327273f)) + (_1922 * 15.5f))) - ((_1916 * 0.41624245f) * _1922)))) + -0.00232f)));
      _1971 = min(0.0f, (-0.0f - (((_1917 * 0.0072181816f) + ((_1923 * 0.4298f) + (((_1923 * _1923) * ((31.96f - (_1917 * 2.4327273f)) + (_1923 * 15.5f))) - ((_1917 * 0.41624245f) * _1923)))) + -0.00232f)));
      _1972 = min(0.0f, (-0.0f - (((_1918 * 0.0072181816f) + ((_1924 * 0.4298f) + (((_1924 * _1924) * ((31.96f - (_1918 * 2.4327273f)) + (_1924 * 15.5f))) - ((_1918 * 0.41624245f) * _1924)))) + -0.00232f)));
      _1973 = -0.0f - _1970;
      _1974 = -0.0f - _1971;
      _1975 = -0.0f - _1972;
      _1976 = dot(float3(_1973, _1974, _1975), float3(0.2126f, 0.7152f, 0.0722f));
      if (_nightToneParm == 1) {
        _1993 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
        _1994 = -0.79999995f / _1993;
        _1995 = -1.2f / _1993;
        _1996 = 0.20000005f / _1993;
        _2002 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
        _2005 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
        _2012 = (_1994 + 1.4f) + (_2005 * (-0.39999998f - _1994));
        _2013 = (_1995 + 1.6f) + (_2005 * (-0.6f - _1995));
        _2014 = (_1996 + 0.9f) + (_2005 * (0.5f - _1996));
        _2031 = (lerp(_2013, 1.2f, _2002));  // [sem: blended]
        _2032 = (lerp(_2012, 1.0f, _2002));  // [sem: blended]
        _2033 = (lerp(_2014, 1.4f, _2002));  // [sem: blended]
      } else {
        _2031 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
        _2032 = 1.0f;  // [sem: blended]
        _2033 = 1.4f;  // [sem: blended]
      }
      _2043 = 1.0f - _2031;
      _2068 = ((exp2(log2(((saturate((_1970 * _1970) * _1973) * _2043) + _2031) * _1973) * _2032) - _1976) * _2033) + _1976;
      _2069 = ((exp2(log2(((saturate((_1971 * _1971) * _1974) * _2043) + _2031) * _1974) * _2032) - _1976) * _2033) + _1976;
      _2070 = ((exp2(log2(((saturate((_1972 * _1972) * _1975) * _2043) + _2031) * _1975) * _2032) - _1976) * _2033) + _1976;
      _2089 = saturate(exp2(log2(mad(_2070, -0.09902974f, mad(_2069, -0.09802088f, (_2068 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
      _2090 = saturate(exp2(log2(mad(_2070, -0.098961174f, mad(_2069, 1.1519032f, (_2068 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
      _2091 = saturate(exp2(log2(mad(_2070, 1.1510737f, mad(_2069, -0.09804345f, (_2068 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
      if (_etcParams.z == 0.0f) {
        _2097 = 1.0f - abs(_etcParams.w);
        _2101 = saturate(_etcParams.w);  // [sem: expr_sat]
        _2102 = (_2097 * _2089) + _2101;
        _2103 = (_2097 * _2090) + _2101;
        _2104 = (_2097 * _2091) + _2101;
        if (_colorGradingParams.w > 0.0f) {
          _2109 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _2126 = (((max(0.0f, (1.0f - _2102)) - _2102) * _2109) + _2102);
          _2127 = (((max(0.0f, (1.0f - _2103)) - _2103) * _2109) + _2103);
          _2128 = (((max(0.0f, (1.0f - _2104)) - _2104) * _2109) + _2104);
        } else {
          _2126 = _2102;
          _2127 = _2103;
          _2128 = _2104;
        }
        _2134 = _userImageAdjust.y + 1.0f;
        _2138 = _userImageAdjust.x + 0.5f;
        _2139 = ((_2126 + -0.5f) * _2134) + _2138;
        _2140 = ((_2127 + -0.5f) * _2134) + _2138;
        _2141 = ((_2128 + -0.5f) * _2134) + _2138;
        _2171 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _2182 = exp2(log2(saturate(mad(_colorBlind0.z, _2141, mad(_colorBlind0.y, _2140, (_colorBlind0.x * _2139))))) * _2171);
        _2183 = exp2(log2(saturate(mad(_colorBlind1.z, _2141, mad(_colorBlind1.y, _2140, (_colorBlind1.x * _2139))))) * _2171);
        _2184 = exp2(log2(saturate(mad(_colorBlind2.z, _2141, mad(_colorBlind2.y, _2140, (_colorBlind2.x * _2139))))) * _2171);
      } else {
        _2182 = _2089;
        _2183 = _2090;
        _2184 = _2091;
      }
    } else {
      _2182 = _1808;
      _2183 = _1809;
      _2184 = _1810;
    }
    if (_etcParams.y > 1.0f) {
      _2191 = abs(_80);
      _2192 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      _2196 = saturate(1.0f - (dot(float2(_2191, _2192), float2(_2191, _2192)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
      _2201 = (_2196 * _2182);
      _2202 = (_2196 * _2183);
      _2203 = (_2196 * _2184);
    } else {
      _2201 = _2182;
      _2202 = _2183;
      _2203 = _2184;
    }
    if (_1831 && (_etcParams.z > 0.0f)) {
      _2233 = select((_2201 <= 0.0031308f), (_2201 * 12.92f), (((pow(_2201, 0.41666666f)) * 1.055f) + -0.055f));
      _2234 = select((_2202 <= 0.0031308f), (_2202 * 12.92f), (((pow(_2202, 0.41666666f)) * 1.055f) + -0.055f));
      _2235 = select((_2203 <= 0.0031308f), (_2203 * 12.92f), (((pow(_2203, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _2233 = _2201;
      _2234 = _2202;
      _2235 = _2203;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _2240 = (float)((uint)((uint)(_1815)));
      if (!(_2240 < _viewDir.w)) {
        if (!(_2240 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
          _2249 = _2233;
          _2250 = _2234;
          _2251 = _2235;
        } else {
          _2249 = 0.0f;
          _2250 = 0.0f;
          _2251 = 0.0f;
        }
      } else {
        _2249 = 0.0f;
        _2250 = 0.0f;
        _2251 = 0.0f;
      }
    } else {
      _2249 = _2233;
      _2250 = _2234;
      _2251 = _2235;
    }
    SV_Target.x = _2249;
    SV_Target.y = _2250;
    SV_Target.z = _2251;
    SV_Target.w = _1828;
    break;
  }
  return SV_Target;
}
