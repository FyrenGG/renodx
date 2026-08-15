// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the exact shared option and helper declarations consumed by this shader's annotated RenoDX patches. This dependency-only prefix replaces no native executable statement; removing the block restores successor A byte-for-byte.
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
  half _274;
  float _332;
  float _333;
  float _334;
  bool _350;
  bool _371;
  half _379;
  float _432;
  float _443;
  float _444;
  float _452;
  float _453;
  half _454;
  half _455;
  half _456;
  half _457;
  half _458;
  bool _491;
  float _500;
  float _541;
  float _542;
  float _633;
  float _711;
  float _873;
  float _874;
  float _875;
  float _876;
  float _1041;
  int _1042;
  float _1099;
  float _1137;
  float _1222;
  float _1223;
  float _1224;
  float _1225;
  float _1230;
  float _1255;
  half _1281;
  bool _1293;
  half _1300;
  float _1437;
  float _1487;
  float _1504;
  float _1508;
  half _1530;
  half _1533;
  half _1534;
  float _1640;
  float _1686;
  float _1701;
  float _1802;
  int _1803;
  int _1804;
  float _1805;
  float _1806;
  float _1807;
  float _1808;
  float _1962;
  float _1963;
  float _1964;
  float _1965;
  float _2029;
  float _2039;
  float _2040;
  float _2041;
  bool _2116;
  bool _2117;
  float _2153;
  float _2154;
  float _2155;
  float _2156;
  float _2222;
  float _2225;
  float _2226;
  float _2227;
  float _2228;
  float _2263;
  float _2264;
  float _2265;
  float _2280;
  float _2309;
  float _2310;
  float _2311;
  float _2312;
  float _2313;
  half _2320;
  half _2321;
  half _2322;
  half _2323;
  half _2324;
  float _2325;
  half _2361;
  half _2362;
  half _2363;
  float _2378;
  float _2379;
  float _2380;
  float _2400;
  float _2465;
  float _2562;
  float _2563;
  float _2564;
  bool _2627;
  bool _2636;
  bool _2639;
  bool _2640;
  int _2654;
  float _2697;
  float _2698;
  float _2699;
  bool _2778;
  float _2786;
  float _2797;
  float _2832;
  float _2839;
  float _2840;
  float _2841;
  float _2890;
  float _2891;
  float _2892;
  float _2901;
  float _2945;
  half _2997;
  half _2998;
  half _2999;
  float _3009;
  float _3138;
  float _3139;
  float _3140;
  bool _3166;
  float _3202;
  float _3203;
  float _3204;
  float _3219;
  float _3220;
  float _3221;
  float _3240;
  float _3241;
  float _3242;
  uint4 _137;
  float4 _143;
  half _152;
  half _156;
  half _161;
  half _166;
  half _170;
  uint _173;
  bool _174;
  bool _175;
  float _185;
  float _186;
  float _187;
  float _189;
  half _193;
  half _194;
  half _195;
  int _196;
  bool _197;
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
  half _276;
  half _277;
  half _278;
  half _279;
  half _283;
  half _284;
  half _285;
  half _301;
  half _302;
  half _303;
  bool _304;
  bool _305;
  bool _306;
  half4 _309;
  float _313;
  float _314;
  float _315;
  half4 _321;
  float4 _336;
  bool _340;
  float _357;
  float _358;
  float _359;
  half2 _361;
  float _381;
  float _383;
  float _419;
  float _420;
  float _421;
  float _422;
  float _424;
  bool _426;
  uint _434;
  half _445;
  bool _447;
  float _459;
  float _460;
  float _461;
  float _462;
  float _463;
  float _464;
  float _465;
  float _466;
  float _467;
  float _469;
  int _470;
  bool _471;
  float _528;
  float2 _535;
  float _546;
  float _549;
  float _550;
  float _558;
  float _564;
  float _565;
  int _568;
  int _569;
  float _570;
  float _571;
  float _576;
  float _577;
  int4 _580;
  int _603;
  float _641;
  float _642;
  float _643;
  float _644;
  float _648;
  float _665;
  float _666;
  float _669;
  bool _684;
  float _686;
  float _688;
  int _691;
  bool _692;
  float _719;
  float _724;
  float _725;
  float _726;
  float _727;
  float _728;
  float _729;
  float _730;
  float _731;
  float _733;
  float _746;
  float _747;
  float _748;
  float _749;
  bool _753;
  int _754;
  int _755;
  int _756;
  int _757;
  bool _779;
  bool _783;
  bool _787;
  bool _791;
  bool _804;
  bool _813;
  bool _835;
  int4 _878;
  float _897;
  float _898;
  float _899;
  float _901;
  float _906;
  float _921;
  float _922;
  float _923;
  float _925;
  float _930;
  float _945;
  float _946;
  float _947;
  float _949;
  float _954;
  float _969;
  float _970;
  float _971;
  float _973;
  float _978;
  bool _979;
  bool _981;
  float _983;
  float _1000;
  float _1001;
  float _1002;
  float _1003;
  float _1008;
  float _1010;
  float _1012;
  float _1014;
  float _1016;
  float _1017;
  float _1018;
  float _1019;
  int _1022;
  int _1023;
  int _1031;
  int _1033;
  float _1052;
  uint _1053;
  half4 _1055;
  uint _1060;
  half4 _1061;
  half4 _1066;
  half4 _1071;
  float _1076;
  float _1085;
  float _1090;
  float _1103;
  float _1104;
  float _1106;
  float4 _1109;
  float _1114;
  float _1116;
  float _1118;
  float _1119;
  float _1120;
  float _1121;
  float _1179;
  float _1196;
  float _1197;
  float _1198;
  float _1201;
  float _1217;
  float _1237;
  float _1238;
  float _1239;
  float _1246;
  float _1247;
  float _1248;
  float _1256;
  float _1262;
  float _1272;
  float _1273;
  float _1274;
  float _1276;
  float _1282;
  float _1302;
  float _1306;
  float _1307;
  float _1308;
  float _1314;
  float _1322;
  float _1326;
  float _1330;
  float _1340;
  float _1341;
  float _1342;
  float _1343;
  float _1348;
  float _1353;
  float _1355;
  float _1357;
  float _1381;
  float _1385;
  float _1389;
  float _1393;
  float _1423;
  float _1428;
  float _1429;
  float _1443;
  float _1447;
  float _1452;
  float _1478;
  float _1489;
  float _1495;
  bool _1496;
  float _1515;
  half _1521;
  half _1527;
  float _1535;
  float _1536;
  float _1537;
  float _1550;
  float _1551;
  float _1552;
  float _1553;
  float _1593;
  float _1598;
  float _1599;
  float _1600;
  float _1601;
  float _1611;
  float _1614;
  float _1630;
  float _1668;
  float _1671;
  float _1672;
  float _1673;
  float _1674;
  float _1702;
  float _1713;
  float _1714;
  int _1717;
  int _1718;
  float _1719;
  float _1720;
  int4 _1730;
  int _1737;
  float _1766;
  float _1767;
  float _1768;
  float _1769;
  float _1785;
  float _1786;
  float _1787;
  float _1788;
  bool _1809;
  uint _1810;
  half4 _1812;
  float _1825;
  uint _1831;
  half4 _1832;
  float _1845;
  half4 _1855;
  float _1868;
  half4 _1878;
  float _1891;
  float _1915;
  float _1917;
  float _1919;
  float _1921;
  float _1922;
  float _1931;
  float _1934;
  float _1941;
  float _1966;
  float _1967;
  float _1968;
  float _1981;
  float _1991;
  float _1992;
  float _1993;
  float _2005;
  float _2010;
  bool _2011;
  int _2013;
  bool _2032;
  float _2033;
  float2 _2046;
  float _2057;
  float _2088;
  float4 _2097;
  bool _2127;
  float4 _2147;
  float _2163;
  float _2166;
  float _2179;
  float _2180;
  float _2181;
  float _2186;
  float _2191;
  float _2202;
  float _2220;
  float _2232;
  bool _2233;
  float _2236;
  float _2281;
  float _2282;
  float _2283;
  float _2288;
  float _2291;
  float _2298;
  float _2299;
  half4 _2327;
  uint _2333;
  float _2349;
  float _2350;
  float _2351;
  float _2353;
  bool _2366;
  float _2407;
  float _2409;
  float _2410;
  float _2416;
  float _2421;
  float _2427;
  float _2435;
  float _2442;
  float2 _2469;
  float _2491;
  float _2509;
  float _2510;
  float _2511;
  float _2527;
  float _2535;
  float _2547;
  float _2550;
  float _2556;
  float _2584;
  float _2586;
  float _2593;
  float _2594;
  float _2595;
  float _2596;
  float _2612;
  float _2613;
  float _2614;
  float _2617;
  float _2618;
  float _2619;
  bool _2630;
  float _2641;
  float _2642;
  float _2643;
  float _2659;
  float _2660;
  float _2661;
  float _2662;
  float _2673;
  float _2678;
  float _2679;
  float _2680;
  float _2682;
  float _2683;
  float _2684;
  float _2685;
  float _2700;
  float _2701;
  float _2702;
  float _2703;
  float _2704;
  float _2705;
  float _2707;
  float _2708;
  float _2709;
  float _2710;
  float _2711;
  float _2712;
  float _2714;
  float _2716;
  float _2719;
  float _2721;
  float _2722;
  float _2723;
  float _2724;
  float _2725;
  float _2726;
  float _2727;
  float _2730;
  float _2731;
  float _2732;
  float _2737;
  float _2738;
  float _2766;
  int _2767;
  bool _2787;
  float _2788;
  float _2789;
  float _2790;
  float _2803;
  float _2813;
  float _2814;
  float _2815;
  float _2816;
  bool _2817;
  bool _2820;
  float _2833;
  float _2844;
  float _2845;
  float _2847;
  float _2850;
  float _2851;
  float _2859;
  float _2860;
  float _2872;
  float _2876;
  float _2908;
  float _2909;
  float _2910;
  uint _2913;
  bool _2928;
  float _2963;
  float _2967;
  float _2968;
  float _2969;
  float _2972;
  half _2979;
  half _2980;
  half _2981;
  float _3000;
  float _3001;
  float _3002;
  float _3010;
  float _3016;
  float _3023;
  float _3024;
  float _3025;
  float _3026;
  float _3027;
  float _3028;
  float _3032;
  float _3033;
  float _3034;
  float _3036;
  float _3043;
  float _3044;
  float _3045;
  float _3062;
  float _3063;
  float _3064;
  float _3065;
  float _3076;
  half _3086;
  half _3087;
  half _3088;
  float _3093;
  float _3103;
  float _3104;
  float _3105;
  float _3109;
  float _3110;
  float _3111;
  float _3113;
  float _3114;
  float _3115;
  float _3116;
  float _3117;
  float _3118;
  float _3122;
  float _3123;
  float _3124;
  float _3128;
  float _3129;
  float _3130;
  float _3145;
  float _3205;
  float _3206;
  float _3207;
  float _3212;
  float _3213;
  float _3214;
  float _3230;
  float _3231;
  float _3235;
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
    _166 = half(((float)((uint)((uint)(((uint)((uint)(_137.w)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _170 = half(((float)((uint)((uint)(_137.w & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _173 = (uint)((_143.w * 3.0f) + 0.5f);  // [sem: _3__36__0__0__g_normal_load_derived]
    _174 = (_173 == 1);
    _175 = (_173 == 3);
    _185 = (saturate(_143.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _186 = (saturate(_143.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _187 = (saturate(_143.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _189 = rsqrt(dot(float3(_185, _186, _187), float3(_185, _186, _187)));  // [sem: invLength]
    _193 = half(_189 * _185);
    _194 = half(_189 * _186);
    _195 = half(_187 * _189);
    _196 = _108.x & 126;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _197 = (_196 == 24);
    if (!_197) {
      _214 = ((half)(_166 * 2.0h)) + -1.0h;
      _215 = ((half)(_170 * 2.0h)) + -1.0h;
      _220 = float(_214 + _215) * 0.5f;
      _221 = float(_214 - _215) * 0.5f;
      _225 = (1.0f - abs(_220)) - abs(_221);
      _227 = rsqrt(dot(float3(_220, _221, _225), float3(_220, _221, _225)));  // [sem: invLength]
      _234 = float(_193);
      _235 = float(_194);
      _236 = float(_195);
      _238 = select((_195 >= 0.0h), 1.0f, -1.0f);
      _241 = -0.0f - (1.0f / (_238 + _236));
      _242 = _235 * _241;
      _243 = _242 * _234;
      _244 = _238 * _234;
      _251 = float(half(_227 * _220));
      _252 = float(half(_227 * _221));
      _253 = float(half(_227 * _225));
      _269 = (half)(half(((float)((uint)((uint)(_137.z & 255)))) * 0.003921569f));
      _270 = (half)(half(((float)((uint)((uint)(_137.y & 255)))) * 0.003921569f));  // [sem: _3__36__0__0__g_baseColor_load_derived]
      _271 = (half)(half(((float)((uint)((uint)(((uint)((uint)(_137.z)) >> 8) & 255)))) * 0.003921569f));
      _272 = (half)(half(mad(_253, _234, mad(_252, _243, (_251 * (((_244 * _234) * _241) + 1.0f))))));
      _273 = (half)(half(mad(_253, _235, mad(_252, ((_242 * _235) + _238), ((_251 * _238) * _243)))));
      _274 = (half)(half(mad(_253, _236, mad(_252, (-0.0f - _235), (-0.0f - (_244 * _251))))));
    } else {
      _269 = _170;
      _270 = 0.0h;  // [sem: _3__36__0__0__g_baseColor_load_derived]
      _271 = _166;
      _272 = _193;
      _273 = _194;
      _274 = _195;
    }
    _276 = rsqrt((half)(dot(half3(_272, _273, _274), half3(_272, _273, _274))));  // [sem: invLength]
    _277 = _276 * _272;
    _278 = _276 * _273;
    _279 = _276 * _274;
    _283 = saturate((half)(_152 * _152));  // [sem: expr_sat]
    _284 = saturate((half)(_156 * _156));  // [sem: expr_sat]
    _285 = saturate((half)(_161 * _161));  // [sem: expr_sat]
    // [sem: expr_sat]
    _301 = saturate((half)(((half)(((half)(_284 * 0.3395996h)) + ((half)(_283 * 0.61328125h)))) + ((half)(_285 * 0.04736328h))));
    // [sem: expr_sat]
    _302 = saturate((half)(((half)(((half)(_284 * 0.9165039h)) + ((half)(_283 * 0.07019043h)))) + ((half)(_285 * 0.013450623h))));
    // [sem: expr_sat]
    _303 = saturate((half)(((half)(((half)(_284 * 0.109558105h)) + ((half)(_283 * 0.020614624h)))) + ((half)(_285 * 0.8696289h))));
    _304 = (_110 == 24);
    _305 = (_110 == 29);
    _306 = _304 || _305;
    half4 _309 = __3__36__0__0__g_diffuseResult.Load(int3(_92, _94, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _313 = float(_309.x);  // [sem: _3__36__0__0__g_diffuseResult_load_derived]
    _314 = float(_309.y);  // [sem: _3__36__0__0__g_diffuseResult_load_derived]
    _315 = float(_309.z);  // [sem: _3__36__0__0__g_diffuseResult_load_derived]
    [branch]
    if (_renderParams2.y > 0.0f) {
      half4 _321 = __3__36__0__0__g_sceneDiffuse.Load(int3(_92, _94, 0));  // [sem: _3__36__0__0__g_sceneDiffuse_load]
      _332 = (float(_321.x) + _313);
      _333 = (float(_321.y) + _314);
      _334 = (float(_321.z) + _315);
    } else {
      _332 = _313;
      _333 = _314;
      _334 = _315;
    }
    _336 = __3__36__0__0__g_specularResult.Load(int3(_92, _94, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _340 = ((uint)_110 > (uint)11);
    if (_340) {
      if (!(((uint)_110 < (uint)21) || (_110 == 107))) {
        _350 = (_110 == 7);
      } else {
        _350 = true;
      }
    } else {
      if (!(_110 == 6)) {
        _350 = (_110 == 7);
      } else {
        _350 = true;
      }
    }
    _357 = -0.0f - min(0.0f, (-0.0f - _332));
    _358 = -0.0f - min(0.0f, (-0.0f - _333));
    _359 = -0.0f - min(0.0f, (-0.0f - _334));
    half2 _361 = __3__36__0__0__g_sceneAO.Load(int3(_92, _94, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    if (_340) {
      if ((uint)_110 < (uint)20) {
        _379 = 0.0h;
      } else {
        _371 = ((uint)_110 < (uint)19);
        if ((_110 == 65) || (((_110 == 107) || (_110 == 96)) || _371)) {
          _379 = 0.0h;
        } else {
          _379 = (half)(select(_306, 0.0f, _270));
        }
      }
    } else {
      if ((uint)_110 > (uint)10) {
        _379 = 0.0h;
      } else {
        _371 = false;
        if ((_110 == 65) || (((_110 == 107) || (_110 == 96)) || _371)) {
          _379 = 0.0h;
        } else {
          _379 = (half)(select(_306, 0.0f, _270));
        }
      }
    }
    _381 = (_102 * 2.0f) + -1.0f;
    _383 = 1.0f - (_103 * 2.0f);
    _419 = mad((_invViewProjRelative[3].z), _113, mad((_invViewProjRelative[3].y), _383, ((_invViewProjRelative[3].x) * _381))) + (_invViewProjRelative[3].w);
    _420 = (mad((_invViewProjRelative[0].z), _113, mad((_invViewProjRelative[0].y), _383, ((_invViewProjRelative[0].x) * _381))) + (_invViewProjRelative[0].w)) / _419;
    _421 = (mad((_invViewProjRelative[1].z), _113, mad((_invViewProjRelative[1].y), _383, ((_invViewProjRelative[1].x) * _381))) + (_invViewProjRelative[1].w)) / _419;
    _422 = (mad((_invViewProjRelative[2].z), _113, mad((_invViewProjRelative[2].y), _383, ((_invViewProjRelative[2].x) * _381))) + (_invViewProjRelative[2].w)) / _419;
    _424 = rsqrt(dot(float3(_420, _421, _422), float3(_420, _421, _422)));  // [sem: invLength]
    _426 = ((uint)(_108.x & 24) > (uint)23);  // [sem: _3__36__0__0__g_stencil_load_derived]
    if (_426) {
      if (_305) {
        _432 = float(saturate(_271));
      } else {
        _432 = 0.0f;
      }
      _434 = (uint)((half)(_269 * 255.0h));
      if (_174) {
        _443 = select(((_434 & 128) != 0), 1.0f, 0.0f);
        _444 = (((float)((uint)((uint)(_434 & 127)))) * 0.007874016f);
      } else {
        _443 = 0.0f;
        _444 = 0.0f;
      }
      _445 = half(_444);
      _447 = (_445 > 0.99902344h);
      _452 = _443;
      _453 = _432;
      _454 = _445;
      _455 = (half)(select(_306, 0.010002136f, _271));
      _456 = (half)(select(_447, 1.0f, _301));
      _457 = (half)(select(_447, 1.0f, _302));
      _458 = (half)(select(_447, 1.0f, _303));
    } else {
      _452 = 0.0f;
      _453 = 0.0f;
      _454 = _379;
      _455 = _271;
      _456 = _301;
      _457 = _302;
      _458 = _303;
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
      float3 _rndx_fcBaseColor = float3(float(_456), float(_457), float(_458));
      half4 _rndx_fcShadow = __3__36__0__0__g_sceneShadowColor.Load(int3(_92, _94, 0));
      float _rndx_fcShadowVis = saturate(dot(float3(_rndx_fcShadow.xyz), float3(0.2126f, 0.7152f, 0.0722f)));
      float3 _rndx_fcCorrected = FoliageColorCorrect(_rndx_fcBaseColor, _sunDirection.xyz, _rndx_fcShadowVis, float3(1.0f, 1.0f, 1.0f));
      float3 _rndx_fscColor = FoliageSelectiveColor(_rndx_fcCorrected);
      _456 = half(_rndx_fscColor.x);
      _457 = half(_rndx_fscColor.y);
      _458 = half(_rndx_fscColor.z);
    }
    // RenoDX: <<< [Patch: FoliageColorCorrect]
    _459 = float(_277);
    _460 = float(_278);
    _461 = float(_279);
    _462 = _424 * _420;
    _463 = -0.0f - _462;
    _464 = _424 * _421;
    _465 = -0.0f - _464;
    _466 = _424 * _422;
    _467 = -0.0f - _466;
    _469 = saturate(dot(float3(_463, _465, _467), float3(_459, _460, _461)));  // [sem: expr_sat]
    _470 = _108.x & 128;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _471 = (_470 == 0);
    if (_471) {
      if ((uint)_110 > (uint)51) {
        if (!(((_108.x & 125) == 105) || ((uint)_110 < (uint)68))) {
          _491 = (_110 == 98);
        } else {
          _491 = true;
        }
      } else {
        if ((uint)_110 > (uint)10) {
          if ((uint)_110 < (uint)20) {
            if (_196 == 14) {
              _491 = (_110 == 98);
            } else {
              _491 = true;
            }
          } else {
            if (!((_108.x & 125) == 105)) {
              _491 = (_110 == 98);
            } else {
              _491 = true;
            }
          }
        } else {
          _491 = (_110 == 98);
        }
      }
    } else {
      _491 = true;
    }
    [branch]
    if (_426) {
      _500 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_92, _94, 0)))).x) & 16777215)))) * 5.960465e-08f);
    } else {
      _500 = _105.x;
    }
    _528 = mad((_projToPrevProj[3].z), _500, mad((_projToPrevProj[3].y), _383, ((_projToPrevProj[3].x) * _381))) + (_projToPrevProj[3].w);
    if (_491) {
      _535 = __3__36__0__0__g_velocity.Load(int3(_92, _94, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _541 = (_535.x * 2.0f);
      _542 = (_535.y * 2.0f);
    } else {
      _541 = (((mad((_projToPrevProj[0].z), _500, mad((_projToPrevProj[0].y), _383, ((_projToPrevProj[0].x) * _381))) + (_projToPrevProj[0].w)) / _528) - _381);
      _542 = (((mad((_projToPrevProj[1].z), _500, mad((_projToPrevProj[1].y), _383, ((_projToPrevProj[1].x) * _381))) + (_projToPrevProj[1].w)) / _528) - _383);
    }
    _546 = _nearFarProj.x / max(1e-07f, _500);
    _549 = (_541 * 0.5f) + _102;
    _550 = _103 - (_542 * 0.5f);
    _558 = select((((_549 < 0.0f) || (_549 > 1.0f)) || ((_550 < 0.0f) || (_550 > 1.0f))), 1.0f, 0.0f);
    _564 = (_bufferSizeAndInvSize.x * _549) + -0.5f;
    _565 = (_bufferSizeAndInvSize.y * _550) + -0.5f;
    _568 = (int)(floor(_564));
    _569 = (int)(floor(_565));
    _570 = (float)((int)(_568));
    _571 = (float)((int)(_569));
    _576 = (_570 + 0.5f) * _bufferSizeAndInvSize.z;
    _577 = (_571 + 0.5f) * _bufferSizeAndInvSize.w;
    _580 = __3__36__0__0__g_depthOpaquePrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_576, _577));  // [sem: _3__36__0__0__g_depthOpaquePrev_gather]
    _603 = mad(((uint)((uint)(_580.w)) >> 24), 16777216, mad(((uint)((uint)(_580.z)) >> 24), 65536, mad(((uint)((uint)(_580.y)) >> 24), 256, ((uint)((uint)(_580.x)) >> 24))));
    if (_471) {
      if ((uint)_110 > (uint)51) {
        if (!((_110 == 98) || (((_108.x & 125) == 105) || ((uint)_110 < (uint)68)))) {
          _633 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        } else {
          _633 = 0.0f;
        }
      } else {
        if ((uint)_110 > (uint)10) {
          if ((uint)_110 < (uint)20) {
            if (_196 == 14) {
              _633 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _633 = 0.0f;
            }
          } else {
            if (!((_108.x & 125) == 105)) {
              _633 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _633 = 0.0f;
            }
          }
        } else {
          _633 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        }
      }
    } else {
      _633 = 0.0f;
    }
    _641 = _screenPercentage.x * 2.0f;
    _642 = _641 * abs(_102 + -0.5f);
    _643 = _screenPercentage.y * 2.0f;
    _644 = _643 * abs(_103 + -0.5f);
    _648 = sqrt(dot(float2(_642, _644), float2(_642, _644)) + 1.0f) * _546;
    _665 = _641 * abs(_549 + -0.5f);
    _666 = _643 * abs(_550 + -0.5f);
    _669 = sqrt(dot(float2(_665, _666), float2(_665, _666)) + 1.0f);
    _684 = ((uint)((int)(_110) + (int)(-97)) < (uint)2) || _350;
    _686 = _546 * _546;
    _688 = (_686 * select(_684, 0.5f, 0.2f)) + 1.0f;
    _691 = (int)(_110) + (int)(-52);
    _692 = ((uint)_691 < (uint)16);
    if (_692) {
      _711 = (1000.0f - (saturate((float)((bool)((sqrt(((_diffViewPosAccurate.x * _diffViewPosAccurate.x) + (_diffViewPosAccurate.y * _diffViewPosAccurate.y)) + (_diffViewPosAccurate.z * _diffViewPosAccurate.z)) * 50.0f) > 1.0f))) * 875.0f));
    } else {
      _711 = 50.0f;
    }
    _719 = select(_692, 0.0f, ((max(0.0f, (_546 + -1.0f)) * 0.1f) * _temporalReprojectionParams.y));
    _724 = max(0.0f, (abs(_648 - (_669 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_580.x & 16777215)))) * 5.960465e-08f))) - _633))) - _719));
    _725 = max(0.0f, (abs(_648 - (_669 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_580.y & 16777215)))) * 5.960465e-08f))) - _633))) - _719));
    _726 = max(0.0f, (abs(_648 - (_669 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_580.z & 16777215)))) * 5.960465e-08f))) - _633))) - _719));
    _727 = max(0.0f, (abs(_648 - (_669 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_580.w & 16777215)))) * 5.960465e-08f))) - _633))) - _719));
    _728 = _724 * _724;
    _729 = _725 * _725;
    _730 = _726 * _726;
    _731 = _727 * _727;
    _733 = (-1.442695f / ((_686 * 0.1f) + 1.0f)) * select(_684, 0.2f, _711);
    _746 = select((_728 > _688), 0.0f, exp2(_728 * _733));
    _747 = select((_729 > _688), 0.0f, exp2(_729 * _733));
    _748 = select((_730 > _688), 0.0f, exp2(_730 * _733));
    _749 = select((_731 > _688), 0.0f, exp2(_731 * _733));
    if (!_426) {
      _753 = (_196 == 66) || (_110 == 53);
      _754 = _603 & 127;
      _755 = _603 & 32512;
      _756 = _603 & 8323072;
      _757 = _603 & 2130706432;
      _779 = ((uint)((int)(_754) + (int)(-52)) < (uint)16);
      _783 = ((uint)((int)(((uint)((uint)(_603)) >> 8) & 127) + (int)(-52)) < (uint)16);
      _787 = ((uint)((int)(((uint)((uint)(_603)) >> 16) & 127) + (int)(-52)) < (uint)16);
      _791 = ((uint)((int)(((uint)((uint)(_603)) >> 24) & 127) + (int)(-52)) < (uint)16);
      _804 = (_470 != 0) || _692;
      _813 = (_110 == 6);
      _835 = ((uint)((int)(_110) + (int)(-105)) < (uint)3);
      _873 = (_746 * ((float)((bool)((_753 || ((_754 != 53) && ((_603 & 126) != 66))) && (!((_804 ^ (((_603 & 128) != 0) || _779)) || ((_813 ^ (_754 == 6)) || ((_692 ^ _779) || (_835 ^ ((_754 == 107) || ((uint)((int)(_754) + (int)(-105)) < (uint)2)))))))))));
      _874 = (_747 * ((float)((bool)((_753 || ((_755 != 13568) && ((_603 & 32256) != 16896))) && (!((_804 ^ (((_603 & 32768) != 0) || _783)) || ((_813 ^ (_755 == 1536)) || ((_692 ^ _783) || (_835 ^ (((_603 & 32000) == 26880) || (_755 == 27136)))))))))));
      _875 = (_748 * ((float)((bool)((_753 || ((_756 != 3473408) && ((_603 & 8257536) != 4325376))) && (!((_804 ^ (((_603 & 8388608) != 0) || _787)) || ((_813 ^ (_756 == 393216)) || ((_692 ^ _787) || (_835 ^ (((_603 & 8192000) == 6881280) || (_756 == 6946816)))))))))));
      _876 = (_749 * ((float)((bool)((_753 || ((_757 != 889192448) && ((_603 & 2113929216) != 1107296256))) && (!((_804 ^ (((int)_603 < (int)0) || _791)) || ((_813 ^ (_757 == 100663296)) || ((_692 ^ _791) || (_835 ^ (((_603 & 2097152000) == 1761607680) || (_757 == 1778384896)))))))))));
    } else {
      _873 = _746;
      _874 = _747;
      _875 = _748;
      _876 = _749;
    }
    _878 = __3__36__0__0__g_sceneNormalPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_576, _577));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather]
    _897 = min(1.0f, ((((float)((uint)((uint)(_878.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _898 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_878.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _899 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_878.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _901 = rsqrt(dot(float3(_897, _898, _899), float3(_897, _898, _899)));  // [sem: invLength]
    _906 = saturate(dot(float3(_459, _460, _461), float3((_901 * _897), (_901 * _898), (_901 * _899))));  // [sem: expr_sat]
    _921 = min(1.0f, ((((float)((uint)((uint)(_878.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _922 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_878.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _923 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_878.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _925 = rsqrt(dot(float3(_921, _922, _923), float3(_921, _922, _923)));  // [sem: invLength]
    _930 = saturate(dot(float3(_459, _460, _461), float3((_925 * _921), (_925 * _922), (_925 * _923))));  // [sem: expr_sat]
    _945 = min(1.0f, ((((float)((uint)((uint)(_878.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _946 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_878.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _947 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_878.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _949 = rsqrt(dot(float3(_945, _946, _947), float3(_945, _946, _947)));  // [sem: invLength]
    _954 = saturate(dot(float3(_459, _460, _461), float3((_949 * _945), (_949 * _946), (_949 * _947))));  // [sem: expr_sat]
    _969 = min(1.0f, ((((float)((uint)((uint)(_878.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _970 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_878.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _971 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_878.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _973 = rsqrt(dot(float3(_969, _970, _971), float3(_969, _970, _971)));  // [sem: invLength]
    _978 = saturate(dot(float3(_459, _460, _461), float3((_973 * _969), (_973 * _970), (_973 * _971))));  // [sem: expr_sat]
    _979 = (_196 == 66);
    _981 = (_110 == 53);
    _983 = select((_981 || (_979 || _684)), 0.01f, 1.0f);
    _1000 = _564 - _570;
    _1001 = _565 - _571;
    _1002 = 1.0f - _1000;
    _1003 = 1.0f - _1001;
    _1008 = (_1002 * _1001) * _873;
    _1010 = (_1001 * _1000) * _874;
    _1012 = (_1003 * _1000) * _875;
    _1014 = (_1003 * _1002) * _876;
    _1016 = saturate(select(_426, 1.0f, (pow(_954, _983))) * _1008);  // [sem: expr_sat]
    _1017 = saturate(select(_426, 1.0f, (pow(_978, _983))) * _1010);  // [sem: expr_sat]
    _1018 = saturate(select(_426, 1.0f, (pow(_930, _983))) * _1012);  // [sem: expr_sat]
    _1019 = saturate(select(_426, 1.0f, (pow(_906, _983))) * _1014);  // [sem: expr_sat]
    _1022 = asint(__3__37__0__0__g_structureCounterBuffer.Load(8));
    _1023 = WaveReadLaneFirst(_1022);
    [branch]
    if (!(_1023 == 0)) {
      _1031 = (((uint)(__3__36__0__0__g_tiledManyLightsMasks.Load(int3(((int)(_92) >> 5), ((int)(_94) >> 5), 0)))).x) & 4;
      _1033 = (uint)((uint)(_1031)) >> 2;
      if (!(_1031 == 0)) {
        _1041 = max((saturate(dot(float3(_357, _358, _359), float3(0.212671f, 0.71516f, 0.072169f)) * 0.01f) * 0.875f), _558);
        _1042 = _1033;
      } else {
        _1041 = _558;
        _1042 = _1033;
      }
    } else {
      _1041 = _558;
      _1042 = 0;
    }
    // [sem: expr_sat]
    _1052 = saturate(max(_1041, (((_environmentLightingHistory[1].w) + _temporalReprojectionParams.w) + _renderParams.y)));
    _1053 = (uint)((uint)(_569)) + (uint)(1);
    half4 _1055 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_568, _1053, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _1060 = (uint)((uint)(_568)) + (uint)(1);
    half4 _1061 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1060, _1053, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _1066 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1060, _569, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _1071 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_568, _569, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _1076 = dot(float4(_1016, _1017, _1018, _1019), float4(1.0f, 1.0f, 1.0f, 1.0f));
    // [sem: expr_sat]
    _1085 = saturate(dot(float4(_1016, _1017, _1018, _1019), float4(float(_1055.w), float(_1061.w), float(_1066.w), float(_1071.w))) * (1.0f / max(1.0f, _1076)));
    _1090 = sqrt((_542 * _542) + (_541 * _541)) * 50.0f;
    if (_692) {
      _1099 = saturate(1.0f - _1090);  // [sem: expr_sat]
    } else {
      _1099 = (1.0f - (saturate(_1090) * 0.5f));  // [sem: expr_sat]
    }
    _1103 = max(1.0f, (_bufferSizeAndInvSize.w * 2160.0f));
    _1104 = select(_304, 1.0f, _1085);
    _1106 = (_1104 * _1104) * 4.0f;
    _1109 = __3__36__0__0__g_manyLightsMoments.SampleLevel(__3__40__0__0__g_sampler, float2(_102, _103), 0.0f);  // [sem: _3__36__0__0__g_manyLightsMoments_sampleLod]
    _1114 = saturate(_1109.w);  // [sem: expr_sat]
    _1116 = 1.0f / max(1e-06f, _1076);
    _1118 = _1116 * _1016;
    _1119 = _1116 * _1017;
    _1120 = _1116 * _1018;
    _1121 = _1116 * _1019;
    if (!((_1116 * _1076) == 0.0f)) {
      // [sem: expr_sat]
      _1137 = saturate(saturate(max(_1052, (1.0f / ((min(31.0f, ((_1099 * 15.0f) * _1103)) * saturate(_1106)) + 1.0f))) + _renderParams.z));
    } else {
      _1137 = 1.0f;  // [sem: expr_sat]
    }
    _1179 = 1.0f / _exposure4.x;
    _1196 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_1121 * float(_1071.x)) + ((_1120 * float(_1066.x)) + ((_1118 * float(_1055.x)) + (_1119 * float(_1061.x))))))) * _exposure4.y)))));
    _1197 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_1121 * float(_1071.y)) + ((_1120 * float(_1066.y)) + ((_1118 * float(_1055.y)) + (_1119 * float(_1061.y))))))) * _exposure4.y)))));
    _1198 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_1121 * float(_1071.z)) + ((_1120 * float(_1066.z)) + ((_1118 * float(_1055.z)) + (_1119 * float(_1061.z))))))) * _exposure4.y)))));
    if (_renderParams.y == 0.0f) {
      _1201 = dot(float3(_1196, _1197, _1198), float3(0.212671f, 0.71516f, 0.072169f));
      _1217 = ((min(_1201, _1109.y) / max(1e-06f, _1201)) * _1114) + saturate(1.0f - _1114);
      _1222 = saturate(((_1114 * 0.5f) * saturate(((_1109.x - _1201) * 2.0f) / max(1e-06f, _1109.x))) + _1137);  // [sem: expr_sat]
      _1223 = (_1217 * _1196);
      _1224 = (_1217 * _1197);
      _1225 = (_1217 * _1198);
    } else {
      _1222 = _1137;  // [sem: expr_sat]
      _1223 = _1196;
      _1224 = _1197;
      _1225 = _1198;
    }
    if (!_304) {
      _1230 = saturate(_1085 + 0.0625f);  // [sem: expr_sat]
    } else {
      _1230 = 0.0f;  // [sem: expr_sat]
    }
    _1237 = ((_357 - _1223) * _1222) + _1223;
    _1238 = ((_358 - _1224) * _1222) + _1224;
    _1239 = ((_359 - _1225) * _1222) + _1225;
    __3__38__0__1__g_diffuseResultUAV[int2(_92, _94)] = float4((half)(half(_1237)), (half)(half(_1238)), (half)(half(_1239)), (half)(half(_1230)));
    _1246 = float(_456);
    _1247 = float(_457);
    _1248 = float(_458);
    if (_110 == 52) {
      _1255 = saturate(((_1247 + _1246) + _1248) * 1.2f);  // [sem: expr_sat]
    } else {
      _1255 = 1.0f;  // [sem: expr_sat]
    }
    _1256 = float(_454);
    _1262 = (0.7f / min(max(max(max(_1246, _1247), _1248), 0.01f), 0.7f)) * _1255;
    _1272 = (((_1262 * _1246) + -0.04f) * _1256) + 0.04f;
    _1273 = (((_1262 * _1247) + -0.04f) * _1256) + 0.04f;
    _1274 = (((_1262 * _1248) + -0.04f) * _1256) + 0.04f;
    _1276 = select(_426, 1.0f, float(_361.y));
    if (!_426) {
      _1281 = (half)(saturate((half)(1.0h - (half)(_361.x))));  // [sem: _3__36__0__0__g_sceneAO_load_derived]
    } else {
      _1281 = 1.0h;  // [sem: _3__36__0__0__g_sceneAO_load_derived]
    }
    _1282 = float(_1281);
    if (!((_196 == 96) || (_110 == 98))) {
      if ((uint)((int)(_110) + (int)(-105)) < (uint)2) {
        _1293 = _174;
        _1300 = (half)(select(((_110 == 65) || ((_110 == 107) || _1293)), 0.0f, _454));
      } else {
        if (!((uint)((int)(_110) + (int)(-11)) < (uint)9)) {
          _1293 = false;
          _1300 = (half)(select(((_110 == 65) || ((_110 == 107) || _1293)), 0.0f, _454));
        } else {
          _1300 = 0.0h;
        }
      }
    } else {
      _1300 = 0.0h;
    }
    _1302 = dot(float3(_462, _464, _466), float3(_459, _460, _461)) * 2.0f;
    _1306 = _462 - (_1302 * _459);
    _1307 = _464 - (_1302 * _460);
    _1308 = _466 - (_1302 * _461);
    _1314 = dot(float3(_462, _464, _466), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
    _1322 = (_422 * _422) + (_420 * _420);
    _1326 = sqrt(max(0.0f, (dot(float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z)) - (_1314 * _1314)))) / (sqrt(_1322 + (_421 * _421)) + 5.0f);
    _1330 = float(_455);
    if ((_455 < 0.099975586h) && (_1326 < 0.125f)) {
      _1340 = select((_1330 < 0.8f), ((__3__36__0__0__g_specularRayHitDistance.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_102, _103), 0.0f)).x), 0.0f) * rsqrt(dot(float3(_1306, _1307, _1308), float3(_1306, _1307, _1308)));
      _1341 = _1340 * _1306;
      _1342 = _1340 * _1307;
      _1343 = _1340 * _1308;
      _1348 = dot(float3(_1341, _1342, _1343), float3((-0.0f - _459), (-0.0f - _460), (-0.0f - _461))) * 2.0f;
      _1353 = ((_1348 * _459) + _420) + _1341;
      _1355 = ((_1348 * _460) + _421) + _1342;
      _1357 = ((_1348 * _461) + _422) + _1343;
      _1381 = mad((_viewProjRelative[0].z), _1357, mad((_viewProjRelative[0].y), _1355, (_1353 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w);
      _1385 = mad((_viewProjRelative[1].z), _1357, mad((_viewProjRelative[1].y), _1355, (_1353 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w);
      _1389 = mad((_viewProjRelative[2].z), _1357, mad((_viewProjRelative[2].y), _1355, (_1353 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w);
      _1393 = mad((_viewProjRelative[3].z), _1357, mad((_viewProjRelative[3].y), _1355, (_1353 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _1423 = mad((_projToPrevProj[3].w), _1393, mad((_projToPrevProj[3].z), _1389, mad((_projToPrevProj[3].y), _1385, ((_projToPrevProj[3].x) * _1381))));
      _1428 = ((mad((_projToPrevProj[0].w), _1393, mad((_projToPrevProj[0].z), _1389, mad((_projToPrevProj[0].y), _1385, ((_projToPrevProj[0].x) * _1381)))) / _1423) - (_1381 / _1393)) - _541;
      _1429 = ((mad((_projToPrevProj[1].w), _1393, mad((_projToPrevProj[1].z), _1389, mad((_projToPrevProj[1].y), _1385, ((_projToPrevProj[1].x) * _1381)))) / _1423) - (_1385 / _1393)) - _542;
      _1437 = max(_1326, saturate(sqrt((_1429 * _1429) + (_1428 * _1428))));
    } else {
      _1437 = _1326;
    }
    _1443 = select((_305 || (_197 || (_renderParams.y > 0.0f))), 1.0f, _1276);
    _1447 = float(_1300);
    _1452 = min(max((_cavityParams.y + -1.0f), 0.0f), 2.0f);
    // [sem: expr_sat]
    _1478 = saturate(saturate(1.0f - (((_1447 * _114) / max(0.001f, _469)) * 0.001f)) * 1.25f) * saturate(((((-0.05f - (_1452 * 0.075f)) + max(0.02f, _1330)) + (saturate(_114 * 0.025f) * 0.1f)) * min(max((_114 + 1.0f), 5.0f), 50.0f)) * (1.0f - (saturate(_1447) * 0.75f)));
    if (_110 == 64) {
      _1487 = ((saturate(_114 * 0.25f) * (_1478 + -0.39990234f)) + 0.39990234f);
    } else {
      _1487 = _1478;
    }
    _1489 = (_1452 * 16.0f) + 16.0f;
    _1495 = select((_1452 > 1.0f), 0.0f, saturate((1.0f / _1489) * (_114 - _1489)));
    _1496 = (_110 == 105);
    if (_1496) {
      _1504 = 1.0f;
      _1508 = select((_110 == 65), 0.0f, _1504);
    } else {
      if (!_426) {
        _1504 = select((_110 == 107), 1.0f, ((_1495 + _1487) - (_1495 * _1487)));
        _1508 = select((_110 == 65), 0.0f, _1504);
      } else {
        _1508 = 0.0f;
      }
    }
    _1515 = saturate(select((_lightingParams.y == 0.0f), 1.0f, (1.0f - _1508))) * _1437;
    if ((uint)_110 > (uint)51) {
      if ((uint)_110 < (uint)68) {
        if (_110 == 66) {
          _1530 = (half)(max(0.099975586h, _455));
          _1533 = _1530;
          _1534 = (half)(max(0.89990234h, _455));
        } else {
          _1527 = max(0.099975586h, _455);
          if (_979 || _981) {
            _1530 = _1527;
            _1533 = _1530;
            _1534 = (half)(max(0.89990234h, _455));
          } else {
            _1533 = _1527;
            _1534 = _1527;
          }
        }
      } else {
        _1521 = max(0.099975586h, _455);
        _1533 = _1521;
        _1534 = _1521;
      }
    } else {
      _1527 = max(0.099975586h, _455);
      if (_979 || _981) {
        _1530 = _1527;
        _1533 = _1530;
        _1534 = (half)(max(0.89990234h, _455));
      } else {
        _1533 = _1527;
        _1534 = _1527;
      }
    }
    _1535 = float(_1534);
    _1536 = _1535 * _1535;
    _1537 = _1536 * _1536;
    _1550 = (((_1537 * _954) - _954) * _954) + 1.0f;
    _1551 = (((_1537 * _978) - _978) * _978) + 1.0f;
    _1552 = (((_1537 * _930) - _930) * _930) + 1.0f;
    _1553 = (((_1537 * _906) - _906) * _906) + 1.0f;
    _1593 = (((((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1060, _1053, 0))).x) * saturate(_1010)) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_568, _1053, 0))).x) * saturate(_1008))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1060, _569, 0))).x) * saturate(_1012))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_568, _569, 0))).x) * saturate(_1014));
    _1598 = saturate(select(_305, 1.0f, saturate((_1537 / (_1550 * _1550)) * _954)) * _1008);  // [sem: expr_sat]
    _1599 = saturate(select(_305, 1.0f, saturate((_1537 / (_1551 * _1551)) * _978)) * _1010);  // [sem: expr_sat]
    _1600 = saturate(select(_305, 1.0f, saturate((_1537 / (_1552 * _1552)) * _930)) * _1012);  // [sem: expr_sat]
    _1601 = saturate(select(_305, 1.0f, saturate((_1537 / (_1553 * _1553)) * _906)) * _1014);  // [sem: expr_sat]
    _1611 = exp2(log2(saturate(max(float(((half)(((half)(1.0h - _455)) * 0.75h)) * _1300), (1.0f - _469)))) * 0.1f);
    _1614 = float(((half)(_455 * _455)) + 1.0009766h);
    _1630 = select(_305, 1.0f, saturate(((_1103 * _1103) * _1106) * exp2((log2(float(_1533)) * 0.5f) * (((_1515 * 15.0f) * ((_1611 + _1614) / (_1614 - _1611))) + 1.0f))));
    if ((uint)((int)(_110) + (int)(-12)) < (uint)9) {
      _1640 = ((saturate(_114 * 0.005f) * (_1630 + -1.0f)) + 1.0f);
    } else {
      _1640 = _1630;
    }
    _1668 = mad((_projToPrevProj[3].z), _105.x, mad((_projToPrevProj[3].y), _383, ((_projToPrevProj[3].x) * _381))) + (_projToPrevProj[3].w);
    _1671 = ((mad((_projToPrevProj[0].z), _105.x, mad((_projToPrevProj[0].y), _383, ((_projToPrevProj[0].x) * _381))) + (_projToPrevProj[0].w)) / _1668) - _381;
    _1672 = ((mad((_projToPrevProj[1].z), _105.x, mad((_projToPrevProj[1].y), _383, ((_projToPrevProj[1].x) * _381))) + (_projToPrevProj[1].w)) / _1668) - _383;
    _1673 = _541 - _1671;
    _1674 = _542 - _1672;
    if (_692 || _491) {
      _1686 = (31.0f - (saturate(sqrt((_1674 * _1674) + (_1673 * _1673)) * 500.0f) * 24.0f));
    } else {
      _1686 = 63.0f;
    }
    if (_renderParams.z > 0.0f) {
      _1701 = saturate((_1515 * 200.0f) + 0.125f);  // [sem: expr_sat]
    } else {
      _1701 = 0.0f;  // [sem: expr_sat]
    }
    _1702 = max(max(saturate(_1052), saturate(max(0.0f, (1.0f / (((_1640 * _1593) * _1686) + 1.0f))))), _1701);
    [branch]
    if (_426) {
      _1713 = (_bufferSizeAndInvSize.x * ((_1671 * 0.5f) + _102)) + -0.5f;
      _1714 = (_bufferSizeAndInvSize.y * (_103 - (_1672 * 0.5f))) + -0.5f;
      _1717 = (int)(floor(_1713));
      _1718 = (int)(floor(_1714));
      _1719 = (float)((int)(_1717));
      _1720 = (float)((int)(_1718));
      [branch]
      if (_305) {
        // [sem: _3__36__0__0__g_stencilPrev_gather]
        _1730 = __3__36__0__0__g_stencilPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(((_1719 + 0.5f) * _bufferSizeAndInvSize.z), ((_1720 + 0.5f) * _bufferSizeAndInvSize.w)));
        _1737 = mad(_1730.w, 16777216, mad(_1730.z, 65536, mad(_1730.y, 256, _1730.x)));
        _1766 = saturate(((float)((bool)(((uint)(_1737 & 24) > (uint)23) && ((_1737 & 127) != 24)))) * _1598);  // [sem: expr_sat]
        _1767 = saturate(((float)((bool)(((uint)(_1737 & 6144) > (uint)5888) && ((_1737 & 32512) != 6144)))) * _1599);  // [sem: expr_sat]
        // [sem: expr_sat]
        _1768 = saturate(((float)((bool)(((uint)(_1737 & 1572864) > (uint)1507328) && ((_1737 & 8323072) != 1572864)))) * _1600);
        // [sem: expr_sat]
        _1769 = saturate(((float)((bool)(((uint)(_1737 & 402653184) > (uint)385875968) && ((_1737 & 2130706432) != 402653184)))) * _1601);
        _1802 = max(saturate(min(max(((_453 / (((_114 * _114) * 0.005f) + 1.0f)) + (_1515 * 500.0f)), 0.03125f), 0.5f) + _1702), saturate(1.0f - dot(float4(_1766, _1767, _1768, _1769), float4(1.0f, 1.0f, 1.0f, 1.0f))));
        _1803 = _1717;
        _1804 = _1718;
        _1805 = _1766;
        _1806 = _1767;
        _1807 = _1768;
        _1808 = _1769;
      } else {
        _1785 = _1713 - _1719;
        _1786 = _1714 - _1720;
        _1787 = 1.0f - _1785;
        _1788 = 1.0f - _1786;
        _1802 = (saturate((sqrt((_1672 * _1672) + (_1671 * _1671)) * 50.0f) + 0.125f) * 0.875f);
        _1803 = _1717;
        _1804 = _1718;
        _1805 = (_1787 * _1786);
        _1806 = (_1786 * _1785);
        _1807 = (_1788 * _1785);
        _1808 = (_1788 * _1787);
      }
    } else {
      _1802 = _1702;
      _1803 = _568;
      _1804 = _569;
      _1805 = _1598;
      _1806 = _1599;
      _1807 = _1600;
      _1808 = _1601;
    }
    _1809 = (_1447 > 0.2f);
    _1810 = (uint)((uint)(_1804)) + (uint)(1);
    half4 _1812 = __3__36__0__0__g_specularResultPrev.Load(int3(_1803, _1810, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _1825 = ((float)((bool)(!(_1809 ^ ((half)(_1812.w) < 0.0h))))) * _1805;
    _1831 = (uint)((uint)(_1803)) + (uint)(1);
    half4 _1832 = __3__36__0__0__g_specularResultPrev.Load(int3(_1831, _1810, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _1845 = ((float)((bool)(!(_1809 ^ ((half)(_1832.w) < 0.0h))))) * _1806;
    half4 _1855 = __3__36__0__0__g_specularResultPrev.Load(int3(_1831, _1804, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _1868 = ((float)((bool)(!(_1809 ^ ((half)(_1855.w) < 0.0h))))) * _1807;
    half4 _1878 = __3__36__0__0__g_specularResultPrev.Load(int3(_1803, _1804, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _1891 = ((float)((bool)(!(_1809 ^ ((half)(_1878.w) < 0.0h))))) * _1808;
    _1915 = 1.0f / max(((saturate(_114 * 0.0625f) * 0.000999f) + 1e-06f), dot(float4(_1825, _1845, _1868, _1891), float4(1.0f, 1.0f, 1.0f, 1.0f)));
    _1917 = -0.0f - (min(0.0f, (-0.0f - ((((_1825 * float(_1812.x)) + (_1845 * float(_1832.x))) + (_1868 * float(_1855.x))) + (_1891 * float(_1878.x))))) * _1915);
    _1919 = -0.0f - (min(0.0f, (-0.0f - ((((_1825 * float(_1812.y)) + (_1845 * float(_1832.y))) + (_1868 * float(_1855.y))) + (_1891 * float(_1878.y))))) * _1915);
    _1921 = -0.0f - (min(0.0f, (-0.0f - ((((_1825 * float(_1812.z)) + (_1845 * float(_1832.z))) + (_1868 * float(_1855.z))) + (_1891 * float(_1878.z))))) * _1915);
    _1922 = _1915 * min(0.0f, (-0.0f - ((((_1825 * abs(float(_1812.w))) + (_1845 * abs(float(_1832.w)))) + (_1868 * abs(float(_1855.w)))) + (_1891 * abs(float(_1878.w))))));
    _1931 = max(_1802, saturate((_1330 * _1330) * max(0.0f, saturate(((1.0f - _1276) - _1282) * 2.0f))));
    if (_renderParams.y == 0.0f) {
      _1934 = dot(float3(_1917, _1919, _1921), float3(0.212671f, 0.71516f, 0.072169f));
      _1941 = ((min(_1934, _1109.z) / max(1e-09f, _1934)) * _1114) + saturate(1.0f - _1114);
      // [sem: expr_sat]
      _1962 = saturate(((_1114 * 0.5f) * saturate((((_1330 * 1000.0f) * _1515) * ((float(1.0h / ((half)(8.0h - ((half)(_455 * 7.0h))))) * _1109.z) - _1934)) / max(1e-06f, _1109.z))) + _1931);
      _1963 = (_1941 * _1917);
      _1964 = (_1941 * _1919);
      _1965 = (_1941 * _1921);
    } else {
      _1962 = _1931;  // [sem: expr_sat]
      _1963 = _1917;
      _1964 = _1919;
      _1965 = _1921;
    }
    _1966 = _1963 * _exposure4.y;
    _1967 = _1964 * _exposure4.y;
    _1968 = _1965 * _exposure4.y;
    _1981 = ((max(0.001f, _1282) + _1922) * _1962) - _1922;
    _1991 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_1443 * _336.x) - _1966) * _1962) + _1966))));
    _1992 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_1443 * _336.y) - _1967) * _1962) + _1967))));
    _1993 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_1443 * _336.z) - _1968) * _1962) + _1968))));
    __3__38__0__1__g_specularResultUAV[int2(_92, _94)] = float4((half)(half(_1991)), (half)(half(_1992)), (half)(half(_1993)), (half)(half(select(_1809, (-0.0f - _1981), _1981))));
    __3__38__0__1__g_specularSampleCountUAV[int2(_92, _94)] = saturate((_1593 * 0.984375f) + 0.015625f);
    _2005 = select(_426, 0.0f, _1981);
    _2010 = float(half(lerp(_2005, 1.0f, _1330)));
    _2011 = (_196 == 64);
    _2013 = ((int)(uint)(_175)) ^ 1;
    if ((_2013 & ((int)(uint)(_2011))) == 0) {
      _2029 = saturate(exp2((_2010 * _2010) * (_114 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _2029 = select((_cavityParams.z > 0.0f), 0.0f, 1.0f);  // [sem: expr_sat]
    }
    _2032 = (_cavityParams.x == 0.0f);
    _2033 = select(_2032, 1.0f, _2029);
    if (_2011) {
      _2039 = (_2033 * _1272);
      _2040 = (_2033 * _1273);
      _2041 = (_2033 * _1274);
    } else {
      _2039 = _1272;
      _2040 = _1273;
      _2041 = _1274;
    }
    // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
    _2046 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _469), (1.0f - _2010)), 0.0f);
    _2057 = select((_2011 || _426), 1.0f, _2033) * _1179;
    if ((uint)_691 > (uint)15) {
      if ((_110 != 7) && (!((_110 == 6) || ((_196 == 106) || (((uint)((int)(_110) + (int)(-27)) < (uint)2) || ((_110 == 26) || (_426 || _1496))))))) {
        _2088 = exp2(log2(_2005) * (saturate(_114 * 0.03125f) + 1.0f));
        _2097 = __3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_102, _103), 0.0f);  // [sem: _3__36__0__0__g_puddleMask_sampleLod]
        bool __branch_chain_2082;
        if ((_110 == 15) || ((_196 == 12) || ((_108.x & 124) == 16))) {
          _2116 = false;
          _2117 = true;
          __branch_chain_2082 = true;
        } else {
          if (!((uint)_110 > (uint)10)) {
            _2116 = true;
            _2117 = _1496;
            __branch_chain_2082 = true;
          } else {
            if ((uint)_110 < (uint)20) {
              _2116 = false;
              _2117 = _1496;
              __branch_chain_2082 = true;
            } else {
              if (!(_110 == 97)) {
                _2116 = (_110 != 107);
                _2117 = _1496;
                __branch_chain_2082 = true;
              } else {
                _2309 = _1256;
                _2310 = _1330;
                _2311 = _1246;
                _2312 = _1247;
                _2313 = _1248;
                __branch_chain_2082 = false;
              }
            }
          }
        }
        if (__branch_chain_2082) {
          if (_2097.w < 1.0f) {
            if ((_weatherCheckFlag & 5) == 5) {
              _2127 = (_110 == 36);
              if (!_2127) {
                // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                _2147 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((_viewPos.x + _420) / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((_viewPos.z + _422) / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                _2153 = _2147.x;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2154 = _2147.y;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2155 = _2147.z;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2156 = _2147.w;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
              } else {
                _2153 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2154 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2155 = 0.1f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2156 = 0.5f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
              }
              _2163 = 1.0f - saturate(((_viewPos.y + _421) - _paramGlobalSand.x) / _paramGlobalSand.y);
              if (!(_2163 <= 0.0f)) {
                _2166 = saturate(_2088);  // [sem: _2088_sat]
                _2179 = ((_2154 * 0.33951f) + (_2153 * 0.61312f)) + (_2155 * 0.04737f);
                _2180 = ((_2154 * 0.91636f) + (_2153 * 0.0702f)) + (_2155 * 0.01345f);
                _2181 = ((_2154 * 0.10958f) + (_2153 * 0.02062f)) + (_2155 * 0.8698f);
                _2186 = select(_2117, 1.0f, ((float)((bool)(saturate(dot(float3(_459, _460, _461), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                if (_enableSandAO == 1) {
                  _2191 = 1.0f - _2097.x;  // [sem: _3__36__0__0__g_puddleMask_sampleLod_derived]
                  if (_2127) {
                    _2222 = ((((_2191 * 10.0f) * _2156) * _2163) * _2166);
                    _2225 = _2179;
                    _2226 = _2180;
                    _2227 = _2181;
                    _2228 = saturate(_2222);  // [sem: _2222_sat]
                  } else {
                    _2202 = saturate(_2156 + -0.5f);  // [sem: expr_sat]
                    _2225 = _2179;
                    _2226 = _2180;
                    _2227 = _2181;
                    // [sem: _2222_sat]
                    _2228 = ((((_2202 * 2.0f) * max((_2186 * _2097.x), min((_2166 * ((_2097.x * 7.0f) + 3.0f)), (_2202 * 40.0f)))) + (((_2191 * 10.0f) * _2166) * saturate((0.5f - _2156) * 2.0f))) * _2163);
                  }
                } else {
                  _2220 = ((_2163 * _2156) * _2097.x) * _2186;
                  if (_2127) {
                    _2222 = _2220;
                    _2225 = _2179;
                    _2226 = _2180;
                    _2227 = _2181;
                    _2228 = saturate(_2222);  // [sem: _2222_sat]
                  } else {
                    _2225 = _2179;
                    _2226 = _2180;
                    _2227 = _2181;
                    _2228 = _2220;  // [sem: _2222_sat]
                  }
                }
              } else {
                _2225 = 0.0f;
                _2226 = 0.0f;
                _2227 = 0.0f;
                _2228 = 0.0f;  // [sem: _2222_sat]
              }
              _2232 = ((1.0f - _2097.w) * (1.0f - _2097.y)) * _2228;
              _2233 = (_2232 > 0.0001f);
              if (_2233) {
                if (_2117) {
                  _2236 = saturate(_2232);  // [sem: _2232_sat]
                  _2263 = (((sqrt(_2225 * _1246) - _1246) * _2236) + _1246);
                  _2264 = (((sqrt(_2226 * _1247) - _1247) * _2236) + _1247);
                  _2265 = (((sqrt(_2227 * _1248) - _1248) * _2236) + _1248);
                } else {
                  _2263 = ((_2232 * (_2225 - _1246)) + _1246);
                  _2264 = ((_2232 * (_2226 - _1247)) + _1247);
                  _2265 = ((_2232 * (_2227 - _1248)) + _1248);
                }
              } else {
                _2263 = _1246;
                _2264 = _1247;
                _2265 = _1248;
              }
              if (_2127 && _2233) {
                if (_2117) {
                  _2280 = (((sqrt(_1330 * 0.25f) - _1330) * saturate(_2232)) + _1330);
                } else {
                  _2280 = ((_2232 * (0.25f - _1330)) + _1330);
                }
              } else {
                _2280 = _1330;
              }
              _2281 = saturate(_2263);  // [sem: _2263_sat]
              _2282 = saturate(_2264);  // [sem: _2264_sat]
              _2283 = saturate(_2265);  // [sem: _2265_sat]
              _2288 = (_2280 * (1.0f - _2088)) + _2088;
              _2291 = ((_2280 - _2288) * _2097.y) + _2288;
              _2298 = (((_2088 * _2088) * _2097.z) * ((float)((bool)(_2116)))) * saturate(dot(float3(_459, _460, _461), float3(0.0f, 1.0f, 0.0f)));
              _2299 = _2298 * -0.5f;
              _2309 = (_1256 - (_2088 * _1256));
              _2310 = (_2291 - (_2298 * _2291));
              _2311 = ((_2299 * _2281) + _2281);
              _2312 = ((_2299 * _2282) + _2282);
              _2313 = ((_2299 * _2283) + _2283);
            } else {
              _2309 = _1256;
              _2310 = _1330;
              _2311 = _1246;
              _2312 = _1247;
              _2313 = _1248;
            }
          } else {
            _2309 = _1256;
            _2310 = _1330;
            _2311 = _1246;
            _2312 = _1247;
            _2313 = _1248;
          }
        }
        _2320 = (half)(half(_2309));
        _2321 = (half)(half(_2310));
        _2322 = (half)(half(_2311));
        _2323 = (half)(half(_2312));
        _2324 = (half)(half(_2313));
        _2325 = _2088;
      } else {
        _2320 = _454;
        _2321 = _455;
        _2322 = _456;
        _2323 = _457;
        _2324 = _458;
        _2325 = _2005;
      }
    } else {
      _2320 = _454;
      _2321 = _455;
      _2322 = _456;
      _2323 = _457;
      _2324 = _458;
      _2325 = _2005;
    }
    half4 _2327 = __3__36__0__0__g_sceneShadowColor.Load(int3(_92, _94, 0));  // [sem: _3__36__0__0__g_sceneShadowColor_load]
    [branch]
    if (_426) {
      _2333 = __3__36__0__0__g_sceneNormal.Load(int3(_92, _94, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
      _2349 = min(1.0f, ((((float)((uint)((uint)(_2333.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _2350 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2333.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _2351 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2333.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _2353 = rsqrt(dot(float3(_2349, _2350, _2351), float3(_2349, _2350, _2351)));  // [sem: invLength]
      _2361 = (half)(half(_2353 * _2349));
      _2362 = (half)(half(_2353 * _2350));
      _2363 = (half)(half(_2353 * _2351));
    } else {
      _2361 = _277;
      _2362 = _278;
      _2363 = _279;
    }
    _2366 = (_sunDirection.y > 0.0f);
    if ((_2366) || ((!(_2366)) && (_sunDirection.y > _moonDirection.y))) {
      _2378 = _sunDirection.x;
      _2379 = _sunDirection.y;
      _2380 = _sunDirection.z;
    } else {
      _2378 = _moonDirection.x;
      _2379 = _moonDirection.y;
      _2380 = _moonDirection.z;
    }
    if ((_2366) || ((!(_2366)) && (_sunDirection.y > _moonDirection.y))) {
      _2400 = _precomputedAmbient7.y;
    } else {
      _2400 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
    }
    _2407 = _viewPos.x + _420;
    _2409 = (_earthRadius + _421) + _viewPos.y;
    _2410 = _viewPos.z + _422;
    _2416 = sqrt(((_2407 * _2407) + (_2409 * _2409)) + (_2410 * _2410));
    _2421 = dot(float3((_2407 / _2416), (_2409 / _2416), (_2410 / _2416)), float3(_2378, _2379, _2380));
    _2427 = min(max(((_2416 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
    _2435 = max(_2427, 0.0f);
    _2442 = (-0.0f - sqrt((_2435 + (_earthRadius * 2.0f)) * _2435)) / (_2435 + _earthRadius);
    if (_2421 > _2442) {
      _2465 = ((exp2(log2(saturate((_2421 - _2442) / (1.0f - _2442))) * 0.2f) * 0.4921875f) + 0.50390625f);
    } else {
      _2465 = ((exp2(log2(saturate((_2442 - _2421) / (_2442 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
    }
    // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
    _2469 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_2427 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _2465), 0.0f);
    _2491 = ((_2469.y * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
    _2509 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _2469.x) + _2491) * -1.442695f);
    _2510 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _2469.x) + _2491) * -1.442695f);
    _2511 = exp2(((((_ozoneRatio * 2.1360002e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f)) * _2469.x) + _2491) * -1.442695f);
    _2527 = sqrt(_1322);
    _2535 = (_cloudAltitude - (max(((_2527 * _2527) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
    _2547 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_2379 > 0.0f))) - (int)((int)(uint)((int)(_2379 < 0.0f)))))) * 0.5f))) + _2535;
    if (_421 < _2535) {
      _2550 = dot(float3(0.0f, 1.0f, 0.0f), float3(_2378, _2379, _2380));
      _2556 = select((abs(_2550) < 1e-08f), 1e+08f, ((_2547 - dot(float3(0.0f, 1.0f, 0.0f), float3(_420, _421, _422))) / _2550));
      _2562 = ((_2556 * _2378) + _420);
      _2563 = _2547;
      _2564 = ((_2556 * _2380) + _422);
    } else {
      _2562 = _420;
      _2563 = _421;
      _2564 = _422;
    }
    _2584 = saturate(abs(_2379) * 4.0f);  // [sem: expr_sat]
    _2586 = (_2584 * _2584) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_2562 * 5e-05f) + 0.5f), ((_2563 - _2535) / _cloudThickness), ((_2564 * 5e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
    _2593 = ((1.0f - _2586) * saturate(((_421 - _cloudThickness) - _2535) * 0.1f)) + _2586;
    _2594 = _2593 * (((_2510 * 0.33951f) + (_2509 * 0.61312f)) + (_2511 * 0.04737f));
    _2595 = _2593 * (((_2510 * 0.91636f) + (_2509 * 0.0702f)) + (_2511 * 0.01345f));
    _2596 = _2593 * (((_2510 * 0.10958f) + (_2509 * 0.02062f)) + (_2511 * 0.8698f));
    // RenoDX: >>> [Patch: DirectLightMatrixFix] [Version: 1.16.00]
    // Description: The direct beam's atmospheric transmittance is converted to working space on the three
    //              lines above, and the game converts the result a second time here. The conversion's rows
    //              sum to one, so applying it twice keeps the overall brightness and only pulls the colour
    //              toward grey, which strips the warmth the transmittance itself carries. On uses the single
    //              conversion and keeps every other factor, including the cloud blend already folded into
    //              the inputs and the trailing sun/moon scalar, so low-sun light keeps the colour of the sky
    //              it arrives through. Off is the exact vanilla expression.
    _2612 = (DIRECT_LIGHT_MATRIX_FIX != 0.f)
                ? (_2594 * _2400)
                : ((((_2594 * 0.61312f) + (_2595 * 0.33951f)) + (_2596 * 0.04737f)) * _2400);
    _2613 = (DIRECT_LIGHT_MATRIX_FIX != 0.f)
                ? (_2595 * _2400)
                : ((((_2594 * 0.0702f) + (_2595 * 0.91636f)) + (_2596 * 0.01345f)) * _2400);
    _2614 = (DIRECT_LIGHT_MATRIX_FIX != 0.f)
                ? (_2596 * _2400)
                : ((((_2594 * 0.02062f) + (_2595 * 0.10958f)) + (_2596 * 0.8698f)) * _2400);
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
          float3(_2612, _2613, _2614), DawnDuskFactor(_sunDirection.y));
      _2612 = _rndx_dd_direct.x;
      _2613 = _rndx_dd_direct.y;
      _2614 = _rndx_dd_direct.z;
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
      bool _rndx_purkinje_is_moon = !_2366 && (_sunDirection.y <= _moonDirection.y);
      float3 _rndx_purkinje_light = ApplyPurkinjeShift(
          float3(_2612, _2613, _2614), _sunDirection.y, _rndx_purkinje_is_moon);
      _2612 = _rndx_purkinje_light.x;
      _2613 = _rndx_purkinje_light.y;
      _2614 = _rndx_purkinje_light.z;
    }
    // RenoDX: <<< [Patch: PurkinjeDirectLight]
    _2617 = float(_2327.x);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _2618 = float(_2327.y);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _2619 = float(_2327.z);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    if (!(_340) || !(((uint)_110 < (uint)20) || (_110 == 107))) {
      _2627 = (_110 == 20);
    } else {
      _2627 = true;
    }
    if (_110 == 19) {
      _2636 = true;
      _2639 = _2636;
      _2640 = (_110 == 106);
    } else {
      _2630 = (_110 == 107);
      if (!((_196 == 26) || (_1496 || (_110 == 28)))) {
        _2636 = _2630;
        _2639 = _2636;
        _2640 = (_110 == 106);
      } else {
        _2639 = _2630;
        _2640 = true;
      }
    }
    _2641 = float(_2361);
    _2642 = float(_2362);
    _2643 = float(_2363);
    if (_110 == 97) {
      _2654 = ((int)((uint)((uint)((int)(min16uint)((int)(((int)(((uint16_t)(__3__36__0__0__g_sceneDecalMask.Load(int3(_92, _94, 0)))).x)) & 2)))) >> 1) + (int)(97));
    } else {
      _2654 = _110;
    }
    _2659 = float(saturate(_194));
    _2660 = _2659 * _2659;
    _2661 = _2660 * _2660;
    _2662 = _2661 * _2661;
    _2673 = ((_2662 * _2662) * select((_305 || (_2639 || _2640)), 0.0f, 1.0f)) * (((float4)(__3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_bufferSizeAndInvSize.z * _97), (_bufferSizeAndInvSize.w * _98)), 0.0f))).y);
    _2678 = _2641 - (_2673 * _2641);
    _2679 = (_2673 * (1.0f - _2642)) + _2642;
    _2680 = _2643 - (_2673 * _2643);
    _2682 = rsqrt(dot(float3(_2678, _2679, _2680), float3(_2678, _2679, _2680)));  // [sem: invLength]
    _2683 = _2678 * _2682;
    _2684 = _2679 * _2682;
    _2685 = _2680 * _2682;
    if ((_2366) || ((!(_2366)) && (_sunDirection.y > _moonDirection.y))) {
      _2697 = _sunDirection.x;
      _2698 = _sunDirection.y;
      _2699 = _sunDirection.z;
    } else {
      _2697 = _moonDirection.x;
      _2698 = _moonDirection.y;
      _2699 = _moonDirection.z;
    }
    _2700 = _2612 * _lightingParams.x;
    _2701 = _2613 * _lightingParams.x;
    _2702 = _2614 * _lightingParams.x;
    _2703 = _2697 - _462;
    _2704 = _2698 - _464;
    _2705 = _2699 - _466;
    _2707 = rsqrt(dot(float3(_2703, _2704, _2705), float3(_2703, _2704, _2705)));  // [sem: invLength]
    _2708 = _2707 * _2703;
    _2709 = _2707 * _2704;
    _2710 = _2707 * _2705;
    _2711 = dot(float3(_2641, _2642, _2643), float3(_2697, _2698, _2699));
    _2712 = dot(float3(_2683, _2684, _2685), float3(_2697, _2698, _2699));
    _2714 = saturate(dot(float3(_2641, _2642, _2643), float3(_463, _465, _467)));  // [sem: expr_sat]
    _2716 = saturate(dot(float3(_2683, _2684, _2685), float3(_2708, _2709, _2710)));  // [sem: expr_sat]
    _2719 = saturate(dot(float3(_2697, _2698, _2699), float3(_2708, _2709, _2710)));  // [sem: expr_sat]
    _2721 = float(max(0.010002136h, _2321));
    _2722 = saturate(_2711);  // [sem: _2711_sat]
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
    float _rndx_spec_rough = _2721;
    if (SPECULAR_AA > 0.0f) {
      _rndx_spec_rough = NDFFilterRoughnessCS(float3(_2683, _2684, _2685), _2721, SPECULAR_AA);
    }
    _2723 = _rndx_spec_rough * _rndx_spec_rough;
    // RenoDX: <<< [Patch: MaterialSpecularAA]
    _2724 = _2723 * _2723;
    _2725 = 1.0f - _2724;
    _2726 = 1.0f - _2719;
    _2727 = _2726 * _2726;
    _2730 = ((_2727 * _2727) * _2726) + _2719;
    _2731 = 1.0f - _2722;
    _2732 = _2731 * _2731;
    _2737 = 1.0f - _2714;
    _2738 = _2737 * _2737;
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
      float _eon_LdotV = dot(float3(_2697, _2698, _2699), float3(_463, _465, _467));
      _2766 = _2722 * EON_DiffuseScalar(_2722, _2714, _eon_LdotV, _2721);
    } else {
      _2766 = saturate((_2722 * 0.31830987f) * ((((((1.0f - ((_2732 * _2732) * (_2731 * 0.75f))) * (1.0f - ((_2738 * _2738) * (_2737 * 0.75f)))) - _2730) * saturate((_2725 * 2.2f) + -0.5f)) + _2730) + ((exp2(-0.0f - (max(((_2725 * 73.2f) + -21.2f), 8.9f) * sqrt(_2716))) * _2719) * ((((_2725 * 34.5f) + -59.0f) * _2725) + 24.5f))));
    }
    // RenoDX: <<< [Patch: MaterialDiffuseBRDF]
    _2767 = _2654 & 126;
    bool __branch_chain_2696;
    if ((_2654 == 98) || (_2767 == 96)) {
      _2778 = true;
      __branch_chain_2696 = true;
    } else {
      if ((uint)((int)(_2654) + (int)(-105)) < (uint)2) {
        _2778 = _174;
        __branch_chain_2696 = true;
      } else {
        if (!((uint)((int)(_2654) + (int)(-11)) < (uint)9)) {
          _2778 = false;
          __branch_chain_2696 = true;
        } else {
          __branch_chain_2696 = false;
        }
      }
    }
    if (__branch_chain_2696) {
      if ((_2654 == 65) || ((_2654 == 107) || _2778)) {
        _2786 = 0.0f;
      } else {
        _2786 = float(_2320);
      }
    } else {
      _2786 = 0.0f;
    }
    _2787 = (_2654 == 52);
    _2788 = float(_2322);
    _2789 = float(_2323);
    _2790 = float(_2324);
    if (_2787) {
      _2797 = saturate(((_2789 + _2788) + _2790) * 1.2f);  // [sem: expr_sat]
    } else {
      _2797 = 1.0f;  // [sem: expr_sat]
    }
    _2803 = (0.7f / min(max(max(max(_2788, _2789), _2790), 0.01f), 0.7f)) * _2797;
    _2813 = (((_2803 * _2788) + -0.04f) * _2786) + 0.04f;
    _2814 = (((_2803 * _2789) + -0.04f) * _2786) + 0.04f;
    _2815 = (((_2803 * _2790) + -0.04f) * _2786) + 0.04f;
    _2816 = float(_2321);
    _2817 = (_2767 == 64);
    _2820 = ((((int)(uint)(_2817)) & _2013) == 0);
    if (_2820) {
      _2832 = saturate(exp2((_2816 * _2816) * (_114 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _2832 = select((_cavityParams.z > 0.0f), 0.0f, 1.0f);  // [sem: expr_sat]
    }
    _2833 = select(_2032, 1.0f, _2832);
    if (_2817) {
      _2839 = (_2833 * _2813);
      _2840 = (_2833 * _2814);
      _2841 = (_2833 * _2815);
    } else {
      _2839 = _2813;
      _2840 = _2814;
      _2841 = _2815;
    }
    _2844 = saturate(1.0f - saturate(dot(float3(_463, _465, _467), float3(_2708, _2709, _2710))));  // [sem: expr_sat]
    _2845 = _2844 * _2844;
    _2847 = (_2845 * _2845) * _2844;
    _2850 = _2847 * saturate(_2840 * 50.0f);
    _2851 = 1.0f - _2847;
    if (!_305) {
      _2859 = saturate(_2712);  // [sem: _2712_sat]
      _2860 = 1.0f - _2723;
      _2872 = (((_2724 * _2716) - _2716) * _2716) + 1.0f;
      _2876 = (_2724 / ((_2872 * _2872) * 3.1415927f)) * (0.5f / ((((_2860 * _2714) + _2723) * _2712) + (((_2860 * _2712) + _2723) * _2714)));
      _2890 = ((_2859 * _2617) * max((_2876 * ((_2851 * _2839) + _2850)), 0.0f));
      _2891 = ((_2859 * _2618) * max((_2876 * ((_2851 * _2840) + _2850)), 0.0f));
      _2892 = ((_2859 * _2619) * max((_2876 * ((_2851 * _2841) + _2850)), 0.0f));
    } else {
      _2890 = 0.0f;
      _2891 = 0.0f;
      _2892 = 0.0f;
    }
    // RenoDX: >>> [Patch: MaterialDiffraction] [Version: 1.16.00]
    // Description: Adds a wavelength-dependent tint and speckle to specular highlights on
    //              materials with a metal/specular weight, approximating the iridescence of
    //              finely structured surfaces that a single-lobe GGX cannot produce; the effect
    //              is blended by the material weight so dielectrics are unaffected. Gated by
    //              DIFFRACTION; at 0 the branch does not execute and the specular RGB is
    //              untouched.
    if (DIFFRACTION > 0.0f && _2786 > 0.0f) {
      float3 _rndx_dShift = DiffractionShiftAndSpeckleCS(
          _2716, _2714, _rndx_spec_rough,
          float2(_102, _103), _114,
          float3(_2708, _2709, _2710),
          float3(_2683, _2684, _2685),
          float3(_2788, _2789, _2790));
      float3 _rndx_dMod = lerp(1.0f, _rndx_dShift, DIFFRACTION * _2786);
      _2890 *= _rndx_dMod.x;
      _2891 *= _rndx_dMod.y;
      _2892 *= _rndx_dMod.z;
    }
    // RenoDX: <<< [Patch: MaterialDiffraction]
    // RenoDX: >>> [Patch: MaterialSmoothTerminator] [Version: 1.16.00]
    // Description: Softens the geometric shadow terminator after this branch has resolved its diffuse
    //              scalar and specular RGB. The factor is derived from the matched N.L, V.H, and N.H
    //              roles and multiplies all four resolved outputs at their shared post-branch boundary.
    //              The entire mutation is inside the SMOOTH_TERMINATOR gate; at 0 no output is written.
    if (SMOOTH_TERMINATOR > 0.0f) {
      float _rndx_c2 = CallistoSmoothTerminator(_2722, _2719, _2716, SMOOTH_TERMINATOR, 0.5f);
      _2766 *= _rndx_c2;
      _2890 *= _rndx_c2;
      _2891 *= _rndx_c2;
      _2892 *= _rndx_c2;
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
          float3(_463, _465, _467),
          float3(_2697, _2698, _2699),
          float3(_2641, _2642, _2643),
          _2711,
          float3(_2788, _2789, _2790),
          float3(_2617, _2618, _2619),
          float3(_2700, _2701, _2702),
          FOLIAGE_TRANSMISSION_THICKNESS);

      _rndx_foliageTransR = _rndx_ftResult.transmission.x;
      _rndx_foliageTransG = _rndx_ftResult.transmission.y;
      _rndx_foliageTransB = _rndx_ftResult.transmission.z;

      if (_rndx_ftResult.diffuseScale > 0.0f) {
        _2766 *= _rndx_ftResult.diffuseScale;
      } else {
        float _rndx_wrap = 0.25f * (1.0f - FOLIAGE_TRANSMISSION_THICKNESS);
        _2766 = max(0.0f, (_2711 + _rndx_wrap) / (1.0f + _rndx_wrap)) * 0.31830987334251404f * 0.75f;
      }
    }
    // RenoDX: <<< [Patch: FoliageTransmission]
    if (_2627 || (_2767 == 6)) {
      _2901 = ((max(0.0f, (0.3f - _2711)) * 0.23190688f) + _2766);
    } else {
      _2901 = _2766;
    }
    _2908 = ((_2617 * _2901) * _2700) + (_1237 * _1179);
    _2909 = ((_2618 * _2901) * _2701) + (_1238 * _1179);
    _2910 = ((_2619 * _2901) * _2702) + (_1239 * _1179);
    // RenoDX: >>> [Patch: FoliageTransmission] [Version: 1.16.00]
    // Description: Adds the gated foliage transmission accumulated above to the three clean-decompile direct-diffuse outputs after all native component equations have completed. With the feature disabled the accumulators are zero, so this insertion is exactly neutral.
    _2908 += _rndx_foliageTransR;
    _2909 += _rndx_foliageTransG;
    _2910 += _rndx_foliageTransB;
    // RenoDX: <<< [Patch: FoliageTransmission]
    _2913 = (uint)((uint)(_frameNumber.x)) * (uint)(13);
    [branch]
    if ((((int)((int)((uint)((uint)(_2913)) + (uint)((uint)(_92)))) | (int)((int)((uint)((uint)(_2913)) + (uint)((uint)(_94))))) & 31) == 0) {
      __3__38__0__1__g_sceneColorLightingOnlyForAwbUAV[int2(((int)(_92) >> 5), ((int)(_94) >> 5))] = float4((half)(half(_2908)), (half)(half(_2909)), (half)(half(_2910)), 1.0f);
    }
    _2928 = ((uint)(_2654 & 24) > (uint)23);
    if (_2820) {
      _2945 = saturate(exp2((_2816 * _2816) * (_114 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _2945 = select((_cavityParams.z > 0.0f), select(_175, 0.0f, _452), 1.0f);  // [sem: expr_sat]
    }
    _2963 = select(_2817, 1.0f, (select((_cavityParams.x == 0.0f), 1.0f, _2945) * select((_174 && _2928), (1.0f - _452), 1.0f)));
    _2967 = min(60000.0f, (_2963 * (((((_2046.x * _2039) + _2046.y) * _1991) * _2057) - min(0.0f, (-0.0f - (_2700 * _2890))))));
    _2968 = min(60000.0f, (_2963 * (((((_2046.x * _2040) + _2046.y) * _1992) * _2057) - min(0.0f, (-0.0f - (_2701 * _2891))))));
    _2969 = min(60000.0f, (_2963 * (((((_2046.x * _2041) + _2046.y) * _1993) * _2057) - min(0.0f, (-0.0f - (_2702 * _2892))))));
    _2972 = 1.0f - _renderParams.x;
    _2979 = half((_renderParams.x * _2788) + _2972);
    _2980 = half((_renderParams.x * _2789) + _2972);
    _2981 = half((_renderParams.x * _2790) + _2972);
    if (_2817 && (_renderParams2.x == 0.0f)) {
      _2997 = (half)(exp2((half)((half)(log2(_2979)) * 0.5h)));
      _2998 = (half)(exp2((half)((half)(log2(_2980)) * 0.5h)));
      _2999 = (half)(exp2((half)((half)(log2(_2981)) * 0.5h)));
    } else {
      _2997 = _2979;
      _2998 = _2980;
      _2999 = _2981;
    }
    _3000 = float(_2997);
    _3001 = float(_2998);
    _3002 = float(_2999);
    if (_2787) {
      _3009 = saturate(((_3001 + _3000) + _3002) * 1.2f);  // [sem: expr_sat]
    } else {
      _3009 = 1.0f;  // [sem: expr_sat]
    }
    _3010 = float(_2320);
    _3016 = (0.7f / min(max(max(max(_3000, _3001), _3002), 0.01f), 0.7f)) * _3009;
    _3023 = ((_3016 * _3000) + -0.04f) * _3010;
    _3024 = ((_3016 * _3001) + -0.04f) * _3010;
    _3025 = ((_3016 * _3002) + -0.04f) * _3010;
    _3026 = _3023 + 0.04f;
    _3027 = _3024 + 0.04f;
    _3028 = _3025 + 0.04f;
    _3032 = (_3026 * _2046.x) + _2046.y;
    _3033 = (_3027 * _2046.x) + _2046.y;
    _3034 = (_3028 * _2046.x) + _2046.y;
    _3036 = (1.0f - _2046.y) - _2046.x;
    _3043 = ((0.96f - _3023) * 0.04761905f) + _3026;
    _3044 = ((0.96f - _3024) * 0.04761905f) + _3027;
    _3045 = ((0.96f - _3025) * 0.04761905f) + _3028;
    _3062 = saturate(1.0f - _2325);  // [sem: expr_sat]
    _3063 = (((_3032 * _3043) / (1.0f - (_3043 * _3036))) * _3036) * _3062;
    _3064 = (((_3033 * _3044) / (1.0f - (_3044 * _3036))) * _3036) * _3062;
    _3065 = (((_3034 * _3045) / (1.0f - (_3045 * _3036))) * _3036) * _3062;
    _3076 = float(1.0h - _2320);
    _3086 = half(((_3000 * _3076) * saturate((1.0f - _3063) - _3032)) + _3063);
    _3087 = half(((_3001 * _3076) * saturate((1.0f - _3064) - _3033)) + _3064);
    _3088 = half(((_3002 * _3076) * saturate((1.0f - _3065) - _3034)) + _3065);
    _3093 = ((__3__36__0__0__g_caustic.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_102, _103), 0.0f)).x) * 0.31830987f;
    _3103 = ((_3093 * _2612) + _2908) * float(_3086);
    _3104 = ((_3093 * _2613) + _2909) * float(_3087);
    _3105 = ((_3093 * _2614) + _2910) * float(_3088);
    _3109 = _3103 + (_2967 * _3010);
    _3110 = _3104 + (_2968 * _3010);
    _3111 = _3105 + (_2969 * _3010);
    if (!(((_122 || _124) || _126) || _128)) {
      _3113 = QuadReadLaneAt(_3109, 0);
      _3114 = QuadReadLaneAt(_3110, 0);
      _3115 = QuadReadLaneAt(_3111, 0);
      _3116 = QuadReadLaneAt(_3109, 1);
      _3117 = QuadReadLaneAt(_3110, 1);
      _3118 = QuadReadLaneAt(_3111, 1);
      _3122 = QuadReadLaneAt(_3109, 2);
      _3123 = QuadReadLaneAt(_3110, 2);
      _3124 = QuadReadLaneAt(_3111, 2);
      _3128 = QuadReadLaneAt(_3109, 3);
      _3129 = QuadReadLaneAt(_3110, 3);
      _3130 = QuadReadLaneAt(_3111, 3);
      _3138 = ((((_3116 + _3113) + _3122) + _3128) * 0.25f);
      _3139 = ((((_3117 + _3114) + _3123) + _3129) * 0.25f);
      _3140 = ((((_3118 + _3115) + _3124) + _3130) * 0.25f);
    } else {
      _3138 = _3109;
      _3139 = _3110;
      _3140 = _3111;
    }
    [branch]
    if ((((int)(_94) | (int)(_92)) & 1) == 0) {
      _3145 = dot(float3(_3138, _3139, _3140), float3(0.212671f, 0.71516f, 0.072169f));
      __3__38__0__1__g_diffuseHalfPrevUAV[int2(((int)(_92) >> 1), ((int)(_94) >> 1))] = float4(min(60000.0f, _3138), min(60000.0f, _3139), min(60000.0f, _3140), min(60000.0f, select((_1042 != 0), (-0.0f - _3145), _3145)));
    }
    if (_2928) {
      _3166 = ((_2320 == 0.0h) && (((_3086 < 0.010002136h) && (_3087 < 0.010002136h)) && (_3088 < 0.010002136h)));
    } else {
      _3166 = false;
    }
    if ((_2928 || ((_2654 == 96) || ((_2654 == 53) || ((_2654 & 124) == 64)))) || ((!(_2928 || ((_2654 == 96) || ((_2654 == 53) || ((_2654 & 124) == 64))))) && ((_114 <= 10.0f) && ((uint)((int)(_2654) + (int)(-97)) < (uint)2)))) {
      __3__38__0__1__g_sceneSpecularUAV[int2(_92, _94)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _2967)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _2968)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _2969)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _2005)))))));
      _3202 = _3103;
      _3203 = _3104;
      _3204 = _3105;
    } else {
      _3202 = (_3103 + _2967);
      _3203 = (_3104 + _2968);
      _3204 = (_3105 + _2969);
    }
    _3205 = min(60000.0f, _3202);
    _3206 = min(60000.0f, _3203);
    _3207 = min(60000.0f, _3204);
    if (!_119) {
      [branch]
      if (_3166) {
        _3212 = __3__38__0__1__g_sceneColorUAV[int2(_92, _94)].x;
        _3213 = __3__38__0__1__g_sceneColorUAV[int2(_92, _94)].y;
        _3214 = __3__38__0__1__g_sceneColorUAV[int2(_92, _94)].z;
        _3219 = (_3212 + _3205);
        _3220 = (_3213 + _3206);
        _3221 = (_3214 + _3207);
      } else {
        _3219 = _3205;
        _3220 = _3206;
        _3221 = _3207;
      }
      if (!(_renderParams.y == 0.0f)) {
        _3230 = dot(float3(_3219, _3220, _3221), float3(0.212671f, 0.71516f, 0.072169f));
        _3231 = min((max(0.01f, _exposure3.w) * 4096.0f), _3230);
        _3235 = max(1e-09f, _3230);
        _3240 = ((_3231 * _3219) / _3235);
        _3241 = ((_3231 * _3220) / _3235);
        _3242 = ((_3231 * _3221) / _3235);
      } else {
        _3240 = _3219;
        _3241 = _3220;
        _3242 = _3221;
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
        float _rndx_ao = lerp(1.0f, float(_361.x), _rndx_directRatio * FOLIAGE_AO_STRENGTH);
        _3240 *= _rndx_ao;
        _3241 *= _rndx_ao;
        _3242 *= _rndx_ao;
      }
      // RenoDX: <<< [Patch: FoliageFinalAO]
      __3__38__0__1__g_sceneColorUAV[int2(_92, _94)] = float4(_3240, _3241, _3242, 1.0f);
    }
  }
}
