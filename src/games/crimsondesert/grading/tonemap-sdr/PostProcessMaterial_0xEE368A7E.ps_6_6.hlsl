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
  float _345;
  int _346;
  float _406;
  float _581;
  float _582;
  float _583;
  bool _615;
  float _616;
  float _617;
  float _618;
  float _784;
  float _785;
  float _786;
  float _787;
  int _788;
  float _793;
  float _794;
  float _795;
  float _796;
  int _797;
  float _802;
  float _803;
  float _804;
  float _805;
  int _806;
  float _1143;
  float _1144;
  float _1145;
  float _1146;
  float _1174;
  float _1175;
  float _1176;
  float _1237;
  float _1300;
  float _1301;
  float _1302;
  float _1303;
  float _1304;
  float _1305;
  float _1306;
  bool _1367;
  float _1384;
  float _1385;
  float _1386;
  float _1396;
  float _1592;
  float _1593;
  float _1594;
  float _1726;
  float _1727;
  float _1728;
  float _1729;
  float _1730;
  float _1865;
  float _2116;
  float _2117;
  float _2118;
  float _2166;
  float _2167;
  float _2168;
  float _2225;
  float _2430;
  float _2431;
  float _2432;
  float _2525;
  float _2526;
  float _2527;
  float _2581;
  float _2582;
  float _2583;
  float _2602;
  float _2603;
  float _2604;
  float _2634;
  float _2635;
  float _2636;
  float _2650;
  float _2651;
  float _2652;
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
  int _285;
  float _293;
  int _319;
  float _327;
  float _337;
  float _341;
  float _342;
  float _343;
  float _353;
  float _357;
  float _362;
  float _366;
  float _371;
  float _375;
  float _383;
  float _384;
  float _385;
  float _386;
  float _387;
  float _388;
  float _398;
  float _402;
  int _403;
  float _410;
  float _411;
  float _412;
  float _413;
  float _417;
  float _422;
  float _426;
  float _431;
  float _435;
  float _443;
  float _444;
  float _445;
  float _446;
  float _447;
  float _448;
  float _449;
  float _450;
  float _451;
  float _452;
  float _455;
  float _458;
  float _460;
  float _464;
  float _470;
  float _471;
  float _479;
  float _483;
  float _489;
  float _490;
  float _499;
  float _503;
  float _509;
  float _510;
  float _518;
  float _520;
  float _522;
  float _524;
  float _532;
  float _533;
  float _534;
  float _536;
  float _540;
  float _543;
  float _547;
  float _550;
  float _551;
  float _554;
  float _555;
  float _556;
  float _557;
  float _558;
  int _565;
  float _573;
  float _591;
  int _592;
  float _602;
  float _603;
  float _604;
  float _621;
  float _622;
  float _623;
  float _624;
  float _625;
  float _626;
  float _627;
  int _632;
  int _640;
  float4 _647;
  int _653;
  float _661;
  float _662;
  uint2 _668;
  int _685;
  int _686;
  float _694;
  int _695;
  float _703;
  float _706;
  float _709;
  float _710;
  float _711;
  float _712;
  float _713;
  float _714;
  float _715;
  float _716;
  float _717;
  float _718;
  float _721;
  float _724;
  float _727;
  float _730;
  float _733;
  float _736;
  float _743;
  float _744;
  float _745;
  float _752;
  float _753;
  float _754;
  float _757;
  float _760;
  float _763;
  int _768;
  float _776;
  float _777;
  float _778;
  float _779;
  float _780;
  float _781;
  float _782;
  int _790;
  int _799;
  float _807;
  float _808;
  float _809;
  float _813;
  float _814;
  float _815;
  float _830;
  float _837;
  float _838;
  float _839;
  float _850;
  bool _851;
  float _852;
  float _853;
  float _854;
  float _855;
  int _856;
  float _866;
  float _867;
  float _868;
  float _896;
  float _901;
  float _902;
  float _907;
  float _908;
  float _909;
  float _918;
  float _920;
  float _921;
  float _923;
  float _925;
  float _926;
  float _927;
  float _933;
  float _934;
  float _946;
  float _947;
  float _948;
  float _949;
  float _950;
  float4 _955;
  float4 _959;
  int _966;
  float _974;
  float _976;
  float _983;
  float _984;
  float _985;
  float _988;
  float _989;
  float4 _994;
  float4 _998;
  int _1005;
  float _1013;
  float _1015;
  float _1022;
  float _1023;
  float _1024;
  float _1027;
  float _1028;
  float4 _1033;
  float4 _1037;
  int _1044;
  float _1052;
  float _1054;
  float _1061;
  float _1062;
  float _1063;
  float _1066;
  float _1067;
  float4 _1072;
  float4 _1076;
  int _1083;
  float _1091;
  float _1093;
  float _1100;
  float _1101;
  float _1102;
  float _1105;
  float _1106;
  float4 _1111;
  float4 _1115;
  int _1122;
  float _1130;
  float _1132;
  float4 _1149;
  int _1153;
  float _1161;
  float _1163;
  int _1177;
  float _1185;
  int _1186;
  float _1194;
  int _1214;
  float _1222;
  int _1227;
  float _1235;
  int _1238;
  float _1246;
  float _1250;
  int _1275;
  int _1283;
  float4 _1290;
  float _1293;
  float _1295;
  float _1298;
  float _1311;
  float _1312;
  float _1313;
  float _1314;
  float _1323;
  float _1324;
  float _1326;
  float4 _1334;
  float _1343;
  float _1344;
  float _1345;
  float _1346;
  float _1353;
  float _1373;
  float _1376;
  float _1400;
  float _1401;
  float _1402;
  float _1417;
  float _1453;
  float _1454;
  float _1456;
  int _1465;
  int _1473;
  float4 _1480;
  float _1483;
  float _1484;
  float _1499;
  int _1502;
  int _1510;
  float4 _1517;
  float _1528;
  float _1532;
  float _1535;
  float _1538;
  float _1547;
  float _1556;
  float _1558;
  float _1560;
  float _1578;
  int _1595;
  float _1603;
  float _1610;
  float _1611;
  float _1612;
  float _1620;
  float _1621;
  int _1632;
  int _1654;
  int _1662;
  float4 _1669;
  float _1674;
  float _1675;
  float _1690;
  float _1691;
  float _1692;
  float _1698;
  float _1701;
  float _1707;
  float _1722;
  uint _1749;
  uint _1750;
  uint4 _1752;
  float4 _1755;
  float _1773;
  float _1774;
  float _1775;
  float _1777;
  float _1778;
  float _1779;
  float _1780;
  float _1783;
  float _1784;
  float _1787;
  float _1788;
  float _1792;
  float _1794;
  float _1795;
  float _1796;
  float _1797;
  float _1799;
  float _1802;
  float _1803;
  float _1804;
  float _1805;
  float _1814;
  float _1818;
  float _1822;
  float _1824;
  float _1836;
  float _1837;
  float _1840;
  float _1845;
  float _1879;
  float _1891;
  float _1892;
  float _1893;
  float _1907;
  float _1908;
  float _1909;
  float _1920;
  float4 _1927;
  float _1932;
  float _1933;
  float _1935;
  float _1940;
  float _1944;
  float _1945;
  float _1946;
  float _1954;
  float _1963;
  float _1972;
  float _1975;
  float _1982;
  float _1989;
  float _1993;
  float _1997;
  bool _2003;
  int _2007;
  float _2021;
  float _2022;
  float _2023;
  float _2051;
  float _2052;
  float _2056;
  float _2066;
  float _2067;
  float _2068;
  float _2080;
  float _2086;
  float _2088;
  float _2095;
  float _2096;
  float _2104;
  float _2109;
  float4 _2125;
  float _2130;
  float _2141;
  float _2142;
  float _2143;
  int _2153;
  float _2161;
  float _2169;
  float _2170;
  float _2177;
  int _2182;
  float _2190;
  int _2192;
  float _2200;
  float _2202;
  float _2209;
  float _2210;
  float _2211;
  uint _2212;
  bool _2228;
  float _2234;
  float _2283;
  float _2284;
  float _2285;
  float _2287;
  float _2294;
  float _2295;
  float _2296;
  float _2315;
  float _2316;
  float _2317;
  float _2318;
  float _2319;
  float _2320;
  float _2321;
  float _2322;
  float _2323;
  float _2369;
  float _2370;
  float _2371;
  float _2372;
  float _2373;
  float _2374;
  float _2375;
  float _2392;
  float _2393;
  float _2394;
  float _2395;
  float _2401;
  float _2404;
  float _2411;
  float _2412;
  float _2413;
  float _2442;
  float _2467;
  float _2468;
  float _2469;
  float _2488;
  float _2489;
  float _2490;
  float _2496;
  float _2500;
  float _2501;
  float _2502;
  float _2503;
  float _2508;
  float _2533;
  float _2537;
  float _2538;
  float _2539;
  float _2540;
  float _2570;
  float _2592;
  float _2593;
  float _2597;
  float _2641;
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
  _285 = WaveReadLaneFirst(_materialIndex);
  _293 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_285 < (uint)170000), _285, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceEffectRatio);
  if (!(!(_293 >= 0.0010000000474974513f))) {
    _319 = WaveReadLaneFirst(_materialIndex);
    _327 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_319 < (uint)170000), _319, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSpeedRatio);
  // [sem: invLength]
    _337 = rsqrt(dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_viewDir.x, _viewDir.y, _viewDir.z))) * frac((_327 * _time.x) + -0.004999999888241291f);
    _341 = (frac(_viewPosPrev.x * 0.009999999776482582f) + 2000.0f) + (_337 * _viewDir.x);
    _342 = (frac(_viewPosPrev.y * 0.009999999776482582f) + 2000.0f) + (_337 * _viewDir.y);
    _343 = (frac(_viewPosPrev.z * 0.009999999776482582f) + 2000.0f) + (_337 * _viewDir.z);
    _345 = 1.0f;
    _346 = 0;
    while(true) {
      _353 = ((_345 * _275) + _341) * 4.0f;
      _357 = frac(abs(_353));
      _362 = ((_345 * _276) + _342) * 4.0f;
      _366 = frac(abs(_362));
      _371 = ((_345 * _277) + _343) * 4.0f;
      _375 = frac(abs(_371));
      _383 = abs((select((_353 >= (-0.0f - _353)), _357, (-0.0f - _357)) * 0.25f) + -0.125f) + -0.0005000000237487257f;
      _384 = abs((select((_362 >= (-0.0f - _362)), _366, (-0.0f - _366)) * 0.25f) + -0.125f) + -0.0005000000237487257f;
      _385 = abs((select((_371 >= (-0.0f - _371)), _375, (-0.0f - _375)) * 0.25f) + -0.125f) + -0.0005000000237487257f;
      _386 = max(_383, 0.0f);
      _387 = max(_384, 0.0f);
      _388 = max(_385, 0.0f);
      _398 = min(max(_383, max(_384, _385)), 0.0f) + sqrt(((_387 * _387) + (_386 * _386)) + (_388 * _388));
      if (!(_398 < (_345 * 0.0010000000474974513f))) {
        _402 = _398 + _345;
        _403 = _346 + 1;
        if ((int)_403 < (int)50) {
          _345 = _402;
          _346 = _403;
          continue;
        } else {
          _406 = _402;
        }
      } else {
        _406 = _345;
      }
      _410 = (_406 * _275) + _341;
      _411 = (_406 * _276) + _342;
      _412 = (_406 * _277) + _343;
      _413 = _410 * 4.0f;
      _417 = frac(abs(_413));
      _422 = _411 * 4.0f;
      _426 = frac(abs(_422));
      _431 = _412 * 4.0f;
      _435 = frac(abs(_431));
      _443 = abs((select((_413 >= (-0.0f - _413)), _417, (-0.0f - _417)) * 0.25f) + -0.125f) + -0.0005000000237487257f;
      _444 = abs((select((_422 >= (-0.0f - _422)), _426, (-0.0f - _426)) * 0.25f) + -0.125f) + -0.0005000000237487257f;
      _445 = abs((select((_431 >= (-0.0f - _431)), _435, (-0.0f - _435)) * 0.25f) + -0.125f) + -0.0005000000237487257f;
      _446 = max(_443, 0.0f);
      _447 = max(_444, 0.0f);
      _448 = max(_445, 0.0f);
      _449 = _446 * _446;
      _450 = _447 * _447;
      _451 = _450 + _449;
      _452 = _448 * _448;
      _455 = max(_444, _445);
      _458 = min(max(_443, _455), 0.0f) + sqrt(_451 + _452);
      _460 = (_410 + 0.0010000000474974513f) * 4.0f;
      _464 = frac(abs(_460));
      _470 = abs((select((_460 >= (-0.0f - _460)), _464, (-0.0f - _464)) * 0.25f) + -0.125f) + -0.0005000000237487257f;
      _471 = max(_470, 0.0f);
      _479 = (_411 + 0.0010000000474974513f) * 4.0f;
      _483 = frac(abs(_479));
      _489 = abs((select((_479 >= (-0.0f - _479)), _483, (-0.0f - _483)) * 0.25f) + -0.125f) + -0.0005000000237487257f;
      _490 = max(_489, 0.0f);
      _499 = (_412 + 0.0010000000474974513f) * 4.0f;
      _503 = frac(abs(_499));
      _509 = abs((select((_499 >= (-0.0f - _499)), _503, (-0.0f - _503)) * 0.25f) + -0.125f) + -0.0005000000237487257f;
      _510 = max(_509, 0.0f);
      _518 = min(max(_470, _455), 0.0f) + (sqrt((_452 + _450) + (_471 * _471)) - _458);
      _520 = min(max(_443, max(_489, _445)), 0.0f) + (sqrt((_452 + _449) + (_490 * _490)) - _458);
      _522 = min(max(_443, max(_444, _509)), 0.0f) + (sqrt((_510 * _510) + _451) - _458);
      _524 = rsqrt(dot(float3(_518, _520, _522), float3(_518, _520, _522)));  // [sem: invLength]
      _532 = -0.0f - _sunDirection.x;
      _533 = -0.0f - _sunDirection.y;
      _534 = -0.0f - _sunDirection.z;
      _536 = rsqrt(dot(float3(_532, _533, _534), float3(_532, _533, _534)));  // [sem: invLength]
      _540 = dot(float3((_524 * _518), (_524 * _520), (_524 * _522)), float3((_536 * _532), (_536 * _533), (_536 * _534)));
      _543 = saturate((_406 * 0.222222238779068f) + -0.111111119389534f);  // [sem: expr_sat]
      _547 = (_543 * _543) * (3.0f - (_543 * 2.0f));
      _550 = 1.0f - (_540 - (_547 * _540));
      _551 = _550 * _550;
      _554 = ((_551 * _551) * 0.20000000298023224f) + 0.10000000149011612f;
      _555 = _554 * _554;
      _556 = _555 * 0.699999988079071f;
      _557 = _555 * 0.4000000059604645f;
      _558 = _555 * 0.10000000149011612f;
      _565 = WaveReadLaneFirst(_materialIndex);
      _573 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_565 < (uint)170000), _565, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceEffectRatio);
      _581 = saturate((_556 - (_556 * _547)) * _573);  // [sem: expr_sat]
      _582 = saturate((_557 - (_557 * _547)) * _573);  // [sem: expr_sat]
      _583 = saturate((_558 - (_558 * _547)) * _573);  // [sem: expr_sat]
      break;
    }
  } else {
    _581 = 0.0f;  // [sem: expr_sat]
    _582 = 0.0f;  // [sem: expr_sat]
    _583 = 0.0f;  // [sem: expr_sat]
  }
  if ((_159.x < 1.0000000116860974e-07f) || (_159.x == 1.0f)) {
    _591 = exp2(log2(abs(_276)) * 0.5f);
    _592 = WaveReadLaneFirst(_materialIndex);
    _602 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_592 < (uint)170000), _592, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSkyColor.x);
    _603 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_592 < (uint)170000), _592, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSkyColor.y);
    _604 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_592 < (uint)170000), _592, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._cubeSpaceSkyColor.z);
    _615 = false;
    _616 = (lerp(_581, _602, _591));  // [sem: blended]
    _617 = (lerp(_582, _603, _591));  // [sem: blended]
    _618 = (lerp(_583, _604, _591));  // [sem: blended]
  } else {
    _615 = true;
    _616 = _581;  // [sem: blended]
    _617 = _582;  // [sem: blended]
    _618 = _583;  // [sem: blended]
  }
  _621 = max(0.0010000000474974513f, _exposure0.x);
  _622 = _616 / _621;
  _623 = _617 / _621;
  _624 = _618 / _621;
  _625 = 4.0f / _35;
  _626 = _625 * _144;
  _627 = _625 * _145;
  _632 = WaveReadLaneFirst(_materialIndex);
  _640 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_632 < (uint)170000), _632, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
  _647 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_640 < (uint)65000), _640, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_626, ((_time.x * 0.10000000149011612f) + _627)));
  _653 = WaveReadLaneFirst(_materialIndex);
  _661 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_653 < (uint)170000), _653, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _662 = _661 * (_647.y + -0.30000001192092896f);
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_668.x, _668.y);
  _685 = (((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_668.x)))))) + 0.5f) * ((_662 * 0.0010000000474974513f) + _144)), int((float((int)(int(float((int)((int)(_668.y)))))) + 0.5f) * ((_662 * 0.019999999552965164f) + _145)), 0)))).x) & 255;
  _686 = WaveReadLaneFirst(_materialIndex);
  _694 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_686 < (uint)170000), _686, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._radius);
  _695 = WaveReadLaneFirst(_materialIndex);
  _703 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_695 < (uint)170000), _695, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _706 = saturate(1.0f - _703) * _694;
  [branch]
  if (!(!(_706 >= 0.0010000000474974513f))) {
    _709 = ddx_coarse(_275);
    _710 = ddx_coarse(_276);
    _711 = ddx_coarse(_277);
    _712 = ddy_coarse(_275);
    _713 = ddy_coarse(_276);
    _714 = ddy_coarse(_277);
    _715 = ddx_coarse(_144);
    _716 = ddx_coarse(_145);
    _717 = ddy_coarse(_144);
    _718 = ddy_coarse(_145);
    _721 = (_713 * _189) - (_714 * _188);
    _724 = (_714 * _187) - (_712 * _189);
    _727 = (_712 * _188) - (_713 * _187);
    _730 = (_711 * _188) - (_710 * _189);
    _733 = (_709 * _189) - (_711 * _187);
    _736 = (_710 * _187) - (_709 * _188);
    _743 = (_717 * _730) + (_721 * _715);
    _744 = (_717 * _733) + (_724 * _715);
    _745 = (_717 * _736) + (_727 * _715);
    _752 = (_718 * _730) + (_721 * _716);
    _753 = (_718 * _733) + (_724 * _716);
    _754 = (_718 * _736) + (_716 * _727);
    _757 = max(dot(float3(_743, _744, _745), float3(_743, _744, _745)), dot(float3(_752, _753, _754), float3(_752, _753, _754)));
    _760 = rsqrt(select((!(_757 == 0.0f)), _757, 0.10000000149011612f));  // [sem: rsqrt_val]
    _763 = _760 * _275;
    _768 = WaveReadLaneFirst(_materialIndex);
    _776 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_768 < (uint)170000), _768, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._squareSize);
    _777 = _776 * _231;
    _778 = _776 * _232;
    _779 = _776 * _233;
    _780 = floor(_777);
    _781 = floor(_778);
    _782 = floor(_779);
    _784 = 10.0f;
    _785 = 0.0f;
    _786 = 0.0f;
    _787 = 0.0f;
    _788 = -1;
    while(true) {
      _793 = _784;
      _794 = _785;
      _795 = _786;
      _796 = _787;
      _797 = -1;
      while(true) {
        _802 = _793;
        _803 = _794;
        _804 = _795;
        _805 = _796;
        _806 = -1;
        while(true) {
          _807 = float((int)(_806));
          _808 = float((int)(_797));
          _809 = float((int)(_788));
          _813 = sin(_807 + _780);
          _814 = sin(_808 + _781);
          _815 = sin(_809 + _782);
          _830 = _time.x * 0.20000000298023224f;
          _837 = sin(_830 * frac(sin(dot(float3(_813, _814, _815), float3(12.98900032043457f, 78.23300170898438f, 37.71900177001953f))) * 143758.546875f)) + _807;
          _838 = sin(_830 * frac(sin(dot(float3(_813, _814, _815), float3(39.34600067138672f, 11.135000228881836f, 83.15499877929688f))) * 143758.546875f)) + _808;
          _839 = sin(_830 * frac(sin(dot(float3(_813, _814, _815), float3(73.15599822998047f, 52.23500061035156f, 9.151000022888184f))) * 143758.546875f)) + _809;
          _850 = max(abs((_780 - _777) + _837), max(abs((_781 - _778) + _838), abs((_782 - _779) + _839)));
          _851 = (_850 < _802);
          _852 = select(_851, _850, _802);
          _853 = select(_851, _837, _803);
          _854 = select(_851, _838, _804);
          _855 = select(_851, _839, _805);
          _856 = _806 + 1;
          if (!(_856 == 2)) {
            _802 = _852;
            _803 = _853;
            _804 = _854;
            _805 = _855;
            _806 = _856;
            continue;
          }
          while(true) {
            _799 = _797 + 1;
            if (!(_799 == 2)) {
              _793 = _852;
              _794 = _853;
              _795 = _854;
              _796 = _855;
              _797 = _799;
              __loop_jump_target = 792;
              break;
            }
            while(true) {
              _790 = _788 + 1;
              if (!(_790 == 2)) {
                _784 = _852;
                _785 = _853;
                _786 = _854;
                _787 = _855;
                _788 = _790;
                __loop_jump_target = 783;
                break;
              }
              _866 = (_853 + _780) / _776;
              _867 = (_854 + _781) / _776;
              _868 = (_855 + _782) / _776;
              _896 = mad((_viewProj[2].w), _868, mad((_viewProj[1].w), _867, ((_viewProj[0].w) * _866))) + (_viewProj[3].w);
              _901 = (((mad((_viewProj[2].x), _868, mad((_viewProj[1].x), _867, ((_viewProj[0].x) * _866))) + (_viewProj[3].x)) / _896) * 0.5f) + 0.5f;
              _902 = 0.5f - (((mad((_viewProj[2].y), _868, mad((_viewProj[1].y), _867, ((_viewProj[0].y) * _866))) + (_viewProj[3].y)) / _896) * 0.5f);
              _907 = _866 - _mainPosition.x;
              _908 = _867 - _mainPosition.y;
              _909 = _868 - _mainPosition.z;
  // [sem: expr_sat]
              _918 = saturate(1.0f - ((1.0f - ((1.0f / max(9.999999747378752e-06f, _706)) * sqrt(dot(float3(_907, _908, _909), float3(_907, _908, _909))))) * 1.0152283906936646f));
              _920 = 1.0f - saturate(_918);
              _921 = _918 * 0.5f;
              _923 = (_144 - _901) / _920;
              _925 = (_145 - _902) / _920;
              _926 = sin(_921);
              _927 = cos(_921);
              _933 = mad((-0.0f - _926), _925, (_927 * _923)) + _901;
              _934 = mad(_927, _925, (_926 * _923)) + _902;
              _946 = (saturate(_159.x * 1.5f) * 0.5f) * saturate(frac(sin(dot(float2(float((int)(int((_bufferSizeAndInvSize.x + -1.0f) * saturate(_144)))), float((int)(int((_bufferSizeAndInvSize.y + -1.0f) * saturate(_145))))), float2(12.989800453186035f, 78.23300170898438f))) * 43758.546875f) + 0.5f);
              _947 = _946 * mad((_760 * _745), _277, mad((_760 * _744), _276, (_763 * _743)));
              _948 = _947 * 0.8333333730697632f;
              _949 = _946 * mad((_760 * _754), _277, mad((_760 * _753), _276, (_763 * _752)));
              _950 = _949 * 0.8333333730697632f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _955 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_948 + _144), (_950 + _145)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _959 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_933 + _948), (_934 + _950)));
              _966 = WaveReadLaneFirst(_materialIndex);
              _974 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_966 < (uint)170000), _966, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
              _976 = (float)((bool)(uint)(_955.w < _974));
              _983 = (_976 * ((_959.x * 0.4000000059604645f) - _622)) + _622;
              _984 = (_976 * ((_959.y * 0.4000000059604645f) - _623)) + _623;
              _985 = (_976 * ((_959.z * 0.4000000059604645f) - _624)) + _624;
              if (!(_955.w > 0.8999999761581421f)) {
                _988 = _947 * 0.6666666865348816f;
                _989 = _949 * 0.6666666865348816f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _994 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_988 + _144), (_989 + _145)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _998 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_933 + _988), (_934 + _989)));
                _1005 = WaveReadLaneFirst(_materialIndex);
                _1013 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1005 < (uint)170000), _1005, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
                _1015 = (float)((bool)(uint)(_994.w < _1013));
                _1022 = (_1015 * ((_998.x * 0.4000000059604645f) - _983)) + _983;
                _1023 = (_1015 * ((_998.y * 0.4000000059604645f) - _984)) + _984;
                _1024 = (_1015 * ((_998.z * 0.4000000059604645f) - _985)) + _985;
                if (!(_994.w > 0.8999999761581421f)) {
                  _1027 = _947 * 0.5f;
                  _1028 = _949 * 0.5f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1033 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1027 + _144), (_1028 + _145)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                  _1037 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_933 + _1027), (_934 + _1028)));
                  _1044 = WaveReadLaneFirst(_materialIndex);
                  _1052 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1044 < (uint)170000), _1044, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
                  _1054 = (float)((bool)(uint)(_1033.w < _1052));
                  _1061 = (_1054 * ((_1037.x * 0.4000000059604645f) - _1022)) + _1022;
                  _1062 = (_1054 * ((_1037.y * 0.4000000059604645f) - _1023)) + _1023;
                  _1063 = (_1054 * ((_1037.z * 0.4000000059604645f) - _1024)) + _1024;
                  if (!(_1033.w > 0.8999999761581421f)) {
                    _1066 = _947 * 0.3333333432674408f;
                    _1067 = _949 * 0.3333333432674408f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                    _1072 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1066 + _144), (_1067 + _145)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                    _1076 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_933 + _1066), (_934 + _1067)));
                    _1083 = WaveReadLaneFirst(_materialIndex);
                    _1091 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1083 < (uint)170000), _1083, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
                    _1093 = (float)((bool)(uint)(_1072.w < _1091));
                    _1100 = (_1093 * ((_1076.x * 0.4000000059604645f) - _1061)) + _1061;
                    _1101 = (_1093 * ((_1076.y * 0.4000000059604645f) - _1062)) + _1062;
                    _1102 = (_1093 * ((_1076.z * 0.4000000059604645f) - _1063)) + _1063;
                    if (!(_1072.w > 0.8999999761581421f)) {
                      _1105 = _947 * 0.1666666716337204f;
                      _1106 = _949 * 0.1666666716337204f;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                      _1111 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_1105 + _144), (_1106 + _145)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                      _1115 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2((_933 + _1105), (_934 + _1106)));
                      _1122 = WaveReadLaneFirst(_materialIndex);
                      _1130 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1122 < (uint)170000), _1122, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
                      _1132 = (float)((bool)(uint)(_1111.w < _1130));
                      _1143 = ((_1132 * ((_1115.z * 0.4000000059604645f) - _1102)) + _1102);
                      _1144 = ((_1132 * ((_1115.y * 0.4000000059604645f) - _1101)) + _1101);
                      _1145 = ((_1132 * ((_1115.x * 0.4000000059604645f) - _1100)) + _1100);
                      _1146 = _1111.w;
                    } else {
                      _1143 = _1102;
                      _1144 = _1101;
                      _1145 = _1100;
                      _1146 = _1072.w;
                    }
                  } else {
                    _1143 = _1063;
                    _1144 = _1062;
                    _1145 = _1061;
                    _1146 = _1033.w;
                  }
                } else {
                  _1143 = _1024;
                  _1144 = _1023;
                  _1145 = _1022;
                  _1146 = _994.w;
                }
              } else {
                _1143 = _985;
                _1144 = _984;
                _1145 = _983;
                _1146 = _955.w;
              }
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _1149 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_933, _934));
              _1153 = WaveReadLaneFirst(_materialIndex);
              _1161 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1153 < (uint)170000), _1153, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._maskThreshold);
              _1163 = (float)((bool)(uint)(_1146 < _1161));
              _1174 = ((_1163 * (_1149.x - _1145)) + _1145);
              _1175 = ((_1163 * (_1149.y - _1144)) + _1144);
              _1176 = ((_1163 * (_1149.z - _1143)) + _1143);
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
        if (__loop_jump_target == 792) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
        break;
      }
      if (__loop_jump_target == 783) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
  } else {
    _1174 = _622;
    _1175 = _623;
    _1176 = _624;
  }
  _1177 = WaveReadLaneFirst(_materialIndex);
  _1185 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1177 < (uint)170000), _1177, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _1186 = WaveReadLaneFirst(_materialIndex);
  _1194 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1186 < (uint)170000), _1186, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._tempCubeSpaceRatio);
  [branch]
  if ((_685 == _renderPassMemoryBackground) || ((!(_685 == _renderPassMemoryBackground)) && (_685 == _renderPassDetectRemoteCatch)) || (((!(_685 == _renderPassMemoryBackground)) && (!(_685 == _renderPassDetectRemoteCatch))) && (_685 == _renderPassDetectPickedRemoteCatch))) {
    _1214 = WaveReadLaneFirst(_materialIndex);
    _1222 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1214 < (uint)170000), _1214, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._memoryOpacity);
    _1237 = _1222;
  } else {
    if (_685 == _renderPassEnemyBoss) {
      _1227 = WaveReadLaneFirst(_materialIndex);
      _1235 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1227 < (uint)170000), _1227, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._enemyBossOpacity);
      _1237 = _1235;
    } else {
      _1237 = 1.0f;
    }
  }
  _1238 = WaveReadLaneFirst(_materialIndex);
  _1246 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1238 < (uint)170000), _1238, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _1250 = saturate((_1246 * 100.0f) + -99.0f) * _1237;
  if (!(!(_1250 >= 0.0010000000474974513f))) {
    [branch]
    if ((_685 == _renderPassSelfPlayer) | (_685 == _renderPassTest) | (_685 == _renderPassDetectRemoteCatch) | (_685 == _renderPassDetectPickedRemoteCatch)) {
      _1275 = WaveReadLaneFirst(_materialIndex);
      _1283 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1275 < (uint)170000), _1275, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
      _1290 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1283 < (uint)65000), _1283, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_626 - (_time.x * 0.2199999988079071f)), (_627 - (_time.x * 0.18000000715255737f))));
      _1293 = _1290.x + -0.30000001192092896f;
      _1295 = ((_1290.x + -0.4000000059604645f) * 10.471975326538086f) + -1.5707963705062866f;
      _1298 = _1293 * 0.006000000052154064f;
      _1300 = _1298;
      _1301 = _1298;
      _1302 = 0.0f;
      _1303 = 0.0f;
      _1304 = 0.0f;
      _1305 = 0.0f;
      _1306 = -1.0f;
      while(true) {
        _1311 = _144 - ((_1300 * sin(_1295)) * _1306);
        _1312 = _145 - ((_1301 * cos(_1295)) * _1306);
        _1313 = _1311 + -0.5f;
        _1314 = _1312 + -0.5f;
  // [sem: invLength]
        _1323 = rsqrt(dot(float2(_1313, _1314), float2(_1313, _1314))) * ((_1293 * 0.05999999865889549f) * sqrt((_1313 * _1313) + (_1314 * _1314)));
        _1324 = _1323 * _1313;
        _1326 = _1323 * _1314;
        _1334 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_1311, _1312));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
        _1343 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1311 - _1324), (_1312 - _1326))))).x) * 0.20000000298023224f) + _1302;
        _1344 = (_1334.y * 0.20000000298023224f) + _1303;
        _1345 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1324 + _1311), (_1326 + _1312))))).z) * 0.20000000298023224f) + _1304;
        _1346 = (_1334.w * 0.20000000298023224f) + _1305;
        _1353 = _1306 + 0.20000000298023224f;
        if (!(!(_1353 <= 1.0f))) {
          _1300 = (_1300 * 1.0099999904632568f);
          _1301 = (_1301 * 1.0099999904632568f);
          _1302 = (_1343 * 0.8999999761581421f);
          _1303 = (_1344 * 0.8999999761581421f);
          _1304 = (_1345 * 0.8999999761581421f);
          _1305 = (_1346 * 0.8999999761581421f);
          _1306 = _1353;
          continue;
        }
        if (!(_685 == _renderPassSelfPlayer)) {
          _1367 = (_685 == _renderPassTest);
        } else {
          _1367 = true;
        }
        _1373 = saturate(_1346 * 1.0800000429153442f);  // [sem: expr_sat]
        _1376 = max(0.0010000000474974513f, _exposure0.x);
        _1384 = ((((_1343 * 0.5400000214576721f) * select(_1367, 0.550000011920929f, 0.5f)) / _1376) * _1373);
        _1385 = ((((_1344 * 0.5400000214576721f) * select(_1367, 0.699999988079071f, 0.800000011920929f)) / _1376) * _1373);
        _1386 = (((_1345 * 0.5400000214576721f) / _1376) * _1373);
        break;
      }
    } else {
      _1384 = 0.0f;
      _1385 = 0.0f;
      _1386 = 0.0f;
    }
  } else {
    _1384 = 0.0f;
    _1385 = 0.0f;
    _1386 = 0.0f;
  }
  if ((_685 == _renderPassSelfPlayer) | (_685 == _renderPassTest)) {
    _1396 = _1250;  // [sem: expr_sat]
  } else {
    _1396 = saturate(saturate(_1194 * 2.0f) * _1185);  // [sem: expr_sat]
  }
  _1400 = _280.z + (_1396 * (_1176 - _280.z));
  _1401 = _280.y + (_1396 * (_1175 - _280.y));
  _1402 = _280.x + (_1396 * (_1174 - _280.x));
  if (_685 == _renderPassMemoryBackground) {
    _1417 = max(1.0000000116860974e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_customRenderPassSizeInvSize.x * _144), int(_customRenderPassSizeInvSize.y * _145), 0)))).x));
    _1453 = mad((_invViewProj[2].w), _1417, mad((_invViewProj[1].w), _193, ((_invViewProj[0].w) * _191))) + (_invViewProj[3].w);
    _1454 = (mad((_invViewProj[2].x), _1417, mad((_invViewProj[1].x), _193, ((_invViewProj[0].x) * _191))) + (_invViewProj[3].x)) / _1453;
    _1456 = (mad((_invViewProj[2].z), _1417, mad((_invViewProj[1].z), _193, ((_invViewProj[0].z) * _191))) + (_invViewProj[3].z)) / _1453;
    _1465 = WaveReadLaneFirst(_materialIndex);
    _1473 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1465 < (uint)170000), _1465, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._noiseTex);
    _1480 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1473 < (uint)65000), _1473, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.009999999776482582f) + (_1454 * 0.699999988079071f)), ((_1456 * 0.699999988079071f) - (_time.x * 0.03999999910593033f))));
    _1483 = _1480.w + -0.5f;
    _1484 = _1480.z + -0.5f;
    _1499 = _time.x * 0.019999999552965164f;
    _1502 = WaveReadLaneFirst(_materialIndex);
    _1510 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1502 < (uint)170000), _1502, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._auraTex);
    _1517 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1510 < (uint)65000), _1510, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((_1454 * 1.100000023841858f) - ((_647.y + -0.5f) * 0.10000000149011612f)) + (_1483 * 0.30000001192092896f)) - _1499), ((((_1456 * 1.100000023841858f) - ((_647.w + -0.5f) * 0.10000000149011612f)) + (_1484 * 0.30000001192092896f)) - _1499)));
    _1528 = _1483 * 2.0f;
    _1532 = (((0.5f - _647.w) + _1454) + _1528) - _mainPosition.x;
    _1535 = (((0.5f - _647.x) + ((mad((_invViewProj[2].y), _1417, mad((_invViewProj[1].y), _193, ((_invViewProj[0].y) * _191))) + (_invViewProj[3].y)) / _1453)) + (_1484 * 2.0f)) - _mainPosition.y;
    _1538 = (((0.5f - _647.z) + _1456) + _1528) - _mainPosition.z;
    _1547 = 1.0f - saturate(sqrt(((_1532 * _1532) + (_1535 * _1535)) + (_1538 * _1538)) * 0.125f);
    _1556 = ((sin((_time.x * 5.0f) + (_1547 * 60.0f)) + 1.0f) * 0.25f) + 0.5f;
    _1558 = _1547 * (_1556 * _1556);
    _1560 = (_1558 * _1558) * _647.x;
    _1578 = max(0.0010000000474974513f, _exposure0.x);
    _1592 = (((((((_1547 * 0.010000000707805157f) + ((_1517.x * _1517.x) * _1560)) * _1517.x) / _1578) - _1402) * _1250) + _1402);
    _1593 = (((((((_1547 * 0.03500000014901161f) + ((_1517.y * _1517.y) * _1560)) * _1517.y) / _1578) - _1401) * _1250) + _1401);
    _1594 = (((((((_1547 * 0.05000000074505806f) + ((_1517.z * _1517.z) * _1560)) * _1517.z) / _1578) - _1400) * _1250) + _1400);
  } else {
    _1592 = _1402;
    _1593 = _1401;
    _1594 = _1400;
  }
  _1595 = WaveReadLaneFirst(_materialIndex);
  _1603 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1595 < (uint)170000), _1595, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadBackgroundOpacity);
  if (!(!(_1603 >= 0.0010000000474974513f))) {
    _1610 = _231 - _mainPosition.x;
    _1611 = _232 - _mainPosition.y;
    _1612 = _233 - _mainPosition.z;
    _1620 = saturate(sqrt(((_1610 * _1610) + (_1611 * _1611)) + (_1612 * _1612)) * 0.03333333507180214f);  // [sem: expr_sat]
    _1621 = 1.0f - _1620;
    _1632 = (((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(_bufferSizeAndInvSize.x * _144)), (int)(uint(_bufferSizeAndInvSize.y * _145)), 0)))).x) & 127;
    if (_615 && (_1621 > 0.0f)) {
      _1654 = WaveReadLaneFirst(_materialIndex);
      _1662 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_1654 < (uint)170000), _1654, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._glitchTex);
      _1669 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_1662 < (uint)65000), _1662, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_231 * 0.10000000149011612f), (_233 * 0.10000000149011612f)));
      _1674 = (_1669.x * 2.0f) + -0.9960784316062927f;
      _1675 = (_1669.y * 2.0f) + -0.9960784316062927f;
      _1690 = ((_1674 + _231) - _viewPos.x) * 0.05999999865889549f;
      _1691 = ((_1675 + _232) - _viewPos.y) * 0.05999999865889549f;
      _1692 = ((sqrt(saturate(1.0f - dot(float2(_1674, _1675), float2(_1674, _1675)))) + _233) - _viewPos.z) * 0.05999999865889549f;
      _1698 = sqrt(((_1690 * _1690) + (_1691 * _1691)) + (_1692 * _1692));
      _1701 = _time.x * 0.30000001192092896f;
      _1707 = exp2(log2(frac(_1698 - _1701)) * 15.0f) * _1621;
      _1722 = exp2(log2(saturate(1.0f - abs((frac((_1698 + 0.5f) - _1701) * 2.0f) + -1.0f))) * 30.0f) * (_1621 * 0.014999999664723873f);
      _1726 = (_1722 * _1674);
      _1727 = (_1722 * _1675);
      _1728 = (_1707 * 0.20000000298023224f);
      _1729 = (_1707 * 0.5f);
      _1730 = _1707;
    } else {
      _1726 = 0.0f;
      _1727 = 0.0f;
      _1728 = 0.0f;
      _1729 = 0.0f;
      _1730 = 0.0f;
    }
    if (((uint)(_1632 + -53) < (uint)15) || ((!((uint)(_1632 + -53) < (uint)15)) && ((((_nearFarProj.x / _194) - (_nearFarProj.x / max(1.0000000116860974e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_customRenderPassSizeInvSize.x * _144), int(_customRenderPassSizeInvSize.y * _145), 0)))).x)))) > 0.20000000298023224f) && (_685 == _renderPassMemory)))) {
      _1749 = uint(_bufferSizeAndInvSize.x * ((_662 * 0.0005000000237487257f) + _144));
      _1750 = uint(_bufferSizeAndInvSize.y * ((_662 * 0.009999999776482582f) + _145));
      _1752 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_1749, _1750, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
      _1755 = __3__36__0__0__g_gbufferNormal.Load(int3(_1749, _1750, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
      _1773 = (saturate(_1755.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _1774 = (saturate(_1755.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _1775 = (saturate(_1755.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
      _1777 = rsqrt(dot(float3(_1773, _1774, _1775), float3(_1773, _1774, _1775)));  // [sem: invLength]
      _1778 = _1777 * _1773;
      _1779 = _1777 * _1774;
      _1780 = _1775 * _1777;
      _1783 = (((float)((uint)((uint)(((uint)((uint)(_1752.w)) >> 8) & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _1784 = (((float)((uint)((uint)(_1752.w & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
      _1787 = (_1783 + _1784) * 0.5f;
      _1788 = (_1783 - _1784) * 0.5f;
      _1792 = (1.0f - abs(_1787)) - abs(_1788);
      _1794 = rsqrt(dot(float3(_1787, _1788, _1792), float3(_1787, _1788, _1792)));  // [sem: invLength]
      _1795 = _1794 * _1787;
      _1796 = _1794 * _1788;
      _1797 = _1794 * _1792;
      _1799 = select((_1780 >= 0.0f), 1.0f, -1.0f);
      _1802 = -0.0f - (1.0f / (_1799 + _1780));
      _1803 = _1779 * _1802;
      _1804 = _1803 * _1778;
      _1805 = _1799 * _1778;
      _1814 = mad(_1797, _1778, mad(_1796, _1804, ((((_1805 * _1778) * _1802) + 1.0f) * _1795)));
      _1818 = mad(_1797, _1779, mad(_1796, (_1799 + (_1803 * _1779)), ((_1795 * _1799) * _1804)));
      _1822 = mad(_1797, _1780, mad(_1796, (-0.0f - _1779), (-0.0f - (_1805 * _1795))));
      _1824 = rsqrt(dot(float3(_1814, _1818, _1822), float3(_1814, _1818, _1822)));  // [sem: invLength]
  // [sem: expr_sat]
      _1836 = saturate(dot(float3((_1824 * _1814), (_1824 * _1818), (_1824 * _1822)), float3((-0.0f - _viewDir.x), (-0.0f - _viewDir.y), (-0.0f - _viewDir.z))));
      _1837 = 1.0f - _1836;
      _1840 = max(0.0010000000474974513f, _exposure0.x);
      _1845 = (_1837 * _1837) * _1621;
      if ((_685 == _renderPassSelfPlayer) || ((!(_685 == _renderPassSelfPlayer)) && (_685 == _renderPassTest))) {
        _1865 = ((_1837 * 0.05000000074505806f) + 0.10000000149011612f);
      } else {
        _1865 = select((_685 == _renderPassMemory), 1.100000023841858f, 0.10000000149011612f);
      }
      _1879 = (pow(_1620, 1.5f)) * ((pow(_1836, 5.0f)) * 0.800000011920929f);
      _2116 = ((((_1845 * (0.4000000059604645f / _1840)) * _1865) + _1592) + (_1879 * _1728));
      _2117 = ((((_1845 * (0.699999988079071f / _1840)) * _1865) + _1593) + (_1879 * _1729));
      _2118 = ((((_1845 * (1.0f / _1840)) * _1865) + _1594) + (_1879 * _1730));
    } else {
      _1891 = _231 - _mainPosition.x;
      _1892 = _232 - _mainPosition.y;
      _1893 = _233 - _mainPosition.z;
      _1907 = _231 - _aimHighlightPosition.x;
      _1908 = _232 - _aimHighlightPosition.y;
      _1909 = _233 - _aimHighlightPosition.z;
      _1920 = 1.0f - saturate(sqrt(((_1907 * _1907) + (_1908 * _1908)) + (_1909 * _1909)) / (_aimHighlightPosition.w * 5.0f));
  // [sem: _3__36__0__0__g_specularAO_sampleLod]
      _1927 = __3__36__0__0__g_specularAO.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_1726 + _144), (_1727 + _145)), 0.0f);
      _1932 = _1927.w * saturate(((_1920 * _1920) * _1920) + ((1.0f - saturate(sqrt(((_1891 * _1891) + (_1892 * _1892)) + (_1893 * _1893)) * 0.5f)) * 0.10000000149011612f));
      _1933 = _1932 * 5.0f;
      _1935 = (_1927.w * _1927.w) * _1621;
      _1940 = ((_1935 * _1935) * 49.959999084472656f) + 0.03999999910593033f;
      _1944 = _1932 * 1.75f;
      _1945 = _1932 * 3.25f;
      _1946 = _1932 * 120.0f;
      _1954 = ((1.0f - saturate(_1946 + -3.0f)) * saturate(_1946 + -2.0f)) * (0.3499999940395355f - _1944);
      _1963 = ((0.6499999761581421f - _1945) * saturate(_1946 + -2.5f)) * (1.0f - saturate(_1946 + -4.0f));
      _1972 = (saturate(_1946 + -3.5f) * (1.0f - _1933)) * (1.0f - saturate(_1946 + -5.0f));
      _1975 = saturate(_1946 + -8.0f);  // [sem: expr_sat]
      _1982 = 1.0f - _1935;
      _1989 = ((_1940 * _1728) + _1592) + (((((_1954 + _1944) - (_1954 * _1975)) * _1982) + (_1935 * 0.3499999940395355f)) * _1603);
      _1993 = ((_1940 * _1729) + _1593) + (((((_1963 + _1945) - (_1963 * _1975)) * _1982) + (_1935 * 0.6499999761581421f)) * _1603);
      _1997 = ((_1940 * _1730) + _1594) + (((((_1972 + _1933) - (_1972 * _1975)) * _1982) + _1935) * _1603);
      if (_1632 == 7) {
        _2003 = ((_isPhotosensitiveMode_isAllolwBlood & 1) != 0);
        _2116 = select(_2003, 0.014999999664723873f, 0.007000000216066837f);
        _2117 = 0.0f;
        _2118 = select(_2003, 0.0f, 0.014999999664723873f);
      } else {
        _2007 = _1632 + -105;
        if ((_1632 == 107) || ((_1632 == 26) || (((uint)(_1632 + -27) < (uint)2) || ((uint)_2007 < (uint)2)))) {
          _2021 = _mainPosition.x - _viewPos.x;
          _2022 = _mainPosition.y - _viewPos.y;
          _2023 = _mainPosition.z - _viewPos.z;
          _2051 = mad((_viewProjRelative[2].w), _2023, mad((_viewProjRelative[1].w), _2022, ((_viewProjRelative[0].w) * _2021))) + (_viewProjRelative[3].w);
          _2052 = (mad((_viewProjRelative[2].x), _2023, mad((_viewProjRelative[1].x), _2022, ((_viewProjRelative[0].x) * _2021))) + (_viewProjRelative[3].x)) / _2051;
          _2056 = 0.5f - (((mad((_viewProjRelative[2].y), _2023, mad((_viewProjRelative[1].y), _2022, ((_viewProjRelative[0].y) * _2021))) + (_viewProjRelative[3].y)) / _2051) * 0.5f);
          _2066 = ((_view[0].x) * 5.0f) + _2021;
          _2067 = ((_view[1].x) * 5.0f) + _2022;
          _2068 = ((_view[2].x) * 5.0f) + _2023;
          _2080 = mad((_viewProjRelative[2].w), _2068, mad((_viewProjRelative[1].w), _2067, (_2066 * (_viewProjRelative[0].w)))) + (_viewProjRelative[3].w);
          _2086 = (0.5f - (((mad((_viewProjRelative[2].y), _2068, mad((_viewProjRelative[1].y), _2067, (_2066 * (_viewProjRelative[0].y)))) + (_viewProjRelative[3].y)) / _2080) * 0.5f)) - _2056;
          _2088 = (_35 * 0.5f) * (((mad((_viewProjRelative[2].x), _2068, mad((_viewProjRelative[1].x), _2067, (_2066 * (_viewProjRelative[0].x)))) + (_viewProjRelative[3].x)) / _2080) - _2052);
          _2095 = _145 - _2056;
          _2096 = ((_144 + -0.5f) - (_2052 * 0.5f)) * _35;
          _2104 = 1.0f - saturate(sqrt((_2095 * _2095) + (_2096 * _2096)) / max(0.0010000000474974513f, sqrt((_2086 * _2086) + (_2088 * _2088))));
          _2109 = (_2104 * _2104) * (select(((uint)_2007 < (uint)3), 0.10000000149011612f, 0.014999999664723873f) * _1603);
          _2116 = ((_2109 * 0.3499999940395355f) + _1989);
          _2117 = ((_2109 * 0.6499999761581421f) + _1993);
          _2118 = (_2109 + _1997);
        } else {
          _2116 = _1989;
          _2117 = _1993;
          _2118 = _1997;
        }
      }
    }
  } else {
    _2116 = _1592;
    _2117 = _1593;
    _2118 = _1594;
  }
  if (_685 == _renderPassEnemyBoss) {
    _2125 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_144, _145));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _2130 = saturate(_2125.z * 2.0f);  // [sem: expr_sat]
    _2141 = saturate((_2125.x * 3.0f) * ((1.0f / max(0.0010000000474974513f, _exposure0.x)) - _2125.z));  // [sem: expr_sat]
    _2142 = _2141 * 0.6000000238418579f;
    _2143 = _2141 * 0.6499999761581421f;
    _2153 = WaveReadLaneFirst(_materialIndex);
    _2161 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_2153 < (uint)170000), _2153, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._enemyBossOpacity);
    _2166 = (_2161 * ((((_2125.y * 0.22499999403953552f) - _2142) * _2130) + _2142));
    _2167 = (_2161 * ((((_2125.y * 0.32499998807907104f) - _2143) * _2130) + _2143));
    _2168 = (_2161 * ((((_2125.y * 0.5f) - _2141) * _2130) + _2141));
  } else {
    _2166 = _2116;
    _2167 = _2117;
    _2168 = _2118;
  }
  _2169 = _144 + -0.5f;
  _2170 = _145 + -0.5f;
  _2177 = saturate((sqrt((_2170 * _2170) + (_2169 * _2169)) + -0.009999999776482582f) * 1.0101009607315063f);  // [sem: expr_sat]
  _2182 = WaveReadLaneFirst(_materialIndex);
  _2190 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_2182 < (uint)170000), _2182, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._vignetteIntensity);
  _2192 = WaveReadLaneFirst(_materialIndex);
  _2200 = WaveReadLaneFirst(BindlessParameters_PostProcessMemoryRead_CD[((int)((uint)(select(((uint)_2192 < (uint)170000), _2192, 0)) + 0u))].BindlessParameters_PostProcessMemoryRead_CD._memoryReadProgress);
  _2202 = 1.0f - ((((_2177 * _2177) * (3.0f - (_2177 * 2.0f))) * _2190) * _2200);
  _2209 = max(0.0f, (_2202 * (_2166 + _1384)));
  _2210 = max(0.0f, (_2202 * (_2167 + _1385)));
  _2211 = max(0.0f, (_2202 * (_2168 + _1386)));
  _2212 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _2225 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _2212, 0)))).x) & 127)))) + 0.5f);
  } else {
    _2225 = 1.0f;
  }
  _2228 = (_localToneMappingParams.w > 0.0f);
  if (_2228) {
    // RenoDX: >>> [Patch: ScreenEffectTonemapReplace] [Version: 1.12.02]
    // Description: This is the SDR permutation of screen-effect composite shader 0xEE368A7E (its bindless material parameters come from PostProcessMemoryRead_CD, a memory-read/recall style full-screen effect with fisheye warp, cube-space overlay, and aura passes). Like every member of this postprocess material family it statically inlines the game's full vanilla tonemap pipeline and can own the visible final output while its screen effect plays, so leaving the vanilla curve in place renders the whole screen with vanilla colors (flat/grey compared to the RenoDX look) for the duration of the effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer used by the sibling PostProcessMaterial replacements, while intentionally preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, wash, user image adjust, color-blind matrix).
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_2209, _2210, _2211));
    _2488 = _rndx_tonemapped_color.x;
    _2489 = _rndx_tonemapped_color.y;
    _2490 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: ScreenEffectTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _2496 = 1.0f - abs(_etcParams.w);
      _2500 = saturate(_etcParams.w);  // [sem: expr_sat]
      _2501 = (_2496 * _2488) + _2500;
      _2502 = (_2496 * _2489) + _2500;
      _2503 = (_2496 * _2490) + _2500;
      if (_colorGradingParams.w > 0.0f) {
        _2508 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _2525 = (((max(0.0f, (1.0f - _2501)) - _2501) * _2508) + _2501);
        _2526 = (((max(0.0f, (1.0f - _2502)) - _2502) * _2508) + _2502);
        _2527 = (((max(0.0f, (1.0f - _2503)) - _2503) * _2508) + _2503);
      } else {
        _2525 = _2501;
        _2526 = _2502;
        _2527 = _2503;
      }
      _2533 = _userImageAdjust.y + 1.0f;
      _2537 = _userImageAdjust.x + 0.5f;
      _2538 = ((_2525 + -0.5f) * _2533) + _2537;
      _2539 = ((_2526 + -0.5f) * _2533) + _2537;
      _2540 = ((_2527 + -0.5f) * _2533) + _2537;
      _2570 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _2581 = exp2(log2(saturate(mad(_colorBlind0.z, _2540, mad(_colorBlind0.y, _2539, (_colorBlind0.x * _2538))))) * _2570);
      _2582 = exp2(log2(saturate(mad(_colorBlind1.z, _2540, mad(_colorBlind1.y, _2539, (_colorBlind1.x * _2538))))) * _2570);
      _2583 = exp2(log2(saturate(mad(_colorBlind2.z, _2540, mad(_colorBlind2.y, _2539, (_colorBlind2.x * _2538))))) * _2570);
    } else {
      _2581 = _2488;
      _2582 = _2489;
      _2583 = _2490;
    }
  } else {
    _2581 = _2209;
    _2582 = _2210;
    _2583 = _2211;
  }
  if (_etcParams.y > 1.0f) {
    _2592 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _2593 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: ScreenEffectVignette] [Version: 1.12.02]
    // Description: When this SDR screen-effect composite variant (0xEE368A7E) is the visible final output (SDR lane, _etcParams.z == 0), scale its native _etcParams.y-driven vignette by the RenoDX Vignette setting so the vignette strength matches the main composite's behavior while the effect plays instead of snapping to full native strength. Mirrors the BasicPostProcessVignette patch in PostProcessMaterial_0x21212A93.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _2597 = saturate(1.0f - (dot(float2(_2592, _2593), float2(_2592, _2593)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: ScreenEffectVignette]
    _2602 = (_2597 * _2581);
    _2603 = (_2597 * _2582);
    _2604 = (_2597 * _2583);
  } else {
    _2602 = _2581;
    _2603 = _2582;
    _2604 = _2583;
  }
  if (_2228 && (_etcParams.z > 0.0f)) {
    _2634 = select((_2602 <= 0.0031308000907301903f), (_2602 * 12.920000076293945f), (((pow(_2602, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _2635 = select((_2603 <= 0.0031308000907301903f), (_2603 * 12.920000076293945f), (((pow(_2603, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _2636 = select((_2604 <= 0.0031308000907301903f), (_2604 * 12.920000076293945f), (((pow(_2604, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _2634 = _2602;
    _2635 = _2603;
    _2636 = _2604;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2641 = (float)((uint)_2212);
    if (!(_2641 < _viewDir.w)) {
      if (!(_2641 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _2650 = _2634;
        _2651 = _2635;
        _2652 = _2636;
      } else {
        _2650 = 0.0f;
        _2651 = 0.0f;
        _2652 = 0.0f;
      }
    } else {
      _2650 = 0.0f;
      _2651 = 0.0f;
      _2652 = 0.0f;
    }
  } else {
    _2650 = _2634;
    _2651 = _2635;
    _2652 = _2636;
  }
  // RenoDX: >>> [Patch: ScreenEffectFinalizeSDR] [Version: 1.12.02]
  // Description: On the SDR lane this screen-effect composite variant (0xEE368A7E) can be the visible final output while its effect plays (it writes the display target with _etcParams.z == 0 and no standalone SDR final pass draws after it). Without this block the RenoDX SDR finalization (white point/color temperature, Purkinje gating, and the SDR Gamma setting) would drop out for the duration of the effect and snap back afterward. Applies FinalizeSDR to the post-letterbox color just before the SV_Target writes, gated to the RenoDX basic-postprocess-final SDR path. Mirrors the BasicPostProcessFinalizeSDR patch in PostProcessMaterial_0x21212A93.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_2650, _2651, _2652), _sunDirection.y, _moonDirection.y);
    _2650 = _rndx_final_color.x;
    _2651 = _rndx_final_color.y;
    _2652 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: ScreenEffectFinalizeSDR]
  SV_Target.x = _2650;
  SV_Target.y = _2651;
  SV_Target.z = _2652;
  SV_Target.w = _2225;
  return SV_Target;
}
