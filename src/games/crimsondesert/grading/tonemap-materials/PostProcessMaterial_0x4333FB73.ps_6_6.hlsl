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

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_specularAO : register(t68, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t36, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t69, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t71, space36);

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
  float _347;
  int _348;
  float _408;
  float _583;
  float _584;
  float _585;
  bool _617;
  float _618;
  float _619;
  float _620;
  float _786;
  float _787;
  float _788;
  float _789;
  int _790;
  float _795;
  float _796;
  float _797;
  float _798;
  int _799;
  float _804;
  float _805;
  float _806;
  float _807;
  int _808;
  float _1145;
  float _1146;
  float _1147;
  float _1148;
  float _1176;
  float _1177;
  float _1178;
  float _1239;
  float _1302;
  float _1303;
  float _1304;
  float _1305;
  float _1306;
  float _1307;
  float _1308;
  bool _1369;
  float _1386;
  float _1387;
  float _1388;
  float _1398;
  float _1594;
  float _1595;
  float _1596;
  float _1730;
  float _1731;
  float _1732;
  float _1733;
  float _1734;
  float _1871;
  float _2122;
  float _2123;
  float _2124;
  float _2172;
  float _2173;
  float _2174;
  float _2231;
  float _2436;
  float _2437;
  float _2438;
  float _2531;
  float _2532;
  float _2533;
  float _2587;
  float _2588;
  float _2589;
  float _2608;
  float _2609;
  float _2610;
  float _2640;
  float _2641;
  float _2642;
  float _2656;
  float _2657;
  float _2658;
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
  float4 _171;
  float _184;
  float _185;
  float _186;
  float _188;
  float _189;
  float _190;
  float _191;
  float _193;
  float _195;
  float _196;
  float _232;
  float _233;
  float _234;
  float _235;
  float _271;
  float _272;
  float _273;
  float _274;
  float _276;
  float _277;
  float _278;
  float _279;
  float4 _282;
  int _287;
  float _295;
  int _301;
  float _309;
  int _321;
  float _329;
  float _339;
  float _343;
  float _344;
  float _345;
  float _355;
  float _359;
  float _364;
  float _368;
  float _373;
  float _377;
  float _385;
  float _386;
  float _387;
  float _388;
  float _389;
  float _390;
  float _400;
  float _404;
  int _405;
  float _412;
  float _413;
  float _414;
  float _415;
  float _419;
  float _424;
  float _428;
  float _433;
  float _437;
  float _445;
  float _446;
  float _447;
  float _448;
  float _449;
  float _450;
  float _451;
  float _452;
  float _453;
  float _454;
  float _457;
  float _460;
  float _462;
  float _466;
  float _472;
  float _473;
  float _481;
  float _485;
  float _491;
  float _492;
  float _501;
  float _505;
  float _511;
  float _512;
  float _520;
  float _522;
  float _524;
  float _526;
  float _534;
  float _535;
  float _536;
  float _538;
  float _542;
  float _545;
  float _549;
  float _552;
  float _553;
  float _556;
  float _557;
  float _558;
  float _559;
  float _560;
  int _567;
  float _575;
  float _593;
  int _594;
  float _604;
  float _605;
  float _606;
  float _623;
  float _624;
  float _625;
  float _626;
  float _627;
  float _628;
  float _629;
  int _634;
  int _642;
  float4 _649;
  int _655;
  float _663;
  float _664;
  uint2 _670;
  int _687;
  int _688;
  float _696;
  int _697;
  float _705;
  float _708;
  float _711;
  float _712;
  float _713;
  float _714;
  float _715;
  float _716;
  float _717;
  float _718;
  float _719;
  float _720;
  float _723;
  float _726;
  float _729;
  float _732;
  float _735;
  float _738;
  float _745;
  float _746;
  float _747;
  float _754;
  float _755;
  float _756;
  float _759;
  float _762;
  float _765;
  int _770;
  float _778;
  float _779;
  float _780;
  float _781;
  float _782;
  float _783;
  float _784;
  int _792;
  int _801;
  float _809;
  float _810;
  float _811;
  float _815;
  float _816;
  float _817;
  float _832;
  float _839;
  float _840;
  float _841;
  float _852;
  bool _853;
  float _854;
  float _855;
  float _856;
  float _857;
  int _858;
  float _868;
  float _869;
  float _870;
  float _898;
  float _903;
  float _904;
  float _909;
  float _910;
  float _911;
  float _920;
  float _922;
  float _923;
  float _925;
  float _927;
  float _928;
  float _929;
  float _935;
  float _936;
  float _948;
  float _949;
  float _950;
  float _951;
  float _952;
  float4 _957;
  float4 _961;
  int _968;
  float _976;
  float _978;
  float _985;
  float _986;
  float _987;
  float _990;
  float _991;
  float4 _996;
  float4 _1000;
  int _1007;
  float _1015;
  float _1017;
  float _1024;
  float _1025;
  float _1026;
  float _1029;
  float _1030;
  float4 _1035;
  float4 _1039;
  int _1046;
  float _1054;
  float _1056;
  float _1063;
  float _1064;
  float _1065;
  float _1068;
  float _1069;
  float4 _1074;
  float4 _1078;
  int _1085;
  float _1093;
  float _1095;
  float _1102;
  float _1103;
  float _1104;
  float _1107;
  float _1108;
  float4 _1113;
  float4 _1117;
  int _1124;
  float _1132;
  float _1134;
  float4 _1151;
  int _1155;
  float _1163;
  float _1165;
  int _1179;
  float _1187;
  int _1188;
  float _1196;
  int _1216;
  float _1224;
  int _1229;
  float _1237;
  int _1240;
  float _1248;
  float _1252;
  int _1277;
  int _1285;
  float4 _1292;
  float _1295;
  float _1297;
  float _1300;
  float _1313;
  float _1314;
  float _1315;
  float _1316;
  float _1325;
  float _1326;
  float _1328;
  float4 _1336;
  float _1345;
  float _1346;
  float _1347;
  float _1348;
  float _1355;
  float _1375;
  float _1378;
  float _1402;
  float _1403;
  float _1404;
  float _1419;
  float _1455;
  float _1456;
  float _1458;
  int _1467;
  int _1475;
  float4 _1482;
  float _1485;
  float _1486;
  float _1501;
  int _1504;
  int _1512;
  float4 _1519;
  float _1530;
  float _1534;
  float _1537;
  float _1540;
  float _1549;
  float _1558;
  float _1560;
  float _1562;
  float _1580;
  int _1597;
  float _1605;
  float _1612;
  float _1613;
  float _1614;
  float _1622;
  float _1623;
  int _1636;
  int _1658;
  int _1666;
  float4 _1673;
  float _1678;
  float _1679;
  float _1694;
  float _1695;
  float _1696;
  float _1702;
  float _1705;
  float _1711;
  float _1726;
  uint _1755;
  uint _1756;
  uint4 _1758;
  float4 _1761;
  float _1779;
  float _1780;
  float _1781;
  float _1783;
  float _1784;
  float _1785;
  float _1786;
  float _1789;
  float _1790;
  float _1793;
  float _1794;
  float _1798;
  float _1800;
  float _1801;
  float _1802;
  float _1803;
  float _1805;
  float _1808;
  float _1809;
  float _1810;
  float _1811;
  float _1820;
  float _1824;
  float _1828;
  float _1830;
  float _1842;
  float _1843;
  float _1846;
  float _1851;
  float _1885;
  float _1897;
  float _1898;
  float _1899;
  float _1913;
  float _1914;
  float _1915;
  float _1926;
  float4 _1933;
  float _1938;
  float _1939;
  float _1941;
  float _1946;
  float _1950;
  float _1951;
  float _1952;
  float _1960;
  float _1969;
  float _1978;
  float _1981;
  float _1988;
  float _1995;
  float _1999;
  float _2003;
  bool _2009;
  int _2013;
  float _2027;
  float _2028;
  float _2029;
  float _2057;
  float _2058;
  float _2062;
  float _2072;
  float _2073;
  float _2074;
  float _2086;
  float _2092;
  float _2094;
  float _2101;
  float _2102;
  float _2110;
  float _2115;
  float4 _2131;
  float _2136;
  float _2147;
  float _2148;
  float _2149;
  int _2159;
  float _2167;
  float _2175;
  float _2176;
  float _2183;
  int _2188;
  float _2196;
  int _2198;
  float _2206;
  float _2208;
  float _2215;
  float _2216;
  float _2217;
  uint _2218;
  bool _2234;
  float _2240;
  float _2289;
  float _2290;
  float _2291;
  float _2293;
  float _2300;
  float _2301;
  float _2302;
  float _2321;
  float _2322;
  float _2323;
  float _2324;
  float _2325;
  float _2326;
  float _2327;
  float _2328;
  float _2329;
  float _2375;
  float _2376;
  float _2377;
  float _2378;
  float _2379;
  float _2380;
  float _2381;
  float _2398;
  float _2399;
  float _2400;
  float _2401;
  float _2407;
  float _2410;
  float _2417;
  float _2418;
  float _2419;
  float _2448;
  float _2473;
  float _2474;
  float _2475;
  float _2494;
  float _2495;
  float _2496;
  float _2502;
  float _2506;
  float _2507;
  float _2508;
  float _2509;
  float _2514;
  float _2539;
  float _2543;
  float _2544;
  float _2545;
  float _2546;
  float _2576;
  float _2598;
  float _2599;
  float _2603;
  float _2647;
  int __loop_jump_target = -1;
  _35 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _41 = WaveReadLaneFirst(_materialIndex);
  _49 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_41 < (uint)170000), _41, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._fishEyeMaxPower);
  bool __branch_chain_0;
  if (_49 > 0.001f) {
    __branch_chain_0 = true;
  } else {
    _52 = WaveReadLaneFirst(_materialIndex);
    _60 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_52 < (uint)170000), _52, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._fishEyeMaxPower);
    if (_60 < -0.001f) {
      __branch_chain_0 = true;
    } else {
      _144 = TEXCOORD.x;
      _145 = TEXCOORD.y;
      __branch_chain_0 = false;
    }
  }
  if (__branch_chain_0) {
    _63 = WaveReadLaneFirst(_materialIndex);
    _71 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_63 < (uint)170000), _63, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
    [branch]
    if (!(!(_71 >= 0.001f))) {
      _74 = 0.5f / _35;
      _79 = ((_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x) + -0.5f;
      _80 = ((_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x) - _74;
      _81 = dot(float2(_79, _80), float2(_79, _80));
      _82 = sqrt(_81);
      _83 = WaveReadLaneFirst(_materialIndex);
      _91 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_83 < (uint)170000), _83, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._fishEyeMaxPower);
      _92 = WaveReadLaneFirst(_materialIndex);
      _100 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_92 < (uint)170000), _92, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
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
  _171 = __3__36__0__0__g_gbufferNormal.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _144) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _145) + -0.5f))), 0));
  _184 = (saturate(_171.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _185 = (saturate(_171.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _186 = (saturate(_171.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _188 = rsqrt(dot(float3(_184, _185, _186), float3(_184, _185, _186)));  // [sem: invLength]
  _189 = _188 * _184;
  _190 = _188 * _185;
  _191 = _186 * _188;
  _193 = (_144 * 2.0f) + -1.0f;
  _195 = 1.0f - (_145 * 2.0f);
  _196 = max(1e-07f, _159.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _232 = mad((_invViewProj[3].z), _196, mad((_invViewProj[3].y), _195, ((_invViewProj[3].x) * _193))) + (_invViewProj[3].w);
  _233 = (mad((_invViewProj[0].z), _196, mad((_invViewProj[0].y), _195, ((_invViewProj[0].x) * _193))) + (_invViewProj[0].w)) / _232;
  _234 = (mad((_invViewProj[1].z), _196, mad((_invViewProj[1].y), _195, ((_invViewProj[1].x) * _193))) + (_invViewProj[1].w)) / _232;
  _235 = (mad((_invViewProj[2].z), _196, mad((_invViewProj[2].y), _195, ((_invViewProj[2].x) * _193))) + (_invViewProj[2].w)) / _232;
  _271 = mad((_invViewProjRelative[3].z), _196, mad((_invViewProjRelative[3].y), _195, ((_invViewProjRelative[3].x) * _193))) + (_invViewProjRelative[3].w);
  _272 = (mad((_invViewProjRelative[0].z), _196, mad((_invViewProjRelative[0].y), _195, ((_invViewProjRelative[0].x) * _193))) + (_invViewProjRelative[0].w)) / _271;
  _273 = (mad((_invViewProjRelative[1].z), _196, mad((_invViewProjRelative[1].y), _195, ((_invViewProjRelative[1].x) * _193))) + (_invViewProjRelative[1].w)) / _271;
  _274 = (mad((_invViewProjRelative[2].z), _196, mad((_invViewProjRelative[2].y), _195, ((_invViewProjRelative[2].x) * _193))) + (_invViewProjRelative[2].w)) / _271;
  _276 = rsqrt(dot(float3(_272, _273, _274), float3(_272, _273, _274)));  // [sem: invLength]
  _277 = _276 * _272;
  _278 = _276 * _273;
  _279 = _276 * _274;
  _282 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_144, _145));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _287 = WaveReadLaneFirst(_materialIndex);
  _295 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_287 < (uint)170000), _287, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceEffectRatio);
  if (!(!(_295 >= 0.001f))) {
    _301 = WaveReadLaneFirst(_materialIndex);
    _309 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_301 < (uint)170000), _301, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceGradientRatio);
    _321 = WaveReadLaneFirst(_materialIndex);
    _329 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_321 < (uint)170000), _321, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSpeedRatio);
    // [sem: invLength]
    _339 = rsqrt(dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_viewDir.x, _viewDir.y, _viewDir.z))) * frac((_329 * _time.x) + -0.005f);
    _343 = (frac(_viewPosPrev.x * 0.01f) + 2000.0f) + (_339 * _viewDir.x);
    _344 = (frac(_viewPosPrev.y * 0.01f) + 2000.0f) + (_339 * _viewDir.y);
    _345 = (frac(_viewPosPrev.z * 0.01f) + 2000.0f) + (_339 * _viewDir.z);
    _347 = 1.0f;
    _348 = 0;
    while(true) {
      _355 = ((_347 * _277) + _343) * 4.0f;
      _359 = frac(abs(_355));
      _364 = ((_347 * _278) + _344) * 4.0f;
      _368 = frac(abs(_364));
      _373 = ((_347 * _279) + _345) * 4.0f;
      _377 = frac(abs(_373));
      _385 = abs((select((_355 >= (-0.0f - _355)), _359, (-0.0f - _359)) * 0.25f) + -0.125f) + -0.0005f;
      _386 = abs((select((_364 >= (-0.0f - _364)), _368, (-0.0f - _368)) * 0.25f) + -0.125f) + -0.0005f;
      _387 = abs((select((_373 >= (-0.0f - _373)), _377, (-0.0f - _377)) * 0.25f) + -0.125f) + -0.0005f;
      _388 = max(_385, 0.0f);
      _389 = max(_386, 0.0f);
      _390 = max(_387, 0.0f);
      _400 = min(max(_385, max(_386, _387)), 0.0f) + sqrt(((_389 * _389) + (_388 * _388)) + (_390 * _390));
      if (!(_400 < (_347 * 0.001f))) {
        _404 = _400 + _347;
        _405 = (int)(_348) + (int)(1);
        if ((int)_405 < (int)50) {
          _347 = _404;
          _348 = _405;
          continue;
        } else {
          _408 = _404;
        }
      } else {
        _408 = _347;
      }
      _412 = (_408 * _277) + _343;
      _413 = (_408 * _278) + _344;
      _414 = (_408 * _279) + _345;
      _415 = _412 * 4.0f;
      _419 = frac(abs(_415));
      _424 = _413 * 4.0f;
      _428 = frac(abs(_424));
      _433 = _414 * 4.0f;
      _437 = frac(abs(_433));
      _445 = abs((select((_415 >= (-0.0f - _415)), _419, (-0.0f - _419)) * 0.25f) + -0.125f) + -0.0005f;
      _446 = abs((select((_424 >= (-0.0f - _424)), _428, (-0.0f - _428)) * 0.25f) + -0.125f) + -0.0005f;
      _447 = abs((select((_433 >= (-0.0f - _433)), _437, (-0.0f - _437)) * 0.25f) + -0.125f) + -0.0005f;
      _448 = max(_445, 0.0f);
      _449 = max(_446, 0.0f);
      _450 = max(_447, 0.0f);
      _451 = _448 * _448;
      _452 = _449 * _449;
      _453 = _452 + _451;
      _454 = _450 * _450;
      _457 = max(_446, _447);
      _460 = min(max(_445, _457), 0.0f) + sqrt(_453 + _454);
      _462 = (_412 + 0.001f) * 4.0f;
      _466 = frac(abs(_462));
      _472 = abs((select((_462 >= (-0.0f - _462)), _466, (-0.0f - _466)) * 0.25f) + -0.125f) + -0.0005f;
      _473 = max(_472, 0.0f);
      _481 = (_413 + 0.001f) * 4.0f;
      _485 = frac(abs(_481));
      _491 = abs((select((_481 >= (-0.0f - _481)), _485, (-0.0f - _485)) * 0.25f) + -0.125f) + -0.0005f;
      _492 = max(_491, 0.0f);
      _501 = (_414 + 0.001f) * 4.0f;
      _505 = frac(abs(_501));
      _511 = abs((select((_501 >= (-0.0f - _501)), _505, (-0.0f - _505)) * 0.25f) + -0.125f) + -0.0005f;
      _512 = max(_511, 0.0f);
      _520 = min(max(_472, _457), 0.0f) + (sqrt((_454 + _452) + (_473 * _473)) - _460);
      _522 = min(max(_445, max(_491, _447)), 0.0f) + (sqrt((_454 + _451) + (_492 * _492)) - _460);
      _524 = min(max(_445, max(_446, _511)), 0.0f) + (sqrt((_512 * _512) + _453) - _460);
      _526 = rsqrt(dot(float3(_520, _522, _524), float3(_520, _522, _524)));  // [sem: invLength]
      _534 = -0.0f - _sunDirection.x;
      _535 = -0.0f - _sunDirection.y;
      _536 = -0.0f - _sunDirection.z;
      _538 = rsqrt(dot(float3(_534, _535, _536), float3(_534, _535, _536)));  // [sem: invLength]
      _542 = dot(float3((_526 * _520), (_526 * _522), (_526 * _524)), float3((_538 * _534), (_538 * _535), (_538 * _536)));
      _545 = saturate((_408 * 0.22222224f) + -0.11111112f);  // [sem: expr_sat]
      _549 = (_545 * _545) * (3.0f - (_545 * 2.0f));
      _552 = 1.0f - (_542 - (_549 * _542));
      _553 = _552 * _552;
      _556 = ((_553 * _553) * 0.2f) + 0.1f;
      _557 = _556 * _556;
      _558 = _557 * 0.7f;
      _559 = _557 * 0.4f;
      _560 = _557 * 0.1f;
      _567 = WaveReadLaneFirst(_materialIndex);
      _575 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_567 < (uint)170000), _567, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceEffectRatio);
      _583 = saturate((_558 - (_558 * _549)) * _575);  // [sem: expr_sat]
      _584 = saturate((_559 - (_559 * _549)) * _575);  // [sem: expr_sat]
      _585 = saturate((_560 - (_560 * _549)) * _575);  // [sem: expr_sat]
      break;
    }
  } else {
    _583 = 0.0f;  // [sem: expr_sat]
    _584 = 0.0f;  // [sem: expr_sat]
    _585 = 0.0f;  // [sem: expr_sat]
  }
  if ((_159.x < 1e-07f) || (_159.x == 1.0f)) {
    _593 = exp2(log2(abs(_278)) * 0.5f);
    _594 = WaveReadLaneFirst(_materialIndex);
    _604 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_594 < (uint)170000), _594, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSkyColor.x);
    _605 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_594 < (uint)170000), _594, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSkyColor.y);
    _606 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_594 < (uint)170000), _594, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSkyColor.z);
    _617 = false;
    _618 = (lerp(_583, _604, _593));  // [sem: blended]
    _619 = (lerp(_584, _605, _593));  // [sem: blended]
    _620 = (lerp(_585, _606, _593));  // [sem: blended]
  } else {
    _617 = true;
    _618 = _583;  // [sem: blended]
    _619 = _584;  // [sem: blended]
    _620 = _585;  // [sem: blended]
  }
  _623 = max(0.001f, _exposure0.x);
  _624 = _618 / _623;
  _625 = _619 / _623;
  _626 = _620 / _623;
  _627 = 4.0f / _35;
  _628 = _627 * _144;
  _629 = _627 * _145;
  _634 = WaveReadLaneFirst(_materialIndex);
  _642 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_634 < (uint)170000), _634, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
  _649 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_642 < (uint)65000), _642, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_628, ((_time.x * 0.1f) + _629)));
  _655 = WaveReadLaneFirst(_materialIndex);
  _663 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_655 < (uint)170000), _655, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _664 = _663 * (_649.y + -0.3f);
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_670.x, _670.y);
  _687 = (((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_670.x))))))) + 0.5f) * ((_664 * 0.001f) + _144))), ((int)((((float)((int)((int)((float)((int)((int)(_670.y))))))) + 0.5f) * ((_664 * 0.02f) + _145))), 0)))).x) & 255;
  _688 = WaveReadLaneFirst(_materialIndex);
  _696 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_688 < (uint)170000), _688, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._radius);
  _697 = WaveReadLaneFirst(_materialIndex);
  _705 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_697 < (uint)170000), _697, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _708 = saturate(1.0f - _705) * _696;
  [branch]
  if (!(!(_708 >= 0.001f))) {
    _711 = ddx_coarse(_277);
    _712 = ddx_coarse(_278);
    _713 = ddx_coarse(_279);
    _714 = ddy_coarse(_277);
    _715 = ddy_coarse(_278);
    _716 = ddy_coarse(_279);
    _717 = ddx_coarse(_144);
    _718 = ddx_coarse(_145);
    _719 = ddy_coarse(_144);
    _720 = ddy_coarse(_145);
    _723 = (_715 * _191) - (_716 * _190);
    _726 = (_716 * _189) - (_714 * _191);
    _729 = (_714 * _190) - (_715 * _189);
    _732 = (_713 * _190) - (_712 * _191);
    _735 = (_711 * _191) - (_713 * _189);
    _738 = (_712 * _189) - (_711 * _190);
    _745 = (_719 * _732) + (_723 * _717);
    _746 = (_719 * _735) + (_726 * _717);
    _747 = (_719 * _738) + (_729 * _717);
    _754 = (_720 * _732) + (_723 * _718);
    _755 = (_720 * _735) + (_726 * _718);
    _756 = (_720 * _738) + (_718 * _729);
    _759 = max(dot(float3(_745, _746, _747), float3(_745, _746, _747)), dot(float3(_754, _755, _756), float3(_754, _755, _756)));
    _762 = rsqrt(select((!(_759 == 0.0f)), _759, 0.1f));  // [sem: rsqrt_val]
    _765 = _762 * _277;
    _770 = WaveReadLaneFirst(_materialIndex);
    _778 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_770 < (uint)170000), _770, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._squareSize);
    _779 = _778 * _233;
    _780 = _778 * _234;
    _781 = _778 * _235;
    _782 = floor(_779);
    _783 = floor(_780);
    _784 = floor(_781);
    _786 = 10.0f;
    _787 = 0.0f;
    _788 = 0.0f;
    _789 = 0.0f;
    _790 = -1;
    while(true) {
      _795 = _786;
      _796 = _787;
      _797 = _788;
      _798 = _789;
      _799 = -1;
      while(true) {
        _804 = _795;
        _805 = _796;
        _806 = _797;
        _807 = _798;
        _808 = -1;
        while(true) {
          _809 = (float)((int)(_808));
          _810 = (float)((int)(_799));
          _811 = (float)((int)(_790));
          _815 = sin(_809 + _782);
          _816 = sin(_810 + _783);
          _817 = sin(_811 + _784);
          _832 = _time.x * 0.2f;
          _839 = sin(_832 * frac(sin(dot(float3(_815, _816, _817), float3(12.989f, 78.233f, 37.719f))) * 143758.55f)) + _809;
          _840 = sin(_832 * frac(sin(dot(float3(_815, _816, _817), float3(39.346f, 11.135f, 83.155f))) * 143758.55f)) + _810;
          _841 = sin(_832 * frac(sin(dot(float3(_815, _816, _817), float3(73.156f, 52.235f, 9.151f))) * 143758.55f)) + _811;
          _852 = max(abs((_782 - _779) + _839), max(abs((_783 - _780) + _840), abs((_784 - _781) + _841)));
          _853 = (_852 < _804);
          _854 = select(_853, _852, _804);
          _855 = select(_853, _839, _805);
          _856 = select(_853, _840, _806);
          _857 = select(_853, _841, _807);
          _858 = (int)(_808) + (int)(1);
          if (!(_858 == 2)) {
            _804 = _854;
            _805 = _855;
            _806 = _856;
            _807 = _857;
            _808 = _858;
            continue;
          }
          while(true) {
            _801 = (int)(_799) + (int)(1);
            if (!(_801 == 2)) {
              _795 = _854;
              _796 = _855;
              _797 = _856;
              _798 = _857;
              _799 = _801;
              __loop_jump_target = 794;
              break;
            }
            while(true) {
              _792 = (int)(_790) + (int)(1);
              if (!(_792 == 2)) {
                _786 = _854;
                _787 = _855;
                _788 = _856;
                _789 = _857;
                _790 = _792;
                __loop_jump_target = 785;
                break;
              }
              _868 = (_855 + _782) / _778;
              _869 = (_856 + _783) / _778;
              _870 = (_857 + _784) / _778;
              _898 = mad((_viewProj[3].z), _870, mad((_viewProj[3].y), _869, ((_viewProj[3].x) * _868))) + (_viewProj[3].w);
              _903 = (((mad((_viewProj[0].z), _870, mad((_viewProj[0].y), _869, ((_viewProj[0].x) * _868))) + (_viewProj[0].w)) / _898) * 0.5f) + 0.5f;
              _904 = 0.5f - (((mad((_viewProj[1].z), _870, mad((_viewProj[1].y), _869, ((_viewProj[1].x) * _868))) + (_viewProj[1].w)) / _898) * 0.5f);
              _909 = _868 - _mainPosition.x;
              _910 = _869 - _mainPosition.y;
              _911 = _870 - _mainPosition.z;
              // [sem: expr_sat]
              _920 = saturate(1.0f - ((1.0f - ((1.0f / max(1e-05f, _708)) * sqrt(dot(float3(_909, _910, _911), float3(_909, _910, _911))))) * 1.0152284f));
              _922 = 1.0f - saturate(_920);
              _923 = _920 * 0.5f;
              _925 = (_144 - _903) / _922;
              _927 = (_145 - _904) / _922;
              _928 = sin(_923);
              _929 = cos(_923);
              _935 = mad((-0.0f - _928), _927, (_929 * _925)) + _903;
              _936 = mad(_929, _927, (_928 * _925)) + _904;
              _948 = (saturate(_159.x * 1.5f) * 0.5f) * saturate(frac(sin(dot(float2(((float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(_144))))), ((float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(_145)))))), float2(12.9898f, 78.233f))) * 43758.547f) + 0.5f);
              _949 = _948 * mad((_762 * _747), _279, mad((_762 * _746), _278, (_765 * _745)));
              _950 = _949 * 0.8333334f;
              _951 = _948 * mad((_762 * _756), _279, mad((_762 * _755), _278, (_765 * _754)));
              _952 = _951 * 0.8333334f;
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _957 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_950 + _144), (_952 + _145)));
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _961 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_935 + _950), (_936 + _952)));
              _968 = WaveReadLaneFirst(_materialIndex);
              _976 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_968 < (uint)170000), _968, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
              _978 = (float)((bool)(_957.w < _976));
              _985 = (_978 * ((_961.x * 0.4f) - _624)) + _624;
              _986 = (_978 * ((_961.y * 0.4f) - _625)) + _625;
              _987 = (_978 * ((_961.z * 0.4f) - _626)) + _626;
              if (!(_957.w > 0.9f)) {
                _990 = _949 * 0.6666667f;
                _991 = _951 * 0.6666667f;
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _996 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_990 + _144), (_991 + _145)));
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _1000 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_935 + _990), (_936 + _991)));
                _1007 = WaveReadLaneFirst(_materialIndex);
                _1015 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1007 < (uint)170000), _1007, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
                _1017 = (float)((bool)(_996.w < _1015));
                _1024 = (_1017 * ((_1000.x * 0.4f) - _985)) + _985;
                _1025 = (_1017 * ((_1000.y * 0.4f) - _986)) + _986;
                _1026 = (_1017 * ((_1000.z * 0.4f) - _987)) + _987;
                if (!(_996.w > 0.9f)) {
                  _1029 = _949 * 0.5f;
                  _1030 = _951 * 0.5f;
                  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1035 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1029 + _144), (_1030 + _145)));
                  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1039 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_935 + _1029), (_936 + _1030)));
                  _1046 = WaveReadLaneFirst(_materialIndex);
                  _1054 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1046 < (uint)170000), _1046, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
                  _1056 = (float)((bool)(_1035.w < _1054));
                  _1063 = (_1056 * ((_1039.x * 0.4f) - _1024)) + _1024;
                  _1064 = (_1056 * ((_1039.y * 0.4f) - _1025)) + _1025;
                  _1065 = (_1056 * ((_1039.z * 0.4f) - _1026)) + _1026;
                  if (!(_1035.w > 0.9f)) {
                    _1068 = _949 * 0.33333334f;
                    _1069 = _951 * 0.33333334f;
                    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                    _1074 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1068 + _144), (_1069 + _145)));
                    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                    _1078 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_935 + _1068), (_936 + _1069)));
                    _1085 = WaveReadLaneFirst(_materialIndex);
                    _1093 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1085 < (uint)170000), _1085, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
                    _1095 = (float)((bool)(_1074.w < _1093));
                    _1102 = (_1095 * ((_1078.x * 0.4f) - _1063)) + _1063;
                    _1103 = (_1095 * ((_1078.y * 0.4f) - _1064)) + _1064;
                    _1104 = (_1095 * ((_1078.z * 0.4f) - _1065)) + _1065;
                    if (!(_1074.w > 0.9f)) {
                      _1107 = _949 * 0.16666667f;
                      _1108 = _951 * 0.16666667f;
                      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                      _1113 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1107 + _144), (_1108 + _145)));
                      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                      _1117 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_935 + _1107), (_936 + _1108)));
                      _1124 = WaveReadLaneFirst(_materialIndex);
                      _1132 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1124 < (uint)170000), _1124, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
                      _1134 = (float)((bool)(_1113.w < _1132));
                      _1145 = ((_1134 * ((_1117.z * 0.4f) - _1104)) + _1104);
                      _1146 = ((_1134 * ((_1117.y * 0.4f) - _1103)) + _1103);
                      _1147 = ((_1134 * ((_1117.x * 0.4f) - _1102)) + _1102);
                      _1148 = _1113.w;
                    } else {
                      _1145 = _1104;
                      _1146 = _1103;
                      _1147 = _1102;
                      _1148 = _1074.w;
                    }
                  } else {
                    _1145 = _1065;
                    _1146 = _1064;
                    _1147 = _1063;
                    _1148 = _1035.w;
                  }
                } else {
                  _1145 = _1026;
                  _1146 = _1025;
                  _1147 = _1024;
                  _1148 = _996.w;
                }
              } else {
                _1145 = _987;
                _1146 = _986;
                _1147 = _985;
                _1148 = _957.w;
              }
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1151 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_935, _936));
              _1155 = WaveReadLaneFirst(_materialIndex);
              _1163 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1155 < (uint)170000), _1155, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
              _1165 = (float)((bool)(_1148 < _1163));
              _1176 = ((_1165 * (_1151.x - _1147)) + _1147);
              _1177 = ((_1165 * (_1151.y - _1146)) + _1146);
              _1178 = ((_1165 * (_1151.z - _1145)) + _1145);
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
        if (__loop_jump_target == 794) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
      if (__loop_jump_target == 785) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
  } else {
    _1176 = _624;
    _1177 = _625;
    _1178 = _626;
  }
  _1179 = WaveReadLaneFirst(_materialIndex);
  _1187 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1179 < (uint)170000), _1179, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _1188 = WaveReadLaneFirst(_materialIndex);
  _1196 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1188 < (uint)170000), _1188, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._tempCubeSpaceRatio);
  [branch]
  if ((_687 == _renderPassMemoryBackground) || ((!(_687 == _renderPassMemoryBackground)) && (_687 == _renderPassDetectRemoteCatch)) || (((!(_687 == _renderPassMemoryBackground)) && (!(_687 == _renderPassDetectRemoteCatch))) && (_687 == _renderPassDetectPickedRemoteCatch))) {
    _1216 = WaveReadLaneFirst(_materialIndex);
    _1224 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1216 < (uint)170000), _1216, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryOpacity);
    _1239 = _1224;
  } else {
    if (_687 == _renderPassEnemyBoss) {
      _1229 = WaveReadLaneFirst(_materialIndex);
      _1237 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1229 < (uint)170000), _1229, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._enemyBossOpacity);
      _1239 = _1237;
    } else {
      _1239 = 1.0f;
    }
  }
  _1240 = WaveReadLaneFirst(_materialIndex);
  _1248 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1240 < (uint)170000), _1240, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _1252 = saturate((_1248 * 100.0f) + -99.0f) * _1239;
  if (!(!(_1252 >= 0.001f))) {
    [branch]
    if ((_687 == _renderPassSelfPlayer) || (_687 == _renderPassTest) || (_687 == _renderPassDetectRemoteCatch) || (_687 == _renderPassDetectPickedRemoteCatch)) {
      _1277 = WaveReadLaneFirst(_materialIndex);
      _1285 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1277 < (uint)170000), _1277, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
      _1292 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1285 < (uint)65000), _1285, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_628 - (_time.x * 0.22f)), (_629 - (_time.x * 0.18f))));
      _1295 = _1292.x + -0.3f;
      _1297 = ((_1292.x + -0.4f) * 10.471975f) + -1.5707964f;
      _1300 = _1295 * 0.006f;
      _1302 = _1300;
      _1303 = _1300;
      _1304 = 0.0f;
      _1305 = 0.0f;
      _1306 = 0.0f;
      _1307 = 0.0f;
      _1308 = -1.0f;
      while(true) {
        _1313 = _144 - ((_1302 * sin(_1297)) * _1308);
        _1314 = _145 - ((_1303 * cos(_1297)) * _1308);
        _1315 = _1313 + -0.5f;
        _1316 = _1314 + -0.5f;
        // [sem: invLength]
        _1325 = rsqrt(dot(float2(_1315, _1316), float2(_1315, _1316))) * ((_1295 * 0.06f) * sqrt((_1315 * _1315) + (_1316 * _1316)));
        _1326 = _1325 * _1315;
        _1328 = _1325 * _1316;
        _1336 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_1313, _1314));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _1345 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1313 - _1326), (_1314 - _1328))))).x) * 0.2f) + _1304;
        _1346 = (_1336.y * 0.2f) + _1305;
        _1347 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1326 + _1313), (_1328 + _1314))))).z) * 0.2f) + _1306;
        _1348 = (_1336.w * 0.2f) + _1307;
        _1355 = _1308 + 0.2f;
        if (!(!(_1355 <= 1.0f))) {
          _1302 = (_1302 * 1.01f);
          _1303 = (_1303 * 1.01f);
          _1304 = (_1345 * 0.9f);
          _1305 = (_1346 * 0.9f);
          _1306 = (_1347 * 0.9f);
          _1307 = (_1348 * 0.9f);
          _1308 = _1355;
          continue;
        }
        if (!(_687 == _renderPassSelfPlayer)) {
          _1369 = (_687 == _renderPassTest);
        } else {
          _1369 = true;
        }
        _1375 = saturate(_1348 * 1.08f);  // [sem: expr_sat]
        _1378 = max(0.001f, _exposure0.x);
        _1386 = ((((_1345 * 0.54f) * select(_1369, 0.55f, 0.5f)) / _1378) * _1375);
        _1387 = ((((_1346 * 0.54f) * select(_1369, 0.7f, 0.8f)) / _1378) * _1375);
        _1388 = (((_1347 * 0.54f) / _1378) * _1375);
        break;
      }
    } else {
      _1386 = 0.0f;
      _1387 = 0.0f;
      _1388 = 0.0f;
    }
  } else {
    _1386 = 0.0f;
    _1387 = 0.0f;
    _1388 = 0.0f;
  }
  if ((_687 == _renderPassSelfPlayer) || (_687 == _renderPassTest)) {
    _1398 = _1252;  // [sem: expr_sat]
  } else {
    _1398 = saturate(saturate(_1196 * 2.0f) * _1187);  // [sem: expr_sat]
  }
  _1402 = _282.z + (_1398 * (_1178 - _282.z));
  _1403 = _282.y + (_1398 * (_1177 - _282.y));
  _1404 = _282.x + (_1398 * (_1176 - _282.x));
  if (_687 == _renderPassMemoryBackground) {
    _1419 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _144)), ((int)(_customRenderPassSizeInvSize.y * _145)), 0)))).x));
    _1455 = mad((_invViewProj[3].z), _1419, mad((_invViewProj[3].y), _195, ((_invViewProj[3].x) * _193))) + (_invViewProj[3].w);
    _1456 = (mad((_invViewProj[0].z), _1419, mad((_invViewProj[0].y), _195, ((_invViewProj[0].x) * _193))) + (_invViewProj[0].w)) / _1455;
    _1458 = (mad((_invViewProj[2].z), _1419, mad((_invViewProj[2].y), _195, ((_invViewProj[2].x) * _193))) + (_invViewProj[2].w)) / _1455;
    _1467 = WaveReadLaneFirst(_materialIndex);
    _1475 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1467 < (uint)170000), _1467, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
    _1482 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1475 < (uint)65000), _1475, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.01f) + (_1456 * 0.7f)), ((_1458 * 0.7f) - (_time.x * 0.04f))));
    _1485 = _1482.w + -0.5f;
    _1486 = _1482.z + -0.5f;
    _1501 = _time.x * 0.02f;
    _1504 = WaveReadLaneFirst(_materialIndex);
    _1512 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1504 < (uint)170000), _1504, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._auraTex);
    _1519 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1512 < (uint)65000), _1512, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((_1456 * 1.1f) - ((_649.y + -0.5f) * 0.1f)) + (_1485 * 0.3f)) - _1501), ((((_1458 * 1.1f) - ((_649.w + -0.5f) * 0.1f)) + (_1486 * 0.3f)) - _1501)));
    _1530 = _1485 * 2.0f;
    _1534 = (((0.5f - _649.w) + _1456) + _1530) - _mainPosition.x;
    _1537 = (((0.5f - _649.x) + ((mad((_invViewProj[1].z), _1419, mad((_invViewProj[1].y), _195, ((_invViewProj[1].x) * _193))) + (_invViewProj[1].w)) / _1455)) + (_1486 * 2.0f)) - _mainPosition.y;
    _1540 = (((0.5f - _649.z) + _1458) + _1530) - _mainPosition.z;
    _1549 = 1.0f - saturate(sqrt(((_1534 * _1534) + (_1537 * _1537)) + (_1540 * _1540)) * 0.125f);
    _1558 = ((sin((_time.x * 5.0f) + (_1549 * 60.0f)) + 1.0f) * 0.25f) + 0.5f;
    _1560 = _1549 * (_1558 * _1558);
    _1562 = (_1560 * _1560) * _649.x;
    _1580 = max(0.001f, _exposure0.x);
    _1594 = (((((((_1549 * 0.010000001f) + ((_1519.x * _1519.x) * _1562)) * _1519.x) / _1580) - _1404) * _1252) + _1404);
    _1595 = (((((((_1549 * 0.035f) + ((_1519.y * _1519.y) * _1562)) * _1519.y) / _1580) - _1403) * _1252) + _1403);
    _1596 = (((((((_1549 * 0.05f) + ((_1519.z * _1519.z) * _1562)) * _1519.z) / _1580) - _1402) * _1252) + _1402);
  } else {
    _1594 = _1404;
    _1595 = _1403;
    _1596 = _1402;
  }
  _1597 = WaveReadLaneFirst(_materialIndex);
  _1605 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1597 < (uint)170000), _1597, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadBackgroundOpacity);
  if (!(!(_1605 >= 0.001f))) {
    _1612 = _233 - _mainPosition.x;
    _1613 = _234 - _mainPosition.y;
    _1614 = _235 - _mainPosition.z;
    _1622 = saturate(sqrt(((_1612 * _1612) + (_1613 * _1613)) + (_1614 * _1614)) * 0.033333335f);  // [sem: expr_sat]
    _1623 = 1.0f - _1622;
    _1636 = (((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _144) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _145) + -0.5f))), 0)))).x) & 127;
    if (_617 && (_1623 > 0.0f)) {
      _1658 = WaveReadLaneFirst(_materialIndex);
      _1666 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_1658 < (uint)170000), _1658, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._glitchTex);
      _1673 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1666 < (uint)65000), _1666, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_233 * 0.1f), (_235 * 0.1f)));
      _1678 = (_1673.x * 2.0f) + -0.99607843f;
      _1679 = (_1673.y * 2.0f) + -0.99607843f;
      _1694 = ((_1678 + _233) - _viewPos.x) * 0.06f;
      _1695 = ((_1679 + _234) - _viewPos.y) * 0.06f;
      _1696 = ((sqrt(saturate(1.0f - dot(float2(_1678, _1679), float2(_1678, _1679)))) + _235) - _viewPos.z) * 0.06f;
      _1702 = sqrt(((_1694 * _1694) + (_1695 * _1695)) + (_1696 * _1696));
      _1705 = _time.x * 0.3f;
      _1711 = exp2(log2(frac(_1702 - _1705)) * 15.0f) * _1623;
      _1726 = exp2(log2(saturate(1.0f - abs((frac((_1702 + 0.5f) - _1705) * 2.0f) + -1.0f))) * 30.0f) * (_1623 * 0.015f);
      _1730 = (_1726 * _1678);
      _1731 = (_1726 * _1679);
      _1732 = (_1711 * 0.2f);
      _1733 = (_1711 * 0.5f);
      _1734 = _1711;
    } else {
      _1730 = 0.0f;
      _1731 = 0.0f;
      _1732 = 0.0f;
      _1733 = 0.0f;
      _1734 = 0.0f;
    }
    if (((uint)((int)(_1636) + (int)(-52)) < (uint)16) || ((!((uint)((int)(_1636) + (int)(-52)) < (uint)16)) && ((((_nearFarProj.x / _196) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _144)), ((int)(_customRenderPassSizeInvSize.y * _145)), 0)))).x)))) > 0.2f) && (_687 == _renderPassMemory)))) {
      _1755 = (uint)((_bufferSizeAndInvSize.x * ((_664 * 0.0005f) + _144)) + -0.5f);
      _1756 = (uint)((_bufferSizeAndInvSize.y * ((_664 * 0.01f) + _145)) + -0.5f);
      _1758 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_1755, _1756, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _1761 = __3__36__0__0__g_gbufferNormal.Load(int3(_1755, _1756, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _1779 = (saturate(_1761.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _1780 = (saturate(_1761.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _1781 = (saturate(_1761.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _1783 = rsqrt(dot(float3(_1779, _1780, _1781), float3(_1779, _1780, _1781)));  // [sem: invLength]
      _1784 = _1783 * _1779;
      _1785 = _1783 * _1780;
      _1786 = _1781 * _1783;
      _1789 = (((float)((uint)((uint)(((uint)((uint)(_1758.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _1790 = (((float)((uint)((uint)(_1758.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _1793 = (_1789 + _1790) * 0.5f;
      _1794 = (_1789 - _1790) * 0.5f;
      _1798 = (1.0f - abs(_1793)) - abs(_1794);
      _1800 = rsqrt(dot(float3(_1793, _1794, _1798), float3(_1793, _1794, _1798)));  // [sem: invLength]
      _1801 = _1800 * _1793;
      _1802 = _1800 * _1794;
      _1803 = _1800 * _1798;
      _1805 = select((_1786 >= 0.0f), 1.0f, -1.0f);
      _1808 = -0.0f - (1.0f / (_1805 + _1786));
      _1809 = _1785 * _1808;
      _1810 = _1809 * _1784;
      _1811 = _1805 * _1784;
      _1820 = mad(_1803, _1784, mad(_1802, _1810, ((((_1811 * _1784) * _1808) + 1.0f) * _1801)));
      _1824 = mad(_1803, _1785, mad(_1802, (_1805 + (_1809 * _1785)), ((_1801 * _1805) * _1810)));
      _1828 = mad(_1803, _1786, mad(_1802, (-0.0f - _1785), (-0.0f - (_1811 * _1801))));
      _1830 = rsqrt(dot(float3(_1820, _1824, _1828), float3(_1820, _1824, _1828)));  // [sem: invLength]
      // [sem: expr_sat]
      _1842 = saturate(dot(float3((_1830 * _1820), (_1830 * _1824), (_1830 * _1828)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _1843 = 1.0f - _1842;
      _1846 = max(0.001f, _exposure0.x);
      _1851 = (_1843 * _1843) * _1623;
      if ((_687 == _renderPassSelfPlayer) || ((!(_687 == _renderPassSelfPlayer)) && (_687 == _renderPassTest))) {
        _1871 = ((_1843 * 0.05f) + 0.1f);
      } else {
        _1871 = select((_687 == _renderPassMemory), 1.1f, 0.1f);
      }
      _1885 = (pow(_1622, 1.5f)) * ((pow(_1842, 5.0f)) * 0.8f);
      _2122 = ((((_1851 * (0.4f / _1846)) * _1871) + _1594) + (_1885 * _1732));
      _2123 = ((((_1851 * (0.7f / _1846)) * _1871) + _1595) + (_1885 * _1733));
      _2124 = ((((_1851 * (1.0f / _1846)) * _1871) + _1596) + (_1885 * _1734));
    } else {
      _1897 = _233 - _mainPosition.x;
      _1898 = _234 - _mainPosition.y;
      _1899 = _235 - _mainPosition.z;
      _1913 = _233 - _aimHighlightPosition.x;
      _1914 = _234 - _aimHighlightPosition.y;
      _1915 = _235 - _aimHighlightPosition.z;
      _1926 = 1.0f - saturate(sqrt(((_1913 * _1913) + (_1914 * _1914)) + (_1915 * _1915)) / (_aimHighlightPosition.w * 5.0f));
      // [sem: _3__36__0__0__g_specularAO_sampleLod]
      _1933 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_1730 + _144), (_1731 + _145)), 0.0f);
      _1938 = _1933.w * saturate(((_1926 * _1926) * _1926) + ((1.0f - saturate(sqrt(((_1897 * _1897) + (_1898 * _1898)) + (_1899 * _1899)) * 0.5f)) * 0.1f));
      _1939 = _1938 * 5.0f;
      _1941 = (_1933.w * _1933.w) * _1623;
      _1946 = ((_1941 * _1941) * 49.96f) + 0.04f;
      _1950 = _1938 * 1.75f;
      _1951 = _1938 * 3.25f;
      _1952 = _1938 * 120.0f;
      _1960 = ((1.0f - saturate(_1952 + -3.0f)) * saturate(_1952 + -2.0f)) * (0.35f - _1950);
      _1969 = ((0.65f - _1951) * saturate(_1952 + -2.5f)) * (1.0f - saturate(_1952 + -4.0f));
      _1978 = (saturate(_1952 + -3.5f) * (1.0f - _1939)) * (1.0f - saturate(_1952 + -5.0f));
      _1981 = saturate(_1952 + -8.0f);  // [sem: expr_sat]
      _1988 = 1.0f - _1941;
      _1995 = ((_1946 * _1732) + _1594) + (((((_1960 + _1950) - (_1960 * _1981)) * _1988) + (_1941 * 0.35f)) * _1605);
      _1999 = ((_1946 * _1733) + _1595) + (((((_1969 + _1951) - (_1969 * _1981)) * _1988) + (_1941 * 0.65f)) * _1605);
      _2003 = ((_1946 * _1734) + _1596) + (((((_1978 + _1939) - (_1978 * _1981)) * _1988) + _1941) * _1605);
      if (_1636 == 7) {
        _2009 = ((_isPhotosensitiveMode_isAllolwBlood & 1) != 0);
        _2122 = select(_2009, 0.015f, 0.007f);
        _2123 = 0.0f;
        _2124 = select(_2009, 0.0f, 0.015f);
      } else {
        _2013 = (int)(_1636) + (int)(-105);
        if ((_1636 == 107) || ((_1636 == 26) || (((uint)((int)(_1636) + (int)(-27)) < (uint)2) || ((uint)_2013 < (uint)2)))) {
          _2027 = _mainPosition.x - _viewPos.x;
          _2028 = _mainPosition.y - _viewPos.y;
          _2029 = _mainPosition.z - _viewPos.z;
          _2057 = mad((_viewProjRelative[3].z), _2029, mad((_viewProjRelative[3].y), _2028, ((_viewProjRelative[3].x) * _2027))) + (_viewProjRelative[3].w);
          _2058 = (mad((_viewProjRelative[0].z), _2029, mad((_viewProjRelative[0].y), _2028, ((_viewProjRelative[0].x) * _2027))) + (_viewProjRelative[0].w)) / _2057;
          _2062 = 0.5f - (((mad((_viewProjRelative[1].z), _2029, mad((_viewProjRelative[1].y), _2028, ((_viewProjRelative[1].x) * _2027))) + (_viewProjRelative[1].w)) / _2057) * 0.5f);
          _2072 = ((_view[0].x) * 5.0f) + _2027;
          _2073 = ((_view[0].y) * 5.0f) + _2028;
          _2074 = ((_view[0].z) * 5.0f) + _2029;
          _2086 = mad((_viewProjRelative[3].z), _2074, mad((_viewProjRelative[3].y), _2073, (_2072 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
          _2092 = (0.5f - (((mad((_viewProjRelative[1].z), _2074, mad((_viewProjRelative[1].y), _2073, (_2072 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _2086) * 0.5f)) - _2062;
          _2094 = (_35 * 0.5f) * (((mad((_viewProjRelative[0].z), _2074, mad((_viewProjRelative[0].y), _2073, (_2072 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _2086) - _2058);
          _2101 = _145 - _2062;
          _2102 = ((_144 + -0.5f) - (_2058 * 0.5f)) * _35;
          _2110 = 1.0f - saturate(sqrt((_2101 * _2101) + (_2102 * _2102)) / max(0.001f, sqrt((_2092 * _2092) + (_2094 * _2094))));
          _2115 = (_2110 * _2110) * (select(((uint)_2013 < (uint)3), 0.1f, 0.015f) * _1605);
          _2122 = ((_2115 * 0.35f) + _1995);
          _2123 = ((_2115 * 0.65f) + _1999);
          _2124 = (_2115 + _2003);
        } else {
          _2122 = _1995;
          _2123 = _1999;
          _2124 = _2003;
        }
      }
    }
  } else {
    _2122 = _1594;
    _2123 = _1595;
    _2124 = _1596;
  }
  if (_687 == _renderPassEnemyBoss) {
    _2131 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_144, _145));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _2136 = saturate(_2131.z * 2.0f);  // [sem: expr_sat]
    _2147 = saturate((_2131.x * 3.0f) * ((1.0f / max(0.001f, _exposure0.x)) - _2131.z));  // [sem: expr_sat]
    _2148 = _2147 * 0.6f;
    _2149 = _2147 * 0.65f;
    _2159 = WaveReadLaneFirst(_materialIndex);
    _2167 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_2159 < (uint)170000), _2159, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._enemyBossOpacity);
    _2172 = (_2167 * ((((_2131.y * 0.225f) - _2148) * _2136) + _2148));
    _2173 = (_2167 * ((((_2131.y * 0.325f) - _2149) * _2136) + _2149));
    _2174 = (_2167 * ((((_2131.y * 0.5f) - _2147) * _2136) + _2147));
  } else {
    _2172 = _2122;
    _2173 = _2123;
    _2174 = _2124;
  }
  _2175 = _144 + -0.5f;
  _2176 = _145 + -0.5f;
  _2183 = saturate((sqrt((_2176 * _2176) + (_2175 * _2175)) + -0.01f) * 1.010101f);  // [sem: expr_sat]
  _2188 = WaveReadLaneFirst(_materialIndex);
  _2196 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_2188 < (uint)170000), _2188, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._vignetteIntensity);
  _2198 = WaveReadLaneFirst(_materialIndex);
  _2206 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)((uint)(select(((uint)_2198 < (uint)170000), _2198, 0))) + (uint)(0)))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _2208 = 1.0f - ((((_2183 * _2183) * (3.0f - (_2183 * 2.0f))) * _2196) * _2206);
  _2215 = max(0.0f, (_2208 * (_2172 + _1386)));
  _2216 = max(0.0f, (_2208 * (_2173 + _1387)));
  _2217 = max(0.0f, (_2208 * (_2174 + _1388)));
  _2218 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _2231 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _2218, 0)))).x) & 127)))) + 0.5f);
  } else {
    _2231 = 1.0f;
  }
  _2234 = (_localToneMappingParams.w > 0.0f);
  if (_2234) {
    _2240 = _userImageAdjust.z * _exposure0.x;
    _2289 = exp2(log2(max(0.0f, (((_2240 * max(0.0f, (((_2215 * 1.70505f) - (_2216 * 0.62179f)) - (_2217 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _2290 = exp2(log2(max(0.0f, (((max(0.0f, (((_2216 * 1.1408f) - (_2215 * 0.13026f)) - (_2217 * 0.01055f))) * _2240) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _2291 = exp2(log2(max(0.0f, (((max(0.0f, (((_2215 * -0.024f) - (_2216 * 0.12897f)) + (_2217 * 1.15297f))) * _2240) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _2293 = dot(float3(_2289, _2290, _2291), float3(0.212671f, 0.71516f, 0.072169f));
    _2300 = ((_2289 - _2293) * _powerParams.w) + _2293;
    _2301 = ((_2290 - _2293) * _powerParams.w) + _2293;
    _2302 = ((_2291 - _2293) * _powerParams.w) + _2293;
    _2321 = min(max(log2(mad(_2302, 0.079223745f, mad(_2301, 0.0784336f, (_2300 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _2322 = min(max(log2(mad(_2302, 0.07916613f, mad(_2301, 0.87846863f, (_2300 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _2323 = min(max(log2(mad(_2302, 0.879143f, mad(_2301, 0.0784336f, (_2300 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _2324 = _2321 * 0.060606062f;
    _2325 = _2322 * 0.060606062f;
    _2326 = _2323 * 0.060606062f;
    _2327 = _2324 * _2324;
    _2328 = _2325 * _2325;
    _2329 = _2326 * _2326;
    _2375 = min(0.0f, (-0.0f - (((_2321 * 0.0072181816f) + ((_2327 * 0.4298f) + (((_2327 * _2327) * ((31.96f - (_2321 * 2.4327273f)) + (_2327 * 15.5f))) - ((_2321 * 0.41624245f) * _2327)))) + -0.00232f)));
    _2376 = min(0.0f, (-0.0f - (((_2322 * 0.0072181816f) + ((_2328 * 0.4298f) + (((_2328 * _2328) * ((31.96f - (_2322 * 2.4327273f)) + (_2328 * 15.5f))) - ((_2322 * 0.41624245f) * _2328)))) + -0.00232f)));
    _2377 = min(0.0f, (-0.0f - (((_2323 * 0.0072181816f) + ((_2329 * 0.4298f) + (((_2329 * _2329) * ((31.96f - (_2323 * 2.4327273f)) + (_2329 * 15.5f))) - ((_2323 * 0.41624245f) * _2329)))) + -0.00232f)));
    _2378 = -0.0f - _2375;
    _2379 = -0.0f - _2376;
    _2380 = -0.0f - _2377;
    _2381 = dot(float3(_2378, _2379, _2380), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _2398 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _2399 = -0.79999995f / _2398;
      _2400 = -1.2f / _2398;
      _2401 = 0.20000005f / _2398;
      _2407 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _2410 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _2417 = (_2399 + 1.4f) + (_2410 * (-0.39999998f - _2399));
      _2418 = (_2400 + 1.6f) + (_2410 * (-0.6f - _2400));
      _2419 = (_2401 + 0.9f) + (_2410 * (0.5f - _2401));
      _2436 = (lerp(_2418, 1.2f, _2407));  // [sem: blended]
      _2437 = (lerp(_2417, 1.0f, _2407));  // [sem: blended]
      _2438 = (lerp(_2419, 1.4f, _2407));  // [sem: blended]
    } else {
      _2436 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _2437 = 1.0f;  // [sem: blended]
      _2438 = 1.4f;  // [sem: blended]
    }
    _2448 = 1.0f - _2436;
    _2473 = ((exp2(log2(((saturate((_2375 * _2375) * _2378) * _2448) + _2436) * _2378) * _2437) - _2381) * _2438) + _2381;
    _2474 = ((exp2(log2(((saturate((_2376 * _2376) * _2379) * _2448) + _2436) * _2379) * _2437) - _2381) * _2438) + _2381;
    _2475 = ((exp2(log2(((saturate((_2377 * _2377) * _2380) * _2448) + _2436) * _2380) * _2437) - _2381) * _2438) + _2381;
    _2494 = saturate(exp2(log2(mad(_2475, -0.09902974f, mad(_2474, -0.09802088f, (_2473 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _2495 = saturate(exp2(log2(mad(_2475, -0.098961174f, mad(_2474, 1.1519032f, (_2473 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _2496 = saturate(exp2(log2(mad(_2475, 1.1510737f, mad(_2474, -0.09804345f, (_2473 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _2502 = 1.0f - abs(_etcParams.w);
      _2506 = saturate(_etcParams.w);  // [sem: expr_sat]
      _2507 = (_2502 * _2494) + _2506;
      _2508 = (_2502 * _2495) + _2506;
      _2509 = (_2502 * _2496) + _2506;
      if (_colorGradingParams.w > 0.0f) {
        _2514 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _2531 = (((max(0.0f, (1.0f - _2507)) - _2507) * _2514) + _2507);
        _2532 = (((max(0.0f, (1.0f - _2508)) - _2508) * _2514) + _2508);
        _2533 = (((max(0.0f, (1.0f - _2509)) - _2509) * _2514) + _2509);
      } else {
        _2531 = _2507;
        _2532 = _2508;
        _2533 = _2509;
      }
      _2539 = _userImageAdjust.y + 1.0f;
      _2543 = _userImageAdjust.x + 0.5f;
      _2544 = ((_2531 + -0.5f) * _2539) + _2543;
      _2545 = ((_2532 + -0.5f) * _2539) + _2543;
      _2546 = ((_2533 + -0.5f) * _2539) + _2543;
      _2576 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _2587 = exp2(log2(saturate(mad(_colorBlind0.z, _2546, mad(_colorBlind0.y, _2545, (_colorBlind0.x * _2544))))) * _2576);
      _2588 = exp2(log2(saturate(mad(_colorBlind1.z, _2546, mad(_colorBlind1.y, _2545, (_colorBlind1.x * _2544))))) * _2576);
      _2589 = exp2(log2(saturate(mad(_colorBlind2.z, _2546, mad(_colorBlind2.y, _2545, (_colorBlind2.x * _2544))))) * _2576);
    } else {
      _2587 = _2494;
      _2588 = _2495;
      _2589 = _2496;
    }
  } else {
    _2587 = _2215;
    _2588 = _2216;
    _2589 = _2217;
  }
  if (_etcParams.y > 1.0f) {
    _2598 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _2599 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _2603 = saturate(1.0f - (dot(float2(_2598, _2599), float2(_2598, _2599)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _2608 = (_2603 * _2587);
    _2609 = (_2603 * _2588);
    _2610 = (_2603 * _2589);
  } else {
    _2608 = _2587;
    _2609 = _2588;
    _2610 = _2589;
  }
  if (_2234 && (_etcParams.z > 0.0f)) {
    _2640 = select((_2608 <= 0.0031308f), (_2608 * 12.92f), (((pow(_2608, 0.41666666f)) * 1.055f) + -0.055f));
    _2641 = select((_2609 <= 0.0031308f), (_2609 * 12.92f), (((pow(_2609, 0.41666666f)) * 1.055f) + -0.055f));
    _2642 = select((_2610 <= 0.0031308f), (_2610 * 12.92f), (((pow(_2610, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _2640 = _2608;
    _2641 = _2609;
    _2642 = _2610;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2647 = (float)((uint)((uint)(_2218)));
    if (!(_2647 < _viewDir.w)) {
      if (!(_2647 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _2656 = _2640;
        _2657 = _2641;
        _2658 = _2642;
      } else {
        _2656 = 0.0f;
        _2657 = 0.0f;
        _2658 = 0.0f;
      }
    } else {
      _2656 = 0.0f;
      _2657 = 0.0f;
      _2658 = 0.0f;
    }
  } else {
    _2656 = _2640;
    _2657 = _2641;
    _2658 = _2642;
  }
  SV_Target.x = _2656;
  SV_Target.y = _2657;
  SV_Target.z = _2658;
  SV_Target.w = _2231;
  return SV_Target;
}
