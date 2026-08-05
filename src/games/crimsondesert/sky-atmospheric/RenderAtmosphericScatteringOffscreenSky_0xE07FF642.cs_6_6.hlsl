// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the exact shared spectral and/or Dawn/Dusk helpers required by this shader's owned patch families.
#include "sky_spectral_common.hlsli"
#include "sky_dawn_dusk_common.hlsli"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
Texture2D<float4> __3__36__0__0__g_climateTex2 : register(t3, space36);

Texture2D<float2> __3__36__0__0__g_texNetDensity : register(t36, space36);

Texture3D<float> __3__36__0__0__g_texCloudVolumeShadow : register(t75, space36);

Texture3D<float> __3__36__0__0__g_texCloudBase : register(t60, space36);

Texture3D<float> __3__36__0__0__g_texCloudDetail : register(t61, space36);

Texture2D<float4> __3__36__0__0__g_texCirrus : register(t8, space36);

Texture3D<float4> __3__36__0__0__g_texPrecomputedLUTSingleRayleigh : register(t62, space36);

Texture3D<float4> __3__36__0__0__g_texPrecomputedLUTSingleMie : register(t63, space36);

Texture3D<float4> __3__36__0__0__g_texPrecomputedLUTMulti : register(t64, space36);

Texture3D<float4> __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum : register(t67, space36);

Texture3D<float4> __3__36__0__0__g_texPrecomputedLUTMultiMie : register(t68, space36);

RWTexture2D<float4> __3__38__0__1__g_texSkyInscatterUAV : register(u2, space38);

