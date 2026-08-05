struct PostProcessAbyssEnterIntro_CDStruct {
  float _cubeScale;
  float _cameraSpeed;
  float _cameraSinIntensity;
  float3 _screenFadeColor;
  float _screenFadeRatio;
  float3 _fogColor;
  float3 _ambientColor;
  float3 _mainTintColor;
  float3 _waveColor;
  float3 _globalColor;
  float3 _lightColor;
  float3 _centerGlowColor;
  float _centerGlowRadius;
  float _stardustIntensity;
  float _stardustDensity;
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
  float _edgeFlowSpeed;
  float _cubeMinScale;
  float _borderRatio;
  float _borderWidth;
  float _borderSmoothness;
  uint _borderColor;
  float _fadeRatio;
};

struct BindlessParameters_PostProcessAbyssEnterIntro_CD {
  PostProcessAbyssEnterIntro_CDStruct BindlessParameters_PostProcessAbyssEnterIntro_CD;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

typedef BindlessParameters_PostProcessAbyssEnterIntro_CD BindlessParameters_PostProcessAbyssEnterIntro_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssEnterIntro_CD_t> BindlessParameters_PostProcessAbyssEnterIntro_CD[] : register(b0, space100);

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
  float _24;
  float _26;
  float4 _29;
  float _35;
  float _38;
  float _41;
  int _44;
  int _52;
  int _55;
  float _63;
  int _66;
  float _74;
  int _77;
  float _85;
  float _88;
  float _89;
  float _91;
  float _93;
  float _94;
  float _96;
  float _97;
  float _99;
  float _100;
  float _101;
  float _104;
  float _105;
  float _108;
  float _111;
  float _115;
  float _116;
  float _119;
  float _124;
  float _126;
  float _127;
  float _128;
  float _129;
  float _131;
  float _132;
  float _133;
  float _140;
  float _144;
  float _145;
  float _149;
  float _154;
  float _158;
  float _160;
  float _161;
  float _162;
  float _163;
  float _166;
  float _167;
  float _168;
  float _170;
  float _173;
  int _176;
  float _184;
  float _185;
  float _186;
  float _187;
  float _188;
  float _189;
  float _190;
  float _191;
  float _192;
  float _193;
  float _199;
  float _205;
  float _211;
  float _212;
  float _213;
  float _214;
  float _215;
  int _231;
  float _232;
  float _233;
  float _234;
  float _235;
  float _236;
  float _237;
  float _238;
  float _239;
  float _240;
  float _241;
  float _242;
  float _243;
  float _244;
  float _341;
  float _342;
  float _343;
  float _344;
  float _345;
  float _346;
  float _347;
  float _379;
  float _380;
  float _381;
  float _383;
  float _384;
  float _385;
  float _446;
  float _447;
  float _448;
  float _449;
  float _450;
  float _451;
  int _452;
  float _557;
  float _832;
  float _833;
  float _834;
  float _835;
  float _836;
  float _837;
  int _838;
  float _943;
  float _1044;
  float _1045;
  float _1046;
  float _1047;
  float _1048;
  float _1049;
  int _1050;
  float _1052;
  float _1191;
  float _1192;
  float _1193;
  float _1194;
  float _1195;
  float _1196;
  int _1197;
  float _1364;
  float _1365;
  float _1366;
  float _1367;
  float _1563;
  float _1564;
  float _1565;
  float _2294;
  float _2499;
  float _2500;
  float _2501;
  float _2594;
  float _2595;
  float _2596;
  float _2650;
  float _2651;
  float _2652;
  float _2671;
  float _2672;
  float _2673;
  float _2703;
  float _2704;
  float _2705;
  float _2719;
  float _2720;
  float _2721;
  float _248;
  float _252;
  float _256;
  float _259;
  float _267;
  float _275;
  float _283;
  float _284;
  float _286;
  float _288;
  float _290;
  float _304;
  float _309;
  float _313;
  float _318;
  float _320;
  float _323;
  float _326;
  float _329;
  float _330;
  float _332;
  float _334;
  float _336;
  float _338;
  float _353;
  float _359;
  float _365;
  float _367;
  float _369;
  float _371;
  float _372;
  float _373;
  float _374;
  int _375;
  int _388;
  float _396;
  int _399;
  float _407;
  int _410;
  float _418;
  int _421;
  float _429;
  float _430;
  float _431;
  float _432;
  float _453;
  float _454;
  float _455;
  float _461;
  float _467;
  float _473;
  float _475;
  float _477;
  float _479;
  float _483;
  float _489;
  float _490;
  float _493;
  float _495;
  float _499;
  float _525;
  float _531;
  float _537;
  int _547;
  bool _550;
  float _560;
  float _561;
  float _564;
  float _566;
  float _568;
  float _570;
  float _571;
  float _572;
  float _574;
  float _576;
  float _579;
  float _580;
  float _581;
  float _583;
  float _586;
  float _587;
  float _588;
  float _589;
  float _592;
  float _596;
  float _600;
  float _602;
  float _604;
  float _606;
  float _608;
  float _610;
  float _612;
  float _614;
  float _619;
  float _631;
  float _643;
  float _655;
  float _656;
  float _657;
  float _658;
  float _660;
  float _661;
  float _663;
  float _665;
  float _667;
  float _668;
  float _669;
  float _670;
  float _672;
  float _675;
  float _677;
  float _680;
  float _684;
  float _688;
  float _690;
  float _692;
  int _695;
  float _703;
  float _707;
  float _711;
  float _713;
  int _721;
  float _729;
  float _733;
  float _737;
  float _739;
  float _740;
  float _741;
  float _743;
  float _744;
  float _745;
  float _746;
  float _752;
  float _753;
  float _754;
  float _755;
  float _756;
  float _758;
  int _761;
  float _769;
  float _774;
  float _776;
  float _778;
  float _780;
  float _782;
  float _783;
  float _784;
  float _785;
  float _786;
  float _787;
  float _788;
  float _794;
  float _800;
  float _806;
  float _823;
  float _830;
  float _839;
  float _840;
  float _841;
  float _847;
  float _853;
  float _859;
  float _861;
  float _863;
  float _865;
  float _869;
  float _875;
  float _876;
  float _879;
  float _881;
  float _885;
  float _911;
  float _917;
  float _923;
  int _933;
  bool _936;
  float _946;
  float _949;
  float _951;
  float _953;
  float _955;
  float _956;
  float _957;
  float _959;
  float _961;
  float _962;
  float _963;
  float _966;
  float _970;
  float _974;
  float _977;
  float _981;
  float _985;
  float _987;
  float _989;
  float _991;
  float _999;
  float _1004;
  float _1008;
  float _1019;
  float _1025;
  float _1031;
  int _1041;
  int _1055;
  float _1063;
  float _1067;
  float _1071;
  float _1072;
  float _1077;
  float _1080;
  int _1083;
  float _1091;
  float _1095;
  float _1099;
  float _1101;
  int _1104;
  float _1112;
  float _1116;
  float _1120;
  float _1135;
  int _1138;
  float _1146;
  float _1150;
  float _1154;
  float _1155;
  float _1159;
  float _1166;
  float _1172;
  float _1178;
  int _1188;
  float _1199;
  float _1200;
  int _1370;
  float _1378;
  float _1382;
  float _1386;
  float _1390;
  float _1402;
  float _1414;
  float _1426;
  int _1429;
  float _1437;
  float _1441;
  float _1445;
  int _1448;
  float _1456;
  float _1463;
  float _1465;
  float _1466;
  float _1467;
  float _1468;
  float _1473;
  float _1478;
  float _1483;
  float _1484;
  float _1485;
  float _1486;
  float _1487;
  float _1489;
  float _1491;
  float _1494;
  float _1496;
  float _1497;
  float _1502;
  float _1503;
  float _1516;
  float _1517;
  float _1520;
  float _1522;
  float _1523;
  float _1525;
  float _1526;
  float _1527;
  int _1568;
  float _1576;
  float _1577;
  int _1580;
  float _1588;
  int _1591;
  float _1599;
  float _1605;
  float _1608;
  float _1609;
  float _1610;
  float _1614;
  float _1626;
  float _1629;
  float _1631;
  float _1633;
  float _1634;
  float _1635;
  float _1636;
  float _1637;
  float _1638;
  float _1639;
  float _1640;
  float _1649;
  float _1650;
  float _1651;
  float _1660;
  float _1661;
  float _1662;
  float _1663;
  float _1667;
  float _1700;
  int _1703;
  float _1711;
  float _1713;
  float _1717;
  float _1721;
  float _1725;
  float _1733;
  float _1734;
  float _1741;
  float _1743;
  float _1744;
  float _1745;
  float _1753;
  float _1757;
  float _1761;
  float _1769;
  float _1770;
  float _1777;
  float _1779;
  float _1780;
  float _1781;
  float _1789;
  float _1793;
  float _1797;
  float _1805;
  float _1806;
  float _1807;
  float _1808;
  float _1810;
  float _1815;
  float _1819;
  float _1822;
  float _1836;
  float _1841;
  float _1848;
  float _1850;
  float _1860;
  float _1861;
  float _1863;
  float _1865;
  float _1869;
  float _1872;
  float _1880;
  float _1881;
  float _1883;
  bool _1884;
  bool _1885;
  bool _1886;
  bool _1887;
  float _1889;
  float _1891;
  bool _1892;
  bool _1893;
  float _1896;
  int _1899;
  float _1907;
  int _1910;
  float _1918;
  float _1967;
  int _1970;
  float _1978;
  int _1981;
  float _1989;
  int _1992;
  float _2000;
  int _2003;
  float _2011;
  float _2013;
  float _2018;
  float _2022;
  float _2026;
  float _2028;
  float _2039;
  int _2042;
  float _2050;
  float _2054;
  float _2065;
  float _2075;
  float _2095;
  float _2121;
  int _2124;
  float _2132;
  int _2135;
  float _2143;
  float _2145;
  float _2149;
  float _2153;
  int _2156;
  int _2164;
  float _2167;
  float _2170;
  float _2172;
  float _2175;
  int _2178;
  float _2186;
  float _2193;
  float _2206;
  float _2219;
  float _2232;
  int _2235;
  float _2243;
  float _2244;
  float _2256;
  float _2268;
  float _2280;
  uint _2281;
  bool _2297;
  float _2303;
  float _2322;
  float _2338;
  float _2354;
  float _2355;
  float _2359;
  float _2362;
  float _2365;
  float _2372;
  float _2379;
  float _2386;
  float _2387;
  float _2388;
  float _2389;
  float _2390;
  float _2391;
  float _2392;
  float _2408;
  float _2424;
  float _2440;
  float _2441;
  float _2442;
  float _2443;
  float _2444;
  float _2461;
  float _2462;
  float _2463;
  float _2464;
  float _2467;
  float _2470;
  float _2474;
  float _2478;
  float _2482;
  float _2502;
  float _2514;
  float _2526;
  float _2538;
  float _2545;
  float _2552;
  float _2559;
  float _2565;
  float _2566;
  float _2568;
  float _2570;
  float _2572;
  float _2577;
  float _2598;
  float _2600;
  float _2603;
  float _2606;
  float _2609;
  float _2615;
  float _2657;
  float _2660;
  float _2666;
  float _2708;
  float _2725;
  float _2729;
  float _2733;
  int __loop_jump_target = -1;
  _2 = ((_global_0[0]) == 0);
  _24 = _srcTargetSizeAndInv.x * TEXCOORD.x;
  _26 = _srcTargetSizeAndInv.y * TEXCOORD.y;
  _29 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _35 = (pow(_29.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _38 = (pow(_29.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _41 = (pow(_29.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _44 = WaveReadLaneFirst(_materialIndex);
  _52 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_44 < (uint)170000), _44, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._screenWarpTex);
  _55 = WaveReadLaneFirst(_materialIndex);
  _63 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_55 < (uint)170000), _55, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._cameraSpeed);
  _66 = WaveReadLaneFirst(_materialIndex);
  _74 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_66 < (uint)170000), _66, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._cameraSinIntensity);
  _77 = WaveReadLaneFirst(_materialIndex);
  _85 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_77 < (uint)170000), _77, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._cameraFov);
  _88 = _time.x * _63;
  _89 = _88 + -1.0f;
  _91 = sin(_time.x * 0.1f);
  _93 = (_91 + 3.0f) + _88;
  _94 = _88 * 0.1308997f;
  _96 = sin(_94 + 1.7f);
  _97 = _89 * 0.1308997f;
  _99 = sin(_97 + 1.7f);
  _100 = _99 * _74;
  _101 = _100 * 2.0f;
  _104 = (cos(_97) * _74) * _100;
  _105 = _93 * 0.1308997f;
  _108 = sin(_105 + 1.7f) * _74;
  _111 = _108 - sin(_time.x * 0.001f);
  _115 = ((_108 * _74) * cos(_105)) + -1.0f;
  _116 = 3.1415927f / _85;
  _119 = (_74 * 2.0f) * (_96 - _99);
  _124 = (((_74 * _74) * _96) * cos(_94)) - _104;
  _126 = rsqrt(dot(float3(_119, _124, 1.0f), float3(_119, _124, 1.0f)));  // [sem: invLength]
  _127 = _126 * _119;
  _128 = _126 * _124;
  _129 = -0.0f - _127;
  _131 = rsqrt(dot(float3(_126, 0.0f, _129), float3(_126, 0.0f, _129)));  // [sem: invLength]
  _132 = _131 * _126;
  _133 = _131 * _129;
  _140 = ((_24 - (_srcTargetSizeAndInv.x * 0.5f)) / _srcTargetSizeAndInv.y) * _116;
  _144 = ((_26 - (_srcTargetSizeAndInv.y * 0.5f)) / _srcTargetSizeAndInv.y) * _116;
  _145 = _144 * _128;
  _149 = ((_140 * _132) + _127) + (_145 * _133);
  _154 = (_144 * ((_132 * _126) - (_133 * _127))) + _128;
  _158 = ((_140 * _133) + _126) - (_145 * _132);
  _160 = rsqrt(dot(float3(_149, _154, _158), float3(_149, _154, _158)));  // [sem: invLength]
  _161 = _149 * _160;
  _162 = _154 * _160;
  _163 = _158 * _160;
  _166 = sin(-0.0f - _100) * 0.4f;
  _167 = cos(_166);
  _168 = sin(_166);
  _170 = mad(_168, _162, (_161 * _167));
  _173 = mad(_167, _162, (-0.0f - (_168 * _161)));
  _176 = WaveReadLaneFirst(_materialIndex);
  _184 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_176 < (uint)170000), _176, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._stardustDensity);
  _185 = _100 * 2.6666667f;
  _186 = _104 * 1.3333334f;
  _187 = _89 * 1.3333334f;
  _188 = floor(_185);
  _189 = floor(_186);
  _190 = floor(_187);
  _191 = 1.0f / _170;
  _192 = 1.0f / _173;
  _193 = 1.0f / _163;
  _199 = (float)((int)((int)((int)(uint)((int)(_170 > 0.0f))) - (int)((int)(uint)((int)(_170 < 0.0f)))));
  _205 = (float)((int)((int)((int)(uint)((int)(_173 > 0.0f))) - (int)((int)(uint)((int)(_173 < 0.0f)))));
  _211 = (float)((int)((int)((int)(uint)((int)(_163 > 0.0f))) - (int)((int)(uint)((int)(_163 < 0.0f)))));
  _212 = _184 * 30.0f;
  _213 = _199 * 0.5f;
  _214 = _205 * 0.5f;
  _215 = _211 * 0.5f;
  if (_212 > 0.0f) {
    _231 = 0;
    _232 = 0.0f;
    _233 = 0.0f;
    _234 = 0.0f;
    _235 = 0.0f;
    _236 = 0.0f;
    _237 = 0.0f;
    _238 = 0.0f;
    _239 = (_193 * (((0.5f - _187) + _215) + _190));
    _240 = (_192 * (((0.5f - _186) + _214) + _189));
    _241 = (_191 * (((0.5f - _185) + _213) + _188));
    _242 = _190;
    _243 = _189;
    _244 = _188;
    while(true) {
      _341 = _234;
      _342 = _235;
      _343 = _236;
      _344 = _237;
      _345 = _238;
      _346 = _233;
      _347 = _232;
      _248 = frac(sin(dot(float3(_244, _243, _242), float3(127.1f, 311.7f, 74.7f))) * 43758.547f);
      _252 = frac(sin(dot(float3(_244, _243, _242), float3(269.5f, 183.3f, 246.1f))) * 43758.547f);
      _256 = frac(sin(dot(float3(_244, _243, _242), float3(113.5f, 271.9f, 124.6f))) * 43758.547f);
      _259 = _time.x * _248;
      _267 = min(max(((cos(_259 + _248) * 0.1f) + _248), 0.015f), 0.985f) + (_244 - _185);
      _275 = min(max(((cos(_259 + _252) * 0.1f) + _252), 0.015f), 0.985f) + (_243 - _186);
      _283 = min(max(((cos(_259 + _256) * 0.1f) + _256), 0.015f), 0.985f) + (_242 - _187);
      _284 = dot(float3(_267, _275, _283), float3(_170, _173, _163));
      _286 = _267 - (_284 * _170);
      _288 = _275 - (_284 * _173);
      _290 = _283 - (_284 * _163);
      bool __branch_chain_230;
      if (!((_284 > 0.0f) && ((_284 * 0.75f) < 50.0f))) {
        _341 = _234;
        _342 = _235;
        _343 = _236;
        _344 = _237;
        _345 = _238;
        _346 = _233;
        _347 = _232;
        __branch_chain_230 = true;
      } else {
        _304 = saturate((sqrt(((_286 * _286) + (_288 * _288)) + (_290 * _290)) + -0.0075f) * 133.33334f);  // [sem: expr_sat]
        _309 = 1.0f - ((_304 * _304) * (3.0f - (_304 * 2.0f)));
        _313 = saturate((_284 - _212) / (-0.0f - _212));  // [sem: expr_sat]
        _318 = ((_313 * _313) * (3.0f - (_313 * 2.0f))) * _309;
        _320 = _309 * (_318 / _284);
        _323 = _320 * ((_238 * 0.4f) + 0.6f);
        _326 = _320 * ((_237 * 0.4f) + 0.6f);
        _329 = _320 * ((_236 * 0.4f) + 0.6f);
        _330 = 1.0f - _232;
        _332 = (_323 * _330) + _235;
        _334 = (_326 * _330) + _234;
        _336 = (_329 * _330) + _233;
        _338 = (_318 * _330) + _232;
        if (!(_338 > 0.99f)) {
          _341 = _334;
          _342 = _332;
          _343 = _329;
          _344 = _326;
          _345 = _323;
          _346 = _336;
          _347 = _338;
          __branch_chain_230 = true;
        } else {
          _379 = _332;
          _380 = _334;
          _381 = _336;
          __branch_chain_230 = false;
        }
      }
      if (__branch_chain_230) {
        _353 = (select((_240 < _241), 0.0f, 1.0f) * _199) * select((_239 < _241), 0.0f, 1.0f);
        _359 = (select((_239 < _240), 0.0f, 1.0f) * _205) * select((_241 < _240), 0.0f, 1.0f);
        _365 = (select((_240 < _239), 0.0f, 1.0f) * _211) * select((_241 < _239), 0.0f, 1.0f);
        _367 = (_353 * _191) + _241;
        _369 = (_359 * _192) + _240;
        _371 = (_365 * _193) + _239;
        _372 = _353 + _244;
        _373 = _359 + _243;
        _374 = _365 + _242;
        _375 = (int)(_231) + (int)(1);
        if (((float)((int)(_375))) < _212) {
          _231 = _375;
          _232 = _347;
          _233 = _346;
          _234 = _341;
          _235 = _342;
          _236 = _343;
          _237 = _344;
          _238 = _345;
          _239 = _371;
          _240 = _369;
          _241 = _367;
          _242 = _374;
          _243 = _373;
          _244 = _372;
          continue;
        } else {
          _379 = _342;
          _380 = _341;
          _381 = _346;
        }
      }
      _383 = _379;
      _384 = _380;
      _385 = _381;
      break;
    }
  } else {
    _383 = 0.0f;
    _384 = 0.0f;
    _385 = 0.0f;
  }
  _388 = WaveReadLaneFirst(_materialIndex);
  _396 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_388 < (uint)170000), _388, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._stardustIntensity);
  _399 = WaveReadLaneFirst(_materialIndex);
  _407 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_399 < (uint)170000), _399, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._cubeScale);
  _410 = WaveReadLaneFirst(_materialIndex);
  _418 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_410 < (uint)170000), _410, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._cubeDistance);
  _421 = WaveReadLaneFirst(_materialIndex);
  _429 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_421 < (uint)170000), _421, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._cubeMinScale);
  _430 = floor(_101);
  _431 = floor(_104);
  _432 = floor(_89);
  _446 = _430;
  _447 = _431;
  _448 = _432;
  _449 = ((((0.5f - _101) + _213) + _430) * _191);
  _450 = ((((0.5f - _104) + _214) + _431) * _192);
  _451 = ((((1.5f - _88) + _215) + _432) * _193);
  _452 = 0;
  while(true) {
    _453 = _446 * 0.35f;
    _454 = _447 * 0.35f;
    _455 = _448 * 0.35f;
    _461 = (_446 + -0.5f) + frac(sin(dot(float3(_453, _454, _455), float3(127.1f, 311.7f, 74.7f))) * 43758.547f);
    _467 = (_447 + -0.5f) + frac(sin(dot(float3(_453, _454, _455), float3(269.5f, 183.3f, 246.1f))) * 43758.547f);
    _473 = (_448 + -0.5f) + frac(sin(dot(float3(_453, _454, _455), float3(113.5f, 271.9f, 124.6f))) * 43758.547f);
    _475 = frac(_461 * 0.1031f);
    _477 = frac(_467 * 0.1031f);
    _479 = frac(_473 * 0.1031f);
    _483 = dot(float3(_475, _477, _479), float3((_477 + 19.19f), (_479 + 19.19f), (_475 + 19.19f)));
    _489 = frac(((_477 + _475) + (_483 * 2.0f)) * (_483 + _479));
    _490 = _473 * 0.1308997f;
    _493 = sin(_490 + 1.7f) * _74;
    _495 = _461 - (_493 * 2.0f);
    _499 = _467 - ((cos(_490) * _74) * _493);
    if (!(abs(select((_499 < 0.0f), 0.5f, 0.0f) + _499) > 0.35f) || ((abs(select((_499 < 0.0f), 0.5f, 0.0f) + _499) > 0.35f) && (!(sqrt((_499 * _499) + (_495 * _495)) > (_418 - ((_489 * 6.0f) * exp2(log2(saturate(_451 * 0.015625f)) * 2.2f))))))) {
      _525 = (select((_450 < _449), 0.0f, 1.0f) * _199) * select((_451 < _449), 0.0f, 1.0f);
      _531 = (select((_449 < _450), 0.0f, 1.0f) * _205) * select((_451 < _450), 0.0f, 1.0f);
      _537 = (select((_449 < _451), 0.0f, 1.0f) * _211) * select((_450 < _451), 0.0f, 1.0f);
      _547 = (int)(_452) + (int)(1);
      if ((int)_547 < (int)64) {
        _1191 = (_525 + _446);
        _1192 = (_531 + _447);
        _1193 = (_537 + _448);
        _1194 = ((_525 * _191) + _449);
        _1195 = ((_531 * _192) + _450);
        _1196 = ((_537 * _193) + _451);
        _1197 = _547;
        while(true) {
          _446 = _1191;
          _447 = _1192;
          _448 = _1193;
          _449 = _1194;
          _450 = _1195;
          _451 = _1196;
          _452 = _1197;
          __loop_jump_target = 445;
          break;
          break;
        }
        if (__loop_jump_target == 445) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      } else {
        _1364 = 0.0f;
        _1365 = 0.0f;
        _1366 = 0.0f;
        _1367 = 50.0f;
      }
    } else {
      _550 = (_489 < 0.35f);
      if (!_550) {
        _557 = ((_489 + _448) + _time.x);
      } else {
        _557 = 0.0f;
      }
      _560 = select(_550, 0.0f, ((_557 * 2.0f) + _447));
      _561 = _429 * 0.25f;
      _564 = min(max((_489 * 0.4f), _561), _407);
      _566 = (_101 + -0.5f) - _461;
      _568 = (_104 + -0.5f) - _467;
      _570 = (_88 + -1.5f) - _473;
      _571 = cos(_557);
      _572 = sin(_557);
      _574 = mad(_572, _568, (_571 * _570));
      _576 = mad(_572, _173, (_571 * _163));
      _579 = mad(_571, _173, (-0.0f - (_163 * _572)));
      _580 = cos(_560);
      _581 = sin(_560);
      _583 = mad(_581, _576, (_580 * _170));
      _586 = mad(_580, _576, (-0.0f - (_170 * _581)));
      _587 = 1.0f / _583;
      _588 = 1.0f / _579;
      _589 = 1.0f / _586;
      _592 = mad(_581, _574, (_580 * _566)) * _587;
      _596 = mad(_571, _568, (-0.0f - (_570 * _572))) * _588;
      _600 = mad(_580, _574, (-0.0f - (_566 * _581))) * _589;
      _602 = abs(_587) * _564;
      _604 = abs(_588) * _564;
      _606 = abs(_589) * _564;
      _608 = (-0.0f - _592) - _602;
      _610 = (-0.0f - _596) - _604;
      _612 = (-0.0f - _600) - _606;
      _614 = max(max(_608, _610), _612);
      _619 = min(min((_602 - _592), (_604 - _596)), (_606 - _600));
      _631 = (select((_608 < _610), 0.0f, 1.0f) * ((float)((int)((int)((int)(uint)((int)(_583 < 0.0f))) - (int)((int)(uint)((int)(_583 > 0.0f))))))) * select((_608 < _612), 0.0f, 1.0f);
      _643 = (select((_610 < _608), 0.0f, 1.0f) * ((float)((int)((int)((int)(uint)((int)(_579 < 0.0f))) - (int)((int)(uint)((int)(_579 > 0.0f))))))) * select((_610 < _612), 0.0f, 1.0f);
      _655 = (select((_612 < _608), 0.0f, 1.0f) * ((float)((int)((int)((int)(uint)((int)(_586 < 0.0f))) - (int)((int)(uint)((int)(_586 > 0.0f))))))) * select((_612 < _610), 0.0f, 1.0f);
      _656 = -0.0f - _557;
      _657 = cos(_656);
      _658 = sin(_656);
      _660 = mad(_658, _643, (_655 * _657));
      _661 = -0.0f - _658;
      _663 = mad(_657, _643, (_655 * _661));
      _665 = mad(_658, _663, (_660 * _657));
      _667 = mad(_657, _663, (_660 * _661));
      _668 = -0.0f - _560;
      _669 = cos(_668);
      _670 = sin(_668);
      _672 = mad(_670, _665, (_669 * _631));
      _675 = mad(_669, _665, (-0.0f - (_631 * _670)));
      _677 = mad(_670, _675, (_672 * _669));
      _680 = mad(_669, _675, (-0.0f - (_670 * _672)));
      _684 = select(((_614 > _619) || (_619 < 0.0f)), 0.0f, _614);
      if (_684 > 0.0f) {
        _688 = (_684 * _170) + _101;
        _690 = (_684 * _173) + _104;
        _692 = (_684 * _163) + _89;
        _695 = WaveReadLaneFirst(_materialIndex);
        _703 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_695 < (uint)170000), _695, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._lightColor.x);
        _707 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_695 < (uint)170000), _695, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._lightColor.y);
        _711 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_695 < (uint)170000), _695, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._lightColor.z);
        _713 = rsqrt(dot(float3(_703, _707, _711), float3(_703, _707, _711)));  // [sem: invLength]
        _721 = WaveReadLaneFirst(_materialIndex);
        _729 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_721 < (uint)170000), _721, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._ambientColor.x);
        _733 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_721 < (uint)170000), _721, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._ambientColor.y);
        _737 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_721 < (uint)170000), _721, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._ambientColor.z);
        _739 = (_111 * 2.0f) - _688;
        _740 = _115 - _690;
        _741 = _93 - _692;
        _743 = rsqrt(dot(float3(_739, _740, _741), float3(_739, _740, _741)));  // [sem: invLength]
        _744 = _743 * _739;
        _745 = _743 * _740;
        _746 = _743 * _741;
        _752 = sqrt(((_739 * _739) + (_740 * _740)) + (_741 * _741));
        _753 = _752 * _752;
        _754 = -0.0f - _744;
        _755 = -0.0f - _745;
        _756 = -0.0f - _746;
        _758 = dot(float3(_754, _755, _756), float3(_677, _667, _680)) * 2.0f;
        _761 = WaveReadLaneFirst(_materialIndex);
        _769 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_761 < (uint)170000), _761, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._edgeFlowSpeed);
        _774 = ((_time.x * 8.0f) + _692) * 0.025f;
        _776 = frac(abs(_774));
        _778 = _688 - (_170 * 0.01f);
        _780 = _690 - (_173 * 0.01f);
        _782 = _692 - (_163 * 0.01f);
        _783 = floor(_778);
        _784 = floor(_780);
        _785 = floor(_782);
        _786 = 1.0f / _744;
        _787 = 1.0f / _745;
        _788 = 1.0f / _746;
        _794 = (float)((int)((int)((int)(uint)((int)(_744 > 0.0f))) - (int)((int)(uint)((int)(_744 < 0.0f)))));
        _800 = (float)((int)((int)((int)(uint)((int)(_745 > 0.0f))) - (int)((int)(uint)((int)(_745 < 0.0f)))));
        _806 = (float)((int)((int)((int)(uint)((int)(_746 > 0.0f))) - (int)((int)(uint)((int)(_746 < 0.0f)))));
        _823 = (_684 * 0.1f) + 1.0f;
        _830 = select(((select((_774 >= (-0.0f - _774)), _776, (-0.0f - _776)) * 40.0f) > 4.0f), 0.0f, 1.0f);
        _832 = _783;
        _833 = _784;
        _834 = _785;
        _835 = (_786 * (((0.5f - _778) + (_794 * 0.5f)) + _783));
        _836 = (_787 * (((0.5f - _780) + (_800 * 0.5f)) + _784));
        _837 = (_788 * (((0.5f - _782) + (_806 * 0.5f)) + _785));
        _838 = 0;
        while(true) {
          _839 = _832 * 0.35f;
          _840 = _833 * 0.35f;
          _841 = _834 * 0.35f;
          _847 = (_832 + -0.5f) + frac(sin(dot(float3(_839, _840, _841), float3(127.1f, 311.7f, 74.7f))) * 43758.547f);
          _853 = (_833 + -0.5f) + frac(sin(dot(float3(_839, _840, _841), float3(269.5f, 183.3f, 246.1f))) * 43758.547f);
          _859 = (_834 + -0.5f) + frac(sin(dot(float3(_839, _840, _841), float3(113.5f, 271.9f, 124.6f))) * 43758.547f);
          _861 = frac(_847 * 0.1031f);
          _863 = frac(_853 * 0.1031f);
          _865 = frac(_859 * 0.1031f);
          _869 = dot(float3(_861, _863, _865), float3((_863 + 19.19f), (_865 + 19.19f), (_861 + 19.19f)));
          _875 = frac(((_863 + _861) + (_869 * 2.0f)) * (_869 + _865));
          _876 = _859 * 0.1308997f;
          _879 = sin(_876 + 1.7f) * _74;
          _881 = _847 - (_879 * 2.0f);
          _885 = _853 - ((cos(_876) * _74) * _879);
          if (!(abs(select((_885 < 0.0f), 0.5f, 0.0f) + _885) > 0.35f) || ((abs(select((_885 < 0.0f), 0.5f, 0.0f) + _885) > 0.35f) && (!(sqrt((_885 * _885) + (_881 * _881)) > (_418 - ((_875 * 6.0f) * exp2(log2(saturate(_837 * 0.015625f)) * 2.2f))))))) {
            _911 = (select((_836 < _835), 0.0f, 1.0f) * _794) * select((_837 < _835), 0.0f, 1.0f);
            _917 = (select((_835 < _836), 0.0f, 1.0f) * _800) * select((_837 < _836), 0.0f, 1.0f);
            _923 = (select((_835 < _837), 0.0f, 1.0f) * _806) * select((_836 < _837), 0.0f, 1.0f);
            _933 = (int)(_838) + (int)(1);
            if ((int)_933 < (int)64) {
              _1044 = (_911 + _832);
              _1045 = (_917 + _833);
              _1046 = (_923 + _834);
              _1047 = ((_911 * _786) + _835);
              _1048 = ((_917 * _787) + _836);
              _1049 = ((_923 * _788) + _837);
              _1050 = _933;
              while(true) {
                _832 = _1044;
                _833 = _1045;
                _834 = _1046;
                _835 = _1047;
                _836 = _1048;
                _837 = _1049;
                _838 = _1050;
                __loop_jump_target = 831;
                break;
                break;
              }
              if (__loop_jump_target == 831) {
                __loop_jump_target = -1;
                continue;
              }
              if (__loop_jump_target != -1) {
                break;
              }
            } else {
              _1052 = 1.0f;
            }
          } else {
            _936 = (_875 < 0.35f);
            if (!_936) {
              _943 = ((_875 + _834) + _time.x);
            } else {
              _943 = 0.0f;
            }
            _946 = select(_936, 0.0f, ((_943 * 2.0f) + _833));
            _949 = min(max((_875 * 0.4f), _561), _407);
            _951 = (_778 + -0.5f) - _847;
            _953 = (_780 + -0.5f) - _853;
            _955 = (_782 + -0.5f) - _859;
            _956 = cos(_943);
            _957 = sin(_943);
            _959 = mad(_957, _953, (_956 * _955));
            _961 = mad(_957, _745, (_956 * _746));
            _962 = cos(_946);
            _963 = sin(_946);
            _966 = 1.0f / mad(_963, _961, (_962 * _744));
            _970 = 1.0f / mad(_956, _745, (-0.0f - (_746 * _957)));
            _974 = 1.0f / mad(_962, _961, (-0.0f - (_744 * _963)));
            _977 = mad(_963, _959, (_962 * _951)) * _966;
            _981 = mad(_956, _953, (-0.0f - (_955 * _957))) * _970;
            _985 = mad(_962, _959, (-0.0f - (_951 * _963))) * _974;
            _987 = abs(_966) * _949;
            _989 = abs(_970) * _949;
            _991 = abs(_974) * _949;
            _999 = max(max(((-0.0f - _977) - _987), ((-0.0f - _981) - _989)), ((-0.0f - _985) - _991));
            _1004 = min(min((_987 - _977), (_989 - _981)), (_991 - _985));
            _1008 = select(((_999 > _1004) || (_1004 < 0.0f)), 0.0f, _999);
            if (_1008 > 0.0f) {
              _1052 = select((_1008 < _752), 0.0f, 1.0f);
            } else {
              _1019 = (select((_836 < _835), 0.0f, 1.0f) * _794) * select((_837 < _835), 0.0f, 1.0f);
              _1025 = (select((_835 < _836), 0.0f, 1.0f) * _800) * select((_837 < _836), 0.0f, 1.0f);
              _1031 = (select((_835 < _837), 0.0f, 1.0f) * _806) * select((_836 < _837), 0.0f, 1.0f);
              _1041 = (int)(_838) + (int)(1);
              if ((int)_1041 < (int)64) {
                _1044 = (_1019 + _832);
                _1045 = (_1025 + _833);
                _1046 = (_1031 + _834);
                _1047 = ((_1019 * _786) + _835);
                _1048 = ((_1025 * _787) + _836);
                _1049 = ((_1031 * _788) + _837);
                _1050 = _1041;
                while(true) {
                  _832 = _1044;
                  _833 = _1045;
                  _834 = _1046;
                  _835 = _1047;
                  _836 = _1048;
                  _837 = _1049;
                  _838 = _1050;
                  __loop_jump_target = 831;
                  break;
                  break;
                }
                if (__loop_jump_target == 831) {
                  __loop_jump_target = -1;
                  continue;
                }
                if (__loop_jump_target != -1) {
                  break;
                }
              } else {
                _1052 = 1.0f;
              }
            }
          }
          _1055 = WaveReadLaneFirst(_materialIndex);
          _1063 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1055 < (uint)170000), _1055, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._globalColor.x);
          _1067 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1055 < (uint)170000), _1055, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._globalColor.y);
          _1071 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1055 < (uint)170000), _1055, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._globalColor.z);
          _1072 = dot(float3(_744, _745, _746), float3(_677, _667, _680));
          _1077 = (1.0f / ((_753 * 0.05f) + 1.0f)) * max(_1072, 0.05f);
          _1080 = 1.0f / ((_753 * 0.1f) + 1.0f);
          _1083 = WaveReadLaneFirst(_materialIndex);
          _1091 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1083 < (uint)170000), _1083, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._mainTintColor.x);
          _1095 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1083 < (uint)170000), _1083, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._mainTintColor.y);
          _1099 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1083 < (uint)170000), _1083, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._mainTintColor.z);
          _1101 = max(_1072, 0.01f) * _1080;
          _1104 = WaveReadLaneFirst(_materialIndex);
          _1112 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1104 < (uint)170000), _1104, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._mainTintColor.x);
          _1116 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1104 < (uint)170000), _1104, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._mainTintColor.y);
          _1120 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1104 < (uint)170000), _1104, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._mainTintColor.z);
          _1135 = exp2(log2(max(dot(float3((_754 - (_758 * _677)), (_755 - (_758 * _667)), (_756 - (_758 * _680))), float3((-0.0f - _170), (-0.0f - _173), (-0.0f - _163))), 0.0f)) * 100.0f) * _1080;
          _1138 = WaveReadLaneFirst(_materialIndex);
          _1146 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1138 < (uint)170000), _1138, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._waveColor.x);
          _1150 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1138 < (uint)170000), _1138, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._waveColor.y);
          _1154 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1138 < (uint)170000), _1138, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._waveColor.z);
          _1155 = _1101 * 2.0f;
          _1159 = exp2(log2(_1135 * 0.3185468f) * 0.8333333f);
          if (!_2) {
            _1044 = _832;
            _1045 = _833;
            _1046 = _834;
            _1047 = _835;
            _1048 = _836;
            _1049 = _837;
            _1050 = _838;
            while(true) {
              _832 = _1044;
              _833 = _1045;
              _834 = _1046;
              _835 = _1047;
              _836 = _1048;
              _837 = _1049;
              _838 = _1050;
              __loop_jump_target = 831;
              break;
              break;
            }
            if (__loop_jump_target == 831) {
              __loop_jump_target = -1;
              continue;
            }
            if (__loop_jump_target != -1) {
              break;
            }
          }
          _1199 = max(dot(float3((_713 * _703), (_713 * _707), (_713 * _711)), float3(_677, _667, _680)), 0.05f) * 0.01f;
          _1200 = max(0.0f, _667);
          _1364 = (((((select((_729 < 0.04045f), (_729 * 0.07739938f), exp2(log2((_729 + 0.055f) * 0.94786733f) * 2.4f)) * _1200) + _1199) + (((select((_1091 < 0.04045f), (_1091 * 0.07739938f), exp2(log2((_1091 + 0.055f) * 0.94786733f) * 2.4f)) * _1101) + (select((_1063 < 0.04045f), (_1063 * 0.07739938f), exp2(log2((_1063 + 0.055f) * 0.94786733f) * 2.4f)) * _1077)) * _1052)) + (select((_1112 < 0.04045f), (_1112 * 0.07739938f), exp2(log2((_1112 + 0.055f) * 0.94786733f) * 2.4f)) * _1135)) + ((((select((_1146 < 0.04045f), (_1146 * 0.07739938f), exp2(log2((_1146 + 0.055f) * 0.94786733f) * 2.4f)) * _1155) + _1159) * _830) / _823));
          _1365 = (((((select((_733 < 0.04045f), (_733 * 0.07739938f), exp2(log2((_733 + 0.055f) * 0.94786733f) * 2.4f)) * _1200) + _1199) + (((select((_1095 < 0.04045f), (_1095 * 0.07739938f), exp2(log2((_1095 + 0.055f) * 0.94786733f) * 2.4f)) * _1101) + (select((_1067 < 0.04045f), (_1067 * 0.07739938f), exp2(log2((_1067 + 0.055f) * 0.94786733f) * 2.4f)) * _1077)) * _1052)) + (select((_1116 < 0.04045f), (_1116 * 0.07739938f), exp2(log2((_1116 + 0.055f) * 0.94786733f) * 2.4f)) * _1135)) + ((((select((_1150 < 0.04045f), (_1150 * 0.07739938f), exp2(log2((_1150 + 0.055f) * 0.94786733f) * 2.4f)) * _1155) + _1159) * _830) / _823));
          _1366 = (((((select((_737 < 0.04045f), (_737 * 0.07739938f), exp2(log2((_737 + 0.055f) * 0.94786733f) * 2.4f)) * _1200) + _1199) + (((select((_1099 < 0.04045f), (_1099 * 0.07739938f), exp2(log2((_1099 + 0.055f) * 0.94786733f) * 2.4f)) * _1101) + (select((_1071 < 0.04045f), (_1071 * 0.07739938f), exp2(log2((_1071 + 0.055f) * 0.94786733f) * 2.4f)) * _1077)) * _1052)) + (select((_1120 < 0.04045f), (_1120 * 0.07739938f), exp2(log2((_1120 + 0.055f) * 0.94786733f) * 2.4f)) * _1135)) + ((((select((_1154 < 0.04045f), (_1154 * 0.07739938f), exp2(log2((_1154 + 0.055f) * 0.94786733f) * 2.4f)) * _1155) + _1159) * _830) / _823));
          _1367 = _684;
          break;
        }
      } else {
        _1166 = (select((_450 < _449), 0.0f, 1.0f) * _199) * select((_451 < _449), 0.0f, 1.0f);
        _1172 = (select((_449 < _450), 0.0f, 1.0f) * _205) * select((_451 < _450), 0.0f, 1.0f);
        _1178 = (select((_449 < _451), 0.0f, 1.0f) * _211) * select((_450 < _451), 0.0f, 1.0f);
        _1188 = (int)(_452) + (int)(1);
        if ((int)_1188 < (int)64) {
          _1191 = (_1166 + _446);
          _1192 = (_1172 + _447);
          _1193 = (_1178 + _448);
          _1194 = ((_1166 * _191) + _449);
          _1195 = ((_1172 * _192) + _450);
          _1196 = ((_1178 * _193) + _451);
          _1197 = _1188;
          while(true) {
            _446 = _1191;
            _447 = _1192;
            _448 = _1193;
            _449 = _1194;
            _450 = _1195;
            _451 = _1196;
            _452 = _1197;
            __loop_jump_target = 445;
            break;
            break;
          }
          if (__loop_jump_target == 445) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
        } else {
          _1364 = 0.0f;
          _1365 = 0.0f;
          _1366 = 0.0f;
          _1367 = 50.0f;
        }
      }
    }
    _1370 = WaveReadLaneFirst(_materialIndex);
    _1378 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1370 < (uint)170000), _1370, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._fogColor.x);
    _1382 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1370 < (uint)170000), _1370, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._fogColor.y);
    _1386 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1370 < (uint)170000), _1370, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._fogColor.z);
    _1390 = exp2(log2(_1367 * 0.02f) * 6.0f);
    _1402 = (((select((_1378 < 0.04045f), (_1378 * 0.07739938f), exp2(log2((_1378 + 0.055f) * 0.94786733f) * 2.4f)) - _1364) * _1390) + _1364) * 1.2f;
    _1414 = (((select((_1382 < 0.04045f), (_1382 * 0.07739938f), exp2(log2((_1382 + 0.055f) * 0.94786733f) * 2.4f)) - _1365) * _1390) + _1365) * 1.2f;
    _1426 = (((select((_1386 < 0.04045f), (_1386 * 0.07739938f), exp2(log2((_1386 + 0.055f) * 0.94786733f) * 2.4f)) - _1366) * _1390) + _1366) * 1.2f;
    _1429 = WaveReadLaneFirst(_materialIndex);
    _1437 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1429 < (uint)170000), _1429, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._centerGlowColor.x);
    _1441 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1429 < (uint)170000), _1429, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._centerGlowColor.y);
    _1445 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1429 < (uint)170000), _1429, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._centerGlowColor.z);
    _1448 = WaveReadLaneFirst(_materialIndex);
    _1456 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1448 < (uint)170000), _1448, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._centerGlowRadius);
    _1463 = ((sin(_time.x * 5.0f) * 0.050000012f) + 0.95f) * _1456;
    _1465 = (_100 - _111) * 2.0f;
    _1466 = _104 - _115;
    _1467 = -4.0f - _91;
    _1468 = dot(float3(_1465, _1466, _1467), float3(_170, _173, _163));
    _1473 = (_1468 * _1468) - (dot(float3(_1465, _1466, _1467), float3(_1465, _1466, _1467)) - (_1463 * _1463));
    if (!(_1473 < 0.0f)) {
      _1478 = (-0.0f - _1468) - sqrt(_1473);
      if ((_1478 > 0.0f) && (_1478 < _1367)) {
        _1483 = 50.0f / _1463;
        _1484 = _1465 / _1463;
        _1485 = _1466 / _1463;
        _1486 = _1467 / _1463;
        _1487 = dot(float3(_170, _173, _163), float3(_1484, _1485, _1486));
        _1489 = dot(float3(_1484, _1485, _1486), float3(_1484, _1485, _1486)) + -1.0f;
        _1491 = (_1487 * _1487) - _1489;
        if (!(_1491 < 0.0f)) {
          _1494 = sqrt(_1491);
          _1496 = (-0.0f - _1487) - _1494;
          _1497 = _1494 - _1487;
          if (!((_1497 < 0.0f) || (_1496 > _1483))) {
            _1502 = max(_1496, 0.0f);
            _1503 = min(_1497, _1483);
            _1516 = ((((-0.0f - _1489) - (_1487 * _1503)) - ((_1503 * _1503) * 0.33333334f)) * _1503) + (((((_1502 * 0.33333334f) + _1487) * _1502) + _1489) * _1502);
            _1517 = _1516 * 0.75f;
            if (_1517 > 0.0f) {
              _1520 = _1517 * _1517;
              _1522 = (_1520 * _1520) * _1517;
              _1523 = _1522 * _1522;
              _1525 = (_1523 * _1523) * 5.0f;
              _1526 = _1517 * _1516;
              _1527 = _1526 * 0.22500001f;
              _1563 = (((_1526 * 0.075f) + _1402) + (select((_1437 < 0.04045f), (_1437 * 0.07739938f), exp2(log2((_1437 + 0.055f) * 0.94786733f) * 2.4f)) * _1525));
              _1564 = ((_1527 + _1414) + (select((_1441 < 0.04045f), (_1441 * 0.07739938f), exp2(log2((_1441 + 0.055f) * 0.94786733f) * 2.4f)) * _1525));
              _1565 = ((_1527 + _1426) + (select((_1445 < 0.04045f), (_1445 * 0.07739938f), exp2(log2((_1445 + 0.055f) * 0.94786733f) * 2.4f)) * _1525));
            } else {
              _1563 = _1402;
              _1564 = _1414;
              _1565 = _1426;
            }
          } else {
            _1563 = _1402;
            _1564 = _1414;
            _1565 = _1426;
          }
        } else {
          _1563 = _1402;
          _1564 = _1414;
          _1565 = _1426;
        }
      } else {
        _1563 = _1402;
        _1564 = _1414;
        _1565 = _1426;
      }
    } else {
      _1563 = _1402;
      _1564 = _1414;
      _1565 = _1426;
    }
    _1568 = WaveReadLaneFirst(_materialIndex);
    _1576 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1568 < (uint)170000), _1568, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._tunnelTotal);
    _1577 = _396 * _184;
    _1580 = WaveReadLaneFirst(_materialIndex);
    _1588 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1580 < (uint)170000), _1580, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._particleEmissionWidth);
    _1591 = WaveReadLaneFirst(_materialIndex);
    _1599 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1591 < (uint)170000), _1591, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._particleIntensity);
    _1605 = (_24 - (_srcTargetSizeAndInv.x * 0.5f)) / _srcTargetSizeAndInv.y;
    _1608 = (_26 - (_srcTargetSizeAndInv.y * 0.5f)) / _srcTargetSizeAndInv.y;
    _1609 = _1605 * 1.5f;
    _1610 = _1608 * 1.5f;
    _1614 = sqrt((_1610 * _1610) + (_1609 * _1609));
    _1626 = frac((sin((_1608 * 0.15f) + (_1605 * 25.5f)) * 10000.0f) * (abs(sin((_1608 * 19.5f) + _1609)) + 0.1f));
    _1629 = _time.x * 0.5f;
    _1631 = _1629 + (_1605 * 22.5f);
    _1633 = _1629 + (_1608 * 22.5f);
    _1634 = floor(_1631);
    _1635 = floor(_1633);
    _1636 = frac(_1631);
    _1637 = frac(_1633);
    _1638 = _1634 * 17.0f;
    _1639 = _1635 * 0.1f;
    _1640 = _1635 * 13.0f;
    _1649 = frac((sin(_1639 + _1638) * 10000.0f) * (abs(sin(_1640 + _1634)) + 0.1f));
    _1650 = _1634 + 1.0f;
    _1651 = _1650 * 17.0f;
    _1660 = frac((sin(_1651 + _1639) * 10000.0f) * (abs(sin(_1640 + _1650)) + 0.1f));
    _1661 = _1635 + 1.0f;
    _1662 = _1661 * 0.1f;
    _1663 = _1661 * 13.0f;
    _1667 = (_1636 * _1636) * (3.0f - (_1636 * 2.0f));
    // [sem: blended]
    _1700 = (lerp(_1649, _1660, _1667)) + (((_1637 * _1637) * (3.0f - (_1637 * 2.0f))) * (((frac((sin(_1662 + _1638) * 10000.0f) * (abs(sin(_1663 + _1634)) + 0.1f)) - _1649) * (1.0f - _1667)) + ((frac((sin(_1662 + _1651) * 10000.0f) * (abs(sin(_1663 + _1650)) + 0.1f)) - _1660) * _1667)));
    _1703 = WaveReadLaneFirst(_materialIndex);
    _1711 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1703 < (uint)170000), _1703, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._anamorphicWidth);
    _1713 = (_1711 * 0.9f) + 0.11f;
    _1717 = saturate((_1614 - _1713) / (-0.0f - _1713));  // [sem: expr_sat]
    _1721 = saturate((cos(_1609) * 0.4f) + -1.0f);  // [sem: expr_sat]
    _1725 = (_1721 * _1721) * (3.0f - (_1721 * 2.0f));
    _1733 = saturate(((abs(_1725 + _1610) + -0.04f) + abs(_1610 - _1725)) * -25.0f);  // [sem: expr_sat]
    _1734 = _1733 * _1717;
    _1741 = ((_1734 * _1734) * (3.0f - (_1717 * 2.0f))) * (3.0f - (_1733 * 2.0f));
    _1743 = (_1711 * 0.5f) + 0.12f;
    _1744 = _1609 + -0.08f;
    _1745 = _1610 + 0.005f;
    _1753 = saturate((sqrt((_1745 * _1745) + (_1744 * _1744)) - _1743) / (-0.0f - _1743));  // [sem: expr_sat]
    _1757 = saturate((cos(_1744) * 0.4f) + -1.0f);  // [sem: expr_sat]
    _1761 = (_1757 * _1757) * (3.0f - (_1757 * 2.0f));
    _1769 = saturate(((abs(_1761 + _1745) + -0.018f) + abs(_1745 - _1761)) * -55.555557f);  // [sem: expr_sat]
    _1770 = _1769 * _1753;
    _1777 = ((_1770 * _1770) * (3.0f - (_1753 * 2.0f))) * (3.0f - (_1769 * 2.0f));
    _1779 = (_1711 * 0.7f) + 0.13f;
    _1780 = _1609 + 0.09f;
    _1781 = _1610 + -0.005f;
    _1789 = saturate((sqrt((_1781 * _1781) + (_1780 * _1780)) - _1779) / (-0.0f - _1779));  // [sem: expr_sat]
    _1793 = saturate((cos(_1780) * 0.4f) + -1.0f);  // [sem: expr_sat]
    _1797 = (_1793 * _1793) * (3.0f - (_1793 * 2.0f));
    _1805 = saturate(((abs(_1797 + _1781) + -0.0143f) + abs(_1781 - _1797)) * -69.93007f);  // [sem: expr_sat]
    _1806 = _1805 * _1789;
    _1807 = _1605 * 2.25f;
    _1808 = _1608 * 2.25f;
    _1810 = (_1700 * 0.08f) + 0.15f;
    _1815 = saturate((abs(_1808) - _1810) / (-0.0f - _1810));  // [sem: expr_sat]
    _1819 = sqrt((_1808 * _1808) + (_1807 * _1807));
    _1822 = saturate((_1819 + -0.8f) * -0.7692308f);  // [sem: expr_sat]
    _1836 = max(0.9f, frac(frac((sin(_time.x * 8.55f) * 10000.0f) * (abs(sin(_time.x * 7.0f)) + 0.1f)))) * 0.08f;
    _1841 = saturate(((_1819 + -0.1f) - _1836) / (-0.120000005f - _1836));  // [sem: expr_sat]
    _1848 = saturate(((abs(_1608 * 1.6875f) * abs(_1807)) + -0.07f) * -5.882353f);  // [sem: expr_sat]
    _1850 = (_1822 * _1815) * _1848;
    _1860 = ((_1850 * _1850) * ((3.0f - (_1822 * 2.0f)) * (15.0f - (_1815 * 10.0f)))) * (3.0f - (_1848 * 2.0f));
    _1861 = _1700 * -0.015f;
    _1863 = _1861 + (_1605 * 2.85f);
    _1865 = _1861 + (_1608 * 2.85f);
    _1869 = sqrt((_1863 * _1863) + (_1865 * _1865));
    _1872 = saturate((_1869 + -1.0f) * -1.4285715f);  // [sem: expr_sat]
    _1880 = saturate(((((_1872 * _1872) * _1869) * (3.0f - (_1872 * 2.0f))) + -0.1f) * 2.5f);  // [sem: expr_sat]
    _1881 = abs(_1609);
    _1883 = atan(_1610 / _1881);
    _1884 = (_1881 < 0.0f);
    _1885 = (_1881 == 0.0f);
    _1886 = (_1610 >= 0.0f);
    _1887 = (_1610 < 0.0f);
    _1889 = abs(-0.0f - _1609);
    _1891 = atan(_1610 / _1889);
    _1892 = (_1889 < 0.0f);
    _1893 = (_1889 == 0.0f);
    _1896 = saturate(-0.0f - (_1614 + -1.0f));  // [sem: expr_sat]
    _1899 = WaveReadLaneFirst(_materialIndex);
    _1907 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1899 < (uint)170000), _1899, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._blubIntensity);
    _1910 = WaveReadLaneFirst(_materialIndex);
    _1918 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1910 < (uint)170000), _1910, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._middleHaloIntensity);
    _1967 = (((lerp(_1626, 1.0f, 0.97f)) * 0.9f) * _1918) * exp2(log2(((((_1896 * _1896) * (3.0f - (_1896 * 2.0f))) - ((((_1880 * _1880) * 0.4f) * (3.0f - (_1880 * 2.0f))) * _1907)) * 0.5f) * (abs(sin(select((_1886 && _1885), 1.0995574f, select((_1887 && _1885), -1.0995574f, (select((_1887 && _1884), (_1883 + -3.1415927f), select((_1886 && _1884), (_1883 + 3.1415927f), _1883)) * 0.7f))))) + abs(sin(select((_1886 && _1893), 1.2566371f, select((_1887 && _1893), -1.2566371f, (select((_1887 && _1892), (_1891 + -3.1415927f), select((_1886 && _1892), (_1891 + 3.1415927f), _1891)) * 0.8f))))))) * 2.5f);
    _1970 = WaveReadLaneFirst(_materialIndex);
    _1978 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1970 < (uint)170000), _1970, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._largeHalo);
    _1981 = WaveReadLaneFirst(_materialIndex);
    _1989 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1981 < (uint)170000), _1981, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._largeHaloIntensity);
    _1992 = WaveReadLaneFirst(_materialIndex);
    _2000 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1992 < (uint)170000), _1992, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._centerpoint);
    _2003 = WaveReadLaneFirst(_materialIndex);
    _2011 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_2003 < (uint)170000), _2003, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._streakGlowIntensity);
    _2013 = (_1860 * _1860) * _2011;
    _2018 = ((_1841 * _1841) * (3.0f - (_1841 * 2.0f))) * _2000;
    _2022 = exp2(log2(_2018 * 1.2f) * 5.0f);
    _2026 = exp2(log2(_2018 * 1.1f) * 24.0f);
    _2028 = _2022 + (_2018 * 0.2f);
    _2039 = (((_1806 * _1806) * (3.0f - (_1789 * 2.0f))) * (3.0f - (_1805 * 2.0f))) + _1777;
    _2042 = WaveReadLaneFirst(_materialIndex);
    _2050 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_2042 < (uint)170000), _2042, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._anamorphicIntensity);
    _2054 = 1.0f / max(0.001f, _exposure0.x);
    _2065 = ((_2013 * 0.049657132f) + (_1741 * 0.0100228265f)) + _2026;
    _2075 = max(0.0f, ((((saturate(_1563) * _1576) + ((_383 * 5.0f) * _1577)) + (exp2(log2(((((((_1967 * 0.16689524f) + 0.033104755f) * _1967) + (_1777 * 0.033104755f)) + (_2028 * 0.07323897f)) + _2065) * 2.0f)) * _2050)) * _2054));
    _2095 = max(0.0f, ((((saturate(_1564) * _1576) + ((_384 * 7.0f) * _1577)) + (exp2(log2((((((0.07323897f - (_1967 * 0.023238968f)) * _1967) + (_2039 * 0.033104755f)) + (_2028 * 0.21404113f)) + _2065) * 2.0f)) * _2050)) * _2054));
    _2121 = max(0.0f, ((((saturate(_1565) * _1576) + ((_385 * 9.0f) * _1577)) + (exp2(log2((((((((_2039 * 0.07323897f) + (_1741 * 0.033104755f)) + ((0.13286835f - (_1967 * 0.08286835f)) * _1967)) + (_2018 * 0.06370936f)) + (_2013 * 0.10985845f)) + (_2022 * 0.6038274f)) + _2026) * 2.0f)) * _2050)) * _2054));
    _2124 = WaveReadLaneFirst(_materialIndex);
    _2132 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_2124 < (uint)170000), _2124, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._borderSmoothness);
    _2135 = WaveReadLaneFirst(_materialIndex);
    _2143 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_2135 < (uint)170000), _2135, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._borderWidth);
    _2145 = (1.0f - _2143) * 0.5f;
    _2149 = max((abs(TEXCOORD.x + -0.5f) - _2145), 0.0f);
    _2153 = max((abs(TEXCOORD.y + -0.5f) - _2145), 0.0f);
    _2156 = WaveReadLaneFirst(_materialIndex);
    _2164 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_2156 < (uint)170000), _2156, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._borderColor);
    _2167 = (float)((uint)((uint)(((uint)((uint)(_2164)) >> 16) & 255)));
    _2170 = (float)((uint)((uint)(((uint)((uint)(_2164)) >> 8) & 255)));
    _2172 = (float)((uint)((uint)(_2164 & 255)));
    _2175 = max(0.001f, _exposure0.x);
    _2178 = WaveReadLaneFirst(_materialIndex);
    _2186 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_2178 < (uint)170000), _2178, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._borderRatio);
    _2193 = saturate(sqrt((_2153 * _2153) + (_2149 * _2149)) / _2132) * _2186;
    _2206 = (((select(((_2167 * 0.003921569f) < 0.04045f), (_2167 * 0.000303527f), exp2(log2((_2167 * 0.003717127f) + 0.052132703f) * 2.4f)) / _2175) - _2075) * _2193) + _2075;
    _2219 = (((select(((_2170 * 0.003921569f) < 0.04045f), (_2170 * 0.000303527f), exp2(log2((_2170 * 0.003717127f) + 0.052132703f) * 2.4f)) / _2175) - _2095) * _2193) + _2095;
    _2232 = (((select(((_2172 * 0.003921569f) < 0.04045f), (_2172 * 0.000303527f), exp2(log2((_2172 * 0.003717127f) + 0.052132703f) * 2.4f)) / _2175) - _2121) * _2193) + _2121;
    _2235 = WaveReadLaneFirst(_materialIndex);
    _2243 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_2235 < (uint)170000), _2235, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._fadeRatio);
    _2244 = saturate(_2243);  // [sem: _2243_sat]
    _2256 = (((exp2(log2(max(0.0f, (_35 + -0.8359375f)) / (18.851562f - (_35 * 18.6875f))) * 6.277395f) * 10000.0f) - _2206) * _2244) + _2206;
    _2268 = (((exp2(log2(max(0.0f, (_38 + -0.8359375f)) / (18.851562f - (_38 * 18.6875f))) * 6.277395f) * 10000.0f) - _2219) * _2244) + _2219;
    _2280 = (((exp2(log2(max(0.0f, (_41 + -0.8359375f)) / (18.851562f - (_41 * 18.6875f))) * 6.277395f) * 10000.0f) - _2232) * _2244) + _2232;
    _2281 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _2294 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _2281, 0)))).x) & 127)))) + 0.5f);
    } else {
      _2294 = 1.0f;
    }
    _2297 = (_localToneMappingParams.w > 0.0f);
    if (_2297) {
      _2303 = _exposure0.x * _userImageAdjust.z;
      _2322 = exp2(_powerParams.x * log2(max(0.0f, (((_2303 * max(0.0f, (((_2256 * 1.70505f) - (_2268 * 0.62179f)) - (_2280 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
      _2338 = exp2(log2(max(0.0f, (((_slopeParams.y * _2303) * max(0.0f, (((_2268 * 1.1408f) - (_2256 * 0.13026f)) - (_2280 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
      _2354 = exp2(log2(max(0.0f, (((_slopeParams.z * _2303) * max(0.0f, (((_2256 * -0.024f) - (_2268 * 0.12897f)) + (_2280 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
      _2355 = dot(float3(_2322, _2338, _2354), float3(0.212671f, 0.71516f, 0.072169f));
      _2359 = ((_2322 - _2355) * _powerParams.w) + _2355;
      _2362 = ((_2338 - _2355) * _powerParams.w) + _2355;
      _2365 = ((_2354 - _2355) * _powerParams.w) + _2355;
      _2372 = min(max(log2(mad(_2365, 0.079223745f, mad(_2362, 0.0784336f, (_2359 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
      _2379 = min(max(log2(mad(_2365, 0.07916613f, mad(_2362, 0.87846863f, (_2359 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
      _2386 = min(max(log2(mad(_2365, 0.879143f, mad(_2362, 0.0784336f, (_2359 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
      _2387 = _2372 * 0.060606062f;
      _2388 = _2379 * 0.060606062f;
      _2389 = _2386 * 0.060606062f;
      _2390 = _2387 * _2387;
      _2391 = _2388 * _2388;
      _2392 = _2389 * _2389;
      _2408 = min(0.0f, (-0.0f - (((_2372 * 0.0072181816f) + ((_2390 * 0.4298f) + (((_2390 * _2390) * ((31.96f - (_2372 * 2.4327273f)) + (_2390 * 15.5f))) - ((_2372 * 0.41624245f) * _2390)))) + -0.00232f)));
      _2424 = min(0.0f, (-0.0f - (((_2379 * 0.0072181816f) + ((_2391 * 0.4298f) + (((_2391 * _2391) * ((31.96f - (_2379 * 2.4327273f)) + (_2391 * 15.5f))) - ((_2379 * 0.41624245f) * _2391)))) + -0.00232f)));
      _2440 = min(0.0f, (-0.0f - (((_2386 * 0.0072181816f) + ((_2392 * 0.4298f) + (((_2392 * _2392) * ((31.96f - (_2386 * 2.4327273f)) + (_2392 * 15.5f))) - ((_2386 * 0.41624245f) * _2392)))) + -0.00232f)));
      _2441 = -0.0f - _2408;
      _2442 = -0.0f - _2424;
      _2443 = -0.0f - _2440;
      _2444 = dot(float3(_2441, _2442, _2443), float3(0.2126f, 0.7152f, 0.0722f));
      if (_nightToneParm == 1) {
        _2461 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
        _2462 = -0.79999995f / _2461;
        _2463 = -1.2f / _2461;
        _2464 = 0.20000005f / _2461;
        _2467 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
        _2470 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
        _2474 = (_2462 + 1.4f) + (_2470 * (-0.39999998f - _2462));
        _2478 = (_2463 + 1.6f) + (_2470 * (-0.6f - _2463));
        _2482 = (_2464 + 0.9f) + (_2470 * (0.5f - _2464));
        _2499 = (lerp(_2478, 1.2f, _2467));  // [sem: blended]
        _2500 = (lerp(_2474, 1.0f, _2467));  // [sem: blended]
        _2501 = (lerp(_2482, 1.4f, _2467));  // [sem: blended]
      } else {
        _2499 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
        _2500 = 1.0f;  // [sem: blended]
        _2501 = 1.4f;  // [sem: blended]
      }
      _2502 = 1.0f - _2499;
      _2514 = ((exp2(log2(((saturate((_2408 * _2408) * _2441) * _2502) + _2499) * _2441) * _2500) - _2444) * _2501) + _2444;
      _2526 = ((exp2(log2(((saturate((_2424 * _2424) * _2442) * _2502) + _2499) * _2442) * _2500) - _2444) * _2501) + _2444;
      _2538 = ((exp2(log2(((saturate((_2440 * _2440) * _2443) * _2502) + _2499) * _2443) * _2500) - _2444) * _2501) + _2444;
      _2545 = saturate(exp2(log2(mad(_2538, -0.09902974f, mad(_2526, -0.09802088f, (_2514 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
      _2552 = saturate(exp2(log2(mad(_2538, -0.098961174f, mad(_2526, 1.1519032f, (_2514 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
      _2559 = saturate(exp2(log2(mad(_2538, 1.1510737f, mad(_2526, -0.09804345f, (_2514 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
      if (_etcParams.z == 0.0f) {
        _2565 = 1.0f - abs(_etcParams.w);
        _2566 = saturate(_etcParams.w);  // [sem: expr_sat]
        _2568 = (_2565 * _2545) + _2566;
        _2570 = (_2565 * _2552) + _2566;
        _2572 = (_2565 * _2559) + _2566;
        if (_colorGradingParams.w > 0.0f) {
          _2577 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _2594 = (((max(0.0f, (1.0f - _2568)) - _2568) * _2577) + _2568);
          _2595 = (((max(0.0f, (1.0f - _2570)) - _2570) * _2577) + _2570);
          _2596 = (((max(0.0f, (1.0f - _2572)) - _2572) * _2577) + _2572);
        } else {
          _2594 = _2568;
          _2595 = _2570;
          _2596 = _2572;
        }
        _2598 = _userImageAdjust.y + 1.0f;
        _2600 = _userImageAdjust.x + 0.5f;
        _2603 = ((_2594 + -0.5f) * _2598) + _2600;
        _2606 = ((_2595 + -0.5f) * _2598) + _2600;
        _2609 = ((_2596 + -0.5f) * _2598) + _2600;
        _2615 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _2650 = exp2(log2(saturate(mad(_colorBlind0.z, _2609, mad(_colorBlind0.y, _2606, (_colorBlind0.x * _2603))))) * _2615);
        _2651 = exp2(log2(saturate(mad(_colorBlind1.z, _2609, mad(_colorBlind1.y, _2606, (_colorBlind1.x * _2603))))) * _2615);
        _2652 = exp2(log2(saturate(mad(_colorBlind2.z, _2609, mad(_colorBlind2.y, _2606, (_colorBlind2.x * _2603))))) * _2615);
      } else {
        _2650 = _2545;
        _2651 = _2552;
        _2652 = _2559;
      }
    } else {
      _2650 = _2256;
      _2651 = _2268;
      _2652 = _2280;
    }
    if (_etcParams.y > 1.0f) {
      _2657 = abs((TEXCOORD.x * 2.0f) + -1.0f);
      _2660 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      _2666 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_2657, _2660), float2(_2657, _2660))));  // [sem: expr_sat]
      _2671 = (_2666 * _2650);
      _2672 = (_2666 * _2651);
      _2673 = (_2666 * _2652);
    } else {
      _2671 = _2650;
      _2672 = _2651;
      _2673 = _2652;
    }
    if (_2297 && (_etcParams.z > 0.0f)) {
      _2703 = select((_2671 <= 0.0031308f), (_2671 * 12.92f), (((pow(_2671, 0.41666666f)) * 1.055f) + -0.055f));
      _2704 = select((_2672 <= 0.0031308f), (_2672 * 12.92f), (((pow(_2672, 0.41666666f)) * 1.055f) + -0.055f));
      _2705 = select((_2673 <= 0.0031308f), (_2673 * 12.92f), (((pow(_2673, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _2703 = _2671;
      _2704 = _2672;
      _2705 = _2673;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _2708 = (float)((uint)((uint)(_2281)));
      if (!(_2708 < _viewDir.w)) {
        if (!(!(_2708 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
          _2719 = 0.0f;
          _2720 = 0.0f;
          _2721 = 0.0f;
        } else {
          _2719 = _2703;
          _2720 = _2704;
          _2721 = _2705;
        }
      } else {
        _2719 = 0.0f;
        _2720 = 0.0f;
        _2721 = 0.0f;
      }
    } else {
      _2719 = _2703;
      _2720 = _2704;
      _2721 = _2705;
    }
    _2725 = exp2(log2(_2719 * 0.0001f) * 0.15930176f);
    _2729 = exp2(log2(_2720 * 0.0001f) * 0.15930176f);
    _2733 = exp2(log2(_2721 * 0.0001f) * 0.15930176f);
    if (!_2) {
      _1191 = _446;
      _1192 = _447;
      _1193 = _448;
      _1194 = _449;
      _1195 = _450;
      _1196 = _451;
      _1197 = _452;
      while(true) {
        _446 = _1191;
        _447 = _1192;
        _448 = _1193;
        _449 = _1194;
        _450 = _1195;
        _451 = _1196;
        _452 = _1197;
        __loop_jump_target = 445;
        break;
        break;
      }
      if (__loop_jump_target == 445) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
    }
    SV_Target.x = exp2(log2((1.0f / ((_2725 * 18.6875f) + 1.0f)) * ((_2725 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.y = exp2(log2((1.0f / ((_2729 * 18.6875f) + 1.0f)) * ((_2729 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.z = exp2(log2((1.0f / ((_2733 * 18.6875f) + 1.0f)) * ((_2733 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.w = _2294;
    break;
  }
  return SV_Target;
}
