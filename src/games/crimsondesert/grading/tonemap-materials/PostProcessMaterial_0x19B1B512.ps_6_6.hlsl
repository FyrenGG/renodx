struct PostProcessLensFlareForGimmick_CDStruct {
  uint _lensDirtTexture;
  uint _lensColorTableTexture;
  uint _noiseTex;
  uint _noiseTex2;
  float _lensflareRatio;
  float _sunFlareScale;
  float _sunFlareIntensity;
  float _sunFlareAnimSpeed;
  float _sunFlareWeightThreshold;
  float _sunFlareWeightIntensity;
  float _lensDirtIntensity;
  float _lensDirtThreshold;
  float _chromaticShiftValue;
  float _useFishUV;
  float _fishEyeIntensity;
};

struct BindlessParameters_PostProcessLensFlareForGimmick_CD {
  PostProcessLensFlareForGimmick_CDStruct BindlessParameters_PostProcessLensFlareForGimmick_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

typedef BindlessParameters_PostProcessLensFlareForGimmick_CD BindlessParameters_PostProcessLensFlareForGimmick_CD_t;
ConstantBuffer<BindlessParameters_PostProcessLensFlareForGimmick_CD_t> BindlessParameters_PostProcessLensFlareForGimmick_CD[] : register(b0, space100);

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
  float _29;
  int _32;
  float _40;
  float _44;
  float _47;
  float _48;
  float _49;
  float _50;
  float _51;
  float _52;
  float _53;
  float _91;
  float _92;
  int _942;
  float _943;
  float _944;
  float _945;
  int _1194;
  float _1195;
  float _1196;
  float _1197;
  float _1589;
  float _1608;
  float _1628;
  float _1647;
  float _1667;
  float _1684;
  float _1701;
  float _1718;
  int _2541;
  float _2542;
  float _2543;
  float _2544;
  int _2793;
  float _2794;
  float _2795;
  float _2796;
  float _3188;
  float _3207;
  float _3227;
  float _3246;
  float _3266;
  float _3283;
  float _3300;
  float _3317;
  float _3518;
  float _3519;
  float _3520;
  float _3521;
  float _3535;
  float _3740;
  float _3741;
  float _3742;
  float _3835;
  float _3836;
  float _3837;
  float _3891;
  float _3892;
  float _3893;
  float _3912;
  float _3913;
  float _3914;
  float _3944;
  float _3945;
  float _3946;
  float _3960;
  float _3961;
  float _3962;
  float _57;
  float _61;
  float _66;
  float _68;
  float _77;
  float _81;
  float _83;
  int _95;
  float _103;
  bool _104;
  float _106;
  float _109;
  float _110;
  float _126;
  float _135;
  float _145;
  float _164;
  int _186;
  int _194;
  int _197;
  int _205;
  float _209;
  float4 _217;
  int _222;
  float _230;
  float _231;
  float _232;
  int _235;
  int _243;
  float _244;
  float _246;
  float _247;
  float _248;
  float _251;
  float _253;
  float _254;
  float _256;
  float _259;
  float _262;
  float _264;
  float _266;
  float _270;
  float _273;
  float _275;
  bool _276;
  bool _277;
  bool _278;
  bool _279;
  float _283;
  bool _284;
  bool _285;
  bool _286;
  bool _287;
  float _290;
  float _331;
  float _332;
  float _342;
  float _344;
  float _345;
  int _351;
  int _359;
  float _360;
  float _361;
  float _365;
  float _368;
  float _370;
  bool _371;
  bool _372;
  bool _373;
  bool _374;
  float _378;
  bool _379;
  bool _380;
  bool _381;
  bool _382;
  float _385;
  float _426;
  float _427;
  float _431;
  float _439;
  float _441;
  int _444;
  int _452;
  float _454;
  float _457;
  float _460;
  float _462;
  float _464;
  float _467;
  float _470;
  float _471;
  float _472;
  float _480;
  float _481;
  float _482;
  float _484;
  float _486;
  float _488;
  float _490;
  float _492;
  float _495;
  float _498;
  float _509;
  float _512;
  float _513;
  float _517;
  float _525;
  float _527;
  int _530;
  int _538;
  float _540;
  float _542;
  float _545;
  float _548;
  float _549;
  float _550;
  float _558;
  float _559;
  float _560;
  float _562;
  float _564;
  float _566;
  float _568;
  float _570;
  float _573;
  float _576;
  float _587;
  float _590;
  float _615;
  float _619;
  float _627;
  float _629;
  int _632;
  int _640;
  float _642;
  float _644;
  float _647;
  float _650;
  float _651;
  float _652;
  float _660;
  float _661;
  float _662;
  float _664;
  float _666;
  float _668;
  float _670;
  float _672;
  float _675;
  float _678;
  float _689;
  float _692;
  float _693;
  float _697;
  float _705;
  float _729;
  int _732;
  int _740;
  float _742;
  float _744;
  float _747;
  float _750;
  float _751;
  float _752;
  float _760;
  float _761;
  float _762;
  float _764;
  float _766;
  float _768;
  float _770;
  float _772;
  float _775;
  float _778;
  float _789;
  float _792;
  float _793;
  float _797;
  float _805;
  float _831;
  int _834;
  int _842;
  float _844;
  float _846;
  float _849;
  float _852;
  float _853;
  float _854;
  float _862;
  float _863;
  float _864;
  float _866;
  float _868;
  float _870;
  float _872;
  float _874;
  float _877;
  float _880;
  float _891;
  float _894;
  float _940;
  int _946;
  float _947;
  float _956;
  float _960;
  float _968;
  float _970;
  float _971;
  float _979;
  float _980;
  float _988;
  int _991;
  int _999;
  float _1001;
  float _1003;
  float _1006;
  float _1009;
  float _1010;
  float _1011;
  float _1019;
  float _1020;
  float _1021;
  float _1023;
  float _1025;
  float _1027;
  float _1029;
  float _1031;
  float _1036;
  float _1039;
  float _1050;
  float _1053;
  float _1061;
  float _1069;
  int _1072;
  int _1080;
  float _1082;
  float _1084;
  float _1087;
  float _1090;
  float _1091;
  float _1092;
  float _1100;
  float _1101;
  float _1102;
  float _1104;
  float _1106;
  float _1108;
  float _1110;
  float _1112;
  float _1117;
  float _1120;
  float _1131;
  float _1134;
  float _1173;
  float _1174;
  float _1175;
  float _1176;
  float _1181;
  float _1182;
  float _1183;
  float _1184;
  float _1185;
  float _1187;
  float _1191;
  float _1192;
  int _1198;
  float _1199;
  float _1204;
  float _1213;
  float _1217;
  float _1225;
  float _1227;
  float _1232;
  float _1233;
  float _1241;
  int _1244;
  int _1252;
  float _1254;
  float _1256;
  float _1259;
  float _1262;
  float _1263;
  float _1264;
  float _1272;
  float _1273;
  float _1274;
  float _1276;
  float _1278;
  float _1280;
  float _1282;
  float _1284;
  float _1285;
  float _1290;
  float _1295;
  float _1306;
  float _1309;
  float _1310;
  float _1330;
  float _1332;
  float _1340;
  int _1343;
  int _1351;
  float _1353;
  float _1355;
  float _1358;
  float _1361;
  float _1362;
  float _1363;
  float _1371;
  float _1372;
  float _1373;
  float _1375;
  float _1377;
  float _1379;
  float _1381;
  float _1383;
  float _1384;
  float _1389;
  float _1394;
  float _1405;
  float _1408;
  float _1428;
  float _1432;
  float _1436;
  float _1440;
  float _1447;
  int _1450;
  float _1458;
  int _1461;
  int _1469;
  float _1521;
  float _1529;
  float _1536;
  float _1553;
  float _1554;
  float _1555;
  float _1556;
  uint2 _1558;
  float _1564;
  float _1568;
  int _1570;
  int _1572;
  int _1591;
  float _1609;
  int _1611;
  int _1630;
  float _1648;
  int _1650;
  int _1721;
  float _1729;
  int _1732;
  float _1740;
  float _1745;
  float _1756;
  float _1766;
  int _1785;
  int _1793;
  int _1796;
  int _1804;
  float _1808;
  float4 _1816;
  int _1821;
  float _1829;
  float _1830;
  float _1831;
  int _1834;
  int _1842;
  float _1843;
  float _1845;
  float _1846;
  float _1847;
  float _1850;
  float _1852;
  float _1853;
  float _1855;
  float _1858;
  float _1861;
  float _1863;
  float _1865;
  float _1869;
  float _1872;
  float _1874;
  bool _1875;
  bool _1876;
  bool _1877;
  bool _1878;
  float _1882;
  bool _1883;
  bool _1884;
  bool _1885;
  bool _1886;
  float _1889;
  float _1930;
  float _1931;
  float _1941;
  float _1943;
  float _1944;
  int _1950;
  int _1958;
  float _1959;
  float _1960;
  float _1964;
  float _1967;
  float _1969;
  bool _1970;
  bool _1971;
  bool _1972;
  bool _1973;
  float _1977;
  bool _1978;
  bool _1979;
  bool _1980;
  bool _1981;
  float _1984;
  float _2025;
  float _2026;
  float _2030;
  float _2038;
  float _2040;
  int _2043;
  int _2051;
  float _2053;
  float _2056;
  float _2059;
  float _2061;
  float _2063;
  float _2066;
  float _2069;
  float _2070;
  float _2071;
  float _2079;
  float _2080;
  float _2081;
  float _2083;
  float _2085;
  float _2087;
  float _2089;
  float _2091;
  float _2094;
  float _2097;
  float _2108;
  float _2111;
  float _2112;
  float _2116;
  float _2124;
  float _2126;
  int _2129;
  int _2137;
  float _2139;
  float _2141;
  float _2144;
  float _2147;
  float _2148;
  float _2149;
  float _2157;
  float _2158;
  float _2159;
  float _2161;
  float _2163;
  float _2165;
  float _2167;
  float _2169;
  float _2172;
  float _2175;
  float _2186;
  float _2189;
  float _2214;
  float _2218;
  float _2226;
  float _2228;
  int _2231;
  int _2239;
  float _2241;
  float _2243;
  float _2246;
  float _2249;
  float _2250;
  float _2251;
  float _2259;
  float _2260;
  float _2261;
  float _2263;
  float _2265;
  float _2267;
  float _2269;
  float _2271;
  float _2274;
  float _2277;
  float _2288;
  float _2291;
  float _2292;
  float _2296;
  float _2304;
  float _2328;
  int _2331;
  int _2339;
  float _2341;
  float _2343;
  float _2346;
  float _2349;
  float _2350;
  float _2351;
  float _2359;
  float _2360;
  float _2361;
  float _2363;
  float _2365;
  float _2367;
  float _2369;
  float _2371;
  float _2374;
  float _2377;
  float _2388;
  float _2391;
  float _2392;
  float _2396;
  float _2404;
  float _2430;
  int _2433;
  int _2441;
  float _2443;
  float _2445;
  float _2448;
  float _2451;
  float _2452;
  float _2453;
  float _2461;
  float _2462;
  float _2463;
  float _2465;
  float _2467;
  float _2469;
  float _2471;
  float _2473;
  float _2476;
  float _2479;
  float _2490;
  float _2493;
  float _2539;
  int _2545;
  float _2546;
  float _2555;
  float _2559;
  float _2567;
  float _2569;
  float _2570;
  float _2578;
  float _2579;
  float _2587;
  int _2590;
  int _2598;
  float _2600;
  float _2602;
  float _2605;
  float _2608;
  float _2609;
  float _2610;
  float _2618;
  float _2619;
  float _2620;
  float _2622;
  float _2624;
  float _2626;
  float _2628;
  float _2630;
  float _2635;
  float _2638;
  float _2649;
  float _2652;
  float _2660;
  float _2668;
  int _2671;
  int _2679;
  float _2681;
  float _2683;
  float _2686;
  float _2689;
  float _2690;
  float _2691;
  float _2699;
  float _2700;
  float _2701;
  float _2703;
  float _2705;
  float _2707;
  float _2709;
  float _2711;
  float _2716;
  float _2719;
  float _2730;
  float _2733;
  float _2772;
  float _2773;
  float _2774;
  float _2775;
  float _2780;
  float _2781;
  float _2782;
  float _2783;
  float _2784;
  float _2786;
  float _2790;
  float _2791;
  int _2797;
  float _2798;
  float _2803;
  float _2812;
  float _2816;
  float _2824;
  float _2826;
  float _2831;
  float _2832;
  float _2840;
  int _2843;
  int _2851;
  float _2853;
  float _2855;
  float _2858;
  float _2861;
  float _2862;
  float _2863;
  float _2871;
  float _2872;
  float _2873;
  float _2875;
  float _2877;
  float _2879;
  float _2881;
  float _2883;
  float _2884;
  float _2889;
  float _2894;
  float _2905;
  float _2908;
  float _2909;
  float _2929;
  float _2931;
  float _2939;
  int _2942;
  int _2950;
  float _2952;
  float _2954;
  float _2957;
  float _2960;
  float _2961;
  float _2962;
  float _2970;
  float _2971;
  float _2972;
  float _2974;
  float _2976;
  float _2978;
  float _2980;
  float _2982;
  float _2983;
  float _2988;
  float _2993;
  float _3004;
  float _3007;
  float _3027;
  float _3031;
  float _3035;
  float _3039;
  float _3046;
  int _3049;
  float _3057;
  int _3060;
  int _3068;
  float _3120;
  float _3128;
  float _3135;
  float _3152;
  float _3153;
  float _3154;
  float _3155;
  uint2 _3157;
  float _3163;
  float _3167;
  int _3169;
  int _3171;
  int _3190;
  float _3208;
  int _3210;
  int _3229;
  float _3247;
  int _3249;
  int _3320;
  float _3328;
  int _3331;
  float _3339;
  float _3344;
  float _3355;
  float _3365;
  float _3373;
  float _3448;
  uint _3522;
  bool _3538;
  float _3544;
  float _3563;
  float _3579;
  float _3595;
  float _3596;
  float _3600;
  float _3603;
  float _3606;
  float _3613;
  float _3620;
  float _3627;
  float _3628;
  float _3629;
  float _3630;
  float _3631;
  float _3632;
  float _3633;
  float _3649;
  float _3665;
  float _3681;
  float _3682;
  float _3683;
  float _3684;
  float _3685;
  float _3702;
  float _3703;
  float _3704;
  float _3705;
  float _3708;
  float _3711;
  float _3715;
  float _3719;
  float _3723;
  float _3743;
  float _3755;
  float _3767;
  float _3779;
  float _3786;
  float _3793;
  float _3800;
  float _3806;
  float _3807;
  float _3809;
  float _3811;
  float _3813;
  float _3818;
  float _3839;
  float _3841;
  float _3844;
  float _3847;
  float _3850;
  float _3856;
  float _3898;
  float _3901;
  float _3907;
  float _3949;
  int __loop_jump_target = -1;
  _2 = ((_global_0[0]) == 0);
  _29 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _32 = WaveReadLaneFirst(_materialIndex);
  _40 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_32 < (uint)170000), _32, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._fishEyeIntensity);
  _44 = (_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
  _47 = (_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x;
  _48 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _49 = 0.5f / _48;
  _50 = _44 + -0.5f;
  _51 = _47 - _49;
  _52 = dot(float2(_50, _51), float2(_50, _51));
  _53 = sqrt(_52);
  if (_40 > 0.0f) {
    _61 = sqrt(dot(float2(0.5f, _49), float2(0.5f, _49)));
    _66 = tan(_61 * _40);
    _68 = tan(_53 * _40) * (rsqrt(_52) * _61);
    _91 = (((_68 * _51) / _66) + _49);
    _92 = (((_68 * _50) / _66) + 0.5f);
  } else {
    _57 = select((_48 < 1.0f), 0.5f, _49);
    if (_40 < 0.0f) {
      _77 = _40 * -10.0f;
      _81 = atan(_57 * _77);
      _83 = atan(_53 * _77) * (rsqrt(_52) * _57);
      _91 = (((_83 * _51) / _81) + _49);
      _92 = (((_83 * _50) / _81) + 0.5f);
    } else {
      _91 = _47;
      _92 = _44;
    }
  }
  _95 = WaveReadLaneFirst(_materialIndex);
  _103 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_95 < (uint)170000), _95, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._useFishUV);
  _104 = (_103 == 1.0f);
  _106 = select(_104, _92, TEXCOORD.x) + -0.5f;
  _109 = select(_104, (_91 * _48), TEXCOORD.y) + -0.5f;
  _110 = _106 * _29;
  _126 = (_viewProj[3].w) + mad((_viewProj[3].z), _questGuideWorldPosition.z, mad((_viewProj[3].y), _questGuideWorldPosition.y, (_questGuideWorldPosition.x * (_viewProj[3].x))));
  _135 = (mad((_viewProj[2].z), _questGuideWorldPosition.z, mad((_viewProj[2].y), _questGuideWorldPosition.y, (_questGuideWorldPosition.x * (_viewProj[2].x)))) + (_viewProj[2].w)) / _126;
  _145 = ((mad((_viewProj[1].z), _questGuideWorldPosition.z, mad((_viewProj[1].y), _questGuideWorldPosition.y, (_questGuideWorldPosition.x * (_viewProj[1].x)))) + (_viewProj[1].w)) / _126) * -0.5f;
  _164 = (_29 * 0.5f) * (((_viewProj[0].w) + mad((_viewProj[0].z), _questGuideWorldPosition.z, mad((_viewProj[0].y), _questGuideWorldPosition.y, (_questGuideWorldPosition.x * (_viewProj[0].x))))) / _126);
  if ((!(abs(_questGuideWorldPosition.x) <= 1e-05f)) || ((!(!(abs(_questGuideWorldPosition.x) <= 1e-05f))) && (!(abs(_questGuideWorldPosition.y) <= 1e-05f)))) {
    if (!((_164 <= -1.6f) || ((_135 < 0.0f) || (((_145 >= 1.05f) || (_145 <= -1.5f)) || (_164 >= 1.6f))))) {
      _186 = WaveReadLaneFirst(_materialIndex);
      _194 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_186 < (uint)170000), _186, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
      _197 = WaveReadLaneFirst(_materialIndex);
      _205 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_197 < (uint)170000), _197, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensColorTableTexture);
      _209 = _109 * _109;
      _217 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_205 < (uint)65000), _205, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2((sqrt(_209 + (_106 * _106)) * 2.0f), 0.5f));
      _222 = WaveReadLaneFirst(_materialIndex);
      _230 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_222 < (uint)170000), _222, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._chromaticShiftValue);
      _231 = -0.0f - _164;
      _232 = -0.0f - _145;
      _235 = WaveReadLaneFirst(_materialIndex);
      _243 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_235 < (uint)170000), _235, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _244 = -0.0f - _110;
      _246 = rsqrt(dot(float3(_109, _244, 0.0f), float3(_109, _244, 0.0f)));  // [sem: invLength]
      _247 = _246 * _109;
      _248 = _246 * _244;
      _251 = sqrt((_110 * _110) + _209);
      _253 = cos(_251 * 1.5f);
      _254 = 1.0f - _253;
      _256 = _254 * dot(float3(_247, _248, 0.0f), float3(_231, _232, 0.0f));
      _259 = (_256 * _247) + (_253 * _231);
      _262 = (_256 * _248) + (_253 * _232);
      _264 = _110 - (_259 * 0.56666666f);
      _266 = _109 - (_262 * 0.56666666f);
      _270 = sqrt((_264 * _264) + (_266 * _266));
      _273 = (pow(_270, 0.5f));
      _275 = atan(_266 / _264);
      _276 = (_264 < 0.0f);
      _277 = (_264 == 0.0f);
      _278 = (_266 >= 0.0f);
      _279 = (_266 < 0.0f);
      _283 = atan((-0.0f - _266) / (-0.0f - _264));
      _284 = (_264 > -0.0f);
      _285 = (_264 == -0.0f);
      _286 = (_266 <= -0.0f);
      _287 = (_266 > -0.0f);
      _290 = _time.x * 2.0f;
      _331 = max((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_243 < (uint)65000), _243, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_277 && _278), 18.849556f, select((_277 && _279), -18.849556f, (select((_276 && _279), (_275 + -3.1415927f), select((_276 && _278), (_275 + 3.1415927f), _275)) * 12.0f))), (((_time.x * 0.2f) + _273) * 12.0f))))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_243 < (uint)65000), _243, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((select((_285 && _286), 18.849556f, select((_285 && _287), -18.849556f, (select((_284 && _287), (_283 + -3.1415927f), select((_284 && _286), (_283 + 3.1415927f), _283)) * 12.0f))) + _290), (_290 + (_273 * 12.0f)))))).x));
      _332 = _264 - _259;
      _342 = TEXCOORD.x * 0.1f;
      _344 = (_time.x * 1.6800001f) + _342;
      _345 = _344 + 16.800001f;
      _351 = WaveReadLaneFirst(_materialIndex);
      _359 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_351 < (uint)170000), _351, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _360 = _259 + _110;
      _361 = _262 + _109;
      _365 = sqrt((_360 * _360) + (_361 * _361));
      _368 = (pow(_365, 0.5f));
      _370 = atan(_361 / _360);
      _371 = (_360 < 0.0f);
      _372 = (_360 == 0.0f);
      _373 = (_361 >= 0.0f);
      _374 = (_361 < 0.0f);
      _378 = atan((-0.0f - _361) / (-0.0f - _360));
      _379 = (_360 > -0.0f);
      _380 = (_360 == -0.0f);
      _381 = (_361 <= -0.0f);
      _382 = (_361 > -0.0f);
      _385 = _time.x * 2.0f;
      _426 = max((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_359 < (uint)65000), _359, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_372 && _373), 18.849556f, select((_372 && _374), -18.849556f, (select((_371 && _374), (_370 + -3.1415927f), select((_371 && _373), (_370 + 3.1415927f), _370)) * 12.0f))), (((_time.x * 0.2f) + _368) * 12.0f))))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_359 < (uint)65000), _359, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((select((_380 && _381), 18.849556f, select((_380 && _382), -18.849556f, (select((_379 && _382), (_378 + -3.1415927f), select((_379 && _381), (_378 + 3.1415927f), _378)) * 12.0f))) + _385), (_385 + (_368 * 12.0f)))))).x));
      _427 = _344 + 4.59375f;
      _431 = frac(sin(floor(_427)) * 43758.547f);
      _439 = ((frac(sin(ceil(_427)) * 43758.547f) - _431) * frac(_427)) + _431;
      _441 = (_439 * 0.050000012f) + 0.45f;
      _444 = WaveReadLaneFirst(_materialIndex);
      _452 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_444 < (uint)170000), _444, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _454 = dot(float3(_247, _248, 0.0f), float3(_164, _145, 0.0f)) * _254;
      _457 = (_454 * _247) + (_253 * _164);
      _460 = (_454 * _248) + (_253 * _145);
      _462 = _110 - (_457 * _441);
      _464 = _109 - (_460 * _441);
      _467 = (_462 * 0.9553365f) + (_464 * 0.29552022f);
      _470 = (_464 * 0.9553365f) - (_462 * 0.29552022f);
      _471 = _457 - _467;
      _472 = _460 - _470;
      _480 = saturate(exp2(log2(sqrt((_471 * _471) + (_472 * _472))) * 15.0f));  // [sem: expr_sat]
      _481 = abs(_467);
      _482 = abs(_470);
      _484 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_481, _482)), 0.0f);
      _486 = (_484 * 1.847759f) + _481;
      _488 = _482 - (_484 * 0.76536685f);
      _490 = min(dot(float2(0.9238795f, 0.38268343f), float2(_486, _488)), 0.0f);
      _492 = _486 - (_490 * 1.847759f);
      _495 = _492 - min(max(_492, -0.060060967f), 0.060060967f);
      _498 = (_488 - (_490 * 0.76536685f)) + -0.145f;
      _509 = ((float)((int)((int)((int)(uint)((int)(_498 > 0.0f))) - (int)((int)(uint)((int)(_498 < 0.0f)))))) * sqrt((_495 * _495) + (_498 * _498));
      _512 = saturate(abs(_509) * 200.0f);  // [sem: expr_sat]
      _513 = _344 + 4.4625006f;
      _517 = frac(sin(floor(_513)) * 43758.547f);
      _525 = ((frac(sin(ceil(_513)) * 43758.547f) - _517) * frac(_513)) + _517;
      _527 = (_525 * 0.08000002f) + 0.71999997f;
      _530 = WaveReadLaneFirst(_materialIndex);
      _538 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_530 < (uint)170000), _530, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _540 = _110 - (_527 * _457);
      _542 = _109 - (_527 * _460);
      _545 = (_540 * 0.9553365f) + (_542 * 0.29552022f);
      _548 = (_542 * 0.9553365f) - (_540 * 0.29552022f);
      _549 = _457 - _545;
      _550 = _460 - _548;
      _558 = saturate(exp2(log2(sqrt((_549 * _549) + (_550 * _550))) * 15.0f));  // [sem: expr_sat]
      _559 = abs(_545);
      _560 = abs(_548);
      _562 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_559, _560)), 0.0f);
      _564 = (_562 * 1.847759f) + _559;
      _566 = _560 - (_562 * 0.76536685f);
      _568 = min(dot(float2(0.9238795f, 0.38268343f), float2(_564, _566)), 0.0f);
      _570 = _564 - (_568 * 1.847759f);
      _573 = _570 - min(max(_570, -0.08491378f), 0.08491378f);
      _576 = (_566 - (_568 * 0.76536685f)) + -0.205f;
      _587 = ((float)((int)((int)((int)(uint)((int)(_576 > 0.0f))) - (int)((int)(uint)((int)(_576 < 0.0f)))))) * sqrt((_573 * _573) + (_576 * _576));
      _590 = saturate(abs(_587) * 200.0f);  // [sem: expr_sat]
      _615 = _344 + 1.7308595f;
      _619 = frac(sin(floor(_615)) * 43758.547f);
      _627 = ((frac(sin(ceil(_615)) * 43758.547f) - _619) * frac(_615)) + _619;
      _629 = 1.5f - (_627 * 0.15000004f);
      _632 = WaveReadLaneFirst(_materialIndex);
      _640 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_632 < (uint)170000), _632, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _642 = _110 - (_629 * _259);
      _644 = _109 - (_629 * _262);
      _647 = (_642 * 0.9553365f) + (_644 * 0.29552022f);
      _650 = (_644 * 0.9553365f) - (_642 * 0.29552022f);
      _651 = _259 - _647;
      _652 = _262 - _650;
      _660 = saturate(exp2(log2(sqrt((_651 * _651) + (_652 * _652))) * 15.0f));  // [sem: expr_sat]
      _661 = abs(_647);
      _662 = abs(_650);
      _664 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_661, _662)), 0.0f);
      _666 = (_664 * 1.847759f) + _661;
      _668 = _662 - (_664 * 0.76536685f);
      _670 = min(dot(float2(0.9238795f, 0.38268343f), float2(_666, _668)), 0.0f);
      _672 = _666 - (_670 * 1.847759f);
      _675 = _672 - min(max(_672, -0.12633514f), 0.12633514f);
      _678 = (_668 - (_670 * 0.76536685f)) + -0.305f;
      _689 = ((float)((int)((int)((int)(uint)((int)(_678 > 0.0f))) - (int)((int)(uint)((int)(_678 < 0.0f)))))) * sqrt((_675 * _675) + (_678 * _678));
      _692 = saturate(abs(_689) * 200.0f);  // [sem: expr_sat]
      _693 = _344 + 4.8562503f;
      _697 = frac(sin(floor(_693)) * 43758.547f);
      _705 = ((frac(sin(ceil(_693)) * 43758.547f) - _697) * frac(_693)) + _697;
      _729 = 0.5f - (_705 * 0.050000012f);
      _732 = WaveReadLaneFirst(_materialIndex);
      _740 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_732 < (uint)170000), _732, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _742 = _110 - (_729 * _259);
      _744 = _109 - (_729 * _262);
      _747 = (_742 * 0.9553365f) + (_744 * 0.29552022f);
      _750 = (_744 * 0.9553365f) - (_742 * 0.29552022f);
      _751 = _259 - _747;
      _752 = _262 - _750;
      _760 = saturate(exp2(log2(sqrt((_751 * _751) + (_752 * _752))) * 15.0f));  // [sem: expr_sat]
      _761 = abs(_747);
      _762 = abs(_750);
      _764 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_761, _762)), 0.0f);
      _766 = (_764 * 1.847759f) + _761;
      _768 = _762 - (_764 * 0.76536685f);
      _770 = min(dot(float2(0.9238795f, 0.38268343f), float2(_766, _768)), 0.0f);
      _772 = _766 - (_770 * 1.847759f);
      _775 = _772 - min(max(_772, -0.08491378f), 0.08491378f);
      _778 = (_768 - (_770 * 0.76536685f)) + -0.205f;
      _789 = ((float)((int)((int)((int)(uint)((int)(_778 > 0.0f))) - (int)((int)(uint)((int)(_778 < 0.0f)))))) * sqrt((_775 * _775) + (_778 * _778));
      _792 = saturate(abs(_789) * 200.0f);  // [sem: expr_sat]
      _793 = _344 + 1.1156251f;
      _797 = frac(sin(floor(_793)) * 43758.547f);
      _805 = ((frac(sin(ceil(_793)) * 43758.547f) - _797) * frac(_793)) + _797;
      _831 = 0.2f - (_805 * 0.020000005f);
      _834 = WaveReadLaneFirst(_materialIndex);
      _842 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_834 < (uint)170000), _834, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
      _844 = _110 - (_831 * _259);
      _846 = _109 - (_831 * _262);
      _849 = (_844 * 0.9553365f) + (_846 * 0.29552022f);
      _852 = (_846 * 0.9553365f) - (_844 * 0.29552022f);
      _853 = _259 - _849;
      _854 = _262 - _852;
      _862 = saturate(exp2(log2(sqrt((_853 * _853) + (_854 * _854))) * 15.0f));  // [sem: expr_sat]
      _863 = abs(_849);
      _864 = abs(_852);
      _866 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_863, _864)), 0.0f);
      _868 = (_866 * 1.847759f) + _863;
      _870 = _864 - (_866 * 0.76536685f);
      _872 = min(dot(float2(0.9238795f, 0.38268343f), float2(_868, _870)), 0.0f);
      _874 = _868 - (_872 * 1.847759f);
      _877 = _874 - min(max(_874, -0.06834524f), 0.06834524f);
      _880 = (_870 - (_872 * 0.76536685f)) + -0.165f;
      _891 = ((float)((int)((int)((int)(uint)((int)(_880 > 0.0f))) - (int)((int)(uint)((int)(_880 < 0.0f)))))) * sqrt((_877 * _877) + (_880 * _880));
      _894 = saturate(abs(_891) * 200.0f);  // [sem: expr_sat]
      _940 = (((saturate((1.0f - _760) - saturate((_792 * _792) * (3.0f - (_792 * 2.0f)))) * 0.4f) + saturate(saturate(exp2((5.0f / (0.05f - (_705 * 0.0050000013f))) * log2(saturate(1.0f - _789)))) - _760)) * ((_805 * 0.9f) + 0.1f)) + (((saturate((1.0f - _558) - saturate((_590 * _590) * (3.0f - (_590 * 2.0f)))) * 0.4f) + saturate(saturate(exp2((5.0f / ((_525 * 0.008000002f) + 0.072f)) * log2(saturate(1.0f - _587)))) - _558)) * ((_439 * 0.9f) + 0.1f));
      _942 = 0;
      _943 = 0.0f;
      _944 = 0.0f;
      _945 = 0.0f;
      while(true) {
        _946 = (int)(_942) + (int)(1);
        _947 = (float)((int)(_946));
        _956 = ((_time.x * 2.52f) * frac(sin((float)((int)(_942))) * 43758.547f)) + _342;
        _960 = frac(sin(floor(_956)) * 43758.547f);
        _968 = ((frac(sin(ceil(_956)) * 43758.547f) - _960) * frac(_956)) + _960;
        _970 = (_968 * 0.16f) + 0.64000005f;
        _971 = _947 * 0.07f;
        _979 = ((_970 * (frac(sin(_947 * 10.0f) * 43758.547f) + -1.0f)) + 1.0f) * _971;
        _980 = _947 * 0.001f;
        _988 = (((frac(sin(_947 * 2000.0f) * 43758.547f) + -1.0f) * 0.2f) + 1.0f) * _980;
        _991 = WaveReadLaneFirst(_materialIndex);
        _999 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_991 < (uint)170000), _991, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
        _1001 = _110 - (_979 * _164);
        _1003 = _109 - (_979 * _145);
        _1006 = (_1001 * 0.9553365f) + (_1003 * 0.29552022f);
        _1009 = (_1003 * 0.9553365f) - (_1001 * 0.29552022f);
        _1010 = _164 - _1006;
        _1011 = _145 - _1009;
        _1019 = saturate(exp2(log2(sqrt((_1010 * _1010) + (_1011 * _1011))) * 15.0f));  // [sem: expr_sat]
        _1020 = abs(_1006);
        _1021 = abs(_1009);
        _1023 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_1020, _1021)), 0.0f);
        _1025 = (_1023 * 1.847759f) + _1020;
        _1027 = _1021 - (_1023 * 0.76536685f);
        _1029 = min(dot(float2(0.9238795f, 0.38268343f), float2(_1025, _1027)), 0.0f);
        _1031 = _1025 - (_1029 * 1.847759f);
        _1036 = _1031 - min(max(_1031, (_988 * -0.41421357f)), (_988 * 0.41421357f));
        _1039 = (_1027 - (_1029 * 0.76536685f)) - _988;
        _1050 = ((float)((int)((int)((int)(uint)((int)(_1039 > 0.0f))) - (int)((int)(uint)((int)(_1039 < 0.0f)))))) * sqrt((_1036 * _1036) + (_1039 * _1039));
        _1053 = saturate(abs(_1050) * 200.0f);  // [sem: expr_sat]
        _1061 = (((frac(sin(_947 * 5.0f) * 43758.547f) + -1.0f) * _970) + 1.0f) * _971;
        _1069 = (((frac(sin(_947 * 20.0f) * 43758.547f) + -1.0f) * 0.2f) + 1.0f) * _980;
        _1072 = WaveReadLaneFirst(_materialIndex);
        _1080 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1072 < (uint)170000), _1072, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
        _1082 = _110 - (_1061 * _231);
        _1084 = _109 - (_1061 * _232);
        _1087 = (_1082 * 0.9553365f) + (_1084 * 0.29552022f);
        _1090 = (_1084 * 0.9553365f) - (_1082 * 0.29552022f);
        _1091 = _231 - _1087;
        _1092 = _232 - _1090;
        _1100 = saturate(exp2(log2(sqrt((_1091 * _1091) + (_1092 * _1092))) * 15.0f));  // [sem: expr_sat]
        _1101 = abs(_1087);
        _1102 = abs(_1090);
        _1104 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_1101, _1102)), 0.0f);
        _1106 = (_1104 * 1.847759f) + _1101;
        _1108 = _1102 - (_1104 * 0.76536685f);
        _1110 = min(dot(float2(0.9238795f, 0.38268343f), float2(_1106, _1108)), 0.0f);
        _1112 = _1106 - (_1110 * 1.847759f);
        _1117 = _1112 - min(max(_1112, (_1069 * -0.41421357f)), (_1069 * 0.41421357f));
        _1120 = (_1108 - (_1110 * 0.76536685f)) - _1069;
        _1131 = ((float)((int)((int)((int)(uint)((int)(_1120 > 0.0f))) - (int)((int)(uint)((int)(_1120 < 0.0f)))))) * sqrt((_1117 * _1117) + (_1120 * _1120));
        _1134 = saturate(abs(_1131) * 200.0f);  // [sem: expr_sat]
        _1173 = ((saturate(saturate(exp2((100.0f / _979) * log2(saturate(1.0f - _1050)))) - _1019) + saturate(saturate(exp2((100.0f / _1061) * log2(saturate(1.0f - _1131)))) - _1100)) + ((saturate((1.0f - _1019) - saturate((_1053 * _1053) * (3.0f - (_1053 * 2.0f)))) + saturate((1.0f - _1100) - saturate((_1134 * _1134) * (3.0f - (_1134 * 2.0f))))) * 0.4f)) * _968;
        _1174 = _1173 + _945;
        _1175 = _1173 + _944;
        _1176 = _1173 + _943;
        if (!(_946 == 20)) {
          _942 = _946;
          _943 = _1176;
          _944 = _1175;
          _945 = _1174;
          continue;
        }
        _1181 = _331 * _331;
        _1182 = _266 - _262;
        _1183 = log2(1.0f - saturate(exp2(log2(sqrt((_259 * _259) + (_262 * _262))) * 0.5f)));
        _1184 = frac(sin(floor(_345)) * 43758.547f);
        _1185 = _426 * _426;
        _1187 = ((saturate((1.0f - _660) - saturate((_692 * _692) * (3.0f - (_692 * 2.0f)))) * 0.4f) + saturate(saturate(exp2((5.0f / (0.15f - (_627 * 0.015000003f))) * log2(saturate(1.0f - _689)))) - _660)) * ((_705 * 0.9f) + 0.1f);
        _1191 = ((saturate(saturate(exp2((1.0f / (0.020000001f - (_805 * 0.0020000006f))) * log2(saturate(1.0f - _891)))) - _862) + (saturate((1.0f - _862) - saturate((_894 * _894) * (3.0f - (_894 * 2.0f)))) * 0.4f)) * ((_627 * 0.9f) + 0.1f)) + (((saturate((1.0f - _480) - saturate((_512 * _512) * (3.0f - (_512 * 2.0f)))) * 0.4f) + saturate(saturate(exp2((5.0f / ((_439 * 0.0050000013f) + 0.044999998f)) * log2(saturate(1.0f - _509)))) - _480)) * ((_525 * 0.9f) + 0.1f));
        _1192 = _217.w * 0.08f;
        _1194 = 0;
        _1195 = 0.0f;
        _1196 = 0.0f;
        _1197 = 0.0f;
        while(true) {
          _1198 = (int)(_1194) + (int)(1);
          _1199 = (float)((int)(_1198));
          _1204 = frac(sin(_1199 * 300.0f) * 43758.547f) + -1.0f;
          _1213 = ((_time.x * 2.52f) * frac(sin((float)((int)(_1194))) * 43758.547f)) + _342;
          _1217 = frac(sin(floor(_1213)) * 43758.547f);
          _1225 = ((frac(sin(ceil(_1213)) * 43758.547f) - _1217) * frac(_1213)) + _1217;
          _1227 = (_1225 * 0.03750001f) + 0.7125f;
          _1232 = frac(sin(_1199 * 170.0f) * 43758.547f) + -1.0f;
          _1233 = _1199 * 0.15f;
          _1241 = ((_1227 * (frac(sin(_1199 * 110.0f) * 43758.547f) + -1.0f)) + 1.0f) * _1233;
          _1244 = WaveReadLaneFirst(_materialIndex);
          _1252 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1244 < (uint)170000), _1244, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
          _1254 = _110 - (_1241 * _457);
          _1256 = _109 - (_1241 * _460);
          _1259 = (_1254 * 0.9553365f) + (_1256 * 0.29552022f);
          _1262 = (_1256 * 0.9553365f) - (_1254 * 0.29552022f);
          _1263 = _457 - _1259;
          _1264 = _460 - _1262;
          _1272 = saturate(exp2(log2(sqrt((_1263 * _1263) + (_1264 * _1264))) * 15.0f));  // [sem: expr_sat]
          _1273 = abs(_1259);
          _1274 = abs(_1262);
          _1276 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_1273, _1274)), 0.0f);
          _1278 = (_1276 * 1.847759f) + _1273;
          _1280 = _1274 - (_1276 * 0.76536685f);
          _1282 = min(dot(float2(0.9238795f, 0.38268343f), float2(_1278, _1280)), 0.0f);
          _1284 = _1278 - (_1282 * 1.847759f);
          _1285 = _1204 * 0.012426407f;
          _1290 = _1284 - min(max(_1284, (-0.020710679f - _1285)), (_1285 + 0.020710679f));
          _1295 = (_1280 - (_1282 * 0.76536685f)) + (-0.05f - (_1204 * 0.030000001f));
          _1306 = ((float)((int)((int)((int)(uint)((int)(_1295 > 0.0f))) - (int)((int)(uint)((int)(_1295 < 0.0f)))))) * sqrt((_1290 * _1290) + (_1295 * _1295));
          _1309 = saturate(abs(_1306) * 200.0f);  // [sem: expr_sat]
          _1310 = _1199 * 0.1f;
          _1330 = ((saturate((1.0f - _1272) - saturate((_1309 * _1309) * (3.0f - (_1309 * 2.0f)))) * 0.4f) + saturate(saturate(exp2((300.0f / _1241) * log2(saturate(1.0f - _1306)))) - _1272)) * _1310;
          _1332 = (_1225 * 0.5f) + 0.5f;
          _1340 = (((frac(sin(_1199 * 15.0f) * 43758.547f) + -1.0f) * _1227) + 1.0f) * _1233;
          _1343 = WaveReadLaneFirst(_materialIndex);
          _1351 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1343 < (uint)170000), _1343, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
          _1353 = _110 - (_1340 * _259);
          _1355 = _109 - (_1340 * _262);
          _1358 = (_1353 * 0.9553365f) + (_1355 * 0.29552022f);
          _1361 = (_1355 * 0.9553365f) - (_1353 * 0.29552022f);
          _1362 = _259 - _1358;
          _1363 = _262 - _1361;
          _1371 = saturate(exp2(log2(sqrt((_1362 * _1362) + (_1363 * _1363))) * 15.0f));  // [sem: expr_sat]
          _1372 = abs(_1358);
          _1373 = abs(_1361);
          _1375 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_1372, _1373)), 0.0f);
          _1377 = (_1375 * 1.847759f) + _1372;
          _1379 = _1373 - (_1375 * 0.76536685f);
          _1381 = min(dot(float2(0.9238795f, 0.38268343f), float2(_1377, _1379)), 0.0f);
          _1383 = _1377 - (_1381 * 1.847759f);
          _1384 = _1232 * 0.012426407f;
          _1389 = _1383 - min(max(_1383, (-0.020710679f - _1384)), (_1384 + 0.020710679f));
          _1394 = (_1379 - (_1381 * 0.76536685f)) + (-0.05f - (_1232 * 0.030000001f));
          _1405 = ((float)((int)((int)((int)(uint)((int)(_1394 > 0.0f))) - (int)((int)(uint)((int)(_1394 < 0.0f)))))) * sqrt((_1389 * _1389) + (_1394 * _1394));
          _1408 = saturate(abs(_1405) * 200.0f);  // [sem: expr_sat]
          _1428 = ((saturate((1.0f - _1371) - saturate((_1408 * _1408) * (3.0f - (_1408 * 2.0f)))) * 0.4f) + saturate(saturate(exp2((300.0f / _1340) * log2(saturate(1.0f - _1405)))) - _1371)) * _1310;
          _1432 = (_1428 + ((_1330 + _1197) * _1332)) * _1332;
          _1436 = (_1428 + ((_1330 + _1196) * _1332)) * _1332;
          _1440 = (_1428 + ((_1330 + _1195) * _1332)) * _1332;
          if (!(_1198 == 10)) {
            _1194 = _1198;
            _1195 = _1440;
            _1196 = _1436;
            _1197 = _1432;
            continue;
          }
          while(true) {
            _1447 = saturate(exp2(log2(_217.w)) * 4.0f);  // [sem: expr_sat]
            _1450 = WaveReadLaneFirst(_materialIndex);
            _1458 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1450 < (uint)170000), _1450, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareAnimSpeed);
            _1461 = WaveReadLaneFirst(_materialIndex);
            _1469 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1461 < (uint)170000), _1461, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
            _1521 = (((((frac(sin(ceil(_345)) * 43758.547f) - _1184) * frac(_345)) + _1184) * 0.8f) + 0.2f) * (((((lerp(_1181, 1.0f, 0.4f)) * 0.14f) * exp2(log2(saturate(1.0f - (abs(_270 + -0.55f) * 3.0f))) * 5.2f)) * saturate(exp2((_1183 * 2.7272725f) * sqrt((_332 * _332) + (_1182 * _1182))))) + ((((lerp(_1185, 1.0f, 0.4f)) * 0.2f) * exp2(log2(saturate(1.0f - (abs(_365 + -0.25f) * 3.0f))) * 5.2f)) * saturate(exp2((_251 * 6.0f) * _1183))));
            _1529 = ((_srcTargetSizeAndInv.x * ((_164 * 0.5f) + 0.5f)) + 0.5f) * _srcTargetSizeAndInv.z;
            _1536 = ((_srcTargetSizeAndInv.y * ((_145 * 0.5f) + 0.5f)) + 0.5f) * _srcTargetSizeAndInv.w;
            _1553 = dot(float3((_invViewProj[1].x), (_invViewProj[1].y), (_invViewProj[1].z)), float3((-0.0f - _viewPos.x), ((-0.0f - _viewPos.y) - _questGuideWorldPosition.y), (-0.0f - _viewPos.z)));
            _1554 = 5.0f / _srcTargetSizeAndInv.x;
            _1555 = _1529 - _1554;
            _1556 = _1554 + _1536;
            __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_1558.x, _1558.y);
            _1564 = ((float)((int)((int)((float)((int)((int)(_1558.x))))))) + 0.5f;
            _1568 = ((float)((int)((int)((float)((int)((int)(_1558.y))))))) + 0.5f;
            _1570 = (int)(_1564 * _1555);
            _1572 = (int)(_1568 * _1556);
            if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1570, _1572, 0)))).x) & 255) == 201) {
              _1589 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1555)), ((int)(_customRenderPassSizeInvSize.y * _1556)), 0)))).x);
            } else {
              _1589 = 0.0f;
            }
            _1591 = (int)(_1564 * _1529);
            if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1591, _1572, 0)))).x) & 255) == 201) {
              _1608 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1529)), ((int)(_customRenderPassSizeInvSize.y * _1556)), 0)))).x);
            } else {
              _1608 = 0.0f;
            }
            _1609 = _1554 + _1529;
            _1611 = (int)(_1564 * _1609);
            if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1611, _1572, 0)))).x) & 255) == 201) {
              _1628 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1609)), ((int)(_customRenderPassSizeInvSize.y * _1556)), 0)))).x);
            } else {
              _1628 = 0.0f;
            }
            _1630 = (int)(_1568 * _1536);
            if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1611, _1630, 0)))).x) & 255) == 201) {
              _1647 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1609)), ((int)(_customRenderPassSizeInvSize.y * _1536)), 0)))).x);
            } else {
              _1647 = 0.0f;
            }
            _1648 = _1536 - _1554;
            _1650 = (int)(_1568 * _1648);
            if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1611, _1650, 0)))).x) & 255) == 201) {
              _1667 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1609)), ((int)(_customRenderPassSizeInvSize.y * _1648)), 0)))).x);
            } else {
              _1667 = 0.0f;
            }
            if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1591, _1650, 0)))).x) & 255) == 201) {
              _1684 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1529)), ((int)(_customRenderPassSizeInvSize.y * _1648)), 0)))).x);
            } else {
              _1684 = 0.0f;
            }
            if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1570, _1650, 0)))).x) & 255) == 201) {
              _1701 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1555)), ((int)(_customRenderPassSizeInvSize.y * _1648)), 0)))).x);
            } else {
              _1701 = 0.0f;
            }
            if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_1570, _1630, 0)))).x) & 255) == 201) {
              _1718 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _1555)), ((int)(_customRenderPassSizeInvSize.y * _1536)), 0)))).x);
            } else {
              _1718 = 0.0f;
            }
            _1721 = WaveReadLaneFirst(_materialIndex);
            _1729 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1721 < (uint)170000), _1721, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightIntensity);
            _1732 = WaveReadLaneFirst(_materialIndex);
            _1740 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1732 < (uint)170000), _1732, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightThreshold);
            _1745 = _questGuideWorldPosition.y + _viewPos.y;
            // [sem: expr_sat]
            _1756 = saturate((sqrt(((_viewPos.x * _viewPos.x) + (_viewPos.z * _viewPos.z)) + (_1745 * _1745)) * 0.05f) + -1.0f);
            _1766 = (_exposure2.x * 200.0f) * ((((_1756 * _1756) * 0.95f) * (3.0f - (_1756 * 2.0f))) + 0.05f);
            if (!_2) {
              continue;
            }
            _3373 = _1191 + _1187;
            _3518 = (dot(float4(saturate((_nearFarProj.x / max(1e-07f, _1667)) - _1553), saturate((_nearFarProj.x / max(1e-07f, _1684)) - _1553), saturate((_nearFarProj.x / max(1e-07f, _1701)) - _1553), saturate((_nearFarProj.x / max(1e-07f, _1718)) - _1553)), float4(0.25f, 0.25f, 0.25f, 0.25f)) + dot(float4(saturate((_nearFarProj.x / max(1e-07f, _1589)) - _1553), saturate((_nearFarProj.x / max(1e-07f, _1608)) - _1553), saturate((_nearFarProj.x / max(1e-07f, _1628)) - _1553), saturate((_nearFarProj.x / max(1e-07f, _1647)) - _1553)), float4(0.25f, 0.25f, 0.25f, 0.25f)));
            _3519 = (_1766 * ((((((_1440 * 0.120000005f) + (_1176 * 0.15f)) * _217.z) * _1447) + ((_217.w * 0.064f) * (_3373 + _940))) + _1521));
            _3520 = (_1766 * ((((((_1436 * 0.075f) + (_1175 * 0.15f)) * _217.y) * _1447) + ((((_940 * 0.4f) + (_1187 * 0.3f)) + (_1191 * 0.5f)) * _1192)) + _1521));
            _3521 = (_1766 * ((((((_1432 * 0.045f) + (_1174 * 0.15f)) * _217.x) * _1447) + (((_3373 * 0.2f) + (_940 * 0.3f)) * _1192)) + _1521));
            break;
          }
          break;
        }
        break;
      }
    } else {
      _3518 = 1.0f;
      _3519 = 0.0f;
      _3520 = 0.0f;
      _3521 = 0.0f;
    }
  } else {
    if (!((_135 < 0.0f) || ((_164 <= -1.6f) || (((_145 >= 1.05f) || (_145 <= -1.5f)) || (_164 >= 1.6f))))) {
      if (!(abs(_questGuideWorldPosition.z) <= 1e-05f)) {
        _1785 = WaveReadLaneFirst(_materialIndex);
        _1793 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1785 < (uint)170000), _1785, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
        _1796 = WaveReadLaneFirst(_materialIndex);
        _1804 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1796 < (uint)170000), _1796, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._lensColorTableTexture);
        _1808 = _109 * _109;
        _1816 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1804 < (uint)65000), _1804, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2((sqrt(_1808 + (_106 * _106)) * 2.0f), 0.5f));
        _1821 = WaveReadLaneFirst(_materialIndex);
        _1829 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1821 < (uint)170000), _1821, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._chromaticShiftValue);
        _1830 = -0.0f - _164;
        _1831 = -0.0f - _145;
        _1834 = WaveReadLaneFirst(_materialIndex);
        _1842 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1834 < (uint)170000), _1834, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
        _1843 = -0.0f - _110;
        _1845 = rsqrt(dot(float3(_109, _1843, 0.0f), float3(_109, _1843, 0.0f)));  // [sem: invLength]
        _1846 = _1845 * _109;
        _1847 = _1845 * _1843;
        _1850 = sqrt((_110 * _110) + _1808);
        _1852 = cos(_1850 * 1.5f);
        _1853 = 1.0f - _1852;
        _1855 = _1853 * dot(float3(_1846, _1847, 0.0f), float3(_1830, _1831, 0.0f));
        _1858 = (_1855 * _1846) + (_1852 * _1830);
        _1861 = (_1855 * _1847) + (_1852 * _1831);
        _1863 = _110 - (_1858 * 0.56666666f);
        _1865 = _109 - (_1861 * 0.56666666f);
        _1869 = sqrt((_1863 * _1863) + (_1865 * _1865));
        _1872 = (pow(_1869, 0.5f));
        _1874 = atan(_1865 / _1863);
        _1875 = (_1863 < 0.0f);
        _1876 = (_1863 == 0.0f);
        _1877 = (_1865 >= 0.0f);
        _1878 = (_1865 < 0.0f);
        _1882 = atan((-0.0f - _1865) / (-0.0f - _1863));
        _1883 = (_1863 > -0.0f);
        _1884 = (_1863 == -0.0f);
        _1885 = (_1865 <= -0.0f);
        _1886 = (_1865 > -0.0f);
        _1889 = _time.x * 2.0f;
        _1930 = max((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1842 < (uint)65000), _1842, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_1876 && _1877), 18.849556f, select((_1876 && _1878), -18.849556f, (select((_1875 && _1878), (_1874 + -3.1415927f), select((_1875 && _1877), (_1874 + 3.1415927f), _1874)) * 12.0f))), (((_time.x * 0.2f) + _1872) * 12.0f))))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1842 < (uint)65000), _1842, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((select((_1884 && _1885), 18.849556f, select((_1884 && _1886), -18.849556f, (select((_1883 && _1886), (_1882 + -3.1415927f), select((_1883 && _1885), (_1882 + 3.1415927f), _1882)) * 12.0f))) + _1889), (_1889 + (_1872 * 12.0f)))))).x));
        _1931 = _1863 - _1858;
        _1941 = TEXCOORD.x * 0.1f;
        _1943 = (_time.x * 1.6800001f) + _1941;
        _1944 = _1943 + 16.800001f;
        _1950 = WaveReadLaneFirst(_materialIndex);
        _1958 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_1950 < (uint)170000), _1950, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
        _1959 = _1858 + _110;
        _1960 = _1861 + _109;
        _1964 = sqrt((_1959 * _1959) + (_1960 * _1960));
        _1967 = (pow(_1964, 0.5f));
        _1969 = atan(_1960 / _1959);
        _1970 = (_1959 < 0.0f);
        _1971 = (_1959 == 0.0f);
        _1972 = (_1960 >= 0.0f);
        _1973 = (_1960 < 0.0f);
        _1977 = atan((-0.0f - _1960) / (-0.0f - _1959));
        _1978 = (_1959 > -0.0f);
        _1979 = (_1959 == -0.0f);
        _1980 = (_1960 <= -0.0f);
        _1981 = (_1960 > -0.0f);
        _1984 = _time.x * 2.0f;
        _2025 = max((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1958 < (uint)65000), _1958, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(select((_1971 && _1972), 18.849556f, select((_1971 && _1973), -18.849556f, (select((_1970 && _1973), (_1969 + -3.1415927f), select((_1970 && _1972), (_1969 + 3.1415927f), _1969)) * 12.0f))), (((_time.x * 0.2f) + _1967) * 12.0f))))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1958 < (uint)65000), _1958, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((select((_1979 && _1980), 18.849556f, select((_1979 && _1981), -18.849556f, (select((_1978 && _1981), (_1977 + -3.1415927f), select((_1978 && _1980), (_1977 + 3.1415927f), _1977)) * 12.0f))) + _1984), (_1984 + (_1967 * 12.0f)))))).x));
        _2026 = _1943 + 4.59375f;
        _2030 = frac(sin(floor(_2026)) * 43758.547f);
        _2038 = ((frac(sin(ceil(_2026)) * 43758.547f) - _2030) * frac(_2026)) + _2030;
        _2040 = (_2038 * 0.050000012f) + 0.45f;
        _2043 = WaveReadLaneFirst(_materialIndex);
        _2051 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_2043 < (uint)170000), _2043, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
        _2053 = dot(float3(_1846, _1847, 0.0f), float3(_164, _145, 0.0f)) * _1853;
        _2056 = (_2053 * _1846) + (_1852 * _164);
        _2059 = (_2053 * _1847) + (_1852 * _145);
        _2061 = _110 - (_2056 * _2040);
        _2063 = _109 - (_2059 * _2040);
        _2066 = (_2061 * 0.9553365f) + (_2063 * 0.29552022f);
        _2069 = (_2063 * 0.9553365f) - (_2061 * 0.29552022f);
        _2070 = _2056 - _2066;
        _2071 = _2059 - _2069;
        _2079 = saturate(exp2(log2(sqrt((_2070 * _2070) + (_2071 * _2071))) * 15.0f));  // [sem: expr_sat]
        _2080 = abs(_2066);
        _2081 = abs(_2069);
        _2083 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_2080, _2081)), 0.0f);
        _2085 = (_2083 * 1.847759f) + _2080;
        _2087 = _2081 - (_2083 * 0.76536685f);
        _2089 = min(dot(float2(0.9238795f, 0.38268343f), float2(_2085, _2087)), 0.0f);
        _2091 = _2085 - (_2089 * 1.847759f);
        _2094 = _2091 - min(max(_2091, -0.060060967f), 0.060060967f);
        _2097 = (_2087 - (_2089 * 0.76536685f)) + -0.145f;
        _2108 = ((float)((int)((int)((int)(uint)((int)(_2097 > 0.0f))) - (int)((int)(uint)((int)(_2097 < 0.0f)))))) * sqrt((_2094 * _2094) + (_2097 * _2097));
        _2111 = saturate(abs(_2108) * 200.0f);  // [sem: expr_sat]
        _2112 = _1943 + 4.4625006f;
        _2116 = frac(sin(floor(_2112)) * 43758.547f);
        _2124 = ((frac(sin(ceil(_2112)) * 43758.547f) - _2116) * frac(_2112)) + _2116;
        _2126 = (_2124 * 0.08000002f) + 0.71999997f;
        _2129 = WaveReadLaneFirst(_materialIndex);
        _2137 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_2129 < (uint)170000), _2129, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
        _2139 = _110 - (_2126 * _2056);
        _2141 = _109 - (_2126 * _2059);
        _2144 = (_2139 * 0.9553365f) + (_2141 * 0.29552022f);
        _2147 = (_2141 * 0.9553365f) - (_2139 * 0.29552022f);
        _2148 = _2056 - _2144;
        _2149 = _2059 - _2147;
        _2157 = saturate(exp2(log2(sqrt((_2148 * _2148) + (_2149 * _2149))) * 15.0f));  // [sem: expr_sat]
        _2158 = abs(_2144);
        _2159 = abs(_2147);
        _2161 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_2158, _2159)), 0.0f);
        _2163 = (_2161 * 1.847759f) + _2158;
        _2165 = _2159 - (_2161 * 0.76536685f);
        _2167 = min(dot(float2(0.9238795f, 0.38268343f), float2(_2163, _2165)), 0.0f);
        _2169 = _2163 - (_2167 * 1.847759f);
        _2172 = _2169 - min(max(_2169, -0.08491378f), 0.08491378f);
        _2175 = (_2165 - (_2167 * 0.76536685f)) + -0.205f;
        _2186 = ((float)((int)((int)((int)(uint)((int)(_2175 > 0.0f))) - (int)((int)(uint)((int)(_2175 < 0.0f)))))) * sqrt((_2172 * _2172) + (_2175 * _2175));
        _2189 = saturate(abs(_2186) * 200.0f);  // [sem: expr_sat]
        _2214 = _1943 + 1.7308595f;
        _2218 = frac(sin(floor(_2214)) * 43758.547f);
        _2226 = ((frac(sin(ceil(_2214)) * 43758.547f) - _2218) * frac(_2214)) + _2218;
        _2228 = 1.5f - (_2226 * 0.15000004f);
        _2231 = WaveReadLaneFirst(_materialIndex);
        _2239 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_2231 < (uint)170000), _2231, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
        _2241 = _110 - (_2228 * _1858);
        _2243 = _109 - (_2228 * _1861);
        _2246 = (_2241 * 0.9553365f) + (_2243 * 0.29552022f);
        _2249 = (_2243 * 0.9553365f) - (_2241 * 0.29552022f);
        _2250 = _1858 - _2246;
        _2251 = _1861 - _2249;
        _2259 = saturate(exp2(log2(sqrt((_2250 * _2250) + (_2251 * _2251))) * 15.0f));  // [sem: expr_sat]
        _2260 = abs(_2246);
        _2261 = abs(_2249);
        _2263 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_2260, _2261)), 0.0f);
        _2265 = (_2263 * 1.847759f) + _2260;
        _2267 = _2261 - (_2263 * 0.76536685f);
        _2269 = min(dot(float2(0.9238795f, 0.38268343f), float2(_2265, _2267)), 0.0f);
        _2271 = _2265 - (_2269 * 1.847759f);
        _2274 = _2271 - min(max(_2271, -0.12633514f), 0.12633514f);
        _2277 = (_2267 - (_2269 * 0.76536685f)) + -0.305f;
        _2288 = ((float)((int)((int)((int)(uint)((int)(_2277 > 0.0f))) - (int)((int)(uint)((int)(_2277 < 0.0f)))))) * sqrt((_2274 * _2274) + (_2277 * _2277));
        _2291 = saturate(abs(_2288) * 200.0f);  // [sem: expr_sat]
        _2292 = _1943 + 4.8562503f;
        _2296 = frac(sin(floor(_2292)) * 43758.547f);
        _2304 = ((frac(sin(ceil(_2292)) * 43758.547f) - _2296) * frac(_2292)) + _2296;
        _2328 = 0.5f - (_2304 * 0.050000012f);
        _2331 = WaveReadLaneFirst(_materialIndex);
        _2339 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_2331 < (uint)170000), _2331, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
        _2341 = _110 - (_2328 * _1858);
        _2343 = _109 - (_2328 * _1861);
        _2346 = (_2341 * 0.9553365f) + (_2343 * 0.29552022f);
        _2349 = (_2343 * 0.9553365f) - (_2341 * 0.29552022f);
        _2350 = _1858 - _2346;
        _2351 = _1861 - _2349;
        _2359 = saturate(exp2(log2(sqrt((_2350 * _2350) + (_2351 * _2351))) * 15.0f));  // [sem: expr_sat]
        _2360 = abs(_2346);
        _2361 = abs(_2349);
        _2363 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_2360, _2361)), 0.0f);
        _2365 = (_2363 * 1.847759f) + _2360;
        _2367 = _2361 - (_2363 * 0.76536685f);
        _2369 = min(dot(float2(0.9238795f, 0.38268343f), float2(_2365, _2367)), 0.0f);
        _2371 = _2365 - (_2369 * 1.847759f);
        _2374 = _2371 - min(max(_2371, -0.08491378f), 0.08491378f);
        _2377 = (_2367 - (_2369 * 0.76536685f)) + -0.205f;
        _2388 = ((float)((int)((int)((int)(uint)((int)(_2377 > 0.0f))) - (int)((int)(uint)((int)(_2377 < 0.0f)))))) * sqrt((_2374 * _2374) + (_2377 * _2377));
        _2391 = saturate(abs(_2388) * 200.0f);  // [sem: expr_sat]
        _2392 = _1943 + 1.1156251f;
        _2396 = frac(sin(floor(_2392)) * 43758.547f);
        _2404 = ((frac(sin(ceil(_2392)) * 43758.547f) - _2396) * frac(_2392)) + _2396;
        _2430 = 0.2f - (_2404 * 0.020000005f);
        _2433 = WaveReadLaneFirst(_materialIndex);
        _2441 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_2433 < (uint)170000), _2433, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
        _2443 = _110 - (_2430 * _1858);
        _2445 = _109 - (_2430 * _1861);
        _2448 = (_2443 * 0.9553365f) + (_2445 * 0.29552022f);
        _2451 = (_2445 * 0.9553365f) - (_2443 * 0.29552022f);
        _2452 = _1858 - _2448;
        _2453 = _1861 - _2451;
        _2461 = saturate(exp2(log2(sqrt((_2452 * _2452) + (_2453 * _2453))) * 15.0f));  // [sem: expr_sat]
        _2462 = abs(_2448);
        _2463 = abs(_2451);
        _2465 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_2462, _2463)), 0.0f);
        _2467 = (_2465 * 1.847759f) + _2462;
        _2469 = _2463 - (_2465 * 0.76536685f);
        _2471 = min(dot(float2(0.9238795f, 0.38268343f), float2(_2467, _2469)), 0.0f);
        _2473 = _2467 - (_2471 * 1.847759f);
        _2476 = _2473 - min(max(_2473, -0.06834524f), 0.06834524f);
        _2479 = (_2469 - (_2471 * 0.76536685f)) + -0.165f;
        _2490 = ((float)((int)((int)((int)(uint)((int)(_2479 > 0.0f))) - (int)((int)(uint)((int)(_2479 < 0.0f)))))) * sqrt((_2476 * _2476) + (_2479 * _2479));
        _2493 = saturate(abs(_2490) * 200.0f);  // [sem: expr_sat]
        _2539 = (((saturate((1.0f - _2359) - saturate((_2391 * _2391) * (3.0f - (_2391 * 2.0f)))) * 0.4f) + saturate(saturate(exp2((5.0f / (0.05f - (_2304 * 0.0050000013f))) * log2(saturate(1.0f - _2388)))) - _2359)) * ((_2404 * 0.9f) + 0.1f)) + (((saturate((1.0f - _2157) - saturate((_2189 * _2189) * (3.0f - (_2189 * 2.0f)))) * 0.4f) + saturate(saturate(exp2((5.0f / ((_2124 * 0.008000002f) + 0.072f)) * log2(saturate(1.0f - _2186)))) - _2157)) * ((_2038 * 0.9f) + 0.1f));
        _2541 = 0;
        _2542 = 0.0f;
        _2543 = 0.0f;
        _2544 = 0.0f;
        while(true) {
          _2545 = (int)(_2541) + (int)(1);
          _2546 = (float)((int)(_2545));
          _2555 = ((_time.x * 2.52f) * frac(sin((float)((int)(_2541))) * 43758.547f)) + _1941;
          _2559 = frac(sin(floor(_2555)) * 43758.547f);
          _2567 = ((frac(sin(ceil(_2555)) * 43758.547f) - _2559) * frac(_2555)) + _2559;
          _2569 = (_2567 * 0.16f) + 0.64000005f;
          _2570 = _2546 * 0.07f;
          _2578 = ((_2569 * (frac(sin(_2546 * 10.0f) * 43758.547f) + -1.0f)) + 1.0f) * _2570;
          _2579 = _2546 * 0.001f;
          _2587 = (((frac(sin(_2546 * 2000.0f) * 43758.547f) + -1.0f) * 0.2f) + 1.0f) * _2579;
          _2590 = WaveReadLaneFirst(_materialIndex);
          _2598 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_2590 < (uint)170000), _2590, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
          _2600 = _110 - (_2578 * _164);
          _2602 = _109 - (_2578 * _145);
          _2605 = (_2600 * 0.9553365f) + (_2602 * 0.29552022f);
          _2608 = (_2602 * 0.9553365f) - (_2600 * 0.29552022f);
          _2609 = _164 - _2605;
          _2610 = _145 - _2608;
          _2618 = saturate(exp2(log2(sqrt((_2609 * _2609) + (_2610 * _2610))) * 15.0f));  // [sem: expr_sat]
          _2619 = abs(_2605);
          _2620 = abs(_2608);
          _2622 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_2619, _2620)), 0.0f);
          _2624 = (_2622 * 1.847759f) + _2619;
          _2626 = _2620 - (_2622 * 0.76536685f);
          _2628 = min(dot(float2(0.9238795f, 0.38268343f), float2(_2624, _2626)), 0.0f);
          _2630 = _2624 - (_2628 * 1.847759f);
          _2635 = _2630 - min(max(_2630, (_2587 * -0.41421357f)), (_2587 * 0.41421357f));
          _2638 = (_2626 - (_2628 * 0.76536685f)) - _2587;
          _2649 = ((float)((int)((int)((int)(uint)((int)(_2638 > 0.0f))) - (int)((int)(uint)((int)(_2638 < 0.0f)))))) * sqrt((_2635 * _2635) + (_2638 * _2638));
          _2652 = saturate(abs(_2649) * 200.0f);  // [sem: expr_sat]
          _2660 = (((frac(sin(_2546 * 5.0f) * 43758.547f) + -1.0f) * _2569) + 1.0f) * _2570;
          _2668 = (((frac(sin(_2546 * 20.0f) * 43758.547f) + -1.0f) * 0.2f) + 1.0f) * _2579;
          _2671 = WaveReadLaneFirst(_materialIndex);
          _2679 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_2671 < (uint)170000), _2671, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
          _2681 = _110 - (_2660 * _1830);
          _2683 = _109 - (_2660 * _1831);
          _2686 = (_2681 * 0.9553365f) + (_2683 * 0.29552022f);
          _2689 = (_2683 * 0.9553365f) - (_2681 * 0.29552022f);
          _2690 = _1830 - _2686;
          _2691 = _1831 - _2689;
          _2699 = saturate(exp2(log2(sqrt((_2690 * _2690) + (_2691 * _2691))) * 15.0f));  // [sem: expr_sat]
          _2700 = abs(_2686);
          _2701 = abs(_2689);
          _2703 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_2700, _2701)), 0.0f);
          _2705 = (_2703 * 1.847759f) + _2700;
          _2707 = _2701 - (_2703 * 0.76536685f);
          _2709 = min(dot(float2(0.9238795f, 0.38268343f), float2(_2705, _2707)), 0.0f);
          _2711 = _2705 - (_2709 * 1.847759f);
          _2716 = _2711 - min(max(_2711, (_2668 * -0.41421357f)), (_2668 * 0.41421357f));
          _2719 = (_2707 - (_2709 * 0.76536685f)) - _2668;
          _2730 = ((float)((int)((int)((int)(uint)((int)(_2719 > 0.0f))) - (int)((int)(uint)((int)(_2719 < 0.0f)))))) * sqrt((_2716 * _2716) + (_2719 * _2719));
          _2733 = saturate(abs(_2730) * 200.0f);  // [sem: expr_sat]
          _2772 = ((saturate(saturate(exp2((100.0f / _2578) * log2(saturate(1.0f - _2649)))) - _2618) + saturate(saturate(exp2((100.0f / _2660) * log2(saturate(1.0f - _2730)))) - _2699)) + ((saturate((1.0f - _2618) - saturate((_2652 * _2652) * (3.0f - (_2652 * 2.0f)))) + saturate((1.0f - _2699) - saturate((_2733 * _2733) * (3.0f - (_2733 * 2.0f))))) * 0.4f)) * _2567;
          _2773 = _2772 + _2544;
          _2774 = _2772 + _2543;
          _2775 = _2772 + _2542;
          if (!(_2545 == 20)) {
            _2541 = _2545;
            _2542 = _2775;
            _2543 = _2774;
            _2544 = _2773;
            continue;
          }
          _2780 = _1930 * _1930;
          _2781 = _1865 - _1861;
          _2782 = log2(1.0f - saturate(exp2(log2(sqrt((_1858 * _1858) + (_1861 * _1861))) * 0.5f)));
          _2783 = frac(sin(floor(_1944)) * 43758.547f);
          _2784 = _2025 * _2025;
          _2786 = ((saturate((1.0f - _2259) - saturate((_2291 * _2291) * (3.0f - (_2291 * 2.0f)))) * 0.4f) + saturate(saturate(exp2((5.0f / (0.15f - (_2226 * 0.015000003f))) * log2(saturate(1.0f - _2288)))) - _2259)) * ((_2304 * 0.9f) + 0.1f);
          _2790 = ((saturate(saturate(exp2((1.0f / (0.020000001f - (_2404 * 0.0020000006f))) * log2(saturate(1.0f - _2490)))) - _2461) + (saturate((1.0f - _2461) - saturate((_2493 * _2493) * (3.0f - (_2493 * 2.0f)))) * 0.4f)) * ((_2226 * 0.9f) + 0.1f)) + (((saturate((1.0f - _2079) - saturate((_2111 * _2111) * (3.0f - (_2111 * 2.0f)))) * 0.4f) + saturate(saturate(exp2((5.0f / ((_2038 * 0.0050000013f) + 0.044999998f)) * log2(saturate(1.0f - _2108)))) - _2079)) * ((_2124 * 0.9f) + 0.1f));
          _2791 = _1816.w * 0.08f;
          _2793 = 0;
          _2794 = 0.0f;
          _2795 = 0.0f;
          _2796 = 0.0f;
          while(true) {
            _2797 = (int)(_2793) + (int)(1);
            _2798 = (float)((int)(_2797));
            _2803 = frac(sin(_2798 * 300.0f) * 43758.547f) + -1.0f;
            _2812 = ((_time.x * 2.52f) * frac(sin((float)((int)(_2793))) * 43758.547f)) + _1941;
            _2816 = frac(sin(floor(_2812)) * 43758.547f);
            _2824 = ((frac(sin(ceil(_2812)) * 43758.547f) - _2816) * frac(_2812)) + _2816;
            _2826 = (_2824 * 0.03750001f) + 0.7125f;
            _2831 = frac(sin(_2798 * 170.0f) * 43758.547f) + -1.0f;
            _2832 = _2798 * 0.15f;
            _2840 = ((_2826 * (frac(sin(_2798 * 110.0f) * 43758.547f) + -1.0f)) + 1.0f) * _2832;
            _2843 = WaveReadLaneFirst(_materialIndex);
            _2851 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_2843 < (uint)170000), _2843, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
            _2853 = _110 - (_2840 * _2056);
            _2855 = _109 - (_2840 * _2059);
            _2858 = (_2853 * 0.9553365f) + (_2855 * 0.29552022f);
            _2861 = (_2855 * 0.9553365f) - (_2853 * 0.29552022f);
            _2862 = _2056 - _2858;
            _2863 = _2059 - _2861;
            _2871 = saturate(exp2(log2(sqrt((_2862 * _2862) + (_2863 * _2863))) * 15.0f));  // [sem: expr_sat]
            _2872 = abs(_2858);
            _2873 = abs(_2861);
            _2875 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_2872, _2873)), 0.0f);
            _2877 = (_2875 * 1.847759f) + _2872;
            _2879 = _2873 - (_2875 * 0.76536685f);
            _2881 = min(dot(float2(0.9238795f, 0.38268343f), float2(_2877, _2879)), 0.0f);
            _2883 = _2877 - (_2881 * 1.847759f);
            _2884 = _2803 * 0.012426407f;
            _2889 = _2883 - min(max(_2883, (-0.020710679f - _2884)), (_2884 + 0.020710679f));
            _2894 = (_2879 - (_2881 * 0.76536685f)) + (-0.05f - (_2803 * 0.030000001f));
            _2905 = ((float)((int)((int)((int)(uint)((int)(_2894 > 0.0f))) - (int)((int)(uint)((int)(_2894 < 0.0f)))))) * sqrt((_2889 * _2889) + (_2894 * _2894));
            _2908 = saturate(abs(_2905) * 200.0f);  // [sem: expr_sat]
            _2909 = _2798 * 0.1f;
            _2929 = ((saturate((1.0f - _2871) - saturate((_2908 * _2908) * (3.0f - (_2908 * 2.0f)))) * 0.4f) + saturate(saturate(exp2((300.0f / _2840) * log2(saturate(1.0f - _2905)))) - _2871)) * _2909;
            _2931 = (_2824 * 0.5f) + 0.5f;
            _2939 = (((frac(sin(_2798 * 15.0f) * 43758.547f) + -1.0f) * _2826) + 1.0f) * _2832;
            _2942 = WaveReadLaneFirst(_materialIndex);
            _2950 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_2942 < (uint)170000), _2942, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex2);
            _2952 = _110 - (_2939 * _1858);
            _2954 = _109 - (_2939 * _1861);
            _2957 = (_2952 * 0.9553365f) + (_2954 * 0.29552022f);
            _2960 = (_2954 * 0.9553365f) - (_2952 * 0.29552022f);
            _2961 = _1858 - _2957;
            _2962 = _1861 - _2960;
            _2970 = saturate(exp2(log2(sqrt((_2961 * _2961) + (_2962 * _2962))) * 15.0f));  // [sem: expr_sat]
            _2971 = abs(_2957);
            _2972 = abs(_2960);
            _2974 = min(dot(float2(-0.9238795f, 0.38268343f), float2(_2971, _2972)), 0.0f);
            _2976 = (_2974 * 1.847759f) + _2971;
            _2978 = _2972 - (_2974 * 0.76536685f);
            _2980 = min(dot(float2(0.9238795f, 0.38268343f), float2(_2976, _2978)), 0.0f);
            _2982 = _2976 - (_2980 * 1.847759f);
            _2983 = _2831 * 0.012426407f;
            _2988 = _2982 - min(max(_2982, (-0.020710679f - _2983)), (_2983 + 0.020710679f));
            _2993 = (_2978 - (_2980 * 0.76536685f)) + (-0.05f - (_2831 * 0.030000001f));
            _3004 = ((float)((int)((int)((int)(uint)((int)(_2993 > 0.0f))) - (int)((int)(uint)((int)(_2993 < 0.0f)))))) * sqrt((_2988 * _2988) + (_2993 * _2993));
            _3007 = saturate(abs(_3004) * 200.0f);  // [sem: expr_sat]
            _3027 = ((saturate((1.0f - _2970) - saturate((_3007 * _3007) * (3.0f - (_3007 * 2.0f)))) * 0.4f) + saturate(saturate(exp2((300.0f / _2939) * log2(saturate(1.0f - _3004)))) - _2970)) * _2909;
            _3031 = (_3027 + ((_2929 + _2796) * _2931)) * _2931;
            _3035 = (_3027 + ((_2929 + _2795) * _2931)) * _2931;
            _3039 = (_3027 + ((_2929 + _2794) * _2931)) * _2931;
            if (!(_2797 == 10)) {
              _2793 = _2797;
              _2794 = _3039;
              _2795 = _3035;
              _2796 = _3031;
              continue;
            }
            while(true) {
              _3046 = saturate(exp2(log2(_1816.w)) * 4.0f);  // [sem: expr_sat]
              _3049 = WaveReadLaneFirst(_materialIndex);
              _3057 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_3049 < (uint)170000), _3049, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareAnimSpeed);
              _3060 = WaveReadLaneFirst(_materialIndex);
              _3068 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_3060 < (uint)170000), _3060, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._noiseTex);
              _3120 = (((((frac(sin(ceil(_1944)) * 43758.547f) - _2783) * frac(_1944)) + _2783) * 0.8f) + 0.2f) * (((((lerp(_2780, 1.0f, 0.4f)) * 0.14f) * exp2(log2(saturate(1.0f - (abs(_1869 + -0.55f) * 3.0f))) * 5.2f)) * saturate(exp2((_2782 * 2.7272725f) * sqrt((_1931 * _1931) + (_2781 * _2781))))) + ((((lerp(_2784, 1.0f, 0.4f)) * 0.2f) * exp2(log2(saturate(1.0f - (abs(_1964 + -0.25f) * 3.0f))) * 5.2f)) * saturate(exp2((_1850 * 6.0f) * _2782))));
              _3128 = ((_srcTargetSizeAndInv.x * ((_164 * 0.5f) + 0.5f)) + 0.5f) * _srcTargetSizeAndInv.z;
              _3135 = ((_srcTargetSizeAndInv.y * ((_145 * 0.5f) + 0.5f)) + 0.5f) * _srcTargetSizeAndInv.w;
              _3152 = dot(float3((_invViewProj[1].x), (_invViewProj[1].y), (_invViewProj[1].z)), float3((-0.0f - _viewPos.x), ((-0.0f - _viewPos.y) - _questGuideWorldPosition.y), (-0.0f - _viewPos.z)));
              _3153 = 5.0f / _srcTargetSizeAndInv.x;
              _3154 = _3128 - _3153;
              _3155 = _3153 + _3135;
              __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_3157.x, _3157.y);
              _3163 = ((float)((int)((int)((float)((int)((int)(_3157.x))))))) + 0.5f;
              _3167 = ((float)((int)((int)((float)((int)((int)(_3157.y))))))) + 0.5f;
              _3169 = (int)(_3163 * _3154);
              _3171 = (int)(_3167 * _3155);
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_3169, _3171, 0)))).x) & 255) == 201) {
                _3188 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _3154)), ((int)(_customRenderPassSizeInvSize.y * _3155)), 0)))).x);
              } else {
                _3188 = 0.0f;
              }
              _3190 = (int)(_3163 * _3128);
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_3190, _3171, 0)))).x) & 255) == 201) {
                _3207 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _3128)), ((int)(_customRenderPassSizeInvSize.y * _3155)), 0)))).x);
              } else {
                _3207 = 0.0f;
              }
              _3208 = _3153 + _3128;
              _3210 = (int)(_3163 * _3208);
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_3210, _3171, 0)))).x) & 255) == 201) {
                _3227 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _3208)), ((int)(_customRenderPassSizeInvSize.y * _3155)), 0)))).x);
              } else {
                _3227 = 0.0f;
              }
              _3229 = (int)(_3167 * _3135);
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_3210, _3229, 0)))).x) & 255) == 201) {
                _3246 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _3208)), ((int)(_customRenderPassSizeInvSize.y * _3135)), 0)))).x);
              } else {
                _3246 = 0.0f;
              }
              _3247 = _3135 - _3153;
              _3249 = (int)(_3167 * _3247);
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_3210, _3249, 0)))).x) & 255) == 201) {
                _3266 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _3208)), ((int)(_customRenderPassSizeInvSize.y * _3247)), 0)))).x);
              } else {
                _3266 = 0.0f;
              }
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_3190, _3249, 0)))).x) & 255) == 201) {
                _3283 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _3128)), ((int)(_customRenderPassSizeInvSize.y * _3247)), 0)))).x);
              } else {
                _3283 = 0.0f;
              }
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_3169, _3249, 0)))).x) & 255) == 201) {
                _3300 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _3154)), ((int)(_customRenderPassSizeInvSize.y * _3247)), 0)))).x);
              } else {
                _3300 = 0.0f;
              }
              if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(_3169, _3229, 0)))).x) & 255) == 201) {
                _3317 = (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _3154)), ((int)(_customRenderPassSizeInvSize.y * _3135)), 0)))).x);
              } else {
                _3317 = 0.0f;
              }
              _3320 = WaveReadLaneFirst(_materialIndex);
              _3328 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_3320 < (uint)170000), _3320, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightIntensity);
              _3331 = WaveReadLaneFirst(_materialIndex);
              _3339 = WaveReadLaneFirst(BindlessParameters_PostProcessLensFlareForGimmick_CD[((int)((uint)((uint)(select(((uint)_3331 < (uint)170000), _3331, 0))) + (uint)(0)))].BindlessParameters_PostProcessLensFlareForGimmick_CD._sunFlareWeightThreshold);
              _3344 = _questGuideWorldPosition.y + _viewPos.y;
              // [sem: expr_sat]
              _3355 = saturate((sqrt(((_viewPos.x * _viewPos.x) + (_viewPos.z * _viewPos.z)) + (_3344 * _3344)) * 0.05f) + -1.0f);
              _3365 = (_exposure2.x * 200.0f) * ((((_3355 * _3355) * 0.95f) * (3.0f - (_3355 * 2.0f))) + 0.05f);
              if (!_2) {
                continue;
              }
              _3448 = _2790 + _2786;
              _3518 = (dot(float4(saturate((_nearFarProj.x / max(1e-07f, _3266)) - _3152), saturate((_nearFarProj.x / max(1e-07f, _3283)) - _3152), saturate((_nearFarProj.x / max(1e-07f, _3300)) - _3152), saturate((_nearFarProj.x / max(1e-07f, _3317)) - _3152)), float4(0.25f, 0.25f, 0.25f, 0.25f)) + dot(float4(saturate((_nearFarProj.x / max(1e-07f, _3188)) - _3152), saturate((_nearFarProj.x / max(1e-07f, _3207)) - _3152), saturate((_nearFarProj.x / max(1e-07f, _3227)) - _3152), saturate((_nearFarProj.x / max(1e-07f, _3246)) - _3152)), float4(0.25f, 0.25f, 0.25f, 0.25f)));
              _3519 = (_3365 * ((((((_3039 * 0.120000005f) + (_2775 * 0.15f)) * _1816.z) * _3046) + ((_1816.w * 0.064f) * (_3448 + _2539))) + _3120));
              _3520 = (_3365 * ((((((_3035 * 0.075f) + (_2774 * 0.15f)) * _1816.y) * _3046) + ((((_2539 * 0.4f) + (_2786 * 0.3f)) + (_2790 * 0.5f)) * _2791)) + _3120));
              _3521 = (_3365 * ((((((_3031 * 0.045f) + (_2773 * 0.15f)) * _1816.x) * _3046) + (((_3448 * 0.2f) + (_2539 * 0.3f)) * _2791)) + _3120));
              break;
            }
            break;
          }
          break;
        }
      } else {
        _3518 = 1.0f;
        _3519 = 0.0f;
        _3520 = 0.0f;
        _3521 = 0.0f;
      }
    } else {
      _3518 = 1.0f;
      _3519 = 0.0f;
      _3520 = 0.0f;
      _3521 = 0.0f;
    }
  }
  _3522 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _3535 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _3522, 0)))).x) & 127)))) + 0.5f);
  } else {
    _3535 = _3518;
  }
  _3538 = (_localToneMappingParams.w > 0.0f);
  if (_3538) {
    _3544 = _exposure0.x * _userImageAdjust.z;
    _3563 = exp2(_powerParams.x * log2(max(0.0f, (((_3544 * max(0.0f, (((_3520 * -0.62179f) - (_3519 * 0.08326f)) + (_3521 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _3579 = exp2(log2(max(0.0f, (((_slopeParams.y * _3544) * max(0.0f, (((_3520 * 1.1408f) - (_3519 * 0.01055f)) - (_3521 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _3595 = exp2(log2(max(0.0f, (((_slopeParams.z * _3544) * max(0.0f, (((_3519 * 1.15297f) - (_3520 * 0.12897f)) - (_3521 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _3596 = dot(float3(_3563, _3579, _3595), float3(0.212671f, 0.71516f, 0.072169f));
    _3600 = ((_3563 - _3596) * _powerParams.w) + _3596;
    _3603 = ((_3579 - _3596) * _powerParams.w) + _3596;
    _3606 = ((_3595 - _3596) * _powerParams.w) + _3596;
    _3613 = min(max(log2(mad(_3606, 0.079223745f, mad(_3603, 0.0784336f, (_3600 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _3620 = min(max(log2(mad(_3606, 0.07916613f, mad(_3603, 0.87846863f, (_3600 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _3627 = min(max(log2(mad(_3606, 0.879143f, mad(_3603, 0.0784336f, (_3600 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _3628 = _3613 * 0.060606062f;
    _3629 = _3620 * 0.060606062f;
    _3630 = _3627 * 0.060606062f;
    _3631 = _3628 * _3628;
    _3632 = _3629 * _3629;
    _3633 = _3630 * _3630;
    _3649 = min(0.0f, (-0.0f - (((_3613 * 0.0072181816f) + ((_3631 * 0.4298f) + (((_3631 * _3631) * ((31.96f - (_3613 * 2.4327273f)) + (_3631 * 15.5f))) - ((_3613 * 0.41624245f) * _3631)))) + -0.00232f)));
    _3665 = min(0.0f, (-0.0f - (((_3620 * 0.0072181816f) + ((_3632 * 0.4298f) + (((_3632 * _3632) * ((31.96f - (_3620 * 2.4327273f)) + (_3632 * 15.5f))) - ((_3620 * 0.41624245f) * _3632)))) + -0.00232f)));
    _3681 = min(0.0f, (-0.0f - (((_3627 * 0.0072181816f) + ((_3633 * 0.4298f) + (((_3633 * _3633) * ((31.96f - (_3627 * 2.4327273f)) + (_3633 * 15.5f))) - ((_3627 * 0.41624245f) * _3633)))) + -0.00232f)));
    _3682 = -0.0f - _3649;
    _3683 = -0.0f - _3665;
    _3684 = -0.0f - _3681;
    _3685 = dot(float3(_3682, _3683, _3684), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _3702 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _3703 = -0.79999995f / _3702;
      _3704 = -1.2f / _3702;
      _3705 = 0.20000005f / _3702;
      _3708 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _3711 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _3715 = (_3703 + 1.4f) + (_3711 * (-0.39999998f - _3703));
      _3719 = (_3704 + 1.6f) + (_3711 * (-0.6f - _3704));
      _3723 = (_3705 + 0.9f) + (_3711 * (0.5f - _3705));
      _3740 = (lerp(_3723, 1.4f, _3708));  // [sem: blended]
      _3741 = (lerp(_3715, 1.0f, _3708));  // [sem: blended]
      _3742 = (lerp(_3719, 1.2f, _3708));  // [sem: blended]
    } else {
      _3740 = 1.4f;  // [sem: blended]
      _3741 = 1.0f;  // [sem: blended]
      _3742 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _3743 = 1.0f - _3742;
    _3755 = ((exp2(log2(((saturate((_3649 * _3649) * _3682) * _3743) + _3742) * _3682) * _3741) - _3685) * _3740) + _3685;
    _3767 = ((exp2(log2(((saturate((_3665 * _3665) * _3683) * _3743) + _3742) * _3683) * _3741) - _3685) * _3740) + _3685;
    _3779 = ((exp2(log2(((saturate((_3681 * _3681) * _3684) * _3743) + _3742) * _3684) * _3741) - _3685) * _3740) + _3685;
    _3786 = saturate(exp2(log2(mad(_3779, -0.09902974f, mad(_3767, -0.09802088f, (_3755 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _3793 = saturate(exp2(log2(mad(_3779, -0.098961174f, mad(_3767, 1.1519032f, (_3755 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _3800 = saturate(exp2(log2(mad(_3779, 1.1510737f, mad(_3767, -0.09804345f, (_3755 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _3806 = 1.0f - abs(_etcParams.w);
      _3807 = saturate(_etcParams.w);  // [sem: expr_sat]
      _3809 = (_3806 * _3786) + _3807;
      _3811 = (_3806 * _3793) + _3807;
      _3813 = (_3806 * _3800) + _3807;
      if (_colorGradingParams.w > 0.0f) {
        _3818 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _3835 = (((max(0.0f, (1.0f - _3813)) - _3813) * _3818) + _3813);
        _3836 = (((max(0.0f, (1.0f - _3811)) - _3811) * _3818) + _3811);
        _3837 = (((max(0.0f, (1.0f - _3809)) - _3809) * _3818) + _3809);
      } else {
        _3835 = _3813;
        _3836 = _3811;
        _3837 = _3809;
      }
      _3839 = _userImageAdjust.y + 1.0f;
      _3841 = _userImageAdjust.x + 0.5f;
      _3844 = ((_3837 + -0.5f) * _3839) + _3841;
      _3847 = ((_3836 + -0.5f) * _3839) + _3841;
      _3850 = ((_3835 + -0.5f) * _3839) + _3841;
      _3856 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _3891 = exp2(log2(saturate(mad(_colorBlind2.z, _3850, mad(_colorBlind2.y, _3847, (_colorBlind2.x * _3844))))) * _3856);
      _3892 = exp2(log2(saturate(mad(_colorBlind1.z, _3850, mad(_colorBlind1.y, _3847, (_colorBlind1.x * _3844))))) * _3856);
      _3893 = exp2(log2(saturate(mad(_colorBlind0.z, _3850, mad(_colorBlind0.y, _3847, (_colorBlind0.x * _3844))))) * _3856);
    } else {
      _3891 = _3800;
      _3892 = _3793;
      _3893 = _3786;
    }
  } else {
    _3891 = _3519;
    _3892 = _3520;
    _3893 = _3521;
  }
  if (_etcParams.y > 1.0f) {
    _3898 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _3901 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _3907 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_3898, _3901), float2(_3898, _3901))));  // [sem: expr_sat]
    _3912 = (_3907 * _3891);
    _3913 = (_3907 * _3892);
    _3914 = (_3907 * _3893);
  } else {
    _3912 = _3891;
    _3913 = _3892;
    _3914 = _3893;
  }
  if (_3538 && (_etcParams.z > 0.0f)) {
    _3944 = select((_3912 <= 0.0031308f), (_3912 * 12.92f), (((pow(_3912, 0.41666666f)) * 1.055f) + -0.055f));
    _3945 = select((_3913 <= 0.0031308f), (_3913 * 12.92f), (((pow(_3913, 0.41666666f)) * 1.055f) + -0.055f));
    _3946 = select((_3914 <= 0.0031308f), (_3914 * 12.92f), (((pow(_3914, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _3944 = _3912;
    _3945 = _3913;
    _3946 = _3914;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _3949 = (float)((uint)((uint)(_3522)));
    if (!(_3949 < _viewDir.w)) {
      if (!(!(_3949 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _3960 = 0.0f;
        _3961 = 0.0f;
        _3962 = 0.0f;
      } else {
        _3960 = _3944;
        _3961 = _3945;
        _3962 = _3946;
      }
    } else {
      _3960 = 0.0f;
      _3961 = 0.0f;
      _3962 = 0.0f;
    }
  } else {
    _3960 = _3944;
    _3961 = _3945;
    _3962 = _3946;
  }
  SV_Target.x = _3962;
  SV_Target.y = _3961;
  SV_Target.z = _3960;
  SV_Target.w = _3535;
  return SV_Target;
}
