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
  float _241;
  int _242;
  int _243;
  float _244;
  float _245;
  float _246;
  float _247;
  float _248;
  float _249;
  float _250;
  float _251;
  float _252;
  float _253;
  float _254;
  float _255;
  float _256;
  float _257;
  int _258;
  float _463;
  float _475;
  float _541;
  float _587;
  float _606;
  float _607;
  float _608;
  float _609;
  float _610;
  float _611;
  int _670;
  float _671;
  float _672;
  float _673;
  float _674;
  int _728;
  int _729;
  float _730;
  float _731;
  float _732;
  float _733;
  float _745;
  float _792;
  float _798;
  float _929;
  float _939;
  bool _1018;
  float _1052;
  float _1053;
  float _1054;
  float _1108;
  int _1120;
  float _1121;
  float _1122;
  float _1123;
  float _1124;
  float _1125;
  float _1126;
  float _1127;
  float _1128;
  float _1302;
  float _1303;
  float _1330;
  float _1516;
  float _1528;
  float _1655;
  float _1665;
  float _1679;
  float _1680;
  float _1718;
  float _1756;
  float _2161;
  float _2162;
  float _2163;
  float _2164;
  float _2165;
  float _2166;
  bool _2209;
  int _2217;
  int _2218;
  float _2219;
  float _2220;
  float _2221;
  float _2222;
  float _2223;
  float _2224;
  float _2225;
  float _2226;
  float _2227;
  float _2228;
  float _2229;
  float _2230;
  float _2231;
  float _2232;
  int _2233;
  int _2234;
  float _2235;
  float _2261;
  float _2272;
  float _2324;
  float _2421;
  float _2468;
  float _2487;
  float _2488;
  float _2489;
  float _2490;
  float _2491;
  float _2492;
  float _2629;
  float _2641;
  bool _2706;
  float _2740;
  float _2741;
  float _2742;
  float _2798;
  int _2810;
  float _2811;
  float _2812;
  float _2813;
  float _2814;
  float _2815;
  float _2816;
  float _2817;
  float _2818;
  float _2992;
  float _2993;
  float _3020;
  float _3206;
  float _3218;
  float _3345;
  float _3355;
  float _3369;
  float _3370;
  float _3408;
  float _3446;
  float _3852;
  // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
  // Description: Declarations for the boosted-g Mie phase companion variables used by the
  //              precomputed-LUT sun path. The companions mirror the vanilla sun Henyey-Greenstein
  //              phase terms (_3928/_3934/_3935/_3942) with the dawn/dusk-boosted g; they are
  //              declared here because the decompiled shader hoists all loop-carried locals into
  //              this declaration block, and they are assigned at the [Patch: DawnDuskImprovements]
  //              companion sites below. When Dawn/Dusk Improvements is Off (or the sun is outside
  //              the dawn/dusk window) the boosted g equals the vanilla g, so the companions hold
  //              values bit-identical to the vanilla terms they mirror.
  //              .
  // [DAWN_DUSK] boosted-g Mie phase companions for the LUT sun path
  float _3928b;
  float _3934b;
  float _3935b;
  float _3942b;
  // RenoDX: <<< [Patch: DawnDuskImprovements]
  float _3953;
  float _4040;
  float _4046;
  float _4175;
  float _4229;
  float _4256;
  float _4261;
  float _4413;
  float _4512;
  float _4595;
  float _4601;
  float _4725;
  float _4777;
  float _4804;
  float _4809;
  float _4905;
  float _4906;
  float _4907;
  float _4908;
  float _4909;
  float _4910;
  float _4911;
  float _4912;
  float _4913;
  float _4914;
  float _4915;
  float _4916;
  float _4917;
  float _4918;
  float _4919;
  float _4920;
  float _4921;
  float _4922;
  float _4923;
  float _4924;
  float _5001;
  float _5103;
  float _5191;
  float _5197;
  float _5325;
  float _5379;
  float _5406;
  float _5411;
  float _5507;
  float _5508;
  float _5509;
  float _5510;
  float _5511;
  float _5512;
  float _5513;
  float _5514;
  float _5515;
  float _5611;
  float _5646;
  float _5647;
  float _5648;
  float _5649;
  float _5650;
  float _5651;
  float _156;
  float _157;
  float _164;
  float _167;
  float _169;
  float _170;
  float _171;
  float _177;
  float _184;
  float _186;
  float _187;
  float _188;
  float _194;
  float _202;
  float _207;
  float _209;
  float _210;
  float _217;
  float _225;
  float _228;
  float _229;
  float _239;
  float _259;
  float _273;
  float _274;
  float _276;
  float _278;
  float _281;
  float _282;
  float _285;
  float _286;
  float _288;
  float _289;
  float _291;
  float4 _313;
  float _317;
  float _318;
  float _320;
  float _321;
  float _322;
  float _326;
  float _333;
  float _336;
  float _339;
  float _342;
  float _353;
  float _367;
  float _368;
  float _369;
  float _370;
  float _371;
  float _375;
  float _379;
  float _380;
  float _385;
  float _422;
  bool _465;
  bool _477;
  int _486;
  uint _487;
  float _488;
  float _491;
  float _492;
  float _493;
  float _494;
  float _498;
  float _499;
  float _500;
  float _501;
  float _502;
  float _505;
  float _510;
  float _511;
  float _518;
  bool _519;
  float _550;
  float4 _562;
  float4 _598;
  float _616;
  float _618;
  float _620;
  float _632;
  float _640;
  float _648;
  float _651;
  float _652;
  bool _663;
  float _677;
  float _679;
  float _681;
  float _693;
  float _701;
  float _709;
  bool _720;
  float _757;
  float _765;
  float _773;
  float _793;
  float _799;
  float _800;
  float _805;
  float _810;
  float _813;
  float _814;
  float _818;
  float _819;
  float _822;
  float _836;
  float _837;
  float _838;
  float _839;
  float _840;
  float _848;
  float _849;
  float _854;
  float _888;
  float _940;
  float _943;
  float _947;
  float _949;
  float _951;
  float _952;
  float _953;
  float _954;
  float _964;
  float _967;
  float _1006;
  float _1007;
  float _1009;
  float _1022;
  float _1024;
  float _1027;
  bool _1028;
  float _1037;
  float _1040;
  float _1046;
  float _1056;
  float _1057;
  float _1059;
  float _1077;
  float _1083;
  float _1084;
  float _1087;
  float _1095;
  float _1109;
  float _1110;
  float _1111;
  float _1112;
  float _1131;
  float _1133;
  float _1137;
  float _1144;
  float _1147;
  float _1150;
  float _1153;
  float _1164;
  float _1178;
  float _1179;
  float _1180;
  float _1181;
  float _1182;
  float _1186;
  float _1190;
  float _1191;
  float _1196;
  float _1255;
  float _1286;
  float _1289;
  float _1317;
  float _1318;
  float _1319;
  float _1320;
  float _1321;
  float _1322;
  float _1323;
  float _1324;
  int _1325;
  float _1331;
  float _1334;
  float _1336;
  float _1337;
  float _1338;
  float _1340;
  float _1351;
  float4 _1377;
  float _1379;
  float _1380;
  float _1381;
  float _1384;
  float _1389;
  float _1392;
  float _1395;
  float _1398;
  float _1399;
  float _1406;
  float _1420;
  float _1421;
  float _1422;
  float _1423;
  float _1424;
  float _1428;
  float _1432;
  float _1433;
  float _1438;
  float _1475;
  bool _1518;
  float _1529;
  float _1530;
  float _1533;
  float _1538;
  float _1545;
  float _1559;
  float _1560;
  float _1561;
  float _1562;
  float _1563;
  float _1567;
  float _1571;
  float _1572;
  float _1577;
  float _1614;
  float _1681;
  float _1685;
  float _1686;
  float _1695;
  float _1727;
  float2 _1730;
  float _1733;
  float2 _1757;
  float _1765;
  float _1766;
  float _1769;
  float _1772;
  float _1775;
  float _1778;
  float _1779;
  float _1780;
  float _1785;
  float _1788;
  float _1790;
  float _1792;
  float _1795;
  float _1797;
  float _1802;
  float _1804;
  float _1808;
  float _1809;
  float _1810;
  float _1813;
  float _1814;
  float _1817;
  float _1818;
  float _1821;
  float _1824;
  float _1827;
  float _1832;
  float _1837;
  float _1842;
  float _1843;
  float _1844;
  float _1845;
  float _1846;
  float _1847;
  float _1858;
  float _1859;
  float _1862;
  float _1864;
  float _1865;
  float _1871;
  float _1879;
  float _1880;
  float _1881;
  float _1883;
  float _1889;
  float _1891;
  float _1894;
  float _1897;
  float _1901;
  float _1905;
  float _1909;
  float _1913;
  float _1914;
  float _1916;
  float _1928;
  float _1940;
  float _1951;
  float _1963;
  float _1974;
  float _1986;
  float _1987;
  float _1989;
  float _1990;
  float _1991;
  float _1992;
  float _1993;
  float _1996;
  float _1999;
  float _2002;
  float _2004;
  float _2012;
  float _2019;
  float _2034;
  float _2049;
  float _2064;
  float _2068;
  float _2069;
  float _2072;
  float _2073;
  float _2076;
  float _2079;
  float _2082;
  float _2089;
  float _2099;
  float _2100;
  float _2101;
  float _2104;
  float _2107;
  float _2110;
  float _2117;
  float _2175;
  uint _2236;
  float _2244;
  float _2250;
  float _2254;
  float _2265;
  float _2278;
  float _2279;
  float _2280;
  float _2283;
  float _2284;
  float _2286;
  float _2288;
  float _2293;
  float _2297;
  float4 _2300;
  float _2312;
  float _2316;
  float _2325;
  float _2354;
  int _2357;
  float _2360;
  float _2371;
  float _2372;
  float _2373;
  float _2374;
  float _2378;
  float _2379;
  float _2380;
  float _2381;
  float _2382;
  float _2385;
  float _2390;
  float _2391;
  float _2398;
  bool _2399;
  float _2430;
  float4 _2443;
  float4 _2479;
  float _2493;
  float _2494;
  float _2499;
  float _2504;
  float _2507;
  float _2508;
  float _2512;
  float _2515;
  float _2518;
  float _2521;
  float _2526;
  float _2539;
  float _2540;
  float _2541;
  float _2542;
  float _2543;
  float _2551;
  float _2552;
  float _2557;
  float _2589;
  float _2644;
  float _2648;
  float _2649;
  float _2650;
  float _2651;
  float _2652;
  float _2653;
  float _2663;
  float _2694;
  float _2695;
  float _2697;
  float _2710;
  float _2712;
  float _2715;
  bool _2716;
  float _2725;
  float _2728;
  float _2734;
  float _2745;
  float _2746;
  float _2748;
  float _2766;
  float _2772;
  float _2773;
  float _2776;
  float _2785;
  float _2799;
  float _2800;
  float _2801;
  float _2802;
  float _2821;
  float _2823;
  float _2827;
  float _2834;
  float _2837;
  float _2840;
  float _2843;
  float _2854;
  float _2868;
  float _2869;
  float _2870;
  float _2871;
  float _2872;
  float _2876;
  float _2880;
  float _2881;
  float _2886;
  float _2945;
  float _2976;
  float _2979;
  float _3007;
  float _3008;
  float _3009;
  float _3010;
  float _3011;
  float _3012;
  float _3013;
  float _3014;
  int _3015;
  float _3021;
  float _3024;
  float _3026;
  float _3027;
  float _3028;
  float _3030;
  float _3041;
  float4 _3067;
  float _3069;
  float _3070;
  float _3071;
  float _3074;
  float _3079;
  float _3082;
  float _3085;
  float _3088;
  float _3089;
  float _3096;
  float _3110;
  float _3111;
  float _3112;
  float _3113;
  float _3114;
  float _3118;
  float _3122;
  float _3123;
  float _3128;
  float _3165;
  bool _3208;
  float _3219;
  float _3220;
  float _3223;
  float _3228;
  float _3235;
  float _3249;
  float _3250;
  float _3251;
  float _3252;
  float _3253;
  float _3257;
  float _3261;
  float _3262;
  float _3267;
  float _3304;
  float _3371;
  float _3375;
  float _3376;
  float _3385;
  float _3417;
  float2 _3420;
  float _3423;
  float2 _3447;
  float _3452;
  float _3455;
  float _3458;
  float _3461;
  float _3462;
  float _3463;
  float _3468;
  float _3471;
  float _3473;
  float _3475;
  float _3478;
  float _3483;
  float _3485;
  float _3489;
  float _3492;
  float _3495;
  float _3498;
  float _3502;
  float _3506;
  float _3510;
  float _3515;
  float _3520;
  float _3525;
  float _3526;
  float _3527;
  float _3528;
  float _3529;
  float _3536;
  float _3540;
  float _3541;
  float _3542;
  float _3544;
  float _3545;
  float _3551;
  float _3559;
  float _3562;
  float _3563;
  float _3567;
  float _3570;
  float _3573;
  float _3574;
  float _3575;
  float _3579;
  float _3583;
  float _3587;
  float _3591;
  float _3596;
  float _3601;
  float _3606;
  float _3607;
  float _3609;
  float _3614;
  float _3615;
  float _3616;
  float _3620;
  float _3621;
  float _3625;
  float _3626;
  float _3627;
  float _3630;
  float _3634;
  float _3638;
  float _3642;
  float _3647;
  float _3652;
  float _3657;
  float _3658;
  float _3666;
  float _3674;
  float _3789;
  float _3792;
  float _3795;
  float _3798;
  float _3804;
  float _3805;
  float _3806;
  float _3807;
  float _3808;
  float _3813;
  float _3816;
  float _3820;
  float _3821;
  float _3822;
  float _3823;
  float _3829;
  bool _3830;
  float _3860;
  float _3866;
  float4 _3869;
  float4 _3874;
  float _3879;
  float _3880;
  float _3883;
  float _3884;
  float _3885;
  float _3891;
  float _3898;
  float4 _3900;
  float4 _3905;
  float _3909;
  float _3915;
  float _3916;
  float _3917;
  float _3918;
  float _3919;
  float _3923;
  float _3924;
  float _3930;
  bool _3931;
  float _3961;
  float _3967;
  float4 _3968;
  float4 _3972;
  float4 _3976;
  float4 _3980;
  float _3984;
  float _3985;
  float _3986;
  float _3987;
  float _3988;
  float _3994;
  float _3998;
  float _4002;
  float _4004;
  float _4005;
  float _4006;
  float _4007;
  float _4008;
  float _4014;
  float _4020;
  float _4026;
  float _4032;
  float _4033;
  float _4034;
  bool _4035;
  bool _4041;
  float _4047;
  float _4051;
  float _4052;
  float _4053;
  float _4059;
  float _4079;
  float _4099;
  float _4101;
  float _4113;
  float _4115;
  float _4125;
  float _4131;
  float _4136;
  float _4140;
  float _4144;
  float _4148;
  float _4153;
  float _4181;
  float4 _4182;
  float4 _4186;
  float _4191;
  float _4192;
  float _4199;
  float4 _4200;
  float4 _4204;
  float _4235;
  float4 _4236;
  float4 _4240;
  float4 _4244;
  float4 _4248;
  float _4263;
  float _4265;
  float _4361;
  float _4362;
  float _4363;
  float _4365;
  float _4366;
  float _4372;
  float _4373;
  float _4374;
  float _4375;
  float _4376;
  float _4377;
  float _4381;
  float _4382;
  float _4383;
  float _4384;
  float _4390;
  bool _4391;
  float _4421;
  float _4427;
  float4 _4430;
  float4 _4435;
  float _4439;
  float _4442;
  float _4443;
  float _4444;
  float _4450;
  float _4457;
  float4 _4459;
  float4 _4464;
  float _4468;
  float _4474;
  float _4475;
  float _4476;
  float _4477;
  float _4478;
  float _4482;
  float _4483;
  float _4489;
  bool _4490;
  float _4520;
  float _4526;
  float4 _4527;
  float4 _4531;
  float4 _4535;
  float4 _4539;
  float _4543;
  float _4549;
  float _4553;
  float _4557;
  float _4559;
  float _4560;
  float _4561;
  float _4562;
  float _4563;
  float _4569;
  float _4575;
  float _4581;
  float _4587;
  float _4588;
  float _4589;
  bool _4590;
  bool _4596;
  float _4602;
  float _4606;
  float _4607;
  float _4608;
  float _4614;
  float _4634;
  float _4654;
  float _4656;
  float _4668;
  float _4670;
  float _4680;
  float _4686;
  float _4691;
  float _4695;
  float _4699;
  float _4703;
  float _4731;
  float4 _4732;
  float4 _4736;
  float _4740;
  float _4747;
  float4 _4748;
  float4 _4752;
  float _4783;
  float4 _4784;
  float4 _4788;
  float4 _4792;
  float4 _4796;
  float _4811;
  float _4813;
  float _4930;
  float _4933;
  float _4937;
  float _4939;
  float _4941;
  float _4945;
  float _4947;
  float _4953;
  float _4954;
  float _4955;
  float _4956;
  float _4957;
  float _4962;
  float _4965;
  float _4969;
  float _4970;
  float _4971;
  float _4972;
  float _4978;
  bool _4979;
  float _5009;
  float _5015;
  float4 _5018;
  float4 _5023;
  float _5028;
  float _5029;
  float _5032;
  float _5033;
  float _5034;
  float _5040;
  float _5047;
  float4 _5049;
  float4 _5054;
  float _5059;
  float _5065;
  float _5066;
  float _5067;
  float _5068;
  float _5069;
  float _5073;
  float _5074;
  float _5080;
  bool _5081;
  float _5111;
  float _5117;
  float4 _5118;
  float4 _5122;
  float4 _5126;
  float4 _5130;
  float _5134;
  float _5135;
  float _5136;
  float _5137;
  float _5138;
  float _5139;
  float _5145;
  float _5149;
  float _5153;
  float _5155;
  float _5156;
  float _5157;
  float _5158;
  float _5159;
  float _5165;
  float _5171;
  float _5177;
  float _5183;
  float _5184;
  float _5185;
  bool _5186;
  bool _5192;
  float _5198;
  float _5202;
  float _5203;
  float _5204;
  float _5210;
  float _5230;
  float _5250;
  float _5252;
  float _5264;
  float _5266;
  float _5275;
  float _5281;
  float _5286;
  float _5290;
  float _5294;
  float _5298;
  float _5303;
  float _5331;
  float4 _5332;
  float4 _5336;
  float _5341;
  float _5342;
  float _5349;
  float4 _5350;
  float4 _5354;
  float _5385;
  float4 _5386;
  float4 _5390;
  float4 _5394;
  float4 _5398;
  float _5413;
  float _5415;
  float _5530;
  float _5543;
  float _5553;
  float _5562;
  float _5572;
  float _5579;
  float _5586;
  float _5587;
  float _5588;
  float _5589;
  float _5602;
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
      _170 = _167 + 1.0f;
      _171 = _164 * 2.0f;
      _177 = (((1.0f - _167) * 3.0f) / ((_167 + 2.0f) * 2.0f)) * 0.07957747f;
      _184 = (_169 / exp2(log2(_170 - (_cloudPhaseConstFront * _171)) * 1.5f)) * _177;
      _186 = _cloudPhaseConstBack * _cloudPhaseConstBack;
      _187 = _186 + 1.0f;
      _188 = _cloudPhaseConstBack * -2.0f;
      _194 = (((1.0f - _186) * 3.0f) / ((_186 + 2.0f) * 2.0f)) * 0.039788734f;
      _202 = ((_169 / exp2(log2(_187 - (_188 * _164)) * 1.5f)) * _194) + _184;
      _207 = dot(float3(_115, _116, _117), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
      _209 = (_207 * _207) + 1.0f;
      _210 = _207 * 2.0f;
      _217 = (_209 / exp2(log2(_170 - (_210 * _cloudPhaseConstFront)) * 1.5f)) * _177;
      _225 = ((_209 / exp2(log2(_187 - (_207 * _188)) * 1.5f)) * _194) + _217;
      _228 = min(_cloudVisibleRange, _cloudVisibleRange);
      _229 = select(_131, _157, _114);
      if (_renderFlags.x > 0.5f) {
        _239 = log2(exp2(log2(max(1.0f, (_cloudVisibleRange * 0.00033333333f))) * 0.0033333334f));
        _241 = 128.0f;
        _242 = 0;
        _243 = 0;
        _244 = 0.0f;
        _245 = 0.0f;
        _246 = 0.0f;
        _247 = 0.0f;
        _248 = 0.0f;
        _249 = 0.0f;
        _250 = 0.0f;
        _251 = 0.0f;
        _252 = 0.0f;
        _253 = 0.0f;
        _254 = 0.0f;
        _255 = 0.0f;
        _256 = 0.0f;
        _257 = 0.0f;
        _258 = 1;
        while(true) {
          _259 = (float)((int)(_243));
          _273 = (((exp2(select(((uint)_243 < (uint)12), (_259 * 0.33f), (_259 + -8.039999f)) * _239) + -1.0f) * (_228 + -128.0f)) / (exp2(_239 * 300.0f) + -1.0f)) + 128.0f;
          _274 = min(_273, _229);
          _276 = max(0.0f, (_274 - _241));
          _278 = (_276 * _130) + _241;
          _281 = _distanceScale * _276;
          _282 = _278 * _115;
          _285 = _282 + _viewPos.x;
          _286 = _278 * _116;
          _288 = _viewPos.y + _286;
          _289 = _278 * _117;
          _291 = _viewPos.z + _289;
          // [sem: _3__36__0__0__g_climateTex2_sampleLod]
          _313 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_285 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_291 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
          _317 = _274 * _115;
          _318 = _viewPos.x + _317;
          _320 = _viewPos.y + (_274 * _116);
          _321 = _274 * _117;
          _322 = _viewPos.z + _321;
          _326 = sqrt((_321 * _321) + (_317 * _317));
          _333 = _cloudAltitude - (max(((_326 * _326) + -400000.0f), 0.0f) * 1e-06f);
          _336 = _cloudDetailScale * 0.004f;
          _339 = _cloudBaseScale * 0.0004f;
          _342 = _earthRadius + _320;
          _353 = ((sqrt(((_322 * _322) + (_318 * _318)) + (_342 * _342)) - _333) - _earthRadius) / _cloudThickness;
          if (!((_353 < 0.0f) || (_353 > 1.0f))) {
            _367 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
            _368 = _320 - _333;
            _369 = _336 / _339;
            _370 = _369 * _339;
            _371 = _367 * _369;
            _375 = saturate(max((_326 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
            _379 = (_cloudDetailScale * 0.001884f) * (4.0f - (_375 * 3.0f));
            _380 = _370 * 4.355f;
            _385 = 1.0f - sqrt(saturate((1.0f - _353) * 1.4285715f));
            _422 = (((((_375 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_336 * _318) - (_370 * _cloudScroll.x)), ((_368 * _336) - _371), ((_336 * _322) - (_370 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_379 * _318) - (_380 * _cloudScroll.x)), ((_379 * _368) - (_371 * 4.355f)), ((_379 * _322) - (_380 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_353 * 4.0f) * 0.8f) + 0.2f);
            _463 = (saturate(((saturate(_353 * 10.0f) * saturate(saturate(((_313.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_339 * (_318 - _cloudScroll.x)), ((_339 * _368) - _367), (_339 * (_322 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_385 * 0.5f), ((_385 * _385) * _385)))) - _422) / (1.0f - _422)) * _cloudAlpha);
          } else {
            _463 = 0.0f;
          }
          _465 = (_cloudFadeRange > 1e-05f);
          if (_465) {
            _475 = saturate((((1.0f - _cloudNear) * _326) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
          } else {
            _475 = 1.0f;  // [sem: expr_sat]
          }
          _477 = ((_475 * _463) > 0.001f);
          if ((_242 != 0) && _477) {
            _2217 = 0;
            _2218 = _258;
            _2219 = _257;
            _2220 = _256;
            _2221 = _255;
            _2222 = _254;
            _2223 = _253;
            _2224 = _252;
            _2225 = _251;
            _2226 = _250;
            _2227 = _249;
            _2228 = _248;
            _2229 = _247;
            _2230 = _246;
            _2231 = _245;
            _2232 = _244;
            _2233 = ((int)((uint)((uint)(_243)) + (uint)(-2)));
            _2234 = 0;
            _2235 = _241;
          } else {
            _486 = select(((uint)_243 < (uint)298), (((int)(uint)(_477)) ^ 1), 0);
            _487 = (uint)((uint)(_486)) + (uint)((uint)(_243));
            _488 = _cloudThickness + _cloudAltitude;
            _491 = saturate((_278 + -4000.0f) * 0.001f);  // [sem: expr_sat]
            _492 = _earthRadius + _288;
            _493 = _285 * _285;
            _494 = _291 * _291;
            _498 = sqrt((_494 + _493) + (_492 * _492));
            _499 = _285 / _498;
            _500 = _492 / _498;
            _501 = _291 / _498;
            _502 = _498 - _earthRadius;
            if (_502 > 0.0f) {
              _505 = dot(float3(_499, _500, _501), float3(_115, _116, _117));
              _510 = min(max(_502, 16.0f), (_atmosphereThickness + -16.0f));
              _511 = max(_510, 0.0f);
              _518 = (-0.0f - sqrt((_511 + (_earthRadius * 2.0f)) * _511)) / (_511 + _earthRadius);
              _519 = (_505 > _518);
              if (_519) {
                _541 = ((exp2(log2(saturate((_505 - _518) / (1.0f - _518))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _541 = ((exp2(log2(saturate((_518 - _505) / (_518 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              _550 = (exp2(log2(saturate((_510 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
              _562 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_550, _541, ((1.0f - exp2(-1.1541561f - (dot(float3(_499, _500, _501), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
              if (_519) {
                _587 = ((exp2(log2(saturate((_505 - _518) / (1.0f - _518))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _587 = ((exp2(log2(saturate((_518 - _505) / (_518 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
              _598 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_550, _587, ((1.0f - exp2(-1.1541561f - (dot(float3(_499, _500, _501), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
              _606 = (_598.z * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _607 = (_598.y * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _608 = (_598.x * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _609 = _562.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _610 = _562.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _611 = _562.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            } else {
              _606 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _607 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _608 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _609 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _610 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              _611 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
            }
            if (_491 < 0.9999f) {
              _616 = _285 - (_staticShadowPosition[1].x);
              _618 = _288 - (_staticShadowPosition[1].y);
              _620 = _291 - (_staticShadowPosition[1].z);
              _632 = (_shadowProjRelativeTexScale[1][0].w) + mad((_shadowProjRelativeTexScale[1][0].z), _620, mad((_shadowProjRelativeTexScale[1][0].y), _618, ((_shadowProjRelativeTexScale[1][0].x) * _616)));
              _640 = mad((_shadowProjRelativeTexScale[1][1].z), _620, mad((_shadowProjRelativeTexScale[1][1].y), _618, ((_shadowProjRelativeTexScale[1][1].x) * _616))) + (_shadowProjRelativeTexScale[1][1].w);
              _648 = mad((_shadowProjRelativeTexScale[1][2].z), _620, mad((_shadowProjRelativeTexScale[1][2].y), _618, ((_shadowProjRelativeTexScale[1][2].x) * _616))) + (_shadowProjRelativeTexScale[1][2].w);
              _651 = 2.0f / _shadowSizeAndInvSize.y;
              _652 = 1.0f - _651;
              if ((_640 <= _652) && ((_632 >= _651) && (_632 <= _652))) {
                _663 = (_640 >= _651) && ((_648 >= 0.0001f) && (_648 <= 1.0f));
                _670 = ((int)(uint)(_663));
                _671 = select(_663, 0.0002f, 0.0f);
                _672 = select(_663, _648, 0.0f);
                _673 = select(_663, _640, 0.0f);
                _674 = select(_663, _632, 0.0f);
              } else {
                _670 = 0;
                _671 = 0.0f;
                _672 = 0.0f;
                _673 = 0.0f;
                _674 = 0.0f;
              }
              _677 = _285 - (_staticShadowPosition[0].x);
              _679 = _288 - (_staticShadowPosition[0].y);
              _681 = _291 - (_staticShadowPosition[0].z);
              _693 = (_shadowProjRelativeTexScale[0][0].w) + mad((_shadowProjRelativeTexScale[0][0].z), _681, mad((_shadowProjRelativeTexScale[0][0].y), _679, ((_shadowProjRelativeTexScale[0][0].x) * _677)));
              _701 = mad((_shadowProjRelativeTexScale[0][1].z), _681, mad((_shadowProjRelativeTexScale[0][1].y), _679, ((_shadowProjRelativeTexScale[0][1].x) * _677))) + (_shadowProjRelativeTexScale[0][1].w);
              _709 = mad((_shadowProjRelativeTexScale[0][2].z), _681, mad((_shadowProjRelativeTexScale[0][2].y), _679, ((_shadowProjRelativeTexScale[0][2].x) * _677))) + (_shadowProjRelativeTexScale[0][2].w);
              if (((_693 >= _651) && (_693 <= _652)) && (_701 <= _652)) {
                _720 = (_709 <= 1.0f) && ((_701 >= _651) && (_709 >= 0.0001f));
                _728 = select(_720, 0, _670);
                _729 = select(_720, 1, _670);
                _730 = select(_720, 0.0002f, _671);
                _731 = select(_720, _709, _672);
                _732 = select(_720, _701, _673);
                _733 = select(_720, _693, _674);
              } else {
                _728 = _670;
                _729 = _670;
                _730 = _671;
                _731 = _672;
                _732 = _673;
                _733 = _674;
              }
              [branch]
              if (!(_729 == 0)) {
                // [sem: expr_sat]
                _745 = saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_733, _732, ((float)((uint)((uint)(_728))))), (_731 - _730))).x));
              } else {
                _745 = 1.0f;  // [sem: expr_sat]
              }
              _757 = (_terrainShadowProjRelativeTexScale[0].w) + mad((_terrainShadowProjRelativeTexScale[0].z), _289, mad((_terrainShadowProjRelativeTexScale[0].y), _286, ((_terrainShadowProjRelativeTexScale[0].x) * _282)));
              _765 = mad((_terrainShadowProjRelativeTexScale[1].z), _289, mad((_terrainShadowProjRelativeTexScale[1].y), _286, ((_terrainShadowProjRelativeTexScale[1].x) * _282))) + (_terrainShadowProjRelativeTexScale[1].w);
              _773 = mad((_terrainShadowProjRelativeTexScale[2].z), _289, mad((_terrainShadowProjRelativeTexScale[2].y), _286, ((_terrainShadowProjRelativeTexScale[2].x) * _282))) + (_terrainShadowProjRelativeTexScale[2].w);
              if ((_773 <= 1.0f) && ((saturate(_757) == _757) && (_773 >= 0.0001f))) {
                if (saturate(_765) == _765) {
                  // [sem: expr_sat]
                  _792 = saturate(1.0f - ((__3__36__0__0__g_terrainShadowDepth.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float2(_757, _765), (_773 + -0.005f))).x));
                } else {
                  _792 = 1.0f;  // [sem: expr_sat]
                }
              } else {
                _792 = 1.0f;  // [sem: expr_sat]
              }
              _793 = min(_745, _792);
              _798 = (lerp(_793, 1.0f, _491));  // [sem: blended]
            } else {
              _798 = 1.0f;  // [sem: blended]
            }
            _799 = max(_502, 0.01f);
            _800 = -0.0f - _799;
            _805 = exp2((_800 / _rayleighScaledHeight) * 1.442695f);
            _810 = exp2((_800 / _mieScaledHeight) * 1.442695f);
            _813 = (_289 * _289) + (_282 * _282);
            _814 = sqrt(_813);
            _818 = max(((_814 * _814) + -400000.0f), 0.0f) * 1e-06f;
            _819 = _cloudAltitude - _818;
            _822 = ((_498 - _earthRadius) - _819) / _cloudThickness;
            if (!((_822 < 0.0f) || (_822 > 1.0f))) {
              _836 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
              _837 = _288 - _819;
              _838 = _336 / _339;
              _839 = _838 * _339;
              _840 = _836 * _838;
              _848 = (_cloudDetailScale * 0.001884f) * (4.0f - (saturate(max((_814 + -2500.0f), 0.0f) * 0.05f) * 3.0f));
              _849 = _839 * 4.355f;
              _854 = 1.0f - sqrt(saturate((1.0f - _822) * 1.4285715f));
              _888 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_336 * _285) - (_839 * _cloudScroll.x)), ((_837 * _336) - _840), ((_336 * _291) - (_839 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_848 * _285) - (_849 * _cloudScroll.x)), ((_848 * _837) - (_840 * 4.355f)), ((_848 * _291) - (_849 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_822 * 4.0f) * 0.8f) + 0.2f);
              _929 = (saturate(((saturate(_822 * 10.0f) * saturate(saturate(((_313.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_339 * (_285 - _cloudScroll.x)), ((_837 * _339) - _836), (_339 * (_291 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_854 * 0.5f), ((_854 * _854) * _854)))) - _888) / (1.0f - _888)) * _cloudAlpha);
            } else {
              _929 = 0.0f;
            }
            if (_465) {
              _939 = saturate(((_814 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
            } else {
              _939 = 1.0f;  // [sem: expr_sat]
            }
            _940 = _939 * _929;
            _943 = sqrt(_813 + (_286 * _286));
            _947 = max(1e-06f, (_heightFogScale * 0.0025f));
            _949 = _947 * _cloudScroll.x;
            _951 = _947 * _cloudScroll.y;
            _952 = _947 * _285;
            _953 = _947 * _288;
            _954 = _947 * _291;
            // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
            _964 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_952 * 6.393882f) - (_949 * 1.871f)), (_953 * 6.393882f), ((_954 * 6.393882f) - (_951 * 1.871f))), 0.0f);
            _967 = _heightFogFalloff * -0.14426951f;
            _1006 = (((saturate(_943 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_952 * 0.5127f) - _949), (_953 * 0.5127f), ((_954 * 0.5127f) - _951)), 0.0f)).x))) * ((saturate((_943 + -300.0f) * 0.0025f) * (0.5f - _964.x)) + _964.x)) * ((exp2(max(0.001f, ((_799 - _heightScaleMin) - ((_heightScaleMax - _heightScaleMin) * _313.z))) * _967) * _313.y) + (exp2(max(0.001f, (_799 - _heightFogBaseline)) * _967) * _heightFogDensity));
            _1007 = _288 - _cloudAltitude;
            _1009 = (_818 + _1007) / _cloudThickness;
            if (!(_sunDirection.y > 0.0f)) {
              _1018 = (_sunDirection.y > _moonDirection.y);
            } else {
              _1018 = true;
            }
            _1022 = select(_1018, _sunDirection.x, _moonDirection.x);
            _1024 = select(_1018, _sunDirection.y, _moonDirection.y);
            _1027 = select(_1018, _sunDirection.z, _moonDirection.z);
            _1028 = (_1024 > 0.0f);
            _1037 = ((0.5f - (((float)((int)((int)((int)(uint)(_1028)) - (int)((int)(uint)((int)(_1024 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _819;
            if (_288 < _819) {
              _1040 = dot(float3(0.0f, 1.0f, 0.0f), float3(_1022, _1024, _1027));
              _1046 = select((abs(_1040) < 1e-08f), 1e+08f, ((_1037 - dot(float3(0.0f, 1.0f, 0.0f), float3(_285, _288, _291))) / _1040));
              _1052 = ((_1046 * _1027) + _291);
              _1053 = _1037;
              _1054 = ((_1046 * _1022) + _285);
            } else {
              _1052 = _291;
              _1053 = _288;
              _1054 = _285;
            }
            _1056 = _cloudScatteringCoefficient / _distanceScale;
            _1057 = abs(_1024);
            _1059 = saturate(_1057 * 4.0f);  // [sem: expr_sat]
            _1077 = (_1059 * _1059) * exp2(((_distanceScale * -1.442695f) * _1056) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_1054 - _viewPos.x) * 5e-05f) + 0.5f), ((_1053 - _cloudAltitude) / _cloudThickness), (((_1052 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x));
            _1083 = ((1.0f - _1077) * saturate((_1007 - _cloudThickness) * 0.1f)) + _1077;
            _1084 = -0.0f - _1056;
            _1087 = (log2(_1083) * 0.6931472f) / _1084;
            if ((_1009 <= 1.0f) && ((_940 > 0.001f) && (_1009 >= 0.0f))) {
              _1095 = (_288 - _819) / _cloudThickness;
              if (!((_1095 < 0.0f) || (_1095 > 1.0f))) {
                if (_1057 > 0.001f) {
                  _1108 = min(300.0f, (((_819 - _288) + select(_1028, _cloudThickness, 0.0f)) / _1024));
                } else {
                  _1108 = 300.0f;
                }
                _1109 = _1108 * 0.2f;
                _1110 = _1109 * _1022;
                _1111 = _1109 * _1024;
                _1112 = _1109 * _1027;
                _1120 = 0;
                _1121 = ((_1112 * 0.5f) + _291);
                _1122 = ((_1111 * 0.5f) + _288);
                _1123 = ((_1110 * 0.5f) + _285);
                _1124 = _1112;
                _1125 = _1111;
                _1126 = _1110;
                _1127 = _1109;
                _1128 = 0.0f;
                while(true) {
                  _1131 = _1123 - _viewPos.x;
                  _1133 = _1121 - _viewPos.z;
                  _1137 = sqrt((_1133 * _1133) + (_1131 * _1131));
                  _1144 = _cloudAltitude - (max(((_1137 * _1137) + -400000.0f), 0.0f) * 1e-06f);
                  _1147 = _cloudDetailScale * 0.004f;
                  _1150 = _cloudBaseScale * 0.0004f;
                  _1153 = _earthRadius + _1122;
                  _1164 = ((sqrt(((_1123 * _1123) + (_1121 * _1121)) + (_1153 * _1153)) - _1144) - _earthRadius) / _cloudThickness;
                  if (!((_1164 < 0.0f) || (_1164 > 1.0f))) {
                    _1178 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                    _1179 = _1122 - _1144;
                    _1180 = _1147 / _1150;
                    _1181 = _1180 * _1150;
                    _1182 = _1178 * _1180;
                    _1186 = saturate(max((_1137 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                    _1190 = (_cloudDetailScale * 0.001884f) * (4.0f - (_1186 * 3.0f));
                    _1191 = _1181 * 4.355f;
                    _1196 = 1.0f - sqrt(saturate((1.0f - _1164) * 1.4285715f));
                    // [sem: expr_sat]
                    _1255 = saturate(_1164 * 10.0f) * saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_1123 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + (_1121 / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1123 - _cloudScroll.x) * _1150), ((_1150 * _1179) - _1178), ((_1121 - _cloudScroll.y) * _1150)), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_1196 * 0.5f), ((_1196 * _1196) * _1196)));
                    _1286 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1190 * _1123) - (_cloudScroll.x * _1191)), ((_1190 * _1179) - (_1182 * 4.355f)), ((_1190 * _1121) - (_cloudScroll.y * _1191))), 0.0f)).x) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1147 * _1123) - (_cloudScroll.x * _1181)), ((_1147 * _1179) - _1182), ((_1147 * _1121) - (_cloudScroll.y * _1181))), 0.0f)).x))) * ((saturate(_1164 * 4.0f) * 0.8f) + 0.2f);
                    _1289 = _1286 * ((_1186 * 0.4f) + 0.1f);
                    _1302 = (saturate((_1255 - _1289) / (1.0f - _1289)) * _cloudAlpha);
                    _1303 = (saturate((_1255 - _1286) / (1.0f - _1286)) * _cloudAlpha);
                  } else {
                    _1302 = 0.0f;
                    _1303 = 0.0f;
                  }
                  _1317 = (((exp2((((_1127 * -0.0072134747f) * _1128) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (_1303 - _1302)) + _1302) * _1127) + _1128;
                  _1318 = _1126 + _1123;
                  _1319 = _1125 + _1122;
                  _1320 = _1124 + _1121;
                  _1321 = _1127 * 1.3f;
                  _1322 = _1126 * 1.3f;
                  _1323 = _1125 * 1.3f;
                  _1324 = _1124 * 1.3f;
                  _1325 = (int)(_1120) + (int)(1);
                  if (!(_1325 == 6)) {
                    _1120 = _1325;
                    _1121 = _1320;
                    _1122 = _1319;
                    _1123 = _1318;
                    _1124 = _1324;
                    _1125 = _1323;
                    _1126 = _1322;
                    _1127 = _1321;
                    _1128 = _1317;
                    continue;
                  }
                  _1330 = (_1317 * _distanceScale);
                  break;
                }
              } else {
                _1330 = 0.0f;
              }
              _1331 = max(_1087, _1330);
              _1334 = _285 - _viewPos.x;
              _1336 = _291 - _viewPos.z;
              _1337 = _1334 * _1334;
              _1338 = _1336 * _1336;
              _1340 = sqrt(_1338 + _1337);
              _1351 = ((_288 - _cloudAltitude) + (max(((_1340 * _1340) + -400000.0f), 0.0f) * 1e-06f)) / _cloudThickness;
              if (!((_1351 < 0.0f) || (_1351 > 1.0f))) {
                // [sem: _3__36__0__0__g_climateTex2_sampleLod]
                _1377 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_285 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_291 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                _1379 = _285 + 50.0f;
                _1380 = _288 + 200.0f;
                _1381 = _1379 - _viewPos.x;
                _1384 = sqrt((_1381 * _1381) + _1338);
                _1389 = _cloudAltitude - (max(((_1384 * _1384) + -400000.0f), 0.0f) * 1e-06f);
                _1392 = _cloudDetailScale * 0.004f;
                _1395 = _cloudBaseScale * 0.0004f;
                _1398 = _earthRadius + _1380;
                _1399 = _1398 * _1398;
                _1406 = ((sqrt(((_1379 * _1379) + _494) + _1399) - _1389) - _earthRadius) / _cloudThickness;
                if (!((_1406 < 0.0f) || (_1406 > 1.0f))) {
                  _1420 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _1421 = _1380 - _1389;
                  _1422 = _1392 / _1395;
                  _1423 = _1422 * _1395;
                  _1424 = _1420 * _1422;
                  _1428 = saturate(max((_1384 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _1432 = (_cloudDetailScale * 0.001884f) * (4.0f - (_1428 * 3.0f));
                  _1433 = _1423 * 4.355f;
                  _1438 = 1.0f - sqrt(saturate((1.0f - _1406) * 1.4285715f));
                  _1475 = (((((_1428 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1392 * _1379) - (_1423 * _cloudScroll.x)), ((_1421 * _1392) - _1424), ((_1392 * _291) - (_1423 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1432 * _1379) - (_1433 * _cloudScroll.x)), ((_1432 * _1421) - (_1424 * 4.355f)), ((_1432 * _291) - (_1433 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_1406 * 4.0f) * 0.8f) + 0.2f);
                  _1516 = (saturate(((saturate(_1406 * 10.0f) * saturate(saturate(((_1377.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_1395 * (_1379 - _cloudScroll.x)), ((_1395 * _1421) - _1420), (_1395 * (_291 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_1438 * 0.5f), ((_1438 * _1438) * _1438)))) - _1475) / (1.0f - _1475)) * _cloudAlpha);
                } else {
                  _1516 = 0.0f;
                }
                _1518 = (_cloudFadeRange > 1e-05f);
                if (_1518) {
                  _1528 = saturate(((_1384 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _1528 = 1.0f;  // [sem: expr_sat]
                }
                _1529 = _291 + -50.0f;
                _1530 = _1529 - _viewPos.z;
                _1533 = sqrt((_1530 * _1530) + _1337);
                _1538 = _cloudAltitude - (max(((_1533 * _1533) + -400000.0f), 0.0f) * 1e-06f);
                _1545 = ((sqrt(((_1529 * _1529) + _493) + _1399) - _earthRadius) - _1538) / _cloudThickness;
                if (!((_1545 < 0.0f) || (_1545 > 1.0f))) {
                  _1559 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                  _1560 = _1380 - _1538;
                  _1561 = _1392 / _1395;
                  _1562 = _1561 * _1395;
                  _1563 = _1559 * _1561;
                  _1567 = saturate(max((_1533 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                  _1571 = (_cloudDetailScale * 0.001884f) * (4.0f - (_1567 * 3.0f));
                  _1572 = _1562 * 4.355f;
                  _1577 = 1.0f - sqrt(saturate((1.0f - _1545) * 1.4285715f));
                  _1614 = (((((_1567 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1392 * _285) - (_1562 * _cloudScroll.x)), ((_1560 * _1392) - _1563), ((_1392 * _1529) - (_1562 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_1571 * _285) - (_1572 * _cloudScroll.x)), ((_1571 * _1560) - (_1563 * 4.355f)), ((_1571 * _1529) - (_1572 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_1545 * 4.0f) * 0.8f) + 0.2f);
                  _1655 = (saturate(((saturate(_1545 * 10.0f) * saturate(saturate(((_1377.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_1395 * (_285 - _cloudScroll.x)), ((_1560 * _1395) - _1559), (_1395 * (_1529 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_1577 * 0.5f), ((_1577 * _1577) * _1577)))) - _1614) / (1.0f - _1614)) * _cloudAlpha);
                } else {
                  _1655 = 0.0f;
                }
                if (_1518) {
                  _1665 = saturate(((_1533 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                } else {
                  _1665 = 1.0f;  // [sem: expr_sat]
                }
                _1679 = ((((_1665 * _1655) + (_1528 * _1516)) * 20.0f) * _distanceScale);
                _1680 = _1331;
              } else {
                _1679 = 0.0f;
                _1680 = _1331;
              }
            } else {
              _1679 = ((log2(max(_1083, 0.5f)) * 0.6931472f) / _1084);
              _1680 = _1087;
            }
            _1681 = dot(float3(_499, _500, _501), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
            _1685 = min(max(_799, 16.0f), (_atmosphereThickness + -16.0f));
            _1686 = max(_1685, 0.0f);
            _1695 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _1686) * _1686)) / (_earthRadius + _1686);
            if (_1681 > _1695) {
              _1718 = ((exp2(log2(saturate((_1681 - _1695) / (1.0f - _1695))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _1718 = ((exp2(log2(saturate((_1695 - _1681) / (_1695 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            _1727 = (exp2(log2(saturate((_1685 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
            // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
            _1730 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1727, _1718), 0.0f);
            _1733 = dot(float3(_499, _500, _501), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
            if (_1733 > _1695) {
              _1756 = ((exp2(log2(saturate((_1733 - _1695) / (1.0f - _1695))) * 0.2f) * 0.4921875f) + 0.50390625f);
            } else {
              _1756 = ((exp2(log2(saturate((_1695 - _1733) / (_1695 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
            }
            // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
            _1757 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1727, _1756), 0.0f);
            _1765 = saturate((1.0f - saturate(_278 / _228)) * 10.0f) * _940;
            _1766 = _281 * 0.5f;
            _1769 = ((_805 + _254) * _1766) + _250;
            _1772 = ((_810 + _255) * _1766) + _251;
            _1775 = ((_1765 + _256) * _1766) + _252;
            _1778 = ((_1006 + _257) * _1766) + _253;
            _1779 = _1775 + _1778;
            _1780 = _1730.x + _1769;
            _1785 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
            _1788 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
            _1790 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
            _1792 = _mieAerosolDensity * 2e-05f;
            _1795 = (_mieAerosolAbsorption + 1.0f) * _1792;
            _1797 = (_1730.y + _1772) * _1795;
            _1802 = _cloudScatteringCoefficient / _distanceScale;
            _1804 = (_1779 + _1680) * _1802;
            _1808 = (_1785 * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f);
            _1809 = _1808 * _1780;
            _1810 = _1804 + _1797;
            _1813 = (_1788 * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f);
            _1814 = _1813 * _1780;
            _1817 = (_ozoneRatio * 2.1360002e-07f) + (_1790 * 1.9607843e-07f);
            _1818 = _1817 * _1780;
            _1821 = exp2((_1809 + _1810) * -1.442695f);
            _1824 = exp2((_1814 + _1810) * -1.442695f);
            _1827 = exp2((_1810 + _1818) * -1.442695f);
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
          float _cloudRedFactor = CloudReddeningFactor((_1680 + _1802), _dawnDuskFactor, false);
          _1821 *= 1.f;               // R unchanged
          _1824 *= _cloudRedFactor;   // G attenuated
          _1827 *= _cloudRedFactor;   // B attenuated
          // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _1832 = ((_1824 * 0.33951f) + (_1821 * 0.61312f)) + (_1827 * 0.04737f);
            _1837 = ((_1824 * 0.91636f) + (_1821 * 0.0702f)) + (_1827 * 0.01345f);
            _1842 = ((_1824 * 0.10958f) + (_1821 * 0.02062f)) + (_1827 * 0.8698f);
            _1843 = _810 * _798;
            _1844 = _1832 * _1843;
            _1845 = _1837 * _1843;
            _1846 = _1842 * _1843;
            _1847 = _distanceScale * _1802;
            _1858 = 1.0f - exp2((_1006 * -288.539f) * _1847);
            _1859 = _805 * 1.9607843e-07f;
            _1862 = ((_169 * 0.059683103f) * _798) * _1859;
            _1864 = _miePhaseConst * _miePhaseConst;
            _1865 = _1864 + 1.0f;
            _1871 = (((1.0f - _1864) * 3.0f) / ((_1864 + 2.0f) * 2.0f)) * 0.07957747f;
            // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
            // Description: Uses the boosted Mie-g formula only inside the explicit Dawn/Dusk gate and executes the exact clean native assignment in the Off branch.
            [branch]
            if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
              float _rndx_mie_g2_3_1917 = _boostedMieG * _boostedMieG;
              float _rndx_mie_g2p1_3_1917 = _rndx_mie_g2_3_1917 + 1.0f;
              float _rndx_mie_norm_3_1917 = (((1.0f - _rndx_mie_g2_3_1917) * 3.0f) / ((_rndx_mie_g2_3_1917 + 2.0f) * 2.0f)) * 0.07957747f;
              _1879 = (_rndx_mie_norm_3_1917 * _1792) * (_169 / exp2(log2(_rndx_mie_g2p1_3_1917 - (_boostedMieG * _171)) * 1.5f));            } else {
              _1879 = (_1871 * _1792) * (_169 / exp2(log2(_1865 - (_miePhaseConst * _171)) * 1.5f));            }
            // RenoDX: <<< [Patch: DawnDuskImprovements]
            _1880 = exp2(log2(1.0f - exp2((_1765 * -14.42695f) * _1847)) * 1.25f) * _1765;
            _1881 = _1880 * 64.0f;
            _1883 = (_1881 * _184) * _798;
            _1889 = (((_202 * 2.0f) * _798) * _1006) * _1858;
            _1891 = (_1889 * _1832) * _volumeFogScatterColor.x;
            _1894 = (_1889 * _1837) * _volumeFogScatterColor.y;
            _1897 = (_1889 * _1842) * _volumeFogScatterColor.z;
            _1901 = ((_1779 + _1679) * _1802) + (_1772 * _1795);
            _1905 = exp2(((_1808 * _1769) + _1901) * -1.442695f);
            _1909 = exp2(((_1813 * _1769) + _1901) * -1.442695f);
            _1913 = exp2((_1901 + (_1817 * _1769)) * -1.442695f);
            // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
            // Description: Attenuates only the exact green and blue members of this native RGB transmittance triplet using the path-specific cloud optical depth; red is unchanged and the helper returns identity unless all feature gates are active.
            float _rndx_cloud_red_2_1926 = CloudReddeningFactor((_1679 + _1802), _dawnDuskFactor, false);
            _1909 *= _rndx_cloud_red_2_1926;
            _1913 *= _rndx_cloud_red_2_1926;
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _1914 = _1792 * _810;
            _1916 = _1802 * (_1765 + _1006);
            // RenoDX: >>> [Patch: SkySpectralRayleigh] [Version: 1.16.00]
            // Description: Converts this ray-march step's Rayleigh in-scatter radiance with the
            //              spectral matrix instead of the vanilla RGB matrix. The Rayleigh term
            //              (transmittance x beta x phase) is per-wavelength radiance and needs the
            //              spectral-to-working conversion; the Mie term is artist colour already in
            //              display space, so SKY_VAN_DOT keeps it on the vanilla matrix. Beta stays
            //              the native packed value on both arms — only the matrix differs — and each
            //              Off arm is the complete native RGB expression.
            _1928 = SKY_SCATTERING
              ? (SKY_RAY_INSCATTER(0, _1905, _1909, _1913, _1785, _1788, _1790, _1859) + SKY_VAN_DOT(0, _1905, _1909, _1913) * (_1916 + _mieScatterColor.x * _1914))
              : (((_1785 * _1859) + _1916) + (_mieScatterColor.x * _1914)) * (((_1909 * 0.33951f) + (_1905 * 0.61312f)) + (_1913 * 0.04737f));
            _1940 = (((((_1891 + (_1832 * _1883)) * _1802) + ((_1785 * _1862) * _1832)) + ((_1879 * _1844) * _mieScatterColor.x)) + (_1928 * _611)) * _281;
            _1951 = SKY_SCATTERING
              ? (SKY_RAY_INSCATTER(1, _1905, _1909, _1913, _1785, _1788, _1790, _1859) + SKY_VAN_DOT(1, _1905, _1909, _1913) * (_1916 + _mieScatterColor.y * _1914))
              : (((_1788 * _1859) + _1916) + (_mieScatterColor.y * _1914)) * (((_1909 * 0.91636f) + (_1905 * 0.0702f)) + (_1913 * 0.01345f));
            _1963 = (((((_1894 + (_1837 * _1883)) * _1802) + ((_1788 * _1862) * _1837)) + ((_1879 * _1845) * _mieScatterColor.y)) + (_1951 * _610)) * _281;
            _1974 = SKY_SCATTERING
              ? (SKY_RAY_INSCATTER(2, _1905, _1909, _1913, _1785, _1788, _1790, _1859) + SKY_VAN_DOT(2, _1905, _1909, _1913) * (_1916 + _mieScatterColor.z * _1914))
              : ((_1916 + (_1790 * _1859)) + (_mieScatterColor.z * _1914)) * (((_1909 * 0.10958f) + (_1905 * 0.02062f)) + (_1913 * 0.8698f));
            _1986 = (((((_1897 + (_1842 * _1883)) * _1802) + ((_1790 * _1862) * _1842)) + ((_1879 * _1846) * _mieScatterColor.z)) + (_1974 * _609)) * _281;
            // RenoDX: <<< [Patch: SkySpectralRayleigh]
            _1987 = _1757.x + _1769;
            _1989 = (_1757.y + _1772) * _1795;
            _1990 = _1808 * _1987;
            _1991 = _1804 + _1989;
            _1992 = _1813 * _1987;
            _1993 = _1817 * _1987;
            _1996 = exp2((_1990 + _1991) * -1.442695f);
            _1999 = exp2((_1992 + _1991) * -1.442695f);
            _2002 = exp2((_1991 + _1993) * -1.442695f);
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
          float _cloudRedFactor3 = CloudReddeningFactor((_1680 + _1802), _dawnDuskFactor, false);
          _1996 *= 1.f;                // R unchanged
          _1999 *= _cloudRedFactor3;   // G attenuated
          _2002 *= _cloudRedFactor3;   // B attenuated
          // RenoDX: <<< [Patch: DawnDuskCloudReddening]
            _2004 = (_209 * 0.059683103f) * _1859;
            _2012 = (_1871 * _1914) * (_209 / exp2(log2(_1865 - (_miePhaseConst * _210)) * 1.5f));
            _2019 = (_1802 * _798) * ((((_225 * 2.0f) * _1006) * _1858) + (_1881 * _217));
            // RenoDX: >>> [Patch: SkySpectralRayleigh] [Version: 1.16.00]
            // Description: Converts the second in-scatter cluster's Rayleigh radiance with the
            //              spectral matrix instead of the vanilla RGB matrix, leaving the Mie term on
            //              the vanilla matrix because it is artist colour already in display space.
            //              Here the Rayleigh phase carrier is the product _2004 * _798, so the whole
            //              product is the phase argument and the sun-blend factor _798 stays applied
            //              to the Mie term separately. Beta stays the native packed value on both
            //              arms — only the matrix differs — and each Off arm is the complete native
            //              RGB expression.
            _2034 = SKY_SCATTERING
              ? ((((SKY_RAY_INSCATTER(0, _1996, _1999, _2002, _1785, _1788, _1790, _2004 * _798) + SKY_VAN_DOT(0, _1996, _1999, _2002) * (((_2012 * _mieScatterColor.x) * _798) + _2019)) + (_1928 * _608)) * _281) + _244)
              : (((((((_2012 * _mieScatterColor.x) + (_1785 * _2004)) * _798) + _2019) * (((_1999 * 0.33951f) + (_1996 * 0.61312f)) + (_2002 * 0.04737f))) + (_1928 * _608)) * _281) + _244;
            _2049 = SKY_SCATTERING
              ? ((((SKY_RAY_INSCATTER(1, _1996, _1999, _2002, _1785, _1788, _1790, _2004 * _798) + SKY_VAN_DOT(1, _1996, _1999, _2002) * (((_2012 * _mieScatterColor.y) * _798) + _2019)) + (_1951 * _607)) * _281) + _245)
              : (((((((_2012 * _mieScatterColor.y) + (_1788 * _2004)) * _798) + _2019) * (((_1999 * 0.91636f) + (_1996 * 0.0702f)) + (_2002 * 0.01345f))) + (_1951 * _607)) * _281) + _245;
            _2064 = SKY_SCATTERING
              ? ((((SKY_RAY_INSCATTER(2, _1996, _1999, _2002, _1785, _1788, _1790, _2004 * _798) + SKY_VAN_DOT(2, _1996, _1999, _2002) * (((_2012 * _mieScatterColor.z) * _798) + _2019)) + (_1974 * _606)) * _281) + _246)
              : (((((((_2012 * _mieScatterColor.z) + (_1790 * _2004)) * _798) + _2019) * (((_1999 * 0.10958f) + (_1996 * 0.02062f)) + (_2002 * 0.8698f))) + (_1974 * _606)) * _281) + _246;
            // RenoDX: <<< [Patch: SkySpectralRayleigh]
            if (_1765 > 0.001f) {
              _2068 = _cloudPhaseConstFront * 0.5f;
              _2069 = _2068 * _2068;
              _2072 = (_1779 + (_1680 * 0.2f)) * _1802;
              _2073 = _2072 + _1797;
              _2076 = exp2((_1809 + _2073) * -1.442695f);
              _2079 = exp2((_1814 + _2073) * -1.442695f);
              _2082 = exp2((_2073 + _1818) * -1.442695f);
              _2089 = _2069 + 1.0f;
              _2099 = ((((_1880 * 4.0743666f) * _281) * _798) * _1802) * (((1.0f - _2069) * 3.0f) / ((_2069 + 2.0f) * 2.0f));
              _2100 = (_169 / exp2(log2(_2089 - (_cloudPhaseConstFront * _164)) * 1.5f)) * _2099;
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
            float _cloudRedFactor4 = CloudReddeningFactor(((_1680 * 0.20000000298023224f) + _1802), _dawnDuskFactor, false);
            _2076 *= 1.f;                // R unchanged
            _2079 *= _cloudRedFactor4;   // G attenuated
            _2082 *= _cloudRedFactor4;   // B attenuated
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
              _2101 = _2072 + _1989;
              _2104 = exp2((_1990 + _2101) * -1.442695f);
              _2107 = exp2((_1992 + _2101) * -1.442695f);
              _2110 = exp2((_2101 + _1993) * -1.442695f);
              _2117 = (_209 / exp2(log2(_2089 - (_cloudPhaseConstFront * _207)) * 1.5f)) * _2099;
              _2161 = ((_2100 * (((_2079 * 0.10958f) + (_2076 * 0.02062f)) + (_2082 * 0.8698f))) + _1986);
              _2162 = ((_2100 * (((_2079 * 0.91636f) + (_2076 * 0.0702f)) + (_2082 * 0.01345f))) + _1963);
              _2163 = ((_2100 * (((_2079 * 0.33951f) + (_2076 * 0.61312f)) + (_2082 * 0.04737f))) + _1940);
              _2164 = ((_2117 * (((_2107 * 0.10958f) + (_2104 * 0.02062f)) + (_2110 * 0.8698f))) + _2064);
              _2165 = ((_2117 * (((_2107 * 0.91636f) + (_2104 * 0.0702f)) + (_2110 * 0.01345f))) + _2049);
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
            float _cloudRedFactor5 = CloudReddeningFactor(((_1680 * 0.20000000298023224f) + _1802), _dawnDuskFactor, false);
            _2104 *= 1.f;                // R unchanged
            _2107 *= _cloudRedFactor5;   // G attenuated
            _2110 *= _cloudRedFactor5;   // B attenuated
            // RenoDX: <<< [Patch: DawnDuskCloudReddening]
              _2166 = ((_2117 * (((_2107 * 0.33951f) + (_2104 * 0.61312f)) + (_2110 * 0.04737f))) + _2034);
            } else {
              _2161 = _1986;
              _2162 = _1963;
              _2163 = _1940;
              _2164 = _2064;
              _2165 = _2049;
              _2166 = _2034;
            }
            _2175 = _precomputedAmbient7.y * saturate(((float)((int)((int)(((float)((uint)((uint)(_487)))) * 0.33f)))) + _130);
            if (!((_273 < _229) && (_288 < _488))) {
              _2209 = (_viewPos.y > _488);
            } else {
              _2209 = true;
            }
            _2217 = ((int)(uint)((int)(exp2((_1802 * -1.442695f) * _1779) < 0.001f)));
            _2218 = ((int)(uint)(_2209));
            _2219 = _1006;
            _2220 = _1765;
            _2221 = _810;
            _2222 = _805;
            _2223 = _1778;
            _2224 = _1775;
            _2225 = _1772;
            _2226 = _1769;
            _2227 = (((_2175 * _2161) + _249) + (((_1897 + (_1846 * _1792)) * _281) * (_precomputedAmbients[48].z)));
            _2228 = (((_2175 * _2162) + _248) + (((_1894 + (_1845 * _1792)) * _281) * (_precomputedAmbients[48].y)));
            _2229 = (((_2175 * _2163) + _247) + (((_1891 + (_1844 * _1792)) * _281) * (_precomputedAmbients[48].x)));
            _2230 = _2164;
            _2231 = _2165;
            _2232 = _2166;
            _2233 = _487;
            _2234 = _486;
            _2235 = _274;
          }
          _2236 = (uint)((uint)(_2233)) + (uint)(1);
          if ((_2217 == 0) && ((_2218 != 0) && ((uint)_2236 < (uint)300))) {
            _241 = _2235;
            _242 = _2234;
            _243 = _2236;
            _244 = _2232;
            _245 = _2231;
            _246 = _2230;
            _247 = _2229;
            _248 = _2228;
            _249 = _2227;
            _250 = _2226;
            _251 = _2225;
            _252 = _2224;
            _253 = _2223;
            _254 = _2222;
            _255 = _2221;
            _256 = _2220;
            _257 = _2219;
            _258 = _2218;
            continue;
          }
          _2244 = select((_2217 != 0), 1e+06f, _2224);
          if (_131) {
            _2250 = _earthRadius + _cloudCirrusAltitude;
            _2254 = _146 - ((_145 - (_2250 * _2250)) * _147);
            if (!(_2254 < 0.0f)) {
              _2261 = ((sqrt(_2254) - _144) / _156);
            } else {
              _2261 = -1.0f;
            }
            _2265 = _146 - ((_145 - (_earthRadius * _earthRadius)) * _147);
            if (!(_2265 < 0.0f)) {
              _2272 = ((sqrt(_2265) - _144) / _156);
            } else {
              _2272 = -1.0f;
            }
            if ((_2261 >= 0.0f) && (_2272 <= 0.0f)) {
              _2278 = _cloudCirrusScale * 5e-05f;
              _2279 = _2261 * _115;
              _2280 = _2261 * _117;
              _2283 = _viewPos.x + _2279;
              _2284 = _2261 * _116;
              _2286 = _viewPos.y + _2284;
              _2288 = _viewPos.z + _2280;
              _2293 = (_2283 * _2278) - (_cloudScroll.y * 0.0003f);
              _2297 = (_2288 * _2278) - (_cloudScroll.x * 0.0003f);
              // [sem: _3__36__0__0__g_texCirrus_SampleBias]
              _2300 = __3__36__0__0__g_texCirrus.SampleBias(__0__95__0__0__g_samplerAnisotropicWrap, float2(_2293, _2297), -1.0f, int2(0, 0));
              _36[0] = _2300.x;
              _36[1] = _2300.y;
              _36[2] = _2300.z;
              _36[3] = _2300.w;
              _2312 = max(0.01f, ((3.0f - _cloudCirrusDensity) * 20000.0f));
              _2316 = sqrt((_2279 * _2279) + (_2280 * _2280));
              if (!(_2316 > _2312)) {
                _2324 = (1.0f - cos((1.5707964f / _2312) * _2316));
              } else {
                _2324 = 1.0f;
              }
              _2325 = _2324 * _cloudCirrusDensity;
              _36[0] = ((_2300.x * _cloudCirrusWeightR) * _2325);
              _36[1] = ((_2325 * _2300.y) * _cloudCirrusWeightG);
              _36[2] = ((_2325 * _2300.z) * _cloudCirrusWeightB);
              _2354 = ((((sin(_2293 * 1.5f) * 0.5f) * sin(_2297 * 1.5f)) + ((sin(mad(_2297, -0.6f, (_2293 * 0.8f)) * 3.03f) * 0.25f) * sin(mad(_2297, 0.8f, (_2293 * 0.6f)) * 3.03f))) * 1.6000001f) + 1.5f;
              _2357 = (int)(min(max(_2354, 0.0f), 2.0f));
              _2360 = _36[((int)min((uint)(_2357), (uint)(3)))];
              _2371 = (((_36[((int)min((uint)(((int)((int)(_2357) + (int)(1)) % (int)(3))), (uint)(3)))]) - _2360) * saturate(_2354 - ((float)((int)(_2357))))) + _2360;
              _2372 = _2286 + _earthRadius;
              _2373 = _2283 * _2283;
              _2374 = _2288 * _2288;
              _2378 = sqrt((_2374 + _2373) + (_2372 * _2372));
              _2379 = _2283 / _2378;
              _2380 = _2372 / _2378;
              _2381 = _2288 / _2378;
              _2382 = _2378 - _earthRadius;
              if (_2382 > 0.0f) {
                _2385 = dot(float3(_2379, _2380, _2381), float3(_115, _116, _117));
                _2390 = min(max(_2382, 16.0f), (_atmosphereThickness + -16.0f));
                _2391 = max(_2390, 0.0f);
                _2398 = (-0.0f - sqrt((_2391 + (_earthRadius * 2.0f)) * _2391)) / (_2391 + _earthRadius);
                _2399 = (_2385 > _2398);
                if (_2399) {
                  _2421 = ((exp2(log2(saturate((_2385 - _2398) / (1.0f - _2398))) * 0.2f) * 0.4921875f) + 0.50390625f);
                } else {
                  _2421 = ((exp2(log2(saturate((_2398 - _2385) / (_2398 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
                }
                _2430 = (exp2(log2(saturate((_2390 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
                // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
                _2443 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2430, _2421, ((1.0f - exp2(-1.1541561f - (dot(float3(_2379, _2380, _2381), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
                if (_2399) {
                  _2468 = ((exp2(log2(saturate((_2385 - _2398) / (1.0f - _2398))) * 0.2f) * 0.4921875f) + 0.50390625f);
                } else {
                  _2468 = ((exp2(log2(saturate((_2398 - _2385) / (_2398 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
                }
                // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod]
                _2479 = __3__36__0__0__g_texPrecomputedLUTMultiGatherAccum.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2430, _2468, ((1.0f - exp2(-1.1541561f - (dot(float3(_2379, _2380, _2381), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f)), 0.0f);
                _2487 = (_2479.z * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _2488 = (_2479.y * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _2489 = (_2479.x * 0.25f);  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _2490 = _2443.z;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _2491 = _2443.y;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _2492 = _2443.x;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              } else {
                _2487 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _2488 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _2489 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _2490 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _2491 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
                _2492 = 0.0f;  // [sem: _3__36__0__0__g_texPrecomputedLUTMultiGatherAccum_sampleLod_derived]
              }
              _2493 = max(_2382, 0.01f);
              _2494 = -0.0f - _2493;
              _2499 = exp2((_2494 / _rayleighScaledHeight) * 1.442695f);
              _2504 = exp2((_2494 / _mieScaledHeight) * 1.442695f);
              _2507 = (_2280 * _2280) + (_2279 * _2279);
              _2508 = sqrt(_2507);
              _2512 = max(((_2508 * _2508) + -400000.0f), 0.0f) * 1e-06f;
              _2515 = _cloudAltitude - _2512;
              _2518 = _cloudDetailScale * 0.004f;
              _2521 = _cloudBaseScale * 0.0004f;
              _2526 = ((_2378 - _earthRadius) - _2515) / _cloudThickness;
              if (!((_2526 < 0.0f) || (_2526 > 1.0f))) {
                _2539 = (((_cloudFlow * 0.001f) * _cloudScrollMultiplier) * _time.x) + _cloudSeed;
                _2540 = _2286 - _2515;
                _2541 = _2518 / _2521;
                _2542 = _2541 * _2521;
                _2543 = _2539 * _2541;
                _2551 = (_cloudDetailScale * 0.001884f) * (4.0f - (saturate(max((_2508 + -2500.0f), 0.0f) * 0.05f) * 3.0f));
                _2552 = _2542 * 4.355f;
                _2557 = 1.0f - sqrt(saturate((1.0f - _2526) * 1.4285715f));
                _2589 = (((1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2518 * _2283) - (_2542 * _cloudScroll.x)), ((_2540 * _2518) - _2543), ((_2518 * _2288) - (_2542 * _cloudScroll.y))), 0.0f)).x)) * _cloudDetailRatio) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2551 * _2283) - (_2552 * _cloudScroll.x)), ((_2551 * _2540) - (_2543 * 4.355f)), ((_2551 * _2288) - (_2552 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_2526 * 4.0f) * 0.8f) + 0.2f);
                _2629 = (saturate(((saturate(_2526 * 10.0f) * saturate(saturate(((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_2521 * (_2283 - _cloudScroll.x)), ((_2521 * _2540) - _2539), (_2521 * (_2288 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_2557 * 0.5f), ((_2557 * _2557) * _2557)))) - _2589) / (1.0f - _2589)) * _cloudAlpha);
              } else {
                _2629 = 0.0f;
              }
              if (_cloudFadeRange > 1e-05f) {
                _2641 = saturate((((1.0f - _cloudNear) * _2508) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
              } else {
                _2641 = 1.0f;  // [sem: expr_sat]
              }
              _2644 = sqrt(_2507 + (_2284 * _2284));
              _2648 = max(1e-06f, (_heightFogScale * 0.0025f));
              _2649 = _2648 * _cloudScroll.x;
              _2650 = _2648 * _cloudScroll.y;
              _2651 = _2648 * _2283;
              _2652 = _2648 * _2286;
              _2653 = _2648 * _2288;
              // [sem: _3__36__0__0__g_texCloudDetail_sampleLod]
              _2663 = __3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2651 * 6.393882f) - (_2649 * 1.871f)), (_2652 * 6.393882f), ((_2653 * 6.393882f) - (_2650 * 1.871f))), 0.0f);
              _2694 = ((((saturate(_2644 * 0.0078125f) * 2.0f) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2651 * 0.5127f) - _2649), (_2652 * 0.5127f), ((_2653 * 0.5127f) - _2650)), 0.0f)).x))) * exp2((_heightFogFalloff * -0.14426951f) * max(0.001f, (_2493 - _heightFogBaseline)))) * ((saturate((_2644 + -300.0f) * 0.0025f) * (0.5f - _2663.x)) + _2663.x)) * _heightFogDensity;
              _2695 = _2286 - _cloudAltitude;
              _2697 = (_2695 + _2512) / _cloudThickness;
              if (!(_sunDirection.y > 0.0f)) {
                _2706 = (_sunDirection.y > _moonDirection.y);
              } else {
                _2706 = true;
              }
              _2710 = select(_2706, _sunDirection.x, _moonDirection.x);
              _2712 = select(_2706, _sunDirection.y, _moonDirection.y);
              _2715 = select(_2706, _sunDirection.z, _moonDirection.z);
              _2716 = (_2712 > 0.0f);
              _2725 = ((0.5f - (((float)((int)((int)((int)(uint)(_2716)) - (int)((int)(uint)((int)(_2712 < 0.0f)))))) * 0.5f)) * _cloudThickness) + _2515;
              if (_2286 < _2515) {
                _2728 = dot(float3(0.0f, 1.0f, 0.0f), float3(_2710, _2712, _2715));
                _2734 = select((abs(_2728) < 1e-08f), 1e+08f, ((_2725 - dot(float3(0.0f, 1.0f, 0.0f), float3(_2283, _2286, _2288))) / _2728));
                _2740 = ((_2734 * _2715) + _2288);
                _2741 = _2725;
                _2742 = ((_2734 * _2710) + _2283);
              } else {
                _2740 = _2288;
                _2741 = _2286;
                _2742 = _2283;
              }
              _2745 = _cloudScatteringCoefficient / _distanceScale;
              _2746 = abs(_2712);
              _2748 = saturate(_2746 * 4.0f);  // [sem: expr_sat]
              _2766 = (_2748 * _2748) * exp2(((_distanceScale * -1.442695f) * _2745) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_2742 - _viewPos.x) * 5e-05f) + 0.5f), ((_2741 - _cloudAltitude) / _cloudThickness), (((_2740 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x));
              _2772 = ((1.0f - _2766) * saturate((_2695 - _cloudThickness) * 0.1f)) + _2766;
              _2773 = -0.0f - _2745;
              _2776 = (log2(_2772) * 0.6931472f) / _2773;
              if ((_2697 <= 1.0f) && (((_2641 * _2629) > 0.001f) && (_2697 >= 0.0f))) {
                _2785 = (_2286 - _2515) / _cloudThickness;
                if (!((_2785 < 0.0f) || (_2785 > 1.0f))) {
                  if (_2746 > 0.001f) {
                    _2798 = min(300.0f, (((_2515 - _2286) + select(_2716, _cloudThickness, 0.0f)) / _2712));
                  } else {
                    _2798 = 300.0f;
                  }
                  _2799 = _2798 * 0.2f;
                  _2800 = _2799 * _2710;
                  _2801 = _2799 * _2712;
                  _2802 = _2799 * _2715;
                  _2810 = 0;
                  _2811 = ((_2802 * 0.5f) + _2288);
                  _2812 = ((_2801 * 0.5f) + _2286);
                  _2813 = ((_2800 * 0.5f) + _2283);
                  _2814 = _2802;
                  _2815 = _2801;
                  _2816 = _2800;
                  _2817 = _2799;
                  _2818 = 0.0f;
                  while(true) {
                    _2821 = _2813 - _viewPos.x;
                    _2823 = _2811 - _viewPos.z;
                    _2827 = sqrt((_2823 * _2823) + (_2821 * _2821));
                    _2834 = _cloudAltitude - (max(((_2827 * _2827) + -400000.0f), 0.0f) * 1e-06f);
                    _2837 = _cloudDetailScale * 0.004f;
                    _2840 = _cloudBaseScale * 0.0004f;
                    _2843 = _earthRadius + _2812;
                    _2854 = ((sqrt(((_2813 * _2813) + (_2811 * _2811)) + (_2843 * _2843)) - _2834) - _earthRadius) / _cloudThickness;
                    if (!((_2854 < 0.0f) || (_2854 > 1.0f))) {
                      _2868 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                      _2869 = _2812 - _2834;
                      _2870 = _2837 / _2840;
                      _2871 = _2870 * _2840;
                      _2872 = _2868 * _2870;
                      _2876 = saturate(max((_2827 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                      _2880 = (_cloudDetailScale * 0.001884f) * (4.0f - (_2876 * 3.0f));
                      _2881 = _2871 * 4.355f;
                      _2886 = 1.0f - sqrt(saturate((1.0f - _2854) * 1.4285715f));
                      // [sem: expr_sat]
                      _2945 = saturate(_2854 * 10.0f) * saturate(saturate((((saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f) + -1.5f) + (((float4)(__3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_2813 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + (_2811 / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f))).x)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2813 - _cloudScroll.x) * _2840), ((_2840 * _2869) - _2868), ((_2811 - _cloudScroll.y) * _2840)), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_2886 * 0.5f), ((_2886 * _2886) * _2886)));
                      _2976 = ((((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2880 * _2813) - (_cloudScroll.x * _2881)), ((_2880 * _2869) - (_2872 * 4.355f)), ((_2880 * _2811) - (_cloudScroll.y * _2881))), 0.0f)).x) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_2837 * _2813) - (_cloudScroll.x * _2871)), ((_2837 * _2869) - _2872), ((_2837 * _2811) - (_cloudScroll.y * _2871))), 0.0f)).x))) * ((saturate(_2854 * 4.0f) * 0.8f) + 0.2f);
                      _2979 = _2976 * ((_2876 * 0.4f) + 0.1f);
                      _2992 = (saturate((_2945 - _2979) / (1.0f - _2979)) * _cloudAlpha);
                      _2993 = (saturate((_2945 - _2976) / (1.0f - _2976)) * _cloudAlpha);
                    } else {
                      _2992 = 0.0f;
                      _2993 = 0.0f;
                    }
                    _3007 = (((exp2((((_2817 * -0.0072134747f) * _2818) * _distanceScale) * (_cloudScatteringCoefficient / _distanceScale)) * (_2993 - _2992)) + _2992) * _2817) + _2818;
                    _3008 = _2816 + _2813;
                    _3009 = _2815 + _2812;
                    _3010 = _2814 + _2811;
                    _3011 = _2817 * 1.3f;
                    _3012 = _2816 * 1.3f;
                    _3013 = _2815 * 1.3f;
                    _3014 = _2814 * 1.3f;
                    _3015 = (int)(_2810) + (int)(1);
                    if (!(_3015 == 6)) {
                      _2810 = _3015;
                      _2811 = _3010;
                      _2812 = _3009;
                      _2813 = _3008;
                      _2814 = _3014;
                      _2815 = _3013;
                      _2816 = _3012;
                      _2817 = _3011;
                      _2818 = _3007;
                      continue;
                    }
                    _3020 = (_3007 * _distanceScale);
                    break;
                  }
                } else {
                  _3020 = 0.0f;
                }
                _3021 = max(_2776, _3020);
                _3024 = _2283 - _viewPos.x;
                _3026 = _2288 - _viewPos.z;
                _3027 = _3024 * _3024;
                _3028 = _3026 * _3026;
                _3030 = sqrt(_3028 + _3027);
                _3041 = ((_2286 - _cloudAltitude) + (max(((_3030 * _3030) + -400000.0f), 0.0f) * 1e-06f)) / _cloudThickness;
                if (!((_3041 < 0.0f) || (_3041 > 1.0f))) {
                  // [sem: _3__36__0__0__g_climateTex2_sampleLod]
                  _3067 = __3__36__0__0__g_climateTex2.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + (_2283 / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - (((_2288 / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                  _3069 = _2283 + 50.0f;
                  _3070 = _2286 + 200.0f;
                  _3071 = _3069 - _viewPos.x;
                  _3074 = sqrt((_3071 * _3071) + _3028);
                  _3079 = _cloudAltitude - (max(((_3074 * _3074) + -400000.0f), 0.0f) * 1e-06f);
                  _3082 = _cloudDetailScale * 0.004f;
                  _3085 = _cloudBaseScale * 0.0004f;
                  _3088 = _earthRadius + _3070;
                  _3089 = _3088 * _3088;
                  _3096 = ((sqrt(((_3069 * _3069) + _2374) + _3089) - _3079) - _earthRadius) / _cloudThickness;
                  if (!((_3096 < 0.0f) || (_3096 > 1.0f))) {
                    _3110 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                    _3111 = _3070 - _3079;
                    _3112 = _3082 / _3085;
                    _3113 = _3112 * _3085;
                    _3114 = _3110 * _3112;
                    _3118 = saturate(max((_3074 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                    _3122 = (_cloudDetailScale * 0.001884f) * (4.0f - (_3118 * 3.0f));
                    _3123 = _3113 * 4.355f;
                    _3128 = 1.0f - sqrt(saturate((1.0f - _3096) * 1.4285715f));
                    _3165 = (((((_3118 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_3082 * _3069) - (_3113 * _cloudScroll.x)), ((_3111 * _3082) - _3114), ((_3082 * _2288) - (_3113 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_3122 * _3069) - (_3123 * _cloudScroll.x)), ((_3122 * _3111) - (_3114 * 4.355f)), ((_3122 * _2288) - (_3123 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_3096 * 4.0f) * 0.8f) + 0.2f);
                    _3206 = (saturate(((saturate(_3096 * 10.0f) * saturate(saturate(((_3067.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_3085 * (_3069 - _cloudScroll.x)), ((_3085 * _3111) - _3110), (_3085 * (_2288 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_3128 * 0.5f), ((_3128 * _3128) * _3128)))) - _3165) / (1.0f - _3165)) * _cloudAlpha);
                  } else {
                    _3206 = 0.0f;
                  }
                  _3208 = (_cloudFadeRange > 1e-05f);
                  if (_3208) {
                    _3218 = saturate(((_3074 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                  } else {
                    _3218 = 1.0f;  // [sem: expr_sat]
                  }
                  _3219 = _2288 + -50.0f;
                  _3220 = _3219 - _viewPos.z;
                  _3223 = sqrt((_3220 * _3220) + _3027);
                  _3228 = _cloudAltitude - (max(((_3223 * _3223) + -400000.0f), 0.0f) * 1e-06f);
                  _3235 = ((sqrt(((_3219 * _3219) + _2373) + _3089) - _earthRadius) - _3228) / _cloudThickness;
                  if (!((_3235 < 0.0f) || (_3235 > 1.0f))) {
                    _3249 = (((_cloudScrollMultiplier * 0.001f) * _cloudFlow) * _time.x) + _cloudSeed;
                    _3250 = _3070 - _3228;
                    _3251 = _3082 / _3085;
                    _3252 = _3251 * _3085;
                    _3253 = _3249 * _3251;
                    _3257 = saturate(max((_3223 + -2500.0f), 0.0f) * 0.05f);  // [sem: expr_sat]
                    _3261 = (_cloudDetailScale * 0.001884f) * (4.0f - (_3257 * 3.0f));
                    _3262 = _3252 * 4.355f;
                    _3267 = 1.0f - sqrt(saturate((1.0f - _3235) * 1.4285715f));
                    _3304 = (((((_3257 * 0.4f) + 0.1f) * _cloudDetailRatio) * (1.0f - ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_3082 * _2283) - (_3252 * _cloudScroll.x)), ((_3250 * _3082) - _3253), ((_3082 * _3219) - (_3252 * _cloudScroll.y))), 0.0f)).x))) * ((__3__36__0__0__g_texCloudDetail.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3(((_3261 * _2283) - (_3262 * _cloudScroll.x)), ((_3261 * _3250) - (_3253 * 4.355f)), ((_3261 * _3219) - (_3262 * _cloudScroll.y))), 0.0f)).x)) * ((saturate(_3235 * 4.0f) * 0.8f) + 0.2f);
                    _3345 = (saturate(((saturate(_3235 * 10.0f) * saturate(saturate(((_3067.x + -1.5f) + (saturate((_cloudBaseDensity * 0.5f) + 0.175f) * 3.0f)) + ((((__3__36__0__0__g_texCloudBase.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float3((_3085 * (_2283 - _cloudScroll.x)), ((_3250 * _3085) - _3249), (_3085 * (_3219 - _cloudScroll.y))), 0.0f)).x) + -0.5f) * ((_cloudBaseContrast * 10.0f) + 1.0f))) - max((_3267 * 0.5f), ((_3267 * _3267) * _3267)))) - _3304) / (1.0f - _3304)) * _cloudAlpha);
                  } else {
                    _3345 = 0.0f;
                  }
                  if (_3208) {
                    _3355 = saturate(((_3223 * (1.0f - _cloudNear)) / max(1e-05f, _cloudFadeRange)) + _cloudNear);  // [sem: expr_sat]
                  } else {
                    _3355 = 1.0f;  // [sem: expr_sat]
                  }
                  _3369 = ((((_3355 * _3345) + (_3218 * _3206)) * 20.0f) * _distanceScale);
                  _3370 = _3021;
                } else {
                  _3369 = 0.0f;
                  _3370 = _3021;
                }
              } else {
                _3369 = ((log2(max(_2772, 0.5f)) * 0.6931472f) / _2773);
                _3370 = _2776;
              }
              _3371 = dot(float3(_2379, _2380, _2381), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
              _3375 = min(max(_2493, 16.0f), (_atmosphereThickness + -16.0f));
              _3376 = max(_3375, 0.0f);
              _3385 = (-0.0f - sqrt(((_earthRadius * 2.0f) + _3376) * _3376)) / (_earthRadius + _3376);
              if (_3371 > _3385) {
                _3408 = ((exp2(log2(saturate((_3371 - _3385) / (1.0f - _3385))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _3408 = ((exp2(log2(saturate((_3385 - _3371) / (_3385 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              _3417 = (exp2(log2(saturate((_3375 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f;
              // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
              _3420 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3417, _3408), 0.0f);
              _3423 = dot(float3(_2379, _2380, _2381), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
              if (_3423 > _3385) {
                _3446 = ((exp2(log2(saturate((_3423 - _3385) / (1.0f - _3385))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _3446 = ((exp2(log2(saturate((_3385 - _3423) / (_3385 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
              _3447 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3417, _3446), 0.0f);
              _3452 = ((_2499 + _2222) * 12.5f) + _2226;
              _3455 = ((_2504 + _2221) * 12.5f) + _2225;
              _3458 = ((_2371 + _2220) * 12.5f) + _2244;
              _3461 = ((_2694 + _2219) * 12.5f) + _2223;
              _3462 = _3461 + _3458;
              _3463 = _3420.x + _3452;
              _3468 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)));
              _3471 = (float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)));
              _3473 = (float)((uint)((uint)(_rayleighScatteringColor & 255)));
              _3475 = _mieAerosolDensity * 2e-05f;
              _3478 = (_mieAerosolAbsorption + 1.0f) * _3475;
              _3483 = _cloudScatteringCoefficient / _distanceScale;
              _3485 = _3483 * (_3370 + _3462);
              _3489 = (_3468 * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f);
              _3492 = _3485 + ((_3420.y + _3455) * _3478);
              _3495 = (_3471 * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f);
              _3498 = (_ozoneRatio * 2.1360002e-07f) + (_3473 * 1.9607843e-07f);
              _3502 = exp2(((_3489 * _3463) + _3492) * -1.442695f);
              _3506 = exp2(((_3495 * _3463) + _3492) * -1.442695f);
              _3510 = exp2(((_3498 * _3463) + _3492) * -1.442695f);
              // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
              // Description: Attenuates only the exact green and blue members of this native RGB transmittance triplet using the path-specific cloud optical depth; red is unchanged and the helper returns identity unless all feature gates are active.
              float _rndx_cloud_red_6_2379 = CloudReddeningFactor((_3370 + _3462), _dawnDuskFactor, false);
              _3506 *= _rndx_cloud_red_6_2379;
              _3510 *= _rndx_cloud_red_6_2379;
              // RenoDX: <<< [Patch: DawnDuskCloudReddening]
              _3515 = ((_3506 * 0.33951f) + (_3502 * 0.61312f)) + (_3510 * 0.04737f);
              _3520 = ((_3506 * 0.91636f) + (_3502 * 0.0702f)) + (_3510 * 0.01345f);
              _3525 = ((_3506 * 0.10958f) + (_3502 * 0.02062f)) + (_3510 * 0.8698f);
              _3526 = _3515 * _2504;
              _3527 = _3520 * _2504;
              _3528 = _3525 * _2504;
              _3529 = _distanceScale * _3483;
              _3536 = exp2(log2(1.0f - exp2((_2371 * -14.42695f) * _3529)) * 1.25f);
              _3540 = 1.0f - exp2((_2694 * -288.539f) * _3529);
              _3541 = _3540 * _2694;
              _3542 = _169 * 0.059683103f;
              _3544 = _miePhaseConst * _miePhaseConst;
              _3545 = _3544 + 1.0f;
              _3551 = (((1.0f - _3544) * 3.0f) / ((_3544 + 2.0f) * 2.0f)) * 0.07957747f;
            // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
            // Description: Companion copies of the sun Henyey-Greenstein phase terms computed with the
            //              dawn/dusk-boosted g (see the [Patch: DawnDuskImprovements] setup block near
            //              the top of main): the sun in-scatter path consumes the *b companions for a
            //              stronger forward-scatter lobe around the low sun, while the moon HG (_3752)
            //              keeps the vanilla _3575/_3582. When Dawn/Dusk Improvements is Off (or the
            //              sun is outside the dawn/dusk window) _boostedMieG equals the vanilla
            //              _miePhaseConst, so the companions are bit-identical to the vanilla terms
            //              they mirror.
            // [DAWN_DUSK] Sun HG uses boosted g - moon HG (_3752) still uses vanilla _3575/_3582
            [branch]
            if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
              float _3569b = _boostedMieG * _boostedMieG;
              float _3575b = _3569b + 1.0f;
              float _3582b = (((1.0f - _3569b) * 3.0f) / ((_3569b + 2.0f) * 2.0f)) * 0.07957746833562851f;
              _3559 = (_3582b * _3475) * (_169 / exp2(log2(_3575b - (_boostedMieG * _171)) * 1.5f));
            } else {
                _3559 = (_3551 * _3475) * (_169 / exp2(log2(_3545 - (_miePhaseConst * _171)) * 1.5f));
            }
            // RenoDX: <<< [Patch: DawnDuskImprovements]
              _3562 = ((_184 * 64.0f) * _2371) * _3536;
              _3563 = _202 * 2.0f;
              _3567 = (_3541 * _3515) * _volumeFogScatterColor.x;
              _3570 = (_3541 * _3520) * _volumeFogScatterColor.y;
              _3573 = (_3541 * _3525) * _volumeFogScatterColor.z;
              _3574 = _mieAerosolDensity * 0.00049999997f;
              _3575 = _202 * 50.0f;
              _3579 = (_3483 * (_3369 + _3462)) + (_3455 * _3478);
              _3583 = exp2(((_3489 * _3452) + _3579) * -1.442695f);
              _3587 = exp2(((_3495 * _3452) + _3579) * -1.442695f);
              _3591 = exp2(((_3498 * _3452) + _3579) * -1.442695f);
              // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
              // Description: Attenuates only the exact green and blue members of this native RGB transmittance triplet using the path-specific cloud optical depth; red is unchanged and the helper returns identity unless all feature gates are active.
              float _rndx_cloud_red_7_2405 = CloudReddeningFactor((_3369 + _3462), _dawnDuskFactor, false);
              _3587 *= _rndx_cloud_red_7_2405;
              _3591 *= _rndx_cloud_red_7_2405;
              // RenoDX: <<< [Patch: DawnDuskCloudReddening]
              _3596 = ((_3587 * 0.33951f) + (_3583 * 0.61312f)) + (_3591 * 0.04737f);
              _3601 = ((_3587 * 0.91636f) + (_3583 * 0.0702f)) + (_3591 * 0.01345f);
              _3606 = ((_3587 * 0.10958f) + (_3583 * 0.02062f)) + (_3591 * 0.8698f);
              _3607 = _3475 * _2504;
              _3609 = _3483 * (_2694 + _2371);
              _3614 = ((_mieScatterColor.x * _3607) + _3609) * _3596;
              _3615 = _2499 * 4.901961e-06f;
              _3616 = _3468 * _3615;
              _3620 = ((_mieScatterColor.y * _3607) + _3609) * _3601;
              _3621 = _3471 * _3615;
              _3625 = ((_mieScatterColor.z * _3607) + _3609) * _3606;
              _3626 = _3473 * _3615;
              _3627 = _3447.x + _3452;
              _3630 = _3485 + ((_3447.y + _3455) * _3478);
              _3634 = exp2(((_3489 * _3627) + _3630) * -1.442695f);
              _3638 = exp2(((_3495 * _3627) + _3630) * -1.442695f);
              _3642 = exp2(((_3498 * _3627) + _3630) * -1.442695f);
              // RenoDX: >>> [Patch: DawnDuskCloudReddening] [Version: 1.13.00]
              // Description: Attenuates only the exact green and blue members of this native RGB transmittance triplet using the path-specific cloud optical depth; red is unchanged and the helper returns identity unless all feature gates are active.
              float _rndx_cloud_red_8_2422 = CloudReddeningFactor((_3370 + _3462), _dawnDuskFactor, false);
              _3638 *= _rndx_cloud_red_8_2422;
              _3642 *= _rndx_cloud_red_8_2422;
              // RenoDX: <<< [Patch: DawnDuskCloudReddening]
              _3647 = ((_3638 * 0.33951f) + (_3634 * 0.61312f)) + (_3642 * 0.04737f);
              _3652 = ((_3638 * 0.91636f) + (_3634 * 0.0702f)) + (_3642 * 0.01345f);
              _3657 = ((_3638 * 0.10958f) + (_3634 * 0.02062f)) + (_3642 * 0.8698f);
              _3658 = _209 * 0.059683103f;
              _3666 = (_3551 * _3607) * (_209 / exp2(log2(_3545 - (_miePhaseConst * _210)) * 1.5f));
              _3674 = ((((_225 * 2.0f) * _2694) * _3540) + (((_217 * 64.0f) * _2371) * _3536)) * _3483;
              _4905 = 0.0f;
              _4906 = 0.0f;
              _4907 = 0.0f;
              _4908 = 0.0f;
              _4909 = 0.0f;
              _4910 = 0.0f;
              _4911 = 1.0f;
              _4912 = 1.0f;
              _4913 = 1.0f;
              _4914 = (((((_3657 * _3658) + (_3606 * _2487)) * _3626) + _2230) + (((((_3666 * _mieScatterColor.z) + _3674) * _3657) + (_3625 * _2487)) * 25.0f));
              _4915 = (((((_3652 * _3658) + (_3601 * _2488)) * _3621) + _2231) + (((((_3666 * _mieScatterColor.y) + _3674) * _3652) + (_3620 * _2488)) * 25.0f));
              _4916 = (((((_3647 * _3658) + (_3596 * _2489)) * _3616) + _2232) + (((((_3666 * _mieScatterColor.x) + _3674) * _3647) + (_3614 * _2489)) * 25.0f));
              _4917 = ((((_precomputedAmbients[48].z) * ((_3573 * _3575) + (_3528 * _3574))) + _2227) + (((((((_3559 * _3528) * _mieScatterColor.z) + (((_3573 * _3563) + (_3562 * _3525)) * _3483)) + (_3625 * _2490)) * 25.0f) + (((_3606 * _2490) + (_3525 * _3542)) * _3626)) * _precomputedAmbient7.y));
              _4918 = ((((_precomputedAmbients[48].y) * ((_3570 * _3575) + (_3527 * _3574))) + _2228) + (((((((_3559 * _3527) * _mieScatterColor.y) + (((_3570 * _3563) + (_3562 * _3520)) * _3483)) + (_3620 * _2491)) * 25.0f) + (((_3601 * _2491) + (_3520 * _3542)) * _3621)) * _precomputedAmbient7.y));
              _4919 = ((((_precomputedAmbients[48].x) * ((_3567 * _3575) + (_3526 * _3574))) + _2229) + (((((((_3559 * _3526) * _mieScatterColor.x) + (((_3567 * _3563) + (_3562 * _3515)) * _3483)) + (_3614 * _2492)) * 25.0f) + (((_3596 * _2492) + (_3515 * _3542)) * _3616)) * _precomputedAmbient7.y));
              _4920 = _3461;
              _4921 = _3458;
              _4922 = _3455;
              _4923 = _3452;
              _4924 = _273;
            } else {
              _4905 = 0.0f;
              _4906 = 0.0f;
              _4907 = 0.0f;
              _4908 = 0.0f;
              _4909 = 0.0f;
              _4910 = 0.0f;
              _4911 = 1.0f;
              _4912 = 1.0f;
              _4913 = 1.0f;
              _4914 = _2230;
              _4915 = _2231;
              _4916 = _2232;
              _4917 = _2227;
              _4918 = _2228;
              _4919 = _2229;
              _4920 = _2223;
              _4921 = _2244;
              _4922 = _2225;
              _4923 = _2226;
              _4924 = _273;
            }
          } else {
            if (_228 < _114) {
              _3789 = _viewPos.x + (_115 * _114);
              _3792 = _viewPos.y + (_116 * _114);
              _3795 = _viewPos.z + (_117 * _114);
              _3798 = _earthRadius + _288;
              _3804 = sqrt(((_291 * _291) + (_285 * _285)) + (_3798 * _3798));
              _3805 = _285 / _3804;
              _3806 = _3798 / _3804;
              _3807 = _291 / _3804;
              _3808 = dot(float3(_3805, _3806, _3807), float3(_115, _116, _117));
              _3813 = dot(float3(_115, _116, _117), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
              _3816 = _atmosphereThickness + -16.0f;
              _3820 = min(max(max((_3804 - _earthRadius), 0.01f), 16.0f), _3816);
              _3821 = _atmosphereThickness + -32.0f;
              _3822 = max(_3820, 0.0f);
              _3823 = _earthRadius * 2.0f;
              _3829 = (-0.0f - sqrt((_3822 + _3823) * _3822)) / (_3822 + _earthRadius);
              _3830 = (_3808 > _3829);
              if (_3830) {
                _3852 = ((exp2(log2(saturate((_3808 - _3829) / (1.0f - _3829))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _3852 = ((exp2(log2(saturate((_3829 - _3808) / (_3829 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              _3860 = (exp2(log2(saturate((_3820 + -16.0f) / _3821)) * 0.5f) * 0.96875f) + 0.015625f;
              _3866 = (1.0f - exp2(-1.1541561f - (dot(float3(_3805, _3806, _3807), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
              // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
              _3869 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3860, _3852, _3866), 0.0f);
              // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
              _3874 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3860, _3852, _3866), 0.0f);
              _3879 = (_3813 * _3813) + 1.0f;
              _3880 = _3879 * 0.059683103f;
              _3883 = _miePhaseConst * _miePhaseConst;
              _3884 = _3883 + 1.0f;
              _3885 = _miePhaseConst * 2.0f;
              _3891 = (((1.0f - _3883) * 3.0f) / ((_3883 + 2.0f) * 2.0f)) * 0.07957747f;
              // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
              // Description: Uses the boosted Mie-g formula only inside the explicit Dawn/Dusk gate and executes the exact clean native assignment in the Off branch.
              [branch]
              if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
                float _rndx_mie_g2_5_2509 = _boostedMieG * _boostedMieG;
                float _rndx_mie_g2p1_5_2509 = _rndx_mie_g2_5_2509 + 1.0f;
                float _rndx_mie_g2x_5_2509 = _boostedMieG * 2.0f;
                float _rndx_mie_norm_5_2509 = (((1.0f - _rndx_mie_g2_5_2509) * 3.0f) / ((_rndx_mie_g2_5_2509 + 2.0f) * 2.0f)) * 0.07957747f;
                _3898 = (_3879 / exp2(log2(_rndx_mie_g2p1_5_2509 - (_rndx_mie_g2x_5_2509 * _3813)) * 1.5f)) * _rndx_mie_norm_5_2509;              } else {
                _3898 = (_3879 / exp2(log2(_3884 - (_3885 * _3813)) * 1.5f)) * _3891;              }
              // RenoDX: <<< [Patch: DawnDuskImprovements]
              // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
              _3900 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3860, _3852, _3866), 0.0f);
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
              _3905 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3860, _3852, _3866), 0.0f);
              _3909 = _earthRadius + _3792;
              _3915 = sqrt(((_3795 * _3795) + (_3789 * _3789)) + (_3909 * _3909));
              _3916 = _3789 / _3915;
              _3917 = _3909 / _3915;
              _3918 = _3795 / _3915;
              _3919 = dot(float3(_3916, _3917, _3918), float3(_115, _116, _117));
              _3923 = min(max(max((_3915 - _earthRadius), 0.01f), 16.0f), _3816);
              _3924 = max(_3923, 0.0f);
              _3930 = (-0.0f - sqrt((_3924 + _3823) * _3924)) / (_3924 + _earthRadius);
              _3931 = (_3919 > _3930);
              if (_3931) {
                _3953 = ((exp2(log2(saturate((_3919 - _3930) / (1.0f - _3930))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _3953 = ((exp2(log2(saturate((_3930 - _3919) / (_3930 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              _3961 = (exp2(log2(saturate((_3923 + -16.0f) / _3821)) * 0.5f) * 0.96875f) + 0.015625f;
              _3967 = (1.0f - exp2(-1.1541561f - (dot(float3(_3916, _3917, _3918), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
              // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
              _3968 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3961, _3953, _3967), 0.0f);
              // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
              _3972 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3961, _3953, _3967), 0.0f);
              // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
              _3976 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3961, _3953, _3967), 0.0f);
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
              _3980 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3961, _3953, _3967), 0.0f);
              _3984 = dot(float3(_285, _3798, _291), float3(_115, _116, _117));
              _3985 = _3984 / _3804;
              _3986 = _285 - _3789;
              _3987 = _288 - _3792;
              _3988 = _291 - _3795;
              _3994 = sqrt(((_3987 * _3987) + (_3986 * _3986)) + (_3988 * _3988));
              _3998 = sqrt((0.5f / _rayleighScaledHeight) * _3804);
              _4002 = sqrt((0.5f / _mieScaledHeight) * _3804);
              _4004 = (_3994 + _3984) / _3804;
              _4005 = _3998 * _3985;
              _4006 = _4004 * _3998;
              _4007 = _4002 * _3985;
              _4008 = _4004 * _4002;
              _4014 = (float)((int)((int)((int)(uint)((int)(_4005 > 0.0f))) - (int)((int)(uint)((int)(_4005 < 0.0f)))));
              _4020 = (float)((int)((int)((int)(uint)((int)(_4006 > 0.0f))) - (int)((int)(uint)((int)(_4006 < 0.0f)))));
              _4026 = (float)((int)((int)((int)(uint)((int)(_4007 > 0.0f))) - (int)((int)(uint)((int)(_4007 < 0.0f)))));
              _4032 = (float)((int)((int)((int)(uint)((int)(_4008 > 0.0f))) - (int)((int)(uint)((int)(_4008 < 0.0f)))));
              _4033 = _4005 * _4005;
              _4034 = _4007 * _4007;
              _4035 = (_4020 > _4014);
              if (_4035) {
                _4040 = exp2(_4033 * 1.442695f);
              } else {
                _4040 = 0.0f;
              }
              _4041 = (_4032 > _4026);
              if (_4041) {
                _4046 = exp2(_4034 * 1.442695f);
              } else {
                _4046 = 0.0f;
              }
              _4047 = -0.0f - _3994;
              _4051 = ((_3994 / (_3804 * 2.0f)) + _3985) * 1.442695f;
              _4052 = _3804 * 6.2831f;
              _4053 = _earthRadius - _3804;
              _4059 = sqrt(_rayleighScaledHeight * _4052) * exp2((_4053 / _rayleighScaledHeight) * 1.442695f);
              _4079 = dot(float2((_4014 / ((abs(_4005) * 2.3193f) + sqrt((_4033 * 1.52f) + 4.0f))), ((_4020 / ((abs(_4006) * 2.3193f) + sqrt(((_4006 * _4006) * 1.52f) + 4.0f))) * exp2((_4047 / _rayleighScaledHeight) * _4051))), float2(1.0f, -1.0f));
              _4099 = dot(float2((_4026 / ((abs(_4007) * 2.3193f) + sqrt((_4034 * 1.52f) + 4.0f))), ((_4032 / ((abs(_4008) * 2.3193f) + sqrt(((_4008 * _4008) * 1.52f) + 4.0f))) * exp2((_4047 / _mieScaledHeight) * _4051))), float2(1.0f, -1.0f));
              _4101 = (_4079 + _4040) * _4059;
              _4113 = (((_mieAerosolDensity * 2e-05f) * (_mieAerosolAbsorption + 1.0f)) * sqrt(_mieScaledHeight * _4052)) * exp2((_4053 / _mieScaledHeight) * 1.442695f);
              _4115 = _4113 * (_4099 + _4046);
              _4125 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f);
              _4131 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f);
              _4136 = (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.1360002e-07f);
              _4140 = exp2(((_4125 * _4101) + _4115) * -1.442695f);
              _4144 = exp2(((_4131 * _4101) + _4115) * -1.442695f);
              _4148 = exp2(((_4136 * _4101) + _4115) * -1.442695f);
              _4153 = dot(float3(_115, _116, _117), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
              if (_3830) {
                _4175 = ((exp2(log2(saturate((_3808 - _3829) / (1.0f - _3829))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _4175 = ((exp2(log2(saturate((_3829 - _3808) / (_3829 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              _4181 = (1.0f - exp2(-1.1541561f - (dot(float3(_3805, _3806, _3807), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
              // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
              _4182 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3860, _4175, _4181), 0.0f);
              // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
              _4186 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3860, _4175, _4181), 0.0f);
              _4191 = (_4153 * _4153) + 1.0f;
              _4192 = _4191 * 0.059683103f;
              _4199 = (_4191 / exp2(log2(_3884 - (_4153 * _3885)) * 1.5f)) * _3891;
              // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
              _4200 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3860, _4175, _4181), 0.0f);
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
              _4204 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3860, _4175, _4181), 0.0f);
              if (_3931) {
                _4229 = ((exp2(log2(saturate((_3919 - _3930) / (1.0f - _3930))) * 0.2f) * 0.4921875f) + 0.50390625f);
              } else {
                _4229 = ((exp2(log2(saturate((_3930 - _3919) / (_3930 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
              }
              _4235 = (1.0f - exp2(-1.1541561f - (dot(float3(_3916, _3917, _3918), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
              // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
              _4236 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3961, _4229, _4235), 0.0f);
              // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
              _4240 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3961, _4229, _4235), 0.0f);
              // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
              _4244 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3961, _4229, _4235), 0.0f);
              // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
              _4248 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_3961, _4229, _4235), 0.0f);
              if (_4035) {
                _4256 = exp2(_4033 * 1.442695f);
              } else {
                _4256 = 0.0f;
              }
              if (_4041) {
                _4261 = exp2(_4034 * 1.442695f);
              } else {
                _4261 = 0.0f;
              }
              _4263 = (_4256 + _4079) * _4059;
              _4265 = (_4261 + _4099) * _4113;
              _4905 = max(0.0f, (((((_4199 * _4186.z) + (_4182.z * _4192)) + _4200.z) + _4204.z) - (exp2((_4265 + (_4263 * _4136)) * -1.442695f) * ((((_4240.z * _4199) + (_4236.z * _4192)) + _4244.z) + _4248.z))));
              _4906 = max(0.0f, (((((_4199 * _4186.y) + (_4182.y * _4192)) + _4200.y) + _4204.y) - (exp2((_4265 + (_4263 * _4131)) * -1.442695f) * ((((_4240.y * _4199) + (_4236.y * _4192)) + _4244.y) + _4248.y))));
              _4907 = max(0.0f, (((((_4199 * _4186.x) + (_4182.x * _4192)) + _4200.x) + _4204.x) - (exp2((_4265 + (_4263 * _4125)) * -1.442695f) * ((((_4240.x * _4199) + (_4236.x * _4192)) + _4244.x) + _4248.x))));
              _4908 = max(0.0f, (((((_3898 * _3874.z) + (_3869.z * _3880)) + _3900.z) + _3905.z) - (_4148 * ((((_3972.z * _3898) + (_3968.z * _3880)) + _3976.z) + _3980.z))));
              _4909 = max(0.0f, (((((_3898 * _3874.y) + (_3869.y * _3880)) + _3900.y) + _3905.y) - (_4144 * ((((_3972.y * _3898) + (_3968.y * _3880)) + _3976.y) + _3980.y))));
              _4910 = max(0.0f, (((((_3898 * _3874.x) + (_3869.x * _3880)) + _3900.x) + _3905.x) - (_4140 * ((((_3972.x * _3898) + (_3968.x * _3880)) + _3976.x) + _3980.x))));
              _4911 = _4148;
              _4912 = _4144;
              _4913 = _4140;
              _4914 = _2230;
              _4915 = _2231;
              _4916 = _2232;
              _4917 = _2227;
              _4918 = _2228;
              _4919 = _2229;
              _4920 = _2223;
              _4921 = _2244;
              _4922 = _2225;
              _4923 = _2226;
              _4924 = _273;
            } else {
              _4905 = 0.0f;
              _4906 = 0.0f;
              _4907 = 0.0f;
              _4908 = 0.0f;
              _4909 = 0.0f;
              _4910 = 0.0f;
              _4911 = 1.0f;
              _4912 = 1.0f;
              _4913 = 1.0f;
              _4914 = _2230;
              _4915 = _2231;
              _4916 = _2232;
              _4917 = _2227;
              _4918 = _2228;
              _4919 = _2229;
              _4920 = _2223;
              _4921 = _2244;
              _4922 = _2225;
              _4923 = _2226;
              _4924 = _273;
            }
          }
          break;
        }
      } else {
        if ((_228 < _114) && (!_131)) {
          _4361 = _115 * _114;
          _4362 = _viewPos.x + _4361;
          _4363 = _116 * _114;
          _4365 = _117 * _114;
          _4366 = _viewPos.z + _4365;
          _4372 = sqrt(((_viewPos.z * _viewPos.z) + (_viewPos.x * _viewPos.x)) + (_139 * _139));
          _4373 = _viewPos.x / _4372;
          _4374 = _139 / _4372;
          _4375 = _viewPos.z / _4372;
          _4376 = dot(float3(_4373, _4374, _4375), float3(_115, _116, _117));
          _4377 = _atmosphereThickness + -16.0f;
          _4381 = min(max(max((_4372 - _earthRadius), 0.01f), 16.0f), _4377);
          _4382 = _atmosphereThickness + -32.0f;
          _4383 = max(_4381, 0.0f);
          _4384 = _earthRadius * 2.0f;
          _4390 = (-0.0f - sqrt((_4383 + _4384) * _4383)) / (_4383 + _earthRadius);
          _4391 = (_4376 > _4390);
          if (_4391) {
            _4413 = ((exp2(log2(saturate((_4376 - _4390) / (1.0f - _4390))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _4413 = ((exp2(log2(saturate((_4390 - _4376) / (_4390 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _4421 = (exp2(log2(saturate((_4381 + -16.0f) / _4382)) * 0.5f) * 0.96875f) + 0.015625f;
          _4427 = (1.0f - exp2(-1.1541561f - (dot(float3(_4373, _4374, _4375), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _4430 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4421, _4413, _4427), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _4435 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4421, _4413, _4427), 0.0f);
          _4439 = _169 * 0.059683103f;
          _4442 = _miePhaseConst * _miePhaseConst;
          _4443 = _4442 + 1.0f;
          _4444 = _miePhaseConst * 2.0f;
          _4450 = (((1.0f - _4442) * 3.0f) / ((_4442 + 2.0f) * 2.0f)) * 0.07957747f;
          _4457 = (_169 / exp2(log2(_4443 - (_4444 * _164)) * 1.5f)) * _4450;
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _4459 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4421, _4413, _4427), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _4464 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4421, _4413, _4427), 0.0f);
          _4468 = (_viewPos.y + _4363) + _earthRadius;
          _4474 = sqrt(((_4366 * _4366) + (_4362 * _4362)) + (_4468 * _4468));
          _4475 = _4362 / _4474;
          _4476 = _4468 / _4474;
          _4477 = _4366 / _4474;
          _4478 = dot(float3(_4475, _4476, _4477), float3(_115, _116, _117));
          _4482 = min(max(max((_4474 - _earthRadius), 0.01f), 16.0f), _4377);
          _4483 = max(_4482, 0.0f);
          _4489 = (-0.0f - sqrt((_4483 + _4384) * _4483)) / (_4483 + _earthRadius);
          _4490 = (_4478 > _4489);
          if (_4490) {
            _4512 = ((exp2(log2(saturate((_4478 - _4489) / (1.0f - _4489))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _4512 = ((exp2(log2(saturate((_4489 - _4478) / (_4489 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _4520 = (exp2(log2(saturate((_4482 + -16.0f) / _4382)) * 0.5f) * 0.96875f) + 0.015625f;
          _4526 = (1.0f - exp2(-1.1541561f - (dot(float3(_4475, _4476, _4477), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _4527 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4520, _4512, _4526), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _4531 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4520, _4512, _4526), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _4535 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4520, _4512, _4526), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _4539 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4520, _4512, _4526), 0.0f);
          _4543 = _143 / _4372;
          _4549 = sqrt(((_4363 * _4363) + (_4361 * _4361)) + (_4365 * _4365));
          _4553 = sqrt((0.5f / _rayleighScaledHeight) * _4372);
          _4557 = sqrt((0.5f / _mieScaledHeight) * _4372);
          _4559 = (_4549 + _143) / _4372;
          _4560 = _4553 * _4543;
          _4561 = _4559 * _4553;
          _4562 = _4557 * _4543;
          _4563 = _4559 * _4557;
          _4569 = (float)((int)((int)((int)(uint)((int)(_4560 > 0.0f))) - (int)((int)(uint)((int)(_4560 < 0.0f)))));
          _4575 = (float)((int)((int)((int)(uint)((int)(_4561 > 0.0f))) - (int)((int)(uint)((int)(_4561 < 0.0f)))));
          _4581 = (float)((int)((int)((int)(uint)((int)(_4562 > 0.0f))) - (int)((int)(uint)((int)(_4562 < 0.0f)))));
          _4587 = (float)((int)((int)((int)(uint)((int)(_4563 > 0.0f))) - (int)((int)(uint)((int)(_4563 < 0.0f)))));
          _4588 = _4560 * _4560;
          _4589 = _4562 * _4562;
          _4590 = (_4575 > _4569);
          if (_4590) {
            _4595 = exp2(_4588 * 1.442695f);
          } else {
            _4595 = 0.0f;
          }
          _4596 = (_4587 > _4581);
          if (_4596) {
            _4601 = exp2(_4589 * 1.442695f);
          } else {
            _4601 = 0.0f;
          }
          _4602 = -0.0f - _4549;
          _4606 = ((_4549 / (_4372 * 2.0f)) + _4543) * 1.442695f;
          _4607 = _4372 * 6.2831f;
          _4608 = _earthRadius - _4372;
          _4614 = sqrt(_4607 * _rayleighScaledHeight) * exp2((_4608 / _rayleighScaledHeight) * 1.442695f);
          _4634 = dot(float2((_4569 / ((abs(_4560) * 2.3193f) + sqrt((_4588 * 1.52f) + 4.0f))), ((_4575 / ((abs(_4561) * 2.3193f) + sqrt(((_4561 * _4561) * 1.52f) + 4.0f))) * exp2((_4602 / _rayleighScaledHeight) * _4606))), float2(1.0f, -1.0f));
          _4654 = dot(float2((_4581 / ((abs(_4562) * 2.3193f) + sqrt((_4589 * 1.52f) + 4.0f))), ((_4587 / ((abs(_4563) * 2.3193f) + sqrt(((_4563 * _4563) * 1.52f) + 4.0f))) * exp2((_4602 / _mieScaledHeight) * _4606))), float2(1.0f, -1.0f));
          _4656 = (_4634 + _4595) * _4614;
          _4668 = (((_mieAerosolDensity * 2e-05f) * (_mieAerosolAbsorption + 1.0f)) * sqrt(_mieScaledHeight * _4607)) * exp2((_4608 / _mieScaledHeight) * 1.442695f);
          _4670 = _4668 * (_4654 + _4601);
          _4680 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f);
          _4686 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f);
          _4691 = (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.1360002e-07f);
          _4695 = exp2(((_4680 * _4656) + _4670) * -1.442695f);
          _4699 = exp2(((_4686 * _4656) + _4670) * -1.442695f);
          _4703 = exp2(((_4691 * _4656) + _4670) * -1.442695f);
          if (_4391) {
            _4725 = ((exp2(log2(saturate((_4376 - _4390) / (1.0f - _4390))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _4725 = ((exp2(log2(saturate((_4390 - _4376) / (_4390 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _4731 = (1.0f - exp2(-1.1541561f - (dot(float3(_4373, _4374, _4375), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _4732 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4421, _4725, _4731), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _4736 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4421, _4725, _4731), 0.0f);
          _4740 = _209 * 0.059683103f;
          _4747 = (_209 / exp2(log2(_4443 - (_4444 * _207)) * 1.5f)) * _4450;
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _4748 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4421, _4725, _4731), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _4752 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4421, _4725, _4731), 0.0f);
          if (_4490) {
            _4777 = ((exp2(log2(saturate((_4478 - _4489) / (1.0f - _4489))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _4777 = ((exp2(log2(saturate((_4489 - _4478) / (_4489 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          _4783 = (1.0f - exp2(-1.1541561f - (dot(float3(_4475, _4476, _4477), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
          _4784 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4520, _4777, _4783), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
          _4788 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4520, _4777, _4783), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
          _4792 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4520, _4777, _4783), 0.0f);
          // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
          _4796 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_4520, _4777, _4783), 0.0f);
          if (_4590) {
            _4804 = exp2(_4588 * 1.442695f);
          } else {
            _4804 = 0.0f;
          }
          if (_4596) {
            _4809 = exp2(_4589 * 1.442695f);
          } else {
            _4809 = 0.0f;
          }
          _4811 = (_4804 + _4634) * _4614;
          _4813 = (_4809 + _4654) * _4668;
          _4905 = max(0.0f, (((((_4747 * _4736.z) + (_4732.z * _4740)) + _4748.z) + _4752.z) - (exp2((_4813 + (_4811 * _4691)) * -1.442695f) * ((((_4788.z * _4747) + (_4784.z * _4740)) + _4792.z) + _4796.z))));
          _4906 = max(0.0f, (((((_4747 * _4736.y) + (_4732.y * _4740)) + _4748.y) + _4752.y) - (exp2((_4813 + (_4811 * _4686)) * -1.442695f) * ((((_4788.y * _4747) + (_4784.y * _4740)) + _4792.y) + _4796.y))));
          _4907 = max(0.0f, (((((_4747 * _4736.x) + (_4732.x * _4740)) + _4748.x) + _4752.x) - (exp2((_4813 + (_4811 * _4680)) * -1.442695f) * ((((_4788.x * _4747) + (_4784.x * _4740)) + _4792.x) + _4796.x))));
          _4908 = max(0.0f, (((((_4457 * _4435.z) + (_4430.z * _4439)) + _4459.z) + _4464.z) - (_4703 * ((((_4531.z * _4457) + (_4527.z * _4439)) + _4535.z) + _4539.z))));
          _4909 = max(0.0f, (((((_4457 * _4435.y) + (_4430.y * _4439)) + _4459.y) + _4464.y) - (_4699 * ((((_4531.y * _4457) + (_4527.y * _4439)) + _4535.y) + _4539.y))));
          _4910 = max(0.0f, (((((_4457 * _4435.x) + (_4430.x * _4439)) + _4459.x) + _4464.x) - (_4695 * ((((_4531.x * _4457) + (_4527.x * _4439)) + _4535.x) + _4539.x))));
          _4911 = _4703;
          _4912 = _4699;
          _4913 = _4695;
          _4914 = 0.0f;
          _4915 = 0.0f;
          _4916 = 0.0f;
          _4917 = 0.0f;
          _4918 = 0.0f;
          _4919 = 0.0f;
          _4920 = 0.0f;
          _4921 = 0.0f;
          _4922 = 0.0f;
          _4923 = 0.0f;
          _4924 = 0.0f;
        } else {
          _4905 = 0.0f;
          _4906 = 0.0f;
          _4907 = 0.0f;
          _4908 = 0.0f;
          _4909 = 0.0f;
          _4910 = 0.0f;
          _4911 = 1.0f;
          _4912 = 1.0f;
          _4913 = 1.0f;
          _4914 = 0.0f;
          _4915 = 0.0f;
          _4916 = 0.0f;
          _4917 = 0.0f;
          _4918 = 0.0f;
          _4919 = 0.0f;
          _4920 = 0.0f;
          _4921 = 0.0f;
          _4922 = 0.0f;
          _4923 = 0.0f;
          _4924 = 0.0f;
        }
      }
      if (_4924 < _229) {
        _4930 = _viewPos.x + (_229 * _115);
        _4933 = _viewPos.z + (_229 * _117);
        _4937 = min((_distanceScale * _4924), _229);
        _4939 = (_4937 * _115) + _viewPos.x;
        _4941 = (_4937 * _117) + _viewPos.z;
        _4945 = _earthRadius + _viewPos.y;
        _4947 = _4945 + (_4937 * _116);
        _4953 = sqrt(((_4941 * _4941) + (_4939 * _4939)) + (_4947 * _4947));
        _4954 = _4939 / _4953;
        _4955 = _4947 / _4953;
        _4956 = _4941 / _4953;
        _4957 = dot(float3(_4954, _4955, _4956), float3(_115, _116, _117));
        _4962 = dot(float3(_115, _116, _117), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z));
        _4965 = _atmosphereThickness + -16.0f;
        _4969 = min(max(max((_4953 - _earthRadius), 0.01f), 16.0f), _4965);
        _4970 = _atmosphereThickness + -32.0f;
        _4971 = max(_4969, 0.0f);
        _4972 = _earthRadius * 2.0f;
        _4978 = (-0.0f - sqrt((_4971 + _4972) * _4971)) / (_4971 + _earthRadius);
        _4979 = (_4957 > _4978);
        if (_4979) {
          _5001 = ((exp2(log2(saturate((_4957 - _4978) / (1.0f - _4978))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _5001 = ((exp2(log2(saturate((_4978 - _4957) / (_4978 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        _5009 = (exp2(log2(saturate((_4969 + -16.0f) / _4970)) * 0.5f) * 0.96875f) + 0.015625f;
        _5015 = (1.0f - exp2(-1.1541561f - (dot(float3(_4954, _4955, _4956), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
        _5018 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5009, _5001, _5015), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
        _5023 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5009, _5001, _5015), 0.0f);
        _5028 = (_4962 * _4962) + 1.0f;
        _5029 = _5028 * 0.059683103f;
        _5032 = _miePhaseConst * _miePhaseConst;
        _5033 = _5032 + 1.0f;
        _5034 = _miePhaseConst * 2.0f;
        _5040 = (((1.0f - _5032) * 3.0f) / ((_5032 + 2.0f) * 2.0f)) * 0.07957747f;
        // RenoDX: >>> [Patch: DawnDuskImprovements] [Version: 1.13.00]
        // Description: Uses the boosted Mie-g formula only inside the explicit Dawn/Dusk gate and executes the exact clean native assignment in the Off branch.
        [branch]
        if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
          float _rndx_mie_g2_6_2906 = _boostedMieG * _boostedMieG;
          float _rndx_mie_g2p1_6_2906 = _rndx_mie_g2_6_2906 + 1.0f;
          float _rndx_mie_g2x_6_2906 = _boostedMieG * 2.0f;
          float _rndx_mie_norm_6_2906 = (((1.0f - _rndx_mie_g2_6_2906) * 3.0f) / ((_rndx_mie_g2_6_2906 + 2.0f) * 2.0f)) * 0.07957747f;
          _5047 = (_5028 / exp2(log2(_rndx_mie_g2p1_6_2906 - (_rndx_mie_g2x_6_2906 * _4962)) * 1.5f)) * _rndx_mie_norm_6_2906;        } else {
          _5047 = (_5028 / exp2(log2(_5033 - (_5034 * _4962)) * 1.5f)) * _5040;        }
        // RenoDX: <<< [Patch: DawnDuskImprovements]
        // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
        _5049 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5009, _5001, _5015), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
        _5054 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5009, _5001, _5015), 0.0f);
        _5059 = _4945 + (_229 * _116);
        _5065 = sqrt(((_4933 * _4933) + (_4930 * _4930)) + (_5059 * _5059));
        _5066 = _4930 / _5065;
        _5067 = _5059 / _5065;
        _5068 = _4933 / _5065;
        _5069 = dot(float3(_5066, _5067, _5068), float3(_115, _116, _117));
        _5073 = min(max(max((_5065 - _earthRadius), 0.01f), 16.0f), _4965);
        _5074 = max(_5073, 0.0f);
        _5080 = (-0.0f - sqrt((_5074 + _4972) * _5074)) / (_5074 + _earthRadius);
        _5081 = (_5069 > _5080);
        if (_5081) {
          _5103 = ((exp2(log2(saturate((_5069 - _5080) / (1.0f - _5080))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _5103 = ((exp2(log2(saturate((_5080 - _5069) / (_5080 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        _5111 = (exp2(log2(saturate((_5073 + -16.0f) / _4970)) * 0.5f) * 0.96875f) + 0.015625f;
        _5117 = (1.0f - exp2(-1.1541561f - (dot(float3(_5066, _5067, _5068), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 4.039546f))) * 1.0280913f;
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
        _5118 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5111, _5103, _5117), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
        _5122 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5111, _5103, _5117), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
        _5126 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5111, _5103, _5117), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
        _5130 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5111, _5103, _5117), 0.0f);
        _5134 = dot(float3(_4939, _4947, _4941), float3(_115, _116, _117));
        _5135 = _5134 / _4953;
        _5136 = _4937 - _229;
        _5137 = _5136 * _115;
        _5138 = _5136 * _116;
        _5139 = _5136 * _117;
        _5145 = sqrt(((_5137 * _5137) + (_5138 * _5138)) + (_5139 * _5139));
        _5149 = sqrt((0.5f / _rayleighScaledHeight) * _4953);
        _5153 = sqrt((0.5f / _mieScaledHeight) * _4953);
        _5155 = (_5145 + _5134) / _4953;
        _5156 = _5149 * _5135;
        _5157 = _5155 * _5149;
        _5158 = _5153 * _5135;
        _5159 = _5155 * _5153;
        _5165 = (float)((int)((int)((int)(uint)((int)(_5156 > 0.0f))) - (int)((int)(uint)((int)(_5156 < 0.0f)))));
        _5171 = (float)((int)((int)((int)(uint)((int)(_5157 > 0.0f))) - (int)((int)(uint)((int)(_5157 < 0.0f)))));
        _5177 = (float)((int)((int)((int)(uint)((int)(_5158 > 0.0f))) - (int)((int)(uint)((int)(_5158 < 0.0f)))));
        _5183 = (float)((int)((int)((int)(uint)((int)(_5159 > 0.0f))) - (int)((int)(uint)((int)(_5159 < 0.0f)))));
        _5184 = _5156 * _5156;
        _5185 = _5158 * _5158;
        _5186 = (_5171 > _5165);
        if (_5186) {
          _5191 = exp2(_5184 * 1.442695f);
        } else {
          _5191 = 0.0f;
        }
        _5192 = (_5183 > _5177);
        if (_5192) {
          _5197 = exp2(_5185 * 1.442695f);
        } else {
          _5197 = 0.0f;
        }
        _5198 = -0.0f - _5145;
        _5202 = ((_5145 / (_4953 * 2.0f)) + _5135) * 1.442695f;
        _5203 = _4953 * 6.2831f;
        _5204 = _earthRadius - _4953;
        _5210 = sqrt(_rayleighScaledHeight * _5203) * exp2((_5204 / _rayleighScaledHeight) * 1.442695f);
        _5230 = dot(float2((_5165 / ((abs(_5156) * 2.3193f) + sqrt((_5184 * 1.52f) + 4.0f))), ((_5171 / ((abs(_5157) * 2.3193f) + sqrt(((_5157 * _5157) * 1.52f) + 4.0f))) * exp2((_5198 / _rayleighScaledHeight) * _5202))), float2(1.0f, -1.0f));
        _5250 = dot(float2((_5177 / ((abs(_5158) * 2.3193f) + sqrt((_5185 * 1.52f) + 4.0f))), ((_5183 / ((abs(_5159) * 2.3193f) + sqrt(((_5159 * _5159) * 1.52f) + 4.0f))) * exp2((_5198 / _mieScaledHeight) * _5202))), float2(1.0f, -1.0f));
        _5252 = (_5230 + _5191) * _5210;
        _5264 = (((_mieAerosolDensity * 2e-05f) * (_mieAerosolAbsorption + 1.0f)) * sqrt(_mieScaledHeight * _5203)) * exp2((_5204 / _mieScaledHeight) * 1.442695f);
        _5266 = _5264 * (_5250 + _5197);
        _5275 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f);
        _5281 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f);
        _5286 = (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.1360002e-07f);
        _5290 = exp2(((_5275 * _5252) + _5266) * -1.442695f);
        _5294 = exp2(((_5281 * _5252) + _5266) * -1.442695f);
        _5298 = exp2(((_5286 * _5252) + _5266) * -1.442695f);
        _5303 = dot(float3(_115, _116, _117), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z));
        if (_4979) {
          _5325 = ((exp2(log2(saturate((_4957 - _4978) / (1.0f - _4978))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _5325 = ((exp2(log2(saturate((_4978 - _4957) / (_4978 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        _5331 = (1.0f - exp2(-1.1541561f - (dot(float3(_4954, _4955, _4956), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
        _5332 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5009, _5325, _5331), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
        _5336 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5009, _5325, _5331), 0.0f);
        _5341 = (_5303 * _5303) + 1.0f;
        _5342 = _5341 * 0.059683103f;
        _5349 = (_5341 / exp2(log2(_5033 - (_5303 * _5034)) * 1.5f)) * _5040;
        // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
        _5350 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5009, _5325, _5331), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
        _5354 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5009, _5325, _5331), 0.0f);
        if (_5081) {
          _5379 = ((exp2(log2(saturate((_5069 - _5080) / (1.0f - _5080))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _5379 = ((exp2(log2(saturate((_5080 - _5069) / (_5080 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        _5385 = (1.0f - exp2(-1.1541561f - (dot(float3(_5066, _5067, _5068), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 4.039546f))) * 1.0280913f;
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleRayleigh_sampleLod]
        _5386 = __3__36__0__0__g_texPrecomputedLUTSingleRayleigh.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5111, _5379, _5385), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTSingleMie_sampleLod]
        _5390 = __3__36__0__0__g_texPrecomputedLUTSingleMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5111, _5379, _5385), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMulti_sampleLod]
        _5394 = __3__36__0__0__g_texPrecomputedLUTMulti.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5111, _5379, _5385), 0.0f);
        // [sem: _3__36__0__0__g_texPrecomputedLUTMultiMie_sampleLod]
        _5398 = __3__36__0__0__g_texPrecomputedLUTMultiMie.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_5111, _5379, _5385), 0.0f);
        if (_5186) {
          _5406 = exp2(_5184 * 1.442695f);
        } else {
          _5406 = 0.0f;
        }
        if (_5192) {
          _5411 = exp2(_5185 * 1.442695f);
        } else {
          _5411 = 0.0f;
        }
        _5413 = (_5406 + _5230) * _5210;
        _5415 = (_5411 + _5250) * _5264;
        _5507 = max(0.0f, (((((_5349 * _5336.z) + (_5332.z * _5342)) + _5350.z) + _5354.z) - (exp2((_5415 + (_5413 * _5286)) * -1.442695f) * ((((_5390.z * _5349) + (_5386.z * _5342)) + _5394.z) + _5398.z))));
        _5508 = max(0.0f, (((((_5349 * _5336.y) + (_5332.y * _5342)) + _5350.y) + _5354.y) - (exp2((_5415 + (_5413 * _5281)) * -1.442695f) * ((((_5390.y * _5349) + (_5386.y * _5342)) + _5394.y) + _5398.y))));
        _5509 = max(0.0f, (((((_5349 * _5336.x) + (_5332.x * _5342)) + _5350.x) + _5354.x) - (exp2((_5415 + (_5413 * _5275)) * -1.442695f) * ((((_5390.x * _5349) + (_5386.x * _5342)) + _5394.x) + _5398.x))));
        _5510 = max(0.0f, (((((_5047 * _5023.z) + (_5018.z * _5029)) + _5049.z) + _5054.z) - (_5298 * ((((_5122.z * _5047) + (_5118.z * _5029)) + _5126.z) + _5130.z))));
        _5511 = max(0.0f, (((((_5047 * _5023.y) + (_5018.y * _5029)) + _5049.y) + _5054.y) - (_5294 * ((((_5122.y * _5047) + (_5118.y * _5029)) + _5126.y) + _5130.y))));
        _5512 = max(0.0f, (((((_5047 * _5023.x) + (_5018.x * _5029)) + _5049.x) + _5054.x) - (_5290 * ((((_5122.x * _5047) + (_5118.x * _5029)) + _5126.x) + _5130.x))));
        _5513 = _5298;
        _5514 = _5294;
        _5515 = _5290;
      } else {
        _5507 = _4905;
        _5508 = _4906;
        _5509 = _4907;
        _5510 = _4908;
        _5511 = _4909;
        _5512 = _4910;
        _5513 = _4911;
        _5514 = _4912;
        _5515 = _4913;
      }
      _5530 = (((_4922 * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f)) + ((_cloudScatteringCoefficient / _distanceScale) * (_4921 + _4920));
      _5543 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _4923) + _5530) * -1.442695f);
      _5553 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _4923) + _5530) * -1.442695f);
      _5562 = exp2(((((((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.1360002e-07f)) * _4923) + _5530) * -1.442695f);
      _5572 = (((_5543 * _5512) * _precomputedAmbient7.y) + _4919) + (_precomputedAmbient7.w * ((_5543 * _5509) + _4916));
      _5579 = (((_5553 * _5511) * _precomputedAmbient7.y) + _4918) + (_precomputedAmbient7.w * ((_5553 * _5508) + _4915));
      _5586 = (((_5562 * _5510) * _precomputedAmbient7.y) + _4917) + (_precomputedAmbient7.w * ((_5562 * _5507) + _4914));
      _5587 = _5543 * _5515;
      _5588 = _5553 * _5514;
      _5589 = _5562 * _5513;
      if (!((_atmosphereSeaBaseline - _viewPos.y) <= 0.0f)) {
        _5602 = saturate(max(0.0f, ((_atmosphereSeaBaseline - (_116 * _114)) - _viewPos.y)) * 2.0f);  // [sem: expr_sat]
        _5611 = (((1.0f - ((_5602 * _5602) * (3.0f - (_5602 * 2.0f)))) * 0.98f) + 0.02f);
      } else {
        _5611 = 1.0f;
      }
      _5646 = (_5611 * (((_5579 * 0.10958f) + (_5572 * 0.02062f)) + (_5586 * 0.8698f)));
      _5647 = (_5611 * (((_5579 * 0.91636f) + (_5572 * 0.0702f)) + (_5586 * 0.01345f)));
      _5648 = (_5611 * (((_5579 * 0.33951f) + (_5572 * 0.61312f)) + (_5586 * 0.04737f)));
      _5649 = (((_5588 * 0.10958f) + (_5587 * 0.02062f)) + (_5589 * 0.8698f));
      _5650 = (((_5588 * 0.91636f) + (_5587 * 0.0702f)) + (_5589 * 0.01345f));
      _5651 = (((_5588 * 0.33951f) + (_5587 * 0.61312f)) + (_5589 * 0.04737f));
    } else {
      _5646 = 0.0f;
      _5647 = 0.0f;
      _5648 = 0.0f;
      _5649 = 1.0f;
      _5650 = 1.0f;
      _5651 = 1.0f;
    }
  } else {
    _5646 = 0.0f;
    _5647 = 0.0f;
    _5648 = 0.0f;
    _5649 = 1.0f;
    _5650 = 1.0f;
    _5651 = 1.0f;
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
  float3 _inscatterBias = InscatterColorBias(_viewSunDot, _dawnDuskFactor, float3(_5651, _5650, _5649));
  _5648 *= _inscatterBias.x;
  _5647 *= _inscatterBias.y;
  _5646 *= _inscatterBias.z;
  // RenoDX: <<< [Patch: DawnDuskImprovements]
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
    _5648 *= _nightSkyAtten;
    _5647 *= _nightSkyAtten;
    _5646 *= _nightSkyAtten;
  }
  // RenoDX: <<< [Patch: NightSkyAttenuation]
  __3__38__0__1__g_texSkyInscatterUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(_5648, _5647, _5646, _53.x);
  __3__38__0__1__g_texSkyExtinctionUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(_5651, _5650, _5649, 0.0f);
}
