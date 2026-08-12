// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the exact shared spectral and/or Dawn/Dusk helpers required by this shader's owned patch families.
#include "sky_spectral_common.hlsli"
#include "sky_dawn_dusk_common.hlsli"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
Texture2D<float4> __3__36__0__0__g_terrainShadowDepth : register(t43, space36);

Texture2DArray<float4> __3__36__0__0__g_shadowDepthArray : register(t87, space36);

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

Texture2D<float> __3__36__0__0__g_depthHalf : register(t28, space36);

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

cbuffer __3__35__0__0__ShadowConstantBuffer : register(b3, space35) {
  float4 _shadowDepthRanges : packoffset(c000.x);
  float4 _massiveShadowSizeAndInvSize : packoffset(c001.x);
  uint4 _shadowParam : packoffset(c002.x);
  int4 _updateIndex : packoffset(c003.x);
  float4 _jitterOffset[8] : packoffset(c004.x);
  float4 _shadowRelativePosition : packoffset(c012.x);
  float4 _dynmaicShadowSizeAndInvSize : packoffset(c013.x);
  column_major float4x4 _dynamicShadowProjTexScale[2] : packoffset(c014.x);
  column_major float4x4 _dynamicShadowProjRelativeTexScale[2] : packoffset(c022.x);
  float4 _dynamicShadowFrustumPlanes0[6] : packoffset(c030.x);
  float4 _dynamicShadowFrustumPlanes1[6] : packoffset(c036.x);
  column_major float4x4 _dynamicShadowViewProj[2] : packoffset(c042.x);
  column_major float4x4 _dynamicShadowViewProjPrev[2] : packoffset(c050.x);
  column_major float4x4 _invDynamicShadowViewProj[2] : packoffset(c058.x);
  float4 _dynamicShadowPosition[2] : packoffset(c066.x);
  float4 _shadowSizeAndInvSize : packoffset(c068.x);
  column_major float4x4 _shadowProjTexScale[2] : packoffset(c069.x);
  column_major float4x4 _shadowProjRelativeTexScale[2] : packoffset(c077.x);
  float4 _staticShadowPosition[2] : packoffset(c085.x);
  column_major float4x4 _shadowViewProj[2] : packoffset(c087.x);
  column_major float4x4 _shadowViewProjRelative[2] : packoffset(c095.x);
  column_major float4x4 _invShadowViewProj[2] : packoffset(c103.x);
  float4 _currShadowFrustumPlanes[6] : packoffset(c111.x);
  column_major float4x4 _currShadowViewProjRelative : packoffset(c117.x);
  column_major float4x4 _currInvShadowViewProjRelative : packoffset(c121.x);
  float4 _currStaticShadowPosition : packoffset(c125.x);
  float4 _currTerrainShadowFrustumPlanes[6] : packoffset(c126.x);
  column_major float4x4 _terrainShadowProjTexScale : packoffset(c132.x);
  column_major float4x4 _terrainShadowProjRelativeTexScale : packoffset(c136.x);
  column_major float4x4 _terrainShadowViewProj : packoffset(c140.x);
  column_major float4x4 _nearFieldShadowViewProj : packoffset(c144.x);
  float4 _nearFieldShadowFlag : packoffset(c148.x);
  float4 _nearFieldShadowFrustumPlanes[6] : packoffset(c149.x);
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

SamplerComparisonState __3__40__0__0__g_samplerShadow : register(s0, space40);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const int _global_0[4] = { 0, 1, 3, 2 };

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
  int _43;
  uint _46;
  uint _49;
  float _50;
  float _51;
  float _53;
  float _61;
  float _68;
  float _69;
  float _81;
  float _90;
  float _99;
  float _108;
  float _114;
  float _115;
  float _116;
  float _117;
  float _122;
  float _130;
  bool _131;
  float _136;
  float _139;
  float _140;
  float _143;
  float _144;
  float _145;
  float _146;
  float _147;
  float _151;
  float _218;
  int _219;
  int _220;
  float _221;
  float _222;
  float _223;
  float _224;
  float _225;
  float _226;
  float _227;
  float _228;
  float _229;
  float _230;
  float _231;
  int _232;
  float _437;
  float _449;
  float _515;
  float _541;
  float _542;
  float _543;
  int _602;
  float _603;
  float _604;
  float _605;
  float _606;
  int _660;
  int _661;
  float _662;
  float _663;
  float _664;
  float _665;
  float _677;
  float _724;
  float _730;
  float _861;
  float _871;
  float _959;
  float _960;
  float _961;
  float _986;
  float _987;
  float _988;
  float _1042;
  int _1054;
  float _1055;
  float _1056;
  float _1057;
  float _1058;
  float _1059;
  float _1060;
  float _1061;
  float _1062;
  float _1236;
  float _1237;
  float _1264;
  float _1450;
  float _1462;
  float _1589;
  float _1599;
  float _1613;
  float _1614;
  float _1654;
  float _1956;
  float _1957;
  float _1958;
  bool _2001;
  int _2009;
  int _2010;
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
  float _2021;
  int _2022;
  int _2023;
  float _2024;
  float _2050;
  float _2061;
  float _2113;
  float _2210;
  float _2237;
  float _2238;
  float _2239;
  float _2376;
  float _2388;
  float _2462;
  float _2463;
  float _2464;
  float _2489;
  float _2490;
  float _2491;
  float _2547;
  int _2559;
  float _2560;
  float _2561;
  float _2562;
  float _2563;
  float _2564;
  float _2565;
  float _2566;
  float _2567;
  float _2741;
  float _2742;
  float _2769;
  float _2955;
  float _2967;
  float _3094;
  float _3104;
  float _3118;
  float _3119;
  float _3159;
  float _3489;
  float _3590;
  float _3677;
  float _3683;
  float _3882;
  float _3980;
  float _4063;
  float _4069;
  float _4212;
  float _4213;
  float _4214;
  float _4215;
  float _4216;
  float _4217;
  float _4218;
  float _4219;
  float _4220;
  float _4221;
  float _4222;
  float _4223;
  float _4224;
  float _4225;
  float _4302;
  float _4404;
  float _4492;
  float _4498;
  float _4640;
  float _4641;
  float _4642;
  float _4643;
  float _4644;
  float _4645;
  float _4728;
  float _4763;
  float _4764;
  float _4765;
  float _4766;
  float _4767;
  float _4768;
  float _156;
  float _157;
  float _164;
  float _167;
  float _169;
  float _170;
  float _184;
  float _186;
  float _202;
  float _205;
  float _206;
  float _216;
  float _233;
  float _247;
  float _248;
  float _250;
  float _252;
  float _255;
  float _256;
  float _259;
  float _260;
  float _262;
  float _263;
  float _265;
  float4 _287;
  float _291;
  float _292;
  float _294;
  float _295;
  float _296;
  float _300;
  float _307;
  float _310;
  float _313;
  float _316;
  float _327;
  float _341;
  float _342;
  float _343;
  float _344;
  float _345;
  float _349;
  float _353;
  float _354;
  float _359;
  float _396;
  bool _439;
  bool _451;
  int _460;
  uint _461;
  float _462;
  float _465;
  float _466;
  float _467;
  float _468;
  float _472;
  float _473;
  float _474;
  float _475;
  float _476;
  float _479;
  float _484;
  float _485;
  float _492;
  float4 _536;
  float _548;
  float _550;
  float _552;
  float _564;
  float _572;
  float _580;
  float _583;
  float _584;
  bool _595;
  float _609;
  float _611;
  float _613;
  float _625;
  float _633;
  float _641;
  bool _652;
  float _689;
  float _697;
  float _705;
  float _725;
  float _731;
  float _732;
  float _737;
  float _742;
  float _745;
  float _746;
  float _750;
  float _751;
  float _754;
  float _768;
  float _769;
  float _770;
  float _771;
  float _772;
  float _780;
  float _781;
  float _786;
  float _820;
  float _872;
  float _875;
  float _879;
  float _881;
  float _883;
  float _884;
  float _885;
  float _886;
  float _896;
  float _899;
  float _938;
  float _939;
  float _941;
  bool _962;
  float _971;
  float _974;
  float _980;
  float _990;
  float _991;
  float _993;
  float _1011;
  float _1017;
  float _1018;
  float _1021;
  float _1029;
  float _1043;
  float _1044;
  float _1045;
  float _1046;
  float _1065;
  float _1067;
  float _1071;
  float _1078;
  float _1081;
  float _1084;
  float _1087;
  float _1098;
  float _1112;
  float _1113;
  float _1114;
  float _1115;
  float _1116;
  float _1120;
  float _1124;
  float _1125;
  float _1130;
  float _1189;
  float _1220;
  float _1223;
  float _1251;
  float _1252;
  float _1253;
  float _1254;
  float _1255;
  float _1256;
  float _1257;
  float _1258;
  int _1259;
  float _1265;
  float _1268;
  float _1270;
  float _1271;
  float _1272;
  float _1274;
  float _1285;
  float4 _1311;
  float _1313;
  float _1314;
  float _1315;
  float _1318;
  float _1323;
  float _1326;
  float _1329;
  float _1332;
  float _1333;
  float _1340;
  float _1354;
  float _1355;
  float _1356;
  float _1357;
  float _1358;
  float _1362;
  float _1366;
  float _1367;
  float _1372;
  float _1409;
  bool _1452;
  float _1463;
  float _1464;
  float _1467;
  float _1472;
  float _1479;
  float _1493;
  float _1494;
  float _1495;
  float _1496;
  float _1497;
  float _1501;
  float _1505;
  float _1506;
  float _1511;
  float _1548;
  float _1617;
  float _1621;
  float _1622;
  float _1631;
  float2 _1666;
  float _1674;
  float _1675;
  float _1678;
  float _1681;
  float _1684;
  float _1687;
  float _1688;
  float _1689;
  float _1694;
  float _1697;
  float _1699;
  float _1701;
  float _1704;
  float _1706;
  float _1711;
  float _1715;
  float _1716;
  float _1719;
  float _1722;
  float _1723;
  float _1726;
  float _1727;
  float _1730;
  float _1733;
  float _1736;
  float _1741;
  float _1746;
  float _1751;
  float _1752;
  float _1753;
  float _1754;
  float _1755;
  float _1756;
  float _1757;
  float _1758;
  float _1765;
  float _1770;
  float _1773;
  float _1775;
  float _1790;
  float _1794;
  float _1799;
  float _1801;
  float _1804;
  float _1807;
  float _1811;
  float _1815;
  float _1819;
  float _1823;
  float _1824;
  float _1826;
  float _1850;
  float _1873;
  float _1896;
  float _1900;
  float _1901;
  float _1905;
  float _1908;
  float _1911;
  float _1914;
  float _1933;
  float _1967;
  uint _2025;
  float _2033;
  float _2039;
  float _2043;
  float _2054;
  float _2067;
  float _2068;
  float _2069;
  float _2072;
  float _2073;
  float _2075;
  float _2077;
  float _2082;
  float _2086;
  float4 _2089;
  float _2101;
  float _2105;
  float _2114;
  float _2143;
  int _2146;
  float _2149;
  float _2160;
  float _2161;
  float _2162;
  float _2163;
  float _2167;
  float _2168;
  float _2169;
  float _2170;
  float _2171;
  float _2174;
  float _2179;
  float _2180;
  float _2187;
  float4 _2232;
  float _2240;
  float _2241;
  float _2246;
  float _2251;
  float _2254;
  float _2255;
  float _2259;
  float _2262;
  float _2265;
  float _2268;
  float _2273;
  float _2286;
  float _2287;
  float _2288;
  float _2289;
  float _2290;
  float _2298;
  float _2299;
  float _2304;
  float _2336;
  float _2391;
  float _2395;
  float _2396;
  float _2397;
  float _2398;
  float _2399;
  float _2400;
  float _2410;
  float _2441;
  float _2442;
  float _2444;
  bool _2465;
  float _2474;
  float _2477;
  float _2483;
  float _2494;
  float _2495;
  float _2497;
  float _2515;
  float _2521;
  float _2522;
  float _2525;
  float _2534;
  float _2548;
  float _2549;
  float _2550;
  float _2551;
  float _2570;
  float _2572;
  float _2576;
  float _2583;
  float _2586;
  float _2589;
  float _2592;
  float _2603;
  float _2617;
  float _2618;
  float _2619;
  float _2620;
  float _2621;
  float _2625;
  float _2629;
  float _2630;
  float _2635;
  float _2694;
  float _2725;
  float _2728;
  float _2756;
  float _2757;
  float _2758;
  float _2759;
  float _2760;
  float _2761;
  float _2762;
  float _2763;
  int _2764;
  float _2770;
  float _2773;
  float _2775;
  float _2776;
  float _2777;
  float _2779;
  float _2790;
  float4 _2816;
  float _2818;
  float _2819;
  float _2820;
  float _2823;
  float _2828;
  float _2831;
  float _2834;
  float _2837;
  float _2838;
  float _2845;
  float _2859;
  float _2860;
  float _2861;
  float _2862;
  float _2863;
  float _2867;
  float _2871;
  float _2872;
  float _2877;
  float _2914;
  bool _2957;
  float _2968;
  float _2969;
  float _2972;
  float _2977;
  float _2984;
  float _2998;
  float _2999;
  float _3000;
  float _3001;
  float _3002;
  float _3006;
  float _3010;
  float _3011;
  float _3016;
  float _3053;
  float _3122;
  float _3126;
  float _3127;
  float _3136;
  float2 _3171;
  float _3176;
  float _3179;
  float _3182;
  float _3185;
  float _3186;
  float _3187;
  float _3192;
  float _3195;
  float _3197;
  float _3199;
  float _3202;
  float _3207;
  float _3211;
  float _3216;
  float _3219;
  float _3222;
  float _3226;
  float _3230;
  float _3234;
  float _3239;
  float _3244;
  float _3249;
  float _3250;
  float _3251;
  float _3252;
  float _3253;
  float _3258;
  float _3259;
  float _3261;
  float _3276;
  float _3286;
  float _3287;
  float _3291;
  float _3294;
  float _3297;
  float _3298;
  float _3299;
  float _3303;
  float _3307;
  float _3311;
  float _3315;
  float _3321;
  float _3327;
  float _3333;
  float _3334;
  float _3336;
  float _3337;
  float _3426;
  float _3429;
  float _3432;
  float _3435;
  float _3441;
  float _3442;
  float _3443;
  float _3444;
  float _3445;
  float _3450;
  float _3453;
  float _3457;
  float _3458;
  float _3459;
  float _3460;
  float _3466;
  float _3497;
  float _3503;
  float4 _3506;
  float4 _3511;
  float _3516;
  float _3517;
  float _3520;
  float _3535;
  float4 _3537;
  float4 _3542;
  float _3546;
  float _3552;
  float _3553;
  float _3554;
  float _3555;
  float _3556;
  float _3560;
  float _3561;
  float _3567;
  float _3598;
  float _3604;
  // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
  // Description: Declarations for the boosted-g Mie phase companion variables used by the
  //              precomputed-LUT sun path. The companions mirror the vanilla sun Henyey-Greenstein
  //              phase terms (_3548/_3563) with the dawn/dusk-boosted g; they are declared here
  //              because the decompiled shader hoists all loop-carried locals into this declaration
  //              block, and they are assigned at the [Patch: DawnDuskImprovements] companion sites
  //              below. When Dawn/Dusk Improvements is Off (or the sun is outside the dawn/dusk
  //              window) the boosted g equals the vanilla g, so the companions hold values
  //              bit-identical to the vanilla terms they mirror.
  // [DAWN_DUSK] boosted-g Mie phase companions for the LUT sun path
  float _3548b;
  float _3563b;
  // RenoDX: <<< [Patch: DawnDuskImprovements]
  float4 _3605;
  float4 _3609;
  float4 _3613;
  float4 _3617;
  float _3621;
  float _3622;
  float _3623;
  float _3624;
  float _3625;
  float _3631;
  float _3635;
  float _3639;
  float _3641;
  float _3642;
  float _3643;
  float _3644;
  float _3645;
  float _3651;
  float _3657;
  float _3663;
  float _3669;
  float _3670;
  float _3671;
  float _3684;
  float _3688;
  float _3689;
  float _3690;
  float _3718;
  float _3752;
  float _3766;
  float _3776;
  float _3785;
  float _3830;
  float _3831;
  float _3832;
  float _3834;
  float _3835;
  float _3841;
  float _3842;
  float _3843;
  float _3844;
  float _3845;
  float _3846;
  float _3850;
  float _3851;
  float _3852;
  float _3853;
  float _3859;
  float _3890;
  float _3896;
  float4 _3899;
  float4 _3904;
  float _3908;
  float _3911;
  float _3925;
  float4 _3927;
  float4 _3932;
  float _3936;
  float _3942;
  float _3943;
  float _3944;
  float _3945;
  float _3946;
  float _3950;
  float _3951;
  float _3957;
  float _3988;
  float _3994;
  float4 _3995;
  float4 _3999;
  float4 _4003;
  float4 _4007;
  float _4011;
  float _4017;
  float _4021;
  float _4025;
  float _4027;
  float _4028;
  float _4029;
  float _4030;
  float _4031;
  float _4037;
  float _4043;
  float _4049;
  float _4055;
  float _4056;
  float _4057;
  float _4070;
  float _4074;
  float _4075;
  float _4076;
  float _4104;
  float _4138;
  float _4152;
  float _4162;
  float _4171;
  float _4231;
  float _4234;
  float _4238;
  float _4240;
  float _4242;
  float _4246;
  float _4248;
  float _4254;
  float _4255;
  float _4256;
  float _4257;
  float _4258;
  float _4263;
  float _4266;
  float _4270;
  float _4271;
  float _4272;
  float _4273;
  float _4279;
  float _4310;
  float _4316;
  float4 _4319;
  float4 _4324;
  float _4329;
  float _4330;
  float _4333;
  float _4348;
  float4 _4350;
  float4 _4355;
  float _4360;
  float _4366;
  float _4367;
  float _4368;
  float _4369;
  float _4370;
  float _4374;
  float _4375;
  float _4381;
  float _4412;
  float _4418;
  float4 _4419;
  float4 _4423;
  float4 _4427;
  float4 _4431;
  float _4435;
  float _4436;
  float _4437;
  float _4438;
  float _4439;
  float _4440;
  float _4446;
  float _4450;
  float _4454;
  float _4456;
  float _4457;
  float _4458;
  float _4459;
  float _4460;
  float _4466;
  float _4472;
  float _4478;
  float _4484;
  float _4485;
  float _4486;
  float _4499;
  float _4503;
  float _4504;
  float _4505;
  float _4533;
  float _4567;
  float _4580;
  float _4590;
  float _4599;
  float _4660;
  float _4673;
  float _4683;
  float _4692;
  float _4697;
  float _4700;
  float _4703;
  float _4704;
  float _4705;
  float _4706;
  float _4719;
  int __loop_jump_target = -1;
  float _36[4];
  _43 = _global_0[(((int)((uint)((uint)(_frameNumber.x)) + (uint)(SV_DispatchThreadID.x))) & 3)];
  _46 = (uint)((uint)((int)(_43) % (int)(2))) + (uint)((uint)(SV_DispatchThreadID.x) << 1);
  _49 = (uint)((uint)((int)(_43) / (int)(2))) + (uint)((uint)(SV_DispatchThreadID.y) << 1);
  _50 = (float)((int)(_46));
  _51 = (float)((int)(_49));
  _53 = __3__36__0__0__g_depthHalf.Load(int3(_46, _49, 0));  // [sem: _3__36__0__0__g_depthHalf_load]
  _61 = (((_50 + 0.5f) / (_bufferSizeAndInvSize.x * 0.5f)) * 2.0f) + -1.0f;
  _68 = ((1.0f - ((_51 + 0.5f) / (_bufferSizeAndInvSize.y * 0.5f))) * 2.0f) + -1.0f;
  _69 = max(1e-07f, _53.x);  // [sem: _3__36__0__0__g_depthHalf_load_derived]
  _81 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _69, mad((_invViewProjRelative[3].y), _68, ((_invViewProjRelative[3].x) * _61)));
  _90 = (mad((_invViewProjRelative[0].z), _69, mad((_invViewProjRelative[0].y), _68, ((_invViewProjRelative[0].x) * _61))) + (_invViewProjRelative[0].w)) / _81;
  _99 = (mad((_invViewProjRelative[1].z), _69, mad((_invViewProjRelative[1].y), _68, ((_invViewProjRelative[1].x) * _61))) + (_invViewProjRelative[1].w)) / _81;
  _108 = (mad((_invViewProjRelative[2].z), _69, mad((_invViewProjRelative[2].y), _68, ((_invViewProjRelative[2].x) * _61))) + (_invViewProjRelative[2].w)) / _81;
  _114 = sqrt(((_99 * _99) + (_90 * _90)) + (_108 * _108));
  _115 = _90 / _114;
  _116 = _99 / _114;
  _117 = _108 / _114;
  _122 = (float)((uint)((uint)(((uint)((uint)(_frameNumber.x)) >> 2) & 1023)));
  _130 = frac(frac(dot(float2(((_122 * 32.665f) + _50), ((_122 * 11.815f) + _51)), float2(0.06711056f, 0.00583715f))) * 52.982918f);
  _131 = (_53.x < 1e-07f);  // [sem: _3__36__0__0__g_depthHalf_load_derived]
  _136 = _earthRadius + _atmosphereThickness;
  _139 = _viewPos.y + _earthRadius;
  _140 = dot(float3(_115, _116, _117), float3(_115, _116, _117));
  _143 = dot(float3(_viewPos.x, _139, _viewPos.z), float3(_115, _116, _117));
  _144 = _143 * 2.0f;
  _145 = dot(float3(_viewPos.x, _139, _viewPos.z), float3(_viewPos.x, _139, _viewPos.z));
  _146 = _144 * _144;
  _147 = _140 * 4.0f;
  _151 = _146 - ((_145 - (_136 * _136)) * _147);
  if (!(_151 < 0.0f)) {
    _156 = _140 * 2.0f;
    _157 = (sqrt(_151) - _144) / _156;
    if (!(_157 <= 0.0f)) {
      _164 = dot(float3(_115, _116, _117), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
      _167 = _cloudPhaseConstFront * _cloudPhaseConstFront;
      _169 = (_164 * _164) + 1.0f;
      _170 = _164 * 2.0f;
      _184 = ((((1.0f - _167) * 3.0f) / ((_167 + 2.0f) * 2.0f)) * 0.07957747f) * (_169 / exp2(log2((_167 + 1.0f) - (_cloudPhaseConstFront * _170)) * 1.5f));
      _186 = _cloudPhaseConstBack * _cloudPhaseConstBack;
      _202 = (((((1.0f - _186) * 3.0f) / ((_186 + 2.0f) * 2.0f)) * 0.039788734f) * (_169 / exp2(log2((_186 + 1.0f) - ((_164 * -2.0f) * _cloudPhaseConstBack)) * 1.5f))) + _184;
      _205 = min(_cloudVisibleRange, _cloudVisibleRange);
      _206 = select(_131, _157, _114);
      if (_renderFlags.x > 0.5f) {
        _216 = log2(exp2(log2(max(1.0f, (_cloudVisibleRange * 0.00033333333f))) * 0.0033333334f));
        _218 = 128.0f;
        _219 = 0;
        _220 = 0;
        _221 = 0.0f;
        _222 = 0.0f;
        _223 = 0.0f;
        _224 = 0.0f;
        _225 = 0.0f;
        _226 = 0.0f;
        _227 = 0.0f;
        _228 = 0.0f;
        _229 = 0.0f;
        _230 = 0.0f;
        _231 = 0.0f;
        _232 = 1;
        while(true) {
          _233 = (float)((int)(_220));
          _247 = (((exp2(select(((uint)_220 < (uint)12), (_233 * 0.33f), (_233 + -8.039999f)) * _216) + -1.0f) * (_205 + -128.0f)) / (exp2(_216 * 300.0f) + -1.0f)) + 128.0f;
          _248 = min(_247, _206);
          _250 = max(0.0f, (_248 - _218));
          _252 = (_250 * _130) + _218;
          _255 = _distanceScale * _250;
          _256 = _252 * _115;
          _259 = _256 + _viewPos.x;
          _260 = _252 * _116;
          _262 = _viewPos.y + _260;
          _263 = _252 * _117;
          _265 = _viewPos.z + _263;
          // [sem: _3__36__0__0__g_climateTex2_sampleLod]
          _287 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_259 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_265 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
          _291 = _248 * _115;
          _292 = _viewPos.x + _291;
          _294 = _viewPos.y + (_248 * _116);
          _295 = _248 * _117;
          _296 = _viewPos.z + _295;
          _300 = sqrt((_295 * _295) + (_291 * _291));
          _307 = _cloudAltitude - (max(((_300 * _300) + -400000.0f), 0.0f) * 1e-06f);
          _310 = _cloudDetailScale * 0.004f;
          _313 = _cloudBaseScale * 0.0004f;
          _316 = _earthRadius + _294;
          _327 = ((sqrt(((_296 * _296) + (_292 * _292)) + (_316 * _316)) - _307) - _earthRadius) / _cloudThickness;
          if (!((_327 < 0.0f) || (_327 > 1.0f))) {
            _341 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
            _342 = _294 - _307;
            _343 = _310 / _313;
            _344 = _343 * _313;
            _345 = _341 * _343;
            _349 = saturate(max((_300 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
            _353 = (_cloudDetailScale * 0.001884f) * (4.0f - (_349 * 3.0f));
            _354 = _344 * 4.355f;
            _359 = 1.0f - sqrt(saturate((1.0f - _327) * 1.4285715f));
            _396 = (((((_349 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_310 * _292) - (_344 * _cloudScroll.x)), ((_342 * _310) - _345), ((_310 * _296) - (_344 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_353 * _292) - (_354 * _cloudScroll.x)), ((_353 * _342) - (_345 * 4.355f)), ((_353 * _296) - (_354 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_327 * 4.0f) * 0.8f) + 0.2f);
            _437 = (saturate(((saturate(_327 * 10.0f) * saturate(saturate(((_287.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_313 * (_292 - _cloudScroll.x)), ((_313 * _342) - _341), (_313 * (_296 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_359 * 0.5f), ((_359 * _359) * _359)))) - _396) / (1.0f - _396)) * _cloudAlpha);
          } else {
            _437 = 0.0f;
          }
          _439 = (_cloudFadeRange > 1e-05f);
          if (_439) {
            _449 = saturate((((1.0f - _cloudNear) * _300) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
          } else {
            _449 = 1.0f;  // [sem: expr_sat]
          }
          _451 = ((_449 * _437) > 0.001f);
          if ((_219 != 0) && _451) {
            _2009 = 0;
            _2010 = _232;
            _2011 = _231;
            _2012 = _230;
            _2013 = _229;
            _2014 = _228;
            _2015 = _227;
            _2016 = _226;
            _2017 = _225;
            _2018 = _224;
            _2019 = _223;
            _2020 = _222;
            _2021 = _221;
            _2022 = ((int)((uint)((uint)(_220)) + (uint)(-2)));
            _2023 = 0;
            _2024 = _218;
          } else {
            _460 = select(((uint)_220 < (uint)298), (((int)(uint)(_451)) ^ 1), 0);
            _461 = (uint)((uint)(_460)) + (uint)((uint)(_220));
            _462 = _cloudThickness + _cloudAltitude;
            _465 = saturate((_252 + -4000.0f) * 0.001f);  // [sem: expr_sat]
            _466 = _earthRadius + _262;
            _467 = _259 * _259;
            _468 = _265 * _265;
            _472 = sqrt((_468 + _467) + (_466 * _466));
            _473 = _259 / _472;
            _474 = _466 / _472;
            _475 = _265 / _472;
            _476 = _472 - _earthRadius;
            if (_476 > 0.0f) {
              _479 = dot(float3(_473, _474, _475), float3(_115, _116, _117));
              _484 = min(max(_476, 16.0f), (_atmosphereThickness + -16.0f));
              _485 = max(_484, 0.0f);
              _492 = (-0.0f - sqrt((_485 + (_earthRadius * 2.0f)) * _485)) / (_485 + _earthRadius);
              if (_479 > _492) {
                _515 = ((exp2(log2(saturate((_479 - _492) / (1.0f - _492))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _515 = ((exp2(log2(saturate((_492 - _479) / (_492 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
              _536 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(((exp2(log2(saturate((_484 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _515, ((1.0f - exp2(-1.1541561f - (dot(float3(_473, _474, _475), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
              _541 = _536.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _542 = _536.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _543 = _536.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            } else {
              _541 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _542 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _543 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            }
            if (_465 < 0.9999f) {
              _548 = _259 - (_staticShadowPosition[1].x);
              _550 = _262 - (_staticShadowPosition[1].y);
              _552 = _265 - (_staticShadowPosition[1].z);
              _564 = (_shadowProjRelativeTexScale[1][0].w) + mad((_shadowProjRelativeTexScale[1][0].z), _552, mad((_shadowProjRelativeTexScale[1][0].y), _550, ((_shadowProjRelativeTexScale[1][0].x) * _548)));
              _572 = mad((_shadowProjRelativeTexScale[1][1].z), _552, mad((_shadowProjRelativeTexScale[1][1].y), _550, ((_shadowProjRelativeTexScale[1][1].x) * _548))) + (_shadowProjRelativeTexScale[1][1].w);
              _580 = mad((_shadowProjRelativeTexScale[1][2].z), _552, mad((_shadowProjRelativeTexScale[1][2].y), _550, ((_shadowProjRelativeTexScale[1][2].x) * _548))) + (_shadowProjRelativeTexScale[1][2].w);
              _583 = 2.0f / _shadowSizeAndInvSize.y;
              _584 = 1.0f - _583;
              if ((_572 <= _584) && ((_564 >= _583) && (_564 <= _584))) {
                _595 = (_572 >= _583) && ((_580 >= 0.0001f) && (_580 <= 1.0f));
                _602 = ((int)(uint)(_595));
                _603 = select(_595, 0.0002f, 0.0f);
                _604 = select(_595, _580, 0.0f);
                _605 = select(_595, _572, 0.0f);
                _606 = select(_595, _564, 0.0f);
              } else {
                _602 = 0;
                _603 = 0.0f;
                _604 = 0.0f;
                _605 = 0.0f;
                _606 = 0.0f;
              }
              _609 = _259 - (_staticShadowPosition[0].x);
              _611 = _262 - (_staticShadowPosition[0].y);
              _613 = _265 - (_staticShadowPosition[0].z);
              _625 = (_shadowProjRelativeTexScale[0][0].w) + mad((_shadowProjRelativeTexScale[0][0].z), _613, mad((_shadowProjRelativeTexScale[0][0].y), _611, ((_shadowProjRelativeTexScale[0][0].x) * _609)));
              _633 = mad((_shadowProjRelativeTexScale[0][1].z), _613, mad((_shadowProjRelativeTexScale[0][1].y), _611, ((_shadowProjRelativeTexScale[0][1].x) * _609))) + (_shadowProjRelativeTexScale[0][1].w);
              _641 = mad((_shadowProjRelativeTexScale[0][2].z), _613, mad((_shadowProjRelativeTexScale[0][2].y), _611, ((_shadowProjRelativeTexScale[0][2].x) * _609))) + (_shadowProjRelativeTexScale[0][2].w);
              if (((_625 >= _583) && (_625 <= _584)) && (_633 <= _584)) {
                _652 = (_641 <= 1.0f) && ((_633 >= _583) && (_641 >= 0.0001f));
                _660 = select(_652, 0, _602);
                _661 = select(_652, 1, _602);
                _662 = select(_652, 0.0002f, _603);
                _663 = select(_652, _641, _604);
                _664 = select(_652, _633, _605);
                _665 = select(_652, _625, _606);
              } else {
                _660 = _602;
                _661 = _602;
                _662 = _603;
                _663 = _604;
                _664 = _605;
                _665 = _606;
              }
              [branch]
              if (!(_661 == 0)) {
                // [sem: expr_sat]
                _677 = saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_665, _664, ((float)((uint)((uint)(_660))))), (_663 - _662))).x));
              } else {
                _677 = 1.0f;  // [sem: expr_sat]
              }
              _689 = (_terrainShadowProjRelativeTexScale[0].w) + mad((_terrainShadowProjRelativeTexScale[0].z), _263, mad((_terrainShadowProjRelativeTexScale[0].y), _260, ((_terrainShadowProjRelativeTexScale[0].x) * _256)));
              _697 = mad((_terrainShadowProjRelativeTexScale[1].z), _263, mad((_terrainShadowProjRelativeTexScale[1].y), _260, ((_terrainShadowProjRelativeTexScale[1].x) * _256))) + (_terrainShadowProjRelativeTexScale[1].w);
              _705 = mad((_terrainShadowProjRelativeTexScale[2].z), _263, mad((_terrainShadowProjRelativeTexScale[2].y), _260, ((_terrainShadowProjRelativeTexScale[2].x) * _256))) + (_terrainShadowProjRelativeTexScale[2].w);
              if ((_705 <= 1.0f) && ((saturate(_689) == _689) && (_705 >= 0.0001f))) {
                if (saturate(_697) == _697) {
                  // [sem: expr_sat]
                  _724 = saturate(1.0f - ((__3__36__0__0__g_terrainShadowDepth.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float2(_689, _697), (_705 + -0.005f))).x));
                } else {
                  _724 = 1.0f;  // [sem: expr_sat]
                }
              } else {
                _724 = 1.0f;  // [sem: expr_sat]
              }
              _725 = min(_677, _724);
              _730 = (lerp(_725, 1.0f, _465));  // [sem: blended]
            } else {
              _730 = 1.0f;  // [sem: blended]
            }
            _731 = max(_476, 0.01f);
            _732 = -0.0f - _731;
            _737 = exp2((_732 / _rayleighScaledHeight) * 1.442695f);
            _742 = exp2((_732 / _mieScaledHeight) * 1.442695f);
            _745 = (_263 * _263) + (_256 * _256);
            _746 = sqrt(_745);
            _750 = max(((_746 * _746) + -400000.0f), 0.0f) * 1e-06f;
            _751 = _cloudAltitude - _750;
            _754 = ((_472 - _earthRadius) - _751) / _cloudThickness;
            if (!((_754 < 0.0f) || (_754 > 1.0f))) {
              _768 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
              _769 = _262 - _751;
              _770 = _310 / _313;
              _771 = _770 * _313;
              _772 = _768 * _770;
              _780 = (_cloudDetailScale * 0.001884f) * (4.0f - (saturate(max((_746 + -2500.0f), 0.0f) * 0.05f) * 3.0f));
              _781 = _771 * 4.355f;
              _786 = 1.0f - sqrt(saturate((1.0f - _754) * 1.4285715f));
              _820 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_310 * _259) - (_771 * _cloudScroll.x)), ((_769 * _310) - _772), ((_310 * _265) - (_771 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_780 * _259) - (_781 * _cloudScroll.x)), ((_780 * _769) - (_772 * 4.355f)), ((_780 * _265) - (_781 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_754 * 4.0f) * 0.8f) + 0.2f);
              _861 = (saturate(((saturate(_754 * 10.0f) * saturate(saturate(((_287.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_313 * (_259 - _cloudScroll.x)), ((_769 * _313) - _768), (_313 * (_265 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_786 * 0.5f), ((_786 * _786) * _786)))) - _820) / (1.0f - _820)) * _cloudAlpha);
            } else {
              _861 = 0.0f;
            }
            if (_439) {
              _871 = saturate(((_746 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
            } else {
              _871 = 1.0f;  // [sem: expr_sat]
            }
            _872 = _871 * _861;
            _875 = sqrt(_745 + (_260 * _260));
            _879 = max(1e-06f, (_heightFogScale * 0.0025f));
            _881 = _879 * _cloudScroll.x;
            _883 = _879 * _cloudScroll.y;
            _884 = _879 * _259;
            _885 = _879 * _262;
            _886 = _879 * _265;
            // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
            _896 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_884 * 6.393882f) - (_881 * 1.871f)), (_885 * 6.393882f), ((_886 * 6.393882f) - (_883 * 1.871f))), 0.0f);
            _899 = _heightFogFalloff * -0.14426951f;
            _938 = (((saturate(_875 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_884 * 0.5127f) - _881), (_885 * 0.5127f), ((_886 * 0.5127f) - _883)), 0.0f)).x))) * ((saturate((_875 + -300.0f) * 0.0025f) * (0.5f - _896.x)) + _896.x)) * ((exp2(max(0.001f, ((_731 - _heightScaleMin) - ((_heightScaleMax - _heightScaleMin) * _287.z))) * _899) * _287.y) + (exp2(max(0.001f, (_731 - _heightFogBaseline)) * _899) * _heightFogDensity));
            _939 = _262 - _cloudAltitude;
            _941 = (_750 + _939) / _cloudThickness;
            if (_sunDirection.y > 0.0f) {
              _959 = _sunDirection.z;
              _960 = _sunDirection.y;
              _961 = _sunDirection.x;
            } else {
              if (_sunDirection.y > _moonDirection.y) {
                _959 = _sunDirection.z;
                _960 = _sunDirection.y;
                _961 = _sunDirection.x;
              } else {
                _959 = _moonDirection.z;
                _960 = _moonDirection.y;
                _961 = _moonDirection.x;
              }
            }
            _962 = (_960 > 0.0f);
            _971 = ((0.5f - (((float)((int)((int)((int)(uint)(_962)) - (int)((int)(uint)((int)(_960 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _751;
            if (_262 < _751) {
              _974 = dot(float3(0.0f, 1.0f, 0.0f), float3(_961, _960, _959));
              _980 = select((abs(_974) < 1e-08f), 1e+08f, ((_971 - dot(float3(0.0f, 1.0f, 0.0f), float3(_259, _262, _265))) / _974));
              _986 = ((_980 * _959) + _265);
              _987 = _971;
              _988 = ((_980 * _961) + _259);
            } else {
              _986 = _265;
              _987 = _262;
              _988 = _259;
            }
            _990 = _cloudScatteringCoefficient / _distanceScale;
            _991 = abs(_960);
            _993 = saturate(_991 * 4.0f);  // [sem: expr_sat]
            _1011 = (_993 * _993) * exp2(((_distanceScale * -1.442695f) * _990) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_988 - _viewPos.x) * 5e-05f) + 0.5f), ((_987 - _cloudAltitude) / _cloudThickness), (((_986 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x));
            _1017 = ((1.0f - _1011) * saturate((_939 - _cloudThickness) * 0.1f)) + _1011;
            _1018 = -0.0f - _990;
            _1021 = (log2(_1017) * 0.6931472f) / _1018;
            if ((_941 <= 1.0f) && ((_872 > 0.001f) && (_941 >= 0.0f))) {
              _1029 = (_262 - _751) / _cloudThickness;
              if (!((_1029 < 0.0f) || (_1029 > 1.0f))) {
                if (_991 > 0.001f) {
                  _1042 = min(300.0f, (((_751 - _262) + select(_962, _cloudThickness, 0.0f)) / _960));
                } else {
                  _1042 = 300.0f;
                }
                _1043 = _1042 * 0.2f;
                _1044 = _1043 * _961;
                _1045 = _1043 * _960;
                _1046 = _1043 * _959;
                _1054 = 0;
                _1055 = ((_1046 * 0.5f) + _265);
                _1056 = ((_1045 * 0.5f) + _262);
                _1057 = ((_1044 * 0.5f) + _259);
                _1058 = _1046;
                _1059 = _1045;
                _1060 = _1044;
                _1061 = _1043;
                _1062 = 0.0f;
                while(true) {
                  _1065 = _1057 - _viewPos.x;
                  _1067 = _1055 - _viewPos.z;
                  _1071 = sqrt((_1067 * _1067) + (_1065 * _1065));
                  _1078 = _cloudAltitude - (max(((_1071 * _1071) + -400000.0f), 0.0f) * 1e-06f);
                  _1081 = _cloudDetailScale * 0.004f;
                  _1084 = _cloudBaseScale * 0.0004f;
                  _1087 = _earthRadius + _1056;
                  _1098 = ((sqrt(((_1057 * _1057) + (_1055 * _1055)) + (_1087 * _1087)) - _1078) - _earthRadius) / _cloudThickness;
                  if (!((_1098 < 0.0f) || (_1098 > 1.0f))) {
                    _1112 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                    _1113 = _1056 - _1078;
                    _1114 = _1081 / _1084;
                    _1115 = _1114 * _1084;
                    _1116 = _1112 * _1114;
                    _1120 = saturate(max((_1071 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                    _1124 = (_cloudDetailScale * 0.001884f) * (4.0f - (_1120 * 3.0f));
                    _1125 = _1115 * 4.355f;
                    _1130 = 1.0f - sqrt(saturate((1.0f - _1098) * 1.4285715f));
                    // [sem: expr_sat]
                    _1189 = saturate(_1098 * 10.0f) * saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_1057 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + (_1055 / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1057 - _cloudScroll.x) * _1084), ((_1084 * _1113) - _1112), ((_1055 - _cloudScroll.y) * _1084)), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_1130 * 0.5f), ((_1130 * _1130) * _1130)));
                    _1220 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1124 * _1057) - (_cloudScroll.x * _1125)), ((_1124 * _1113) - (_1116 * 4.355f)), ((_1124 * _1055) - (_cloudScroll.y * _1125))), 0.0f)).x) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1081 * _1057) - (_cloudScroll.x * _1115)), ((_1081 * _1113) - _1116), ((_1081 * _1055) - (_cloudScroll.y * _1115))), 0.0f)).x))) * ((saturate(_1098 * 4.0f) * 0.8f) + 0.2f);
                    _1223 = _1220 * ((_1120 * 0.4f) + 0.1f);
                    _1236 = (saturate((_1189 - _1223) / (1.0f - _1223)) * _cloudAlpha);
                    _1237 = (saturate((_1189 - _1220) / (1.0f - _1220)) * _cloudAlpha);
                  } else {
                    _1236 = 0.0f;
                    _1237 = 0.0f;
                  }
                  _1251 = (((exp2((((_1061 * -0.0072134747f) * _1062) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (_1237 - _1236)) + _1236) * _1061) + _1062;
                  _1252 = _1060 + _1057;
                  _1253 = _1059 + _1056;
                  _1254 = _1058 + _1055;
                  _1255 = _1061 * 1.3f;
                  _1256 = _1060 * 1.3f;
                  _1257 = _1059 * 1.3f;
                  _1258 = _1058 * 1.3f;
                  _1259 = (int)(_1054) + (int)(1);
                  if (!(_1259 == 6)) {
                    _1054 = _1259;
                    _1055 = _1254;
                    _1056 = _1253;
                    _1057 = _1252;
                    _1058 = _1258;
                    _1059 = _1257;
                    _1060 = _1256;
                    _1061 = _1255;
                    _1062 = _1251;
                    continue;
                  }
                  _1264 = (_1251 * _distanceScale);
                  break;
                }
              } else {
                _1264 = 0.0f;
              }
              _1265 = max(_1021, _1264);
              _1268 = _259 - _viewPos.x;
              _1270 = _265 - _viewPos.z;
              _1271 = _1268 * _1268;
              _1272 = _1270 * _1270;
              _1274 = sqrt(_1272 + _1271);
              _1285 = ((_262 - _cloudAltitude) + (max(((_1274 * _1274) + -400000.0f), 0.0f) * 1e-06f)) / _cloudThickness;
              if (!((_1285 < 0.0f) || (_1285 > 1.0f))) {
                // [sem: _3__36__0__0__g_climateTex2_sampleLod]
                _1311 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_259 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_265 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                _1313 = _259 + 50.0f;
                _1314 = _262 + 200.0f;
                _1315 = _1313 - _viewPos.x;
                _1318 = sqrt((_1315 * _1315) + _1272);
                _1323 = _cloudAltitude - (max(((_1318 * _1318) + -400000.0f), 0.0f) * 1e-06f);
                _1326 = _cloudDetailScale * 0.004f;
                _1329 = _cloudBaseScale * 0.0004f;
                _1332 = _earthRadius + _1314;
                _1333 = _1332 * _1332;
                _1340 = ((sqrt(((_1313 * _1313) + _468) + _1333) - _1323) - _earthRadius) / _cloudThickness;
                if (!((_1340 < 0.0f) || (_1340 > 1.0f))) {
                  _1354 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _1355 = _1314 - _1323;
                  _1356 = _1326 / _1329;
                  _1357 = _1356 * _1329;
                  _1358 = _1354 * _1356;
                  _1362 = saturate(max((_1318 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _1366 = (_cloudDetailScale * 0.001884f) * (4.0f - (_1362 * 3.0f));
                  _1367 = _1357 * 4.355f;
                  _1372 = 1.0f - sqrt(saturate((1.0f - _1340) * 1.4285715f));
                  _1409 = (((((_1362 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1326 * _1313) - (_1357 * _cloudScroll.x)), ((_1355 * _1326) - _1358), ((_1326 * _265) - (_1357 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1366 * _1313) - (_1367 * _cloudScroll.x)), ((_1366 * _1355) - (_1358 * 4.355f)), ((_1366 * _265) - (_1367 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_1340 * 4.0f) * 0.8f) + 0.2f);
                  _1450 = (saturate(((saturate(_1340 * 10.0f) * saturate(saturate(((_1311.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_1329 * (_1313 - _cloudScroll.x)), ((_1329 * _1355) - _1354), (_1329 * (_265 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_1372 * 0.5f), ((_1372 * _1372) * _1372)))) - _1409) / (1.0f - _1409)) * _cloudAlpha);
                } else {
                  _1450 = 0.0f;
                }
                _1452 = (_cloudFadeRange > 1e-05f);
                if (_1452) {
                  _1462 = saturate(((_1318 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _1462 = 1.0f;  // [sem: expr_sat]
                }
                _1463 = _265 + -50.0f;
                _1464 = _1463 - _viewPos.z;
                _1467 = sqrt((_1464 * _1464) + _1271);
                _1472 = _cloudAltitude - (max(((_1467 * _1467) + -400000.0f), 0.0f) * 1e-06f);
                _1479 = ((sqrt(((_1463 * _1463) + _467) + _1333) - _earthRadius) - _1472) / _cloudThickness;
                if (!((_1479 < 0.0f) || (_1479 > 1.0f))) {
                  _1493 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _1494 = _1314 - _1472;
                  _1495 = _1326 / _1329;
                  _1496 = _1495 * _1329;
                  _1497 = _1493 * _1495;
                  _1501 = saturate(max((_1467 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _1505 = (_cloudDetailScale * 0.001884f) * (4.0f - (_1501 * 3.0f));
                  _1506 = _1496 * 4.355f;
                  _1511 = 1.0f - sqrt(saturate((1.0f - _1479) * 1.4285715f));
                  _1548 = (((((_1501 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1326 * _259) - (_1496 * _cloudScroll.x)), ((_1494 * _1326) - _1497), ((_1326 * _1463) - (_1496 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1505 * _259) - (_1506 * _cloudScroll.x)), ((_1505 * _1494) - (_1497 * 4.355f)), ((_1505 * _1463) - (_1506 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_1479 * 4.0f) * 0.8f) + 0.2f);
                  _1589 = (saturate(((saturate(_1479 * 10.0f) * saturate(saturate(((_1311.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_1329 * (_259 - _cloudScroll.x)), ((_1494 * _1329) - _1493), (_1329 * (_1463 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_1511 * 0.5f), ((_1511 * _1511) * _1511)))) - _1548) / (1.0f - _1548)) * _cloudAlpha);
                } else {
                  _1589 = 0.0f;
                }
                if (_1452) {
                  _1599 = saturate(((_1467 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _1599 = 1.0f;  // [sem: expr_sat]
                }
                _1613 = ((((_1599 * _1589) + (_1462 * _1450)) * 20.0f) * _distanceScale);
                _1614 = _1265;
              } else {
                _1613 = 0.0f;
                _1614 = _1265;
              }
            } else {
              _1613 = ((log2(max(_1017, 0.5f)) * 0.6931472f) / _1018);
              _1614 = _1021;
            }
            _1617 = dot(float3(_473, _474, _475), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
            _1621 = min(max(_731, 16.0f), (_atmosphereThickness + -16.0f));
            _1622 = max(_1621, 0.0f);
            _1631 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _1622) * _1622)) / (_earthRadius + _1622);
            if (_1617 > _1631) {
              _1654 = ((exp2(log2(saturate((_1617 - _1631) / (1.0f - _1631))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _1654 = ((exp2(log2(saturate((_1631 - _1617) / (_1631 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
            _1666 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_1621 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _1654), 0.0f);
            _1674 = saturate((1.0f - saturate(_252 / _205)) * 10.0f) * _872;
            _1675 = _255 * 0.5f;
            _1678 = ((_737 + _228) * _1675) + _224;
            _1681 = ((_742 + _229) * _1675) + _225;
            _1684 = ((_1674 + _230) * _1675) + _226;
            _1687 = ((_938 + _231) * _1675) + _227;
            _1688 = _1684 + _1687;
            _1689 = _1666.x + _1678;
            _1694 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
            _1697 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
            _1699 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
            _1701 = _mieAerosolDensity * 2e-05f;
            _1704 = (_mieAerosolAbsorption + 1.0f) * _1701;
            _1706 = (_1666.y + _1681) * _1704;
            _1711 = _cloudScatteringCoefficient / _distanceScale;
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            _1715 = (_1694 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
            _1716 = _1715 * _1689;
            _1719 = ((_1688 + _1614) * _1711) + _1706;
            _1722 = (_1697 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
            _1723 = _1722 * _1689;
            _1726 = (_ozoneRatio * SKY_OZONE_3) + (_1699 * 1.9607843e-07f);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _1727 = _1726 * _1689;
            _1730 = exp2((_1716 + _1719) * -1.442695f);
            _1733 = exp2((_1723 + _1719) * -1.442695f);
            _1736 = exp2((_1719 + _1727) * -1.442695f);
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
          //              curve plateaus at 0.65x G/B for thick clouds instead of going black. If any
          //              condition fails the factor is exactly 1.0 and the multiplies are bit-exact
          //              no-ops.
          // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
          float _cloudRedFactor = CloudReddeningFactor((_1688 * (_1614 + _1711)), _dawnDuskFactor, false);
          _1730 *= 1.f;               // R unchanged
          _1733 *= _cloudRedFactor;   // G attenuated
          _1736 *= _cloudRedFactor;   // B attenuated
          // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _1741 = ((_1733 * 0.33951f) + (_1730 * 0.61312f)) + (_1736 * 0.04737f);
            _1746 = ((_1733 * 0.91636f) + (_1730 * 0.0702f)) + (_1736 * 0.01345f);
            _1751 = ((_1733 * 0.10958f) + (_1730 * 0.02062f)) + (_1736 * 0.8698f);
            _1752 = _1741 * _730;
            _1753 = _1752 * _742;
            _1754 = _1746 * _730;
            _1755 = _1754 * _742;
            _1756 = _1751 * _730;
            _1757 = _1756 * _742;
            _1758 = _distanceScale * _1711;
            _1765 = exp2(log2(1.0f - exp2((_1674 * -14.42695f) * _1758)) * 1.25f);
            _1770 = _737 * 1.9607843e-07f;
            _1773 = ((_169 * 0.059683103f) * _730) * _1770;
            _1775 = _miePhaseConst * _miePhaseConst;
            _1790 = ((_mieAerosolDensity * 1.5915493e-06f) * (((1.0f - _1775) * 3.0f) / ((_1775 + 2.0f) * 2.0f))) * (_169 / exp2(log2((_1775 + 1.0f) - (_miePhaseConst * _170)) * 1.5f));
            _1794 = (((_184 * 64.0f) * _730) * _1674) * _1765;
            _1799 = ((_202 * 2.0f) * _938) * (1.0f - exp2((_938 * -288.539f) * _1758));
            _1801 = (_1799 * _1752) * _volumeFogScatterColor.x;
            _1804 = (_1799 * _1754) * _volumeFogScatterColor.y;
            _1807 = (_1799 * _1756) * _volumeFogScatterColor.z;
            _1811 = ((_1688 + _1613) * _1711) + (_1681 * _1704);
          // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
          // Description: Companion copies of the sun Henyey-Greenstein phase terms computed with the
          //              dawn/dusk-boosted g (see the [Patch: DawnDuskImprovements] setup block near
          //              the top of main): the sun in-scatter path consumes the *b companions for a
          //              stronger forward-scatter lobe around the low sun, while the moon HG keeps
          //              the vanilla variables. When Dawn/Dusk Improvements is Off (or the sun is
          //              outside the dawn/dusk window) _boostedMieG equals the vanilla
          //              _miePhaseConst, so the companions are bit-identical to the vanilla terms
          //              they mirror.
          // [DAWN_DUSK] Sun HG uses boosted g - vanilla _1803/_1822 kept for reference
          float _1803b = _1775;
          float _1822b = _1790;
          [branch]
          if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
            _1803b = _boostedMieG * _boostedMieG;
            _1822b = ((_mieAerosolDensity * 1.591549334989395e-06f) * (((1.0f - _1803b) * 3.0f) / ((_1803b + 2.0f) * 2.0f))) * (_169 / exp2(log2((_1803b + 1.0f) - (_boostedMieG * _170)) * 1.5f));
          }
          // RenoDX: <<< [Patch: DawnDuskImprovements]
            _1815 = exp2(((_1715 * _1678) + _1811) * -1.442695f);
            _1819 = exp2(((_1722 * _1678) + _1811) * -1.442695f);
            _1823 = exp2((_1811 + (_1726 * _1678)) * -1.442695f);
            // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
            // Description: Attenuates only the exact green and blue members of this native RGB transmittance triplet using the path-specific cloud optical depth; red is unchanged and the helper returns identity unless all feature gates are active.
            float _rndx_cloud_red_2_1687 = CloudReddeningFactor((_1688 * (_1613 + _1711)), _dawnDuskFactor, false);
            _1819 *= _rndx_cloud_red_2_1687;
            _1823 *= _rndx_cloud_red_2_1687;
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _1824 = _1701 * _742;
            _1826 = _1711 * (_1674 + _938);
            // RenoDX: >>> [Patch: SkySpectralRayleigh] [Version: 1.16.00]
            // Description: Selects which matrix converts Rayleigh in-scatter radiance into the working
            //              space. Beta stays native everywhere, so extinction and ozone are untouched;
            //              only the conversion changes. Each row carries two Rayleigh radiance terms —
            //              the view-path term against the cloud-attenuated transmittance triple
            //              (_1730/_1733/_1736) and the sun-path term against the sun transmittance
            //              triple (_1815/_1819/_1823) — and both convert per wavelength through
            //              SKY_SPECTRAL_TO_WORKING when enabled. The cloud, volume-fog and Mie terms
            //              carry display-referred artist colour and keep the vanilla matrix, as does
            //              transmittance itself. Each Off arm is the complete native expression.
            _1850 = SKY_SCATTERING
              ? ((((_1801 + (_1794 * _1741)) * _1711) + SKY_RAY_INSCATTER(0, _1730, _1733, _1736, _1694, _1697, _1699, _1773) + ((_1790 * _1753) * _mieScatterColor.x) + (_543 * SKY_RAY_INSCATTER(0, _1815, _1819, _1823, _1694, _1697, _1699, _1770) + _543 * SKY_VAN_DOT(0, _1815, _1819, _1823) * (_1826 + _mieScatterColor.x * _1824))) * _255)
              : (((((_1801 + (_1794 * _1741)) * _1711) + ((_1694 * _1773) * _1741)) + ((_1790 * _1753) * _mieScatterColor.x)) + (((((_1819 * 0.33951f) + (_1815 * 0.61312f)) + (_1823 * 0.04737f)) * _543) * (((_1694 * _1770) + _1826) + (_mieScatterColor.x * _1824)))) * _255;
            _1873 = SKY_SCATTERING
              ? ((((_1804 + (_1794 * _1746)) * _1711) + SKY_RAY_INSCATTER(1, _1730, _1733, _1736, _1694, _1697, _1699, _1773) + ((_1790 * _1755) * _mieScatterColor.y) + (_542 * SKY_RAY_INSCATTER(1, _1815, _1819, _1823, _1694, _1697, _1699, _1770) + _542 * SKY_VAN_DOT(1, _1815, _1819, _1823) * (_1826 + _mieScatterColor.y * _1824))) * _255)
              : (((((_1804 + (_1794 * _1746)) * _1711) + ((_1697 * _1773) * _1746)) + ((_1790 * _1755) * _mieScatterColor.y)) + (((((_1819 * 0.91636f) + (_1815 * 0.0702f)) + (_1823 * 0.01345f)) * _542) * (((_1697 * _1770) + _1826) + (_mieScatterColor.y * _1824)))) * _255;
            _1896 = SKY_SCATTERING
              ? ((((_1807 + (_1794 * _1751)) * _1711) + SKY_RAY_INSCATTER(2, _1730, _1733, _1736, _1694, _1697, _1699, _1773) + ((_1790 * _1757) * _mieScatterColor.z) + (_541 * SKY_RAY_INSCATTER(2, _1815, _1819, _1823, _1694, _1697, _1699, _1770) + _541 * SKY_VAN_DOT(2, _1815, _1819, _1823) * (_1826 + _mieScatterColor.z * _1824))) * _255)
              : (((((_1807 + (_1794 * _1751)) * _1711) + ((_1699 * _1773) * _1751)) + ((_1790 * _1757) * _mieScatterColor.z)) + (((((_1819 * 0.10958f) + (_1815 * 0.02062f)) + (_1823 * 0.8698f)) * _541) * ((_1826 + (_1699 * _1770)) + (_mieScatterColor.z * _1824)))) * _255;
            // RenoDX: <<< [Patch: SkySpectralRayleigh]
            if (_1674 > 0.001f) {
              _1900 = _cloudPhaseConstFront * 0.5f;
              _1901 = _1900 * _1900;
              _1905 = ((_1688 + (_1614 * 0.2f)) * _1711) + _1706;
              _1908 = exp2((_1716 + _1905) * -1.442695f);
              _1911 = exp2((_1723 + _1905) * -1.442695f);
              _1914 = exp2((_1905 + _1727) * -1.442695f);
              _1933 = ((((((_1674 * _730) * 4.0743666f) * _255) * _1711) * _1765) * (((1.0f - _1901) * 3.0f) / ((_1901 + 2.0f) * 2.0f))) * (_169 / exp2(log2((1.0f - (_cloudPhaseConstFront * _164)) + _1901) * 1.5f));
              _1956 = ((_1933 * (((_1911 * 0.10958f) + (_1908 * 0.02062f)) + (_1914 * 0.8698f))) + _1896);
              _1957 = ((_1933 * (((_1911 * 0.91636f) + (_1908 * 0.0702f)) + (_1914 * 0.01345f))) + _1873);
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
            //              curve plateaus at 0.65x G/B for thick clouds instead of going black. If any
            //              condition fails the factor is exactly 1.0 and the multiplies are bit-exact
            //              no-ops.
            // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
            float _cloudRedFactor3 = CloudReddeningFactor((_1688 * ((_1614 * 0.20000000298023224f) + _1711)), _dawnDuskFactor, false);
            _1908 *= 1.f;                // R unchanged
            _1911 *= _cloudRedFactor3;   // G attenuated
            _1914 *= _cloudRedFactor3;   // B attenuated
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
              _1958 = ((_1933 * (((_1911 * 0.33951f) + (_1908 * 0.61312f)) + (_1914 * 0.04737f))) + _1850);
            } else {
              _1956 = _1896;
              _1957 = _1873;
              _1958 = _1850;
            }
            _1967 = _precomputedAmbient7.y * saturate(((float)((int)((int)(((float)((uint)((uint)(_461)))) * 0.33f)))) + _130);
            if (!((_247 < _206) && (_262 < _462))) {
              _2001 = (_viewPos.y > _462);
            } else {
              _2001 = true;
            }
            _2009 = ((int)(uint)((int)(exp2((_1711 * -1.442695f) * _1688) < 0.001f)));
            _2010 = ((int)(uint)(_2001));
            _2011 = _938;
            _2012 = _1674;
            _2013 = _742;
            _2014 = _737;
            _2015 = _1687;
            _2016 = _1684;
            _2017 = _1681;
            _2018 = _1678;
            _2019 = (((_1967 * _1956) + _223) + (((_1807 + (_1757 * _1701)) * _255) * (_precomputedAmbients[48].z)));
            _2020 = (((_1967 * _1957) + _222) + (((_1804 + (_1755 * _1701)) * _255) * (_precomputedAmbients[48].y)));
            _2021 = (((_1967 * _1958) + _221) + (((_1801 + (_1753 * _1701)) * _255) * (_precomputedAmbients[48].x)));
            _2022 = _461;
            _2023 = _460;
            _2024 = _248;
          }
          _2025 = (uint)((uint)(_2022)) + (uint)(1);
          if ((_2009 == 0) && ((_2010 != 0) && ((uint)_2025 < (uint)300))) {
            _218 = _2024;
            _219 = _2023;
            _220 = _2025;
            _221 = _2021;
            _222 = _2020;
            _223 = _2019;
            _224 = _2018;
            _225 = _2017;
            _226 = _2016;
            _227 = _2015;
            _228 = _2014;
            _229 = _2013;
            _230 = _2012;
            _231 = _2011;
            _232 = _2010;
            continue;
          }
          _2033 = select((_2009 != 0), 1e+06f, _2016);
          if (_131) {
            _2039 = _earthRadius + _cloudCirrusAltitude;
            _2043 = _146 - ((_145 - (_2039 * _2039)) * _147);
            if (!(_2043 < 0.0f)) {
              _2050 = ((sqrt(_2043) - _144) / _156);
            } else {
              _2050 = -1.0f;
            }
            _2054 = _146 - ((_145 - (_earthRadius * _earthRadius)) * _147);
            if (!(_2054 < 0.0f)) {
              _2061 = ((sqrt(_2054) - _144) / _156);
            } else {
              _2061 = -1.0f;
            }
            if ((_2050 >= 0.0f) && (_2061 <= 0.0f)) {
              _2067 = _cloudCirrusScale * 5e-05f;
              _2068 = _2050 * _115;
              _2069 = _2050 * _117;
              _2072 = _viewPos.x + _2068;
              _2073 = _2050 * _116;
              _2075 = _viewPos.y + _2073;
              _2077 = _viewPos.z + _2069;
              _2082 = (_2072 * _2067) - (_cloudScroll.y * 0.0003f);
              _2086 = (_2077 * _2067) - (_cloudScroll.x * 0.0003f);
              // [sem: _3__36__0__0__g_texCirrus_SampleBias]
              _2089 = __3__36__0__0__g_texCirrus.SampleBias(__0__95__0__0__g_samplerAnisotropicWrap, float2(_2082, _2086), -1.0f, int2(0, 0));
              _36[0] = _2089.x;
              _36[1] = _2089.y;
              _36[2] = _2089.z;
              _36[3] = _2089.w;
              _2101 = max(0.01f, ((3.0f - _cloudCirrusDensity) * 20000.0f));
              _2105 = sqrt((_2068 * _2068) + (_2069 * _2069));
              if (!(_2105 > _2101)) {
                _2113 = (1.0f - cos((1.5707964f / _2101) * _2105));
              } else {
                _2113 = 1.0f;
              }
              _2114 = _2113 * _cloudCirrusDensity;
              _36[0] = ((_2089.x * _cloudCirrusWeightR) * _2114);
              _36[1] = ((_2114 * _2089.y) * _cloudCirrusWeightG);
              _36[2] = ((_2114 * _2089.z) * _cloudCirrusWeightB);
              _2143 = ((((sin(_2082 * 1.5f) * 0.5f) * sin(_2086 * 1.5f)) + ((sin(mad(_2086, -0.6f, (_2082 * 0.8f)) * 3.03f) * 0.25f) * sin(mad(_2086, 0.8f, (_2082 * 0.6f)) * 3.03f))) * 1.6000001f) + 1.5f;
              _2146 = (int)(min(max(_2143, 0.0f), 2.0f));
              _2149 = _36[((int)min((uint)(_2146), (uint)(3)))];
              _2160 = (((_36[((int)min((uint)(((int)((int)(_2146) + (int)(1)) % (int)(3))), (uint)(3)))]) - _2149) * saturate(_2143 - ((float)((int)(_2146))))) + _2149;
              _2161 = _2075 + _earthRadius;
              _2162 = _2072 * _2072;
              _2163 = _2077 * _2077;
              _2167 = sqrt((_2163 + _2162) + (_2161 * _2161));
              _2168 = _2072 / _2167;
              _2169 = _2161 / _2167;
              _2170 = _2077 / _2167;
              _2171 = _2167 - _earthRadius;
              if (_2171 > 0.0f) {
                _2174 = dot(float3(_2168, _2169, _2170), float3(_115, _116, _117));
                _2179 = min(max(_2171, 16.0f), (_atmosphereThickness + -16.0f));
                _2180 = max(_2179, 0.0f);
                _2187 = (-0.0f - sqrt((_2180 + (_earthRadius * 2.0f)) * _2180)) / (_2180 + _earthRadius);
                if (_2174 > _2187) {
                  _2210 = ((exp2(log2(saturate((_2174 - _2187) / (1.0f - _2187))) * 0.2f) * 0.4921875f) + 0.50390625f);
                } else {
                  _2210 = ((exp2(log2(saturate((_2187 - _2174) / (_2187 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
                }
                // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
                _2232 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(((exp2(log2(saturate((_2179 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _2210, ((1.0f - exp2(-1.1541561f - (dot(float3(_2168, _2169, _2170), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
                _2237 = _2232.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _2238 = _2232.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _2239 = _2232.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              } else {
                _2237 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _2238 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _2239 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              }
              _2240 = max(_2171, 0.01f);
              _2241 = -0.0f - _2240;
              _2246 = exp2((_2241 / _rayleighScaledHeight) * 1.442695f);
              _2251 = exp2((_2241 / _mieScaledHeight) * 1.442695f);
              _2254 = (_2069 * _2069) + (_2068 * _2068);
              _2255 = sqrt(_2254);
              _2259 = max(((_2255 * _2255) + -400000.0f), 0.0f) * 1e-06f;
              _2262 = _cloudAltitude - _2259;
              _2265 = _cloudDetailScale * 0.004f;
              _2268 = _cloudBaseScale * 0.0004f;
              _2273 = ((_2167 - _earthRadius) - _2262) / _cloudThickness;
              if (!((_2273 < 0.0f) || (_2273 > 1.0f))) {
                _2286 = (((_cloudFlow * 0.001f) * _cloudScrollMultiplier) * _time.x) + _cloudSeed;
                _2287 = _2075 - _2262;
                _2288 = _2265 / _2268;
                _2289 = _2288 * _2268;
                _2290 = _2286 * _2288;
                _2298 = (_cloudDetailScale * 0.001884f) * (4.0f - (saturate(max((_2255 + -2500.0f), 0.0f) * 0.05f) * 3.0f));
                _2299 = _2289 * 4.355f;
                _2304 = 1.0f - sqrt(saturate((1.0f - _2273) * 1.4285715f));
                _2336 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2265 * _2072) - (_2289 * _cloudScroll.x)), ((_2287 * _2265) - _2290), ((_2265 * _2077) - (_2289 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2298 * _2072) - (_2299 * _cloudScroll.x)), ((_2298 * _2287) - (_2290 * 4.355f)), ((_2298 * _2077) - (_2299 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_2273 * 4.0f) * 0.8f) + 0.2f);
                _2376 = (saturate(((saturate(_2273 * 10.0f) * saturate(saturate(((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2268 * (_2072 - _cloudScroll.x)), ((_2268 * _2287) - _2286), (_2268 * (_2077 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_2304 * 0.5f), ((_2304 * _2304) * _2304)))) - _2336) / (1.0f - _2336)) * _cloudAlpha);
              } else {
                _2376 = 0.0f;
              }
              if (_cloudFadeRange > 1e-05f) {
                _2388 = saturate((((1.0f - _cloudNear) * _2255) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
              } else {
                _2388 = 1.0f;  // [sem: expr_sat]
              }
              _2391 = sqrt(_2254 + (_2073 * _2073));
              _2395 = max(1e-06f, (_heightFogScale * 0.0025f));
              _2396 = _2395 * _cloudScroll.x;
              _2397 = _2395 * _cloudScroll.y;
              _2398 = _2395 * _2072;
              _2399 = _2395 * _2075;
              _2400 = _2395 * _2077;
              // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
              _2410 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2398 * 6.393882f) - (_2396 * 1.871f)), (_2399 * 6.393882f), ((_2400 * 6.393882f) - (_2397 * 1.871f))), 0.0f);
              _2441 = ((((saturate(_2391 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2398 * 0.5127f) - _2396), (_2399 * 0.5127f), ((_2400 * 0.5127f) - _2397)), 0.0f)).x))) * exp2((_heightFogFalloff * -0.14426951f) * max(0.001f, (_2240 - _heightFogBaseline)))) * ((saturate((_2391 + -300.0f) * 0.0025f) * (0.5f - _2410.x)) + _2410.x)) * _heightFogDensity;
              _2442 = _2075 - _cloudAltitude;
              _2444 = (_2442 + _2259) / _cloudThickness;
              if (_sunDirection.y > 0.0f) {
                _2462 = _sunDirection.z;
                _2463 = _sunDirection.y;
                _2464 = _sunDirection.x;
              } else {
                if (_sunDirection.y > _moonDirection.y) {
                  _2462 = _sunDirection.z;
                  _2463 = _sunDirection.y;
                  _2464 = _sunDirection.x;
                } else {
                  _2462 = _moonDirection.z;
                  _2463 = _moonDirection.y;
                  _2464 = _moonDirection.x;
                }
              }
              _2465 = (_2463 > 0.0f);
              _2474 = ((0.5f - (((float)((int)((int)((int)(uint)(_2465)) - (int)((int)(uint)((int)(_2463 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _2262;
              if (_2075 < _2262) {
                _2477 = dot(float3(0.0f, 1.0f, 0.0f), float3(_2464, _2463, _2462));
                _2483 = select((abs(_2477) < 1e-08f), 1e+08f, ((_2474 - dot(float3(0.0f, 1.0f, 0.0f), float3(_2072, _2075, _2077))) / _2477));
                _2489 = ((_2483 * _2462) + _2077);
                _2490 = _2474;
                _2491 = ((_2483 * _2464) + _2072);
              } else {
                _2489 = _2077;
                _2490 = _2075;
                _2491 = _2072;
              }
              _2494 = _cloudScatteringCoefficient / _distanceScale;
              _2495 = abs(_2463);
              _2497 = saturate(_2495 * 4.0f);  // [sem: expr_sat]
              _2515 = (_2497 * _2497) * exp2(((_distanceScale * -1.442695f) * _2494) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_2491 - _viewPos.x) * 5e-05f) + 0.5f), ((_2490 - _cloudAltitude) / _cloudThickness), (((_2489 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x));
              _2521 = ((1.0f - _2515) * saturate((_2442 - _cloudThickness) * 0.1f)) + _2515;
              _2522 = -0.0f - _2494;
              _2525 = (log2(_2521) * 0.6931472f) / _2522;
              if ((_2444 <= 1.0f) && (((_2388 * _2376) > 0.001f) && (_2444 >= 0.0f))) {
                _2534 = (_2075 - _2262) / _cloudThickness;
                if (!((_2534 < 0.0f) || (_2534 > 1.0f))) {
                  if (_2495 > 0.001f) {
                    _2547 = min(300.0f, (((_2262 - _2075) + select(_2465, _cloudThickness, 0.0f)) / _2463));
                  } else {
                    _2547 = 300.0f;
                  }
                  _2548 = _2547 * 0.2f;
                  _2549 = _2548 * _2464;
                  _2550 = _2548 * _2463;
                  _2551 = _2548 * _2462;
                  _2559 = 0;
                  _2560 = ((_2551 * 0.5f) + _2077);
                  _2561 = ((_2550 * 0.5f) + _2075);
                  _2562 = ((_2549 * 0.5f) + _2072);
                  _2563 = _2551;
                  _2564 = _2550;
                  _2565 = _2549;
                  _2566 = _2548;
                  _2567 = 0.0f;
                  while(true) {
                    _2570 = _2562 - _viewPos.x;
                    _2572 = _2560 - _viewPos.z;
                    _2576 = sqrt((_2572 * _2572) + (_2570 * _2570));
                    _2583 = _cloudAltitude - (max(((_2576 * _2576) + -400000.0f), 0.0f) * 1e-06f);
                    _2586 = _cloudDetailScale * 0.004f;
                    _2589 = _cloudBaseScale * 0.0004f;
                    _2592 = _earthRadius + _2561;
                    _2603 = ((sqrt(((_2562 * _2562) + (_2560 * _2560)) + (_2592 * _2592)) - _2583) - _earthRadius) / _cloudThickness;
                    if (!((_2603 < 0.0f) || (_2603 > 1.0f))) {
                      _2617 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                      _2618 = _2561 - _2583;
                      _2619 = _2586 / _2589;
                      _2620 = _2619 * _2589;
                      _2621 = _2617 * _2619;
                      _2625 = saturate(max((_2576 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                      _2629 = (_cloudDetailScale * 0.001884f) * (4.0f - (_2625 * 3.0f));
                      _2630 = _2620 * 4.355f;
                      _2635 = 1.0f - sqrt(saturate((1.0f - _2603) * 1.4285715f));
                      // [sem: expr_sat]
                      _2694 = saturate(_2603 * 10.0f) * saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_2562 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + (_2560 / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2562 - _cloudScroll.x) * _2589), ((_2589 * _2618) - _2617), ((_2560 - _cloudScroll.y) * _2589)), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_2635 * 0.5f), ((_2635 * _2635) * _2635)));
                      _2725 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2629 * _2562) - (_cloudScroll.x * _2630)), ((_2629 * _2618) - (_2621 * 4.355f)), ((_2629 * _2560) - (_cloudScroll.y * _2630))), 0.0f)).x) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2586 * _2562) - (_cloudScroll.x * _2620)), ((_2586 * _2618) - _2621), ((_2586 * _2560) - (_cloudScroll.y * _2620))), 0.0f)).x))) * ((saturate(_2603 * 4.0f) * 0.8f) + 0.2f);
                      _2728 = _2725 * ((_2625 * 0.4f) + 0.1f);
                      _2741 = (saturate((_2694 - _2728) / (1.0f - _2728)) * _cloudAlpha);
                      _2742 = (saturate((_2694 - _2725) / (1.0f - _2725)) * _cloudAlpha);
                    } else {
                      _2741 = 0.0f;
                      _2742 = 0.0f;
                    }
                    _2756 = (((exp2((((_2566 * -0.0072134747f) * _2567) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (_2742 - _2741)) + _2741) * _2566) + _2567;
                    _2757 = _2565 + _2562;
                    _2758 = _2564 + _2561;
                    _2759 = _2563 + _2560;
                    _2760 = _2566 * 1.3f;
                    _2761 = _2565 * 1.3f;
                    _2762 = _2564 * 1.3f;
                    _2763 = _2563 * 1.3f;
                    _2764 = (int)(_2559) + (int)(1);
                    if (!(_2764 == 6)) {
                      _2559 = _2764;
                      _2560 = _2759;
                      _2561 = _2758;
                      _2562 = _2757;
                      _2563 = _2763;
                      _2564 = _2762;
                      _2565 = _2761;
                      _2566 = _2760;
                      _2567 = _2756;
                      continue;
                    }
                    _2769 = (_2756 * _distanceScale);
                    break;
                  }
                } else {
                  _2769 = 0.0f;
                }
                _2770 = max(_2525, _2769);
                _2773 = _2072 - _viewPos.x;
                _2775 = _2077 - _viewPos.z;
                _2776 = _2773 * _2773;
                _2777 = _2775 * _2775;
                _2779 = sqrt(_2777 + _2776);
                _2790 = ((_2075 - _cloudAltitude) + (max(((_2779 * _2779) + -400000.0f), 0.0f) * 1e-06f)) / _cloudThickness;
                if (!((_2790 < 0.0f) || (_2790 > 1.0f))) {
                  // [sem: _3__36__0__0__g_climateTex2_sampleLod]
                  _2816 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_2072 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_2077 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                  _2818 = _2072 + 50.0f;
                  _2819 = _2075 + 200.0f;
                  _2820 = _2818 - _viewPos.x;
                  _2823 = sqrt((_2820 * _2820) + _2777);
                  _2828 = _cloudAltitude - (max(((_2823 * _2823) + -400000.0f), 0.0f) * 1e-06f);
                  _2831 = _cloudDetailScale * 0.004f;
                  _2834 = _cloudBaseScale * 0.0004f;
                  _2837 = _earthRadius + _2819;
                  _2838 = _2837 * _2837;
                  _2845 = ((sqrt(((_2818 * _2818) + _2163) + _2838) - _2828) - _earthRadius) / _cloudThickness;
                  if (!((_2845 < 0.0f) || (_2845 > 1.0f))) {
                    _2859 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                    _2860 = _2819 - _2828;
                    _2861 = _2831 / _2834;
                    _2862 = _2861 * _2834;
                    _2863 = _2859 * _2861;
                    _2867 = saturate(max((_2823 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                    _2871 = (_cloudDetailScale * 0.001884f) * (4.0f - (_2867 * 3.0f));
                    _2872 = _2862 * 4.355f;
                    _2877 = 1.0f - sqrt(saturate((1.0f - _2845) * 1.4285715f));
                    _2914 = (((((_2867 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2831 * _2818) - (_2862 * _cloudScroll.x)), ((_2860 * _2831) - _2863), ((_2831 * _2077) - (_2862 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2871 * _2818) - (_2872 * _cloudScroll.x)), ((_2871 * _2860) - (_2863 * 4.355f)), ((_2871 * _2077) - (_2872 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_2845 * 4.0f) * 0.8f) + 0.2f);
                    _2955 = (saturate(((saturate(_2845 * 10.0f) * saturate(saturate(((_2816.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2834 * (_2818 - _cloudScroll.x)), ((_2834 * _2860) - _2859), (_2834 * (_2077 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_2877 * 0.5f), ((_2877 * _2877) * _2877)))) - _2914) / (1.0f - _2914)) * _cloudAlpha);
                  } else {
                    _2955 = 0.0f;
                  }
                  _2957 = (_cloudFadeRange > 1e-05f);
                  if (_2957) {
                    _2967 = saturate(((_2823 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                  } else {
                    _2967 = 1.0f;  // [sem: expr_sat]
                  }
                  _2968 = _2077 + -50.0f;
                  _2969 = _2968 - _viewPos.z;
                  _2972 = sqrt((_2969 * _2969) + _2776);
                  _2977 = _cloudAltitude - (max(((_2972 * _2972) + -400000.0f), 0.0f) * 1e-06f);
                  _2984 = ((sqrt(((_2968 * _2968) + _2162) + _2838) - _earthRadius) - _2977) / _cloudThickness;
                  if (!((_2984 < 0.0f) || (_2984 > 1.0f))) {
                    _2998 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                    _2999 = _2819 - _2977;
                    _3000 = _2831 / _2834;
                    _3001 = _3000 * _2834;
                    _3002 = _2998 * _3000;
                    _3006 = saturate(max((_2972 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                    _3010 = (_cloudDetailScale * 0.001884f) * (4.0f - (_3006 * 3.0f));
                    _3011 = _3001 * 4.355f;
                    _3016 = 1.0f - sqrt(saturate((1.0f - _2984) * 1.4285715f));
                    _3053 = (((((_3006 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2831 * _2072) - (_3001 * _cloudScroll.x)), ((_2999 * _2831) - _3002), ((_2831 * _2968) - (_3001 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_3010 * _2072) - (_3011 * _cloudScroll.x)), ((_3010 * _2999) - (_3002 * 4.355f)), ((_3010 * _2968) - (_3011 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_2984 * 4.0f) * 0.8f) + 0.2f);
                    _3094 = (saturate(((saturate(_2984 * 10.0f) * saturate(saturate(((_2816.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2834 * (_2072 - _cloudScroll.x)), ((_2999 * _2834) - _2998), (_2834 * (_2968 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_3016 * 0.5f), ((_3016 * _3016) * _3016)))) - _3053) / (1.0f - _3053)) * _cloudAlpha);
                  } else {
                    _3094 = 0.0f;
                  }
                  if (_2957) {
                    _3104 = saturate(((_2972 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                  } else {
                    _3104 = 1.0f;  // [sem: expr_sat]
                  }
                  _3118 = ((((_3104 * _3094) + (_2967 * _2955)) * 20.0f) * _distanceScale);
                  _3119 = _2770;
                } else {
                  _3118 = 0.0f;
                  _3119 = _2770;
                }
              } else {
                _3118 = ((log2(max(_2521, 0.5f)) * 0.6931472f) / _2522);
                _3119 = _2525;
              }
              _3122 = dot(float3(_2168, _2169, _2170), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
              _3126 = min(max(_2240, 16.0f), (_atmosphereThickness + -16.0f));
              _3127 = max(_3126, 0.0f);
              _3136 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _3127) * _3127)) / (_earthRadius + _3127);
              if (_3122 > _3136) {
                _3159 = ((exp2(log2(saturate((_3122 - _3136) / (1.0f - _3136))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _3159 = ((exp2(log2(saturate((_3136 - _3122) / (_3136 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
              _3171 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3126 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _3159), 0.0f);
              _3176 = ((_2246 + _2014) * 12.5f) + _2018;
              _3179 = ((_2251 + _2013) * 12.5f) + _2017;
              _3182 = ((_2160 + _2012) * 12.5f) + _2033;
              _3185 = ((_2441 + _2011) * 12.5f) + _2015;
              _3186 = _3185 + _3182;
              _3187 = _3171.x + _3176;
              _3192 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
              _3195 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
              _3197 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
              _3199 = _mieAerosolDensity * 2e-05f;
              _3202 = (_mieAerosolAbsorption + 1.0f) * _3199;
              _3207 = _cloudScatteringCoefficient / _distanceScale;
              // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
              // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
              _3211 = (_3192 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
              _3216 = (_3207 * (_3119 + _3186)) + ((_3171.y + _3179) * _3202);
              _3219 = (_3195 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
              _3222 = (_ozoneRatio * SKY_OZONE_3) + (_3197 * 1.9607843e-07f);
              // RenoDX: <<< [Patch: SkySpectralOzone]
              _3226 = exp2(((_3211 * _3187) + _3216) * -1.442695f);
              _3230 = exp2(((_3219 * _3187) + _3216) * -1.442695f);
              _3234 = exp2(((_3222 * _3187) + _3216) * -1.442695f);
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
            //              curve plateaus at 0.65x G/B for thick clouds instead of going black. If any
            //              condition fails the factor is exactly 1.0 and the multiplies are bit-exact
            //              no-ops.
            // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
            float _cloudRedFactor4 = CloudReddeningFactor((_3207 * (_3119 + _3186)), _dawnDuskFactor, false);
            _3226 *= 1.f;                // R unchanged
            _3230 *= _cloudRedFactor4;   // G attenuated
            _3234 *= _cloudRedFactor4;   // B attenuated
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
              _3239 = ((_3230 * 0.33951f) + (_3226 * 0.61312f)) + (_3234 * 0.04737f);
              _3244 = ((_3230 * 0.91636f) + (_3226 * 0.0702f)) + (_3234 * 0.01345f);
              _3249 = ((_3230 * 0.10958f) + (_3226 * 0.02062f)) + (_3234 * 0.8698f);
              _3250 = _3239 * _2251;
              _3251 = _3244 * _2251;
              _3252 = _3249 * _2251;
              _3253 = _distanceScale * _3207;
              _3258 = (1.0f - exp2((_2441 * -288.539f) * _3253)) * _2441;
              _3259 = _169 * 0.059683103f;
              _3261 = _miePhaseConst * _miePhaseConst;
              _3276 = ((_mieAerosolDensity * 1.5915493e-06f) * (((1.0f - _3261) * 3.0f) / ((_3261 + 2.0f) * 2.0f))) * (_169 / exp2(log2((_3261 + 1.0f) - (_miePhaseConst * _170)) * 1.5f));
              _3286 = ((_184 * 64.0f) * _2160) * exp2(log2(1.0f - exp2((_2160 * -14.42695f) * _3253)) * 1.25f);
            // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
            // Description: Companion copies of the sun Henyey-Greenstein phase terms computed with the
            //              dawn/dusk-boosted g (see the [Patch: DawnDuskImprovements] setup block near
            //              the top of main): the sun in-scatter path consumes the *b companions for a
            //              stronger forward-scatter lobe around the low sun, while the moon HG keeps
            //              the vanilla variables. When Dawn/Dusk Improvements is Off (or the sun is
            //              outside the dawn/dusk window) _boostedMieG equals the vanilla
            //              _miePhaseConst, so the companions are bit-identical to the vanilla terms
            //              they mirror.
            // [DAWN_DUSK] Sun HG uses boosted g - vanilla _3282/_3301 kept for reference
            float _3282b = _3261;
            float _3301b = _3276;
            [branch]
            if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
              _3282b = _boostedMieG * _boostedMieG;
              _3301b = ((_mieAerosolDensity * 1.591549334989395e-06f) * (((1.0f - _3282b) * 3.0f) / ((_3282b + 2.0f) * 2.0f))) * (_169 / exp2(log2((_3282b + 1.0f) - (_boostedMieG * _170)) * 1.5f));
            }
            // RenoDX: <<< [Patch: DawnDuskImprovements]
              _3287 = _202 * 2.0f;
              _3291 = (_3258 * _3239) * _volumeFogScatterColor.x;
              _3294 = (_3258 * _3244) * _volumeFogScatterColor.y;
              _3297 = (_3258 * _3249) * _volumeFogScatterColor.z;
              _3298 = _mieAerosolDensity * 0.00049999997f;
              _3299 = _202 * 50.0f;
              _3303 = (_3207 * (_3118 + _3186)) + (_3179 * _3202);
              _3307 = exp2(((_3211 * _3176) + _3303) * -1.442695f);
              _3311 = exp2(((_3219 * _3176) + _3303) * -1.442695f);
              _3315 = exp2(((_3222 * _3176) + _3303) * -1.442695f);
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
            //              curve plateaus at 0.65x G/B for thick clouds instead of going black. If any
            //              condition fails the factor is exactly 1.0 and the multiplies are bit-exact
            //              no-ops.
            // [CLOUD_REDDENING] boost G/B extinction at cloud-dense steps
            float _cloudRedFactor5 = CloudReddeningFactor((_3207 * (_3118 + _3186)), _dawnDuskFactor, false);
            _3307 *= 1.f;                // R unchanged
            _3311 *= _cloudRedFactor5;   // G attenuated
            _3315 *= _cloudRedFactor5;   // B attenuated
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
              _3321 = (((_3311 * 0.33951f) + (_3307 * 0.61312f)) + (_3315 * 0.04737f)) * _2239;
              _3327 = (((_3311 * 0.91636f) + (_3307 * 0.0702f)) + (_3315 * 0.01345f)) * _2238;
              _3333 = (((_3311 * 0.10958f) + (_3307 * 0.02062f)) + (_3315 * 0.8698f)) * _2237;
              _3334 = _3199 * _2251;
              _3336 = _3207 * (_2441 + _2160);
              _3337 = _2246 * 4.901961e-06f;
              _4212 = 0.0f;
              _4213 = 0.0f;
              _4214 = 0.0f;
              _4215 = 1.0f;
              _4216 = 1.0f;
              _4217 = 1.0f;
              // RenoDX: >>> [Patch: SkySpectralRayleigh] [Version: 1.16.00]
              // Description: Selects which matrix converts this region's sun Rayleigh in-scatter
              //              radiance into the working space. The row carries two Rayleigh terms:
              //              a gather term against the view-path transmittance triple
              //              (_3307/_3311/_3315), weighted by that row's multi-gather channel
              //              (_2239/_2238/_2237), and a single-scatter term against the step
              //              transmittance triple (_3226/_3230/_3234) carrying the sun Rayleigh
              //              phase _3259. Both convert per wavelength through
              //              SKY_SPECTRAL_TO_WORKING when enabled; the density carrier _3337 rides
              //              through as the macro's phase argument, which preserves this region's
              //              scale because its betas are the raw packed ints. Beta stays native, so
              //              extinction and ozone are untouched, and the Mie, cloud and volume-fog
              //              terms of the same accumulator keep the vanilla matrix. Each Off arm is
              //              the complete native expression.
              float _rndx_sky_ray_r2_z = SKY_SCATTERING
                ? ((_2237 * SKY_RAY_INSCATTER(2, _3307, _3311, _3315, _3192, _3195, _3197, _3337)) + SKY_RAY_INSCATTER(2, _3226, _3230, _3234, _3192, _3195, _3197, (_3337 * _3259)))
                : ((_3197 * _3337) * (_3333 + (_3249 * _3259)));
              float _rndx_sky_ray_r2_y = SKY_SCATTERING
                ? ((_2238 * SKY_RAY_INSCATTER(1, _3307, _3311, _3315, _3192, _3195, _3197, _3337)) + SKY_RAY_INSCATTER(1, _3226, _3230, _3234, _3192, _3195, _3197, (_3337 * _3259)))
                : ((_3195 * _3337) * (_3327 + (_3244 * _3259)));
              float _rndx_sky_ray_r2_x = SKY_SCATTERING
                ? ((_2239 * SKY_RAY_INSCATTER(0, _3307, _3311, _3315, _3192, _3195, _3197, _3337)) + SKY_RAY_INSCATTER(0, _3226, _3230, _3234, _3192, _3195, _3197, (_3337 * _3259)))
                : ((_3192 * _3337) * (_3321 + (_3239 * _3259)));
              // RenoDX: <<< [Patch: SkySpectralRayleigh]
              // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
              // Description: Routes only the positive sun-Mie term in the recovered RGB accumulation cluster through the existing boosted phase companion; every other native term remains unchanged.
              _4218 = ((((_precomputedAmbients[48].z) * ((_3297 * _3299) + (_3252 * _3298))) + _2019) + (((((((_3301b * _3252) * _mieScatterColor.z) + (((_3297 * _3287) + (_3286 * _3249)) * _3207)) + (((_mieScatterColor.z * _3334) + _3336) * _3333)) * 25.0f) + _rndx_sky_ray_r2_z) * _precomputedAmbient7.y));
              _4219 = ((((_precomputedAmbients[48].y) * ((_3294 * _3299) + (_3251 * _3298))) + _2020) + (((((((_3301b * _3251) * _mieScatterColor.y) + (((_3294 * _3287) + (_3286 * _3244)) * _3207)) + (((_mieScatterColor.y * _3334) + _3336) * _3327)) * 25.0f) + _rndx_sky_ray_r2_y) * _precomputedAmbient7.y));
              _4220 = ((((_precomputedAmbients[48].x) * ((_3291 * _3299) + (_3250 * _3298))) + _2021) + (((((((_3301b * _3250) * _mieScatterColor.x) + (((_3291 * _3287) + (_3286 * _3239)) * _3207)) + (((_mieScatterColor.x * _3334) + _3336) * _3321)) * 25.0f) + _rndx_sky_ray_r2_x) * _precomputedAmbient7.y));
              // RenoDX: <<< [Patch: DawnDuskImprovements]
              _4221 = _3185;
              _4222 = _3182;
              _4223 = _3179;
              _4224 = _3176;
              _4225 = _247;
            } else {
              _4212 = 0.0f;
              _4213 = 0.0f;
              _4214 = 0.0f;
              _4215 = 1.0f;
              _4216 = 1.0f;
              _4217 = 1.0f;
              _4218 = _2019;
              _4219 = _2020;
              _4220 = _2021;
              _4221 = _2015;
              _4222 = _2033;
              _4223 = _2017;
              _4224 = _2018;
              _4225 = _247;
            }
          } else {
            if (_205 < _114) {
              _3426 = _viewPos.x + (_115 * _114);
              _3429 = _viewPos.y + (_116 * _114);
              _3432 = _viewPos.z + (_117 * _114);
              _3435 = _earthRadius + _262;
              _3441 = sqrt(((_265 * _265) + (_259 * _259)) + (_3435 * _3435));
              _3442 = _259 / _3441;
              _3443 = _3435 / _3441;
              _3444 = _265 / _3441;
              _3445 = dot(float3(_3442, _3443, _3444), float3(_115, _116, _117));
              _3450 = dot(float3(_115, _116, _117), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
              _3453 = _atmosphereThickness + -16.0f;
              _3457 = min(max(max((_3441 - _earthRadius), 0.01f), 16.0f), _3453);
              _3458 = _atmosphereThickness + -32.0f;
              _3459 = max(_3457, 0.0f);
              _3460 = _earthRadius * 2.0f;
              _3466 = (-0.0f - sqrt((_3459 + _3460) * _3459)) / (_3459 + _earthRadius);
              if (_3445 > _3466) {
                _3489 = ((exp2(log2(saturate((_3445 - _3466) / (1.0f - _3466))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _3489 = ((exp2(log2(saturate((_3466 - _3445) / (_3466 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              _3497 = (exp2(log2(saturate((_3457 + -16.0f) / _3458)) * 0.5f) * 0.96875f) + 0.015625f;
              _3503 = (1.0f - exp2(-1.1541561f - (dot(float3(_3442, _3443, _3444), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
              // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
              _3506 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3497, _3489, _3503), 0.0f);
              // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
              _3511 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3497, _3489, _3503), 0.0f);
              _3516 = (_3450 * _3450) + 1.0f;
              _3517 = _3516 * 0.059683103f;
              _3520 = _miePhaseConst * _miePhaseConst;
              _3535 = ((((1.0f - _3520) * 3.0f) / ((_3520 + 2.0f) * 2.0f)) * 0.07957747f) * (_3516 / exp2(log2((_3520 + 1.0f) - ((_3450 * 2.0f) * _miePhaseConst)) * 1.5f));
              // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
              // Description: Initializes the companion from the exact adjacent native phase and overwrites it with the boosted-g formula only when Dawn/Dusk Improvements is enabled.
              float _rndx_sky_mie_phase_b_1 = _3535;
              [branch]
              if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
                _rndx_sky_mie_phase_b_1 = ((((1.0f - (_boostedMieG * _boostedMieG)) * 3.0f) / (((_boostedMieG * _boostedMieG) + 2.0f) * 2.0f)) * 0.07957747f) * (_3516 / exp2(log2(((_boostedMieG * _boostedMieG) + 1.0f) - ((_3450 * 2.0f) * _boostedMieG)) * 1.5f));
              }
              // RenoDX: <<< [Patch: DawnDuskImprovements]
              // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
              _3537 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3497, _3489, _3503), 0.0f);
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
              _3542 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3497, _3489, _3503), 0.0f);
              _3546 = _earthRadius + _3429;
              _3552 = sqrt(((_3432 * _3432) + (_3426 * _3426)) + (_3546 * _3546));
              _3553 = _3426 / _3552;
              _3554 = _3546 / _3552;
              _3555 = _3432 / _3552;
              _3556 = dot(float3(_3553, _3554, _3555), float3(_115, _116, _117));
              _3560 = min(max(max((_3552 - _earthRadius), 0.01f), 16.0f), _3453);
              _3561 = max(_3560, 0.0f);
              _3567 = (-0.0f - sqrt((_3561 + _3460) * _3561)) / (_3561 + _earthRadius);
              if (_3556 > _3567) {
                _3590 = ((exp2(log2(saturate((_3556 - _3567) / (1.0f - _3567))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _3590 = ((exp2(log2(saturate((_3567 - _3556) / (_3567 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              _3598 = (exp2(log2(saturate((_3560 + -16.0f) / _3458)) * 0.5f) * 0.96875f) + 0.015625f;
              _3604 = (1.0f - exp2(-1.1541561f - (dot(float3(_3553, _3554, _3555), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
              // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
              _3605 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3598, _3590, _3604), 0.0f);
              // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
              _3609 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3598, _3590, _3604), 0.0f);
              // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
              _3613 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3598, _3590, _3604), 0.0f);
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
              _3617 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3598, _3590, _3604), 0.0f);
              _3621 = dot(float3(_259, _3435, _265), float3(_115, _116, _117));
              _3622 = _3621 / _3441;
              _3623 = _259 - _3426;
              _3624 = _262 - _3429;
              _3625 = _265 - _3432;
              _3631 = sqrt(((_3624 * _3624) + (_3623 * _3623)) + (_3625 * _3625));
              _3635 = sqrt((0.5f / _rayleighScaledHeight) * _3441);
              _3639 = sqrt((0.5f / _mieScaledHeight) * _3441);
              _3641 = (_3631 + _3621) / _3441;
              _3642 = _3635 * _3622;
              _3643 = _3641 * _3635;
              _3644 = _3639 * _3622;
              _3645 = _3641 * _3639;
              _3651 = (float)((int)((int)((int)(uint)((int)(_3642 > 0.0f))) - (int)((int)(uint)((int)(_3642 < 0.0f)))));
              _3657 = (float)((int)((int)((int)(uint)((int)(_3643 > 0.0f))) - (int)((int)(uint)((int)(_3643 < 0.0f)))));
              _3663 = (float)((int)((int)((int)(uint)((int)(_3644 > 0.0f))) - (int)((int)(uint)((int)(_3644 < 0.0f)))));
              _3669 = (float)((int)((int)((int)(uint)((int)(_3645 > 0.0f))) - (int)((int)(uint)((int)(_3645 < 0.0f)))));
              _3670 = _3642 * _3642;
              _3671 = _3644 * _3644;
              if (_3657 > _3651) {
                _3677 = exp2(_3670 * 1.442695f);
              } else {
                _3677 = 0.0f;
              }
              if (_3669 > _3663) {
                _3683 = exp2(_3671 * 1.442695f);
              } else {
                _3683 = 0.0f;
              }
              _3684 = -0.0f - _3631;
              _3688 = ((_3631 / (_3441 * 2.0f)) + _3622) * 1.442695f;
              _3689 = _3441 * 6.2831f;
              _3690 = _earthRadius - _3441;
              _3718 = (sqrt(_rayleighScaledHeight * _3689) * exp2((_3690 / _rayleighScaledHeight) * 1.442695f)) * (dot(float2((_3651 / ((abs(_3642) * 2.3193f) + sqrt((_3670 * 1.52f) + 4.0f))), ((_3657 / ((abs(_3643) * 2.3193f) + sqrt(((_3643 * _3643) * 1.52f) + 4.0f))) * exp2((_3684 / _rayleighScaledHeight) * _3688))), float2(1.0f, -1.0f)) + _3677);
              _3752 = ((((_mieAerosolDensity * 2e-05f) * (_mieAerosolAbsorption + 1.0f)) * sqrt(_mieScaledHeight * _3689)) * exp2((_3690 / _mieScaledHeight) * 1.442695f)) * (dot(float2((_3663 / ((abs(_3644) * 2.3193f) + sqrt((_3671 * 1.52f) + 4.0f))), ((_3669 / ((abs(_3645) * 2.3193f) + sqrt(((_3645 * _3645) * 1.52f) + 4.0f))) * exp2((_3684 / _mieScaledHeight) * _3688))), float2(1.0f, -1.0f)) + _3683);
              // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
              // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
              _3766 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1)) * _3718) + _3752) * -1.442695f);
              _3776 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2)) * _3718) + _3752) * -1.442695f);
              _3785 = exp2(((((((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3)) * _3718) + _3752) * -1.442695f);
              // RenoDX: <<< [Patch: SkySpectralOzone]
              // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
              // Description: Substitutes the boosted phase companion only in each positive sun single-scatter term; the second native phase occurrence in the subtracted occlusion term is intentionally preserved.
              _4212 = max(0.0f, (((((_rndx_sky_mie_phase_b_1 * _3511.z) + (_3506.z * _3517)) + _3537.z) + _3542.z) - (_3785 * ((((_3609.z * _3535) + (_3605.z * _3517)) + _3613.z) + _3617.z))));
              _4213 = max(0.0f, (((((_rndx_sky_mie_phase_b_1 * _3511.y) + (_3506.y * _3517)) + _3537.y) + _3542.y) - (_3776 * ((((_3609.y * _3535) + (_3605.y * _3517)) + _3613.y) + _3617.y))));
              _4214 = max(0.0f, (((((_rndx_sky_mie_phase_b_1 * _3511.x) + (_3506.x * _3517)) + _3537.x) + _3542.x) - (_3766 * ((((_3609.x * _3535) + (_3605.x * _3517)) + _3613.x) + _3617.x))));
              // RenoDX: <<< [Patch: DawnDuskImprovements]
              _4215 = _3785;
              _4216 = _3776;
              _4217 = _3766;
              _4218 = _2019;
              _4219 = _2020;
              _4220 = _2021;
              _4221 = _2015;
              _4222 = _2033;
              _4223 = _2017;
              _4224 = _2018;
              _4225 = _247;
            } else {
              _4212 = 0.0f;
              _4213 = 0.0f;
              _4214 = 0.0f;
              _4215 = 1.0f;
              _4216 = 1.0f;
              _4217 = 1.0f;
              _4218 = _2019;
              _4219 = _2020;
              _4220 = _2021;
              _4221 = _2015;
              _4222 = _2033;
              _4223 = _2017;
              _4224 = _2018;
              _4225 = _247;
            }
          }
          break;
        }
      } else {
        if ((_205 < _114) && (!_131)) {
          _3830 = _115 * _114;
          _3831 = _viewPos.x + _3830;
          _3832 = _116 * _114;
          _3834 = _117 * _114;
          _3835 = _viewPos.z + _3834;
          _3841 = sqrt(((_viewPos.z * _viewPos.z) + (_viewPos.x * _viewPos.x)) + (_139 * _139));
          _3842 = _viewPos.x / _3841;
          _3843 = _139 / _3841;
          _3844 = _viewPos.z / _3841;
          _3845 = dot(float3(_3842, _3843, _3844), float3(_115, _116, _117));
          _3846 = _atmosphereThickness + -16.0f;
          _3850 = min(max(max((_3841 - _earthRadius), 0.01f), 16.0f), _3846);
          _3851 = _atmosphereThickness + -32.0f;
          _3852 = max(_3850, 0.0f);
          _3853 = _earthRadius * 2.0f;
          _3859 = (-0.0f - sqrt((_3852 + _3853) * _3852)) / (_3852 + _earthRadius);
          if (_3845 > _3859) {
            _3882 = ((exp2(log2(saturate((_3845 - _3859) / (1.0f - _3859))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _3882 = ((exp2(log2(saturate((_3859 - _3845) / (_3859 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _3890 = (exp2(log2(saturate((_3850 + -16.0f) / _3851)) * 0.5f) * 0.96875f) + 0.015625f;
          _3896 = (1.0f - exp2(-1.1541561f - (dot(float3(_3842, _3843, _3844), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _3899 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3890, _3882, _3896), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _3904 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3890, _3882, _3896), 0.0f);
          _3908 = _169 * 0.059683103f;
          _3911 = _miePhaseConst * _miePhaseConst;
          _3925 = ((((1.0f - _3911) * 3.0f) / ((_3911 + 2.0f) * 2.0f)) * 0.07957747f) * (_169 / exp2(log2((_3911 + 1.0f) - (_miePhaseConst * _170)) * 1.5f));
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _3927 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3890, _3882, _3896), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _3932 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3890, _3882, _3896), 0.0f);
          _3936 = (_viewPos.y + _3832) + _earthRadius;
          _3942 = sqrt(((_3835 * _3835) + (_3831 * _3831)) + (_3936 * _3936));
          _3943 = _3831 / _3942;
          _3944 = _3936 / _3942;
          _3945 = _3835 / _3942;
          _3946 = dot(float3(_3943, _3944, _3945), float3(_115, _116, _117));
          _3950 = min(max(max((_3942 - _earthRadius), 0.01f), 16.0f), _3846);
          _3951 = max(_3950, 0.0f);
          _3957 = (-0.0f - sqrt((_3951 + _3853) * _3951)) / (_3951 + _earthRadius);
          if (_3946 > _3957) {
            _3980 = ((exp2(log2(saturate((_3946 - _3957) / (1.0f - _3957))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _3980 = ((exp2(log2(saturate((_3957 - _3946) / (_3957 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _3988 = (exp2(log2(saturate((_3950 + -16.0f) / _3851)) * 0.5f) * 0.96875f) + 0.015625f;
          _3994 = (1.0f - exp2(-1.1541561f - (dot(float3(_3943, _3944, _3945), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _3995 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3988, _3980, _3994), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _3999 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3988, _3980, _3994), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _4003 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3988, _3980, _3994), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _4007 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3988, _3980, _3994), 0.0f);
          _4011 = _143 / _3841;
          _4017 = sqrt(((_3832 * _3832) + (_3830 * _3830)) + (_3834 * _3834));
          _4021 = sqrt((0.5f / _rayleighScaledHeight) * _3841);
          _4025 = sqrt((0.5f / _mieScaledHeight) * _3841);
          _4027 = (_4017 + _143) / _3841;
          _4028 = _4021 * _4011;
          _4029 = _4027 * _4021;
          _4030 = _4025 * _4011;
          _4031 = _4027 * _4025;
          _4037 = (float)((int)((int)((int)(uint)((int)(_4028 > 0.0f))) - (int)((int)(uint)((int)(_4028 < 0.0f)))));
          _4043 = (float)((int)((int)((int)(uint)((int)(_4029 > 0.0f))) - (int)((int)(uint)((int)(_4029 < 0.0f)))));
          _4049 = (float)((int)((int)((int)(uint)((int)(_4030 > 0.0f))) - (int)((int)(uint)((int)(_4030 < 0.0f)))));
          _4055 = (float)((int)((int)((int)(uint)((int)(_4031 > 0.0f))) - (int)((int)(uint)((int)(_4031 < 0.0f)))));
          _4056 = _4028 * _4028;
          _4057 = _4030 * _4030;
          if (_4043 > _4037) {
            _4063 = exp2(_4056 * 1.442695f);
          } else {
            _4063 = 0.0f;
          }
          if (_4055 > _4049) {
            _4069 = exp2(_4057 * 1.442695f);
          } else {
            _4069 = 0.0f;
          }
          _4070 = -0.0f - _4017;
          _4074 = ((_4017 / (_3841 * 2.0f)) + _4011) * 1.442695f;
          _4075 = _3841 * 6.2831f;
          _4076 = _earthRadius - _3841;
          _4104 = (sqrt(_4075 * _rayleighScaledHeight) * exp2((_4076 / _rayleighScaledHeight) * 1.442695f)) * (dot(float2((_4037 / ((abs(_4028) * 2.3193f) + sqrt((_4056 * 1.52f) + 4.0f))), ((_4043 / ((abs(_4029) * 2.3193f) + sqrt(((_4029 * _4029) * 1.52f) + 4.0f))) * exp2((_4070 / _rayleighScaledHeight) * _4074))), float2(1.0f, -1.0f)) + _4063);
          _4138 = ((((_mieAerosolDensity * 2e-05f) * (_mieAerosolAbsorption + 1.0f)) * sqrt(_mieScaledHeight * _4075)) * exp2((_4076 / _mieScaledHeight) * 1.442695f)) * (dot(float2((_4049 / ((abs(_4030) * 2.3193f) + sqrt((_4057 * 1.52f) + 4.0f))), ((_4055 / ((abs(_4031) * 2.3193f) + sqrt(((_4031 * _4031) * 1.52f) + 4.0f))) * exp2((_4070 / _mieScaledHeight) * _4074))), float2(1.0f, -1.0f)) + _4069);
          // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
          // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
          _4152 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1)) * _4104) + _4138) * -1.442695f);
          _4162 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2)) * _4104) + _4138) * -1.442695f);
          _4171 = exp2(((((((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3)) * _4104) + _4138) * -1.442695f);
          // RenoDX: <<< [Patch: SkySpectralOzone]
          _4212 = max(0.0f, (((((_3925 * _3904.z) + (_3899.z * _3908)) + _3927.z) + _3932.z) - (_4171 * ((((_3999.z * _3925) + (_3995.z * _3908)) + _4003.z) + _4007.z))));
          _4213 = max(0.0f, (((((_3925 * _3904.y) + (_3899.y * _3908)) + _3927.y) + _3932.y) - (_4162 * ((((_3999.y * _3925) + (_3995.y * _3908)) + _4003.y) + _4007.y))));
          _4214 = max(0.0f, (((((_3925 * _3904.x) + (_3899.x * _3908)) + _3927.x) + _3932.x) - (_4152 * ((((_3999.x * _3925) + (_3995.x * _3908)) + _4003.x) + _4007.x))));
          _4215 = _4171;
          _4216 = _4162;
          _4217 = _4152;
          _4218 = 0.0f;
          _4219 = 0.0f;
          _4220 = 0.0f;
          _4221 = 0.0f;
          _4222 = 0.0f;
          _4223 = 0.0f;
          _4224 = 0.0f;
          _4225 = 0.0f;
        } else {
          _4212 = 0.0f;
          _4213 = 0.0f;
          _4214 = 0.0f;
          _4215 = 1.0f;
          _4216 = 1.0f;
          _4217 = 1.0f;
          _4218 = 0.0f;
          _4219 = 0.0f;
          _4220 = 0.0f;
          _4221 = 0.0f;
          _4222 = 0.0f;
          _4223 = 0.0f;
          _4224 = 0.0f;
          _4225 = 0.0f;
        }
      }
      if (_4225 < _206) {
        _4231 = _viewPos.x + (_206 * _115);
        _4234 = _viewPos.z + (_206 * _117);
        _4238 = min((_distanceScale * _4225), _206);
        _4240 = (_4238 * _115) + _viewPos.x;
        _4242 = (_4238 * _117) + _viewPos.z;
        _4246 = _earthRadius + _viewPos.y;
        _4248 = _4246 + (_4238 * _116);
        _4254 = sqrt(((_4242 * _4242) + (_4240 * _4240)) + (_4248 * _4248));
        _4255 = _4240 / _4254;
        _4256 = _4248 / _4254;
        _4257 = _4242 / _4254;
        _4258 = dot(float3(_4255, _4256, _4257), float3(_115, _116, _117));
        _4263 = dot(float3(_115, _116, _117), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
        _4266 = _atmosphereThickness + -16.0f;
        _4270 = min(max(max((_4254 - _earthRadius), 0.01f), 16.0f), _4266);
        _4271 = _atmosphereThickness + -32.0f;
        _4272 = max(_4270, 0.0f);
        _4273 = _earthRadius * 2.0f;
        _4279 = (-0.0f - sqrt((_4272 + _4273) * _4272)) / (_4272 + _earthRadius);
        if (_4258 > _4279) {
          _4302 = ((exp2(log2(saturate((_4258 - _4279) / (1.0f - _4279))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _4302 = ((exp2(log2(saturate((_4279 - _4258) / (_4279 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        _4310 = (exp2(log2(saturate((_4270 + -16.0f) / _4271)) * 0.5f) * 0.96875f) + 0.015625f;
        _4316 = (1.0f - exp2(-1.1541561f - (dot(float3(_4255, _4256, _4257), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
        _4319 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4310, _4302, _4316), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
        _4324 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4310, _4302, _4316), 0.0f);
        _4329 = (_4263 * _4263) + 1.0f;
        _4330 = _4329 * 0.059683103f;
        _4333 = _miePhaseConst * _miePhaseConst;
        _4348 = ((((1.0f - _4333) * 3.0f) / ((_4333 + 2.0f) * 2.0f)) * 0.07957747f) * (_4329 / exp2(log2((_4333 + 1.0f) - ((_4263 * 2.0f) * _miePhaseConst)) * 1.5f));
        // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
        // Description: Initializes the companion from the exact adjacent native phase and overwrites it with the boosted-g formula only when Dawn/Dusk Improvements is enabled.
        float _rndx_sky_mie_phase_b_2 = _4348;
        [branch]
        if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
          _rndx_sky_mie_phase_b_2 = ((((1.0f - (_boostedMieG * _boostedMieG)) * 3.0f) / (((_boostedMieG * _boostedMieG) + 2.0f) * 2.0f)) * 0.07957747f) * (_4329 / exp2(log2(((_boostedMieG * _boostedMieG) + 1.0f) - ((_4263 * 2.0f) * _boostedMieG)) * 1.5f));
        }
        // RenoDX: <<< [Patch: DawnDuskImprovements]
        // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
        _4350 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4310, _4302, _4316), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
        _4355 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4310, _4302, _4316), 0.0f);
        _4360 = _4246 + (_206 * _116);
        _4366 = sqrt(((_4234 * _4234) + (_4231 * _4231)) + (_4360 * _4360));
        _4367 = _4231 / _4366;
        _4368 = _4360 / _4366;
        _4369 = _4234 / _4366;
        _4370 = dot(float3(_4367, _4368, _4369), float3(_115, _116, _117));
        _4374 = min(max(max((_4366 - _earthRadius), 0.01f), 16.0f), _4266);
        _4375 = max(_4374, 0.0f);
        _4381 = (-0.0f - sqrt((_4375 + _4273) * _4375)) / (_4375 + _earthRadius);
        if (_4370 > _4381) {
          _4404 = ((exp2(log2(saturate((_4370 - _4381) / (1.0f - _4381))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _4404 = ((exp2(log2(saturate((_4381 - _4370) / (_4381 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        _4412 = (exp2(log2(saturate((_4374 + -16.0f) / _4271)) * 0.5f) * 0.96875f) + 0.015625f;
        _4418 = (1.0f - exp2(-1.1541561f - (dot(float3(_4367, _4368, _4369), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
        _4419 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4412, _4404, _4418), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
        _4423 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4412, _4404, _4418), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
        _4427 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4412, _4404, _4418), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
        _4431 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4412, _4404, _4418), 0.0f);
        _4435 = dot(float3(_4240, _4248, _4242), float3(_115, _116, _117));
        _4436 = _4435 / _4254;
        _4437 = _4238 - _206;
        _4438 = _4437 * _115;
        _4439 = _4437 * _116;
        _4440 = _4437 * _117;
        _4446 = sqrt(((_4438 * _4438) + (_4439 * _4439)) + (_4440 * _4440));
        _4450 = sqrt((0.5f / _rayleighScaledHeight) * _4254);
        _4454 = sqrt((0.5f / _mieScaledHeight) * _4254);
        _4456 = (_4446 + _4435) / _4254;
        _4457 = _4450 * _4436;
        _4458 = _4456 * _4450;
        _4459 = _4454 * _4436;
        _4460 = _4456 * _4454;
        _4466 = (float)((int)((int)((int)(uint)((int)(_4457 > 0.0f))) - (int)((int)(uint)((int)(_4457 < 0.0f)))));
        _4472 = (float)((int)((int)((int)(uint)((int)(_4458 > 0.0f))) - (int)((int)(uint)((int)(_4458 < 0.0f)))));
        _4478 = (float)((int)((int)((int)(uint)((int)(_4459 > 0.0f))) - (int)((int)(uint)((int)(_4459 < 0.0f)))));
        _4484 = (float)((int)((int)((int)(uint)((int)(_4460 > 0.0f))) - (int)((int)(uint)((int)(_4460 < 0.0f)))));
        _4485 = _4457 * _4457;
        _4486 = _4459 * _4459;
        if (_4472 > _4466) {
          _4492 = exp2(_4485 * 1.442695f);
        } else {
          _4492 = 0.0f;
        }
        if (_4484 > _4478) {
          _4498 = exp2(_4486 * 1.442695f);
        } else {
          _4498 = 0.0f;
        }
        _4499 = -0.0f - _4446;
        _4503 = ((_4446 / (_4254 * 2.0f)) + _4436) * 1.442695f;
        _4504 = _4254 * 6.2831f;
        _4505 = _earthRadius - _4254;
        _4533 = (sqrt(_rayleighScaledHeight * _4504) * exp2((_4505 / _rayleighScaledHeight) * 1.442695f)) * (dot(float2((_4466 / ((abs(_4457) * 2.3193f) + sqrt((_4485 * 1.52f) + 4.0f))), ((_4472 / ((abs(_4458) * 2.3193f) + sqrt(((_4458 * _4458) * 1.52f) + 4.0f))) * exp2((_4499 / _rayleighScaledHeight) * _4503))), float2(1.0f, -1.0f)) + _4492);
        _4567 = ((((_mieAerosolDensity * 2e-05f) * (_mieAerosolAbsorption + 1.0f)) * sqrt(_mieScaledHeight * _4504)) * exp2((_4505 / _mieScaledHeight) * 1.442695f)) * (dot(float2((_4478 / ((abs(_4459) * 2.3193f) + sqrt((_4486 * 1.52f) + 4.0f))), ((_4484 / ((abs(_4460) * 2.3193f) + sqrt(((_4460 * _4460) * 1.52f) + 4.0f))) * exp2((_4499 / _mieScaledHeight) * _4503))), float2(1.0f, -1.0f)) + _4498);
        // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
        // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
        _4580 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1)) * _4533) + _4567) * -1.442695f);
        _4590 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2)) * _4533) + _4567) * -1.442695f);
        _4599 = exp2(((((((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3)) * _4533) + _4567) * -1.442695f);
        // RenoDX: <<< [Patch: SkySpectralOzone]
        // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
        // Description: Substitutes the boosted phase companion only in each positive sun single-scatter term; the second native phase occurrence in the subtracted occlusion term is intentionally preserved.
        _4640 = max(0.0f, (((((_rndx_sky_mie_phase_b_2 * _4324.z) + (_4319.z * _4330)) + _4350.z) + _4355.z) - (_4599 * ((((_4423.z * _4348) + (_4419.z * _4330)) + _4427.z) + _4431.z))));
        _4641 = max(0.0f, (((((_rndx_sky_mie_phase_b_2 * _4324.y) + (_4319.y * _4330)) + _4350.y) + _4355.y) - (_4590 * ((((_4423.y * _4348) + (_4419.y * _4330)) + _4427.y) + _4431.y))));
        _4642 = max(0.0f, (((((_rndx_sky_mie_phase_b_2 * _4324.x) + (_4319.x * _4330)) + _4350.x) + _4355.x) - (_4580 * ((((_4423.x * _4348) + (_4419.x * _4330)) + _4427.x) + _4431.x))));
        // RenoDX: <<< [Patch: DawnDuskImprovements]
        _4643 = _4599;
        _4644 = _4590;
        _4645 = _4580;
      } else {
        _4640 = _4212;
        _4641 = _4213;
        _4642 = _4214;
        _4643 = _4215;
        _4644 = _4216;
        _4645 = _4217;
      }
      _4660 = (((_4223 * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f)) + ((_cloudScatteringCoefficient / _distanceScale) * (_4222 + _4221));
      // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
      // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
      _4673 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1)) * _4224) + _4660) * -1.442695f);
      _4683 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2)) * _4224) + _4660) * -1.442695f);
      _4692 = exp2(((((((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3)) * _4224) + _4660) * -1.442695f);
      // RenoDX: <<< [Patch: SkySpectralOzone]
      _4697 = ((_4673 * _4642) * _precomputedAmbient7.y) + _4220;
      _4700 = ((_4683 * _4641) * _precomputedAmbient7.y) + _4219;
      _4703 = ((_4692 * _4640) * _precomputedAmbient7.y) + _4218;
      _4704 = _4673 * _4645;
      _4705 = _4683 * _4644;
      _4706 = _4692 * _4643;
      if (!((_atmosphereSeaBaseline - _viewPos.y) <= 0.0f)) {
        _4719 = saturate(max(0.0f, ((_atmosphereSeaBaseline - (_116 * _114)) - _viewPos.y)) * 2.0f);  // [sem: expr_sat]
        _4728 = (((1.0f - ((_4719 * _4719) * (3.0f - (_4719 * 2.0f)))) * 0.98f) + 0.02f);
      } else {
        _4728 = 1.0f;
      }
      _4763 = (_4728 * (((_4700 * 0.10958f) + (_4697 * 0.02062f)) + (_4703 * 0.8698f)));
      _4764 = (_4728 * (((_4700 * 0.91636f) + (_4697 * 0.0702f)) + (_4703 * 0.01345f)));
      _4765 = (_4728 * (((_4700 * 0.33951f) + (_4697 * 0.61312f)) + (_4703 * 0.04737f)));
      _4766 = (((_4705 * 0.10958f) + (_4704 * 0.02062f)) + (_4706 * 0.8698f));
      _4767 = (((_4705 * 0.91636f) + (_4704 * 0.0702f)) + (_4706 * 0.01345f));
      _4768 = (((_4705 * 0.33951f) + (_4704 * 0.61312f)) + (_4706 * 0.04737f));
    } else {
      _4763 = 0.0f;
      _4764 = 0.0f;
      _4765 = 0.0f;
      _4766 = 1.0f;
      _4767 = 1.0f;
      _4768 = 1.0f;
    }
  } else {
    _4763 = 0.0f;
    _4764 = 0.0f;
    _4765 = 0.0f;
    _4766 = 1.0f;
    _4767 = 1.0f;
    _4768 = 1.0f;
  }
  // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
  // Description: Applies a directional warm/cool hue bias to the final inscatter during the
  //              dawn/dusk window: the sun-facing and away-from-sun hemispheres get distinct horizon
  //              hues (vanilla east and west horizons look nearly identical at sunrise and sunset).
  //              Bias colours come from WeatherInscatterBias via InscatterColorBias
  //              (sky_dawn_dusk_common.hlsli / sky_weather_common.hlsli); when Dynamic Dawn/Dusk
  //              Hues is additionally active the warm tint shifts per day cycle. Gated by
  //              DAWN_DUSK_IMPROVEMENTS (UI "Dawn/Dusk Improvements (WIP)", default On per the
  //              addon.cpp settings list); when Off (or outside the window) the helper returns
  //              (1,1,1) and the multiplies are bit-exact no-ops.
  // [DAWN_DUSK] Inscatter colour bias
  float _viewSunDot = dot(float3(_115, _116, _117), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
  float3 _inscatterBias = InscatterColorBias(_viewSunDot, _dawnDuskFactor, float3(_4768, _4767, _4766));
  _4765 *= _inscatterBias.x;
  _4764 *= _inscatterBias.y;
  _4763 *= _inscatterBias.z;
  // RenoDX: <<< [Patch: DawnDuskImprovements]
  // RenoDX: >>> [Patch: SnowFogInscatterClamp] [Version: 1.13.00]
  // Description: Clamps the final inscatter luminance to (1 - extinction luminance) * K before the
  //              UAV write, so Mie forward scattering cannot drive massive sky brightness swings in
  //              dense fog and snow weather (vanilla lets inscatter grow unbounded relative to
  //              extinction, producing pulsing whiteouts as the camera or sun angle moves). K = 500
  //              in this visible-sky shader and K = 100 in the offscreen sky probe shader
  //              (RenderAtmosphericScatteringOffscreenSky_0xE07FF642, which feeds the GI cubemap and
  //              needs a tighter budget); the two coefficients are a matched pair and must be
  //              retuned together. Gated by SNOW_FOG_FIX (UI "Snow / Fog Lighting Fixes (WIP)",
  //              default On per the addon.cpp settings list); when Off the branch is skipped
  //              entirely and the output is bit-exact vanilla.
  //              Game version 1.16.00 added a below-sea-baseline inscatter suppression
  //              (_atmosphereSeaBaseline) that scales inscatter down to 0.02x but leaves extinction
  //              alone, so below that baseline the clamp is measuring suppressed inscatter against
  //              an unsuppressed threshold and its headroom widens by up to 50x. It still fires if
  //              inscatter is high enough; it is not dead. This is deliberate and believed harmless:
  //              fog and snow weather are not expected below the baseline, and vanilla already
  //              crushes inscatter there. If gameplay evidence ever shows a playable fog region
  //              below the baseline, scale the threshold by the same factor — hoist _4728 above the
  //              suppression branch (both arms already assign it) and apply it to _sky_max_insc.
  //              The ceiling is floored at zero. The extinction luminance can exceed 1.0 for
  //              near-unity transmittance, so an unfloored (1 - lum) would be negative and would flip
  //              positive inscatter to negative instead of capping it. The cause is not rounding: the
  //              vanilla BT.709-to-BT.2020 matrix applied just above has an un-normalized green row
  //              (its coefficients sum to 1.0000100135803223), so with all three transmittances at 1.0
  //              the luminance reaches about 1.0000072 - roughly 60 ULP past 1, a property of the
  //              constants rather than of float error. In every path traced so far the inscatter is
  //              simultaneously zero there, so the pre-existing (_sky_insc_lum > 0.0001f) test already
  //              suppressed the clamp and no artifact has been observed; this floor is defensive. It
  //              does change one case: if the luminance is NaN the comparison chain now drives the
  //              scale to zero rather than leaving inscatter untouched.
  // [SNOW_FOG_FIX]
  if (SNOW_FOG_FIX == 1.f) {
    float _sky_ext_lum = dot(float3(_4768, _4767, _4766), float3(0.2126f, 0.7152f, 0.0722f));
    float _sky_max_insc = max(0.0f, 1.0f - _sky_ext_lum) * 500.0f;
    float _sky_insc_lum = dot(float3(_4765, _4764, _4763), float3(0.2126f, 0.7152f, 0.0722f));
    if (_sky_insc_lum > _sky_max_insc && _sky_insc_lum > 0.0001f) {
      float _sky_clamp_scale = _sky_max_insc / _sky_insc_lum;
      _4765 *= _sky_clamp_scale;
      _4764 *= _sky_clamp_scale;
      _4763 *= _sky_clamp_scale;
    }
  }
  // RenoDX: <<< [Patch: SnowFogInscatterClamp]
  // RenoDX: >>> [Patch: NightSkyAttenuation] [Version: 1.13.00]
  // Description: Multiplies the final inscatter RGB by a sun-elevation brightness ramp as the last
  //              step before the UAV write (extinction untouched): 10% brightness while the sun is
  //              below ~+5 deg (0.087 rad), ramping to 100% by +10 deg (0.17 rad), unity above
  //              (NightSkyAttenuation, sky_dawn_dusk_common.hlsli). Vanilla scattering brightens the
  //              sky far too early (~3am-4:30am) and keeps it bright well after sunset; this keeps
  //              nights genuinely dark. Gated by NIGHT_SKY_ATTENUATION (UI "Darker Nights/Dawn/Dusk
  //              (WIP)", default On per the addon.cpp settings list); when Off the helper returns
  //              exactly 1.0 and the multiplies are bit-exact no-ops.
  // [NIGHT_SKY_ATTENUATION] Reduce sky brightness when sun is below horizon
  {
    float _nightSkyAtten = NightSkyAttenuation(_sunDirection.y);
    _4765 *= _nightSkyAtten;
    _4764 *= _nightSkyAtten;
    _4763 *= _nightSkyAtten;
  }
  // RenoDX: <<< [Patch: NightSkyAttenuation]
  __3__38__0__1__g_texSkyInscatterUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(_4765, _4764, _4763, _53.x);
  __3__38__0__1__g_texSkyExtinctionUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(_4768, _4767, _4766, 0.0f);
}
