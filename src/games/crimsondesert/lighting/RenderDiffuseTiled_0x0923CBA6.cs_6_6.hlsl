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

Texture3D<float2> __3__36__0__0__g_hairDualScatteringLUT : register(t220, space36);

Texture2D<float4> __3__36__0__0__g_blueNoise : register(t145, space36);

Texture2D<float4> __3__36__0__0__g_bentCone : register(t68, space36);

Texture2D<float4> __3__36__0__0__g_character : register(t50, space36);

Texture2D<float4> __3__36__0__0__g_specularResult : register(t152, space36);

Texture2D<float2> __3__36__0__0__g_iblBrdfLookup : register(t154, space36);

Texture2D<float2> __3__36__0__0__g_hairBrdfLookup : register(t156, space36);

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

cbuffer __3__35__0__0__MaterialParameterPresetTableConstantBuffer : register(b40, space35) {
  struct {
    float4 _clothLightingCategory;
    float4 _clothLightingParameter[8];
    float4 _colorPresetInfo;
    uint4 _colorPresetParameter[16];
    float4 _debugOption;
  } __3__35__0__0__MaterialParameterPresetTableConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[27] : packoffset(c0);
  uint4 __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw_uint[27] : packoffset(c0);
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

SamplerState __3__40__0__0__g_samplerClamp : register(s3, space40);

SamplerState __3__40__0__0__g_samplerPoint : register(s4, space40);

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
  // RenoDX: >>> [Patch: FoliageTransmission] [Version: 1.16.00]
  // Description: Declares per-invocation foliage transmission accumulators at main-function scope before the structurally consolidated lighting branches. The hook leaves them at zero when disabled, making the later add-back exactly neutral.
  float _rndx_foliageTransR = 0.0f;
  float _rndx_foliageTransG = 0.0f;
  float _rndx_foliageTransB = 0.0f;
  // RenoDX: <<< [Patch: FoliageTransmission]
  int _72;
  int _73;
  int4 _81;
  int _91;
  int _95;
  uint _101;
  uint _103;
  float _104;
  float _105;
  float _106;
  float _107;
  float _111;
  float _112;
  float _114;
  uint2 _117;
  int _119;
  float _122;
  float _123;
  bool _128;
  float _129;
  float _130;
  bool _131;
  float _132;
  bool _133;
  float _134;
  bool _135;
  float _136;
  bool _137;
  half _278;
  half _279;
  half _280;
  half _281;
  half _282;
  half _283;
  half _321;
  half _322;
  half _323;
  half _324;
  float _349;
  float _350;
  float _351;
  bool _367;
  float _447;
  float _448;
  float _449;
  float _450;
  float _484;
  float _485;
  float _486;
  float _487;
  int _493;
  half _494;
  float _495;
  float _496;
  float _497;
  float _498;
  float _527;
  half _528;
  float _530;
  float _556;
  float _557;
  float _564;
  half _565;
  float _566;
  float _567;
  float _568;
  float _574;
  half _575;
  float _576;
  float _577;
  float _578;
  half _603;
  float _620;
  float _984;
  half _985;
  float _986;
  float _987;
  float _988;
  int _989;
  float _990;
  float _991;
  float _992;
  bool _1014;
  bool _1017;
  bool _1018;
  float _1036;
  float _1047;
  float _1048;
  half _1058;
  half _1059;
  half _1060;
  half _1061;
  half _1062;
  float _1063;
  float _1064;
  float _1076;
  bool _1099;
  float _1108;
  float _1149;
  float _1150;
  float _1241;
  float _1319;
  float _1480;
  float _1481;
  float _1482;
  float _1483;
  float _1646;
  int _1647;
  float _1704;
  float _1743;
  float _1830;
  float _1831;
  float _1832;
  float _1833;
  float _1835;
  float _1836;
  float _1837;
  float _1838;
  float _1842;
  float _1843;
  float _1844;
  float _1845;
  float _1846;
  float _1871;
  half _1897;
  bool _1909;
  half _1952;
  int _1953;
  float _1954;
  float _1955;
  float _1956;
  float _2093;
  float _2146;
  float _2165;
  float _2169;
  half _2193;
  half _2196;
  half _2197;
  float _2303;
  float _2351;
  float _2366;
  float _2469;
  int _2470;
  int _2471;
  float _2472;
  float _2473;
  float _2474;
  float _2475;
  float _2633;
  float _2634;
  float _2635;
  float _2636;
  float _2701;
  float _2714;
  float _2715;
  float _2716;
  float _2770;
  float _2771;
  float _2835;
  float _2836;
  float _2837;
  float _2906;
  float _2907;
  float _2908;
  float _2923;
  float _2924;
  float _2925;
  float _2926;
  float _2927;
  bool _2989;
  bool _2990;
  float _3026;
  float _3027;
  float _3028;
  float _3029;
  float _3095;
  float _3098;
  float _3099;
  float _3100;
  float _3101;
  float _3136;
  float _3137;
  float _3138;
  float _3153;
  float _3182;
  float _3183;
  float _3184;
  float _3185;
  float _3186;
  half _3193;
  half _3194;
  half _3195;
  half _3196;
  half _3197;
  float _3198;
  float _3204;
  half _3205;
  half _3206;
  half _3207;
  half _3208;
  half _3209;
  float _3210;
  float _3211;
  float _3212;
  float _3213;
  float _3214;
  float _3215;
  half _3252;
  half _3253;
  half _3254;
  float _3269;
  float _3270;
  float _3271;
  float _3291;
  float _3356;
  float _3454;
  float _3455;
  float _3456;
  bool _3524;
  bool _3545;
  bool _3547;
  bool _3548;
  float _3565;
  int _3566;
  float _3567;
  float _3568;
  float _3569;
  float _3570;
  float _3614;
  float _3651;
  float _3658;
  float _3659;
  float _3660;
  bool _3684;
  bool _3687;
  bool _3688;
  float _3705;
  float _3706;
  float _3707;
  float _3747;
  float _4015;
  float _4016;
  float _4017;
  float _4018;
  float _4019;
  float _4020;
  float _4021;
  float _4022;
  float _4023;
  float _4195;
  float _4196;
  float _4197;
  float _4198;
  float _4199;
  float _4200;
  float _4201;
  float _4202;
  float _4203;
  float _4293;
  float _4294;
  float _4295;
  float _4334;
  float _4335;
  float _4336;
  float _4339;
  float _4340;
  float _4341;
  float _4369;
  float _4370;
  float _4371;
  float _4372;
  float _4373;
  float _4374;
  float _4440;
  float _4441;
  float _4442;
  float _4443;
  float _4444;
  float _4445;
  float _4446;
  float _4447;
  float _4479;
  float _4480;
  float _4481;
  float _4482;
  float _4483;
  float _4484;
  float _4485;
  float _4486;
  float _4487;
  float _4488;
  float _4489;
  float _4501;
  float _4502;
  float _4503;
  float _4806;
  float _4822;
  float _4823;
  float _4824;
  float _4825;
  float _4826;
  float _4827;
  float _4828;
  float _4829;
  float _4830;
  float _4841;
  float _4842;
  float _4843;
  float _4855;
  float _4856;
  float _4857;
  float _4858;
  float _4859;
  float _4860;
  float _4861;
  float _4862;
  float _4863;
  float _4864;
  float _4865;
  float _4866;
  float _4868;
  float _4869;
  float _4870;
  float _4871;
  float _4872;
  float _4873;
  float _4874;
  float _4875;
  float _4876;
  float _4877;
  float _4878;
  float _4879;
  float _4893;
  float _4894;
  float _5009;
  float _5010;
  float _5011;
  float _5012;
  float _5013;
  float _5014;
  float _5015;
  float _5016;
  float _5017;
  float _5061;
  half _5110;
  half _5111;
  half _5112;
  float _5127;
  float _5162;
  float _5163;
  float _5256;
  float _5257;
  float _5258;
  float _5328;
  float _5329;
  float _5330;
  float _5363;
  float _5364;
  float _5365;
  bool _5391;
  float _5424;
  float _5425;
  float _5426;
  float _5446;
  float _5447;
  float _5448;
  float _5463;
  float _5464;
  float _5465;
  float _5484;
  float _5485;
  float _5486;
  uint4 _146;
  float4 _152;
  half _161;
  half _165;
  half _170;
  half _175;
  half _179;
  uint _182;
  bool _183;
  bool _184;
  float _194;
  float _195;
  float _196;
  float _198;
  half _202;
  half _203;
  half _204;
  int _205;
  half _223;
  half _224;
  float _229;
  float _230;
  float _234;
  float _236;
  float _243;
  float _244;
  float _245;
  float _247;
  float _250;
  float _251;
  float _252;
  float _253;
  float _260;
  float _261;
  float _262;
  half _285;
  half _289;
  half _290;
  half _291;
  half _307;
  half _308;
  half _309;
  half4 _326;
  float _330;
  float _331;
  float _332;
  bool _335;
  half4 _338;
  float4 _353;
  bool _375;
  float _376;
  float _377;
  float _378;
  float _380;
  float _382;
  float _418;
  float _419;
  float _420;
  float _421;
  float _423;
  float _424;
  float _425;
  float _426;
  bool _429;
  bool _430;
  bool _432;
  bool _436;
  float4 _441;
  uint _469;
  int _471;
  float4 _478;
  bool _502;
  float _509;
  float _540;
  float _541;
  float _543;
  float _544;
  float _545;
  float _559;
  float4 _580;
  float _587;
  float _588;
  float _589;
  float _591;
  float _592;
  float _593;
  float _594;
  float _604;
  float _621;
  float _622;
  float _623;
  float _624;
  float _625;
  float _626;
  float _627;
  float _628;
  float _634;
  float _638;
  float _639;
  float _640;
  float _644;
  float _645;
  float _646;
  float _653;
  float _663;
  float _664;
  float _665;
  float _666;
  float _667;
  float _668;
  float _677;
  float _682;
  float _688;
  float _689;
  float _693;
  float _694;
  float _699;
  float _700;
  float _701;
  float _702;
  float _714;
  float _718;
  float _728;
  float _729;
  float _733;
  float _735;
  float _736;
  float _749;
  float _759;
  float _760;
  float _761;
  float _770;
  float2 _779;
  float2 _782;
  float2 _785;
  float _792;
  float _793;
  float _794;
  float _795;
  float _796;
  float _797;
  float _798;
  float _799;
  float _800;
  float _801;
  float _802;
  float _803;
  float _804;
  float _805;
  float _806;
  float _807;
  float _808;
  float _809;
  float _819;
  float _820;
  float _821;
  float _822;
  float _823;
  float _824;
  float _832;
  float _833;
  float _834;
  float _835;
  float _837;
  float _838;
  float _839;
  float _840;
  float _841;
  float _842;
  float _845;
  float _846;
  float _847;
  float _857;
  float _880;
  float _884;
  float _888;
  float _906;
  float _913;
  float _914;
  float _915;
  float _924;
  float _931;
  float _938;
  float _966;
  float _967;
  float _968;
  float _969;
  float _970;
  float _999;
  float _1000;
  float _1001;
  half2 _1003;
  bool _1011;
  bool _1023;
  bool _1024;
  float _1027;
  bool _1029;
  bool _1031;
  uint _1038;
  half _1049;
  bool _1053;
  int _1065;
  bool _1066;
  bool _1067;
  bool _1068;
  float _1069;
  float _1070;
  float _1071;
  float _1072;
  float _1077;
  int _1078;
  bool _1079;
  float _1136;
  float2 _1143;
  float _1154;
  float _1157;
  float _1158;
  float _1166;
  float _1172;
  float _1173;
  int _1176;
  int _1177;
  float _1178;
  float _1179;
  float _1184;
  float _1185;
  int4 _1188;
  int _1211;
  float _1249;
  float _1250;
  float _1251;
  float _1252;
  float _1256;
  float _1273;
  float _1274;
  float _1277;
  bool _1292;
  float _1294;
  float _1296;
  bool _1300;
  float _1327;
  float _1332;
  float _1333;
  float _1334;
  float _1335;
  float _1336;
  float _1337;
  float _1338;
  float _1339;
  float _1341;
  float _1354;
  float _1355;
  float _1356;
  float _1357;
  int _1359;
  int _1360;
  int _1361;
  int _1362;
  bool _1384;
  bool _1388;
  bool _1392;
  bool _1396;
  bool _1409;
  bool _1411;
  bool _1420;
  bool _1442;
  int4 _1485;
  float _1504;
  float _1505;
  float _1506;
  float _1508;
  float _1513;
  float _1528;
  float _1529;
  float _1530;
  float _1532;
  float _1537;
  float _1552;
  float _1553;
  float _1554;
  float _1556;
  float _1561;
  float _1576;
  float _1577;
  float _1578;
  float _1580;
  float _1585;
  float _1588;
  float _1605;
  float _1606;
  float _1607;
  float _1608;
  float _1613;
  float _1615;
  float _1617;
  float _1619;
  float _1621;
  float _1622;
  float _1623;
  float _1624;
  int _1627;
  int _1628;
  int _1636;
  int _1638;
  float _1657;
  uint _1658;
  half4 _1660;
  uint _1665;
  half4 _1666;
  half4 _1671;
  half4 _1676;
  float _1681;
  float _1690;
  float _1695;
  float _1708;
  bool _1709;
  float _1710;
  float _1712;
  float4 _1715;
  float _1720;
  float _1722;
  float _1724;
  float _1725;
  float _1726;
  float _1727;
  float _1785;
  float _1802;
  float _1803;
  float _1804;
  float _1809;
  float _1825;
  float _1853;
  float _1854;
  float _1855;
  float _1862;
  float _1863;
  float _1864;
  float _1872;
  float _1878;
  float _1888;
  float _1889;
  float _1890;
  float _1892;
  float _1898;
  bool _1901;
  bool _1911;
  half _1914;
  uint _1937;
  int _1939;
  float4 _1946;
  float _1958;
  float _1962;
  float _1963;
  float _1964;
  float _1970;
  float _1978;
  float _1980;
  float _1982;
  float _1986;
  float _1996;
  float _1997;
  float _1998;
  float _1999;
  float _2004;
  float _2009;
  float _2011;
  float _2013;
  float _2037;
  float _2041;
  float _2045;
  float _2049;
  float _2079;
  float _2084;
  float _2085;
  int _2097;
  bool _2100;
  float _2102;
  float _2106;
  float _2111;
  float _2137;
  float _2148;
  float _2154;
  float _2176;
  half _2182;
  half _2188;
  float _2198;
  float _2199;
  float _2200;
  float _2213;
  float _2214;
  float _2215;
  float _2216;
  float _2256;
  float _2261;
  float _2262;
  float _2263;
  float _2264;
  float _2274;
  float _2277;
  float _2293;
  float _2331;
  float _2334;
  float _2335;
  float _2336;
  float _2337;
  float _2367;
  bool _2369;
  float _2380;
  float _2381;
  int _2384;
  int _2385;
  float _2386;
  float _2387;
  int4 _2397;
  int _2404;
  float _2433;
  float _2434;
  float _2435;
  float _2436;
  float _2452;
  float _2453;
  float _2454;
  float _2455;
  bool _2476;
  uint _2477;
  half4 _2479;
  float _2492;
  uint _2498;
  half4 _2499;
  float _2512;
  half4 _2522;
  float _2535;
  half4 _2545;
  float _2558;
  float _2582;
  float _2584;
  float _2586;
  float _2588;
  float _2589;
  float _2598;
  float _2605;
  float _2612;
  float _2637;
  float _2638;
  float _2639;
  float _2652;
  float _2662;
  float _2663;
  float _2664;
  float _2676;
  float _2681;
  bool _2682;
  int _2684;
  bool _2704;
  float _2705;
  float _2706;
  float _2707;
  float _2708;
  float _2718;
  float _2719;
  float _2720;
  bool _2722;
  float _2723;
  float _2724;
  float _2725;
  float2 _2740;
  float2 _2746;
  float _2753;
  float _2754;
  float _2756;
  float _2764;
  float _2766;
  float _2773;
  float _2776;
  float _2777;
  float _2779;
  float _2787;
  float _2788;
  float _2789;
  float4 _2794;
  float _2798;
  float _2799;
  float _2800;
  float _2802;
  float _2806;
  float _2807;
  float _2808;
  float _2810;
  float2 _2823;
  float _2830;
  float _2843;
  float2 _2848;
  float2 _2853;
  float _2857;
  float _2859;
  float _2876;
  float _2880;
  float _2881;
  float _2882;
  float _2889;
  float2 _2913;
  float _2930;
  float _2937;
  float _2938;
  float _2939;
  float _2960;
  float4 _2970;
  bool _3000;
  float4 _3020;
  float _3036;
  float _3039;
  float _3052;
  float _3053;
  float _3054;
  float _3059;
  float _3064;
  float _3075;
  float _3093;
  float _3105;
  bool _3106;
  float _3109;
  float _3154;
  float _3155;
  float _3156;
  float _3161;
  float _3164;
  float _3171;
  float _3172;
  half4 _3217;
  uint _3224;
  float _3240;
  float _3241;
  float _3242;
  float _3244;
  bool _3257;
  float _3298;
  float _3299;
  float _3300;
  float _3301;
  float _3307;
  float _3312;
  float _3318;
  float _3326;
  float _3333;
  float2 _3361;
  float _3383;
  float _3401;
  float _3402;
  float _3403;
  float _3419;
  float _3427;
  float _3439;
  float _3442;
  float _3448;
  float _3476;
  float _3478;
  float _3485;
  float _3486;
  float _3487;
  float _3488;
  float _3504;
  float _3505;
  float _3506;
  float _3512;
  float _3513;
  float _3514;
  float _3515;
  float _3516;
  float _3517;
  float _3518;
  float _3526;
  float _3527;
  bool _3530;
  bool _3533;
  bool _3542;
  float _3549;
  float _3550;
  float _3551;
  uint16_t _3553;
  float _3575;
  float _3576;
  float _3577;
  float _3578;
  float _3589;
  float _3594;
  float _3595;
  float _3596;
  float _3598;
  float _3599;
  float _3600;
  float _3601;
  bool _3604;
  float _3606;
  bool _3607;
  float _3620;
  float _3630;
  float _3631;
  float _3632;
  float _3633;
  int _3634;
  bool _3635;
  bool _3638;
  float _3652;
  float _3661;
  float _3662;
  bool _3664;
  float _3666;
  float _3667;
  float _3668;
  bool _3670;
  float _3693;
  float _3708;
  float _3709;
  float _3710;
  float _3711;
  float _3712;
  float _3713;
  float _3715;
  float _3716;
  float _3717;
  float _3718;
  float _3719;
  float _3720;
  float _3722;
  float _3724;
  float _3725;
  float _3727;
  bool _3728;
  bool _3729;
  bool _3730;
  float _3762;
  float _3766;
  float4 _3771;
  float _3775;
  float _3776;
  float _3777;
  float _3778;
  float _3789;
  float _3790;
  float _3796;
  float _3800;
  float _3801;
  float _3802;
  float _3806;
  float _3807;
  float _3808;
  float _3815;
  float _3819;
  float _3826;
  float _3827;
  float _3828;
  float _3829;
  float _3830;
  float _3831;
  float _3833;
  float _3847;
  float _3848;
  float _3855;
  float _3864;
  float _3869;
  float _3875;
  float _3876;
  float _3880;
  float _3881;
  float _3886;
  float _3887;
  float _3888;
  float _3889;
  float _3901;
  float _3905;
  float _3915;
  float _3916;
  float _3920;
  float _3922;
  float _3923;
  float _3936;
  float _3943;
  float _3944;
  float _3954;
  float _3965;
  float _3970;
  float _3989;
  float _3991;
  float _3993;
  float _3995;
  float _4002;
  float _4003;
  float _4004;
  float _4011;
  float _4012;
  float _4013;
  bool _4025;
  bool _4026;
  bool _4027;
  float _4042;
  float _4048;
  float _4049;
  float _4050;
  float _4051;
  float _4052;
  float _4053;
  float _4054;
  float _4061;
  float _4074;
  float _4077;
  float _4078;
  float _4080;
  float _4083;
  float _4084;
  float _4085;
  float _4089;
  float _4090;
  float _4091;
  float _4092;
  float _4093;
  float _4094;
  float _4106;
  float _4110;
  float _4114;
  float _4115;
  float _4116;
  float _4117;
  float _4129;
  float _4133;
  float _4149;
  float _4154;
  float _4155;
  float _4165;
  float _4190;
  float _4206;
  float _4207;
  float _4208;
  float _4209;
  float _4212;
  float _4213;
  float _4214;
  float _4219;
  float _4220;
  float _4247;
  float _4250;
  float _4251;
  float _4253;
  float _4256;
  float _4257;
  float _4261;
  float _4262;
  float _4263;
  float _4265;
  float _4266;
  float _4278;
  float _4282;
  float _4303;
  float _4315;
  float _4319;
  float _4326;
  float _4346;
  float _4355;
  float _4377;
  float _4381;
  float _4382;
  float _4383;
  float _4384;
  float _4385;
  float _4386;
  float _4388;
  float _4389;
  float _4390;
  float _4391;
  float _4392;
  float _4393;
  float _4394;
  float _4396;
  float _4398;
  float _4400;
  float _4411;
  float _4414;
  float _4469;
  float _4470;
  float _4471;
  float _4493;
  float _4505;
  float _4509;
  float _4510;
  float _4512;
  float _4517;
  float _4525;
  float _4531;
  float _4533;
  float _4538;
  float _4553;
  float _4563;
  float _4566;
  float _4573;
  float _4574;
  float _4575;
  float _4581;
  float2 _4590;
  float2 _4593;
  float2 _4596;
  float _4605;
  float _4606;
  float _4607;
  float _4608;
  float _4609;
  float _4610;
  float _4611;
  float _4612;
  float _4613;
  float _4614;
  float _4615;
  float _4616;
  float _4617;
  float _4618;
  float _4619;
  float _4620;
  float _4621;
  float _4622;
  float _4632;
  float _4633;
  float _4634;
  float _4635;
  float _4636;
  float _4637;
  float _4645;
  float _4646;
  float _4647;
  float _4648;
  float _4650;
  float _4651;
  float _4652;
  float _4653;
  float _4654;
  float _4655;
  float _4659;
  float _4660;
  float _4670;
  float _4693;
  float _4697;
  float _4701;
  float _4719;
  float _4726;
  float _4727;
  float _4728;
  float _4732;
  float _4739;
  float _4746;
  float _4754;
  float _4775;
  float _4807;
  float _4817;
  float _4844;
  float _4845;
  float _4846;
  float _4848;
  float _4850;
  float _4852;
  float _4887;
  float _4889;
  float _4896;
  float _4899;
  float _4900;
  float _4902;
  float4 _4910;
  float _4914;
  float _4915;
  float _4916;
  float _4918;
  float _4922;
  float _4923;
  float _4924;
  float _4926;
  float _4927;
  float _4928;
  float _4929;
  float _4941;
  float _4942;
  float _4945;
  float _4946;
  float _4960;
  float _4962;
  float _4964;
  float _4965;
  float _4967;
  float _4983;
  float _4990;
  float _4995;
  float _5024;
  float _5025;
  float _5026;
  uint _5029;
  bool _5044;
  float _5076;
  float _5080;
  float _5081;
  float _5082;
  float _5085;
  half _5092;
  half _5093;
  half _5094;
  half _5117;
  float _5118;
  float _5119;
  float _5120;
  float _5128;
  float _5134;
  float _5141;
  float _5142;
  float _5143;
  float _5144;
  float _5145;
  float _5146;
  float2 _5158;
  float _5167;
  float _5168;
  float _5169;
  float _5171;
  float _5178;
  float _5179;
  float _5180;
  float _5197;
  float _5198;
  float _5199;
  float _5200;
  float _5211;
  half _5221;
  half _5222;
  half _5223;
  float _5225;
  float _5226;
  float _5227;
  float _5231;
  float _5239;
  float _5263;
  float _5273;
  float _5274;
  float _5275;
  float _5304;
  float _5305;
  float _5306;
  float _5307;
  float _5320;
  float _5321;
  float _5322;
  float _5334;
  float _5335;
  float _5336;
  float _5338;
  float _5339;
  float _5340;
  float _5341;
  float _5342;
  float _5343;
  float _5347;
  float _5348;
  float _5349;
  float _5353;
  float _5354;
  float _5355;
  float _5370;
  float _5431;
  float _5435;
  float _5449;
  float _5450;
  float _5451;
  float _5456;
  float _5457;
  float _5458;
  float _5474;
  float _5475;
  float _5479;
  int _58[4];
  _72 = (int)(SV_GroupID.x) & 15;
  _73 = (uint)((uint)(_72)) >> 2;
  _81 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _58[0] = _81.x;
  _58[1] = _81.y;
  _58[2] = _81.z;
  _58[3] = _81.w;
  _91 = _58[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _95 = select((((int)(SV_GroupID.x) & 16) == 0), _91, ((uint)((uint)(_91)) >> 16));
  _101 = (uint)((uint)((uint)((int)((int)(_72) - (int)((int)(_73) << 2)) << 3)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_95)) << 5)) & 8160));
  _103 = (uint)((uint)((uint)((int)(_73) << 3)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_95)) >> 3) & 8160));
  _104 = (float)((uint)((uint)(_101)));
  _105 = (float)((uint)((uint)(_103)));
  _106 = _104 + 0.5f;
  _107 = _105 + 0.5f;
  _111 = _bufferSizeAndInvSize.z * _106;
  _112 = _107 * _bufferSizeAndInvSize.w;
  _114 = __3__36__0__0__g_depth.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_depth_load]
  _117 = __3__36__0__0__g_stencil.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_stencil_load]
  _119 = _117.x & 127;  // [sem: _3__36__0__0__g_stencil_load_derived]
  _122 = max(1e-07f, _114.x);  // [sem: _3__36__0__0__g_depth_load_derived]
  _123 = _nearFarProj.x / _122;
  _128 = ((_114.x < 1e-07f) || (_114.x == 1.0f)) || (_119 == 10);
  _129 = (float)((bool)(_128));
  _130 = QuadReadLaneAt(_129, 0);
  _131 = !(_130 == 0.0f);
  _132 = QuadReadLaneAt(_129, 1);
  _133 = !(_132 == 0.0f);
  _134 = QuadReadLaneAt(_129, 2);
  _135 = !(_134 == 0.0f);
  _136 = QuadReadLaneAt(_129, 3);
  _137 = !(_136 == 0.0f);
  if (!(((_131 && _133) && _135) && _137)) {
    _146 = __3__36__0__0__g_baseColor.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_baseColor_load]
    _152 = __3__36__0__0__g_normal.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_normal_load]
    _161 = half(((float)((uint)((uint)(((uint)((uint)(_146.x)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _165 = half(((float)((uint)((uint)(_146.x & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _170 = half(((float)((uint)((uint)(((uint)((uint)(_146.y)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _175 = half(((float)((uint)((uint)(((uint)((uint)(_146.w)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _179 = half(((float)((uint)((uint)(_146.w & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _182 = (uint)((_152.w * 3.0f) + 0.5f);  // [sem: _3__36__0__0__g_normal_load_derived]
    _183 = (_182 == 1);
    _184 = (_182 == 3);
    _194 = (saturate(_152.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _195 = (saturate(_152.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _196 = (saturate(_152.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _198 = rsqrt(dot(float3(_194, _195, _196), float3(_194, _195, _196)));  // [sem: invLength]
    _202 = half(_198 * _194);
    _203 = half(_198 * _195);
    _204 = half(_196 * _198);
    _205 = _117.x & 126;  // [sem: _3__36__0__0__g_stencil_load_derived]
    if (!(_205 == 24)) {
      _223 = ((half)(_175 * 2.0h)) + -1.0h;
      _224 = ((half)(_179 * 2.0h)) + -1.0h;
      _229 = float(_223 + _224) * 0.5f;
      _230 = float(_223 - _224) * 0.5f;
      _234 = (1.0f - abs(_229)) - abs(_230);
      _236 = rsqrt(dot(float3(_229, _230, _234), float3(_229, _230, _234)));  // [sem: invLength]
      _243 = float(_202);
      _244 = float(_203);
      _245 = float(_204);
      _247 = select((_204 >= 0.0h), 1.0f, -1.0f);
      _250 = -0.0f - (1.0f / (_247 + _245));
      _251 = _244 * _250;
      _252 = _251 * _243;
      _253 = _247 * _243;
      _260 = float(half(_236 * _229));
      _261 = float(half(_236 * _230));
      _262 = float(half(_236 * _234));
      _278 = (half)(half(((float)((uint)((uint)(_146.z & 255)))) * 0.003921569f));
      _279 = (half)(half(((float)((uint)((uint)(_146.y & 255)))) * 0.003921569f));  // [sem: _3__36__0__0__g_baseColor_load_derived]
      _280 = (half)(half(((float)((uint)((uint)(((uint)((uint)(_146.z)) >> 8) & 255)))) * 0.003921569f));
      _281 = (half)(half(mad(_262, _243, mad(_261, _252, (_260 * (((_253 * _243) * _250) + 1.0f))))));
      _282 = (half)(half(mad(_262, _244, mad(_261, ((_251 * _244) + _247), ((_260 * _247) * _252)))));
      _283 = (half)(half(mad(_262, _245, mad(_261, (-0.0f - _244), (-0.0f - (_253 * _260))))));
    } else {
      _278 = _179;
      _279 = 0.0h;  // [sem: _3__36__0__0__g_baseColor_load_derived]
      _280 = _175;
      _281 = _202;
      _282 = _203;
      _283 = _204;
    }
    _285 = rsqrt((half)(dot(half3(_281, _282, _283), half3(_281, _282, _283))));  // [sem: invLength]
    _289 = saturate((half)(_161 * _161));  // [sem: expr_sat]
    _290 = saturate((half)(_165 * _165));  // [sem: expr_sat]
    _291 = saturate((half)(_170 * _170));  // [sem: expr_sat]
    // [sem: expr_sat]
    _307 = saturate((half)(((half)(((half)(_290 * 0.3395996h)) + ((half)(_289 * 0.61328125h)))) + ((half)(_291 * 0.04736328h))));
    // [sem: expr_sat]
    _308 = saturate((half)(((half)(((half)(_290 * 0.9165039h)) + ((half)(_289 * 0.07019043h)))) + ((half)(_291 * 0.013450623h))));
    // [sem: expr_sat]
    _309 = saturate((half)(((half)(((half)(_290 * 0.109558105h)) + ((half)(_289 * 0.020614624h)))) + ((half)(_291 * 0.8696289h))));
    if (!((uint)((int)(_119) + (int)(-65)) < (uint)2)) {
      _321 = ((half)(_285 * _281));
      _322 = ((half)(_285 * _282));
      _323 = ((half)(_285 * _283));
      _324 = (half)(select(((_119 == 24) || (_119 == 29)), 0.0f, _279));
    } else {
      _321 = _202;
      _322 = _203;
      _323 = _204;
      _324 = _279;
    }
    half4 _326 = __3__36__0__0__g_diffuseResult.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _330 = float(_326.x);  // [sem: _3__36__0__0__g_diffuseResult_load_derived]
    _331 = float(_326.y);  // [sem: _3__36__0__0__g_diffuseResult_load_derived]
    _332 = float(_326.z);  // [sem: _3__36__0__0__g_diffuseResult_load_derived]
    _335 = (_renderParams2.y > 0.0f);
    [branch]
    if (_335) {
      half4 _338 = __3__36__0__0__g_sceneDiffuse.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_sceneDiffuse_load]
      _349 = (float(_338.x) + _330);
      _350 = (float(_338.y) + _331);
      _351 = (float(_338.z) + _332);
    } else {
      _349 = _330;
      _350 = _331;
      _351 = _332;
    }
    _353 = __3__36__0__0__g_specularResult.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    if ((uint)_119 > (uint)11) {
      if (!(((uint)_119 < (uint)21) || (_119 == 107))) {
        _367 = (_119 == 7);
      } else {
        _367 = true;
      }
    } else {
      if (!(_119 == 6)) {
        _367 = (_119 == 7);
      } else {
        _367 = true;
      }
    }
    _375 = ((uint)((int)(_119) + (int)(-27)) < (uint)2) || ((_119 == 26) || (((uint)((int)(_119) + (int)(-105)) < (uint)2) || _184));
    _376 = float(_321);
    _377 = float(_322);
    _378 = float(_323);
    _380 = (_111 * 2.0f) + -1.0f;
    _382 = 1.0f - (_112 * 2.0f);
    _418 = mad((_invViewProjRelative[3].z), _122, mad((_invViewProjRelative[3].y), _382, ((_invViewProjRelative[3].x) * _380))) + (_invViewProjRelative[3].w);
    _419 = (mad((_invViewProjRelative[0].z), _122, mad((_invViewProjRelative[0].y), _382, ((_invViewProjRelative[0].x) * _380))) + (_invViewProjRelative[0].w)) / _418;
    _420 = (mad((_invViewProjRelative[1].z), _122, mad((_invViewProjRelative[1].y), _382, ((_invViewProjRelative[1].x) * _380))) + (_invViewProjRelative[1].w)) / _418;
    _421 = (mad((_invViewProjRelative[2].z), _122, mad((_invViewProjRelative[2].y), _382, ((_invViewProjRelative[2].x) * _380))) + (_invViewProjRelative[2].w)) / _418;
    _423 = rsqrt(dot(float3(_419, _420, _421), float3(_419, _420, _421)));  // [sem: invLength]
    _424 = _423 * _419;
    _425 = _423 * _420;
    _426 = _423 * _421;
    _429 = (_205 == 66) || (_119 == 53);
    _430 = (_119 == 33);
    _432 = (_119 == 54);
    _436 = (_119 == 55);
    if (((_205 == 64) || (_432 || (_430 || _429))) || (_436 || _375)) {
      _441 = __3__36__0__0__g_character.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_character_load]
      _447 = _441.x;  // [sem: _3__36__0__0__g_character_load_derived]
      _448 = _441.y;  // [sem: _3__36__0__0__g_character_load_derived]
      _449 = _441.z;  // [sem: _3__36__0__0__g_character_load_derived]
      _450 = _441.w;  // [sem: _3__36__0__0__g_character_load_derived]
    } else {
      _447 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _448 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _449 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _450 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
    }
    if (!_430) {
      if (_432) {
        if ((((int)((uint)((_449 * 255.0f) + 0.5f))) & 112) == 0) {
          _493 = 52;
          _494 = _324;
          _495 = 0.0f;
          _496 = 0.0f;
          _497 = 0.0f;
          _498 = 0.0f;
        } else {
          _469 = (uint)((_449 * 255.0f) + 0.5f);
          _471 = ((uint)((uint)(_469)) >> 4) & 7;
          if (!(_471 == 0)) {
            _478 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_471) + (int)(1)))];
            _484 = min((1.0f - _478.y), _478.x);
            _485 = (((float)((uint)((uint)(_469 & 15)))) * 0.06666667f);
            _486 = _478.y;
            _487 = _478.x;
          } else {
            _484 = 0.0f;
            _485 = 0.0f;
            _486 = 0.0f;
            _487 = 0.0f;
          }
          _493 = _119;
          _494 = (half)(half(_effectiveMetallicForVelvet * _487));
          _495 = _484;
          _496 = _485;
          _497 = _486;
          _498 = _487;
        }
      } else {
        if (_436) {
          if ((((int)((uint)((_449 * 255.0f) + 0.5f))) & 127) == 0) {
            _493 = 52;
            _494 = _324;
            _495 = 0.0f;
            _496 = 0.0f;
            _497 = 0.0f;
            _498 = 0.0f;
          } else {
            _493 = 55;
            _494 = _324;
            _495 = 0.0f;
            _496 = 0.0f;
            _497 = 0.0f;
            _498 = 0.0f;
          }
        } else {
          _493 = _119;
          _494 = _324;
          _495 = 0.0f;
          _496 = 0.0f;
          _497 = 0.0f;
          _498 = 0.0f;
        }
      }
    } else {
      _469 = (uint)((_449 * 255.0f) + 0.5f);
      _471 = ((uint)((uint)(_469)) >> 4) & 7;
      if (!(_471 == 0)) {
        _478 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_471) + (int)(1)))];
        _484 = min((1.0f - _478.y), _478.x);
        _485 = (((float)((uint)((uint)(_469 & 15)))) * 0.06666667f);
        _486 = _478.y;
        _487 = _478.x;
      } else {
        _484 = 0.0f;
        _485 = 0.0f;
        _486 = 0.0f;
        _487 = 0.0f;
      }
      _493 = _119;
      _494 = (half)(half(_effectiveMetallicForVelvet * _487));
      _495 = _484;
      _496 = _485;
      _497 = _486;
      _498 = _487;
    }
    if (_493 == 66) {
      _530 = float(_494);
      _564 = _530;
      _565 = 0.0h;
      _566 = ((_447 * 2.0f) + -1.0f);
      _567 = ((_448 * 2.0f) + -1.0f);
      _568 = ((_449 * 2.0f) + -1.0f);
      if ((_493 == 53) || ((_493 & 126) == 66)) {
        _574 = _564;
        _575 = _565;
        _576 = _566;
        _577 = _567;
        _578 = _568;
        _580 = __3__36__0__0__g_bentCone.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_bentCone_load]
        _587 = (_580.x * 2.0f) + -1.0f;
        _588 = (_580.y * 2.0f) + -1.0f;
        _589 = (_580.z * 2.0f) + -1.0f;
        _591 = rsqrt(dot(float3(_587, _588, _589), float3(_587, _588, _589)));  // [sem: invLength]
        _592 = _587 * _591;
        _593 = _588 * _591;
        _594 = _589 * _591;
        if (!((_renderParams.z > 0.0f) || _335)) {
          _603 = (half)(saturate((half)(_280 + 0.15002441h)));
        } else {
          _603 = _280;
        }
        _604 = float(_603);
        if (_493 == 53) {
          _620 = (((asfloat(_globalLightParams.z) * _604) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
        } else {
          _620 = _bevelParams.y;
        }
        _621 = float(_307);
        _622 = float(_308);
        _623 = float(_309);
        _624 = dot(float3(_576, _577, _578), float3(_592, _593, _594));
        _625 = -0.0f - _424;
        _626 = -0.0f - _425;
        _627 = -0.0f - _426;
        _628 = dot(float3(_576, _577, _578), float3(_625, _626, _627));
        _634 = cos(abs(asin(_628) - asin(_624)) * 0.5f);
        _638 = _592 - (_624 * _576);
        _639 = _593 - (_624 * _577);
        _640 = _594 - (_624 * _578);
        _644 = _625 - (_628 * _576);
        _645 = _626 - (_628 * _577);
        _646 = _627 - (_628 * _578);
        // [sem: invLength]
        _653 = rsqrt((dot(float3(_644, _645, _646), float3(_644, _645, _646)) * dot(float3(_638, _639, _640), float3(_638, _639, _640))) + 0.0001f) * dot(float3(_638, _639, _640), float3(_644, _645, _646));
        _663 = min(max(_604, 0.09803922f), 1.0f);
        _664 = _663 * _663;
        _665 = _664 * 0.5f;
        _666 = _664 * 2.0f;
        _667 = _628 + _624;
        _668 = _667 - _620;
        _677 = 1.0f / ((1.19f / _634) + (_634 * 0.36f));
        _682 = ((_677 * (0.6f - (_653 * 0.8f))) + 1.0f) * sqrt(saturate((_653 * 0.5f) + 0.5f));
        _688 = 1.0f - (sqrt(saturate(1.0f - (_682 * _682))) * _634);
        _689 = _688 * _688;
        _693 = 0.9534794f - ((_689 * _689) * (_688 * 0.9534794f));
        _694 = _677 * _682;
        _699 = (sqrt(1.0f - (_694 * _694)) * 0.5f) / _634;
        _700 = log2(_621);
        _701 = log2(_622);
        _702 = log2(_623);
        _714 = ((_693 * _693) * (exp2((((_668 * _668) * -0.5f) / (_665 * _665)) * 1.442695f) / (_664 * 1.2533141f))) * exp2(-5.741926f - (_653 * 5.265837f));
        _718 = _667 - (_620 * 4.0f);
        _728 = 1.0f - (_634 * 0.5f);
        _729 = _728 * _728;
        _733 = (_729 * _729) * (0.9534794f - (_634 * 0.4767397f));
        _735 = 0.9534794f - _733;
        _736 = 0.8f / _634;
        _749 = (((_735 * _735) * (_733 + 0.046520565f)) * (exp2((((_718 * _718) * -0.5f) / (_666 * _666)) * 1.442695f) / (_664 * 5.0132565f))) * exp2((_653 * 24.525816f) + -24.208424f);
        _759 = min(0.0f, (-0.0f - ((_714 * exp2(_700 * _699)) + (_749 * exp2(_736 * _700)))));
        _760 = min(0.0f, (-0.0f - ((_714 * exp2(_701 * _699)) + (_749 * exp2(_736 * _701)))));
        _761 = min(0.0f, (-0.0f - ((_714 * exp2(_702 * _699)) + (_749 * exp2(_736 * _702)))));
        _770 = saturate(abs(dot(float3(_592, _593, _594), float3(_576, _577, _578))));  // [sem: expr_sat]
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _779 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_770, _604, saturate(sqrt(exp2(_700 * 1.5f)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _782 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_770, _604, saturate(sqrt(exp2(_701 * 1.5f)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _785 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_770, _604, saturate(sqrt(exp2(_702 * 1.5f)))), 0.0f);
        _792 = min(0.99f, _779.x);
        _793 = min(0.99f, _782.x);
        _794 = min(0.99f, _785.x);
        _795 = min(0.99f, _779.y);
        _796 = min(0.99f, _782.y);
        _797 = min(0.99f, _785.y);
        _798 = _792 * _792;
        _799 = _793 * _793;
        _800 = _794 * _794;
        _801 = _795 * _795;
        _802 = _796 * _796;
        _803 = _797 * _797;
        _804 = _801 * _795;
        _805 = _802 * _796;
        _806 = _803 * _797;
        _807 = 1.0f - _798;
        _808 = 1.0f - _799;
        _809 = 1.0f - _800;
        _819 = _807 * _807;
        _820 = _808 * _808;
        _821 = _809 * _809;
        _822 = _819 * _807;
        _823 = _820 * _808;
        _824 = _821 * _809;
        _832 = min(max(_604, 0.18f), 0.6f);
        _833 = _832 * _832;
        _834 = _833 * 0.25f;
        _835 = _833 * 4.0f;
        _837 = (_793 + _792) + _794;
        _838 = _792 / _837;
        _839 = _793 / _837;
        _840 = _794 / _837;
        _841 = dot(float3(_833, _834, _835), float3(_838, _839, _840));
        _842 = _841 * _841;
        _845 = asin(min(max(_628, -1.0f), 1.0f)) + asin(min(max(_624, -1.0f), 1.0f));
        _846 = _845 * 0.5f;
        _847 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_838, _839, _840));
        _857 = _847 * _847;
        _880 = (_796 + _795) + _797;
        _884 = dot(float3(_833, _834, _835), float3((_795 / _880), (_796 / _880), (_797 / _880)));
        _888 = sqrt((_884 * _884) + (_842 * 2.0f));
        _906 = (_884 * 3.0f) + (_841 * 2.0f);
        _913 = (((_804 + _795) * ((_798 * 0.7f) + 1.0f)) * _888) / ((_906 * _804) + _795);
        _914 = (((_805 + _796) * ((_799 * 0.7f) + 1.0f)) * _888) / ((_906 * _805) + _796);
        _915 = (((_806 + _797) * ((_800 * 0.7f) + 1.0f)) * _888) / ((_906 * _806) + _797);
        _924 = _846 - (((_857 * (((_798 * 4.0f) * _801) + (_819 * 2.0f))) * (1.0f - ((_801 * 2.0f) / _819))) / _822);
        _931 = _846 - (((_857 * (((_799 * 4.0f) * _802) + (_820 * 2.0f))) * (1.0f - ((_802 * 2.0f) / _820))) / _823);
        _938 = _846 - (((_857 * (((_800 * 4.0f) * _803) + (_821 * 2.0f))) * (1.0f - ((_803 * 2.0f) / _821))) / _824);
        _966 = exp2((((_845 * -0.25f) * _846) / _842) * 1.442695f) * 1.4f;
        _967 = ((((((_804 * _798) / _822) + ((_795 * _798) / _807)) * 4.3982296f) * exp2((((_924 * _924) * -0.5f) / ((_913 * _913) + _842)) * 1.442695f)) + ((((_779.x + _759) * 0.25f) - _759) * 6.2831855f)) * _966;
        _968 = ((((((_805 * _799) / _823) + ((_796 * _799) / _808)) * 4.3982296f) * exp2((((_931 * _931) * -0.5f) / ((_914 * _914) + _842)) * 1.442695f)) + ((((_782.x + _760) * 0.25f) - _760) * 6.2831855f)) * _966;
        _969 = ((((((_806 * _800) / _824) + ((_797 * _800) / _809)) * 4.3982296f) * exp2((((_938 * _938) * -0.5f) / ((_915 * _915) + _842)) * 1.442695f)) + ((((_785.x + _761) * 0.25f) - _761) * 6.2831855f)) * _966;
        _970 = max(0.125f, _574);
        _984 = _574;
        _985 = _575;
        _986 = _576;
        _987 = _577;
        _988 = _578;
        _989 = _493;
        _990 = max(0.01f, ((_970 * (_621 - _967)) + _967));
        _991 = max(0.01f, (lerp(_968, _622, _970)));
        _992 = max(0.01f, (lerp(_969, _623, _970)));
      } else {
        _984 = _564;
        _985 = _565;
        _986 = _566;
        _987 = _567;
        _988 = _568;
        _989 = _493;
        _990 = 0.0f;
        _991 = 0.0f;
        _992 = 0.0f;
      }
    } else {
      _502 = (_493 == 53);
      if ((_493 == 67) || _502) {
        _509 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
        if (!(float(_494) > (frac(frac(dot(float2(((_509 * 32.665f) + _104), ((_509 * 11.815f) + _105)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
          if ((_493 & 126) == 66) {
            _530 = 1.0f;
            _564 = _530;
            _565 = 0.0h;
            _566 = ((_447 * 2.0f) + -1.0f);
            _567 = ((_448 * 2.0f) + -1.0f);
            _568 = ((_449 * 2.0f) + -1.0f);
            if ((_493 == 53) || ((_493 & 126) == 66)) {
              _574 = _564;
              _575 = _565;
              _576 = _566;
              _577 = _567;
              _578 = _568;
              _580 = __3__36__0__0__g_bentCone.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _587 = (_580.x * 2.0f) + -1.0f;
              _588 = (_580.y * 2.0f) + -1.0f;
              _589 = (_580.z * 2.0f) + -1.0f;
              _591 = rsqrt(dot(float3(_587, _588, _589), float3(_587, _588, _589)));  // [sem: invLength]
              _592 = _587 * _591;
              _593 = _588 * _591;
              _594 = _589 * _591;
              if (!((_renderParams.z > 0.0f) || _335)) {
                _603 = (half)(saturate((half)(_280 + 0.15002441h)));
              } else {
                _603 = _280;
              }
              _604 = float(_603);
              if (_493 == 53) {
                _620 = (((asfloat(_globalLightParams.z) * _604) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
              } else {
                _620 = _bevelParams.y;
              }
              _621 = float(_307);
              _622 = float(_308);
              _623 = float(_309);
              _624 = dot(float3(_576, _577, _578), float3(_592, _593, _594));
              _625 = -0.0f - _424;
              _626 = -0.0f - _425;
              _627 = -0.0f - _426;
              _628 = dot(float3(_576, _577, _578), float3(_625, _626, _627));
              _634 = cos(abs(asin(_628) - asin(_624)) * 0.5f);
              _638 = _592 - (_624 * _576);
              _639 = _593 - (_624 * _577);
              _640 = _594 - (_624 * _578);
              _644 = _625 - (_628 * _576);
              _645 = _626 - (_628 * _577);
              _646 = _627 - (_628 * _578);
              // [sem: invLength]
              _653 = rsqrt((dot(float3(_644, _645, _646), float3(_644, _645, _646)) * dot(float3(_638, _639, _640), float3(_638, _639, _640))) + 0.0001f) * dot(float3(_638, _639, _640), float3(_644, _645, _646));
              _663 = min(max(_604, 0.09803922f), 1.0f);
              _664 = _663 * _663;
              _665 = _664 * 0.5f;
              _666 = _664 * 2.0f;
              _667 = _628 + _624;
              _668 = _667 - _620;
              _677 = 1.0f / ((1.19f / _634) + (_634 * 0.36f));
              _682 = ((_677 * (0.6f - (_653 * 0.8f))) + 1.0f) * sqrt(saturate((_653 * 0.5f) + 0.5f));
              _688 = 1.0f - (sqrt(saturate(1.0f - (_682 * _682))) * _634);
              _689 = _688 * _688;
              _693 = 0.9534794f - ((_689 * _689) * (_688 * 0.9534794f));
              _694 = _677 * _682;
              _699 = (sqrt(1.0f - (_694 * _694)) * 0.5f) / _634;
              _700 = log2(_621);
              _701 = log2(_622);
              _702 = log2(_623);
              _714 = ((_693 * _693) * (exp2((((_668 * _668) * -0.5f) / (_665 * _665)) * 1.442695f) / (_664 * 1.2533141f))) * exp2(-5.741926f - (_653 * 5.265837f));
              _718 = _667 - (_620 * 4.0f);
              _728 = 1.0f - (_634 * 0.5f);
              _729 = _728 * _728;
              _733 = (_729 * _729) * (0.9534794f - (_634 * 0.4767397f));
              _735 = 0.9534794f - _733;
              _736 = 0.8f / _634;
              _749 = (((_735 * _735) * (_733 + 0.046520565f)) * (exp2((((_718 * _718) * -0.5f) / (_666 * _666)) * 1.442695f) / (_664 * 5.0132565f))) * exp2((_653 * 24.525816f) + -24.208424f);
              _759 = min(0.0f, (-0.0f - ((_714 * exp2(_700 * _699)) + (_749 * exp2(_736 * _700)))));
              _760 = min(0.0f, (-0.0f - ((_714 * exp2(_701 * _699)) + (_749 * exp2(_736 * _701)))));
              _761 = min(0.0f, (-0.0f - ((_714 * exp2(_702 * _699)) + (_749 * exp2(_736 * _702)))));
              _770 = saturate(abs(dot(float3(_592, _593, _594), float3(_576, _577, _578))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _779 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_770, _604, saturate(sqrt(exp2(_700 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _782 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_770, _604, saturate(sqrt(exp2(_701 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _785 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_770, _604, saturate(sqrt(exp2(_702 * 1.5f)))), 0.0f);
              _792 = min(0.99f, _779.x);
              _793 = min(0.99f, _782.x);
              _794 = min(0.99f, _785.x);
              _795 = min(0.99f, _779.y);
              _796 = min(0.99f, _782.y);
              _797 = min(0.99f, _785.y);
              _798 = _792 * _792;
              _799 = _793 * _793;
              _800 = _794 * _794;
              _801 = _795 * _795;
              _802 = _796 * _796;
              _803 = _797 * _797;
              _804 = _801 * _795;
              _805 = _802 * _796;
              _806 = _803 * _797;
              _807 = 1.0f - _798;
              _808 = 1.0f - _799;
              _809 = 1.0f - _800;
              _819 = _807 * _807;
              _820 = _808 * _808;
              _821 = _809 * _809;
              _822 = _819 * _807;
              _823 = _820 * _808;
              _824 = _821 * _809;
              _832 = min(max(_604, 0.18f), 0.6f);
              _833 = _832 * _832;
              _834 = _833 * 0.25f;
              _835 = _833 * 4.0f;
              _837 = (_793 + _792) + _794;
              _838 = _792 / _837;
              _839 = _793 / _837;
              _840 = _794 / _837;
              _841 = dot(float3(_833, _834, _835), float3(_838, _839, _840));
              _842 = _841 * _841;
              _845 = asin(min(max(_628, -1.0f), 1.0f)) + asin(min(max(_624, -1.0f), 1.0f));
              _846 = _845 * 0.5f;
              _847 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_838, _839, _840));
              _857 = _847 * _847;
              _880 = (_796 + _795) + _797;
              _884 = dot(float3(_833, _834, _835), float3((_795 / _880), (_796 / _880), (_797 / _880)));
              _888 = sqrt((_884 * _884) + (_842 * 2.0f));
              _906 = (_884 * 3.0f) + (_841 * 2.0f);
              _913 = (((_804 + _795) * ((_798 * 0.7f) + 1.0f)) * _888) / ((_906 * _804) + _795);
              _914 = (((_805 + _796) * ((_799 * 0.7f) + 1.0f)) * _888) / ((_906 * _805) + _796);
              _915 = (((_806 + _797) * ((_800 * 0.7f) + 1.0f)) * _888) / ((_906 * _806) + _797);
              _924 = _846 - (((_857 * (((_798 * 4.0f) * _801) + (_819 * 2.0f))) * (1.0f - ((_801 * 2.0f) / _819))) / _822);
              _931 = _846 - (((_857 * (((_799 * 4.0f) * _802) + (_820 * 2.0f))) * (1.0f - ((_802 * 2.0f) / _820))) / _823);
              _938 = _846 - (((_857 * (((_800 * 4.0f) * _803) + (_821 * 2.0f))) * (1.0f - ((_803 * 2.0f) / _821))) / _824);
              _966 = exp2((((_845 * -0.25f) * _846) / _842) * 1.442695f) * 1.4f;
              _967 = ((((((_804 * _798) / _822) + ((_795 * _798) / _807)) * 4.3982296f) * exp2((((_924 * _924) * -0.5f) / ((_913 * _913) + _842)) * 1.442695f)) + ((((_779.x + _759) * 0.25f) - _759) * 6.2831855f)) * _966;
              _968 = ((((((_805 * _799) / _823) + ((_796 * _799) / _808)) * 4.3982296f) * exp2((((_931 * _931) * -0.5f) / ((_914 * _914) + _842)) * 1.442695f)) + ((((_782.x + _760) * 0.25f) - _760) * 6.2831855f)) * _966;
              _969 = ((((((_806 * _800) / _824) + ((_797 * _800) / _809)) * 4.3982296f) * exp2((((_938 * _938) * -0.5f) / ((_915 * _915) + _842)) * 1.442695f)) + ((((_785.x + _761) * 0.25f) - _761) * 6.2831855f)) * _966;
              _970 = max(0.125f, _574);
              _984 = _574;
              _985 = _575;
              _986 = _576;
              _987 = _577;
              _988 = _578;
              _989 = _493;
              _990 = max(0.01f, ((_970 * (_621 - _967)) + _967));
              _991 = max(0.01f, (lerp(_968, _622, _970)));
              _992 = max(0.01f, (lerp(_969, _623, _970)));
            } else {
              _984 = _564;
              _985 = _565;
              _986 = _566;
              _987 = _567;
              _988 = _568;
              _989 = _493;
              _990 = 0.0f;
              _991 = 0.0f;
              _992 = 0.0f;
            }
          } else {
            _527 = 1.0f;
            _528 = 0.0h;
            if (_502) {
              _540 = (_447 * 2.0f) + -1.0f;
              _541 = (_448 * 2.0f) + -1.0f;
              _543 = 1.0f - abs(_540);
              _544 = abs(_541);
              _545 = _543 - _544;
              if (!(_545 >= 0.0f)) {
                _556 = ((1.0f - _544) * select((_540 >= 0.0f), 1.0f, -1.0f));
                _557 = (_543 * select((_541 >= 0.0f), 1.0f, -1.0f));
              } else {
                _556 = _540;
                _557 = _541;
              }
              _559 = rsqrt(dot(float3(_556, _557, _545), float3(_556, _557, _545)));  // [sem: invLength]
              _574 = _527;
              _575 = 0.0h;
              _576 = (_559 * _556);
              _577 = (_559 * _557);
              _578 = (_559 * _545);
              _580 = __3__36__0__0__g_bentCone.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _587 = (_580.x * 2.0f) + -1.0f;
              _588 = (_580.y * 2.0f) + -1.0f;
              _589 = (_580.z * 2.0f) + -1.0f;
              _591 = rsqrt(dot(float3(_587, _588, _589), float3(_587, _588, _589)));  // [sem: invLength]
              _592 = _587 * _591;
              _593 = _588 * _591;
              _594 = _589 * _591;
              if (!((_renderParams.z > 0.0f) || _335)) {
                _603 = (half)(saturate((half)(_280 + 0.15002441h)));
              } else {
                _603 = _280;
              }
              _604 = float(_603);
              if (_493 == 53) {
                _620 = (((asfloat(_globalLightParams.z) * _604) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
              } else {
                _620 = _bevelParams.y;
              }
              _621 = float(_307);
              _622 = float(_308);
              _623 = float(_309);
              _624 = dot(float3(_576, _577, _578), float3(_592, _593, _594));
              _625 = -0.0f - _424;
              _626 = -0.0f - _425;
              _627 = -0.0f - _426;
              _628 = dot(float3(_576, _577, _578), float3(_625, _626, _627));
              _634 = cos(abs(asin(_628) - asin(_624)) * 0.5f);
              _638 = _592 - (_624 * _576);
              _639 = _593 - (_624 * _577);
              _640 = _594 - (_624 * _578);
              _644 = _625 - (_628 * _576);
              _645 = _626 - (_628 * _577);
              _646 = _627 - (_628 * _578);
              // [sem: invLength]
              _653 = rsqrt((dot(float3(_644, _645, _646), float3(_644, _645, _646)) * dot(float3(_638, _639, _640), float3(_638, _639, _640))) + 0.0001f) * dot(float3(_638, _639, _640), float3(_644, _645, _646));
              _663 = min(max(_604, 0.09803922f), 1.0f);
              _664 = _663 * _663;
              _665 = _664 * 0.5f;
              _666 = _664 * 2.0f;
              _667 = _628 + _624;
              _668 = _667 - _620;
              _677 = 1.0f / ((1.19f / _634) + (_634 * 0.36f));
              _682 = ((_677 * (0.6f - (_653 * 0.8f))) + 1.0f) * sqrt(saturate((_653 * 0.5f) + 0.5f));
              _688 = 1.0f - (sqrt(saturate(1.0f - (_682 * _682))) * _634);
              _689 = _688 * _688;
              _693 = 0.9534794f - ((_689 * _689) * (_688 * 0.9534794f));
              _694 = _677 * _682;
              _699 = (sqrt(1.0f - (_694 * _694)) * 0.5f) / _634;
              _700 = log2(_621);
              _701 = log2(_622);
              _702 = log2(_623);
              _714 = ((_693 * _693) * (exp2((((_668 * _668) * -0.5f) / (_665 * _665)) * 1.442695f) / (_664 * 1.2533141f))) * exp2(-5.741926f - (_653 * 5.265837f));
              _718 = _667 - (_620 * 4.0f);
              _728 = 1.0f - (_634 * 0.5f);
              _729 = _728 * _728;
              _733 = (_729 * _729) * (0.9534794f - (_634 * 0.4767397f));
              _735 = 0.9534794f - _733;
              _736 = 0.8f / _634;
              _749 = (((_735 * _735) * (_733 + 0.046520565f)) * (exp2((((_718 * _718) * -0.5f) / (_666 * _666)) * 1.442695f) / (_664 * 5.0132565f))) * exp2((_653 * 24.525816f) + -24.208424f);
              _759 = min(0.0f, (-0.0f - ((_714 * exp2(_700 * _699)) + (_749 * exp2(_736 * _700)))));
              _760 = min(0.0f, (-0.0f - ((_714 * exp2(_701 * _699)) + (_749 * exp2(_736 * _701)))));
              _761 = min(0.0f, (-0.0f - ((_714 * exp2(_702 * _699)) + (_749 * exp2(_736 * _702)))));
              _770 = saturate(abs(dot(float3(_592, _593, _594), float3(_576, _577, _578))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _779 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_770, _604, saturate(sqrt(exp2(_700 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _782 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_770, _604, saturate(sqrt(exp2(_701 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _785 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_770, _604, saturate(sqrt(exp2(_702 * 1.5f)))), 0.0f);
              _792 = min(0.99f, _779.x);
              _793 = min(0.99f, _782.x);
              _794 = min(0.99f, _785.x);
              _795 = min(0.99f, _779.y);
              _796 = min(0.99f, _782.y);
              _797 = min(0.99f, _785.y);
              _798 = _792 * _792;
              _799 = _793 * _793;
              _800 = _794 * _794;
              _801 = _795 * _795;
              _802 = _796 * _796;
              _803 = _797 * _797;
              _804 = _801 * _795;
              _805 = _802 * _796;
              _806 = _803 * _797;
              _807 = 1.0f - _798;
              _808 = 1.0f - _799;
              _809 = 1.0f - _800;
              _819 = _807 * _807;
              _820 = _808 * _808;
              _821 = _809 * _809;
              _822 = _819 * _807;
              _823 = _820 * _808;
              _824 = _821 * _809;
              _832 = min(max(_604, 0.18f), 0.6f);
              _833 = _832 * _832;
              _834 = _833 * 0.25f;
              _835 = _833 * 4.0f;
              _837 = (_793 + _792) + _794;
              _838 = _792 / _837;
              _839 = _793 / _837;
              _840 = _794 / _837;
              _841 = dot(float3(_833, _834, _835), float3(_838, _839, _840));
              _842 = _841 * _841;
              _845 = asin(min(max(_628, -1.0f), 1.0f)) + asin(min(max(_624, -1.0f), 1.0f));
              _846 = _845 * 0.5f;
              _847 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_838, _839, _840));
              _857 = _847 * _847;
              _880 = (_796 + _795) + _797;
              _884 = dot(float3(_833, _834, _835), float3((_795 / _880), (_796 / _880), (_797 / _880)));
              _888 = sqrt((_884 * _884) + (_842 * 2.0f));
              _906 = (_884 * 3.0f) + (_841 * 2.0f);
              _913 = (((_804 + _795) * ((_798 * 0.7f) + 1.0f)) * _888) / ((_906 * _804) + _795);
              _914 = (((_805 + _796) * ((_799 * 0.7f) + 1.0f)) * _888) / ((_906 * _805) + _796);
              _915 = (((_806 + _797) * ((_800 * 0.7f) + 1.0f)) * _888) / ((_906 * _806) + _797);
              _924 = _846 - (((_857 * (((_798 * 4.0f) * _801) + (_819 * 2.0f))) * (1.0f - ((_801 * 2.0f) / _819))) / _822);
              _931 = _846 - (((_857 * (((_799 * 4.0f) * _802) + (_820 * 2.0f))) * (1.0f - ((_802 * 2.0f) / _820))) / _823);
              _938 = _846 - (((_857 * (((_800 * 4.0f) * _803) + (_821 * 2.0f))) * (1.0f - ((_803 * 2.0f) / _821))) / _824);
              _966 = exp2((((_845 * -0.25f) * _846) / _842) * 1.442695f) * 1.4f;
              _967 = ((((((_804 * _798) / _822) + ((_795 * _798) / _807)) * 4.3982296f) * exp2((((_924 * _924) * -0.5f) / ((_913 * _913) + _842)) * 1.442695f)) + ((((_779.x + _759) * 0.25f) - _759) * 6.2831855f)) * _966;
              _968 = ((((((_805 * _799) / _823) + ((_796 * _799) / _808)) * 4.3982296f) * exp2((((_931 * _931) * -0.5f) / ((_914 * _914) + _842)) * 1.442695f)) + ((((_782.x + _760) * 0.25f) - _760) * 6.2831855f)) * _966;
              _969 = ((((((_806 * _800) / _824) + ((_797 * _800) / _809)) * 4.3982296f) * exp2((((_938 * _938) * -0.5f) / ((_915 * _915) + _842)) * 1.442695f)) + ((((_785.x + _761) * 0.25f) - _761) * 6.2831855f)) * _966;
              _970 = max(0.125f, _574);
              _984 = _574;
              _985 = _575;
              _986 = _576;
              _987 = _577;
              _988 = _578;
              _989 = _493;
              _990 = max(0.01f, ((_970 * (_621 - _967)) + _967));
              _991 = max(0.01f, (lerp(_968, _622, _970)));
              _992 = max(0.01f, (lerp(_969, _623, _970)));
            } else {
              _564 = _527;
              _565 = _528;
              _566 = _376;
              _567 = _377;
              _568 = _378;
              if ((_493 == 53) || ((_493 & 126) == 66)) {
                _574 = _564;
                _575 = _565;
                _576 = _566;
                _577 = _567;
                _578 = _568;
                _580 = __3__36__0__0__g_bentCone.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _587 = (_580.x * 2.0f) + -1.0f;
                _588 = (_580.y * 2.0f) + -1.0f;
                _589 = (_580.z * 2.0f) + -1.0f;
                _591 = rsqrt(dot(float3(_587, _588, _589), float3(_587, _588, _589)));  // [sem: invLength]
                _592 = _587 * _591;
                _593 = _588 * _591;
                _594 = _589 * _591;
                if (!((_renderParams.z > 0.0f) || _335)) {
                  _603 = (half)(saturate((half)(_280 + 0.15002441h)));
                } else {
                  _603 = _280;
                }
                _604 = float(_603);
                if (_493 == 53) {
                  _620 = (((asfloat(_globalLightParams.z) * _604) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
                } else {
                  _620 = _bevelParams.y;
                }
                _621 = float(_307);
                _622 = float(_308);
                _623 = float(_309);
                _624 = dot(float3(_576, _577, _578), float3(_592, _593, _594));
                _625 = -0.0f - _424;
                _626 = -0.0f - _425;
                _627 = -0.0f - _426;
                _628 = dot(float3(_576, _577, _578), float3(_625, _626, _627));
                _634 = cos(abs(asin(_628) - asin(_624)) * 0.5f);
                _638 = _592 - (_624 * _576);
                _639 = _593 - (_624 * _577);
                _640 = _594 - (_624 * _578);
                _644 = _625 - (_628 * _576);
                _645 = _626 - (_628 * _577);
                _646 = _627 - (_628 * _578);
                // [sem: invLength]
                _653 = rsqrt((dot(float3(_644, _645, _646), float3(_644, _645, _646)) * dot(float3(_638, _639, _640), float3(_638, _639, _640))) + 0.0001f) * dot(float3(_638, _639, _640), float3(_644, _645, _646));
                _663 = min(max(_604, 0.09803922f), 1.0f);
                _664 = _663 * _663;
                _665 = _664 * 0.5f;
                _666 = _664 * 2.0f;
                _667 = _628 + _624;
                _668 = _667 - _620;
                _677 = 1.0f / ((1.19f / _634) + (_634 * 0.36f));
                _682 = ((_677 * (0.6f - (_653 * 0.8f))) + 1.0f) * sqrt(saturate((_653 * 0.5f) + 0.5f));
                _688 = 1.0f - (sqrt(saturate(1.0f - (_682 * _682))) * _634);
                _689 = _688 * _688;
                _693 = 0.9534794f - ((_689 * _689) * (_688 * 0.9534794f));
                _694 = _677 * _682;
                _699 = (sqrt(1.0f - (_694 * _694)) * 0.5f) / _634;
                _700 = log2(_621);
                _701 = log2(_622);
                _702 = log2(_623);
                _714 = ((_693 * _693) * (exp2((((_668 * _668) * -0.5f) / (_665 * _665)) * 1.442695f) / (_664 * 1.2533141f))) * exp2(-5.741926f - (_653 * 5.265837f));
                _718 = _667 - (_620 * 4.0f);
                _728 = 1.0f - (_634 * 0.5f);
                _729 = _728 * _728;
                _733 = (_729 * _729) * (0.9534794f - (_634 * 0.4767397f));
                _735 = 0.9534794f - _733;
                _736 = 0.8f / _634;
                _749 = (((_735 * _735) * (_733 + 0.046520565f)) * (exp2((((_718 * _718) * -0.5f) / (_666 * _666)) * 1.442695f) / (_664 * 5.0132565f))) * exp2((_653 * 24.525816f) + -24.208424f);
                _759 = min(0.0f, (-0.0f - ((_714 * exp2(_700 * _699)) + (_749 * exp2(_736 * _700)))));
                _760 = min(0.0f, (-0.0f - ((_714 * exp2(_701 * _699)) + (_749 * exp2(_736 * _701)))));
                _761 = min(0.0f, (-0.0f - ((_714 * exp2(_702 * _699)) + (_749 * exp2(_736 * _702)))));
                _770 = saturate(abs(dot(float3(_592, _593, _594), float3(_576, _577, _578))));  // [sem: expr_sat]
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _779 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_770, _604, saturate(sqrt(exp2(_700 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _782 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_770, _604, saturate(sqrt(exp2(_701 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _785 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_770, _604, saturate(sqrt(exp2(_702 * 1.5f)))), 0.0f);
                _792 = min(0.99f, _779.x);
                _793 = min(0.99f, _782.x);
                _794 = min(0.99f, _785.x);
                _795 = min(0.99f, _779.y);
                _796 = min(0.99f, _782.y);
                _797 = min(0.99f, _785.y);
                _798 = _792 * _792;
                _799 = _793 * _793;
                _800 = _794 * _794;
                _801 = _795 * _795;
                _802 = _796 * _796;
                _803 = _797 * _797;
                _804 = _801 * _795;
                _805 = _802 * _796;
                _806 = _803 * _797;
                _807 = 1.0f - _798;
                _808 = 1.0f - _799;
                _809 = 1.0f - _800;
                _819 = _807 * _807;
                _820 = _808 * _808;
                _821 = _809 * _809;
                _822 = _819 * _807;
                _823 = _820 * _808;
                _824 = _821 * _809;
                _832 = min(max(_604, 0.18f), 0.6f);
                _833 = _832 * _832;
                _834 = _833 * 0.25f;
                _835 = _833 * 4.0f;
                _837 = (_793 + _792) + _794;
                _838 = _792 / _837;
                _839 = _793 / _837;
                _840 = _794 / _837;
                _841 = dot(float3(_833, _834, _835), float3(_838, _839, _840));
                _842 = _841 * _841;
                _845 = asin(min(max(_628, -1.0f), 1.0f)) + asin(min(max(_624, -1.0f), 1.0f));
                _846 = _845 * 0.5f;
                _847 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_838, _839, _840));
                _857 = _847 * _847;
                _880 = (_796 + _795) + _797;
                _884 = dot(float3(_833, _834, _835), float3((_795 / _880), (_796 / _880), (_797 / _880)));
                _888 = sqrt((_884 * _884) + (_842 * 2.0f));
                _906 = (_884 * 3.0f) + (_841 * 2.0f);
                _913 = (((_804 + _795) * ((_798 * 0.7f) + 1.0f)) * _888) / ((_906 * _804) + _795);
                _914 = (((_805 + _796) * ((_799 * 0.7f) + 1.0f)) * _888) / ((_906 * _805) + _796);
                _915 = (((_806 + _797) * ((_800 * 0.7f) + 1.0f)) * _888) / ((_906 * _806) + _797);
                _924 = _846 - (((_857 * (((_798 * 4.0f) * _801) + (_819 * 2.0f))) * (1.0f - ((_801 * 2.0f) / _819))) / _822);
                _931 = _846 - (((_857 * (((_799 * 4.0f) * _802) + (_820 * 2.0f))) * (1.0f - ((_802 * 2.0f) / _820))) / _823);
                _938 = _846 - (((_857 * (((_800 * 4.0f) * _803) + (_821 * 2.0f))) * (1.0f - ((_803 * 2.0f) / _821))) / _824);
                _966 = exp2((((_845 * -0.25f) * _846) / _842) * 1.442695f) * 1.4f;
                _967 = ((((((_804 * _798) / _822) + ((_795 * _798) / _807)) * 4.3982296f) * exp2((((_924 * _924) * -0.5f) / ((_913 * _913) + _842)) * 1.442695f)) + ((((_779.x + _759) * 0.25f) - _759) * 6.2831855f)) * _966;
                _968 = ((((((_805 * _799) / _823) + ((_796 * _799) / _808)) * 4.3982296f) * exp2((((_931 * _931) * -0.5f) / ((_914 * _914) + _842)) * 1.442695f)) + ((((_782.x + _760) * 0.25f) - _760) * 6.2831855f)) * _966;
                _969 = ((((((_806 * _800) / _824) + ((_797 * _800) / _809)) * 4.3982296f) * exp2((((_938 * _938) * -0.5f) / ((_915 * _915) + _842)) * 1.442695f)) + ((((_785.x + _761) * 0.25f) - _761) * 6.2831855f)) * _966;
                _970 = max(0.125f, _574);
                _984 = _574;
                _985 = _575;
                _986 = _576;
                _987 = _577;
                _988 = _578;
                _989 = _493;
                _990 = max(0.01f, ((_970 * (_621 - _967)) + _967));
                _991 = max(0.01f, (lerp(_968, _622, _970)));
                _992 = max(0.01f, (lerp(_969, _623, _970)));
              } else {
                _984 = _564;
                _985 = _565;
                _986 = _566;
                _987 = _567;
                _988 = _568;
                _989 = _493;
                _990 = 0.0f;
                _991 = 0.0f;
                _992 = 0.0f;
              }
            }
          }
        } else {
          _984 = 1.0f;
          _985 = 0.0h;
          _986 = _376;
          _987 = _377;
          _988 = _378;
          _989 = 52;
          _990 = 0.0f;
          _991 = 0.0f;
          _992 = 0.0f;
        }
      } else {
        _527 = 0.0f;
        _528 = _494;
        if (_502) {
          _540 = (_447 * 2.0f) + -1.0f;
          _541 = (_448 * 2.0f) + -1.0f;
          _543 = 1.0f - abs(_540);
          _544 = abs(_541);
          _545 = _543 - _544;
          if (!(_545 >= 0.0f)) {
            _556 = ((1.0f - _544) * select((_540 >= 0.0f), 1.0f, -1.0f));
            _557 = (_543 * select((_541 >= 0.0f), 1.0f, -1.0f));
          } else {
            _556 = _540;
            _557 = _541;
          }
          _559 = rsqrt(dot(float3(_556, _557, _545), float3(_556, _557, _545)));  // [sem: invLength]
          _574 = _527;
          _575 = 0.0h;
          _576 = (_559 * _556);
          _577 = (_559 * _557);
          _578 = (_559 * _545);
          _580 = __3__36__0__0__g_bentCone.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _587 = (_580.x * 2.0f) + -1.0f;
          _588 = (_580.y * 2.0f) + -1.0f;
          _589 = (_580.z * 2.0f) + -1.0f;
          _591 = rsqrt(dot(float3(_587, _588, _589), float3(_587, _588, _589)));  // [sem: invLength]
          _592 = _587 * _591;
          _593 = _588 * _591;
          _594 = _589 * _591;
          if (!((_renderParams.z > 0.0f) || _335)) {
            _603 = (half)(saturate((half)(_280 + 0.15002441h)));
          } else {
            _603 = _280;
          }
          _604 = float(_603);
          if (_493 == 53) {
            _620 = (((asfloat(_globalLightParams.z) * _604) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
          } else {
            _620 = _bevelParams.y;
          }
          _621 = float(_307);
          _622 = float(_308);
          _623 = float(_309);
          _624 = dot(float3(_576, _577, _578), float3(_592, _593, _594));
          _625 = -0.0f - _424;
          _626 = -0.0f - _425;
          _627 = -0.0f - _426;
          _628 = dot(float3(_576, _577, _578), float3(_625, _626, _627));
          _634 = cos(abs(asin(_628) - asin(_624)) * 0.5f);
          _638 = _592 - (_624 * _576);
          _639 = _593 - (_624 * _577);
          _640 = _594 - (_624 * _578);
          _644 = _625 - (_628 * _576);
          _645 = _626 - (_628 * _577);
          _646 = _627 - (_628 * _578);
          // [sem: invLength]
          _653 = rsqrt((dot(float3(_644, _645, _646), float3(_644, _645, _646)) * dot(float3(_638, _639, _640), float3(_638, _639, _640))) + 0.0001f) * dot(float3(_638, _639, _640), float3(_644, _645, _646));
          _663 = min(max(_604, 0.09803922f), 1.0f);
          _664 = _663 * _663;
          _665 = _664 * 0.5f;
          _666 = _664 * 2.0f;
          _667 = _628 + _624;
          _668 = _667 - _620;
          _677 = 1.0f / ((1.19f / _634) + (_634 * 0.36f));
          _682 = ((_677 * (0.6f - (_653 * 0.8f))) + 1.0f) * sqrt(saturate((_653 * 0.5f) + 0.5f));
          _688 = 1.0f - (sqrt(saturate(1.0f - (_682 * _682))) * _634);
          _689 = _688 * _688;
          _693 = 0.9534794f - ((_689 * _689) * (_688 * 0.9534794f));
          _694 = _677 * _682;
          _699 = (sqrt(1.0f - (_694 * _694)) * 0.5f) / _634;
          _700 = log2(_621);
          _701 = log2(_622);
          _702 = log2(_623);
          _714 = ((_693 * _693) * (exp2((((_668 * _668) * -0.5f) / (_665 * _665)) * 1.442695f) / (_664 * 1.2533141f))) * exp2(-5.741926f - (_653 * 5.265837f));
          _718 = _667 - (_620 * 4.0f);
          _728 = 1.0f - (_634 * 0.5f);
          _729 = _728 * _728;
          _733 = (_729 * _729) * (0.9534794f - (_634 * 0.4767397f));
          _735 = 0.9534794f - _733;
          _736 = 0.8f / _634;
          _749 = (((_735 * _735) * (_733 + 0.046520565f)) * (exp2((((_718 * _718) * -0.5f) / (_666 * _666)) * 1.442695f) / (_664 * 5.0132565f))) * exp2((_653 * 24.525816f) + -24.208424f);
          _759 = min(0.0f, (-0.0f - ((_714 * exp2(_700 * _699)) + (_749 * exp2(_736 * _700)))));
          _760 = min(0.0f, (-0.0f - ((_714 * exp2(_701 * _699)) + (_749 * exp2(_736 * _701)))));
          _761 = min(0.0f, (-0.0f - ((_714 * exp2(_702 * _699)) + (_749 * exp2(_736 * _702)))));
          _770 = saturate(abs(dot(float3(_592, _593, _594), float3(_576, _577, _578))));  // [sem: expr_sat]
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _779 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_770, _604, saturate(sqrt(exp2(_700 * 1.5f)))), 0.0f);
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _782 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_770, _604, saturate(sqrt(exp2(_701 * 1.5f)))), 0.0f);
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _785 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_770, _604, saturate(sqrt(exp2(_702 * 1.5f)))), 0.0f);
          _792 = min(0.99f, _779.x);
          _793 = min(0.99f, _782.x);
          _794 = min(0.99f, _785.x);
          _795 = min(0.99f, _779.y);
          _796 = min(0.99f, _782.y);
          _797 = min(0.99f, _785.y);
          _798 = _792 * _792;
          _799 = _793 * _793;
          _800 = _794 * _794;
          _801 = _795 * _795;
          _802 = _796 * _796;
          _803 = _797 * _797;
          _804 = _801 * _795;
          _805 = _802 * _796;
          _806 = _803 * _797;
          _807 = 1.0f - _798;
          _808 = 1.0f - _799;
          _809 = 1.0f - _800;
          _819 = _807 * _807;
          _820 = _808 * _808;
          _821 = _809 * _809;
          _822 = _819 * _807;
          _823 = _820 * _808;
          _824 = _821 * _809;
          _832 = min(max(_604, 0.18f), 0.6f);
          _833 = _832 * _832;
          _834 = _833 * 0.25f;
          _835 = _833 * 4.0f;
          _837 = (_793 + _792) + _794;
          _838 = _792 / _837;
          _839 = _793 / _837;
          _840 = _794 / _837;
          _841 = dot(float3(_833, _834, _835), float3(_838, _839, _840));
          _842 = _841 * _841;
          _845 = asin(min(max(_628, -1.0f), 1.0f)) + asin(min(max(_624, -1.0f), 1.0f));
          _846 = _845 * 0.5f;
          _847 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_838, _839, _840));
          _857 = _847 * _847;
          _880 = (_796 + _795) + _797;
          _884 = dot(float3(_833, _834, _835), float3((_795 / _880), (_796 / _880), (_797 / _880)));
          _888 = sqrt((_884 * _884) + (_842 * 2.0f));
          _906 = (_884 * 3.0f) + (_841 * 2.0f);
          _913 = (((_804 + _795) * ((_798 * 0.7f) + 1.0f)) * _888) / ((_906 * _804) + _795);
          _914 = (((_805 + _796) * ((_799 * 0.7f) + 1.0f)) * _888) / ((_906 * _805) + _796);
          _915 = (((_806 + _797) * ((_800 * 0.7f) + 1.0f)) * _888) / ((_906 * _806) + _797);
          _924 = _846 - (((_857 * (((_798 * 4.0f) * _801) + (_819 * 2.0f))) * (1.0f - ((_801 * 2.0f) / _819))) / _822);
          _931 = _846 - (((_857 * (((_799 * 4.0f) * _802) + (_820 * 2.0f))) * (1.0f - ((_802 * 2.0f) / _820))) / _823);
          _938 = _846 - (((_857 * (((_800 * 4.0f) * _803) + (_821 * 2.0f))) * (1.0f - ((_803 * 2.0f) / _821))) / _824);
          _966 = exp2((((_845 * -0.25f) * _846) / _842) * 1.442695f) * 1.4f;
          _967 = ((((((_804 * _798) / _822) + ((_795 * _798) / _807)) * 4.3982296f) * exp2((((_924 * _924) * -0.5f) / ((_913 * _913) + _842)) * 1.442695f)) + ((((_779.x + _759) * 0.25f) - _759) * 6.2831855f)) * _966;
          _968 = ((((((_805 * _799) / _823) + ((_796 * _799) / _808)) * 4.3982296f) * exp2((((_931 * _931) * -0.5f) / ((_914 * _914) + _842)) * 1.442695f)) + ((((_782.x + _760) * 0.25f) - _760) * 6.2831855f)) * _966;
          _969 = ((((((_806 * _800) / _824) + ((_797 * _800) / _809)) * 4.3982296f) * exp2((((_938 * _938) * -0.5f) / ((_915 * _915) + _842)) * 1.442695f)) + ((((_785.x + _761) * 0.25f) - _761) * 6.2831855f)) * _966;
          _970 = max(0.125f, _574);
          _984 = _574;
          _985 = _575;
          _986 = _576;
          _987 = _577;
          _988 = _578;
          _989 = _493;
          _990 = max(0.01f, ((_970 * (_621 - _967)) + _967));
          _991 = max(0.01f, (lerp(_968, _622, _970)));
          _992 = max(0.01f, (lerp(_969, _623, _970)));
        } else {
          _564 = _527;
          _565 = _528;
          _566 = _376;
          _567 = _377;
          _568 = _378;
          if ((_493 == 53) || ((_493 & 126) == 66)) {
            _574 = _564;
            _575 = _565;
            _576 = _566;
            _577 = _567;
            _578 = _568;
            _580 = __3__36__0__0__g_bentCone.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _587 = (_580.x * 2.0f) + -1.0f;
            _588 = (_580.y * 2.0f) + -1.0f;
            _589 = (_580.z * 2.0f) + -1.0f;
            _591 = rsqrt(dot(float3(_587, _588, _589), float3(_587, _588, _589)));  // [sem: invLength]
            _592 = _587 * _591;
            _593 = _588 * _591;
            _594 = _589 * _591;
            if (!((_renderParams.z > 0.0f) || _335)) {
              _603 = (half)(saturate((half)(_280 + 0.15002441h)));
            } else {
              _603 = _280;
            }
            _604 = float(_603);
            if (_493 == 53) {
              _620 = (((asfloat(_globalLightParams.z) * _604) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
            } else {
              _620 = _bevelParams.y;
            }
            _621 = float(_307);
            _622 = float(_308);
            _623 = float(_309);
            _624 = dot(float3(_576, _577, _578), float3(_592, _593, _594));
            _625 = -0.0f - _424;
            _626 = -0.0f - _425;
            _627 = -0.0f - _426;
            _628 = dot(float3(_576, _577, _578), float3(_625, _626, _627));
            _634 = cos(abs(asin(_628) - asin(_624)) * 0.5f);
            _638 = _592 - (_624 * _576);
            _639 = _593 - (_624 * _577);
            _640 = _594 - (_624 * _578);
            _644 = _625 - (_628 * _576);
            _645 = _626 - (_628 * _577);
            _646 = _627 - (_628 * _578);
            // [sem: invLength]
            _653 = rsqrt((dot(float3(_644, _645, _646), float3(_644, _645, _646)) * dot(float3(_638, _639, _640), float3(_638, _639, _640))) + 0.0001f) * dot(float3(_638, _639, _640), float3(_644, _645, _646));
            _663 = min(max(_604, 0.09803922f), 1.0f);
            _664 = _663 * _663;
            _665 = _664 * 0.5f;
            _666 = _664 * 2.0f;
            _667 = _628 + _624;
            _668 = _667 - _620;
            _677 = 1.0f / ((1.19f / _634) + (_634 * 0.36f));
            _682 = ((_677 * (0.6f - (_653 * 0.8f))) + 1.0f) * sqrt(saturate((_653 * 0.5f) + 0.5f));
            _688 = 1.0f - (sqrt(saturate(1.0f - (_682 * _682))) * _634);
            _689 = _688 * _688;
            _693 = 0.9534794f - ((_689 * _689) * (_688 * 0.9534794f));
            _694 = _677 * _682;
            _699 = (sqrt(1.0f - (_694 * _694)) * 0.5f) / _634;
            _700 = log2(_621);
            _701 = log2(_622);
            _702 = log2(_623);
            _714 = ((_693 * _693) * (exp2((((_668 * _668) * -0.5f) / (_665 * _665)) * 1.442695f) / (_664 * 1.2533141f))) * exp2(-5.741926f - (_653 * 5.265837f));
            _718 = _667 - (_620 * 4.0f);
            _728 = 1.0f - (_634 * 0.5f);
            _729 = _728 * _728;
            _733 = (_729 * _729) * (0.9534794f - (_634 * 0.4767397f));
            _735 = 0.9534794f - _733;
            _736 = 0.8f / _634;
            _749 = (((_735 * _735) * (_733 + 0.046520565f)) * (exp2((((_718 * _718) * -0.5f) / (_666 * _666)) * 1.442695f) / (_664 * 5.0132565f))) * exp2((_653 * 24.525816f) + -24.208424f);
            _759 = min(0.0f, (-0.0f - ((_714 * exp2(_700 * _699)) + (_749 * exp2(_736 * _700)))));
            _760 = min(0.0f, (-0.0f - ((_714 * exp2(_701 * _699)) + (_749 * exp2(_736 * _701)))));
            _761 = min(0.0f, (-0.0f - ((_714 * exp2(_702 * _699)) + (_749 * exp2(_736 * _702)))));
            _770 = saturate(abs(dot(float3(_592, _593, _594), float3(_576, _577, _578))));  // [sem: expr_sat]
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _779 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_770, _604, saturate(sqrt(exp2(_700 * 1.5f)))), 0.0f);
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _782 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_770, _604, saturate(sqrt(exp2(_701 * 1.5f)))), 0.0f);
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _785 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_770, _604, saturate(sqrt(exp2(_702 * 1.5f)))), 0.0f);
            _792 = min(0.99f, _779.x);
            _793 = min(0.99f, _782.x);
            _794 = min(0.99f, _785.x);
            _795 = min(0.99f, _779.y);
            _796 = min(0.99f, _782.y);
            _797 = min(0.99f, _785.y);
            _798 = _792 * _792;
            _799 = _793 * _793;
            _800 = _794 * _794;
            _801 = _795 * _795;
            _802 = _796 * _796;
            _803 = _797 * _797;
            _804 = _801 * _795;
            _805 = _802 * _796;
            _806 = _803 * _797;
            _807 = 1.0f - _798;
            _808 = 1.0f - _799;
            _809 = 1.0f - _800;
            _819 = _807 * _807;
            _820 = _808 * _808;
            _821 = _809 * _809;
            _822 = _819 * _807;
            _823 = _820 * _808;
            _824 = _821 * _809;
            _832 = min(max(_604, 0.18f), 0.6f);
            _833 = _832 * _832;
            _834 = _833 * 0.25f;
            _835 = _833 * 4.0f;
            _837 = (_793 + _792) + _794;
            _838 = _792 / _837;
            _839 = _793 / _837;
            _840 = _794 / _837;
            _841 = dot(float3(_833, _834, _835), float3(_838, _839, _840));
            _842 = _841 * _841;
            _845 = asin(min(max(_628, -1.0f), 1.0f)) + asin(min(max(_624, -1.0f), 1.0f));
            _846 = _845 * 0.5f;
            _847 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_838, _839, _840));
            _857 = _847 * _847;
            _880 = (_796 + _795) + _797;
            _884 = dot(float3(_833, _834, _835), float3((_795 / _880), (_796 / _880), (_797 / _880)));
            _888 = sqrt((_884 * _884) + (_842 * 2.0f));
            _906 = (_884 * 3.0f) + (_841 * 2.0f);
            _913 = (((_804 + _795) * ((_798 * 0.7f) + 1.0f)) * _888) / ((_906 * _804) + _795);
            _914 = (((_805 + _796) * ((_799 * 0.7f) + 1.0f)) * _888) / ((_906 * _805) + _796);
            _915 = (((_806 + _797) * ((_800 * 0.7f) + 1.0f)) * _888) / ((_906 * _806) + _797);
            _924 = _846 - (((_857 * (((_798 * 4.0f) * _801) + (_819 * 2.0f))) * (1.0f - ((_801 * 2.0f) / _819))) / _822);
            _931 = _846 - (((_857 * (((_799 * 4.0f) * _802) + (_820 * 2.0f))) * (1.0f - ((_802 * 2.0f) / _820))) / _823);
            _938 = _846 - (((_857 * (((_800 * 4.0f) * _803) + (_821 * 2.0f))) * (1.0f - ((_803 * 2.0f) / _821))) / _824);
            _966 = exp2((((_845 * -0.25f) * _846) / _842) * 1.442695f) * 1.4f;
            _967 = ((((((_804 * _798) / _822) + ((_795 * _798) / _807)) * 4.3982296f) * exp2((((_924 * _924) * -0.5f) / ((_913 * _913) + _842)) * 1.442695f)) + ((((_779.x + _759) * 0.25f) - _759) * 6.2831855f)) * _966;
            _968 = ((((((_805 * _799) / _823) + ((_796 * _799) / _808)) * 4.3982296f) * exp2((((_931 * _931) * -0.5f) / ((_914 * _914) + _842)) * 1.442695f)) + ((((_782.x + _760) * 0.25f) - _760) * 6.2831855f)) * _966;
            _969 = ((((((_806 * _800) / _824) + ((_797 * _800) / _809)) * 4.3982296f) * exp2((((_938 * _938) * -0.5f) / ((_915 * _915) + _842)) * 1.442695f)) + ((((_785.x + _761) * 0.25f) - _761) * 6.2831855f)) * _966;
            _970 = max(0.125f, _574);
            _984 = _574;
            _985 = _575;
            _986 = _576;
            _987 = _577;
            _988 = _578;
            _989 = _493;
            _990 = max(0.01f, ((_970 * (_621 - _967)) + _967));
            _991 = max(0.01f, (lerp(_968, _622, _970)));
            _992 = max(0.01f, (lerp(_969, _623, _970)));
          } else {
            _984 = _564;
            _985 = _565;
            _986 = _566;
            _987 = _567;
            _988 = _568;
            _989 = _493;
            _990 = 0.0f;
            _991 = 0.0f;
            _992 = 0.0f;
          }
        }
      }
    }
    _999 = -0.0f - min(0.0f, (-0.0f - _349));
    _1000 = -0.0f - min(0.0f, (-0.0f - _350));
    _1001 = -0.0f - min(0.0f, (-0.0f - _351));
    half2 _1003 = __3__36__0__0__g_sceneAO.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    if ((uint)_989 > (uint)11) {
      _1011 = ((uint)_989 < (uint)19);
      if (!((uint)_989 < (uint)20)) {
        _1014 = _1011;
        _1017 = _1014;
        _1018 = (_989 == 107);
      } else {
        _1017 = _1011;
        _1018 = true;
      }
    } else {
      if (!((uint)_989 > (uint)10)) {
        _1014 = false;
        _1017 = _1014;
        _1018 = (_989 == 107);
      } else {
        _1017 = false;
        _1018 = true;
      }
    }
    _1023 = (_989 == 65);
    _1024 = _1023 || (_1017 || ((_989 == 96) || _1018));
    _1027 = select(_1024, float(_985), 0.0f);
    _1029 = ((uint)(_989 & 24) > (uint)23);
    if (_1029) {
      _1031 = (_989 == 29);
      if (_1031) {
        _1036 = float(saturate(_280));
      } else {
        _1036 = 0.0f;
      }
      _1038 = (uint)((half)(_278 * 255.0h));
      if (_183) {
        _1047 = select(((_1038 & 128) != 0), 1.0f, 0.0f);
        _1048 = (((float)((uint)((uint)(_1038 & 127)))) * 0.007874016f);
      } else {
        _1047 = 0.0f;
        _1048 = 0.0f;
      }
      _1049 = half(_1048);
      _1053 = (_1049 > 0.99902344h);
      _1058 = _1049;
      _1059 = (half)(select(((_989 == 24) || _1031), 0.010002136f, _280));
      _1060 = (half)(select(_1053, 1.0f, _307));
      _1061 = (half)(select(_1053, 1.0f, _308));
      _1062 = (half)(select(_1053, 1.0f, _309));
      _1063 = _1047;
      _1064 = _1036;
    } else {
      _1058 = (half)(select(_1024, 0.0f, _985));
      _1059 = _280;
      _1060 = _307;
      _1061 = _308;
      _1062 = _309;
      _1063 = 0.0f;
      _1064 = 0.0f;
    }
    // RenoDX: >>> [Patch: FoliageColorCorrect] [Version: 1.16.00]
    // Description: Applies RenoDX foliage color shaping to foliage stencil materials (stencil ids
    //              12..18) right after the shader has resolved the direct-diffuse base color for the
    //              pixel. Vanilla foliage albedo reads flat and yellow-green under strong sun, so the
    //              helper re-balances hue and saturation. The shadow-map visibility term from
    //              g_sceneShadowColor is passed in so foliage that is shadowed is not pushed through
    //              the fully sunlit shaping curve, which would otherwise make shaded leaves glow.
    //              Gated by FOLIAGE_COLOR_CORRECT; at 0 the block does not execute.
    if (FOLIAGE_COLOR_CORRECT > 0.0f && ((uint)(_119 - 12) < 7u)) {
      float3 _rndx_fcBaseColor = float3(float(_1060), float(_1061), float(_1062));
      half4 _rndx_fcShadow = __3__36__0__0__g_sceneShadowColor.Load(int3(_101, _103, 0));
      float _rndx_fcShadowVis = saturate(dot(float3(_rndx_fcShadow.xyz), float3(0.2126f, 0.7152f, 0.0722f)));
      float3 _rndx_fcCorrected = FoliageColorCorrect(_rndx_fcBaseColor, _sunDirection.xyz, _rndx_fcShadowVis, float3(1.0f, 1.0f, 1.0f));
      float3 _rndx_fscColor = FoliageSelectiveColor(_rndx_fcCorrected);
      _1060 = half(_rndx_fscColor.x);
      _1061 = half(_rndx_fscColor.y);
      _1062 = half(_rndx_fscColor.z);
    }
    // RenoDX: <<< [Patch: FoliageColorCorrect]
    _1065 = _989 & -2;
    _1066 = (_1065 == 66);
    _1067 = (_989 == 53);
    _1068 = _1067 || _1066;
    _1069 = -0.0f - _424;
    _1070 = -0.0f - _425;
    _1071 = -0.0f - _426;
    _1072 = dot(float3(_1069, _1070, _1071), float3(_376, _377, _378));
    if (_1068) {
      _1076 = abs(_1072);
    } else {
      _1076 = _1072;
    }
    _1077 = saturate(_1076);  // [sem: _1076_sat]
    _1078 = _117.x & 128;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _1079 = (_1078 == 0);
    if (_1079) {
      if ((uint)_119 > (uint)51) {
        if (!(((_117.x & 125) == 105) || ((uint)_119 < (uint)68))) {
          _1099 = (_119 == 98);
        } else {
          _1099 = true;
        }
      } else {
        if ((uint)_119 > (uint)10) {
          if ((uint)_119 < (uint)20) {
            if (_205 == 14) {
              _1099 = (_119 == 98);
            } else {
              _1099 = true;
            }
          } else {
            if (!((_117.x & 125) == 105)) {
              _1099 = (_119 == 98);
            } else {
              _1099 = true;
            }
          }
        } else {
          _1099 = (_119 == 98);
        }
      }
    } else {
      _1099 = true;
    }
    [branch]
    if (_1029) {
      _1108 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_101, _103, 0)))).x) & 16777215)))) * 5.960465e-08f);
    } else {
      _1108 = _114.x;
    }
    _1136 = mad((_projToPrevProj[3].z), _1108, mad((_projToPrevProj[3].y), _382, ((_projToPrevProj[3].x) * _380))) + (_projToPrevProj[3].w);
    if (_1099) {
      _1143 = __3__36__0__0__g_velocity.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1149 = (_1143.x * 2.0f);
      _1150 = (_1143.y * 2.0f);
    } else {
      _1149 = (((mad((_projToPrevProj[0].z), _1108, mad((_projToPrevProj[0].y), _382, ((_projToPrevProj[0].x) * _380))) + (_projToPrevProj[0].w)) / _1136) - _380);
      _1150 = (((mad((_projToPrevProj[1].z), _1108, mad((_projToPrevProj[1].y), _382, ((_projToPrevProj[1].x) * _380))) + (_projToPrevProj[1].w)) / _1136) - _382);
    }
    _1154 = _nearFarProj.x / max(1e-07f, _1108);
    _1157 = (_1149 * 0.5f) + _111;
    _1158 = _112 - (_1150 * 0.5f);
    _1166 = select((((_1157 < 0.0f) || (_1157 > 1.0f)) || ((_1158 < 0.0f) || (_1158 > 1.0f))), 1.0f, 0.0f);
    _1172 = (_bufferSizeAndInvSize.x * _1157) + -0.5f;
    _1173 = (_bufferSizeAndInvSize.y * _1158) + -0.5f;
    _1176 = (int)(floor(_1172));
    _1177 = (int)(floor(_1173));
    _1178 = (float)((int)(_1176));
    _1179 = (float)((int)(_1177));
    _1184 = (_1178 + 0.5f) * _bufferSizeAndInvSize.z;
    _1185 = (_1179 + 0.5f) * _bufferSizeAndInvSize.w;
    _1188 = __3__36__0__0__g_depthOpaquePrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1184, _1185));  // [sem: _3__36__0__0__g_depthOpaquePrev_gather]
    _1211 = mad(((uint)((uint)(_1188.w)) >> 24), 16777216, mad(((uint)((uint)(_1188.z)) >> 24), 65536, mad(((uint)((uint)(_1188.y)) >> 24), 256, ((uint)((uint)(_1188.x)) >> 24))));
    if (_1079) {
      if ((uint)_119 > (uint)51) {
        if (!((_119 == 98) || (((_117.x & 125) == 105) || ((uint)_119 < (uint)68)))) {
          _1241 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        } else {
          _1241 = 0.0f;
        }
      } else {
        if ((uint)_119 > (uint)10) {
          if ((uint)_119 < (uint)20) {
            if (_205 == 14) {
              _1241 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1241 = 0.0f;
            }
          } else {
            if (!((_117.x & 125) == 105)) {
              _1241 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1241 = 0.0f;
            }
          }
        } else {
          _1241 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        }
      }
    } else {
      _1241 = 0.0f;
    }
    _1249 = _screenPercentage.x * 2.0f;
    _1250 = _1249 * abs(_111 + -0.5f);
    _1251 = _screenPercentage.y * 2.0f;
    _1252 = _1251 * abs(_112 + -0.5f);
    _1256 = sqrt(dot(float2(_1250, _1252), float2(_1250, _1252)) + 1.0f) * _1154;
    _1273 = _1249 * abs(_1157 + -0.5f);
    _1274 = _1251 * abs(_1158 + -0.5f);
    _1277 = sqrt(dot(float2(_1273, _1274), float2(_1273, _1274)) + 1.0f);
    _1292 = _367 || ((uint)((int)(_989) + (int)(-97)) < (uint)2);
    _1294 = _1154 * _1154;
    _1296 = (_1294 * select(_1292, 0.5f, 0.2f)) + 1.0f;
    _1300 = ((uint)((int)(_989) + (int)(-52)) < (uint)16);
    if (_1300) {
      _1319 = (1000.0f - (saturate((float)((bool)((sqrt(((_diffViewPosAccurate.x * _diffViewPosAccurate.x) + (_diffViewPosAccurate.y * _diffViewPosAccurate.y)) + (_diffViewPosAccurate.z * _diffViewPosAccurate.z)) * 50.0f) > 1.0f))) * 875.0f));
    } else {
      _1319 = 50.0f;
    }
    _1327 = select(_1300, 0.0f, ((max(0.0f, (_1154 + -1.0f)) * 0.1f) * _temporalReprojectionParams.y));
    _1332 = max(0.0f, (abs(_1256 - (_1277 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1188.x & 16777215)))) * 5.960465e-08f))) - _1241))) - _1327));
    _1333 = max(0.0f, (abs(_1256 - (_1277 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1188.y & 16777215)))) * 5.960465e-08f))) - _1241))) - _1327));
    _1334 = max(0.0f, (abs(_1256 - (_1277 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1188.z & 16777215)))) * 5.960465e-08f))) - _1241))) - _1327));
    _1335 = max(0.0f, (abs(_1256 - (_1277 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1188.w & 16777215)))) * 5.960465e-08f))) - _1241))) - _1327));
    _1336 = _1332 * _1332;
    _1337 = _1333 * _1333;
    _1338 = _1334 * _1334;
    _1339 = _1335 * _1335;
    _1341 = (-1.442695f / ((_1294 * 0.1f) + 1.0f)) * select(_1292, 0.2f, _1319);
    _1354 = select((_1336 > _1296), 0.0f, exp2(_1336 * _1341));
    _1355 = select((_1337 > _1296), 0.0f, exp2(_1337 * _1341));
    _1356 = select((_1338 > _1296), 0.0f, exp2(_1338 * _1341));
    _1357 = select((_1339 > _1296), 0.0f, exp2(_1339 * _1341));
    if (!_1029) {
      _1359 = _1211 & 127;
      _1360 = _1211 & 32512;
      _1361 = _1211 & 8323072;
      _1362 = _1211 & 2130706432;
      _1384 = ((uint)((int)(_1359) + (int)(-52)) < (uint)16);
      _1388 = ((uint)((int)(((uint)((uint)(_1211)) >> 8) & 127) + (int)(-52)) < (uint)16);
      _1392 = ((uint)((int)(((uint)((uint)(_1211)) >> 16) & 127) + (int)(-52)) < (uint)16);
      _1396 = ((uint)((int)(((uint)((uint)(_1211)) >> 24) & 127) + (int)(-52)) < (uint)16);
      _1409 = ((uint)((int)(_119) + (int)(-52)) < (uint)16);
      _1411 = (_1078 != 0) || _1409;
      _1420 = (_989 == 6);
      _1442 = ((uint)((int)(_989) + (int)(-105)) < (uint)3);
      _1480 = (_1354 * ((float)((bool)((_429 || ((_1359 != 53) && ((_1211 & 126) != 66))) && (!((_1411 ^ (((_1211 & 128) != 0) || _1384)) || ((_1420 ^ (_1359 == 6)) || ((_1409 ^ _1384) || (_1442 ^ ((_1359 == 107) || ((uint)((int)(_1359) + (int)(-105)) < (uint)2)))))))))));
      _1481 = (_1355 * ((float)((bool)((_429 || ((_1360 != 13568) && ((_1211 & 32256) != 16896))) && (!((_1411 ^ (((_1211 & 32768) != 0) || _1388)) || ((_1420 ^ (_1360 == 1536)) || ((_1409 ^ _1388) || (_1442 ^ (((_1211 & 32000) == 26880) || (_1360 == 27136)))))))))));
      _1482 = (_1356 * ((float)((bool)((_429 || ((_1361 != 3473408) && ((_1211 & 8257536) != 4325376))) && (!((_1411 ^ (((_1211 & 8388608) != 0) || _1392)) || ((_1420 ^ (_1361 == 393216)) || ((_1409 ^ _1392) || (_1442 ^ (((_1211 & 8192000) == 6881280) || (_1361 == 6946816)))))))))));
      _1483 = (_1357 * ((float)((bool)((_429 || ((_1362 != 889192448) && ((_1211 & 2113929216) != 1107296256))) && (!((_1411 ^ (((int)_1211 < (int)0) || _1396)) || ((_1420 ^ (_1362 == 100663296)) || ((_1409 ^ _1396) || (_1442 ^ (((_1211 & 2097152000) == 1761607680) || (_1362 == 1778384896)))))))))));
    } else {
      _1480 = _1354;
      _1481 = _1355;
      _1482 = _1356;
      _1483 = _1357;
    }
    _1485 = __3__36__0__0__g_sceneNormalPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1184, _1185));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather]
    _1504 = min(1.0f, ((((float)((uint)((uint)(_1485.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1505 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1485.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1506 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1485.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1508 = rsqrt(dot(float3(_1504, _1505, _1506), float3(_1504, _1505, _1506)));  // [sem: invLength]
    _1513 = saturate(dot(float3(_376, _377, _378), float3((_1508 * _1504), (_1508 * _1505), (_1508 * _1506))));  // [sem: expr_sat]
    _1528 = min(1.0f, ((((float)((uint)((uint)(_1485.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1529 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1485.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1530 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1485.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1532 = rsqrt(dot(float3(_1528, _1529, _1530), float3(_1528, _1529, _1530)));  // [sem: invLength]
    _1537 = saturate(dot(float3(_376, _377, _378), float3((_1532 * _1528), (_1532 * _1529), (_1532 * _1530))));  // [sem: expr_sat]
    _1552 = min(1.0f, ((((float)((uint)((uint)(_1485.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1553 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1485.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1554 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1485.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1556 = rsqrt(dot(float3(_1552, _1553, _1554), float3(_1552, _1553, _1554)));  // [sem: invLength]
    _1561 = saturate(dot(float3(_376, _377, _378), float3((_1556 * _1552), (_1556 * _1553), (_1556 * _1554))));  // [sem: expr_sat]
    _1576 = min(1.0f, ((((float)((uint)((uint)(_1485.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1577 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1485.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1578 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1485.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1580 = rsqrt(dot(float3(_1576, _1577, _1578), float3(_1576, _1577, _1578)));  // [sem: invLength]
    _1585 = saturate(dot(float3(_376, _377, _378), float3((_1580 * _1576), (_1580 * _1577), (_1580 * _1578))));  // [sem: expr_sat]
    _1588 = select((_1067 || (_1066 || _1292)), 0.01f, 1.0f);
    _1605 = _1172 - _1178;
    _1606 = _1173 - _1179;
    _1607 = 1.0f - _1605;
    _1608 = 1.0f - _1606;
    _1613 = (_1607 * _1606) * _1480;
    _1615 = (_1606 * _1605) * _1481;
    _1617 = (_1608 * _1605) * _1482;
    _1619 = (_1608 * _1607) * _1483;
    _1621 = saturate(select(_1029, 1.0f, (pow(_1561, _1588))) * _1613);  // [sem: expr_sat]
    _1622 = saturate(select(_1029, 1.0f, (pow(_1585, _1588))) * _1615);  // [sem: expr_sat]
    _1623 = saturate(select(_1029, 1.0f, (pow(_1537, _1588))) * _1617);  // [sem: expr_sat]
    _1624 = saturate(select(_1029, 1.0f, (pow(_1513, _1588))) * _1619);  // [sem: expr_sat]
    _1627 = asint(__3__37__0__0__g_structureCounterBuffer.Load(8));
    _1628 = WaveReadLaneFirst(_1627);
    [branch]
    if (!(_1628 == 0)) {
      _1636 = (((uint)(__3__36__0__0__g_tiledManyLightsMasks.Load(int3(((int)(_101) >> 5), ((int)(_103) >> 5), 0)))).x) & 4;
      _1638 = (uint)((uint)(_1636)) >> 2;
      if (!(_1636 == 0)) {
        _1646 = max((saturate(dot(float3(_999, _1000, _1001), float3(0.212671f, 0.71516f, 0.072169f)) * 0.01f) * 0.875f), _1166);
        _1647 = _1638;
      } else {
        _1646 = _1166;
        _1647 = _1638;
      }
    } else {
      _1646 = _1166;
      _1647 = 0;
    }
    // [sem: expr_sat]
    _1657 = saturate(max(_1646, (((_environmentLightingHistory[1].w) + _temporalReprojectionParams.w) + _renderParams.y)));
    _1658 = (uint)((uint)(_1177)) + (uint)(1);
    half4 _1660 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1176, _1658, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _1665 = (uint)((uint)(_1176)) + (uint)(1);
    half4 _1666 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1665, _1658, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _1671 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1665, _1177, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _1676 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1176, _1177, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _1681 = dot(float4(_1621, _1622, _1623, _1624), float4(1.0f, 1.0f, 1.0f, 1.0f));
    // [sem: expr_sat]
    _1690 = saturate(dot(float4(_1621, _1622, _1623, _1624), float4(float(_1660.w), float(_1666.w), float(_1671.w), float(_1676.w))) * (1.0f / max(1.0f, _1681)));
    _1695 = sqrt((_1150 * _1150) + (_1149 * _1149)) * 50.0f;
    if (_1300) {
      _1704 = saturate(1.0f - _1695);  // [sem: expr_sat]
    } else {
      _1704 = (1.0f - (saturate(_1695) * 0.5f));  // [sem: expr_sat]
    }
    _1708 = max(1.0f, (_bufferSizeAndInvSize.w * 2160.0f));
    _1709 = (_989 == 24);
    _1710 = select(_1709, 1.0f, _1690);
    _1712 = (_1710 * _1710) * 4.0f;
    _1715 = __3__36__0__0__g_manyLightsMoments.SampleLevel(__3__40__0__0__g_sampler, float2(_111, _112), 0.0f);  // [sem: _3__36__0__0__g_manyLightsMoments_sampleLod]
    _1720 = saturate(_1715.w);  // [sem: expr_sat]
    _1722 = 1.0f / max(1e-06f, _1681);
    _1724 = _1722 * _1621;
    _1725 = _1722 * _1622;
    _1726 = _1722 * _1623;
    _1727 = _1722 * _1624;
    if (!((_1722 * _1681) == 0.0f)) {
      // [sem: expr_sat]
      _1743 = saturate(saturate(max(_1657, (1.0f / ((min(31.0f, ((_1704 * 15.0f) * _1708)) * saturate(_1712)) + 1.0f))) + _renderParams.z));
    } else {
      _1743 = 1.0f;  // [sem: expr_sat]
    }
    _1785 = 1.0f / _exposure4.x;
    _1802 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_1727 * float(_1676.x)) + ((_1726 * float(_1671.x)) + ((_1724 * float(_1660.x)) + (_1725 * float(_1666.x))))))) * _exposure4.y)))));
    _1803 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_1727 * float(_1676.y)) + ((_1726 * float(_1671.y)) + ((_1724 * float(_1660.y)) + (_1725 * float(_1666.y))))))) * _exposure4.y)))));
    _1804 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_1727 * float(_1676.z)) + ((_1726 * float(_1671.z)) + ((_1724 * float(_1660.z)) + (_1725 * float(_1666.z))))))) * _exposure4.y)))));
    if (_renderParams.y == 0.0f) {
      if (_1066) {
        _1835 = _1802;
        _1836 = _1803;
        _1837 = _1804;
        _1838 = _1743;
        _1842 = _1835;
        _1843 = _1836;
        _1844 = _1837;
        _1845 = _1838;
        _1846 = saturate(_1690 + 0.0625f);  // [sem: expr_sat]
      } else {
        if (!_1067) {
          _1809 = dot(float3(_1802, _1803, _1804), float3(0.212671f, 0.71516f, 0.072169f));
          _1825 = ((min(_1809, _1715.y) / max(1e-06f, _1809)) * _1720) + saturate(1.0f - _1720);
          _1830 = saturate(((_1720 * 0.5f) * saturate(((_1715.x - _1809) * 2.0f) / max(1e-06f, _1715.x))) + _1743);  // [sem: expr_sat]
          _1831 = (_1825 * _1802);
          _1832 = (_1825 * _1803);
          _1833 = (_1825 * _1804);
        } else {
          _1830 = _1743;  // [sem: expr_sat]
          _1831 = _1802;
          _1832 = _1803;
          _1833 = _1804;
        }
        if (!_1709) {
          _1835 = _1831;
          _1836 = _1832;
          _1837 = _1833;
          _1838 = _1830;
          _1842 = _1835;
          _1843 = _1836;
          _1844 = _1837;
          _1845 = _1838;
          _1846 = saturate(_1690 + 0.0625f);  // [sem: expr_sat]
        } else {
          _1842 = _1831;
          _1843 = _1832;
          _1844 = _1833;
          _1845 = _1830;
          _1846 = 0.0f;  // [sem: expr_sat]
        }
      }
    } else {
      _1830 = _1743;  // [sem: expr_sat]
      _1831 = _1802;
      _1832 = _1803;
      _1833 = _1804;
      if (!_1709) {
        _1835 = _1831;
        _1836 = _1832;
        _1837 = _1833;
        _1838 = _1830;
        _1842 = _1835;
        _1843 = _1836;
        _1844 = _1837;
        _1845 = _1838;
        _1846 = saturate(_1690 + 0.0625f);  // [sem: expr_sat]
      } else {
        _1842 = _1831;
        _1843 = _1832;
        _1844 = _1833;
        _1845 = _1830;
        _1846 = 0.0f;  // [sem: expr_sat]
      }
    }
    _1853 = (_1845 * (_999 - _1842)) + _1842;
    _1854 = (_1845 * (_1000 - _1843)) + _1843;
    _1855 = (_1845 * (_1001 - _1844)) + _1844;
    __3__38__0__1__g_diffuseResultUAV[int2(_101, _103)] = float4((half)(half(_1853)), (half)(half(_1854)), (half)(half(_1855)), (half)(half(_1846)));
    _1862 = float(_1060);
    _1863 = float(_1061);
    _1864 = float(_1062);
    if (_989 == 52) {
      _1871 = saturate(((_1863 + _1862) + _1864) * 1.2f);  // [sem: expr_sat]
    } else {
      _1871 = 1.0f;  // [sem: expr_sat]
    }
    _1872 = float(_1058);
    _1878 = (0.7f / min(max(max(max(_1862, _1863), _1864), 0.01f), 0.7f)) * _1871;
    _1888 = (((_1878 * _1862) + -0.04f) * _1872) + 0.04f;
    _1889 = (((_1878 * _1863) + -0.04f) * _1872) + 0.04f;
    _1890 = (((_1878 * _1864) + -0.04f) * _1872) + 0.04f;
    _1892 = select(_1029, 1.0f, float(_1003.y));
    if (!_1029) {
      _1897 = (half)(saturate((half)(1.0h - (half)(_1003.x))));  // [sem: _3__36__0__0__g_sceneAO_load_derived]
    } else {
      _1897 = 1.0h;  // [sem: _3__36__0__0__g_sceneAO_load_derived]
    }
    _1898 = float(_1897);
    _1901 = (_989 == 98) || (_1065 == 96);
    if (!_1901) {
      bool __branch_chain_1902;
      if ((uint)((int)(_989) + (int)(-105)) < (uint)2) {
        _1909 = _183;
        __branch_chain_1902 = true;
      } else {
        if (!((uint)((int)(_989) + (int)(-11)) < (uint)9)) {
          _1909 = false;
          __branch_chain_1902 = true;
        } else {
          _1952 = 0.0h;
          _1953 = _989;
          _1954 = 0.0f;
          _1955 = 0.0f;
          _1956 = 0.0f;
          __branch_chain_1902 = false;
        }
      }
      if (__branch_chain_1902) {
        _1911 = (_989 == 107) || _1909;
        _1914 = select(_1911, 0.0f, _1058);
        if (_1911 || (!_1023)) {
          if (!(_989 == 33)) {
            if (_989 == 54) {
              if (!((((int)((uint)((_449 * 255.0f) + 0.5f))) & 112) == 0)) {
                _1937 = (uint)((_449 * 255.0f) + 0.5f);
                _1939 = ((uint)((uint)(_1937)) >> 4) & 7;
                if (!(_1939 == 0)) {
                  _1946 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_1939) + (int)(1)))];
                  _1952 = _1914;
                  _1953 = _989;
                  _1954 = min((1.0f - _1946.y), _1946.x);
                  _1955 = (((float)((uint)((uint)(_1937 & 15)))) * 0.06666667f);
                  _1956 = _1946.x;
                } else {
                  _1952 = _1914;
                  _1953 = _989;
                  _1954 = 0.0f;
                  _1955 = 0.0f;
                  _1956 = 0.0f;
                }
              } else {
                _1952 = _1914;
                _1953 = 52;
                _1954 = 0.0f;
                _1955 = 0.0f;
                _1956 = 0.0f;
              }
            } else {
              if (_989 == 55) {
                _1952 = _1914;
                _1953 = select(((((int)((uint)((_449 * 255.0f) + 0.5f))) & 127) == 0), 52, 55);
                _1954 = 0.0f;
                _1955 = 0.0f;
                _1956 = 0.0f;
              } else {
                _1952 = _1914;
                _1953 = _989;
                _1954 = 0.0f;
                _1955 = 0.0f;
                _1956 = 0.0f;
              }
            }
          } else {
            _1937 = (uint)((_449 * 255.0f) + 0.5f);
            _1939 = ((uint)((uint)(_1937)) >> 4) & 7;
            if (!(_1939 == 0)) {
              _1946 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_1939) + (int)(1)))];
              _1952 = _1914;
              _1953 = _989;
              _1954 = min((1.0f - _1946.y), _1946.x);
              _1955 = (((float)((uint)((uint)(_1937 & 15)))) * 0.06666667f);
              _1956 = _1946.x;
            } else {
              _1952 = _1914;
              _1953 = _989;
              _1954 = 0.0f;
              _1955 = 0.0f;
              _1956 = 0.0f;
            }
          }
        } else {
          _1952 = 0.0h;
          _1953 = 65;
          _1954 = 0.0f;
          _1955 = 0.0f;
          _1956 = 0.0f;
        }
      }
    } else {
      _1952 = 0.0h;
      _1953 = _989;
      _1954 = 0.0f;
      _1955 = 0.0f;
      _1956 = 0.0f;
    }
    _1958 = dot(float3(_424, _425, _426), float3(_376, _377, _378)) * 2.0f;
    _1962 = _424 - (_1958 * _376);
    _1963 = _425 - (_1958 * _377);
    _1964 = _426 - (_1958 * _378);
    _1970 = dot(float3(_424, _425, _426), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
    _1978 = (_421 * _421) + (_419 * _419);
    _1980 = sqrt(_1978 + (_420 * _420));
    _1982 = sqrt(max(0.0f, (dot(float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z)) - (_1970 * _1970)))) / (_1980 + 5.0f);
    _1986 = float(_1059);
    if ((_1059 < 0.099975586h) && (_1982 < 0.125f)) {
      _1996 = select((_1986 < 0.8f), ((__3__36__0__0__g_specularRayHitDistance.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_111, _112), 0.0f)).x), 0.0f) * rsqrt(dot(float3(_1962, _1963, _1964), float3(_1962, _1963, _1964)));
      _1997 = _1996 * _1962;
      _1998 = _1996 * _1963;
      _1999 = _1996 * _1964;
      _2004 = dot(float3(_1997, _1998, _1999), float3((-0.0f - _376), (-0.0f - _377), (-0.0f - _378))) * 2.0f;
      _2009 = ((_2004 * _376) + _419) + _1997;
      _2011 = ((_2004 * _377) + _420) + _1998;
      _2013 = ((_2004 * _378) + _421) + _1999;
      _2037 = mad((_viewProjRelative[0].z), _2013, mad((_viewProjRelative[0].y), _2011, (_2009 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w);
      _2041 = mad((_viewProjRelative[1].z), _2013, mad((_viewProjRelative[1].y), _2011, (_2009 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w);
      _2045 = mad((_viewProjRelative[2].z), _2013, mad((_viewProjRelative[2].y), _2011, (_2009 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w);
      _2049 = mad((_viewProjRelative[3].z), _2013, mad((_viewProjRelative[3].y), _2011, (_2009 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _2079 = mad((_projToPrevProj[3].w), _2049, mad((_projToPrevProj[3].z), _2045, mad((_projToPrevProj[3].y), _2041, ((_projToPrevProj[3].x) * _2037))));
      _2084 = ((mad((_projToPrevProj[0].w), _2049, mad((_projToPrevProj[0].z), _2045, mad((_projToPrevProj[0].y), _2041, ((_projToPrevProj[0].x) * _2037)))) / _2079) - (_2037 / _2049)) - _1149;
      _2085 = ((mad((_projToPrevProj[1].w), _2049, mad((_projToPrevProj[1].z), _2045, mad((_projToPrevProj[1].y), _2041, ((_projToPrevProj[1].x) * _2037)))) / _2079) - (_2041 / _2049)) - _1150;
      _2093 = max(_1982, saturate(sqrt((_2085 * _2085) + (_2084 * _2084))));
    } else {
      _2093 = _1982;
    }
    _2097 = _1953 & -2;
    _2100 = (_1953 == 29);
    _2102 = select((_2100 || ((_2097 == 24) || (_renderParams.y > 0.0f))), 1.0f, _1892);
    _2106 = float(_1952);
    _2111 = min(max((_cavityParams.y + -1.0f), 0.0f), 2.0f);
    // [sem: expr_sat]
    _2137 = saturate(saturate(1.0f - (((_2106 * _123) / max(0.001f, _1077)) * 0.001f)) * 1.25f) * saturate(((((-0.05f - (_2111 * 0.075f)) + max(0.02f, _1986)) + (saturate(_123 * 0.025f) * 0.1f)) * min(max((_123 + 1.0f), 5.0f), 50.0f)) * (1.0f - (saturate(_2106) * 0.75f)));
    if (_1953 == 64) {
      _2146 = ((saturate(_123 * 0.25f) * (_2137 + -0.39990234f)) + 0.39990234f);
    } else {
      _2146 = _2137;
    }
    _2148 = (_2111 * 16.0f) + 16.0f;
    _2154 = select((_2111 > 1.0f), 0.0f, saturate((1.0f / _2148) * (_123 - _2148)));
    if (_1953 == 105) {
      _2165 = 1.0f;
      _2169 = select((_1953 == 65), 0.0f, _2165);
    } else {
      if (!((uint)(_1953 & 24) > (uint)23)) {
        _2165 = select((_1953 == 107), 1.0f, ((_2154 + _2146) - (_2154 * _2146)));
        _2169 = select((_1953 == 65), 0.0f, _2165);
      } else {
        _2169 = 0.0f;
      }
    }
    _2176 = saturate(select((_lightingParams.y == 0.0f), 1.0f, (1.0f - _2169))) * _2093;
    if ((uint)_1953 > (uint)51) {
      if ((uint)_1953 < (uint)68) {
        if (_1953 == 66) {
          _2193 = (half)(max(0.099975586h, _1059));
          _2196 = _2193;
          _2197 = (half)(max(0.89990234h, _1059));
        } else {
          _2188 = max(0.099975586h, _1059);
          if ((_1953 == 53) || (_2097 == 66)) {
            _2193 = _2188;
            _2196 = _2193;
            _2197 = (half)(max(0.89990234h, _1059));
          } else {
            _2196 = _2188;
            _2197 = _2188;
          }
        }
      } else {
        _2182 = max(0.099975586h, _1059);
        _2196 = _2182;
        _2197 = _2182;
      }
    } else {
      _2188 = max(0.099975586h, _1059);
      if ((_1953 == 53) || (_2097 == 66)) {
        _2193 = _2188;
        _2196 = _2193;
        _2197 = (half)(max(0.89990234h, _1059));
      } else {
        _2196 = _2188;
        _2197 = _2188;
      }
    }
    _2198 = float(_2197);
    _2199 = _2198 * _2198;
    _2200 = _2199 * _2199;
    _2213 = (((_2200 * _1561) - _1561) * _1561) + 1.0f;
    _2214 = (((_2200 * _1585) - _1585) * _1585) + 1.0f;
    _2215 = (((_2200 * _1537) - _1537) * _1537) + 1.0f;
    _2216 = (((_2200 * _1513) - _1513) * _1513) + 1.0f;
    _2256 = (((((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1665, _1658, 0))).x) * saturate(_1615)) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1176, _1658, 0))).x) * saturate(_1613))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1665, _1177, 0))).x) * saturate(_1617))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1176, _1177, 0))).x) * saturate(_1619));
    _2261 = saturate(select(_2100, 1.0f, saturate((_2200 / (_2213 * _2213)) * _1561)) * _1613);  // [sem: expr_sat]
    _2262 = saturate(select(_2100, 1.0f, saturate((_2200 / (_2214 * _2214)) * _1585)) * _1615);  // [sem: expr_sat]
    _2263 = saturate(select(_2100, 1.0f, saturate((_2200 / (_2215 * _2215)) * _1537)) * _1617);  // [sem: expr_sat]
    _2264 = saturate(select(_2100, 1.0f, saturate((_2200 / (_2216 * _2216)) * _1513)) * _1619);  // [sem: expr_sat]
    _2274 = exp2(log2(saturate(max(float(((half)(((half)(1.0h - _1059)) * 0.75h)) * _1952), (1.0f - _1077)))) * 0.1f);
    _2277 = float(((half)(_1059 * _1059)) + 1.0009766h);
    _2293 = select(_2100, 1.0f, saturate(((_1708 * _1708) * _1712) * exp2((log2(float(_2196)) * 0.5f) * (((_2176 * 15.0f) * ((_2274 + _2277) / (_2277 - _2274))) + 1.0f))));
    if ((uint)((int)((uint)((uint)(_1953)) + (uint)(-12))) < (uint)9) {
      _2303 = ((saturate(_123 * 0.005f) * (_2293 + -1.0f)) + 1.0f);
    } else {
      _2303 = _2293;
    }
    _2331 = mad((_projToPrevProj[3].z), _114.x, mad((_projToPrevProj[3].y), _382, ((_projToPrevProj[3].x) * _380))) + (_projToPrevProj[3].w);
    _2334 = ((mad((_projToPrevProj[0].z), _114.x, mad((_projToPrevProj[0].y), _382, ((_projToPrevProj[0].x) * _380))) + (_projToPrevProj[0].w)) / _2331) - _380;
    _2335 = ((mad((_projToPrevProj[1].z), _114.x, mad((_projToPrevProj[1].y), _382, ((_projToPrevProj[1].x) * _380))) + (_projToPrevProj[1].w)) / _2331) - _382;
    _2336 = _1149 - _2334;
    _2337 = _1150 - _2335;
    if (_1099 || ((uint)((int)((uint)((uint)(_1953)) + (uint)(-52))) < (uint)16)) {
      _2351 = (31.0f - (saturate(sqrt((_2337 * _2337) + (_2336 * _2336)) * 500.0f) * 24.0f));
    } else {
      _2351 = 63.0f;
    }
    if (_renderParams.z > 0.0f) {
      _2366 = saturate((_2176 * 200.0f) + 0.125f);  // [sem: expr_sat]
    } else {
      _2366 = 0.0f;  // [sem: expr_sat]
    }
    _2367 = max(max(saturate(_1657), saturate(max(0.0f, (1.0f / (((_2303 * _2256) * _2351) + 1.0f))))), _2366);
    _2369 = ((uint)(_1953 & 24) > (uint)23);
    [branch]
    if (_2369) {
      _2380 = (_bufferSizeAndInvSize.x * ((_2334 * 0.5f) + _111)) + -0.5f;
      _2381 = (_bufferSizeAndInvSize.y * (_112 - (_2335 * 0.5f))) + -0.5f;
      _2384 = (int)(floor(_2380));
      _2385 = (int)(floor(_2381));
      _2386 = (float)((int)(_2384));
      _2387 = (float)((int)(_2385));
      [branch]
      if (_2100) {
        // [sem: _3__36__0__0__g_stencilPrev_gather]
        _2397 = __3__36__0__0__g_stencilPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(((_2386 + 0.5f) * _bufferSizeAndInvSize.z), ((_2387 + 0.5f) * _bufferSizeAndInvSize.w)));
        _2404 = mad(_2397.w, 16777216, mad(_2397.z, 65536, mad(_2397.y, 256, _2397.x)));
        _2433 = saturate(((float)((bool)(((uint)(_2404 & 24) > (uint)23) && ((_2404 & 127) != 24)))) * _2261);  // [sem: expr_sat]
        _2434 = saturate(((float)((bool)(((uint)(_2404 & 6144) > (uint)5888) && ((_2404 & 32512) != 6144)))) * _2262);  // [sem: expr_sat]
        // [sem: expr_sat]
        _2435 = saturate(((float)((bool)(((uint)(_2404 & 1572864) > (uint)1507328) && ((_2404 & 8323072) != 1572864)))) * _2263);
        // [sem: expr_sat]
        _2436 = saturate(((float)((bool)(((uint)(_2404 & 402653184) > (uint)385875968) && ((_2404 & 2130706432) != 402653184)))) * _2264);
        _2469 = max(saturate(min(max(((_1064 / (((_123 * _123) * 0.005f) + 1.0f)) + (_2176 * 500.0f)), 0.03125f), 0.5f) + _2367), saturate(1.0f - dot(float4(_2433, _2434, _2435, _2436), float4(1.0f, 1.0f, 1.0f, 1.0f))));
        _2470 = _2384;
        _2471 = _2385;
        _2472 = _2433;
        _2473 = _2434;
        _2474 = _2435;
        _2475 = _2436;
      } else {
        _2452 = _2380 - _2386;
        _2453 = _2381 - _2387;
        _2454 = 1.0f - _2452;
        _2455 = 1.0f - _2453;
        _2469 = (saturate((sqrt((_2335 * _2335) + (_2334 * _2334)) * 50.0f) + 0.125f) * 0.875f);
        _2470 = _2384;
        _2471 = _2385;
        _2472 = (_2454 * _2453);
        _2473 = (_2453 * _2452);
        _2474 = (_2455 * _2452);
        _2475 = (_2455 * _2454);
      }
    } else {
      _2469 = _2367;
      _2470 = _1176;
      _2471 = _1177;
      _2472 = _2261;
      _2473 = _2262;
      _2474 = _2263;
      _2475 = _2264;
    }
    _2476 = (_2106 > 0.2f);
    _2477 = (uint)((uint)(_2471)) + (uint)(1);
    half4 _2479 = __3__36__0__0__g_specularResultPrev.Load(int3(_2470, _2477, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2492 = ((float)((bool)(!(_2476 ^ ((half)(_2479.w) < 0.0h))))) * _2472;
    _2498 = (uint)((uint)(_2470)) + (uint)(1);
    half4 _2499 = __3__36__0__0__g_specularResultPrev.Load(int3(_2498, _2477, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2512 = ((float)((bool)(!(_2476 ^ ((half)(_2499.w) < 0.0h))))) * _2473;
    half4 _2522 = __3__36__0__0__g_specularResultPrev.Load(int3(_2498, _2471, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2535 = ((float)((bool)(!(_2476 ^ ((half)(_2522.w) < 0.0h))))) * _2474;
    half4 _2545 = __3__36__0__0__g_specularResultPrev.Load(int3(_2470, _2471, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2558 = ((float)((bool)(!(_2476 ^ ((half)(_2545.w) < 0.0h))))) * _2475;
    _2582 = 1.0f / max(((saturate(_123 * 0.0625f) * 0.000999f) + 1e-06f), dot(float4(_2492, _2512, _2535, _2558), float4(1.0f, 1.0f, 1.0f, 1.0f)));
    _2584 = -0.0f - (min(0.0f, (-0.0f - ((((_2492 * float(_2479.x)) + (_2512 * float(_2499.x))) + (_2535 * float(_2522.x))) + (_2558 * float(_2545.x))))) * _2582);
    _2586 = -0.0f - (min(0.0f, (-0.0f - ((((_2492 * float(_2479.y)) + (_2512 * float(_2499.y))) + (_2535 * float(_2522.y))) + (_2558 * float(_2545.y))))) * _2582);
    _2588 = -0.0f - (min(0.0f, (-0.0f - ((((_2492 * float(_2479.z)) + (_2512 * float(_2499.z))) + (_2535 * float(_2522.z))) + (_2558 * float(_2545.z))))) * _2582);
    _2589 = _2582 * min(0.0f, (-0.0f - ((((_2492 * abs(float(_2479.w))) + (_2512 * abs(float(_2499.w)))) + (_2535 * abs(float(_2522.w)))) + (_2558 * abs(float(_2545.w))))));
    _2598 = max(_2469, saturate((_1986 * _1986) * max(0.0f, saturate(((1.0f - _1892) - _1898) * 2.0f))));
    if ((_1953 != 53) && ((_2097 != 66) && (_renderParams.y == 0.0f))) {
      _2605 = dot(float3(_2584, _2586, _2588), float3(0.212671f, 0.71516f, 0.072169f));
      _2612 = ((min(_2605, _1715.z) / max(1e-09f, _2605)) * _1720) + saturate(1.0f - _1720);
      // [sem: expr_sat]
      _2633 = saturate(((_1720 * 0.5f) * saturate((((_1986 * 1000.0f) * _2176) * ((float(1.0h / ((half)(8.0h - ((half)(_1059 * 7.0h))))) * _1715.z) - _2605)) / max(1e-06f, _1715.z))) + _2598);
      _2634 = (_2612 * _2584);
      _2635 = (_2612 * _2586);
      _2636 = (_2612 * _2588);
    } else {
      _2633 = _2598;  // [sem: expr_sat]
      _2634 = _2584;
      _2635 = _2586;
      _2636 = _2588;
    }
    _2637 = _2634 * _exposure4.y;
    _2638 = _2635 * _exposure4.y;
    _2639 = _2636 * _exposure4.y;
    _2652 = ((max(0.001f, _1898) + _2589) * _2633) - _2589;
    _2662 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2102 * _353.x) - _2637) * _2633) + _2637))));
    _2663 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2102 * _353.y) - _2638) * _2633) + _2638))));
    _2664 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2102 * _353.z) - _2639) * _2633) + _2639))));
    __3__38__0__1__g_specularResultUAV[int2(_101, _103)] = float4((half)(half(_2662)), (half)(half(_2663)), (half)(half(_2664)), (half)(half(select(_2476, (-0.0f - _2652), _2652))));
    __3__38__0__1__g_specularSampleCountUAV[int2(_101, _103)] = saturate((_2256 * 0.984375f) + 0.015625f);
    _2676 = select(_2369, 0.0f, _2652);
    _2681 = float(half(lerp(_2676, 1.0f, _1986)));
    _2682 = (_2097 == 64);
    _2684 = ((int)(uint)(_184)) ^ 1;
    if ((((int)(uint)(_2682)) & _2684) == 0) {
      _2701 = saturate(exp2((_2681 * _2681) * (_123 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _2701 = select((_cavityParams.z > 0.0f), select(_184, 0.0f, _448), 1.0f);  // [sem: expr_sat]
    }
    _2704 = (_cavityParams.x == 0.0f);
    _2705 = select(_2704, 1.0f, _2701);
    _2706 = float(_202);
    _2707 = float(_203);
    _2708 = float(_204);
    if (_2682) {
      _2714 = (_2705 * _1888);
      _2715 = (_2705 * _1889);
      _2716 = (_2705 * _1890);
    } else {
      _2714 = _1888;
      _2715 = _1889;
      _2716 = _1890;
    }
    _2718 = _1862 * 0.875f;
    _2719 = _1863 * 0.875f;
    _2720 = _1864 * 0.875f;
    if (!(_1953 == 37)) {
      _2722 = (_1953 == 55);
      _2723 = select(_2722, _2718, _2714);
      _2724 = select(_2722, _2719, _2715);
      _2725 = select(_2722, _2720, _2716);
      if ((_1953 == 53) || (_2097 == 66)) {
        // [sem: _3__36__0__0__g_hairBrdfLookup_sampleLod]
        _2740 = __3__36__0__0__g_hairBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, (1.0f - saturate(abs(dot(float3(_986, _987, _988), float3(_424, _425, _426)))))), (1.0f - max(0.75f, (_2681 * 2.0f)))), 0.0f);
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _2746 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1077), (1.0f - _2681)), 0.0f);
        _2753 = ((_2746.x - _2740.x) * _984) + _2740.x;
        _2754 = ((_2746.y - _2740.y) * _984) + _2740.y;
        _2756 = (_2753 * 0.01f) + _2754;
        _2923 = _2753;
        _2924 = _2754;
        _2925 = _2756;
        _2926 = _2756;
        _2927 = _2756;
      } else {
        if ((uint)((int)((uint)((uint)(_1953)) + (uint)(-97))) < (uint)2) {
          if (!(abs(_2707) > 0.99f)) {
            _2764 = -0.0f - _2708;
            _2766 = rsqrt(dot(float3(_2764, 0.0f, _2706), float3(_2764, 0.0f, _2706)));  // [sem: invLength]
            _2770 = (_2766 * _2764);
            _2771 = (_2766 * _2706);
          } else {
            _2770 = 1.0f;
            _2771 = 0.0f;
          }
          _2773 = -0.0f - (_2707 * _2771);
          _2776 = (_2771 * _2706) - (_2770 * _2708);
          _2777 = _2770 * _2707;
          _2779 = rsqrt(dot(float3(_2773, _2776, _2777), float3(_2773, _2776, _2777)));  // [sem: invLength]
          _2787 = _viewPos.x + _419;
          _2788 = _viewPos.y + _420;
          _2789 = _viewPos.z + _421;
          // [sem: _3__36__0__0__g_blueNoise_sampleLod]
          _2794 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_2770, 0.0f, _2771), float3(_2787, _2788, _2789)), dot(float3((_2779 * _2773), (_2776 * _2779), (_2779 * _2777)), float3(_2787, _2788, _2789))), 0.0f);
          _2798 = _2794.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _2799 = _2794.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _2800 = _2794.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _2802 = rsqrt(dot(float3(_2798, _2799, _2800), float3(_2798, _2799, _2800)));  // [sem: invLength]
          _2806 = (_2798 * _2802) + _376;
          _2807 = (_2799 * _2802) + _377;
          _2808 = (_2800 * _2802) + _378;
          _2810 = rsqrt(dot(float3(_2806, _2807, _2808), float3(_2806, _2807, _2808)));  // [sem: invLength]
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _2823 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1077), (1.0f - _2681)), 0.0f);
          _2830 = _2823.y + (exp2(log2(saturate(dot(float3(_1069, _1070, _1071), float3((_2806 * _2810), (_2807 * _2810), (_2808 * _2810))))) * 512.0f) * 20.0f);
          _2923 = _2823.x;
          _2924 = _2823.y;
          _2925 = (_2830 + (_2823.x * _2723));
          _2926 = (_2830 + (_2823.x * _2724));
          _2927 = (_2830 + (_2823.x * _2725));
        } else {
          _2835 = _2723;
          _2836 = _2724;
          _2837 = _2725;
          if (_2682) {
            if (_1953 == 65) {
              _2906 = _2835;
              _2907 = _2836;
              _2908 = _2837;
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _2913 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1077), (1.0f - _2681)), 0.0f);
              _2923 = _2913.x;
              _2924 = _2913.y;
              _2925 = ((_2913.x * _2906) + _2913.y);
              _2926 = ((_2913.x * _2907) + _2913.y);
              _2927 = ((_2913.x * _2908) + _2913.y);
            } else {
              _2843 = min(0.99f, _1077);
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _2848 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_2843, saturate(1.0f - (_2681 * 1.33f))), 0.0f);
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _2853 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_2843, saturate(1.0f - (_2681 * 0.47998047f))), 0.0f);
              _2857 = (_2853.x + _2848.x) * 0.5f;
              _2859 = (_2853.y + _2848.y) * 0.5f;
              _2923 = _2857;
              _2924 = _2859;
              _2925 = ((_2857 * _2835) + _2859);
              _2926 = ((_2857 * _2836) + _2859);
              _2927 = ((_2857 * _2837) + _2859);
            }
          } else {
            if ((_1953 == 33) || (_1953 == 54)) {
              _2876 = max(dot(float3(_1862, _1863, _1864), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
              _2880 = sqrt(_1862) - _2876;
              _2881 = sqrt(_1863) - _2876;
              _2882 = sqrt(_1864) - _2876;
              _2889 = saturate(1.0f - (pow(_1077, 4.0f)));  // [sem: expr_sat]
              _2906 = ((((_2880 * _1954) + _2876) + (_2889 * (_2880 * (_1956 - _1954)))) * _1955);
              _2907 = ((((_2881 * _1954) + _2876) + ((_2881 * (_1956 - _1954)) * _2889)) * _1955);
              _2908 = ((((_2882 * _1954) + _2876) + ((_2882 * (_1956 - _1954)) * _2889)) * _1955);
            } else {
              _2906 = _2835;
              _2907 = _2836;
              _2908 = _2837;
            }
            // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
            _2913 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1077), (1.0f - _2681)), 0.0f);
            _2923 = _2913.x;
            _2924 = _2913.y;
            _2925 = ((_2913.x * _2906) + _2913.y);
            _2926 = ((_2913.x * _2907) + _2913.y);
            _2927 = ((_2913.x * _2908) + _2913.y);
          }
        }
      }
    } else {
      _2835 = _2718;
      _2836 = _2719;
      _2837 = _2720;
      if (_2682) {
        if (_1953 == 65) {
          _2906 = _2835;
          _2907 = _2836;
          _2908 = _2837;
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _2913 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1077), (1.0f - _2681)), 0.0f);
          _2923 = _2913.x;
          _2924 = _2913.y;
          _2925 = ((_2913.x * _2906) + _2913.y);
          _2926 = ((_2913.x * _2907) + _2913.y);
          _2927 = ((_2913.x * _2908) + _2913.y);
        } else {
          _2843 = min(0.99f, _1077);
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _2848 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_2843, saturate(1.0f - (_2681 * 1.33f))), 0.0f);
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _2853 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_2843, saturate(1.0f - (_2681 * 0.47998047f))), 0.0f);
          _2857 = (_2853.x + _2848.x) * 0.5f;
          _2859 = (_2853.y + _2848.y) * 0.5f;
          _2923 = _2857;
          _2924 = _2859;
          _2925 = ((_2857 * _2835) + _2859);
          _2926 = ((_2857 * _2836) + _2859);
          _2927 = ((_2857 * _2837) + _2859);
        }
      } else {
        if ((_1953 == 33) || (_1953 == 54)) {
          _2876 = max(dot(float3(_1862, _1863, _1864), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
          _2880 = sqrt(_1862) - _2876;
          _2881 = sqrt(_1863) - _2876;
          _2882 = sqrt(_1864) - _2876;
          _2889 = saturate(1.0f - (pow(_1077, 4.0f)));  // [sem: expr_sat]
          _2906 = ((((_2880 * _1954) + _2876) + (_2889 * (_2880 * (_1956 - _1954)))) * _1955);
          _2907 = ((((_2881 * _1954) + _2876) + ((_2881 * (_1956 - _1954)) * _2889)) * _1955);
          _2908 = ((((_2882 * _1954) + _2876) + ((_2882 * (_1956 - _1954)) * _2889)) * _1955);
        } else {
          _2906 = _2835;
          _2907 = _2836;
          _2908 = _2837;
        }
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _2913 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1077), (1.0f - _2681)), 0.0f);
        _2923 = _2913.x;
        _2924 = _2913.y;
        _2925 = ((_2913.x * _2906) + _2913.y);
        _2926 = ((_2913.x * _2907) + _2913.y);
        _2927 = ((_2913.x * _2908) + _2913.y);
      }
    }
    _2930 = select((_2682 || _2369), 1.0f, _2705) * _1785;
    _2937 = _1853 * _1785;
    _2938 = _1854 * _1785;
    _2939 = _1855 * _1785;
    if (_1300 || _1029) {
      _3193 = _1058;
      _3194 = _1059;
      _3195 = _1060;
      _3196 = _1061;
      _3197 = _1062;
      _3198 = _2676;
      if (_1068) {
        _3204 = _3198;
        _3205 = _3195;
        _3206 = _3196;
        _3207 = _3197;
        _3208 = _3194;
        _3209 = _3193;
        _3210 = 0.0f;
        _3211 = 0.0f;
        _3212 = 0.0f;
        _3213 = (_2937 * _990);
        _3214 = (_2938 * _991);
        _3215 = (_2939 * _992);
      } else {
        _3204 = _3198;
        _3205 = _3195;
        _3206 = _3196;
        _3207 = _3197;
        _3208 = _3194;
        _3209 = _3193;
        _3210 = _2937;
        _3211 = _2938;
        _3212 = _2939;
        _3213 = 0.0f;
        _3214 = 0.0f;
        _3215 = 0.0f;
      }
    } else {
      if (!((_989 == 6) || ((_1065 == 106) || (((uint)((int)(_989) + (int)(-27)) < (uint)2) || ((_989 == 105) || (_989 == 26)))))) {
        if (!(_989 == 7)) {
          _2960 = exp2(log2(_2676) * (saturate(_123 * 0.03125f) + 1.0f));
          // [sem: _3__36__0__0__g_puddleMask_sampleLod]
          _2970 = __3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_111, _112), 0.0f);
          bool __branch_chain_2954;
          if ((_989 == 15) || ((_1065 == 12) || ((_989 & -4) == 16))) {
            _2989 = false;
            _2990 = true;
            __branch_chain_2954 = true;
          } else {
            if (!((uint)_989 > (uint)10)) {
              _2989 = true;
              _2990 = false;
              __branch_chain_2954 = true;
            } else {
              if ((uint)_989 < (uint)20) {
                _2989 = false;
                _2990 = false;
                __branch_chain_2954 = true;
              } else {
                if (!(_989 == 97)) {
                  _2989 = (_989 != 107);
                  _2990 = false;
                  __branch_chain_2954 = true;
                } else {
                  _3182 = _1872;
                  _3183 = _1986;
                  _3184 = _1862;
                  _3185 = _1863;
                  _3186 = _1864;
                  __branch_chain_2954 = false;
                }
              }
            }
          }
          if (__branch_chain_2954) {
            if (_2970.w < 1.0f) {
              if ((_weatherCheckFlag & 5) == 5) {
                _3000 = (_989 == 36);
                if (!_3000) {
                  // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                  _3020 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((_viewPos.x + _419) / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((_viewPos.z + _421) / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                  _3026 = _3020.x;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3027 = _3020.y;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3028 = _3020.z;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3029 = _3020.w;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                } else {
                  _3026 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3027 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3028 = 0.1f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3029 = 0.5f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                }
                _3036 = 1.0f - saturate(((_viewPos.y + _420) - _paramGlobalSand.x) / _paramGlobalSand.y);
                if (!(_3036 <= 0.0f)) {
                  _3039 = saturate(_2960);  // [sem: _2960_sat]
                  _3052 = ((_3027 * 0.33951f) + (_3026 * 0.61312f)) + (_3028 * 0.04737f);
                  _3053 = ((_3027 * 0.91636f) + (_3026 * 0.0702f)) + (_3028 * 0.01345f);
                  _3054 = ((_3027 * 0.10958f) + (_3026 * 0.02062f)) + (_3028 * 0.8698f);
                  _3059 = select(_2990, 1.0f, ((float)((bool)(saturate(dot(float3(_376, _377, _378), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                  if (_enableSandAO == 1) {
                    _3064 = 1.0f - _2970.x;  // [sem: _3__36__0__0__g_puddleMask_sampleLod_derived]
                    if (_3000) {
                      _3095 = ((((_3064 * 10.0f) * _3029) * _3036) * _3039);
                      _3098 = _3052;
                      _3099 = _3053;
                      _3100 = _3054;
                      _3101 = saturate(_3095);  // [sem: _3095_sat]
                    } else {
                      _3075 = saturate(_3029 + -0.5f);  // [sem: expr_sat]
                      _3098 = _3052;
                      _3099 = _3053;
                      _3100 = _3054;
                      // [sem: _3095_sat]
                      _3101 = ((((_3075 * 2.0f) * max((_3059 * _2970.x), min((_3039 * ((_2970.x * 7.0f) + 3.0f)), (_3075 * 40.0f)))) + (((_3064 * 10.0f) * _3039) * saturate((0.5f - _3029) * 2.0f))) * _3036);
                    }
                  } else {
                    _3093 = ((_3036 * _3029) * _2970.x) * _3059;
                    if (_3000) {
                      _3095 = _3093;
                      _3098 = _3052;
                      _3099 = _3053;
                      _3100 = _3054;
                      _3101 = saturate(_3095);  // [sem: _3095_sat]
                    } else {
                      _3098 = _3052;
                      _3099 = _3053;
                      _3100 = _3054;
                      _3101 = _3093;  // [sem: _3095_sat]
                    }
                  }
                } else {
                  _3098 = 0.0f;
                  _3099 = 0.0f;
                  _3100 = 0.0f;
                  _3101 = 0.0f;  // [sem: _3095_sat]
                }
                _3105 = ((1.0f - _2970.w) * (1.0f - _2970.y)) * _3101;
                _3106 = (_3105 > 0.0001f);
                if (_3106) {
                  if (_2990) {
                    _3109 = saturate(_3105);  // [sem: _3105_sat]
                    _3136 = (((sqrt(_3098 * _1862) - _1862) * _3109) + _1862);
                    _3137 = (((sqrt(_3099 * _1863) - _1863) * _3109) + _1863);
                    _3138 = (((sqrt(_3100 * _1864) - _1864) * _3109) + _1864);
                  } else {
                    _3136 = ((_3105 * (_3098 - _1862)) + _1862);
                    _3137 = ((_3105 * (_3099 - _1863)) + _1863);
                    _3138 = ((_3105 * (_3100 - _1864)) + _1864);
                  }
                } else {
                  _3136 = _1862;
                  _3137 = _1863;
                  _3138 = _1864;
                }
                if (_3000 && _3106) {
                  if (_2990) {
                    _3153 = (((sqrt(_1986 * 0.25f) - _1986) * saturate(_3105)) + _1986);
                  } else {
                    _3153 = ((_3105 * (0.25f - _1986)) + _1986);
                  }
                } else {
                  _3153 = _1986;
                }
                _3154 = saturate(_3136);  // [sem: _3136_sat]
                _3155 = saturate(_3137);  // [sem: _3137_sat]
                _3156 = saturate(_3138);  // [sem: _3138_sat]
                _3161 = (_3153 * (1.0f - _2960)) + _2960;
                _3164 = ((_3153 - _3161) * _2970.y) + _3161;
                _3171 = (((_2960 * _2960) * _2970.z) * ((float)((bool)(_2989)))) * saturate(dot(float3(_376, _377, _378), float3(0.0f, 1.0f, 0.0f)));
                _3172 = _3171 * -0.5f;
                _3182 = (_1872 - (_2960 * _1872));
                _3183 = (_3164 - (_3171 * _3164));
                _3184 = ((_3172 * _3154) + _3154);
                _3185 = ((_3172 * _3155) + _3155);
                _3186 = ((_3172 * _3156) + _3156);
              } else {
                _3182 = _1872;
                _3183 = _1986;
                _3184 = _1862;
                _3185 = _1863;
                _3186 = _1864;
              }
            } else {
              _3182 = _1872;
              _3183 = _1986;
              _3184 = _1862;
              _3185 = _1863;
              _3186 = _1864;
            }
          }
          _3193 = (half)(half(_3182));
          _3194 = (half)(half(_3183));
          _3195 = (half)(half(_3184));
          _3196 = (half)(half(_3185));
          _3197 = (half)(half(_3186));
          _3198 = _2960;
        } else {
          _3193 = _1058;
          _3194 = _1059;
          _3195 = _1060;
          _3196 = _1061;
          _3197 = _1062;
          _3198 = _2676;
        }
        if (_1068) {
          _3204 = _3198;
          _3205 = _3195;
          _3206 = _3196;
          _3207 = _3197;
          _3208 = _3194;
          _3209 = _3193;
          _3210 = 0.0f;
          _3211 = 0.0f;
          _3212 = 0.0f;
          _3213 = (_2937 * _990);
          _3214 = (_2938 * _991);
          _3215 = (_2939 * _992);
        } else {
          _3204 = _3198;
          _3205 = _3195;
          _3206 = _3196;
          _3207 = _3197;
          _3208 = _3194;
          _3209 = _3193;
          _3210 = _2937;
          _3211 = _2938;
          _3212 = _2939;
          _3213 = 0.0f;
          _3214 = 0.0f;
          _3215 = 0.0f;
        }
      } else {
        _3204 = _2676;
        _3205 = _1060;
        _3206 = _1061;
        _3207 = _1062;
        _3208 = _1059;
        _3209 = _1058;
        _3210 = _2937;
        _3211 = _2938;
        _3212 = _2939;
        _3213 = 0.0f;
        _3214 = 0.0f;
        _3215 = 0.0f;
      }
    }
    half4 _3217 = __3__36__0__0__g_sceneShadowColor.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_sceneShadowColor_load]
    [branch]
    if (_1029) {
      _3224 = __3__36__0__0__g_sceneNormal.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
      _3240 = min(1.0f, ((((float)((uint)((uint)(_3224.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3241 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_3224.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3242 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_3224.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3244 = rsqrt(dot(float3(_3240, _3241, _3242), float3(_3240, _3241, _3242)));  // [sem: invLength]
      _3252 = (half)(half(_3244 * _3240));
      _3253 = (half)(half(_3244 * _3241));
      _3254 = (half)(half(_3244 * _3242));
    } else {
      _3252 = _321;
      _3253 = _322;
      _3254 = _323;
    }
    _3257 = (_sunDirection.y > 0.0f);
    if ((_3257) || ((!(_3257)) && (_sunDirection.y > _moonDirection.y))) {
      _3269 = _sunDirection.x;
      _3270 = _sunDirection.y;
      _3271 = _sunDirection.z;
    } else {
      _3269 = _moonDirection.x;
      _3270 = _moonDirection.y;
      _3271 = _moonDirection.z;
    }
    if ((_3257) || ((!(_3257)) && (_sunDirection.y > _moonDirection.y))) {
      _3291 = _precomputedAmbient7.y;
    } else {
      _3291 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
    }
    _3298 = _viewPos.x + _419;
    _3299 = _viewPos.y + _420;
    _3300 = _3299 + _earthRadius;
    _3301 = _viewPos.z + _421;
    _3307 = sqrt(((_3298 * _3298) + (_3300 * _3300)) + (_3301 * _3301));
    _3312 = dot(float3((_3298 / _3307), (_3300 / _3307), (_3301 / _3307)), float3(_3269, _3270, _3271));
    _3318 = min(max(((_3307 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
    _3326 = max(_3318, 0.0f);
    _3333 = (-0.0f - sqrt((_3326 + (_earthRadius * 2.0f)) * _3326)) / (_3326 + _earthRadius);
    if (_3312 > _3333) {
      _3356 = ((exp2(log2(saturate((_3312 - _3333) / (1.0f - _3333))) * 0.2f) * 0.4921875f) + 0.50390625f);
    } else {
      _3356 = ((exp2(log2(saturate((_3333 - _3312) / (_3333 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
    }
    // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
    _3361 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3318 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _3356), 0.0f);
    _3383 = ((_3361.y * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
    _3401 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _3361.x) + _3383) * -1.442695f);
    _3402 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _3361.x) + _3383) * -1.442695f);
    _3403 = exp2(((((_ozoneRatio * 2.1360002e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f)) * _3361.x) + _3383) * -1.442695f);
    _3419 = sqrt(_1978);
    _3427 = (_cloudAltitude - (max(((_3419 * _3419) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
    _3439 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_3270 > 0.0f))) - (int)((int)(uint)((int)(_3270 < 0.0f)))))) * 0.5f))) + _3427;
    if (_420 < _3427) {
      _3442 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3269, _3270, _3271));
      _3448 = select((abs(_3442) < 1e-08f), 1e+08f, ((_3439 - dot(float3(0.0f, 1.0f, 0.0f), float3(_419, _420, _421))) / _3442));
      _3454 = ((_3448 * _3269) + _419);
      _3455 = _3439;
      _3456 = ((_3448 * _3271) + _421);
    } else {
      _3454 = _419;
      _3455 = _420;
      _3456 = _421;
    }
    _3476 = saturate(abs(_3270) * 4.0f);  // [sem: expr_sat]
    _3478 = (_3476 * _3476) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_3454 * 5e-05f) + 0.5f), ((_3455 - _3427) / _cloudThickness), ((_3456 * 5e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
    _3485 = ((1.0f - _3478) * saturate(((_420 - _cloudThickness) - _3427) * 0.1f)) + _3478;
    _3486 = _3485 * (((_3402 * 0.33951f) + (_3401 * 0.61312f)) + (_3403 * 0.04737f));
    _3487 = _3485 * (((_3402 * 0.91636f) + (_3401 * 0.0702f)) + (_3403 * 0.01345f));
    _3488 = _3485 * (((_3402 * 0.10958f) + (_3401 * 0.02062f)) + (_3403 * 0.8698f));
    // RenoDX: >>> [Patch: DirectLightMatrixFix] [Version: 1.16.00]
    // Description: The direct beam's atmospheric transmittance is converted to working space on the three
    //              lines above, and the game converts the result a second time here. The conversion's rows
    //              sum to one, so applying it twice keeps the overall brightness and only pulls the colour
    //              toward grey, which strips the warmth the transmittance itself carries. On uses the single
    //              conversion and keeps every other factor, including the cloud blend already folded into
    //              the inputs and the trailing sun/moon scalar, so low-sun light keeps the colour of the sky
    //              it arrives through. Off is the exact vanilla expression.
    _3504 = (DIRECT_LIGHT_MATRIX_FIX != 0.f)
                ? (_3486 * _3291)
                : ((((_3486 * 0.61312f) + (_3487 * 0.33951f)) + (_3488 * 0.04737f)) * _3291);
    _3505 = (DIRECT_LIGHT_MATRIX_FIX != 0.f)
                ? (_3487 * _3291)
                : ((((_3486 * 0.0702f) + (_3487 * 0.91636f)) + (_3488 * 0.01345f)) * _3291);
    _3506 = (DIRECT_LIGHT_MATRIX_FIX != 0.f)
                ? (_3488 * _3291)
                : ((((_3486 * 0.02062f) + (_3487 * 0.10958f)) + (_3488 * 0.8698f)) * _3291);
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
          float3(_3504, _3505, _3506), DawnDuskFactor(_sunDirection.y));
      _3504 = _rndx_dd_direct.x;
      _3505 = _rndx_dd_direct.y;
      _3506 = _rndx_dd_direct.z;
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
      bool _rndx_purkinje_is_moon = !_3257 && (_sunDirection.y <= _moonDirection.y);
      float3 _rndx_purkinje_light = ApplyPurkinjeShift(
          float3(_3504, _3505, _3506), _sunDirection.y, _rndx_purkinje_is_moon);
      _3504 = _rndx_purkinje_light.x;
      _3505 = _rndx_purkinje_light.y;
      _3506 = _rndx_purkinje_light.z;
    }
    // RenoDX: <<< [Patch: PurkinjeDirectLight]
    _3512 = float(_1003.x);  // [sem: _3__36__0__0__g_sceneAO_load_derived]
    _3513 = float(_3217.x);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _3514 = float(_3217.y);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _3515 = float(_3217.z);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _3516 = float(_3205);
    _3517 = float(_3206);
    _3518 = float(_3207);
    if (!_1901) {
      _3524 = (_183 && ((uint)((int)(_989) + (int)(-105)) < (uint)2));
    } else {
      _3524 = true;
    }
    _3526 = float(max(0.010002136h, _3208));
    _3527 = float(_3209);
    _3530 = (_989 == 107);
    _3533 = _1023 || (((uint)((int)(_989) + (int)(-11)) < (uint)9) || (_3530 || _3524));
    if ((_1065 == 26) || ((_989 == 105) || (_989 == 28))) {
      _3545 = true;
      _3547 = _3545;
      _3548 = _3530;
    } else {
      _3542 = (_989 == 106);
      if (!(_989 == 19)) {
        _3545 = _3542;
        _3547 = _3545;
        _3548 = _3530;
      } else {
        _3547 = _3542;
        _3548 = true;
      }
    }
    _3549 = float(_3252);
    _3550 = float(_3253);
    _3551 = float(_3254);
    _3553 = __3__36__0__0__g_sceneDecalMask.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_sceneDecalMask_load]
    if (_989 == 97) {
      _3565 = (((float)((uint16_t)((int16_t)((uint16_t)((int16_t)(_3553.x)) >> 2)))) * 0.015873017f);
      _3566 = ((int)((uint)((uint)((int)(min16uint)((int)((int)(_3553.x) & 2)))) >> 1) + (int)(97));
      _3567 = 0.0f;
      _3568 = 0.0f;
      _3569 = 0.0f;
      _3570 = 0.0f;
    } else {
      _3565 = select(_3533, _3527, 0.0f);
      _3566 = _989;
      _3567 = _495;
      _3568 = _496;
      _3569 = _497;
      _3570 = _498;
    }
    _3575 = float(saturate(_203));
    _3576 = _3575 * _3575;
    _3577 = _3576 * _3576;
    _3578 = _3577 * _3577;
    _3589 = ((_3578 * _3578) * select(((_989 == 29) || (_3547 || _3548)), 0.0f, 1.0f)) * (((float4)(__3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_bufferSizeAndInvSize.z * _106), (_bufferSizeAndInvSize.w * _107)), 0.0f))).y);
    _3594 = _3549 - (_3589 * _3549);
    _3595 = (_3589 * (1.0f - _3550)) + _3550;
    _3596 = _3551 - (_3589 * _3551);
    _3598 = rsqrt(dot(float3(_3594, _3595, _3596), float3(_3594, _3595, _3596)));  // [sem: invLength]
    _3599 = _3594 * _3598;
    _3600 = _3595 * _3598;
    _3601 = _3596 * _3598;
    _3604 = (_3566 == 37) || (_3566 == 55);
    _3606 = select((_3533 || _3604), 0.0f, _3527);
    _3607 = (_3566 == 52);
    if (_3607) {
      _3614 = saturate(((_3517 + _3516) + _3518) * 1.2f);  // [sem: expr_sat]
    } else {
      _3614 = 1.0f;  // [sem: expr_sat]
    }
    _3620 = (0.7f / min(max(max(max(_3516, _3517), _3518), 0.01f), 0.7f)) * _3614;
    _3630 = (((_3620 * _3516) + -0.04f) * _3606) + 0.04f;
    _3631 = (((_3620 * _3517) + -0.04f) * _3606) + 0.04f;
    _3632 = (((_3620 * _3518) + -0.04f) * _3606) + 0.04f;
    _3633 = float(_3208);
    _3634 = _3566 & -2;
    _3635 = (_3634 == 64);
    _3638 = ((((int)(uint)(_3635)) & _2684) == 0);
    if (_3638) {
      _3651 = saturate(exp2((_3633 * _3633) * (_123 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _3651 = select((_cavityParams.z > 0.0f), select(_184, 0.0f, _448), 1.0f);  // [sem: expr_sat]
    }
    _3652 = select(_2704, 1.0f, _3651);
    if (_3635) {
      _3658 = (_3652 * _3630);
      _3659 = (_3652 * _3631);
      _3660 = (_3652 * _3632);
    } else {
      _3658 = _3630;
      _3659 = _3631;
      _3660 = _3632;
    }
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
    float _rndx_spec_rough = _3526;
    if (SPECULAR_AA > 0.0f) {
      _rndx_spec_rough = NDFFilterRoughnessCS(float3(_3599, _3600, _3601), _3526, SPECULAR_AA);
    }
    _3661 = _rndx_spec_rough * _rndx_spec_rough;
    // RenoDX: <<< [Patch: MaterialSpecularAA]
    _3662 = _3661 * _3661;
    _3664 = ((uint)((int)(_3566) + (int)(-97)) < (uint)2);
    _3666 = select(_3664, 0.5f, (_3526 * 0.60009766f));
    _3667 = _3666 * _3666;
    _3668 = _3667 * _3667;
    _3670 = (_3566 == 98);
    if (!(_3670 || (_3634 == 96))) {
      if ((uint)((int)(_3566) + (int)(-105)) < (uint)2) {
        _3684 = _183;
        _3687 = _3684;
        _3688 = (_3566 == 7);
      } else {
        if ((uint)_3566 > (uint)11) {
          if (!(((uint)_3566 < (uint)21) || (_3566 == 107))) {
            _3684 = false;
            _3687 = _3684;
            _3688 = (_3566 == 7);
          } else {
            _3687 = false;
            _3688 = true;
          }
        } else {
          if (!(_3566 == 6)) {
            _3684 = false;
            _3687 = _3684;
            _3688 = (_3566 == 7);
          } else {
            _3687 = false;
            _3688 = true;
          }
        }
      }
    } else {
      _3684 = true;
      _3687 = _3684;
      _3688 = (_3566 == 7);
    }
    _3693 = exp2(log2(float(_3217.w)) * 2.2f) * 1000.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    if ((_3257) || ((!(_3257)) && (_sunDirection.y > _moonDirection.y))) {
      _3705 = _sunDirection.x;
      _3706 = _sunDirection.y;
      _3707 = _sunDirection.z;
    } else {
      _3705 = _moonDirection.x;
      _3706 = _moonDirection.y;
      _3707 = _moonDirection.z;
    }
    _3708 = _3504 * _lightingParams.x;
    _3709 = _3505 * _lightingParams.x;
    _3710 = _3506 * _lightingParams.x;
    _3711 = _3705 - _424;
    _3712 = _3706 - _425;
    _3713 = _3707 - _426;
    _3715 = rsqrt(dot(float3(_3711, _3712, _3713), float3(_3711, _3712, _3713)));  // [sem: invLength]
    _3716 = _3715 * _3711;
    _3717 = _3715 * _3712;
    _3718 = _3715 * _3713;
    _3719 = dot(float3(_3549, _3550, _3551), float3(_3705, _3706, _3707));
    _3720 = dot(float3(_3599, _3600, _3601), float3(_3705, _3706, _3707));
    _3722 = saturate(dot(float3(_3549, _3550, _3551), float3(_1069, _1070, _1071)));  // [sem: expr_sat]
    _3724 = saturate(dot(float3(_3599, _3600, _3601), float3(_3716, _3717, _3718)));  // [sem: expr_sat]
    _3725 = dot(float3(_1069, _1070, _1071), float3(_3716, _3717, _3718));
    _3727 = saturate(dot(float3(_3705, _3706, _3707), float3(_3716, _3717, _3718)));  // [sem: expr_sat]
    _3728 = (_3634 == 66);
    _3729 = (_3566 == 53);
    _3730 = _3729 || _3728;
    if (_3730) {
      if (_3729) {
        _3747 = (((asfloat(_globalLightParams.z) * _3526) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
      } else {
        _3747 = _bevelParams.y;
      }
      _3762 = (_1980 * 2.0f) + 1.0f;
      _3766 = (_984 * 7.0f) + 1.0f;
      // [sem: _3__36__0__0__g_blueNoise_sampleLod]
      _3771 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((dot(float3(_419, _420, _421), float3(((_988 * _2707) - (_987 * _2708)), ((_986 * _2708) - (_988 * _2706)), ((_987 * _2706) - (_986 * _2707)))) * 2.0f) / _3762) * _3766), (((dot(float3(_419, _420, _421), float3(_986, _987, _988)) * 0.5f) / _3762) * _3766)), 0.0f);
      _3775 = _984 * 0.5f;
      _3776 = _3771.x * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _3777 = _3771.y * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _3778 = _3771.z * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _3789 = dot(float3(_986, _987, _988), float3(_3705, _3706, _3707));
      _3790 = dot(float3(_986, _987, _988), float3(_1069, _1070, _1071));
      _3796 = cos(abs(asin(_3790) - asin(_3789)) * 0.5f);
      _3800 = _3705 - (_3789 * _986);
      _3801 = _3706 - (_3789 * _987);
      _3802 = _3707 - (_3789 * _988);
      _3806 = _1069 - (_3790 * _986);
      _3807 = _1070 - (_3790 * _987);
      _3808 = _1071 - (_3790 * _988);
      // [sem: invLength]
      _3815 = rsqrt((dot(float3(_3806, _3807, _3808), float3(_3806, _3807, _3808)) * dot(float3(_3800, _3801, _3802), float3(_3800, _3801, _3802))) + 0.0001f) * dot(float3(_3800, _3801, _3802), float3(_3806, _3807, _3808));
      _3819 = sqrt(saturate((_3815 * 0.5f) + 0.5f));
      _3826 = min(max(max(0.05f, _3526), 0.09803922f), 1.0f);
      _3827 = _3826 * _3826;
      _3828 = _3827 * 0.5f;
      _3829 = _3827 * 2.0f;
      _3830 = _3790 + _3789;
      _3831 = _3830 + (_3747 * 2.0f);
      _3833 = (_3819 * 1.4142135f) * _3827;
      _3847 = 1.0f - sqrt(saturate((dot(float3(_1069, _1070, _1071), float3(_3705, _3706, _3707)) * 0.5f) + 0.5f));
      _3848 = _3847 * _3847;
      _3855 = _3830 - _3747;
      _3864 = 1.0f / ((1.19f / _3796) + (_3796 * 0.36f));
      _3869 = ((_3864 * (0.6f - (_3815 * 0.8f))) + 1.0f) * _3819;
      _3875 = 1.0f - (sqrt(saturate(1.0f - (_3869 * _3869))) * _3796);
      _3876 = _3875 * _3875;
      _3880 = 0.9534794f - ((_3876 * _3876) * (_3875 * 0.9534794f));
      _3881 = _3864 * _3869;
      _3886 = (sqrt(1.0f - (_3881 * _3881)) * 0.5f) / _3796;
      _3887 = log2(_3516);
      _3888 = log2(_3517);
      _3889 = log2(_3518);
      _3901 = ((_3880 * _3880) * (exp2((((_3855 * _3855) * -0.5f) / (_3828 * _3828)) * 1.442695f) / (_3827 * 1.2533141f))) * exp2(-5.741926f - (_3815 * 5.265837f));
      _3905 = _3830 - (_3747 * 4.0f);
      _3915 = 1.0f - (_3796 * 0.5f);
      _3916 = _3915 * _3915;
      _3920 = (_3916 * _3916) * (0.9534794f - (_3796 * 0.4767397f));
      _3922 = 0.9534794f - _3920;
      _3923 = 0.8f / _3796;
      _3936 = (((_3922 * _3922) * (_3920 + 0.046520565f)) * (exp2((((_3905 * _3905) * -0.5f) / (_3829 * _3829)) * 1.442695f) / (_3827 * 5.0132565f))) * exp2((_3815 * 24.525816f) + -24.208424f);
      _3943 = saturate(_3720);  // [sem: _3720_sat]
      _3944 = (((_3819 * 0.25f) * (exp2((((_3831 * _3831) * -0.5f) / (_3833 * _3833)) * 1.442695f) / (_3833 * 2.5066283f))) * (((_3848 * _3848) * (_3847 * 0.9534794f)) + 0.046520565f)) * _3943;
      _3954 = -0.0f - _3943;
      _3965 = saturate((_3720 + 1.0f) * 0.25f);  // [sem: expr_sat]
      _3970 = max(0.001f, dot(float3(_3516, _3517, _3518), float3(0.3f, 0.59f, 0.11f)));
      _3989 = ((((1.0f - abs(_3720)) - _3965) * 0.33f) + _3965) * 0.07957747f;
      _3991 = (exp2(log2(_3516 / _3970) * (1.0f - _3513)) * _3989) * sqrt(_3516);
      _3993 = (exp2(log2(_3517 / _3970) * (1.0f - _3514)) * _3989) * sqrt(_3517);
      _3995 = (exp2(log2(_3518 / _3970) * (1.0f - _3515)) * _3989) * sqrt(_3518);
      _4002 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((_3936 * exp2(_3923 * _3887)) + (_3901 * exp2(_3887 * _3886))) * _3954)))));
      _4003 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((_3936 * exp2(_3923 * _3888)) + (_3901 * exp2(_3888 * _3886))) * _3954)))));
      _4004 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((_3936 * exp2(_3923 * _3889)) + (_3901 * exp2(_3889 * _3886))) * _3954)))));
      _4011 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_3776, 1.0f, _3775)) * _3944))) * _3513));
      _4012 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_3777, 1.0f, _3775)) * _3944))) * _3514));
      _4013 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_3778, 1.0f, _3775)) * _3944))) * _3515));
      if (!_3728) {
        _4015 = _4002;
        _4016 = _4003;
        _4017 = _4004;
        _4018 = _4011;
        _4019 = _4012;
        _4020 = _4013;
        _4021 = _3991;
        _4022 = _3993;
        _4023 = _3995;
        if (!_3729) {
          _4025 = (_3566 == 33);
          _4026 = (_3566 == 54);
          _4027 = _4025 || _4026;
          if (_4027) {
            _4042 = (saturate(_3719) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _3570) + 1.0f);
            _4048 = max(dot(float3(_3516, _3517, _3518), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
            _4049 = sqrt(_3516);
            _4050 = sqrt(_3517);
            _4051 = sqrt(_3518);
            _4052 = _4049 - _4048;
            _4053 = _4050 - _4048;
            _4054 = _4051 - _4048;
            _4061 = saturate(1.0f - (pow(_3722, 4.0f)));  // [sem: expr_sat]
            _4074 = (((_4053 * _3567) + _4048) + ((_4053 * (_3570 - _3567)) * _4061)) * _3568;
            _4077 = saturate(1.0f - saturate(_3725));  // [sem: expr_sat]
            _4078 = _4077 * _4077;
            _4080 = (_4078 * _4078) * _4077;
            _4083 = _4080 * saturate(_4074 * 50.0f);
            _4084 = 1.0f - _4080;
            _4085 = _4084 * _3568;
            _4089 = (_4085 * (((_4052 * _3567) + _4048) + (_4061 * (_4052 * (_3570 - _3567))))) + _4083;
            _4090 = (_4084 * _4074) + _4083;
            _4091 = (_4085 * (((_4054 * _3567) + _4048) + ((_4054 * (_3570 - _3567)) * _4061))) + _4083;
            _4092 = min(_3724, 0.9999f);
            _4093 = _4092 * _4092;
            _4094 = 1.0f - _4093;
            _4106 = (((exp2(((-0.0f - _4093) / (_4094 * _3662)) * 1.442695f) * 4.0f) / (_4094 * _4094)) + 1.0f) / ((_3662 * 12.566371f) + 3.1415927f);
            _4110 = ((_3722 + _3720) - (_3722 * _3720)) * 4.0f;
            _4114 = (_4089 * _4106) / _4110;
            _4115 = (_4090 * _4106) / _4110;
            _4116 = (_4091 * _4106) / _4110;
            _4117 = 1.0f - _3661;
            _4129 = (((_3724 * _3662) - _3724) * _3724) + 1.0f;
            _4133 = (_3662 / ((_4129 * _4129) * 3.1415927f)) * (0.5f / ((((_3722 * _4117) + _3661) * _3719) + (_3722 * ((_3719 * _4117) + _3661))));
            _4149 = saturate(_3720);  // [sem: _3720_sat]
            _4154 = (_3569 * 1.5f) + 2.5f;
            _4155 = _4154 * _4154;
            _4165 = (max(0.0f, (0.3f - _3719)) * 0.25f) * ((exp2(_4155 * -0.48089835f) * 3.0f) + exp2(_4155 * -1.442695f));
            _4190 = (((1.0f - _3570) * 0.4774648f) * saturate(_3569)) * saturate((pow(_3724, 4.0f)) * exp2(log2(saturate(1.0f - abs(_3719))) * 3.0f));
            _4195 = (_4190 * _4049);
            _4196 = (_4190 * _4050);
            _4197 = (_4190 * _4051);
            _4198 = ((((max((_4133 * _4089), 0.0f) - _4114) * _3567) + _4114) * _4149);
            _4199 = ((((max((_4133 * _4090), 0.0f) - _4115) * _3567) + _4115) * _4149);
            _4200 = ((((max((_4133 * _4091), 0.0f) - _4116) * _3567) + _4116) * _4149);
            _4201 = (((_4049 * _3513) * _4165) + _4042);
            _4202 = (((_4050 * _3514) * _4165) + _4042);
            _4203 = (((_4051 * _3515) * _4165) + _4042);
            if (!_4025) {
              if (_4026) {
                _4369 = _4018;
                _4370 = _4019;
                _4371 = _4020;
                _4372 = _4021;
                _4373 = _4022;
                _4374 = _4023;
                if (_3604) {
                  _4377 = dot(float3(_1069, _1070, _1071), float3(_3599, _3600, _3601)) * 2.0f;
                  _4381 = _1069 - (_4377 * _3599);
                  _4382 = _1070 - (_4377 * _3600);
                  _4383 = _1071 - (_4377 * _3601);
                  _4384 = _3705 - _4381;
                  _4385 = _3706 - _4382;
                  _4386 = _3707 - _4383;
                  _4388 = rsqrt(dot(float3(_4384, _4385, _4386), float3(_4384, _4385, _4386)));  // [sem: invLength]
                  _4389 = _4384 * _4388;
                  _4390 = _4385 * _4388;
                  _4391 = _4386 * _4388;
                  _4392 = -0.0f - _4381;
                  _4393 = -0.0f - _4382;
                  _4394 = -0.0f - _4383;
                  _4396 = saturate(dot(float3(_3549, _3550, _3551), float3(_4392, _4393, _4394)));  // [sem: expr_sat]
                  _4398 = saturate(dot(float3(_3599, _3600, _3601), float3(_4389, _4390, _4391)));  // [sem: expr_sat]
                  _4400 = saturate(_3720);  // [sem: _3720_sat]
                  _4411 = 1.0f - ((_4398 * _4398) * 0.9f);
                  _4414 = (0.03183099f / (_4411 * _4411)) * (0.5f / ((((_4396 * 0.9f) + 0.1f) * _3720) + (_4396 * ((_3720 * 0.9f) + 0.1f))));
                  _4440 = _4372;
                  _4441 = _4373;
                  _4442 = _4374;
                  _4443 = dot(float3(_4392, _4393, _4394), float3(_4389, _4390, _4391));
                  _4444 = _4398;
                  _4445 = (((float(half(max((_4414 * _3516), 0.0f) * _4400)) - _4369) * 0.875f) + _4369);
                  _4446 = (((float(half(max((_4414 * _3517), 0.0f) * _4400)) - _4370) * 0.875f) + _4370);
                  _4447 = (((float(half(max((_4414 * _3518), 0.0f) * _4400)) - _4371) * 0.875f) + _4371);
                } else {
                  _4440 = _4372;
                  _4441 = _4373;
                  _4442 = _4374;
                  _4443 = _3725;
                  _4444 = _3724;
                  _4445 = _4369;
                  _4446 = _4370;
                  _4447 = _4371;
                }
              } else {
                _4206 = saturate(_3719);  // [sem: _3719_sat]
                _4207 = 1.0f - _3662;
                _4208 = 1.0f - _3727;
                _4209 = _4208 * _4208;
                _4212 = ((_4209 * _4209) * _4208) + _3727;
                _4213 = 1.0f - _4206;
                _4214 = _4213 * _4213;
                _4219 = 1.0f - _3722;
                _4220 = _4219 * _4219;
                _4247 = (_4206 * 0.31830987f) * ((((_3727 * ((((_4207 * 34.5f) + -59.0f) * _4207) + 24.5f)) * exp2(-0.0f - (max(((_4207 * 73.2f) + -21.2f), 8.9f) * sqrt(_3724)))) + _4212) + ((((1.0f - ((_4214 * _4214) * (_4213 * 0.75f))) * (1.0f - ((_4220 * _4220) * (_4219 * 0.75f)))) - _4212) * saturate((_4207 * 2.2f) + -0.5f)));
                _4250 = saturate(1.0f - saturate(_3725));  // [sem: expr_sat]
                _4251 = _4250 * _4250;
                _4253 = (_4251 * _4251) * _4250;
                _4256 = _4253 * saturate(_3659 * 50.0f);
                _4257 = 1.0f - _4253;
                _4261 = (_4257 * _3658) + _4256;
                _4262 = (_4257 * _3659) + _4256;
                _4263 = (_4257 * _3660) + _4256;
                if (!(_3566 == 29)) {
                  _4265 = saturate(_3720);  // [sem: _3720_sat]
                  _4266 = 1.0f - _3661;
                  _4278 = (((_3724 * _3662) - _3724) * _3724) + 1.0f;
                  _4282 = (_3662 / ((_4278 * _4278) * 3.1415927f)) * (0.5f / ((((_3722 * _4266) + _3661) * _3720) + (_3722 * ((_3720 * _4266) + _3661))));
                  _4293 = (max((_4282 * _4261), 0.0f) * _4265);
                  _4294 = (max((_4282 * _4262), 0.0f) * _4265);
                  _4295 = (max((_4282 * _4263), 0.0f) * _4265);
                } else {
                  _4293 = 0.0f;
                  _4294 = 0.0f;
                  _4295 = 0.0f;
                }
                // RenoDX: >>> [Patch: MaterialSmoothTerminator] [Version: 1.18.00]
                // Description: Softens the geometric shadow terminator after this direct-light clone has
                //              resolved its diffuse scalar and specular RGB. The shared factor multiplies
                //              all four outputs at the clone's common post-specular boundary so the direct
                //              lighting response remains consistent across material branches. The entire
                //              mutation is gated; at zero no output is written.
                if (SMOOTH_TERMINATOR > 0.0f) {
                  float _rndx_c2 = CallistoSmoothTerminator(_4206, _3727, _3724, SMOOTH_TERMINATOR, 0.5f);
                  _4247 *= _rndx_c2;
                  _4293 *= _rndx_c2;
                  _4294 *= _rndx_c2;
                  _4295 *= _rndx_c2;
                }
                // RenoDX: <<< [Patch: MaterialSmoothTerminator]
                if (_3635) {
                  if (_3566 == 65) {
                    _4339 = _4293;
                    _4340 = _4294;
                    _4341 = _4295;
                    _4346 = max(1e-06f, _exposure2.x);
                    _4355 = ((_4206 * 50.265484f) * exp2(log2(saturate(dot(float3(_3599, _3600, _3601), float3(_1069, _1070, _1071)))) * 16.0f)) / (((_4346 * _4346) * 1e+06f) + 1.0f);
                    _4440 = ((((_4355 * _3516) - _4247) * _3565) + _4247);
                    _4441 = ((((_4355 * _3517) - _4247) * _3565) + _4247);
                    _4442 = ((((_4355 * _3518) - _4247) * _3565) + _4247);
                    _4443 = _3725;
                    _4444 = _3724;
                    _4445 = _4339;
                    _4446 = _4340;
                    _4447 = _4341;
                  } else {
                    _4303 = 1.0f - _3667;
                    _4315 = (((_3724 * _3668) - _3724) * _3724) + 1.0f;
                    _4319 = (_3668 / ((_4315 * _4315) * 3.1415927f)) * (0.5f / ((((_3722 * _4303) + _3667) * _3720) + (_3722 * ((_3720 * _4303) + _3667))));
                    _4326 = saturate(_3720) * 0.39990234f;
                    _4334 = ((max((_4319 * _4261), 0.0f) * _4326) + (_4293 * 0.60009766f));
                    _4335 = ((max((_4319 * _4262), 0.0f) * _4326) + (_4294 * 0.60009766f));
                    _4336 = ((max((_4319 * _4263), 0.0f) * _4326) + (_4295 * 0.60009766f));
                    if (_3566 == 65) {
                      _4339 = _4334;
                      _4340 = _4335;
                      _4341 = _4336;
                      _4346 = max(1e-06f, _exposure2.x);
                      _4355 = ((_4206 * 50.265484f) * exp2(log2(saturate(dot(float3(_3599, _3600, _3601), float3(_1069, _1070, _1071)))) * 16.0f)) / (((_4346 * _4346) * 1e+06f) + 1.0f);
                      _4440 = ((((_4355 * _3516) - _4247) * _3565) + _4247);
                      _4441 = ((((_4355 * _3517) - _4247) * _3565) + _4247);
                      _4442 = ((((_4355 * _3518) - _4247) * _3565) + _4247);
                      _4443 = _3725;
                      _4444 = _3724;
                      _4445 = _4339;
                      _4446 = _4340;
                      _4447 = _4341;
                    } else {
                      _4369 = _4334;
                      _4370 = _4335;
                      _4371 = _4336;
                      _4372 = _4247;
                      _4373 = _4247;
                      _4374 = _4247;
                      if (_3604) {
                        _4377 = dot(float3(_1069, _1070, _1071), float3(_3599, _3600, _3601)) * 2.0f;
                        _4381 = _1069 - (_4377 * _3599);
                        _4382 = _1070 - (_4377 * _3600);
                        _4383 = _1071 - (_4377 * _3601);
                        _4384 = _3705 - _4381;
                        _4385 = _3706 - _4382;
                        _4386 = _3707 - _4383;
                        _4388 = rsqrt(dot(float3(_4384, _4385, _4386), float3(_4384, _4385, _4386)));  // [sem: invLength]
                        _4389 = _4384 * _4388;
                        _4390 = _4385 * _4388;
                        _4391 = _4386 * _4388;
                        _4392 = -0.0f - _4381;
                        _4393 = -0.0f - _4382;
                        _4394 = -0.0f - _4383;
                        _4396 = saturate(dot(float3(_3549, _3550, _3551), float3(_4392, _4393, _4394)));  // [sem: expr_sat]
                        _4398 = saturate(dot(float3(_3599, _3600, _3601), float3(_4389, _4390, _4391)));  // [sem: expr_sat]
                        _4400 = saturate(_3720);  // [sem: _3720_sat]
                        _4411 = 1.0f - ((_4398 * _4398) * 0.9f);
                        _4414 = (0.03183099f / (_4411 * _4411)) * (0.5f / ((((_4396 * 0.9f) + 0.1f) * _3720) + (_4396 * ((_3720 * 0.9f) + 0.1f))));
                        _4440 = _4372;
                        _4441 = _4373;
                        _4442 = _4374;
                        _4443 = dot(float3(_4392, _4393, _4394), float3(_4389, _4390, _4391));
                        _4444 = _4398;
                        _4445 = (((float(half(max((_4414 * _3516), 0.0f) * _4400)) - _4369) * 0.875f) + _4369);
                        _4446 = (((float(half(max((_4414 * _3517), 0.0f) * _4400)) - _4370) * 0.875f) + _4370);
                        _4447 = (((float(half(max((_4414 * _3518), 0.0f) * _4400)) - _4371) * 0.875f) + _4371);
                      } else {
                        _4440 = _4372;
                        _4441 = _4373;
                        _4442 = _4374;
                        _4443 = _3725;
                        _4444 = _3724;
                        _4445 = _4369;
                        _4446 = _4370;
                        _4447 = _4371;
                      }
                    }
                  }
                } else {
                  _4334 = _4293;
                  _4335 = _4294;
                  _4336 = _4295;
                  if (_3566 == 65) {
                    _4339 = _4334;
                    _4340 = _4335;
                    _4341 = _4336;
                    _4346 = max(1e-06f, _exposure2.x);
                    _4355 = ((_4206 * 50.265484f) * exp2(log2(saturate(dot(float3(_3599, _3600, _3601), float3(_1069, _1070, _1071)))) * 16.0f)) / (((_4346 * _4346) * 1e+06f) + 1.0f);
                    _4440 = ((((_4355 * _3516) - _4247) * _3565) + _4247);
                    _4441 = ((((_4355 * _3517) - _4247) * _3565) + _4247);
                    _4442 = ((((_4355 * _3518) - _4247) * _3565) + _4247);
                    _4443 = _3725;
                    _4444 = _3724;
                    _4445 = _4339;
                    _4446 = _4340;
                    _4447 = _4341;
                  } else {
                    _4369 = _4334;
                    _4370 = _4335;
                    _4371 = _4336;
                    _4372 = _4247;
                    _4373 = _4247;
                    _4374 = _4247;
                    if (_3604) {
                      _4377 = dot(float3(_1069, _1070, _1071), float3(_3599, _3600, _3601)) * 2.0f;
                      _4381 = _1069 - (_4377 * _3599);
                      _4382 = _1070 - (_4377 * _3600);
                      _4383 = _1071 - (_4377 * _3601);
                      _4384 = _3705 - _4381;
                      _4385 = _3706 - _4382;
                      _4386 = _3707 - _4383;
                      _4388 = rsqrt(dot(float3(_4384, _4385, _4386), float3(_4384, _4385, _4386)));  // [sem: invLength]
                      _4389 = _4384 * _4388;
                      _4390 = _4385 * _4388;
                      _4391 = _4386 * _4388;
                      _4392 = -0.0f - _4381;
                      _4393 = -0.0f - _4382;
                      _4394 = -0.0f - _4383;
                      _4396 = saturate(dot(float3(_3549, _3550, _3551), float3(_4392, _4393, _4394)));  // [sem: expr_sat]
                      _4398 = saturate(dot(float3(_3599, _3600, _3601), float3(_4389, _4390, _4391)));  // [sem: expr_sat]
                      _4400 = saturate(_3720);  // [sem: _3720_sat]
                      _4411 = 1.0f - ((_4398 * _4398) * 0.9f);
                      _4414 = (0.03183099f / (_4411 * _4411)) * (0.5f / ((((_4396 * 0.9f) + 0.1f) * _3720) + (_4396 * ((_3720 * 0.9f) + 0.1f))));
                      _4440 = _4372;
                      _4441 = _4373;
                      _4442 = _4374;
                      _4443 = dot(float3(_4392, _4393, _4394), float3(_4389, _4390, _4391));
                      _4444 = _4398;
                      _4445 = (((float(half(max((_4414 * _3516), 0.0f) * _4400)) - _4369) * 0.875f) + _4369);
                      _4446 = (((float(half(max((_4414 * _3517), 0.0f) * _4400)) - _4370) * 0.875f) + _4370);
                      _4447 = (((float(half(max((_4414 * _3518), 0.0f) * _4400)) - _4371) * 0.875f) + _4371);
                    } else {
                      _4440 = _4372;
                      _4441 = _4373;
                      _4442 = _4374;
                      _4443 = _3725;
                      _4444 = _3724;
                      _4445 = _4369;
                      _4446 = _4370;
                      _4447 = _4371;
                    }
                  }
                }
              }
            } else {
              _4440 = _4021;
              _4441 = _4022;
              _4442 = _4023;
              _4443 = _3725;
              _4444 = _3724;
              _4445 = _4018;
              _4446 = _4019;
              _4447 = _4020;
            }
            _4469 = select(_4027, _4198, _4445) * _3513;
            _4470 = select(_4027, _4199, _4446) * _3514;
            _4471 = select(_4027, _4200, _4447) * _3515;
            _4479 = _4443;
            _4480 = _4444;
            _4481 = select(_4027, 0.0f, _4015);
            _4482 = select(_4027, 0.0f, _4016);
            _4483 = select(_4027, 0.0f, _4017);
            _4484 = select(_4027, (_4469 + _4195), _4469);
            _4485 = select(_4027, (_4470 + _4196), _4470);
            _4486 = select(_4027, (_4471 + _4197), _4471);
            _4487 = (select(_4027, _4201, (-0.0f - min(-0.0f, (-0.0f - _4440)))) * _3513);
            _4488 = (select(_4027, _4202, (-0.0f - min(-0.0f, (-0.0f - _4441)))) * _3514);
            _4489 = (select(_4027, _4203, (-0.0f - min(-0.0f, (-0.0f - _4442)))) * _3515);
          } else {
            if ((_3719 > 0.0f) || (_3720 > 0.0f)) {
              _4195 = 0.0f;
              _4196 = 0.0f;
              _4197 = 0.0f;
              _4198 = 0.0f;
              _4199 = 0.0f;
              _4200 = 0.0f;
              _4201 = 0.0f;
              _4202 = 0.0f;
              _4203 = 0.0f;
              if (!_4025) {
                if (_4026) {
                  _4369 = _4018;
                  _4370 = _4019;
                  _4371 = _4020;
                  _4372 = _4021;
                  _4373 = _4022;
                  _4374 = _4023;
                  if (_3604) {
                    _4377 = dot(float3(_1069, _1070, _1071), float3(_3599, _3600, _3601)) * 2.0f;
                    _4381 = _1069 - (_4377 * _3599);
                    _4382 = _1070 - (_4377 * _3600);
                    _4383 = _1071 - (_4377 * _3601);
                    _4384 = _3705 - _4381;
                    _4385 = _3706 - _4382;
                    _4386 = _3707 - _4383;
                    _4388 = rsqrt(dot(float3(_4384, _4385, _4386), float3(_4384, _4385, _4386)));  // [sem: invLength]
                    _4389 = _4384 * _4388;
                    _4390 = _4385 * _4388;
                    _4391 = _4386 * _4388;
                    _4392 = -0.0f - _4381;
                    _4393 = -0.0f - _4382;
                    _4394 = -0.0f - _4383;
                    _4396 = saturate(dot(float3(_3549, _3550, _3551), float3(_4392, _4393, _4394)));  // [sem: expr_sat]
                    _4398 = saturate(dot(float3(_3599, _3600, _3601), float3(_4389, _4390, _4391)));  // [sem: expr_sat]
                    _4400 = saturate(_3720);  // [sem: _3720_sat]
                    _4411 = 1.0f - ((_4398 * _4398) * 0.9f);
                    _4414 = (0.03183099f / (_4411 * _4411)) * (0.5f / ((((_4396 * 0.9f) + 0.1f) * _3720) + (_4396 * ((_3720 * 0.9f) + 0.1f))));
                    _4440 = _4372;
                    _4441 = _4373;
                    _4442 = _4374;
                    _4443 = dot(float3(_4392, _4393, _4394), float3(_4389, _4390, _4391));
                    _4444 = _4398;
                    _4445 = (((float(half(max((_4414 * _3516), 0.0f) * _4400)) - _4369) * 0.875f) + _4369);
                    _4446 = (((float(half(max((_4414 * _3517), 0.0f) * _4400)) - _4370) * 0.875f) + _4370);
                    _4447 = (((float(half(max((_4414 * _3518), 0.0f) * _4400)) - _4371) * 0.875f) + _4371);
                  } else {
                    _4440 = _4372;
                    _4441 = _4373;
                    _4442 = _4374;
                    _4443 = _3725;
                    _4444 = _3724;
                    _4445 = _4369;
                    _4446 = _4370;
                    _4447 = _4371;
                  }
                } else {
                  _4206 = saturate(_3719);  // [sem: _3719_sat]
                  _4207 = 1.0f - _3662;
                  _4208 = 1.0f - _3727;
                  _4209 = _4208 * _4208;
                  _4212 = ((_4209 * _4209) * _4208) + _3727;
                  _4213 = 1.0f - _4206;
                  _4214 = _4213 * _4213;
                  _4219 = 1.0f - _3722;
                  _4220 = _4219 * _4219;
                  // RenoDX: >>> [Patch: MaterialDiffuseBRDF] [Version: 1.16.00]
                  // Description: Replaces the vanilla direct-light diffuse scalar with the RenoDX diffuse BRDF
                  //              when a non-default diffuse model is selected. The vanilla expression is a
                  //              Lambert term with a fitted multi-scatter/retro-reflection correction; the
                  //              replacement is an energy-conserving rough-diffuse model that additionally depends
                  //              on the light-view angle, which keeps rough dielectrics from losing energy at
                  //              grazing angles. The shader clones this direct-lighting maths into several
                  //              mutually exclusive material branches, so this block is repeated in each clone and
                  //              at most one copy runs per pixel. With DIFFUSE_BRDF_MODE below 1 the else branch
                  //              runs the vanilla expression unchanged.
                  if (DIFFUSE_BRDF_MODE >= 1.0f) {
                    float _eon_LdotV = dot(float3(_3705, _3706, _3707), float3(_1069, _1070, _1071));
                    _4247 = _4206 * EON_DiffuseScalar(_4206, _3722, _eon_LdotV, _3526);
                  } else {
                    _4247 = (_4206 * 0.31830987f) * ((((_3727 * ((((_4207 * 34.5f) + -59.0f) * _4207) + 24.5f)) * exp2(-0.0f - (max(((_4207 * 73.2f) + -21.2f), 8.9f) * sqrt(_3724)))) + _4212) + ((((1.0f - ((_4214 * _4214) * (_4213 * 0.75f))) * (1.0f - ((_4220 * _4220) * (_4219 * 0.75f)))) - _4212) * saturate((_4207 * 2.2f) + -0.5f)));
                  }
                  // RenoDX: <<< [Patch: MaterialDiffuseBRDF]
                  _4250 = saturate(1.0f - saturate(_3725));  // [sem: expr_sat]
                  _4251 = _4250 * _4250;
                  _4253 = (_4251 * _4251) * _4250;
                  _4256 = _4253 * saturate(_3659 * 50.0f);
                  _4257 = 1.0f - _4253;
                  _4261 = (_4257 * _3658) + _4256;
                  _4262 = (_4257 * _3659) + _4256;
                  _4263 = (_4257 * _3660) + _4256;
                  if (!(_3566 == 29)) {
                    _4265 = saturate(_3720);  // [sem: _3720_sat]
                    _4266 = 1.0f - _3661;
                    _4278 = (((_3724 * _3662) - _3724) * _3724) + 1.0f;
                    _4282 = (_3662 / ((_4278 * _4278) * 3.1415927f)) * (0.5f / ((((_3722 * _4266) + _3661) * _3720) + (_3722 * ((_3720 * _4266) + _3661))));
                    _4293 = (max((_4282 * _4261), 0.0f) * _4265);
                    _4294 = (max((_4282 * _4262), 0.0f) * _4265);
                    _4295 = (max((_4282 * _4263), 0.0f) * _4265);
                  } else {
                    _4293 = 0.0f;
                    _4294 = 0.0f;
                    _4295 = 0.0f;
                  }
                  // RenoDX: >>> [Patch: MaterialDiffraction] [Version: 1.16.00]
                  // Description: Three optional direct-light hooks share this branch's diffuse scalar and specular
                  //              RGB, so they are kept adjacent in one block per branch clone.
                  //              MaterialDiffraction adds a wavelength-dependent tint and speckle to specular
                  //              highlights on materials with a metal/specular weight, approximating the
                  //              iridescence of finely structured surfaces that a single-lobe GGX cannot produce;
                  //              it is blended by the material weight so dielectrics are unaffected.
                  //              MaterialSmoothTerminator scales both diffuse and specular near the shadow
                  //              terminator to soften the hard band a pure N.L lobe leaves on curved geometry.
                  //              FoliageTransmission adds back-lit leaf transmission for foliage stencil materials
                  //              (ids 12..18), which vanilla renders as opaque and therefore black when lit from
                  //              behind; it stores the transmitted light in the accumulators declared before the
                  //              branch fan-out and replaces the front-facing diffuse lobe with the helper's scale
                  //              (or a wrapped-diffuse fallback) so total energy stays bounded.
                  //              The shader clones this direct-lighting maths into several mutually exclusive
                  //              material branches, so this block is repeated in each clone and at most one copy
                  //              runs per pixel. Each hook has its own gate (DIFFRACTION, SMOOTH_TERMINATOR,
                  //              FOLIAGE_TRANSMISSION); at 0 none of them execute.
                  if (DIFFRACTION > 0.0f && _3606 > 0.0f) {
                    float3 _rndx_dShift = DiffractionShiftAndSpeckleCS(
                        _3724, _3722, _rndx_spec_rough,
                        float2(_101, _103), _123,
                        float3(_3716, _3717, _3718),
                        float3(_3599, _3600, _3601),
                        float3(_3516, _3517, _3518));
                    float3 _rndx_dMod = lerp(1.0f, _rndx_dShift, DIFFRACTION * _3606);
                    _4293 *= _rndx_dMod.x;
                    _4294 *= _rndx_dMod.y;
                    _4295 *= _rndx_dMod.z;
                  }
                  if (SMOOTH_TERMINATOR > 0.0f) {
                    float _rndx_c2 = CallistoSmoothTerminator(_4206, _3727, _3724, SMOOTH_TERMINATOR, 0.5f);
                    _4247 *= _rndx_c2;
                    _4293 *= _rndx_c2;
                    _4294 *= _rndx_c2;
                    _4295 *= _rndx_c2;
                  }
                  if (FOLIAGE_TRANSMISSION > 0.0f && (((uint)(_119 - 12) < 7u))) {
                    FoliageTransmissionResult _rndx_ftResult = FoliageTransmission(
                        float3(_1069, _1070, _1071),
                        float3(_3705, _3706, _3707),
                        float3(_3549, _3550, _3551),
                        _3719,
                        float3(_3516, _3517, _3518),
                        float3(_3486, _3487, _3488),
                        float3(_3708, _3709, _3710),
                        FOLIAGE_TRANSMISSION_THICKNESS);
                    _rndx_foliageTransR = _rndx_ftResult.transmission.x;
                    _rndx_foliageTransG = _rndx_ftResult.transmission.y;
                    _rndx_foliageTransB = _rndx_ftResult.transmission.z;
                    if (_rndx_ftResult.diffuseScale > 0.0f) {
                      _4247 *= _rndx_ftResult.diffuseScale;
                    } else {
                      float _rndx_wrap = 0.25f * (1.0f - FOLIAGE_TRANSMISSION_THICKNESS);
                      _4247 = max(0.0f, (_3719 + _rndx_wrap) / (1.0f + _rndx_wrap)) * 0.31830987334251404f * 0.75f;
                    }
                  }
                  // RenoDX: <<< [Patch: MaterialDiffraction]
                  if (_3635) {
                    if (_3566 == 65) {
                      _4339 = _4293;
                      _4340 = _4294;
                      _4341 = _4295;
                      _4346 = max(1e-06f, _exposure2.x);
                      _4355 = ((_4206 * 50.265484f) * exp2(log2(saturate(dot(float3(_3599, _3600, _3601), float3(_1069, _1070, _1071)))) * 16.0f)) / (((_4346 * _4346) * 1e+06f) + 1.0f);
                      _4440 = ((((_4355 * _3516) - _4247) * _3565) + _4247);
                      _4441 = ((((_4355 * _3517) - _4247) * _3565) + _4247);
                      _4442 = ((((_4355 * _3518) - _4247) * _3565) + _4247);
                      _4443 = _3725;
                      _4444 = _3724;
                      _4445 = _4339;
                      _4446 = _4340;
                      _4447 = _4341;
                    } else {
                      _4303 = 1.0f - _3667;
                      _4315 = (((_3724 * _3668) - _3724) * _3724) + 1.0f;
                      _4319 = (_3668 / ((_4315 * _4315) * 3.1415927f)) * (0.5f / ((((_3722 * _4303) + _3667) * _3720) + (_3722 * ((_3720 * _4303) + _3667))));
                      _4326 = saturate(_3720) * 0.39990234f;
                      _4334 = ((max((_4319 * _4261), 0.0f) * _4326) + (_4293 * 0.60009766f));
                      _4335 = ((max((_4319 * _4262), 0.0f) * _4326) + (_4294 * 0.60009766f));
                      _4336 = ((max((_4319 * _4263), 0.0f) * _4326) + (_4295 * 0.60009766f));
                      if (_3566 == 65) {
                        _4339 = _4334;
                        _4340 = _4335;
                        _4341 = _4336;
                        _4346 = max(1e-06f, _exposure2.x);
                        _4355 = ((_4206 * 50.265484f) * exp2(log2(saturate(dot(float3(_3599, _3600, _3601), float3(_1069, _1070, _1071)))) * 16.0f)) / (((_4346 * _4346) * 1e+06f) + 1.0f);
                        _4440 = ((((_4355 * _3516) - _4247) * _3565) + _4247);
                        _4441 = ((((_4355 * _3517) - _4247) * _3565) + _4247);
                        _4442 = ((((_4355 * _3518) - _4247) * _3565) + _4247);
                        _4443 = _3725;
                        _4444 = _3724;
                        _4445 = _4339;
                        _4446 = _4340;
                        _4447 = _4341;
                      } else {
                        _4369 = _4334;
                        _4370 = _4335;
                        _4371 = _4336;
                        _4372 = _4247;
                        _4373 = _4247;
                        _4374 = _4247;
                        if (_3604) {
                          _4377 = dot(float3(_1069, _1070, _1071), float3(_3599, _3600, _3601)) * 2.0f;
                          _4381 = _1069 - (_4377 * _3599);
                          _4382 = _1070 - (_4377 * _3600);
                          _4383 = _1071 - (_4377 * _3601);
                          _4384 = _3705 - _4381;
                          _4385 = _3706 - _4382;
                          _4386 = _3707 - _4383;
                          _4388 = rsqrt(dot(float3(_4384, _4385, _4386), float3(_4384, _4385, _4386)));  // [sem: invLength]
                          _4389 = _4384 * _4388;
                          _4390 = _4385 * _4388;
                          _4391 = _4386 * _4388;
                          _4392 = -0.0f - _4381;
                          _4393 = -0.0f - _4382;
                          _4394 = -0.0f - _4383;
                          _4396 = saturate(dot(float3(_3549, _3550, _3551), float3(_4392, _4393, _4394)));  // [sem: expr_sat]
                          _4398 = saturate(dot(float3(_3599, _3600, _3601), float3(_4389, _4390, _4391)));  // [sem: expr_sat]
                          _4400 = saturate(_3720);  // [sem: _3720_sat]
                          _4411 = 1.0f - ((_4398 * _4398) * 0.9f);
                          _4414 = (0.03183099f / (_4411 * _4411)) * (0.5f / ((((_4396 * 0.9f) + 0.1f) * _3720) + (_4396 * ((_3720 * 0.9f) + 0.1f))));
                          _4440 = _4372;
                          _4441 = _4373;
                          _4442 = _4374;
                          _4443 = dot(float3(_4392, _4393, _4394), float3(_4389, _4390, _4391));
                          _4444 = _4398;
                          _4445 = (((float(half(max((_4414 * _3516), 0.0f) * _4400)) - _4369) * 0.875f) + _4369);
                          _4446 = (((float(half(max((_4414 * _3517), 0.0f) * _4400)) - _4370) * 0.875f) + _4370);
                          _4447 = (((float(half(max((_4414 * _3518), 0.0f) * _4400)) - _4371) * 0.875f) + _4371);
                        } else {
                          _4440 = _4372;
                          _4441 = _4373;
                          _4442 = _4374;
                          _4443 = _3725;
                          _4444 = _3724;
                          _4445 = _4369;
                          _4446 = _4370;
                          _4447 = _4371;
                        }
                      }
                    }
                  } else {
                    _4334 = _4293;
                    _4335 = _4294;
                    _4336 = _4295;
                    if (_3566 == 65) {
                      _4339 = _4334;
                      _4340 = _4335;
                      _4341 = _4336;
                      _4346 = max(1e-06f, _exposure2.x);
                      _4355 = ((_4206 * 50.265484f) * exp2(log2(saturate(dot(float3(_3599, _3600, _3601), float3(_1069, _1070, _1071)))) * 16.0f)) / (((_4346 * _4346) * 1e+06f) + 1.0f);
                      _4440 = ((((_4355 * _3516) - _4247) * _3565) + _4247);
                      _4441 = ((((_4355 * _3517) - _4247) * _3565) + _4247);
                      _4442 = ((((_4355 * _3518) - _4247) * _3565) + _4247);
                      _4443 = _3725;
                      _4444 = _3724;
                      _4445 = _4339;
                      _4446 = _4340;
                      _4447 = _4341;
                    } else {
                      _4369 = _4334;
                      _4370 = _4335;
                      _4371 = _4336;
                      _4372 = _4247;
                      _4373 = _4247;
                      _4374 = _4247;
                      if (_3604) {
                        _4377 = dot(float3(_1069, _1070, _1071), float3(_3599, _3600, _3601)) * 2.0f;
                        _4381 = _1069 - (_4377 * _3599);
                        _4382 = _1070 - (_4377 * _3600);
                        _4383 = _1071 - (_4377 * _3601);
                        _4384 = _3705 - _4381;
                        _4385 = _3706 - _4382;
                        _4386 = _3707 - _4383;
                        _4388 = rsqrt(dot(float3(_4384, _4385, _4386), float3(_4384, _4385, _4386)));  // [sem: invLength]
                        _4389 = _4384 * _4388;
                        _4390 = _4385 * _4388;
                        _4391 = _4386 * _4388;
                        _4392 = -0.0f - _4381;
                        _4393 = -0.0f - _4382;
                        _4394 = -0.0f - _4383;
                        _4396 = saturate(dot(float3(_3549, _3550, _3551), float3(_4392, _4393, _4394)));  // [sem: expr_sat]
                        _4398 = saturate(dot(float3(_3599, _3600, _3601), float3(_4389, _4390, _4391)));  // [sem: expr_sat]
                        _4400 = saturate(_3720);  // [sem: _3720_sat]
                        _4411 = 1.0f - ((_4398 * _4398) * 0.9f);
                        _4414 = (0.03183099f / (_4411 * _4411)) * (0.5f / ((((_4396 * 0.9f) + 0.1f) * _3720) + (_4396 * ((_3720 * 0.9f) + 0.1f))));
                        _4440 = _4372;
                        _4441 = _4373;
                        _4442 = _4374;
                        _4443 = dot(float3(_4392, _4393, _4394), float3(_4389, _4390, _4391));
                        _4444 = _4398;
                        _4445 = (((float(half(max((_4414 * _3516), 0.0f) * _4400)) - _4369) * 0.875f) + _4369);
                        _4446 = (((float(half(max((_4414 * _3517), 0.0f) * _4400)) - _4370) * 0.875f) + _4370);
                        _4447 = (((float(half(max((_4414 * _3518), 0.0f) * _4400)) - _4371) * 0.875f) + _4371);
                      } else {
                        _4440 = _4372;
                        _4441 = _4373;
                        _4442 = _4374;
                        _4443 = _3725;
                        _4444 = _3724;
                        _4445 = _4369;
                        _4446 = _4370;
                        _4447 = _4371;
                      }
                    }
                  }
                }
              } else {
                _4440 = _4021;
                _4441 = _4022;
                _4442 = _4023;
                _4443 = _3725;
                _4444 = _3724;
                _4445 = _4018;
                _4446 = _4019;
                _4447 = _4020;
              }
              _4469 = select(_4027, _4198, _4445) * _3513;
              _4470 = select(_4027, _4199, _4446) * _3514;
              _4471 = select(_4027, _4200, _4447) * _3515;
              _4479 = _4443;
              _4480 = _4444;
              _4481 = select(_4027, 0.0f, _4015);
              _4482 = select(_4027, 0.0f, _4016);
              _4483 = select(_4027, 0.0f, _4017);
              _4484 = select(_4027, (_4469 + _4195), _4469);
              _4485 = select(_4027, (_4470 + _4196), _4470);
              _4486 = select(_4027, (_4471 + _4197), _4471);
              _4487 = (select(_4027, _4201, (-0.0f - min(-0.0f, (-0.0f - _4440)))) * _3513);
              _4488 = (select(_4027, _4202, (-0.0f - min(-0.0f, (-0.0f - _4441)))) * _3514);
              _4489 = (select(_4027, _4203, (-0.0f - min(-0.0f, (-0.0f - _4442)))) * _3515);
            } else {
              _4479 = _3725;
              _4480 = _3724;
              _4481 = _4015;
              _4482 = _4016;
              _4483 = _4017;
              _4484 = _4018;
              _4485 = _4019;
              _4486 = _4020;
              _4487 = _4021;
              _4488 = _4022;
              _4489 = _4023;
            }
          }
        } else {
          _4479 = _3725;
          _4480 = _3724;
          _4481 = _4015;
          _4482 = _4016;
          _4483 = _4017;
          _4484 = _4018;
          _4485 = _4019;
          _4486 = _4020;
          _4487 = _4021;
          _4488 = _4022;
          _4489 = _4023;
        }
      } else {
        _4479 = _3725;
        _4480 = _3724;
        _4481 = _4002;
        _4482 = _4003;
        _4483 = _4004;
        _4484 = _4011;
        _4485 = _4012;
        _4486 = _4013;
        _4487 = _3991;
        _4488 = _3993;
        _4489 = _3995;
      }
    } else {
      _4015 = 0.0f;
      _4016 = 0.0f;
      _4017 = 0.0f;
      _4018 = 0.0f;
      _4019 = 0.0f;
      _4020 = 0.0f;
      _4021 = 0.0f;
      _4022 = 0.0f;
      _4023 = 0.0f;
      if (!_3729) {
        _4025 = (_3566 == 33);
        _4026 = (_3566 == 54);
        _4027 = _4025 || _4026;
        if (_4027) {
          _4042 = (saturate(_3719) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _3570) + 1.0f);
          _4048 = max(dot(float3(_3516, _3517, _3518), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
          _4049 = sqrt(_3516);
          _4050 = sqrt(_3517);
          _4051 = sqrt(_3518);
          _4052 = _4049 - _4048;
          _4053 = _4050 - _4048;
          _4054 = _4051 - _4048;
          _4061 = saturate(1.0f - (pow(_3722, 4.0f)));  // [sem: expr_sat]
          _4074 = (((_4053 * _3567) + _4048) + ((_4053 * (_3570 - _3567)) * _4061)) * _3568;
          _4077 = saturate(1.0f - saturate(_3725));  // [sem: expr_sat]
          _4078 = _4077 * _4077;
          _4080 = (_4078 * _4078) * _4077;
          _4083 = _4080 * saturate(_4074 * 50.0f);
          _4084 = 1.0f - _4080;
          _4085 = _4084 * _3568;
          _4089 = (_4085 * (((_4052 * _3567) + _4048) + (_4061 * (_4052 * (_3570 - _3567))))) + _4083;
          _4090 = (_4084 * _4074) + _4083;
          _4091 = (_4085 * (((_4054 * _3567) + _4048) + ((_4054 * (_3570 - _3567)) * _4061))) + _4083;
          _4092 = min(_3724, 0.9999f);
          _4093 = _4092 * _4092;
          _4094 = 1.0f - _4093;
          _4106 = (((exp2(((-0.0f - _4093) / (_4094 * _3662)) * 1.442695f) * 4.0f) / (_4094 * _4094)) + 1.0f) / ((_3662 * 12.566371f) + 3.1415927f);
          _4110 = ((_3722 + _3720) - (_3722 * _3720)) * 4.0f;
          _4114 = (_4089 * _4106) / _4110;
          _4115 = (_4090 * _4106) / _4110;
          _4116 = (_4091 * _4106) / _4110;
          _4117 = 1.0f - _3661;
          _4129 = (((_3724 * _3662) - _3724) * _3724) + 1.0f;
          _4133 = (_3662 / ((_4129 * _4129) * 3.1415927f)) * (0.5f / ((((_3722 * _4117) + _3661) * _3719) + (_3722 * ((_3719 * _4117) + _3661))));
          _4149 = saturate(_3720);  // [sem: _3720_sat]
          _4154 = (_3569 * 1.5f) + 2.5f;
          _4155 = _4154 * _4154;
          _4165 = (max(0.0f, (0.3f - _3719)) * 0.25f) * ((exp2(_4155 * -0.48089835f) * 3.0f) + exp2(_4155 * -1.442695f));
          _4190 = (((1.0f - _3570) * 0.4774648f) * saturate(_3569)) * saturate((pow(_3724, 4.0f)) * exp2(log2(saturate(1.0f - abs(_3719))) * 3.0f));
          _4195 = (_4190 * _4049);
          _4196 = (_4190 * _4050);
          _4197 = (_4190 * _4051);
          _4198 = ((((max((_4133 * _4089), 0.0f) - _4114) * _3567) + _4114) * _4149);
          _4199 = ((((max((_4133 * _4090), 0.0f) - _4115) * _3567) + _4115) * _4149);
          _4200 = ((((max((_4133 * _4091), 0.0f) - _4116) * _3567) + _4116) * _4149);
          _4201 = (((_4049 * _3513) * _4165) + _4042);
          _4202 = (((_4050 * _3514) * _4165) + _4042);
          _4203 = (((_4051 * _3515) * _4165) + _4042);
          if (!_4025) {
            if (_4026) {
              _4369 = _4018;
              _4370 = _4019;
              _4371 = _4020;
              _4372 = _4021;
              _4373 = _4022;
              _4374 = _4023;
              if (_3604) {
                _4377 = dot(float3(_1069, _1070, _1071), float3(_3599, _3600, _3601)) * 2.0f;
                _4381 = _1069 - (_4377 * _3599);
                _4382 = _1070 - (_4377 * _3600);
                _4383 = _1071 - (_4377 * _3601);
                _4384 = _3705 - _4381;
                _4385 = _3706 - _4382;
                _4386 = _3707 - _4383;
                _4388 = rsqrt(dot(float3(_4384, _4385, _4386), float3(_4384, _4385, _4386)));  // [sem: invLength]
                _4389 = _4384 * _4388;
                _4390 = _4385 * _4388;
                _4391 = _4386 * _4388;
                _4392 = -0.0f - _4381;
                _4393 = -0.0f - _4382;
                _4394 = -0.0f - _4383;
                _4396 = saturate(dot(float3(_3549, _3550, _3551), float3(_4392, _4393, _4394)));  // [sem: expr_sat]
                _4398 = saturate(dot(float3(_3599, _3600, _3601), float3(_4389, _4390, _4391)));  // [sem: expr_sat]
                _4400 = saturate(_3720);  // [sem: _3720_sat]
                _4411 = 1.0f - ((_4398 * _4398) * 0.9f);
                _4414 = (0.03183099f / (_4411 * _4411)) * (0.5f / ((((_4396 * 0.9f) + 0.1f) * _3720) + (_4396 * ((_3720 * 0.9f) + 0.1f))));
                _4440 = _4372;
                _4441 = _4373;
                _4442 = _4374;
                _4443 = dot(float3(_4392, _4393, _4394), float3(_4389, _4390, _4391));
                _4444 = _4398;
                _4445 = (((float(half(max((_4414 * _3516), 0.0f) * _4400)) - _4369) * 0.875f) + _4369);
                _4446 = (((float(half(max((_4414 * _3517), 0.0f) * _4400)) - _4370) * 0.875f) + _4370);
                _4447 = (((float(half(max((_4414 * _3518), 0.0f) * _4400)) - _4371) * 0.875f) + _4371);
              } else {
                _4440 = _4372;
                _4441 = _4373;
                _4442 = _4374;
                _4443 = _3725;
                _4444 = _3724;
                _4445 = _4369;
                _4446 = _4370;
                _4447 = _4371;
              }
            } else {
              _4206 = saturate(_3719);  // [sem: _3719_sat]
              _4207 = 1.0f - _3662;
              _4208 = 1.0f - _3727;
              _4209 = _4208 * _4208;
              _4212 = ((_4209 * _4209) * _4208) + _3727;
              _4213 = 1.0f - _4206;
              _4214 = _4213 * _4213;
              _4219 = 1.0f - _3722;
              _4220 = _4219 * _4219;
              _4247 = (_4206 * 0.31830987f) * ((((_3727 * ((((_4207 * 34.5f) + -59.0f) * _4207) + 24.5f)) * exp2(-0.0f - (max(((_4207 * 73.2f) + -21.2f), 8.9f) * sqrt(_3724)))) + _4212) + ((((1.0f - ((_4214 * _4214) * (_4213 * 0.75f))) * (1.0f - ((_4220 * _4220) * (_4219 * 0.75f)))) - _4212) * saturate((_4207 * 2.2f) + -0.5f)));
              _4250 = saturate(1.0f - saturate(_3725));  // [sem: expr_sat]
              _4251 = _4250 * _4250;
              _4253 = (_4251 * _4251) * _4250;
              _4256 = _4253 * saturate(_3659 * 50.0f);
              _4257 = 1.0f - _4253;
              _4261 = (_4257 * _3658) + _4256;
              _4262 = (_4257 * _3659) + _4256;
              _4263 = (_4257 * _3660) + _4256;
              if (!(_3566 == 29)) {
                _4265 = saturate(_3720);  // [sem: _3720_sat]
                _4266 = 1.0f - _3661;
                _4278 = (((_3724 * _3662) - _3724) * _3724) + 1.0f;
                _4282 = (_3662 / ((_4278 * _4278) * 3.1415927f)) * (0.5f / ((((_3722 * _4266) + _3661) * _3720) + (_3722 * ((_3720 * _4266) + _3661))));
                _4293 = (max((_4282 * _4261), 0.0f) * _4265);
                _4294 = (max((_4282 * _4262), 0.0f) * _4265);
                _4295 = (max((_4282 * _4263), 0.0f) * _4265);
              } else {
                _4293 = 0.0f;
                _4294 = 0.0f;
                _4295 = 0.0f;
              }
              // RenoDX: >>> [Patch: MaterialSmoothTerminator] [Version: 1.18.00]
              // Description: Softens the geometric shadow terminator after this direct-light clone has
              //              resolved its diffuse scalar and specular RGB. The shared factor multiplies
              //              all four outputs at the clone's common post-specular boundary so the direct
              //              lighting response remains consistent across material branches. The entire
              //              mutation is gated; at zero no output is written.
              if (SMOOTH_TERMINATOR > 0.0f) {
                float _rndx_c2 = CallistoSmoothTerminator(_4206, _3727, _3724, SMOOTH_TERMINATOR, 0.5f);
                _4247 *= _rndx_c2;
                _4293 *= _rndx_c2;
                _4294 *= _rndx_c2;
                _4295 *= _rndx_c2;
              }
              // RenoDX: <<< [Patch: MaterialSmoothTerminator]
              if (_3635) {
                if (_3566 == 65) {
                  _4339 = _4293;
                  _4340 = _4294;
                  _4341 = _4295;
                  _4346 = max(1e-06f, _exposure2.x);
                  _4355 = ((_4206 * 50.265484f) * exp2(log2(saturate(dot(float3(_3599, _3600, _3601), float3(_1069, _1070, _1071)))) * 16.0f)) / (((_4346 * _4346) * 1e+06f) + 1.0f);
                  _4440 = ((((_4355 * _3516) - _4247) * _3565) + _4247);
                  _4441 = ((((_4355 * _3517) - _4247) * _3565) + _4247);
                  _4442 = ((((_4355 * _3518) - _4247) * _3565) + _4247);
                  _4443 = _3725;
                  _4444 = _3724;
                  _4445 = _4339;
                  _4446 = _4340;
                  _4447 = _4341;
                } else {
                  _4303 = 1.0f - _3667;
                  _4315 = (((_3724 * _3668) - _3724) * _3724) + 1.0f;
                  _4319 = (_3668 / ((_4315 * _4315) * 3.1415927f)) * (0.5f / ((((_3722 * _4303) + _3667) * _3720) + (_3722 * ((_3720 * _4303) + _3667))));
                  _4326 = saturate(_3720) * 0.39990234f;
                  _4334 = ((max((_4319 * _4261), 0.0f) * _4326) + (_4293 * 0.60009766f));
                  _4335 = ((max((_4319 * _4262), 0.0f) * _4326) + (_4294 * 0.60009766f));
                  _4336 = ((max((_4319 * _4263), 0.0f) * _4326) + (_4295 * 0.60009766f));
                  if (_3566 == 65) {
                    _4339 = _4334;
                    _4340 = _4335;
                    _4341 = _4336;
                    _4346 = max(1e-06f, _exposure2.x);
                    _4355 = ((_4206 * 50.265484f) * exp2(log2(saturate(dot(float3(_3599, _3600, _3601), float3(_1069, _1070, _1071)))) * 16.0f)) / (((_4346 * _4346) * 1e+06f) + 1.0f);
                    _4440 = ((((_4355 * _3516) - _4247) * _3565) + _4247);
                    _4441 = ((((_4355 * _3517) - _4247) * _3565) + _4247);
                    _4442 = ((((_4355 * _3518) - _4247) * _3565) + _4247);
                    _4443 = _3725;
                    _4444 = _3724;
                    _4445 = _4339;
                    _4446 = _4340;
                    _4447 = _4341;
                  } else {
                    _4369 = _4334;
                    _4370 = _4335;
                    _4371 = _4336;
                    _4372 = _4247;
                    _4373 = _4247;
                    _4374 = _4247;
                    if (_3604) {
                      _4377 = dot(float3(_1069, _1070, _1071), float3(_3599, _3600, _3601)) * 2.0f;
                      _4381 = _1069 - (_4377 * _3599);
                      _4382 = _1070 - (_4377 * _3600);
                      _4383 = _1071 - (_4377 * _3601);
                      _4384 = _3705 - _4381;
                      _4385 = _3706 - _4382;
                      _4386 = _3707 - _4383;
                      _4388 = rsqrt(dot(float3(_4384, _4385, _4386), float3(_4384, _4385, _4386)));  // [sem: invLength]
                      _4389 = _4384 * _4388;
                      _4390 = _4385 * _4388;
                      _4391 = _4386 * _4388;
                      _4392 = -0.0f - _4381;
                      _4393 = -0.0f - _4382;
                      _4394 = -0.0f - _4383;
                      _4396 = saturate(dot(float3(_3549, _3550, _3551), float3(_4392, _4393, _4394)));  // [sem: expr_sat]
                      _4398 = saturate(dot(float3(_3599, _3600, _3601), float3(_4389, _4390, _4391)));  // [sem: expr_sat]
                      _4400 = saturate(_3720);  // [sem: _3720_sat]
                      _4411 = 1.0f - ((_4398 * _4398) * 0.9f);
                      _4414 = (0.03183099f / (_4411 * _4411)) * (0.5f / ((((_4396 * 0.9f) + 0.1f) * _3720) + (_4396 * ((_3720 * 0.9f) + 0.1f))));
                      _4440 = _4372;
                      _4441 = _4373;
                      _4442 = _4374;
                      _4443 = dot(float3(_4392, _4393, _4394), float3(_4389, _4390, _4391));
                      _4444 = _4398;
                      _4445 = (((float(half(max((_4414 * _3516), 0.0f) * _4400)) - _4369) * 0.875f) + _4369);
                      _4446 = (((float(half(max((_4414 * _3517), 0.0f) * _4400)) - _4370) * 0.875f) + _4370);
                      _4447 = (((float(half(max((_4414 * _3518), 0.0f) * _4400)) - _4371) * 0.875f) + _4371);
                    } else {
                      _4440 = _4372;
                      _4441 = _4373;
                      _4442 = _4374;
                      _4443 = _3725;
                      _4444 = _3724;
                      _4445 = _4369;
                      _4446 = _4370;
                      _4447 = _4371;
                    }
                  }
                }
              } else {
                _4334 = _4293;
                _4335 = _4294;
                _4336 = _4295;
                if (_3566 == 65) {
                  _4339 = _4334;
                  _4340 = _4335;
                  _4341 = _4336;
                  _4346 = max(1e-06f, _exposure2.x);
                  _4355 = ((_4206 * 50.265484f) * exp2(log2(saturate(dot(float3(_3599, _3600, _3601), float3(_1069, _1070, _1071)))) * 16.0f)) / (((_4346 * _4346) * 1e+06f) + 1.0f);
                  _4440 = ((((_4355 * _3516) - _4247) * _3565) + _4247);
                  _4441 = ((((_4355 * _3517) - _4247) * _3565) + _4247);
                  _4442 = ((((_4355 * _3518) - _4247) * _3565) + _4247);
                  _4443 = _3725;
                  _4444 = _3724;
                  _4445 = _4339;
                  _4446 = _4340;
                  _4447 = _4341;
                } else {
                  _4369 = _4334;
                  _4370 = _4335;
                  _4371 = _4336;
                  _4372 = _4247;
                  _4373 = _4247;
                  _4374 = _4247;
                  if (_3604) {
                    _4377 = dot(float3(_1069, _1070, _1071), float3(_3599, _3600, _3601)) * 2.0f;
                    _4381 = _1069 - (_4377 * _3599);
                    _4382 = _1070 - (_4377 * _3600);
                    _4383 = _1071 - (_4377 * _3601);
                    _4384 = _3705 - _4381;
                    _4385 = _3706 - _4382;
                    _4386 = _3707 - _4383;
                    _4388 = rsqrt(dot(float3(_4384, _4385, _4386), float3(_4384, _4385, _4386)));  // [sem: invLength]
                    _4389 = _4384 * _4388;
                    _4390 = _4385 * _4388;
                    _4391 = _4386 * _4388;
                    _4392 = -0.0f - _4381;
                    _4393 = -0.0f - _4382;
                    _4394 = -0.0f - _4383;
                    _4396 = saturate(dot(float3(_3549, _3550, _3551), float3(_4392, _4393, _4394)));  // [sem: expr_sat]
                    _4398 = saturate(dot(float3(_3599, _3600, _3601), float3(_4389, _4390, _4391)));  // [sem: expr_sat]
                    _4400 = saturate(_3720);  // [sem: _3720_sat]
                    _4411 = 1.0f - ((_4398 * _4398) * 0.9f);
                    _4414 = (0.03183099f / (_4411 * _4411)) * (0.5f / ((((_4396 * 0.9f) + 0.1f) * _3720) + (_4396 * ((_3720 * 0.9f) + 0.1f))));
                    _4440 = _4372;
                    _4441 = _4373;
                    _4442 = _4374;
                    _4443 = dot(float3(_4392, _4393, _4394), float3(_4389, _4390, _4391));
                    _4444 = _4398;
                    _4445 = (((float(half(max((_4414 * _3516), 0.0f) * _4400)) - _4369) * 0.875f) + _4369);
                    _4446 = (((float(half(max((_4414 * _3517), 0.0f) * _4400)) - _4370) * 0.875f) + _4370);
                    _4447 = (((float(half(max((_4414 * _3518), 0.0f) * _4400)) - _4371) * 0.875f) + _4371);
                  } else {
                    _4440 = _4372;
                    _4441 = _4373;
                    _4442 = _4374;
                    _4443 = _3725;
                    _4444 = _3724;
                    _4445 = _4369;
                    _4446 = _4370;
                    _4447 = _4371;
                  }
                }
              }
            }
          } else {
            _4440 = _4021;
            _4441 = _4022;
            _4442 = _4023;
            _4443 = _3725;
            _4444 = _3724;
            _4445 = _4018;
            _4446 = _4019;
            _4447 = _4020;
          }
          _4469 = select(_4027, _4198, _4445) * _3513;
          _4470 = select(_4027, _4199, _4446) * _3514;
          _4471 = select(_4027, _4200, _4447) * _3515;
          _4479 = _4443;
          _4480 = _4444;
          _4481 = select(_4027, 0.0f, _4015);
          _4482 = select(_4027, 0.0f, _4016);
          _4483 = select(_4027, 0.0f, _4017);
          _4484 = select(_4027, (_4469 + _4195), _4469);
          _4485 = select(_4027, (_4470 + _4196), _4470);
          _4486 = select(_4027, (_4471 + _4197), _4471);
          _4487 = (select(_4027, _4201, (-0.0f - min(-0.0f, (-0.0f - _4440)))) * _3513);
          _4488 = (select(_4027, _4202, (-0.0f - min(-0.0f, (-0.0f - _4441)))) * _3514);
          _4489 = (select(_4027, _4203, (-0.0f - min(-0.0f, (-0.0f - _4442)))) * _3515);
        } else {
          if ((_3719 > 0.0f) || (_3720 > 0.0f)) {
            _4195 = 0.0f;
            _4196 = 0.0f;
            _4197 = 0.0f;
            _4198 = 0.0f;
            _4199 = 0.0f;
            _4200 = 0.0f;
            _4201 = 0.0f;
            _4202 = 0.0f;
            _4203 = 0.0f;
            if (!_4025) {
              if (_4026) {
                _4369 = _4018;
                _4370 = _4019;
                _4371 = _4020;
                _4372 = _4021;
                _4373 = _4022;
                _4374 = _4023;
                if (_3604) {
                  _4377 = dot(float3(_1069, _1070, _1071), float3(_3599, _3600, _3601)) * 2.0f;
                  _4381 = _1069 - (_4377 * _3599);
                  _4382 = _1070 - (_4377 * _3600);
                  _4383 = _1071 - (_4377 * _3601);
                  _4384 = _3705 - _4381;
                  _4385 = _3706 - _4382;
                  _4386 = _3707 - _4383;
                  _4388 = rsqrt(dot(float3(_4384, _4385, _4386), float3(_4384, _4385, _4386)));  // [sem: invLength]
                  _4389 = _4384 * _4388;
                  _4390 = _4385 * _4388;
                  _4391 = _4386 * _4388;
                  _4392 = -0.0f - _4381;
                  _4393 = -0.0f - _4382;
                  _4394 = -0.0f - _4383;
                  _4396 = saturate(dot(float3(_3549, _3550, _3551), float3(_4392, _4393, _4394)));  // [sem: expr_sat]
                  _4398 = saturate(dot(float3(_3599, _3600, _3601), float3(_4389, _4390, _4391)));  // [sem: expr_sat]
                  _4400 = saturate(_3720);  // [sem: _3720_sat]
                  _4411 = 1.0f - ((_4398 * _4398) * 0.9f);
                  _4414 = (0.03183099f / (_4411 * _4411)) * (0.5f / ((((_4396 * 0.9f) + 0.1f) * _3720) + (_4396 * ((_3720 * 0.9f) + 0.1f))));
                  _4440 = _4372;
                  _4441 = _4373;
                  _4442 = _4374;
                  _4443 = dot(float3(_4392, _4393, _4394), float3(_4389, _4390, _4391));
                  _4444 = _4398;
                  _4445 = (((float(half(max((_4414 * _3516), 0.0f) * _4400)) - _4369) * 0.875f) + _4369);
                  _4446 = (((float(half(max((_4414 * _3517), 0.0f) * _4400)) - _4370) * 0.875f) + _4370);
                  _4447 = (((float(half(max((_4414 * _3518), 0.0f) * _4400)) - _4371) * 0.875f) + _4371);
                } else {
                  _4440 = _4372;
                  _4441 = _4373;
                  _4442 = _4374;
                  _4443 = _3725;
                  _4444 = _3724;
                  _4445 = _4369;
                  _4446 = _4370;
                  _4447 = _4371;
                }
              } else {
                _4206 = saturate(_3719);  // [sem: _3719_sat]
                _4207 = 1.0f - _3662;
                _4208 = 1.0f - _3727;
                _4209 = _4208 * _4208;
                _4212 = ((_4209 * _4209) * _4208) + _3727;
                _4213 = 1.0f - _4206;
                _4214 = _4213 * _4213;
                _4219 = 1.0f - _3722;
                _4220 = _4219 * _4219;
                _4247 = (_4206 * 0.31830987f) * ((((_3727 * ((((_4207 * 34.5f) + -59.0f) * _4207) + 24.5f)) * exp2(-0.0f - (max(((_4207 * 73.2f) + -21.2f), 8.9f) * sqrt(_3724)))) + _4212) + ((((1.0f - ((_4214 * _4214) * (_4213 * 0.75f))) * (1.0f - ((_4220 * _4220) * (_4219 * 0.75f)))) - _4212) * saturate((_4207 * 2.2f) + -0.5f)));
                _4250 = saturate(1.0f - saturate(_3725));  // [sem: expr_sat]
                _4251 = _4250 * _4250;
                _4253 = (_4251 * _4251) * _4250;
                _4256 = _4253 * saturate(_3659 * 50.0f);
                _4257 = 1.0f - _4253;
                _4261 = (_4257 * _3658) + _4256;
                _4262 = (_4257 * _3659) + _4256;
                _4263 = (_4257 * _3660) + _4256;
                if (!(_3566 == 29)) {
                  _4265 = saturate(_3720);  // [sem: _3720_sat]
                  _4266 = 1.0f - _3661;
                  _4278 = (((_3724 * _3662) - _3724) * _3724) + 1.0f;
                  _4282 = (_3662 / ((_4278 * _4278) * 3.1415927f)) * (0.5f / ((((_3722 * _4266) + _3661) * _3720) + (_3722 * ((_3720 * _4266) + _3661))));
                  _4293 = (max((_4282 * _4261), 0.0f) * _4265);
                  _4294 = (max((_4282 * _4262), 0.0f) * _4265);
                  _4295 = (max((_4282 * _4263), 0.0f) * _4265);
                } else {
                  _4293 = 0.0f;
                  _4294 = 0.0f;
                  _4295 = 0.0f;
                }
                // RenoDX: >>> [Patch: MaterialSmoothTerminator] [Version: 1.18.00]
                // Description: Softens the geometric shadow terminator after this direct-light clone has
                //              resolved its diffuse scalar and specular RGB. The shared factor multiplies
                //              all four outputs at the clone's common post-specular boundary so the direct
                //              lighting response remains consistent across material branches. The entire
                //              mutation is gated; at zero no output is written.
                if (SMOOTH_TERMINATOR > 0.0f) {
                  float _rndx_c2 = CallistoSmoothTerminator(_4206, _3727, _3724, SMOOTH_TERMINATOR, 0.5f);
                  _4247 *= _rndx_c2;
                  _4293 *= _rndx_c2;
                  _4294 *= _rndx_c2;
                  _4295 *= _rndx_c2;
                }
                // RenoDX: <<< [Patch: MaterialSmoothTerminator]
                if (_3635) {
                  if (_3566 == 65) {
                    _4339 = _4293;
                    _4340 = _4294;
                    _4341 = _4295;
                    _4346 = max(1e-06f, _exposure2.x);
                    _4355 = ((_4206 * 50.265484f) * exp2(log2(saturate(dot(float3(_3599, _3600, _3601), float3(_1069, _1070, _1071)))) * 16.0f)) / (((_4346 * _4346) * 1e+06f) + 1.0f);
                    _4440 = ((((_4355 * _3516) - _4247) * _3565) + _4247);
                    _4441 = ((((_4355 * _3517) - _4247) * _3565) + _4247);
                    _4442 = ((((_4355 * _3518) - _4247) * _3565) + _4247);
                    _4443 = _3725;
                    _4444 = _3724;
                    _4445 = _4339;
                    _4446 = _4340;
                    _4447 = _4341;
                  } else {
                    _4303 = 1.0f - _3667;
                    _4315 = (((_3724 * _3668) - _3724) * _3724) + 1.0f;
                    _4319 = (_3668 / ((_4315 * _4315) * 3.1415927f)) * (0.5f / ((((_3722 * _4303) + _3667) * _3720) + (_3722 * ((_3720 * _4303) + _3667))));
                    _4326 = saturate(_3720) * 0.39990234f;
                    _4334 = ((max((_4319 * _4261), 0.0f) * _4326) + (_4293 * 0.60009766f));
                    _4335 = ((max((_4319 * _4262), 0.0f) * _4326) + (_4294 * 0.60009766f));
                    _4336 = ((max((_4319 * _4263), 0.0f) * _4326) + (_4295 * 0.60009766f));
                    if (_3566 == 65) {
                      _4339 = _4334;
                      _4340 = _4335;
                      _4341 = _4336;
                      _4346 = max(1e-06f, _exposure2.x);
                      _4355 = ((_4206 * 50.265484f) * exp2(log2(saturate(dot(float3(_3599, _3600, _3601), float3(_1069, _1070, _1071)))) * 16.0f)) / (((_4346 * _4346) * 1e+06f) + 1.0f);
                      _4440 = ((((_4355 * _3516) - _4247) * _3565) + _4247);
                      _4441 = ((((_4355 * _3517) - _4247) * _3565) + _4247);
                      _4442 = ((((_4355 * _3518) - _4247) * _3565) + _4247);
                      _4443 = _3725;
                      _4444 = _3724;
                      _4445 = _4339;
                      _4446 = _4340;
                      _4447 = _4341;
                    } else {
                      _4369 = _4334;
                      _4370 = _4335;
                      _4371 = _4336;
                      _4372 = _4247;
                      _4373 = _4247;
                      _4374 = _4247;
                      if (_3604) {
                        _4377 = dot(float3(_1069, _1070, _1071), float3(_3599, _3600, _3601)) * 2.0f;
                        _4381 = _1069 - (_4377 * _3599);
                        _4382 = _1070 - (_4377 * _3600);
                        _4383 = _1071 - (_4377 * _3601);
                        _4384 = _3705 - _4381;
                        _4385 = _3706 - _4382;
                        _4386 = _3707 - _4383;
                        _4388 = rsqrt(dot(float3(_4384, _4385, _4386), float3(_4384, _4385, _4386)));  // [sem: invLength]
                        _4389 = _4384 * _4388;
                        _4390 = _4385 * _4388;
                        _4391 = _4386 * _4388;
                        _4392 = -0.0f - _4381;
                        _4393 = -0.0f - _4382;
                        _4394 = -0.0f - _4383;
                        _4396 = saturate(dot(float3(_3549, _3550, _3551), float3(_4392, _4393, _4394)));  // [sem: expr_sat]
                        _4398 = saturate(dot(float3(_3599, _3600, _3601), float3(_4389, _4390, _4391)));  // [sem: expr_sat]
                        _4400 = saturate(_3720);  // [sem: _3720_sat]
                        _4411 = 1.0f - ((_4398 * _4398) * 0.9f);
                        _4414 = (0.03183099f / (_4411 * _4411)) * (0.5f / ((((_4396 * 0.9f) + 0.1f) * _3720) + (_4396 * ((_3720 * 0.9f) + 0.1f))));
                        _4440 = _4372;
                        _4441 = _4373;
                        _4442 = _4374;
                        _4443 = dot(float3(_4392, _4393, _4394), float3(_4389, _4390, _4391));
                        _4444 = _4398;
                        _4445 = (((float(half(max((_4414 * _3516), 0.0f) * _4400)) - _4369) * 0.875f) + _4369);
                        _4446 = (((float(half(max((_4414 * _3517), 0.0f) * _4400)) - _4370) * 0.875f) + _4370);
                        _4447 = (((float(half(max((_4414 * _3518), 0.0f) * _4400)) - _4371) * 0.875f) + _4371);
                      } else {
                        _4440 = _4372;
                        _4441 = _4373;
                        _4442 = _4374;
                        _4443 = _3725;
                        _4444 = _3724;
                        _4445 = _4369;
                        _4446 = _4370;
                        _4447 = _4371;
                      }
                    }
                  }
                } else {
                  _4334 = _4293;
                  _4335 = _4294;
                  _4336 = _4295;
                  if (_3566 == 65) {
                    _4339 = _4334;
                    _4340 = _4335;
                    _4341 = _4336;
                    _4346 = max(1e-06f, _exposure2.x);
                    _4355 = ((_4206 * 50.265484f) * exp2(log2(saturate(dot(float3(_3599, _3600, _3601), float3(_1069, _1070, _1071)))) * 16.0f)) / (((_4346 * _4346) * 1e+06f) + 1.0f);
                    _4440 = ((((_4355 * _3516) - _4247) * _3565) + _4247);
                    _4441 = ((((_4355 * _3517) - _4247) * _3565) + _4247);
                    _4442 = ((((_4355 * _3518) - _4247) * _3565) + _4247);
                    _4443 = _3725;
                    _4444 = _3724;
                    _4445 = _4339;
                    _4446 = _4340;
                    _4447 = _4341;
                  } else {
                    _4369 = _4334;
                    _4370 = _4335;
                    _4371 = _4336;
                    _4372 = _4247;
                    _4373 = _4247;
                    _4374 = _4247;
                    if (_3604) {
                      _4377 = dot(float3(_1069, _1070, _1071), float3(_3599, _3600, _3601)) * 2.0f;
                      _4381 = _1069 - (_4377 * _3599);
                      _4382 = _1070 - (_4377 * _3600);
                      _4383 = _1071 - (_4377 * _3601);
                      _4384 = _3705 - _4381;
                      _4385 = _3706 - _4382;
                      _4386 = _3707 - _4383;
                      _4388 = rsqrt(dot(float3(_4384, _4385, _4386), float3(_4384, _4385, _4386)));  // [sem: invLength]
                      _4389 = _4384 * _4388;
                      _4390 = _4385 * _4388;
                      _4391 = _4386 * _4388;
                      _4392 = -0.0f - _4381;
                      _4393 = -0.0f - _4382;
                      _4394 = -0.0f - _4383;
                      _4396 = saturate(dot(float3(_3549, _3550, _3551), float3(_4392, _4393, _4394)));  // [sem: expr_sat]
                      _4398 = saturate(dot(float3(_3599, _3600, _3601), float3(_4389, _4390, _4391)));  // [sem: expr_sat]
                      _4400 = saturate(_3720);  // [sem: _3720_sat]
                      _4411 = 1.0f - ((_4398 * _4398) * 0.9f);
                      _4414 = (0.03183099f / (_4411 * _4411)) * (0.5f / ((((_4396 * 0.9f) + 0.1f) * _3720) + (_4396 * ((_3720 * 0.9f) + 0.1f))));
                      _4440 = _4372;
                      _4441 = _4373;
                      _4442 = _4374;
                      _4443 = dot(float3(_4392, _4393, _4394), float3(_4389, _4390, _4391));
                      _4444 = _4398;
                      _4445 = (((float(half(max((_4414 * _3516), 0.0f) * _4400)) - _4369) * 0.875f) + _4369);
                      _4446 = (((float(half(max((_4414 * _3517), 0.0f) * _4400)) - _4370) * 0.875f) + _4370);
                      _4447 = (((float(half(max((_4414 * _3518), 0.0f) * _4400)) - _4371) * 0.875f) + _4371);
                    } else {
                      _4440 = _4372;
                      _4441 = _4373;
                      _4442 = _4374;
                      _4443 = _3725;
                      _4444 = _3724;
                      _4445 = _4369;
                      _4446 = _4370;
                      _4447 = _4371;
                    }
                  }
                }
              }
            } else {
              _4440 = _4021;
              _4441 = _4022;
              _4442 = _4023;
              _4443 = _3725;
              _4444 = _3724;
              _4445 = _4018;
              _4446 = _4019;
              _4447 = _4020;
            }
            _4469 = select(_4027, _4198, _4445) * _3513;
            _4470 = select(_4027, _4199, _4446) * _3514;
            _4471 = select(_4027, _4200, _4447) * _3515;
            _4479 = _4443;
            _4480 = _4444;
            _4481 = select(_4027, 0.0f, _4015);
            _4482 = select(_4027, 0.0f, _4016);
            _4483 = select(_4027, 0.0f, _4017);
            _4484 = select(_4027, (_4469 + _4195), _4469);
            _4485 = select(_4027, (_4470 + _4196), _4470);
            _4486 = select(_4027, (_4471 + _4197), _4471);
            _4487 = (select(_4027, _4201, (-0.0f - min(-0.0f, (-0.0f - _4440)))) * _3513);
            _4488 = (select(_4027, _4202, (-0.0f - min(-0.0f, (-0.0f - _4441)))) * _3514);
            _4489 = (select(_4027, _4203, (-0.0f - min(-0.0f, (-0.0f - _4442)))) * _3515);
          } else {
            _4479 = _3725;
            _4480 = _3724;
            _4481 = _4015;
            _4482 = _4016;
            _4483 = _4017;
            _4484 = _4018;
            _4485 = _4019;
            _4486 = _4020;
            _4487 = _4021;
            _4488 = _4022;
            _4489 = _4023;
          }
        }
      } else {
        _4479 = _3725;
        _4480 = _3724;
        _4481 = _4015;
        _4482 = _4016;
        _4483 = _4017;
        _4484 = _4018;
        _4485 = _4019;
        _4486 = _4020;
        _4487 = _4021;
        _4488 = _4022;
        _4489 = _4023;
      }
    }
    if (_3688) {
      _4493 = max(0.0f, (0.3f - _3719)) * 0.23190688f;
      _4501 = ((_4493 * _3513) + _4487);
      _4502 = ((_4493 * _3514) + _4488);
      _4503 = ((_4493 * _3515) + _4489);
    } else {
      _4501 = _4487;
      _4502 = _4488;
      _4503 = _4489;
    }
    _4505 = 1.0f - (_4479 * 0.85f);
    if (_3635) {
      _4509 = max(4.0f, _3693);
      _4510 = _4509 * _4509;
      _4512 = exp2(_4510 * -225.4211f);
      _4517 = exp2(_4510 * -29.807749f);
      _4525 = exp2(_4510 * -7.7149463f);
      _4531 = exp2(_4510 * -2.5444357f);
      _4533 = _4531 * 0.007f;
      _4538 = exp2(_4510 * -0.72497237f);
      _4553 = saturate(dot(float3(_3705, _3706, _3707), float3((-0.0f - _2706), (-0.0f - _2707), (-0.0f - _2708))) + 0.3f) * 0.31830987f;
      _4841 = ((_4553 * ((((((_4517 * 0.1f) + (_4512 * 0.233f)) + (_4525 * 0.118f)) + (_4531 * 0.113f)) + (_4538 * 0.358f)) + (exp2(_4510 * -0.19469568f) * 0.078f))) + _4501);
      _4842 = ((_4553 * (((((_4517 * 0.336f) + (_4512 * 0.455f)) + (_4525 * 0.198f)) + _4533) + (_4538 * 0.004f))) + _4502);
      _4843 = ((_4553 * (((_4517 * 0.344f) + (_4512 * 0.649f)) + _4533)) + _4503);
      _4844 = _4841 * _3708;
      _4845 = _4842 * _3709;
      _4846 = _4843 * _3710;
      _4848 = (_4484 * _3708) * _3513;
      _4850 = (_4485 * _3709) * _3514;
      _4852 = (_4486 * _3710) * _3515;
      bool __branch_chain_4840;
      if (_3566 == 97) {
        _4868 = _4848;
        _4869 = _4850;
        _4870 = _4852;
        _4871 = _4844;
        _4872 = _4845;
        _4873 = _4846;
        _4874 = _4481;
        _4875 = _4482;
        _4876 = _4483;
        _4877 = _3513;
        _4878 = _3514;
        _4879 = _3515;
        __branch_chain_4840 = true;
      } else {
        _4855 = _4848;
        _4856 = _4850;
        _4857 = _4852;
        _4858 = _4844;
        _4859 = _4845;
        _4860 = _4846;
        _4861 = _4481;
        _4862 = _4482;
        _4863 = _4483;
        _4864 = _3513;
        _4865 = _3514;
        _4866 = _3515;
        if (_3670) {
          _4868 = _4855;
          _4869 = _4856;
          _4870 = _4857;
          _4871 = _4858;
          _4872 = _4859;
          _4873 = _4860;
          _4874 = _4861;
          _4875 = _4862;
          _4876 = _4863;
          _4877 = _4864;
          _4878 = _4865;
          _4879 = _4866;
          __branch_chain_4840 = true;
        } else {
          _5009 = _4858;
          _5010 = _4859;
          _5011 = _4860;
          _5012 = _4861;
          _5013 = _4862;
          _5014 = _4863;
          _5015 = _4855;
          _5016 = _4856;
          _5017 = _4857;
          __branch_chain_4840 = false;
        }
      }
      if (__branch_chain_4840) {
        if ((_123 < 1000.0f) && (_3209 == 0.0h)) {
          if (!(abs(_2707) > 0.99f)) {
            _4887 = -0.0f - _2708;
            _4889 = rsqrt(dot(float3(_4887, 0.0f, _2706), float3(_4887, 0.0f, _2706)));  // [sem: invLength]
            _4893 = (_4889 * _4887);
            _4894 = (_4889 * _2706);
          } else {
            _4893 = 1.0f;
            _4894 = 0.0f;
          }
          _4896 = -0.0f - (_2707 * _4894);
          _4899 = (_4894 * _2706) - (_4893 * _2708);
          _4900 = _4893 * _2707;
          _4902 = rsqrt(dot(float3(_4896, _4899, _4900), float3(_4896, _4899, _4900)));  // [sem: invLength]
          // [sem: _3__36__0__0__g_blueNoise_sampleLod]
          _4910 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_4893, 0.0f, _4894), float3(_3298, _3299, _3301)), dot(float3((_4902 * _4896), (_4899 * _4902), (_4902 * _4900)), float3(_3298, _3299, _3301))), 0.0f);
          _4914 = _4910.x + -0.5f;
          _4915 = _4910.y + -0.5f;
          _4916 = _4910.z + -0.5f;
          _4918 = rsqrt(dot(float3(_4914, _4915, _4916), float3(_4914, _4915, _4916)));  // [sem: invLength]
          _4922 = (_4914 * _4918) + _3599;
          _4923 = (_4915 * _4918) + _3600;
          _4924 = (_4916 * _4918) + _3601;
          _4926 = rsqrt(dot(float3(_4922, _4923, _4924), float3(_4922, _4923, _4924)));  // [sem: invLength]
          _4927 = _4922 * _4926;
          _4928 = _4923 * _4926;
          _4929 = _4924 * _4926;
          _4941 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
          _4942 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
          _4945 = saturate(_4941 * _4941);  // [sem: expr_sat]
          _4946 = saturate(_4942 * _4942);  // [sem: expr_sat]
          _4960 = dot(float3((-0.0f - _4927), (-0.0f - _4928), (-0.0f - _4929)), float3(_3705, _3706, _3707));
          _4962 = saturate(dot(float3(_4927, _4928, _4929), float3(_1069, _1070, _1071)));  // [sem: expr_sat]
          _4964 = saturate(1.0f - _4479);  // [sem: expr_sat]
          _4965 = _4964 * _4964;
          _4967 = (_4965 * _4965) * _4964;
          _4983 = 1.0f - ((_4480 * _4480) * 0.9999f);
          _4990 = (max((((3.1830987e-05f / (_4983 * _4983)) * (0.5f / ((((_4962 * 0.9999f) + 0.0001f) * _4960) + (_4962 * ((_4960 * 0.9999f) + 0.0001f))))) * (lerp(_4967, 1.0f, 0.08f))), 0.0f) * saturate(_4960)) + (exp2(log2(saturate(dot(float3(_1069, _1070, _1071), float3(_4927, _4928, _4929)))) * 1024.0f) * 50.0f);
          // [sem: expr_sat]
          _4995 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_4946 * _4946) * (3.0f - (_4946 * 2.0f)))) * (1.0f - ((_4945 * _4945) * (3.0f - (_4945 * 2.0f)))));
          _5009 = _4871;
          _5010 = _4872;
          _5011 = _4873;
          _5012 = _4874;
          _5013 = _4875;
          _5014 = _4876;
          _5015 = ((((_4995 * _3708) * _4877) * _4990) + _4868);
          _5016 = ((((_4995 * _3709) * _4878) * _4990) + _4869);
          _5017 = ((((_4995 * _3710) * _4879) * _4990) + _4870);
        } else {
          _5009 = _4871;
          _5010 = _4872;
          _5011 = _4873;
          _5012 = _4874;
          _5013 = _4875;
          _5014 = _4876;
          _5015 = _4868;
          _5016 = _4869;
          _5017 = _4870;
        }
      }
    } else {
      if (_3730) {
        _4563 = dot(float3(_3516, _3517, _3518), float3(0.212671f, 0.71516f, 0.072169f)) * _renderParams2.w;
        _4566 = _4563 + (_3512 - (_4563 * _3512));
        _4573 = (pow(_3513, 1.2f));
        _4574 = (pow(_3514, 1.2f));
        _4575 = (pow(_3515, 1.2f));
        _4581 = saturate(abs(dot(float3(_3705, _3706, _3707), float3(_986, _987, _988))));  // [sem: expr_sat]
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _4590 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_4581, _3526, saturate(sqrt(sqrt(_3516)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _4593 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_4581, _3526, saturate(sqrt(sqrt(_3517)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _4596 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_4581, _3526, saturate(sqrt(sqrt(_3518)))), 0.0f);
        _4605 = min(0.99f, _4590.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _4606 = min(0.99f, _4593.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _4607 = min(0.99f, _4596.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _4608 = min(0.99f, _4590.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _4609 = min(0.99f, _4593.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _4610 = min(0.99f, _4596.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _4611 = _4605 * _4605;
        _4612 = _4606 * _4606;
        _4613 = _4607 * _4607;
        _4614 = _4608 * _4608;
        _4615 = _4609 * _4609;
        _4616 = _4610 * _4610;
        _4617 = _4614 * _4608;
        _4618 = _4615 * _4609;
        _4619 = _4616 * _4610;
        _4620 = 1.0f - _4611;
        _4621 = 1.0f - _4612;
        _4622 = 1.0f - _4613;
        _4632 = _4620 * _4620;
        _4633 = _4621 * _4621;
        _4634 = _4622 * _4622;
        _4635 = _4632 * _4620;
        _4636 = _4633 * _4621;
        _4637 = _4634 * _4622;
        _4645 = min(max(_3526, 0.18f), 0.6f);
        _4646 = _4645 * _4645;
        _4647 = _4646 * 0.25f;
        _4648 = _4646 * 4.0f;
        _4650 = (_4606 + _4605) + _4607;
        _4651 = _4605 / _4650;
        _4652 = _4606 / _4650;
        _4653 = _4607 / _4650;
        _4654 = dot(float3(_4646, _4647, _4648), float3(_4651, _4652, _4653));
        _4655 = _4654 * _4654;
        _4659 = (asin(min(max(dot(float3(_986, _987, _988), float3(_1069, _1070, _1071)), -1.0f), 1.0f)) + asin(min(max(dot(float3(_986, _987, _988), float3(_3705, _3706, _3707)), -1.0f), 1.0f))) * 0.5f;
        _4660 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_4651, _4652, _4653));
        _4670 = _4660 * _4660;
        _4693 = (_4609 + _4608) + _4610;
        _4697 = dot(float3(_4646, _4647, _4648), float3((_4608 / _4693), (_4609 / _4693), (_4610 / _4693)));
        _4701 = sqrt((_4697 * _4697) + (_4655 * 2.0f));
        _4719 = (_4697 * 3.0f) + (_4654 * 2.0f);
        _4726 = (((_4617 + _4608) * ((_4611 * 0.7f) + 1.0f)) * _4701) / ((_4719 * _4617) + _4608);
        _4727 = (((_4618 + _4609) * ((_4612 * 0.7f) + 1.0f)) * _4701) / ((_4719 * _4618) + _4609);
        _4728 = (((_4619 + _4610) * ((_4613 * 0.7f) + 1.0f)) * _4701) / ((_4719 * _4619) + _4610);
        _4732 = _4659 - (((_4670 * (((_4611 * 4.0f) * _4614) + (_4632 * 2.0f))) * (1.0f - ((_4614 * 2.0f) / _4632))) / _4635);
        _4739 = _4659 - (((_4670 * (((_4612 * 4.0f) * _4615) + (_4633 * 2.0f))) * (1.0f - ((_4615 * 2.0f) / _4633))) / _4636);
        _4746 = _4659 - (((_4670 * (((_4613 * 4.0f) * _4616) + (_4634 * 2.0f))) * (1.0f - ((_4616 * 2.0f) / _4634))) / _4637);
        _4754 = (1.0f - _984) * 2.1f;
        _4775 = (_984 * 0.31830987f) * saturate(_3719);
        _4822 = _4573;
        _4823 = _4574;
        _4824 = _4575;
        _4825 = (((_4566 * _3708) * _4573) * ((((((_4617 * _4611) / _4635) + ((_4608 * _4611) / _4620)) * _4754) * exp2((((_4732 * _4732) * -0.5f) / ((_4726 * _4726) + _4655)) * 1.442695f)) + _4481));
        _4826 = (((_4566 * _3709) * _4574) * ((((((_4618 * _4612) / _4636) + ((_4609 * _4612) / _4621)) * _4754) * exp2((((_4739 * _4739) * -0.5f) / ((_4727 * _4727) + _4655)) * 1.442695f)) + _4482));
        _4827 = (((_4566 * _3710) * _4575) * ((((((_4619 * _4613) / _4637) + ((_4610 * _4613) / _4622)) * _4754) * exp2((((_4746 * _4746) * -0.5f) / ((_4728 * _4728) + _4655)) * 1.442695f)) + _4483));
        _4828 = (_4775 * _4573);
        _4829 = (_4775 * _4574);
        _4830 = (_4775 * _4575);
        _4855 = ((_4484 * _3708) * _4822);
        _4856 = ((_4485 * _3709) * _4823);
        _4857 = ((_4486 * _3710) * _4824);
        _4858 = (_4828 * _3708);
        _4859 = (_4829 * _3709);
        _4860 = (_4830 * _3710);
        _4861 = _4825;
        _4862 = _4826;
        _4863 = _4827;
        _4864 = _4822;
        _4865 = _4823;
        _4866 = _4824;
        if (_3670) {
          _4868 = _4855;
          _4869 = _4856;
          _4870 = _4857;
          _4871 = _4858;
          _4872 = _4859;
          _4873 = _4860;
          _4874 = _4861;
          _4875 = _4862;
          _4876 = _4863;
          _4877 = _4864;
          _4878 = _4865;
          _4879 = _4866;
          if ((_123 < 1000.0f) && (_3209 == 0.0h)) {
            if (!(abs(_2707) > 0.99f)) {
              _4887 = -0.0f - _2708;
              _4889 = rsqrt(dot(float3(_4887, 0.0f, _2706), float3(_4887, 0.0f, _2706)));  // [sem: invLength]
              _4893 = (_4889 * _4887);
              _4894 = (_4889 * _2706);
            } else {
              _4893 = 1.0f;
              _4894 = 0.0f;
            }
            _4896 = -0.0f - (_2707 * _4894);
            _4899 = (_4894 * _2706) - (_4893 * _2708);
            _4900 = _4893 * _2707;
            _4902 = rsqrt(dot(float3(_4896, _4899, _4900), float3(_4896, _4899, _4900)));  // [sem: invLength]
            // [sem: _3__36__0__0__g_blueNoise_sampleLod]
            _4910 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_4893, 0.0f, _4894), float3(_3298, _3299, _3301)), dot(float3((_4902 * _4896), (_4899 * _4902), (_4902 * _4900)), float3(_3298, _3299, _3301))), 0.0f);
            _4914 = _4910.x + -0.5f;
            _4915 = _4910.y + -0.5f;
            _4916 = _4910.z + -0.5f;
            _4918 = rsqrt(dot(float3(_4914, _4915, _4916), float3(_4914, _4915, _4916)));  // [sem: invLength]
            _4922 = (_4914 * _4918) + _3599;
            _4923 = (_4915 * _4918) + _3600;
            _4924 = (_4916 * _4918) + _3601;
            _4926 = rsqrt(dot(float3(_4922, _4923, _4924), float3(_4922, _4923, _4924)));  // [sem: invLength]
            _4927 = _4922 * _4926;
            _4928 = _4923 * _4926;
            _4929 = _4924 * _4926;
            _4941 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
            _4942 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
            _4945 = saturate(_4941 * _4941);  // [sem: expr_sat]
            _4946 = saturate(_4942 * _4942);  // [sem: expr_sat]
            _4960 = dot(float3((-0.0f - _4927), (-0.0f - _4928), (-0.0f - _4929)), float3(_3705, _3706, _3707));
            _4962 = saturate(dot(float3(_4927, _4928, _4929), float3(_1069, _1070, _1071)));  // [sem: expr_sat]
            _4964 = saturate(1.0f - _4479);  // [sem: expr_sat]
            _4965 = _4964 * _4964;
            _4967 = (_4965 * _4965) * _4964;
            _4983 = 1.0f - ((_4480 * _4480) * 0.9999f);
            _4990 = (max((((3.1830987e-05f / (_4983 * _4983)) * (0.5f / ((((_4962 * 0.9999f) + 0.0001f) * _4960) + (_4962 * ((_4960 * 0.9999f) + 0.0001f))))) * (lerp(_4967, 1.0f, 0.08f))), 0.0f) * saturate(_4960)) + (exp2(log2(saturate(dot(float3(_1069, _1070, _1071), float3(_4927, _4928, _4929)))) * 1024.0f) * 50.0f);
            // [sem: expr_sat]
            _4995 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_4946 * _4946) * (3.0f - (_4946 * 2.0f)))) * (1.0f - ((_4945 * _4945) * (3.0f - (_4945 * 2.0f)))));
            _5009 = _4871;
            _5010 = _4872;
            _5011 = _4873;
            _5012 = _4874;
            _5013 = _4875;
            _5014 = _4876;
            _5015 = ((((_4995 * _3708) * _4877) * _4990) + _4868);
            _5016 = ((((_4995 * _3709) * _4878) * _4990) + _4869);
            _5017 = ((((_4995 * _3710) * _4879) * _4990) + _4870);
          } else {
            _5009 = _4871;
            _5010 = _4872;
            _5011 = _4873;
            _5012 = _4874;
            _5013 = _4875;
            _5014 = _4876;
            _5015 = _4868;
            _5016 = _4869;
            _5017 = _4870;
          }
        } else {
          _5009 = _4858;
          _5010 = _4859;
          _5011 = _4860;
          _5012 = _4861;
          _5013 = _4862;
          _5014 = _4863;
          _5015 = _4855;
          _5016 = _4856;
          _5017 = _4857;
        }
      } else {
        if (_3687) {
          if (_3566 == 97) {
            _4868 = ((_4484 * _3708) * _3513);
            _4869 = ((_4485 * _3709) * _3514);
            _4870 = ((_4486 * _3710) * _3515);
            _4871 = (_4501 * _3708);
            _4872 = (_4502 * _3709);
            _4873 = (_4503 * _3710);
            _4874 = _4481;
            _4875 = _4482;
            _4876 = _4483;
            _4877 = _3513;
            _4878 = _3514;
            _4879 = _3515;
            if ((_123 < 1000.0f) && (_3209 == 0.0h)) {
              if (!(abs(_2707) > 0.99f)) {
                _4887 = -0.0f - _2708;
                _4889 = rsqrt(dot(float3(_4887, 0.0f, _2706), float3(_4887, 0.0f, _2706)));  // [sem: invLength]
                _4893 = (_4889 * _4887);
                _4894 = (_4889 * _2706);
              } else {
                _4893 = 1.0f;
                _4894 = 0.0f;
              }
              _4896 = -0.0f - (_2707 * _4894);
              _4899 = (_4894 * _2706) - (_4893 * _2708);
              _4900 = _4893 * _2707;
              _4902 = rsqrt(dot(float3(_4896, _4899, _4900), float3(_4896, _4899, _4900)));  // [sem: invLength]
              // [sem: _3__36__0__0__g_blueNoise_sampleLod]
              _4910 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_4893, 0.0f, _4894), float3(_3298, _3299, _3301)), dot(float3((_4902 * _4896), (_4899 * _4902), (_4902 * _4900)), float3(_3298, _3299, _3301))), 0.0f);
              _4914 = _4910.x + -0.5f;
              _4915 = _4910.y + -0.5f;
              _4916 = _4910.z + -0.5f;
              _4918 = rsqrt(dot(float3(_4914, _4915, _4916), float3(_4914, _4915, _4916)));  // [sem: invLength]
              _4922 = (_4914 * _4918) + _3599;
              _4923 = (_4915 * _4918) + _3600;
              _4924 = (_4916 * _4918) + _3601;
              _4926 = rsqrt(dot(float3(_4922, _4923, _4924), float3(_4922, _4923, _4924)));  // [sem: invLength]
              _4927 = _4922 * _4926;
              _4928 = _4923 * _4926;
              _4929 = _4924 * _4926;
              _4941 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
              _4942 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
              _4945 = saturate(_4941 * _4941);  // [sem: expr_sat]
              _4946 = saturate(_4942 * _4942);  // [sem: expr_sat]
              _4960 = dot(float3((-0.0f - _4927), (-0.0f - _4928), (-0.0f - _4929)), float3(_3705, _3706, _3707));
              _4962 = saturate(dot(float3(_4927, _4928, _4929), float3(_1069, _1070, _1071)));  // [sem: expr_sat]
              _4964 = saturate(1.0f - _4479);  // [sem: expr_sat]
              _4965 = _4964 * _4964;
              _4967 = (_4965 * _4965) * _4964;
              _4983 = 1.0f - ((_4480 * _4480) * 0.9999f);
              _4990 = (max((((3.1830987e-05f / (_4983 * _4983)) * (0.5f / ((((_4962 * 0.9999f) + 0.0001f) * _4960) + (_4962 * ((_4960 * 0.9999f) + 0.0001f))))) * (lerp(_4967, 1.0f, 0.08f))), 0.0f) * saturate(_4960)) + (exp2(log2(saturate(dot(float3(_1069, _1070, _1071), float3(_4927, _4928, _4929)))) * 1024.0f) * 50.0f);
              // [sem: expr_sat]
              _4995 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_4946 * _4946) * (3.0f - (_4946 * 2.0f)))) * (1.0f - ((_4945 * _4945) * (3.0f - (_4945 * 2.0f)))));
              _5009 = _4871;
              _5010 = _4872;
              _5011 = _4873;
              _5012 = _4874;
              _5013 = _4875;
              _5014 = _4876;
              _5015 = ((((_4995 * _3708) * _4877) * _4990) + _4868);
              _5016 = ((((_4995 * _3709) * _4878) * _4990) + _4869);
              _5017 = ((((_4995 * _3710) * _4879) * _4990) + _4870);
            } else {
              _5009 = _4871;
              _5010 = _4872;
              _5011 = _4873;
              _5012 = _4874;
              _5013 = _4875;
              _5014 = _4876;
              _5015 = _4868;
              _5016 = _4869;
              _5017 = _4870;
            }
          } else {
            if ((uint)((int)(_3566) + (int)(-105)) < (uint)2) {
              _4822 = _3513;
              _4823 = _3514;
              _4824 = _3515;
              _4825 = _4481;
              _4826 = _4482;
              _4827 = _4483;
              _4828 = _4501;
              _4829 = _4502;
              _4830 = _4503;
              _4855 = ((_4484 * _3708) * _4822);
              _4856 = ((_4485 * _3709) * _4823);
              _4857 = ((_4486 * _3710) * _4824);
              _4858 = (_4828 * _3708);
              _4859 = (_4829 * _3709);
              _4860 = (_4830 * _3710);
              _4861 = _4825;
              _4862 = _4826;
              _4863 = _4827;
              _4864 = _4822;
              _4865 = _4823;
              _4866 = _4824;
              if (_3670) {
                _4868 = _4855;
                _4869 = _4856;
                _4870 = _4857;
                _4871 = _4858;
                _4872 = _4859;
                _4873 = _4860;
                _4874 = _4861;
                _4875 = _4862;
                _4876 = _4863;
                _4877 = _4864;
                _4878 = _4865;
                _4879 = _4866;
                if ((_123 < 1000.0f) && (_3209 == 0.0h)) {
                  if (!(abs(_2707) > 0.99f)) {
                    _4887 = -0.0f - _2708;
                    _4889 = rsqrt(dot(float3(_4887, 0.0f, _2706), float3(_4887, 0.0f, _2706)));  // [sem: invLength]
                    _4893 = (_4889 * _4887);
                    _4894 = (_4889 * _2706);
                  } else {
                    _4893 = 1.0f;
                    _4894 = 0.0f;
                  }
                  _4896 = -0.0f - (_2707 * _4894);
                  _4899 = (_4894 * _2706) - (_4893 * _2708);
                  _4900 = _4893 * _2707;
                  _4902 = rsqrt(dot(float3(_4896, _4899, _4900), float3(_4896, _4899, _4900)));  // [sem: invLength]
                  // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                  _4910 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_4893, 0.0f, _4894), float3(_3298, _3299, _3301)), dot(float3((_4902 * _4896), (_4899 * _4902), (_4902 * _4900)), float3(_3298, _3299, _3301))), 0.0f);
                  _4914 = _4910.x + -0.5f;
                  _4915 = _4910.y + -0.5f;
                  _4916 = _4910.z + -0.5f;
                  _4918 = rsqrt(dot(float3(_4914, _4915, _4916), float3(_4914, _4915, _4916)));  // [sem: invLength]
                  _4922 = (_4914 * _4918) + _3599;
                  _4923 = (_4915 * _4918) + _3600;
                  _4924 = (_4916 * _4918) + _3601;
                  _4926 = rsqrt(dot(float3(_4922, _4923, _4924), float3(_4922, _4923, _4924)));  // [sem: invLength]
                  _4927 = _4922 * _4926;
                  _4928 = _4923 * _4926;
                  _4929 = _4924 * _4926;
                  _4941 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
                  _4942 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
                  _4945 = saturate(_4941 * _4941);  // [sem: expr_sat]
                  _4946 = saturate(_4942 * _4942);  // [sem: expr_sat]
                  _4960 = dot(float3((-0.0f - _4927), (-0.0f - _4928), (-0.0f - _4929)), float3(_3705, _3706, _3707));
                  _4962 = saturate(dot(float3(_4927, _4928, _4929), float3(_1069, _1070, _1071)));  // [sem: expr_sat]
                  _4964 = saturate(1.0f - _4479);  // [sem: expr_sat]
                  _4965 = _4964 * _4964;
                  _4967 = (_4965 * _4965) * _4964;
                  _4983 = 1.0f - ((_4480 * _4480) * 0.9999f);
                  _4990 = (max((((3.1830987e-05f / (_4983 * _4983)) * (0.5f / ((((_4962 * 0.9999f) + 0.0001f) * _4960) + (_4962 * ((_4960 * 0.9999f) + 0.0001f))))) * (lerp(_4967, 1.0f, 0.08f))), 0.0f) * saturate(_4960)) + (exp2(log2(saturate(dot(float3(_1069, _1070, _1071), float3(_4927, _4928, _4929)))) * 1024.0f) * 50.0f);
                  // [sem: expr_sat]
                  _4995 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_4946 * _4946) * (3.0f - (_4946 * 2.0f)))) * (1.0f - ((_4945 * _4945) * (3.0f - (_4945 * 2.0f)))));
                  _5009 = _4871;
                  _5010 = _4872;
                  _5011 = _4873;
                  _5012 = _4874;
                  _5013 = _4875;
                  _5014 = _4876;
                  _5015 = ((((_4995 * _3708) * _4877) * _4990) + _4868);
                  _5016 = ((((_4995 * _3709) * _4878) * _4990) + _4869);
                  _5017 = ((((_4995 * _3710) * _4879) * _4990) + _4870);
                } else {
                  _5009 = _4871;
                  _5010 = _4872;
                  _5011 = _4873;
                  _5012 = _4874;
                  _5013 = _4875;
                  _5014 = _4876;
                  _5015 = _4868;
                  _5016 = _4869;
                  _5017 = _4870;
                }
              } else {
                _5009 = _4858;
                _5010 = _4859;
                _5011 = _4860;
                _5012 = _4861;
                _5013 = _4862;
                _5014 = _4863;
                _5015 = _4855;
                _5016 = _4856;
                _5017 = _4857;
              }
            } else {
              if (!(_3693 >= 999.9f)) {
                _4806 = ((max(0.002f, _3693) * 0.4f) / ((_3565 * 100.0f) + 0.1f));
              } else {
                _4806 = 1000.0f;
              }
              _4807 = _4806 * _4806;
              _4817 = (((_3565 * 0.25f) * (0.022082746f / (_4505 * _4505))) * max(0.0f, (0.3f - _3719))) * ((exp2(_4807 * -0.48089835f) * 3.0f) + exp2(_4807 * -1.442695f));
              _4841 = (_4817 + _4501);
              _4842 = (_4817 + _4502);
              _4843 = (_4817 + _4503);
              _4844 = _4841 * _3708;
              _4845 = _4842 * _3709;
              _4846 = _4843 * _3710;
              _4848 = (_4484 * _3708) * _3513;
              _4850 = (_4485 * _3709) * _3514;
              _4852 = (_4486 * _3710) * _3515;
              bool __branch_chain_4840;
              if (_3566 == 97) {
                _4868 = _4848;
                _4869 = _4850;
                _4870 = _4852;
                _4871 = _4844;
                _4872 = _4845;
                _4873 = _4846;
                _4874 = _4481;
                _4875 = _4482;
                _4876 = _4483;
                _4877 = _3513;
                _4878 = _3514;
                _4879 = _3515;
                __branch_chain_4840 = true;
              } else {
                _4855 = _4848;
                _4856 = _4850;
                _4857 = _4852;
                _4858 = _4844;
                _4859 = _4845;
                _4860 = _4846;
                _4861 = _4481;
                _4862 = _4482;
                _4863 = _4483;
                _4864 = _3513;
                _4865 = _3514;
                _4866 = _3515;
                if (_3670) {
                  _4868 = _4855;
                  _4869 = _4856;
                  _4870 = _4857;
                  _4871 = _4858;
                  _4872 = _4859;
                  _4873 = _4860;
                  _4874 = _4861;
                  _4875 = _4862;
                  _4876 = _4863;
                  _4877 = _4864;
                  _4878 = _4865;
                  _4879 = _4866;
                  __branch_chain_4840 = true;
                } else {
                  _5009 = _4858;
                  _5010 = _4859;
                  _5011 = _4860;
                  _5012 = _4861;
                  _5013 = _4862;
                  _5014 = _4863;
                  _5015 = _4855;
                  _5016 = _4856;
                  _5017 = _4857;
                  __branch_chain_4840 = false;
                }
              }
              if (__branch_chain_4840) {
                if ((_123 < 1000.0f) && (_3209 == 0.0h)) {
                  if (!(abs(_2707) > 0.99f)) {
                    _4887 = -0.0f - _2708;
                    _4889 = rsqrt(dot(float3(_4887, 0.0f, _2706), float3(_4887, 0.0f, _2706)));  // [sem: invLength]
                    _4893 = (_4889 * _4887);
                    _4894 = (_4889 * _2706);
                  } else {
                    _4893 = 1.0f;
                    _4894 = 0.0f;
                  }
                  _4896 = -0.0f - (_2707 * _4894);
                  _4899 = (_4894 * _2706) - (_4893 * _2708);
                  _4900 = _4893 * _2707;
                  _4902 = rsqrt(dot(float3(_4896, _4899, _4900), float3(_4896, _4899, _4900)));  // [sem: invLength]
                  // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                  _4910 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_4893, 0.0f, _4894), float3(_3298, _3299, _3301)), dot(float3((_4902 * _4896), (_4899 * _4902), (_4902 * _4900)), float3(_3298, _3299, _3301))), 0.0f);
                  _4914 = _4910.x + -0.5f;
                  _4915 = _4910.y + -0.5f;
                  _4916 = _4910.z + -0.5f;
                  _4918 = rsqrt(dot(float3(_4914, _4915, _4916), float3(_4914, _4915, _4916)));  // [sem: invLength]
                  _4922 = (_4914 * _4918) + _3599;
                  _4923 = (_4915 * _4918) + _3600;
                  _4924 = (_4916 * _4918) + _3601;
                  _4926 = rsqrt(dot(float3(_4922, _4923, _4924), float3(_4922, _4923, _4924)));  // [sem: invLength]
                  _4927 = _4922 * _4926;
                  _4928 = _4923 * _4926;
                  _4929 = _4924 * _4926;
                  _4941 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
                  _4942 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
                  _4945 = saturate(_4941 * _4941);  // [sem: expr_sat]
                  _4946 = saturate(_4942 * _4942);  // [sem: expr_sat]
                  _4960 = dot(float3((-0.0f - _4927), (-0.0f - _4928), (-0.0f - _4929)), float3(_3705, _3706, _3707));
                  _4962 = saturate(dot(float3(_4927, _4928, _4929), float3(_1069, _1070, _1071)));  // [sem: expr_sat]
                  _4964 = saturate(1.0f - _4479);  // [sem: expr_sat]
                  _4965 = _4964 * _4964;
                  _4967 = (_4965 * _4965) * _4964;
                  _4983 = 1.0f - ((_4480 * _4480) * 0.9999f);
                  _4990 = (max((((3.1830987e-05f / (_4983 * _4983)) * (0.5f / ((((_4962 * 0.9999f) + 0.0001f) * _4960) + (_4962 * ((_4960 * 0.9999f) + 0.0001f))))) * (lerp(_4967, 1.0f, 0.08f))), 0.0f) * saturate(_4960)) + (exp2(log2(saturate(dot(float3(_1069, _1070, _1071), float3(_4927, _4928, _4929)))) * 1024.0f) * 50.0f);
                  // [sem: expr_sat]
                  _4995 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_4946 * _4946) * (3.0f - (_4946 * 2.0f)))) * (1.0f - ((_4945 * _4945) * (3.0f - (_4945 * 2.0f)))));
                  _5009 = _4871;
                  _5010 = _4872;
                  _5011 = _4873;
                  _5012 = _4874;
                  _5013 = _4875;
                  _5014 = _4876;
                  _5015 = ((((_4995 * _3708) * _4877) * _4990) + _4868);
                  _5016 = ((((_4995 * _3709) * _4878) * _4990) + _4869);
                  _5017 = ((((_4995 * _3710) * _4879) * _4990) + _4870);
                } else {
                  _5009 = _4871;
                  _5010 = _4872;
                  _5011 = _4873;
                  _5012 = _4874;
                  _5013 = _4875;
                  _5014 = _4876;
                  _5015 = _4868;
                  _5016 = _4869;
                  _5017 = _4870;
                }
              }
            }
          }
        } else {
          _4841 = _4501;
          _4842 = _4502;
          _4843 = _4503;
          _4844 = _4841 * _3708;
          _4845 = _4842 * _3709;
          _4846 = _4843 * _3710;
          _4848 = (_4484 * _3708) * _3513;
          _4850 = (_4485 * _3709) * _3514;
          _4852 = (_4486 * _3710) * _3515;
          bool __branch_chain_4840;
          if (_3566 == 97) {
            _4868 = _4848;
            _4869 = _4850;
            _4870 = _4852;
            _4871 = _4844;
            _4872 = _4845;
            _4873 = _4846;
            _4874 = _4481;
            _4875 = _4482;
            _4876 = _4483;
            _4877 = _3513;
            _4878 = _3514;
            _4879 = _3515;
            __branch_chain_4840 = true;
          } else {
            _4855 = _4848;
            _4856 = _4850;
            _4857 = _4852;
            _4858 = _4844;
            _4859 = _4845;
            _4860 = _4846;
            _4861 = _4481;
            _4862 = _4482;
            _4863 = _4483;
            _4864 = _3513;
            _4865 = _3514;
            _4866 = _3515;
            if (_3670) {
              _4868 = _4855;
              _4869 = _4856;
              _4870 = _4857;
              _4871 = _4858;
              _4872 = _4859;
              _4873 = _4860;
              _4874 = _4861;
              _4875 = _4862;
              _4876 = _4863;
              _4877 = _4864;
              _4878 = _4865;
              _4879 = _4866;
              __branch_chain_4840 = true;
            } else {
              _5009 = _4858;
              _5010 = _4859;
              _5011 = _4860;
              _5012 = _4861;
              _5013 = _4862;
              _5014 = _4863;
              _5015 = _4855;
              _5016 = _4856;
              _5017 = _4857;
              __branch_chain_4840 = false;
            }
          }
          if (__branch_chain_4840) {
            if ((_123 < 1000.0f) && (_3209 == 0.0h)) {
              if (!(abs(_2707) > 0.99f)) {
                _4887 = -0.0f - _2708;
                _4889 = rsqrt(dot(float3(_4887, 0.0f, _2706), float3(_4887, 0.0f, _2706)));  // [sem: invLength]
                _4893 = (_4889 * _4887);
                _4894 = (_4889 * _2706);
              } else {
                _4893 = 1.0f;
                _4894 = 0.0f;
              }
              _4896 = -0.0f - (_2707 * _4894);
              _4899 = (_4894 * _2706) - (_4893 * _2708);
              _4900 = _4893 * _2707;
              _4902 = rsqrt(dot(float3(_4896, _4899, _4900), float3(_4896, _4899, _4900)));  // [sem: invLength]
              // [sem: _3__36__0__0__g_blueNoise_sampleLod]
              _4910 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_4893, 0.0f, _4894), float3(_3298, _3299, _3301)), dot(float3((_4902 * _4896), (_4899 * _4902), (_4902 * _4900)), float3(_3298, _3299, _3301))), 0.0f);
              _4914 = _4910.x + -0.5f;
              _4915 = _4910.y + -0.5f;
              _4916 = _4910.z + -0.5f;
              _4918 = rsqrt(dot(float3(_4914, _4915, _4916), float3(_4914, _4915, _4916)));  // [sem: invLength]
              _4922 = (_4914 * _4918) + _3599;
              _4923 = (_4915 * _4918) + _3600;
              _4924 = (_4916 * _4918) + _3601;
              _4926 = rsqrt(dot(float3(_4922, _4923, _4924), float3(_4922, _4923, _4924)));  // [sem: invLength]
              _4927 = _4922 * _4926;
              _4928 = _4923 * _4926;
              _4929 = _4924 * _4926;
              _4941 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
              _4942 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
              _4945 = saturate(_4941 * _4941);  // [sem: expr_sat]
              _4946 = saturate(_4942 * _4942);  // [sem: expr_sat]
              _4960 = dot(float3((-0.0f - _4927), (-0.0f - _4928), (-0.0f - _4929)), float3(_3705, _3706, _3707));
              _4962 = saturate(dot(float3(_4927, _4928, _4929), float3(_1069, _1070, _1071)));  // [sem: expr_sat]
              _4964 = saturate(1.0f - _4479);  // [sem: expr_sat]
              _4965 = _4964 * _4964;
              _4967 = (_4965 * _4965) * _4964;
              _4983 = 1.0f - ((_4480 * _4480) * 0.9999f);
              _4990 = (max((((3.1830987e-05f / (_4983 * _4983)) * (0.5f / ((((_4962 * 0.9999f) + 0.0001f) * _4960) + (_4962 * ((_4960 * 0.9999f) + 0.0001f))))) * (lerp(_4967, 1.0f, 0.08f))), 0.0f) * saturate(_4960)) + (exp2(log2(saturate(dot(float3(_1069, _1070, _1071), float3(_4927, _4928, _4929)))) * 1024.0f) * 50.0f);
              // [sem: expr_sat]
              _4995 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_4946 * _4946) * (3.0f - (_4946 * 2.0f)))) * (1.0f - ((_4945 * _4945) * (3.0f - (_4945 * 2.0f)))));
              _5009 = _4871;
              _5010 = _4872;
              _5011 = _4873;
              _5012 = _4874;
              _5013 = _4875;
              _5014 = _4876;
              _5015 = ((((_4995 * _3708) * _4877) * _4990) + _4868);
              _5016 = ((((_4995 * _3709) * _4878) * _4990) + _4869);
              _5017 = ((((_4995 * _3710) * _4879) * _4990) + _4870);
            } else {
              _5009 = _4871;
              _5010 = _4872;
              _5011 = _4873;
              _5012 = _4874;
              _5013 = _4875;
              _5014 = _4876;
              _5015 = _4868;
              _5016 = _4869;
              _5017 = _4870;
            }
          }
        }
      }
    }
    _5024 = _5009 + _3210;
    _5025 = _5010 + _3211;
    _5026 = _5011 + _3212;
    // RenoDX: >>> [Patch: FoliageTransmission] [Version: 1.16.00]
    // Description: Adds the gated foliage transmission accumulated above to the three clean-decompile direct-diffuse outputs after all native component equations have completed. With the feature disabled the accumulators are zero, so this insertion is exactly neutral.
    _5024 += _rndx_foliageTransR;
    _5025 += _rndx_foliageTransG;
    _5026 += _rndx_foliageTransB;
    // RenoDX: <<< [Patch: FoliageTransmission]
    _5029 = (uint)((uint)(_frameNumber.x)) * (uint)(13);
    [branch]
    if ((((int)((int)((uint)((uint)(_5029)) + (uint)((uint)(_101)))) | (int)((int)((uint)((uint)(_5029)) + (uint)((uint)(_103))))) & 31) == 0) {
      __3__38__0__1__g_sceneColorLightingOnlyForAwbUAV[int2(((int)(_101) >> 5), ((int)(_103) >> 5))] = float4((half)(half(_5024)), (half)(half(_5025)), (half)(half(_5026)), 1.0f);
    }
    _5044 = ((uint)(_3566 & 24) > (uint)23);
    if (_3638) {
      _5061 = saturate(exp2((_3633 * _3633) * (_123 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _5061 = select((_cavityParams.z > 0.0f), select(_184, 0.0f, _1063), 1.0f);  // [sem: expr_sat]
    }
    _5076 = select(_3635, 1.0f, (select((_cavityParams.x == 0.0f), 1.0f, _5061) * select((_183 && _5044), (1.0f - _1063), 1.0f)));
    _5080 = min(60000.0f, (_5076 * (((_2925 * _2662) * _2930) - min(0.0f, (-0.0f - _5015)))));
    _5081 = min(60000.0f, (_5076 * (((_2926 * _2663) * _2930) - min(0.0f, (-0.0f - _5016)))));
    _5082 = min(60000.0f, (_5076 * (((_2927 * _2664) * _2930) - min(0.0f, (-0.0f - _5017)))));
    _5085 = 1.0f - _renderParams.x;
    _5092 = half((_renderParams.x * _3516) + _5085);
    _5093 = half((_renderParams.x * _3517) + _5085);
    _5094 = half((_renderParams.x * _3518) + _5085);
    if (_3635 && (_renderParams2.x == 0.0f)) {
      _5110 = (half)(exp2((half)((half)(log2(_5092)) * 0.5h)));
      _5111 = (half)(exp2((half)((half)(log2(_5093)) * 0.5h)));
      _5112 = (half)(exp2((half)((half)(log2(_5094)) * 0.5h)));
    } else {
      _5110 = _5092;
      _5111 = _5093;
      _5112 = _5094;
    }
    _5117 = select(((_3634 == 54) || ((_3566 & -5) == 33)), 0.0f, _3209);
    _5118 = float(_5110);
    _5119 = float(_5111);
    _5120 = float(_5112);
    if (_3607) {
      _5127 = saturate(((_5119 + _5118) + _5120) * 1.2f);  // [sem: expr_sat]
    } else {
      _5127 = 1.0f;  // [sem: expr_sat]
    }
    _5128 = float(_5117);
    _5134 = (0.7f / min(max(max(max(_5118, _5119), _5120), 0.01f), 0.7f)) * _5127;
    _5141 = ((_5134 * _5118) + -0.04f) * _5128;
    _5142 = ((_5134 * _5119) + -0.04f) * _5128;
    _5143 = ((_5134 * _5120) + -0.04f) * _5128;
    _5144 = _5141 + 0.04f;
    _5145 = _5142 + 0.04f;
    _5146 = _5143 + 0.04f;
    if (_3664 || (_3729 || (_3728 || ((_3566 == 33) || (_3566 == 54))))) {
      // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
      _5158 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__3__40__0__0__g_samplerClamp, float2(min(0.99f, _1077), (1.0f - max(0.02f, float(_280)))), 0.0f);
      _5162 = _5158.x;
      _5163 = _5158.y;
    } else {
      _5162 = _2923;
      _5163 = _2924;
    }
    _5167 = (_5162 * _5144) + _5163;
    _5168 = (_5162 * _5145) + _5163;
    _5169 = (_5162 * _5146) + _5163;
    _5171 = (1.0f - _5162) - _5163;
    _5178 = ((0.96f - _5141) * 0.04761905f) + _5144;
    _5179 = ((0.96f - _5142) * 0.04761905f) + _5145;
    _5180 = ((0.96f - _5143) * 0.04761905f) + _5146;
    _5197 = saturate(1.0f - _3204);  // [sem: expr_sat]
    _5198 = (((_5167 * _5178) / (1.0f - (_5171 * _5178))) * _5171) * _5197;
    _5199 = (((_5168 * _5179) / (1.0f - (_5171 * _5179))) * _5171) * _5197;
    _5200 = (((_5169 * _5180) / (1.0f - (_5171 * _5180))) * _5171) * _5197;
    _5211 = float(1.0h - _5117);
    _5221 = half(((_5118 * _5211) * saturate((1.0f - _5167) - _5198)) + _5198);
    _5222 = half(((_5119 * _5211) * saturate((1.0f - _5168) - _5199)) + _5199);
    _5223 = half(((_5120 * _5211) * saturate((1.0f - _5169) - _5200)) + _5200);
    _5225 = float(_5221);
    _5226 = float(_5222);
    _5227 = float(_5223);
    if (_3566 == 65) {
      _5231 = max(1e-06f, _exposure2.x);
      _5239 = ((pow(_3722, 16.0f)) * 50.265484f) / (((_5231 * _5231) * 1e+06f) + 1.0f);
      _5256 = (((((_5225 * _5024) * _5239) - _5024) * _1027) + _5024);
      _5257 = (((((_5226 * _5025) * _5239) - _5025) * _1027) + _5025);
      _5258 = (((((_5227 * _5026) * _5239) - _5026) * _1027) + _5026);
    } else {
      _5256 = _5024;
      _5257 = _5025;
      _5258 = _5026;
    }
    _5263 = ((__3__36__0__0__g_caustic.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_111, _112), 0.0f)).x) * 0.31830987f;
    _5273 = (min(65535.0f, _5012) + _3213) + (((_5263 * _3504) + _5256) * _5225);
    _5274 = (min(65535.0f, _5013) + _3214) + (((_5263 * _3505) + _5257) * _5226);
    _5275 = (min(65535.0f, _5014) + _3215) + (((_5263 * _3506) + _5258) * _5227);
    _5304 = exp2((saturate(_450) * 20.0f) + -8.0f) + -0.00390625f;
    _5305 = _5304 * select((_447 < 0.04045f), (_447 * 0.07739938f), exp2(log2((_447 + 0.055f) * 0.94786733f) * 2.4f));
    _5306 = _5304 * select((_448 < 0.04045f), (_448 * 0.07739938f), exp2(log2((_448 + 0.055f) * 0.94786733f) * 2.4f));
    _5307 = _5304 * select((_449 < 0.04045f), (_449 * 0.07739938f), exp2(log2((_449 + 0.055f) * 0.94786733f) * 2.4f));
    _5320 = ((_5305 * 0.61312f) + (_5306 * 0.33951f)) + (_5307 * 0.04737f);
    _5321 = ((_5305 * 0.0702f) + (_5306 * 0.91636f)) + (_5307 * 0.01345f);
    _5322 = ((_5305 * 0.02062f) + (_5306 * 0.10958f)) + (_5307 * 0.8698f);
    if (_375) {
      _5328 = (_5320 + _5273);
      _5329 = (_5321 + _5274);
      _5330 = (_5322 + _5275);
    } else {
      _5328 = _5273;
      _5329 = _5274;
      _5330 = _5275;
    }
    _5334 = _5328 + (_5080 * _5128);
    _5335 = _5329 + (_5081 * _5128);
    _5336 = _5330 + (_5082 * _5128);
    if (!(((_131 || _133) || _135) || _137)) {
      _5338 = QuadReadLaneAt(_5334, 0);
      _5339 = QuadReadLaneAt(_5335, 0);
      _5340 = QuadReadLaneAt(_5336, 0);
      _5341 = QuadReadLaneAt(_5334, 1);
      _5342 = QuadReadLaneAt(_5335, 1);
      _5343 = QuadReadLaneAt(_5336, 1);
      _5347 = QuadReadLaneAt(_5334, 2);
      _5348 = QuadReadLaneAt(_5335, 2);
      _5349 = QuadReadLaneAt(_5336, 2);
      _5353 = QuadReadLaneAt(_5334, 3);
      _5354 = QuadReadLaneAt(_5335, 3);
      _5355 = QuadReadLaneAt(_5336, 3);
      _5363 = ((((_5341 + _5338) + _5347) + _5353) * 0.25f);
      _5364 = ((((_5342 + _5339) + _5348) + _5354) * 0.25f);
      _5365 = ((((_5343 + _5340) + _5349) + _5355) * 0.25f);
    } else {
      _5363 = _5334;
      _5364 = _5335;
      _5365 = _5336;
    }
    [branch]
    if ((((int)(_103) | (int)(_101)) & 1) == 0) {
      _5370 = dot(float3(_5363, _5364, _5365), float3(0.212671f, 0.71516f, 0.072169f));
      __3__38__0__1__g_diffuseHalfPrevUAV[int2(((int)(_101) >> 1), ((int)(_103) >> 1))] = float4(min(60000.0f, _5363), min(60000.0f, _5364), min(60000.0f, _5365), min(60000.0f, select((_1647 != 0), (-0.0f - _5370), _5370)));
    }
    if (_5044) {
      _5391 = ((_5117 == 0.0h) && (((_5221 < 0.010002136h) && (_5222 < 0.010002136h)) && (_5223 < 0.010002136h)));
    } else {
      _5391 = false;
    }
    if ((_5044 || ((_3566 == 96) || (_3729 || ((_3566 & -4) == 64)))) || ((_123 <= 10.0f) && _3664)) {
      __3__38__0__1__g_sceneSpecularUAV[int2(_101, _103)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _5080)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _5081)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _5082)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _2676)))))));
      _5424 = _5328;
      _5425 = _5329;
      _5426 = _5330;
    } else {
      _5424 = (_5328 + _5080);
      _5425 = (_5329 + _5081);
      _5426 = (_5330 + _5082);
    }
    if (_375 && ((uint)((int)(_3566) + (int)(-52)) > (uint)15)) {
      _5431 = dot(float3(_5320, _5321, _5322), float3(0.212671f, 0.71516f, 0.072169f));
      _5435 = max((max(_5431, 1.0f) / max(_5431, 0.1f)), 0.0f);
      _5446 = ((_5424 - _5320) + (_5435 * _5320));
      _5447 = ((_5425 - _5321) + (_5435 * _5321));
      _5448 = ((_5426 - _5322) + (_5435 * _5322));
    } else {
      _5446 = _5424;
      _5447 = _5425;
      _5448 = _5426;
    }
    _5449 = min(60000.0f, _5446);
    _5450 = min(60000.0f, _5447);
    _5451 = min(60000.0f, _5448);
    if (!_128) {
      [branch]
      if (_5391) {
        _5456 = __3__38__0__1__g_sceneColorUAV[int2(_101, _103)].x;
        _5457 = __3__38__0__1__g_sceneColorUAV[int2(_101, _103)].y;
        _5458 = __3__38__0__1__g_sceneColorUAV[int2(_101, _103)].z;
        _5463 = (_5456 + _5449);
        _5464 = (_5457 + _5450);
        _5465 = (_5458 + _5451);
      } else {
        _5463 = _5449;
        _5464 = _5450;
        _5465 = _5451;
      }
      if (!(_renderParams.y == 0.0f)) {
        _5474 = dot(float3(_5463, _5464, _5465), float3(0.212671f, 0.71516f, 0.072169f));
        _5475 = min((max(0.01f, _exposure3.w) * 4096.0f), _5474);
        _5479 = max(1e-09f, _5474);
        _5484 = ((_5475 * _5463) / _5479);
        _5485 = ((_5475 * _5464) / _5479);
        _5486 = ((_5475 * _5465) / _5479);
      } else {
        _5484 = _5463;
        _5485 = _5464;
        _5486 = _5465;
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
      if (FOLIAGE_AO_STRENGTH > 0.0f && ((uint)(_119 - 12) < 7u)) {
        half4 _rndx_shadow = __3__36__0__0__g_sceneShadowColor.Load(int3(_101, _103, 0));
        float _rndx_directRatio = saturate(dot(float3(_rndx_shadow.xyz), float3(0.333f, 0.333f, 0.333f)));
        float _rndx_ao = lerp(1.0f, float(_1003.x), _rndx_directRatio * FOLIAGE_AO_STRENGTH);
        _5484 *= _rndx_ao;
        _5485 *= _rndx_ao;
        _5486 *= _rndx_ao;
      }
      // RenoDX: <<< [Patch: FoliageFinalAO]
      __3__38__0__1__g_sceneColorUAV[int2(_101, _103)] = float4(_5484, _5485, _5486, 1.0f);
    }
  }
}
