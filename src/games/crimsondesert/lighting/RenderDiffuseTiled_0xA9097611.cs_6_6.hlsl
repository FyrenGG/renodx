// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the shared options and helpers used by this shader's RenoDX patches. This dependency-only prefix adds no native executable statement; removing it restores the native shader body byte-for-byte.
#include "../shared.h"
#include "diffuse_brdf.hlsli"
#include "foliage_common.hlsli"
#include "purkinje_common.hlsli"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
Texture2D<float4> __3__36__0__0__g_puddleMask : register(t136, space36);

Texture2D<float4> __3__36__0__0__g_climateSandTex : register(t137, space36);

Texture2D<uint16_t> __3__36__0__0__g_sceneDecalMask : register(t138, space36);

Texture2D<float2> __3__36__0__0__g_texNetDensity : register(t74, space36);

Texture3D<float> __3__36__0__0__g_texCloudVolumeShadow : register(t201, space36);

Texture2D<float4> __3__36__0__0__g_specularResult : register(t152, space36);

Texture2D<float2> __3__36__0__0__g_iblBrdfLookup : register(t154, space36);

Texture2D<uint2> __3__36__0__0__g_stencilPrev : register(t140, space36);

Texture2D<half4> __3__36__0__0__g_sceneDiffuse : register(t188, space36);

Texture2D<half4> __3__36__0__0__g_diffuseResult : register(t59, space36);

Texture2D<half4> __3__36__0__0__g_diffuseResultPrev : register(t183, space36);

Texture2D<half4> __3__36__0__0__g_specularResultPrev : register(t60, space36);

Texture2D<half2> __3__36__0__0__g_sceneAO : register(t61, space36);

Texture2D<float> __3__36__0__0__g_specularSampleCountPrev : register(t62, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t21, space36);

Texture2D<float4> __3__36__0__0__g_normal : register(t22, space36);

