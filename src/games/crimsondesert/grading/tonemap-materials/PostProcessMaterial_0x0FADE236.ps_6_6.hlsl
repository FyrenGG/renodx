struct PostProcessUnderwaterStruct {
  uint _causticsTexture;
  uint _heatHazeLookupTexture;
  float _lightThreshHold;
  float _shaftStretchLength;
  float _shaftIntensity;
  float _shaftDecay;
  float _blurStrength;
  float _blurDecay;
  float _surfaceEdgeWidth;
  float _wobbleScale;
  float _wobbleSpeed;
  float _wobbleStrength;
  float _hazeStrength;
  float _hazeScale;
  float _hazeSpeed;
  float _chromaticAberrationStrength;
  float _chromaticAberrationFalloff;
  uint _underWaterTintColor;
  float _causticsSplit;
  float _causticsStrength;
  uint _causticsTint;
  float _causticsSpeed;
  float _causticsLuminanceMaskStrength;
  float _causticsWorldScale;
  float _causticsSmallWorldScale;
  float _causticsSmallStrength;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float> __3__36__0__0__g_waterDepthTop : register(t105, space36);

Texture2D<float> __3__36__0__0__g_waterDepthTopDetail : register(t106, space36);

Texture2D<float> __3__36__0__0__g_waterDepthBottom : register(t107, space36);

Texture2D<float> __3__36__0__0__g_airPocketDepthTop : register(t108, space36);

Texture2D<float> __3__36__0__0__g_airPocketDepthBottom : register(t124, space36);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t69, space36);

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

cbuffer __3__35__0__0__WaterConstantBuffer : register(b2, space35) {
  float4 _waterDepthFieldSize : packoffset(c000.x);
  float4 _waterDepthFieldTextureSize : packoffset(c001.x);
  float4 _waterDepthMinMax : packoffset(c002.x);
  column_major float4x4 _waterDepthViewProjRelative : packoffset(c003.x);
  column_major float4x4 _waterDepthViewProjRelativeInv : packoffset(c007.x);
  float4 _waterDepthFrustumPlanes[6] : packoffset(c011.x);
  float4 _waterReadbackTextureSize : packoffset(c017.x);
  column_major float4x4 _waterReadbackViewProjRelative : packoffset(c018.x);
  column_major float4x4 _waterReadbackViewProjRelativeInv : packoffset(c022.x);
  float4 _waterDepthDetailFieldSize : packoffset(c026.x);
  float4 _waterDepthDetailFieldTextureSize : packoffset(c027.x);
  column_major float4x4 _waterDepthDetailViewProjRelative : packoffset(c028.x);
  column_major float4x4 _waterDepthDetailViewProjRelativeInv : packoffset(c032.x);
  float4 _waterDepthDetailFrustumPlanes[6] : packoffset(c036.x);
  float4 _ripplePivot : packoffset(c042.x);
  float4 _rippleFieldSize : packoffset(c043.x);
  float4 _rippleFieldTextureSize : packoffset(c044.x);
  float4 _shallowWaterPivot : packoffset(c045.x);
  float4 _shallowWaterFieldSize : packoffset(c046.x);
  float4 _shallowWaterFieldTextureSize : packoffset(c047.x);
};

