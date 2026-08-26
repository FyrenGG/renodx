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
  float _underWaterSaturation;
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
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by the material grading path, and begins suppressing the duplicate native exposure declaration.
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
  float _47;
  int _48;
  float _56;
  float _57;
  float _58;
  float _59;
  int _62;
  float _70;
  float _71;
  int _108;
  float _116;
  float _117;
  float _226;
  float _227;
  float _228;
  float _352;
  float _353;
  float _354;
  float _487;
  bool _547;
  float _548;
  float _549;
  float _563;
  float _564;
  float _565;
  float _598;
  float _599;
  float _600;
  float _1182;
  float _1183;
  float _1184;
  float _1304;
  float _1305;
  float _1306;
  float _1319;
  float _1320;
  float _2139;
  float _2140;
  float _2141;
  float _2155;
  float _2360;
  float _2361;
  float _2362;
  float _2455;
  float _2456;
  float _2457;
  float _2511;
  float _2512;
  float _2513;
  float _2532;
  float _2533;
  float _2534;
  float _2564;
  float _2565;
  float _2566;
  float _2580;
  float _2581;
  float _2582;
  int _120;
  float _128;
  float _129;
  int _132;
  float _140;
  float _141;
  float _144;
  float _145;
  int _158;
  int _166;
  float4 _173;
  int _177;
  int _185;
  float4 _192;
  float _214;
  float _219;
  float _220;
  int _229;
  float _237;
  float _246;
  float _247;
  float _253;
  float _254;
  float _255;
  float _256;
  float _278;
  float _282;
  float _286;
  float _290;
  float _292;
  float _293;
  float _295;
  float _303;
  float4 _317;
  float _330;
  float _331;
  float _332;
  float _334;
  float _356;
  float _357;
  float _358;
  float _359;
  float _362;
  float _366;
  float _368;
  int _369;
  int _377;
  float _380;
  float _383;
  float _385;
  float _413;
  float _418;
  float _420;
  float _424;
  float _427;
  float _429;
  float _443;
  float _444;
  float _445;
  float _454;
  float _457;
  float _469;
  float _471;
  float _493;
  float _495;
  float _497;
  float _500;
  float _507;
  float _509;
  float _522;
  float _535;
  float _540;
  float _552;
  float4 _572;
  float _577;
  int _578;
  float _586;
  float _587;
  float _604;
  float _605;
  float _606;
  float _610;
  float4 _617;
  float _621;
  int _622;
  float _630;
  float _631;
  float _638;
  float4 _642;
  float _646;
  int _647;
  float _655;
  float _656;
  float4 _666;
  float _670;
  int _671;
  float _679;
  float _680;
  float _687;
  float4 _691;
  float _695;
  int _696;
  float _704;
  float _705;
  float4 _715;
  float _719;
  int _720;
  float _728;
  float _729;
  float4 _741;
  float _745;
  int _746;
  float _754;
  float _755;
  float _762;
  float _763;
  float4 _768;
  float _772;
  int _773;
  float _781;
  float _782;
  float4 _793;
  float _797;
  int _798;
  float _806;
  float _807;
  float _814;
  float _815;
  float4 _820;
  float _824;
  int _825;
  float _833;
  float _834;
  float4 _845;
  float _849;
  int _850;
  float _858;
  float _859;
  float _866;
  float _874;
  float _882;
  float _927;
  float _937;
  float _939;
  int _956;
  float _964;
  float _965;
  float4 _968;
  float _972;
  int _973;
  float _981;
  float _982;
  float _1001;
  float _1002;
  float _1007;
  float _1011;
  bool _1012;
  int _1013;
  float _1021;
  float _1023;
  float _1041;
  float _1046;
  float4 _1049;
  float _1053;
  int _1054;
  float _1062;
  float _1063;
  float _1078;
  float _1080;
  float _1082;
  float _1083;
  float _1084;
  float _1085;
  float _1086;
  float4 _1101;
  float _1105;
  int _1106;
  float _1114;
  float4 _1123;
  float _1127;
  int _1128;
  float _1136;
  float _1137;
  float _1144;
  float _1145;
  float _1146;
  float4 _1147;
  float _1151;
  int _1152;
  float _1160;
  float _1166;
  float _1170;
  float _1177;
  float _1188;
  int _1193;
  float _1201;
  float _1206;
  float _1209;
  float _1210;
  float _1211;
  float4 _1226;
  float _1230;
  int _1231;
  float _1239;
  float _1240;
  float _1247;
  float4 _1251;
  float _1255;
  int _1256;
  float _1264;
  float _1265;
  float _1272;
  float _1275;
  float _1277;
  float _1290;
  float _1291;
  float _1292;
  float _1293;
  float _1313;
  int _1321;
  float _1329;
  int _1330;
  float _1338;
  float _1339;
  float _1340;
  float _1343;
  float _1346;
  float _1347;
  float _1348;
  float _1350;
  float _1351;
  float _1352;
  float _1353;
  float _1354;
  float _1355;
  float _1356;
  float _1357;
  float _1358;
  float _1359;
  int _1360;
  float _1368;
  float _1369;
  float _1371;
  int _1373;
  int _1381;
  int _1390;
  int _1398;
  int _1407;
  int _1415;
  int _1424;
  float _1432;
  float _1433;
  float _1435;
  int _1437;
  int _1445;
  int _1454;
  int _1462;
  int _1471;
  int _1479;
  int _1491;
  float _1499;
  float _1500;
  float _1501;
  float _1504;
  float _1509;
  float _1510;
  float _1511;
  float _1516;
  float _1517;
  float _1518;
  float _1519;
  float _1520;
  float _1521;
  float _1522;
  float _1523;
  float _1524;
  float _1525;
  int _1526;
  float _1534;
  float _1535;
  float _1537;
  int _1539;
  int _1547;
  int _1556;
  int _1564;
  int _1573;
  int _1581;
  int _1590;
  float _1598;
  float _1599;
  float _1601;
  int _1603;
  int _1611;
  int _1620;
  int _1628;
  int _1637;
  int _1645;
  int _1657;
  float _1665;
  int _1672;
  int _1680;
  float _1683;
  float _1686;
  float _1688;
  int _1716;
  float _1724;
  int _1726;
  float _1734;
  float _1739;
  float _1740;
  float _1750;
  float _1757;
  float _1762;
  float _1768;
  float _1785;
  float _1787;
  float _1789;
  float _1793;
  float4 _1800;
  float _1804;
  int _1805;
  float _1813;
  float _1814;
  float _1821;
  float4 _1825;
  float _1829;
  int _1830;
  float _1838;
  float _1839;
  float4 _1849;
  float _1853;
  int _1854;
  float _1862;
  float _1863;
  float _1870;
  float4 _1874;
  float _1878;
  int _1879;
  float _1887;
  float _1888;
  float4 _1898;
  float _1902;
  int _1903;
  float _1911;
  float _1912;
  float4 _1924;
  float _1928;
  int _1929;
  float _1937;
  float _1938;
  float _1945;
  float _1946;
  float4 _1951;
  float _1955;
  int _1956;
  float _1964;
  float _1965;
  float4 _1976;
  float _1980;
  int _1981;
  float _1989;
  float _1990;
  float _1997;
  float _1998;
  float4 _2003;
  float _2007;
  int _2008;
  float _2016;
  float _2017;
  float4 _2028;
  float _2032;
  int _2033;
  float _2041;
  float _2042;
  float _2049;
  float _2057;
  float _2065;
  float _2110;
  float _2120;
  float _2122;
  uint _2142;
  bool _2158;
  float _2164;
  float _2213;
  float _2214;
  float _2215;
  float _2217;
  float _2224;
  float _2225;
  float _2226;
  float _2245;
  float _2246;
  float _2247;
  float _2248;
  float _2249;
  float _2250;
  float _2251;
  float _2252;
  float _2253;
  float _2299;
  float _2300;
  float _2301;
  float _2302;
  float _2303;
  float _2304;
  float _2305;
  float _2322;
  float _2323;
  float _2324;
  float _2325;
  float _2331;
  float _2334;
  float _2341;
  float _2342;
  float _2343;
  float _2372;
  float _2397;
  float _2398;
  float _2399;
  float _2418;
  float _2419;
  float _2420;
  float _2426;
  float _2430;
  float _2431;
  float _2432;
  float _2433;
  float _2438;
  float _2463;
  float _2467;
  float _2468;
  float _2469;
  float _2470;
  float _2500;
  float _2522;
  float _2523;
  float _2527;
  float _2571;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _38 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _47 = (_srcTargetSizeAndInv.x / max(_srcTargetSizeAndInv.y, 1.0f)) * TEXCOORD.x;
  _48 = WaveReadLaneFirst(_materialIndex);
  _56 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_48 < (uint)170000), _48, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._wobbleScale);
  _57 = max(_56, 0.001f);
  _58 = _57 * _47;
  _59 = _57 * TEXCOORD.y;
  _62 = WaveReadLaneFirst(_materialIndex);
  _70 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_62 < (uint)170000), _62, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._wobbleSpeed);
  _71 = _70 * _time.x;
  _108 = WaveReadLaneFirst(_materialIndex);
  _116 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_108 < (uint)170000), _108, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeStrength);
  _117 = max(_116, 0.0f);
  if (!(_117 <= 0.0f)) {
    _120 = WaveReadLaneFirst(_materialIndex);
    _128 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_120 < (uint)170000), _120, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeScale);
    _129 = max(_128, 0.001f);
    _132 = WaveReadLaneFirst(_materialIndex);
    _140 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_132 < (uint)170000), _132, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeSpeed);
    _141 = _140 * _time.x;
    _144 = (_47 * 1.65f) * _129;
    _145 = (TEXCOORD.y * 0.72f) * _129;
    _158 = WaveReadLaneFirst(_materialIndex);
    _166 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_158 < (uint)170000), _158, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._heatHazeLookupTexture);
    _173 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_166 < (uint)65000), _166, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_141 * 0.035f) + _144), ((_141 * 0.22f) + _145)));
    _177 = WaveReadLaneFirst(_materialIndex);
    _185 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_177 < (uint)170000), _177, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._heatHazeLookupTexture);
    _192 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_185 < (uint)65000), _185, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_144 * 1.73f) + 0.37f) - (_141 * 0.027f)), (((_145 * 1.21f) + 0.61f) + (_141 * 0.16f))));
    // [sem: expr_sat]
    _214 = saturate((min(min(TEXCOORD.x, (1.0f - TEXCOORD.x)), min(TEXCOORD.y, (1.0f - TEXCOORD.y))) + -0.015f) * 15.384616f);
    _219 = ((_214 * _214) * ((_192.z * 0.32f) + (_173.z * 0.68f))) * (3.0f - (_214 * 2.0f));
    _220 = _219 * _117;
    _226 = _219;
    _227 = (((((_173.x * 1.36f) + -1.0f) + (_192.x * 0.64f)) * 1.3f) * _220);
    _228 = (((((_173.y * 1.36f) + -1.0f) + (_192.y * 0.64f)) * 0.78f) * _220);
  } else {
    _226 = 0.0f;
    _227 = 0.0f;
    _228 = 0.0f;
  }
  _229 = WaveReadLaneFirst(_materialIndex);
  _237 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_229 < (uint)170000), _229, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._wobbleStrength);
  _246 = min(max(((_227 + TEXCOORD.x) + (_237 * (((sin((((TEXCOORD.y + _47) * 10.0f) * _57) - (_71 * 1.35f)) * 0.35f) + sin((_71 * 2.0f) + (_59 * 18.0f))) + (cos((_59 * 7.0f) - (_71 * 1.1f)) * 0.2f)))), 0.001f), 0.999f);
  _247 = min(max(((_228 + TEXCOORD.y) + (_237 * (((sin((_71 * 1.2f) + (((_47 - TEXCOORD.y) * 9.0f) * _57)) * 0.3f) + cos((_58 * 16.0f) - (_71 * 1.75f))) + (sin((_71 * 1.05f) + (_58 * 6.0f)) * 0.18f)))), 0.001f), 0.999f);
  _253 = (_246 * 2.0f) + -1.0f;
  _254 = _247 * 2.0f;
  _255 = 1.0f - _254;
  _256 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_246, _247))).x));
  _278 = mad((_invViewProj[0].y), _255, ((_invViewProj[0].x) * _253));
  _282 = mad((_invViewProj[1].y), _255, ((_invViewProj[1].x) * _253));
  _286 = mad((_invViewProj[2].y), _255, ((_invViewProj[2].x) * _253));
  _290 = mad((_invViewProj[3].y), _255, ((_invViewProj[3].x) * _253));
  _292 = mad((_invViewProj[3].z), _256, _290) + (_invViewProj[3].w);
  _293 = (mad((_invViewProj[0].z), _256, _278) + (_invViewProj[0].w)) / _292;
  _295 = (mad((_invViewProj[2].z), _256, _286) + (_invViewProj[2].w)) / _292;
  _303 = ((_invViewProj[3].w) + (_invViewProj[3].z)) + _290;
  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _317 = __3__36__0__0__g_gbufferNormal.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _246) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _247) + -0.5f))), 0));
  _330 = (saturate(_317.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _331 = (saturate(_317.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _332 = (saturate(_317.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _334 = rsqrt(dot(float3(_330, _331, _332), float3(_330, _331, _332)));  // [sem: invLength]
  if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
    _352 = _sunDirection.x;
    _353 = _sunDirection.y;
    _354 = _sunDirection.z;
  } else {
    _352 = _moonDirection.x;
    _353 = _moonDirection.y;
    _354 = _moonDirection.z;
  }
  _356 = rsqrt(dot(float3(_352, _353, _354), float3(_352, _353, _354)));  // [sem: invLength]
  _357 = _356 * _352;
  _358 = _356 * _353;
  _359 = _356 * _354;
  _362 = saturate((_358 + -0.15f) * 3.3333335f);  // [sem: expr_sat]
  _366 = (_362 * _362) * (3.0f - (_362 * 2.0f));
  _368 = saturate(dot(float3((_334 * _330), (_334 * _331), (_332 * _334)), float3(_357, _358, _359)));  // [sem: expr_sat]
  _369 = WaveReadLaneFirst(_materialIndex);
  _377 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_369 < (uint)170000), _369, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterTintColor);
  _380 = (float)((uint)((uint)(((uint)((uint)(_377)) >> 16) & 255)));
  _383 = (float)((uint)((uint)(((uint)((uint)(_377)) >> 8) & 255)));
  _385 = (float)((uint)((uint)(_377 & 255)));
  _413 = ((((_invViewProj[1].w) + (_invViewProj[1].z)) + _282) / _303) + -0.006f;
  _418 = (((_278 + (_invViewProj[0].z)) + (_invViewProj[0].w)) / _303) - _viewPos.x;
  _420 = ((((_invViewProj[2].w) + (_invViewProj[2].z)) + _286) / _303) - _viewPos.z;
  _424 = (_waterDepthFieldSize.x + -1.0f) * 0.5f;
  _427 = abs(_418);
  _429 = abs(_420);
  if ((((_427 - _424) < 0.0f) && (((1.0f - _waterDepthMinMax.z) + abs(_413 - _viewPos.y)) < 0.0f)) && ((_429 - _424) < 0.0f)) {
    _443 = _waterDepthFieldSize.w * _420;
    _444 = (_waterDepthFieldSize.z * _418) + 0.5f;
    _445 = _443 + 0.5f;
    if (!((_445 >= 1.0f) || ((_445 <= 0.0f) || ((_444 <= 0.0f) || (_444 >= 1.0f))))) {
      _454 = 0.5f - _443;
      // [sem: _3__36__0__0__g_waterDepthBottom_sampleLod]
      _457 = __3__36__0__0__g_waterDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_444, _454), 0.0f);
      _469 = _waterDepthMinMax.y - _waterDepthMinMax.x;
      _471 = (_viewPos.y + _waterDepthMinMax.z) - _waterDepthMinMax.x;
      if ((_427 < (_waterDepthDetailFieldSize.x * 0.5f)) && (_429 < (_waterDepthDetailFieldSize.z * 0.5f))) {
        _487 = ((__3__36__0__0__g_waterDepthTopDetail.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_waterDepthDetailFieldSize.z * _418) + 0.5f), (0.5f - (_waterDepthDetailFieldSize.w * _420))), 0.0f)).x);
      } else {
        _487 = ((__3__36__0__0__g_waterDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_444, _454), 0.0f)).x);
      }
      _493 = select((_487 < 1.0f), (_471 - (_487 * _469)), -10000.0f);
      _495 = select((_457.x < 1.0f), (_471 - (_469 * _457.x)), -10000.0f);
      // [sem: _3__36__0__0__g_airPocketDepthTop_sampleLod]
      _497 = __3__36__0__0__g_airPocketDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_444, _454), 0.0f);
      // [sem: _3__36__0__0__g_airPocketDepthBottom_sampleLod]
      _500 = __3__36__0__0__g_airPocketDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_444, _454), 0.0f);
      _507 = select((_497.x < 1.0f), (_471 - (_497.x * _469)), -10000.0f);
      _509 = select((_500.x < 1.0f), (_471 - (_500.x * _469)), -10000.0f);
      if (((_413 >= _495) && (_413 < _493)) && ((_413 > _507) || (_413 < _509))) {
        _522 = select((_509 < _495), 0.0f, 1.0f) * select((_493 < _507), 0.0f, 1.0f);
        _535 = (_522 * ((_509 - _493) + ((_493 - _509) * select((_413 < _507), 0.0f, 1.0f)))) + _493;
        _540 = (((select((_493 < _509), 0.0f, 1.0f) * select((_507 < _493), 0.0f, 1.0f)) * (1.0f - _522)) * (_509 - _535)) + _535;
        _547 = true;
        _548 = select((abs(_540 - _493) < 0.0001f), 0.5f, 16.0f);
        _549 = (_413 - _540);
      } else {
        _547 = false;
        _548 = 16.0f;
        _549 = 0.0f;
      }
    } else {
      _547 = false;
      _548 = 16.0f;
      _549 = 0.0f;
    }
  } else {
    _547 = false;
    _548 = 16.0f;
    _549 = 0.0f;
  }
  if (_547) {
    _552 = saturate(_549 * -166.66667f);  // [sem: expr_sat]
    _563 = ((_552 * (select(((_380 * 0.003921569f) < 0.04045f), (_380 * 0.000303527f), exp2(log2((_380 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f)) + 1.0f);
    _564 = ((_552 * (select(((_383 * 0.003921569f) < 0.04045f), (_383 * 0.000303527f), exp2(log2((_383 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f)) + 1.0f);
    _565 = ((_552 * (select(((_385 * 0.003921569f) < 0.04045f), (_385 * 0.000303527f), exp2(log2((_385 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f)) + 1.0f);
  } else {
    _563 = 1.0f;
    _564 = 1.0f;
    _565 = 1.0f;
  }
  if ((_368 <= 0.0f) || (!_547)) {
    _572 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    if (_547) {
      _577 = dot(float3(_572.x, _572.y, _572.z), float3(0.2126f, 0.7152f, 0.0722f));
      _578 = WaveReadLaneFirst(_materialIndex);
      _586 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_578 < (uint)170000), _578, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
      _587 = max(_586, 0.0f);
      _598 = ((_587 * (_572.x - _577)) + _577);
      _599 = ((_587 * (_572.y - _577)) + _577);
      _600 = ((_587 * (_572.z - _577)) + _577);
    } else {
      _598 = _572.x;
      _599 = _572.y;
      _600 = _572.z;
    }
    _604 = (_598 * _563) + _38.x;
    _605 = (_599 * _564) + _38.y;
    _606 = (_600 * _565) + _38.z;
    if (_547) {
      _610 = 1.0f - saturate(_549 * -25.0f);
      if (_610 > 0.0f) {
        _617 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _621 = dot(float3(_617.x, _617.y, _617.z), float3(0.2126f, 0.7152f, 0.0722f));
        _622 = WaveReadLaneFirst(_materialIndex);
        _630 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_622 < (uint)170000), _622, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _631 = max(_630, 0.0f);
        _638 = _srcTargetSizeAndInv.w * 1.3846154f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _642 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_638 + TEXCOORD.y)));
        _646 = dot(float3(_642.x, _642.y, _642.z), float3(0.2126f, 0.7152f, 0.0722f));
        _647 = WaveReadLaneFirst(_materialIndex);
        _655 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_647 < (uint)170000), _647, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _656 = max(_655, 0.0f);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _666 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _638)));
        _670 = dot(float3(_666.x, _666.y, _666.z), float3(0.2126f, 0.7152f, 0.0722f));
        _671 = WaveReadLaneFirst(_materialIndex);
        _679 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_671 < (uint)170000), _671, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _680 = max(_679, 0.0f);
        _687 = _srcTargetSizeAndInv.w * 3.2307692f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _691 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_687 + TEXCOORD.y)));
        _695 = dot(float3(_691.x, _691.y, _691.z), float3(0.2126f, 0.7152f, 0.0722f));
        _696 = WaveReadLaneFirst(_materialIndex);
        _704 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_696 < (uint)170000), _696, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _705 = max(_704, 0.0f);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _715 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _687)));
        _719 = dot(float3(_715.x, _715.y, _715.z), float3(0.2126f, 0.7152f, 0.0722f));
        _720 = WaveReadLaneFirst(_materialIndex);
        _728 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_720 < (uint)170000), _720, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _729 = max(_728, 0.0f);
        _741 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _745 = dot(float3(_741.x, _741.y, _741.z), float3(0.2126f, 0.7152f, 0.0722f));
        _746 = WaveReadLaneFirst(_materialIndex);
        _754 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_746 < (uint)170000), _746, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _755 = max(_754, 0.0f);
        _762 = _srcTargetSizeAndInv.z * 0.8307693f;
        _763 = _srcTargetSizeAndInv.w * 2.7692308f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _768 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_762 + TEXCOORD.x), (_763 + TEXCOORD.y)));
        _772 = dot(float3(_768.x, _768.y, _768.z), float3(0.2126f, 0.7152f, 0.0722f));
        _773 = WaveReadLaneFirst(_materialIndex);
        _781 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_773 < (uint)170000), _773, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _782 = max(_781, 0.0f);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _793 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _762), (TEXCOORD.y - _763)));
        _797 = dot(float3(_793.x, _793.y, _793.z), float3(0.2126f, 0.7152f, 0.0722f));
        _798 = WaveReadLaneFirst(_materialIndex);
        _806 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_798 < (uint)170000), _798, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _807 = max(_806, 0.0f);
        _814 = _srcTargetSizeAndInv.z * 1.9384615f;
        _815 = _srcTargetSizeAndInv.w * 6.4615383f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _820 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_814 + TEXCOORD.x), (_815 + TEXCOORD.y)));
        _824 = dot(float3(_820.x, _820.y, _820.z), float3(0.2126f, 0.7152f, 0.0722f));
        _825 = WaveReadLaneFirst(_materialIndex);
        _833 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_825 < (uint)170000), _825, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _834 = max(_833, 0.0f);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _845 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _814), (TEXCOORD.y - _815)));
        _849 = dot(float3(_845.x, _845.y, _845.z), float3(0.2126f, 0.7152f, 0.0722f));
        _850 = WaveReadLaneFirst(_materialIndex);
        _858 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_850 < (uint)170000), _850, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _859 = max(_858, 0.0f);
        _866 = _719 + _695;
        _874 = _670 + _646;
        _882 = _745 + _621;
        _927 = sin(_610 * 3.1415927f);
        _937 = saturate(exp2(log2(_927 * ((_610 * 3.0f) + 1.0f))));  // [sem: expr_sat]
        _939 = 0.35f - (saturate(pow(_927, 5.0f)) * 0.14999999f);
        _2139 = (((((_939 * _563) * (((((((((_874 + (_656 * (_642.x - _646))) + (_680 * (_666.x - _670))) + _772) + (_782 * (_768.x - _772))) + _797) + (_807 * (_793.x - _797))) * 0.31621623f) + (((_882 + (_631 * (_617.x - _621))) + (_755 * (_741.x - _745))) * 0.22702703f)) + (((((((_866 + (_705 * (_691.x - _695))) + (_729 * (_715.x - _719))) + _824) + (_834 * (_820.x - _824))) + _849) + (_859 * (_845.x - _849))) * 0.07027027f))) - _604) * _937) + _604);
        _2140 = (((((_939 * _564) * (((((((((_874 + (_656 * (_642.y - _646))) + (_680 * (_666.y - _670))) + _772) + (_782 * (_768.y - _772))) + _797) + (_807 * (_793.y - _797))) * 0.31621623f) + (((_882 + (_631 * (_617.y - _621))) + (_755 * (_741.y - _745))) * 0.22702703f)) + (((((((_866 + (_705 * (_691.y - _695))) + (_729 * (_715.y - _719))) + _824) + (_834 * (_820.y - _824))) + _849) + (_859 * (_845.y - _849))) * 0.07027027f))) - _605) * _937) + _605);
        _2141 = (((((_939 * _565) * (((((((((_874 + (_656 * (_642.z - _646))) + (_680 * (_666.z - _670))) + _772) + (_782 * (_768.z - _772))) + _797) + (_807 * (_793.z - _797))) * 0.31621623f) + (((_882 + (_631 * (_617.z - _621))) + (_755 * (_741.z - _745))) * 0.22702703f)) + (((((((_866 + (_705 * (_691.z - _695))) + (_729 * (_715.z - _719))) + _824) + (_834 * (_820.z - _824))) + _849) + (_859 * (_845.z - _849))) * 0.07027027f))) - _606) * _937) + _606);
      } else {
        _2139 = _604;
        _2140 = _605;
        _2141 = _606;
      }
    } else {
      _2139 = _604;
      _2140 = _605;
      _2141 = _606;
    }
  } else {
    _956 = WaveReadLaneFirst(_materialIndex);
    _964 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_956 < (uint)170000), _956, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._chromaticAberrationStrength);
    _965 = max(_964, 0.0f);
    if (!(_965 <= 0.0f)) {
      _1001 = (_965 * 0.00046296295f) * _bufferSizeAndInvSize.y;
      _1002 = _254 + -1.0f;
      _1007 = (_bufferSizeAndInvSize.x / max(_bufferSizeAndInvSize.y, 1.0f)) * _253;
      _1011 = sqrt((_1007 * _1007) + (_1002 * _1002));
      _1012 = (_1011 > 0.0001f);
      _1013 = WaveReadLaneFirst(_materialIndex);
      _1021 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1013 < (uint)170000), _1013, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._chromaticAberrationFalloff);
      _1023 = saturate(saturate(max(abs(_253), abs(_1002))));  // [sem: expr_sat]
      // [sem: expr_sat]
      _1041 = saturate((min((min(_246, (1.0f - _246)) * _bufferSizeAndInvSize.x), (min(_247, (1.0f - _247)) * _bufferSizeAndInvSize.y)) + -0.5f) / (_1001 + 0.5f));
      _1046 = ((_1041 * _1041) * exp2(log2((_1023 * _1023) * (3.0f - (_1023 * 2.0f))) * max(_1021, 0.001f))) * (3.0f - (_1041 * 2.0f));
      if (!(_1046 <= 0.0001f)) {
        _1078 = _1046 * _1001;
        _1080 = (_1078 * _bufferSizeAndInvSize.z) * select(_1012, (_1007 / _1011), 0.0f);
        _1082 = (_1078 * _bufferSizeAndInvSize.w) * select(_1012, (_1002 / _1011), 0.0f);
        _1083 = _bufferSizeAndInvSize.z * 0.5f;
        _1084 = _bufferSizeAndInvSize.w * 0.5f;
        _1085 = 1.0f - _1083;
        _1086 = 1.0f - _1084;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1101 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_246 - (_1080 * 2.0f)), _1083), _1085), min(max((_247 - (_1082 * 2.0f)), _1084), _1086)));
        _1105 = dot(float3(_1101.x, _1101.y, _1101.z), float3(0.2126f, 0.7152f, 0.0722f));
        _1106 = WaveReadLaneFirst(_materialIndex);
        _1114 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1106 < (uint)170000), _1106, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1123 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max(_246, _1083), _1085), min(max(_247, _1084), _1086)));
        _1127 = dot(float3(_1123.x, _1123.y, _1123.z), float3(0.2126f, 0.7152f, 0.0722f));
        _1128 = WaveReadLaneFirst(_materialIndex);
        _1136 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1128 < (uint)170000), _1128, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _1137 = max(_1136, 0.0f);
        _1144 = (_1137 * (_1123.x - _1127)) + _1127;
        _1145 = (_1137 * (_1123.y - _1127)) + _1127;
        _1146 = (_1137 * (_1123.z - _1127)) + _1127;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1147 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_246 - _1080), _1083), _1085), min(max((_247 - _1082), _1084), _1086)));
        _1151 = dot(float3(_1147.x, _1147.y, _1147.z), float3(0.2126f, 0.7152f, 0.0722f));
        _1152 = WaveReadLaneFirst(_materialIndex);
        _1160 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1152 < (uint)170000), _1152, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _1166 = ((((max(_1114, 0.0f) * (_1101.x - _1105)) + _1105) - _1144) * 0.65f) + _1144;
        _1170 = (((_1151 - _1146) + (max(_1160, 0.0f) * (_1147.z - _1151))) * 0.65f) + _1146;
        _1177 = min(max(((dot(float3(_1144, _1145, _1146), float3(0.2126f, 0.7152f, 0.0722f)) + 0.0001f) / (dot(float3(_1166, _1145, _1170), float3(0.2126f, 0.7152f, 0.0722f)) + 0.0001f)), 0.75f), 1.25f);
        _1182 = (_1177 * _1166);
        _1183 = (_1177 * _1145);
        _1184 = (_1177 * _1170);
      } else {
        _1049 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_246, _247));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _1053 = dot(float3(_1049.x, _1049.y, _1049.z), float3(0.2126f, 0.7152f, 0.0722f));
        _1054 = WaveReadLaneFirst(_materialIndex);
        _1062 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1054 < (uint)170000), _1054, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _1063 = max(_1062, 0.0f);
        _1182 = ((_1063 * (_1049.x - _1053)) + _1053);
        _1183 = ((_1063 * (_1049.y - _1053)) + _1053);
        _1184 = ((_1063 * (_1049.z - _1053)) + _1053);
      }
    } else {
      _968 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_246, _247));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _972 = dot(float3(_968.x, _968.y, _968.z), float3(0.2126f, 0.7152f, 0.0722f));
      _973 = WaveReadLaneFirst(_materialIndex);
      _981 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_973 < (uint)170000), _973, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
      _982 = max(_981, 0.0f);
      _1182 = ((_982 * (_968.x - _972)) + _972);
      _1183 = ((_982 * (_968.y - _972)) + _972);
      _1184 = ((_982 * (_968.z - _972)) + _972);
    }
    _1188 = sqrt((_228 * _228) + (_227 * _227));
    if (!((_226 <= 0.0001f) || (_1188 <= 1e-06f))) {
      _1193 = WaveReadLaneFirst(_materialIndex);
      _1201 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1193 < (uint)170000), _1193, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeStrength);
      _1206 = max(_1201, 0.0f) * _226;
      _1209 = min(((_1206 * 0.04f) + (_1188 * 0.7f)), 0.0028f);
      _1210 = _1209 * (_227 / _1188);
      _1211 = _1209 * (_228 / _1188);
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _1226 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_1210 + _246), 0.001f), 0.999f), min(max((_1211 + _247), 0.001f), 0.999f)));
      _1230 = dot(float3(_1226.x, _1226.y, _1226.z), float3(0.2126f, 0.7152f, 0.0722f));
      _1231 = WaveReadLaneFirst(_materialIndex);
      _1239 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1231 < (uint)170000), _1231, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
      _1240 = max(_1239, 0.0f);
      _1247 = (_1240 * (_1226.x - _1230)) + _1230;
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _1251 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_246 - _1210), 0.001f), 0.999f), min(max((_247 - _1211), 0.001f), 0.999f)));
      _1255 = dot(float3(_1251.x, _1251.y, _1251.z), float3(0.2126f, 0.7152f, 0.0722f));
      _1256 = WaveReadLaneFirst(_materialIndex);
      _1264 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1256 < (uint)170000), _1256, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
      _1265 = max(_1264, 0.0f);
      _1272 = (_1265 * (_1251.z - _1255)) + _1255;
      _1275 = min(max((_1206 * 18.0f), 0.0f), 0.14f);
      _1277 = 1.0f - (_1275 * 2.0f);
      _1290 = (_1277 * _1182) + (((_1255 + _1247) + (_1265 * (_1251.x - _1255))) * _1275);
      _1291 = (_1277 * _1183) + (((((_1240 * (_1226.y - _1230)) + _1230) + _1255) + (_1265 * (_1251.y - _1255))) * _1275);
      _1292 = (_1277 * _1184) + ((((_1240 * (_1226.z - _1230)) + _1230) + _1272) * _1275);
      _1293 = _1275 * 0.45f;
      _1304 = (lerp(_1290, _1247, _1293));  // [sem: blended]
      _1305 = (lerp(_1291, _1183, _1293));  // [sem: blended]
      _1306 = (lerp(_1292, _1272, _1293));  // [sem: blended]
    } else {
      _1304 = _1182;  // [sem: blended]
      _1305 = _1183;  // [sem: blended]
      _1306 = _1184;  // [sem: blended]
    }
    if (!(_358 <= 0.0f)) {
      _1313 = (_seaBaseline - ((mad((_invViewProj[1].z), _256, _282) + (_invViewProj[1].w)) / _292)) / max(_358, 0.05f);
      _1319 = ((_1313 * _357) + _293);
      _1320 = ((_1313 * _359) + _295);
    } else {
      _1319 = _293;
      _1320 = _295;
    }
    _1321 = WaveReadLaneFirst(_materialIndex);
    _1329 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1321 < (uint)170000), _1321, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSpeed);
    _1330 = WaveReadLaneFirst(_materialIndex);
    _1338 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1330 < (uint)170000), _1330, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsWorldScale);
    _1339 = max(_1338, 0.001f);
    _1340 = 1.0f / _1339;
    _1343 = _time.x * _1329;
    _1346 = _1340 * _1320;
    _1347 = (_1340 * _1319) + (_1343 * 0.75f);
    _1348 = -1.0f / _1339;
    _1350 = _1348 * _1320;
    _1351 = _1343 + (_1348 * _1319);
    _1352 = ddx_coarse(_1347);
    _1353 = ddx_coarse(_1346);
    _1354 = ddy_coarse(_1347);
    _1355 = ddy_coarse(_1346);
    _1356 = ddx_coarse(_1351);
    _1357 = ddx_coarse(_1350);
    _1358 = ddy_coarse(_1351);
    _1359 = ddy_coarse(_1350);
    _1360 = WaveReadLaneFirst(_materialIndex);
    _1368 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1360 < (uint)170000), _1360, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
    _1369 = _1368 + _1347;
    _1371 = _1346 - _1368;
    _1373 = WaveReadLaneFirst(_materialIndex);
    _1381 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1373 < (uint)170000), _1373, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1390 = WaveReadLaneFirst(_materialIndex);
    _1398 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1390 < (uint)170000), _1390, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1407 = WaveReadLaneFirst(_materialIndex);
    _1415 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1407 < (uint)170000), _1407, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1424 = WaveReadLaneFirst(_materialIndex);
    _1432 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1424 < (uint)170000), _1424, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
    _1433 = _1432 + _1351;
    _1435 = _1350 - _1432;
    _1437 = WaveReadLaneFirst(_materialIndex);
    _1445 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1437 < (uint)170000), _1437, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1454 = WaveReadLaneFirst(_materialIndex);
    _1462 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1454 < (uint)170000), _1454, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1471 = WaveReadLaneFirst(_materialIndex);
    _1479 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1471 < (uint)170000), _1471, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1491 = WaveReadLaneFirst(_materialIndex);
    _1499 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1491 < (uint)170000), _1491, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSmallWorldScale);
    _1500 = max(_1499, 0.001f);
    _1501 = 1.0f / _1500;
    _1504 = _time.x * _1329;
    _1509 = ((_1504 * 1.15f) + 0.37f) + (_1501 * _1319);
    _1510 = (_1501 * _1320) + 0.61f;
    _1511 = -1.0f / _1500;
    _1516 = ((_1504 * 1.35f) + -0.61f) + (_1511 * _1319);
    _1517 = (_1511 * _1320) + -0.37f;
    _1518 = ddx_coarse(_1509);
    _1519 = ddx_coarse(_1510);
    _1520 = ddy_coarse(_1509);
    _1521 = ddy_coarse(_1510);
    _1522 = ddx_coarse(_1516);
    _1523 = ddx_coarse(_1517);
    _1524 = ddy_coarse(_1516);
    _1525 = ddy_coarse(_1517);
    _1526 = WaveReadLaneFirst(_materialIndex);
    _1534 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1526 < (uint)170000), _1526, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
    _1535 = _1534 + _1509;
    _1537 = _1510 - _1534;
    _1539 = WaveReadLaneFirst(_materialIndex);
    _1547 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1539 < (uint)170000), _1539, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1556 = WaveReadLaneFirst(_materialIndex);
    _1564 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1556 < (uint)170000), _1556, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1573 = WaveReadLaneFirst(_materialIndex);
    _1581 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1573 < (uint)170000), _1573, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1590 = WaveReadLaneFirst(_materialIndex);
    _1598 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1590 < (uint)170000), _1590, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
    _1599 = _1598 + _1516;
    _1601 = _1517 - _1598;
    _1603 = WaveReadLaneFirst(_materialIndex);
    _1611 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1603 < (uint)170000), _1603, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1620 = WaveReadLaneFirst(_materialIndex);
    _1628 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1620 < (uint)170000), _1620, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1637 = WaveReadLaneFirst(_materialIndex);
    _1645 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1637 < (uint)170000), _1637, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1657 = WaveReadLaneFirst(_materialIndex);
    _1665 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1657 < (uint)170000), _1657, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSmallStrength);
    _1672 = WaveReadLaneFirst(_materialIndex);
    _1680 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1672 < (uint)170000), _1672, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTint);
    _1683 = (float)((uint)((uint)(((uint)((uint)(_1680)) >> 16) & 255)));
    _1686 = (float)((uint)((uint)(((uint)((uint)(_1680)) >> 8) & 255)));
    _1688 = (float)((uint)((uint)(_1680 & 255)));
    _1716 = WaveReadLaneFirst(_materialIndex);
    _1724 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1716 < (uint)170000), _1716, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsStrength);
    _1726 = WaveReadLaneFirst(_materialIndex);
    _1734 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1726 < (uint)170000), _1726, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsLuminanceMaskStrength);
    _1739 = (min(max(_1734, 0.0f), 1.0f) * (dot(float3(_1304, _1305, _1306), float3(0.2126f, 0.7152f, 0.0722f)) + -1.0f)) + 1.0f;
    _1740 = abs(_549);
    _1750 = (saturate(_1740 * 2.0f) * _368) * exp2(log2(1.0f - saturate(_1740 * 0.033333335f)) * _548);
    _1757 = saturate((max((_nearFarProj.x / _256), 0.0f) + -40.0f) * 0.025f);  // [sem: expr_sat]
    _1762 = 1.0f - ((_1757 * _1757) * (3.0f - (_1757 * 2.0f)));
    _1768 = _1724 * ((_366 * _366) * 10.0f);
    _1785 = ((_1304 * _563) + _38.x) + (((((_1768 * ((_1665 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1547 < (uint)65000), _1547, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1535, (_1534 + _1510)), float2(_1518, _1519), float2(_1520, _1521), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1611 < (uint)65000), _1611, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1599, (_1598 + _1517)), float2(_1522, _1523), float2(_1524, _1525), int2(0, 0)))).x))) + min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1381 < (uint)65000), _1381, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1369, (_1368 + _1346)), float2(_1352, _1353), float2(_1354, _1355), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1445 < (uint)65000), _1445, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1433, (_1432 + _1350)), float2(_1356, _1357), float2(_1358, _1359), int2(0, 0)))).x)))) * select(((_1683 * 0.003921569f) < 0.04045f), (_1683 * 0.000303527f), exp2(log2((_1683 * 0.003717127f) + 0.052132703f) * 2.4f))) * _1739) * _1750) * _1762);
    _1787 = ((_1305 * _564) + _38.y) + (((((_1768 * ((_1665 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1564 < (uint)65000), _1564, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1535, _1537), float2(_1518, _1519), float2(_1520, _1521), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1628 < (uint)65000), _1628, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1599, _1601), float2(_1522, _1523), float2(_1524, _1525), int2(0, 0)))).x))) + min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1398 < (uint)65000), _1398, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1369, _1371), float2(_1352, _1353), float2(_1354, _1355), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1462 < (uint)65000), _1462, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1433, _1435), float2(_1356, _1357), float2(_1358, _1359), int2(0, 0)))).x)))) * select(((_1686 * 0.003921569f) < 0.04045f), (_1686 * 0.000303527f), exp2(log2((_1686 * 0.003717127f) + 0.052132703f) * 2.4f))) * _1739) * _1750) * _1762);
    _1789 = ((_1306 * _565) + _38.z) + (((((_1768 * ((_1665 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1581 < (uint)65000), _1581, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_1509 - _1534), _1537), float2(_1518, _1519), float2(_1520, _1521), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1645 < (uint)65000), _1645, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_1516 - _1598), _1601), float2(_1522, _1523), float2(_1524, _1525), int2(0, 0)))).x))) + min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1415 < (uint)65000), _1415, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_1347 - _1368), _1371), float2(_1352, _1353), float2(_1354, _1355), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1479 < (uint)65000), _1479, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_1351 - _1432), _1435), float2(_1356, _1357), float2(_1358, _1359), int2(0, 0)))).x)))) * select(((_1688 * 0.003921569f) < 0.04045f), (_1688 * 0.000303527f), exp2(log2((_1688 * 0.003717127f) + 0.052132703f) * 2.4f))) * _1739) * _1750) * _1762);
    if (_547) {
      _1793 = 1.0f - saturate(_549 * -25.0f);
      if (_1793 > 0.0f) {
        _1800 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _1804 = dot(float3(_1800.x, _1800.y, _1800.z), float3(0.2126f, 0.7152f, 0.0722f));
        _1805 = WaveReadLaneFirst(_materialIndex);
        _1813 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1805 < (uint)170000), _1805, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _1814 = max(_1813, 0.0f);
        _1821 = _srcTargetSizeAndInv.w * 1.3846154f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1825 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_1821 + TEXCOORD.y)));
        _1829 = dot(float3(_1825.x, _1825.y, _1825.z), float3(0.2126f, 0.7152f, 0.0722f));
        _1830 = WaveReadLaneFirst(_materialIndex);
        _1838 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1830 < (uint)170000), _1830, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _1839 = max(_1838, 0.0f);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1849 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _1821)));
        _1853 = dot(float3(_1849.x, _1849.y, _1849.z), float3(0.2126f, 0.7152f, 0.0722f));
        _1854 = WaveReadLaneFirst(_materialIndex);
        _1862 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1854 < (uint)170000), _1854, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _1863 = max(_1862, 0.0f);
        _1870 = _srcTargetSizeAndInv.w * 3.2307692f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1874 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_1870 + TEXCOORD.y)));
        _1878 = dot(float3(_1874.x, _1874.y, _1874.z), float3(0.2126f, 0.7152f, 0.0722f));
        _1879 = WaveReadLaneFirst(_materialIndex);
        _1887 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1879 < (uint)170000), _1879, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _1888 = max(_1887, 0.0f);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1898 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _1870)));
        _1902 = dot(float3(_1898.x, _1898.y, _1898.z), float3(0.2126f, 0.7152f, 0.0722f));
        _1903 = WaveReadLaneFirst(_materialIndex);
        _1911 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1903 < (uint)170000), _1903, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _1912 = max(_1911, 0.0f);
        _1924 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _1928 = dot(float3(_1924.x, _1924.y, _1924.z), float3(0.2126f, 0.7152f, 0.0722f));
        _1929 = WaveReadLaneFirst(_materialIndex);
        _1937 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1929 < (uint)170000), _1929, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _1938 = max(_1937, 0.0f);
        _1945 = _srcTargetSizeAndInv.z * 0.8307693f;
        _1946 = _srcTargetSizeAndInv.w * 2.7692308f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1951 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1945 + TEXCOORD.x), (_1946 + TEXCOORD.y)));
        _1955 = dot(float3(_1951.x, _1951.y, _1951.z), float3(0.2126f, 0.7152f, 0.0722f));
        _1956 = WaveReadLaneFirst(_materialIndex);
        _1964 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1956 < (uint)170000), _1956, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _1965 = max(_1964, 0.0f);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1976 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _1945), (TEXCOORD.y - _1946)));
        _1980 = dot(float3(_1976.x, _1976.y, _1976.z), float3(0.2126f, 0.7152f, 0.0722f));
        _1981 = WaveReadLaneFirst(_materialIndex);
        _1989 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1981 < (uint)170000), _1981, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _1990 = max(_1989, 0.0f);
        _1997 = _srcTargetSizeAndInv.z * 1.9384615f;
        _1998 = _srcTargetSizeAndInv.w * 6.4615383f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _2003 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1997 + TEXCOORD.x), (_1998 + TEXCOORD.y)));
        _2007 = dot(float3(_2003.x, _2003.y, _2003.z), float3(0.2126f, 0.7152f, 0.0722f));
        _2008 = WaveReadLaneFirst(_materialIndex);
        _2016 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2008 < (uint)170000), _2008, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _2017 = max(_2016, 0.0f);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _2028 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _1997), (TEXCOORD.y - _1998)));
        _2032 = dot(float3(_2028.x, _2028.y, _2028.z), float3(0.2126f, 0.7152f, 0.0722f));
        _2033 = WaveReadLaneFirst(_materialIndex);
        _2041 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2033 < (uint)170000), _2033, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _2042 = max(_2041, 0.0f);
        _2049 = _1902 + _1878;
        _2057 = _1853 + _1829;
        _2065 = _1928 + _1804;
        _2110 = sin(_1793 * 3.1415927f);
        _2120 = saturate(exp2(log2(_2110 * ((_1793 * 3.0f) + 1.0f))));  // [sem: expr_sat]
        _2122 = 0.35f - (saturate(pow(_2110, 5.0f)) * 0.14999999f);
        _2139 = (((((_2122 * _563) * (((((((((_2057 + (_1839 * (_1825.x - _1829))) + (_1863 * (_1849.x - _1853))) + _1955) + (_1965 * (_1951.x - _1955))) + _1980) + (_1990 * (_1976.x - _1980))) * 0.31621623f) + (((_2065 + (_1814 * (_1800.x - _1804))) + (_1938 * (_1924.x - _1928))) * 0.22702703f)) + (((((((_2049 + (_1888 * (_1874.x - _1878))) + (_1912 * (_1898.x - _1902))) + _2007) + (_2017 * (_2003.x - _2007))) + _2032) + (_2042 * (_2028.x - _2032))) * 0.07027027f))) - _1785) * _2120) + _1785);
        _2140 = (((((_2122 * _564) * (((((((((_2057 + (_1839 * (_1825.y - _1829))) + (_1863 * (_1849.y - _1853))) + _1955) + (_1965 * (_1951.y - _1955))) + _1980) + (_1990 * (_1976.y - _1980))) * 0.31621623f) + (((_2065 + (_1814 * (_1800.y - _1804))) + (_1938 * (_1924.y - _1928))) * 0.22702703f)) + (((((((_2049 + (_1888 * (_1874.y - _1878))) + (_1912 * (_1898.y - _1902))) + _2007) + (_2017 * (_2003.y - _2007))) + _2032) + (_2042 * (_2028.y - _2032))) * 0.07027027f))) - _1787) * _2120) + _1787);
        _2141 = (((((_2122 * _565) * (((((((((_2057 + (_1839 * (_1825.z - _1829))) + (_1863 * (_1849.z - _1853))) + _1955) + (_1965 * (_1951.z - _1955))) + _1980) + (_1990 * (_1976.z - _1980))) * 0.31621623f) + (((_2065 + (_1814 * (_1800.z - _1804))) + (_1938 * (_1924.z - _1928))) * 0.22702703f)) + (((((((_2049 + (_1888 * (_1874.z - _1878))) + (_1912 * (_1898.z - _1902))) + _2007) + (_2017 * (_2003.z - _2007))) + _2032) + (_2042 * (_2028.z - _2032))) * 0.07027027f))) - _1789) * _2120) + _1789);
      } else {
        _2139 = _1785;
        _2140 = _1787;
        _2141 = _1789;
      }
    } else {
      _2139 = _1785;
      _2140 = _1787;
      _2141 = _1789;
    }
  }
  _2142 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _2155 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _2142, 0)))).x) & 127)))) + 0.5f);
  } else {
    _2155 = 1.0f;
  }
  _2158 = (_localToneMappingParams.w > 0.0f);
  if (_2158) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_2139, _2140, _2141));
    _2418 = _rndx_tonemapped_color.x;
    _2419 = _rndx_tonemapped_color.y;
    _2420 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _2426 = 1.0f - abs(_etcParams.w);
      _2430 = saturate(_etcParams.w);  // [sem: expr_sat]
      _2431 = (_2426 * _2418) + _2430;
      _2432 = (_2426 * _2419) + _2430;
      _2433 = (_2426 * _2420) + _2430;
      if (_colorGradingParams.w > 0.0f) {
        _2438 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _2455 = (((max(0.0f, (1.0f - _2431)) - _2431) * _2438) + _2431);
        _2456 = (((max(0.0f, (1.0f - _2432)) - _2432) * _2438) + _2432);
        _2457 = (((max(0.0f, (1.0f - _2433)) - _2433) * _2438) + _2433);
      } else {
        _2455 = _2431;
        _2456 = _2432;
        _2457 = _2433;
      }
      _2463 = _userImageAdjust.y + 1.0f;
      _2467 = _userImageAdjust.x + 0.5f;
      _2468 = ((_2455 + -0.5f) * _2463) + _2467;
      _2469 = ((_2456 + -0.5f) * _2463) + _2467;
      _2470 = ((_2457 + -0.5f) * _2463) + _2467;
      _2500 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _2511 = exp2(log2(saturate(mad(_colorBlind0.z, _2470, mad(_colorBlind0.y, _2469, (_colorBlind0.x * _2468))))) * _2500);
      _2512 = exp2(log2(saturate(mad(_colorBlind1.z, _2470, mad(_colorBlind1.y, _2469, (_colorBlind1.x * _2468))))) * _2500);
      _2513 = exp2(log2(saturate(mad(_colorBlind2.z, _2470, mad(_colorBlind2.y, _2469, (_colorBlind2.x * _2468))))) * _2500);
    } else {
      _2511 = _2418;
      _2512 = _2419;
      _2513 = _2420;
    }
  } else {
    _2511 = _2139;
    _2512 = _2140;
    _2513 = _2141;
  }
  if (_etcParams.y > 1.0f) {
    _2522 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _2523 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _2527 = saturate(1.0f - (dot(float2(_2522, _2523), float2(_2522, _2523)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _2532 = (_2527 * _2511);
    _2533 = (_2527 * _2512);
    _2534 = (_2527 * _2513);
  } else {
    _2532 = _2511;
    _2533 = _2512;
    _2534 = _2513;
  }
  if (_2158 && (_etcParams.z > 0.0f)) {
    _2564 = select((_2532 <= 0.0031308f), (_2532 * 12.92f), (((pow(_2532, 0.41666666f)) * 1.055f) + -0.055f));
    _2565 = select((_2533 <= 0.0031308f), (_2533 * 12.92f), (((pow(_2533, 0.41666666f)) * 1.055f) + -0.055f));
    _2566 = select((_2534 <= 0.0031308f), (_2534 * 12.92f), (((pow(_2534, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _2564 = _2532;
    _2565 = _2533;
    _2566 = _2534;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2571 = (float)((uint)((uint)(_2142)));
    if (!(_2571 < _viewDir.w)) {
      if (!(_2571 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _2580 = _2564;
        _2581 = _2565;
        _2582 = _2566;
      } else {
        _2580 = 0.0f;
        _2581 = 0.0f;
        _2582 = 0.0f;
      }
    } else {
      _2580 = 0.0f;
      _2581 = 0.0f;
      _2582 = 0.0f;
    }
  } else {
    _2580 = _2564;
    _2581 = _2565;
    _2582 = _2566;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_2580, _2581, _2582), _sunDirection.y, _moonDirection.y);
    _2580 = _rndx_final_color.x;
    _2581 = _rndx_final_color.y;
    _2582 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _2580;
  SV_Target.y = _2581;
  SV_Target.z = _2582;
  SV_Target.w = _2155;
  return SV_Target;
}
