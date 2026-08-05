struct PostProcessUber_CDStruct {
  uint _noiseTex;
  float _itemRatio;
  float _borderRatio;
  float _borderWidth;
  float _borderSmoothness;
  float _borderEdgeNoiseRatio;
  float2 _borderEdgeNoiseOffset;
  float2 _borderEdgeNoiseTile;
  uint _borderColor;
  uint _borderEdgeNoiseTexture;
  float _borderFlickerSpeed;
  float _borderFlickerIntensity;
  float2 _borderFlickerOpacityMinMax;
  float _dropItemFakeLightIntensity;
  float _dropItemBlurWidth;
  float _dropItemBlurIntensity;
  float3 _channelBrightness;
  float _contrast;
  float3 _saturation;
  float _fishEyeMaxPower;
  uint _enemyMaskColor;
  uint _objectiveMaskColor;
  float _uiMainMenuEffect;
  float _uiQuickSlotEffect;
  uint _detectColorBase;
  float _detectModeG;
  float _detectModeR;
  float _detectModeB;
  float _detectModeKnowledge;
  float _detectModeInterrupt;
  uint _detectLiftColor;
  float _statusVignetteRatio1;
  float _statusVignetteRadius1;
  float _statusVignettePower1;
  float _statusVignetteChromaticShift1;
  uint _statusVignetteColor1;
  float _statusVignetteRatio2;
  float _statusVignetteRadius2;
  float _statusVignettePower2;
  float _statusVignetteChromaticShift2;
  uint _statusVignetteColor2;
  float _statusVignetteRatio3;
  float _statusVignetteRadius3;
  float _statusVignettePower3;
  float _statusVignetteChromaticShift3;
  uint _statusVignetteColor3;
  uint _temperatureWarningTex;
  uint _electrocutionTex;
  uint _enemyAlertTex;
  uint _wantedRegionColor;
  float _chromaticAberrationRatio;
  float _chromaticAberrationShiftValue;
  float2 _chromaticAberrationShiftPosition;
  float _invertColor;
  uint _followLearningColor;
  uint _followLearningSaturationTone;
  uint _followLearningNoiseTex;
  float _isBloodEffect;
  float _testEffectRatio;
};