cbuffer __3__35__0__0__SeaConstantBuffer : register(b0, space35) {
  float _seaBaseline : packoffset(c000.x);
  float _seaBaselinePrev : packoffset(c000.y);
  float _seaBaselineLow : packoffset(c000.z);
  float _seaDryBaseLine : packoffset(c000.w);
  float _cascadeSize1 : packoffset(c001.x);
  float _cascadeSize2 : packoffset(c001.y);
  float _cascadeSize3 : packoffset(c001.z);
  float _cascadeSize4 : packoffset(c001.w);
  float _cascadeAmplitude1 : packoffset(c002.x);
  float _cascadeAmplitude2 : packoffset(c002.y);
  float _cascadeAmplitude3 : packoffset(c002.z);
  float _cascadeAmplitude4 : packoffset(c002.w);
  float _choppyScale : packoffset(c003.x);
  float _seaExtinctionCoefficient : packoffset(c003.y);
  float _underWaterMossRate : packoffset(c003.z);
  float _underWaterMossScale : packoffset(c003.w);
  uint _scatteringAlbedo : packoffset(c004.x);
  float _waterRatio : packoffset(c004.y);
  float _mossHeightDepth : packoffset(c004.z);
  float _mossFadeRange : packoffset(c004.w);
  float _dirDependency : packoffset(c005.x);
  float _underWaterFroxelExtinctionNearScale : packoffset(c005.y);
  float _underWaterFroxelExtinctionFarScale : packoffset(c005.z);
  float _underWaterFroxelExtinctionStartDistance : packoffset(c005.w);
  float4 _underWaterTintParams0 : packoffset(c006.x);
  float4 _underWaterTintParams1 : packoffset(c007.x);
  uint _applyOceanWave : packoffset(c008.x);
  float _seaWaveTime : packoffset(c008.y);
  uint2 _seaConstantdummy : packoffset(c008.z);
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

struct BindlessParameters_PostProcessUnderwater {
  PostProcessUnderwaterStruct BindlessParameters_PostProcessUnderwater;
};

typedef BindlessParameters_PostProcessUnderwater BindlessParameters_PostProcessUnderwater_t;
ConstantBuffer<BindlessParameters_PostProcessUnderwater_t> BindlessParameters_PostProcessUnderwater[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticBilinearBlackBorder : register(s4, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _38;
  float _48;
  float _49;
  float _50;
  float _75;
  float _76;
  float _77;
  float _83;
  int _84;
  float _92;
  float _93;
  float _94;
  float _95;
  int _98;
  float _106;
  float _107;
  int _144;
  float _152;
  float _153;
  float _262;
  float _263;
  float _264;
  float _388;
  float _389;
  float _390;
  float _523;
  bool _579;
  float _580;
  float _594;
  float _595;
  float _596;
  float _1299;
  float _1300;
  float _1301;
  float _1448;
  float _1449;
  float _1450;
  float _1463;
  float _1464;
  float _2359;
  float _2360;
  float _2361;
  float _2375;
  float _2580;
  float _2581;
  float _2582;
  float _2675;
  float _2676;
  float _2677;
  float _2731;
  float _2732;
  float _2733;
  float _2752;
  float _2753;
  float _2754;
  float _2784;
  float _2785;
  float _2786;
  float _2800;
  float _2801;
  float _2802;
  int _156;
  float _164;
  float _165;
  int _168;
  float _176;
  float _177;
  float _180;
  float _181;
  int _194;
  int _202;
  float4 _209;
  int _213;
  int _221;
  float4 _228;
  float _250;
  float _255;
  float _256;
  int _265;
  float _273;
  float _282;
  float _283;
  float _289;
  float _290;
  float _291;
  float _292;
  float _314;
  float _318;
  float _322;
  float _326;
  float _328;
  float _329;
  float _331;
  float _339;
  float4 _353;
  float _366;
  float _367;
  float _368;
  float _370;
  float _392;
  float _393;
  float _394;
  float _395;
  float _398;
  float _402;
  float _404;
  int _405;
  int _413;
  float _416;
  float _419;
  float _421;
  float _449;
  float _454;
  float _456;
  float _460;
  float _463;
  float _465;
  float _479;
  float _480;
  float _481;
  float _490;
  float _493;
  float _505;
  float _507;
  float _529;
  float _531;
  float _533;
  float _536;
  float _543;
  float _545;
  float _558;
  float _571;
  float _583;
  float4 _603;
  float _613;
  float _614;
  float _615;
  float _637;
  float _638;
  float _639;
  float _646;
  float _647;
  float _648;
  float _652;
  float _657;
  float4 _659;
  float _669;
  float _670;
  float _671;
  float4 _697;
  float _707;
  float _708;
  float _709;
  float _734;
  float4 _736;
  float _746;
  float _747;
  float _748;
  float4 _774;
  float _784;
  float _785;
  float _786;
  float _812;
  float _813;
  float4 _816;
  float _826;
  float _827;
  float _828;
  float4 _855;
  float _865;
  float _866;
  float _867;
  float _892;
  float _893;
  float4 _896;
  float _906;
  float _907;
  float _908;
  float4 _935;
  float _945;
  float _946;
  float _947;
  float _1006;
  float _1016;
  float _1018;
  int _1035;
  float _1043;
  float _1044;
  float4 _1047;
  float _1057;
  float _1058;
  float _1059;
  float _1096;
  float _1097;
  float _1102;
  float _1106;
  bool _1107;
  int _1108;
  float _1116;
  float _1118;
  float _1136;
  float _1141;
  float4 _1144;
  float _1154;
  float _1155;
  float _1156;
  float _1189;
  float _1191;
  float _1193;
  float _1194;
  float _1195;
  float _1196;
  float _1197;
  float _1216;
  float4 _1229;
  float _1239;
  float _1240;
  float _1241;
  float _1263;
  float _1265;
  float _1266;
  float _1267;
  float _1268;
  float _1273;
  float _1284;
  float _1287;
  float _1294;
  float _1305;
  int _1310;
  float _1318;
  float _1323;
  float _1326;
  float _1327;
  float _1328;
  float4 _1343;
  float _1353;
  float _1354;
  float _1355;
  float _1377;
  float4 _1381;
  float _1391;
  float _1392;
  float _1393;
  float _1417;
  float _1421;
  float _1423;
  float _1430;
  float _1434;
  float _1435;
  float _1436;
  float _1437;
  float _1457;
  int _1465;
  float _1473;
  int _1474;
  float _1482;
  float _1483;
  float _1484;
  float _1487;
  float _1490;
  float _1491;
  float _1492;
  float _1494;
  float _1495;
  float _1496;
  float _1497;
  float _1498;
  float _1499;
  float _1500;
  float _1501;
  float _1502;
  float _1503;
  int _1504;
  float _1512;
  float _1513;
  float _1515;
  int _1517;
  int _1525;
  int _1534;
  int _1542;
  int _1551;
  int _1559;
  int _1568;
  float _1576;
  float _1577;
  float _1579;
  int _1581;
  int _1589;
  int _1598;
  int _1606;
  int _1615;
  int _1623;
  int _1635;
  float _1643;
  float _1644;
  float _1645;
  float _1648;
  float _1653;
  float _1654;
  float _1655;
  float _1660;
  float _1661;
  float _1662;
  float _1663;
  float _1664;
  float _1665;
  float _1666;
  float _1667;
  float _1668;
  float _1669;
  int _1670;
  float _1678;
  float _1679;
  float _1681;
  int _1683;
  int _1691;
  int _1700;
  int _1708;
  int _1717;
  int _1725;
  int _1734;
  float _1742;
  float _1743;
  float _1745;
  int _1747;
  int _1755;
  int _1764;
  int _1772;
  int _1781;
  int _1789;
  int _1801;
  float _1809;
  int _1816;
  int _1824;
  float _1827;
  float _1830;
  float _1832;
  int _1860;
  float _1868;
  int _1870;
  float _1878;
  float _1883;
  float _1884;
  float _1894;
  float _1901;
  float _1906;
  float _1912;
  float _1929;
  float _1931;
  float _1933;
  float _1937;
  float4 _1944;
  float _1954;
  float _1955;
  float _1956;
  float _1981;
  float4 _1983;
  float _1993;
  float _1994;
  float _1995;
  float4 _2021;
  float _2031;
  float _2032;
  float _2033;
  float _2058;
  float4 _2060;
  float _2070;
  float _2071;
  float _2072;
  float4 _2098;
  float _2108;
  float _2109;
  float _2110;
  float _2136;
  float _2137;
  float4 _2140;
  float _2150;
  float _2151;
  float _2152;
  float4 _2179;
  float _2189;
  float _2190;
  float _2191;
  float _2216;
  float _2217;
  float4 _2220;
  float _2230;
  float _2231;
  float _2232;
  float4 _2259;
  float _2269;
  float _2270;
  float _2271;
  float _2330;
  float _2340;
  float _2342;
  uint _2362;
  bool _2378;
  float _2384;
  float _2433;
  float _2434;
  float _2435;
  float _2437;
  float _2444;
  float _2445;
  float _2446;
  float _2465;
  float _2466;
  float _2467;
  float _2468;
  float _2469;
  float _2470;
  float _2471;
  float _2472;
  float _2473;
  float _2519;
  float _2520;
  float _2521;
  float _2522;
  float _2523;
  float _2524;
  float _2525;
  float _2542;
  float _2543;
  float _2544;
  float _2545;
  float _2551;
  float _2554;
  float _2561;
  float _2562;
  float _2563;
  float _2592;
  float _2617;
  float _2618;
  float _2619;
  float _2638;
  float _2639;
  float _2640;
  float _2646;
  float _2650;
  float _2651;
  float _2652;
  float _2653;
  float _2658;
  float _2683;
  float _2687;
  float _2688;
  float _2689;
  float _2690;
  float _2720;
  float _2742;
  float _2743;
  float _2747;
  float _2791;
  float _2812;
  float _2813;
  float _2814;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _38 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _48 = (pow(_38.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _49 = (pow(_38.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _50 = (pow(_38.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _75 = exp2(log2(max(0.0f, (_48 + -0.8359375f)) / (18.851562f - (_48 * 18.6875f))) * 6.277395f) * 10000.0f;
  _76 = exp2(log2(max(0.0f, (_49 + -0.8359375f)) / (18.851562f - (_49 * 18.6875f))) * 6.277395f) * 10000.0f;
  _77 = exp2(log2(max(0.0f, (_50 + -0.8359375f)) / (18.851562f - (_50 * 18.6875f))) * 6.277395f) * 10000.0f;
  _83 = (_srcTargetSizeAndInv.x / max(_srcTargetSizeAndInv.y, 1.0f)) * TEXCOORD.x;
  _84 = WaveReadLaneFirst(_materialIndex);
  _92 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_84 < (uint)170000), _84, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._wobbleScale);
  _93 = max(_92, 0.001f);
  _94 = _93 * _83;
  _95 = _93 * TEXCOORD.y;
  _98 = WaveReadLaneFirst(_materialIndex);
  _106 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_98 < (uint)170000), _98, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._wobbleSpeed);
  _107 = _106 * _time.x;
  _144 = WaveReadLaneFirst(_materialIndex);
  _152 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_144 < (uint)170000), _144, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeStrength);
  _153 = max(_152, 0.0f);
  if (!(_153 <= 0.0f)) {
    _156 = WaveReadLaneFirst(_materialIndex);
    _164 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_156 < (uint)170000), _156, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeScale);
    _165 = max(_164, 0.001f);
    _168 = WaveReadLaneFirst(_materialIndex);
    _176 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_168 < (uint)170000), _168, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeSpeed);
    _177 = _176 * _time.x;
    _180 = (_83 * 1.65f) * _165;
    _181 = (TEXCOORD.y * 0.72f) * _165;
    _194 = WaveReadLaneFirst(_materialIndex);
    _202 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_194 < (uint)170000), _194, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._heatHazeLookupTexture);
    _209 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_202 < (uint)65000), _202, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_177 * 0.035f) + _180), ((_177 * 0.22f) + _181)));
    _213 = WaveReadLaneFirst(_materialIndex);
    _221 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_213 < (uint)170000), _213, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._heatHazeLookupTexture);
    _228 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_221 < (uint)65000), _221, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_180 * 1.73f) + 0.37f) - (_177 * 0.027f)), (((_181 * 1.21f) + 0.61f) + (_177 * 0.16f))));
    // [sem: expr_sat]
    _250 = saturate((min(min(TEXCOORD.x, (1.0f - TEXCOORD.x)), min(TEXCOORD.y, (1.0f - TEXCOORD.y))) + -0.015f) * 15.384616f);
    _255 = ((_250 * _250) * ((_228.z * 0.32f) + (_209.z * 0.68f))) * (3.0f - (_250 * 2.0f));
    _256 = _255 * _153;
    _262 = _255;
    _263 = (((((_209.x * 1.36f) + -1.0f) + (_228.x * 0.64f)) * 1.3f) * _256);
    _264 = (((((_209.y * 1.36f) + -1.0f) + (_228.y * 0.64f)) * 0.78f) * _256);
  } else {
    _262 = 0.0f;
    _263 = 0.0f;
    _264 = 0.0f;
  }
  _265 = WaveReadLaneFirst(_materialIndex);
  _273 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_265 < (uint)170000), _265, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._wobbleStrength);
  _282 = min(max(((_263 + TEXCOORD.x) + (_273 * (((sin((((TEXCOORD.y + _83) * 10.0f) * _93) - (_107 * 1.35f)) * 0.35f) + sin((_107 * 2.0f) + (_95 * 18.0f))) + (cos((_95 * 7.0f) - (_107 * 1.1f)) * 0.2f)))), 0.001f), 0.999f);
  _283 = min(max(((_264 + TEXCOORD.y) + (_273 * (((sin((_107 * 1.2f) + (((_83 - TEXCOORD.y) * 9.0f) * _93)) * 0.3f) + cos((_94 * 16.0f) - (_107 * 1.75f))) + (sin((_107 * 1.05f) + (_94 * 6.0f)) * 0.18f)))), 0.001f), 0.999f);
  _289 = (_282 * 2.0f) + -1.0f;
  _290 = _283 * 2.0f;
  _291 = 1.0f - _290;
  _292 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_282, _283))).x));
  _314 = mad((_invViewProj[0].y), _291, ((_invViewProj[0].x) * _289));
  _318 = mad((_invViewProj[1].y), _291, ((_invViewProj[1].x) * _289));
  _322 = mad((_invViewProj[2].y), _291, ((_invViewProj[2].x) * _289));
  _326 = mad((_invViewProj[3].y), _291, ((_invViewProj[3].x) * _289));
  _328 = mad((_invViewProj[3].z), _292, _326) + (_invViewProj[3].w);
  _329 = (mad((_invViewProj[0].z), _292, _314) + (_invViewProj[0].w)) / _328;
  _331 = (mad((_invViewProj[2].z), _292, _322) + (_invViewProj[2].w)) / _328;
  _339 = ((_invViewProj[3].w) + (_invViewProj[3].z)) + _326;
  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _353 = __3__36__0__0__g_gbufferNormal.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _282) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _283) + -0.5f))), 0));
  _366 = (saturate(_353.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _367 = (saturate(_353.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _368 = (saturate(_353.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _370 = rsqrt(dot(float3(_366, _367, _368), float3(_366, _367, _368)));  // [sem: invLength]
  if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
    _388 = _sunDirection.x;
    _389 = _sunDirection.y;
    _390 = _sunDirection.z;
  } else {
    _388 = _moonDirection.x;
    _389 = _moonDirection.y;
    _390 = _moonDirection.z;
  }
  _392 = rsqrt(dot(float3(_388, _389, _390), float3(_388, _389, _390)));  // [sem: invLength]
  _393 = _392 * _388;
  _394 = _392 * _389;
  _395 = _392 * _390;
  _398 = saturate((_394 + -0.15f) * 3.3333335f);  // [sem: expr_sat]
  _402 = (_398 * _398) * (3.0f - (_398 * 2.0f));
  _404 = saturate(dot(float3((_370 * _366), (_370 * _367), (_368 * _370)), float3(_393, _394, _395)));  // [sem: expr_sat]
  _405 = WaveReadLaneFirst(_materialIndex);
  _413 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_405 < (uint)170000), _405, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterTintColor);
  _416 = (float)((uint)((uint)(((uint)((uint)(_413)) >> 16) & 255)));
  _419 = (float)((uint)((uint)(((uint)((uint)(_413)) >> 8) & 255)));
  _421 = (float)((uint)((uint)(_413 & 255)));
  _449 = ((((_invViewProj[1].w) + (_invViewProj[1].z)) + _318) / _339) + -0.006f;
  _454 = (((_314 + (_invViewProj[0].z)) + (_invViewProj[0].w)) / _339) - _viewPos.x;
  _456 = ((((_invViewProj[2].w) + (_invViewProj[2].z)) + _322) / _339) - _viewPos.z;
  _460 = (_waterDepthFieldSize.x + -1.0f) * 0.5f;
  _463 = abs(_454);
  _465 = abs(_456);
  if ((((_463 - _460) < 0.0f) && (((1.0f - _waterDepthMinMax.z) + abs(_449 - _viewPos.y)) < 0.0f)) && ((_465 - _460) < 0.0f)) {
    _479 = _waterDepthFieldSize.w * _456;
    _480 = (_waterDepthFieldSize.z * _454) + 0.5f;
    _481 = _479 + 0.5f;
    if (!((_481 >= 1.0f) || ((_481 <= 0.0f) || ((_480 <= 0.0f) || (_480 >= 1.0f))))) {
      _490 = 0.5f - _479;
      // [sem: _3__36__0__0__g_waterDepthBottom_sampleLod]
      _493 = __3__36__0__0__g_waterDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_480, _490), 0.0f);
      _505 = _waterDepthMinMax.y - _waterDepthMinMax.x;
      _507 = (_viewPos.y + _waterDepthMinMax.z) - _waterDepthMinMax.x;
      if ((_463 < (_waterDepthDetailFieldSize.x * 0.5f)) && (_465 < (_waterDepthDetailFieldSize.z * 0.5f))) {
        _523 = ((__3__36__0__0__g_waterDepthTopDetail.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_waterDepthDetailFieldSize.z * _454) + 0.5f), (0.5f - (_waterDepthDetailFieldSize.w * _456))), 0.0f)).x);
      } else {
        _523 = ((__3__36__0__0__g_waterDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_480, _490), 0.0f)).x);
      }
      _529 = select((_523 < 1.0f), (_507 - (_523 * _505)), -10000.0f);
      _531 = select((_493.x < 1.0f), (_507 - (_505 * _493.x)), -10000.0f);
      // [sem: _3__36__0__0__g_airPocketDepthTop_sampleLod]
      _533 = __3__36__0__0__g_airPocketDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_480, _490), 0.0f);
      // [sem: _3__36__0__0__g_airPocketDepthBottom_sampleLod]
      _536 = __3__36__0__0__g_airPocketDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_480, _490), 0.0f);
      _543 = select((_533.x < 1.0f), (_507 - (_533.x * _505)), -10000.0f);
      _545 = select((_536.x < 1.0f), (_507 - (_536.x * _505)), -10000.0f);
      if (((_449 >= _531) && (_449 < _529)) && ((_449 > _543) || (_449 < _545))) {
        _558 = select((_545 < _531), 0.0f, 1.0f) * select((_529 < _543), 0.0f, 1.0f);
        _571 = (_558 * ((_545 - _529) + ((_529 - _545) * select((_449 < _543), 0.0f, 1.0f)))) + _529;
        _579 = true;
        _580 = ((_449 - _571) - (((select((_529 < _545), 0.0f, 1.0f) * select((_543 < _529), 0.0f, 1.0f)) * (1.0f - _558)) * (_545 - _571)));
      } else {
        _579 = false;
        _580 = 0.0f;
      }
    } else {
      _579 = false;
      _580 = 0.0f;
    }
  } else {
    _579 = false;
    _580 = 0.0f;
  }
  if (_579) {
    _583 = saturate(_580 * -166.66667f);  // [sem: expr_sat]
    _594 = ((_583 * (select(((_416 * 0.003921569f) < 0.04045f), (_416 * 0.000303527f), exp2(log2((_416 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f)) + 1.0f);
    _595 = ((_583 * (select(((_419 * 0.003921569f) < 0.04045f), (_419 * 0.000303527f), exp2(log2((_419 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f)) + 1.0f);
    _596 = ((_583 * (select(((_421 * 0.003921569f) < 0.04045f), (_421 * 0.000303527f), exp2(log2((_421 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f)) + 1.0f);
  } else {
    _594 = 1.0f;
    _595 = 1.0f;
    _596 = 1.0f;
  }
  if ((_404 <= 0.0f) || (!_579)) {
    _603 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _613 = (pow(_603.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _614 = (pow(_603.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _615 = (pow(_603.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _637 = exp2(log2(max(0.0f, (_613 + -0.8359375f)) / (18.851562f - (_613 * 18.6875f))) * 6.277395f);
    _638 = exp2(log2(max(0.0f, (_614 + -0.8359375f)) / (18.851562f - (_614 * 18.6875f))) * 6.277395f);
    _639 = exp2(log2(max(0.0f, (_615 + -0.8359375f)) / (18.851562f - (_615 * 18.6875f))) * 6.277395f);
    _646 = ((_594 * 10000.0f) * _637) + _75;
    _647 = ((_595 * 10000.0f) * _638) + _76;
    _648 = ((_596 * 10000.0f) * _639) + _77;
    if (_579) {
      _652 = 1.0f - saturate(_580 * -25.0f);
      if (_652 > 0.0f) {
        _657 = _srcTargetSizeAndInv.w * 1.3846154f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _659 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_657 + TEXCOORD.y)));
        _669 = (pow(_659.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _670 = (pow(_659.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _671 = (pow(_659.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _697 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _657)));
        _707 = (pow(_697.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _708 = (pow(_697.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _709 = (pow(_697.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _734 = _srcTargetSizeAndInv.w * 3.2307692f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _736 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_734 + TEXCOORD.y)));
        _746 = (pow(_736.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _747 = (pow(_736.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _748 = (pow(_736.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _774 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _734)));
        _784 = (pow(_774.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _785 = (pow(_774.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _786 = (pow(_774.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _812 = _srcTargetSizeAndInv.z * 0.8307693f;
        _813 = _srcTargetSizeAndInv.w * 2.7692308f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _816 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_812 + TEXCOORD.x), (_813 + TEXCOORD.y)));
        _826 = (pow(_816.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _827 = (pow(_816.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _828 = (pow(_816.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _855 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _812), (TEXCOORD.y - _813)));
        _865 = (pow(_855.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _866 = (pow(_855.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _867 = (pow(_855.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _892 = _srcTargetSizeAndInv.z * 1.9384615f;
        _893 = _srcTargetSizeAndInv.w * 6.4615383f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _896 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_892 + TEXCOORD.x), (_893 + TEXCOORD.y)));
        _906 = (pow(_896.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _907 = (pow(_896.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _908 = (pow(_896.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _935 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _892), (TEXCOORD.y - _893)));
        _945 = (pow(_935.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _946 = (pow(_935.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _947 = (pow(_935.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1006 = sin(_652 * 3.1415927f);
        _1016 = saturate(exp2(log2(_1006 * ((_652 * 3.0f) + 1.0f))));  // [sem: expr_sat]
        _1018 = 0.35f - (saturate(pow(_1006, 5.0f)) * 0.14999999f);
        _2359 = ((_1016 * (((_1018 * _594) * ((((((exp2(log2(max(0.0f, (_707 + -0.8359375f)) / (18.851562f - (_707 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_669 + -0.8359375f)) / (18.851562f - (_669 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_826 + -0.8359375f)) / (18.851562f - (_826 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_865 + -0.8359375f)) / (18.851562f - (_865 * 18.6875f))) * 6.277395f)) * 3162.1624f) + (_637 * 4540.5405f)) + ((((exp2(log2(max(0.0f, (_784 + -0.8359375f)) / (18.851562f - (_784 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_746 + -0.8359375f)) / (18.851562f - (_746 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_906 + -0.8359375f)) / (18.851562f - (_906 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_945 + -0.8359375f)) / (18.851562f - (_945 * 18.6875f))) * 6.277395f)) * 702.7027f))) - _646)) + _646);
        _2360 = ((_1016 * (((_1018 * _595) * ((((((exp2(log2(max(0.0f, (_708 + -0.8359375f)) / (18.851562f - (_708 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_670 + -0.8359375f)) / (18.851562f - (_670 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_827 + -0.8359375f)) / (18.851562f - (_827 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_866 + -0.8359375f)) / (18.851562f - (_866 * 18.6875f))) * 6.277395f)) * 3162.1624f) + (_638 * 4540.5405f)) + ((((exp2(log2(max(0.0f, (_785 + -0.8359375f)) / (18.851562f - (_785 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_747 + -0.8359375f)) / (18.851562f - (_747 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_907 + -0.8359375f)) / (18.851562f - (_907 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_946 + -0.8359375f)) / (18.851562f - (_946 * 18.6875f))) * 6.277395f)) * 702.7027f))) - _647)) + _647);
        _2361 = ((_1016 * (((_1018 * _596) * ((((((exp2(log2(max(0.0f, (_709 + -0.8359375f)) / (18.851562f - (_709 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_671 + -0.8359375f)) / (18.851562f - (_671 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_828 + -0.8359375f)) / (18.851562f - (_828 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_867 + -0.8359375f)) / (18.851562f - (_867 * 18.6875f))) * 6.277395f)) * 3162.1624f) + (_639 * 4540.5405f)) + ((((exp2(log2(max(0.0f, (_786 + -0.8359375f)) / (18.851562f - (_786 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_748 + -0.8359375f)) / (18.851562f - (_748 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_908 + -0.8359375f)) / (18.851562f - (_908 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_947 + -0.8359375f)) / (18.851562f - (_947 * 18.6875f))) * 6.277395f)) * 702.7027f))) - _648)) + _648);
      } else {
        _2359 = _646;
        _2360 = _647;
        _2361 = _648;
      }
    } else {
      _2359 = _646;
      _2360 = _647;
      _2361 = _648;
    }
  } else {
    _1035 = WaveReadLaneFirst(_materialIndex);
    _1043 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1035 < (uint)170000), _1035, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._chromaticAberrationStrength);
    _1044 = max(_1043, 0.0f);
    if (!(_1044 <= 0.0f)) {
      _1096 = (_1044 * 0.00046296295f) * _bufferSizeAndInvSize.y;
      _1097 = _290 + -1.0f;
      _1102 = (_bufferSizeAndInvSize.x / max(_bufferSizeAndInvSize.y, 1.0f)) * _289;
      _1106 = sqrt((_1102 * _1102) + (_1097 * _1097));
      _1107 = (_1106 > 0.0001f);
      _1108 = WaveReadLaneFirst(_materialIndex);
      _1116 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1108 < (uint)170000), _1108, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._chromaticAberrationFalloff);
      _1118 = saturate(saturate(max(abs(_289), abs(_1097))));  // [sem: expr_sat]
      // [sem: expr_sat]
      _1136 = saturate((min((min(_282, (1.0f - _282)) * _bufferSizeAndInvSize.x), (min(_283, (1.0f - _283)) * _bufferSizeAndInvSize.y)) + -0.5f) / (_1096 + 0.5f));
      _1141 = ((_1136 * _1136) * exp2(log2((_1118 * _1118) * (3.0f - (_1118 * 2.0f))) * max(_1116, 0.001f))) * (3.0f - (_1136 * 2.0f));
      if (!(_1141 <= 0.0001f)) {
        _1189 = _1141 * _1096;
        _1191 = (_1189 * _bufferSizeAndInvSize.z) * select(_1107, (_1102 / _1106), 0.0f);
        _1193 = (_1189 * _bufferSizeAndInvSize.w) * select(_1107, (_1097 / _1106), 0.0f);
        _1194 = _bufferSizeAndInvSize.z * 0.5f;
        _1195 = _bufferSizeAndInvSize.w * 0.5f;
        _1196 = 1.0f - _1194;
        _1197 = 1.0f - _1195;
        _1216 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_282 - (_1191 * 2.0f)), _1194), _1196), min(max((_283 - (_1193 * 2.0f)), _1195), _1197))))).x) * 0.012683313f);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1229 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max(_282, _1194), _1196), min(max(_283, _1195), _1197)));
        _1239 = (pow(_1229.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1240 = (pow(_1229.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1241 = (pow(_1229.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1263 = exp2(log2(max(0.0f, (_1239 + -0.8359375f)) / (18.851562f - (_1239 * 18.6875f))) * 6.277395f);
        _1265 = exp2(log2(max(0.0f, (_1241 + -0.8359375f)) / (18.851562f - (_1241 * 18.6875f))) * 6.277395f);
        _1266 = _1263 * 10000.0f;
        _1267 = exp2(log2(max(0.0f, (_1240 + -0.8359375f)) / (18.851562f - (_1240 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1268 = _1265 * 10000.0f;
        _1273 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_282 - _1191), _1194), _1196), min(max((_283 - _1193), _1195), _1197))))).z) * 0.012683313f);
        _1284 = ((exp2(log2(max(0.0f, (_1216 + -0.8359375f)) / (18.851562f - (_1216 * 18.6875f))) * 6.277395f) - _1263) * 6500.0f) + _1266;
        _1287 = ((exp2(log2(max(0.0f, (_1273 + -0.8359375f)) / (18.851562f - (_1273 * 18.6875f))) * 6.277395f) - _1265) * 6500.0f) + _1268;
        _1294 = min(max(((dot(float3(_1266, _1267, _1268), float3(0.2126f, 0.7152f, 0.0722f)) + 0.0001f) / (dot(float3(_1284, _1267, _1287), float3(0.2126f, 0.7152f, 0.0722f)) + 0.0001f)), 0.75f), 1.25f);
        _1299 = (_1294 * _1284);
        _1300 = (_1294 * _1267);
        _1301 = (_1294 * _1287);
      } else {
        _1144 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_282, _283));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _1154 = (pow(_1144.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1155 = (pow(_1144.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1156 = (pow(_1144.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1299 = (exp2(log2(max(0.0f, (_1154 + -0.8359375f)) / (18.851562f - (_1154 * 18.6875f))) * 6.277395f) * 10000.0f);
        _1300 = (exp2(log2(max(0.0f, (_1155 + -0.8359375f)) / (18.851562f - (_1155 * 18.6875f))) * 6.277395f) * 10000.0f);
        _1301 = (exp2(log2(max(0.0f, (_1156 + -0.8359375f)) / (18.851562f - (_1156 * 18.6875f))) * 6.277395f) * 10000.0f);
      }
    } else {
      _1047 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_282, _283));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _1057 = (pow(_1047.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1058 = (pow(_1047.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1059 = (pow(_1047.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1299 = (exp2(log2(max(0.0f, (_1057 + -0.8359375f)) / (18.851562f - (_1057 * 18.6875f))) * 6.277395f) * 10000.0f);
      _1300 = (exp2(log2(max(0.0f, (_1058 + -0.8359375f)) / (18.851562f - (_1058 * 18.6875f))) * 6.277395f) * 10000.0f);
      _1301 = (exp2(log2(max(0.0f, (_1059 + -0.8359375f)) / (18.851562f - (_1059 * 18.6875f))) * 6.277395f) * 10000.0f);
    }
    _1305 = sqrt((_264 * _264) + (_263 * _263));
    if (!((_262 <= 0.0001f) || (_1305 <= 1e-06f))) {
      _1310 = WaveReadLaneFirst(_materialIndex);
      _1318 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1310 < (uint)170000), _1310, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeStrength);
      _1323 = max(_1318, 0.0f) * _262;
      _1326 = min(((_1323 * 0.04f) + (_1305 * 0.7f)), 0.0028f);
      _1327 = _1326 * (_263 / _1305);
      _1328 = _1326 * (_264 / _1305);
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _1343 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_1327 + _282), 0.001f), 0.999f), min(max((_1328 + _283), 0.001f), 0.999f)));
      _1353 = (pow(_1343.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1354 = (pow(_1343.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1355 = (pow(_1343.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1377 = exp2(log2(max(0.0f, (_1353 + -0.8359375f)) / (18.851562f - (_1353 * 18.6875f))) * 6.277395f);
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _1381 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_282 - _1327), 0.001f), 0.999f), min(max((_283 - _1328), 0.001f), 0.999f)));
      _1391 = (pow(_1381.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1392 = (pow(_1381.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1393 = (pow(_1381.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1417 = exp2(log2(max(0.0f, (_1393 + -0.8359375f)) / (18.851562f - (_1393 * 18.6875f))) * 6.277395f);
      _1421 = min(max((_1323 * 18.0f), 0.0f), 0.14f);
      _1423 = 1.0f - (_1421 * 2.0f);
      _1430 = _1421 * 10000.0f;
      _1434 = (_1423 * _1299) + (_1430 * (exp2(log2(max(0.0f, (_1391 + -0.8359375f)) / (18.851562f - (_1391 * 18.6875f))) * 6.277395f) + _1377));
      _1435 = (_1423 * _1300) + (_1430 * (exp2(log2(max(0.0f, (_1392 + -0.8359375f)) / (18.851562f - (_1392 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1354 + -0.8359375f)) / (18.851562f - (_1354 * 18.6875f))) * 6.277395f)));
      _1436 = (_1423 * _1301) + (_1430 * (_1417 + exp2(log2(max(0.0f, (_1355 + -0.8359375f)) / (18.851562f - (_1355 * 18.6875f))) * 6.277395f)));
      _1437 = _1421 * 0.45f;
      _1448 = ((((_1377 * 10000.0f) - _1434) * _1437) + _1434);
      _1449 = (lerp(_1435, _1300, _1437));  // [sem: blended]
      _1450 = ((((_1417 * 10000.0f) - _1436) * _1437) + _1436);
    } else {
      _1448 = _1299;
      _1449 = _1300;  // [sem: blended]
      _1450 = _1301;
    }
    if (!(_394 <= 0.0f)) {
      _1457 = (_seaBaseline - ((mad((_invViewProj[1].z), _292, _318) + (_invViewProj[1].w)) / _328)) / max(_394, 0.05f);
      _1463 = ((_1457 * _393) + _329);
      _1464 = ((_1457 * _395) + _331);
    } else {
      _1463 = _329;
      _1464 = _331;
    }
    _1465 = WaveReadLaneFirst(_materialIndex);
    _1473 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1465 < (uint)170000), _1465, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSpeed);
    _1474 = WaveReadLaneFirst(_materialIndex);
    _1482 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1474 < (uint)170000), _1474, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsWorldScale);
    _1483 = max(_1482, 0.001f);
    _1484 = 1.0f / _1483;
    _1487 = _time.x * _1473;
    _1490 = _1484 * _1464;
    _1491 = (_1484 * _1463) + (_1487 * 0.75f);
    _1492 = -1.0f / _1483;
    _1494 = _1492 * _1464;
    _1495 = _1487 + (_1492 * _1463);
    _1496 = ddx_coarse(_1491);
    _1497 = ddx_coarse(_1490);
    _1498 = ddy_coarse(_1491);
    _1499 = ddy_coarse(_1490);
    _1500 = ddx_coarse(_1495);
    _1501 = ddx_coarse(_1494);
    _1502 = ddy_coarse(_1495);
    _1503 = ddy_coarse(_1494);
    _1504 = WaveReadLaneFirst(_materialIndex);
    _1512 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1504 < (uint)170000), _1504, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
    _1513 = _1512 + _1491;
    _1515 = _1490 - _1512;
    _1517 = WaveReadLaneFirst(_materialIndex);
    _1525 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1517 < (uint)170000), _1517, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1534 = WaveReadLaneFirst(_materialIndex);
    _1542 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1534 < (uint)170000), _1534, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1551 = WaveReadLaneFirst(_materialIndex);
    _1559 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1551 < (uint)170000), _1551, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1568 = WaveReadLaneFirst(_materialIndex);
    _1576 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1568 < (uint)170000), _1568, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
    _1577 = _1576 + _1495;
    _1579 = _1494 - _1576;
    _1581 = WaveReadLaneFirst(_materialIndex);
    _1589 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1581 < (uint)170000), _1581, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1598 = WaveReadLaneFirst(_materialIndex);
    _1606 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1598 < (uint)170000), _1598, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1615 = WaveReadLaneFirst(_materialIndex);
    _1623 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1615 < (uint)170000), _1615, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1635 = WaveReadLaneFirst(_materialIndex);
    _1643 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1635 < (uint)170000), _1635, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSmallWorldScale);
    _1644 = max(_1643, 0.001f);
    _1645 = 1.0f / _1644;
    _1648 = _time.x * _1473;
    _1653 = ((_1648 * 1.15f) + 0.37f) + (_1645 * _1463);
    _1654 = (_1645 * _1464) + 0.61f;
    _1655 = -1.0f / _1644;
    _1660 = ((_1648 * 1.35f) + -0.61f) + (_1655 * _1463);
    _1661 = (_1655 * _1464) + -0.37f;
    _1662 = ddx_coarse(_1653);
    _1663 = ddx_coarse(_1654);
    _1664 = ddy_coarse(_1653);
    _1665 = ddy_coarse(_1654);
    _1666 = ddx_coarse(_1660);
    _1667 = ddx_coarse(_1661);
    _1668 = ddy_coarse(_1660);
    _1669 = ddy_coarse(_1661);
    _1670 = WaveReadLaneFirst(_materialIndex);
    _1678 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1670 < (uint)170000), _1670, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
    _1679 = _1678 + _1653;
    _1681 = _1654 - _1678;
    _1683 = WaveReadLaneFirst(_materialIndex);
    _1691 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1683 < (uint)170000), _1683, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1700 = WaveReadLaneFirst(_materialIndex);
    _1708 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1700 < (uint)170000), _1700, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1717 = WaveReadLaneFirst(_materialIndex);
    _1725 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1717 < (uint)170000), _1717, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1734 = WaveReadLaneFirst(_materialIndex);
    _1742 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1734 < (uint)170000), _1734, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
    _1743 = _1742 + _1660;
    _1745 = _1661 - _1742;
    _1747 = WaveReadLaneFirst(_materialIndex);
    _1755 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1747 < (uint)170000), _1747, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1764 = WaveReadLaneFirst(_materialIndex);
    _1772 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1764 < (uint)170000), _1764, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1781 = WaveReadLaneFirst(_materialIndex);
    _1789 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1781 < (uint)170000), _1781, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1801 = WaveReadLaneFirst(_materialIndex);
    _1809 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1801 < (uint)170000), _1801, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSmallStrength);
    _1816 = WaveReadLaneFirst(_materialIndex);
    _1824 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1816 < (uint)170000), _1816, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTint);
    _1827 = (float)((uint)((uint)(((uint)((uint)(_1824)) >> 16) & 255)));
    _1830 = (float)((uint)((uint)(((uint)((uint)(_1824)) >> 8) & 255)));
    _1832 = (float)((uint)((uint)(_1824 & 255)));
    _1860 = WaveReadLaneFirst(_materialIndex);
    _1868 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1860 < (uint)170000), _1860, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsStrength);
    _1870 = WaveReadLaneFirst(_materialIndex);
    _1878 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1870 < (uint)170000), _1870, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsLuminanceMaskStrength);
    _1883 = (min(max(_1878, 0.0f), 1.0f) * (dot(float3(_1448, _1449, _1450), float3(0.2126f, 0.7152f, 0.0722f)) + -1.0f)) + 1.0f;
    _1884 = abs(_580);
    _1894 = (saturate(_1884 * 2.0f) * _404) * exp2(log2(1.0f - saturate(_1884 * 0.033333335f)) * 16.0f);
    _1901 = saturate((max((_nearFarProj.x / _292), 0.0f) + -40.0f) * 0.025f);  // [sem: expr_sat]
    _1906 = 1.0f - ((_1901 * _1901) * (3.0f - (_1901 * 2.0f)));
    _1912 = _1868 * ((_402 * _402) * 10.0f);
    _1929 = ((_1448 * _594) + _75) + (((((_1912 * ((_1809 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1691 < (uint)65000), _1691, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1679, (_1678 + _1654)), float2(_1662, _1663), float2(_1664, _1665), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1755 < (uint)65000), _1755, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1743, (_1742 + _1661)), float2(_1666, _1667), float2(_1668, _1669), int2(0, 0)))).x))) + min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1525 < (uint)65000), _1525, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1513, (_1512 + _1490)), float2(_1496, _1497), float2(_1498, _1499), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1589 < (uint)65000), _1589, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1577, (_1576 + _1494)), float2(_1500, _1501), float2(_1502, _1503), int2(0, 0)))).x)))) * select(((_1827 * 0.003921569f) < 0.04045f), (_1827 * 0.000303527f), exp2(log2((_1827 * 0.003717127f) + 0.052132703f) * 2.4f))) * _1883) * _1894) * _1906);
    _1931 = ((_1449 * _595) + _76) + (((((_1912 * ((_1809 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1708 < (uint)65000), _1708, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1679, _1681), float2(_1662, _1663), float2(_1664, _1665), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1772 < (uint)65000), _1772, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1743, _1745), float2(_1666, _1667), float2(_1668, _1669), int2(0, 0)))).x))) + min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1542 < (uint)65000), _1542, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1513, _1515), float2(_1496, _1497), float2(_1498, _1499), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1606 < (uint)65000), _1606, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1577, _1579), float2(_1500, _1501), float2(_1502, _1503), int2(0, 0)))).x)))) * select(((_1830 * 0.003921569f) < 0.04045f), (_1830 * 0.000303527f), exp2(log2((_1830 * 0.003717127f) + 0.052132703f) * 2.4f))) * _1883) * _1894) * _1906);
    _1933 = ((_1450 * _596) + _77) + (((((_1912 * ((_1809 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1725 < (uint)65000), _1725, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_1653 - _1678), _1681), float2(_1662, _1663), float2(_1664, _1665), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1789 < (uint)65000), _1789, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_1660 - _1742), _1745), float2(_1666, _1667), float2(_1668, _1669), int2(0, 0)))).x))) + min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1559 < (uint)65000), _1559, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_1491 - _1512), _1515), float2(_1496, _1497), float2(_1498, _1499), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1623 < (uint)65000), _1623, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_1495 - _1576), _1579), float2(_1500, _1501), float2(_1502, _1503), int2(0, 0)))).x)))) * select(((_1832 * 0.003921569f) < 0.04045f), (_1832 * 0.000303527f), exp2(log2((_1832 * 0.003717127f) + 0.052132703f) * 2.4f))) * _1883) * _1894) * _1906);
    if (_579) {
      _1937 = 1.0f - saturate(_580 * -25.0f);
      if (_1937 > 0.0f) {
        _1944 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _1954 = (pow(_1944.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1955 = (pow(_1944.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1956 = (pow(_1944.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1981 = _srcTargetSizeAndInv.w * 1.3846154f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1983 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_1981 + TEXCOORD.y)));
        _1993 = (pow(_1983.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1994 = (pow(_1983.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1995 = (pow(_1983.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _2021 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _1981)));
        _2031 = (pow(_2021.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2032 = (pow(_2021.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2033 = (pow(_2021.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2058 = _srcTargetSizeAndInv.w * 3.2307692f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _2060 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_2058 + TEXCOORD.y)));
        _2070 = (pow(_2060.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2071 = (pow(_2060.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2072 = (pow(_2060.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _2098 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _2058)));
        _2108 = (pow(_2098.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2109 = (pow(_2098.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2110 = (pow(_2098.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2136 = _srcTargetSizeAndInv.z * 0.8307693f;
        _2137 = _srcTargetSizeAndInv.w * 2.7692308f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _2140 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_2136 + TEXCOORD.x), (_2137 + TEXCOORD.y)));
        _2150 = (pow(_2140.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2151 = (pow(_2140.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2152 = (pow(_2140.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _2179 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _2136), (TEXCOORD.y - _2137)));
        _2189 = (pow(_2179.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2190 = (pow(_2179.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2191 = (pow(_2179.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2216 = _srcTargetSizeAndInv.z * 1.9384615f;
        _2217 = _srcTargetSizeAndInv.w * 6.4615383f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _2220 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_2216 + TEXCOORD.x), (_2217 + TEXCOORD.y)));
        _2230 = (pow(_2220.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2231 = (pow(_2220.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2232 = (pow(_2220.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _2259 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _2216), (TEXCOORD.y - _2217)));
        _2269 = (pow(_2259.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2270 = (pow(_2259.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2271 = (pow(_2259.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2330 = sin(_1937 * 3.1415927f);
        _2340 = saturate(exp2(log2(_2330 * ((_1937 * 3.0f) + 1.0f))));  // [sem: expr_sat]
        _2342 = 0.35f - (saturate(pow(_2330, 5.0f)) * 0.14999999f);
        _2359 = ((_2340 * (((_2342 * _594) * ((((((exp2(log2(max(0.0f, (_2031 + -0.8359375f)) / (18.851562f - (_2031 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1993 + -0.8359375f)) / (18.851562f - (_1993 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_2150 + -0.8359375f)) / (18.851562f - (_2150 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_2189 + -0.8359375f)) / (18.851562f - (_2189 * 18.6875f))) * 6.277395f)) * 3162.1624f) + (exp2(log2(max(0.0f, (_1954 + -0.8359375f)) / (18.851562f - (_1954 * 18.6875f))) * 6.277395f) * 4540.5405f)) + ((((exp2(log2(max(0.0f, (_2108 + -0.8359375f)) / (18.851562f - (_2108 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_2070 + -0.8359375f)) / (18.851562f - (_2070 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_2230 + -0.8359375f)) / (18.851562f - (_2230 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_2269 + -0.8359375f)) / (18.851562f - (_2269 * 18.6875f))) * 6.277395f)) * 702.7027f))) - _1929)) + _1929);
        _2360 = ((_2340 * (((_2342 * _595) * ((((((exp2(log2(max(0.0f, (_2032 + -0.8359375f)) / (18.851562f - (_2032 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1994 + -0.8359375f)) / (18.851562f - (_1994 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_2151 + -0.8359375f)) / (18.851562f - (_2151 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_2190 + -0.8359375f)) / (18.851562f - (_2190 * 18.6875f))) * 6.277395f)) * 3162.1624f) + (exp2(log2(max(0.0f, (_1955 + -0.8359375f)) / (18.851562f - (_1955 * 18.6875f))) * 6.277395f) * 4540.5405f)) + ((((exp2(log2(max(0.0f, (_2109 + -0.8359375f)) / (18.851562f - (_2109 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_2071 + -0.8359375f)) / (18.851562f - (_2071 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_2231 + -0.8359375f)) / (18.851562f - (_2231 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_2270 + -0.8359375f)) / (18.851562f - (_2270 * 18.6875f))) * 6.277395f)) * 702.7027f))) - _1931)) + _1931);
        _2361 = ((_2340 * (((_2342 * _596) * ((((((exp2(log2(max(0.0f, (_2033 + -0.8359375f)) / (18.851562f - (_2033 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_1995 + -0.8359375f)) / (18.851562f - (_1995 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_2152 + -0.8359375f)) / (18.851562f - (_2152 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_2191 + -0.8359375f)) / (18.851562f - (_2191 * 18.6875f))) * 6.277395f)) * 3162.1624f) + (exp2(log2(max(0.0f, (_1956 + -0.8359375f)) / (18.851562f - (_1956 * 18.6875f))) * 6.277395f) * 4540.5405f)) + ((((exp2(log2(max(0.0f, (_2110 + -0.8359375f)) / (18.851562f - (_2110 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_2072 + -0.8359375f)) / (18.851562f - (_2072 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_2232 + -0.8359375f)) / (18.851562f - (_2232 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_2271 + -0.8359375f)) / (18.851562f - (_2271 * 18.6875f))) * 6.277395f)) * 702.7027f))) - _1933)) + _1933);
      } else {
        _2359 = _1929;
        _2360 = _1931;
        _2361 = _1933;
      }
    } else {
      _2359 = _1929;
      _2360 = _1931;
      _2361 = _1933;
    }
  }
  _2362 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _2375 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _2362, 0)))).x) & 127)))) + 0.5f);
  } else {
    _2375 = 1.0f;
  }
  _2378 = (_localToneMappingParams.w > 0.0f);
  if (_2378) {
    _2384 = _userImageAdjust.z * _exposure0.x;
    _2433 = exp2(log2(max(0.0f, (((_2384 * max(0.0f, (((_2359 * 1.70505f) - (_2360 * 0.62179f)) - (_2361 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _2434 = exp2(log2(max(0.0f, (((max(0.0f, (((_2360 * 1.1408f) - (_2359 * 0.13026f)) - (_2361 * 0.01055f))) * _2384) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _2435 = exp2(log2(max(0.0f, (((max(0.0f, (((_2359 * -0.024f) - (_2360 * 0.12897f)) + (_2361 * 1.15297f))) * _2384) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _2437 = dot(float3(_2433, _2434, _2435), float3(0.212671f, 0.71516f, 0.072169f));
    _2444 = ((_2433 - _2437) * _powerParams.w) + _2437;
    _2445 = ((_2434 - _2437) * _powerParams.w) + _2437;
    _2446 = ((_2435 - _2437) * _powerParams.w) + _2437;
    _2465 = min(max(log2(mad(_2446, 0.079223745f, mad(_2445, 0.0784336f, (_2444 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _2466 = min(max(log2(mad(_2446, 0.07916613f, mad(_2445, 0.87846863f, (_2444 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _2467 = min(max(log2(mad(_2446, 0.879143f, mad(_2445, 0.0784336f, (_2444 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _2468 = _2465 * 0.060606062f;
    _2469 = _2466 * 0.060606062f;
    _2470 = _2467 * 0.060606062f;
    _2471 = _2468 * _2468;
    _2472 = _2469 * _2469;
    _2473 = _2470 * _2470;
    _2519 = min(0.0f, (-0.0f - (((_2465 * 0.0072181816f) + ((_2471 * 0.4298f) + (((_2471 * _2471) * ((31.96f - (_2465 * 2.4327273f)) + (_2471 * 15.5f))) - ((_2465 * 0.41624245f) * _2471)))) + -0.00232f)));
    _2520 = min(0.0f, (-0.0f - (((_2466 * 0.0072181816f) + ((_2472 * 0.4298f) + (((_2472 * _2472) * ((31.96f - (_2466 * 2.4327273f)) + (_2472 * 15.5f))) - ((_2466 * 0.41624245f) * _2472)))) + -0.00232f)));
    _2521 = min(0.0f, (-0.0f - (((_2467 * 0.0072181816f) + ((_2473 * 0.4298f) + (((_2473 * _2473) * ((31.96f - (_2467 * 2.4327273f)) + (_2473 * 15.5f))) - ((_2467 * 0.41624245f) * _2473)))) + -0.00232f)));
    _2522 = -0.0f - _2519;
    _2523 = -0.0f - _2520;
    _2524 = -0.0f - _2521;
    _2525 = dot(float3(_2522, _2523, _2524), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _2542 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _2543 = -0.79999995f / _2542;
      _2544 = -1.2f / _2542;
      _2545 = 0.20000005f / _2542;
      _2551 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _2554 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _2561 = (_2543 + 1.4f) + (_2554 * (-0.39999998f - _2543));
      _2562 = (_2544 + 1.6f) + (_2554 * (-0.6f - _2544));
      _2563 = (_2545 + 0.9f) + (_2554 * (0.5f - _2545));
      _2580 = (lerp(_2562, 1.2f, _2551));  // [sem: blended]
      _2581 = (lerp(_2561, 1.0f, _2551));  // [sem: blended]
      _2582 = (lerp(_2563, 1.4f, _2551));  // [sem: blended]
    } else {
      _2580 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _2581 = 1.0f;  // [sem: blended]
      _2582 = 1.4f;  // [sem: blended]
    }
    _2592 = 1.0f - _2580;
    _2617 = ((exp2(log2(((saturate((_2519 * _2519) * _2522) * _2592) + _2580) * _2522) * _2581) - _2525) * _2582) + _2525;
    _2618 = ((exp2(log2(((saturate((_2520 * _2520) * _2523) * _2592) + _2580) * _2523) * _2581) - _2525) * _2582) + _2525;
    _2619 = ((exp2(log2(((saturate((_2521 * _2521) * _2524) * _2592) + _2580) * _2524) * _2581) - _2525) * _2582) + _2525;
    _2638 = saturate(exp2(log2(mad(_2619, -0.09902974f, mad(_2618, -0.09802088f, (_2617 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _2639 = saturate(exp2(log2(mad(_2619, -0.098961174f, mad(_2618, 1.1519032f, (_2617 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _2640 = saturate(exp2(log2(mad(_2619, 1.1510737f, mad(_2618, -0.09804345f, (_2617 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _2646 = 1.0f - abs(_etcParams.w);
      _2650 = saturate(_etcParams.w);  // [sem: expr_sat]
      _2651 = (_2646 * _2638) + _2650;
      _2652 = (_2646 * _2639) + _2650;
      _2653 = (_2646 * _2640) + _2650;
      if (_colorGradingParams.w > 0.0f) {
        _2658 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _2675 = (((max(0.0f, (1.0f - _2651)) - _2651) * _2658) + _2651);
        _2676 = (((max(0.0f, (1.0f - _2652)) - _2652) * _2658) + _2652);
        _2677 = (((max(0.0f, (1.0f - _2653)) - _2653) * _2658) + _2653);
      } else {
        _2675 = _2651;
        _2676 = _2652;
        _2677 = _2653;
      }
      _2683 = _userImageAdjust.y + 1.0f;
      _2687 = _userImageAdjust.x + 0.5f;
      _2688 = ((_2675 + -0.5f) * _2683) + _2687;
      _2689 = ((_2676 + -0.5f) * _2683) + _2687;
      _2690 = ((_2677 + -0.5f) * _2683) + _2687;
      _2720 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _2731 = exp2(log2(saturate(mad(_colorBlind0.z, _2690, mad(_colorBlind0.y, _2689, (_colorBlind0.x * _2688))))) * _2720);
      _2732 = exp2(log2(saturate(mad(_colorBlind1.z, _2690, mad(_colorBlind1.y, _2689, (_colorBlind1.x * _2688))))) * _2720);
      _2733 = exp2(log2(saturate(mad(_colorBlind2.z, _2690, mad(_colorBlind2.y, _2689, (_colorBlind2.x * _2688))))) * _2720);
    } else {
      _2731 = _2638;
      _2732 = _2639;
      _2733 = _2640;
    }
  } else {
    _2731 = _2359;
    _2732 = _2360;
    _2733 = _2361;
  }
  if (_etcParams.y > 1.0f) {
    _2742 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _2743 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _2747 = saturate(1.0f - (dot(float2(_2742, _2743), float2(_2742, _2743)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _2752 = (_2747 * _2731);
    _2753 = (_2747 * _2732);
    _2754 = (_2747 * _2733);
  } else {
    _2752 = _2731;
    _2753 = _2732;
    _2754 = _2733;
  }
  if (_2378 && (_etcParams.z > 0.0f)) {
    _2784 = select((_2752 <= 0.0031308f), (_2752 * 12.92f), (((pow(_2752, 0.41666666f)) * 1.055f) + -0.055f));
    _2785 = select((_2753 <= 0.0031308f), (_2753 * 12.92f), (((pow(_2753, 0.41666666f)) * 1.055f) + -0.055f));
    _2786 = select((_2754 <= 0.0031308f), (_2754 * 12.92f), (((pow(_2754, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _2784 = _2752;
    _2785 = _2753;
    _2786 = _2754;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2791 = (float)((uint)((uint)(_2362)));
    if (!(_2791 < _viewDir.w)) {
      if (!(_2791 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _2800 = _2784;
        _2801 = _2785;
        _2802 = _2786;
      } else {
        _2800 = 0.0f;
        _2801 = 0.0f;
        _2802 = 0.0f;
      }
    } else {
      _2800 = 0.0f;
      _2801 = 0.0f;
      _2802 = 0.0f;
    }
  } else {
    _2800 = _2784;
    _2801 = _2785;
    _2802 = _2786;
  }
  _2812 = exp2(log2(_2800 * 0.0001f) * 0.15930176f);
  _2813 = exp2(log2(_2801 * 0.0001f) * 0.15930176f);
  _2814 = exp2(log2(_2802 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_2812 * 18.6875f) + 1.0f)) * ((_2812 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_2813 * 18.6875f) + 1.0f)) * ((_2813 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_2814 * 18.6875f) + 1.0f)) * ((_2814 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _2375;
  return SV_Target;
}