RWTexture2D<float4> __3__38__0__1__g_texSkyExtinctionUAV : register(u3, space38);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b2, space35) {
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

cbuffer __3__35__0__0__WeatherConstantBuffer : register(b5, space35) {
  float _rain : packoffset(c000.x);
  float _windSpeed : packoffset(c000.y);
  float _puddleRate : packoffset(c000.z);
  float _humidity : packoffset(c000.w);
  float _puddleScale : packoffset(c001.x);
  float2 _windDir : packoffset(c001.y);
  float _snowAmount : packoffset(c001.w);
  float _snowDetail : packoffset(c002.x);
  float _iceRate : packoffset(c002.y);
  float _snowRate : packoffset(c002.z);
  uint _weatherCheckFlag : packoffset(c002.w);
  float2 _climateTextureOnePixelMeter : packoffset(c003.x);
  float2 _cloudScroll : packoffset(c003.z);
  int2 _climateTextureSize : packoffset(c004.x);
  float _heightScaleMin : packoffset(c004.z);
  float _heightScaleMax : packoffset(c004.w);
  float _temperatureSnowStart : packoffset(c005.x);
  float _temperatureSnowEnd : packoffset(c005.y);
  float _temperatureDeformableSnowStart : packoffset(c005.z);
  float _tempeartureDeformableSnowEnd : packoffset(c005.w);
  float _rainDropletAmount : packoffset(c006.x);
  float _rainDropletRate : packoffset(c006.y);
  float _puddleCloudAltitude : packoffset(c006.z);
  float _puddleCloudThickenss : packoffset(c006.w);
  float _windSpeedExceptAltitude : packoffset(c007.x);
  float3 _weatherPadding : packoffset(c007.y);
};

cbuffer __3__35__0__0__AtmosphereConstantBuffer : register(b14, space35) {
  float _sunLightIntensity : packoffset(c000.x);
  float _sunLightPreset : packoffset(c000.y);
  float _sunSizeAngle : packoffset(c000.z);
  float _sunSizeAngleCosine : packoffset(c000.w);
  float _sunDirY : packoffset(c001.x);
  float _moonLightIntensity : packoffset(c001.y);
  float _moonLightPreset : packoffset(c001.z);
  float _moonSizeAngle : packoffset(c001.w);
  float _moonSizeAngleCosine : packoffset(c002.x);
  float _moonDirY : packoffset(c002.y);
  float _earthAxisTilt : packoffset(c002.z);
  float _latitude : packoffset(c002.w);
  float _atmosphereSeaBaseline : packoffset(c003.x);
  float _atmosphereThickness : packoffset(c003.y);
  float _rayleighScaledHeight : packoffset(c003.z);
  uint _rayleighScatteringColor : packoffset(c003.w);
  float _mieScaledHeight : packoffset(c004.x);
  float _mieAerosolDensity : packoffset(c004.y);
  float _mieAerosolAbsorption : packoffset(c004.z);
  float _miePhaseConst : packoffset(c004.w);
  float _ozoneRatio : packoffset(c005.x);
  float _directionalLightLuminanceScale : packoffset(c005.y);
  float _distanceScale : packoffset(c005.z);
  float _heightFogDensity : packoffset(c005.w);
  float _heightFogBaseline : packoffset(c006.x);
  float _heightFogFalloff : packoffset(c006.y);
  float _heightFogScale : packoffset(c006.z);
  float _cloudBaseDensity : packoffset(c006.w);
  float _cloudBaseContrast : packoffset(c007.x);
  float _cloudBaseScale : packoffset(c007.y);
  float _cloudAlpha : packoffset(c007.z);
  float _cloudScrollMultiplier : packoffset(c007.w);
  float _cloudScatteringCoefficient : packoffset(c008.x);
  float _cloudPhaseConstFront : packoffset(c008.y);
  float _cloudPhaseConstBack : packoffset(c008.z);
  float _cloudAltitude : packoffset(c008.w);
  float _cloudThickness : packoffset(c009.x);
  float _cloudVisibleRange : packoffset(c009.y);
  float _cloudNear : packoffset(c009.z);
  float _cloudFadeRange : packoffset(c009.w);
  float _cloudDetailRatio : packoffset(c010.x);
  float _cloudDetailScale : packoffset(c010.y);
  float _cloudMultiRatio : packoffset(c010.z);
  float _cloudBeerPowderRatio : packoffset(c010.w);
  float _cloudCirrusAltitude : packoffset(c011.x);
  float _cloudCirrusDensity : packoffset(c011.y);
  float _cloudCirrusScale : packoffset(c011.z);
  float _cloudCirrusWeightR : packoffset(c011.w);
  float _cloudCirrusWeightG : packoffset(c012.x);
  float _cloudCirrusWeightB : packoffset(c012.y);
  float _cloudFlow : packoffset(c012.z);
  float _cloudSeed : packoffset(c012.w);
  float4 _volumeFogScatterColor : packoffset(c013.x);
  float4 _mieScatterColor : packoffset(c014.x);
};

cbuffer __3__35__0__0__PrecomputedAmbientConstantBuffer : register(b15, space35) {
  float4 _precomputedAmbient0 : packoffset(c000.x);
  float4 _precomputedAmbient1 : packoffset(c001.x);
  float4 _precomputedAmbient2 : packoffset(c002.x);
  float4 _precomputedAmbient3 : packoffset(c003.x);
  float4 _precomputedAmbient4 : packoffset(c004.x);
  float4 _precomputedAmbient5 : packoffset(c005.x);
  float4 _precomputedAmbient6 : packoffset(c006.x);
  float4 _precomputedAmbient7 : packoffset(c007.x);
  float4 _precomputedAmbients[56] : packoffset(c008.x);
};

cbuffer __3__1__0__0__GlobalPushConstants : register(b0, space1) {
  float4 _renderFlags : packoffset(c000.x);
  float4 _skyColor : packoffset(c001.x);
  float4 _volumeSize : packoffset(c002.x);
};

SamplerState __0__95__0__0__g_samplerAnisotropicWrap : register(s8, space95);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearWrapUWClampV : register(s1, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

[numthreads(8, 8, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
  // Description: Computes the gated Dawn/Dusk factor and its Mie-g companion at function scope so every structurally recovered branch and final output site has one initialized dominating definition.
  float _dawnDuskFactor = DawnDuskFactor(_sunDirection.y);
  float _boostedMieG = MiePhaseBoostedG(_miePhaseConst, _dawnDuskFactor);
  // RenoDX: <<< [Patch: DawnDuskImprovements]
  float _32;
  float _33;
  float _46;
  float _57;
  float _69;
  float _78;
  float _87;
  float _96;
  float _98;
  float _99;
  float _100;
  float _101;
  float _106;
  float _114;
  float _119;
  float _122;
  float _123;
  float _127;
  float _128;
  float _129;
  float _130;
  float _134;
  float _228;
  int _229;
  int _230;
  float _231;
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
  int _245;
  float _450;
  float _462;
  float _525;
  float _571;
  float _590;
  float _591;
  float _592;
  float _593;
  float _594;
  float _595;
  float _726;
  float _736;
  bool _815;
  float _849;
  float _850;
  float _851;
  float _905;
  int _917;
  float _918;
  float _919;
  float _920;
  float _921;
  float _922;
  float _923;
  float _924;
  float _925;
  float _1099;
  float _1100;
  float _1127;
  float _1313;
  float _1325;
  float _1452;
  float _1462;
  float _1476;
  float _1477;
  float _1515;
  float _1553;
  float _1949;
  float _1950;
  float _1951;
  float _1952;
  float _1953;
  float _1954;
  bool _1997;
  int _2005;
  int _2006;
  float _2007;
  float _2008;
  float _2009;
  float _2010;
  float _2011;
  float _2012;
  float _2013;
  float _2014;
  float _2015;
  float _2016;
  float _2017;
  float _2018;
  float _2019;
  float _2020;
  int _2021;
  int _2022;
  float _2023;
  float _2048;
  float _2059;
  float _2111;
  float _2208;
  float _2255;
  float _2274;
  float _2275;
  float _2276;
  float _2277;
  float _2278;
  float _2279;
  float _2416;
  float _2428;
  bool _2493;
  float _2527;
  float _2528;
  float _2529;
  float _2585;
  int _2597;
  float _2598;
  float _2599;
  float _2600;
  float _2601;
  float _2602;
  float _2603;
  float _2604;
  float _2605;
  float _2779;
  float _2780;
  float _2807;
  float _2993;
  float _3005;
  float _3132;
  float _3142;
  float _3156;
  float _3157;
  float _3195;
  float _3233;
  float _3569;
  float _3570;
  float _3571;
  float _3572;
  float _3573;
  float _3574;
  float _3575;
  float _3576;
  float _3577;
  float _3578;
  float _3579;
  float _3656;
  float _3758;
  float _3846;
  float _3852;
  float _3980;
  float _4034;
  float _4061;
  float _4066;
  float _4162;
  float _4163;
  float _4164;
  float _4165;
  float _4166;
  float _4167;
  float _4168;
  float _4169;
  float _4170;
  float _4269;
  float _4304;
  float _4305;
  float _4306;
  float _4307;
  float _4308;
  float _4309;
  float _4321;
  float _4322;
  float _4323;
  float _139;
  float _140;
  float _147;
  float _150;
  float _152;
  float _153;
  float _154;
  float _160;
  float _167;
  float _169;
  float _170;
  float _171;
  float _177;
  float _185;
  float _190;
  float _192;
  float _193;
  float _200;
  float _208;
  float _216;
  float _226;
  float _246;
  float _260;
  float _261;
  float _263;
  float _265;
  float _268;
  float _269;
  float _272;
  float _273;
  float _275;
  float _276;
  float _278;
  float4 _300;
  float _304;
  float _305;
  float _307;
  float _308;
  float _309;
  float _313;
  float _320;
  float _323;
  float _326;
  float _329;
  float _340;
  float _354;
  float _355;
  float _356;
  float _357;
  float _358;
  float _362;
  float _366;
  float _367;
  float _372;
  float _409;
  bool _452;
  bool _464;
  int _473;
  uint _474;
  float _475;
  float _476;
  float _477;
  float _478;
  float _482;
  float _483;
  float _484;
  float _485;
  float _486;
  float _489;
  float _494;
  float _495;
  float _502;
  bool _503;
  float _534;
  float4 _546;
  float4 _582;
  float _596;
  float _597;
  float _602;
  float _607;
  float _610;
  float _611;
  float _615;
  float _616;
  float _619;
  float _633;
  float _634;
  float _635;
  float _636;
  float _637;
  float _645;
  float _646;
  float _651;
  float _685;
  float _737;
  float _740;
  float _744;
  float _746;
  float _748;
  float _749;
  float _750;
  float _751;
  float _761;
  float _764;
  float _803;
  float _804;
  float _806;
  float _819;
  float _821;
  float _824;
  bool _825;
  float _834;
  float _837;
  float _843;
  float _853;
  float _854;
  float _856;
  float _874;
  float _880;
  float _881;
  float _884;
  float _892;
  float _906;
  float _907;
  float _908;
  float _909;
  float _928;
  float _930;
  float _934;
  float _941;
  float _944;
  float _947;
  float _950;
  float _961;
  float _975;
  float _976;
  float _977;
  float _978;
  float _979;
  float _983;
  float _987;
  float _988;
  float _993;
  float _1052;
  float _1083;
  float _1086;
  float _1114;
  float _1115;
  float _1116;
  float _1117;
  float _1118;
  float _1119;
  float _1120;
  float _1121;
  int _1122;
  float _1128;
  float _1131;
  float _1133;
  float _1134;
  float _1135;
  float _1137;
  float _1148;
  float4 _1174;
  float _1176;
  float _1177;
  float _1178;
  float _1181;
  float _1186;
  float _1189;
  float _1192;
  float _1195;
  float _1196;
  float _1203;
  float _1217;
  float _1218;
  float _1219;
  float _1220;
  float _1221;
  float _1225;
  float _1229;
  float _1230;
  float _1235;
  float _1272;
  bool _1315;
  float _1326;
  float _1327;
  float _1330;
  float _1335;
  float _1342;
  float _1356;
  float _1357;
  float _1358;
  float _1359;
  float _1360;
  float _1364;
  float _1368;
  float _1369;
  float _1374;
  float _1411;
  float _1478;
  float _1482;
  float _1483;
  float _1492;
  float _1524;
  float2 _1527;
  float _1530;
  float2 _1554;
  float _1562;
  float _1563;
  float _1566;
  float _1569;
  float _1572;
  float _1575;
  float _1576;
  float _1577;
  float _1582;
  float _1585;
  float _1587;
  float _1589;
  float _1592;
  float _1594;
  float _1599;
  float _1601;
  float _1605;
  float _1606;
  float _1607;
  float _1610;
  float _1611;
  float _1614;
  float _1615;
  float _1618;
  float _1621;
  float _1624;
  float _1629;
  float _1634;
  float _1639;
  float _1640;
  float _1641;
  float _1642;
  float _1643;
  float _1654;
  float _1655;
  float _1657;
  float _1659;
  float _1660;
  float _1666;
  float _1674;
  float _1675;
  float _1676;
  float _1677;
  float _1682;
  float _1684;
  float _1687;
  float _1690;
  float _1694;
  float _1698;
  float _1702;
  float _1706;
  float _1707;
  float _1709;
  float _1721;
  float _1733;
  float _1744;
  float _1756;
  float _1767;
  float _1779;
  float _1780;
  float _1782;
  float _1783;
  float _1784;
  float _1785;
  float _1786;
  float _1789;
  float _1792;
  float _1795;
  float _1797;
  float _1805;
  float _1811;
  float _1825;
  float _1839;
  float _1853;
  float _1857;
  float _1858;
  float _1861;
  float _1862;
  float _1865;
  float _1868;
  float _1871;
  float _1878;
  float _1887;
  float _1888;
  float _1889;
  float _1892;
  float _1895;
  float _1898;
  float _1905;
  float _1963;
  uint _2024;
  float _2032;
  float _2037;
  float _2041;
  float _2052;
  float _2065;
  float _2066;
  float _2067;
  float _2070;
  float _2071;
  float _2073;
  float _2075;
  float _2080;
  float _2084;
  float4 _2087;
  float _2099;
  float _2103;
  float _2112;
  float _2141;
  int _2144;
  float _2147;
  float _2158;
  float _2159;
  float _2160;
  float _2161;
  float _2165;
  float _2166;
  float _2167;
  float _2168;
  float _2169;
  float _2172;
  float _2177;
  float _2178;
  float _2185;
  bool _2186;
  float _2217;
  float4 _2230;
  float4 _2266;
  float _2280;
  float _2281;
  float _2286;
  float _2291;
  float _2294;
  float _2295;
  float _2299;
  float _2302;
  float _2305;
  float _2308;
  float _2313;
  float _2326;
  float _2327;
  float _2328;
  float _2329;
  float _2330;
  float _2338;
  float _2339;
  float _2344;
  float _2376;
  float _2431;
  float _2435;
  float _2436;
  float _2437;
  float _2438;
  float _2439;
  float _2440;
  float _2450;
  float _2481;
  float _2482;
  float _2484;
  float _2497;
  float _2499;
  float _2502;
  bool _2503;
  float _2512;
  float _2515;
  float _2521;
  float _2532;
  float _2533;
  float _2535;
  float _2553;
  float _2559;
  float _2560;
  float _2563;
  float _2572;
  float _2586;
  float _2587;
  float _2588;
  float _2589;
  float _2608;
  float _2610;
  float _2614;
  float _2621;
  float _2624;
  float _2627;
  float _2630;
  float _2641;
  float _2655;
  float _2656;
  float _2657;
  float _2658;
  float _2659;
  float _2663;
  float _2667;
  float _2668;
  float _2673;
  float _2732;
  float _2763;
  float _2766;
  float _2794;
  float _2795;
  float _2796;
  float _2797;
  float _2798;
  float _2799;
  float _2800;
  float _2801;
  int _2802;
  float _2808;
  float _2811;
  float _2813;
  float _2814;
  float _2815;
  float _2817;
  float _2828;
  float4 _2854;
  float _2856;
  float _2857;
  float _2858;
  float _2861;
  float _2866;
  float _2869;
  float _2872;
  float _2875;
  float _2876;
  float _2883;
  float _2897;
  float _2898;
  float _2899;
  float _2900;
  float _2901;
  float _2905;
  float _2909;
  float _2910;
  float _2915;
  float _2952;
  bool _2995;
  float _3006;
  float _3007;
  float _3010;
  float _3015;
  float _3022;
  float _3036;
  float _3037;
  float _3038;
  float _3039;
  float _3040;
  float _3044;
  float _3048;
  float _3049;
  float _3054;
  float _3091;
  float _3158;
  float _3162;
  float _3163;
  float _3172;
  float _3204;
  float2 _3207;
  float _3210;
  float2 _3234;
  float _3239;
  float _3242;
  float _3245;
  float _3248;
  float _3249;
  float _3250;
  float _3255;
  float _3258;
  float _3260;
  float _3262;
  float _3265;
  float _3270;
  float _3272;
  float _3276;
  float _3279;
  float _3282;
  float _3285;
  float _3289;
  float _3293;
  float _3297;
  float _3302;
  float _3307;
  float _3312;
  float _3313;
  float _3314;
  float _3315;
  float _3316;
  float _3327;
  float _3328;
  float _3329;
  float _3331;
  float _3332;
  float _3338;
  float _3346;
  float _3348;
  float _3349;
  float _3350;
  float _3354;
  float _3357;
  float _3360;
  float _3361;
  float _3362;
  float _3366;
  float _3370;
  float _3374;
  float _3378;
  float _3383;
  float _3388;
  float _3393;
  float _3394;
  float _3396;
  float _3401;
  float _3402;
  float _3403;
  float _3407;
  float _3408;
  float _3412;
  float _3413;
  float _3414;
  float _3417;
  float _3421;
  float _3425;
  float _3429;
  float _3434;
  float _3439;
  float _3444;
  float _3445;
  float _3453;
  float _3459;
  float _3585;
  float _3588;
  float _3592;
  float _3594;
  float _3596;
  float _3600;
  float _3602;
  float _3608;
  float _3609;
  float _3610;
  float _3611;
  float _3612;
  float _3617;
  float _3620;
  float _3624;
  float _3625;
  float _3626;
  float _3627;
  float _3633;
  bool _3634;
  float _3664;
  float _3670;
  float4 _3673;
  float4 _3678;
  float _3683;
  float _3684;
  float _3687;
  float _3688;
  float _3689;
  float _3695;
  float _3702;
  float4 _3704;
  float4 _3709;
  float _3714;
  float _3720;
  float _3721;
  float _3722;
  float _3723;
  float _3724;
  float _3728;
  float _3729;
  float _3735;
  bool _3736;
  float _3766;
  float _3772;
  float4 _3773;
  float4 _3777;
  float4 _3781;
  float4 _3785;
  float _3789;
  float _3790;
  float _3791;
  float _3792;
  float _3793;
  float _3794;
  float _3800;
  float _3804;
  float _3808;
  float _3810;
  float _3811;
  float _3812;
  float _3813;
  float _3814;
  float _3820;
  float _3826;
  float _3832;
  float _3838;
  float _3839;
  float _3840;
  bool _3841;
  bool _3847;
  float _3853;
  float _3857;
  float _3858;
  float _3859;
  float _3865;
  float _3885;
  float _3905;
  float _3907;
  float _3919;
  float _3921;
  float _3930;
  float _3936;
  float _3941;
  float _3945;
  float _3949;
  float _3953;
  float _3958;
  float _3986;
  float4 _3987;
  float4 _3991;
  float _3996;
  float _3997;
  float _4004;
  float4 _4005;
  float4 _4009;
  float _4040;
  float4 _4041;
  float4 _4045;
  float4 _4049;
  float4 _4053;
  float _4068;
  float _4070;
  float _4185;
  float _4198;
  float _4208;
  float _4217;
  float _4227;
  float _4234;
  float _4241;
  float _4242;
  float _4243;
  float _4244;
  float _4260;
  int __loop_jump_target = -1;
  float _30[4];
  _32 = (float)((uint)(SV_DispatchThreadID.x));
  _33 = (float)((uint)(SV_DispatchThreadID.y));
  _46 = ((_bufferSizeAndInvSize.z * 2.0f) * ((((_32 + 0.5f) * 2.0f) + -0.5f) + ((float)((uint)((uint)(_frameNumber.x & 1)))))) + -1.0f;
  _57 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * ((((_33 + 0.5f) * 2.0f) + -0.5f) + ((float)((uint)((uint)(((uint)((uint)(_frameNumber.x)) >> 1) & 1))))));
  _69 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), 1e-07f, mad((_invViewProjRelative[3].y), _57, (_46 * (_invViewProjRelative[3].x))));
  _78 = (mad((_invViewProjRelative[0].z), 1e-07f, mad((_invViewProjRelative[0].y), _57, (_46 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _69;
  _87 = (mad((_invViewProjRelative[1].z), 1e-07f, mad((_invViewProjRelative[1].y), _57, (_46 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _69;
  _96 = (mad((_invViewProjRelative[2].z), 1e-07f, mad((_invViewProjRelative[2].y), _57, (_46 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _69;
  _98 = rsqrt(dot(float3(_78, _87, _96), float3(_78, _87, _96)));  // [sem: invLength]
  _99 = _98 * _78;
  _100 = _98 * _87;
  _101 = _98 * _96;
  _106 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 255)));
  _114 = frac(frac(dot(float2(((_106 * 32.665f) + _32), ((_106 * 11.815f) + _33)), float2(0.06711056f, 0.00583715f))) * 52.982918f);
  _119 = _earthRadius + _atmosphereThickness;
  _122 = _viewPos.y + _earthRadius;
  _123 = dot(float3(_99, _100, _101), float3(_99, _100, _101));
  _127 = dot(float3(_viewPos.x, _122, _viewPos.z), float3(_99, _100, _101)) * 2.0f;
  _128 = dot(float3(_viewPos.x, _122, _viewPos.z), float3(_viewPos.x, _122, _viewPos.z));
  _129 = _127 * _127;
  _130 = _123 * 4.0f;
  _134 = _129 - ((_128 - (_119 * _119)) * _130);
  if (!(_134 < 0.0f)) {
    _139 = _123 * 2.0f;
    _140 = (sqrt(_134) - _127) / _139;
    if (!(_140 <= 0.0f)) {
      _147 = dot(float3(_99, _100, _101), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
      _150 = _cloudPhaseConstFront * _cloudPhaseConstFront;
      _152 = (_147 * _147) + 1.0f;
      _153 = _150 + 1.0f;
      _154 = _147 * 2.0f;
      _160 = (((1.0f - _150) * 3.0f) / ((_150 + 2.0f) * 2.0f)) * 0.07957747f;
      _167 = (_152 / exp2(log2(_153 - (_cloudPhaseConstFront * _154)) * 1.5f)) * _160;
      _169 = _cloudPhaseConstBack * _cloudPhaseConstBack;
      _170 = _169 + 1.0f;
      _171 = _cloudPhaseConstBack * -2.0f;
      _177 = (((1.0f - _169) * 3.0f) / ((_169 + 2.0f) * 2.0f)) * 0.039788734f;
      _185 = ((_152 / exp2(log2(_170 - (_171 * _147)) * 1.5f)) * _177) + _167;
      _190 = dot(float3(_99, _100, _101), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
      _192 = (_190 * _190) + 1.0f;
      _193 = _190 * 2.0f;
      _200 = (_192 / exp2(log2(_153 - (_193 * _cloudPhaseConstFront)) * 1.5f)) * _160;
      _208 = ((_192 / exp2(log2(_170 - (_190 * _171)) * 1.5f)) * _177) + _200;
      _216 = min(_cloudVisibleRange, (((_cloudVisibleRange * -0.9f) * saturate(_100 * 8.0f)) + _cloudVisibleRange));
      if (_renderFlags.x > 0.5f) {
        _226 = log2(exp2(log2(max(1.0f, (_cloudVisibleRange * 0.00033333333f))) * 0.015625f));
        _228 = 128.0f;
        _229 = 0;
        _230 = 0;
        _231 = 0.0f;
        _232 = 0.0f;
        _233 = 0.0f;
        _234 = 0.0f;
        _235 = 0.0f;
        _236 = 0.0f;
        _237 = 0.0f;
        _238 = 0.0f;
        _239 = 0.0f;
        _240 = 0.0f;
        _241 = 0.0f;
        _242 = 0.0f;
        _243 = 0.0f;
        _244 = 0.0f;
        _245 = 1;
        while(true) {
          _246 = (float)((int)(_230));
          _260 = (((exp2(select(((uint)_230 < (uint)12), (_246 * 0.33f), (_246 + -8.039999f)) * _226) + -1.0f) * (_216 + -128.0f)) / (exp2(_226 * 64.0f) + -1.0f)) + 128.0f;
          _261 = min(_260, _140);
          _263 = max(0.0f, (_261 - _228));
          _265 = (_263 * _114) + _228;
          _268 = _distanceScale * _263;
          _269 = _265 * _99;
          _272 = _269 + _viewPos.x;
          _273 = _265 * _100;
          _275 = _viewPos.y + _273;
          _276 = _265 * _101;
          _278 = _viewPos.z + _276;
          // [sem: _3__36__0__0__g_climateTex2_sampleLod]
          _300 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_272 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_278 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
          _304 = _261 * _99;
          _305 = _viewPos.x + _304;
          _307 = _viewPos.y + (_261 * _100);
          _308 = _261 * _101;
          _309 = _viewPos.z + _308;
          _313 = sqrt((_308 * _308) + (_304 * _304));
          _320 = _cloudAltitude - (max(((_313 * _313) + -400000.0f), 0.0f) * 1e-06f);
          _323 = _cloudDetailScale * 0.004f;
          _326 = _cloudBaseScale * 0.0004f;
          _329 = _earthRadius + _307;
          _340 = ((sqrt(((_309 * _309) + (_305 * _305)) + (_329 * _329)) - _320) - _earthRadius) / _cloudThickness;
          if (!((_340 < 0.0f) || (_340 > 1.0f))) {
            _354 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
            _355 = _307 - _320;
            _356 = _323 / _326;
            _357 = _356 * _326;
            _358 = _354 * _356;
            _362 = saturate(max((_313 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
            _366 = (_cloudDetailScale * 0.001884f) * (4.0f - (_362 * 3.0f));
            _367 = _357 * 4.355f;
            _372 = 1.0f - sqrt(saturate((1.0f - _340) * 1.4285715f));
            _409 = (((((_362 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_323 * _305) - (_357 * _cloudScroll.x)), ((_355 * _323) - _358), ((_323 * _309) - (_357 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_366 * _305) - (_367 * _cloudScroll.x)), ((_366 * _355) - (_358 * 4.355f)), ((_366 * _309) - (_367 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_340 * 4.0f) * 0.8f) + 0.2f);
            _450 = (saturate(((saturate(_340 * 10.0f) * saturate(saturate(((_300.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_326 * (_305 - _cloudScroll.x)), ((_326 * _355) - _354), (_326 * (_309 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_372 * 0.5f), ((_372 * _372) * _372)))) - _409) / (1.0f - _409)) * _cloudAlpha);
          } else {
            _450 = 0.0f;
          }
          _452 = (_cloudFadeRange > 1e-05f);
          if (_452) {
            _462 = saturate((((1.0f - _cloudNear) * _313) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
          } else {
            _462 = 1.0f;  // [sem: expr_sat]
          }
          _464 = ((_462 * _450) > 0.001f);
          if ((_229 != 0) && _464) {
            _2005 = 0;
            _2006 = _245;
            _2007 = _244;
            _2008 = _243;
            _2009 = _242;
            _2010 = _241;
            _2011 = _240;
            _2012 = _239;
            _2013 = _238;
            _2014 = _237;
            _2015 = _236;
            _2016 = _235;
            _2017 = _234;
            _2018 = _233;
            _2019 = _232;
            _2020 = _231;
            _2021 = ((int)((uint)((uint)(_230)) + (uint)(-2)));
            _2022 = 0;
            _2023 = _228;
          } else {
            _473 = select(((uint)_230 < (uint)62), (((int)(uint)(_464)) ^ 1), 0);
            _474 = (uint)((uint)(_473)) + (uint)((uint)(_230));
            _475 = _cloudThickness + _cloudAltitude;
            _476 = _earthRadius + _275;
            _477 = _272 * _272;
            _478 = _278 * _278;
            _482 = sqrt((_478 + _477) + (_476 * _476));
            _483 = _272 / _482;
            _484 = _476 / _482;
            _485 = _278 / _482;
            _486 = _482 - _earthRadius;
            if (_486 > 0.0f) {
              _489 = dot(float3(_483, _484, _485), float3(_99, _100, _101));
              _494 = min(max(_486, 16.0f), (_atmosphereThickness + -16.0f));
              _495 = max(_494, 0.0f);
              _502 = (-0.0f - sqrt((_495 + (_earthRadius * 2.0f)) * _495)) / (_495 + _earthRadius);
              _503 = (_489 > _502);
              if (_503) {
                _525 = ((exp2(log2(saturate((_489 - _502) / (1.0f - _502))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _525 = ((exp2(log2(saturate((_502 - _489) / (_502 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              _534 = (exp2(log2(saturate((_494 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
              _546 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_534, _525, ((1.0f - exp2(-1.1541561f - (dot(float3(_483, _484, _485), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
              if (_503) {
                _571 = ((exp2(log2(saturate((_489 - _502) / (1.0f - _502))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _571 = ((exp2(log2(saturate((_502 - _489) / (_502 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
              _582 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_534, _571, ((1.0f - exp2(-1.1541561f - (dot(float3(_483, _484, _485), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
              _590 = (_582.z * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _591 = (_582.y * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _592 = (_582.x * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _593 = _546.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _594 = _546.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _595 = _546.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            } else {
              _590 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _591 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _592 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _593 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _594 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _595 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            }
            _596 = max(_486, 0.01f);
            _597 = -0.0f - _596;
            _602 = exp2((_597 / _rayleighScaledHeight) * 1.442695f);
            _607 = exp2((_597 / _mieScaledHeight) * 1.442695f);
            _610 = (_276 * _276) + (_269 * _269);
            _611 = sqrt(_610);
            _615 = max(((_611 * _611) + -400000.0f), 0.0f) * 1e-06f;
            _616 = _cloudAltitude - _615;
            _619 = ((_482 - _earthRadius) - _616) / _cloudThickness;
            if (!((_619 < 0.0f) || (_619 > 1.0f))) {
              _633 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
              _634 = _275 - _616;
              _635 = _323 / _326;
              _636 = _635 * _326;
              _637 = _633 * _635;
              _645 = (_cloudDetailScale * 0.001884f) * (4.0f - (saturate(max((_611 + -2500.0f), 0.0f) * 0.05f) * 3.0f));
              _646 = _636 * 4.355f;
              _651 = 1.0f - sqrt(saturate((1.0f - _619) * 1.4285715f));
              _685 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_323 * _272) - (_636 * _cloudScroll.x)), ((_634 * _323) - _637), ((_323 * _278) - (_636 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_645 * _272) - (_646 * _cloudScroll.x)), ((_645 * _634) - (_637 * 4.355f)), ((_645 * _278) - (_646 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_619 * 4.0f) * 0.8f) + 0.2f);
              _726 = (saturate(((saturate(_619 * 10.0f) * saturate(saturate(((_300.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_326 * (_272 - _cloudScroll.x)), ((_634 * _326) - _633), (_326 * (_278 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_651 * 0.5f), ((_651 * _651) * _651)))) - _685) / (1.0f - _685)) * _cloudAlpha);
            } else {
              _726 = 0.0f;
            }
            if (_452) {
              _736 = saturate(((_611 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
            } else {
              _736 = 1.0f;  // [sem: expr_sat]
            }
            _737 = _736 * _726;
            _740 = sqrt(_610 + (_273 * _273));
            _744 = max(1e-06f, (_heightFogScale * 0.0025f));
            _746 = _744 * _cloudScroll.x;
            _748 = _744 * _cloudScroll.y;
            _749 = _744 * _272;
            _750 = _744 * _275;
            _751 = _744 * _278;
            // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
            _761 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_749 * 6.393882f) - (_746 * 1.871f)), (_750 * 6.393882f), ((_751 * 6.393882f) - (_748 * 1.871f))), 0.0f);
            _764 = _heightFogFalloff * -0.14426951f;
            _803 = (((saturate(_740 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_749 * 0.5127f) - _746), (_750 * 0.5127f), ((_751 * 0.5127f) - _748)), 0.0f)).x))) * ((saturate((_740 + -300.0f) * 0.0025f) * (0.5f - _761.x)) + _761.x)) * ((exp2(max(0.001f, ((_596 - _heightScaleMin) - ((_heightScaleMax - _heightScaleMin) * _300.z))) * _764) * _300.y) + (exp2(max(0.001f, (_596 - _heightFogBaseline)) * _764) * _heightFogDensity));
            _804 = _275 - _cloudAltitude;
            _806 = (_615 + _804) / _cloudThickness;
            if (!(_sunDirection.y > 0.0f)) {
              _815 = (_sunDirection.y > _moonDirection.y);
            } else {
              _815 = true;
            }
            _819 = select(_815, _sunDirection.x, _moonDirection.x);
            _821 = select(_815, _sunDirection.y, _moonDirection.y);
            _824 = select(_815, _sunDirection.z, _moonDirection.z);
            _825 = (_821 > 0.0f);
            _834 = ((0.5f - (((float)((int)((int)((int)(uint)(_825)) - (int)((int)(uint)((int)(_821 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _616;
            if (_275 < _616) {
              _837 = dot(float3(0.0f, 1.0f, 0.0f), float3(_819, _821, _824));
              _843 = select((abs(_837) < 1e-08f), 1e+08f, ((_834 - dot(float3(0.0f, 1.0f, 0.0f), float3(_272, _275, _278))) / _837));
              _849 = ((_843 * _824) + _278);
              _850 = _834;
              _851 = ((_843 * _819) + _272);
            } else {
              _849 = _278;
              _850 = _275;
              _851 = _272;
            }
            _853 = _cloudScatteringCoefficient / _distanceScale;
            _854 = abs(_821);
            _856 = saturate(_854 * 4.0f);  // [sem: expr_sat]
            _874 = (_856 * _856) * exp2(((_distanceScale * -1.442695f) * _853) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_851 - _viewPos.x) * 5e-05f) + 0.5f), ((_850 - _cloudAltitude) / _cloudThickness), (((_849 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x));
            _880 = ((1.0f - _874) * saturate((_804 - _cloudThickness) * 0.1f)) + _874;
            _881 = -0.0f - _853;
            _884 = (log2(_880) * 0.6931472f) / _881;
            if ((_806 <= 1.0f) && ((_737 > 0.001f) && (_806 >= 0.0f))) {
              _892 = (_275 - _616) / _cloudThickness;
              if (!((_892 < 0.0f) || (_892 > 1.0f))) {
                if (_854 > 0.001f) {
                  _905 = min(300.0f, (((_616 - _275) + select(_825, _cloudThickness, 0.0f)) / _821));
                } else {
                  _905 = 300.0f;
                }
                _906 = _905 * 0.2f;
                _907 = _906 * _819;
                _908 = _906 * _821;
                _909 = _906 * _824;
                _917 = 0;
                _918 = ((_909 * 0.5f) + _278);
                _919 = ((_908 * 0.5f) + _275);
                _920 = ((_907 * 0.5f) + _272);
                _921 = _909;
                _922 = _908;
                _923 = _907;
                _924 = _906;
                _925 = 0.0f;
                while(true) {
                  _928 = _920 - _viewPos.x;
                  _930 = _918 - _viewPos.z;
                  _934 = sqrt((_930 * _930) + (_928 * _928));
                  _941 = _cloudAltitude - (max(((_934 * _934) + -400000.0f), 0.0f) * 1e-06f);
                  _944 = _cloudDetailScale * 0.004f;
                  _947 = _cloudBaseScale * 0.0004f;
                  _950 = _earthRadius + _919;
                  _961 = ((sqrt(((_920 * _920) + (_918 * _918)) + (_950 * _950)) - _941) - _earthRadius) / _cloudThickness;
                  if (!((_961 < 0.0f) || (_961 > 1.0f))) {
                    _975 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                    _976 = _919 - _941;
                    _977 = _944 / _947;
                    _978 = _977 * _947;
                    _979 = _975 * _977;
                    _983 = saturate(max((_934 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                    _987 = (_cloudDetailScale * 0.001884f) * (4.0f - (_983 * 3.0f));
                    _988 = _978 * 4.355f;
                    _993 = 1.0f - sqrt(saturate((1.0f - _961) * 1.4285715f));
                    // [sem: expr_sat]
                    _1052 = saturate(_961 * 10.0f) * saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_920 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + (_918 / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_920 - _cloudScroll.x) * _947), ((_947 * _976) - _975), ((_918 - _cloudScroll.y) * _947)), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_993 * 0.5f), ((_993 * _993) * _993)));
                    _1083 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_987 * _920) - (_cloudScroll.x * _988)), ((_987 * _976) - (_979 * 4.355f)), ((_987 * _918) - (_cloudScroll.y * _988))), 0.0f)).x) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_944 * _920) - (_cloudScroll.x * _978)), ((_944 * _976) - _979), ((_944 * _918) - (_cloudScroll.y * _978))), 0.0f)).x))) * ((saturate(_961 * 4.0f) * 0.8f) + 0.2f);
                    _1086 = _1083 * ((_983 * 0.4f) + 0.1f);
                    _1099 = (saturate((_1052 - _1086) / (1.0f - _1086)) * _cloudAlpha);
                    _1100 = (saturate((_1052 - _1083) / (1.0f - _1083)) * _cloudAlpha);
                  } else {
                    _1099 = 0.0f;
                    _1100 = 0.0f;
                  }
                  _1114 = (((exp2((((_924 * -0.0072134747f) * _925) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (_1100 - _1099)) + _1099) * _924) + _925;
                  _1115 = _923 + _920;
                  _1116 = _922 + _919;
                  _1117 = _921 + _918;
                  _1118 = _924 * 1.3f;
                  _1119 = _923 * 1.3f;
                  _1120 = _922 * 1.3f;
                  _1121 = _921 * 1.3f;
                  _1122 = (int)(_917) + (int)(1);
                  if (!(_1122 == 6)) {
                    _917 = _1122;
                    _918 = _1117;
                    _919 = _1116;
                    _920 = _1115;
                    _921 = _1121;
                    _922 = _1120;
                    _923 = _1119;
                    _924 = _1118;
                    _925 = _1114;
                    continue;
                  }
                  _1127 = (_1114 * _distanceScale);
                  break;
                }
              } else {
                _1127 = 0.0f;
              }
              _1128 = max(_884, _1127);
              _1131 = _272 - _viewPos.x;
              _1133 = _278 - _viewPos.z;
              _1134 = _1131 * _1131;
              _1135 = _1133 * _1133;
              _1137 = sqrt(_1135 + _1134);
              _1148 = ((_275 - _cloudAltitude) + (max(((_1137 * _1137) + -400000.0f), 0.0f) * 1e-06f)) / _cloudThickness;
              if (!((_1148 < 0.0f) || (_1148 > 1.0f))) {
                // [sem: _3__36__0__0__g_climateTex2_sampleLod]
                _1174 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_272 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_278 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                _1176 = _272 + 50.0f;
                _1177 = _275 + 200.0f;
                _1178 = _1176 - _viewPos.x;
                _1181 = sqrt((_1178 * _1178) + _1135);
                _1186 = _cloudAltitude - (max(((_1181 * _1181) + -400000.0f), 0.0f) * 1e-06f);
                _1189 = _cloudDetailScale * 0.004f;
                _1192 = _cloudBaseScale * 0.0004f;
                _1195 = _earthRadius + _1177;
                _1196 = _1195 * _1195;
                _1203 = ((sqrt(((_1176 * _1176) + _478) + _1196) - _1186) - _earthRadius) / _cloudThickness;
                if (!((_1203 < 0.0f) || (_1203 > 1.0f))) {
                  _1217 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _1218 = _1177 - _1186;
                  _1219 = _1189 / _1192;
                  _1220 = _1219 * _1192;
                  _1221 = _1217 * _1219;
                  _1225 = saturate(max((_1181 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _1229 = (_cloudDetailScale * 0.001884f) * (4.0f - (_1225 * 3.0f));
                  _1230 = _1220 * 4.355f;
                  _1235 = 1.0f - sqrt(saturate((1.0f - _1203) * 1.4285715f));
                  _1272 = (((((_1225 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1189 * _1176) - (_1220 * _cloudScroll.x)), ((_1218 * _1189) - _1221), ((_1189 * _278) - (_1220 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1229 * _1176) - (_1230 * _cloudScroll.x)), ((_1229 * _1218) - (_1221 * 4.355f)), ((_1229 * _278) - (_1230 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_1203 * 4.0f) * 0.8f) + 0.2f);
                  _1313 = (saturate(((saturate(_1203 * 10.0f) * saturate(saturate(((_1174.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_1192 * (_1176 - _cloudScroll.x)), ((_1192 * _1218) - _1217), (_1192 * (_278 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_1235 * 0.5f), ((_1235 * _1235) * _1235)))) - _1272) / (1.0f - _1272)) * _cloudAlpha);
                } else {
                  _1313 = 0.0f;
                }
                _1315 = (_cloudFadeRange > 1e-05f);
                if (_1315) {
                  _1325 = saturate(((_1181 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _1325 = 1.0f;  // [sem: expr_sat]
                }
                _1326 = _278 + -50.0f;
                _1327 = _1326 - _viewPos.z;
                _1330 = sqrt((_1327 * _1327) + _1134);
                _1335 = _cloudAltitude - (max(((_1330 * _1330) + -400000.0f), 0.0f) * 1e-06f);
                _1342 = ((sqrt(((_1326 * _1326) + _477) + _1196) - _earthRadius) - _1335) / _cloudThickness;
                if (!((_1342 < 0.0f) || (_1342 > 1.0f))) {
                  _1356 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _1357 = _1177 - _1335;
                  _1358 = _1189 / _1192;
                  _1359 = _1358 * _1192;
                  _1360 = _1356 * _1358;
                  _1364 = saturate(max((_1330 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _1368 = (_cloudDetailScale * 0.001884f) * (4.0f - (_1364 * 3.0f));
                  _1369 = _1359 * 4.355f;
                  _1374 = 1.0f - sqrt(saturate((1.0f - _1342) * 1.4285715f));
                  _1411 = (((((_1364 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1189 * _272) - (_1359 * _cloudScroll.x)), ((_1357 * _1189) - _1360), ((_1189 * _1326) - (_1359 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1368 * _272) - (_1369 * _cloudScroll.x)), ((_1368 * _1357) - (_1360 * 4.355f)), ((_1368 * _1326) - (_1369 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_1342 * 4.0f) * 0.8f) + 0.2f);
                  _1452 = (saturate(((saturate(_1342 * 10.0f) * saturate(saturate(((_1174.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_1192 * (_272 - _cloudScroll.x)), ((_1357 * _1192) - _1356), (_1192 * (_1326 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_1374 * 0.5f), ((_1374 * _1374) * _1374)))) - _1411) / (1.0f - _1411)) * _cloudAlpha);
                } else {
                  _1452 = 0.0f;
                }
                if (_1315) {
                  _1462 = saturate(((_1330 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _1462 = 1.0f;  // [sem: expr_sat]
                }
                _1476 = ((((_1462 * _1452) + (_1325 * _1313)) * 20.0f) * _distanceScale);
                _1477 = _1128;
              } else {
                _1476 = 0.0f;
                _1477 = _1128;
              }
            } else {
              _1476 = ((log2(max(_880, 0.5f)) * 0.6931472f) / _881);
              _1477 = _884;
            }
            _1478 = dot(float3(_483, _484, _485), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
            _1482 = min(max(_596, 16.0f), (_atmosphereThickness + -16.0f));
            _1483 = max(_1482, 0.0f);
            _1492 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _1483) * _1483)) / (_earthRadius + _1483);
            if (_1478 > _1492) {
              _1515 = ((exp2(log2(saturate((_1478 - _1492) / (1.0f - _1492))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _1515 = ((exp2(log2(saturate((_1492 - _1478) / (_1492 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _1524 = (exp2(log2(saturate((_1482 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
            // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
            _1527 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1524, _1515), 0.0f);
            _1530 = dot(float3(_483, _484, _485), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
            if (_1530 > _1492) {
              _1553 = ((exp2(log2(saturate((_1530 - _1492) / (1.0f - _1492))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _1553 = ((exp2(log2(saturate((_1492 - _1530) / (_1492 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
            _1554 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1524, _1553), 0.0f);
            _1562 = saturate((1.0f - saturate(_265 / _216)) * 10.0f) * _737;
            _1563 = _268 * 0.5f;
            _1566 = ((_602 + _241) * _1563) + _237;
            _1569 = ((_607 + _242) * _1563) + _238;
            _1572 = ((_1562 + _243) * _1563) + _239;
            _1575 = ((_803 + _244) * _1563) + _240;
            _1576 = _1572 + _1575;
            _1577 = _1527.x + _1566;
            _1582 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
            _1585 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
            _1587 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
            // RenoDX: >>> [Patch: SkySpectralRayleigh] [Version: 1.13.00]
            // Description: Copies the exact native packed RGB beta into in-scatter-only locals, then gates red/green reconstruction from blue; extinction continues to consume the untouched native variables.
            float _rndx_offscreen_ray_r_1 = _1582;
            float _rndx_offscreen_ray_g_1 = _1585;
            float _rndx_offscreen_ray_b_1 = _1587;
            if (SKY_SCATTERING) {
              _rndx_offscreen_ray_r_1 = _rndx_offscreen_ray_b_1 * SKY_RAYLEIGH_CH1;
              _rndx_offscreen_ray_g_1 = _rndx_offscreen_ray_b_1 * SKY_RAYLEIGH_CH2;
            }
            // RenoDX: <<< [Patch: SkySpectralRayleigh]
            _1589 = _mieAerosolDensity * 2e-05f;
            _1592 = (_mieAerosolAbsorption + 1.0f) * _1589;
            _1594 = (_1527.y + _1569) * _1592;
            _1599 = _cloudScatteringCoefficient / _distanceScale;
            _1601 = (_1576 + _1477) * _1599;
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            _1605 = (_1582 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
            _1606 = _1605 * _1577;
            _1607 = _1601 + _1594;
            _1610 = (_1585 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
            _1611 = _1610 * _1577;
            _1614 = (_ozoneRatio * SKY_OZONE_3) + (_1587 * 1.9607843e-07f);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _1615 = _1614 * _1577;
            _1618 = exp2((_1606 + _1607) * -1.442695f);
            _1621 = exp2((_1611 + _1607) * -1.442695f);
            _1624 = exp2((_1607 + _1615) * -1.442695f);
          // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
          // Description: At cloud-dense ray-march steps during dawn/dusk, attenuates the green/blue
          //              transmittance channels (branchless *= below; red untouched) so sunrise and
          //              sunset clouds redden the way long-path Rayleigh-filtered sunlight should —
          //              vanilla computes extinction uniformly across cloud and clear air, so clouds
          //              never warm at the horizon. CloudReddeningFactor (sky_weather_common.hlsli)
          //              returns identity 1.0 unless ALL of the following hold (there is no dedicated
          //              cloud-reddening toggle): (1) CUSTOM_WEATHER_EDITING resolves to 1 — defined
          //              in shared.h as runtime Ray Reconstruction detection (RR_ENABLED) AND the
          //              CustomWeatherEditing flag bit (UI "Dynamic Dawn/Dusk Hues (WIP)", default On
          //              per the addon.cpp settings list, inert without RR); (2) the step's cloud
          //              optical depth argument is > 0; (3) _dawnDuskFactor > 0, requiring
          //              DAWN_DUSK_IMPROVEMENTS (UI "Dawn/Dusk Improvements (WIP)", default On) and
          //              sun elevation inside the -0.17..0.26 rad window; (4) the rolled weather
          //              preset's cloudReddening column > 0 (strength comes from that column). The saturating
          //              curve plateaus at 0.65x G/B for thick clouds instead of going black; this
          //              probe shader passes isProbe=true, so reddening is additionally attenuated to
          //              0.25x because its output feeds the GI cubemap and full-strength reddening
          //              oversaturates indirect lighting. If any condition fails the factor is
          //              exactly 1.0 and the multiplies are bit-exact no-ops.
          //              .
          // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
          float _cloudRedFactor = CloudReddeningFactor(_1601, _dawnDuskFactor, true);
          _1618 *= 1.f;               // R unchanged
          _1621 *= _cloudRedFactor;   // G attenuated
          _1624 *= _cloudRedFactor;   // B attenuated
          // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _1629 = ((_1621 * 0.33951f) + (_1618 * 0.61312f)) + (_1624 * 0.04737f);
            _1634 = ((_1621 * 0.91636f) + (_1618 * 0.0702f)) + (_1624 * 0.01345f);
            _1639 = ((_1621 * 0.10958f) + (_1618 * 0.02062f)) + (_1624 * 0.8698f);
            _1640 = _1629 * _607;
            _1641 = _1634 * _607;
            _1642 = _1639 * _607;
            _1643 = _distanceScale * _1599;
            _1654 = 1.0f - exp2((_803 * -288.539f) * _1643);
            _1655 = _602 * 1.9607843e-07f;
            _1657 = (_152 * 0.059683103f) * _1655;
            _1659 = _miePhaseConst * _miePhaseConst;
            _1660 = _1659 + 1.0f;
            _1666 = (((1.0f - _1659) * 3.0f) / ((_1659 + 2.0f) * 2.0f)) * 0.07957747f;
          // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
          // Description: Companion copies of the sun Henyey-Greenstein phase terms computed with the
          //              dawn/dusk-boosted g (see the [Patch: DawnDuskImprovements] setup block near
          //              the top of main): the sun in-scatter path consumes the *b companions for a
          //              stronger forward-scatter lobe around the low sun, while the moon HG (_1867)
          //              keeps the vanilla _1695/_1702. When Dawn/Dusk Improvements is Off (or the
          //              sun is outside the dawn/dusk window) _boostedMieG equals the vanilla
          //              _miePhaseConst, so the companions are bit-identical to the vanilla terms
          //              they mirror.
          // [DAWN_DUSK] Sun HG uses boosted g - moon HG (_1867) still uses vanilla _1695/_1702
          [branch]
          if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
            float _1689b = _boostedMieG * _boostedMieG;
            float _1695b = _1689b + 1.0f;
            float _1702b = (((1.0f - _1689b) * 3.0f) / ((_1689b + 2.0f) * 2.0f)) * 0.07957746833562851f;
            _1674 = (_1702b * _1589) * (_152 / exp2(log2(_1695b - (_boostedMieG * _154)) * 1.5f));
          } else {
              _1674 = (_1666 * _1589) * (_152 / exp2(log2(_1660 - (_miePhaseConst * _154)) * 1.5f));
          }
          // RenoDX: <<< [Patch: DawnDuskImprovements]
            _1675 = exp2(log2(1.0f - exp2((_1562 * -14.42695f) * _1643)) * 1.25f) * _1562;
            _1676 = _1675 * 64.0f;
            _1677 = _1676 * _167;
            _1682 = ((_185 * 2.0f) * _803) * _1654;
            _1684 = (_1682 * _1629) * _volumeFogScatterColor.x;
            _1687 = (_1682 * _1634) * _volumeFogScatterColor.y;
            _1690 = (_1682 * _1639) * _volumeFogScatterColor.z;
            _1694 = ((_1576 + _1476) * _1599) + (_1569 * _1592);
            _1698 = exp2(((_1605 * _1566) + _1694) * -1.442695f);
            _1702 = exp2(((_1610 * _1566) + _1694) * -1.442695f);
            _1706 = exp2((_1694 + (_1614 * _1566)) * -1.442695f);
            // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
            // Description: Attenuates only the exact green and blue members of this native RGB transmittance triplet using the path-specific cloud optical depth; red is unchanged and the helper returns identity unless all feature gates are active.
            float _rndx_cloud_red_2_1543 = CloudReddeningFactor((_1576 * (_1476 + _1599)), _dawnDuskFactor, true);
            _1702 *= _rndx_cloud_red_2_1543;
            _1706 *= _rndx_cloud_red_2_1543;
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _1707 = _1589 * _607;
            _1709 = _1599 * (_1562 + _803);
            // RenoDX: >>> [Patch: SkySpectralRayleigh] [Version: 1.13.00]
            // Description: Selects the spectral matrix in-scatter expression only when enabled and retains each complete native RGB expression as the Off arm; companion accumulation lines consume the gated beta locals.
            _1721 = SKY_SCATTERING
              ? (SKY_RAY_INSCATTER(0, _1698, _1702, _1706, _rndx_offscreen_ray_r_1, _rndx_offscreen_ray_g_1, _rndx_offscreen_ray_b_1, _1655) + SKY_VAN_DOT(0, _1698, _1702, _1706) * (_1709 + _mieScatterColor.x * _1707))
              : (((_1582 * _1655) + _1709) + (_mieScatterColor.x * _1707)) * (((_1702 * 0.33951f) + (_1698 * 0.61312f)) + (_1706 * 0.04737f));
            _1733 = (((((_1684 + (_1629 * _1677)) * _1599) + ((_rndx_offscreen_ray_r_1 * _1657) * _1629)) + ((_1674 * _1640) * _mieScatterColor.x)) + (_1721 * _595)) * _268;
            _1744 = SKY_SCATTERING
              ? (SKY_RAY_INSCATTER(1, _1698, _1702, _1706, _rndx_offscreen_ray_r_1, _rndx_offscreen_ray_g_1, _rndx_offscreen_ray_b_1, _1655) + SKY_VAN_DOT(1, _1698, _1702, _1706) * (_1709 + _mieScatterColor.y * _1707))
              : (((_1585 * _1655) + _1709) + (_mieScatterColor.y * _1707)) * (((_1702 * 0.91636f) + (_1698 * 0.0702f)) + (_1706 * 0.01345f));
            _1756 = (((((_1687 + (_1634 * _1677)) * _1599) + ((_rndx_offscreen_ray_g_1 * _1657) * _1634)) + ((_1674 * _1641) * _mieScatterColor.y)) + (_1744 * _594)) * _268;
            _1767 = SKY_SCATTERING
              ? (SKY_RAY_INSCATTER(2, _1698, _1702, _1706, _rndx_offscreen_ray_r_1, _rndx_offscreen_ray_g_1, _rndx_offscreen_ray_b_1, _1655) + SKY_VAN_DOT(2, _1698, _1702, _1706) * (_1709 + _mieScatterColor.z * _1707))
              : ((_1709 + (_1587 * _1655)) + (_mieScatterColor.z * _1707)) * (((_1702 * 0.10958f) + (_1698 * 0.02062f)) + (_1706 * 0.8698f));
            _1779 = (((((_1690 + (_1639 * _1677)) * _1599) + ((_rndx_offscreen_ray_b_1 * _1657) * _1639)) + ((_1674 * _1642) * _mieScatterColor.z)) + (_1767 * _593)) * _268;
            // RenoDX: <<< [Patch: SkySpectralRayleigh]
            _1780 = _1554.x + _1566;
            _1782 = (_1554.y + _1569) * _1592;
            _1783 = _1605 * _1780;
            _1784 = _1601 + _1782;
            _1785 = _1610 * _1780;
            _1786 = _1614 * _1780;
            _1789 = exp2((_1783 + _1784) * -1.442695f);
            _1792 = exp2((_1785 + _1784) * -1.442695f);
            _1795 = exp2((_1784 + _1786) * -1.442695f);
          // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
          // Description: At cloud-dense ray-march steps during dawn/dusk, attenuates the green/blue
          //              transmittance channels (branchless *= below; red untouched) so sunrise and
          //              sunset clouds redden the way long-path Rayleigh-filtered sunlight should —
          //              vanilla computes extinction uniformly across cloud and clear air, so clouds
          //              never warm at the horizon. CloudReddeningFactor (sky_weather_common.hlsli)
          //              returns identity 1.0 unless ALL of the following hold (there is no dedicated
          //              cloud-reddening toggle): (1) CUSTOM_WEATHER_EDITING resolves to 1 — defined
          //              in shared.h as runtime Ray Reconstruction detection (RR_ENABLED) AND the
          //              CustomWeatherEditing flag bit (UI "Dynamic Dawn/Dusk Hues (WIP)", default On
          //              per the addon.cpp settings list, inert without RR); (2) the step's cloud
          //              optical depth argument is > 0; (3) _dawnDuskFactor > 0, requiring
          //              DAWN_DUSK_IMPROVEMENTS (UI "Dawn/Dusk Improvements (WIP)", default On) and
          //              sun elevation inside the -0.17..0.26 rad window; (4) the rolled weather
          //              preset's cloudReddening column > 0 (strength comes from that column). The saturating
          //              curve plateaus at 0.65x G/B for thick clouds instead of going black; this
          //              probe shader passes isProbe=true, so reddening is additionally attenuated to
          //              0.25x because its output feeds the GI cubemap and full-strength reddening
          //              oversaturates indirect lighting. If any condition fails the factor is
          //              exactly 1.0 and the multiplies are bit-exact no-ops.
          //              .
          // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
          float _cloudRedFactor3 = CloudReddeningFactor(_1601, _dawnDuskFactor, true);
          _1789 *= 1.f;                // R unchanged
          _1792 *= _cloudRedFactor3;   // G attenuated
          _1795 *= _cloudRedFactor3;   // B attenuated
          // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _1797 = (_192 * 0.059683103f) * _1655;
            _1805 = (_1666 * _1707) * (_192 / exp2(log2(_1660 - (_miePhaseConst * _193)) * 1.5f));
            _1811 = ((((_208 * 2.0f) * _803) * _1654) + (_1676 * _200)) * _1599;
            // RenoDX: >>> [Patch: SkySpectralRayleigh] [Version: 1.13.00]
            // Description: Selects the second offscreen RGB spectral in-scatter cluster while preserving the three complete native expressions as exact Off arms.
            _1825 = SKY_SCATTERING
              ? (((SKY_RAY_INSCATTER(0, _1789, _1792, _1795, _rndx_offscreen_ray_r_1, _rndx_offscreen_ray_g_1, _rndx_offscreen_ray_b_1, _1797) + SKY_VAN_DOT(0, _1789, _1792, _1795) * (_1811 + _1805 * _mieScatterColor.x) + (_1721 * _592)) * _268) + _231)
              : (((((_1811 + (_1582 * _1797)) + (_1805 * _mieScatterColor.x)) * (((_1792 * 0.33951f) + (_1789 * 0.61312f)) + (_1795 * 0.04737f))) + (_1721 * _592)) * _268) + _231;
            _1839 = SKY_SCATTERING
              ? (((SKY_RAY_INSCATTER(1, _1789, _1792, _1795, _rndx_offscreen_ray_r_1, _rndx_offscreen_ray_g_1, _rndx_offscreen_ray_b_1, _1797) + SKY_VAN_DOT(1, _1789, _1792, _1795) * (_1811 + _1805 * _mieScatterColor.y) + (_1744 * _591)) * _268) + _232)
              : (((((_1811 + (_1585 * _1797)) + (_1805 * _mieScatterColor.y)) * (((_1792 * 0.91636f) + (_1789 * 0.0702f)) + (_1795 * 0.01345f))) + (_1744 * _591)) * _268) + _232;
            _1853 = SKY_SCATTERING
              ? (((SKY_RAY_INSCATTER(2, _1789, _1792, _1795, _rndx_offscreen_ray_r_1, _rndx_offscreen_ray_g_1, _rndx_offscreen_ray_b_1, _1797) + SKY_VAN_DOT(2, _1789, _1792, _1795) * (_1811 + _1805 * _mieScatterColor.z) + (_1767 * _590)) * _268) + _233)
              : (((((_1811 + (_1587 * _1797)) + (_1805 * _mieScatterColor.z)) * (((_1792 * 0.10958f) + (_1789 * 0.02062f)) + (_1795 * 0.8698f))) + (_1767 * _590)) * _268) + _233;
            // RenoDX: <<< [Patch: SkySpectralRayleigh]
            if (_1562 > 0.001f) {
              _1857 = _cloudPhaseConstFront * 0.5f;
              _1858 = _1857 * _1857;
              _1861 = (_1576 + (_1477 * 0.2f)) * _1599;
              _1862 = _1861 + _1594;
              _1865 = exp2((_1606 + _1862) * -1.442695f);
              _1868 = exp2((_1611 + _1862) * -1.442695f);
              _1871 = exp2((_1862 + _1615) * -1.442695f);
              _1878 = _1858 + 1.0f;
              _1887 = (((_1675 * 4.0743666f) * _268) * _1599) * (((1.0f - _1858) * 3.0f) / ((_1858 + 2.0f) * 2.0f));
              _1888 = (_152 / exp2(log2(_1878 - (_cloudPhaseConstFront * _147)) * 1.5f)) * _1887;
            // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
            // Description: At cloud-dense ray-march steps during dawn/dusk, attenuates the green/blue
            //              transmittance channels (branchless *= below; red untouched) so sunrise and
            //              sunset clouds redden the way long-path Rayleigh-filtered sunlight should —
            //              vanilla computes extinction uniformly across cloud and clear air, so clouds
            //              never warm at the horizon. CloudReddeningFactor (sky_weather_common.hlsli)
            //              returns identity 1.0 unless ALL of the following hold (there is no dedicated
            //              cloud-reddening toggle): (1) CUSTOM_WEATHER_EDITING resolves to 1 — defined
            //              in shared.h as runtime Ray Reconstruction detection (RR_ENABLED) AND the
            //              CustomWeatherEditing flag bit (UI "Dynamic Dawn/Dusk Hues (WIP)", default On
            //              per the addon.cpp settings list, inert without RR); (2) the step's cloud
            //              optical depth argument is > 0; (3) _dawnDuskFactor > 0, requiring
            //              DAWN_DUSK_IMPROVEMENTS (UI "Dawn/Dusk Improvements (WIP)", default On) and
            //              sun elevation inside the -0.17..0.26 rad window; (4) the rolled weather
            //              preset's cloudReddening column > 0 (strength comes from that column). The saturating
            //              curve plateaus at 0.65x G/B for thick clouds instead of going black; this
            //              probe shader passes isProbe=true, so reddening is additionally attenuated to
            //              0.25x because its output feeds the GI cubemap and full-strength reddening
            //              oversaturates indirect lighting. If any condition fails the factor is
            //              exactly 1.0 and the multiplies are bit-exact no-ops.
            //              .
            // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
            float _cloudRedFactor4 = CloudReddeningFactor(_1861, _dawnDuskFactor, true);
            _1865 *= 1.f;                // R unchanged
            _1868 *= _cloudRedFactor4;   // G attenuated
            _1871 *= _cloudRedFactor4;   // B attenuated
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
              _1889 = _1861 + _1782;
              _1892 = exp2((_1783 + _1889) * -1.442695f);
              _1895 = exp2((_1785 + _1889) * -1.442695f);
              _1898 = exp2((_1889 + _1786) * -1.442695f);
              _1905 = (_192 / exp2(log2(_1878 - (_cloudPhaseConstFront * _190)) * 1.5f)) * _1887;
              _1949 = ((_1888 * (((_1868 * 0.10958f) + (_1865 * 0.02062f)) + (_1871 * 0.8698f))) + _1779);
              _1950 = ((_1888 * (((_1868 * 0.91636f) + (_1865 * 0.0702f)) + (_1871 * 0.01345f))) + _1756);
              _1951 = ((_1888 * (((_1868 * 0.33951f) + (_1865 * 0.61312f)) + (_1871 * 0.04737f))) + _1733);
              _1952 = ((_1905 * (((_1895 * 0.10958f) + (_1892 * 0.02062f)) + (_1898 * 0.8698f))) + _1853);
              _1953 = ((_1905 * (((_1895 * 0.91636f) + (_1892 * 0.0702f)) + (_1898 * 0.01345f))) + _1839);
            // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
            // Description: At cloud-dense ray-march steps during dawn/dusk, attenuates the green/blue
            //              transmittance channels (branchless *= below; red untouched) so sunrise and
            //              sunset clouds redden the way long-path Rayleigh-filtered sunlight should —
            //              vanilla computes extinction uniformly across cloud and clear air, so clouds
            //              never warm at the horizon. CloudReddeningFactor (sky_weather_common.hlsli)
            //              returns identity 1.0 unless ALL of the following hold (there is no dedicated
            //              cloud-reddening toggle): (1) CUSTOM_WEATHER_EDITING resolves to 1 — defined
            //              in shared.h as runtime Ray Reconstruction detection (RR_ENABLED) AND the
            //              CustomWeatherEditing flag bit (UI "Dynamic Dawn/Dusk Hues (WIP)", default On
            //              per the addon.cpp settings list, inert without RR); (2) the step's cloud
            //              optical depth argument is > 0; (3) _dawnDuskFactor > 0, requiring
            //              DAWN_DUSK_IMPROVEMENTS (UI "Dawn/Dusk Improvements (WIP)", default On) and
            //              sun elevation inside the -0.17..0.26 rad window; (4) the rolled weather
            //              preset's cloudReddening column > 0 (strength comes from that column). The saturating
            //              curve plateaus at 0.65x G/B for thick clouds instead of going black; this
            //              probe shader passes isProbe=true, so reddening is additionally attenuated to
            //              0.25x because its output feeds the GI cubemap and full-strength reddening
            //              oversaturates indirect lighting. If any condition fails the factor is
            //              exactly 1.0 and the multiplies are bit-exact no-ops.
            //              .
            // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
            float _cloudRedFactor5 = CloudReddeningFactor(_1861, _dawnDuskFactor, true);
            _1892 *= 1.f;                // R unchanged
            _1895 *= _cloudRedFactor5;   // G attenuated
            _1898 *= _cloudRedFactor5;   // B attenuated
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
              _1954 = ((_1905 * (((_1895 * 0.33951f) + (_1892 * 0.61312f)) + (_1898 * 0.04737f))) + _1825);
            } else {
              _1949 = _1779;
              _1950 = _1756;
              _1951 = _1733;
              _1952 = _1853;
              _1953 = _1839;
              _1954 = _1825;
            }
            _1963 = _precomputedAmbient7.y * saturate(((float)((int)((int)(((float)((uint)((uint)(_474)))) * 0.33f)))) + _114);
            if (!((_260 < _140) && (_275 < _475))) {
              _1997 = (_viewPos.y > _475);
            } else {
              _1997 = true;
            }
            _2005 = ((int)(uint)((int)(exp2((_1599 * -1.442695f) * _1576) < 0.001f)));
            _2006 = ((int)(uint)(_1997));
            _2007 = _803;
            _2008 = _1562;
            _2009 = _607;
            _2010 = _602;
            _2011 = _1575;
            _2012 = _1572;
            _2013 = _1569;
            _2014 = _1566;
            _2015 = (((_1963 * _1949) + _236) + (((_1690 + (_1642 * _1589)) * _268) * (_precomputedAmbients[48].z)));
            _2016 = (((_1963 * _1950) + _235) + (((_1687 + (_1641 * _1589)) * _268) * (_precomputedAmbients[48].y)));
            _2017 = (((_1963 * _1951) + _234) + (((_1684 + (_1640 * _1589)) * _268) * (_precomputedAmbients[48].x)));
            _2018 = _1952;
            _2019 = _1953;
            _2020 = _1954;
            _2021 = _474;
            _2022 = _473;
            _2023 = _261;
          }
          _2024 = (uint)((uint)(_2021)) + (uint)(1);
          if ((_2005 == 0) && ((_2006 != 0) && ((uint)_2024 < (uint)64))) {
            _228 = _2023;
            _229 = _2022;
            _230 = _2024;
            _231 = _2020;
            _232 = _2019;
            _233 = _2018;
            _234 = _2017;
            _235 = _2016;
            _236 = _2015;
            _237 = _2014;
            _238 = _2013;
            _239 = _2012;
            _240 = _2011;
            _241 = _2010;
            _242 = _2009;
            _243 = _2008;
            _244 = _2007;
            _245 = _2006;
            continue;
          }
          _2032 = select((_2005 != 0), 1e+06f, _2012);
          _2037 = _earthRadius + _cloudCirrusAltitude;
          _2041 = _129 - ((_128 - (_2037 * _2037)) * _130);
          if (!(_2041 < 0.0f)) {
            _2048 = ((sqrt(_2041) - _127) / _139);
          } else {
            _2048 = -1.0f;
          }
          _2052 = _129 - ((_128 - (_earthRadius * _earthRadius)) * _130);
          if (!(_2052 < 0.0f)) {
            _2059 = ((sqrt(_2052) - _127) / _139);
          } else {
            _2059 = -1.0f;
          }
          if ((_2048 >= 0.0f) && (_2059 <= 0.0f)) {
            _2065 = _cloudCirrusScale * 5e-05f;
            _2066 = _2048 * _99;
            _2067 = _2048 * _101;
            _2070 = _viewPos.x + _2066;
            _2071 = _2048 * _100;
            _2073 = _viewPos.y + _2071;
            _2075 = _viewPos.z + _2067;
            _2080 = (_2070 * _2065) - (_cloudScroll.y * 0.0003f);
            _2084 = (_2075 * _2065) - (_cloudScroll.x * 0.0003f);
            // [sem: _3__36__0__0__g_texCirrus_SampleBias]
            _2087 = __3__36__0__0__g_texCirrus.SampleBias(__0__95__0__0__g_samplerAnisotropicWrap, float2(_2080, _2084), -1.0f, int2(0, 0));
            _30[0] = _2087.x;
            _30[1] = _2087.y;
            _30[2] = _2087.z;
            _30[3] = _2087.w;
            _2099 = max(0.01f, ((3.0f - _cloudCirrusDensity) * 20000.0f));
            _2103 = sqrt((_2066 * _2066) + (_2067 * _2067));
            if (!(_2103 > _2099)) {
              _2111 = (1.0f - cos((1.5707964f / _2099) * _2103));
            } else {
              _2111 = 1.0f;
            }
            _2112 = _2111 * _cloudCirrusDensity;
            _30[0] = ((_2087.x * _cloudCirrusWeightR) * _2112);
            _30[1] = ((_2112 * _2087.y) * _cloudCirrusWeightG);
            _30[2] = ((_2112 * _2087.z) * _cloudCirrusWeightB);
            _2141 = ((((sin(_2080 * 1.5f) * 0.5f) * sin(_2084 * 1.5f)) + ((sin(mad(_2084, -0.6f, (_2080 * 0.8f)) * 3.03f) * 0.25f) * sin(mad(_2084, 0.8f, (_2080 * 0.6f)) * 3.03f))) * 1.6000001f) + 1.5f;
            _2144 = (int)(min(max(_2141, 0.0f), 2.0f));
            _2147 = _30[((int)min((uint)(_2144), (uint)(3)))];
            _2158 = (((_30[((int)min((uint)(((int)((int)(_2144) + (int)(1)) % (int)(3))), (uint)(3)))]) - _2147) * saturate(_2141 - ((float)((int)(_2144))))) + _2147;
            _2159 = _2073 + _earthRadius;
            _2160 = _2070 * _2070;
            _2161 = _2075 * _2075;
            _2165 = sqrt((_2161 + _2160) + (_2159 * _2159));
            _2166 = _2070 / _2165;
            _2167 = _2159 / _2165;
            _2168 = _2075 / _2165;
            _2169 = _2165 - _earthRadius;
            if (_2169 > 0.0f) {
              _2172 = dot(float3(_2166, _2167, _2168), float3(_99, _100, _101));
              _2177 = min(max(_2169, 16.0f), (_atmosphereThickness + -16.0f));
              _2178 = max(_2177, 0.0f);
              _2185 = (-0.0f - sqrt((_2178 + (_earthRadius * 2.0f)) * _2178)) / (_2178 + _earthRadius);
              _2186 = (_2172 > _2185);
              if (_2186) {
                _2208 = ((exp2(log2(saturate((_2172 - _2185) / (1.0f - _2185))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _2208 = ((exp2(log2(saturate((_2185 - _2172) / (_2185 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              _2217 = (exp2(log2(saturate((_2177 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
              _2230 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2217, _2208, ((1.0f - exp2(-1.1541561f - (dot(float3(_2166, _2167, _2168), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
              if (_2186) {
                _2255 = ((exp2(log2(saturate((_2172 - _2185) / (1.0f - _2185))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _2255 = ((exp2(log2(saturate((_2185 - _2172) / (_2185 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
              _2266 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2217, _2255, ((1.0f - exp2(-1.1541561f - (dot(float3(_2166, _2167, _2168), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
              _2274 = (_2266.z * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2275 = (_2266.y * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2276 = (_2266.x * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2277 = _2230.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2278 = _2230.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2279 = _2230.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            } else {
              _2274 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2275 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2276 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2277 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2278 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2279 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            }
            _2280 = max(_2169, 0.01f);
            _2281 = -0.0f - _2280;
            _2286 = exp2((_2281 / _rayleighScaledHeight) * 1.442695f);
            _2291 = exp2((_2281 / _mieScaledHeight) * 1.442695f);
            _2294 = (_2067 * _2067) + (_2066 * _2066);
            _2295 = sqrt(_2294);
            _2299 = max(((_2295 * _2295) + -400000.0f), 0.0f) * 1e-06f;
            _2302 = _cloudAltitude - _2299;
            _2305 = _cloudDetailScale * 0.004f;
            _2308 = _cloudBaseScale * 0.0004f;
            _2313 = ((_2165 - _earthRadius) - _2302) / _cloudThickness;
            if (!((_2313 < 0.0f) || (_2313 > 1.0f))) {
              _2326 = (((_cloudFlow * 0.001f) * _cloudScrollMultiplier) * _time.x) + _cloudSeed;
              _2327 = _2073 - _2302;
              _2328 = _2305 / _2308;
              _2329 = _2328 * _2308;
              _2330 = _2326 * _2328;
              _2338 = (_cloudDetailScale * 0.001884f) * (4.0f - (saturate(max((_2295 + -2500.0f), 0.0f) * 0.05f) * 3.0f));
              _2339 = _2329 * 4.355f;
              _2344 = 1.0f - sqrt(saturate((1.0f - _2313) * 1.4285715f));
              _2376 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2305 * _2070) - (_2329 * _cloudScroll.x)), ((_2327 * _2305) - _2330), ((_2305 * _2075) - (_2329 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2338 * _2070) - (_2339 * _cloudScroll.x)), ((_2338 * _2327) - (_2330 * 4.355f)), ((_2338 * _2075) - (_2339 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_2313 * 4.0f) * 0.8f) + 0.2f);
              _2416 = (saturate(((saturate(_2313 * 10.0f) * saturate(saturate(((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2308 * (_2070 - _cloudScroll.x)), ((_2308 * _2327) - _2326), (_2308 * (_2075 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_2344 * 0.5f), ((_2344 * _2344) * _2344)))) - _2376) / (1.0f - _2376)) * _cloudAlpha);
            } else {
              _2416 = 0.0f;
            }
            if (_cloudFadeRange > 1e-05f) {
              _2428 = saturate((((1.0f - _cloudNear) * _2295) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
            } else {
              _2428 = 1.0f;  // [sem: expr_sat]
            }
            _2431 = sqrt(_2294 + (_2071 * _2071));
            _2435 = max(1e-06f, (_heightFogScale * 0.0025f));
            _2436 = _2435 * _cloudScroll.x;
            _2437 = _2435 * _cloudScroll.y;
            _2438 = _2435 * _2070;
            _2439 = _2435 * _2073;
            _2440 = _2435 * _2075;
            // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
            _2450 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2438 * 6.393882f) - (_2436 * 1.871f)), (_2439 * 6.393882f), ((_2440 * 6.393882f) - (_2437 * 1.871f))), 0.0f);
            _2481 = ((((saturate(_2431 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2438 * 0.5127f) - _2436), (_2439 * 0.5127f), ((_2440 * 0.5127f) - _2437)), 0.0f)).x))) * exp2((_heightFogFalloff * -0.14426951f) * max(0.001f, (_2280 - _heightFogBaseline)))) * ((saturate((_2431 + -300.0f) * 0.0025f) * (0.5f - _2450.x)) + _2450.x)) * _heightFogDensity;
            _2482 = _2073 - _cloudAltitude;
            _2484 = (_2482 + _2299) / _cloudThickness;
            if (!(_sunDirection.y > 0.0f)) {
              _2493 = (_sunDirection.y > _moonDirection.y);
            } else {
              _2493 = true;
            }
            _2497 = select(_2493, _sunDirection.x, _moonDirection.x);
            _2499 = select(_2493, _sunDirection.y, _moonDirection.y);
            _2502 = select(_2493, _sunDirection.z, _moonDirection.z);
            _2503 = (_2499 > 0.0f);
            _2512 = ((0.5f - (((float)((int)((int)((int)(uint)(_2503)) - (int)((int)(uint)((int)(_2499 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _2302;
            if (_2073 < _2302) {
              _2515 = dot(float3(0.0f, 1.0f, 0.0f), float3(_2497, _2499, _2502));
              _2521 = select((abs(_2515) < 1e-08f), 1e+08f, ((_2512 - dot(float3(0.0f, 1.0f, 0.0f), float3(_2070, _2073, _2075))) / _2515));
              _2527 = ((_2521 * _2502) + _2075);
              _2528 = _2512;
              _2529 = ((_2521 * _2497) + _2070);
            } else {
              _2527 = _2075;
              _2528 = _2073;
              _2529 = _2070;
            }
            _2532 = _cloudScatteringCoefficient / _distanceScale;
            _2533 = abs(_2499);
            _2535 = saturate(_2533 * 4.0f);  // [sem: expr_sat]
            _2553 = (_2535 * _2535) * exp2(((_distanceScale * -1.442695f) * _2532) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_2529 - _viewPos.x) * 5e-05f) + 0.5f), ((_2528 - _cloudAltitude) / _cloudThickness), (((_2527 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x));
            _2559 = ((1.0f - _2553) * saturate((_2482 - _cloudThickness) * 0.1f)) + _2553;
            _2560 = -0.0f - _2532;
            _2563 = (log2(_2559) * 0.6931472f) / _2560;
            if ((_2484 <= 1.0f) && (((_2428 * _2416) > 0.001f) && (_2484 >= 0.0f))) {
              _2572 = (_2073 - _2302) / _cloudThickness;
              if (!((_2572 < 0.0f) || (_2572 > 1.0f))) {
                if (_2533 > 0.001f) {
                  _2585 = min(300.0f, (((_2302 - _2073) + select(_2503, _cloudThickness, 0.0f)) / _2499));
                } else {
                  _2585 = 300.0f;
                }
                _2586 = _2585 * 0.2f;
                _2587 = _2586 * _2497;
                _2588 = _2586 * _2499;
                _2589 = _2586 * _2502;
                _2597 = 0;
                _2598 = ((_2589 * 0.5f) + _2075);
                _2599 = ((_2588 * 0.5f) + _2073);
                _2600 = ((_2587 * 0.5f) + _2070);
                _2601 = _2589;
                _2602 = _2588;
                _2603 = _2587;
                _2604 = _2586;
                _2605 = 0.0f;
                while(true) {
                  _2608 = _2600 - _viewPos.x;
                  _2610 = _2598 - _viewPos.z;
                  _2614 = sqrt((_2610 * _2610) + (_2608 * _2608));
                  _2621 = _cloudAltitude - (max(((_2614 * _2614) + -400000.0f), 0.0f) * 1e-06f);
                  _2624 = _cloudDetailScale * 0.004f;
                  _2627 = _cloudBaseScale * 0.0004f;
                  _2630 = _earthRadius + _2599;
                  _2641 = ((sqrt(((_2600 * _2600) + (_2598 * _2598)) + (_2630 * _2630)) - _2621) - _earthRadius) / _cloudThickness;
                  if (!((_2641 < 0.0f) || (_2641 > 1.0f))) {
                    _2655 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                    _2656 = _2599 - _2621;
                    _2657 = _2624 / _2627;
                    _2658 = _2657 * _2627;
                    _2659 = _2655 * _2657;
                    _2663 = saturate(max((_2614 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                    _2667 = (_cloudDetailScale * 0.001884f) * (4.0f - (_2663 * 3.0f));
                    _2668 = _2658 * 4.355f;
                    _2673 = 1.0f - sqrt(saturate((1.0f - _2641) * 1.4285715f));
                    // [sem: expr_sat]
                    _2732 = saturate(_2641 * 10.0f) * saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_2600 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + (_2598 / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2600 - _cloudScroll.x) * _2627), ((_2627 * _2656) - _2655), ((_2598 - _cloudScroll.y) * _2627)), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_2673 * 0.5f), ((_2673 * _2673) * _2673)));
                    _2763 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2667 * _2600) - (_cloudScroll.x * _2668)), ((_2667 * _2656) - (_2659 * 4.355f)), ((_2667 * _2598) - (_cloudScroll.y * _2668))), 0.0f)).x) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2624 * _2600) - (_cloudScroll.x * _2658)), ((_2624 * _2656) - _2659), ((_2624 * _2598) - (_cloudScroll.y * _2658))), 0.0f)).x))) * ((saturate(_2641 * 4.0f) * 0.8f) + 0.2f);
                    _2766 = _2763 * ((_2663 * 0.4f) + 0.1f);
                    _2779 = (saturate((_2732 - _2766) / (1.0f - _2766)) * _cloudAlpha);
                    _2780 = (saturate((_2732 - _2763) / (1.0f - _2763)) * _cloudAlpha);
                  } else {
                    _2779 = 0.0f;
                    _2780 = 0.0f;
                  }
                  _2794 = (((exp2((((_2604 * -0.0072134747f) * _2605) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (_2780 - _2779)) + _2779) * _2604) + _2605;
                  _2795 = _2603 + _2600;
                  _2796 = _2602 + _2599;
                  _2797 = _2601 + _2598;
                  _2798 = _2604 * 1.3f;
                  _2799 = _2603 * 1.3f;
                  _2800 = _2602 * 1.3f;
                  _2801 = _2601 * 1.3f;
                  _2802 = (int)(_2597) + (int)(1);
                  if (!(_2802 == 6)) {
                    _2597 = _2802;
                    _2598 = _2797;
                    _2599 = _2796;
                    _2600 = _2795;
                    _2601 = _2801;
                    _2602 = _2800;
                    _2603 = _2799;
                    _2604 = _2798;
                    _2605 = _2794;
                    continue;
                  }
                  _2807 = (_2794 * _distanceScale);
                  break;
                }
              } else {
                _2807 = 0.0f;
              }
              _2808 = max(_2563, _2807);
              _2811 = _2070 - _viewPos.x;
              _2813 = _2075 - _viewPos.z;
              _2814 = _2811 * _2811;
              _2815 = _2813 * _2813;
              _2817 = sqrt(_2815 + _2814);
              _2828 = ((_2073 - _cloudAltitude) + (max(((_2817 * _2817) + -400000.0f), 0.0f) * 1e-06f)) / _cloudThickness;
              if (!((_2828 < 0.0f) || (_2828 > 1.0f))) {
                // [sem: _3__36__0__0__g_climateTex2_sampleLod]
                _2854 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_2070 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_2075 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                _2856 = _2070 + 50.0f;
                _2857 = _2073 + 200.0f;
                _2858 = _2856 - _viewPos.x;
                _2861 = sqrt((_2858 * _2858) + _2815);
                _2866 = _cloudAltitude - (max(((_2861 * _2861) + -400000.0f), 0.0f) * 1e-06f);
                _2869 = _cloudDetailScale * 0.004f;
                _2872 = _cloudBaseScale * 0.0004f;
                _2875 = _earthRadius + _2857;
                _2876 = _2875 * _2875;
                _2883 = ((sqrt(((_2856 * _2856) + _2161) + _2876) - _2866) - _earthRadius) / _cloudThickness;
                if (!((_2883 < 0.0f) || (_2883 > 1.0f))) {
                  _2897 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _2898 = _2857 - _2866;
                  _2899 = _2869 / _2872;
                  _2900 = _2899 * _2872;
                  _2901 = _2897 * _2899;
                  _2905 = saturate(max((_2861 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _2909 = (_cloudDetailScale * 0.001884f) * (4.0f - (_2905 * 3.0f));
                  _2910 = _2900 * 4.355f;
                  _2915 = 1.0f - sqrt(saturate((1.0f - _2883) * 1.4285715f));
                  _2952 = (((((_2905 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2869 * _2856) - (_2900 * _cloudScroll.x)), ((_2898 * _2869) - _2901), ((_2869 * _2075) - (_2900 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2909 * _2856) - (_2910 * _cloudScroll.x)), ((_2909 * _2898) - (_2901 * 4.355f)), ((_2909 * _2075) - (_2910 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_2883 * 4.0f) * 0.8f) + 0.2f);
                  _2993 = (saturate(((saturate(_2883 * 10.0f) * saturate(saturate(((_2854.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2872 * (_2856 - _cloudScroll.x)), ((_2872 * _2898) - _2897), (_2872 * (_2075 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_2915 * 0.5f), ((_2915 * _2915) * _2915)))) - _2952) / (1.0f - _2952)) * _cloudAlpha);
                } else {
                  _2993 = 0.0f;
                }
                _2995 = (_cloudFadeRange > 1e-05f);
                if (_2995) {
                  _3005 = saturate(((_2861 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _3005 = 1.0f;  // [sem: expr_sat]
                }
                _3006 = _2075 + -50.0f;
                _3007 = _3006 - _viewPos.z;
                _3010 = sqrt((_3007 * _3007) + _2814);
                _3015 = _cloudAltitude - (max(((_3010 * _3010) + -400000.0f), 0.0f) * 1e-06f);
                _3022 = ((sqrt(((_3006 * _3006) + _2160) + _2876) - _earthRadius) - _3015) / _cloudThickness;
                if (!((_3022 < 0.0f) || (_3022 > 1.0f))) {
                  _3036 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _3037 = _2857 - _3015;
                  _3038 = _2869 / _2872;
                  _3039 = _3038 * _2872;
                  _3040 = _3036 * _3038;
                  _3044 = saturate(max((_3010 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _3048 = (_cloudDetailScale * 0.001884f) * (4.0f - (_3044 * 3.0f));
                  _3049 = _3039 * 4.355f;
                  _3054 = 1.0f - sqrt(saturate((1.0f - _3022) * 1.4285715f));
                  _3091 = (((((_3044 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2869 * _2070) - (_3039 * _cloudScroll.x)), ((_3037 * _2869) - _3040), ((_2869 * _3006) - (_3039 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_3048 * _2070) - (_3049 * _cloudScroll.x)), ((_3048 * _3037) - (_3040 * 4.355f)), ((_3048 * _3006) - (_3049 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_3022 * 4.0f) * 0.8f) + 0.2f);
                  _3132 = (saturate(((saturate(_3022 * 10.0f) * saturate(saturate(((_2854.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2872 * (_2070 - _cloudScroll.x)), ((_3037 * _2872) - _3036), (_2872 * (_3006 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_3054 * 0.5f), ((_3054 * _3054) * _3054)))) - _3091) / (1.0f - _3091)) * _cloudAlpha);
                } else {
                  _3132 = 0.0f;
                }
                if (_2995) {
                  _3142 = saturate(((_3010 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _3142 = 1.0f;  // [sem: expr_sat]
                }
                _3156 = ((((_3142 * _3132) + (_3005 * _2993)) * 20.0f) * _distanceScale);
                _3157 = _2808;
              } else {
                _3156 = 0.0f;
                _3157 = _2808;
              }
            } else {
              _3156 = ((log2(max(_2559, 0.5f)) * 0.6931472f) / _2560);
              _3157 = _2563;
            }
            _3158 = dot(float3(_2166, _2167, _2168), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
            _3162 = min(max(_2280, 16.0f), (_atmosphereThickness + -16.0f));
            _3163 = max(_3162, 0.0f);
            _3172 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _3163) * _3163)) / (_earthRadius + _3163);
            if (_3158 > _3172) {
              _3195 = ((exp2(log2(saturate((_3158 - _3172) / (1.0f - _3172))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _3195 = ((exp2(log2(saturate((_3172 - _3158) / (_3172 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _3204 = (exp2(log2(saturate((_3162 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
            // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
            _3207 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3204, _3195), 0.0f);
            _3210 = dot(float3(_2166, _2167, _2168), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
            if (_3210 > _3172) {
              _3233 = ((exp2(log2(saturate((_3210 - _3172) / (1.0f - _3172))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _3233 = ((exp2(log2(saturate((_3172 - _3210) / (_3172 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
            _3234 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3204, _3233), 0.0f);
            _3239 = ((_2286 + _2010) * 12.5f) + _2014;
            _3242 = ((_2291 + _2009) * 12.5f) + _2013;
            _3245 = ((_2158 + _2008) * 12.5f) + _2032;
            _3248 = ((_2481 + _2007) * 12.5f) + _2011;
            _3249 = _3248 + _3245;
            _3250 = _3207.x + _3239;
            _3255 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
            _3258 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
            _3260 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
            // RenoDX: >>> [Patch: SkySpectralRayleigh] [Version: 1.13.00]
            // Description: Copies the exact native packed RGB beta into in-scatter-only locals, then gates red/green reconstruction from blue; extinction continues to consume the untouched native variables.
            float _rndx_offscreen_ray_r_2 = _3255;
            float _rndx_offscreen_ray_g_2 = _3258;
            float _rndx_offscreen_ray_b_2 = _3260;
            if (SKY_SCATTERING) {
              _rndx_offscreen_ray_r_2 = _rndx_offscreen_ray_b_2 * SKY_RAYLEIGH_CH1;
              _rndx_offscreen_ray_g_2 = _rndx_offscreen_ray_b_2 * SKY_RAYLEIGH_CH2;
            }
            // RenoDX: <<< [Patch: SkySpectralRayleigh]
            _3262 = _mieAerosolDensity * 2e-05f;
            _3265 = (_mieAerosolAbsorption + 1.0f) * _3262;
            _3270 = _cloudScatteringCoefficient / _distanceScale;
            _3272 = _3270 * (_3157 + _3249);
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            _3276 = (_3255 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
            _3279 = _3272 + ((_3207.y + _3242) * _3265);
            _3282 = (_3258 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
            _3285 = (_ozoneRatio * SKY_OZONE_3) + (_3260 * 1.9607843e-07f);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _3289 = exp2(((_3276 * _3250) + _3279) * -1.442695f);
            _3293 = exp2(((_3282 * _3250) + _3279) * -1.442695f);
            _3297 = exp2(((_3285 * _3250) + _3279) * -1.442695f);
            // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
            // Description: Attenuates only the exact green and blue members of this native RGB transmittance triplet using the path-specific cloud optical depth; red is unchanged and the helper returns identity unless all feature gates are active.
            float _rndx_cloud_red_6_1995 = CloudReddeningFactor(_3272, _dawnDuskFactor, true);
            _3293 *= _rndx_cloud_red_6_1995;
            _3297 *= _rndx_cloud_red_6_1995;
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _3302 = ((_3293 * 0.33951f) + (_3289 * 0.61312f)) + (_3297 * 0.04737f);
            _3307 = ((_3293 * 0.91636f) + (_3289 * 0.0702f)) + (_3297 * 0.01345f);
            _3312 = ((_3293 * 0.10958f) + (_3289 * 0.02062f)) + (_3297 * 0.8698f);
            _3313 = _3302 * _2291;
            _3314 = _3307 * _2291;
            _3315 = _3312 * _2291;
            _3316 = _distanceScale * _3270;
            _3327 = 1.0f - exp2((_2481 * -288.539f) * _3316);
            _3328 = _3327 * _2481;
            _3329 = _152 * 0.059683103f;
            _3331 = _miePhaseConst * _miePhaseConst;
            _3332 = _3331 + 1.0f;
            _3338 = (((1.0f - _3331) * 3.0f) / ((_3331 + 2.0f) * 2.0f)) * 0.07957747f;
            // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
            // Description: Uses the boosted Mie-g formula only inside the explicit Dawn/Dusk gate and executes the exact clean native assignment in the Off branch.
            [branch]
            if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
              float _rndx_mie_g2_3_2011 = _boostedMieG * _boostedMieG;
              float _rndx_mie_g2p1_3_2011 = _rndx_mie_g2_3_2011 + 1.0f;
              float _rndx_mie_norm_3_2011 = (((1.0f - _rndx_mie_g2_3_2011) * 3.0f) / ((_rndx_mie_g2_3_2011 + 2.0f) * 2.0f)) * 0.07957747f;
              _3346 = (_rndx_mie_norm_3_2011 * _3262) * (_152 / exp2(log2(_rndx_mie_g2p1_3_2011 - (_boostedMieG * _154)) * 1.5f));            } else {
              _3346 = (_3338 * _3262) * (_152 / exp2(log2(_3332 - (_miePhaseConst * _154)) * 1.5f));            }
            // RenoDX: <<< [Patch: DawnDuskImprovements]
            _3348 = (_2158 * 64.0f) * exp2(log2(1.0f - exp2((_2158 * -14.42695f) * _3316)) * 1.25f);
            _3349 = _3348 * _167;
            _3350 = _185 * 2.0f;
            _3354 = (_3328 * _3302) * _volumeFogScatterColor.x;
            _3357 = (_3328 * _3307) * _volumeFogScatterColor.y;
            _3360 = (_3328 * _3312) * _volumeFogScatterColor.z;
            _3361 = _mieAerosolDensity * 0.00049999997f;
            _3362 = _185 * 50.0f;
            _3366 = (_3270 * (_3156 + _3249)) + (_3242 * _3265);
            _3370 = exp2(((_3276 * _3239) + _3366) * -1.442695f);
            _3374 = exp2(((_3282 * _3239) + _3366) * -1.442695f);
            _3378 = exp2(((_3285 * _3239) + _3366) * -1.442695f);
            // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
            // Description: Attenuates only the exact green and blue members of this native RGB transmittance triplet using the path-specific cloud optical depth; red is unchanged and the helper returns identity unless all feature gates are active.
            float _rndx_cloud_red_7_2021 = CloudReddeningFactor((_3270 * (_3156 + _3249)), _dawnDuskFactor, true);
            _3374 *= _rndx_cloud_red_7_2021;
            _3378 *= _rndx_cloud_red_7_2021;
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _3383 = ((_3374 * 0.33951f) + (_3370 * 0.61312f)) + (_3378 * 0.04737f);
            _3388 = ((_3374 * 0.91636f) + (_3370 * 0.0702f)) + (_3378 * 0.01345f);
            _3393 = ((_3374 * 0.10958f) + (_3370 * 0.02062f)) + (_3378 * 0.8698f);
            _3394 = _3262 * _2291;
            _3396 = _3270 * (_2481 + _2158);
            _3401 = ((_mieScatterColor.x * _3394) + _3396) * _3383;
            _3402 = _2286 * 4.901961e-06f;
            // RenoDX: >>> [Patch: SkySpectralRayleigh] [Version: 1.13.00]
            // Description: Routes only the final RGB in-scatter beta multiplications through the gated local copies; all interleaved native Mie terms remain text-identical.
            _3403 = _rndx_offscreen_ray_r_2 * _3402;
            _3407 = ((_mieScatterColor.y * _3394) + _3396) * _3388;
            _3408 = _rndx_offscreen_ray_g_2 * _3402;
            _3412 = ((_mieScatterColor.z * _3394) + _3396) * _3393;
            _3413 = _rndx_offscreen_ray_b_2 * _3402;
            // RenoDX: <<< [Patch: SkySpectralRayleigh]
            _3414 = _3234.x + _3239;
            _3417 = _3272 + ((_3234.y + _3242) * _3265);
            _3421 = exp2(((_3276 * _3414) + _3417) * -1.442695f);
            _3425 = exp2(((_3282 * _3414) + _3417) * -1.442695f);
            _3429 = exp2(((_3285 * _3414) + _3417) * -1.442695f);
            // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
            // Description: Attenuates only the exact green and blue members of this native RGB transmittance triplet using the path-specific cloud optical depth; red is unchanged and the helper returns identity unless all feature gates are active.
            float _rndx_cloud_red_8_2038 = CloudReddeningFactor(_3272, _dawnDuskFactor, true);
            _3425 *= _rndx_cloud_red_8_2038;
            _3429 *= _rndx_cloud_red_8_2038;
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _3434 = ((_3425 * 0.33951f) + (_3421 * 0.61312f)) + (_3429 * 0.04737f);
            _3439 = ((_3425 * 0.91636f) + (_3421 * 0.0702f)) + (_3429 * 0.01345f);
            _3444 = ((_3425 * 0.10958f) + (_3421 * 0.02062f)) + (_3429 * 0.8698f);
            _3445 = _192 * 0.059683103f;
            _3453 = (_3338 * _3394) * (_192 / exp2(log2(_3332 - (_miePhaseConst * _193)) * 1.5f));
            _3459 = ((((_208 * 2.0f) * _2481) * _3327) + (_3348 * _200)) * _3270;
            _3569 = _260;
            _3570 = _3248;
            _3571 = _3245;
            _3572 = _3242;
            _3573 = _3239;
            _3574 = ((((_precomputedAmbients[48].z) * ((_3360 * _3362) + (_3315 * _3361))) + _2015) + (((((((_3346 * _3315) * _mieScatterColor.z) + (((_3360 * _3350) + (_3349 * _3312)) * _3270)) + (_3412 * _2277)) * 25.0f) + (((_3393 * _2277) + (_3312 * _3329)) * _3413)) * _precomputedAmbient7.y));
            _3575 = ((((_precomputedAmbients[48].y) * ((_3357 * _3362) + (_3314 * _3361))) + _2016) + (((((((_3346 * _3314) * _mieScatterColor.y) + (((_3357 * _3350) + (_3349 * _3307)) * _3270)) + (_3407 * _2278)) * 25.0f) + (((_3388 * _2278) + (_3307 * _3329)) * _3408)) * _precomputedAmbient7.y));
            _3576 = ((((_precomputedAmbients[48].x) * ((_3354 * _3362) + (_3313 * _3361))) + _2017) + (((((((_3346 * _3313) * _mieScatterColor.x) + (((_3354 * _3350) + (_3349 * _3302)) * _3270)) + (_3401 * _2279)) * 25.0f) + (((_3383 * _2279) + (_3302 * _3329)) * _3403)) * _precomputedAmbient7.y));
            _3577 = (((((_3444 * _3445) + (_3393 * _2274)) * _3413) + _2018) + (((((_3453 * _mieScatterColor.z) + _3459) * _3444) + (_3412 * _2274)) * 25.0f));
            _3578 = (((((_3439 * _3445) + (_3388 * _2275)) * _3408) + _2019) + (((((_3453 * _mieScatterColor.y) + _3459) * _3439) + (_3407 * _2275)) * 25.0f));
            _3579 = (((((_3434 * _3445) + (_3383 * _2276)) * _3403) + _2020) + (((((_3453 * _mieScatterColor.x) + _3459) * _3434) + (_3401 * _2276)) * 25.0f));
          } else {
            _3569 = _260;
            _3570 = _2011;
            _3571 = _2032;
            _3572 = _2013;
            _3573 = _2014;
            _3574 = _2015;
            _3575 = _2016;
            _3576 = _2017;
            _3577 = _2018;
            _3578 = _2019;
            _3579 = _2020;
          }
          break;
        }
      } else {
        _3569 = 0.0f;
        _3570 = 0.0f;
        _3571 = 0.0f;
        _3572 = 0.0f;
        _3573 = 0.0f;
        _3574 = 0.0f;
        _3575 = 0.0f;
        _3576 = 0.0f;
        _3577 = 0.0f;
        _3578 = 0.0f;
        _3579 = 0.0f;
      }
      if (_3569 < _140) {
        _3585 = _viewPos.x + (_140 * _99);
        _3588 = _viewPos.z + (_140 * _101);
        _3592 = min((_distanceScale * _3569), _140);
        _3594 = (_3592 * _99) + _viewPos.x;
        _3596 = (_3592 * _101) + _viewPos.z;
        _3600 = _earthRadius + _viewPos.y;
        _3602 = _3600 + (_3592 * _100);
        _3608 = sqrt(((_3596 * _3596) + (_3594 * _3594)) + (_3602 * _3602));
        _3609 = _3594 / _3608;
        _3610 = _3602 / _3608;
        _3611 = _3596 / _3608;
        _3612 = dot(float3(_3609, _3610, _3611), float3(_99, _100, _101));
        _3617 = dot(float3(_99, _100, _101), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
        _3620 = _atmosphereThickness + -16.0f;
        _3624 = min(max(max((_3608 - _earthRadius), 0.01f), 16.0f), _3620);
        _3625 = _atmosphereThickness + -32.0f;
        _3626 = max(_3624, 0.0f);
        _3627 = _earthRadius * 2.0f;
        _3633 = (-0.0f - sqrt((_3626 + _3627) * _3626)) / (_3626 + _earthRadius);
        _3634 = (_3612 > _3633);
        if (_3634) {
          _3656 = ((exp2(log2(saturate((_3612 - _3633) / (1.0f - _3633))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _3656 = ((exp2(log2(saturate((_3633 - _3612) / (_3633 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        _3664 = (exp2(log2(saturate((_3624 + -16.0f) / _3625)) * 0.5f) * 0.96875f) + 0.015625f;
        _3670 = (1.0f - exp2(-1.1541561f - (dot(float3(_3609, _3610, _3611), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
        _3673 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3664, _3656, _3670), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
        _3678 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3664, _3656, _3670), 0.0f);
        _3683 = (_3617 * _3617) + 1.0f;
        _3684 = _3683 * 0.059683103f;
        _3687 = _miePhaseConst * _miePhaseConst;
        _3688 = _3687 + 1.0f;
        _3689 = _miePhaseConst * 2.0f;
        _3695 = (((1.0f - _3687) * 3.0f) / ((_3687 + 2.0f) * 2.0f)) * 0.07957747f;
      // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
      // Description: Companion copies of the sun Henyey-Greenstein phase terms computed with the
      //              dawn/dusk-boosted g (see the [Patch: DawnDuskImprovements] setup block near
      //              the top of main): the sun in-scatter path consumes the *b companions for a
      //              stronger forward-scatter lobe around the low sun, while the moon HG (_4090)
      //              keeps the vanilla _3708/_3709/_3716. When Dawn/Dusk Improvements is Off (or the
      //              sun is outside the dawn/dusk window) _boostedMieG equals the vanilla
      //              _miePhaseConst, so the companions are bit-identical to the vanilla terms they
      //              mirror.
      // [DAWN_DUSK] Sun HG uses boosted g - moon HG (_4090) still uses vanilla _3708/_3709/_3716
      [branch]
      if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
        float _3702b = _boostedMieG * _boostedMieG;
        float _3708b = _3702b + 1.0f;
        float _3709b = _boostedMieG * 2.0f;
        float _3716b = (((1.0f - _3702b) * 3.0f) / ((_3702b + 2.0f) * 2.0f)) * 0.07957746833562851f;
        _3702 = (_3683 / exp2(log2(_3708b - (_3709b * _3617)) * 1.5f)) * _3716b;
      } else {
          _3702 = (_3683 / exp2(log2(_3688 - (_3689 * _3617)) * 1.5f)) * _3695;
      }
      // RenoDX: <<< [Patch: DawnDuskImprovements]
        // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
        _3704 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3664, _3656, _3670), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
        _3709 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3664, _3656, _3670), 0.0f);
        _3714 = _3600 + (_140 * _100);
        _3720 = sqrt(((_3588 * _3588) + (_3585 * _3585)) + (_3714 * _3714));
        _3721 = _3585 / _3720;
        _3722 = _3714 / _3720;
        _3723 = _3588 / _3720;
        _3724 = dot(float3(_3721, _3722, _3723), float3(_99, _100, _101));
        _3728 = min(max(max((_3720 - _earthRadius), 0.01f), 16.0f), _3620);
        _3729 = max(_3728, 0.0f);
        _3735 = (-0.0f - sqrt((_3729 + _3627) * _3729)) / (_3729 + _earthRadius);
        _3736 = (_3724 > _3735);
        if (_3736) {
          _3758 = ((exp2(log2(saturate((_3724 - _3735) / (1.0f - _3735))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _3758 = ((exp2(log2(saturate((_3735 - _3724) / (_3735 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        _3766 = (exp2(log2(saturate((_3728 + -16.0f) / _3625)) * 0.5f) * 0.96875f) + 0.015625f;
        _3772 = (1.0f - exp2(-1.1541561f - (dot(float3(_3721, _3722, _3723), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
        _3773 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3766, _3758, _3772), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
        _3777 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3766, _3758, _3772), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
        _3781 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3766, _3758, _3772), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
        _3785 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3766, _3758, _3772), 0.0f);
        _3789 = dot(float3(_3594, _3602, _3596), float3(_99, _100, _101));
        _3790 = _3789 / _3608;
        _3791 = _3592 - _140;
        _3792 = _3791 * _99;
        _3793 = _3791 * _100;
        _3794 = _3791 * _101;
        _3800 = sqrt(((_3792 * _3792) + (_3793 * _3793)) + (_3794 * _3794));
        _3804 = sqrt((0.5f / _rayleighScaledHeight) * _3608);
        _3808 = sqrt((0.5f / _mieScaledHeight) * _3608);
        _3810 = (_3800 + _3789) / _3608;
        _3811 = _3804 * _3790;
        _3812 = _3810 * _3804;
        _3813 = _3808 * _3790;
        _3814 = _3810 * _3808;
        _3820 = (float)((int)((int)((int)(uint)((int)(_3811 > 0.0f))) - (int)((int)(uint)((int)(_3811 < 0.0f)))));
        _3826 = (float)((int)((int)((int)(uint)((int)(_3812 > 0.0f))) - (int)((int)(uint)((int)(_3812 < 0.0f)))));
        _3832 = (float)((int)((int)((int)(uint)((int)(_3813 > 0.0f))) - (int)((int)(uint)((int)(_3813 < 0.0f)))));
        _3838 = (float)((int)((int)((int)(uint)((int)(_3814 > 0.0f))) - (int)((int)(uint)((int)(_3814 < 0.0f)))));
        _3839 = _3811 * _3811;
        _3840 = _3813 * _3813;
        _3841 = (_3826 > _3820);
        if (_3841) {
          _3846 = exp2(_3839 * 1.442695f);
        } else {
          _3846 = 0.0f;
        }
        _3847 = (_3838 > _3832);
        if (_3847) {
          _3852 = exp2(_3840 * 1.442695f);
        } else {
          _3852 = 0.0f;
        }
        _3853 = -0.0f - _3800;
        _3857 = ((_3800 / (_3608 * 2.0f)) + _3790) * 1.442695f;
        _3858 = _3608 * 6.2831f;
        _3859 = _earthRadius - _3608;
        _3865 = sqrt(_rayleighScaledHeight * _3858) * exp2((_3859 / _rayleighScaledHeight) * 1.442695f);
        _3885 = dot(float2((_3820 / ((abs(_3811) * 2.3193f) + sqrt((_3839 * 1.52f) + 4.0f))), ((_3826 / ((abs(_3812) * 2.3193f) + sqrt(((_3812 * _3812) * 1.52f) + 4.0f))) * exp2((_3853 / _rayleighScaledHeight) * _3857))), float2(1.0f, -1.0f));
        _3905 = dot(float2((_3832 / ((abs(_3813) * 2.3193f) + sqrt((_3840 * 1.52f) + 4.0f))), ((_3838 / ((abs(_3814) * 2.3193f) + sqrt(((_3814 * _3814) * 1.52f) + 4.0f))) * exp2((_3853 / _mieScaledHeight) * _3857))), float2(1.0f, -1.0f));
        _3907 = (_3885 + _3846) * _3865;
        _3919 = (((_mieAerosolDensity * 2e-05f) * (_mieAerosolAbsorption + 1.0f)) * sqrt(_mieScaledHeight * _3858)) * exp2((_3859 / _mieScaledHeight) * 1.442695f);
        _3921 = _3919 * (_3905 + _3852);
        // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
        // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
        _3930 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
        _3936 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
        _3941 = (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3);
        // RenoDX: <<< [Patch: SkySpectralOzone]
        _3945 = exp2(((_3930 * _3907) + _3921) * -1.442695f);
        _3949 = exp2(((_3936 * _3907) + _3921) * -1.442695f);
        _3953 = exp2(((_3941 * _3907) + _3921) * -1.442695f);
        _3958 = dot(float3(_99, _100, _101), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
        if (_3634) {
          _3980 = ((exp2(log2(saturate((_3612 - _3633) / (1.0f - _3633))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _3980 = ((exp2(log2(saturate((_3633 - _3612) / (_3633 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        _3986 = (1.0f - exp2(-1.1541561f - (dot(float3(_3609, _3610, _3611), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
        _3987 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3664, _3980, _3986), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
        _3991 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3664, _3980, _3986), 0.0f);
        _3996 = (_3958 * _3958) + 1.0f;
        _3997 = _3996 * 0.059683103f;
        _4004 = (_3996 / exp2(log2(_3688 - (_3958 * _3689)) * 1.5f)) * _3695;
        // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
        _4005 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3664, _3980, _3986), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
        _4009 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3664, _3980, _3986), 0.0f);
        if (_3736) {
          _4034 = ((exp2(log2(saturate((_3724 - _3735) / (1.0f - _3735))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _4034 = ((exp2(log2(saturate((_3735 - _3724) / (_3735 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        _4040 = (1.0f - exp2(-1.1541561f - (dot(float3(_3721, _3722, _3723), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
        _4041 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3766, _4034, _4040), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
        _4045 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3766, _4034, _4040), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
        _4049 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3766, _4034, _4040), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
        _4053 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3766, _4034, _4040), 0.0f);
        if (_3841) {
          _4061 = exp2(_3839 * 1.442695f);
        } else {
          _4061 = 0.0f;
        }
        if (_3847) {
          _4066 = exp2(_3840 * 1.442695f);
        } else {
          _4066 = 0.0f;
        }
        _4068 = (_4061 + _3885) * _3865;
        _4070 = (_4066 + _3905) * _3919;
        _4162 = _3945;
        _4163 = _3949;
        _4164 = _3953;
        _4165 = max(0.0f, (((((_3702 * _3678.x) + (_3673.x * _3684)) + _3704.x) + _3709.x) - (_3945 * ((((_3777.x * _3702) + (_3773.x * _3684)) + _3781.x) + _3785.x))));
        _4166 = max(0.0f, (((((_3702 * _3678.y) + (_3673.y * _3684)) + _3704.y) + _3709.y) - (_3949 * ((((_3777.y * _3702) + (_3773.y * _3684)) + _3781.y) + _3785.y))));
        _4167 = max(0.0f, (((((_3702 * _3678.z) + (_3673.z * _3684)) + _3704.z) + _3709.z) - (_3953 * ((((_3777.z * _3702) + (_3773.z * _3684)) + _3781.z) + _3785.z))));
        _4168 = max(0.0f, (((((_4004 * _3991.x) + (_3987.x * _3997)) + _4005.x) + _4009.x) - (exp2((_4070 + (_4068 * _3930)) * -1.442695f) * ((((_4045.x * _4004) + (_4041.x * _3997)) + _4049.x) + _4053.x))));
        _4169 = max(0.0f, (((((_4004 * _3991.y) + (_3987.y * _3997)) + _4005.y) + _4009.y) - (exp2((_4070 + (_4068 * _3936)) * -1.442695f) * ((((_4045.y * _4004) + (_4041.y * _3997)) + _4049.y) + _4053.y))));
        _4170 = max(0.0f, (((((_4004 * _3991.z) + (_3987.z * _3997)) + _4005.z) + _4009.z) - (exp2((_4070 + (_4068 * _3941)) * -1.442695f) * ((((_4045.z * _4004) + (_4041.z * _3997)) + _4049.z) + _4053.z))));
      } else {
        _4162 = 1.0f;
        _4163 = 1.0f;
        _4164 = 1.0f;
        _4165 = 0.0f;
        _4166 = 0.0f;
        _4167 = 0.0f;
        _4168 = 0.0f;
        _4169 = 0.0f;
        _4170 = 0.0f;
      }
      _4185 = (((_3572 * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f)) + ((_cloudScatteringCoefficient / _distanceScale) * (_3571 + _3570));
      // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
      // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
      _4198 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1)) * _3573) + _4185) * -1.442695f);
      _4208 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2)) * _3573) + _4185) * -1.442695f);
      _4217 = exp2(((((((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3)) * _3573) + _4185) * -1.442695f);
      // RenoDX: <<< [Patch: SkySpectralOzone]
      _4227 = (((_4198 * _4165) * _precomputedAmbient7.y) + _3576) + (_precomputedAmbient7.w * ((_4198 * _4168) + _3579));
      _4234 = (((_4208 * _4166) * _precomputedAmbient7.y) + _3575) + (_precomputedAmbient7.w * ((_4208 * _4169) + _3578));
      _4241 = (((_4217 * _4167) * _precomputedAmbient7.y) + _3574) + (_precomputedAmbient7.w * ((_4217 * _4170) + _3577));
      _4242 = _4198 * _4162;
      _4243 = _4208 * _4163;
      _4244 = _4217 * _4164;
      if (!((_atmosphereSeaBaseline - _viewPos.y) <= 0.0f)) {
        // [sem: expr_sat]
        _4260 = saturate(max(0.0f, ((_atmosphereSeaBaseline - _viewPos.y) + ((_100 * -1e+07f) * _nearFarProj.x))) * 2.0f);
        _4269 = (((1.0f - ((_4260 * _4260) * (3.0f - (_4260 * 2.0f)))) * 0.98f) + 0.02f);
      } else {
        _4269 = 1.0f;
      }
      _4304 = (((_4243 * 0.33951f) + (_4242 * 0.61312f)) + (_4244 * 0.04737f));
      _4305 = (((_4243 * 0.91636f) + (_4242 * 0.0702f)) + (_4244 * 0.01345f));
      _4306 = (((_4243 * 0.10958f) + (_4242 * 0.02062f)) + (_4244 * 0.8698f));
      _4307 = (_4269 * (((_4234 * 0.33951f) + (_4227 * 0.61312f)) + (_4241 * 0.04737f)));
      _4308 = (_4269 * (((_4234 * 0.91636f) + (_4227 * 0.0702f)) + (_4241 * 0.01345f)));
      _4309 = (_4269 * (((_4234 * 0.10958f) + (_4227 * 0.02062f)) + (_4241 * 0.8698f)));
    } else {
      _4304 = 1.0f;
      _4305 = 1.0f;
      _4306 = 1.0f;
      _4307 = 0.0f;
      _4308 = 0.0f;
      _4309 = 0.0f;
    }
  } else {
    _4304 = 1.0f;
    _4305 = 1.0f;
    _4306 = 1.0f;
    _4307 = 0.0f;
    _4308 = 0.0f;
    _4309 = 0.0f;
  }
  if ((_100 < 0.0f) && (!(_sunDirection.y > 0.0f))) {
    if (!(_sunDirection.y > _moonDirection.y)) {
      _4321 = 0.0f;
      _4322 = 0.0f;
      _4323 = 0.0f;
    } else {
      _4321 = _4307;
      _4322 = _4308;
      _4323 = _4309;
    }
  } else {
    _4321 = _4307;
    _4322 = _4308;
    _4323 = _4309;
  }
  // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
  // Description: Applies a directional warm/cool hue bias to the final inscatter during the
  //              dawn/dusk window: the sun-facing and away-from-sun hemispheres get distinct horizon
  //              hues (vanilla east and west horizons look nearly identical at sunrise and sunset).
  //              Bias colours come from WeatherInscatterBiasProbe via InscatterColorBiasProbe
  //              (sky_dawn_dusk_common.hlsli / sky_weather_common.hlsli) — the attenuated probe
  //              variant, because this shader feeds the GI cubemap and full-strength hues
  //              oversaturate indirect lighting; when Dynamic Dawn/Dusk Hues is additionally active
  //              the warm tint shifts per day cycle. Gated by DAWN_DUSK_IMPROVEMENTS (UI "Dawn/Dusk
  //              Improvements (WIP)", default On per the addon.cpp settings list); when Off (or
  //              outside the window) the helper returns (1,1,1) and the multiplies are bit-exact
  //              no-ops.
  // [DAWN_DUSK] Inscatter colour bias
  float _viewSunDot = dot(float3(_99, _100, _101), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
  float3 _inscatterBias = InscatterColorBiasProbe(_viewSunDot, _dawnDuskFactor, float3(_4304, _4305, _4306));
  _4321 *= _inscatterBias.x;
  _4322 *= _inscatterBias.y;
  _4323 *= _inscatterBias.z;
  // RenoDX: <<< [Patch: DawnDuskImprovements]
  // RenoDX: >>> [Patch: SnowFogInscatterClamp] [Version: 1.13.00]
  // Description: Clamps the final inscatter luminance to (1 - extinction luminance) * K before the
  //              UAV write, so Mie forward scattering cannot drive massive GI brightness swings in
  //              dense fog and snow weather (vanilla lets inscatter grow unbounded relative to
  //              extinction, producing pulsing whiteouts as the camera or sun angle moves). K = 100
  //              in this offscreen sky probe shader (it feeds the GI cubemap and needs a tighter
  //              budget) and K = 500 in the visible-sky shader
  //              (SkyRenderAtmosphericScattering_0x4202A07D); the two coefficients are a matched
  //              pair and must be retuned together. Gated by SNOW_FOG_FIX (UI "Snow / Fog Lighting
  //              Fixes (WIP)", default On per the addon.cpp settings list); when Off the branch is
  //              skipped entirely and the output is bit-exact vanilla.  game version 1.16.00
  //              added a below-sea-baseline inscatter suppression (_atmosphereSeaBaseline, scaling
  //              inscatter down to 0.02x) that scales inscatter but not extinction; below that
  //              baseline this clamp goes INERT, because the suppressed inscatter measurement cannot
  //              exceed the unsuppressed extinction-derived threshold. This is deliberate and
  //              believed harmless: fog/snow weather is not expected below the baseline, and vanilla
  //              already crushes inscatter there. If gameplay evidence ever shows a playable fog
  //              region below the baseline, scale the clamp threshold by the same suppression
  //              factor. The ceiling is floored at zero. The extinction luminance can exceed 1.0 for
  //              near-unity transmittance, so an unfloored (1 - lum) would be negative and would flip
  //              positive inscatter to negative instead of capping it. The cause is not rounding: the
  //              vanilla BT.709-to-BT.2020 matrix applied just above has an un-normalized green row
  //              (its coefficients sum to 1.0000100135803223), so with all three transmittances at 1.0
  //              the luminance reaches about 1.0000072 - roughly 60 ULP past 1, a property of the
  //              constants rather than of float error. In every path traced so far the inscatter is
  //              simultaneously zero there, so the pre-existing (_insc_lum > 0.0001f) test already
  //              suppressed the clamp and no artifact has been observed; this floor is defensive. It
  //              does change one case: if the luminance is NaN the comparison chain now drives the
  //              scale to zero rather than leaving inscatter untouched.
  // [SNOW_FOG_FIX]
  if (SNOW_FOG_FIX == 1.f) {
    float _ext_lum = dot(float3(_4304, _4305, _4306), float3(0.2126f, 0.7152f, 0.0722f));
    float _max_inscatter = max(0.0f, 1.0f - _ext_lum) * 100.0f;
    float _insc_lum = dot(float3(_4321, _4322, _4323), float3(0.2126f, 0.7152f, 0.0722f));
    if (_insc_lum > _max_inscatter && _insc_lum > 0.0001f) {
      float _clamp_scale = _max_inscatter / _insc_lum;
      _4321 *= _clamp_scale;
      _4322 *= _clamp_scale;
      _4323 *= _clamp_scale;
    }
  }
  // RenoDX: <<< [Patch: SnowFogInscatterClamp]
  // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
  // Description: Dawn/dusk GI probe energy reduction sub-feature: scales this probe's
  //              omnidirectional inscatter down toward DAWN_DUSK_GI_ENERGY (hardcoded 0.7f in
  //              shared.h; not a UI setting) at the peak of the dawn/dusk window before it feeds the
  //              GI cubemap. Without it the probe's directionless energy flattens and boosts
  //              indirect light at sunrise/sunset, washing out the directional contrast the
  //              companion SHDirectionalBias/DawnDuskAmbientBoost helpers restore. Gated by
  //              DAWN_DUSK_IMPROVEMENTS (UI "Dawn/Dusk Improvements (WIP)", default On per the
  //              addon.cpp settings list); when Off the block is skipped entirely, and outside the
  //              window _dawnDuskFactor = 0 makes the lerp identity, so Off is bit-exact vanilla.
  // [DAWN_DUSK_SKY_PROBE_ENERGY] Inscatter Energy Reduction
  if (DAWN_DUSK_IMPROVEMENTS == 1.f && DAWN_DUSK_GI_ENERGY < 1.f) {
    float _energyAtten = lerp(1.f, DAWN_DUSK_GI_ENERGY, _dawnDuskFactor);
    _4321 *= _energyAtten;
    _4322 *= _energyAtten;
    _4323 *= _energyAtten;
  }
  // RenoDX: <<< [Patch: DawnDuskImprovements]
  // RenoDX: >>> [Patch: NightSkyAttenuation] [Version: 1.13.00]
  // Description: Multiplies the final inscatter RGB by a sun-elevation brightness ramp as the last
  //              step before the UAV write (extinction untouched): 10% brightness while the sun is
  //              below ~+5 deg (0.087 rad), ramping to 100% by +10 deg (0.17 rad), unity above
  //              (NightSkyAttenuation, sky_dawn_dusk_common.hlsli). Works for both early morning and
  //              late evening: vanilla scattering brightens the sky far too early (~3am-4:30am) and
  //              keeps it bright well after sunset; this keeps nights genuinely dark. Gated by
  //              NIGHT_SKY_ATTENUATION (UI "Darker Nights/Dawn/Dusk (WIP)", default On per the
  //              addon.cpp settings list); when Off the helper returns exactly 1.0 and the
  //              multiplies are bit-exact no-ops.
  // [NIGHT_SKY_ATTENUATION] Reduce sky brightness when sun is below horizon
  {
    float _nightSkyAtten = NightSkyAttenuation(_sunDirection.y);
    _4321 *= _nightSkyAtten;
    _4322 *= _nightSkyAtten;
    _4323 *= _nightSkyAtten;
  }
  // RenoDX: <<< [Patch: NightSkyAttenuation]
  __3__38__0__1__g_texSkyInscatterUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(_4321, _4322, _4323, 0.0f);
  __3__38__0__1__g_texSkyExtinctionUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(_4304, _4305, _4306, 1.0f);
}
