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
  column_major float4x4 _viewProj;
  column_major float4x4 _viewProjNoJitter;
  column_major float4x4 _viewProjRelative;
  column_major float4x4 _viewProjRelativeNoJitter;
  column_major float4x4 _invViewProj;
  column_major float4x4 _invViewProjRelative;
  column_major float4x4 _invViewProjRelativeNoJitter;
  column_major float4x4 _viewProjRelativeOrtho;
  float4 _sunDirection;
  float4 _moonDirection;
  float4 _moonRight;
  float4 _moonUp;
  float4 _ssaoRandomDirection[16];
  column_major float4x4 _view;
  column_major float4x4 _viewRelative;
  column_major float4x4 _viewRelativePrev;
  column_major float4x4 _proj;
  column_major float4x4 _projNoJitter;
  float4 _viewPosPrev;
  column_major float4x4 _viewProjNoJitterPrev;
  column_major float4x4 _viewProjRelativePrev;
  column_major float4x4 _viewProjRelativeNoJitterPrev;
  column_major float4x4 _invViewProjPrev;
  column_major float4x4 _invViewProjRelativePrev;
  column_major float4x4 _projToPrevProj;
  column_major float4x4 _projToPrevProjNoTranslation;
  column_major float4x4 _viewProjectionTexScale;
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
  half4 _debugBaseColor16;
  half4 _debugNormal16;
  half4 _debugMaterial16;
  half4 _debugMultiplier16;
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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by its PostProcessMaterial patches, and begins suppressing the duplicate native exposure declaration.
#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of the native ExposureConstantBuffer so any intervening unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing native GlobalPushConstants because tonemap.hlsli provides the ABI-compatible live declaration consumed by the material grading path.
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of native GlobalPushConstants so the following unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing the native ColorBlindConstantBuffer because tonemap.hlsli provides the ABI-compatible live declaration used by the material grading path.
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of the native ColorBlindConstantBuffer so all following native declarations compile normally.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

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
  int _35;
  int _43;
  int _46;
  float _54;
  int _57;
  float _65;
  int _68;
  float _76;
  float _79;
  float _80;
  float _82;
  float _84;
  float _85;
  float _87;
  float _88;
  float _90;
  float _91;
  float _92;
  float _95;
  float _96;
  float _99;
  float _102;
  float _106;
  float _107;
  float _110;
  float _115;
  float _117;
  float _118;
  float _119;
  float _120;
  float _122;
  float _123;
  float _124;
  float _131;
  float _135;
  float _136;
  float _140;
  float _145;
  float _149;
  float _151;
  float _152;
  float _153;
  float _154;
  float _157;
  float _158;
  float _159;
  float _161;
  float _164;
  int _167;
  float _175;
  float _176;
  float _177;
  float _178;
  float _179;
  float _180;
  float _181;
  float _182;
  float _183;
  float _184;
  float _190;
  float _196;
  float _202;
  float _203;
  float _204;
  float _205;
  float _206;
  int _222;
  float _223;
  float _224;
  float _225;
  float _226;
  float _227;
  float _228;
  float _229;
  float _230;
  float _231;
  float _232;
  float _233;
  float _234;
  float _235;
  float _332;
  float _333;
  float _334;
  float _335;
  float _336;
  float _337;
  float _338;
  float _370;
  float _371;
  float _372;
  float _374;
  float _375;
  float _376;
  float _437;
  float _438;
  float _439;
  float _440;
  float _441;
  float _442;
  int _443;
  float _548;
  float _823;
  float _824;
  float _825;
  float _826;
  float _827;
  float _828;
  int _829;
  float _934;
  float _1035;
  float _1036;
  float _1037;
  float _1038;
  float _1039;
  float _1040;
  int _1041;
  float _1043;
  float _1182;
  float _1183;
  float _1184;
  float _1185;
  float _1186;
  float _1187;
  int _1188;
  float _1355;
  float _1356;
  float _1357;
  float _1358;
  float _1554;
  float _1555;
  float _1556;
  float _2258;
  float _2463;
  float _2464;
  float _2465;
  float _2558;
  float _2559;
  float _2560;
  float _2614;
  float _2615;
  float _2616;
  float _2635;
  float _2636;
  float _2637;
  float _2667;
  float _2668;
  float _2669;
  float _2683;
  float _2684;
  float _2685;
  float _239;
  float _243;
  float _247;
  float _250;
  float _258;
  float _266;
  float _274;
  float _275;
  float _277;
  float _279;
  float _281;
  float _295;
  float _300;
  float _304;
  float _309;
  float _311;
  float _314;
  float _317;
  float _320;
  float _321;
  float _323;
  float _325;
  float _327;
  float _329;
  float _344;
  float _350;
  float _356;
  float _358;
  float _360;
  float _362;
  float _363;
  float _364;
  float _365;
  int _366;
  int _379;
  float _387;
  int _390;
  float _398;
  int _401;
  float _409;
  int _412;
  float _420;
  float _421;
  float _422;
  float _423;
  float _444;
  float _445;
  float _446;
  float _452;
  float _458;
  float _464;
  float _466;
  float _468;
  float _470;
  float _474;
  float _480;
  float _481;
  float _484;
  float _486;
  float _490;
  float _516;
  float _522;
  float _528;
  int _538;
  bool _541;
  float _551;
  float _552;
  float _555;
  float _557;
  float _559;
  float _561;
  float _562;
  float _563;
  float _565;
  float _567;
  float _570;
  float _571;
  float _572;
  float _574;
  float _577;
  float _578;
  float _579;
  float _580;
  float _583;
  float _587;
  float _591;
  float _593;
  float _595;
  float _597;
  float _599;
  float _601;
  float _603;
  float _605;
  float _610;
  float _622;
  float _634;
  float _646;
  float _647;
  float _648;
  float _649;
  float _651;
  float _652;
  float _654;
  float _656;
  float _658;
  float _659;
  float _660;
  float _661;
  float _663;
  float _666;
  float _668;
  float _671;
  float _675;
  float _679;
  float _681;
  float _683;
  int _686;
  float _694;
  float _698;
  float _702;
  float _704;
  int _712;
  float _720;
  float _724;
  float _728;
  float _730;
  float _731;
  float _732;
  float _734;
  float _735;
  float _736;
  float _737;
  float _743;
  float _744;
  float _745;
  float _746;
  float _747;
  float _749;
  int _752;
  float _760;
  float _765;
  float _767;
  float _769;
  float _771;
  float _773;
  float _774;
  float _775;
  float _776;
  float _777;
  float _778;
  float _779;
  float _785;
  float _791;
  float _797;
  float _814;
  float _821;
  float _830;
  float _831;
  float _832;
  float _838;
  float _844;
  float _850;
  float _852;
  float _854;
  float _856;
  float _860;
  float _866;
  float _867;
  float _870;
  float _872;
  float _876;
  float _902;
  float _908;
  float _914;
  int _924;
  bool _927;
  float _937;
  float _940;
  float _942;
  float _944;
  float _946;
  float _947;
  float _948;
  float _950;
  float _952;
  float _953;
  float _954;
  float _957;
  float _961;
  float _965;
  float _968;
  float _972;
  float _976;
  float _978;
  float _980;
  float _982;
  float _990;
  float _995;
  float _999;
  float _1010;
  float _1016;
  float _1022;
  int _1032;
  int _1046;
  float _1054;
  float _1058;
  float _1062;
  float _1063;
  float _1068;
  float _1071;
  int _1074;
  float _1082;
  float _1086;
  float _1090;
  float _1092;
  int _1095;
  float _1103;
  float _1107;
  float _1111;
  float _1126;
  int _1129;
  float _1137;
  float _1141;
  float _1145;
  float _1146;
  float _1150;
  float _1157;
  float _1163;
  float _1169;
  int _1179;
  float _1190;
  float _1191;
  int _1361;
  float _1369;
  float _1373;
  float _1377;
  float _1381;
  float _1393;
  float _1405;
  float _1417;
  int _1420;
  float _1428;
  float _1432;
  float _1436;
  int _1439;
  float _1447;
  float _1454;
  float _1456;
  float _1457;
  float _1458;
  float _1459;
  float _1464;
  float _1469;
  float _1474;
  float _1475;
  float _1476;
  float _1477;
  float _1478;
  float _1480;
  float _1482;
  float _1485;
  float _1487;
  float _1488;
  float _1493;
  float _1494;
  float _1507;
  float _1508;
  float _1511;
  float _1513;
  float _1514;
  float _1516;
  float _1517;
  float _1518;
  int _1559;
  float _1567;
  float _1568;
  int _1571;
  float _1579;
  int _1582;
  float _1590;
  float _1596;
  float _1599;
  float _1600;
  float _1601;
  float _1605;
  float _1617;
  float _1620;
  float _1622;
  float _1624;
  float _1625;
  float _1626;
  float _1627;
  float _1628;
  float _1629;
  float _1630;
  float _1631;
  float _1640;
  float _1641;
  float _1642;
  float _1651;
  float _1652;
  float _1653;
  float _1654;
  float _1658;
  float _1691;
  int _1694;
  float _1702;
  float _1704;
  float _1708;
  float _1712;
  float _1716;
  float _1724;
  float _1725;
  float _1732;
  float _1734;
  float _1735;
  float _1736;
  float _1744;
  float _1748;
  float _1752;
  float _1760;
  float _1761;
  float _1768;
  float _1770;
  float _1771;
  float _1772;
  float _1780;
  float _1784;
  float _1788;
  float _1796;
  float _1797;
  float _1798;
  float _1799;
  float _1801;
  float _1806;
  float _1810;
  float _1813;
  float _1827;
  float _1832;
  float _1839;
  float _1841;
  float _1851;
  float _1852;
  float _1854;
  float _1856;
  float _1860;
  float _1863;
  float _1871;
  float _1872;
  float _1874;
  bool _1875;
  bool _1876;
  bool _1877;
  bool _1878;
  float _1880;
  float _1882;
  bool _1883;
  bool _1884;
  float _1887;
  int _1890;
  float _1898;
  int _1901;
  float _1909;
  float _1958;
  int _1961;
  float _1969;
  int _1972;
  float _1980;
  int _1983;
  float _1991;
  int _1994;
  float _2002;
  float _2004;
  float _2009;
  float _2013;
  float _2017;
  float _2019;
  float _2030;
  int _2033;
  float _2041;
  float _2045;
  float _2056;
  float _2066;
  float _2086;
  float _2112;
  int _2115;
  float _2123;
  int _2126;
  float _2134;
  float _2136;
  float _2140;
  float _2144;
  int _2147;
  int _2155;
  float _2158;
  float _2161;
  float _2163;
  float _2166;
  int _2169;
  float _2177;
  float _2184;
  float _2197;
  float _2210;
  float _2223;
  int _2226;
  float _2234;
  float _2235;
  float _2238;
  float _2241;
  float _2244;
  uint _2245;
  bool _2261;
  float _2267;
  float _2286;
  float _2302;
  float _2318;
  float _2319;
  float _2323;
  float _2326;
  float _2329;
  float _2336;
  float _2343;
  float _2350;
  float _2351;
  float _2352;
  float _2353;
  float _2354;
  float _2355;
  float _2356;
  float _2372;
  float _2388;
  float _2404;
  float _2405;
  float _2406;
  float _2407;
  float _2408;
  float _2425;
  float _2426;
  float _2427;
  float _2428;
  float _2431;
  float _2434;
  float _2438;
  float _2442;
  float _2446;
  float _2466;
  float _2478;
  float _2490;
  float _2502;
  float _2509;
  float _2516;
  float _2523;
  float _2529;
  float _2530;
  float _2532;
  float _2534;
  float _2536;
  float _2541;
  float _2562;
  float _2564;
  float _2567;
  float _2570;
  float _2573;
  float _2579;
  float _2621;
  float _2624;
  float _2630;
  float _2672;
  int __loop_jump_target = -1;
  _2 = ((_global_0[0]) == 0);
  _24 = _srcTargetSizeAndInv.x * TEXCOORD.x;
  _26 = _srcTargetSizeAndInv.y * TEXCOORD.y;
  _29 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _35 = WaveReadLaneFirst(_materialIndex);
  _43 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_35 < (uint)170000), _35, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._screenWarpTex);
  _46 = WaveReadLaneFirst(_materialIndex);
  _54 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_46 < (uint)170000), _46, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._cameraSpeed);
  _57 = WaveReadLaneFirst(_materialIndex);
  _65 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_57 < (uint)170000), _57, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._cameraSinIntensity);
  _68 = WaveReadLaneFirst(_materialIndex);
  _76 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_68 < (uint)170000), _68, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._cameraFov);
  _79 = _time.x * _54;
  _80 = _79 + -1.0f;
  _82 = sin(_time.x * 0.1f);
  _84 = (_82 + 3.0f) + _79;
  _85 = _79 * 0.1308997f;
  _87 = sin(_85 + 1.7f);
  _88 = _80 * 0.1308997f;
  _90 = sin(_88 + 1.7f);
  _91 = _90 * _65;
  _92 = _91 * 2.0f;
  _95 = (cos(_88) * _65) * _91;
  _96 = _84 * 0.1308997f;
  _99 = sin(_96 + 1.7f) * _65;
  _102 = _99 - sin(_time.x * 0.001f);
  _106 = ((_99 * _65) * cos(_96)) + -1.0f;
  _107 = 3.1415927f / _76;
  _110 = (_65 * 2.0f) * (_87 - _90);
  _115 = (((_65 * _65) * _87) * cos(_85)) - _95;
  _117 = rsqrt(dot(float3(_110, _115, 1.0f), float3(_110, _115, 1.0f)));  // [sem: invLength]
  _118 = _117 * _110;
  _119 = _117 * _115;
  _120 = -0.0f - _118;
  _122 = rsqrt(dot(float3(_117, 0.0f, _120), float3(_117, 0.0f, _120)));  // [sem: invLength]
  _123 = _122 * _117;
  _124 = _122 * _120;
  _131 = ((_24 - (_srcTargetSizeAndInv.x * 0.5f)) / _srcTargetSizeAndInv.y) * _107;
  _135 = ((_26 - (_srcTargetSizeAndInv.y * 0.5f)) / _srcTargetSizeAndInv.y) * _107;
  _136 = _135 * _119;
  _140 = ((_131 * _123) + _118) + (_136 * _124);
  _145 = (_135 * ((_123 * _117) - (_124 * _118))) + _119;
  _149 = ((_131 * _124) + _117) - (_136 * _123);
  _151 = rsqrt(dot(float3(_140, _145, _149), float3(_140, _145, _149)));  // [sem: invLength]
  _152 = _140 * _151;
  _153 = _145 * _151;
  _154 = _149 * _151;
  _157 = sin(-0.0f - _91) * 0.4f;
  _158 = cos(_157);
  _159 = sin(_157);
  _161 = mad(_159, _153, (_152 * _158));
  _164 = mad(_158, _153, (-0.0f - (_159 * _152)));
  _167 = WaveReadLaneFirst(_materialIndex);
  _175 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_167 < (uint)170000), _167, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._stardustDensity);
  _176 = _91 * 2.6666667f;
  _177 = _95 * 1.3333334f;
  _178 = _80 * 1.3333334f;
  _179 = floor(_176);
  _180 = floor(_177);
  _181 = floor(_178);
  _182 = 1.0f / _161;
  _183 = 1.0f / _164;
  _184 = 1.0f / _154;
  _190 = (float)((int)((int)((int)(uint)((int)(_161 > 0.0f))) - (int)((int)(uint)((int)(_161 < 0.0f)))));
  _196 = (float)((int)((int)((int)(uint)((int)(_164 > 0.0f))) - (int)((int)(uint)((int)(_164 < 0.0f)))));
  _202 = (float)((int)((int)((int)(uint)((int)(_154 > 0.0f))) - (int)((int)(uint)((int)(_154 < 0.0f)))));
  _203 = _175 * 30.0f;
  _204 = _190 * 0.5f;
  _205 = _196 * 0.5f;
  _206 = _202 * 0.5f;
  if (_203 > 0.0f) {
    _222 = 0;
    _223 = 0.0f;
    _224 = 0.0f;
    _225 = 0.0f;
    _226 = 0.0f;
    _227 = 0.0f;
    _228 = 0.0f;
    _229 = 0.0f;
    _230 = (_184 * (((0.5f - _178) + _206) + _181));
    _231 = (_183 * (((0.5f - _177) + _205) + _180));
    _232 = (_182 * (((0.5f - _176) + _204) + _179));
    _233 = _181;
    _234 = _180;
    _235 = _179;
    while(true) {
      _332 = _223;
      _333 = _224;
      _334 = _225;
      _335 = _226;
      _336 = _227;
      _337 = _228;
      _338 = _229;
      _239 = frac(sin(dot(float3(_235, _234, _233), float3(127.1f, 311.7f, 74.7f))) * 43758.547f);
      _243 = frac(sin(dot(float3(_235, _234, _233), float3(269.5f, 183.3f, 246.1f))) * 43758.547f);
      _247 = frac(sin(dot(float3(_235, _234, _233), float3(113.5f, 271.9f, 124.6f))) * 43758.547f);
      _250 = _time.x * _239;
      _258 = min(max(((cos(_250 + _239) * 0.1f) + _239), 0.015f), 0.985f) + (_235 - _176);
      _266 = min(max(((cos(_250 + _243) * 0.1f) + _243), 0.015f), 0.985f) + (_234 - _177);
      _274 = min(max(((cos(_250 + _247) * 0.1f) + _247), 0.015f), 0.985f) + (_233 - _178);
      _275 = dot(float3(_258, _266, _274), float3(_161, _164, _154));
      _277 = _258 - (_275 * _161);
      _279 = _266 - (_275 * _164);
      _281 = _274 - (_275 * _154);
      bool __branch_chain_221;
      if (!((_275 > 0.0f) && ((_275 * 0.75f) < 50.0f))) {
        _332 = _223;
        _333 = _224;
        _334 = _225;
        _335 = _226;
        _336 = _227;
        _337 = _228;
        _338 = _229;
        __branch_chain_221 = true;
      } else {
        _295 = saturate((sqrt(((_277 * _277) + (_279 * _279)) + (_281 * _281)) + -0.0075f) * 133.33334f);  // [sem: expr_sat]
        _300 = 1.0f - ((_295 * _295) * (3.0f - (_295 * 2.0f)));
        _304 = saturate((_275 - _203) / (-0.0f - _203));  // [sem: expr_sat]
        _309 = ((_304 * _304) * (3.0f - (_304 * 2.0f))) * _300;
        _311 = _300 * (_309 / _275);
        _314 = _311 * ((_229 * 0.4f) + 0.6f);
        _317 = _311 * ((_228 * 0.4f) + 0.6f);
        _320 = _311 * ((_227 * 0.4f) + 0.6f);
        _321 = 1.0f - _223;
        _323 = (_314 * _321) + _226;
        _325 = (_317 * _321) + _225;
        _327 = (_320 * _321) + _224;
        _329 = (_309 * _321) + _223;
        if (!(_329 > 0.99f)) {
          _332 = _329;
          _333 = _327;
          _334 = _325;
          _335 = _323;
          _336 = _320;
          _337 = _317;
          _338 = _314;
          __branch_chain_221 = true;
        } else {
          _370 = _323;
          _371 = _325;
          _372 = _327;
          __branch_chain_221 = false;
        }
      }
      if (__branch_chain_221) {
        _344 = (select((_231 < _232), 0.0f, 1.0f) * _190) * select((_230 < _232), 0.0f, 1.0f);
        _350 = (select((_230 < _231), 0.0f, 1.0f) * _196) * select((_232 < _231), 0.0f, 1.0f);
        _356 = (select((_231 < _230), 0.0f, 1.0f) * _202) * select((_232 < _230), 0.0f, 1.0f);
        _358 = (_344 * _182) + _232;
        _360 = (_350 * _183) + _231;
        _362 = (_356 * _184) + _230;
        _363 = _344 + _235;
        _364 = _350 + _234;
        _365 = _356 + _233;
        _366 = (int)(_222) + (int)(1);
        if (((float)((int)(_366))) < _203) {
          _222 = _366;
          _223 = _332;
          _224 = _333;
          _225 = _334;
          _226 = _335;
          _227 = _336;
          _228 = _337;
          _229 = _338;
          _230 = _362;
          _231 = _360;
          _232 = _358;
          _233 = _365;
          _234 = _364;
          _235 = _363;
          continue;
        } else {
          _370 = _335;
          _371 = _334;
          _372 = _333;
        }
      }
      _374 = _370;
      _375 = _371;
      _376 = _372;
      break;
    }
  } else {
    _374 = 0.0f;
    _375 = 0.0f;
    _376 = 0.0f;
  }
  _379 = WaveReadLaneFirst(_materialIndex);
  _387 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_379 < (uint)170000), _379, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._stardustIntensity);
  _390 = WaveReadLaneFirst(_materialIndex);
  _398 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_390 < (uint)170000), _390, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._cubeScale);
  _401 = WaveReadLaneFirst(_materialIndex);
  _409 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_401 < (uint)170000), _401, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._cubeDistance);
  _412 = WaveReadLaneFirst(_materialIndex);
  _420 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_412 < (uint)170000), _412, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._cubeMinScale);
  _421 = floor(_92);
  _422 = floor(_95);
  _423 = floor(_80);
  _437 = _421;
  _438 = _422;
  _439 = _423;
  _440 = ((((0.5f - _92) + _204) + _421) * _182);
  _441 = ((((0.5f - _95) + _205) + _422) * _183);
  _442 = ((((1.5f - _79) + _206) + _423) * _184);
  _443 = 0;
  while(true) {
    _444 = _437 * 0.35f;
    _445 = _438 * 0.35f;
    _446 = _439 * 0.35f;
    _452 = (_437 + -0.5f) + frac(sin(dot(float3(_444, _445, _446), float3(127.1f, 311.7f, 74.7f))) * 43758.547f);
    _458 = (_438 + -0.5f) + frac(sin(dot(float3(_444, _445, _446), float3(269.5f, 183.3f, 246.1f))) * 43758.547f);
    _464 = (_439 + -0.5f) + frac(sin(dot(float3(_444, _445, _446), float3(113.5f, 271.9f, 124.6f))) * 43758.547f);
    _466 = frac(_452 * 0.1031f);
    _468 = frac(_458 * 0.1031f);
    _470 = frac(_464 * 0.1031f);
    _474 = dot(float3(_466, _468, _470), float3((_468 + 19.19f), (_470 + 19.19f), (_466 + 19.19f)));
    _480 = frac(((_468 + _466) + (_474 * 2.0f)) * (_474 + _470));
    _481 = _464 * 0.1308997f;
    _484 = sin(_481 + 1.7f) * _65;
    _486 = _452 - (_484 * 2.0f);
    _490 = _458 - ((cos(_481) * _65) * _484);
    if (!(abs(select((_490 < 0.0f), 0.5f, 0.0f) + _490) > 0.35f) || ((abs(select((_490 < 0.0f), 0.5f, 0.0f) + _490) > 0.35f) && (!(sqrt((_490 * _490) + (_486 * _486)) > (_409 - ((_480 * 6.0f) * exp2(log2(saturate(_442 * 0.015625f)) * 2.2f))))))) {
      _516 = (select((_441 < _440), 0.0f, 1.0f) * _190) * select((_442 < _440), 0.0f, 1.0f);
      _522 = (select((_440 < _441), 0.0f, 1.0f) * _196) * select((_442 < _441), 0.0f, 1.0f);
      _528 = (select((_440 < _442), 0.0f, 1.0f) * _202) * select((_441 < _442), 0.0f, 1.0f);
      _538 = (int)(_443) + (int)(1);
      if ((int)_538 < (int)64) {
        _1182 = (_516 + _437);
        _1183 = (_522 + _438);
        _1184 = (_528 + _439);
        _1185 = ((_516 * _182) + _440);
        _1186 = ((_522 * _183) + _441);
        _1187 = ((_528 * _184) + _442);
        _1188 = _538;
        while(true) {
          _437 = _1182;
          _438 = _1183;
          _439 = _1184;
          _440 = _1185;
          _441 = _1186;
          _442 = _1187;
          _443 = _1188;
          __loop_jump_target = 436;
          break;
          break;
        }
        if (__loop_jump_target == 436) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      } else {
        _1355 = 0.0f;
        _1356 = 0.0f;
        _1357 = 0.0f;
        _1358 = 50.0f;
      }
    } else {
      _541 = (_480 < 0.35f);
      if (!_541) {
        _548 = ((_480 + _439) + _time.x);
      } else {
        _548 = 0.0f;
      }
      _551 = select(_541, 0.0f, ((_548 * 2.0f) + _438));
      _552 = _420 * 0.25f;
      _555 = min(max((_480 * 0.4f), _552), _398);
      _557 = (_92 + -0.5f) - _452;
      _559 = (_95 + -0.5f) - _458;
      _561 = (_79 + -1.5f) - _464;
      _562 = cos(_548);
      _563 = sin(_548);
      _565 = mad(_563, _559, (_562 * _561));
      _567 = mad(_563, _164, (_562 * _154));
      _570 = mad(_562, _164, (-0.0f - (_154 * _563)));
      _571 = cos(_551);
      _572 = sin(_551);
      _574 = mad(_572, _567, (_571 * _161));
      _577 = mad(_571, _567, (-0.0f - (_161 * _572)));
      _578 = 1.0f / _574;
      _579 = 1.0f / _570;
      _580 = 1.0f / _577;
      _583 = mad(_572, _565, (_571 * _557)) * _578;
      _587 = mad(_562, _559, (-0.0f - (_561 * _563))) * _579;
      _591 = mad(_571, _565, (-0.0f - (_557 * _572))) * _580;
      _593 = abs(_578) * _555;
      _595 = abs(_579) * _555;
      _597 = abs(_580) * _555;
      _599 = (-0.0f - _583) - _593;
      _601 = (-0.0f - _587) - _595;
      _603 = (-0.0f - _591) - _597;
      _605 = max(max(_599, _601), _603);
      _610 = min(min((_593 - _583), (_595 - _587)), (_597 - _591));
      _622 = (select((_599 < _601), 0.0f, 1.0f) * ((float)((int)((int)((int)(uint)((int)(_574 < 0.0f))) - (int)((int)(uint)((int)(_574 > 0.0f))))))) * select((_599 < _603), 0.0f, 1.0f);
      _634 = (select((_601 < _599), 0.0f, 1.0f) * ((float)((int)((int)((int)(uint)((int)(_570 < 0.0f))) - (int)((int)(uint)((int)(_570 > 0.0f))))))) * select((_601 < _603), 0.0f, 1.0f);
      _646 = (select((_603 < _599), 0.0f, 1.0f) * ((float)((int)((int)((int)(uint)((int)(_577 < 0.0f))) - (int)((int)(uint)((int)(_577 > 0.0f))))))) * select((_603 < _601), 0.0f, 1.0f);
      _647 = -0.0f - _548;
      _648 = cos(_647);
      _649 = sin(_647);
      _651 = mad(_649, _634, (_646 * _648));
      _652 = -0.0f - _649;
      _654 = mad(_648, _634, (_646 * _652));
      _656 = mad(_649, _654, (_651 * _648));
      _658 = mad(_648, _654, (_651 * _652));
      _659 = -0.0f - _551;
      _660 = cos(_659);
      _661 = sin(_659);
      _663 = mad(_661, _656, (_660 * _622));
      _666 = mad(_660, _656, (-0.0f - (_622 * _661)));
      _668 = mad(_661, _666, (_663 * _660));
      _671 = mad(_660, _666, (-0.0f - (_661 * _663)));
      _675 = select(((_605 > _610) || (_610 < 0.0f)), 0.0f, _605);
      if (_675 > 0.0f) {
        _679 = (_675 * _161) + _92;
        _681 = (_675 * _164) + _95;
        _683 = (_675 * _154) + _80;
        _686 = WaveReadLaneFirst(_materialIndex);
        _694 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_686 < (uint)170000), _686, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._lightColor.x);
        _698 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_686 < (uint)170000), _686, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._lightColor.y);
        _702 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_686 < (uint)170000), _686, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._lightColor.z);
        _704 = rsqrt(dot(float3(_694, _698, _702), float3(_694, _698, _702)));  // [sem: invLength]
        _712 = WaveReadLaneFirst(_materialIndex);
        _720 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_712 < (uint)170000), _712, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._ambientColor.x);
        _724 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_712 < (uint)170000), _712, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._ambientColor.y);
        _728 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_712 < (uint)170000), _712, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._ambientColor.z);
        _730 = (_102 * 2.0f) - _679;
        _731 = _106 - _681;
        _732 = _84 - _683;
        _734 = rsqrt(dot(float3(_730, _731, _732), float3(_730, _731, _732)));  // [sem: invLength]
        _735 = _734 * _730;
        _736 = _734 * _731;
        _737 = _734 * _732;
        _743 = sqrt(((_730 * _730) + (_731 * _731)) + (_732 * _732));
        _744 = _743 * _743;
        _745 = -0.0f - _735;
        _746 = -0.0f - _736;
        _747 = -0.0f - _737;
        _749 = dot(float3(_745, _746, _747), float3(_668, _658, _671)) * 2.0f;
        _752 = WaveReadLaneFirst(_materialIndex);
        _760 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_752 < (uint)170000), _752, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._edgeFlowSpeed);
        _765 = ((_time.x * 8.0f) + _683) * 0.025f;
        _767 = frac(abs(_765));
        _769 = _679 - (_161 * 0.01f);
        _771 = _681 - (_164 * 0.01f);
        _773 = _683 - (_154 * 0.01f);
        _774 = floor(_769);
        _775 = floor(_771);
        _776 = floor(_773);
        _777 = 1.0f / _735;
        _778 = 1.0f / _736;
        _779 = 1.0f / _737;
        _785 = (float)((int)((int)((int)(uint)((int)(_735 > 0.0f))) - (int)((int)(uint)((int)(_735 < 0.0f)))));
        _791 = (float)((int)((int)((int)(uint)((int)(_736 > 0.0f))) - (int)((int)(uint)((int)(_736 < 0.0f)))));
        _797 = (float)((int)((int)((int)(uint)((int)(_737 > 0.0f))) - (int)((int)(uint)((int)(_737 < 0.0f)))));
        _814 = (_675 * 0.1f) + 1.0f;
        _821 = select(((select((_765 >= (-0.0f - _765)), _767, (-0.0f - _767)) * 40.0f) > 4.0f), 0.0f, 1.0f);
        _823 = _774;
        _824 = _775;
        _825 = _776;
        _826 = (_777 * (((0.5f - _769) + (_785 * 0.5f)) + _774));
        _827 = (_778 * (((0.5f - _771) + (_791 * 0.5f)) + _775));
        _828 = (_779 * (((0.5f - _773) + (_797 * 0.5f)) + _776));
        _829 = 0;
        while(true) {
          _830 = _823 * 0.35f;
          _831 = _824 * 0.35f;
          _832 = _825 * 0.35f;
          _838 = (_823 + -0.5f) + frac(sin(dot(float3(_830, _831, _832), float3(127.1f, 311.7f, 74.7f))) * 43758.547f);
          _844 = (_824 + -0.5f) + frac(sin(dot(float3(_830, _831, _832), float3(269.5f, 183.3f, 246.1f))) * 43758.547f);
          _850 = (_825 + -0.5f) + frac(sin(dot(float3(_830, _831, _832), float3(113.5f, 271.9f, 124.6f))) * 43758.547f);
          _852 = frac(_838 * 0.1031f);
          _854 = frac(_844 * 0.1031f);
          _856 = frac(_850 * 0.1031f);
          _860 = dot(float3(_852, _854, _856), float3((_854 + 19.19f), (_856 + 19.19f), (_852 + 19.19f)));
          _866 = frac(((_854 + _852) + (_860 * 2.0f)) * (_860 + _856));
          _867 = _850 * 0.1308997f;
          _870 = sin(_867 + 1.7f) * _65;
          _872 = _838 - (_870 * 2.0f);
          _876 = _844 - ((cos(_867) * _65) * _870);
          if (!(abs(select((_876 < 0.0f), 0.5f, 0.0f) + _876) > 0.35f) || ((abs(select((_876 < 0.0f), 0.5f, 0.0f) + _876) > 0.35f) && (!(sqrt((_876 * _876) + (_872 * _872)) > (_409 - ((_866 * 6.0f) * exp2(log2(saturate(_828 * 0.015625f)) * 2.2f))))))) {
            _902 = (select((_827 < _826), 0.0f, 1.0f) * _785) * select((_828 < _826), 0.0f, 1.0f);
            _908 = (select((_826 < _827), 0.0f, 1.0f) * _791) * select((_828 < _827), 0.0f, 1.0f);
            _914 = (select((_826 < _828), 0.0f, 1.0f) * _797) * select((_827 < _828), 0.0f, 1.0f);
            _924 = (int)(_829) + (int)(1);
            if ((int)_924 < (int)64) {
              _1035 = (_902 + _823);
              _1036 = (_908 + _824);
              _1037 = (_914 + _825);
              _1038 = ((_902 * _777) + _826);
              _1039 = ((_908 * _778) + _827);
              _1040 = ((_914 * _779) + _828);
              _1041 = _924;
              while(true) {
                _823 = _1035;
                _824 = _1036;
                _825 = _1037;
                _826 = _1038;
                _827 = _1039;
                _828 = _1040;
                _829 = _1041;
                __loop_jump_target = 822;
                break;
                break;
              }
              if (__loop_jump_target == 822) {
                __loop_jump_target = -1;
                continue;
              }
              if (__loop_jump_target != -1) {
                break;
              }
            } else {
              _1043 = 1.0f;
            }
          } else {
            _927 = (_866 < 0.35f);
            if (!_927) {
              _934 = ((_866 + _825) + _time.x);
            } else {
              _934 = 0.0f;
            }
            _937 = select(_927, 0.0f, ((_934 * 2.0f) + _824));
            _940 = min(max((_866 * 0.4f), _552), _398);
            _942 = (_769 + -0.5f) - _838;
            _944 = (_771 + -0.5f) - _844;
            _946 = (_773 + -0.5f) - _850;
            _947 = cos(_934);
            _948 = sin(_934);
            _950 = mad(_948, _944, (_947 * _946));
            _952 = mad(_948, _736, (_947 * _737));
            _953 = cos(_937);
            _954 = sin(_937);
            _957 = 1.0f / mad(_954, _952, (_953 * _735));
            _961 = 1.0f / mad(_947, _736, (-0.0f - (_737 * _948)));
            _965 = 1.0f / mad(_953, _952, (-0.0f - (_735 * _954)));
            _968 = mad(_954, _950, (_953 * _942)) * _957;
            _972 = mad(_947, _944, (-0.0f - (_946 * _948))) * _961;
            _976 = mad(_953, _950, (-0.0f - (_942 * _954))) * _965;
            _978 = abs(_957) * _940;
            _980 = abs(_961) * _940;
            _982 = abs(_965) * _940;
            _990 = max(max(((-0.0f - _968) - _978), ((-0.0f - _972) - _980)), ((-0.0f - _976) - _982));
            _995 = min(min((_978 - _968), (_980 - _972)), (_982 - _976));
            _999 = select(((_990 > _995) || (_995 < 0.0f)), 0.0f, _990);
            if (_999 > 0.0f) {
              _1043 = select((_999 < _743), 0.0f, 1.0f);
            } else {
              _1010 = (select((_827 < _826), 0.0f, 1.0f) * _785) * select((_828 < _826), 0.0f, 1.0f);
              _1016 = (select((_826 < _827), 0.0f, 1.0f) * _791) * select((_828 < _827), 0.0f, 1.0f);
              _1022 = (select((_826 < _828), 0.0f, 1.0f) * _797) * select((_827 < _828), 0.0f, 1.0f);
              _1032 = (int)(_829) + (int)(1);
              if ((int)_1032 < (int)64) {
                _1035 = (_1010 + _823);
                _1036 = (_1016 + _824);
                _1037 = (_1022 + _825);
                _1038 = ((_1010 * _777) + _826);
                _1039 = ((_1016 * _778) + _827);
                _1040 = ((_1022 * _779) + _828);
                _1041 = _1032;
                while(true) {
                  _823 = _1035;
                  _824 = _1036;
                  _825 = _1037;
                  _826 = _1038;
                  _827 = _1039;
                  _828 = _1040;
                  _829 = _1041;
                  __loop_jump_target = 822;
                  break;
                  break;
                }
                if (__loop_jump_target == 822) {
                  __loop_jump_target = -1;
                  continue;
                }
                if (__loop_jump_target != -1) {
                  break;
                }
              } else {
                _1043 = 1.0f;
              }
            }
          }
          _1046 = WaveReadLaneFirst(_materialIndex);
          _1054 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1046 < (uint)170000), _1046, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._globalColor.x);
          _1058 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1046 < (uint)170000), _1046, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._globalColor.y);
          _1062 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1046 < (uint)170000), _1046, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._globalColor.z);
          _1063 = dot(float3(_735, _736, _737), float3(_668, _658, _671));
          _1068 = (1.0f / ((_744 * 0.05f) + 1.0f)) * max(_1063, 0.05f);
          _1071 = 1.0f / ((_744 * 0.1f) + 1.0f);
          _1074 = WaveReadLaneFirst(_materialIndex);
          _1082 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1074 < (uint)170000), _1074, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._mainTintColor.x);
          _1086 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1074 < (uint)170000), _1074, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._mainTintColor.y);
          _1090 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1074 < (uint)170000), _1074, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._mainTintColor.z);
          _1092 = max(_1063, 0.01f) * _1071;
          _1095 = WaveReadLaneFirst(_materialIndex);
          _1103 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1095 < (uint)170000), _1095, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._mainTintColor.x);
          _1107 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1095 < (uint)170000), _1095, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._mainTintColor.y);
          _1111 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1095 < (uint)170000), _1095, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._mainTintColor.z);
          _1126 = exp2(log2(max(dot(float3((_745 - (_749 * _668)), (_746 - (_749 * _658)), (_747 - (_749 * _671))), float3((-0.0f - _161), (-0.0f - _164), (-0.0f - _154))), 0.0f)) * 100.0f) * _1071;
          _1129 = WaveReadLaneFirst(_materialIndex);
          _1137 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1129 < (uint)170000), _1129, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._waveColor.x);
          _1141 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1129 < (uint)170000), _1129, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._waveColor.y);
          _1145 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1129 < (uint)170000), _1129, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._waveColor.z);
          _1146 = _1092 * 2.0f;
          _1150 = exp2(log2(_1126 * 0.3185468f) * 0.8333333f);
          if (!_2) {
            _1035 = _823;
            _1036 = _824;
            _1037 = _825;
            _1038 = _826;
            _1039 = _827;
            _1040 = _828;
            _1041 = _829;
            while(true) {
              _823 = _1035;
              _824 = _1036;
              _825 = _1037;
              _826 = _1038;
              _827 = _1039;
              _828 = _1040;
              _829 = _1041;
              __loop_jump_target = 822;
              break;
              break;
            }
            if (__loop_jump_target == 822) {
              __loop_jump_target = -1;
              continue;
            }
            if (__loop_jump_target != -1) {
              break;
            }
          }
          _1190 = max(dot(float3((_704 * _694), (_704 * _698), (_704 * _702)), float3(_668, _658, _671)), 0.05f) * 0.01f;
          _1191 = max(0.0f, _658);
          _1355 = (((((select((_720 < 0.04045f), (_720 * 0.07739938f), exp2(log2((_720 + 0.055f) * 0.94786733f) * 2.4f)) * _1191) + _1190) + (((select((_1082 < 0.04045f), (_1082 * 0.07739938f), exp2(log2((_1082 + 0.055f) * 0.94786733f) * 2.4f)) * _1092) + (select((_1054 < 0.04045f), (_1054 * 0.07739938f), exp2(log2((_1054 + 0.055f) * 0.94786733f) * 2.4f)) * _1068)) * _1043)) + (select((_1103 < 0.04045f), (_1103 * 0.07739938f), exp2(log2((_1103 + 0.055f) * 0.94786733f) * 2.4f)) * _1126)) + ((((select((_1137 < 0.04045f), (_1137 * 0.07739938f), exp2(log2((_1137 + 0.055f) * 0.94786733f) * 2.4f)) * _1146) + _1150) * _821) / _814));
          _1356 = (((((select((_724 < 0.04045f), (_724 * 0.07739938f), exp2(log2((_724 + 0.055f) * 0.94786733f) * 2.4f)) * _1191) + _1190) + (((select((_1086 < 0.04045f), (_1086 * 0.07739938f), exp2(log2((_1086 + 0.055f) * 0.94786733f) * 2.4f)) * _1092) + (select((_1058 < 0.04045f), (_1058 * 0.07739938f), exp2(log2((_1058 + 0.055f) * 0.94786733f) * 2.4f)) * _1068)) * _1043)) + (select((_1107 < 0.04045f), (_1107 * 0.07739938f), exp2(log2((_1107 + 0.055f) * 0.94786733f) * 2.4f)) * _1126)) + ((((select((_1141 < 0.04045f), (_1141 * 0.07739938f), exp2(log2((_1141 + 0.055f) * 0.94786733f) * 2.4f)) * _1146) + _1150) * _821) / _814));
          _1357 = (((((select((_728 < 0.04045f), (_728 * 0.07739938f), exp2(log2((_728 + 0.055f) * 0.94786733f) * 2.4f)) * _1191) + _1190) + (((select((_1090 < 0.04045f), (_1090 * 0.07739938f), exp2(log2((_1090 + 0.055f) * 0.94786733f) * 2.4f)) * _1092) + (select((_1062 < 0.04045f), (_1062 * 0.07739938f), exp2(log2((_1062 + 0.055f) * 0.94786733f) * 2.4f)) * _1068)) * _1043)) + (select((_1111 < 0.04045f), (_1111 * 0.07739938f), exp2(log2((_1111 + 0.055f) * 0.94786733f) * 2.4f)) * _1126)) + ((((select((_1145 < 0.04045f), (_1145 * 0.07739938f), exp2(log2((_1145 + 0.055f) * 0.94786733f) * 2.4f)) * _1146) + _1150) * _821) / _814));
          _1358 = _675;
          break;
        }
      } else {
        _1157 = (select((_441 < _440), 0.0f, 1.0f) * _190) * select((_442 < _440), 0.0f, 1.0f);
        _1163 = (select((_440 < _441), 0.0f, 1.0f) * _196) * select((_442 < _441), 0.0f, 1.0f);
        _1169 = (select((_440 < _442), 0.0f, 1.0f) * _202) * select((_441 < _442), 0.0f, 1.0f);
        _1179 = (int)(_443) + (int)(1);
        if ((int)_1179 < (int)64) {
          _1182 = (_1157 + _437);
          _1183 = (_1163 + _438);
          _1184 = (_1169 + _439);
          _1185 = ((_1157 * _182) + _440);
          _1186 = ((_1163 * _183) + _441);
          _1187 = ((_1169 * _184) + _442);
          _1188 = _1179;
          while(true) {
            _437 = _1182;
            _438 = _1183;
            _439 = _1184;
            _440 = _1185;
            _441 = _1186;
            _442 = _1187;
            _443 = _1188;
            __loop_jump_target = 436;
            break;
            break;
          }
          if (__loop_jump_target == 436) {
            __loop_jump_target = -1;
            continue;
          }
          if (__loop_jump_target != -1) {
            break;
          }
        } else {
          _1355 = 0.0f;
          _1356 = 0.0f;
          _1357 = 0.0f;
          _1358 = 50.0f;
        }
      }
    }
    _1361 = WaveReadLaneFirst(_materialIndex);
    _1369 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1361 < (uint)170000), _1361, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._fogColor.x);
    _1373 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1361 < (uint)170000), _1361, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._fogColor.y);
    _1377 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1361 < (uint)170000), _1361, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._fogColor.z);
    _1381 = exp2(log2(_1358 * 0.02f) * 6.0f);
    _1393 = (((select((_1369 < 0.04045f), (_1369 * 0.07739938f), exp2(log2((_1369 + 0.055f) * 0.94786733f) * 2.4f)) - _1355) * _1381) + _1355) * 1.2f;
    _1405 = (((select((_1373 < 0.04045f), (_1373 * 0.07739938f), exp2(log2((_1373 + 0.055f) * 0.94786733f) * 2.4f)) - _1356) * _1381) + _1356) * 1.2f;
    _1417 = (((select((_1377 < 0.04045f), (_1377 * 0.07739938f), exp2(log2((_1377 + 0.055f) * 0.94786733f) * 2.4f)) - _1357) * _1381) + _1357) * 1.2f;
    _1420 = WaveReadLaneFirst(_materialIndex);
    _1428 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1420 < (uint)170000), _1420, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._centerGlowColor.x);
    _1432 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1420 < (uint)170000), _1420, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._centerGlowColor.y);
    _1436 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1420 < (uint)170000), _1420, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._centerGlowColor.z);
    _1439 = WaveReadLaneFirst(_materialIndex);
    _1447 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1439 < (uint)170000), _1439, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._centerGlowRadius);
    _1454 = ((sin(_time.x * 5.0f) * 0.050000012f) + 0.95f) * _1447;
    _1456 = (_91 - _102) * 2.0f;
    _1457 = _95 - _106;
    _1458 = -4.0f - _82;
    _1459 = dot(float3(_1456, _1457, _1458), float3(_161, _164, _154));
    _1464 = (_1459 * _1459) - (dot(float3(_1456, _1457, _1458), float3(_1456, _1457, _1458)) - (_1454 * _1454));
    if (!(_1464 < 0.0f)) {
      _1469 = (-0.0f - _1459) - sqrt(_1464);
      if ((_1469 > 0.0f) && (_1469 < _1358)) {
        _1474 = 50.0f / _1454;
        _1475 = _1456 / _1454;
        _1476 = _1457 / _1454;
        _1477 = _1458 / _1454;
        _1478 = dot(float3(_161, _164, _154), float3(_1475, _1476, _1477));
        _1480 = dot(float3(_1475, _1476, _1477), float3(_1475, _1476, _1477)) + -1.0f;
        _1482 = (_1478 * _1478) - _1480;
        if (!(_1482 < 0.0f)) {
          _1485 = sqrt(_1482);
          _1487 = (-0.0f - _1478) - _1485;
          _1488 = _1485 - _1478;
          if (!((_1488 < 0.0f) || (_1487 > _1474))) {
            _1493 = max(_1487, 0.0f);
            _1494 = min(_1488, _1474);
            _1507 = ((((-0.0f - _1480) - (_1478 * _1494)) - ((_1494 * _1494) * 0.33333334f)) * _1494) + (((((_1493 * 0.33333334f) + _1478) * _1493) + _1480) * _1493);
            _1508 = _1507 * 0.75f;
            if (_1508 > 0.0f) {
              _1511 = _1508 * _1508;
              _1513 = (_1511 * _1511) * _1508;
              _1514 = _1513 * _1513;
              _1516 = (_1514 * _1514) * 5.0f;
              _1517 = _1508 * _1507;
              _1518 = _1517 * 0.22500001f;
              _1554 = (((_1517 * 0.075f) + _1393) + (select((_1428 < 0.04045f), (_1428 * 0.07739938f), exp2(log2((_1428 + 0.055f) * 0.94786733f) * 2.4f)) * _1516));
              _1555 = ((_1518 + _1405) + (select((_1432 < 0.04045f), (_1432 * 0.07739938f), exp2(log2((_1432 + 0.055f) * 0.94786733f) * 2.4f)) * _1516));
              _1556 = ((_1518 + _1417) + (select((_1436 < 0.04045f), (_1436 * 0.07739938f), exp2(log2((_1436 + 0.055f) * 0.94786733f) * 2.4f)) * _1516));
            } else {
              _1554 = _1393;
              _1555 = _1405;
              _1556 = _1417;
            }
          } else {
            _1554 = _1393;
            _1555 = _1405;
            _1556 = _1417;
          }
        } else {
          _1554 = _1393;
          _1555 = _1405;
          _1556 = _1417;
        }
      } else {
        _1554 = _1393;
        _1555 = _1405;
        _1556 = _1417;
      }
    } else {
      _1554 = _1393;
      _1555 = _1405;
      _1556 = _1417;
    }
    _1559 = WaveReadLaneFirst(_materialIndex);
    _1567 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1559 < (uint)170000), _1559, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._tunnelTotal);
    _1568 = _387 * _175;
    _1571 = WaveReadLaneFirst(_materialIndex);
    _1579 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1571 < (uint)170000), _1571, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._particleEmissionWidth);
    _1582 = WaveReadLaneFirst(_materialIndex);
    _1590 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1582 < (uint)170000), _1582, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._particleIntensity);
    _1596 = (_24 - (_srcTargetSizeAndInv.x * 0.5f)) / _srcTargetSizeAndInv.y;
    _1599 = (_26 - (_srcTargetSizeAndInv.y * 0.5f)) / _srcTargetSizeAndInv.y;
    _1600 = _1596 * 1.5f;
    _1601 = _1599 * 1.5f;
    _1605 = sqrt((_1601 * _1601) + (_1600 * _1600));
    _1617 = frac((sin((_1599 * 0.15f) + (_1596 * 25.5f)) * 10000.0f) * (abs(sin((_1599 * 19.5f) + _1600)) + 0.1f));
    _1620 = _time.x * 0.5f;
    _1622 = _1620 + (_1596 * 22.5f);
    _1624 = _1620 + (_1599 * 22.5f);
    _1625 = floor(_1622);
    _1626 = floor(_1624);
    _1627 = frac(_1622);
    _1628 = frac(_1624);
    _1629 = _1625 * 17.0f;
    _1630 = _1626 * 0.1f;
    _1631 = _1626 * 13.0f;
    _1640 = frac((sin(_1630 + _1629) * 10000.0f) * (abs(sin(_1631 + _1625)) + 0.1f));
    _1641 = _1625 + 1.0f;
    _1642 = _1641 * 17.0f;
    _1651 = frac((sin(_1642 + _1630) * 10000.0f) * (abs(sin(_1631 + _1641)) + 0.1f));
    _1652 = _1626 + 1.0f;
    _1653 = _1652 * 0.1f;
    _1654 = _1652 * 13.0f;
    _1658 = (_1627 * _1627) * (3.0f - (_1627 * 2.0f));
    // [sem: blended]
    _1691 = (lerp(_1640, _1651, _1658)) + (((_1628 * _1628) * (3.0f - (_1628 * 2.0f))) * (((frac((sin(_1653 + _1629) * 10000.0f) * (abs(sin(_1654 + _1625)) + 0.1f)) - _1640) * (1.0f - _1658)) + ((frac((sin(_1653 + _1642) * 10000.0f) * (abs(sin(_1654 + _1641)) + 0.1f)) - _1651) * _1658)));
    _1694 = WaveReadLaneFirst(_materialIndex);
    _1702 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1694 < (uint)170000), _1694, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._anamorphicWidth);
    _1704 = (_1702 * 0.9f) + 0.11f;
    _1708 = saturate((_1605 - _1704) / (-0.0f - _1704));  // [sem: expr_sat]
    _1712 = saturate((cos(_1600) * 0.4f) + -1.0f);  // [sem: expr_sat]
    _1716 = (_1712 * _1712) * (3.0f - (_1712 * 2.0f));
    _1724 = saturate(((abs(_1716 + _1601) + -0.04f) + abs(_1601 - _1716)) * -25.0f);  // [sem: expr_sat]
    _1725 = _1724 * _1708;
    _1732 = ((_1725 * _1725) * (3.0f - (_1708 * 2.0f))) * (3.0f - (_1724 * 2.0f));
    _1734 = (_1702 * 0.5f) + 0.12f;
    _1735 = _1600 + -0.08f;
    _1736 = _1601 + 0.005f;
    _1744 = saturate((sqrt((_1736 * _1736) + (_1735 * _1735)) - _1734) / (-0.0f - _1734));  // [sem: expr_sat]
    _1748 = saturate((cos(_1735) * 0.4f) + -1.0f);  // [sem: expr_sat]
    _1752 = (_1748 * _1748) * (3.0f - (_1748 * 2.0f));
    _1760 = saturate(((abs(_1752 + _1736) + -0.018f) + abs(_1736 - _1752)) * -55.555557f);  // [sem: expr_sat]
    _1761 = _1760 * _1744;
    _1768 = ((_1761 * _1761) * (3.0f - (_1744 * 2.0f))) * (3.0f - (_1760 * 2.0f));
    _1770 = (_1702 * 0.7f) + 0.13f;
    _1771 = _1600 + 0.09f;
    _1772 = _1601 + -0.005f;
    _1780 = saturate((sqrt((_1772 * _1772) + (_1771 * _1771)) - _1770) / (-0.0f - _1770));  // [sem: expr_sat]
    _1784 = saturate((cos(_1771) * 0.4f) + -1.0f);  // [sem: expr_sat]
    _1788 = (_1784 * _1784) * (3.0f - (_1784 * 2.0f));
    _1796 = saturate(((abs(_1788 + _1772) + -0.0143f) + abs(_1772 - _1788)) * -69.93007f);  // [sem: expr_sat]
    _1797 = _1796 * _1780;
    _1798 = _1596 * 2.25f;
    _1799 = _1599 * 2.25f;
    _1801 = (_1691 * 0.08f) + 0.15f;
    _1806 = saturate((abs(_1799) - _1801) / (-0.0f - _1801));  // [sem: expr_sat]
    _1810 = sqrt((_1799 * _1799) + (_1798 * _1798));
    _1813 = saturate((_1810 + -0.8f) * -0.7692308f);  // [sem: expr_sat]
    _1827 = max(0.9f, frac(frac((sin(_time.x * 8.55f) * 10000.0f) * (abs(sin(_time.x * 7.0f)) + 0.1f)))) * 0.08f;
    _1832 = saturate(((_1810 + -0.1f) - _1827) / (-0.120000005f - _1827));  // [sem: expr_sat]
    _1839 = saturate(((abs(_1599 * 1.6875f) * abs(_1798)) + -0.07f) * -5.882353f);  // [sem: expr_sat]
    _1841 = (_1813 * _1806) * _1839;
    _1851 = ((_1841 * _1841) * ((3.0f - (_1813 * 2.0f)) * (15.0f - (_1806 * 10.0f)))) * (3.0f - (_1839 * 2.0f));
    _1852 = _1691 * -0.015f;
    _1854 = _1852 + (_1596 * 2.85f);
    _1856 = _1852 + (_1599 * 2.85f);
    _1860 = sqrt((_1854 * _1854) + (_1856 * _1856));
    _1863 = saturate((_1860 + -1.0f) * -1.4285715f);  // [sem: expr_sat]
    _1871 = saturate(((((_1863 * _1863) * _1860) * (3.0f - (_1863 * 2.0f))) + -0.1f) * 2.5f);  // [sem: expr_sat]
    _1872 = abs(_1600);
    _1874 = atan(_1601 / _1872);
    _1875 = (_1872 < 0.0f);
    _1876 = (_1872 == 0.0f);
    _1877 = (_1601 >= 0.0f);
    _1878 = (_1601 < 0.0f);
    _1880 = abs(-0.0f - _1600);
    _1882 = atan(_1601 / _1880);
    _1883 = (_1880 < 0.0f);
    _1884 = (_1880 == 0.0f);
    _1887 = saturate(-0.0f - (_1605 + -1.0f));  // [sem: expr_sat]
    _1890 = WaveReadLaneFirst(_materialIndex);
    _1898 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1890 < (uint)170000), _1890, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._blubIntensity);
    _1901 = WaveReadLaneFirst(_materialIndex);
    _1909 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1901 < (uint)170000), _1901, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._middleHaloIntensity);
    _1958 = (((lerp(_1617, 1.0f, 0.97f)) * 0.9f) * _1909) * exp2(log2(((((_1887 * _1887) * (3.0f - (_1887 * 2.0f))) - ((((_1871 * _1871) * 0.4f) * (3.0f - (_1871 * 2.0f))) * _1898)) * 0.5f) * (abs(sin(select((_1877 && _1876), 1.0995574f, select((_1878 && _1876), -1.0995574f, (select((_1878 && _1875), (_1874 + -3.1415927f), select((_1877 && _1875), (_1874 + 3.1415927f), _1874)) * 0.7f))))) + abs(sin(select((_1877 && _1884), 1.2566371f, select((_1878 && _1884), -1.2566371f, (select((_1878 && _1883), (_1882 + -3.1415927f), select((_1877 && _1883), (_1882 + 3.1415927f), _1882)) * 0.8f))))))) * 2.5f);
    _1961 = WaveReadLaneFirst(_materialIndex);
    _1969 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1961 < (uint)170000), _1961, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._largeHalo);
    _1972 = WaveReadLaneFirst(_materialIndex);
    _1980 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1972 < (uint)170000), _1972, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._largeHaloIntensity);
    _1983 = WaveReadLaneFirst(_materialIndex);
    _1991 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1983 < (uint)170000), _1983, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._centerpoint);
    _1994 = WaveReadLaneFirst(_materialIndex);
    _2002 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1994 < (uint)170000), _1994, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._streakGlowIntensity);
    _2004 = (_1851 * _1851) * _2002;
    _2009 = ((_1832 * _1832) * (3.0f - (_1832 * 2.0f))) * _1991;
    _2013 = exp2(log2(_2009 * 1.2f) * 5.0f);
    _2017 = exp2(log2(_2009 * 1.1f) * 24.0f);
    _2019 = _2013 + (_2009 * 0.2f);
    _2030 = (((_1797 * _1797) * (3.0f - (_1780 * 2.0f))) * (3.0f - (_1796 * 2.0f))) + _1768;
    _2033 = WaveReadLaneFirst(_materialIndex);
    _2041 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_2033 < (uint)170000), _2033, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._anamorphicIntensity);
    _2045 = 1.0f / max(0.001f, _exposure0.x);
    _2056 = ((_2004 * 0.049657132f) + (_1732 * 0.0100228265f)) + _2017;
    _2066 = max(0.0f, ((((saturate(_1554) * _1567) + ((_374 * 5.0f) * _1568)) + (exp2(log2(((((((_1958 * 0.16689524f) + 0.033104755f) * _1958) + (_1768 * 0.033104755f)) + (_2019 * 0.07323897f)) + _2056) * 2.0f)) * _2041)) * _2045));
    _2086 = max(0.0f, ((((saturate(_1555) * _1567) + ((_375 * 7.0f) * _1568)) + (exp2(log2((((((0.07323897f - (_1958 * 0.023238968f)) * _1958) + (_2030 * 0.033104755f)) + (_2019 * 0.21404113f)) + _2056) * 2.0f)) * _2041)) * _2045));
    _2112 = max(0.0f, ((((saturate(_1556) * _1567) + ((_376 * 9.0f) * _1568)) + (exp2(log2((((((((_2030 * 0.07323897f) + (_1732 * 0.033104755f)) + ((0.13286835f - (_1958 * 0.08286835f)) * _1958)) + (_2009 * 0.06370936f)) + (_2004 * 0.10985845f)) + (_2013 * 0.6038274f)) + _2017) * 2.0f)) * _2041)) * _2045));
    _2115 = WaveReadLaneFirst(_materialIndex);
    _2123 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_2115 < (uint)170000), _2115, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._borderSmoothness);
    _2126 = WaveReadLaneFirst(_materialIndex);
    _2134 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_2126 < (uint)170000), _2126, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._borderWidth);
    _2136 = (1.0f - _2134) * 0.5f;
    _2140 = max((abs(TEXCOORD.x + -0.5f) - _2136), 0.0f);
    _2144 = max((abs(TEXCOORD.y + -0.5f) - _2136), 0.0f);
    _2147 = WaveReadLaneFirst(_materialIndex);
    _2155 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_2147 < (uint)170000), _2147, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._borderColor);
    _2158 = (float)((uint)((uint)(((uint)((uint)(_2155)) >> 16) & 255)));
    _2161 = (float)((uint)((uint)(((uint)((uint)(_2155)) >> 8) & 255)));
    _2163 = (float)((uint)((uint)(_2155 & 255)));
    _2166 = max(0.001f, _exposure0.x);
    _2169 = WaveReadLaneFirst(_materialIndex);
    _2177 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_2169 < (uint)170000), _2169, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._borderRatio);
    _2184 = saturate(sqrt((_2144 * _2144) + (_2140 * _2140)) / _2123) * _2177;
    _2197 = (((select(((_2158 * 0.003921569f) < 0.04045f), (_2158 * 0.000303527f), exp2(log2((_2158 * 0.003717127f) + 0.052132703f) * 2.4f)) / _2166) - _2066) * _2184) + _2066;
    _2210 = (((select(((_2161 * 0.003921569f) < 0.04045f), (_2161 * 0.000303527f), exp2(log2((_2161 * 0.003717127f) + 0.052132703f) * 2.4f)) / _2166) - _2086) * _2184) + _2086;
    _2223 = (((select(((_2163 * 0.003921569f) < 0.04045f), (_2163 * 0.000303527f), exp2(log2((_2163 * 0.003717127f) + 0.052132703f) * 2.4f)) / _2166) - _2112) * _2184) + _2112;
    _2226 = WaveReadLaneFirst(_materialIndex);
    _2234 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_2226 < (uint)170000), _2226, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._fadeRatio);
    _2235 = saturate(_2234);  // [sem: _2234_sat]
    _2238 = (_2235 * (_29.x - _2197)) + _2197;
    _2241 = (_2235 * (_29.y - _2210)) + _2210;
    _2244 = (_2235 * (_29.z - _2223)) + _2223;
    _2245 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _2258 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _2245, 0)))).x) & 127)))) + 0.5f);
    } else {
      _2258 = 1.0f;
    }
    _2261 = (_localToneMappingParams.w > 0.0f);
    if (_2261) {
      // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
      // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
      float3 _rndx_tonemapped_color = TonemapReplacer(float3(_2238, _2241, _2244));
      _2509 = _rndx_tonemapped_color.x;
      _2516 = _rndx_tonemapped_color.y;
      _2523 = _rndx_tonemapped_color.z;
      // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
      if (_etcParams.z == 0.0f) {
        _2529 = 1.0f - abs(_etcParams.w);
        _2530 = saturate(_etcParams.w);  // [sem: expr_sat]
        _2532 = (_2529 * _2509) + _2530;
        _2534 = (_2529 * _2516) + _2530;
        _2536 = (_2529 * _2523) + _2530;
        if (_colorGradingParams.w > 0.0f) {
          _2541 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _2558 = (((max(0.0f, (1.0f - _2532)) - _2532) * _2541) + _2532);
          _2559 = (((max(0.0f, (1.0f - _2534)) - _2534) * _2541) + _2534);
          _2560 = (((max(0.0f, (1.0f - _2536)) - _2536) * _2541) + _2536);
        } else {
          _2558 = _2532;
          _2559 = _2534;
          _2560 = _2536;
        }
        _2562 = _userImageAdjust.y + 1.0f;
        _2564 = _userImageAdjust.x + 0.5f;
        _2567 = ((_2558 + -0.5f) * _2562) + _2564;
        _2570 = ((_2559 + -0.5f) * _2562) + _2564;
        _2573 = ((_2560 + -0.5f) * _2562) + _2564;
        _2579 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _2614 = exp2(log2(saturate(mad(_colorBlind0.z, _2573, mad(_colorBlind0.y, _2570, (_colorBlind0.x * _2567))))) * _2579);
        _2615 = exp2(log2(saturate(mad(_colorBlind1.z, _2573, mad(_colorBlind1.y, _2570, (_colorBlind1.x * _2567))))) * _2579);
        _2616 = exp2(log2(saturate(mad(_colorBlind2.z, _2573, mad(_colorBlind2.y, _2570, (_colorBlind2.x * _2567))))) * _2579);
      } else {
        _2614 = _2509;
        _2615 = _2516;
        _2616 = _2523;
      }
    } else {
      _2614 = _2238;
      _2615 = _2241;
      _2616 = _2244;
    }
    if (_etcParams.y > 1.0f) {
      _2621 = abs((TEXCOORD.x * 2.0f) + -1.0f);
      _2624 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
      // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
      float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
      if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
        _rndx_vignette_strength *= CUSTOM_VIGNETTE;
      }
      _2630 = saturate(1.0f - (dot(float2(_2621, _2624), float2(_2621, _2624)) * _rndx_vignette_strength));  // [sem: expr_sat]
      // RenoDX: <<< [Patch: PostProcessMaterialVignette]
      _2635 = (_2630 * _2614);
      _2636 = (_2630 * _2615);
      _2637 = (_2630 * _2616);
    } else {
      _2635 = _2614;
      _2636 = _2615;
      _2637 = _2616;
    }
    if (_2261 && (_etcParams.z > 0.0f)) {
      _2667 = select((_2635 <= 0.0031308f), (_2635 * 12.92f), (((pow(_2635, 0.41666666f)) * 1.055f) + -0.055f));
      _2668 = select((_2636 <= 0.0031308f), (_2636 * 12.92f), (((pow(_2636, 0.41666666f)) * 1.055f) + -0.055f));
      _2669 = select((_2637 <= 0.0031308f), (_2637 * 12.92f), (((pow(_2637, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _2667 = _2635;
      _2668 = _2636;
      _2669 = _2637;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _2672 = (float)((uint)((uint)(_2245)));
      if (!(_2672 < _viewDir.w)) {
        if (!(!(_2672 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
          _2683 = 0.0f;
          _2684 = 0.0f;
          _2685 = 0.0f;
        } else {
          _2683 = _2667;
          _2684 = _2668;
          _2685 = _2669;
        }
      } else {
        _2683 = 0.0f;
        _2684 = 0.0f;
        _2685 = 0.0f;
      }
    } else {
      _2683 = _2667;
      _2684 = _2668;
      _2685 = _2669;
    }
    if (!_2) {
      _1182 = _437;
      _1183 = _438;
      _1184 = _439;
      _1185 = _440;
      _1186 = _441;
      _1187 = _442;
      _1188 = _443;
      while(true) {
        _437 = _1182;
        _438 = _1183;
        _439 = _1184;
        _440 = _1185;
        _441 = _1186;
        _442 = _1187;
        _443 = _1188;
        __loop_jump_target = 436;
        break;
        break;
      }
      if (__loop_jump_target == 436) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
    }
    // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
    // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      float3 _rndx_final_color = FinalizeSDR(float3(_2683, _2684, _2685), _sunDirection.y, _moonDirection.y);
      _2683 = _rndx_final_color.x;
      _2684 = _rndx_final_color.y;
      _2685 = _rndx_final_color.z;
    }
    // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
    SV_Target.x = _2683;
    SV_Target.y = _2684;
    SV_Target.z = _2685;
    SV_Target.w = _2258;
    break;
  }
  return SV_Target;
}
