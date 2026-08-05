struct PostProcessAimHighlight_CDStruct {
  float _aimHighlightProgress;
  float _aimHighlightBackground;
  uint _noiseTex;
  uint _auraTex;
  float _radius;
  float _squareSize;
  float _maskThreshold;
  uint _aimGimmickColor;
  uint _aimHighlightColor;
  float _fishEyeMaxPower;
  float _vignetteIntensity;
};

struct BindlessParameters_PostProcessAimHighlight_CD {
  PostProcessAimHighlight_CDStruct BindlessParameters_PostProcessAimHighlight_CD;
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

typedef BindlessParameters_PostProcessAimHighlight_CD BindlessParameters_PostProcessAimHighlight_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAimHighlight_CD_t> BindlessParameters_PostProcessAimHighlight_CD[] : register(b0, space100);

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
  float _35;
  int _38;
  float _46;
  float _147;
  float _148;
  float _151;
  float _152;
  float _413;
  float _414;
  int _519;
  float _520;
  float _521;
  float _522;
  float _523;
  int _524;
  int _525;
  int _578;
  int _579;
  int _580;
  int _662;
  float _663;
  float _664;
  float _665;
  int _779;
  float _780;
  float _781;
  float _782;
  float _850;
  float _851;
  float _852;
  float _927;
  float _928;
  float _929;
  float _930;
  float _931;
  float _932;
  float _933;
  int _995;
  float _1016;
  float _1017;
  float _1018;
  float _1030;
  float _1404;
  float _1405;
  float _1406;
  float _1407;
  float _1498;
  float _1499;
  float _1774;
  float _1775;
  float _1776;
  float _1860;
  float _1861;
  float _1862;
  float _1863;
  float _1918;
  float _2123;
  float _2124;
  float _2125;
  float _2218;
  float _2219;
  float _2220;
  float _2274;
  float _2275;
  float _2276;
  float _2295;
  float _2296;
  float _2297;
  float _2327;
  float _2328;
  float _2329;
  float _2343;
  float _2344;
  float _2345;
  int _51;
  float _59;
  int _64;
  float _72;
  int _77;
  float _85;
  int _88;
  float _96;
  float _97;
  float _98;
  float _103;
  float _107;
  float _108;
  float _109;
  float _113;
  float _118;
  float _120;
  float _131;
  float _132;
  float _137;
  float _139;
  float _155;
  float4 _167;
  float _174;
  float _178;
  float _182;
  float _184;
  float _185;
  float _186;
  float _187;
  float _189;
  float _191;
  float _192;
  float _204;
  float _213;
  float _226;
  float _239;
  float _251;
  float _260;
  float _269;
  float _278;
  float _280;
  float _281;
  float _282;
  float _283;
  float4 _286;
  float _292;
  float _295;
  float _298;
  float _307;
  float _316;
  float _325;
  float _326;
  float _327;
  float _328;
  int _331;
  int _339;
  float4 _350;
  int _356;
  float _364;
  float _366;
  float _368;
  float _370;
  uint2 _372;
  uint _387;
  int _389;
  float _393;
  float _398;
  float _400;
  float _401;
  float _402;
  float _416;
  float _417;
  float _418;
  float _419;
  float _421;
  int _424;
  float _432;
  int _435;
  float _443;
  float _446;
  float _449;
  float _450;
  float _451;
  float _452;
  float _453;
  float _454;
  float _455;
  float _456;
  float _457;
  float _458;
  float _461;
  float _464;
  float _467;
  float _470;
  float _473;
  float _476;
  float _479;
  float _482;
  float _485;
  float _488;
  float _491;
  float _494;
  float _497;
  float _500;
  int _503;
  float _511;
  float _512;
  float _513;
  float _514;
  float _515;
  float _516;
  float _517;
  float _526;
  float _527;
  float _528;
  float _530;
  float _532;
  float _534;
  float _537;
  float _544;
  float _551;
  float _558;
  float _569;
  bool _570;
  float _572;
  float _573;
  float _574;
  int _575;
  int _582;
  int _585;
  float _588;
  float _590;
  float _592;
  float _594;
  float _606;
  float _617;
  float _628;
  float _631;
  float _633;
  float _635;
  float _644;
  float _646;
  float _647;
  float _649;
  float _651;
  float _652;
  float _653;
  float _657;
  float _660;
  float _691;
  float _697;
  float _703;
  float4 _708;
  float4 _712;
  float _718;
  float _721;
  float _724;
  int _727;
  float _735;
  float _737;
  float _749;
  float _761;
  float _773;
  int _776;
  float4 _786;
  float _792;
  float _795;
  float _798;
  int _801;
  float _809;
  float _811;
  int _855;
  float _863;
  int _866;
  float _874;
  float _877;
  int _898;
  int _906;
  float4 _919;
  float _921;
  float _924;
  float _925;
  float _937;
  float _941;
  float _942;
  float _943;
  float _952;
  float _953;
  float _954;
  float4 _957;
  float _965;
  float _967;
  float _973;
  float _975;
  float _976;
  float _988;
  float _989;
  float _990;
  float _991;
  float _992;
  float _993;
  float _997;
  float _1000;
  bool _1002;
  float _1033;
  float _1036;
  float _1039;
  float4 _1042;
  int _1046;
  float _1054;
  float _1067;
  float _1069;
  float _1071;
  float _1077;
  float _1080;
  int _1093;
  uint _1099;
  uint _1102;
  uint4 _1104;
  float4 _1107;
  float _1114;
  float _1118;
  float _1122;
  float _1124;
  float _1125;
  float _1126;
  float _1127;
  float _1132;
  float _1136;
  float _1138;
  float _1140;
  float _1144;
  float _1146;
  float _1147;
  float _1148;
  float _1149;
  float _1151;
  float _1154;
  float _1155;
  float _1156;
  float _1157;
  float _1163;
  float _1169;
  float _1174;
  float _1176;
  float _1189;
  float _1192;
  float _1195;
  float _1208;
  float _1210;
  float _1212;
  float _1223;
  float _1232;
  float _1234;
  float _1235;
  float _1236;
  float _1237;
  float _1238;
  float _1247;
  float _1256;
  float _1265;
  float _1267;
  float _1268;
  float _1277;
  float _1286;
  float _1294;
  int _1295;
  float _1307;
  float _1309;
  float _1311;
  float _1323;
  float _1332;
  float _1343;
  float _1347;
  float _1351;
  float _1355;
  float _1359;
  float _1367;
  float _1375;
  float _1376;
  float _1380;
  float _1392;
  float _1397;
  float _1413;
  float _1417;
  float _1421;
  float _1427;
  float _1433;
  float _1439;
  float _1444;
  float _1450;
  float _1456;
  uint2 _1458;
  uint _1473;
  float _1478;
  float _1483;
  float _1485;
  float _1486;
  float _1487;
  float _1501;
  float _1502;
  float _1503;
  float _1504;
  float _1506;
  float _1507;
  float _1508;
  float _1509;
  int _1512;
  int _1520;
  float _1523;
  float _1526;
  float _1528;
  float _1537;
  float _1546;
  float _1555;
  int _1558;
  int _1566;
  float _1569;
  float _1572;
  float _1574;
  float _1575;
  float _1576;
  float _1580;
  int _1587;
  int _1595;
  float4 _1616;
  float _1630;
  float _1642;
  float _1657;
  float _1671;
  float _1685;
  float _1695;
  float _1704;
  float _1705;
  float _1718;
  float _1747;
  float _1748;
  float _1750;
  float _1848;
  float _1853;
  float _1854;
  float _1866;
  int _1869;
  float _1877;
  int _1880;
  float _1888;
  float _1895;
  float _1898;
  float _1901;
  float _1904;
  uint _1905;
  bool _1921;
  float _1927;
  float _1946;
  float _1962;
  float _1978;
  float _1979;
  float _1983;
  float _1986;
  float _1989;
  float _1996;
  float _2003;
  float _2010;
  float _2011;
  float _2012;
  float _2013;
  float _2014;
  float _2015;
  float _2016;
  float _2032;
  float _2048;
  float _2064;
  float _2065;
  float _2066;
  float _2067;
  float _2068;
  float _2085;
  float _2086;
  float _2087;
  float _2088;
  float _2091;
  float _2094;
  float _2098;
  float _2102;
  float _2106;
  float _2126;
  float _2138;
  float _2150;
  float _2162;
  float _2169;
  float _2176;
  float _2183;
  float _2189;
  float _2190;
  float _2192;
  float _2194;
  float _2196;
  float _2201;
  float _2222;
  float _2224;
  float _2227;
  float _2230;
  float _2233;
  float _2239;
  float _2281;
  float _2284;
  float _2290;
  float _2332;
  float _2349;
  float _2353;
  float _2357;
  int __loop_jump_target = -1;
  _35 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_38 < (uint)170000), _38, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._fishEyeMaxPower);
  bool __branch_chain_0;
  if (_46 > 0.001f) {
    __branch_chain_0 = true;
  } else {
    _51 = WaveReadLaneFirst(_materialIndex);
    _59 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_51 < (uint)170000), _51, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._fishEyeMaxPower);
    if (_59 < -0.001f) {
      __branch_chain_0 = true;
    } else {
      _151 = TEXCOORD.y;
      _152 = TEXCOORD.x;
      __branch_chain_0 = false;
    }
  }
  if (__branch_chain_0) {
    _64 = WaveReadLaneFirst(_materialIndex);
    _72 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_64 < (uint)170000), _64, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
    if (!(!(_72 >= 0.001f))) {
      _77 = WaveReadLaneFirst(_materialIndex);
      _85 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_77 < (uint)170000), _77, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._fishEyeMaxPower);
      _88 = WaveReadLaneFirst(_materialIndex);
      _96 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_88 < (uint)170000), _88, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
      _97 = _96 * _85;
      _98 = 0.5f / _35;
      _103 = ((_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x) + -0.5f;
      _107 = ((_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x) - _98;
      _108 = dot(float2(_103, _107), float2(_103, _107));
      _109 = sqrt(_108);
      if (_97 > 0.0f) {
        _113 = sqrt(dot(float2(0.5f, _98), float2(0.5f, _98)));
        _118 = (tan(_109 * _97) * _113) * rsqrt(_108);
        _120 = tan(_113 * _97);
        _147 = (((_118 * _107) / _120) + _98);
        _148 = (((_118 * _103) / _120) + 0.5f);
      } else {
        if (_97 < 0.0f) {
          _131 = select((_35 < 1.0f), 0.5f, _98);
          _132 = _97 * -10.0f;
          _137 = (atan(_109 * _132) * _131) * rsqrt(_108);
          _139 = atan(_131 * _132);
          _147 = (((_137 * _107) / _139) + _98);
          _148 = (((_137 * _103) / _139) + 0.5f);
        } else {
          _147 = 0.0f;
          _148 = 0.0f;
        }
      }
      _151 = (_147 * _35);
      _152 = _148;
    } else {
      _151 = TEXCOORD.y;
      _152 = TEXCOORD.x;
    }
  }
  _155 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_152, _151));  // [sem: _3__36__0__0__g_depth_sample]
  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _167 = __3__36__0__0__g_gbufferNormal.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _152) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _151) + -0.5f))), 0));
  _174 = (saturate(_167.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _178 = (saturate(_167.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _182 = (saturate(_167.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _184 = rsqrt(dot(float3(_174, _178, _182), float3(_174, _178, _182)));  // [sem: invLength]
  _185 = _184 * _174;
  _186 = _184 * _178;
  _187 = _182 * _184;
  _189 = (_152 * 2.0f) + -1.0f;
  _191 = 1.0f - (_151 * 2.0f);
  _192 = max(1e-07f, _155.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _204 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _192, mad((_invViewProj[3].y), _191, ((_invViewProj[3].x) * _189)));
  _213 = (mad((_invViewProj[0].z), _192, mad((_invViewProj[0].y), _191, ((_invViewProj[0].x) * _189))) + (_invViewProj[0].w)) / _204;
  _226 = ((_invViewProj[1].w) + mad((_invViewProj[1].z), _192, mad((_invViewProj[1].y), _191, ((_invViewProj[1].x) * _189)))) / _204;
  _239 = ((_invViewProj[2].w) + mad((_invViewProj[2].z), _192, mad((_invViewProj[2].y), _191, ((_invViewProj[2].x) * _189)))) / _204;
  _251 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _192, mad((_invViewProjRelative[3].y), _191, ((_invViewProjRelative[3].x) * _189)));
  _260 = (mad((_invViewProjRelative[0].z), _192, mad((_invViewProjRelative[0].y), _191, ((_invViewProjRelative[0].x) * _189))) + (_invViewProjRelative[0].w)) / _251;
  _269 = (mad((_invViewProjRelative[1].z), _192, mad((_invViewProjRelative[1].y), _191, ((_invViewProjRelative[1].x) * _189))) + (_invViewProjRelative[1].w)) / _251;
  _278 = (mad((_invViewProjRelative[2].z), _192, mad((_invViewProjRelative[2].y), _191, ((_invViewProjRelative[2].x) * _189))) + (_invViewProjRelative[2].w)) / _251;
  _280 = rsqrt(dot(float3(_260, _269, _278), float3(_260, _269, _278)));  // [sem: invLength]
  _281 = _280 * _260;
  _282 = _280 * _269;
  _283 = _280 * _278;
  _286 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_152, _151));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _292 = (pow(_286.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _295 = (pow(_286.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _298 = (pow(_286.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _307 = exp2(log2(max(0.0f, (_292 + -0.8359375f)) / (18.851562f - (_292 * 18.6875f))) * 6.277395f) * 10000.0f;
  _316 = exp2(log2(max(0.0f, (_295 + -0.8359375f)) / (18.851562f - (_295 * 18.6875f))) * 6.277395f) * 10000.0f;
  _325 = exp2(log2(max(0.0f, (_298 + -0.8359375f)) / (18.851562f - (_298 * 18.6875f))) * 6.277395f) * 10000.0f;
  _326 = 4.0f / _35;
  _327 = _326 * _152;
  _328 = _326 * _151;
  _331 = WaveReadLaneFirst(_materialIndex);
  _339 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_331 < (uint)170000), _331, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._noiseTex);
  _350 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_339 < (uint)65000), _339, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_327, ((_time.x * 0.1f) + _328)));
  _356 = WaveReadLaneFirst(_materialIndex);
  _364 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_356 < (uint)170000), _356, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _366 = _364 * (_350.y + -0.3f);
  _368 = (_366 * 0.001f) + _152;
  _370 = (_366 * 0.02f) + _151;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_372.x, _372.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
  _387 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_372.x))))))) + 0.5f) * _368)), ((int)((((float)((int)((int)((float)((int)((int)(_372.y))))))) + 0.5f) * _370)), 0));
  _389 = _387.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _393 = (((float)((uint)((uint)((uint)((uint)(_387.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _398 = (((float)((uint)((uint)(((uint)((uint)(_387.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
  _400 = 1.0f - abs(_393);
  _401 = abs(_398);
  _402 = _400 - _401;
  if (!(_402 >= 0.0f)) {
    _413 = (select((_398 >= 0.0f), 1.0f, -1.0f) * _400);
    _414 = (select((_393 >= 0.0f), 1.0f, -1.0f) * (1.0f - _401));
  } else {
    _413 = _398;
    _414 = _393;
  }
  _416 = rsqrt(dot(float3(_414, _413, _402), float3(_414, _413, _402)));  // [sem: invLength]
  _417 = _416 * _414;
  _418 = _416 * _413;
  _419 = _416 * _402;
  _421 = rsqrt(dot(float3(_417, _418, _419), float3(_417, _418, _419)));  // [sem: invLength]
  _424 = WaveReadLaneFirst(_materialIndex);
  _432 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_424 < (uint)170000), _424, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._radius);
  _435 = WaveReadLaneFirst(_materialIndex);
  _443 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_435 < (uint)170000), _435, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _446 = saturate(1.0f - _443) * _432;
  if (!(!(_446 >= 0.001f))) {
    _449 = ddx_coarse(_281);
    _450 = ddx_coarse(_282);
    _451 = ddx_coarse(_283);
    _452 = ddy_coarse(_281);
    _453 = ddy_coarse(_282);
    _454 = ddy_coarse(_283);
    _455 = ddx_coarse(_152);
    _456 = ddx_coarse(_151);
    _457 = ddy_coarse(_152);
    _458 = ddy_coarse(_151);
    _461 = (_453 * _187) - (_454 * _186);
    _464 = (_454 * _185) - (_452 * _187);
    _467 = (_452 * _186) - (_453 * _185);
    _470 = (_451 * _186) - (_450 * _187);
    _473 = (_449 * _187) - (_451 * _185);
    _476 = (_450 * _185) - (_449 * _186);
    _479 = (_457 * _470) + (_461 * _455);
    _482 = (_457 * _473) + (_464 * _455);
    _485 = (_457 * _476) + (_467 * _455);
    _488 = (_458 * _470) + (_461 * _456);
    _491 = (_458 * _473) + (_464 * _456);
    _494 = (_458 * _476) + (_456 * _467);
    _497 = max(dot(float3(_479, _482, _485), float3(_479, _482, _485)), dot(float3(_488, _491, _494), float3(_488, _491, _494)));
    _500 = rsqrt(select((!(_497 == 0.0f)), _497, 0.1f));  // [sem: rsqrt_val]
    _503 = WaveReadLaneFirst(_materialIndex);
    _511 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_503 < (uint)170000), _503, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._squareSize);
    _512 = _511 * _213;
    _513 = _511 * _226;
    _514 = _511 * _239;
    _515 = floor(_512);
    _516 = floor(_513);
    _517 = floor(_514);
    _519 = -1;
    _520 = 0.0f;
    _521 = 0.0f;
    _522 = 0.0f;
    _523 = 10.0f;
    _524 = -1;
    _525 = -1;
    while(true) {
      _579 = _524;
      _580 = _525;
      _526 = (float)((int)(_519));
      _527 = (float)((int)(_524));
      _528 = (float)((int)(_525));
      _530 = sin(_526 + _515);
      _532 = sin(_527 + _516);
      _534 = sin(_528 + _517);
      _537 = _time.x * 0.2f;
      _544 = sin(frac(sin(dot(float3(_530, _532, _534), float3(12.989f, 78.233f, 37.719f))) * 143758.55f) * _537) + _526;
      _551 = sin(frac(sin(dot(float3(_530, _532, _534), float3(39.346f, 11.135f, 83.155f))) * 143758.55f) * _537) + _527;
      _558 = sin(frac(sin(dot(float3(_530, _532, _534), float3(73.156f, 52.235f, 9.151f))) * 143758.55f) * _537) + _528;
      _569 = max(abs((_515 - _512) + _544), max(abs((_516 - _513) + _551), abs((_517 - _514) + _558)));
      _570 = (_569 < _523);
      _572 = select(_570, _544, _522);
      _573 = select(_570, _551, _521);
      _574 = select(_570, _558, _520);
      _575 = (int)(_519) + (int)(1);
      if (!(_575 == 2)) {
        _578 = _575;
        _579 = _524;
        _580 = _525;
        while(true) {
          _519 = _578;
          _520 = _574;
          _521 = _573;
          _522 = _572;
          _523 = select(_570, _569, _523);
          _524 = _579;
          _525 = _580;
          __loop_jump_target = 518;
          break;
          break;
        }
        if (__loop_jump_target == 518) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _582 = (int)(_524) + (int)(1);
      if (!(_582 == 2)) {
        _578 = -1;
        _579 = _582;
        _580 = _525;
        while(true) {
          _519 = _578;
          _520 = _574;
          _521 = _573;
          _522 = _572;
          _523 = select(_570, _569, _523);
          _524 = _579;
          _525 = _580;
          __loop_jump_target = 518;
          break;
          break;
        }
        if (__loop_jump_target == 518) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _585 = (int)(_525) + (int)(1);
      if (!(_585 == 2)) {
        _578 = -1;
        _579 = -1;
        _580 = _585;
        while(true) {
          _519 = _578;
          _520 = _574;
          _521 = _573;
          _522 = _572;
          _523 = select(_570, _569, _523);
          _524 = _579;
          _525 = _580;
          __loop_jump_target = 518;
          break;
          break;
        }
        if (__loop_jump_target == 518) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _588 = _500 * _281;
      _590 = (_572 + _515) / _511;
      _592 = (_573 + _516) / _511;
      _594 = (_574 + _517) / _511;
      _606 = (_viewProj[3].w) + mad((_viewProj[3].z), _594, mad((_viewProj[3].y), _592, ((_viewProj[3].x) * _590)));
      _617 = (((mad((_viewProj[0].z), _594, mad((_viewProj[0].y), _592, ((_viewProj[0].x) * _590))) + (_viewProj[0].w)) / _606) * 0.5f) + 0.5f;
      _628 = 0.5f - (((mad((_viewProj[1].z), _594, mad((_viewProj[1].y), _592, ((_viewProj[1].x) * _590))) + (_viewProj[1].w)) / _606) * 0.5f);
      _631 = _590 - _mainPosition.x;
      _633 = _592 - _mainPosition.y;
      _635 = _594 - _mainPosition.z;
      // [sem: expr_sat]
      _644 = saturate(1.0f - ((1.0f - (sqrt(dot(float3(_631, _633, _635), float3(_631, _633, _635))) * (1.0f / max(1e-05f, _446)))) * 1.0152284f));
      _646 = 1.0f - saturate(_644);
      _647 = _644 * 0.5f;
      _649 = (_152 - _617) / _646;
      _651 = (_151 - _628) / _646;
      _652 = sin(_647);
      _653 = cos(_647);
      _657 = mad((-0.0f - _652), _651, (_653 * _649)) + _617;
      _660 = mad(_653, _651, (_652 * _649)) + _628;
      _662 = 1;
      _663 = 0.0f;
      _664 = 0.0f;
      _665 = 0.0f;
      while(true) {
        _691 = ((((float)((int)((int)(6) - (int)(_662)))) * 0.083333336f) * saturate(_155.x * 1.5f)) * saturate(frac(sin(dot(float2(((float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(_152))))), ((float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(_151)))))), float2(12.9898f, 78.233f))) * 43758.547f) + 0.5f);
        _697 = mad((_500 * _485), _283, mad((_500 * _482), _282, (_588 * _479))) * _691;
        _703 = mad((_500 * _494), _283, mad((_500 * _491), _282, (_588 * _488))) * _691;
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _708 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_697 + _152), (_703 + _151)));
        // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _712 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_697 + _657), (_703 + _660)));
        _718 = (pow(_712.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _721 = (pow(_712.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _724 = (pow(_712.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _727 = WaveReadLaneFirst(_materialIndex);
        _735 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_727 < (uint)170000), _727, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._maskThreshold);
        _737 = (float)((bool)(_708.w < _735));
        _749 = (((exp2(log2(max(0.0f, (_718 + -0.8359375f)) / (18.851562f - (_718 * 18.6875f))) * 6.277395f) * 4000.0f) - _665) * _737) + _665;
        _761 = (((exp2(log2(max(0.0f, (_721 + -0.8359375f)) / (18.851562f - (_721 * 18.6875f))) * 6.277395f) * 4000.0f) - _664) * _737) + _664;
        _773 = (((exp2(log2(max(0.0f, (_724 + -0.8359375f)) / (18.851562f - (_724 * 18.6875f))) * 6.277395f) * 4000.0f) - _663) * _737) + _663;
        if (!(_708.w > 0.9f)) {
          _776 = (int)(_662) + (int)(1);
          if ((int)_776 < (int)6) {
            _779 = _776;
            _780 = _773;
            _781 = _761;
            _782 = _749;
            while(true) {
              _662 = _779;
              _663 = _780;
              _664 = _781;
              _665 = _782;
              __loop_jump_target = 661;
              break;
              break;
            }
            if (__loop_jump_target == 661) {
              __loop_jump_target = -1;
              continue;
            }
            if (__loop_jump_target != -1) {
              break;
            }
          }
        }
        _786 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_657, _660));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _792 = (pow(_786.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _795 = (pow(_786.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _798 = (pow(_786.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
        _801 = WaveReadLaneFirst(_materialIndex);
        _809 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_801 < (uint)170000), _801, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._maskThreshold);
        _811 = (float)((bool)(_708.w < _809));
        if (!((_global_0[0]) == 0)) {
          _779 = _662;
          _780 = _663;
          _781 = _664;
          _782 = _665;
          while(true) {
            _662 = _779;
            _663 = _780;
            _664 = _781;
            _665 = _782;
            __loop_jump_target = 661;
            break;
            break;
          }
          if (__loop_jump_target == 661) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
        }
        _850 = ((((exp2(log2(max(0.0f, (_798 + -0.8359375f)) / (18.851562f - (_798 * 18.6875f))) * 6.277395f) * 10000.0f) - _773) * _811) + _773);
        _851 = ((((exp2(log2(max(0.0f, (_795 + -0.8359375f)) / (18.851562f - (_795 * 18.6875f))) * 6.277395f) * 10000.0f) - _761) * _811) + _761);
        _852 = ((((exp2(log2(max(0.0f, (_792 + -0.8359375f)) / (18.851562f - (_792 * 18.6875f))) * 6.277395f) * 10000.0f) - _749) * _811) + _749);
        break;
      }
      break;
    }
  } else {
    _850 = 0.0f;
    _851 = 0.0f;
    _852 = 0.0f;
  }
  _855 = WaveReadLaneFirst(_materialIndex);
  _863 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_855 < (uint)170000), _855, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _866 = WaveReadLaneFirst(_materialIndex);
  _874 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_866 < (uint)170000), _866, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _877 = saturate((_874 * 100.0f) + -99.0f);  // [sem: expr_sat]
  if (!(!(_877 >= 0.001f))) {
    if ((_389 == _renderPassSelfPlayer) || (_389 == _renderPassTest) || (_389 == _renderPassDetectRemoteCatch) || (_389 == _renderPassDetectPickedRemoteCatch)) {
      _898 = WaveReadLaneFirst(_materialIndex);
      _906 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_898 < (uint)170000), _898, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._noiseTex);
      _919 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_906 < (uint)65000), _906, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_327 - (_time.x * 0.22f)), (_328 - (_time.x * 0.18f))));
      _921 = _919.x + -0.3f;
      _924 = ((_919.x + -0.4f) * 10.471975f) + -1.5707964f;
      _925 = _921 * 0.006f;
      _927 = -1.0f;
      _928 = 0.0f;
      _929 = 0.0f;
      _930 = 0.0f;
      _931 = 0.0f;
      _932 = _925;
      _933 = _925;
      while(true) {
        _937 = _152 - ((_933 * _927) * sin(_924));
        _941 = _151 - ((_932 * _927) * cos(_924));
        _942 = _937 + -0.5f;
        _943 = _941 + -0.5f;
        _952 = ((_921 * 0.06f) * rsqrt(dot(float2(_942, _943), float2(_942, _943)))) * sqrt((_943 * _943) + (_942 * _942));
        _953 = _952 * _942;
        _954 = _952 * _943;
        _957 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_937, _941));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _965 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_937 - _953), (_941 - _954))))).x) * 0.2f) + _931;
        _967 = (_957.y * 0.2f) + _930;
        _973 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_953 + _937), (_954 + _941))))).z) * 0.2f) + _929;
        _975 = (_957.w * 0.2f) + _928;
        _976 = _927 + 0.2f;
        if (!(!(_976 <= 1.0f))) {
          _988 = _933 * 1.01f;
          _989 = _932 * 1.01f;
          _990 = _965 * 0.9f;
          _991 = _967 * 0.9f;
          _992 = _973 * 0.9f;
          _993 = _975 * 0.9f;
          _927 = _976;
          _928 = _993;
          _929 = _992;
          _930 = _991;
          _931 = _990;
          _932 = _989;
          _933 = _988;
          continue;
        }
        if (!(_389 == _renderPassSelfPlayer)) {
          _995 = ((int)(uint)((int)(_389 == _renderPassTest)));
        } else {
          _995 = 1;
        }
        _997 = saturate(_975 * 1.08f);  // [sem: expr_sat]
        _1000 = max(0.001f, _exposure0.x);
        _1002 = (_995 != 0);
        _1016 = (((_973 * 0.54f) / _1000) * _997);
        _1017 = ((((_967 * 0.54f) * select(_1002, 0.7f, 0.8f)) / _1000) * _997);
        _1018 = ((((_965 * 0.54f) * select(_1002, 0.55f, 0.5f)) / _1000) * _997);
        break;
      }
    } else {
      _1016 = 0.0f;
      _1017 = 0.0f;
      _1018 = 0.0f;
    }
  } else {
    _1016 = 0.0f;
    _1017 = 0.0f;
    _1018 = 0.0f;
  }
  if (!(_389 == _renderPassSelfPlayer)) {
    if (!(_389 == _renderPassTest)) {
      _1030 = saturate(_863 * 2.0f);  // [sem: expr_sat]
    } else {
      _1030 = _877;  // [sem: expr_sat]
    }
  } else {
    _1030 = _877;  // [sem: expr_sat]
  }
  _1033 = (_1030 * (_850 - _325)) + _325;
  _1036 = (_1030 * (_851 - _316)) + _316;
  _1039 = (_1030 * (_852 - _307)) + _307;
  _1042 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_152, _151), 0.0f);  // [sem: _3__36__0__0__g_specularAO_sampleLod]
  _1046 = WaveReadLaneFirst(_materialIndex);
  _1054 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1046 < (uint)170000), _1046, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightBackground);
  if (!(!(_1054 >= 0.001f))) {
    if (!(_389 == _renderPassSelfPlayer)) {
      if (!(_389 == _renderPassTest)) {
        _1067 = _213 - _mainPosition.x;
        _1069 = _226 - _mainPosition.y;
        _1071 = _239 - _mainPosition.z;
        _1077 = sqrt(((_1069 * _1069) + (_1067 * _1067)) + (_1071 * _1071));
        _1080 = 1.0f - saturate(_1077 * 0.033333335f);
        _1093 = (((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _152) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _151) + -0.5f))), 0)))).x) & 127;
        if ((uint)((int)(_1093) + (int)(-52)) < (uint)16) {
          _1099 = (uint)((_bufferSizeAndInvSize.x * _368) + -0.5f);
          _1102 = (uint)((_bufferSizeAndInvSize.y * _370) + -0.5f);
          _1104 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_1099, _1102, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
          _1107 = __3__36__0__0__g_gbufferNormal.Load(int3(_1099, _1102, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
          _1114 = (saturate(_1107.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _1118 = (saturate(_1107.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _1122 = (saturate(_1107.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
          _1124 = rsqrt(dot(float3(_1114, _1118, _1122), float3(_1114, _1118, _1122)));  // [sem: invLength]
          _1125 = _1124 * _1114;
          _1126 = _1124 * _1118;
          _1127 = _1122 * _1124;
          _1132 = (((float)((uint)((uint)(((uint)((uint)(_1104.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _1136 = (((float)((uint)((uint)(_1104.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
          _1138 = (_1132 + _1136) * 0.5f;
          _1140 = (_1132 - _1136) * 0.5f;
          _1144 = (1.0f - abs(_1138)) - abs(_1140);
          _1146 = rsqrt(dot(float3(_1138, _1140, _1144), float3(_1138, _1140, _1144)));  // [sem: invLength]
          _1147 = _1146 * _1138;
          _1148 = _1146 * _1140;
          _1149 = _1146 * _1144;
          _1151 = select((_1127 >= 0.0f), 1.0f, -1.0f);
          _1154 = -0.0f - (1.0f / (_1151 + _1127));
          _1155 = _1126 * _1154;
          _1156 = _1155 * _1125;
          _1157 = _1151 * _1125;
          _1163 = mad(_1149, _1125, mad(_1148, _1156, ((((_1157 * _1125) * _1154) + 1.0f) * _1147)));
          _1169 = mad(_1149, _1126, mad(_1148, ((_1155 * _1126) + _1151), ((_1147 * _1151) * _1156)));
          _1174 = mad(_1149, _1127, mad(_1148, (-0.0f - _1126), (-0.0f - (_1157 * _1147))));
          _1176 = rsqrt(dot(float3(_1163, _1169, _1174), float3(_1163, _1169, _1174)));  // [sem: invLength]
          _1189 = 1.0f - saturate(dot(float3((_1176 * _1163), (_1176 * _1169), (_1176 * _1174)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
          _1192 = max(0.001f, _exposure0.x);
          _1195 = (_1189 * _1189) * (_1080 * _1054);
          _1404 = _1042.w;
          _1405 = (((0.1f / _1192) * _1195) + _1033);
          _1406 = (((0.08f / _1192) * _1195) + _1036);
          _1407 = (((0.05f / _1192) * _1195) + _1039);
        } else {
          _1208 = _213 - _aimHighlightPosition.x;
          _1210 = _226 - _aimHighlightPosition.y;
          _1212 = _239 - _aimHighlightPosition.z;
          _1223 = 1.0f - saturate(sqrt(((_1210 * _1210) + (_1208 * _1208)) + (_1212 * _1212)) / (_aimHighlightPosition.w * 5.0f));
          _1232 = saturate(((_1223 * _1223) * _1223) + ((1.0f - saturate(_1077 * 0.5f)) * 0.1f)) * _1042.w;
          _1234 = (_1042.w * _1042.w) * _1080;
          _1235 = _1232 * 0.875f;
          _1236 = _1232 * 1.625f;
          _1237 = _1232 * 2.5f;
          _1238 = _1232 * 60.0f;
          _1247 = (((1.0f - saturate(_1238 + -2.0f)) * saturate(_1238 + -1.5f)) * (0.35f - _1235)) + _1235;
          _1256 = (((0.65f - _1236) * saturate(_1238 + -1.7f)) * (1.0f - saturate(_1238 + -3.0f))) + _1236;
          _1265 = ((saturate(_1238 + -2.2f) * (1.0f - _1237)) * (1.0f - saturate(_1238 + -6.0f))) + _1237;
          _1267 = saturate(_1238 + -7.0f);  // [sem: expr_sat]
          _1268 = 1.0f - _1234;
          _1277 = (((((_1267 * ((_1232 * 1.75f) - _1247)) + _1247) * _1268) + (_1234 * 0.35f)) * _1054) + _1039;
          _1286 = (((((((_1232 * 3.25f) - _1256) * _1267) + _1256) * _1268) + (_1234 * 0.65f)) * _1054) + _1036;
          _1294 = (((((((_1232 * 5.0f) - _1265) * _1267) + _1265) * _1268) + _1234) * _1054) + _1033;
          _1295 = (int)(_1093) + (int)(-105);
          if (((uint)_1295 < (uint)2) || (((_1093 == 107) || (_1093 == 26)) || ((uint)((int)(_1093) + (int)(-27)) < (uint)2))) {
            _1307 = _mainPosition.x - _viewPos.x;
            _1309 = _mainPosition.y - _viewPos.y;
            _1311 = _mainPosition.z - _viewPos.z;
            _1323 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _1311, mad((_viewProjRelative[3].y), _1309, ((_viewProjRelative[3].x) * _1307)));
            _1332 = (mad((_viewProjRelative[0].z), _1311, mad((_viewProjRelative[0].y), _1309, ((_viewProjRelative[0].x) * _1307))) + (_viewProjRelative[0].w)) / _1323;
            _1343 = 0.5f - (((mad((_viewProjRelative[1].z), _1311, mad((_viewProjRelative[1].y), _1309, ((_viewProjRelative[1].x) * _1307))) + (_viewProjRelative[1].w)) / _1323) * 0.5f);
            _1347 = ((_view[0].x) * 5.0f) + _1307;
            _1351 = ((_view[0].y) * 5.0f) + _1309;
            _1355 = ((_view[0].z) * 5.0f) + _1311;
            _1359 = mad((_viewProjRelative[3].z), _1355, mad((_viewProjRelative[3].y), _1351, (_1347 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
            _1367 = (0.5f - (((mad((_viewProjRelative[1].z), _1355, mad((_viewProjRelative[1].y), _1351, (_1347 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _1359) * 0.5f)) - _1343;
            _1375 = (_35 * 0.5f) * (((mad((_viewProjRelative[0].z), _1355, mad((_viewProjRelative[0].y), _1351, (_1347 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _1359) - _1332);
            _1376 = _151 - _1343;
            _1380 = ((_152 + -0.5f) - (_1332 * 0.5f)) * _35;
            _1392 = 1.0f - saturate(sqrt((_1376 * _1376) + (_1380 * _1380)) / max(0.001f, sqrt((_1375 * _1375) + (_1367 * _1367))));
            _1397 = (_1392 * _1392) * (select(((uint)_1295 < (uint)3), 0.05f, 0.005f) * _1054);
            _1404 = _1234;
            _1405 = (_1397 + _1294);
            _1406 = ((_1397 * 0.65f) + _1286);
            _1407 = ((_1397 * 0.35f) + _1277);
          } else {
            _1404 = _1234;
            _1405 = _1294;
            _1406 = _1286;
            _1407 = _1277;
          }
        }
      } else {
        _1404 = _1042.w;
        _1405 = _1033;
        _1406 = _1036;
        _1407 = _1039;
      }
    } else {
      _1404 = _1042.w;
      _1405 = _1033;
      _1406 = _1036;
      _1407 = _1039;
    }
  } else {
    _1404 = _1042.w;
    _1405 = _1033;
    _1406 = _1036;
    _1407 = _1039;
  }
  if (_877 > 0.0f) {
    _1413 = ((float)((int)((int)(_213 * 2000.0f)))) * 0.0005f;
    _1417 = ((float)((int)((int)(_226 * 2000.0f)))) * 0.0005f;
    _1421 = ((float)((int)((int)(_239 * 2000.0f)))) * 0.0005f;
    _1427 = saturate(frac(sin(dot(float3(_1413, _1417, _1421), float3(127.1f, 311.7f, 74.7f))) * 43758.547f) + -0.5f);  // [sem: expr_sat]
    _1433 = saturate(frac(sin(dot(float3(_1413, _1417, _1421), float3(269.5f, 183.3f, 246.1f))) * 43758.547f) + -0.5f);  // [sem: expr_sat]
    _1439 = saturate(frac(sin(dot(float3(_1413, _1417, _1421), float3(113.5f, 271.9f, 124.6f))) * 43758.547f) + -0.5f);  // [sem: expr_sat]
    _1444 = frac(sin(dot(float2(_152, _151), float2(127.1f, 311.7f))) * 437.545f) * 0.5f;
    _1450 = ((frac((_1433 + _1427) - _1439) - _1444) * 0.025f) + _152;
    _1456 = ((frac((_1433 - _1427) + _1439) - _1444) * 0.025f) + _151;
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_1458.x, _1458.y);
    // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
    _1473 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_1458.x))))))) + 0.5f) * _1450)), ((int)((((float)((int)((int)((float)((int)((int)(_1458.y))))))) + 0.5f) * _1456)), 0));
    _1478 = (((float)((uint)((uint)((uint)((uint)(_1473.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _1483 = (((float)((uint)((uint)(((uint)((uint)(_1473.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _1485 = 1.0f - abs(_1478);
    _1486 = abs(_1483);
    _1487 = _1485 - _1486;
    if (!(_1487 >= 0.0f)) {
      _1498 = (select((_1483 >= 0.0f), 1.0f, -1.0f) * _1485);
      _1499 = (select((_1478 >= 0.0f), 1.0f, -1.0f) * (1.0f - _1486));
    } else {
      _1498 = _1483;
      _1499 = _1478;
    }
    _1501 = rsqrt(dot(float3(_1499, _1498, _1487), float3(_1499, _1498, _1487)));  // [sem: invLength]
    _1502 = _1501 * _1499;
    _1503 = _1501 * _1498;
    _1504 = _1501 * _1487;
    _1506 = rsqrt(dot(float3(_1502, _1503, _1504), float3(_1502, _1503, _1504)));  // [sem: invLength]
    _1507 = _1506 * _1502;
    _1508 = _1506 * _1503;
    _1509 = _1506 * _1504;
    _1512 = WaveReadLaneFirst(_materialIndex);
    _1520 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1512 < (uint)170000), _1512, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimGimmickColor);
    _1523 = (float)((uint)((uint)(((uint)((uint)(_1520)) >> 16) & 255)));
    _1526 = (float)((uint)((uint)(((uint)((uint)(_1520)) >> 8) & 255)));
    _1528 = (float)((uint)((uint)(_1520 & 255)));
    _1537 = select(((_1523 * 0.003921569f) < 0.04045f), (_1523 * 0.000303527f), exp2(log2((_1523 * 0.003717127f) + 0.052132703f) * 2.4f));
    _1546 = select(((_1526 * 0.003921569f) < 0.04045f), (_1526 * 0.000303527f), exp2(log2((_1526 * 0.003717127f) + 0.052132703f) * 2.4f));
    _1555 = select(((_1528 * 0.003921569f) < 0.04045f), (_1528 * 0.000303527f), exp2(log2((_1528 * 0.003717127f) + 0.052132703f) * 2.4f));
    _1558 = WaveReadLaneFirst(_materialIndex);
    _1566 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1558 < (uint)170000), _1558, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightColor);
    _1569 = (float)((uint)((uint)(((uint)((uint)(_1566)) >> 16) & 255)));
    _1572 = (float)((uint)((uint)(((uint)((uint)(_1566)) >> 8) & 255)));
    _1574 = (float)((uint)((uint)(_1566 & 255)));
    _1575 = _152 + -0.5f;
    _1576 = _151 + -0.5f;
    _1580 = sqrt((_1575 * _1575) + (_1576 * _1576));
    if (_389 == _renderPassAimHighlight) {
      _1587 = WaveReadLaneFirst(_materialIndex);
      _1595 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1587 < (uint)170000), _1587, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._auraTex);
      _1616 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1595 < (uint)65000), _1595, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((8.0f / _35) * _152) + ((_350.w + -0.5f) * 0.1f)), ((((5.0f / _35) * _151) + ((_350.z + -0.5f) * 0.1f)) - (_time.x * 0.02f))));
      _1630 = max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _152)), ((int)(_customRenderPassSizeInvSize.y * _151)), 0)))).x));
      _1642 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _1630, mad((_invViewProj[3].y), _191, ((_invViewProj[3].x) * _189)));
      _1657 = (((mad((_invViewProj[0].z), _1630, mad((_invViewProj[0].y), _191, ((_invViewProj[0].x) * _189))) + (_invViewProj[0].w)) / _1642) - _aimHighlightPosition.x) - ((_1616.x + -0.5f) * 0.4f);
      _1671 = (((mad((_invViewProj[1].z), _1630, mad((_invViewProj[1].y), _191, ((_invViewProj[1].x) * _189))) + (_invViewProj[1].w)) / _1642) - _aimHighlightPosition.y) - ((_1616.y + -0.5f) * 0.4f);
      _1685 = (((mad((_invViewProj[2].z), _1630, mad((_invViewProj[2].y), _191, ((_invViewProj[2].x) * _189))) + (_invViewProj[2].w)) / _1642) - _aimHighlightPosition.z) - ((_1616.z + -0.5f) * 0.4f);
      _1695 = 1.0f - saturate(sqrt(((_1671 * _1671) + (_1657 * _1657)) + (_1685 * _1685)) / _aimHighlightPosition.w);
      _1704 = (_1695 * 0.3333f) * (sin((_time.x * 10.0f) + (_1695 * 20.0f)) + 1.5f);
      _1705 = _1704 * _1704;
      _1718 = (((((_1705 * _1705) * ((pow(_1695, 5.0f)) * 7.999999e+06f)) * _1705) + 1.0f) / max(0.001f, _exposure0.x)) * _1705;
      if (((_nearFarProj.x / _192) + 0.05f) < (_nearFarProj.x / _1630)) {
        _1747 = 1.0f - saturate(dot(float3(((((_421 * _417) - _1507) * 0.75f) + _1507), ((((_421 * _418) - _1508) * 0.75f) + _1508), ((((_421 * _419) - _1509) * 0.75f) + _1509)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
        _1748 = _1747 * _1747;
        _1750 = (_1748 * _1748) * _1747;
        _1774 = ((_1750 * (lerp(_1555, 1.0f, 0.3f))) + (_1405 * 4.0f));
        _1775 = ((_1750 * (lerp(_1546, 0.65f, 0.3f))) + (_1406 * 4.0f));
        _1776 = ((_1750 * (lerp(_1537, 0.35f, 0.3f))) + (_1407 * 4.0f));
      } else {
        _1774 = (_1555 * _1404);
        _1775 = (_1546 * _1404);
        _1776 = (_1537 * _1404);
      }
      _1860 = ((((_1774 - _1405) + (select(((_1574 * 0.003921569f) < 0.04045f), (_1574 * 0.000303527f), exp2(log2((_1574 * 0.003717127f) + 0.052132703f) * 2.4f)) * _1718)) * _877) + _1405);
      _1861 = ((((_1775 - _1406) + (select(((_1572 * 0.003921569f) < 0.04045f), (_1572 * 0.000303527f), exp2(log2((_1572 * 0.003717127f) + 0.052132703f) * 2.4f)) * _1718)) * _877) + _1406);
      _1862 = ((((_1776 - _1407) + (select(((_1569 * 0.003921569f) < 0.04045f), (_1569 * 0.000303527f), exp2(log2((_1569 * 0.003717127f) + 0.052132703f) * 2.4f)) * _1718)) * _877) + _1407);
      _1863 = _1580;
    } else {
      if (((float)((uint)((uint)(_1473.x & 255)))) == ((float)((uint)((uint)(_renderPassAimHighlight))))) {
        if (((_nearFarProj.x / _192) + 0.05f) < (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1450)), ((int)(_customRenderPassSizeInvSize.y * _1456)), 0)))).x)))) {
          _1848 = min(max(saturate(1.0f - (_1580 * 2.0f)), 0.1f), 1.0f) * 0.05f;
          _1860 = (_1848 * _1555);
          _1861 = (_1848 * _1546);
          _1862 = (_1848 * _1537);
          _1863 = _1580;
        } else {
          _1860 = _1405;
          _1861 = _1406;
          _1862 = _1407;
          _1863 = _1580;
        }
      } else {
        _1860 = _1405;
        _1861 = _1406;
        _1862 = _1407;
        _1863 = _1580;
      }
    }
  } else {
    _1853 = _152 + -0.5f;
    _1854 = _151 + -0.5f;
    _1860 = _1405;
    _1861 = _1406;
    _1862 = _1407;
    _1863 = sqrt((_1853 * _1853) + (_1854 * _1854));
  }
  _1866 = saturate((_1863 + -0.01f) * 1.010101f);  // [sem: expr_sat]
  _1869 = WaveReadLaneFirst(_materialIndex);
  _1877 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1869 < (uint)170000), _1869, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._vignetteIntensity);
  _1880 = WaveReadLaneFirst(_materialIndex);
  _1888 = WaveReadLaneFirst(BindlessParameters_PostProcessAimHighlight_CD[((int)((uint)((uint)(select(((uint)_1880 < (uint)170000), _1880, 0))) + (uint)(0)))].BindlessParameters_PostProcessAimHighlight_CD._aimHighlightProgress);
  _1895 = 1.0f - ((((_1866 * _1866) * (3.0f - (_1866 * 2.0f))) * _1877) * _1888);
  _1898 = max(0.0f, (_1895 * (_1862 + _1018)));
  _1901 = max(0.0f, (_1895 * (_1861 + _1017)));
  _1904 = max(0.0f, (_1895 * (_1860 + _1016)));
  _1905 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1918 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1905, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1918 = 1.0f;
  }
  _1921 = (_localToneMappingParams.w > 0.0f);
  if (_1921) {
    _1927 = _exposure0.x * _userImageAdjust.z;
    _1946 = exp2(_powerParams.x * log2(max(0.0f, (((_1927 * max(0.0f, (((_1898 * 1.70505f) - (_1901 * 0.62179f)) - (_1904 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _1962 = exp2(log2(max(0.0f, (((_slopeParams.y * _1927) * max(0.0f, (((_1901 * 1.1408f) - (_1898 * 0.13026f)) - (_1904 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _1978 = exp2(log2(max(0.0f, (((_slopeParams.z * _1927) * max(0.0f, (((_1898 * -0.024f) - (_1901 * 0.12897f)) + (_1904 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _1979 = dot(float3(_1946, _1962, _1978), float3(0.212671f, 0.71516f, 0.072169f));
    _1983 = ((_1946 - _1979) * _powerParams.w) + _1979;
    _1986 = ((_1962 - _1979) * _powerParams.w) + _1979;
    _1989 = ((_1978 - _1979) * _powerParams.w) + _1979;
    _1996 = min(max(log2(mad(_1989, 0.079223745f, mad(_1986, 0.0784336f, (_1983 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _2003 = min(max(log2(mad(_1989, 0.07916613f, mad(_1986, 0.87846863f, (_1983 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _2010 = min(max(log2(mad(_1989, 0.879143f, mad(_1986, 0.0784336f, (_1983 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _2011 = _1996 * 0.060606062f;
    _2012 = _2003 * 0.060606062f;
    _2013 = _2010 * 0.060606062f;
    _2014 = _2011 * _2011;
    _2015 = _2012 * _2012;
    _2016 = _2013 * _2013;
    _2032 = min(0.0f, (-0.0f - (((_1996 * 0.0072181816f) + ((_2014 * 0.4298f) + (((_2014 * _2014) * ((31.96f - (_1996 * 2.4327273f)) + (_2014 * 15.5f))) - ((_1996 * 0.41624245f) * _2014)))) + -0.00232f)));
    _2048 = min(0.0f, (-0.0f - (((_2003 * 0.0072181816f) + ((_2015 * 0.4298f) + (((_2015 * _2015) * ((31.96f - (_2003 * 2.4327273f)) + (_2015 * 15.5f))) - ((_2003 * 0.41624245f) * _2015)))) + -0.00232f)));
    _2064 = min(0.0f, (-0.0f - (((_2010 * 0.0072181816f) + ((_2016 * 0.4298f) + (((_2016 * _2016) * ((31.96f - (_2010 * 2.4327273f)) + (_2016 * 15.5f))) - ((_2010 * 0.41624245f) * _2016)))) + -0.00232f)));
    _2065 = -0.0f - _2032;
    _2066 = -0.0f - _2048;
    _2067 = -0.0f - _2064;
    _2068 = dot(float3(_2065, _2066, _2067), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _2085 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _2086 = -0.79999995f / _2085;
      _2087 = -1.2f / _2085;
      _2088 = 0.20000005f / _2085;
      _2091 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _2094 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _2098 = (_2086 + 1.4f) + (_2094 * (-0.39999998f - _2086));
      _2102 = (_2087 + 1.6f) + (_2094 * (-0.6f - _2087));
      _2106 = (_2088 + 0.9f) + (_2094 * (0.5f - _2088));
      _2123 = (lerp(_2106, 1.4f, _2091));  // [sem: blended]
      _2124 = (lerp(_2098, 1.0f, _2091));  // [sem: blended]
      _2125 = (lerp(_2102, 1.2f, _2091));  // [sem: blended]
    } else {
      _2123 = 1.4f;  // [sem: blended]
      _2124 = 1.0f;  // [sem: blended]
      _2125 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _2126 = 1.0f - _2125;
    _2138 = ((exp2(log2(((saturate((_2032 * _2032) * _2065) * _2126) + _2125) * _2065) * _2124) - _2068) * _2123) + _2068;
    _2150 = ((exp2(log2(((saturate((_2048 * _2048) * _2066) * _2126) + _2125) * _2066) * _2124) - _2068) * _2123) + _2068;
    _2162 = ((exp2(log2(((saturate((_2064 * _2064) * _2067) * _2126) + _2125) * _2067) * _2124) - _2068) * _2123) + _2068;
    _2169 = saturate(exp2(log2(mad(_2162, -0.09902974f, mad(_2150, -0.09802088f, (_2138 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _2176 = saturate(exp2(log2(mad(_2162, -0.098961174f, mad(_2150, 1.1519032f, (_2138 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _2183 = saturate(exp2(log2(mad(_2162, 1.1510737f, mad(_2150, -0.09804345f, (_2138 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _2189 = 1.0f - abs(_etcParams.w);
      _2190 = saturate(_etcParams.w);  // [sem: expr_sat]
      _2192 = (_2189 * _2169) + _2190;
      _2194 = (_2189 * _2176) + _2190;
      _2196 = (_2189 * _2183) + _2190;
      if (_colorGradingParams.w > 0.0f) {
        _2201 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _2218 = (((max(0.0f, (1.0f - _2196)) - _2196) * _2201) + _2196);
        _2219 = (((max(0.0f, (1.0f - _2194)) - _2194) * _2201) + _2194);
        _2220 = (((max(0.0f, (1.0f - _2192)) - _2192) * _2201) + _2192);
      } else {
        _2218 = _2196;
        _2219 = _2194;
        _2220 = _2192;
      }
      _2222 = _userImageAdjust.y + 1.0f;
      _2224 = _userImageAdjust.x + 0.5f;
      _2227 = ((_2220 + -0.5f) * _2222) + _2224;
      _2230 = ((_2219 + -0.5f) * _2222) + _2224;
      _2233 = ((_2218 + -0.5f) * _2222) + _2224;
      _2239 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _2274 = exp2(log2(saturate(mad(_colorBlind2.z, _2233, mad(_colorBlind2.y, _2230, (_colorBlind2.x * _2227))))) * _2239);
      _2275 = exp2(log2(saturate(mad(_colorBlind1.z, _2233, mad(_colorBlind1.y, _2230, (_colorBlind1.x * _2227))))) * _2239);
      _2276 = exp2(log2(saturate(mad(_colorBlind0.z, _2233, mad(_colorBlind0.y, _2230, (_colorBlind0.x * _2227))))) * _2239);
    } else {
      _2274 = _2183;
      _2275 = _2176;
      _2276 = _2169;
    }
  } else {
    _2274 = _1904;
    _2275 = _1901;
    _2276 = _1898;
  }
  if (_etcParams.y > 1.0f) {
    _2281 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _2284 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _2290 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_2281, _2284), float2(_2281, _2284))));  // [sem: expr_sat]
    _2295 = (_2290 * _2274);
    _2296 = (_2290 * _2275);
    _2297 = (_2290 * _2276);
  } else {
    _2295 = _2274;
    _2296 = _2275;
    _2297 = _2276;
  }
  if (_1921 && (_etcParams.z > 0.0f)) {
    _2327 = select((_2295 <= 0.0031308f), (_2295 * 12.92f), (((pow(_2295, 0.41666666f)) * 1.055f) + -0.055f));
    _2328 = select((_2296 <= 0.0031308f), (_2296 * 12.92f), (((pow(_2296, 0.41666666f)) * 1.055f) + -0.055f));
    _2329 = select((_2297 <= 0.0031308f), (_2297 * 12.92f), (((pow(_2297, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _2327 = _2295;
    _2328 = _2296;
    _2329 = _2297;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2332 = (float)((uint)((uint)(_1905)));
    if (!(_2332 < _viewDir.w)) {
      if (!(!(_2332 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _2343 = 0.0f;
        _2344 = 0.0f;
        _2345 = 0.0f;
      } else {
        _2343 = _2328;
        _2344 = _2329;
        _2345 = _2327;
      }
    } else {
      _2343 = 0.0f;
      _2344 = 0.0f;
      _2345 = 0.0f;
    }
  } else {
    _2343 = _2328;
    _2344 = _2329;
    _2345 = _2327;
  }
  _2349 = exp2(log2(_2344 * 0.0001f) * 0.15930176f);
  _2353 = exp2(log2(_2343 * 0.0001f) * 0.15930176f);
  _2357 = exp2(log2(_2345 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_2349 * 18.6875f) + 1.0f)) * ((_2349 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_2353 * 18.6875f) + 1.0f)) * ((_2353 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_2357 * 18.6875f) + 1.0f)) * ((_2357 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1918;
  return SV_Target;
}
