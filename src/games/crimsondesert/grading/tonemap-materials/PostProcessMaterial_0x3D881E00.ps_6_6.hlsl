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


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_noiseTex : register(t17, space36);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t71, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t97, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t45, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t87, space36);

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
  float _earthRadius;
  float3 _sceneConstantDummy;
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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

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

struct BindlessParameters_PostProcessUber_CD {
  PostProcessUber_CDStruct BindlessParameters_PostProcessUber_CD;
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
  float _36;
  int _42;
  float _50;
  int _51;
  float _59;
  int _60;
  float _68;
  int _69;
  float _77;
  float _81;
  int _82;
  float _90;
  float _94;
  int _95;
  float _103;
  float _107;
  int _108;
  float _116;
  float _120;
  int _121;
  float _129;
  int _130;
  float _138;
  int _139;
  float _147;
  float _174;
  float _213;
  float _214;
  float _217;
  float _218;
  float _239;
  float _240;
  float _346;
  float _347;
  float _348;
  float _383;
  float _468;
  float _469;
  float _470;
  float _547;
  float _548;
  float _549;
  float _636;
  float _637;
  float _638;
  float _700;
  float _701;
  float _702;
  float _703;
  float _704;
  float _705;
  float _775;
  float _776;
  float _777;
  float _834;
  float _835;
  float _1072;
  float _1073;
  float _1074;
  float _1107;
  float _1108;
  float _1109;
  int _1110;
  float _1287;
  float _1288;
  float _1289;
  float _1388;
  float _1389;
  float _1390;
  float _1430;
  float _1431;
  float _1432;
  float _1567;
  float _1568;
  float _1569;
  float _1631;
  float _1632;
  float _1633;
  float _1634;
  float _1635;
  float _1636;
  float _1835;
  float _1922;
  float _1923;
  float _1924;
  float _2046;
  float _2047;
  float _2048;
  float _2167;
  float _2168;
  float _2169;
  float _2287;
  float _2288;
  float _2289;
  float _2350;
  float _2351;
  float _2352;
  bool _2706;
  bool _2723;
  float _2806;
  float _2807;
  float _2808;
  float _2809;
  float _2942;
  float _2943;
  float _2944;
  float _2974;
  float _2975;
  float _2976;
  float _3119;
  float _3120;
  float _3121;
  float _3135;
  float _3340;
  float _3341;
  float _3342;
  float _3435;
  float _3436;
  float _3437;
  float _3491;
  float _3492;
  float _3493;
  float _3512;
  float _3513;
  float _3514;
  float _3544;
  float _3545;
  float _3546;
  float _3560;
  float _3561;
  float _3562;
  float _156;
  float _161;
  float _162;
  float _163;
  float _164;
  float _178;
  float _183;
  float _187;
  float _196;
  float _202;
  float _207;
  int _219;
  float _227;
  float4 _243;
  float _253;
  float _254;
  float _255;
  float _280;
  float _281;
  float _282;
  int _283;
  int _291;
  float4 _315;
  float _324;
  float _325;
  float _338;
  int _349;
  float _357;
  int _362;
  float _370;
  int _373;
  float _381;
  float _391;
  float4 _415;
  int _420;
  float _428;
  bool _430;
  bool _431;
  int _433;
  float _441;
  float _451;
  float _452;
  float _463;
  float _485;
  float _486;
  float _495;
  float _496;
  float _498;
  float _508;
  float _522;
  float _536;
  int _554;
  float _563;
  float _564;
  float _565;
  float _566;
  float _575;
  float _576;
  float _578;
  float _588;
  float _602;
  float _616;
  int _639;
  float _647;
  int _648;
  float _656;
  int _657;
  float _665;
  int _666;
  float _674;
  int _675;
  float _683;
  float _688;
  bool _706;
  float _710;
  float _711;
  float _712;
  float _719;
  float _721;
  float _723;
  float _725;
  float _726;
  float _727;
  float _731;
  float _736;
  float _746;
  float _747;
  float _755;
  float _762;
  float _763;
  float _764;
  uint2 _793;
  uint _808;
  int _810;
  float _818;
  float _819;
  float _821;
  float _822;
  float _823;
  float _837;
  float _838;
  float _839;
  float _840;
  float _842;
  float4 _848;
  float _859;
  float _860;
  float _861;
  float _886;
  float _887;
  float _888;
  int _897;
  float _905;
  float _906;
  float _932;
  int _949;
  float _957;
  int _967;
  int _975;
  float _978;
  float _981;
  float _983;
  float _1016;
  bool _1029;
  float _1058;
  float _1059;
  float _1060;
  bool _1067;
  float _1081;
  int _1119;
  int _1127;
  float _1130;
  float _1133;
  float _1135;
  float _1168;
  float _1176;
  float _1178;
  float _1184;
  float _1186;
  float _1187;
  float _1215;
  float _1221;
  float _1222;
  float _1226;
  float _1233;
  float _1235;
  float _1242;
  float _1246;
  float _1249;
  float _1250;
  float _1253;
  float _1276;
  float4 _1301;
  float _1312;
  float _1313;
  float _1314;
  float _1339;
  float _1340;
  float _1341;
  float _1343;
  float _1346;
  float _1347;
  float _1348;
  float _1356;
  float _1361;
  float _1362;
  float _1377;
  float _1391;
  float _1397;
  float _1401;
  float _1402;
  float _1410;
  float _1417;
  float _1418;
  float _1419;
  float _1438;
  float _1453;
  float _1464;
  int _1467;
  int _1475;
  float _1489;
  float _1492;
  float _1493;
  float _1505;
  float _1517;
  float _1520;
  float _1521;
  bool _1529;
  float _1531;
  float _1540;
  float _1542;
  float _1546;
  float _1547;
  float _1554;
  float _1555;
  float _1556;
  int _1570;
  float _1580;
  float _1581;
  float _1582;
  int _1583;
  float _1593;
  float _1594;
  float _1595;
  int _1596;
  float _1604;
  bool _1609;
  bool _1616;
  float _1617;
  bool _1625;
  float _1626;
  float _1637;
  float _1638;
  float _1639;
  float _1643;
  float _1645;
  float _1647;
  float _1652;
  float _1669;
  float _1676;
  float _1677;
  float _1678;
  int _1679;
  float _1687;
  float _1690;
  float _1700;
  float _1701;
  float _1702;
  int _1703;
  float _1711;
  int _1714;
  float _1723;
  float _1724;
  int _1727;
  float _1736;
  float _1737;
  int _1740;
  int _1748;
  int _1757;
  float _1765;
  int _1766;
  float _1774;
  float _1780;
  float _1783;
  float _1784;
  float _1793;
  int _1794;
  float _1802;
  int _1805;
  float _1814;
  float _1815;
  int _1823;
  float _1831;
  int _1837;
  float _1845;
  float _1851;
  int _1852;
  int _1860;
  float _1863;
  float _1866;
  float _1868;
  float _1893;
  bool _1900;
  float _1901;
  float _1908;
  float _1927;
  float _1928;
  int _1933;
  float _1941;
  int _1947;
  float _1955;
  float _1960;
  float _1965;
  float _1972;
  float _1973;
  float _1974;
  int _1975;
  int _1983;
  float _1986;
  float _1989;
  float _1991;
  float _2016;
  bool _2023;
  float _2024;
  float _2031;
  float _2038;
  float _2051;
  float _2052;
  int _2057;
  float _2065;
  int _2070;
  float _2078;
  float _2083;
  float _2086;
  float _2093;
  float _2094;
  float _2095;
  int _2096;
  int _2104;
  float _2107;
  float _2110;
  float _2112;
  float _2137;
  bool _2144;
  float _2145;
  float _2152;
  float _2159;
  float _2172;
  float _2173;
  int _2178;
  float _2186;
  int _2190;
  float _2198;
  float _2203;
  float _2206;
  float _2213;
  float _2214;
  float _2215;
  int _2216;
  int _2224;
  float _2227;
  float _2230;
  float _2232;
  float _2257;
  bool _2264;
  float _2265;
  float _2272;
  float _2279;
  float _2294;
  float _2295;
  float _2296;
  float _2304;
  float _2312;
  float _2320;
  float _2323;
  float _2326;
  float _2333;
  float _2334;
  float _2335;
  float _2339;
  int _2357;
  int _2365;
  float _2368;
  float _2371;
  float _2373;
  float _2403;
  float _2404;
  float _2405;
  float _2406;
  int _2407;
  int _2415;
  float4 _2426;
  float _2433;
  float _2436;
  float _2438;
  float _2439;
  float _2475;
  uint _2486;
  uint _2487;
  uint4 _2489;
  float4 _2492;
  float _2510;
  float _2511;
  float _2512;
  float _2514;
  float _2515;
  float _2516;
  float _2517;
  float _2520;
  float _2521;
  float _2524;
  float _2525;
  float _2529;
  float _2531;
  float _2532;
  float _2533;
  float _2534;
  float _2536;
  float _2539;
  float _2540;
  float _2541;
  float _2542;
  float _2551;
  float _2555;
  float _2559;
  float _2561;
  float _2563;
  float _2564;
  float _2567;
  float _2570;
  float _2571;
  float4 _2578;
  float _2581;
  float _2590;
  float _2593;
  float _2594;
  float _2599;
  float _2601;
  float _2606;
  float _2609;
  float _2610;
  float _2615;
  float _2619;
  float _2625;
  float _2635;
  float _2638;
  float _2640;
  bool _2643;
  bool _2644;
  bool _2645;
  bool _2646;
  float _2658;
  float4 _2671;
  bool _2707;
  bool _2709;
  float _2725;
  float _2732;
  float _2733;
  float _2734;
  bool _2735;
  float _2742;
  float4 _2746;
  float _2756;
  float _2757;
  float _2758;
  float _2796;
  float _2810;
  float _2817;
  float _2818;
  float _2819;
  float _2821;
  float _2827;
  float _2834;
  float _2835;
  float _2836;
  int _2837;
  int _2845;
  float _2848;
  float _2851;
  float _2853;
  float _2878;
  float _2879;
  float _2880;
  float _2884;
  float _2886;
  float _2888;
  float _2893;
  float _2906;
  float _2907;
  float _2908;
  float _2922;
  float _2927;
  float _2931;
  float _2945;
  float _2949;
  float _2956;
  float _2957;
  float _2958;
  float _2963;
  bool _2996;
  float _3002;
  float4 _3019;
  float _3022;
  float _3023;
  float _3033;
  float _3036;
  float _3037;
  int _3048;
  int _3056;
  float4 _3063;
  bool _3068;
  bool _3070;
  bool _3074;
  bool _3082;
  float _3106;
  float _3108;
  uint _3122;
  bool _3138;
  float _3144;
  float _3193;
  float _3194;
  float _3195;
  float _3197;
  float _3204;
  float _3205;
  float _3206;
  float _3225;
  float _3226;
  float _3227;
  float _3228;
  float _3229;
  float _3230;
  float _3231;
  float _3232;
  float _3233;
  float _3279;
  float _3280;
  float _3281;
  float _3282;
  float _3283;
  float _3284;
  float _3285;
  float _3302;
  float _3303;
  float _3304;
  float _3305;
  float _3311;
  float _3314;
  float _3321;
  float _3322;
  float _3323;
  float _3352;
  float _3377;
  float _3378;
  float _3379;
  float _3398;
  float _3399;
  float _3400;
  float _3406;
  float _3410;
  float _3411;
  float _3412;
  float _3413;
  float _3418;
  float _3443;
  float _3447;
  float _3448;
  float _3449;
  float _3450;
  float _3480;
  float _3502;
  float _3503;
  float _3507;
  float _3551;
  float _3572;
  float _3573;
  float _3574;
  _36 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _42 = WaveReadLaneFirst(_materialIndex);
  _50 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_42 < (uint)170000), _42, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._statusVignetteRatio1);
  _51 = WaveReadLaneFirst(_materialIndex);
  _59 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_51 < (uint)170000), _51, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._statusVignetteRatio2);
  _60 = WaveReadLaneFirst(_materialIndex);
  _68 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_60 < (uint)170000), _60, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._statusVignetteRatio3);
  _69 = WaveReadLaneFirst(_materialIndex);
  _77 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_69 < (uint)170000), _69, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._statusVignetteChromaticShift1);
  _81 = ((float)((uint)(uint)(_enableChromaticAberration))) * _77;
  _82 = WaveReadLaneFirst(_materialIndex);
  _90 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_82 < (uint)170000), _82, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._statusVignetteChromaticShift2);
  _94 = ((float)((uint)(uint)(_enableChromaticAberration))) * _90;
  _95 = WaveReadLaneFirst(_materialIndex);
  _103 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_95 < (uint)170000), _95, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._statusVignetteChromaticShift3);
  _107 = ((float)((uint)(uint)(_enableChromaticAberration))) * _103;
  _108 = WaveReadLaneFirst(_materialIndex);
  _116 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_108 < (uint)170000), _108, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._chromaticAberrationRatio);
  _120 = ((float)((uint)(uint)(_enableChromaticAberration))) * _116;
  _121 = WaveReadLaneFirst(_materialIndex);
  _129 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_121 < (uint)170000), _121, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._chromaticAberrationShiftValue);
  _130 = WaveReadLaneFirst(_materialIndex);
  _138 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_130 < (uint)170000), _130, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._isBloodEffect);
  _139 = WaveReadLaneFirst(_materialIndex);
  _147 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_139 < (uint)170000), _139, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._fishEyeMaxPower);
  [branch]
  if (((_147 > 0.0010000000474974513f) || (_147 < -0.0010000000474974513f)) | (_followLearning > 0.0010000000474974513f)) {
    _156 = 0.5f / _36;
    _161 = ((_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x) + -0.5f;
    _162 = ((_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.x) - _156;
    _163 = dot(float2(_161, _162), float2(_161, _162));
    _164 = sqrt(_163);
    if (_followLearning > 0.0010000000474974513f) {
      _174 = ((pow(_followLearning, 0.25f)) * 1.5f);
    } else {
      _174 = _147;
    }
    if (_174 > 0.0f) {
      _178 = sqrt(dot(float2(0.5f, _156), float2(0.5f, _156)));
      _183 = tan(_174 * _164) * (rsqrt(_163) * _178);
      _187 = tan(_178 * _174);
      _213 = (((_183 * _161) / _187) + 0.5f);
      _214 = (((_183 * _162) / _187) + _156);
    } else {
      if (_174 < 0.0f) {
        _196 = select((_36 < 1.0f), 0.5f, _156);
        _202 = atan((_174 * _164) * -10.0f) * (rsqrt(_163) * _196);
        _207 = atan((_174 * -10.0f) * _196);
        _213 = (((_202 * _161) / _207) + 0.5f);
        _214 = (((_202 * _162) / _207) + _156);
      } else {
        _213 = 0.0f;
        _214 = 0.0f;
      }
    }
    _217 = _213;
    _218 = (_214 * _36);
  } else {
    _217 = TEXCOORD.x;
    _218 = TEXCOORD.y;
  }
  _219 = WaveReadLaneFirst(_materialIndex);
  _227 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_219 < (uint)170000), _219, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._uiQuickSlotEffect);
  if (!(!(_227 >= 0.0010000000474974513f))) {
    _239 = ((_227 * (0.029999999329447746f - (_217 * 0.06000000238418579f))) + _217);
    _240 = ((_227 * (0.029999999329447746f - (_218 * 0.06000000238418579f))) + _218);
  } else {
    _239 = _217;
    _240 = _218;
  }
  _243 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_239, _240));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _253 = (pow(_243.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _254 = (pow(_243.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _255 = (pow(_243.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _280 = exp2(log2(max(0.0f, (_253 + -0.8359375f)) / (18.8515625f - (_253 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _281 = exp2(log2(max(0.0f, (_254 + -0.8359375f)) / (18.8515625f - (_254 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _282 = exp2(log2(max(0.0f, (_255 + -0.8359375f)) / (18.8515625f - (_255 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _283 = WaveReadLaneFirst(_materialIndex);
  _291 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_283 < (uint)170000), _283, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._noiseTex);
  [branch]
  if (!(!(_fleeCount >= 0.0010000000474974513f))) {
    _315 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_291 < (uint)65000), _291, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x * 4.0f), ((((_fleeCount * 0.0010000000474974513f) + -0.10000000149011612f) + ((TEXCOORD.y / _36) * 4.0f)) + (_time.x * 0.019999999552965164f))));
    _324 = (TEXCOORD.x + -0.5f) + ((_315.x + -0.5f) * 0.15000000596046448f);
    _325 = (TEXCOORD.y + -0.5f) + ((_315.y + -0.5f) * 0.15000000596046448f);
  // [sem: expr_sat]
    _338 = saturate(_fleeCount * 0.20000000298023224f) * saturate((((_fleeCount * 0.004999999888241291f) + -0.6000000238418579f) + sqrt((_324 * _324) + (_325 * _325))) / ((_fleeCount * 0.004000000189989805f) + 0.10000000149011612f));
    _346 = (_280 - (_338 * _280));
    _347 = (_281 - (_338 * _281));
    _348 = (_282 - (_338 * _282));
  } else {
    _346 = _280;
    _347 = _281;
    _348 = _282;
  }
  _349 = WaveReadLaneFirst(_materialIndex);
  _357 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_349 < (uint)170000), _349, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
  if ((_227 >= 0.0010000000474974513f) || (_357 >= 0.0010000000474974513f)) {
    _362 = WaveReadLaneFirst(_materialIndex);
    _370 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_362 < (uint)170000), _362, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
    if (_370 > _227) {
      _373 = WaveReadLaneFirst(_materialIndex);
      _381 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_373 < (uint)170000), _373, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
      _383 = _381;
    } else {
      _383 = _227;
    }
    _391 = _383 * 0.5f;
    _415 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_291 < (uint)65000), _291, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 2.0f) * _36), (TEXCOORD.y * 2.0f)));
    _420 = WaveReadLaneFirst(_materialIndex);
    _428 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_420 < (uint)170000), _420, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
    _430 = (_227 < 0.0010000000474974513f);
    _431 = _430 && (_428 >= 0.0010000000474974513f);
    _433 = WaveReadLaneFirst(_materialIndex);
    _441 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_433 < (uint)170000), _433, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._uiMainMenuEffect);
    _451 = (TEXCOORD.y - select(_431, 0.550000011920929f, 0.5f)) - ((_415.y + -0.5f) * 0.05000000074505806f);
    _452 = ((TEXCOORD.x - ((_415.x + -0.5f) * 0.05000000074505806f)) + select(_431, -0.41999998688697815f, -0.5f)) * _36;
    _463 = ((_383 * -0.8999999761581421f) * (1.0f - saturate((select((_430 && (_441 >= 0.0010000000474974513f)), 0.3499999940395355f, 0.4000000059604645f) - sqrt((_452 * _452) + (_451 * _451))) * 1.4285714626312256f))) + 1.0f;
    _468 = (_463 * ((_391 * (((_347 * 0.75f) - (_346 * 0.6069999933242798f)) + (_348 * 0.1889999955892563f))) + _346));
    _469 = (_463 * ((_391 * (((_346 * 0.3490000069141388f) - (_347 * 0.3140000104904175f)) + (_348 * 0.1679999977350235f))) + _347));
    _470 = (_463 * ((_391 * (((_346 * 0.2720000147819519f) + (_347 * 0.5339999794960022f)) - (_348 * 0.8690000176429749f))) + _348));
  } else {
    _468 = _346;
    _469 = _347;
    _470 = _348;
  }
  if (((_50 >= 0.0010000000474974513f) && (_81 >= 0.0010000000474974513f)) | ((_59 >= 0.0010000000474974513f) && (_94 >= 0.0010000000474974513f)) | ((_68 >= 0.0010000000474974513f) && (_107 >= 0.0010000000474974513f))) {
    _485 = _239 + -0.5f;
    _486 = _240 + -0.5f;
  // [sem: invLength]
    _495 = rsqrt(dot(float2(_485, _486), float2(_485, _486))) * ((max(max(_81, _94), _107) * 0.009999999776482582f) * sqrt((_486 * _486) + (_485 * _485)));
    _496 = _495 * _485;
    _498 = _495 * _486;
    _508 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_239 - _496), (_240 - _498))))).x) * 0.012683313339948654f);
    _522 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_239, _240)))).y) * 0.012683313339948654f);
    _536 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_496 + _239), (_498 + _240))))).z) * 0.012683313339948654f);
    _547 = (exp2(log2(max(0.0f, (_508 + -0.8359375f)) / (18.8515625f - (_508 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
    _548 = (exp2(log2(max(0.0f, (_522 + -0.8359375f)) / (18.8515625f - (_522 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
    _549 = (exp2(log2(max(0.0f, (_536 + -0.8359375f)) / (18.8515625f - (_536 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
  } else {
    _547 = _468;
    _548 = _469;
    _549 = _470;
  }
  if ((_120 >= 0.0010000000474974513f) && (_129 >= 0.0010000000474974513f)) {
    _554 = WaveReadLaneFirst(_materialIndex);
    _563 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_554 < (uint)170000), _554, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._chromaticAberrationShiftPosition.x);
    _564 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_554 < (uint)170000), _554, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._chromaticAberrationShiftPosition.y);
    _565 = _239 - _563;
    _566 = _240 - _564;
  // [sem: invLength]
    _575 = rsqrt(dot(float2(_565, _566), float2(_565, _566))) * ((_129 * 0.009999999776482582f) * sqrt((_566 * _566) + (_565 * _565)));
    _576 = _575 * _565;
    _578 = _575 * _566;
    _588 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_239 - _576), (_240 - _578))))).x) * 0.012683313339948654f);
    _602 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_239, _240)))).y) * 0.012683313339948654f);
    _616 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_576 + _239), (_578 + _240))))).z) * 0.012683313339948654f);
    _636 = ((((exp2(log2(max(0.0f, (_588 + -0.8359375f)) / (18.8515625f - (_588 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _547) * _120) + _547);
    _637 = ((((exp2(log2(max(0.0f, (_602 + -0.8359375f)) / (18.8515625f - (_602 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _548) * _120) + _548);
    _638 = ((((exp2(log2(max(0.0f, (_616 + -0.8359375f)) / (18.8515625f - (_616 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _549) * _120) + _549);
  } else {
    _636 = _468;
    _637 = _469;
    _638 = _470;
  }
  _639 = WaveReadLaneFirst(_materialIndex);
  _647 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_639 < (uint)170000), _639, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._detectModeG);
  _648 = WaveReadLaneFirst(_materialIndex);
  _656 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_648 < (uint)170000), _648, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._detectModeR);
  _657 = WaveReadLaneFirst(_materialIndex);
  _665 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_657 < (uint)170000), _657, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._detectModeB);
  _666 = WaveReadLaneFirst(_materialIndex);
  _674 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_666 < (uint)170000), _666, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._detectModeKnowledge);
  _675 = WaveReadLaneFirst(_materialIndex);
  _683 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_675 < (uint)170000), _675, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._detectModeInterrupt);
  _688 = saturate((((_656 + _647) + _665) + _674) + _683);  // [sem: expr_sat]
  [branch]
  if (_688 > 0.0f) {
    if (!(_647 >= 0.0010000000474974513f)) {
      if (!(_656 >= 0.0010000000474974513f)) {
        if (!(_665 >= 0.0010000000474974513f)) {
          if (!(!(_674 >= 0.0010000000474974513f))) {
            _700 = 0.6000000238418579f;
            _701 = 0.6000000238418579f;
            _702 = 0.800000011920929f;
            _703 = 0.5f;
            _704 = 0.44999998807907104f;
            _705 = 0.949999988079071f;
          } else {
            _700 = 0.0f;
            _701 = 0.0f;
            _702 = 0.0f;
            _703 = 0.0f;
            _704 = 0.0f;
            _705 = 0.0f;
          }
        } else {
          _700 = 0.6000000238418579f;
          _701 = 0.699999988079071f;
          _702 = 0.699999988079071f;
          _703 = 0.6000000238418579f;
          _704 = 0.699999988079071f;
          _705 = 0.800000011920929f;
        }
      } else {
        _700 = 0.699999988079071f;
        _701 = 0.6000000238418579f;
        _702 = 0.6000000238418579f;
        _703 = 0.800000011920929f;
        _704 = 0.699999988079071f;
        _705 = 0.6000000238418579f;
      }
    } else {
      _700 = 0.6000000238418579f;
      _701 = 0.699999988079071f;
      _702 = 0.6000000238418579f;
      _703 = 0.6000000238418579f;
      _704 = 0.800000011920929f;
      _705 = 0.699999988079071f;
    }
    _706 = (_683 >= 0.0010000000474974513f);
    _710 = select(_706, 0.800000011920929f, _703);
    _711 = select(_706, 0.6000000238418579f, _704);
    _712 = select(_706, 0.20000000298023224f, _705);
    _719 = (1.0f - _710) * 0.3086000084877014f;
    _721 = (1.0f - _711) * 0.6093999743461609f;
    _723 = (1.0f - _712) * 0.0820000022649765f;
    _725 = select(_706, 2.0f, _700) * _636;
    _726 = select(_706, 2.0f, _701) * _637;
    _727 = select(_706, 2.0f, _702) * _638;
    _731 = _719 * _725;
    _736 = 0.009999999776482582f / max(0.0010000000474974513f, _exposure0.x);
    _746 = max((abs(TEXCOORD.x + -0.5f) + -0.07500000298023224f), 0.0f);
    _747 = max((abs(TEXCOORD.y + -0.5f) + -0.07500000298023224f), 0.0f);
    _755 = (_688 * 0.75f) * saturate(sqrt((_747 * _747) + (_746 * _746)) * 2.0f);
    _762 = ((mad(_727, _723, mad(_726, _721, ((_719 + _710) * _725))) - _636) * _688) + _636;
    _763 = ((mad(_727, _723, mad(_726, (_721 + _711), _731)) - _637) * _688) + _637;
    _764 = ((mad(_727, (_723 + _712), mad(_726, _721, _731)) - _638) * _688) + _638;
    _775 = ((_755 * ((_736 * _710) - _762)) + _762);
    _776 = ((_755 * ((_736 * _711) - _763)) + _763);
    _777 = ((_755 * ((_736 * _712) - _764)) + _764);
  } else {
    _775 = _636;
    _776 = _637;
    _777 = _638;
  }
  if ((((_highLightForVisionRemoteCatch > 0.0f) || (_highLightForVision > 0.0f)) || (_characterHighlight > 0.0f)) | (_followLearning > 0.0010000000474974513f)) {
    __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_793.x, _793.y);
  // [sem: _3__36__0__0__g_CustomRenderPassValue_load]
    _808 = __3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_793.x)))))) + 0.5f) * _239), int((float((int)(int(float((int)((int)(_793.y)))))) + 0.5f) * _240), 0));
    _810 = _808.x & 255;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _818 = (((float)((uint)((uint)((uint)((uint)(_808.x)) >> 20)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _819 = (((float)((uint)((uint)(((uint)((uint)(_808.x)) >> 8) & 4095)))) * 0.0004884005174972117f) + -1.0f;  // [sem: _3__36__0__0__g_CustomRenderPassValue_load_derived]
    _821 = 1.0f - abs(_818);
    _822 = abs(_819);
    _823 = _821 - _822;
    if (!(_823 >= 0.0f)) {
      _834 = (select((_818 >= 0.0f), 1.0f, -1.0f) * (1.0f - _822));
      _835 = (select((_819 >= 0.0f), 1.0f, -1.0f) * _821);
    } else {
      _834 = _818;
      _835 = _819;
    }
    _837 = rsqrt(dot(float3(_834, _835, _823), float3(_834, _835, _823)));  // [sem: invLength]
    _838 = _837 * _834;
    _839 = _837 * _835;
    _840 = _837 * _823;
    _842 = rsqrt(dot(float3(_838, _839, _840), float3(_838, _839, _840)));  // [sem: invLength]
    _848 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_239, _240));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _859 = (pow(_848.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _860 = (pow(_848.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _861 = (pow(_848.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _886 = exp2(log2(max(0.0f, (_859 + -0.8359375f)) / (18.8515625f - (_859 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
    _887 = exp2(log2(max(0.0f, (_860 + -0.8359375f)) / (18.8515625f - (_860 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
    _888 = exp2(log2(max(0.0f, (_861 + -0.8359375f)) / (18.8515625f - (_861 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
    [branch]
    if (_810 == _renderPassTest) {
      _897 = WaveReadLaneFirst(_materialIndex);
      _905 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_897 < (uint)170000), _897, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._testEffectRatio);
      _906 = _905 * (1.0f / max(0.0010000000474974513f, _exposure0.x));
      _1107 = (_906 + _775);
      _1108 = _776;
      _1109 = (_906 + _777);
      _1110 = _810;
    } else {
      if ((_810 == _renderPassDetectObjective) || ((!(_810 == _renderPassDetectObjective)) && (_810 == _renderPassKnowledgeNPC))) {
        _932 = ((((float4)(__3__36__0__0__g_noiseTex.SampleLevel(__0__4__0__0__g_staticPointWrap, float2(frac((TEXCOORD.x * 0.015625f) * _bufferSizeAndInvSize.x), frac((TEXCOORD.y * 0.015625f) * _bufferSizeAndInvSize.y)), 0.0f))).x) * 0.5f) + 0.5f;
        _1107 = ((((_932 * _886) - _775) * _848.w) + _775);
        _1108 = ((((_932 * _887) - _776) * _848.w) + _776);
        _1109 = ((((_932 * _888) - _777) * _848.w) + _777);
        _1110 = _810;
      } else {
        bool __branch_chain_945;
        if (!(_810 == _renderPassDetectRemoteCatch)) {
          __branch_chain_945 = true;
        } else {
          _949 = WaveReadLaneFirst(_materialIndex);
          _957 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_949 < (uint)170000), _949, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._itemRatio);
          if (!(_957 > 0.0010000000474974513f)) {
            __branch_chain_945 = true;
          } else {
            if (!((_highLightForVision > 0.0f) || (_highLightForVisionRemoteCatch > 0.0f))) {
              __branch_chain_945 = true;
            } else {
              __branch_chain_945 = false;
            }
          }
        }
        if (__branch_chain_945) {
          _1029 = (_810 == _renderPassSelfPlayer);
          if ((_1029) | ((_810 == _renderPassTest) || (_810 == _renderPassEnemy)) | (_810 == _renderPassDetectPickedRemoteCatch)) {
            if ((_characterHighlight > 0.0010000000474974513f) || (_highLightForVisionRemoteCatch > 0.0010000000474974513f)) {
              _1058 = 1.0f - saturate(dot(float3((_842 * _838), (_842 * _839), (_842 * _840)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
              _1059 = _1058 * _1058;
              _1060 = _1059 * _1059;
              if (!_1029) {
                if (!(_810 == _renderPassTest)) {
                  _1067 = (_810 == _renderPassEnemy);
                  _1072 = select(_1067, 1.0f, 0.20000000298023224f);
                  _1073 = select(_1067, 0.30000001192092896f, 0.4000000059604645f);
                  _1074 = select(_1067, 0.30000001192092896f, 1.0f);
                } else {
                  _1072 = 1.0f;
                  _1073 = 1.0f;
                  _1074 = 1.0f;
                }
              } else {
                _1072 = 1.0f;
                _1073 = 1.0f;
                _1074 = 1.0f;
              }
              _1081 = 1.0f / max(0.0010000000474974513f, _exposure0.x);
              _1107 = ((((_886 - _775) + ((((_1081 + (_775 * 10.0f)) * _1072) - _886) * _1060)) * _848.w) + _775);
              _1108 = ((((_887 - _776) + ((((_1081 + (_776 * 10.0f)) * _1073) - _887) * _1060)) * _848.w) + _776);
              _1109 = ((((_888 - _777) + ((((_1081 + (_777 * 10.0f)) * _1074) - _888) * _1060)) * _848.w) + _777);
              _1110 = _810;
            } else {
              _1107 = _775;
              _1108 = _776;
              _1109 = _777;
              _1110 = _810;
            }
          } else {
            _1107 = _775;
            _1108 = _776;
            _1109 = _777;
            _1110 = _810;
          }
        } else {
          _967 = WaveReadLaneFirst(_materialIndex);
          _975 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_967 < (uint)170000), _967, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._detectColorBase);
          _978 = (float)((uint)((uint)(((uint)(_975) >> 16) & 255)));
          _981 = (float)((uint)((uint)(((uint)(_975) >> 8) & 255)));
          _983 = (float)((uint)((uint)(_975 & 255)));
          _1016 = max(0.0010000000474974513f, _exposure0.x);
          _1107 = ((((select(((_978 * 0.003921568859368563f) < 0.040449999272823334f), (_978 * 0.0003035269910469651f), exp2(log2((_978 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) * 10.0f) / _1016) * _848.w) + _775);
          _1108 = ((((select(((_981 * 0.003921568859368563f) < 0.040449999272823334f), (_981 * 0.0003035269910469651f), exp2(log2((_981 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) * 10.0f) / _1016) * _848.w) + _776);
          _1109 = ((((select(((_983 * 0.003921568859368563f) < 0.040449999272823334f), (_983 * 0.0003035269910469651f), exp2(log2((_983 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) * 10.0f) / _1016) * _848.w) + _777);
          _1110 = _810;
        }
      }
    }
  } else {
    _1107 = _775;
    _1108 = _776;
    _1109 = _777;
    _1110 = 0;
  }
  if (!(!(_wantedRegionRatio >= 0.0010000000474974513f))) {
    [branch]
    if (!(!(_wantedRegionOpacity >= 0.0010000000474974513f))) {
      _1119 = WaveReadLaneFirst(_materialIndex);
      _1127 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1119 < (uint)170000), _1119, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._wantedRegionColor);
      _1130 = (float)((uint)((uint)(((uint)(_1127) >> 16) & 255)));
      _1133 = (float)((uint)((uint)(((uint)(_1127) >> 8) & 255)));
      _1135 = (float)((uint)((uint)(_1127 & 255)));
      _1168 = max(0.0010000000474974513f, _exposure0.x);
      _1176 = _wantedRegionRadius * _wantedRegionRatio;
      _1178 = saturate(_1176) * 4.0f;
      _1184 = (_239 * 2.0f) + -1.0f;
      _1186 = 1.0f - (_240 * 2.0f);
      _1187 = max(1.0000000116860974e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_239, _240))).x));
      _1215 = mad((_invViewProj[2].w), _1187, mad((_invViewProj[1].w), _1186, ((_invViewProj[0].w) * _1184))) + (_invViewProj[3].w);
      _1221 = ((mad((_invViewProj[2].x), _1187, mad((_invViewProj[1].x), _1186, ((_invViewProj[0].x) * _1184))) + (_invViewProj[3].x)) / _1215) - _wantedRegionPosition.x;
      _1222 = ((mad((_invViewProj[2].z), _1187, mad((_invViewProj[1].z), _1186, ((_invViewProj[0].z) * _1184))) + (_invViewProj[3].z)) / _1215) - _wantedRegionPosition.z;
      _1226 = sqrt((_1221 * _1221) + (_1222 * _1222));
      _1233 = saturate(floor(_1226 / _1176));  // [sem: expr_sat]
      _1235 = (1.0f - _1233) * saturate(((_1178 - _1176) + _1226) / _1178);
      _1242 = (1.0f - saturate((_1226 - _1176) / _1178)) * _1233;
      _1246 = saturate(((_1242 * _1242) * _1242) + ((_1235 * _1235) * _1235));  // [sem: expr_sat]
      _1249 = saturate((_1246 * 5.0f) + -4.0f);  // [sem: expr_sat]
      _1250 = _1249 * _1249;
      _1253 = ((_1250 * _1250) * 9.0f) + 1.0f;
      _1276 = (((((float)((uint)((uint)((uint)(_1127) >> 24)))) * 0.003921568859368563f) * _wantedRegionOpacity) * _1246) * ((float)((bool)(uint)((uint)(((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint((_bufferSizeAndInvSize.x * _239) + -0.5f)), (int)(uint((_bufferSizeAndInvSize.y * _240) + -0.5f)), 0)))).x) & 127) + -53) > (uint)14)));
      _1287 = ((_1276 * ((_1253 * (select(((_1130 * 0.003921568859368563f) < 0.040449999272823334f), (_1130 * 0.0003035269910469651f), exp2(log2((_1130 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _1168)) - _1107)) + _1107);
      _1288 = ((_1276 * ((_1253 * (select(((_1133 * 0.003921568859368563f) < 0.040449999272823334f), (_1133 * 0.0003035269910469651f), exp2(log2((_1133 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _1168)) - _1108)) + _1108);
      _1289 = ((_1276 * ((_1253 * (select(((_1135 * 0.003921568859368563f) < 0.040449999272823334f), (_1135 * 0.0003035269910469651f), exp2(log2((_1135 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _1168)) - _1109)) + _1109);
    } else {
      _1287 = _1107;
      _1288 = _1108;
      _1289 = _1109;
    }
  } else {
    _1287 = _1107;
    _1288 = _1108;
    _1289 = _1109;
  }
  if (((_temperatureWarning <= -0.009999999776482582f) || (_temperatureWarning >= 0.009999999776482582f)) || (_electrocutionWarning > 0.0010000000474974513f)) {
    _1301 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_239, _240));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _1312 = (pow(_1301.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _1313 = (pow(_1301.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _1314 = (pow(_1301.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _1339 = exp2(log2(max(0.0f, (_1312 + -0.8359375f)) / (18.8515625f - (_1312 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
    _1340 = exp2(log2(max(0.0f, (_1313 + -0.8359375f)) / (18.8515625f - (_1313 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
    _1341 = exp2(log2(max(0.0f, (_1314 + -0.8359375f)) / (18.8515625f - (_1314 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
    _1343 = _temperatureWarning * 0.009999999776482582f;
    if (_temperatureWarning > 0.0f) {
      _1346 = saturate(saturate(_1343));  // [sem: expr_sat]
      _1347 = TEXCOORD.x + -0.5f;
      _1348 = TEXCOORD.y + -0.6000000238418579f;
      _1356 = saturate((_1346 + -0.5f) + sqrt((_1348 * _1348) + (_1347 * _1347))) * _1346;
      _1361 = (1.0f - (_1356 * 0.30000001192092896f)) * _1288;
      _1362 = (1.0f - (_1356 * 0.699999988079071f)) * _1289;
      _1388 = ((_1339 - _1287) * _1301.w);
      _1389 = (lerp(_1361, _1340, _1301.w));  // [sem: blended]
      _1390 = (lerp(_1362, _1341, _1301.w));  // [sem: blended]
    } else {
      _1377 = (_1301.w * (1.0f - TEXCOORD.y)) * saturate(abs(_1343) * 2.0f);
      _1388 = (_1377 * (_1339 - (_1287 * 0.30000001192092896f)));
      _1389 = ((_1377 * (_1340 - (_1288 * 0.10000002384185791f))) + _1288);  // [sem: blended]
      _1390 = ((_1377 * _1341) + _1289);  // [sem: blended]
    }
    _1391 = _1287 + _1388;
    if (!(_electrocutionWarning == 0.0f)) {
      _1397 = max(0.0010000000474974513f, _exposure0.x);
      _1401 = TEXCOORD.x + -0.5f;
      _1402 = TEXCOORD.y + -0.6000000238418579f;
      _1410 = (_electrocutionWarning * 0.5f) * saturate(sqrt((_1402 * _1402) + (_1401 * _1401)) + -0.30000001192092896f);
      _1417 = (_1410 * ((0.05000000074505806f / _1397) - _1391)) + _1391;
      _1418 = (_1410 * ((0.10000000149011612f / _1397) - _1389)) + _1389;
      _1419 = (_1410 * ((0.5f / _1397) - _1390)) + _1390;
      _1430 = (lerp(_1417, _1339, _1301.w));  // [sem: blended]
      _1431 = (lerp(_1418, _1340, _1301.w));  // [sem: blended]
      _1432 = (lerp(_1419, _1341, _1301.w));  // [sem: blended]
    } else {
      _1430 = _1391;  // [sem: blended]
      _1431 = _1389;  // [sem: blended]
      _1432 = _1390;  // [sem: blended]
    }
  } else {
    _1430 = _1287;  // [sem: blended]
    _1431 = _1288;  // [sem: blended]
    _1432 = _1289;  // [sem: blended]
  }
  [branch]
  if (!(!(_hpPercentage <= 20.0f))) {
    _1438 = 1.0f - (_hpPercentage * 0.009999999776482582f);
    if ((!(_hpPercentage <= 0.0f)) && (_1438 >= 0.0010000000474974513f)) {
      _1453 = _time.x * 0.30000001192092896f;
      _1464 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_291 < (uint)65000), _291, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1453 + (TEXCOORD.x * 12.0f)), (_1453 + (TEXCOORD.y * 6.0f)))))).w) * 0.10000000149011612f;
      _1467 = WaveReadLaneFirst(_materialIndex);
      _1475 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1467 < (uint)170000), _1467, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseTexture);
      _1489 = (_hpPercentage * 0.0020000000949949026f) + 0.36000001430511475f;
      _1492 = max((abs(TEXCOORD.x + -0.5f) - _1489), 0.0f);
      _1493 = max((abs(TEXCOORD.y + -0.5f) - _1489), 0.0f);
      _1505 = sin(frac(_time.x * (2.0f - (_hpPercentage * 0.05000000074505806f))) * 3.1415927410125732f);
      _1517 = 1.0f - _240;
      _1520 = saturate((_1517 * _1517) * 2.0f);  // [sem: expr_sat]
      _1521 = saturate(_1505);  // [sem: _1505_sat]
      _1529 = ((_isPhotosensitiveMode_isAllolwBlood & 1) != 0);
      _1531 = (_1521 * 0.0112674031406641f) + 0.022386489436030388f;
      _1540 = 1.0f / max(0.0010000000474974513f, _exposure0.x);
      _1542 = select(_1529, 0.006995410192757845f, 0.04317210242152214f) * _1540;
      _1546 = (min(max(_1438, 0.0f), 1.0f) * saturate((saturate(((_1505 * 0.19999998807907104f) + 0.800000011920929f) * saturate(sqrt((_1493 * _1493) + (_1492 * _1492)) * 3.846153974533081f)) * 2.0f) - ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1475 < (uint)65000), _1475, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((TEXCOORD.x * 2.0f) + 0.30000001192092896f) + _1464), (_1464 + TEXCOORD.y))))).x) * 1.440000057220459f))) * _1520;
      _1547 = _1520 * (0.12999999523162842f - (_hpPercentage * 0.006000000052154064f));
      _1554 = (((select(_1529, 0.215860515832901f, 0.04317210242152214f) * _1540) - _1430) * _1547) + _1430;
      _1555 = ((_1542 - _1431) * _1547) + _1431;
      _1556 = ((_1542 - _1432) * _1547) + _1432;
      _1567 = ((((select(_1529, ((_1521 * 0.056337013840675354f) + 0.11193244159221649f), _1531) * _1540) - _1554) * _1546) + _1554);
      _1568 = ((((select(_1529, ((_1521 * 0.0053743417374789715f) + 0.0021246890537440777f), _1531) * _1540) - _1555) * _1546) + _1555);
      _1569 = ((((select(_1529, 0.0021246890537440777f, _1531) * _1540) - _1556) * _1546) + _1556);
    } else {
      _1567 = _1430;
      _1568 = _1431;
      _1569 = _1432;
    }
  } else {
    _1567 = _1430;
    _1568 = _1431;
    _1569 = _1432;
  }
  _1570 = WaveReadLaneFirst(_materialIndex);
  _1580 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1570 < (uint)170000), _1570, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._channelBrightness.x);
  _1581 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1570 < (uint)170000), _1570, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._channelBrightness.y);
  _1582 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1570 < (uint)170000), _1570, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._channelBrightness.z);
  _1583 = WaveReadLaneFirst(_materialIndex);
  _1593 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1583 < (uint)170000), _1583, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._saturation.x);
  _1594 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1583 < (uint)170000), _1583, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._saturation.y);
  _1595 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1583 < (uint)170000), _1583, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._saturation.z);
  _1596 = WaveReadLaneFirst(_materialIndex);
  _1604 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1596 < (uint)170000), _1596, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._contrast);
  _1609 = (_138 > 0.0010000000474974513f);
  if (_1609 && ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0)) {
    _1616 = (_1580 > (_1581 + 0.05000000074505806f)) && (_1580 > (_1582 + 0.05000000074505806f));
    _1617 = _1580 * 0.4000000059604645f;
    _1625 = (_1593 > (_1594 + 0.05000000074505806f)) && (_1593 > (_1595 + 0.05000000074505806f));
    _1626 = _1593 * 0.4000000059604645f;
    _1631 = select(_1616, _1617, _1580);
    _1632 = select(_1616, _1617, _1581);
    _1633 = select(_1616, _1617, _1582);
    _1634 = select(_1625, _1626, _1593);
    _1635 = select(_1625, _1626, _1594);
    _1636 = select(_1625, _1626, _1595);
  } else {
    _1631 = _1580;
    _1632 = _1581;
    _1633 = _1582;
    _1634 = _1593;
    _1635 = _1594;
    _1636 = _1595;
  }
  _1637 = _1631 * _1567;
  _1638 = _1632 * _1568;
  _1639 = _1633 * _1569;
  _1643 = (1.0f - _1634) * 0.3086000084877014f;
  _1645 = (1.0f - _1635) * 0.6093999743461609f;
  _1647 = (1.0f - _1636) * 0.0820000022649765f;
  _1652 = _1643 * _1637;
  _1669 = max(_1604, 0.0f);
  _1676 = max(0.0f, ((_1669 * (mad(_1639, _1647, mad(_1638, _1645, ((_1643 + _1634) * _1637))) + -0.5f)) + 0.5f));
  _1677 = max(0.0f, ((_1669 * (mad(_1639, _1647, mad(_1638, (_1645 + _1635), _1652)) + -0.5f)) + 0.5f));
  _1678 = max(0.0f, ((_1669 * (mad(_1639, (_1647 + _1636), mad(_1638, _1645, _1652)) + -0.5f)) + 0.5f));
  _1679 = WaveReadLaneFirst(_materialIndex);
  _1687 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1679 < (uint)170000), _1679, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._invertColor);
  _1690 = _exposure2.x * 4.0f;
  _1700 = ((_1690 - (_1676 * 2.0f)) * _1687) + _1676;
  _1701 = ((_1690 - (_1677 * 2.0f)) * _1687) + _1677;
  _1702 = ((_1690 - (_1678 * 2.0f)) * _1687) + _1678;
  _1703 = WaveReadLaneFirst(_materialIndex);
  _1711 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1703 < (uint)170000), _1703, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._borderRatio);
  [branch]
  if (!(!(_1711 >= 0.0010000000474974513f))) {
    _1714 = WaveReadLaneFirst(_materialIndex);
    _1723 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1714 < (uint)170000), _1714, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseTile.x);
    _1724 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1714 < (uint)170000), _1714, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseTile.y);
    _1727 = WaveReadLaneFirst(_materialIndex);
    _1736 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1727 < (uint)170000), _1727, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseOffset.x);
    _1737 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1727 < (uint)170000), _1727, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseOffset.y);
    _1740 = WaveReadLaneFirst(_materialIndex);
    _1748 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1740 < (uint)170000), _1740, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseTexture);
    _1757 = WaveReadLaneFirst(_materialIndex);
    _1765 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1757 < (uint)170000), _1757, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._borderSmoothness);
    _1766 = WaveReadLaneFirst(_materialIndex);
    _1774 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1766 < (uint)170000), _1766, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._borderWidth);
    _1780 = (1.0f - _1774) * 0.5f;
    _1783 = max((abs(TEXCOORD.x + -0.5f) - _1780), 0.0f);
    _1784 = max((abs(TEXCOORD.y + -0.5f) - _1780), 0.0f);
    _1793 = 1.0f - ((1.0f - saturate(sqrt((_1784 * _1784) + (_1783 * _1783)) / _1765)) * 2.0f);
    _1794 = WaveReadLaneFirst(_materialIndex);
    _1802 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1794 < (uint)170000), _1794, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._borderFlickerSpeed);
    if (_1802 > 0.0010000000474974513f) {
      _1805 = WaveReadLaneFirst(_materialIndex);
      _1814 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1805 < (uint)170000), _1805, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._borderFlickerOpacityMinMax.x);
      _1815 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1805 < (uint)170000), _1805, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._borderFlickerOpacityMinMax.y);
      _1823 = WaveReadLaneFirst(_materialIndex);
      _1831 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1823 < (uint)170000), _1823, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._borderFlickerIntensity);
      _1835 = ((min(max(sin((_1802 * 3.1415927410125732f) * _time.x), _1814), _1815) * _1793) * _1831);
    } else {
      _1835 = _1793;
    }
    _1837 = WaveReadLaneFirst(_materialIndex);
    _1845 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1837 < (uint)170000), _1837, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._borderEdgeNoiseRatio);
    _1851 = min(max(_1711, 0.0f), 1.0f) * saturate(saturate(_1835) - (_1845 * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1748 < (uint)65000), _1748, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1736 + (_1723 * TEXCOORD.x)), (_1737 + (_1724 * TEXCOORD.y)))))).x)));
    _1852 = WaveReadLaneFirst(_materialIndex);
    _1860 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1852 < (uint)170000), _1852, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._borderColor);
    _1863 = (float)((uint)((uint)(((uint)(_1860) >> 16) & 255)));
    _1866 = (float)((uint)((uint)(((uint)(_1860) >> 8) & 255)));
    _1868 = (float)((uint)((uint)(_1860 & 255)));
    _1893 = select(((_1863 * 0.003921568859368563f) < 0.040449999272823334f), (_1863 * 0.0003035269910469651f), exp2(log2((_1863 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _1900 = _1609 && ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
    _1901 = _1893 * 0.4000000059604645f;
    _1908 = 1.0f / max(0.0010000000474974513f, _exposure0.x);
    _1922 = ((((select(_1900, _1901, _1893) * _1908) - _1700) * _1851) + _1700);
    _1923 = ((((select(_1900, _1901, select(((_1866 * 0.003921568859368563f) < 0.040449999272823334f), (_1866 * 0.0003035269910469651f), exp2(log2((_1866 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) * _1908) - _1701) * _1851) + _1701);
    _1924 = ((((select(_1900, _1901, select(((_1868 * 0.003921568859368563f) < 0.040449999272823334f), (_1868 * 0.0003035269910469651f), exp2(log2((_1868 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) * _1908) - _1702) * _1851) + _1702);
  } else {
    _1922 = _1700;
    _1923 = _1701;
    _1924 = _1702;
  }
  [branch]
  if (!(!(_59 >= 0.0010000000474974513f))) {
    _1927 = TEXCOORD.x + -0.5f;
    _1928 = TEXCOORD.y + -0.5f;
    _1933 = WaveReadLaneFirst(_materialIndex);
    _1941 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1933 < (uint)170000), _1933, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._statusVignetteRadius2);
    _1947 = WaveReadLaneFirst(_materialIndex);
    _1955 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1947 < (uint)170000), _1947, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._statusVignettePower2);
  // [sem: expr_sat]
    _1960 = saturate(exp2(log2(abs(0.5f - TEXCOORD.x)) * _1955) * (sqrt((_1928 * _1928) + (_1927 * _1927)) / max(0.0010000000474974513f, (1.0f - _1941))));
    _1965 = saturate(_59 * 10.0f) * saturate(_1960 * 2.0f);  // [sem: expr_sat]
    _1972 = (_1965 * (_547 - _1922)) + _1922;
    _1973 = (_1965 * (_548 - _1923)) + _1923;
    _1974 = (_1965 * (_549 - _1924)) + _1924;
    _1975 = WaveReadLaneFirst(_materialIndex);
    _1983 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_1975 < (uint)170000), _1975, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._statusVignetteColor2);
    _1986 = (float)((uint)((uint)(((uint)(_1983) >> 16) & 255)));
    _1989 = (float)((uint)((uint)(((uint)(_1983) >> 8) & 255)));
    _1991 = (float)((uint)((uint)(_1983 & 255)));
    _2016 = select(((_1986 * 0.003921568859368563f) < 0.040449999272823334f), (_1986 * 0.0003035269910469651f), exp2(log2((_1986 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _2023 = _1609 && ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
    _2024 = _2016 * 0.20000000298023224f;
    _2031 = max(0.0010000000474974513f, _exposure0.x);
    _2038 = saturate(_1960) * _59;
    _2046 = ((((select(_2023, _2024, _2016) / _2031) - _1972) * _2038) + _1972);
    _2047 = ((((select(_2023, _2024, select(((_1989 * 0.003921568859368563f) < 0.040449999272823334f), (_1989 * 0.0003035269910469651f), exp2(log2((_1989 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) / _2031) - _1973) * _2038) + _1973);
    _2048 = ((((select(_2023, _2024, select(((_1991 * 0.003921568859368563f) < 0.040449999272823334f), (_1991 * 0.0003035269910469651f), exp2(log2((_1991 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) / _2031) - _1974) * _2038) + _1974);
  } else {
    _2046 = _1922;
    _2047 = _1923;
    _2048 = _1924;
  }
  [branch]
  if (!(!(_50 >= 0.0010000000474974513f))) {
    _2051 = TEXCOORD.x + -0.5f;
    _2052 = TEXCOORD.y + -0.5f;
    _2057 = WaveReadLaneFirst(_materialIndex);
    _2065 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_2057 < (uint)170000), _2057, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._statusVignetteRadius1);
    _2070 = WaveReadLaneFirst(_materialIndex);
    _2078 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_2070 < (uint)170000), _2070, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._statusVignettePower1);
  // [sem: expr_sat]
    _2083 = saturate(exp2(log2(1.0f - TEXCOORD.y) * _2078) * (sqrt((_2052 * _2052) + (_2051 * _2051)) / max(0.0010000000474974513f, (1.0f - _2065))));
    _2086 = saturate(_50 * 10.0f) * _2083;
    _2093 = (_2086 * (_547 - _2046)) + _2046;
    _2094 = (_2086 * (_548 - _2047)) + _2047;
    _2095 = (_2086 * (_549 - _2048)) + _2048;
    _2096 = WaveReadLaneFirst(_materialIndex);
    _2104 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_2096 < (uint)170000), _2096, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._statusVignetteColor1);
    _2107 = (float)((uint)((uint)(((uint)(_2104) >> 16) & 255)));
    _2110 = (float)((uint)((uint)(((uint)(_2104) >> 8) & 255)));
    _2112 = (float)((uint)((uint)(_2104 & 255)));
    _2137 = select(((_2107 * 0.003921568859368563f) < 0.040449999272823334f), (_2107 * 0.0003035269910469651f), exp2(log2((_2107 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _2144 = _1609 && ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
    _2145 = _2137 * 0.20000000298023224f;
    _2152 = max(0.0010000000474974513f, _exposure0.x);
    _2159 = saturate(_2083) * _50;
    _2167 = ((((select(_2144, _2145, _2137) / _2152) - _2093) * _2159) + _2093);
    _2168 = ((((select(_2144, _2145, select(((_2110 * 0.003921568859368563f) < 0.040449999272823334f), (_2110 * 0.0003035269910469651f), exp2(log2((_2110 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) / _2152) - _2094) * _2159) + _2094);
    _2169 = ((((select(_2144, _2145, select(((_2112 * 0.003921568859368563f) < 0.040449999272823334f), (_2112 * 0.0003035269910469651f), exp2(log2((_2112 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) / _2152) - _2095) * _2159) + _2095);
  } else {
    _2167 = _2046;
    _2168 = _2047;
    _2169 = _2048;
  }
  [branch]
  if (!(!(_68 >= 0.0010000000474974513f))) {
    _2172 = TEXCOORD.x + -0.5f;
    _2173 = TEXCOORD.y + -0.5f;
    _2178 = WaveReadLaneFirst(_materialIndex);
    _2186 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_2178 < (uint)170000), _2178, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._statusVignetteRadius3);
    _2190 = WaveReadLaneFirst(_materialIndex);
    _2198 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_2190 < (uint)170000), _2190, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._statusVignettePower3);
  // [sem: expr_sat]
    _2203 = saturate((pow(TEXCOORD.y, _2198)) * (sqrt((_2173 * _2173) + (_2172 * _2172)) / max(0.0010000000474974513f, (1.0f - _2186))));
    _2206 = saturate(_68 * 10.0f) * _2203;
    _2213 = (_2206 * (_547 - _2167)) + _2167;
    _2214 = (_2206 * (_548 - _2168)) + _2168;
    _2215 = (_2206 * (_549 - _2169)) + _2169;
    _2216 = WaveReadLaneFirst(_materialIndex);
    _2224 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_2216 < (uint)170000), _2216, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._statusVignetteColor3);
    _2227 = (float)((uint)((uint)(((uint)(_2224) >> 16) & 255)));
    _2230 = (float)((uint)((uint)(((uint)(_2224) >> 8) & 255)));
    _2232 = (float)((uint)((uint)(_2224 & 255)));
    _2257 = select(((_2227 * 0.003921568859368563f) < 0.040449999272823334f), (_2227 * 0.0003035269910469651f), exp2(log2((_2227 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _2264 = _1609 && ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
    _2265 = _2257 * 0.20000000298023224f;
    _2272 = max(0.0010000000474974513f, _exposure0.x);
    _2279 = saturate(_2203) * _68;
    _2287 = ((((select(_2264, _2265, _2257) / _2272) - _2213) * _2279) + _2213);
    _2288 = ((((select(_2264, _2265, select(((_2230 * 0.003921568859368563f) < 0.040449999272823334f), (_2230 * 0.0003035269910469651f), exp2(log2((_2230 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) / _2272) - _2214) * _2279) + _2214);
    _2289 = ((((select(_2264, _2265, select(((_2232 * 0.003921568859368563f) < 0.040449999272823334f), (_2232 * 0.0003035269910469651f), exp2(log2((_2232 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) / _2272) - _2215) * _2279) + _2215);
  } else {
    _2287 = _2167;
    _2288 = _2168;
    _2289 = _2169;
  }
  [branch]
  if (!(!(_hideStateRatio >= 0.0010000000474974513f))) {
    _2294 = _hideStateRatio * 0.5f;
    _2295 = TEXCOORD.x + -0.5f;
    _2296 = TEXCOORD.y + -0.5f;
    _2304 = saturate(((_2294 + -0.5f) + sqrt((_2296 * _2296) + (_2295 * _2295))) * 2.0f);  // [sem: expr_sat]
    _2312 = saturate(((saturate(abs(0.5f - TEXCOORD.y) * 2.0f) - _2304) * 0.5f) + _2304);  // [sem: expr_sat]
    _2320 = (((_2312 * _2312) * 0.8999999761581421f) * saturate(_hideStateRatio * 4.0f)) * (3.0f - (_2312 * 2.0f));
    _2323 = dot(float3(_2287, _2288, _2289), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f)) * (1.0f - _2294);
    _2326 = (pow(_2320, 0.5f));
    _2333 = ((_2323 - _2287) * _2326) + _2287;
    _2334 = ((_2323 - _2288) * _2326) + _2288;
    _2335 = ((_2323 - _2289) * _2326) + _2289;
    _2339 = 0.0010000000474974513f / max(0.0010000000474974513f, _exposure0.x);
    _2350 = (lerp(_2333, _2339, _2320));  // [sem: blended]
    _2351 = (lerp(_2334, _2339, _2320));  // [sem: blended]
    _2352 = (lerp(_2335, _2339, _2320));  // [sem: blended]
  } else {
    _2350 = _2287;  // [sem: blended]
    _2351 = _2288;  // [sem: blended]
    _2352 = _2289;  // [sem: blended]
  }
  if (_followLearning > 0.0010000000474974513f) {
    _2357 = WaveReadLaneFirst(_materialIndex);
    _2365 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_2357 < (uint)170000), _2357, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._followLearningColor);
    _2368 = (float)((uint)((uint)(((uint)(_2365) >> 16) & 255)));
    _2371 = (float)((uint)((uint)(((uint)(_2365) >> 8) & 255)));
    _2373 = (float)((uint)((uint)(_2365 & 255)));
    _2403 = max(0.0010000000474974513f, _exposure0.x);
    _2404 = select(((_2368 * 0.003921568859368563f) < 0.040449999272823334f), (_2368 * 0.0003035269910469651f), exp2(log2((_2368 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _2403;
    _2405 = select(((_2371 * 0.003921568859368563f) < 0.040449999272823334f), (_2371 * 0.0003035269910469651f), exp2(log2((_2371 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _2403;
    _2406 = select(((_2373 * 0.003921568859368563f) < 0.040449999272823334f), (_2373 * 0.0003035269910469651f), exp2(log2((_2373 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _2403;
    _2407 = WaveReadLaneFirst(_materialIndex);
    _2415 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_2407 < (uint)170000), _2407, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._followLearningNoiseTex);
    _2426 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_291 < (uint)65000), _291, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_239, ((_time.x * 0.20000000298023224f) + _240)));
    _2433 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_239, _240));  // [sem: _3__36__0__0__g_depth_sample]
    _2436 = (_239 * 2.0f) + -1.0f;
    _2438 = 1.0f - (_240 * 2.0f);
    _2439 = max(1.0000000116860974e-07f, _2433.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
    _2475 = mad((_invViewProj[2].w), _2439, mad((_invViewProj[1].w), _2438, ((_invViewProj[0].w) * _2436))) + (_invViewProj[3].w);
    _2486 = uint((_bufferSizeAndInvSize.x * _239) + -0.5f);
    _2487 = uint((_bufferSizeAndInvSize.y * _240) + -0.5f);
    _2489 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_2486, _2487, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
    _2492 = __3__36__0__0__g_gbufferNormal.Load(int3(_2486, _2487, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
    _2510 = (saturate(_2492.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _2511 = (saturate(_2492.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _2512 = (saturate(_2492.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
    _2514 = rsqrt(dot(float3(_2510, _2511, _2512), float3(_2510, _2511, _2512)));  // [sem: invLength]
    _2515 = _2514 * _2510;
    _2516 = _2514 * _2511;
    _2517 = _2512 * _2514;
    _2520 = (((float)((uint)((uint)(((uint)((uint)(_2489.w)) >> 8) & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _2521 = (((float)((uint)((uint)(_2489.w & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
    _2524 = (_2520 + _2521) * 0.5f;
    _2525 = (_2520 - _2521) * 0.5f;
    _2529 = (1.0f - abs(_2524)) - abs(_2525);
    _2531 = rsqrt(dot(float3(_2524, _2525, _2529), float3(_2524, _2525, _2529)));  // [sem: invLength]
    _2532 = _2531 * _2524;
    _2533 = _2531 * _2525;
    _2534 = _2531 * _2529;
    _2536 = select((_2517 >= 0.0f), 1.0f, -1.0f);
    _2539 = -0.0f - (1.0f / (_2536 + _2517));
    _2540 = _2516 * _2539;
    _2541 = _2540 * _2515;
    _2542 = _2536 * _2515;
    _2551 = mad(_2534, _2515, mad(_2533, _2541, ((((_2542 * _2515) * _2539) + 1.0f) * _2532)));
    _2555 = mad(_2534, _2516, mad(_2533, (_2536 + (_2540 * _2516)), ((_2532 * _2536) * _2541)));
    _2559 = mad(_2534, _2517, mad(_2533, (-0.0f - _2516), (-0.0f - (_2542 * _2532))));
    _2561 = rsqrt(dot(float3(_2551, _2555, _2559), float3(_2551, _2555, _2559)));  // [sem: invLength]
    _2563 = _2561 * _2555;
    _2564 = _2561 * _2559;
    _2567 = _time.x * 0.5f;
    _2570 = (((mad((_invViewProj[2].z), _2439, mad((_invViewProj[1].z), _2438, ((_invViewProj[0].z) * _2436))) + (_invViewProj[3].z)) / _2475) - _2567) * 0.20000000298023224f;
    _2571 = (((mad((_invViewProj[2].y), _2439, mad((_invViewProj[1].y), _2438, ((_invViewProj[0].y) * _2436))) + (_invViewProj[3].y)) / _2475) - _2567) * 0.20000000298023224f;
    _2578 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_2415 < (uint)65000), _2415, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_2570, _2571));
    _2581 = (((mad((_invViewProj[2].x), _2439, mad((_invViewProj[1].x), _2438, ((_invViewProj[0].x) * _2436))) + (_invViewProj[3].x)) / _2475) - _2567) * 0.20000000298023224f;
    _2590 = (abs(_2563) * ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_2415 < (uint)65000), _2415, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_2581, _2570)))).w) - _2578.w)) + _2578.w;
    _2593 = (((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_2415 < (uint)65000), _2415, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_2581, _2571)))).w) - _2590) * abs(_2564)) + _2590;
    _2594 = _2426.z + -0.5f;
    _2599 = _239 + -0.5f;
    _2601 = _240 + -0.5f;
    _2606 = 0.375f - (_2594 * 0.25f);
    _2609 = max((abs(((_2426.x + -0.5f) * 0.10000000149011612f) + _2599) - _2606), 0.0f);
    _2610 = max((abs(((_2426.y + -0.5f) * 0.10000000149011612f) + _2601) - _2606), 0.0f);
    _2615 = saturate(sqrt((_2610 * _2610) + (_2609 * _2609)));  // [sem: expr_sat]
    _2619 = saturate(_followLearning * 2.0f);  // [sem: expr_sat]
    _2625 = saturate(((((_2433.x * 100.0f) * _2619) - _2593) * 2.0f) + -0.5f);  // [sem: expr_sat]
    _2635 = sqrt((_2601 * _2601) + (_2599 * _2599));
    _2638 = ((saturate((_2619 * 2.0f) + -1.0f) * (1.0f - _2625)) + _2625) * saturate(_2635 + 0.5f);
    _2640 = atan(_2601 / _2599);
    _2643 = (_2599 < 0.0f);
    _2644 = (_2599 == 0.0f);
    _2645 = (_2601 >= 0.0f);
    _2646 = (_2601 < 0.0f);
    _2658 = _2593 * 0.5f;
    _2671 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_2415 < (uint)65000), _2415, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((_2594 * -0.5f) - _2658) - (_time.x * 0.20000000298023224f)) + select((_2644 && _2645), 7.5f, select((_2644 && _2646), -7.5f, (select((_2643 && _2646), (_2640 + -3.1415927410125732f), select((_2643 && _2645), (_2640 + 3.1415927410125732f), _2640)) * 4.774648189544678f)))), (((((_2426.w + -0.5f) * -0.5f) - _2658) + (_2635 * 2.0f)) - (_time.x * 1.5f))));
    if (!(_1110 == _renderPassSelfPlayer)) {
      _2706 = (_1110 == _renderPassTest);
    } else {
      _2706 = true;
    }
    _2707 = !((1.0f - saturate(ceil(((_nearFarProj.x / max(1.0000000116860974e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_239, _240))).x))) + 0.5f) - (_nearFarProj.x / max(1.0000000116860974e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_customRenderPassSizeInvSize.x * _239), int(_customRenderPassSizeInvSize.y * _240), 0)))).x)))))) == 0.0f);
    _2709 = _2707 || (!_2706);
    if (_1110 == _renderPassTargetFocus) {
      if (_2707) {
        _2723 = (_1110 != _renderPassAimHighlight);
      } else {
        _2723 = false;
      }
    } else {
      if (_2707 || (_1110 != _renderPassLearning)) {
        _2723 = (_1110 != _renderPassAimHighlight);
      } else {
        _2723 = false;
      }
    }
    _2725 = saturate(_followLearning * 4.0f);  // [sem: expr_sat]
    _2732 = (_2725 * (_280 - _2350)) + _2350;
    _2733 = (_2725 * (_281 - _2351)) + _2351;
    _2734 = (_2725 * (_282 - _2352)) + _2352;
    _2735 = _2709 && _2723;
    if (_2735) {
      _2742 = ((_followLearning * 0.25f) * _2671.w) * saturate(_2635 - (_2725 * 0.20000000298023224f));
  // [sem: _3__36__0__0__g_sceneColor_sample]
      _2746 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_2742 + _239), (_2742 + _240)));
      _2756 = (pow(_2746.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _2757 = (pow(_2746.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _2758 = (pow(_2746.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _2796 = 1.0f - (_followLearning * 0.75f);
      _2806 = (((((exp2(log2(max(0.0f, (_2756 + -0.8359375f)) / (18.8515625f - (_2756 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _2732) * _2725) + _2732) * _2796);
      _2807 = (((((exp2(log2(max(0.0f, (_2757 + -0.8359375f)) / (18.8515625f - (_2757 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _2733) * _2725) + _2733) * _2796);
      _2808 = (((((exp2(log2(max(0.0f, (_2758 + -0.8359375f)) / (18.8515625f - (_2758 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _2734) * _2725) + _2734) * _2796);
      _2809 = _2638;
    } else {
      if (_2709) {
        _2806 = _2732;
        _2807 = _2733;
        _2808 = _2734;
        _2809 = select(_2723, _2638, 0.0f);
      } else {
        _2806 = _2732;
        _2807 = _2733;
        _2808 = _2734;
        _2809 = (_2638 * 0.4000000059604645f);
      }
    }
    _2810 = dot(float3(_2806, _2807, _2808), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
    _2817 = ((_2810 - _2806) * _2809) + _2806;
    _2818 = ((_2810 - _2807) * _2809) + _2807;
    _2819 = ((_2810 - _2808) * _2809) + _2808;
    _2821 = _2593 * (_2426.z * 0.30000001192092896f);
    _2827 = saturate(_2809 * 5.0f) * 0.8999999761581421f;
    _2834 = (((_2821 * _2404) - _2817) * _2827) + _2817;
    _2835 = (((_2821 * _2405) - _2818) * _2827) + _2818;
    _2836 = (((_2821 * _2406) - _2819) * _2827) + _2819;
    _2837 = WaveReadLaneFirst(_materialIndex);
    _2845 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_2837 < (uint)170000), _2837, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._followLearningSaturationTone);
    _2848 = (float)((uint)((uint)(((uint)(_2845) >> 16) & 255)));
    _2851 = (float)((uint)((uint)(((uint)(_2845) >> 8) & 255)));
    _2853 = (float)((uint)((uint)(_2845 & 255)));
    _2878 = select(((_2848 * 0.003921568859368563f) < 0.040449999272823334f), (_2848 * 0.0003035269910469651f), exp2(log2((_2848 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _2879 = select(((_2851 * 0.003921568859368563f) < 0.040449999272823334f), (_2851 * 0.0003035269910469651f), exp2(log2((_2851 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _2880 = select(((_2853 * 0.003921568859368563f) < 0.040449999272823334f), (_2853 * 0.0003035269910469651f), exp2(log2((_2853 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _2884 = (1.0f - _2878) * 0.3086000084877014f;
    _2886 = (1.0f - _2879) * 0.6093999743461609f;
    _2888 = (1.0f - _2880) * 0.0820000022649765f;
    _2893 = _2884 * _2834;
    _2906 = (_followLearning * (mad(_2836, _2888, mad(_2835, _2886, ((_2884 + _2878) * _2834))) - _2834)) + _2834;
    _2907 = (_followLearning * (mad(_2836, _2888, mad(_2835, (_2886 + _2879), _2893)) - _2835)) + _2835;
    _2908 = (_followLearning * (mad(_2836, (_2888 + _2880), mad(_2835, _2886, _2893)) - _2836)) + _2836;
    if (!_2735) {
  // [sem: expr_sat]
      _2922 = saturate(1.0f - dot(float3((_2658 + (_2561 * _2551)), (_2658 + _2563), (_2658 + _2564)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _2927 = select(_2709, ((_2922 * _2922) * 6.0f), (_2922 * 0.25f)) * _2922;
      _2931 = (_followLearning * _followLearning) * saturate(_2593 * 10.0f);
      _2942 = (((_2931 * _2404) * _2927) + _2906);
      _2943 = (((_2931 * _2405) * _2927) + _2907);
      _2944 = (((_2931 * _2406) * _2927) + _2908);
    } else {
      _2942 = _2906;
      _2943 = _2907;
      _2944 = _2908;
    }
    _2945 = _followLearning * _2615;
    _2949 = 0.0010000000474974513f / max(0.0010000000474974513f, _exposure0.x);
    _2956 = ((_2949 - _2942) * _2945) + _2942;
    _2957 = ((_2949 - _2943) * _2945) + _2943;
    _2958 = ((_2949 - _2944) * _2945) + _2944;
    _2963 = saturate(((_2671.w * _2671.w) * 20.0f) * _followLearning) * _2615;
    _2974 = (lerp(_2956, _2404, _2963));  // [sem: blended]
    _2975 = (lerp(_2957, _2405, _2963));  // [sem: blended]
    _2976 = (lerp(_2958, _2406, _2963));  // [sem: blended]
  } else {
    _2974 = _2350;  // [sem: blended]
    _2975 = _2351;  // [sem: blended]
    _2976 = _2352;  // [sem: blended]
  }
  [branch]
  if ((dot(float4(_enemyAlert1.x, _enemyAlert1.y, _enemyAlert1.z, _enemyAlert1.w), float4(1.0f, 1.0f, 1.0f, 1.0f)) > 0.0f) | (dot(float4(_enemyAlert2.x, _enemyAlert2.y, _enemyAlert2.z, _enemyAlert2.w), float4(1.0f, 1.0f, 1.0f, 1.0f)) > 0.0f)) {
    _2996 = ((_isPhotosensitiveMode_isAllolwBlood & 1) != 0);
    _3002 = max(0.0010000000474974513f, _exposure0.x);
    _3019 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_291 < (uint)65000), _291, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 2.0f) * _36), ((_time.x * 0.10000000149011612f) + (TEXCOORD.y * 2.0f))));
    _3022 = _3019.x + -0.5f;
    _3023 = _3019.y + -0.5f;
    _3033 = 0.44999998807907104f - (_3022 * 0.004999999888241291f);
    _3036 = max((abs((TEXCOORD.x + -0.5f) + (_3022 * 0.019999999552965164f)) - _3033), 0.0f);
    _3037 = max((abs((TEXCOORD.y + -0.5f) + (_3023 * 0.019999999552965164f)) - _3033), 0.0f);
    _3048 = WaveReadLaneFirst(_materialIndex);
    _3056 = WaveReadLaneFirst(BindlessParameters_PostProcessUber_CD[((int)((uint)(select(((uint)_3048 < (uint)170000), _3048, 0)) + 0u))].BindlessParameters_PostProcessUber_CD._enemyAlertTex);
    _3063 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_3056 < (uint)65000), _3056, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_3023 * 0.029999999329447746f)), (TEXCOORD.y - (_3022 * 0.029999999329447746f))));
    _3068 = (TEXCOORD.y > 0.5f);
    _3070 = (TEXCOORD.x < 0.5f);
    _3074 = (TEXCOORD.y < 0.5f);
    _3082 = (TEXCOORD.x > 0.5f);
  // [sem: expr_sat]
    _3106 = saturate(dot(float4((_3063.x * ((float)((bool)_3074))), (_3063.y * ((float)((bool)((uint)(_3082 && _3074))))), (_3063.z * ((float)((bool)_3082))), (_3063.w * ((float)((bool)((uint)(_3082 && _3068)))))), float4(_enemyAlert2.x, _enemyAlert2.y, _enemyAlert2.z, _enemyAlert2.w)) + dot(float4((_3063.x * ((float)((bool)_3068))), (_3063.y * ((float)((bool)((uint)(_3070 && _3068))))), (_3063.z * ((float)((bool)_3070))), (_3063.w * ((float)((bool)((uint)(_3070 && _3074)))))), float4(_enemyAlert1.x, _enemyAlert1.y, _enemyAlert1.z, _enemyAlert1.w))) * saturate(sqrt((_3037 * _3037) + (_3036 * _3036)) * 20.0f);
    _3108 = (_3106 * _3106) * _3106;
    _3119 = ((_3108 * ((select(_2996, 0.09989875555038452f, 0.08437622338533401f) / _3002) - _2974)) + _2974);
    _3120 = ((_3108 * ((select(_2996, 0.027320895344018936f, 0.030713455751538277f) / _3002) - _2975)) + _2975);
    _3121 = ((_3108 * ((select(_2996, 0.04817182570695877f, 0.07036010921001434f) / _3002) - _2976)) + _2976);
  } else {
    _3119 = _2974;
    _3120 = _2975;
    _3121 = _2976;
  }
  _3122 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _3135 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _3122, 0)))).x) & 127)))) + 0.5f);
  } else {
    _3135 = 1.0f;
  }
  _3138 = (_localToneMappingParams.w > 0.0f);
  if (_3138) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_3119, _3120, _3121));
    _3398 = _rndx_tonemapped_color.x;
    _3399 = _rndx_tonemapped_color.y;
    _3400 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _3406 = 1.0f - abs(_etcParams.w);
      _3410 = saturate(_etcParams.w);  // [sem: expr_sat]
      _3411 = (_3406 * _3398) + _3410;
      _3412 = (_3406 * _3399) + _3410;
      _3413 = (_3406 * _3400) + _3410;
      if (_colorGradingParams.w > 0.0f) {
        _3418 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _3435 = (((max(0.0f, (1.0f - _3411)) - _3411) * _3418) + _3411);
        _3436 = (((max(0.0f, (1.0f - _3412)) - _3412) * _3418) + _3412);
        _3437 = (((max(0.0f, (1.0f - _3413)) - _3413) * _3418) + _3413);
      } else {
        _3435 = _3411;
        _3436 = _3412;
        _3437 = _3413;
      }
      _3443 = _userImageAdjust.y + 1.0f;
      _3447 = _userImageAdjust.x + 0.5f;
      _3448 = ((_3435 + -0.5f) * _3443) + _3447;
      _3449 = ((_3436 + -0.5f) * _3443) + _3447;
      _3450 = ((_3437 + -0.5f) * _3443) + _3447;
      _3480 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _3491 = exp2(log2(saturate(mad(_colorBlind0.z, _3450, mad(_colorBlind0.y, _3449, (_colorBlind0.x * _3448))))) * _3480);
      _3492 = exp2(log2(saturate(mad(_colorBlind1.z, _3450, mad(_colorBlind1.y, _3449, (_colorBlind1.x * _3448))))) * _3480);
      _3493 = exp2(log2(saturate(mad(_colorBlind2.z, _3450, mad(_colorBlind2.y, _3449, (_colorBlind2.x * _3448))))) * _3480);
    } else {
      _3491 = _3398;
      _3492 = _3399;
      _3493 = _3400;
    }
  } else {
    _3491 = _3119;
    _3492 = _3120;
    _3493 = _3121;
  }
  if (_etcParams.y > 1.0f) {
    _3502 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _3503 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _3507 = saturate(1.0f - (dot(float2(_3502, _3503), float2(_3502, _3503)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _3512 = (_3507 * _3491);
    _3513 = (_3507 * _3492);
    _3514 = (_3507 * _3493);
  } else {
    _3512 = _3491;
    _3513 = _3492;
    _3514 = _3493;
  }
  if (_3138 && (_etcParams.z > 0.0f)) {
    _3544 = select((_3512 <= 0.0031308000907301903f), (_3512 * 12.920000076293945f), (((pow(_3512, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _3545 = select((_3513 <= 0.0031308000907301903f), (_3513 * 12.920000076293945f), (((pow(_3513, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _3546 = select((_3514 <= 0.0031308000907301903f), (_3514 * 12.920000076293945f), (((pow(_3514, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _3544 = _3512;
    _3545 = _3513;
    _3546 = _3514;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _3551 = (float)((uint)_3122);
    if (!(_3551 < _viewDir.w)) {
      if (!(_3551 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _3560 = _3544;
        _3561 = _3545;
        _3562 = _3546;
      } else {
        _3560 = 0.0f;
        _3561 = 0.0f;
        _3562 = 0.0f;
      }
    } else {
      _3560 = 0.0f;
      _3561 = 0.0f;
      _3562 = 0.0f;
    }
  } else {
    _3560 = _3544;
    _3561 = _3545;
    _3562 = _3546;
  }
  _3572 = exp2(log2(_3560 * 9.999999747378752e-05f) * 0.1593017578125f);
  _3573 = exp2(log2(_3561 * 9.999999747378752e-05f) * 0.1593017578125f);
  _3574 = exp2(log2(_3562 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_3572 * 18.6875f) + 1.0f)) * ((_3572 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_3573 * 18.6875f) + 1.0f)) * ((_3573 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_3574 * 18.6875f) + 1.0f)) * ((_3574 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _3135;
  return SV_Target;
}
