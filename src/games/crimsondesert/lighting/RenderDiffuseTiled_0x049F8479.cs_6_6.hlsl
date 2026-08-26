// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the shared options and helpers used by this shader's RenoDX patches. This dependency-only prefix adds no native executable statement; removing it restores the native shader body byte-for-byte.
#include "../shared.h"
#include "foliage_common.hlsli"
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

Texture2D<half4> __3__36__0__0__g_diffuseResult : register(t59, space36);

Texture2D<half4> __3__36__0__0__g_diffuseResultPrev : register(t183, space36);

Texture2D<half4> __3__36__0__0__g_specularResultPrev : register(t60, space36);

Texture2D<half2> __3__36__0__0__g_sceneAO : register(t61, space36);

Texture2D<float> __3__36__0__0__g_specularSampleCountPrev : register(t62, space36);

Texture2D<float4> __3__36__0__0__g_sceneSpecularHalf : register(t63, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t21, space36);

Texture2D<float4> __3__36__0__0__g_normal : register(t22, space36);

Texture2D<float2> __3__36__0__0__g_velocity : register(t23, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t24, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormalPrev : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_normalDepthHalf : register(t53, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t51, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t79, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaquePrev : register(t80, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t54, space36);

Texture2D<float4> __3__36__0__0__g_manyLightsMoments : register(t81, space36);

Texture2D<float> __3__36__0__0__g_specularRayHitDistance : register(t82, space36);

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
  int _469;
  half _511;
  half _512;
  half _513;
  half _514;
  half _522;
  half _523;
  half _524;
  half _525;
  int _526;
  int _527;
  float _528;
  float _529;
  bool _630;
  float _852;
  float _853;
  float _1072;
  float _1073;
  float _1074;
  float _1075;
  float _1109;
  float _1110;
  float _1111;
  float _1112;
  int _1118;
  half _1119;
  float _1120;
  float _1121;
  float _1122;
  float _1123;
  float _1152;
  half _1153;
  float _1155;
  float _1181;
  float _1182;
  float _1189;
  half _1190;
  float _1191;
  float _1192;
  float _1193;
  float _1199;
  half _1200;
  float _1201;
  float _1202;
  float _1203;
  half _1264;
  float _1281;
  float _1697;
  half _1698;
  float _1699;
  float _1700;
  float _1701;
  int _1702;
  float _1703;
  float _1704;
  float _1705;
  float _1706;
  float _1707;
  float _1708;
  bool _1761;
  bool _1764;
  bool _1765;
  float _1783;
  float _1794;
  float _1795;
  half _1805;
  half _1806;
  half _1807;
  half _1808;
  half _1809;
  float _1810;
  float _1811;
  float _1823;
  bool _1846;
  float _1855;
  float _1896;
  float _1897;
  float _1985;
  float _2063;
  float _2222;
  float _2223;
  float _2224;
  float _2225;
  float _2388;
  int _2389;
  float _2446;
  float _2458;
  float _2490;
  float _2577;
  float _2578;
  float _2579;
  float _2580;
  float _2582;
  float _2583;
  float _2584;
  float _2585;
  float _2589;
  float _2590;
  float _2591;
  float _2592;
  float _2593;
  float _2618;
  float _2643;
  bool _2654;
  half _2697;
  int _2698;
  float _2699;
  float _2700;
  float _2701;
  float _2838;
  float _2891;
  float _2910;
  float _2914;
  half _2938;
  half _2941;
  half _2942;
  float _3048;
  float _3096;
  float _3111;
  float _3213;
  int _3214;
  int _3215;
  float _3216;
  float _3217;
  float _3218;
  float _3219;
  float _3377;
  float _3378;
  float _3379;
  float _3380;
  float _3445;
  float _3458;
  float _3459;
  float _3460;
  float _3514;
  float _3515;
  float _3579;
  float _3580;
  float _3581;
  float _3650;
  float _3651;
  float _3652;
  float _3667;
  float _3668;
  float _3669;
  float _3670;
  float _3671;
  bool _3733;
  bool _3734;
  float _3770;
  float _3771;
  float _3772;
  float _3773;
  float _3839;
  float _3842;
  float _3843;
  float _3844;
  float _3845;
  float _3880;
  float _3881;
  float _3882;
  float _3897;
  float _3926;
  float _3927;
  float _3928;
  float _3929;
  float _3930;
  half _3937;
  half _3938;
  half _3939;
  half _3940;
  half _3941;
  float _3942;
  float _3948;
  half _3949;
  half _3950;
  half _3951;
  half _3952;
  half _3953;
  float _3954;
  float _3955;
  float _3956;
  float _3957;
  float _3958;
  float _3959;
  half _4000;
  half _4001;
  half _4002;
  float _4017;
  float _4018;
  float _4019;
  float _4039;
  float _4104;
  float _4202;
  float _4203;
  float _4204;
  bool _4264;
  bool _4284;
  bool _4286;
  bool _4287;
  float _4304;
  int _4305;
  float _4306;
  float _4307;
  float _4308;
  float _4309;
  float _4353;
  float _4390;
  float _4397;
  float _4398;
  float _4399;
  bool _4423;
  bool _4426;
  bool _4427;
  float _4444;
  float _4445;
  float _4446;
  float _4487;
  float _4755;
  float _4756;
  float _4757;
  float _4758;
  float _4759;
  float _4760;
  float _4761;
  float _4762;
  float _4763;
  float _4935;
  float _4936;
  float _4937;
  float _4938;
  float _4939;
  float _4940;
  float _4941;
  float _4942;
  float _4943;
  float _5033;
  float _5034;
  float _5035;
  float _5074;
  float _5075;
  float _5076;
  float _5079;
  float _5080;
  float _5081;
  float _5109;
  float _5110;
  float _5111;
  float _5112;
  float _5113;
  float _5114;
  float _5180;
  float _5181;
  float _5182;
  float _5183;
  float _5184;
  float _5185;
  float _5186;
  float _5187;
  float _5219;
  float _5220;
  float _5221;
  float _5222;
  float _5223;
  float _5224;
  float _5225;
  float _5226;
  float _5227;
  float _5228;
  float _5229;
  float _5241;
  float _5242;
  float _5243;
  float _5560;
  float _5586;
  float _5587;
  float _5588;
  float _5589;
  float _5590;
  float _5591;
  float _5592;
  float _5593;
  float _5594;
  float _5605;
  float _5606;
  float _5607;
  float _5608;
  float _5609;
  float _5610;
  float _5611;
  float _5612;
  float _5613;
  float _5614;
  float _5615;
  float _5616;
  float _5630;
  float _5631;
  float _5746;
  float _5747;
  float _5748;
  float _5749;
  float _5750;
  float _5751;
  float _5752;
  float _5753;
  float _5754;
  float _5798;
  half _5847;
  half _5848;
  half _5849;
  float _5864;
  float _5899;
  float _5900;
  float _5993;
  float _5994;
  float _5995;
  float _6054;
  float _6055;
  float _6056;
  float _6089;
  float _6090;
  float _6091;
  bool _6117;
  float _6150;
  float _6151;
  float _6152;
  float _6172;
  float _6173;
  float _6174;
  float _6189;
  float _6190;
  float _6191;
  float _6210;
  float _6211;
  float _6212;
  uint4 _146;
  float4 _152;
  half _161;
  half _165;
  half _170;
  half _174;
  half _179;
  half _183;
  uint _186;
  bool _187;
  bool _188;
  float _198;
  float _199;
  float _200;
  float _202;
  half _206;
  half _207;
  half _208;
  int _209;
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
  half _284;
  half _285;
  half _286;
  half _287;
  half _291;
  half _292;
  half _293;
  half _309;
  half _310;
  half _311;
  bool _316;
  half _318;
  uint _336;
  uint _344;
  uint _352;
  uint _360;
  uint _368;
  uint _376;
  uint _384;
  uint _392;
  uint _400;
  uint _408;
  uint _416;
  uint _424;
  uint _432;
  uint _440;
  uint _448;
  uint _456;
  int _498;
  int _499;
  int4 _532;
  int _537;
  int _541;
  int _545;
  int _549;
  float _576;
  float _581;
  float _582;
  float _583;
  float _584;
  float _585;
  float _586;
  float _587;
  float _588;
  int _589;
  int _590;
  int _591;
  int _592;
  float _632;
  float _637;
  float _639;
  bool _658;
  int4 _687;
  float _706;
  float _707;
  float _708;
  float _710;
  float _714;
  float _715;
  float _716;
  float _732;
  float _733;
  float _734;
  float _736;
  float _755;
  float _756;
  float _757;
  float _759;
  float _778;
  float _779;
  float _780;
  float _782;
  bool _787;
  float _788;
  float _801;
  float _802;
  float _803;
  float _804;
  float _809;
  float _812;
  float _815;
  float _818;
  float _821;
  float _854;
  float _855;
  float _856;
  float _857;
  float _858;
  float _859;
  float _860;
  float _861;
  bool _870;
  float _879;
  float _880;
  float _881;
  float _882;
  float _883;
  float _884;
  float _889;
  float _890;
  float _891;
  float _892;
  float _896;
  float _905;
  float _906;
  float _907;
  float _908;
  half4 _910;
  uint _920;
  half4 _921;
  uint _934;
  half4 _935;
  half4 _948;
  float _958;
  float _959;
  float _960;
  float4 _962;
  float4 _969;
  float4 _979;
  float4 _989;
  bool _1006;
  float _1008;
  float _1010;
  float _1046;
  float _1047;
  float _1048;
  float _1049;
  float _1051;
  float _1052;
  float _1053;
  float _1054;
  bool _1055;
  bool _1057;
  bool _1061;
  float4 _1066;
  uint _1094;
  int _1096;
  float4 _1103;
  bool _1127;
  float _1134;
  float _1165;
  float _1166;
  float _1168;
  float _1169;
  float _1170;
  float _1184;
  float4 _1205;
  float4 _1212;
  float4 _1222;
  float4 _1232;
  float _1245;
  float _1246;
  float _1247;
  float _1249;
  float _1250;
  float _1251;
  float _1252;
  float _1265;
  float _1282;
  float _1283;
  float _1284;
  float _1285;
  float _1286;
  float _1287;
  float _1288;
  float _1289;
  float _1295;
  float _1299;
  float _1300;
  float _1301;
  float _1305;
  float _1306;
  float _1307;
  float _1314;
  float _1324;
  float _1325;
  float _1326;
  float _1327;
  float _1328;
  float _1329;
  float _1338;
  float _1343;
  float _1349;
  float _1350;
  float _1354;
  float _1355;
  float _1360;
  float _1361;
  float _1362;
  float _1363;
  float _1375;
  float _1379;
  float _1389;
  float _1390;
  float _1394;
  float _1396;
  float _1397;
  float _1410;
  float _1420;
  float _1421;
  float _1422;
  float _1431;
  float2 _1440;
  float2 _1443;
  float2 _1446;
  float _1453;
  float _1454;
  float _1455;
  float _1456;
  float _1457;
  float _1458;
  float _1459;
  float _1460;
  float _1461;
  float _1462;
  float _1463;
  float _1464;
  float _1465;
  float _1466;
  float _1467;
  float _1468;
  float _1469;
  float _1470;
  float _1480;
  float _1481;
  float _1482;
  float _1483;
  float _1484;
  float _1485;
  float _1493;
  float _1494;
  float _1495;
  float _1496;
  float _1498;
  float _1499;
  float _1500;
  float _1501;
  float _1502;
  float _1503;
  float _1506;
  float _1507;
  float _1508;
  float _1518;
  float _1541;
  float _1545;
  float _1549;
  float _1567;
  float _1574;
  float _1575;
  float _1576;
  float _1585;
  float _1592;
  float _1599;
  float _1627;
  float _1628;
  float _1629;
  float _1630;
  float _1631;
  float _1641;
  float _1642;
  float _1643;
  float4 _1645;
  float4 _1652;
  float4 _1662;
  float4 _1672;
  float _1715;
  float _1716;
  float _1717;
  half2 _1719;
  half2 _1726;
  half2 _1735;
  half2 _1744;
  float _1751;
  bool _1758;
  bool _1770;
  bool _1771;
  float _1774;
  bool _1776;
  bool _1778;
  uint _1785;
  half _1796;
  bool _1800;
  int _1812;
  bool _1813;
  bool _1814;
  bool _1815;
  float _1816;
  float _1817;
  float _1818;
  float _1819;
  float _1824;
  int _1825;
  bool _1826;
  float _1883;
  float2 _1890;
  float _1899;
  float _1902;
  float _1903;
  float _1911;
  float _1917;
  float _1918;
  int _1921;
  int _1922;
  float _1923;
  float _1924;
  float _1929;
  float _1930;
  int4 _1932;
  int _1955;
  float _1993;
  float _1994;
  float _1995;
  float _1996;
  float _2000;
  float _2017;
  float _2018;
  float _2021;
  bool _2036;
  float _2038;
  float _2040;
  bool _2044;
  float _2069;
  float _2074;
  float _2075;
  float _2076;
  float _2077;
  float _2078;
  float _2079;
  float _2080;
  float _2081;
  float _2083;
  float _2096;
  float _2097;
  float _2098;
  float _2099;
  int _2101;
  int _2102;
  int _2103;
  int _2104;
  bool _2126;
  bool _2130;
  bool _2134;
  bool _2138;
  bool _2151;
  bool _2153;
  bool _2162;
  bool _2184;
  int4 _2227;
  float _2246;
  float _2247;
  float _2248;
  float _2250;
  float _2255;
  float _2270;
  float _2271;
  float _2272;
  float _2274;
  float _2279;
  float _2294;
  float _2295;
  float _2296;
  float _2298;
  float _2303;
  float _2318;
  float _2319;
  float _2320;
  float _2322;
  float _2327;
  float _2330;
  float _2347;
  float _2348;
  float _2349;
  float _2350;
  float _2355;
  float _2357;
  float _2359;
  float _2361;
  float _2363;
  float _2364;
  float _2365;
  float _2366;
  int _2369;
  int _2370;
  int _2378;
  int _2380;
  float _2399;
  uint _2400;
  half4 _2402;
  uint _2407;
  half4 _2408;
  half4 _2413;
  half4 _2418;
  float _2423;
  float _2432;
  float _2437;
  float _2450;
  float _2453;
  bool _2454;
  bool _2459;
  float _2460;
  float _2462;
  float4 _2465;
  float _2470;
  float _2472;
  float _2474;
  float _2475;
  float _2476;
  float _2477;
  float _2532;
  float _2549;
  float _2550;
  float _2551;
  float _2556;
  float _2572;
  float _2600;
  float _2601;
  float _2602;
  float _2609;
  float _2610;
  float _2611;
  float _2619;
  float _2625;
  float _2635;
  float _2636;
  float _2637;
  float _2638;
  bool _2646;
  bool _2656;
  half _2659;
  uint _2682;
  int _2684;
  float4 _2691;
  float _2703;
  float _2707;
  float _2708;
  float _2709;
  float _2715;
  float _2723;
  float _2725;
  float _2727;
  float _2731;
  float _2741;
  float _2742;
  float _2743;
  float _2744;
  float _2749;
  float _2754;
  float _2756;
  float _2758;
  float _2782;
  float _2786;
  float _2790;
  float _2794;
  float _2824;
  float _2829;
  float _2830;
  int _2842;
  bool _2845;
  float _2847;
  float _2851;
  float _2856;
  float _2882;
  float _2893;
  float _2899;
  float _2921;
  half _2927;
  half _2933;
  float _2943;
  float _2944;
  float _2945;
  float _2958;
  float _2959;
  float _2960;
  float _2961;
  float _3001;
  float _3006;
  float _3007;
  float _3008;
  float _3009;
  float _3019;
  float _3022;
  float _3038;
  float _3076;
  float _3079;
  float _3080;
  float _3081;
  float _3082;
  float _3112;
  bool _3114;
  float _3125;
  float _3126;
  int _3129;
  int _3130;
  float _3131;
  float _3132;
  int4 _3142;
  int _3149;
  float _3178;
  float _3179;
  float _3180;
  float _3181;
  float _3196;
  float _3197;
  float _3198;
  float _3199;
  bool _3220;
  uint _3221;
  half4 _3223;
  float _3236;
  uint _3242;
  half4 _3243;
  float _3256;
  half4 _3266;
  float _3279;
  half4 _3289;
  float _3302;
  float _3326;
  float _3328;
  float _3330;
  float _3332;
  float _3333;
  float _3342;
  float _3349;
  float _3356;
  float _3381;
  float _3382;
  float _3383;
  float _3396;
  float _3406;
  float _3407;
  float _3408;
  float _3420;
  float _3425;
  bool _3426;
  int _3428;
  bool _3448;
  float _3449;
  float _3450;
  float _3451;
  float _3452;
  float _3462;
  float _3463;
  float _3464;
  bool _3466;
  float _3467;
  float _3468;
  float _3469;
  float2 _3484;
  float2 _3490;
  float _3497;
  float _3498;
  float _3500;
  float _3508;
  float _3510;
  float _3517;
  float _3520;
  float _3521;
  float _3523;
  float _3531;
  float _3532;
  float _3533;
  float4 _3538;
  float _3542;
  float _3543;
  float _3544;
  float _3546;
  float _3550;
  float _3551;
  float _3552;
  float _3554;
  float2 _3567;
  float _3574;
  float _3587;
  float2 _3592;
  float2 _3597;
  float _3601;
  float _3603;
  float _3620;
  float _3624;
  float _3625;
  float _3626;
  float _3633;
  float2 _3657;
  float _3674;
  float _3681;
  float _3682;
  float _3683;
  float _3704;
  float4 _3714;
  bool _3744;
  float4 _3764;
  float _3780;
  float _3783;
  float _3796;
  float _3797;
  float _3798;
  float _3803;
  float _3808;
  float _3819;
  float _3837;
  float _3849;
  bool _3850;
  float _3853;
  float _3898;
  float _3899;
  float _3900;
  float _3905;
  float _3908;
  float _3915;
  float _3916;
  half4 _3961;
  float _3966;
  float _3967;
  float _3968;
  uint _3972;
  float _3988;
  float _3989;
  float _3990;
  float _3992;
  bool _4005;
  float _4046;
  float _4047;
  float _4048;
  float _4049;
  float _4055;
  float _4060;
  float _4066;
  float _4074;
  float _4081;
  float2 _4109;
  float _4131;
  float _4149;
  float _4150;
  float _4151;
  float _4167;
  float _4175;
  float _4187;
  float _4190;
  float _4196;
  float _4224;
  float _4226;
  float _4233;
  float _4234;
  float _4235;
  float _4236;
  float _4256;
  float _4257;
  float _4258;
  float _4266;
  float _4267;
  bool _4270;
  bool _4273;
  bool _4281;
  float _4288;
  float _4289;
  float _4290;
  uint16_t _4292;
  float _4314;
  float _4315;
  float _4316;
  float _4317;
  float _4328;
  float _4333;
  float _4334;
  float _4335;
  float _4337;
  float _4338;
  float _4339;
  float _4340;
  bool _4343;
  float _4345;
  bool _4346;
  float _4359;
  float _4369;
  float _4370;
  float _4371;
  float _4372;
  int _4373;
  bool _4374;
  bool _4377;
  float _4391;
  float _4400;
  float _4401;
  bool _4403;
  float _4405;
  float _4406;
  float _4407;
  float _4432;
  float _4447;
  float _4448;
  float _4449;
  float _4450;
  float _4451;
  float _4452;
  float _4453;
  float _4455;
  float _4456;
  float _4457;
  float _4458;
  float _4459;
  float _4460;
  float _4462;
  float _4464;
  float _4465;
  float _4467;
  bool _4468;
  bool _4469;
  bool _4470;
  float _4502;
  float _4506;
  float4 _4511;
  float _4515;
  float _4516;
  float _4517;
  float _4518;
  float _4529;
  float _4530;
  float _4536;
  float _4540;
  float _4541;
  float _4542;
  float _4546;
  float _4547;
  float _4548;
  float _4555;
  float _4559;
  float _4566;
  float _4567;
  float _4568;
  float _4569;
  float _4570;
  float _4571;
  float _4573;
  float _4587;
  float _4588;
  float _4595;
  float _4604;
  float _4609;
  float _4615;
  float _4616;
  float _4620;
  float _4621;
  float _4626;
  float _4627;
  float _4628;
  float _4629;
  float _4641;
  float _4645;
  float _4655;
  float _4656;
  float _4660;
  float _4662;
  float _4663;
  float _4676;
  float _4683;
  float _4684;
  float _4694;
  float _4705;
  float _4710;
  float _4729;
  float _4731;
  float _4733;
  float _4735;
  float _4742;
  float _4743;
  float _4744;
  float _4751;
  float _4752;
  float _4753;
  bool _4765;
  bool _4766;
  bool _4767;
  float _4782;
  float _4788;
  float _4789;
  float _4790;
  float _4791;
  float _4792;
  float _4793;
  float _4794;
  float _4801;
  float _4814;
  float _4817;
  float _4818;
  float _4820;
  float _4823;
  float _4824;
  float _4825;
  float _4829;
  float _4830;
  float _4831;
  float _4832;
  float _4833;
  float _4834;
  float _4846;
  float _4850;
  float _4854;
  float _4855;
  float _4856;
  float _4857;
  float _4869;
  float _4873;
  float _4889;
  float _4894;
  float _4895;
  float _4905;
  float _4930;
  float _4946;
  float _4947;
  float _4948;
  float _4949;
  float _4952;
  float _4953;
  float _4954;
  float _4959;
  float _4960;
  float _4987;
  float _4990;
  float _4991;
  float _4993;
  float _4996;
  float _4997;
  float _5001;
  float _5002;
  float _5003;
  float _5005;
  float _5006;
  float _5018;
  float _5022;
  float _5043;
  float _5055;
  float _5059;
  float _5066;
  float _5086;
  float _5095;
  float _5117;
  float _5121;
  float _5122;
  float _5123;
  float _5124;
  float _5125;
  float _5126;
  float _5128;
  float _5129;
  float _5130;
  float _5131;
  float _5132;
  float _5133;
  float _5134;
  float _5136;
  float _5138;
  float _5140;
  float _5151;
  float _5154;
  float _5209;
  float _5210;
  float _5211;
  float _5233;
  float _5245;
  float _5249;
  float _5250;
  float _5252;
  float _5257;
  float _5265;
  float _5271;
  float _5273;
  float _5278;
  float _5293;
  float _5303;
  float _5306;
  float _5308;
  float _5324;
  float _5325;
  float _5326;
  float _5333;
  float2 _5342;
  float2 _5345;
  float2 _5348;
  float _5357;
  float _5358;
  float _5359;
  float _5360;
  float _5361;
  float _5362;
  float _5363;
  float _5364;
  float _5365;
  float _5366;
  float _5367;
  float _5368;
  float _5369;
  float _5370;
  float _5371;
  float _5372;
  float _5373;
  float _5374;
  float _5384;
  float _5385;
  float _5386;
  float _5387;
  float _5388;
  float _5389;
  float _5397;
  float _5398;
  float _5399;
  float _5400;
  float _5402;
  float _5403;
  float _5404;
  float _5405;
  float _5406;
  float _5407;
  float _5411;
  float _5412;
  float _5422;
  float _5445;
  float _5449;
  float _5453;
  float _5471;
  float _5478;
  float _5479;
  float _5480;
  float _5484;
  float _5491;
  float _5498;
  float _5508;
  float _5529;
  float _5561;
  float _5571;
  float _5595;
  float _5596;
  float _5597;
  float _5599;
  float _5601;
  float _5603;
  float _5624;
  float _5626;
  float _5633;
  float _5636;
  float _5637;
  float _5639;
  float4 _5647;
  float _5651;
  float _5652;
  float _5653;
  float _5655;
  float _5659;
  float _5660;
  float _5661;
  float _5663;
  float _5664;
  float _5665;
  float _5666;
  float _5678;
  float _5679;
  float _5682;
  float _5683;
  float _5697;
  float _5699;
  float _5701;
  float _5702;
  float _5704;
  float _5720;
  float _5727;
  float _5732;
  float _5761;
  float _5762;
  float _5763;
  uint _5766;
  bool _5781;
  float _5813;
  float _5817;
  float _5818;
  float _5819;
  float _5822;
  half _5829;
  half _5830;
  half _5831;
  half _5854;
  float _5855;
  float _5856;
  float _5857;
  float _5865;
  float _5871;
  float _5878;
  float _5879;
  float _5880;
  float _5881;
  float _5882;
  float _5883;
  float2 _5895;
  float _5904;
  float _5905;
  float _5906;
  float _5908;
  float _5915;
  float _5916;
  float _5917;
  float _5934;
  float _5935;
  float _5936;
  float _5937;
  float _5948;
  half _5958;
  half _5959;
  half _5960;
  float _5962;
  float _5963;
  float _5964;
  float _5968;
  float _5976;
  float _5999;
  float _6000;
  float _6001;
  float _6030;
  float _6031;
  float _6032;
  float _6033;
  float _6046;
  float _6047;
  float _6048;
  float _6060;
  float _6061;
  float _6062;
  float _6064;
  float _6065;
  float _6066;
  float _6067;
  float _6068;
  float _6069;
  float _6073;
  float _6074;
  float _6075;
  float _6079;
  float _6080;
  float _6081;
  float _6096;
  float _6157;
  float _6161;
  float _6175;
  float _6176;
  float _6177;
  float _6182;
  float _6183;
  float _6184;
  float _6200;
  float _6201;
  float _6205;
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
    _174 = half(((float)((uint)((uint)(_146.y & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _179 = half(((float)((uint)((uint)(((uint)((uint)(_146.w)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _183 = half(((float)((uint)((uint)(_146.w & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _186 = (uint)((_152.w * 3.0f) + 0.5f);  // [sem: _3__36__0__0__g_normal_load_derived]
    _187 = (_186 == 1);
    _188 = (_186 == 3);
    _198 = (saturate(_152.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _199 = (saturate(_152.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _200 = (saturate(_152.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _202 = rsqrt(dot(float3(_198, _199, _200), float3(_198, _199, _200)));  // [sem: invLength]
    _206 = half(_202 * _198);
    _207 = half(_202 * _199);
    _208 = half(_200 * _202);
    _209 = _117.x & 126;  // [sem: _3__36__0__0__g_stencil_load_derived]
    if (!(_209 == 24)) {
      _223 = ((half)(_179 * 2.0h)) + -1.0h;
      _224 = ((half)(_183 * 2.0h)) + -1.0h;
      _229 = float(_223 + _224) * 0.5f;
      _230 = float(_223 - _224) * 0.5f;
      _234 = (1.0f - abs(_229)) - abs(_230);
      _236 = rsqrt(dot(float3(_229, _230, _234), float3(_229, _230, _234)));  // [sem: invLength]
      _243 = float(_206);
      _244 = float(_207);
      _245 = float(_208);
      _247 = select((_208 >= 0.0h), 1.0f, -1.0f);
      _250 = -0.0f - (1.0f / (_247 + _245));
      _251 = _244 * _250;
      _252 = _251 * _243;
      _253 = _247 * _243;
      _260 = float(half(_236 * _229));
      _261 = float(half(_236 * _230));
      _262 = float(half(_236 * _234));
      _278 = (half)(half(((float)((uint)((uint)(_146.z & 255)))) * 0.003921569f));
      _279 = (half)(half(((float)((uint)((uint)(((uint)((uint)(_146.z)) >> 8) & 255)))) * 0.003921569f));
      _280 = (half)(half(mad(_262, _243, mad(_261, _252, (_260 * (((_253 * _243) * _250) + 1.0f))))));
      _281 = (half)(half(mad(_262, _244, mad(_261, ((_251 * _244) + _247), ((_260 * _247) * _252)))));
      _282 = (half)(half(mad(_262, _245, mad(_261, (-0.0f - _244), (-0.0f - (_253 * _260))))));
    } else {
      _278 = _183;
      _279 = _179;
      _280 = _206;
      _281 = _207;
      _282 = _208;
    }
    _284 = rsqrt((half)(dot(half3(_280, _281, _282), half3(_280, _281, _282))));  // [sem: invLength]
    _285 = _284 * _280;
    _286 = _284 * _281;
    _287 = _284 * _282;
    _291 = saturate((half)(_161 * _161));  // [sem: expr_sat]
    _292 = saturate((half)(_165 * _165));  // [sem: expr_sat]
    _293 = saturate((half)(_170 * _170));  // [sem: expr_sat]
    // [sem: expr_sat]
    _309 = saturate((half)(((half)(((half)(_292 * 0.3395996h)) + ((half)(_291 * 0.61328125h)))) + ((half)(_293 * 0.04736328h))));
    // [sem: expr_sat]
    _310 = saturate((half)(((half)(((half)(_292 * 0.9165039h)) + ((half)(_291 * 0.07019043h)))) + ((half)(_293 * 0.013450623h))));
    // [sem: expr_sat]
    _311 = saturate((half)(((half)(((half)(_292 * 0.109558105h)) + ((half)(_291 * 0.020614624h)))) + ((half)(_293 * 0.8696289h))));
    if ((uint)((int)(_119) + (int)(-65)) < (uint)2) {
      _511 = _174;
      _512 = _206;
      _513 = _207;
      _514 = _208;
      _522 = _511;
      _523 = _512;
      _524 = _513;
      _525 = _514;
      _526 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_101)))) + (uint)(-1))) >> 1);
      _527 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_103)))) + (uint)(-1))) >> 1);
      _528 = _111;
      _529 = _112;
    } else {
      _316 = (_119 == 29);
      _318 = select(((_119 == 24) || _316), 0.0f, _174);
      if (_316) {
        _336 = (uint)((uint)((_bufferSizeAndInvSize.x * ((float)((int)(_103)))) + ((float)((int)(_101))))) + (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524))));
        _344 = (uint)((uint)((((int)((uint)((uint)((uint)(_336)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_336)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_336)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _352 = (uint)((uint)((((int)((uint)((uint)((uint)(_344)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_344)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_344)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_336));
        _360 = (uint)((uint)((((int)((uint)((uint)((uint)(_352)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_352)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_352)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_344));
        _368 = (uint)((uint)((((int)((uint)((uint)((uint)(_360)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_360)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_360)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_352));
        _376 = (uint)((uint)((((int)((uint)((uint)((uint)(_368)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_368)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_368)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_360));
        _384 = (uint)((uint)((((int)((uint)((uint)((uint)(_376)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_376)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_376)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_368));
        _392 = (uint)((uint)((((int)((uint)((uint)((uint)(_384)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_384)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_384)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_376));
        _400 = (uint)((uint)((((int)((uint)((uint)((uint)(_392)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_392)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_392)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_384));
        _408 = (uint)((uint)((((int)((uint)((uint)((uint)(_400)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_400)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_400)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_392));
        _416 = (uint)((uint)((((int)((uint)((uint)((uint)(_408)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_408)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_408)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_400));
        _424 = (uint)((uint)((((int)((uint)((uint)((uint)(_416)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_416)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_416)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_408));
        _432 = (uint)((uint)((((int)((uint)((uint)((uint)(_424)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_424)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_424)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_416));
        _440 = (uint)((uint)((((int)((uint)((uint)((uint)(_432)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_432)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_432)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_424));
        _448 = (uint)((uint)((((int)((uint)((uint)((uint)(_440)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_440)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_440)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_432));
        _456 = (uint)((uint)((((int)((uint)((uint)((uint)(_448)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_448)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_448)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_440));
        if ((_448 & 16777215) == 0) {
          _469 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_456)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_456)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_456)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_448))));
        } else {
          _469 = _448;
        }
        _498 = (int)(min(max(((((saturate(1.0f - (_123 * 0.015625f)) * 4.0f) * ((((float)((uint)((uint)(((int)((uint)((uint)(_469)) * (uint)(48271))) & 16777215)))) * 1.1920929e-07f) + -1.0f)) + ((float)((int)((int)((uint)((uint)(max((int)(1), (int)(_101)))) + (uint)(-1)))))) * 0.5f), 0.0f), ((_bufferSizeAndInvSize.x * 0.5f) + -2.0f)));
        _499 = (int)(min(max((((float)((int)((int)((uint)((uint)(max((int)(1), (int)(_103)))) + (uint)(-1))))) * 0.5f), 0.0f), ((_bufferSizeAndInvSize.y * 0.5f) + -2.0f)));
        _522 = _318;
        _523 = _285;
        _524 = _286;
        _525 = _287;
        _526 = _498;
        _527 = _499;
        _528 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((int)(_498))) + 0.5f));
        _529 = ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((int)(_499))) + 0.5f));
      } else {
        _511 = _318;
        _512 = _285;
        _513 = _286;
        _514 = _287;
        _522 = _511;
        _523 = _512;
        _524 = _513;
        _525 = _514;
        _526 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_101)))) + (uint)(-1))) >> 1);
        _527 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_103)))) + (uint)(-1))) >> 1);
        _528 = _111;
        _529 = _112;
      }
    }
    _532 = __3__36__0__0__g_normalDepthHalf.GatherGreen(__3__40__0__0__g_samplerPoint, float2(_528, _529));  // [sem: _3__36__0__0__g_normalDepthHalf_gather]
    _537 = (uint)((uint)(_532.w)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _541 = (uint)((uint)(_532.z)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _545 = (uint)((uint)(_532.x)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _549 = (uint)((uint)(_532.y)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _576 = (max(0.0f, (_123 + -1.0f)) * 0.05f) * _temporalReprojectionParams.y;
    _581 = max(0.0f, (abs(_123 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_532.w & 16777215)))) * 5.960465e-08f)))) - _576));
    _582 = max(0.0f, (abs(_123 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_532.z & 16777215)))) * 5.960465e-08f)))) - _576));
    _583 = max(0.0f, (abs(_123 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_532.x & 16777215)))) * 5.960465e-08f)))) - _576));
    _584 = max(0.0f, (abs(_123 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_532.y & 16777215)))) * 5.960465e-08f)))) - _576));
    _585 = _581 * _581;
    _586 = _582 * _582;
    _587 = _583 * _583;
    _588 = _584 * _584;
    _589 = _537 & 127;
    _590 = _541 & 127;
    _591 = _545 & 127;
    _592 = _549 & 127;
    if ((uint)_119 > (uint)11) {
      if (!(((uint)_119 < (uint)21) || (_119 == 107))) {
        _630 = (_119 == 7);
      } else {
        _630 = true;
      }
    } else {
      if (!(_119 == 6)) {
        _630 = (_119 == 7);
      } else {
        _630 = true;
      }
    }
    _632 = _123 * _123;
    _637 = (_632 * 0.2f) + 1.0f;
    _639 = select(_630, -7.213475f, -72.13475f) * (1.0f / ((select(_630, 0.05f, 0.01f) * _632) + 1.0f));
    _658 = (_209 == 66) || (_119 == 53);
    _687 = __3__36__0__0__g_normalDepthHalf.GatherRed(__3__40__0__0__g_samplerPoint, float2(_528, _529));  // [sem: _3__36__0__0__g_normalDepthHalf_gather]
    _706 = min(1.0f, ((((float)((uint)((uint)(_687.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _707 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_687.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _708 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_687.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _710 = rsqrt(dot(float3(_706, _707, _708), float3(_706, _707, _708)));  // [sem: invLength]
    _714 = float(_523);
    _715 = float(_524);
    _716 = float(_525);
    _732 = min(1.0f, ((((float)((uint)((uint)(_687.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _733 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_687.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _734 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_687.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _736 = rsqrt(dot(float3(_732, _733, _734), float3(_732, _733, _734)));  // [sem: invLength]
    _755 = min(1.0f, ((((float)((uint)((uint)(_687.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _756 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_687.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _757 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_687.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _759 = rsqrt(dot(float3(_755, _756, _757), float3(_755, _756, _757)));  // [sem: invLength]
    _778 = min(1.0f, ((((float)((uint)((uint)(_687.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _779 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_687.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _780 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_687.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _782 = rsqrt(dot(float3(_778, _779, _780), float3(_778, _779, _780)));  // [sem: invLength]
    _787 = (_119 == 29);
    _788 = select(_787, 8192.0f, 256.0f);
    _801 = exp2(log2(saturate(dot(float3(_714, _715, _716), float3((_710 * _706), (_710 * _707), (_710 * _708))))) * _788);
    _802 = exp2(log2(saturate(dot(float3(_714, _715, _716), float3((_736 * _732), (_736 * _733), (_736 * _734))))) * _788);
    _803 = exp2(log2(saturate(dot(float3(_714, _715, _716), float3((_759 * _755), (_759 * _756), (_759 * _757))))) * _788);
    _804 = exp2(log2(saturate(dot(float3(_714, _715, _716), float3((_782 * _778), (_782 * _779), (_782 * _780))))) * _788);
    _809 = 1.0f / max(1e-06f, (((_802 + _801) + _803) + _804));
    _812 = ((select((_585 > _637), 0.0f, exp2(_639 * _585)) * ((float)((bool)(!(_658 ^ (((_537 & 126) == 66) || (_589 == 53))))))) * _801) * _809;
    _815 = ((select((_586 > _637), 0.0f, exp2(_639 * _586)) * ((float)((bool)(!(_658 ^ (((_541 & 126) == 66) || (_590 == 53))))))) * _802) * _809;
    _818 = ((select((_587 > _637), 0.0f, exp2(_639 * _587)) * ((float)((bool)(!(_658 ^ (((_545 & 126) == 66) || (_591 == 53))))))) * _803) * _809;
    _821 = ((select((_588 > _637), 0.0f, exp2(_639 * _588)) * ((float)((bool)(!(_658 ^ (((_549 & 126) == 66) || (_592 == 53))))))) * _804) * _809;
    if (_787) {
      _852 = abs(((((float)((int)(_101))) * 0.5f) + -0.25f) - ((float)((int)(_526))));
      _853 = abs(((((float)((int)(_103))) * 0.5f) + -0.25f) - ((float)((int)(_527))));
    } else {
      _852 = (((float)((uint)((uint)((uint)((uint)(_101)) - (uint)((uint)((uint)(_526)) << 1)) - (uint)((uint)(_frameNumber.x & 1))))) * 0.5f);
      _853 = (((float)((uint)((uint)((uint)((uint)(_103)) - (uint)((uint)((uint)(_527)) << 1)) - (uint)((uint)(((uint)((uint)(_frameNumber.x)) >> 1) & 1))))) * 0.5f);
    }
    _854 = saturate(_852);  // [sem: _852_sat]
    _855 = saturate(_853);  // [sem: _853_sat]
    _856 = 1.0f - _854;
    _857 = 1.0f - _855;
    _858 = _857 * _856;
    _859 = _857 * _854;
    _860 = _856 * _855;
    _861 = _855 * _854;
    _870 = (_119 != 29) && ((_821 == 0.0f) && ((_818 == 0.0f) && ((_812 == 0.0f) && (_815 == 0.0f))));
    _879 = saturate(_858 * select(_870, 1.0f, _812));  // [sem: expr_sat]
    _880 = saturate(_859 * select(_870, 1.0f, _815));  // [sem: expr_sat]
    _881 = saturate(_860 * select(_870, 1.0f, _818));  // [sem: expr_sat]
    _882 = saturate(_861 * select(_870, 1.0f, _821));  // [sem: expr_sat]
    _883 = dot(float4(_879, _880, _881, _882), float4(1.0f, 1.0f, 1.0f, 1.0f));
    _884 = max(0.0f, _883);
    _889 = saturate(_879 / _884);  // [sem: expr_sat]
    _890 = saturate(_880 / _884);  // [sem: expr_sat]
    _891 = saturate(_881 / _884);  // [sem: expr_sat]
    _892 = saturate(_882 / _884);  // [sem: expr_sat]
    _896 = (float)((bool)(((((_592 == 6) || ((_592 == 107) || ((uint)((int)(_592) + (int)(-12)) < (uint)9))) || (((_591 == 6) || ((_591 == 107) || ((uint)((int)(_591) + (int)(-12)) < (uint)9))) || (((_589 == 6) || ((_589 == 107) || ((uint)((int)(_589) + (int)(-12)) < (uint)9))) || ((_590 == 6) || ((_590 == 107) || ((uint)((int)(_590) + (int)(-12)) < (uint)9)))))) || _630) && (_883 < 0.0001f)));
    _905 = ((_858 - _889) * _896) + _889;
    _906 = ((_859 - _890) * _896) + _890;
    _907 = ((_860 - _891) * _896) + _891;
    _908 = ((_861 - _892) * _896) + _892;
    half4 _910 = __3__36__0__0__g_diffuseResult.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _920 = (uint)((uint)(_526)) + (uint)(1);
    half4 _921 = __3__36__0__0__g_diffuseResult.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _934 = (uint)((uint)(_527)) + (uint)(1);
    half4 _935 = __3__36__0__0__g_diffuseResult.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    half4 _948 = __3__36__0__0__g_diffuseResult.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _958 = (((float(_921.x) * _906) + (float(_910.x) * _905)) + (float(_935.x) * _907)) + (float(_948.x) * _908);
    _959 = (((float(_921.y) * _906) + (float(_910.y) * _905)) + (float(_935.y) * _907)) + (float(_948.y) * _908);
    _960 = (((float(_921.z) * _906) + (float(_910.z) * _905)) + (float(_935.z) * _907)) + (float(_948.z) * _908);
    _962 = __3__36__0__0__g_specularResult.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _969 = __3__36__0__0__g_specularResult.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _979 = __3__36__0__0__g_specularResult.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _989 = __3__36__0__0__g_specularResult.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _1006 = ((uint)((int)(_119) + (int)(-27)) < (uint)2) || ((_119 == 26) || (((uint)((int)(_119) + (int)(-105)) < (uint)2) || _188));
    _1008 = (_111 * 2.0f) + -1.0f;
    _1010 = 1.0f - (_112 * 2.0f);
    _1046 = mad((_invViewProjRelative[3].z), _122, mad((_invViewProjRelative[3].y), _1010, ((_invViewProjRelative[3].x) * _1008))) + (_invViewProjRelative[3].w);
    _1047 = (mad((_invViewProjRelative[0].z), _122, mad((_invViewProjRelative[0].y), _1010, ((_invViewProjRelative[0].x) * _1008))) + (_invViewProjRelative[0].w)) / _1046;
    _1048 = (mad((_invViewProjRelative[1].z), _122, mad((_invViewProjRelative[1].y), _1010, ((_invViewProjRelative[1].x) * _1008))) + (_invViewProjRelative[1].w)) / _1046;
    _1049 = (mad((_invViewProjRelative[2].z), _122, mad((_invViewProjRelative[2].y), _1010, ((_invViewProjRelative[2].x) * _1008))) + (_invViewProjRelative[2].w)) / _1046;
    _1051 = rsqrt(dot(float3(_1047, _1048, _1049), float3(_1047, _1048, _1049)));  // [sem: invLength]
    _1052 = _1051 * _1047;
    _1053 = _1051 * _1048;
    _1054 = _1051 * _1049;
    _1055 = (_119 == 33);
    _1057 = (_119 == 54);
    _1061 = (_119 == 55);
    if (((_209 == 64) || (_1057 || (_1055 || _658))) || (_1061 || _1006)) {
      _1066 = __3__36__0__0__g_character.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_character_load]
      _1072 = _1066.x;  // [sem: _3__36__0__0__g_character_load_derived]
      _1073 = _1066.y;  // [sem: _3__36__0__0__g_character_load_derived]
      _1074 = _1066.z;  // [sem: _3__36__0__0__g_character_load_derived]
      _1075 = _1066.w;  // [sem: _3__36__0__0__g_character_load_derived]
    } else {
      _1072 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _1073 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _1074 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _1075 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
    }
    if (!_1055) {
      if (_1057) {
        if ((((int)((uint)((_1074 * 255.0f) + 0.5f))) & 112) == 0) {
          _1118 = 52;
          _1119 = _522;
          _1120 = 0.0f;
          _1121 = 0.0f;
          _1122 = 0.0f;
          _1123 = 0.0f;
        } else {
          _1094 = (uint)((_1074 * 255.0f) + 0.5f);
          _1096 = ((uint)((uint)(_1094)) >> 4) & 7;
          if (!(_1096 == 0)) {
            _1103 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_1096) + (int)(1)))];
            _1109 = min((1.0f - _1103.y), _1103.x);
            _1110 = (((float)((uint)((uint)(_1094 & 15)))) * 0.06666667f);
            _1111 = _1103.y;
            _1112 = _1103.x;
          } else {
            _1109 = 0.0f;
            _1110 = 0.0f;
            _1111 = 0.0f;
            _1112 = 0.0f;
          }
          _1118 = _119;
          _1119 = (half)(half(_effectiveMetallicForVelvet * _1112));
          _1120 = _1109;
          _1121 = _1110;
          _1122 = _1111;
          _1123 = _1112;
        }
      } else {
        if (_1061) {
          if ((((int)((uint)((_1074 * 255.0f) + 0.5f))) & 127) == 0) {
            _1118 = 52;
            _1119 = _522;
            _1120 = 0.0f;
            _1121 = 0.0f;
            _1122 = 0.0f;
            _1123 = 0.0f;
          } else {
            _1118 = 55;
            _1119 = _522;
            _1120 = 0.0f;
            _1121 = 0.0f;
            _1122 = 0.0f;
            _1123 = 0.0f;
          }
        } else {
          _1118 = _119;
          _1119 = _522;
          _1120 = 0.0f;
          _1121 = 0.0f;
          _1122 = 0.0f;
          _1123 = 0.0f;
        }
      }
    } else {
      _1094 = (uint)((_1074 * 255.0f) + 0.5f);
      _1096 = ((uint)((uint)(_1094)) >> 4) & 7;
      if (!(_1096 == 0)) {
        _1103 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_1096) + (int)(1)))];
        _1109 = min((1.0f - _1103.y), _1103.x);
        _1110 = (((float)((uint)((uint)(_1094 & 15)))) * 0.06666667f);
        _1111 = _1103.y;
        _1112 = _1103.x;
      } else {
        _1109 = 0.0f;
        _1110 = 0.0f;
        _1111 = 0.0f;
        _1112 = 0.0f;
      }
      _1118 = _119;
      _1119 = (half)(half(_effectiveMetallicForVelvet * _1112));
      _1120 = _1109;
      _1121 = _1110;
      _1122 = _1111;
      _1123 = _1112;
    }
    if (_1118 == 66) {
      _1155 = float(_1119);
      _1189 = _1155;
      _1190 = 0.0h;
      _1191 = ((_1072 * 2.0f) + -1.0f);
      _1192 = ((_1073 * 2.0f) + -1.0f);
      _1193 = ((_1074 * 2.0f) + -1.0f);
      if ((_1118 == 53) || ((_1118 & 126) == 66)) {
        _1199 = _1189;
        _1200 = _1190;
        _1201 = _1191;
        _1202 = _1192;
        _1203 = _1193;
        _1205 = __3__36__0__0__g_bentCone.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
        _1212 = __3__36__0__0__g_bentCone.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
        _1222 = __3__36__0__0__g_bentCone.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
        _1232 = __3__36__0__0__g_bentCone.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
        _1245 = (((((_1212.x * _906) + (_1205.x * _905)) + (_1222.x * _907)) + (_1232.x * _908)) * 2.0f) + -1.0f;
        _1246 = (((((_1212.y * _906) + (_1205.y * _905)) + (_1222.y * _907)) + (_1232.y * _908)) * 2.0f) + -1.0f;
        _1247 = (((((_1212.z * _906) + (_1205.z * _905)) + (_1222.z * _907)) + (_1232.z * _908)) * 2.0f) + -1.0f;
        _1249 = rsqrt(dot(float3(_1245, _1246, _1247), float3(_1245, _1246, _1247)));  // [sem: invLength]
        _1250 = _1245 * _1249;
        _1251 = _1246 * _1249;
        _1252 = _1247 * _1249;
        if (!(_renderParams.z > 0.0f)) {
          if (!(_renderParams2.y > 0.0f)) {
            _1264 = (half)(saturate((half)(_279 + 0.15002441h)));
          } else {
            _1264 = _279;
          }
        } else {
          _1264 = _279;
        }
        _1265 = float(_1264);
        if (_1118 == 53) {
          _1281 = (((asfloat(_globalLightParams.z) * _1265) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
        } else {
          _1281 = _bevelParams.y;
        }
        _1282 = float(_309);
        _1283 = float(_310);
        _1284 = float(_311);
        _1285 = dot(float3(_1201, _1202, _1203), float3(_1250, _1251, _1252));
        _1286 = -0.0f - _1052;
        _1287 = -0.0f - _1053;
        _1288 = -0.0f - _1054;
        _1289 = dot(float3(_1201, _1202, _1203), float3(_1286, _1287, _1288));
        _1295 = cos(abs(asin(_1289) - asin(_1285)) * 0.5f);
        _1299 = _1250 - (_1285 * _1201);
        _1300 = _1251 - (_1285 * _1202);
        _1301 = _1252 - (_1285 * _1203);
        _1305 = _1286 - (_1289 * _1201);
        _1306 = _1287 - (_1289 * _1202);
        _1307 = _1288 - (_1289 * _1203);
        // [sem: invLength]
        _1314 = rsqrt((dot(float3(_1305, _1306, _1307), float3(_1305, _1306, _1307)) * dot(float3(_1299, _1300, _1301), float3(_1299, _1300, _1301))) + 0.0001f) * dot(float3(_1299, _1300, _1301), float3(_1305, _1306, _1307));
        _1324 = min(max(_1265, 0.09803922f), 1.0f);
        _1325 = _1324 * _1324;
        _1326 = _1325 * 0.5f;
        _1327 = _1325 * 2.0f;
        _1328 = _1289 + _1285;
        _1329 = _1328 - _1281;
        _1338 = 1.0f / ((1.19f / _1295) + (_1295 * 0.36f));
        _1343 = ((_1338 * (0.6f - (_1314 * 0.8f))) + 1.0f) * sqrt(saturate((_1314 * 0.5f) + 0.5f));
        _1349 = 1.0f - (sqrt(saturate(1.0f - (_1343 * _1343))) * _1295);
        _1350 = _1349 * _1349;
        _1354 = 0.9534794f - ((_1350 * _1350) * (_1349 * 0.9534794f));
        _1355 = _1338 * _1343;
        _1360 = (sqrt(1.0f - (_1355 * _1355)) * 0.5f) / _1295;
        _1361 = log2(_1282);
        _1362 = log2(_1283);
        _1363 = log2(_1284);
        _1375 = ((_1354 * _1354) * (exp2((((_1329 * _1329) * -0.5f) / (_1326 * _1326)) * 1.442695f) / (_1325 * 1.2533141f))) * exp2(-5.741926f - (_1314 * 5.265837f));
        _1379 = _1328 - (_1281 * 4.0f);
        _1389 = 1.0f - (_1295 * 0.5f);
        _1390 = _1389 * _1389;
        _1394 = (_1390 * _1390) * (0.9534794f - (_1295 * 0.4767397f));
        _1396 = 0.9534794f - _1394;
        _1397 = 0.8f / _1295;
        _1410 = (((_1396 * _1396) * (_1394 + 0.046520565f)) * (exp2((((_1379 * _1379) * -0.5f) / (_1327 * _1327)) * 1.442695f) / (_1325 * 5.0132565f))) * exp2((_1314 * 24.525816f) + -24.208424f);
        _1420 = min(0.0f, (-0.0f - ((_1375 * exp2(_1361 * _1360)) + (_1410 * exp2(_1397 * _1361)))));
        _1421 = min(0.0f, (-0.0f - ((_1375 * exp2(_1362 * _1360)) + (_1410 * exp2(_1397 * _1362)))));
        _1422 = min(0.0f, (-0.0f - ((_1375 * exp2(_1363 * _1360)) + (_1410 * exp2(_1397 * _1363)))));
        _1431 = saturate(abs(dot(float3(_1250, _1251, _1252), float3(_1201, _1202, _1203))));  // [sem: expr_sat]
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _1440 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1361 * 1.5f)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _1443 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _1446 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1363 * 1.5f)))), 0.0f);
        _1453 = min(0.99f, _1440.x);
        _1454 = min(0.99f, _1443.x);
        _1455 = min(0.99f, _1446.x);
        _1456 = min(0.99f, _1440.y);
        _1457 = min(0.99f, _1443.y);
        _1458 = min(0.99f, _1446.y);
        _1459 = _1453 * _1453;
        _1460 = _1454 * _1454;
        _1461 = _1455 * _1455;
        _1462 = _1456 * _1456;
        _1463 = _1457 * _1457;
        _1464 = _1458 * _1458;
        _1465 = _1462 * _1456;
        _1466 = _1463 * _1457;
        _1467 = _1464 * _1458;
        _1468 = 1.0f - _1459;
        _1469 = 1.0f - _1460;
        _1470 = 1.0f - _1461;
        _1480 = _1468 * _1468;
        _1481 = _1469 * _1469;
        _1482 = _1470 * _1470;
        _1483 = _1480 * _1468;
        _1484 = _1481 * _1469;
        _1485 = _1482 * _1470;
        _1493 = min(max(_1265, 0.18f), 0.6f);
        _1494 = _1493 * _1493;
        _1495 = _1494 * 0.25f;
        _1496 = _1494 * 4.0f;
        _1498 = (_1454 + _1453) + _1455;
        _1499 = _1453 / _1498;
        _1500 = _1454 / _1498;
        _1501 = _1455 / _1498;
        _1502 = dot(float3(_1494, _1495, _1496), float3(_1499, _1500, _1501));
        _1503 = _1502 * _1502;
        _1506 = asin(min(max(_1289, -1.0f), 1.0f)) + asin(min(max(_1285, -1.0f), 1.0f));
        _1507 = _1506 * 0.5f;
        _1508 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1499, _1500, _1501));
        _1518 = _1508 * _1508;
        _1541 = (_1457 + _1456) + _1458;
        _1545 = dot(float3(_1494, _1495, _1496), float3((_1456 / _1541), (_1457 / _1541), (_1458 / _1541)));
        _1549 = sqrt((_1545 * _1545) + (_1503 * 2.0f));
        _1567 = (_1545 * 3.0f) + (_1502 * 2.0f);
        _1574 = (((_1465 + _1456) * ((_1459 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1465) + _1456);
        _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1466) + _1457);
        _1576 = (((_1467 + _1458) * ((_1461 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1467) + _1458);
        _1585 = _1507 - (((_1518 * (((_1459 * 4.0f) * _1462) + (_1480 * 2.0f))) * (1.0f - ((_1462 * 2.0f) / _1480))) / _1483);
        _1592 = _1507 - (((_1518 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
        _1599 = _1507 - (((_1518 * (((_1461 * 4.0f) * _1464) + (_1482 * 2.0f))) * (1.0f - ((_1464 * 2.0f) / _1482))) / _1485);
        _1627 = exp2((((_1506 * -0.25f) * _1507) / _1503) * 1.442695f) * 1.4f;
        _1628 = ((((((_1465 * _1459) / _1483) + ((_1456 * _1459) / _1468)) * 4.3982296f) * exp2((((_1585 * _1585) * -0.5f) / ((_1574 * _1574) + _1503)) * 1.442695f)) + ((((_1440.x + _1420) * 0.25f) - _1420) * 6.2831855f)) * _1627;
        _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1592 * _1592) * -0.5f) / ((_1575 * _1575) + _1503)) * 1.442695f)) + ((((_1443.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1627;
        _1630 = ((((((_1467 * _1461) / _1485) + ((_1458 * _1461) / _1470)) * 4.3982296f) * exp2((((_1599 * _1599) * -0.5f) / ((_1576 * _1576) + _1503)) * 1.442695f)) + ((((_1446.x + _1422) * 0.25f) - _1422) * 6.2831855f)) * _1627;
        _1631 = max(0.125f, _1199);
        _1641 = max(0.01f, ((_1631 * (_1282 - _1628)) + _1628));
        _1642 = max(0.01f, (lerp(_1629, _1283, _1631)));
        _1643 = max(0.01f, (lerp(_1630, _1284, _1631)));
        _1645 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
        _1652 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
        _1662 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
        _1672 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
        _1697 = _1199;
        _1698 = _1200;
        _1699 = _1201;
        _1700 = _1202;
        _1701 = _1203;
        _1702 = _1118;
        _1703 = (min(30000.0f, (_exposure4.x * (((((_1652.x * _906) + (_1645.x * _905)) + (_1662.x * _907)) + (_1672.x * _908)) / _1641))) + _958);
        _1704 = (min(30000.0f, (_exposure4.x * (((((_1652.y * _906) + (_1645.y * _905)) + (_1662.y * _907)) + (_1672.y * _908)) / _1642))) + _959);
        _1705 = (min(30000.0f, (_exposure4.x * (((((_1652.z * _906) + (_1645.z * _905)) + (_1662.z * _907)) + (_1672.z * _908)) / _1643))) + _960);
        _1706 = _1641;
        _1707 = _1642;
        _1708 = _1643;
      } else {
        _1697 = _1189;
        _1698 = _1190;
        _1699 = _1191;
        _1700 = _1192;
        _1701 = _1193;
        _1702 = _1118;
        _1703 = _958;
        _1704 = _959;
        _1705 = _960;
        _1706 = 0.0f;
        _1707 = 0.0f;
        _1708 = 0.0f;
      }
    } else {
      _1127 = (_1118 == 53);
      if ((_1118 == 67) || _1127) {
        _1134 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
        if (!(float(_1119) > (frac(frac(dot(float2(((_1134 * 32.665f) + _104), ((_1134 * 11.815f) + _105)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
          if ((_1118 & 126) == 66) {
            _1155 = 1.0f;
            _1189 = _1155;
            _1190 = 0.0h;
            _1191 = ((_1072 * 2.0f) + -1.0f);
            _1192 = ((_1073 * 2.0f) + -1.0f);
            _1193 = ((_1074 * 2.0f) + -1.0f);
            if ((_1118 == 53) || ((_1118 & 126) == 66)) {
              _1199 = _1189;
              _1200 = _1190;
              _1201 = _1191;
              _1202 = _1192;
              _1203 = _1193;
              _1205 = __3__36__0__0__g_bentCone.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1212 = __3__36__0__0__g_bentCone.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1222 = __3__36__0__0__g_bentCone.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1232 = __3__36__0__0__g_bentCone.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1245 = (((((_1212.x * _906) + (_1205.x * _905)) + (_1222.x * _907)) + (_1232.x * _908)) * 2.0f) + -1.0f;
              _1246 = (((((_1212.y * _906) + (_1205.y * _905)) + (_1222.y * _907)) + (_1232.y * _908)) * 2.0f) + -1.0f;
              _1247 = (((((_1212.z * _906) + (_1205.z * _905)) + (_1222.z * _907)) + (_1232.z * _908)) * 2.0f) + -1.0f;
              _1249 = rsqrt(dot(float3(_1245, _1246, _1247), float3(_1245, _1246, _1247)));  // [sem: invLength]
              _1250 = _1245 * _1249;
              _1251 = _1246 * _1249;
              _1252 = _1247 * _1249;
              if (!(_renderParams.z > 0.0f)) {
                if (!(_renderParams2.y > 0.0f)) {
                  _1264 = (half)(saturate((half)(_279 + 0.15002441h)));
                } else {
                  _1264 = _279;
                }
              } else {
                _1264 = _279;
              }
              _1265 = float(_1264);
              if (_1118 == 53) {
                _1281 = (((asfloat(_globalLightParams.z) * _1265) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
              } else {
                _1281 = _bevelParams.y;
              }
              _1282 = float(_309);
              _1283 = float(_310);
              _1284 = float(_311);
              _1285 = dot(float3(_1201, _1202, _1203), float3(_1250, _1251, _1252));
              _1286 = -0.0f - _1052;
              _1287 = -0.0f - _1053;
              _1288 = -0.0f - _1054;
              _1289 = dot(float3(_1201, _1202, _1203), float3(_1286, _1287, _1288));
              _1295 = cos(abs(asin(_1289) - asin(_1285)) * 0.5f);
              _1299 = _1250 - (_1285 * _1201);
              _1300 = _1251 - (_1285 * _1202);
              _1301 = _1252 - (_1285 * _1203);
              _1305 = _1286 - (_1289 * _1201);
              _1306 = _1287 - (_1289 * _1202);
              _1307 = _1288 - (_1289 * _1203);
              // [sem: invLength]
              _1314 = rsqrt((dot(float3(_1305, _1306, _1307), float3(_1305, _1306, _1307)) * dot(float3(_1299, _1300, _1301), float3(_1299, _1300, _1301))) + 0.0001f) * dot(float3(_1299, _1300, _1301), float3(_1305, _1306, _1307));
              _1324 = min(max(_1265, 0.09803922f), 1.0f);
              _1325 = _1324 * _1324;
              _1326 = _1325 * 0.5f;
              _1327 = _1325 * 2.0f;
              _1328 = _1289 + _1285;
              _1329 = _1328 - _1281;
              _1338 = 1.0f / ((1.19f / _1295) + (_1295 * 0.36f));
              _1343 = ((_1338 * (0.6f - (_1314 * 0.8f))) + 1.0f) * sqrt(saturate((_1314 * 0.5f) + 0.5f));
              _1349 = 1.0f - (sqrt(saturate(1.0f - (_1343 * _1343))) * _1295);
              _1350 = _1349 * _1349;
              _1354 = 0.9534794f - ((_1350 * _1350) * (_1349 * 0.9534794f));
              _1355 = _1338 * _1343;
              _1360 = (sqrt(1.0f - (_1355 * _1355)) * 0.5f) / _1295;
              _1361 = log2(_1282);
              _1362 = log2(_1283);
              _1363 = log2(_1284);
              _1375 = ((_1354 * _1354) * (exp2((((_1329 * _1329) * -0.5f) / (_1326 * _1326)) * 1.442695f) / (_1325 * 1.2533141f))) * exp2(-5.741926f - (_1314 * 5.265837f));
              _1379 = _1328 - (_1281 * 4.0f);
              _1389 = 1.0f - (_1295 * 0.5f);
              _1390 = _1389 * _1389;
              _1394 = (_1390 * _1390) * (0.9534794f - (_1295 * 0.4767397f));
              _1396 = 0.9534794f - _1394;
              _1397 = 0.8f / _1295;
              _1410 = (((_1396 * _1396) * (_1394 + 0.046520565f)) * (exp2((((_1379 * _1379) * -0.5f) / (_1327 * _1327)) * 1.442695f) / (_1325 * 5.0132565f))) * exp2((_1314 * 24.525816f) + -24.208424f);
              _1420 = min(0.0f, (-0.0f - ((_1375 * exp2(_1361 * _1360)) + (_1410 * exp2(_1397 * _1361)))));
              _1421 = min(0.0f, (-0.0f - ((_1375 * exp2(_1362 * _1360)) + (_1410 * exp2(_1397 * _1362)))));
              _1422 = min(0.0f, (-0.0f - ((_1375 * exp2(_1363 * _1360)) + (_1410 * exp2(_1397 * _1363)))));
              _1431 = saturate(abs(dot(float3(_1250, _1251, _1252), float3(_1201, _1202, _1203))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1440 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1361 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1443 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1446 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1363 * 1.5f)))), 0.0f);
              _1453 = min(0.99f, _1440.x);
              _1454 = min(0.99f, _1443.x);
              _1455 = min(0.99f, _1446.x);
              _1456 = min(0.99f, _1440.y);
              _1457 = min(0.99f, _1443.y);
              _1458 = min(0.99f, _1446.y);
              _1459 = _1453 * _1453;
              _1460 = _1454 * _1454;
              _1461 = _1455 * _1455;
              _1462 = _1456 * _1456;
              _1463 = _1457 * _1457;
              _1464 = _1458 * _1458;
              _1465 = _1462 * _1456;
              _1466 = _1463 * _1457;
              _1467 = _1464 * _1458;
              _1468 = 1.0f - _1459;
              _1469 = 1.0f - _1460;
              _1470 = 1.0f - _1461;
              _1480 = _1468 * _1468;
              _1481 = _1469 * _1469;
              _1482 = _1470 * _1470;
              _1483 = _1480 * _1468;
              _1484 = _1481 * _1469;
              _1485 = _1482 * _1470;
              _1493 = min(max(_1265, 0.18f), 0.6f);
              _1494 = _1493 * _1493;
              _1495 = _1494 * 0.25f;
              _1496 = _1494 * 4.0f;
              _1498 = (_1454 + _1453) + _1455;
              _1499 = _1453 / _1498;
              _1500 = _1454 / _1498;
              _1501 = _1455 / _1498;
              _1502 = dot(float3(_1494, _1495, _1496), float3(_1499, _1500, _1501));
              _1503 = _1502 * _1502;
              _1506 = asin(min(max(_1289, -1.0f), 1.0f)) + asin(min(max(_1285, -1.0f), 1.0f));
              _1507 = _1506 * 0.5f;
              _1508 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1499, _1500, _1501));
              _1518 = _1508 * _1508;
              _1541 = (_1457 + _1456) + _1458;
              _1545 = dot(float3(_1494, _1495, _1496), float3((_1456 / _1541), (_1457 / _1541), (_1458 / _1541)));
              _1549 = sqrt((_1545 * _1545) + (_1503 * 2.0f));
              _1567 = (_1545 * 3.0f) + (_1502 * 2.0f);
              _1574 = (((_1465 + _1456) * ((_1459 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1465) + _1456);
              _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1466) + _1457);
              _1576 = (((_1467 + _1458) * ((_1461 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1467) + _1458);
              _1585 = _1507 - (((_1518 * (((_1459 * 4.0f) * _1462) + (_1480 * 2.0f))) * (1.0f - ((_1462 * 2.0f) / _1480))) / _1483);
              _1592 = _1507 - (((_1518 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
              _1599 = _1507 - (((_1518 * (((_1461 * 4.0f) * _1464) + (_1482 * 2.0f))) * (1.0f - ((_1464 * 2.0f) / _1482))) / _1485);
              _1627 = exp2((((_1506 * -0.25f) * _1507) / _1503) * 1.442695f) * 1.4f;
              _1628 = ((((((_1465 * _1459) / _1483) + ((_1456 * _1459) / _1468)) * 4.3982296f) * exp2((((_1585 * _1585) * -0.5f) / ((_1574 * _1574) + _1503)) * 1.442695f)) + ((((_1440.x + _1420) * 0.25f) - _1420) * 6.2831855f)) * _1627;
              _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1592 * _1592) * -0.5f) / ((_1575 * _1575) + _1503)) * 1.442695f)) + ((((_1443.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1627;
              _1630 = ((((((_1467 * _1461) / _1485) + ((_1458 * _1461) / _1470)) * 4.3982296f) * exp2((((_1599 * _1599) * -0.5f) / ((_1576 * _1576) + _1503)) * 1.442695f)) + ((((_1446.x + _1422) * 0.25f) - _1422) * 6.2831855f)) * _1627;
              _1631 = max(0.125f, _1199);
              _1641 = max(0.01f, ((_1631 * (_1282 - _1628)) + _1628));
              _1642 = max(0.01f, (lerp(_1629, _1283, _1631)));
              _1643 = max(0.01f, (lerp(_1630, _1284, _1631)));
              _1645 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1652 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1662 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1672 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1697 = _1199;
              _1698 = _1200;
              _1699 = _1201;
              _1700 = _1202;
              _1701 = _1203;
              _1702 = _1118;
              _1703 = (min(30000.0f, (_exposure4.x * (((((_1652.x * _906) + (_1645.x * _905)) + (_1662.x * _907)) + (_1672.x * _908)) / _1641))) + _958);
              _1704 = (min(30000.0f, (_exposure4.x * (((((_1652.y * _906) + (_1645.y * _905)) + (_1662.y * _907)) + (_1672.y * _908)) / _1642))) + _959);
              _1705 = (min(30000.0f, (_exposure4.x * (((((_1652.z * _906) + (_1645.z * _905)) + (_1662.z * _907)) + (_1672.z * _908)) / _1643))) + _960);
              _1706 = _1641;
              _1707 = _1642;
              _1708 = _1643;
            } else {
              _1697 = _1189;
              _1698 = _1190;
              _1699 = _1191;
              _1700 = _1192;
              _1701 = _1193;
              _1702 = _1118;
              _1703 = _958;
              _1704 = _959;
              _1705 = _960;
              _1706 = 0.0f;
              _1707 = 0.0f;
              _1708 = 0.0f;
            }
          } else {
            _1152 = 1.0f;
            _1153 = 0.0h;
            if (_1127) {
              _1165 = (_1072 * 2.0f) + -1.0f;
              _1166 = (_1073 * 2.0f) + -1.0f;
              _1168 = 1.0f - abs(_1165);
              _1169 = abs(_1166);
              _1170 = _1168 - _1169;
              if (!(_1170 >= 0.0f)) {
                _1181 = ((1.0f - _1169) * select((_1165 >= 0.0f), 1.0f, -1.0f));
                _1182 = (_1168 * select((_1166 >= 0.0f), 1.0f, -1.0f));
              } else {
                _1181 = _1165;
                _1182 = _1166;
              }
              _1184 = rsqrt(dot(float3(_1181, _1182, _1170), float3(_1181, _1182, _1170)));  // [sem: invLength]
              _1199 = _1152;
              _1200 = 0.0h;
              _1201 = (_1184 * _1181);
              _1202 = (_1184 * _1182);
              _1203 = (_1184 * _1170);
              _1205 = __3__36__0__0__g_bentCone.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1212 = __3__36__0__0__g_bentCone.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1222 = __3__36__0__0__g_bentCone.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1232 = __3__36__0__0__g_bentCone.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1245 = (((((_1212.x * _906) + (_1205.x * _905)) + (_1222.x * _907)) + (_1232.x * _908)) * 2.0f) + -1.0f;
              _1246 = (((((_1212.y * _906) + (_1205.y * _905)) + (_1222.y * _907)) + (_1232.y * _908)) * 2.0f) + -1.0f;
              _1247 = (((((_1212.z * _906) + (_1205.z * _905)) + (_1222.z * _907)) + (_1232.z * _908)) * 2.0f) + -1.0f;
              _1249 = rsqrt(dot(float3(_1245, _1246, _1247), float3(_1245, _1246, _1247)));  // [sem: invLength]
              _1250 = _1245 * _1249;
              _1251 = _1246 * _1249;
              _1252 = _1247 * _1249;
              if (!(_renderParams.z > 0.0f)) {
                if (!(_renderParams2.y > 0.0f)) {
                  _1264 = (half)(saturate((half)(_279 + 0.15002441h)));
                } else {
                  _1264 = _279;
                }
              } else {
                _1264 = _279;
              }
              _1265 = float(_1264);
              if (_1118 == 53) {
                _1281 = (((asfloat(_globalLightParams.z) * _1265) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
              } else {
                _1281 = _bevelParams.y;
              }
              _1282 = float(_309);
              _1283 = float(_310);
              _1284 = float(_311);
              _1285 = dot(float3(_1201, _1202, _1203), float3(_1250, _1251, _1252));
              _1286 = -0.0f - _1052;
              _1287 = -0.0f - _1053;
              _1288 = -0.0f - _1054;
              _1289 = dot(float3(_1201, _1202, _1203), float3(_1286, _1287, _1288));
              _1295 = cos(abs(asin(_1289) - asin(_1285)) * 0.5f);
              _1299 = _1250 - (_1285 * _1201);
              _1300 = _1251 - (_1285 * _1202);
              _1301 = _1252 - (_1285 * _1203);
              _1305 = _1286 - (_1289 * _1201);
              _1306 = _1287 - (_1289 * _1202);
              _1307 = _1288 - (_1289 * _1203);
              // [sem: invLength]
              _1314 = rsqrt((dot(float3(_1305, _1306, _1307), float3(_1305, _1306, _1307)) * dot(float3(_1299, _1300, _1301), float3(_1299, _1300, _1301))) + 0.0001f) * dot(float3(_1299, _1300, _1301), float3(_1305, _1306, _1307));
              _1324 = min(max(_1265, 0.09803922f), 1.0f);
              _1325 = _1324 * _1324;
              _1326 = _1325 * 0.5f;
              _1327 = _1325 * 2.0f;
              _1328 = _1289 + _1285;
              _1329 = _1328 - _1281;
              _1338 = 1.0f / ((1.19f / _1295) + (_1295 * 0.36f));
              _1343 = ((_1338 * (0.6f - (_1314 * 0.8f))) + 1.0f) * sqrt(saturate((_1314 * 0.5f) + 0.5f));
              _1349 = 1.0f - (sqrt(saturate(1.0f - (_1343 * _1343))) * _1295);
              _1350 = _1349 * _1349;
              _1354 = 0.9534794f - ((_1350 * _1350) * (_1349 * 0.9534794f));
              _1355 = _1338 * _1343;
              _1360 = (sqrt(1.0f - (_1355 * _1355)) * 0.5f) / _1295;
              _1361 = log2(_1282);
              _1362 = log2(_1283);
              _1363 = log2(_1284);
              _1375 = ((_1354 * _1354) * (exp2((((_1329 * _1329) * -0.5f) / (_1326 * _1326)) * 1.442695f) / (_1325 * 1.2533141f))) * exp2(-5.741926f - (_1314 * 5.265837f));
              _1379 = _1328 - (_1281 * 4.0f);
              _1389 = 1.0f - (_1295 * 0.5f);
              _1390 = _1389 * _1389;
              _1394 = (_1390 * _1390) * (0.9534794f - (_1295 * 0.4767397f));
              _1396 = 0.9534794f - _1394;
              _1397 = 0.8f / _1295;
              _1410 = (((_1396 * _1396) * (_1394 + 0.046520565f)) * (exp2((((_1379 * _1379) * -0.5f) / (_1327 * _1327)) * 1.442695f) / (_1325 * 5.0132565f))) * exp2((_1314 * 24.525816f) + -24.208424f);
              _1420 = min(0.0f, (-0.0f - ((_1375 * exp2(_1361 * _1360)) + (_1410 * exp2(_1397 * _1361)))));
              _1421 = min(0.0f, (-0.0f - ((_1375 * exp2(_1362 * _1360)) + (_1410 * exp2(_1397 * _1362)))));
              _1422 = min(0.0f, (-0.0f - ((_1375 * exp2(_1363 * _1360)) + (_1410 * exp2(_1397 * _1363)))));
              _1431 = saturate(abs(dot(float3(_1250, _1251, _1252), float3(_1201, _1202, _1203))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1440 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1361 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1443 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1446 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1363 * 1.5f)))), 0.0f);
              _1453 = min(0.99f, _1440.x);
              _1454 = min(0.99f, _1443.x);
              _1455 = min(0.99f, _1446.x);
              _1456 = min(0.99f, _1440.y);
              _1457 = min(0.99f, _1443.y);
              _1458 = min(0.99f, _1446.y);
              _1459 = _1453 * _1453;
              _1460 = _1454 * _1454;
              _1461 = _1455 * _1455;
              _1462 = _1456 * _1456;
              _1463 = _1457 * _1457;
              _1464 = _1458 * _1458;
              _1465 = _1462 * _1456;
              _1466 = _1463 * _1457;
              _1467 = _1464 * _1458;
              _1468 = 1.0f - _1459;
              _1469 = 1.0f - _1460;
              _1470 = 1.0f - _1461;
              _1480 = _1468 * _1468;
              _1481 = _1469 * _1469;
              _1482 = _1470 * _1470;
              _1483 = _1480 * _1468;
              _1484 = _1481 * _1469;
              _1485 = _1482 * _1470;
              _1493 = min(max(_1265, 0.18f), 0.6f);
              _1494 = _1493 * _1493;
              _1495 = _1494 * 0.25f;
              _1496 = _1494 * 4.0f;
              _1498 = (_1454 + _1453) + _1455;
              _1499 = _1453 / _1498;
              _1500 = _1454 / _1498;
              _1501 = _1455 / _1498;
              _1502 = dot(float3(_1494, _1495, _1496), float3(_1499, _1500, _1501));
              _1503 = _1502 * _1502;
              _1506 = asin(min(max(_1289, -1.0f), 1.0f)) + asin(min(max(_1285, -1.0f), 1.0f));
              _1507 = _1506 * 0.5f;
              _1508 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1499, _1500, _1501));
              _1518 = _1508 * _1508;
              _1541 = (_1457 + _1456) + _1458;
              _1545 = dot(float3(_1494, _1495, _1496), float3((_1456 / _1541), (_1457 / _1541), (_1458 / _1541)));
              _1549 = sqrt((_1545 * _1545) + (_1503 * 2.0f));
              _1567 = (_1545 * 3.0f) + (_1502 * 2.0f);
              _1574 = (((_1465 + _1456) * ((_1459 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1465) + _1456);
              _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1466) + _1457);
              _1576 = (((_1467 + _1458) * ((_1461 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1467) + _1458);
              _1585 = _1507 - (((_1518 * (((_1459 * 4.0f) * _1462) + (_1480 * 2.0f))) * (1.0f - ((_1462 * 2.0f) / _1480))) / _1483);
              _1592 = _1507 - (((_1518 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
              _1599 = _1507 - (((_1518 * (((_1461 * 4.0f) * _1464) + (_1482 * 2.0f))) * (1.0f - ((_1464 * 2.0f) / _1482))) / _1485);
              _1627 = exp2((((_1506 * -0.25f) * _1507) / _1503) * 1.442695f) * 1.4f;
              _1628 = ((((((_1465 * _1459) / _1483) + ((_1456 * _1459) / _1468)) * 4.3982296f) * exp2((((_1585 * _1585) * -0.5f) / ((_1574 * _1574) + _1503)) * 1.442695f)) + ((((_1440.x + _1420) * 0.25f) - _1420) * 6.2831855f)) * _1627;
              _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1592 * _1592) * -0.5f) / ((_1575 * _1575) + _1503)) * 1.442695f)) + ((((_1443.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1627;
              _1630 = ((((((_1467 * _1461) / _1485) + ((_1458 * _1461) / _1470)) * 4.3982296f) * exp2((((_1599 * _1599) * -0.5f) / ((_1576 * _1576) + _1503)) * 1.442695f)) + ((((_1446.x + _1422) * 0.25f) - _1422) * 6.2831855f)) * _1627;
              _1631 = max(0.125f, _1199);
              _1641 = max(0.01f, ((_1631 * (_1282 - _1628)) + _1628));
              _1642 = max(0.01f, (lerp(_1629, _1283, _1631)));
              _1643 = max(0.01f, (lerp(_1630, _1284, _1631)));
              _1645 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1652 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1662 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1672 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1697 = _1199;
              _1698 = _1200;
              _1699 = _1201;
              _1700 = _1202;
              _1701 = _1203;
              _1702 = _1118;
              _1703 = (min(30000.0f, (_exposure4.x * (((((_1652.x * _906) + (_1645.x * _905)) + (_1662.x * _907)) + (_1672.x * _908)) / _1641))) + _958);
              _1704 = (min(30000.0f, (_exposure4.x * (((((_1652.y * _906) + (_1645.y * _905)) + (_1662.y * _907)) + (_1672.y * _908)) / _1642))) + _959);
              _1705 = (min(30000.0f, (_exposure4.x * (((((_1652.z * _906) + (_1645.z * _905)) + (_1662.z * _907)) + (_1672.z * _908)) / _1643))) + _960);
              _1706 = _1641;
              _1707 = _1642;
              _1708 = _1643;
            } else {
              _1189 = _1152;
              _1190 = _1153;
              _1191 = _714;
              _1192 = _715;
              _1193 = _716;
              if ((_1118 == 53) || ((_1118 & 126) == 66)) {
                _1199 = _1189;
                _1200 = _1190;
                _1201 = _1191;
                _1202 = _1192;
                _1203 = _1193;
                _1205 = __3__36__0__0__g_bentCone.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1212 = __3__36__0__0__g_bentCone.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1222 = __3__36__0__0__g_bentCone.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1232 = __3__36__0__0__g_bentCone.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1245 = (((((_1212.x * _906) + (_1205.x * _905)) + (_1222.x * _907)) + (_1232.x * _908)) * 2.0f) + -1.0f;
                _1246 = (((((_1212.y * _906) + (_1205.y * _905)) + (_1222.y * _907)) + (_1232.y * _908)) * 2.0f) + -1.0f;
                _1247 = (((((_1212.z * _906) + (_1205.z * _905)) + (_1222.z * _907)) + (_1232.z * _908)) * 2.0f) + -1.0f;
                _1249 = rsqrt(dot(float3(_1245, _1246, _1247), float3(_1245, _1246, _1247)));  // [sem: invLength]
                _1250 = _1245 * _1249;
                _1251 = _1246 * _1249;
                _1252 = _1247 * _1249;
                if (!(_renderParams.z > 0.0f)) {
                  if (!(_renderParams2.y > 0.0f)) {
                    _1264 = (half)(saturate((half)(_279 + 0.15002441h)));
                  } else {
                    _1264 = _279;
                  }
                } else {
                  _1264 = _279;
                }
                _1265 = float(_1264);
                if (_1118 == 53) {
                  _1281 = (((asfloat(_globalLightParams.z) * _1265) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
                } else {
                  _1281 = _bevelParams.y;
                }
                _1282 = float(_309);
                _1283 = float(_310);
                _1284 = float(_311);
                _1285 = dot(float3(_1201, _1202, _1203), float3(_1250, _1251, _1252));
                _1286 = -0.0f - _1052;
                _1287 = -0.0f - _1053;
                _1288 = -0.0f - _1054;
                _1289 = dot(float3(_1201, _1202, _1203), float3(_1286, _1287, _1288));
                _1295 = cos(abs(asin(_1289) - asin(_1285)) * 0.5f);
                _1299 = _1250 - (_1285 * _1201);
                _1300 = _1251 - (_1285 * _1202);
                _1301 = _1252 - (_1285 * _1203);
                _1305 = _1286 - (_1289 * _1201);
                _1306 = _1287 - (_1289 * _1202);
                _1307 = _1288 - (_1289 * _1203);
                // [sem: invLength]
                _1314 = rsqrt((dot(float3(_1305, _1306, _1307), float3(_1305, _1306, _1307)) * dot(float3(_1299, _1300, _1301), float3(_1299, _1300, _1301))) + 0.0001f) * dot(float3(_1299, _1300, _1301), float3(_1305, _1306, _1307));
                _1324 = min(max(_1265, 0.09803922f), 1.0f);
                _1325 = _1324 * _1324;
                _1326 = _1325 * 0.5f;
                _1327 = _1325 * 2.0f;
                _1328 = _1289 + _1285;
                _1329 = _1328 - _1281;
                _1338 = 1.0f / ((1.19f / _1295) + (_1295 * 0.36f));
                _1343 = ((_1338 * (0.6f - (_1314 * 0.8f))) + 1.0f) * sqrt(saturate((_1314 * 0.5f) + 0.5f));
                _1349 = 1.0f - (sqrt(saturate(1.0f - (_1343 * _1343))) * _1295);
                _1350 = _1349 * _1349;
                _1354 = 0.9534794f - ((_1350 * _1350) * (_1349 * 0.9534794f));
                _1355 = _1338 * _1343;
                _1360 = (sqrt(1.0f - (_1355 * _1355)) * 0.5f) / _1295;
                _1361 = log2(_1282);
                _1362 = log2(_1283);
                _1363 = log2(_1284);
                _1375 = ((_1354 * _1354) * (exp2((((_1329 * _1329) * -0.5f) / (_1326 * _1326)) * 1.442695f) / (_1325 * 1.2533141f))) * exp2(-5.741926f - (_1314 * 5.265837f));
                _1379 = _1328 - (_1281 * 4.0f);
                _1389 = 1.0f - (_1295 * 0.5f);
                _1390 = _1389 * _1389;
                _1394 = (_1390 * _1390) * (0.9534794f - (_1295 * 0.4767397f));
                _1396 = 0.9534794f - _1394;
                _1397 = 0.8f / _1295;
                _1410 = (((_1396 * _1396) * (_1394 + 0.046520565f)) * (exp2((((_1379 * _1379) * -0.5f) / (_1327 * _1327)) * 1.442695f) / (_1325 * 5.0132565f))) * exp2((_1314 * 24.525816f) + -24.208424f);
                _1420 = min(0.0f, (-0.0f - ((_1375 * exp2(_1361 * _1360)) + (_1410 * exp2(_1397 * _1361)))));
                _1421 = min(0.0f, (-0.0f - ((_1375 * exp2(_1362 * _1360)) + (_1410 * exp2(_1397 * _1362)))));
                _1422 = min(0.0f, (-0.0f - ((_1375 * exp2(_1363 * _1360)) + (_1410 * exp2(_1397 * _1363)))));
                _1431 = saturate(abs(dot(float3(_1250, _1251, _1252), float3(_1201, _1202, _1203))));  // [sem: expr_sat]
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1440 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1361 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1443 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1446 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1363 * 1.5f)))), 0.0f);
                _1453 = min(0.99f, _1440.x);
                _1454 = min(0.99f, _1443.x);
                _1455 = min(0.99f, _1446.x);
                _1456 = min(0.99f, _1440.y);
                _1457 = min(0.99f, _1443.y);
                _1458 = min(0.99f, _1446.y);
                _1459 = _1453 * _1453;
                _1460 = _1454 * _1454;
                _1461 = _1455 * _1455;
                _1462 = _1456 * _1456;
                _1463 = _1457 * _1457;
                _1464 = _1458 * _1458;
                _1465 = _1462 * _1456;
                _1466 = _1463 * _1457;
                _1467 = _1464 * _1458;
                _1468 = 1.0f - _1459;
                _1469 = 1.0f - _1460;
                _1470 = 1.0f - _1461;
                _1480 = _1468 * _1468;
                _1481 = _1469 * _1469;
                _1482 = _1470 * _1470;
                _1483 = _1480 * _1468;
                _1484 = _1481 * _1469;
                _1485 = _1482 * _1470;
                _1493 = min(max(_1265, 0.18f), 0.6f);
                _1494 = _1493 * _1493;
                _1495 = _1494 * 0.25f;
                _1496 = _1494 * 4.0f;
                _1498 = (_1454 + _1453) + _1455;
                _1499 = _1453 / _1498;
                _1500 = _1454 / _1498;
                _1501 = _1455 / _1498;
                _1502 = dot(float3(_1494, _1495, _1496), float3(_1499, _1500, _1501));
                _1503 = _1502 * _1502;
                _1506 = asin(min(max(_1289, -1.0f), 1.0f)) + asin(min(max(_1285, -1.0f), 1.0f));
                _1507 = _1506 * 0.5f;
                _1508 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1499, _1500, _1501));
                _1518 = _1508 * _1508;
                _1541 = (_1457 + _1456) + _1458;
                _1545 = dot(float3(_1494, _1495, _1496), float3((_1456 / _1541), (_1457 / _1541), (_1458 / _1541)));
                _1549 = sqrt((_1545 * _1545) + (_1503 * 2.0f));
                _1567 = (_1545 * 3.0f) + (_1502 * 2.0f);
                _1574 = (((_1465 + _1456) * ((_1459 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1465) + _1456);
                _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1466) + _1457);
                _1576 = (((_1467 + _1458) * ((_1461 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1467) + _1458);
                _1585 = _1507 - (((_1518 * (((_1459 * 4.0f) * _1462) + (_1480 * 2.0f))) * (1.0f - ((_1462 * 2.0f) / _1480))) / _1483);
                _1592 = _1507 - (((_1518 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
                _1599 = _1507 - (((_1518 * (((_1461 * 4.0f) * _1464) + (_1482 * 2.0f))) * (1.0f - ((_1464 * 2.0f) / _1482))) / _1485);
                _1627 = exp2((((_1506 * -0.25f) * _1507) / _1503) * 1.442695f) * 1.4f;
                _1628 = ((((((_1465 * _1459) / _1483) + ((_1456 * _1459) / _1468)) * 4.3982296f) * exp2((((_1585 * _1585) * -0.5f) / ((_1574 * _1574) + _1503)) * 1.442695f)) + ((((_1440.x + _1420) * 0.25f) - _1420) * 6.2831855f)) * _1627;
                _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1592 * _1592) * -0.5f) / ((_1575 * _1575) + _1503)) * 1.442695f)) + ((((_1443.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1627;
                _1630 = ((((((_1467 * _1461) / _1485) + ((_1458 * _1461) / _1470)) * 4.3982296f) * exp2((((_1599 * _1599) * -0.5f) / ((_1576 * _1576) + _1503)) * 1.442695f)) + ((((_1446.x + _1422) * 0.25f) - _1422) * 6.2831855f)) * _1627;
                _1631 = max(0.125f, _1199);
                _1641 = max(0.01f, ((_1631 * (_1282 - _1628)) + _1628));
                _1642 = max(0.01f, (lerp(_1629, _1283, _1631)));
                _1643 = max(0.01f, (lerp(_1630, _1284, _1631)));
                _1645 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _1652 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _1662 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _1672 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _1697 = _1199;
                _1698 = _1200;
                _1699 = _1201;
                _1700 = _1202;
                _1701 = _1203;
                _1702 = _1118;
                _1703 = (min(30000.0f, (_exposure4.x * (((((_1652.x * _906) + (_1645.x * _905)) + (_1662.x * _907)) + (_1672.x * _908)) / _1641))) + _958);
                _1704 = (min(30000.0f, (_exposure4.x * (((((_1652.y * _906) + (_1645.y * _905)) + (_1662.y * _907)) + (_1672.y * _908)) / _1642))) + _959);
                _1705 = (min(30000.0f, (_exposure4.x * (((((_1652.z * _906) + (_1645.z * _905)) + (_1662.z * _907)) + (_1672.z * _908)) / _1643))) + _960);
                _1706 = _1641;
                _1707 = _1642;
                _1708 = _1643;
              } else {
                _1697 = _1189;
                _1698 = _1190;
                _1699 = _1191;
                _1700 = _1192;
                _1701 = _1193;
                _1702 = _1118;
                _1703 = _958;
                _1704 = _959;
                _1705 = _960;
                _1706 = 0.0f;
                _1707 = 0.0f;
                _1708 = 0.0f;
              }
            }
          }
        } else {
          _1697 = 1.0f;
          _1698 = 0.0h;
          _1699 = _714;
          _1700 = _715;
          _1701 = _716;
          _1702 = 52;
          _1703 = _958;
          _1704 = _959;
          _1705 = _960;
          _1706 = 0.0f;
          _1707 = 0.0f;
          _1708 = 0.0f;
        }
      } else {
        _1152 = 0.0f;
        _1153 = _1119;
        if (_1127) {
          _1165 = (_1072 * 2.0f) + -1.0f;
          _1166 = (_1073 * 2.0f) + -1.0f;
          _1168 = 1.0f - abs(_1165);
          _1169 = abs(_1166);
          _1170 = _1168 - _1169;
          if (!(_1170 >= 0.0f)) {
            _1181 = ((1.0f - _1169) * select((_1165 >= 0.0f), 1.0f, -1.0f));
            _1182 = (_1168 * select((_1166 >= 0.0f), 1.0f, -1.0f));
          } else {
            _1181 = _1165;
            _1182 = _1166;
          }
          _1184 = rsqrt(dot(float3(_1181, _1182, _1170), float3(_1181, _1182, _1170)));  // [sem: invLength]
          _1199 = _1152;
          _1200 = 0.0h;
          _1201 = (_1184 * _1181);
          _1202 = (_1184 * _1182);
          _1203 = (_1184 * _1170);
          _1205 = __3__36__0__0__g_bentCone.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1212 = __3__36__0__0__g_bentCone.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1222 = __3__36__0__0__g_bentCone.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1232 = __3__36__0__0__g_bentCone.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1245 = (((((_1212.x * _906) + (_1205.x * _905)) + (_1222.x * _907)) + (_1232.x * _908)) * 2.0f) + -1.0f;
          _1246 = (((((_1212.y * _906) + (_1205.y * _905)) + (_1222.y * _907)) + (_1232.y * _908)) * 2.0f) + -1.0f;
          _1247 = (((((_1212.z * _906) + (_1205.z * _905)) + (_1222.z * _907)) + (_1232.z * _908)) * 2.0f) + -1.0f;
          _1249 = rsqrt(dot(float3(_1245, _1246, _1247), float3(_1245, _1246, _1247)));  // [sem: invLength]
          _1250 = _1245 * _1249;
          _1251 = _1246 * _1249;
          _1252 = _1247 * _1249;
          if (!(_renderParams.z > 0.0f)) {
            if (!(_renderParams2.y > 0.0f)) {
              _1264 = (half)(saturate((half)(_279 + 0.15002441h)));
            } else {
              _1264 = _279;
            }
          } else {
            _1264 = _279;
          }
          _1265 = float(_1264);
          if (_1118 == 53) {
            _1281 = (((asfloat(_globalLightParams.z) * _1265) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
          } else {
            _1281 = _bevelParams.y;
          }
          _1282 = float(_309);
          _1283 = float(_310);
          _1284 = float(_311);
          _1285 = dot(float3(_1201, _1202, _1203), float3(_1250, _1251, _1252));
          _1286 = -0.0f - _1052;
          _1287 = -0.0f - _1053;
          _1288 = -0.0f - _1054;
          _1289 = dot(float3(_1201, _1202, _1203), float3(_1286, _1287, _1288));
          _1295 = cos(abs(asin(_1289) - asin(_1285)) * 0.5f);
          _1299 = _1250 - (_1285 * _1201);
          _1300 = _1251 - (_1285 * _1202);
          _1301 = _1252 - (_1285 * _1203);
          _1305 = _1286 - (_1289 * _1201);
          _1306 = _1287 - (_1289 * _1202);
          _1307 = _1288 - (_1289 * _1203);
          // [sem: invLength]
          _1314 = rsqrt((dot(float3(_1305, _1306, _1307), float3(_1305, _1306, _1307)) * dot(float3(_1299, _1300, _1301), float3(_1299, _1300, _1301))) + 0.0001f) * dot(float3(_1299, _1300, _1301), float3(_1305, _1306, _1307));
          _1324 = min(max(_1265, 0.09803922f), 1.0f);
          _1325 = _1324 * _1324;
          _1326 = _1325 * 0.5f;
          _1327 = _1325 * 2.0f;
          _1328 = _1289 + _1285;
          _1329 = _1328 - _1281;
          _1338 = 1.0f / ((1.19f / _1295) + (_1295 * 0.36f));
          _1343 = ((_1338 * (0.6f - (_1314 * 0.8f))) + 1.0f) * sqrt(saturate((_1314 * 0.5f) + 0.5f));
          _1349 = 1.0f - (sqrt(saturate(1.0f - (_1343 * _1343))) * _1295);
          _1350 = _1349 * _1349;
          _1354 = 0.9534794f - ((_1350 * _1350) * (_1349 * 0.9534794f));
          _1355 = _1338 * _1343;
          _1360 = (sqrt(1.0f - (_1355 * _1355)) * 0.5f) / _1295;
          _1361 = log2(_1282);
          _1362 = log2(_1283);
          _1363 = log2(_1284);
          _1375 = ((_1354 * _1354) * (exp2((((_1329 * _1329) * -0.5f) / (_1326 * _1326)) * 1.442695f) / (_1325 * 1.2533141f))) * exp2(-5.741926f - (_1314 * 5.265837f));
          _1379 = _1328 - (_1281 * 4.0f);
          _1389 = 1.0f - (_1295 * 0.5f);
          _1390 = _1389 * _1389;
          _1394 = (_1390 * _1390) * (0.9534794f - (_1295 * 0.4767397f));
          _1396 = 0.9534794f - _1394;
          _1397 = 0.8f / _1295;
          _1410 = (((_1396 * _1396) * (_1394 + 0.046520565f)) * (exp2((((_1379 * _1379) * -0.5f) / (_1327 * _1327)) * 1.442695f) / (_1325 * 5.0132565f))) * exp2((_1314 * 24.525816f) + -24.208424f);
          _1420 = min(0.0f, (-0.0f - ((_1375 * exp2(_1361 * _1360)) + (_1410 * exp2(_1397 * _1361)))));
          _1421 = min(0.0f, (-0.0f - ((_1375 * exp2(_1362 * _1360)) + (_1410 * exp2(_1397 * _1362)))));
          _1422 = min(0.0f, (-0.0f - ((_1375 * exp2(_1363 * _1360)) + (_1410 * exp2(_1397 * _1363)))));
          _1431 = saturate(abs(dot(float3(_1250, _1251, _1252), float3(_1201, _1202, _1203))));  // [sem: expr_sat]
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1440 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1361 * 1.5f)))), 0.0f);
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1443 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1446 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1363 * 1.5f)))), 0.0f);
          _1453 = min(0.99f, _1440.x);
          _1454 = min(0.99f, _1443.x);
          _1455 = min(0.99f, _1446.x);
          _1456 = min(0.99f, _1440.y);
          _1457 = min(0.99f, _1443.y);
          _1458 = min(0.99f, _1446.y);
          _1459 = _1453 * _1453;
          _1460 = _1454 * _1454;
          _1461 = _1455 * _1455;
          _1462 = _1456 * _1456;
          _1463 = _1457 * _1457;
          _1464 = _1458 * _1458;
          _1465 = _1462 * _1456;
          _1466 = _1463 * _1457;
          _1467 = _1464 * _1458;
          _1468 = 1.0f - _1459;
          _1469 = 1.0f - _1460;
          _1470 = 1.0f - _1461;
          _1480 = _1468 * _1468;
          _1481 = _1469 * _1469;
          _1482 = _1470 * _1470;
          _1483 = _1480 * _1468;
          _1484 = _1481 * _1469;
          _1485 = _1482 * _1470;
          _1493 = min(max(_1265, 0.18f), 0.6f);
          _1494 = _1493 * _1493;
          _1495 = _1494 * 0.25f;
          _1496 = _1494 * 4.0f;
          _1498 = (_1454 + _1453) + _1455;
          _1499 = _1453 / _1498;
          _1500 = _1454 / _1498;
          _1501 = _1455 / _1498;
          _1502 = dot(float3(_1494, _1495, _1496), float3(_1499, _1500, _1501));
          _1503 = _1502 * _1502;
          _1506 = asin(min(max(_1289, -1.0f), 1.0f)) + asin(min(max(_1285, -1.0f), 1.0f));
          _1507 = _1506 * 0.5f;
          _1508 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1499, _1500, _1501));
          _1518 = _1508 * _1508;
          _1541 = (_1457 + _1456) + _1458;
          _1545 = dot(float3(_1494, _1495, _1496), float3((_1456 / _1541), (_1457 / _1541), (_1458 / _1541)));
          _1549 = sqrt((_1545 * _1545) + (_1503 * 2.0f));
          _1567 = (_1545 * 3.0f) + (_1502 * 2.0f);
          _1574 = (((_1465 + _1456) * ((_1459 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1465) + _1456);
          _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1466) + _1457);
          _1576 = (((_1467 + _1458) * ((_1461 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1467) + _1458);
          _1585 = _1507 - (((_1518 * (((_1459 * 4.0f) * _1462) + (_1480 * 2.0f))) * (1.0f - ((_1462 * 2.0f) / _1480))) / _1483);
          _1592 = _1507 - (((_1518 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
          _1599 = _1507 - (((_1518 * (((_1461 * 4.0f) * _1464) + (_1482 * 2.0f))) * (1.0f - ((_1464 * 2.0f) / _1482))) / _1485);
          _1627 = exp2((((_1506 * -0.25f) * _1507) / _1503) * 1.442695f) * 1.4f;
          _1628 = ((((((_1465 * _1459) / _1483) + ((_1456 * _1459) / _1468)) * 4.3982296f) * exp2((((_1585 * _1585) * -0.5f) / ((_1574 * _1574) + _1503)) * 1.442695f)) + ((((_1440.x + _1420) * 0.25f) - _1420) * 6.2831855f)) * _1627;
          _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1592 * _1592) * -0.5f) / ((_1575 * _1575) + _1503)) * 1.442695f)) + ((((_1443.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1627;
          _1630 = ((((((_1467 * _1461) / _1485) + ((_1458 * _1461) / _1470)) * 4.3982296f) * exp2((((_1599 * _1599) * -0.5f) / ((_1576 * _1576) + _1503)) * 1.442695f)) + ((((_1446.x + _1422) * 0.25f) - _1422) * 6.2831855f)) * _1627;
          _1631 = max(0.125f, _1199);
          _1641 = max(0.01f, ((_1631 * (_1282 - _1628)) + _1628));
          _1642 = max(0.01f, (lerp(_1629, _1283, _1631)));
          _1643 = max(0.01f, (lerp(_1630, _1284, _1631)));
          _1645 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
          _1652 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
          _1662 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
          _1672 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
          _1697 = _1199;
          _1698 = _1200;
          _1699 = _1201;
          _1700 = _1202;
          _1701 = _1203;
          _1702 = _1118;
          _1703 = (min(30000.0f, (_exposure4.x * (((((_1652.x * _906) + (_1645.x * _905)) + (_1662.x * _907)) + (_1672.x * _908)) / _1641))) + _958);
          _1704 = (min(30000.0f, (_exposure4.x * (((((_1652.y * _906) + (_1645.y * _905)) + (_1662.y * _907)) + (_1672.y * _908)) / _1642))) + _959);
          _1705 = (min(30000.0f, (_exposure4.x * (((((_1652.z * _906) + (_1645.z * _905)) + (_1662.z * _907)) + (_1672.z * _908)) / _1643))) + _960);
          _1706 = _1641;
          _1707 = _1642;
          _1708 = _1643;
        } else {
          _1189 = _1152;
          _1190 = _1153;
          _1191 = _714;
          _1192 = _715;
          _1193 = _716;
          if ((_1118 == 53) || ((_1118 & 126) == 66)) {
            _1199 = _1189;
            _1200 = _1190;
            _1201 = _1191;
            _1202 = _1192;
            _1203 = _1193;
            _1205 = __3__36__0__0__g_bentCone.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1212 = __3__36__0__0__g_bentCone.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1222 = __3__36__0__0__g_bentCone.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1232 = __3__36__0__0__g_bentCone.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1245 = (((((_1212.x * _906) + (_1205.x * _905)) + (_1222.x * _907)) + (_1232.x * _908)) * 2.0f) + -1.0f;
            _1246 = (((((_1212.y * _906) + (_1205.y * _905)) + (_1222.y * _907)) + (_1232.y * _908)) * 2.0f) + -1.0f;
            _1247 = (((((_1212.z * _906) + (_1205.z * _905)) + (_1222.z * _907)) + (_1232.z * _908)) * 2.0f) + -1.0f;
            _1249 = rsqrt(dot(float3(_1245, _1246, _1247), float3(_1245, _1246, _1247)));  // [sem: invLength]
            _1250 = _1245 * _1249;
            _1251 = _1246 * _1249;
            _1252 = _1247 * _1249;
            if (!(_renderParams.z > 0.0f)) {
              if (!(_renderParams2.y > 0.0f)) {
                _1264 = (half)(saturate((half)(_279 + 0.15002441h)));
              } else {
                _1264 = _279;
              }
            } else {
              _1264 = _279;
            }
            _1265 = float(_1264);
            if (_1118 == 53) {
              _1281 = (((asfloat(_globalLightParams.z) * _1265) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
            } else {
              _1281 = _bevelParams.y;
            }
            _1282 = float(_309);
            _1283 = float(_310);
            _1284 = float(_311);
            _1285 = dot(float3(_1201, _1202, _1203), float3(_1250, _1251, _1252));
            _1286 = -0.0f - _1052;
            _1287 = -0.0f - _1053;
            _1288 = -0.0f - _1054;
            _1289 = dot(float3(_1201, _1202, _1203), float3(_1286, _1287, _1288));
            _1295 = cos(abs(asin(_1289) - asin(_1285)) * 0.5f);
            _1299 = _1250 - (_1285 * _1201);
            _1300 = _1251 - (_1285 * _1202);
            _1301 = _1252 - (_1285 * _1203);
            _1305 = _1286 - (_1289 * _1201);
            _1306 = _1287 - (_1289 * _1202);
            _1307 = _1288 - (_1289 * _1203);
            // [sem: invLength]
            _1314 = rsqrt((dot(float3(_1305, _1306, _1307), float3(_1305, _1306, _1307)) * dot(float3(_1299, _1300, _1301), float3(_1299, _1300, _1301))) + 0.0001f) * dot(float3(_1299, _1300, _1301), float3(_1305, _1306, _1307));
            _1324 = min(max(_1265, 0.09803922f), 1.0f);
            _1325 = _1324 * _1324;
            _1326 = _1325 * 0.5f;
            _1327 = _1325 * 2.0f;
            _1328 = _1289 + _1285;
            _1329 = _1328 - _1281;
            _1338 = 1.0f / ((1.19f / _1295) + (_1295 * 0.36f));
            _1343 = ((_1338 * (0.6f - (_1314 * 0.8f))) + 1.0f) * sqrt(saturate((_1314 * 0.5f) + 0.5f));
            _1349 = 1.0f - (sqrt(saturate(1.0f - (_1343 * _1343))) * _1295);
            _1350 = _1349 * _1349;
            _1354 = 0.9534794f - ((_1350 * _1350) * (_1349 * 0.9534794f));
            _1355 = _1338 * _1343;
            _1360 = (sqrt(1.0f - (_1355 * _1355)) * 0.5f) / _1295;
            _1361 = log2(_1282);
            _1362 = log2(_1283);
            _1363 = log2(_1284);
            _1375 = ((_1354 * _1354) * (exp2((((_1329 * _1329) * -0.5f) / (_1326 * _1326)) * 1.442695f) / (_1325 * 1.2533141f))) * exp2(-5.741926f - (_1314 * 5.265837f));
            _1379 = _1328 - (_1281 * 4.0f);
            _1389 = 1.0f - (_1295 * 0.5f);
            _1390 = _1389 * _1389;
            _1394 = (_1390 * _1390) * (0.9534794f - (_1295 * 0.4767397f));
            _1396 = 0.9534794f - _1394;
            _1397 = 0.8f / _1295;
            _1410 = (((_1396 * _1396) * (_1394 + 0.046520565f)) * (exp2((((_1379 * _1379) * -0.5f) / (_1327 * _1327)) * 1.442695f) / (_1325 * 5.0132565f))) * exp2((_1314 * 24.525816f) + -24.208424f);
            _1420 = min(0.0f, (-0.0f - ((_1375 * exp2(_1361 * _1360)) + (_1410 * exp2(_1397 * _1361)))));
            _1421 = min(0.0f, (-0.0f - ((_1375 * exp2(_1362 * _1360)) + (_1410 * exp2(_1397 * _1362)))));
            _1422 = min(0.0f, (-0.0f - ((_1375 * exp2(_1363 * _1360)) + (_1410 * exp2(_1397 * _1363)))));
            _1431 = saturate(abs(dot(float3(_1250, _1251, _1252), float3(_1201, _1202, _1203))));  // [sem: expr_sat]
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _1440 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1361 * 1.5f)))), 0.0f);
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _1443 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _1446 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1363 * 1.5f)))), 0.0f);
            _1453 = min(0.99f, _1440.x);
            _1454 = min(0.99f, _1443.x);
            _1455 = min(0.99f, _1446.x);
            _1456 = min(0.99f, _1440.y);
            _1457 = min(0.99f, _1443.y);
            _1458 = min(0.99f, _1446.y);
            _1459 = _1453 * _1453;
            _1460 = _1454 * _1454;
            _1461 = _1455 * _1455;
            _1462 = _1456 * _1456;
            _1463 = _1457 * _1457;
            _1464 = _1458 * _1458;
            _1465 = _1462 * _1456;
            _1466 = _1463 * _1457;
            _1467 = _1464 * _1458;
            _1468 = 1.0f - _1459;
            _1469 = 1.0f - _1460;
            _1470 = 1.0f - _1461;
            _1480 = _1468 * _1468;
            _1481 = _1469 * _1469;
            _1482 = _1470 * _1470;
            _1483 = _1480 * _1468;
            _1484 = _1481 * _1469;
            _1485 = _1482 * _1470;
            _1493 = min(max(_1265, 0.18f), 0.6f);
            _1494 = _1493 * _1493;
            _1495 = _1494 * 0.25f;
            _1496 = _1494 * 4.0f;
            _1498 = (_1454 + _1453) + _1455;
            _1499 = _1453 / _1498;
            _1500 = _1454 / _1498;
            _1501 = _1455 / _1498;
            _1502 = dot(float3(_1494, _1495, _1496), float3(_1499, _1500, _1501));
            _1503 = _1502 * _1502;
            _1506 = asin(min(max(_1289, -1.0f), 1.0f)) + asin(min(max(_1285, -1.0f), 1.0f));
            _1507 = _1506 * 0.5f;
            _1508 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1499, _1500, _1501));
            _1518 = _1508 * _1508;
            _1541 = (_1457 + _1456) + _1458;
            _1545 = dot(float3(_1494, _1495, _1496), float3((_1456 / _1541), (_1457 / _1541), (_1458 / _1541)));
            _1549 = sqrt((_1545 * _1545) + (_1503 * 2.0f));
            _1567 = (_1545 * 3.0f) + (_1502 * 2.0f);
            _1574 = (((_1465 + _1456) * ((_1459 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1465) + _1456);
            _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1466) + _1457);
            _1576 = (((_1467 + _1458) * ((_1461 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1467) + _1458);
            _1585 = _1507 - (((_1518 * (((_1459 * 4.0f) * _1462) + (_1480 * 2.0f))) * (1.0f - ((_1462 * 2.0f) / _1480))) / _1483);
            _1592 = _1507 - (((_1518 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
            _1599 = _1507 - (((_1518 * (((_1461 * 4.0f) * _1464) + (_1482 * 2.0f))) * (1.0f - ((_1464 * 2.0f) / _1482))) / _1485);
            _1627 = exp2((((_1506 * -0.25f) * _1507) / _1503) * 1.442695f) * 1.4f;
            _1628 = ((((((_1465 * _1459) / _1483) + ((_1456 * _1459) / _1468)) * 4.3982296f) * exp2((((_1585 * _1585) * -0.5f) / ((_1574 * _1574) + _1503)) * 1.442695f)) + ((((_1440.x + _1420) * 0.25f) - _1420) * 6.2831855f)) * _1627;
            _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1592 * _1592) * -0.5f) / ((_1575 * _1575) + _1503)) * 1.442695f)) + ((((_1443.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1627;
            _1630 = ((((((_1467 * _1461) / _1485) + ((_1458 * _1461) / _1470)) * 4.3982296f) * exp2((((_1599 * _1599) * -0.5f) / ((_1576 * _1576) + _1503)) * 1.442695f)) + ((((_1446.x + _1422) * 0.25f) - _1422) * 6.2831855f)) * _1627;
            _1631 = max(0.125f, _1199);
            _1641 = max(0.01f, ((_1631 * (_1282 - _1628)) + _1628));
            _1642 = max(0.01f, (lerp(_1629, _1283, _1631)));
            _1643 = max(0.01f, (lerp(_1630, _1284, _1631)));
            _1645 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
            _1652 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
            _1662 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
            _1672 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
            _1697 = _1199;
            _1698 = _1200;
            _1699 = _1201;
            _1700 = _1202;
            _1701 = _1203;
            _1702 = _1118;
            _1703 = (min(30000.0f, (_exposure4.x * (((((_1652.x * _906) + (_1645.x * _905)) + (_1662.x * _907)) + (_1672.x * _908)) / _1641))) + _958);
            _1704 = (min(30000.0f, (_exposure4.x * (((((_1652.y * _906) + (_1645.y * _905)) + (_1662.y * _907)) + (_1672.y * _908)) / _1642))) + _959);
            _1705 = (min(30000.0f, (_exposure4.x * (((((_1652.z * _906) + (_1645.z * _905)) + (_1662.z * _907)) + (_1672.z * _908)) / _1643))) + _960);
            _1706 = _1641;
            _1707 = _1642;
            _1708 = _1643;
          } else {
            _1697 = _1189;
            _1698 = _1190;
            _1699 = _1191;
            _1700 = _1192;
            _1701 = _1193;
            _1702 = _1118;
            _1703 = _958;
            _1704 = _959;
            _1705 = _960;
            _1706 = 0.0f;
            _1707 = 0.0f;
            _1708 = 0.0f;
          }
        }
      }
    }
    _1715 = -0.0f - min(0.0f, (-0.0f - _1703));
    _1716 = -0.0f - min(0.0f, (-0.0f - _1704));
    _1717 = -0.0f - min(0.0f, (-0.0f - _1705));
    half2 _1719 = __3__36__0__0__g_sceneAO.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _1726 = __3__36__0__0__g_sceneAO.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _1735 = __3__36__0__0__g_sceneAO.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _1744 = __3__36__0__0__g_sceneAO.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    _1751 = (((float(_1726.x) * _906) + (float(_1719.x) * _905)) + (float(_1735.x) * _907)) + (float(_1744.x) * _908);
    if ((uint)_1702 > (uint)11) {
      _1758 = ((uint)_1702 < (uint)19);
      if (!((uint)_1702 < (uint)20)) {
        _1761 = _1758;
        _1764 = _1761;
        _1765 = (_1702 == 107);
      } else {
        _1764 = _1758;
        _1765 = true;
      }
    } else {
      if (!((uint)_1702 > (uint)10)) {
        _1761 = false;
        _1764 = _1761;
        _1765 = (_1702 == 107);
      } else {
        _1764 = false;
        _1765 = true;
      }
    }
    _1770 = (_1702 == 65);
    _1771 = _1770 || (_1764 || ((_1702 == 96) || _1765));
    _1774 = select(_1771, float(_1698), 0.0f);
    _1776 = ((uint)(_1702 & 24) > (uint)23);
    if (_1776) {
      _1778 = (_1702 == 29);
      if (_1778) {
        _1783 = float(saturate(_279));
      } else {
        _1783 = 0.0f;
      }
      _1785 = (uint)((half)(_278 * 255.0h));
      if (_187) {
        _1794 = select(((_1785 & 128) != 0), 1.0f, 0.0f);
        _1795 = (((float)((uint)((uint)(_1785 & 127)))) * 0.007874016f);
      } else {
        _1794 = 0.0f;
        _1795 = 0.0f;
      }
      _1796 = half(_1795);
      _1800 = (_1796 > 0.99902344h);
      _1805 = _1796;
      _1806 = (half)(select(((_1702 == 24) || _1778), 0.010002136f, _279));
      _1807 = (half)(select(_1800, 1.0f, _309));
      _1808 = (half)(select(_1800, 1.0f, _310));
      _1809 = (half)(select(_1800, 1.0f, _311));
      _1810 = _1794;
      _1811 = _1783;
    } else {
      _1805 = (half)(select(_1771, 0.0f, _1698));
      _1806 = _279;
      _1807 = _309;
      _1808 = _310;
      _1809 = _311;
      _1810 = 0.0f;
      _1811 = 0.0f;
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
      float3 _rndx_fcBaseColor = float3(float(_1807), float(_1808), float(_1809));
      half4 _rndx_fcShadow = __3__36__0__0__g_sceneShadowColor.Load(int3(_101, _103, 0));
      float _rndx_fcShadowVis = saturate(dot(float3(_rndx_fcShadow.xyz), float3(0.2126f, 0.7152f, 0.0722f)));
      float3 _rndx_fcCorrected = FoliageColorCorrect(_rndx_fcBaseColor, _sunDirection.xyz, _rndx_fcShadowVis, float3(1.0f, 1.0f, 1.0f));
      float3 _rndx_fscColor = FoliageSelectiveColor(_rndx_fcCorrected);
      _1807 = half(_rndx_fscColor.x);
      _1808 = half(_rndx_fscColor.y);
      _1809 = half(_rndx_fscColor.z);
    }
    // RenoDX: <<< [Patch: FoliageColorCorrect]
    _1812 = _1702 & -2;
    _1813 = (_1812 == 66);
    _1814 = (_1702 == 53);
    _1815 = _1814 || _1813;
    _1816 = -0.0f - _1052;
    _1817 = -0.0f - _1053;
    _1818 = -0.0f - _1054;
    _1819 = dot(float3(_1816, _1817, _1818), float3(_714, _715, _716));
    if (_1815) {
      _1823 = abs(_1819);
    } else {
      _1823 = _1819;
    }
    _1824 = saturate(_1823);  // [sem: _1823_sat]
    _1825 = _117.x & 128;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _1826 = (_1825 == 0);
    if (_1826) {
      if ((uint)_119 > (uint)51) {
        if (!(((_117.x & 125) == 105) || ((uint)_119 < (uint)68))) {
          _1846 = (_119 == 98);
        } else {
          _1846 = true;
        }
      } else {
        if ((uint)_119 > (uint)10) {
          if ((uint)_119 < (uint)20) {
            if (_209 == 14) {
              _1846 = (_119 == 98);
            } else {
              _1846 = true;
            }
          } else {
            if (!((_117.x & 125) == 105)) {
              _1846 = (_119 == 98);
            } else {
              _1846 = true;
            }
          }
        } else {
          _1846 = (_119 == 98);
        }
      }
    } else {
      _1846 = true;
    }
    [branch]
    if (_1776) {
      _1855 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_101, _103, 0)))).x) & 16777215)))) * 5.960465e-08f);
    } else {
      _1855 = _114.x;
    }
    _1883 = mad((_projToPrevProj[3].z), _1855, mad((_projToPrevProj[3].y), _1010, ((_projToPrevProj[3].x) * _1008))) + (_projToPrevProj[3].w);
    if (_1846) {
      _1890 = __3__36__0__0__g_velocity.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1896 = (_1890.x * 2.0f);
      _1897 = (_1890.y * 2.0f);
    } else {
      _1896 = (((mad((_projToPrevProj[0].z), _1855, mad((_projToPrevProj[0].y), _1010, ((_projToPrevProj[0].x) * _1008))) + (_projToPrevProj[0].w)) / _1883) - _1008);
      _1897 = (((mad((_projToPrevProj[1].z), _1855, mad((_projToPrevProj[1].y), _1010, ((_projToPrevProj[1].x) * _1008))) + (_projToPrevProj[1].w)) / _1883) - _1010);
    }
    _1899 = _nearFarProj.x / max(1e-07f, _1855);
    _1902 = (_1896 * 0.5f) + _111;
    _1903 = _112 - (_1897 * 0.5f);
    _1911 = select((((_1902 < 0.0f) || (_1902 > 1.0f)) || ((_1903 < 0.0f) || (_1903 > 1.0f))), 1.0f, 0.0f);
    _1917 = (_bufferSizeAndInvSize.x * _1902) + -0.5f;
    _1918 = (_bufferSizeAndInvSize.y * _1903) + -0.5f;
    _1921 = (int)(floor(_1917));
    _1922 = (int)(floor(_1918));
    _1923 = (float)((int)(_1921));
    _1924 = (float)((int)(_1922));
    _1929 = (_1923 + 0.5f) * _bufferSizeAndInvSize.z;
    _1930 = (_1924 + 0.5f) * _bufferSizeAndInvSize.w;
    _1932 = __3__36__0__0__g_depthOpaquePrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1929, _1930));  // [sem: _3__36__0__0__g_depthOpaquePrev_gather]
    _1955 = mad(((uint)((uint)(_1932.w)) >> 24), 16777216, mad(((uint)((uint)(_1932.z)) >> 24), 65536, mad(((uint)((uint)(_1932.y)) >> 24), 256, ((uint)((uint)(_1932.x)) >> 24))));
    if (_1826) {
      if ((uint)_119 > (uint)51) {
        if (!((_119 == 98) || (((_117.x & 125) == 105) || ((uint)_119 < (uint)68)))) {
          _1985 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        } else {
          _1985 = 0.0f;
        }
      } else {
        if ((uint)_119 > (uint)10) {
          if ((uint)_119 < (uint)20) {
            if (_209 == 14) {
              _1985 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1985 = 0.0f;
            }
          } else {
            if (!((_117.x & 125) == 105)) {
              _1985 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1985 = 0.0f;
            }
          }
        } else {
          _1985 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        }
      }
    } else {
      _1985 = 0.0f;
    }
    _1993 = _screenPercentage.x * 2.0f;
    _1994 = _1993 * abs(_111 + -0.5f);
    _1995 = _screenPercentage.y * 2.0f;
    _1996 = _1995 * abs(_112 + -0.5f);
    _2000 = sqrt(dot(float2(_1994, _1996), float2(_1994, _1996)) + 1.0f) * _1899;
    _2017 = _1993 * abs(_1902 + -0.5f);
    _2018 = _1995 * abs(_1903 + -0.5f);
    _2021 = sqrt(dot(float2(_2017, _2018), float2(_2017, _2018)) + 1.0f);
    _2036 = _630 || ((uint)((int)(_1702) + (int)(-97)) < (uint)2);
    _2038 = _1899 * _1899;
    _2040 = (_2038 * select(_2036, 0.5f, 0.2f)) + 1.0f;
    _2044 = ((uint)((int)(_1702) + (int)(-52)) < (uint)16);
    if (_2044) {
      _2063 = (1000.0f - (saturate((float)((bool)((sqrt(((_diffViewPosAccurate.x * _diffViewPosAccurate.x) + (_diffViewPosAccurate.y * _diffViewPosAccurate.y)) + (_diffViewPosAccurate.z * _diffViewPosAccurate.z)) * 50.0f) > 1.0f))) * 875.0f));
    } else {
      _2063 = 50.0f;
    }
    _2069 = select(_2044, 0.0f, ((_temporalReprojectionParams.y * 0.1f) * max(0.0f, (_1899 + -1.0f))));
    _2074 = max(0.0f, (abs(_2000 - (_2021 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1932.x & 16777215)))) * 5.960465e-08f))) - _1985))) - _2069));
    _2075 = max(0.0f, (abs(_2000 - (_2021 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1932.y & 16777215)))) * 5.960465e-08f))) - _1985))) - _2069));
    _2076 = max(0.0f, (abs(_2000 - (_2021 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1932.z & 16777215)))) * 5.960465e-08f))) - _1985))) - _2069));
    _2077 = max(0.0f, (abs(_2000 - (_2021 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1932.w & 16777215)))) * 5.960465e-08f))) - _1985))) - _2069));
    _2078 = _2074 * _2074;
    _2079 = _2075 * _2075;
    _2080 = _2076 * _2076;
    _2081 = _2077 * _2077;
    _2083 = (-1.442695f / ((_2038 * 0.1f) + 1.0f)) * select(_2036, 0.2f, _2063);
    _2096 = select((_2078 > _2040), 0.0f, exp2(_2083 * _2078));
    _2097 = select((_2079 > _2040), 0.0f, exp2(_2079 * _2083));
    _2098 = select((_2080 > _2040), 0.0f, exp2(_2080 * _2083));
    _2099 = select((_2081 > _2040), 0.0f, exp2(_2081 * _2083));
    if (!_1776) {
      _2101 = _1955 & 127;
      _2102 = _1955 & 32512;
      _2103 = _1955 & 8323072;
      _2104 = _1955 & 2130706432;
      _2126 = ((uint)((int)(_2101) + (int)(-52)) < (uint)16);
      _2130 = ((uint)((int)(((uint)((uint)(_1955)) >> 8) & 127) + (int)(-52)) < (uint)16);
      _2134 = ((uint)((int)(((uint)((uint)(_1955)) >> 16) & 127) + (int)(-52)) < (uint)16);
      _2138 = ((uint)((int)(((uint)((uint)(_1955)) >> 24) & 127) + (int)(-52)) < (uint)16);
      _2151 = ((uint)((int)(_119) + (int)(-52)) < (uint)16);
      _2153 = (_1825 != 0) || _2151;
      _2162 = (_1702 == 6);
      _2184 = ((uint)((int)(_1702) + (int)(-105)) < (uint)3);
      _2222 = (_2096 * ((float)((bool)((_658 || ((_2101 != 53) && ((_1955 & 126) != 66))) && (!((_2153 ^ (((_1955 & 128) != 0) || _2126)) || ((_2162 ^ (_2101 == 6)) || ((_2151 ^ _2126) || (_2184 ^ ((_2101 == 107) || ((uint)((int)(_2101) + (int)(-105)) < (uint)2)))))))))));
      _2223 = (_2097 * ((float)((bool)((_658 || ((_2102 != 13568) && ((_1955 & 32256) != 16896))) && (!((_2153 ^ (((_1955 & 32768) != 0) || _2130)) || ((_2162 ^ (_2102 == 1536)) || ((_2151 ^ _2130) || (_2184 ^ (((_1955 & 32000) == 26880) || (_2102 == 27136)))))))))));
      _2224 = (_2098 * ((float)((bool)((_658 || ((_2103 != 3473408) && ((_1955 & 8257536) != 4325376))) && (!((_2153 ^ (((_1955 & 8388608) != 0) || _2134)) || ((_2162 ^ (_2103 == 393216)) || ((_2151 ^ _2134) || (_2184 ^ (((_1955 & 8192000) == 6881280) || (_2103 == 6946816)))))))))));
      _2225 = (_2099 * ((float)((bool)((_658 || ((_2104 != 889192448) && ((_1955 & 2113929216) != 1107296256))) && (!((_2153 ^ (((int)_1955 < (int)0) || _2138)) || ((_2162 ^ (_2104 == 100663296)) || ((_2151 ^ _2138) || (_2184 ^ (((_1955 & 2097152000) == 1761607680) || (_2104 == 1778384896)))))))))));
    } else {
      _2222 = _2096;
      _2223 = _2097;
      _2224 = _2098;
      _2225 = _2099;
    }
    _2227 = __3__36__0__0__g_sceneNormalPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1929, _1930));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather]
    _2246 = min(1.0f, ((((float)((uint)((uint)(_2227.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2247 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2227.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2248 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2227.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2250 = rsqrt(dot(float3(_2246, _2247, _2248), float3(_2246, _2247, _2248)));  // [sem: invLength]
    _2255 = saturate(dot(float3(_714, _715, _716), float3((_2250 * _2246), (_2250 * _2247), (_2250 * _2248))));  // [sem: expr_sat]
    _2270 = min(1.0f, ((((float)((uint)((uint)(_2227.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2271 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2227.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2272 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2227.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2274 = rsqrt(dot(float3(_2270, _2271, _2272), float3(_2270, _2271, _2272)));  // [sem: invLength]
    _2279 = saturate(dot(float3(_714, _715, _716), float3((_2274 * _2270), (_2274 * _2271), (_2274 * _2272))));  // [sem: expr_sat]
    _2294 = min(1.0f, ((((float)((uint)((uint)(_2227.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2295 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2227.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2296 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2227.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2298 = rsqrt(dot(float3(_2294, _2295, _2296), float3(_2294, _2295, _2296)));  // [sem: invLength]
    _2303 = saturate(dot(float3(_714, _715, _716), float3((_2298 * _2294), (_2298 * _2295), (_2298 * _2296))));  // [sem: expr_sat]
    _2318 = min(1.0f, ((((float)((uint)((uint)(_2227.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2319 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2227.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2320 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2227.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2322 = rsqrt(dot(float3(_2318, _2319, _2320), float3(_2318, _2319, _2320)));  // [sem: invLength]
    _2327 = saturate(dot(float3(_714, _715, _716), float3((_2322 * _2318), (_2322 * _2319), (_2322 * _2320))));  // [sem: expr_sat]
    _2330 = select((_1814 || (_1813 || _2036)), 0.01f, 1.0f);
    _2347 = _1917 - _1923;
    _2348 = _1918 - _1924;
    _2349 = 1.0f - _2347;
    _2350 = 1.0f - _2348;
    _2355 = (_2349 * _2348) * _2222;
    _2357 = (_2348 * _2347) * _2223;
    _2359 = (_2350 * _2347) * _2224;
    _2361 = (_2350 * _2349) * _2225;
    _2363 = saturate(select(_1776, 1.0f, (pow(_2303, _2330))) * _2355);  // [sem: expr_sat]
    _2364 = saturate(select(_1776, 1.0f, (pow(_2327, _2330))) * _2357);  // [sem: expr_sat]
    _2365 = saturate(select(_1776, 1.0f, (pow(_2279, _2330))) * _2359);  // [sem: expr_sat]
    _2366 = saturate(select(_1776, 1.0f, (pow(_2255, _2330))) * _2361);  // [sem: expr_sat]
    _2369 = asint(__3__37__0__0__g_structureCounterBuffer.Load(8));
    _2370 = WaveReadLaneFirst(_2369);
    [branch]
    if (!(_2370 == 0)) {
      _2378 = (((uint)(__3__36__0__0__g_tiledManyLightsMasks.Load(int3(((int)(_101) >> 5), ((int)(_103) >> 5), 0)))).x) & 4;
      _2380 = (uint)((uint)(_2378)) >> 2;
      if (!(_2378 == 0)) {
        _2388 = max((saturate(dot(float3(_1715, _1716, _1717), float3(0.212671f, 0.71516f, 0.072169f)) * 0.01f) * 0.875f), _1911);
        _2389 = _2380;
      } else {
        _2388 = _1911;
        _2389 = _2380;
      }
    } else {
      _2388 = _1911;
      _2389 = 0;
    }
    // [sem: expr_sat]
    _2399 = saturate(max(_2388, (((_environmentLightingHistory[1].w) + _temporalReprojectionParams.w) + _renderParams.y)));
    _2400 = (uint)((uint)(_1922)) + (uint)(1);
    half4 _2402 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1921, _2400, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _2407 = (uint)((uint)(_1921)) + (uint)(1);
    half4 _2408 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_2407, _2400, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _2413 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_2407, _1922, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _2418 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1921, _1922, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _2423 = dot(float4(_2363, _2364, _2365, _2366), float4(1.0f, 1.0f, 1.0f, 1.0f));
    // [sem: expr_sat]
    _2432 = saturate(dot(float4(_2363, _2364, _2365, _2366), float4(float(_2402.w), float(_2408.w), float(_2413.w), float(_2418.w))) * (1.0f / max(1.0f, _2423)));
    _2437 = sqrt((_1897 * _1897) + (_1896 * _1896)) * 50.0f;
    if (_2044) {
      _2446 = saturate(1.0f - _2437);  // [sem: expr_sat]
    } else {
      _2446 = (1.0f - (saturate(_2437) * 0.5f));  // [sem: expr_sat]
    }
    _2450 = max(1.0f, (_bufferSizeAndInvSize.w * 2160.0f));
    _2453 = min(31.0f, ((_2446 * 15.0f) * _2450));
    _2454 = (_1702 == 29);
    if (_2454) {
      _2458 = min(2.0f, _2453);
    } else {
      _2458 = _2453;
    }
    _2459 = (_1702 == 24);
    _2460 = select(_2459, 1.0f, _2432);
    _2462 = (_2460 * _2460) * 4.0f;
    _2465 = __3__36__0__0__g_manyLightsMoments.SampleLevel(__3__40__0__0__g_sampler, float2(_111, _112), 0.0f);  // [sem: _3__36__0__0__g_manyLightsMoments_sampleLod]
    _2470 = saturate(_2465.w);  // [sem: expr_sat]
    _2472 = 1.0f / max(1e-06f, _2423);
    _2474 = _2472 * _2363;
    _2475 = _2472 * _2364;
    _2476 = _2472 * _2365;
    _2477 = _2472 * _2366;
    if (!((_2472 * _2423) == 0.0f)) {
      _2490 = saturate(saturate(max(_2399, (1.0f / ((saturate(_2462) * _2458) + 1.0f))) + _renderParams.z));  // [sem: expr_sat]
    } else {
      _2490 = 1.0f;  // [sem: expr_sat]
    }
    _2532 = 1.0f / _exposure4.x;
    _2549 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_2477 * float(_2418.x)) + ((_2476 * float(_2413.x)) + ((_2474 * float(_2402.x)) + (_2475 * float(_2408.x))))))) * _exposure4.y)))));
    _2550 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_2477 * float(_2418.y)) + ((_2476 * float(_2413.y)) + ((_2474 * float(_2402.y)) + (_2475 * float(_2408.y))))))) * _exposure4.y)))));
    _2551 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_2477 * float(_2418.z)) + ((_2476 * float(_2413.z)) + ((_2474 * float(_2402.z)) + (_2475 * float(_2408.z))))))) * _exposure4.y)))));
    if (_renderParams.y == 0.0f) {
      if (_1813) {
        _2582 = _2549;
        _2583 = _2550;
        _2584 = _2551;
        _2585 = _2490;
        _2589 = _2582;
        _2590 = _2583;
        _2591 = _2584;
        _2592 = _2585;
        _2593 = saturate(_2432 + 0.0625f);  // [sem: expr_sat]
      } else {
        if (!_1814) {
          _2556 = dot(float3(_2549, _2550, _2551), float3(0.212671f, 0.71516f, 0.072169f));
          _2572 = ((min(_2556, _2465.y) / max(1e-06f, _2556)) * _2470) + saturate(1.0f - _2470);
          _2577 = saturate(((_2470 * 0.5f) * saturate(((_2465.x - _2556) * 2.0f) / max(1e-06f, _2465.x))) + _2490);  // [sem: expr_sat]
          _2578 = (_2572 * _2549);
          _2579 = (_2572 * _2550);
          _2580 = (_2572 * _2551);
        } else {
          _2577 = _2490;  // [sem: expr_sat]
          _2578 = _2549;
          _2579 = _2550;
          _2580 = _2551;
        }
        if (!_2459) {
          _2582 = _2578;
          _2583 = _2579;
          _2584 = _2580;
          _2585 = _2577;
          _2589 = _2582;
          _2590 = _2583;
          _2591 = _2584;
          _2592 = _2585;
          _2593 = saturate(_2432 + 0.0625f);  // [sem: expr_sat]
        } else {
          _2589 = _2578;
          _2590 = _2579;
          _2591 = _2580;
          _2592 = _2577;
          _2593 = 0.0f;  // [sem: expr_sat]
        }
      }
    } else {
      _2577 = _2490;  // [sem: expr_sat]
      _2578 = _2549;
      _2579 = _2550;
      _2580 = _2551;
      if (!_2459) {
        _2582 = _2578;
        _2583 = _2579;
        _2584 = _2580;
        _2585 = _2577;
        _2589 = _2582;
        _2590 = _2583;
        _2591 = _2584;
        _2592 = _2585;
        _2593 = saturate(_2432 + 0.0625f);  // [sem: expr_sat]
      } else {
        _2589 = _2578;
        _2590 = _2579;
        _2591 = _2580;
        _2592 = _2577;
        _2593 = 0.0f;  // [sem: expr_sat]
      }
    }
    _2600 = (_2592 * (_1715 - _2589)) + _2589;
    _2601 = (_2592 * (_1716 - _2590)) + _2590;
    _2602 = (_2592 * (_1717 - _2591)) + _2591;
    __3__38__0__1__g_diffuseResultUAV[int2(_101, _103)] = float4((half)(half(_2600)), (half)(half(_2601)), (half)(half(_2602)), (half)(half(_2593)));
    _2609 = float(_1807);
    _2610 = float(_1808);
    _2611 = float(_1809);
    if (_1702 == 52) {
      _2618 = saturate(((_2610 + _2609) + _2611) * 1.2f);  // [sem: expr_sat]
    } else {
      _2618 = 1.0f;  // [sem: expr_sat]
    }
    _2619 = float(_1805);
    _2625 = (0.7f / min(max(max(max(_2609, _2610), _2611), 0.01f), 0.7f)) * _2618;
    _2635 = (((_2625 * _2609) + -0.04f) * _2619) + 0.04f;
    _2636 = (((_2625 * _2610) + -0.04f) * _2619) + 0.04f;
    _2637 = (((_2625 * _2611) + -0.04f) * _2619) + 0.04f;
    _2638 = select(_1776, 1.0f, ((((float(_1726.y) * _906) + (float(_1719.y) * _905)) + (float(_1735.y) * _907)) + (float(_1744.y) * _908)));
    if (!_1776) {
      _2643 = saturate(1.0f - _1751);  // [sem: expr_sat]
    } else {
      _2643 = 1.0f;  // [sem: expr_sat]
    }
    _2646 = (_1702 == 98) || (_1812 == 96);
    if (!_2646) {
      bool __branch_chain_2647;
      if ((uint)((int)(_1702) + (int)(-105)) < (uint)2) {
        _2654 = _187;
        __branch_chain_2647 = true;
      } else {
        if (!((uint)((int)(_1702) + (int)(-11)) < (uint)9)) {
          _2654 = false;
          __branch_chain_2647 = true;
        } else {
          _2697 = 0.0h;
          _2698 = _1702;
          _2699 = 0.0f;
          _2700 = 0.0f;
          _2701 = 0.0f;
          __branch_chain_2647 = false;
        }
      }
      if (__branch_chain_2647) {
        _2656 = (_1702 == 107) || _2654;
        _2659 = select(_2656, 0.0f, _1805);
        if (_2656 || (!_1770)) {
          if (!(_1702 == 33)) {
            if (_1702 == 54) {
              if (!((((int)((uint)((_1074 * 255.0f) + 0.5f))) & 112) == 0)) {
                _2682 = (uint)((_1074 * 255.0f) + 0.5f);
                _2684 = ((uint)((uint)(_2682)) >> 4) & 7;
                if (!(_2684 == 0)) {
                  _2691 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_2684) + (int)(1)))];
                  _2697 = _2659;
                  _2698 = _1702;
                  _2699 = min((1.0f - _2691.y), _2691.x);
                  _2700 = (((float)((uint)((uint)(_2682 & 15)))) * 0.06666667f);
                  _2701 = _2691.x;
                } else {
                  _2697 = _2659;
                  _2698 = _1702;
                  _2699 = 0.0f;
                  _2700 = 0.0f;
                  _2701 = 0.0f;
                }
              } else {
                _2697 = _2659;
                _2698 = 52;
                _2699 = 0.0f;
                _2700 = 0.0f;
                _2701 = 0.0f;
              }
            } else {
              if (_1702 == 55) {
                _2697 = _2659;
                _2698 = select(((((int)((uint)((_1074 * 255.0f) + 0.5f))) & 127) == 0), 52, 55);
                _2699 = 0.0f;
                _2700 = 0.0f;
                _2701 = 0.0f;
              } else {
                _2697 = _2659;
                _2698 = _1702;
                _2699 = 0.0f;
                _2700 = 0.0f;
                _2701 = 0.0f;
              }
            }
          } else {
            _2682 = (uint)((_1074 * 255.0f) + 0.5f);
            _2684 = ((uint)((uint)(_2682)) >> 4) & 7;
            if (!(_2684 == 0)) {
              _2691 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_2684) + (int)(1)))];
              _2697 = _2659;
              _2698 = _1702;
              _2699 = min((1.0f - _2691.y), _2691.x);
              _2700 = (((float)((uint)((uint)(_2682 & 15)))) * 0.06666667f);
              _2701 = _2691.x;
            } else {
              _2697 = _2659;
              _2698 = _1702;
              _2699 = 0.0f;
              _2700 = 0.0f;
              _2701 = 0.0f;
            }
          }
        } else {
          _2697 = 0.0h;
          _2698 = 65;
          _2699 = 0.0f;
          _2700 = 0.0f;
          _2701 = 0.0f;
        }
      }
    } else {
      _2697 = 0.0h;
      _2698 = _1702;
      _2699 = 0.0f;
      _2700 = 0.0f;
      _2701 = 0.0f;
    }
    _2703 = dot(float3(_1052, _1053, _1054), float3(_714, _715, _716)) * 2.0f;
    _2707 = _1052 - (_2703 * _714);
    _2708 = _1053 - (_2703 * _715);
    _2709 = _1054 - (_2703 * _716);
    _2715 = dot(float3(_1052, _1053, _1054), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
    _2723 = (_1049 * _1049) + (_1047 * _1047);
    _2725 = sqrt(_2723 + (_1048 * _1048));
    _2727 = sqrt(max(0.0f, (dot(float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z)) - (_2715 * _2715)))) / (_2725 + 5.0f);
    _2731 = float(_1806);
    if ((_1806 < 0.099975586h) && (_2727 < 0.125f)) {
      _2741 = select((_2731 < 0.8f), ((__3__36__0__0__g_specularRayHitDistance.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_111, _112), 0.0f)).x), 0.0f) * rsqrt(dot(float3(_2707, _2708, _2709), float3(_2707, _2708, _2709)));
      _2742 = _2741 * _2707;
      _2743 = _2741 * _2708;
      _2744 = _2741 * _2709;
      _2749 = dot(float3(_2742, _2743, _2744), float3((-0.0f - _714), (-0.0f - _715), (-0.0f - _716))) * 2.0f;
      _2754 = ((_2749 * _714) + _1047) + _2742;
      _2756 = ((_2749 * _715) + _1048) + _2743;
      _2758 = ((_2749 * _716) + _1049) + _2744;
      _2782 = mad((_viewProjRelative[0].z), _2758, mad((_viewProjRelative[0].y), _2756, (_2754 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w);
      _2786 = mad((_viewProjRelative[1].z), _2758, mad((_viewProjRelative[1].y), _2756, (_2754 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w);
      _2790 = mad((_viewProjRelative[2].z), _2758, mad((_viewProjRelative[2].y), _2756, (_2754 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w);
      _2794 = mad((_viewProjRelative[3].z), _2758, mad((_viewProjRelative[3].y), _2756, (_2754 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _2824 = mad((_projToPrevProj[3].w), _2794, mad((_projToPrevProj[3].z), _2790, mad((_projToPrevProj[3].y), _2786, ((_projToPrevProj[3].x) * _2782))));
      _2829 = ((mad((_projToPrevProj[0].w), _2794, mad((_projToPrevProj[0].z), _2790, mad((_projToPrevProj[0].y), _2786, ((_projToPrevProj[0].x) * _2782)))) / _2824) - (_2782 / _2794)) - _1896;
      _2830 = ((mad((_projToPrevProj[1].w), _2794, mad((_projToPrevProj[1].z), _2790, mad((_projToPrevProj[1].y), _2786, ((_projToPrevProj[1].x) * _2782)))) / _2824) - (_2786 / _2794)) - _1897;
      _2838 = max(_2727, saturate(sqrt((_2830 * _2830) + (_2829 * _2829))));
    } else {
      _2838 = _2727;
    }
    _2842 = _2698 & -2;
    _2845 = (_2698 == 29);
    _2847 = select((_2845 || ((_2842 == 24) || (_renderParams.y > 0.0f))), 1.0f, _2638);
    _2851 = float(_2697);
    _2856 = min(max((_cavityParams.y + -1.0f), 0.0f), 2.0f);
    // [sem: expr_sat]
    _2882 = saturate(saturate(1.0f - (((_2851 * _123) / max(0.001f, _1824)) * 0.001f)) * 1.25f) * saturate(((((-0.05f - (_2856 * 0.075f)) + max(0.02f, _2731)) + (saturate(_123 * 0.025f) * 0.1f)) * min(max((_123 + 1.0f), 5.0f), 50.0f)) * (1.0f - (saturate(_2851) * 0.75f)));
    if (_2698 == 64) {
      _2891 = ((saturate(_123 * 0.25f) * (_2882 + -0.39990234f)) + 0.39990234f);
    } else {
      _2891 = _2882;
    }
    _2893 = (_2856 * 16.0f) + 16.0f;
    _2899 = select((_2856 > 1.0f), 0.0f, saturate((1.0f / _2893) * (_123 - _2893)));
    if (_2698 == 105) {
      _2910 = 1.0f;
      _2914 = select((_2698 == 65), 0.0f, _2910);
    } else {
      if (!((uint)(_2698 & 24) > (uint)23)) {
        _2910 = select((_2698 == 107), 1.0f, ((_2899 + _2891) - (_2899 * _2891)));
        _2914 = select((_2698 == 65), 0.0f, _2910);
      } else {
        _2914 = 0.0f;
      }
    }
    _2921 = saturate(select((_lightingParams.y == 0.0f), 1.0f, (1.0f - _2914))) * _2838;
    if ((uint)_2698 > (uint)51) {
      if ((uint)_2698 < (uint)68) {
        if (_2698 == 66) {
          _2938 = (half)(max(0.099975586h, _1806));
          _2941 = _2938;
          _2942 = (half)(max(0.89990234h, _1806));
        } else {
          _2933 = max(0.099975586h, _1806);
          if ((_2698 == 53) || (_2842 == 66)) {
            _2938 = _2933;
            _2941 = _2938;
            _2942 = (half)(max(0.89990234h, _1806));
          } else {
            _2941 = _2933;
            _2942 = _2933;
          }
        }
      } else {
        _2927 = max(0.099975586h, _1806);
        _2941 = _2927;
        _2942 = _2927;
      }
    } else {
      _2933 = max(0.099975586h, _1806);
      if ((_2698 == 53) || (_2842 == 66)) {
        _2938 = _2933;
        _2941 = _2938;
        _2942 = (half)(max(0.89990234h, _1806));
      } else {
        _2941 = _2933;
        _2942 = _2933;
      }
    }
    _2943 = float(_2942);
    _2944 = _2943 * _2943;
    _2945 = _2944 * _2944;
    _2958 = (((_2945 * _2303) - _2303) * _2303) + 1.0f;
    _2959 = (((_2945 * _2327) - _2327) * _2327) + 1.0f;
    _2960 = (((_2945 * _2279) - _2279) * _2279) + 1.0f;
    _2961 = (((_2945 * _2255) - _2255) * _2255) + 1.0f;
    _3001 = (((((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_2407, _2400, 0))).x) * saturate(_2357)) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1921, _2400, 0))).x) * saturate(_2355))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_2407, _1922, 0))).x) * saturate(_2359))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1921, _1922, 0))).x) * saturate(_2361));
    _3006 = saturate(select(_2845, 1.0f, saturate((_2945 / (_2958 * _2958)) * _2303)) * _2355);  // [sem: expr_sat]
    _3007 = saturate(select(_2845, 1.0f, saturate((_2945 / (_2959 * _2959)) * _2327)) * _2357);  // [sem: expr_sat]
    _3008 = saturate(select(_2845, 1.0f, saturate((_2945 / (_2960 * _2960)) * _2279)) * _2359);  // [sem: expr_sat]
    _3009 = saturate(select(_2845, 1.0f, saturate((_2945 / (_2961 * _2961)) * _2255)) * _2361);  // [sem: expr_sat]
    _3019 = exp2(log2(saturate(max(float(((half)(((half)(1.0h - _1806)) * 0.75h)) * _2697), (1.0f - _1824)))) * 0.1f);
    _3022 = float(((half)(_1806 * _1806)) + 1.0009766h);
    _3038 = select(_2845, 1.0f, saturate(((_2450 * _2450) * _2462) * exp2((log2(float(_2941)) * 0.5f) * (((_2921 * 15.0f) * ((_3019 + _3022) / (_3022 - _3019))) + 1.0f))));
    if ((uint)((int)((uint)((uint)(_2698)) + (uint)(-12))) < (uint)9) {
      _3048 = ((saturate(_123 * 0.005f) * (_3038 + -1.0f)) + 1.0f);
    } else {
      _3048 = _3038;
    }
    _3076 = mad((_projToPrevProj[3].z), _114.x, mad((_projToPrevProj[3].y), _1010, ((_projToPrevProj[3].x) * _1008))) + (_projToPrevProj[3].w);
    _3079 = ((mad((_projToPrevProj[0].z), _114.x, mad((_projToPrevProj[0].y), _1010, ((_projToPrevProj[0].x) * _1008))) + (_projToPrevProj[0].w)) / _3076) - _1008;
    _3080 = ((mad((_projToPrevProj[1].z), _114.x, mad((_projToPrevProj[1].y), _1010, ((_projToPrevProj[1].x) * _1008))) + (_projToPrevProj[1].w)) / _3076) - _1010;
    _3081 = _1896 - _3079;
    _3082 = _1897 - _3080;
    if (_1846 || ((uint)((int)((uint)((uint)(_2698)) + (uint)(-52))) < (uint)16)) {
      _3096 = (31.0f - (saturate(sqrt((_3082 * _3082) + (_3081 * _3081)) * 500.0f) * 24.0f));
    } else {
      _3096 = 63.0f;
    }
    if (_renderParams.z > 0.0f) {
      _3111 = saturate((_2921 * 200.0f) + 0.125f);  // [sem: expr_sat]
    } else {
      _3111 = 0.0f;  // [sem: expr_sat]
    }
    _3112 = max(max(saturate(_2399), saturate(max(0.0f, (1.0f / (((_3048 * _3001) * _3096) + 1.0f))))), _3111);
    _3114 = ((uint)(_2698 & 24) > (uint)23);
    [branch]
    if (_3114) {
      _3125 = (_bufferSizeAndInvSize.x * ((_3079 * 0.5f) + _111)) + -0.5f;
      _3126 = (_bufferSizeAndInvSize.y * (_112 - (_3080 * 0.5f))) + -0.5f;
      _3129 = (int)(floor(_3125));
      _3130 = (int)(floor(_3126));
      _3131 = (float)((int)(_3129));
      _3132 = (float)((int)(_3130));
      [branch]
      if (_2845) {
        // [sem: _3__36__0__0__g_stencilPrev_gather]
        _3142 = __3__36__0__0__g_stencilPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(((_3131 + 0.5f) * _bufferSizeAndInvSize.z), ((_3132 + 0.5f) * _bufferSizeAndInvSize.w)));
        _3149 = mad(_3142.w, 16777216, mad(_3142.z, 65536, mad(_3142.y, 256, _3142.x)));
        _3178 = saturate(((float)((bool)(((uint)(_3149 & 24) > (uint)23) && ((_3149 & 127) != 24)))) * _3006);  // [sem: expr_sat]
        _3179 = saturate(((float)((bool)(((uint)(_3149 & 6144) > (uint)5888) && ((_3149 & 32512) != 6144)))) * _3007);  // [sem: expr_sat]
        // [sem: expr_sat]
        _3180 = saturate(((float)((bool)(((uint)(_3149 & 1572864) > (uint)1507328) && ((_3149 & 8323072) != 1572864)))) * _3008);
        // [sem: expr_sat]
        _3181 = saturate(((float)((bool)(((uint)(_3149 & 402653184) > (uint)385875968) && ((_3149 & 2130706432) != 402653184)))) * _3009);
        _3213 = max(saturate(min(max(((_1811 / ((_632 * 0.005f) + 1.0f)) + (_2921 * 500.0f)), 0.03125f), 0.5f) + _3112), saturate(1.0f - dot(float4(_3178, _3179, _3180, _3181), float4(1.0f, 1.0f, 1.0f, 1.0f))));
        _3214 = _3129;
        _3215 = _3130;
        _3216 = _3178;
        _3217 = _3179;
        _3218 = _3180;
        _3219 = _3181;
      } else {
        _3196 = _3125 - _3131;
        _3197 = _3126 - _3132;
        _3198 = 1.0f - _3196;
        _3199 = 1.0f - _3197;
        _3213 = (saturate((sqrt((_3080 * _3080) + (_3079 * _3079)) * 50.0f) + 0.125f) * 0.875f);
        _3214 = _3129;
        _3215 = _3130;
        _3216 = (_3198 * _3197);
        _3217 = (_3197 * _3196);
        _3218 = (_3199 * _3196);
        _3219 = (_3199 * _3198);
      }
    } else {
      _3213 = _3112;
      _3214 = _1921;
      _3215 = _1922;
      _3216 = _3006;
      _3217 = _3007;
      _3218 = _3008;
      _3219 = _3009;
    }
    _3220 = (_2851 > 0.2f);
    _3221 = (uint)((uint)(_3215)) + (uint)(1);
    half4 _3223 = __3__36__0__0__g_specularResultPrev.Load(int3(_3214, _3221, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3236 = ((float)((bool)(!(_3220 ^ ((half)(_3223.w) < 0.0h))))) * _3216;
    _3242 = (uint)((uint)(_3214)) + (uint)(1);
    half4 _3243 = __3__36__0__0__g_specularResultPrev.Load(int3(_3242, _3221, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3256 = ((float)((bool)(!(_3220 ^ ((half)(_3243.w) < 0.0h))))) * _3217;
    half4 _3266 = __3__36__0__0__g_specularResultPrev.Load(int3(_3242, _3215, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3279 = ((float)((bool)(!(_3220 ^ ((half)(_3266.w) < 0.0h))))) * _3218;
    half4 _3289 = __3__36__0__0__g_specularResultPrev.Load(int3(_3214, _3215, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3302 = ((float)((bool)(!(_3220 ^ ((half)(_3289.w) < 0.0h))))) * _3219;
    _3326 = 1.0f / max(((saturate(_123 * 0.0625f) * 0.000999f) + 1e-06f), dot(float4(_3236, _3256, _3279, _3302), float4(1.0f, 1.0f, 1.0f, 1.0f)));
    _3328 = -0.0f - (min(0.0f, (-0.0f - ((((_3236 * float(_3223.x)) + (_3256 * float(_3243.x))) + (_3279 * float(_3266.x))) + (_3302 * float(_3289.x))))) * _3326);
    _3330 = -0.0f - (min(0.0f, (-0.0f - ((((_3236 * float(_3223.y)) + (_3256 * float(_3243.y))) + (_3279 * float(_3266.y))) + (_3302 * float(_3289.y))))) * _3326);
    _3332 = -0.0f - (min(0.0f, (-0.0f - ((((_3236 * float(_3223.z)) + (_3256 * float(_3243.z))) + (_3279 * float(_3266.z))) + (_3302 * float(_3289.z))))) * _3326);
    _3333 = _3326 * min(0.0f, (-0.0f - ((((_3236 * abs(float(_3223.w))) + (_3256 * abs(float(_3243.w)))) + (_3279 * abs(float(_3266.w)))) + (_3302 * abs(float(_3289.w))))));
    _3342 = max(_3213, saturate((_2731 * _2731) * max(0.0f, saturate(((1.0f - _2638) - _2643) * 2.0f))));
    if ((_2698 != 53) && ((_2842 != 66) && (_renderParams.y == 0.0f))) {
      _3349 = dot(float3(_3328, _3330, _3332), float3(0.212671f, 0.71516f, 0.072169f));
      _3356 = ((min(_3349, _2465.z) / max(1e-09f, _3349)) * _2470) + saturate(1.0f - _2470);
      // [sem: expr_sat]
      _3377 = saturate(((_2470 * 0.5f) * saturate((((_2731 * 1000.0f) * _2921) * ((float(1.0h / ((half)(8.0h - ((half)(_1806 * 7.0h))))) * _2465.z) - _3349)) / max(1e-06f, _2465.z))) + _3342);
      _3378 = (_3356 * _3328);
      _3379 = (_3356 * _3330);
      _3380 = (_3356 * _3332);
    } else {
      _3377 = _3342;  // [sem: expr_sat]
      _3378 = _3328;
      _3379 = _3330;
      _3380 = _3332;
    }
    _3381 = _3378 * _exposure4.y;
    _3382 = _3379 * _exposure4.y;
    _3383 = _3380 * _exposure4.y;
    _3396 = ((max(0.001f, _2643) + _3333) * _3377) - _3333;
    _3406 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2847 * ((((_969.x * _906) + (_962.x * _905)) + (_979.x * _907)) + (_989.x * _908))) - _3381) * _3377) + _3381))));
    _3407 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2847 * ((((_969.y * _906) + (_962.y * _905)) + (_979.y * _907)) + (_989.y * _908))) - _3382) * _3377) + _3382))));
    _3408 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2847 * ((((_969.z * _906) + (_962.z * _905)) + (_979.z * _907)) + (_989.z * _908))) - _3383) * _3377) + _3383))));
    __3__38__0__1__g_specularResultUAV[int2(_101, _103)] = float4((half)(half(_3406)), (half)(half(_3407)), (half)(half(_3408)), (half)(half(select(_3220, (-0.0f - _3396), _3396))));
    __3__38__0__1__g_specularSampleCountUAV[int2(_101, _103)] = saturate((_3001 * 0.984375f) + 0.015625f);
    _3420 = select(_3114, 0.0f, _3396);
    _3425 = float(half(lerp(_3420, 1.0f, _2731)));
    _3426 = (_2842 == 64);
    _3428 = ((int)(uint)(_188)) ^ 1;
    if ((((int)(uint)(_3426)) & _3428) == 0) {
      _3445 = saturate(exp2((_3425 * _3425) * (_123 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _3445 = select((_cavityParams.z > 0.0f), select(_188, 0.0f, _1073), 1.0f);  // [sem: expr_sat]
    }
    _3448 = (_cavityParams.x == 0.0f);
    _3449 = select(_3448, 1.0f, _3445);
    _3450 = float(_206);
    _3451 = float(_207);
    _3452 = float(_208);
    if (_3426) {
      _3458 = (_3449 * _2635);
      _3459 = (_3449 * _2636);
      _3460 = (_3449 * _2637);
    } else {
      _3458 = _2635;
      _3459 = _2636;
      _3460 = _2637;
    }
    _3462 = _2609 * 0.875f;
    _3463 = _2610 * 0.875f;
    _3464 = _2611 * 0.875f;
    if (!(_2698 == 37)) {
      _3466 = (_2698 == 55);
      _3467 = select(_3466, _3462, _3458);
      _3468 = select(_3466, _3463, _3459);
      _3469 = select(_3466, _3464, _3460);
      if ((_2698 == 53) || (_2842 == 66)) {
        // [sem: _3__36__0__0__g_hairBrdfLookup_sampleLod]
        _3484 = __3__36__0__0__g_hairBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, (1.0f - saturate(abs(dot(float3(_1699, _1700, _1701), float3(_1052, _1053, _1054)))))), (1.0f - max(0.75f, (_3425 * 2.0f)))), 0.0f);
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _3490 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1824), (1.0f - _3425)), 0.0f);
        _3497 = ((_3490.x - _3484.x) * _1697) + _3484.x;
        _3498 = ((_3490.y - _3484.y) * _1697) + _3484.y;
        _3500 = (_3497 * 0.01f) + _3498;
        _3667 = _3497;
        _3668 = _3498;
        _3669 = _3500;
        _3670 = _3500;
        _3671 = _3500;
      } else {
        if ((uint)((int)((uint)((uint)(_2698)) + (uint)(-97))) < (uint)2) {
          if (!(abs(_3451) > 0.99f)) {
            _3508 = -0.0f - _3452;
            _3510 = rsqrt(dot(float3(_3508, 0.0f, _3450), float3(_3508, 0.0f, _3450)));  // [sem: invLength]
            _3514 = (_3510 * _3508);
            _3515 = (_3510 * _3450);
          } else {
            _3514 = 1.0f;
            _3515 = 0.0f;
          }
          _3517 = -0.0f - (_3451 * _3515);
          _3520 = (_3515 * _3450) - (_3514 * _3452);
          _3521 = _3514 * _3451;
          _3523 = rsqrt(dot(float3(_3517, _3520, _3521), float3(_3517, _3520, _3521)));  // [sem: invLength]
          _3531 = _viewPos.x + _1047;
          _3532 = _viewPos.y + _1048;
          _3533 = _viewPos.z + _1049;
          // [sem: _3__36__0__0__g_blueNoise_sampleLod]
          _3538 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_3514, 0.0f, _3515), float3(_3531, _3532, _3533)), dot(float3((_3523 * _3517), (_3520 * _3523), (_3523 * _3521)), float3(_3531, _3532, _3533))), 0.0f);
          _3542 = _3538.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _3543 = _3538.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _3544 = _3538.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _3546 = rsqrt(dot(float3(_3542, _3543, _3544), float3(_3542, _3543, _3544)));  // [sem: invLength]
          _3550 = (_3542 * _3546) + _714;
          _3551 = (_3543 * _3546) + _715;
          _3552 = (_3544 * _3546) + _716;
          _3554 = rsqrt(dot(float3(_3550, _3551, _3552), float3(_3550, _3551, _3552)));  // [sem: invLength]
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _3567 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1824), (1.0f - _3425)), 0.0f);
          _3574 = _3567.y + (exp2(log2(saturate(dot(float3(_1816, _1817, _1818), float3((_3550 * _3554), (_3551 * _3554), (_3552 * _3554))))) * 512.0f) * 20.0f);
          _3667 = _3567.x;
          _3668 = _3567.y;
          _3669 = (_3574 + (_3567.x * _3467));
          _3670 = (_3574 + (_3567.x * _3468));
          _3671 = (_3574 + (_3567.x * _3469));
        } else {
          _3579 = _3467;
          _3580 = _3468;
          _3581 = _3469;
          if (_3426) {
            if (_2698 == 65) {
              _3650 = _3579;
              _3651 = _3580;
              _3652 = _3581;
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _3657 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1824), (1.0f - _3425)), 0.0f);
              _3667 = _3657.x;
              _3668 = _3657.y;
              _3669 = ((_3657.x * _3650) + _3657.y);
              _3670 = ((_3657.x * _3651) + _3657.y);
              _3671 = ((_3657.x * _3652) + _3657.y);
            } else {
              _3587 = min(0.99f, _1824);
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _3592 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3587, saturate(1.0f - (_3425 * 1.33f))), 0.0f);
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _3597 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3587, saturate(1.0f - (_3425 * 0.47998047f))), 0.0f);
              _3601 = (_3597.x + _3592.x) * 0.5f;
              _3603 = (_3597.y + _3592.y) * 0.5f;
              _3667 = _3601;
              _3668 = _3603;
              _3669 = ((_3601 * _3579) + _3603);
              _3670 = ((_3601 * _3580) + _3603);
              _3671 = ((_3601 * _3581) + _3603);
            }
          } else {
            if ((_2698 == 33) || (_2698 == 54)) {
              _3620 = max(dot(float3(_2609, _2610, _2611), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
              _3624 = sqrt(_2609) - _3620;
              _3625 = sqrt(_2610) - _3620;
              _3626 = sqrt(_2611) - _3620;
              _3633 = saturate(1.0f - (pow(_1824, 4.0f)));  // [sem: expr_sat]
              _3650 = ((((_3624 * _2699) + _3620) + (_3633 * (_3624 * (_2701 - _2699)))) * _2700);
              _3651 = ((((_3625 * _2699) + _3620) + ((_3625 * (_2701 - _2699)) * _3633)) * _2700);
              _3652 = ((((_3626 * _2699) + _3620) + ((_3626 * (_2701 - _2699)) * _3633)) * _2700);
            } else {
              _3650 = _3579;
              _3651 = _3580;
              _3652 = _3581;
            }
            // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
            _3657 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1824), (1.0f - _3425)), 0.0f);
            _3667 = _3657.x;
            _3668 = _3657.y;
            _3669 = ((_3657.x * _3650) + _3657.y);
            _3670 = ((_3657.x * _3651) + _3657.y);
            _3671 = ((_3657.x * _3652) + _3657.y);
          }
        }
      }
    } else {
      _3579 = _3462;
      _3580 = _3463;
      _3581 = _3464;
      if (_3426) {
        if (_2698 == 65) {
          _3650 = _3579;
          _3651 = _3580;
          _3652 = _3581;
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _3657 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1824), (1.0f - _3425)), 0.0f);
          _3667 = _3657.x;
          _3668 = _3657.y;
          _3669 = ((_3657.x * _3650) + _3657.y);
          _3670 = ((_3657.x * _3651) + _3657.y);
          _3671 = ((_3657.x * _3652) + _3657.y);
        } else {
          _3587 = min(0.99f, _1824);
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _3592 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3587, saturate(1.0f - (_3425 * 1.33f))), 0.0f);
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _3597 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3587, saturate(1.0f - (_3425 * 0.47998047f))), 0.0f);
          _3601 = (_3597.x + _3592.x) * 0.5f;
          _3603 = (_3597.y + _3592.y) * 0.5f;
          _3667 = _3601;
          _3668 = _3603;
          _3669 = ((_3601 * _3579) + _3603);
          _3670 = ((_3601 * _3580) + _3603);
          _3671 = ((_3601 * _3581) + _3603);
        }
      } else {
        if ((_2698 == 33) || (_2698 == 54)) {
          _3620 = max(dot(float3(_2609, _2610, _2611), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
          _3624 = sqrt(_2609) - _3620;
          _3625 = sqrt(_2610) - _3620;
          _3626 = sqrt(_2611) - _3620;
          _3633 = saturate(1.0f - (pow(_1824, 4.0f)));  // [sem: expr_sat]
          _3650 = ((((_3624 * _2699) + _3620) + (_3633 * (_3624 * (_2701 - _2699)))) * _2700);
          _3651 = ((((_3625 * _2699) + _3620) + ((_3625 * (_2701 - _2699)) * _3633)) * _2700);
          _3652 = ((((_3626 * _2699) + _3620) + ((_3626 * (_2701 - _2699)) * _3633)) * _2700);
        } else {
          _3650 = _3579;
          _3651 = _3580;
          _3652 = _3581;
        }
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _3657 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1824), (1.0f - _3425)), 0.0f);
        _3667 = _3657.x;
        _3668 = _3657.y;
        _3669 = ((_3657.x * _3650) + _3657.y);
        _3670 = ((_3657.x * _3651) + _3657.y);
        _3671 = ((_3657.x * _3652) + _3657.y);
      }
    }
    _3674 = select((_3426 || _3114), 1.0f, _3449) * _2532;
    _3681 = _2600 * _2532;
    _3682 = _2601 * _2532;
    _3683 = _2602 * _2532;
    if (_2044 || _1776) {
      _3937 = _1805;
      _3938 = _1806;
      _3939 = _1807;
      _3940 = _1808;
      _3941 = _1809;
      _3942 = _3420;
      if (_1815) {
        _3948 = _3942;
        _3949 = _3939;
        _3950 = _3940;
        _3951 = _3941;
        _3952 = _3938;
        _3953 = _3937;
        _3954 = 0.0f;
        _3955 = 0.0f;
        _3956 = 0.0f;
        _3957 = (_3681 * _1706);
        _3958 = (_3682 * _1707);
        _3959 = (_3683 * _1708);
      } else {
        _3948 = _3942;
        _3949 = _3939;
        _3950 = _3940;
        _3951 = _3941;
        _3952 = _3938;
        _3953 = _3937;
        _3954 = _3681;
        _3955 = _3682;
        _3956 = _3683;
        _3957 = 0.0f;
        _3958 = 0.0f;
        _3959 = 0.0f;
      }
    } else {
      if (!((_1702 == 6) || ((_1812 == 106) || (((uint)((int)(_1702) + (int)(-27)) < (uint)2) || ((_1702 == 105) || (_1702 == 26)))))) {
        if (!(_1702 == 7)) {
          _3704 = exp2(log2(_3420) * (saturate(_123 * 0.03125f) + 1.0f));
          // [sem: _3__36__0__0__g_puddleMask_sampleLod]
          _3714 = __3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_111, _112), 0.0f);
          bool __branch_chain_3698;
          if ((_1702 == 15) || ((_1812 == 12) || ((_1702 & -4) == 16))) {
            _3733 = false;
            _3734 = true;
            __branch_chain_3698 = true;
          } else {
            if (!((uint)_1702 > (uint)10)) {
              _3733 = true;
              _3734 = false;
              __branch_chain_3698 = true;
            } else {
              if ((uint)_1702 < (uint)20) {
                _3733 = false;
                _3734 = false;
                __branch_chain_3698 = true;
              } else {
                if (!(_1702 == 97)) {
                  _3733 = (_1702 != 107);
                  _3734 = false;
                  __branch_chain_3698 = true;
                } else {
                  _3926 = _2619;
                  _3927 = _2731;
                  _3928 = _2609;
                  _3929 = _2610;
                  _3930 = _2611;
                  __branch_chain_3698 = false;
                }
              }
            }
          }
          if (__branch_chain_3698) {
            if (_3714.w < 1.0f) {
              if ((_weatherCheckFlag & 5) == 5) {
                _3744 = (_1702 == 36);
                if (!_3744) {
                  // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                  _3764 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((_viewPos.x + _1047) / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((_viewPos.z + _1049) / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                  _3770 = _3764.x;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3771 = _3764.y;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3772 = _3764.z;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3773 = _3764.w;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                } else {
                  _3770 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3771 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3772 = 0.1f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3773 = 0.5f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                }
                _3780 = 1.0f - saturate(((_viewPos.y + _1048) - _paramGlobalSand.x) / _paramGlobalSand.y);
                if (!(_3780 <= 0.0f)) {
                  _3783 = saturate(_3704);  // [sem: _3704_sat]
                  _3796 = ((_3771 * 0.33951f) + (_3770 * 0.61312f)) + (_3772 * 0.04737f);
                  _3797 = ((_3771 * 0.91636f) + (_3770 * 0.0702f)) + (_3772 * 0.01345f);
                  _3798 = ((_3771 * 0.10958f) + (_3770 * 0.02062f)) + (_3772 * 0.8698f);
                  _3803 = select(_3734, 1.0f, ((float)((bool)(saturate(dot(float3(_714, _715, _716), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                  if (_enableSandAO == 1) {
                    _3808 = 1.0f - _3714.x;  // [sem: _3__36__0__0__g_puddleMask_sampleLod_derived]
                    if (_3744) {
                      _3839 = ((((_3808 * 10.0f) * _3773) * _3780) * _3783);
                      _3842 = _3796;
                      _3843 = _3797;
                      _3844 = _3798;
                      _3845 = saturate(_3839);  // [sem: _3839_sat]
                    } else {
                      _3819 = saturate(_3773 + -0.5f);  // [sem: expr_sat]
                      _3842 = _3796;
                      _3843 = _3797;
                      _3844 = _3798;
                      // [sem: _3839_sat]
                      _3845 = ((((_3819 * 2.0f) * max((_3803 * _3714.x), min((_3783 * ((_3714.x * 7.0f) + 3.0f)), (_3819 * 40.0f)))) + (((_3808 * 10.0f) * _3783) * saturate((0.5f - _3773) * 2.0f))) * _3780);
                    }
                  } else {
                    _3837 = ((_3780 * _3773) * _3714.x) * _3803;
                    if (_3744) {
                      _3839 = _3837;
                      _3842 = _3796;
                      _3843 = _3797;
                      _3844 = _3798;
                      _3845 = saturate(_3839);  // [sem: _3839_sat]
                    } else {
                      _3842 = _3796;
                      _3843 = _3797;
                      _3844 = _3798;
                      _3845 = _3837;  // [sem: _3839_sat]
                    }
                  }
                } else {
                  _3842 = 0.0f;
                  _3843 = 0.0f;
                  _3844 = 0.0f;
                  _3845 = 0.0f;  // [sem: _3839_sat]
                }
                _3849 = ((1.0f - _3714.w) * (1.0f - _3714.y)) * _3845;
                _3850 = (_3849 > 0.0001f);
                if (_3850) {
                  if (_3734) {
                    _3853 = saturate(_3849);  // [sem: _3849_sat]
                    _3880 = (((sqrt(_3842 * _2609) - _2609) * _3853) + _2609);
                    _3881 = (((sqrt(_3843 * _2610) - _2610) * _3853) + _2610);
                    _3882 = (((sqrt(_3844 * _2611) - _2611) * _3853) + _2611);
                  } else {
                    _3880 = ((_3849 * (_3842 - _2609)) + _2609);
                    _3881 = ((_3849 * (_3843 - _2610)) + _2610);
                    _3882 = ((_3849 * (_3844 - _2611)) + _2611);
                  }
                } else {
                  _3880 = _2609;
                  _3881 = _2610;
                  _3882 = _2611;
                }
                if (_3744 && _3850) {
                  if (_3734) {
                    _3897 = (((sqrt(_2731 * 0.25f) - _2731) * saturate(_3849)) + _2731);
                  } else {
                    _3897 = ((_3849 * (0.25f - _2731)) + _2731);
                  }
                } else {
                  _3897 = _2731;
                }
                _3898 = saturate(_3880);  // [sem: _3880_sat]
                _3899 = saturate(_3881);  // [sem: _3881_sat]
                _3900 = saturate(_3882);  // [sem: _3882_sat]
                _3905 = (_3897 * (1.0f - _3704)) + _3704;
                _3908 = ((_3897 - _3905) * _3714.y) + _3905;
                _3915 = (((_3704 * _3704) * _3714.z) * ((float)((bool)(_3733)))) * saturate(dot(float3(_714, _715, _716), float3(0.0f, 1.0f, 0.0f)));
                _3916 = _3915 * -0.5f;
                _3926 = (_2619 - (_3704 * _2619));
                _3927 = (_3908 - (_3915 * _3908));
                _3928 = ((_3916 * _3898) + _3898);
                _3929 = ((_3916 * _3899) + _3899);
                _3930 = ((_3916 * _3900) + _3900);
              } else {
                _3926 = _2619;
                _3927 = _2731;
                _3928 = _2609;
                _3929 = _2610;
                _3930 = _2611;
              }
            } else {
              _3926 = _2619;
              _3927 = _2731;
              _3928 = _2609;
              _3929 = _2610;
              _3930 = _2611;
            }
          }
          _3937 = (half)(half(_3926));
          _3938 = (half)(half(_3927));
          _3939 = (half)(half(_3928));
          _3940 = (half)(half(_3929));
          _3941 = (half)(half(_3930));
          _3942 = _3704;
        } else {
          _3937 = _1805;
          _3938 = _1806;
          _3939 = _1807;
          _3940 = _1808;
          _3941 = _1809;
          _3942 = _3420;
        }
        if (_1815) {
          _3948 = _3942;
          _3949 = _3939;
          _3950 = _3940;
          _3951 = _3941;
          _3952 = _3938;
          _3953 = _3937;
          _3954 = 0.0f;
          _3955 = 0.0f;
          _3956 = 0.0f;
          _3957 = (_3681 * _1706);
          _3958 = (_3682 * _1707);
          _3959 = (_3683 * _1708);
        } else {
          _3948 = _3942;
          _3949 = _3939;
          _3950 = _3940;
          _3951 = _3941;
          _3952 = _3938;
          _3953 = _3937;
          _3954 = _3681;
          _3955 = _3682;
          _3956 = _3683;
          _3957 = 0.0f;
          _3958 = 0.0f;
          _3959 = 0.0f;
        }
      } else {
        _3948 = _3420;
        _3949 = _1807;
        _3950 = _1808;
        _3951 = _1809;
        _3952 = _1806;
        _3953 = _1805;
        _3954 = _3681;
        _3955 = _3682;
        _3956 = _3683;
        _3957 = 0.0f;
        _3958 = 0.0f;
        _3959 = 0.0f;
      }
    }
    half4 _3961 = __3__36__0__0__g_sceneShadowColor.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_sceneShadowColor_load]
    _3966 = float(_3961.x);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _3967 = float(_3961.y);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _3968 = float(_3961.z);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    [branch]
    if (_1776) {
      _3972 = __3__36__0__0__g_sceneNormal.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
      _3988 = min(1.0f, ((((float)((uint)((uint)(_3972.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3989 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_3972.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3990 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_3972.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3992 = rsqrt(dot(float3(_3988, _3989, _3990), float3(_3988, _3989, _3990)));  // [sem: invLength]
      _4000 = (half)(half(_3992 * _3988));
      _4001 = (half)(half(_3992 * _3989));
      _4002 = (half)(half(_3992 * _3990));
    } else {
      _4000 = _523;
      _4001 = _524;
      _4002 = _525;
    }
    _4005 = (_sunDirection.y > 0.0f);
    if ((_4005) || ((!(_4005)) && (_sunDirection.y > _moonDirection.y))) {
      _4017 = _sunDirection.x;
      _4018 = _sunDirection.y;
      _4019 = _sunDirection.z;
    } else {
      _4017 = _moonDirection.x;
      _4018 = _moonDirection.y;
      _4019 = _moonDirection.z;
    }
    if ((_4005) || ((!(_4005)) && (_sunDirection.y > _moonDirection.y))) {
      _4039 = _precomputedAmbient7.y;
    } else {
      _4039 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
    }
    _4046 = _viewPos.x + _1047;
    _4047 = _viewPos.y + _1048;
    _4048 = _4047 + _earthRadius;
    _4049 = _viewPos.z + _1049;
    _4055 = sqrt(((_4046 * _4046) + (_4048 * _4048)) + (_4049 * _4049));
    _4060 = dot(float3((_4046 / _4055), (_4048 / _4055), (_4049 / _4055)), float3(_4017, _4018, _4019));
    _4066 = min(max(((_4055 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
    _4074 = max(_4066, 0.0f);
    _4081 = (-0.0f - sqrt((_4074 + (_earthRadius * 2.0f)) * _4074)) / (_4074 + _earthRadius);
    if (_4060 > _4081) {
      _4104 = ((exp2(log2(saturate((_4060 - _4081) / (1.0f - _4081))) * 0.2f) * 0.4921875f) + 0.50390625f);
    } else {
      _4104 = ((exp2(log2(saturate((_4081 - _4060) / (_4081 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
    }
    // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
    _4109 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_4066 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _4104), 0.0f);
    _4131 = ((_4109.y * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
    _4149 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _4109.x) + _4131) * -1.442695f);
    _4150 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _4109.x) + _4131) * -1.442695f);
    _4151 = exp2(((((_ozoneRatio * 2.1360002e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f)) * _4109.x) + _4131) * -1.442695f);
    _4167 = sqrt(_2723);
    _4175 = (_cloudAltitude - (max(((_4167 * _4167) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
    _4187 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_4018 > 0.0f))) - (int)((int)(uint)((int)(_4018 < 0.0f)))))) * 0.5f))) + _4175;
    if (_1048 < _4175) {
      _4190 = dot(float3(0.0f, 1.0f, 0.0f), float3(_4017, _4018, _4019));
      _4196 = select((abs(_4190) < 1e-08f), 1e+08f, ((_4187 - dot(float3(0.0f, 1.0f, 0.0f), float3(_1047, _1048, _1049))) / _4190));
      _4202 = ((_4196 * _4017) + _1047);
      _4203 = _4187;
      _4204 = ((_4196 * _4019) + _1049);
    } else {
      _4202 = _1047;
      _4203 = _1048;
      _4204 = _1049;
    }
    _4224 = saturate(abs(_4018) * 4.0f);  // [sem: expr_sat]
    _4226 = (_4224 * _4224) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_4202 * 5e-05f) + 0.5f), ((_4203 - _4175) / _cloudThickness), ((_4204 * 5e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
    _4233 = ((1.0f - _4226) * saturate(((_1048 - _cloudThickness) - _4175) * 0.1f)) + _4226;
    _4234 = _4233 * (((_4150 * 0.33951f) + (_4149 * 0.61312f)) + (_4151 * 0.04737f));
    _4235 = _4233 * (((_4150 * 0.91636f) + (_4149 * 0.0702f)) + (_4151 * 0.01345f));
    _4236 = _4233 * (((_4150 * 0.10958f) + (_4149 * 0.02062f)) + (_4151 * 0.8698f));
    _4256 = float(_3949);
    _4257 = float(_3950);
    _4258 = float(_3951);
    if (!_2646) {
      _4264 = (_187 && ((uint)((int)(_1702) + (int)(-105)) < (uint)2));
    } else {
      _4264 = true;
    }
    _4266 = float(max(0.010002136h, _3952));
    _4267 = float(_3953);
    _4270 = (_1702 == 107);
    _4273 = _1770 || (((uint)((int)(_1702) + (int)(-11)) < (uint)9) || (_4270 || _4264));
    if ((_1812 == 26) || ((_1702 == 105) || (_1702 == 28))) {
      _4284 = true;
      _4286 = _4284;
      _4287 = _4270;
    } else {
      _4281 = (_1702 == 106);
      if (!(_1702 == 19)) {
        _4284 = _4281;
        _4286 = _4284;
        _4287 = _4270;
      } else {
        _4286 = _4281;
        _4287 = true;
      }
    }
    _4288 = float(_4000);
    _4289 = float(_4001);
    _4290 = float(_4002);
    _4292 = __3__36__0__0__g_sceneDecalMask.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_sceneDecalMask_load]
    if (_1702 == 97) {
      _4304 = (((float)((uint16_t)((int16_t)((uint16_t)((int16_t)(_4292.x)) >> 2)))) * 0.015873017f);
      _4305 = ((int)((uint)((uint)((int)(min16uint)((int)((int)(_4292.x) & 2)))) >> 1) + (int)(97));
      _4306 = 0.0f;
      _4307 = 0.0f;
      _4308 = 0.0f;
      _4309 = 0.0f;
    } else {
      _4304 = select(_4273, _4267, 0.0f);
      _4305 = _1702;
      _4306 = _1120;
      _4307 = _1121;
      _4308 = _1122;
      _4309 = _1123;
    }
    _4314 = float(saturate(_207));
    _4315 = _4314 * _4314;
    _4316 = _4315 * _4315;
    _4317 = _4316 * _4316;
    _4328 = ((_4317 * _4317) * select((_2454 || (_4286 || _4287)), 0.0f, 1.0f)) * (((float4)(__3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_bufferSizeAndInvSize.z * _106), (_bufferSizeAndInvSize.w * _107)), 0.0f))).y);
    _4333 = _4288 - (_4328 * _4288);
    _4334 = (_4328 * (1.0f - _4289)) + _4289;
    _4335 = _4290 - (_4328 * _4290);
    _4337 = rsqrt(dot(float3(_4333, _4334, _4335), float3(_4333, _4334, _4335)));  // [sem: invLength]
    _4338 = _4333 * _4337;
    _4339 = _4334 * _4337;
    _4340 = _4335 * _4337;
    _4343 = (_4305 == 37) || (_4305 == 55);
    _4345 = select((_4273 || _4343), 0.0f, _4267);
    _4346 = (_4305 == 52);
    if (_4346) {
      _4353 = saturate(((_4257 + _4256) + _4258) * 1.2f);  // [sem: expr_sat]
    } else {
      _4353 = 1.0f;  // [sem: expr_sat]
    }
    _4359 = (0.7f / min(max(max(max(_4256, _4257), _4258), 0.01f), 0.7f)) * _4353;
    _4369 = (((_4359 * _4256) + -0.04f) * _4345) + 0.04f;
    _4370 = (((_4359 * _4257) + -0.04f) * _4345) + 0.04f;
    _4371 = (((_4359 * _4258) + -0.04f) * _4345) + 0.04f;
    _4372 = float(_3952);
    _4373 = _4305 & -2;
    _4374 = (_4373 == 64);
    _4377 = ((((int)(uint)(_4374)) & _3428) == 0);
    if (_4377) {
      _4390 = saturate(exp2((_4372 * _4372) * (_123 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _4390 = select((_cavityParams.z > 0.0f), select(_188, 0.0f, _1073), 1.0f);  // [sem: expr_sat]
    }
    _4391 = select(_3448, 1.0f, _4390);
    if (_4374) {
      _4397 = (_4391 * _4369);
      _4398 = (_4391 * _4370);
      _4399 = (_4391 * _4371);
    } else {
      _4397 = _4369;
      _4398 = _4370;
      _4399 = _4371;
    }
    _4400 = _4266 * _4266;
    _4401 = _4400 * _4400;
    _4403 = ((uint)((int)(_4305) + (int)(-97)) < (uint)2);
    _4405 = select(_4403, 0.5f, (_4266 * 0.60009766f));
    _4406 = _4405 * _4405;
    _4407 = _4406 * _4406;
    if (!((_4305 == 98) || (_4373 == 96))) {
      if ((uint)((int)(_4305) + (int)(-105)) < (uint)2) {
        _4423 = _187;
        _4426 = _4423;
        _4427 = (_4305 == 7);
      } else {
        if ((uint)_4305 > (uint)11) {
          if (!(((uint)_4305 < (uint)21) || (_4305 == 107))) {
            _4423 = false;
            _4426 = _4423;
            _4427 = (_4305 == 7);
          } else {
            _4426 = false;
            _4427 = true;
          }
        } else {
          if (!(_4305 == 6)) {
            _4423 = false;
            _4426 = _4423;
            _4427 = (_4305 == 7);
          } else {
            _4426 = false;
            _4427 = true;
          }
        }
      }
    } else {
      _4423 = true;
      _4426 = _4423;
      _4427 = (_4305 == 7);
    }
    _4432 = exp2(log2(float(_3961.w)) * 2.2f) * 1000.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    if ((_4005) || ((!(_4005)) && (_sunDirection.y > _moonDirection.y))) {
      _4444 = _sunDirection.x;
      _4445 = _sunDirection.y;
      _4446 = _sunDirection.z;
    } else {
      _4444 = _moonDirection.x;
      _4445 = _moonDirection.y;
      _4446 = _moonDirection.z;
    }
    _4447 = _lightingParams.x * _4039;
    // RenoDX: >>> [Patch: DirectLightMatrixFix] [Version: 1.16.00]
    // Description: The game converts the direct beam's transmittance to working space a second time
    //              here: _4234/_4235/_4236 are already the working-space result of that same matrix
    //              applied to the exp2 transmittance triple, scaled by the cloud blend. The matrix
    //              has unit row sums, so applying it twice preserves luminance and only desaturates,
    //              most visibly at low sun where the beam is strongly tinted. On uses the single
    //              conversion so low-sun light keeps the colour of the sky it arrives through.
    _4448 = (DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_4234 * _4447) : ((((_4234 * 0.61312f) + (_4235 * 0.33951f)) + (_4236 * 0.04737f)) * _4447);
    _4449 = (DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_4235 * _4447) : ((((_4234 * 0.0702f) + (_4235 * 0.91636f)) + (_4236 * 0.01345f)) * _4447);
    _4450 = (DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_4236 * _4447) : ((((_4234 * 0.02062f) + (_4235 * 0.10958f)) + (_4236 * 0.8698f)) * _4447);
    // RenoDX: <<< [Patch: DirectLightMatrixFix]
    _4451 = _4444 - _1052;
    _4452 = _4445 - _1053;
    _4453 = _4446 - _1054;
    _4455 = rsqrt(dot(float3(_4451, _4452, _4453), float3(_4451, _4452, _4453)));  // [sem: invLength]
    _4456 = _4455 * _4451;
    _4457 = _4455 * _4452;
    _4458 = _4455 * _4453;
    _4459 = dot(float3(_4288, _4289, _4290), float3(_4444, _4445, _4446));
    _4460 = dot(float3(_4338, _4339, _4340), float3(_4444, _4445, _4446));
    _4462 = saturate(dot(float3(_4288, _4289, _4290), float3(_1816, _1817, _1818)));  // [sem: expr_sat]
    _4464 = saturate(dot(float3(_4338, _4339, _4340), float3(_4456, _4457, _4458)));  // [sem: expr_sat]
    _4465 = dot(float3(_1816, _1817, _1818), float3(_4456, _4457, _4458));
    _4467 = saturate(dot(float3(_4444, _4445, _4446), float3(_4456, _4457, _4458)));  // [sem: expr_sat]
    _4468 = (_4373 == 66);
    _4469 = (_4305 == 53);
    _4470 = _4469 || _4468;
    if (_4470) {
      if (_4469) {
        _4487 = (((asfloat(_globalLightParams.z) * _4266) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
      } else {
        _4487 = _bevelParams.y;
      }
      _4502 = (_2725 * 2.0f) + 1.0f;
      _4506 = (_1697 * 7.0f) + 1.0f;
      // [sem: _3__36__0__0__g_blueNoise_sampleLod]
      _4511 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((dot(float3(_1047, _1048, _1049), float3(((_1701 * _3451) - (_1700 * _3452)), ((_1699 * _3452) - (_1701 * _3450)), ((_1700 * _3450) - (_1699 * _3451)))) * 2.0f) / _4502) * _4506), (((dot(float3(_1047, _1048, _1049), float3(_1699, _1700, _1701)) * 0.5f) / _4502) * _4506)), 0.0f);
      _4515 = _1697 * 0.5f;
      _4516 = _4511.x * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _4517 = _4511.y * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _4518 = _4511.z * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _4529 = dot(float3(_1699, _1700, _1701), float3(_4444, _4445, _4446));
      _4530 = dot(float3(_1699, _1700, _1701), float3(_1816, _1817, _1818));
      _4536 = cos(abs(asin(_4530) - asin(_4529)) * 0.5f);
      _4540 = _4444 - (_4529 * _1699);
      _4541 = _4445 - (_4529 * _1700);
      _4542 = _4446 - (_4529 * _1701);
      _4546 = _1816 - (_4530 * _1699);
      _4547 = _1817 - (_4530 * _1700);
      _4548 = _1818 - (_4530 * _1701);
      // [sem: invLength]
      _4555 = rsqrt((dot(float3(_4546, _4547, _4548), float3(_4546, _4547, _4548)) * dot(float3(_4540, _4541, _4542), float3(_4540, _4541, _4542))) + 0.0001f) * dot(float3(_4540, _4541, _4542), float3(_4546, _4547, _4548));
      _4559 = sqrt(saturate((_4555 * 0.5f) + 0.5f));
      _4566 = min(max(max(0.05f, _4266), 0.09803922f), 1.0f);
      _4567 = _4566 * _4566;
      _4568 = _4567 * 0.5f;
      _4569 = _4567 * 2.0f;
      _4570 = _4530 + _4529;
      _4571 = _4570 + (_4487 * 2.0f);
      _4573 = (_4559 * 1.4142135f) * _4567;
      _4587 = 1.0f - sqrt(saturate((dot(float3(_1816, _1817, _1818), float3(_4444, _4445, _4446)) * 0.5f) + 0.5f));
      _4588 = _4587 * _4587;
      _4595 = _4570 - _4487;
      _4604 = 1.0f / ((1.19f / _4536) + (_4536 * 0.36f));
      _4609 = ((_4604 * (0.6f - (_4555 * 0.8f))) + 1.0f) * _4559;
      _4615 = 1.0f - (sqrt(saturate(1.0f - (_4609 * _4609))) * _4536);
      _4616 = _4615 * _4615;
      _4620 = 0.9534794f - ((_4616 * _4616) * (_4615 * 0.9534794f));
      _4621 = _4604 * _4609;
      _4626 = (sqrt(1.0f - (_4621 * _4621)) * 0.5f) / _4536;
      _4627 = log2(_4256);
      _4628 = log2(_4257);
      _4629 = log2(_4258);
      _4641 = ((_4620 * _4620) * (exp2((((_4595 * _4595) * -0.5f) / (_4568 * _4568)) * 1.442695f) / (_4567 * 1.2533141f))) * exp2(-5.741926f - (_4555 * 5.265837f));
      _4645 = _4570 - (_4487 * 4.0f);
      _4655 = 1.0f - (_4536 * 0.5f);
      _4656 = _4655 * _4655;
      _4660 = (_4656 * _4656) * (0.9534794f - (_4536 * 0.4767397f));
      _4662 = 0.9534794f - _4660;
      _4663 = 0.8f / _4536;
      _4676 = (((_4662 * _4662) * (_4660 + 0.046520565f)) * (exp2((((_4645 * _4645) * -0.5f) / (_4569 * _4569)) * 1.442695f) / (_4567 * 5.0132565f))) * exp2((_4555 * 24.525816f) + -24.208424f);
      _4683 = saturate(_4460);  // [sem: _4460_sat]
      _4684 = (((_4559 * 0.25f) * (exp2((((_4571 * _4571) * -0.5f) / (_4573 * _4573)) * 1.442695f) / (_4573 * 2.5066283f))) * (((_4588 * _4588) * (_4587 * 0.9534794f)) + 0.046520565f)) * _4683;
      _4694 = -0.0f - _4683;
      _4705 = saturate((_4460 + 1.0f) * 0.25f);  // [sem: expr_sat]
      _4710 = max(0.001f, dot(float3(_4256, _4257, _4258), float3(0.3f, 0.59f, 0.11f)));
      _4729 = ((((1.0f - abs(_4460)) - _4705) * 0.33f) + _4705) * 0.07957747f;
      _4731 = (exp2(log2(_4256 / _4710) * (1.0f - _3966)) * _4729) * sqrt(_4256);
      _4733 = (exp2(log2(_4257 / _4710) * (1.0f - _3967)) * _4729) * sqrt(_4257);
      _4735 = (exp2(log2(_4258 / _4710) * (1.0f - _3968)) * _4729) * sqrt(_4258);
      _4742 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((_4676 * exp2(_4663 * _4627)) + (_4641 * exp2(_4627 * _4626))) * _4694)))));
      _4743 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((_4676 * exp2(_4663 * _4628)) + (_4641 * exp2(_4628 * _4626))) * _4694)))));
      _4744 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((_4676 * exp2(_4663 * _4629)) + (_4641 * exp2(_4629 * _4626))) * _4694)))));
      _4751 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_4516, 1.0f, _4515)) * _4684))) * _3966));
      _4752 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_4517, 1.0f, _4515)) * _4684))) * _3967));
      _4753 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_4518, 1.0f, _4515)) * _4684))) * _3968));
      if (!_4468) {
        _4755 = _4742;
        _4756 = _4743;
        _4757 = _4744;
        _4758 = _4751;
        _4759 = _4752;
        _4760 = _4753;
        _4761 = _4731;
        _4762 = _4733;
        _4763 = _4735;
        if (!_4469) {
          _4765 = (_4305 == 33);
          _4766 = (_4305 == 54);
          _4767 = _4765 || _4766;
          if (_4767) {
            _4782 = (saturate(_4459) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _4309) + 1.0f);
            _4788 = max(dot(float3(_4256, _4257, _4258), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
            _4789 = sqrt(_4256);
            _4790 = sqrt(_4257);
            _4791 = sqrt(_4258);
            _4792 = _4789 - _4788;
            _4793 = _4790 - _4788;
            _4794 = _4791 - _4788;
            _4801 = saturate(1.0f - (pow(_4462, 4.0f)));  // [sem: expr_sat]
            _4814 = (((_4793 * _4306) + _4788) + ((_4793 * (_4309 - _4306)) * _4801)) * _4307;
            _4817 = saturate(1.0f - saturate(_4465));  // [sem: expr_sat]
            _4818 = _4817 * _4817;
            _4820 = (_4818 * _4818) * _4817;
            _4823 = _4820 * saturate(_4814 * 50.0f);
            _4824 = 1.0f - _4820;
            _4825 = _4824 * _4307;
            _4829 = (_4825 * (((_4792 * _4306) + _4788) + (_4801 * (_4792 * (_4309 - _4306))))) + _4823;
            _4830 = (_4824 * _4814) + _4823;
            _4831 = (_4825 * (((_4794 * _4306) + _4788) + ((_4794 * (_4309 - _4306)) * _4801))) + _4823;
            _4832 = min(_4464, 0.9999f);
            _4833 = _4832 * _4832;
            _4834 = 1.0f - _4833;
            _4846 = (((exp2(((-0.0f - _4833) / (_4834 * _4401)) * 1.442695f) * 4.0f) / (_4834 * _4834)) + 1.0f) / ((_4401 * 12.566371f) + 3.1415927f);
            _4850 = ((_4462 + _4460) - (_4462 * _4460)) * 4.0f;
            _4854 = (_4829 * _4846) / _4850;
            _4855 = (_4830 * _4846) / _4850;
            _4856 = (_4831 * _4846) / _4850;
            _4857 = 1.0f - _4400;
            _4869 = (((_4464 * _4401) - _4464) * _4464) + 1.0f;
            _4873 = (_4401 / ((_4869 * _4869) * 3.1415927f)) * (0.5f / ((((_4462 * _4857) + _4400) * _4459) + (_4462 * ((_4459 * _4857) + _4400))));
            _4889 = saturate(_4460);  // [sem: _4460_sat]
            _4894 = (_4308 * 1.5f) + 2.5f;
            _4895 = _4894 * _4894;
            _4905 = (max(0.0f, (0.3f - _4459)) * 0.25f) * ((exp2(_4895 * -0.48089835f) * 3.0f) + exp2(_4895 * -1.442695f));
            _4930 = (((1.0f - _4309) * 0.4774648f) * saturate(_4308)) * saturate((pow(_4464, 4.0f)) * exp2(log2(saturate(1.0f - abs(_4459))) * 3.0f));
            _4935 = (_4930 * _4789);
            _4936 = (_4930 * _4790);
            _4937 = (_4930 * _4791);
            _4938 = ((((max((_4873 * _4829), 0.0f) - _4854) * _4306) + _4854) * _4889);
            _4939 = ((((max((_4873 * _4830), 0.0f) - _4855) * _4306) + _4855) * _4889);
            _4940 = ((((max((_4873 * _4831), 0.0f) - _4856) * _4306) + _4856) * _4889);
            _4941 = (((_4789 * _3966) * _4905) + _4782);
            _4942 = (((_4790 * _3967) * _4905) + _4782);
            _4943 = (((_4791 * _3968) * _4905) + _4782);
            if (!_4765) {
              if (_4766) {
                _5109 = _4758;
                _5110 = _4759;
                _5111 = _4760;
                _5112 = _4761;
                _5113 = _4762;
                _5114 = _4763;
                if (_4343) {
                  _5117 = dot(float3(_1816, _1817, _1818), float3(_4338, _4339, _4340)) * 2.0f;
                  _5121 = _1816 - (_5117 * _4338);
                  _5122 = _1817 - (_5117 * _4339);
                  _5123 = _1818 - (_5117 * _4340);
                  _5124 = _4444 - _5121;
                  _5125 = _4445 - _5122;
                  _5126 = _4446 - _5123;
                  _5128 = rsqrt(dot(float3(_5124, _5125, _5126), float3(_5124, _5125, _5126)));  // [sem: invLength]
                  _5129 = _5124 * _5128;
                  _5130 = _5125 * _5128;
                  _5131 = _5126 * _5128;
                  _5132 = -0.0f - _5121;
                  _5133 = -0.0f - _5122;
                  _5134 = -0.0f - _5123;
                  _5136 = saturate(dot(float3(_4288, _4289, _4290), float3(_5132, _5133, _5134)));  // [sem: expr_sat]
                  _5138 = saturate(dot(float3(_4338, _4339, _4340), float3(_5129, _5130, _5131)));  // [sem: expr_sat]
                  _5140 = saturate(_4460);  // [sem: _4460_sat]
                  _5151 = 1.0f - ((_5138 * _5138) * 0.9f);
                  _5154 = (0.03183099f / (_5151 * _5151)) * (0.5f / ((((_5136 * 0.9f) + 0.1f) * _4460) + (_5136 * ((_4460 * 0.9f) + 0.1f))));
                  _5180 = _5112;
                  _5181 = _5113;
                  _5182 = _5114;
                  _5183 = dot(float3(_5132, _5133, _5134), float3(_5129, _5130, _5131));
                  _5184 = _5138;
                  _5185 = (((float(half(max((_5154 * _4256), 0.0f) * _5140)) - _5109) * 0.875f) + _5109);
                  _5186 = (((float(half(max((_5154 * _4257), 0.0f) * _5140)) - _5110) * 0.875f) + _5110);
                  _5187 = (((float(half(max((_5154 * _4258), 0.0f) * _5140)) - _5111) * 0.875f) + _5111);
                } else {
                  _5180 = _5112;
                  _5181 = _5113;
                  _5182 = _5114;
                  _5183 = _4465;
                  _5184 = _4464;
                  _5185 = _5109;
                  _5186 = _5110;
                  _5187 = _5111;
                }
              } else {
                _4946 = saturate(_4459);  // [sem: _4459_sat]
                _4947 = 1.0f - _4401;
                _4948 = 1.0f - _4467;
                _4949 = _4948 * _4948;
                _4952 = ((_4949 * _4949) * _4948) + _4467;
                _4953 = 1.0f - _4946;
                _4954 = _4953 * _4953;
                _4959 = 1.0f - _4462;
                _4960 = _4959 * _4959;
                _4987 = (_4946 * 0.31830987f) * ((((_4467 * ((((_4947 * 34.5f) + -59.0f) * _4947) + 24.5f)) * exp2(-0.0f - (max(((_4947 * 73.2f) + -21.2f), 8.9f) * sqrt(_4464)))) + _4952) + ((((1.0f - ((_4954 * _4954) * (_4953 * 0.75f))) * (1.0f - ((_4960 * _4960) * (_4959 * 0.75f)))) - _4952) * saturate((_4947 * 2.2f) + -0.5f)));
                _4990 = saturate(1.0f - saturate(_4465));  // [sem: expr_sat]
                _4991 = _4990 * _4990;
                _4993 = (_4991 * _4991) * _4990;
                _4996 = _4993 * saturate(_4398 * 50.0f);
                _4997 = 1.0f - _4993;
                _5001 = (_4997 * _4397) + _4996;
                _5002 = (_4997 * _4398) + _4996;
                _5003 = (_4997 * _4399) + _4996;
                if (!(_4305 == 29)) {
                  _5005 = saturate(_4460);  // [sem: _4460_sat]
                  _5006 = 1.0f - _4400;
                  _5018 = (((_4464 * _4401) - _4464) * _4464) + 1.0f;
                  _5022 = (_4401 / ((_5018 * _5018) * 3.1415927f)) * (0.5f / ((((_4462 * _5006) + _4400) * _4460) + (_4462 * ((_4460 * _5006) + _4400))));
                  _5033 = (max((_5022 * _5001), 0.0f) * _5005);
                  _5034 = (max((_5022 * _5002), 0.0f) * _5005);
                  _5035 = (max((_5022 * _5003), 0.0f) * _5005);
                } else {
                  _5033 = 0.0f;
                  _5034 = 0.0f;
                  _5035 = 0.0f;
                }
                if (_4374) {
                  if (_4305 == 65) {
                    _5079 = _5033;
                    _5080 = _5034;
                    _5081 = _5035;
                    _5086 = max(1e-06f, _exposure2.x);
                    _5095 = ((_4946 * 50.265484f) * exp2(log2(saturate(dot(float3(_4338, _4339, _4340), float3(_1816, _1817, _1818)))) * 16.0f)) / (((_5086 * _5086) * 1e+06f) + 1.0f);
                    _5180 = ((((_5095 * _4256) - _4987) * _4304) + _4987);
                    _5181 = ((((_5095 * _4257) - _4987) * _4304) + _4987);
                    _5182 = ((((_5095 * _4258) - _4987) * _4304) + _4987);
                    _5183 = _4465;
                    _5184 = _4464;
                    _5185 = _5079;
                    _5186 = _5080;
                    _5187 = _5081;
                  } else {
                    _5043 = 1.0f - _4406;
                    _5055 = (((_4464 * _4407) - _4464) * _4464) + 1.0f;
                    _5059 = (_4407 / ((_5055 * _5055) * 3.1415927f)) * (0.5f / ((((_4462 * _5043) + _4406) * _4460) + (_4462 * ((_4460 * _5043) + _4406))));
                    _5066 = saturate(_4460) * 0.39990234f;
                    _5074 = ((max((_5059 * _5001), 0.0f) * _5066) + (_5033 * 0.60009766f));
                    _5075 = ((max((_5059 * _5002), 0.0f) * _5066) + (_5034 * 0.60009766f));
                    _5076 = ((max((_5059 * _5003), 0.0f) * _5066) + (_5035 * 0.60009766f));
                    if (_4305 == 65) {
                      _5079 = _5074;
                      _5080 = _5075;
                      _5081 = _5076;
                      _5086 = max(1e-06f, _exposure2.x);
                      _5095 = ((_4946 * 50.265484f) * exp2(log2(saturate(dot(float3(_4338, _4339, _4340), float3(_1816, _1817, _1818)))) * 16.0f)) / (((_5086 * _5086) * 1e+06f) + 1.0f);
                      _5180 = ((((_5095 * _4256) - _4987) * _4304) + _4987);
                      _5181 = ((((_5095 * _4257) - _4987) * _4304) + _4987);
                      _5182 = ((((_5095 * _4258) - _4987) * _4304) + _4987);
                      _5183 = _4465;
                      _5184 = _4464;
                      _5185 = _5079;
                      _5186 = _5080;
                      _5187 = _5081;
                    } else {
                      _5109 = _5074;
                      _5110 = _5075;
                      _5111 = _5076;
                      _5112 = _4987;
                      _5113 = _4987;
                      _5114 = _4987;
                      if (_4343) {
                        _5117 = dot(float3(_1816, _1817, _1818), float3(_4338, _4339, _4340)) * 2.0f;
                        _5121 = _1816 - (_5117 * _4338);
                        _5122 = _1817 - (_5117 * _4339);
                        _5123 = _1818 - (_5117 * _4340);
                        _5124 = _4444 - _5121;
                        _5125 = _4445 - _5122;
                        _5126 = _4446 - _5123;
                        _5128 = rsqrt(dot(float3(_5124, _5125, _5126), float3(_5124, _5125, _5126)));  // [sem: invLength]
                        _5129 = _5124 * _5128;
                        _5130 = _5125 * _5128;
                        _5131 = _5126 * _5128;
                        _5132 = -0.0f - _5121;
                        _5133 = -0.0f - _5122;
                        _5134 = -0.0f - _5123;
                        _5136 = saturate(dot(float3(_4288, _4289, _4290), float3(_5132, _5133, _5134)));  // [sem: expr_sat]
                        _5138 = saturate(dot(float3(_4338, _4339, _4340), float3(_5129, _5130, _5131)));  // [sem: expr_sat]
                        _5140 = saturate(_4460);  // [sem: _4460_sat]
                        _5151 = 1.0f - ((_5138 * _5138) * 0.9f);
                        _5154 = (0.03183099f / (_5151 * _5151)) * (0.5f / ((((_5136 * 0.9f) + 0.1f) * _4460) + (_5136 * ((_4460 * 0.9f) + 0.1f))));
                        _5180 = _5112;
                        _5181 = _5113;
                        _5182 = _5114;
                        _5183 = dot(float3(_5132, _5133, _5134), float3(_5129, _5130, _5131));
                        _5184 = _5138;
                        _5185 = (((float(half(max((_5154 * _4256), 0.0f) * _5140)) - _5109) * 0.875f) + _5109);
                        _5186 = (((float(half(max((_5154 * _4257), 0.0f) * _5140)) - _5110) * 0.875f) + _5110);
                        _5187 = (((float(half(max((_5154 * _4258), 0.0f) * _5140)) - _5111) * 0.875f) + _5111);
                      } else {
                        _5180 = _5112;
                        _5181 = _5113;
                        _5182 = _5114;
                        _5183 = _4465;
                        _5184 = _4464;
                        _5185 = _5109;
                        _5186 = _5110;
                        _5187 = _5111;
                      }
                    }
                  }
                } else {
                  _5074 = _5033;
                  _5075 = _5034;
                  _5076 = _5035;
                  if (_4305 == 65) {
                    _5079 = _5074;
                    _5080 = _5075;
                    _5081 = _5076;
                    _5086 = max(1e-06f, _exposure2.x);
                    _5095 = ((_4946 * 50.265484f) * exp2(log2(saturate(dot(float3(_4338, _4339, _4340), float3(_1816, _1817, _1818)))) * 16.0f)) / (((_5086 * _5086) * 1e+06f) + 1.0f);
                    _5180 = ((((_5095 * _4256) - _4987) * _4304) + _4987);
                    _5181 = ((((_5095 * _4257) - _4987) * _4304) + _4987);
                    _5182 = ((((_5095 * _4258) - _4987) * _4304) + _4987);
                    _5183 = _4465;
                    _5184 = _4464;
                    _5185 = _5079;
                    _5186 = _5080;
                    _5187 = _5081;
                  } else {
                    _5109 = _5074;
                    _5110 = _5075;
                    _5111 = _5076;
                    _5112 = _4987;
                    _5113 = _4987;
                    _5114 = _4987;
                    if (_4343) {
                      _5117 = dot(float3(_1816, _1817, _1818), float3(_4338, _4339, _4340)) * 2.0f;
                      _5121 = _1816 - (_5117 * _4338);
                      _5122 = _1817 - (_5117 * _4339);
                      _5123 = _1818 - (_5117 * _4340);
                      _5124 = _4444 - _5121;
                      _5125 = _4445 - _5122;
                      _5126 = _4446 - _5123;
                      _5128 = rsqrt(dot(float3(_5124, _5125, _5126), float3(_5124, _5125, _5126)));  // [sem: invLength]
                      _5129 = _5124 * _5128;
                      _5130 = _5125 * _5128;
                      _5131 = _5126 * _5128;
                      _5132 = -0.0f - _5121;
                      _5133 = -0.0f - _5122;
                      _5134 = -0.0f - _5123;
                      _5136 = saturate(dot(float3(_4288, _4289, _4290), float3(_5132, _5133, _5134)));  // [sem: expr_sat]
                      _5138 = saturate(dot(float3(_4338, _4339, _4340), float3(_5129, _5130, _5131)));  // [sem: expr_sat]
                      _5140 = saturate(_4460);  // [sem: _4460_sat]
                      _5151 = 1.0f - ((_5138 * _5138) * 0.9f);
                      _5154 = (0.03183099f / (_5151 * _5151)) * (0.5f / ((((_5136 * 0.9f) + 0.1f) * _4460) + (_5136 * ((_4460 * 0.9f) + 0.1f))));
                      _5180 = _5112;
                      _5181 = _5113;
                      _5182 = _5114;
                      _5183 = dot(float3(_5132, _5133, _5134), float3(_5129, _5130, _5131));
                      _5184 = _5138;
                      _5185 = (((float(half(max((_5154 * _4256), 0.0f) * _5140)) - _5109) * 0.875f) + _5109);
                      _5186 = (((float(half(max((_5154 * _4257), 0.0f) * _5140)) - _5110) * 0.875f) + _5110);
                      _5187 = (((float(half(max((_5154 * _4258), 0.0f) * _5140)) - _5111) * 0.875f) + _5111);
                    } else {
                      _5180 = _5112;
                      _5181 = _5113;
                      _5182 = _5114;
                      _5183 = _4465;
                      _5184 = _4464;
                      _5185 = _5109;
                      _5186 = _5110;
                      _5187 = _5111;
                    }
                  }
                }
              }
            } else {
              _5180 = _4761;
              _5181 = _4762;
              _5182 = _4763;
              _5183 = _4465;
              _5184 = _4464;
              _5185 = _4758;
              _5186 = _4759;
              _5187 = _4760;
            }
            _5209 = select(_4767, _4938, _5185) * _3966;
            _5210 = select(_4767, _4939, _5186) * _3967;
            _5211 = select(_4767, _4940, _5187) * _3968;
            _5219 = _5183;
            _5220 = _5184;
            _5221 = select(_4767, 0.0f, _4755);
            _5222 = select(_4767, 0.0f, _4756);
            _5223 = select(_4767, 0.0f, _4757);
            _5224 = select(_4767, (_5209 + _4935), _5209);
            _5225 = select(_4767, (_5210 + _4936), _5210);
            _5226 = select(_4767, (_5211 + _4937), _5211);
            _5227 = (select(_4767, _4941, (-0.0f - min(-0.0f, (-0.0f - _5180)))) * _3966);
            _5228 = (select(_4767, _4942, (-0.0f - min(-0.0f, (-0.0f - _5181)))) * _3967);
            _5229 = (select(_4767, _4943, (-0.0f - min(-0.0f, (-0.0f - _5182)))) * _3968);
          } else {
            if ((_4459 > 0.0f) || (_4460 > 0.0f)) {
              _4935 = 0.0f;
              _4936 = 0.0f;
              _4937 = 0.0f;
              _4938 = 0.0f;
              _4939 = 0.0f;
              _4940 = 0.0f;
              _4941 = 0.0f;
              _4942 = 0.0f;
              _4943 = 0.0f;
              if (!_4765) {
                if (_4766) {
                  _5109 = _4758;
                  _5110 = _4759;
                  _5111 = _4760;
                  _5112 = _4761;
                  _5113 = _4762;
                  _5114 = _4763;
                  if (_4343) {
                    _5117 = dot(float3(_1816, _1817, _1818), float3(_4338, _4339, _4340)) * 2.0f;
                    _5121 = _1816 - (_5117 * _4338);
                    _5122 = _1817 - (_5117 * _4339);
                    _5123 = _1818 - (_5117 * _4340);
                    _5124 = _4444 - _5121;
                    _5125 = _4445 - _5122;
                    _5126 = _4446 - _5123;
                    _5128 = rsqrt(dot(float3(_5124, _5125, _5126), float3(_5124, _5125, _5126)));  // [sem: invLength]
                    _5129 = _5124 * _5128;
                    _5130 = _5125 * _5128;
                    _5131 = _5126 * _5128;
                    _5132 = -0.0f - _5121;
                    _5133 = -0.0f - _5122;
                    _5134 = -0.0f - _5123;
                    _5136 = saturate(dot(float3(_4288, _4289, _4290), float3(_5132, _5133, _5134)));  // [sem: expr_sat]
                    _5138 = saturate(dot(float3(_4338, _4339, _4340), float3(_5129, _5130, _5131)));  // [sem: expr_sat]
                    _5140 = saturate(_4460);  // [sem: _4460_sat]
                    _5151 = 1.0f - ((_5138 * _5138) * 0.9f);
                    _5154 = (0.03183099f / (_5151 * _5151)) * (0.5f / ((((_5136 * 0.9f) + 0.1f) * _4460) + (_5136 * ((_4460 * 0.9f) + 0.1f))));
                    _5180 = _5112;
                    _5181 = _5113;
                    _5182 = _5114;
                    _5183 = dot(float3(_5132, _5133, _5134), float3(_5129, _5130, _5131));
                    _5184 = _5138;
                    _5185 = (((float(half(max((_5154 * _4256), 0.0f) * _5140)) - _5109) * 0.875f) + _5109);
                    _5186 = (((float(half(max((_5154 * _4257), 0.0f) * _5140)) - _5110) * 0.875f) + _5110);
                    _5187 = (((float(half(max((_5154 * _4258), 0.0f) * _5140)) - _5111) * 0.875f) + _5111);
                  } else {
                    _5180 = _5112;
                    _5181 = _5113;
                    _5182 = _5114;
                    _5183 = _4465;
                    _5184 = _4464;
                    _5185 = _5109;
                    _5186 = _5110;
                    _5187 = _5111;
                  }
                } else {
                  _4946 = saturate(_4459);  // [sem: _4459_sat]
                  _4947 = 1.0f - _4401;
                  _4948 = 1.0f - _4467;
                  _4949 = _4948 * _4948;
                  _4952 = ((_4949 * _4949) * _4948) + _4467;
                  _4953 = 1.0f - _4946;
                  _4954 = _4953 * _4953;
                  _4959 = 1.0f - _4462;
                  _4960 = _4959 * _4959;
                  _4987 = (_4946 * 0.31830987f) * ((((_4467 * ((((_4947 * 34.5f) + -59.0f) * _4947) + 24.5f)) * exp2(-0.0f - (max(((_4947 * 73.2f) + -21.2f), 8.9f) * sqrt(_4464)))) + _4952) + ((((1.0f - ((_4954 * _4954) * (_4953 * 0.75f))) * (1.0f - ((_4960 * _4960) * (_4959 * 0.75f)))) - _4952) * saturate((_4947 * 2.2f) + -0.5f)));
                  // RenoDX: >>> [Patch: FoliageTransmission] [Version: 1.16.00]
                  // Description: Vanilla shades foliage stencil materials (stencil ids 12..18) with an opaque
                  //              diffuse lobe, so leaves lit from behind go black instead of glowing. This adds a
                  //              back-lit transmission term on this direct-light branch: the helper returns the
                  //              light that passes through the leaf, stored in the accumulators declared before
                  //              the branch fan-out, plus a replacement scale for the front-facing diffuse lobe so
                  //              total energy stays bounded. When the helper reports no scale, a wrapped-diffuse
                  //              fallback derived from the raw N.L is used instead. The shader clones this
                  //              direct-lighting maths into several mutually exclusive material branches, so this
                  //              block is repeated in each clone and at most one copy runs per pixel. Gated by
                  //              FOLIAGE_TRANSMISSION; at 0 nothing here executes.
                  if (FOLIAGE_TRANSMISSION > 0.0f && (((uint)(_119 - 12) < 7u))) {
                    FoliageTransmissionResult _rndx_ftResult = FoliageTransmission(
                        float3(_1816, _1817, _1818),
                        float3(_4444, _4445, _4446),
                        float3(_4288, _4289, _4290),
                        _4459,
                        float3(_4256, _4257, _4258),
                        float3(_4234, _4235, _4236),
                        float3(_4448, _4449, _4450),
                        FOLIAGE_TRANSMISSION_THICKNESS);
                    _rndx_foliageTransR = _rndx_ftResult.transmission.x;
                    _rndx_foliageTransG = _rndx_ftResult.transmission.y;
                    _rndx_foliageTransB = _rndx_ftResult.transmission.z;
                    if (_rndx_ftResult.diffuseScale > 0.0f) {
                      _4987 *= _rndx_ftResult.diffuseScale;
                    } else {
                      float _rndx_wrap = 0.25f * (1.0f - FOLIAGE_TRANSMISSION_THICKNESS);
                      _4987 = max(0.0f, (_4459 + _rndx_wrap) / (1.0f + _rndx_wrap)) * 0.31830987334251404f * 0.75f;
                    }
                  }
                  // RenoDX: <<< [Patch: FoliageTransmission]
                  _4990 = saturate(1.0f - saturate(_4465));  // [sem: expr_sat]
                  _4991 = _4990 * _4990;
                  _4993 = (_4991 * _4991) * _4990;
                  _4996 = _4993 * saturate(_4398 * 50.0f);
                  _4997 = 1.0f - _4993;
                  _5001 = (_4997 * _4397) + _4996;
                  _5002 = (_4997 * _4398) + _4996;
                  _5003 = (_4997 * _4399) + _4996;
                  if (!(_4305 == 29)) {
                    _5005 = saturate(_4460);  // [sem: _4460_sat]
                    _5006 = 1.0f - _4400;
                    _5018 = (((_4464 * _4401) - _4464) * _4464) + 1.0f;
                    _5022 = (_4401 / ((_5018 * _5018) * 3.1415927f)) * (0.5f / ((((_4462 * _5006) + _4400) * _4460) + (_4462 * ((_4460 * _5006) + _4400))));
                    _5033 = (max((_5022 * _5001), 0.0f) * _5005);
                    _5034 = (max((_5022 * _5002), 0.0f) * _5005);
                    _5035 = (max((_5022 * _5003), 0.0f) * _5005);
                  } else {
                    _5033 = 0.0f;
                    _5034 = 0.0f;
                    _5035 = 0.0f;
                  }
                  if (_4374) {
                    if (_4305 == 65) {
                      _5079 = _5033;
                      _5080 = _5034;
                      _5081 = _5035;
                      _5086 = max(1e-06f, _exposure2.x);
                      _5095 = ((_4946 * 50.265484f) * exp2(log2(saturate(dot(float3(_4338, _4339, _4340), float3(_1816, _1817, _1818)))) * 16.0f)) / (((_5086 * _5086) * 1e+06f) + 1.0f);
                      _5180 = ((((_5095 * _4256) - _4987) * _4304) + _4987);
                      _5181 = ((((_5095 * _4257) - _4987) * _4304) + _4987);
                      _5182 = ((((_5095 * _4258) - _4987) * _4304) + _4987);
                      _5183 = _4465;
                      _5184 = _4464;
                      _5185 = _5079;
                      _5186 = _5080;
                      _5187 = _5081;
                    } else {
                      _5043 = 1.0f - _4406;
                      _5055 = (((_4464 * _4407) - _4464) * _4464) + 1.0f;
                      _5059 = (_4407 / ((_5055 * _5055) * 3.1415927f)) * (0.5f / ((((_4462 * _5043) + _4406) * _4460) + (_4462 * ((_4460 * _5043) + _4406))));
                      _5066 = saturate(_4460) * 0.39990234f;
                      _5074 = ((max((_5059 * _5001), 0.0f) * _5066) + (_5033 * 0.60009766f));
                      _5075 = ((max((_5059 * _5002), 0.0f) * _5066) + (_5034 * 0.60009766f));
                      _5076 = ((max((_5059 * _5003), 0.0f) * _5066) + (_5035 * 0.60009766f));
                      if (_4305 == 65) {
                        _5079 = _5074;
                        _5080 = _5075;
                        _5081 = _5076;
                        _5086 = max(1e-06f, _exposure2.x);
                        _5095 = ((_4946 * 50.265484f) * exp2(log2(saturate(dot(float3(_4338, _4339, _4340), float3(_1816, _1817, _1818)))) * 16.0f)) / (((_5086 * _5086) * 1e+06f) + 1.0f);
                        _5180 = ((((_5095 * _4256) - _4987) * _4304) + _4987);
                        _5181 = ((((_5095 * _4257) - _4987) * _4304) + _4987);
                        _5182 = ((((_5095 * _4258) - _4987) * _4304) + _4987);
                        _5183 = _4465;
                        _5184 = _4464;
                        _5185 = _5079;
                        _5186 = _5080;
                        _5187 = _5081;
                      } else {
                        _5109 = _5074;
                        _5110 = _5075;
                        _5111 = _5076;
                        _5112 = _4987;
                        _5113 = _4987;
                        _5114 = _4987;
                        if (_4343) {
                          _5117 = dot(float3(_1816, _1817, _1818), float3(_4338, _4339, _4340)) * 2.0f;
                          _5121 = _1816 - (_5117 * _4338);
                          _5122 = _1817 - (_5117 * _4339);
                          _5123 = _1818 - (_5117 * _4340);
                          _5124 = _4444 - _5121;
                          _5125 = _4445 - _5122;
                          _5126 = _4446 - _5123;
                          _5128 = rsqrt(dot(float3(_5124, _5125, _5126), float3(_5124, _5125, _5126)));  // [sem: invLength]
                          _5129 = _5124 * _5128;
                          _5130 = _5125 * _5128;
                          _5131 = _5126 * _5128;
                          _5132 = -0.0f - _5121;
                          _5133 = -0.0f - _5122;
                          _5134 = -0.0f - _5123;
                          _5136 = saturate(dot(float3(_4288, _4289, _4290), float3(_5132, _5133, _5134)));  // [sem: expr_sat]
                          _5138 = saturate(dot(float3(_4338, _4339, _4340), float3(_5129, _5130, _5131)));  // [sem: expr_sat]
                          _5140 = saturate(_4460);  // [sem: _4460_sat]
                          _5151 = 1.0f - ((_5138 * _5138) * 0.9f);
                          _5154 = (0.03183099f / (_5151 * _5151)) * (0.5f / ((((_5136 * 0.9f) + 0.1f) * _4460) + (_5136 * ((_4460 * 0.9f) + 0.1f))));
                          _5180 = _5112;
                          _5181 = _5113;
                          _5182 = _5114;
                          _5183 = dot(float3(_5132, _5133, _5134), float3(_5129, _5130, _5131));
                          _5184 = _5138;
                          _5185 = (((float(half(max((_5154 * _4256), 0.0f) * _5140)) - _5109) * 0.875f) + _5109);
                          _5186 = (((float(half(max((_5154 * _4257), 0.0f) * _5140)) - _5110) * 0.875f) + _5110);
                          _5187 = (((float(half(max((_5154 * _4258), 0.0f) * _5140)) - _5111) * 0.875f) + _5111);
                        } else {
                          _5180 = _5112;
                          _5181 = _5113;
                          _5182 = _5114;
                          _5183 = _4465;
                          _5184 = _4464;
                          _5185 = _5109;
                          _5186 = _5110;
                          _5187 = _5111;
                        }
                      }
                    }
                  } else {
                    _5074 = _5033;
                    _5075 = _5034;
                    _5076 = _5035;
                    if (_4305 == 65) {
                      _5079 = _5074;
                      _5080 = _5075;
                      _5081 = _5076;
                      _5086 = max(1e-06f, _exposure2.x);
                      _5095 = ((_4946 * 50.265484f) * exp2(log2(saturate(dot(float3(_4338, _4339, _4340), float3(_1816, _1817, _1818)))) * 16.0f)) / (((_5086 * _5086) * 1e+06f) + 1.0f);
                      _5180 = ((((_5095 * _4256) - _4987) * _4304) + _4987);
                      _5181 = ((((_5095 * _4257) - _4987) * _4304) + _4987);
                      _5182 = ((((_5095 * _4258) - _4987) * _4304) + _4987);
                      _5183 = _4465;
                      _5184 = _4464;
                      _5185 = _5079;
                      _5186 = _5080;
                      _5187 = _5081;
                    } else {
                      _5109 = _5074;
                      _5110 = _5075;
                      _5111 = _5076;
                      _5112 = _4987;
                      _5113 = _4987;
                      _5114 = _4987;
                      if (_4343) {
                        _5117 = dot(float3(_1816, _1817, _1818), float3(_4338, _4339, _4340)) * 2.0f;
                        _5121 = _1816 - (_5117 * _4338);
                        _5122 = _1817 - (_5117 * _4339);
                        _5123 = _1818 - (_5117 * _4340);
                        _5124 = _4444 - _5121;
                        _5125 = _4445 - _5122;
                        _5126 = _4446 - _5123;
                        _5128 = rsqrt(dot(float3(_5124, _5125, _5126), float3(_5124, _5125, _5126)));  // [sem: invLength]
                        _5129 = _5124 * _5128;
                        _5130 = _5125 * _5128;
                        _5131 = _5126 * _5128;
                        _5132 = -0.0f - _5121;
                        _5133 = -0.0f - _5122;
                        _5134 = -0.0f - _5123;
                        _5136 = saturate(dot(float3(_4288, _4289, _4290), float3(_5132, _5133, _5134)));  // [sem: expr_sat]
                        _5138 = saturate(dot(float3(_4338, _4339, _4340), float3(_5129, _5130, _5131)));  // [sem: expr_sat]
                        _5140 = saturate(_4460);  // [sem: _4460_sat]
                        _5151 = 1.0f - ((_5138 * _5138) * 0.9f);
                        _5154 = (0.03183099f / (_5151 * _5151)) * (0.5f / ((((_5136 * 0.9f) + 0.1f) * _4460) + (_5136 * ((_4460 * 0.9f) + 0.1f))));
                        _5180 = _5112;
                        _5181 = _5113;
                        _5182 = _5114;
                        _5183 = dot(float3(_5132, _5133, _5134), float3(_5129, _5130, _5131));
                        _5184 = _5138;
                        _5185 = (((float(half(max((_5154 * _4256), 0.0f) * _5140)) - _5109) * 0.875f) + _5109);
                        _5186 = (((float(half(max((_5154 * _4257), 0.0f) * _5140)) - _5110) * 0.875f) + _5110);
                        _5187 = (((float(half(max((_5154 * _4258), 0.0f) * _5140)) - _5111) * 0.875f) + _5111);
                      } else {
                        _5180 = _5112;
                        _5181 = _5113;
                        _5182 = _5114;
                        _5183 = _4465;
                        _5184 = _4464;
                        _5185 = _5109;
                        _5186 = _5110;
                        _5187 = _5111;
                      }
                    }
                  }
                }
              } else {
                _5180 = _4761;
                _5181 = _4762;
                _5182 = _4763;
                _5183 = _4465;
                _5184 = _4464;
                _5185 = _4758;
                _5186 = _4759;
                _5187 = _4760;
              }
              _5209 = select(_4767, _4938, _5185) * _3966;
              _5210 = select(_4767, _4939, _5186) * _3967;
              _5211 = select(_4767, _4940, _5187) * _3968;
              _5219 = _5183;
              _5220 = _5184;
              _5221 = select(_4767, 0.0f, _4755);
              _5222 = select(_4767, 0.0f, _4756);
              _5223 = select(_4767, 0.0f, _4757);
              _5224 = select(_4767, (_5209 + _4935), _5209);
              _5225 = select(_4767, (_5210 + _4936), _5210);
              _5226 = select(_4767, (_5211 + _4937), _5211);
              _5227 = (select(_4767, _4941, (-0.0f - min(-0.0f, (-0.0f - _5180)))) * _3966);
              _5228 = (select(_4767, _4942, (-0.0f - min(-0.0f, (-0.0f - _5181)))) * _3967);
              _5229 = (select(_4767, _4943, (-0.0f - min(-0.0f, (-0.0f - _5182)))) * _3968);
            } else {
              _5219 = _4465;
              _5220 = _4464;
              _5221 = _4755;
              _5222 = _4756;
              _5223 = _4757;
              _5224 = _4758;
              _5225 = _4759;
              _5226 = _4760;
              _5227 = _4761;
              _5228 = _4762;
              _5229 = _4763;
            }
          }
        } else {
          _5219 = _4465;
          _5220 = _4464;
          _5221 = _4755;
          _5222 = _4756;
          _5223 = _4757;
          _5224 = _4758;
          _5225 = _4759;
          _5226 = _4760;
          _5227 = _4761;
          _5228 = _4762;
          _5229 = _4763;
        }
      } else {
        _5219 = _4465;
        _5220 = _4464;
        _5221 = _4742;
        _5222 = _4743;
        _5223 = _4744;
        _5224 = _4751;
        _5225 = _4752;
        _5226 = _4753;
        _5227 = _4731;
        _5228 = _4733;
        _5229 = _4735;
      }
    } else {
      _4755 = 0.0f;
      _4756 = 0.0f;
      _4757 = 0.0f;
      _4758 = 0.0f;
      _4759 = 0.0f;
      _4760 = 0.0f;
      _4761 = 0.0f;
      _4762 = 0.0f;
      _4763 = 0.0f;
      if (!_4469) {
        _4765 = (_4305 == 33);
        _4766 = (_4305 == 54);
        _4767 = _4765 || _4766;
        if (_4767) {
          _4782 = (saturate(_4459) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _4309) + 1.0f);
          _4788 = max(dot(float3(_4256, _4257, _4258), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
          _4789 = sqrt(_4256);
          _4790 = sqrt(_4257);
          _4791 = sqrt(_4258);
          _4792 = _4789 - _4788;
          _4793 = _4790 - _4788;
          _4794 = _4791 - _4788;
          _4801 = saturate(1.0f - (pow(_4462, 4.0f)));  // [sem: expr_sat]
          _4814 = (((_4793 * _4306) + _4788) + ((_4793 * (_4309 - _4306)) * _4801)) * _4307;
          _4817 = saturate(1.0f - saturate(_4465));  // [sem: expr_sat]
          _4818 = _4817 * _4817;
          _4820 = (_4818 * _4818) * _4817;
          _4823 = _4820 * saturate(_4814 * 50.0f);
          _4824 = 1.0f - _4820;
          _4825 = _4824 * _4307;
          _4829 = (_4825 * (((_4792 * _4306) + _4788) + (_4801 * (_4792 * (_4309 - _4306))))) + _4823;
          _4830 = (_4824 * _4814) + _4823;
          _4831 = (_4825 * (((_4794 * _4306) + _4788) + ((_4794 * (_4309 - _4306)) * _4801))) + _4823;
          _4832 = min(_4464, 0.9999f);
          _4833 = _4832 * _4832;
          _4834 = 1.0f - _4833;
          _4846 = (((exp2(((-0.0f - _4833) / (_4834 * _4401)) * 1.442695f) * 4.0f) / (_4834 * _4834)) + 1.0f) / ((_4401 * 12.566371f) + 3.1415927f);
          _4850 = ((_4462 + _4460) - (_4462 * _4460)) * 4.0f;
          _4854 = (_4829 * _4846) / _4850;
          _4855 = (_4830 * _4846) / _4850;
          _4856 = (_4831 * _4846) / _4850;
          _4857 = 1.0f - _4400;
          _4869 = (((_4464 * _4401) - _4464) * _4464) + 1.0f;
          _4873 = (_4401 / ((_4869 * _4869) * 3.1415927f)) * (0.5f / ((((_4462 * _4857) + _4400) * _4459) + (_4462 * ((_4459 * _4857) + _4400))));
          _4889 = saturate(_4460);  // [sem: _4460_sat]
          _4894 = (_4308 * 1.5f) + 2.5f;
          _4895 = _4894 * _4894;
          _4905 = (max(0.0f, (0.3f - _4459)) * 0.25f) * ((exp2(_4895 * -0.48089835f) * 3.0f) + exp2(_4895 * -1.442695f));
          _4930 = (((1.0f - _4309) * 0.4774648f) * saturate(_4308)) * saturate((pow(_4464, 4.0f)) * exp2(log2(saturate(1.0f - abs(_4459))) * 3.0f));
          _4935 = (_4930 * _4789);
          _4936 = (_4930 * _4790);
          _4937 = (_4930 * _4791);
          _4938 = ((((max((_4873 * _4829), 0.0f) - _4854) * _4306) + _4854) * _4889);
          _4939 = ((((max((_4873 * _4830), 0.0f) - _4855) * _4306) + _4855) * _4889);
          _4940 = ((((max((_4873 * _4831), 0.0f) - _4856) * _4306) + _4856) * _4889);
          _4941 = (((_4789 * _3966) * _4905) + _4782);
          _4942 = (((_4790 * _3967) * _4905) + _4782);
          _4943 = (((_4791 * _3968) * _4905) + _4782);
          if (!_4765) {
            if (_4766) {
              _5109 = _4758;
              _5110 = _4759;
              _5111 = _4760;
              _5112 = _4761;
              _5113 = _4762;
              _5114 = _4763;
              if (_4343) {
                _5117 = dot(float3(_1816, _1817, _1818), float3(_4338, _4339, _4340)) * 2.0f;
                _5121 = _1816 - (_5117 * _4338);
                _5122 = _1817 - (_5117 * _4339);
                _5123 = _1818 - (_5117 * _4340);
                _5124 = _4444 - _5121;
                _5125 = _4445 - _5122;
                _5126 = _4446 - _5123;
                _5128 = rsqrt(dot(float3(_5124, _5125, _5126), float3(_5124, _5125, _5126)));  // [sem: invLength]
                _5129 = _5124 * _5128;
                _5130 = _5125 * _5128;
                _5131 = _5126 * _5128;
                _5132 = -0.0f - _5121;
                _5133 = -0.0f - _5122;
                _5134 = -0.0f - _5123;
                _5136 = saturate(dot(float3(_4288, _4289, _4290), float3(_5132, _5133, _5134)));  // [sem: expr_sat]
                _5138 = saturate(dot(float3(_4338, _4339, _4340), float3(_5129, _5130, _5131)));  // [sem: expr_sat]
                _5140 = saturate(_4460);  // [sem: _4460_sat]
                _5151 = 1.0f - ((_5138 * _5138) * 0.9f);
                _5154 = (0.03183099f / (_5151 * _5151)) * (0.5f / ((((_5136 * 0.9f) + 0.1f) * _4460) + (_5136 * ((_4460 * 0.9f) + 0.1f))));
                _5180 = _5112;
                _5181 = _5113;
                _5182 = _5114;
                _5183 = dot(float3(_5132, _5133, _5134), float3(_5129, _5130, _5131));
                _5184 = _5138;
                _5185 = (((float(half(max((_5154 * _4256), 0.0f) * _5140)) - _5109) * 0.875f) + _5109);
                _5186 = (((float(half(max((_5154 * _4257), 0.0f) * _5140)) - _5110) * 0.875f) + _5110);
                _5187 = (((float(half(max((_5154 * _4258), 0.0f) * _5140)) - _5111) * 0.875f) + _5111);
              } else {
                _5180 = _5112;
                _5181 = _5113;
                _5182 = _5114;
                _5183 = _4465;
                _5184 = _4464;
                _5185 = _5109;
                _5186 = _5110;
                _5187 = _5111;
              }
            } else {
              _4946 = saturate(_4459);  // [sem: _4459_sat]
              _4947 = 1.0f - _4401;
              _4948 = 1.0f - _4467;
              _4949 = _4948 * _4948;
              _4952 = ((_4949 * _4949) * _4948) + _4467;
              _4953 = 1.0f - _4946;
              _4954 = _4953 * _4953;
              _4959 = 1.0f - _4462;
              _4960 = _4959 * _4959;
              _4987 = (_4946 * 0.31830987f) * ((((_4467 * ((((_4947 * 34.5f) + -59.0f) * _4947) + 24.5f)) * exp2(-0.0f - (max(((_4947 * 73.2f) + -21.2f), 8.9f) * sqrt(_4464)))) + _4952) + ((((1.0f - ((_4954 * _4954) * (_4953 * 0.75f))) * (1.0f - ((_4960 * _4960) * (_4959 * 0.75f)))) - _4952) * saturate((_4947 * 2.2f) + -0.5f)));
              _4990 = saturate(1.0f - saturate(_4465));  // [sem: expr_sat]
              _4991 = _4990 * _4990;
              _4993 = (_4991 * _4991) * _4990;
              _4996 = _4993 * saturate(_4398 * 50.0f);
              _4997 = 1.0f - _4993;
              _5001 = (_4997 * _4397) + _4996;
              _5002 = (_4997 * _4398) + _4996;
              _5003 = (_4997 * _4399) + _4996;
              if (!(_4305 == 29)) {
                _5005 = saturate(_4460);  // [sem: _4460_sat]
                _5006 = 1.0f - _4400;
                _5018 = (((_4464 * _4401) - _4464) * _4464) + 1.0f;
                _5022 = (_4401 / ((_5018 * _5018) * 3.1415927f)) * (0.5f / ((((_4462 * _5006) + _4400) * _4460) + (_4462 * ((_4460 * _5006) + _4400))));
                _5033 = (max((_5022 * _5001), 0.0f) * _5005);
                _5034 = (max((_5022 * _5002), 0.0f) * _5005);
                _5035 = (max((_5022 * _5003), 0.0f) * _5005);
              } else {
                _5033 = 0.0f;
                _5034 = 0.0f;
                _5035 = 0.0f;
              }
              if (_4374) {
                if (_4305 == 65) {
                  _5079 = _5033;
                  _5080 = _5034;
                  _5081 = _5035;
                  _5086 = max(1e-06f, _exposure2.x);
                  _5095 = ((_4946 * 50.265484f) * exp2(log2(saturate(dot(float3(_4338, _4339, _4340), float3(_1816, _1817, _1818)))) * 16.0f)) / (((_5086 * _5086) * 1e+06f) + 1.0f);
                  _5180 = ((((_5095 * _4256) - _4987) * _4304) + _4987);
                  _5181 = ((((_5095 * _4257) - _4987) * _4304) + _4987);
                  _5182 = ((((_5095 * _4258) - _4987) * _4304) + _4987);
                  _5183 = _4465;
                  _5184 = _4464;
                  _5185 = _5079;
                  _5186 = _5080;
                  _5187 = _5081;
                } else {
                  _5043 = 1.0f - _4406;
                  _5055 = (((_4464 * _4407) - _4464) * _4464) + 1.0f;
                  _5059 = (_4407 / ((_5055 * _5055) * 3.1415927f)) * (0.5f / ((((_4462 * _5043) + _4406) * _4460) + (_4462 * ((_4460 * _5043) + _4406))));
                  _5066 = saturate(_4460) * 0.39990234f;
                  _5074 = ((max((_5059 * _5001), 0.0f) * _5066) + (_5033 * 0.60009766f));
                  _5075 = ((max((_5059 * _5002), 0.0f) * _5066) + (_5034 * 0.60009766f));
                  _5076 = ((max((_5059 * _5003), 0.0f) * _5066) + (_5035 * 0.60009766f));
                  if (_4305 == 65) {
                    _5079 = _5074;
                    _5080 = _5075;
                    _5081 = _5076;
                    _5086 = max(1e-06f, _exposure2.x);
                    _5095 = ((_4946 * 50.265484f) * exp2(log2(saturate(dot(float3(_4338, _4339, _4340), float3(_1816, _1817, _1818)))) * 16.0f)) / (((_5086 * _5086) * 1e+06f) + 1.0f);
                    _5180 = ((((_5095 * _4256) - _4987) * _4304) + _4987);
                    _5181 = ((((_5095 * _4257) - _4987) * _4304) + _4987);
                    _5182 = ((((_5095 * _4258) - _4987) * _4304) + _4987);
                    _5183 = _4465;
                    _5184 = _4464;
                    _5185 = _5079;
                    _5186 = _5080;
                    _5187 = _5081;
                  } else {
                    _5109 = _5074;
                    _5110 = _5075;
                    _5111 = _5076;
                    _5112 = _4987;
                    _5113 = _4987;
                    _5114 = _4987;
                    if (_4343) {
                      _5117 = dot(float3(_1816, _1817, _1818), float3(_4338, _4339, _4340)) * 2.0f;
                      _5121 = _1816 - (_5117 * _4338);
                      _5122 = _1817 - (_5117 * _4339);
                      _5123 = _1818 - (_5117 * _4340);
                      _5124 = _4444 - _5121;
                      _5125 = _4445 - _5122;
                      _5126 = _4446 - _5123;
                      _5128 = rsqrt(dot(float3(_5124, _5125, _5126), float3(_5124, _5125, _5126)));  // [sem: invLength]
                      _5129 = _5124 * _5128;
                      _5130 = _5125 * _5128;
                      _5131 = _5126 * _5128;
                      _5132 = -0.0f - _5121;
                      _5133 = -0.0f - _5122;
                      _5134 = -0.0f - _5123;
                      _5136 = saturate(dot(float3(_4288, _4289, _4290), float3(_5132, _5133, _5134)));  // [sem: expr_sat]
                      _5138 = saturate(dot(float3(_4338, _4339, _4340), float3(_5129, _5130, _5131)));  // [sem: expr_sat]
                      _5140 = saturate(_4460);  // [sem: _4460_sat]
                      _5151 = 1.0f - ((_5138 * _5138) * 0.9f);
                      _5154 = (0.03183099f / (_5151 * _5151)) * (0.5f / ((((_5136 * 0.9f) + 0.1f) * _4460) + (_5136 * ((_4460 * 0.9f) + 0.1f))));
                      _5180 = _5112;
                      _5181 = _5113;
                      _5182 = _5114;
                      _5183 = dot(float3(_5132, _5133, _5134), float3(_5129, _5130, _5131));
                      _5184 = _5138;
                      _5185 = (((float(half(max((_5154 * _4256), 0.0f) * _5140)) - _5109) * 0.875f) + _5109);
                      _5186 = (((float(half(max((_5154 * _4257), 0.0f) * _5140)) - _5110) * 0.875f) + _5110);
                      _5187 = (((float(half(max((_5154 * _4258), 0.0f) * _5140)) - _5111) * 0.875f) + _5111);
                    } else {
                      _5180 = _5112;
                      _5181 = _5113;
                      _5182 = _5114;
                      _5183 = _4465;
                      _5184 = _4464;
                      _5185 = _5109;
                      _5186 = _5110;
                      _5187 = _5111;
                    }
                  }
                }
              } else {
                _5074 = _5033;
                _5075 = _5034;
                _5076 = _5035;
                if (_4305 == 65) {
                  _5079 = _5074;
                  _5080 = _5075;
                  _5081 = _5076;
                  _5086 = max(1e-06f, _exposure2.x);
                  _5095 = ((_4946 * 50.265484f) * exp2(log2(saturate(dot(float3(_4338, _4339, _4340), float3(_1816, _1817, _1818)))) * 16.0f)) / (((_5086 * _5086) * 1e+06f) + 1.0f);
                  _5180 = ((((_5095 * _4256) - _4987) * _4304) + _4987);
                  _5181 = ((((_5095 * _4257) - _4987) * _4304) + _4987);
                  _5182 = ((((_5095 * _4258) - _4987) * _4304) + _4987);
                  _5183 = _4465;
                  _5184 = _4464;
                  _5185 = _5079;
                  _5186 = _5080;
                  _5187 = _5081;
                } else {
                  _5109 = _5074;
                  _5110 = _5075;
                  _5111 = _5076;
                  _5112 = _4987;
                  _5113 = _4987;
                  _5114 = _4987;
                  if (_4343) {
                    _5117 = dot(float3(_1816, _1817, _1818), float3(_4338, _4339, _4340)) * 2.0f;
                    _5121 = _1816 - (_5117 * _4338);
                    _5122 = _1817 - (_5117 * _4339);
                    _5123 = _1818 - (_5117 * _4340);
                    _5124 = _4444 - _5121;
                    _5125 = _4445 - _5122;
                    _5126 = _4446 - _5123;
                    _5128 = rsqrt(dot(float3(_5124, _5125, _5126), float3(_5124, _5125, _5126)));  // [sem: invLength]
                    _5129 = _5124 * _5128;
                    _5130 = _5125 * _5128;
                    _5131 = _5126 * _5128;
                    _5132 = -0.0f - _5121;
                    _5133 = -0.0f - _5122;
                    _5134 = -0.0f - _5123;
                    _5136 = saturate(dot(float3(_4288, _4289, _4290), float3(_5132, _5133, _5134)));  // [sem: expr_sat]
                    _5138 = saturate(dot(float3(_4338, _4339, _4340), float3(_5129, _5130, _5131)));  // [sem: expr_sat]
                    _5140 = saturate(_4460);  // [sem: _4460_sat]
                    _5151 = 1.0f - ((_5138 * _5138) * 0.9f);
                    _5154 = (0.03183099f / (_5151 * _5151)) * (0.5f / ((((_5136 * 0.9f) + 0.1f) * _4460) + (_5136 * ((_4460 * 0.9f) + 0.1f))));
                    _5180 = _5112;
                    _5181 = _5113;
                    _5182 = _5114;
                    _5183 = dot(float3(_5132, _5133, _5134), float3(_5129, _5130, _5131));
                    _5184 = _5138;
                    _5185 = (((float(half(max((_5154 * _4256), 0.0f) * _5140)) - _5109) * 0.875f) + _5109);
                    _5186 = (((float(half(max((_5154 * _4257), 0.0f) * _5140)) - _5110) * 0.875f) + _5110);
                    _5187 = (((float(half(max((_5154 * _4258), 0.0f) * _5140)) - _5111) * 0.875f) + _5111);
                  } else {
                    _5180 = _5112;
                    _5181 = _5113;
                    _5182 = _5114;
                    _5183 = _4465;
                    _5184 = _4464;
                    _5185 = _5109;
                    _5186 = _5110;
                    _5187 = _5111;
                  }
                }
              }
            }
          } else {
            _5180 = _4761;
            _5181 = _4762;
            _5182 = _4763;
            _5183 = _4465;
            _5184 = _4464;
            _5185 = _4758;
            _5186 = _4759;
            _5187 = _4760;
          }
          _5209 = select(_4767, _4938, _5185) * _3966;
          _5210 = select(_4767, _4939, _5186) * _3967;
          _5211 = select(_4767, _4940, _5187) * _3968;
          _5219 = _5183;
          _5220 = _5184;
          _5221 = select(_4767, 0.0f, _4755);
          _5222 = select(_4767, 0.0f, _4756);
          _5223 = select(_4767, 0.0f, _4757);
          _5224 = select(_4767, (_5209 + _4935), _5209);
          _5225 = select(_4767, (_5210 + _4936), _5210);
          _5226 = select(_4767, (_5211 + _4937), _5211);
          _5227 = (select(_4767, _4941, (-0.0f - min(-0.0f, (-0.0f - _5180)))) * _3966);
          _5228 = (select(_4767, _4942, (-0.0f - min(-0.0f, (-0.0f - _5181)))) * _3967);
          _5229 = (select(_4767, _4943, (-0.0f - min(-0.0f, (-0.0f - _5182)))) * _3968);
        } else {
          if ((_4459 > 0.0f) || (_4460 > 0.0f)) {
            _4935 = 0.0f;
            _4936 = 0.0f;
            _4937 = 0.0f;
            _4938 = 0.0f;
            _4939 = 0.0f;
            _4940 = 0.0f;
            _4941 = 0.0f;
            _4942 = 0.0f;
            _4943 = 0.0f;
            if (!_4765) {
              if (_4766) {
                _5109 = _4758;
                _5110 = _4759;
                _5111 = _4760;
                _5112 = _4761;
                _5113 = _4762;
                _5114 = _4763;
                if (_4343) {
                  _5117 = dot(float3(_1816, _1817, _1818), float3(_4338, _4339, _4340)) * 2.0f;
                  _5121 = _1816 - (_5117 * _4338);
                  _5122 = _1817 - (_5117 * _4339);
                  _5123 = _1818 - (_5117 * _4340);
                  _5124 = _4444 - _5121;
                  _5125 = _4445 - _5122;
                  _5126 = _4446 - _5123;
                  _5128 = rsqrt(dot(float3(_5124, _5125, _5126), float3(_5124, _5125, _5126)));  // [sem: invLength]
                  _5129 = _5124 * _5128;
                  _5130 = _5125 * _5128;
                  _5131 = _5126 * _5128;
                  _5132 = -0.0f - _5121;
                  _5133 = -0.0f - _5122;
                  _5134 = -0.0f - _5123;
                  _5136 = saturate(dot(float3(_4288, _4289, _4290), float3(_5132, _5133, _5134)));  // [sem: expr_sat]
                  _5138 = saturate(dot(float3(_4338, _4339, _4340), float3(_5129, _5130, _5131)));  // [sem: expr_sat]
                  _5140 = saturate(_4460);  // [sem: _4460_sat]
                  _5151 = 1.0f - ((_5138 * _5138) * 0.9f);
                  _5154 = (0.03183099f / (_5151 * _5151)) * (0.5f / ((((_5136 * 0.9f) + 0.1f) * _4460) + (_5136 * ((_4460 * 0.9f) + 0.1f))));
                  _5180 = _5112;
                  _5181 = _5113;
                  _5182 = _5114;
                  _5183 = dot(float3(_5132, _5133, _5134), float3(_5129, _5130, _5131));
                  _5184 = _5138;
                  _5185 = (((float(half(max((_5154 * _4256), 0.0f) * _5140)) - _5109) * 0.875f) + _5109);
                  _5186 = (((float(half(max((_5154 * _4257), 0.0f) * _5140)) - _5110) * 0.875f) + _5110);
                  _5187 = (((float(half(max((_5154 * _4258), 0.0f) * _5140)) - _5111) * 0.875f) + _5111);
                } else {
                  _5180 = _5112;
                  _5181 = _5113;
                  _5182 = _5114;
                  _5183 = _4465;
                  _5184 = _4464;
                  _5185 = _5109;
                  _5186 = _5110;
                  _5187 = _5111;
                }
              } else {
                _4946 = saturate(_4459);  // [sem: _4459_sat]
                _4947 = 1.0f - _4401;
                _4948 = 1.0f - _4467;
                _4949 = _4948 * _4948;
                _4952 = ((_4949 * _4949) * _4948) + _4467;
                _4953 = 1.0f - _4946;
                _4954 = _4953 * _4953;
                _4959 = 1.0f - _4462;
                _4960 = _4959 * _4959;
                _4987 = (_4946 * 0.31830987f) * ((((_4467 * ((((_4947 * 34.5f) + -59.0f) * _4947) + 24.5f)) * exp2(-0.0f - (max(((_4947 * 73.2f) + -21.2f), 8.9f) * sqrt(_4464)))) + _4952) + ((((1.0f - ((_4954 * _4954) * (_4953 * 0.75f))) * (1.0f - ((_4960 * _4960) * (_4959 * 0.75f)))) - _4952) * saturate((_4947 * 2.2f) + -0.5f)));
                _4990 = saturate(1.0f - saturate(_4465));  // [sem: expr_sat]
                _4991 = _4990 * _4990;
                _4993 = (_4991 * _4991) * _4990;
                _4996 = _4993 * saturate(_4398 * 50.0f);
                _4997 = 1.0f - _4993;
                _5001 = (_4997 * _4397) + _4996;
                _5002 = (_4997 * _4398) + _4996;
                _5003 = (_4997 * _4399) + _4996;
                if (!(_4305 == 29)) {
                  _5005 = saturate(_4460);  // [sem: _4460_sat]
                  _5006 = 1.0f - _4400;
                  _5018 = (((_4464 * _4401) - _4464) * _4464) + 1.0f;
                  _5022 = (_4401 / ((_5018 * _5018) * 3.1415927f)) * (0.5f / ((((_4462 * _5006) + _4400) * _4460) + (_4462 * ((_4460 * _5006) + _4400))));
                  _5033 = (max((_5022 * _5001), 0.0f) * _5005);
                  _5034 = (max((_5022 * _5002), 0.0f) * _5005);
                  _5035 = (max((_5022 * _5003), 0.0f) * _5005);
                } else {
                  _5033 = 0.0f;
                  _5034 = 0.0f;
                  _5035 = 0.0f;
                }
                if (_4374) {
                  if (_4305 == 65) {
                    _5079 = _5033;
                    _5080 = _5034;
                    _5081 = _5035;
                    _5086 = max(1e-06f, _exposure2.x);
                    _5095 = ((_4946 * 50.265484f) * exp2(log2(saturate(dot(float3(_4338, _4339, _4340), float3(_1816, _1817, _1818)))) * 16.0f)) / (((_5086 * _5086) * 1e+06f) + 1.0f);
                    _5180 = ((((_5095 * _4256) - _4987) * _4304) + _4987);
                    _5181 = ((((_5095 * _4257) - _4987) * _4304) + _4987);
                    _5182 = ((((_5095 * _4258) - _4987) * _4304) + _4987);
                    _5183 = _4465;
                    _5184 = _4464;
                    _5185 = _5079;
                    _5186 = _5080;
                    _5187 = _5081;
                  } else {
                    _5043 = 1.0f - _4406;
                    _5055 = (((_4464 * _4407) - _4464) * _4464) + 1.0f;
                    _5059 = (_4407 / ((_5055 * _5055) * 3.1415927f)) * (0.5f / ((((_4462 * _5043) + _4406) * _4460) + (_4462 * ((_4460 * _5043) + _4406))));
                    _5066 = saturate(_4460) * 0.39990234f;
                    _5074 = ((max((_5059 * _5001), 0.0f) * _5066) + (_5033 * 0.60009766f));
                    _5075 = ((max((_5059 * _5002), 0.0f) * _5066) + (_5034 * 0.60009766f));
                    _5076 = ((max((_5059 * _5003), 0.0f) * _5066) + (_5035 * 0.60009766f));
                    if (_4305 == 65) {
                      _5079 = _5074;
                      _5080 = _5075;
                      _5081 = _5076;
                      _5086 = max(1e-06f, _exposure2.x);
                      _5095 = ((_4946 * 50.265484f) * exp2(log2(saturate(dot(float3(_4338, _4339, _4340), float3(_1816, _1817, _1818)))) * 16.0f)) / (((_5086 * _5086) * 1e+06f) + 1.0f);
                      _5180 = ((((_5095 * _4256) - _4987) * _4304) + _4987);
                      _5181 = ((((_5095 * _4257) - _4987) * _4304) + _4987);
                      _5182 = ((((_5095 * _4258) - _4987) * _4304) + _4987);
                      _5183 = _4465;
                      _5184 = _4464;
                      _5185 = _5079;
                      _5186 = _5080;
                      _5187 = _5081;
                    } else {
                      _5109 = _5074;
                      _5110 = _5075;
                      _5111 = _5076;
                      _5112 = _4987;
                      _5113 = _4987;
                      _5114 = _4987;
                      if (_4343) {
                        _5117 = dot(float3(_1816, _1817, _1818), float3(_4338, _4339, _4340)) * 2.0f;
                        _5121 = _1816 - (_5117 * _4338);
                        _5122 = _1817 - (_5117 * _4339);
                        _5123 = _1818 - (_5117 * _4340);
                        _5124 = _4444 - _5121;
                        _5125 = _4445 - _5122;
                        _5126 = _4446 - _5123;
                        _5128 = rsqrt(dot(float3(_5124, _5125, _5126), float3(_5124, _5125, _5126)));  // [sem: invLength]
                        _5129 = _5124 * _5128;
                        _5130 = _5125 * _5128;
                        _5131 = _5126 * _5128;
                        _5132 = -0.0f - _5121;
                        _5133 = -0.0f - _5122;
                        _5134 = -0.0f - _5123;
                        _5136 = saturate(dot(float3(_4288, _4289, _4290), float3(_5132, _5133, _5134)));  // [sem: expr_sat]
                        _5138 = saturate(dot(float3(_4338, _4339, _4340), float3(_5129, _5130, _5131)));  // [sem: expr_sat]
                        _5140 = saturate(_4460);  // [sem: _4460_sat]
                        _5151 = 1.0f - ((_5138 * _5138) * 0.9f);
                        _5154 = (0.03183099f / (_5151 * _5151)) * (0.5f / ((((_5136 * 0.9f) + 0.1f) * _4460) + (_5136 * ((_4460 * 0.9f) + 0.1f))));
                        _5180 = _5112;
                        _5181 = _5113;
                        _5182 = _5114;
                        _5183 = dot(float3(_5132, _5133, _5134), float3(_5129, _5130, _5131));
                        _5184 = _5138;
                        _5185 = (((float(half(max((_5154 * _4256), 0.0f) * _5140)) - _5109) * 0.875f) + _5109);
                        _5186 = (((float(half(max((_5154 * _4257), 0.0f) * _5140)) - _5110) * 0.875f) + _5110);
                        _5187 = (((float(half(max((_5154 * _4258), 0.0f) * _5140)) - _5111) * 0.875f) + _5111);
                      } else {
                        _5180 = _5112;
                        _5181 = _5113;
                        _5182 = _5114;
                        _5183 = _4465;
                        _5184 = _4464;
                        _5185 = _5109;
                        _5186 = _5110;
                        _5187 = _5111;
                      }
                    }
                  }
                } else {
                  _5074 = _5033;
                  _5075 = _5034;
                  _5076 = _5035;
                  if (_4305 == 65) {
                    _5079 = _5074;
                    _5080 = _5075;
                    _5081 = _5076;
                    _5086 = max(1e-06f, _exposure2.x);
                    _5095 = ((_4946 * 50.265484f) * exp2(log2(saturate(dot(float3(_4338, _4339, _4340), float3(_1816, _1817, _1818)))) * 16.0f)) / (((_5086 * _5086) * 1e+06f) + 1.0f);
                    _5180 = ((((_5095 * _4256) - _4987) * _4304) + _4987);
                    _5181 = ((((_5095 * _4257) - _4987) * _4304) + _4987);
                    _5182 = ((((_5095 * _4258) - _4987) * _4304) + _4987);
                    _5183 = _4465;
                    _5184 = _4464;
                    _5185 = _5079;
                    _5186 = _5080;
                    _5187 = _5081;
                  } else {
                    _5109 = _5074;
                    _5110 = _5075;
                    _5111 = _5076;
                    _5112 = _4987;
                    _5113 = _4987;
                    _5114 = _4987;
                    if (_4343) {
                      _5117 = dot(float3(_1816, _1817, _1818), float3(_4338, _4339, _4340)) * 2.0f;
                      _5121 = _1816 - (_5117 * _4338);
                      _5122 = _1817 - (_5117 * _4339);
                      _5123 = _1818 - (_5117 * _4340);
                      _5124 = _4444 - _5121;
                      _5125 = _4445 - _5122;
                      _5126 = _4446 - _5123;
                      _5128 = rsqrt(dot(float3(_5124, _5125, _5126), float3(_5124, _5125, _5126)));  // [sem: invLength]
                      _5129 = _5124 * _5128;
                      _5130 = _5125 * _5128;
                      _5131 = _5126 * _5128;
                      _5132 = -0.0f - _5121;
                      _5133 = -0.0f - _5122;
                      _5134 = -0.0f - _5123;
                      _5136 = saturate(dot(float3(_4288, _4289, _4290), float3(_5132, _5133, _5134)));  // [sem: expr_sat]
                      _5138 = saturate(dot(float3(_4338, _4339, _4340), float3(_5129, _5130, _5131)));  // [sem: expr_sat]
                      _5140 = saturate(_4460);  // [sem: _4460_sat]
                      _5151 = 1.0f - ((_5138 * _5138) * 0.9f);
                      _5154 = (0.03183099f / (_5151 * _5151)) * (0.5f / ((((_5136 * 0.9f) + 0.1f) * _4460) + (_5136 * ((_4460 * 0.9f) + 0.1f))));
                      _5180 = _5112;
                      _5181 = _5113;
                      _5182 = _5114;
                      _5183 = dot(float3(_5132, _5133, _5134), float3(_5129, _5130, _5131));
                      _5184 = _5138;
                      _5185 = (((float(half(max((_5154 * _4256), 0.0f) * _5140)) - _5109) * 0.875f) + _5109);
                      _5186 = (((float(half(max((_5154 * _4257), 0.0f) * _5140)) - _5110) * 0.875f) + _5110);
                      _5187 = (((float(half(max((_5154 * _4258), 0.0f) * _5140)) - _5111) * 0.875f) + _5111);
                    } else {
                      _5180 = _5112;
                      _5181 = _5113;
                      _5182 = _5114;
                      _5183 = _4465;
                      _5184 = _4464;
                      _5185 = _5109;
                      _5186 = _5110;
                      _5187 = _5111;
                    }
                  }
                }
              }
            } else {
              _5180 = _4761;
              _5181 = _4762;
              _5182 = _4763;
              _5183 = _4465;
              _5184 = _4464;
              _5185 = _4758;
              _5186 = _4759;
              _5187 = _4760;
            }
            _5209 = select(_4767, _4938, _5185) * _3966;
            _5210 = select(_4767, _4939, _5186) * _3967;
            _5211 = select(_4767, _4940, _5187) * _3968;
            _5219 = _5183;
            _5220 = _5184;
            _5221 = select(_4767, 0.0f, _4755);
            _5222 = select(_4767, 0.0f, _4756);
            _5223 = select(_4767, 0.0f, _4757);
            _5224 = select(_4767, (_5209 + _4935), _5209);
            _5225 = select(_4767, (_5210 + _4936), _5210);
            _5226 = select(_4767, (_5211 + _4937), _5211);
            _5227 = (select(_4767, _4941, (-0.0f - min(-0.0f, (-0.0f - _5180)))) * _3966);
            _5228 = (select(_4767, _4942, (-0.0f - min(-0.0f, (-0.0f - _5181)))) * _3967);
            _5229 = (select(_4767, _4943, (-0.0f - min(-0.0f, (-0.0f - _5182)))) * _3968);
          } else {
            _5219 = _4465;
            _5220 = _4464;
            _5221 = _4755;
            _5222 = _4756;
            _5223 = _4757;
            _5224 = _4758;
            _5225 = _4759;
            _5226 = _4760;
            _5227 = _4761;
            _5228 = _4762;
            _5229 = _4763;
          }
        }
      } else {
        _5219 = _4465;
        _5220 = _4464;
        _5221 = _4755;
        _5222 = _4756;
        _5223 = _4757;
        _5224 = _4758;
        _5225 = _4759;
        _5226 = _4760;
        _5227 = _4761;
        _5228 = _4762;
        _5229 = _4763;
      }
    }
    if (_4427) {
      _5233 = max(0.0f, (0.3f - _4459)) * 0.23190688f;
      _5241 = ((_5233 * _3966) + _5227);
      _5242 = ((_5233 * _3967) + _5228);
      _5243 = ((_5233 * _3968) + _5229);
    } else {
      _5241 = _5227;
      _5242 = _5228;
      _5243 = _5229;
    }
    _5245 = 1.0f - (_5219 * 0.85f);
    if (_4374) {
      _5249 = max(4.0f, _4432);
      _5250 = _5249 * _5249;
      _5252 = exp2(_5250 * -225.4211f);
      _5257 = exp2(_5250 * -29.807749f);
      _5265 = exp2(_5250 * -7.7149463f);
      _5271 = exp2(_5250 * -2.5444357f);
      _5273 = _5271 * 0.007f;
      _5278 = exp2(_5250 * -0.72497237f);
      _5293 = saturate(dot(float3(_4444, _4445, _4446), float3((-0.0f - _3450), (-0.0f - _3451), (-0.0f - _3452))) + 0.3f) * 0.31830987f;
      _5586 = _3966;
      _5587 = _3967;
      _5588 = _3968;
      _5589 = _5221;
      _5590 = _5222;
      _5591 = _5223;
      _5592 = ((_5293 * ((((((_5257 * 0.1f) + (_5252 * 0.233f)) + (_5265 * 0.118f)) + (_5271 * 0.113f)) + (_5278 * 0.358f)) + (exp2(_5250 * -0.19469568f) * 0.078f))) + _5241);
      _5593 = ((_5293 * (((((_5257 * 0.336f) + (_5252 * 0.455f)) + (_5265 * 0.198f)) + _5273) + (_5278 * 0.004f))) + _5242);
      _5594 = ((_5293 * (((_5257 * 0.344f) + (_5252 * 0.649f)) + _5273)) + _5243);
      _5595 = _5592 * _4448;
      _5596 = _5593 * _4449;
      _5597 = _5594 * _4450;
      _5599 = (_5224 * _4448) * _5586;
      _5601 = (_5225 * _4449) * _5587;
      _5603 = (_5226 * _4450) * _5588;
      if (_4403) {
        _5605 = _5599;
        _5606 = _5601;
        _5607 = _5603;
        _5608 = _5595;
        _5609 = _5596;
        _5610 = _5597;
        _5611 = _5589;
        _5612 = _5590;
        _5613 = _5591;
        _5614 = _5586;
        _5615 = _5587;
        _5616 = _5588;
        if ((_123 < 1000.0f) && (_3953 == 0.0h)) {
          if (!(abs(_3451) > 0.99f)) {
            _5624 = -0.0f - _3452;
            _5626 = rsqrt(dot(float3(_5624, 0.0f, _3450), float3(_5624, 0.0f, _3450)));  // [sem: invLength]
            _5630 = (_5626 * _5624);
            _5631 = (_5626 * _3450);
          } else {
            _5630 = 1.0f;
            _5631 = 0.0f;
          }
          _5633 = -0.0f - (_3451 * _5631);
          _5636 = (_5631 * _3450) - (_5630 * _3452);
          _5637 = _5630 * _3451;
          _5639 = rsqrt(dot(float3(_5633, _5636, _5637), float3(_5633, _5636, _5637)));  // [sem: invLength]
          // [sem: _3__36__0__0__g_blueNoise_sampleLod]
          _5647 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5630, 0.0f, _5631), float3(_4046, _4047, _4049)), dot(float3((_5639 * _5633), (_5636 * _5639), (_5639 * _5637)), float3(_4046, _4047, _4049))), 0.0f);
          _5651 = _5647.x + -0.5f;
          _5652 = _5647.y + -0.5f;
          _5653 = _5647.z + -0.5f;
          _5655 = rsqrt(dot(float3(_5651, _5652, _5653), float3(_5651, _5652, _5653)));  // [sem: invLength]
          _5659 = (_5651 * _5655) + _4338;
          _5660 = (_5652 * _5655) + _4339;
          _5661 = (_5653 * _5655) + _4340;
          _5663 = rsqrt(dot(float3(_5659, _5660, _5661), float3(_5659, _5660, _5661)));  // [sem: invLength]
          _5664 = _5659 * _5663;
          _5665 = _5660 * _5663;
          _5666 = _5661 * _5663;
          _5678 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
          _5679 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
          _5682 = saturate(_5678 * _5678);  // [sem: expr_sat]
          _5683 = saturate(_5679 * _5679);  // [sem: expr_sat]
          _5697 = dot(float3((-0.0f - _5664), (-0.0f - _5665), (-0.0f - _5666)), float3(_4444, _4445, _4446));
          _5699 = saturate(dot(float3(_5664, _5665, _5666), float3(_1816, _1817, _1818)));  // [sem: expr_sat]
          _5701 = saturate(1.0f - _5219);  // [sem: expr_sat]
          _5702 = _5701 * _5701;
          _5704 = (_5702 * _5702) * _5701;
          _5720 = 1.0f - ((_5220 * _5220) * 0.9999f);
          _5727 = (max((((3.1830987e-05f / (_5720 * _5720)) * (0.5f / ((((_5699 * 0.9999f) + 0.0001f) * _5697) + (_5699 * ((_5697 * 0.9999f) + 0.0001f))))) * (lerp(_5704, 1.0f, 0.08f))), 0.0f) * saturate(_5697)) + (exp2(log2(saturate(dot(float3(_1816, _1817, _1818), float3(_5664, _5665, _5666)))) * 1024.0f) * 50.0f);
          // [sem: expr_sat]
          _5732 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_5683 * _5683) * (3.0f - (_5683 * 2.0f)))) * (1.0f - ((_5682 * _5682) * (3.0f - (_5682 * 2.0f)))));
          _5746 = _5608;
          _5747 = _5609;
          _5748 = _5610;
          _5749 = _5611;
          _5750 = _5612;
          _5751 = _5613;
          _5752 = ((((_5732 * _4448) * _5614) * _5727) + _5605);
          _5753 = ((((_5732 * _4449) * _5615) * _5727) + _5606);
          _5754 = ((((_5732 * _4450) * _5616) * _5727) + _5607);
        } else {
          _5746 = _5608;
          _5747 = _5609;
          _5748 = _5610;
          _5749 = _5611;
          _5750 = _5612;
          _5751 = _5613;
          _5752 = _5605;
          _5753 = _5606;
          _5754 = _5607;
        }
      } else {
        _5746 = _5595;
        _5747 = _5596;
        _5748 = _5597;
        _5749 = _5589;
        _5750 = _5590;
        _5751 = _5591;
        _5752 = _5599;
        _5753 = _5601;
        _5754 = _5603;
      }
    } else {
      if (_4470) {
        _5303 = dot(float3(_4256, _4257, _4258), float3(0.212671f, 0.71516f, 0.072169f)) * _renderParams2.w;
        _5306 = _5303 + (_1751 - (_5303 * _1751));
        _5308 = saturate(_123 + -7.0f);  // [sem: expr_sat]
        _5324 = (((pow(_3966, 1.2f)) - _3966) * _5308) + _3966;
        _5325 = (((pow(_3967, 1.2f)) - _3967) * _5308) + _3967;
        _5326 = (((pow(_3968, 1.2f)) - _3968) * _5308) + _3968;
        _5333 = saturate(abs(dot(float3(_4444, _4445, _4446), float3(_1699, _1700, _1701))));  // [sem: expr_sat]
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _5342 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_5333, _4266, saturate(sqrt(sqrt(_4256)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _5345 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_5333, _4266, saturate(sqrt(sqrt(_4257)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _5348 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_5333, _4266, saturate(sqrt(sqrt(_4258)))), 0.0f);
        _5357 = min(0.99f, _5342.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5358 = min(0.99f, _5345.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5359 = min(0.99f, _5348.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5360 = min(0.99f, _5342.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5361 = min(0.99f, _5345.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5362 = min(0.99f, _5348.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5363 = _5357 * _5357;
        _5364 = _5358 * _5358;
        _5365 = _5359 * _5359;
        _5366 = _5360 * _5360;
        _5367 = _5361 * _5361;
        _5368 = _5362 * _5362;
        _5369 = _5366 * _5360;
        _5370 = _5367 * _5361;
        _5371 = _5368 * _5362;
        _5372 = 1.0f - _5363;
        _5373 = 1.0f - _5364;
        _5374 = 1.0f - _5365;
        _5384 = _5372 * _5372;
        _5385 = _5373 * _5373;
        _5386 = _5374 * _5374;
        _5387 = _5384 * _5372;
        _5388 = _5385 * _5373;
        _5389 = _5386 * _5374;
        _5397 = min(max(_4266, 0.18f), 0.6f);
        _5398 = _5397 * _5397;
        _5399 = _5398 * 0.25f;
        _5400 = _5398 * 4.0f;
        _5402 = (_5358 + _5357) + _5359;
        _5403 = _5357 / _5402;
        _5404 = _5358 / _5402;
        _5405 = _5359 / _5402;
        _5406 = dot(float3(_5398, _5399, _5400), float3(_5403, _5404, _5405));
        _5407 = _5406 * _5406;
        _5411 = (asin(min(max(dot(float3(_1699, _1700, _1701), float3(_1816, _1817, _1818)), -1.0f), 1.0f)) + asin(min(max(dot(float3(_1699, _1700, _1701), float3(_4444, _4445, _4446)), -1.0f), 1.0f))) * 0.5f;
        _5412 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_5403, _5404, _5405));
        _5422 = _5412 * _5412;
        _5445 = (_5361 + _5360) + _5362;
        _5449 = dot(float3(_5398, _5399, _5400), float3((_5360 / _5445), (_5361 / _5445), (_5362 / _5445)));
        _5453 = sqrt((_5449 * _5449) + (_5407 * 2.0f));
        _5471 = (_5449 * 3.0f) + (_5406 * 2.0f);
        _5478 = (((_5369 + _5360) * ((_5363 * 0.7f) + 1.0f)) * _5453) / ((_5471 * _5369) + _5360);
        _5479 = (((_5370 + _5361) * ((_5364 * 0.7f) + 1.0f)) * _5453) / ((_5471 * _5370) + _5361);
        _5480 = (((_5371 + _5362) * ((_5365 * 0.7f) + 1.0f)) * _5453) / ((_5471 * _5371) + _5362);
        _5484 = _5411 - (((_5422 * (((_5363 * 4.0f) * _5366) + (_5384 * 2.0f))) * (1.0f - ((_5366 * 2.0f) / _5384))) / _5387);
        _5491 = _5411 - (((_5422 * (((_5364 * 4.0f) * _5367) + (_5385 * 2.0f))) * (1.0f - ((_5367 * 2.0f) / _5385))) / _5388);
        _5498 = _5411 - (((_5422 * (((_5365 * 4.0f) * _5368) + (_5386 * 2.0f))) * (1.0f - ((_5368 * 2.0f) / _5386))) / _5389);
        _5508 = ((1.0f - _1697) * 2.1f) * ((_5308 * 0.75f) + 0.25f);
        _5529 = (_1697 * 0.31830987f) * saturate(_4459);
        _5586 = _5324;
        _5587 = _5325;
        _5588 = _5326;
        _5589 = (((_5306 * _4448) * _5324) * ((((((_5369 * _5363) / _5387) + ((_5360 * _5363) / _5372)) * _5508) * exp2((((_5484 * _5484) * -0.5f) / ((_5478 * _5478) + _5407)) * 1.442695f)) + _5221));
        _5590 = (((_5306 * _4449) * _5325) * ((((((_5370 * _5364) / _5388) + ((_5361 * _5364) / _5373)) * _5508) * exp2((((_5491 * _5491) * -0.5f) / ((_5479 * _5479) + _5407)) * 1.442695f)) + _5222));
        _5591 = (((_5306 * _4450) * _5326) * ((((((_5371 * _5365) / _5389) + ((_5362 * _5365) / _5374)) * _5508) * exp2((((_5498 * _5498) * -0.5f) / ((_5480 * _5480) + _5407)) * 1.442695f)) + _5223));
        _5592 = (_5529 * _5324);
        _5593 = (_5529 * _5325);
        _5594 = (_5529 * _5326);
        _5595 = _5592 * _4448;
        _5596 = _5593 * _4449;
        _5597 = _5594 * _4450;
        _5599 = (_5224 * _4448) * _5586;
        _5601 = (_5225 * _4449) * _5587;
        _5603 = (_5226 * _4450) * _5588;
        if (_4403) {
          _5605 = _5599;
          _5606 = _5601;
          _5607 = _5603;
          _5608 = _5595;
          _5609 = _5596;
          _5610 = _5597;
          _5611 = _5589;
          _5612 = _5590;
          _5613 = _5591;
          _5614 = _5586;
          _5615 = _5587;
          _5616 = _5588;
          if ((_123 < 1000.0f) && (_3953 == 0.0h)) {
            if (!(abs(_3451) > 0.99f)) {
              _5624 = -0.0f - _3452;
              _5626 = rsqrt(dot(float3(_5624, 0.0f, _3450), float3(_5624, 0.0f, _3450)));  // [sem: invLength]
              _5630 = (_5626 * _5624);
              _5631 = (_5626 * _3450);
            } else {
              _5630 = 1.0f;
              _5631 = 0.0f;
            }
            _5633 = -0.0f - (_3451 * _5631);
            _5636 = (_5631 * _3450) - (_5630 * _3452);
            _5637 = _5630 * _3451;
            _5639 = rsqrt(dot(float3(_5633, _5636, _5637), float3(_5633, _5636, _5637)));  // [sem: invLength]
            // [sem: _3__36__0__0__g_blueNoise_sampleLod]
            _5647 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5630, 0.0f, _5631), float3(_4046, _4047, _4049)), dot(float3((_5639 * _5633), (_5636 * _5639), (_5639 * _5637)), float3(_4046, _4047, _4049))), 0.0f);
            _5651 = _5647.x + -0.5f;
            _5652 = _5647.y + -0.5f;
            _5653 = _5647.z + -0.5f;
            _5655 = rsqrt(dot(float3(_5651, _5652, _5653), float3(_5651, _5652, _5653)));  // [sem: invLength]
            _5659 = (_5651 * _5655) + _4338;
            _5660 = (_5652 * _5655) + _4339;
            _5661 = (_5653 * _5655) + _4340;
            _5663 = rsqrt(dot(float3(_5659, _5660, _5661), float3(_5659, _5660, _5661)));  // [sem: invLength]
            _5664 = _5659 * _5663;
            _5665 = _5660 * _5663;
            _5666 = _5661 * _5663;
            _5678 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
            _5679 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
            _5682 = saturate(_5678 * _5678);  // [sem: expr_sat]
            _5683 = saturate(_5679 * _5679);  // [sem: expr_sat]
            _5697 = dot(float3((-0.0f - _5664), (-0.0f - _5665), (-0.0f - _5666)), float3(_4444, _4445, _4446));
            _5699 = saturate(dot(float3(_5664, _5665, _5666), float3(_1816, _1817, _1818)));  // [sem: expr_sat]
            _5701 = saturate(1.0f - _5219);  // [sem: expr_sat]
            _5702 = _5701 * _5701;
            _5704 = (_5702 * _5702) * _5701;
            _5720 = 1.0f - ((_5220 * _5220) * 0.9999f);
            _5727 = (max((((3.1830987e-05f / (_5720 * _5720)) * (0.5f / ((((_5699 * 0.9999f) + 0.0001f) * _5697) + (_5699 * ((_5697 * 0.9999f) + 0.0001f))))) * (lerp(_5704, 1.0f, 0.08f))), 0.0f) * saturate(_5697)) + (exp2(log2(saturate(dot(float3(_1816, _1817, _1818), float3(_5664, _5665, _5666)))) * 1024.0f) * 50.0f);
            // [sem: expr_sat]
            _5732 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_5683 * _5683) * (3.0f - (_5683 * 2.0f)))) * (1.0f - ((_5682 * _5682) * (3.0f - (_5682 * 2.0f)))));
            _5746 = _5608;
            _5747 = _5609;
            _5748 = _5610;
            _5749 = _5611;
            _5750 = _5612;
            _5751 = _5613;
            _5752 = ((((_5732 * _4448) * _5614) * _5727) + _5605);
            _5753 = ((((_5732 * _4449) * _5615) * _5727) + _5606);
            _5754 = ((((_5732 * _4450) * _5616) * _5727) + _5607);
          } else {
            _5746 = _5608;
            _5747 = _5609;
            _5748 = _5610;
            _5749 = _5611;
            _5750 = _5612;
            _5751 = _5613;
            _5752 = _5605;
            _5753 = _5606;
            _5754 = _5607;
          }
        } else {
          _5746 = _5595;
          _5747 = _5596;
          _5748 = _5597;
          _5749 = _5589;
          _5750 = _5590;
          _5751 = _5591;
          _5752 = _5599;
          _5753 = _5601;
          _5754 = _5603;
        }
      } else {
        if (_4426) {
          if (_4305 == 97) {
            _5605 = ((_5224 * _4448) * _3966);
            _5606 = ((_5225 * _4449) * _3967);
            _5607 = ((_5226 * _4450) * _3968);
            _5608 = (_5241 * _4448);
            _5609 = (_5242 * _4449);
            _5610 = (_5243 * _4450);
            _5611 = _5221;
            _5612 = _5222;
            _5613 = _5223;
            _5614 = _3966;
            _5615 = _3967;
            _5616 = _3968;
            if ((_123 < 1000.0f) && (_3953 == 0.0h)) {
              if (!(abs(_3451) > 0.99f)) {
                _5624 = -0.0f - _3452;
                _5626 = rsqrt(dot(float3(_5624, 0.0f, _3450), float3(_5624, 0.0f, _3450)));  // [sem: invLength]
                _5630 = (_5626 * _5624);
                _5631 = (_5626 * _3450);
              } else {
                _5630 = 1.0f;
                _5631 = 0.0f;
              }
              _5633 = -0.0f - (_3451 * _5631);
              _5636 = (_5631 * _3450) - (_5630 * _3452);
              _5637 = _5630 * _3451;
              _5639 = rsqrt(dot(float3(_5633, _5636, _5637), float3(_5633, _5636, _5637)));  // [sem: invLength]
              // [sem: _3__36__0__0__g_blueNoise_sampleLod]
              _5647 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5630, 0.0f, _5631), float3(_4046, _4047, _4049)), dot(float3((_5639 * _5633), (_5636 * _5639), (_5639 * _5637)), float3(_4046, _4047, _4049))), 0.0f);
              _5651 = _5647.x + -0.5f;
              _5652 = _5647.y + -0.5f;
              _5653 = _5647.z + -0.5f;
              _5655 = rsqrt(dot(float3(_5651, _5652, _5653), float3(_5651, _5652, _5653)));  // [sem: invLength]
              _5659 = (_5651 * _5655) + _4338;
              _5660 = (_5652 * _5655) + _4339;
              _5661 = (_5653 * _5655) + _4340;
              _5663 = rsqrt(dot(float3(_5659, _5660, _5661), float3(_5659, _5660, _5661)));  // [sem: invLength]
              _5664 = _5659 * _5663;
              _5665 = _5660 * _5663;
              _5666 = _5661 * _5663;
              _5678 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
              _5679 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
              _5682 = saturate(_5678 * _5678);  // [sem: expr_sat]
              _5683 = saturate(_5679 * _5679);  // [sem: expr_sat]
              _5697 = dot(float3((-0.0f - _5664), (-0.0f - _5665), (-0.0f - _5666)), float3(_4444, _4445, _4446));
              _5699 = saturate(dot(float3(_5664, _5665, _5666), float3(_1816, _1817, _1818)));  // [sem: expr_sat]
              _5701 = saturate(1.0f - _5219);  // [sem: expr_sat]
              _5702 = _5701 * _5701;
              _5704 = (_5702 * _5702) * _5701;
              _5720 = 1.0f - ((_5220 * _5220) * 0.9999f);
              _5727 = (max((((3.1830987e-05f / (_5720 * _5720)) * (0.5f / ((((_5699 * 0.9999f) + 0.0001f) * _5697) + (_5699 * ((_5697 * 0.9999f) + 0.0001f))))) * (lerp(_5704, 1.0f, 0.08f))), 0.0f) * saturate(_5697)) + (exp2(log2(saturate(dot(float3(_1816, _1817, _1818), float3(_5664, _5665, _5666)))) * 1024.0f) * 50.0f);
              // [sem: expr_sat]
              _5732 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_5683 * _5683) * (3.0f - (_5683 * 2.0f)))) * (1.0f - ((_5682 * _5682) * (3.0f - (_5682 * 2.0f)))));
              _5746 = _5608;
              _5747 = _5609;
              _5748 = _5610;
              _5749 = _5611;
              _5750 = _5612;
              _5751 = _5613;
              _5752 = ((((_5732 * _4448) * _5614) * _5727) + _5605);
              _5753 = ((((_5732 * _4449) * _5615) * _5727) + _5606);
              _5754 = ((((_5732 * _4450) * _5616) * _5727) + _5607);
            } else {
              _5746 = _5608;
              _5747 = _5609;
              _5748 = _5610;
              _5749 = _5611;
              _5750 = _5612;
              _5751 = _5613;
              _5752 = _5605;
              _5753 = _5606;
              _5754 = _5607;
            }
          } else {
            if ((uint)((int)(_4305) + (int)(-105)) < (uint)2) {
              _5746 = (_5241 * _4448);
              _5747 = (_5242 * _4449);
              _5748 = (_5243 * _4450);
              _5749 = _5221;
              _5750 = _5222;
              _5751 = _5223;
              _5752 = ((_5224 * _4448) * _3966);
              _5753 = ((_5225 * _4449) * _3967);
              _5754 = ((_5226 * _4450) * _3968);
            } else {
              if (!(_4432 >= 999.9f)) {
                _5560 = ((max(0.002f, _4432) * 0.4f) / ((_4304 * 100.0f) + 0.1f));
              } else {
                _5560 = 1000.0f;
              }
              _5561 = _5560 * _5560;
              _5571 = (((_4304 * 0.25f) * (0.022082746f / (_5245 * _5245))) * max(0.0f, (0.3f - _4459))) * ((exp2(_5561 * -0.48089835f) * 3.0f) + exp2(_5561 * -1.442695f));
              _5586 = _3966;
              _5587 = _3967;
              _5588 = _3968;
              _5589 = _5221;
              _5590 = _5222;
              _5591 = _5223;
              _5592 = (_5571 + _5241);
              _5593 = (_5571 + _5242);
              _5594 = (_5571 + _5243);
              _5595 = _5592 * _4448;
              _5596 = _5593 * _4449;
              _5597 = _5594 * _4450;
              _5599 = (_5224 * _4448) * _5586;
              _5601 = (_5225 * _4449) * _5587;
              _5603 = (_5226 * _4450) * _5588;
              if (_4403) {
                _5605 = _5599;
                _5606 = _5601;
                _5607 = _5603;
                _5608 = _5595;
                _5609 = _5596;
                _5610 = _5597;
                _5611 = _5589;
                _5612 = _5590;
                _5613 = _5591;
                _5614 = _5586;
                _5615 = _5587;
                _5616 = _5588;
                if ((_123 < 1000.0f) && (_3953 == 0.0h)) {
                  if (!(abs(_3451) > 0.99f)) {
                    _5624 = -0.0f - _3452;
                    _5626 = rsqrt(dot(float3(_5624, 0.0f, _3450), float3(_5624, 0.0f, _3450)));  // [sem: invLength]
                    _5630 = (_5626 * _5624);
                    _5631 = (_5626 * _3450);
                  } else {
                    _5630 = 1.0f;
                    _5631 = 0.0f;
                  }
                  _5633 = -0.0f - (_3451 * _5631);
                  _5636 = (_5631 * _3450) - (_5630 * _3452);
                  _5637 = _5630 * _3451;
                  _5639 = rsqrt(dot(float3(_5633, _5636, _5637), float3(_5633, _5636, _5637)));  // [sem: invLength]
                  // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                  _5647 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5630, 0.0f, _5631), float3(_4046, _4047, _4049)), dot(float3((_5639 * _5633), (_5636 * _5639), (_5639 * _5637)), float3(_4046, _4047, _4049))), 0.0f);
                  _5651 = _5647.x + -0.5f;
                  _5652 = _5647.y + -0.5f;
                  _5653 = _5647.z + -0.5f;
                  _5655 = rsqrt(dot(float3(_5651, _5652, _5653), float3(_5651, _5652, _5653)));  // [sem: invLength]
                  _5659 = (_5651 * _5655) + _4338;
                  _5660 = (_5652 * _5655) + _4339;
                  _5661 = (_5653 * _5655) + _4340;
                  _5663 = rsqrt(dot(float3(_5659, _5660, _5661), float3(_5659, _5660, _5661)));  // [sem: invLength]
                  _5664 = _5659 * _5663;
                  _5665 = _5660 * _5663;
                  _5666 = _5661 * _5663;
                  _5678 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
                  _5679 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
                  _5682 = saturate(_5678 * _5678);  // [sem: expr_sat]
                  _5683 = saturate(_5679 * _5679);  // [sem: expr_sat]
                  _5697 = dot(float3((-0.0f - _5664), (-0.0f - _5665), (-0.0f - _5666)), float3(_4444, _4445, _4446));
                  _5699 = saturate(dot(float3(_5664, _5665, _5666), float3(_1816, _1817, _1818)));  // [sem: expr_sat]
                  _5701 = saturate(1.0f - _5219);  // [sem: expr_sat]
                  _5702 = _5701 * _5701;
                  _5704 = (_5702 * _5702) * _5701;
                  _5720 = 1.0f - ((_5220 * _5220) * 0.9999f);
                  _5727 = (max((((3.1830987e-05f / (_5720 * _5720)) * (0.5f / ((((_5699 * 0.9999f) + 0.0001f) * _5697) + (_5699 * ((_5697 * 0.9999f) + 0.0001f))))) * (lerp(_5704, 1.0f, 0.08f))), 0.0f) * saturate(_5697)) + (exp2(log2(saturate(dot(float3(_1816, _1817, _1818), float3(_5664, _5665, _5666)))) * 1024.0f) * 50.0f);
                  // [sem: expr_sat]
                  _5732 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_5683 * _5683) * (3.0f - (_5683 * 2.0f)))) * (1.0f - ((_5682 * _5682) * (3.0f - (_5682 * 2.0f)))));
                  _5746 = _5608;
                  _5747 = _5609;
                  _5748 = _5610;
                  _5749 = _5611;
                  _5750 = _5612;
                  _5751 = _5613;
                  _5752 = ((((_5732 * _4448) * _5614) * _5727) + _5605);
                  _5753 = ((((_5732 * _4449) * _5615) * _5727) + _5606);
                  _5754 = ((((_5732 * _4450) * _5616) * _5727) + _5607);
                } else {
                  _5746 = _5608;
                  _5747 = _5609;
                  _5748 = _5610;
                  _5749 = _5611;
                  _5750 = _5612;
                  _5751 = _5613;
                  _5752 = _5605;
                  _5753 = _5606;
                  _5754 = _5607;
                }
              } else {
                _5746 = _5595;
                _5747 = _5596;
                _5748 = _5597;
                _5749 = _5589;
                _5750 = _5590;
                _5751 = _5591;
                _5752 = _5599;
                _5753 = _5601;
                _5754 = _5603;
              }
            }
          }
        } else {
          _5586 = _3966;
          _5587 = _3967;
          _5588 = _3968;
          _5589 = _5221;
          _5590 = _5222;
          _5591 = _5223;
          _5592 = _5241;
          _5593 = _5242;
          _5594 = _5243;
          _5595 = _5592 * _4448;
          _5596 = _5593 * _4449;
          _5597 = _5594 * _4450;
          _5599 = (_5224 * _4448) * _5586;
          _5601 = (_5225 * _4449) * _5587;
          _5603 = (_5226 * _4450) * _5588;
          if (_4403) {
            _5605 = _5599;
            _5606 = _5601;
            _5607 = _5603;
            _5608 = _5595;
            _5609 = _5596;
            _5610 = _5597;
            _5611 = _5589;
            _5612 = _5590;
            _5613 = _5591;
            _5614 = _5586;
            _5615 = _5587;
            _5616 = _5588;
            if ((_123 < 1000.0f) && (_3953 == 0.0h)) {
              if (!(abs(_3451) > 0.99f)) {
                _5624 = -0.0f - _3452;
                _5626 = rsqrt(dot(float3(_5624, 0.0f, _3450), float3(_5624, 0.0f, _3450)));  // [sem: invLength]
                _5630 = (_5626 * _5624);
                _5631 = (_5626 * _3450);
              } else {
                _5630 = 1.0f;
                _5631 = 0.0f;
              }
              _5633 = -0.0f - (_3451 * _5631);
              _5636 = (_5631 * _3450) - (_5630 * _3452);
              _5637 = _5630 * _3451;
              _5639 = rsqrt(dot(float3(_5633, _5636, _5637), float3(_5633, _5636, _5637)));  // [sem: invLength]
              // [sem: _3__36__0__0__g_blueNoise_sampleLod]
              _5647 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5630, 0.0f, _5631), float3(_4046, _4047, _4049)), dot(float3((_5639 * _5633), (_5636 * _5639), (_5639 * _5637)), float3(_4046, _4047, _4049))), 0.0f);
              _5651 = _5647.x + -0.5f;
              _5652 = _5647.y + -0.5f;
              _5653 = _5647.z + -0.5f;
              _5655 = rsqrt(dot(float3(_5651, _5652, _5653), float3(_5651, _5652, _5653)));  // [sem: invLength]
              _5659 = (_5651 * _5655) + _4338;
              _5660 = (_5652 * _5655) + _4339;
              _5661 = (_5653 * _5655) + _4340;
              _5663 = rsqrt(dot(float3(_5659, _5660, _5661), float3(_5659, _5660, _5661)));  // [sem: invLength]
              _5664 = _5659 * _5663;
              _5665 = _5660 * _5663;
              _5666 = _5661 * _5663;
              _5678 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
              _5679 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
              _5682 = saturate(_5678 * _5678);  // [sem: expr_sat]
              _5683 = saturate(_5679 * _5679);  // [sem: expr_sat]
              _5697 = dot(float3((-0.0f - _5664), (-0.0f - _5665), (-0.0f - _5666)), float3(_4444, _4445, _4446));
              _5699 = saturate(dot(float3(_5664, _5665, _5666), float3(_1816, _1817, _1818)));  // [sem: expr_sat]
              _5701 = saturate(1.0f - _5219);  // [sem: expr_sat]
              _5702 = _5701 * _5701;
              _5704 = (_5702 * _5702) * _5701;
              _5720 = 1.0f - ((_5220 * _5220) * 0.9999f);
              _5727 = (max((((3.1830987e-05f / (_5720 * _5720)) * (0.5f / ((((_5699 * 0.9999f) + 0.0001f) * _5697) + (_5699 * ((_5697 * 0.9999f) + 0.0001f))))) * (lerp(_5704, 1.0f, 0.08f))), 0.0f) * saturate(_5697)) + (exp2(log2(saturate(dot(float3(_1816, _1817, _1818), float3(_5664, _5665, _5666)))) * 1024.0f) * 50.0f);
              // [sem: expr_sat]
              _5732 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_5683 * _5683) * (3.0f - (_5683 * 2.0f)))) * (1.0f - ((_5682 * _5682) * (3.0f - (_5682 * 2.0f)))));
              _5746 = _5608;
              _5747 = _5609;
              _5748 = _5610;
              _5749 = _5611;
              _5750 = _5612;
              _5751 = _5613;
              _5752 = ((((_5732 * _4448) * _5614) * _5727) + _5605);
              _5753 = ((((_5732 * _4449) * _5615) * _5727) + _5606);
              _5754 = ((((_5732 * _4450) * _5616) * _5727) + _5607);
            } else {
              _5746 = _5608;
              _5747 = _5609;
              _5748 = _5610;
              _5749 = _5611;
              _5750 = _5612;
              _5751 = _5613;
              _5752 = _5605;
              _5753 = _5606;
              _5754 = _5607;
            }
          } else {
            _5746 = _5595;
            _5747 = _5596;
            _5748 = _5597;
            _5749 = _5589;
            _5750 = _5590;
            _5751 = _5591;
            _5752 = _5599;
            _5753 = _5601;
            _5754 = _5603;
          }
        }
      }
    }
    _5761 = _5746 + _3954;
    _5762 = _5747 + _3955;
    _5763 = _5748 + _3956;
    // RenoDX: >>> [Patch: FoliageTransmission] [Version: 1.16.00]
    // Description: Adds the gated foliage transmission accumulated above to the three clean-decompile direct-diffuse outputs after all native component equations have completed. With the feature disabled the accumulators are zero, so this insertion is exactly neutral.
    _5761 += _rndx_foliageTransR;
    _5762 += _rndx_foliageTransG;
    _5763 += _rndx_foliageTransB;
    // RenoDX: <<< [Patch: FoliageTransmission]
    _5766 = (uint)((uint)(_frameNumber.x)) * (uint)(13);
    [branch]
    if ((((int)((int)((uint)((uint)(_5766)) + (uint)((uint)(_101)))) | (int)((int)((uint)((uint)(_5766)) + (uint)((uint)(_103))))) & 31) == 0) {
      __3__38__0__1__g_sceneColorLightingOnlyForAwbUAV[int2(((int)(_101) >> 5), ((int)(_103) >> 5))] = float4((half)(half(_5761)), (half)(half(_5762)), (half)(half(_5763)), 1.0f);
    }
    _5781 = ((uint)(_4305 & 24) > (uint)23);
    if (_4377) {
      _5798 = saturate(exp2((_4372 * _4372) * (_123 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _5798 = select((_cavityParams.z > 0.0f), select(_188, 0.0f, _1810), 1.0f);  // [sem: expr_sat]
    }
    _5813 = select(_4374, 1.0f, (select((_cavityParams.x == 0.0f), 1.0f, _5798) * select((_187 && _5781), (1.0f - _1810), 1.0f)));
    _5817 = min(60000.0f, (_5813 * (((_3669 * _3406) * _3674) - min(0.0f, (-0.0f - _5752)))));
    _5818 = min(60000.0f, (_5813 * (((_3670 * _3407) * _3674) - min(0.0f, (-0.0f - _5753)))));
    _5819 = min(60000.0f, (_5813 * (((_3671 * _3408) * _3674) - min(0.0f, (-0.0f - _5754)))));
    _5822 = 1.0f - _renderParams.x;
    _5829 = half((_renderParams.x * _4256) + _5822);
    _5830 = half((_renderParams.x * _4257) + _5822);
    _5831 = half((_renderParams.x * _4258) + _5822);
    if (_4374 && (_renderParams2.x == 0.0f)) {
      _5847 = (half)(exp2((half)((half)(log2(_5829)) * 0.5h)));
      _5848 = (half)(exp2((half)((half)(log2(_5830)) * 0.5h)));
      _5849 = (half)(exp2((half)((half)(log2(_5831)) * 0.5h)));
    } else {
      _5847 = _5829;
      _5848 = _5830;
      _5849 = _5831;
    }
    _5854 = select(((_4373 == 54) || ((_4305 & -5) == 33)), 0.0f, _3953);
    _5855 = float(_5847);
    _5856 = float(_5848);
    _5857 = float(_5849);
    if (_4346) {
      _5864 = saturate(((_5856 + _5855) + _5857) * 1.2f);  // [sem: expr_sat]
    } else {
      _5864 = 1.0f;  // [sem: expr_sat]
    }
    _5865 = float(_5854);
    _5871 = (0.7f / min(max(max(max(_5855, _5856), _5857), 0.01f), 0.7f)) * _5864;
    _5878 = ((_5871 * _5855) + -0.04f) * _5865;
    _5879 = ((_5871 * _5856) + -0.04f) * _5865;
    _5880 = ((_5871 * _5857) + -0.04f) * _5865;
    _5881 = _5878 + 0.04f;
    _5882 = _5879 + 0.04f;
    _5883 = _5880 + 0.04f;
    if (_4403 || (_4469 || (_4468 || ((_4305 == 33) || (_4305 == 54))))) {
      // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
      _5895 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__3__40__0__0__g_samplerClamp, float2(min(0.99f, _1824), (1.0f - max(0.02f, float(_279)))), 0.0f);
      _5899 = _5895.x;
      _5900 = _5895.y;
    } else {
      _5899 = _3667;
      _5900 = _3668;
    }
    _5904 = (_5899 * _5881) + _5900;
    _5905 = (_5899 * _5882) + _5900;
    _5906 = (_5899 * _5883) + _5900;
    _5908 = (1.0f - _5899) - _5900;
    _5915 = ((0.96f - _5878) * 0.04761905f) + _5881;
    _5916 = ((0.96f - _5879) * 0.04761905f) + _5882;
    _5917 = ((0.96f - _5880) * 0.04761905f) + _5883;
    _5934 = saturate(1.0f - _3948);  // [sem: expr_sat]
    _5935 = (((_5904 * _5915) / (1.0f - (_5908 * _5915))) * _5908) * _5934;
    _5936 = (((_5905 * _5916) / (1.0f - (_5908 * _5916))) * _5908) * _5934;
    _5937 = (((_5906 * _5917) / (1.0f - (_5908 * _5917))) * _5908) * _5934;
    _5948 = float(1.0h - _5854);
    _5958 = half(((_5855 * _5948) * saturate((1.0f - _5904) - _5935)) + _5935);
    _5959 = half(((_5856 * _5948) * saturate((1.0f - _5905) - _5936)) + _5936);
    _5960 = half(((_5857 * _5948) * saturate((1.0f - _5906) - _5937)) + _5937);
    _5962 = float(_5958);
    _5963 = float(_5959);
    _5964 = float(_5960);
    if (_4305 == 65) {
      _5968 = max(1e-06f, _exposure2.x);
      _5976 = ((pow(_4462, 16.0f)) * 50.265484f) / (((_5968 * _5968) * 1e+06f) + 1.0f);
      _5993 = (((((_5962 * _5761) * _5976) - _5761) * _1774) + _5761);
      _5994 = (((((_5963 * _5762) * _5976) - _5762) * _1774) + _5762);
      _5995 = (((((_5964 * _5763) * _5976) - _5763) * _1774) + _5763);
    } else {
      _5993 = _5761;
      _5994 = _5762;
      _5995 = _5763;
    }
    _5999 = (min(65535.0f, _5749) + _3957) + (_5993 * _5962);
    _6000 = (min(65535.0f, _5750) + _3958) + (_5994 * _5963);
    _6001 = (min(65535.0f, _5751) + _3959) + (_5995 * _5964);
    _6030 = exp2((saturate(_1075) * 20.0f) + -8.0f) + -0.00390625f;
    _6031 = _6030 * select((_1072 < 0.04045f), (_1072 * 0.07739938f), exp2(log2((_1072 + 0.055f) * 0.94786733f) * 2.4f));
    _6032 = _6030 * select((_1073 < 0.04045f), (_1073 * 0.07739938f), exp2(log2((_1073 + 0.055f) * 0.94786733f) * 2.4f));
    _6033 = _6030 * select((_1074 < 0.04045f), (_1074 * 0.07739938f), exp2(log2((_1074 + 0.055f) * 0.94786733f) * 2.4f));
    _6046 = ((_6031 * 0.61312f) + (_6032 * 0.33951f)) + (_6033 * 0.04737f);
    _6047 = ((_6031 * 0.0702f) + (_6032 * 0.91636f)) + (_6033 * 0.01345f);
    _6048 = ((_6031 * 0.02062f) + (_6032 * 0.10958f)) + (_6033 * 0.8698f);
    if (_1006) {
      _6054 = (_6046 + _5999);
      _6055 = (_6047 + _6000);
      _6056 = (_6048 + _6001);
    } else {
      _6054 = _5999;
      _6055 = _6000;
      _6056 = _6001;
    }
    _6060 = _6054 + (_5817 * _5865);
    _6061 = _6055 + (_5818 * _5865);
    _6062 = _6056 + (_5819 * _5865);
    if (!(((_131 || _133) || _135) || _137)) {
      _6064 = QuadReadLaneAt(_6060, 0);
      _6065 = QuadReadLaneAt(_6061, 0);
      _6066 = QuadReadLaneAt(_6062, 0);
      _6067 = QuadReadLaneAt(_6060, 1);
      _6068 = QuadReadLaneAt(_6061, 1);
      _6069 = QuadReadLaneAt(_6062, 1);
      _6073 = QuadReadLaneAt(_6060, 2);
      _6074 = QuadReadLaneAt(_6061, 2);
      _6075 = QuadReadLaneAt(_6062, 2);
      _6079 = QuadReadLaneAt(_6060, 3);
      _6080 = QuadReadLaneAt(_6061, 3);
      _6081 = QuadReadLaneAt(_6062, 3);
      _6089 = ((((_6067 + _6064) + _6073) + _6079) * 0.25f);
      _6090 = ((((_6068 + _6065) + _6074) + _6080) * 0.25f);
      _6091 = ((((_6069 + _6066) + _6075) + _6081) * 0.25f);
    } else {
      _6089 = _6060;
      _6090 = _6061;
      _6091 = _6062;
    }
    [branch]
    if ((((int)(_103) | (int)(_101)) & 1) == 0) {
      _6096 = dot(float3(_6089, _6090, _6091), float3(0.212671f, 0.71516f, 0.072169f));
      __3__38__0__1__g_diffuseHalfPrevUAV[int2(((int)(_101) >> 1), ((int)(_103) >> 1))] = float4(min(60000.0f, _6089), min(60000.0f, _6090), min(60000.0f, _6091), min(60000.0f, select((_2389 != 0), (-0.0f - _6096), _6096)));
    }
    if (_5781) {
      _6117 = ((_5854 == 0.0h) && (((_5958 < 0.010002136h) && (_5959 < 0.010002136h)) && (_5960 < 0.010002136h)));
    } else {
      _6117 = false;
    }
    if ((_5781 || ((_4305 == 96) || (_4469 || ((_4305 & -4) == 64)))) || ((_123 <= 10.0f) && _4403)) {
      __3__38__0__1__g_sceneSpecularUAV[int2(_101, _103)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _5817)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _5818)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _5819)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3420)))))));
      _6150 = _6054;
      _6151 = _6055;
      _6152 = _6056;
    } else {
      _6150 = (_6054 + _5817);
      _6151 = (_6055 + _5818);
      _6152 = (_6056 + _5819);
    }
    if (_1006 && ((uint)((int)(_4305) + (int)(-52)) > (uint)15)) {
      _6157 = dot(float3(_6046, _6047, _6048), float3(0.212671f, 0.71516f, 0.072169f));
      _6161 = max((max(_6157, 1.0f) / max(_6157, 0.1f)), 0.0f);
      _6172 = ((_6150 - _6046) + (_6161 * _6046));
      _6173 = ((_6151 - _6047) + (_6161 * _6047));
      _6174 = ((_6152 - _6048) + (_6161 * _6048));
    } else {
      _6172 = _6150;
      _6173 = _6151;
      _6174 = _6152;
    }
    _6175 = min(60000.0f, _6172);
    _6176 = min(60000.0f, _6173);
    _6177 = min(60000.0f, _6174);
    if (!_128) {
      [branch]
      if (_6117) {
        _6182 = __3__38__0__1__g_sceneColorUAV[int2(_101, _103)].x;
        _6183 = __3__38__0__1__g_sceneColorUAV[int2(_101, _103)].y;
        _6184 = __3__38__0__1__g_sceneColorUAV[int2(_101, _103)].z;
        _6189 = (_6182 + _6175);
        _6190 = (_6183 + _6176);
        _6191 = (_6184 + _6177);
      } else {
        _6189 = _6175;
        _6190 = _6176;
        _6191 = _6177;
      }
      if (!(_renderParams.y == 0.0f)) {
        _6200 = dot(float3(_6189, _6190, _6191), float3(0.212671f, 0.71516f, 0.072169f));
        _6201 = min((max(0.01f, _exposure3.w) * 4096.0f), _6200);
        _6205 = max(1e-09f, _6200);
        _6210 = ((_6201 * _6189) / _6205);
        _6211 = ((_6201 * _6190) / _6205);
        _6212 = ((_6201 * _6191) / _6205);
      } else {
        _6210 = _6189;
        _6211 = _6190;
        _6212 = _6191;
      }
      // RenoDX: >>> [Patch: FoliageFinalAO] [Version: 1.16.00]
      // Description: Applies RenoDX foliage ambient-occlusion darkening to the final direct-lit scene
      //              color for foliage stencil materials (stencil ids 12..18). Vanilla leaves the
      //              direct sun contribution on foliage almost entirely unoccluded, so dense canopies
      //              read flat and over-bright. The occlusion factor is the shader's own blended
      //              multi-tap scene-AO accumulator, and it is mixed in proportionally to how directly
      //              lit the pixel is, taken from the shadow-map colour, so already shadowed foliage is
      //              not darkened twice. Gated by FOLIAGE_AO_STRENGTH; at 0 the block does not
      //              execute, and the lerp keeps the multiplier at exactly 1.0 for fully shadowed
      //              pixels.
      if (FOLIAGE_AO_STRENGTH > 0.0f && ((uint)(_119 - 12) < 7u)) {
        half4 _rndx_shadow = __3__36__0__0__g_sceneShadowColor.Load(int3(_101, _103, 0));
        float _rndx_directRatio = saturate(dot(float3(_rndx_shadow.xyz), float3(0.333f, 0.333f, 0.333f)));
        float _rndx_ao = lerp(1.0f, saturate(_1751), _rndx_directRatio * FOLIAGE_AO_STRENGTH);
        _6210 *= _rndx_ao;
        _6211 *= _rndx_ao;
        _6212 *= _rndx_ao;
      }
      // RenoDX: <<< [Patch: FoliageFinalAO]
      __3__38__0__1__g_sceneColorUAV[int2(_101, _103)] = float4(_6210, _6211, _6212, 1.0f);
    }
  }
}
