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

RWStructuredBuffer<float4> __3__39__0__1__g_texPrecomputedAmbientUAV : register(u2, space39);

RWStructuredBuffer<float4> __3__39__0__1__g_precomputedAmbientCacheUAV : register(u3, space39);

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

groupshared float _global_0[256];
groupshared float _global_1[256];
groupshared float _global_2[256];
groupshared float _global_3[768];
groupshared float _global_4[1024];
groupshared float _global_5[1024];
groupshared float _global_6[1024];
groupshared float _global_7[1024];
groupshared float _global_8[1024];
groupshared float _global_9[1024];

[numthreads(256, 1, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  int _33;
  int _38;
  int _43;
  int _48;
  float _55;
  float _56;
  float _58;
  float _59;
  float _61;
  float _63;
  float _65;
  float _66;
  float _72;
  bool _75;
  uint _78;
  float _107;
  float _108;
  float _109;
  float _110;
  float _111;
  float _112;
  float _113;
  float _114;
  float _115;
  float _116;
  int _117;
  int _118;
  float _119;
  float _210;
  float _233;
  float _341;
  float _394;
  int _395;
  int _396;
  float _397;
  float _398;
  float _399;
  float _400;
  float _401;
  float _402;
  float _403;
  float _404;
  float _405;
  float _406;
  float _407;
  float _408;
  float _409;
  float _410;
  int _411;
  float _616;
  float _628;
  float _691;
  float _737;
  float _756;
  float _757;
  float _758;
  float _759;
  float _760;
  float _761;
  float _892;
  float _902;
  bool _981;
  float _1015;
  float _1016;
  float _1017;
  float _1071;
  int _1083;
  float _1084;
  float _1085;
  float _1086;
  float _1087;
  float _1088;
  float _1089;
  float _1090;
  float _1091;
  float _1265;
  float _1266;
  float _1293;
  float _1479;
  float _1491;
  float _1618;
  float _1628;
  float _1642;
  float _1643;
  float _1681;
  float _1719;
  float _2092;
  float _2093;
  float _2094;
  float _2095;
  float _2096;
  float _2097;
  bool _2119;
  int _2127;
  int _2128;
  float _2129;
  float _2130;
  float _2131;
  float _2132;
  float _2133;
  float _2134;
  float _2135;
  float _2136;
  float _2137;
  float _2138;
  float _2139;
  float _2140;
  float _2141;
  float _2142;
  int _2143;
  int _2144;
  float _2145;
  float _2154;
  int _2155;
  float _2156;
  float _2157;
  float _2158;
  float _2159;
  float _2160;
  float _2161;
  float _2162;
  float _2163;
  float _2164;
  float _2165;
  float _2166;
  float _2167;
  float _2168;
  float _2169;
  float _2170;
  int _2171;
  float _2190;
  float _2201;
  float _2253;
  float _2350;
  float _2397;
  float _2416;
  float _2417;
  float _2418;
  float _2419;
  float _2420;
  float _2421;
  float _2558;
  float _2570;
  bool _2635;
  float _2669;
  float _2670;
  float _2671;
  float _2727;
  int _2739;
  float _2740;
  float _2741;
  float _2742;
  float _2743;
  float _2744;
  float _2745;
  float _2746;
  float _2747;
  float _2921;
  float _2922;
  float _2949;
  float _3135;
  float _3147;
  float _3274;
  float _3284;
  float _3298;
  float _3299;
  float _3337;
  float _3375;
  float _3657;
  float _3658;
  float _3659;
  float _3660;
  float _3661;
  float _3662;
  float _3663;
  float _3664;
  float _3665;
  float _3666;
  float _3743;
  float _3845;
  float _3933;
  float _3939;
  float _4055;
  float _4109;
  float _4136;
  float _4141;
  float _4249;
  float _4250;
  float _4251;
  float _4252;
  float _4253;
  float _4254;
  float _4348;
  float _4425;
  float _4524;
  float _4612;
  float _4618;
  float _4709;
  float _4761;
  float _4788;
  float _4793;
  float _4901;
  float _4902;
  float _4903;
  float _4904;
  float _4905;
  float _4906;
  float _4971;
  float _4991;
  float _4992;
  float _4993;
  float _4994;
  float _4995;
  float _4996;
  float _4997;
  float _4998;
  float _4999;
  float _5000;
  float _5001;
  float _5002;
  float _5003;
  int _5004;
  float _5005;
  float _5106;
  float _5129;
  float _5237;
  float _5284;
  float _5285;
  float _5286;
  float _5287;
  int _5288;
  float _5289;
  int _5290;
  int _5291;
  float _5292;
  float _5293;
  float _5294;
  float _5295;
  float _5296;
  float _5297;
  float _5298;
  float _5299;
  float _5300;
  float _5301;
  float _5506;
  float _5518;
  float _5581;
  float _5627;
  float _5646;
  float _5647;
  float _5648;
  float _5649;
  float _5650;
  float _5651;
  float _5782;
  float _5792;
  bool _5871;
  float _5905;
  float _5906;
  float _5907;
  float _5961;
  int _5973;
  float _5974;
  float _5975;
  float _5976;
  float _5977;
  float _5978;
  float _5979;
  float _5980;
  float _5981;
  float _6155;
  float _6156;
  float _6183;
  float _6369;
  float _6381;
  float _6508;
  float _6518;
  float _6532;
  float _6533;
  float _6571;
  float _6609;
  float _6982;
  float _6983;
  float _6984;
  float _6985;
  float _6986;
  float _6987;
  bool _7003;
  int _7017;
  float _7018;
  float _7019;
  float _7020;
  float _7021;
  int _7022;
  int _7023;
  float _7024;
  int _7025;
  float _7026;
  float _7027;
  float _7028;
  float _7029;
  float _7030;
  float _7031;
  float _7032;
  float _7033;
  float _7034;
  float _7035;
  float _7041;
  float _7042;
  float _7043;
  float _7044;
  int _7045;
  float _7046;
  float _7047;
  float _7048;
  float _7049;
  float _7050;
  float _7051;
  float _7052;
  float _7053;
  float _7054;
  float _7055;
  float _7073;
  float _7084;
  float _7136;
  float _7233;
  float _7280;
  float _7299;
  float _7300;
  float _7301;
  float _7302;
  float _7303;
  float _7304;
  float _7441;
  float _7453;
  bool _7518;
  float _7552;
  float _7553;
  float _7554;
  float _7610;
  int _7622;
  float _7623;
  float _7624;
  float _7625;
  float _7626;
  float _7627;
  float _7628;
  float _7629;
  float _7630;
  float _7804;
  float _7805;
  float _7832;
  float _8018;
  float _8030;
  float _8157;
  float _8167;
  float _8181;
  float _8182;
  float _8220;
  float _8258;
  float _8540;
  float _8541;
  float _8542;
  float _8543;
  float _8544;
  float _8545;
  float _8546;
  float _8547;
  float _8548;
  float _8549;
  float _8550;
  float _8627;
  float _8729;
  float _8817;
  float _8823;
  float _8939;
  float _8993;
  float _9020;
  float _9025;
  float _9133;
  float _9134;
  float _9135;
  float _9136;
  float _9137;
  float _9138;
  float _9228;
  float _9248;
  float _9249;
  float _9250;
  float _10566;
  float _10567;
  float _10568;
  float _10601;
  float _10602;
  float _10603;
  float _10683;
  float _10777;
  float _10789;
  float _10811;
  float _10826;
  float _12200;
  float _12201;
  float _12202;
  float _12235;
  float _12236;
  float _12237;
  float _12317;
  float _12411;
  float _12423;
  float _12445;
  float _12460;
  uint _81;
  float _85;
  float _88;
  float _89;
  float _90;
  float _91;
  float _94;
  float _95;
  float _96;
  float _97;
  float _99;
  float _100;
  float _101;
  float _102;
  float _124;
  float _127;
  float _128;
  float _132;
  float _133;
  float _134;
  float _135;
  float _139;
  float _144;
  float _145;
  float _151;
  float _163;
  float _164;
  float _170;
  float _172;
  float _178;
  float _179;
  float _187;
  float _195;
  float _211;
  float _212;
  float _213;
  float _214;
  float _220;
  bool _221;
  float _235;
  float _242;
  float _252;
  float _258;
  float _263;
  float _268;
  float _286;
  float _287;
  float _290;
  float _292;
  float _293;
  float _299;
  float _307;
  float _309;
  float _310;
  float _311;
  float _317;
  float _325;
  float _329;
  float _344;
  float _357;
  float _358;
  float _360;
  float _361;
  float _368;
  float _376;
  float _379;
  bool _380;
  float _387;
  uint _390;
  float _412;
  float _426;
  float _427;
  float _429;
  float _431;
  float _434;
  float _435;
  float _438;
  float _439;
  float _441;
  float _442;
  float _444;
  float4 _466;
  float _470;
  float _471;
  float _473;
  float _474;
  float _475;
  float _479;
  float _486;
  float _489;
  float _492;
  float _495;
  float _506;
  float _520;
  float _521;
  float _522;
  float _523;
  float _524;
  float _528;
  float _532;
  float _533;
  float _538;
  float _575;
  bool _618;
  bool _630;
  int _639;
  uint _640;
  float _641;
  float _642;
  float _643;
  float _644;
  float _648;
  float _649;
  float _650;
  float _651;
  float _652;
  float _655;
  float _660;
  float _661;
  float _668;
  bool _669;
  float _700;
  float4 _712;
  float4 _748;
  float _762;
  float _763;
  float _768;
  float _773;
  float _776;
  float _777;
  float _781;
  float _782;
  float _785;
  float _799;
  float _800;
  float _801;
  float _802;
  float _803;
  float _811;
  float _812;
  float _817;
  float _851;
  float _903;
  float _906;
  float _910;
  float _912;
  float _914;
  float _915;
  float _916;
  float _917;
  float _927;
  float _930;
  float _969;
  float _970;
  float _972;
  float _985;
  float _987;
  float _990;
  bool _991;
  float _1000;
  float _1003;
  float _1009;
  float _1019;
  float _1020;
  float _1022;
  float _1040;
  float _1046;
  float _1047;
  float _1050;
  float _1058;
  float _1072;
  float _1073;
  float _1074;
  float _1075;
  float _1094;
  float _1096;
  float _1100;
  float _1107;
  float _1110;
  float _1113;
  float _1116;
  float _1127;
  float _1141;
  float _1142;
  float _1143;
  float _1144;
  float _1145;
  float _1149;
  float _1153;
  float _1154;
  float _1159;
  float _1218;
  float _1249;
  float _1252;
  float _1280;
  float _1281;
  float _1282;
  float _1283;
  float _1284;
  float _1285;
  float _1286;
  float _1287;
  int _1288;
  float _1294;
  float _1297;
  float _1299;
  float _1300;
  float _1301;
  float _1303;
  float _1314;
  float4 _1340;
  float _1342;
  float _1343;
  float _1344;
  float _1347;
  float _1352;
  float _1355;
  float _1358;
  float _1361;
  float _1362;
  float _1369;
  float _1383;
  float _1384;
  float _1385;
  float _1386;
  float _1387;
  float _1391;
  float _1395;
  float _1396;
  float _1401;
  float _1438;
  bool _1481;
  float _1492;
  float _1493;
  float _1496;
  float _1501;
  float _1508;
  float _1522;
  float _1523;
  float _1524;
  float _1525;
  float _1526;
  float _1530;
  float _1534;
  float _1535;
  float _1540;
  float _1577;
  float _1644;
  float _1648;
  float _1649;
  float _1658;
  float _1690;
  float2 _1693;
  float _1696;
  float2 _1720;
  float _1728;
  float _1729;
  float _1732;
  float _1735;
  float _1738;
  float _1741;
  float _1742;
  float _1743;
  float _1748;
  float _1751;
  float _1753;
  float _1755;
  float _1758;
  float _1760;
  float _1765;
  float _1767;
  float _1771;
  float _1772;
  float _1773;
  float _1776;
  float _1777;
  float _1780;
  float _1781;
  float _1784;
  float _1787;
  float _1790;
  float _1791;
  float _1802;
  float _1803;
  float _1805;
  float _1806;
  float _1807;
  float _1808;
  float _1811;
  float _1815;
  float _1819;
  float _1823;
  float _1827;
  float _1832;
  float _1837;
  float _1842;
  float _1844;
  float _1846;
  float _1863;
  float _1865;
  float _1881;
  float _1883;
  float _1899;
  float _1900;
  float _1902;
  float _1903;
  float _1904;
  float _1905;
  float _1906;
  float _1909;
  float _1912;
  float _1915;
  float _1917;
  float _1919;
  float _1920;
  float _1935;
  float _1941;
  float _1960;
  float _1978;
  float _1996;
  float _2000;
  float _2001;
  float _2004;
  float _2005;
  float _2008;
  float _2011;
  float _2014;
  float _2021;
  float _2030;
  float _2031;
  float _2032;
  float _2035;
  float _2038;
  float _2041;
  float _2048;
  float _2104;
  uint _2146;
  float _2173;
  float _2179;
  float _2183;
  float _2194;
  float _2207;
  float _2208;
  float _2209;
  float _2212;
  float _2213;
  float _2215;
  float _2217;
  float _2222;
  float _2226;
  float4 _2229;
  float _2241;
  float _2245;
  float _2254;
  float _2283;
  int _2286;
  float _2289;
  float _2300;
  float _2301;
  float _2302;
  float _2303;
  float _2307;
  float _2308;
  float _2309;
  float _2310;
  float _2311;
  float _2314;
  float _2319;
  float _2320;
  float _2327;
  bool _2328;
  float _2359;
  float4 _2372;
  float4 _2408;
  float _2422;
  float _2423;
  float _2428;
  float _2433;
  float _2436;
  float _2437;
  float _2441;
  float _2444;
  float _2447;
  float _2450;
  float _2455;
  float _2468;
  float _2469;
  float _2470;
  float _2471;
  float _2472;
  float _2480;
  float _2481;
  float _2486;
  float _2518;
  float _2573;
  float _2577;
  float _2578;
  float _2579;
  float _2580;
  float _2581;
  float _2582;
  float _2592;
  float _2623;
  float _2624;
  float _2626;
  float _2639;
  float _2641;
  float _2644;
  bool _2645;
  float _2654;
  float _2657;
  float _2663;
  float _2674;
  float _2675;
  float _2677;
  float _2695;
  float _2701;
  float _2702;
  float _2705;
  float _2714;
  float _2728;
  float _2729;
  float _2730;
  float _2731;
  float _2750;
  float _2752;
  float _2756;
  float _2763;
  float _2766;
  float _2769;
  float _2772;
  float _2783;
  float _2797;
  float _2798;
  float _2799;
  float _2800;
  float _2801;
  float _2805;
  float _2809;
  float _2810;
  float _2815;
  float _2874;
  float _2905;
  float _2908;
  float _2936;
  float _2937;
  float _2938;
  float _2939;
  float _2940;
  float _2941;
  float _2942;
  float _2943;
  int _2944;
  float _2950;
  float _2953;
  float _2955;
  float _2956;
  float _2957;
  float _2959;
  float _2970;
  float4 _2996;
  float _2998;
  float _2999;
  float _3000;
  float _3003;
  float _3008;
  float _3011;
  float _3014;
  float _3017;
  float _3018;
  float _3025;
  float _3039;
  float _3040;
  float _3041;
  float _3042;
  float _3043;
  float _3047;
  float _3051;
  float _3052;
  float _3057;
  float _3094;
  bool _3137;
  float _3148;
  float _3149;
  float _3152;
  float _3157;
  float _3164;
  float _3178;
  float _3179;
  float _3180;
  float _3181;
  float _3182;
  float _3186;
  float _3190;
  float _3191;
  float _3196;
  float _3233;
  float _3300;
  float _3304;
  float _3305;
  float _3314;
  float _3346;
  float2 _3349;
  float _3352;
  float2 _3376;
  float _3381;
  float _3384;
  float _3387;
  float _3390;
  float _3391;
  float _3392;
  float _3397;
  float _3400;
  float _3402;
  float _3404;
  float _3407;
  float _3412;
  float _3414;
  float _3418;
  float _3421;
  float _3424;
  float _3427;
  float _3431;
  float _3435;
  float _3439;
  float _3440;
  float _3451;
  float _3452;
  float _3454;
  float _3456;
  float _3457;
  float _3460;
  float _3461;
  float _3465;
  float _3469;
  float _3473;
  float _3477;
  float _3482;
  float _3487;
  float _3492;
  float _3493;
  float _3494;
  float _3495;
  float _3497;
  float _3498;
  float _3499;
  float _3502;
  float _3506;
  float _3510;
  float _3514;
  float _3519;
  float _3524;
  float _3529;
  float _3530;
  float _3532;
  float _3533;
  float _3548;
  float _3554;
  float _3555;
  float _3556;
  float _3557;
  float _3672;
  float _3675;
  float _3679;
  float _3681;
  float _3683;
  float _3687;
  float _3689;
  float _3695;
  float _3696;
  float _3697;
  float _3698;
  float _3699;
  float _3704;
  float _3707;
  float _3711;
  float _3712;
  float _3713;
  float _3714;
  float _3720;
  bool _3721;
  float _3751;
  float _3757;
  float4 _3760;
  float4 _3765;
  float _3770;
  float _3771;
  float _3774;
  float _3775;
  float _3776;
  float _3782;
  float _3789;
  float4 _3791;
  float4 _3796;
  float _3801;
  float _3807;
  float _3808;
  float _3809;
  float _3810;
  float _3811;
  float _3815;
  float _3816;
  float _3822;
  bool _3823;
  float _3853;
  float _3859;
  float4 _3860;
  float4 _3864;
  float4 _3868;
  float4 _3872;
  float _3876;
  float _3877;
  float _3878;
  float _3879;
  float _3880;
  float _3881;
  float _3887;
  float _3891;
  float _3895;
  float _3897;
  float _3898;
  float _3899;
  float _3900;
  float _3901;
  float _3907;
  float _3913;
  float _3919;
  float _3925;
  float _3926;
  float _3927;
  bool _3928;
  bool _3934;
  float _3940;
  float _3944;
  float _3945;
  float _3946;
  float _3952;
  float _3972;
  float _3992;
  float _3994;
  float _4006;
  float _4008;
  float _4017;
  float _4023;
  float _4028;
  float _4033;
  float _4061;
  float4 _4062;
  float4 _4066;
  float _4071;
  float _4072;
  float _4079;
  float4 _4080;
  float4 _4084;
  float _4115;
  float4 _4116;
  float4 _4120;
  float4 _4124;
  float4 _4128;
  float _4143;
  float _4145;
  float _4269;
  float _4282;
  float _4292;
  float _4301;
  float _4308;
  float _4315;
  float _4322;
  float _4339;
  float _4372;
  float _4374;
  float _4375;
  float _4377;
  float _4379;
  float _4381;
  float _4387;
  float _4388;
  float _4389;
  float _4390;
  float _4391;
  float _4395;
  float _4396;
  float _4402;
  bool _4403;
  float _4433;
  float _4439;
  float4 _4441;
  float4 _4446;
  float _4450;
  float _4453;
  float _4454;
  float _4455;
  float _4461;
  float _4468;
  float4 _4470;
  float4 _4475;
  float _4480;
  float _4486;
  float _4487;
  float _4488;
  float _4489;
  float _4490;
  float _4494;
  float _4495;
  float _4501;
  bool _4502;
  float _4532;
  float _4538;
  float4 _4539;
  float4 _4543;
  float4 _4547;
  float4 _4551;
  float _4555;
  float _4556;
  float _4557;
  float _4558;
  float _4559;
  float _4560;
  float _4566;
  float _4570;
  float _4574;
  float _4576;
  float _4577;
  float _4578;
  float _4579;
  float _4580;
  float _4586;
  float _4592;
  float _4598;
  float _4604;
  float _4605;
  float _4606;
  bool _4607;
  bool _4613;
  float _4619;
  float _4623;
  float _4624;
  float _4625;
  float _4631;
  float _4651;
  float _4671;
  float _4673;
  float _4685;
  float _4687;
  float _4715;
  float4 _4716;
  float4 _4720;
  float _4724;
  float _4731;
  float4 _4732;
  float4 _4736;
  float _4767;
  float4 _4768;
  float4 _4772;
  float4 _4776;
  float4 _4780;
  float _4795;
  float _4797;
  float _4919;
  float _4923;
  float _4927;
  float _4931;
  float _4938;
  float _4945;
  float _4952;
  float _4962;
  uint _5006;
  int _5010;
  int _5012;
  float _5022;
  float _5025;
  float _5029;
  float _5030;
  float _5031;
  float _5035;
  float _5040;
  float _5041;
  float _5047;
  float _5059;
  float _5060;
  float _5066;
  float _5068;
  float _5074;
  float _5075;
  float _5083;
  float _5091;
  float _5108;
  float _5109;
  float _5116;
  bool _5117;
  float _5138;
  float _5148;
  float _5154;
  float _5159;
  float _5164;
  float _5182;
  float _5183;
  float _5186;
  float _5188;
  float _5189;
  float _5195;
  float _5203;
  float _5205;
  float _5206;
  float _5207;
  float _5213;
  float _5221;
  float _5225;
  float _5240;
  float _5253;
  float _5254;
  float _5256;
  float _5257;
  float _5264;
  float _5272;
  float _5275;
  float _5282;
  float _5302;
  float _5316;
  float _5317;
  float _5319;
  float _5321;
  float _5324;
  float _5325;
  float _5328;
  float _5329;
  float _5331;
  float _5332;
  float _5334;
  float4 _5356;
  float _5360;
  float _5361;
  float _5363;
  float _5364;
  float _5365;
  float _5369;
  float _5376;
  float _5379;
  float _5382;
  float _5385;
  float _5396;
  float _5410;
  float _5411;
  float _5412;
  float _5413;
  float _5414;
  float _5418;
  float _5422;
  float _5423;
  float _5428;
  float _5465;
  bool _5508;
  bool _5520;
  int _5529;
  uint _5530;
  float _5531;
  float _5532;
  float _5533;
  float _5534;
  float _5538;
  float _5539;
  float _5540;
  float _5541;
  float _5542;
  float _5545;
  float _5550;
  float _5551;
  float _5558;
  bool _5559;
  float _5590;
  float4 _5602;
  float4 _5638;
  float _5652;
  float _5653;
  float _5658;
  float _5663;
  float _5666;
  float _5667;
  float _5671;
  float _5672;
  float _5675;
  float _5689;
  float _5690;
  float _5691;
  float _5692;
  float _5693;
  float _5701;
  float _5702;
  float _5707;
  float _5741;
  float _5793;
  float _5796;
  float _5800;
  float _5802;
  float _5804;
  float _5805;
  float _5806;
  float _5807;
  float _5817;
  float _5820;
  float _5859;
  float _5860;
  float _5862;
  float _5875;
  float _5877;
  float _5880;
  bool _5881;
  float _5890;
  float _5893;
  float _5899;
  float _5909;
  float _5910;
  float _5912;
  float _5930;
  float _5936;
  float _5937;
  float _5940;
  float _5948;
  float _5962;
  float _5963;
  float _5964;
  float _5965;
  float _5984;
  float _5986;
  float _5990;
  float _5997;
  float _6000;
  float _6003;
  float _6006;
  float _6017;
  float _6031;
  float _6032;
  float _6033;
  float _6034;
  float _6035;
  float _6039;
  float _6043;
  float _6044;
  float _6049;
  float _6108;
  float _6139;
  float _6142;
  float _6170;
  float _6171;
  float _6172;
  float _6173;
  float _6174;
  float _6175;
  float _6176;
  float _6177;
  int _6178;
  float _6184;
  float _6187;
  float _6189;
  float _6190;
  float _6191;
  float _6193;
  float _6204;
  float4 _6230;
  float _6232;
  float _6233;
  float _6234;
  float _6237;
  float _6242;
  float _6245;
  float _6248;
  float _6251;
  float _6252;
  float _6259;
  float _6273;
  float _6274;
  float _6275;
  float _6276;
  float _6277;
  float _6281;
  float _6285;
  float _6286;
  float _6291;
  float _6328;
  bool _6371;
  float _6382;
  float _6383;
  float _6386;
  float _6391;
  float _6398;
  float _6412;
  float _6413;
  float _6414;
  float _6415;
  float _6416;
  float _6420;
  float _6424;
  float _6425;
  float _6430;
  float _6467;
  float _6534;
  float _6538;
  float _6539;
  float _6548;
  float _6580;
  float2 _6583;
  float _6586;
  float2 _6610;
  float _6618;
  float _6619;
  float _6622;
  float _6625;
  float _6628;
  float _6631;
  float _6632;
  float _6633;
  float _6638;
  float _6641;
  float _6643;
  float _6645;
  float _6648;
  float _6650;
  float _6655;
  float _6657;
  float _6661;
  float _6662;
  float _6663;
  float _6666;
  float _6667;
  float _6670;
  float _6671;
  float _6674;
  float _6677;
  float _6680;
  float _6681;
  float _6692;
  float _6693;
  float _6695;
  float _6696;
  float _6697;
  float _6698;
  float _6701;
  float _6705;
  float _6709;
  float _6713;
  float _6717;
  float _6722;
  float _6727;
  float _6732;
  float _6734;
  float _6736;
  float _6753;
  float _6755;
  float _6771;
  float _6773;
  float _6789;
  float _6790;
  float _6792;
  float _6793;
  float _6794;
  float _6795;
  float _6796;
  float _6799;
  float _6802;
  float _6805;
  float _6807;
  float _6809;
  float _6810;
  float _6825;
  float _6831;
  float _6850;
  float _6868;
  float _6886;
  float _6890;
  float _6891;
  float _6894;
  float _6895;
  float _6898;
  float _6901;
  float _6904;
  float _6911;
  float _6920;
  float _6921;
  float _6922;
  float _6925;
  float _6928;
  float _6931;
  float _6938;
  float _6994;
  bool _7008;
  int _7009;
  float _7011;
  float _7013;
  float _7015;
  uint _7036;
  float _7057;
  float _7062;
  float _7066;
  float _7077;
  float _7090;
  float _7091;
  float _7092;
  float _7095;
  float _7096;
  float _7098;
  float _7100;
  float _7105;
  float _7109;
  float4 _7112;
  float _7124;
  float _7128;
  float _7137;
  float _7166;
  int _7169;
  float _7172;
  float _7183;
  float _7184;
  float _7185;
  float _7186;
  float _7190;
  float _7191;
  float _7192;
  float _7193;
  float _7194;
  float _7197;
  float _7202;
  float _7203;
  float _7210;
  bool _7211;
  float _7242;
  float4 _7255;
  float4 _7291;
  float _7305;
  float _7306;
  float _7311;
  float _7316;
  float _7319;
  float _7320;
  float _7324;
  float _7327;
  float _7330;
  float _7333;
  float _7338;
  float _7351;
  float _7352;
  float _7353;
  float _7354;
  float _7355;
  float _7363;
  float _7364;
  float _7369;
  float _7401;
  float _7456;
  float _7460;
  float _7461;
  float _7462;
  float _7463;
  float _7464;
  float _7465;
  float _7475;
  float _7506;
  float _7507;
  float _7509;
  float _7522;
  float _7524;
  float _7527;
  bool _7528;
  float _7537;
  float _7540;
  float _7546;
  float _7557;
  float _7558;
  float _7560;
  float _7578;
  float _7584;
  float _7585;
  float _7588;
  float _7597;
  float _7611;
  float _7612;
  float _7613;
  float _7614;
  float _7633;
  float _7635;
  float _7639;
  float _7646;
  float _7649;
  float _7652;
  float _7655;
  float _7666;
  float _7680;
  float _7681;
  float _7682;
  float _7683;
  float _7684;
  float _7688;
  float _7692;
  float _7693;
  float _7698;
  float _7757;
  float _7788;
  float _7791;
  float _7819;
  float _7820;
  float _7821;
  float _7822;
  float _7823;
  float _7824;
  float _7825;
  float _7826;
  int _7827;
  float _7833;
  float _7836;
  float _7838;
  float _7839;
  float _7840;
  float _7842;
  float _7853;
  float4 _7879;
  float _7881;
  float _7882;
  float _7883;
  float _7886;
  float _7891;
  float _7894;
  float _7897;
  float _7900;
  float _7901;
  float _7908;
  float _7922;
  float _7923;
  float _7924;
  float _7925;
  float _7926;
  float _7930;
  float _7934;
  float _7935;
  float _7940;
  float _7977;
  bool _8020;
  float _8031;
  float _8032;
  float _8035;
  float _8040;
  float _8047;
  float _8061;
  float _8062;
  float _8063;
  float _8064;
  float _8065;
  float _8069;
  float _8073;
  float _8074;
  float _8079;
  float _8116;
  float _8183;
  float _8187;
  float _8188;
  float _8197;
  float _8229;
  float2 _8232;
  float _8235;
  float2 _8259;
  float _8264;
  float _8267;
  float _8270;
  float _8273;
  float _8274;
  float _8275;
  float _8280;
  float _8283;
  float _8285;
  float _8287;
  float _8290;
  float _8295;
  float _8297;
  float _8301;
  float _8304;
  float _8307;
  float _8310;
  float _8314;
  float _8318;
  float _8322;
  float _8323;
  float _8334;
  float _8335;
  float _8337;
  float _8339;
  float _8340;
  float _8343;
  float _8344;
  float _8348;
  float _8352;
  float _8356;
  float _8360;
  float _8365;
  float _8370;
  float _8375;
  float _8376;
  float _8377;
  float _8378;
  float _8380;
  float _8381;
  float _8382;
  float _8385;
  float _8389;
  float _8393;
  float _8397;
  float _8402;
  float _8407;
  float _8412;
  float _8413;
  float _8415;
  float _8416;
  float _8431;
  float _8437;
  float _8438;
  float _8439;
  float _8440;
  float _8556;
  float _8559;
  float _8563;
  float _8565;
  float _8567;
  float _8571;
  float _8573;
  float _8579;
  float _8580;
  float _8581;
  float _8582;
  float _8583;
  float _8588;
  float _8591;
  float _8595;
  float _8596;
  float _8597;
  float _8598;
  float _8604;
  bool _8605;
  float _8635;
  float _8641;
  float4 _8644;
  float4 _8649;
  float _8654;
  float _8655;
  float _8658;
  float _8659;
  float _8660;
  float _8666;
  float _8673;
  float4 _8675;
  float4 _8680;
  float _8685;
  float _8691;
  float _8692;
  float _8693;
  float _8694;
  float _8695;
  float _8699;
  float _8700;
  float _8706;
  bool _8707;
  float _8737;
  float _8743;
  float4 _8744;
  float4 _8748;
  float4 _8752;
  float4 _8756;
  float _8760;
  float _8761;
  float _8762;
  float _8763;
  float _8764;
  float _8765;
  float _8771;
  float _8775;
  float _8779;
  float _8781;
  float _8782;
  float _8783;
  float _8784;
  float _8785;
  float _8791;
  float _8797;
  float _8803;
  float _8809;
  float _8810;
  float _8811;
  bool _8812;
  bool _8818;
  float _8824;
  float _8828;
  float _8829;
  float _8830;
  float _8836;
  float _8856;
  float _8876;
  float _8878;
  float _8890;
  float _8892;
  float _8901;
  float _8907;
  float _8912;
  float _8917;
  float _8945;
  float4 _8946;
  float4 _8950;
  float _8955;
  float _8956;
  float _8963;
  float4 _8964;
  float4 _8968;
  float _8999;
  float4 _9000;
  float4 _9004;
  float4 _9008;
  float4 _9012;
  float _9027;
  float _9029;
  float _9153;
  float _9166;
  float _9176;
  float _9185;
  float _9192;
  float _9199;
  float _9206;
  float _9219;
  float _9251;
  float _9252;
  float _9253;
  float _9255;
  float _9256;
  float _9257;
  float _9260;
  float _9261;
  float _9262;
  float _9265;
  float _9266;
  float _9269;
  int _9271;
  int _9275;
  int _9278;
  int _9281;
  int _9292;
  float _9334;
  float _9337;
  float _9354;
  uint _9356;
  uint _9370;
  uint _9371;
  int _9372;
  int _9378;
  int _9384;
  int _9390;
  int _9411;
  uint _9488;
  uint _9510;
  uint _9511;
  int _9512;
  int _9518;
  int _9524;
  int _9530;
  int _9551;
  uint _9628;
  uint _9650;
  uint _9651;
  int _9652;
  int _9658;
  int _9664;
  int _9670;
  int _9691;
  uint _9768;
  uint _9790;
  uint _9791;
  int _9792;
  int _9798;
  int _9804;
  int _9810;
  int _9831;
  uint _9908;
  uint _9930;
  uint _9931;
  int _9932;
  int _9938;
  int _9944;
  int _9950;
  int _9971;
  uint _10048;
  uint _10070;
  uint _10071;
  int _10072;
  int _10078;
  int _10084;
  int _10090;
  int _10111;
  uint _10188;
  uint _10210;
  uint _10211;
  int _10212;
  int _10218;
  int _10224;
  int _10230;
  int _10251;
  uint _10328;
  uint _10350;
  uint _10351;
  int _10352;
  int _10358;
  int _10364;
  int _10370;
  int _10391;
  uint _10468;
  float _10582;
  float _10589;
  float _10595;
  float _10606;
  float _10628;
  float _10653;
  float _10656;
  float _10660;
  float _10661;
  float _10670;
  bool _10671;
  float _10692;
  float _10702;
  float _10708;
  float _10713;
  float _10718;
  float _10730;
  float _10731;
  float _10737;
  float _10739;
  float _10745;
  float _10746;
  float _10754;
  float _10762;
  float _10792;
  float _10795;
  float _10799;
  float _10814;
  float _10829;
  float _10885;
  float _10886;
  float _10887;
  float _10889;
  float _10890;
  float _10891;
  float _10894;
  float _10895;
  float _10896;
  float _10899;
  float _10900;
  float _10903;
  int _10905;
  int _10909;
  int _10912;
  int _10915;
  int _10926;
  float _10968;
  float _10971;
  float _10988;
  uint _10990;
  uint _11004;
  uint _11005;
  int _11006;
  int _11012;
  int _11018;
  int _11024;
  int _11045;
  uint _11122;
  uint _11144;
  uint _11145;
  int _11146;
  int _11152;
  int _11158;
  int _11164;
  int _11185;
  uint _11262;
  uint _11284;
  uint _11285;
  int _11286;
  int _11292;
  int _11298;
  int _11304;
  int _11325;
  uint _11402;
  uint _11424;
  uint _11425;
  int _11426;
  int _11432;
  int _11438;
  int _11444;
  int _11465;
  uint _11542;
  uint _11564;
  uint _11565;
  int _11566;
  int _11572;
  int _11578;
  int _11584;
  int _11605;
  uint _11682;
  uint _11704;
  uint _11705;
  int _11706;
  int _11712;
  int _11718;
  int _11724;
  int _11745;
  uint _11822;
  uint _11844;
  uint _11845;
  int _11846;
  int _11852;
  int _11858;
  int _11864;
  int _11885;
  uint _11962;
  uint _11984;
  uint _11985;
  int _11986;
  int _11992;
  int _11998;
  int _12004;
  int _12025;
  uint _12102;
  float _12216;
  float _12223;
  float _12229;
  float _12240;
  float _12262;
  float _12287;
  float _12290;
  float _12294;
  float _12295;
  float _12304;
  bool _12305;
  float _12326;
  float _12336;
  float _12342;
  float _12347;
  float _12352;
  float _12364;
  float _12365;
  float _12371;
  float _12373;
  float _12379;
  float _12380;
  float _12388;
  float _12396;
  float _12426;
  float _12429;
  float _12433;
  float _12448;
  float _12463;
  int __loop_jump_target = -1;
  float _27[4];
  float _28[4];
  _33 = (int)((int)((uint)(SV_DispatchThreadID.x) << 16)) | (int)((uint)(SV_DispatchThreadID.x) >> 16);
  _38 = (int)(((int)((uint)((uint)(_33)) << 1)) & -1431655766) | (int)(((uint)((uint)(_33)) >> 1) & 1431655765);
  _43 = (int)(((int)((uint)((uint)(_38)) << 2)) & -858993460) | (int)(((uint)((uint)(_38)) >> 2) & 858993459);
  _48 = (int)(((int)((uint)((uint)(_43)) << 4)) & -252645136) | (int)(((uint)((uint)(_43)) >> 4) & 252645135);
  _55 = ((float)((uint)((uint)((int)(((int)((uint)((uint)(_48)) << 8)) & -16711936) | (int)(((uint)((uint)(_48)) >> 8) & 16711935))))) * 1.4629181e-09f;
  _56 = (float)((int)((int)(SV_DispatchThreadID.x)));
  _58 = 1.0f - (_56 * 0.00390625f);
  _59 = _58 * _58;
  _61 = sqrt(1.0f - _59);
  _63 = cos(_55) * _61;
  _65 = sin(_55) * _61;
  _66 = (float)((uint)(SV_DispatchThreadID.x));
  _72 = frac(frac(dot(float2((_66 * 32.665f), (_66 * 11.815f)), float2(0.06711056f, 0.00583715f))) * 52.982918f);
  _75 = (_renderFlags.x > 0.5f);
  _78 = (uint)((uint)(_frameNumber.x)) % (uint)(6);
  if (!(_78 == 0)) {
    _81 = (uint)(SV_DispatchThreadID.x) << 2;
    _85 = __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_81) | (int)(1))].w;
    _88 = __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_81) | (int)(2))].x;
    _89 = __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_81) | (int)(2))].y;
    _90 = __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_81) | (int)(2))].z;
    _91 = __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_81) | (int)(2))].w;
    _94 = __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_81) | (int)(3))].x;
    _95 = __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_81) | (int)(3))].y;
    _96 = __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_81) | (int)(3))].z;
    _97 = __3__39__0__1__g_precomputedAmbientCacheUAV[((int)(_81) | (int)(3))].w;
    _99 = __3__39__0__1__g_precomputedAmbientCacheUAV[_81].x;
    _100 = __3__39__0__1__g_precomputedAmbientCacheUAV[_81].y;
    _101 = __3__39__0__1__g_precomputedAmbientCacheUAV[_81].z;
    _102 = __3__39__0__1__g_precomputedAmbientCacheUAV[_81].w;
    _107 = _102;
    _108 = _101;
    _109 = _100;
    _110 = _99;
    _111 = _90;
    _112 = _89;
    _113 = _88;
    _114 = _96;
    _115 = _95;
    _116 = _94;
    _117 = ((int)((uint)(_85)));
    _118 = ((int)(uint)((int)(_91 > 0.5f)));
    _119 = _97;
  } else {
    _107 = 0.0f;
    _108 = 0.0f;
    _109 = 0.0f;
    _110 = 0.0f;
    _111 = 0.0f;
    _112 = 0.0f;
    _113 = 0.0f;
    _114 = 0.0f;
    _115 = 0.0f;
    _116 = 0.0f;
    _117 = 0;
    _118 = 0;
    _119 = 128.0f;
  }
  _124 = _earthRadius + _atmosphereThickness;
  _127 = _viewPos.y + _earthRadius;
  _128 = dot(float3(_63, _58, _65), float3(_63, _58, _65));
  _132 = dot(float3(_viewPos.x, _127, _viewPos.z), float3(_63, _58, _65)) * 2.0f;
  _133 = dot(float3(_viewPos.x, _127, _viewPos.z), float3(_viewPos.x, _127, _viewPos.z));
  _134 = _132 * _132;
  _135 = _128 * 4.0f;
  _139 = _134 - ((_133 - (_124 * _124)) * _135);
  if (!(_139 < 0.0f)) {
    _144 = _128 * 2.0f;
    _145 = (sqrt(_139) - _132) / _144;
    if (!(_145 <= 0.0f)) {
      _151 = (1.0f - _sunSizeAngleCosine) * 6.2831855f;
      _163 = acos(min(max(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)), -1.0f), 1.0f));
      _164 = _163 * 57.295776f;
      _170 = _sunSizeAngle * _sunSizeAngle;
      if (!(_164 > (_moonSizeAngle + _sunSizeAngle))) {
        _172 = _moonSizeAngle * _moonSizeAngle;
        if (!(_164 <= (abs(_sunSizeAngle - _moonSizeAngle) + 0.05f))) {
          _178 = _164 * _164;
          _179 = _163 * 114.59155f;
          _187 = acos(min(max((((_178 + _170) - _172) / (_179 * _sunSizeAngle)), -1.0f), 1.0f)) * 2.0f;
          _195 = acos(min(max((((_178 - _170) + _172) / (_moonSizeAngle * _179)), -1.0f), 1.0f)) * 2.0f;
          _210 = (((((_195 * _172) + (_187 * _170)) - (sin(_187) * _170)) - (sin(_195) * _172)) * 0.5f);
        } else {
          _210 = (min(_170, _172) * 3.1415927f);
        }
      } else {
        _210 = 0.0f;
      }
      _211 = _atmosphereThickness + -16.0f;
      _212 = min(16.0f, _211);
      _213 = max(_212, 0.0f);
      _214 = _earthRadius * 2.0f;
      _220 = (-0.0f - sqrt((_213 + _214) * _213)) / (_213 + _earthRadius);
      _221 = (_220 < 1.0f);
      if (!_221) {
        _233 = ((exp2(log2(saturate((_220 + -1.0f) / (_220 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      } else {
        _233 = 0.99609375f;
      }
      _235 = _atmosphereThickness + -32.0f;
      _242 = (exp2(log2(saturate((_212 + -16.0f) / _235)) * 0.5f) * 0.96875f) + 0.015625f;
      // RenoDX: >>> [Patch: SkySpectralRayleigh] [Version: 1.13.00]
      // Description: Rebuilds red and green Rayleigh coefficients from the native blue reference only when Sky Scattering is enabled; the disabled path reconstructs the three native packed channels exactly.
      float _rndx_rayleigh_r = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f);
      float _rndx_rayleigh_g = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f);
      float _rndx_rayleigh_b = (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f);
      if (SKY_SCATTERING) {
        float _rndx_sky_ref = _rndx_rayleigh_b;
        _rndx_rayleigh_r = _rndx_sky_ref * SKY_RAYLEIGH_CH1;
        _rndx_rayleigh_g = _rndx_sky_ref * SKY_RAYLEIGH_CH2;
      }
      _252 = _rndx_rayleigh_r + (_ozoneRatio * SKY_OZONE_1);
      _258 = _rndx_rayleigh_g + (_ozoneRatio * SKY_OZONE_2);
      _263 = _rndx_rayleigh_b + (_ozoneRatio * SKY_OZONE_3);
      // RenoDX: <<< [Patch: SkySpectralRayleigh]
      _268 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_242, _233), 0.0f))).x) * -1.442695f;
      _286 = ((1.0f - saturate(_210 / (_170 * 3.1415927f))) * _151) * ((_sunLightIntensity * _sunLightPreset) / (dot(float3(exp2(_268 * _252), exp2(_268 * _258), exp2(_268 * _263)), float3(0.299f, 0.587f, 0.114f)) * _151));
      _287 = dot(float3(_63, _58, _65), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
      _290 = _cloudPhaseConstFront * _cloudPhaseConstFront;
      _292 = (_287 * _287) + 1.0f;
      _293 = _290 + 1.0f;
      _299 = (((1.0f - _290) * 3.0f) / ((_290 + 2.0f) * 2.0f)) * 0.07957747f;
      _307 = (_292 / exp2(log2(_293 - ((_287 * 2.0f) * _cloudPhaseConstFront)) * 1.5f)) * _299;
      _309 = _cloudPhaseConstBack * _cloudPhaseConstBack;
      _310 = _309 + 1.0f;
      _311 = _cloudPhaseConstBack * -2.0f;
      _317 = (((1.0f - _309) * 3.0f) / ((_309 + 2.0f) * 2.0f)) * 0.039788734f;
      _325 = ((_292 / exp2(log2(_310 - (_311 * _287)) * 1.5f)) * _317) + _307;
      _329 = (1.0f - _moonSizeAngleCosine) * 6.2831855f;
      if (!_221) {
        _341 = ((exp2(log2(saturate((_220 + -1.0f) / (_220 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      } else {
        _341 = 0.99609375f;
      }
      _344 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_242, _341), 0.0f))).x) * -1.442695f;
      _357 = ((_moonLightIntensity * _moonLightPreset) / (dot(float3(exp2(_344 * _252), exp2(_344 * _258), exp2(_344 * _263)), float3(0.299f, 0.587f, 0.114f)) * _329)) * _329;
      _358 = dot(float3(_63, _58, _65), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
      _360 = (_358 * _358) + 1.0f;
      _361 = _358 * 2.0f;
      _368 = (_360 / exp2(log2(_293 - (_361 * _cloudPhaseConstFront)) * 1.5f)) * _299;
      _376 = ((_360 / exp2(log2(_310 - (_358 * _311)) * 1.5f)) * _317) + _368;
      _379 = min(_cloudVisibleRange, _cloudVisibleRange);
      _380 = (_78 == 5);
      if (_75) {
        _387 = log2(exp2(log2(max(1.0f, (_cloudVisibleRange * 0.00033333333f))) * 0.0078125f));
        _390 = (uint)((uint)((int)((int)(_78) << 7) + (int)(128))) / (uint)(6);
        if ((uint)_117 < (uint)_390) {
          _394 = _119;
          _395 = _118;
          _396 = _117;
          _397 = _116;
          _398 = _115;
          _399 = _114;
          _400 = _113;
          _401 = _112;
          _402 = _111;
          _403 = _110;
          _404 = _109;
          _405 = _108;
          _406 = _107;
          _407 = 0.0f;
          _408 = 0.0f;
          _409 = 0.0f;
          _410 = 0.0f;
          _411 = 1;
          while(true) {
            _412 = (float)((int)(_396));
            _426 = (((exp2(select(((uint)_396 < (uint)12), (_412 * 0.33f), (_412 + -8.039999f)) * _387) + -1.0f) * (_379 + -128.0f)) / (exp2(_387 * 128.0f) + -1.0f)) + 128.0f;
            _427 = min(_426, _145);
            _429 = max(0.0f, (_427 - _394));
            _431 = (_429 * _72) + _394;
            _434 = _distanceScale * _429;
            _435 = _431 * _63;
            _438 = _435 + _viewPos.x;
            _439 = _431 * _58;
            _441 = _viewPos.y + _439;
            _442 = _431 * _65;
            _444 = _viewPos.z + _442;
            // [sem: _3__36__0__0__g_climateTex2_sampleLod]
            _466 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_438 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_444 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
            _470 = _427 * _63;
            _471 = _viewPos.x + _470;
            _473 = _viewPos.y + (_427 * _58);
            _474 = _427 * _65;
            _475 = _viewPos.z + _474;
            _479 = sqrt((_474 * _474) + (_470 * _470));
            _486 = _cloudAltitude - (max(((_479 * _479) + -400000.0f), 0.0f) * 1e-06f);
            _489 = _cloudDetailScale * 0.004f;
            _492 = _cloudBaseScale * 0.0004f;
            _495 = _earthRadius + _473;
            _506 = ((sqrt(((_475 * _475) + (_471 * _471)) + (_495 * _495)) - _486) - _earthRadius) / _cloudThickness;
            if (!((_506 < 0.0f) || (_506 > 1.0f))) {
              _520 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
              _521 = _473 - _486;
              _522 = _489 / _492;
              _523 = _522 * _492;
              _524 = _520 * _522;
              _528 = saturate(max((_479 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
              _532 = (_cloudDetailScale * 0.001884f) * (4.0f - (_528 * 3.0f));
              _533 = _523 * 4.355f;
              _538 = 1.0f - sqrt(saturate((1.0f - _506) * 1.4285715f));
              _575 = (((((_528 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_489 * _471) - (_523 * _cloudScroll.x)), ((_521 * _489) - _524), ((_489 * _475) - (_523 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_532 * _471) - (_533 * _cloudScroll.x)), ((_532 * _521) - (_524 * 4.355f)), ((_532 * _475) - (_533 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_506 * 4.0f) * 0.8f) + 0.2f);
              _616 = (saturate(((saturate(_506 * 10.0f) * saturate(saturate(((_466.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_492 * (_471 - _cloudScroll.x)), ((_492 * _521) - _520), (_492 * (_475 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_538 * 0.5f), ((_538 * _538) * _538)))) - _575) / (1.0f - _575)) * _cloudAlpha);
            } else {
              _616 = 0.0f;
            }
            _618 = (_cloudFadeRange > 1e-05f);
            if (_618) {
              _628 = saturate((((1.0f - _cloudNear) * _479) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
            } else {
              _628 = 1.0f;  // [sem: expr_sat]
            }
            _630 = ((_628 * _616) > 0.001f);
            if ((_395 != 0) && _630) {
              _2127 = 0;
              _2128 = _411;
              _2129 = _410;
              _2130 = _409;
              _2131 = _408;
              _2132 = _407;
              _2133 = _406;
              _2134 = _405;
              _2135 = _404;
              _2136 = _403;
              _2137 = _402;
              _2138 = _401;
              _2139 = _400;
              _2140 = _399;
              _2141 = _398;
              _2142 = _397;
              _2143 = ((int)((uint)((uint)(_396)) + (uint)(-2)));
              _2144 = 0;
              _2145 = _394;
            } else {
              _639 = select(((uint)_396 < (uint)126), (((int)(uint)(_630)) ^ 1), 0);
              _640 = (uint)((uint)(_639)) + (uint)((uint)(_396));
              _641 = _cloudThickness + _cloudAltitude;
              _642 = _earthRadius + _441;
              _643 = _438 * _438;
              _644 = _444 * _444;
              _648 = sqrt((_644 + _643) + (_642 * _642));
              _649 = _438 / _648;
              _650 = _642 / _648;
              _651 = _444 / _648;
              _652 = _648 - _earthRadius;
              if (_652 > 0.0f) {
                _655 = dot(float3(_649, _650, _651), float3(_63, _58, _65));
                _660 = min(max(_652, 16.0f), (_atmosphereThickness + -16.0f));
                _661 = max(_660, 0.0f);
                _668 = (-0.0f - sqrt((_661 + (_earthRadius * 2.0f)) * _661)) / (_661 + _earthRadius);
                _669 = (_655 > _668);
                if (_669) {
                  _691 = ((exp2(log2(saturate((_655 - _668) / (1.0f - _668))) * 0.2f) * 0.4921875f) + 0.50390625f);
                } else {
                  _691 = ((exp2(log2(saturate((_668 - _655) / (_668 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
                }
                _700 = (exp2(log2(saturate((_660 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
                // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
                _712 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_700, _691, ((1.0f - exp2(-1.1541561f - (dot(float3(_649, _650, _651), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
                if (_669) {
                  _737 = ((exp2(log2(saturate((_655 - _668) / (1.0f - _668))) * 0.2f) * 0.4921875f) + 0.50390625f);
                } else {
                  _737 = ((exp2(log2(saturate((_668 - _655) / (_668 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
                }
                // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
                _748 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_700, _737, ((1.0f - exp2(-1.1541561f - (dot(float3(_649, _650, _651), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
                _756 = (_748.z * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _757 = (_748.y * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _758 = (_748.x * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _759 = _712.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _760 = _712.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _761 = _712.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              } else {
                _756 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _757 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _758 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _759 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _760 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _761 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              }
              _762 = max(_652, 0.01f);
              _763 = -0.0f - _762;
              _768 = exp2((_763 / _rayleighScaledHeight) * 1.442695f);
              _773 = exp2((_763 / _mieScaledHeight) * 1.442695f);
              _776 = (_442 * _442) + (_435 * _435);
              _777 = sqrt(_776);
              _781 = max(((_777 * _777) + -400000.0f), 0.0f) * 1e-06f;
              _782 = _cloudAltitude - _781;
              _785 = ((_648 - _earthRadius) - _782) / _cloudThickness;
              if (!((_785 < 0.0f) || (_785 > 1.0f))) {
                _799 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                _800 = _441 - _782;
                _801 = _489 / _492;
                _802 = _801 * _492;
                _803 = _799 * _801;
                _811 = (_cloudDetailScale * 0.001884f) * (4.0f - (saturate(max((_777 + -2500.0f), 0.0f) * 0.05f) * 3.0f));
                _812 = _802 * 4.355f;
                _817 = 1.0f - sqrt(saturate((1.0f - _785) * 1.4285715f));
                _851 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_489 * _438) - (_802 * _cloudScroll.x)), ((_800 * _489) - _803), ((_489 * _444) - (_802 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_811 * _438) - (_812 * _cloudScroll.x)), ((_811 * _800) - (_803 * 4.355f)), ((_811 * _444) - (_812 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_785 * 4.0f) * 0.8f) + 0.2f);
                _892 = (saturate(((saturate(_785 * 10.0f) * saturate(saturate(((_466.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_492 * (_438 - _cloudScroll.x)), ((_800 * _492) - _799), (_492 * (_444 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_817 * 0.5f), ((_817 * _817) * _817)))) - _851) / (1.0f - _851)) * _cloudAlpha);
              } else {
                _892 = 0.0f;
              }
              if (_618) {
                _902 = saturate(((_777 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
              } else {
                _902 = 1.0f;  // [sem: expr_sat]
              }
              _903 = _902 * _892;
              _906 = sqrt(_776 + (_439 * _439));
              _910 = max(1e-06f, (_heightFogScale * 0.0025f));
              _912 = _910 * _cloudScroll.x;
              _914 = _910 * _cloudScroll.y;
              _915 = _910 * _438;
              _916 = _910 * _441;
              _917 = _910 * _444;
              // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
              _927 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_915 * 6.393882f) - (_912 * 1.871f)), (_916 * 6.393882f), ((_917 * 6.393882f) - (_914 * 1.871f))), 0.0f);
              _930 = _heightFogFalloff * -0.14426951f;
              _969 = (((saturate(_906 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_915 * 0.5127f) - _912), (_916 * 0.5127f), ((_917 * 0.5127f) - _914)), 0.0f)).x))) * ((saturate((_906 + -300.0f) * 0.0025f) * (0.5f - _927.x)) + _927.x)) * ((exp2(max(0.001f, ((_762 - _heightScaleMin) - ((_heightScaleMax - _heightScaleMin) * _466.z))) * _930) * _466.y) + (exp2(max(0.001f, (_762 - _heightFogBaseline)) * _930) * _heightFogDensity));
              _970 = _441 - _cloudAltitude;
              _972 = (_781 + _970) / _cloudThickness;
              if (!(_sunDirection.y > 0.0f)) {
                _981 = (_sunDirection.y > _moonDirection.y);
              } else {
                _981 = true;
              }
              _985 = select(_981, _sunDirection.x, _moonDirection.x);
              _987 = select(_981, _sunDirection.y, _moonDirection.y);
              _990 = select(_981, _sunDirection.z, _moonDirection.z);
              _991 = (_987 > 0.0f);
              _1000 = ((0.5f - (((float)((int)((int)((int)(uint)(_991)) - (int)((int)(uint)((int)(_987 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _782;
              if (_441 < _782) {
                _1003 = dot(float3(0.0f, 1.0f, 0.0f), float3(_985, _987, _990));
                _1009 = select((abs(_1003) < 1e-08f), 1e+08f, ((_1000 - dot(float3(0.0f, 1.0f, 0.0f), float3(_438, _441, _444))) / _1003));
                _1015 = ((_1009 * _990) + _444);
                _1016 = _1000;
                _1017 = ((_1009 * _985) + _438);
              } else {
                _1015 = _444;
                _1016 = _441;
                _1017 = _438;
              }
              _1019 = _cloudScatteringCoefficient / _distanceScale;
              _1020 = abs(_987);
              _1022 = saturate(_1020 * 4.0f);  // [sem: expr_sat]
              _1040 = (_1022 * _1022) * exp2(((_distanceScale * -1.442695f) * _1019) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_1017 - _viewPos.x) * 5e-05f) + 0.5f), ((_1016 - _cloudAltitude) / _cloudThickness), (((_1015 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x));
              _1046 = ((1.0f - _1040) * saturate((_970 - _cloudThickness) * 0.1f)) + _1040;
              _1047 = -0.0f - _1019;
              _1050 = (log2(_1046) * 0.6931472f) / _1047;
              if ((_972 <= 1.0f) && ((_903 > 0.001f) && (_972 >= 0.0f))) {
                _1058 = (_441 - _782) / _cloudThickness;
                if (!((_1058 < 0.0f) || (_1058 > 1.0f))) {
                  if (_1020 > 0.001f) {
                    _1071 = min(300.0f, (((_782 - _441) + select(_991, _cloudThickness, 0.0f)) / _987));
                  } else {
                    _1071 = 300.0f;
                  }
                  _1072 = _1071 * 0.2f;
                  _1073 = _1072 * _985;
                  _1074 = _1072 * _987;
                  _1075 = _1072 * _990;
                  _1083 = 0;
                  _1084 = ((_1075 * 0.5f) + _444);
                  _1085 = ((_1074 * 0.5f) + _441);
                  _1086 = ((_1073 * 0.5f) + _438);
                  _1087 = _1075;
                  _1088 = _1074;
                  _1089 = _1073;
                  _1090 = _1072;
                  _1091 = 0.0f;
                  while(true) {
                    _1094 = _1086 - _viewPos.x;
                    _1096 = _1084 - _viewPos.z;
                    _1100 = sqrt((_1096 * _1096) + (_1094 * _1094));
                    _1107 = _cloudAltitude - (max(((_1100 * _1100) + -400000.0f), 0.0f) * 1e-06f);
                    _1110 = _cloudDetailScale * 0.004f;
                    _1113 = _cloudBaseScale * 0.0004f;
                    _1116 = _earthRadius + _1085;
                    _1127 = ((sqrt(((_1086 * _1086) + (_1084 * _1084)) + (_1116 * _1116)) - _1107) - _earthRadius) / _cloudThickness;
                    if (!((_1127 < 0.0f) || (_1127 > 1.0f))) {
                      _1141 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                      _1142 = _1085 - _1107;
                      _1143 = _1110 / _1113;
                      _1144 = _1143 * _1113;
                      _1145 = _1141 * _1143;
                      _1149 = saturate(max((_1100 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                      _1153 = (_cloudDetailScale * 0.001884f) * (4.0f - (_1149 * 3.0f));
                      _1154 = _1144 * 4.355f;
                      _1159 = 1.0f - sqrt(saturate((1.0f - _1127) * 1.4285715f));
                      // [sem: expr_sat]
                      _1218 = saturate(_1127 * 10.0f) * saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_1086 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + (_1084 / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1086 - _cloudScroll.x) * _1113), ((_1113 * _1142) - _1141), ((_1084 - _cloudScroll.y) * _1113)), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_1159 * 0.5f), ((_1159 * _1159) * _1159)));
                      _1249 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1153 * _1086) - (_cloudScroll.x * _1154)), ((_1153 * _1142) - (_1145 * 4.355f)), ((_1153 * _1084) - (_cloudScroll.y * _1154))), 0.0f)).x) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1110 * _1086) - (_cloudScroll.x * _1144)), ((_1110 * _1142) - _1145), ((_1110 * _1084) - (_cloudScroll.y * _1144))), 0.0f)).x))) * ((saturate(_1127 * 4.0f) * 0.8f) + 0.2f);
                      _1252 = _1249 * ((_1149 * 0.4f) + 0.1f);
                      _1265 = (saturate((_1218 - _1252) / (1.0f - _1252)) * _cloudAlpha);
                      _1266 = (saturate((_1218 - _1249) / (1.0f - _1249)) * _cloudAlpha);
                    } else {
                      _1265 = 0.0f;
                      _1266 = 0.0f;
                    }
                    _1280 = (((exp2((((_1090 * -0.0072134747f) * _1091) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (_1266 - _1265)) + _1265) * _1090) + _1091;
                    _1281 = _1089 + _1086;
                    _1282 = _1088 + _1085;
                    _1283 = _1087 + _1084;
                    _1284 = _1090 * 1.3f;
                    _1285 = _1089 * 1.3f;
                    _1286 = _1088 * 1.3f;
                    _1287 = _1087 * 1.3f;
                    _1288 = (int)(_1083) + (int)(1);
                    if (!(_1288 == 6)) {
                      _1083 = _1288;
                      _1084 = _1283;
                      _1085 = _1282;
                      _1086 = _1281;
                      _1087 = _1287;
                      _1088 = _1286;
                      _1089 = _1285;
                      _1090 = _1284;
                      _1091 = _1280;
                      continue;
                    }
                    _1293 = (_1280 * _distanceScale);
                    break;
                  }
                } else {
                  _1293 = 0.0f;
                }
                _1294 = max(_1050, _1293);
                _1297 = _438 - _viewPos.x;
                _1299 = _444 - _viewPos.z;
                _1300 = _1297 * _1297;
                _1301 = _1299 * _1299;
                _1303 = sqrt(_1301 + _1300);
                _1314 = ((_441 - _cloudAltitude) + (max(((_1303 * _1303) + -400000.0f), 0.0f) * 1e-06f)) / _cloudThickness;
                if (!((_1314 < 0.0f) || (_1314 > 1.0f))) {
                  // [sem: _3__36__0__0__g_climateTex2_sampleLod]
                  _1340 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_438 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_444 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                  _1342 = _438 + 50.0f;
                  _1343 = _441 + 200.0f;
                  _1344 = _1342 - _viewPos.x;
                  _1347 = sqrt((_1344 * _1344) + _1301);
                  _1352 = _cloudAltitude - (max(((_1347 * _1347) + -400000.0f), 0.0f) * 1e-06f);
                  _1355 = _cloudDetailScale * 0.004f;
                  _1358 = _cloudBaseScale * 0.0004f;
                  _1361 = _earthRadius + _1343;
                  _1362 = _1361 * _1361;
                  _1369 = ((sqrt(((_1342 * _1342) + _644) + _1362) - _1352) - _earthRadius) / _cloudThickness;
                  if (!((_1369 < 0.0f) || (_1369 > 1.0f))) {
                    _1383 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                    _1384 = _1343 - _1352;
                    _1385 = _1355 / _1358;
                    _1386 = _1385 * _1358;
                    _1387 = _1383 * _1385;
                    _1391 = saturate(max((_1347 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                    _1395 = (_cloudDetailScale * 0.001884f) * (4.0f - (_1391 * 3.0f));
                    _1396 = _1386 * 4.355f;
                    _1401 = 1.0f - sqrt(saturate((1.0f - _1369) * 1.4285715f));
                    _1438 = (((((_1391 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1355 * _1342) - (_1386 * _cloudScroll.x)), ((_1384 * _1355) - _1387), ((_1355 * _444) - (_1386 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1395 * _1342) - (_1396 * _cloudScroll.x)), ((_1395 * _1384) - (_1387 * 4.355f)), ((_1395 * _444) - (_1396 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_1369 * 4.0f) * 0.8f) + 0.2f);
                    _1479 = (saturate(((saturate(_1369 * 10.0f) * saturate(saturate(((_1340.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_1358 * (_1342 - _cloudScroll.x)), ((_1358 * _1384) - _1383), (_1358 * (_444 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_1401 * 0.5f), ((_1401 * _1401) * _1401)))) - _1438) / (1.0f - _1438)) * _cloudAlpha);
                  } else {
                    _1479 = 0.0f;
                  }
                  _1481 = (_cloudFadeRange > 1e-05f);
                  if (_1481) {
                    _1491 = saturate(((_1347 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                  } else {
                    _1491 = 1.0f;  // [sem: expr_sat]
                  }
                  _1492 = _444 + -50.0f;
                  _1493 = _1492 - _viewPos.z;
                  _1496 = sqrt((_1493 * _1493) + _1300);
                  _1501 = _cloudAltitude - (max(((_1496 * _1496) + -400000.0f), 0.0f) * 1e-06f);
                  _1508 = ((sqrt(((_1492 * _1492) + _643) + _1362) - _earthRadius) - _1501) / _cloudThickness;
                  if (!((_1508 < 0.0f) || (_1508 > 1.0f))) {
                    _1522 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                    _1523 = _1343 - _1501;
                    _1524 = _1355 / _1358;
                    _1525 = _1524 * _1358;
                    _1526 = _1522 * _1524;
                    _1530 = saturate(max((_1496 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                    _1534 = (_cloudDetailScale * 0.001884f) * (4.0f - (_1530 * 3.0f));
                    _1535 = _1525 * 4.355f;
                    _1540 = 1.0f - sqrt(saturate((1.0f - _1508) * 1.4285715f));
                    _1577 = (((((_1530 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1355 * _438) - (_1525 * _cloudScroll.x)), ((_1523 * _1355) - _1526), ((_1355 * _1492) - (_1525 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1534 * _438) - (_1535 * _cloudScroll.x)), ((_1534 * _1523) - (_1526 * 4.355f)), ((_1534 * _1492) - (_1535 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_1508 * 4.0f) * 0.8f) + 0.2f);
                    _1618 = (saturate(((saturate(_1508 * 10.0f) * saturate(saturate(((_1340.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_1358 * (_438 - _cloudScroll.x)), ((_1523 * _1358) - _1522), (_1358 * (_1492 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_1540 * 0.5f), ((_1540 * _1540) * _1540)))) - _1577) / (1.0f - _1577)) * _cloudAlpha);
                  } else {
                    _1618 = 0.0f;
                  }
                  if (_1481) {
                    _1628 = saturate(((_1496 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                  } else {
                    _1628 = 1.0f;  // [sem: expr_sat]
                  }
                  _1642 = ((((_1628 * _1618) + (_1491 * _1479)) * 20.0f) * _distanceScale);
                  _1643 = _1294;
                } else {
                  _1642 = 0.0f;
                  _1643 = _1294;
                }
              } else {
                _1642 = ((log2(max(_1046, 0.5f)) * 0.6931472f) / _1047);
                _1643 = _1050;
              }
              _1644 = dot(float3(_649, _650, _651), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
              _1648 = min(max(_762, 16.0f), (_atmosphereThickness + -16.0f));
              _1649 = max(_1648, 0.0f);
              _1658 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _1649) * _1649)) / (_earthRadius + _1649);
              if (_1644 > _1658) {
                _1681 = ((exp2(log2(saturate((_1644 - _1658) / (1.0f - _1658))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _1681 = ((exp2(log2(saturate((_1658 - _1644) / (_1658 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              _1690 = (exp2(log2(saturate((_1648 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
              // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
              _1693 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1690, _1681), 0.0f);
              _1696 = dot(float3(_649, _650, _651), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
              if (_1696 > _1658) {
                _1719 = ((exp2(log2(saturate((_1696 - _1658) / (1.0f - _1658))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _1719 = ((exp2(log2(saturate((_1658 - _1696) / (_1658 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
              _1720 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1690, _1719), 0.0f);
              _1728 = saturate((1.0f - saturate(_431 / _379)) * 10.0f) * _903;
              _1729 = _434 * 0.5f;
              _1732 = ((_768 + _407) * _1729) + _403;
              _1735 = ((_773 + _408) * _1729) + _404;
              _1738 = ((_1728 + _409) * _1729) + _405;
              _1741 = ((_969 + _410) * _1729) + _406;
              _1742 = _1738 + _1741;
              _1743 = _1693.x + _1732;
              _1748 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
              _1751 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
              _1753 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
              _1755 = _mieAerosolDensity * 2e-05f;
              _1758 = (_mieAerosolAbsorption + 1.0f) * _1755;
              _1760 = (_1693.y + _1735) * _1758;
              _1765 = _cloudScatteringCoefficient / _distanceScale;
              _1767 = (_1742 + _1643) * _1765;
              // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
              // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
              _1771 = (_1748 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
              // RenoDX: <<< [Patch: SkySpectralOzone]
              _1772 = _1771 * _1743;
              _1773 = _1767 + _1760;
              // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
              // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
              _1776 = (_1751 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
              // RenoDX: <<< [Patch: SkySpectralOzone]
              _1777 = _1776 * _1743;
              // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
              // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
              _1780 = (_ozoneRatio * SKY_OZONE_3) + (_1753 * 1.9607843e-07f);
              // RenoDX: <<< [Patch: SkySpectralOzone]
              _1781 = _1780 * _1743;
              _1784 = exp2((_1772 + _1773) * -1.442695f);
              _1787 = exp2((_1777 + _1773) * -1.442695f);
              _1790 = exp2((_1773 + _1781) * -1.442695f);
              _1791 = _distanceScale * _1765;
              _1802 = 1.0f - exp2((_969 * -288.539f) * _1791);
              _1803 = _768 * 1.9607843e-07f;
              _1805 = (_292 * 0.059683103f) * _1803;
              _1806 = exp2(log2(1.0f - exp2((_1728 * -14.42695f) * _1791)) * 1.25f) * _1728;
              _1807 = _1806 * 64.0f;
              _1808 = _1807 * _307;
              _1811 = ((_325 * 2.0f) * _969) * _1802;
              _1815 = ((_1742 + _1642) * _1765) + (_1735 * _1758);
              _1819 = exp2(((_1771 * _1732) + _1815) * -1.442695f);
              _1823 = exp2(((_1776 * _1732) + _1815) * -1.442695f);
              _1827 = exp2((_1815 + (_1780 * _1732)) * -1.442695f);
              _1832 = ((_1823 * 0.33951f) + (_1819 * 0.61312f)) + (_1827 * 0.04737f);
              _1837 = ((_1823 * 0.91636f) + (_1819 * 0.0702f)) + (_1827 * 0.01345f);
              _1842 = ((_1823 * 0.10958f) + (_1819 * 0.02062f)) + (_1827 * 0.8698f);
              _1844 = _1765 * (_1728 + _969);
              _1846 = (_1748 * _1803) + _1844;
              _1863 = ((((((_volumeFogScatterColor.x * _1811) + _1808) * _1765) + (_1748 * _1805)) * (((_1787 * 0.33951f) + (_1784 * 0.61312f)) + (_1790 * 0.04737f))) + ((_1846 * _761) * _1832)) * _434;
              _1865 = (_1751 * _1803) + _1844;
              _1881 = ((((((_volumeFogScatterColor.y * _1811) + _1808) * _1765) + (_1751 * _1805)) * (((_1787 * 0.91636f) + (_1784 * 0.0702f)) + (_1790 * 0.01345f))) + ((_1865 * _760) * _1837)) * _434;
              _1883 = _1844 + (_1753 * _1803);
              _1899 = ((((((_volumeFogScatterColor.z * _1811) + _1808) * _1765) + (_1753 * _1805)) * (((_1787 * 0.10958f) + (_1784 * 0.02062f)) + (_1790 * 0.8698f))) + ((_1883 * _759) * _1842)) * _434;
              _1900 = _1720.x + _1732;
              _1902 = (_1720.y + _1735) * _1758;
              _1903 = _1771 * _1900;
              _1904 = _1767 + _1902;
              _1905 = _1776 * _1900;
              _1906 = _1780 * _1900;
              _1909 = exp2((_1903 + _1904) * -1.442695f);
              _1912 = exp2((_1905 + _1904) * -1.442695f);
              _1915 = exp2((_1904 + _1906) * -1.442695f);
              _1917 = (_360 * 0.059683103f) * _1803;
              _1919 = _miePhaseConst * _miePhaseConst;
              _1920 = _1755 * _773;
              _1935 = ((_1920 * 0.07957747f) * (((1.0f - _1919) * 3.0f) / ((_1919 + 2.0f) * 2.0f))) * (_360 / exp2(log2((_1919 + 1.0f) - (_miePhaseConst * _361)) * 1.5f));
              _1941 = ((((_376 * 2.0f) * _969) * _1802) + (_1807 * _368)) * _1765;
              _1960 = (((((_1941 + (_1748 * _1917)) + (_mieScatterColor.x * _1935)) * (((_1912 * 0.33951f) + (_1909 * 0.61312f)) + (_1915 * 0.04737f))) + ((_1832 * _758) * ((_mieScatterColor.x * _1920) + _1846))) * _434) + _397;
              _1978 = (((((_1941 + (_1751 * _1917)) + (_mieScatterColor.y * _1935)) * (((_1912 * 0.91636f) + (_1909 * 0.0702f)) + (_1915 * 0.01345f))) + ((_1837 * _757) * ((_mieScatterColor.y * _1920) + _1865))) * _434) + _398;
              _1996 = (((((_1941 + (_1753 * _1917)) + (_mieScatterColor.z * _1935)) * (((_1912 * 0.10958f) + (_1909 * 0.02062f)) + (_1915 * 0.8698f))) + ((_1842 * _756) * ((_mieScatterColor.z * _1920) + _1883))) * _434) + _399;
              if (_1728 > 0.001f) {
                _2000 = _cloudPhaseConstFront * 0.5f;
                _2001 = _2000 * _2000;
                _2004 = (_1742 + (_1643 * 0.2f)) * _1765;
                _2005 = _2004 + _1760;
                _2008 = exp2((_1772 + _2005) * -1.442695f);
                _2011 = exp2((_1777 + _2005) * -1.442695f);
                _2014 = exp2((_2005 + _1781) * -1.442695f);
                _2021 = _2001 + 1.0f;
                _2030 = (((_1806 * 4.0743666f) * _434) * _1765) * (((1.0f - _2001) * 3.0f) / ((_2001 + 2.0f) * 2.0f));
                _2031 = (_292 / exp2(log2(_2021 - (_cloudPhaseConstFront * _287)) * 1.5f)) * _2030;
                _2032 = _2004 + _1902;
                _2035 = exp2((_1903 + _2032) * -1.442695f);
                _2038 = exp2((_1905 + _2032) * -1.442695f);
                _2041 = exp2((_2032 + _1906) * -1.442695f);
                _2048 = (_360 / exp2(log2(_2021 - (_cloudPhaseConstFront * _358)) * 1.5f)) * _2030;
                _2092 = ((_2031 * (((_2011 * 0.10958f) + (_2008 * 0.02062f)) + (_2014 * 0.8698f))) + _1899);
                _2093 = ((_2031 * (((_2011 * 0.91636f) + (_2008 * 0.0702f)) + (_2014 * 0.01345f))) + _1881);
                _2094 = ((_2031 * (((_2011 * 0.33951f) + (_2008 * 0.61312f)) + (_2014 * 0.04737f))) + _1863);
                _2095 = ((_2048 * (((_2038 * 0.10958f) + (_2035 * 0.02062f)) + (_2041 * 0.8698f))) + _1996);
                _2096 = ((_2048 * (((_2038 * 0.91636f) + (_2035 * 0.0702f)) + (_2041 * 0.01345f))) + _1978);
                _2097 = ((_2048 * (((_2038 * 0.33951f) + (_2035 * 0.61312f)) + (_2041 * 0.04737f))) + _1960);
              } else {
                _2092 = _1899;
                _2093 = _1881;
                _2094 = _1863;
                _2095 = _1996;
                _2096 = _1978;
                _2097 = _1960;
              }
              _2104 = saturate(((float)((int)((int)(((float)((uint)((uint)(_640)))) * 0.33f)))) + _72) * _286;
              if (!((_426 < _145) && (_441 < _641))) {
                _2119 = (_viewPos.y > _641);
              } else {
                _2119 = true;
              }
              _2127 = ((int)(uint)((int)(exp2((_1765 * -1.442695f) * _1742) < 0.001f)));
              _2128 = ((int)(uint)(_2119));
              _2129 = _969;
              _2130 = _1728;
              _2131 = _773;
              _2132 = _768;
              _2133 = _1741;
              _2134 = _1738;
              _2135 = _1735;
              _2136 = _1732;
              _2137 = ((_2104 * _2092) + _402);
              _2138 = ((_2104 * _2093) + _401);
              _2139 = ((_2104 * _2094) + _400);
              _2140 = _2095;
              _2141 = _2096;
              _2142 = _2097;
              _2143 = _640;
              _2144 = _639;
              _2145 = _427;
            }
            _2146 = (uint)((uint)(_2143)) + (uint)(1);
            if ((_2127 == 0) && ((_2128 != 0) && ((uint)_2146 < (uint)_390))) {
              _394 = _2145;
              _395 = _2144;
              _396 = _2146;
              _397 = _2142;
              _398 = _2141;
              _399 = _2140;
              _400 = _2139;
              _401 = _2138;
              _402 = _2137;
              _403 = _2136;
              _404 = _2135;
              _405 = _2134;
              _406 = _2133;
              _407 = _2132;
              _408 = _2131;
              _409 = _2130;
              _410 = _2129;
              _411 = _2128;
              continue;
            }
            _2154 = _2145;
            _2155 = _2144;
            _2156 = _2142;
            _2157 = _2141;
            _2158 = _2140;
            _2159 = _2139;
            _2160 = _2138;
            _2161 = _2137;
            _2162 = _2136;
            _2163 = _2135;
            _2164 = _2134;
            _2165 = _2133;
            _2166 = _2132;
            _2167 = _2131;
            _2168 = _2130;
            _2169 = _2129;
            _2170 = _426;
            _2171 = _2127;
            break;
          }
        } else {
          _2154 = _119;
          _2155 = _118;
          _2156 = _116;
          _2157 = _115;
          _2158 = _114;
          _2159 = _113;
          _2160 = _112;
          _2161 = _111;
          _2162 = _110;
          _2163 = _109;
          _2164 = _108;
          _2165 = _107;
          _2166 = 0.0f;
          _2167 = 0.0f;
          _2168 = 0.0f;
          _2169 = 0.0f;
          _2170 = 0.0f;
          _2171 = 0;
        }
        _2173 = select((_2171 != 0), 1e+06f, _2164);
        if (_380) {
          _2179 = _earthRadius + _cloudCirrusAltitude;
          _2183 = _134 - ((_133 - (_2179 * _2179)) * _135);
          if (!(_2183 < 0.0f)) {
            _2190 = ((sqrt(_2183) - _132) / _144);
          } else {
            _2190 = -1.0f;
          }
          _2194 = _134 - ((_133 - (_earthRadius * _earthRadius)) * _135);
          if (!(_2194 < 0.0f)) {
            _2201 = ((sqrt(_2194) - _132) / _144);
          } else {
            _2201 = -1.0f;
          }
          if ((_2190 >= 0.0f) && (_2201 <= 0.0f)) {
            _2207 = _cloudCirrusScale * 5e-05f;
            _2208 = _2190 * _63;
            _2209 = _2190 * _65;
            _2212 = _viewPos.x + _2208;
            _2213 = _2190 * _58;
            _2215 = _viewPos.y + _2213;
            _2217 = _viewPos.z + _2209;
            _2222 = (_2212 * _2207) - (_cloudScroll.y * 0.0003f);
            _2226 = (_2217 * _2207) - (_cloudScroll.x * 0.0003f);
            // [sem: _3__36__0__0__g_texCirrus_SampleBias]
            _2229 = __3__36__0__0__g_texCirrus.SampleBias(__0__95__0__0__g_samplerAnisotropicWrap, float2(_2222, _2226), -1.0f, int2(0, 0));
            _28[0] = _2229.x;
            _28[1] = _2229.y;
            _28[2] = _2229.z;
            _28[3] = _2229.w;
            _2241 = max(0.01f, ((3.0f - _cloudCirrusDensity) * 20000.0f));
            _2245 = sqrt((_2208 * _2208) + (_2209 * _2209));
            if (!(_2245 > _2241)) {
              _2253 = (1.0f - cos((1.5707964f / _2241) * _2245));
            } else {
              _2253 = 1.0f;
            }
            _2254 = _2253 * _cloudCirrusDensity;
            _28[0] = ((_2229.x * _cloudCirrusWeightR) * _2254);
            _28[1] = ((_2254 * _2229.y) * _cloudCirrusWeightG);
            _28[2] = ((_2254 * _2229.z) * _cloudCirrusWeightB);
            _2283 = ((((sin(_2222 * 1.5f) * 0.5f) * sin(_2226 * 1.5f)) + ((sin(mad(_2226, -0.6f, (_2222 * 0.8f)) * 3.03f) * 0.25f) * sin(mad(_2226, 0.8f, (_2222 * 0.6f)) * 3.03f))) * 1.6000001f) + 1.5f;
            _2286 = (int)(min(max(_2283, 0.0f), 2.0f));
            _2289 = _28[((int)min((uint)(_2286), (uint)(3)))];
            _2300 = (((_28[((int)min((uint)(((int)((int)(_2286) + (int)(1)) % (int)(3))), (uint)(3)))]) - _2289) * saturate(_2283 - ((float)((int)(_2286))))) + _2289;
            _2301 = _2215 + _earthRadius;
            _2302 = _2212 * _2212;
            _2303 = _2217 * _2217;
            _2307 = sqrt((_2303 + _2302) + (_2301 * _2301));
            _2308 = _2212 / _2307;
            _2309 = _2301 / _2307;
            _2310 = _2217 / _2307;
            _2311 = _2307 - _earthRadius;
            if (_2311 > 0.0f) {
              _2314 = dot(float3(_2308, _2309, _2310), float3(_63, _58, _65));
              _2319 = min(max(_2311, 16.0f), (_atmosphereThickness + -16.0f));
              _2320 = max(_2319, 0.0f);
              _2327 = (-0.0f - sqrt((_2320 + (_earthRadius * 2.0f)) * _2320)) / (_2320 + _earthRadius);
              _2328 = (_2314 > _2327);
              if (_2328) {
                _2350 = ((exp2(log2(saturate((_2314 - _2327) / (1.0f - _2327))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _2350 = ((exp2(log2(saturate((_2327 - _2314) / (_2327 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              _2359 = (exp2(log2(saturate((_2319 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
              _2372 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2359, _2350, ((1.0f - exp2(-1.1541561f - (dot(float3(_2308, _2309, _2310), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
              if (_2328) {
                _2397 = ((exp2(log2(saturate((_2314 - _2327) / (1.0f - _2327))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _2397 = ((exp2(log2(saturate((_2327 - _2314) / (_2327 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
              _2408 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2359, _2397, ((1.0f - exp2(-1.1541561f - (dot(float3(_2308, _2309, _2310), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
              _2416 = (_2408.z * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2417 = (_2408.y * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2418 = (_2408.x * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2419 = _2372.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2420 = _2372.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2421 = _2372.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            } else {
              _2416 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2417 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2418 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2419 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2420 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _2421 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            }
            _2422 = max(_2311, 0.01f);
            _2423 = -0.0f - _2422;
            _2428 = exp2((_2423 / _rayleighScaledHeight) * 1.442695f);
            _2433 = exp2((_2423 / _mieScaledHeight) * 1.442695f);
            _2436 = (_2209 * _2209) + (_2208 * _2208);
            _2437 = sqrt(_2436);
            _2441 = max(((_2437 * _2437) + -400000.0f), 0.0f) * 1e-06f;
            _2444 = _cloudAltitude - _2441;
            _2447 = _cloudDetailScale * 0.004f;
            _2450 = _cloudBaseScale * 0.0004f;
            _2455 = ((_2307 - _earthRadius) - _2444) / _cloudThickness;
            if (!((_2455 < 0.0f) || (_2455 > 1.0f))) {
              _2468 = (((_cloudFlow * 0.001f) * _cloudScrollMultiplier) * _time.x) + _cloudSeed;
              _2469 = _2215 - _2444;
              _2470 = _2447 / _2450;
              _2471 = _2470 * _2450;
              _2472 = _2468 * _2470;
              _2480 = (_cloudDetailScale * 0.001884f) * (4.0f - (saturate(max((_2437 + -2500.0f), 0.0f) * 0.05f) * 3.0f));
              _2481 = _2471 * 4.355f;
              _2486 = 1.0f - sqrt(saturate((1.0f - _2455) * 1.4285715f));
              _2518 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2447 * _2212) - (_2471 * _cloudScroll.x)), ((_2469 * _2447) - _2472), ((_2447 * _2217) - (_2471 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2480 * _2212) - (_2481 * _cloudScroll.x)), ((_2480 * _2469) - (_2472 * 4.355f)), ((_2480 * _2217) - (_2481 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_2455 * 4.0f) * 0.8f) + 0.2f);
              _2558 = (saturate(((saturate(_2455 * 10.0f) * saturate(saturate(((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2450 * (_2212 - _cloudScroll.x)), ((_2450 * _2469) - _2468), (_2450 * (_2217 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_2486 * 0.5f), ((_2486 * _2486) * _2486)))) - _2518) / (1.0f - _2518)) * _cloudAlpha);
            } else {
              _2558 = 0.0f;
            }
            if (_cloudFadeRange > 1e-05f) {
              _2570 = saturate((((1.0f - _cloudNear) * _2437) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
            } else {
              _2570 = 1.0f;  // [sem: expr_sat]
            }
            _2573 = sqrt(_2436 + (_2213 * _2213));
            _2577 = max(1e-06f, (_heightFogScale * 0.0025f));
            _2578 = _2577 * _cloudScroll.x;
            _2579 = _2577 * _cloudScroll.y;
            _2580 = _2577 * _2212;
            _2581 = _2577 * _2215;
            _2582 = _2577 * _2217;
            // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
            _2592 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2580 * 6.393882f) - (_2578 * 1.871f)), (_2581 * 6.393882f), ((_2582 * 6.393882f) - (_2579 * 1.871f))), 0.0f);
            _2623 = ((((saturate(_2573 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2580 * 0.5127f) - _2578), (_2581 * 0.5127f), ((_2582 * 0.5127f) - _2579)), 0.0f)).x))) * exp2((_heightFogFalloff * -0.14426951f) * max(0.001f, (_2422 - _heightFogBaseline)))) * ((saturate((_2573 + -300.0f) * 0.0025f) * (0.5f - _2592.x)) + _2592.x)) * _heightFogDensity;
            _2624 = _2215 - _cloudAltitude;
            _2626 = (_2624 + _2441) / _cloudThickness;
            if (!(_sunDirection.y > 0.0f)) {
              _2635 = (_sunDirection.y > _moonDirection.y);
            } else {
              _2635 = true;
            }
            _2639 = select(_2635, _sunDirection.x, _moonDirection.x);
            _2641 = select(_2635, _sunDirection.y, _moonDirection.y);
            _2644 = select(_2635, _sunDirection.z, _moonDirection.z);
            _2645 = (_2641 > 0.0f);
            _2654 = ((0.5f - (((float)((int)((int)((int)(uint)(_2645)) - (int)((int)(uint)((int)(_2641 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _2444;
            if (_2215 < _2444) {
              _2657 = dot(float3(0.0f, 1.0f, 0.0f), float3(_2639, _2641, _2644));
              _2663 = select((abs(_2657) < 1e-08f), 1e+08f, ((_2654 - dot(float3(0.0f, 1.0f, 0.0f), float3(_2212, _2215, _2217))) / _2657));
              _2669 = ((_2663 * _2644) + _2217);
              _2670 = _2654;
              _2671 = ((_2663 * _2639) + _2212);
            } else {
              _2669 = _2217;
              _2670 = _2215;
              _2671 = _2212;
            }
            _2674 = _cloudScatteringCoefficient / _distanceScale;
            _2675 = abs(_2641);
            _2677 = saturate(_2675 * 4.0f);  // [sem: expr_sat]
            _2695 = (_2677 * _2677) * exp2(((_distanceScale * -1.442695f) * _2674) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_2671 - _viewPos.x) * 5e-05f) + 0.5f), ((_2670 - _cloudAltitude) / _cloudThickness), (((_2669 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x));
            _2701 = ((1.0f - _2695) * saturate((_2624 - _cloudThickness) * 0.1f)) + _2695;
            _2702 = -0.0f - _2674;
            _2705 = (log2(_2701) * 0.6931472f) / _2702;
            if ((_2626 <= 1.0f) && (((_2570 * _2558) > 0.001f) && (_2626 >= 0.0f))) {
              _2714 = (_2215 - _2444) / _cloudThickness;
              if (!((_2714 < 0.0f) || (_2714 > 1.0f))) {
                if (_2675 > 0.001f) {
                  _2727 = min(300.0f, (((_2444 - _2215) + select(_2645, _cloudThickness, 0.0f)) / _2641));
                } else {
                  _2727 = 300.0f;
                }
                _2728 = _2727 * 0.2f;
                _2729 = _2728 * _2639;
                _2730 = _2728 * _2641;
                _2731 = _2728 * _2644;
                _2739 = 0;
                _2740 = ((_2731 * 0.5f) + _2217);
                _2741 = ((_2730 * 0.5f) + _2215);
                _2742 = ((_2729 * 0.5f) + _2212);
                _2743 = _2731;
                _2744 = _2730;
                _2745 = _2729;
                _2746 = _2728;
                _2747 = 0.0f;
                while(true) {
                  _2750 = _2742 - _viewPos.x;
                  _2752 = _2740 - _viewPos.z;
                  _2756 = sqrt((_2752 * _2752) + (_2750 * _2750));
                  _2763 = _cloudAltitude - (max(((_2756 * _2756) + -400000.0f), 0.0f) * 1e-06f);
                  _2766 = _cloudDetailScale * 0.004f;
                  _2769 = _cloudBaseScale * 0.0004f;
                  _2772 = _earthRadius + _2741;
                  _2783 = ((sqrt(((_2742 * _2742) + (_2740 * _2740)) + (_2772 * _2772)) - _2763) - _earthRadius) / _cloudThickness;
                  if (!((_2783 < 0.0f) || (_2783 > 1.0f))) {
                    _2797 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                    _2798 = _2741 - _2763;
                    _2799 = _2766 / _2769;
                    _2800 = _2799 * _2769;
                    _2801 = _2797 * _2799;
                    _2805 = saturate(max((_2756 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                    _2809 = (_cloudDetailScale * 0.001884f) * (4.0f - (_2805 * 3.0f));
                    _2810 = _2800 * 4.355f;
                    _2815 = 1.0f - sqrt(saturate((1.0f - _2783) * 1.4285715f));
                    // [sem: expr_sat]
                    _2874 = saturate(_2783 * 10.0f) * saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_2742 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + (_2740 / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2742 - _cloudScroll.x) * _2769), ((_2769 * _2798) - _2797), ((_2740 - _cloudScroll.y) * _2769)), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_2815 * 0.5f), ((_2815 * _2815) * _2815)));
                    _2905 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2809 * _2742) - (_cloudScroll.x * _2810)), ((_2809 * _2798) - (_2801 * 4.355f)), ((_2809 * _2740) - (_cloudScroll.y * _2810))), 0.0f)).x) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2766 * _2742) - (_cloudScroll.x * _2800)), ((_2766 * _2798) - _2801), ((_2766 * _2740) - (_cloudScroll.y * _2800))), 0.0f)).x))) * ((saturate(_2783 * 4.0f) * 0.8f) + 0.2f);
                    _2908 = _2905 * ((_2805 * 0.4f) + 0.1f);
                    _2921 = (saturate((_2874 - _2908) / (1.0f - _2908)) * _cloudAlpha);
                    _2922 = (saturate((_2874 - _2905) / (1.0f - _2905)) * _cloudAlpha);
                  } else {
                    _2921 = 0.0f;
                    _2922 = 0.0f;
                  }
                  _2936 = (((exp2((((_2746 * -0.0072134747f) * _2747) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (_2922 - _2921)) + _2921) * _2746) + _2747;
                  _2937 = _2745 + _2742;
                  _2938 = _2744 + _2741;
                  _2939 = _2743 + _2740;
                  _2940 = _2746 * 1.3f;
                  _2941 = _2745 * 1.3f;
                  _2942 = _2744 * 1.3f;
                  _2943 = _2743 * 1.3f;
                  _2944 = (int)(_2739) + (int)(1);
                  if (!(_2944 == 6)) {
                    _2739 = _2944;
                    _2740 = _2939;
                    _2741 = _2938;
                    _2742 = _2937;
                    _2743 = _2943;
                    _2744 = _2942;
                    _2745 = _2941;
                    _2746 = _2940;
                    _2747 = _2936;
                    continue;
                  }
                  _2949 = (_2936 * _distanceScale);
                  break;
                }
              } else {
                _2949 = 0.0f;
              }
              _2950 = max(_2705, _2949);
              _2953 = _2212 - _viewPos.x;
              _2955 = _2217 - _viewPos.z;
              _2956 = _2953 * _2953;
              _2957 = _2955 * _2955;
              _2959 = sqrt(_2957 + _2956);
              _2970 = ((_2215 - _cloudAltitude) + (max(((_2959 * _2959) + -400000.0f), 0.0f) * 1e-06f)) / _cloudThickness;
              if (!((_2970 < 0.0f) || (_2970 > 1.0f))) {
                // [sem: _3__36__0__0__g_climateTex2_sampleLod]
                _2996 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_2212 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_2217 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                _2998 = _2212 + 50.0f;
                _2999 = _2215 + 200.0f;
                _3000 = _2998 - _viewPos.x;
                _3003 = sqrt((_3000 * _3000) + _2957);
                _3008 = _cloudAltitude - (max(((_3003 * _3003) + -400000.0f), 0.0f) * 1e-06f);
                _3011 = _cloudDetailScale * 0.004f;
                _3014 = _cloudBaseScale * 0.0004f;
                _3017 = _earthRadius + _2999;
                _3018 = _3017 * _3017;
                _3025 = ((sqrt(((_2998 * _2998) + _2303) + _3018) - _3008) - _earthRadius) / _cloudThickness;
                if (!((_3025 < 0.0f) || (_3025 > 1.0f))) {
                  _3039 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _3040 = _2999 - _3008;
                  _3041 = _3011 / _3014;
                  _3042 = _3041 * _3014;
                  _3043 = _3039 * _3041;
                  _3047 = saturate(max((_3003 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _3051 = (_cloudDetailScale * 0.001884f) * (4.0f - (_3047 * 3.0f));
                  _3052 = _3042 * 4.355f;
                  _3057 = 1.0f - sqrt(saturate((1.0f - _3025) * 1.4285715f));
                  _3094 = (((((_3047 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_3011 * _2998) - (_3042 * _cloudScroll.x)), ((_3040 * _3011) - _3043), ((_3011 * _2217) - (_3042 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_3051 * _2998) - (_3052 * _cloudScroll.x)), ((_3051 * _3040) - (_3043 * 4.355f)), ((_3051 * _2217) - (_3052 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_3025 * 4.0f) * 0.8f) + 0.2f);
                  _3135 = (saturate(((saturate(_3025 * 10.0f) * saturate(saturate(((_2996.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_3014 * (_2998 - _cloudScroll.x)), ((_3014 * _3040) - _3039), (_3014 * (_2217 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_3057 * 0.5f), ((_3057 * _3057) * _3057)))) - _3094) / (1.0f - _3094)) * _cloudAlpha);
                } else {
                  _3135 = 0.0f;
                }
                _3137 = (_cloudFadeRange > 1e-05f);
                if (_3137) {
                  _3147 = saturate(((_3003 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _3147 = 1.0f;  // [sem: expr_sat]
                }
                _3148 = _2217 + -50.0f;
                _3149 = _3148 - _viewPos.z;
                _3152 = sqrt((_3149 * _3149) + _2956);
                _3157 = _cloudAltitude - (max(((_3152 * _3152) + -400000.0f), 0.0f) * 1e-06f);
                _3164 = ((sqrt(((_3148 * _3148) + _2302) + _3018) - _earthRadius) - _3157) / _cloudThickness;
                if (!((_3164 < 0.0f) || (_3164 > 1.0f))) {
                  _3178 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _3179 = _2999 - _3157;
                  _3180 = _3011 / _3014;
                  _3181 = _3180 * _3014;
                  _3182 = _3178 * _3180;
                  _3186 = saturate(max((_3152 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _3190 = (_cloudDetailScale * 0.001884f) * (4.0f - (_3186 * 3.0f));
                  _3191 = _3181 * 4.355f;
                  _3196 = 1.0f - sqrt(saturate((1.0f - _3164) * 1.4285715f));
                  _3233 = (((((_3186 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_3011 * _2212) - (_3181 * _cloudScroll.x)), ((_3179 * _3011) - _3182), ((_3011 * _3148) - (_3181 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_3190 * _2212) - (_3191 * _cloudScroll.x)), ((_3190 * _3179) - (_3182 * 4.355f)), ((_3190 * _3148) - (_3191 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_3164 * 4.0f) * 0.8f) + 0.2f);
                  _3274 = (saturate(((saturate(_3164 * 10.0f) * saturate(saturate(((_2996.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_3014 * (_2212 - _cloudScroll.x)), ((_3179 * _3014) - _3178), (_3014 * (_3148 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_3196 * 0.5f), ((_3196 * _3196) * _3196)))) - _3233) / (1.0f - _3233)) * _cloudAlpha);
                } else {
                  _3274 = 0.0f;
                }
                if (_3137) {
                  _3284 = saturate(((_3152 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _3284 = 1.0f;  // [sem: expr_sat]
                }
                _3298 = ((((_3284 * _3274) + (_3147 * _3135)) * 20.0f) * _distanceScale);
                _3299 = _2950;
              } else {
                _3298 = 0.0f;
                _3299 = _2950;
              }
            } else {
              _3298 = ((log2(max(_2701, 0.5f)) * 0.6931472f) / _2702);
              _3299 = _2705;
            }
            _3300 = dot(float3(_2308, _2309, _2310), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
            _3304 = min(max(_2422, 16.0f), (_atmosphereThickness + -16.0f));
            _3305 = max(_3304, 0.0f);
            _3314 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _3305) * _3305)) / (_earthRadius + _3305);
            if (_3300 > _3314) {
              _3337 = ((exp2(log2(saturate((_3300 - _3314) / (1.0f - _3314))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _3337 = ((exp2(log2(saturate((_3314 - _3300) / (_3314 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _3346 = (exp2(log2(saturate((_3304 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
            // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
            _3349 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3346, _3337), 0.0f);
            _3352 = dot(float3(_2308, _2309, _2310), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
            if (_3352 > _3314) {
              _3375 = ((exp2(log2(saturate((_3352 - _3314) / (1.0f - _3314))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _3375 = ((exp2(log2(saturate((_3314 - _3352) / (_3314 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
            _3376 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3346, _3375), 0.0f);
            _3381 = ((_2428 + _2166) * 12.5f) + _2162;
            _3384 = ((_2433 + _2167) * 12.5f) + _2163;
            _3387 = ((_2300 + _2168) * 12.5f) + _2173;
            _3390 = ((_2623 + _2169) * 12.5f) + _2165;
            _3391 = _3390 + _3387;
            _3392 = _3349.x + _3381;
            _3397 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
            _3400 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
            _3402 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
            _3404 = _mieAerosolDensity * 2e-05f;
            _3407 = (_mieAerosolAbsorption + 1.0f) * _3404;
            _3412 = _cloudScatteringCoefficient / _distanceScale;
            _3414 = _3412 * (_3299 + _3391);
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            _3418 = (_3397 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _3421 = _3414 + ((_3349.y + _3384) * _3407);
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            _3424 = (_3400 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
            _3427 = (_ozoneRatio * SKY_OZONE_3) + (_3402 * 1.9607843e-07f);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _3431 = exp2(((_3418 * _3392) + _3421) * -1.442695f);
            _3435 = exp2(((_3424 * _3392) + _3421) * -1.442695f);
            _3439 = exp2(((_3427 * _3392) + _3421) * -1.442695f);
            _3440 = _distanceScale * _3412;
            _3451 = 1.0f - exp2((_2623 * -288.539f) * _3440);
            _3452 = _2428 * 4.901961e-06f;
            _3454 = (_292 * 0.059683103f) * _3452;
            _3456 = (_2300 * 64.0f) * exp2(log2(1.0f - exp2((_2300 * -14.42695f) * _3440)) * 1.25f);
            _3457 = _3456 * _307;
            _3460 = ((_325 * 2.0f) * _2623) * _3451;
            _3461 = _3412 * 25.0f;
            _3465 = (_3412 * (_3298 + _3391)) + (_3384 * _3407);
            _3469 = exp2(((_3418 * _3381) + _3465) * -1.442695f);
            _3473 = exp2(((_3424 * _3381) + _3465) * -1.442695f);
            _3477 = exp2(((_3427 * _3381) + _3465) * -1.442695f);
            _3482 = ((_3473 * 0.33951f) + (_3469 * 0.61312f)) + (_3477 * 0.04737f);
            _3487 = ((_3473 * 0.91636f) + (_3469 * 0.0702f)) + (_3477 * 0.01345f);
            _3492 = ((_3473 * 0.10958f) + (_3469 * 0.02062f)) + (_3477 * 0.8698f);
            _3493 = _3397 * _3452;
            _3494 = _3400 * _3452;
            _3495 = _3402 * _3452;
            _3497 = _3412 * (_2623 + _2300);
            _3498 = _3497 * 25.0f;
            _3499 = _3376.x + _3381;
            _3502 = _3414 + ((_3376.y + _3384) * _3407);
            _3506 = exp2(((_3418 * _3499) + _3502) * -1.442695f);
            _3510 = exp2(((_3424 * _3499) + _3502) * -1.442695f);
            _3514 = exp2(((_3427 * _3499) + _3502) * -1.442695f);
            _3519 = ((_3510 * 0.33951f) + (_3506 * 0.61312f)) + (_3514 * 0.04737f);
            _3524 = ((_3510 * 0.91636f) + (_3506 * 0.0702f)) + (_3514 * 0.01345f);
            _3529 = ((_3510 * 0.10958f) + (_3506 * 0.02062f)) + (_3514 * 0.8698f);
            _3530 = _360 * 0.059683103f;
            _3532 = _miePhaseConst * _miePhaseConst;
            _3533 = _3404 * _2433;
            _3548 = ((_3533 * 0.07957747f) * (((1.0f - _3532) * 3.0f) / ((_3532 + 2.0f) * 2.0f))) * (_360 / exp2(log2((_3532 + 1.0f) - (_miePhaseConst * _361)) * 1.5f));
            _3554 = ((((_376 * 2.0f) * _2623) * _3451) + (_3456 * _368)) * _3412;
            _3555 = _3482 * _2418;
            _3556 = _3487 * _2417;
            _3557 = _3492 * _2416;
            _3657 = _3390;
            _3658 = _3387;
            _3659 = _3384;
            _3660 = _3381;
            _3661 = ((((((((_volumeFogScatterColor.z * _3460) + _3457) * _3461) + (_3402 * _3454)) * (((_3435 * 0.10958f) + (_3431 * 0.02062f)) + (_3439 * 0.8698f))) + (((_3498 + _3495) * _2419) * _3492)) * _286) + _2161);
            _3662 = ((((((((_volumeFogScatterColor.y * _3460) + _3457) * _3461) + (_3400 * _3454)) * (((_3435 * 0.91636f) + (_3431 * 0.0702f)) + (_3439 * 0.01345f))) + (((_3498 + _3494) * _2420) * _3487)) * _286) + _2160);
            _3663 = ((((((((_volumeFogScatterColor.x * _3460) + _3457) * _3461) + (_3397 * _3454)) * (((_3435 * 0.33951f) + (_3431 * 0.61312f)) + (_3439 * 0.04737f))) + (((_3498 + _3493) * _2421) * _3482)) * _286) + _2159);
            _3664 = (((((_3529 * _3530) + _3557) * _3495) + _2158) + (((((_mieScatterColor.z * _3533) + _3497) * _3557) + (((_mieScatterColor.z * _3548) + _3554) * _3529)) * 25.0f));
            _3665 = (((((_3524 * _3530) + _3556) * _3494) + _2157) + (((((_mieScatterColor.y * _3533) + _3497) * _3556) + (((_mieScatterColor.y * _3548) + _3554) * _3524)) * 25.0f));
            _3666 = (((((_3519 * _3530) + _3555) * _3493) + _2156) + (((((_mieScatterColor.x * _3533) + _3497) * _3555) + (((_mieScatterColor.x * _3548) + _3554) * _3519)) * 25.0f));
          } else {
            _3657 = _2165;
            _3658 = _2173;
            _3659 = _2163;
            _3660 = _2162;
            _3661 = _2161;
            _3662 = _2160;
            _3663 = _2159;
            _3664 = _2158;
            _3665 = _2157;
            _3666 = _2156;
          }
          if (_2170 < _145) {
            _3672 = _viewPos.x + (_145 * _63);
            _3675 = _viewPos.z + (_145 * _65);
            _3679 = min((_distanceScale * _2170), _145);
            _3681 = (_3679 * _63) + _viewPos.x;
            _3683 = (_3679 * _65) + _viewPos.z;
            _3687 = _earthRadius + _viewPos.y;
            _3689 = _3687 + (_3679 * _58);
            _3695 = sqrt(((_3683 * _3683) + (_3681 * _3681)) + (_3689 * _3689));
            _3696 = _3681 / _3695;
            _3697 = _3689 / _3695;
            _3698 = _3683 / _3695;
            _3699 = dot(float3(_3696, _3697, _3698), float3(_63, _58, _65));
            _3704 = dot(float3(_63, _58, _65), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
            _3707 = _atmosphereThickness + -16.0f;
            _3711 = min(max(max((_3695 - _earthRadius), 0.01f), 16.0f), _3707);
            _3712 = _atmosphereThickness + -32.0f;
            _3713 = max(_3711, 0.0f);
            _3714 = _earthRadius * 2.0f;
            _3720 = (-0.0f - sqrt((_3713 + _3714) * _3713)) / (_3713 + _earthRadius);
            _3721 = (_3699 > _3720);
            if (_3721) {
              _3743 = ((exp2(log2(saturate((_3699 - _3720) / (1.0f - _3720))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _3743 = ((exp2(log2(saturate((_3720 - _3699) / (_3720 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _3751 = (exp2(log2(saturate((_3711 + -16.0f) / _3712)) * 0.5f) * 0.96875f) + 0.015625f;
            _3757 = (1.0f - exp2(-1.1541561f - (dot(float3(_3696, _3697, _3698), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
            _3760 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3751, _3743, _3757), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
            _3765 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3751, _3743, _3757), 0.0f);
            _3770 = (_3704 * _3704) + 1.0f;
            _3771 = _3770 * 0.059683103f;
            _3774 = _miePhaseConst * _miePhaseConst;
            _3775 = _3774 + 1.0f;
            _3776 = _miePhaseConst * 2.0f;
            _3782 = (((1.0f - _3774) * 3.0f) / ((_3774 + 2.0f) * 2.0f)) * 0.07957747f;
            _3789 = (_3770 / exp2(log2(_3775 - (_3776 * _3704)) * 1.5f)) * _3782;
            // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
            _3791 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3751, _3743, _3757), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
            _3796 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3751, _3743, _3757), 0.0f);
            _3801 = _3687 + (_145 * _58);
            _3807 = sqrt(((_3675 * _3675) + (_3672 * _3672)) + (_3801 * _3801));
            _3808 = _3672 / _3807;
            _3809 = _3801 / _3807;
            _3810 = _3675 / _3807;
            _3811 = dot(float3(_3808, _3809, _3810), float3(_63, _58, _65));
            _3815 = min(max(max((_3807 - _earthRadius), 0.01f), 16.0f), _3707);
            _3816 = max(_3815, 0.0f);
            _3822 = (-0.0f - sqrt((_3816 + _3714) * _3816)) / (_3816 + _earthRadius);
            _3823 = (_3811 > _3822);
            if (_3823) {
              _3845 = ((exp2(log2(saturate((_3811 - _3822) / (1.0f - _3822))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _3845 = ((exp2(log2(saturate((_3822 - _3811) / (_3822 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _3853 = (exp2(log2(saturate((_3815 + -16.0f) / _3712)) * 0.5f) * 0.96875f) + 0.015625f;
            _3859 = (1.0f - exp2(-1.1541561f - (dot(float3(_3808, _3809, _3810), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
            _3860 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3853, _3845, _3859), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
            _3864 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3853, _3845, _3859), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
            _3868 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3853, _3845, _3859), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
            _3872 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3853, _3845, _3859), 0.0f);
            _3876 = dot(float3(_3681, _3689, _3683), float3(_63, _58, _65));
            _3877 = _3876 / _3695;
            _3878 = _3679 - _145;
            _3879 = _3878 * _63;
            _3880 = _3878 * _58;
            _3881 = _3878 * _65;
            _3887 = sqrt(((_3879 * _3879) + (_3880 * _3880)) + (_3881 * _3881));
            _3891 = sqrt((0.5f / _rayleighScaledHeight) * _3695);
            _3895 = sqrt((0.5f / _mieScaledHeight) * _3695);
            _3897 = (_3887 + _3876) / _3695;
            _3898 = _3891 * _3877;
            _3899 = _3897 * _3891;
            _3900 = _3895 * _3877;
            _3901 = _3897 * _3895;
            _3907 = (float)((int)((int)((int)(uint)((int)(_3898 > 0.0f))) - (int)((int)(uint)((int)(_3898 < 0.0f)))));
            _3913 = (float)((int)((int)((int)(uint)((int)(_3899 > 0.0f))) - (int)((int)(uint)((int)(_3899 < 0.0f)))));
            _3919 = (float)((int)((int)((int)(uint)((int)(_3900 > 0.0f))) - (int)((int)(uint)((int)(_3900 < 0.0f)))));
            _3925 = (float)((int)((int)((int)(uint)((int)(_3901 > 0.0f))) - (int)((int)(uint)((int)(_3901 < 0.0f)))));
            _3926 = _3898 * _3898;
            _3927 = _3900 * _3900;
            _3928 = (_3913 > _3907);
            if (_3928) {
              _3933 = exp2(_3926 * 1.442695f);
            } else {
              _3933 = 0.0f;
            }
            _3934 = (_3925 > _3919);
            if (_3934) {
              _3939 = exp2(_3927 * 1.442695f);
            } else {
              _3939 = 0.0f;
            }
            _3940 = -0.0f - _3887;
            _3944 = ((_3887 / (_3695 * 2.0f)) + _3877) * 1.442695f;
            _3945 = _3695 * 6.2831f;
            _3946 = _earthRadius - _3695;
            _3952 = sqrt(_rayleighScaledHeight * _3945) * exp2((_3946 / _rayleighScaledHeight) * 1.442695f);
            _3972 = dot(float2((_3907 / ((abs(_3898) * 2.3193f) + sqrt((_3926 * 1.52f) + 4.0f))), ((_3913 / ((abs(_3899) * 2.3193f) + sqrt(((_3899 * _3899) * 1.52f) + 4.0f))) * exp2((_3940 / _rayleighScaledHeight) * _3944))), float2(1.0f, -1.0f));
            _3992 = dot(float2((_3919 / ((abs(_3900) * 2.3193f) + sqrt((_3927 * 1.52f) + 4.0f))), ((_3925 / ((abs(_3901) * 2.3193f) + sqrt(((_3901 * _3901) * 1.52f) + 4.0f))) * exp2((_3940 / _mieScaledHeight) * _3944))), float2(1.0f, -1.0f));
            _3994 = (_3972 + _3933) * _3952;
            _4006 = (((_mieAerosolDensity * 2e-05f) * (_mieAerosolAbsorption + 1.0f)) * sqrt(_mieScaledHeight * _3945)) * exp2((_3946 / _mieScaledHeight) * 1.442695f);
            _4008 = _4006 * (_3992 + _3939);
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            _4017 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
            _4023 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
            _4028 = (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _4033 = dot(float3(_63, _58, _65), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
            if (_3721) {
              _4055 = ((exp2(log2(saturate((_3699 - _3720) / (1.0f - _3720))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _4055 = ((exp2(log2(saturate((_3720 - _3699) / (_3720 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _4061 = (1.0f - exp2(-1.1541561f - (dot(float3(_3696, _3697, _3698), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
            _4062 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3751, _4055, _4061), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
            _4066 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3751, _4055, _4061), 0.0f);
            _4071 = (_4033 * _4033) + 1.0f;
            _4072 = _4071 * 0.059683103f;
            _4079 = (_4071 / exp2(log2(_3775 - (_4033 * _3776)) * 1.5f)) * _3782;
            // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
            _4080 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3751, _4055, _4061), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
            _4084 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3751, _4055, _4061), 0.0f);
            if (_3823) {
              _4109 = ((exp2(log2(saturate((_3811 - _3822) / (1.0f - _3822))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _4109 = ((exp2(log2(saturate((_3822 - _3811) / (_3822 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _4115 = (1.0f - exp2(-1.1541561f - (dot(float3(_3808, _3809, _3810), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
            _4116 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3853, _4109, _4115), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
            _4120 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3853, _4109, _4115), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
            _4124 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3853, _4109, _4115), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
            _4128 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3853, _4109, _4115), 0.0f);
            if (_3928) {
              _4136 = exp2(_3926 * 1.442695f);
            } else {
              _4136 = 0.0f;
            }
            if (_3934) {
              _4141 = exp2(_3927 * 1.442695f);
            } else {
              _4141 = 0.0f;
            }
            _4143 = (_4136 + _3972) * _3952;
            _4145 = (_4141 + _3992) * _4006;
            _4249 = max(0.0f, (((((_4079 * _4066.z) + (_4062.z * _4072)) + _4080.z) + _4084.z) - (exp2((_4145 + (_4143 * _4028)) * -1.442695f) * ((((_4120.z * _4079) + (_4116.z * _4072)) + _4124.z) + _4128.z))));
            _4250 = max(0.0f, (((((_4079 * _4066.y) + (_4062.y * _4072)) + _4080.y) + _4084.y) - (exp2((_4145 + (_4143 * _4023)) * -1.442695f) * ((((_4120.y * _4079) + (_4116.y * _4072)) + _4124.y) + _4128.y))));
            _4251 = max(0.0f, (((((_4079 * _4066.x) + (_4062.x * _4072)) + _4080.x) + _4084.x) - (exp2((_4145 + (_4143 * _4017)) * -1.442695f) * ((((_4120.x * _4079) + (_4116.x * _4072)) + _4124.x) + _4128.x))));
            _4252 = max(0.0f, (((((_3789 * _3765.z) + (_3760.z * _3771)) + _3791.z) + _3796.z) - (exp2(((_4028 * _3994) + _4008) * -1.442695f) * ((((_3864.z * _3789) + (_3860.z * _3771)) + _3868.z) + _3872.z))));
            _4253 = max(0.0f, (((((_3789 * _3765.y) + (_3760.y * _3771)) + _3791.y) + _3796.y) - (exp2(((_4023 * _3994) + _4008) * -1.442695f) * ((((_3864.y * _3789) + (_3860.y * _3771)) + _3868.y) + _3872.y))));
            _4254 = max(0.0f, (((((_3789 * _3765.x) + (_3760.x * _3771)) + _3791.x) + _3796.x) - (exp2(((_4017 * _3994) + _4008) * -1.442695f) * ((((_3864.x * _3789) + (_3860.x * _3771)) + _3868.x) + _3872.x))));
          } else {
            _4249 = 0.0f;
            _4250 = 0.0f;
            _4251 = 0.0f;
            _4252 = 0.0f;
            _4253 = 0.0f;
            _4254 = 0.0f;
          }
          _4269 = (((_3659 * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f)) + ((_cloudScatteringCoefficient / _distanceScale) * (_3658 + _3657));
          // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
          // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
          _4282 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1)) * _3660) + _4269) * -1.442695f);
          _4292 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2)) * _3660) + _4269) * -1.442695f);
          _4301 = exp2(((((((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3)) * _3660) + _4269) * -1.442695f);
          // RenoDX: <<< [Patch: SkySpectralOzone]
          _4308 = (((_4254 * _286) * _4282) + _3663) + (((_4282 * _4251) + _3666) * _357);
          _4315 = (((_4253 * _286) * _4292) + _3662) + (((_4292 * _4250) + _3665) * _357);
          _4322 = (((_4252 * _286) * _4301) + _3661) + (((_4301 * _4249) + _3664) * _357);
          if (!((_atmosphereSeaBaseline - _viewPos.y) <= 0.0f)) {
            // [sem: expr_sat]
            _4339 = saturate(max(0.0f, ((_atmosphereSeaBaseline - _viewPos.y) - ((_earthRadius + _atmosphereThickness) * _58))) * 2.0f);
            _4348 = (((1.0f - ((_4339 * _4339) * (3.0f - (_4339 * 2.0f)))) * 0.98f) + 0.02f);
          } else {
            _4348 = 1.0f;
          }
          _4991 = (_4348 * (((_4315 * 0.10958f) + (_4308 * 0.02062f)) + (_4322 * 0.8698f)));
          _4992 = (_4348 * (((_4315 * 0.91636f) + (_4308 * 0.0702f)) + (_4322 * 0.01345f)));
          _4993 = (_4348 * (((_4315 * 0.33951f) + (_4308 * 0.61312f)) + (_4322 * 0.04737f)));
          _4994 = _3657;
          _4995 = _3658;
          _4996 = _3659;
          _4997 = _3660;
          _4998 = _3661;
          _4999 = _3662;
          _5000 = _3663;
          _5001 = _3664;
          _5002 = _3665;
          _5003 = _3666;
          _5004 = _2155;
          _5005 = _2154;
        } else {
          _4991 = 0.0f;
          _4992 = 0.0f;
          _4993 = 0.0f;
          _4994 = _2165;
          _4995 = _2173;
          _4996 = _2163;
          _4997 = _2162;
          _4998 = _2161;
          _4999 = _2160;
          _5000 = _2159;
          _5001 = _2158;
          _5002 = _2157;
          _5003 = _2156;
          _5004 = _2155;
          _5005 = _2154;
        }
      } else {
        if (_380) {
          if (_145 > 0.0f) {
            _4372 = (_145 * _63) + _viewPos.x;
            _4374 = (_145 * _65) + _viewPos.z;
            _4375 = min(0.0f, _145);
            _4377 = (_4375 * _63) + _viewPos.x;
            _4379 = (_4375 * _65) + _viewPos.z;
            _4381 = (_4375 * _58) + _127;
            _4387 = sqrt(((_4379 * _4379) + (_4377 * _4377)) + (_4381 * _4381));
            _4388 = _4377 / _4387;
            _4389 = _4381 / _4387;
            _4390 = _4379 / _4387;
            _4391 = dot(float3(_4388, _4389, _4390), float3(_63, _58, _65));
            _4395 = min(max(max((_4387 - _earthRadius), 0.01f), 16.0f), _211);
            _4396 = max(_4395, 0.0f);
            _4402 = (-0.0f - sqrt((_4396 + _214) * _4396)) / (_4396 + _earthRadius);
            _4403 = (_4391 > _4402);
            if (_4403) {
              _4425 = ((exp2(log2(saturate((_4391 - _4402) / (1.0f - _4402))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _4425 = ((exp2(log2(saturate((_4402 - _4391) / (_4402 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _4433 = (exp2(log2(saturate((_4395 + -16.0f) / _235)) * 0.5f) * 0.96875f) + 0.015625f;
            _4439 = (1.0f - exp2(-1.1541561f - (dot(float3(_4388, _4389, _4390), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
            _4441 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4433, _4425, _4439), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
            _4446 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4433, _4425, _4439), 0.0f);
            _4450 = _292 * 0.059683103f;
            _4453 = _miePhaseConst * _miePhaseConst;
            _4454 = _4453 + 1.0f;
            _4455 = _miePhaseConst * 2.0f;
            _4461 = (((1.0f - _4453) * 3.0f) / ((_4453 + 2.0f) * 2.0f)) * 0.07957747f;
            _4468 = (_292 / exp2(log2(_4454 - (_4455 * _287)) * 1.5f)) * _4461;
            // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
            _4470 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4433, _4425, _4439), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
            _4475 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4433, _4425, _4439), 0.0f);
            _4480 = (_145 * _58) + _127;
            _4486 = sqrt(((_4374 * _4374) + (_4372 * _4372)) + (_4480 * _4480));
            _4487 = _4372 / _4486;
            _4488 = _4480 / _4486;
            _4489 = _4374 / _4486;
            _4490 = dot(float3(_4487, _4488, _4489), float3(_63, _58, _65));
            _4494 = min(max(max((_4486 - _earthRadius), 0.01f), 16.0f), _211);
            _4495 = max(_4494, 0.0f);
            _4501 = (-0.0f - sqrt((_4495 + _214) * _4495)) / (_4495 + _earthRadius);
            _4502 = (_4490 > _4501);
            if (_4502) {
              _4524 = ((exp2(log2(saturate((_4490 - _4501) / (1.0f - _4501))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _4524 = ((exp2(log2(saturate((_4501 - _4490) / (_4501 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _4532 = (exp2(log2(saturate((_4494 + -16.0f) / _235)) * 0.5f) * 0.96875f) + 0.015625f;
            _4538 = (1.0f - exp2(-1.1541561f - (dot(float3(_4487, _4488, _4489), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
            _4539 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4532, _4524, _4538), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
            _4543 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4532, _4524, _4538), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
            _4547 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4532, _4524, _4538), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
            _4551 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4532, _4524, _4538), 0.0f);
            _4555 = dot(float3(_4377, _4381, _4379), float3(_63, _58, _65));
            _4556 = _4555 / _4387;
            _4557 = _4375 - _145;
            _4558 = _4557 * _63;
            _4559 = _4557 * _58;
            _4560 = _4557 * _65;
            _4566 = sqrt(((_4558 * _4558) + (_4559 * _4559)) + (_4560 * _4560));
            _4570 = sqrt((0.5f / _rayleighScaledHeight) * _4387);
            _4574 = sqrt((0.5f / _mieScaledHeight) * _4387);
            _4576 = (_4566 + _4555) / _4387;
            _4577 = _4570 * _4556;
            _4578 = _4576 * _4570;
            _4579 = _4574 * _4556;
            _4580 = _4576 * _4574;
            _4586 = (float)((int)((int)((int)(uint)((int)(_4577 > 0.0f))) - (int)((int)(uint)((int)(_4577 < 0.0f)))));
            _4592 = (float)((int)((int)((int)(uint)((int)(_4578 > 0.0f))) - (int)((int)(uint)((int)(_4578 < 0.0f)))));
            _4598 = (float)((int)((int)((int)(uint)((int)(_4579 > 0.0f))) - (int)((int)(uint)((int)(_4579 < 0.0f)))));
            _4604 = (float)((int)((int)((int)(uint)((int)(_4580 > 0.0f))) - (int)((int)(uint)((int)(_4580 < 0.0f)))));
            _4605 = _4577 * _4577;
            _4606 = _4579 * _4579;
            _4607 = (_4592 > _4586);
            if (_4607) {
              _4612 = exp2(_4605 * 1.442695f);
            } else {
              _4612 = 0.0f;
            }
            _4613 = (_4604 > _4598);
            if (_4613) {
              _4618 = exp2(_4606 * 1.442695f);
            } else {
              _4618 = 0.0f;
            }
            _4619 = -0.0f - _4566;
            _4623 = ((_4566 / (_4387 * 2.0f)) + _4556) * 1.442695f;
            _4624 = _4387 * 6.2831f;
            _4625 = _earthRadius - _4387;
            _4631 = sqrt(_4624 * _rayleighScaledHeight) * exp2((_4625 / _rayleighScaledHeight) * 1.442695f);
            _4651 = dot(float2((_4586 / ((abs(_4577) * 2.3193f) + sqrt((_4605 * 1.52f) + 4.0f))), ((_4592 / ((abs(_4578) * 2.3193f) + sqrt(((_4578 * _4578) * 1.52f) + 4.0f))) * exp2((_4619 / _rayleighScaledHeight) * _4623))), float2(1.0f, -1.0f));
            _4671 = dot(float2((_4598 / ((abs(_4579) * 2.3193f) + sqrt((_4606 * 1.52f) + 4.0f))), ((_4604 / ((abs(_4580) * 2.3193f) + sqrt(((_4580 * _4580) * 1.52f) + 4.0f))) * exp2((_4619 / _mieScaledHeight) * _4623))), float2(1.0f, -1.0f));
            _4673 = (_4651 + _4612) * _4631;
            _4685 = (((_mieAerosolDensity * 2e-05f) * (_mieAerosolAbsorption + 1.0f)) * sqrt(_mieScaledHeight * _4624)) * exp2((_4625 / _mieScaledHeight) * 1.442695f);
            _4687 = _4685 * (_4671 + _4618);
            if (_4403) {
              _4709 = ((exp2(log2(saturate((_4391 - _4402) / (1.0f - _4402))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _4709 = ((exp2(log2(saturate((_4402 - _4391) / (_4402 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _4715 = (1.0f - exp2(-1.1541561f - (dot(float3(_4388, _4389, _4390), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
            _4716 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4433, _4709, _4715), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
            _4720 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4433, _4709, _4715), 0.0f);
            _4724 = _360 * 0.059683103f;
            _4731 = (_360 / exp2(log2(_4454 - (_4455 * _358)) * 1.5f)) * _4461;
            // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
            _4732 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4433, _4709, _4715), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
            _4736 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4433, _4709, _4715), 0.0f);
            if (_4502) {
              _4761 = ((exp2(log2(saturate((_4490 - _4501) / (1.0f - _4501))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _4761 = ((exp2(log2(saturate((_4501 - _4490) / (_4501 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _4767 = (1.0f - exp2(-1.1541561f - (dot(float3(_4487, _4488, _4489), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
            _4768 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4532, _4761, _4767), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
            _4772 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4532, _4761, _4767), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
            _4776 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4532, _4761, _4767), 0.0f);
            // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
            _4780 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4532, _4761, _4767), 0.0f);
            if (_4607) {
              _4788 = exp2(_4605 * 1.442695f);
            } else {
              _4788 = 0.0f;
            }
            if (_4613) {
              _4793 = exp2(_4606 * 1.442695f);
            } else {
              _4793 = 0.0f;
            }
            _4795 = (_4788 + _4651) * _4631;
            _4797 = (_4793 + _4671) * _4685;
            _4901 = max(0.0f, (((((_4731 * _4720.z) + (_4716.z * _4724)) + _4732.z) + _4736.z) - (exp2((_4797 + (_4795 * _263)) * -1.442695f) * ((((_4772.z * _4731) + (_4768.z * _4724)) + _4776.z) + _4780.z))));
            _4902 = max(0.0f, (((((_4731 * _4720.y) + (_4716.y * _4724)) + _4732.y) + _4736.y) - (exp2((_4797 + (_4795 * _258)) * -1.442695f) * ((((_4772.y * _4731) + (_4768.y * _4724)) + _4776.y) + _4780.y))));
            _4903 = max(0.0f, (((((_4731 * _4720.x) + (_4716.x * _4724)) + _4732.x) + _4736.x) - (exp2((_4797 + (_4795 * _252)) * -1.442695f) * ((((_4772.x * _4731) + (_4768.x * _4724)) + _4776.x) + _4780.x))));
            _4904 = max(0.0f, (((((_4468 * _4446.z) + (_4441.z * _4450)) + _4470.z) + _4475.z) - (exp2((_4687 + (_4673 * _263)) * -1.442695f) * ((((_4543.z * _4468) + (_4539.z * _4450)) + _4547.z) + _4551.z))));
            _4905 = max(0.0f, (((((_4468 * _4446.y) + (_4441.y * _4450)) + _4470.y) + _4475.y) - (exp2((_4687 + (_4673 * _258)) * -1.442695f) * ((((_4543.y * _4468) + (_4539.y * _4450)) + _4547.y) + _4551.y))));
            _4906 = max(0.0f, (((((_4468 * _4446.x) + (_4441.x * _4450)) + _4470.x) + _4475.x) - (exp2((_4687 + (_4673 * _252)) * -1.442695f) * ((((_4543.x * _4468) + (_4539.x * _4450)) + _4547.x) + _4551.x))));
          } else {
            _4901 = 0.0f;
            _4902 = 0.0f;
            _4903 = 0.0f;
            _4904 = 0.0f;
            _4905 = 0.0f;
            _4906 = 0.0f;
          }
          _4919 = (((_109 * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f)) + ((_cloudScatteringCoefficient / _distanceScale) * (_108 + _107));
          _4923 = exp2((_4919 + (_252 * _110)) * -1.442695f);
          _4927 = exp2((_4919 + (_258 * _110)) * -1.442695f);
          _4931 = exp2((_4919 + (_263 * _110)) * -1.442695f);
          _4938 = (((_4906 * _286) * _4923) + _113) + (((_4923 * _4903) + _116) * _357);
          _4945 = (((_4905 * _286) * _4927) + _112) + (((_4927 * _4902) + _115) * _357);
          _4952 = (((_4904 * _286) * _4931) + _111) + (((_4931 * _4901) + _114) * _357);
          if (!((_atmosphereSeaBaseline - _viewPos.y) <= 0.0f)) {
            _4962 = saturate(max(0.0f, ((_atmosphereSeaBaseline - _viewPos.y) - (_124 * _58))) * 2.0f);  // [sem: expr_sat]
            _4971 = (((1.0f - ((_4962 * _4962) * (3.0f - (_4962 * 2.0f)))) * 0.98f) + 0.02f);
          } else {
            _4971 = 1.0f;
          }
          _4991 = (_4971 * (((_4945 * 0.10958f) + (_4938 * 0.02062f)) + (_4952 * 0.8698f)));
          _4992 = (_4971 * (((_4945 * 0.91636f) + (_4938 * 0.0702f)) + (_4952 * 0.01345f)));
          _4993 = (_4971 * (((_4945 * 0.33951f) + (_4938 * 0.61312f)) + (_4952 * 0.04737f)));
          _4994 = _107;
          _4995 = _108;
          _4996 = _109;
          _4997 = _110;
          _4998 = _111;
          _4999 = _112;
          _5000 = _113;
          _5001 = _114;
          _5002 = _115;
          _5003 = _116;
          _5004 = _118;
          _5005 = _119;
        } else {
          _4991 = 0.0f;
          _4992 = 0.0f;
          _4993 = 0.0f;
          _4994 = _107;
          _4995 = _108;
          _4996 = _109;
          _4997 = _110;
          _4998 = _111;
          _4999 = _112;
          _5000 = _113;
          _5001 = _114;
          _5002 = _115;
          _5003 = _116;
          _5004 = _118;
          _5005 = _119;
        }
      }
    } else {
      _4991 = 0.0f;
      _4992 = 0.0f;
      _4993 = 0.0f;
      _4994 = _107;
      _4995 = _108;
      _4996 = _109;
      _4997 = _110;
      _4998 = _111;
      _4999 = _112;
      _5000 = _113;
      _5001 = _114;
      _5002 = _115;
      _5003 = _116;
      _5004 = _118;
      _5005 = _119;
    }
  } else {
    _4991 = 0.0f;
    _4992 = 0.0f;
    _4993 = 0.0f;
    _4994 = _107;
    _4995 = _108;
    _4996 = _109;
    _4997 = _110;
    _4998 = _111;
    _4999 = _112;
    _5000 = _113;
    _5001 = _114;
    _5002 = _115;
    _5003 = _116;
    _5004 = _118;
    _5005 = _119;
  }
  _5006 = (uint)(SV_DispatchThreadID.x) << 2;
  __3__39__0__1__g_precomputedAmbientCacheUAV[_5006] = float4(_4997, _4996, _4995, _4994);
  _5010 = (int)(_5006) | (int)(2);
  __3__39__0__1__g_precomputedAmbientCacheUAV[_5010] = float4(_5000, _4999, _4998, select((_5004 != 0), 0.0f, 1.0f));
  _5012 = (int)(_5006) | (int)(3);
  __3__39__0__1__g_precomputedAmbientCacheUAV[_5012] = float4(_5003, _5002, _5001, _5005);
  if (_temporalReprojectionParams.w > 0.5f) {
    _5022 = _earthRadius + _atmosphereThickness;
    _5025 = _viewPos.y + _earthRadius;
    _5029 = dot(float3(_viewPos.x, _5025, _viewPos.z), float3(_63, _58, _65)) * 2.0f;
    _5030 = dot(float3(_viewPos.x, _5025, _viewPos.z), float3(_viewPos.x, _5025, _viewPos.z));
    _5031 = _5029 * _5029;
    _5035 = _5031 - ((_5030 - (_5022 * _5022)) * _135);
    if (!(_5035 < 0.0f)) {
      _5040 = _128 * 2.0f;
      _5041 = (sqrt(_5035) - _5029) / _5040;
      if (!(_5041 <= 0.0f)) {
        _5047 = (1.0f - _sunSizeAngleCosine) * 6.2831855f;
        _5059 = acos(min(max(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)), -1.0f), 1.0f));
        _5060 = _5059 * 57.295776f;
        _5066 = _sunSizeAngle * _sunSizeAngle;
        if (!(_5060 > (_moonSizeAngle + _sunSizeAngle))) {
          _5068 = _moonSizeAngle * _moonSizeAngle;
          if (!(_5060 <= (abs(_sunSizeAngle - _moonSizeAngle) + 0.05f))) {
            _5074 = _5060 * _5060;
            _5075 = _5059 * 114.59155f;
            _5083 = acos(min(max((((_5074 + _5066) - _5068) / (_5075 * _sunSizeAngle)), -1.0f), 1.0f)) * 2.0f;
            _5091 = acos(min(max((((_5074 - _5066) + _5068) / (_moonSizeAngle * _5075)), -1.0f), 1.0f)) * 2.0f;
            _5106 = (((((_5091 * _5068) + (_5083 * _5066)) - (sin(_5083) * _5066)) - (sin(_5091) * _5068)) * 0.5f);
          } else {
            _5106 = (min(_5066, _5068) * 3.1415927f);
          }
        } else {
          _5106 = 0.0f;
        }
        _5108 = min(16.0f, (_atmosphereThickness + -16.0f));
        _5109 = max(_5108, 0.0f);
        _5116 = (-0.0f - sqrt((_5109 + (_earthRadius * 2.0f)) * _5109)) / (_5109 + _earthRadius);
        _5117 = (_5116 < 1.0f);
        if (!_5117) {
          _5129 = ((exp2(log2(saturate((_5116 + -1.0f) / (_5116 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        } else {
          _5129 = 0.99609375f;
        }
        _5138 = (exp2(log2(saturate((_5108 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
        // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
        // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
        _5148 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
        _5154 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
        _5159 = (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3);
        // RenoDX: <<< [Patch: SkySpectralOzone]
        _5164 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_5138, _5129), 0.0f))).x) * -1.442695f;
        _5182 = ((1.0f - saturate(_5106 / (_5066 * 3.1415927f))) * _5047) * ((_sunLightIntensity * _sunLightPreset) / (dot(float3(exp2(_5164 * _5148), exp2(_5164 * _5154), exp2(_5164 * _5159)), float3(0.299f, 0.587f, 0.114f)) * _5047));
        _5183 = dot(float3(_63, _58, _65), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
        _5186 = _cloudPhaseConstFront * _cloudPhaseConstFront;
        _5188 = (_5183 * _5183) + 1.0f;
        _5189 = _5186 + 1.0f;
        _5195 = (((1.0f - _5186) * 3.0f) / ((_5186 + 2.0f) * 2.0f)) * 0.07957747f;
        _5203 = (_5188 / exp2(log2(_5189 - ((_5183 * 2.0f) * _cloudPhaseConstFront)) * 1.5f)) * _5195;
        _5205 = _cloudPhaseConstBack * _cloudPhaseConstBack;
        _5206 = _5205 + 1.0f;
        _5207 = _cloudPhaseConstBack * -2.0f;
        _5213 = (((1.0f - _5205) * 3.0f) / ((_5205 + 2.0f) * 2.0f)) * 0.039788734f;
        _5221 = ((_5188 / exp2(log2(_5206 - (_5207 * _5183)) * 1.5f)) * _5213) + _5203;
        _5225 = (1.0f - _moonSizeAngleCosine) * 6.2831855f;
        if (!_5117) {
          _5237 = ((exp2(log2(saturate((_5116 + -1.0f) / (_5116 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        } else {
          _5237 = 0.99609375f;
        }
        _5240 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_5138, _5237), 0.0f))).x) * -1.442695f;
        _5253 = ((_moonLightIntensity * _moonLightPreset) / (dot(float3(exp2(_5240 * _5148), exp2(_5240 * _5154), exp2(_5240 * _5159)), float3(0.299f, 0.587f, 0.114f)) * _5225)) * _5225;
        _5254 = dot(float3(_63, _58, _65), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
        _5256 = (_5254 * _5254) + 1.0f;
        _5257 = _5254 * 2.0f;
        _5264 = (_5256 / exp2(log2(_5189 - (_5257 * _cloudPhaseConstFront)) * 1.5f)) * _5195;
        _5272 = ((_5256 / exp2(log2(_5206 - (_5254 * _5207)) * 1.5f)) * _5213) + _5264;
        _5275 = min(_cloudVisibleRange, _cloudVisibleRange);
        if (_75) {
          _5282 = log2(exp2(log2(max(1.0f, (_cloudVisibleRange * 0.00033333333f))) * 0.0078125f));
          _5284 = 0.0f;
          _5285 = 0.0f;
          _5286 = 0.0f;
          _5287 = 0.0f;
          _5288 = 1;
          _5289 = 128.0f;
          _5290 = 0;
          _5291 = 0;
          _5292 = 0.0f;
          _5293 = 0.0f;
          _5294 = 0.0f;
          _5295 = 0.0f;
          _5296 = 0.0f;
          _5297 = 0.0f;
          _5298 = 0.0f;
          _5299 = 0.0f;
          _5300 = 0.0f;
          _5301 = 0.0f;
          while(true) {
            _5302 = (float)((int)(_5291));
            _5316 = (((exp2(select(((uint)_5291 < (uint)12), (_5302 * 0.33f), (_5302 + -8.039999f)) * _5282) + -1.0f) * (_5275 + -128.0f)) / (exp2(_5282 * 128.0f) + -1.0f)) + 128.0f;
            _5317 = min(_5316, _5041);
            _5319 = max(0.0f, (_5317 - _5289));
            _5321 = (_5319 * _72) + _5289;
            _5324 = _distanceScale * _5319;
            _5325 = _5321 * _63;
            _5328 = _5325 + _viewPos.x;
            _5329 = _5321 * _58;
            _5331 = _viewPos.y + _5329;
            _5332 = _5321 * _65;
            _5334 = _viewPos.z + _5332;
            // [sem: _3__36__0__0__g_climateTex2_sampleLod]
            _5356 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_5328 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_5334 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
            _5360 = _5317 * _63;
            _5361 = _viewPos.x + _5360;
            _5363 = _viewPos.y + (_5317 * _58);
            _5364 = _5317 * _65;
            _5365 = _viewPos.z + _5364;
            _5369 = sqrt((_5364 * _5364) + (_5360 * _5360));
            _5376 = _cloudAltitude - (max(((_5369 * _5369) + -400000.0f), 0.0f) * 1e-06f);
            _5379 = _cloudDetailScale * 0.004f;
            _5382 = _cloudBaseScale * 0.0004f;
            _5385 = _earthRadius + _5363;
            _5396 = ((sqrt(((_5365 * _5365) + (_5361 * _5361)) + (_5385 * _5385)) - _5376) - _earthRadius) / _cloudThickness;
            if (!((_5396 < 0.0f) || (_5396 > 1.0f))) {
              _5410 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
              _5411 = _5363 - _5376;
              _5412 = _5379 / _5382;
              _5413 = _5412 * _5382;
              _5414 = _5410 * _5412;
              _5418 = saturate(max((_5369 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
              _5422 = (_cloudDetailScale * 0.001884f) * (4.0f - (_5418 * 3.0f));
              _5423 = _5413 * 4.355f;
              _5428 = 1.0f - sqrt(saturate((1.0f - _5396) * 1.4285715f));
              _5465 = (((((_5418 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5379 * _5361) - (_5413 * _cloudScroll.x)), ((_5411 * _5379) - _5414), ((_5379 * _5365) - (_5413 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5422 * _5361) - (_5423 * _cloudScroll.x)), ((_5422 * _5411) - (_5414 * 4.355f)), ((_5422 * _5365) - (_5423 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_5396 * 4.0f) * 0.8f) + 0.2f);
              _5506 = (saturate(((saturate(_5396 * 10.0f) * saturate(saturate(((_5356.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_5382 * (_5361 - _cloudScroll.x)), ((_5382 * _5411) - _5410), (_5382 * (_5365 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_5428 * 0.5f), ((_5428 * _5428) * _5428)))) - _5465) / (1.0f - _5465)) * _cloudAlpha);
            } else {
              _5506 = 0.0f;
            }
            _5508 = (_cloudFadeRange > 1e-05f);
            if (_5508) {
              _5518 = saturate((((1.0f - _cloudNear) * _5369) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
            } else {
              _5518 = 1.0f;  // [sem: expr_sat]
            }
            _5520 = ((_5518 * _5506) > 0.001f);
            if ((_5290 != 0) && _5520) {
              _7017 = ((int)((uint)((uint)(_5291)) + (uint)(-2)));
              _7018 = _5284;
              _7019 = _5285;
              _7020 = _5286;
              _7021 = _5287;
              _7022 = _5288;
              _7023 = 0;
              _7024 = _5289;
              _7025 = 0;
              _7026 = _5292;
              _7027 = _5293;
              _7028 = _5294;
              _7029 = _5295;
              _7030 = _5296;
              _7031 = _5297;
              _7032 = _5298;
              _7033 = _5299;
              _7034 = _5300;
              _7035 = _5301;
              _7036 = (uint)((uint)(_7017)) + (uint)(1);
              if (((uint)_7036 < (uint)128) && (_7022 != 0)) {
                _5284 = _7018;
                _5285 = _7019;
                _5286 = _7020;
                _5287 = _7021;
                _5288 = _7022;
                _5289 = _7024;
                _5290 = _7025;
                _5291 = _7036;
                _5292 = _7026;
                _5293 = _7027;
                _5294 = _7028;
                _5295 = _7029;
                _5296 = _7030;
                _5297 = _7031;
                _5298 = _7032;
                _5299 = _7033;
                _5300 = _7034;
                _5301 = _7035;
                continue;
              } else {
                _7041 = _7018;
                _7042 = _7019;
                _7043 = _7020;
                _7044 = _7021;
                _7045 = _7023;
                _7046 = _7026;
                _7047 = _7027;
                _7048 = _7028;
                _7049 = _7029;
                _7050 = _7030;
                _7051 = _7031;
                _7052 = _7032;
                _7053 = _7033;
                _7054 = _7034;
                _7055 = _7035;
              }
            } else {
              _5529 = select(((uint)_5291 < (uint)126), (((int)(uint)(_5520)) ^ 1), 0);
              _5530 = (uint)((uint)(_5529)) + (uint)((uint)(_5291));
              _5531 = _cloudThickness + _cloudAltitude;
              _5532 = _earthRadius + _5331;
              _5533 = _5328 * _5328;
              _5534 = _5334 * _5334;
              _5538 = sqrt((_5534 + _5533) + (_5532 * _5532));
              _5539 = _5328 / _5538;
              _5540 = _5532 / _5538;
              _5541 = _5334 / _5538;
              _5542 = _5538 - _earthRadius;
              if (_5542 > 0.0f) {
                _5545 = dot(float3(_5539, _5540, _5541), float3(_63, _58, _65));
                _5550 = min(max(_5542, 16.0f), (_atmosphereThickness + -16.0f));
                _5551 = max(_5550, 0.0f);
                _5558 = (-0.0f - sqrt((_5551 + (_earthRadius * 2.0f)) * _5551)) / (_5551 + _earthRadius);
                _5559 = (_5545 > _5558);
                if (_5559) {
                  _5581 = ((exp2(log2(saturate((_5545 - _5558) / (1.0f - _5558))) * 0.2f) * 0.4921875f) + 0.50390625f);
                } else {
                  _5581 = ((exp2(log2(saturate((_5558 - _5545) / (_5558 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
                }
                _5590 = (exp2(log2(saturate((_5550 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
                // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
                _5602 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5590, _5581, ((1.0f - exp2(-1.1541561f - (dot(float3(_5539, _5540, _5541), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
                if (_5559) {
                  _5627 = ((exp2(log2(saturate((_5545 - _5558) / (1.0f - _5558))) * 0.2f) * 0.4921875f) + 0.50390625f);
                } else {
                  _5627 = ((exp2(log2(saturate((_5558 - _5545) / (_5558 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
                }
                // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
                _5638 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5590, _5627, ((1.0f - exp2(-1.1541561f - (dot(float3(_5539, _5540, _5541), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
                _5646 = (_5638.z * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _5647 = (_5638.y * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _5648 = (_5638.x * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _5649 = _5602.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _5650 = _5602.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _5651 = _5602.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              } else {
                _5646 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _5647 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _5648 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _5649 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _5650 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _5651 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              }
              _5652 = max(_5542, 0.01f);
              _5653 = -0.0f - _5652;
              _5658 = exp2((_5653 / _rayleighScaledHeight) * 1.442695f);
              _5663 = exp2((_5653 / _mieScaledHeight) * 1.442695f);
              _5666 = (_5332 * _5332) + (_5325 * _5325);
              _5667 = sqrt(_5666);
              _5671 = max(((_5667 * _5667) + -400000.0f), 0.0f) * 1e-06f;
              _5672 = _cloudAltitude - _5671;
              _5675 = ((_5538 - _earthRadius) - _5672) / _cloudThickness;
              if (!((_5675 < 0.0f) || (_5675 > 1.0f))) {
                _5689 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                _5690 = _5331 - _5672;
                _5691 = _5379 / _5382;
                _5692 = _5691 * _5382;
                _5693 = _5689 * _5691;
                _5701 = (_cloudDetailScale * 0.001884f) * (4.0f - (saturate(max((_5667 + -2500.0f), 0.0f) * 0.05f) * 3.0f));
                _5702 = _5692 * 4.355f;
                _5707 = 1.0f - sqrt(saturate((1.0f - _5675) * 1.4285715f));
                _5741 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5379 * _5328) - (_5692 * _cloudScroll.x)), ((_5690 * _5379) - _5693), ((_5379 * _5334) - (_5692 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5701 * _5328) - (_5702 * _cloudScroll.x)), ((_5701 * _5690) - (_5693 * 4.355f)), ((_5701 * _5334) - (_5702 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_5675 * 4.0f) * 0.8f) + 0.2f);
                _5782 = (saturate(((saturate(_5675 * 10.0f) * saturate(saturate(((_5356.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_5382 * (_5328 - _cloudScroll.x)), ((_5690 * _5382) - _5689), (_5382 * (_5334 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_5707 * 0.5f), ((_5707 * _5707) * _5707)))) - _5741) / (1.0f - _5741)) * _cloudAlpha);
              } else {
                _5782 = 0.0f;
              }
              if (_5508) {
                _5792 = saturate(((_5667 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
              } else {
                _5792 = 1.0f;  // [sem: expr_sat]
              }
              _5793 = _5792 * _5782;
              _5796 = sqrt(_5666 + (_5329 * _5329));
              _5800 = max(1e-06f, (_heightFogScale * 0.0025f));
              _5802 = _5800 * _cloudScroll.x;
              _5804 = _5800 * _cloudScroll.y;
              _5805 = _5800 * _5328;
              _5806 = _5800 * _5331;
              _5807 = _5800 * _5334;
              // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
              _5817 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5805 * 6.393882f) - (_5802 * 1.871f)), (_5806 * 6.393882f), ((_5807 * 6.393882f) - (_5804 * 1.871f))), 0.0f);
              _5820 = _heightFogFalloff * -0.14426951f;
              _5859 = (((saturate(_5796 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5805 * 0.5127f) - _5802), (_5806 * 0.5127f), ((_5807 * 0.5127f) - _5804)), 0.0f)).x))) * ((saturate((_5796 + -300.0f) * 0.0025f) * (0.5f - _5817.x)) + _5817.x)) * ((exp2(max(0.001f, ((_5652 - _heightScaleMin) - ((_heightScaleMax - _heightScaleMin) * _5356.z))) * _5820) * _5356.y) + (exp2(max(0.001f, (_5652 - _heightFogBaseline)) * _5820) * _heightFogDensity));
              _5860 = _5331 - _cloudAltitude;
              _5862 = (_5671 + _5860) / _cloudThickness;
              if (!(_sunDirection.y > 0.0f)) {
                _5871 = (_sunDirection.y > _moonDirection.y);
              } else {
                _5871 = true;
              }
              _5875 = select(_5871, _sunDirection.x, _moonDirection.x);
              _5877 = select(_5871, _sunDirection.y, _moonDirection.y);
              _5880 = select(_5871, _sunDirection.z, _moonDirection.z);
              _5881 = (_5877 > 0.0f);
              _5890 = ((0.5f - (((float)((int)((int)((int)(uint)(_5881)) - (int)((int)(uint)((int)(_5877 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _5672;
              if (_5331 < _5672) {
                _5893 = dot(float3(0.0f, 1.0f, 0.0f), float3(_5875, _5877, _5880));
                _5899 = select((abs(_5893) < 1e-08f), 1e+08f, ((_5890 - dot(float3(0.0f, 1.0f, 0.0f), float3(_5328, _5331, _5334))) / _5893));
                _5905 = ((_5899 * _5880) + _5334);
                _5906 = _5890;
                _5907 = ((_5899 * _5875) + _5328);
              } else {
                _5905 = _5334;
                _5906 = _5331;
                _5907 = _5328;
              }
              _5909 = _cloudScatteringCoefficient / _distanceScale;
              _5910 = abs(_5877);
              _5912 = saturate(_5910 * 4.0f);  // [sem: expr_sat]
              _5930 = (_5912 * _5912) * exp2(((_distanceScale * -1.442695f) * _5909) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_5907 - _viewPos.x) * 5e-05f) + 0.5f), ((_5906 - _cloudAltitude) / _cloudThickness), (((_5905 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x));
              _5936 = ((1.0f - _5930) * saturate((_5860 - _cloudThickness) * 0.1f)) + _5930;
              _5937 = -0.0f - _5909;
              _5940 = (log2(_5936) * 0.6931472f) / _5937;
              if ((_5862 <= 1.0f) && ((_5793 > 0.001f) && (_5862 >= 0.0f))) {
                _5948 = (_5331 - _5672) / _cloudThickness;
                if (!((_5948 < 0.0f) || (_5948 > 1.0f))) {
                  if (_5910 > 0.001f) {
                    _5961 = min(300.0f, (((_5672 - _5331) + select(_5881, _cloudThickness, 0.0f)) / _5877));
                  } else {
                    _5961 = 300.0f;
                  }
                  _5962 = _5961 * 0.2f;
                  _5963 = _5962 * _5875;
                  _5964 = _5962 * _5877;
                  _5965 = _5962 * _5880;
                  _5973 = 0;
                  _5974 = ((_5965 * 0.5f) + _5334);
                  _5975 = ((_5964 * 0.5f) + _5331);
                  _5976 = ((_5963 * 0.5f) + _5328);
                  _5977 = _5965;
                  _5978 = _5964;
                  _5979 = _5963;
                  _5980 = _5962;
                  _5981 = 0.0f;
                  while(true) {
                    _5984 = _5976 - _viewPos.x;
                    _5986 = _5974 - _viewPos.z;
                    _5990 = sqrt((_5986 * _5986) + (_5984 * _5984));
                    _5997 = _cloudAltitude - (max(((_5990 * _5990) + -400000.0f), 0.0f) * 1e-06f);
                    _6000 = _cloudDetailScale * 0.004f;
                    _6003 = _cloudBaseScale * 0.0004f;
                    _6006 = _earthRadius + _5975;
                    _6017 = ((sqrt(((_5976 * _5976) + (_5974 * _5974)) + (_6006 * _6006)) - _5997) - _earthRadius) / _cloudThickness;
                    if (!((_6017 < 0.0f) || (_6017 > 1.0f))) {
                      _6031 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                      _6032 = _5975 - _5997;
                      _6033 = _6000 / _6003;
                      _6034 = _6033 * _6003;
                      _6035 = _6031 * _6033;
                      _6039 = saturate(max((_5990 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                      _6043 = (_cloudDetailScale * 0.001884f) * (4.0f - (_6039 * 3.0f));
                      _6044 = _6034 * 4.355f;
                      _6049 = 1.0f - sqrt(saturate((1.0f - _6017) * 1.4285715f));
                      // [sem: expr_sat]
                      _6108 = saturate(_6017 * 10.0f) * saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_5976 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + (_5974 / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_5976 - _cloudScroll.x) * _6003), ((_6003 * _6032) - _6031), ((_5974 - _cloudScroll.y) * _6003)), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_6049 * 0.5f), ((_6049 * _6049) * _6049)));
                      _6139 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_6043 * _5976) - (_cloudScroll.x * _6044)), ((_6043 * _6032) - (_6035 * 4.355f)), ((_6043 * _5974) - (_cloudScroll.y * _6044))), 0.0f)).x) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_6000 * _5976) - (_cloudScroll.x * _6034)), ((_6000 * _6032) - _6035), ((_6000 * _5974) - (_cloudScroll.y * _6034))), 0.0f)).x))) * ((saturate(_6017 * 4.0f) * 0.8f) + 0.2f);
                      _6142 = _6139 * ((_6039 * 0.4f) + 0.1f);
                      _6155 = (saturate((_6108 - _6142) / (1.0f - _6142)) * _cloudAlpha);
                      _6156 = (saturate((_6108 - _6139) / (1.0f - _6139)) * _cloudAlpha);
                    } else {
                      _6155 = 0.0f;
                      _6156 = 0.0f;
                    }
                    _6170 = (((exp2((((_5980 * -0.0072134747f) * _5981) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (_6156 - _6155)) + _6155) * _5980) + _5981;
                    _6171 = _5979 + _5976;
                    _6172 = _5978 + _5975;
                    _6173 = _5977 + _5974;
                    _6174 = _5980 * 1.3f;
                    _6175 = _5979 * 1.3f;
                    _6176 = _5978 * 1.3f;
                    _6177 = _5977 * 1.3f;
                    _6178 = (int)(_5973) + (int)(1);
                    if (!(_6178 == 6)) {
                      _5973 = _6178;
                      _5974 = _6173;
                      _5975 = _6172;
                      _5976 = _6171;
                      _5977 = _6177;
                      _5978 = _6176;
                      _5979 = _6175;
                      _5980 = _6174;
                      _5981 = _6170;
                      continue;
                    }
                    _6183 = (_6170 * _distanceScale);
                    break;
                  }
                } else {
                  _6183 = 0.0f;
                }
                _6184 = max(_5940, _6183);
                _6187 = _5328 - _viewPos.x;
                _6189 = _5334 - _viewPos.z;
                _6190 = _6187 * _6187;
                _6191 = _6189 * _6189;
                _6193 = sqrt(_6191 + _6190);
                _6204 = ((_5331 - _cloudAltitude) + (max(((_6193 * _6193) + -400000.0f), 0.0f) * 1e-06f)) / _cloudThickness;
                if (!((_6204 < 0.0f) || (_6204 > 1.0f))) {
                  // [sem: _3__36__0__0__g_climateTex2_sampleLod]
                  _6230 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_5328 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_5334 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                  _6232 = _5328 + 50.0f;
                  _6233 = _5331 + 200.0f;
                  _6234 = _6232 - _viewPos.x;
                  _6237 = sqrt((_6234 * _6234) + _6191);
                  _6242 = _cloudAltitude - (max(((_6237 * _6237) + -400000.0f), 0.0f) * 1e-06f);
                  _6245 = _cloudDetailScale * 0.004f;
                  _6248 = _cloudBaseScale * 0.0004f;
                  _6251 = _earthRadius + _6233;
                  _6252 = _6251 * _6251;
                  _6259 = ((sqrt(((_6232 * _6232) + _5534) + _6252) - _6242) - _earthRadius) / _cloudThickness;
                  if (!((_6259 < 0.0f) || (_6259 > 1.0f))) {
                    _6273 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                    _6274 = _6233 - _6242;
                    _6275 = _6245 / _6248;
                    _6276 = _6275 * _6248;
                    _6277 = _6273 * _6275;
                    _6281 = saturate(max((_6237 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                    _6285 = (_cloudDetailScale * 0.001884f) * (4.0f - (_6281 * 3.0f));
                    _6286 = _6276 * 4.355f;
                    _6291 = 1.0f - sqrt(saturate((1.0f - _6259) * 1.4285715f));
                    _6328 = (((((_6281 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_6245 * _6232) - (_6276 * _cloudScroll.x)), ((_6274 * _6245) - _6277), ((_6245 * _5334) - (_6276 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_6285 * _6232) - (_6286 * _cloudScroll.x)), ((_6285 * _6274) - (_6277 * 4.355f)), ((_6285 * _5334) - (_6286 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_6259 * 4.0f) * 0.8f) + 0.2f);
                    _6369 = (saturate(((saturate(_6259 * 10.0f) * saturate(saturate(((_6230.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_6248 * (_6232 - _cloudScroll.x)), ((_6248 * _6274) - _6273), (_6248 * (_5334 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_6291 * 0.5f), ((_6291 * _6291) * _6291)))) - _6328) / (1.0f - _6328)) * _cloudAlpha);
                  } else {
                    _6369 = 0.0f;
                  }
                  _6371 = (_cloudFadeRange > 1e-05f);
                  if (_6371) {
                    _6381 = saturate(((_6237 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                  } else {
                    _6381 = 1.0f;  // [sem: expr_sat]
                  }
                  _6382 = _5334 + -50.0f;
                  _6383 = _6382 - _viewPos.z;
                  _6386 = sqrt((_6383 * _6383) + _6190);
                  _6391 = _cloudAltitude - (max(((_6386 * _6386) + -400000.0f), 0.0f) * 1e-06f);
                  _6398 = ((sqrt(((_6382 * _6382) + _5533) + _6252) - _earthRadius) - _6391) / _cloudThickness;
                  if (!((_6398 < 0.0f) || (_6398 > 1.0f))) {
                    _6412 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                    _6413 = _6233 - _6391;
                    _6414 = _6245 / _6248;
                    _6415 = _6414 * _6248;
                    _6416 = _6412 * _6414;
                    _6420 = saturate(max((_6386 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                    _6424 = (_cloudDetailScale * 0.001884f) * (4.0f - (_6420 * 3.0f));
                    _6425 = _6415 * 4.355f;
                    _6430 = 1.0f - sqrt(saturate((1.0f - _6398) * 1.4285715f));
                    _6467 = (((((_6420 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_6245 * _5328) - (_6415 * _cloudScroll.x)), ((_6413 * _6245) - _6416), ((_6245 * _6382) - (_6415 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_6424 * _5328) - (_6425 * _cloudScroll.x)), ((_6424 * _6413) - (_6416 * 4.355f)), ((_6424 * _6382) - (_6425 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_6398 * 4.0f) * 0.8f) + 0.2f);
                    _6508 = (saturate(((saturate(_6398 * 10.0f) * saturate(saturate(((_6230.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_6248 * (_5328 - _cloudScroll.x)), ((_6413 * _6248) - _6412), (_6248 * (_6382 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_6430 * 0.5f), ((_6430 * _6430) * _6430)))) - _6467) / (1.0f - _6467)) * _cloudAlpha);
                  } else {
                    _6508 = 0.0f;
                  }
                  if (_6371) {
                    _6518 = saturate(((_6386 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                  } else {
                    _6518 = 1.0f;  // [sem: expr_sat]
                  }
                  _6532 = ((((_6518 * _6508) + (_6381 * _6369)) * 20.0f) * _distanceScale);
                  _6533 = _6184;
                } else {
                  _6532 = 0.0f;
                  _6533 = _6184;
                }
              } else {
                _6532 = ((log2(max(_5936, 0.5f)) * 0.6931472f) / _5937);
                _6533 = _5940;
              }
              _6534 = dot(float3(_5539, _5540, _5541), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
              _6538 = min(max(_5652, 16.0f), (_atmosphereThickness + -16.0f));
              _6539 = max(_6538, 0.0f);
              _6548 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _6539) * _6539)) / (_earthRadius + _6539);
              if (_6534 > _6548) {
                _6571 = ((exp2(log2(saturate((_6534 - _6548) / (1.0f - _6548))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _6571 = ((exp2(log2(saturate((_6548 - _6534) / (_6548 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              _6580 = (exp2(log2(saturate((_6538 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
              // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
              _6583 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_6580, _6571), 0.0f);
              _6586 = dot(float3(_5539, _5540, _5541), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
              if (_6586 > _6548) {
                _6609 = ((exp2(log2(saturate((_6586 - _6548) / (1.0f - _6548))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _6609 = ((exp2(log2(saturate((_6548 - _6586) / (_6548 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
              _6610 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_6580, _6609), 0.0f);
              _6618 = saturate((1.0f - saturate(_5321 / _5275)) * 10.0f) * _5793;
              _6619 = _5324 * 0.5f;
              _6622 = ((_5658 + _5284) * _6619) + _5298;
              _6625 = ((_5663 + _5285) * _6619) + _5299;
              _6628 = ((_6618 + _5286) * _6619) + _5300;
              _6631 = ((_5859 + _5287) * _6619) + _5301;
              _6632 = _6628 + _6631;
              _6633 = _6583.x + _6622;
              _6638 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
              _6641 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
              _6643 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
              _6645 = _mieAerosolDensity * 2e-05f;
              _6648 = (_mieAerosolAbsorption + 1.0f) * _6645;
              _6650 = (_6583.y + _6625) * _6648;
              _6655 = _cloudScatteringCoefficient / _distanceScale;
              _6657 = (_6632 + _6533) * _6655;
              // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
              // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
              _6661 = (_6638 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
              // RenoDX: <<< [Patch: SkySpectralOzone]
              _6662 = _6661 * _6633;
              _6663 = _6657 + _6650;
              // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
              // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
              _6666 = (_6641 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
              // RenoDX: <<< [Patch: SkySpectralOzone]
              _6667 = _6666 * _6633;
              // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
              // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
              _6670 = (_ozoneRatio * SKY_OZONE_3) + (_6643 * 1.9607843e-07f);
              // RenoDX: <<< [Patch: SkySpectralOzone]
              _6671 = _6670 * _6633;
              _6674 = exp2((_6662 + _6663) * -1.442695f);
              _6677 = exp2((_6667 + _6663) * -1.442695f);
              _6680 = exp2((_6663 + _6671) * -1.442695f);
              _6681 = _distanceScale * _6655;
              _6692 = 1.0f - exp2((_5859 * -288.539f) * _6681);
              _6693 = _5658 * 1.9607843e-07f;
              _6695 = (_5188 * 0.059683103f) * _6693;
              _6696 = exp2(log2(1.0f - exp2((_6618 * -14.42695f) * _6681)) * 1.25f) * _6618;
              _6697 = _6696 * 64.0f;
              _6698 = _6697 * _5203;
              _6701 = ((_5221 * 2.0f) * _5859) * _6692;
              _6705 = ((_6632 + _6532) * _6655) + (_6625 * _6648);
              _6709 = exp2(((_6661 * _6622) + _6705) * -1.442695f);
              _6713 = exp2(((_6666 * _6622) + _6705) * -1.442695f);
              _6717 = exp2((_6705 + (_6670 * _6622)) * -1.442695f);
              _6722 = ((_6713 * 0.33951f) + (_6709 * 0.61312f)) + (_6717 * 0.04737f);
              _6727 = ((_6713 * 0.91636f) + (_6709 * 0.0702f)) + (_6717 * 0.01345f);
              _6732 = ((_6713 * 0.10958f) + (_6709 * 0.02062f)) + (_6717 * 0.8698f);
              _6734 = _6655 * (_6618 + _5859);
              _6736 = (_6638 * _6693) + _6734;
              _6753 = ((((((_volumeFogScatterColor.x * _6701) + _6698) * _6655) + (_6638 * _6695)) * (((_6677 * 0.33951f) + (_6674 * 0.61312f)) + (_6680 * 0.04737f))) + ((_6736 * _5651) * _6722)) * _5324;
              _6755 = (_6641 * _6693) + _6734;
              _6771 = ((((((_volumeFogScatterColor.y * _6701) + _6698) * _6655) + (_6641 * _6695)) * (((_6677 * 0.91636f) + (_6674 * 0.0702f)) + (_6680 * 0.01345f))) + ((_6755 * _5650) * _6727)) * _5324;
              _6773 = _6734 + (_6643 * _6693);
              _6789 = ((((((_volumeFogScatterColor.z * _6701) + _6698) * _6655) + (_6643 * _6695)) * (((_6677 * 0.10958f) + (_6674 * 0.02062f)) + (_6680 * 0.8698f))) + ((_6773 * _5649) * _6732)) * _5324;
              _6790 = _6610.x + _6622;
              _6792 = (_6610.y + _6625) * _6648;
              _6793 = _6661 * _6790;
              _6794 = _6657 + _6792;
              _6795 = _6666 * _6790;
              _6796 = _6670 * _6790;
              _6799 = exp2((_6793 + _6794) * -1.442695f);
              _6802 = exp2((_6795 + _6794) * -1.442695f);
              _6805 = exp2((_6794 + _6796) * -1.442695f);
              _6807 = (_5256 * 0.059683103f) * _6693;
              _6809 = _miePhaseConst * _miePhaseConst;
              _6810 = _6645 * _5663;
              _6825 = ((_6810 * 0.07957747f) * (((1.0f - _6809) * 3.0f) / ((_6809 + 2.0f) * 2.0f))) * (_5256 / exp2(log2((_6809 + 1.0f) - (_miePhaseConst * _5257)) * 1.5f));
              _6831 = ((((_5272 * 2.0f) * _5859) * _6692) + (_6697 * _5264)) * _6655;
              _6850 = (((((_6831 + (_6638 * _6807)) + (_mieScatterColor.x * _6825)) * (((_6802 * 0.33951f) + (_6799 * 0.61312f)) + (_6805 * 0.04737f))) + ((_6722 * _5648) * ((_mieScatterColor.x * _6810) + _6736))) * _5324) + _5292;
              _6868 = (((((_6831 + (_6641 * _6807)) + (_mieScatterColor.y * _6825)) * (((_6802 * 0.91636f) + (_6799 * 0.0702f)) + (_6805 * 0.01345f))) + ((_6727 * _5647) * ((_mieScatterColor.y * _6810) + _6755))) * _5324) + _5293;
              _6886 = (((((_6831 + (_6643 * _6807)) + (_mieScatterColor.z * _6825)) * (((_6802 * 0.10958f) + (_6799 * 0.02062f)) + (_6805 * 0.8698f))) + ((_6732 * _5646) * ((_mieScatterColor.z * _6810) + _6773))) * _5324) + _5294;
              if (_6618 > 0.001f) {
                _6890 = _cloudPhaseConstFront * 0.5f;
                _6891 = _6890 * _6890;
                _6894 = (_6632 + (_6533 * 0.2f)) * _6655;
                _6895 = _6894 + _6650;
                _6898 = exp2((_6662 + _6895) * -1.442695f);
                _6901 = exp2((_6667 + _6895) * -1.442695f);
                _6904 = exp2((_6895 + _6671) * -1.442695f);
                _6911 = _6891 + 1.0f;
                _6920 = (((_6696 * 4.0743666f) * _5324) * _6655) * (((1.0f - _6891) * 3.0f) / ((_6891 + 2.0f) * 2.0f));
                _6921 = (_5188 / exp2(log2(_6911 - (_cloudPhaseConstFront * _5183)) * 1.5f)) * _6920;
                _6922 = _6894 + _6792;
                _6925 = exp2((_6793 + _6922) * -1.442695f);
                _6928 = exp2((_6795 + _6922) * -1.442695f);
                _6931 = exp2((_6922 + _6796) * -1.442695f);
                _6938 = (_5256 / exp2(log2(_6911 - (_cloudPhaseConstFront * _5254)) * 1.5f)) * _6920;
                _6982 = ((_6938 * (((_6928 * 0.10958f) + (_6925 * 0.02062f)) + (_6931 * 0.8698f))) + _6886);
                _6983 = ((_6938 * (((_6928 * 0.91636f) + (_6925 * 0.0702f)) + (_6931 * 0.01345f))) + _6868);
                _6984 = ((_6938 * (((_6928 * 0.33951f) + (_6925 * 0.61312f)) + (_6931 * 0.04737f))) + _6850);
                _6985 = ((_6921 * (((_6901 * 0.10958f) + (_6898 * 0.02062f)) + (_6904 * 0.8698f))) + _6789);
                _6986 = ((_6921 * (((_6901 * 0.91636f) + (_6898 * 0.0702f)) + (_6904 * 0.01345f))) + _6771);
                _6987 = ((_6921 * (((_6901 * 0.33951f) + (_6898 * 0.61312f)) + (_6904 * 0.04737f))) + _6753);
              } else {
                _6982 = _6886;
                _6983 = _6868;
                _6984 = _6850;
                _6985 = _6789;
                _6986 = _6771;
                _6987 = _6753;
              }
              _6994 = saturate(((float)((int)((int)(((float)((uint)((uint)(_5530)))) * 0.33f)))) + _72) * _5182;
              if (!((_5316 < _5041) && (_5331 < _5531))) {
                _7003 = (_viewPos.y > _5531);
              } else {
                _7003 = true;
              }
              _7008 = (exp2((_6655 * -1.442695f) * _6632) < 0.001f);
              _7009 = (int)(uint)(_7008);
              _7011 = (_6994 * _6987) + _5295;
              _7013 = (_6994 * _6986) + _5296;
              _7015 = (_6994 * _6985) + _5297;
              if (!_7008) {
                _7017 = _5530;
                _7018 = _5658;
                _7019 = _5663;
                _7020 = _6618;
                _7021 = _5859;
                _7022 = ((int)(uint)(_7003));
                _7023 = _7009;
                _7024 = _5317;
                _7025 = _5529;
                _7026 = _6984;
                _7027 = _6983;
                _7028 = _6982;
                _7029 = _7011;
                _7030 = _7013;
                _7031 = _7015;
                _7032 = _6622;
                _7033 = _6625;
                _7034 = _6628;
                _7035 = _6631;
                _7036 = (uint)((uint)(_7017)) + (uint)(1);
                if (((uint)_7036 < (uint)128) && (_7022 != 0)) {
                  _5284 = _7018;
                  _5285 = _7019;
                  _5286 = _7020;
                  _5287 = _7021;
                  _5288 = _7022;
                  _5289 = _7024;
                  _5290 = _7025;
                  _5291 = _7036;
                  _5292 = _7026;
                  _5293 = _7027;
                  _5294 = _7028;
                  _5295 = _7029;
                  _5296 = _7030;
                  _5297 = _7031;
                  _5298 = _7032;
                  _5299 = _7033;
                  _5300 = _7034;
                  _5301 = _7035;
                  continue;
                } else {
                  _7041 = _7018;
                  _7042 = _7019;
                  _7043 = _7020;
                  _7044 = _7021;
                  _7045 = _7023;
                  _7046 = _7026;
                  _7047 = _7027;
                  _7048 = _7028;
                  _7049 = _7029;
                  _7050 = _7030;
                  _7051 = _7031;
                  _7052 = _7032;
                  _7053 = _7033;
                  _7054 = _7034;
                  _7055 = _7035;
                }
              } else {
                _7041 = _5658;
                _7042 = _5663;
                _7043 = _6618;
                _7044 = _5859;
                _7045 = _7009;
                _7046 = _6984;
                _7047 = _6983;
                _7048 = _6982;
                _7049 = _7011;
                _7050 = _7013;
                _7051 = _7015;
                _7052 = _6622;
                _7053 = _6625;
                _7054 = _6628;
                _7055 = _6631;
              }
            }
            _7057 = select((_7045 != 0), 1e+06f, _7054);
            _7062 = _earthRadius + _cloudCirrusAltitude;
            _7066 = _5031 - ((_5030 - (_7062 * _7062)) * _135);
            if (!(_7066 < 0.0f)) {
              _7073 = ((sqrt(_7066) - _5029) / _5040);
            } else {
              _7073 = -1.0f;
            }
            _7077 = _5031 - ((_5030 - (_earthRadius * _earthRadius)) * _135);
            if (!(_7077 < 0.0f)) {
              _7084 = ((sqrt(_7077) - _5029) / _5040);
            } else {
              _7084 = -1.0f;
            }
            if ((_7073 >= 0.0f) && (_7084 <= 0.0f)) {
              _7090 = _cloudCirrusScale * 5e-05f;
              _7091 = _7073 * _63;
              _7092 = _7073 * _65;
              _7095 = _viewPos.x + _7091;
              _7096 = _7073 * _58;
              _7098 = _viewPos.y + _7096;
              _7100 = _viewPos.z + _7092;
              _7105 = (_7095 * _7090) - (_cloudScroll.y * 0.0003f);
              _7109 = (_7100 * _7090) - (_cloudScroll.x * 0.0003f);
              // [sem: _3__36__0__0__g_texCirrus_SampleBias]
              _7112 = __3__36__0__0__g_texCirrus.SampleBias(__0__95__0__0__g_samplerAnisotropicWrap, float2(_7105, _7109), -1.0f, int2(0, 0));
              _27[0] = _7112.x;
              _27[1] = _7112.y;
              _27[2] = _7112.z;
              _27[3] = _7112.w;
              _7124 = max(0.01f, ((3.0f - _cloudCirrusDensity) * 20000.0f));
              _7128 = sqrt((_7091 * _7091) + (_7092 * _7092));
              if (!(_7128 > _7124)) {
                _7136 = (1.0f - cos((1.5707964f / _7124) * _7128));
              } else {
                _7136 = 1.0f;
              }
              _7137 = _7136 * _cloudCirrusDensity;
              _27[0] = ((_7112.x * _cloudCirrusWeightR) * _7137);
              _27[1] = ((_7137 * _7112.y) * _cloudCirrusWeightG);
              _27[2] = ((_7137 * _7112.z) * _cloudCirrusWeightB);
              _7166 = ((((sin(_7105 * 1.5f) * 0.5f) * sin(_7109 * 1.5f)) + ((sin(mad(_7109, -0.6f, (_7105 * 0.8f)) * 3.03f) * 0.25f) * sin(mad(_7109, 0.8f, (_7105 * 0.6f)) * 3.03f))) * 1.6000001f) + 1.5f;
              _7169 = (int)(min(max(_7166, 0.0f), 2.0f));
              _7172 = _27[((int)min((uint)(_7169), (uint)(3)))];
              _7183 = (((_27[((int)min((uint)(((int)((int)(_7169) + (int)(1)) % (int)(3))), (uint)(3)))]) - _7172) * saturate(_7166 - ((float)((int)(_7169))))) + _7172;
              _7184 = _7098 + _earthRadius;
              _7185 = _7095 * _7095;
              _7186 = _7100 * _7100;
              _7190 = sqrt((_7186 + _7185) + (_7184 * _7184));
              _7191 = _7095 / _7190;
              _7192 = _7184 / _7190;
              _7193 = _7100 / _7190;
              _7194 = _7190 - _earthRadius;
              if (_7194 > 0.0f) {
                _7197 = dot(float3(_7191, _7192, _7193), float3(_63, _58, _65));
                _7202 = min(max(_7194, 16.0f), (_atmosphereThickness + -16.0f));
                _7203 = max(_7202, 0.0f);
                _7210 = (-0.0f - sqrt((_7203 + (_earthRadius * 2.0f)) * _7203)) / (_7203 + _earthRadius);
                _7211 = (_7197 > _7210);
                if (_7211) {
                  _7233 = ((exp2(log2(saturate((_7197 - _7210) / (1.0f - _7210))) * 0.2f) * 0.4921875f) + 0.50390625f);
                } else {
                  _7233 = ((exp2(log2(saturate((_7210 - _7197) / (_7210 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
                }
                _7242 = (exp2(log2(saturate((_7202 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
                // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
                _7255 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7242, _7233, ((1.0f - exp2(-1.1541561f - (dot(float3(_7191, _7192, _7193), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
                if (_7211) {
                  _7280 = ((exp2(log2(saturate((_7197 - _7210) / (1.0f - _7210))) * 0.2f) * 0.4921875f) + 0.50390625f);
                } else {
                  _7280 = ((exp2(log2(saturate((_7210 - _7197) / (_7210 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
                }
                // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
                _7291 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_7242, _7280, ((1.0f - exp2(-1.1541561f - (dot(float3(_7191, _7192, _7193), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
                _7299 = (_7291.z * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _7300 = (_7291.y * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _7301 = (_7291.x * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _7302 = _7255.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _7303 = _7255.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _7304 = _7255.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              } else {
                _7299 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _7300 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _7301 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _7302 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _7303 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _7304 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              }
              _7305 = max(_7194, 0.01f);
              _7306 = -0.0f - _7305;
              _7311 = exp2((_7306 / _rayleighScaledHeight) * 1.442695f);
              _7316 = exp2((_7306 / _mieScaledHeight) * 1.442695f);
              _7319 = (_7092 * _7092) + (_7091 * _7091);
              _7320 = sqrt(_7319);
              _7324 = max(((_7320 * _7320) + -400000.0f), 0.0f) * 1e-06f;
              _7327 = _cloudAltitude - _7324;
              _7330 = _cloudDetailScale * 0.004f;
              _7333 = _cloudBaseScale * 0.0004f;
              _7338 = ((_7190 - _earthRadius) - _7327) / _cloudThickness;
              if (!((_7338 < 0.0f) || (_7338 > 1.0f))) {
                _7351 = (((_cloudFlow * 0.001f) * _cloudScrollMultiplier) * _time.x) + _cloudSeed;
                _7352 = _7098 - _7327;
                _7353 = _7330 / _7333;
                _7354 = _7353 * _7333;
                _7355 = _7351 * _7353;
                _7363 = (_cloudDetailScale * 0.001884f) * (4.0f - (saturate(max((_7320 + -2500.0f), 0.0f) * 0.05f) * 3.0f));
                _7364 = _7354 * 4.355f;
                _7369 = 1.0f - sqrt(saturate((1.0f - _7338) * 1.4285715f));
                _7401 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_7330 * _7095) - (_7354 * _cloudScroll.x)), ((_7352 * _7330) - _7355), ((_7330 * _7100) - (_7354 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_7363 * _7095) - (_7364 * _cloudScroll.x)), ((_7363 * _7352) - (_7355 * 4.355f)), ((_7363 * _7100) - (_7364 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_7338 * 4.0f) * 0.8f) + 0.2f);
                _7441 = (saturate(((saturate(_7338 * 10.0f) * saturate(saturate(((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_7333 * (_7095 - _cloudScroll.x)), ((_7333 * _7352) - _7351), (_7333 * (_7100 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_7369 * 0.5f), ((_7369 * _7369) * _7369)))) - _7401) / (1.0f - _7401)) * _cloudAlpha);
              } else {
                _7441 = 0.0f;
              }
              if (_cloudFadeRange > 1e-05f) {
                _7453 = saturate((((1.0f - _cloudNear) * _7320) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
              } else {
                _7453 = 1.0f;  // [sem: expr_sat]
              }
              _7456 = sqrt(_7319 + (_7096 * _7096));
              _7460 = max(1e-06f, (_heightFogScale * 0.0025f));
              _7461 = _7460 * _cloudScroll.x;
              _7462 = _7460 * _cloudScroll.y;
              _7463 = _7460 * _7095;
              _7464 = _7460 * _7098;
              _7465 = _7460 * _7100;
              // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
              _7475 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_7463 * 6.393882f) - (_7461 * 1.871f)), (_7464 * 6.393882f), ((_7465 * 6.393882f) - (_7462 * 1.871f))), 0.0f);
              _7506 = ((((saturate(_7456 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_7463 * 0.5127f) - _7461), (_7464 * 0.5127f), ((_7465 * 0.5127f) - _7462)), 0.0f)).x))) * exp2((_heightFogFalloff * -0.14426951f) * max(0.001f, (_7305 - _heightFogBaseline)))) * ((saturate((_7456 + -300.0f) * 0.0025f) * (0.5f - _7475.x)) + _7475.x)) * _heightFogDensity;
              _7507 = _7098 - _cloudAltitude;
              _7509 = (_7507 + _7324) / _cloudThickness;
              if (!(_sunDirection.y > 0.0f)) {
                _7518 = (_sunDirection.y > _moonDirection.y);
              } else {
                _7518 = true;
              }
              _7522 = select(_7518, _sunDirection.x, _moonDirection.x);
              _7524 = select(_7518, _sunDirection.y, _moonDirection.y);
              _7527 = select(_7518, _sunDirection.z, _moonDirection.z);
              _7528 = (_7524 > 0.0f);
              _7537 = ((0.5f - (((float)((int)((int)((int)(uint)(_7528)) - (int)((int)(uint)((int)(_7524 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _7327;
              if (_7098 < _7327) {
                _7540 = dot(float3(0.0f, 1.0f, 0.0f), float3(_7522, _7524, _7527));
                _7546 = select((abs(_7540) < 1e-08f), 1e+08f, ((_7537 - dot(float3(0.0f, 1.0f, 0.0f), float3(_7095, _7098, _7100))) / _7540));
                _7552 = ((_7546 * _7527) + _7100);
                _7553 = _7537;
                _7554 = ((_7546 * _7522) + _7095);
              } else {
                _7552 = _7100;
                _7553 = _7098;
                _7554 = _7095;
              }
              _7557 = _cloudScatteringCoefficient / _distanceScale;
              _7558 = abs(_7524);
              _7560 = saturate(_7558 * 4.0f);  // [sem: expr_sat]
              _7578 = (_7560 * _7560) * exp2(((_distanceScale * -1.442695f) * _7557) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_7554 - _viewPos.x) * 5e-05f) + 0.5f), ((_7553 - _cloudAltitude) / _cloudThickness), (((_7552 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x));
              _7584 = ((1.0f - _7578) * saturate((_7507 - _cloudThickness) * 0.1f)) + _7578;
              _7585 = -0.0f - _7557;
              _7588 = (log2(_7584) * 0.6931472f) / _7585;
              if ((_7509 <= 1.0f) && (((_7453 * _7441) > 0.001f) && (_7509 >= 0.0f))) {
                _7597 = (_7098 - _7327) / _cloudThickness;
                if (!((_7597 < 0.0f) || (_7597 > 1.0f))) {
                  if (_7558 > 0.001f) {
                    _7610 = min(300.0f, (((_7327 - _7098) + select(_7528, _cloudThickness, 0.0f)) / _7524));
                  } else {
                    _7610 = 300.0f;
                  }
                  _7611 = _7610 * 0.2f;
                  _7612 = _7611 * _7522;
                  _7613 = _7611 * _7524;
                  _7614 = _7611 * _7527;
                  _7622 = 0;
                  _7623 = ((_7614 * 0.5f) + _7100);
                  _7624 = ((_7613 * 0.5f) + _7098);
                  _7625 = ((_7612 * 0.5f) + _7095);
                  _7626 = _7614;
                  _7627 = _7613;
                  _7628 = _7612;
                  _7629 = _7611;
                  _7630 = 0.0f;
                  while(true) {
                    _7633 = _7625 - _viewPos.x;
                    _7635 = _7623 - _viewPos.z;
                    _7639 = sqrt((_7635 * _7635) + (_7633 * _7633));
                    _7646 = _cloudAltitude - (max(((_7639 * _7639) + -400000.0f), 0.0f) * 1e-06f);
                    _7649 = _cloudDetailScale * 0.004f;
                    _7652 = _cloudBaseScale * 0.0004f;
                    _7655 = _earthRadius + _7624;
                    _7666 = ((sqrt(((_7625 * _7625) + (_7623 * _7623)) + (_7655 * _7655)) - _7646) - _earthRadius) / _cloudThickness;
                    if (!((_7666 < 0.0f) || (_7666 > 1.0f))) {
                      _7680 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                      _7681 = _7624 - _7646;
                      _7682 = _7649 / _7652;
                      _7683 = _7682 * _7652;
                      _7684 = _7680 * _7682;
                      _7688 = saturate(max((_7639 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                      _7692 = (_cloudDetailScale * 0.001884f) * (4.0f - (_7688 * 3.0f));
                      _7693 = _7683 * 4.355f;
                      _7698 = 1.0f - sqrt(saturate((1.0f - _7666) * 1.4285715f));
                      // [sem: expr_sat]
                      _7757 = saturate(_7666 * 10.0f) * saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_7625 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + (_7623 / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_7625 - _cloudScroll.x) * _7652), ((_7652 * _7681) - _7680), ((_7623 - _cloudScroll.y) * _7652)), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_7698 * 0.5f), ((_7698 * _7698) * _7698)));
                      _7788 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_7692 * _7625) - (_cloudScroll.x * _7693)), ((_7692 * _7681) - (_7684 * 4.355f)), ((_7692 * _7623) - (_cloudScroll.y * _7693))), 0.0f)).x) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_7649 * _7625) - (_cloudScroll.x * _7683)), ((_7649 * _7681) - _7684), ((_7649 * _7623) - (_cloudScroll.y * _7683))), 0.0f)).x))) * ((saturate(_7666 * 4.0f) * 0.8f) + 0.2f);
                      _7791 = _7788 * ((_7688 * 0.4f) + 0.1f);
                      _7804 = (saturate((_7757 - _7791) / (1.0f - _7791)) * _cloudAlpha);
                      _7805 = (saturate((_7757 - _7788) / (1.0f - _7788)) * _cloudAlpha);
                    } else {
                      _7804 = 0.0f;
                      _7805 = 0.0f;
                    }
                    _7819 = (((exp2((((_7629 * -0.0072134747f) * _7630) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (_7805 - _7804)) + _7804) * _7629) + _7630;
                    _7820 = _7628 + _7625;
                    _7821 = _7627 + _7624;
                    _7822 = _7626 + _7623;
                    _7823 = _7629 * 1.3f;
                    _7824 = _7628 * 1.3f;
                    _7825 = _7627 * 1.3f;
                    _7826 = _7626 * 1.3f;
                    _7827 = (int)(_7622) + (int)(1);
                    if (!(_7827 == 6)) {
                      _7622 = _7827;
                      _7623 = _7822;
                      _7624 = _7821;
                      _7625 = _7820;
                      _7626 = _7826;
                      _7627 = _7825;
                      _7628 = _7824;
                      _7629 = _7823;
                      _7630 = _7819;
                      continue;
                    }
                    _7832 = (_7819 * _distanceScale);
                    break;
                  }
                } else {
                  _7832 = 0.0f;
                }
                _7833 = max(_7588, _7832);
                _7836 = _7095 - _viewPos.x;
                _7838 = _7100 - _viewPos.z;
                _7839 = _7836 * _7836;
                _7840 = _7838 * _7838;
                _7842 = sqrt(_7840 + _7839);
                _7853 = ((_7098 - _cloudAltitude) + (max(((_7842 * _7842) + -400000.0f), 0.0f) * 1e-06f)) / _cloudThickness;
                if (!((_7853 < 0.0f) || (_7853 > 1.0f))) {
                  // [sem: _3__36__0__0__g_climateTex2_sampleLod]
                  _7879 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_7095 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_7100 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                  _7881 = _7095 + 50.0f;
                  _7882 = _7098 + 200.0f;
                  _7883 = _7881 - _viewPos.x;
                  _7886 = sqrt((_7883 * _7883) + _7840);
                  _7891 = _cloudAltitude - (max(((_7886 * _7886) + -400000.0f), 0.0f) * 1e-06f);
                  _7894 = _cloudDetailScale * 0.004f;
                  _7897 = _cloudBaseScale * 0.0004f;
                  _7900 = _earthRadius + _7882;
                  _7901 = _7900 * _7900;
                  _7908 = ((sqrt(((_7881 * _7881) + _7186) + _7901) - _7891) - _earthRadius) / _cloudThickness;
                  if (!((_7908 < 0.0f) || (_7908 > 1.0f))) {
                    _7922 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                    _7923 = _7882 - _7891;
                    _7924 = _7894 / _7897;
                    _7925 = _7924 * _7897;
                    _7926 = _7922 * _7924;
                    _7930 = saturate(max((_7886 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                    _7934 = (_cloudDetailScale * 0.001884f) * (4.0f - (_7930 * 3.0f));
                    _7935 = _7925 * 4.355f;
                    _7940 = 1.0f - sqrt(saturate((1.0f - _7908) * 1.4285715f));
                    _7977 = (((((_7930 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_7894 * _7881) - (_7925 * _cloudScroll.x)), ((_7923 * _7894) - _7926), ((_7894 * _7100) - (_7925 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_7934 * _7881) - (_7935 * _cloudScroll.x)), ((_7934 * _7923) - (_7926 * 4.355f)), ((_7934 * _7100) - (_7935 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_7908 * 4.0f) * 0.8f) + 0.2f);
                    _8018 = (saturate(((saturate(_7908 * 10.0f) * saturate(saturate(((_7879.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_7897 * (_7881 - _cloudScroll.x)), ((_7897 * _7923) - _7922), (_7897 * (_7100 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_7940 * 0.5f), ((_7940 * _7940) * _7940)))) - _7977) / (1.0f - _7977)) * _cloudAlpha);
                  } else {
                    _8018 = 0.0f;
                  }
                  _8020 = (_cloudFadeRange > 1e-05f);
                  if (_8020) {
                    _8030 = saturate(((_7886 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                  } else {
                    _8030 = 1.0f;  // [sem: expr_sat]
                  }
                  _8031 = _7100 + -50.0f;
                  _8032 = _8031 - _viewPos.z;
                  _8035 = sqrt((_8032 * _8032) + _7839);
                  _8040 = _cloudAltitude - (max(((_8035 * _8035) + -400000.0f), 0.0f) * 1e-06f);
                  _8047 = ((sqrt(((_8031 * _8031) + _7185) + _7901) - _earthRadius) - _8040) / _cloudThickness;
                  if (!((_8047 < 0.0f) || (_8047 > 1.0f))) {
                    _8061 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                    _8062 = _7882 - _8040;
                    _8063 = _7894 / _7897;
                    _8064 = _8063 * _7897;
                    _8065 = _8061 * _8063;
                    _8069 = saturate(max((_8035 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                    _8073 = (_cloudDetailScale * 0.001884f) * (4.0f - (_8069 * 3.0f));
                    _8074 = _8064 * 4.355f;
                    _8079 = 1.0f - sqrt(saturate((1.0f - _8047) * 1.4285715f));
                    _8116 = (((((_8069 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_7894 * _7095) - (_8064 * _cloudScroll.x)), ((_8062 * _7894) - _8065), ((_7894 * _8031) - (_8064 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_8073 * _7095) - (_8074 * _cloudScroll.x)), ((_8073 * _8062) - (_8065 * 4.355f)), ((_8073 * _8031) - (_8074 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_8047 * 4.0f) * 0.8f) + 0.2f);
                    _8157 = (saturate(((saturate(_8047 * 10.0f) * saturate(saturate(((_7879.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_7897 * (_7095 - _cloudScroll.x)), ((_8062 * _7897) - _8061), (_7897 * (_8031 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_8079 * 0.5f), ((_8079 * _8079) * _8079)))) - _8116) / (1.0f - _8116)) * _cloudAlpha);
                  } else {
                    _8157 = 0.0f;
                  }
                  if (_8020) {
                    _8167 = saturate(((_8035 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                  } else {
                    _8167 = 1.0f;  // [sem: expr_sat]
                  }
                  _8181 = ((((_8167 * _8157) + (_8030 * _8018)) * 20.0f) * _distanceScale);
                  _8182 = _7833;
                } else {
                  _8181 = 0.0f;
                  _8182 = _7833;
                }
              } else {
                _8181 = ((log2(max(_7584, 0.5f)) * 0.6931472f) / _7585);
                _8182 = _7588;
              }
              _8183 = dot(float3(_7191, _7192, _7193), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
              _8187 = min(max(_7305, 16.0f), (_atmosphereThickness + -16.0f));
              _8188 = max(_8187, 0.0f);
              _8197 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _8188) * _8188)) / (_earthRadius + _8188);
              if (_8183 > _8197) {
                _8220 = ((exp2(log2(saturate((_8183 - _8197) / (1.0f - _8197))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _8220 = ((exp2(log2(saturate((_8197 - _8183) / (_8197 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              _8229 = (exp2(log2(saturate((_8187 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
              // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
              _8232 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_8229, _8220), 0.0f);
              _8235 = dot(float3(_7191, _7192, _7193), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
              if (_8235 > _8197) {
                _8258 = ((exp2(log2(saturate((_8235 - _8197) / (1.0f - _8197))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _8258 = ((exp2(log2(saturate((_8197 - _8235) / (_8197 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
              _8259 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_8229, _8258), 0.0f);
              _8264 = ((_7311 + _7041) * 12.5f) + _7052;
              _8267 = ((_7316 + _7042) * 12.5f) + _7053;
              _8270 = ((_7183 + _7043) * 12.5f) + _7057;
              _8273 = ((_7506 + _7044) * 12.5f) + _7055;
              _8274 = _8273 + _8270;
              _8275 = _8232.x + _8264;
              _8280 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
              _8283 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
              _8285 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
              _8287 = _mieAerosolDensity * 2e-05f;
              _8290 = (_mieAerosolAbsorption + 1.0f) * _8287;
              _8295 = _cloudScatteringCoefficient / _distanceScale;
              _8297 = _8295 * (_8182 + _8274);
              // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
              // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
              _8301 = (_8280 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
              // RenoDX: <<< [Patch: SkySpectralOzone]
              _8304 = _8297 + ((_8232.y + _8267) * _8290);
              // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
              // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
              _8307 = (_8283 * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
              _8310 = (_ozoneRatio * SKY_OZONE_3) + (_8285 * 1.9607843e-07f);
              // RenoDX: <<< [Patch: SkySpectralOzone]
              _8314 = exp2(((_8301 * _8275) + _8304) * -1.442695f);
              _8318 = exp2(((_8307 * _8275) + _8304) * -1.442695f);
              _8322 = exp2(((_8310 * _8275) + _8304) * -1.442695f);
              _8323 = _distanceScale * _8295;
              _8334 = 1.0f - exp2((_7506 * -288.539f) * _8323);
              _8335 = _7311 * 4.901961e-06f;
              _8337 = (_5188 * 0.059683103f) * _8335;
              _8339 = (_7183 * 64.0f) * exp2(log2(1.0f - exp2((_7183 * -14.42695f) * _8323)) * 1.25f);
              _8340 = _8339 * _5203;
              _8343 = ((_5221 * 2.0f) * _7506) * _8334;
              _8344 = _8295 * 25.0f;
              _8348 = (_8295 * (_8181 + _8274)) + (_8267 * _8290);
              _8352 = exp2(((_8301 * _8264) + _8348) * -1.442695f);
              _8356 = exp2(((_8307 * _8264) + _8348) * -1.442695f);
              _8360 = exp2(((_8310 * _8264) + _8348) * -1.442695f);
              _8365 = ((_8356 * 0.33951f) + (_8352 * 0.61312f)) + (_8360 * 0.04737f);
              _8370 = ((_8356 * 0.91636f) + (_8352 * 0.0702f)) + (_8360 * 0.01345f);
              _8375 = ((_8356 * 0.10958f) + (_8352 * 0.02062f)) + (_8360 * 0.8698f);
              _8376 = _8280 * _8335;
              _8377 = _8283 * _8335;
              _8378 = _8285 * _8335;
              _8380 = _8295 * (_7506 + _7183);
              _8381 = _8380 * 25.0f;
              _8382 = _8259.x + _8264;
              _8385 = _8297 + ((_8259.y + _8267) * _8290);
              _8389 = exp2(((_8301 * _8382) + _8385) * -1.442695f);
              _8393 = exp2(((_8307 * _8382) + _8385) * -1.442695f);
              _8397 = exp2(((_8310 * _8382) + _8385) * -1.442695f);
              _8402 = ((_8393 * 0.33951f) + (_8389 * 0.61312f)) + (_8397 * 0.04737f);
              _8407 = ((_8393 * 0.91636f) + (_8389 * 0.0702f)) + (_8397 * 0.01345f);
              _8412 = ((_8393 * 0.10958f) + (_8389 * 0.02062f)) + (_8397 * 0.8698f);
              _8413 = _5256 * 0.059683103f;
              _8415 = _miePhaseConst * _miePhaseConst;
              _8416 = _8287 * _7316;
              _8431 = ((_8416 * 0.07957747f) * (((1.0f - _8415) * 3.0f) / ((_8415 + 2.0f) * 2.0f))) * (_5256 / exp2(log2((_8415 + 1.0f) - (_miePhaseConst * _5257)) * 1.5f));
              _8437 = ((((_5272 * 2.0f) * _7506) * _8334) + (_8339 * _5264)) * _8295;
              _8438 = _8365 * _7301;
              _8439 = _8370 * _7300;
              _8440 = _8375 * _7299;
              _8540 = _8273;
              _8541 = _8270;
              _8542 = _8267;
              _8543 = _8264;
              _8544 = ((((((((_volumeFogScatterColor.z * _8343) + _8340) * _8344) + (_8285 * _8337)) * (((_8318 * 0.10958f) + (_8314 * 0.02062f)) + (_8322 * 0.8698f))) + (((_8381 + _8378) * _7302) * _8375)) * _5182) + _7051);
              _8545 = ((((((((_volumeFogScatterColor.y * _8343) + _8340) * _8344) + (_8283 * _8337)) * (((_8318 * 0.91636f) + (_8314 * 0.0702f)) + (_8322 * 0.01345f))) + (((_8381 + _8377) * _7303) * _8370)) * _5182) + _7050);
              _8546 = ((((((((_volumeFogScatterColor.x * _8343) + _8340) * _8344) + (_8280 * _8337)) * (((_8318 * 0.33951f) + (_8314 * 0.61312f)) + (_8322 * 0.04737f))) + (((_8381 + _8376) * _7304) * _8365)) * _5182) + _7049);
              _8547 = (((((_8412 * _8413) + _8440) * _8378) + _7048) + (((((_mieScatterColor.z * _8416) + _8380) * _8440) + (((_mieScatterColor.z * _8431) + _8437) * _8412)) * 25.0f));
              _8548 = (((((_8407 * _8413) + _8439) * _8377) + _7047) + (((((_mieScatterColor.y * _8416) + _8380) * _8439) + (((_mieScatterColor.y * _8431) + _8437) * _8407)) * 25.0f));
              _8549 = (((((_8402 * _8413) + _8438) * _8376) + _7046) + (((((_mieScatterColor.x * _8416) + _8380) * _8438) + (((_mieScatterColor.x * _8431) + _8437) * _8402)) * 25.0f));
              _8550 = _5316;
            } else {
              _8540 = _7055;
              _8541 = _7057;
              _8542 = _7053;
              _8543 = _7052;
              _8544 = _7051;
              _8545 = _7050;
              _8546 = _7049;
              _8547 = _7048;
              _8548 = _7047;
              _8549 = _7046;
              _8550 = _5316;
            }
            break;
          }
        } else {
          _8540 = 0.0f;
          _8541 = 0.0f;
          _8542 = 0.0f;
          _8543 = 0.0f;
          _8544 = 0.0f;
          _8545 = 0.0f;
          _8546 = 0.0f;
          _8547 = 0.0f;
          _8548 = 0.0f;
          _8549 = 0.0f;
          _8550 = 0.0f;
        }
        if (_8550 < _5041) {
          _8556 = _viewPos.x + (_5041 * _63);
          _8559 = _viewPos.z + (_5041 * _65);
          _8563 = min((_distanceScale * _8550), _5041);
          _8565 = (_8563 * _63) + _viewPos.x;
          _8567 = (_8563 * _65) + _viewPos.z;
          _8571 = _earthRadius + _viewPos.y;
          _8573 = _8571 + (_8563 * _58);
          _8579 = sqrt(((_8567 * _8567) + (_8565 * _8565)) + (_8573 * _8573));
          _8580 = _8565 / _8579;
          _8581 = _8573 / _8579;
          _8582 = _8567 / _8579;
          _8583 = dot(float3(_8580, _8581, _8582), float3(_63, _58, _65));
          _8588 = dot(float3(_63, _58, _65), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
          _8591 = _atmosphereThickness + -16.0f;
          _8595 = min(max(max((_8579 - _earthRadius), 0.01f), 16.0f), _8591);
          _8596 = _atmosphereThickness + -32.0f;
          _8597 = max(_8595, 0.0f);
          _8598 = _earthRadius * 2.0f;
          _8604 = (-0.0f - sqrt((_8597 + _8598) * _8597)) / (_8597 + _earthRadius);
          _8605 = (_8583 > _8604);
          if (_8605) {
            _8627 = ((exp2(log2(saturate((_8583 - _8604) / (1.0f - _8604))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _8627 = ((exp2(log2(saturate((_8604 - _8583) / (_8604 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _8635 = (exp2(log2(saturate((_8595 + -16.0f) / _8596)) * 0.5f) * 0.96875f) + 0.015625f;
          _8641 = (1.0f - exp2(-1.1541561f - (dot(float3(_8580, _8581, _8582), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _8644 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8635, _8627, _8641), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _8649 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8635, _8627, _8641), 0.0f);
          _8654 = (_8588 * _8588) + 1.0f;
          _8655 = _8654 * 0.059683103f;
          _8658 = _miePhaseConst * _miePhaseConst;
          _8659 = _8658 + 1.0f;
          _8660 = _miePhaseConst * 2.0f;
          _8666 = (((1.0f - _8658) * 3.0f) / ((_8658 + 2.0f) * 2.0f)) * 0.07957747f;
          _8673 = (_8654 / exp2(log2(_8659 - (_8660 * _8588)) * 1.5f)) * _8666;
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _8675 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8635, _8627, _8641), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _8680 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8635, _8627, _8641), 0.0f);
          _8685 = _8571 + (_5041 * _58);
          _8691 = sqrt(((_8559 * _8559) + (_8556 * _8556)) + (_8685 * _8685));
          _8692 = _8556 / _8691;
          _8693 = _8685 / _8691;
          _8694 = _8559 / _8691;
          _8695 = dot(float3(_8692, _8693, _8694), float3(_63, _58, _65));
          _8699 = min(max(max((_8691 - _earthRadius), 0.01f), 16.0f), _8591);
          _8700 = max(_8699, 0.0f);
          _8706 = (-0.0f - sqrt((_8700 + _8598) * _8700)) / (_8700 + _earthRadius);
          _8707 = (_8695 > _8706);
          if (_8707) {
            _8729 = ((exp2(log2(saturate((_8695 - _8706) / (1.0f - _8706))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _8729 = ((exp2(log2(saturate((_8706 - _8695) / (_8706 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _8737 = (exp2(log2(saturate((_8699 + -16.0f) / _8596)) * 0.5f) * 0.96875f) + 0.015625f;
          _8743 = (1.0f - exp2(-1.1541561f - (dot(float3(_8692, _8693, _8694), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _8744 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8737, _8729, _8743), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _8748 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8737, _8729, _8743), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _8752 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8737, _8729, _8743), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _8756 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8737, _8729, _8743), 0.0f);
          _8760 = dot(float3(_8565, _8573, _8567), float3(_63, _58, _65));
          _8761 = _8760 / _8579;
          _8762 = _8563 - _5041;
          _8763 = _8762 * _63;
          _8764 = _8762 * _58;
          _8765 = _8762 * _65;
          _8771 = sqrt(((_8763 * _8763) + (_8764 * _8764)) + (_8765 * _8765));
          _8775 = sqrt((0.5f / _rayleighScaledHeight) * _8579);
          _8779 = sqrt((0.5f / _mieScaledHeight) * _8579);
          _8781 = (_8771 + _8760) / _8579;
          _8782 = _8775 * _8761;
          _8783 = _8781 * _8775;
          _8784 = _8779 * _8761;
          _8785 = _8781 * _8779;
          _8791 = (float)((int)((int)((int)(uint)((int)(_8782 > 0.0f))) - (int)((int)(uint)((int)(_8782 < 0.0f)))));
          _8797 = (float)((int)((int)((int)(uint)((int)(_8783 > 0.0f))) - (int)((int)(uint)((int)(_8783 < 0.0f)))));
          _8803 = (float)((int)((int)((int)(uint)((int)(_8784 > 0.0f))) - (int)((int)(uint)((int)(_8784 < 0.0f)))));
          _8809 = (float)((int)((int)((int)(uint)((int)(_8785 > 0.0f))) - (int)((int)(uint)((int)(_8785 < 0.0f)))));
          _8810 = _8782 * _8782;
          _8811 = _8784 * _8784;
          _8812 = (_8797 > _8791);
          if (_8812) {
            _8817 = exp2(_8810 * 1.442695f);
          } else {
            _8817 = 0.0f;
          }
          _8818 = (_8809 > _8803);
          if (_8818) {
            _8823 = exp2(_8811 * 1.442695f);
          } else {
            _8823 = 0.0f;
          }
          _8824 = -0.0f - _8771;
          _8828 = ((_8771 / (_8579 * 2.0f)) + _8761) * 1.442695f;
          _8829 = _8579 * 6.2831f;
          _8830 = _earthRadius - _8579;
          _8836 = sqrt(_rayleighScaledHeight * _8829) * exp2((_8830 / _rayleighScaledHeight) * 1.442695f);
          _8856 = dot(float2((_8791 / ((abs(_8782) * 2.3193f) + sqrt((_8810 * 1.52f) + 4.0f))), ((_8797 / ((abs(_8783) * 2.3193f) + sqrt(((_8783 * _8783) * 1.52f) + 4.0f))) * exp2((_8824 / _rayleighScaledHeight) * _8828))), float2(1.0f, -1.0f));
          _8876 = dot(float2((_8803 / ((abs(_8784) * 2.3193f) + sqrt((_8811 * 1.52f) + 4.0f))), ((_8809 / ((abs(_8785) * 2.3193f) + sqrt(((_8785 * _8785) * 1.52f) + 4.0f))) * exp2((_8824 / _mieScaledHeight) * _8828))), float2(1.0f, -1.0f));
          _8878 = (_8856 + _8817) * _8836;
          _8890 = (((_mieAerosolDensity * 2e-05f) * (_mieAerosolAbsorption + 1.0f)) * sqrt(_mieScaledHeight * _8829)) * exp2((_8830 / _mieScaledHeight) * 1.442695f);
          _8892 = _8890 * (_8876 + _8823);
          // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
          // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
          _8901 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
          _8907 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
          _8912 = (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3);
          // RenoDX: <<< [Patch: SkySpectralOzone]
          _8917 = dot(float3(_63, _58, _65), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
          if (_8605) {
            _8939 = ((exp2(log2(saturate((_8583 - _8604) / (1.0f - _8604))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _8939 = ((exp2(log2(saturate((_8604 - _8583) / (_8604 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _8945 = (1.0f - exp2(-1.1541561f - (dot(float3(_8580, _8581, _8582), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _8946 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8635, _8939, _8945), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _8950 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8635, _8939, _8945), 0.0f);
          _8955 = (_8917 * _8917) + 1.0f;
          _8956 = _8955 * 0.059683103f;
          _8963 = (_8955 / exp2(log2(_8659 - (_8917 * _8660)) * 1.5f)) * _8666;
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _8964 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8635, _8939, _8945), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _8968 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8635, _8939, _8945), 0.0f);
          if (_8707) {
            _8993 = ((exp2(log2(saturate((_8695 - _8706) / (1.0f - _8706))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _8993 = ((exp2(log2(saturate((_8706 - _8695) / (_8706 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _8999 = (1.0f - exp2(-1.1541561f - (dot(float3(_8692, _8693, _8694), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _9000 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8737, _8993, _8999), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _9004 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8737, _8993, _8999), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _9008 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8737, _8993, _8999), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _9012 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_8737, _8993, _8999), 0.0f);
          if (_8812) {
            _9020 = exp2(_8810 * 1.442695f);
          } else {
            _9020 = 0.0f;
          }
          if (_8818) {
            _9025 = exp2(_8811 * 1.442695f);
          } else {
            _9025 = 0.0f;
          }
          _9027 = (_9020 + _8856) * _8836;
          _9029 = (_9025 + _8876) * _8890;
          _9133 = max(0.0f, (((((_8673 * _8649.z) + (_8644.z * _8655)) + _8675.z) + _8680.z) - (exp2(((_8912 * _8878) + _8892) * -1.442695f) * ((((_8748.z * _8673) + (_8744.z * _8655)) + _8752.z) + _8756.z))));
          _9134 = max(0.0f, (((((_8673 * _8649.y) + (_8644.y * _8655)) + _8675.y) + _8680.y) - (exp2(((_8907 * _8878) + _8892) * -1.442695f) * ((((_8748.y * _8673) + (_8744.y * _8655)) + _8752.y) + _8756.y))));
          _9135 = max(0.0f, (((((_8673 * _8649.x) + (_8644.x * _8655)) + _8675.x) + _8680.x) - (exp2(((_8901 * _8878) + _8892) * -1.442695f) * ((((_8748.x * _8673) + (_8744.x * _8655)) + _8752.x) + _8756.x))));
          _9136 = max(0.0f, (((((_8963 * _8950.z) + (_8946.z * _8956)) + _8964.z) + _8968.z) - (exp2((_9029 + (_9027 * _8912)) * -1.442695f) * ((((_9004.z * _8963) + (_9000.z * _8956)) + _9008.z) + _9012.z))));
          _9137 = max(0.0f, (((((_8963 * _8950.y) + (_8946.y * _8956)) + _8964.y) + _8968.y) - (exp2((_9029 + (_9027 * _8907)) * -1.442695f) * ((((_9004.y * _8963) + (_9000.y * _8956)) + _9008.y) + _9012.y))));
          _9138 = max(0.0f, (((((_8963 * _8950.x) + (_8946.x * _8956)) + _8964.x) + _8968.x) - (exp2((_9029 + (_9027 * _8901)) * -1.442695f) * ((((_9004.x * _8963) + (_9000.x * _8956)) + _9008.x) + _9012.x))));
        } else {
          _9133 = 0.0f;
          _9134 = 0.0f;
          _9135 = 0.0f;
          _9136 = 0.0f;
          _9137 = 0.0f;
          _9138 = 0.0f;
        }
        _9153 = (((_8542 * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f)) + ((_cloudScatteringCoefficient / _distanceScale) * (_8541 + _8540));
        // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
        // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
        _9166 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1)) * _8543) + _9153) * -1.442695f);
        _9176 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2)) * _8543) + _9153) * -1.442695f);
        _9185 = exp2(((((((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3)) * _8543) + _9153) * -1.442695f);
        // RenoDX: <<< [Patch: SkySpectralOzone]
        _9192 = (((_9135 * _5182) * _9166) + _8546) + (((_9166 * _9138) + _8549) * _5253);
        _9199 = (((_9134 * _5182) * _9176) + _8545) + (((_9176 * _9137) + _8548) * _5253);
        _9206 = (((_9133 * _5182) * _9185) + _8544) + (((_9185 * _9136) + _8547) * _5253);
        if (!((_atmosphereSeaBaseline - _viewPos.y) <= 0.0f)) {
          _9219 = saturate(max(0.0f, ((_atmosphereSeaBaseline - (_58 * _5022)) - _viewPos.y)) * 2.0f);  // [sem: expr_sat]
          _9228 = (((1.0f - ((_9219 * _9219) * (3.0f - (_9219 * 2.0f)))) * 0.98f) + 0.02f);
        } else {
          _9228 = 1.0f;
        }
        _9248 = (_9228 * (((_9199 * 0.10958f) + (_9192 * 0.02062f)) + (_9206 * 0.8698f)));
        _9249 = (_9228 * (((_9199 * 0.91636f) + (_9192 * 0.0702f)) + (_9206 * 0.01345f)));
        _9250 = (_9228 * (((_9199 * 0.33951f) + (_9192 * 0.61312f)) + (_9206 * 0.04737f)));
      } else {
        _9248 = 0.0f;
        _9249 = 0.0f;
        _9250 = 0.0f;
      }
    } else {
      _9248 = 0.0f;
      _9249 = 0.0f;
      _9250 = 0.0f;
    }
    _9251 = max(0.0f, _9250);
    _9252 = max(0.0f, _9249);
    _9253 = max(0.0f, _9248);
    _9255 = (_56 * 0.0019086055f) + -0.488603f;
    _9256 = _65 * 0.488603f;
    _9257 = _63 * -0.488603f;
    _9260 = _63 * (1.092548f - (_56 * 0.0042677657f));
    _9261 = _65 * -1.092548f;
    _9262 = _9261 * _58;
    _9265 = ((_65 * _65) * 0.94617593f) + -0.315392f;
    _9266 = _9261 * _63;
    _9269 = ((_63 * _63) - _59) * 0.546274f;
    _9271 = (int)min((uint)(_5006), (uint)(1023));
    _global_4[_9271] = (_9251 * 0.282095f);
    _9275 = (int)min((uint)(((int)(_5006) | (int)(1))), (uint)(1023));
    _global_4[_9275] = (_9251 * _9255);
    _9278 = (int)min((uint)(_5010), (uint)(1023));
    _global_4[_9278] = (_9251 * _9256);
    _9281 = (int)min((uint)(_5012), (uint)(1023));
    _global_4[_9281] = (_9251 * _9257);
    _global_5[_9271] = (_9251 * _9260);
    _global_5[_9275] = (_9251 * _9262);
    _global_5[_9278] = (_9251 * _9265);
    _global_5[_9281] = (_9251 * _9266);
    _9292 = (int)min((uint)((int)(SV_DispatchThreadID.x)), (uint)(255));
    _global_0[_9292] = (_9251 * _9269);
    _global_6[_9271] = (_9252 * 0.282095f);
    _global_6[_9275] = (_9252 * _9255);
    _global_6[_9278] = (_9252 * _9256);
    _global_6[_9281] = (_9252 * _9257);
    _global_7[_9271] = (_9252 * _9260);
    _global_7[_9275] = (_9252 * _9262);
    _global_7[_9278] = (_9252 * _9265);
    _global_7[_9281] = (_9252 * _9266);
    _global_1[_9292] = (_9252 * _9269);
    _global_8[_9271] = (_9253 * 0.282095f);
    _global_8[_9275] = (_9253 * _9255);
    _global_8[_9278] = (_9253 * _9256);
    _global_8[_9281] = (_9253 * _9257);
    _global_9[_9271] = (_9253 * _9260);
    _global_9[_9275] = (_9253 * _9262);
    _global_9[_9278] = (_9253 * _9265);
    _global_9[_9281] = (_9253 * _9266);
    _global_2[_9292] = (_9253 * _9269);
    _9334 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_63, _58, _65));
    _9337 = _miePhaseConst * _miePhaseConst;
    _9354 = ((((1.0f - _9337) * 3.0f) / ((_9337 + 2.0f) * 2.0f)) * 0.07957747f) * (((_9334 * _9334) + 1.0f) / exp2(log2((_9337 + 1.0f) - ((_9334 * 2.0f) * _miePhaseConst)) * 1.5f));
    _9356 = (uint)(SV_DispatchThreadID.x) * (uint)(3);
    _global_3[((int)min((uint)(_9356), (uint)(767)))] = (_9354 * _9250);
    _global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(1)))), (uint)(767)))] = (_9354 * _9249);
    _global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(2)))), (uint)(767)))] = (_9354 * _9248);
    GroupMemoryBarrierWithGroupSync();
    if (((int)(SV_DispatchThreadID.x) & 1) == 0) {
      _9370 = (uint)(SV_DispatchThreadID.x) + (uint)(1);
      _9371 = (uint)((uint)(_9370)) << 2;
      _9372 = (int)min((uint)(_9371), (uint)(1023));
      _global_4[_9271] = ((_global_4[_9271]) + (_global_4[_9372]));
      _9378 = (int)min((uint)(((int)(_9371) | (int)(1))), (uint)(1023));
      _global_4[_9275] = ((_global_4[_9275]) + (_global_4[_9378]));
      _9384 = (int)min((uint)(((int)(_9371) | (int)(2))), (uint)(1023));
      _global_4[_9278] = ((_global_4[_9278]) + (_global_4[_9384]));
      _9390 = (int)min((uint)(((int)(_9371) | (int)(3))), (uint)(1023));
      _global_4[_9281] = ((_global_4[_9281]) + (_global_4[_9390]));
      _global_5[_9271] = ((_global_5[_9271]) + (_global_5[_9372]));
      _global_5[_9275] = ((_global_5[_9275]) + (_global_5[_9378]));
      _global_5[_9278] = ((_global_5[_9278]) + (_global_5[_9384]));
      _global_5[_9281] = ((_global_5[_9281]) + (_global_5[_9390]));
      _9411 = (int)min((uint)(_9370), (uint)(255));
      _global_0[_9292] = ((_global_0[_9292]) + (_global_0[_9411]));
      _global_6[_9271] = ((_global_6[_9271]) + (_global_6[_9372]));
      _global_6[_9275] = ((_global_6[_9275]) + (_global_6[_9378]));
      _global_6[_9278] = ((_global_6[_9278]) + (_global_6[_9384]));
      _global_6[_9281] = ((_global_6[_9281]) + (_global_6[_9390]));
      _global_7[_9271] = ((_global_7[_9271]) + (_global_7[_9372]));
      _global_7[_9275] = ((_global_7[_9275]) + (_global_7[_9378]));
      _global_7[_9278] = ((_global_7[_9278]) + (_global_7[_9384]));
      _global_7[_9281] = ((_global_7[_9281]) + (_global_7[_9390]));
      _global_1[_9292] = ((_global_1[_9292]) + (_global_1[_9411]));
      _global_8[_9271] = ((_global_8[_9271]) + (_global_8[_9372]));
      _global_8[_9275] = ((_global_8[_9275]) + (_global_8[_9378]));
      _global_8[_9278] = ((_global_8[_9278]) + (_global_8[_9384]));
      _global_8[_9281] = ((_global_8[_9281]) + (_global_8[_9390]));
      _global_9[_9271] = ((_global_9[_9271]) + (_global_9[_9372]));
      _global_9[_9275] = ((_global_9[_9275]) + (_global_9[_9378]));
      _global_9[_9278] = ((_global_9[_9278]) + (_global_9[_9384]));
      _global_9[_9281] = ((_global_9[_9281]) + (_global_9[_9390]));
      _global_2[_9292] = ((_global_2[_9292]) + (_global_2[_9411]));
      _9488 = (uint)((uint)(_9370)) * (uint)(3);
      _global_3[((int)min((uint)(_9356), (uint)(767)))] = ((_global_3[((int)min((uint)(_9356), (uint)(767)))]) + (_global_3[((int)min((uint)(_9488), (uint)(767)))]));
      _global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(1)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(1)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_9488)) + (uint)(1)))), (uint)(767)))]));
      _global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(2)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(2)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_9488)) + (uint)(2)))), (uint)(767)))]));
    }
    GroupMemoryBarrierWithGroupSync();
    if (((int)(SV_DispatchThreadID.x) & 3) == 0) {
      _9510 = (uint)(SV_DispatchThreadID.x) + (uint)(2);
      _9511 = (uint)((uint)(_9510)) << 2;
      _9512 = (int)min((uint)(_9511), (uint)(1023));
      _global_4[_9271] = ((_global_4[_9271]) + (_global_4[_9512]));
      _9518 = (int)min((uint)(((int)(_9511) | (int)(1))), (uint)(1023));
      _global_4[_9275] = ((_global_4[_9275]) + (_global_4[_9518]));
      _9524 = (int)min((uint)(((int)(_9511) | (int)(2))), (uint)(1023));
      _global_4[_9278] = ((_global_4[_9278]) + (_global_4[_9524]));
      _9530 = (int)min((uint)(((int)(_9511) | (int)(3))), (uint)(1023));
      _global_4[_9281] = ((_global_4[_9281]) + (_global_4[_9530]));
      _global_5[_9271] = ((_global_5[_9271]) + (_global_5[_9512]));
      _global_5[_9275] = ((_global_5[_9275]) + (_global_5[_9518]));
      _global_5[_9278] = ((_global_5[_9278]) + (_global_5[_9524]));
      _global_5[_9281] = ((_global_5[_9281]) + (_global_5[_9530]));
      _9551 = (int)min((uint)(_9510), (uint)(255));
      _global_0[_9292] = ((_global_0[_9292]) + (_global_0[_9551]));
      _global_6[_9271] = ((_global_6[_9271]) + (_global_6[_9512]));
      _global_6[_9275] = ((_global_6[_9275]) + (_global_6[_9518]));
      _global_6[_9278] = ((_global_6[_9278]) + (_global_6[_9524]));
      _global_6[_9281] = ((_global_6[_9281]) + (_global_6[_9530]));
      _global_7[_9271] = ((_global_7[_9271]) + (_global_7[_9512]));
      _global_7[_9275] = ((_global_7[_9275]) + (_global_7[_9518]));
      _global_7[_9278] = ((_global_7[_9278]) + (_global_7[_9524]));
      _global_7[_9281] = ((_global_7[_9281]) + (_global_7[_9530]));
      _global_1[_9292] = ((_global_1[_9292]) + (_global_1[_9551]));
      _global_8[_9271] = ((_global_8[_9271]) + (_global_8[_9512]));
      _global_8[_9275] = ((_global_8[_9275]) + (_global_8[_9518]));
      _global_8[_9278] = ((_global_8[_9278]) + (_global_8[_9524]));
      _global_8[_9281] = ((_global_8[_9281]) + (_global_8[_9530]));
      _global_9[_9271] = ((_global_9[_9271]) + (_global_9[_9512]));
      _global_9[_9275] = ((_global_9[_9275]) + (_global_9[_9518]));
      _global_9[_9278] = ((_global_9[_9278]) + (_global_9[_9524]));
      _global_9[_9281] = ((_global_9[_9281]) + (_global_9[_9530]));
      _global_2[_9292] = ((_global_2[_9292]) + (_global_2[_9551]));
      _9628 = (uint)((uint)(_9510)) * (uint)(3);
      _global_3[((int)min((uint)(_9356), (uint)(767)))] = ((_global_3[((int)min((uint)(_9356), (uint)(767)))]) + (_global_3[((int)min((uint)(_9628), (uint)(767)))]));
      _global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(1)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(1)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_9628)) + (uint)(1)))), (uint)(767)))]));
      _global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(2)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(2)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_9628)) + (uint)(2)))), (uint)(767)))]));
    }
    GroupMemoryBarrierWithGroupSync();
    if (((int)(SV_DispatchThreadID.x) & 7) == 0) {
      _9650 = (uint)(SV_DispatchThreadID.x) + (uint)(4);
      _9651 = (uint)((uint)(_9650)) << 2;
      _9652 = (int)min((uint)(_9651), (uint)(1023));
      _global_4[_9271] = ((_global_4[_9271]) + (_global_4[_9652]));
      _9658 = (int)min((uint)(((int)(_9651) | (int)(1))), (uint)(1023));
      _global_4[_9275] = ((_global_4[_9275]) + (_global_4[_9658]));
      _9664 = (int)min((uint)(((int)(_9651) | (int)(2))), (uint)(1023));
      _global_4[_9278] = ((_global_4[_9278]) + (_global_4[_9664]));
      _9670 = (int)min((uint)(((int)(_9651) | (int)(3))), (uint)(1023));
      _global_4[_9281] = ((_global_4[_9281]) + (_global_4[_9670]));
      _global_5[_9271] = ((_global_5[_9271]) + (_global_5[_9652]));
      _global_5[_9275] = ((_global_5[_9275]) + (_global_5[_9658]));
      _global_5[_9278] = ((_global_5[_9278]) + (_global_5[_9664]));
      _global_5[_9281] = ((_global_5[_9281]) + (_global_5[_9670]));
      _9691 = (int)min((uint)(_9650), (uint)(255));
      _global_0[_9292] = ((_global_0[_9292]) + (_global_0[_9691]));
      _global_6[_9271] = ((_global_6[_9271]) + (_global_6[_9652]));
      _global_6[_9275] = ((_global_6[_9275]) + (_global_6[_9658]));
      _global_6[_9278] = ((_global_6[_9278]) + (_global_6[_9664]));
      _global_6[_9281] = ((_global_6[_9281]) + (_global_6[_9670]));
      _global_7[_9271] = ((_global_7[_9271]) + (_global_7[_9652]));
      _global_7[_9275] = ((_global_7[_9275]) + (_global_7[_9658]));
      _global_7[_9278] = ((_global_7[_9278]) + (_global_7[_9664]));
      _global_7[_9281] = ((_global_7[_9281]) + (_global_7[_9670]));
      _global_1[_9292] = ((_global_1[_9292]) + (_global_1[_9691]));
      _global_8[_9271] = ((_global_8[_9271]) + (_global_8[_9652]));
      _global_8[_9275] = ((_global_8[_9275]) + (_global_8[_9658]));
      _global_8[_9278] = ((_global_8[_9278]) + (_global_8[_9664]));
      _global_8[_9281] = ((_global_8[_9281]) + (_global_8[_9670]));
      _global_9[_9271] = ((_global_9[_9271]) + (_global_9[_9652]));
      _global_9[_9275] = ((_global_9[_9275]) + (_global_9[_9658]));
      _global_9[_9278] = ((_global_9[_9278]) + (_global_9[_9664]));
      _global_9[_9281] = ((_global_9[_9281]) + (_global_9[_9670]));
      _global_2[_9292] = ((_global_2[_9292]) + (_global_2[_9691]));
      _9768 = (uint)((uint)(_9650)) * (uint)(3);
      _global_3[((int)min((uint)(_9356), (uint)(767)))] = ((_global_3[((int)min((uint)(_9356), (uint)(767)))]) + (_global_3[((int)min((uint)(_9768), (uint)(767)))]));
      _global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(1)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(1)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_9768)) + (uint)(1)))), (uint)(767)))]));
      _global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(2)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(2)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_9768)) + (uint)(2)))), (uint)(767)))]));
    }
    GroupMemoryBarrierWithGroupSync();
    if (((int)(SV_DispatchThreadID.x) & 15) == 0) {
      _9790 = (uint)(SV_DispatchThreadID.x) + (uint)(8);
      _9791 = (uint)((uint)(_9790)) << 2;
      _9792 = (int)min((uint)(_9791), (uint)(1023));
      _global_4[_9271] = ((_global_4[_9271]) + (_global_4[_9792]));
      _9798 = (int)min((uint)(((int)(_9791) | (int)(1))), (uint)(1023));
      _global_4[_9275] = ((_global_4[_9275]) + (_global_4[_9798]));
      _9804 = (int)min((uint)(((int)(_9791) | (int)(2))), (uint)(1023));
      _global_4[_9278] = ((_global_4[_9278]) + (_global_4[_9804]));
      _9810 = (int)min((uint)(((int)(_9791) | (int)(3))), (uint)(1023));
      _global_4[_9281] = ((_global_4[_9281]) + (_global_4[_9810]));
      _global_5[_9271] = ((_global_5[_9271]) + (_global_5[_9792]));
      _global_5[_9275] = ((_global_5[_9275]) + (_global_5[_9798]));
      _global_5[_9278] = ((_global_5[_9278]) + (_global_5[_9804]));
      _global_5[_9281] = ((_global_5[_9281]) + (_global_5[_9810]));
      _9831 = (int)min((uint)(_9790), (uint)(255));
      _global_0[_9292] = ((_global_0[_9292]) + (_global_0[_9831]));
      _global_6[_9271] = ((_global_6[_9271]) + (_global_6[_9792]));
      _global_6[_9275] = ((_global_6[_9275]) + (_global_6[_9798]));
      _global_6[_9278] = ((_global_6[_9278]) + (_global_6[_9804]));
      _global_6[_9281] = ((_global_6[_9281]) + (_global_6[_9810]));
      _global_7[_9271] = ((_global_7[_9271]) + (_global_7[_9792]));
      _global_7[_9275] = ((_global_7[_9275]) + (_global_7[_9798]));
      _global_7[_9278] = ((_global_7[_9278]) + (_global_7[_9804]));
      _global_7[_9281] = ((_global_7[_9281]) + (_global_7[_9810]));
      _global_1[_9292] = ((_global_1[_9292]) + (_global_1[_9831]));
      _global_8[_9271] = ((_global_8[_9271]) + (_global_8[_9792]));
      _global_8[_9275] = ((_global_8[_9275]) + (_global_8[_9798]));
      _global_8[_9278] = ((_global_8[_9278]) + (_global_8[_9804]));
      _global_8[_9281] = ((_global_8[_9281]) + (_global_8[_9810]));
      _global_9[_9271] = ((_global_9[_9271]) + (_global_9[_9792]));
      _global_9[_9275] = ((_global_9[_9275]) + (_global_9[_9798]));
      _global_9[_9278] = ((_global_9[_9278]) + (_global_9[_9804]));
      _global_9[_9281] = ((_global_9[_9281]) + (_global_9[_9810]));
      _global_2[_9292] = ((_global_2[_9292]) + (_global_2[_9831]));
      _9908 = (uint)((uint)(_9790)) * (uint)(3);
      _global_3[((int)min((uint)(_9356), (uint)(767)))] = ((_global_3[((int)min((uint)(_9356), (uint)(767)))]) + (_global_3[((int)min((uint)(_9908), (uint)(767)))]));
      _global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(1)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(1)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_9908)) + (uint)(1)))), (uint)(767)))]));
      _global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(2)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(2)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_9908)) + (uint)(2)))), (uint)(767)))]));
    }
    GroupMemoryBarrierWithGroupSync();
    if (((int)(SV_DispatchThreadID.x) & 31) == 0) {
      _9930 = (uint)(SV_DispatchThreadID.x) + (uint)(16);
      _9931 = (uint)((uint)(_9930)) << 2;
      _9932 = (int)min((uint)(_9931), (uint)(1023));
      _global_4[_9271] = ((_global_4[_9271]) + (_global_4[_9932]));
      _9938 = (int)min((uint)(((int)(_9931) | (int)(1))), (uint)(1023));
      _global_4[_9275] = ((_global_4[_9275]) + (_global_4[_9938]));
      _9944 = (int)min((uint)(((int)(_9931) | (int)(2))), (uint)(1023));
      _global_4[_9278] = ((_global_4[_9278]) + (_global_4[_9944]));
      _9950 = (int)min((uint)(((int)(_9931) | (int)(3))), (uint)(1023));
      _global_4[_9281] = ((_global_4[_9281]) + (_global_4[_9950]));
      _global_5[_9271] = ((_global_5[_9271]) + (_global_5[_9932]));
      _global_5[_9275] = ((_global_5[_9275]) + (_global_5[_9938]));
      _global_5[_9278] = ((_global_5[_9278]) + (_global_5[_9944]));
      _global_5[_9281] = ((_global_5[_9281]) + (_global_5[_9950]));
      _9971 = (int)min((uint)(_9930), (uint)(255));
      _global_0[_9292] = ((_global_0[_9292]) + (_global_0[_9971]));
      _global_6[_9271] = ((_global_6[_9271]) + (_global_6[_9932]));
      _global_6[_9275] = ((_global_6[_9275]) + (_global_6[_9938]));
      _global_6[_9278] = ((_global_6[_9278]) + (_global_6[_9944]));
      _global_6[_9281] = ((_global_6[_9281]) + (_global_6[_9950]));
      _global_7[_9271] = ((_global_7[_9271]) + (_global_7[_9932]));
      _global_7[_9275] = ((_global_7[_9275]) + (_global_7[_9938]));
      _global_7[_9278] = ((_global_7[_9278]) + (_global_7[_9944]));
      _global_7[_9281] = ((_global_7[_9281]) + (_global_7[_9950]));
      _global_1[_9292] = ((_global_1[_9292]) + (_global_1[_9971]));
      _global_8[_9271] = ((_global_8[_9271]) + (_global_8[_9932]));
      _global_8[_9275] = ((_global_8[_9275]) + (_global_8[_9938]));
      _global_8[_9278] = ((_global_8[_9278]) + (_global_8[_9944]));
      _global_8[_9281] = ((_global_8[_9281]) + (_global_8[_9950]));
      _global_9[_9271] = ((_global_9[_9271]) + (_global_9[_9932]));
      _global_9[_9275] = ((_global_9[_9275]) + (_global_9[_9938]));
      _global_9[_9278] = ((_global_9[_9278]) + (_global_9[_9944]));
      _global_9[_9281] = ((_global_9[_9281]) + (_global_9[_9950]));
      _global_2[_9292] = ((_global_2[_9292]) + (_global_2[_9971]));
      _10048 = (uint)((uint)(_9930)) * (uint)(3);
      _global_3[((int)min((uint)(_9356), (uint)(767)))] = ((_global_3[((int)min((uint)(_9356), (uint)(767)))]) + (_global_3[((int)min((uint)(_10048), (uint)(767)))]));
      _global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(1)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(1)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_10048)) + (uint)(1)))), (uint)(767)))]));
      _global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(2)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(2)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_10048)) + (uint)(2)))), (uint)(767)))]));
    }
    GroupMemoryBarrierWithGroupSync();
    if (((int)(SV_DispatchThreadID.x) & 63) == 0) {
      _10070 = (uint)(SV_DispatchThreadID.x) + (uint)(32);
      _10071 = (uint)((uint)(_10070)) << 2;
      _10072 = (int)min((uint)(_10071), (uint)(1023));
      _global_4[_9271] = ((_global_4[_9271]) + (_global_4[_10072]));
      _10078 = (int)min((uint)(((int)(_10071) | (int)(1))), (uint)(1023));
      _global_4[_9275] = ((_global_4[_9275]) + (_global_4[_10078]));
      _10084 = (int)min((uint)(((int)(_10071) | (int)(2))), (uint)(1023));
      _global_4[_9278] = ((_global_4[_9278]) + (_global_4[_10084]));
      _10090 = (int)min((uint)(((int)(_10071) | (int)(3))), (uint)(1023));
      _global_4[_9281] = ((_global_4[_9281]) + (_global_4[_10090]));
      _global_5[_9271] = ((_global_5[_9271]) + (_global_5[_10072]));
      _global_5[_9275] = ((_global_5[_9275]) + (_global_5[_10078]));
      _global_5[_9278] = ((_global_5[_9278]) + (_global_5[_10084]));
      _global_5[_9281] = ((_global_5[_9281]) + (_global_5[_10090]));
      _10111 = (int)min((uint)(_10070), (uint)(255));
      _global_0[_9292] = ((_global_0[_9292]) + (_global_0[_10111]));
      _global_6[_9271] = ((_global_6[_9271]) + (_global_6[_10072]));
      _global_6[_9275] = ((_global_6[_9275]) + (_global_6[_10078]));
      _global_6[_9278] = ((_global_6[_9278]) + (_global_6[_10084]));
      _global_6[_9281] = ((_global_6[_9281]) + (_global_6[_10090]));
      _global_7[_9271] = ((_global_7[_9271]) + (_global_7[_10072]));
      _global_7[_9275] = ((_global_7[_9275]) + (_global_7[_10078]));
      _global_7[_9278] = ((_global_7[_9278]) + (_global_7[_10084]));
      _global_7[_9281] = ((_global_7[_9281]) + (_global_7[_10090]));
      _global_1[_9292] = ((_global_1[_9292]) + (_global_1[_10111]));
      _global_8[_9271] = ((_global_8[_9271]) + (_global_8[_10072]));
      _global_8[_9275] = ((_global_8[_9275]) + (_global_8[_10078]));
      _global_8[_9278] = ((_global_8[_9278]) + (_global_8[_10084]));
      _global_8[_9281] = ((_global_8[_9281]) + (_global_8[_10090]));
      _global_9[_9271] = ((_global_9[_9271]) + (_global_9[_10072]));
      _global_9[_9275] = ((_global_9[_9275]) + (_global_9[_10078]));
      _global_9[_9278] = ((_global_9[_9278]) + (_global_9[_10084]));
      _global_9[_9281] = ((_global_9[_9281]) + (_global_9[_10090]));
      _global_2[_9292] = ((_global_2[_9292]) + (_global_2[_10111]));
      _10188 = (uint)((uint)(_10070)) * (uint)(3);
      _global_3[((int)min((uint)(_9356), (uint)(767)))] = ((_global_3[((int)min((uint)(_9356), (uint)(767)))]) + (_global_3[((int)min((uint)(_10188), (uint)(767)))]));
      _global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(1)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(1)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_10188)) + (uint)(1)))), (uint)(767)))]));
      _global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(2)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(2)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_10188)) + (uint)(2)))), (uint)(767)))]));
    }
    GroupMemoryBarrierWithGroupSync();
    if (((int)(SV_DispatchThreadID.x) & 127) == 0) {
      _10210 = (uint)(SV_DispatchThreadID.x) + (uint)(64);
      _10211 = (uint)((uint)(_10210)) << 2;
      _10212 = (int)min((uint)(_10211), (uint)(1023));
      _global_4[_9271] = ((_global_4[_9271]) + (_global_4[_10212]));
      _10218 = (int)min((uint)(((int)(_10211) | (int)(1))), (uint)(1023));
      _global_4[_9275] = ((_global_4[_9275]) + (_global_4[_10218]));
      _10224 = (int)min((uint)(((int)(_10211) | (int)(2))), (uint)(1023));
      _global_4[_9278] = ((_global_4[_9278]) + (_global_4[_10224]));
      _10230 = (int)min((uint)(((int)(_10211) | (int)(3))), (uint)(1023));
      _global_4[_9281] = ((_global_4[_9281]) + (_global_4[_10230]));
      _global_5[_9271] = ((_global_5[_9271]) + (_global_5[_10212]));
      _global_5[_9275] = ((_global_5[_9275]) + (_global_5[_10218]));
      _global_5[_9278] = ((_global_5[_9278]) + (_global_5[_10224]));
      _global_5[_9281] = ((_global_5[_9281]) + (_global_5[_10230]));
      _10251 = (int)min((uint)(_10210), (uint)(255));
      _global_0[_9292] = ((_global_0[_9292]) + (_global_0[_10251]));
      _global_6[_9271] = ((_global_6[_9271]) + (_global_6[_10212]));
      _global_6[_9275] = ((_global_6[_9275]) + (_global_6[_10218]));
      _global_6[_9278] = ((_global_6[_9278]) + (_global_6[_10224]));
      _global_6[_9281] = ((_global_6[_9281]) + (_global_6[_10230]));
      _global_7[_9271] = ((_global_7[_9271]) + (_global_7[_10212]));
      _global_7[_9275] = ((_global_7[_9275]) + (_global_7[_10218]));
      _global_7[_9278] = ((_global_7[_9278]) + (_global_7[_10224]));
      _global_7[_9281] = ((_global_7[_9281]) + (_global_7[_10230]));
      _global_1[_9292] = ((_global_1[_9292]) + (_global_1[_10251]));
      _global_8[_9271] = ((_global_8[_9271]) + (_global_8[_10212]));
      _global_8[_9275] = ((_global_8[_9275]) + (_global_8[_10218]));
      _global_8[_9278] = ((_global_8[_9278]) + (_global_8[_10224]));
      _global_8[_9281] = ((_global_8[_9281]) + (_global_8[_10230]));
      _global_9[_9271] = ((_global_9[_9271]) + (_global_9[_10212]));
      _global_9[_9275] = ((_global_9[_9275]) + (_global_9[_10218]));
      _global_9[_9278] = ((_global_9[_9278]) + (_global_9[_10224]));
      _global_9[_9281] = ((_global_9[_9281]) + (_global_9[_10230]));
      _global_2[_9292] = ((_global_2[_9292]) + (_global_2[_10251]));
      _10328 = (uint)((uint)(_10210)) * (uint)(3);
      _global_3[((int)min((uint)(_9356), (uint)(767)))] = ((_global_3[((int)min((uint)(_9356), (uint)(767)))]) + (_global_3[((int)min((uint)(_10328), (uint)(767)))]));
      _global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(1)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(1)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_10328)) + (uint)(1)))), (uint)(767)))]));
      _global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(2)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(2)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_10328)) + (uint)(2)))), (uint)(767)))]));
    }
    GroupMemoryBarrierWithGroupSync();
    if (((int)(SV_DispatchThreadID.x) & 255) == 0) {
      _10350 = (uint)(SV_DispatchThreadID.x) + (uint)(128);
      _10351 = (uint)((uint)(_10350)) << 2;
      _10352 = (int)min((uint)(_10351), (uint)(1023));
      _global_4[_9271] = ((_global_4[_9271]) + (_global_4[_10352]));
      _10358 = (int)min((uint)(((int)(_10351) | (int)(1))), (uint)(1023));
      _global_4[_9275] = ((_global_4[_9275]) + (_global_4[_10358]));
      _10364 = (int)min((uint)(((int)(_10351) | (int)(2))), (uint)(1023));
      _global_4[_9278] = ((_global_4[_9278]) + (_global_4[_10364]));
      _10370 = (int)min((uint)(((int)(_10351) | (int)(3))), (uint)(1023));
      _global_4[_9281] = ((_global_4[_9281]) + (_global_4[_10370]));
      _global_5[_9271] = ((_global_5[_9271]) + (_global_5[_10352]));
      _global_5[_9275] = ((_global_5[_9275]) + (_global_5[_10358]));
      _global_5[_9278] = ((_global_5[_9278]) + (_global_5[_10364]));
      _global_5[_9281] = ((_global_5[_9281]) + (_global_5[_10370]));
      _10391 = (int)min((uint)(_10350), (uint)(255));
      _global_0[_9292] = ((_global_0[_9292]) + (_global_0[_10391]));
      _global_6[_9271] = ((_global_6[_9271]) + (_global_6[_10352]));
      _global_6[_9275] = ((_global_6[_9275]) + (_global_6[_10358]));
      _global_6[_9278] = ((_global_6[_9278]) + (_global_6[_10364]));
      _global_6[_9281] = ((_global_6[_9281]) + (_global_6[_10370]));
      _global_7[_9271] = ((_global_7[_9271]) + (_global_7[_10352]));
      _global_7[_9275] = ((_global_7[_9275]) + (_global_7[_10358]));
      _global_7[_9278] = ((_global_7[_9278]) + (_global_7[_10364]));
      _global_7[_9281] = ((_global_7[_9281]) + (_global_7[_10370]));
      _global_1[_9292] = ((_global_1[_9292]) + (_global_1[_10391]));
      _global_8[_9271] = ((_global_8[_9271]) + (_global_8[_10352]));
      _global_8[_9275] = ((_global_8[_9275]) + (_global_8[_10358]));
      _global_8[_9278] = ((_global_8[_9278]) + (_global_8[_10364]));
      _global_8[_9281] = ((_global_8[_9281]) + (_global_8[_10370]));
      _global_9[_9271] = ((_global_9[_9271]) + (_global_9[_10352]));
      _global_9[_9275] = ((_global_9[_9275]) + (_global_9[_10358]));
      _global_9[_9278] = ((_global_9[_9278]) + (_global_9[_10364]));
      _global_9[_9281] = ((_global_9[_9281]) + (_global_9[_10370]));
      _global_2[_9292] = ((_global_2[_9292]) + (_global_2[_10391]));
      _10468 = (uint)((uint)(_10350)) * (uint)(3);
      _global_3[((int)min((uint)(_9356), (uint)(767)))] = ((_global_3[((int)min((uint)(_9356), (uint)(767)))]) + (_global_3[((int)min((uint)(_10468), (uint)(767)))]));
      _global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(1)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(1)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_10468)) + (uint)(1)))), (uint)(767)))]));
      _global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(2)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_9356)) + (uint)(2)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_10468)) + (uint)(2)))), (uint)(767)))]));
    }
    GroupMemoryBarrierWithGroupSync();
    if (!((uint)(int)(SV_DispatchThreadID.x) > (uint)8)) {
      // RenoDX: >>> [Patch: DawnDuskSHDirectionalBias] [Version: 1.13.00]
      // Description: Builds R/G/B directional biases from the three per-channel L0 slots before the native row switch; a disabled Dawn/Dusk gate returns three zero vectors.
      float _rndx_dawn_dusk_factor = DawnDuskFactor(_sunDirection.y);
      float3 _rndx_sh_bias_R, _rndx_sh_bias_G, _rndx_sh_bias_B;
      SHDirectionalBias(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z),
                        _rndx_dawn_dusk_factor,
                        float3(((_global_4[0]) * 0.0078125f), ((_global_6[0]) * 0.0078125f), ((_global_8[0]) * 0.0078125f)),
                        _rndx_sh_bias_R, _rndx_sh_bias_G, _rndx_sh_bias_B);
      // RenoDX: <<< [Patch: DawnDuskSHDirectionalBias]
      switch ((uint)(SV_DispatchThreadID.x)) {
        case 0: {
          // RenoDX: >>> [Patch: DawnDuskSHDirectionalBias] [Version: 1.13.00]
          // Description: Adds the gated sun-direction bias only to packed L1 slots [1..3] using [-y,+z,-x]; the native L0 slot [0] is unchanged.
          __3__39__0__1__g_texPrecomputedAmbientUAV[0] = float4(
              ((_global_4[0]) * 0.0078125f),
              ((_global_4[1]) * 0.0078125f) - _rndx_sh_bias_R.y,
              ((_global_4[2]) * 0.0078125f) + _rndx_sh_bias_R.z,
              ((_global_4[3]) * 0.0078125f) - _rndx_sh_bias_R.x);
          // RenoDX: <<< [Patch: DawnDuskSHDirectionalBias]
          break;
        }
        case 1: {
          __3__39__0__1__g_texPrecomputedAmbientUAV[1] = float4(((_global_5[0]) * 0.0078125f), ((_global_5[1]) * 0.0078125f), ((_global_5[2]) * 0.0078125f), ((_global_5[3]) * 0.0078125f));
          break;
        }
        case 2: {
          // RenoDX: >>> [Patch: DawnDuskSHDirectionalBias] [Version: 1.13.00]
          // Description: Adds the gated sun-direction bias only to packed L1 slots [1..3] using [-y,+z,-x]; the native L0 slot [0] is unchanged.
          __3__39__0__1__g_texPrecomputedAmbientUAV[2] = float4(
              ((_global_6[0]) * 0.0078125f),
              ((_global_6[1]) * 0.0078125f) - _rndx_sh_bias_G.y,
              ((_global_6[2]) * 0.0078125f) + _rndx_sh_bias_G.z,
              ((_global_6[3]) * 0.0078125f) - _rndx_sh_bias_G.x);
          // RenoDX: <<< [Patch: DawnDuskSHDirectionalBias]
          break;
        }
        case 3: {
          __3__39__0__1__g_texPrecomputedAmbientUAV[3] = float4(((_global_7[0]) * 0.0078125f), ((_global_7[1]) * 0.0078125f), ((_global_7[2]) * 0.0078125f), ((_global_7[3]) * 0.0078125f));
          break;
        }
        case 4: {
          // RenoDX: >>> [Patch: DawnDuskSHDirectionalBias] [Version: 1.13.00]
          // Description: Adds the gated sun-direction bias only to packed L1 slots [1..3] using [-y,+z,-x]; the native L0 slot [0] is unchanged.
          __3__39__0__1__g_texPrecomputedAmbientUAV[4] = float4(
              ((_global_8[0]) * 0.0078125f),
              ((_global_8[1]) * 0.0078125f) - _rndx_sh_bias_B.y,
              ((_global_8[2]) * 0.0078125f) + _rndx_sh_bias_B.z,
              ((_global_8[3]) * 0.0078125f) - _rndx_sh_bias_B.x);
          // RenoDX: <<< [Patch: DawnDuskSHDirectionalBias]
          break;
        }
        case 5: {
          __3__39__0__1__g_texPrecomputedAmbientUAV[5] = float4(((_global_9[0]) * 0.0078125f), ((_global_9[1]) * 0.0078125f), ((_global_9[2]) * 0.0078125f), ((_global_9[3]) * 0.0078125f));
          break;
        }
        case 6: {
          if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
            _10566 = _sunDirection.z;
            _10567 = _sunDirection.y;
            _10568 = _sunDirection.x;
          } else {
            _10566 = _moonDirection.z;
            _10567 = _moonDirection.y;
            _10568 = _moonDirection.x;
          }
          _10582 = ((0.5f - (((float)((int)((int)((int)(uint)((int)(_10567 > 0.0f))) - (int)((int)(uint)((int)(_10567 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _cloudAltitude;
          if (_viewPos.y < _cloudAltitude) {
            _10589 = dot(float3(0.0f, 1.0f, 0.0f), float3(_10568, _10567, _10566));
            _10595 = select((abs(_10589) < 1e-08f), 1e+08f, ((_10582 - dot(float3(0.0f, 1.0f, 0.0f), float3(_viewPos.x, _viewPos.y, _viewPos.z))) / _10589));
            _10601 = ((_10595 * _10566) + _viewPos.z);
            _10602 = _10582;
            _10603 = ((_10595 * _10568) + _viewPos.x);
          } else {
            _10601 = _viewPos.z;
            _10602 = _viewPos.y;
            _10603 = _viewPos.x;
          }
          _10606 = saturate(abs(_10567) * 4.0f);  // [sem: expr_sat]
          _10628 = (_10606 * _10606) * exp2(((((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_10603 - _viewPos.x) * 5e-05f) + 0.5f), ((_10602 - _cloudAltitude) / _cloudThickness), (((_10601 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x) * -1.442695f) * (_cloudScatteringCoefficient / _distanceScale)) * _distanceScale);
          __3__39__0__1__g_texPrecomputedAmbientUAV[6] = float4(((_global_0[0]) * 0.0078125f), ((_global_1[0]) * 0.0078125f), ((_global_2[0]) * 0.0078125f), ((saturate(((_viewPos.y - _cloudAltitude) - _cloudThickness) * 0.1f) * (1.0f - _10628)) + _10628));
          break;
        }
        case 7: {
          _10653 = _sunLightIntensity * _sunLightPreset;
          _10656 = (1.0f - _sunSizeAngleCosine) * 6.2831855f;
          _10660 = min(16.0f, (_atmosphereThickness + -16.0f));
          _10661 = max(_10660, 0.0f);
          _10670 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _10661) * _10661)) / (_earthRadius + _10661);
          _10671 = (_10670 < 1.0f);
          if (!_10671) {
            _10683 = ((exp2(log2(saturate((_10670 + -1.0f) / (_10670 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          } else {
            _10683 = 0.99609375f;
          }
          _10692 = (exp2(log2(saturate((_10660 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
          // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
          // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
          _10702 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
          _10708 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
          _10713 = (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3);
          // RenoDX: <<< [Patch: SkySpectralOzone]
          _10718 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_10692, _10683), 0.0f))).x) * -1.442695f;
          _10730 = acos(min(max(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)), -1.0f), 1.0f));
          _10731 = _10730 * 57.295776f;
          _10737 = _sunSizeAngle * _sunSizeAngle;
          if (!(_10731 > (_moonSizeAngle + _sunSizeAngle))) {
            _10739 = _moonSizeAngle * _moonSizeAngle;
            if (!(_10731 <= (abs(_sunSizeAngle - _moonSizeAngle) + 0.05f))) {
              _10745 = _10731 * _10731;
              _10746 = _10730 * 114.59155f;
              _10754 = acos(min(max((((_10745 + _10737) - _10739) / (_10746 * _sunSizeAngle)), -1.0f), 1.0f)) * 2.0f;
              _10762 = acos(min(max((((_10745 - _10737) + _10739) / (_moonSizeAngle * _10746)), -1.0f), 1.0f)) * 2.0f;
              _10777 = (((((_10762 * _10739) + (_10754 * _10737)) - (sin(_10754) * _10737)) - (sin(_10762) * _10739)) * 0.5f);
            } else {
              _10777 = (min(_10737, _10739) * 3.1415927f);
            }
          } else {
            _10777 = 0.0f;
          }
          if (!_10671) {
            _10789 = ((exp2(log2(saturate((_10670 + -1.0f) / (_10670 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          } else {
            _10789 = 0.99609375f;
          }
          _10792 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_10692, _10789), 0.0f))).x) * -1.442695f;
          _10795 = _moonLightIntensity * _moonLightPreset;
          _10799 = (1.0f - _moonSizeAngleCosine) * 6.2831855f;
          if (!_10671) {
            _10811 = ((exp2(log2(saturate((_10670 + -1.0f) / (_10670 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          } else {
            _10811 = 0.99609375f;
          }
          _10814 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_10692, _10811), 0.0f))).x) * -1.442695f;
          if (!_10671) {
            _10826 = ((exp2(log2(saturate((_10670 + -1.0f) / (_10670 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          } else {
            _10826 = 0.99609375f;
          }
          _10829 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_10692, _10826), 0.0f))).x) * -1.442695f;
          __3__39__0__1__g_texPrecomputedAmbientUAV[7] = float4((_10653 / (dot(float3(exp2(_10718 * _10702), exp2(_10718 * _10708), exp2(_10718 * _10713)), float3(0.299f, 0.587f, 0.114f)) * _10656)), (((1.0f - saturate(_10777 / (_10737 * 3.1415927f))) * _10656) * (_10653 / (dot(float3(exp2(_10792 * _10702), exp2(_10792 * _10708), exp2(_10792 * _10713)), float3(0.299f, 0.587f, 0.114f)) * _10656))), (_10795 / (dot(float3(exp2(_10814 * _10702), exp2(_10814 * _10708), exp2(_10814 * _10713)), float3(0.299f, 0.587f, 0.114f)) * _10799)), ((_10795 / (dot(float3(exp2(_10829 * _10702), exp2(_10829 * _10708), exp2(_10829 * _10713)), float3(0.299f, 0.587f, 0.114f)) * _10799)) * _10799));
          break;
        }
        default: {
          __3__39__0__1__g_texPrecomputedAmbientUAV[56] = float4(((_global_3[0]) * 0.049087387f), ((_global_3[1]) * 0.049087387f), ((_global_3[2]) * 0.049087387f), 0.0f);
          break;
        }
      }
    }
  } else {
    if (_78 == 5) {
      _10885 = max(0.0f, _4993);
      _10886 = max(0.0f, _4992);
      _10887 = max(0.0f, _4991);
      _10889 = (_56 * 0.0019086055f) + -0.488603f;
      _10890 = _65 * 0.488603f;
      _10891 = _63 * -0.488603f;
      _10894 = _63 * (1.092548f - (_56 * 0.0042677657f));
      _10895 = _65 * -1.092548f;
      _10896 = _10895 * _58;
      _10899 = ((_65 * _65) * 0.94617593f) + -0.315392f;
      _10900 = _10895 * _63;
      _10903 = ((_63 * _63) - _59) * 0.546274f;
      _10905 = (int)min((uint)(_5006), (uint)(1023));
      _global_4[_10905] = (_10885 * 0.282095f);
      _10909 = (int)min((uint)(((int)(_5006) | (int)(1))), (uint)(1023));
      _global_4[_10909] = (_10885 * _10889);
      _10912 = (int)min((uint)(_5010), (uint)(1023));
      _global_4[_10912] = (_10885 * _10890);
      _10915 = (int)min((uint)(_5012), (uint)(1023));
      _global_4[_10915] = (_10885 * _10891);
      _global_5[_10905] = (_10885 * _10894);
      _global_5[_10909] = (_10885 * _10896);
      _global_5[_10912] = (_10885 * _10899);
      _global_5[_10915] = (_10885 * _10900);
      _10926 = (int)min((uint)((int)(SV_DispatchThreadID.x)), (uint)(255));
      _global_0[_10926] = (_10885 * _10903);
      _global_6[_10905] = (_10886 * 0.282095f);
      _global_6[_10909] = (_10886 * _10889);
      _global_6[_10912] = (_10886 * _10890);
      _global_6[_10915] = (_10886 * _10891);
      _global_7[_10905] = (_10886 * _10894);
      _global_7[_10909] = (_10886 * _10896);
      _global_7[_10912] = (_10886 * _10899);
      _global_7[_10915] = (_10886 * _10900);
      _global_1[_10926] = (_10886 * _10903);
      _global_8[_10905] = (_10887 * 0.282095f);
      _global_8[_10909] = (_10887 * _10889);
      _global_8[_10912] = (_10887 * _10890);
      _global_8[_10915] = (_10887 * _10891);
      _global_9[_10905] = (_10887 * _10894);
      _global_9[_10909] = (_10887 * _10896);
      _global_9[_10912] = (_10887 * _10899);
      _global_9[_10915] = (_10887 * _10900);
      _global_2[_10926] = (_10887 * _10903);
      _10968 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_63, _58, _65));
      _10971 = _miePhaseConst * _miePhaseConst;
      _10988 = ((((1.0f - _10971) * 3.0f) / ((_10971 + 2.0f) * 2.0f)) * 0.07957747f) * (((_10968 * _10968) + 1.0f) / exp2(log2((_10971 + 1.0f) - ((_10968 * 2.0f) * _miePhaseConst)) * 1.5f));
      _10990 = (uint)(SV_DispatchThreadID.x) * (uint)(3);
      _global_3[((int)min((uint)(_10990), (uint)(767)))] = (_10988 * _4993);
      _global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(1)))), (uint)(767)))] = (_10988 * _4992);
      _global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(2)))), (uint)(767)))] = (_10988 * _4991);
      GroupMemoryBarrierWithGroupSync();
      if (((int)(SV_DispatchThreadID.x) & 1) == 0) {
        _11004 = (uint)(SV_DispatchThreadID.x) + (uint)(1);
        _11005 = (uint)((uint)(_11004)) << 2;
        _11006 = (int)min((uint)(_11005), (uint)(1023));
        _global_4[_10905] = ((_global_4[_10905]) + (_global_4[_11006]));
        _11012 = (int)min((uint)(((int)(_11005) | (int)(1))), (uint)(1023));
        _global_4[_10909] = ((_global_4[_10909]) + (_global_4[_11012]));
        _11018 = (int)min((uint)(((int)(_11005) | (int)(2))), (uint)(1023));
        _global_4[_10912] = ((_global_4[_10912]) + (_global_4[_11018]));
        _11024 = (int)min((uint)(((int)(_11005) | (int)(3))), (uint)(1023));
        _global_4[_10915] = ((_global_4[_10915]) + (_global_4[_11024]));
        _global_5[_10905] = ((_global_5[_10905]) + (_global_5[_11006]));
        _global_5[_10909] = ((_global_5[_10909]) + (_global_5[_11012]));
        _global_5[_10912] = ((_global_5[_10912]) + (_global_5[_11018]));
        _global_5[_10915] = ((_global_5[_10915]) + (_global_5[_11024]));
        _11045 = (int)min((uint)(_11004), (uint)(255));
        _global_0[_10926] = ((_global_0[_10926]) + (_global_0[_11045]));
        _global_6[_10905] = ((_global_6[_10905]) + (_global_6[_11006]));
        _global_6[_10909] = ((_global_6[_10909]) + (_global_6[_11012]));
        _global_6[_10912] = ((_global_6[_10912]) + (_global_6[_11018]));
        _global_6[_10915] = ((_global_6[_10915]) + (_global_6[_11024]));
        _global_7[_10905] = ((_global_7[_10905]) + (_global_7[_11006]));
        _global_7[_10909] = ((_global_7[_10909]) + (_global_7[_11012]));
        _global_7[_10912] = ((_global_7[_10912]) + (_global_7[_11018]));
        _global_7[_10915] = ((_global_7[_10915]) + (_global_7[_11024]));
        _global_1[_10926] = ((_global_1[_10926]) + (_global_1[_11045]));
        _global_8[_10905] = ((_global_8[_10905]) + (_global_8[_11006]));
        _global_8[_10909] = ((_global_8[_10909]) + (_global_8[_11012]));
        _global_8[_10912] = ((_global_8[_10912]) + (_global_8[_11018]));
        _global_8[_10915] = ((_global_8[_10915]) + (_global_8[_11024]));
        _global_9[_10905] = ((_global_9[_10905]) + (_global_9[_11006]));
        _global_9[_10909] = ((_global_9[_10909]) + (_global_9[_11012]));
        _global_9[_10912] = ((_global_9[_10912]) + (_global_9[_11018]));
        _global_9[_10915] = ((_global_9[_10915]) + (_global_9[_11024]));
        _global_2[_10926] = ((_global_2[_10926]) + (_global_2[_11045]));
        _11122 = (uint)((uint)(_11004)) * (uint)(3);
        _global_3[((int)min((uint)(_10990), (uint)(767)))] = ((_global_3[((int)min((uint)(_10990), (uint)(767)))]) + (_global_3[((int)min((uint)(_11122), (uint)(767)))]));
        _global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(1)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(1)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_11122)) + (uint)(1)))), (uint)(767)))]));
        _global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(2)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(2)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_11122)) + (uint)(2)))), (uint)(767)))]));
      }
      GroupMemoryBarrierWithGroupSync();
      if (((int)(SV_DispatchThreadID.x) & 3) == 0) {
        _11144 = (uint)(SV_DispatchThreadID.x) + (uint)(2);
        _11145 = (uint)((uint)(_11144)) << 2;
        _11146 = (int)min((uint)(_11145), (uint)(1023));
        _global_4[_10905] = ((_global_4[_10905]) + (_global_4[_11146]));
        _11152 = (int)min((uint)(((int)(_11145) | (int)(1))), (uint)(1023));
        _global_4[_10909] = ((_global_4[_10909]) + (_global_4[_11152]));
        _11158 = (int)min((uint)(((int)(_11145) | (int)(2))), (uint)(1023));
        _global_4[_10912] = ((_global_4[_10912]) + (_global_4[_11158]));
        _11164 = (int)min((uint)(((int)(_11145) | (int)(3))), (uint)(1023));
        _global_4[_10915] = ((_global_4[_10915]) + (_global_4[_11164]));
        _global_5[_10905] = ((_global_5[_10905]) + (_global_5[_11146]));
        _global_5[_10909] = ((_global_5[_10909]) + (_global_5[_11152]));
        _global_5[_10912] = ((_global_5[_10912]) + (_global_5[_11158]));
        _global_5[_10915] = ((_global_5[_10915]) + (_global_5[_11164]));
        _11185 = (int)min((uint)(_11144), (uint)(255));
        _global_0[_10926] = ((_global_0[_10926]) + (_global_0[_11185]));
        _global_6[_10905] = ((_global_6[_10905]) + (_global_6[_11146]));
        _global_6[_10909] = ((_global_6[_10909]) + (_global_6[_11152]));
        _global_6[_10912] = ((_global_6[_10912]) + (_global_6[_11158]));
        _global_6[_10915] = ((_global_6[_10915]) + (_global_6[_11164]));
        _global_7[_10905] = ((_global_7[_10905]) + (_global_7[_11146]));
        _global_7[_10909] = ((_global_7[_10909]) + (_global_7[_11152]));
        _global_7[_10912] = ((_global_7[_10912]) + (_global_7[_11158]));
        _global_7[_10915] = ((_global_7[_10915]) + (_global_7[_11164]));
        _global_1[_10926] = ((_global_1[_10926]) + (_global_1[_11185]));
        _global_8[_10905] = ((_global_8[_10905]) + (_global_8[_11146]));
        _global_8[_10909] = ((_global_8[_10909]) + (_global_8[_11152]));
        _global_8[_10912] = ((_global_8[_10912]) + (_global_8[_11158]));
        _global_8[_10915] = ((_global_8[_10915]) + (_global_8[_11164]));
        _global_9[_10905] = ((_global_9[_10905]) + (_global_9[_11146]));
        _global_9[_10909] = ((_global_9[_10909]) + (_global_9[_11152]));
        _global_9[_10912] = ((_global_9[_10912]) + (_global_9[_11158]));
        _global_9[_10915] = ((_global_9[_10915]) + (_global_9[_11164]));
        _global_2[_10926] = ((_global_2[_10926]) + (_global_2[_11185]));
        _11262 = (uint)((uint)(_11144)) * (uint)(3);
        _global_3[((int)min((uint)(_10990), (uint)(767)))] = ((_global_3[((int)min((uint)(_10990), (uint)(767)))]) + (_global_3[((int)min((uint)(_11262), (uint)(767)))]));
        _global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(1)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(1)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_11262)) + (uint)(1)))), (uint)(767)))]));
        _global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(2)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(2)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_11262)) + (uint)(2)))), (uint)(767)))]));
      }
      GroupMemoryBarrierWithGroupSync();
      if (((int)(SV_DispatchThreadID.x) & 7) == 0) {
        _11284 = (uint)(SV_DispatchThreadID.x) + (uint)(4);
        _11285 = (uint)((uint)(_11284)) << 2;
        _11286 = (int)min((uint)(_11285), (uint)(1023));
        _global_4[_10905] = ((_global_4[_10905]) + (_global_4[_11286]));
        _11292 = (int)min((uint)(((int)(_11285) | (int)(1))), (uint)(1023));
        _global_4[_10909] = ((_global_4[_10909]) + (_global_4[_11292]));
        _11298 = (int)min((uint)(((int)(_11285) | (int)(2))), (uint)(1023));
        _global_4[_10912] = ((_global_4[_10912]) + (_global_4[_11298]));
        _11304 = (int)min((uint)(((int)(_11285) | (int)(3))), (uint)(1023));
        _global_4[_10915] = ((_global_4[_10915]) + (_global_4[_11304]));
        _global_5[_10905] = ((_global_5[_10905]) + (_global_5[_11286]));
        _global_5[_10909] = ((_global_5[_10909]) + (_global_5[_11292]));
        _global_5[_10912] = ((_global_5[_10912]) + (_global_5[_11298]));
        _global_5[_10915] = ((_global_5[_10915]) + (_global_5[_11304]));
        _11325 = (int)min((uint)(_11284), (uint)(255));
        _global_0[_10926] = ((_global_0[_10926]) + (_global_0[_11325]));
        _global_6[_10905] = ((_global_6[_10905]) + (_global_6[_11286]));
        _global_6[_10909] = ((_global_6[_10909]) + (_global_6[_11292]));
        _global_6[_10912] = ((_global_6[_10912]) + (_global_6[_11298]));
        _global_6[_10915] = ((_global_6[_10915]) + (_global_6[_11304]));
        _global_7[_10905] = ((_global_7[_10905]) + (_global_7[_11286]));
        _global_7[_10909] = ((_global_7[_10909]) + (_global_7[_11292]));
        _global_7[_10912] = ((_global_7[_10912]) + (_global_7[_11298]));
        _global_7[_10915] = ((_global_7[_10915]) + (_global_7[_11304]));
        _global_1[_10926] = ((_global_1[_10926]) + (_global_1[_11325]));
        _global_8[_10905] = ((_global_8[_10905]) + (_global_8[_11286]));
        _global_8[_10909] = ((_global_8[_10909]) + (_global_8[_11292]));
        _global_8[_10912] = ((_global_8[_10912]) + (_global_8[_11298]));
        _global_8[_10915] = ((_global_8[_10915]) + (_global_8[_11304]));
        _global_9[_10905] = ((_global_9[_10905]) + (_global_9[_11286]));
        _global_9[_10909] = ((_global_9[_10909]) + (_global_9[_11292]));
        _global_9[_10912] = ((_global_9[_10912]) + (_global_9[_11298]));
        _global_9[_10915] = ((_global_9[_10915]) + (_global_9[_11304]));
        _global_2[_10926] = ((_global_2[_10926]) + (_global_2[_11325]));
        _11402 = (uint)((uint)(_11284)) * (uint)(3);
        _global_3[((int)min((uint)(_10990), (uint)(767)))] = ((_global_3[((int)min((uint)(_10990), (uint)(767)))]) + (_global_3[((int)min((uint)(_11402), (uint)(767)))]));
        _global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(1)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(1)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_11402)) + (uint)(1)))), (uint)(767)))]));
        _global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(2)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(2)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_11402)) + (uint)(2)))), (uint)(767)))]));
      }
      GroupMemoryBarrierWithGroupSync();
      if (((int)(SV_DispatchThreadID.x) & 15) == 0) {
        _11424 = (uint)(SV_DispatchThreadID.x) + (uint)(8);
        _11425 = (uint)((uint)(_11424)) << 2;
        _11426 = (int)min((uint)(_11425), (uint)(1023));
        _global_4[_10905] = ((_global_4[_10905]) + (_global_4[_11426]));
        _11432 = (int)min((uint)(((int)(_11425) | (int)(1))), (uint)(1023));
        _global_4[_10909] = ((_global_4[_10909]) + (_global_4[_11432]));
        _11438 = (int)min((uint)(((int)(_11425) | (int)(2))), (uint)(1023));
        _global_4[_10912] = ((_global_4[_10912]) + (_global_4[_11438]));
        _11444 = (int)min((uint)(((int)(_11425) | (int)(3))), (uint)(1023));
        _global_4[_10915] = ((_global_4[_10915]) + (_global_4[_11444]));
        _global_5[_10905] = ((_global_5[_10905]) + (_global_5[_11426]));
        _global_5[_10909] = ((_global_5[_10909]) + (_global_5[_11432]));
        _global_5[_10912] = ((_global_5[_10912]) + (_global_5[_11438]));
        _global_5[_10915] = ((_global_5[_10915]) + (_global_5[_11444]));
        _11465 = (int)min((uint)(_11424), (uint)(255));
        _global_0[_10926] = ((_global_0[_10926]) + (_global_0[_11465]));
        _global_6[_10905] = ((_global_6[_10905]) + (_global_6[_11426]));
        _global_6[_10909] = ((_global_6[_10909]) + (_global_6[_11432]));
        _global_6[_10912] = ((_global_6[_10912]) + (_global_6[_11438]));
        _global_6[_10915] = ((_global_6[_10915]) + (_global_6[_11444]));
        _global_7[_10905] = ((_global_7[_10905]) + (_global_7[_11426]));
        _global_7[_10909] = ((_global_7[_10909]) + (_global_7[_11432]));
        _global_7[_10912] = ((_global_7[_10912]) + (_global_7[_11438]));
        _global_7[_10915] = ((_global_7[_10915]) + (_global_7[_11444]));
        _global_1[_10926] = ((_global_1[_10926]) + (_global_1[_11465]));
        _global_8[_10905] = ((_global_8[_10905]) + (_global_8[_11426]));
        _global_8[_10909] = ((_global_8[_10909]) + (_global_8[_11432]));
        _global_8[_10912] = ((_global_8[_10912]) + (_global_8[_11438]));
        _global_8[_10915] = ((_global_8[_10915]) + (_global_8[_11444]));
        _global_9[_10905] = ((_global_9[_10905]) + (_global_9[_11426]));
        _global_9[_10909] = ((_global_9[_10909]) + (_global_9[_11432]));
        _global_9[_10912] = ((_global_9[_10912]) + (_global_9[_11438]));
        _global_9[_10915] = ((_global_9[_10915]) + (_global_9[_11444]));
        _global_2[_10926] = ((_global_2[_10926]) + (_global_2[_11465]));
        _11542 = (uint)((uint)(_11424)) * (uint)(3);
        _global_3[((int)min((uint)(_10990), (uint)(767)))] = ((_global_3[((int)min((uint)(_10990), (uint)(767)))]) + (_global_3[((int)min((uint)(_11542), (uint)(767)))]));
        _global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(1)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(1)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_11542)) + (uint)(1)))), (uint)(767)))]));
        _global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(2)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(2)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_11542)) + (uint)(2)))), (uint)(767)))]));
      }
      GroupMemoryBarrierWithGroupSync();
      if (((int)(SV_DispatchThreadID.x) & 31) == 0) {
        _11564 = (uint)(SV_DispatchThreadID.x) + (uint)(16);
        _11565 = (uint)((uint)(_11564)) << 2;
        _11566 = (int)min((uint)(_11565), (uint)(1023));
        _global_4[_10905] = ((_global_4[_10905]) + (_global_4[_11566]));
        _11572 = (int)min((uint)(((int)(_11565) | (int)(1))), (uint)(1023));
        _global_4[_10909] = ((_global_4[_10909]) + (_global_4[_11572]));
        _11578 = (int)min((uint)(((int)(_11565) | (int)(2))), (uint)(1023));
        _global_4[_10912] = ((_global_4[_10912]) + (_global_4[_11578]));
        _11584 = (int)min((uint)(((int)(_11565) | (int)(3))), (uint)(1023));
        _global_4[_10915] = ((_global_4[_10915]) + (_global_4[_11584]));
        _global_5[_10905] = ((_global_5[_10905]) + (_global_5[_11566]));
        _global_5[_10909] = ((_global_5[_10909]) + (_global_5[_11572]));
        _global_5[_10912] = ((_global_5[_10912]) + (_global_5[_11578]));
        _global_5[_10915] = ((_global_5[_10915]) + (_global_5[_11584]));
        _11605 = (int)min((uint)(_11564), (uint)(255));
        _global_0[_10926] = ((_global_0[_10926]) + (_global_0[_11605]));
        _global_6[_10905] = ((_global_6[_10905]) + (_global_6[_11566]));
        _global_6[_10909] = ((_global_6[_10909]) + (_global_6[_11572]));
        _global_6[_10912] = ((_global_6[_10912]) + (_global_6[_11578]));
        _global_6[_10915] = ((_global_6[_10915]) + (_global_6[_11584]));
        _global_7[_10905] = ((_global_7[_10905]) + (_global_7[_11566]));
        _global_7[_10909] = ((_global_7[_10909]) + (_global_7[_11572]));
        _global_7[_10912] = ((_global_7[_10912]) + (_global_7[_11578]));
        _global_7[_10915] = ((_global_7[_10915]) + (_global_7[_11584]));
        _global_1[_10926] = ((_global_1[_10926]) + (_global_1[_11605]));
        _global_8[_10905] = ((_global_8[_10905]) + (_global_8[_11566]));
        _global_8[_10909] = ((_global_8[_10909]) + (_global_8[_11572]));
        _global_8[_10912] = ((_global_8[_10912]) + (_global_8[_11578]));
        _global_8[_10915] = ((_global_8[_10915]) + (_global_8[_11584]));
        _global_9[_10905] = ((_global_9[_10905]) + (_global_9[_11566]));
        _global_9[_10909] = ((_global_9[_10909]) + (_global_9[_11572]));
        _global_9[_10912] = ((_global_9[_10912]) + (_global_9[_11578]));
        _global_9[_10915] = ((_global_9[_10915]) + (_global_9[_11584]));
        _global_2[_10926] = ((_global_2[_10926]) + (_global_2[_11605]));
        _11682 = (uint)((uint)(_11564)) * (uint)(3);
        _global_3[((int)min((uint)(_10990), (uint)(767)))] = ((_global_3[((int)min((uint)(_10990), (uint)(767)))]) + (_global_3[((int)min((uint)(_11682), (uint)(767)))]));
        _global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(1)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(1)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_11682)) + (uint)(1)))), (uint)(767)))]));
        _global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(2)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(2)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_11682)) + (uint)(2)))), (uint)(767)))]));
      }
      GroupMemoryBarrierWithGroupSync();
      if (((int)(SV_DispatchThreadID.x) & 63) == 0) {
        _11704 = (uint)(SV_DispatchThreadID.x) + (uint)(32);
        _11705 = (uint)((uint)(_11704)) << 2;
        _11706 = (int)min((uint)(_11705), (uint)(1023));
        _global_4[_10905] = ((_global_4[_10905]) + (_global_4[_11706]));
        _11712 = (int)min((uint)(((int)(_11705) | (int)(1))), (uint)(1023));
        _global_4[_10909] = ((_global_4[_10909]) + (_global_4[_11712]));
        _11718 = (int)min((uint)(((int)(_11705) | (int)(2))), (uint)(1023));
        _global_4[_10912] = ((_global_4[_10912]) + (_global_4[_11718]));
        _11724 = (int)min((uint)(((int)(_11705) | (int)(3))), (uint)(1023));
        _global_4[_10915] = ((_global_4[_10915]) + (_global_4[_11724]));
        _global_5[_10905] = ((_global_5[_10905]) + (_global_5[_11706]));
        _global_5[_10909] = ((_global_5[_10909]) + (_global_5[_11712]));
        _global_5[_10912] = ((_global_5[_10912]) + (_global_5[_11718]));
        _global_5[_10915] = ((_global_5[_10915]) + (_global_5[_11724]));
        _11745 = (int)min((uint)(_11704), (uint)(255));
        _global_0[_10926] = ((_global_0[_10926]) + (_global_0[_11745]));
        _global_6[_10905] = ((_global_6[_10905]) + (_global_6[_11706]));
        _global_6[_10909] = ((_global_6[_10909]) + (_global_6[_11712]));
        _global_6[_10912] = ((_global_6[_10912]) + (_global_6[_11718]));
        _global_6[_10915] = ((_global_6[_10915]) + (_global_6[_11724]));
        _global_7[_10905] = ((_global_7[_10905]) + (_global_7[_11706]));
        _global_7[_10909] = ((_global_7[_10909]) + (_global_7[_11712]));
        _global_7[_10912] = ((_global_7[_10912]) + (_global_7[_11718]));
        _global_7[_10915] = ((_global_7[_10915]) + (_global_7[_11724]));
        _global_1[_10926] = ((_global_1[_10926]) + (_global_1[_11745]));
        _global_8[_10905] = ((_global_8[_10905]) + (_global_8[_11706]));
        _global_8[_10909] = ((_global_8[_10909]) + (_global_8[_11712]));
        _global_8[_10912] = ((_global_8[_10912]) + (_global_8[_11718]));
        _global_8[_10915] = ((_global_8[_10915]) + (_global_8[_11724]));
        _global_9[_10905] = ((_global_9[_10905]) + (_global_9[_11706]));
        _global_9[_10909] = ((_global_9[_10909]) + (_global_9[_11712]));
        _global_9[_10912] = ((_global_9[_10912]) + (_global_9[_11718]));
        _global_9[_10915] = ((_global_9[_10915]) + (_global_9[_11724]));
        _global_2[_10926] = ((_global_2[_10926]) + (_global_2[_11745]));
        _11822 = (uint)((uint)(_11704)) * (uint)(3);
        _global_3[((int)min((uint)(_10990), (uint)(767)))] = ((_global_3[((int)min((uint)(_10990), (uint)(767)))]) + (_global_3[((int)min((uint)(_11822), (uint)(767)))]));
        _global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(1)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(1)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_11822)) + (uint)(1)))), (uint)(767)))]));
        _global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(2)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(2)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_11822)) + (uint)(2)))), (uint)(767)))]));
      }
      GroupMemoryBarrierWithGroupSync();
      if (((int)(SV_DispatchThreadID.x) & 127) == 0) {
        _11844 = (uint)(SV_DispatchThreadID.x) + (uint)(64);
        _11845 = (uint)((uint)(_11844)) << 2;
        _11846 = (int)min((uint)(_11845), (uint)(1023));
        _global_4[_10905] = ((_global_4[_10905]) + (_global_4[_11846]));
        _11852 = (int)min((uint)(((int)(_11845) | (int)(1))), (uint)(1023));
        _global_4[_10909] = ((_global_4[_10909]) + (_global_4[_11852]));
        _11858 = (int)min((uint)(((int)(_11845) | (int)(2))), (uint)(1023));
        _global_4[_10912] = ((_global_4[_10912]) + (_global_4[_11858]));
        _11864 = (int)min((uint)(((int)(_11845) | (int)(3))), (uint)(1023));
        _global_4[_10915] = ((_global_4[_10915]) + (_global_4[_11864]));
        _global_5[_10905] = ((_global_5[_10905]) + (_global_5[_11846]));
        _global_5[_10909] = ((_global_5[_10909]) + (_global_5[_11852]));
        _global_5[_10912] = ((_global_5[_10912]) + (_global_5[_11858]));
        _global_5[_10915] = ((_global_5[_10915]) + (_global_5[_11864]));
        _11885 = (int)min((uint)(_11844), (uint)(255));
        _global_0[_10926] = ((_global_0[_10926]) + (_global_0[_11885]));
        _global_6[_10905] = ((_global_6[_10905]) + (_global_6[_11846]));
        _global_6[_10909] = ((_global_6[_10909]) + (_global_6[_11852]));
        _global_6[_10912] = ((_global_6[_10912]) + (_global_6[_11858]));
        _global_6[_10915] = ((_global_6[_10915]) + (_global_6[_11864]));
        _global_7[_10905] = ((_global_7[_10905]) + (_global_7[_11846]));
        _global_7[_10909] = ((_global_7[_10909]) + (_global_7[_11852]));
        _global_7[_10912] = ((_global_7[_10912]) + (_global_7[_11858]));
        _global_7[_10915] = ((_global_7[_10915]) + (_global_7[_11864]));
        _global_1[_10926] = ((_global_1[_10926]) + (_global_1[_11885]));
        _global_8[_10905] = ((_global_8[_10905]) + (_global_8[_11846]));
        _global_8[_10909] = ((_global_8[_10909]) + (_global_8[_11852]));
        _global_8[_10912] = ((_global_8[_10912]) + (_global_8[_11858]));
        _global_8[_10915] = ((_global_8[_10915]) + (_global_8[_11864]));
        _global_9[_10905] = ((_global_9[_10905]) + (_global_9[_11846]));
        _global_9[_10909] = ((_global_9[_10909]) + (_global_9[_11852]));
        _global_9[_10912] = ((_global_9[_10912]) + (_global_9[_11858]));
        _global_9[_10915] = ((_global_9[_10915]) + (_global_9[_11864]));
        _global_2[_10926] = ((_global_2[_10926]) + (_global_2[_11885]));
        _11962 = (uint)((uint)(_11844)) * (uint)(3);
        _global_3[((int)min((uint)(_10990), (uint)(767)))] = ((_global_3[((int)min((uint)(_10990), (uint)(767)))]) + (_global_3[((int)min((uint)(_11962), (uint)(767)))]));
        _global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(1)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(1)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_11962)) + (uint)(1)))), (uint)(767)))]));
        _global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(2)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(2)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_11962)) + (uint)(2)))), (uint)(767)))]));
      }
      GroupMemoryBarrierWithGroupSync();
      if (((int)(SV_DispatchThreadID.x) & 255) == 0) {
        _11984 = (uint)(SV_DispatchThreadID.x) + (uint)(128);
        _11985 = (uint)((uint)(_11984)) << 2;
        _11986 = (int)min((uint)(_11985), (uint)(1023));
        _global_4[_10905] = ((_global_4[_10905]) + (_global_4[_11986]));
        _11992 = (int)min((uint)(((int)(_11985) | (int)(1))), (uint)(1023));
        _global_4[_10909] = ((_global_4[_10909]) + (_global_4[_11992]));
        _11998 = (int)min((uint)(((int)(_11985) | (int)(2))), (uint)(1023));
        _global_4[_10912] = ((_global_4[_10912]) + (_global_4[_11998]));
        _12004 = (int)min((uint)(((int)(_11985) | (int)(3))), (uint)(1023));
        _global_4[_10915] = ((_global_4[_10915]) + (_global_4[_12004]));
        _global_5[_10905] = ((_global_5[_10905]) + (_global_5[_11986]));
        _global_5[_10909] = ((_global_5[_10909]) + (_global_5[_11992]));
        _global_5[_10912] = ((_global_5[_10912]) + (_global_5[_11998]));
        _global_5[_10915] = ((_global_5[_10915]) + (_global_5[_12004]));
        _12025 = (int)min((uint)(_11984), (uint)(255));
        _global_0[_10926] = ((_global_0[_10926]) + (_global_0[_12025]));
        _global_6[_10905] = ((_global_6[_10905]) + (_global_6[_11986]));
        _global_6[_10909] = ((_global_6[_10909]) + (_global_6[_11992]));
        _global_6[_10912] = ((_global_6[_10912]) + (_global_6[_11998]));
        _global_6[_10915] = ((_global_6[_10915]) + (_global_6[_12004]));
        _global_7[_10905] = ((_global_7[_10905]) + (_global_7[_11986]));
        _global_7[_10909] = ((_global_7[_10909]) + (_global_7[_11992]));
        _global_7[_10912] = ((_global_7[_10912]) + (_global_7[_11998]));
        _global_7[_10915] = ((_global_7[_10915]) + (_global_7[_12004]));
        _global_1[_10926] = ((_global_1[_10926]) + (_global_1[_12025]));
        _global_8[_10905] = ((_global_8[_10905]) + (_global_8[_11986]));
        _global_8[_10909] = ((_global_8[_10909]) + (_global_8[_11992]));
        _global_8[_10912] = ((_global_8[_10912]) + (_global_8[_11998]));
        _global_8[_10915] = ((_global_8[_10915]) + (_global_8[_12004]));
        _global_9[_10905] = ((_global_9[_10905]) + (_global_9[_11986]));
        _global_9[_10909] = ((_global_9[_10909]) + (_global_9[_11992]));
        _global_9[_10912] = ((_global_9[_10912]) + (_global_9[_11998]));
        _global_9[_10915] = ((_global_9[_10915]) + (_global_9[_12004]));
        _global_2[_10926] = ((_global_2[_10926]) + (_global_2[_12025]));
        _12102 = (uint)((uint)(_11984)) * (uint)(3);
        _global_3[((int)min((uint)(_10990), (uint)(767)))] = ((_global_3[((int)min((uint)(_10990), (uint)(767)))]) + (_global_3[((int)min((uint)(_12102), (uint)(767)))]));
        _global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(1)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(1)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_12102)) + (uint)(1)))), (uint)(767)))]));
        _global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(2)))), (uint)(767)))] = ((_global_3[((int)min((uint)(((int)((uint)((uint)(_10990)) + (uint)(2)))), (uint)(767)))]) + (_global_3[((int)min((uint)(((int)((uint)((uint)(_12102)) + (uint)(2)))), (uint)(767)))]));
      }
      GroupMemoryBarrierWithGroupSync();
      if (!((uint)(int)(SV_DispatchThreadID.x) > (uint)8)) {
        // RenoDX: >>> [Patch: DawnDuskSHDirectionalBias] [Version: 1.13.00]
        // Description: Builds R/G/B directional biases from the three per-channel L0 slots before the native row switch; a disabled Dawn/Dusk gate returns three zero vectors.
        float _rndx_dawn_dusk_factor = DawnDuskFactor(_sunDirection.y);
        float3 _rndx_sh_bias_R, _rndx_sh_bias_G, _rndx_sh_bias_B;
        SHDirectionalBias(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z),
                          _rndx_dawn_dusk_factor,
                          float3(((_global_4[0]) * 0.0078125f), ((_global_6[0]) * 0.0078125f), ((_global_8[0]) * 0.0078125f)),
                          _rndx_sh_bias_R, _rndx_sh_bias_G, _rndx_sh_bias_B);
        // RenoDX: <<< [Patch: DawnDuskSHDirectionalBias]
        switch ((uint)(SV_DispatchThreadID.x)) {
          case 0: {
            // RenoDX: >>> [Patch: DawnDuskSHDirectionalBias] [Version: 1.13.00]
            // Description: Adds the gated sun-direction bias only to packed L1 slots [1..3] using [-y,+z,-x]; the native L0 slot [0] is unchanged.
            __3__39__0__1__g_texPrecomputedAmbientUAV[0] = float4(
                ((_global_4[0]) * 0.0078125f),
                ((_global_4[1]) * 0.0078125f) - _rndx_sh_bias_R.y,
                ((_global_4[2]) * 0.0078125f) + _rndx_sh_bias_R.z,
                ((_global_4[3]) * 0.0078125f) - _rndx_sh_bias_R.x);
            // RenoDX: <<< [Patch: DawnDuskSHDirectionalBias]
            break;
          }
          case 1: {
            __3__39__0__1__g_texPrecomputedAmbientUAV[1] = float4(((_global_5[0]) * 0.0078125f), ((_global_5[1]) * 0.0078125f), ((_global_5[2]) * 0.0078125f), ((_global_5[3]) * 0.0078125f));
            break;
          }
          case 2: {
            // RenoDX: >>> [Patch: DawnDuskSHDirectionalBias] [Version: 1.13.00]
            // Description: Adds the gated sun-direction bias only to packed L1 slots [1..3] using [-y,+z,-x]; the native L0 slot [0] is unchanged.
            __3__39__0__1__g_texPrecomputedAmbientUAV[2] = float4(
                ((_global_6[0]) * 0.0078125f),
                ((_global_6[1]) * 0.0078125f) - _rndx_sh_bias_G.y,
                ((_global_6[2]) * 0.0078125f) + _rndx_sh_bias_G.z,
                ((_global_6[3]) * 0.0078125f) - _rndx_sh_bias_G.x);
            // RenoDX: <<< [Patch: DawnDuskSHDirectionalBias]
            break;
          }
          case 3: {
            __3__39__0__1__g_texPrecomputedAmbientUAV[3] = float4(((_global_7[0]) * 0.0078125f), ((_global_7[1]) * 0.0078125f), ((_global_7[2]) * 0.0078125f), ((_global_7[3]) * 0.0078125f));
            break;
          }
          case 4: {
            // RenoDX: >>> [Patch: DawnDuskSHDirectionalBias] [Version: 1.13.00]
            // Description: Adds the gated sun-direction bias only to packed L1 slots [1..3] using [-y,+z,-x]; the native L0 slot [0] is unchanged.
            __3__39__0__1__g_texPrecomputedAmbientUAV[4] = float4(
                ((_global_8[0]) * 0.0078125f),
                ((_global_8[1]) * 0.0078125f) - _rndx_sh_bias_B.y,
                ((_global_8[2]) * 0.0078125f) + _rndx_sh_bias_B.z,
                ((_global_8[3]) * 0.0078125f) - _rndx_sh_bias_B.x);
            // RenoDX: <<< [Patch: DawnDuskSHDirectionalBias]
            break;
          }
          case 5: {
            __3__39__0__1__g_texPrecomputedAmbientUAV[5] = float4(((_global_9[0]) * 0.0078125f), ((_global_9[1]) * 0.0078125f), ((_global_9[2]) * 0.0078125f), ((_global_9[3]) * 0.0078125f));
            break;
          }
          case 6: {
            if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
              _12200 = _sunDirection.z;
              _12201 = _sunDirection.y;
              _12202 = _sunDirection.x;
            } else {
              _12200 = _moonDirection.z;
              _12201 = _moonDirection.y;
              _12202 = _moonDirection.x;
            }
            _12216 = ((0.5f - (((float)((int)((int)((int)(uint)((int)(_12201 > 0.0f))) - (int)((int)(uint)((int)(_12201 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _cloudAltitude;
            if (_viewPos.y < _cloudAltitude) {
              _12223 = dot(float3(0.0f, 1.0f, 0.0f), float3(_12202, _12201, _12200));
              _12229 = select((abs(_12223) < 1e-08f), 1e+08f, ((_12216 - dot(float3(0.0f, 1.0f, 0.0f), float3(_viewPos.x, _viewPos.y, _viewPos.z))) / _12223));
              _12235 = ((_12229 * _12200) + _viewPos.z);
              _12236 = _12216;
              _12237 = ((_12229 * _12202) + _viewPos.x);
            } else {
              _12235 = _viewPos.z;
              _12236 = _viewPos.y;
              _12237 = _viewPos.x;
            }
            _12240 = saturate(abs(_12201) * 4.0f);  // [sem: expr_sat]
            _12262 = (_12240 * _12240) * exp2(((((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_12237 - _viewPos.x) * 5e-05f) + 0.5f), ((_12236 - _cloudAltitude) / _cloudThickness), (((_12235 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x) * -1.442695f) * (_cloudScatteringCoefficient / _distanceScale)) * _distanceScale);
            __3__39__0__1__g_texPrecomputedAmbientUAV[6] = float4(((_global_0[0]) * 0.0078125f), ((_global_1[0]) * 0.0078125f), ((_global_2[0]) * 0.0078125f), ((saturate(((_viewPos.y - _cloudAltitude) - _cloudThickness) * 0.1f) * (1.0f - _12262)) + _12262));
            break;
          }
          case 7: {
            _12287 = _sunLightIntensity * _sunLightPreset;
            _12290 = (1.0f - _sunSizeAngleCosine) * 6.2831855f;
            _12294 = min(16.0f, (_atmosphereThickness + -16.0f));
            _12295 = max(_12294, 0.0f);
            _12304 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _12295) * _12295)) / (_earthRadius + _12295);
            _12305 = (_12304 < 1.0f);
            if (!_12305) {
              _12317 = ((exp2(log2(saturate((_12304 + -1.0f) / (_12304 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            } else {
              _12317 = 0.99609375f;
            }
            _12326 = (exp2(log2(saturate((_12294 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
            // RenoDX: >>> [Patch: SkySpectralOzone] [Version: 1.13.00]
            // Description: Routes the exact native ozone absorption literal(s) through the gated spectral constants; every Off selection resolves to the original float value.
            _12336 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_1);
            _12342 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_2);
            _12347 = (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * SKY_OZONE_3);
            // RenoDX: <<< [Patch: SkySpectralOzone]
            _12352 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_12326, _12317), 0.0f))).x) * -1.442695f;
            _12364 = acos(min(max(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)), -1.0f), 1.0f));
            _12365 = _12364 * 57.295776f;
            _12371 = _sunSizeAngle * _sunSizeAngle;
            if (!(_12365 > (_moonSizeAngle + _sunSizeAngle))) {
              _12373 = _moonSizeAngle * _moonSizeAngle;
              if (!(_12365 <= (abs(_sunSizeAngle - _moonSizeAngle) + 0.05f))) {
                _12379 = _12365 * _12365;
                _12380 = _12364 * 114.59155f;
                _12388 = acos(min(max((((_12379 + _12371) - _12373) / (_12380 * _sunSizeAngle)), -1.0f), 1.0f)) * 2.0f;
                _12396 = acos(min(max((((_12379 - _12371) + _12373) / (_moonSizeAngle * _12380)), -1.0f), 1.0f)) * 2.0f;
                _12411 = (((((_12396 * _12373) + (_12388 * _12371)) - (sin(_12388) * _12371)) - (sin(_12396) * _12373)) * 0.5f);
              } else {
                _12411 = (min(_12371, _12373) * 3.1415927f);
              }
            } else {
              _12411 = 0.0f;
            }
            if (!_12305) {
              _12423 = ((exp2(log2(saturate((_12304 + -1.0f) / (_12304 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            } else {
              _12423 = 0.99609375f;
            }
            _12426 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_12326, _12423), 0.0f))).x) * -1.442695f;
            _12429 = _moonLightIntensity * _moonLightPreset;
            _12433 = (1.0f - _moonSizeAngleCosine) * 6.2831855f;
            if (!_12305) {
              _12445 = ((exp2(log2(saturate((_12304 + -1.0f) / (_12304 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            } else {
              _12445 = 0.99609375f;
            }
            _12448 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_12326, _12445), 0.0f))).x) * -1.442695f;
            if (!_12305) {
              _12460 = ((exp2(log2(saturate((_12304 + -1.0f) / (_12304 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            } else {
              _12460 = 0.99609375f;
            }
            _12463 = (((float2)(__3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_12326, _12460), 0.0f))).x) * -1.442695f;
            __3__39__0__1__g_texPrecomputedAmbientUAV[7] = float4((_12287 / (dot(float3(exp2(_12352 * _12336), exp2(_12352 * _12342), exp2(_12352 * _12347)), float3(0.299f, 0.587f, 0.114f)) * _12290)), (((1.0f - saturate(_12411 / (_12371 * 3.1415927f))) * _12290) * (_12287 / (dot(float3(exp2(_12426 * _12336), exp2(_12426 * _12342), exp2(_12426 * _12347)), float3(0.299f, 0.587f, 0.114f)) * _12290))), (_12429 / (dot(float3(exp2(_12448 * _12336), exp2(_12448 * _12342), exp2(_12448 * _12347)), float3(0.299f, 0.587f, 0.114f)) * _12433)), ((_12429 / (dot(float3(exp2(_12463 * _12336), exp2(_12463 * _12342), exp2(_12463 * _12347)), float3(0.299f, 0.587f, 0.114f)) * _12433)) * _12433));
            break;
          }
          default: {
            __3__39__0__1__g_texPrecomputedAmbientUAV[56] = float4(((_global_3[0]) * 0.049087387f), ((_global_3[1]) * 0.049087387f), ((_global_3[2]) * 0.049087387f), 0.0f);
            break;
          }
        }
      }
    }
  }
}