Texture2D<float2> __3__36__0__0__g_velocity : register(t23, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t24, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormalPrev : register(t64, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t51, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t79, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaquePrev : register(t80, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t54, space36);

Texture2D<float4> __3__36__0__0__g_manyLightsMoments : register(t81, space36);

Texture2D<float> __3__36__0__0__g_specularRayHitDistance : register(t82, space36);

Texture2D<float> __3__36__0__0__g_caustic : register(t83, space36);

Texture2D<uint> __3__36__0__0__g_tiledManyLightsMasks : register(t17, space36);

ByteAddressBuffer __3__37__0__0__g_structureCounterBuffer : register(t27, space37);

Texture2D<half4> __3__36__0__0__g_sceneShadowColor : register(t56, space36);

RWTexture2D<float4> __3__38__0__1__g_diffuseHalfPrevUAV : register(u42, space38);

RWTexture2D<float4> __3__38__0__1__g_sceneColorUAV : register(u10, space38);

RWTexture2D<half4> __3__38__0__1__g_sceneSpecularUAV : register(u11, space38);

RWTexture2D<half4> __3__38__0__1__g_diffuseResultUAV : register(u12, space38);

RWTexture2D<half4> __3__38__0__1__g_specularResultUAV : register(u13, space38);

RWTexture2D<float> __3__38__0__1__g_specularSampleCountUAV : register(u14, space38);

RWTexture2D<half4> __3__38__0__1__g_sceneColorLightingOnlyForAwbUAV : register(u19, space38);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b19, space35) {
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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b32, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

cbuffer __3__35__0__0__WeatherConstantBuffer : register(b48, space35) {
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

cbuffer __3__35__0__0__AtmosphereConstantBuffer : register(b29, space35) {
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

cbuffer __3__35__0__0__PrecomputedAmbientConstantBuffer : register(b30, space35) {
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

cbuffer __3__35__0__0__TileConstantBuffer : register(b49, space35) {
  struct {
    uint4 g_tileIndex[4096];
  } __3__35__0__0__TileConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__TileConstantBuffer_raw[4096] : packoffset(c0);
  uint4 __3__35__0__0__TileConstantBuffer_raw_uint[4096] : packoffset(c0);
};

cbuffer __3__35__0__0__EnvironmentLightingHistoryConstantBuffer : register(b0, space35) {
  float4 _environmentLightingHistory[4] : packoffset(c000.x);
};

cbuffer __3__1__0__0__WeatherShadingConstants : register(b1, space1) {
  int4 _paramWeather : packoffset(c000.x);
  float4 _paramShading : packoffset(c001.x);
  int2 _readBackBufferSize : packoffset(c002.x);
  float _readBackFieldSize : packoffset(c002.z);
  int _enableSandAO : packoffset(c002.w);
  float4 _blurSourceSize : packoffset(c003.x);
  float4 _blurTargetSize : packoffset(c004.x);
  float2 _paramGlobalSand : packoffset(c005.x);
};

cbuffer __3__1__0__0__RenderVoxelConstants : register(b0, space1) {
  float4 _renderParams : packoffset(c000.x);
  float4 _renderParams2 : packoffset(c001.x);
  float4 _cubemapViewPosRelative : packoffset(c002.x);
  float4 _lightingParams : packoffset(c003.x);
  float4 _tiledRadianceCacheParams : packoffset(c004.x);
  float _rtaoIntensity : packoffset(c005.x);
};

SamplerState __3__40__0__0__g_sampler : register(s1, space40);

SamplerState __3__40__0__0__g_samplerPoint : register(s4, space40);

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
  // RenoDX: >>> [Patch: FoliageTransmissionState] [Version: 1.16.00]
  // Description: Declares per-invocation foliage transmission accumulators at main-function scope so the structurally consolidated lighting branch can write them and the later clean-decompile output join can consume them. They remain zero when the gated hook does not run.
  float _rndx_foliageTransR = 0.0f;
  float _rndx_foliageTransG = 0.0f;
  float _rndx_foliageTransB = 0.0f;
  // RenoDX: <<< [Patch: FoliageTransmissionState]
  int _63;
  int _64;
  int4 _72;
  int _82;
  int _86;
  uint _92;
  uint _94;
  float _97;
  float _98;
  float _102;
  float _103;
  float _105;
  uint2 _108;
  int _110;
  float _113;
  float _114;
  bool _119;
  float _120;
  float _121;
  bool _122;
  float _123;
  bool _124;
  float _125;
  bool _126;
  float _127;
  bool _128;
  half _269;
  half _270;
  half _271;
  half _272;
  half _273;
  float _331;
  float _332;
  float _333;
  bool _349;
  bool _370;
  half _378;
  float _431;
  float _442;
  float _443;
  float _451;
  float _452;
  half _453;
  half _454;
  half _455;
  half _456;
  half _457;
  bool _490;
  float _499;
  float _540;
  float _541;
  float _632;
  float _710;
  float _872;
  float _873;
  float _874;
  float _875;
  float _1040;
  int _1041;
  float _1098;
  float _1136;
  float _1221;
  float _1222;
  float _1223;
  float _1224;
  float _1229;
  float _1254;
  half _1280;
  bool _1292;
  half _1299;
  float _1436;
  float _1486;
  float _1503;
  float _1507;
  half _1529;
  half _1532;
  half _1533;
  float _1639;
  float _1685;
  float _1700;
  float _1801;
  int _1802;
  int _1803;
  float _1804;
  float _1805;
  float _1806;
  float _1807;
  float _1961;
  float _1962;
  float _1963;
  float _1964;
  float _2028;
  float _2038;
  float _2039;
  float _2040;
  bool _2115;
  bool _2116;
  float _2152;
  float _2153;
  float _2154;
  float _2155;
  float _2221;
  float _2224;
  float _2225;
  float _2226;
  float _2227;
  float _2262;
  float _2263;
  float _2264;
  float _2279;
  float _2308;
  float _2309;
  float _2310;
  float _2311;
  float _2312;
  half _2319;
  half _2320;
  half _2321;
  half _2322;
  half _2323;
  float _2324;
  half _2360;
  half _2361;
  half _2362;
  float _2377;
  float _2378;
  float _2379;
  float _2399;
  float _2464;
  float _2561;
  float _2562;
  float _2563;
  bool _2626;
  bool _2635;
  bool _2638;
  bool _2639;
  int _2653;
  float _2696;
  float _2697;
  float _2698;
  bool _2777;
  float _2785;
  float _2796;
  float _2831;
  float _2838;
  float _2839;
  float _2840;
  float _2889;
  float _2890;
  float _2891;
  float _2900;
  float _2944;
  half _2996;
  half _2997;
  half _2998;
  float _3008;
  float _3137;
  float _3138;
  float _3139;
  bool _3165;
  float _3201;
  float _3202;
  float _3203;
  float _3218;
  float _3219;
  float _3220;
  float _3239;
  float _3240;
  float _3241;
  uint4 _137;
  float4 _143;
  half _152;
  half _156;
  half _161;
  half _170;
  half _174;
  uint _177;
  bool _178;
  bool _179;
  float _189;
  float _190;
  float _191;
  float _193;
  half _197;
  half _198;
  half _199;
  int _200;
  bool _201;
  half _214;
  half _215;
  float _220;
  float _221;
  float _225;
  float _227;
  float _234;
  float _235;
  float _236;
  float _238;
  float _241;
  float _242;
  float _243;
  float _244;
  float _251;
  float _252;
  float _253;
  half _275;
  half _276;
  half _277;
  half _278;
  half _282;
  half _283;
  half _284;
  half _300;
  half _301;
  half _302;
  bool _303;
  bool _304;
  bool _305;
  half4 _308;
  float _312;
  float _313;
  float _314;
  half4 _320;
  float4 _335;
  bool _339;
  float _356;
  float _357;
  float _358;
  half2 _360;
  float _380;
  float _382;
  float _418;
  float _419;
  float _420;
  float _421;
  float _423;
  bool _425;
  uint _433;
  half _444;
  bool _446;
  float _458;
  float _459;
  float _460;
  float _461;
  float _462;
  float _463;
  float _464;
  float _465;
  float _466;
  float _468;
  int _469;
  bool _470;
  float _527;
  float2 _534;
  float _545;
  float _548;
  float _549;
  float _557;
  float _563;
  float _564;
  int _567;
  int _568;
  float _569;
  float _570;
  float _575;
  float _576;
  int4 _579;
  int _602;
  float _640;
  float _641;
  float _642;
  float _643;
  float _647;
  float _664;
  float _665;
  float _668;
  bool _683;
  float _685;
  float _687;
  int _690;
  bool _691;
  float _718;
  float _723;
  float _724;
  float _725;
  float _726;
  float _727;
  float _728;
  float _729;
  float _730;
  float _732;
  float _745;
  float _746;
  float _747;
  float _748;
  bool _752;
  int _753;
  int _754;
  int _755;
  int _756;
  bool _778;
  bool _782;
  bool _786;
  bool _790;
  bool _803;
  bool _812;
  bool _834;
  int4 _877;
  float _896;
  float _897;
  float _898;
  float _900;
  float _905;
  float _920;
  float _921;
  float _922;
  float _924;
  float _929;
  float _944;
  float _945;
  float _946;
  float _948;
  float _953;
  float _968;
  float _969;
  float _970;
  float _972;
  float _977;
  bool _978;
  bool _980;
  float _982;
  float _999;
  float _1000;
  float _1001;
  float _1002;
  float _1007;
  float _1009;
  float _1011;
  float _1013;
  float _1015;
  float _1016;
  float _1017;
  float _1018;
  int _1021;
  int _1022;
  int _1030;
  int _1032;
  float _1051;
  uint _1052;
  half4 _1054;
  uint _1059;
  half4 _1060;
  half4 _1065;
  half4 _1070;
  float _1075;
  float _1084;
  float _1089;
  float _1102;
  float _1103;
  float _1105;
  float4 _1108;
  float _1113;
  float _1115;
  float _1117;
  float _1118;
  float _1119;
  float _1120;
  float _1178;
  float _1195;
  float _1196;
  float _1197;
  float _1200;
  float _1216;
  float _1236;
  float _1237;
  float _1238;
  float _1245;
  float _1246;
  float _1247;
  float _1255;
  float _1261;
  float _1271;
  float _1272;
  float _1273;
  float _1275;
  float _1281;
  float _1301;
  float _1305;
  float _1306;
  float _1307;
  float _1313;
  float _1321;
  float _1325;
  float _1329;
  float _1339;
  float _1340;
  float _1341;
  float _1342;
  float _1347;
  float _1352;
  float _1354;
  float _1356;
  float _1380;
  float _1384;
  float _1388;
  float _1392;
  float _1422;
  float _1427;
  float _1428;
  float _1442;
  float _1446;
  float _1451;
  float _1477;
  float _1488;
  float _1494;
  bool _1495;
  float _1514;
  half _1520;
  half _1526;
  float _1534;
  float _1535;
  float _1536;
  float _1549;
  float _1550;
  float _1551;
  float _1552;
  float _1592;
  float _1597;
  float _1598;
  float _1599;
  float _1600;
  float _1610;
  float _1613;
  float _1629;
  float _1667;
  float _1670;
  float _1671;
  float _1672;
  float _1673;
  float _1701;
  float _1712;
  float _1713;
  int _1716;
  int _1717;
  float _1718;
  float _1719;
  int4 _1729;
  int _1736;
  float _1765;
  float _1766;
  float _1767;
  float _1768;
  float _1784;
  float _1785;
  float _1786;
  float _1787;
  bool _1808;
  uint _1809;
  half4 _1811;
  float _1824;
  uint _1830;
  half4 _1831;
  float _1844;
  half4 _1854;
  float _1867;
  half4 _1877;
  float _1890;
  float _1914;
  float _1916;
  float _1918;
  float _1920;
  float _1921;
  float _1930;
  float _1933;
  float _1940;
  float _1965;
  float _1966;
  float _1967;
  float _1980;
  float _1990;
  float _1991;
  float _1992;
  float _2004;
  float _2009;
  bool _2010;
  int _2012;
  bool _2031;
  float _2032;
  float2 _2045;
  float _2056;
  float _2087;
  float4 _2096;
  bool _2126;
  float4 _2146;
  float _2162;
  float _2165;
  float _2178;
  float _2179;
  float _2180;
  float _2185;
  float _2190;
  float _2201;
  float _2219;
  float _2231;
  bool _2232;
  float _2235;
  float _2280;
  float _2281;
  float _2282;
  float _2287;
  float _2290;
  float _2297;
  float _2298;
  half4 _2326;
  uint _2332;
  float _2348;
  float _2349;
  float _2350;
  float _2352;
  bool _2365;
  float _2406;
  float _2408;
  float _2409;
  float _2415;
  float _2420;
  float _2426;
  float _2434;
  float _2441;
  float2 _2468;
  float _2490;
  float _2508;
  float _2509;
  float _2510;
  float _2526;
  float _2534;
  float _2546;
  float _2549;
  float _2555;
  float _2583;
  float _2585;
  float _2592;
  float _2593;
  float _2594;
  float _2595;
  float _2611;
  float _2612;
  float _2613;
  float _2616;
  float _2617;
  float _2618;
  bool _2629;
  float _2640;
  float _2641;
  float _2642;
  float _2658;
  float _2659;
  float _2660;
  float _2661;
  float _2672;
  float _2677;
  float _2678;
  float _2679;
  float _2681;
  float _2682;
  float _2683;
  float _2684;
  float _2699;
  float _2700;
  float _2701;
  float _2702;
  float _2703;
  float _2704;
  float _2706;
  float _2707;
  float _2708;
  float _2709;
  float _2710;
  float _2711;
  float _2713;
  float _2715;
  float _2718;
  float _2720;
  float _2721;
  float _2722;
  float _2723;
  float _2724;
  float _2725;
  float _2726;
  float _2729;
  float _2730;
  float _2731;
  float _2736;
  float _2737;
  float _2765;
  int _2766;
  bool _2786;
  float _2787;
  float _2788;
  float _2789;
  float _2802;
  float _2812;
  float _2813;
  float _2814;
  float _2815;
  bool _2816;
  bool _2819;
  float _2832;
  float _2843;
  float _2844;
  float _2846;
  float _2849;
  float _2850;
  float _2858;
  float _2859;
  float _2871;
  float _2875;
  float _2907;
  float _2908;
  float _2909;
  uint _2912;
  bool _2927;
  float _2962;
  float _2966;
  float _2967;
  float _2968;
  float _2971;
  half _2978;
  half _2979;
  half _2980;
  float _2999;
  float _3000;
  float _3001;
  float _3009;
  float _3015;
  float _3022;
  float _3023;
  float _3024;
  float _3025;
  float _3026;
  float _3027;
  float _3031;
  float _3032;
  float _3033;
  float _3035;
  float _3042;
  float _3043;
  float _3044;
  float _3061;
  float _3062;
  float _3063;
  float _3064;
  float _3075;
  half _3085;
  half _3086;
  half _3087;
  float _3092;
  float _3102;
  float _3103;
  float _3104;
  float _3108;
  float _3109;
  float _3110;
  float _3112;
  float _3113;
  float _3114;
  float _3115;
  float _3116;
  float _3117;
  float _3121;
  float _3122;
  float _3123;
  float _3127;
  float _3128;
  float _3129;
  float _3144;
  float _3204;
  float _3205;
  float _3206;
  float _3211;
  float _3212;
  float _3213;
  float _3229;
  float _3230;
  float _3234;
  int _50[4];
  _63 = (int)(SV_GroupID.x) & 15;
  _64 = (uint)((uint)(_63)) >> 2;
  _72 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _50[0] = _72.x;
  _50[1] = _72.y;
  _50[2] = _72.z;
  _50[3] = _72.w;
  _82 = _50[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _86 = select((((int)(SV_GroupID.x) & 16) == 0), _82, ((uint)((uint)(_82)) >> 16));
  _92 = (uint)((uint)((uint)((int)((int)(_63) - (int)((int)(_64) << 2)) << 3)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_86)) << 5)) & 8160));
  _94 = (uint)((uint)((uint)((int)(_64) << 3)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_86)) >> 3) & 8160));
  _97 = ((float)((uint)((uint)(_92)))) + 0.5f;
  _98 = ((float)((uint)((uint)(_94)))) + 0.5f;
  _102 = _bufferSizeAndInvSize.z * _97;
  _103 = _98 * _bufferSizeAndInvSize.w;
  _105 = __3__36__0__0__g_depth.Load(int3(_92, _94, 0));  // [sem: _3__36__0__0__g_depth_load]
  _108 = __3__36__0__0__g_stencil.Load(int3(_92, _94, 0));  // [sem: _3__36__0__0__g_stencil_load]
  _110 = _108.x & 127;  // [sem: _3__36__0__0__g_stencil_load_derived]
  _113 = max(1e-07f, _105.x);  // [sem: _3__36__0__0__g_depth_load_derived]
  _114 = _nearFarProj.x / _113;
  _119 = ((_105.x < 1e-07f) || (_105.x == 1.0f)) || (_110 == 10);
  _120 = (float)((bool)(_119));
  _121 = QuadReadLaneAt(_120, 0);
  _122 = !(_121 == 0.0f);
  _123 = QuadReadLaneAt(_120, 1);
  _124 = !(_123 == 0.0f);
  _125 = QuadReadLaneAt(_120, 2);
  _126 = !(_125 == 0.0f);
  _127 = QuadReadLaneAt(_120, 3);
  _128 = !(_127 == 0.0f);
  if (!(((_122 && _124) && _126) && _128)) {
    _137 = __3__36__0__0__g_baseColor.Load(int3(_92, _94, 0));  // [sem: _3__36__0__0__g_baseColor_load]
    _143 = __3__36__0__0__g_normal.Load(int3(_92, _94, 0));  // [sem: _3__36__0__0__g_normal_load]
    _152 = half(((float)((uint)((uint)(((uint)((uint)(_137.x)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _156 = half(((float)((uint)((uint)(_137.x & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _161 = half(((float)((uint)((uint)(((uint)((uint)(_137.y)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _170 = half(((float)((uint)((uint)(((uint)((uint)(_137.w)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _174 = half(((float)((uint)((uint)(_137.w & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _177 = (uint)((_143.w * 3.0f) + 0.5f);  // [sem: _3__36__0__0__g_normal_load_derived]
    _178 = (_177 == 1);
    _179 = (_177 == 3);
    _189 = (saturate(_143.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _190 = (saturate(_143.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _191 = (saturate(_143.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _193 = rsqrt(dot(float3(_189, _190, _191), float3(_189, _190, _191)));  // [sem: invLength]
    _197 = half(_193 * _189);
    _198 = half(_193 * _190);
    _199 = half(_191 * _193);
    _200 = _108.x & 126;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _201 = (_200 == 24);
    if (!_201) {
      _214 = ((half)(_170 * 2.0h)) + -1.0h;
      _215 = ((half)(_174 * 2.0h)) + -1.0h;
      _220 = float(_214 + _215) * 0.5f;
      _221 = float(_214 - _215) * 0.5f;
      _225 = (1.0f - abs(_220)) - abs(_221);
      _227 = rsqrt(dot(float3(_220, _221, _225), float3(_220, _221, _225)));  // [sem: invLength]
      _234 = float(_197);
      _235 = float(_198);
      _236 = float(_199);
      _238 = select((_199 >= 0.0h), 1.0f, -1.0f);
      _241 = -0.0f - (1.0f / (_238 + _236));
      _242 = _235 * _241;
      _243 = _242 * _234;
      _244 = _238 * _234;
      _251 = float(half(_227 * _220));
      _252 = float(half(_227 * _221));
      _253 = float(half(_227 * _225));
      _269 = (half)(half(((float)((uint)((uint)(_137.z & 255)))) * 0.003921569f));
      _270 = (half)(half(((float)((uint)((uint)(((uint)((uint)(_137.z)) >> 8) & 255)))) * 0.003921569f));
      _271 = (half)(half(mad(_253, _234, mad(_252, _243, (_251 * (((_244 * _234) * _241) + 1.0f))))));
      _272 = (half)(half(mad(_253, _235, mad(_252, ((_242 * _235) + _238), ((_251 * _238) * _243)))));
      _273 = (half)(half(mad(_253, _236, mad(_252, (-0.0f - _235), (-0.0f - (_244 * _251))))));
    } else {
      _269 = _174;
      _270 = _170;
      _271 = _197;
      _272 = _198;
      _273 = _199;
    }
    _275 = rsqrt((half)(dot(half3(_271, _272, _273), half3(_271, _272, _273))));  // [sem: invLength]
    _276 = _275 * _271;
    _277 = _275 * _272;
    _278 = _275 * _273;
    _282 = saturate((half)(_152 * _152));  // [sem: expr_sat]
    _283 = saturate((half)(_156 * _156));  // [sem: expr_sat]
    _284 = saturate((half)(_161 * _161));  // [sem: expr_sat]
    // [sem: expr_sat]
    _300 = saturate((half)(((half)(((half)(_283 * 0.3395996h)) + ((half)(_282 * 0.61328125h)))) + ((half)(_284 * 0.04736328h))));
    // [sem: expr_sat]
    _301 = saturate((half)(((half)(((half)(_283 * 0.9165039h)) + ((half)(_282 * 0.07019043h)))) + ((half)(_284 * 0.013450623h))));
    // [sem: expr_sat]
    _302 = saturate((half)(((half)(((half)(_283 * 0.109558105h)) + ((half)(_282 * 0.020614624h)))) + ((half)(_284 * 0.8696289h))));
    _303 = (_110 == 24);
    _304 = (_110 == 29);
    _305 = _303 || _304;
    half4 _308 = __3__36__0__0__g_diffuseResult.Load(int3(_92, _94, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _312 = float(_308.x);  // [sem: _3__36__0__0__g_diffuseResult_load_derived]
    _313 = float(_308.y);  // [sem: _3__36__0__0__g_diffuseResult_load_derived]
    _314 = float(_308.z);  // [sem: _3__36__0__0__g_diffuseResult_load_derived]
    [branch]
    if (_renderParams2.y > 0.0f) {
      half4 _320 = __3__36__0__0__g_sceneDiffuse.Load(int3(_92, _94, 0));  // [sem: _3__36__0__0__g_sceneDiffuse_load]
      _331 = (float(_320.x) + _312);
      _332 = (float(_320.y) + _313);
      _333 = (float(_320.z) + _314);
    } else {
      _331 = _312;
      _332 = _313;
      _333 = _314;
    }
    _335 = __3__36__0__0__g_specularResult.Load(int3(_92, _94, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _339 = ((uint)_110 > (uint)11);
    if (_339) {
      if (!(((uint)_110 < (uint)21) || (_110 == 107))) {
        _349 = (_110 == 7);
      } else {
        _349 = true;
      }
    } else {
      if (!(_110 == 6)) {
        _349 = (_110 == 7);
      } else {
        _349 = true;
      }
    }
    _356 = -0.0f - min(0.0f, (-0.0f - _331));
    _357 = -0.0f - min(0.0f, (-0.0f - _332));
    _358 = -0.0f - min(0.0f, (-0.0f - _333));
    half2 _360 = __3__36__0__0__g_sceneAO.Load(int3(_92, _94, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    if (_339) {
      if ((uint)_110 < (uint)20) {
        _378 = 0.0h;
      } else {
        _370 = ((uint)_110 < (uint)19);
        if ((_110 == 65) || (((_110 == 107) || (_110 == 96)) || _370)) {
          _378 = 0.0h;
        } else {
          _378 = (half)(select(_305, 0.0f, (half)(half(((float)((uint)((uint)(_137.y & 255)))) * 0.003921569f))));
        }
      }
    } else {
      if ((uint)_110 > (uint)10) {
        _378 = 0.0h;
      } else {
        _370 = false;
        if ((_110 == 65) || (((_110 == 107) || (_110 == 96)) || _370)) {
          _378 = 0.0h;
        } else {
          _378 = (half)(select(_305, 0.0f, (half)(half(((float)((uint)((uint)(_137.y & 255)))) * 0.003921569f))));
        }
      }
    }
    _380 = (_102 * 2.0f) + -1.0f;
    _382 = 1.0f - (_103 * 2.0f);
    _418 = mad((_invViewProjRelative[3].z), _113, mad((_invViewProjRelative[3].y), _382, ((_invViewProjRelative[3].x) * _380))) + (_invViewProjRelative[3].w);
    _419 = (mad((_invViewProjRelative[0].z), _113, mad((_invViewProjRelative[0].y), _382, ((_invViewProjRelative[0].x) * _380))) + (_invViewProjRelative[0].w)) / _418;
    _420 = (mad((_invViewProjRelative[1].z), _113, mad((_invViewProjRelative[1].y), _382, ((_invViewProjRelative[1].x) * _380))) + (_invViewProjRelative[1].w)) / _418;
    _421 = (mad((_invViewProjRelative[2].z), _113, mad((_invViewProjRelative[2].y), _382, ((_invViewProjRelative[2].x) * _380))) + (_invViewProjRelative[2].w)) / _418;
    _423 = rsqrt(dot(float3(_419, _420, _421), float3(_419, _420, _421)));  // [sem: invLength]
    _425 = ((uint)(_108.x & 24) > (uint)23);  // [sem: _3__36__0__0__g_stencil_load_derived]
    if (_425) {
      if (_304) {
        _431 = float(saturate(_270));
      } else {
        _431 = 0.0f;
      }
      _433 = (uint)((half)(_269 * 255.0h));
      if (_178) {
        _442 = select(((_433 & 128) != 0), 1.0f, 0.0f);
        _443 = (((float)((uint)((uint)(_433 & 127)))) * 0.007874016f);
      } else {
        _442 = 0.0f;
        _443 = 0.0f;
      }
      _444 = half(_443);
      _446 = (_444 > 0.99902344h);
      _451 = _442;
      _452 = _431;
      _453 = _444;
      _454 = (half)(select(_305, 0.010002136f, _270));
      _455 = (half)(select(_446, 1.0f, _300));
      _456 = (half)(select(_446, 1.0f, _301));
      _457 = (half)(select(_446, 1.0f, _302));
    } else {
      _451 = 0.0f;
      _452 = 0.0f;
      _453 = _378;
      _454 = _270;
      _455 = _300;
      _456 = _301;
      _457 = _302;
    }
    // RenoDX: >>> [Patch: FoliageColorCorrect] [Version: 1.16.00]
    // Description: Applies RenoDX foliage color shaping to foliage stencil materials (stencil ids
    //              12..18) right after the shader has resolved the direct-diffuse base color for the
    //              pixel. Vanilla foliage albedo reads flat and yellow-green under strong sun, so the
    //              helper re-balances hue and saturation. The shadow-map visibility term from
    //              g_sceneShadowColor is passed in so foliage that is shadowed is not pushed through
    //              the fully sunlit shaping curve, which would otherwise make shaded leaves glow.
    //              Gated by FOLIAGE_COLOR_CORRECT; at 0 the block does not execute.
    if (FOLIAGE_COLOR_CORRECT > 0.0f && ((uint)(_110 - 12) < 7u)) {
      float3 _rndx_fcBaseColor = float3(float(_455), float(_456), float(_457));
      half4 _rndx_fcShadow = __3__36__0__0__g_sceneShadowColor.Load(int3(_92, _94, 0));
      float _rndx_fcShadowVis = saturate(dot(float3(_rndx_fcShadow.xyz), float3(0.2126f, 0.7152f, 0.0722f)));
      float3 _rndx_fcCorrected = FoliageColorCorrect(_rndx_fcBaseColor, _sunDirection.xyz, _rndx_fcShadowVis, float3(1.0f, 1.0f, 1.0f));
      float3 _rndx_fscColor = FoliageSelectiveColor(_rndx_fcCorrected);
      _455 = half(_rndx_fscColor.x);
      _456 = half(_rndx_fscColor.y);
      _457 = half(_rndx_fscColor.z);
    }
    // RenoDX: <<< [Patch: FoliageColorCorrect]
    _458 = float(_276);
    _459 = float(_277);
    _460 = float(_278);
    _461 = _423 * _419;
    _462 = -0.0f - _461;
    _463 = _423 * _420;
    _464 = -0.0f - _463;
    _465 = _423 * _421;
    _466 = -0.0f - _465;
    _468 = saturate(dot(float3(_462, _464, _466), float3(_458, _459, _460)));  // [sem: expr_sat]
    _469 = _108.x & 128;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _470 = (_469 == 0);
    if (_470) {
      if ((uint)_110 > (uint)51) {
        if (!(((_108.x & 125) == 105) || ((uint)_110 < (uint)68))) {
          _490 = (_110 == 98);
        } else {
          _490 = true;
        }
      } else {
        if ((uint)_110 > (uint)10) {
          if ((uint)_110 < (uint)20) {
            if (_200 == 14) {
              _490 = (_110 == 98);
            } else {
              _490 = true;
            }
          } else {
            if (!((_108.x & 125) == 105)) {
              _490 = (_110 == 98);
            } else {
              _490 = true;
            }
          }
        } else {
          _490 = (_110 == 98);
        }
      }
    } else {
      _490 = true;
    }
    [branch]
    if (_425) {
      _499 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_92, _94, 0)))).x) & 16777215)))) * 5.960465e-08f);
    } else {
      _499 = _105.x;
    }
    _527 = mad((_projToPrevProj[3].z), _499, mad((_projToPrevProj[3].y), _382, ((_projToPrevProj[3].x) * _380))) + (_projToPrevProj[3].w);
    if (_490) {
      _534 = __3__36__0__0__g_velocity.Load(int3(_92, _94, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _540 = (_534.x * 2.0f);
      _541 = (_534.y * 2.0f);
    } else {
      _540 = (((mad((_projToPrevProj[0].z), _499, mad((_projToPrevProj[0].y), _382, ((_projToPrevProj[0].x) * _380))) + (_projToPrevProj[0].w)) / _527) - _380);
      _541 = (((mad((_projToPrevProj[1].z), _499, mad((_projToPrevProj[1].y), _382, ((_projToPrevProj[1].x) * _380))) + (_projToPrevProj[1].w)) / _527) - _382);
    }
    _545 = _nearFarProj.x / max(1e-07f, _499);
    _548 = (_540 * 0.5f) + _102;
    _549 = _103 - (_541 * 0.5f);
    _557 = select((((_548 < 0.0f) || (_548 > 1.0f)) || ((_549 < 0.0f) || (_549 > 1.0f))), 1.0f, 0.0f);
    _563 = (_bufferSizeAndInvSize.x * _548) + -0.5f;
    _564 = (_bufferSizeAndInvSize.y * _549) + -0.5f;
    _567 = (int)(floor(_563));
    _568 = (int)(floor(_564));
    _569 = (float)((int)(_567));
    _570 = (float)((int)(_568));
    _575 = (_569 + 0.5f) * _bufferSizeAndInvSize.z;
    _576 = (_570 + 0.5f) * _bufferSizeAndInvSize.w;
    _579 = __3__36__0__0__g_depthOpaquePrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_575, _576));  // [sem: _3__36__0__0__g_depthOpaquePrev_gather]
    _602 = mad(((uint)((uint)(_579.w)) >> 24), 16777216, mad(((uint)((uint)(_579.z)) >> 24), 65536, mad(((uint)((uint)(_579.y)) >> 24), 256, ((uint)((uint)(_579.x)) >> 24))));
    if (_470) {
      if ((uint)_110 > (uint)51) {
        if (!((_110 == 98) || (((_108.x & 125) == 105) || ((uint)_110 < (uint)68)))) {
          _632 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        } else {
          _632 = 0.0f;
        }
      } else {
        if ((uint)_110 > (uint)10) {
          if ((uint)_110 < (uint)20) {
            if (_200 == 14) {
              _632 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _632 = 0.0f;
            }
          } else {
            if (!((_108.x & 125) == 105)) {
              _632 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _632 = 0.0f;
            }
          }
        } else {
          _632 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        }
      }
    } else {
      _632 = 0.0f;
    }
    _640 = _screenPercentage.x * 2.0f;
    _641 = _640 * abs(_102 + -0.5f);
    _642 = _screenPercentage.y * 2.0f;
    _643 = _642 * abs(_103 + -0.5f);
    _647 = sqrt(dot(float2(_641, _643), float2(_641, _643)) + 1.0f) * _545;
    _664 = _640 * abs(_548 + -0.5f);
    _665 = _642 * abs(_549 + -0.5f);
    _668 = sqrt(dot(float2(_664, _665), float2(_664, _665)) + 1.0f);
    _683 = ((uint)((int)(_110) + (int)(-97)) < (uint)2) || _349;
    _685 = _545 * _545;
    _687 = (_685 * select(_683, 0.5f, 0.2f)) + 1.0f;
    _690 = (int)(_110) + (int)(-52);
    _691 = ((uint)_690 < (uint)16);
    if (_691) {
      _710 = (1000.0f - (saturate((float)((bool)((sqrt(((_diffViewPosAccurate.x * _diffViewPosAccurate.x) + (_diffViewPosAccurate.y * _diffViewPosAccurate.y)) + (_diffViewPosAccurate.z * _diffViewPosAccurate.z)) * 50.0f) > 1.0f))) * 875.0f));
    } else {
      _710 = 50.0f;
    }
    _718 = select(_691, 0.0f, ((max(0.0f, (_545 + -1.0f)) * 0.1f) * _temporalReprojectionParams.y));
    _723 = max(0.0f, (abs(_647 - (_668 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_579.x & 16777215)))) * 5.960465e-08f))) - _632))) - _718));
    _724 = max(0.0f, (abs(_647 - (_668 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_579.y & 16777215)))) * 5.960465e-08f))) - _632))) - _718));
    _725 = max(0.0f, (abs(_647 - (_668 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_579.z & 16777215)))) * 5.960465e-08f))) - _632))) - _718));
    _726 = max(0.0f, (abs(_647 - (_668 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_579.w & 16777215)))) * 5.960465e-08f))) - _632))) - _718));
    _727 = _723 * _723;
    _728 = _724 * _724;
    _729 = _725 * _725;
    _730 = _726 * _726;
    _732 = (-1.442695f / ((_685 * 0.1f) + 1.0f)) * select(_683, 0.2f, _710);
    _745 = select((_727 > _687), 0.0f, exp2(_727 * _732));
    _746 = select((_728 > _687), 0.0f, exp2(_728 * _732));
    _747 = select((_729 > _687), 0.0f, exp2(_729 * _732));
    _748 = select((_730 > _687), 0.0f, exp2(_730 * _732));
    if (!_425) {
      _752 = (_200 == 66) || (_110 == 53);
      _753 = _602 & 127;
      _754 = _602 & 32512;
      _755 = _602 & 8323072;
      _756 = _602 & 2130706432;
      _778 = ((uint)((int)(_753) + (int)(-52)) < (uint)16);
      _782 = ((uint)((int)(((uint)((uint)(_602)) >> 8) & 127) + (int)(-52)) < (uint)16);
      _786 = ((uint)((int)(((uint)((uint)(_602)) >> 16) & 127) + (int)(-52)) < (uint)16);
      _790 = ((uint)((int)(((uint)((uint)(_602)) >> 24) & 127) + (int)(-52)) < (uint)16);
      _803 = (_469 != 0) || _691;
      _812 = (_110 == 6);
      _834 = ((uint)((int)(_110) + (int)(-105)) < (uint)3);
      _872 = (_745 * ((float)((bool)((_752 || ((_753 != 53) && ((_602 & 126) != 66))) && (!((_803 ^ (((_602 & 128) != 0) || _778)) || ((_812 ^ (_753 == 6)) || ((_691 ^ _778) || (_834 ^ ((_753 == 107) || ((uint)((int)(_753) + (int)(-105)) < (uint)2)))))))))));
      _873 = (_746 * ((float)((bool)((_752 || ((_754 != 13568) && ((_602 & 32256) != 16896))) && (!((_803 ^ (((_602 & 32768) != 0) || _782)) || ((_812 ^ (_754 == 1536)) || ((_691 ^ _782) || (_834 ^ (((_602 & 32000) == 26880) || (_754 == 27136)))))))))));
      _874 = (_747 * ((float)((bool)((_752 || ((_755 != 3473408) && ((_602 & 8257536) != 4325376))) && (!((_803 ^ (((_602 & 8388608) != 0) || _786)) || ((_812 ^ (_755 == 393216)) || ((_691 ^ _786) || (_834 ^ (((_602 & 8192000) == 6881280) || (_755 == 6946816)))))))))));
      _875 = (_748 * ((float)((bool)((_752 || ((_756 != 889192448) && ((_602 & 2113929216) != 1107296256))) && (!((_803 ^ (((int)_602 < (int)0) || _790)) || ((_812 ^ (_756 == 100663296)) || ((_691 ^ _790) || (_834 ^ (((_602 & 2097152000) == 1761607680) || (_756 == 1778384896)))))))))));
    } else {
      _872 = _745;
      _873 = _746;
      _874 = _747;
      _875 = _748;
    }
    _877 = __3__36__0__0__g_sceneNormalPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_575, _576));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather]
    _896 = min(1.0f, ((((float)((uint)((uint)(_877.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _897 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_877.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _898 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_877.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _900 = rsqrt(dot(float3(_896, _897, _898), float3(_896, _897, _898)));  // [sem: invLength]
    _905 = saturate(dot(float3(_458, _459, _460), float3((_900 * _896), (_900 * _897), (_900 * _898))));  // [sem: expr_sat]
    _920 = min(1.0f, ((((float)((uint)((uint)(_877.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _921 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_877.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _922 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_877.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _924 = rsqrt(dot(float3(_920, _921, _922), float3(_920, _921, _922)));  // [sem: invLength]
    _929 = saturate(dot(float3(_458, _459, _460), float3((_924 * _920), (_924 * _921), (_924 * _922))));  // [sem: expr_sat]
    _944 = min(1.0f, ((((float)((uint)((uint)(_877.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _945 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_877.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _946 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_877.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _948 = rsqrt(dot(float3(_944, _945, _946), float3(_944, _945, _946)));  // [sem: invLength]
    _953 = saturate(dot(float3(_458, _459, _460), float3((_948 * _944), (_948 * _945), (_948 * _946))));  // [sem: expr_sat]
    _968 = min(1.0f, ((((float)((uint)((uint)(_877.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _969 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_877.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _970 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_877.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _972 = rsqrt(dot(float3(_968, _969, _970), float3(_968, _969, _970)));  // [sem: invLength]
    _977 = saturate(dot(float3(_458, _459, _460), float3((_972 * _968), (_972 * _969), (_972 * _970))));  // [sem: expr_sat]
    _978 = (_200 == 66);
    _980 = (_110 == 53);
    _982 = select((_980 || (_978 || _683)), 0.01f, 1.0f);
    _999 = _563 - _569;
    _1000 = _564 - _570;
    _1001 = 1.0f - _999;
    _1002 = 1.0f - _1000;
    _1007 = (_1001 * _1000) * _872;
    _1009 = (_1000 * _999) * _873;
    _1011 = (_1002 * _999) * _874;
    _1013 = (_1002 * _1001) * _875;
    _1015 = saturate(select(_425, 1.0f, (pow(_953, _982))) * _1007);  // [sem: expr_sat]
    _1016 = saturate(select(_425, 1.0f, (pow(_977, _982))) * _1009);  // [sem: expr_sat]
    _1017 = saturate(select(_425, 1.0f, (pow(_929, _982))) * _1011);  // [sem: expr_sat]
    _1018 = saturate(select(_425, 1.0f, (pow(_905, _982))) * _1013);  // [sem: expr_sat]
    _1021 = asint(__3__37__0__0__g_structureCounterBuffer.Load(8));
    _1022 = WaveReadLaneFirst(_1021);
    [branch]
    if (!(_1022 == 0)) {
      _1030 = (((uint)(__3__36__0__0__g_tiledManyLightsMasks.Load(int3(((int)(_92) >> 5), ((int)(_94) >> 5), 0)))).x) & 4;
      _1032 = (uint)((uint)(_1030)) >> 2;
      if (!(_1030 == 0)) {
        _1040 = max((saturate(dot(float3(_356, _357, _358), float3(0.212671f, 0.71516f, 0.072169f)) * 0.01f) * 0.875f), _557);
        _1041 = _1032;
      } else {
        _1040 = _557;
        _1041 = _1032;
      }
    } else {
      _1040 = _557;
      _1041 = 0;
    }
    // [sem: expr_sat]
    _1051 = saturate(max(_1040, (((_environmentLightingHistory[1].w) + _temporalReprojectionParams.w) + _renderParams.y)));
    _1052 = (uint)((uint)(_568)) + (uint)(1);
    half4 _1054 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_567, _1052, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _1059 = (uint)((uint)(_567)) + (uint)(1);
    half4 _1060 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1059, _1052, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _1065 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1059, _568, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _1070 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_567, _568, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _1075 = dot(float4(_1015, _1016, _1017, _1018), float4(1.0f, 1.0f, 1.0f, 1.0f));
    // [sem: expr_sat]
    _1084 = saturate(dot(float4(_1015, _1016, _1017, _1018), float4(float(_1054.w), float(_1060.w), float(_1065.w), float(_1070.w))) * (1.0f / max(1.0f, _1075)));
    _1089 = sqrt((_541 * _541) + (_540 * _540)) * 50.0f;
    if (_691) {
      _1098 = saturate(1.0f - _1089);  // [sem: expr_sat]
    } else {
      _1098 = (1.0f - (saturate(_1089) * 0.5f));  // [sem: expr_sat]
    }
    _1102 = max(1.0f, (_bufferSizeAndInvSize.w * 2160.0f));
    _1103 = select(_303, 1.0f, _1084);
    _1105 = (_1103 * _1103) * 4.0f;
    _1108 = __3__36__0__0__g_manyLightsMoments.SampleLevel(__3__40__0__0__g_sampler, float2(_102, _103), 0.0f);  // [sem: _3__36__0__0__g_manyLightsMoments_sampleLod]
    _1113 = saturate(_1108.w);  // [sem: expr_sat]
    _1115 = 1.0f / max(1e-06f, _1075);
    _1117 = _1115 * _1015;
    _1118 = _1115 * _1016;
    _1119 = _1115 * _1017;
    _1120 = _1115 * _1018;
    if (!((_1115 * _1075) == 0.0f)) {
      // [sem: expr_sat]
      _1136 = saturate(saturate(max(_1051, (1.0f / ((min(31.0f, ((_1098 * 15.0f) * _1102)) * saturate(_1105)) + 1.0f))) + _renderParams.z));
    } else {
      _1136 = 1.0f;  // [sem: expr_sat]
    }
    _1178 = 1.0f / _exposure4.x;
    _1195 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_1120 * float(_1070.x)) + ((_1119 * float(_1065.x)) + ((_1117 * float(_1054.x)) + (_1118 * float(_1060.x))))))) * _exposure4.y)))));
    _1196 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_1120 * float(_1070.y)) + ((_1119 * float(_1065.y)) + ((_1117 * float(_1054.y)) + (_1118 * float(_1060.y))))))) * _exposure4.y)))));
    _1197 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_1120 * float(_1070.z)) + ((_1119 * float(_1065.z)) + ((_1117 * float(_1054.z)) + (_1118 * float(_1060.z))))))) * _exposure4.y)))));
    if (_renderParams.y == 0.0f) {
      _1200 = dot(float3(_1195, _1196, _1197), float3(0.212671f, 0.71516f, 0.072169f));
      _1216 = ((min(_1200, _1108.y) / max(1e-06f, _1200)) * _1113) + saturate(1.0f - _1113);
      _1221 = saturate(((_1113 * 0.5f) * saturate(((_1108.x - _1200) * 2.0f) / max(1e-06f, _1108.x))) + _1136);  // [sem: expr_sat]
      _1222 = (_1216 * _1195);
      _1223 = (_1216 * _1196);
      _1224 = (_1216 * _1197);
    } else {
      _1221 = _1136;  // [sem: expr_sat]
      _1222 = _1195;
      _1223 = _1196;
      _1224 = _1197;
    }
    if (!_303) {
      _1229 = saturate(_1084 + 0.0625f);  // [sem: expr_sat]
    } else {
      _1229 = 0.0f;  // [sem: expr_sat]
    }
    _1236 = ((_356 - _1222) * _1221) + _1222;
    _1237 = ((_357 - _1223) * _1221) + _1223;
    _1238 = ((_358 - _1224) * _1221) + _1224;
    __3__38__0__1__g_diffuseResultUAV[int2(_92, _94)] = float4((half)(half(_1236)), (half)(half(_1237)), (half)(half(_1238)), (half)(half(_1229)));
    _1245 = float(_455);
    _1246 = float(_456);
    _1247 = float(_457);
    if (_110 == 52) {
      _1254 = saturate(((_1246 + _1245) + _1247) * 1.2f);  // [sem: expr_sat]
    } else {
      _1254 = 1.0f;  // [sem: expr_sat]
    }
    _1255 = float(_453);
    _1261 = (0.7f / min(max(max(max(_1245, _1246), _1247), 0.01f), 0.7f)) * _1254;
    _1271 = (((_1261 * _1245) + -0.04f) * _1255) + 0.04f;
    _1272 = (((_1261 * _1246) + -0.04f) * _1255) + 0.04f;
    _1273 = (((_1261 * _1247) + -0.04f) * _1255) + 0.04f;
    _1275 = select(_425, 1.0f, float(_360.y));
    if (!_425) {
      _1280 = (half)(saturate((half)(1.0h - (half)(_360.x))));  // [sem: _3__36__0__0__g_sceneAO_load_derived]
    } else {
      _1280 = 1.0h;  // [sem: _3__36__0__0__g_sceneAO_load_derived]
    }
    _1281 = float(_1280);
    if (!((_200 == 96) || (_110 == 98))) {
      if ((uint)((int)(_110) + (int)(-105)) < (uint)2) {
        _1292 = _178;
        _1299 = (half)(select(((_110 == 65) || ((_110 == 107) || _1292)), 0.0f, _453));
      } else {
        if (!((uint)((int)(_110) + (int)(-11)) < (uint)9)) {
          _1292 = false;
          _1299 = (half)(select(((_110 == 65) || ((_110 == 107) || _1292)), 0.0f, _453));
        } else {
          _1299 = 0.0h;
        }
      }
    } else {
      _1299 = 0.0h;
    }
    _1301 = dot(float3(_461, _463, _465), float3(_458, _459, _460)) * 2.0f;
    _1305 = _461 - (_1301 * _458);
    _1306 = _463 - (_1301 * _459);
    _1307 = _465 - (_1301 * _460);
    _1313 = dot(float3(_461, _463, _465), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
    _1321 = (_421 * _421) + (_419 * _419);
    _1325 = sqrt(max(0.0f, (dot(float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z)) - (_1313 * _1313)))) / (sqrt(_1321 + (_420 * _420)) + 5.0f);
    _1329 = float(_454);
    if ((_454 < 0.099975586h) && (_1325 < 0.125f)) {
      _1339 = select((_1329 < 0.8f), ((__3__36__0__0__g_specularRayHitDistance.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_102, _103), 0.0f)).x), 0.0f) * rsqrt(dot(float3(_1305, _1306, _1307), float3(_1305, _1306, _1307)));
      _1340 = _1339 * _1305;
      _1341 = _1339 * _1306;
      _1342 = _1339 * _1307;
      _1347 = dot(float3(_1340, _1341, _1342), float3((-0.0f - _458), (-0.0f - _459), (-0.0f - _460))) * 2.0f;
      _1352 = ((_1347 * _458) + _419) + _1340;
      _1354 = ((_1347 * _459) + _420) + _1341;
      _1356 = ((_1347 * _460) + _421) + _1342;
      _1380 = mad((_viewProjRelative[0].z), _1356, mad((_viewProjRelative[0].y), _1354, (_1352 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w);
      _1384 = mad((_viewProjRelative[1].z), _1356, mad((_viewProjRelative[1].y), _1354, (_1352 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w);
      _1388 = mad((_viewProjRelative[2].z), _1356, mad((_viewProjRelative[2].y), _1354, (_1352 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w);
      _1392 = mad((_viewProjRelative[3].z), _1356, mad((_viewProjRelative[3].y), _1354, (_1352 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _1422 = mad((_projToPrevProj[3].w), _1392, mad((_projToPrevProj[3].z), _1388, mad((_projToPrevProj[3].y), _1384, ((_projToPrevProj[3].x) * _1380))));
      _1427 = ((mad((_projToPrevProj[0].w), _1392, mad((_projToPrevProj[0].z), _1388, mad((_projToPrevProj[0].y), _1384, ((_projToPrevProj[0].x) * _1380)))) / _1422) - (_1380 / _1392)) - _540;
      _1428 = ((mad((_projToPrevProj[1].w), _1392, mad((_projToPrevProj[1].z), _1388, mad((_projToPrevProj[1].y), _1384, ((_projToPrevProj[1].x) * _1380)))) / _1422) - (_1384 / _1392)) - _541;
      _1436 = max(_1325, saturate(sqrt((_1428 * _1428) + (_1427 * _1427))));
    } else {
      _1436 = _1325;
    }
    _1442 = select((_304 || (_201 || (_renderParams.y > 0.0f))), 1.0f, _1275);
    _1446 = float(_1299);
    _1451 = min(max((_cavityParams.y + -1.0f), 0.0f), 2.0f);
    // [sem: expr_sat]
    _1477 = saturate(saturate(1.0f - (((_1446 * _114) / max(0.001f, _468)) * 0.001f)) * 1.25f) * saturate(((((-0.05f - (_1451 * 0.075f)) + max(0.02f, _1329)) + (saturate(_114 * 0.025f) * 0.1f)) * min(max((_114 + 1.0f), 5.0f), 50.0f)) * (1.0f - (saturate(_1446) * 0.75f)));
    if (_110 == 64) {
      _1486 = ((saturate(_114 * 0.25f) * (_1477 + -0.39990234f)) + 0.39990234f);
    } else {
      _1486 = _1477;
    }
    _1488 = (_1451 * 16.0f) + 16.0f;
    _1494 = select((_1451 > 1.0f), 0.0f, saturate((1.0f / _1488) * (_114 - _1488)));
    _1495 = (_110 == 105);
    if (_1495) {
      _1503 = 1.0f;
      _1507 = select((_110 == 65), 0.0f, _1503);
    } else {
      if (!_425) {
        _1503 = select((_110 == 107), 1.0f, ((_1494 + _1486) - (_1494 * _1486)));
        _1507 = select((_110 == 65), 0.0f, _1503);
      } else {
        _1507 = 0.0f;
      }
    }
    _1514 = saturate(select((_lightingParams.y == 0.0f), 1.0f, (1.0f - _1507))) * _1436;
    if ((uint)_110 > (uint)51) {
      if ((uint)_110 < (uint)68) {
        if (_110 == 66) {
          _1529 = (half)(max(0.099975586h, _454));
          _1532 = _1529;
          _1533 = (half)(max(0.89990234h, _454));
        } else {
          _1526 = max(0.099975586h, _454);
          if (_978 || _980) {
            _1529 = _1526;
            _1532 = _1529;
            _1533 = (half)(max(0.89990234h, _454));
          } else {
            _1532 = _1526;
            _1533 = _1526;
          }
        }
      } else {
        _1520 = max(0.099975586h, _454);
        _1532 = _1520;
        _1533 = _1520;
      }
    } else {
      _1526 = max(0.099975586h, _454);
      if (_978 || _980) {
        _1529 = _1526;
        _1532 = _1529;
        _1533 = (half)(max(0.89990234h, _454));
      } else {
        _1532 = _1526;
        _1533 = _1526;
      }
    }
    _1534 = float(_1533);
    _1535 = _1534 * _1534;
    _1536 = _1535 * _1535;
    _1549 = (((_1536 * _953) - _953) * _953) + 1.0f;
    _1550 = (((_1536 * _977) - _977) * _977) + 1.0f;
    _1551 = (((_1536 * _929) - _929) * _929) + 1.0f;
    _1552 = (((_1536 * _905) - _905) * _905) + 1.0f;
    _1592 = (((((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1059, _1052, 0))).x) * saturate(_1009)) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_567, _1052, 0))).x) * saturate(_1007))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1059, _568, 0))).x) * saturate(_1011))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_567, _568, 0))).x) * saturate(_1013));
    _1597 = saturate(select(_304, 1.0f, saturate((_1536 / (_1549 * _1549)) * _953)) * _1007);  // [sem: expr_sat]
    _1598 = saturate(select(_304, 1.0f, saturate((_1536 / (_1550 * _1550)) * _977)) * _1009);  // [sem: expr_sat]
    _1599 = saturate(select(_304, 1.0f, saturate((_1536 / (_1551 * _1551)) * _929)) * _1011);  // [sem: expr_sat]
    _1600 = saturate(select(_304, 1.0f, saturate((_1536 / (_1552 * _1552)) * _905)) * _1013);  // [sem: expr_sat]
    _1610 = exp2(log2(saturate(max(float(((half)(((half)(1.0h - _454)) * 0.75h)) * _1299), (1.0f - _468)))) * 0.1f);
    _1613 = float(((half)(_454 * _454)) + 1.0009766h);
    _1629 = select(_304, 1.0f, saturate(((_1102 * _1102) * _1105) * exp2((log2(float(_1532)) * 0.5f) * (((_1514 * 15.0f) * ((_1610 + _1613) / (_1613 - _1610))) + 1.0f))));
    if ((uint)((int)(_110) + (int)(-12)) < (uint)9) {
      _1639 = ((saturate(_114 * 0.005f) * (_1629 + -1.0f)) + 1.0f);
    } else {
      _1639 = _1629;
    }
    _1667 = mad((_projToPrevProj[3].z), _105.x, mad((_projToPrevProj[3].y), _382, ((_projToPrevProj[3].x) * _380))) + (_projToPrevProj[3].w);
    _1670 = ((mad((_projToPrevProj[0].z), _105.x, mad((_projToPrevProj[0].y), _382, ((_projToPrevProj[0].x) * _380))) + (_projToPrevProj[0].w)) / _1667) - _380;
    _1671 = ((mad((_projToPrevProj[1].z), _105.x, mad((_projToPrevProj[1].y), _382, ((_projToPrevProj[1].x) * _380))) + (_projToPrevProj[1].w)) / _1667) - _382;
    _1672 = _540 - _1670;
    _1673 = _541 - _1671;
    if (_691 || _490) {
      _1685 = (31.0f - (saturate(sqrt((_1673 * _1673) + (_1672 * _1672)) * 500.0f) * 24.0f));
    } else {
      _1685 = 63.0f;
    }
    if (_renderParams.z > 0.0f) {
      _1700 = saturate((_1514 * 200.0f) + 0.125f);  // [sem: expr_sat]
    } else {
      _1700 = 0.0f;  // [sem: expr_sat]
    }
    _1701 = max(max(saturate(_1051), saturate(max(0.0f, (1.0f / (((_1639 * _1592) * _1685) + 1.0f))))), _1700);
    [branch]
    if (_425) {
      _1712 = (_bufferSizeAndInvSize.x * ((_1670 * 0.5f) + _102)) + -0.5f;
      _1713 = (_bufferSizeAndInvSize.y * (_103 - (_1671 * 0.5f))) + -0.5f;
      _1716 = (int)(floor(_1712));
      _1717 = (int)(floor(_1713));
      _1718 = (float)((int)(_1716));
      _1719 = (float)((int)(_1717));
      [branch]
      if (_304) {
        // [sem: _3__36__0__0__g_stencilPrev_gather]
        _1729 = __3__36__0__0__g_stencilPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(((_1718 + 0.5f) * _bufferSizeAndInvSize.z), ((_1719 + 0.5f) * _bufferSizeAndInvSize.w)));
        _1736 = mad(_1729.w, 16777216, mad(_1729.z, 65536, mad(_1729.y, 256, _1729.x)));
        _1765 = saturate(((float)((bool)(((uint)(_1736 & 24) > (uint)23) && ((_1736 & 127) != 24)))) * _1597);  // [sem: expr_sat]
        _1766 = saturate(((float)((bool)(((uint)(_1736 & 6144) > (uint)5888) && ((_1736 & 32512) != 6144)))) * _1598);  // [sem: expr_sat]
        // [sem: expr_sat]
        _1767 = saturate(((float)((bool)(((uint)(_1736 & 1572864) > (uint)1507328) && ((_1736 & 8323072) != 1572864)))) * _1599);
        // [sem: expr_sat]
        _1768 = saturate(((float)((bool)(((uint)(_1736 & 402653184) > (uint)385875968) && ((_1736 & 2130706432) != 402653184)))) * _1600);
        _1801 = max(saturate(min(max(((_452 / (((_114 * _114) * 0.005f) + 1.0f)) + (_1514 * 500.0f)), 0.03125f), 0.5f) + _1701), saturate(1.0f - dot(float4(_1765, _1766, _1767, _1768), float4(1.0f, 1.0f, 1.0f, 1.0f))));
        _1802 = _1716;
        _1803 = _1717;
        _1804 = _1765;
        _1805 = _1766;
        _1806 = _1767;
        _1807 = _1768;
      } else {
        _1784 = _1712 - _1718;
        _1785 = _1713 - _1719;
        _1786 = 1.0f - _1784;
        _1787 = 1.0f - _1785;
        _1801 = (saturate((sqrt((_1671 * _1671) + (_1670 * _1670)) * 50.0f) + 0.125f) * 0.875f);
        _1802 = _1716;
        _1803 = _1717;
        _1804 = (_1786 * _1785);
        _1805 = (_1785 * _1784);
        _1806 = (_1787 * _1784);
        _1807 = (_1787 * _1786);
      }
    } else {
      _1801 = _1701;
      _1802 = _567;
      _1803 = _568;
      _1804 = _1597;
      _1805 = _1598;
      _1806 = _1599;
      _1807 = _1600;
    }
    _1808 = (_1446 > 0.2f);
    _1809 = (uint)((uint)(_1803)) + (uint)(1);
    half4 _1811 = __3__36__0__0__g_specularResultPrev.Load(int3(_1802, _1809, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _1824 = ((float)((bool)(!(_1808 ^ ((half)(_1811.w) < 0.0h))))) * _1804;
    _1830 = (uint)((uint)(_1802)) + (uint)(1);
    half4 _1831 = __3__36__0__0__g_specularResultPrev.Load(int3(_1830, _1809, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _1844 = ((float)((bool)(!(_1808 ^ ((half)(_1831.w) < 0.0h))))) * _1805;
    half4 _1854 = __3__36__0__0__g_specularResultPrev.Load(int3(_1830, _1803, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _1867 = ((float)((bool)(!(_1808 ^ ((half)(_1854.w) < 0.0h))))) * _1806;
    half4 _1877 = __3__36__0__0__g_specularResultPrev.Load(int3(_1802, _1803, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _1890 = ((float)((bool)(!(_1808 ^ ((half)(_1877.w) < 0.0h))))) * _1807;
    _1914 = 1.0f / max(((saturate(_114 * 0.0625f) * 0.000999f) + 1e-06f), dot(float4(_1824, _1844, _1867, _1890), float4(1.0f, 1.0f, 1.0f, 1.0f)));
    _1916 = -0.0f - (min(0.0f, (-0.0f - ((((_1824 * float(_1811.x)) + (_1844 * float(_1831.x))) + (_1867 * float(_1854.x))) + (_1890 * float(_1877.x))))) * _1914);
    _1918 = -0.0f - (min(0.0f, (-0.0f - ((((_1824 * float(_1811.y)) + (_1844 * float(_1831.y))) + (_1867 * float(_1854.y))) + (_1890 * float(_1877.y))))) * _1914);
    _1920 = -0.0f - (min(0.0f, (-0.0f - ((((_1824 * float(_1811.z)) + (_1844 * float(_1831.z))) + (_1867 * float(_1854.z))) + (_1890 * float(_1877.z))))) * _1914);
    _1921 = _1914 * min(0.0f, (-0.0f - ((((_1824 * abs(float(_1811.w))) + (_1844 * abs(float(_1831.w)))) + (_1867 * abs(float(_1854.w)))) + (_1890 * abs(float(_1877.w))))));
    _1930 = max(_1801, saturate((_1329 * _1329) * max(0.0f, saturate(((1.0f - _1275) - _1281) * 2.0f))));
    if (_renderParams.y == 0.0f) {
      _1933 = dot(float3(_1916, _1918, _1920), float3(0.212671f, 0.71516f, 0.072169f));
      _1940 = ((min(_1933, _1108.z) / max(1e-09f, _1933)) * _1113) + saturate(1.0f - _1113);
      // [sem: expr_sat]
      _1961 = saturate(((_1113 * 0.5f) * saturate((((_1329 * 1000.0f) * _1514) * ((float(1.0h / ((half)(8.0h - ((half)(_454 * 7.0h))))) * _1108.z) - _1933)) / max(1e-06f, _1108.z))) + _1930);
      _1962 = (_1940 * _1916);
      _1963 = (_1940 * _1918);
      _1964 = (_1940 * _1920);
    } else {
      _1961 = _1930;  // [sem: expr_sat]
      _1962 = _1916;
      _1963 = _1918;
      _1964 = _1920;
    }
    _1965 = _1962 * _exposure4.y;
    _1966 = _1963 * _exposure4.y;
    _1967 = _1964 * _exposure4.y;
    _1980 = ((max(0.001f, _1281) + _1921) * _1961) - _1921;
    _1990 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_1442 * _335.x) - _1965) * _1961) + _1965))));
    _1991 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_1442 * _335.y) - _1966) * _1961) + _1966))));
    _1992 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_1442 * _335.z) - _1967) * _1961) + _1967))));
    __3__38__0__1__g_specularResultUAV[int2(_92, _94)] = float4((half)(half(_1990)), (half)(half(_1991)), (half)(half(_1992)), (half)(half(select(_1808, (-0.0f - _1980), _1980))));
    __3__38__0__1__g_specularSampleCountUAV[int2(_92, _94)] = saturate((_1592 * 0.984375f) + 0.015625f);
    _2004 = select(_425, 0.0f, _1980);
    _2009 = float(half(lerp(_2004, 1.0f, _1329)));
    _2010 = (_200 == 64);
    _2012 = ((int)(uint)(_179)) ^ 1;
    if ((_2012 & ((int)(uint)(_2010))) == 0) {
      _2028 = saturate(exp2((_2009 * _2009) * (_114 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _2028 = select((_cavityParams.z > 0.0f), 0.0f, 1.0f);  // [sem: expr_sat]
    }
    _2031 = (_cavityParams.x == 0.0f);
    _2032 = select(_2031, 1.0f, _2028);
    if (_2010) {
      _2038 = (_2032 * _1271);
      _2039 = (_2032 * _1272);
      _2040 = (_2032 * _1273);
    } else {
      _2038 = _1271;
      _2039 = _1272;
      _2040 = _1273;
    }
    // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
    _2045 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _468), (1.0f - _2009)), 0.0f);
    _2056 = select((_2010 || _425), 1.0f, _2032) * _1178;
    if ((uint)_690 > (uint)15) {
      if ((_110 != 7) && (!((_110 == 6) || ((_200 == 106) || (((uint)((int)(_110) + (int)(-27)) < (uint)2) || ((_110 == 26) || (_425 || _1495))))))) {
        _2087 = exp2(log2(_2004) * (saturate(_114 * 0.03125f) + 1.0f));
        _2096 = __3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_102, _103), 0.0f);  // [sem: _3__36__0__0__g_puddleMask_sampleLod]
        bool __branch_chain_2081;
        if ((_110 == 15) || ((_200 == 12) || ((_108.x & 124) == 16))) {
          _2115 = false;
          _2116 = true;
          __branch_chain_2081 = true;
        } else {
          if (!((uint)_110 > (uint)10)) {
            _2115 = true;
            _2116 = _1495;
            __branch_chain_2081 = true;
          } else {
            if ((uint)_110 < (uint)20) {
              _2115 = false;
              _2116 = _1495;
              __branch_chain_2081 = true;
            } else {
              if (!(_110 == 97)) {
                _2115 = (_110 != 107);
                _2116 = _1495;
                __branch_chain_2081 = true;
              } else {
                _2308 = _1255;
                _2309 = _1329;
                _2310 = _1245;
                _2311 = _1246;
                _2312 = _1247;
                __branch_chain_2081 = false;
              }
            }
          }
        }
        if (__branch_chain_2081) {
          if (_2096.w < 1.0f) {
            if ((_weatherCheckFlag & 5) == 5) {
              _2126 = (_110 == 36);
              if (!_2126) {
                // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                _2146 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((_viewPos.x + _419) / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((_viewPos.z + _421) / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                _2152 = _2146.x;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2153 = _2146.y;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2154 = _2146.z;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2155 = _2146.w;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
              } else {
                _2152 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2153 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2154 = 0.1f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2155 = 0.5f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
              }
              _2162 = 1.0f - saturate(((_viewPos.y + _420) - _paramGlobalSand.x) / _paramGlobalSand.y);
              if (!(_2162 <= 0.0f)) {
                _2165 = saturate(_2087);  // [sem: _2087_sat]
                _2178 = ((_2153 * 0.33951f) + (_2152 * 0.61312f)) + (_2154 * 0.04737f);
                _2179 = ((_2153 * 0.91636f) + (_2152 * 0.0702f)) + (_2154 * 0.01345f);
                _2180 = ((_2153 * 0.10958f) + (_2152 * 0.02062f)) + (_2154 * 0.8698f);
                _2185 = select(_2116, 1.0f, ((float)((bool)(saturate(dot(float3(_458, _459, _460), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                if (_enableSandAO == 1) {
                  _2190 = 1.0f - _2096.x;  // [sem: _3__36__0__0__g_puddleMask_sampleLod_derived]
                  if (_2126) {
                    _2221 = ((((_2190 * 10.0f) * _2155) * _2162) * _2165);
                    _2224 = _2178;
                    _2225 = _2179;
                    _2226 = _2180;
                    _2227 = saturate(_2221);  // [sem: _2221_sat]
                  } else {
                    _2201 = saturate(_2155 + -0.5f);  // [sem: expr_sat]
                    _2224 = _2178;
                    _2225 = _2179;
                    _2226 = _2180;
                    // [sem: _2221_sat]
                    _2227 = ((((_2201 * 2.0f) * max((_2185 * _2096.x), min((_2165 * ((_2096.x * 7.0f) + 3.0f)), (_2201 * 40.0f)))) + (((_2190 * 10.0f) * _2165) * saturate((0.5f - _2155) * 2.0f))) * _2162);
                  }
                } else {
                  _2219 = ((_2162 * _2155) * _2096.x) * _2185;
                  if (_2126) {
                    _2221 = _2219;
                    _2224 = _2178;
                    _2225 = _2179;
                    _2226 = _2180;
                    _2227 = saturate(_2221);  // [sem: _2221_sat]
                  } else {
                    _2224 = _2178;
                    _2225 = _2179;
                    _2226 = _2180;
                    _2227 = _2219;  // [sem: _2221_sat]
                  }
                }
              } else {
                _2224 = 0.0f;
                _2225 = 0.0f;
                _2226 = 0.0f;
                _2227 = 0.0f;  // [sem: _2221_sat]
              }
              _2231 = ((1.0f - _2096.w) * (1.0f - _2096.y)) * _2227;
              _2232 = (_2231 > 0.0001f);
              if (_2232) {
                if (_2116) {
                  _2235 = saturate(_2231);  // [sem: _2231_sat]
                  _2262 = (((sqrt(_2224 * _1245) - _1245) * _2235) + _1245);
                  _2263 = (((sqrt(_2225 * _1246) - _1246) * _2235) + _1246);
                  _2264 = (((sqrt(_2226 * _1247) - _1247) * _2235) + _1247);
                } else {
                  _2262 = ((_2231 * (_2224 - _1245)) + _1245);
                  _2263 = ((_2231 * (_2225 - _1246)) + _1246);
                  _2264 = ((_2231 * (_2226 - _1247)) + _1247);
                }
              } else {
                _2262 = _1245;
                _2263 = _1246;
                _2264 = _1247;
              }
              if (_2126 && _2232) {
                if (_2116) {
                  _2279 = (((sqrt(_1329 * 0.25f) - _1329) * saturate(_2231)) + _1329);
                } else {
                  _2279 = ((_2231 * (0.25f - _1329)) + _1329);
                }
              } else {
                _2279 = _1329;
              }
              _2280 = saturate(_2262);  // [sem: _2262_sat]
              _2281 = saturate(_2263);  // [sem: _2263_sat]
              _2282 = saturate(_2264);  // [sem: _2264_sat]
              _2287 = (_2279 * (1.0f - _2087)) + _2087;
              _2290 = ((_2279 - _2287) * _2096.y) + _2287;
              _2297 = (((_2087 * _2087) * _2096.z) * ((float)((bool)(_2115)))) * saturate(dot(float3(_458, _459, _460), float3(0.0f, 1.0f, 0.0f)));
              _2298 = _2297 * -0.5f;
              _2308 = (_1255 - (_2087 * _1255));
              _2309 = (_2290 - (_2297 * _2290));
              _2310 = ((_2298 * _2280) + _2280);
              _2311 = ((_2298 * _2281) + _2281);
              _2312 = ((_2298 * _2282) + _2282);
            } else {
              _2308 = _1255;
              _2309 = _1329;
              _2310 = _1245;
              _2311 = _1246;
              _2312 = _1247;
            }
          } else {
            _2308 = _1255;
            _2309 = _1329;
            _2310 = _1245;
            _2311 = _1246;
            _2312 = _1247;
          }
        }
        _2319 = (half)(half(_2308));
        _2320 = (half)(half(_2309));
        _2321 = (half)(half(_2310));
        _2322 = (half)(half(_2311));
        _2323 = (half)(half(_2312));
        _2324 = _2087;
      } else {
        _2319 = _453;
        _2320 = _454;
        _2321 = _455;
        _2322 = _456;
        _2323 = _457;
        _2324 = _2004;
      }
    } else {
      _2319 = _453;
      _2320 = _454;
      _2321 = _455;
      _2322 = _456;
      _2323 = _457;
      _2324 = _2004;
    }
    half4 _2326 = __3__36__0__0__g_sceneShadowColor.Load(int3(_92, _94, 0));  // [sem: _3__36__0__0__g_sceneShadowColor_load]
    [branch]
    if (_425) {
      _2332 = __3__36__0__0__g_sceneNormal.Load(int3(_92, _94, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
      _2348 = min(1.0f, ((((float)((uint)((uint)(_2332.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _2349 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2332.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _2350 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2332.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _2352 = rsqrt(dot(float3(_2348, _2349, _2350), float3(_2348, _2349, _2350)));  // [sem: invLength]
      _2360 = (half)(half(_2352 * _2348));
      _2361 = (half)(half(_2352 * _2349));
      _2362 = (half)(half(_2352 * _2350));
    } else {
      _2360 = _276;
      _2361 = _277;
      _2362 = _278;
    }
    _2365 = (_sunDirection.y > 0.0f);
    if ((_2365) || ((!(_2365)) && (_sunDirection.y > _moonDirection.y))) {
      _2377 = _sunDirection.x;
      _2378 = _sunDirection.y;
      _2379 = _sunDirection.z;
    } else {
      _2377 = _moonDirection.x;
      _2378 = _moonDirection.y;
      _2379 = _moonDirection.z;
    }
    if ((_2365) || ((!(_2365)) && (_sunDirection.y > _moonDirection.y))) {
      _2399 = _precomputedAmbient7.y;
    } else {
      _2399 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
    }
    _2406 = _viewPos.x + _419;
    _2408 = (_earthRadius + _420) + _viewPos.y;
    _2409 = _viewPos.z + _421;
    _2415 = sqrt(((_2406 * _2406) + (_2408 * _2408)) + (_2409 * _2409));
    _2420 = dot(float3((_2406 / _2415), (_2408 / _2415), (_2409 / _2415)), float3(_2377, _2378, _2379));
    _2426 = min(max(((_2415 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
    _2434 = max(_2426, 0.0f);
    _2441 = (-0.0f - sqrt((_2434 + (_earthRadius * 2.0f)) * _2434)) / (_2434 + _earthRadius);
    if (_2420 > _2441) {
      _2464 = ((exp2(log2(saturate((_2420 - _2441) / (1.0f - _2441))) * 0.2f) * 0.4921875f) + 0.50390625f);
    } else {
      _2464 = ((exp2(log2(saturate((_2441 - _2420) / (_2441 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
    }
    // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
    _2468 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_2426 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _2464), 0.0f);
    _2490 = ((_2468.y * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
    _2508 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _2468.x) + _2490) * -1.442695f);
    _2509 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _2468.x) + _2490) * -1.442695f);
    _2510 = exp2(((((_ozoneRatio * 2.1360002e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f)) * _2468.x) + _2490) * -1.442695f);
    _2526 = sqrt(_1321);
    _2534 = (_cloudAltitude - (max(((_2526 * _2526) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
    _2546 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_2378 > 0.0f))) - (int)((int)(uint)((int)(_2378 < 0.0f)))))) * 0.5f))) + _2534;
    if (_420 < _2534) {
      _2549 = dot(float3(0.0f, 1.0f, 0.0f), float3(_2377, _2378, _2379));
      _2555 = select((abs(_2549) < 1e-08f), 1e+08f, ((_2546 - dot(float3(0.0f, 1.0f, 0.0f), float3(_419, _420, _421))) / _2549));
      _2561 = ((_2555 * _2377) + _419);
      _2562 = _2546;
      _2563 = ((_2555 * _2379) + _421);
    } else {
      _2561 = _419;
      _2562 = _420;
      _2563 = _421;
    }
    _2583 = saturate(abs(_2378) * 4.0f);  // [sem: expr_sat]
    _2585 = (_2583 * _2583) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_2561 * 5e-05f) + 0.5f), ((_2562 - _2534) / _cloudThickness), ((_2563 * 5e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
    _2592 = ((1.0f - _2585) * saturate(((_420 - _cloudThickness) - _2534) * 0.1f)) + _2585;
    _2593 = _2592 * (((_2509 * 0.33951f) + (_2508 * 0.61312f)) + (_2510 * 0.04737f));
    _2594 = _2592 * (((_2509 * 0.91636f) + (_2508 * 0.0702f)) + (_2510 * 0.01345f));
    _2595 = _2592 * (((_2509 * 0.10958f) + (_2508 * 0.02062f)) + (_2510 * 0.8698f));
    // RenoDX: >>> [Patch: DirectLightMatrixFix] [Version: 1.16.00]
    // Description: The direct beam's atmospheric transmittance is converted to working space on the three
    //              lines above, and the game converts the result a second time here. The conversion's rows
    //              sum to one, so applying it twice keeps the overall brightness and only pulls the colour
    //              toward grey, which strips the warmth the transmittance itself carries. On uses the single
    //              conversion and keeps every other factor, including the cloud blend already folded into
    //              the inputs and the trailing sun/moon scalar, so low-sun light keeps the colour of the sky
    //              it arrives through. Off is the exact vanilla expression.
    _2611 = (DIRECT_LIGHT_MATRIX_FIX != 0.f)
                ? (_2593 * _2399)
                : ((((_2593 * 0.61312f) + (_2594 * 0.33951f)) + (_2595 * 0.04737f)) * _2399);
    _2612 = (DIRECT_LIGHT_MATRIX_FIX != 0.f)
                ? (_2594 * _2399)
                : ((((_2593 * 0.0702f) + (_2594 * 0.91636f)) + (_2595 * 0.01345f)) * _2399);
    _2613 = (DIRECT_LIGHT_MATRIX_FIX != 0.f)
                ? (_2595 * _2399)
                : ((((_2593 * 0.02062f) + (_2594 * 0.10958f)) + (_2595 * 0.8698f)) * _2399);
    // RenoDX: <<< [Patch: DirectLightMatrixFix]
    // RenoDX: >>> [Patch: DawnDuskDirectLightTint] [Version: 1.16.00]
    // Description: Applies the weather-driven dawn/dusk hue shift to the active sun or moon colour. Vanilla
    //              reddens direct light only through atmospheric transmittance, which leaves twilight
    //              sunlight closer to neutral than the sky it arrives through, so lit surfaces read cool
    //              against a warm horizon. This shifts the direct light in LMS toward the current dawn/dusk
    //              weather preset. The helper attenuates that shift to a tenth of the inscatter shift
    //              because direct light is high energy and feeds the BRDF on every surface, and it clamps
    //              the result to non-negative.
    //              Placed immediately before the Purkinje shift and after the native cloud and atmosphere
    //              transforms, so the ordering is physical: the atmosphere colours the light, then the
    //              scotopic response reacts to the light that actually arrives. It is also before the scene
    //              shadow and ambient-occlusion channels are consumed, matching the Purkinje placement.
    //              Triple-gated and inert by default: DAWN_DUSK_IMPROVEMENTS here, the helper returns its
    //              input unchanged when DawnDuskFactor is 0 (outside the twilight window) or when the
    //              weather preset is identity, and CUSTOM_WEATHER_EDITING additionally requires Ray
    //              Reconstruction (shared.h). Off is bit-exact vanilla.
    if (DAWN_DUSK_IMPROVEMENTS == 1.f) {
      float3 _rndx_dd_direct = WeatherDirectLightCorrection(
          float3(_2611, _2612, _2613), DawnDuskFactor(_sunDirection.y));
      _2611 = _rndx_dd_direct.x;
      _2612 = _rndx_dd_direct.y;
      _2613 = _rndx_dd_direct.z;
    }
    // RenoDX: <<< [Patch: DawnDuskDirectLightTint]
    // RenoDX: >>> [Patch: PurkinjeDirectLight] [Version: 1.16.00]
    // Description: Applies the scotopic direct-light shift only after the active sun or moon color has
    //              passed through the native cloud and atmosphere transforms and before scene shadow or
    //              ambient-occlusion channels are consumed. The moon predicate reuses the native
    //              sun-above-horizon selector and the shader's sun-versus-moon elevation rule.
    //              The explicit feature gate performs no RGB write when disabled; the helper repeats the
    //              same gate and returns its input for all inactive cases.
    if (PURKINJE_EFFECT == 1.f) {
      bool _rndx_purkinje_is_moon = !_2365 && (_sunDirection.y <= _moonDirection.y);
      float3 _rndx_purkinje_light = ApplyPurkinjeShift(
          float3(_2611, _2612, _2613), _sunDirection.y, _rndx_purkinje_is_moon);
      _2611 = _rndx_purkinje_light.x;
      _2612 = _rndx_purkinje_light.y;
      _2613 = _rndx_purkinje_light.z;
    }
    // RenoDX: <<< [Patch: PurkinjeDirectLight]
    _2616 = float(_2326.x);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _2617 = float(_2326.y);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _2618 = float(_2326.z);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    if (!(_339) || !(((uint)_110 < (uint)20) || (_110 == 107))) {
      _2626 = (_110 == 20);
    } else {
      _2626 = true;
    }
    if (_110 == 19) {
      _2635 = true;
      _2638 = _2635;
      _2639 = (_110 == 106);
    } else {
      _2629 = (_110 == 107);
      if (!((_200 == 26) || (_1495 || (_110 == 28)))) {
        _2635 = _2629;
        _2638 = _2635;
        _2639 = (_110 == 106);
      } else {
        _2638 = _2629;
        _2639 = true;
      }
    }
    _2640 = float(_2360);
    _2641 = float(_2361);
    _2642 = float(_2362);
    if (_110 == 97) {
      _2653 = ((int)((uint)((uint)((int)(min16uint)((int)(((int)(((uint16_t)(__3__36__0__0__g_sceneDecalMask.Load(int3(_92, _94, 0)))).x)) & 2)))) >> 1) + (int)(97));
    } else {
      _2653 = _110;
    }
    _2658 = float(saturate(_198));
    _2659 = _2658 * _2658;
    _2660 = _2659 * _2659;
    _2661 = _2660 * _2660;
    _2672 = ((_2661 * _2661) * select((_304 || (_2638 || _2639)), 0.0f, 1.0f)) * (((float4)(__3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_bufferSizeAndInvSize.z * _97), (_bufferSizeAndInvSize.w * _98)), 0.0f))).y);
    _2677 = _2640 - (_2672 * _2640);
    _2678 = (_2672 * (1.0f - _2641)) + _2641;
    _2679 = _2642 - (_2672 * _2642);
    _2681 = rsqrt(dot(float3(_2677, _2678, _2679), float3(_2677, _2678, _2679)));  // [sem: invLength]
    _2682 = _2677 * _2681;
    _2683 = _2678 * _2681;
    _2684 = _2679 * _2681;
    if ((_2365) || ((!(_2365)) && (_sunDirection.y > _moonDirection.y))) {
      _2696 = _sunDirection.x;
      _2697 = _sunDirection.y;
      _2698 = _sunDirection.z;
    } else {
      _2696 = _moonDirection.x;
      _2697 = _moonDirection.y;
      _2698 = _moonDirection.z;
    }
    _2699 = _2611 * _lightingParams.x;
    _2700 = _2612 * _lightingParams.x;
    _2701 = _2613 * _lightingParams.x;
    _2702 = _2696 - _461;
    _2703 = _2697 - _463;
    _2704 = _2698 - _465;
    _2706 = rsqrt(dot(float3(_2702, _2703, _2704), float3(_2702, _2703, _2704)));  // [sem: invLength]
    _2707 = _2706 * _2702;
    _2708 = _2706 * _2703;
    _2709 = _2706 * _2704;
    _2710 = dot(float3(_2640, _2641, _2642), float3(_2696, _2697, _2698));
    _2711 = dot(float3(_2682, _2683, _2684), float3(_2696, _2697, _2698));
    _2713 = saturate(dot(float3(_2640, _2641, _2642), float3(_462, _464, _466)));  // [sem: expr_sat]
    _2715 = saturate(dot(float3(_2682, _2683, _2684), float3(_2707, _2708, _2709)));  // [sem: expr_sat]
    _2718 = saturate(dot(float3(_2696, _2697, _2698), float3(_2707, _2708, _2709)));  // [sem: expr_sat]
    _2720 = float(max(0.010002136h, _2320));
    _2721 = saturate(_2710);  // [sem: _2710_sat]
    // RenoDX: >>> [Patch: MaterialSpecularAA] [Version: 1.16.00]
    // Description: Squaring the raw material roughness here produces the GGX alpha used by every
    //              direct-light specular branch below. On surfaces whose shading normal varies rapidly
    //              within a pixel, a low roughness leaves the specular lobe narrower than the pixel
    //              footprint, which shimmers and crawls under camera motion. This block widens the
    //              roughness first using a normal-derivative (NDF) filter driven by the current
    //              shading normal, so the lobe covers at least the pixel footprint. Gated by
    //              SPECULAR_AA; at 0 the filtered roughness is the unmodified material roughness and
    //              the squared value below is unchanged. `_rndx_spec_rough` is also reused by the
    //              diffraction hook further down.
    float _rndx_spec_rough = _2720;
    if (SPECULAR_AA > 0.0f) {
      _rndx_spec_rough = NDFFilterRoughnessCS(float3(_2682, _2683, _2684), _2720, SPECULAR_AA);
    }
    _2722 = _rndx_spec_rough * _rndx_spec_rough;
    // RenoDX: <<< [Patch: MaterialSpecularAA]
    _2723 = _2722 * _2722;
    _2724 = 1.0f - _2723;
    _2725 = 1.0f - _2718;
    _2726 = _2725 * _2725;
    _2729 = ((_2726 * _2726) * _2725) + _2718;
    _2730 = 1.0f - _2721;
    _2731 = _2730 * _2730;
    _2736 = 1.0f - _2713;
    _2737 = _2736 * _2736;
    // [sem: expr_sat]
    // RenoDX: >>> [Patch: MaterialDiffuseBRDF] [Version: 1.16.00]
    // Description: Replaces the vanilla direct-light diffuse scalar with the RenoDX diffuse BRDF
    //              when a non-default diffuse model is selected. The vanilla expression is a
    //              Lambert term with a fitted multi-scatter/retro-reflection correction; the
    //              replacement is an energy-conserving rough-diffuse model that additionally
    //              depends on the light-view angle, which keeps rough dielectrics from losing
    //              energy at grazing angles. With DIFFUSE_BRDF_MODE below 1 the else branch runs
    //              the vanilla expression unchanged.
    if (DIFFUSE_BRDF_MODE >= 1.0f) {
      float _eon_LdotV = dot(float3(_2696, _2697, _2698), float3(_462, _464, _466));
      _2765 = _2721 * EON_DiffuseScalar(_2721, _2713, _eon_LdotV, _2720);
    } else {
      _2765 = saturate((_2721 * 0.31830987f) * ((((((1.0f - ((_2731 * _2731) * (_2730 * 0.75f))) * (1.0f - ((_2737 * _2737) * (_2736 * 0.75f)))) - _2729) * saturate((_2724 * 2.2f) + -0.5f)) + _2729) + ((exp2(-0.0f - (max(((_2724 * 73.2f) + -21.2f), 8.9f) * sqrt(_2715))) * _2718) * ((((_2724 * 34.5f) + -59.0f) * _2724) + 24.5f))));
    }
    // RenoDX: <<< [Patch: MaterialDiffuseBRDF]
    _2766 = _2653 & 126;
    bool __branch_chain_2695;
    if ((_2653 == 98) || (_2766 == 96)) {
      _2777 = true;
      __branch_chain_2695 = true;
    } else {
      if ((uint)((int)(_2653) + (int)(-105)) < (uint)2) {
        _2777 = _178;
        __branch_chain_2695 = true;
      } else {
        if (!((uint)((int)(_2653) + (int)(-11)) < (uint)9)) {
          _2777 = false;
          __branch_chain_2695 = true;
        } else {
          __branch_chain_2695 = false;
        }
      }
    }
    if (__branch_chain_2695) {
      if ((_2653 == 65) || ((_2653 == 107) || _2777)) {
        _2785 = 0.0f;
      } else {
        _2785 = float(_2319);
      }
    } else {
      _2785 = 0.0f;
    }
    _2786 = (_2653 == 52);
    _2787 = float(_2321);
    _2788 = float(_2322);
    _2789 = float(_2323);
    if (_2786) {
      _2796 = saturate(((_2788 + _2787) + _2789) * 1.2f);  // [sem: expr_sat]
    } else {
      _2796 = 1.0f;  // [sem: expr_sat]
    }
    _2802 = (0.7f / min(max(max(max(_2787, _2788), _2789), 0.01f), 0.7f)) * _2796;
    _2812 = (((_2802 * _2787) + -0.04f) * _2785) + 0.04f;
    _2813 = (((_2802 * _2788) + -0.04f) * _2785) + 0.04f;
    _2814 = (((_2802 * _2789) + -0.04f) * _2785) + 0.04f;
    _2815 = float(_2320);
    _2816 = (_2766 == 64);
    _2819 = ((((int)(uint)(_2816)) & _2012) == 0);
    if (_2819) {
      _2831 = saturate(exp2((_2815 * _2815) * (_114 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _2831 = select((_cavityParams.z > 0.0f), 0.0f, 1.0f);  // [sem: expr_sat]
    }
    _2832 = select(_2031, 1.0f, _2831);
    if (_2816) {
      _2838 = (_2832 * _2812);
      _2839 = (_2832 * _2813);
      _2840 = (_2832 * _2814);
    } else {
      _2838 = _2812;
      _2839 = _2813;
      _2840 = _2814;
    }
    _2843 = saturate(1.0f - saturate(dot(float3(_462, _464, _466), float3(_2707, _2708, _2709))));  // [sem: expr_sat]
    _2844 = _2843 * _2843;
    _2846 = (_2844 * _2844) * _2843;
    _2849 = _2846 * saturate(_2839 * 50.0f);
    _2850 = 1.0f - _2846;
    if (!_304) {
      _2858 = saturate(_2711);  // [sem: _2711_sat]
      _2859 = 1.0f - _2722;
      _2871 = (((_2723 * _2715) - _2715) * _2715) + 1.0f;
      _2875 = (_2723 / ((_2871 * _2871) * 3.1415927f)) * (0.5f / ((((_2859 * _2713) + _2722) * _2711) + (((_2859 * _2711) + _2722) * _2713)));
      _2889 = ((_2858 * _2616) * max((_2875 * ((_2850 * _2838) + _2849)), 0.0f));
      _2890 = ((_2858 * _2617) * max((_2875 * ((_2850 * _2839) + _2849)), 0.0f));
      _2891 = ((_2858 * _2618) * max((_2875 * ((_2850 * _2840) + _2849)), 0.0f));
    } else {
      _2889 = 0.0f;
      _2890 = 0.0f;
      _2891 = 0.0f;
    }
    // RenoDX: >>> [Patch: MaterialDiffraction] [Version: 1.16.00]
    // Description: Adds a wavelength-dependent tint and speckle to specular highlights on
    //              materials with a metal/specular weight, approximating the iridescence of
    //              finely structured surfaces that a single-lobe GGX cannot produce; the effect
    //              is blended by the material weight so dielectrics are unaffected. Gated by
    //              DIFFRACTION; at 0 the branch does not execute and the specular RGB is
    //              untouched.
    if (DIFFRACTION > 0.0f && _2785 > 0.0f) {
      float3 _rndx_dShift = DiffractionShiftAndSpeckleCS(
          _2715, _2713, _rndx_spec_rough,
          float2(_102, _103), _114,
          float3(_2707, _2708, _2709),
          float3(_2682, _2683, _2684),
          float3(_2787, _2788, _2789));
      float3 _rndx_dMod = lerp(1.0f, _rndx_dShift, DIFFRACTION * _2785);
      _2889 *= _rndx_dMod.x;
      _2890 *= _rndx_dMod.y;
      _2891 *= _rndx_dMod.z;
    }
    // RenoDX: <<< [Patch: MaterialDiffraction]
    // RenoDX: >>> [Patch: MaterialSmoothTerminator] [Version: 1.16.00]
    // Description: Softens the geometric shadow terminator after this branch has resolved its diffuse
    //              scalar and specular RGB. The factor is derived from the matched N.L, V.H, and N.H
    //              roles and multiplies all four resolved outputs at their shared post-branch boundary.
    //              The entire mutation is inside the SMOOTH_TERMINATOR gate; at 0 no output is written.
    if (SMOOTH_TERMINATOR > 0.0f) {
      float _rndx_c2 = CallistoSmoothTerminator(_2721, _2718, _2715, SMOOTH_TERMINATOR, 0.5f);
      _2765 *= _rndx_c2;
      _2889 *= _rndx_c2;
      _2890 *= _rndx_c2;
      _2891 *= _rndx_c2;
    }
    // RenoDX: <<< [Patch: MaterialSmoothTerminator]
    // RenoDX: >>> [Patch: FoliageTransmission] [Version: 1.16.00]
    // Description: Vanilla shades foliage stencil materials (stencil ids 12..18) with an opaque
    //              diffuse lobe, so leaves lit from behind go black instead of glowing. This block
    //              adds a back-lit transmission term for those materials during direct diffuse
    //              lighting: the _rndx_foliageTrans* accumulators declared here hold the light that
    //              the helper reports passing through the leaf, which is added into the direct
    //              diffuse output at the [Patch: FoliageTransmission] add-back block below, plus a
    //              replacement scale for the front-facing diffuse lobe so total energy stays
    //              bounded. When the helper reports no scale, a wrapped-diffuse fallback derived
    //              from the raw N.L is used instead. Gated by FOLIAGE_TRANSMISSION; at 0 the
    //              transmission accumulators stay zero and the vanilla diffuse term is untouched.
    if (FOLIAGE_TRANSMISSION > 0.0f && ((uint)(_110 - 12) < 7u)) {
      FoliageTransmissionResult _rndx_ftResult = FoliageTransmission(
          float3(_462, _464, _466),
          float3(_2696, _2697, _2698),
          float3(_2640, _2641, _2642),
          _2710,
          float3(_2787, _2788, _2789),
          float3(_2616, _2617, _2618),
          float3(_2699, _2700, _2701),
          FOLIAGE_TRANSMISSION_THICKNESS);

      _rndx_foliageTransR = _rndx_ftResult.transmission.x;
      _rndx_foliageTransG = _rndx_ftResult.transmission.y;
      _rndx_foliageTransB = _rndx_ftResult.transmission.z;

      if (_rndx_ftResult.diffuseScale > 0.0f) {
        _2765 *= _rndx_ftResult.diffuseScale;
      } else {
        float _rndx_wrap = 0.25f * (1.0f - FOLIAGE_TRANSMISSION_THICKNESS);
        _2765 = max(0.0f, (_2710 + _rndx_wrap) / (1.0f + _rndx_wrap)) * 0.31830987334251404f * 0.75f;
      }
    }
    // RenoDX: <<< [Patch: FoliageTransmission]
    if (_2626 || (_2766 == 6)) {
      _2900 = ((max(0.0f, (0.3f - _2710)) * 0.23190688f) + _2765);
    } else {
      _2900 = _2765;
    }
    _2907 = ((_2616 * _2900) * _2699) + (_1236 * _1178);
    _2908 = ((_2617 * _2900) * _2700) + (_1237 * _1178);
    _2909 = ((_2618 * _2900) * _2701) + (_1238 * _1178);
    // RenoDX: >>> [Patch: FoliageTransmission] [Version: 1.16.00]
    // Description: Adds the gated foliage transmission accumulated above to the three clean-decompile direct-diffuse outputs after all native component equations have completed. With the feature disabled the accumulators are zero, so this insertion is exactly neutral.
    _2907 += _rndx_foliageTransR;
    _2908 += _rndx_foliageTransG;
    _2909 += _rndx_foliageTransB;
    // RenoDX: <<< [Patch: FoliageTransmission]
    _2912 = (uint)((uint)(_frameNumber.x)) * (uint)(13);
    [branch]
    if ((((int)((int)((uint)((uint)(_2912)) + (uint)((uint)(_92)))) | (int)((int)((uint)((uint)(_2912)) + (uint)((uint)(_94))))) & 31) == 0) {
      __3__38__0__1__g_sceneColorLightingOnlyForAwbUAV[int2(((int)(_92) >> 5), ((int)(_94) >> 5))] = float4((half)(half(_2907)), (half)(half(_2908)), (half)(half(_2909)), 1.0f);
    }
    _2927 = ((uint)(_2653 & 24) > (uint)23);
    if (_2819) {
      _2944 = saturate(exp2((_2815 * _2815) * (_114 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _2944 = select((_cavityParams.z > 0.0f), select(_179, 0.0f, _451), 1.0f);  // [sem: expr_sat]
    }
    _2962 = select(_2816, 1.0f, (select((_cavityParams.x == 0.0f), 1.0f, _2944) * select((_178 && _2927), (1.0f - _451), 1.0f)));
    _2966 = min(60000.0f, (_2962 * (((((_2045.x * _2038) + _2045.y) * _1990) * _2056) - min(0.0f, (-0.0f - (_2699 * _2889))))));
    _2967 = min(60000.0f, (_2962 * (((((_2045.x * _2039) + _2045.y) * _1991) * _2056) - min(0.0f, (-0.0f - (_2700 * _2890))))));
    _2968 = min(60000.0f, (_2962 * (((((_2045.x * _2040) + _2045.y) * _1992) * _2056) - min(0.0f, (-0.0f - (_2701 * _2891))))));
    _2971 = 1.0f - _renderParams.x;
    _2978 = half((_renderParams.x * _2787) + _2971);
    _2979 = half((_renderParams.x * _2788) + _2971);
    _2980 = half((_renderParams.x * _2789) + _2971);
    if (_2816 && (_renderParams2.x == 0.0f)) {
      _2996 = (half)(exp2((half)((half)(log2(_2978)) * 0.5h)));
      _2997 = (half)(exp2((half)((half)(log2(_2979)) * 0.5h)));
      _2998 = (half)(exp2((half)((half)(log2(_2980)) * 0.5h)));
    } else {
      _2996 = _2978;
      _2997 = _2979;
      _2998 = _2980;
    }
    _2999 = float(_2996);
    _3000 = float(_2997);
    _3001 = float(_2998);
    if (_2786) {
      _3008 = saturate(((_3000 + _2999) + _3001) * 1.2f);  // [sem: expr_sat]
    } else {
      _3008 = 1.0f;  // [sem: expr_sat]
    }
    _3009 = float(_2319);
    _3015 = (0.7f / min(max(max(max(_2999, _3000), _3001), 0.01f), 0.7f)) * _3008;
    _3022 = ((_3015 * _2999) + -0.04f) * _3009;
    _3023 = ((_3015 * _3000) + -0.04f) * _3009;
    _3024 = ((_3015 * _3001) + -0.04f) * _3009;
    _3025 = _3022 + 0.04f;
    _3026 = _3023 + 0.04f;
    _3027 = _3024 + 0.04f;
    _3031 = (_3025 * _2045.x) + _2045.y;
    _3032 = (_3026 * _2045.x) + _2045.y;
    _3033 = (_3027 * _2045.x) + _2045.y;
    _3035 = (1.0f - _2045.y) - _2045.x;
    _3042 = ((0.96f - _3022) * 0.04761905f) + _3025;
    _3043 = ((0.96f - _3023) * 0.04761905f) + _3026;
    _3044 = ((0.96f - _3024) * 0.04761905f) + _3027;
    _3061 = saturate(1.0f - _2324);  // [sem: expr_sat]
    _3062 = (((_3031 * _3042) / (1.0f - (_3042 * _3035))) * _3035) * _3061;
    _3063 = (((_3032 * _3043) / (1.0f - (_3043 * _3035))) * _3035) * _3061;
    _3064 = (((_3033 * _3044) / (1.0f - (_3044 * _3035))) * _3035) * _3061;
    _3075 = float(1.0h - _2319);
    _3085 = half(((_2999 * _3075) * saturate((1.0f - _3062) - _3031)) + _3062);
    _3086 = half(((_3000 * _3075) * saturate((1.0f - _3063) - _3032)) + _3063);
    _3087 = half(((_3001 * _3075) * saturate((1.0f - _3064) - _3033)) + _3064);
    _3092 = ((__3__36__0__0__g_caustic.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_102, _103), 0.0f)).x) * 0.31830987f;
    _3102 = ((_3092 * _2611) + _2907) * float(_3085);
    _3103 = ((_3092 * _2612) + _2908) * float(_3086);
    _3104 = ((_3092 * _2613) + _2909) * float(_3087);
    _3108 = _3102 + (_2966 * _3009);
    _3109 = _3103 + (_2967 * _3009);
    _3110 = _3104 + (_2968 * _3009);
    if (!(((_122 || _124) || _126) || _128)) {
      _3112 = QuadReadLaneAt(_3108, 0);
      _3113 = QuadReadLaneAt(_3109, 0);
      _3114 = QuadReadLaneAt(_3110, 0);
      _3115 = QuadReadLaneAt(_3108, 1);
      _3116 = QuadReadLaneAt(_3109, 1);
      _3117 = QuadReadLaneAt(_3110, 1);
      _3121 = QuadReadLaneAt(_3108, 2);
      _3122 = QuadReadLaneAt(_3109, 2);
      _3123 = QuadReadLaneAt(_3110, 2);
      _3127 = QuadReadLaneAt(_3108, 3);
      _3128 = QuadReadLaneAt(_3109, 3);
      _3129 = QuadReadLaneAt(_3110, 3);
      _3137 = ((((_3115 + _3112) + _3121) + _3127) * 0.25f);
      _3138 = ((((_3116 + _3113) + _3122) + _3128) * 0.25f);
      _3139 = ((((_3117 + _3114) + _3123) + _3129) * 0.25f);
    } else {
      _3137 = _3108;
      _3138 = _3109;
      _3139 = _3110;
    }
    [branch]
    if ((((int)(_94) | (int)(_92)) & 1) == 0) {
      _3144 = dot(float3(_3137, _3138, _3139), float3(0.212671f, 0.71516f, 0.072169f));
      __3__38__0__1__g_diffuseHalfPrevUAV[int2(((int)(_92) >> 1), ((int)(_94) >> 1))] = float4(min(60000.0f, _3137), min(60000.0f, _3138), min(60000.0f, _3139), min(60000.0f, select((_1041 != 0), (-0.0f - _3144), _3144)));
    }
    if (_2927) {
      _3165 = ((_2319 == 0.0h) && (((_3085 < 0.010002136h) && (_3086 < 0.010002136h)) && (_3087 < 0.010002136h)));
    } else {
      _3165 = false;
    }
    if ((_2927 || ((_2653 == 96) || ((_2653 == 53) || ((_2653 & 124) == 64)))) || ((!(_2927 || ((_2653 == 96) || ((_2653 == 53) || ((_2653 & 124) == 64))))) && ((_114 <= 10.0f) && ((uint)((int)(_2653) + (int)(-97)) < (uint)2)))) {
      __3__38__0__1__g_sceneSpecularUAV[int2(_92, _94)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _2966)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _2967)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _2968)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _2004)))))));
      _3201 = _3102;
      _3202 = _3103;
      _3203 = _3104;
    } else {
      _3201 = (_3102 + _2966);
      _3202 = (_3103 + _2967);
      _3203 = (_3104 + _2968);
    }
    _3204 = min(60000.0f, _3201);
    _3205 = min(60000.0f, _3202);
    _3206 = min(60000.0f, _3203);
    if (!_119) {
      [branch]
      if (_3165) {
        _3211 = __3__38__0__1__g_sceneColorUAV[int2(_92, _94)].x;
        _3212 = __3__38__0__1__g_sceneColorUAV[int2(_92, _94)].y;
        _3213 = __3__38__0__1__g_sceneColorUAV[int2(_92, _94)].z;
        _3218 = (_3211 + _3204);
        _3219 = (_3212 + _3205);
        _3220 = (_3213 + _3206);
      } else {
        _3218 = _3204;
        _3219 = _3205;
        _3220 = _3206;
      }
      if (!(_renderParams.y == 0.0f)) {
        _3229 = dot(float3(_3218, _3219, _3220), float3(0.212671f, 0.71516f, 0.072169f));
        _3230 = min((max(0.01f, _exposure3.w) * 4096.0f), _3229);
        _3234 = max(1e-09f, _3229);
        _3239 = ((_3230 * _3218) / _3234);
        _3240 = ((_3230 * _3219) / _3234);
        _3241 = ((_3230 * _3220) / _3234);
      } else {
        _3239 = _3218;
        _3240 = _3219;
        _3241 = _3220;
      }
      // RenoDX: >>> [Patch: FoliageFinalAO] [Version: 1.16.00]
      // Description: Applies RenoDX foliage ambient-occlusion darkening to the final direct-lit scene
      //              color for foliage stencil materials (stencil ids 12..18). Vanilla leaves the
      //              direct sun contribution on foliage almost entirely unoccluded, so dense canopies
      //              read flat and over-bright. The screen-space AO term is blended in proportionally
      //              to how directly lit the pixel is, taken from the shadow-map colour, so already
      //              shadowed foliage is not darkened twice. Gated by FOLIAGE_AO_STRENGTH; at 0 the
      //              block does not execute, and the lerp keeps the multiplier at exactly 1.0 for
      //              fully shadowed pixels.
      if (FOLIAGE_AO_STRENGTH > 0.0f && ((uint)(_110 - 12) < 7u)) {
        half4 _rndx_shadow = __3__36__0__0__g_sceneShadowColor.Load(int3(_92, _94, 0));
        float _rndx_directRatio = saturate(dot(float3(_rndx_shadow.xyz), float3(0.333f, 0.333f, 0.333f)));
        float _rndx_ao = lerp(1.0f, float(_360.x), _rndx_directRatio * FOLIAGE_AO_STRENGTH);
        _3239 *= _rndx_ao;
        _3240 *= _rndx_ao;
        _3241 *= _rndx_ao;
      }
      // RenoDX: <<< [Patch: FoliageFinalAO]
      __3__38__0__1__g_sceneColorUAV[int2(_92, _94)] = float4(_3239, _3240, _3241, 1.0f);
    }
  }
}
