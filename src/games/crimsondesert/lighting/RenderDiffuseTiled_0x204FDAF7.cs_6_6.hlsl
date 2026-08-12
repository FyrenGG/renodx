// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the exact shared option and helper declarations consumed by this shader's annotated RenoDX patches. This dependency-only prefix replaces no native executable statement; removing the block restores successor A byte-for-byte.
#include "../shared.h"
#include "foliage_common.hlsli"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
struct anon {
  uint4 g_tileIndex[4096];
};

struct anon_0 {
  float4 _clothLightingCategory;
  float4 _clothLightingParameter[8];
  float4 _colorPresetInfo;
  uint4 _colorPresetParameter[16];
  float4 _debugOption;
};


Texture2D<float4> __3__36__0__0__g_puddleMask : register(t139, space36);

Texture2D<float4> __3__36__0__0__g_climateSandTex : register(t140, space36);

Texture2D<uint16_t> __3__36__0__0__g_sceneDecalMask : register(t141, space36);

Texture2D<float2> __3__36__0__0__g_texNetDensity : register(t106, space36);

Texture3D<float> __3__36__0__0__g_texCloudVolumeShadow : register(t199, space36);

Texture3D<float2> __3__36__0__0__g_hairDualScatteringLUT : register(t211, space36);

Texture2D<float4> __3__36__0__0__g_blueNoise : register(t148, space36);

Texture2D<float4> __3__36__0__0__g_bentCone : register(t94, space36);

Texture2D<float4> __3__36__0__0__g_character : register(t47, space36);

Texture2D<float4> __3__36__0__0__g_specularResult : register(t154, space36);

Texture2D<float2> __3__36__0__0__g_iblBrdfLookup : register(t156, space36);

Texture2D<float2> __3__36__0__0__g_hairBrdfLookup : register(t168, space36);

Texture2D<uint2> __3__36__0__0__g_stencilPrev : register(t143, space36);

Texture2D<half4> __3__36__0__0__g_diffuseResult : register(t185, space36);

Texture2D<half4> __3__36__0__0__g_diffuseResultPrev : register(t176, space36);

Texture2D<half4> __3__36__0__0__g_specularResultPrev : register(t177, space36);

Texture2D<half2> __3__36__0__0__g_sceneAO : register(t107, space36);

Texture2D<float> __3__36__0__0__g_specularSampleCountPrev : register(t108, space36);

Texture2D<float4> __3__36__0__0__g_sceneSpecularHalf : register(t58, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_normal : register(t19, space36);

Texture2D<float2> __3__36__0__0__g_velocity : register(t20, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t50, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormalPrev : register(t59, space36);

Texture2D<uint2> __3__36__0__0__g_normalDepthHalf : register(t51, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t48, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t63, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaquePrev : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t52, space36);

Texture2D<float4> __3__36__0__0__g_manyLightsMoments : register(t65, space36);

Texture2D<float> __3__36__0__0__g_specularRayHitDistance : register(t66, space36);

Texture2D<uint> __3__36__0__0__g_tiledManyLightsMasks : register(t14, space36);

ByteAddressBuffer __3__37__0__0__g_structureCounterBuffer : register(t27, space37);

Texture2D<half4> __3__36__0__0__g_sceneShadowColor : register(t54, space36);

RWTexture2D<float4> __3__38__0__1__g_diffuseHalfPrevUAV : register(u43, space38);

RWTexture2D<float4> __3__38__0__1__g_sceneColorUAV : register(u9, space38);

RWTexture2D<half4> __3__38__0__1__g_sceneSpecularUAV : register(u10, space38);

RWTexture2D<half4> __3__38__0__1__g_diffuseResultUAV : register(u11, space38);

RWTexture2D<half4> __3__38__0__1__g_specularResultUAV : register(u12, space38);

RWTexture2D<float> __3__38__0__1__g_specularSampleCountUAV : register(u13, space38);

RWTexture2D<half4> __3__38__0__1__g_sceneColorLightingOnlyForAwbUAV : register(u18, space38);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b15, space35) {
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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b27, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

cbuffer __3__35__0__0__WeatherConstantBuffer : register(b31, space35) {
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

cbuffer __3__35__0__0__AtmosphereConstantBuffer : register(b24, space35) {
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

cbuffer __3__35__0__0__PrecomputedAmbientConstantBuffer : register(b36, space35) {
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

cbuffer __3__35__0__0__TileConstantBuffer : register(b26, space35) {
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

cbuffer __3__35__0__0__MaterialParameterPresetTableConstantBuffer : register(b30, space35) {
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
  int _73;
  int _74;
  int4 _76;
  int _88;
  int _92;
  uint _99;
  uint _104;
  float _105;
  float _106;
  float _107;
  float _108;
  float _111;
  float _113;
  float _115;
  uint2 _118;
  int _120;
  float _121;
  float _124;
  bool _129;
  float _130;
  float _131;
  bool _132;
  float _133;
  bool _134;
  float _135;
  bool _136;
  float _137;
  bool _138;
  int _465;
  float _514;
  float _515;
  int _516;
  int _517;
  half _518;
  half _519;
  half _520;
  half _521;
  int _597;
  float _821;
  float _822;
  bool _893;
  bool _985;
  float _1051;
  float _1052;
  float _1053;
  float _1054;
  float _1077;
  float _1078;
  float _1079;
  float _1080;
  float _1111;
  float _1112;
  float _1113;
  float _1114;
  float _1120;
  float _1121;
  float _1122;
  float _1123;
  half _1124;
  half _1195;
  int _1614;
  half _1615;
  float _1616;
  float _1617;
  float _1618;
  float _1619;
  float _1728;
  float _1729;
  half _1857;
  float _2275;
  float _2276;
  float _2277;
  float _2278;
  float _2279;
  float _2280;
  float _2281;
  float _2282;
  float _2283;
  float _2284;
  int _2285;
  float _2286;
  float _2287;
  float _2288;
  half _2289;
  float _2290;
  int _2337;
  int _2338;
  bool _2345;
  bool _2346;
  float _2357;
  float _2368;
  float _2369;
  float _2381;
  float _2382;
  half _2383;
  half _2384;
  half _2385;
  half _2386;
  half _2387;
  float _2399;
  int _2425;
  float _2434;
  float _2477;
  float _2478;
  float _2584;
  float _2636;
  bool _2759;
  float _2764;
  float _2770;
  bool _2787;
  float _2792;
  float _2793;
  float _2799;
  float _2800;
  bool _2817;
  float _2822;
  float _2823;
  float _2824;
  float _2830;
  float _2831;
  float _2832;
  bool _2848;
  float _2851;
  float _2852;
  float _2853;
  bool _2854;
  float _2858;
  float _2859;
  float _2860;
  float _2861;
  int _3024;
  float _3025;
  float _3082;
  float _3094;
  float _3126;
  float _3214;
  float _3215;
  float _3216;
  float _3217;
  float _3226;
  float _3227;
  float _3228;
  float _3229;
  float _3230;
  float _3255;
  float _3279;
  int _3292;
  bool _3352;
  float _3353;
  float _3354;
  float _3355;
  int _3356;
  half _3357;
  float _3494;
  bool _3516;
  float _3558;
  float _3580;
  half _3607;
  float _3713;
  float _3762;
  float _3771;
  float _3869;
  float _3870;
  float _3871;
  float _3872;
  int _3873;
  int _3874;
  float _3875;
  float _4023;
  float _4024;
  float _4025;
  float _4026;
  float _4117;
  float _4127;
  float _4128;
  float _4129;
  float _4183;
  float _4184;
  float _4318;
  float _4319;
  float _4320;
  float _4373;
  float _4374;
  float _4375;
  float _4376;
  float _4377;
  int _4433;
  int _4434;
  float _4475;
  float _4476;
  float _4477;
  float _4478;
  float _4550;
  float _4551;
  float _4552;
  float _4553;
  float _4583;
  float _4584;
  float _4585;
  float _4602;
  float _4603;
  float _4604;
  float _4605;
  float _4635;
  float _4636;
  float _4637;
  float _4638;
  float _4639;
  float _4646;
  half _4647;
  half _4648;
  half _4649;
  half _4650;
  half _4651;
  float _4657;
  float _4658;
  float _4659;
  float _4660;
  float _4661;
  float _4662;
  half _4663;
  half _4664;
  half _4665;
  half _4666;
  half _4667;
  float _4668;
  half _4708;
  half _4709;
  half _4710;
  float _4729;
  float _4730;
  float _4731;
  float _4746;
  float _4747;
  float _4748;
  float _4749;
  float _4807;
  float _4897;
  float _4898;
  float _4899;
  int _4956;
  bool _4968;
  int _4983;
  int _4984;
  float _5003;
  float _5004;
  float _5005;
  float _5006;
  int _5007;
  float _5008;
  float _5053;
  float _5090;
  float _5097;
  float _5098;
  float _5099;
  int _5132;
  int _5133;
  float _5150;
  float _5151;
  float _5152;
  float _5209;
  float _5708;
  float _5709;
  float _5814;
  float _5815;
  float _5816;
  float _6036;
  float _6037;
  float _6038;
  float _6039;
  float _6040;
  float _6041;
  float _6042;
  float _6043;
  float _6294;
  float _6295;
  float _6401;
  float _6402;
  float _6403;
  float _6625;
  float _6626;
  float _6627;
  float _6628;
  float _6629;
  float _6630;
  float _6631;
  float _6632;
  float _6649;
  float _6650;
  float _6651;
  float _6652;
  float _6653;
  float _6654;
  float _6655;
  float _6656;
  float _6657;
  float _6658;
  float _6659;
  float _6672;
  float _6673;
  float _6674;
  float _6750;
  float _6751;
  float _7115;
  float _7116;
  float _7252;
  float _7253;
  float _7384;
  float _7426;
  float _7427;
  float _7560;
  float _7561;
  float _7671;
  float _7672;
  float _7673;
  float _7674;
  float _7675;
  float _7676;
  float _7677;
  float _7678;
  float _7679;
  float _7714;
  half _7774;
  half _7775;
  half _7776;
  half _7781;
  half _7782;
  half _7783;
  half _7784;
  float _7794;
  float _7831;
  float _7832;
  float _7923;
  float _7924;
  float _7925;
  float _7990;
  float _7991;
  float _7992;
  float _8028;
  float _8029;
  float _8030;
  bool _8056;
  int _8068;
  int _8091;
  float _8092;
  float _8093;
  float _8094;
  float _8114;
  float _8115;
  float _8116;
  float _8132;
  float _8133;
  float _8134;
  float _8153;
  float _8154;
  float _8155;
  uint4 _144;
  float4 _150;
  half _159;
  half _163;
  half _168;
  half _172;
  half _177;
  half _181;
  uint _184;
  bool _185;
  bool _186;
  float _190;
  float _194;
  float _198;
  float _200;
  half _202;
  half _204;
  half _206;
  half _213;
  half _219;
  float _222;
  float _225;
  float _229;
  float _231;
  float _232;
  float _233;
  float _234;
  float _236;
  float _239;
  float _240;
  float _241;
  float _242;
  float _243;
  float _246;
  float _249;
  float _252;
  half _259;
  half _266;
  half _271;
  half _273;
  half _274;
  half _275;
  half _276;
  half _278;
  half _280;
  half _282;
  half _288;
  half _294;
  half _300;
  bool _311;
  half _314;
  uint _332;
  uint _340;
  uint _348;
  uint _356;
  uint _364;
  uint _372;
  uint _380;
  uint _388;
  uint _396;
  uint _404;
  uint _412;
  uint _420;
  uint _428;
  uint _436;
  uint _444;
  uint _452;
  int _485;
  int _495;
  int4 _524;
  int _529;
  int _530;
  int _531;
  int _532;
  float _538;
  float _549;
  float _558;
  float _567;
  float _576;
  float _577;
  float _578;
  float _579;
  float _580;
  int _581;
  int _582;
  int _583;
  int _584;
  float _598;
  float _600;
  bool _601;
  float _607;
  int _608;
  bool _609;
  bool _611;
  int4 _612;
  float _621;
  float _627;
  float _633;
  float _635;
  float _636;
  float _637;
  float _638;
  float _643;
  float _649;
  float _655;
  float _657;
  float _662;
  float _668;
  float _674;
  float _676;
  float _681;
  float _687;
  float _693;
  float _695;
  bool _696;
  float _697;
  float _705;
  float _713;
  float _721;
  float _729;
  float _734;
  float _748;
  float _762;
  float _776;
  float _790;
  float _823;
  float _824;
  float _825;
  float _826;
  float _827;
  float _828;
  float _829;
  float _830;
  bool _839;
  float _842;
  float _845;
  float _848;
  float _851;
  float _852;
  float _853;
  float _855;
  float _857;
  float _859;
  float _861;
  float _894;
  float _897;
  float _900;
  float _903;
  float _906;
  half4 _908;
  uint _912;
  half4 _913;
  uint _917;
  half4 _918;
  half4 _922;
  float _936;
  float _947;
  float _958;
  float4 _960;
  float4 _964;
  float4 _968;
  float4 _972;
  float _987;
  float _989;
  float _1001;
  float _1010;
  float _1019;
  float _1028;
  float _1030;
  float _1031;
  float _1032;
  float _1033;
  bool _1034;
  bool _1035;
  bool _1036;
  float4 _1045;
  uint _1059;
  int _1064;
  float4 _1068;
  uint _1096;
  int _1098;
  float4 _1102;
  float _1127;
  float _1129;
  float _1131;
  float _1133;
  float4 _1136;
  float4 _1140;
  float4 _1144;
  float4 _1148;
  float _1160;
  float _1169;
  float _1178;
  float _1180;
  float _1181;
  float _1182;
  float _1183;
  float _1196;
  float _1199;
  float _1200;
  float _1201;
  float _1202;
  float _1203;
  float _1204;
  float _1205;
  float _1206;
  float _1212;
  float _1214;
  float _1216;
  float _1218;
  float _1220;
  float _1222;
  float _1224;
  float _1231;
  float _1233;
  float _1234;
  float _1235;
  float _1236;
  float _1237;
  float _1238;
  float _1242;
  float _1251;
  float _1257;
  float _1258;
  float _1262;
  float _1263;
  float _1268;
  float _1269;
  float _1270;
  float _1271;
  float _1285;
  float _1287;
  float _1289;
  float _1290;
  float _1294;
  float _1295;
  float _1296;
  float _1312;
  float _1321;
  float _1330;
  float _1339;
  float _1342;
  float2 _1349;
  float2 _1356;
  float2 _1363;
  float _1366;
  float _1367;
  float _1368;
  float _1369;
  float _1370;
  float _1371;
  float _1372;
  float _1373;
  float _1374;
  float _1375;
  float _1376;
  float _1377;
  float _1378;
  float _1379;
  float _1380;
  float _1381;
  float _1382;
  float _1383;
  float _1384;
  float _1385;
  float _1386;
  float _1387;
  float _1388;
  float _1389;
  float _1391;
  float _1392;
  float _1393;
  float _1394;
  float _1396;
  float _1397;
  float _1398;
  float _1399;
  float _1400;
  float _1401;
  float _1408;
  float _1409;
  float _1410;
  float _1411;
  float _1413;
  float _1417;
  float _1421;
  float _1424;
  float _1432;
  float _1440;
  float _1448;
  float _1459;
  float _1470;
  float _1481;
  float _1487;
  float _1507;
  float _1527;
  float _1547;
  float _1548;
  float _1552;
  float _1556;
  float _1560;
  float4 _1562;
  float4 _1566;
  float4 _1570;
  float4 _1574;
  bool _1620;
  float _1628;
  float _1653;
  float _1654;
  float _1655;
  float4 _1657;
  float4 _1661;
  float4 _1665;
  float4 _1669;
  float _1711;
  float _1713;
  float _1715;
  float _1716;
  float _1717;
  float _1731;
  float _1738;
  float _1739;
  float _1740;
  float4 _1742;
  float4 _1746;
  float4 _1750;
  float4 _1754;
  float4 _1798;
  float4 _1802;
  float4 _1806;
  float4 _1810;
  float _1822;
  float _1831;
  float _1840;
  float _1842;
  float _1843;
  float _1844;
  float _1845;
  float _1858;
  float _1861;
  float _1862;
  float _1863;
  float _1864;
  float _1865;
  float _1866;
  float _1867;
  float _1868;
  float _1874;
  float _1876;
  float _1878;
  float _1880;
  float _1882;
  float _1884;
  float _1886;
  float _1893;
  float _1895;
  float _1896;
  float _1897;
  float _1898;
  float _1899;
  float _1900;
  float _1904;
  float _1913;
  float _1919;
  float _1920;
  float _1924;
  float _1925;
  float _1930;
  float _1931;
  float _1932;
  float _1933;
  float _1947;
  float _1949;
  float _1951;
  float _1952;
  float _1956;
  float _1957;
  float _1958;
  float _1974;
  float _1983;
  float _1992;
  float _2001;
  float _2004;
  float2 _2011;
  float2 _2018;
  float2 _2025;
  float _2028;
  float _2029;
  float _2030;
  float _2031;
  float _2032;
  float _2033;
  float _2034;
  float _2035;
  float _2036;
  float _2037;
  float _2038;
  float _2039;
  float _2040;
  float _2041;
  float _2042;
  float _2043;
  float _2044;
  float _2045;
  float _2046;
  float _2047;
  float _2048;
  float _2049;
  float _2050;
  float _2051;
  float _2053;
  float _2054;
  float _2055;
  float _2056;
  float _2058;
  float _2059;
  float _2060;
  float _2061;
  float _2062;
  float _2063;
  float _2070;
  float _2071;
  float _2072;
  float _2073;
  float _2075;
  float _2079;
  float _2083;
  float _2086;
  float _2094;
  float _2102;
  float _2110;
  float _2121;
  float _2132;
  float _2143;
  float _2149;
  float _2169;
  float _2189;
  float _2209;
  float _2213;
  float _2217;
  float _2221;
  float4 _2223;
  float4 _2227;
  float4 _2231;
  float4 _2235;
  float _2293;
  float _2296;
  float _2299;
  half2 _2301;
  half2 _2304;
  half2 _2307;
  half2 _2310;
  float _2323;
  int _2328;
  float _2348;
  bool _2350;
  bool _2352;
  uint _2359;
  half _2370;
  bool _2371;
  int _2388;
  bool _2389;
  bool _2390;
  bool _2391;
  float _2392;
  float _2393;
  float _2394;
  float _2395;
  float _2400;
  int _2401;
  bool _2402;
  float _2446;
  float2 _2450;
  float _2480;
  float _2482;
  float _2484;
  float _2492;
  float _2496;
  float _2499;
  int _2501;
  int _2503;
  float _2504;
  float _2505;
  float _2508;
  float _2511;
  int4 _2513;
  int _2524;
  float _2587;
  float _2590;
  float _2592;
  float _2595;
  float _2599;
  float _2602;
  float _2605;
  float _2608;
  bool _2611;
  float _2612;
  float _2615;
  bool _2617;
  float _2641;
  float _2652;
  float _2663;
  float _2674;
  float _2685;
  float _2686;
  float _2687;
  float _2688;
  float _2689;
  float _2694;
  float _2698;
  float _2702;
  float _2706;
  float _2710;
  int _2712;
  int _2713;
  int _2714;
  int _2715;
  bool _2717;
  bool _2721;
  bool _2725;
  bool _2729;
  bool _2731;
  bool _2733;
  bool _2734;
  bool _2736;
  float _2762;
  float _2790;
  float _2820;
  int4 _2863;
  float _2872;
  float _2878;
  float _2884;
  float _2886;
  float _2891;
  float _2896;
  float _2902;
  float _2908;
  float _2910;
  float _2915;
  float _2920;
  float _2926;
  float _2932;
  float _2934;
  float _2939;
  float _2944;
  float _2950;
  float _2956;
  float _2958;
  float _2963;
  float _2966;
  float _2967;
  float _2968;
  float _2969;
  float _2970;
  float _2972;
  float _2974;
  float _2976;
  float _2978;
  float _2984;
  float _2990;
  float _2996;
  float _3002;
  int _3005;
  int _3006;
  int _3014;
  int _3015;
  float _3035;
  uint _3036;
  half4 _3038;
  uint _3043;
  half4 _3044;
  half4 _3049;
  half4 _3054;
  float _3059;
  float _3068;
  float _3073;
  float _3086;
  float _3089;
  bool _3090;
  bool _3095;
  float _3096;
  float _3098;
  float4 _3101;
  float _3106;
  float _3108;
  float _3109;
  float _3110;
  float _3111;
  float _3112;
  float _3129;
  float _3144;
  float _3149;
  float _3167;
  float _3185;
  float _3193;
  float _3200;
  float _3233;
  float _3236;
  float _3239;
  float _3245;
  float _3246;
  float _3247;
  float _3256;
  float _3262;
  float _3266;
  float _3270;
  float _3274;
  bool _3293;
  half _3298;
  uint _3308;
  int _3313;
  float4 _3317;
  uint _3337;
  int _3339;
  float4 _3343;
  float _3359;
  float _3361;
  float _3363;
  float _3365;
  float _3370;
  float _3373;
  float _3376;
  float _3383;
  float _3384;
  float _3397;
  float _3398;
  float _3399;
  float _3400;
  float _3405;
  float _3408;
  float _3411;
  float _3414;
  float _3426;
  float _3434;
  float _3442;
  float _3450;
  float _3462;
  float _3474;
  float _3486;
  int _3495;
  bool _3496;
  float _3517;
  float _3518;
  float _3523;
  float _3549;
  float _3560;
  float _3566;
  float _3587;
  half _3589;
  float _3608;
  float _3609;
  float _3610;
  float _3614;
  float _3618;
  float _3622;
  float _3626;
  float _3646;
  float _3653;
  float _3660;
  float _3667;
  float _3674;
  float _3684;
  float _3687;
  float _3703;
  float _3725;
  float _3735;
  float _3745;
  float _3746;
  float _3747;
  float _3780;
  bool _3782;
  float _3789;
  float _3794;
  int _3796;
  int _3798;
  float _3799;
  float _3800;
  int4 _3810;
  int _3817;
  float _3822;
  float _3827;
  float _3832;
  float _3837;
  float _3852;
  float _3853;
  float _3854;
  float _3855;
  bool _3876;
  uint _3877;
  half4 _3879;
  float _3888;
  uint _3889;
  half4 _3890;
  float _3899;
  half4 _3900;
  float _3909;
  half4 _3910;
  float _3919;
  float _3926;
  float _3940;
  float _3941;
  float _3955;
  float _3969;
  float _3987;
  float _3995;
  float _4002;
  float _4029;
  float _4030;
  float _4031;
  float _4035;
  float _4050;
  float _4065;
  float _4080;
  float _4092;
  float _4097;
  bool _4098;
  int _4100;
  bool _4120;
  float _4121;
  float _4130;
  float _4131;
  float _4132;
  bool _4135;
  float _4136;
  float _4137;
  float _4138;
  float2 _4153;
  float2 _4159;
  float _4164;
  float _4167;
  float _4169;
  float _4177;
  float _4179;
  float _4186;
  float _4189;
  float _4190;
  float _4192;
  float _4195;
  float _4197;
  float _4199;
  float4 _4207;
  float _4211;
  float _4212;
  float _4213;
  float _4215;
  float _4217;
  float _4219;
  float _4221;
  float _4223;
  float2 _4228;
  float _4240;
  float _4250;
  float2 _4255;
  float2 _4268;
  float2 _4274;
  float _4278;
  float _4280;
  float _4293;
  float _4307;
  float2 _4325;
  float _4335;
  float2 _4342;
  float2 _4348;
  float _4352;
  float _4354;
  float2 _4363;
  float _4380;
  float _4381;
  float _4382;
  float _4383;
  float _4409;
  float4 _4412;
  bool _4442;
  float4 _4469;
  float _4488;
  float _4491;
  float _4496;
  float _4501;
  float _4506;
  float _4512;
  float _4518;
  float _4526;
  float _4546;
  float _4557;
  bool _4560;
  float _4562;
  float _4586;
  float _4587;
  float _4588;
  float _4606;
  float _4607;
  float _4608;
  float _4611;
  float _4614;
  float _4622;
  float _4623;
  half4 _4670;
  float _4675;
  float _4676;
  float _4677;
  uint _4680;
  float _4686;
  float _4692;
  float _4698;
  float _4700;
  bool _4713;
  bool _4720;
  float _4725;
  float _4726;
  float _4727;
  float _4752;
  float _4754;
  float _4757;
  float _4759;
  float _4765;
  float _4769;
  float _4776;
  float _4777;
  float _4784;
  float2 _4819;
  float _4828;
  float _4842;
  float _4852;
  float _4861;
  float _4862;
  float _4870;
  float _4882;
  float _4885;
  float _4891;
  float _4902;
  float _4921;
  float _4928;
  float _4934;
  float _4940;
  float _4946;
  float _4947;
  float _4948;
  float _4949;
  float _4958;
  float _4959;
  bool _4960;
  float _4985;
  float _4986;
  float _4987;
  uint16_t _4989;
  float _5010;
  float _5011;
  float _5012;
  float _5013;
  float _5028;
  float _5030;
  float _5033;
  float _5035;
  float _5037;
  float _5038;
  float _5039;
  float _5040;
  bool _5041;
  bool _5042;
  bool _5043;
  float _5045;
  bool _5046;
  float _5059;
  float _5063;
  float _5067;
  float _5071;
  float _5072;
  int _5073;
  bool _5074;
  bool _5077;
  float _5091;
  float _5100;
  float _5101;
  bool _5103;
  float _5105;
  float _5106;
  float _5107;
  float _5138;
  float _5155;
  float _5161;
  float _5167;
  float _5173;
  float _5174;
  float _5175;
  float _5176;
  float _5178;
  float _5179;
  float _5180;
  float _5181;
  float _5182;
  float _5183;
  float _5185;
  float _5187;
  float _5188;
  float _5190;
  bool _5191;
  bool _5192;
  bool _5193;
  float _5211;
  float _5213;
  float4 _5233;
  float _5237;
  float _5238;
  float _5239;
  float _5240;
  float _5241;
  float _5242;
  float _5248;
  float _5250;
  float _5252;
  float _5254;
  float _5256;
  float _5258;
  float _5260;
  float _5267;
  float _5271;
  float _5274;
  float _5275;
  float _5276;
  float _5277;
  float _5278;
  float _5280;
  float _5282;
  float _5288;
  float _5289;
  float _5290;
  float _5294;
  float _5299;
  float _5305;
  float _5306;
  float _5310;
  float _5311;
  float _5316;
  float _5317;
  float _5318;
  float _5319;
  float _5333;
  float _5335;
  float _5337;
  float _5338;
  float _5342;
  float _5343;
  float _5344;
  float _5360;
  float _5361;
  float _5377;
  float _5378;
  float _5381;
  float _5383;
  float _5389;
  float _5396;
  float _5397;
  float _5404;
  float _5405;
  float _5412;
  float _5413;
  float _5425;
  float _5437;
  float _5449;
  float _5458;
  float _5467;
  float _5476;
  bool _5479;
  bool _5480;
  float _5492;
  float _5494;
  float _5505;
  float _5508;
  float _5511;
  float _5512;
  float _5514;
  float _5517;
  float _5518;
  float _5519;
  float _5523;
  float _5525;
  float _5529;
  float _5530;
  float _5531;
  float _5532;
  float _5544;
  float _5548;
  float _5550;
  float _5552;
  float _5554;
  float _5555;
  float _5559;
  float _5571;
  float _5573;
  float _5574;
  float _5584;
  float _5600;
  float _5632;
  float _5634;
  float _5636;
  float _5638;
  float _5639;
  float _5640;
  float _5641;
  float _5643;
  float _5644;
  float _5645;
  float _5646;
  bool _5654;
  float _5660;
  float _5662;
  float _5664;
  float _5666;
  float _5667;
  float _5668;
  float _5669;
  float _5671;
  float _5672;
  float _5673;
  float _5674;
  float _5686;
  float _5688;
  float _5690;
  float _5692;
  float _5693;
  float _5694;
  float _5695;
  float _5697;
  float _5698;
  float _5699;
  float _5700;
  float _5727;
  float _5728;
  float _5729;
  float _5730;
  float _5733;
  float _5734;
  float _5735;
  float _5736;
  float _5737;
  float _5768;
  float _5771;
  float _5772;
  float _5774;
  float _5777;
  float _5778;
  float _5780;
  float _5782;
  float _5784;
  float _5787;
  float _5791;
  float _5803;
  bool _5817;
  float _5822;
  float _5833;
  float _5847;
  float _5851;
  float _5863;
  float _5864;
  float _5869;
  float _5874;
  float _5879;
  float _5882;
  float _5884;
  float _5886;
  float _5888;
  float _5889;
  float _5890;
  float _5891;
  float _5893;
  float _5894;
  float _5895;
  float _5896;
  float _5897;
  float _5898;
  float _5899;
  float _5901;
  float _5903;
  float _5906;
  float _5917;
  float _5947;
  float _5958;
  float _5974;
  float _5976;
  float _5978;
  float _5980;
  float _5981;
  float _5982;
  float _5983;
  float _5985;
  float _5986;
  float _5987;
  float _5988;
  float _5989;
  float _5990;
  float _5991;
  float _5993;
  float _5995;
  float _5998;
  float _6009;
  bool _6060;
  bool _6061;
  float _6073;
  float _6075;
  float _6076;
  float _6077;
  float _6078;
  float _6089;
  float _6092;
  float _6095;
  float _6096;
  float _6098;
  float _6101;
  float _6102;
  float _6103;
  float _6107;
  float _6109;
  float _6113;
  float _6114;
  float _6115;
  float _6116;
  float _6128;
  float _6132;
  float _6134;
  float _6136;
  float _6138;
  float _6139;
  float _6143;
  float _6155;
  float _6156;
  float _6158;
  float _6159;
  float _6169;
  float _6185;
  float _6217;
  float _6219;
  float _6221;
  float _6223;
  float _6224;
  float _6225;
  float _6226;
  float _6228;
  float _6229;
  float _6230;
  float _6231;
  bool _6239;
  float _6245;
  float _6247;
  float _6249;
  float _6251;
  float _6252;
  float _6253;
  float _6254;
  float _6256;
  float _6257;
  float _6258;
  float _6259;
  float _6272;
  float _6274;
  float _6276;
  float _6278;
  float _6279;
  float _6280;
  float _6281;
  float _6283;
  float _6284;
  float _6285;
  float _6286;
  float _6313;
  float _6314;
  float _6315;
  float _6316;
  float _6319;
  float _6320;
  float _6321;
  float _6322;
  float _6323;
  float _6354;
  float _6357;
  float _6358;
  float _6360;
  float _6363;
  float _6364;
  float _6366;
  float _6368;
  float _6370;
  float _6373;
  float _6374;
  float _6378;
  float _6390;
  bool _6404;
  float _6409;
  float _6420;
  float _6434;
  float _6438;
  float _6450;
  float _6451;
  float _6452;
  float _6457;
  float _6462;
  float _6467;
  float _6470;
  float _6472;
  float _6474;
  float _6476;
  float _6477;
  float _6478;
  float _6479;
  float _6481;
  float _6482;
  float _6483;
  float _6484;
  float _6485;
  float _6486;
  float _6487;
  float _6489;
  float _6491;
  float _6494;
  float _6505;
  float _6535;
  float _6546;
  float _6562;
  float _6564;
  float _6566;
  float _6568;
  float _6569;
  float _6570;
  float _6571;
  float _6573;
  float _6574;
  float _6575;
  float _6576;
  float _6577;
  float _6578;
  float _6579;
  float _6581;
  float _6583;
  float _6584;
  float _6587;
  float _6598;
  float _6664;
  float _6676;
  float _6678;
  float _6679;
  float _6681;
  float _6683;
  float _6685;
  float _6687;
  float _6688;
  float _6690;
  float _6692;
  float _6696;
  float _6728;
  float _6729;
  float _6730;
  float _6731;
  float _6733;
  float _6735;
  float _6746;
  float _6753;
  float _6756;
  float _6757;
  float _6759;
  float4 _6767;
  float _6771;
  float _6772;
  float _6773;
  float _6775;
  float _6777;
  float _6779;
  float _6781;
  float _6783;
  float _6784;
  float _6785;
  float _6786;
  float _6790;
  float _6794;
  float _6796;
  float _6798;
  float _6802;
  float _6804;
  float _6806;
  float _6807;
  float _6809;
  float _6812;
  float _6853;
  float _6865;
  float _6868;
  float _6870;
  float _6876;
  float _6882;
  float _6888;
  float _6891;
  float2 _6897;
  float2 _6903;
  float2 _6909;
  float _6912;
  float _6913;
  float _6914;
  float _6915;
  float _6916;
  float _6917;
  float _6918;
  float _6919;
  float _6920;
  float _6921;
  float _6922;
  float _6923;
  float _6924;
  float _6925;
  float _6926;
  float _6927;
  float _6928;
  float _6929;
  float _6930;
  float _6931;
  float _6932;
  float _6933;
  float _6934;
  float _6935;
  float _6937;
  float _6938;
  float _6939;
  float _6940;
  float _6942;
  float _6943;
  float _6944;
  float _6945;
  float _6946;
  float _6947;
  float _6957;
  float _6958;
  float _6959;
  float _6961;
  float _6965;
  float _6969;
  float _6972;
  float _6980;
  float _6988;
  float _6996;
  float _7007;
  float _7018;
  float _7029;
  float _7034;
  float _7037;
  float _7053;
  float _7055;
  float _7071;
  float _7073;
  float _7089;
  float _7091;
  float _7092;
  float _7093;
  float _7094;
  float _7096;
  float _7098;
  float _7100;
  float _7109;
  float _7111;
  float _7118;
  float _7121;
  float _7122;
  float _7124;
  float4 _7132;
  float _7136;
  float _7137;
  float _7138;
  float _7140;
  float _7142;
  float _7144;
  float _7146;
  float _7148;
  float _7149;
  float _7150;
  float _7151;
  float _7155;
  float _7159;
  float _7161;
  float _7163;
  float _7167;
  float _7169;
  float _7171;
  float _7172;
  float _7174;
  float _7177;
  float _7218;
  float _7230;
  float _7232;
  float _7234;
  float _7236;
  float _7237;
  float _7238;
  float _7246;
  float _7248;
  float _7255;
  float _7258;
  float _7259;
  float _7261;
  float4 _7269;
  float _7273;
  float _7274;
  float _7275;
  float _7277;
  float _7279;
  float _7281;
  float _7283;
  float _7285;
  float _7286;
  float _7287;
  float _7288;
  float _7292;
  float _7296;
  float _7298;
  float _7300;
  float _7304;
  float _7306;
  float _7308;
  float _7309;
  float _7311;
  float _7314;
  float _7355;
  float _7385;
  float _7399;
  float _7403;
  float _7404;
  float _7405;
  float _7406;
  float _7408;
  float _7410;
  float _7420;
  float _7422;
  float _7429;
  float _7432;
  float _7433;
  float _7435;
  float4 _7443;
  float _7447;
  float _7448;
  float _7449;
  float _7451;
  float _7453;
  float _7455;
  float _7457;
  float _7459;
  float _7460;
  float _7461;
  float _7462;
  float _7466;
  float _7470;
  float _7472;
  float _7474;
  float _7478;
  float _7480;
  float _7482;
  float _7483;
  float _7485;
  float _7488;
  float _7529;
  float _7537;
  float _7538;
  float _7539;
  float _7540;
  float _7542;
  float _7544;
  float _7554;
  float _7556;
  float _7563;
  float _7566;
  float _7567;
  float _7569;
  float4 _7577;
  float _7581;
  float _7582;
  float _7583;
  float _7585;
  float _7587;
  float _7589;
  float _7591;
  float _7593;
  float _7594;
  float _7595;
  float _7596;
  float _7600;
  float _7604;
  float _7606;
  float _7608;
  float _7612;
  float _7614;
  float _7616;
  float _7617;
  float _7619;
  float _7622;
  float _7663;
  float _7680;
  float _7681;
  float _7682;
  uint _7685;
  bool _7700;
  float _7723;
  float _7730;
  float _7737;
  float _7744;
  float _7747;
  half _7750;
  half _7753;
  half _7756;
  float _7785;
  float _7786;
  float _7787;
  float _7795;
  float _7801;
  float _7804;
  float _7807;
  float _7810;
  float _7811;
  float _7812;
  float _7813;
  float2 _7827;
  float _7834;
  float _7836;
  float _7838;
  float _7840;
  float _7843;
  float _7846;
  float _7849;
  float _7856;
  float _7857;
  float _7862;
  float _7867;
  float _7869;
  half _7876;
  half _7883;
  half _7890;
  float _7891;
  float _7892;
  float _7893;
  float _7898;
  float _7906;
  float _7929;
  float _7933;
  float _7937;
  float _7942;
  float _7951;
  float _7960;
  float _7969;
  float _7974;
  float _7979;
  float _7984;
  float _7994;
  float _7996;
  float _7998;
  float _8003;
  float _8004;
  float _8005;
  float _8006;
  float _8007;
  float _8008;
  float _8009;
  float _8010;
  float _8011;
  float _8012;
  float _8013;
  float _8014;
  float _8035;
  float _8099;
  float _8103;
  float _8117;
  float _8118;
  float _8119;
  float _8125;
  float _8126;
  float _8127;
  float _8139;
  float _8144;
  float _8145;
  int _71[4];
  _73 = (int)(SV_GroupID.x) & 15;
  _74 = (uint)((uint)(_73)) >> 2;
  _76 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _71[0] = _76.x;
  _71[1] = _76.y;
  _71[2] = _76.z;
  _71[3] = _76.w;
  _88 = _71[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _92 = select((((int)(SV_GroupID.x) & 16) == 0), _88, ((uint)((uint)(_88)) >> 16));
  _99 = (uint)((uint)((uint)((int)((int)(_73) - (int)((int)(_74) << 2)) << 3)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_92)) << 5)) & 8160));
  _104 = (uint)((uint)((uint)((int)(_74) << 3)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_92)) >> 3) & 8160));
  _105 = (float)((uint)((uint)(_99)));
  _106 = (float)((uint)((uint)(_104)));
  _107 = _105 + 0.5f;
  _108 = _106 + 0.5f;
  _111 = _107 * _bufferSizeAndInvSize.z;
  _113 = _108 * _bufferSizeAndInvSize.w;
  _115 = __3__36__0__0__g_depth.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_depth_load]
  _118 = __3__36__0__0__g_stencil.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_stencil_load]
  _120 = _118.x & 127;  // [sem: _3__36__0__0__g_stencil_load_derived]
  _121 = max(1e-07f, _115.x);  // [sem: _3__36__0__0__g_depth_load_derived]
  _124 = _nearFarProj.x / _121;
  _129 = ((_115.x < 1e-07f) || (_115.x == 1.0f)) || (_120 == 10);
  _130 = (float)((bool)(_129));
  _131 = QuadReadLaneAt(_130, 0);
  _132 = !(_131 == 0.0f);
  _133 = QuadReadLaneAt(_130, 1);
  _134 = !(_133 == 0.0f);
  _135 = QuadReadLaneAt(_130, 2);
  _136 = !(_135 == 0.0f);
  _137 = QuadReadLaneAt(_130, 3);
  _138 = !(_137 == 0.0f);
  if (!(((_132 && _134) && _136) && _138)) {
    _144 = __3__36__0__0__g_baseColor.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_baseColor_load]
    _150 = __3__36__0__0__g_normal.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_normal_load]
    _159 = half(((float)((uint)((uint)(((uint)((uint)(_144.x)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _163 = half(((float)((uint)((uint)(_144.x & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _168 = half(((float)((uint)((uint)(((uint)((uint)(_144.y)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _172 = half(((float)((uint)((uint)(_144.y & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _177 = half(((float)((uint)((uint)(((uint)((uint)(_144.z)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _181 = half(((float)((uint)((uint)(_144.z & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _184 = (uint)((_150.w * 3.0f) + 0.5f);  // [sem: _3__36__0__0__g_normal_load_derived]
    _185 = (_184 == 1);
    _186 = (_184 == 3);
    _190 = (saturate(_150.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _194 = (saturate(_150.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _198 = (saturate(_150.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _200 = rsqrt(dot(float3(_190, _194, _198), float3(_190, _194, _198)));  // [sem: invLength]
    _202 = half(_200 * _190);
    _204 = half(_200 * _194);
    _206 = half(_198 * _200);
    // [sem: _3__36__0__0__g_baseColor_load_derived]
    _213 = ((half)((half)(half(((float)((uint)((uint)(((uint)((uint)(_144.w)) >> 8) & 255)))) * 0.003921569f)) * 2.0h)) + -1.0h;
    _219 = ((half)((half)(half(((float)((uint)((uint)(_144.w & 255)))) * 0.003921569f)) * 2.0h)) + -1.0h;  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _222 = float(_213 + _219) * 0.5f;
    _225 = float(_213 - _219) * 0.5f;
    _229 = (1.0f - abs(_222)) - abs(_225);
    _231 = rsqrt(dot(float3(_222, _225, _229), float3(_222, _225, _229)));  // [sem: invLength]
    _232 = float(_202);
    _233 = float(_204);
    _234 = float(_206);
    _236 = select((_206 >= 0.0h), 1.0f, -1.0f);
    _239 = -0.0f - (1.0f / (_236 + _234));
    _240 = _233 * _239;
    _241 = _240 * _232;
    _242 = _236 * _232;
    _243 = -0.0f - _233;
    _246 = float(half(_231 * _222));
    _249 = float(half(_231 * _225));
    _252 = float(half(_231 * _229));
    _259 = half(mad(_252, _232, mad(_249, _241, ((((_242 * _232) * _239) + 1.0f) * _246))));
    _266 = half(mad(_252, _233, mad(_249, ((_240 * _233) + _236), ((_246 * _236) * _241))));
    _271 = half(mad(_252, _234, mad(_249, _243, (-0.0f - (_242 * _246)))));
    _273 = rsqrt((half)(dot(half3(_259, _266, _271), half3(_259, _266, _271))));  // [sem: invLength]
    _274 = _273 * _259;
    _275 = _273 * _266;
    _276 = _273 * _271;
    _278 = saturate((half)(_159 * _159));  // [sem: expr_sat]
    _280 = saturate((half)(_163 * _163));  // [sem: expr_sat]
    _282 = saturate((half)(_168 * _168));  // [sem: expr_sat]
    // [sem: expr_sat]
    _288 = saturate((half)(((half)(((half)(_280 * 0.3395996h)) + ((half)(_278 * 0.61328125h)))) + ((half)(_282 * 0.04736328h))));
    // [sem: expr_sat]
    _294 = saturate((half)(((half)(((half)(_280 * 0.9165039h)) + ((half)(_278 * 0.07019043h)))) + ((half)(_282 * 0.013450623h))));
    // [sem: expr_sat]
    _300 = saturate((half)(((half)(((half)(_280 * 0.109558105h)) + ((half)(_278 * 0.020614624h)))) + ((half)(_282 * 0.8696289h))));
    if ((uint)((int)(_120) + (int)(-65)) < (uint)2) {
      _514 = _113;
      _515 = _111;
      _516 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_104)))) + (uint)(-1))) >> 1);
      _517 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_99)))) + (uint)(-1))) >> 1);
      _518 = _206;
      _519 = _204;
      _520 = _202;
      _521 = _172;
    } else {
      _311 = (_120 == 29);
      _314 = select(((_120 == 24) || _311), 0.0f, _172);
      if (_311) {
        _332 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_bufferSizeAndInvSize.x * ((float)((int)(_104)))) + ((float)((int)(_99)))));
        _340 = (uint)((uint)((((int)((uint)((uint)((uint)(_332)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_332)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_332)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _348 = (uint)((uint)((((int)((uint)((uint)((uint)(_340)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_340)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_340)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_332));
        _356 = (uint)((uint)((((int)((uint)((uint)((uint)(_348)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_348)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_348)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_340));
        _364 = (uint)((uint)((((int)((uint)((uint)((uint)(_356)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_356)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_356)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_348));
        _372 = (uint)((uint)((((int)((uint)((uint)((uint)(_364)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_364)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_364)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_356));
        _380 = (uint)((uint)((((int)((uint)((uint)((uint)(_372)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_372)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_372)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_364));
        _388 = (uint)((uint)((((int)((uint)((uint)((uint)(_380)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_380)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_380)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_372));
        _396 = (uint)((uint)((((int)((uint)((uint)((uint)(_388)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_388)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_388)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_380));
        _404 = (uint)((uint)((((int)((uint)((uint)((uint)(_396)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_396)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_396)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_388));
        _412 = (uint)((uint)((((int)((uint)((uint)((uint)(_404)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_404)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_404)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_396));
        _420 = (uint)((uint)((((int)((uint)((uint)((uint)(_412)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_412)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_412)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_404));
        _428 = (uint)((uint)((((int)((uint)((uint)((uint)(_420)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_420)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_420)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_412));
        _436 = (uint)((uint)((((int)((uint)((uint)((uint)(_428)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_428)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_428)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_420));
        _444 = (uint)((uint)((((int)((uint)((uint)((uint)(_436)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_436)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_436)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_428));
        _452 = (uint)((uint)((((int)((uint)((uint)((uint)(_444)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_444)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_444)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_436));
        if ((_444 & 16777215) == 0) {
          _465 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_452)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_452)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_452)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_444))));
        } else {
          _465 = _444;
        }
        _485 = (int)(min(max(((((saturate(1.0f - (_124 * 0.015625f)) * 4.0f) * ((((float)((uint)((uint)(((int)((uint)((uint)(_465)) * (uint)(48271))) & 16777215)))) * 1.1920929e-07f) + -1.0f)) + ((float)((int)((int)((uint)((uint)(max((int)(1), (int)(_99)))) + (uint)(-1)))))) * 0.5f), 0.0f), ((_bufferSizeAndInvSize.x * 0.5f) + -2.0f)));
        _495 = (int)(min(max((((float)((int)((int)((uint)((uint)(max((int)(1), (int)(_104)))) + (uint)(-1))))) * 0.5f), 0.0f), ((_bufferSizeAndInvSize.y * 0.5f) + -2.0f)));
        _514 = ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((int)(_495))) + 0.5f));
        _515 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((int)(_485))) + 0.5f));
        _516 = _495;
        _517 = _485;
        _518 = _276;
        _519 = _275;
        _520 = _274;
        _521 = _314;
      } else {
        _514 = _113;
        _515 = _111;
        _516 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_104)))) + (uint)(-1))) >> 1);
        _517 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_99)))) + (uint)(-1))) >> 1);
        _518 = _276;
        _519 = _275;
        _520 = _274;
        _521 = _314;
      }
    }
    _524 = __3__36__0__0__g_normalDepthHalf.GatherGreen(__3__40__0__0__g_samplerPoint, float2(_515, _514));  // [sem: _3__36__0__0__g_normalDepthHalf_gather]
    _529 = (uint)((uint)(_524.w)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _530 = (uint)((uint)(_524.z)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _531 = (uint)((uint)(_524.x)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _532 = (uint)((uint)(_524.y)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _538 = (max(0.0f, (_124 + -1.0f)) * 0.05f) * _temporalReprojectionParams.y;
    _549 = max(0.0f, (abs(_124 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_524.w & 16777215)))) * 5.960465e-08f)))) - _538));
    _558 = max(0.0f, (abs(_124 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_524.z & 16777215)))) * 5.960465e-08f)))) - _538));
    _567 = max(0.0f, (abs(_124 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_524.x & 16777215)))) * 5.960465e-08f)))) - _538));
    _576 = max(0.0f, (abs(_124 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_524.y & 16777215)))) * 5.960465e-08f)))) - _538));
    _577 = _549 * _549;
    _578 = _558 * _558;
    _579 = _567 * _567;
    _580 = _576 * _576;
    _581 = _529 & 127;
    _582 = _530 & 127;
    _583 = _531 & 127;
    _584 = _532 & 127;
    if ((uint)_120 > (uint)11) {
      _597 = ((int)(uint)((int)(((uint)_120 < (uint)21) || (_120 == 107))));
    } else {
      if (!(_120 == 6)) {
        _597 = ((int)(uint)((int)(_120 == 7)));
      } else {
        _597 = 1;
      }
    }
    _598 = _124 * _124;
    _600 = (_598 * 0.2f) + 1.0f;
    _601 = (_597 != 0);
    _607 = select(_601, -7.213475f, -72.13475f) * (1.0f / ((select(_601, 0.05f, 0.01f) * _598) + 1.0f));
    _608 = _118.x & 126;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _609 = (_608 == 66);
    _611 = _609 || (_120 == 53);
    _612 = __3__36__0__0__g_normalDepthHalf.GatherRed(__3__40__0__0__g_samplerPoint, float2(_515, _514));  // [sem: _3__36__0__0__g_normalDepthHalf_gather]
    _621 = min(1.0f, ((((float)((uint)((uint)(_612.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _627 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_612.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _633 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_612.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _635 = rsqrt(dot(float3(_621, _627, _633), float3(_621, _627, _633)));  // [sem: invLength]
    _636 = float(_520);
    _637 = float(_519);
    _638 = float(_518);
    _643 = min(1.0f, ((((float)((uint)((uint)(_612.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _649 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_612.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _655 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_612.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _657 = rsqrt(dot(float3(_643, _649, _655), float3(_643, _649, _655)));  // [sem: invLength]
    _662 = min(1.0f, ((((float)((uint)((uint)(_612.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _668 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_612.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _674 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_612.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _676 = rsqrt(dot(float3(_662, _668, _674), float3(_662, _668, _674)));  // [sem: invLength]
    _681 = min(1.0f, ((((float)((uint)((uint)(_612.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _687 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_612.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _693 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_612.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _695 = rsqrt(dot(float3(_681, _687, _693), float3(_681, _687, _693)));  // [sem: invLength]
    _696 = (_120 == 29);
    _697 = select(_696, 8192.0f, 256.0f);
    _705 = exp2(log2(saturate(dot(float3(_636, _637, _638), float3((_635 * _621), (_635 * _627), (_635 * _633))))) * _697);
    _713 = exp2(log2(saturate(dot(float3(_636, _637, _638), float3((_657 * _643), (_657 * _649), (_657 * _655))))) * _697);
    _721 = exp2(log2(saturate(dot(float3(_636, _637, _638), float3((_676 * _662), (_676 * _668), (_676 * _674))))) * _697);
    _729 = exp2(log2(saturate(dot(float3(_636, _637, _638), float3((_695 * _681), (_695 * _687), (_695 * _693))))) * _697);
    _734 = 1.0f / max(1e-06f, (((_713 + _705) + _721) + _729));
    _748 = ((_705 * ((float)((bool)(!(_611 ^ (((_529 & 126) == 66) || (_581 == 53))))))) * _734) * select((_577 > _600), 0.0f, exp2(_607 * _577));
    _762 = ((_713 * ((float)((bool)(!(_611 ^ (((_530 & 126) == 66) || (_582 == 53))))))) * _734) * select((_578 > _600), 0.0f, exp2(_607 * _578));
    _776 = ((_721 * ((float)((bool)(!(_611 ^ (((_531 & 126) == 66) || (_583 == 53))))))) * _734) * select((_579 > _600), 0.0f, exp2(_607 * _579));
    _790 = ((_729 * ((float)((bool)(!(_611 ^ (((_532 & 126) == 66) || (_584 == 53))))))) * _734) * select((_580 > _600), 0.0f, exp2(_607 * _580));
    if (_696) {
      _821 = abs(((((float)((int)(_104))) * 0.5f) + -0.25f) - ((float)((int)(_516))));
      _822 = abs(((((float)((int)(_99))) * 0.5f) + -0.25f) - ((float)((int)(_517))));
    } else {
      _821 = (((float)((uint)((uint)((uint)((uint)(_104)) - (uint)((uint)((uint)(_516)) << 1)) - (uint)((uint)(((uint)((uint)(_frameNumber.x)) >> 1) & 1))))) * 0.5f);
      _822 = (((float)((uint)((uint)((uint)((uint)(_99)) - (uint)((uint)((uint)(_517)) << 1)) - (uint)((uint)(_frameNumber.x & 1))))) * 0.5f);
    }
    _823 = saturate(_822);  // [sem: _822_sat]
    _824 = saturate(_821);  // [sem: _821_sat]
    _825 = 1.0f - _823;
    _826 = 1.0f - _824;
    _827 = _826 * _825;
    _828 = _826 * _823;
    _829 = _825 * _824;
    _830 = _824 * _823;
    _839 = (_762 == 0.0f) && ((_748 == 0.0f) && ((_776 == 0.0f) && ((_120 != 29) && (_790 == 0.0f))));
    _842 = saturate(_827 * select(_839, 1.0f, _748));  // [sem: expr_sat]
    _845 = saturate(_828 * select(_839, 1.0f, _762));  // [sem: expr_sat]
    _848 = saturate(_829 * select(_839, 1.0f, _776));  // [sem: expr_sat]
    _851 = saturate(_830 * select(_839, 1.0f, _790));  // [sem: expr_sat]
    _852 = dot(float4(_842, _845, _848, _851), float4(1.0f, 1.0f, 1.0f, 1.0f));
    _853 = max(0.0f, _852);
    _855 = saturate(_842 / _853);  // [sem: expr_sat]
    _857 = saturate(_845 / _853);  // [sem: expr_sat]
    _859 = saturate(_848 / _853);  // [sem: expr_sat]
    _861 = saturate(_851 / _853);  // [sem: expr_sat]
    if (((_582 == 107) || ((_582 == 6) || (((uint)((int)(_581) + (int)(-12)) < (uint)9) || ((_581 == 107) || ((_581 == 6) || (((uint)((int)(_583) + (int)(-12)) < (uint)9) || ((_583 == 107) || ((_583 == 6) || (((_584 == 6) || (_584 == 107)) || ((uint)((int)(_584) + (int)(-12)) < (uint)9)))))))))) || (((uint)((int)(_582) + (int)(-12)) < (uint)9) || _601)) {
      _893 = (_852 < 0.0001f);
    } else {
      _893 = false;
    }
    _894 = (float)((bool)(_893));
    _897 = (_894 * (_827 - _855)) + _855;
    _900 = (_894 * (_828 - _857)) + _857;
    _903 = (_894 * (_829 - _859)) + _859;
    _906 = (_894 * (_830 - _861)) + _861;
    half4 _908 = __3__36__0__0__g_diffuseResult.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _912 = (uint)((uint)(_517)) + (uint)(1);
    half4 _913 = __3__36__0__0__g_diffuseResult.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _917 = (uint)((uint)(_516)) + (uint)(1);
    half4 _918 = __3__36__0__0__g_diffuseResult.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    half4 _922 = __3__36__0__0__g_diffuseResult.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _936 = (((float(_913.x) * _900) + (float(_908.x) * _897)) + (float(_918.x) * _903)) + (float(_922.x) * _906);
    _947 = (((float(_913.y) * _900) + (float(_908.y) * _897)) + (float(_918.y) * _903)) + (float(_922.y) * _906);
    _958 = (((float(_913.z) * _900) + (float(_908.z) * _897)) + (float(_918.z) * _903)) + (float(_922.z) * _906);
    _960 = __3__36__0__0__g_specularResult.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _964 = __3__36__0__0__g_specularResult.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _968 = __3__36__0__0__g_specularResult.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _972 = __3__36__0__0__g_specularResult.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    if (!((_120 == 26) || ((uint)((int)(_120) + (int)(-27)) < (uint)2))) {
      _985 = (((uint)((int)(_120) + (int)(-105)) < (uint)2) || _186);
    } else {
      _985 = true;
    }
    _987 = (_111 * 2.0f) + -1.0f;
    _989 = 1.0f - (_113 * 2.0f);
    _1001 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _121, mad((_invViewProjRelative[3].y), _989, ((_invViewProjRelative[3].x) * _987)));
    _1010 = (mad((_invViewProjRelative[0].z), _121, mad((_invViewProjRelative[0].y), _989, ((_invViewProjRelative[0].x) * _987))) + (_invViewProjRelative[0].w)) / _1001;
    _1019 = (mad((_invViewProjRelative[1].z), _121, mad((_invViewProjRelative[1].y), _989, ((_invViewProjRelative[1].x) * _987))) + (_invViewProjRelative[1].w)) / _1001;
    _1028 = (mad((_invViewProjRelative[2].z), _121, mad((_invViewProjRelative[2].y), _989, ((_invViewProjRelative[2].x) * _987))) + (_invViewProjRelative[2].w)) / _1001;
    _1030 = rsqrt(dot(float3(_1010, _1019, _1028), float3(_1010, _1019, _1028)));  // [sem: invLength]
    _1031 = _1030 * _1010;
    _1032 = _1030 * _1019;
    _1033 = _1030 * _1028;
    _1034 = (_120 == 33);
    _1035 = (_120 == 54);
    _1036 = (_120 == 55);
    if ((_1036 || (_611 || (_1034 || ((_608 == 64) || _1035)))) || _985) {
      _1045 = __3__36__0__0__g_character.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_character_load]
      _1051 = _1045.w;  // [sem: _3__36__0__0__g_character_load_derived]
      _1052 = _1045.z;  // [sem: _3__36__0__0__g_character_load_derived]
      _1053 = _1045.y;  // [sem: _3__36__0__0__g_character_load_derived]
      _1054 = _1045.x;  // [sem: _3__36__0__0__g_character_load_derived]
    } else {
      _1051 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _1052 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _1053 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _1054 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
    }
    if (!_1034) {
      if (_1035) {
        _1059 = (uint)((_1052 * 255.0f) + 0.5f);
        if ((_1059 & 112) == 0) {
          _1614 = 52;
          _1615 = _521;
          _1616 = 0.0f;
          _1617 = 0.0f;
          _1618 = 0.0f;
          _1619 = 0.0f;
          _1620 = (_1614 == 53);
          if ((_1614 == 67) || _1620) {
            _1628 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
            if (!(float(_1615) > (frac(frac(dot(float2(((_1628 * 32.665f) + _105), ((_1628 * 11.815f) + _106)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
              if ((_1614 & 126) == 66) {
                _1653 = max(0.01f, float(_288));
                _1654 = max(0.01f, float(_294));
                _1655 = max(0.01f, float(_300));
                _1657 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _1661 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _1665 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _1669 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _2275 = _1616;
                _2276 = _1617;
                _2277 = _1618;
                _2278 = _1619;
                _2279 = _1655;
                _2280 = _1654;
                _2281 = _1653;
                _2282 = (min(30000.0f, ((((((_1661.z * _900) + (_1657.z * _897)) + (_1665.z * _903)) + (_1669.z * _906)) / _1655) * _exposure4.x)) + _958);
                _2283 = (min(30000.0f, ((((((_1661.y * _900) + (_1657.y * _897)) + (_1665.y * _903)) + (_1669.y * _906)) / _1654) * _exposure4.x)) + _947);
                _2284 = (min(30000.0f, (_exposure4.x * (((((_1661.x * _900) + (_1657.x * _897)) + (_1665.x * _903)) + (_1669.x * _906)) / _1653))) + _936);
                _2285 = _1614;
                _2286 = ((_1052 * 2.0f) + -1.0f);
                _2287 = ((_1053 * 2.0f) + -1.0f);
                _2288 = ((_1054 * 2.0f) + -1.0f);
                _2289 = 0.0h;
                _2290 = 1.0f;
              } else {
                if (_1620) {
                  _1711 = (_1054 * 2.0f) + -1.0f;
                  _1713 = (_1053 * 2.0f) + -1.0f;
                  _1715 = 1.0f - abs(_1711);
                  _1716 = abs(_1713);
                  _1717 = _1715 - _1716;
                  if (!(_1717 >= 0.0f)) {
                    _1728 = (_1715 * select((_1713 >= 0.0f), 1.0f, -1.0f));
                    _1729 = ((1.0f - _1716) * select((_1711 >= 0.0f), 1.0f, -1.0f));
                  } else {
                    _1728 = _1713;
                    _1729 = _1711;
                  }
                  _1731 = rsqrt(dot(float3(_1729, _1728, _1717), float3(_1729, _1728, _1717)));  // [sem: invLength]
                  _1738 = max(0.01f, float(_288));
                  _1739 = max(0.01f, float(_294));
                  _1740 = max(0.01f, float(_300));
                  _1742 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                  _1746 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                  _1750 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                  _1754 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                  _2275 = _1616;
                  _2276 = _1617;
                  _2277 = _1618;
                  _2278 = _1619;
                  _2279 = _1740;
                  _2280 = _1739;
                  _2281 = _1738;
                  _2282 = (min(30000.0f, ((((((_1746.z * _900) + (_1742.z * _897)) + (_1750.z * _903)) + (_1754.z * _906)) / _1740) * _exposure4.x)) + _958);
                  _2283 = (min(30000.0f, ((((((_1746.y * _900) + (_1742.y * _897)) + (_1750.y * _903)) + (_1754.y * _906)) / _1739) * _exposure4.x)) + _947);
                  _2284 = (min(30000.0f, (_exposure4.x * (((((_1746.x * _900) + (_1742.x * _897)) + (_1750.x * _903)) + (_1754.x * _906)) / _1738))) + _936);
                  _2285 = 53;
                  _2286 = (_1731 * _1717);
                  _2287 = (_1731 * _1728);
                  _2288 = (_1731 * _1729);
                  _2289 = 0.0h;
                  _2290 = 1.0f;
                } else {
                  _2275 = _1616;
                  _2276 = _1617;
                  _2277 = _1618;
                  _2278 = _1619;
                  _2279 = 0.0f;
                  _2280 = 0.0f;
                  _2281 = 0.0f;
                  _2282 = _958;
                  _2283 = _947;
                  _2284 = _936;
                  _2285 = _1614;
                  _2286 = _638;
                  _2287 = _637;
                  _2288 = _636;
                  _2289 = 0.0h;
                  _2290 = 1.0f;
                }
              }
            } else {
              _2275 = _1616;
              _2276 = _1617;
              _2277 = _1618;
              _2278 = _1619;
              _2279 = 0.0f;
              _2280 = 0.0f;
              _2281 = 0.0f;
              _2282 = _958;
              _2283 = _947;
              _2284 = _936;
              _2285 = 52;
              _2286 = _638;
              _2287 = _637;
              _2288 = _636;
              _2289 = 0.0h;
              _2290 = 1.0f;
            }
          } else {
            if ((_1614 & 126) == 66) {
              _1798 = __3__36__0__0__g_bentCone.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1802 = __3__36__0__0__g_bentCone.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1806 = __3__36__0__0__g_bentCone.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1810 = __3__36__0__0__g_bentCone.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1822 = (((((_1802.x * _900) + (_1798.x * _897)) + (_1806.x * _903)) + (_1810.x * _906)) * 2.0f) + -1.0f;
              _1831 = (((((_1802.y * _900) + (_1798.y * _897)) + (_1806.y * _903)) + (_1810.y * _906)) * 2.0f) + -1.0f;
              _1840 = (((((_1802.z * _900) + (_1798.z * _897)) + (_1806.z * _903)) + (_1810.z * _906)) * 2.0f) + -1.0f;
              _1842 = rsqrt(dot(float3(_1822, _1831, _1840), float3(_1822, _1831, _1840)));  // [sem: invLength]
              _1843 = _1822 * _1842;
              _1844 = _1831 * _1842;
              _1845 = _1840 * _1842;
              if (!(_renderParams.z > 0.0f)) {
                if (!(_renderParams2.y > 0.0f)) {
                  _1857 = (half)(saturate((half)(_177 + 0.15002441h)));
                } else {
                  _1857 = _177;
                }
              } else {
                _1857 = _177;
              }
              _1858 = float(_1857);
              _1861 = float(_288);
              _1862 = float(_294);
              _1863 = float(_300);
              _1864 = dot(float3(_636, _637, _638), float3(_1843, _1844, _1845));
              _1865 = -0.0f - _1031;
              _1866 = -0.0f - _1032;
              _1867 = -0.0f - _1033;
              _1868 = dot(float3(_636, _637, _638), float3(_1865, _1866, _1867));
              _1874 = cos(abs(asin(_1868) - asin(_1864)) * 0.5f);
              _1876 = _1843 - (_1864 * _636);
              _1878 = _1844 - (_1864 * _637);
              _1880 = _1845 - (_1864 * _638);
              _1882 = _1865 - (_1868 * _636);
              _1884 = _1866 - (_1868 * _637);
              _1886 = _1867 - (_1868 * _638);
              _1893 = dot(float3(_1876, _1878, _1880), float3(_1882, _1884, _1886)) * rsqrt((dot(float3(_1876, _1878, _1880), float3(_1876, _1878, _1880)) * dot(float3(_1882, _1884, _1886), float3(_1882, _1884, _1886))) + 0.0001f);
              _1895 = min(max(_1858, 0.09803922f), 1.0f);
              _1896 = _1895 * _1895;
              _1897 = _1896 * 0.5f;
              _1898 = _1896 * 2.0f;
              _1899 = _1868 + _1864;
              _1900 = _1899 - _bevelParams.y;
              _1904 = 1.0f / ((1.19f / _1874) + (_1874 * 0.36f));
              _1913 = ((_1904 * (0.6f - (_1893 * 0.8f))) + 1.0f) * sqrt(saturate((_1893 * 0.5f) + 0.5f));
              _1919 = 1.0f - (sqrt(saturate(1.0f - (_1913 * _1913))) * _1874);
              _1920 = _1919 * _1919;
              _1924 = 0.9534794f - ((_1920 * _1920) * (_1919 * 0.9534794f));
              _1925 = _1913 * _1904;
              _1930 = (sqrt(1.0f - (_1925 * _1925)) * 0.5f) / _1874;
              _1931 = log2(_1861);
              _1932 = log2(_1862);
              _1933 = log2(_1863);
              _1947 = ((_1924 * _1924) * (exp2((((_1900 * _1900) * -0.5f) / (_1897 * _1897)) * 1.442695f) / (_1896 * 1.2533141f))) * exp2(-5.741926f - (_1893 * 5.265837f));
              _1949 = _1899 - (_bevelParams.y * 4.0f);
              _1951 = 1.0f - (_1874 * 0.5f);
              _1952 = _1951 * _1951;
              _1956 = (_1952 * _1952) * (0.9534794f - (_1874 * 0.4767397f));
              _1957 = 0.9534794f - _1956;
              _1958 = 0.8f / _1874;
              _1974 = (((_1957 * _1957) * (_1956 + 0.046520565f)) * (exp2((((_1949 * _1949) * -0.5f) / (_1898 * _1898)) * 1.442695f) / (_1896 * 5.0132565f))) * exp2((_1893 * 24.525816f) + -24.208424f);
              _1983 = min(0.0f, (-0.0f - ((exp2(_1931 * _1930) * _1947) + (exp2(_1958 * _1931) * _1974))));
              _1992 = min(0.0f, (-0.0f - ((exp2(_1932 * _1930) * _1947) + (exp2(_1958 * _1932) * _1974))));
              _2001 = min(0.0f, (-0.0f - ((exp2(_1933 * _1930) * _1947) + (exp2(_1958 * _1933) * _1974))));
              _2004 = saturate(abs(dot(float3(_1843, _1844, _1845), float3(_636, _637, _638))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _2011 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_2004, _1858, saturate(sqrt(exp2(_1931 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _2018 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_2004, _1858, saturate(sqrt(exp2(_1932 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _2025 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_2004, _1858, saturate(sqrt(exp2(_1933 * 1.5f)))), 0.0f);
              _2028 = min(0.99f, _2011.x);
              _2029 = min(0.99f, _2018.x);
              _2030 = min(0.99f, _2025.x);
              _2031 = min(0.99f, _2011.y);
              _2032 = min(0.99f, _2018.y);
              _2033 = min(0.99f, _2025.y);
              _2034 = _2028 * _2028;
              _2035 = _2029 * _2029;
              _2036 = _2030 * _2030;
              _2037 = _2031 * _2031;
              _2038 = _2032 * _2032;
              _2039 = _2033 * _2033;
              _2040 = _2037 * _2031;
              _2041 = _2038 * _2032;
              _2042 = _2039 * _2033;
              _2043 = 1.0f - _2034;
              _2044 = 1.0f - _2035;
              _2045 = 1.0f - _2036;
              _2046 = _2043 * _2043;
              _2047 = _2044 * _2044;
              _2048 = _2045 * _2045;
              _2049 = _2046 * _2043;
              _2050 = _2047 * _2044;
              _2051 = _2048 * _2045;
              _2053 = min(max(_1858, 0.18f), 0.6f);
              _2054 = _2053 * _2053;
              _2055 = _2054 * 0.25f;
              _2056 = _2054 * 4.0f;
              _2058 = (_2029 + _2028) + _2030;
              _2059 = _2028 / _2058;
              _2060 = _2029 / _2058;
              _2061 = _2030 / _2058;
              _2062 = dot(float3(_2054, _2055, _2056), float3(_2059, _2060, _2061));
              _2063 = _2062 * _2062;
              _2070 = asin(min(max(_1864, -1.0f), 1.0f)) + asin(min(max(_1868, -1.0f), 1.0f));
              _2071 = _2070 * 0.5f;
              _2072 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_2059, _2060, _2061));
              _2073 = _2072 * _2072;
              _2075 = (_2032 + _2031) + _2033;
              _2079 = dot(float3(_2054, _2055, _2056), float3((_2031 / _2075), (_2032 / _2075), (_2033 / _2075)));
              _2083 = sqrt((_2079 * _2079) + (_2063 * 2.0f));
              _2086 = (_2079 * 3.0f) + (_2062 * 2.0f);
              _2094 = (((_2040 + _2031) * ((_2034 * 0.7f) + 1.0f)) * _2083) / ((_2086 * _2040) + _2031);
              _2102 = (((_2041 + _2032) * ((_2035 * 0.7f) + 1.0f)) * _2083) / ((_2086 * _2041) + _2032);
              _2110 = (((_2042 + _2033) * ((_2036 * 0.7f) + 1.0f)) * _2083) / ((_2086 * _2042) + _2033);
              _2121 = _2071 - (((_2073 * (((_2034 * 4.0f) * _2037) + (_2046 * 2.0f))) * (1.0f - ((_2037 * 2.0f) / _2046))) / _2049);
              _2132 = _2071 - (((_2073 * (((_2035 * 4.0f) * _2038) + (_2047 * 2.0f))) * (1.0f - ((_2038 * 2.0f) / _2047))) / _2050);
              _2143 = _2071 - (((_2073 * (((_2036 * 4.0f) * _2039) + (_2048 * 2.0f))) * (1.0f - ((_2039 * 2.0f) / _2048))) / _2051);
              _2149 = exp2((((_2070 * -0.25f) * _2071) / _2063) * 1.442695f) * 1.4f;
              _2169 = ((((((_2031 * _2034) / _2043) + ((_2040 * _2034) / _2049)) * 4.3982296f) * exp2((((_2121 * _2121) * -0.5f) / ((_2094 * _2094) + _2063)) * 1.442695f)) + ((((_2011.x + _1983) * 0.25f) - _1983) * 6.2831855f)) * _2149;
              _2189 = ((((((_2032 * _2035) / _2044) + ((_2041 * _2035) / _2050)) * 4.3982296f) * exp2((((_2132 * _2132) * -0.5f) / ((_2102 * _2102) + _2063)) * 1.442695f)) + ((((_2018.x + _1992) * 0.25f) - _1992) * 6.2831855f)) * _2149;
              _2209 = ((((((_2033 * _2036) / _2045) + ((_2042 * _2036) / _2051)) * 4.3982296f) * exp2((((_2143 * _2143) * -0.5f) / ((_2110 * _2110) + _2063)) * 1.442695f)) + ((((_2025.x + _2001) * 0.25f) - _2001) * 6.2831855f)) * _2149;
              _2213 = max(0.01f, (lerp(_2169, _1861, 0.125f)));
              _2217 = max(0.01f, (lerp(_2189, _1862, 0.125f)));
              _2221 = max(0.01f, (lerp(_2209, _1863, 0.125f)));
              _2223 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _2227 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _2231 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _2235 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _2275 = _1616;
              _2276 = _1617;
              _2277 = _1618;
              _2278 = _1619;
              _2279 = _2221;
              _2280 = _2217;
              _2281 = _2213;
              _2282 = (min(30000.0f, ((((((_2227.z * _900) + (_2223.z * _897)) + (_2231.z * _903)) + (_2235.z * _906)) / _2221) * _exposure4.x)) + _958);
              _2283 = (min(30000.0f, ((((((_2227.y * _900) + (_2223.y * _897)) + (_2231.y * _903)) + (_2235.y * _906)) / _2217) * _exposure4.x)) + _947);
              _2284 = (min(30000.0f, (_exposure4.x * (((((_2227.x * _900) + (_2223.x * _897)) + (_2231.x * _903)) + (_2235.x * _906)) / _2213))) + _936);
              _2285 = _1614;
              _2286 = _638;
              _2287 = _637;
              _2288 = _636;
              _2289 = _1615;
              _2290 = 0.0f;
            } else {
              _2275 = _1616;
              _2276 = _1617;
              _2277 = _1618;
              _2278 = _1619;
              _2279 = 0.0f;
              _2280 = 0.0f;
              _2281 = 0.0f;
              _2282 = _958;
              _2283 = _947;
              _2284 = _936;
              _2285 = _1614;
              _2286 = _638;
              _2287 = _637;
              _2288 = _636;
              _2289 = _1615;
              _2290 = 0.0f;
            }
          }
        } else {
          _1064 = ((uint)((uint)(_1059)) >> 4) & 7;
          if (!(_1064 == 0)) {
            _1068 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_1064) + (int)(1)))];
            _1077 = _1068.x;
            _1078 = _1068.y;
            _1079 = (((float)((uint)((uint)(_1059 & 15)))) * 0.06666667f);
            _1080 = min((1.0f - _1068.y), _1068.x);
          } else {
            _1077 = 0.0f;
            _1078 = 0.0f;
            _1079 = 0.0f;
            _1080 = 0.0f;
          }
          _1120 = _1077;
          _1121 = _1078;
          _1122 = _1079;
          _1123 = _1080;
          _1124 = (half)(half(_effectiveMetallicForVelvet * _1077));
          if (_120 == 66) {
            _1127 = float(_1124);
            _1129 = (_1054 * 2.0f) + -1.0f;
            _1131 = (_1053 * 2.0f) + -1.0f;
            _1133 = (_1052 * 2.0f) + -1.0f;
            if (_609) {
              _1136 = __3__36__0__0__g_bentCone.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1140 = __3__36__0__0__g_bentCone.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1144 = __3__36__0__0__g_bentCone.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1148 = __3__36__0__0__g_bentCone.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1160 = (((((_1140.x * _900) + (_1136.x * _897)) + (_1144.x * _903)) + (_1148.x * _906)) * 2.0f) + -1.0f;
              _1169 = (((((_1140.y * _900) + (_1136.y * _897)) + (_1144.y * _903)) + (_1148.y * _906)) * 2.0f) + -1.0f;
              _1178 = (((((_1140.z * _900) + (_1136.z * _897)) + (_1144.z * _903)) + (_1148.z * _906)) * 2.0f) + -1.0f;
              _1180 = rsqrt(dot(float3(_1160, _1169, _1178), float3(_1160, _1169, _1178)));  // [sem: invLength]
              _1181 = _1160 * _1180;
              _1182 = _1169 * _1180;
              _1183 = _1178 * _1180;
              if (!(_renderParams.z > 0.0f)) {
                if (!(_renderParams2.y > 0.0f)) {
                  _1195 = (half)(saturate((half)(_177 + 0.15002441h)));
                } else {
                  _1195 = _177;
                }
              } else {
                _1195 = _177;
              }
              _1196 = float(_1195);
              _1199 = float(_288);
              _1200 = float(_294);
              _1201 = float(_300);
              _1202 = dot(float3(_1129, _1131, _1133), float3(_1181, _1182, _1183));
              _1203 = -0.0f - _1031;
              _1204 = -0.0f - _1032;
              _1205 = -0.0f - _1033;
              _1206 = dot(float3(_1129, _1131, _1133), float3(_1203, _1204, _1205));
              _1212 = cos(abs(asin(_1206) - asin(_1202)) * 0.5f);
              _1214 = _1181 - (_1202 * _1129);
              _1216 = _1182 - (_1202 * _1131);
              _1218 = _1183 - (_1202 * _1133);
              _1220 = _1203 - (_1206 * _1129);
              _1222 = _1204 - (_1206 * _1131);
              _1224 = _1205 - (_1206 * _1133);
              _1231 = dot(float3(_1214, _1216, _1218), float3(_1220, _1222, _1224)) * rsqrt((dot(float3(_1214, _1216, _1218), float3(_1214, _1216, _1218)) * dot(float3(_1220, _1222, _1224), float3(_1220, _1222, _1224))) + 0.0001f);
              _1233 = min(max(_1196, 0.09803922f), 1.0f);
              _1234 = _1233 * _1233;
              _1235 = _1234 * 0.5f;
              _1236 = _1234 * 2.0f;
              _1237 = _1206 + _1202;
              _1238 = _1237 - _bevelParams.y;
              _1242 = 1.0f / ((1.19f / _1212) + (_1212 * 0.36f));
              _1251 = ((_1242 * (0.6f - (_1231 * 0.8f))) + 1.0f) * sqrt(saturate((_1231 * 0.5f) + 0.5f));
              _1257 = 1.0f - (sqrt(saturate(1.0f - (_1251 * _1251))) * _1212);
              _1258 = _1257 * _1257;
              _1262 = 0.9534794f - ((_1258 * _1258) * (_1257 * 0.9534794f));
              _1263 = _1251 * _1242;
              _1268 = (sqrt(1.0f - (_1263 * _1263)) * 0.5f) / _1212;
              _1269 = log2(_1199);
              _1270 = log2(_1200);
              _1271 = log2(_1201);
              _1285 = ((_1262 * _1262) * (exp2((((_1238 * _1238) * -0.5f) / (_1235 * _1235)) * 1.442695f) / (_1234 * 1.2533141f))) * exp2(-5.741926f - (_1231 * 5.265837f));
              _1287 = _1237 - (_bevelParams.y * 4.0f);
              _1289 = 1.0f - (_1212 * 0.5f);
              _1290 = _1289 * _1289;
              _1294 = (_1290 * _1290) * (0.9534794f - (_1212 * 0.4767397f));
              _1295 = 0.9534794f - _1294;
              _1296 = 0.8f / _1212;
              _1312 = (((_1295 * _1295) * (_1294 + 0.046520565f)) * (exp2((((_1287 * _1287) * -0.5f) / (_1236 * _1236)) * 1.442695f) / (_1234 * 5.0132565f))) * exp2((_1231 * 24.525816f) + -24.208424f);
              _1321 = min(0.0f, (-0.0f - ((exp2(_1269 * _1268) * _1285) + (exp2(_1296 * _1269) * _1312))));
              _1330 = min(0.0f, (-0.0f - ((exp2(_1270 * _1268) * _1285) + (exp2(_1296 * _1270) * _1312))));
              _1339 = min(0.0f, (-0.0f - ((exp2(_1271 * _1268) * _1285) + (exp2(_1296 * _1271) * _1312))));
              _1342 = saturate(abs(dot(float3(_1181, _1182, _1183), float3(_1129, _1131, _1133))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1349 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1342, _1196, saturate(sqrt(exp2(_1269 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1356 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1342, _1196, saturate(sqrt(exp2(_1270 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1363 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1342, _1196, saturate(sqrt(exp2(_1271 * 1.5f)))), 0.0f);
              _1366 = min(0.99f, _1349.x);
              _1367 = min(0.99f, _1356.x);
              _1368 = min(0.99f, _1363.x);
              _1369 = min(0.99f, _1349.y);
              _1370 = min(0.99f, _1356.y);
              _1371 = min(0.99f, _1363.y);
              _1372 = _1366 * _1366;
              _1373 = _1367 * _1367;
              _1374 = _1368 * _1368;
              _1375 = _1369 * _1369;
              _1376 = _1370 * _1370;
              _1377 = _1371 * _1371;
              _1378 = _1375 * _1369;
              _1379 = _1376 * _1370;
              _1380 = _1377 * _1371;
              _1381 = 1.0f - _1372;
              _1382 = 1.0f - _1373;
              _1383 = 1.0f - _1374;
              _1384 = _1381 * _1381;
              _1385 = _1382 * _1382;
              _1386 = _1383 * _1383;
              _1387 = _1384 * _1381;
              _1388 = _1385 * _1382;
              _1389 = _1386 * _1383;
              _1391 = min(max(_1196, 0.18f), 0.6f);
              _1392 = _1391 * _1391;
              _1393 = _1392 * 0.25f;
              _1394 = _1392 * 4.0f;
              _1396 = (_1367 + _1366) + _1368;
              _1397 = _1366 / _1396;
              _1398 = _1367 / _1396;
              _1399 = _1368 / _1396;
              _1400 = dot(float3(_1392, _1393, _1394), float3(_1397, _1398, _1399));
              _1401 = _1400 * _1400;
              _1408 = asin(min(max(_1202, -1.0f), 1.0f)) + asin(min(max(_1206, -1.0f), 1.0f));
              _1409 = _1408 * 0.5f;
              _1410 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1397, _1398, _1399));
              _1411 = _1410 * _1410;
              _1413 = (_1370 + _1369) + _1371;
              _1417 = dot(float3(_1392, _1393, _1394), float3((_1369 / _1413), (_1370 / _1413), (_1371 / _1413)));
              _1421 = sqrt((_1417 * _1417) + (_1401 * 2.0f));
              _1424 = (_1417 * 3.0f) + (_1400 * 2.0f);
              _1432 = (((_1378 + _1369) * ((_1372 * 0.7f) + 1.0f)) * _1421) / ((_1424 * _1378) + _1369);
              _1440 = (((_1379 + _1370) * ((_1373 * 0.7f) + 1.0f)) * _1421) / ((_1424 * _1379) + _1370);
              _1448 = (((_1380 + _1371) * ((_1374 * 0.7f) + 1.0f)) * _1421) / ((_1424 * _1380) + _1371);
              _1459 = _1409 - (((_1411 * (((_1372 * 4.0f) * _1375) + (_1384 * 2.0f))) * (1.0f - ((_1375 * 2.0f) / _1384))) / _1387);
              _1470 = _1409 - (((_1411 * (((_1373 * 4.0f) * _1376) + (_1385 * 2.0f))) * (1.0f - ((_1376 * 2.0f) / _1385))) / _1388);
              _1481 = _1409 - (((_1411 * (((_1374 * 4.0f) * _1377) + (_1386 * 2.0f))) * (1.0f - ((_1377 * 2.0f) / _1386))) / _1389);
              _1487 = exp2((((_1408 * -0.25f) * _1409) / _1401) * 1.442695f) * 1.4f;
              _1507 = ((((((_1369 * _1372) / _1381) + ((_1378 * _1372) / _1387)) * 4.3982296f) * exp2((((_1459 * _1459) * -0.5f) / ((_1432 * _1432) + _1401)) * 1.442695f)) + ((((_1349.x + _1321) * 0.25f) - _1321) * 6.2831855f)) * _1487;
              _1527 = ((((((_1370 * _1373) / _1382) + ((_1379 * _1373) / _1388)) * 4.3982296f) * exp2((((_1470 * _1470) * -0.5f) / ((_1440 * _1440) + _1401)) * 1.442695f)) + ((((_1356.x + _1330) * 0.25f) - _1330) * 6.2831855f)) * _1487;
              _1547 = ((((((_1371 * _1374) / _1383) + ((_1380 * _1374) / _1389)) * 4.3982296f) * exp2((((_1481 * _1481) * -0.5f) / ((_1448 * _1448) + _1401)) * 1.442695f)) + ((((_1363.x + _1339) * 0.25f) - _1339) * 6.2831855f)) * _1487;
              _1548 = max(0.125f, _1127);
              _1552 = max(0.01f, ((_1548 * (_1199 - _1507)) + _1507));
              _1556 = max(0.01f, ((_1548 * (_1200 - _1527)) + _1527));
              _1560 = max(0.01f, (lerp(_1547, _1201, _1548)));
              _1562 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1566 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1570 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1574 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _2275 = _1123;
              _2276 = _1122;
              _2277 = _1121;
              _2278 = _1120;
              _2279 = _1560;
              _2280 = _1556;
              _2281 = _1552;
              _2282 = (min(30000.0f, ((((((_1566.z * _900) + (_1562.z * _897)) + (_1570.z * _903)) + (_1574.z * _906)) / _1560) * _exposure4.x)) + _958);
              _2283 = (min(30000.0f, ((((((_1566.y * _900) + (_1562.y * _897)) + (_1570.y * _903)) + (_1574.y * _906)) / _1556) * _exposure4.x)) + _947);
              _2284 = (min(30000.0f, (_exposure4.x * (((((_1566.x * _900) + (_1562.x * _897)) + (_1570.x * _903)) + (_1574.x * _906)) / _1552))) + _936);
              _2285 = 66;
              _2286 = _1133;
              _2287 = _1131;
              _2288 = _1129;
              _2289 = 0.0h;
              _2290 = _1127;
            } else {
              _2275 = _1123;
              _2276 = _1122;
              _2277 = _1121;
              _2278 = _1120;
              _2279 = 0.0f;
              _2280 = 0.0f;
              _2281 = 0.0f;
              _2282 = _958;
              _2283 = _947;
              _2284 = _936;
              _2285 = 66;
              _2286 = _1133;
              _2287 = _1131;
              _2288 = _1129;
              _2289 = 0.0h;
              _2290 = _1127;
            }
          } else {
            _1614 = _120;
            _1615 = _1124;
            _1616 = _1123;
            _1617 = _1122;
            _1618 = _1121;
            _1619 = _1120;
            _1620 = (_1614 == 53);
            if ((_1614 == 67) || _1620) {
              _1628 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
              if (!(float(_1615) > (frac(frac(dot(float2(((_1628 * 32.665f) + _105), ((_1628 * 11.815f) + _106)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
                if ((_1614 & 126) == 66) {
                  _1653 = max(0.01f, float(_288));
                  _1654 = max(0.01f, float(_294));
                  _1655 = max(0.01f, float(_300));
                  _1657 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                  _1661 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                  _1665 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                  _1669 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                  _2275 = _1616;
                  _2276 = _1617;
                  _2277 = _1618;
                  _2278 = _1619;
                  _2279 = _1655;
                  _2280 = _1654;
                  _2281 = _1653;
                  _2282 = (min(30000.0f, ((((((_1661.z * _900) + (_1657.z * _897)) + (_1665.z * _903)) + (_1669.z * _906)) / _1655) * _exposure4.x)) + _958);
                  _2283 = (min(30000.0f, ((((((_1661.y * _900) + (_1657.y * _897)) + (_1665.y * _903)) + (_1669.y * _906)) / _1654) * _exposure4.x)) + _947);
                  _2284 = (min(30000.0f, (_exposure4.x * (((((_1661.x * _900) + (_1657.x * _897)) + (_1665.x * _903)) + (_1669.x * _906)) / _1653))) + _936);
                  _2285 = _1614;
                  _2286 = ((_1052 * 2.0f) + -1.0f);
                  _2287 = ((_1053 * 2.0f) + -1.0f);
                  _2288 = ((_1054 * 2.0f) + -1.0f);
                  _2289 = 0.0h;
                  _2290 = 1.0f;
                } else {
                  if (_1620) {
                    _1711 = (_1054 * 2.0f) + -1.0f;
                    _1713 = (_1053 * 2.0f) + -1.0f;
                    _1715 = 1.0f - abs(_1711);
                    _1716 = abs(_1713);
                    _1717 = _1715 - _1716;
                    if (!(_1717 >= 0.0f)) {
                      _1728 = (_1715 * select((_1713 >= 0.0f), 1.0f, -1.0f));
                      _1729 = ((1.0f - _1716) * select((_1711 >= 0.0f), 1.0f, -1.0f));
                    } else {
                      _1728 = _1713;
                      _1729 = _1711;
                    }
                    _1731 = rsqrt(dot(float3(_1729, _1728, _1717), float3(_1729, _1728, _1717)));  // [sem: invLength]
                    _1738 = max(0.01f, float(_288));
                    _1739 = max(0.01f, float(_294));
                    _1740 = max(0.01f, float(_300));
                    _1742 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                    _1746 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                    _1750 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                    _1754 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                    _2275 = _1616;
                    _2276 = _1617;
                    _2277 = _1618;
                    _2278 = _1619;
                    _2279 = _1740;
                    _2280 = _1739;
                    _2281 = _1738;
                    _2282 = (min(30000.0f, ((((((_1746.z * _900) + (_1742.z * _897)) + (_1750.z * _903)) + (_1754.z * _906)) / _1740) * _exposure4.x)) + _958);
                    _2283 = (min(30000.0f, ((((((_1746.y * _900) + (_1742.y * _897)) + (_1750.y * _903)) + (_1754.y * _906)) / _1739) * _exposure4.x)) + _947);
                    _2284 = (min(30000.0f, (_exposure4.x * (((((_1746.x * _900) + (_1742.x * _897)) + (_1750.x * _903)) + (_1754.x * _906)) / _1738))) + _936);
                    _2285 = 53;
                    _2286 = (_1731 * _1717);
                    _2287 = (_1731 * _1728);
                    _2288 = (_1731 * _1729);
                    _2289 = 0.0h;
                    _2290 = 1.0f;
                  } else {
                    _2275 = _1616;
                    _2276 = _1617;
                    _2277 = _1618;
                    _2278 = _1619;
                    _2279 = 0.0f;
                    _2280 = 0.0f;
                    _2281 = 0.0f;
                    _2282 = _958;
                    _2283 = _947;
                    _2284 = _936;
                    _2285 = _1614;
                    _2286 = _638;
                    _2287 = _637;
                    _2288 = _636;
                    _2289 = 0.0h;
                    _2290 = 1.0f;
                  }
                }
              } else {
                _2275 = _1616;
                _2276 = _1617;
                _2277 = _1618;
                _2278 = _1619;
                _2279 = 0.0f;
                _2280 = 0.0f;
                _2281 = 0.0f;
                _2282 = _958;
                _2283 = _947;
                _2284 = _936;
                _2285 = 52;
                _2286 = _638;
                _2287 = _637;
                _2288 = _636;
                _2289 = 0.0h;
                _2290 = 1.0f;
              }
            } else {
              if ((_1614 & 126) == 66) {
                _1798 = __3__36__0__0__g_bentCone.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1802 = __3__36__0__0__g_bentCone.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1806 = __3__36__0__0__g_bentCone.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1810 = __3__36__0__0__g_bentCone.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1822 = (((((_1802.x * _900) + (_1798.x * _897)) + (_1806.x * _903)) + (_1810.x * _906)) * 2.0f) + -1.0f;
                _1831 = (((((_1802.y * _900) + (_1798.y * _897)) + (_1806.y * _903)) + (_1810.y * _906)) * 2.0f) + -1.0f;
                _1840 = (((((_1802.z * _900) + (_1798.z * _897)) + (_1806.z * _903)) + (_1810.z * _906)) * 2.0f) + -1.0f;
                _1842 = rsqrt(dot(float3(_1822, _1831, _1840), float3(_1822, _1831, _1840)));  // [sem: invLength]
                _1843 = _1822 * _1842;
                _1844 = _1831 * _1842;
                _1845 = _1840 * _1842;
                if (!(_renderParams.z > 0.0f)) {
                  if (!(_renderParams2.y > 0.0f)) {
                    _1857 = (half)(saturate((half)(_177 + 0.15002441h)));
                  } else {
                    _1857 = _177;
                  }
                } else {
                  _1857 = _177;
                }
                _1858 = float(_1857);
                _1861 = float(_288);
                _1862 = float(_294);
                _1863 = float(_300);
                _1864 = dot(float3(_636, _637, _638), float3(_1843, _1844, _1845));
                _1865 = -0.0f - _1031;
                _1866 = -0.0f - _1032;
                _1867 = -0.0f - _1033;
                _1868 = dot(float3(_636, _637, _638), float3(_1865, _1866, _1867));
                _1874 = cos(abs(asin(_1868) - asin(_1864)) * 0.5f);
                _1876 = _1843 - (_1864 * _636);
                _1878 = _1844 - (_1864 * _637);
                _1880 = _1845 - (_1864 * _638);
                _1882 = _1865 - (_1868 * _636);
                _1884 = _1866 - (_1868 * _637);
                _1886 = _1867 - (_1868 * _638);
                _1893 = dot(float3(_1876, _1878, _1880), float3(_1882, _1884, _1886)) * rsqrt((dot(float3(_1876, _1878, _1880), float3(_1876, _1878, _1880)) * dot(float3(_1882, _1884, _1886), float3(_1882, _1884, _1886))) + 0.0001f);
                _1895 = min(max(_1858, 0.09803922f), 1.0f);
                _1896 = _1895 * _1895;
                _1897 = _1896 * 0.5f;
                _1898 = _1896 * 2.0f;
                _1899 = _1868 + _1864;
                _1900 = _1899 - _bevelParams.y;
                _1904 = 1.0f / ((1.19f / _1874) + (_1874 * 0.36f));
                _1913 = ((_1904 * (0.6f - (_1893 * 0.8f))) + 1.0f) * sqrt(saturate((_1893 * 0.5f) + 0.5f));
                _1919 = 1.0f - (sqrt(saturate(1.0f - (_1913 * _1913))) * _1874);
                _1920 = _1919 * _1919;
                _1924 = 0.9534794f - ((_1920 * _1920) * (_1919 * 0.9534794f));
                _1925 = _1913 * _1904;
                _1930 = (sqrt(1.0f - (_1925 * _1925)) * 0.5f) / _1874;
                _1931 = log2(_1861);
                _1932 = log2(_1862);
                _1933 = log2(_1863);
                _1947 = ((_1924 * _1924) * (exp2((((_1900 * _1900) * -0.5f) / (_1897 * _1897)) * 1.442695f) / (_1896 * 1.2533141f))) * exp2(-5.741926f - (_1893 * 5.265837f));
                _1949 = _1899 - (_bevelParams.y * 4.0f);
                _1951 = 1.0f - (_1874 * 0.5f);
                _1952 = _1951 * _1951;
                _1956 = (_1952 * _1952) * (0.9534794f - (_1874 * 0.4767397f));
                _1957 = 0.9534794f - _1956;
                _1958 = 0.8f / _1874;
                _1974 = (((_1957 * _1957) * (_1956 + 0.046520565f)) * (exp2((((_1949 * _1949) * -0.5f) / (_1898 * _1898)) * 1.442695f) / (_1896 * 5.0132565f))) * exp2((_1893 * 24.525816f) + -24.208424f);
                _1983 = min(0.0f, (-0.0f - ((exp2(_1931 * _1930) * _1947) + (exp2(_1958 * _1931) * _1974))));
                _1992 = min(0.0f, (-0.0f - ((exp2(_1932 * _1930) * _1947) + (exp2(_1958 * _1932) * _1974))));
                _2001 = min(0.0f, (-0.0f - ((exp2(_1933 * _1930) * _1947) + (exp2(_1958 * _1933) * _1974))));
                _2004 = saturate(abs(dot(float3(_1843, _1844, _1845), float3(_636, _637, _638))));  // [sem: expr_sat]
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _2011 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_2004, _1858, saturate(sqrt(exp2(_1931 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _2018 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_2004, _1858, saturate(sqrt(exp2(_1932 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _2025 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_2004, _1858, saturate(sqrt(exp2(_1933 * 1.5f)))), 0.0f);
                _2028 = min(0.99f, _2011.x);
                _2029 = min(0.99f, _2018.x);
                _2030 = min(0.99f, _2025.x);
                _2031 = min(0.99f, _2011.y);
                _2032 = min(0.99f, _2018.y);
                _2033 = min(0.99f, _2025.y);
                _2034 = _2028 * _2028;
                _2035 = _2029 * _2029;
                _2036 = _2030 * _2030;
                _2037 = _2031 * _2031;
                _2038 = _2032 * _2032;
                _2039 = _2033 * _2033;
                _2040 = _2037 * _2031;
                _2041 = _2038 * _2032;
                _2042 = _2039 * _2033;
                _2043 = 1.0f - _2034;
                _2044 = 1.0f - _2035;
                _2045 = 1.0f - _2036;
                _2046 = _2043 * _2043;
                _2047 = _2044 * _2044;
                _2048 = _2045 * _2045;
                _2049 = _2046 * _2043;
                _2050 = _2047 * _2044;
                _2051 = _2048 * _2045;
                _2053 = min(max(_1858, 0.18f), 0.6f);
                _2054 = _2053 * _2053;
                _2055 = _2054 * 0.25f;
                _2056 = _2054 * 4.0f;
                _2058 = (_2029 + _2028) + _2030;
                _2059 = _2028 / _2058;
                _2060 = _2029 / _2058;
                _2061 = _2030 / _2058;
                _2062 = dot(float3(_2054, _2055, _2056), float3(_2059, _2060, _2061));
                _2063 = _2062 * _2062;
                _2070 = asin(min(max(_1864, -1.0f), 1.0f)) + asin(min(max(_1868, -1.0f), 1.0f));
                _2071 = _2070 * 0.5f;
                _2072 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_2059, _2060, _2061));
                _2073 = _2072 * _2072;
                _2075 = (_2032 + _2031) + _2033;
                _2079 = dot(float3(_2054, _2055, _2056), float3((_2031 / _2075), (_2032 / _2075), (_2033 / _2075)));
                _2083 = sqrt((_2079 * _2079) + (_2063 * 2.0f));
                _2086 = (_2079 * 3.0f) + (_2062 * 2.0f);
                _2094 = (((_2040 + _2031) * ((_2034 * 0.7f) + 1.0f)) * _2083) / ((_2086 * _2040) + _2031);
                _2102 = (((_2041 + _2032) * ((_2035 * 0.7f) + 1.0f)) * _2083) / ((_2086 * _2041) + _2032);
                _2110 = (((_2042 + _2033) * ((_2036 * 0.7f) + 1.0f)) * _2083) / ((_2086 * _2042) + _2033);
                _2121 = _2071 - (((_2073 * (((_2034 * 4.0f) * _2037) + (_2046 * 2.0f))) * (1.0f - ((_2037 * 2.0f) / _2046))) / _2049);
                _2132 = _2071 - (((_2073 * (((_2035 * 4.0f) * _2038) + (_2047 * 2.0f))) * (1.0f - ((_2038 * 2.0f) / _2047))) / _2050);
                _2143 = _2071 - (((_2073 * (((_2036 * 4.0f) * _2039) + (_2048 * 2.0f))) * (1.0f - ((_2039 * 2.0f) / _2048))) / _2051);
                _2149 = exp2((((_2070 * -0.25f) * _2071) / _2063) * 1.442695f) * 1.4f;
                _2169 = ((((((_2031 * _2034) / _2043) + ((_2040 * _2034) / _2049)) * 4.3982296f) * exp2((((_2121 * _2121) * -0.5f) / ((_2094 * _2094) + _2063)) * 1.442695f)) + ((((_2011.x + _1983) * 0.25f) - _1983) * 6.2831855f)) * _2149;
                _2189 = ((((((_2032 * _2035) / _2044) + ((_2041 * _2035) / _2050)) * 4.3982296f) * exp2((((_2132 * _2132) * -0.5f) / ((_2102 * _2102) + _2063)) * 1.442695f)) + ((((_2018.x + _1992) * 0.25f) - _1992) * 6.2831855f)) * _2149;
                _2209 = ((((((_2033 * _2036) / _2045) + ((_2042 * _2036) / _2051)) * 4.3982296f) * exp2((((_2143 * _2143) * -0.5f) / ((_2110 * _2110) + _2063)) * 1.442695f)) + ((((_2025.x + _2001) * 0.25f) - _2001) * 6.2831855f)) * _2149;
                _2213 = max(0.01f, (lerp(_2169, _1861, 0.125f)));
                _2217 = max(0.01f, (lerp(_2189, _1862, 0.125f)));
                _2221 = max(0.01f, (lerp(_2209, _1863, 0.125f)));
                _2223 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _2227 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _2231 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _2235 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _2275 = _1616;
                _2276 = _1617;
                _2277 = _1618;
                _2278 = _1619;
                _2279 = _2221;
                _2280 = _2217;
                _2281 = _2213;
                _2282 = (min(30000.0f, ((((((_2227.z * _900) + (_2223.z * _897)) + (_2231.z * _903)) + (_2235.z * _906)) / _2221) * _exposure4.x)) + _958);
                _2283 = (min(30000.0f, ((((((_2227.y * _900) + (_2223.y * _897)) + (_2231.y * _903)) + (_2235.y * _906)) / _2217) * _exposure4.x)) + _947);
                _2284 = (min(30000.0f, (_exposure4.x * (((((_2227.x * _900) + (_2223.x * _897)) + (_2231.x * _903)) + (_2235.x * _906)) / _2213))) + _936);
                _2285 = _1614;
                _2286 = _638;
                _2287 = _637;
                _2288 = _636;
                _2289 = _1615;
                _2290 = 0.0f;
              } else {
                _2275 = _1616;
                _2276 = _1617;
                _2277 = _1618;
                _2278 = _1619;
                _2279 = 0.0f;
                _2280 = 0.0f;
                _2281 = 0.0f;
                _2282 = _958;
                _2283 = _947;
                _2284 = _936;
                _2285 = _1614;
                _2286 = _638;
                _2287 = _637;
                _2288 = _636;
                _2289 = _1615;
                _2290 = 0.0f;
              }
            }
          }
        }
      } else {
        if (_1036) {
          _1614 = select(((((int)((uint)((_1052 * 255.0f) + 0.5f))) & 127) == 0), 52, 55);
          _1615 = _521;
          _1616 = 0.0f;
          _1617 = 0.0f;
          _1618 = 0.0f;
          _1619 = 0.0f;
          _1620 = (_1614 == 53);
          if ((_1614 == 67) || _1620) {
            _1628 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
            if (!(float(_1615) > (frac(frac(dot(float2(((_1628 * 32.665f) + _105), ((_1628 * 11.815f) + _106)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
              if ((_1614 & 126) == 66) {
                _1653 = max(0.01f, float(_288));
                _1654 = max(0.01f, float(_294));
                _1655 = max(0.01f, float(_300));
                _1657 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _1661 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _1665 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _1669 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _2275 = _1616;
                _2276 = _1617;
                _2277 = _1618;
                _2278 = _1619;
                _2279 = _1655;
                _2280 = _1654;
                _2281 = _1653;
                _2282 = (min(30000.0f, ((((((_1661.z * _900) + (_1657.z * _897)) + (_1665.z * _903)) + (_1669.z * _906)) / _1655) * _exposure4.x)) + _958);
                _2283 = (min(30000.0f, ((((((_1661.y * _900) + (_1657.y * _897)) + (_1665.y * _903)) + (_1669.y * _906)) / _1654) * _exposure4.x)) + _947);
                _2284 = (min(30000.0f, (_exposure4.x * (((((_1661.x * _900) + (_1657.x * _897)) + (_1665.x * _903)) + (_1669.x * _906)) / _1653))) + _936);
                _2285 = _1614;
                _2286 = ((_1052 * 2.0f) + -1.0f);
                _2287 = ((_1053 * 2.0f) + -1.0f);
                _2288 = ((_1054 * 2.0f) + -1.0f);
                _2289 = 0.0h;
                _2290 = 1.0f;
              } else {
                if (_1620) {
                  _1711 = (_1054 * 2.0f) + -1.0f;
                  _1713 = (_1053 * 2.0f) + -1.0f;
                  _1715 = 1.0f - abs(_1711);
                  _1716 = abs(_1713);
                  _1717 = _1715 - _1716;
                  if (!(_1717 >= 0.0f)) {
                    _1728 = (_1715 * select((_1713 >= 0.0f), 1.0f, -1.0f));
                    _1729 = ((1.0f - _1716) * select((_1711 >= 0.0f), 1.0f, -1.0f));
                  } else {
                    _1728 = _1713;
                    _1729 = _1711;
                  }
                  _1731 = rsqrt(dot(float3(_1729, _1728, _1717), float3(_1729, _1728, _1717)));  // [sem: invLength]
                  _1738 = max(0.01f, float(_288));
                  _1739 = max(0.01f, float(_294));
                  _1740 = max(0.01f, float(_300));
                  _1742 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                  _1746 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                  _1750 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                  _1754 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                  _2275 = _1616;
                  _2276 = _1617;
                  _2277 = _1618;
                  _2278 = _1619;
                  _2279 = _1740;
                  _2280 = _1739;
                  _2281 = _1738;
                  _2282 = (min(30000.0f, ((((((_1746.z * _900) + (_1742.z * _897)) + (_1750.z * _903)) + (_1754.z * _906)) / _1740) * _exposure4.x)) + _958);
                  _2283 = (min(30000.0f, ((((((_1746.y * _900) + (_1742.y * _897)) + (_1750.y * _903)) + (_1754.y * _906)) / _1739) * _exposure4.x)) + _947);
                  _2284 = (min(30000.0f, (_exposure4.x * (((((_1746.x * _900) + (_1742.x * _897)) + (_1750.x * _903)) + (_1754.x * _906)) / _1738))) + _936);
                  _2285 = 53;
                  _2286 = (_1731 * _1717);
                  _2287 = (_1731 * _1728);
                  _2288 = (_1731 * _1729);
                  _2289 = 0.0h;
                  _2290 = 1.0f;
                } else {
                  _2275 = _1616;
                  _2276 = _1617;
                  _2277 = _1618;
                  _2278 = _1619;
                  _2279 = 0.0f;
                  _2280 = 0.0f;
                  _2281 = 0.0f;
                  _2282 = _958;
                  _2283 = _947;
                  _2284 = _936;
                  _2285 = _1614;
                  _2286 = _638;
                  _2287 = _637;
                  _2288 = _636;
                  _2289 = 0.0h;
                  _2290 = 1.0f;
                }
              }
            } else {
              _2275 = _1616;
              _2276 = _1617;
              _2277 = _1618;
              _2278 = _1619;
              _2279 = 0.0f;
              _2280 = 0.0f;
              _2281 = 0.0f;
              _2282 = _958;
              _2283 = _947;
              _2284 = _936;
              _2285 = 52;
              _2286 = _638;
              _2287 = _637;
              _2288 = _636;
              _2289 = 0.0h;
              _2290 = 1.0f;
            }
          } else {
            if ((_1614 & 126) == 66) {
              _1798 = __3__36__0__0__g_bentCone.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1802 = __3__36__0__0__g_bentCone.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1806 = __3__36__0__0__g_bentCone.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1810 = __3__36__0__0__g_bentCone.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1822 = (((((_1802.x * _900) + (_1798.x * _897)) + (_1806.x * _903)) + (_1810.x * _906)) * 2.0f) + -1.0f;
              _1831 = (((((_1802.y * _900) + (_1798.y * _897)) + (_1806.y * _903)) + (_1810.y * _906)) * 2.0f) + -1.0f;
              _1840 = (((((_1802.z * _900) + (_1798.z * _897)) + (_1806.z * _903)) + (_1810.z * _906)) * 2.0f) + -1.0f;
              _1842 = rsqrt(dot(float3(_1822, _1831, _1840), float3(_1822, _1831, _1840)));  // [sem: invLength]
              _1843 = _1822 * _1842;
              _1844 = _1831 * _1842;
              _1845 = _1840 * _1842;
              if (!(_renderParams.z > 0.0f)) {
                if (!(_renderParams2.y > 0.0f)) {
                  _1857 = (half)(saturate((half)(_177 + 0.15002441h)));
                } else {
                  _1857 = _177;
                }
              } else {
                _1857 = _177;
              }
              _1858 = float(_1857);
              _1861 = float(_288);
              _1862 = float(_294);
              _1863 = float(_300);
              _1864 = dot(float3(_636, _637, _638), float3(_1843, _1844, _1845));
              _1865 = -0.0f - _1031;
              _1866 = -0.0f - _1032;
              _1867 = -0.0f - _1033;
              _1868 = dot(float3(_636, _637, _638), float3(_1865, _1866, _1867));
              _1874 = cos(abs(asin(_1868) - asin(_1864)) * 0.5f);
              _1876 = _1843 - (_1864 * _636);
              _1878 = _1844 - (_1864 * _637);
              _1880 = _1845 - (_1864 * _638);
              _1882 = _1865 - (_1868 * _636);
              _1884 = _1866 - (_1868 * _637);
              _1886 = _1867 - (_1868 * _638);
              _1893 = dot(float3(_1876, _1878, _1880), float3(_1882, _1884, _1886)) * rsqrt((dot(float3(_1876, _1878, _1880), float3(_1876, _1878, _1880)) * dot(float3(_1882, _1884, _1886), float3(_1882, _1884, _1886))) + 0.0001f);
              _1895 = min(max(_1858, 0.09803922f), 1.0f);
              _1896 = _1895 * _1895;
              _1897 = _1896 * 0.5f;
              _1898 = _1896 * 2.0f;
              _1899 = _1868 + _1864;
              _1900 = _1899 - _bevelParams.y;
              _1904 = 1.0f / ((1.19f / _1874) + (_1874 * 0.36f));
              _1913 = ((_1904 * (0.6f - (_1893 * 0.8f))) + 1.0f) * sqrt(saturate((_1893 * 0.5f) + 0.5f));
              _1919 = 1.0f - (sqrt(saturate(1.0f - (_1913 * _1913))) * _1874);
              _1920 = _1919 * _1919;
              _1924 = 0.9534794f - ((_1920 * _1920) * (_1919 * 0.9534794f));
              _1925 = _1913 * _1904;
              _1930 = (sqrt(1.0f - (_1925 * _1925)) * 0.5f) / _1874;
              _1931 = log2(_1861);
              _1932 = log2(_1862);
              _1933 = log2(_1863);
              _1947 = ((_1924 * _1924) * (exp2((((_1900 * _1900) * -0.5f) / (_1897 * _1897)) * 1.442695f) / (_1896 * 1.2533141f))) * exp2(-5.741926f - (_1893 * 5.265837f));
              _1949 = _1899 - (_bevelParams.y * 4.0f);
              _1951 = 1.0f - (_1874 * 0.5f);
              _1952 = _1951 * _1951;
              _1956 = (_1952 * _1952) * (0.9534794f - (_1874 * 0.4767397f));
              _1957 = 0.9534794f - _1956;
              _1958 = 0.8f / _1874;
              _1974 = (((_1957 * _1957) * (_1956 + 0.046520565f)) * (exp2((((_1949 * _1949) * -0.5f) / (_1898 * _1898)) * 1.442695f) / (_1896 * 5.0132565f))) * exp2((_1893 * 24.525816f) + -24.208424f);
              _1983 = min(0.0f, (-0.0f - ((exp2(_1931 * _1930) * _1947) + (exp2(_1958 * _1931) * _1974))));
              _1992 = min(0.0f, (-0.0f - ((exp2(_1932 * _1930) * _1947) + (exp2(_1958 * _1932) * _1974))));
              _2001 = min(0.0f, (-0.0f - ((exp2(_1933 * _1930) * _1947) + (exp2(_1958 * _1933) * _1974))));
              _2004 = saturate(abs(dot(float3(_1843, _1844, _1845), float3(_636, _637, _638))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _2011 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_2004, _1858, saturate(sqrt(exp2(_1931 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _2018 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_2004, _1858, saturate(sqrt(exp2(_1932 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _2025 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_2004, _1858, saturate(sqrt(exp2(_1933 * 1.5f)))), 0.0f);
              _2028 = min(0.99f, _2011.x);
              _2029 = min(0.99f, _2018.x);
              _2030 = min(0.99f, _2025.x);
              _2031 = min(0.99f, _2011.y);
              _2032 = min(0.99f, _2018.y);
              _2033 = min(0.99f, _2025.y);
              _2034 = _2028 * _2028;
              _2035 = _2029 * _2029;
              _2036 = _2030 * _2030;
              _2037 = _2031 * _2031;
              _2038 = _2032 * _2032;
              _2039 = _2033 * _2033;
              _2040 = _2037 * _2031;
              _2041 = _2038 * _2032;
              _2042 = _2039 * _2033;
              _2043 = 1.0f - _2034;
              _2044 = 1.0f - _2035;
              _2045 = 1.0f - _2036;
              _2046 = _2043 * _2043;
              _2047 = _2044 * _2044;
              _2048 = _2045 * _2045;
              _2049 = _2046 * _2043;
              _2050 = _2047 * _2044;
              _2051 = _2048 * _2045;
              _2053 = min(max(_1858, 0.18f), 0.6f);
              _2054 = _2053 * _2053;
              _2055 = _2054 * 0.25f;
              _2056 = _2054 * 4.0f;
              _2058 = (_2029 + _2028) + _2030;
              _2059 = _2028 / _2058;
              _2060 = _2029 / _2058;
              _2061 = _2030 / _2058;
              _2062 = dot(float3(_2054, _2055, _2056), float3(_2059, _2060, _2061));
              _2063 = _2062 * _2062;
              _2070 = asin(min(max(_1864, -1.0f), 1.0f)) + asin(min(max(_1868, -1.0f), 1.0f));
              _2071 = _2070 * 0.5f;
              _2072 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_2059, _2060, _2061));
              _2073 = _2072 * _2072;
              _2075 = (_2032 + _2031) + _2033;
              _2079 = dot(float3(_2054, _2055, _2056), float3((_2031 / _2075), (_2032 / _2075), (_2033 / _2075)));
              _2083 = sqrt((_2079 * _2079) + (_2063 * 2.0f));
              _2086 = (_2079 * 3.0f) + (_2062 * 2.0f);
              _2094 = (((_2040 + _2031) * ((_2034 * 0.7f) + 1.0f)) * _2083) / ((_2086 * _2040) + _2031);
              _2102 = (((_2041 + _2032) * ((_2035 * 0.7f) + 1.0f)) * _2083) / ((_2086 * _2041) + _2032);
              _2110 = (((_2042 + _2033) * ((_2036 * 0.7f) + 1.0f)) * _2083) / ((_2086 * _2042) + _2033);
              _2121 = _2071 - (((_2073 * (((_2034 * 4.0f) * _2037) + (_2046 * 2.0f))) * (1.0f - ((_2037 * 2.0f) / _2046))) / _2049);
              _2132 = _2071 - (((_2073 * (((_2035 * 4.0f) * _2038) + (_2047 * 2.0f))) * (1.0f - ((_2038 * 2.0f) / _2047))) / _2050);
              _2143 = _2071 - (((_2073 * (((_2036 * 4.0f) * _2039) + (_2048 * 2.0f))) * (1.0f - ((_2039 * 2.0f) / _2048))) / _2051);
              _2149 = exp2((((_2070 * -0.25f) * _2071) / _2063) * 1.442695f) * 1.4f;
              _2169 = ((((((_2031 * _2034) / _2043) + ((_2040 * _2034) / _2049)) * 4.3982296f) * exp2((((_2121 * _2121) * -0.5f) / ((_2094 * _2094) + _2063)) * 1.442695f)) + ((((_2011.x + _1983) * 0.25f) - _1983) * 6.2831855f)) * _2149;
              _2189 = ((((((_2032 * _2035) / _2044) + ((_2041 * _2035) / _2050)) * 4.3982296f) * exp2((((_2132 * _2132) * -0.5f) / ((_2102 * _2102) + _2063)) * 1.442695f)) + ((((_2018.x + _1992) * 0.25f) - _1992) * 6.2831855f)) * _2149;
              _2209 = ((((((_2033 * _2036) / _2045) + ((_2042 * _2036) / _2051)) * 4.3982296f) * exp2((((_2143 * _2143) * -0.5f) / ((_2110 * _2110) + _2063)) * 1.442695f)) + ((((_2025.x + _2001) * 0.25f) - _2001) * 6.2831855f)) * _2149;
              _2213 = max(0.01f, (lerp(_2169, _1861, 0.125f)));
              _2217 = max(0.01f, (lerp(_2189, _1862, 0.125f)));
              _2221 = max(0.01f, (lerp(_2209, _1863, 0.125f)));
              _2223 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _2227 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _2231 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _2235 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _2275 = _1616;
              _2276 = _1617;
              _2277 = _1618;
              _2278 = _1619;
              _2279 = _2221;
              _2280 = _2217;
              _2281 = _2213;
              _2282 = (min(30000.0f, ((((((_2227.z * _900) + (_2223.z * _897)) + (_2231.z * _903)) + (_2235.z * _906)) / _2221) * _exposure4.x)) + _958);
              _2283 = (min(30000.0f, ((((((_2227.y * _900) + (_2223.y * _897)) + (_2231.y * _903)) + (_2235.y * _906)) / _2217) * _exposure4.x)) + _947);
              _2284 = (min(30000.0f, (_exposure4.x * (((((_2227.x * _900) + (_2223.x * _897)) + (_2231.x * _903)) + (_2235.x * _906)) / _2213))) + _936);
              _2285 = _1614;
              _2286 = _638;
              _2287 = _637;
              _2288 = _636;
              _2289 = _1615;
              _2290 = 0.0f;
            } else {
              _2275 = _1616;
              _2276 = _1617;
              _2277 = _1618;
              _2278 = _1619;
              _2279 = 0.0f;
              _2280 = 0.0f;
              _2281 = 0.0f;
              _2282 = _958;
              _2283 = _947;
              _2284 = _936;
              _2285 = _1614;
              _2286 = _638;
              _2287 = _637;
              _2288 = _636;
              _2289 = _1615;
              _2290 = 0.0f;
            }
          }
        } else {
          _1120 = 0.0f;
          _1121 = 0.0f;
          _1122 = 0.0f;
          _1123 = 0.0f;
          _1124 = _521;
          if (_120 == 66) {
            _1127 = float(_1124);
            _1129 = (_1054 * 2.0f) + -1.0f;
            _1131 = (_1053 * 2.0f) + -1.0f;
            _1133 = (_1052 * 2.0f) + -1.0f;
            if (_609) {
              _1136 = __3__36__0__0__g_bentCone.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1140 = __3__36__0__0__g_bentCone.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1144 = __3__36__0__0__g_bentCone.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1148 = __3__36__0__0__g_bentCone.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1160 = (((((_1140.x * _900) + (_1136.x * _897)) + (_1144.x * _903)) + (_1148.x * _906)) * 2.0f) + -1.0f;
              _1169 = (((((_1140.y * _900) + (_1136.y * _897)) + (_1144.y * _903)) + (_1148.y * _906)) * 2.0f) + -1.0f;
              _1178 = (((((_1140.z * _900) + (_1136.z * _897)) + (_1144.z * _903)) + (_1148.z * _906)) * 2.0f) + -1.0f;
              _1180 = rsqrt(dot(float3(_1160, _1169, _1178), float3(_1160, _1169, _1178)));  // [sem: invLength]
              _1181 = _1160 * _1180;
              _1182 = _1169 * _1180;
              _1183 = _1178 * _1180;
              if (!(_renderParams.z > 0.0f)) {
                if (!(_renderParams2.y > 0.0f)) {
                  _1195 = (half)(saturate((half)(_177 + 0.15002441h)));
                } else {
                  _1195 = _177;
                }
              } else {
                _1195 = _177;
              }
              _1196 = float(_1195);
              _1199 = float(_288);
              _1200 = float(_294);
              _1201 = float(_300);
              _1202 = dot(float3(_1129, _1131, _1133), float3(_1181, _1182, _1183));
              _1203 = -0.0f - _1031;
              _1204 = -0.0f - _1032;
              _1205 = -0.0f - _1033;
              _1206 = dot(float3(_1129, _1131, _1133), float3(_1203, _1204, _1205));
              _1212 = cos(abs(asin(_1206) - asin(_1202)) * 0.5f);
              _1214 = _1181 - (_1202 * _1129);
              _1216 = _1182 - (_1202 * _1131);
              _1218 = _1183 - (_1202 * _1133);
              _1220 = _1203 - (_1206 * _1129);
              _1222 = _1204 - (_1206 * _1131);
              _1224 = _1205 - (_1206 * _1133);
              _1231 = dot(float3(_1214, _1216, _1218), float3(_1220, _1222, _1224)) * rsqrt((dot(float3(_1214, _1216, _1218), float3(_1214, _1216, _1218)) * dot(float3(_1220, _1222, _1224), float3(_1220, _1222, _1224))) + 0.0001f);
              _1233 = min(max(_1196, 0.09803922f), 1.0f);
              _1234 = _1233 * _1233;
              _1235 = _1234 * 0.5f;
              _1236 = _1234 * 2.0f;
              _1237 = _1206 + _1202;
              _1238 = _1237 - _bevelParams.y;
              _1242 = 1.0f / ((1.19f / _1212) + (_1212 * 0.36f));
              _1251 = ((_1242 * (0.6f - (_1231 * 0.8f))) + 1.0f) * sqrt(saturate((_1231 * 0.5f) + 0.5f));
              _1257 = 1.0f - (sqrt(saturate(1.0f - (_1251 * _1251))) * _1212);
              _1258 = _1257 * _1257;
              _1262 = 0.9534794f - ((_1258 * _1258) * (_1257 * 0.9534794f));
              _1263 = _1251 * _1242;
              _1268 = (sqrt(1.0f - (_1263 * _1263)) * 0.5f) / _1212;
              _1269 = log2(_1199);
              _1270 = log2(_1200);
              _1271 = log2(_1201);
              _1285 = ((_1262 * _1262) * (exp2((((_1238 * _1238) * -0.5f) / (_1235 * _1235)) * 1.442695f) / (_1234 * 1.2533141f))) * exp2(-5.741926f - (_1231 * 5.265837f));
              _1287 = _1237 - (_bevelParams.y * 4.0f);
              _1289 = 1.0f - (_1212 * 0.5f);
              _1290 = _1289 * _1289;
              _1294 = (_1290 * _1290) * (0.9534794f - (_1212 * 0.4767397f));
              _1295 = 0.9534794f - _1294;
              _1296 = 0.8f / _1212;
              _1312 = (((_1295 * _1295) * (_1294 + 0.046520565f)) * (exp2((((_1287 * _1287) * -0.5f) / (_1236 * _1236)) * 1.442695f) / (_1234 * 5.0132565f))) * exp2((_1231 * 24.525816f) + -24.208424f);
              _1321 = min(0.0f, (-0.0f - ((exp2(_1269 * _1268) * _1285) + (exp2(_1296 * _1269) * _1312))));
              _1330 = min(0.0f, (-0.0f - ((exp2(_1270 * _1268) * _1285) + (exp2(_1296 * _1270) * _1312))));
              _1339 = min(0.0f, (-0.0f - ((exp2(_1271 * _1268) * _1285) + (exp2(_1296 * _1271) * _1312))));
              _1342 = saturate(abs(dot(float3(_1181, _1182, _1183), float3(_1129, _1131, _1133))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1349 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1342, _1196, saturate(sqrt(exp2(_1269 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1356 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1342, _1196, saturate(sqrt(exp2(_1270 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1363 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1342, _1196, saturate(sqrt(exp2(_1271 * 1.5f)))), 0.0f);
              _1366 = min(0.99f, _1349.x);
              _1367 = min(0.99f, _1356.x);
              _1368 = min(0.99f, _1363.x);
              _1369 = min(0.99f, _1349.y);
              _1370 = min(0.99f, _1356.y);
              _1371 = min(0.99f, _1363.y);
              _1372 = _1366 * _1366;
              _1373 = _1367 * _1367;
              _1374 = _1368 * _1368;
              _1375 = _1369 * _1369;
              _1376 = _1370 * _1370;
              _1377 = _1371 * _1371;
              _1378 = _1375 * _1369;
              _1379 = _1376 * _1370;
              _1380 = _1377 * _1371;
              _1381 = 1.0f - _1372;
              _1382 = 1.0f - _1373;
              _1383 = 1.0f - _1374;
              _1384 = _1381 * _1381;
              _1385 = _1382 * _1382;
              _1386 = _1383 * _1383;
              _1387 = _1384 * _1381;
              _1388 = _1385 * _1382;
              _1389 = _1386 * _1383;
              _1391 = min(max(_1196, 0.18f), 0.6f);
              _1392 = _1391 * _1391;
              _1393 = _1392 * 0.25f;
              _1394 = _1392 * 4.0f;
              _1396 = (_1367 + _1366) + _1368;
              _1397 = _1366 / _1396;
              _1398 = _1367 / _1396;
              _1399 = _1368 / _1396;
              _1400 = dot(float3(_1392, _1393, _1394), float3(_1397, _1398, _1399));
              _1401 = _1400 * _1400;
              _1408 = asin(min(max(_1202, -1.0f), 1.0f)) + asin(min(max(_1206, -1.0f), 1.0f));
              _1409 = _1408 * 0.5f;
              _1410 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1397, _1398, _1399));
              _1411 = _1410 * _1410;
              _1413 = (_1370 + _1369) + _1371;
              _1417 = dot(float3(_1392, _1393, _1394), float3((_1369 / _1413), (_1370 / _1413), (_1371 / _1413)));
              _1421 = sqrt((_1417 * _1417) + (_1401 * 2.0f));
              _1424 = (_1417 * 3.0f) + (_1400 * 2.0f);
              _1432 = (((_1378 + _1369) * ((_1372 * 0.7f) + 1.0f)) * _1421) / ((_1424 * _1378) + _1369);
              _1440 = (((_1379 + _1370) * ((_1373 * 0.7f) + 1.0f)) * _1421) / ((_1424 * _1379) + _1370);
              _1448 = (((_1380 + _1371) * ((_1374 * 0.7f) + 1.0f)) * _1421) / ((_1424 * _1380) + _1371);
              _1459 = _1409 - (((_1411 * (((_1372 * 4.0f) * _1375) + (_1384 * 2.0f))) * (1.0f - ((_1375 * 2.0f) / _1384))) / _1387);
              _1470 = _1409 - (((_1411 * (((_1373 * 4.0f) * _1376) + (_1385 * 2.0f))) * (1.0f - ((_1376 * 2.0f) / _1385))) / _1388);
              _1481 = _1409 - (((_1411 * (((_1374 * 4.0f) * _1377) + (_1386 * 2.0f))) * (1.0f - ((_1377 * 2.0f) / _1386))) / _1389);
              _1487 = exp2((((_1408 * -0.25f) * _1409) / _1401) * 1.442695f) * 1.4f;
              _1507 = ((((((_1369 * _1372) / _1381) + ((_1378 * _1372) / _1387)) * 4.3982296f) * exp2((((_1459 * _1459) * -0.5f) / ((_1432 * _1432) + _1401)) * 1.442695f)) + ((((_1349.x + _1321) * 0.25f) - _1321) * 6.2831855f)) * _1487;
              _1527 = ((((((_1370 * _1373) / _1382) + ((_1379 * _1373) / _1388)) * 4.3982296f) * exp2((((_1470 * _1470) * -0.5f) / ((_1440 * _1440) + _1401)) * 1.442695f)) + ((((_1356.x + _1330) * 0.25f) - _1330) * 6.2831855f)) * _1487;
              _1547 = ((((((_1371 * _1374) / _1383) + ((_1380 * _1374) / _1389)) * 4.3982296f) * exp2((((_1481 * _1481) * -0.5f) / ((_1448 * _1448) + _1401)) * 1.442695f)) + ((((_1363.x + _1339) * 0.25f) - _1339) * 6.2831855f)) * _1487;
              _1548 = max(0.125f, _1127);
              _1552 = max(0.01f, ((_1548 * (_1199 - _1507)) + _1507));
              _1556 = max(0.01f, ((_1548 * (_1200 - _1527)) + _1527));
              _1560 = max(0.01f, (lerp(_1547, _1201, _1548)));
              _1562 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1566 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1570 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1574 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _2275 = _1123;
              _2276 = _1122;
              _2277 = _1121;
              _2278 = _1120;
              _2279 = _1560;
              _2280 = _1556;
              _2281 = _1552;
              _2282 = (min(30000.0f, ((((((_1566.z * _900) + (_1562.z * _897)) + (_1570.z * _903)) + (_1574.z * _906)) / _1560) * _exposure4.x)) + _958);
              _2283 = (min(30000.0f, ((((((_1566.y * _900) + (_1562.y * _897)) + (_1570.y * _903)) + (_1574.y * _906)) / _1556) * _exposure4.x)) + _947);
              _2284 = (min(30000.0f, (_exposure4.x * (((((_1566.x * _900) + (_1562.x * _897)) + (_1570.x * _903)) + (_1574.x * _906)) / _1552))) + _936);
              _2285 = 66;
              _2286 = _1133;
              _2287 = _1131;
              _2288 = _1129;
              _2289 = 0.0h;
              _2290 = _1127;
            } else {
              _2275 = _1123;
              _2276 = _1122;
              _2277 = _1121;
              _2278 = _1120;
              _2279 = 0.0f;
              _2280 = 0.0f;
              _2281 = 0.0f;
              _2282 = _958;
              _2283 = _947;
              _2284 = _936;
              _2285 = 66;
              _2286 = _1133;
              _2287 = _1131;
              _2288 = _1129;
              _2289 = 0.0h;
              _2290 = _1127;
            }
          } else {
            _1614 = _120;
            _1615 = _1124;
            _1616 = _1123;
            _1617 = _1122;
            _1618 = _1121;
            _1619 = _1120;
            _1620 = (_1614 == 53);
            if ((_1614 == 67) || _1620) {
              _1628 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
              if (!(float(_1615) > (frac(frac(dot(float2(((_1628 * 32.665f) + _105), ((_1628 * 11.815f) + _106)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
                if ((_1614 & 126) == 66) {
                  _1653 = max(0.01f, float(_288));
                  _1654 = max(0.01f, float(_294));
                  _1655 = max(0.01f, float(_300));
                  _1657 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                  _1661 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                  _1665 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                  _1669 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                  _2275 = _1616;
                  _2276 = _1617;
                  _2277 = _1618;
                  _2278 = _1619;
                  _2279 = _1655;
                  _2280 = _1654;
                  _2281 = _1653;
                  _2282 = (min(30000.0f, ((((((_1661.z * _900) + (_1657.z * _897)) + (_1665.z * _903)) + (_1669.z * _906)) / _1655) * _exposure4.x)) + _958);
                  _2283 = (min(30000.0f, ((((((_1661.y * _900) + (_1657.y * _897)) + (_1665.y * _903)) + (_1669.y * _906)) / _1654) * _exposure4.x)) + _947);
                  _2284 = (min(30000.0f, (_exposure4.x * (((((_1661.x * _900) + (_1657.x * _897)) + (_1665.x * _903)) + (_1669.x * _906)) / _1653))) + _936);
                  _2285 = _1614;
                  _2286 = ((_1052 * 2.0f) + -1.0f);
                  _2287 = ((_1053 * 2.0f) + -1.0f);
                  _2288 = ((_1054 * 2.0f) + -1.0f);
                  _2289 = 0.0h;
                  _2290 = 1.0f;
                } else {
                  if (_1620) {
                    _1711 = (_1054 * 2.0f) + -1.0f;
                    _1713 = (_1053 * 2.0f) + -1.0f;
                    _1715 = 1.0f - abs(_1711);
                    _1716 = abs(_1713);
                    _1717 = _1715 - _1716;
                    if (!(_1717 >= 0.0f)) {
                      _1728 = (_1715 * select((_1713 >= 0.0f), 1.0f, -1.0f));
                      _1729 = ((1.0f - _1716) * select((_1711 >= 0.0f), 1.0f, -1.0f));
                    } else {
                      _1728 = _1713;
                      _1729 = _1711;
                    }
                    _1731 = rsqrt(dot(float3(_1729, _1728, _1717), float3(_1729, _1728, _1717)));  // [sem: invLength]
                    _1738 = max(0.01f, float(_288));
                    _1739 = max(0.01f, float(_294));
                    _1740 = max(0.01f, float(_300));
                    _1742 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                    _1746 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                    _1750 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                    _1754 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                    _2275 = _1616;
                    _2276 = _1617;
                    _2277 = _1618;
                    _2278 = _1619;
                    _2279 = _1740;
                    _2280 = _1739;
                    _2281 = _1738;
                    _2282 = (min(30000.0f, ((((((_1746.z * _900) + (_1742.z * _897)) + (_1750.z * _903)) + (_1754.z * _906)) / _1740) * _exposure4.x)) + _958);
                    _2283 = (min(30000.0f, ((((((_1746.y * _900) + (_1742.y * _897)) + (_1750.y * _903)) + (_1754.y * _906)) / _1739) * _exposure4.x)) + _947);
                    _2284 = (min(30000.0f, (_exposure4.x * (((((_1746.x * _900) + (_1742.x * _897)) + (_1750.x * _903)) + (_1754.x * _906)) / _1738))) + _936);
                    _2285 = 53;
                    _2286 = (_1731 * _1717);
                    _2287 = (_1731 * _1728);
                    _2288 = (_1731 * _1729);
                    _2289 = 0.0h;
                    _2290 = 1.0f;
                  } else {
                    _2275 = _1616;
                    _2276 = _1617;
                    _2277 = _1618;
                    _2278 = _1619;
                    _2279 = 0.0f;
                    _2280 = 0.0f;
                    _2281 = 0.0f;
                    _2282 = _958;
                    _2283 = _947;
                    _2284 = _936;
                    _2285 = _1614;
                    _2286 = _638;
                    _2287 = _637;
                    _2288 = _636;
                    _2289 = 0.0h;
                    _2290 = 1.0f;
                  }
                }
              } else {
                _2275 = _1616;
                _2276 = _1617;
                _2277 = _1618;
                _2278 = _1619;
                _2279 = 0.0f;
                _2280 = 0.0f;
                _2281 = 0.0f;
                _2282 = _958;
                _2283 = _947;
                _2284 = _936;
                _2285 = 52;
                _2286 = _638;
                _2287 = _637;
                _2288 = _636;
                _2289 = 0.0h;
                _2290 = 1.0f;
              }
            } else {
              if ((_1614 & 126) == 66) {
                _1798 = __3__36__0__0__g_bentCone.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1802 = __3__36__0__0__g_bentCone.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1806 = __3__36__0__0__g_bentCone.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1810 = __3__36__0__0__g_bentCone.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1822 = (((((_1802.x * _900) + (_1798.x * _897)) + (_1806.x * _903)) + (_1810.x * _906)) * 2.0f) + -1.0f;
                _1831 = (((((_1802.y * _900) + (_1798.y * _897)) + (_1806.y * _903)) + (_1810.y * _906)) * 2.0f) + -1.0f;
                _1840 = (((((_1802.z * _900) + (_1798.z * _897)) + (_1806.z * _903)) + (_1810.z * _906)) * 2.0f) + -1.0f;
                _1842 = rsqrt(dot(float3(_1822, _1831, _1840), float3(_1822, _1831, _1840)));  // [sem: invLength]
                _1843 = _1822 * _1842;
                _1844 = _1831 * _1842;
                _1845 = _1840 * _1842;
                if (!(_renderParams.z > 0.0f)) {
                  if (!(_renderParams2.y > 0.0f)) {
                    _1857 = (half)(saturate((half)(_177 + 0.15002441h)));
                  } else {
                    _1857 = _177;
                  }
                } else {
                  _1857 = _177;
                }
                _1858 = float(_1857);
                _1861 = float(_288);
                _1862 = float(_294);
                _1863 = float(_300);
                _1864 = dot(float3(_636, _637, _638), float3(_1843, _1844, _1845));
                _1865 = -0.0f - _1031;
                _1866 = -0.0f - _1032;
                _1867 = -0.0f - _1033;
                _1868 = dot(float3(_636, _637, _638), float3(_1865, _1866, _1867));
                _1874 = cos(abs(asin(_1868) - asin(_1864)) * 0.5f);
                _1876 = _1843 - (_1864 * _636);
                _1878 = _1844 - (_1864 * _637);
                _1880 = _1845 - (_1864 * _638);
                _1882 = _1865 - (_1868 * _636);
                _1884 = _1866 - (_1868 * _637);
                _1886 = _1867 - (_1868 * _638);
                _1893 = dot(float3(_1876, _1878, _1880), float3(_1882, _1884, _1886)) * rsqrt((dot(float3(_1876, _1878, _1880), float3(_1876, _1878, _1880)) * dot(float3(_1882, _1884, _1886), float3(_1882, _1884, _1886))) + 0.0001f);
                _1895 = min(max(_1858, 0.09803922f), 1.0f);
                _1896 = _1895 * _1895;
                _1897 = _1896 * 0.5f;
                _1898 = _1896 * 2.0f;
                _1899 = _1868 + _1864;
                _1900 = _1899 - _bevelParams.y;
                _1904 = 1.0f / ((1.19f / _1874) + (_1874 * 0.36f));
                _1913 = ((_1904 * (0.6f - (_1893 * 0.8f))) + 1.0f) * sqrt(saturate((_1893 * 0.5f) + 0.5f));
                _1919 = 1.0f - (sqrt(saturate(1.0f - (_1913 * _1913))) * _1874);
                _1920 = _1919 * _1919;
                _1924 = 0.9534794f - ((_1920 * _1920) * (_1919 * 0.9534794f));
                _1925 = _1913 * _1904;
                _1930 = (sqrt(1.0f - (_1925 * _1925)) * 0.5f) / _1874;
                _1931 = log2(_1861);
                _1932 = log2(_1862);
                _1933 = log2(_1863);
                _1947 = ((_1924 * _1924) * (exp2((((_1900 * _1900) * -0.5f) / (_1897 * _1897)) * 1.442695f) / (_1896 * 1.2533141f))) * exp2(-5.741926f - (_1893 * 5.265837f));
                _1949 = _1899 - (_bevelParams.y * 4.0f);
                _1951 = 1.0f - (_1874 * 0.5f);
                _1952 = _1951 * _1951;
                _1956 = (_1952 * _1952) * (0.9534794f - (_1874 * 0.4767397f));
                _1957 = 0.9534794f - _1956;
                _1958 = 0.8f / _1874;
                _1974 = (((_1957 * _1957) * (_1956 + 0.046520565f)) * (exp2((((_1949 * _1949) * -0.5f) / (_1898 * _1898)) * 1.442695f) / (_1896 * 5.0132565f))) * exp2((_1893 * 24.525816f) + -24.208424f);
                _1983 = min(0.0f, (-0.0f - ((exp2(_1931 * _1930) * _1947) + (exp2(_1958 * _1931) * _1974))));
                _1992 = min(0.0f, (-0.0f - ((exp2(_1932 * _1930) * _1947) + (exp2(_1958 * _1932) * _1974))));
                _2001 = min(0.0f, (-0.0f - ((exp2(_1933 * _1930) * _1947) + (exp2(_1958 * _1933) * _1974))));
                _2004 = saturate(abs(dot(float3(_1843, _1844, _1845), float3(_636, _637, _638))));  // [sem: expr_sat]
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _2011 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_2004, _1858, saturate(sqrt(exp2(_1931 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _2018 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_2004, _1858, saturate(sqrt(exp2(_1932 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _2025 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_2004, _1858, saturate(sqrt(exp2(_1933 * 1.5f)))), 0.0f);
                _2028 = min(0.99f, _2011.x);
                _2029 = min(0.99f, _2018.x);
                _2030 = min(0.99f, _2025.x);
                _2031 = min(0.99f, _2011.y);
                _2032 = min(0.99f, _2018.y);
                _2033 = min(0.99f, _2025.y);
                _2034 = _2028 * _2028;
                _2035 = _2029 * _2029;
                _2036 = _2030 * _2030;
                _2037 = _2031 * _2031;
                _2038 = _2032 * _2032;
                _2039 = _2033 * _2033;
                _2040 = _2037 * _2031;
                _2041 = _2038 * _2032;
                _2042 = _2039 * _2033;
                _2043 = 1.0f - _2034;
                _2044 = 1.0f - _2035;
                _2045 = 1.0f - _2036;
                _2046 = _2043 * _2043;
                _2047 = _2044 * _2044;
                _2048 = _2045 * _2045;
                _2049 = _2046 * _2043;
                _2050 = _2047 * _2044;
                _2051 = _2048 * _2045;
                _2053 = min(max(_1858, 0.18f), 0.6f);
                _2054 = _2053 * _2053;
                _2055 = _2054 * 0.25f;
                _2056 = _2054 * 4.0f;
                _2058 = (_2029 + _2028) + _2030;
                _2059 = _2028 / _2058;
                _2060 = _2029 / _2058;
                _2061 = _2030 / _2058;
                _2062 = dot(float3(_2054, _2055, _2056), float3(_2059, _2060, _2061));
                _2063 = _2062 * _2062;
                _2070 = asin(min(max(_1864, -1.0f), 1.0f)) + asin(min(max(_1868, -1.0f), 1.0f));
                _2071 = _2070 * 0.5f;
                _2072 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_2059, _2060, _2061));
                _2073 = _2072 * _2072;
                _2075 = (_2032 + _2031) + _2033;
                _2079 = dot(float3(_2054, _2055, _2056), float3((_2031 / _2075), (_2032 / _2075), (_2033 / _2075)));
                _2083 = sqrt((_2079 * _2079) + (_2063 * 2.0f));
                _2086 = (_2079 * 3.0f) + (_2062 * 2.0f);
                _2094 = (((_2040 + _2031) * ((_2034 * 0.7f) + 1.0f)) * _2083) / ((_2086 * _2040) + _2031);
                _2102 = (((_2041 + _2032) * ((_2035 * 0.7f) + 1.0f)) * _2083) / ((_2086 * _2041) + _2032);
                _2110 = (((_2042 + _2033) * ((_2036 * 0.7f) + 1.0f)) * _2083) / ((_2086 * _2042) + _2033);
                _2121 = _2071 - (((_2073 * (((_2034 * 4.0f) * _2037) + (_2046 * 2.0f))) * (1.0f - ((_2037 * 2.0f) / _2046))) / _2049);
                _2132 = _2071 - (((_2073 * (((_2035 * 4.0f) * _2038) + (_2047 * 2.0f))) * (1.0f - ((_2038 * 2.0f) / _2047))) / _2050);
                _2143 = _2071 - (((_2073 * (((_2036 * 4.0f) * _2039) + (_2048 * 2.0f))) * (1.0f - ((_2039 * 2.0f) / _2048))) / _2051);
                _2149 = exp2((((_2070 * -0.25f) * _2071) / _2063) * 1.442695f) * 1.4f;
                _2169 = ((((((_2031 * _2034) / _2043) + ((_2040 * _2034) / _2049)) * 4.3982296f) * exp2((((_2121 * _2121) * -0.5f) / ((_2094 * _2094) + _2063)) * 1.442695f)) + ((((_2011.x + _1983) * 0.25f) - _1983) * 6.2831855f)) * _2149;
                _2189 = ((((((_2032 * _2035) / _2044) + ((_2041 * _2035) / _2050)) * 4.3982296f) * exp2((((_2132 * _2132) * -0.5f) / ((_2102 * _2102) + _2063)) * 1.442695f)) + ((((_2018.x + _1992) * 0.25f) - _1992) * 6.2831855f)) * _2149;
                _2209 = ((((((_2033 * _2036) / _2045) + ((_2042 * _2036) / _2051)) * 4.3982296f) * exp2((((_2143 * _2143) * -0.5f) / ((_2110 * _2110) + _2063)) * 1.442695f)) + ((((_2025.x + _2001) * 0.25f) - _2001) * 6.2831855f)) * _2149;
                _2213 = max(0.01f, (lerp(_2169, _1861, 0.125f)));
                _2217 = max(0.01f, (lerp(_2189, _1862, 0.125f)));
                _2221 = max(0.01f, (lerp(_2209, _1863, 0.125f)));
                _2223 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _2227 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _2231 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _2235 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _2275 = _1616;
                _2276 = _1617;
                _2277 = _1618;
                _2278 = _1619;
                _2279 = _2221;
                _2280 = _2217;
                _2281 = _2213;
                _2282 = (min(30000.0f, ((((((_2227.z * _900) + (_2223.z * _897)) + (_2231.z * _903)) + (_2235.z * _906)) / _2221) * _exposure4.x)) + _958);
                _2283 = (min(30000.0f, ((((((_2227.y * _900) + (_2223.y * _897)) + (_2231.y * _903)) + (_2235.y * _906)) / _2217) * _exposure4.x)) + _947);
                _2284 = (min(30000.0f, (_exposure4.x * (((((_2227.x * _900) + (_2223.x * _897)) + (_2231.x * _903)) + (_2235.x * _906)) / _2213))) + _936);
                _2285 = _1614;
                _2286 = _638;
                _2287 = _637;
                _2288 = _636;
                _2289 = _1615;
                _2290 = 0.0f;
              } else {
                _2275 = _1616;
                _2276 = _1617;
                _2277 = _1618;
                _2278 = _1619;
                _2279 = 0.0f;
                _2280 = 0.0f;
                _2281 = 0.0f;
                _2282 = _958;
                _2283 = _947;
                _2284 = _936;
                _2285 = _1614;
                _2286 = _638;
                _2287 = _637;
                _2288 = _636;
                _2289 = _1615;
                _2290 = 0.0f;
              }
            }
          }
        }
      }
    } else {
      _1096 = (uint)((_1052 * 255.0f) + 0.5f);
      _1098 = ((uint)((uint)(_1096)) >> 4) & 7;
      if (!(_1098 == 0)) {
        _1102 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_1098) + (int)(1)))];
        _1111 = _1102.x;
        _1112 = _1102.y;
        _1113 = (((float)((uint)((uint)(_1096 & 15)))) * 0.06666667f);
        _1114 = min((1.0f - _1102.y), _1102.x);
      } else {
        _1111 = 0.0f;
        _1112 = 0.0f;
        _1113 = 0.0f;
        _1114 = 0.0f;
      }
      _1120 = _1111;
      _1121 = _1112;
      _1122 = _1113;
      _1123 = _1114;
      _1124 = (half)(half(_effectiveMetallicForVelvet * _1111));
      if (_120 == 66) {
        _1127 = float(_1124);
        _1129 = (_1054 * 2.0f) + -1.0f;
        _1131 = (_1053 * 2.0f) + -1.0f;
        _1133 = (_1052 * 2.0f) + -1.0f;
        if (_609) {
          _1136 = __3__36__0__0__g_bentCone.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1140 = __3__36__0__0__g_bentCone.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1144 = __3__36__0__0__g_bentCone.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1148 = __3__36__0__0__g_bentCone.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1160 = (((((_1140.x * _900) + (_1136.x * _897)) + (_1144.x * _903)) + (_1148.x * _906)) * 2.0f) + -1.0f;
          _1169 = (((((_1140.y * _900) + (_1136.y * _897)) + (_1144.y * _903)) + (_1148.y * _906)) * 2.0f) + -1.0f;
          _1178 = (((((_1140.z * _900) + (_1136.z * _897)) + (_1144.z * _903)) + (_1148.z * _906)) * 2.0f) + -1.0f;
          _1180 = rsqrt(dot(float3(_1160, _1169, _1178), float3(_1160, _1169, _1178)));  // [sem: invLength]
          _1181 = _1160 * _1180;
          _1182 = _1169 * _1180;
          _1183 = _1178 * _1180;
          if (!(_renderParams.z > 0.0f)) {
            if (!(_renderParams2.y > 0.0f)) {
              _1195 = (half)(saturate((half)(_177 + 0.15002441h)));
            } else {
              _1195 = _177;
            }
          } else {
            _1195 = _177;
          }
          _1196 = float(_1195);
          _1199 = float(_288);
          _1200 = float(_294);
          _1201 = float(_300);
          _1202 = dot(float3(_1129, _1131, _1133), float3(_1181, _1182, _1183));
          _1203 = -0.0f - _1031;
          _1204 = -0.0f - _1032;
          _1205 = -0.0f - _1033;
          _1206 = dot(float3(_1129, _1131, _1133), float3(_1203, _1204, _1205));
          _1212 = cos(abs(asin(_1206) - asin(_1202)) * 0.5f);
          _1214 = _1181 - (_1202 * _1129);
          _1216 = _1182 - (_1202 * _1131);
          _1218 = _1183 - (_1202 * _1133);
          _1220 = _1203 - (_1206 * _1129);
          _1222 = _1204 - (_1206 * _1131);
          _1224 = _1205 - (_1206 * _1133);
          _1231 = dot(float3(_1214, _1216, _1218), float3(_1220, _1222, _1224)) * rsqrt((dot(float3(_1214, _1216, _1218), float3(_1214, _1216, _1218)) * dot(float3(_1220, _1222, _1224), float3(_1220, _1222, _1224))) + 0.0001f);
          _1233 = min(max(_1196, 0.09803922f), 1.0f);
          _1234 = _1233 * _1233;
          _1235 = _1234 * 0.5f;
          _1236 = _1234 * 2.0f;
          _1237 = _1206 + _1202;
          _1238 = _1237 - _bevelParams.y;
          _1242 = 1.0f / ((1.19f / _1212) + (_1212 * 0.36f));
          _1251 = ((_1242 * (0.6f - (_1231 * 0.8f))) + 1.0f) * sqrt(saturate((_1231 * 0.5f) + 0.5f));
          _1257 = 1.0f - (sqrt(saturate(1.0f - (_1251 * _1251))) * _1212);
          _1258 = _1257 * _1257;
          _1262 = 0.9534794f - ((_1258 * _1258) * (_1257 * 0.9534794f));
          _1263 = _1251 * _1242;
          _1268 = (sqrt(1.0f - (_1263 * _1263)) * 0.5f) / _1212;
          _1269 = log2(_1199);
          _1270 = log2(_1200);
          _1271 = log2(_1201);
          _1285 = ((_1262 * _1262) * (exp2((((_1238 * _1238) * -0.5f) / (_1235 * _1235)) * 1.442695f) / (_1234 * 1.2533141f))) * exp2(-5.741926f - (_1231 * 5.265837f));
          _1287 = _1237 - (_bevelParams.y * 4.0f);
          _1289 = 1.0f - (_1212 * 0.5f);
          _1290 = _1289 * _1289;
          _1294 = (_1290 * _1290) * (0.9534794f - (_1212 * 0.4767397f));
          _1295 = 0.9534794f - _1294;
          _1296 = 0.8f / _1212;
          _1312 = (((_1295 * _1295) * (_1294 + 0.046520565f)) * (exp2((((_1287 * _1287) * -0.5f) / (_1236 * _1236)) * 1.442695f) / (_1234 * 5.0132565f))) * exp2((_1231 * 24.525816f) + -24.208424f);
          _1321 = min(0.0f, (-0.0f - ((exp2(_1269 * _1268) * _1285) + (exp2(_1296 * _1269) * _1312))));
          _1330 = min(0.0f, (-0.0f - ((exp2(_1270 * _1268) * _1285) + (exp2(_1296 * _1270) * _1312))));
          _1339 = min(0.0f, (-0.0f - ((exp2(_1271 * _1268) * _1285) + (exp2(_1296 * _1271) * _1312))));
          _1342 = saturate(abs(dot(float3(_1181, _1182, _1183), float3(_1129, _1131, _1133))));  // [sem: expr_sat]
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1349 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1342, _1196, saturate(sqrt(exp2(_1269 * 1.5f)))), 0.0f);
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1356 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1342, _1196, saturate(sqrt(exp2(_1270 * 1.5f)))), 0.0f);
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1363 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1342, _1196, saturate(sqrt(exp2(_1271 * 1.5f)))), 0.0f);
          _1366 = min(0.99f, _1349.x);
          _1367 = min(0.99f, _1356.x);
          _1368 = min(0.99f, _1363.x);
          _1369 = min(0.99f, _1349.y);
          _1370 = min(0.99f, _1356.y);
          _1371 = min(0.99f, _1363.y);
          _1372 = _1366 * _1366;
          _1373 = _1367 * _1367;
          _1374 = _1368 * _1368;
          _1375 = _1369 * _1369;
          _1376 = _1370 * _1370;
          _1377 = _1371 * _1371;
          _1378 = _1375 * _1369;
          _1379 = _1376 * _1370;
          _1380 = _1377 * _1371;
          _1381 = 1.0f - _1372;
          _1382 = 1.0f - _1373;
          _1383 = 1.0f - _1374;
          _1384 = _1381 * _1381;
          _1385 = _1382 * _1382;
          _1386 = _1383 * _1383;
          _1387 = _1384 * _1381;
          _1388 = _1385 * _1382;
          _1389 = _1386 * _1383;
          _1391 = min(max(_1196, 0.18f), 0.6f);
          _1392 = _1391 * _1391;
          _1393 = _1392 * 0.25f;
          _1394 = _1392 * 4.0f;
          _1396 = (_1367 + _1366) + _1368;
          _1397 = _1366 / _1396;
          _1398 = _1367 / _1396;
          _1399 = _1368 / _1396;
          _1400 = dot(float3(_1392, _1393, _1394), float3(_1397, _1398, _1399));
          _1401 = _1400 * _1400;
          _1408 = asin(min(max(_1202, -1.0f), 1.0f)) + asin(min(max(_1206, -1.0f), 1.0f));
          _1409 = _1408 * 0.5f;
          _1410 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1397, _1398, _1399));
          _1411 = _1410 * _1410;
          _1413 = (_1370 + _1369) + _1371;
          _1417 = dot(float3(_1392, _1393, _1394), float3((_1369 / _1413), (_1370 / _1413), (_1371 / _1413)));
          _1421 = sqrt((_1417 * _1417) + (_1401 * 2.0f));
          _1424 = (_1417 * 3.0f) + (_1400 * 2.0f);
          _1432 = (((_1378 + _1369) * ((_1372 * 0.7f) + 1.0f)) * _1421) / ((_1424 * _1378) + _1369);
          _1440 = (((_1379 + _1370) * ((_1373 * 0.7f) + 1.0f)) * _1421) / ((_1424 * _1379) + _1370);
          _1448 = (((_1380 + _1371) * ((_1374 * 0.7f) + 1.0f)) * _1421) / ((_1424 * _1380) + _1371);
          _1459 = _1409 - (((_1411 * (((_1372 * 4.0f) * _1375) + (_1384 * 2.0f))) * (1.0f - ((_1375 * 2.0f) / _1384))) / _1387);
          _1470 = _1409 - (((_1411 * (((_1373 * 4.0f) * _1376) + (_1385 * 2.0f))) * (1.0f - ((_1376 * 2.0f) / _1385))) / _1388);
          _1481 = _1409 - (((_1411 * (((_1374 * 4.0f) * _1377) + (_1386 * 2.0f))) * (1.0f - ((_1377 * 2.0f) / _1386))) / _1389);
          _1487 = exp2((((_1408 * -0.25f) * _1409) / _1401) * 1.442695f) * 1.4f;
          _1507 = ((((((_1369 * _1372) / _1381) + ((_1378 * _1372) / _1387)) * 4.3982296f) * exp2((((_1459 * _1459) * -0.5f) / ((_1432 * _1432) + _1401)) * 1.442695f)) + ((((_1349.x + _1321) * 0.25f) - _1321) * 6.2831855f)) * _1487;
          _1527 = ((((((_1370 * _1373) / _1382) + ((_1379 * _1373) / _1388)) * 4.3982296f) * exp2((((_1470 * _1470) * -0.5f) / ((_1440 * _1440) + _1401)) * 1.442695f)) + ((((_1356.x + _1330) * 0.25f) - _1330) * 6.2831855f)) * _1487;
          _1547 = ((((((_1371 * _1374) / _1383) + ((_1380 * _1374) / _1389)) * 4.3982296f) * exp2((((_1481 * _1481) * -0.5f) / ((_1448 * _1448) + _1401)) * 1.442695f)) + ((((_1363.x + _1339) * 0.25f) - _1339) * 6.2831855f)) * _1487;
          _1548 = max(0.125f, _1127);
          _1552 = max(0.01f, ((_1548 * (_1199 - _1507)) + _1507));
          _1556 = max(0.01f, ((_1548 * (_1200 - _1527)) + _1527));
          _1560 = max(0.01f, (lerp(_1547, _1201, _1548)));
          _1562 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
          _1566 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
          _1570 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
          _1574 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
          _2275 = _1123;
          _2276 = _1122;
          _2277 = _1121;
          _2278 = _1120;
          _2279 = _1560;
          _2280 = _1556;
          _2281 = _1552;
          _2282 = (min(30000.0f, ((((((_1566.z * _900) + (_1562.z * _897)) + (_1570.z * _903)) + (_1574.z * _906)) / _1560) * _exposure4.x)) + _958);
          _2283 = (min(30000.0f, ((((((_1566.y * _900) + (_1562.y * _897)) + (_1570.y * _903)) + (_1574.y * _906)) / _1556) * _exposure4.x)) + _947);
          _2284 = (min(30000.0f, (_exposure4.x * (((((_1566.x * _900) + (_1562.x * _897)) + (_1570.x * _903)) + (_1574.x * _906)) / _1552))) + _936);
          _2285 = 66;
          _2286 = _1133;
          _2287 = _1131;
          _2288 = _1129;
          _2289 = 0.0h;
          _2290 = _1127;
        } else {
          _2275 = _1123;
          _2276 = _1122;
          _2277 = _1121;
          _2278 = _1120;
          _2279 = 0.0f;
          _2280 = 0.0f;
          _2281 = 0.0f;
          _2282 = _958;
          _2283 = _947;
          _2284 = _936;
          _2285 = 66;
          _2286 = _1133;
          _2287 = _1131;
          _2288 = _1129;
          _2289 = 0.0h;
          _2290 = _1127;
        }
      } else {
        _1614 = _120;
        _1615 = _1124;
        _1616 = _1123;
        _1617 = _1122;
        _1618 = _1121;
        _1619 = _1120;
        _1620 = (_1614 == 53);
        if ((_1614 == 67) || _1620) {
          _1628 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
          if (!(float(_1615) > (frac(frac(dot(float2(((_1628 * 32.665f) + _105), ((_1628 * 11.815f) + _106)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
            if ((_1614 & 126) == 66) {
              _1653 = max(0.01f, float(_288));
              _1654 = max(0.01f, float(_294));
              _1655 = max(0.01f, float(_300));
              _1657 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1661 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1665 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1669 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _2275 = _1616;
              _2276 = _1617;
              _2277 = _1618;
              _2278 = _1619;
              _2279 = _1655;
              _2280 = _1654;
              _2281 = _1653;
              _2282 = (min(30000.0f, ((((((_1661.z * _900) + (_1657.z * _897)) + (_1665.z * _903)) + (_1669.z * _906)) / _1655) * _exposure4.x)) + _958);
              _2283 = (min(30000.0f, ((((((_1661.y * _900) + (_1657.y * _897)) + (_1665.y * _903)) + (_1669.y * _906)) / _1654) * _exposure4.x)) + _947);
              _2284 = (min(30000.0f, (_exposure4.x * (((((_1661.x * _900) + (_1657.x * _897)) + (_1665.x * _903)) + (_1669.x * _906)) / _1653))) + _936);
              _2285 = _1614;
              _2286 = ((_1052 * 2.0f) + -1.0f);
              _2287 = ((_1053 * 2.0f) + -1.0f);
              _2288 = ((_1054 * 2.0f) + -1.0f);
              _2289 = 0.0h;
              _2290 = 1.0f;
            } else {
              if (_1620) {
                _1711 = (_1054 * 2.0f) + -1.0f;
                _1713 = (_1053 * 2.0f) + -1.0f;
                _1715 = 1.0f - abs(_1711);
                _1716 = abs(_1713);
                _1717 = _1715 - _1716;
                if (!(_1717 >= 0.0f)) {
                  _1728 = (_1715 * select((_1713 >= 0.0f), 1.0f, -1.0f));
                  _1729 = ((1.0f - _1716) * select((_1711 >= 0.0f), 1.0f, -1.0f));
                } else {
                  _1728 = _1713;
                  _1729 = _1711;
                }
                _1731 = rsqrt(dot(float3(_1729, _1728, _1717), float3(_1729, _1728, _1717)));  // [sem: invLength]
                _1738 = max(0.01f, float(_288));
                _1739 = max(0.01f, float(_294));
                _1740 = max(0.01f, float(_300));
                _1742 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _1746 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _1750 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _1754 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _2275 = _1616;
                _2276 = _1617;
                _2277 = _1618;
                _2278 = _1619;
                _2279 = _1740;
                _2280 = _1739;
                _2281 = _1738;
                _2282 = (min(30000.0f, ((((((_1746.z * _900) + (_1742.z * _897)) + (_1750.z * _903)) + (_1754.z * _906)) / _1740) * _exposure4.x)) + _958);
                _2283 = (min(30000.0f, ((((((_1746.y * _900) + (_1742.y * _897)) + (_1750.y * _903)) + (_1754.y * _906)) / _1739) * _exposure4.x)) + _947);
                _2284 = (min(30000.0f, (_exposure4.x * (((((_1746.x * _900) + (_1742.x * _897)) + (_1750.x * _903)) + (_1754.x * _906)) / _1738))) + _936);
                _2285 = 53;
                _2286 = (_1731 * _1717);
                _2287 = (_1731 * _1728);
                _2288 = (_1731 * _1729);
                _2289 = 0.0h;
                _2290 = 1.0f;
              } else {
                _2275 = _1616;
                _2276 = _1617;
                _2277 = _1618;
                _2278 = _1619;
                _2279 = 0.0f;
                _2280 = 0.0f;
                _2281 = 0.0f;
                _2282 = _958;
                _2283 = _947;
                _2284 = _936;
                _2285 = _1614;
                _2286 = _638;
                _2287 = _637;
                _2288 = _636;
                _2289 = 0.0h;
                _2290 = 1.0f;
              }
            }
          } else {
            _2275 = _1616;
            _2276 = _1617;
            _2277 = _1618;
            _2278 = _1619;
            _2279 = 0.0f;
            _2280 = 0.0f;
            _2281 = 0.0f;
            _2282 = _958;
            _2283 = _947;
            _2284 = _936;
            _2285 = 52;
            _2286 = _638;
            _2287 = _637;
            _2288 = _636;
            _2289 = 0.0h;
            _2290 = 1.0f;
          }
        } else {
          if ((_1614 & 126) == 66) {
            _1798 = __3__36__0__0__g_bentCone.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1802 = __3__36__0__0__g_bentCone.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1806 = __3__36__0__0__g_bentCone.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1810 = __3__36__0__0__g_bentCone.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1822 = (((((_1802.x * _900) + (_1798.x * _897)) + (_1806.x * _903)) + (_1810.x * _906)) * 2.0f) + -1.0f;
            _1831 = (((((_1802.y * _900) + (_1798.y * _897)) + (_1806.y * _903)) + (_1810.y * _906)) * 2.0f) + -1.0f;
            _1840 = (((((_1802.z * _900) + (_1798.z * _897)) + (_1806.z * _903)) + (_1810.z * _906)) * 2.0f) + -1.0f;
            _1842 = rsqrt(dot(float3(_1822, _1831, _1840), float3(_1822, _1831, _1840)));  // [sem: invLength]
            _1843 = _1822 * _1842;
            _1844 = _1831 * _1842;
            _1845 = _1840 * _1842;
            if (!(_renderParams.z > 0.0f)) {
              if (!(_renderParams2.y > 0.0f)) {
                _1857 = (half)(saturate((half)(_177 + 0.15002441h)));
              } else {
                _1857 = _177;
              }
            } else {
              _1857 = _177;
            }
            _1858 = float(_1857);
            _1861 = float(_288);
            _1862 = float(_294);
            _1863 = float(_300);
            _1864 = dot(float3(_636, _637, _638), float3(_1843, _1844, _1845));
            _1865 = -0.0f - _1031;
            _1866 = -0.0f - _1032;
            _1867 = -0.0f - _1033;
            _1868 = dot(float3(_636, _637, _638), float3(_1865, _1866, _1867));
            _1874 = cos(abs(asin(_1868) - asin(_1864)) * 0.5f);
            _1876 = _1843 - (_1864 * _636);
            _1878 = _1844 - (_1864 * _637);
            _1880 = _1845 - (_1864 * _638);
            _1882 = _1865 - (_1868 * _636);
            _1884 = _1866 - (_1868 * _637);
            _1886 = _1867 - (_1868 * _638);
            _1893 = dot(float3(_1876, _1878, _1880), float3(_1882, _1884, _1886)) * rsqrt((dot(float3(_1876, _1878, _1880), float3(_1876, _1878, _1880)) * dot(float3(_1882, _1884, _1886), float3(_1882, _1884, _1886))) + 0.0001f);
            _1895 = min(max(_1858, 0.09803922f), 1.0f);
            _1896 = _1895 * _1895;
            _1897 = _1896 * 0.5f;
            _1898 = _1896 * 2.0f;
            _1899 = _1868 + _1864;
            _1900 = _1899 - _bevelParams.y;
            _1904 = 1.0f / ((1.19f / _1874) + (_1874 * 0.36f));
            _1913 = ((_1904 * (0.6f - (_1893 * 0.8f))) + 1.0f) * sqrt(saturate((_1893 * 0.5f) + 0.5f));
            _1919 = 1.0f - (sqrt(saturate(1.0f - (_1913 * _1913))) * _1874);
            _1920 = _1919 * _1919;
            _1924 = 0.9534794f - ((_1920 * _1920) * (_1919 * 0.9534794f));
            _1925 = _1913 * _1904;
            _1930 = (sqrt(1.0f - (_1925 * _1925)) * 0.5f) / _1874;
            _1931 = log2(_1861);
            _1932 = log2(_1862);
            _1933 = log2(_1863);
            _1947 = ((_1924 * _1924) * (exp2((((_1900 * _1900) * -0.5f) / (_1897 * _1897)) * 1.442695f) / (_1896 * 1.2533141f))) * exp2(-5.741926f - (_1893 * 5.265837f));
            _1949 = _1899 - (_bevelParams.y * 4.0f);
            _1951 = 1.0f - (_1874 * 0.5f);
            _1952 = _1951 * _1951;
            _1956 = (_1952 * _1952) * (0.9534794f - (_1874 * 0.4767397f));
            _1957 = 0.9534794f - _1956;
            _1958 = 0.8f / _1874;
            _1974 = (((_1957 * _1957) * (_1956 + 0.046520565f)) * (exp2((((_1949 * _1949) * -0.5f) / (_1898 * _1898)) * 1.442695f) / (_1896 * 5.0132565f))) * exp2((_1893 * 24.525816f) + -24.208424f);
            _1983 = min(0.0f, (-0.0f - ((exp2(_1931 * _1930) * _1947) + (exp2(_1958 * _1931) * _1974))));
            _1992 = min(0.0f, (-0.0f - ((exp2(_1932 * _1930) * _1947) + (exp2(_1958 * _1932) * _1974))));
            _2001 = min(0.0f, (-0.0f - ((exp2(_1933 * _1930) * _1947) + (exp2(_1958 * _1933) * _1974))));
            _2004 = saturate(abs(dot(float3(_1843, _1844, _1845), float3(_636, _637, _638))));  // [sem: expr_sat]
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _2011 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_2004, _1858, saturate(sqrt(exp2(_1931 * 1.5f)))), 0.0f);
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _2018 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_2004, _1858, saturate(sqrt(exp2(_1932 * 1.5f)))), 0.0f);
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _2025 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_2004, _1858, saturate(sqrt(exp2(_1933 * 1.5f)))), 0.0f);
            _2028 = min(0.99f, _2011.x);
            _2029 = min(0.99f, _2018.x);
            _2030 = min(0.99f, _2025.x);
            _2031 = min(0.99f, _2011.y);
            _2032 = min(0.99f, _2018.y);
            _2033 = min(0.99f, _2025.y);
            _2034 = _2028 * _2028;
            _2035 = _2029 * _2029;
            _2036 = _2030 * _2030;
            _2037 = _2031 * _2031;
            _2038 = _2032 * _2032;
            _2039 = _2033 * _2033;
            _2040 = _2037 * _2031;
            _2041 = _2038 * _2032;
            _2042 = _2039 * _2033;
            _2043 = 1.0f - _2034;
            _2044 = 1.0f - _2035;
            _2045 = 1.0f - _2036;
            _2046 = _2043 * _2043;
            _2047 = _2044 * _2044;
            _2048 = _2045 * _2045;
            _2049 = _2046 * _2043;
            _2050 = _2047 * _2044;
            _2051 = _2048 * _2045;
            _2053 = min(max(_1858, 0.18f), 0.6f);
            _2054 = _2053 * _2053;
            _2055 = _2054 * 0.25f;
            _2056 = _2054 * 4.0f;
            _2058 = (_2029 + _2028) + _2030;
            _2059 = _2028 / _2058;
            _2060 = _2029 / _2058;
            _2061 = _2030 / _2058;
            _2062 = dot(float3(_2054, _2055, _2056), float3(_2059, _2060, _2061));
            _2063 = _2062 * _2062;
            _2070 = asin(min(max(_1864, -1.0f), 1.0f)) + asin(min(max(_1868, -1.0f), 1.0f));
            _2071 = _2070 * 0.5f;
            _2072 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_2059, _2060, _2061));
            _2073 = _2072 * _2072;
            _2075 = (_2032 + _2031) + _2033;
            _2079 = dot(float3(_2054, _2055, _2056), float3((_2031 / _2075), (_2032 / _2075), (_2033 / _2075)));
            _2083 = sqrt((_2079 * _2079) + (_2063 * 2.0f));
            _2086 = (_2079 * 3.0f) + (_2062 * 2.0f);
            _2094 = (((_2040 + _2031) * ((_2034 * 0.7f) + 1.0f)) * _2083) / ((_2086 * _2040) + _2031);
            _2102 = (((_2041 + _2032) * ((_2035 * 0.7f) + 1.0f)) * _2083) / ((_2086 * _2041) + _2032);
            _2110 = (((_2042 + _2033) * ((_2036 * 0.7f) + 1.0f)) * _2083) / ((_2086 * _2042) + _2033);
            _2121 = _2071 - (((_2073 * (((_2034 * 4.0f) * _2037) + (_2046 * 2.0f))) * (1.0f - ((_2037 * 2.0f) / _2046))) / _2049);
            _2132 = _2071 - (((_2073 * (((_2035 * 4.0f) * _2038) + (_2047 * 2.0f))) * (1.0f - ((_2038 * 2.0f) / _2047))) / _2050);
            _2143 = _2071 - (((_2073 * (((_2036 * 4.0f) * _2039) + (_2048 * 2.0f))) * (1.0f - ((_2039 * 2.0f) / _2048))) / _2051);
            _2149 = exp2((((_2070 * -0.25f) * _2071) / _2063) * 1.442695f) * 1.4f;
            _2169 = ((((((_2031 * _2034) / _2043) + ((_2040 * _2034) / _2049)) * 4.3982296f) * exp2((((_2121 * _2121) * -0.5f) / ((_2094 * _2094) + _2063)) * 1.442695f)) + ((((_2011.x + _1983) * 0.25f) - _1983) * 6.2831855f)) * _2149;
            _2189 = ((((((_2032 * _2035) / _2044) + ((_2041 * _2035) / _2050)) * 4.3982296f) * exp2((((_2132 * _2132) * -0.5f) / ((_2102 * _2102) + _2063)) * 1.442695f)) + ((((_2018.x + _1992) * 0.25f) - _1992) * 6.2831855f)) * _2149;
            _2209 = ((((((_2033 * _2036) / _2045) + ((_2042 * _2036) / _2051)) * 4.3982296f) * exp2((((_2143 * _2143) * -0.5f) / ((_2110 * _2110) + _2063)) * 1.442695f)) + ((((_2025.x + _2001) * 0.25f) - _2001) * 6.2831855f)) * _2149;
            _2213 = max(0.01f, (lerp(_2169, _1861, 0.125f)));
            _2217 = max(0.01f, (lerp(_2189, _1862, 0.125f)));
            _2221 = max(0.01f, (lerp(_2209, _1863, 0.125f)));
            _2223 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
            _2227 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
            _2231 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
            _2235 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
            _2275 = _1616;
            _2276 = _1617;
            _2277 = _1618;
            _2278 = _1619;
            _2279 = _2221;
            _2280 = _2217;
            _2281 = _2213;
            _2282 = (min(30000.0f, ((((((_2227.z * _900) + (_2223.z * _897)) + (_2231.z * _903)) + (_2235.z * _906)) / _2221) * _exposure4.x)) + _958);
            _2283 = (min(30000.0f, ((((((_2227.y * _900) + (_2223.y * _897)) + (_2231.y * _903)) + (_2235.y * _906)) / _2217) * _exposure4.x)) + _947);
            _2284 = (min(30000.0f, (_exposure4.x * (((((_2227.x * _900) + (_2223.x * _897)) + (_2231.x * _903)) + (_2235.x * _906)) / _2213))) + _936);
            _2285 = _1614;
            _2286 = _638;
            _2287 = _637;
            _2288 = _636;
            _2289 = _1615;
            _2290 = 0.0f;
          } else {
            _2275 = _1616;
            _2276 = _1617;
            _2277 = _1618;
            _2278 = _1619;
            _2279 = 0.0f;
            _2280 = 0.0f;
            _2281 = 0.0f;
            _2282 = _958;
            _2283 = _947;
            _2284 = _936;
            _2285 = _1614;
            _2286 = _638;
            _2287 = _637;
            _2288 = _636;
            _2289 = _1615;
            _2290 = 0.0f;
          }
        }
      }
    }
    _2293 = -0.0f - min(0.0f, (-0.0f - _2284));
    _2296 = -0.0f - min(0.0f, (-0.0f - _2283));
    _2299 = -0.0f - min(0.0f, (-0.0f - _2282));
    half2 _2301 = __3__36__0__0__g_sceneAO.Load(int3(_517, _516, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _2304 = __3__36__0__0__g_sceneAO.Load(int3(_912, _516, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _2307 = __3__36__0__0__g_sceneAO.Load(int3(_517, _917, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _2310 = __3__36__0__0__g_sceneAO.Load(int3(_912, _917, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    _2323 = (((float(_2304.x) * _900) + (float(_2301.x) * _897)) + (float(_2307.x) * _903)) + (float(_2310.x) * _906);
    if ((uint)_2285 > (uint)11) {
      _2328 = (int)(uint)((int)((uint)_2285 < (uint)19));
      bool __branch_chain_2325;
      if ((uint)_2285 < (uint)20) {
        _2337 = _2328;
        _2338 = 1;
        __branch_chain_2325 = true;
      } else {
        if (!(_2285 == 65)) {
          _2337 = _2328;
          _2338 = ((int)(uint)((int)(_2285 == 107)));
          __branch_chain_2325 = true;
        } else {
          _2345 = true;
          _2346 = true;
          __branch_chain_2325 = false;
        }
      }
      if (__branch_chain_2325) {
        if (_2337 == 0) {
          _2345 = false;
          _2346 = ((_2285 == 96) || (_2338 != 0));
        } else {
          _2345 = false;
          _2346 = true;
        }
      }
    } else {
      _2337 = 0;
      _2338 = ((int)(uint)((int)((uint)_2285 > (uint)10)));
      if (_2337 == 0) {
        _2345 = false;
        _2346 = ((_2285 == 96) || (_2338 != 0));
      } else {
        _2345 = false;
        _2346 = true;
      }
    }
    _2348 = select(_2346, float(_2289), 0.0f);
    _2350 = ((uint)(_2285 & 24) > (uint)23);
    if (_2350) {
      _2352 = (_2285 == 29);
      if (_2352) {
        _2357 = float(saturate(_177));
      } else {
        _2357 = 0.0f;
      }
      _2359 = (uint)((half)(_181 * 255.0h));
      if (_185) {
        _2368 = (((float)((uint)((uint)(_2359 & 127)))) * 0.007874016f);
        _2369 = select(((_2359 & 128) != 0), 1.0f, 0.0f);
      } else {
        _2368 = 0.0f;
        _2369 = 0.0f;
      }
      _2370 = half(_2368);
      _2371 = (_2370 > 0.99902344h);
      _2381 = _2357;
      _2382 = _2369;
      _2383 = (half)(select(_2371, 1.0f, _300));
      _2384 = (half)(select(_2371, 1.0f, _294));
      _2385 = (half)(select(_2371, 1.0f, _288));
      _2386 = (half)(select(((_2285 == 24) || _2352), 0.010002136f, _177));
      _2387 = _2370;
    } else {
      _2381 = 0.0f;
      _2382 = 0.0f;
      _2383 = _300;
      _2384 = _294;
      _2385 = _288;
      _2386 = _177;
      _2387 = (half)(select(_2346, 0.0f, _2289));
    }
    // RenoDX: >>> [Patch: FoliageColorCorrect] [Version: 1.16.00]
    // Description: Applies RenoDX foliage color shaping to foliage stencil materials (stencil ids
    //              12..18) right after the shader has resolved the direct-diffuse base color for the
    //              pixel. Vanilla foliage albedo reads flat and yellow-green under strong sun, so the
    //              helper re-balances hue and saturation. The shadow-map visibility term from
    //              g_sceneShadowColor is passed in so foliage that is shadowed is not pushed through
    //              the fully sunlit shaping curve, which would otherwise make shaded leaves glow.
    //              Gated by FOLIAGE_COLOR_CORRECT; at 0 the block does not execute.
    if (FOLIAGE_COLOR_CORRECT > 0.0f && ((uint)(_120 - 12) < 7u)) {
      float3 _rndx_fcBaseColor = float3(float(_2385), float(_2384), float(_2383));
      half4 _rndx_fcShadow = __3__36__0__0__g_sceneShadowColor.Load(int3(_99, _104, 0));
      float _rndx_fcShadowVis = saturate(dot(float3(_rndx_fcShadow.xyz), float3(0.2126f, 0.7152f, 0.0722f)));
      float3 _rndx_fcCorrected = FoliageColorCorrect(_rndx_fcBaseColor, _sunDirection.xyz, _rndx_fcShadowVis, float3(1.0f, 1.0f, 1.0f));
      float3 _rndx_fscColor = FoliageSelectiveColor(_rndx_fcCorrected);
      _2385 = half(_rndx_fscColor.x);
      _2384 = half(_rndx_fscColor.y);
      _2383 = half(_rndx_fscColor.z);
    }
    // RenoDX: <<< [Patch: FoliageColorCorrect]
    _2388 = _2285 & -2;
    _2389 = (_2388 == 66);
    _2390 = (_2285 == 53);
    _2391 = _2390 || _2389;
    _2392 = -0.0f - _1031;
    _2393 = -0.0f - _1032;
    _2394 = -0.0f - _1033;
    _2395 = dot(float3(_2392, _2393, _2394), float3(_636, _637, _638));
    if (_2391) {
      _2399 = abs(_2395);
    } else {
      _2399 = _2395;
    }
    _2400 = saturate(_2399);  // [sem: _2399_sat]
    _2401 = _118.x & 128;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _2402 = (_2401 == 0);
    if (_2402) {
      if ((uint)_120 > (uint)51) {
        if (!(((_118.x & 125) == 105) || ((uint)_120 < (uint)68))) {
          _2425 = ((int)(uint)((int)(_120 == 98)));
        } else {
          _2425 = 1;
        }
      } else {
        if ((uint)_120 > (uint)10) {
          if ((uint)_120 < (uint)20) {
            _2425 = ((int)(uint)((int)(_608 != 14)));
          } else {
            _2425 = ((int)(uint)((int)((_118.x & 125) == 105)));
          }
        } else {
          _2425 = 0;
        }
      }
    } else {
      _2425 = 1;
    }
    [branch]
    if (_2350) {
      _2434 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_99, _104, 0)))).x) & 16777215)))) * 5.960465e-08f);
    } else {
      _2434 = _115.x;
    }
    _2446 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), _2434, mad((_projToPrevProj[3].y), _989, ((_projToPrevProj[3].x) * _987)));
    if (_2425 == 0) {
      _2477 = (((mad((_projToPrevProj[1].z), _2434, mad((_projToPrevProj[1].y), _989, ((_projToPrevProj[1].x) * _987))) + (_projToPrevProj[1].w)) / _2446) - _989);
      _2478 = (((mad((_projToPrevProj[0].z), _2434, mad((_projToPrevProj[0].y), _989, ((_projToPrevProj[0].x) * _987))) + (_projToPrevProj[0].w)) / _2446) - _987);
    } else {
      _2450 = __3__36__0__0__g_velocity.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _2477 = (_2450.y * 2.0f);
      _2478 = (_2450.x * 2.0f);
    }
    _2480 = _nearFarProj.x / max(1e-07f, _2434);
    _2482 = (_2478 * 0.5f) + _111;
    _2484 = _113 - (_2477 * 0.5f);
    _2492 = select(((_2484 > 1.0f) || ((_2484 < 0.0f) || ((_2482 < 0.0f) || (_2482 > 1.0f)))), 1.0f, 0.0f);
    _2496 = (_bufferSizeAndInvSize.x * _2482) + -0.5f;
    _2499 = (_bufferSizeAndInvSize.y * _2484) + -0.5f;
    _2501 = (int)(floor(_2496));
    _2503 = (int)(floor(_2499));
    _2504 = (float)((int)(_2501));
    _2505 = (float)((int)(_2503));
    _2508 = (_2504 + 0.5f) * _bufferSizeAndInvSize.z;
    _2511 = (_2505 + 0.5f) * _bufferSizeAndInvSize.w;
    _2513 = __3__36__0__0__g_depthOpaquePrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_2508, _2511));  // [sem: _3__36__0__0__g_depthOpaquePrev_gather]
    _2524 = mad(((uint)((uint)(_2513.w)) >> 24), 16777216, mad(((uint)((uint)(_2513.z)) >> 24), 65536, mad(((uint)((uint)(_2513.y)) >> 24), 256, ((uint)((uint)(_2513.x)) >> 24))));
    if (_2402) {
      if ((uint)_120 > (uint)51) {
        if (!(_120 == 98)) {
          if (!(((_118.x & 125) == 105) || ((uint)_120 < (uint)68))) {
            _2584 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
          } else {
            _2584 = 0.0f;
          }
        } else {
          _2584 = 0.0f;
        }
      } else {
        if ((uint)_120 > (uint)10) {
          if ((uint)_120 < (uint)20) {
            if (_608 == 14) {
              _2584 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _2584 = 0.0f;
            }
          } else {
            if (!((_118.x & 125) == 105)) {
              _2584 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _2584 = 0.0f;
            }
          }
        } else {
          _2584 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        }
      }
    } else {
      _2584 = 0.0f;
    }
    _2587 = _screenPercentage.x * 2.0f;
    _2590 = _2587 * abs(_111 + -0.5f);
    _2592 = _screenPercentage.y * 2.0f;
    _2595 = _2592 * abs(_113 + -0.5f);
    _2599 = sqrt(dot(float2(_2590, _2595), float2(_2590, _2595)) + 1.0f) * _2480;
    _2602 = abs(_2482 + -0.5f) * _2587;
    _2605 = abs(_2484 + -0.5f) * _2592;
    _2608 = sqrt(dot(float2(_2602, _2605), float2(_2602, _2605)) + 1.0f);
    _2611 = _601 || ((uint)((int)(_2285) + (int)(-97)) < (uint)2);
    _2612 = _2480 * _2480;
    _2615 = (_2612 * select(_2611, 0.5f, 0.2f)) + 1.0f;
    _2617 = ((uint)((int)(_2285) + (int)(-52)) < (uint)16);
    if (_2617) {
      _2636 = (1000.0f - (saturate((float)((bool)((sqrt(((_diffViewPosAccurate.y * _diffViewPosAccurate.y) + (_diffViewPosAccurate.x * _diffViewPosAccurate.x)) + (_diffViewPosAccurate.z * _diffViewPosAccurate.z)) * 50.0f) > 1.0f))) * 875.0f));
    } else {
      _2636 = 50.0f;
    }
    _2641 = select(_2617, 0.0f, ((_temporalReprojectionParams.y * 0.1f) * max(0.0f, (_2480 + -1.0f))));
    _2652 = max(0.0f, (abs(_2599 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_2513.x & 16777215)))) * 5.960465e-08f))) - _2584) * _2608)) - _2641));
    _2663 = max(0.0f, (abs(_2599 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_2513.y & 16777215)))) * 5.960465e-08f))) - _2584) * _2608)) - _2641));
    _2674 = max(0.0f, (abs(_2599 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_2513.z & 16777215)))) * 5.960465e-08f))) - _2584) * _2608)) - _2641));
    _2685 = max(0.0f, (abs(_2599 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_2513.w & 16777215)))) * 5.960465e-08f))) - _2584) * _2608)) - _2641));
    _2686 = _2652 * _2652;
    _2687 = _2663 * _2663;
    _2688 = _2674 * _2674;
    _2689 = _2685 * _2685;
    _2694 = (-1.442695f / ((_2612 * 0.1f) + 1.0f)) * select(_2611, 0.2f, _2636);
    _2698 = select((_2686 > _2615), 0.0f, exp2(_2694 * _2686));
    _2702 = select((_2687 > _2615), 0.0f, exp2(_2694 * _2687));
    _2706 = select((_2688 > _2615), 0.0f, exp2(_2694 * _2688));
    _2710 = select((_2689 > _2615), 0.0f, exp2(_2694 * _2689));
    if (!_2350) {
      _2712 = _2524 & 127;
      _2713 = _2524 & 32512;
      _2714 = _2524 & 8323072;
      _2715 = _2524 & 2130706432;
      _2717 = ((uint)((int)(_2712) + (int)(-52)) < (uint)16);
      _2721 = ((uint)((int)(((uint)((uint)(_2524)) >> 8) & 127) + (int)(-52)) < (uint)16);
      _2725 = ((uint)((int)(((uint)((uint)(_2524)) >> 16) & 127) + (int)(-52)) < (uint)16);
      _2729 = ((uint)((int)(((uint)((uint)(_2524)) >> 24) & 127) + (int)(-52)) < (uint)16);
      _2731 = ((uint)((int)(_120) + (int)(-52)) < (uint)16);
      _2733 = (_2401 != 0) || _2731;
      _2734 = (_2285 == 6);
      _2736 = ((uint)((int)(_2285) + (int)(-105)) < (uint)3);
      if (_611) {
        if (!((_2731 ^ _2717) || ((_2734 ^ (_2712 == 6)) || (_2733 ^ (((_2524 & 128) != 0) || _2717))))) {
          _2759 = (_2736 ^ ((_2712 == 107) || ((uint)((int)(_2712) + (int)(-105)) < (uint)2)));
        } else {
          _2759 = true;
        }
        _2762 = ((float)((bool)(!_2759))) * _2698;
        _2770 = _2762;
        if (!((_2731 ^ _2721) || ((_2734 ^ (_2713 == 1536)) || (_2733 ^ (((_2524 & 32768) != 0) || _2721))))) {
          _2787 = (_2736 ^ (((_2524 & 32000) == 26880) || (_2713 == 27136)));
        } else {
          _2787 = true;
        }
        _2790 = ((float)((bool)(!_2787))) * _2702;
        _2799 = _2790;
        _2800 = _2770;
        if (!((_2731 ^ _2725) || ((_2734 ^ (_2714 == 393216)) || (_2733 ^ (((_2524 & 8388608) != 0) || _2725))))) {
          _2817 = (_2736 ^ (((_2524 & 8192000) == 6881280) || (_2714 == 6946816)));
        } else {
          _2817 = true;
        }
        _2820 = ((float)((bool)(!_2817))) * _2706;
        _2830 = _2820;
        _2831 = _2800;
        _2832 = _2799;
        if (!((_2731 ^ _2729) || ((_2734 ^ (_2715 == 100663296)) || (_2733 ^ (((int)_2524 < (int)0) || _2729))))) {
          _2848 = (_2736 ^ (((_2524 & 2097152000) == 1761607680) || (_2715 == 1778384896)));
        } else {
          _2848 = true;
        }
        _2851 = _2830;
        _2852 = _2831;
        _2853 = _2832;
        _2854 = (!_2848);
      } else {
        if ((_2712 != 53) && ((_2524 & 126) != 66)) {
          if (!((_2731 ^ _2717) || ((_2734 ^ (_2712 == 6)) || (_2733 ^ (((_2524 & 128) != 0) || _2717))))) {
            _2759 = (_2736 ^ ((_2712 == 107) || ((uint)((int)(_2712) + (int)(-105)) < (uint)2)));
          } else {
            _2759 = true;
          }
          _2762 = ((float)((bool)(!_2759))) * _2698;
          _2764 = _2762;
          if ((_2713 != 13568) && ((_2524 & 32256) != 16896)) {
            _2770 = _2764;
            if (!((_2731 ^ _2721) || ((_2734 ^ (_2713 == 1536)) || (_2733 ^ (((_2524 & 32768) != 0) || _2721))))) {
              _2787 = (_2736 ^ (((_2524 & 32000) == 26880) || (_2713 == 27136)));
            } else {
              _2787 = true;
            }
            _2790 = ((float)((bool)(!_2787))) * _2702;
            _2792 = _2790;
            _2793 = _2770;
            if ((_2714 != 3473408) && ((_2524 & 8257536) != 4325376)) {
              _2799 = _2792;
              _2800 = _2793;
              if (!((_2731 ^ _2725) || ((_2734 ^ (_2714 == 393216)) || (_2733 ^ (((_2524 & 8388608) != 0) || _2725))))) {
                _2817 = (_2736 ^ (((_2524 & 8192000) == 6881280) || (_2714 == 6946816)));
              } else {
                _2817 = true;
              }
              _2820 = ((float)((bool)(!_2817))) * _2706;
              _2822 = _2820;
              _2823 = _2800;
              _2824 = _2799;
              if ((_2715 != 889192448) && ((_2524 & 2113929216) != 1107296256)) {
                _2830 = _2822;
                _2831 = _2823;
                _2832 = _2824;
                if (!((_2731 ^ _2729) || ((_2734 ^ (_2715 == 100663296)) || (_2733 ^ (((int)_2524 < (int)0) || _2729))))) {
                  _2848 = (_2736 ^ (((_2524 & 2097152000) == 1761607680) || (_2715 == 1778384896)));
                } else {
                  _2848 = true;
                }
                _2851 = _2830;
                _2852 = _2831;
                _2853 = _2832;
                _2854 = (!_2848);
              } else {
                _2851 = _2822;
                _2852 = _2823;
                _2853 = _2824;
                _2854 = false;
              }
            } else {
              _2822 = 0.0f;
              _2823 = _2793;
              _2824 = _2792;
              if ((_2715 != 889192448) && ((_2524 & 2113929216) != 1107296256)) {
                _2830 = _2822;
                _2831 = _2823;
                _2832 = _2824;
                if (!((_2731 ^ _2729) || ((_2734 ^ (_2715 == 100663296)) || (_2733 ^ (((int)_2524 < (int)0) || _2729))))) {
                  _2848 = (_2736 ^ (((_2524 & 2097152000) == 1761607680) || (_2715 == 1778384896)));
                } else {
                  _2848 = true;
                }
                _2851 = _2830;
                _2852 = _2831;
                _2853 = _2832;
                _2854 = (!_2848);
              } else {
                _2851 = _2822;
                _2852 = _2823;
                _2853 = _2824;
                _2854 = false;
              }
            }
          } else {
            _2792 = 0.0f;
            _2793 = _2764;
            if ((_2714 != 3473408) && ((_2524 & 8257536) != 4325376)) {
              _2799 = _2792;
              _2800 = _2793;
              if (!((_2731 ^ _2725) || ((_2734 ^ (_2714 == 393216)) || (_2733 ^ (((_2524 & 8388608) != 0) || _2725))))) {
                _2817 = (_2736 ^ (((_2524 & 8192000) == 6881280) || (_2714 == 6946816)));
              } else {
                _2817 = true;
              }
              _2820 = ((float)((bool)(!_2817))) * _2706;
              _2822 = _2820;
              _2823 = _2800;
              _2824 = _2799;
              if ((_2715 != 889192448) && ((_2524 & 2113929216) != 1107296256)) {
                _2830 = _2822;
                _2831 = _2823;
                _2832 = _2824;
                if (!((_2731 ^ _2729) || ((_2734 ^ (_2715 == 100663296)) || (_2733 ^ (((int)_2524 < (int)0) || _2729))))) {
                  _2848 = (_2736 ^ (((_2524 & 2097152000) == 1761607680) || (_2715 == 1778384896)));
                } else {
                  _2848 = true;
                }
                _2851 = _2830;
                _2852 = _2831;
                _2853 = _2832;
                _2854 = (!_2848);
              } else {
                _2851 = _2822;
                _2852 = _2823;
                _2853 = _2824;
                _2854 = false;
              }
            } else {
              _2822 = 0.0f;
              _2823 = _2793;
              _2824 = _2792;
              if ((_2715 != 889192448) && ((_2524 & 2113929216) != 1107296256)) {
                _2830 = _2822;
                _2831 = _2823;
                _2832 = _2824;
                if (!((_2731 ^ _2729) || ((_2734 ^ (_2715 == 100663296)) || (_2733 ^ (((int)_2524 < (int)0) || _2729))))) {
                  _2848 = (_2736 ^ (((_2524 & 2097152000) == 1761607680) || (_2715 == 1778384896)));
                } else {
                  _2848 = true;
                }
                _2851 = _2830;
                _2852 = _2831;
                _2853 = _2832;
                _2854 = (!_2848);
              } else {
                _2851 = _2822;
                _2852 = _2823;
                _2853 = _2824;
                _2854 = false;
              }
            }
          }
        } else {
          _2764 = 0.0f;
          if ((_2713 != 13568) && ((_2524 & 32256) != 16896)) {
            _2770 = _2764;
            if (!((_2731 ^ _2721) || ((_2734 ^ (_2713 == 1536)) || (_2733 ^ (((_2524 & 32768) != 0) || _2721))))) {
              _2787 = (_2736 ^ (((_2524 & 32000) == 26880) || (_2713 == 27136)));
            } else {
              _2787 = true;
            }
            _2790 = ((float)((bool)(!_2787))) * _2702;
            _2792 = _2790;
            _2793 = _2770;
            if ((_2714 != 3473408) && ((_2524 & 8257536) != 4325376)) {
              _2799 = _2792;
              _2800 = _2793;
              if (!((_2731 ^ _2725) || ((_2734 ^ (_2714 == 393216)) || (_2733 ^ (((_2524 & 8388608) != 0) || _2725))))) {
                _2817 = (_2736 ^ (((_2524 & 8192000) == 6881280) || (_2714 == 6946816)));
              } else {
                _2817 = true;
              }
              _2820 = ((float)((bool)(!_2817))) * _2706;
              _2822 = _2820;
              _2823 = _2800;
              _2824 = _2799;
              if ((_2715 != 889192448) && ((_2524 & 2113929216) != 1107296256)) {
                _2830 = _2822;
                _2831 = _2823;
                _2832 = _2824;
                if (!((_2731 ^ _2729) || ((_2734 ^ (_2715 == 100663296)) || (_2733 ^ (((int)_2524 < (int)0) || _2729))))) {
                  _2848 = (_2736 ^ (((_2524 & 2097152000) == 1761607680) || (_2715 == 1778384896)));
                } else {
                  _2848 = true;
                }
                _2851 = _2830;
                _2852 = _2831;
                _2853 = _2832;
                _2854 = (!_2848);
              } else {
                _2851 = _2822;
                _2852 = _2823;
                _2853 = _2824;
                _2854 = false;
              }
            } else {
              _2822 = 0.0f;
              _2823 = _2793;
              _2824 = _2792;
              if ((_2715 != 889192448) && ((_2524 & 2113929216) != 1107296256)) {
                _2830 = _2822;
                _2831 = _2823;
                _2832 = _2824;
                if (!((_2731 ^ _2729) || ((_2734 ^ (_2715 == 100663296)) || (_2733 ^ (((int)_2524 < (int)0) || _2729))))) {
                  _2848 = (_2736 ^ (((_2524 & 2097152000) == 1761607680) || (_2715 == 1778384896)));
                } else {
                  _2848 = true;
                }
                _2851 = _2830;
                _2852 = _2831;
                _2853 = _2832;
                _2854 = (!_2848);
              } else {
                _2851 = _2822;
                _2852 = _2823;
                _2853 = _2824;
                _2854 = false;
              }
            }
          } else {
            _2792 = 0.0f;
            _2793 = _2764;
            if ((_2714 != 3473408) && ((_2524 & 8257536) != 4325376)) {
              _2799 = _2792;
              _2800 = _2793;
              if (!((_2731 ^ _2725) || ((_2734 ^ (_2714 == 393216)) || (_2733 ^ (((_2524 & 8388608) != 0) || _2725))))) {
                _2817 = (_2736 ^ (((_2524 & 8192000) == 6881280) || (_2714 == 6946816)));
              } else {
                _2817 = true;
              }
              _2820 = ((float)((bool)(!_2817))) * _2706;
              _2822 = _2820;
              _2823 = _2800;
              _2824 = _2799;
              if ((_2715 != 889192448) && ((_2524 & 2113929216) != 1107296256)) {
                _2830 = _2822;
                _2831 = _2823;
                _2832 = _2824;
                if (!((_2731 ^ _2729) || ((_2734 ^ (_2715 == 100663296)) || (_2733 ^ (((int)_2524 < (int)0) || _2729))))) {
                  _2848 = (_2736 ^ (((_2524 & 2097152000) == 1761607680) || (_2715 == 1778384896)));
                } else {
                  _2848 = true;
                }
                _2851 = _2830;
                _2852 = _2831;
                _2853 = _2832;
                _2854 = (!_2848);
              } else {
                _2851 = _2822;
                _2852 = _2823;
                _2853 = _2824;
                _2854 = false;
              }
            } else {
              _2822 = 0.0f;
              _2823 = _2793;
              _2824 = _2792;
              if ((_2715 != 889192448) && ((_2524 & 2113929216) != 1107296256)) {
                _2830 = _2822;
                _2831 = _2823;
                _2832 = _2824;
                if (!((_2731 ^ _2729) || ((_2734 ^ (_2715 == 100663296)) || (_2733 ^ (((int)_2524 < (int)0) || _2729))))) {
                  _2848 = (_2736 ^ (((_2524 & 2097152000) == 1761607680) || (_2715 == 1778384896)));
                } else {
                  _2848 = true;
                }
                _2851 = _2830;
                _2852 = _2831;
                _2853 = _2832;
                _2854 = (!_2848);
              } else {
                _2851 = _2822;
                _2852 = _2823;
                _2853 = _2824;
                _2854 = false;
              }
            }
          }
        }
      }
      _2858 = (((float)((bool)(_2854))) * _2710);
      _2859 = _2851;
      _2860 = _2853;
      _2861 = _2852;
    } else {
      _2858 = _2710;
      _2859 = _2706;
      _2860 = _2702;
      _2861 = _2698;
    }
    _2863 = __3__36__0__0__g_sceneNormalPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_2508, _2511));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather]
    _2872 = min(1.0f, ((((float)((uint)((uint)(_2863.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2878 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2863.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2884 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2863.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2886 = rsqrt(dot(float3(_2872, _2878, _2884), float3(_2872, _2878, _2884)));  // [sem: invLength]
    _2891 = saturate(dot(float3(_636, _637, _638), float3((_2886 * _2872), (_2886 * _2878), (_2886 * _2884))));  // [sem: expr_sat]
    _2896 = min(1.0f, ((((float)((uint)((uint)(_2863.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2902 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2863.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2908 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2863.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2910 = rsqrt(dot(float3(_2896, _2902, _2908), float3(_2896, _2902, _2908)));  // [sem: invLength]
    _2915 = saturate(dot(float3(_636, _637, _638), float3((_2910 * _2896), (_2910 * _2902), (_2910 * _2908))));  // [sem: expr_sat]
    _2920 = min(1.0f, ((((float)((uint)((uint)(_2863.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2926 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2863.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2932 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2863.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2934 = rsqrt(dot(float3(_2920, _2926, _2932), float3(_2920, _2926, _2932)));  // [sem: invLength]
    _2939 = saturate(dot(float3(_636, _637, _638), float3((_2934 * _2920), (_2934 * _2926), (_2934 * _2932))));  // [sem: expr_sat]
    _2944 = min(1.0f, ((((float)((uint)((uint)(_2863.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2950 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2863.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2956 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2863.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2958 = rsqrt(dot(float3(_2944, _2950, _2956), float3(_2944, _2950, _2956)));  // [sem: invLength]
    _2963 = saturate(dot(float3(_636, _637, _638), float3((_2958 * _2944), (_2958 * _2950), (_2958 * _2956))));  // [sem: expr_sat]
    _2966 = select((_2390 || (_2389 || _2611)), 0.01f, 1.0f);
    _2967 = _2496 - _2504;
    _2968 = _2499 - _2505;
    _2969 = 1.0f - _2967;
    _2970 = 1.0f - _2968;
    _2972 = (_2969 * _2968) * _2861;
    _2974 = (_2968 * _2967) * _2860;
    _2976 = (_2970 * _2967) * _2859;
    _2978 = (_2970 * _2969) * _2858;
    _2984 = saturate(select(_2350, 1.0f, (pow(_2939, _2966))) * _2972);  // [sem: expr_sat]
    _2990 = saturate(select(_2350, 1.0f, (pow(_2963, _2966))) * _2974);  // [sem: expr_sat]
    _2996 = saturate(select(_2350, 1.0f, (pow(_2915, _2966))) * _2976);  // [sem: expr_sat]
    _3002 = saturate(select(_2350, 1.0f, (pow(_2891, _2966))) * _2978);  // [sem: expr_sat]
    _3005 = asint(__3__37__0__0__g_structureCounterBuffer.Load(8));
    _3006 = WaveReadLaneFirst(_3005);
    [branch]
    if (!(_3006 == 0)) {
      _3014 = (((uint)(__3__36__0__0__g_tiledManyLightsMasks.Load(int3(((int)(_99) >> 5), ((int)(_104) >> 5), 0)))).x) & 4;
      _3015 = (uint)((uint)(_3014)) >> 2;
      if (!(_3014 == 0)) {
        _3024 = _3015;
        _3025 = max((saturate(dot(float3(_2293, _2296, _2299), float3(0.212671f, 0.71516f, 0.072169f)) * 0.01f) * 0.875f), _2492);
      } else {
        _3024 = _3015;
        _3025 = _2492;
      }
    } else {
      _3024 = 0;
      _3025 = _2492;
    }
    // [sem: expr_sat]
    _3035 = saturate(max(_3025, ((_temporalReprojectionParams.w + (_environmentLightingHistory[1].w)) + _renderParams.y)));
    _3036 = (uint)((uint)(_2503)) + (uint)(1);
    half4 _3038 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_2501, _3036, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _3043 = (uint)((uint)(_2501)) + (uint)(1);
    half4 _3044 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_3043, _3036, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _3049 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_3043, _2503, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _3054 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_2501, _2503, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _3059 = dot(float4(_2984, _2990, _2996, _3002), float4(1.0f, 1.0f, 1.0f, 1.0f));
    // [sem: expr_sat]
    _3068 = saturate((1.0f / max(1.0f, _3059)) * dot(float4(_2984, _2990, _2996, _3002), float4(float(_3038.w), float(_3044.w), float(_3049.w), float(_3054.w))));
    _3073 = sqrt((_2478 * _2478) + (_2477 * _2477)) * 50.0f;
    if (_2617) {
      _3082 = saturate(1.0f - _3073);  // [sem: expr_sat]
    } else {
      _3082 = (1.0f - (saturate(_3073) * 0.5f));  // [sem: expr_sat]
    }
    _3086 = max(1.0f, (_bufferSizeAndInvSize.w * 2160.0f));
    _3089 = min(31.0f, ((_3082 * 15.0f) * _3086));
    _3090 = (_2285 == 29);
    if (_3090) {
      _3094 = min(2.0f, _3089);
    } else {
      _3094 = _3089;
    }
    _3095 = (_2285 == 24);
    _3096 = select(_3095, 1.0f, _3068);
    _3098 = (_3096 * _3096) * 4.0f;
    _3101 = __3__36__0__0__g_manyLightsMoments.SampleLevel(__3__40__0__0__g_sampler, float2(_111, _113), 0.0f);  // [sem: _3__36__0__0__g_manyLightsMoments_sampleLod]
    _3106 = saturate(_3101.w);  // [sem: expr_sat]
    _3108 = 1.0f / max(1e-06f, _3059);
    _3109 = _3108 * _2984;
    _3110 = _3108 * _2990;
    _3111 = _3108 * _2996;
    _3112 = _3108 * _3002;
    if (!((_3108 * _3059) == 0.0f)) {
      _3126 = saturate(saturate(max(_3035, (1.0f / ((saturate(_3098) * _3094) + 1.0f))) + _renderParams.z));  // [sem: expr_sat]
    } else {
      _3126 = 1.0f;  // [sem: expr_sat]
    }
    _3129 = 1.0f / _exposure4.x;
    _3144 = -0.0f - _exposure4.y;
    _3149 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (min(0.0f, (-0.0f - ((_3112 * float(_3054.x)) + ((_3111 * float(_3049.x)) + ((_3109 * float(_3038.x)) + (_3110 * float(_3044.x))))))) * _3144))));
    _3167 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (min(0.0f, (-0.0f - ((_3112 * float(_3054.y)) + ((_3111 * float(_3049.y)) + ((_3109 * float(_3038.y)) + (_3110 * float(_3044.y))))))) * _3144))));
    _3185 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (min(0.0f, (-0.0f - ((_3112 * float(_3054.z)) + ((_3111 * float(_3049.z)) + ((_3109 * float(_3038.z)) + (_3110 * float(_3044.z))))))) * _3144))));
    if (_renderParams.y == 0.0f) {
      if (_2389) {
        _3226 = saturate(_3068 + 0.0625f);  // [sem: expr_sat]
        _3227 = _3126;
        _3228 = _3185;
        _3229 = _3167;
        _3230 = _3149;
      } else {
        if (!_2390) {
          _3193 = dot(float3(_3149, _3167, _3185), float3(0.212671f, 0.71516f, 0.072169f));
          _3200 = ((min(_3193, _3101.y) / max(1e-06f, _3193)) * _3106) + saturate(1.0f - _3106);
          _3214 = (_3200 * _3185);
          _3215 = (_3200 * _3167);
          _3216 = (_3200 * _3149);
          _3217 = saturate(((_3106 * 0.5f) * saturate(((_3101.x - _3193) * 2.0f) / max(1e-06f, _3101.x))) + _3126);  // [sem: expr_sat]
        } else {
          _3214 = _3185;
          _3215 = _3167;
          _3216 = _3149;
          _3217 = _3126;  // [sem: expr_sat]
        }
        if (!_3095) {
          _3226 = saturate(_3068 + 0.0625f);  // [sem: expr_sat]
          _3227 = _3217;
          _3228 = _3214;
          _3229 = _3215;
          _3230 = _3216;
        } else {
          _3226 = 0.0f;  // [sem: expr_sat]
          _3227 = _3217;
          _3228 = _3214;
          _3229 = _3215;
          _3230 = _3216;
        }
      }
    } else {
      if (!_3095) {
        _3226 = saturate(_3068 + 0.0625f);  // [sem: expr_sat]
        _3227 = _3126;
        _3228 = _3185;
        _3229 = _3167;
        _3230 = _3149;
      } else {
        _3226 = 0.0f;  // [sem: expr_sat]
        _3227 = _3126;
        _3228 = _3185;
        _3229 = _3167;
        _3230 = _3149;
      }
    }
    _3233 = ((_2293 - _3230) * _3227) + _3230;
    _3236 = ((_2296 - _3229) * _3227) + _3229;
    _3239 = ((_2299 - _3228) * _3227) + _3228;
    __3__38__0__1__g_diffuseResultUAV[int2(_99, _104)] = float4((half)(half(_3233)), (half)(half(_3236)), (half)(half(_3239)), (half)(half(_3226)));
    _3245 = float(_2385);
    _3246 = float(_2384);
    _3247 = float(_2383);
    if (_2285 == 52) {
      _3255 = saturate(((_3246 + _3247) + _3245) * 1.2f);  // [sem: expr_sat]
    } else {
      _3255 = 1.0f;  // [sem: expr_sat]
    }
    _3256 = float(_2387);
    _3262 = (0.7f / min(max(max(max(_3245, _3246), _3247), 0.01f), 0.7f)) * _3255;
    _3266 = (((_3262 * _3245) + -0.04f) * _3256) + 0.04f;
    _3270 = (((_3262 * _3246) + -0.04f) * _3256) + 0.04f;
    _3274 = (((_3262 * _3247) + -0.04f) * _3256) + 0.04f;
    if (!_2350) {
      _3279 = saturate(1.0f - _2323);  // [sem: expr_sat]
    } else {
      _3279 = 1.0f;  // [sem: expr_sat]
    }
    if (!(_2285 == 98)) {
      if (!(_2388 == 96)) {
        if ((uint)((int)(_2285) + (int)(-105)) < (uint)2) {
          _3292 = ((int)(uint)(_185));
          _3293 = (_2285 == 107);
          _3298 = select((_3293 || (_3292 != 0)), 0.0f, _2387);
          if (!(_2345 && (((int)(_3292) | (int)((int)(uint)(_3293))) == 0))) {
            if (_2285 == 33) {
              _3337 = (uint)((_1052 * 255.0f) + 0.5f);
              _3339 = ((uint)((uint)(_3337)) >> 4) & 7;
              if (!(_3339 == 0)) {
                _3343 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_3339) + (int)(1)))];
                _3352 = false;
                _3353 = _3343.x;
                _3354 = (((float)((uint)((uint)(_3337 & 15)))) * 0.06666667f);
                _3355 = min((1.0f - _3343.y), _3343.x);
                _3356 = 33;
                _3357 = _3298;
              } else {
                _3352 = false;
                _3353 = 0.0f;
                _3354 = 0.0f;
                _3355 = 0.0f;
                _3356 = 33;
                _3357 = _3298;
              }
            } else {
              if (_2285 == 54) {
                _3308 = (uint)((_1052 * 255.0f) + 0.5f);
                if (!((_3308 & 112) == 0)) {
                  _3313 = ((uint)((uint)(_3308)) >> 4) & 7;
                  if (!(_3313 == 0)) {
                    _3317 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_3313) + (int)(1)))];
                    _3352 = false;
                    _3353 = _3317.x;
                    _3354 = (((float)((uint)((uint)(_3308 & 15)))) * 0.06666667f);
                    _3355 = min((1.0f - _3317.y), _3317.x);
                    _3356 = 54;
                    _3357 = _3298;
                  } else {
                    _3352 = false;
                    _3353 = 0.0f;
                    _3354 = 0.0f;
                    _3355 = 0.0f;
                    _3356 = 54;
                    _3357 = _3298;
                  }
                } else {
                  _3352 = false;
                  _3353 = 0.0f;
                  _3354 = 0.0f;
                  _3355 = 0.0f;
                  _3356 = 52;
                  _3357 = _3298;
                }
              } else {
                if (_2285 == 55) {
                  _3352 = false;
                  _3353 = 0.0f;
                  _3354 = 0.0f;
                  _3355 = 0.0f;
                  _3356 = select(((((int)((uint)((_1052 * 255.0f) + 0.5f))) & 127) == 0), 52, 55);
                  _3357 = _3298;
                } else {
                  _3352 = false;
                  _3353 = 0.0f;
                  _3354 = 0.0f;
                  _3355 = 0.0f;
                  _3356 = _2285;
                  _3357 = _3298;
                }
              }
            }
          } else {
            _3352 = false;
            _3353 = 0.0f;
            _3354 = 0.0f;
            _3355 = 0.0f;
            _3356 = 65;
            _3357 = 0.0h;
          }
        } else {
          if (!((uint)((int)(_2285) + (int)(-11)) < (uint)9)) {
            _3292 = 0;
            _3293 = (_2285 == 107);
            _3298 = select((_3293 || (_3292 != 0)), 0.0f, _2387);
            if (!(_2345 && (((int)(_3292) | (int)((int)(uint)(_3293))) == 0))) {
              if (_2285 == 33) {
                _3337 = (uint)((_1052 * 255.0f) + 0.5f);
                _3339 = ((uint)((uint)(_3337)) >> 4) & 7;
                if (!(_3339 == 0)) {
                  _3343 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_3339) + (int)(1)))];
                  _3352 = false;
                  _3353 = _3343.x;
                  _3354 = (((float)((uint)((uint)(_3337 & 15)))) * 0.06666667f);
                  _3355 = min((1.0f - _3343.y), _3343.x);
                  _3356 = 33;
                  _3357 = _3298;
                } else {
                  _3352 = false;
                  _3353 = 0.0f;
                  _3354 = 0.0f;
                  _3355 = 0.0f;
                  _3356 = 33;
                  _3357 = _3298;
                }
              } else {
                if (_2285 == 54) {
                  _3308 = (uint)((_1052 * 255.0f) + 0.5f);
                  if (!((_3308 & 112) == 0)) {
                    _3313 = ((uint)((uint)(_3308)) >> 4) & 7;
                    if (!(_3313 == 0)) {
                      _3317 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_3313) + (int)(1)))];
                      _3352 = false;
                      _3353 = _3317.x;
                      _3354 = (((float)((uint)((uint)(_3308 & 15)))) * 0.06666667f);
                      _3355 = min((1.0f - _3317.y), _3317.x);
                      _3356 = 54;
                      _3357 = _3298;
                    } else {
                      _3352 = false;
                      _3353 = 0.0f;
                      _3354 = 0.0f;
                      _3355 = 0.0f;
                      _3356 = 54;
                      _3357 = _3298;
                    }
                  } else {
                    _3352 = false;
                    _3353 = 0.0f;
                    _3354 = 0.0f;
                    _3355 = 0.0f;
                    _3356 = 52;
                    _3357 = _3298;
                  }
                } else {
                  if (_2285 == 55) {
                    _3352 = false;
                    _3353 = 0.0f;
                    _3354 = 0.0f;
                    _3355 = 0.0f;
                    _3356 = select(((((int)((uint)((_1052 * 255.0f) + 0.5f))) & 127) == 0), 52, 55);
                    _3357 = _3298;
                  } else {
                    _3352 = false;
                    _3353 = 0.0f;
                    _3354 = 0.0f;
                    _3355 = 0.0f;
                    _3356 = _2285;
                    _3357 = _3298;
                  }
                }
              }
            } else {
              _3352 = false;
              _3353 = 0.0f;
              _3354 = 0.0f;
              _3355 = 0.0f;
              _3356 = 65;
              _3357 = 0.0h;
            }
          } else {
            _3352 = false;
            _3353 = 0.0f;
            _3354 = 0.0f;
            _3355 = 0.0f;
            _3356 = _2285;
            _3357 = 0.0h;
          }
        }
      } else {
        _3352 = true;
        _3353 = 0.0f;
        _3354 = 0.0f;
        _3355 = 0.0f;
        _3356 = _2285;
        _3357 = 0.0h;
      }
    } else {
      _3352 = true;
      _3353 = 0.0f;
      _3354 = 0.0f;
      _3355 = 0.0f;
      _3356 = 98;
      _3357 = 0.0h;
    }
    _3359 = dot(float3(_1031, _1032, _1033), float3(_636, _637, _638)) * 2.0f;
    _3361 = _1031 - (_3359 * _636);
    _3363 = _1032 - (_3359 * _637);
    _3365 = _1033 - (_3359 * _638);
    _3370 = dot(float3(_1031, _1032, _1033), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
    _3373 = (_1028 * _1028) + (_1010 * _1010);
    _3376 = sqrt(_3373 + (_1019 * _1019));
    _3383 = sqrt(max(0.0f, (dot(float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z)) - (_3370 * _3370)))) / (_3376 + 5.0f);
    _3384 = float(_2386);
    if ((_2386 < 0.099975586h) && (_3383 < 0.125f)) {
      _3397 = select((_3384 < 0.8f), ((__3__36__0__0__g_specularRayHitDistance.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_111, _113), 0.0f)).x), 0.0f) * rsqrt(dot(float3(_3361, _3363, _3365), float3(_3361, _3363, _3365)));
      _3398 = _3397 * _3361;
      _3399 = _3397 * _3363;
      _3400 = _3397 * _3365;
      _3405 = dot(float3(_3398, _3399, _3400), float3((-0.0f - _636), (-0.0f - _637), (-0.0f - _638))) * 2.0f;
      _3408 = (_3398 + _1010) + (_3405 * _636);
      _3411 = (_3399 + _1019) + (_3405 * _637);
      _3414 = (_3400 + _1028) + (_3405 * _638);
      _3426 = (_viewProjRelative[0].w) + mad((_viewProjRelative[0].z), _3414, mad((_viewProjRelative[0].y), _3411, (_3408 * (_viewProjRelative[0].x))));
      _3434 = mad((_viewProjRelative[1].z), _3414, mad((_viewProjRelative[1].y), _3411, (_3408 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w);
      _3442 = mad((_viewProjRelative[2].z), _3414, mad((_viewProjRelative[2].y), _3411, (_3408 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w);
      _3450 = mad((_viewProjRelative[3].z), _3414, mad((_viewProjRelative[3].y), _3411, (_3408 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _3462 = mad((_projToPrevProj[3].w), _3450, mad((_projToPrevProj[3].z), _3442, mad((_projToPrevProj[3].y), _3434, ((_projToPrevProj[3].x) * _3426))));
      _3474 = ((mad((_projToPrevProj[0].w), _3450, mad((_projToPrevProj[0].z), _3442, mad((_projToPrevProj[0].y), _3434, ((_projToPrevProj[0].x) * _3426)))) / _3462) - (_3426 / _3450)) - _2478;
      _3486 = ((mad((_projToPrevProj[1].w), _3450, mad((_projToPrevProj[1].z), _3442, mad((_projToPrevProj[1].y), _3434, ((_projToPrevProj[1].x) * _3426)))) / _3462) - (_3434 / _3450)) - _2477;
      _3494 = max(_3383, saturate(sqrt((_3486 * _3486) + (_3474 * _3474))));
    } else {
      _3494 = _3383;
    }
    _3495 = _3356 & -2;
    _3496 = (_3356 == 29);
    if (!((_2350 || _3496) || (_3495 == 24))) {
      _3516 = (_renderParams.y > 0.0f);
    } else {
      _3516 = true;
    }
    _3517 = select(_3516, 1.0f, ((((float(_2304.y) * _900) + (float(_2301.y) * _897)) + (float(_2307.y) * _903)) + (float(_2310.y) * _906)));
    _3518 = float(_3357);
    _3523 = min(max((_cavityParams.y + -1.0f), 0.0f), 2.0f);
    // [sem: expr_sat]
    _3549 = saturate(((((-0.05f - (_3523 * 0.075f)) + max(0.02f, _3384)) + (saturate(_124 * 0.025f) * 0.1f)) * min(max((_124 + 1.0f), 5.0f), 50.0f)) * (1.0f - (saturate(_3518) * 0.75f))) * saturate(saturate(1.0f - (((_3518 * _124) / max(0.001f, _2400)) * 0.001f)) * 1.25f);
    if (_3356 == 64) {
      _3558 = ((saturate(_124 * 0.25f) * (_3549 + -0.39990234f)) + 0.39990234f);
    } else {
      _3558 = _3549;
    }
    _3560 = (_3523 * 16.0f) + 16.0f;
    _3566 = select((_3523 > 1.0f), 0.0f, saturate((1.0f / _3560) * (_124 - _3560)));
    if (!(_3356 == 105)) {
      if (!((uint)(_3356 & 24) > (uint)23)) {
        _3580 = select((_3356 == 65), 0.0f, select((_3356 == 107), 1.0f, ((_3566 + _3558) - (_3566 * _3558))));
      } else {
        _3580 = 0.0f;
      }
    } else {
      _3580 = 1.0f;
    }
    _3587 = saturate(select((_lightingParams.y == 0.0f), 1.0f, (1.0f - _3580))) * _3494;
    _3589 = max(0.099975586h, _2386);
    if ((uint)_3356 > (uint)51) {
      if ((uint)_3356 < (uint)68) {
        if (_3356 == 66) {
          _3607 = (half)(max(0.89990234h, _2386));
        } else {
          if ((_3356 == 53) || (_3495 == 66)) {
            _3607 = (half)(max(0.89990234h, _2386));
          } else {
            _3607 = _3589;
          }
        }
      } else {
        _3607 = _3589;
      }
    } else {
      if (_3495 == 66) {
        _3607 = (half)(max(0.89990234h, _2386));
      } else {
        _3607 = _3589;
      }
    }
    _3608 = float(_3607);
    _3609 = _3608 * _3608;
    _3610 = _3609 * _3609;
    _3614 = (((_3610 * _2939) - _2939) * _2939) + 1.0f;
    _3618 = (((_3610 * _2963) - _2963) * _2963) + 1.0f;
    _3622 = (((_3610 * _2915) - _2915) * _2915) + 1.0f;
    _3626 = (((_3610 * _2891) - _2891) * _2891) + 1.0f;
    _3646 = (((((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_2501, _3036, 0))).x) * saturate(_2972)) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_3043, _3036, 0))).x) * saturate(_2974))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_3043, _2503, 0))).x) * saturate(_2976))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_2501, _2503, 0))).x) * saturate(_2978));
    _3653 = saturate(select(_3496, 1.0f, saturate((_3610 / (_3614 * _3614)) * _2939)) * _2972);  // [sem: expr_sat]
    _3660 = saturate(select(_3496, 1.0f, saturate((_3610 / (_3618 * _3618)) * _2963)) * _2974);  // [sem: expr_sat]
    _3667 = saturate(select(_3496, 1.0f, saturate((_3610 / (_3622 * _3622)) * _2915)) * _2976);  // [sem: expr_sat]
    _3674 = saturate(select(_3496, 1.0f, saturate((_3610 / (_3626 * _3626)) * _2891)) * _2978);  // [sem: expr_sat]
    _3684 = exp2(log2(saturate(max(float(((half)(((half)(1.0h - _2386)) * 0.75h)) * _3357), (1.0f - _2400)))) * 0.1f);
    _3687 = float(((half)(_2386 * _2386)) + 1.0009766h);
    _3703 = select(_3496, 1.0f, saturate(((_3086 * _3086) * _3098) * exp2((log2(float(_3589)) * 0.5f) * (((_3587 * 15.0f) * ((_3684 + _3687) / (_3687 - _3684))) + 1.0f))));
    if ((uint)((int)((uint)((uint)(_3356)) + (uint)(-12))) < (uint)9) {
      _3713 = ((saturate(_124 * 0.005f) * (_3703 + -1.0f)) + 1.0f);
    } else {
      _3713 = _3703;
    }
    _3725 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), _115.x, mad((_projToPrevProj[3].y), _989, ((_projToPrevProj[3].x) * _987)));
    _3735 = ((mad((_projToPrevProj[0].z), _115.x, mad((_projToPrevProj[0].y), _989, ((_projToPrevProj[0].x) * _987))) + (_projToPrevProj[0].w)) / _3725) - _987;
    _3745 = ((mad((_projToPrevProj[1].z), _115.x, mad((_projToPrevProj[1].y), _989, ((_projToPrevProj[1].x) * _987))) + (_projToPrevProj[1].w)) / _3725) - _989;
    _3746 = _2478 - _3735;
    _3747 = _2477 - _3745;
    if ((_2425 != 0) || ((uint)((int)((uint)((uint)(_3356)) + (uint)(-52))) < (uint)16)) {
      _3762 = (31.0f - (saturate(sqrt((_3747 * _3747) + (_3746 * _3746)) * 500.0f) * 24.0f));
    } else {
      _3762 = 63.0f;
    }
    if (_renderParams.z > 0.0f) {
      _3771 = saturate((_3587 * 200.0f) + 0.125f);  // [sem: expr_sat]
    } else {
      _3771 = 0.0f;  // [sem: expr_sat]
    }
    _3780 = max(max(saturate(_3035), saturate(max(0.0f, (1.0f / (((_3713 * _3646) * _3762) + 1.0f))))), _3771);
    _3782 = ((uint)(_3356 & 24) > (uint)23);
    [branch]
    if (_3782) {
      _3789 = (_bufferSizeAndInvSize.x * ((_3735 * 0.5f) + _111)) + -0.5f;
      _3794 = (_bufferSizeAndInvSize.y * (_113 - (_3745 * 0.5f))) + -0.5f;
      _3796 = (int)(floor(_3789));
      _3798 = (int)(floor(_3794));
      _3799 = (float)((int)(_3796));
      _3800 = (float)((int)(_3798));
      [branch]
      if (_3496) {
        // [sem: _3__36__0__0__g_stencilPrev_gather]
        _3810 = __3__36__0__0__g_stencilPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(((_3799 + 0.5f) * _bufferSizeAndInvSize.z), ((_3800 + 0.5f) * _bufferSizeAndInvSize.w)));
        _3817 = mad(_3810.w, 16777216, mad(_3810.z, 65536, mad(_3810.y, 256, _3810.x)));
        _3822 = saturate(((float)((bool)((uint)(_3817 & 24) > (uint)23))) * _3653);  // [sem: expr_sat]
        _3827 = saturate(((float)((bool)((uint)(_3817 & 6144) > (uint)5888))) * _3660);  // [sem: expr_sat]
        _3832 = saturate(((float)((bool)((uint)(_3817 & 1572864) > (uint)1507328))) * _3667);  // [sem: expr_sat]
        _3837 = saturate(((float)((bool)((uint)(_3817 & 402653184) > (uint)385875968))) * _3674);  // [sem: expr_sat]
        _3869 = _3837;
        _3870 = _3832;
        _3871 = _3827;
        _3872 = _3822;
        _3873 = _3798;
        _3874 = _3796;
        _3875 = max(saturate(min(max(((_2381 / ((_598 * 0.005f) + 1.0f)) + (_3587 * 500.0f)), 0.03125f), 0.5f) + _3780), saturate(1.0f - dot(float4(_3822, _3827, _3832, _3837), float4(1.0f, 1.0f, 1.0f, 1.0f))));
      } else {
        _3852 = _3789 - _3799;
        _3853 = _3794 - _3800;
        _3854 = 1.0f - _3852;
        _3855 = 1.0f - _3853;
        _3869 = (_3855 * _3854);
        _3870 = (_3855 * _3852);
        _3871 = (_3853 * _3852);
        _3872 = (_3854 * _3853);
        _3873 = _3798;
        _3874 = _3796;
        _3875 = (saturate((sqrt((_3745 * _3745) + (_3735 * _3735)) * 50.0f) + 0.125f) * 0.875f);
      }
    } else {
      _3869 = _3674;
      _3870 = _3667;
      _3871 = _3660;
      _3872 = _3653;
      _3873 = _2503;
      _3874 = _2501;
      _3875 = _3780;
    }
    _3876 = (_3518 > 0.2f);
    _3877 = (uint)((uint)(_3873)) + (uint)(1);
    half4 _3879 = __3__36__0__0__g_specularResultPrev.Load(int3(_3874, _3877, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3888 = ((float)((bool)(!(_3876 ^ ((half)(_3879.w) < 0.0h))))) * _3872;
    _3889 = (uint)((uint)(_3874)) + (uint)(1);
    half4 _3890 = __3__36__0__0__g_specularResultPrev.Load(int3(_3889, _3877, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3899 = ((float)((bool)(!(_3876 ^ ((half)(_3890.w) < 0.0h))))) * _3871;
    half4 _3900 = __3__36__0__0__g_specularResultPrev.Load(int3(_3889, _3873, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3909 = ((float)((bool)(!(_3876 ^ ((half)(_3900.w) < 0.0h))))) * _3870;
    half4 _3910 = __3__36__0__0__g_specularResultPrev.Load(int3(_3874, _3873, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3919 = ((float)((bool)(!(_3876 ^ ((half)(_3910.w) < 0.0h))))) * _3869;
    _3926 = 1.0f / max(((saturate(_124 * 0.0625f) * 0.000999f) + 1e-06f), dot(float4(_3888, _3899, _3909, _3919), float4(1.0f, 1.0f, 1.0f, 1.0f)));
    _3940 = -0.0f - _3926;
    _3941 = min(0.0f, (-0.0f - ((((_3888 * float(_3879.x)) + (_3899 * float(_3890.x))) + (_3909 * float(_3900.x))) + (_3919 * float(_3910.x))))) * _3940;
    _3955 = min(0.0f, (-0.0f - ((((_3888 * float(_3879.y)) + (_3899 * float(_3890.y))) + (_3909 * float(_3900.y))) + (_3919 * float(_3910.y))))) * _3940;
    _3969 = min(0.0f, (-0.0f - ((((_3888 * float(_3879.z)) + (_3899 * float(_3890.z))) + (_3909 * float(_3900.z))) + (_3919 * float(_3910.z))))) * _3940;
    _3987 = min(0.0f, (-0.0f - ((((abs(float(_3879.w)) * _3888) + (abs(float(_3890.w)) * _3899)) + (abs(float(_3900.w)) * _3909)) + (abs(float(_3910.w)) * _3919)))) * _3926;
    if (((_3356 != 53) && (_3495 != 66)) && (_renderParams.y == 0.0f)) {
      _3995 = dot(float3(_3941, _3955, _3969), float3(0.212671f, 0.71516f, 0.072169f));
      _4002 = ((min(_3995, _3101.z) / max(1e-09f, _3995)) * _3106) + saturate(1.0f - _3106);
      _4023 = (_4002 * _3969);
      _4024 = (_4002 * _3955);
      _4025 = (_4002 * _3941);
      // [sem: expr_sat]
      _4026 = saturate(((_3106 * 0.5f) * saturate((((_3384 * 1000.0f) * _3587) * ((float(1.0h / ((half)(8.0h - ((half)(_2386 * 7.0h))))) * _3101.z) - _3995)) / max(1e-06f, _3101.z))) + _3875);
    } else {
      _4023 = _3969;
      _4024 = _3955;
      _4025 = _3941;
      _4026 = _3875;  // [sem: expr_sat]
    }
    _4029 = _exposure4.y * _4025;
    _4030 = _exposure4.y * _4024;
    _4031 = _exposure4.y * _4023;
    _4035 = ((max(0.001f, _3279) + _3987) * _4026) - _3987;
    _4050 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_3517 * ((((_964.x * _900) + (_960.x * _897)) + (_968.x * _903)) + (_972.x * _906))) - _4029) * _4026) + _4029))));
    _4065 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_3517 * ((((_964.y * _900) + (_960.y * _897)) + (_968.y * _903)) + (_972.y * _906))) - _4030) * _4026) + _4030))));
    _4080 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_3517 * ((((_964.z * _900) + (_960.z * _897)) + (_968.z * _903)) + (_972.z * _906))) - _4031) * _4026) + _4031))));
    __3__38__0__1__g_specularResultUAV[int2(_99, _104)] = float4((half)(half(_4050)), (half)(half(_4065)), (half)(half(_4080)), (half)(half(select(_3876, (-0.0f - _4035), _4035))));
    __3__38__0__1__g_specularSampleCountUAV[int2(_99, _104)] = saturate((_3646 * 0.984375f) + 0.015625f);
    _4092 = select(_3782, 0.0f, _4035);
    _4097 = float(half(lerp(_4092, 1.0f, _3384)));
    _4098 = (_3495 == 64);
    _4100 = ((int)(uint)(_186)) ^ 1;
    if ((((int)(uint)(_4098)) & _4100) == 0) {
      _4117 = saturate(exp2((_4097 * _4097) * (_124 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _4117 = select((_cavityParams.z > 0.0f), select(_186, 0.0f, _1053), 1.0f);  // [sem: expr_sat]
    }
    _4120 = (_cavityParams.x == 0.0f);
    _4121 = select(_4120, 1.0f, _4117);
    if (_4098) {
      _4127 = (_4121 * _3274);
      _4128 = (_4121 * _3270);
      _4129 = (_4121 * _3266);
    } else {
      _4127 = _3274;
      _4128 = _3270;
      _4129 = _3266;
    }
    _4130 = _3245 * 0.875f;
    _4131 = _3246 * 0.875f;
    _4132 = _3247 * 0.875f;
    if (!(_3356 == 37)) {
      _4135 = (_3356 == 55);
      _4136 = select(_4135, _4130, _4129);
      _4137 = select(_4135, _4131, _4128);
      _4138 = select(_4135, _4132, _4127);
      if ((_3356 == 53) || (_3495 == 66)) {
        // [sem: _3__36__0__0__g_hairBrdfLookup_sampleLod]
        _4153 = __3__36__0__0__g_hairBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, (1.0f - saturate(abs(dot(float3(_2288, _2287, _2286), float3(_1031, _1032, _1033)))))), (1.0f - max(0.75f, (_4097 * 2.0f)))), 0.0f);
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _4159 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _2400), (1.0f - _4097)), 0.0f);
        _4164 = ((_4159.x - _4153.x) * _2290) + _4153.x;
        _4167 = ((_4159.y - _4153.y) * _2290) + _4153.y;
        _4169 = (_4164 * 0.01f) + _4167;
        _4373 = _4169;
        _4374 = _4169;
        _4375 = _4169;
        _4376 = _4167;
        _4377 = _4164;
      } else {
        if ((uint)((int)((uint)((uint)(_3356)) + (uint)(-97))) < (uint)2) {
          if (!(abs(_233) > 0.99f)) {
            _4177 = -0.0f - _234;
            _4179 = rsqrt(dot(float3(_4177, 0.0f, _232), float3(_4177, 0.0f, _232)));  // [sem: invLength]
            _4183 = (_4179 * _232);
            _4184 = (_4179 * _4177);
          } else {
            _4183 = 0.0f;
            _4184 = 1.0f;
          }
          _4186 = -0.0f - (_233 * _4183);
          _4189 = (_4183 * _232) - (_4184 * _234);
          _4190 = _4184 * _233;
          _4192 = rsqrt(dot(float3(_4186, _4189, _4190), float3(_4186, _4189, _4190)));  // [sem: invLength]
          _4195 = _viewPos.x + _1010;
          _4197 = _viewPos.y + _1019;
          _4199 = _viewPos.z + _1028;
          // [sem: _3__36__0__0__g_blueNoise_sampleLod]
          _4207 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_4184, 0.0f, _4183), float3(_4195, _4197, _4199)), dot(float3((_4192 * _4186), (_4189 * _4192), (_4192 * _4190)), float3(_4195, _4197, _4199))), 0.0f);
          _4211 = _4207.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _4212 = _4207.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _4213 = _4207.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _4215 = rsqrt(dot(float3(_4211, _4212, _4213), float3(_4211, _4212, _4213)));  // [sem: invLength]
          _4217 = (_4211 * _4215) + _636;
          _4219 = (_4212 * _4215) + _637;
          _4221 = (_4213 * _4215) + _638;
          _4223 = rsqrt(dot(float3(_4217, _4219, _4221), float3(_4217, _4219, _4221)));  // [sem: invLength]
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _4228 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _2400), (1.0f - _4097)), 0.0f);
          _4240 = (exp2(log2(saturate(dot(float3(_2392, _2393, _2394), float3((_4217 * _4223), (_4219 * _4223), (_4221 * _4223))))) * 512.0f) * 20.0f) + _4228.y;
          _4373 = (_4240 + (_4228.x * _4138));
          _4374 = (_4240 + (_4228.x * _4137));
          _4375 = (_4240 + (_4228.x * _4136));
          _4376 = _4228.y;
          _4377 = _4228.x;
        } else {
          if (_4098) {
            _4250 = min(0.99f, _2400);
            if (_3356 == 65) {
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _4255 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_4250, (1.0f - _4097)), 0.0f);
              _4373 = ((_4255.x * _4138) + _4255.y);
              _4374 = ((_4255.x * _4137) + _4255.y);
              _4375 = ((_4255.x * _4136) + _4255.y);
              _4376 = _4255.y;
              _4377 = _4255.x;
            } else {
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _4268 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_4250, saturate(1.0f - (_4097 * 1.33f))), 0.0f);
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _4274 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_4250, saturate(1.0f - (_4097 * 0.47998047f))), 0.0f);
              _4278 = (_4274.x + _4268.x) * 0.5f;
              _4280 = (_4274.y + _4268.y) * 0.5f;
              _4373 = ((_4278 * _4138) + _4280);
              _4374 = ((_4278 * _4137) + _4280);
              _4375 = ((_4278 * _4136) + _4280);
              _4376 = _4280;
              _4377 = _4278;
            }
          } else {
            if ((_3356 == 33) || (_3356 == 54)) {
              _4293 = max(dot(float3(_3245, _3246, _3247), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
              _4307 = (saturate(1.0f - (pow(_2400, 4.0f))) * (_3353 - _3355)) + _3355;
              _4318 = (((_4307 * (sqrt(_3247) - _4293)) + _4293) * _3354);
              _4319 = (((_4307 * (sqrt(_3246) - _4293)) + _4293) * _3354);
              _4320 = (((_4307 * (sqrt(_3245) - _4293)) + _4293) * _3354);
            } else {
              _4318 = _4138;
              _4319 = _4137;
              _4320 = _4136;
            }
            // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
            _4325 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _2400), (1.0f - _4097)), 0.0f);
            _4373 = ((_4325.x * _4318) + _4325.y);
            _4374 = ((_4325.x * _4319) + _4325.y);
            _4375 = ((_4325.x * _4320) + _4325.y);
            _4376 = _4325.y;
            _4377 = _4325.x;
          }
        }
      }
    } else {
      _4335 = min(0.99f, _2400);
      if (_4098) {
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _4342 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_4335, saturate(1.0f - (_4097 * 1.33f))), 0.0f);
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _4348 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_4335, saturate(1.0f - (_4097 * 0.47998047f))), 0.0f);
        _4352 = (_4348.x + _4342.x) * 0.5f;
        _4354 = (_4348.y + _4342.y) * 0.5f;
        _4373 = ((_4352 * _4132) + _4354);
        _4374 = ((_4352 * _4131) + _4354);
        _4375 = ((_4352 * _4130) + _4354);
        _4376 = _4354;
        _4377 = _4352;
      } else {
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _4363 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_4335, (1.0f - _4097)), 0.0f);
        _4373 = ((_4363.x * _4132) + _4363.y);
        _4374 = ((_4363.x * _4131) + _4363.y);
        _4375 = ((_4363.x * _4130) + _4363.y);
        _4376 = _4363.y;
        _4377 = _4363.x;
      }
    }
    _4380 = select((_4098 || _3782), 1.0f, _4121) * _3129;
    _4381 = _3233 * _3129;
    _4382 = _3236 * _3129;
    _4383 = _3239 * _3129;
    if (_2617 || _2350) {
      if (_2391) {
        _4657 = (_4383 * _2279);
        _4658 = (_4382 * _2280);
        _4659 = (_4381 * _2281);
        _4660 = 0.0f;
        _4661 = 0.0f;
        _4662 = 0.0f;
        _4663 = _2387;
        _4664 = _2386;
        _4665 = _2383;
        _4666 = _2384;
        _4667 = _2385;
        _4668 = _4092;
      } else {
        _4657 = 0.0f;
        _4658 = 0.0f;
        _4659 = 0.0f;
        _4660 = _4383;
        _4661 = _4382;
        _4662 = _4381;
        _4663 = _2387;
        _4664 = _2386;
        _4665 = _2383;
        _4666 = _2384;
        _4667 = _2385;
        _4668 = _4092;
      }
    } else {
      if (!((_2285 == 26) || ((_2285 == 105) || (((uint)((int)(_2285) + (int)(-27)) < (uint)2) || ((_2285 == 6) || (_2388 == 106)))))) {
        if (!(_2285 == 7)) {
          _4409 = exp2((saturate(_124 * 0.03125f) + 1.0f) * log2(_4092));
          // [sem: _3__36__0__0__g_puddleMask_sampleLod]
          _4412 = __3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_111, _113), 0.0f);
          if (((_2285 & -4) == 16) || ((_2285 == 15) || (_2388 == 12))) {
            _4433 = 1;
            _4434 = 0;
            if (_4412.w < 1.0f) {
              if ((_weatherCheckFlag & 5) == 5) {
                _4442 = (_2285 == 36);
                if (!_4442) {
                  // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                  _4469 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _1010) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _1028) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                  _4475 = _4469.w;
                  _4476 = _4469.z;
                  _4477 = _4469.y;
                  _4478 = _4469.x;
                } else {
                  _4475 = 0.5f;
                  _4476 = 0.1f;
                  _4477 = 0.12f;
                  _4478 = 0.12f;
                }
                _4488 = 1.0f - saturate(((_viewPos.y + _1019) - _paramGlobalSand.x) / _paramGlobalSand.y);
                if (!(_4488 <= 0.0f)) {
                  _4491 = saturate(_4409);  // [sem: _4409_sat]
                  _4496 = ((_4477 * 0.33951f) + (_4476 * 0.04737f)) + (_4478 * 0.61312f);
                  _4501 = ((_4477 * 0.91636f) + (_4476 * 0.01345f)) + (_4478 * 0.0702f);
                  _4506 = ((_4477 * 0.10958f) + (_4476 * 0.8698f)) + (_4478 * 0.02062f);
                  _4512 = select((_4433 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_636, _637, _638), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                  if (_enableSandAO == 1) {
                    _4518 = (1.0f - _4412.x) * 10.0f;
                    if (_4442) {
                      _4550 = saturate(((_4488 * _4475) * _4518) * _4491);  // [sem: _4546_sat]
                      _4551 = _4506;
                      _4552 = _4501;
                      _4553 = _4496;
                    } else {
                      _4526 = saturate(_4475 + -0.5f);  // [sem: expr_sat]
                      // [sem: _4546_sat]
                      _4550 = ((((_4491 * _4518) * saturate((0.5f - _4475) * 2.0f)) + ((_4526 * 2.0f) * max((_4512 * _4412.x), min((_4491 * ((_4412.x * 7.0f) + 3.0f)), (_4526 * 40.0f))))) * _4488);
                      _4551 = _4506;
                      _4552 = _4501;
                      _4553 = _4496;
                    }
                  } else {
                    _4546 = ((_4488 * _4475) * _4412.x) * _4512;
                    if (_4442) {
                      _4550 = saturate(_4546);  // [sem: _4546_sat]
                      _4551 = _4506;
                      _4552 = _4501;
                      _4553 = _4496;
                    } else {
                      _4550 = _4546;  // [sem: _4546_sat]
                      _4551 = _4506;
                      _4552 = _4501;
                      _4553 = _4496;
                    }
                  }
                } else {
                  _4550 = 0.0f;  // [sem: _4546_sat]
                  _4551 = 0.0f;
                  _4552 = 0.0f;
                  _4553 = 0.0f;
                }
                _4557 = ((1.0f - _4412.w) * (1.0f - _4412.y)) * _4550;
                if (_4557 > 0.0001f) {
                  _4560 = (_4433 == 0);
                  if (_4560) {
                    _4583 = ((_4551 - _3247) * _4557);
                    _4584 = ((_4552 - _3246) * _4557);
                    _4585 = ((_4553 - _3245) * _4557);
                  } else {
                    _4562 = saturate(_4557);  // [sem: _4557_sat]
                    _4583 = ((sqrt(_4551 * _3247) - _3247) * _4562);
                    _4584 = ((sqrt(_4552 * _3246) - _3246) * _4562);
                    _4585 = ((sqrt(_4553 * _3245) - _3245) * _4562);
                  }
                  _4586 = _3245 + _4585;
                  _4587 = _3246 + _4584;
                  _4588 = _4583 + _3247;
                  if (_4442) {
                    if (_4560) {
                      _4602 = _4586;
                      _4603 = _4587;
                      _4604 = _4588;
                      _4605 = ((_4557 * (0.25f - _3384)) + _3384);
                    } else {
                      _4602 = _4586;
                      _4603 = _4587;
                      _4604 = _4588;
                      _4605 = (((sqrt(_3384 * 0.25f) - _3384) * saturate(_4557)) + _3384);
                    }
                  } else {
                    _4602 = _4586;
                    _4603 = _4587;
                    _4604 = _4588;
                    _4605 = _3384;
                  }
                } else {
                  _4602 = _3245;
                  _4603 = _3246;
                  _4604 = _3247;
                  _4605 = _3384;
                }
                _4606 = saturate(_4602);  // [sem: _4602_sat]
                _4607 = saturate(_4603);  // [sem: _4603_sat]
                _4608 = saturate(_4604);  // [sem: _4604_sat]
                _4611 = (_4605 * (1.0f - _4409)) + _4409;
                _4614 = ((_4605 - _4611) * _4412.y) + _4611;
                _4622 = (((_4409 * _4409) * _4412.z) * ((float)((bool)(_4434 != 0)))) * saturate(dot(float3(_636, _637, _638), float3(0.0f, 1.0f, 0.0f)));
                _4623 = _4622 * -0.5f;
                _4635 = ((_4623 * _4608) + _4608);
                _4636 = ((_4623 * _4607) + _4607);
                _4637 = ((_4623 * _4606) + _4606);
                _4638 = (_4614 - (_4622 * _4614));
                _4639 = (_3256 - (_4409 * _3256));
              } else {
                _4635 = _3247;
                _4636 = _3246;
                _4637 = _3245;
                _4638 = _3384;
                _4639 = _3256;
              }
            } else {
              _4635 = _3247;
              _4636 = _3246;
              _4637 = _3245;
              _4638 = _3384;
              _4639 = _3256;
            }
          } else {
            if ((uint)_2285 > (uint)10) {
              if ((uint)_2285 < (uint)20) {
                _4433 = 0;
                _4434 = 0;
                if (_4412.w < 1.0f) {
                  if ((_weatherCheckFlag & 5) == 5) {
                    _4442 = (_2285 == 36);
                    if (!_4442) {
                      // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                      _4469 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _1010) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _1028) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                      _4475 = _4469.w;
                      _4476 = _4469.z;
                      _4477 = _4469.y;
                      _4478 = _4469.x;
                    } else {
                      _4475 = 0.5f;
                      _4476 = 0.1f;
                      _4477 = 0.12f;
                      _4478 = 0.12f;
                    }
                    _4488 = 1.0f - saturate(((_viewPos.y + _1019) - _paramGlobalSand.x) / _paramGlobalSand.y);
                    if (!(_4488 <= 0.0f)) {
                      _4491 = saturate(_4409);  // [sem: _4409_sat]
                      _4496 = ((_4477 * 0.33951f) + (_4476 * 0.04737f)) + (_4478 * 0.61312f);
                      _4501 = ((_4477 * 0.91636f) + (_4476 * 0.01345f)) + (_4478 * 0.0702f);
                      _4506 = ((_4477 * 0.10958f) + (_4476 * 0.8698f)) + (_4478 * 0.02062f);
                      _4512 = select((_4433 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_636, _637, _638), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                      if (_enableSandAO == 1) {
                        _4518 = (1.0f - _4412.x) * 10.0f;
                        if (_4442) {
                          _4550 = saturate(((_4488 * _4475) * _4518) * _4491);  // [sem: _4546_sat]
                          _4551 = _4506;
                          _4552 = _4501;
                          _4553 = _4496;
                        } else {
                          _4526 = saturate(_4475 + -0.5f);  // [sem: expr_sat]
                          // [sem: _4546_sat]
                          _4550 = ((((_4491 * _4518) * saturate((0.5f - _4475) * 2.0f)) + ((_4526 * 2.0f) * max((_4512 * _4412.x), min((_4491 * ((_4412.x * 7.0f) + 3.0f)), (_4526 * 40.0f))))) * _4488);
                          _4551 = _4506;
                          _4552 = _4501;
                          _4553 = _4496;
                        }
                      } else {
                        _4546 = ((_4488 * _4475) * _4412.x) * _4512;
                        if (_4442) {
                          _4550 = saturate(_4546);  // [sem: _4546_sat]
                          _4551 = _4506;
                          _4552 = _4501;
                          _4553 = _4496;
                        } else {
                          _4550 = _4546;  // [sem: _4546_sat]
                          _4551 = _4506;
                          _4552 = _4501;
                          _4553 = _4496;
                        }
                      }
                    } else {
                      _4550 = 0.0f;  // [sem: _4546_sat]
                      _4551 = 0.0f;
                      _4552 = 0.0f;
                      _4553 = 0.0f;
                    }
                    _4557 = ((1.0f - _4412.w) * (1.0f - _4412.y)) * _4550;
                    if (_4557 > 0.0001f) {
                      _4560 = (_4433 == 0);
                      if (_4560) {
                        _4583 = ((_4551 - _3247) * _4557);
                        _4584 = ((_4552 - _3246) * _4557);
                        _4585 = ((_4553 - _3245) * _4557);
                      } else {
                        _4562 = saturate(_4557);  // [sem: _4557_sat]
                        _4583 = ((sqrt(_4551 * _3247) - _3247) * _4562);
                        _4584 = ((sqrt(_4552 * _3246) - _3246) * _4562);
                        _4585 = ((sqrt(_4553 * _3245) - _3245) * _4562);
                      }
                      _4586 = _3245 + _4585;
                      _4587 = _3246 + _4584;
                      _4588 = _4583 + _3247;
                      if (_4442) {
                        if (_4560) {
                          _4602 = _4586;
                          _4603 = _4587;
                          _4604 = _4588;
                          _4605 = ((_4557 * (0.25f - _3384)) + _3384);
                        } else {
                          _4602 = _4586;
                          _4603 = _4587;
                          _4604 = _4588;
                          _4605 = (((sqrt(_3384 * 0.25f) - _3384) * saturate(_4557)) + _3384);
                        }
                      } else {
                        _4602 = _4586;
                        _4603 = _4587;
                        _4604 = _4588;
                        _4605 = _3384;
                      }
                    } else {
                      _4602 = _3245;
                      _4603 = _3246;
                      _4604 = _3247;
                      _4605 = _3384;
                    }
                    _4606 = saturate(_4602);  // [sem: _4602_sat]
                    _4607 = saturate(_4603);  // [sem: _4603_sat]
                    _4608 = saturate(_4604);  // [sem: _4604_sat]
                    _4611 = (_4605 * (1.0f - _4409)) + _4409;
                    _4614 = ((_4605 - _4611) * _4412.y) + _4611;
                    _4622 = (((_4409 * _4409) * _4412.z) * ((float)((bool)(_4434 != 0)))) * saturate(dot(float3(_636, _637, _638), float3(0.0f, 1.0f, 0.0f)));
                    _4623 = _4622 * -0.5f;
                    _4635 = ((_4623 * _4608) + _4608);
                    _4636 = ((_4623 * _4607) + _4607);
                    _4637 = ((_4623 * _4606) + _4606);
                    _4638 = (_4614 - (_4622 * _4614));
                    _4639 = (_3256 - (_4409 * _3256));
                  } else {
                    _4635 = _3247;
                    _4636 = _3246;
                    _4637 = _3245;
                    _4638 = _3384;
                    _4639 = _3256;
                  }
                } else {
                  _4635 = _3247;
                  _4636 = _3246;
                  _4637 = _3245;
                  _4638 = _3384;
                  _4639 = _3256;
                }
              } else {
                if (!(_2285 == 97)) {
                  _4433 = 0;
                  _4434 = ((int)(uint)((int)(_2285 != 107)));
                  if (_4412.w < 1.0f) {
                    if ((_weatherCheckFlag & 5) == 5) {
                      _4442 = (_2285 == 36);
                      if (!_4442) {
                        // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                        _4469 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _1010) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _1028) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                        _4475 = _4469.w;
                        _4476 = _4469.z;
                        _4477 = _4469.y;
                        _4478 = _4469.x;
                      } else {
                        _4475 = 0.5f;
                        _4476 = 0.1f;
                        _4477 = 0.12f;
                        _4478 = 0.12f;
                      }
                      _4488 = 1.0f - saturate(((_viewPos.y + _1019) - _paramGlobalSand.x) / _paramGlobalSand.y);
                      if (!(_4488 <= 0.0f)) {
                        _4491 = saturate(_4409);  // [sem: _4409_sat]
                        _4496 = ((_4477 * 0.33951f) + (_4476 * 0.04737f)) + (_4478 * 0.61312f);
                        _4501 = ((_4477 * 0.91636f) + (_4476 * 0.01345f)) + (_4478 * 0.0702f);
                        _4506 = ((_4477 * 0.10958f) + (_4476 * 0.8698f)) + (_4478 * 0.02062f);
                        _4512 = select((_4433 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_636, _637, _638), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                        if (_enableSandAO == 1) {
                          _4518 = (1.0f - _4412.x) * 10.0f;
                          if (_4442) {
                            _4550 = saturate(((_4488 * _4475) * _4518) * _4491);  // [sem: _4546_sat]
                            _4551 = _4506;
                            _4552 = _4501;
                            _4553 = _4496;
                          } else {
                            _4526 = saturate(_4475 + -0.5f);  // [sem: expr_sat]
                            // [sem: _4546_sat]
                            _4550 = ((((_4491 * _4518) * saturate((0.5f - _4475) * 2.0f)) + ((_4526 * 2.0f) * max((_4512 * _4412.x), min((_4491 * ((_4412.x * 7.0f) + 3.0f)), (_4526 * 40.0f))))) * _4488);
                            _4551 = _4506;
                            _4552 = _4501;
                            _4553 = _4496;
                          }
                        } else {
                          _4546 = ((_4488 * _4475) * _4412.x) * _4512;
                          if (_4442) {
                            _4550 = saturate(_4546);  // [sem: _4546_sat]
                            _4551 = _4506;
                            _4552 = _4501;
                            _4553 = _4496;
                          } else {
                            _4550 = _4546;  // [sem: _4546_sat]
                            _4551 = _4506;
                            _4552 = _4501;
                            _4553 = _4496;
                          }
                        }
                      } else {
                        _4550 = 0.0f;  // [sem: _4546_sat]
                        _4551 = 0.0f;
                        _4552 = 0.0f;
                        _4553 = 0.0f;
                      }
                      _4557 = ((1.0f - _4412.w) * (1.0f - _4412.y)) * _4550;
                      if (_4557 > 0.0001f) {
                        _4560 = (_4433 == 0);
                        if (_4560) {
                          _4583 = ((_4551 - _3247) * _4557);
                          _4584 = ((_4552 - _3246) * _4557);
                          _4585 = ((_4553 - _3245) * _4557);
                        } else {
                          _4562 = saturate(_4557);  // [sem: _4557_sat]
                          _4583 = ((sqrt(_4551 * _3247) - _3247) * _4562);
                          _4584 = ((sqrt(_4552 * _3246) - _3246) * _4562);
                          _4585 = ((sqrt(_4553 * _3245) - _3245) * _4562);
                        }
                        _4586 = _3245 + _4585;
                        _4587 = _3246 + _4584;
                        _4588 = _4583 + _3247;
                        if (_4442) {
                          if (_4560) {
                            _4602 = _4586;
                            _4603 = _4587;
                            _4604 = _4588;
                            _4605 = ((_4557 * (0.25f - _3384)) + _3384);
                          } else {
                            _4602 = _4586;
                            _4603 = _4587;
                            _4604 = _4588;
                            _4605 = (((sqrt(_3384 * 0.25f) - _3384) * saturate(_4557)) + _3384);
                          }
                        } else {
                          _4602 = _4586;
                          _4603 = _4587;
                          _4604 = _4588;
                          _4605 = _3384;
                        }
                      } else {
                        _4602 = _3245;
                        _4603 = _3246;
                        _4604 = _3247;
                        _4605 = _3384;
                      }
                      _4606 = saturate(_4602);  // [sem: _4602_sat]
                      _4607 = saturate(_4603);  // [sem: _4603_sat]
                      _4608 = saturate(_4604);  // [sem: _4604_sat]
                      _4611 = (_4605 * (1.0f - _4409)) + _4409;
                      _4614 = ((_4605 - _4611) * _4412.y) + _4611;
                      _4622 = (((_4409 * _4409) * _4412.z) * ((float)((bool)(_4434 != 0)))) * saturate(dot(float3(_636, _637, _638), float3(0.0f, 1.0f, 0.0f)));
                      _4623 = _4622 * -0.5f;
                      _4635 = ((_4623 * _4608) + _4608);
                      _4636 = ((_4623 * _4607) + _4607);
                      _4637 = ((_4623 * _4606) + _4606);
                      _4638 = (_4614 - (_4622 * _4614));
                      _4639 = (_3256 - (_4409 * _3256));
                    } else {
                      _4635 = _3247;
                      _4636 = _3246;
                      _4637 = _3245;
                      _4638 = _3384;
                      _4639 = _3256;
                    }
                  } else {
                    _4635 = _3247;
                    _4636 = _3246;
                    _4637 = _3245;
                    _4638 = _3384;
                    _4639 = _3256;
                  }
                } else {
                  _4635 = _3247;
                  _4636 = _3246;
                  _4637 = _3245;
                  _4638 = _3384;
                  _4639 = _3256;
                }
              }
            } else {
              _4433 = 0;
              _4434 = 1;
              if (_4412.w < 1.0f) {
                if ((_weatherCheckFlag & 5) == 5) {
                  _4442 = (_2285 == 36);
                  if (!_4442) {
                    // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                    _4469 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _1010) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _1028) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                    _4475 = _4469.w;
                    _4476 = _4469.z;
                    _4477 = _4469.y;
                    _4478 = _4469.x;
                  } else {
                    _4475 = 0.5f;
                    _4476 = 0.1f;
                    _4477 = 0.12f;
                    _4478 = 0.12f;
                  }
                  _4488 = 1.0f - saturate(((_viewPos.y + _1019) - _paramGlobalSand.x) / _paramGlobalSand.y);
                  if (!(_4488 <= 0.0f)) {
                    _4491 = saturate(_4409);  // [sem: _4409_sat]
                    _4496 = ((_4477 * 0.33951f) + (_4476 * 0.04737f)) + (_4478 * 0.61312f);
                    _4501 = ((_4477 * 0.91636f) + (_4476 * 0.01345f)) + (_4478 * 0.0702f);
                    _4506 = ((_4477 * 0.10958f) + (_4476 * 0.8698f)) + (_4478 * 0.02062f);
                    _4512 = select((_4433 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_636, _637, _638), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                    if (_enableSandAO == 1) {
                      _4518 = (1.0f - _4412.x) * 10.0f;
                      if (_4442) {
                        _4550 = saturate(((_4488 * _4475) * _4518) * _4491);  // [sem: _4546_sat]
                        _4551 = _4506;
                        _4552 = _4501;
                        _4553 = _4496;
                      } else {
                        _4526 = saturate(_4475 + -0.5f);  // [sem: expr_sat]
                        // [sem: _4546_sat]
                        _4550 = ((((_4491 * _4518) * saturate((0.5f - _4475) * 2.0f)) + ((_4526 * 2.0f) * max((_4512 * _4412.x), min((_4491 * ((_4412.x * 7.0f) + 3.0f)), (_4526 * 40.0f))))) * _4488);
                        _4551 = _4506;
                        _4552 = _4501;
                        _4553 = _4496;
                      }
                    } else {
                      _4546 = ((_4488 * _4475) * _4412.x) * _4512;
                      if (_4442) {
                        _4550 = saturate(_4546);  // [sem: _4546_sat]
                        _4551 = _4506;
                        _4552 = _4501;
                        _4553 = _4496;
                      } else {
                        _4550 = _4546;  // [sem: _4546_sat]
                        _4551 = _4506;
                        _4552 = _4501;
                        _4553 = _4496;
                      }
                    }
                  } else {
                    _4550 = 0.0f;  // [sem: _4546_sat]
                    _4551 = 0.0f;
                    _4552 = 0.0f;
                    _4553 = 0.0f;
                  }
                  _4557 = ((1.0f - _4412.w) * (1.0f - _4412.y)) * _4550;
                  if (_4557 > 0.0001f) {
                    _4560 = (_4433 == 0);
                    if (_4560) {
                      _4583 = ((_4551 - _3247) * _4557);
                      _4584 = ((_4552 - _3246) * _4557);
                      _4585 = ((_4553 - _3245) * _4557);
                    } else {
                      _4562 = saturate(_4557);  // [sem: _4557_sat]
                      _4583 = ((sqrt(_4551 * _3247) - _3247) * _4562);
                      _4584 = ((sqrt(_4552 * _3246) - _3246) * _4562);
                      _4585 = ((sqrt(_4553 * _3245) - _3245) * _4562);
                    }
                    _4586 = _3245 + _4585;
                    _4587 = _3246 + _4584;
                    _4588 = _4583 + _3247;
                    if (_4442) {
                      if (_4560) {
                        _4602 = _4586;
                        _4603 = _4587;
                        _4604 = _4588;
                        _4605 = ((_4557 * (0.25f - _3384)) + _3384);
                      } else {
                        _4602 = _4586;
                        _4603 = _4587;
                        _4604 = _4588;
                        _4605 = (((sqrt(_3384 * 0.25f) - _3384) * saturate(_4557)) + _3384);
                      }
                    } else {
                      _4602 = _4586;
                      _4603 = _4587;
                      _4604 = _4588;
                      _4605 = _3384;
                    }
                  } else {
                    _4602 = _3245;
                    _4603 = _3246;
                    _4604 = _3247;
                    _4605 = _3384;
                  }
                  _4606 = saturate(_4602);  // [sem: _4602_sat]
                  _4607 = saturate(_4603);  // [sem: _4603_sat]
                  _4608 = saturate(_4604);  // [sem: _4604_sat]
                  _4611 = (_4605 * (1.0f - _4409)) + _4409;
                  _4614 = ((_4605 - _4611) * _4412.y) + _4611;
                  _4622 = (((_4409 * _4409) * _4412.z) * ((float)((bool)(_4434 != 0)))) * saturate(dot(float3(_636, _637, _638), float3(0.0f, 1.0f, 0.0f)));
                  _4623 = _4622 * -0.5f;
                  _4635 = ((_4623 * _4608) + _4608);
                  _4636 = ((_4623 * _4607) + _4607);
                  _4637 = ((_4623 * _4606) + _4606);
                  _4638 = (_4614 - (_4622 * _4614));
                  _4639 = (_3256 - (_4409 * _3256));
                } else {
                  _4635 = _3247;
                  _4636 = _3246;
                  _4637 = _3245;
                  _4638 = _3384;
                  _4639 = _3256;
                }
              } else {
                _4635 = _3247;
                _4636 = _3246;
                _4637 = _3245;
                _4638 = _3384;
                _4639 = _3256;
              }
            }
          }
          _4646 = _4409;
          _4647 = (half)(half(_4635));
          _4648 = (half)(half(_4636));
          _4649 = (half)(half(_4637));
          _4650 = (half)(half(_4638));
          _4651 = (half)(half(_4639));
        } else {
          _4646 = _4092;
          _4647 = _2383;
          _4648 = _2384;
          _4649 = _2385;
          _4650 = _2386;
          _4651 = _2387;
        }
        if (_2391) {
          _4657 = (_4383 * _2279);
          _4658 = (_4382 * _2280);
          _4659 = (_4381 * _2281);
          _4660 = 0.0f;
          _4661 = 0.0f;
          _4662 = 0.0f;
          _4663 = _4651;
          _4664 = _4650;
          _4665 = _4647;
          _4666 = _4648;
          _4667 = _4649;
          _4668 = _4646;
        } else {
          _4657 = 0.0f;
          _4658 = 0.0f;
          _4659 = 0.0f;
          _4660 = _4383;
          _4661 = _4382;
          _4662 = _4381;
          _4663 = _4651;
          _4664 = _4650;
          _4665 = _4647;
          _4666 = _4648;
          _4667 = _4649;
          _4668 = _4646;
        }
      } else {
        _4657 = 0.0f;
        _4658 = 0.0f;
        _4659 = 0.0f;
        _4660 = _4383;
        _4661 = _4382;
        _4662 = _4381;
        _4663 = _2387;
        _4664 = _2386;
        _4665 = _2383;
        _4666 = _2384;
        _4667 = _2385;
        _4668 = _4092;
      }
    }
    half4 _4670 = __3__36__0__0__g_sceneShadowColor.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_sceneShadowColor_load]
    _4675 = float(_4670.x);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _4676 = float(_4670.y);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _4677 = float(_4670.z);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    [branch]
    if (_2350) {
      _4680 = __3__36__0__0__g_sceneNormal.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
      _4686 = min(1.0f, ((((float)((uint)((uint)(_4680.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _4692 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_4680.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _4698 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_4680.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _4700 = rsqrt(dot(float3(_4686, _4692, _4698), float3(_4686, _4692, _4698)));  // [sem: invLength]
      _4708 = (half)(half(_4700 * _4698));
      _4709 = (half)(half(_4700 * _4692));
      _4710 = (half)(half(_4700 * _4686));
    } else {
      _4708 = _518;
      _4709 = _519;
      _4710 = _520;
    }
    _4713 = (_sunDirection.y > 0.0f);
    if (_4713) {
      _4729 = _sunDirection.x;
      _4730 = _sunDirection.y;
      _4731 = _sunDirection.z;
      _4746 = _4729;
      _4747 = _4730;
      _4748 = _4731;
      _4749 = _precomputedAmbient7.y;
    } else {
      _4720 = (_sunDirection.y > _moonDirection.y);
      _4725 = select(_4720, _sunDirection.z, _moonDirection.z);
      _4726 = select(_4720, _sunDirection.x, _moonDirection.x);
      _4727 = select(_4720, _sunDirection.y, _moonDirection.y);
      if (_4720) {
        _4729 = _4726;
        _4730 = _4727;
        _4731 = _4725;
        _4746 = _4729;
        _4747 = _4730;
        _4748 = _4731;
        _4749 = _precomputedAmbient7.y;
      } else {
        _4746 = _4726;
        _4747 = _4727;
        _4748 = _4725;
        _4749 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
      }
    }
    _4752 = _viewPos.x + _1010;
    _4754 = _viewPos.y + _1019;
    _4757 = _4754 + _earthRadius;
    _4759 = _viewPos.z + _1028;
    _4765 = sqrt(((_4759 * _4759) + (_4752 * _4752)) + (_4757 * _4757));
    _4769 = dot(float3((_4752 / _4765), (_4757 / _4765), (_4759 / _4765)), float3(_4746, _4747, _4748));
    _4776 = min(max(((_4765 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
    _4777 = max(_4776, 0.0f);
    _4784 = (-0.0f - sqrt((_4777 + (_earthRadius * 2.0f)) * _4777)) / (_4777 + _earthRadius);
    if (_4769 > _4784) {
      _4807 = ((exp2(log2(saturate((_4769 - _4784) / (1.0f - _4784))) * 0.2f) * 0.4921875f) + 0.50390625f);
    } else {
      _4807 = ((exp2(log2(saturate((_4784 - _4769) / (_4784 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
    }
    // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
    _4819 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_4776 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _4807), 0.0f);
    _4828 = ((_4819.y * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
    _4842 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _4819.x) + _4828) * -1.442695f);
    _4852 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _4819.x) + _4828) * -1.442695f);
    _4861 = exp2(((((((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.1360002e-07f)) * _4819.x) + _4828) * -1.442695f);
    _4862 = sqrt(_3373);
    _4870 = (_cloudAltitude - (max(((_4862 * _4862) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
    _4882 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_4747 > 0.0f))) - (int)((int)(uint)((int)(_4747 < 0.0f)))))) * 0.5f))) + _4870;
    if (_1019 < _4870) {
      _4885 = dot(float3(0.0f, 1.0f, 0.0f), float3(_4746, _4747, _4748));
      _4891 = select((abs(_4885) < 1e-08f), 1e+08f, ((_4882 - dot(float3(0.0f, 1.0f, 0.0f), float3(_1010, _1019, _1028))) / _4885));
      _4897 = ((_4891 * _4748) + _1028);
      _4898 = _4882;
      _4899 = ((_4891 * _4746) + _1010);
    } else {
      _4897 = _1028;
      _4898 = _1019;
      _4899 = _1010;
    }
    _4902 = saturate(abs(_4747) * 4.0f);  // [sem: expr_sat]
    _4921 = (_4902 * _4902) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_4899 * 5e-05f) + 0.5f), ((_4898 - _4870) / _cloudThickness), ((_4897 * 5e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
    _4928 = ((1.0f - _4921) * saturate(((_1019 - _cloudThickness) - _4870) * 0.1f)) + _4921;
    _4934 = _4928 * (((_4852 * 0.33951f) + (_4842 * 0.61312f)) + (_4861 * 0.04737f));
    _4940 = _4928 * (((_4852 * 0.91636f) + (_4842 * 0.0702f)) + (_4861 * 0.01345f));
    _4946 = _4928 * (((_4852 * 0.10958f) + (_4842 * 0.02062f)) + (_4861 * 0.8698f));
    _4947 = float(_4667);
    _4948 = float(_4666);
    _4949 = float(_4665);
    if (!_3352) {
      _4956 = ((int)(uint)((int)(_185 && ((uint)((int)(_2285) + (int)(-105)) < (uint)2))));
    } else {
      _4956 = 1;
    }
    _4958 = float(max(0.010002136h, _4664));
    _4959 = float(_4663);
    _4960 = (_2285 == 107);
    if (!(((uint)((int)(_2285) + (int)(-11)) < (uint)9) || _2345)) {
      _4968 = (_4960 || (_4956 != 0));
    } else {
      _4968 = true;
    }
    if ((_2285 == 28) || ((_2285 == 105) || (_2388 == 26))) {
      _4983 = ((int)(uint)(_4960));
      _4984 = 1;
    } else {
      _4983 = select((_2285 == 19), 1, ((int)(uint)(_4960)));
      _4984 = ((int)(uint)((int)(_2285 == 106)));
    }
    _4985 = float(_4710);
    _4986 = float(_4709);
    _4987 = float(_4708);
    _4989 = __3__36__0__0__g_sceneDecalMask.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_sceneDecalMask_load]
    if (_2285 == 97) {
      _5003 = 0.0f;
      _5004 = 0.0f;
      _5005 = 0.0f;
      _5006 = 0.0f;
      _5007 = ((int)((uint)((uint)((int)(min16uint)((int)((int)(_4989.x) & 2)))) >> 1) + (int)(97));
      _5008 = (((float)((uint16_t)((int16_t)((uint16_t)((int16_t)(_4989.x)) >> 2)))) * 0.015873017f);
    } else {
      _5003 = _2278;
      _5004 = _2277;
      _5005 = _2276;
      _5006 = _2275;
      _5007 = _2285;
      _5008 = select(_4968, _4959, 0.0f);
    }
    _5010 = float(saturate(_204));
    _5011 = _5010 * _5010;
    _5012 = _5011 * _5011;
    _5013 = _5012 * _5012;
    _5028 = ((_5013 * _5013) * select((_3090 || (((int)(_4984) | (int)(_4983)) != 0)), 0.0f, 1.0f)) * (((float4)(__3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_bufferSizeAndInvSize.z * _107), (_bufferSizeAndInvSize.w * _108)), 0.0f))).y);
    _5030 = _4985 - (_5028 * _4985);
    _5033 = (_5028 * (1.0f - _4986)) + _4986;
    _5035 = _4987 - (_5028 * _4987);
    _5037 = rsqrt(dot(float3(_5030, _5033, _5035), float3(_5030, _5033, _5035)));  // [sem: invLength]
    _5038 = _5030 * _5037;
    _5039 = _5033 * _5037;
    _5040 = _5035 * _5037;
    _5041 = (_5007 == 37);
    _5042 = (_5007 == 55);
    _5043 = _5041 || _5042;
    _5045 = select((_4968 || _5043), 0.0f, _4959);
    _5046 = (_5007 == 52);
    if (_5046) {
      _5053 = saturate(((_4948 + _4949) + _4947) * 1.2f);  // [sem: expr_sat]
    } else {
      _5053 = 1.0f;  // [sem: expr_sat]
    }
    _5059 = (0.7f / min(max(max(max(_4947, _4948), _4949), 0.01f), 0.7f)) * _5053;
    _5063 = (((_5059 * _4947) + -0.04f) * _5045) + 0.04f;
    _5067 = (((_5059 * _4948) + -0.04f) * _5045) + 0.04f;
    _5071 = (((_5059 * _4949) + -0.04f) * _5045) + 0.04f;
    _5072 = float(_4664);
    _5073 = _5007 & -2;
    _5074 = (_5073 == 64);
    _5077 = ((((int)(uint)(_5074)) & _4100) == 0);
    if (_5077) {
      _5090 = saturate(exp2((_5072 * _5072) * (_124 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _5090 = select((_cavityParams.z > 0.0f), select(_186, 0.0f, _1053), 1.0f);  // [sem: expr_sat]
    }
    _5091 = select(_4120, 1.0f, _5090);
    if (_5074) {
      _5097 = (_5091 * _5071);
      _5098 = (_5091 * _5067);
      _5099 = (_5091 * _5063);
    } else {
      _5097 = _5071;
      _5098 = _5067;
      _5099 = _5063;
    }
    _5100 = _4958 * _4958;
    _5101 = _5100 * _5100;
    _5103 = ((uint)((int)(_5007) + (int)(-97)) < (uint)2);
    _5105 = select(_5103, 0.5f, (_4958 * 0.60009766f));
    _5106 = _5105 * _5105;
    _5107 = _5106 * _5106;
    if (!((_5007 == 98) || (_5073 == 96))) {
      if ((uint)((int)(_5007) + (int)(-105)) < (uint)2) {
        _5132 = 0;
        _5133 = ((int)(uint)(_185));
      } else {
        if ((uint)_5007 > (uint)11) {
          _5132 = ((int)(uint)((int)(((uint)_5007 < (uint)21) || (_5007 == 107))));
          _5133 = 0;
        } else {
          if (!(_5007 == 6)) {
            _5132 = ((int)(uint)((int)(_5007 == 7)));
            _5133 = 0;
          } else {
            _5132 = 1;
            _5133 = 0;
          }
        }
      }
    } else {
      _5132 = ((int)(uint)((int)(_5007 == 7)));
      _5133 = 1;
    }
    _5138 = exp2(log2(float(_4670.w)) * 2.2f) * 1000.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    if ((_4713) || ((!(_4713)) && (_sunDirection.y > _moonDirection.y))) {
      _5150 = _sunDirection.z;
      _5151 = _sunDirection.y;
      _5152 = _sunDirection.x;
    } else {
      _5150 = _moonDirection.z;
      _5151 = _moonDirection.y;
      _5152 = _moonDirection.x;
    }
    _5155 = _lightingParams.x * _4749;
    // RenoDX: >>> [Patch: DirectLightMatrixFix] [Version: 1.16.00]
    // Description: The game converts the direct beam's transmittance to working space a second time
    //              here: _4934/_4940/_4946 are already the working-space result of that same matrix
    //              applied to the exp2 transmittance triple, scaled by the cloud blend. The matrix
    //              has unit row sums, so applying it twice preserves luminance and only desaturates,
    //              most visibly at low sun where the beam is strongly tinted. On uses the single
    //              conversion so low-sun light keeps the colour of the sky it arrives through.
    _5161 = (DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_5155 * _4934) : (_5155 * (((_4934 * 0.61312f) + (_4940 * 0.33951f)) + (_4946 * 0.04737f)));
    _5167 = (DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_5155 * _4940) : (_5155 * (((_4934 * 0.0702f) + (_4940 * 0.91636f)) + (_4946 * 0.01345f)));
    _5173 = (DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_5155 * _4946) : (_5155 * (((_4934 * 0.02062f) + (_4940 * 0.10958f)) + (_4946 * 0.8698f)));
    // RenoDX: <<< [Patch: DirectLightMatrixFix]
    _5174 = _5152 - _1031;
    _5175 = _5151 - _1032;
    _5176 = _5150 - _1033;
    _5178 = rsqrt(dot(float3(_5174, _5175, _5176), float3(_5174, _5175, _5176)));  // [sem: invLength]
    _5179 = _5178 * _5174;
    _5180 = _5178 * _5175;
    _5181 = _5178 * _5176;
    _5182 = dot(float3(_4985, _4986, _4987), float3(_5152, _5151, _5150));
    _5183 = dot(float3(_5038, _5039, _5040), float3(_5152, _5151, _5150));
    _5185 = saturate(dot(float3(_4985, _4986, _4987), float3(_2392, _2393, _2394)));  // [sem: expr_sat]
    _5187 = saturate(dot(float3(_5038, _5039, _5040), float3(_5179, _5180, _5181)));  // [sem: expr_sat]
    _5188 = dot(float3(_2392, _2393, _2394), float3(_5179, _5180, _5181));
    _5190 = saturate(dot(float3(_5152, _5151, _5150), float3(_5179, _5180, _5181)));  // [sem: expr_sat]
    _5191 = (_5073 == 66);
    _5192 = (_5007 == 53);
    _5193 = _5192 || _5191;
    if (_5193) {
      if (_5192) {
        _5209 = (((asfloat(_globalLightParams.z) * _4958) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_181)));
      } else {
        _5209 = _bevelParams.y;
      }
      _5211 = (_3376 * 2.0f) + 1.0f;
      _5213 = (_2290 * 7.0f) + 1.0f;
      // [sem: _3__36__0__0__g_blueNoise_sampleLod]
      _5233 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((dot(float3(_1010, _1019, _1028), float3(((_2286 * _233) - (_2287 * _234)), ((_2288 * _234) - (_2286 * _232)), ((_2287 * _232) - (_2288 * _233)))) * 2.0f) / _5211) * _5213), (((dot(float3(_1010, _1019, _1028), float3(_2288, _2287, _2286)) * 0.5f) / _5211) * _5213)), 0.0f);
      _5237 = _2290 * 0.5f;
      _5238 = _5233.x * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _5239 = _5233.y * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _5240 = _5233.z * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _5241 = dot(float3(_2288, _2287, _2286), float3(_5152, _5151, _5150));
      _5242 = dot(float3(_2288, _2287, _2286), float3(_2392, _2393, _2394));
      _5248 = cos(abs(asin(_5242) - asin(_5241)) * 0.5f);
      _5250 = _5152 - (_5241 * _2288);
      _5252 = _5151 - (_5241 * _2287);
      _5254 = _5150 - (_5241 * _2286);
      _5256 = _2392 - (_5242 * _2288);
      _5258 = _2393 - (_5242 * _2287);
      _5260 = _2394 - (_5242 * _2286);
      _5267 = dot(float3(_5250, _5252, _5254), float3(_5256, _5258, _5260)) * rsqrt((dot(float3(_5250, _5252, _5254), float3(_5250, _5252, _5254)) * dot(float3(_5256, _5258, _5260), float3(_5256, _5258, _5260))) + 0.0001f);
      _5271 = sqrt(saturate((_5267 * 0.5f) + 0.5f));
      _5274 = min(max(max(0.05f, _4958), 0.09803922f), 1.0f);
      _5275 = _5274 * _5274;
      _5276 = _5275 * 0.5f;
      _5277 = _5275 * 2.0f;
      _5278 = _5242 + _5241;
      _5280 = _5278 + (_5209 * 2.0f);
      _5282 = (_5271 * 1.4142135f) * _5275;
      _5288 = 1.0f - sqrt(saturate((dot(float3(_2392, _2393, _2394), float3(_5152, _5151, _5150)) * 0.5f) + 0.5f));
      _5289 = _5288 * _5288;
      _5290 = _5278 - _5209;
      _5294 = 1.0f / ((1.19f / _5248) + (_5248 * 0.36f));
      _5299 = ((_5294 * (0.6f - (_5267 * 0.8f))) + 1.0f) * _5271;
      _5305 = 1.0f - (sqrt(saturate(1.0f - (_5299 * _5299))) * _5248);
      _5306 = _5305 * _5305;
      _5310 = 0.9534794f - ((_5306 * _5306) * (_5305 * 0.9534794f));
      _5311 = _5299 * _5294;
      _5316 = (sqrt(1.0f - (_5311 * _5311)) * 0.5f) / _5248;
      _5317 = log2(_4947);
      _5318 = log2(_4948);
      _5319 = log2(_4949);
      _5333 = ((_5310 * _5310) * (exp2((((_5290 * _5290) * -0.5f) / (_5276 * _5276)) * 1.442695f) / (_5275 * 1.2533141f))) * exp2(-5.741926f - (_5267 * 5.265837f));
      _5335 = _5278 - (_5209 * 4.0f);
      _5337 = 1.0f - (_5248 * 0.5f);
      _5338 = _5337 * _5337;
      _5342 = (_5338 * _5338) * (0.9534794f - (_5248 * 0.4767397f));
      _5343 = 0.9534794f - _5342;
      _5344 = 0.8f / _5248;
      _5360 = (((_5343 * _5343) * (_5342 + 0.046520565f)) * (exp2((((_5335 * _5335) * -0.5f) / (_5277 * _5277)) * 1.442695f) / (_5275 * 5.0132565f))) * exp2((_5267 * 24.525816f) + -24.208424f);
      _5361 = saturate(_5183);  // [sem: _5183_sat]
      _5377 = (((_5271 * 0.25f) * (((_5289 * _5289) * (_5288 * 0.9534794f)) + 0.046520565f)) * _5361) * (exp2((((_5280 * _5280) * -0.5f) / (_5282 * _5282)) * 1.442695f) / (_5282 * 2.5066283f));
      _5378 = -0.0f - _5361;
      _5381 = saturate((_5183 + 1.0f) * 0.25f);  // [sem: expr_sat]
      _5383 = max(0.001f, dot(float3(_4947, _4948, _4949), float3(0.3f, 0.59f, 0.11f)));
      _5389 = ((((1.0f - _5381) - abs(_5183)) * 0.33f) + _5381) * 0.07957747f;
      _5396 = sqrt(_4947);
      _5397 = (_5389 * exp2(log2(_4947 / _5383) * (1.0f - _4675))) * _5396;
      _5404 = sqrt(_4948);
      _5405 = (exp2(log2(_4948 / _5383) * (1.0f - _4676)) * _5389) * _5404;
      _5412 = sqrt(_4949);
      _5413 = (exp2(log2(_4949 / _5383) * (1.0f - _4677)) * _5389) * _5412;
      _5425 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((exp2(_5317 * _5316) * _5333) + (exp2(_5344 * _5317) * _5360)) * _5378)))));
      _5437 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((exp2(_5318 * _5316) * _5333) + (exp2(_5344 * _5318) * _5360)) * _5378)))));
      _5449 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((exp2(_5319 * _5316) * _5333) + (exp2(_5344 * _5319) * _5360)) * _5378)))));
      _5458 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_5238, 1.0f, _5237)) * _5377))) * _4675));
      _5467 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_5239, 1.0f, _5237)) * _5377))) * _4676));
      _5476 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_5240, 1.0f, _5237)) * _5377))) * _4677));
      if (!_5191) {
        if (!_5192) {
          _5479 = (_5007 == 33);
          _5480 = (_5007 == 54);
          if (_5479 || _5480) {
            _5492 = (saturate(_5182) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _5003) + 1.0f);
            _5494 = max(dot(float3(_4947, _4948, _4949), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
            _5505 = (saturate(1.0f - (pow(_5185, 4.0f))) * (_5003 - _5006)) + _5006;
            _5508 = ((_5505 * (_5404 - _5494)) + _5494) * _5005;
            _5511 = saturate(1.0f - saturate(_5188));  // [sem: expr_sat]
            _5512 = _5511 * _5511;
            _5514 = (_5512 * _5512) * _5511;
            _5517 = _5514 * saturate(_5508 * 50.0f);
            _5518 = 1.0f - _5514;
            _5519 = _5518 * _5005;
            _5523 = (_5519 * ((_5505 * (_5396 - _5494)) + _5494)) + _5517;
            _5525 = (_5518 * _5508) + _5517;
            _5529 = (_5519 * ((_5505 * (_5412 - _5494)) + _5494)) + _5517;
            _5530 = min(_5187, 0.9999f);
            _5531 = _5530 * _5530;
            _5532 = 1.0f - _5531;
            _5544 = (((exp2(((-0.0f - _5531) / (_5532 * _5101)) * 1.442695f) * 4.0f) / (_5532 * _5532)) + 1.0f) / ((_5101 * 12.566371f) + 3.1415927f);
            _5548 = ((_5185 + _5183) - (_5185 * _5183)) * 4.0f;
            _5550 = (_5523 * _5544) / _5548;
            _5552 = (_5525 * _5544) / _5548;
            _5554 = (_5529 * _5544) / _5548;
            _5555 = 1.0f - _5100;
            _5559 = (((_5187 * _5101) - _5187) * _5187) + 1.0f;
            _5571 = (0.5f / ((((_5185 * _5555) + _5100) * _5182) + (_5185 * ((_5182 * _5555) + _5100)))) * (_5101 / ((_5559 * _5559) * 3.1415927f));
            _5573 = (_5004 * 1.5f) + 2.5f;
            _5574 = _5573 * _5573;
            _5584 = (max(0.0f, (0.3f - _5182)) * 0.25f) * ((exp2(_5574 * -0.48089835f) * 3.0f) + exp2(_5574 * -1.442695f));
            _5600 = (((1.0f - _5003) * 0.4774648f) * saturate(_5004)) * saturate(exp2(log2(saturate(1.0f - abs(_5182))) * 3.0f) * (pow(_5187, 4.0f)));
            if (!_5479) {
              if (_5480) {
                if (_5043) {
                  _5632 = dot(float3(_2392, _2393, _2394), float3(_5038, _5039, _5040)) * 2.0f;
                  _5634 = _2392 - (_5632 * _5038);
                  _5636 = _2393 - (_5632 * _5039);
                  _5638 = _2394 - (_5632 * _5040);
                  _5639 = _5152 - _5634;
                  _5640 = _5151 - _5636;
                  _5641 = _5150 - _5638;
                  _5643 = rsqrt(dot(float3(_5639, _5640, _5641), float3(_5639, _5640, _5641)));  // [sem: invLength]
                  _5644 = _5639 * _5643;
                  _5645 = _5640 * _5643;
                  _5646 = _5641 * _5643;
                  _5708 = saturate(dot(float3(_5038, _5039, _5040), float3(_5644, _5645, _5646)));  // [sem: expr_sat]
                  _5709 = dot(float3((-0.0f - _5634), (-0.0f - _5636), (-0.0f - _5638)), float3(_5644, _5645, _5646));
                } else {
                  _5708 = _5187;  // [sem: expr_sat]
                  _5709 = _5188;
                }
              } else {
                _5654 = (_5007 == 65);
                if (_5074) {
                  if (!(_5654 || (!_5043))) {
                    _5660 = dot(float3(_2392, _2393, _2394), float3(_5038, _5039, _5040)) * 2.0f;
                    _5662 = _2392 - (_5660 * _5038);
                    _5664 = _2393 - (_5660 * _5039);
                    _5666 = _2394 - (_5660 * _5040);
                    _5667 = _5152 - _5662;
                    _5668 = _5151 - _5664;
                    _5669 = _5150 - _5666;
                    _5671 = rsqrt(dot(float3(_5667, _5668, _5669), float3(_5667, _5668, _5669)));  // [sem: invLength]
                    _5672 = _5667 * _5671;
                    _5673 = _5668 * _5671;
                    _5674 = _5669 * _5671;
                    _5708 = saturate(dot(float3(_5038, _5039, _5040), float3(_5672, _5673, _5674)));  // [sem: expr_sat]
                    _5709 = dot(float3((-0.0f - _5662), (-0.0f - _5664), (-0.0f - _5666)), float3(_5672, _5673, _5674));
                  } else {
                    _5708 = _5187;  // [sem: expr_sat]
                    _5709 = _5188;
                  }
                } else {
                  if (!(_5654 || (!_5043))) {
                    _5686 = dot(float3(_2392, _2393, _2394), float3(_5038, _5039, _5040)) * 2.0f;
                    _5688 = _2392 - (_5686 * _5038);
                    _5690 = _2393 - (_5686 * _5039);
                    _5692 = _2394 - (_5686 * _5040);
                    _5693 = _5152 - _5688;
                    _5694 = _5151 - _5690;
                    _5695 = _5150 - _5692;
                    _5697 = rsqrt(dot(float3(_5693, _5694, _5695), float3(_5693, _5694, _5695)));  // [sem: invLength]
                    _5698 = _5693 * _5697;
                    _5699 = _5694 * _5697;
                    _5700 = _5695 * _5697;
                    _5708 = saturate(dot(float3(_5038, _5039, _5040), float3(_5698, _5699, _5700)));  // [sem: expr_sat]
                    _5709 = dot(float3((-0.0f - _5688), (-0.0f - _5690), (-0.0f - _5692)), float3(_5698, _5699, _5700));
                  } else {
                    _5708 = _5187;  // [sem: expr_sat]
                    _5709 = _5188;
                  }
                }
              }
            } else {
              _5708 = _5187;  // [sem: expr_sat]
              _5709 = _5188;
            }
            _6649 = ((((_5412 * _4677) * _5584) + _5492) * _4677);
            _6650 = ((((_5404 * _4676) * _5584) + _5492) * _4676);
            _6651 = ((((_5396 * _4675) * _5584) + _5492) * _4675);
            _6652 = (((_5361 * _4677) * (((max((_5571 * _5529), 0.0f) - _5554) * _5006) + _5554)) + (_5600 * _5412));
            _6653 = (((_5361 * _4676) * (((max((_5571 * _5525), 0.0f) - _5552) * _5006) + _5552)) + (_5600 * _5404));
            _6654 = (((_5361 * _4675) * (((max((_5571 * _5523), 0.0f) - _5550) * _5006) + _5550)) + (_5600 * _5396));
            _6655 = 0.0f;
            _6656 = 0.0f;
            _6657 = 0.0f;
            _6658 = _5708;
            _6659 = _5709;
          } else {
            if ((_5182 > 0.0f) || (_5183 > 0.0f)) {
              _5727 = saturate(_5182);  // [sem: _5182_sat]
              _5728 = 1.0f - _5101;
              _5729 = 1.0f - _5190;
              _5730 = _5729 * _5729;
              _5733 = ((_5730 * _5730) * _5729) + _5190;
              _5734 = 1.0f - _5727;
              _5735 = _5734 * _5734;
              _5736 = 1.0f - _5185;
              _5737 = _5736 * _5736;
              _5768 = (_5727 * 0.31830987f) * ((((_5190 * ((((_5728 * 34.5f) + -59.0f) * _5728) + 24.5f)) * exp2(-0.0f - (max(((_5728 * 73.2f) + -21.2f), 8.9f) * sqrt(_5187)))) + _5733) + ((((1.0f - ((_5735 * _5735) * (_5734 * 0.75f))) * (1.0f - ((_5737 * _5737) * (_5736 * 0.75f)))) - _5733) * saturate((_5728 * 2.2f) + -0.5f)));
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
              if (FOLIAGE_TRANSMISSION > 0.0f && (((uint)(_120 - 12) < 7u))) {
                FoliageTransmissionResult _rndx_ftResult = FoliageTransmission(
                    float3(_2392, _2393, _2394),
                    float3(_5152, _5151, _5150),
                    float3(_4985, _4986, _4987),
                    _5182,
                    float3(_4947, _4948, _4949),
                    float3(_4934, _4940, _4946),
                    float3(_5161, _5167, _5173),
                    FOLIAGE_TRANSMISSION_THICKNESS);
                _rndx_foliageTransR = _rndx_ftResult.transmission.x;
                _rndx_foliageTransG = _rndx_ftResult.transmission.y;
                _rndx_foliageTransB = _rndx_ftResult.transmission.z;
                if (_rndx_ftResult.diffuseScale > 0.0f) {
                  _5768 *= _rndx_ftResult.diffuseScale;
                } else {
                  float _rndx_wrap = 0.25f * (1.0f - FOLIAGE_TRANSMISSION_THICKNESS);
                  _5768 = max(0.0f, (_5182 + _rndx_wrap) / (1.0f + _rndx_wrap)) * 0.31830987334251404f * 0.75f;
                }
              }
              // RenoDX: <<< [Patch: FoliageTransmission]
              _5771 = saturate(1.0f - saturate(_5188));  // [sem: expr_sat]
              _5772 = _5771 * _5771;
              _5774 = (_5772 * _5772) * _5771;
              _5777 = _5774 * saturate(_5098 * 50.0f);
              _5778 = 1.0f - _5774;
              _5780 = (_5778 * _5099) + _5777;
              _5782 = (_5778 * _5098) + _5777;
              _5784 = (_5778 * _5097) + _5777;
              if (!(_5007 == 29)) {
                _5787 = 1.0f - _5100;
                _5791 = (((_5187 * _5101) - _5187) * _5187) + 1.0f;
                _5803 = (0.5f / ((((_5185 * _5787) + _5100) * _5183) + (_5185 * ((_5183 * _5787) + _5100)))) * (_5101 / ((_5791 * _5791) * 3.1415927f));
                _5814 = (max((_5803 * _5784), 0.0f) * _5361);
                _5815 = (max((_5803 * _5782), 0.0f) * _5361);
                _5816 = (max((_5803 * _5780), 0.0f) * _5361);
              } else {
                _5814 = 0.0f;
                _5815 = 0.0f;
                _5816 = 0.0f;
              }
              _5817 = (_5007 == 65);
              if (_5074) {
                if (_5817) {
                  _5822 = max(1e-06f, _exposure2.x);
                  _5833 = ((_5727 * 50.265484f) * exp2(log2(saturate(dot(float3(_5038, _5039, _5040), float3(_2392, _2393, _2394)))) * 16.0f)) / (((_5822 * _5822) * 1e+06f) + 1.0f);
                  _6036 = _5814;
                  _6037 = _5815;
                  _6038 = _5816;
                  _6039 = _5187;
                  _6040 = _5188;
                  _6041 = ((((_5833 * _4949) - _5768) * _5008) + _5768);
                  _6042 = ((((_5833 * _4948) - _5768) * _5008) + _5768);
                  _6043 = ((((_5833 * _4947) - _5768) * _5008) + _5768);
                } else {
                  _5847 = 1.0f - _5106;
                  _5851 = (((_5187 * _5107) - _5187) * _5187) + 1.0f;
                  _5863 = (0.5f / ((((_5185 * _5847) + _5106) * _5183) + (_5185 * ((_5183 * _5847) + _5106)))) * (_5107 / ((_5851 * _5851) * 3.1415927f));
                  _5864 = _5361 * 0.39990234f;
                  _5869 = (max((_5863 * _5780), 0.0f) * _5864) + (_5816 * 0.60009766f);
                  _5874 = (max((_5863 * _5782), 0.0f) * _5864) + (_5815 * 0.60009766f);
                  _5879 = (max((_5863 * _5784), 0.0f) * _5864) + (_5814 * 0.60009766f);
                  if (_5043) {
                    _5882 = dot(float3(_2392, _2393, _2394), float3(_5038, _5039, _5040)) * 2.0f;
                    _5884 = _2392 - (_5882 * _5038);
                    _5886 = _2393 - (_5882 * _5039);
                    _5888 = _2394 - (_5882 * _5040);
                    _5889 = _5152 - _5884;
                    _5890 = _5151 - _5886;
                    _5891 = _5150 - _5888;
                    _5893 = rsqrt(dot(float3(_5889, _5890, _5891), float3(_5889, _5890, _5891)));  // [sem: invLength]
                    _5894 = _5889 * _5893;
                    _5895 = _5890 * _5893;
                    _5896 = _5891 * _5893;
                    _5897 = -0.0f - _5884;
                    _5898 = -0.0f - _5886;
                    _5899 = -0.0f - _5888;
                    _5901 = saturate(dot(float3(_4985, _4986, _4987), float3(_5897, _5898, _5899)));  // [sem: expr_sat]
                    _5903 = saturate(dot(float3(_5038, _5039, _5040), float3(_5894, _5895, _5896)));  // [sem: expr_sat]
                    _5906 = 1.0f - ((_5903 * _5903) * 0.9f);
                    _5917 = (0.5f / ((((_5901 * 0.9f) + 0.1f) * _5183) + (_5901 * ((_5183 * 0.9f) + 0.1f)))) * (0.03183099f / (_5906 * _5906));
                    _6036 = (((float(half(max((_5917 * _4949), 0.0f) * _5361)) - _5879) * 0.875f) + _5879);
                    _6037 = (((float(half(max((_5917 * _4948), 0.0f) * _5361)) - _5874) * 0.875f) + _5874);
                    _6038 = (((float(half(max((_5917 * _4947), 0.0f) * _5361)) - _5869) * 0.875f) + _5869);
                    _6039 = _5903;
                    _6040 = dot(float3(_5897, _5898, _5899), float3(_5894, _5895, _5896));
                    _6041 = _5768;
                    _6042 = _5768;
                    _6043 = _5768;
                  } else {
                    _6036 = _5879;
                    _6037 = _5874;
                    _6038 = _5869;
                    _6039 = _5187;
                    _6040 = _5188;
                    _6041 = _5768;
                    _6042 = _5768;
                    _6043 = _5768;
                  }
                }
              } else {
                if (_5817) {
                  _5947 = max(1e-06f, _exposure2.x);
                  _5958 = ((_5727 * 50.265484f) * exp2(log2(saturate(dot(float3(_5038, _5039, _5040), float3(_2392, _2393, _2394)))) * 16.0f)) / (((_5947 * _5947) * 1e+06f) + 1.0f);
                  _6036 = _5814;
                  _6037 = _5815;
                  _6038 = _5816;
                  _6039 = _5187;
                  _6040 = _5188;
                  _6041 = ((((_5958 * _4949) - _5768) * _5008) + _5768);
                  _6042 = ((((_5958 * _4948) - _5768) * _5008) + _5768);
                  _6043 = ((((_5958 * _4947) - _5768) * _5008) + _5768);
                } else {
                  if (_5043) {
                    _5974 = dot(float3(_2392, _2393, _2394), float3(_5038, _5039, _5040)) * 2.0f;
                    _5976 = _2392 - (_5974 * _5038);
                    _5978 = _2393 - (_5974 * _5039);
                    _5980 = _2394 - (_5974 * _5040);
                    _5981 = _5152 - _5976;
                    _5982 = _5151 - _5978;
                    _5983 = _5150 - _5980;
                    _5985 = rsqrt(dot(float3(_5981, _5982, _5983), float3(_5981, _5982, _5983)));  // [sem: invLength]
                    _5986 = _5981 * _5985;
                    _5987 = _5982 * _5985;
                    _5988 = _5983 * _5985;
                    _5989 = -0.0f - _5976;
                    _5990 = -0.0f - _5978;
                    _5991 = -0.0f - _5980;
                    _5993 = saturate(dot(float3(_4985, _4986, _4987), float3(_5989, _5990, _5991)));  // [sem: expr_sat]
                    _5995 = saturate(dot(float3(_5038, _5039, _5040), float3(_5986, _5987, _5988)));  // [sem: expr_sat]
                    _5998 = 1.0f - ((_5995 * _5995) * 0.9f);
                    _6009 = (0.5f / ((((_5993 * 0.9f) + 0.1f) * _5183) + (_5993 * ((_5183 * 0.9f) + 0.1f)))) * (0.03183099f / (_5998 * _5998));
                    _6036 = (((float(half(max((_6009 * _4949), 0.0f) * _5361)) - _5814) * 0.875f) + _5814);
                    _6037 = (((float(half(max((_6009 * _4948), 0.0f) * _5361)) - _5815) * 0.875f) + _5815);
                    _6038 = (((float(half(max((_6009 * _4947), 0.0f) * _5361)) - _5816) * 0.875f) + _5816);
                    _6039 = _5995;
                    _6040 = dot(float3(_5989, _5990, _5991), float3(_5986, _5987, _5988));
                    _6041 = _5768;
                    _6042 = _5768;
                    _6043 = _5768;
                  } else {
                    _6036 = _5814;
                    _6037 = _5815;
                    _6038 = _5816;
                    _6039 = _5187;
                    _6040 = _5188;
                    _6041 = _5768;
                    _6042 = _5768;
                    _6043 = _5768;
                  }
                }
              }
              _6649 = (-0.0f - (_4677 * min(-0.0f, (-0.0f - _6041))));
              _6650 = (-0.0f - (_4676 * min(-0.0f, (-0.0f - _6042))));
              _6651 = (-0.0f - (_4675 * min(-0.0f, (-0.0f - _6043))));
              _6652 = (_6036 * _4677);
              _6653 = (_6037 * _4676);
              _6654 = (_6038 * _4675);
              _6655 = _5449;
              _6656 = _5437;
              _6657 = _5425;
              _6658 = _6039;
              _6659 = _6040;
            } else {
              _6649 = _5413;
              _6650 = _5405;
              _6651 = _5397;
              _6652 = _5476;
              _6653 = _5467;
              _6654 = _5458;
              _6655 = _5449;
              _6656 = _5437;
              _6657 = _5425;
              _6658 = _5187;
              _6659 = _5188;
            }
          }
        } else {
          _6649 = _5413;
          _6650 = _5405;
          _6651 = _5397;
          _6652 = _5476;
          _6653 = _5467;
          _6654 = _5458;
          _6655 = _5449;
          _6656 = _5437;
          _6657 = _5425;
          _6658 = _5187;
          _6659 = _5188;
        }
      } else {
        _6649 = _5413;
        _6650 = _5405;
        _6651 = _5397;
        _6652 = _5476;
        _6653 = _5467;
        _6654 = _5458;
        _6655 = _5449;
        _6656 = _5437;
        _6657 = _5425;
        _6658 = _5187;
        _6659 = _5188;
      }
    } else {
      _6060 = (_5007 == 33);
      _6061 = (_5007 == 54);
      if (_6060 || _6061) {
        _6073 = (saturate(_5182) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _5003) + 1.0f);
        _6075 = max(dot(float3(_4947, _4948, _4949), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
        _6076 = sqrt(_4947);
        _6077 = sqrt(_4948);
        _6078 = sqrt(_4949);
        _6089 = (saturate(1.0f - (pow(_5185, 4.0f))) * (_5003 - _5006)) + _5006;
        _6092 = ((_6089 * (_6077 - _6075)) + _6075) * _5005;
        _6095 = saturate(1.0f - saturate(_5188));  // [sem: expr_sat]
        _6096 = _6095 * _6095;
        _6098 = (_6096 * _6096) * _6095;
        _6101 = _6098 * saturate(_6092 * 50.0f);
        _6102 = 1.0f - _6098;
        _6103 = _6102 * _5005;
        _6107 = (_6103 * ((_6089 * (_6076 - _6075)) + _6075)) + _6101;
        _6109 = (_6102 * _6092) + _6101;
        _6113 = (_6103 * ((_6089 * (_6078 - _6075)) + _6075)) + _6101;
        _6114 = min(_5187, 0.9999f);
        _6115 = _6114 * _6114;
        _6116 = 1.0f - _6115;
        _6128 = (((exp2(((-0.0f - _6115) / (_6116 * _5101)) * 1.442695f) * 4.0f) / (_6116 * _6116)) + 1.0f) / ((_5101 * 12.566371f) + 3.1415927f);
        _6132 = ((_5185 + _5183) - (_5185 * _5183)) * 4.0f;
        _6134 = (_6107 * _6128) / _6132;
        _6136 = (_6109 * _6128) / _6132;
        _6138 = (_6113 * _6128) / _6132;
        _6139 = 1.0f - _5100;
        _6143 = (((_5187 * _5101) - _5187) * _5187) + 1.0f;
        _6155 = (0.5f / ((((_5185 * _6139) + _5100) * _5182) + (_5185 * ((_5182 * _6139) + _5100)))) * (_5101 / ((_6143 * _6143) * 3.1415927f));
        _6156 = saturate(_5183);  // [sem: _5183_sat]
        _6158 = (_5004 * 1.5f) + 2.5f;
        _6159 = _6158 * _6158;
        _6169 = (max(0.0f, (0.3f - _5182)) * 0.25f) * ((exp2(_6159 * -0.48089835f) * 3.0f) + exp2(_6159 * -1.442695f));
        _6185 = (((1.0f - _5003) * 0.4774648f) * saturate(_5004)) * saturate(exp2(log2(saturate(1.0f - abs(_5182))) * 3.0f) * (pow(_5187, 4.0f)));
        if (!_6060) {
          if (_6061) {
            if (_5043) {
              _6217 = dot(float3(_2392, _2393, _2394), float3(_5038, _5039, _5040)) * 2.0f;
              _6219 = _2392 - (_6217 * _5038);
              _6221 = _2393 - (_6217 * _5039);
              _6223 = _2394 - (_6217 * _5040);
              _6224 = _5152 - _6219;
              _6225 = _5151 - _6221;
              _6226 = _5150 - _6223;
              _6228 = rsqrt(dot(float3(_6224, _6225, _6226), float3(_6224, _6225, _6226)));  // [sem: invLength]
              _6229 = _6224 * _6228;
              _6230 = _6225 * _6228;
              _6231 = _6226 * _6228;
              _6294 = saturate(dot(float3(_5038, _5039, _5040), float3(_6229, _6230, _6231)));  // [sem: expr_sat]
              _6295 = dot(float3((-0.0f - _6219), (-0.0f - _6221), (-0.0f - _6223)), float3(_6229, _6230, _6231));
            } else {
              _6294 = _5187;  // [sem: expr_sat]
              _6295 = _5188;
            }
          } else {
            _6239 = (_5007 == 65);
            if (_5074) {
              if (!(_6239 || (!_5043))) {
                _6245 = dot(float3(_2392, _2393, _2394), float3(_5038, _5039, _5040)) * 2.0f;
                _6247 = _2392 - (_6245 * _5038);
                _6249 = _2393 - (_6245 * _5039);
                _6251 = _2394 - (_6245 * _5040);
                _6252 = _5152 - _6247;
                _6253 = _5151 - _6249;
                _6254 = _5150 - _6251;
                _6256 = rsqrt(dot(float3(_6252, _6253, _6254), float3(_6252, _6253, _6254)));  // [sem: invLength]
                _6257 = _6252 * _6256;
                _6258 = _6253 * _6256;
                _6259 = _6254 * _6256;
                _6294 = saturate(dot(float3(_5038, _5039, _5040), float3(_6257, _6258, _6259)));  // [sem: expr_sat]
                _6295 = dot(float3((-0.0f - _6247), (-0.0f - _6249), (-0.0f - _6251)), float3(_6257, _6258, _6259));
              } else {
                _6294 = _5187;  // [sem: expr_sat]
                _6295 = _5188;
              }
            } else {
              if (!(_6239 || (!(_5041 || _5042)))) {
                _6272 = dot(float3(_2392, _2393, _2394), float3(_5038, _5039, _5040)) * 2.0f;
                _6274 = _2392 - (_6272 * _5038);
                _6276 = _2393 - (_6272 * _5039);
                _6278 = _2394 - (_6272 * _5040);
                _6279 = _5152 - _6274;
                _6280 = _5151 - _6276;
                _6281 = _5150 - _6278;
                _6283 = rsqrt(dot(float3(_6279, _6280, _6281), float3(_6279, _6280, _6281)));  // [sem: invLength]
                _6284 = _6279 * _6283;
                _6285 = _6280 * _6283;
                _6286 = _6281 * _6283;
                _6294 = saturate(dot(float3(_5038, _5039, _5040), float3(_6284, _6285, _6286)));  // [sem: expr_sat]
                _6295 = dot(float3((-0.0f - _6274), (-0.0f - _6276), (-0.0f - _6278)), float3(_6284, _6285, _6286));
              } else {
                _6294 = _5187;  // [sem: expr_sat]
                _6295 = _5188;
              }
            }
          }
        } else {
          _6294 = _5187;  // [sem: expr_sat]
          _6295 = _5188;
        }
        _6649 = ((((_6078 * _4677) * _6169) + _6073) * _4677);
        _6650 = ((((_6077 * _4676) * _6169) + _6073) * _4676);
        _6651 = ((((_6076 * _4675) * _6169) + _6073) * _4675);
        _6652 = (((_6156 * _4677) * (((max((_6155 * _6113), 0.0f) - _6138) * _5006) + _6138)) + (_6185 * _6078));
        _6653 = (((_6156 * _4676) * (((max((_6155 * _6109), 0.0f) - _6136) * _5006) + _6136)) + (_6185 * _6077));
        _6654 = (((_6156 * _4675) * (((max((_6155 * _6107), 0.0f) - _6134) * _5006) + _6134)) + (_6185 * _6076));
        _6655 = 0.0f;
        _6656 = 0.0f;
        _6657 = 0.0f;
        _6658 = _6294;
        _6659 = _6295;
      } else {
        if ((_5182 > 0.0f) || (_5183 > 0.0f)) {
          _6313 = saturate(_5182);  // [sem: _5182_sat]
          _6314 = 1.0f - _5101;
          _6315 = 1.0f - _5190;
          _6316 = _6315 * _6315;
          _6319 = ((_6316 * _6316) * _6315) + _5190;
          _6320 = 1.0f - _6313;
          _6321 = _6320 * _6320;
          _6322 = 1.0f - _5185;
          _6323 = _6322 * _6322;
          _6354 = (_6313 * 0.31830987f) * ((((_5190 * ((((_6314 * 34.5f) + -59.0f) * _6314) + 24.5f)) * exp2(-0.0f - (max(((_6314 * 73.2f) + -21.2f), 8.9f) * sqrt(_5187)))) + _6319) + ((((1.0f - ((_6321 * _6321) * (_6320 * 0.75f))) * (1.0f - ((_6323 * _6323) * (_6322 * 0.75f)))) - _6319) * saturate((_6314 * 2.2f) + -0.5f)));
          _6357 = saturate(1.0f - saturate(_5188));  // [sem: expr_sat]
          _6358 = _6357 * _6357;
          _6360 = (_6358 * _6358) * _6357;
          _6363 = _6360 * saturate(_5098 * 50.0f);
          _6364 = 1.0f - _6360;
          _6366 = (_6364 * _5099) + _6363;
          _6368 = (_6364 * _5098) + _6363;
          _6370 = (_6364 * _5097) + _6363;
          if (!(_5007 == 29)) {
            _6373 = saturate(_5183);  // [sem: _5183_sat]
            _6374 = 1.0f - _5100;
            _6378 = (((_5187 * _5101) - _5187) * _5187) + 1.0f;
            _6390 = (0.5f / ((((_5185 * _6374) + _5100) * _5183) + (_5185 * ((_5183 * _6374) + _5100)))) * (_5101 / ((_6378 * _6378) * 3.1415927f));
            _6401 = (max((_6390 * _6370), 0.0f) * _6373);
            _6402 = (max((_6390 * _6368), 0.0f) * _6373);
            _6403 = (max((_6390 * _6366), 0.0f) * _6373);
          } else {
            _6401 = 0.0f;
            _6402 = 0.0f;
            _6403 = 0.0f;
          }
          _6404 = (_5007 == 65);
          if (_5074) {
            if (_6404) {
              _6409 = max(1e-06f, _exposure2.x);
              _6420 = ((_6313 * 50.265484f) * exp2(log2(saturate(dot(float3(_5038, _5039, _5040), float3(_2392, _2393, _2394)))) * 16.0f)) / (((_6409 * _6409) * 1e+06f) + 1.0f);
              _6625 = _6401;
              _6626 = _6402;
              _6627 = _6403;
              _6628 = _5187;
              _6629 = _5188;
              _6630 = ((((_6420 * _4949) - _6354) * _5008) + _6354);
              _6631 = ((((_6420 * _4948) - _6354) * _5008) + _6354);
              _6632 = ((((_6420 * _4947) - _6354) * _5008) + _6354);
            } else {
              _6434 = 1.0f - _5106;
              _6438 = (((_5187 * _5107) - _5187) * _5187) + 1.0f;
              _6450 = (0.5f / ((((_5185 * _6434) + _5106) * _5183) + (_5185 * ((_5183 * _6434) + _5106)))) * (_5107 / ((_6438 * _6438) * 3.1415927f));
              _6451 = saturate(_5183);  // [sem: _5183_sat]
              _6452 = _6451 * 0.39990234f;
              _6457 = (max((_6450 * _6366), 0.0f) * _6452) + (_6403 * 0.60009766f);
              _6462 = (max((_6450 * _6368), 0.0f) * _6452) + (_6402 * 0.60009766f);
              _6467 = (max((_6450 * _6370), 0.0f) * _6452) + (_6401 * 0.60009766f);
              if (_5043) {
                _6470 = dot(float3(_2392, _2393, _2394), float3(_5038, _5039, _5040)) * 2.0f;
                _6472 = _2392 - (_6470 * _5038);
                _6474 = _2393 - (_6470 * _5039);
                _6476 = _2394 - (_6470 * _5040);
                _6477 = _5152 - _6472;
                _6478 = _5151 - _6474;
                _6479 = _5150 - _6476;
                _6481 = rsqrt(dot(float3(_6477, _6478, _6479), float3(_6477, _6478, _6479)));  // [sem: invLength]
                _6482 = _6477 * _6481;
                _6483 = _6478 * _6481;
                _6484 = _6479 * _6481;
                _6485 = -0.0f - _6472;
                _6486 = -0.0f - _6474;
                _6487 = -0.0f - _6476;
                _6489 = saturate(dot(float3(_4985, _4986, _4987), float3(_6485, _6486, _6487)));  // [sem: expr_sat]
                _6491 = saturate(dot(float3(_5038, _5039, _5040), float3(_6482, _6483, _6484)));  // [sem: expr_sat]
                _6494 = 1.0f - ((_6491 * _6491) * 0.9f);
                _6505 = (0.5f / ((((_6489 * 0.9f) + 0.1f) * _5183) + (_6489 * ((_5183 * 0.9f) + 0.1f)))) * (0.03183099f / (_6494 * _6494));
                _6625 = (((float(half(max((_6505 * _4949), 0.0f) * _6451)) - _6467) * 0.875f) + _6467);
                _6626 = (((float(half(max((_6505 * _4948), 0.0f) * _6451)) - _6462) * 0.875f) + _6462);
                _6627 = (((float(half(max((_6505 * _4947), 0.0f) * _6451)) - _6457) * 0.875f) + _6457);
                _6628 = _6491;
                _6629 = dot(float3(_6485, _6486, _6487), float3(_6482, _6483, _6484));
                _6630 = _6354;
                _6631 = _6354;
                _6632 = _6354;
              } else {
                _6625 = _6467;
                _6626 = _6462;
                _6627 = _6457;
                _6628 = _5187;
                _6629 = _5188;
                _6630 = _6354;
                _6631 = _6354;
                _6632 = _6354;
              }
            }
          } else {
            if (_6404) {
              _6535 = max(1e-06f, _exposure2.x);
              _6546 = ((_6313 * 50.265484f) * exp2(log2(saturate(dot(float3(_5038, _5039, _5040), float3(_2392, _2393, _2394)))) * 16.0f)) / (((_6535 * _6535) * 1e+06f) + 1.0f);
              _6625 = _6401;
              _6626 = _6402;
              _6627 = _6403;
              _6628 = _5187;
              _6629 = _5188;
              _6630 = ((((_6546 * _4949) - _6354) * _5008) + _6354);
              _6631 = ((((_6546 * _4948) - _6354) * _5008) + _6354);
              _6632 = ((((_6546 * _4947) - _6354) * _5008) + _6354);
            } else {
              if (_5043) {
                _6562 = dot(float3(_2392, _2393, _2394), float3(_5038, _5039, _5040)) * 2.0f;
                _6564 = _2392 - (_6562 * _5038);
                _6566 = _2393 - (_6562 * _5039);
                _6568 = _2394 - (_6562 * _5040);
                _6569 = _5152 - _6564;
                _6570 = _5151 - _6566;
                _6571 = _5150 - _6568;
                _6573 = rsqrt(dot(float3(_6569, _6570, _6571), float3(_6569, _6570, _6571)));  // [sem: invLength]
                _6574 = _6569 * _6573;
                _6575 = _6570 * _6573;
                _6576 = _6571 * _6573;
                _6577 = -0.0f - _6564;
                _6578 = -0.0f - _6566;
                _6579 = -0.0f - _6568;
                _6581 = saturate(dot(float3(_4985, _4986, _4987), float3(_6577, _6578, _6579)));  // [sem: expr_sat]
                _6583 = saturate(dot(float3(_5038, _5039, _5040), float3(_6574, _6575, _6576)));  // [sem: expr_sat]
                _6584 = saturate(_5183);  // [sem: _5183_sat]
                _6587 = 1.0f - ((_6583 * _6583) * 0.9f);
                _6598 = (0.5f / ((((_6581 * 0.9f) + 0.1f) * _5183) + (_6581 * ((_5183 * 0.9f) + 0.1f)))) * (0.03183099f / (_6587 * _6587));
                _6625 = (((float(half(max((_6598 * _4949), 0.0f) * _6584)) - _6401) * 0.875f) + _6401);
                _6626 = (((float(half(max((_6598 * _4948), 0.0f) * _6584)) - _6402) * 0.875f) + _6402);
                _6627 = (((float(half(max((_6598 * _4947), 0.0f) * _6584)) - _6403) * 0.875f) + _6403);
                _6628 = _6583;
                _6629 = dot(float3(_6577, _6578, _6579), float3(_6574, _6575, _6576));
                _6630 = _6354;
                _6631 = _6354;
                _6632 = _6354;
              } else {
                _6625 = _6401;
                _6626 = _6402;
                _6627 = _6403;
                _6628 = _5187;
                _6629 = _5188;
                _6630 = _6354;
                _6631 = _6354;
                _6632 = _6354;
              }
            }
          }
          _6649 = (-0.0f - (_4677 * min(-0.0f, (-0.0f - _6630))));
          _6650 = (-0.0f - (_4676 * min(-0.0f, (-0.0f - _6631))));
          _6651 = (-0.0f - (_4675 * min(-0.0f, (-0.0f - _6632))));
          _6652 = (_6625 * _4677);
          _6653 = (_6626 * _4676);
          _6654 = (_6627 * _4675);
          _6655 = 0.0f;
          _6656 = 0.0f;
          _6657 = 0.0f;
          _6658 = _6628;
          _6659 = _6629;
        } else {
          _6649 = 0.0f;
          _6650 = 0.0f;
          _6651 = 0.0f;
          _6652 = 0.0f;
          _6653 = 0.0f;
          _6654 = 0.0f;
          _6655 = 0.0f;
          _6656 = 0.0f;
          _6657 = 0.0f;
          _6658 = _5187;
          _6659 = _5188;
        }
      }
    }
    if (!(_5132 == 0)) {
      _6664 = max(0.0f, (0.3f - _5182)) * 0.23190688f;
      _6672 = ((_6664 * _4677) + _6649);
      _6673 = ((_6664 * _4676) + _6650);
      _6674 = ((_6664 * _4675) + _6651);
    } else {
      _6672 = _6649;
      _6673 = _6650;
      _6674 = _6651;
    }
    _6676 = 1.0f - (_6659 * 0.85f);
    if (_5074) {
      _6678 = max(4.0f, _5138);
      _6679 = _6678 * _6678;
      _6681 = exp2(_6679 * -225.4211f);
      _6683 = exp2(_6679 * -29.807749f);
      _6685 = exp2(_6679 * -7.7149463f);
      _6687 = exp2(_6679 * -2.5444357f);
      _6688 = _6687 * 0.007f;
      _6690 = exp2(_6679 * -0.72497237f);
      _6692 = -0.0f - _234;
      _6696 = saturate(dot(float3(_5152, _5151, _5150), float3((-0.0f - _232), _243, _6692)) + 0.3f) * 0.31830987f;
      _6728 = ((((((((_6683 * 0.1f) + (_6681 * 0.233f)) + (_6685 * 0.118f)) + (_6687 * 0.113f)) + (_6690 * 0.358f)) + (exp2(_6679 * -0.19469568f) * 0.078f)) * _6696) + _6674) * _5161;
      _6729 = ((_6696 * (((((_6683 * 0.336f) + (_6681 * 0.455f)) + (_6685 * 0.198f)) + _6688) + (_6690 * 0.004f))) + _6673) * _5167;
      _6730 = ((_6696 * (((_6683 * 0.344f) + (_6681 * 0.649f)) + _6688)) + _6672) * _5173;
      _6731 = _5161 * _4675;
      _6733 = _5167 * _4676;
      _6735 = _5173 * _4677;
      if ((_4663 == 0.0h) && ((_124 < 1000.0f) && _5103)) {
        if (!(abs(_233) > 0.99f)) {
          _6746 = rsqrt(dot(float3(_6692, 0.0f, _232), float3(_6692, 0.0f, _232)));  // [sem: invLength]
          _6750 = (_6746 * _232);
          _6751 = (_6746 * _6692);
        } else {
          _6750 = 0.0f;
          _6751 = 1.0f;
        }
        _6753 = -0.0f - (_233 * _6750);
        _6756 = (_6750 * _232) - (_6751 * _234);
        _6757 = _6751 * _233;
        _6759 = rsqrt(dot(float3(_6753, _6756, _6757), float3(_6753, _6756, _6757)));  // [sem: invLength]
        // [sem: _3__36__0__0__g_blueNoise_sampleLod]
        _6767 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_6751, 0.0f, _6750), float3(_4752, _4754, _4759)), dot(float3((_6759 * _6753), (_6756 * _6759), (_6759 * _6757)), float3(_4752, _4754, _4759))), 0.0f);
        _6771 = _6767.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
        _6772 = _6767.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
        _6773 = _6767.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
        _6775 = rsqrt(dot(float3(_6771, _6772, _6773), float3(_6771, _6772, _6773)));  // [sem: invLength]
        _6777 = (_6771 * _6775) + _5038;
        _6779 = (_6772 * _6775) + _5039;
        _6781 = (_6773 * _6775) + _5040;
        _6783 = rsqrt(dot(float3(_6777, _6779, _6781), float3(_6777, _6779, _6781)));  // [sem: invLength]
        _6784 = _6777 * _6783;
        _6785 = _6779 * _6783;
        _6786 = _6781 * _6783;
        _6790 = abs(((_105 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
        _6794 = abs(1.0f - ((_106 * 2.0f) * _bufferSizeAndInvSize.w));
        _6796 = saturate(_6790 * _6790);  // [sem: expr_sat]
        _6798 = saturate(_6794 * _6794);  // [sem: expr_sat]
        _6802 = dot(float3((-0.0f - _6784), (-0.0f - _6785), (-0.0f - _6786)), float3(_5152, _5151, _5150));
        _6804 = saturate(dot(float3(_6784, _6785, _6786), float3(_2392, _2393, _2394)));  // [sem: expr_sat]
        _6806 = saturate(1.0f - _6659);  // [sem: expr_sat]
        _6807 = _6806 * _6806;
        _6809 = (_6807 * _6807) * _6806;
        _6812 = 1.0f - ((_6658 * _6658) * 0.9999f);
        _6853 = ((exp2(log2(saturate(dot(float3(_2392, _2393, _2394), float3(_6784, _6785, _6786)))) * 1024.0f) * 50.0f) + (saturate(_6802) * max((((0.5f / ((((_6804 * 0.9999f) + 0.0001f) * _6802) + (_6804 * ((_6802 * 0.9999f) + 0.0001f)))) * (3.1830987e-05f / (_6812 * _6812))) * (lerp(_6809, 1.0f, 0.08f))), 0.0f))) * (((1.0f - ((_6798 * _6798) * (3.0f - (_6798 * 2.0f)))) * (1.0f - ((_6796 * _6796) * (3.0f - (_6796 * 2.0f))))) * saturate(1.0f - (_124 * 0.001f)));
        _7671 = (_6735 * (_6853 + _6652));
        _7672 = (_6733 * (_6853 + _6653));
        _7673 = (_6731 * (_6853 + _6654));
        _7674 = _6655;
        _7675 = _6656;
        _7676 = _6657;
        _7677 = _6730;
        _7678 = _6729;
        _7679 = _6728;
      } else {
        _7671 = (_6652 * _6735);
        _7672 = (_6653 * _6733);
        _7673 = (_6654 * _6731);
        _7674 = _6655;
        _7675 = _6656;
        _7676 = _6657;
        _7677 = _6730;
        _7678 = _6729;
        _7679 = _6728;
      }
    } else {
      if (_5193) {
        _6865 = _renderParams2.w * dot(float3(_4947, _4948, _4949), float3(0.212671f, 0.71516f, 0.072169f));
        _6868 = (_2323 - (_6865 * _2323)) + _6865;
        _6870 = saturate(_124 + -7.0f);  // [sem: expr_sat]
        _6876 = (((pow(_4675, 1.2f)) - _4675) * _6870) + _4675;
        _6882 = (((pow(_4676, 1.2f)) - _4676) * _6870) + _4676;
        _6888 = (((pow(_4677, 1.2f)) - _4677) * _6870) + _4677;
        _6891 = saturate(abs(dot(float3(_5152, _5151, _5150), float3(_2288, _2287, _2286))));  // [sem: expr_sat]
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _6897 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_6891, _4958, saturate(sqrt(sqrt(_4947)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _6903 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_6891, _4958, saturate(sqrt(sqrt(_4948)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _6909 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_6891, _4958, saturate(sqrt(sqrt(_4949)))), 0.0f);
        _6912 = min(0.99f, _6897.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _6913 = min(0.99f, _6903.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _6914 = min(0.99f, _6909.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _6915 = min(0.99f, _6897.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _6916 = min(0.99f, _6903.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _6917 = min(0.99f, _6909.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _6918 = _6912 * _6912;
        _6919 = _6913 * _6913;
        _6920 = _6914 * _6914;
        _6921 = _6915 * _6915;
        _6922 = _6916 * _6916;
        _6923 = _6917 * _6917;
        _6924 = _6921 * _6915;
        _6925 = _6922 * _6916;
        _6926 = _6923 * _6917;
        _6927 = 1.0f - _6918;
        _6928 = 1.0f - _6919;
        _6929 = 1.0f - _6920;
        _6930 = _6927 * _6927;
        _6931 = _6928 * _6928;
        _6932 = _6929 * _6929;
        _6933 = _6930 * _6927;
        _6934 = _6931 * _6928;
        _6935 = _6932 * _6929;
        _6937 = min(max(_4958, 0.18f), 0.6f);
        _6938 = _6937 * _6937;
        _6939 = _6938 * 0.25f;
        _6940 = _6938 * 4.0f;
        _6942 = (_6913 + _6912) + _6914;
        _6943 = _6912 / _6942;
        _6944 = _6913 / _6942;
        _6945 = _6914 / _6942;
        _6946 = dot(float3(_6938, _6939, _6940), float3(_6943, _6944, _6945));
        _6947 = _6946 * _6946;
        _6957 = (asin(min(max(dot(float3(_2288, _2287, _2286), float3(_5152, _5151, _5150)), -1.0f), 1.0f)) + asin(min(max(dot(float3(_2288, _2287, _2286), float3(_2392, _2393, _2394)), -1.0f), 1.0f))) * 0.5f;
        _6958 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_6943, _6944, _6945));
        _6959 = _6958 * _6958;
        _6961 = (_6916 + _6915) + _6917;
        _6965 = dot(float3(_6938, _6939, _6940), float3((_6915 / _6961), (_6916 / _6961), (_6917 / _6961)));
        _6969 = sqrt((_6965 * _6965) + (_6947 * 2.0f));
        _6972 = (_6965 * 3.0f) + (_6946 * 2.0f);
        _6980 = (((_6924 + _6915) * ((_6918 * 0.7f) + 1.0f)) * _6969) / ((_6972 * _6924) + _6915);
        _6988 = (((_6925 + _6916) * ((_6919 * 0.7f) + 1.0f)) * _6969) / ((_6972 * _6925) + _6916);
        _6996 = (((_6926 + _6917) * ((_6920 * 0.7f) + 1.0f)) * _6969) / ((_6972 * _6926) + _6917);
        _7007 = _6957 - (((_6959 * (((_6918 * 4.0f) * _6921) + (_6930 * 2.0f))) * (1.0f - ((_6921 * 2.0f) / _6930))) / _6933);
        _7018 = _6957 - (((_6959 * (((_6919 * 4.0f) * _6922) + (_6931 * 2.0f))) * (1.0f - ((_6922 * 2.0f) / _6931))) / _6934);
        _7029 = _6957 - (((_6959 * (((_6920 * 4.0f) * _6923) + (_6932 * 2.0f))) * (1.0f - ((_6923 * 2.0f) / _6932))) / _6935);
        _7034 = ((1.0f - _2290) * 2.1f) * ((_6870 * 0.75f) + 0.25f);
        _7037 = (_2290 * 0.31830987f) * saturate(_5182);
        _7053 = _6876 * _5161;
        _7055 = (_7053 * _6868) * ((((((_6915 * _6918) / _6927) + ((_6924 * _6918) / _6933)) * _7034) * exp2((((_7007 * _7007) * -0.5f) / ((_6980 * _6980) + _6947)) * 1.442695f)) + _6657);
        _7071 = _6882 * _5167;
        _7073 = (_7071 * _6868) * ((((((_6916 * _6919) / _6928) + ((_6925 * _6919) / _6934)) * _7034) * exp2((((_7018 * _7018) * -0.5f) / ((_6988 * _6988) + _6947)) * 1.442695f)) + _6656);
        _7089 = _6888 * _5173;
        _7091 = (_7089 * _6868) * ((((((_6917 * _6920) / _6929) + ((_6926 * _6920) / _6935)) * _7034) * exp2((((_7029 * _7029) * -0.5f) / ((_6996 * _6996) + _6947)) * 1.442695f)) + _6655);
        _7092 = _7037 * _7053;
        _7093 = _7037 * _7071;
        _7094 = _7037 * _7089;
        _7096 = (_6654 * _5161) * _6876;
        _7098 = (_6653 * _5167) * _6882;
        _7100 = (_6652 * _5173) * _6888;
        if ((_4663 == 0.0h) && ((_124 < 1000.0f) && _5103)) {
          if (!(abs(_233) > 0.99f)) {
            _7109 = -0.0f - _234;
            _7111 = rsqrt(dot(float3(_7109, 0.0f, _232), float3(_7109, 0.0f, _232)));  // [sem: invLength]
            _7115 = (_7111 * _232);
            _7116 = (_7111 * _7109);
          } else {
            _7115 = 0.0f;
            _7116 = 1.0f;
          }
          _7118 = -0.0f - (_233 * _7115);
          _7121 = (_7115 * _232) - (_7116 * _234);
          _7122 = _7116 * _233;
          _7124 = rsqrt(dot(float3(_7118, _7121, _7122), float3(_7118, _7121, _7122)));  // [sem: invLength]
          // [sem: _3__36__0__0__g_blueNoise_sampleLod]
          _7132 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_7116, 0.0f, _7115), float3(_4752, _4754, _4759)), dot(float3((_7124 * _7118), (_7121 * _7124), (_7124 * _7122)), float3(_4752, _4754, _4759))), 0.0f);
          _7136 = _7132.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _7137 = _7132.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _7138 = _7132.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _7140 = rsqrt(dot(float3(_7136, _7137, _7138), float3(_7136, _7137, _7138)));  // [sem: invLength]
          _7142 = (_7136 * _7140) + _5038;
          _7144 = (_7137 * _7140) + _5039;
          _7146 = (_7138 * _7140) + _5040;
          _7148 = rsqrt(dot(float3(_7142, _7144, _7146), float3(_7142, _7144, _7146)));  // [sem: invLength]
          _7149 = _7142 * _7148;
          _7150 = _7144 * _7148;
          _7151 = _7146 * _7148;
          _7155 = abs(((_105 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
          _7159 = abs(1.0f - ((_106 * 2.0f) * _bufferSizeAndInvSize.w));
          _7161 = saturate(_7155 * _7155);  // [sem: expr_sat]
          _7163 = saturate(_7159 * _7159);  // [sem: expr_sat]
          _7167 = dot(float3((-0.0f - _7149), (-0.0f - _7150), (-0.0f - _7151)), float3(_5152, _5151, _5150));
          _7169 = saturate(dot(float3(_7149, _7150, _7151), float3(_2392, _2393, _2394)));  // [sem: expr_sat]
          _7171 = saturate(1.0f - _6659);  // [sem: expr_sat]
          _7172 = _7171 * _7171;
          _7174 = (_7172 * _7172) * _7171;
          _7177 = 1.0f - ((_6658 * _6658) * 0.9999f);
          _7218 = ((exp2(log2(saturate(dot(float3(_2392, _2393, _2394), float3(_7149, _7150, _7151)))) * 1024.0f) * 50.0f) + (saturate(_7167) * max((((0.5f / ((((_7169 * 0.9999f) + 0.0001f) * _7167) + (_7169 * ((_7167 * 0.9999f) + 0.0001f)))) * (3.1830987e-05f / (_7177 * _7177))) * (lerp(_7174, 1.0f, 0.08f))), 0.0f))) * (((1.0f - ((_7163 * _7163) * (3.0f - (_7163 * 2.0f)))) * (1.0f - ((_7161 * _7161) * (3.0f - (_7161 * 2.0f))))) * saturate(1.0f - (_124 * 0.001f)));
          _7671 = ((_7218 * _7089) + _7100);
          _7672 = ((_7218 * _7071) + _7098);
          _7673 = ((_7218 * _7053) + _7096);
          _7674 = _7091;
          _7675 = _7073;
          _7676 = _7055;
          _7677 = _7094;
          _7678 = _7093;
          _7679 = _7092;
        } else {
          _7671 = _7100;
          _7672 = _7098;
          _7673 = _7096;
          _7674 = _7091;
          _7675 = _7073;
          _7676 = _7055;
          _7677 = _7094;
          _7678 = _7093;
          _7679 = _7092;
        }
      } else {
        if (_5133 == 0) {
          _7537 = _6674 * _5161;
          _7538 = _6673 * _5167;
          _7539 = _6672 * _5173;
          _7540 = _5161 * _4675;
          _7542 = _5167 * _4676;
          _7544 = _5173 * _4677;
          if ((_4663 == 0.0h) && ((_124 < 1000.0f) && _5103)) {
            if (!(abs(_233) > 0.99f)) {
              _7554 = -0.0f - _234;
              _7556 = rsqrt(dot(float3(_7554, 0.0f, _232), float3(_7554, 0.0f, _232)));  // [sem: invLength]
              _7560 = (_7556 * _232);
              _7561 = (_7556 * _7554);
            } else {
              _7560 = 0.0f;
              _7561 = 1.0f;
            }
            _7563 = -0.0f - (_233 * _7560);
            _7566 = (_7560 * _232) - (_7561 * _234);
            _7567 = _7561 * _233;
            _7569 = rsqrt(dot(float3(_7563, _7566, _7567), float3(_7563, _7566, _7567)));  // [sem: invLength]
            // [sem: _3__36__0__0__g_blueNoise_sampleLod]
            _7577 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_7561, 0.0f, _7560), float3(_4752, _4754, _4759)), dot(float3((_7569 * _7563), (_7566 * _7569), (_7569 * _7567)), float3(_4752, _4754, _4759))), 0.0f);
            _7581 = _7577.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
            _7582 = _7577.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
            _7583 = _7577.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
            _7585 = rsqrt(dot(float3(_7581, _7582, _7583), float3(_7581, _7582, _7583)));  // [sem: invLength]
            _7587 = (_7581 * _7585) + _5038;
            _7589 = (_7582 * _7585) + _5039;
            _7591 = (_7583 * _7585) + _5040;
            _7593 = rsqrt(dot(float3(_7587, _7589, _7591), float3(_7587, _7589, _7591)));  // [sem: invLength]
            _7594 = _7587 * _7593;
            _7595 = _7589 * _7593;
            _7596 = _7591 * _7593;
            _7600 = abs(((_105 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
            _7604 = abs(1.0f - ((_106 * 2.0f) * _bufferSizeAndInvSize.w));
            _7606 = saturate(_7600 * _7600);  // [sem: expr_sat]
            _7608 = saturate(_7604 * _7604);  // [sem: expr_sat]
            _7612 = dot(float3((-0.0f - _7594), (-0.0f - _7595), (-0.0f - _7596)), float3(_5152, _5151, _5150));
            _7614 = saturate(dot(float3(_7594, _7595, _7596), float3(_2392, _2393, _2394)));  // [sem: expr_sat]
            _7616 = saturate(1.0f - _6659);  // [sem: expr_sat]
            _7617 = _7616 * _7616;
            _7619 = (_7617 * _7617) * _7616;
            _7622 = 1.0f - ((_6658 * _6658) * 0.9999f);
            _7663 = ((exp2(log2(saturate(dot(float3(_2392, _2393, _2394), float3(_7594, _7595, _7596)))) * 1024.0f) * 50.0f) + (saturate(_7612) * max((((0.5f / ((((_7614 * 0.9999f) + 0.0001f) * _7612) + (_7614 * ((_7612 * 0.9999f) + 0.0001f)))) * (3.1830987e-05f / (_7622 * _7622))) * (lerp(_7619, 1.0f, 0.08f))), 0.0f))) * (((1.0f - ((_7608 * _7608) * (3.0f - (_7608 * 2.0f)))) * (1.0f - ((_7606 * _7606) * (3.0f - (_7606 * 2.0f))))) * saturate(1.0f - (_124 * 0.001f)));
            _7671 = (_7544 * (_7663 + _6652));
            _7672 = (_7542 * (_7663 + _6653));
            _7673 = (_7540 * (_7663 + _6654));
            _7674 = _6655;
            _7675 = _6656;
            _7676 = _6657;
            _7677 = _7539;
            _7678 = _7538;
            _7679 = _7537;
          } else {
            _7671 = (_6652 * _7544);
            _7672 = (_6653 * _7542);
            _7673 = (_6654 * _7540);
            _7674 = _6655;
            _7675 = _6656;
            _7676 = _6657;
            _7677 = _7539;
            _7678 = _7538;
            _7679 = _7537;
          }
        } else {
          if (_5007 == 97) {
            _7230 = _5161 * _4675;
            _7232 = _5167 * _4676;
            _7234 = _5173 * _4677;
            _7236 = _6674 * _5161;
            _7237 = _6673 * _5167;
            _7238 = _6672 * _5173;
            if ((_124 < 1000.0f) && (_4663 == 0.0h)) {
              if (!(abs(_233) > 0.99f)) {
                _7246 = -0.0f - _234;
                _7248 = rsqrt(dot(float3(_7246, 0.0f, _232), float3(_7246, 0.0f, _232)));  // [sem: invLength]
                _7252 = (_7248 * _232);
                _7253 = (_7248 * _7246);
              } else {
                _7252 = 0.0f;
                _7253 = 1.0f;
              }
              _7255 = -0.0f - (_233 * _7252);
              _7258 = (_7252 * _232) - (_7253 * _234);
              _7259 = _7253 * _233;
              _7261 = rsqrt(dot(float3(_7255, _7258, _7259), float3(_7255, _7258, _7259)));  // [sem: invLength]
              // [sem: _3__36__0__0__g_blueNoise_sampleLod]
              _7269 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_7253, 0.0f, _7252), float3(_4752, _4754, _4759)), dot(float3((_7261 * _7255), (_7258 * _7261), (_7261 * _7259)), float3(_4752, _4754, _4759))), 0.0f);
              _7273 = _7269.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
              _7274 = _7269.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
              _7275 = _7269.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
              _7277 = rsqrt(dot(float3(_7273, _7274, _7275), float3(_7273, _7274, _7275)));  // [sem: invLength]
              _7279 = (_7273 * _7277) + _5038;
              _7281 = (_7274 * _7277) + _5039;
              _7283 = (_7275 * _7277) + _5040;
              _7285 = rsqrt(dot(float3(_7279, _7281, _7283), float3(_7279, _7281, _7283)));  // [sem: invLength]
              _7286 = _7279 * _7285;
              _7287 = _7281 * _7285;
              _7288 = _7283 * _7285;
              _7292 = abs(((_105 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
              _7296 = abs(1.0f - ((_106 * 2.0f) * _bufferSizeAndInvSize.w));
              _7298 = saturate(_7292 * _7292);  // [sem: expr_sat]
              _7300 = saturate(_7296 * _7296);  // [sem: expr_sat]
              _7304 = dot(float3((-0.0f - _7286), (-0.0f - _7287), (-0.0f - _7288)), float3(_5152, _5151, _5150));
              _7306 = saturate(dot(float3(_7286, _7287, _7288), float3(_2392, _2393, _2394)));  // [sem: expr_sat]
              _7308 = saturate(1.0f - _6659);  // [sem: expr_sat]
              _7309 = _7308 * _7308;
              _7311 = (_7309 * _7309) * _7308;
              _7314 = 1.0f - ((_6658 * _6658) * 0.9999f);
              _7355 = ((exp2(log2(saturate(dot(float3(_2392, _2393, _2394), float3(_7286, _7287, _7288)))) * 1024.0f) * 50.0f) + (saturate(_7304) * max((((0.5f / ((((_7306 * 0.9999f) + 0.0001f) * _7304) + (_7306 * ((_7304 * 0.9999f) + 0.0001f)))) * (3.1830987e-05f / (_7314 * _7314))) * (lerp(_7311, 1.0f, 0.08f))), 0.0f))) * (((1.0f - ((_7300 * _7300) * (3.0f - (_7300 * 2.0f)))) * (1.0f - ((_7298 * _7298) * (3.0f - (_7298 * 2.0f))))) * saturate(1.0f - (_124 * 0.001f)));
              _7671 = (_7234 * (_7355 + _6652));
              _7672 = (_7232 * (_7355 + _6653));
              _7673 = (_7230 * (_7355 + _6654));
              _7674 = _6655;
              _7675 = _6656;
              _7676 = _6657;
              _7677 = _7238;
              _7678 = _7237;
              _7679 = _7236;
            } else {
              _7671 = (_6652 * _7234);
              _7672 = (_6653 * _7232);
              _7673 = (_6654 * _7230);
              _7674 = _6655;
              _7675 = _6656;
              _7676 = _6657;
              _7677 = _7238;
              _7678 = _7237;
              _7679 = _7236;
            }
          } else {
            if ((uint)((int)(_5007) + (int)(-105)) < (uint)2) {
              _7671 = ((_5173 * _4677) * _6652);
              _7672 = ((_5167 * _4676) * _6653);
              _7673 = ((_5161 * _4675) * _6654);
              _7674 = _6655;
              _7675 = _6656;
              _7676 = _6657;
              _7677 = (_6672 * _5173);
              _7678 = (_6673 * _5167);
              _7679 = (_6674 * _5161);
            } else {
              if (!(_5138 >= 999.9f)) {
                _7384 = ((max(0.002f, _5138) * 0.4f) / ((_5008 * 100.0f) + 0.1f));
              } else {
                _7384 = 1000.0f;
              }
              _7385 = _7384 * _7384;
              _7399 = (((_5008 * 0.25f) * (0.022082746f / (_6676 * _6676))) * max(0.0f, (0.3f - _5182))) * ((exp2(_7385 * -0.48089835f) * 3.0f) + exp2(_7385 * -1.442695f));
              _7403 = (_7399 + _6674) * _5161;
              _7404 = (_7399 + _6673) * _5167;
              _7405 = (_7399 + _6672) * _5173;
              _7406 = _5161 * _4675;
              _7408 = _5167 * _4676;
              _7410 = _5173 * _4677;
              if ((_4663 == 0.0h) && ((_124 < 1000.0f) && _5103)) {
                if (!(abs(_233) > 0.99f)) {
                  _7420 = -0.0f - _234;
                  _7422 = rsqrt(dot(float3(_7420, 0.0f, _232), float3(_7420, 0.0f, _232)));  // [sem: invLength]
                  _7426 = (_7422 * _232);
                  _7427 = (_7422 * _7420);
                } else {
                  _7426 = 0.0f;
                  _7427 = 1.0f;
                }
                _7429 = -0.0f - (_233 * _7426);
                _7432 = (_7426 * _232) - (_7427 * _234);
                _7433 = _7427 * _233;
                _7435 = rsqrt(dot(float3(_7429, _7432, _7433), float3(_7429, _7432, _7433)));  // [sem: invLength]
                // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                _7443 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_7427, 0.0f, _7426), float3(_4752, _4754, _4759)), dot(float3((_7435 * _7429), (_7432 * _7435), (_7435 * _7433)), float3(_4752, _4754, _4759))), 0.0f);
                _7447 = _7443.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
                _7448 = _7443.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
                _7449 = _7443.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
                _7451 = rsqrt(dot(float3(_7447, _7448, _7449), float3(_7447, _7448, _7449)));  // [sem: invLength]
                _7453 = (_7447 * _7451) + _5038;
                _7455 = (_7448 * _7451) + _5039;
                _7457 = (_7449 * _7451) + _5040;
                _7459 = rsqrt(dot(float3(_7453, _7455, _7457), float3(_7453, _7455, _7457)));  // [sem: invLength]
                _7460 = _7453 * _7459;
                _7461 = _7455 * _7459;
                _7462 = _7457 * _7459;
                _7466 = abs(((_105 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
                _7470 = abs(1.0f - ((_106 * 2.0f) * _bufferSizeAndInvSize.w));
                _7472 = saturate(_7466 * _7466);  // [sem: expr_sat]
                _7474 = saturate(_7470 * _7470);  // [sem: expr_sat]
                _7478 = dot(float3((-0.0f - _7460), (-0.0f - _7461), (-0.0f - _7462)), float3(_5152, _5151, _5150));
                _7480 = saturate(dot(float3(_7460, _7461, _7462), float3(_2392, _2393, _2394)));  // [sem: expr_sat]
                _7482 = saturate(1.0f - _6659);  // [sem: expr_sat]
                _7483 = _7482 * _7482;
                _7485 = (_7483 * _7483) * _7482;
                _7488 = 1.0f - ((_6658 * _6658) * 0.9999f);
                _7529 = ((exp2(log2(saturate(dot(float3(_2392, _2393, _2394), float3(_7460, _7461, _7462)))) * 1024.0f) * 50.0f) + (saturate(_7478) * max((((0.5f / ((((_7480 * 0.9999f) + 0.0001f) * _7478) + (_7480 * ((_7478 * 0.9999f) + 0.0001f)))) * (3.1830987e-05f / (_7488 * _7488))) * (lerp(_7485, 1.0f, 0.08f))), 0.0f))) * (((1.0f - ((_7474 * _7474) * (3.0f - (_7474 * 2.0f)))) * (1.0f - ((_7472 * _7472) * (3.0f - (_7472 * 2.0f))))) * saturate(1.0f - (_124 * 0.001f)));
                _7671 = (_7410 * (_7529 + _6652));
                _7672 = (_7408 * (_7529 + _6653));
                _7673 = (_7406 * (_7529 + _6654));
                _7674 = _6655;
                _7675 = _6656;
                _7676 = _6657;
                _7677 = _7405;
                _7678 = _7404;
                _7679 = _7403;
              } else {
                _7671 = (_6652 * _7410);
                _7672 = (_6653 * _7408);
                _7673 = (_6654 * _7406);
                _7674 = _6655;
                _7675 = _6656;
                _7676 = _6657;
                _7677 = _7405;
                _7678 = _7404;
                _7679 = _7403;
              }
            }
          }
        }
      }
    }
    _7680 = _7679 + _4662;
    _7681 = _7678 + _4661;
    _7682 = _7677 + _4660;
    // RenoDX: >>> [Patch: FoliageTransmission] [Version: 1.16.00]
    // Description: Adds the gated foliage transmission accumulated above to the three clean-decompile direct-diffuse outputs after all native component equations have completed. With the feature disabled the accumulators are zero, so this insertion is exactly neutral.
    _7680 += _rndx_foliageTransR;
    _7681 += _rndx_foliageTransG;
    _7682 += _rndx_foliageTransB;
    // RenoDX: <<< [Patch: FoliageTransmission]
    _7685 = (uint)((uint)(_frameNumber.x)) * (uint)(13);
    [branch]
    if ((((int)((int)((uint)((uint)(_7685)) + (uint)((uint)(_99)))) | (int)((int)((uint)((uint)(_7685)) + (uint)((uint)(_104))))) & 31) == 0) {
      __3__38__0__1__g_sceneColorLightingOnlyForAwbUAV[int2(((int)(_99) >> 5), ((int)(_104) >> 5))] = float4((half)(half(_7680)), (half)(half(_7681)), (half)(half(_7682)), 1.0f);
    }
    _7700 = ((uint)(_5007 & 24) > (uint)23);
    if (_5077) {
      _7714 = saturate(exp2((_5072 * _5072) * (_124 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _7714 = select((_cavityParams.z > 0.0f), select(_186, 0.0f, _2382), 1.0f);  // [sem: expr_sat]
    }
    _7723 = select(_5074, 1.0f, (select((_cavityParams.x == 0.0f), 1.0f, _7714) * select((_185 && _7700), (1.0f - _2382), 1.0f)));
    _7730 = min(60000.0f, (_7723 * (((_4380 * _4050) * _4375) - min(0.0f, (-0.0f - _7673)))));
    _7737 = min(60000.0f, (_7723 * (((_4380 * _4065) * _4374) - min(0.0f, (-0.0f - _7672)))));
    _7744 = min(60000.0f, ((((_4380 * _4080) * _4373) - min(0.0f, (-0.0f - _7671))) * _7723));
    _7747 = 1.0f - _renderParams.x;
    _7750 = half((_renderParams.x * _4947) + _7747);
    _7753 = half((_renderParams.x * _4948) + _7747);
    _7756 = half((_renderParams.x * _4949) + _7747);
    if (_5074) {
      if (_renderParams2.x == 0.0f) {
        _7774 = (half)(exp2((half)((half)(log2(_7750)) * 0.5h)));
        _7775 = (half)(exp2((half)((half)(log2(_7753)) * 0.5h)));
        _7776 = (half)(exp2((half)((half)(log2(_7756)) * 0.5h)));
      } else {
        _7774 = _7750;
        _7775 = _7753;
        _7776 = _7756;
      }
      _7781 = _7774;
      _7782 = _7775;
      _7783 = _7776;
      _7784 = (half)(select(((_5007 & -5) == 33), 0.0f, _4663));
    } else {
      if (!(_5073 == 54)) {
        _7774 = _7750;
        _7775 = _7753;
        _7776 = _7756;
        _7781 = _7774;
        _7782 = _7775;
        _7783 = _7776;
        _7784 = (half)(select(((_5007 & -5) == 33), 0.0f, _4663));
      } else {
        _7781 = _7750;
        _7782 = _7753;
        _7783 = _7756;
        _7784 = 0.0h;
      }
    }
    _7785 = float(_7781);
    _7786 = float(_7782);
    _7787 = float(_7783);
    if (_5046) {
      _7794 = saturate(((_7786 + _7785) + _7787) * 1.2f);  // [sem: expr_sat]
    } else {
      _7794 = 1.0f;  // [sem: expr_sat]
    }
    _7795 = float(_7784);
    _7801 = (0.7f / min(max(max(max(_7785, _7786), _7787), 0.01f), 0.7f)) * _7794;
    _7804 = ((_7801 * _7785) + -0.04f) * _7795;
    _7807 = ((_7801 * _7786) + -0.04f) * _7795;
    _7810 = ((_7801 * _7787) + -0.04f) * _7795;
    _7811 = _7804 + 0.04f;
    _7812 = _7807 + 0.04f;
    _7813 = _7810 + 0.04f;
    if ((_5007 == 54) || ((_5007 == 33) || (_5191 || (_5192 || _5103)))) {
      // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
      _7827 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__3__40__0__0__g_samplerClamp, float2(min(0.99f, _2400), (1.0f - max(0.02f, float(_177)))), 0.0f);
      _7831 = _7827.y;
      _7832 = _7827.x;
    } else {
      _7831 = _4376;
      _7832 = _4377;
    }
    _7834 = (_7832 * _7811) + _7831;
    _7836 = (_7832 * _7812) + _7831;
    _7838 = (_7832 * _7813) + _7831;
    _7840 = (1.0f - _7832) - _7831;
    _7843 = ((0.96f - _7804) * 0.04761905f) + _7811;
    _7846 = ((0.96f - _7807) * 0.04761905f) + _7812;
    _7849 = ((0.96f - _7810) * 0.04761905f) + _7813;
    _7856 = _7840 * saturate(1.0f - _4668);
    _7857 = _7856 * ((_7834 * _7843) / (1.0f - (_7840 * _7843)));
    _7862 = _7856 * ((_7836 * _7846) / (1.0f - (_7840 * _7846)));
    _7867 = ((_7838 * _7849) / (1.0f - (_7840 * _7849))) * _7856;
    _7869 = float(1.0h - _7784);
    _7876 = half(((_7869 * _7785) * saturate((1.0f - _7834) - _7857)) + _7857);
    _7883 = half(((_7869 * _7786) * saturate((1.0f - _7836) - _7862)) + _7862);
    _7890 = half(((_7869 * _7787) * saturate((1.0f - _7838) - _7867)) + _7867);
    _7891 = float(_7876);
    _7892 = float(_7883);
    _7893 = float(_7890);
    if (_5007 == 65) {
      _7898 = max(1e-06f, _exposure2.x);
      _7906 = ((pow(_5185, 16.0f)) * 50.265484f) / (((_7898 * _7898) * 1e+06f) + 1.0f);
      _7923 = (((((_7893 * _7682) * _7906) - _7682) * _2348) + _7682);
      _7924 = (((((_7892 * _7681) * _7906) - _7681) * _2348) + _7681);
      _7925 = (((((_7891 * _7680) * _7906) - _7680) * _2348) + _7680);
    } else {
      _7923 = _7682;
      _7924 = _7681;
      _7925 = _7680;
    }
    _7929 = (min(65535.0f, _7676) + _4659) + (_7925 * _7891);
    _7933 = ((_7924 * _7892) + _4658) + min(65535.0f, _7675);
    _7937 = ((_7923 * _7893) + _4657) + min(65535.0f, _7674);
    _7942 = exp2((saturate(_1051) * 20.0f) + -8.0f) + -0.00390625f;
    _7951 = select((_1054 < 0.04045f), (_1054 * 0.07739938f), exp2(log2((_1054 + 0.055f) * 0.94786733f) * 2.4f)) * _7942;
    _7960 = select((_1053 < 0.04045f), (_1053 * 0.07739938f), exp2(log2((_1053 + 0.055f) * 0.94786733f) * 2.4f)) * _7942;
    _7969 = select((_1052 < 0.04045f), (_1052 * 0.07739938f), exp2(log2((_1052 + 0.055f) * 0.94786733f) * 2.4f)) * _7942;
    _7974 = ((_7960 * 0.33951f) + (_7951 * 0.61312f)) + (_7969 * 0.04737f);
    _7979 = ((_7960 * 0.91636f) + (_7951 * 0.0702f)) + (_7969 * 0.01345f);
    _7984 = ((_7960 * 0.10958f) + (_7951 * 0.02062f)) + (_7969 * 0.8698f);
    if (_985) {
      _7990 = (_7984 + _7937);
      _7991 = (_7979 + _7933);
      _7992 = (_7974 + _7929);
    } else {
      _7990 = _7937;
      _7991 = _7933;
      _7992 = _7929;
    }
    _7994 = _7992 + (_7795 * _7730);
    _7996 = _7991 + (_7795 * _7737);
    _7998 = _7990 + (_7795 * _7744);
    if (!(((_132 || _134) || _136) || _138)) {
      _8003 = QuadReadLaneAt(_7994, 0);
      _8004 = QuadReadLaneAt(_7996, 0);
      _8005 = QuadReadLaneAt(_7998, 0);
      _8006 = QuadReadLaneAt(_7994, 1);
      _8007 = QuadReadLaneAt(_7996, 1);
      _8008 = QuadReadLaneAt(_7998, 1);
      _8009 = QuadReadLaneAt(_7994, 2);
      _8010 = QuadReadLaneAt(_7996, 2);
      _8011 = QuadReadLaneAt(_7998, 2);
      _8012 = QuadReadLaneAt(_7994, 3);
      _8013 = QuadReadLaneAt(_7996, 3);
      _8014 = QuadReadLaneAt(_7998, 3);
      _8028 = ((((_8008 + _8005) + _8011) + _8014) * 0.25f);
      _8029 = ((((_8007 + _8004) + _8010) + _8013) * 0.25f);
      _8030 = ((((_8006 + _8003) + _8009) + _8012) * 0.25f);
    } else {
      _8028 = _7998;
      _8029 = _7996;
      _8030 = _7994;
    }
    [branch]
    if ((((int)(_104) | (int)(_99)) & 1) == 0) {
      _8035 = dot(float3(_8030, _8029, _8028), float3(0.212671f, 0.71516f, 0.072169f));
      __3__38__0__1__g_diffuseHalfPrevUAV[int2(((int)(_99) >> 1), ((int)(_104) >> 1))] = float4(min(60000.0f, _8030), min(60000.0f, _8029), min(60000.0f, _8028), min(60000.0f, select((_3024 != 0), (-0.0f - _8035), _8035)));
    }
    if (_7700) {
      if (_7784 == 0.0h) {
        _8056 = (((_7876 == 0.0h) || (_7883 == 0.0h)) || (_7890 == 0.0h));
      } else {
        _8056 = false;
      }
      _8068 = ((int)(uint)(_8056));
      __3__38__0__1__g_sceneSpecularUAV[int2(_99, _104)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _7730)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _7737)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _7744)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _4092)))))));
      _8091 = _8068;
      _8092 = _7990;
      _8093 = _7991;
      _8094 = _7992;
    } else {
      if ((((_5007 == 96) || _5192) || ((_5007 & -4) == 64)) || ((_124 <= 10.0f) && _5103)) {
        _8068 = 0;
        __3__38__0__1__g_sceneSpecularUAV[int2(_99, _104)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _7730)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _7737)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _7744)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _4092)))))));
        _8091 = _8068;
        _8092 = _7990;
        _8093 = _7991;
        _8094 = _7992;
      } else {
        _8091 = 0;
        _8092 = (_7990 + _7744);
        _8093 = (_7991 + _7737);
        _8094 = (_7992 + _7730);
      }
    }
    if (_985 && ((uint)((int)(_5007) + (int)(-52)) > (uint)15)) {
      _8099 = dot(float3(_7974, _7979, _7984), float3(0.212671f, 0.71516f, 0.072169f));
      _8103 = max((max(_8099, 1.0f) / max(_8099, 0.1f)), 0.0f);
      _8114 = ((_8092 - _7984) + (_8103 * _7984));
      _8115 = ((_8093 - _7979) + (_8103 * _7979));
      _8116 = ((_8094 - _7974) + (_8103 * _7974));
    } else {
      _8114 = _8092;
      _8115 = _8093;
      _8116 = _8094;
    }
    _8117 = min(60000.0f, _8116);
    _8118 = min(60000.0f, _8115);
    _8119 = min(60000.0f, _8114);
    if (!_129) {
      [branch]
      if (!(_8091 == 0)) {
        _8125 = __3__38__0__1__g_sceneColorUAV[int2(_99, _104)].x;
        _8126 = __3__38__0__1__g_sceneColorUAV[int2(_99, _104)].y;
        _8127 = __3__38__0__1__g_sceneColorUAV[int2(_99, _104)].z;
        _8132 = (_8127 + _8119);
        _8133 = (_8126 + _8118);
        _8134 = (_8125 + _8117);
      } else {
        _8132 = _8119;
        _8133 = _8118;
        _8134 = _8117;
      }
      if (!(_renderParams.y == 0.0f)) {
        _8139 = dot(float3(_8134, _8133, _8132), float3(0.212671f, 0.71516f, 0.072169f));
        _8144 = min((max(0.01f, _exposure3.w) * 4096.0f), _8139);
        _8145 = max(1e-09f, _8139);
        _8153 = ((_8144 * _8132) / _8145);
        _8154 = ((_8144 * _8133) / _8145);
        _8155 = ((_8144 * _8134) / _8145);
      } else {
        _8153 = _8132;
        _8154 = _8133;
        _8155 = _8134;
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
      if (FOLIAGE_AO_STRENGTH > 0.0f && ((uint)(_120 - 12) < 7u)) {
        half4 _rndx_shadow = __3__36__0__0__g_sceneShadowColor.Load(int3(_99, _104, 0));
        float _rndx_directRatio = saturate(dot(float3(_rndx_shadow.xyz), float3(0.333f, 0.333f, 0.333f)));
        float _rndx_ao = lerp(1.0f, saturate(_2323), _rndx_directRatio * FOLIAGE_AO_STRENGTH);
        _8155 *= _rndx_ao;
        _8154 *= _rndx_ao;
        _8153 *= _rndx_ao;
      }
      // RenoDX: <<< [Patch: FoliageFinalAO]
      __3__38__0__1__g_sceneColorUAV[int2(_99, _104)] = float4(_8155, _8154, _8153, 1.0f);
    }
  }
}