struct BindlessParameters_PostProcessUber_CD {
  PostProcessUber_CDStruct BindlessParameters_PostProcessUber_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_noiseTex : register(t13, space36);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

typedef BindlessParameters_PostProcessUber_CD BindlessParameters_PostProcessUber_CD_t;
ConstantBuffer<BindlessParameters_PostProcessUber_CD_t> BindlessParameters_PostProcessUber_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointWrap : register(s8, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _34;
  int _37;
  float _45;
  int _48;
  float _56;
  int _59;
  float _67;
  int _70;
  float _78;
  float _82;
  int _85;
  float _93;
  float _97;
  int _100;
  float _108;
  float _112;
  int _115;
  float _123;
  float _127;
  int _130;
  float _138;
  int _141;
  float _149;
  int _152;
  float _160;
  float _190;
  float _229;
  float _230;
  float _233;
  float _234;
  float _257;
  float _258;
  float _330;
  float _331;
  float _332;
  float _373;
  float _462;
  float _463;
  float _464;
  float _505;
  float _506;
  float _507;
  float _562;
  float _563;
  float _564;
  float _636;
  float _637;
  float _638;
  float _639;
  float _640;
  float _641;
  float _711;
  float _712;
  float _713;
  float _770;
  float _771;
  float _916;
  float _917;
  float _918;
  int _1013;
  float _1014;
  float _1015;
  float _1016;
  float _1195;
  float _1196;
  float _1197;
  float _1260;
  float _1261;
  float _1262;
  float _1302;
  float _1303;
  float _1304;
  float _1445;
  float _1446;
  float _1447;
  float _1523;
  float _1524;
  float _1525;
  float _1526;
  float _1527;
  float _1528;
  float _1743;
  bool _1808;
  float _1848;
  float _1849;
  float _1850;
  bool _1939;
  float _1980;
  float _1981;
  float _1982;
  bool _2068;
  float _2109;
  float _2110;
  float _2111;
  bool _2196;
  float _2237;
  float _2238;
  float _2239;
  float _2300;
  float _2301;
  float _2302;
  int _2639;
  int _2688;
  float _2736;
  float _2737;
  float _2738;
  float _2739;
  float _2873;
  float _2874;
  float _2875;
  float _2905;
  float _2906;
  float _2907;
  float _3052;
  float _3053;
  float _3054;
  float _3068;
  float _3273;
  float _3274;
  float _3275;
  float _3368;
  float _3369;
  float _3370;
  float _3424;
  float _3425;
  float _3426;
  float _3445;
  float _3446;
  float _3447;
  float _3477;
  float _3478;
  float _3479;
  float _3493;
  float _3494;
  float _3495;
  float _169;
  float _174;
  float _178;
  float _179;
  float _180;
  float _194;
  float _199;
  float _201;
  float _212;
  float _218;
  float _221;
  int _237;
  float _245;
  float4 _261;
  int _267;
  int _275;
  float4 _296;
  float _302;
  float _306;
  float _322;
  int _335;
  float _343;
  int _350;
  float _358;
  int _363;
  float _371;
  float _374;
  float4 _384;
  int _389;
  float _397;
  bool _398;
  bool _400;
  int _403;
  float _411;
  float _416;
  float _422;
  float _436;
  float _477;
  float _478;
  float _489;
  float _490;
  float _491;
  int _514;
  float _522;
  float _526;
  float _527;
  float _528;
  float _537;
  float _538;
  float _539;
  int _567;
  float _575;
  int _578;
  float _586;
  int _589;
  float _597;
  int _600;
  float _608;
  int _611;
  float _619;
  float _624;
  bool _642;
  float _643;
  float _644;
  float _645;
  float _647;
  float _649;
  float _651;
  float _653;
  float _655;
  float _657;
  float _658;
  float _662;
  float _666;
  float _670;
  float _678;
  float _685;
  float _691;
  float _697;
  uint2 _729;
  uint _744;
  int _746;
  float _750;
  float _755;
  float _757;
  float _758;
  float _759;
  float _773;
  float _774;
  float _775;
  float _776;
  float _778;
  float4 _781;
  int _792;
  float _800;
  float _805;
  float _831;
  int _850;
  float _858;
  bool _870;
  float _902;
  float _903;
  float _904;
  bool _911;
  float _922;
  int _953;
  int _961;
  float _964;
  float _967;
  float _969;
  float _972;
  int _1027;
  int _1035;
  float _1038;
  float _1041;
  float _1043;
  float _1046;
  float _1051;
  float _1053;
  float _1055;
  float _1057;
  float _1062;
  float _1074;
  float _1086;
  float _1097;
  float _1101;
  float _1104;
  float _1110;
  float _1115;
  float _1121;
  float _1124;
  float _1125;
  float _1128;
  float _1151;
  float4 _1209;
  float _1214;
  float _1218;
  float _1219;
  float _1220;
  float _1228;
  float _1231;
  float _1234;
  float _1249;
  float _1263;
  float _1269;
  float _1270;
  float _1271;
  float _1279;
  float _1283;
  float _1287;
  float _1291;
  float _1310;
  float _1317;
  float _1330;
  int _1333;
  int _1341;
  float _1345;
  float _1349;
  float _1353;
  float _1361;
  float _1362;
  float _1365;
  float _1366;
  bool _1370;
  float _1372;
  float _1376;
  float _1378;
  float _1408;
  float _1413;
  float _1418;
  float _1421;
  float _1424;
  int _1450;
  float _1458;
  float _1462;
  float _1466;
  int _1469;
  float _1477;
  float _1481;
  float _1485;
  int _1488;
  float _1496;
  bool _1497;
  bool _1508;
  float _1509;
  bool _1514;
  float _1515;
  float _1529;
  float _1530;
  float _1531;
  float _1533;
  float _1535;
  float _1537;
  float _1538;
  int _1541;
  float _1549;
  float _1550;
  float _1558;
  float _1565;
  float _1572;
  int _1575;
  float _1583;
  float _1586;
  float _1590;
  float _1594;
  float _1598;
  int _1601;
  float _1609;
  int _1614;
  float _1622;
  float _1626;
  int _1629;
  float _1637;
  float _1641;
  int _1644;
  int _1652;
  int _1655;
  float _1663;
  int _1666;
  float _1674;
  float _1676;
  float _1680;
  float _1684;
  float _1693;
  int _1696;
  float _1704;
  int _1709;
  float _1717;
  float _1721;
  int _1724;
  float _1732;
  int _1746;
  float _1754;
  float _1773;
  int _1776;
  int _1784;
  float _1787;
  float _1790;
  float _1792;
  float _1801;
  float _1809;
  float _1813;
  float _1853;
  float _1854;
  int _1857;
  float _1865;
  int _1868;
  float _1876;
  float _1890;
  float _1895;
  float _1898;
  float _1901;
  float _1904;
  int _1907;
  int _1915;
  float _1918;
  float _1921;
  float _1923;
  float _1932;
  float _1940;
  float _1943;
  float _1945;
  float _1985;
  float _1986;
  int _1989;
  float _1997;
  int _2000;
  float _2008;
  float _2021;
  float _2024;
  float _2027;
  float _2030;
  float _2033;
  int _2036;
  int _2044;
  float _2047;
  float _2050;
  float _2052;
  float _2061;
  float _2069;
  float _2072;
  float _2074;
  float _2114;
  float _2115;
  int _2118;
  float _2126;
  int _2129;
  float _2137;
  float _2149;
  float _2152;
  float _2155;
  float _2158;
  float _2161;
  int _2164;
  int _2172;
  float _2175;
  float _2178;
  float _2180;
  float _2189;
  float _2197;
  float _2200;
  float _2202;
  float _2244;
  float _2245;
  float _2246;
  float _2254;
  float _2262;
  float _2270;
  float _2273;
  float _2276;
  float _2279;
  float _2282;
  float _2285;
  float _2289;
  int _2309;
  int _2317;
  float _2320;
  float _2323;
  float _2325;
  float _2328;
  float _2338;
  float _2348;
  float _2358;
  int _2361;
  int _2369;
  float4 _2380;
  float _2387;
  float _2390;
  float _2392;
  float _2393;
  float _2405;
  uint _2410;
  uint _2414;
  uint4 _2416;
  float4 _2419;
  float _2426;
  float _2430;
  float _2434;
  float _2436;
  float _2437;
  float _2438;
  float _2439;
  float _2444;
  float _2448;
  float _2450;
  float _2452;
  float _2456;
  float _2458;
  float _2459;
  float _2460;
  float _2461;
  float _2463;
  float _2466;
  float _2467;
  float _2468;
  float _2469;
  float _2475;
  float _2481;
  float _2486;
  float _2488;
  float _2489;
  float _2490;
  float _2493;
  float _2504;
  float _2515;
  float4 _2522;
  float _2538;
  float _2544;
  float _2550;
  float _2551;
  float _2552;
  float _2553;
  float _2555;
  float _2561;
  float _2567;
  float _2572;
  float _2576;
  float _2582;
  float _2586;
  float _2595;
  float _2597;
  bool _2598;
  bool _2599;
  bool _2600;
  bool _2601;
  float _2602;
  float4 _2628;
  bool _2665;
  bool _2667;
  float _2690;
  float _2693;
  float _2696;
  float _2699;
  bool _2700;
  bool _2701;
  float _2708;
  float4 _2712;
  float _2717;
  float _2740;
  float _2743;
  float _2746;
  float _2749;
  float _2751;
  float _2754;
  float _2758;
  float _2762;
  float _2766;
  int _2769;
  int _2777;
  float _2780;
  float _2783;
  float _2785;
  float _2794;
  float _2803;
  float _2812;
  float _2814;
  float _2816;
  float _2818;
  float _2819;
  float _2828;
  float _2834;
  float _2840;
  float _2855;
  float _2865;
  float _2876;
  float _2880;
  float _2883;
  float _2886;
  float _2889;
  float _2894;
  bool _2927;
  float _2930;
  float4 _2944;
  float _2947;
  float _2948;
  float _2950;
  float _2956;
  float _2962;
  int _2965;
  int _2973;
  float4 _2984;
  bool _2989;
  bool _2990;
  bool _2991;
  bool _2992;
  float _3033;
  float _3035;
  uint _3055;
  bool _3071;
  float _3077;
  float _3096;
  float _3112;
  float _3128;
  float _3129;
  float _3133;
  float _3136;
  float _3139;
  float _3146;
  float _3153;
  float _3160;
  float _3161;
  float _3162;
  float _3163;
  float _3164;
  float _3165;
  float _3166;
  float _3182;
  float _3198;
  float _3214;
  float _3215;
  float _3216;
  float _3217;
  float _3218;
  float _3235;
  float _3236;
  float _3237;
  float _3238;
  float _3241;
  float _3244;
  float _3248;
  float _3252;
  float _3256;
  float _3276;
  float _3288;
  float _3300;
  float _3312;
  float _3319;
  float _3326;
  float _3333;
  float _3339;
  float _3340;
  float _3342;
  float _3344;
  float _3346;
  float _3351;
  float _3372;
  float _3374;
  float _3377;
  float _3380;
  float _3383;
  float _3389;
  float _3431;
  float _3434;
  float _3440;
  float _3482;
  _34 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _37 = WaveReadLaneFirst(_materialIndex);
  _45 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_37 < (uint)170000), _37, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteRatio1);
  _48 = WaveReadLaneFirst(_materialIndex);
  _56 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_48 < (uint)170000), _48, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteRatio2);
  _59 = WaveReadLaneFirst(_materialIndex);
  _67 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_59 < (uint)170000), _59, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteRatio3);
  _70 = WaveReadLaneFirst(_materialIndex);
  _78 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_70 < (uint)170000), _70, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteChromaticShift1);
  _82 = ((float)((uint)((uint)(_enableChromaticAberration)))) * _78;
  _85 = WaveReadLaneFirst(_materialIndex);
  _93 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_85 < (uint)170000), _85, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteChromaticShift2);
  _97 = ((float)((uint)((uint)(_enableChromaticAberration)))) * _93;
  _100 = WaveReadLaneFirst(_materialIndex);
  _108 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_100 < (uint)170000), _100, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteChromaticShift3);
  _112 = ((float)((uint)((uint)(_enableChromaticAberration)))) * _108;
  _115 = WaveReadLaneFirst(_materialIndex);
  _123 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_115 < (uint)170000), _115, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._chromaticAberrationRatio);
  _127 = ((float)((uint)((uint)(_enableChromaticAberration)))) * _123;
  _130 = WaveReadLaneFirst(_materialIndex);
  _138 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_130 < (uint)170000), _130, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._chromaticAberrationShiftValue);
  _141 = WaveReadLaneFirst(_materialIndex);
  _149 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_141 < (uint)170000), _141, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._isBloodEffect);
  _152 = WaveReadLaneFirst(_materialIndex);
  _160 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_152 < (uint)170000), _152, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._fishEyeMaxPower);
  [branch]
  if (((_160 > 0.001f) || (_160 < -0.001f)) || (_followLearning > 0.001f)) {
    _169 = 0.5f / _34;
    _174 = ((_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x) + -0.5f;
    _178 = ((_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x) - _169;
    _179 = dot(float2(_174, _178), float2(_174, _178));
    _180 = sqrt(_179);
    if (_followLearning > 0.001f) {
      _190 = ((pow(_followLearning, 0.25f)) * 1.5f);
    } else {
      _190 = _160;
    }
    if (_190 > 0.0f) {
      _194 = sqrt(dot(float2(0.5f, _169), float2(0.5f, _169)));
      _199 = (tan(_190 * _180) * _194) * rsqrt(_179);
      _201 = tan(_194 * _190);
      _229 = (((_199 * _178) / _201) + _169);
      _230 = (((_199 * _174) / _201) + 0.5f);
    } else {
      if (_190 < 0.0f) {
        _212 = select((_34 < 1.0f), 0.5f, _169);
        _218 = (atan((_190 * _180) * -10.0f) * _212) * rsqrt(_179);
        _221 = atan((_190 * -10.0f) * _212);
        _229 = (((_218 * _178) / _221) + _169);
        _230 = (((_218 * _174) / _221) + 0.5f);
      } else {
        _229 = 0.0f;
        _230 = 0.0f;
      }
    }
    _233 = (_229 * _34);
    _234 = _230;
  } else {
    _233 = TEXCOORD.y;
    _234 = TEXCOORD.x;
  }
  _237 = WaveReadLaneFirst(_materialIndex);
  _245 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_237 < (uint)170000), _237, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._uiQuickSlotEffect);
  if (!(!(_245 >= 0.001f))) {
    _257 = ((_245 * (0.03f - (_233 * 0.060000002f))) + _233);
    _258 = ((_245 * (0.03f - (_234 * 0.060000002f))) + _234);
  } else {
    _257 = _233;
    _258 = _234;
  }
  _261 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_258, _257));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _267 = WaveReadLaneFirst(_materialIndex);
  _275 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_267 < (uint)170000), _267, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._noiseTex);
  [branch]
  if (!(!(_fleeCount >= 0.001f))) {
    _296 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_275 < (uint)65000), _275, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x * 4.0f), ((((_fleeCount * 0.001f) + -0.1f) + ((TEXCOORD.y / _34) * 4.0f)) + (_time.x * 0.02f))));
    _302 = (TEXCOORD.x + -0.5f) + ((_296.x + -0.5f) * 0.15f);
    _306 = (TEXCOORD.y + -0.5f) + ((_296.y + -0.5f) * 0.15f);
    // [sem: expr_sat]
    _322 = saturate(((sqrt((_302 * _302) + (_306 * _306)) + -0.6f) + (_fleeCount * 0.005f)) / ((_fleeCount * 0.004f) + 0.1f)) * saturate(_fleeCount * 0.2f);
    _330 = (_261.z - (_322 * _261.z));
    _331 = (_261.y - (_322 * _261.y));
    _332 = (_261.x - (_322 * _261.x));
  } else {
    _330 = _261.z;
    _331 = _261.y;
    _332 = _261.x;
  }
  _335 = WaveReadLaneFirst(_materialIndex);
  _343 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_335 < (uint)170000), _335, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
  if ((_245 >= 0.001f) || (_343 >= 0.001f)) {
    _350 = WaveReadLaneFirst(_materialIndex);
    _358 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_350 < (uint)170000), _350, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
    if (_358 > _245) {
      _363 = WaveReadLaneFirst(_materialIndex);
      _371 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_363 < (uint)170000), _363, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
      _373 = _371;
    } else {
      _373 = _245;
    }
    _374 = _373 * 0.5f;
    _384 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_275 < (uint)65000), _275, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 2.0f) * _34), (TEXCOORD.y * 2.0f)));
    _389 = WaveReadLaneFirst(_materialIndex);
    _397 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_389 < (uint)170000), _389, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
    _398 = (_245 < 0.001f);
    _400 = _398 && (_397 >= 0.001f);
    _403 = WaveReadLaneFirst(_materialIndex);
    _411 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_403 < (uint)170000), _403, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
    _416 = (TEXCOORD.y - select(_400, 0.55f, 0.5f)) - ((_384.y + -0.5f) * 0.05f);
    _422 = ((TEXCOORD.x - ((_384.x + -0.5f) * 0.05f)) + select(_400, -0.42f, -0.5f)) * _34;
    _436 = ((_373 * -0.9f) * (1.0f - saturate((select((_398 && (_411 >= 0.001f)), 0.35f, 0.4f) - sqrt((_422 * _422) + (_416 * _416))) * 1.4285715f))) + 1.0f;
    _462 = (_436 * ((_374 * (((_331 * 0.534f) - (_330 * 0.869f)) + (_332 * 0.272f))) + _330));
    _463 = (_436 * ((_374 * (((_330 * 0.168f) - (_331 * 0.314f)) + (_332 * 0.349f))) + _331));
    _464 = (_436 * ((_374 * (((_331 * 0.75f) + (_330 * 0.189f)) - (_332 * 0.607f))) + _332));
  } else {
    _462 = _330;
    _463 = _331;
    _464 = _332;
  }
  if (((_45 >= 0.001f) && (_82 >= 0.001f)) || ((_56 >= 0.001f) && (_97 >= 0.001f)) || ((_67 >= 0.001f) && (_112 >= 0.001f))) {
    _477 = _258 + -0.5f;
    _478 = _257 + -0.5f;
    _489 = ((rsqrt(dot(float2(_477, _478), float2(_477, _478))) * 0.01f) * max(max(_82, _97), _112)) * sqrt((_477 * _477) + (_478 * _478));
    _490 = _489 * _477;
    _491 = _489 * _478;
    _505 = (((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_490 + _258), (_491 + _257))))).z);
    _506 = (((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_258, _257)))).y);
    _507 = (((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_258 - _490), (_257 - _491))))).x);
  } else {
    _505 = _462;
    _506 = _463;
    _507 = _464;
  }
  if ((_127 >= 0.001f) && (_138 >= 0.001f)) {
    _514 = WaveReadLaneFirst(_materialIndex);
    _522 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_514 < (uint)170000), _514, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._chromaticAberrationShiftPosition.x);
    _526 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_514 < (uint)170000), _514, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._chromaticAberrationShiftPosition.y);
    _527 = _258 - _522;
    _528 = _257 - _526;
    _537 = ((_138 * 0.01f) * rsqrt(dot(float2(_527, _528), float2(_527, _528)))) * sqrt((_528 * _528) + (_527 * _527));
    _538 = _537 * _527;
    _539 = _537 * _528;
    _562 = ((((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_538 + _258), (_539 + _257))))).z) - _505) * _127) + _505);
    _563 = ((((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_258, _257)))).y) - _506) * _127) + _506);
    _564 = ((((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_258 - _538), (_257 - _539))))).x) - _507) * _127) + _507);
  } else {
    _562 = _462;
    _563 = _463;
    _564 = _464;
  }
  _567 = WaveReadLaneFirst(_materialIndex);
  _575 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_567 < (uint)170000), _567, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._detectModeG);
  _578 = WaveReadLaneFirst(_materialIndex);
  _586 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_578 < (uint)170000), _578, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._detectModeR);
  _589 = WaveReadLaneFirst(_materialIndex);
  _597 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_589 < (uint)170000), _589, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._detectModeB);
  _600 = WaveReadLaneFirst(_materialIndex);
  _608 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_600 < (uint)170000), _600, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._detectModeKnowledge);
  _611 = WaveReadLaneFirst(_materialIndex);
  _619 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_611 < (uint)170000), _611, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._detectModeInterrupt);
  _624 = saturate((((_586 + _575) + _597) + _608) + _619);  // [sem: expr_sat]
  [branch]
  if (_624 > 0.0f) {
    if (!(_575 >= 0.001f)) {
      if (!(_586 >= 0.001f)) {
        if (!(_597 >= 0.001f)) {
          if (!(_608 >= 0.001f)) {
            _636 = 0.0f;
            _637 = 0.0f;
            _638 = 0.0f;
            _639 = 0.0f;
            _640 = 0.0f;
            _641 = 0.0f;
          } else {
            _636 = 0.95f;
            _637 = 0.45f;
            _638 = 0.5f;
            _639 = 0.8f;
            _640 = 0.6f;
            _641 = 0.6f;
          }
        } else {
          _636 = 0.8f;
          _637 = 0.7f;
          _638 = 0.6f;
          _639 = 0.7f;
          _640 = 0.7f;
          _641 = 0.6f;
        }
      } else {
        _636 = 0.6f;
        _637 = 0.7f;
        _638 = 0.8f;
        _639 = 0.6f;
        _640 = 0.6f;
        _641 = 0.7f;
      }
    } else {
      _636 = 0.7f;
      _637 = 0.8f;
      _638 = 0.6f;
      _639 = 0.6f;
      _640 = 0.7f;
      _641 = 0.6f;
    }
    _642 = (_619 >= 0.001f);
    _643 = select(_642, 0.8f, _638);
    _644 = select(_642, 0.6f, _637);
    _645 = select(_642, 0.2f, _636);
    _647 = (1.0f - _643) * 0.3086f;
    _649 = (1.0f - _644) * 0.6094f;
    _651 = (1.0f - _645) * 0.082f;
    _653 = select(_642, 2.0f, _641) * _564;
    _655 = select(_642, 2.0f, _640) * _563;
    _657 = select(_642, 2.0f, _639) * _562;
    _658 = _653 * _647;
    _662 = 0.01f / max(0.001f, _exposure0.x);
    _666 = max((abs(TEXCOORD.x + -0.5f) + -0.075f), 0.0f);
    _670 = max((abs(TEXCOORD.y + -0.5f) + -0.075f), 0.0f);
    _678 = (_624 * 0.75f) * saturate(sqrt((_670 * _670) + (_666 * _666)) * 2.0f);
    _685 = ((mad(_657, _651, mad(_655, _649, (_653 * (_647 + _643)))) - _564) * _624) + _564;
    _691 = ((mad(_657, _651, mad(_655, (_649 + _644), _658)) - _563) * _624) + _563;
    _697 = ((mad(_657, (_651 + _645), mad(_655, _649, _658)) - _562) * _624) + _562;
    _711 = ((((_662 * _645) - _697) * _678) + _697);
    _712 = ((((_662 * _644) - _691) * _678) + _691);
    _713 = ((((_662 * _643) - _685) * _678) + _685);
  } else {
    _711 = _562;
    _712 = _563;
    _713 = _564;
  }
  if ((((_highLightForVisionRemoteCatch > 0.0f) || (_highLightForVision > 0.0f)) || (_characterHighlight > 0.0f)) || (_followLearning > 0.001f)) {
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_729.x, _729.y);
    // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
    _744 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_729.x))))))) + 0.5f) * _258)), ((int)((((float)((int)((int)((float)((int)((int)(_729.y))))))) + 0.5f) * _257)), 0));
    _746 = _744.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _750 = (((float)((uint)((uint)((uint)((uint)(_744.x)) >> 20)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _755 = (((float)((uint)((uint)(((uint)((uint)(_744.x)) >> 8) & 4095)))) * 0.0004884005f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _757 = 1.0f - abs(_750);
    _758 = abs(_755);
    _759 = _757 - _758;
    if (!(_759 >= 0.0f)) {
      _770 = (select((_755 >= 0.0f), 1.0f, -1.0f) * _757);
      _771 = (select((_750 >= 0.0f), 1.0f, -1.0f) * (1.0f - _758));
    } else {
      _770 = _755;
      _771 = _750;
    }
    _773 = rsqrt(dot(float3(_771, _770, _759), float3(_771, _770, _759)));  // [sem: invLength]
    _774 = _773 * _771;
    _775 = _773 * _770;
    _776 = _773 * _759;
    _778 = rsqrt(dot(float3(_774, _775, _776), float3(_774, _775, _776)));  // [sem: invLength]
    _781 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_258, _257));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    [branch]
    if (_746 == _renderPassTest) {
      _792 = WaveReadLaneFirst(_materialIndex);
      _800 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_792 < (uint)170000), _792, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._testEffectRatio);
      _805 = (1.0f / max(0.001f, _exposure0.x)) * _800;
      _1013 = _746;
      _1014 = (_805 + _711);
      _1015 = _712;
      _1016 = (_805 + _713);
    } else {
      if ((_746 == _renderPassDetectObjective) || ((!(_746 == _renderPassDetectObjective)) && (_746 == _renderPassKnowledgeNPC))) {
        _831 = ((((float4)(__3__36__0__0__g_noiseTex.SampleLevel(__0__4__0__0__g_staticPointWrap, float2(frac((TEXCOORD.x * 0.015625f) * _bufferSizeAndInvSize.x), frac((TEXCOORD.y * 0.015625f) * _bufferSizeAndInvSize.y)), 0.0f))).x) * 0.5f) + 0.5f;
        _1013 = _746;
        _1014 = ((((_831 * _781.z) - _711) * _781.w) + _711);
        _1015 = ((((_831 * _781.y) - _712) * _781.w) + _712);
        _1016 = ((((_831 * _781.x) - _713) * _781.w) + _713);
      } else {
        bool __branch_chain_844;
        if (!(_746 == _renderPassDetectRemoteCatch)) {
          __branch_chain_844 = true;
        } else {
          _850 = WaveReadLaneFirst(_materialIndex);
          _858 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_850 < (uint)170000), _850, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._itemRatio);
          if (!(_858 > 0.001f)) {
            __branch_chain_844 = true;
          } else {
            if (!((_highLightForVision > 0.0f) || (_highLightForVisionRemoteCatch > 0.0f))) {
              __branch_chain_844 = true;
            } else {
              __branch_chain_844 = false;
            }
          }
        }
        if (__branch_chain_844) {
          _870 = (_746 == _renderPassSelfPlayer);
          if ((_870) || ((_746 == _renderPassTest) || (_746 == _renderPassEnemy)) || (_746 == _renderPassDetectPickedRemoteCatch)) {
            if ((_characterHighlight > 0.001f) || (_highLightForVisionRemoteCatch > 0.001f)) {
              _902 = 1.0f - saturate(dot(float3((_778 * _774), (_778 * _775), (_778 * _776)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
              _903 = _902 * _902;
              _904 = _903 * _903;
              if (!_870) {
                if (!(_746 == _renderPassTest)) {
                  _911 = (_746 == _renderPassEnemy);
                  _916 = select(_911, 0.3f, 1.0f);
                  _917 = select(_911, 0.3f, 0.4f);
                  _918 = select(_911, 1.0f, 0.2f);
                } else {
                  _916 = 1.0f;
                  _917 = 1.0f;
                  _918 = 1.0f;
                }
              } else {
                _916 = 1.0f;
                _917 = 1.0f;
                _918 = 1.0f;
              }
              _922 = 1.0f / max(0.001f, _exposure0.x);
              _1013 = _746;
              _1014 = ((((_781.z - _711) + ((((_922 + (_711 * 10.0f)) * _916) - _781.z) * _904)) * _781.w) + _711);
              _1015 = ((((_781.y - _712) + ((((_922 + (_712 * 10.0f)) * _917) - _781.y) * _904)) * _781.w) + _712);
              _1016 = ((((_781.x - _713) + ((((_922 + (_713 * 10.0f)) * _918) - _781.x) * _904)) * _781.w) + _713);
            } else {
              _1013 = _746;
              _1014 = _711;
              _1015 = _712;
              _1016 = _713;
            }
          } else {
            _1013 = _746;
            _1014 = _711;
            _1015 = _712;
            _1016 = _713;
          }
        } else {
          _953 = WaveReadLaneFirst(_materialIndex);
          _961 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_953 < (uint)170000), _953, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._detectColorBase);
          _964 = (float)((uint)((uint)(((uint)((uint)(_961)) >> 16) & 255)));
          _967 = (float)((uint)((uint)(((uint)((uint)(_961)) >> 8) & 255)));
          _969 = (float)((uint)((uint)(_961 & 255)));
          _972 = max(0.001f, _exposure0.x);
          _1013 = _746;
          _1014 = ((((select(((_969 * 0.003921569f) < 0.04045f), (_969 * 0.000303527f), exp2(log2((_969 * 0.003717127f) + 0.052132703f) * 2.4f)) * 10.0f) / _972) * _781.w) + _711);
          _1015 = ((((select(((_967 * 0.003921569f) < 0.04045f), (_967 * 0.000303527f), exp2(log2((_967 * 0.003717127f) + 0.052132703f) * 2.4f)) * 10.0f) / _972) * _781.w) + _712);
          _1016 = ((((select(((_964 * 0.003921569f) < 0.04045f), (_964 * 0.000303527f), exp2(log2((_964 * 0.003717127f) + 0.052132703f) * 2.4f)) * 10.0f) / _972) * _781.w) + _713);
        }
      }
    }
  } else {
    _1013 = 0;
    _1014 = _711;
    _1015 = _712;
    _1016 = _713;
  }
  if (!(!(_wantedRegionRatio >= 0.001f))) {
    [branch]
    if (!(!(_wantedRegionOpacity >= 0.001f))) {
      _1027 = WaveReadLaneFirst(_materialIndex);
      _1035 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1027 < (uint)170000), _1027, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._wantedRegionColor);
      _1038 = (float)((uint)((uint)(((uint)((uint)(_1035)) >> 16) & 255)));
      _1041 = (float)((uint)((uint)(((uint)((uint)(_1035)) >> 8) & 255)));
      _1043 = (float)((uint)((uint)(_1035 & 255)));
      _1046 = max(0.001f, _exposure0.x);
      _1051 = _wantedRegionRatio * _wantedRegionRadius;
      _1053 = saturate(_1051) * 4.0f;
      _1055 = (_258 * 2.0f) + -1.0f;
      _1057 = 1.0f - (_257 * 2.0f);
      _1062 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_258, _257))).x));
      _1074 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _1062, mad((_invViewProj[3].y), _1057, ((_invViewProj[3].x) * _1055)));
      _1086 = ((mad((_invViewProj[0].z), _1062, mad((_invViewProj[0].y), _1057, ((_invViewProj[0].x) * _1055))) + (_invViewProj[0].w)) / _1074) - _wantedRegionPosition.x;
      _1097 = ((mad((_invViewProj[2].z), _1062, mad((_invViewProj[2].y), _1057, ((_invViewProj[2].x) * _1055))) + (_invViewProj[2].w)) / _1074) - _wantedRegionPosition.z;
      _1101 = sqrt((_1097 * _1097) + (_1086 * _1086));
      _1104 = saturate(floor(_1101 / _1051));  // [sem: expr_sat]
      _1110 = saturate(((_1053 - _1051) + _1101) / _1053) * (1.0f - _1104);  // [sem: expr_sat]
      _1115 = (1.0f - saturate((_1101 - _1051) / _1053)) * _1104;
      _1121 = saturate(((_1115 * _1115) * _1115) + ((_1110 * _1110) * _1110));  // [sem: expr_sat]
      _1124 = saturate((_1121 * 5.0f) + -4.0f);  // [sem: expr_sat]
      _1125 = _1124 * _1124;
      _1128 = ((_1125 * _1125) * 9.0f) + 1.0f;
      _1151 = (((((float)((uint)((uint)((uint)((uint)(_1035)) >> 24)))) * 0.003921569f) * _wantedRegionOpacity) * _1121) * ((float)((bool)((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _258) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _257) + -0.5f))), 0)))).x) & 127) + (int)(-52)) > (uint)15)));
      _1195 = (((((select(((_1043 * 0.003921569f) < 0.04045f), (_1043 * 0.000303527f), exp2(log2((_1043 * 0.003717127f) + 0.052132703f) * 2.4f)) / _1046) * _1128) - _1014) * _1151) + _1014);
      _1196 = (((((select(((_1041 * 0.003921569f) < 0.04045f), (_1041 * 0.000303527f), exp2(log2((_1041 * 0.003717127f) + 0.052132703f) * 2.4f)) / _1046) * _1128) - _1015) * _1151) + _1015);
      _1197 = ((_1151 * (((select(((_1038 * 0.003921569f) < 0.04045f), (_1038 * 0.000303527f), exp2(log2((_1038 * 0.003717127f) + 0.052132703f) * 2.4f)) / _1046) * _1128) - _1016)) + _1016);
    } else {
      _1195 = _1014;
      _1196 = _1015;
      _1197 = _1016;
    }
  } else {
    _1195 = _1014;
    _1196 = _1015;
    _1197 = _1016;
  }
  if (((_temperatureWarning >= 0.01f) || (_temperatureWarning <= -0.01f)) || (_electrocutionWarning > 0.001f)) {
    _1209 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_258, _257));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _1214 = _temperatureWarning * 0.01f;
    if (_temperatureWarning > 0.0f) {
      _1218 = saturate(saturate(_1214));  // [sem: expr_sat]
      _1219 = TEXCOORD.x + -0.5f;
      _1220 = TEXCOORD.y + -0.6f;
      _1228 = saturate((_1218 + -0.5f) + sqrt((_1220 * _1220) + (_1219 * _1219))) * _1218;
      _1231 = (1.0f - (_1228 * 0.3f)) * _1196;
      _1234 = (1.0f - (_1228 * 0.7f)) * _1195;
      _1260 = (lerp(_1234, _1209.z, _1209.w));  // [sem: blended]
      _1261 = (lerp(_1231, _1209.y, _1209.w));  // [sem: blended]
      _1262 = ((_1209.x - _1197) * _1209.w);
    } else {
      _1249 = (_1209.w * (1.0f - TEXCOORD.y)) * saturate(abs(_1214) * 2.0f);
      _1260 = ((_1249 * _1209.z) + _1195);  // [sem: blended]
      _1261 = ((_1249 * (_1209.y - (_1196 * 0.100000024f))) + _1196);  // [sem: blended]
      _1262 = (_1249 * (_1209.x - (_1197 * 0.3f)));
    }
    _1263 = _1262 + _1197;
    if (!(_electrocutionWarning == 0.0f)) {
      _1269 = max(0.001f, _exposure0.x);
      _1270 = TEXCOORD.x + -0.5f;
      _1271 = TEXCOORD.y + -0.6f;
      _1279 = (_electrocutionWarning * 0.5f) * saturate(sqrt((_1271 * _1271) + (_1270 * _1270)) + -0.3f);
      _1283 = (((0.05f / _1269) - _1263) * _1279) + _1263;
      _1287 = (((0.1f / _1269) - _1261) * _1279) + _1261;
      _1291 = (((0.5f / _1269) - _1260) * _1279) + _1260;
      _1302 = (lerp(_1291, _1209.z, _1209.w));  // [sem: blended]
      _1303 = (lerp(_1287, _1209.y, _1209.w));  // [sem: blended]
      _1304 = (lerp(_1283, _1209.x, _1209.w));  // [sem: blended]
    } else {
      _1302 = _1260;  // [sem: blended]
      _1303 = _1261;  // [sem: blended]
      _1304 = _1263;  // [sem: blended]
    }
  } else {
    _1302 = _1195;  // [sem: blended]
    _1303 = _1196;  // [sem: blended]
    _1304 = _1197;  // [sem: blended]
  }
  [branch]
  if (!(!(_hpPercentage <= 20.0f))) {
    _1310 = 1.0f - (_hpPercentage * 0.01f);
    if ((!(_hpPercentage <= 0.0f)) && (_1310 >= 0.001f)) {
      _1317 = _time.x * 0.3f;
      _1330 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_275 < (uint)65000), _275, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1317 + (TEXCOORD.x * 12.0f)), (_1317 + (TEXCOORD.y * 6.0f)))))).w) * 0.1f;
      _1333 = WaveReadLaneFirst(_materialIndex);
      _1341 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1333 < (uint)170000), _1333, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseTexture);
      _1345 = (_hpPercentage * 0.002f) + 0.36f;
      _1349 = max((abs(TEXCOORD.x + -0.5f) - _1345), 0.0f);
      _1353 = max((abs(TEXCOORD.y + -0.5f) - _1345), 0.0f);
      _1361 = sin(frac(_time.x * (2.0f - (_hpPercentage * 0.05f))) * 3.1415927f);
      _1362 = 1.0f - _257;
      _1365 = saturate((_1362 * _1362) * 2.0f);  // [sem: expr_sat]
      _1366 = saturate(_1361);  // [sem: _1361_sat]
      _1370 = ((_isPhotosensitiveMode_isAllolwBlood & 1) != 0);
      _1372 = (_1366 * 0.011267403f) + 0.02238649f;
      _1376 = 1.0f / max(0.001f, _exposure0.x);
      _1378 = select(_1370, 0.00699541f, 0.043172102f) * _1376;
      _1408 = (min(max(_1310, 0.0f), 1.0f) * _1365) * saturate((saturate(saturate(sqrt((_1353 * _1353) + (_1349 * _1349)) * 3.846154f) * ((_1361 * 0.19999999f) + 0.8f)) * 2.0f) - ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1341 < (uint)65000), _1341, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((TEXCOORD.x * 2.0f) + 0.3f) + _1330), (_1330 + TEXCOORD.y))))).x) * 1.44f));
      _1413 = (0.13f - (_hpPercentage * 0.006f)) * _1365;
      _1418 = (_1413 * ((select(_1370, 0.21586052f, 0.043172102f) * _1376) - _1304)) + _1304;
      _1421 = (_1413 * (_1378 - _1303)) + _1303;
      _1424 = (_1413 * (_1378 - _1302)) + _1302;
      _1445 = ((((select(_1370, 0.002124689f, _1372) * _1376) - _1424) * _1408) + _1424);
      _1446 = ((((select(_1370, ((_1366 * 0.0053743417f) + 0.002124689f), _1372) * _1376) - _1421) * _1408) + _1421);
      _1447 = ((((select(_1370, ((_1366 * 0.056337014f) + 0.11193244f), _1372) * _1376) - _1418) * _1408) + _1418);
    } else {
      _1445 = _1302;
      _1446 = _1303;
      _1447 = _1304;
    }
  } else {
    _1445 = _1302;
    _1446 = _1303;
    _1447 = _1304;
  }
  _1450 = WaveReadLaneFirst(_materialIndex);
  _1458 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1450 < (uint)170000), _1450, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._channelBrightness.x);
  _1462 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1450 < (uint)170000), _1450, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._channelBrightness.y);
  _1466 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1450 < (uint)170000), _1450, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._channelBrightness.z);
  _1469 = WaveReadLaneFirst(_materialIndex);
  _1477 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1469 < (uint)170000), _1469, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._saturation.x);
  _1481 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1469 < (uint)170000), _1469, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._saturation.y);
  _1485 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1469 < (uint)170000), _1469, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._saturation.z);
  _1488 = WaveReadLaneFirst(_materialIndex);
  _1496 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1488 < (uint)170000), _1488, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._contrast);
  _1497 = (_149 > 0.001f);
  if (_1497) {
    if ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0) {
      _1508 = (_1458 > (_1462 + 0.05f)) && (_1458 > (_1466 + 0.05f));
      _1509 = _1458 * 0.4f;
      _1514 = (_1477 > (_1481 + 0.05f)) && (_1477 > (_1485 + 0.05f));
      _1515 = _1477 * 0.4f;
      _1523 = select(_1514, _1515, _1485);
      _1524 = select(_1514, _1515, _1481);
      _1525 = select(_1514, _1515, _1477);
      _1526 = select(_1508, _1509, _1466);
      _1527 = select(_1508, _1509, _1462);
      _1528 = select(_1508, _1509, _1458);
    } else {
      _1523 = _1485;
      _1524 = _1481;
      _1525 = _1477;
      _1526 = _1466;
      _1527 = _1462;
      _1528 = _1458;
    }
  } else {
    _1523 = _1485;
    _1524 = _1481;
    _1525 = _1477;
    _1526 = _1466;
    _1527 = _1462;
    _1528 = _1458;
  }
  _1529 = _1528 * _1447;
  _1530 = _1527 * _1446;
  _1531 = _1526 * _1445;
  _1533 = (1.0f - _1525) * 0.3086f;
  _1535 = (1.0f - _1524) * 0.6094f;
  _1537 = (1.0f - _1523) * 0.082f;
  _1538 = _1529 * _1533;
  _1541 = WaveReadLaneFirst(_materialIndex);
  _1549 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1541 < (uint)170000), _1541, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._contrast);
  _1550 = max(_1496, 0.0f);
  _1558 = max(0.0f, (((mad(_1531, _1537, mad(_1530, _1535, (_1529 * (_1533 + _1525)))) + -0.5f) * _1550) + 0.5f));
  _1565 = max(0.0f, (((mad(_1531, _1537, mad(_1530, (_1535 + _1524), _1538)) + -0.5f) * _1550) + 0.5f));
  _1572 = max(0.0f, (((mad(_1531, (_1537 + _1523), mad(_1530, _1535, _1538)) + -0.5f) * _1550) + 0.5f));
  _1575 = WaveReadLaneFirst(_materialIndex);
  _1583 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1575 < (uint)170000), _1575, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._invertColor);
  _1586 = _exposure2.x * 4.0f;
  _1590 = ((_1586 - (_1558 * 2.0f)) * _1583) + _1558;
  _1594 = ((_1586 - (_1565 * 2.0f)) * _1583) + _1565;
  _1598 = ((_1586 - (_1572 * 2.0f)) * _1583) + _1572;
  _1601 = WaveReadLaneFirst(_materialIndex);
  _1609 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1601 < (uint)170000), _1601, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderRatio);
  [branch]
  if (!(!(_1609 >= 0.001f))) {
    _1614 = WaveReadLaneFirst(_materialIndex);
    _1622 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1614 < (uint)170000), _1614, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseTile.x);
    _1626 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1614 < (uint)170000), _1614, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseTile.y);
    _1629 = WaveReadLaneFirst(_materialIndex);
    _1637 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1629 < (uint)170000), _1629, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseOffset.x);
    _1641 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1629 < (uint)170000), _1629, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseOffset.y);
    _1644 = WaveReadLaneFirst(_materialIndex);
    _1652 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1644 < (uint)170000), _1644, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseTexture);
    _1655 = WaveReadLaneFirst(_materialIndex);
    _1663 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1655 < (uint)170000), _1655, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderSmoothness);
    _1666 = WaveReadLaneFirst(_materialIndex);
    _1674 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1666 < (uint)170000), _1666, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderWidth);
    _1676 = (1.0f - _1674) * 0.5f;
    _1680 = max((abs(TEXCOORD.x + -0.5f) - _1676), 0.0f);
    _1684 = max((abs(TEXCOORD.y + -0.5f) - _1676), 0.0f);
    _1693 = 1.0f - ((1.0f - saturate(sqrt((_1684 * _1684) + (_1680 * _1680)) / _1663)) * 2.0f);
    _1696 = WaveReadLaneFirst(_materialIndex);
    _1704 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1696 < (uint)170000), _1696, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderFlickerSpeed);
    if (_1704 > 0.001f) {
      _1709 = WaveReadLaneFirst(_materialIndex);
      _1717 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1709 < (uint)170000), _1709, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderFlickerOpacityMinMax.x);
      _1721 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1709 < (uint)170000), _1709, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderFlickerOpacityMinMax.y);
      _1724 = WaveReadLaneFirst(_materialIndex);
      _1732 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1724 < (uint)170000), _1724, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderFlickerIntensity);
      _1743 = ((_1732 * _1693) * min(max(sin((_1704 * 3.1415927f) * _time.x), _1717), _1721));
    } else {
      _1743 = _1693;
    }
    _1746 = WaveReadLaneFirst(_materialIndex);
    _1754 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1746 < (uint)170000), _1746, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseRatio);
    // [sem: expr_sat]
    _1773 = saturate(saturate(_1743) - ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1652 < (uint)65000), _1652, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1637 + (_1622 * TEXCOORD.x)), (_1641 + (_1626 * TEXCOORD.y)))))).x) * _1754)) * min(max(_1609, 0.0f), 1.0f);
    _1776 = WaveReadLaneFirst(_materialIndex);
    _1784 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1776 < (uint)170000), _1776, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._borderColor);
    _1787 = (float)((uint)((uint)(((uint)((uint)(_1784)) >> 16) & 255)));
    _1790 = (float)((uint)((uint)(((uint)((uint)(_1784)) >> 8) & 255)));
    _1792 = (float)((uint)((uint)(_1784 & 255)));
    _1801 = select(((_1787 * 0.003921569f) < 0.04045f), (_1787 * 0.000303527f), exp2(log2((_1787 * 0.003717127f) + 0.052132703f) * 2.4f));
    if (_1497) {
      _1808 = ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
    } else {
      _1808 = false;
    }
    _1809 = _1801 * 0.4f;
    _1813 = 1.0f / max(0.001f, _exposure0.x);
    _1848 = ((((select(_1808, _1809, select(((_1792 * 0.003921569f) < 0.04045f), (_1792 * 0.000303527f), exp2(log2((_1792 * 0.003717127f) + 0.052132703f) * 2.4f))) * _1813) - _1598) * _1773) + _1598);
    _1849 = ((((select(_1808, _1809, select(((_1790 * 0.003921569f) < 0.04045f), (_1790 * 0.000303527f), exp2(log2((_1790 * 0.003717127f) + 0.052132703f) * 2.4f))) * _1813) - _1594) * _1773) + _1594);
    _1850 = ((((_1813 * select(_1808, _1809, _1801)) - _1590) * _1773) + _1590);
  } else {
    _1848 = _1598;
    _1849 = _1594;
    _1850 = _1590;
  }
  [branch]
  if (!(!(_56 >= 0.001f))) {
    _1853 = TEXCOORD.x + -0.5f;
    _1854 = TEXCOORD.y + -0.5f;
    _1857 = WaveReadLaneFirst(_materialIndex);
    _1865 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1857 < (uint)170000), _1857, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteRadius2);
    _1868 = WaveReadLaneFirst(_materialIndex);
    _1876 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1868 < (uint)170000), _1868, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignettePower2);
    // [sem: expr_sat]
    _1890 = saturate((sqrt((_1854 * _1854) + (_1853 * _1853)) / max(0.001f, (1.0f - _1865))) * exp2(log2(abs(0.5f - TEXCOORD.x)) * _1876));
    _1895 = saturate(_1890 * 2.0f) * saturate(_56 * 10.0f);  // [sem: expr_sat]
    _1898 = (_1895 * (_507 - _1850)) + _1850;
    _1901 = (_1895 * (_506 - _1849)) + _1849;
    _1904 = (_1895 * (_505 - _1848)) + _1848;
    _1907 = WaveReadLaneFirst(_materialIndex);
    _1915 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1907 < (uint)170000), _1907, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteColor2);
    _1918 = (float)((uint)((uint)(((uint)((uint)(_1915)) >> 16) & 255)));
    _1921 = (float)((uint)((uint)(((uint)((uint)(_1915)) >> 8) & 255)));
    _1923 = (float)((uint)((uint)(_1915 & 255)));
    _1932 = select(((_1918 * 0.003921569f) < 0.04045f), (_1918 * 0.000303527f), exp2(log2((_1918 * 0.003717127f) + 0.052132703f) * 2.4f));
    if (_1497) {
      _1939 = ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
    } else {
      _1939 = false;
    }
    _1940 = _1932 * 0.2f;
    _1943 = max(0.001f, _exposure0.x);
    _1945 = saturate(_1890) * _56;
    _1980 = ((((select(_1939, _1940, select(((_1923 * 0.003921569f) < 0.04045f), (_1923 * 0.000303527f), exp2(log2((_1923 * 0.003717127f) + 0.052132703f) * 2.4f))) / _1943) - _1904) * _1945) + _1904);
    _1981 = ((((select(_1939, _1940, select(((_1921 * 0.003921569f) < 0.04045f), (_1921 * 0.000303527f), exp2(log2((_1921 * 0.003717127f) + 0.052132703f) * 2.4f))) / _1943) - _1901) * _1945) + _1901);
    _1982 = ((((select(_1939, _1940, _1932) / _1943) - _1898) * _1945) + _1898);
  } else {
    _1980 = _1848;
    _1981 = _1849;
    _1982 = _1850;
  }
  [branch]
  if (!(!(_45 >= 0.001f))) {
    _1985 = TEXCOORD.x + -0.5f;
    _1986 = TEXCOORD.y + -0.5f;
    _1989 = WaveReadLaneFirst(_materialIndex);
    _1997 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_1989 < (uint)170000), _1989, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteRadius1);
    _2000 = WaveReadLaneFirst(_materialIndex);
    _2008 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2000 < (uint)170000), _2000, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignettePower1);
    // [sem: expr_sat]
    _2021 = saturate((sqrt((_1986 * _1986) + (_1985 * _1985)) / max(0.001f, (1.0f - _1997))) * exp2(log2(1.0f - TEXCOORD.y) * _2008));
    _2024 = saturate(_45 * 10.0f) * _2021;
    _2027 = (_2024 * (_507 - _1982)) + _1982;
    _2030 = (_2024 * (_506 - _1981)) + _1981;
    _2033 = (_2024 * (_505 - _1980)) + _1980;
    _2036 = WaveReadLaneFirst(_materialIndex);
    _2044 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2036 < (uint)170000), _2036, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteColor1);
    _2047 = (float)((uint)((uint)(((uint)((uint)(_2044)) >> 16) & 255)));
    _2050 = (float)((uint)((uint)(((uint)((uint)(_2044)) >> 8) & 255)));
    _2052 = (float)((uint)((uint)(_2044 & 255)));
    _2061 = select(((_2047 * 0.003921569f) < 0.04045f), (_2047 * 0.000303527f), exp2(log2((_2047 * 0.003717127f) + 0.052132703f) * 2.4f));
    if (_1497) {
      _2068 = ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
    } else {
      _2068 = false;
    }
    _2069 = _2061 * 0.2f;
    _2072 = max(0.001f, _exposure0.x);
    _2074 = saturate(_2021) * _45;
    _2109 = ((((select(_2068, _2069, select(((_2052 * 0.003921569f) < 0.04045f), (_2052 * 0.000303527f), exp2(log2((_2052 * 0.003717127f) + 0.052132703f) * 2.4f))) / _2072) - _2033) * _2074) + _2033);
    _2110 = ((((select(_2068, _2069, select(((_2050 * 0.003921569f) < 0.04045f), (_2050 * 0.000303527f), exp2(log2((_2050 * 0.003717127f) + 0.052132703f) * 2.4f))) / _2072) - _2030) * _2074) + _2030);
    _2111 = ((((select(_2068, _2069, _2061) / _2072) - _2027) * _2074) + _2027);
  } else {
    _2109 = _1980;
    _2110 = _1981;
    _2111 = _1982;
  }
  [branch]
  if (!(!(_67 >= 0.001f))) {
    _2114 = TEXCOORD.x + -0.5f;
    _2115 = TEXCOORD.y + -0.5f;
    _2118 = WaveReadLaneFirst(_materialIndex);
    _2126 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2118 < (uint)170000), _2118, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteRadius3);
    _2129 = WaveReadLaneFirst(_materialIndex);
    _2137 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2129 < (uint)170000), _2129, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignettePower3);
    // [sem: expr_sat]
    _2149 = saturate((sqrt((_2115 * _2115) + (_2114 * _2114)) / max(0.001f, (1.0f - _2126))) * (pow(TEXCOORD.y, _2137)));
    _2152 = saturate(_67 * 10.0f) * _2149;
    _2155 = (_2152 * (_507 - _2111)) + _2111;
    _2158 = (_2152 * (_506 - _2110)) + _2110;
    _2161 = (_2152 * (_505 - _2109)) + _2109;
    _2164 = WaveReadLaneFirst(_materialIndex);
    _2172 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2164 < (uint)170000), _2164, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._statusVignetteColor3);
    _2175 = (float)((uint)((uint)(((uint)((uint)(_2172)) >> 16) & 255)));
    _2178 = (float)((uint)((uint)(((uint)((uint)(_2172)) >> 8) & 255)));
    _2180 = (float)((uint)((uint)(_2172 & 255)));
    _2189 = select(((_2175 * 0.003921569f) < 0.04045f), (_2175 * 0.000303527f), exp2(log2((_2175 * 0.003717127f) + 0.052132703f) * 2.4f));
    if (_1497) {
      _2196 = ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
    } else {
      _2196 = false;
    }
    _2197 = _2189 * 0.2f;
    _2200 = max(0.001f, _exposure0.x);
    _2202 = saturate(_2149) * _67;
    _2237 = ((((select(_2196, _2197, select(((_2180 * 0.003921569f) < 0.04045f), (_2180 * 0.000303527f), exp2(log2((_2180 * 0.003717127f) + 0.052132703f) * 2.4f))) / _2200) - _2161) * _2202) + _2161);
    _2238 = ((((select(_2196, _2197, select(((_2178 * 0.003921569f) < 0.04045f), (_2178 * 0.000303527f), exp2(log2((_2178 * 0.003717127f) + 0.052132703f) * 2.4f))) / _2200) - _2158) * _2202) + _2158);
    _2239 = ((((select(_2196, _2197, _2189) / _2200) - _2155) * _2202) + _2155);
  } else {
    _2237 = _2109;
    _2238 = _2110;
    _2239 = _2111;
  }
  [branch]
  if (!(!(_hideStateRatio >= 0.001f))) {
    _2244 = _hideStateRatio * 0.5f;
    _2245 = TEXCOORD.x + -0.5f;
    _2246 = TEXCOORD.y + -0.5f;
    _2254 = saturate(((_2244 + -0.5f) + sqrt((_2246 * _2246) + (_2245 * _2245))) * 2.0f);  // [sem: expr_sat]
    _2262 = saturate(((saturate(abs(0.5f - TEXCOORD.y) * 2.0f) - _2254) * 0.5f) + _2254);  // [sem: expr_sat]
    _2270 = (((_2262 * _2262) * 0.9f) * saturate(_hideStateRatio * 4.0f)) * (3.0f - (_2262 * 2.0f));
    _2273 = dot(float3(_2239, _2238, _2237), float3(0.2126f, 0.7152f, 0.0722f)) * (1.0f - _2244);
    _2276 = (pow(_2270, 0.5f));
    _2279 = ((_2273 - _2239) * _2276) + _2239;
    _2282 = ((_2273 - _2238) * _2276) + _2238;
    _2285 = ((_2273 - _2237) * _2276) + _2237;
    _2289 = 0.001f / max(0.001f, _exposure0.x);
    _2300 = (lerp(_2285, _2289, _2270));  // [sem: blended]
    _2301 = (lerp(_2282, _2289, _2270));  // [sem: blended]
    _2302 = (lerp(_2279, _2289, _2270));  // [sem: blended]
  } else {
    _2300 = _2237;  // [sem: blended]
    _2301 = _2238;  // [sem: blended]
    _2302 = _2239;  // [sem: blended]
  }
  if (_followLearning > 0.001f) {
    _2309 = WaveReadLaneFirst(_materialIndex);
    _2317 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2309 < (uint)170000), _2309, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._followLearningColor);
    _2320 = (float)((uint)((uint)(((uint)((uint)(_2317)) >> 16) & 255)));
    _2323 = (float)((uint)((uint)(((uint)((uint)(_2317)) >> 8) & 255)));
    _2325 = (float)((uint)((uint)(_2317 & 255)));
    _2328 = max(0.001f, _exposure0.x);
    _2338 = select(((_2320 * 0.003921569f) < 0.04045f), (_2320 * 0.000303527f), exp2(log2((_2320 * 0.003717127f) + 0.052132703f) * 2.4f)) / _2328;
    _2348 = select(((_2323 * 0.003921569f) < 0.04045f), (_2323 * 0.000303527f), exp2(log2((_2323 * 0.003717127f) + 0.052132703f) * 2.4f)) / _2328;
    _2358 = select(((_2325 * 0.003921569f) < 0.04045f), (_2325 * 0.000303527f), exp2(log2((_2325 * 0.003717127f) + 0.052132703f) * 2.4f)) / _2328;
    _2361 = WaveReadLaneFirst(_materialIndex);
    _2369 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2361 < (uint)170000), _2361, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._followLearningNoiseTex);
    _2380 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_275 < (uint)65000), _275, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_258, ((_time.x * 0.2f) + _257)));
    _2387 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_258, _257));  // [sem: _3__36__0__0__g_depth_sample]
    _2390 = (_258 * 2.0f) + -1.0f;
    _2392 = 1.0f - (_257 * 2.0f);
    _2393 = max(1e-07f, _2387.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
    _2405 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _2393, mad((_invViewProj[3].y), _2392, ((_invViewProj[3].x) * _2390)));
    _2410 = (uint)((_bufferSizeAndInvSize.x * _258) + -0.5f);
    _2414 = (uint)((_bufferSizeAndInvSize.y * _257) + -0.5f);
    _2416 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_2410, _2414, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
    _2419 = __3__36__0__0__g_gbufferNormal.Load(int3(_2410, _2414, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
    _2426 = (saturate(_2419.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _2430 = (saturate(_2419.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _2434 = (saturate(_2419.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _2436 = rsqrt(dot(float3(_2426, _2430, _2434), float3(_2426, _2430, _2434)));  // [sem: invLength]
    _2437 = _2436 * _2426;
    _2438 = _2436 * _2430;
    _2439 = _2434 * _2436;
    _2444 = (((float)((uint)((uint)(((uint)((uint)(_2416.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _2448 = (((float)((uint)((uint)(_2416.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _2450 = (_2444 + _2448) * 0.5f;
    _2452 = (_2444 - _2448) * 0.5f;
    _2456 = (1.0f - abs(_2450)) - abs(_2452);
    _2458 = rsqrt(dot(float3(_2450, _2452, _2456), float3(_2450, _2452, _2456)));  // [sem: invLength]
    _2459 = _2458 * _2450;
    _2460 = _2458 * _2452;
    _2461 = _2458 * _2456;
    _2463 = select((_2439 >= 0.0f), 1.0f, -1.0f);
    _2466 = -0.0f - (1.0f / (_2463 + _2439));
    _2467 = _2438 * _2466;
    _2468 = _2467 * _2437;
    _2469 = _2463 * _2437;
    _2475 = mad(_2461, _2437, mad(_2460, _2468, ((((_2469 * _2437) * _2466) + 1.0f) * _2459)));
    _2481 = mad(_2461, _2438, mad(_2460, ((_2467 * _2438) + _2463), ((_2459 * _2463) * _2468)));
    _2486 = mad(_2461, _2439, mad(_2460, (-0.0f - _2438), (-0.0f - (_2469 * _2459))));
    _2488 = rsqrt(dot(float3(_2475, _2481, _2486), float3(_2475, _2481, _2486)));  // [sem: invLength]
    _2489 = _2488 * _2481;
    _2490 = _2488 * _2486;
    _2493 = _time.x * 0.5f;
    _2504 = (((mad((_invViewProj[2].z), _2393, mad((_invViewProj[2].y), _2392, ((_invViewProj[2].x) * _2390))) + (_invViewProj[2].w)) / _2405) - _2493) * 0.2f;
    _2515 = (((mad((_invViewProj[1].z), _2393, mad((_invViewProj[1].y), _2392, ((_invViewProj[1].x) * _2390))) + (_invViewProj[1].w)) / _2405) - _2493) * 0.2f;
    _2522 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2369 < (uint)65000), _2369, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_2504, _2515));
    _2538 = ((((_invViewProj[0].w) + mad((_invViewProj[0].z), _2393, mad((_invViewProj[0].y), _2392, ((_invViewProj[0].x) * _2390)))) / _2405) - _2493) * 0.2f;
    _2544 = (((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2369 < (uint)65000), _2369, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_2538, _2504)))).w) - _2522.w) * abs(_2489)) + _2522.w;
    _2550 = (((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2369 < (uint)65000), _2369, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_2538, _2515)))).w) - _2544) * abs(_2490)) + _2544;
    _2551 = _2380.z + -0.5f;
    _2552 = _258 + -0.5f;
    _2553 = _257 + -0.5f;
    _2555 = 0.375f - (_2551 * 0.25f);
    _2561 = max((abs(((_2380.x + -0.5f) * 0.1f) + _2552) - _2555), 0.0f);
    _2567 = max((abs(((_2380.y + -0.5f) * 0.1f) + _2553) - _2555), 0.0f);
    _2572 = saturate(sqrt((_2567 * _2567) + (_2561 * _2561)));  // [sem: expr_sat]
    _2576 = saturate(_followLearning * 2.0f);  // [sem: expr_sat]
    _2582 = saturate(((((_2387.x * 100.0f) * _2576) - _2550) * 2.0f) + -0.5f);  // [sem: expr_sat]
    _2586 = sqrt((_2552 * _2552) + (_2553 * _2553));
    _2595 = ((saturate((_2576 * 2.0f) + -1.0f) * (1.0f - _2582)) + _2582) * saturate(_2586 + 0.5f);
    _2597 = atan(_2553 / _2552);
    _2598 = (_2552 < 0.0f);
    _2599 = (_2552 == 0.0f);
    _2600 = (_2553 >= 0.0f);
    _2601 = (_2553 < 0.0f);
    _2602 = _2550 * 0.5f;
    _2628 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2369 < (uint)65000), _2369, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((_2551 * -0.5f) - _2602) - (_time.x * 0.2f)) + select((_2600 && _2599), 7.5f, select((_2601 && _2599), -7.5f, (select((_2601 && _2598), (_2597 + -3.1415927f), select((_2600 && _2598), (_2597 + 3.1415927f), _2597)) * 4.774648f)))), (((((_2380.w + -0.5f) * -0.5f) - _2602) + (_2586 * 2.0f)) - (_time.x * 1.5f))));
    if (!(_1013 == _renderPassSelfPlayer)) {
      _2639 = ((int)(uint)((int)(_1013 == _renderPassTest)));
    } else {
      _2639 = 1;
    }
    _2665 = !((1.0f - saturate(ceil(((_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_258, _257))).x))) + 0.5f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _258)), ((int)(_customRenderPassSizeInvSize.y * _257)), 0)))).x)))))) == 0.0f);
    _2667 = (_2639 == 0) || _2665;
    if (_1013 == _renderPassTargetFocus) {
      if (_2665) {
        _2688 = ((int)(uint)((int)(_1013 != _renderPassAimHighlight)));
      } else {
        _2688 = 0;
      }
    } else {
      if (!((_1013 == _renderPassLearning) && (!_2665))) {
        _2688 = ((int)(uint)((int)(_1013 != _renderPassAimHighlight)));
      } else {
        _2688 = 0;
      }
    }
    _2690 = saturate(_followLearning * 4.0f);  // [sem: expr_sat]
    _2693 = (_2690 * (_261.x - _2302)) + _2302;
    _2696 = (_2690 * (_261.y - _2301)) + _2301;
    _2699 = (_2690 * (_261.z - _2300)) + _2300;
    _2700 = (_2688 != 0);
    _2701 = _2667 && _2700;
    if (_2701) {
      _2708 = ((_followLearning * 0.25f) * _2628.w) * saturate(_2586 - (_2690 * 0.2f));
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _2712 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_2708 + _258), (_2708 + _257)));
      _2717 = 1.0f - (_followLearning * 0.75f);
      _2736 = _2595;
      _2737 = ((lerp(_2699, _2712.z, _2690)) * _2717);
      _2738 = ((lerp(_2696, _2712.y, _2690)) * _2717);
      _2739 = ((lerp(_2693, _2712.x, _2690)) * _2717);
    } else {
      if (_2667) {
        _2736 = select(_2700, _2595, 0.0f);
        _2737 = _2699;
        _2738 = _2696;
        _2739 = _2693;
      } else {
        _2736 = (_2595 * 0.4f);
        _2737 = _2699;
        _2738 = _2696;
        _2739 = _2693;
      }
    }
    _2740 = dot(float3(_2739, _2738, _2737), float3(0.2126f, 0.7152f, 0.0722f));
    _2743 = ((_2740 - _2739) * _2736) + _2739;
    _2746 = ((_2740 - _2738) * _2736) + _2738;
    _2749 = ((_2740 - _2737) * _2736) + _2737;
    _2751 = (_2380.z * 0.3f) * _2550;
    _2754 = saturate(_2736 * 5.0f) * 0.9f;
    _2758 = (((_2751 * _2338) - _2743) * _2754) + _2743;
    _2762 = (((_2751 * _2348) - _2746) * _2754) + _2746;
    _2766 = (((_2751 * _2358) - _2749) * _2754) + _2749;
    _2769 = WaveReadLaneFirst(_materialIndex);
    _2777 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2769 < (uint)170000), _2769, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._followLearningSaturationTone);
    _2780 = (float)((uint)((uint)(((uint)((uint)(_2777)) >> 16) & 255)));
    _2783 = (float)((uint)((uint)(((uint)((uint)(_2777)) >> 8) & 255)));
    _2785 = (float)((uint)((uint)(_2777 & 255)));
    _2794 = select(((_2780 * 0.003921569f) < 0.04045f), (_2780 * 0.000303527f), exp2(log2((_2780 * 0.003717127f) + 0.052132703f) * 2.4f));
    _2803 = select(((_2783 * 0.003921569f) < 0.04045f), (_2783 * 0.000303527f), exp2(log2((_2783 * 0.003717127f) + 0.052132703f) * 2.4f));
    _2812 = select(((_2785 * 0.003921569f) < 0.04045f), (_2785 * 0.000303527f), exp2(log2((_2785 * 0.003717127f) + 0.052132703f) * 2.4f));
    _2814 = (1.0f - _2794) * 0.3086f;
    _2816 = (1.0f - _2803) * 0.6094f;
    _2818 = (1.0f - _2812) * 0.082f;
    _2819 = _2814 * _2758;
    _2828 = ((mad(_2766, _2818, mad(_2762, _2816, ((_2814 + _2794) * _2758))) - _2758) * _followLearning) + _2758;
    _2834 = ((mad(_2766, _2818, mad(_2762, (_2816 + _2803), _2819)) - _2762) * _followLearning) + _2762;
    _2840 = ((mad(_2766, (_2818 + _2812), mad(_2762, _2816, _2819)) - _2766) * _followLearning) + _2766;
    if (!_2701) {
      // [sem: expr_sat]
      _2855 = saturate(1.0f - dot(float3((_2602 + (_2488 * _2475)), (_2602 + _2489), (_2602 + _2490)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _2865 = (((_followLearning * _followLearning) * _2855) * saturate(_2550 * 10.0f)) * select(_2667, ((_2855 * _2855) * 6.0f), (_2855 * 0.25f));
      _2873 = ((_2865 * _2358) + _2840);
      _2874 = ((_2865 * _2348) + _2834);
      _2875 = ((_2865 * _2338) + _2828);
    } else {
      _2873 = _2840;
      _2874 = _2834;
      _2875 = _2828;
    }
    _2876 = _followLearning * _2572;
    _2880 = 0.001f / max(0.001f, _exposure0.x);
    _2883 = ((_2880 - _2875) * _2876) + _2875;
    _2886 = ((_2880 - _2874) * _2876) + _2874;
    _2889 = ((_2880 - _2873) * _2876) + _2873;
    _2894 = saturate(((_2628.w * _2628.w) * 20.0f) * _followLearning) * _2572;
    _2905 = (lerp(_2883, _2338, _2894));  // [sem: blended]
    _2906 = (lerp(_2886, _2348, _2894));  // [sem: blended]
    _2907 = (lerp(_2889, _2358, _2894));  // [sem: blended]
  } else {
    _2905 = _2302;  // [sem: blended]
    _2906 = _2301;  // [sem: blended]
    _2907 = _2300;  // [sem: blended]
  }
  [branch]
  if ((dot(float4(_enemyAlert1.x, _enemyAlert1.y, _enemyAlert1.z, _enemyAlert1.w), float4(1.0f, 1.0f, 1.0f, 1.0f)) > 0.0f) || (dot(float4(_enemyAlert2.x, _enemyAlert2.y, _enemyAlert2.z, _enemyAlert2.w), float4(1.0f, 1.0f, 1.0f, 1.0f)) > 0.0f)) {
    _2927 = ((_isPhotosensitiveMode_isAllolwBlood & 1) != 0);
    _2930 = max(0.001f, _exposure0.x);
    _2944 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_275 < (uint)65000), _275, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 2.0f) * _34), ((_time.x * 0.1f) + (TEXCOORD.y * 2.0f))));
    _2947 = _2944.x + -0.5f;
    _2948 = _2944.y + -0.5f;
    _2950 = 0.45f - (_2947 * 0.005f);
    _2956 = max((abs((TEXCOORD.x + -0.5f) + (_2947 * 0.02f)) - _2950), 0.0f);
    _2962 = max((abs((TEXCOORD.y + -0.5f) + (_2948 * 0.02f)) - _2950), 0.0f);
    _2965 = WaveReadLaneFirst(_materialIndex);
    _2973 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)((uint)(select(((uint)_2965 < (uint)170000), _2965, 0))) + (uint)(0)))].BindlessParameters_PostProcessUber_CD._enemyAlertTex);
    _2984 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2973 < (uint)65000), _2973, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_2948 * 0.03f)), (TEXCOORD.y - (_2947 * 0.03f))));
    _2989 = (TEXCOORD.y > 0.5f);
    _2990 = (TEXCOORD.x < 0.5f);
    _2991 = (TEXCOORD.y < 0.5f);
    _2992 = (TEXCOORD.x > 0.5f);
    // [sem: expr_sat]
    _3033 = saturate(sqrt((_2962 * _2962) + (_2956 * _2956)) * 20.0f) * saturate(dot(float4((_2984.x * ((float)((bool)(_2989)))), (_2984.y * ((float)((bool)(_2990 && _2989)))), (_2984.z * ((float)((bool)(_2990)))), (_2984.w * ((float)((bool)(_2990 && _2991))))), float4(_enemyAlert1.x, _enemyAlert1.y, _enemyAlert1.z, _enemyAlert1.w)) + dot(float4((_2984.x * ((float)((bool)(_2991)))), (_2984.y * ((float)((bool)(_2992 && _2991)))), (_2984.z * ((float)((bool)(_2992)))), (_2984.w * ((float)((bool)(_2992 && _2989))))), float4(_enemyAlert2.x, _enemyAlert2.y, _enemyAlert2.z, _enemyAlert2.w)));
    _3035 = (_3033 * _3033) * _3033;
    _3052 = ((_3035 * ((select(_2927, 0.099898756f, 0.08437622f) / _2930) - _2905)) + _2905);
    _3053 = ((_3035 * ((select(_2927, 0.027320895f, 0.030713456f) / _2930) - _2906)) + _2906);
    _3054 = ((((select(_2927, 0.048171826f, 0.07036011f) / _2930) - _2907) * _3035) + _2907);
  } else {
    _3052 = _2905;
    _3053 = _2906;
    _3054 = _2907;
  }
  _3055 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _3068 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _3055, 0)))).x) & 127)))) + 0.5f);
  } else {
    _3068 = 1.0f;
  }
  _3071 = (_localToneMappingParams.w > 0.0f);
  if (_3071) {
    _3077 = _exposure0.x * _userImageAdjust.z;
    _3096 = exp2(_powerParams.x * log2(max(0.0f, (((_3077 * max(0.0f, (((_3052 * 1.70505f) - (_3053 * 0.62179f)) - (_3054 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _3112 = exp2(log2(max(0.0f, (((_slopeParams.y * _3077) * max(0.0f, (((_3053 * 1.1408f) - (_3052 * 0.13026f)) - (_3054 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _3128 = exp2(log2(max(0.0f, (((_slopeParams.z * _3077) * max(0.0f, (((_3052 * -0.024f) - (_3053 * 0.12897f)) + (_3054 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _3129 = dot(float3(_3096, _3112, _3128), float3(0.212671f, 0.71516f, 0.072169f));
    _3133 = ((_3096 - _3129) * _powerParams.w) + _3129;
    _3136 = ((_3112 - _3129) * _powerParams.w) + _3129;
    _3139 = ((_3128 - _3129) * _powerParams.w) + _3129;
    _3146 = min(max(log2(mad(_3139, 0.079223745f, mad(_3136, 0.0784336f, (_3133 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _3153 = min(max(log2(mad(_3139, 0.07916613f, mad(_3136, 0.87846863f, (_3133 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _3160 = min(max(log2(mad(_3139, 0.879143f, mad(_3136, 0.0784336f, (_3133 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _3161 = _3146 * 0.060606062f;
    _3162 = _3153 * 0.060606062f;
    _3163 = _3160 * 0.060606062f;
    _3164 = _3161 * _3161;
    _3165 = _3162 * _3162;
    _3166 = _3163 * _3163;
    _3182 = min(0.0f, (-0.0f - (((_3146 * 0.0072181816f) + ((_3164 * 0.4298f) + (((_3164 * _3164) * ((31.96f - (_3146 * 2.4327273f)) + (_3164 * 15.5f))) - ((_3146 * 0.41624245f) * _3164)))) + -0.00232f)));
    _3198 = min(0.0f, (-0.0f - (((_3153 * 0.0072181816f) + ((_3165 * 0.4298f) + (((_3165 * _3165) * ((31.96f - (_3153 * 2.4327273f)) + (_3165 * 15.5f))) - ((_3153 * 0.41624245f) * _3165)))) + -0.00232f)));
    _3214 = min(0.0f, (-0.0f - (((_3160 * 0.0072181816f) + ((_3166 * 0.4298f) + (((_3166 * _3166) * ((31.96f - (_3160 * 2.4327273f)) + (_3166 * 15.5f))) - ((_3160 * 0.41624245f) * _3166)))) + -0.00232f)));
    _3215 = -0.0f - _3182;
    _3216 = -0.0f - _3198;
    _3217 = -0.0f - _3214;
    _3218 = dot(float3(_3215, _3216, _3217), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _3235 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _3236 = -0.79999995f / _3235;
      _3237 = -1.2f / _3235;
      _3238 = 0.20000005f / _3235;
      _3241 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _3244 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _3248 = (_3236 + 1.4f) + (_3244 * (-0.39999998f - _3236));
      _3252 = (_3237 + 1.6f) + (_3244 * (-0.6f - _3237));
      _3256 = (_3238 + 0.9f) + (_3244 * (0.5f - _3238));
      _3273 = (lerp(_3252, 1.2f, _3241));  // [sem: blended]
      _3274 = (lerp(_3248, 1.0f, _3241));  // [sem: blended]
      _3275 = (lerp(_3256, 1.4f, _3241));  // [sem: blended]
    } else {
      _3273 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _3274 = 1.0f;  // [sem: blended]
      _3275 = 1.4f;  // [sem: blended]
    }
    _3276 = 1.0f - _3273;
    _3288 = ((exp2(log2(((saturate((_3182 * _3182) * _3215) * _3276) + _3273) * _3215) * _3274) - _3218) * _3275) + _3218;
    _3300 = ((exp2(log2(((saturate((_3198 * _3198) * _3216) * _3276) + _3273) * _3216) * _3274) - _3218) * _3275) + _3218;
    _3312 = ((exp2(log2(((saturate((_3214 * _3214) * _3217) * _3276) + _3273) * _3217) * _3274) - _3218) * _3275) + _3218;
    _3319 = saturate(exp2(log2(mad(_3312, -0.09902974f, mad(_3300, -0.09802088f, (_3288 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _3326 = saturate(exp2(log2(mad(_3312, -0.098961174f, mad(_3300, 1.1519032f, (_3288 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _3333 = saturate(exp2(log2(mad(_3312, 1.1510737f, mad(_3300, -0.09804345f, (_3288 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _3339 = 1.0f - abs(_etcParams.w);
      _3340 = saturate(_etcParams.w);  // [sem: expr_sat]
      _3342 = (_3339 * _3319) + _3340;
      _3344 = (_3339 * _3326) + _3340;
      _3346 = (_3339 * _3333) + _3340;
      if (_colorGradingParams.w > 0.0f) {
        _3351 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _3368 = (((max(0.0f, (1.0f - _3342)) - _3342) * _3351) + _3342);
        _3369 = (((max(0.0f, (1.0f - _3344)) - _3344) * _3351) + _3344);
        _3370 = (((max(0.0f, (1.0f - _3346)) - _3346) * _3351) + _3346);
      } else {
        _3368 = _3342;
        _3369 = _3344;
        _3370 = _3346;
      }
      _3372 = _userImageAdjust.y + 1.0f;
      _3374 = _userImageAdjust.x + 0.5f;
      _3377 = ((_3368 + -0.5f) * _3372) + _3374;
      _3380 = ((_3369 + -0.5f) * _3372) + _3374;
      _3383 = ((_3370 + -0.5f) * _3372) + _3374;
      _3389 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _3424 = exp2(log2(saturate(mad(_colorBlind0.z, _3383, mad(_colorBlind0.y, _3380, (_colorBlind0.x * _3377))))) * _3389);
      _3425 = exp2(log2(saturate(mad(_colorBlind1.z, _3383, mad(_colorBlind1.y, _3380, (_colorBlind1.x * _3377))))) * _3389);
      _3426 = exp2(log2(saturate(mad(_colorBlind2.z, _3383, mad(_colorBlind2.y, _3380, (_colorBlind2.x * _3377))))) * _3389);
    } else {
      _3424 = _3319;
      _3425 = _3326;
      _3426 = _3333;
    }
  } else {
    _3424 = _3052;
    _3425 = _3053;
    _3426 = _3054;
  }
  if (_etcParams.y > 1.0f) {
    _3431 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _3434 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _3440 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_3431, _3434), float2(_3431, _3434))));  // [sem: expr_sat]
    _3445 = (_3440 * _3424);
    _3446 = (_3440 * _3425);
    _3447 = (_3440 * _3426);
  } else {
    _3445 = _3424;
    _3446 = _3425;
    _3447 = _3426;
  }
  if (_3071 && (_etcParams.z > 0.0f)) {
    _3477 = select((_3445 <= 0.0031308f), (_3445 * 12.92f), (((pow(_3445, 0.41666666f)) * 1.055f) + -0.055f));
    _3478 = select((_3446 <= 0.0031308f), (_3446 * 12.92f), (((pow(_3446, 0.41666666f)) * 1.055f) + -0.055f));
    _3479 = select((_3447 <= 0.0031308f), (_3447 * 12.92f), (((pow(_3447, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _3477 = _3445;
    _3478 = _3446;
    _3479 = _3447;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _3482 = (float)((uint)((uint)(_3055)));
    if (!(_3482 < _viewDir.w)) {
      if (!(!(_3482 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _3493 = 0.0f;
        _3494 = 0.0f;
        _3495 = 0.0f;
      } else {
        _3493 = _3477;
        _3494 = _3478;
        _3495 = _3479;
      }
    } else {
      _3493 = 0.0f;
      _3494 = 0.0f;
      _3495 = 0.0f;
    }
  } else {
    _3493 = _3477;
    _3494 = _3478;
    _3495 = _3479;
  }
  SV_Target.x = _3493;
  SV_Target.y = _3494;
  SV_Target.z = _3495;
  SV_Target.w = _3068;
  return SV_Target;
}
